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
; AMBIENT_COLOR            0   xyz         5     NONE   float       
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float       
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
; shader hash: 6f55407a789378f0b3fa7783b0b65281
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  br i1 %394, label %853, label %395

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
  %840 = add i32 %33, 96
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = lshr i32 %842, 8
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = fmul fast float %847, %848
  %850 = fadd fast float %849, %844
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  br label %853

; <label>:853                                     ; preds = %836, %380
  %854 = phi float [ 0.000000e+00, %380 ], [ %790, %836 ]
  %855 = phi float [ 0.000000e+00, %380 ], [ %791, %836 ]
  %856 = phi float [ 0.000000e+00, %380 ], [ %837, %836 ]
  %857 = phi float [ 0.000000e+00, %380 ], [ %838, %836 ]
  %858 = phi float [ 0.000000e+00, %380 ], [ %839, %836 ]
  %859 = phi float [ 0.000000e+00, %380 ], [ %709, %836 ]
  %860 = phi float [ 0.000000e+00, %380 ], [ %710, %836 ]
  %861 = phi float [ 0.000000e+00, %380 ], [ %711, %836 ]
  %862 = phi float [ 0.000000e+00, %380 ], [ %695, %836 ]
  %863 = phi float [ 0.000000e+00, %380 ], [ 1.000000e+00, %836 ]
  %864 = phi float [ 0.000000e+00, %380 ], [ %789, %836 ]
  %865 = phi float [ 0.000000e+00, %380 ], [ %792, %836 ]
  %866 = phi float [ 0.000000e+00, %380 ], [ %852, %836 ]
  br i1 %331, label %1819, label %867

; <label>:867                                     ; preds = %853
  %868 = icmp ult i32 %386, 2
  %869 = add i32 %33, 40
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %33, 44
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = or i32 %874, %871
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1819, label %877

; <label>:877                                     ; preds = %867
  %878 = and i32 %871, 262144
  %879 = icmp ne i32 %878, 0
  %880 = select i1 %879, float %36, float 1.000000e+00
  %881 = select i1 %879, float %37, float 0.000000e+00
  %882 = select i1 %879, float %38, float 0.000000e+00
  %883 = select i1 %879, float %39, float 1.000000e+00
  %884 = select i1 %879, float %40, float %49
  %885 = select i1 %879, float %41, float %50
  %886 = add i32 %33, 300
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 16
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = fmul fast float %890, 0x3F50624DE0000000
  %892 = add i32 %33, 104
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 16
  %896 = and i32 %895, 255
  %897 = lshr i32 %894, 24
  %898 = add i32 %33, 308
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = lshr i32 %900, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = add i32 %33, 48
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 22
  %909 = shl nuw nsw i32 %908, 5
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = shl i32 %907, 4
  %912 = and i32 %911, 32752
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %907, 7
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %919 = fmul fast float %918, 1.000000e+03
  %920 = fmul fast float %241, %919
  %921 = call float @dx.op.unary.f32(i32 22, float %920)  ; Frc(value)
  %922 = fadd fast float %921, %231
  %923 = fmul fast float %242, %919
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = fadd fast float %924, %233
  %926 = fmul fast float %891, %919
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fmul fast float %927, 0x401921FB60000000
  %929 = fadd fast float %928, %910
  %930 = call float @dx.op.unary.f32(i32 13, float %929)  ; Sin(value)
  %931 = call float @dx.op.unary.f32(i32 12, float %929)  ; Cos(value)
  %932 = fsub fast float -0.000000e+00, %930
  %933 = fadd fast float %884, -5.000000e-01
  %934 = fadd fast float %885, -5.000000e-01
  %935 = fmul fast float %902, %933
  %936 = fmul fast float %904, %934
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %913, %937
  %940 = fmul fast float %916, %938
  %941 = fmul fast float %931, %939
  %942 = call float @dx.op.tertiary.f32(i32 46, float %932, float %940, float %941)  ; FMad(a,b,c)
  %943 = fmul fast float %930, %939
  %944 = call float @dx.op.tertiary.f32(i32 46, float %931, float %940, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %922, %942
  %946 = fadd fast float %925, %944
  %947 = icmp ugt i32 %896, 1
  %948 = icmp ugt i32 %894, 33554431
  %949 = or i1 %948, %947
  br i1 %949, label %950, label %975

; <label>:950                                     ; preds = %877
  %951 = add i32 %33, 244
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 16
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = fmul fast float %918, %955
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = mul nuw nsw i32 %896, %897
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %957, %959
  %961 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %962 = fptoui float %961 to i32
  %963 = urem i32 %962, %896
  %964 = udiv i32 %962, %897
  %965 = call float @dx.op.unary.f32(i32 22, float %945)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 22, float %946)  ; Frc(value)
  %967 = uitofp i32 %963 to float
  %968 = uitofp i32 %964 to float
  %969 = fadd fast float %965, %967
  %970 = fadd fast float %966, %968
  %971 = uitofp i32 %896 to float
  %972 = uitofp i32 %897 to float
  %973 = fdiv fast float %969, %971
  %974 = fdiv fast float %970, %972
  br label %975

; <label>:975                                     ; preds = %950, %877
  %976 = phi float [ %973, %950 ], [ %945, %877 ]
  %977 = phi float [ %974, %950 ], [ %946, %877 ]
  %978 = and i32 %871, 16777216
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1089, label %980

; <label>:980                                     ; preds = %975
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = fadd fast float %982, %116
  %986 = fadd fast float %983, %117
  %987 = fadd fast float %984, %118
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = icmp eq i32 %34, 65535
  br i1 %991, label %1086, label %992

; <label>:992                                     ; preds = %980
  %993 = lshr i32 %34, 1
  %994 = shl i32 %993, 2
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %34, 1
  %998 = icmp ne i32 %997, 0
  %999 = lshr i32 %996, 16
  %1000 = and i32 %996, 65535
  %1001 = select i1 %998, i32 %999, i32 %1000
  %1002 = icmp eq i32 %1001, 65535
  br i1 %1002, label %1082, label %1003

; <label>:1003                                    ; preds = %992
  %1004 = mul nuw nsw i32 %1001, 40
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = add nuw nsw i32 %1004, 12
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = add nuw nsw i32 %1004, 24
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = add nuw nsw i32 %1004, 36
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = fsub fast float %985, %1006
  %1023 = fsub fast float %986, %1007
  %1024 = fsub fast float %987, %1008
  %1025 = fmul fast float %1021, %1022
  %1026 = fmul fast float %1021, %1023
  %1027 = fmul fast float %1021, %1024
  %1028 = call float @dx.op.unary.f32(i32 27, float %1025)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1030 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1031 = fadd fast float %1028, 5.000000e-01
  %1032 = fadd fast float %1029, 5.000000e-01
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = fmul fast float %1031, %1011
  %1035 = fmul fast float %1032, %1012
  %1036 = fmul fast float %1033, %1013
  %1037 = shl i32 %34, 2
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1043 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1044 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1041, %dx.types.Handle %30, float %1042, float %1043, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = fmul fast float %1046, 1.023000e+03
  %1050 = fmul fast float %1047, 1.023000e+03
  %1051 = fmul fast float %1048, 1.023000e+03
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = fsub fast float %1025, %1028
  %1059 = fsub fast float %1026, %1029
  %1060 = fsub fast float %1027, %1030
  %1061 = fmul fast float %1058, 7.500000e-01
  %1062 = fmul fast float %1059, 7.500000e-01
  %1063 = fmul fast float %1060, 7.500000e-01
  %1064 = fadd fast float %1028, 1.250000e-01
  %1065 = fadd fast float %1064, %1061
  %1066 = fadd fast float %1065, %1055
  %1067 = fadd fast float %1029, 1.250000e-01
  %1068 = fadd fast float %1067, %1062
  %1069 = fadd fast float %1068, %1056
  %1070 = fadd fast float %1030, 1.250000e-01
  %1071 = fadd fast float %1070, %1063
  %1072 = fadd fast float %1071, %1057
  %1073 = fmul fast float %1066, %1016
  %1074 = fmul fast float %1069, %1017
  %1075 = fmul fast float %1072, %1018
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1079, %dx.types.Handle %28, float %1073, float %1074, float %1075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  br label %1082

; <label>:1082                                    ; preds = %1003, %992
  %1083 = phi float [ %1081, %1003 ], [ -1.000000e+00, %992 ]
  %1084 = fadd fast float %1083, %990
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  br label %1086

; <label>:1086                                    ; preds = %1082, %980
  %1087 = phi float [ %1085, %1082 ], [ %990, %980 ]
  %1088 = fmul fast float %1087, %383
  br label %1089

; <label>:1089                                    ; preds = %1086, %975
  %1090 = phi float [ %1088, %1086 ], [ %383, %975 ]
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 256
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1141, label %1095

; <label>:1095                                    ; preds = %1089
  %1096 = add i32 %33, 428
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %1098, 0
  %1100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1100, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = add i32 %33, 116
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = shl i32 %1105, 4
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1105, 7
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fsub fast float 1.000000e+00, %1090
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1114 = bitcast float %1090 to i32
  %1115 = sitofp i32 %1114 to float
  %1116 = fadd fast float %1115, 0xC1CFBF8940000000
  %1117 = fmul fast float %1111, %1116
  %1118 = fadd fast float %1117, 0x41CFBF8940000000
  %1119 = fptosi float %1118 to i32
  %1120 = bitcast i32 %1119 to float
  %1121 = bitcast float %1113 to i32
  %1122 = sitofp i32 %1121 to float
  %1123 = fadd fast float %1122, 0xC1CFBF8940000000
  %1124 = fmul fast float %1123, %1111
  %1125 = fadd fast float %1124, 0x41CFBF8940000000
  %1126 = fptosi float %1125 to i32
  %1127 = bitcast i32 %1126 to float
  %1128 = fmul fast float %1120, %1108
  %1129 = fmul fast float %1127, %1108
  %1130 = fsub fast float %1113, %1128
  %1131 = fadd fast float %1129, %1113
  %1132 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1133 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1134 = fsub fast float %1102, %1132
  %1135 = fsub fast float %1133, %1132
  %1136 = bitcast float %1135 to i32
  %1137 = sub nsw i32 2129859010, %1136
  %1138 = bitcast i32 %1137 to float
  %1139 = fmul fast float %1138, %1134
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  br label %1141

; <label>:1141                                    ; preds = %1095, %1089
  %1142 = phi float [ %1140, %1095 ], [ %1090, %1089 ]
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 128
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1163, label %1147

; <label>:1147                                    ; preds = %1141
  %1148 = add i32 %33, 412
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1152, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 524288
  %1158 = icmp ne i32 %1157, 0
  %1159 = fcmp fast ogt float %1154, 0x3FE0101020000000
  %1160 = select i1 %1159, float 1.000000e+00, float 0.000000e+00
  %1161 = select i1 %1158, float %1160, float %1154
  %1162 = fmul fast float %1161, %1142
  br label %1163

; <label>:1163                                    ; preds = %1147, %1141
  %1164 = phi float [ %1162, %1147 ], [ %1142, %1141 ]
  %1165 = fcmp fast ult float %1164, 0x3F70101020000000
  br i1 %1165, label %1819, label %1166

; <label>:1166                                    ; preds = %1163
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 16
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1369, label %1171

; <label>:1171                                    ; preds = %1166
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %33, 364
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1184 = and i32 %1173, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = lshr i32 %1173, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1183, %1185
  %1190 = fadd fast float %1189, %1188
  %1191 = fmul fast float %1190, 0x3F70101000000000
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 512
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1204, label %1196

; <label>:1196                                    ; preds = %1171
  %1197 = add i32 %33, 444
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %1199, 0
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1201, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  br label %1204

; <label>:1204                                    ; preds = %1196, %1171
  %1205 = phi float [ %1203, %1196 ], [ 1.000000e+00, %1171 ]
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 33554432
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1316, label %1210

; <label>:1210                                    ; preds = %1204
  %1211 = add i32 %33, 240
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 65535
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1213, 16
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = add i32 %33, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 65535
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 24
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = and i32 %1224, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1224, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1224, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = add i32 %33, 236
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 24
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = and i32 %1241, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1241, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1241, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = bitcast float %1180 to i32
  %1257 = ashr i32 %1256, 1
  %1258 = sub nsw i32 1597463174, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1180, 5.000000e-01
  %1261 = fmul fast float %1259, %1259
  %1262 = fmul fast float %1261, %1260
  %1263 = fsub fast float 1.500000e+00, %1262
  %1264 = fmul fast float %1259, %1180
  %1265 = fmul fast float %1264, %1263
  %1266 = bitcast float %1181 to i32
  %1267 = ashr i32 %1266, 1
  %1268 = sub nsw i32 1597463174, %1267
  %1269 = bitcast i32 %1268 to float
  %1270 = fmul fast float %1181, 5.000000e-01
  %1271 = fmul fast float %1269, %1269
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float 1.500000e+00, %1272
  %1274 = fmul fast float %1269, %1181
  %1275 = fmul fast float %1274, %1273
  %1276 = bitcast float %1182 to i32
  %1277 = ashr i32 %1276, 1
  %1278 = sub nsw i32 1597463174, %1277
  %1279 = bitcast i32 %1278 to float
  %1280 = fmul fast float %1182, 5.000000e-01
  %1281 = fmul fast float %1279, %1279
  %1282 = fmul fast float %1281, %1280
  %1283 = fsub fast float 1.500000e+00, %1282
  %1284 = fmul fast float %1279, %1182
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float %1265, %1247
  %1287 = fsub fast float %1275, %1251
  %1288 = fsub fast float %1285, %1255
  %1289 = fmul fast float %1286, %1215
  %1290 = fmul fast float %1287, %1217
  %1291 = fmul fast float %1288, %1222
  %1292 = fadd fast float %1289, %1230
  %1293 = fadd fast float %1290, %1234
  %1294 = fadd fast float %1291, %1238
  %1295 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1297 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1298 = fmul fast float %1295, %1295
  %1299 = fmul fast float %1296, %1296
  %1300 = fmul fast float %1297, %1297
  %1301 = fsub fast float %1298, %1180
  %1302 = fsub fast float %1299, %1181
  %1303 = fsub fast float %1300, %1182
  %1304 = fmul fast float %1301, %1205
  %1305 = fmul fast float %1302, %1205
  %1306 = fmul fast float %1303, %1205
  %1307 = fadd fast float %1304, %1180
  %1308 = fadd fast float %1305, %1181
  %1309 = fadd fast float %1306, %1182
  %1310 = fadd fast float %1227, %1191
  %1311 = fsub fast float %1310, %1244
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fsub fast float %1312, %1191
  %1314 = fmul fast float %1313, %1205
  %1315 = fadd fast float %1314, %1191
  br label %1369

; <label>:1316                                    ; preds = %1204
  %1317 = and i32 %1207, 134217728
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1353, label %1319

; <label>:1319                                    ; preds = %1316
  %1320 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %1323 = fadd fast float %1320, -5.000000e-01
  %1324 = fadd fast float %1321, -5.000000e-01
  %1325 = fadd fast float %1322, -5.000000e-01
  %1326 = fmul fast float %1323, %1205
  %1327 = fmul fast float %1324, %1205
  %1328 = fmul fast float %1325, %1205
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = call float @dx.op.unary.f32(i32 24, float %1180)  ; Sqrt(value)
  %1333 = call float @dx.op.unary.f32(i32 24, float %1181)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1335 = fmul fast float %1329, 2.000000e+00
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1332
  %1338 = fadd fast float %1337, %1335
  %1339 = fmul fast float %1338, %1332
  %1340 = fmul fast float %1330, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1333
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1333
  %1345 = fmul fast float %1331, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1334
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1334
  %1350 = fmul fast float %1339, %1339
  %1351 = fmul fast float %1344, %1344
  %1352 = fmul fast float %1349, %1349
  br label %1369

; <label>:1353                                    ; preds = %1316
  %1354 = fmul fast float %218, %218
  %1355 = fmul fast float %222, %222
  %1356 = fmul fast float %226, %226
  %1357 = fadd fast float %1354, -1.000000e+00
  %1358 = fadd fast float %1355, -1.000000e+00
  %1359 = fadd fast float %1356, -1.000000e+00
  %1360 = fmul fast float %1205, %1357
  %1361 = fmul fast float %1205, %1358
  %1362 = fmul fast float %1205, %1359
  %1363 = fadd fast float %1360, 1.000000e+00
  %1364 = fadd fast float %1361, 1.000000e+00
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fmul fast float %1363, %1180
  %1367 = fmul fast float %1364, %1181
  %1368 = fmul fast float %1365, %1182
  br label %1369

; <label>:1369                                    ; preds = %1353, %1319, %1210, %1166
  %1370 = phi float [ %1315, %1210 ], [ %1191, %1319 ], [ %1191, %1353 ], [ 0x3FA23C0BE0000000, %1166 ]
  %1371 = phi float [ %1307, %1210 ], [ %1350, %1319 ], [ %1366, %1353 ], [ 1.000000e+00, %1166 ]
  %1372 = phi float [ %1308, %1210 ], [ %1351, %1319 ], [ %1367, %1353 ], [ 1.000000e+00, %1166 ]
  %1373 = phi float [ %1309, %1210 ], [ %1352, %1319 ], [ %1368, %1353 ], [ 1.000000e+00, %1166 ]
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 1
  %1376 = and i32 %1375, 1
  %1377 = icmp ne i32 %1376, 0
  %1378 = add i32 %33, 356
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 32
  %1382 = icmp ne i32 %1381, 0
  %1383 = and i1 %1377, %1382
  %1384 = select i1 %1383, float 1.000000e+00, float %1371
  %1385 = select i1 %1383, float 0x3FD3333340000000, float %1372
  %1386 = select i1 %1383, float 0x3FD3333340000000, float %1373
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 32
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1463, label %1391

; <label>:1391                                    ; preds = %1369
  %1392 = add i32 %33, 108
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %33, 380
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.ResRet.f32 %1400, 3
  %1405 = and i32 %1394, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = lshr i32 %1394, 8
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1394, 16
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101000000000
  %1414 = fmul fast float %1401, %1406
  %1415 = fadd fast float %1414, %1409
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fadd fast float %1402, -5.000000e-01
  %1418 = fadd fast float %1404, -5.000000e-01
  %1419 = fmul fast float %1417, %1413
  %1420 = fmul fast float %1418, %1413
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fmul fast float %1421, 2.000000e+00
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fadd fast float %1425, -1.000000e+00
  %1427 = fadd fast float %1424, %1426
  %1428 = fmul fast float %1427, 5.000000e-01
  %1429 = fsub fast float %1424, %1426
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1434 = fsub fast float %1432, %1433
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1430, float %1434, float %1428, float %1430, float %1434)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call float @dx.op.unary.f32(i32 25, float %1435)  ; Rsqrt(value)
  %1437 = fmul fast float %1428, %1436
  %1438 = fmul fast float %1430, %1436
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 67108864
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1459, label %1443

; <label>:1443                                    ; preds = %1391
  %1444 = add i32 %33, 296
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 65535
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 65535
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = lshr i32 %1446, 16
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = fsub fast float %1416, %1454
  %1456 = fmul fast float %1455, %1448
  %1457 = fadd fast float %1456, %1452
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  br label %1459

; <label>:1459                                    ; preds = %1443, %1391
  %1460 = phi float [ %1458, %1443 ], [ %1416, %1391 ]
  %1461 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %880, float %881)  ; Dot2(ax,ay,bx,by)
  %1462 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %882, float %883)  ; Dot2(ax,ay,bx,by)
  br label %1463

; <label>:1463                                    ; preds = %1459, %1369
  %1464 = phi float [ %1460, %1459 ], [ 0x3FD6666660000000, %1369 ]
  %1465 = phi float [ %1461, %1459 ], [ 0.000000e+00, %1369 ]
  %1466 = phi float [ %1462, %1459 ], [ 0.000000e+00, %1369 ]
  %1467 = phi float [ %1403, %1459 ], [ 1.000000e+00, %1369 ]
  %1468 = add i32 %33, 176
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 22
  %1472 = shl nuw nsw i32 %1471, 5
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 64
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1511, label %1478

; <label>:1478                                    ; preds = %1463
  %1479 = add i32 %33, 396
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 131072
  %1487 = icmp eq i32 %1486, 0
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  %1492 = fmul fast float %1489, %206
  %1493 = fmul fast float %1490, %209
  %1494 = fmul fast float %1491, %212
  br i1 %1487, label %1501, label %1495

; <label>:1495                                    ; preds = %1478
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = fmul fast float %1497, %1492
  %1499 = fmul fast float %1497, %1493
  %1500 = fmul fast float %1497, %1494
  br label %1501

; <label>:1501                                    ; preds = %1495, %1478
  %1502 = phi float [ %1498, %1495 ], [ %1492, %1478 ]
  %1503 = phi float [ %1499, %1495 ], [ %1493, %1478 ]
  %1504 = phi float [ %1500, %1495 ], [ %1494, %1478 ]
  %1505 = fmul fast float %1502, %1473
  %1506 = select i1 %158, float %1505, float %1502
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1503, float %1504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = select i1 %158, float 0.000000e+00, float %1502
  %1509 = select i1 %158, float %1507, float %1503
  %1510 = select i1 %158, float 0.000000e+00, float %1504
  br label %1511

; <label>:1511                                    ; preds = %1501, %1463
  %1512 = phi float [ %1508, %1501 ], [ 0.000000e+00, %1463 ]
  %1513 = phi float [ %1509, %1501 ], [ 0.000000e+00, %1463 ]
  %1514 = phi float [ %1510, %1501 ], [ 0.000000e+00, %1463 ]
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 1024
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1549, label %1519

; <label>:1519                                    ; preds = %1511
  %1520 = add i32 %33, 168
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = lshr i32 %1522, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1522, 16
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = fmul fast float %1525, %1525
  %1535 = fmul fast float %1529, %1529
  %1536 = fmul fast float %1533, %1533
  %1537 = add i32 %33, 460
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %1539, 0
  %1541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1541, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.ResRet.f32 %1542, 2
  %1546 = fmul fast float %1534, %1543
  %1547 = fmul fast float %1535, %1544
  %1548 = fmul fast float %1536, %1545
  br label %1549

; <label>:1549                                    ; preds = %1519, %1511
  %1550 = phi float [ %1546, %1519 ], [ 0.000000e+00, %1511 ]
  %1551 = phi float [ %1547, %1519 ], [ 0.000000e+00, %1511 ]
  %1552 = phi float [ %1548, %1519 ], [ 0.000000e+00, %1511 ]
  %1553 = fcmp fast ogt float %1550, 0.000000e+00
  %1554 = fcmp fast ogt float %1551, 0.000000e+00
  %1555 = fcmp fast ogt float %1552, 0.000000e+00
  %1556 = call float @dx.op.unary.f32(i32 23, float %1550)  ; Log(value)
  %1557 = call float @dx.op.unary.f32(i32 23, float %1551)  ; Log(value)
  %1558 = call float @dx.op.unary.f32(i32 23, float %1552)  ; Log(value)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 7
  %1562 = and i32 %1561, 32752
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = fmul fast float %1556, 0xBFE62E4300000000
  %1565 = fmul fast float %1564, %1563
  %1566 = fmul fast float %1557, 0xBFE62E4300000000
  %1567 = fmul fast float %1566, %1563
  %1568 = fmul fast float %1558, 0xBFE62E4300000000
  %1569 = fmul fast float %1568, %1563
  %1570 = select i1 %1553, float %1565, float 1.270000e+02
  %1571 = select i1 %1554, float %1567, float 1.270000e+02
  %1572 = select i1 %1555, float %1569, float 1.270000e+02
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 10240
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1597, label %1577

; <label>:1577                                    ; preds = %1549
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 2048
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1597, label %1582

; <label>:1582                                    ; preds = %1577
  %1583 = add i32 %33, 476
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = add i32 %1585, 0
  %1587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1587, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 3
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = shl i32 %1591, 4
  %1593 = and i32 %1592, 32752
  %1594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1593)  ; LegacyF16ToF32(value)
  %1595 = fmul fast float %1594, %1589
  %1596 = call float @dx.op.binary.f32(i32 35, float %1595, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1597

; <label>:1597                                    ; preds = %1582, %1577, %1549
  %1598 = phi float [ %1596, %1582 ], [ 0x3F70101020000000, %1577 ], [ 0x3F70101020000000, %1549 ]
  %1599 = add i32 %33, 112
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = lshr i32 %1601, 8
  %1605 = and i32 %1604, 255
  %1606 = uitofp i32 %1605 to float
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = fmul fast float %1606, %1607
  %1609 = fadd fast float %1608, %1603
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  br i1 %868, label %1612, label %1647

; <label>:1612                                    ; preds = %1597
  %1613 = fmul fast float %1598, 2.000000e+00
  %1614 = fcmp fast olt float %1570, 1.270000e+02
  %1615 = fcmp fast olt float %1571, 1.270000e+02
  %1616 = fcmp fast olt float %1572, 1.270000e+02
  %1617 = fmul fast float %1570, 0xBFF7154760000000
  %1618 = fmul fast float %1617, %1613
  %1619 = fmul fast float %1571, 0xBFF7154760000000
  %1620 = fmul fast float %1619, %1613
  %1621 = fmul fast float %1572, 0xBFF7154760000000
  %1622 = fmul fast float %1621, %1613
  %1623 = call float @dx.op.unary.f32(i32 21, float %1618)  ; Exp(value)
  %1624 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1625 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1626 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1627 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1629 = fadd fast float %1626, -1.000000e+00
  %1630 = select i1 %1614, float %1629, float -1.000000e+00
  %1631 = fadd fast float %1627, -1.000000e+00
  %1632 = select i1 %1615, float %1631, float -1.000000e+00
  %1633 = fadd fast float %1628, -1.000000e+00
  %1634 = select i1 %1616, float %1633, float -1.000000e+00
  %1635 = fmul fast float %1630, %1164
  %1636 = fmul fast float %1632, %1164
  %1637 = fmul fast float %1634, %1164
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fmul fast float %1638, %859
  %1642 = fmul fast float %1639, %860
  %1643 = fmul fast float %1640, %861
  %1644 = fmul fast float %1638, %856
  %1645 = fmul fast float %1639, %857
  %1646 = fmul fast float %1640, %858
  br label %1647

; <label>:1647                                    ; preds = %1612, %1597
  %1648 = phi float [ %1644, %1612 ], [ %856, %1597 ]
  %1649 = phi float [ %1645, %1612 ], [ %857, %1597 ]
  %1650 = phi float [ %1646, %1612 ], [ %858, %1597 ]
  %1651 = phi float [ %1641, %1612 ], [ %859, %1597 ]
  %1652 = phi float [ %1642, %1612 ], [ %860, %1597 ]
  %1653 = phi float [ %1643, %1612 ], [ %861, %1597 ]
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 3
  %1657 = icmp eq i32 %1656, 3
  br i1 %1657, label %1736, label %1658

; <label>:1658                                    ; preds = %1647
  %1659 = and i32 %1655, 16
  %1660 = icmp ne i32 %1659, 0
  %1661 = select i1 %1660, float %1164, float 0.000000e+00
  %1662 = icmp eq i32 %1656, 0
  br i1 %1662, label %1663, label %1691

; <label>:1663                                    ; preds = %1658
  %1664 = and i32 %1655, 64
  %1665 = icmp ne i32 %1664, 0
  %1666 = select i1 %1665, float %1164, float 0.000000e+00
  %1667 = fsub fast float %1384, %1651
  %1668 = fsub fast float %1385, %1652
  %1669 = fsub fast float %1386, %1653
  %1670 = fmul fast float %1661, %1667
  %1671 = fmul fast float %1661, %1668
  %1672 = fmul fast float %1661, %1669
  %1673 = fadd fast float %1670, %1651
  %1674 = fadd fast float %1671, %1652
  %1675 = fadd fast float %1672, %1653
  %1676 = fsub fast float %1370, %862
  %1677 = fmul fast float %1661, %1676
  %1678 = fadd fast float %1677, %862
  %1679 = fsub fast float %1512, %1648
  %1680 = fsub fast float %1513, %1649
  %1681 = fsub fast float %1514, %1650
  %1682 = fmul fast float %1666, %1679
  %1683 = fmul fast float %1666, %1680
  %1684 = fmul fast float %1666, %1681
  %1685 = fadd fast float %1682, %1648
  %1686 = fadd fast float %1683, %1649
  %1687 = fadd fast float %1684, %1650
  %1688 = fsub fast float %1611, %866
  %1689 = fmul fast float %1661, %1688
  %1690 = fadd fast float %1689, %866
  br label %1736

; <label>:1691                                    ; preds = %1658
  %1692 = icmp eq i32 %1656, 1
  br i1 %1692, label %1693, label %1706

; <label>:1693                                    ; preds = %1691
  %1694 = fadd fast float %1384, -1.000000e+00
  %1695 = fadd fast float %1385, -1.000000e+00
  %1696 = fadd fast float %1386, -1.000000e+00
  %1697 = fmul fast float %1661, %1694
  %1698 = fmul fast float %1661, %1695
  %1699 = fmul fast float %1661, %1696
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fadd fast float %1698, 1.000000e+00
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fmul fast float %1700, %1651
  %1704 = fmul fast float %1701, %1652
  %1705 = fmul fast float %1702, %1653
  br label %1736

; <label>:1706                                    ; preds = %1691
  %1707 = icmp eq i32 %1656, 2
  br i1 %1707, label %1708, label %1736

; <label>:1708                                    ; preds = %1706
  %1709 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1711 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fmul fast float %1712, %1661
  %1716 = fmul fast float %1713, %1661
  %1717 = fmul fast float %1714, %1661
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fmul fast float %1718, 2.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1722, %1651
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1651
  %1726 = fmul fast float %1719, 2.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = fmul fast float %1727, %1652
  %1729 = fadd fast float %1728, %1726
  %1730 = fmul fast float %1729, %1652
  %1731 = fmul fast float %1720, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1653
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1653
  br label %1736

; <label>:1736                                    ; preds = %1708, %1706, %1693, %1663, %1647
  %1737 = phi float [ %1648, %1647 ], [ %1648, %1708 ], [ %1648, %1706 ], [ %1648, %1693 ], [ %1685, %1663 ]
  %1738 = phi float [ %1649, %1647 ], [ %1649, %1708 ], [ %1649, %1706 ], [ %1649, %1693 ], [ %1686, %1663 ]
  %1739 = phi float [ %1650, %1647 ], [ %1650, %1708 ], [ %1650, %1706 ], [ %1650, %1693 ], [ %1687, %1663 ]
  %1740 = phi float [ %1651, %1647 ], [ %1725, %1708 ], [ %1651, %1706 ], [ %1703, %1693 ], [ %1673, %1663 ]
  %1741 = phi float [ %1652, %1647 ], [ %1730, %1708 ], [ %1652, %1706 ], [ %1704, %1693 ], [ %1674, %1663 ]
  %1742 = phi float [ %1653, %1647 ], [ %1735, %1708 ], [ %1653, %1706 ], [ %1705, %1693 ], [ %1675, %1663 ]
  %1743 = phi float [ %862, %1647 ], [ %862, %1708 ], [ %862, %1706 ], [ %862, %1693 ], [ %1678, %1663 ]
  %1744 = phi float [ %866, %1647 ], [ %866, %1708 ], [ %866, %1706 ], [ %866, %1693 ], [ %1690, %1663 ]
  %1745 = and i32 %1655, 12
  %1746 = icmp eq i32 %1745, 12
  br i1 %1746, label %1819, label %1747

; <label>:1747                                    ; preds = %1736
  %1748 = and i32 %1655, 2097184
  %1749 = icmp eq i32 %1748, 2097184
  %1750 = select i1 %1749, float %1164, float 0.000000e+00
  %1751 = and i32 %1655, 4194336
  %1752 = icmp eq i32 %1751, 4194336
  %1753 = select i1 %1752, float %1164, float 0.000000e+00
  %1754 = and i32 %1655, 8388640
  %1755 = icmp eq i32 %1754, 8388640
  %1756 = select i1 %1755, float %1164, float 0.000000e+00
  %1757 = icmp eq i32 %1745, 0
  br i1 %1757, label %1758, label %1771

; <label>:1758                                    ; preds = %1747
  %1759 = fsub fast float %1465, %854
  %1760 = fsub fast float %1466, %855
  %1761 = fmul fast float %1750, %1759
  %1762 = fmul fast float %1750, %1760
  %1763 = fadd fast float %1761, %854
  %1764 = fadd fast float %1762, %855
  %1765 = fsub fast float %1467, %865
  %1766 = fmul fast float %1753, %1765
  %1767 = fadd fast float %1766, %865
  %1768 = fsub fast float %1464, %864
  %1769 = fmul fast float %1756, %1768
  %1770 = fadd fast float %1769, %864
  br label %1819

; <label>:1771                                    ; preds = %1747
  %1772 = icmp eq i32 %1745, 4
  br i1 %1772, label %1773, label %1805

; <label>:1773                                    ; preds = %1771
  %1774 = fmul fast float %1750, %1465
  %1775 = fmul fast float %1750, %1466
  %1776 = fadd fast float %1774, %854
  %1777 = fadd fast float %1775, %855
  %1778 = call float @dx.op.binary.f32(i32 36, float %865, float %1467)  ; FMin(a,b)
  %1779 = fsub fast float %1778, %865
  %1780 = fmul fast float %1779, %1753
  %1781 = fadd fast float %1780, %865
  %1782 = fadd fast float %1464, %864
  %1783 = fmul fast float %1782, 0x3FF337FAE0000000
  %1784 = fmul fast float %864, %864
  %1785 = fmul fast float %1464, %1464
  %1786 = fadd fast float %1785, %1784
  %1787 = fmul fast float %1786, 0x3FE5152B00000000
  %1788 = fmul fast float %864, 0xBFCC1F85E0000000
  %1789 = fmul fast float %1788, %1464
  %1790 = fadd fast float %1789, 0xBFE1363700000000
  %1791 = fadd fast float %1790, %1783
  %1792 = fsub fast float %1791, %1787
  %1793 = fmul fast float %1782, 0x3FBA6F0D00000000
  %1794 = fmul fast float %1786, 0x3FD0432880000000
  %1795 = fmul fast float %864, 0xBFEF110800000000
  %1796 = fmul fast float %1795, %1464
  %1797 = fadd fast float %1796, 1.000000e+00
  %1798 = fsub fast float %1797, %1793
  %1799 = fadd fast float %1798, %1794
  %1800 = fdiv fast float %1792, %1799
  %1801 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1802 = fsub fast float %1801, %864
  %1803 = fmul fast float %1802, %1756
  %1804 = fadd fast float %1803, %864
  br label %1819

; <label>:1805                                    ; preds = %1771
  %1806 = icmp eq i32 %1745, 8
  br i1 %1806, label %1807, label %1819

; <label>:1807                                    ; preds = %1805
  %1808 = fmul fast float %1750, %1465
  %1809 = fmul fast float %1750, %1466
  %1810 = fadd fast float %1808, %854
  %1811 = fadd fast float %1809, %855
  %1812 = call float @dx.op.binary.f32(i32 36, float %865, float %1467)  ; FMin(a,b)
  %1813 = fsub fast float %1812, %865
  %1814 = fmul fast float %1813, %1753
  %1815 = fadd fast float %1814, %865
  %1816 = fsub fast float %1464, %864
  %1817 = fmul fast float %1756, %1816
  %1818 = fadd fast float %1817, %864
  br label %1819

; <label>:1819                                    ; preds = %1807, %1805, %1773, %1758, %1736, %1163, %867, %853
  %1820 = phi float [ %854, %1736 ], [ %854, %1163 ], [ %854, %853 ], [ %1810, %1807 ], [ %854, %1805 ], [ %1776, %1773 ], [ %1763, %1758 ], [ %854, %867 ]
  %1821 = phi float [ %855, %1736 ], [ %855, %1163 ], [ %855, %853 ], [ %1811, %1807 ], [ %855, %1805 ], [ %1777, %1773 ], [ %1764, %1758 ], [ %855, %867 ]
  %1822 = phi float [ %1737, %1736 ], [ %856, %1163 ], [ %856, %853 ], [ %1737, %1807 ], [ %1737, %1805 ], [ %1737, %1773 ], [ %1737, %1758 ], [ %856, %867 ]
  %1823 = phi float [ %1738, %1736 ], [ %857, %1163 ], [ %857, %853 ], [ %1738, %1807 ], [ %1738, %1805 ], [ %1738, %1773 ], [ %1738, %1758 ], [ %857, %867 ]
  %1824 = phi float [ %1739, %1736 ], [ %858, %1163 ], [ %858, %853 ], [ %1739, %1807 ], [ %1739, %1805 ], [ %1739, %1773 ], [ %1739, %1758 ], [ %858, %867 ]
  %1825 = phi float [ %1740, %1736 ], [ %859, %1163 ], [ %859, %853 ], [ %1740, %1807 ], [ %1740, %1805 ], [ %1740, %1773 ], [ %1740, %1758 ], [ %859, %867 ]
  %1826 = phi float [ %1741, %1736 ], [ %860, %1163 ], [ %860, %853 ], [ %1741, %1807 ], [ %1741, %1805 ], [ %1741, %1773 ], [ %1741, %1758 ], [ %860, %867 ]
  %1827 = phi float [ %1742, %1736 ], [ %861, %1163 ], [ %861, %853 ], [ %1742, %1807 ], [ %1742, %1805 ], [ %1742, %1773 ], [ %1742, %1758 ], [ %861, %867 ]
  %1828 = phi float [ %1743, %1736 ], [ %862, %1163 ], [ %862, %853 ], [ %1743, %1807 ], [ %1743, %1805 ], [ %1743, %1773 ], [ %1743, %1758 ], [ %862, %867 ]
  %1829 = phi float [ %864, %1736 ], [ %864, %1163 ], [ %864, %853 ], [ %1818, %1807 ], [ %864, %1805 ], [ %1804, %1773 ], [ %1770, %1758 ], [ %864, %867 ]
  %1830 = phi float [ %865, %1736 ], [ %865, %1163 ], [ %865, %853 ], [ %1815, %1807 ], [ %865, %1805 ], [ %1781, %1773 ], [ %1767, %1758 ], [ %865, %867 ]
  %1831 = phi float [ %1744, %1736 ], [ %866, %1163 ], [ %866, %853 ], [ %1744, %1807 ], [ %1744, %1805 ], [ %1744, %1773 ], [ %1744, %1758 ], [ %866, %867 ]
  br i1 %333, label %2784, label %1832

; <label>:1832                                    ; preds = %1819
  %1833 = icmp ult i32 %386, 3
  %1834 = add i32 %33, 56
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %33, 60
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = or i32 %1839, %1836
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %2784, label %1842

; <label>:1842                                    ; preds = %1832
  %1843 = and i32 %1836, 262144
  %1844 = icmp ne i32 %1843, 0
  %1845 = select i1 %1844, float %36, float 1.000000e+00
  %1846 = select i1 %1844, float %37, float 0.000000e+00
  %1847 = select i1 %1844, float %38, float 0.000000e+00
  %1848 = select i1 %1844, float %39, float 1.000000e+00
  %1849 = select i1 %1844, float %40, float %49
  %1850 = select i1 %1844, float %41, float %50
  %1851 = add i32 %33, 316
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 16
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = fmul fast float %1855, 0x3F50624DE0000000
  %1857 = add i32 %33, 120
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = lshr i32 %1859, 16
  %1861 = and i32 %1860, 255
  %1862 = lshr i32 %1859, 24
  %1863 = add i32 %33, 324
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 65535
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = lshr i32 %1865, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = add i32 %33, 64
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 22
  %1874 = shl nuw nsw i32 %1873, 5
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = shl i32 %1872, 4
  %1877 = and i32 %1876, 32752
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = lshr i32 %1872, 7
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1884 = fmul fast float %1883, 1.000000e+03
  %1885 = fmul fast float %283, %1884
  %1886 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1887 = fadd fast float %1886, %273
  %1888 = fmul fast float %284, %1884
  %1889 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1890 = fadd fast float %1889, %275
  %1891 = fmul fast float %1856, %1884
  %1892 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1893 = fmul fast float %1892, 0x401921FB60000000
  %1894 = fadd fast float %1893, %1875
  %1895 = call float @dx.op.unary.f32(i32 13, float %1894)  ; Sin(value)
  %1896 = call float @dx.op.unary.f32(i32 12, float %1894)  ; Cos(value)
  %1897 = fsub fast float -0.000000e+00, %1895
  %1898 = fadd fast float %1849, -5.000000e-01
  %1899 = fadd fast float %1850, -5.000000e-01
  %1900 = fmul fast float %1867, %1898
  %1901 = fmul fast float %1869, %1899
  %1902 = fadd fast float %1900, 5.000000e-01
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fmul fast float %1878, %1902
  %1905 = fmul fast float %1881, %1903
  %1906 = fmul fast float %1896, %1904
  %1907 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1905, float %1906)  ; FMad(a,b,c)
  %1908 = fmul fast float %1895, %1904
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1896, float %1905, float %1908)  ; FMad(a,b,c)
  %1910 = fadd fast float %1887, %1907
  %1911 = fadd fast float %1890, %1909
  %1912 = icmp ugt i32 %1861, 1
  %1913 = icmp ugt i32 %1859, 33554431
  %1914 = or i1 %1913, %1912
  br i1 %1914, label %1915, label %1940

; <label>:1915                                    ; preds = %1842
  %1916 = add i32 %33, 260
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 16
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fmul fast float %1883, %1920
  %1922 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1923 = mul nuw nsw i32 %1861, %1862
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1922, %1924
  %1926 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1927 = fptoui float %1926 to i32
  %1928 = urem i32 %1927, %1861
  %1929 = udiv i32 %1927, %1862
  %1930 = call float @dx.op.unary.f32(i32 22, float %1910)  ; Frc(value)
  %1931 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1932 = uitofp i32 %1928 to float
  %1933 = uitofp i32 %1929 to float
  %1934 = fadd fast float %1930, %1932
  %1935 = fadd fast float %1931, %1933
  %1936 = uitofp i32 %1861 to float
  %1937 = uitofp i32 %1862 to float
  %1938 = fdiv fast float %1934, %1936
  %1939 = fdiv fast float %1935, %1937
  br label %1940

; <label>:1940                                    ; preds = %1915, %1842
  %1941 = phi float [ %1938, %1915 ], [ %1910, %1842 ]
  %1942 = phi float [ %1939, %1915 ], [ %1911, %1842 ]
  %1943 = and i32 %1836, 16777216
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %2054, label %1945

; <label>:1945                                    ; preds = %1940
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1950 = fadd fast float %1947, %116
  %1951 = fadd fast float %1948, %117
  %1952 = fadd fast float %1949, %118
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = icmp eq i32 %34, 65535
  br i1 %1956, label %2051, label %1957

; <label>:1957                                    ; preds = %1945
  %1958 = lshr i32 %34, 1
  %1959 = shl i32 %1958, 2
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %34, 1
  %1963 = icmp ne i32 %1962, 0
  %1964 = lshr i32 %1961, 16
  %1965 = and i32 %1961, 65535
  %1966 = select i1 %1963, i32 %1964, i32 %1965
  %1967 = icmp eq i32 %1966, 65535
  br i1 %1967, label %2047, label %1968

; <label>:1968                                    ; preds = %1957
  %1969 = mul nuw nsw i32 %1966, 40
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = add nuw nsw i32 %1969, 12
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = add nuw nsw i32 %1969, 24
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = add nuw nsw i32 %1969, 36
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = fsub fast float %1950, %1971
  %1988 = fsub fast float %1951, %1972
  %1989 = fsub fast float %1952, %1973
  %1990 = fmul fast float %1986, %1987
  %1991 = fmul fast float %1986, %1988
  %1992 = fmul fast float %1986, %1989
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fmul fast float %1996, %1976
  %2000 = fmul fast float %1997, %1977
  %2001 = fmul fast float %1998, %1978
  %2002 = shl i32 %34, 2
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %2004, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2008 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2006, %dx.types.Handle %30, float %2007, float %2008, float %2009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = fmul fast float %2011, 1.023000e+03
  %2015 = fmul fast float %2012, 1.023000e+03
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = call float @dx.op.unary.f32(i32 27, float %2017)  ; Round_ni(value)
  %2021 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = fsub fast float %1990, %1993
  %2024 = fsub fast float %1991, %1994
  %2025 = fsub fast float %1992, %1995
  %2026 = fmul fast float %2023, 7.500000e-01
  %2027 = fmul fast float %2024, 7.500000e-01
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fadd fast float %1993, 1.250000e-01
  %2030 = fadd fast float %2029, %2026
  %2031 = fadd fast float %2030, %2020
  %2032 = fadd fast float %1994, 1.250000e-01
  %2033 = fadd fast float %2032, %2027
  %2034 = fadd fast float %2033, %2021
  %2035 = fadd fast float %1995, 1.250000e-01
  %2036 = fadd fast float %2035, %2028
  %2037 = fadd fast float %2036, %2022
  %2038 = fmul fast float %2031, %1981
  %2039 = fmul fast float %2034, %1982
  %2040 = fmul fast float %2037, %1983
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %2042, 0
  %2044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2044, %dx.types.Handle %28, float %2038, float %2039, float %2040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 0
  br label %2047

; <label>:2047                                    ; preds = %1968, %1957
  %2048 = phi float [ %2046, %1968 ], [ -1.000000e+00, %1957 ]
  %2049 = fadd fast float %2048, %1955
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  br label %2051

; <label>:2051                                    ; preds = %2047, %1945
  %2052 = phi float [ %2050, %2047 ], [ %1955, %1945 ]
  %2053 = fmul fast float %2052, %382
  br label %2054

; <label>:2054                                    ; preds = %2051, %1940
  %2055 = phi float [ %2053, %2051 ], [ %382, %1940 ]
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 256
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2106, label %2060

; <label>:2060                                    ; preds = %2054
  %2061 = add i32 %33, 432
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %2063, 0
  %2065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2065, %dx.types.Handle %58, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = add i32 %33, 132
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = shl i32 %2070, 4
  %2072 = and i32 %2071, 32752
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = lshr i32 %2070, 7
  %2075 = and i32 %2074, 32752
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fsub fast float 1.000000e+00, %2055
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2079 = bitcast float %2055 to i32
  %2080 = sitofp i32 %2079 to float
  %2081 = fadd fast float %2080, 0xC1CFBF8940000000
  %2082 = fmul fast float %2076, %2081
  %2083 = fadd fast float %2082, 0x41CFBF8940000000
  %2084 = fptosi float %2083 to i32
  %2085 = bitcast i32 %2084 to float
  %2086 = bitcast float %2078 to i32
  %2087 = sitofp i32 %2086 to float
  %2088 = fadd fast float %2087, 0xC1CFBF8940000000
  %2089 = fmul fast float %2088, %2076
  %2090 = fadd fast float %2089, 0x41CFBF8940000000
  %2091 = fptosi float %2090 to i32
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2085, %2073
  %2094 = fmul fast float %2092, %2073
  %2095 = fsub fast float %2078, %2093
  %2096 = fadd fast float %2094, %2078
  %2097 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2099 = fsub fast float %2067, %2097
  %2100 = fsub fast float %2098, %2097
  %2101 = bitcast float %2100 to i32
  %2102 = sub nsw i32 2129859010, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2103, %2099
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  br label %2106

; <label>:2106                                    ; preds = %2060, %2054
  %2107 = phi float [ %2105, %2060 ], [ %2055, %2054 ]
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 128
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2128, label %2112

; <label>:2112                                    ; preds = %2106
  %2113 = add i32 %33, 416
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %58, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 524288
  %2123 = icmp ne i32 %2122, 0
  %2124 = fcmp fast ogt float %2119, 0x3FE0101020000000
  %2125 = select i1 %2124, float 1.000000e+00, float 0.000000e+00
  %2126 = select i1 %2123, float %2125, float %2119
  %2127 = fmul fast float %2126, %2107
  br label %2128

; <label>:2128                                    ; preds = %2112, %2106
  %2129 = phi float [ %2127, %2112 ], [ %2107, %2106 ]
  %2130 = fcmp fast ult float %2129, 0x3F70101020000000
  br i1 %2130, label %2784, label %2131

; <label>:2131                                    ; preds = %2128
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 16
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %2334, label %2136

; <label>:2136                                    ; preds = %2131
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %33, 368
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %57, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = and i32 %2138, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = lshr i32 %2138, 8
  %2152 = and i32 %2151, 255
  %2153 = uitofp i32 %2152 to float
  %2154 = fmul fast float %2148, %2150
  %2155 = fadd fast float %2154, %2153
  %2156 = fmul fast float %2155, 0x3F70101000000000
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 512
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2169, label %2161

; <label>:2161                                    ; preds = %2136
  %2162 = add i32 %33, 448
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %58, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  br label %2169

; <label>:2169                                    ; preds = %2161, %2136
  %2170 = phi float [ %2168, %2161 ], [ 1.000000e+00, %2136 ]
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 33554432
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2281, label %2175

; <label>:2175                                    ; preds = %2169
  %2176 = add i32 %33, 256
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 65535
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2178, 16
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = add i32 %33, 260
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 65535
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = lshr i32 %2189, 24
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2191, 0x3F70101020000000
  %2193 = and i32 %2189, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = lshr i32 %2189, 8
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = lshr i32 %2189, 16
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101020000000
  %2204 = add i32 %33, 252
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = and i32 %2206, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2206, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = lshr i32 %2206, 16
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = bitcast float %2145 to i32
  %2222 = ashr i32 %2221, 1
  %2223 = sub nsw i32 1597463174, %2222
  %2224 = bitcast i32 %2223 to float
  %2225 = fmul fast float %2145, 5.000000e-01
  %2226 = fmul fast float %2224, %2224
  %2227 = fmul fast float %2226, %2225
  %2228 = fsub fast float 1.500000e+00, %2227
  %2229 = fmul fast float %2224, %2145
  %2230 = fmul fast float %2229, %2228
  %2231 = bitcast float %2146 to i32
  %2232 = ashr i32 %2231, 1
  %2233 = sub nsw i32 1597463174, %2232
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2146, 5.000000e-01
  %2236 = fmul fast float %2234, %2234
  %2237 = fmul fast float %2236, %2235
  %2238 = fsub fast float 1.500000e+00, %2237
  %2239 = fmul fast float %2234, %2146
  %2240 = fmul fast float %2239, %2238
  %2241 = bitcast float %2147 to i32
  %2242 = ashr i32 %2241, 1
  %2243 = sub nsw i32 1597463174, %2242
  %2244 = bitcast i32 %2243 to float
  %2245 = fmul fast float %2147, 5.000000e-01
  %2246 = fmul fast float %2244, %2244
  %2247 = fmul fast float %2246, %2245
  %2248 = fsub fast float 1.500000e+00, %2247
  %2249 = fmul fast float %2244, %2147
  %2250 = fmul fast float %2249, %2248
  %2251 = fsub fast float %2230, %2212
  %2252 = fsub fast float %2240, %2216
  %2253 = fsub fast float %2250, %2220
  %2254 = fmul fast float %2251, %2180
  %2255 = fmul fast float %2252, %2182
  %2256 = fmul fast float %2253, %2187
  %2257 = fadd fast float %2254, %2195
  %2258 = fadd fast float %2255, %2199
  %2259 = fadd fast float %2256, %2203
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = fmul fast float %2260, %2260
  %2264 = fmul fast float %2261, %2261
  %2265 = fmul fast float %2262, %2262
  %2266 = fsub fast float %2263, %2145
  %2267 = fsub fast float %2264, %2146
  %2268 = fsub fast float %2265, %2147
  %2269 = fmul fast float %2266, %2170
  %2270 = fmul fast float %2267, %2170
  %2271 = fmul fast float %2268, %2170
  %2272 = fadd fast float %2269, %2145
  %2273 = fadd fast float %2270, %2146
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2192, %2156
  %2276 = fsub fast float %2275, %2209
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2277, %2156
  %2279 = fmul fast float %2278, %2170
  %2280 = fadd fast float %2279, %2156
  br label %2334

; <label>:2281                                    ; preds = %2169
  %2282 = and i32 %2172, 134217728
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2318, label %2284

; <label>:2284                                    ; preds = %2281
  %2285 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %2286 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fmul fast float %2288, %2170
  %2292 = fmul fast float %2289, %2170
  %2293 = fmul fast float %2290, %2170
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %2298 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = fmul fast float %2294, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2297
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2297
  %2305 = fmul fast float %2295, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2298
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2298
  %2310 = fmul fast float %2296, 2.000000e+00
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2311, %2299
  %2313 = fadd fast float %2312, %2310
  %2314 = fmul fast float %2313, %2299
  %2315 = fmul fast float %2304, %2304
  %2316 = fmul fast float %2309, %2309
  %2317 = fmul fast float %2314, %2314
  br label %2334

; <label>:2318                                    ; preds = %2281
  %2319 = fmul fast float %260, %260
  %2320 = fmul fast float %264, %264
  %2321 = fmul fast float %268, %268
  %2322 = fadd fast float %2319, -1.000000e+00
  %2323 = fadd fast float %2320, -1.000000e+00
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fmul fast float %2170, %2322
  %2326 = fmul fast float %2170, %2323
  %2327 = fmul fast float %2170, %2324
  %2328 = fadd fast float %2325, 1.000000e+00
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fmul fast float %2328, %2145
  %2332 = fmul fast float %2329, %2146
  %2333 = fmul fast float %2330, %2147
  br label %2334

; <label>:2334                                    ; preds = %2318, %2284, %2175, %2131
  %2335 = phi float [ %2280, %2175 ], [ %2156, %2284 ], [ %2156, %2318 ], [ 0x3FA23C0BE0000000, %2131 ]
  %2336 = phi float [ %2272, %2175 ], [ %2315, %2284 ], [ %2331, %2318 ], [ 1.000000e+00, %2131 ]
  %2337 = phi float [ %2273, %2175 ], [ %2316, %2284 ], [ %2332, %2318 ], [ 1.000000e+00, %2131 ]
  %2338 = phi float [ %2274, %2175 ], [ %2317, %2284 ], [ %2333, %2318 ], [ 1.000000e+00, %2131 ]
  %2339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.i32 %2339, 1
  %2341 = and i32 %2340, 1
  %2342 = icmp ne i32 %2341, 0
  %2343 = add i32 %33, 356
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 32
  %2347 = icmp ne i32 %2346, 0
  %2348 = and i1 %2342, %2347
  %2349 = select i1 %2348, float 1.000000e+00, float %2336
  %2350 = select i1 %2348, float 0x3FD3333340000000, float %2337
  %2351 = select i1 %2348, float 0x3FD3333340000000, float %2338
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 32
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2428, label %2356

; <label>:2356                                    ; preds = %2334
  %2357 = add i32 %33, 124
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = add i32 %33, 384
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %57, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = and i32 %2359, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = lshr i32 %2359, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = lshr i32 %2359, 16
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101000000000
  %2379 = fmul fast float %2366, %2371
  %2380 = fadd fast float %2379, %2374
  %2381 = fmul fast float %2380, 0x3F70101000000000
  %2382 = fadd fast float %2367, -5.000000e-01
  %2383 = fadd fast float %2369, -5.000000e-01
  %2384 = fmul fast float %2382, %2378
  %2385 = fmul fast float %2383, %2378
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fmul fast float %2386, 2.000000e+00
  %2389 = fadd fast float %2388, -1.000000e+00
  %2390 = fmul fast float %2387, 2.000000e+00
  %2391 = fadd fast float %2390, -1.000000e+00
  %2392 = fadd fast float %2389, %2391
  %2393 = fmul fast float %2392, 5.000000e-01
  %2394 = fsub fast float %2389, %2391
  %2395 = fmul fast float %2394, 5.000000e-01
  %2396 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2399 = fsub fast float %2397, %2398
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2393, float %2395, float %2399, float %2393, float %2395, float %2399)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = call float @dx.op.unary.f32(i32 25, float %2400)  ; Rsqrt(value)
  %2402 = fmul fast float %2393, %2401
  %2403 = fmul fast float %2395, %2401
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 67108864
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2424, label %2408

; <label>:2408                                    ; preds = %2356
  %2409 = add i32 %33, 312
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 65535
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = lshr i32 %2411, 16
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = fsub fast float %2381, %2419
  %2421 = fmul fast float %2420, %2413
  %2422 = fadd fast float %2421, %2417
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br label %2424

; <label>:2424                                    ; preds = %2408, %2356
  %2425 = phi float [ %2423, %2408 ], [ %2381, %2356 ]
  %2426 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  %2427 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  br label %2428

; <label>:2428                                    ; preds = %2424, %2334
  %2429 = phi float [ %2425, %2424 ], [ 0x3FD6666660000000, %2334 ]
  %2430 = phi float [ %2426, %2424 ], [ 0.000000e+00, %2334 ]
  %2431 = phi float [ %2427, %2424 ], [ 0.000000e+00, %2334 ]
  %2432 = phi float [ %2368, %2424 ], [ 1.000000e+00, %2334 ]
  %2433 = add i32 %33, 192
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = lshr i32 %2435, 22
  %2437 = shl nuw nsw i32 %2436, 5
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 64
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2476, label %2443

; <label>:2443                                    ; preds = %2428
  %2444 = add i32 %33, 400
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = add i32 %2446, 0
  %2448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 131072
  %2452 = icmp eq i32 %2451, 0
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2448, %dx.types.Handle %57, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = fmul fast float %2454, %248
  %2458 = fmul fast float %2455, %251
  %2459 = fmul fast float %2456, %254
  br i1 %2452, label %2466, label %2460

; <label>:2460                                    ; preds = %2443
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = fmul fast float %2462, %2457
  %2464 = fmul fast float %2462, %2458
  %2465 = fmul fast float %2462, %2459
  br label %2466

; <label>:2466                                    ; preds = %2460, %2443
  %2467 = phi float [ %2463, %2460 ], [ %2457, %2443 ]
  %2468 = phi float [ %2464, %2460 ], [ %2458, %2443 ]
  %2469 = phi float [ %2465, %2460 ], [ %2459, %2443 ]
  %2470 = fmul fast float %2467, %2438
  %2471 = select i1 %158, float %2470, float %2467
  %2472 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2468, float %2469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2473 = select i1 %158, float 0.000000e+00, float %2467
  %2474 = select i1 %158, float %2472, float %2468
  %2475 = select i1 %158, float 0.000000e+00, float %2469
  br label %2476

; <label>:2476                                    ; preds = %2466, %2428
  %2477 = phi float [ %2473, %2466 ], [ 0.000000e+00, %2428 ]
  %2478 = phi float [ %2474, %2466 ], [ 0.000000e+00, %2428 ]
  %2479 = phi float [ %2475, %2466 ], [ 0.000000e+00, %2428 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 1024
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2514, label %2484

; <label>:2484                                    ; preds = %2476
  %2485 = add i32 %33, 184
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = lshr i32 %2487, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = lshr i32 %2487, 16
  %2496 = and i32 %2495, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = fmul fast float %2497, 0x3F70101020000000
  %2499 = fmul fast float %2490, %2490
  %2500 = fmul fast float %2494, %2494
  %2501 = fmul fast float %2498, %2498
  %2502 = add i32 %33, 464
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2504, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2506, %dx.types.Handle %58, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fmul fast float %2499, %2508
  %2512 = fmul fast float %2500, %2509
  %2513 = fmul fast float %2501, %2510
  br label %2514

; <label>:2514                                    ; preds = %2484, %2476
  %2515 = phi float [ %2511, %2484 ], [ 0.000000e+00, %2476 ]
  %2516 = phi float [ %2512, %2484 ], [ 0.000000e+00, %2476 ]
  %2517 = phi float [ %2513, %2484 ], [ 0.000000e+00, %2476 ]
  %2518 = fcmp fast ogt float %2515, 0.000000e+00
  %2519 = fcmp fast ogt float %2516, 0.000000e+00
  %2520 = fcmp fast ogt float %2517, 0.000000e+00
  %2521 = call float @dx.op.unary.f32(i32 23, float %2515)  ; Log(value)
  %2522 = call float @dx.op.unary.f32(i32 23, float %2516)  ; Log(value)
  %2523 = call float @dx.op.unary.f32(i32 23, float %2517)  ; Log(value)
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = lshr i32 %2525, 7
  %2527 = and i32 %2526, 32752
  %2528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2527)  ; LegacyF16ToF32(value)
  %2529 = fmul fast float %2521, 0xBFE62E4300000000
  %2530 = fmul fast float %2529, %2528
  %2531 = fmul fast float %2522, 0xBFE62E4300000000
  %2532 = fmul fast float %2531, %2528
  %2533 = fmul fast float %2523, 0xBFE62E4300000000
  %2534 = fmul fast float %2533, %2528
  %2535 = select i1 %2518, float %2530, float 1.270000e+02
  %2536 = select i1 %2519, float %2532, float 1.270000e+02
  %2537 = select i1 %2520, float %2534, float 1.270000e+02
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 10240
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %2562, label %2542

; <label>:2542                                    ; preds = %2514
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 2048
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2562, label %2547

; <label>:2547                                    ; preds = %2542
  %2548 = add i32 %33, 480
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = add i32 %2550, 0
  %2552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2552, %dx.types.Handle %58, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 3
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = shl i32 %2556, 4
  %2558 = and i32 %2557, 32752
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = fmul fast float %2559, %2554
  %2561 = call float @dx.op.binary.f32(i32 35, float %2560, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2562

; <label>:2562                                    ; preds = %2547, %2542, %2514
  %2563 = phi float [ %2561, %2547 ], [ 0x3F70101020000000, %2542 ], [ 0x3F70101020000000, %2514 ]
  %2564 = add i32 %33, 128
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = lshr i32 %2566, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = fmul fast float %2571, %2572
  %2574 = fadd fast float %2573, %2568
  %2575 = fmul fast float %2574, 0x3F70101020000000
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  br i1 %1833, label %2577, label %2612

; <label>:2577                                    ; preds = %2562
  %2578 = fmul fast float %2563, 2.000000e+00
  %2579 = fcmp fast olt float %2535, 1.270000e+02
  %2580 = fcmp fast olt float %2536, 1.270000e+02
  %2581 = fcmp fast olt float %2537, 1.270000e+02
  %2582 = fmul fast float %2535, 0xBFF7154760000000
  %2583 = fmul fast float %2582, %2578
  %2584 = fmul fast float %2536, 0xBFF7154760000000
  %2585 = fmul fast float %2584, %2578
  %2586 = fmul fast float %2537, 0xBFF7154760000000
  %2587 = fmul fast float %2586, %2578
  %2588 = call float @dx.op.unary.f32(i32 21, float %2583)  ; Exp(value)
  %2589 = call float @dx.op.unary.f32(i32 21, float %2585)  ; Exp(value)
  %2590 = call float @dx.op.unary.f32(i32 21, float %2587)  ; Exp(value)
  %2591 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2592 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2593 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2594 = fadd fast float %2591, -1.000000e+00
  %2595 = select i1 %2579, float %2594, float -1.000000e+00
  %2596 = fadd fast float %2592, -1.000000e+00
  %2597 = select i1 %2580, float %2596, float -1.000000e+00
  %2598 = fadd fast float %2593, -1.000000e+00
  %2599 = select i1 %2581, float %2598, float -1.000000e+00
  %2600 = fmul fast float %2595, %2129
  %2601 = fmul fast float %2597, %2129
  %2602 = fmul fast float %2599, %2129
  %2603 = fadd fast float %2600, 1.000000e+00
  %2604 = fadd fast float %2601, 1.000000e+00
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fmul fast float %2603, %1825
  %2607 = fmul fast float %2604, %1826
  %2608 = fmul fast float %2605, %1827
  %2609 = fmul fast float %2603, %1822
  %2610 = fmul fast float %2604, %1823
  %2611 = fmul fast float %2605, %1824
  br label %2612

; <label>:2612                                    ; preds = %2577, %2562
  %2613 = phi float [ %2609, %2577 ], [ %1822, %2562 ]
  %2614 = phi float [ %2610, %2577 ], [ %1823, %2562 ]
  %2615 = phi float [ %2611, %2577 ], [ %1824, %2562 ]
  %2616 = phi float [ %2606, %2577 ], [ %1825, %2562 ]
  %2617 = phi float [ %2607, %2577 ], [ %1826, %2562 ]
  %2618 = phi float [ %2608, %2577 ], [ %1827, %2562 ]
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 3
  %2622 = icmp eq i32 %2621, 3
  br i1 %2622, label %2701, label %2623

; <label>:2623                                    ; preds = %2612
  %2624 = and i32 %2620, 16
  %2625 = icmp ne i32 %2624, 0
  %2626 = select i1 %2625, float %2129, float 0.000000e+00
  %2627 = icmp eq i32 %2621, 0
  br i1 %2627, label %2628, label %2656

; <label>:2628                                    ; preds = %2623
  %2629 = and i32 %2620, 64
  %2630 = icmp ne i32 %2629, 0
  %2631 = select i1 %2630, float %2129, float 0.000000e+00
  %2632 = fsub fast float %2349, %2616
  %2633 = fsub fast float %2350, %2617
  %2634 = fsub fast float %2351, %2618
  %2635 = fmul fast float %2626, %2632
  %2636 = fmul fast float %2626, %2633
  %2637 = fmul fast float %2626, %2634
  %2638 = fadd fast float %2635, %2616
  %2639 = fadd fast float %2636, %2617
  %2640 = fadd fast float %2637, %2618
  %2641 = fsub fast float %2335, %1828
  %2642 = fmul fast float %2626, %2641
  %2643 = fadd fast float %2642, %1828
  %2644 = fsub fast float %2477, %2613
  %2645 = fsub fast float %2478, %2614
  %2646 = fsub fast float %2479, %2615
  %2647 = fmul fast float %2631, %2644
  %2648 = fmul fast float %2631, %2645
  %2649 = fmul fast float %2631, %2646
  %2650 = fadd fast float %2647, %2613
  %2651 = fadd fast float %2648, %2614
  %2652 = fadd fast float %2649, %2615
  %2653 = fsub fast float %2576, %1831
  %2654 = fmul fast float %2626, %2653
  %2655 = fadd fast float %2654, %1831
  br label %2701

; <label>:2656                                    ; preds = %2623
  %2657 = icmp eq i32 %2621, 1
  br i1 %2657, label %2658, label %2671

; <label>:2658                                    ; preds = %2656
  %2659 = fadd fast float %2349, -1.000000e+00
  %2660 = fadd fast float %2350, -1.000000e+00
  %2661 = fadd fast float %2351, -1.000000e+00
  %2662 = fmul fast float %2626, %2659
  %2663 = fmul fast float %2626, %2660
  %2664 = fmul fast float %2626, %2661
  %2665 = fadd fast float %2662, 1.000000e+00
  %2666 = fadd fast float %2663, 1.000000e+00
  %2667 = fadd fast float %2664, 1.000000e+00
  %2668 = fmul fast float %2665, %2616
  %2669 = fmul fast float %2666, %2617
  %2670 = fmul fast float %2667, %2618
  br label %2701

; <label>:2671                                    ; preds = %2656
  %2672 = icmp eq i32 %2621, 2
  br i1 %2672, label %2673, label %2701

; <label>:2673                                    ; preds = %2671
  %2674 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2675 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2676 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2677 = fadd fast float %2674, -5.000000e-01
  %2678 = fadd fast float %2675, -5.000000e-01
  %2679 = fadd fast float %2676, -5.000000e-01
  %2680 = fmul fast float %2677, %2626
  %2681 = fmul fast float %2678, %2626
  %2682 = fmul fast float %2679, %2626
  %2683 = fadd fast float %2680, 5.000000e-01
  %2684 = fadd fast float %2681, 5.000000e-01
  %2685 = fadd fast float %2682, 5.000000e-01
  %2686 = fmul fast float %2683, 2.000000e+00
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2687, %2616
  %2689 = fadd fast float %2688, %2686
  %2690 = fmul fast float %2689, %2616
  %2691 = fmul fast float %2684, 2.000000e+00
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = fmul fast float %2692, %2617
  %2694 = fadd fast float %2693, %2691
  %2695 = fmul fast float %2694, %2617
  %2696 = fmul fast float %2685, 2.000000e+00
  %2697 = fsub fast float 1.000000e+00, %2696
  %2698 = fmul fast float %2697, %2618
  %2699 = fadd fast float %2698, %2696
  %2700 = fmul fast float %2699, %2618
  br label %2701

; <label>:2701                                    ; preds = %2673, %2671, %2658, %2628, %2612
  %2702 = phi float [ %2613, %2612 ], [ %2613, %2673 ], [ %2613, %2671 ], [ %2613, %2658 ], [ %2650, %2628 ]
  %2703 = phi float [ %2614, %2612 ], [ %2614, %2673 ], [ %2614, %2671 ], [ %2614, %2658 ], [ %2651, %2628 ]
  %2704 = phi float [ %2615, %2612 ], [ %2615, %2673 ], [ %2615, %2671 ], [ %2615, %2658 ], [ %2652, %2628 ]
  %2705 = phi float [ %2616, %2612 ], [ %2690, %2673 ], [ %2616, %2671 ], [ %2668, %2658 ], [ %2638, %2628 ]
  %2706 = phi float [ %2617, %2612 ], [ %2695, %2673 ], [ %2617, %2671 ], [ %2669, %2658 ], [ %2639, %2628 ]
  %2707 = phi float [ %2618, %2612 ], [ %2700, %2673 ], [ %2618, %2671 ], [ %2670, %2658 ], [ %2640, %2628 ]
  %2708 = phi float [ %1828, %2612 ], [ %1828, %2673 ], [ %1828, %2671 ], [ %1828, %2658 ], [ %2643, %2628 ]
  %2709 = phi float [ %1831, %2612 ], [ %1831, %2673 ], [ %1831, %2671 ], [ %1831, %2658 ], [ %2655, %2628 ]
  %2710 = and i32 %2620, 12
  %2711 = icmp eq i32 %2710, 12
  br i1 %2711, label %2784, label %2712

; <label>:2712                                    ; preds = %2701
  %2713 = and i32 %2620, 2097184
  %2714 = icmp eq i32 %2713, 2097184
  %2715 = select i1 %2714, float %2129, float 0.000000e+00
  %2716 = and i32 %2620, 4194336
  %2717 = icmp eq i32 %2716, 4194336
  %2718 = select i1 %2717, float %2129, float 0.000000e+00
  %2719 = and i32 %2620, 8388640
  %2720 = icmp eq i32 %2719, 8388640
  %2721 = select i1 %2720, float %2129, float 0.000000e+00
  %2722 = icmp eq i32 %2710, 0
  br i1 %2722, label %2723, label %2736

; <label>:2723                                    ; preds = %2712
  %2724 = fsub fast float %2430, %1820
  %2725 = fsub fast float %2431, %1821
  %2726 = fmul fast float %2715, %2724
  %2727 = fmul fast float %2715, %2725
  %2728 = fadd fast float %2726, %1820
  %2729 = fadd fast float %2727, %1821
  %2730 = fsub fast float %2432, %1830
  %2731 = fmul fast float %2718, %2730
  %2732 = fadd fast float %2731, %1830
  %2733 = fsub fast float %2429, %1829
  %2734 = fmul fast float %2721, %2733
  %2735 = fadd fast float %2734, %1829
  br label %2784

; <label>:2736                                    ; preds = %2712
  %2737 = icmp eq i32 %2710, 4
  br i1 %2737, label %2738, label %2770

; <label>:2738                                    ; preds = %2736
  %2739 = fmul fast float %2715, %2430
  %2740 = fmul fast float %2715, %2431
  %2741 = fadd fast float %2739, %1820
  %2742 = fadd fast float %2740, %1821
  %2743 = call float @dx.op.binary.f32(i32 36, float %1830, float %2432)  ; FMin(a,b)
  %2744 = fsub fast float %2743, %1830
  %2745 = fmul fast float %2744, %2718
  %2746 = fadd fast float %2745, %1830
  %2747 = fadd fast float %2429, %1829
  %2748 = fmul fast float %2747, 0x3FF337FAE0000000
  %2749 = fmul fast float %1829, %1829
  %2750 = fmul fast float %2429, %2429
  %2751 = fadd fast float %2750, %2749
  %2752 = fmul fast float %2751, 0x3FE5152B00000000
  %2753 = fmul fast float %1829, 0xBFCC1F85E0000000
  %2754 = fmul fast float %2753, %2429
  %2755 = fadd fast float %2754, 0xBFE1363700000000
  %2756 = fadd fast float %2755, %2748
  %2757 = fsub fast float %2756, %2752
  %2758 = fmul fast float %2747, 0x3FBA6F0D00000000
  %2759 = fmul fast float %2751, 0x3FD0432880000000
  %2760 = fmul fast float %1829, 0xBFEF110800000000
  %2761 = fmul fast float %2760, %2429
  %2762 = fadd fast float %2761, 1.000000e+00
  %2763 = fsub fast float %2762, %2758
  %2764 = fadd fast float %2763, %2759
  %2765 = fdiv fast float %2757, %2764
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fsub fast float %2766, %1829
  %2768 = fmul fast float %2767, %2721
  %2769 = fadd fast float %2768, %1829
  br label %2784

; <label>:2770                                    ; preds = %2736
  %2771 = icmp eq i32 %2710, 8
  br i1 %2771, label %2772, label %2784

; <label>:2772                                    ; preds = %2770
  %2773 = fmul fast float %2715, %2430
  %2774 = fmul fast float %2715, %2431
  %2775 = fadd fast float %2773, %1820
  %2776 = fadd fast float %2774, %1821
  %2777 = call float @dx.op.binary.f32(i32 36, float %1830, float %2432)  ; FMin(a,b)
  %2778 = fsub fast float %2777, %1830
  %2779 = fmul fast float %2778, %2718
  %2780 = fadd fast float %2779, %1830
  %2781 = fsub fast float %2429, %1829
  %2782 = fmul fast float %2721, %2781
  %2783 = fadd fast float %2782, %1829
  br label %2784

; <label>:2784                                    ; preds = %2772, %2770, %2738, %2723, %2701, %2128, %1832, %1819
  %2785 = phi float [ %1820, %2701 ], [ %1820, %2128 ], [ %1820, %1819 ], [ %2775, %2772 ], [ %1820, %2770 ], [ %2741, %2738 ], [ %2728, %2723 ], [ %1820, %1832 ]
  %2786 = phi float [ %1821, %2701 ], [ %1821, %2128 ], [ %1821, %1819 ], [ %2776, %2772 ], [ %1821, %2770 ], [ %2742, %2738 ], [ %2729, %2723 ], [ %1821, %1832 ]
  %2787 = phi float [ %2702, %2701 ], [ %1822, %2128 ], [ %1822, %1819 ], [ %2702, %2772 ], [ %2702, %2770 ], [ %2702, %2738 ], [ %2702, %2723 ], [ %1822, %1832 ]
  %2788 = phi float [ %2703, %2701 ], [ %1823, %2128 ], [ %1823, %1819 ], [ %2703, %2772 ], [ %2703, %2770 ], [ %2703, %2738 ], [ %2703, %2723 ], [ %1823, %1832 ]
  %2789 = phi float [ %2704, %2701 ], [ %1824, %2128 ], [ %1824, %1819 ], [ %2704, %2772 ], [ %2704, %2770 ], [ %2704, %2738 ], [ %2704, %2723 ], [ %1824, %1832 ]
  %2790 = phi float [ %2705, %2701 ], [ %1825, %2128 ], [ %1825, %1819 ], [ %2705, %2772 ], [ %2705, %2770 ], [ %2705, %2738 ], [ %2705, %2723 ], [ %1825, %1832 ]
  %2791 = phi float [ %2706, %2701 ], [ %1826, %2128 ], [ %1826, %1819 ], [ %2706, %2772 ], [ %2706, %2770 ], [ %2706, %2738 ], [ %2706, %2723 ], [ %1826, %1832 ]
  %2792 = phi float [ %2707, %2701 ], [ %1827, %2128 ], [ %1827, %1819 ], [ %2707, %2772 ], [ %2707, %2770 ], [ %2707, %2738 ], [ %2707, %2723 ], [ %1827, %1832 ]
  %2793 = phi float [ %2708, %2701 ], [ %1828, %2128 ], [ %1828, %1819 ], [ %2708, %2772 ], [ %2708, %2770 ], [ %2708, %2738 ], [ %2708, %2723 ], [ %1828, %1832 ]
  %2794 = phi float [ %1829, %2701 ], [ %1829, %2128 ], [ %1829, %1819 ], [ %2783, %2772 ], [ %1829, %2770 ], [ %2769, %2738 ], [ %2735, %2723 ], [ %1829, %1832 ]
  %2795 = phi float [ %1830, %2701 ], [ %1830, %2128 ], [ %1830, %1819 ], [ %2780, %2772 ], [ %1830, %2770 ], [ %2746, %2738 ], [ %2732, %2723 ], [ %1830, %1832 ]
  %2796 = phi float [ %2709, %2701 ], [ %1831, %2128 ], [ %1831, %1819 ], [ %2709, %2772 ], [ %2709, %2770 ], [ %2709, %2738 ], [ %2709, %2723 ], [ %1831, %1832 ]
  br i1 %335, label %3749, label %2797

; <label>:2797                                    ; preds = %2784
  %2798 = icmp ult i32 %386, 4
  %2799 = add i32 %33, 72
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = add i32 %33, 76
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = or i32 %2804, %2801
  %2806 = icmp eq i32 %2805, 0
  br i1 %2806, label %3749, label %2807

; <label>:2807                                    ; preds = %2797
  %2808 = and i32 %2801, 262144
  %2809 = icmp ne i32 %2808, 0
  %2810 = select i1 %2809, float %36, float 1.000000e+00
  %2811 = select i1 %2809, float %37, float 0.000000e+00
  %2812 = select i1 %2809, float %38, float 0.000000e+00
  %2813 = select i1 %2809, float %39, float 1.000000e+00
  %2814 = select i1 %2809, float %40, float %49
  %2815 = select i1 %2809, float %41, float %50
  %2816 = add i32 %33, 332
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 16
  %2820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2819)  ; LegacyF16ToF32(value)
  %2821 = fmul fast float %2820, 0x3F50624DE0000000
  %2822 = add i32 %33, 136
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = lshr i32 %2824, 16
  %2826 = and i32 %2825, 255
  %2827 = lshr i32 %2824, 24
  %2828 = add i32 %33, 340
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 65535
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = lshr i32 %2830, 16
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = add i32 %33, 80
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = lshr i32 %2837, 22
  %2839 = shl nuw nsw i32 %2838, 5
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = shl i32 %2837, 4
  %2842 = and i32 %2841, 32752
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = lshr i32 %2837, 7
  %2845 = and i32 %2844, 32752
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 3
  %2849 = fmul fast float %2848, 1.000000e+03
  %2850 = fmul fast float %325, %2849
  %2851 = call float @dx.op.unary.f32(i32 22, float %2850)  ; Frc(value)
  %2852 = fadd fast float %2851, %315
  %2853 = fmul fast float %326, %2849
  %2854 = call float @dx.op.unary.f32(i32 22, float %2853)  ; Frc(value)
  %2855 = fadd fast float %2854, %317
  %2856 = fmul fast float %2821, %2849
  %2857 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  %2858 = fmul fast float %2857, 0x401921FB60000000
  %2859 = fadd fast float %2858, %2840
  %2860 = call float @dx.op.unary.f32(i32 13, float %2859)  ; Sin(value)
  %2861 = call float @dx.op.unary.f32(i32 12, float %2859)  ; Cos(value)
  %2862 = fsub fast float -0.000000e+00, %2860
  %2863 = fadd fast float %2814, -5.000000e-01
  %2864 = fadd fast float %2815, -5.000000e-01
  %2865 = fmul fast float %2832, %2863
  %2866 = fmul fast float %2834, %2864
  %2867 = fadd fast float %2865, 5.000000e-01
  %2868 = fadd fast float %2866, 5.000000e-01
  %2869 = fmul fast float %2843, %2867
  %2870 = fmul fast float %2846, %2868
  %2871 = fmul fast float %2861, %2869
  %2872 = call float @dx.op.tertiary.f32(i32 46, float %2862, float %2870, float %2871)  ; FMad(a,b,c)
  %2873 = fmul fast float %2860, %2869
  %2874 = call float @dx.op.tertiary.f32(i32 46, float %2861, float %2870, float %2873)  ; FMad(a,b,c)
  %2875 = fadd fast float %2852, %2872
  %2876 = fadd fast float %2855, %2874
  %2877 = icmp ugt i32 %2826, 1
  %2878 = icmp ugt i32 %2824, 33554431
  %2879 = or i1 %2878, %2877
  br i1 %2879, label %2880, label %2905

; <label>:2880                                    ; preds = %2807
  %2881 = add i32 %33, 276
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = lshr i32 %2883, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fmul fast float %2848, %2885
  %2887 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2888 = mul nuw nsw i32 %2826, %2827
  %2889 = uitofp i32 %2888 to float
  %2890 = fmul fast float %2887, %2889
  %2891 = call float @dx.op.unary.f32(i32 27, float %2890)  ; Round_ni(value)
  %2892 = fptoui float %2891 to i32
  %2893 = urem i32 %2892, %2826
  %2894 = udiv i32 %2892, %2827
  %2895 = call float @dx.op.unary.f32(i32 22, float %2875)  ; Frc(value)
  %2896 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2897 = uitofp i32 %2893 to float
  %2898 = uitofp i32 %2894 to float
  %2899 = fadd fast float %2895, %2897
  %2900 = fadd fast float %2896, %2898
  %2901 = uitofp i32 %2826 to float
  %2902 = uitofp i32 %2827 to float
  %2903 = fdiv fast float %2899, %2901
  %2904 = fdiv fast float %2900, %2902
  br label %2905

; <label>:2905                                    ; preds = %2880, %2807
  %2906 = phi float [ %2903, %2880 ], [ %2875, %2807 ]
  %2907 = phi float [ %2904, %2880 ], [ %2876, %2807 ]
  %2908 = and i32 %2801, 16777216
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %3019, label %2910

; <label>:2910                                    ; preds = %2905
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2915 = fadd fast float %2912, %116
  %2916 = fadd fast float %2913, %117
  %2917 = fadd fast float %2914, %118
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  %2921 = icmp eq i32 %34, 65535
  br i1 %2921, label %3016, label %2922

; <label>:2922                                    ; preds = %2910
  %2923 = lshr i32 %34, 1
  %2924 = shl i32 %2923, 2
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %34, 1
  %2928 = icmp ne i32 %2927, 0
  %2929 = lshr i32 %2926, 16
  %2930 = and i32 %2926, 65535
  %2931 = select i1 %2928, i32 %2929, i32 %2930
  %2932 = icmp eq i32 %2931, 65535
  br i1 %2932, label %3012, label %2933

; <label>:2933                                    ; preds = %2922
  %2934 = mul nuw nsw i32 %2931, 40
  %2935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = add nuw nsw i32 %2934, 12
  %2940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  %2944 = add nuw nsw i32 %2934, 24
  %2945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = add nuw nsw i32 %2934, 36
  %2950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = fsub fast float %2915, %2936
  %2953 = fsub fast float %2916, %2937
  %2954 = fsub fast float %2917, %2938
  %2955 = fmul fast float %2951, %2952
  %2956 = fmul fast float %2951, %2953
  %2957 = fmul fast float %2951, %2954
  %2958 = call float @dx.op.unary.f32(i32 27, float %2955)  ; Round_ni(value)
  %2959 = call float @dx.op.unary.f32(i32 27, float %2956)  ; Round_ni(value)
  %2960 = call float @dx.op.unary.f32(i32 27, float %2957)  ; Round_ni(value)
  %2961 = fadd fast float %2958, 5.000000e-01
  %2962 = fadd fast float %2959, 5.000000e-01
  %2963 = fadd fast float %2960, 5.000000e-01
  %2964 = fmul fast float %2961, %2941
  %2965 = fmul fast float %2962, %2942
  %2966 = fmul fast float %2963, %2943
  %2967 = shl i32 %34, 2
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = add i32 %2969, 0
  %2971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2972 = call float @dx.op.unary.f32(i32 22, float %2964)  ; Frc(value)
  %2973 = call float @dx.op.unary.f32(i32 22, float %2965)  ; Frc(value)
  %2974 = call float @dx.op.unary.f32(i32 22, float %2966)  ; Frc(value)
  %2975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2971, %dx.types.Handle %30, float %2972, float %2973, float %2974, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = fmul fast float %2976, 1.023000e+03
  %2980 = fmul fast float %2977, 1.023000e+03
  %2981 = fmul fast float %2978, 1.023000e+03
  %2982 = fadd fast float %2979, 5.000000e-01
  %2983 = fadd fast float %2980, 5.000000e-01
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = call float @dx.op.unary.f32(i32 27, float %2982)  ; Round_ni(value)
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = fsub fast float %2955, %2958
  %2989 = fsub fast float %2956, %2959
  %2990 = fsub fast float %2957, %2960
  %2991 = fmul fast float %2988, 7.500000e-01
  %2992 = fmul fast float %2989, 7.500000e-01
  %2993 = fmul fast float %2990, 7.500000e-01
  %2994 = fadd fast float %2958, 1.250000e-01
  %2995 = fadd fast float %2994, %2991
  %2996 = fadd fast float %2995, %2985
  %2997 = fadd fast float %2959, 1.250000e-01
  %2998 = fadd fast float %2997, %2992
  %2999 = fadd fast float %2998, %2986
  %3000 = fadd fast float %2960, 1.250000e-01
  %3001 = fadd fast float %3000, %2993
  %3002 = fadd fast float %3001, %2987
  %3003 = fmul fast float %2996, %2946
  %3004 = fmul fast float %2999, %2947
  %3005 = fmul fast float %3002, %2948
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = add i32 %3007, 0
  %3009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3009, %dx.types.Handle %28, float %3003, float %3004, float %3005, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  br label %3012

; <label>:3012                                    ; preds = %2933, %2922
  %3013 = phi float [ %3011, %2933 ], [ -1.000000e+00, %2922 ]
  %3014 = fadd fast float %3013, %2920
  %3015 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  br label %3016

; <label>:3016                                    ; preds = %3012, %2910
  %3017 = phi float [ %3015, %3012 ], [ %2920, %2910 ]
  %3018 = fmul fast float %3017, %381
  br label %3019

; <label>:3019                                    ; preds = %3016, %2905
  %3020 = phi float [ %3018, %3016 ], [ %381, %2905 ]
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = and i32 %3022, 256
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3071, label %3025

; <label>:3025                                    ; preds = %3019
  %3026 = add i32 %33, 436
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = add i32 %3028, 0
  %3030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3030, %dx.types.Handle %58, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = add i32 %33, 148
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = shl i32 %3035, 4
  %3037 = and i32 %3036, 32752
  %3038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3037)  ; LegacyF16ToF32(value)
  %3039 = lshr i32 %3035, 7
  %3040 = and i32 %3039, 32752
  %3041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3040)  ; LegacyF16ToF32(value)
  %3042 = fsub fast float 1.000000e+00, %3020
  %3043 = call float @dx.op.binary.f32(i32 35, float %3042, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3044 = bitcast float %3020 to i32
  %3045 = sitofp i32 %3044 to float
  %3046 = fadd fast float %3045, 0xC1CFBF8940000000
  %3047 = fmul fast float %3041, %3046
  %3048 = fadd fast float %3047, 0x41CFBF8940000000
  %3049 = fptosi float %3048 to i32
  %3050 = bitcast i32 %3049 to float
  %3051 = bitcast float %3043 to i32
  %3052 = sitofp i32 %3051 to float
  %3053 = fadd fast float %3052, 0xC1CFBF8940000000
  %3054 = fmul fast float %3053, %3041
  %3055 = fadd fast float %3054, 0x41CFBF8940000000
  %3056 = fptosi float %3055 to i32
  %3057 = bitcast i32 %3056 to float
  %3058 = fmul fast float %3050, %3038
  %3059 = fmul fast float %3057, %3038
  %3060 = fsub fast float %3043, %3058
  %3061 = fadd fast float %3059, %3043
  %3062 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3063 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3064 = fsub fast float %3032, %3062
  %3065 = fsub fast float %3063, %3062
  %3066 = bitcast float %3065 to i32
  %3067 = sub nsw i32 2129859010, %3066
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3068, %3064
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  br label %3071

; <label>:3071                                    ; preds = %3025, %3019
  %3072 = phi float [ %3070, %3025 ], [ %3020, %3019 ]
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 128
  %3076 = icmp eq i32 %3075, 0
  br i1 %3076, label %3093, label %3077

; <label>:3077                                    ; preds = %3071
  %3078 = add i32 %33, 420
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = add i32 %3080, 0
  %3082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3082, %dx.types.Handle %58, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 524288
  %3088 = icmp ne i32 %3087, 0
  %3089 = fcmp fast ogt float %3084, 0x3FE0101020000000
  %3090 = select i1 %3089, float 1.000000e+00, float 0.000000e+00
  %3091 = select i1 %3088, float %3090, float %3084
  %3092 = fmul fast float %3091, %3072
  br label %3093

; <label>:3093                                    ; preds = %3077, %3071
  %3094 = phi float [ %3092, %3077 ], [ %3072, %3071 ]
  %3095 = fcmp fast ult float %3094, 0x3F70101020000000
  br i1 %3095, label %3749, label %3096

; <label>:3096                                    ; preds = %3093
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 16
  %3100 = icmp eq i32 %3099, 0
  br i1 %3100, label %3299, label %3101

; <label>:3101                                    ; preds = %3096
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = add i32 %33, 372
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = add i32 %3106, 0
  %3108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3108, %dx.types.Handle %57, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = extractvalue %dx.types.ResRet.f32 %3109, 1
  %3112 = extractvalue %dx.types.ResRet.f32 %3109, 2
  %3113 = extractvalue %dx.types.ResRet.f32 %3109, 3
  %3114 = and i32 %3103, 255
  %3115 = uitofp i32 %3114 to float
  %3116 = lshr i32 %3103, 8
  %3117 = and i32 %3116, 255
  %3118 = uitofp i32 %3117 to float
  %3119 = fmul fast float %3113, %3115
  %3120 = fadd fast float %3119, %3118
  %3121 = fmul fast float %3120, 0x3F70101000000000
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 512
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3134, label %3126

; <label>:3126                                    ; preds = %3101
  %3127 = add i32 %33, 452
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %58, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  br label %3134

; <label>:3134                                    ; preds = %3126, %3101
  %3135 = phi float [ %3133, %3126 ], [ 1.000000e+00, %3101 ]
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 33554432
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3246, label %3140

; <label>:3140                                    ; preds = %3134
  %3141 = add i32 %33, 272
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 65535
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = lshr i32 %3143, 16
  %3147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3146)  ; LegacyF16ToF32(value)
  %3148 = add i32 %33, 276
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 65535
  %3152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3151)  ; LegacyF16ToF32(value)
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = lshr i32 %3154, 24
  %3156 = uitofp i32 %3155 to float
  %3157 = fmul fast float %3156, 0x3F70101020000000
  %3158 = and i32 %3154, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3159, 0x3F70101020000000
  %3161 = lshr i32 %3154, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3163, 0x3F70101020000000
  %3165 = lshr i32 %3154, 16
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = add i32 %33, 268
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = lshr i32 %3171, 24
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 0x3F70101020000000
  %3175 = and i32 %3171, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101020000000
  %3178 = lshr i32 %3171, 8
  %3179 = and i32 %3178, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = fmul fast float %3180, 0x3F70101020000000
  %3182 = lshr i32 %3171, 16
  %3183 = and i32 %3182, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = bitcast float %3110 to i32
  %3187 = ashr i32 %3186, 1
  %3188 = sub nsw i32 1597463174, %3187
  %3189 = bitcast i32 %3188 to float
  %3190 = fmul fast float %3110, 5.000000e-01
  %3191 = fmul fast float %3189, %3189
  %3192 = fmul fast float %3191, %3190
  %3193 = fsub fast float 1.500000e+00, %3192
  %3194 = fmul fast float %3189, %3110
  %3195 = fmul fast float %3194, %3193
  %3196 = bitcast float %3111 to i32
  %3197 = ashr i32 %3196, 1
  %3198 = sub nsw i32 1597463174, %3197
  %3199 = bitcast i32 %3198 to float
  %3200 = fmul fast float %3111, 5.000000e-01
  %3201 = fmul fast float %3199, %3199
  %3202 = fmul fast float %3201, %3200
  %3203 = fsub fast float 1.500000e+00, %3202
  %3204 = fmul fast float %3199, %3111
  %3205 = fmul fast float %3204, %3203
  %3206 = bitcast float %3112 to i32
  %3207 = ashr i32 %3206, 1
  %3208 = sub nsw i32 1597463174, %3207
  %3209 = bitcast i32 %3208 to float
  %3210 = fmul fast float %3112, 5.000000e-01
  %3211 = fmul fast float %3209, %3209
  %3212 = fmul fast float %3211, %3210
  %3213 = fsub fast float 1.500000e+00, %3212
  %3214 = fmul fast float %3209, %3112
  %3215 = fmul fast float %3214, %3213
  %3216 = fsub fast float %3195, %3177
  %3217 = fsub fast float %3205, %3181
  %3218 = fsub fast float %3215, %3185
  %3219 = fmul fast float %3216, %3145
  %3220 = fmul fast float %3217, %3147
  %3221 = fmul fast float %3218, %3152
  %3222 = fadd fast float %3219, %3160
  %3223 = fadd fast float %3220, %3164
  %3224 = fadd fast float %3221, %3168
  %3225 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3226 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3228 = fmul fast float %3225, %3225
  %3229 = fmul fast float %3226, %3226
  %3230 = fmul fast float %3227, %3227
  %3231 = fsub fast float %3228, %3110
  %3232 = fsub fast float %3229, %3111
  %3233 = fsub fast float %3230, %3112
  %3234 = fmul fast float %3231, %3135
  %3235 = fmul fast float %3232, %3135
  %3236 = fmul fast float %3233, %3135
  %3237 = fadd fast float %3234, %3110
  %3238 = fadd fast float %3235, %3111
  %3239 = fadd fast float %3236, %3112
  %3240 = fadd fast float %3157, %3121
  %3241 = fsub fast float %3240, %3174
  %3242 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3243 = fsub fast float %3242, %3121
  %3244 = fmul fast float %3243, %3135
  %3245 = fadd fast float %3244, %3121
  br label %3299

; <label>:3246                                    ; preds = %3134
  %3247 = and i32 %3137, 134217728
  %3248 = icmp eq i32 %3247, 0
  br i1 %3248, label %3283, label %3249

; <label>:3249                                    ; preds = %3246
  %3250 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %3251 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %3252 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %3253 = fadd fast float %3250, -5.000000e-01
  %3254 = fadd fast float %3251, -5.000000e-01
  %3255 = fadd fast float %3252, -5.000000e-01
  %3256 = fmul fast float %3253, %3135
  %3257 = fmul fast float %3254, %3135
  %3258 = fmul fast float %3255, %3135
  %3259 = fadd fast float %3256, 5.000000e-01
  %3260 = fadd fast float %3257, 5.000000e-01
  %3261 = fadd fast float %3258, 5.000000e-01
  %3262 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3264 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3265 = fmul fast float %3259, 2.000000e+00
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3266, %3262
  %3268 = fadd fast float %3267, %3265
  %3269 = fmul fast float %3268, %3262
  %3270 = fmul fast float %3260, 2.000000e+00
  %3271 = fsub fast float 1.000000e+00, %3270
  %3272 = fmul fast float %3271, %3263
  %3273 = fadd fast float %3272, %3270
  %3274 = fmul fast float %3273, %3263
  %3275 = fmul fast float %3261, 2.000000e+00
  %3276 = fsub fast float 1.000000e+00, %3275
  %3277 = fmul fast float %3276, %3264
  %3278 = fadd fast float %3277, %3275
  %3279 = fmul fast float %3278, %3264
  %3280 = fmul fast float %3269, %3269
  %3281 = fmul fast float %3274, %3274
  %3282 = fmul fast float %3279, %3279
  br label %3299

; <label>:3283                                    ; preds = %3246
  %3284 = fmul fast float %302, %302
  %3285 = fmul fast float %306, %306
  %3286 = fmul fast float %310, %310
  %3287 = fadd fast float %3284, -1.000000e+00
  %3288 = fadd fast float %3285, -1.000000e+00
  %3289 = fadd fast float %3286, -1.000000e+00
  %3290 = fmul fast float %3135, %3287
  %3291 = fmul fast float %3135, %3288
  %3292 = fmul fast float %3135, %3289
  %3293 = fadd fast float %3290, 1.000000e+00
  %3294 = fadd fast float %3291, 1.000000e+00
  %3295 = fadd fast float %3292, 1.000000e+00
  %3296 = fmul fast float %3293, %3110
  %3297 = fmul fast float %3294, %3111
  %3298 = fmul fast float %3295, %3112
  br label %3299

; <label>:3299                                    ; preds = %3283, %3249, %3140, %3096
  %3300 = phi float [ %3245, %3140 ], [ %3121, %3249 ], [ %3121, %3283 ], [ 0x3FA23C0BE0000000, %3096 ]
  %3301 = phi float [ %3237, %3140 ], [ %3280, %3249 ], [ %3296, %3283 ], [ 1.000000e+00, %3096 ]
  %3302 = phi float [ %3238, %3140 ], [ %3281, %3249 ], [ %3297, %3283 ], [ 1.000000e+00, %3096 ]
  %3303 = phi float [ %3239, %3140 ], [ %3282, %3249 ], [ %3298, %3283 ], [ 1.000000e+00, %3096 ]
  %3304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.i32 %3304, 1
  %3306 = and i32 %3305, 1
  %3307 = icmp ne i32 %3306, 0
  %3308 = add i32 %33, 356
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 32
  %3312 = icmp ne i32 %3311, 0
  %3313 = and i1 %3307, %3312
  %3314 = select i1 %3313, float 1.000000e+00, float %3301
  %3315 = select i1 %3313, float 0x3FD3333340000000, float %3302
  %3316 = select i1 %3313, float 0x3FD3333340000000, float %3303
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 32
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3393, label %3321

; <label>:3321                                    ; preds = %3299
  %3322 = add i32 %33, 140
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %33, 388
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = add i32 %3327, 0
  %3329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3329, %dx.types.Handle %57, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = extractvalue %dx.types.ResRet.f32 %3330, 3
  %3335 = and i32 %3324, 255
  %3336 = uitofp i32 %3335 to float
  %3337 = lshr i32 %3324, 8
  %3338 = and i32 %3337, 255
  %3339 = uitofp i32 %3338 to float
  %3340 = lshr i32 %3324, 16
  %3341 = and i32 %3340, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101000000000
  %3344 = fmul fast float %3331, %3336
  %3345 = fadd fast float %3344, %3339
  %3346 = fmul fast float %3345, 0x3F70101000000000
  %3347 = fadd fast float %3332, -5.000000e-01
  %3348 = fadd fast float %3334, -5.000000e-01
  %3349 = fmul fast float %3347, %3343
  %3350 = fmul fast float %3348, %3343
  %3351 = fadd fast float %3349, 5.000000e-01
  %3352 = fadd fast float %3350, 5.000000e-01
  %3353 = fmul fast float %3351, 2.000000e+00
  %3354 = fadd fast float %3353, -1.000000e+00
  %3355 = fmul fast float %3352, 2.000000e+00
  %3356 = fadd fast float %3355, -1.000000e+00
  %3357 = fadd fast float %3354, %3356
  %3358 = fmul fast float %3357, 5.000000e-01
  %3359 = fsub fast float %3354, %3356
  %3360 = fmul fast float %3359, 5.000000e-01
  %3361 = call float @dx.op.unary.f32(i32 6, float %3358)  ; FAbs(value)
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = call float @dx.op.unary.f32(i32 6, float %3360)  ; FAbs(value)
  %3364 = fsub fast float %3362, %3363
  %3365 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3360, float %3364, float %3358, float %3360, float %3364)  ; Dot3(ax,ay,az,bx,by,bz)
  %3366 = call float @dx.op.unary.f32(i32 25, float %3365)  ; Rsqrt(value)
  %3367 = fmul fast float %3358, %3366
  %3368 = fmul fast float %3360, %3366
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = and i32 %3370, 67108864
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3389, label %3373

; <label>:3373                                    ; preds = %3321
  %3374 = add i32 %33, 328
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 65535
  %3378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3377)  ; LegacyF16ToF32(value)
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = and i32 %3380, 65535
  %3382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3381)  ; LegacyF16ToF32(value)
  %3383 = lshr i32 %3376, 16
  %3384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3383)  ; LegacyF16ToF32(value)
  %3385 = fsub fast float %3346, %3384
  %3386 = fmul fast float %3385, %3378
  %3387 = fadd fast float %3386, %3382
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  br label %3389

; <label>:3389                                    ; preds = %3373, %3321
  %3390 = phi float [ %3388, %3373 ], [ %3346, %3321 ]
  %3391 = call float @dx.op.dot2.f32(i32 54, float %3367, float %3368, float %2810, float %2811)  ; Dot2(ax,ay,bx,by)
  %3392 = call float @dx.op.dot2.f32(i32 54, float %3367, float %3368, float %2812, float %2813)  ; Dot2(ax,ay,bx,by)
  br label %3393

; <label>:3393                                    ; preds = %3389, %3299
  %3394 = phi float [ %3390, %3389 ], [ 0x3FD6666660000000, %3299 ]
  %3395 = phi float [ %3391, %3389 ], [ 0.000000e+00, %3299 ]
  %3396 = phi float [ %3392, %3389 ], [ 0.000000e+00, %3299 ]
  %3397 = phi float [ %3333, %3389 ], [ 1.000000e+00, %3299 ]
  %3398 = add i32 %33, 208
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = lshr i32 %3400, 22
  %3402 = shl nuw nsw i32 %3401, 5
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 64
  %3407 = icmp eq i32 %3406, 0
  br i1 %3407, label %3441, label %3408

; <label>:3408                                    ; preds = %3393
  %3409 = add i32 %33, 404
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = add i32 %3411, 0
  %3413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 131072
  %3417 = icmp eq i32 %3416, 0
  %3418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3413, %dx.types.Handle %57, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = fmul fast float %3419, %290
  %3423 = fmul fast float %3420, %293
  %3424 = fmul fast float %3421, %296
  br i1 %3417, label %3431, label %3425

; <label>:3425                                    ; preds = %3408
  %3426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.f32 %3426, 0
  %3428 = fmul fast float %3427, %3422
  %3429 = fmul fast float %3427, %3423
  %3430 = fmul fast float %3427, %3424
  br label %3431

; <label>:3431                                    ; preds = %3425, %3408
  %3432 = phi float [ %3428, %3425 ], [ %3422, %3408 ]
  %3433 = phi float [ %3429, %3425 ], [ %3423, %3408 ]
  %3434 = phi float [ %3430, %3425 ], [ %3424, %3408 ]
  %3435 = fmul fast float %3432, %3403
  %3436 = select i1 %158, float %3435, float %3432
  %3437 = call float @dx.op.dot3.f32(i32 55, float %3436, float %3433, float %3434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = select i1 %158, float 0.000000e+00, float %3432
  %3439 = select i1 %158, float %3437, float %3433
  %3440 = select i1 %158, float 0.000000e+00, float %3434
  br label %3441

; <label>:3441                                    ; preds = %3431, %3393
  %3442 = phi float [ %3438, %3431 ], [ 0.000000e+00, %3393 ]
  %3443 = phi float [ %3439, %3431 ], [ 0.000000e+00, %3393 ]
  %3444 = phi float [ %3440, %3431 ], [ 0.000000e+00, %3393 ]
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 1024
  %3448 = icmp eq i32 %3447, 0
  br i1 %3448, label %3479, label %3449

; <label>:3449                                    ; preds = %3441
  %3450 = add i32 %33, 200
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 255
  %3454 = uitofp i32 %3453 to float
  %3455 = fmul fast float %3454, 0x3F70101020000000
  %3456 = lshr i32 %3452, 8
  %3457 = and i32 %3456, 255
  %3458 = uitofp i32 %3457 to float
  %3459 = fmul fast float %3458, 0x3F70101020000000
  %3460 = lshr i32 %3452, 16
  %3461 = and i32 %3460, 255
  %3462 = uitofp i32 %3461 to float
  %3463 = fmul fast float %3462, 0x3F70101020000000
  %3464 = fmul fast float %3455, %3455
  %3465 = fmul fast float %3459, %3459
  %3466 = fmul fast float %3463, %3463
  %3467 = add i32 %33, 468
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %3469, 0
  %3471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3471, %dx.types.Handle %58, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = fmul fast float %3464, %3473
  %3477 = fmul fast float %3465, %3474
  %3478 = fmul fast float %3466, %3475
  br label %3479

; <label>:3479                                    ; preds = %3449, %3441
  %3480 = phi float [ %3476, %3449 ], [ 0.000000e+00, %3441 ]
  %3481 = phi float [ %3477, %3449 ], [ 0.000000e+00, %3441 ]
  %3482 = phi float [ %3478, %3449 ], [ 0.000000e+00, %3441 ]
  %3483 = fcmp fast ogt float %3480, 0.000000e+00
  %3484 = fcmp fast ogt float %3481, 0.000000e+00
  %3485 = fcmp fast ogt float %3482, 0.000000e+00
  %3486 = call float @dx.op.unary.f32(i32 23, float %3480)  ; Log(value)
  %3487 = call float @dx.op.unary.f32(i32 23, float %3481)  ; Log(value)
  %3488 = call float @dx.op.unary.f32(i32 23, float %3482)  ; Log(value)
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = lshr i32 %3490, 7
  %3492 = and i32 %3491, 32752
  %3493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3492)  ; LegacyF16ToF32(value)
  %3494 = fmul fast float %3486, 0xBFE62E4300000000
  %3495 = fmul fast float %3494, %3493
  %3496 = fmul fast float %3487, 0xBFE62E4300000000
  %3497 = fmul fast float %3496, %3493
  %3498 = fmul fast float %3488, 0xBFE62E4300000000
  %3499 = fmul fast float %3498, %3493
  %3500 = select i1 %3483, float %3495, float 1.270000e+02
  %3501 = select i1 %3484, float %3497, float 1.270000e+02
  %3502 = select i1 %3485, float %3499, float 1.270000e+02
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 10240
  %3506 = icmp eq i32 %3505, 0
  br i1 %3506, label %3527, label %3507

; <label>:3507                                    ; preds = %3479
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 2048
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3527, label %3512

; <label>:3512                                    ; preds = %3507
  %3513 = add i32 %33, 484
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = add i32 %3515, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3517, %dx.types.Handle %58, float %2906, float %2907, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = shl i32 %3521, 4
  %3523 = and i32 %3522, 32752
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = fmul fast float %3524, %3519
  %3526 = call float @dx.op.binary.f32(i32 35, float %3525, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3527

; <label>:3527                                    ; preds = %3512, %3507, %3479
  %3528 = phi float [ %3526, %3512 ], [ 0x3F70101020000000, %3507 ], [ 0x3F70101020000000, %3479 ]
  %3529 = add i32 %33, 144
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = lshr i32 %3531, 8
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3314, float %3315, float %3316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = fmul fast float %3536, %3537
  %3539 = fadd fast float %3538, %3533
  %3540 = fmul fast float %3539, 0x3F70101020000000
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  br i1 %2798, label %3542, label %3577

; <label>:3542                                    ; preds = %3527
  %3543 = fmul fast float %3528, 2.000000e+00
  %3544 = fcmp fast olt float %3500, 1.270000e+02
  %3545 = fcmp fast olt float %3501, 1.270000e+02
  %3546 = fcmp fast olt float %3502, 1.270000e+02
  %3547 = fmul fast float %3500, 0xBFF7154760000000
  %3548 = fmul fast float %3547, %3543
  %3549 = fmul fast float %3501, 0xBFF7154760000000
  %3550 = fmul fast float %3549, %3543
  %3551 = fmul fast float %3502, 0xBFF7154760000000
  %3552 = fmul fast float %3551, %3543
  %3553 = call float @dx.op.unary.f32(i32 21, float %3548)  ; Exp(value)
  %3554 = call float @dx.op.unary.f32(i32 21, float %3550)  ; Exp(value)
  %3555 = call float @dx.op.unary.f32(i32 21, float %3552)  ; Exp(value)
  %3556 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  %3557 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3559 = fadd fast float %3556, -1.000000e+00
  %3560 = select i1 %3544, float %3559, float -1.000000e+00
  %3561 = fadd fast float %3557, -1.000000e+00
  %3562 = select i1 %3545, float %3561, float -1.000000e+00
  %3563 = fadd fast float %3558, -1.000000e+00
  %3564 = select i1 %3546, float %3563, float -1.000000e+00
  %3565 = fmul fast float %3560, %3094
  %3566 = fmul fast float %3562, %3094
  %3567 = fmul fast float %3564, %3094
  %3568 = fadd fast float %3565, 1.000000e+00
  %3569 = fadd fast float %3566, 1.000000e+00
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fmul fast float %3568, %2790
  %3572 = fmul fast float %3569, %2791
  %3573 = fmul fast float %3570, %2792
  %3574 = fmul fast float %3568, %2787
  %3575 = fmul fast float %3569, %2788
  %3576 = fmul fast float %3570, %2789
  br label %3577

; <label>:3577                                    ; preds = %3542, %3527
  %3578 = phi float [ %3574, %3542 ], [ %2787, %3527 ]
  %3579 = phi float [ %3575, %3542 ], [ %2788, %3527 ]
  %3580 = phi float [ %3576, %3542 ], [ %2789, %3527 ]
  %3581 = phi float [ %3571, %3542 ], [ %2790, %3527 ]
  %3582 = phi float [ %3572, %3542 ], [ %2791, %3527 ]
  %3583 = phi float [ %3573, %3542 ], [ %2792, %3527 ]
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = and i32 %3585, 3
  %3587 = icmp eq i32 %3586, 3
  br i1 %3587, label %3666, label %3588

; <label>:3588                                    ; preds = %3577
  %3589 = and i32 %3585, 16
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3094, float 0.000000e+00
  %3592 = icmp eq i32 %3586, 0
  br i1 %3592, label %3593, label %3621

; <label>:3593                                    ; preds = %3588
  %3594 = and i32 %3585, 64
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3094, float 0.000000e+00
  %3597 = fsub fast float %3314, %3581
  %3598 = fsub fast float %3315, %3582
  %3599 = fsub fast float %3316, %3583
  %3600 = fmul fast float %3591, %3597
  %3601 = fmul fast float %3591, %3598
  %3602 = fmul fast float %3591, %3599
  %3603 = fadd fast float %3600, %3581
  %3604 = fadd fast float %3601, %3582
  %3605 = fadd fast float %3602, %3583
  %3606 = fsub fast float %3300, %2793
  %3607 = fmul fast float %3591, %3606
  %3608 = fadd fast float %3607, %2793
  %3609 = fsub fast float %3442, %3578
  %3610 = fsub fast float %3443, %3579
  %3611 = fsub fast float %3444, %3580
  %3612 = fmul fast float %3596, %3609
  %3613 = fmul fast float %3596, %3610
  %3614 = fmul fast float %3596, %3611
  %3615 = fadd fast float %3612, %3578
  %3616 = fadd fast float %3613, %3579
  %3617 = fadd fast float %3614, %3580
  %3618 = fsub fast float %3541, %2796
  %3619 = fmul fast float %3591, %3618
  %3620 = fadd fast float %3619, %2796
  br label %3666

; <label>:3621                                    ; preds = %3588
  %3622 = icmp eq i32 %3586, 1
  br i1 %3622, label %3623, label %3636

; <label>:3623                                    ; preds = %3621
  %3624 = fadd fast float %3314, -1.000000e+00
  %3625 = fadd fast float %3315, -1.000000e+00
  %3626 = fadd fast float %3316, -1.000000e+00
  %3627 = fmul fast float %3591, %3624
  %3628 = fmul fast float %3591, %3625
  %3629 = fmul fast float %3591, %3626
  %3630 = fadd fast float %3627, 1.000000e+00
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fmul fast float %3630, %3581
  %3634 = fmul fast float %3631, %3582
  %3635 = fmul fast float %3632, %3583
  br label %3666

; <label>:3636                                    ; preds = %3621
  %3637 = icmp eq i32 %3586, 2
  br i1 %3637, label %3638, label %3666

; <label>:3638                                    ; preds = %3636
  %3639 = call float @dx.op.unary.f32(i32 24, float %3314)  ; Sqrt(value)
  %3640 = call float @dx.op.unary.f32(i32 24, float %3315)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
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
  %3653 = fmul fast float %3652, %3581
  %3654 = fadd fast float %3653, %3651
  %3655 = fmul fast float %3654, %3581
  %3656 = fmul fast float %3649, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3582
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3582
  %3661 = fmul fast float %3650, 2.000000e+00
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3662, %3583
  %3664 = fadd fast float %3663, %3661
  %3665 = fmul fast float %3664, %3583
  br label %3666

; <label>:3666                                    ; preds = %3638, %3636, %3623, %3593, %3577
  %3667 = phi float [ %3578, %3577 ], [ %3578, %3638 ], [ %3578, %3636 ], [ %3578, %3623 ], [ %3615, %3593 ]
  %3668 = phi float [ %3579, %3577 ], [ %3579, %3638 ], [ %3579, %3636 ], [ %3579, %3623 ], [ %3616, %3593 ]
  %3669 = phi float [ %3580, %3577 ], [ %3580, %3638 ], [ %3580, %3636 ], [ %3580, %3623 ], [ %3617, %3593 ]
  %3670 = phi float [ %3581, %3577 ], [ %3655, %3638 ], [ %3581, %3636 ], [ %3633, %3623 ], [ %3603, %3593 ]
  %3671 = phi float [ %3582, %3577 ], [ %3660, %3638 ], [ %3582, %3636 ], [ %3634, %3623 ], [ %3604, %3593 ]
  %3672 = phi float [ %3583, %3577 ], [ %3665, %3638 ], [ %3583, %3636 ], [ %3635, %3623 ], [ %3605, %3593 ]
  %3673 = phi float [ %2793, %3577 ], [ %2793, %3638 ], [ %2793, %3636 ], [ %2793, %3623 ], [ %3608, %3593 ]
  %3674 = phi float [ %2796, %3577 ], [ %2796, %3638 ], [ %2796, %3636 ], [ %2796, %3623 ], [ %3620, %3593 ]
  %3675 = and i32 %3585, 12
  %3676 = icmp eq i32 %3675, 12
  br i1 %3676, label %3749, label %3677

; <label>:3677                                    ; preds = %3666
  %3678 = and i32 %3585, 2097184
  %3679 = icmp eq i32 %3678, 2097184
  %3680 = select i1 %3679, float %3094, float 0.000000e+00
  %3681 = and i32 %3585, 4194336
  %3682 = icmp eq i32 %3681, 4194336
  %3683 = select i1 %3682, float %3094, float 0.000000e+00
  %3684 = and i32 %3585, 8388640
  %3685 = icmp eq i32 %3684, 8388640
  %3686 = select i1 %3685, float %3094, float 0.000000e+00
  %3687 = icmp eq i32 %3675, 0
  br i1 %3687, label %3688, label %3701

; <label>:3688                                    ; preds = %3677
  %3689 = fsub fast float %3395, %2785
  %3690 = fsub fast float %3396, %2786
  %3691 = fmul fast float %3680, %3689
  %3692 = fmul fast float %3680, %3690
  %3693 = fadd fast float %3691, %2785
  %3694 = fadd fast float %3692, %2786
  %3695 = fsub fast float %3397, %2795
  %3696 = fmul fast float %3683, %3695
  %3697 = fadd fast float %3696, %2795
  %3698 = fsub fast float %3394, %2794
  %3699 = fmul fast float %3686, %3698
  %3700 = fadd fast float %3699, %2794
  br label %3749

; <label>:3701                                    ; preds = %3677
  %3702 = icmp eq i32 %3675, 4
  br i1 %3702, label %3703, label %3735

; <label>:3703                                    ; preds = %3701
  %3704 = fmul fast float %3680, %3395
  %3705 = fmul fast float %3680, %3396
  %3706 = fadd fast float %3704, %2785
  %3707 = fadd fast float %3705, %2786
  %3708 = call float @dx.op.binary.f32(i32 36, float %2795, float %3397)  ; FMin(a,b)
  %3709 = fsub fast float %3708, %2795
  %3710 = fmul fast float %3709, %3683
  %3711 = fadd fast float %3710, %2795
  %3712 = fadd fast float %3394, %2794
  %3713 = fmul fast float %3712, 0x3FF337FAE0000000
  %3714 = fmul fast float %2794, %2794
  %3715 = fmul fast float %3394, %3394
  %3716 = fadd fast float %3715, %3714
  %3717 = fmul fast float %3716, 0x3FE5152B00000000
  %3718 = fmul fast float %2794, 0xBFCC1F85E0000000
  %3719 = fmul fast float %3718, %3394
  %3720 = fadd fast float %3719, 0xBFE1363700000000
  %3721 = fadd fast float %3720, %3713
  %3722 = fsub fast float %3721, %3717
  %3723 = fmul fast float %3712, 0x3FBA6F0D00000000
  %3724 = fmul fast float %3716, 0x3FD0432880000000
  %3725 = fmul fast float %2794, 0xBFEF110800000000
  %3726 = fmul fast float %3725, %3394
  %3727 = fadd fast float %3726, 1.000000e+00
  %3728 = fsub fast float %3727, %3723
  %3729 = fadd fast float %3728, %3724
  %3730 = fdiv fast float %3722, %3729
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fsub fast float %3731, %2794
  %3733 = fmul fast float %3732, %3686
  %3734 = fadd fast float %3733, %2794
  br label %3749

; <label>:3735                                    ; preds = %3701
  %3736 = icmp eq i32 %3675, 8
  br i1 %3736, label %3737, label %3749

; <label>:3737                                    ; preds = %3735
  %3738 = fmul fast float %3680, %3395
  %3739 = fmul fast float %3680, %3396
  %3740 = fadd fast float %3738, %2785
  %3741 = fadd fast float %3739, %2786
  %3742 = call float @dx.op.binary.f32(i32 36, float %2795, float %3397)  ; FMin(a,b)
  %3743 = fsub fast float %3742, %2795
  %3744 = fmul fast float %3743, %3683
  %3745 = fadd fast float %3744, %2795
  %3746 = fsub fast float %3394, %2794
  %3747 = fmul fast float %3686, %3746
  %3748 = fadd fast float %3747, %2794
  br label %3749

; <label>:3749                                    ; preds = %3737, %3735, %3703, %3688, %3666, %3093, %2797, %2784
  %3750 = phi float [ %2785, %3666 ], [ %2785, %3093 ], [ %2785, %2784 ], [ %2785, %2797 ], [ %3693, %3688 ], [ %3706, %3703 ], [ %2785, %3735 ], [ %3740, %3737 ]
  %3751 = phi float [ %2786, %3666 ], [ %2786, %3093 ], [ %2786, %2784 ], [ %2786, %2797 ], [ %3694, %3688 ], [ %3707, %3703 ], [ %2786, %3735 ], [ %3741, %3737 ]
  %3752 = phi float [ %3667, %3666 ], [ %2787, %3093 ], [ %2787, %2784 ], [ %2787, %2797 ], [ %3667, %3688 ], [ %3667, %3703 ], [ %3667, %3735 ], [ %3667, %3737 ]
  %3753 = phi float [ %3668, %3666 ], [ %2788, %3093 ], [ %2788, %2784 ], [ %2788, %2797 ], [ %3668, %3688 ], [ %3668, %3703 ], [ %3668, %3735 ], [ %3668, %3737 ]
  %3754 = phi float [ %3669, %3666 ], [ %2789, %3093 ], [ %2789, %2784 ], [ %2789, %2797 ], [ %3669, %3688 ], [ %3669, %3703 ], [ %3669, %3735 ], [ %3669, %3737 ]
  %3755 = phi float [ %3670, %3666 ], [ %2790, %3093 ], [ %2790, %2784 ], [ %2790, %2797 ], [ %3670, %3688 ], [ %3670, %3703 ], [ %3670, %3735 ], [ %3670, %3737 ]
  %3756 = phi float [ %3671, %3666 ], [ %2791, %3093 ], [ %2791, %2784 ], [ %2791, %2797 ], [ %3671, %3688 ], [ %3671, %3703 ], [ %3671, %3735 ], [ %3671, %3737 ]
  %3757 = phi float [ %3672, %3666 ], [ %2792, %3093 ], [ %2792, %2784 ], [ %2792, %2797 ], [ %3672, %3688 ], [ %3672, %3703 ], [ %3672, %3735 ], [ %3672, %3737 ]
  %3758 = phi float [ %3673, %3666 ], [ %2793, %3093 ], [ %2793, %2784 ], [ %2793, %2797 ], [ %3673, %3688 ], [ %3673, %3703 ], [ %3673, %3735 ], [ %3673, %3737 ]
  %3759 = phi float [ %2794, %3666 ], [ %2794, %3093 ], [ %2794, %2784 ], [ %2794, %2797 ], [ %3700, %3688 ], [ %3734, %3703 ], [ %2794, %3735 ], [ %3748, %3737 ]
  %3760 = phi float [ %2795, %3666 ], [ %2795, %3093 ], [ %2795, %2784 ], [ %2795, %2797 ], [ %3697, %3688 ], [ %3711, %3703 ], [ %2795, %3735 ], [ %3745, %3737 ]
  %3761 = phi float [ %3674, %3666 ], [ %2796, %3093 ], [ %2796, %2784 ], [ %2796, %2797 ], [ %3674, %3688 ], [ %3674, %3703 ], [ %3674, %3735 ], [ %3674, %3737 ]
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = call float @dx.op.dot2.f32(i32 54, float %3750, float %3751, float %3750, float %3751)  ; Dot2(ax,ay,bx,by)
  %3765 = fmul fast float %3764, 0x3FE3333340000000
  %3766 = fsub fast float 1.000000e+00, %3765
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3766, float %3750, float %3751, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = call float @dx.op.unary.f32(i32 25, float %3767)  ; Rsqrt(value)
  %3769 = fmul fast float %3768, %3750
  %3770 = fmul fast float %3768, %3751
  %3771 = fmul fast float %3766, %3768
  %3772 = fmul fast float %3771, %68
  %3773 = fmul fast float %3771, %69
  %3774 = fmul fast float %3771, %70
  %3775 = fmul fast float %3769, %42
  %3776 = fmul fast float %3769, %43
  %3777 = fmul fast float %3769, %44
  %3778 = fadd fast float %3772, %3775
  %3779 = fadd fast float %3773, %3776
  %3780 = fadd fast float %3774, %3777
  %3781 = fmul fast float %80, %3770
  %3782 = fmul fast float %81, %3770
  %3783 = fmul fast float %82, %3770
  %3784 = fadd fast float %3778, %3781
  %3785 = fadd fast float %3779, %3782
  %3786 = fadd fast float %3780, %3783
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3786, float %3784, float %3785, float %3786)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = call float @dx.op.unary.f32(i32 25, float %3787)  ; Rsqrt(value)
  %3789 = fmul fast float %3784, %3788
  %3790 = fmul fast float %3785, %3788
  %3791 = fmul fast float %3786, %3788
  %3792 = and i32 %35, 1
  %3793 = icmp eq i32 %3792, 0
  br i1 %3793, label %3794, label %4302

; <label>:3794                                    ; preds = %3749
  %3795 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %3796 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %3797 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %3798 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %3799 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %3800 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %3801 = fadd fast float %3795, %116
  %3802 = fadd fast float %3796, %117
  %3803 = fadd fast float %3797, %118
  %3804 = fadd fast float %3798, %116
  %3805 = fadd fast float %3799, %117
  %3806 = fadd fast float %3800, %118
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 2
  %3813 = extractvalue %dx.types.CBufRet.f32 %3811, 3
  %3814 = fmul fast float %3808, %61
  %3815 = fmul fast float %3814, %3812
  %3816 = fmul fast float %3809, %62
  %3817 = fmul fast float %3816, %3813
  %3818 = fptoui float %3815 to i32
  %3819 = fptoui float %3817 to i32
  %3820 = fadd fast float %3808, -1.000000e+00
  %3821 = fadd fast float %3809, -1.000000e+00
  %3822 = fptoui float %3820 to i32
  %3823 = fptoui float %3821 to i32
  %3824 = call i32 @dx.op.binary.i32(i32 40, i32 %3818, i32 %3822)  ; UMin(a,b)
  %3825 = call i32 @dx.op.binary.i32(i32 40, i32 %3819, i32 %3823)  ; UMin(a,b)
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3829 = fmul fast float %3827, %56
  %3830 = fsub fast float %3829, %3828
  %3831 = fadd fast float %3810, -1.000000e+00
  %3832 = call float @dx.op.binary.f32(i32 36, float %3830, float %3831)  ; FMin(a,b)
  %3833 = fptoui float %3832 to i32
  %3834 = fptoui float %3808 to i32
  %3835 = fptoui float %3809 to i32
  %3836 = mul i32 %3833, %3835
  %3837 = add i32 %3836, %3825
  %3838 = mul i32 %3837, %3834
  %3839 = add i32 %3838, %3824
  %3840 = shl i32 %3839, 2
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 1023
  %3844 = lshr i32 %3842, 10
  %3845 = icmp eq i32 %3843, 0
  br i1 %3845, label %4271, label %3846

; <label>:3846                                    ; preds = %3794
  %3847 = and i32 %3842, 1023
  br label %3848

; <label>:3848                                    ; preds = %3974, %3846
  %3849 = phi i32 [ %3924, %3974 ], [ 0, %3846 ]
  %3850 = phi float [ %3975, %3974 ], [ 0.000000e+00, %3846 ]
  %3851 = phi float [ %3976, %3974 ], [ %3763, %3846 ]
  %3852 = phi float [ %3977, %3974 ], [ %3761, %3846 ]
  %3853 = phi float [ %3978, %3974 ], [ 0.000000e+00, %3846 ]
  %3854 = phi float [ %3979, %3974 ], [ 0.000000e+00, %3846 ]
  %3855 = phi float [ %3980, %3974 ], [ %3752, %3846 ]
  %3856 = phi float [ %3981, %3974 ], [ %3753, %3846 ]
  %3857 = phi float [ %3982, %3974 ], [ %3754, %3846 ]
  %3858 = phi float [ %3983, %3974 ], [ %3789, %3846 ]
  %3859 = phi float [ %3984, %3974 ], [ %3790, %3846 ]
  %3860 = phi float [ %3985, %3974 ], [ %3791, %3846 ]
  %3861 = phi float [ %3986, %3974 ], [ %3760, %3846 ]
  %3862 = phi float [ %3987, %3974 ], [ %3759, %3846 ]
  %3863 = phi float [ %3988, %3974 ], [ 0.000000e+00, %3846 ]
  %3864 = phi float [ %3989, %3974 ], [ %3758, %3846 ]
  %3865 = phi float [ %3990, %3974 ], [ %3755, %3846 ]
  %3866 = phi float [ %3991, %3974 ], [ %3756, %3846 ]
  %3867 = phi float [ %3992, %3974 ], [ %3757, %3846 ]
  %3868 = add nuw nsw i32 %3849, %3844
  %3869 = shl i32 %3868, 2
  %3870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.i32 %3870, 0
  %3872 = shl i32 %3871, 8
  %3873 = or i32 %3872, 48
  %3874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = or i32 %3872, 64
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.i32 %3880, 1
  %3883 = or i32 %3872, 80
  %3884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 2
  %3886 = extractvalue %dx.types.ResRet.f32 %3884, 3
  %3887 = or i32 %3872, 96
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = or i32 %3872, 112
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3896 = or i32 %3872, 128
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = or i32 %3872, 144
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = extractvalue %dx.types.ResRet.f32 %3903, 3
  %3908 = or i32 %3872, 160
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = or i32 %3872, 192
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = or i32 %3872, 208
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = or i32 %3872, 248
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = add nuw nsw i32 %3849, 1
  %3925 = bitcast float %3878 to i32
  %3926 = and i32 %3925, 512
  %3927 = icmp eq i32 %3926, 0
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3934 = or i32 %3872, 16
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %3940 = call float @dx.op.dot4.f32(i32 56, float %3936, float %3937, float %3938, float %3939, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3941 = or i32 %3872, 32
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3948 = call float @dx.op.unary.f32(i32 27, float %3933)  ; Round_ni(value)
  %3949 = call float @dx.op.unary.f32(i32 6, float %3948)  ; FAbs(value)
  %3950 = call float @dx.op.unary.f32(i32 27, float %3940)  ; Round_ni(value)
  %3951 = call float @dx.op.unary.f32(i32 6, float %3950)  ; FAbs(value)
  %3952 = call float @dx.op.unary.f32(i32 6, float %3947)  ; FAbs(value)
  %3953 = call float @dx.op.unary.f32(i32 27, float %3952)  ; Round_ni(value)
  %3954 = fadd fast float %3951, %3949
  %3955 = fadd fast float %3954, %3953
  %3956 = fcmp fast oeq float %3955, 0.000000e+00
  %3957 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %3801, float %3802, float %3803, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3958 = call float @dx.op.dot4.f32(i32 56, float %3936, float %3937, float %3938, float %3939, float %3801, float %3802, float %3803, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3959 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %3804, float %3805, float %3806, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3960 = call float @dx.op.dot4.f32(i32 56, float %3936, float %3937, float %3938, float %3939, float %3804, float %3805, float %3806, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3961 = fsub fast float %3957, %3933
  %3962 = fsub fast float %3959, %3933
  %3963 = fsub fast float %3958, %3940
  %3964 = fsub fast float %3960, %3940
  %3965 = call float @dx.op.dot3.f32(i32 55, float %3875, float %3876, float %3877, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3968 = fadd fast float %3967, %3965
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3971 = fcmp fast ogt float %3969, %3970
  %3972 = and i1 %3956, %3971
  %3973 = and i1 %3927, %3972
  br i1 %3973, label %3994, label %3974

; <label>:3974                                    ; preds = %4257, %4075, %3994, %3848
  %3975 = phi float [ %3850, %3994 ], [ %4078, %4075 ], [ %4078, %4257 ], [ %3850, %3848 ]
  %3976 = phi float [ %3851, %3994 ], [ %3851, %4075 ], [ %4232, %4257 ], [ %3851, %3848 ]
  %3977 = phi float [ %3852, %3994 ], [ %3852, %4075 ], [ %4230, %4257 ], [ %3852, %3848 ]
  %3978 = phi float [ %3853, %3994 ], [ %3853, %4075 ], [ %4202, %4257 ], [ %3853, %3848 ]
  %3979 = phi float [ %3854, %3994 ], [ %3854, %4075 ], [ %4200, %4257 ], [ %3854, %3848 ]
  %3980 = phi float [ %3855, %3994 ], [ %3855, %4075 ], [ %4267, %4257 ], [ %3855, %3848 ]
  %3981 = phi float [ %3856, %3994 ], [ %3856, %4075 ], [ %4268, %4257 ], [ %3856, %3848 ]
  %3982 = phi float [ %3857, %3994 ], [ %3857, %4075 ], [ %4269, %4257 ], [ %3857, %3848 ]
  %3983 = phi float [ %3858, %3994 ], [ %3858, %4075 ], [ %4181, %4257 ], [ %3858, %3848 ]
  %3984 = phi float [ %3859, %3994 ], [ %3859, %4075 ], [ %4182, %4257 ], [ %3859, %3848 ]
  %3985 = phi float [ %3860, %3994 ], [ %3860, %4075 ], [ %4183, %4257 ], [ %3860, %3848 ]
  %3986 = phi float [ %3861, %3994 ], [ %3861, %4075 ], [ %4210, %4257 ], [ %3861, %3848 ]
  %3987 = phi float [ %3862, %3994 ], [ %3862, %4075 ], [ %4207, %4257 ], [ %3862, %3848 ]
  %3988 = phi float [ %3863, %3994 ], [ %3863, %4075 ], [ %4204, %4257 ], [ %3863, %3848 ]
  %3989 = phi float [ %3864, %3994 ], [ %3864, %4075 ], [ %4198, %4257 ], [ %3864, %3848 ]
  %3990 = phi float [ %3865, %3994 ], [ %3865, %4075 ], [ %4193, %4257 ], [ %3865, %3848 ]
  %3991 = phi float [ %3866, %3994 ], [ %3866, %4075 ], [ %4194, %4257 ], [ %3866, %3848 ]
  %3992 = phi float [ %3867, %3994 ], [ %3867, %4075 ], [ %4195, %4257 ], [ %3867, %3848 ]
  %3993 = icmp eq i32 %3924, %3847
  br i1 %3993, label %4270, label %3848

; <label>:3994                                    ; preds = %3848
  %3995 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3996 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3884, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %4000 = extractvalue %dx.types.ResRet.i32 %3880, 3
  %4001 = extractvalue %dx.types.ResRet.i32 %3880, 2
  %4002 = add i32 %4000, 0
  %4003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4002, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4003, %dx.types.Handle %4004, float %3933, float %3940, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3962, float %3964, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = fmul fast float %4006, %3999
  %4008 = fadd fast float %4007, %3998
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fmul fast float %3933, %3889
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3940, float %4010)  ; FMad(a,b,c)
  %4012 = fadd fast float %4011, %3997
  %4013 = fmul fast float %3933, %3891
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3940, float %4013)  ; FMad(a,b,c)
  %4015 = fadd fast float %4014, %3996
  %4016 = fmul fast float %3961, %3889
  %4017 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3963, float %4016)  ; FMad(a,b,c)
  %4018 = fmul fast float %3961, %3891
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3963, float %4018)  ; FMad(a,b,c)
  %4020 = fmul fast float %3962, %3889
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3964, float %4020)  ; FMad(a,b,c)
  %4022 = fmul fast float %3962, %3891
  %4023 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3964, float %4022)  ; FMad(a,b,c)
  %4024 = add i32 %4001, 0
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4024, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4025, %dx.types.Handle %4004, float %4012, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %4017, float %4019, float undef, float %4021, float %4023, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = and i32 %3925, 1024
  %4029 = icmp ne i32 %4028, 0
  %4030 = fcmp fast ogt float %4027, 0x3FE0101020000000
  %4031 = uitofp i1 %4030 to float
  %4032 = select i1 %4029, float %4031, float %4027
  %4033 = and i32 %3925, 8192
  %4034 = icmp ne i32 %4033, 0
  %4035 = select i1 %4034, float %3995, float 1.000000e+00
  %4036 = fmul fast float %3933, 2.000000e+00
  %4037 = fadd fast float %4036, -1.000000e+00
  %4038 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4039 = fmul fast float %4038, %3922
  %4040 = fsub fast float %4039, %3922
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %3940, 2.000000e+00
  %4043 = fadd fast float %4042, -1.000000e+00
  %4044 = call float @dx.op.unary.f32(i32 6, float %4043)  ; FAbs(value)
  %4045 = fmul fast float %4044, %3923
  %4046 = fsub fast float %4045, %3923
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = fmul fast float %3952, %3885
  %4049 = fsub fast float %4048, %3885
  %4050 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4051 = fmul fast float %4009, %4035
  %4052 = fmul fast float %4051, %4006
  %4053 = fmul fast float %4052, %4041
  %4054 = fmul fast float %4053, %4032
  %4055 = fmul fast float %4054, %4047
  %4056 = fmul fast float %4055, %4050
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4057, 0
  %4060 = fsub fast float %3969, %4059
  %4061 = fmul fast float %4060, %4058
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %4056, %3886
  %4064 = fadd fast float %4056, %3886
  %4065 = fmul fast float %4064, %3895
  %4066 = fsub fast float %4065, %3895
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = and i32 %3925, 128
  %4069 = icmp ne i32 %4068, 0
  %4070 = select i1 %4069, float %4067, float %4063
  %4071 = fmul fast float %4070, %4062
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = fcmp fast ugt float %4071, %4073
  br i1 %4074, label %4075, label %3974

; <label>:4075                                    ; preds = %3994
  %4076 = select i1 %4034, float %4071, float 0.000000e+00
  %4077 = fadd fast float %4076, %3850
  %4078 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  br i1 %4034, label %3974, label %4079

; <label>:4079                                    ; preds = %4075
  %4080 = and i32 %3925, 4
  %4081 = and i32 %3925, 8
  %4082 = add i32 %3881, 0
  %4083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4082, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4085 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4083, %dx.types.Handle %4084, float %4012, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %4017, float %4019, float undef, float %4021, float %4023, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = extractvalue %dx.types.ResRet.f32 %4085, 1
  %4088 = extractvalue %dx.types.ResRet.f32 %4085, 2
  %4089 = extractvalue %dx.types.ResRet.f32 %4085, 3
  %4090 = bitcast float %3907 to i32
  %4091 = and i32 %4090, 255
  %4092 = uitofp i32 %4091 to float
  %4093 = lshr i32 %4090, 8
  %4094 = and i32 %4093, 255
  %4095 = uitofp i32 %4094 to float
  %4096 = fmul fast float %4089, %4092
  %4097 = fadd fast float %4096, %4095
  %4098 = fmul fast float %4097, 0x3F70101000000000
  %4099 = add i32 %3882, 0
  %4100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4099, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4100, %dx.types.Handle %4084, float %4012, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %4017, float %4019, float undef, float %4021, float %4023, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = extractvalue %dx.types.ResRet.f32 %4101, 3
  %4106 = bitcast float %3901 to i32
  %4107 = and i32 %4106, 255
  %4108 = uitofp i32 %4107 to float
  %4109 = lshr i32 %4106, 8
  %4110 = and i32 %4109, 255
  %4111 = uitofp i32 %4110 to float
  %4112 = lshr i32 %4106, 16
  %4113 = and i32 %4112, 255
  %4114 = uitofp i32 %4113 to float
  %4115 = fmul fast float %4114, 0x3F70101000000000
  %4116 = fmul fast float %4102, %4108
  %4117 = fadd fast float %4116, %4111
  %4118 = fmul fast float %4117, 0x3F70101000000000
  %4119 = fadd fast float %4103, -5.000000e-01
  %4120 = fadd fast float %4105, -5.000000e-01
  %4121 = fmul fast float %4119, %4115
  %4122 = fmul fast float %4120, %4115
  %4123 = fadd fast float %4121, 5.000000e-01
  %4124 = fadd fast float %4122, 5.000000e-01
  %4125 = fmul fast float %4086, %3910
  %4126 = fmul fast float %4087, %3911
  %4127 = fmul fast float %4088, %3912
  %4128 = fmul fast float %4123, 2.000000e+00
  %4129 = fadd fast float %4128, -1.000000e+00
  %4130 = fmul fast float %4124, 2.000000e+00
  %4131 = fadd fast float %4130, -1.000000e+00
  %4132 = fadd fast float %4129, %4131
  %4133 = fmul fast float %4132, 5.000000e-01
  %4134 = fsub fast float %4129, %4131
  %4135 = fmul fast float %4134, 5.000000e-01
  %4136 = call float @dx.op.unary.f32(i32 6, float %4133)  ; FAbs(value)
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = call float @dx.op.unary.f32(i32 6, float %4135)  ; FAbs(value)
  %4139 = fsub fast float %4137, %4138
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4135, float %4139, float %4133, float %4135, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call float @dx.op.unary.f32(i32 25, float %4140)  ; Rsqrt(value)
  %4142 = fmul fast float %4133, %4141
  %4143 = fmul fast float %4135, %4141
  %4144 = fmul fast float %4141, %4139
  %4145 = fmul fast float %4144, %3875
  %4146 = fmul fast float %4144, %3876
  %4147 = fmul fast float %4144, %3877
  %4148 = fmul fast float %4142, %3898
  %4149 = fmul fast float %4142, %3899
  %4150 = fmul fast float %4142, %3900
  %4151 = fadd fast float %4148, %4145
  %4152 = fadd fast float %4149, %4146
  %4153 = fadd fast float %4150, %4147
  %4154 = fmul fast float %4143, %3904
  %4155 = fmul fast float %4143, %3905
  %4156 = fmul fast float %4143, %3906
  %4157 = fadd fast float %4151, %4154
  %4158 = fadd fast float %4152, %4155
  %4159 = fadd fast float %4153, %4156
  %4160 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4161 = call float @dx.op.unary.f32(i32 25, float %4160)  ; Rsqrt(value)
  %4162 = fmul fast float %4157, %4161
  %4163 = fmul fast float %4158, %4161
  %4164 = fmul fast float %4159, %4161
  %4165 = icmp ne i32 %4081, 0
  %4166 = select i1 %4165, float 1.000000e+00, float 0.000000e+00
  %4167 = fmul fast float %4071, %4166
  %4168 = and i32 %3925, 1
  %4169 = icmp eq i32 %4168, 0
  br i1 %4169, label %4170, label %4174

; <label>:4170                                    ; preds = %4079
  %4171 = fsub fast float %4162, %3858
  %4172 = fsub fast float %4163, %3859
  %4173 = fsub fast float %4164, %3860
  br label %4174

; <label>:4174                                    ; preds = %4170, %4079
  %4175 = phi float [ %4171, %4170 ], [ %4162, %4079 ]
  %4176 = phi float [ %4172, %4170 ], [ %4163, %4079 ]
  %4177 = phi float [ %4173, %4170 ], [ %4164, %4079 ]
  %4178 = fmul float %4177, %4167
  %4179 = fmul float %4176, %4167
  %4180 = fmul float %4175, %4167
  %4181 = fadd fast float %4180, %3858
  %4182 = fadd fast float %4179, %3859
  %4183 = fadd fast float %4178, %3860
  %4184 = icmp ne i32 %4080, 0
  %4185 = select i1 %4184, float 1.000000e+00, float 0.000000e+00
  %4186 = fmul fast float %4071, %4185
  %4187 = fsub fast float %4125, %3865
  %4188 = fsub fast float %4126, %3866
  %4189 = fsub fast float %4127, %3867
  %4190 = fmul fast float %4187, %4186
  %4191 = fmul fast float %4188, %4186
  %4192 = fmul fast float %4189, %4186
  %4193 = fadd fast float %4190, %3865
  %4194 = fadd fast float %4191, %3866
  %4195 = fadd fast float %4192, %3867
  %4196 = fsub fast float %4098, %3864
  %4197 = fmul fast float %4196, %4186
  %4198 = fadd fast float %4197, %3864
  %4199 = fmul fast float %4186, %3854
  %4200 = fsub fast float %3854, %4199
  %4201 = fmul fast float %4186, %3853
  %4202 = fsub fast float %3853, %4201
  %4203 = fadd fast float %4071, %3863
  %4204 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4205 = fsub fast float %4118, %3862
  %4206 = fmul fast float %4205, %4167
  %4207 = fadd fast float %4206, %3862
  %4208 = fsub fast float %4104, %3861
  %4209 = fmul fast float %4208, %4167
  %4210 = fadd fast float %4209, %3861
  %4211 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4126, float %4127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4215 = fmul fast float %4214, %4211
  %4216 = fadd fast float %4215, %4213
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4218 = bitcast float %3913 to i32
  %4219 = and i32 %4218, 65535
  %4220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4219)  ; LegacyF16ToF32(value)
  %4221 = lshr i32 %4218, 16
  %4222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4221)  ; LegacyF16ToF32(value)
  %4223 = fcmp fast oge float %4220, 0.000000e+00
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = select i1 %4223, float %4220, float %4225
  %4227 = fadd fast float %4226, %4222
  %4228 = fsub fast float %4217, %3852
  %4229 = fmul fast float %4228, %4071
  %4230 = fadd fast float %4229, %3852
  %4231 = fmul fast float %4227, %4071
  %4232 = call float @dx.op.binary.f32(i32 35, float %3851, float %4231)  ; FMax(a,b)
  %4233 = and i32 %3925, 16
  %4234 = icmp eq i32 %4233, 0
  br i1 %4234, label %4257, label %4235

; <label>:4235                                    ; preds = %4174
  %4236 = bitcast float %3919 to i32
  %4237 = add i32 %3916, 0
  %4238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4237, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4238, %dx.types.Handle %4084, float %4012, float %4015, float undef, float undef, i32 0, i32 0, i32 undef, float %4017, float %4019, float undef, float %4021, float %4023, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = and i32 %4236, 65535
  %4244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4243)  ; LegacyF16ToF32(value)
  %4245 = fmul fast float %4240, %3910
  %4246 = fmul fast float %4241, %3911
  %4247 = fmul fast float %4242, %3912
  %4248 = and i32 %3925, 16384
  %4249 = icmp ne i32 %4248, 0
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 0
  %4252 = select i1 %4249, float %4251, float 1.000000e+00
  %4253 = fmul fast float %4252, %4244
  %4254 = fmul fast float %4245, %4253
  %4255 = fmul fast float %4246, %4253
  %4256 = fmul fast float %4247, %4253
  br label %4257

; <label>:4257                                    ; preds = %4235, %4174
  %4258 = phi float [ %4254, %4235 ], [ 0.000000e+00, %4174 ]
  %4259 = phi float [ %4255, %4235 ], [ 0.000000e+00, %4174 ]
  %4260 = phi float [ %4256, %4235 ], [ 0.000000e+00, %4174 ]
  %4261 = fsub fast float %4258, %3855
  %4262 = fsub fast float %4259, %3856
  %4263 = fsub fast float %4260, %3857
  %4264 = fmul fast float %4261, %4071
  %4265 = fmul fast float %4262, %4071
  %4266 = fmul fast float %4263, %4071
  %4267 = fadd fast float %4264, %3855
  %4268 = fadd fast float %4265, %3856
  %4269 = fadd fast float %4266, %3857
  br label %3974

; <label>:4270                                    ; preds = %3974
  br label %4271

; <label>:4271                                    ; preds = %4270, %3794
  %4272 = phi float [ 0.000000e+00, %3794 ], [ %3975, %4270 ]
  %4273 = phi float [ %3763, %3794 ], [ %3976, %4270 ]
  %4274 = phi float [ %3761, %3794 ], [ %3977, %4270 ]
  %4275 = phi float [ 0.000000e+00, %3794 ], [ %3978, %4270 ]
  %4276 = phi float [ 0.000000e+00, %3794 ], [ %3979, %4270 ]
  %4277 = phi float [ %3752, %3794 ], [ %3980, %4270 ]
  %4278 = phi float [ %3753, %3794 ], [ %3981, %4270 ]
  %4279 = phi float [ %3754, %3794 ], [ %3982, %4270 ]
  %4280 = phi float [ %3789, %3794 ], [ %3983, %4270 ]
  %4281 = phi float [ %3790, %3794 ], [ %3984, %4270 ]
  %4282 = phi float [ %3791, %3794 ], [ %3985, %4270 ]
  %4283 = phi float [ %3760, %3794 ], [ %3986, %4270 ]
  %4284 = phi float [ %3759, %3794 ], [ %3987, %4270 ]
  %4285 = phi float [ 0.000000e+00, %3794 ], [ %3988, %4270 ]
  %4286 = phi float [ %3758, %3794 ], [ %3989, %4270 ]
  %4287 = phi float [ %3755, %3794 ], [ %3990, %4270 ]
  %4288 = phi float [ %3756, %3794 ], [ %3991, %4270 ]
  %4289 = phi float [ %3757, %3794 ], [ %3992, %4270 ]
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4280, float %4281, float %4282, float %4280, float %4281, float %4282)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call float @dx.op.unary.f32(i32 25, float %4290)  ; Rsqrt(value)
  %4292 = fmul fast float %4291, %4280
  %4293 = fmul fast float %4291, %4281
  %4294 = fmul fast float %4291, %4282
  %4295 = fadd fast float %4285, %863
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4292, float %4293, float %4294, float %4292, float %4293, float %4294)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call float @dx.op.unary.f32(i32 25, float %4297)  ; Rsqrt(value)
  %4299 = fmul fast float %4298, %4292
  %4300 = fmul fast float %4298, %4293
  %4301 = fmul fast float %4298, %4294
  br label %4302

; <label>:4302                                    ; preds = %4271, %3749
  %4303 = phi float [ %4299, %4271 ], [ %3789, %3749 ]
  %4304 = phi float [ %4300, %4271 ], [ %3790, %3749 ]
  %4305 = phi float [ %4301, %4271 ], [ %3791, %3749 ]
  %4306 = phi float [ %4287, %4271 ], [ %3755, %3749 ]
  %4307 = phi float [ %4288, %4271 ], [ %3756, %3749 ]
  %4308 = phi float [ %4289, %4271 ], [ %3757, %3749 ]
  %4309 = phi float [ %4277, %4271 ], [ %3752, %3749 ]
  %4310 = phi float [ %4278, %4271 ], [ %3753, %3749 ]
  %4311 = phi float [ %4279, %4271 ], [ %3754, %3749 ]
  %4312 = phi float [ %4286, %4271 ], [ %3758, %3749 ]
  %4313 = phi float [ %4296, %4271 ], [ %863, %3749 ]
  %4314 = phi float [ %4284, %4271 ], [ %3759, %3749 ]
  %4315 = phi float [ %4283, %4271 ], [ %3760, %3749 ]
  %4316 = phi float [ %4276, %4271 ], [ 0.000000e+00, %3749 ]
  %4317 = phi float [ %4275, %4271 ], [ 0.000000e+00, %3749 ]
  %4318 = phi float [ %4272, %4271 ], [ 0.000000e+00, %3749 ]
  %4319 = phi float [ %4273, %4271 ], [ %3763, %3749 ]
  %4320 = phi float [ %4274, %4271 ], [ %3761, %3749 ]
  %4321 = fadd fast float %4312, 0xBFB99999A0000000
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4322, 0x3FF1C71C80000000
  %4324 = call float @dx.op.binary.f32(i32 36, float %4312, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4325 = fsub fast float 1.000000e+00, %4323
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4326, %4306
  %4328 = fmul fast float %4326, %4307
  %4329 = fmul fast float %4326, %4308
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = fmul fast float %4323, %4306
  %4334 = fmul fast float %4323, %4307
  %4335 = fmul fast float %4323, %4308
  %4336 = fadd fast float %4333, %4324
  %4337 = fadd fast float %4334, %4324
  %4338 = fadd fast float %4335, %4324
  %4339 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4340 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.i32 %4343, 3
  %4345 = and i32 %4344, 8
  %4346 = icmp ne i32 %4345, 0
  %4347 = call float @dx.op.binary.f32(i32 35, float %4330, float %4306)  ; FMax(a,b)
  %4348 = call float @dx.op.binary.f32(i32 35, float %4331, float %4306)  ; FMax(a,b)
  %4349 = call float @dx.op.binary.f32(i32 35, float %4332, float %4306)  ; FMax(a,b)
  %4350 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4351 = select i1 %158, float %4306, float %4330
  %4352 = select i1 %158, float %4350, float %4331
  %4353 = select i1 %158, float 1.000000e+00, float %4332
  %4354 = select i1 %4346, float %4347, float %4351
  %4355 = select i1 %4346, float %4348, float %4352
  %4356 = select i1 %4346, float %4349, float %4353
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4361 = fadd fast float %4358, %116
  %4362 = fadd fast float %4359, %117
  %4363 = fadd fast float %4360, %118
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = fsub fast float %4361, %4365
  %4368 = fsub fast float %4362, %4366
  %4369 = fmul fast float %4367, %4367
  %4370 = fmul fast float %4368, %4368
  %4371 = fadd fast float %4369, %4370
  %4372 = call float @dx.op.unary.f32(i32 24, float %4371)  ; Sqrt(value)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4374 = fcmp fast olt float %4372, %4373
  br i1 %4374, label %4375, label %4442

; <label>:4375                                    ; preds = %4302
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4383 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4386 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4387 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4388 = fadd fast float %4385, %4361
  %4389 = fadd fast float %4386, %4362
  %4390 = fadd fast float %4387, %4363
  %4391 = fmul fast float %4388, %4377
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4389, float %4379, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4381, float %4392)  ; FMad(a,b,c)
  %4394 = fmul fast float %4388, %4382
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %4389, float %4383, float %4394)  ; FMad(a,b,c)
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4384, float %4395)  ; FMad(a,b,c)
  %4397 = fsub fast float %4393, %4385
  %4398 = fsub fast float %4396, %4386
  %4399 = fsub fast float %4397, %4365
  %4400 = fadd fast float %4399, %4373
  %4401 = fsub fast float %4398, %4366
  %4402 = fadd fast float %4401, %4373
  %4403 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4404 = fmul fast float %4400, %4403
  %4405 = fmul fast float %4402, %4403
  %4406 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = fsub fast float 1.000000e+00, %4406
  %4409 = fsub fast float 1.000000e+00, %4407
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = fcmp fast ugt float %4411, 0.000000e+00
  br i1 %4412, label %4413, label %4716

; <label>:4413                                    ; preds = %4375
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4416 = fmul fast float %4415, %4411
  %4417 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4418 = fadd fast float %4417, %4416
  %4419 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4420 = fadd fast float %4418, %4387
  %4421 = fmul fast float %4393, %4381
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4384, float %4421)  ; FMad(a,b,c)
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4419, float %4422)  ; FMad(a,b,c)
  %4424 = fsub fast float %4423, %4387
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 2
  %4427 = fsub fast float %4424, %4426
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = fadd fast float %4433, %4429
  %4437 = fmul fast float %4436, 0x3F847AE140000000
  %4438 = fadd fast float %4434, %4430
  %4439 = fmul fast float %4438, 0x3F847AE140000000
  %4440 = fadd fast float %4435, %4431
  %4441 = fmul fast float %4440, 0x3F847AE140000000
  br label %4716

; <label>:4442                                    ; preds = %4302
  %4443 = and i32 %134, 1
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4716, label %4445

; <label>:4445                                    ; preds = %4442
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4454 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4456 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4457 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4458 = fadd fast float %4455, %4361
  %4459 = fadd fast float %4456, %4362
  %4460 = fadd fast float %4457, %4363
  %4461 = fmul fast float %4458, %4447
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4459, float %4449, float %4461)  ; FMad(a,b,c)
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4451, float %4462)  ; FMad(a,b,c)
  %4464 = fmul fast float %4458, %4452
  %4465 = call float @dx.op.tertiary.f32(i32 46, float %4459, float %4453, float %4464)  ; FMad(a,b,c)
  %4466 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4454, float %4465)  ; FMad(a,b,c)
  %4467 = fsub fast float %4463, %4455
  %4468 = fsub fast float %4466, %4456
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4473 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.i32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.i32 %4476, 1
  %4479 = udiv i32 %4478, %4477
  %4480 = fsub fast float %4467, %4470
  %4481 = fsub fast float %4468, %4471
  %4482 = call float @dx.op.binary.f32(i32 35, float %4480, float 0.000000e+00)  ; FMax(a,b)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4481, float 0.000000e+00)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 36, float %4482, float %4472)  ; FMin(a,b)
  %4485 = call float @dx.op.binary.f32(i32 36, float %4483, float %4473)  ; FMin(a,b)
  %4486 = add i32 %4477, -1
  %4487 = add i32 %4479, -1
  %4488 = fmul fast float %4484, %4475
  %4489 = fmul fast float %4485, %4475
  %4490 = fptoui float %4488 to i32
  %4491 = fptoui float %4489 to i32
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4490, i32 %4486)  ; UMin(a,b)
  %4493 = call i32 @dx.op.binary.i32(i32 40, i32 %4491, i32 %4487)  ; UMin(a,b)
  %4494 = mul i32 %4493, %4477
  %4495 = add i32 %4494, %4492
  %4496 = shl i32 %4495, 2
  %4497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.i32 %4497, 0
  %4499 = icmp eq i32 %4498, -1
  br i1 %4499, label %4716, label %4500

; <label>:4500                                    ; preds = %4445
  %4501 = mul i32 %4498, 148
  %4502 = add i32 %4501, 4
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = add i32 %4501, 8
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = add i32 %4501, 36
  %4509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = add i32 %4501, 60
  %4512 = add i32 %4501, 92
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = add i32 %4501, 116
  %4516 = fsub fast float %4467, %4504
  %4517 = fsub fast float %4468, %4507
  %4518 = fmul fast float %4475, %4516
  %4519 = fmul fast float %4475, %4517
  %4520 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4525 = call float @dx.op.unary.f32(i32 83, float %4520)  ; DerivCoarseX(value)
  %4526 = call float @dx.op.unary.f32(i32 83, float %4522)  ; DerivCoarseX(value)
  %4527 = call float @dx.op.unary.f32(i32 84, float %4520)  ; DerivCoarseY(value)
  %4528 = call float @dx.op.unary.f32(i32 84, float %4522)  ; DerivCoarseY(value)
  %4529 = fmul fast float %4525, %4524
  %4530 = fmul fast float %4526, %4524
  %4531 = fmul fast float %4527, %4524
  %4532 = fmul fast float %4528, %4524
  %4533 = call float @dx.op.dot2.f32(i32 54, float %4531, float %4532, float %4531, float %4532)  ; Dot2(ax,ay,bx,by)
  %4534 = call float @dx.op.dot2.f32(i32 54, float %4529, float %4530, float %4529, float %4530)  ; Dot2(ax,ay,bx,by)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float %4533)  ; FMax(a,b)
  %4536 = call float @dx.op.unary.f32(i32 23, float %4535)  ; Log(value)
  %4537 = fmul fast float %4536, 5.000000e-01
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4540 = fadd fast float %4539, %4537
  %4541 = call float @dx.op.binary.f32(i32 35, float %4540, float 0.000000e+00)  ; FMax(a,b)
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4544 = fadd fast float %4543, %4541
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4547 = fadd fast float %4544, %4546
  %4548 = add i32 %4514, 0
  %4549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4550 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4549, i32 0)  ; GetDimensions(handle,mipLevel)
  %4551 = extractvalue %dx.types.Dimensions %4550, 0
  %4552 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4551)  ; FirstbitLo(value)
  %4553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.i32 %4553, 1
  %4555 = sub nsw i32 %4554, %4552
  %4556 = sitofp i32 %4555 to float
  %4557 = fsub fast float %4547, %4556
  %4558 = call float @dx.op.binary.f32(i32 35, float %4557, float 0.000000e+00)  ; FMax(a,b)
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4549, %dx.types.Handle %27, float %4520, float %4522, float %4510, float undef, i32 0, i32 0, i32 undef, float %4558)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = fcmp ule float %4560, 0x3FE0101020000000
  %4562 = extractvalue %dx.types.CBufRet.i32 %4553, 0
  %4563 = and i32 %4562, 128
  %4564 = icmp ne i32 %4563, 0
  %4565 = and i1 %4561, %4564
  br i1 %4565, label %4716, label %4566

; <label>:4566                                    ; preds = %4500
  %4567 = add i32 %4501, 20
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = add i32 %4501, 24
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = add i32 %4501, 40
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = add i32 %4501, 96
  %4577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4581 = fmul fast float %4580, %4520
  %4582 = fmul fast float %4580, %4522
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4584 = fadd fast float %4581, %4583
  %4585 = fadd fast float %4582, %4583
  %4586 = add i32 %4578, 0
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4586, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4587, i32 0)  ; GetDimensions(handle,mipLevel)
  %4589 = extractvalue %dx.types.Dimensions %4588, 0
  %4590 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4589)  ; FirstbitLo(value)
  %4591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.i32 %4591, 1
  %4593 = sub nsw i32 %4592, %4590
  %4594 = sitofp i32 %4593 to float
  %4595 = fsub fast float %4544, %4594
  %4596 = call float @dx.op.binary.f32(i32 35, float %4595, float 0.000000e+00)  ; FMax(a,b)
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4587, %dx.types.Handle %27, float %4584, float %4585, float %4575, float undef, i32 0, i32 0, i32 undef, float %4596)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = fmul fast float %4598, %4569
  %4600 = fadd fast float %4599, %4572
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4609 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4610 = fadd fast float %4606, %4467
  %4611 = fadd fast float %4608, %4468
  %4612 = fadd fast float %4600, %4609
  %4613 = fmul fast float %4610, %4602
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4603, float %4613)  ; FMad(a,b,c)
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4604, float %4614)  ; FMad(a,b,c)
  %4616 = fsub fast float %4615, %4609
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4619 = fsub fast float %4616, %4618
  %4620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.i32 %4620, 0
  %4622 = call i32 @dx.op.binary.i32(i32 40, i32 %4498, i32 %4621)  ; UMin(a,b)
  %4623 = mul i32 %4622, 36
  %4624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.i32 %4624, 0
  %4626 = add i32 %4623, 4
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = fmul fast float %4628, %4520
  %4630 = fmul fast float %4628, %4522
  %4631 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4632 = fadd fast float %4629, %4631
  %4633 = fadd fast float %4630, %4631
  %4634 = icmp eq i32 %4625, 0
  br i1 %4634, label %4703, label %4635

; <label>:4635                                    ; preds = %4566
  br label %4636

; <label>:4636                                    ; preds = %4693, %4635
  %4637 = phi float [ %4694, %4693 ], [ 0.000000e+00, %4635 ]
  %4638 = phi float [ %4695, %4693 ], [ 0.000000e+00, %4635 ]
  %4639 = phi float [ %4696, %4693 ], [ 0.000000e+00, %4635 ]
  %4640 = phi float [ %4697, %4693 ], [ 0.000000e+00, %4635 ]
  %4641 = phi float [ %4698, %4693 ], [ 0.000000e+00, %4635 ]
  %4642 = phi float [ %4699, %4693 ], [ 0.000000e+00, %4635 ]
  %4643 = phi i32 [ %4700, %4693 ], [ 0, %4635 ]
  %4644 = shl i32 %4643, 2
  %4645 = add i32 %4511, %4644
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = add i32 %4515, %4644
  %4649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.i32 %4649, 0
  %4651 = add i32 %4650, 0
  %4652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4651, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4653 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4652, i32 0)  ; GetDimensions(handle,mipLevel)
  %4654 = extractvalue %dx.types.Dimensions %4653, 0
  %4655 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4654)  ; FirstbitLo(value)
  %4656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.i32 %4656, 1
  %4658 = sub nsw i32 %4657, %4655
  %4659 = sitofp i32 %4658 to float
  %4660 = fsub fast float %4544, %4659
  %4661 = call float @dx.op.binary.f32(i32 35, float %4660, float 0.000000e+00)  ; FMax(a,b)
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4652, %dx.types.Handle %27, float %4632, float %4633, float %4647, float undef, i32 0, i32 0, i32 undef, float %4661)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = fcmp fast ogt float %4663, 0.000000e+00
  br i1 %4664, label %4665, label %4693

; <label>:4665                                    ; preds = %4636
  %4666 = add i32 %4626, %4644
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = and i32 %4668, 32767
  %4670 = mul nuw nsw i32 %4669, 928
  %4671 = add nuw nsw i32 %4670, 48
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = add nuw nsw i32 %4670, 60
  %4677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4676, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4677, 2
  %4681 = fmul fast float %4673, %4663
  %4682 = fmul fast float %4674, %4663
  %4683 = fmul fast float %4675, %4663
  %4684 = fadd fast float %4681, %4637
  %4685 = fadd fast float %4682, %4638
  %4686 = fadd fast float %4683, %4639
  %4687 = fmul fast float %4678, %4663
  %4688 = fmul fast float %4679, %4663
  %4689 = fmul fast float %4680, %4663
  %4690 = fadd fast float %4687, %4640
  %4691 = fadd fast float %4688, %4641
  %4692 = fadd fast float %4689, %4642
  br label %4693

; <label>:4693                                    ; preds = %4665, %4636
  %4694 = phi float [ %4684, %4665 ], [ %4637, %4636 ]
  %4695 = phi float [ %4685, %4665 ], [ %4638, %4636 ]
  %4696 = phi float [ %4686, %4665 ], [ %4639, %4636 ]
  %4697 = phi float [ %4690, %4665 ], [ %4640, %4636 ]
  %4698 = phi float [ %4691, %4665 ], [ %4641, %4636 ]
  %4699 = phi float [ %4692, %4665 ], [ %4642, %4636 ]
  %4700 = add nuw i32 %4643, 1
  %4701 = icmp eq i32 %4700, %4625
  br i1 %4701, label %4702, label %4636

; <label>:4702                                    ; preds = %4693
  br label %4703

; <label>:4703                                    ; preds = %4702, %4566
  %4704 = phi float [ 0.000000e+00, %4566 ], [ %4694, %4702 ]
  %4705 = phi float [ 0.000000e+00, %4566 ], [ %4695, %4702 ]
  %4706 = phi float [ 0.000000e+00, %4566 ], [ %4696, %4702 ]
  %4707 = phi float [ 0.000000e+00, %4566 ], [ %4697, %4702 ]
  %4708 = phi float [ 0.000000e+00, %4566 ], [ %4698, %4702 ]
  %4709 = phi float [ 0.000000e+00, %4566 ], [ %4699, %4702 ]
  %4710 = fadd fast float %4707, %4704
  %4711 = fmul fast float %4710, 0x3F847AE140000000
  %4712 = fadd fast float %4708, %4705
  %4713 = fmul fast float %4712, 0x3F847AE140000000
  %4714 = fadd fast float %4709, %4706
  %4715 = fmul fast float %4714, 0x3F847AE140000000
  br label %4716

; <label>:4716                                    ; preds = %4703, %4500, %4445, %4442, %4413, %4375
  %4717 = phi float [ %4427, %4413 ], [ -1.310720e+05, %4375 ], [ %4619, %4703 ], [ -1.310720e+05, %4445 ], [ -1.310720e+05, %4500 ], [ -1.310720e+05, %4442 ]
  %4718 = phi float [ %4437, %4413 ], [ 0.000000e+00, %4375 ], [ %4711, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4719 = phi float [ %4439, %4413 ], [ 0.000000e+00, %4375 ], [ %4713, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4720 = phi float [ %4441, %4413 ], [ 0.000000e+00, %4375 ], [ %4715, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4721 = phi i1 [ true, %4413 ], [ false, %4375 ], [ true, %4703 ], [ false, %4445 ], [ false, %4500 ], [ false, %4442 ]
  %4722 = and i32 %134, 3
  %4723 = icmp eq i32 %4722, 1
  %4724 = select i1 %4723, float 1.000000e+00, float 0.000000e+00
  %4725 = fsub fast float %4717, %118
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = select i1 %4721, float %4726, float 1.000000e+00
  %4728 = fmul fast float %4727, %4724
  %4729 = icmp eq i32 %4722, 3
  %4730 = select i1 %4729, float 1.000000e+00, float %4728
  %4731 = call float @dx.op.binary.f32(i32 35, float %4318, float %4730)  ; FMax(a,b)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fcmp fast une float %4732, 0.000000e+00
  %4734 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.unary.f32(i32 25, float %4734)  ; Rsqrt(value)
  br i1 %4733, label %4743, label %4736

; <label>:4736                                    ; preds = %4716
  %4737 = fmul fast float %4735, %116
  %4738 = fmul fast float %4735, %117
  %4739 = fmul fast float %4735, %118
  %4740 = fsub fast float -0.000000e+00, %4737
  %4741 = fsub fast float -0.000000e+00, %4738
  %4742 = fsub fast float -0.000000e+00, %4739
  br label %4911

; <label>:4743                                    ; preds = %4716
  %4744 = fmul fast float %116, %4735
  %4745 = fsub fast float -0.000000e+00, %4744
  %4746 = fmul fast float %117, %4735
  %4747 = fsub fast float -0.000000e+00, %4746
  %4748 = fmul fast float %118, %4735
  %4749 = fsub fast float -0.000000e+00, %4748
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4747, float %4749, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fmul fast float %4732, 2.500000e+00
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4732, 0x4013FFFFE0000000
  %4754 = fadd fast float %4753, 0xBFFFFFFFE0000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %4732, 0x4004000020000000
  %4757 = fadd fast float %4756, 0xBFF8000040000000
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4760 = fmul fast float %4321, 1.000000e+01
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4761, 2.000000e+00
  %4763 = fsub fast float 3.000000e+00, %4762
  %4764 = fmul fast float %4761, %4761
  %4765 = fmul fast float %4764, %4763
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = fsub fast float 0x3FE3333340000000, %4342
  %4768 = fmul fast float %4767, 0x400AAAAAA0000000
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = fmul fast float %4766, %4769
  %4771 = fmul fast float %4354, 0x3FEA2B8620000000
  %4772 = fmul fast float %4355, 0x3FEA2B8620000000
  %4773 = fmul fast float %4356, 0x3FEA2B8620000000
  %4774 = fadd fast float %4771, 0x3FC81DFBA0000000
  %4775 = fmul fast float %4774, %4354
  %4776 = fadd fast float %4775, 0x3F910E6020000000
  %4777 = fadd fast float %4772, 0x3FC81DFBA0000000
  %4778 = fmul fast float %4777, %4355
  %4779 = fadd fast float %4778, 0x3F910E6020000000
  %4780 = fadd fast float %4773, 0x3FC81DFBA0000000
  %4781 = fmul fast float %4780, %4356
  %4782 = fadd fast float %4781, 0x3F910E6020000000
  %4783 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = fsub fast float %4783, %4354
  %4787 = fsub fast float %4784, %4355
  %4788 = fsub fast float %4785, %4356
  %4789 = fmul fast float %4786, %4759
  %4790 = fmul fast float %4789, %4770
  %4791 = fmul fast float %4787, %4759
  %4792 = fmul fast float %4791, %4770
  %4793 = fmul fast float %4788, %4759
  %4794 = fmul fast float %4793, %4770
  %4795 = fadd fast float %4790, %4354
  %4796 = fadd fast float %4792, %4355
  %4797 = fadd fast float %4794, %4356
  %4798 = fmul fast float %4315, %4315
  %4799 = fmul fast float %4798, %4798
  %4800 = fadd fast float %4755, 1.000000e+00
  %4801 = fsub fast float %4800, %4770
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fsub fast float 1.000000e+00, %4799
  %4806 = call float @dx.op.binary.f32(i32 36, float %4802, float %4805)  ; FMin(a,b)
  %4807 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4808 = call float @dx.op.binary.f32(i32 35, float %4806, float %4807)  ; FMax(a,b)
  %4809 = fadd fast float %4804, 0xBFE4CCCCC0000000
  %4810 = fmul fast float %4809, 0x4006DB6DA0000000
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = fsub fast float 3.000000e+00, %4812
  %4814 = bitcast float %4339 to i32
  %4815 = ashr i32 %4814, 1
  %4816 = add nsw i32 %4815, 532487669
  %4817 = bitcast i32 %4816 to float
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = fmul fast float %4821, 2.000000e+00
  %4823 = bitcast float %4340 to i32
  %4824 = ashr i32 %4823, 1
  %4825 = add nsw i32 %4824, 532487669
  %4826 = bitcast i32 %4825 to float
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = bitcast float %4827 to i32
  %4829 = sub nsw i32 2129859010, %4828
  %4830 = bitcast i32 %4829 to float
  %4831 = fmul fast float %4830, 2.000000e+00
  %4832 = bitcast float %4341 to i32
  %4833 = ashr i32 %4832, 1
  %4834 = add nsw i32 %4833, 532487669
  %4835 = bitcast i32 %4834 to float
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = bitcast float %4836 to i32
  %4838 = sub nsw i32 2129859010, %4837
  %4839 = bitcast i32 %4838 to float
  %4840 = fmul fast float %4839, 2.000000e+00
  %4841 = fsub fast float 0x4002A9FBE0000000, %4822
  %4842 = fadd fast float %4822, 0x3FD54FDF00000000
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = fmul fast float %4845, %4841
  %4847 = fmul fast float %4846, %4846
  %4848 = fsub fast float 0x4002A9FBE0000000, %4831
  %4849 = fadd fast float %4831, 0x3FD54FDF00000000
  %4850 = bitcast float %4849 to i32
  %4851 = sub nsw i32 2129859010, %4850
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4853, %4853
  %4855 = fsub fast float 0x4002A9FBE0000000, %4840
  %4856 = fadd fast float %4840, 0x3FD54FDF00000000
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = fmul fast float %4859, %4855
  %4861 = fmul fast float %4860, %4860
  %4862 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4847)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4854)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4861)  ; FMax(a,b)
  %4865 = fsub fast float 1.000000e+00, %4750
  %4866 = fadd fast float %4865, %4766
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fsub fast float 1.000000e+00, %4730
  %4869 = fmul fast float %4808, %4868
  %4870 = fmul fast float %4811, %4811
  %4871 = fmul fast float %4870, %4869
  %4872 = fmul fast float %4871, %4813
  %4873 = fmul fast float %4868, 0xBFE99999A0000000
  %4874 = fmul fast float %4873, %4759
  %4875 = fmul fast float %4874, %4770
  %4876 = fadd fast float %4875, 1.000000e+00
  %4877 = fadd fast float %4342, -1.000000e+00
  %4878 = fmul fast float %4876, %4877
  %4879 = fadd fast float %4878, 1.000000e+00
  %4880 = fsub fast float %4862, %4339
  %4881 = fsub fast float %4863, %4340
  %4882 = fsub fast float %4864, %4341
  %4883 = fmul fast float %4872, %4880
  %4884 = fmul fast float %4872, %4881
  %4885 = fmul fast float %4872, %4882
  %4886 = fadd fast float %4883, %4339
  %4887 = fadd fast float %4884, %4340
  %4888 = fadd fast float %4885, %4341
  %4889 = fsub fast float %68, %4303
  %4890 = fsub fast float %69, %4304
  %4891 = fsub fast float %70, %4305
  %4892 = fmul fast float %4872, %4889
  %4893 = fmul fast float %4872, %4890
  %4894 = fmul fast float %4872, %4891
  %4895 = fadd fast float %4892, %4303
  %4896 = fadd fast float %4893, %4304
  %4897 = fadd fast float %4894, %4305
  %4898 = fmul fast float %4872, %4867
  %4899 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4900 = fsub fast float 1.000000e+00, %4899
  %4901 = fmul fast float %4898, %4900
  %4902 = fadd fast float %4901, %4899
  %4903 = fsub fast float 1.000000e+00, %4315
  %4904 = fmul fast float %4872, %4903
  %4905 = fadd fast float %4904, %4315
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %4895, float %4896, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 25, float %4906)  ; Rsqrt(value)
  %4908 = fmul fast float %4895, %4907
  %4909 = fmul fast float %4896, %4907
  %4910 = fmul fast float %4897, %4907
  br label %4911

; <label>:4911                                    ; preds = %4743, %4736
  %4912 = phi float [ %4742, %4736 ], [ %4749, %4743 ]
  %4913 = phi float [ %4741, %4736 ], [ %4747, %4743 ]
  %4914 = phi float [ %4740, %4736 ], [ %4745, %4743 ]
  %4915 = phi float [ %4739, %4736 ], [ %4748, %4743 ]
  %4916 = phi float [ %4738, %4736 ], [ %4746, %4743 ]
  %4917 = phi float [ %4737, %4736 ], [ %4744, %4743 ]
  %4918 = phi float [ %4339, %4736 ], [ %4886, %4743 ]
  %4919 = phi float [ %4340, %4736 ], [ %4887, %4743 ]
  %4920 = phi float [ %4341, %4736 ], [ %4888, %4743 ]
  %4921 = phi float [ %4354, %4736 ], [ %4795, %4743 ]
  %4922 = phi float [ %4355, %4736 ], [ %4796, %4743 ]
  %4923 = phi float [ %4356, %4736 ], [ %4797, %4743 ]
  %4924 = phi float [ %4303, %4736 ], [ %4908, %4743 ]
  %4925 = phi float [ %4304, %4736 ], [ %4909, %4743 ]
  %4926 = phi float [ %4305, %4736 ], [ %4910, %4743 ]
  %4927 = phi float [ %4342, %4736 ], [ %4902, %4743 ]
  %4928 = phi float [ %4315, %4736 ], [ %4905, %4743 ]
  %4929 = select i1 %158, float 0.000000e+00, float %4920
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %4914, float %4913, float %4912)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fsub fast float 1.000000e+00, %4928
  %4933 = bitcast float %4932 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = fmul fast float %4313, %4309
  %4937 = fmul fast float %4313, %4310
  %4938 = fmul fast float %4313, %4311
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 3
  %4941 = fcmp fast oeq float %4940, 0.000000e+00
  br i1 %4941, label %5188, label %4942

; <label>:4942                                    ; preds = %4911
  %4943 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4944 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4939, 2
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.CBufRet.f32 %4950, 1
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4947, float %4948, float %4949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = select i1 %158, float %4951, float %4947
  %4955 = select i1 %158, float %4953, float %4948
  %4956 = select i1 %158, float %4952, float %4949
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4959 = fcmp fast une float %4958, 0.000000e+00
  br i1 %4959, label %4960, label %4977

; <label>:4960                                    ; preds = %4942
  %4961 = fptoui float %61 to i32
  %4962 = fptoui float %62 to i32
  %4963 = lshr i32 %4961, 4
  %4964 = lshr i32 %4962, 4
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = fptoui float %4966 to i32
  %4968 = add i32 %4967, 15
  %4969 = lshr i32 %4968, 4
  %4970 = mul i32 %4969, %4964
  %4971 = add i32 %4970, %4963
  %4972 = shl i32 %4971, 3
  %4973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4974 = extractvalue %dx.types.ResRet.i32 %4973, 0
  %4975 = and i32 %4974, -268435456
  %4976 = icmp eq i32 %4975, -1342177280
  br i1 %4976, label %4987, label %4977

; <label>:4977                                    ; preds = %4960, %4942
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 2
  %4980 = extractvalue %dx.types.CBufRet.f32 %4978, 3
  %4981 = fmul fast float %4979, %61
  %4982 = fmul fast float %4980, %62
  %4983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4981, float %4982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4984 = extractvalue %dx.types.ResRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.ResRet.f32 %4983, 1
  %4986 = extractvalue %dx.types.ResRet.f32 %4983, 2
  br label %4987

; <label>:4987                                    ; preds = %4977, %4960
  %4988 = phi float [ %4984, %4977 ], [ 0.000000e+00, %4960 ]
  %4989 = phi float [ %4985, %4977 ], [ 0.000000e+00, %4960 ]
  %4990 = phi float [ %4986, %4977 ], [ 0.000000e+00, %4960 ]
  %4991 = call float @dx.op.binary.f32(i32 36, float %4989, float %4990)  ; FMin(a,b)
  %4992 = call float @dx.op.binary.f32(i32 36, float %4988, float %4991)  ; FMin(a,b)
  %4993 = fcmp fast ogt float %4992, 0.000000e+00
  br i1 %4993, label %4994, label %5188, !dx.controlflow.hints !72

; <label>:4994                                    ; preds = %4987
  %4995 = fmul fast float %4988, %4954
  %4996 = fmul fast float %4989, %4955
  %4997 = fmul fast float %4990, %4956
  %4998 = fsub fast float %4943, %4917
  %4999 = fsub fast float %4944, %4916
  %5000 = fsub fast float %4945, %4915
  %5001 = call float @dx.op.dot3.f32(i32 55, float %4998, float %4999, float %5000, float %4998, float %4999, float %5000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = call float @dx.op.unary.f32(i32 25, float %5001)  ; Rsqrt(value)
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %5002, %4999
  %5005 = fmul fast float %5002, %5000
  %5006 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4913, float %4912, float %5003, float %5004, float %5005)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5009 = fmul fast float %5008, %5008
  %5010 = fmul fast float %5009, %4935
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = fmul fast float %5011, %5008
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %5003, float %5004, float %5005)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = fmul fast float %5013, %5013
  %5015 = call float @dx.op.unary.f32(i32 6, float %5006)  ; FAbs(value)
  %5016 = fsub fast float 1.000000e+00, %4927
  %5017 = call float @dx.op.binary.f32(i32 35, float %5016, float 0x3F847AE140000000)  ; FMax(a,b)
  %5018 = fmul fast float %5017, %5017
  %5019 = fmul fast float %5018, %5018
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = fmul fast float %4931, %4931
  %5022 = fmul fast float %5021, %5020
  %5023 = fadd fast float %5022, %5019
  %5024 = bitcast float %5023 to i32
  %5025 = ashr i32 %5024, 1
  %5026 = add nsw i32 %5025, 532487669
  %5027 = bitcast i32 %5026 to float
  %5028 = fadd fast float %5027, %4931
  %5029 = fmul fast float %5019, %5014
  %5030 = fsub fast float 1.000000e+00, %5014
  %5031 = fadd fast float %5030, %5029
  %5032 = fmul fast float %5015, %5015
  %5033 = fmul fast float %5032, %5020
  %5034 = fadd fast float %5033, %5019
  %5035 = bitcast float %5034 to i32
  %5036 = ashr i32 %5035, 1
  %5037 = add nsw i32 %5036, 532487669
  %5038 = bitcast i32 %5037 to float
  %5039 = fadd fast float %5038, %5015
  %5040 = fmul fast float %5031, %5031
  %5041 = fmul fast float %5040, %5028
  %5042 = fmul fast float %5041, %5039
  %5043 = fdiv fast float 0x3FF0A00000000000, %5042
  %5044 = fmul fast float %5043, %5019
  %5045 = call float @dx.op.unary.f32(i32 6, float %5007)  ; FAbs(value)
  %5046 = fsub fast float 1.000000e+00, %5045
  %5047 = bitcast float %5046 to i32
  %5048 = sitofp i32 %5047 to float
  %5049 = fmul fast float %5048, 5.000000e+00
  %5050 = fadd fast float %5049, 0xC1EFBF8940000000
  %5051 = fptosi float %5050 to i32
  %5052 = bitcast i32 %5051 to float
  %5053 = fsub fast float 1.000000e+00, %4918
  %5054 = fsub fast float 1.000000e+00, %4919
  %5055 = fsub fast float 1.000000e+00, %4929
  %5056 = fmul fast float %5052, %5053
  %5057 = fmul fast float %5052, %5054
  %5058 = fmul fast float %5052, %5055
  %5059 = fadd fast float %5056, %4918
  %5060 = fadd fast float %5057, %4919
  %5061 = fadd fast float %5058, %4929
  %5062 = fcmp fast ogt float %4316, 0.000000e+00
  br i1 %5062, label %5063, label %5086

; <label>:5063                                    ; preds = %4994
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4316, float %5045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = fadd fast float %5065, -5.000000e-01
  %5069 = fadd fast float %5066, -5.000000e-01
  %5070 = fadd fast float %5067, -5.000000e-01
  %5071 = fmul fast float %4918, 4.000000e+00
  %5072 = fmul fast float %5071, %5053
  %5073 = fmul fast float %5072, %5068
  %5074 = fmul fast float %4919, 4.000000e+00
  %5075 = fmul fast float %5074, %5054
  %5076 = fmul fast float %5075, %5069
  %5077 = fmul fast float %4929, 4.000000e+00
  %5078 = fmul fast float %5077, %5055
  %5079 = fmul fast float %5078, %5070
  %5080 = fadd fast float %5073, %5059
  %5081 = fadd fast float %5076, %5060
  %5082 = fadd fast float %5079, %5061
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  br label %5086

; <label>:5086                                    ; preds = %5063, %4994
  %5087 = phi float [ %5083, %5063 ], [ %5059, %4994 ]
  %5088 = phi float [ %5084, %5063 ], [ %5060, %4994 ]
  %5089 = phi float [ %5085, %5063 ], [ %5061, %4994 ]
  %5090 = fmul fast float %5006, 9.843750e-01
  %5091 = fmul fast float %4927, 9.843750e-01
  %5092 = fadd fast float %5090, 7.812500e-03
  %5093 = fadd fast float %5091, 7.812500e-03
  %5094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5092, float %5093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 2
  %5096 = extractvalue %dx.types.ResRet.f32 %5094, 3
  %5097 = fmul fast float %5095, %4918
  %5098 = fmul fast float %5095, %4919
  %5099 = fmul fast float %5095, %4929
  %5100 = fadd fast float %5097, %5096
  %5101 = fadd fast float %5098, %5096
  %5102 = fadd fast float %5099, %5096
  br i1 %5062, label %5103, label %5126

; <label>:5103                                    ; preds = %5086
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4316, float %5006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.ResRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.ResRet.f32 %5104, 2
  %5108 = fadd fast float %5105, -5.000000e-01
  %5109 = fadd fast float %5106, -5.000000e-01
  %5110 = fadd fast float %5107, -5.000000e-01
  %5111 = fmul fast float %4918, 4.000000e+00
  %5112 = fmul fast float %5111, %5053
  %5113 = fmul fast float %5112, %5108
  %5114 = fmul fast float %4919, 4.000000e+00
  %5115 = fmul fast float %5114, %5054
  %5116 = fmul fast float %5115, %5109
  %5117 = fmul fast float %4929, 4.000000e+00
  %5118 = fmul fast float %5117, %5055
  %5119 = fmul fast float %5118, %5110
  %5120 = fadd fast float %5113, %5100
  %5121 = fadd fast float %5116, %5101
  %5122 = fadd fast float %5119, %5102
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  br label %5126

; <label>:5126                                    ; preds = %5103, %5086
  %5127 = phi float [ %5123, %5103 ], [ %5100, %5086 ]
  %5128 = phi float [ %5124, %5103 ], [ %5101, %5086 ]
  %5129 = phi float [ %5125, %5103 ], [ %5102, %5086 ]
  %5130 = call float @dx.op.binary.f32(i32 35, float %5128, float %5129)  ; FMax(a,b)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5127, float %5130)  ; FMax(a,b)
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = fmul fast float %5087, %5044
  %5134 = fmul fast float %5088, %5044
  %5135 = fmul fast float %5089, %5044
  %5136 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = fcmp fast ogt float %5136, 0x3E7FF19E20000000
  %5138 = fdiv fast float 1.000000e+00, %5136
  %5139 = select i1 %5137, float %5138, float 0.000000e+00
  %5140 = fmul fast float %5139, %4921
  %5141 = fmul fast float %5139, %4922
  %5142 = fmul fast float %5139, %4923
  %5143 = fadd fast float %5140, -1.000000e+00
  %5144 = fadd fast float %5141, -1.000000e+00
  %5145 = fadd fast float %5142, -1.000000e+00
  %5146 = fmul fast float %5143, 5.000000e-01
  %5147 = fmul fast float %5144, 5.000000e-01
  %5148 = fmul fast float %5145, 5.000000e-01
  %5149 = fadd fast float %5146, 1.000000e+00
  %5150 = fadd fast float %5147, 1.000000e+00
  %5151 = fadd fast float %5148, 1.000000e+00
  %5152 = fsub fast float 1.000000e+00, %5007
  %5153 = bitcast float %5152 to i32
  %5154 = sitofp i32 %5153 to float
  %5155 = fmul fast float %5154, 5.000000e+00
  %5156 = fadd fast float %5155, 0xC1EFBF8940000000
  %5157 = fptosi float %5156 to i32
  %5158 = bitcast i32 %5157 to float
  %5159 = fmul fast float %5158, %4317
  %5160 = fmul fast float %5132, %5159
  %5161 = fmul fast float %5160, %5149
  %5162 = fmul fast float %5160, %5150
  %5163 = fmul fast float %5160, %5151
  %5164 = fadd fast float %5161, %5133
  %5165 = fadd fast float %5162, %5134
  %5166 = fadd fast float %5163, %5135
  %5167 = fmul fast float %5012, %4995
  %5168 = fmul fast float %5167, %5164
  %5169 = fmul fast float %5012, %4996
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5012, %4997
  %5172 = fmul fast float %5171, %5166
  %5173 = fmul fast float %4995, %4313
  %5174 = fmul fast float %5173, %5012
  %5175 = fmul fast float %5174, %5132
  %5176 = fmul fast float %4996, %4313
  %5177 = fmul fast float %5176, %5012
  %5178 = fmul fast float %5177, %5132
  %5179 = fmul fast float %4997, %4313
  %5180 = fmul fast float %5179, %5012
  %5181 = fmul fast float %5180, %5132
  %5182 = fadd fast float %5168, %4309
  %5183 = fmul fast float %5182, %4313
  %5184 = fadd fast float %5170, %4310
  %5185 = fmul fast float %5184, %4313
  %5186 = fadd fast float %5172, %4311
  %5187 = fmul fast float %5186, %4313
  br label %5188

; <label>:5188                                    ; preds = %5126, %4987, %4911
  %5189 = phi float [ %4936, %4911 ], [ %4936, %4987 ], [ %5183, %5126 ]
  %5190 = phi float [ %4937, %4911 ], [ %4937, %4987 ], [ %5185, %5126 ]
  %5191 = phi float [ %4938, %4911 ], [ %4938, %4987 ], [ %5187, %5126 ]
  %5192 = phi float [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4987 ], [ %5175, %5126 ]
  %5193 = phi float [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4987 ], [ %5178, %5126 ]
  %5194 = phi float [ 0.000000e+00, %4911 ], [ 0.000000e+00, %4987 ], [ %5181, %5126 ]
  %5195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.i32 %5195, 0
  %5197 = icmp eq i32 %5196, 0
  br i1 %5197, label %5651, label %5198

; <label>:5198                                    ; preds = %5188
  %5199 = fptoui float %61 to i32
  %5200 = fptoui float %62 to i32
  %5201 = lshr i32 %5199, 4
  %5202 = lshr i32 %5200, 4
  %5203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.i32 %5203, 0
  %5205 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5202, i32 %5204, i32 %5201)  ; UMad(a,b,c)
  %5206 = add nsw i32 %5196, -1
  %5207 = call i32 @dx.op.binary.i32(i32 37, i32 %5206, i32 0)  ; IMax(a,b)
  %5208 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %5209 = fptoui float %5208 to i32
  %5210 = lshr i32 %5209, 5
  %5211 = call i32 @dx.op.binary.i32(i32 40, i32 %5210, i32 8191)  ; UMin(a,b)
  %5212 = shl i32 %5211, 2
  %5213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5212, i32 undef)  ; BufferLoad(srv,index,wot)
  %5214 = extractvalue %dx.types.ResRet.i32 %5213, 0
  %5215 = lshr i32 %5214, 16
  %5216 = and i32 %5214, 65535
  %5217 = lshr i32 %5214, 21
  %5218 = lshr i32 %5216, 5
  %5219 = call i32 @dx.op.binary.i32(i32 40, i32 %5218, i32 %5207)  ; UMin(a,b)
  %5220 = icmp ugt i32 %5217, %5219
  br i1 %5220, label %5651, label %5221

; <label>:5221                                    ; preds = %5198
  br label %5222

; <label>:5222                                    ; preds = %5641, %5221
  %5223 = phi i32 [ %5648, %5641 ], [ %5217, %5221 ]
  %5224 = phi float [ %5642, %5641 ], [ %5189, %5221 ]
  %5225 = phi float [ %5643, %5641 ], [ %5190, %5221 ]
  %5226 = phi float [ %5644, %5641 ], [ %5191, %5221 ]
  %5227 = phi float [ %5645, %5641 ], [ %5192, %5221 ]
  %5228 = phi float [ %5646, %5641 ], [ %5193, %5221 ]
  %5229 = phi float [ %5647, %5641 ], [ %5194, %5221 ]
  %5230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.i32 %5230, 0
  %5232 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5205, i32 %5231, i32 %5223)  ; UMad(a,b,c)
  %5233 = shl i32 %5232, 2
  %5234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.i32 %5234, 0
  %5236 = shl i32 %5223, 5
  %5237 = sub nsw i32 %5215, %5236
  %5238 = call i32 @dx.op.binary.i32(i32 37, i32 %5237, i32 0)  ; IMax(a,b)
  %5239 = call i32 @dx.op.binary.i32(i32 38, i32 %5238, i32 31)  ; IMin(a,b)
  %5240 = sub nsw i32 1, %5215
  %5241 = add nsw i32 %5240, %5216
  %5242 = call i32 @dx.op.binary.i32(i32 37, i32 %5241, i32 0)  ; IMax(a,b)
  %5243 = call i32 @dx.op.binary.i32(i32 38, i32 %5242, i32 32)  ; IMin(a,b)
  %5244 = and i32 %5243, 31
  %5245 = shl i32 -1, %5244
  %5246 = xor i32 %5245, -1
  %5247 = and i32 %5239, 31
  %5248 = shl i32 %5246, %5247
  %5249 = icmp eq i32 %5243, 32
  %5250 = select i1 %5249, i32 -1, i32 %5248
  %5251 = and i32 %5250, %5235
  %5252 = icmp eq i32 %5251, 0
  br i1 %5252, label %5641, label %5253

; <label>:5253                                    ; preds = %5222
  br label %5254

; <label>:5254                                    ; preds = %5334, %5253
  %5255 = phi i32 [ %5266, %5334 ], [ %5251, %5253 ]
  %5256 = phi float [ %5335, %5334 ], [ %5224, %5253 ]
  %5257 = phi float [ %5336, %5334 ], [ %5225, %5253 ]
  %5258 = phi float [ %5337, %5334 ], [ %5226, %5253 ]
  %5259 = phi float [ %5338, %5334 ], [ %5227, %5253 ]
  %5260 = phi float [ %5339, %5334 ], [ %5228, %5253 ]
  %5261 = phi float [ %5340, %5334 ], [ %5229, %5253 ]
  %5262 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5255)  ; FirstbitLo(value)
  %5263 = add i32 %5262, %5236
  %5264 = and i32 %5262, 31
  %5265 = shl i32 1, %5264
  %5266 = xor i32 %5265, %5255
  %5267 = mul i32 %5263, 112
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = or i32 %5267, 12
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = add i32 %5267, 44
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = add i32 %5267, 48
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = add i32 %5267, 80
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5287 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = select i1 %158, float %5285, float %5269
  %5289 = select i1 %158, float %5287, float %5270
  %5290 = select i1 %158, float %5286, float %5271
  %5291 = fsub fast float %5280, %116
  %5292 = fsub fast float %5281, %117
  %5293 = fsub fast float %5282, %118
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = call float @dx.op.unary.f32(i32 24, float %5294)  ; Sqrt(value)
  %5296 = fdiv fast float 1.000000e+00, %5295
  %5297 = fmul fast float %5296, %5291
  %5298 = fmul fast float %5296, %5292
  %5299 = fmul fast float %5296, %5293
  %5300 = fadd fast float %5295, %5274
  %5301 = fdiv fast float 1.000000e+00, %5300
  %5302 = fmul float %5277, %5301
  %5303 = fmul float %5302, %5302
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = and i32 %5265, %5251
  %5306 = icmp eq i32 %5305, 0
  br i1 %5306, label %5329, label %5307, !dx.controlflow.hints !73

; <label>:5307                                    ; preds = %5254
  %5308 = lshr i32 %5199, 5
  %5309 = lshr i32 %5200, 5
  %5310 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5308, i32 %5309, i32 %5263, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5311 = extractvalue %dx.types.ResRet.i32 %5310, 0
  %5312 = and i32 %5311, 3
  %5313 = icmp eq i32 %5312, 0
  %5314 = select i1 %5313, float 1.000000e+00, float 0.000000e+00
  %5315 = icmp eq i32 %5312, 3
  br i1 %5315, label %5316, label %5329

; <label>:5316                                    ; preds = %5307
  %5317 = lshr i32 %5311, 10
  %5318 = and i32 %5317, 8160
  %5319 = and i32 %5200, 31
  %5320 = or i32 %5318, %5319
  %5321 = lshr i32 %5311, 1
  %5322 = and i32 %5321, 16352
  %5323 = and i32 %5199, 31
  %5324 = or i32 %5322, %5323
  %5325 = lshr i32 %5311, 23
  %5326 = and i32 %5325, 255
  %5327 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5324, i32 %5320, i32 %5326, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5328 = extractvalue %dx.types.ResRet.f32 %5327, 0
  br label %5329

; <label>:5329                                    ; preds = %5316, %5307, %5254
  %5330 = phi float [ %5328, %5316 ], [ %5314, %5307 ], [ 0.000000e+00, %5254 ]
  %5331 = call float @dx.op.binary.f32(i32 36, float %5330, float %5330)  ; FMin(a,b)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5330, float %5331)  ; FMin(a,b)
  %5333 = fcmp fast ogt float %5332, 0.000000e+00
  br i1 %5333, label %5342, label %5334, !dx.controlflow.hints !74

; <label>:5334                                    ; preds = %5581, %5329
  %5335 = phi float [ %5256, %5329 ], [ %5637, %5581 ]
  %5336 = phi float [ %5257, %5329 ], [ %5638, %5581 ]
  %5337 = phi float [ %5258, %5329 ], [ %5639, %5581 ]
  %5338 = phi float [ %5259, %5329 ], [ %5631, %5581 ]
  %5339 = phi float [ %5260, %5329 ], [ %5632, %5581 ]
  %5340 = phi float [ %5261, %5329 ], [ %5633, %5581 ]
  %5341 = icmp eq i32 %5255, %5265
  br i1 %5341, label %5640, label %5254

; <label>:5342                                    ; preds = %5329
  %5343 = fmul fast float %5330, %5288
  %5344 = fmul fast float %5330, %5289
  %5345 = fmul fast float %5330, %5290
  %5346 = fsub fast float %5282, %4717
  %5347 = fcmp fast ogt float %5346, 0.000000e+00
  %5348 = fsub fast float %118, %4717
  %5349 = fcmp fast ogt float %5348, 0.000000e+00
  %5350 = xor i1 %5349, %5347
  %5351 = fsub fast float %4717, %5282
  %5352 = fmul fast float %5351, 2.000000e+00
  %5353 = fadd fast float %5352, %5282
  %5354 = select i1 %5350, float %5282, float %5353
  %5355 = fsub fast float %5354, %118
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5355, float %5291, float %5292, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = call float @dx.op.unary.f32(i32 25, float %5356)  ; Rsqrt(value)
  %5358 = fmul fast float %5357, %5291
  %5359 = fmul fast float %5357, %5292
  %5360 = fmul fast float %5357, %5355
  %5361 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = fdiv fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5363, %5361
  %5365 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5348, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fcmp fast ogt float %5365, 0.000000e+00
  %5367 = fcmp fast olt float %5365, 0.000000e+00
  %5368 = zext i1 %5366 to i32
  %5369 = zext i1 %5367 to i32
  %5370 = sub nsw i32 %5368, %5369
  %5371 = sitofp i32 %5370 to float
  %5372 = fsub fast float %5354, %4717
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5372, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fcmp fast ogt float %5373, 0.000000e+00
  %5375 = fcmp fast olt float %5373, 0.000000e+00
  %5376 = zext i1 %5374 to i32
  %5377 = zext i1 %5375 to i32
  %5378 = sub nsw i32 %5376, %5377
  %5379 = sitofp i32 %5378 to float
  %5380 = fcmp fast une float %5371, %5379
  br i1 %5380, label %5381, label %5391

; <label>:5381                                    ; preds = %5342
  %5382 = fmul fast float %5364, %5360
  %5383 = fmul fast float %5364, %5359
  %5384 = fmul fast float %5364, %5358
  %5385 = fmul fast float %5384, %5384
  %5386 = fmul fast float %5383, %5383
  %5387 = fadd fast float %5385, %5386
  %5388 = fmul fast float %5382, %5382
  %5389 = fadd fast float %5387, %5388
  %5390 = call float @dx.op.unary.f32(i32 24, float %5389)  ; Sqrt(value)
  br label %5403

; <label>:5391                                    ; preds = %5342
  %5392 = icmp slt i32 %5370, 0
  br i1 %5392, label %5393, label %5403

; <label>:5393                                    ; preds = %5391
  %5394 = fsub fast float %116, %5280
  %5395 = fsub fast float %117, %5281
  %5396 = fsub fast float %118, %5354
  %5397 = fmul fast float %5394, %5394
  %5398 = fmul fast float %5395, %5395
  %5399 = fadd fast float %5397, %5398
  %5400 = fmul fast float %5396, %5396
  %5401 = fadd fast float %5399, %5400
  %5402 = call float @dx.op.unary.f32(i32 24, float %5401)  ; Sqrt(value)
  br label %5403

; <label>:5403                                    ; preds = %5393, %5391, %5381
  %5404 = phi float [ %5390, %5381 ], [ %5402, %5393 ], [ 0.000000e+00, %5391 ]
  %5405 = and i1 %5349, %5347
  %5406 = fsub fast float -0.000000e+00, %5404
  %5407 = select i1 %5405, float -0.000000e+00, float %5406
  %5408 = fmul fast float %4718, 0x3FF7154760000000
  %5409 = fmul fast float %5408, %5407
  %5410 = fmul fast float %4719, 0x3FF7154760000000
  %5411 = fmul fast float %5410, %5407
  %5412 = fmul fast float %4720, 0x3FF7154760000000
  %5413 = fmul fast float %5412, %5407
  %5414 = call float @dx.op.unary.f32(i32 21, float %5409)  ; Exp(value)
  %5415 = call float @dx.op.unary.f32(i32 21, float %5411)  ; Exp(value)
  %5416 = call float @dx.op.unary.f32(i32 21, float %5413)  ; Exp(value)
  %5417 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5418 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5420 = fmul fast float %5343, %5417
  %5421 = fmul fast float %5344, %5418
  %5422 = fmul fast float %5345, %5419
  %5423 = fsub fast float %5297, %4917
  %5424 = fsub fast float %5298, %4916
  %5425 = fsub fast float %5299, %4915
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5427, %5424
  %5430 = fmul fast float %5427, %5425
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5299, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4913, float %4912, float %5428, float %5429, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5434 = fmul fast float %5433, %5304
  %5435 = fmul fast float %5433, %5433
  %5436 = fmul fast float %5435, %4935
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fmul fast float %5434, %5437
  %5439 = bitcast float %5294 to i32
  %5440 = ashr i32 %5439, 1
  %5441 = sub nsw i32 1597463007, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5442, %5291
  %5444 = fmul fast float %5442, %5292
  %5445 = fmul fast float %5442, %5293
  %5446 = fsub fast float %5443, %4917
  %5447 = fsub fast float %5444, %4916
  %5448 = fsub fast float %5445, %4915
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 25, float %5449)  ; Rsqrt(value)
  %5451 = fmul fast float %5446, %5450
  %5452 = fmul fast float %5447, %5450
  %5453 = fmul fast float %5448, %5450
  %5454 = call float @dx.op.dot3.f32(i32 55, float %4924, float %4925, float %4926, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = fmul fast float %5454, %5454
  %5456 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5457 = fsub fast float 1.000000e+00, %4927
  %5458 = call float @dx.op.binary.f32(i32 35, float %5457, float 0x3F847AE140000000)  ; FMax(a,b)
  %5459 = fmul fast float %5458, %5458
  %5460 = fmul fast float %5459, %5459
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = fmul fast float %4931, %4931
  %5463 = fmul fast float %5462, %5461
  %5464 = fadd fast float %5463, %5460
  %5465 = bitcast float %5464 to i32
  %5466 = ashr i32 %5465, 1
  %5467 = add nsw i32 %5466, 532487669
  %5468 = bitcast i32 %5467 to float
  %5469 = fadd fast float %5468, %4931
  %5470 = fmul fast float %5460, %5455
  %5471 = fsub fast float 1.000000e+00, %5455
  %5472 = fadd fast float %5471, %5470
  %5473 = fmul fast float %5456, %5456
  %5474 = fmul fast float %5473, %5461
  %5475 = fadd fast float %5474, %5460
  %5476 = bitcast float %5475 to i32
  %5477 = ashr i32 %5476, 1
  %5478 = add nsw i32 %5477, 532487669
  %5479 = bitcast i32 %5478 to float
  %5480 = fadd fast float %5479, %5456
  %5481 = fmul fast float %5472, %5472
  %5482 = fmul fast float %5481, %5469
  %5483 = fmul fast float %5482, %5480
  %5484 = fdiv fast float 1.000000e+00, %5483
  %5485 = bitcast float %5460 to i32
  %5486 = sitofp i32 %5485 to float
  %5487 = fmul fast float %5486, 0x3FE7F73180000000
  %5488 = fadd fast float %5487, 0x41AFE27C40000000
  %5489 = fptosi float %5488 to i32
  %5490 = bitcast i32 %5489 to float
  %5491 = fmul fast float %5277, 0x3FD80E9D60000000
  %5492 = fmul fast float %5491, %5442
  %5493 = fadd fast float %5490, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5460, %5484
  %5498 = fmul fast float %5497, %5490
  %5499 = fmul fast float %5498, %5496
  %5500 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = bitcast float %5501 to i32
  %5503 = sitofp i32 %5502 to float
  %5504 = fmul fast float %5503, 5.000000e+00
  %5505 = fadd fast float %5504, 0xC1EFBF8940000000
  %5506 = fptosi float %5505 to i32
  %5507 = bitcast i32 %5506 to float
  %5508 = fsub fast float 1.000000e+00, %4918
  %5509 = fsub fast float 1.000000e+00, %4919
  %5510 = fsub fast float 1.000000e+00, %4929
  %5511 = fmul fast float %5507, %5508
  %5512 = fmul fast float %5507, %5509
  %5513 = fmul fast float %5507, %5510
  %5514 = fadd fast float %5511, %4918
  %5515 = fadd fast float %5512, %4919
  %5516 = fadd fast float %5513, %4929
  %5517 = fcmp fast ogt float %4316, 0.000000e+00
  br i1 %5517, label %5518, label %5541

; <label>:5518                                    ; preds = %5403
  %5519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4316, float %5500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.ResRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.ResRet.f32 %5519, 2
  %5523 = fadd fast float %5520, -5.000000e-01
  %5524 = fadd fast float %5521, -5.000000e-01
  %5525 = fadd fast float %5522, -5.000000e-01
  %5526 = fmul fast float %4918, 4.000000e+00
  %5527 = fmul fast float %5526, %5508
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %4919, 4.000000e+00
  %5530 = fmul fast float %5529, %5509
  %5531 = fmul fast float %5530, %5524
  %5532 = fmul fast float %4929, 4.000000e+00
  %5533 = fmul fast float %5532, %5510
  %5534 = fmul fast float %5533, %5525
  %5535 = fadd fast float %5528, %5514
  %5536 = fadd fast float %5531, %5515
  %5537 = fadd fast float %5534, %5516
  %5538 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5540 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  br label %5541

; <label>:5541                                    ; preds = %5518, %5403
  %5542 = phi float [ %5538, %5518 ], [ %5514, %5403 ]
  %5543 = phi float [ %5539, %5518 ], [ %5515, %5403 ]
  %5544 = phi float [ %5540, %5518 ], [ %5516, %5403 ]
  %5545 = fmul fast float %5431, 9.843750e-01
  %5546 = fmul fast float %4927, 9.843750e-01
  %5547 = fadd fast float %5545, 7.812500e-03
  %5548 = fadd fast float %5546, 7.812500e-03
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5547, float %5548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 3
  %5552 = fmul fast float %5550, %4918
  %5553 = fmul fast float %5550, %4919
  %5554 = fmul fast float %5550, %4929
  %5555 = fadd fast float %5552, %5551
  %5556 = fadd fast float %5553, %5551
  %5557 = fadd fast float %5554, %5551
  br i1 %5517, label %5558, label %5581

; <label>:5558                                    ; preds = %5541
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4316, float %5431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fmul fast float %4918, 4.000000e+00
  %5567 = fmul fast float %5566, %5508
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %4919, 4.000000e+00
  %5570 = fmul fast float %5569, %5509
  %5571 = fmul fast float %5570, %5564
  %5572 = fmul fast float %4929, 4.000000e+00
  %5573 = fmul fast float %5572, %5510
  %5574 = fmul fast float %5573, %5565
  %5575 = fadd fast float %5568, %5555
  %5576 = fadd fast float %5571, %5556
  %5577 = fadd fast float %5574, %5557
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5581

; <label>:5581                                    ; preds = %5558, %5541
  %5582 = phi float [ %5578, %5558 ], [ %5555, %5541 ]
  %5583 = phi float [ %5579, %5558 ], [ %5556, %5541 ]
  %5584 = phi float [ %5580, %5558 ], [ %5557, %5541 ]
  %5585 = call float @dx.op.binary.f32(i32 35, float %5583, float %5584)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5582, float %5585)  ; FMax(a,b)
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = fmul fast float %5542, %5499
  %5589 = fmul fast float %5543, %5499
  %5590 = fmul fast float %5544, %5499
  %5591 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fcmp fast ogt float %5591, 0x3E7FF19E20000000
  %5593 = fdiv fast float 1.000000e+00, %5591
  %5594 = select i1 %5592, float %5593, float 0.000000e+00
  %5595 = fmul fast float %5594, %4921
  %5596 = fmul fast float %5594, %4922
  %5597 = fmul fast float %5594, %4923
  %5598 = fadd fast float %5595, -1.000000e+00
  %5599 = fadd fast float %5596, -1.000000e+00
  %5600 = fadd fast float %5597, -1.000000e+00
  %5601 = fmul fast float %5598, 5.000000e-01
  %5602 = fmul fast float %5599, 5.000000e-01
  %5603 = fmul fast float %5600, 5.000000e-01
  %5604 = fadd fast float %5601, 1.000000e+00
  %5605 = fadd fast float %5602, 1.000000e+00
  %5606 = fadd fast float %5603, 1.000000e+00
  %5607 = fsub fast float 1.000000e+00, %5432
  %5608 = bitcast float %5607 to i32
  %5609 = sitofp i32 %5608 to float
  %5610 = fmul fast float %5609, 5.000000e+00
  %5611 = fadd fast float %5610, 0xC1EFBF8940000000
  %5612 = fptosi float %5611 to i32
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, %4317
  %5615 = fmul fast float %5587, %5614
  %5616 = fmul fast float %5615, %5604
  %5617 = fmul fast float %5615, %5605
  %5618 = fmul fast float %5615, %5606
  %5619 = fadd fast float %5616, %5588
  %5620 = fadd fast float %5617, %5589
  %5621 = fadd fast float %5618, %5590
  %5622 = fmul fast float %5420, %4313
  %5623 = fmul fast float %5622, %5438
  %5624 = fmul fast float %5623, %5587
  %5625 = fmul fast float %5421, %4313
  %5626 = fmul fast float %5625, %5438
  %5627 = fmul fast float %5626, %5587
  %5628 = fmul fast float %5422, %4313
  %5629 = fmul fast float %5628, %5438
  %5630 = fmul fast float %5629, %5587
  %5631 = fadd fast float %5624, %5259
  %5632 = fadd fast float %5627, %5260
  %5633 = fadd fast float %5630, %5261
  %5634 = fmul fast float %5623, %5619
  %5635 = fmul fast float %5626, %5620
  %5636 = fmul fast float %5629, %5621
  %5637 = fadd fast float %5634, %5256
  %5638 = fadd fast float %5635, %5257
  %5639 = fadd fast float %5636, %5258
  br label %5334

; <label>:5640                                    ; preds = %5334
  br label %5641

; <label>:5641                                    ; preds = %5640, %5222
  %5642 = phi float [ %5224, %5222 ], [ %5335, %5640 ]
  %5643 = phi float [ %5225, %5222 ], [ %5336, %5640 ]
  %5644 = phi float [ %5226, %5222 ], [ %5337, %5640 ]
  %5645 = phi float [ %5227, %5222 ], [ %5338, %5640 ]
  %5646 = phi float [ %5228, %5222 ], [ %5339, %5640 ]
  %5647 = phi float [ %5229, %5222 ], [ %5340, %5640 ]
  %5648 = add i32 %5223, 1
  %5649 = icmp ugt i32 %5648, %5219
  br i1 %5649, label %5650, label %5222

; <label>:5650                                    ; preds = %5641
  br label %5651

; <label>:5651                                    ; preds = %5650, %5198, %5188
  %5652 = phi float [ %5189, %5188 ], [ %5189, %5198 ], [ %5642, %5650 ]
  %5653 = phi float [ %5190, %5188 ], [ %5190, %5198 ], [ %5643, %5650 ]
  %5654 = phi float [ %5191, %5188 ], [ %5191, %5198 ], [ %5644, %5650 ]
  %5655 = phi float [ %5192, %5188 ], [ %5192, %5198 ], [ %5645, %5650 ]
  %5656 = phi float [ %5193, %5188 ], [ %5193, %5198 ], [ %5646, %5650 ]
  %5657 = phi float [ %5194, %5188 ], [ %5194, %5198 ], [ %5647, %5650 ]
  %5658 = call float @dx.op.unary.f32(i32 24, float %4921)  ; Sqrt(value)
  %5659 = call float @dx.op.unary.f32(i32 24, float %4922)  ; Sqrt(value)
  %5660 = call float @dx.op.unary.f32(i32 24, float %4923)  ; Sqrt(value)
  %5661 = fmul fast float %5658, %5655
  %5662 = fmul fast float %5659, %5656
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  br i1 %158, label %5665, label %5686

; <label>:5665                                    ; preds = %5651
  %5666 = fadd fast float %5657, %4319
  %5667 = fmul fast float %5666, %4320
  %5668 = fsub fast float 1.000000e+00, %4320
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 3
  %5672 = fmul fast float %5671, %5669
  %5673 = fadd fast float %5672, %5667
  %5674 = fsub fast float 1.000000e+00, %4931
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = fmul fast float %5676, %5674
  %5678 = fsub fast float %5673, %5677
  %5679 = fadd fast float %5662, %5661
  %5680 = fmul fast float %5664, %5679
  %5681 = extractvalue %dx.types.CBufRet.f32 %5670, 1
  %5682 = fsub fast float %5678, %5681
  %5683 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5684 = fmul fast float %5682, %5683
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  br label %5702

; <label>:5686                                    ; preds = %5651
  %5687 = fmul fast float %5660, %5657
  %5688 = fmul fast float %5664, %5661
  %5689 = fmul fast float %5664, %5662
  %5690 = fmul fast float %5687, %5664
  %5691 = add i32 %33, 356
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = and i32 %5693, 32
  %5695 = icmp eq i32 %5694, 0
  br i1 %5695, label %5702, label %5696

; <label>:5696                                    ; preds = %5686
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = fmul fast float %5698, 0x3FE99999A0000000
  %5700 = fadd fast float %5698, %5688
  %5701 = fadd fast float %5699, %5690
  br label %5702

; <label>:5702                                    ; preds = %5696, %5686, %5665
  %5703 = phi float [ %5680, %5665 ], [ %5700, %5696 ], [ %5688, %5686 ]
  %5704 = phi float [ %5685, %5665 ], [ %5689, %5696 ], [ %5689, %5686 ]
  %5705 = phi float [ 1.000000e+00, %5665 ], [ %5701, %5696 ], [ %5690, %5686 ]
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = fmul fast float %5707, %5653
  %5709 = fmul fast float %5707, %5654
  %5710 = fadd fast float %5653, %5652
  %5711 = select i1 %158, float %5710, float %5652
  %5712 = fmul float %5711, %5707
  %5713 = select i1 %158, float 0.000000e+00, float %5708
  %5714 = select i1 %158, float 0.000000e+00, float %5709
  %5715 = fmul fast float %5703, %5658
  %5716 = fmul fast float %5704, %5659
  %5717 = fmul fast float %5705, %5660
  %5718 = fadd fast float %5712, %5715
  %5719 = fadd fast float %5713, %5716
  %5720 = fadd fast float %5714, %5717
  %5721 = select i1 %158, float %5704, float %5719
  %5722 = select i1 %158, float %5705, float %5720
  %5723 = call float @dx.op.binary.f32(i32 36, float %5718, float 3.225500e+04)  ; FMin(a,b)
  %5724 = call float @dx.op.binary.f32(i32 36, float %5721, float 3.225500e+04)  ; FMin(a,b)
  %5725 = call float @dx.op.binary.f32(i32 36, float %5722, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
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
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, null}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
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

