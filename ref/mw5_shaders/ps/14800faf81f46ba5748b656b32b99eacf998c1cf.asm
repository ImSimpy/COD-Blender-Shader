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
; shader hash: ab8ae764d6f6409c59380a2b7bc7e289
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
  br i1 %409, label %897, label %410

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
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 26624
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %882, label %859

; <label>:859                                     ; preds = %851
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 16384
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %882, label %864

; <label>:864                                     ; preds = %859
  %865 = and i32 %861, 1048576
  %866 = icmp ne i32 %865, 0
  %867 = add i32 %33, 476
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %869, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = add i32 %33, 96
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 24
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %873, 0x3F70101020000000
  %880 = select i1 %866, float 0x3F70101020000000, float %879
  %881 = fmul fast float %880, %878
  br label %882

; <label>:882                                     ; preds = %864, %859, %851
  %883 = phi float [ %881, %864 ], [ 0.000000e+00, %859 ], [ 0.000000e+00, %851 ]
  %884 = add i32 %33, 96
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = lshr i32 %886, 8
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = fmul fast float %891, %892
  %894 = fadd fast float %893, %888
  %895 = fmul fast float %894, 0x3F70101020000000
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  br label %897

; <label>:897                                     ; preds = %882, %395
  %898 = phi float [ 0.000000e+00, %395 ], [ %805, %882 ]
  %899 = phi float [ 0.000000e+00, %395 ], [ %806, %882 ]
  %900 = phi float [ 0.000000e+00, %395 ], [ %724, %882 ]
  %901 = phi float [ 0.000000e+00, %395 ], [ %725, %882 ]
  %902 = phi float [ 0.000000e+00, %395 ], [ %726, %882 ]
  %903 = phi float [ 0.000000e+00, %395 ], [ %852, %882 ]
  %904 = phi float [ 0.000000e+00, %395 ], [ %853, %882 ]
  %905 = phi float [ 0.000000e+00, %395 ], [ %854, %882 ]
  %906 = phi float [ 0.000000e+00, %395 ], [ %710, %882 ]
  %907 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %882 ]
  %908 = phi float [ 0.000000e+00, %395 ], [ %804, %882 ]
  %909 = phi float [ 0.000000e+00, %395 ], [ %807, %882 ]
  %910 = phi float [ 0.000000e+00, %395 ], [ %883, %882 ]
  %911 = phi float [ 0.000000e+00, %395 ], [ %896, %882 ]
  br i1 %346, label %1792, label %912

; <label>:912                                     ; preds = %897
  %913 = icmp ult i32 %401, 2
  %914 = add i32 %33, 40
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %33, 44
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = or i32 %919, %916
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %1792, label %922

; <label>:922                                     ; preds = %912
  %923 = and i32 %916, 262144
  %924 = icmp ne i32 %923, 0
  %925 = select i1 %924, float %36, float 1.000000e+00
  %926 = select i1 %924, float %37, float 0.000000e+00
  %927 = select i1 %924, float %38, float 0.000000e+00
  %928 = select i1 %924, float %39, float 1.000000e+00
  %929 = select i1 %924, float %40, float %56
  %930 = select i1 %924, float %41, float %57
  %931 = add i32 %33, 300
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = fmul fast float %935, 0x3F50624DE0000000
  %937 = add i32 %33, 104
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = lshr i32 %939, 16
  %941 = and i32 %940, 255
  %942 = lshr i32 %939, 24
  %943 = add i32 %33, 308
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 65535
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = lshr i32 %945, 16
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = add i32 %33, 48
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 22
  %954 = shl nuw nsw i32 %953, 5
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = shl i32 %952, 4
  %957 = and i32 %956, 32752
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %952, 7
  %960 = and i32 %959, 32752
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %964 = fmul fast float %963, 1.000000e+03
  %965 = fmul fast float %256, %964
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fadd fast float %966, %246
  %968 = fmul fast float %257, %964
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = fadd fast float %969, %248
  %971 = fmul fast float %936, %964
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = fmul fast float %972, 0x401921FB60000000
  %974 = fadd fast float %973, %955
  %975 = call float @dx.op.unary.f32(i32 13, float %974)  ; Sin(value)
  %976 = call float @dx.op.unary.f32(i32 12, float %974)  ; Cos(value)
  %977 = fsub fast float -0.000000e+00, %975
  %978 = fadd fast float %929, -5.000000e-01
  %979 = fadd fast float %930, -5.000000e-01
  %980 = fmul fast float %947, %978
  %981 = fmul fast float %949, %979
  %982 = fadd fast float %980, 5.000000e-01
  %983 = fadd fast float %981, 5.000000e-01
  %984 = fmul fast float %958, %982
  %985 = fmul fast float %961, %983
  %986 = fmul fast float %976, %984
  %987 = call float @dx.op.tertiary.f32(i32 46, float %977, float %985, float %986)  ; FMad(a,b,c)
  %988 = fmul fast float %975, %984
  %989 = call float @dx.op.tertiary.f32(i32 46, float %976, float %985, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %967, %987
  %991 = fadd fast float %970, %989
  %992 = icmp ugt i32 %941, 1
  %993 = icmp ugt i32 %939, 33554431
  %994 = or i1 %993, %992
  br i1 %994, label %995, label %1020

; <label>:995                                     ; preds = %922
  %996 = add i32 %33, 244
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = lshr i32 %998, 16
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = fmul fast float %963, %1000
  %1002 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1003 = mul nuw nsw i32 %941, %942
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1002, %1004
  %1006 = call float @dx.op.unary.f32(i32 27, float %1005)  ; Round_ni(value)
  %1007 = fptoui float %1006 to i32
  %1008 = urem i32 %1007, %941
  %1009 = udiv i32 %1007, %942
  %1010 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %1011 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %1012 = uitofp i32 %1008 to float
  %1013 = uitofp i32 %1009 to float
  %1014 = fadd fast float %1010, %1012
  %1015 = fadd fast float %1011, %1013
  %1016 = uitofp i32 %941 to float
  %1017 = uitofp i32 %942 to float
  %1018 = fdiv fast float %1014, %1016
  %1019 = fdiv fast float %1015, %1017
  br label %1020

; <label>:1020                                    ; preds = %995, %922
  %1021 = phi float [ %1018, %995 ], [ %990, %922 ]
  %1022 = phi float [ %1019, %995 ], [ %991, %922 ]
  %1023 = and i32 %916, 16777216
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1134, label %1025

; <label>:1025                                    ; preds = %1020
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1030 = fadd fast float %1027, %131
  %1031 = fadd fast float %1028, %132
  %1032 = fadd fast float %1029, %133
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = icmp eq i32 %34, 65535
  br i1 %1036, label %1131, label %1037

; <label>:1037                                    ; preds = %1025
  %1038 = lshr i32 %34, 1
  %1039 = shl i32 %1038, 2
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %34, 1
  %1043 = icmp ne i32 %1042, 0
  %1044 = lshr i32 %1041, 16
  %1045 = and i32 %1041, 65535
  %1046 = select i1 %1043, i32 %1044, i32 %1045
  %1047 = icmp eq i32 %1046, 65535
  br i1 %1047, label %1127, label %1048

; <label>:1048                                    ; preds = %1037
  %1049 = mul nuw nsw i32 %1046, 40
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = add nuw nsw i32 %1049, 12
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = add nuw nsw i32 %1049, 24
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = add nuw nsw i32 %1049, 36
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = fsub fast float %1030, %1051
  %1068 = fsub fast float %1031, %1052
  %1069 = fsub fast float %1032, %1053
  %1070 = fmul fast float %1066, %1067
  %1071 = fmul fast float %1066, %1068
  %1072 = fmul fast float %1066, %1069
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fmul fast float %1076, %1056
  %1080 = fmul fast float %1077, %1057
  %1081 = fmul fast float %1078, %1058
  %1082 = shl i32 %34, 2
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1088 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1086, %dx.types.Handle %30, float %1087, float %1088, float %1089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = fmul fast float %1091, 1.023000e+03
  %1095 = fmul fast float %1092, 1.023000e+03
  %1096 = fmul fast float %1093, 1.023000e+03
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = fsub fast float %1070, %1073
  %1104 = fsub fast float %1071, %1074
  %1105 = fsub fast float %1072, %1075
  %1106 = fmul fast float %1103, 7.500000e-01
  %1107 = fmul fast float %1104, 7.500000e-01
  %1108 = fmul fast float %1105, 7.500000e-01
  %1109 = fadd fast float %1073, 1.250000e-01
  %1110 = fadd fast float %1109, %1106
  %1111 = fadd fast float %1110, %1100
  %1112 = fadd fast float %1074, 1.250000e-01
  %1113 = fadd fast float %1112, %1107
  %1114 = fadd fast float %1113, %1101
  %1115 = fadd fast float %1075, 1.250000e-01
  %1116 = fadd fast float %1115, %1108
  %1117 = fadd fast float %1116, %1102
  %1118 = fmul fast float %1111, %1061
  %1119 = fmul fast float %1114, %1062
  %1120 = fmul fast float %1117, %1063
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1124, %dx.types.Handle %28, float %1118, float %1119, float %1120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  br label %1127

; <label>:1127                                    ; preds = %1048, %1037
  %1128 = phi float [ %1126, %1048 ], [ -1.000000e+00, %1037 ]
  %1129 = fadd fast float %1128, %1035
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1127, %1025
  %1132 = phi float [ %1130, %1127 ], [ %1035, %1025 ]
  %1133 = fmul fast float %1132, %398
  br label %1134

; <label>:1134                                    ; preds = %1131, %1020
  %1135 = phi float [ %1133, %1131 ], [ %398, %1020 ]
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 256
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1186, label %1140

; <label>:1140                                    ; preds = %1134
  %1141 = add i32 %33, 444
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = add i32 %33, 116
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = shl i32 %1150, 4
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = lshr i32 %1150, 7
  %1155 = and i32 %1154, 32752
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = fsub fast float 1.000000e+00, %1135
  %1158 = call float @dx.op.binary.f32(i32 35, float %1157, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1159 = bitcast float %1135 to i32
  %1160 = sitofp i32 %1159 to float
  %1161 = fadd fast float %1160, 0xC1CFBF8940000000
  %1162 = fmul fast float %1156, %1161
  %1163 = fadd fast float %1162, 0x41CFBF8940000000
  %1164 = fptosi float %1163 to i32
  %1165 = bitcast i32 %1164 to float
  %1166 = bitcast float %1158 to i32
  %1167 = sitofp i32 %1166 to float
  %1168 = fadd fast float %1167, 0xC1CFBF8940000000
  %1169 = fmul fast float %1168, %1156
  %1170 = fadd fast float %1169, 0x41CFBF8940000000
  %1171 = fptosi float %1170 to i32
  %1172 = bitcast i32 %1171 to float
  %1173 = fmul fast float %1165, %1153
  %1174 = fmul fast float %1172, %1153
  %1175 = fsub fast float %1158, %1173
  %1176 = fadd fast float %1174, %1158
  %1177 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1178 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1179 = fsub fast float %1147, %1177
  %1180 = fsub fast float %1178, %1177
  %1181 = bitcast float %1180 to i32
  %1182 = sub nsw i32 2129859010, %1181
  %1183 = bitcast i32 %1182 to float
  %1184 = fmul fast float %1183, %1179
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  br label %1186

; <label>:1186                                    ; preds = %1140, %1134
  %1187 = phi float [ %1185, %1140 ], [ %1135, %1134 ]
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 128
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1208, label %1192

; <label>:1192                                    ; preds = %1186
  %1193 = add i32 %33, 428
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 524288
  %1203 = icmp ne i32 %1202, 0
  %1204 = fcmp fast ogt float %1199, 0x3FE0101020000000
  %1205 = select i1 %1204, float 1.000000e+00, float 0.000000e+00
  %1206 = select i1 %1203, float %1205, float %1199
  %1207 = fmul fast float %1206, %1187
  br label %1208

; <label>:1208                                    ; preds = %1192, %1186
  %1209 = phi float [ %1207, %1192 ], [ %1187, %1186 ]
  %1210 = fcmp fast ult float %1209, 0x3F70101020000000
  br i1 %1210, label %1792, label %1211

; <label>:1211                                    ; preds = %1208
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 16
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1414, label %1216

; <label>:1216                                    ; preds = %1211
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %33, 380
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1221, 0
  %1223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1223, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = and i32 %1218, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = lshr i32 %1218, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1228, %1230
  %1235 = fadd fast float %1234, %1233
  %1236 = fmul fast float %1235, 0x3F70101000000000
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 512
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1249, label %1241

; <label>:1241                                    ; preds = %1216
  %1242 = add i32 %33, 464
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  br label %1249

; <label>:1249                                    ; preds = %1241, %1216
  %1250 = phi float [ %1248, %1241 ], [ 1.000000e+00, %1216 ]
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 33554432
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1361, label %1255

; <label>:1255                                    ; preds = %1249
  %1256 = add i32 %33, 240
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = lshr i32 %1258, 16
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = add i32 %33, 244
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 65535
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 24
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = and i32 %1269, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = lshr i32 %1269, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = lshr i32 %1269, 16
  %1281 = and i32 %1280, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = add i32 %33, 236
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 24
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = and i32 %1286, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1286, 8
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = lshr i32 %1286, 16
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = bitcast float %1225 to i32
  %1302 = ashr i32 %1301, 1
  %1303 = sub nsw i32 1597463174, %1302
  %1304 = bitcast i32 %1303 to float
  %1305 = fmul fast float %1225, 5.000000e-01
  %1306 = fmul fast float %1304, %1304
  %1307 = fmul fast float %1306, %1305
  %1308 = fsub fast float 1.500000e+00, %1307
  %1309 = fmul fast float %1304, %1225
  %1310 = fmul fast float %1309, %1308
  %1311 = bitcast float %1226 to i32
  %1312 = ashr i32 %1311, 1
  %1313 = sub nsw i32 1597463174, %1312
  %1314 = bitcast i32 %1313 to float
  %1315 = fmul fast float %1226, 5.000000e-01
  %1316 = fmul fast float %1314, %1314
  %1317 = fmul fast float %1316, %1315
  %1318 = fsub fast float 1.500000e+00, %1317
  %1319 = fmul fast float %1314, %1226
  %1320 = fmul fast float %1319, %1318
  %1321 = bitcast float %1227 to i32
  %1322 = ashr i32 %1321, 1
  %1323 = sub nsw i32 1597463174, %1322
  %1324 = bitcast i32 %1323 to float
  %1325 = fmul fast float %1227, 5.000000e-01
  %1326 = fmul fast float %1324, %1324
  %1327 = fmul fast float %1326, %1325
  %1328 = fsub fast float 1.500000e+00, %1327
  %1329 = fmul fast float %1324, %1227
  %1330 = fmul fast float %1329, %1328
  %1331 = fsub fast float %1310, %1292
  %1332 = fsub fast float %1320, %1296
  %1333 = fsub fast float %1330, %1300
  %1334 = fmul fast float %1331, %1260
  %1335 = fmul fast float %1332, %1262
  %1336 = fmul fast float %1333, %1267
  %1337 = fadd fast float %1334, %1275
  %1338 = fadd fast float %1335, %1279
  %1339 = fadd fast float %1336, %1283
  %1340 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1341 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1342 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1343 = fmul fast float %1340, %1340
  %1344 = fmul fast float %1341, %1341
  %1345 = fmul fast float %1342, %1342
  %1346 = fsub fast float %1343, %1225
  %1347 = fsub fast float %1344, %1226
  %1348 = fsub fast float %1345, %1227
  %1349 = fmul fast float %1346, %1250
  %1350 = fmul fast float %1347, %1250
  %1351 = fmul fast float %1348, %1250
  %1352 = fadd fast float %1349, %1225
  %1353 = fadd fast float %1350, %1226
  %1354 = fadd fast float %1351, %1227
  %1355 = fadd fast float %1272, %1236
  %1356 = fsub fast float %1355, %1289
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = fsub fast float %1357, %1236
  %1359 = fmul fast float %1358, %1250
  %1360 = fadd fast float %1359, %1236
  br label %1414

; <label>:1361                                    ; preds = %1249
  %1362 = and i32 %1252, 134217728
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1398, label %1364

; <label>:1364                                    ; preds = %1361
  %1365 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1366 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1367 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1368 = fadd fast float %1365, -5.000000e-01
  %1369 = fadd fast float %1366, -5.000000e-01
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fmul fast float %1368, %1250
  %1372 = fmul fast float %1369, %1250
  %1373 = fmul fast float %1370, %1250
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1378 = call float @dx.op.unary.f32(i32 24, float %1226)  ; Sqrt(value)
  %1379 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1380 = fmul fast float %1374, 2.000000e+00
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1381, %1377
  %1383 = fadd fast float %1382, %1380
  %1384 = fmul fast float %1383, %1377
  %1385 = fmul fast float %1375, 2.000000e+00
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = fmul fast float %1386, %1378
  %1388 = fadd fast float %1387, %1385
  %1389 = fmul fast float %1388, %1378
  %1390 = fmul fast float %1376, 2.000000e+00
  %1391 = fsub fast float 1.000000e+00, %1390
  %1392 = fmul fast float %1391, %1379
  %1393 = fadd fast float %1392, %1390
  %1394 = fmul fast float %1393, %1379
  %1395 = fmul fast float %1384, %1384
  %1396 = fmul fast float %1389, %1389
  %1397 = fmul fast float %1394, %1394
  br label %1414

; <label>:1398                                    ; preds = %1361
  %1399 = fmul fast float %233, %233
  %1400 = fmul fast float %237, %237
  %1401 = fmul fast float %241, %241
  %1402 = fadd fast float %1399, -1.000000e+00
  %1403 = fadd fast float %1400, -1.000000e+00
  %1404 = fadd fast float %1401, -1.000000e+00
  %1405 = fmul fast float %1250, %1402
  %1406 = fmul fast float %1250, %1403
  %1407 = fmul fast float %1250, %1404
  %1408 = fadd fast float %1405, 1.000000e+00
  %1409 = fadd fast float %1406, 1.000000e+00
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fmul fast float %1408, %1225
  %1412 = fmul fast float %1409, %1226
  %1413 = fmul fast float %1410, %1227
  br label %1414

; <label>:1414                                    ; preds = %1398, %1364, %1255, %1211
  %1415 = phi float [ %1360, %1255 ], [ %1236, %1364 ], [ %1236, %1398 ], [ 0x3FA23C0BE0000000, %1211 ]
  %1416 = phi float [ %1352, %1255 ], [ %1395, %1364 ], [ %1411, %1398 ], [ 1.000000e+00, %1211 ]
  %1417 = phi float [ %1353, %1255 ], [ %1396, %1364 ], [ %1412, %1398 ], [ 1.000000e+00, %1211 ]
  %1418 = phi float [ %1354, %1255 ], [ %1397, %1364 ], [ %1413, %1398 ], [ 1.000000e+00, %1211 ]
  %1419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.i32 %1419, 1
  %1421 = and i32 %1420, 1
  %1422 = icmp ne i32 %1421, 0
  %1423 = add i32 %33, 356
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 32
  %1427 = icmp ne i32 %1426, 0
  %1428 = and i1 %1422, %1427
  %1429 = select i1 %1428, float 1.000000e+00, float %1416
  %1430 = select i1 %1428, float 0x3FD3333340000000, float %1417
  %1431 = select i1 %1428, float 0x3FD3333340000000, float %1418
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 32
  %1435 = icmp eq i32 %1434, 0
  br i1 %1435, label %1508, label %1436

; <label>:1436                                    ; preds = %1414
  %1437 = add i32 %33, 108
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %33, 396
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1442, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1444, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.ResRet.f32 %1445, 3
  %1450 = and i32 %1439, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1439, 8
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1439, 16
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = fmul fast float %1446, %1451
  %1460 = fadd fast float %1459, %1454
  %1461 = fmul fast float %1460, 0x3F70101000000000
  %1462 = fadd fast float %1447, -5.000000e-01
  %1463 = fadd fast float %1449, -5.000000e-01
  %1464 = fmul fast float %1462, %1458
  %1465 = fmul fast float %1463, %1458
  %1466 = fadd fast float %1464, 5.000000e-01
  %1467 = fadd fast float %1465, 5.000000e-01
  %1468 = fmul fast float %1466, 2.000000e+00
  %1469 = fadd fast float %1468, -1.000000e+00
  %1470 = fmul fast float %1467, 2.000000e+00
  %1471 = fadd fast float %1470, -1.000000e+00
  %1472 = fadd fast float %1469, %1471
  %1473 = fmul fast float %1472, 5.000000e-01
  %1474 = fsub fast float %1469, %1471
  %1475 = fmul fast float %1474, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1479 = fsub fast float %1477, %1478
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1473, float %1475, float %1479, float %1473, float %1475, float %1479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.unary.f32(i32 25, float %1480)  ; Rsqrt(value)
  %1482 = fmul fast float %1473, %1481
  %1483 = fmul fast float %1475, %1481
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 67108864
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1504, label %1488

; <label>:1488                                    ; preds = %1436
  %1489 = add i32 %33, 296
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = lshr i32 %1491, 16
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float %1461, %1499
  %1501 = fmul fast float %1500, %1493
  %1502 = fadd fast float %1501, %1497
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  br label %1504

; <label>:1504                                    ; preds = %1488, %1436
  %1505 = phi float [ %1503, %1488 ], [ %1461, %1436 ]
  %1506 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1483, float %925, float %926)  ; Dot2(ax,ay,bx,by)
  %1507 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1483, float %927, float %928)  ; Dot2(ax,ay,bx,by)
  br label %1508

; <label>:1508                                    ; preds = %1504, %1414
  %1509 = phi float [ %1505, %1504 ], [ 0x3FD6666660000000, %1414 ]
  %1510 = phi float [ %1506, %1504 ], [ 0.000000e+00, %1414 ]
  %1511 = phi float [ %1507, %1504 ], [ 0.000000e+00, %1414 ]
  %1512 = phi float [ %1448, %1504 ], [ 1.000000e+00, %1414 ]
  %1513 = add i32 %33, 176
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = lshr i32 %1515, 22
  %1517 = shl nuw nsw i32 %1516, 5
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 64
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1556, label %1523

; <label>:1523                                    ; preds = %1508
  %1524 = add i32 %33, 412
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %1526, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 131072
  %1532 = icmp eq i32 %1531, 0
  %1533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1533, 2
  %1537 = fmul fast float %1534, %221
  %1538 = fmul fast float %1535, %224
  %1539 = fmul fast float %1536, %227
  br i1 %1532, label %1546, label %1540

; <label>:1540                                    ; preds = %1523
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1543 = fmul fast float %1542, %1537
  %1544 = fmul fast float %1542, %1538
  %1545 = fmul fast float %1542, %1539
  br label %1546

; <label>:1546                                    ; preds = %1540, %1523
  %1547 = phi float [ %1543, %1540 ], [ %1537, %1523 ]
  %1548 = phi float [ %1544, %1540 ], [ %1538, %1523 ]
  %1549 = phi float [ %1545, %1540 ], [ %1539, %1523 ]
  %1550 = fmul fast float %1547, %1518
  %1551 = select i1 %173, float %1550, float %1547
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1548, float %1549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = select i1 %173, float 0.000000e+00, float %1547
  %1554 = select i1 %173, float %1552, float %1548
  %1555 = select i1 %173, float 0.000000e+00, float %1549
  br label %1556

; <label>:1556                                    ; preds = %1546, %1508
  %1557 = phi float [ %1553, %1546 ], [ 0.000000e+00, %1508 ]
  %1558 = phi float [ %1554, %1546 ], [ 0.000000e+00, %1508 ]
  %1559 = phi float [ %1555, %1546 ], [ 0.000000e+00, %1508 ]
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 26624
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1587, label %1564

; <label>:1564                                    ; preds = %1556
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 16384
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1587, label %1569

; <label>:1569                                    ; preds = %1564
  %1570 = and i32 %1566, 1048576
  %1571 = icmp ne i32 %1570, 0
  %1572 = add i32 %33, 480
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = add i32 %33, 112
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = lshr i32 %1581, 24
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1578, 0x3F70101020000000
  %1585 = select i1 %1571, float 0x3F70101020000000, float %1584
  %1586 = fmul fast float %1585, %1583
  br label %1587

; <label>:1587                                    ; preds = %1569, %1564, %1556
  %1588 = phi float [ %1586, %1569 ], [ 0.000000e+00, %1564 ], [ 0.000000e+00, %1556 ]
  %1589 = add i32 %33, 112
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1591, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = fmul fast float %1596, %1597
  %1599 = fadd fast float %1598, %1593
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  br i1 %913, label %1602, label %1610

; <label>:1602                                    ; preds = %1587
  %1603 = fsub fast float 1.000000e+00, %1209
  %1604 = fmul fast float %1603, %900
  %1605 = fmul fast float %1603, %901
  %1606 = fmul fast float %1603, %902
  %1607 = fmul fast float %1603, %903
  %1608 = fmul fast float %1603, %904
  %1609 = fmul fast float %1603, %905
  br label %1610

; <label>:1610                                    ; preds = %1602, %1587
  %1611 = phi float [ %1604, %1602 ], [ %900, %1587 ]
  %1612 = phi float [ %1605, %1602 ], [ %901, %1587 ]
  %1613 = phi float [ %1606, %1602 ], [ %902, %1587 ]
  %1614 = phi float [ %1607, %1602 ], [ %903, %1587 ]
  %1615 = phi float [ %1608, %1602 ], [ %904, %1587 ]
  %1616 = phi float [ %1609, %1602 ], [ %905, %1587 ]
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 3
  %1620 = icmp eq i32 %1619, 3
  br i1 %1620, label %1699, label %1621

; <label>:1621                                    ; preds = %1610
  %1622 = and i32 %1618, 16
  %1623 = icmp ne i32 %1622, 0
  %1624 = select i1 %1623, float %1209, float 0.000000e+00
  %1625 = icmp eq i32 %1619, 0
  br i1 %1625, label %1626, label %1654

; <label>:1626                                    ; preds = %1621
  %1627 = and i32 %1618, 64
  %1628 = icmp ne i32 %1627, 0
  %1629 = select i1 %1628, float %1209, float 0.000000e+00
  %1630 = fsub fast float %1429, %1611
  %1631 = fsub fast float %1430, %1612
  %1632 = fsub fast float %1431, %1613
  %1633 = fmul fast float %1624, %1630
  %1634 = fmul fast float %1624, %1631
  %1635 = fmul fast float %1624, %1632
  %1636 = fadd fast float %1633, %1611
  %1637 = fadd fast float %1634, %1612
  %1638 = fadd fast float %1635, %1613
  %1639 = fsub fast float %1415, %906
  %1640 = fmul fast float %1624, %1639
  %1641 = fadd fast float %1640, %906
  %1642 = fsub fast float %1557, %1614
  %1643 = fsub fast float %1558, %1615
  %1644 = fsub fast float %1559, %1616
  %1645 = fmul fast float %1629, %1642
  %1646 = fmul fast float %1629, %1643
  %1647 = fmul fast float %1629, %1644
  %1648 = fadd fast float %1645, %1614
  %1649 = fadd fast float %1646, %1615
  %1650 = fadd fast float %1647, %1616
  %1651 = fsub fast float %1601, %911
  %1652 = fmul fast float %1624, %1651
  %1653 = fadd fast float %1652, %911
  br label %1699

; <label>:1654                                    ; preds = %1621
  %1655 = icmp eq i32 %1619, 1
  br i1 %1655, label %1656, label %1669

; <label>:1656                                    ; preds = %1654
  %1657 = fadd fast float %1429, -1.000000e+00
  %1658 = fadd fast float %1430, -1.000000e+00
  %1659 = fadd fast float %1431, -1.000000e+00
  %1660 = fmul fast float %1624, %1657
  %1661 = fmul fast float %1624, %1658
  %1662 = fmul fast float %1624, %1659
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fmul fast float %1663, %1611
  %1667 = fmul fast float %1664, %1612
  %1668 = fmul fast float %1665, %1613
  br label %1699

; <label>:1669                                    ; preds = %1654
  %1670 = icmp eq i32 %1619, 2
  br i1 %1670, label %1671, label %1699

; <label>:1671                                    ; preds = %1669
  %1672 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1674 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fmul fast float %1675, %1624
  %1679 = fmul fast float %1676, %1624
  %1680 = fmul fast float %1677, %1624
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1611
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1611
  %1689 = fmul fast float %1682, 2.000000e+00
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = fmul fast float %1690, %1612
  %1692 = fadd fast float %1691, %1689
  %1693 = fmul fast float %1692, %1612
  %1694 = fmul fast float %1683, 2.000000e+00
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1695, %1613
  %1697 = fadd fast float %1696, %1694
  %1698 = fmul fast float %1697, %1613
  br label %1699

; <label>:1699                                    ; preds = %1671, %1669, %1656, %1626, %1610
  %1700 = phi float [ %1611, %1610 ], [ %1688, %1671 ], [ %1611, %1669 ], [ %1666, %1656 ], [ %1636, %1626 ]
  %1701 = phi float [ %1612, %1610 ], [ %1693, %1671 ], [ %1612, %1669 ], [ %1667, %1656 ], [ %1637, %1626 ]
  %1702 = phi float [ %1613, %1610 ], [ %1698, %1671 ], [ %1613, %1669 ], [ %1668, %1656 ], [ %1638, %1626 ]
  %1703 = phi float [ %1614, %1610 ], [ %1614, %1671 ], [ %1614, %1669 ], [ %1614, %1656 ], [ %1648, %1626 ]
  %1704 = phi float [ %1615, %1610 ], [ %1615, %1671 ], [ %1615, %1669 ], [ %1615, %1656 ], [ %1649, %1626 ]
  %1705 = phi float [ %1616, %1610 ], [ %1616, %1671 ], [ %1616, %1669 ], [ %1616, %1656 ], [ %1650, %1626 ]
  %1706 = phi float [ %906, %1610 ], [ %906, %1671 ], [ %906, %1669 ], [ %906, %1656 ], [ %1641, %1626 ]
  %1707 = phi float [ %911, %1610 ], [ %911, %1671 ], [ %911, %1669 ], [ %911, %1656 ], [ %1653, %1626 ]
  %1708 = and i32 %1618, 12
  %1709 = icmp eq i32 %1708, 12
  br i1 %1709, label %1792, label %1710

; <label>:1710                                    ; preds = %1699
  %1711 = and i32 %1618, 2097184
  %1712 = icmp eq i32 %1711, 2097184
  %1713 = select i1 %1712, float %1209, float 0.000000e+00
  %1714 = and i32 %1618, 4194336
  %1715 = icmp eq i32 %1714, 4194336
  %1716 = select i1 %1715, float %1209, float 0.000000e+00
  %1717 = and i32 %1618, 8388640
  %1718 = icmp eq i32 %1717, 8388640
  %1719 = select i1 %1718, float %1209, float 0.000000e+00
  %1720 = and i32 %1618, 16384
  %1721 = icmp ne i32 %1720, 0
  %1722 = select i1 %1721, float %1209, float 0.000000e+00
  %1723 = icmp eq i32 %1708, 0
  br i1 %1723, label %1724, label %1740

; <label>:1724                                    ; preds = %1710
  %1725 = fsub fast float %1510, %898
  %1726 = fsub fast float %1511, %899
  %1727 = fmul fast float %1713, %1725
  %1728 = fmul fast float %1713, %1726
  %1729 = fadd fast float %1727, %898
  %1730 = fadd fast float %1728, %899
  %1731 = fsub fast float %1512, %909
  %1732 = fmul fast float %1716, %1731
  %1733 = fadd fast float %1732, %909
  %1734 = fsub fast float %1509, %908
  %1735 = fmul fast float %1719, %1734
  %1736 = fadd fast float %1735, %908
  %1737 = fsub fast float %1588, %910
  %1738 = fmul fast float %1722, %1737
  %1739 = fadd fast float %1738, %910
  br label %1792

; <label>:1740                                    ; preds = %1710
  %1741 = icmp eq i32 %1708, 4
  br i1 %1741, label %1742, label %1776

; <label>:1742                                    ; preds = %1740
  %1743 = fmul fast float %1713, %1510
  %1744 = fmul fast float %1713, %1511
  %1745 = fadd fast float %1743, %898
  %1746 = fadd fast float %1744, %899
  %1747 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1748 = fsub fast float %1747, %909
  %1749 = fmul fast float %1748, %1716
  %1750 = fadd fast float %1749, %909
  %1751 = fadd fast float %1509, %908
  %1752 = fmul fast float %1751, 0x3FF337FAE0000000
  %1753 = fmul fast float %908, %908
  %1754 = fmul fast float %1509, %1509
  %1755 = fadd fast float %1754, %1753
  %1756 = fmul fast float %1755, 0x3FE5152B00000000
  %1757 = fmul fast float %908, 0xBFCC1F85E0000000
  %1758 = fmul fast float %1757, %1509
  %1759 = fadd fast float %1758, 0xBFE1363700000000
  %1760 = fadd fast float %1759, %1752
  %1761 = fsub fast float %1760, %1756
  %1762 = fmul fast float %1751, 0x3FBA6F0D00000000
  %1763 = fmul fast float %1755, 0x3FD0432880000000
  %1764 = fmul fast float %908, 0xBFEF110800000000
  %1765 = fmul fast float %1764, %1509
  %1766 = fadd fast float %1765, 1.000000e+00
  %1767 = fsub fast float %1766, %1762
  %1768 = fadd fast float %1767, %1763
  %1769 = fdiv fast float %1761, %1768
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fsub fast float %1770, %908
  %1772 = fmul fast float %1771, %1719
  %1773 = fadd fast float %1772, %908
  %1774 = fmul fast float %1722, %1588
  %1775 = fadd fast float %1774, %910
  br label %1792

; <label>:1776                                    ; preds = %1740
  %1777 = icmp eq i32 %1708, 8
  br i1 %1777, label %1778, label %1792

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1713, %1510
  %1780 = fmul fast float %1713, %1511
  %1781 = fadd fast float %1779, %898
  %1782 = fadd fast float %1780, %899
  %1783 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1784 = fsub fast float %1783, %909
  %1785 = fmul fast float %1784, %1716
  %1786 = fadd fast float %1785, %909
  %1787 = fsub fast float %1509, %908
  %1788 = fmul fast float %1719, %1787
  %1789 = fadd fast float %1788, %908
  %1790 = fmul fast float %1722, %1588
  %1791 = fadd fast float %1790, %910
  br label %1792

; <label>:1792                                    ; preds = %1778, %1776, %1742, %1724, %1699, %1208, %912, %897
  %1793 = phi float [ %898, %1699 ], [ %898, %1208 ], [ %898, %897 ], [ %1781, %1778 ], [ %898, %1776 ], [ %1745, %1742 ], [ %1729, %1724 ], [ %898, %912 ]
  %1794 = phi float [ %899, %1699 ], [ %899, %1208 ], [ %899, %897 ], [ %1782, %1778 ], [ %899, %1776 ], [ %1746, %1742 ], [ %1730, %1724 ], [ %899, %912 ]
  %1795 = phi float [ %1700, %1699 ], [ %900, %1208 ], [ %900, %897 ], [ %1700, %1778 ], [ %1700, %1776 ], [ %1700, %1742 ], [ %1700, %1724 ], [ %900, %912 ]
  %1796 = phi float [ %1701, %1699 ], [ %901, %1208 ], [ %901, %897 ], [ %1701, %1778 ], [ %1701, %1776 ], [ %1701, %1742 ], [ %1701, %1724 ], [ %901, %912 ]
  %1797 = phi float [ %1702, %1699 ], [ %902, %1208 ], [ %902, %897 ], [ %1702, %1778 ], [ %1702, %1776 ], [ %1702, %1742 ], [ %1702, %1724 ], [ %902, %912 ]
  %1798 = phi float [ %1703, %1699 ], [ %903, %1208 ], [ %903, %897 ], [ %1703, %1778 ], [ %1703, %1776 ], [ %1703, %1742 ], [ %1703, %1724 ], [ %903, %912 ]
  %1799 = phi float [ %1704, %1699 ], [ %904, %1208 ], [ %904, %897 ], [ %1704, %1778 ], [ %1704, %1776 ], [ %1704, %1742 ], [ %1704, %1724 ], [ %904, %912 ]
  %1800 = phi float [ %1705, %1699 ], [ %905, %1208 ], [ %905, %897 ], [ %1705, %1778 ], [ %1705, %1776 ], [ %1705, %1742 ], [ %1705, %1724 ], [ %905, %912 ]
  %1801 = phi float [ %1706, %1699 ], [ %906, %1208 ], [ %906, %897 ], [ %1706, %1778 ], [ %1706, %1776 ], [ %1706, %1742 ], [ %1706, %1724 ], [ %906, %912 ]
  %1802 = phi float [ %908, %1699 ], [ %908, %1208 ], [ %908, %897 ], [ %1789, %1778 ], [ %908, %1776 ], [ %1773, %1742 ], [ %1736, %1724 ], [ %908, %912 ]
  %1803 = phi float [ %909, %1699 ], [ %909, %1208 ], [ %909, %897 ], [ %1786, %1778 ], [ %909, %1776 ], [ %1750, %1742 ], [ %1733, %1724 ], [ %909, %912 ]
  %1804 = phi float [ %910, %1699 ], [ %910, %1208 ], [ %910, %897 ], [ %1791, %1778 ], [ %910, %1776 ], [ %1775, %1742 ], [ %1739, %1724 ], [ %910, %912 ]
  %1805 = phi float [ %1707, %1699 ], [ %911, %1208 ], [ %911, %897 ], [ %1707, %1778 ], [ %1707, %1776 ], [ %1707, %1742 ], [ %1707, %1724 ], [ %911, %912 ]
  br i1 %348, label %2686, label %1806

; <label>:1806                                    ; preds = %1792
  %1807 = icmp ult i32 %401, 3
  %1808 = add i32 %33, 56
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %33, 60
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = or i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2686, label %1816

; <label>:1816                                    ; preds = %1806
  %1817 = and i32 %1810, 262144
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1818, float %36, float 1.000000e+00
  %1820 = select i1 %1818, float %37, float 0.000000e+00
  %1821 = select i1 %1818, float %38, float 0.000000e+00
  %1822 = select i1 %1818, float %39, float 1.000000e+00
  %1823 = select i1 %1818, float %40, float %56
  %1824 = select i1 %1818, float %41, float %57
  %1825 = add i32 %33, 316
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = fmul fast float %1829, 0x3F50624DE0000000
  %1831 = add i32 %33, 120
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = and i32 %1834, 255
  %1836 = lshr i32 %1833, 24
  %1837 = add i32 %33, 324
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1839, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = add i32 %33, 64
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 22
  %1848 = shl nuw nsw i32 %1847, 5
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = shl i32 %1846, 4
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = lshr i32 %1846, 7
  %1854 = and i32 %1853, 32752
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1858 = fmul fast float %1857, 1.000000e+03
  %1859 = fmul fast float %298, %1858
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = fadd fast float %1860, %288
  %1862 = fmul fast float %299, %1858
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, %290
  %1865 = fmul fast float %1830, %1858
  %1866 = call float @dx.op.unary.f32(i32 22, float %1865)  ; Frc(value)
  %1867 = fmul fast float %1866, 0x401921FB60000000
  %1868 = fadd fast float %1867, %1849
  %1869 = call float @dx.op.unary.f32(i32 13, float %1868)  ; Sin(value)
  %1870 = call float @dx.op.unary.f32(i32 12, float %1868)  ; Cos(value)
  %1871 = fsub fast float -0.000000e+00, %1869
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fadd fast float %1824, -5.000000e-01
  %1874 = fmul fast float %1841, %1872
  %1875 = fmul fast float %1843, %1873
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1852, %1876
  %1879 = fmul fast float %1855, %1877
  %1880 = fmul fast float %1870, %1878
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1871, float %1879, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1869, %1878
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1879, float %1882)  ; FMad(a,b,c)
  %1884 = fadd fast float %1861, %1881
  %1885 = fadd fast float %1864, %1883
  %1886 = icmp ugt i32 %1835, 1
  %1887 = icmp ugt i32 %1833, 33554431
  %1888 = or i1 %1887, %1886
  br i1 %1888, label %1889, label %1914

; <label>:1889                                    ; preds = %1816
  %1890 = add i32 %33, 260
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = fmul fast float %1857, %1894
  %1896 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1897 = mul nuw nsw i32 %1835, %1836
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1896, %1898
  %1900 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1901 = fptoui float %1900 to i32
  %1902 = urem i32 %1901, %1835
  %1903 = udiv i32 %1901, %1836
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1906 = uitofp i32 %1902 to float
  %1907 = uitofp i32 %1903 to float
  %1908 = fadd fast float %1904, %1906
  %1909 = fadd fast float %1905, %1907
  %1910 = uitofp i32 %1835 to float
  %1911 = uitofp i32 %1836 to float
  %1912 = fdiv fast float %1908, %1910
  %1913 = fdiv fast float %1909, %1911
  br label %1914

; <label>:1914                                    ; preds = %1889, %1816
  %1915 = phi float [ %1912, %1889 ], [ %1884, %1816 ]
  %1916 = phi float [ %1913, %1889 ], [ %1885, %1816 ]
  %1917 = and i32 %1810, 16777216
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %2028, label %1919

; <label>:1919                                    ; preds = %1914
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1924 = fadd fast float %1921, %131
  %1925 = fadd fast float %1922, %132
  %1926 = fadd fast float %1923, %133
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = icmp eq i32 %34, 65535
  br i1 %1930, label %2025, label %1931

; <label>:1931                                    ; preds = %1919
  %1932 = lshr i32 %34, 1
  %1933 = shl i32 %1932, 2
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = and i32 %34, 1
  %1937 = icmp ne i32 %1936, 0
  %1938 = lshr i32 %1935, 16
  %1939 = and i32 %1935, 65535
  %1940 = select i1 %1937, i32 %1938, i32 %1939
  %1941 = icmp eq i32 %1940, 65535
  br i1 %1941, label %2021, label %1942

; <label>:1942                                    ; preds = %1931
  %1943 = mul nuw nsw i32 %1940, 40
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = add nuw nsw i32 %1943, 12
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = add nuw nsw i32 %1943, 24
  %1954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = add nuw nsw i32 %1943, 36
  %1959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = fsub fast float %1924, %1945
  %1962 = fsub fast float %1925, %1946
  %1963 = fsub fast float %1926, %1947
  %1964 = fmul fast float %1960, %1961
  %1965 = fmul fast float %1960, %1962
  %1966 = fmul fast float %1960, %1963
  %1967 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1968 = call float @dx.op.unary.f32(i32 27, float %1965)  ; Round_ni(value)
  %1969 = call float @dx.op.unary.f32(i32 27, float %1966)  ; Round_ni(value)
  %1970 = fadd fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 5.000000e-01
  %1972 = fadd fast float %1969, 5.000000e-01
  %1973 = fmul fast float %1970, %1950
  %1974 = fmul fast float %1971, %1951
  %1975 = fmul fast float %1972, %1952
  %1976 = shl i32 %34, 2
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = add i32 %1978, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call float @dx.op.unary.f32(i32 22, float %1973)  ; Frc(value)
  %1982 = call float @dx.op.unary.f32(i32 22, float %1974)  ; Frc(value)
  %1983 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1980, %dx.types.Handle %30, float %1981, float %1982, float %1983, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.ResRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.ResRet.f32 %1984, 2
  %1988 = fmul fast float %1985, 1.023000e+03
  %1989 = fmul fast float %1986, 1.023000e+03
  %1990 = fmul fast float %1987, 1.023000e+03
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = fadd fast float %1989, 5.000000e-01
  %1993 = fadd fast float %1990, 5.000000e-01
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = fsub fast float %1964, %1967
  %1998 = fsub fast float %1965, %1968
  %1999 = fsub fast float %1966, %1969
  %2000 = fmul fast float %1997, 7.500000e-01
  %2001 = fmul fast float %1998, 7.500000e-01
  %2002 = fmul fast float %1999, 7.500000e-01
  %2003 = fadd fast float %1967, 1.250000e-01
  %2004 = fadd fast float %2003, %2000
  %2005 = fadd fast float %2004, %1994
  %2006 = fadd fast float %1968, 1.250000e-01
  %2007 = fadd fast float %2006, %2001
  %2008 = fadd fast float %2007, %1995
  %2009 = fadd fast float %1969, 1.250000e-01
  %2010 = fadd fast float %2009, %2002
  %2011 = fadd fast float %2010, %1996
  %2012 = fmul fast float %2005, %1955
  %2013 = fmul fast float %2008, %1956
  %2014 = fmul fast float %2011, %1957
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = add i32 %2016, 0
  %2018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2018, %dx.types.Handle %28, float %2012, float %2013, float %2014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  br label %2021

; <label>:2021                                    ; preds = %1942, %1931
  %2022 = phi float [ %2020, %1942 ], [ -1.000000e+00, %1931 ]
  %2023 = fadd fast float %2022, %1929
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  br label %2025

; <label>:2025                                    ; preds = %2021, %1919
  %2026 = phi float [ %2024, %2021 ], [ %1929, %1919 ]
  %2027 = fmul fast float %2026, %397
  br label %2028

; <label>:2028                                    ; preds = %2025, %1914
  %2029 = phi float [ %2027, %2025 ], [ %397, %1914 ]
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 256
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2080, label %2034

; <label>:2034                                    ; preds = %2028
  %2035 = add i32 %33, 448
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = add i32 %2037, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2039, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = add i32 %33, 132
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = shl i32 %2044, 4
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = lshr i32 %2044, 7
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = fsub fast float 1.000000e+00, %2029
  %2052 = call float @dx.op.binary.f32(i32 35, float %2051, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2053 = bitcast float %2029 to i32
  %2054 = sitofp i32 %2053 to float
  %2055 = fadd fast float %2054, 0xC1CFBF8940000000
  %2056 = fmul fast float %2050, %2055
  %2057 = fadd fast float %2056, 0x41CFBF8940000000
  %2058 = fptosi float %2057 to i32
  %2059 = bitcast i32 %2058 to float
  %2060 = bitcast float %2052 to i32
  %2061 = sitofp i32 %2060 to float
  %2062 = fadd fast float %2061, 0xC1CFBF8940000000
  %2063 = fmul fast float %2062, %2050
  %2064 = fadd fast float %2063, 0x41CFBF8940000000
  %2065 = fptosi float %2064 to i32
  %2066 = bitcast i32 %2065 to float
  %2067 = fmul fast float %2059, %2047
  %2068 = fmul fast float %2066, %2047
  %2069 = fsub fast float %2052, %2067
  %2070 = fadd fast float %2068, %2052
  %2071 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2073 = fsub fast float %2041, %2071
  %2074 = fsub fast float %2072, %2071
  %2075 = bitcast float %2074 to i32
  %2076 = sub nsw i32 2129859010, %2075
  %2077 = bitcast i32 %2076 to float
  %2078 = fmul fast float %2077, %2073
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  br label %2080

; <label>:2080                                    ; preds = %2034, %2028
  %2081 = phi float [ %2079, %2034 ], [ %2029, %2028 ]
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 128
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2102, label %2086

; <label>:2086                                    ; preds = %2080
  %2087 = add i32 %33, 432
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2091, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = and i32 %2095, 524288
  %2097 = icmp ne i32 %2096, 0
  %2098 = fcmp fast ogt float %2093, 0x3FE0101020000000
  %2099 = select i1 %2098, float 1.000000e+00, float 0.000000e+00
  %2100 = select i1 %2097, float %2099, float %2093
  %2101 = fmul fast float %2100, %2081
  br label %2102

; <label>:2102                                    ; preds = %2086, %2080
  %2103 = phi float [ %2101, %2086 ], [ %2081, %2080 ]
  %2104 = fcmp fast ult float %2103, 0x3F70101020000000
  br i1 %2104, label %2686, label %2105

; <label>:2105                                    ; preds = %2102
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 16
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2308, label %2110

; <label>:2110                                    ; preds = %2105
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %33, 384
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = extractvalue %dx.types.ResRet.f32 %2118, 3
  %2123 = and i32 %2112, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = lshr i32 %2112, 8
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2122, %2124
  %2129 = fadd fast float %2128, %2127
  %2130 = fmul fast float %2129, 0x3F70101000000000
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 512
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2143, label %2135

; <label>:2135                                    ; preds = %2110
  %2136 = add i32 %33, 468
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %2138, 0
  %2140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2140, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  br label %2143

; <label>:2143                                    ; preds = %2135, %2110
  %2144 = phi float [ %2142, %2135 ], [ 1.000000e+00, %2110 ]
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 33554432
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2255, label %2149

; <label>:2149                                    ; preds = %2143
  %2150 = add i32 %33, 256
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 65535
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = lshr i32 %2152, 16
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = add i32 %33, 260
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 65535
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = lshr i32 %2163, 24
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2165, 0x3F70101020000000
  %2167 = and i32 %2163, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2168, 0x3F70101020000000
  %2170 = lshr i32 %2163, 8
  %2171 = and i32 %2170, 255
  %2172 = uitofp i32 %2171 to float
  %2173 = fmul fast float %2172, 0x3F70101020000000
  %2174 = lshr i32 %2163, 16
  %2175 = and i32 %2174, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2176, 0x3F70101020000000
  %2178 = add i32 %33, 252
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 24
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = and i32 %2180, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2185, 0x3F70101020000000
  %2187 = lshr i32 %2180, 8
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3F70101020000000
  %2191 = lshr i32 %2180, 16
  %2192 = and i32 %2191, 255
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = bitcast float %2119 to i32
  %2196 = ashr i32 %2195, 1
  %2197 = sub nsw i32 1597463174, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2119, 5.000000e-01
  %2200 = fmul fast float %2198, %2198
  %2201 = fmul fast float %2200, %2199
  %2202 = fsub fast float 1.500000e+00, %2201
  %2203 = fmul fast float %2198, %2119
  %2204 = fmul fast float %2203, %2202
  %2205 = bitcast float %2120 to i32
  %2206 = ashr i32 %2205, 1
  %2207 = sub nsw i32 1597463174, %2206
  %2208 = bitcast i32 %2207 to float
  %2209 = fmul fast float %2120, 5.000000e-01
  %2210 = fmul fast float %2208, %2208
  %2211 = fmul fast float %2210, %2209
  %2212 = fsub fast float 1.500000e+00, %2211
  %2213 = fmul fast float %2208, %2120
  %2214 = fmul fast float %2213, %2212
  %2215 = bitcast float %2121 to i32
  %2216 = ashr i32 %2215, 1
  %2217 = sub nsw i32 1597463174, %2216
  %2218 = bitcast i32 %2217 to float
  %2219 = fmul fast float %2121, 5.000000e-01
  %2220 = fmul fast float %2218, %2218
  %2221 = fmul fast float %2220, %2219
  %2222 = fsub fast float 1.500000e+00, %2221
  %2223 = fmul fast float %2218, %2121
  %2224 = fmul fast float %2223, %2222
  %2225 = fsub fast float %2204, %2186
  %2226 = fsub fast float %2214, %2190
  %2227 = fsub fast float %2224, %2194
  %2228 = fmul fast float %2225, %2154
  %2229 = fmul fast float %2226, %2156
  %2230 = fmul fast float %2227, %2161
  %2231 = fadd fast float %2228, %2169
  %2232 = fadd fast float %2229, %2173
  %2233 = fadd fast float %2230, %2177
  %2234 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2235 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2236 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2237 = fmul fast float %2234, %2234
  %2238 = fmul fast float %2235, %2235
  %2239 = fmul fast float %2236, %2236
  %2240 = fsub fast float %2237, %2119
  %2241 = fsub fast float %2238, %2120
  %2242 = fsub fast float %2239, %2121
  %2243 = fmul fast float %2240, %2144
  %2244 = fmul fast float %2241, %2144
  %2245 = fmul fast float %2242, %2144
  %2246 = fadd fast float %2243, %2119
  %2247 = fadd fast float %2244, %2120
  %2248 = fadd fast float %2245, %2121
  %2249 = fadd fast float %2166, %2130
  %2250 = fsub fast float %2249, %2183
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fsub fast float %2251, %2130
  %2253 = fmul fast float %2252, %2144
  %2254 = fadd fast float %2253, %2130
  br label %2308

; <label>:2255                                    ; preds = %2143
  %2256 = and i32 %2146, 134217728
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2292, label %2258

; <label>:2258                                    ; preds = %2255
  %2259 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2260 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2261 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2262 = fadd fast float %2259, -5.000000e-01
  %2263 = fadd fast float %2260, -5.000000e-01
  %2264 = fadd fast float %2261, -5.000000e-01
  %2265 = fmul fast float %2262, %2144
  %2266 = fmul fast float %2263, %2144
  %2267 = fmul fast float %2264, %2144
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = fadd fast float %2266, 5.000000e-01
  %2270 = fadd fast float %2267, 5.000000e-01
  %2271 = call float @dx.op.unary.f32(i32 24, float %2119)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %2120)  ; Sqrt(value)
  %2273 = call float @dx.op.unary.f32(i32 24, float %2121)  ; Sqrt(value)
  %2274 = fmul fast float %2268, 2.000000e+00
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fmul fast float %2275, %2271
  %2277 = fadd fast float %2276, %2274
  %2278 = fmul fast float %2277, %2271
  %2279 = fmul fast float %2269, 2.000000e+00
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = fmul fast float %2280, %2272
  %2282 = fadd fast float %2281, %2279
  %2283 = fmul fast float %2282, %2272
  %2284 = fmul fast float %2270, 2.000000e+00
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = fmul fast float %2285, %2273
  %2287 = fadd fast float %2286, %2284
  %2288 = fmul fast float %2287, %2273
  %2289 = fmul fast float %2278, %2278
  %2290 = fmul fast float %2283, %2283
  %2291 = fmul fast float %2288, %2288
  br label %2308

; <label>:2292                                    ; preds = %2255
  %2293 = fmul fast float %275, %275
  %2294 = fmul fast float %279, %279
  %2295 = fmul fast float %283, %283
  %2296 = fadd fast float %2293, -1.000000e+00
  %2297 = fadd fast float %2294, -1.000000e+00
  %2298 = fadd fast float %2295, -1.000000e+00
  %2299 = fmul fast float %2144, %2296
  %2300 = fmul fast float %2144, %2297
  %2301 = fmul fast float %2144, %2298
  %2302 = fadd fast float %2299, 1.000000e+00
  %2303 = fadd fast float %2300, 1.000000e+00
  %2304 = fadd fast float %2301, 1.000000e+00
  %2305 = fmul fast float %2302, %2119
  %2306 = fmul fast float %2303, %2120
  %2307 = fmul fast float %2304, %2121
  br label %2308

; <label>:2308                                    ; preds = %2292, %2258, %2149, %2105
  %2309 = phi float [ %2254, %2149 ], [ %2130, %2258 ], [ %2130, %2292 ], [ 0x3FA23C0BE0000000, %2105 ]
  %2310 = phi float [ %2246, %2149 ], [ %2289, %2258 ], [ %2305, %2292 ], [ 1.000000e+00, %2105 ]
  %2311 = phi float [ %2247, %2149 ], [ %2290, %2258 ], [ %2306, %2292 ], [ 1.000000e+00, %2105 ]
  %2312 = phi float [ %2248, %2149 ], [ %2291, %2258 ], [ %2307, %2292 ], [ 1.000000e+00, %2105 ]
  %2313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.i32 %2313, 1
  %2315 = and i32 %2314, 1
  %2316 = icmp ne i32 %2315, 0
  %2317 = add i32 %33, 356
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 32
  %2321 = icmp ne i32 %2320, 0
  %2322 = and i1 %2316, %2321
  %2323 = select i1 %2322, float 1.000000e+00, float %2310
  %2324 = select i1 %2322, float 0x3FD3333340000000, float %2311
  %2325 = select i1 %2322, float 0x3FD3333340000000, float %2312
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 32
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2402, label %2330

; <label>:2330                                    ; preds = %2308
  %2331 = add i32 %33, 124
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = add i32 %33, 400
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = add i32 %2336, 0
  %2338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2337, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2339 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2338, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.ResRet.f32 %2339, 2
  %2343 = extractvalue %dx.types.ResRet.f32 %2339, 3
  %2344 = and i32 %2333, 255
  %2345 = uitofp i32 %2344 to float
  %2346 = lshr i32 %2333, 8
  %2347 = and i32 %2346, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2333, 16
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101000000000
  %2353 = fmul fast float %2340, %2345
  %2354 = fadd fast float %2353, %2348
  %2355 = fmul fast float %2354, 0x3F70101000000000
  %2356 = fadd fast float %2341, -5.000000e-01
  %2357 = fadd fast float %2343, -5.000000e-01
  %2358 = fmul fast float %2356, %2352
  %2359 = fmul fast float %2357, %2352
  %2360 = fadd fast float %2358, 5.000000e-01
  %2361 = fadd fast float %2359, 5.000000e-01
  %2362 = fmul fast float %2360, 2.000000e+00
  %2363 = fadd fast float %2362, -1.000000e+00
  %2364 = fmul fast float %2361, 2.000000e+00
  %2365 = fadd fast float %2364, -1.000000e+00
  %2366 = fadd fast float %2363, %2365
  %2367 = fmul fast float %2366, 5.000000e-01
  %2368 = fsub fast float %2363, %2365
  %2369 = fmul fast float %2368, 5.000000e-01
  %2370 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = call float @dx.op.unary.f32(i32 6, float %2369)  ; FAbs(value)
  %2373 = fsub fast float %2371, %2372
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2369, float %2373, float %2367, float %2369, float %2373)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = call float @dx.op.unary.f32(i32 25, float %2374)  ; Rsqrt(value)
  %2376 = fmul fast float %2367, %2375
  %2377 = fmul fast float %2369, %2375
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 67108864
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2398, label %2382

; <label>:2382                                    ; preds = %2330
  %2383 = add i32 %33, 312
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = lshr i32 %2385, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = fsub fast float %2355, %2393
  %2395 = fmul fast float %2394, %2387
  %2396 = fadd fast float %2395, %2391
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  br label %2398

; <label>:2398                                    ; preds = %2382, %2330
  %2399 = phi float [ %2397, %2382 ], [ %2355, %2330 ]
  %2400 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  %2401 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  br label %2402

; <label>:2402                                    ; preds = %2398, %2308
  %2403 = phi float [ %2399, %2398 ], [ 0x3FD6666660000000, %2308 ]
  %2404 = phi float [ %2400, %2398 ], [ 0.000000e+00, %2308 ]
  %2405 = phi float [ %2401, %2398 ], [ 0.000000e+00, %2308 ]
  %2406 = phi float [ %2342, %2398 ], [ 1.000000e+00, %2308 ]
  %2407 = add i32 %33, 192
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = lshr i32 %2409, 22
  %2411 = shl nuw nsw i32 %2410, 5
  %2412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2411)  ; LegacyF16ToF32(value)
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 64
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2450, label %2417

; <label>:2417                                    ; preds = %2402
  %2418 = add i32 %33, 416
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %2420, 0
  %2422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 131072
  %2426 = icmp eq i32 %2425, 0
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2422, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = fmul fast float %2428, %263
  %2432 = fmul fast float %2429, %266
  %2433 = fmul fast float %2430, %269
  br i1 %2426, label %2440, label %2434

; <label>:2434                                    ; preds = %2417
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = fmul fast float %2436, %2431
  %2438 = fmul fast float %2436, %2432
  %2439 = fmul fast float %2436, %2433
  br label %2440

; <label>:2440                                    ; preds = %2434, %2417
  %2441 = phi float [ %2437, %2434 ], [ %2431, %2417 ]
  %2442 = phi float [ %2438, %2434 ], [ %2432, %2417 ]
  %2443 = phi float [ %2439, %2434 ], [ %2433, %2417 ]
  %2444 = fmul fast float %2441, %2412
  %2445 = select i1 %173, float %2444, float %2441
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2442, float %2443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = select i1 %173, float 0.000000e+00, float %2441
  %2448 = select i1 %173, float %2446, float %2442
  %2449 = select i1 %173, float 0.000000e+00, float %2443
  br label %2450

; <label>:2450                                    ; preds = %2440, %2402
  %2451 = phi float [ %2447, %2440 ], [ 0.000000e+00, %2402 ]
  %2452 = phi float [ %2448, %2440 ], [ 0.000000e+00, %2402 ]
  %2453 = phi float [ %2449, %2440 ], [ 0.000000e+00, %2402 ]
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 26624
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2481, label %2458

; <label>:2458                                    ; preds = %2450
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 16384
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2481, label %2463

; <label>:2463                                    ; preds = %2458
  %2464 = and i32 %2460, 1048576
  %2465 = icmp ne i32 %2464, 0
  %2466 = add i32 %33, 484
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = add i32 %2468, 0
  %2470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2470, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = add i32 %33, 128
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = lshr i32 %2475, 24
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2472, 0x3F70101020000000
  %2479 = select i1 %2465, float 0x3F70101020000000, float %2478
  %2480 = fmul fast float %2479, %2477
  br label %2481

; <label>:2481                                    ; preds = %2463, %2458, %2450
  %2482 = phi float [ %2480, %2463 ], [ 0.000000e+00, %2458 ], [ 0.000000e+00, %2450 ]
  %2483 = add i32 %33, 128
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = lshr i32 %2485, 8
  %2489 = and i32 %2488, 255
  %2490 = uitofp i32 %2489 to float
  %2491 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2324, float %2325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = fmul fast float %2490, %2491
  %2493 = fadd fast float %2492, %2487
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  br i1 %1807, label %2496, label %2504

; <label>:2496                                    ; preds = %2481
  %2497 = fsub fast float 1.000000e+00, %2103
  %2498 = fmul fast float %2497, %1795
  %2499 = fmul fast float %2497, %1796
  %2500 = fmul fast float %2497, %1797
  %2501 = fmul fast float %2497, %1798
  %2502 = fmul fast float %2497, %1799
  %2503 = fmul fast float %2497, %1800
  br label %2504

; <label>:2504                                    ; preds = %2496, %2481
  %2505 = phi float [ %2498, %2496 ], [ %1795, %2481 ]
  %2506 = phi float [ %2499, %2496 ], [ %1796, %2481 ]
  %2507 = phi float [ %2500, %2496 ], [ %1797, %2481 ]
  %2508 = phi float [ %2501, %2496 ], [ %1798, %2481 ]
  %2509 = phi float [ %2502, %2496 ], [ %1799, %2481 ]
  %2510 = phi float [ %2503, %2496 ], [ %1800, %2481 ]
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 3
  %2514 = icmp eq i32 %2513, 3
  br i1 %2514, label %2593, label %2515

; <label>:2515                                    ; preds = %2504
  %2516 = and i32 %2512, 16
  %2517 = icmp ne i32 %2516, 0
  %2518 = select i1 %2517, float %2103, float 0.000000e+00
  %2519 = icmp eq i32 %2513, 0
  br i1 %2519, label %2520, label %2548

; <label>:2520                                    ; preds = %2515
  %2521 = and i32 %2512, 64
  %2522 = icmp ne i32 %2521, 0
  %2523 = select i1 %2522, float %2103, float 0.000000e+00
  %2524 = fsub fast float %2323, %2505
  %2525 = fsub fast float %2324, %2506
  %2526 = fsub fast float %2325, %2507
  %2527 = fmul fast float %2518, %2524
  %2528 = fmul fast float %2518, %2525
  %2529 = fmul fast float %2518, %2526
  %2530 = fadd fast float %2527, %2505
  %2531 = fadd fast float %2528, %2506
  %2532 = fadd fast float %2529, %2507
  %2533 = fsub fast float %2309, %1801
  %2534 = fmul fast float %2518, %2533
  %2535 = fadd fast float %2534, %1801
  %2536 = fsub fast float %2451, %2508
  %2537 = fsub fast float %2452, %2509
  %2538 = fsub fast float %2453, %2510
  %2539 = fmul fast float %2523, %2536
  %2540 = fmul fast float %2523, %2537
  %2541 = fmul fast float %2523, %2538
  %2542 = fadd fast float %2539, %2508
  %2543 = fadd fast float %2540, %2509
  %2544 = fadd fast float %2541, %2510
  %2545 = fsub fast float %2495, %1805
  %2546 = fmul fast float %2518, %2545
  %2547 = fadd fast float %2546, %1805
  br label %2593

; <label>:2548                                    ; preds = %2515
  %2549 = icmp eq i32 %2513, 1
  br i1 %2549, label %2550, label %2563

; <label>:2550                                    ; preds = %2548
  %2551 = fadd fast float %2323, -1.000000e+00
  %2552 = fadd fast float %2324, -1.000000e+00
  %2553 = fadd fast float %2325, -1.000000e+00
  %2554 = fmul fast float %2518, %2551
  %2555 = fmul fast float %2518, %2552
  %2556 = fmul fast float %2518, %2553
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fadd fast float %2556, 1.000000e+00
  %2560 = fmul fast float %2557, %2505
  %2561 = fmul fast float %2558, %2506
  %2562 = fmul fast float %2559, %2507
  br label %2593

; <label>:2563                                    ; preds = %2548
  %2564 = icmp eq i32 %2513, 2
  br i1 %2564, label %2565, label %2593

; <label>:2565                                    ; preds = %2563
  %2566 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2568 = call float @dx.op.unary.f32(i32 24, float %2325)  ; Sqrt(value)
  %2569 = fadd fast float %2566, -5.000000e-01
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fadd fast float %2568, -5.000000e-01
  %2572 = fmul fast float %2569, %2518
  %2573 = fmul fast float %2570, %2518
  %2574 = fmul fast float %2571, %2518
  %2575 = fadd fast float %2572, 5.000000e-01
  %2576 = fadd fast float %2573, 5.000000e-01
  %2577 = fadd fast float %2574, 5.000000e-01
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2505
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2505
  %2583 = fmul fast float %2576, 2.000000e+00
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = fmul fast float %2584, %2506
  %2586 = fadd fast float %2585, %2583
  %2587 = fmul fast float %2586, %2506
  %2588 = fmul fast float %2577, 2.000000e+00
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2589, %2507
  %2591 = fadd fast float %2590, %2588
  %2592 = fmul fast float %2591, %2507
  br label %2593

; <label>:2593                                    ; preds = %2565, %2563, %2550, %2520, %2504
  %2594 = phi float [ %2505, %2504 ], [ %2582, %2565 ], [ %2505, %2563 ], [ %2560, %2550 ], [ %2530, %2520 ]
  %2595 = phi float [ %2506, %2504 ], [ %2587, %2565 ], [ %2506, %2563 ], [ %2561, %2550 ], [ %2531, %2520 ]
  %2596 = phi float [ %2507, %2504 ], [ %2592, %2565 ], [ %2507, %2563 ], [ %2562, %2550 ], [ %2532, %2520 ]
  %2597 = phi float [ %2508, %2504 ], [ %2508, %2565 ], [ %2508, %2563 ], [ %2508, %2550 ], [ %2542, %2520 ]
  %2598 = phi float [ %2509, %2504 ], [ %2509, %2565 ], [ %2509, %2563 ], [ %2509, %2550 ], [ %2543, %2520 ]
  %2599 = phi float [ %2510, %2504 ], [ %2510, %2565 ], [ %2510, %2563 ], [ %2510, %2550 ], [ %2544, %2520 ]
  %2600 = phi float [ %1801, %2504 ], [ %1801, %2565 ], [ %1801, %2563 ], [ %1801, %2550 ], [ %2535, %2520 ]
  %2601 = phi float [ %1805, %2504 ], [ %1805, %2565 ], [ %1805, %2563 ], [ %1805, %2550 ], [ %2547, %2520 ]
  %2602 = and i32 %2512, 12
  %2603 = icmp eq i32 %2602, 12
  br i1 %2603, label %2686, label %2604

; <label>:2604                                    ; preds = %2593
  %2605 = and i32 %2512, 2097184
  %2606 = icmp eq i32 %2605, 2097184
  %2607 = select i1 %2606, float %2103, float 0.000000e+00
  %2608 = and i32 %2512, 4194336
  %2609 = icmp eq i32 %2608, 4194336
  %2610 = select i1 %2609, float %2103, float 0.000000e+00
  %2611 = and i32 %2512, 8388640
  %2612 = icmp eq i32 %2611, 8388640
  %2613 = select i1 %2612, float %2103, float 0.000000e+00
  %2614 = and i32 %2512, 16384
  %2615 = icmp ne i32 %2614, 0
  %2616 = select i1 %2615, float %2103, float 0.000000e+00
  %2617 = icmp eq i32 %2602, 0
  br i1 %2617, label %2618, label %2634

; <label>:2618                                    ; preds = %2604
  %2619 = fsub fast float %2404, %1793
  %2620 = fsub fast float %2405, %1794
  %2621 = fmul fast float %2607, %2619
  %2622 = fmul fast float %2607, %2620
  %2623 = fadd fast float %2621, %1793
  %2624 = fadd fast float %2622, %1794
  %2625 = fsub fast float %2406, %1803
  %2626 = fmul fast float %2610, %2625
  %2627 = fadd fast float %2626, %1803
  %2628 = fsub fast float %2403, %1802
  %2629 = fmul fast float %2613, %2628
  %2630 = fadd fast float %2629, %1802
  %2631 = fsub fast float %2482, %1804
  %2632 = fmul fast float %2616, %2631
  %2633 = fadd fast float %2632, %1804
  br label %2686

; <label>:2634                                    ; preds = %2604
  %2635 = icmp eq i32 %2602, 4
  br i1 %2635, label %2636, label %2670

; <label>:2636                                    ; preds = %2634
  %2637 = fmul fast float %2607, %2404
  %2638 = fmul fast float %2607, %2405
  %2639 = fadd fast float %2637, %1793
  %2640 = fadd fast float %2638, %1794
  %2641 = call float @dx.op.binary.f32(i32 36, float %1803, float %2406)  ; FMin(a,b)
  %2642 = fsub fast float %2641, %1803
  %2643 = fmul fast float %2642, %2610
  %2644 = fadd fast float %2643, %1803
  %2645 = fadd fast float %2403, %1802
  %2646 = fmul fast float %2645, 0x3FF337FAE0000000
  %2647 = fmul fast float %1802, %1802
  %2648 = fmul fast float %2403, %2403
  %2649 = fadd fast float %2648, %2647
  %2650 = fmul fast float %2649, 0x3FE5152B00000000
  %2651 = fmul fast float %1802, 0xBFCC1F85E0000000
  %2652 = fmul fast float %2651, %2403
  %2653 = fadd fast float %2652, 0xBFE1363700000000
  %2654 = fadd fast float %2653, %2646
  %2655 = fsub fast float %2654, %2650
  %2656 = fmul fast float %2645, 0x3FBA6F0D00000000
  %2657 = fmul fast float %2649, 0x3FD0432880000000
  %2658 = fmul fast float %1802, 0xBFEF110800000000
  %2659 = fmul fast float %2658, %2403
  %2660 = fadd fast float %2659, 1.000000e+00
  %2661 = fsub fast float %2660, %2656
  %2662 = fadd fast float %2661, %2657
  %2663 = fdiv fast float %2655, %2662
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = fsub fast float %2664, %1802
  %2666 = fmul fast float %2665, %2613
  %2667 = fadd fast float %2666, %1802
  %2668 = fmul fast float %2616, %2482
  %2669 = fadd fast float %2668, %1804
  br label %2686

; <label>:2670                                    ; preds = %2634
  %2671 = icmp eq i32 %2602, 8
  br i1 %2671, label %2672, label %2686

; <label>:2672                                    ; preds = %2670
  %2673 = fmul fast float %2607, %2404
  %2674 = fmul fast float %2607, %2405
  %2675 = fadd fast float %2673, %1793
  %2676 = fadd fast float %2674, %1794
  %2677 = call float @dx.op.binary.f32(i32 36, float %1803, float %2406)  ; FMin(a,b)
  %2678 = fsub fast float %2677, %1803
  %2679 = fmul fast float %2678, %2610
  %2680 = fadd fast float %2679, %1803
  %2681 = fsub fast float %2403, %1802
  %2682 = fmul fast float %2613, %2681
  %2683 = fadd fast float %2682, %1802
  %2684 = fmul fast float %2616, %2482
  %2685 = fadd fast float %2684, %1804
  br label %2686

; <label>:2686                                    ; preds = %2672, %2670, %2636, %2618, %2593, %2102, %1806, %1792
  %2687 = phi float [ %1793, %2593 ], [ %1793, %2102 ], [ %1793, %1792 ], [ %2675, %2672 ], [ %1793, %2670 ], [ %2639, %2636 ], [ %2623, %2618 ], [ %1793, %1806 ]
  %2688 = phi float [ %1794, %2593 ], [ %1794, %2102 ], [ %1794, %1792 ], [ %2676, %2672 ], [ %1794, %2670 ], [ %2640, %2636 ], [ %2624, %2618 ], [ %1794, %1806 ]
  %2689 = phi float [ %2594, %2593 ], [ %1795, %2102 ], [ %1795, %1792 ], [ %2594, %2672 ], [ %2594, %2670 ], [ %2594, %2636 ], [ %2594, %2618 ], [ %1795, %1806 ]
  %2690 = phi float [ %2595, %2593 ], [ %1796, %2102 ], [ %1796, %1792 ], [ %2595, %2672 ], [ %2595, %2670 ], [ %2595, %2636 ], [ %2595, %2618 ], [ %1796, %1806 ]
  %2691 = phi float [ %2596, %2593 ], [ %1797, %2102 ], [ %1797, %1792 ], [ %2596, %2672 ], [ %2596, %2670 ], [ %2596, %2636 ], [ %2596, %2618 ], [ %1797, %1806 ]
  %2692 = phi float [ %2597, %2593 ], [ %1798, %2102 ], [ %1798, %1792 ], [ %2597, %2672 ], [ %2597, %2670 ], [ %2597, %2636 ], [ %2597, %2618 ], [ %1798, %1806 ]
  %2693 = phi float [ %2598, %2593 ], [ %1799, %2102 ], [ %1799, %1792 ], [ %2598, %2672 ], [ %2598, %2670 ], [ %2598, %2636 ], [ %2598, %2618 ], [ %1799, %1806 ]
  %2694 = phi float [ %2599, %2593 ], [ %1800, %2102 ], [ %1800, %1792 ], [ %2599, %2672 ], [ %2599, %2670 ], [ %2599, %2636 ], [ %2599, %2618 ], [ %1800, %1806 ]
  %2695 = phi float [ %2600, %2593 ], [ %1801, %2102 ], [ %1801, %1792 ], [ %2600, %2672 ], [ %2600, %2670 ], [ %2600, %2636 ], [ %2600, %2618 ], [ %1801, %1806 ]
  %2696 = phi float [ %1802, %2593 ], [ %1802, %2102 ], [ %1802, %1792 ], [ %2683, %2672 ], [ %1802, %2670 ], [ %2667, %2636 ], [ %2630, %2618 ], [ %1802, %1806 ]
  %2697 = phi float [ %1803, %2593 ], [ %1803, %2102 ], [ %1803, %1792 ], [ %2680, %2672 ], [ %1803, %2670 ], [ %2644, %2636 ], [ %2627, %2618 ], [ %1803, %1806 ]
  %2698 = phi float [ %1804, %2593 ], [ %1804, %2102 ], [ %1804, %1792 ], [ %2685, %2672 ], [ %1804, %2670 ], [ %2669, %2636 ], [ %2633, %2618 ], [ %1804, %1806 ]
  %2699 = phi float [ %2601, %2593 ], [ %1805, %2102 ], [ %1805, %1792 ], [ %2601, %2672 ], [ %2601, %2670 ], [ %2601, %2636 ], [ %2601, %2618 ], [ %1805, %1806 ]
  br i1 %350, label %3580, label %2700

; <label>:2700                                    ; preds = %2686
  %2701 = icmp ult i32 %401, 4
  %2702 = add i32 %33, 72
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %33, 76
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = or i32 %2707, %2704
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %3580, label %2710

; <label>:2710                                    ; preds = %2700
  %2711 = and i32 %2704, 262144
  %2712 = icmp ne i32 %2711, 0
  %2713 = select i1 %2712, float %36, float 1.000000e+00
  %2714 = select i1 %2712, float %37, float 0.000000e+00
  %2715 = select i1 %2712, float %38, float 0.000000e+00
  %2716 = select i1 %2712, float %39, float 1.000000e+00
  %2717 = select i1 %2712, float %40, float %56
  %2718 = select i1 %2712, float %41, float %57
  %2719 = add i32 %33, 332
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = lshr i32 %2721, 16
  %2723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2722)  ; LegacyF16ToF32(value)
  %2724 = fmul fast float %2723, 0x3F50624DE0000000
  %2725 = add i32 %33, 136
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = lshr i32 %2727, 16
  %2729 = and i32 %2728, 255
  %2730 = lshr i32 %2727, 24
  %2731 = add i32 %33, 340
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 65535
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = lshr i32 %2733, 16
  %2737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2736)  ; LegacyF16ToF32(value)
  %2738 = add i32 %33, 80
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = lshr i32 %2740, 22
  %2742 = shl nuw nsw i32 %2741, 5
  %2743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2742)  ; LegacyF16ToF32(value)
  %2744 = shl i32 %2740, 4
  %2745 = and i32 %2744, 32752
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = lshr i32 %2740, 7
  %2748 = and i32 %2747, 32752
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 3
  %2752 = fmul fast float %2751, 1.000000e+03
  %2753 = fmul fast float %340, %2752
  %2754 = call float @dx.op.unary.f32(i32 22, float %2753)  ; Frc(value)
  %2755 = fadd fast float %2754, %330
  %2756 = fmul fast float %341, %2752
  %2757 = call float @dx.op.unary.f32(i32 22, float %2756)  ; Frc(value)
  %2758 = fadd fast float %2757, %332
  %2759 = fmul fast float %2724, %2752
  %2760 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2761 = fmul fast float %2760, 0x401921FB60000000
  %2762 = fadd fast float %2761, %2743
  %2763 = call float @dx.op.unary.f32(i32 13, float %2762)  ; Sin(value)
  %2764 = call float @dx.op.unary.f32(i32 12, float %2762)  ; Cos(value)
  %2765 = fsub fast float -0.000000e+00, %2763
  %2766 = fadd fast float %2717, -5.000000e-01
  %2767 = fadd fast float %2718, -5.000000e-01
  %2768 = fmul fast float %2735, %2766
  %2769 = fmul fast float %2737, %2767
  %2770 = fadd fast float %2768, 5.000000e-01
  %2771 = fadd fast float %2769, 5.000000e-01
  %2772 = fmul fast float %2746, %2770
  %2773 = fmul fast float %2749, %2771
  %2774 = fmul fast float %2764, %2772
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2765, float %2773, float %2774)  ; FMad(a,b,c)
  %2776 = fmul fast float %2763, %2772
  %2777 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2773, float %2776)  ; FMad(a,b,c)
  %2778 = fadd fast float %2755, %2775
  %2779 = fadd fast float %2758, %2777
  %2780 = icmp ugt i32 %2729, 1
  %2781 = icmp ugt i32 %2727, 33554431
  %2782 = or i1 %2781, %2780
  br i1 %2782, label %2783, label %2808

; <label>:2783                                    ; preds = %2710
  %2784 = add i32 %33, 276
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 16
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = fmul fast float %2751, %2788
  %2790 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2791 = mul nuw nsw i32 %2729, %2730
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2790, %2792
  %2794 = call float @dx.op.unary.f32(i32 27, float %2793)  ; Round_ni(value)
  %2795 = fptoui float %2794 to i32
  %2796 = urem i32 %2795, %2729
  %2797 = udiv i32 %2795, %2730
  %2798 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2799 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2800 = uitofp i32 %2796 to float
  %2801 = uitofp i32 %2797 to float
  %2802 = fadd fast float %2798, %2800
  %2803 = fadd fast float %2799, %2801
  %2804 = uitofp i32 %2729 to float
  %2805 = uitofp i32 %2730 to float
  %2806 = fdiv fast float %2802, %2804
  %2807 = fdiv fast float %2803, %2805
  br label %2808

; <label>:2808                                    ; preds = %2783, %2710
  %2809 = phi float [ %2806, %2783 ], [ %2778, %2710 ]
  %2810 = phi float [ %2807, %2783 ], [ %2779, %2710 ]
  %2811 = and i32 %2704, 16777216
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2922, label %2813

; <label>:2813                                    ; preds = %2808
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = fadd fast float %2815, %131
  %2819 = fadd fast float %2816, %132
  %2820 = fadd fast float %2817, %133
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = icmp eq i32 %34, 65535
  br i1 %2824, label %2919, label %2825

; <label>:2825                                    ; preds = %2813
  %2826 = lshr i32 %34, 1
  %2827 = shl i32 %2826, 2
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = and i32 %34, 1
  %2831 = icmp ne i32 %2830, 0
  %2832 = lshr i32 %2829, 16
  %2833 = and i32 %2829, 65535
  %2834 = select i1 %2831, i32 %2832, i32 %2833
  %2835 = icmp eq i32 %2834, 65535
  br i1 %2835, label %2915, label %2836

; <label>:2836                                    ; preds = %2825
  %2837 = mul nuw nsw i32 %2834, 40
  %2838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = add nuw nsw i32 %2837, 12
  %2843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.ResRet.f32 %2843, 1
  %2846 = extractvalue %dx.types.ResRet.f32 %2843, 2
  %2847 = add nuw nsw i32 %2837, 24
  %2848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.ResRet.f32 %2848, 2
  %2852 = add nuw nsw i32 %2837, 36
  %2853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = fsub fast float %2818, %2839
  %2856 = fsub fast float %2819, %2840
  %2857 = fsub fast float %2820, %2841
  %2858 = fmul fast float %2854, %2855
  %2859 = fmul fast float %2854, %2856
  %2860 = fmul fast float %2854, %2857
  %2861 = call float @dx.op.unary.f32(i32 27, float %2858)  ; Round_ni(value)
  %2862 = call float @dx.op.unary.f32(i32 27, float %2859)  ; Round_ni(value)
  %2863 = call float @dx.op.unary.f32(i32 27, float %2860)  ; Round_ni(value)
  %2864 = fadd fast float %2861, 5.000000e-01
  %2865 = fadd fast float %2862, 5.000000e-01
  %2866 = fadd fast float %2863, 5.000000e-01
  %2867 = fmul fast float %2864, %2844
  %2868 = fmul fast float %2865, %2845
  %2869 = fmul fast float %2866, %2846
  %2870 = shl i32 %34, 2
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2877 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2874, %dx.types.Handle %30, float %2875, float %2876, float %2877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = fmul fast float %2879, 1.023000e+03
  %2883 = fmul fast float %2880, 1.023000e+03
  %2884 = fmul fast float %2881, 1.023000e+03
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = fadd fast float %2884, 5.000000e-01
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2891 = fsub fast float %2858, %2861
  %2892 = fsub fast float %2859, %2862
  %2893 = fsub fast float %2860, %2863
  %2894 = fmul fast float %2891, 7.500000e-01
  %2895 = fmul fast float %2892, 7.500000e-01
  %2896 = fmul fast float %2893, 7.500000e-01
  %2897 = fadd fast float %2861, 1.250000e-01
  %2898 = fadd fast float %2897, %2894
  %2899 = fadd fast float %2898, %2888
  %2900 = fadd fast float %2862, 1.250000e-01
  %2901 = fadd fast float %2900, %2895
  %2902 = fadd fast float %2901, %2889
  %2903 = fadd fast float %2863, 1.250000e-01
  %2904 = fadd fast float %2903, %2896
  %2905 = fadd fast float %2904, %2890
  %2906 = fmul fast float %2899, %2849
  %2907 = fmul fast float %2902, %2850
  %2908 = fmul fast float %2905, %2851
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2912, %dx.types.Handle %28, float %2906, float %2907, float %2908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  br label %2915

; <label>:2915                                    ; preds = %2836, %2825
  %2916 = phi float [ %2914, %2836 ], [ -1.000000e+00, %2825 ]
  %2917 = fadd fast float %2916, %2823
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  br label %2919

; <label>:2919                                    ; preds = %2915, %2813
  %2920 = phi float [ %2918, %2915 ], [ %2823, %2813 ]
  %2921 = fmul fast float %2920, %396
  br label %2922

; <label>:2922                                    ; preds = %2919, %2808
  %2923 = phi float [ %2921, %2919 ], [ %396, %2808 ]
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 256
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2974, label %2928

; <label>:2928                                    ; preds = %2922
  %2929 = add i32 %33, 452
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = add i32 %33, 148
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = shl i32 %2938, 4
  %2940 = and i32 %2939, 32752
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2938, 7
  %2943 = and i32 %2942, 32752
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = fsub fast float 1.000000e+00, %2923
  %2946 = call float @dx.op.binary.f32(i32 35, float %2945, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2947 = bitcast float %2923 to i32
  %2948 = sitofp i32 %2947 to float
  %2949 = fadd fast float %2948, 0xC1CFBF8940000000
  %2950 = fmul fast float %2944, %2949
  %2951 = fadd fast float %2950, 0x41CFBF8940000000
  %2952 = fptosi float %2951 to i32
  %2953 = bitcast i32 %2952 to float
  %2954 = bitcast float %2946 to i32
  %2955 = sitofp i32 %2954 to float
  %2956 = fadd fast float %2955, 0xC1CFBF8940000000
  %2957 = fmul fast float %2956, %2944
  %2958 = fadd fast float %2957, 0x41CFBF8940000000
  %2959 = fptosi float %2958 to i32
  %2960 = bitcast i32 %2959 to float
  %2961 = fmul fast float %2953, %2941
  %2962 = fmul fast float %2960, %2941
  %2963 = fsub fast float %2946, %2961
  %2964 = fadd fast float %2962, %2946
  %2965 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2966 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2967 = fsub fast float %2935, %2965
  %2968 = fsub fast float %2966, %2965
  %2969 = bitcast float %2968 to i32
  %2970 = sub nsw i32 2129859010, %2969
  %2971 = bitcast i32 %2970 to float
  %2972 = fmul fast float %2971, %2967
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  br label %2974

; <label>:2974                                    ; preds = %2928, %2922
  %2975 = phi float [ %2973, %2928 ], [ %2923, %2922 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 128
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %2996, label %2980

; <label>:2980                                    ; preds = %2974
  %2981 = add i32 %33, 436
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2985, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 524288
  %2991 = icmp ne i32 %2990, 0
  %2992 = fcmp fast ogt float %2987, 0x3FE0101020000000
  %2993 = select i1 %2992, float 1.000000e+00, float 0.000000e+00
  %2994 = select i1 %2991, float %2993, float %2987
  %2995 = fmul fast float %2994, %2975
  br label %2996

; <label>:2996                                    ; preds = %2980, %2974
  %2997 = phi float [ %2995, %2980 ], [ %2975, %2974 ]
  %2998 = fcmp fast ult float %2997, 0x3F70101020000000
  br i1 %2998, label %3580, label %2999

; <label>:2999                                    ; preds = %2996
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 16
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3202, label %3004

; <label>:3004                                    ; preds = %2999
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %33, 388
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = extractvalue %dx.types.ResRet.f32 %3012, 3
  %3017 = and i32 %3006, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = lshr i32 %3006, 8
  %3020 = and i32 %3019, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = fmul fast float %3016, %3018
  %3023 = fadd fast float %3022, %3021
  %3024 = fmul fast float %3023, 0x3F70101000000000
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 512
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3037, label %3029

; <label>:3029                                    ; preds = %3004
  %3030 = add i32 %33, 472
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %3032, 0
  %3034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3034, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  br label %3037

; <label>:3037                                    ; preds = %3029, %3004
  %3038 = phi float [ %3036, %3029 ], [ 1.000000e+00, %3004 ]
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 33554432
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3149, label %3043

; <label>:3043                                    ; preds = %3037
  %3044 = add i32 %33, 272
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 65535
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = lshr i32 %3046, 16
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = add i32 %33, 276
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 65535
  %3055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3054)  ; LegacyF16ToF32(value)
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 24
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = and i32 %3057, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101020000000
  %3064 = lshr i32 %3057, 8
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = lshr i32 %3057, 16
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = add i32 %33, 268
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = lshr i32 %3074, 24
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = and i32 %3074, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = fmul fast float %3079, 0x3F70101020000000
  %3081 = lshr i32 %3074, 8
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = lshr i32 %3074, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F70101020000000
  %3089 = bitcast float %3013 to i32
  %3090 = ashr i32 %3089, 1
  %3091 = sub nsw i32 1597463174, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3013, 5.000000e-01
  %3094 = fmul fast float %3092, %3092
  %3095 = fmul fast float %3094, %3093
  %3096 = fsub fast float 1.500000e+00, %3095
  %3097 = fmul fast float %3092, %3013
  %3098 = fmul fast float %3097, %3096
  %3099 = bitcast float %3014 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3014, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3014
  %3108 = fmul fast float %3107, %3106
  %3109 = bitcast float %3015 to i32
  %3110 = ashr i32 %3109, 1
  %3111 = sub nsw i32 1597463174, %3110
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3015, 5.000000e-01
  %3114 = fmul fast float %3112, %3112
  %3115 = fmul fast float %3114, %3113
  %3116 = fsub fast float 1.500000e+00, %3115
  %3117 = fmul fast float %3112, %3015
  %3118 = fmul fast float %3117, %3116
  %3119 = fsub fast float %3098, %3080
  %3120 = fsub fast float %3108, %3084
  %3121 = fsub fast float %3118, %3088
  %3122 = fmul fast float %3119, %3048
  %3123 = fmul fast float %3120, %3050
  %3124 = fmul fast float %3121, %3055
  %3125 = fadd fast float %3122, %3063
  %3126 = fadd fast float %3123, %3067
  %3127 = fadd fast float %3124, %3071
  %3128 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3129 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3130 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3131 = fmul fast float %3128, %3128
  %3132 = fmul fast float %3129, %3129
  %3133 = fmul fast float %3130, %3130
  %3134 = fsub fast float %3131, %3013
  %3135 = fsub fast float %3132, %3014
  %3136 = fsub fast float %3133, %3015
  %3137 = fmul fast float %3134, %3038
  %3138 = fmul fast float %3135, %3038
  %3139 = fmul fast float %3136, %3038
  %3140 = fadd fast float %3137, %3013
  %3141 = fadd fast float %3138, %3014
  %3142 = fadd fast float %3139, %3015
  %3143 = fadd fast float %3060, %3024
  %3144 = fsub fast float %3143, %3077
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fsub fast float %3145, %3024
  %3147 = fmul fast float %3146, %3038
  %3148 = fadd fast float %3147, %3024
  br label %3202

; <label>:3149                                    ; preds = %3037
  %3150 = and i32 %3040, 134217728
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3186, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3155 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fmul fast float %3156, %3038
  %3160 = fmul fast float %3157, %3038
  %3161 = fmul fast float %3158, %3038
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  %3166 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3167 = call float @dx.op.unary.f32(i32 24, float %3015)  ; Sqrt(value)
  %3168 = fmul fast float %3162, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3165
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3165
  %3173 = fmul fast float %3163, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3166
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3166
  %3178 = fmul fast float %3164, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3167
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3167
  %3183 = fmul fast float %3172, %3172
  %3184 = fmul fast float %3177, %3177
  %3185 = fmul fast float %3182, %3182
  br label %3202

; <label>:3186                                    ; preds = %3149
  %3187 = fmul fast float %317, %317
  %3188 = fmul fast float %321, %321
  %3189 = fmul fast float %325, %325
  %3190 = fadd fast float %3187, -1.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fadd fast float %3189, -1.000000e+00
  %3193 = fmul fast float %3038, %3190
  %3194 = fmul fast float %3038, %3191
  %3195 = fmul fast float %3038, %3192
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fadd fast float %3195, 1.000000e+00
  %3199 = fmul fast float %3196, %3013
  %3200 = fmul fast float %3197, %3014
  %3201 = fmul fast float %3198, %3015
  br label %3202

; <label>:3202                                    ; preds = %3186, %3152, %3043, %2999
  %3203 = phi float [ %3148, %3043 ], [ %3024, %3152 ], [ %3024, %3186 ], [ 0x3FA23C0BE0000000, %2999 ]
  %3204 = phi float [ %3140, %3043 ], [ %3183, %3152 ], [ %3199, %3186 ], [ 1.000000e+00, %2999 ]
  %3205 = phi float [ %3141, %3043 ], [ %3184, %3152 ], [ %3200, %3186 ], [ 1.000000e+00, %2999 ]
  %3206 = phi float [ %3142, %3043 ], [ %3185, %3152 ], [ %3201, %3186 ], [ 1.000000e+00, %2999 ]
  %3207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.i32 %3207, 1
  %3209 = and i32 %3208, 1
  %3210 = icmp ne i32 %3209, 0
  %3211 = add i32 %33, 356
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 32
  %3215 = icmp ne i32 %3214, 0
  %3216 = and i1 %3210, %3215
  %3217 = select i1 %3216, float 1.000000e+00, float %3204
  %3218 = select i1 %3216, float 0x3FD3333340000000, float %3205
  %3219 = select i1 %3216, float 0x3FD3333340000000, float %3206
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 32
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3296, label %3224

; <label>:3224                                    ; preds = %3202
  %3225 = add i32 %33, 140
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %33, 404
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.ResRet.f32 %3233, 3
  %3238 = and i32 %3227, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = lshr i32 %3227, 8
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3227, 16
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101000000000
  %3247 = fmul fast float %3234, %3239
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101000000000
  %3250 = fadd fast float %3235, -5.000000e-01
  %3251 = fadd fast float %3237, -5.000000e-01
  %3252 = fmul fast float %3250, %3246
  %3253 = fmul fast float %3251, %3246
  %3254 = fadd fast float %3252, 5.000000e-01
  %3255 = fadd fast float %3253, 5.000000e-01
  %3256 = fmul fast float %3254, 2.000000e+00
  %3257 = fadd fast float %3256, -1.000000e+00
  %3258 = fmul fast float %3255, 2.000000e+00
  %3259 = fadd fast float %3258, -1.000000e+00
  %3260 = fadd fast float %3257, %3259
  %3261 = fmul fast float %3260, 5.000000e-01
  %3262 = fsub fast float %3257, %3259
  %3263 = fmul fast float %3262, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 6, float %3261)  ; FAbs(value)
  %3265 = fsub fast float 1.000000e+00, %3264
  %3266 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3267 = fsub fast float %3265, %3266
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3263, float %3267, float %3261, float %3263, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3261, %3269
  %3271 = fmul fast float %3263, %3269
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 67108864
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3292, label %3276

; <label>:3276                                    ; preds = %3224
  %3277 = add i32 %33, 328
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 65535
  %3281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3280)  ; LegacyF16ToF32(value)
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 65535
  %3285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3284)  ; LegacyF16ToF32(value)
  %3286 = lshr i32 %3279, 16
  %3287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3286)  ; LegacyF16ToF32(value)
  %3288 = fsub fast float %3249, %3287
  %3289 = fmul fast float %3288, %3281
  %3290 = fadd fast float %3289, %3285
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  br label %3292

; <label>:3292                                    ; preds = %3276, %3224
  %3293 = phi float [ %3291, %3276 ], [ %3249, %3224 ]
  %3294 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2713, float %2714)  ; Dot2(ax,ay,bx,by)
  %3295 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2715, float %2716)  ; Dot2(ax,ay,bx,by)
  br label %3296

; <label>:3296                                    ; preds = %3292, %3202
  %3297 = phi float [ %3293, %3292 ], [ 0x3FD6666660000000, %3202 ]
  %3298 = phi float [ %3294, %3292 ], [ 0.000000e+00, %3202 ]
  %3299 = phi float [ %3295, %3292 ], [ 0.000000e+00, %3202 ]
  %3300 = phi float [ %3236, %3292 ], [ 1.000000e+00, %3202 ]
  %3301 = add i32 %33, 208
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = lshr i32 %3303, 22
  %3305 = shl nuw nsw i32 %3304, 5
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 64
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3344, label %3311

; <label>:3311                                    ; preds = %3296
  %3312 = add i32 %33, 420
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = add i32 %3314, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 131072
  %3320 = icmp eq i32 %3319, 0
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3316, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = fmul fast float %3322, %305
  %3326 = fmul fast float %3323, %308
  %3327 = fmul fast float %3324, %311
  br i1 %3320, label %3334, label %3328

; <label>:3328                                    ; preds = %3311
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = fmul fast float %3330, %3325
  %3332 = fmul fast float %3330, %3326
  %3333 = fmul fast float %3330, %3327
  br label %3334

; <label>:3334                                    ; preds = %3328, %3311
  %3335 = phi float [ %3331, %3328 ], [ %3325, %3311 ]
  %3336 = phi float [ %3332, %3328 ], [ %3326, %3311 ]
  %3337 = phi float [ %3333, %3328 ], [ %3327, %3311 ]
  %3338 = fmul fast float %3335, %3306
  %3339 = select i1 %173, float %3338, float %3335
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3336, float %3337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = select i1 %173, float 0.000000e+00, float %3335
  %3342 = select i1 %173, float %3340, float %3336
  %3343 = select i1 %173, float 0.000000e+00, float %3337
  br label %3344

; <label>:3344                                    ; preds = %3334, %3296
  %3345 = phi float [ %3341, %3334 ], [ 0.000000e+00, %3296 ]
  %3346 = phi float [ %3342, %3334 ], [ 0.000000e+00, %3296 ]
  %3347 = phi float [ %3343, %3334 ], [ 0.000000e+00, %3296 ]
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 26624
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3375, label %3352

; <label>:3352                                    ; preds = %3344
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = and i32 %3354, 16384
  %3356 = icmp eq i32 %3355, 0
  br i1 %3356, label %3375, label %3357

; <label>:3357                                    ; preds = %3352
  %3358 = and i32 %3354, 1048576
  %3359 = icmp ne i32 %3358, 0
  %3360 = add i32 %33, 488
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = add i32 %33, 144
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = lshr i32 %3369, 24
  %3371 = uitofp i32 %3370 to float
  %3372 = fmul fast float %3366, 0x3F70101020000000
  %3373 = select i1 %3359, float 0x3F70101020000000, float %3372
  %3374 = fmul fast float %3373, %3371
  br label %3375

; <label>:3375                                    ; preds = %3357, %3352, %3344
  %3376 = phi float [ %3374, %3357 ], [ 0.000000e+00, %3352 ], [ 0.000000e+00, %3344 ]
  %3377 = add i32 %33, 144
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = lshr i32 %3379, 8
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = fmul fast float %3384, %3385
  %3387 = fadd fast float %3386, %3381
  %3388 = fmul fast float %3387, 0x3F70101020000000
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  br i1 %2701, label %3390, label %3398

; <label>:3390                                    ; preds = %3375
  %3391 = fsub fast float 1.000000e+00, %2997
  %3392 = fmul fast float %3391, %2689
  %3393 = fmul fast float %3391, %2690
  %3394 = fmul fast float %3391, %2691
  %3395 = fmul fast float %3391, %2692
  %3396 = fmul fast float %3391, %2693
  %3397 = fmul fast float %3391, %2694
  br label %3398

; <label>:3398                                    ; preds = %3390, %3375
  %3399 = phi float [ %3392, %3390 ], [ %2689, %3375 ]
  %3400 = phi float [ %3393, %3390 ], [ %2690, %3375 ]
  %3401 = phi float [ %3394, %3390 ], [ %2691, %3375 ]
  %3402 = phi float [ %3395, %3390 ], [ %2692, %3375 ]
  %3403 = phi float [ %3396, %3390 ], [ %2693, %3375 ]
  %3404 = phi float [ %3397, %3390 ], [ %2694, %3375 ]
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 3
  %3408 = icmp eq i32 %3407, 3
  br i1 %3408, label %3487, label %3409

; <label>:3409                                    ; preds = %3398
  %3410 = and i32 %3406, 16
  %3411 = icmp ne i32 %3410, 0
  %3412 = select i1 %3411, float %2997, float 0.000000e+00
  %3413 = icmp eq i32 %3407, 0
  br i1 %3413, label %3414, label %3442

; <label>:3414                                    ; preds = %3409
  %3415 = and i32 %3406, 64
  %3416 = icmp ne i32 %3415, 0
  %3417 = select i1 %3416, float %2997, float 0.000000e+00
  %3418 = fsub fast float %3217, %3399
  %3419 = fsub fast float %3218, %3400
  %3420 = fsub fast float %3219, %3401
  %3421 = fmul fast float %3412, %3418
  %3422 = fmul fast float %3412, %3419
  %3423 = fmul fast float %3412, %3420
  %3424 = fadd fast float %3421, %3399
  %3425 = fadd fast float %3422, %3400
  %3426 = fadd fast float %3423, %3401
  %3427 = fsub fast float %3203, %2695
  %3428 = fmul fast float %3412, %3427
  %3429 = fadd fast float %3428, %2695
  %3430 = fsub fast float %3345, %3402
  %3431 = fsub fast float %3346, %3403
  %3432 = fsub fast float %3347, %3404
  %3433 = fmul fast float %3417, %3430
  %3434 = fmul fast float %3417, %3431
  %3435 = fmul fast float %3417, %3432
  %3436 = fadd fast float %3433, %3402
  %3437 = fadd fast float %3434, %3403
  %3438 = fadd fast float %3435, %3404
  %3439 = fsub fast float %3389, %2699
  %3440 = fmul fast float %3412, %3439
  %3441 = fadd fast float %3440, %2699
  br label %3487

; <label>:3442                                    ; preds = %3409
  %3443 = icmp eq i32 %3407, 1
  br i1 %3443, label %3444, label %3457

; <label>:3444                                    ; preds = %3442
  %3445 = fadd fast float %3217, -1.000000e+00
  %3446 = fadd fast float %3218, -1.000000e+00
  %3447 = fadd fast float %3219, -1.000000e+00
  %3448 = fmul fast float %3412, %3445
  %3449 = fmul fast float %3412, %3446
  %3450 = fmul fast float %3412, %3447
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fmul fast float %3451, %3399
  %3455 = fmul fast float %3452, %3400
  %3456 = fmul fast float %3453, %3401
  br label %3487

; <label>:3457                                    ; preds = %3442
  %3458 = icmp eq i32 %3407, 2
  br i1 %3458, label %3459, label %3487

; <label>:3459                                    ; preds = %3457
  %3460 = call float @dx.op.unary.f32(i32 24, float %3217)  ; Sqrt(value)
  %3461 = call float @dx.op.unary.f32(i32 24, float %3218)  ; Sqrt(value)
  %3462 = call float @dx.op.unary.f32(i32 24, float %3219)  ; Sqrt(value)
  %3463 = fadd fast float %3460, -5.000000e-01
  %3464 = fadd fast float %3461, -5.000000e-01
  %3465 = fadd fast float %3462, -5.000000e-01
  %3466 = fmul fast float %3463, %3412
  %3467 = fmul fast float %3464, %3412
  %3468 = fmul fast float %3465, %3412
  %3469 = fadd fast float %3466, 5.000000e-01
  %3470 = fadd fast float %3467, 5.000000e-01
  %3471 = fadd fast float %3468, 5.000000e-01
  %3472 = fmul fast float %3469, 2.000000e+00
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3473, %3399
  %3475 = fadd fast float %3474, %3472
  %3476 = fmul fast float %3475, %3399
  %3477 = fmul fast float %3470, 2.000000e+00
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = fmul fast float %3478, %3400
  %3480 = fadd fast float %3479, %3477
  %3481 = fmul fast float %3480, %3400
  %3482 = fmul fast float %3471, 2.000000e+00
  %3483 = fsub fast float 1.000000e+00, %3482
  %3484 = fmul fast float %3483, %3401
  %3485 = fadd fast float %3484, %3482
  %3486 = fmul fast float %3485, %3401
  br label %3487

; <label>:3487                                    ; preds = %3459, %3457, %3444, %3414, %3398
  %3488 = phi float [ %3399, %3398 ], [ %3476, %3459 ], [ %3399, %3457 ], [ %3454, %3444 ], [ %3424, %3414 ]
  %3489 = phi float [ %3400, %3398 ], [ %3481, %3459 ], [ %3400, %3457 ], [ %3455, %3444 ], [ %3425, %3414 ]
  %3490 = phi float [ %3401, %3398 ], [ %3486, %3459 ], [ %3401, %3457 ], [ %3456, %3444 ], [ %3426, %3414 ]
  %3491 = phi float [ %3402, %3398 ], [ %3402, %3459 ], [ %3402, %3457 ], [ %3402, %3444 ], [ %3436, %3414 ]
  %3492 = phi float [ %3403, %3398 ], [ %3403, %3459 ], [ %3403, %3457 ], [ %3403, %3444 ], [ %3437, %3414 ]
  %3493 = phi float [ %3404, %3398 ], [ %3404, %3459 ], [ %3404, %3457 ], [ %3404, %3444 ], [ %3438, %3414 ]
  %3494 = phi float [ %2695, %3398 ], [ %2695, %3459 ], [ %2695, %3457 ], [ %2695, %3444 ], [ %3429, %3414 ]
  %3495 = phi float [ %2699, %3398 ], [ %2699, %3459 ], [ %2699, %3457 ], [ %2699, %3444 ], [ %3441, %3414 ]
  %3496 = and i32 %3406, 12
  %3497 = icmp eq i32 %3496, 12
  br i1 %3497, label %3580, label %3498

; <label>:3498                                    ; preds = %3487
  %3499 = and i32 %3406, 2097184
  %3500 = icmp eq i32 %3499, 2097184
  %3501 = select i1 %3500, float %2997, float 0.000000e+00
  %3502 = and i32 %3406, 4194336
  %3503 = icmp eq i32 %3502, 4194336
  %3504 = select i1 %3503, float %2997, float 0.000000e+00
  %3505 = and i32 %3406, 8388640
  %3506 = icmp eq i32 %3505, 8388640
  %3507 = select i1 %3506, float %2997, float 0.000000e+00
  %3508 = and i32 %3406, 16384
  %3509 = icmp ne i32 %3508, 0
  %3510 = select i1 %3509, float %2997, float 0.000000e+00
  %3511 = icmp eq i32 %3496, 0
  br i1 %3511, label %3512, label %3528

; <label>:3512                                    ; preds = %3498
  %3513 = fsub fast float %3298, %2687
  %3514 = fsub fast float %3299, %2688
  %3515 = fmul fast float %3501, %3513
  %3516 = fmul fast float %3501, %3514
  %3517 = fadd fast float %3515, %2687
  %3518 = fadd fast float %3516, %2688
  %3519 = fsub fast float %3300, %2697
  %3520 = fmul fast float %3504, %3519
  %3521 = fadd fast float %3520, %2697
  %3522 = fsub fast float %3297, %2696
  %3523 = fmul fast float %3507, %3522
  %3524 = fadd fast float %3523, %2696
  %3525 = fsub fast float %3376, %2698
  %3526 = fmul fast float %3510, %3525
  %3527 = fadd fast float %3526, %2698
  br label %3580

; <label>:3528                                    ; preds = %3498
  %3529 = icmp eq i32 %3496, 4
  br i1 %3529, label %3530, label %3564

; <label>:3530                                    ; preds = %3528
  %3531 = fmul fast float %3501, %3298
  %3532 = fmul fast float %3501, %3299
  %3533 = fadd fast float %3531, %2687
  %3534 = fadd fast float %3532, %2688
  %3535 = call float @dx.op.binary.f32(i32 36, float %2697, float %3300)  ; FMin(a,b)
  %3536 = fsub fast float %3535, %2697
  %3537 = fmul fast float %3536, %3504
  %3538 = fadd fast float %3537, %2697
  %3539 = fadd fast float %3297, %2696
  %3540 = fmul fast float %3539, 0x3FF337FAE0000000
  %3541 = fmul fast float %2696, %2696
  %3542 = fmul fast float %3297, %3297
  %3543 = fadd fast float %3542, %3541
  %3544 = fmul fast float %3543, 0x3FE5152B00000000
  %3545 = fmul fast float %2696, 0xBFCC1F85E0000000
  %3546 = fmul fast float %3545, %3297
  %3547 = fadd fast float %3546, 0xBFE1363700000000
  %3548 = fadd fast float %3547, %3540
  %3549 = fsub fast float %3548, %3544
  %3550 = fmul fast float %3539, 0x3FBA6F0D00000000
  %3551 = fmul fast float %3543, 0x3FD0432880000000
  %3552 = fmul fast float %2696, 0xBFEF110800000000
  %3553 = fmul fast float %3552, %3297
  %3554 = fadd fast float %3553, 1.000000e+00
  %3555 = fsub fast float %3554, %3550
  %3556 = fadd fast float %3555, %3551
  %3557 = fdiv fast float %3549, %3556
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fsub fast float %3558, %2696
  %3560 = fmul fast float %3559, %3507
  %3561 = fadd fast float %3560, %2696
  %3562 = fmul fast float %3510, %3376
  %3563 = fadd fast float %3562, %2698
  br label %3580

; <label>:3564                                    ; preds = %3528
  %3565 = icmp eq i32 %3496, 8
  br i1 %3565, label %3566, label %3580

; <label>:3566                                    ; preds = %3564
  %3567 = fmul fast float %3501, %3298
  %3568 = fmul fast float %3501, %3299
  %3569 = fadd fast float %3567, %2687
  %3570 = fadd fast float %3568, %2688
  %3571 = call float @dx.op.binary.f32(i32 36, float %2697, float %3300)  ; FMin(a,b)
  %3572 = fsub fast float %3571, %2697
  %3573 = fmul fast float %3572, %3504
  %3574 = fadd fast float %3573, %2697
  %3575 = fsub fast float %3297, %2696
  %3576 = fmul fast float %3507, %3575
  %3577 = fadd fast float %3576, %2696
  %3578 = fmul fast float %3510, %3376
  %3579 = fadd fast float %3578, %2698
  br label %3580

; <label>:3580                                    ; preds = %3566, %3564, %3530, %3512, %3487, %2996, %2700, %2686
  %3581 = phi float [ %2687, %3487 ], [ %2687, %2996 ], [ %2687, %2686 ], [ %2687, %2700 ], [ %3517, %3512 ], [ %3533, %3530 ], [ %2687, %3564 ], [ %3569, %3566 ]
  %3582 = phi float [ %2688, %3487 ], [ %2688, %2996 ], [ %2688, %2686 ], [ %2688, %2700 ], [ %3518, %3512 ], [ %3534, %3530 ], [ %2688, %3564 ], [ %3570, %3566 ]
  %3583 = phi float [ %3488, %3487 ], [ %2689, %2996 ], [ %2689, %2686 ], [ %2689, %2700 ], [ %3488, %3512 ], [ %3488, %3530 ], [ %3488, %3564 ], [ %3488, %3566 ]
  %3584 = phi float [ %3489, %3487 ], [ %2690, %2996 ], [ %2690, %2686 ], [ %2690, %2700 ], [ %3489, %3512 ], [ %3489, %3530 ], [ %3489, %3564 ], [ %3489, %3566 ]
  %3585 = phi float [ %3490, %3487 ], [ %2691, %2996 ], [ %2691, %2686 ], [ %2691, %2700 ], [ %3490, %3512 ], [ %3490, %3530 ], [ %3490, %3564 ], [ %3490, %3566 ]
  %3586 = phi float [ %3491, %3487 ], [ %2692, %2996 ], [ %2692, %2686 ], [ %2692, %2700 ], [ %3491, %3512 ], [ %3491, %3530 ], [ %3491, %3564 ], [ %3491, %3566 ]
  %3587 = phi float [ %3492, %3487 ], [ %2693, %2996 ], [ %2693, %2686 ], [ %2693, %2700 ], [ %3492, %3512 ], [ %3492, %3530 ], [ %3492, %3564 ], [ %3492, %3566 ]
  %3588 = phi float [ %3493, %3487 ], [ %2694, %2996 ], [ %2694, %2686 ], [ %2694, %2700 ], [ %3493, %3512 ], [ %3493, %3530 ], [ %3493, %3564 ], [ %3493, %3566 ]
  %3589 = phi float [ %3494, %3487 ], [ %2695, %2996 ], [ %2695, %2686 ], [ %2695, %2700 ], [ %3494, %3512 ], [ %3494, %3530 ], [ %3494, %3564 ], [ %3494, %3566 ]
  %3590 = phi float [ %2696, %3487 ], [ %2696, %2996 ], [ %2696, %2686 ], [ %2696, %2700 ], [ %3524, %3512 ], [ %3561, %3530 ], [ %2696, %3564 ], [ %3577, %3566 ]
  %3591 = phi float [ %2697, %3487 ], [ %2697, %2996 ], [ %2697, %2686 ], [ %2697, %2700 ], [ %3521, %3512 ], [ %3538, %3530 ], [ %2697, %3564 ], [ %3574, %3566 ]
  %3592 = phi float [ %2698, %3487 ], [ %2698, %2996 ], [ %2698, %2686 ], [ %2698, %2700 ], [ %3527, %3512 ], [ %3563, %3530 ], [ %2698, %3564 ], [ %3579, %3566 ]
  %3593 = phi float [ %3495, %3487 ], [ %2699, %2996 ], [ %2699, %2686 ], [ %2699, %2700 ], [ %3495, %3512 ], [ %3495, %3530 ], [ %3495, %3564 ], [ %3495, %3566 ]
  %3594 = add i32 %33, 360
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.i32 %3595, 1
  %3598 = bitcast i32 %3596 to float
  %3599 = bitcast i32 %3597 to float
  %3600 = fcmp fast oge float %3598, 0.000000e+00
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = select i1 %3600, float %3598, float %3602
  %3604 = add i32 %33, 456
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3606, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3608, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = fmul fast float %3610, %3599
  %3612 = fadd fast float %3611, %3603
  %3613 = call float @dx.op.dot2.f32(i32 54, float %3581, float %3582, float %3581, float %3582)  ; Dot2(ax,ay,bx,by)
  %3614 = fmul fast float %3613, 0x3FE3333340000000
  %3615 = fsub fast float 1.000000e+00, %3614
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3615, float %3581, float %3582, float %3615)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = call float @dx.op.unary.f32(i32 25, float %3616)  ; Rsqrt(value)
  %3618 = fmul fast float %3617, %3581
  %3619 = fmul fast float %3617, %3582
  %3620 = fmul fast float %3615, %3617
  %3621 = fmul fast float %3620, %75
  %3622 = fmul fast float %3620, %76
  %3623 = fmul fast float %3620, %77
  %3624 = fmul fast float %3618, %49
  %3625 = fmul fast float %3618, %50
  %3626 = fmul fast float %3618, %51
  %3627 = fadd fast float %3621, %3624
  %3628 = fadd fast float %3622, %3625
  %3629 = fadd fast float %3623, %3626
  %3630 = fmul fast float %87, %3619
  %3631 = fmul fast float %88, %3619
  %3632 = fmul fast float %89, %3619
  %3633 = fadd fast float %3627, %3630
  %3634 = fadd fast float %3628, %3631
  %3635 = fadd fast float %3629, %3632
  %3636 = call float @dx.op.dot3.f32(i32 55, float %3633, float %3634, float %3635, float %3633, float %3634, float %3635)  ; Dot3(ax,ay,az,bx,by,bz)
  %3637 = call float @dx.op.unary.f32(i32 25, float %3636)  ; Rsqrt(value)
  %3638 = fmul fast float %3633, %3637
  %3639 = fmul fast float %3634, %3637
  %3640 = fmul fast float %3635, %3637
  %3641 = and i32 %35, 1
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3643, label %4151

; <label>:3643                                    ; preds = %3580
  %3644 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3645 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3646 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3647 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3648 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3649 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3650 = fadd fast float %3644, %131
  %3651 = fadd fast float %3645, %132
  %3652 = fadd fast float %3646, %133
  %3653 = fadd fast float %3647, %131
  %3654 = fadd fast float %3648, %132
  %3655 = fadd fast float %3649, %133
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3663 = fmul fast float %3657, %68
  %3664 = fmul fast float %3663, %3661
  %3665 = fmul fast float %3658, %69
  %3666 = fmul fast float %3665, %3662
  %3667 = fptoui float %3664 to i32
  %3668 = fptoui float %3666 to i32
  %3669 = fadd fast float %3657, -1.000000e+00
  %3670 = fadd fast float %3658, -1.000000e+00
  %3671 = fptoui float %3669 to i32
  %3672 = fptoui float %3670 to i32
  %3673 = call i32 @dx.op.binary.i32(i32 40, i32 %3667, i32 %3671)  ; UMin(a,b)
  %3674 = call i32 @dx.op.binary.i32(i32 40, i32 %3668, i32 %3672)  ; UMin(a,b)
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 2
  %3677 = extractvalue %dx.types.CBufRet.f32 %3675, 3
  %3678 = fmul fast float %3676, %63
  %3679 = fsub fast float %3678, %3677
  %3680 = fadd fast float %3659, -1.000000e+00
  %3681 = call float @dx.op.binary.f32(i32 36, float %3679, float %3680)  ; FMin(a,b)
  %3682 = fptoui float %3681 to i32
  %3683 = fptoui float %3657 to i32
  %3684 = fptoui float %3658 to i32
  %3685 = mul i32 %3682, %3684
  %3686 = add i32 %3685, %3674
  %3687 = mul i32 %3686, %3683
  %3688 = add i32 %3687, %3673
  %3689 = shl i32 %3688, 2
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = and i32 %3691, 1023
  %3693 = lshr i32 %3691, 10
  %3694 = icmp eq i32 %3692, 0
  br i1 %3694, label %4120, label %3695

; <label>:3695                                    ; preds = %3643
  %3696 = and i32 %3691, 1023
  br label %3697

; <label>:3697                                    ; preds = %3823, %3695
  %3698 = phi i32 [ %3773, %3823 ], [ 0, %3695 ]
  %3699 = phi float [ %3824, %3823 ], [ 0.000000e+00, %3695 ]
  %3700 = phi float [ %3825, %3823 ], [ %3612, %3695 ]
  %3701 = phi float [ %3826, %3823 ], [ %3593, %3695 ]
  %3702 = phi float [ %3827, %3823 ], [ %3592, %3695 ]
  %3703 = phi float [ %3828, %3823 ], [ 0.000000e+00, %3695 ]
  %3704 = phi float [ %3829, %3823 ], [ %3586, %3695 ]
  %3705 = phi float [ %3830, %3823 ], [ %3587, %3695 ]
  %3706 = phi float [ %3831, %3823 ], [ %3588, %3695 ]
  %3707 = phi float [ %3832, %3823 ], [ %3638, %3695 ]
  %3708 = phi float [ %3833, %3823 ], [ %3639, %3695 ]
  %3709 = phi float [ %3834, %3823 ], [ %3640, %3695 ]
  %3710 = phi float [ %3835, %3823 ], [ %3591, %3695 ]
  %3711 = phi float [ %3836, %3823 ], [ %3590, %3695 ]
  %3712 = phi float [ %3837, %3823 ], [ 0.000000e+00, %3695 ]
  %3713 = phi float [ %3838, %3823 ], [ %3589, %3695 ]
  %3714 = phi float [ %3839, %3823 ], [ %3583, %3695 ]
  %3715 = phi float [ %3840, %3823 ], [ %3584, %3695 ]
  %3716 = phi float [ %3841, %3823 ], [ %3585, %3695 ]
  %3717 = add nuw nsw i32 %3698, %3693
  %3718 = shl i32 %3717, 2
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = shl i32 %3720, 8
  %3722 = or i32 %3721, 48
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = extractvalue %dx.types.ResRet.f32 %3723, 3
  %3728 = or i32 %3721, 64
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = extractvalue %dx.types.ResRet.i32 %3729, 1
  %3732 = or i32 %3721, 80
  %3733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3733, 3
  %3736 = or i32 %3721, 96
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3742 = or i32 %3721, 112
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3745 = or i32 %3721, 128
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = or i32 %3721, 144
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.ResRet.f32 %3752, 2
  %3756 = extractvalue %dx.types.ResRet.f32 %3752, 3
  %3757 = or i32 %3721, 160
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = or i32 %3721, 192
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = or i32 %3721, 208
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = or i32 %3721, 248
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = add nuw nsw i32 %3698, 1
  %3774 = bitcast float %3727 to i32
  %3775 = and i32 %3774, 512
  %3776 = icmp eq i32 %3775, 0
  %3777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.ResRet.f32 %3777, 1
  %3780 = extractvalue %dx.types.ResRet.f32 %3777, 2
  %3781 = extractvalue %dx.types.ResRet.f32 %3777, 3
  %3782 = call float @dx.op.dot4.f32(i32 56, float %3778, float %3779, float %3780, float %3781, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3783 = or i32 %3721, 16
  %3784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3784, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3784, 3
  %3789 = call float @dx.op.dot4.f32(i32 56, float %3785, float %3786, float %3787, float %3788, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3790 = or i32 %3721, 32
  %3791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3790, i32 undef)  ; BufferLoad(srv,index,wot)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.ResRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3791, 3
  %3796 = call float @dx.op.dot4.f32(i32 56, float %3792, float %3793, float %3794, float %3795, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3797 = call float @dx.op.unary.f32(i32 27, float %3782)  ; Round_ni(value)
  %3798 = call float @dx.op.unary.f32(i32 6, float %3797)  ; FAbs(value)
  %3799 = call float @dx.op.unary.f32(i32 27, float %3789)  ; Round_ni(value)
  %3800 = call float @dx.op.unary.f32(i32 6, float %3799)  ; FAbs(value)
  %3801 = call float @dx.op.unary.f32(i32 6, float %3796)  ; FAbs(value)
  %3802 = call float @dx.op.unary.f32(i32 27, float %3801)  ; Round_ni(value)
  %3803 = fadd fast float %3800, %3798
  %3804 = fadd fast float %3803, %3802
  %3805 = fcmp fast oeq float %3804, 0.000000e+00
  %3806 = call float @dx.op.dot4.f32(i32 56, float %3778, float %3779, float %3780, float %3781, float %3650, float %3651, float %3652, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3807 = call float @dx.op.dot4.f32(i32 56, float %3785, float %3786, float %3787, float %3788, float %3650, float %3651, float %3652, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3808 = call float @dx.op.dot4.f32(i32 56, float %3778, float %3779, float %3780, float %3781, float %3653, float %3654, float %3655, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3809 = call float @dx.op.dot4.f32(i32 56, float %3785, float %3786, float %3787, float %3788, float %3653, float %3654, float %3655, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3810 = fsub fast float %3806, %3782
  %3811 = fsub fast float %3808, %3782
  %3812 = fsub fast float %3807, %3789
  %3813 = fsub fast float %3809, %3789
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3724, float %3725, float %3726, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 2
  %3817 = fadd fast float %3816, %3814
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3820 = fcmp fast ogt float %3818, %3819
  %3821 = and i1 %3805, %3820
  %3822 = and i1 %3776, %3821
  br i1 %3822, label %3843, label %3823

; <label>:3823                                    ; preds = %4106, %3924, %3843, %3697
  %3824 = phi float [ %3699, %3843 ], [ %3927, %3924 ], [ %3927, %4106 ], [ %3699, %3697 ]
  %3825 = phi float [ %3700, %3843 ], [ %3700, %3924 ], [ %4081, %4106 ], [ %3700, %3697 ]
  %3826 = phi float [ %3701, %3843 ], [ %3701, %3924 ], [ %4079, %4106 ], [ %3701, %3697 ]
  %3827 = phi float [ %3702, %3843 ], [ %3702, %3924 ], [ %4051, %4106 ], [ %3702, %3697 ]
  %3828 = phi float [ %3703, %3843 ], [ %3703, %3924 ], [ %4049, %4106 ], [ %3703, %3697 ]
  %3829 = phi float [ %3704, %3843 ], [ %3704, %3924 ], [ %4116, %4106 ], [ %3704, %3697 ]
  %3830 = phi float [ %3705, %3843 ], [ %3705, %3924 ], [ %4117, %4106 ], [ %3705, %3697 ]
  %3831 = phi float [ %3706, %3843 ], [ %3706, %3924 ], [ %4118, %4106 ], [ %3706, %3697 ]
  %3832 = phi float [ %3707, %3843 ], [ %3707, %3924 ], [ %4030, %4106 ], [ %3707, %3697 ]
  %3833 = phi float [ %3708, %3843 ], [ %3708, %3924 ], [ %4031, %4106 ], [ %3708, %3697 ]
  %3834 = phi float [ %3709, %3843 ], [ %3709, %3924 ], [ %4032, %4106 ], [ %3709, %3697 ]
  %3835 = phi float [ %3710, %3843 ], [ %3710, %3924 ], [ %4059, %4106 ], [ %3710, %3697 ]
  %3836 = phi float [ %3711, %3843 ], [ %3711, %3924 ], [ %4056, %4106 ], [ %3711, %3697 ]
  %3837 = phi float [ %3712, %3843 ], [ %3712, %3924 ], [ %4053, %4106 ], [ %3712, %3697 ]
  %3838 = phi float [ %3713, %3843 ], [ %3713, %3924 ], [ %4047, %4106 ], [ %3713, %3697 ]
  %3839 = phi float [ %3714, %3843 ], [ %3714, %3924 ], [ %4042, %4106 ], [ %3714, %3697 ]
  %3840 = phi float [ %3715, %3843 ], [ %3715, %3924 ], [ %4043, %4106 ], [ %3715, %3697 ]
  %3841 = phi float [ %3716, %3843 ], [ %3716, %3924 ], [ %4044, %4106 ], [ %3716, %3697 ]
  %3842 = icmp eq i32 %3773, %3696
  br i1 %3842, label %4119, label %3697

; <label>:3843                                    ; preds = %3697
  %3844 = extractvalue %dx.types.ResRet.f32 %3743, 3
  %3845 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3849 = extractvalue %dx.types.ResRet.i32 %3729, 3
  %3850 = extractvalue %dx.types.ResRet.i32 %3729, 2
  %3851 = add i32 %3849, 0
  %3852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3851, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3852, %dx.types.Handle %3853, float %3782, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float %3810, float %3812, float undef, float %3811, float %3813, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = fmul fast float %3855, %3848
  %3857 = fadd fast float %3856, %3847
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = fmul fast float %3782, %3738
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3789, float %3859)  ; FMad(a,b,c)
  %3861 = fadd fast float %3860, %3846
  %3862 = fmul fast float %3782, %3740
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3741, float %3789, float %3862)  ; FMad(a,b,c)
  %3864 = fadd fast float %3863, %3845
  %3865 = fmul fast float %3810, %3738
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3812, float %3865)  ; FMad(a,b,c)
  %3867 = fmul fast float %3810, %3740
  %3868 = call float @dx.op.tertiary.f32(i32 46, float %3741, float %3812, float %3867)  ; FMad(a,b,c)
  %3869 = fmul fast float %3811, %3738
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3813, float %3869)  ; FMad(a,b,c)
  %3871 = fmul fast float %3811, %3740
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3741, float %3813, float %3871)  ; FMad(a,b,c)
  %3873 = add i32 %3850, 0
  %3874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3873, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3875 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3874, %dx.types.Handle %3853, float %3861, float %3864, float undef, float undef, i32 0, i32 0, i32 undef, float %3866, float %3868, float undef, float %3870, float %3872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = and i32 %3774, 1024
  %3878 = icmp ne i32 %3877, 0
  %3879 = fcmp fast ogt float %3876, 0x3FE0101020000000
  %3880 = uitofp i1 %3879 to float
  %3881 = select i1 %3878, float %3880, float %3876
  %3882 = and i32 %3774, 8192
  %3883 = icmp ne i32 %3882, 0
  %3884 = select i1 %3883, float %3844, float 1.000000e+00
  %3885 = fmul fast float %3782, 2.000000e+00
  %3886 = fadd fast float %3885, -1.000000e+00
  %3887 = call float @dx.op.unary.f32(i32 6, float %3886)  ; FAbs(value)
  %3888 = fmul fast float %3887, %3771
  %3889 = fsub fast float %3888, %3771
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fmul fast float %3789, 2.000000e+00
  %3892 = fadd fast float %3891, -1.000000e+00
  %3893 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3894 = fmul fast float %3893, %3772
  %3895 = fsub fast float %3894, %3772
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3801, %3734
  %3898 = fsub fast float %3897, %3734
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3858, %3884
  %3901 = fmul fast float %3900, %3855
  %3902 = fmul fast float %3901, %3890
  %3903 = fmul fast float %3902, %3881
  %3904 = fmul fast float %3903, %3896
  %3905 = fmul fast float %3904, %3899
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3909 = fsub fast float %3818, %3908
  %3910 = fmul fast float %3909, %3907
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = fmul fast float %3905, %3735
  %3913 = fadd fast float %3905, %3735
  %3914 = fmul fast float %3913, %3744
  %3915 = fsub fast float %3914, %3744
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = and i32 %3774, 128
  %3918 = icmp ne i32 %3917, 0
  %3919 = select i1 %3918, float %3916, float %3912
  %3920 = fmul fast float %3919, %3911
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = fcmp fast ugt float %3920, %3922
  br i1 %3923, label %3924, label %3823

; <label>:3924                                    ; preds = %3843
  %3925 = select i1 %3883, float %3920, float 0.000000e+00
  %3926 = fadd fast float %3925, %3699
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  br i1 %3883, label %3823, label %3928

; <label>:3928                                    ; preds = %3924
  %3929 = and i32 %3774, 4
  %3930 = and i32 %3774, 8
  %3931 = add i32 %3730, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3932, %dx.types.Handle %3933, float %3861, float %3864, float undef, float undef, i32 0, i32 0, i32 undef, float %3866, float %3868, float undef, float %3870, float %3872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3938 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %3939 = bitcast float %3756 to i32
  %3940 = and i32 %3939, 255
  %3941 = uitofp i32 %3940 to float
  %3942 = lshr i32 %3939, 8
  %3943 = and i32 %3942, 255
  %3944 = uitofp i32 %3943 to float
  %3945 = fmul fast float %3938, %3941
  %3946 = fadd fast float %3945, %3944
  %3947 = fmul fast float %3946, 0x3F70101000000000
  %3948 = add i32 %3731, 0
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3949, %dx.types.Handle %3933, float %3861, float %3864, float undef, float undef, i32 0, i32 0, i32 undef, float %3866, float %3868, float undef, float %3870, float %3872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3955 = bitcast float %3750 to i32
  %3956 = and i32 %3955, 255
  %3957 = uitofp i32 %3956 to float
  %3958 = lshr i32 %3955, 8
  %3959 = and i32 %3958, 255
  %3960 = uitofp i32 %3959 to float
  %3961 = lshr i32 %3955, 16
  %3962 = and i32 %3961, 255
  %3963 = uitofp i32 %3962 to float
  %3964 = fmul fast float %3963, 0x3F70101000000000
  %3965 = fmul fast float %3951, %3957
  %3966 = fadd fast float %3965, %3960
  %3967 = fmul fast float %3966, 0x3F70101000000000
  %3968 = fadd fast float %3952, -5.000000e-01
  %3969 = fadd fast float %3954, -5.000000e-01
  %3970 = fmul fast float %3968, %3964
  %3971 = fmul fast float %3969, %3964
  %3972 = fadd fast float %3970, 5.000000e-01
  %3973 = fadd fast float %3971, 5.000000e-01
  %3974 = fmul fast float %3935, %3759
  %3975 = fmul fast float %3936, %3760
  %3976 = fmul fast float %3937, %3761
  %3977 = fmul fast float %3972, 2.000000e+00
  %3978 = fadd fast float %3977, -1.000000e+00
  %3979 = fmul fast float %3973, 2.000000e+00
  %3980 = fadd fast float %3979, -1.000000e+00
  %3981 = fadd fast float %3978, %3980
  %3982 = fmul fast float %3981, 5.000000e-01
  %3983 = fsub fast float %3978, %3980
  %3984 = fmul fast float %3983, 5.000000e-01
  %3985 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3986 = fsub fast float 1.000000e+00, %3985
  %3987 = call float @dx.op.unary.f32(i32 6, float %3984)  ; FAbs(value)
  %3988 = fsub fast float %3986, %3987
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3984, float %3988, float %3982, float %3984, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call float @dx.op.unary.f32(i32 25, float %3989)  ; Rsqrt(value)
  %3991 = fmul fast float %3982, %3990
  %3992 = fmul fast float %3984, %3990
  %3993 = fmul fast float %3990, %3988
  %3994 = fmul fast float %3993, %3724
  %3995 = fmul fast float %3993, %3725
  %3996 = fmul fast float %3993, %3726
  %3997 = fmul fast float %3991, %3747
  %3998 = fmul fast float %3991, %3748
  %3999 = fmul fast float %3991, %3749
  %4000 = fadd fast float %3997, %3994
  %4001 = fadd fast float %3998, %3995
  %4002 = fadd fast float %3999, %3996
  %4003 = fmul fast float %3992, %3753
  %4004 = fmul fast float %3992, %3754
  %4005 = fmul fast float %3992, %3755
  %4006 = fadd fast float %4000, %4003
  %4007 = fadd fast float %4001, %4004
  %4008 = fadd fast float %4002, %4005
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4006, float %4007, float %4008, float %4006, float %4007, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = call float @dx.op.unary.f32(i32 25, float %4009)  ; Rsqrt(value)
  %4011 = fmul fast float %4006, %4010
  %4012 = fmul fast float %4007, %4010
  %4013 = fmul fast float %4008, %4010
  %4014 = icmp ne i32 %3930, 0
  %4015 = select i1 %4014, float 1.000000e+00, float 0.000000e+00
  %4016 = fmul fast float %3920, %4015
  %4017 = and i32 %3774, 1
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4019, label %4023

; <label>:4019                                    ; preds = %3928
  %4020 = fsub fast float %4011, %3707
  %4021 = fsub fast float %4012, %3708
  %4022 = fsub fast float %4013, %3709
  br label %4023

; <label>:4023                                    ; preds = %4019, %3928
  %4024 = phi float [ %4020, %4019 ], [ %4011, %3928 ]
  %4025 = phi float [ %4021, %4019 ], [ %4012, %3928 ]
  %4026 = phi float [ %4022, %4019 ], [ %4013, %3928 ]
  %4027 = fmul float %4026, %4016
  %4028 = fmul float %4025, %4016
  %4029 = fmul float %4024, %4016
  %4030 = fadd fast float %4029, %3707
  %4031 = fadd fast float %4028, %3708
  %4032 = fadd fast float %4027, %3709
  %4033 = icmp ne i32 %3929, 0
  %4034 = select i1 %4033, float 1.000000e+00, float 0.000000e+00
  %4035 = fmul fast float %3920, %4034
  %4036 = fsub fast float %3974, %3714
  %4037 = fsub fast float %3975, %3715
  %4038 = fsub fast float %3976, %3716
  %4039 = fmul fast float %4036, %4035
  %4040 = fmul fast float %4037, %4035
  %4041 = fmul fast float %4038, %4035
  %4042 = fadd fast float %4039, %3714
  %4043 = fadd fast float %4040, %3715
  %4044 = fadd fast float %4041, %3716
  %4045 = fsub fast float %3947, %3713
  %4046 = fmul fast float %4045, %4035
  %4047 = fadd fast float %4046, %3713
  %4048 = fmul fast float %4035, %3703
  %4049 = fsub fast float %3703, %4048
  %4050 = fmul fast float %4035, %3702
  %4051 = fsub fast float %3702, %4050
  %4052 = fadd fast float %3920, %3712
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = fsub fast float %3967, %3711
  %4055 = fmul fast float %4054, %4016
  %4056 = fadd fast float %4055, %3711
  %4057 = fsub fast float %3953, %3710
  %4058 = fmul fast float %4057, %4016
  %4059 = fadd fast float %4058, %3710
  %4060 = call float @dx.op.dot3.f32(i32 55, float %3974, float %3975, float %3976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = fmul fast float %4063, %4060
  %4065 = fadd fast float %4064, %4062
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = bitcast float %3762 to i32
  %4068 = and i32 %4067, 65535
  %4069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4068)  ; LegacyF16ToF32(value)
  %4070 = lshr i32 %4067, 16
  %4071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4070)  ; LegacyF16ToF32(value)
  %4072 = fcmp fast oge float %4069, 0.000000e+00
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = select i1 %4072, float %4069, float %4074
  %4076 = fadd fast float %4075, %4071
  %4077 = fsub fast float %4066, %3701
  %4078 = fmul fast float %4077, %3920
  %4079 = fadd fast float %4078, %3701
  %4080 = fmul fast float %4076, %3920
  %4081 = call float @dx.op.binary.f32(i32 35, float %3700, float %4080)  ; FMax(a,b)
  %4082 = and i32 %3774, 16
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4106, label %4084

; <label>:4084                                    ; preds = %4023
  %4085 = bitcast float %3768 to i32
  %4086 = add i32 %3765, 0
  %4087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4087, %dx.types.Handle %3933, float %3861, float %3864, float undef, float undef, i32 0, i32 0, i32 undef, float %3866, float %3868, float undef, float %3870, float %3872, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4092 = and i32 %4085, 65535
  %4093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4092)  ; LegacyF16ToF32(value)
  %4094 = fmul fast float %4089, %3759
  %4095 = fmul fast float %4090, %3760
  %4096 = fmul fast float %4091, %3761
  %4097 = and i32 %3774, 16384
  %4098 = icmp ne i32 %4097, 0
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = select i1 %4098, float %4100, float 1.000000e+00
  %4102 = fmul fast float %4101, %4093
  %4103 = fmul fast float %4094, %4102
  %4104 = fmul fast float %4095, %4102
  %4105 = fmul fast float %4096, %4102
  br label %4106

; <label>:4106                                    ; preds = %4084, %4023
  %4107 = phi float [ %4103, %4084 ], [ 0.000000e+00, %4023 ]
  %4108 = phi float [ %4104, %4084 ], [ 0.000000e+00, %4023 ]
  %4109 = phi float [ %4105, %4084 ], [ 0.000000e+00, %4023 ]
  %4110 = fsub fast float %4107, %3704
  %4111 = fsub fast float %4108, %3705
  %4112 = fsub fast float %4109, %3706
  %4113 = fmul fast float %4110, %3920
  %4114 = fmul fast float %4111, %3920
  %4115 = fmul fast float %4112, %3920
  %4116 = fadd fast float %4113, %3704
  %4117 = fadd fast float %4114, %3705
  %4118 = fadd fast float %4115, %3706
  br label %3823

; <label>:4119                                    ; preds = %3823
  br label %4120

; <label>:4120                                    ; preds = %4119, %3643
  %4121 = phi float [ 0.000000e+00, %3643 ], [ %3824, %4119 ]
  %4122 = phi float [ %3612, %3643 ], [ %3825, %4119 ]
  %4123 = phi float [ %3593, %3643 ], [ %3826, %4119 ]
  %4124 = phi float [ %3592, %3643 ], [ %3827, %4119 ]
  %4125 = phi float [ 0.000000e+00, %3643 ], [ %3828, %4119 ]
  %4126 = phi float [ %3586, %3643 ], [ %3829, %4119 ]
  %4127 = phi float [ %3587, %3643 ], [ %3830, %4119 ]
  %4128 = phi float [ %3588, %3643 ], [ %3831, %4119 ]
  %4129 = phi float [ %3638, %3643 ], [ %3832, %4119 ]
  %4130 = phi float [ %3639, %3643 ], [ %3833, %4119 ]
  %4131 = phi float [ %3640, %3643 ], [ %3834, %4119 ]
  %4132 = phi float [ %3591, %3643 ], [ %3835, %4119 ]
  %4133 = phi float [ %3590, %3643 ], [ %3836, %4119 ]
  %4134 = phi float [ 0.000000e+00, %3643 ], [ %3837, %4119 ]
  %4135 = phi float [ %3589, %3643 ], [ %3838, %4119 ]
  %4136 = phi float [ %3583, %3643 ], [ %3839, %4119 ]
  %4137 = phi float [ %3584, %3643 ], [ %3840, %4119 ]
  %4138 = phi float [ %3585, %3643 ], [ %3841, %4119 ]
  %4139 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %4129, float %4130, float %4131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = call float @dx.op.unary.f32(i32 25, float %4139)  ; Rsqrt(value)
  %4141 = fmul fast float %4140, %4129
  %4142 = fmul fast float %4140, %4130
  %4143 = fmul fast float %4140, %4131
  %4144 = fadd fast float %4134, %907
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4146 = call float @dx.op.dot3.f32(i32 55, float %4141, float %4142, float %4143, float %4141, float %4142, float %4143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = call float @dx.op.unary.f32(i32 25, float %4146)  ; Rsqrt(value)
  %4148 = fmul fast float %4147, %4141
  %4149 = fmul fast float %4147, %4142
  %4150 = fmul fast float %4147, %4143
  br label %4151

; <label>:4151                                    ; preds = %4120, %3580
  %4152 = phi float [ %4148, %4120 ], [ %3638, %3580 ]
  %4153 = phi float [ %4149, %4120 ], [ %3639, %3580 ]
  %4154 = phi float [ %4150, %4120 ], [ %3640, %3580 ]
  %4155 = phi float [ %4136, %4120 ], [ %3583, %3580 ]
  %4156 = phi float [ %4137, %4120 ], [ %3584, %3580 ]
  %4157 = phi float [ %4138, %4120 ], [ %3585, %3580 ]
  %4158 = phi float [ %4126, %4120 ], [ %3586, %3580 ]
  %4159 = phi float [ %4127, %4120 ], [ %3587, %3580 ]
  %4160 = phi float [ %4128, %4120 ], [ %3588, %3580 ]
  %4161 = phi float [ %4135, %4120 ], [ %3589, %3580 ]
  %4162 = phi float [ %4145, %4120 ], [ %907, %3580 ]
  %4163 = phi float [ %4133, %4120 ], [ %3590, %3580 ]
  %4164 = phi float [ %4132, %4120 ], [ %3591, %3580 ]
  %4165 = phi float [ %4125, %4120 ], [ 0.000000e+00, %3580 ]
  %4166 = phi float [ %4124, %4120 ], [ %3592, %3580 ]
  %4167 = phi float [ %4121, %4120 ], [ 0.000000e+00, %3580 ]
  %4168 = phi float [ %4122, %4120 ], [ %3612, %3580 ]
  %4169 = phi float [ %4123, %4120 ], [ %3593, %3580 ]
  %4170 = fadd fast float %4161, 0xBFB99999A0000000
  %4171 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4172 = fmul fast float %4171, 0x3FF1C71C80000000
  %4173 = call float @dx.op.binary.f32(i32 36, float %4161, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4174 = fsub fast float 1.000000e+00, %4172
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4175, %4155
  %4177 = fmul fast float %4175, %4156
  %4178 = fmul fast float %4175, %4157
  %4179 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4182 = fmul fast float %4172, %4155
  %4183 = fmul fast float %4172, %4156
  %4184 = fmul fast float %4172, %4157
  %4185 = fadd fast float %4182, %4173
  %4186 = fadd fast float %4183, %4173
  %4187 = fadd fast float %4184, %4173
  %4188 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.i32 %4192, 3
  %4194 = and i32 %4193, 8
  %4195 = icmp ne i32 %4194, 0
  %4196 = call float @dx.op.binary.f32(i32 35, float %4179, float %4155)  ; FMax(a,b)
  %4197 = call float @dx.op.binary.f32(i32 35, float %4180, float %4155)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 35, float %4181, float %4155)  ; FMax(a,b)
  %4199 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = select i1 %173, float %4155, float %4179
  %4201 = select i1 %173, float %4199, float %4180
  %4202 = select i1 %173, float 1.000000e+00, float %4181
  %4203 = select i1 %4195, float %4196, float %4200
  %4204 = select i1 %4195, float %4197, float %4201
  %4205 = select i1 %4195, float %4198, float %4202
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4210 = fadd fast float %4207, %131
  %4211 = fadd fast float %4208, %132
  %4212 = fadd fast float %4209, %133
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %4216 = fsub fast float %4210, %4214
  %4217 = fsub fast float %4211, %4215
  %4218 = fmul fast float %4216, %4216
  %4219 = fmul fast float %4217, %4217
  %4220 = fadd fast float %4218, %4219
  %4221 = call float @dx.op.unary.f32(i32 24, float %4220)  ; Sqrt(value)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4213, 2
  %4223 = fcmp fast olt float %4221, %4222
  br i1 %4223, label %4224, label %4291

; <label>:4224                                    ; preds = %4151
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4233 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4234 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4235 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4236 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4237 = fadd fast float %4234, %4210
  %4238 = fadd fast float %4235, %4211
  %4239 = fadd fast float %4236, %4212
  %4240 = fmul fast float %4237, %4226
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4228, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4230, float %4241)  ; FMad(a,b,c)
  %4243 = fmul fast float %4237, %4231
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4232, float %4243)  ; FMad(a,b,c)
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4233, float %4244)  ; FMad(a,b,c)
  %4246 = fsub fast float %4242, %4234
  %4247 = fsub fast float %4245, %4235
  %4248 = fsub fast float %4246, %4214
  %4249 = fadd fast float %4248, %4222
  %4250 = fsub fast float %4247, %4215
  %4251 = fadd fast float %4250, %4222
  %4252 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4253 = fmul fast float %4249, %4252
  %4254 = fmul fast float %4251, %4252
  %4255 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4257 = fsub fast float 1.000000e+00, %4255
  %4258 = fsub fast float 1.000000e+00, %4256
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4257, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = fcmp fast ugt float %4260, 0.000000e+00
  br i1 %4261, label %4262, label %4565

; <label>:4262                                    ; preds = %4224
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 2
  %4265 = fmul fast float %4264, %4260
  %4266 = extractvalue %dx.types.CBufRet.f32 %4263, 3
  %4267 = fadd fast float %4266, %4265
  %4268 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4269 = fadd fast float %4267, %4236
  %4270 = fmul fast float %4242, %4230
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4233, float %4270)  ; FMad(a,b,c)
  %4272 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4268, float %4271)  ; FMad(a,b,c)
  %4273 = fsub fast float %4272, %4236
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = fsub fast float %4273, %4275
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4257, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4257, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.ResRet.f32 %4281, 2
  %4285 = fadd fast float %4282, %4278
  %4286 = fmul fast float %4285, 0x3F847AE140000000
  %4287 = fadd fast float %4283, %4279
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  %4289 = fadd fast float %4284, %4280
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  br label %4565

; <label>:4291                                    ; preds = %4151
  %4292 = and i32 %149, 1
  %4293 = icmp eq i32 %4292, 0
  br i1 %4293, label %4565, label %4294

; <label>:4294                                    ; preds = %4291
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4302 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4305 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4306 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4307 = fadd fast float %4304, %4210
  %4308 = fadd fast float %4305, %4211
  %4309 = fadd fast float %4306, %4212
  %4310 = fmul fast float %4307, %4296
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4298, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4300, float %4311)  ; FMad(a,b,c)
  %4313 = fmul fast float %4307, %4301
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4303, float %4314)  ; FMad(a,b,c)
  %4316 = fsub fast float %4312, %4304
  %4317 = fsub fast float %4315, %4305
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4322 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.i32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.i32 %4325, 1
  %4328 = udiv i32 %4327, %4326
  %4329 = fsub fast float %4316, %4319
  %4330 = fsub fast float %4317, %4320
  %4331 = call float @dx.op.binary.f32(i32 35, float %4329, float 0.000000e+00)  ; FMax(a,b)
  %4332 = call float @dx.op.binary.f32(i32 35, float %4330, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call float @dx.op.binary.f32(i32 36, float %4331, float %4321)  ; FMin(a,b)
  %4334 = call float @dx.op.binary.f32(i32 36, float %4332, float %4322)  ; FMin(a,b)
  %4335 = add i32 %4326, -1
  %4336 = add i32 %4328, -1
  %4337 = fmul fast float %4333, %4324
  %4338 = fmul fast float %4334, %4324
  %4339 = fptoui float %4337 to i32
  %4340 = fptoui float %4338 to i32
  %4341 = call i32 @dx.op.binary.i32(i32 40, i32 %4339, i32 %4335)  ; UMin(a,b)
  %4342 = call i32 @dx.op.binary.i32(i32 40, i32 %4340, i32 %4336)  ; UMin(a,b)
  %4343 = mul i32 %4342, %4326
  %4344 = add i32 %4343, %4341
  %4345 = shl i32 %4344, 2
  %4346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.i32 %4346, 0
  %4348 = icmp eq i32 %4347, -1
  br i1 %4348, label %4565, label %4349

; <label>:4349                                    ; preds = %4294
  %4350 = mul i32 %4347, 148
  %4351 = add i32 %4350, 4
  %4352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = add i32 %4350, 8
  %4355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = add i32 %4350, 36
  %4358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = add i32 %4350, 60
  %4361 = add i32 %4350, 92
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = add i32 %4350, 116
  %4365 = fsub fast float %4316, %4353
  %4366 = fsub fast float %4317, %4356
  %4367 = fmul fast float %4324, %4365
  %4368 = fmul fast float %4324, %4366
  %4369 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4374 = call float @dx.op.unary.f32(i32 83, float %4369)  ; DerivCoarseX(value)
  %4375 = call float @dx.op.unary.f32(i32 83, float %4371)  ; DerivCoarseX(value)
  %4376 = call float @dx.op.unary.f32(i32 84, float %4369)  ; DerivCoarseY(value)
  %4377 = call float @dx.op.unary.f32(i32 84, float %4371)  ; DerivCoarseY(value)
  %4378 = fmul fast float %4374, %4373
  %4379 = fmul fast float %4375, %4373
  %4380 = fmul fast float %4376, %4373
  %4381 = fmul fast float %4377, %4373
  %4382 = call float @dx.op.dot2.f32(i32 54, float %4380, float %4381, float %4380, float %4381)  ; Dot2(ax,ay,bx,by)
  %4383 = call float @dx.op.dot2.f32(i32 54, float %4378, float %4379, float %4378, float %4379)  ; Dot2(ax,ay,bx,by)
  %4384 = call float @dx.op.binary.f32(i32 35, float %4383, float %4382)  ; FMax(a,b)
  %4385 = call float @dx.op.unary.f32(i32 23, float %4384)  ; Log(value)
  %4386 = fmul fast float %4385, 5.000000e-01
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4389 = fadd fast float %4388, %4386
  %4390 = call float @dx.op.binary.f32(i32 35, float %4389, float 0.000000e+00)  ; FMax(a,b)
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 3
  %4393 = fadd fast float %4392, %4390
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4396 = fadd fast float %4393, %4395
  %4397 = add i32 %4363, 0
  %4398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4397, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4399 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4398, i32 0)  ; GetDimensions(handle,mipLevel)
  %4400 = extractvalue %dx.types.Dimensions %4399, 0
  %4401 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4400)  ; FirstbitLo(value)
  %4402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.i32 %4402, 1
  %4404 = sub nsw i32 %4403, %4401
  %4405 = sitofp i32 %4404 to float
  %4406 = fsub fast float %4396, %4405
  %4407 = call float @dx.op.binary.f32(i32 35, float %4406, float 0.000000e+00)  ; FMax(a,b)
  %4408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4398, %dx.types.Handle %27, float %4369, float %4371, float %4359, float undef, i32 0, i32 0, i32 undef, float %4407)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = fcmp ule float %4409, 0x3FE0101020000000
  %4411 = extractvalue %dx.types.CBufRet.i32 %4402, 0
  %4412 = and i32 %4411, 128
  %4413 = icmp ne i32 %4412, 0
  %4414 = and i1 %4410, %4413
  br i1 %4414, label %4565, label %4415

; <label>:4415                                    ; preds = %4349
  %4416 = add i32 %4350, 20
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = add i32 %4350, 24
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = add i32 %4350, 40
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = add i32 %4350, 96
  %4426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.i32 %4426, 0
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4430 = fmul fast float %4429, %4369
  %4431 = fmul fast float %4429, %4371
  %4432 = extractvalue %dx.types.CBufRet.f32 %4428, 3
  %4433 = fadd fast float %4430, %4432
  %4434 = fadd fast float %4431, %4432
  %4435 = add i32 %4427, 0
  %4436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4436, i32 0)  ; GetDimensions(handle,mipLevel)
  %4438 = extractvalue %dx.types.Dimensions %4437, 0
  %4439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4438)  ; FirstbitLo(value)
  %4440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.i32 %4440, 1
  %4442 = sub nsw i32 %4441, %4439
  %4443 = sitofp i32 %4442 to float
  %4444 = fsub fast float %4393, %4443
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float 0.000000e+00)  ; FMax(a,b)
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4436, %dx.types.Handle %27, float %4433, float %4434, float %4424, float undef, i32 0, i32 0, i32 undef, float %4445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = fmul fast float %4447, %4418
  %4449 = fadd fast float %4448, %4421
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 3
  %4458 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4459 = fadd fast float %4455, %4316
  %4460 = fadd fast float %4457, %4317
  %4461 = fadd fast float %4449, %4458
  %4462 = fmul fast float %4459, %4451
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4452, float %4462)  ; FMad(a,b,c)
  %4464 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4453, float %4463)  ; FMad(a,b,c)
  %4465 = fsub fast float %4464, %4458
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = fsub fast float %4465, %4467
  %4469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.i32 %4469, 0
  %4471 = call i32 @dx.op.binary.i32(i32 40, i32 %4347, i32 %4470)  ; UMin(a,b)
  %4472 = mul i32 %4471, 36
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = add i32 %4472, 4
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4478 = fmul fast float %4477, %4369
  %4479 = fmul fast float %4477, %4371
  %4480 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4481 = fadd fast float %4478, %4480
  %4482 = fadd fast float %4479, %4480
  %4483 = icmp eq i32 %4474, 0
  br i1 %4483, label %4552, label %4484

; <label>:4484                                    ; preds = %4415
  br label %4485

; <label>:4485                                    ; preds = %4542, %4484
  %4486 = phi float [ %4543, %4542 ], [ 0.000000e+00, %4484 ]
  %4487 = phi float [ %4544, %4542 ], [ 0.000000e+00, %4484 ]
  %4488 = phi float [ %4545, %4542 ], [ 0.000000e+00, %4484 ]
  %4489 = phi float [ %4546, %4542 ], [ 0.000000e+00, %4484 ]
  %4490 = phi float [ %4547, %4542 ], [ 0.000000e+00, %4484 ]
  %4491 = phi float [ %4548, %4542 ], [ 0.000000e+00, %4484 ]
  %4492 = phi i32 [ %4549, %4542 ], [ 0, %4484 ]
  %4493 = shl i32 %4492, 2
  %4494 = add i32 %4360, %4493
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4364, %4493
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = add i32 %4499, 0
  %4501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4500, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4502 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4501, i32 0)  ; GetDimensions(handle,mipLevel)
  %4503 = extractvalue %dx.types.Dimensions %4502, 0
  %4504 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4503)  ; FirstbitLo(value)
  %4505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.i32 %4505, 1
  %4507 = sub nsw i32 %4506, %4504
  %4508 = sitofp i32 %4507 to float
  %4509 = fsub fast float %4393, %4508
  %4510 = call float @dx.op.binary.f32(i32 35, float %4509, float 0.000000e+00)  ; FMax(a,b)
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4501, %dx.types.Handle %27, float %4481, float %4482, float %4496, float undef, i32 0, i32 0, i32 undef, float %4510)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = fcmp fast ogt float %4512, 0.000000e+00
  br i1 %4513, label %4514, label %4542

; <label>:4514                                    ; preds = %4485
  %4515 = add i32 %4475, %4493
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = and i32 %4517, 32767
  %4519 = mul nuw nsw i32 %4518, 928
  %4520 = add nuw nsw i32 %4519, 48
  %4521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4520, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.ResRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.ResRet.f32 %4521, 2
  %4525 = add nuw nsw i32 %4519, 60
  %4526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.ResRet.f32 %4526, 1
  %4529 = extractvalue %dx.types.ResRet.f32 %4526, 2
  %4530 = fmul fast float %4522, %4512
  %4531 = fmul fast float %4523, %4512
  %4532 = fmul fast float %4524, %4512
  %4533 = fadd fast float %4530, %4486
  %4534 = fadd fast float %4531, %4487
  %4535 = fadd fast float %4532, %4488
  %4536 = fmul fast float %4527, %4512
  %4537 = fmul fast float %4528, %4512
  %4538 = fmul fast float %4529, %4512
  %4539 = fadd fast float %4536, %4489
  %4540 = fadd fast float %4537, %4490
  %4541 = fadd fast float %4538, %4491
  br label %4542

; <label>:4542                                    ; preds = %4514, %4485
  %4543 = phi float [ %4533, %4514 ], [ %4486, %4485 ]
  %4544 = phi float [ %4534, %4514 ], [ %4487, %4485 ]
  %4545 = phi float [ %4535, %4514 ], [ %4488, %4485 ]
  %4546 = phi float [ %4539, %4514 ], [ %4489, %4485 ]
  %4547 = phi float [ %4540, %4514 ], [ %4490, %4485 ]
  %4548 = phi float [ %4541, %4514 ], [ %4491, %4485 ]
  %4549 = add nuw i32 %4492, 1
  %4550 = icmp eq i32 %4549, %4474
  br i1 %4550, label %4551, label %4485

; <label>:4551                                    ; preds = %4542
  br label %4552

; <label>:4552                                    ; preds = %4551, %4415
  %4553 = phi float [ 0.000000e+00, %4415 ], [ %4543, %4551 ]
  %4554 = phi float [ 0.000000e+00, %4415 ], [ %4544, %4551 ]
  %4555 = phi float [ 0.000000e+00, %4415 ], [ %4545, %4551 ]
  %4556 = phi float [ 0.000000e+00, %4415 ], [ %4546, %4551 ]
  %4557 = phi float [ 0.000000e+00, %4415 ], [ %4547, %4551 ]
  %4558 = phi float [ 0.000000e+00, %4415 ], [ %4548, %4551 ]
  %4559 = fadd fast float %4556, %4553
  %4560 = fmul fast float %4559, 0x3F847AE140000000
  %4561 = fadd fast float %4557, %4554
  %4562 = fmul fast float %4561, 0x3F847AE140000000
  %4563 = fadd fast float %4558, %4555
  %4564 = fmul fast float %4563, 0x3F847AE140000000
  br label %4565

; <label>:4565                                    ; preds = %4552, %4349, %4294, %4291, %4262, %4224
  %4566 = phi float [ %4276, %4262 ], [ -1.310720e+05, %4224 ], [ %4468, %4552 ], [ -1.310720e+05, %4294 ], [ -1.310720e+05, %4349 ], [ -1.310720e+05, %4291 ]
  %4567 = phi float [ %4286, %4262 ], [ 0.000000e+00, %4224 ], [ %4560, %4552 ], [ 0.000000e+00, %4294 ], [ 0.000000e+00, %4349 ], [ 0.000000e+00, %4291 ]
  %4568 = phi float [ %4288, %4262 ], [ 0.000000e+00, %4224 ], [ %4562, %4552 ], [ 0.000000e+00, %4294 ], [ 0.000000e+00, %4349 ], [ 0.000000e+00, %4291 ]
  %4569 = phi float [ %4290, %4262 ], [ 0.000000e+00, %4224 ], [ %4564, %4552 ], [ 0.000000e+00, %4294 ], [ 0.000000e+00, %4349 ], [ 0.000000e+00, %4291 ]
  %4570 = phi i1 [ true, %4262 ], [ false, %4224 ], [ true, %4552 ], [ false, %4294 ], [ false, %4349 ], [ false, %4291 ]
  %4571 = and i32 %149, 3
  %4572 = icmp eq i32 %4571, 1
  %4573 = select i1 %4572, float 1.000000e+00, float 0.000000e+00
  %4574 = fsub fast float %4566, %133
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = select i1 %4570, float %4575, float 1.000000e+00
  %4577 = fmul fast float %4576, %4573
  %4578 = icmp eq i32 %4571, 3
  %4579 = select i1 %4578, float 1.000000e+00, float %4577
  %4580 = call float @dx.op.binary.f32(i32 35, float %4167, float %4579)  ; FMax(a,b)
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fcmp fast une float %4581, 0.000000e+00
  %4583 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call float @dx.op.unary.f32(i32 25, float %4583)  ; Rsqrt(value)
  br i1 %4582, label %4592, label %4585

; <label>:4585                                    ; preds = %4565
  %4586 = fmul fast float %4584, %131
  %4587 = fmul fast float %4584, %132
  %4588 = fmul fast float %4584, %133
  %4589 = fsub fast float -0.000000e+00, %4586
  %4590 = fsub fast float -0.000000e+00, %4587
  %4591 = fsub fast float -0.000000e+00, %4588
  br label %4760

; <label>:4592                                    ; preds = %4565
  %4593 = fmul fast float %131, %4584
  %4594 = fsub fast float -0.000000e+00, %4593
  %4595 = fmul fast float %132, %4584
  %4596 = fsub fast float -0.000000e+00, %4595
  %4597 = fmul fast float %133, %4584
  %4598 = fsub fast float -0.000000e+00, %4597
  %4599 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4596, float %4598, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = fmul fast float %4581, 2.500000e+00
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = fmul fast float %4581, 0x4013FFFFE0000000
  %4603 = fadd fast float %4602, 0xBFFFFFFFE0000000
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4581, 0x4004000020000000
  %4606 = fadd fast float %4605, 0xBFF8000040000000
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4609 = fmul fast float %4170, 1.000000e+01
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = fmul fast float %4610, 2.000000e+00
  %4612 = fsub fast float 3.000000e+00, %4611
  %4613 = fmul fast float %4610, %4610
  %4614 = fmul fast float %4613, %4612
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = fsub fast float 0x3FE3333340000000, %4191
  %4617 = fmul fast float %4616, 0x400AAAAAA0000000
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = fmul fast float %4615, %4618
  %4620 = fmul fast float %4203, 0x3FEA2B8620000000
  %4621 = fmul fast float %4204, 0x3FEA2B8620000000
  %4622 = fmul fast float %4205, 0x3FEA2B8620000000
  %4623 = fadd fast float %4620, 0x3FC81DFBA0000000
  %4624 = fmul fast float %4623, %4203
  %4625 = fadd fast float %4624, 0x3F910E6020000000
  %4626 = fadd fast float %4621, 0x3FC81DFBA0000000
  %4627 = fmul fast float %4626, %4204
  %4628 = fadd fast float %4627, 0x3F910E6020000000
  %4629 = fadd fast float %4622, 0x3FC81DFBA0000000
  %4630 = fmul fast float %4629, %4205
  %4631 = fadd fast float %4630, 0x3F910E6020000000
  %4632 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4635 = fsub fast float %4632, %4203
  %4636 = fsub fast float %4633, %4204
  %4637 = fsub fast float %4634, %4205
  %4638 = fmul fast float %4635, %4608
  %4639 = fmul fast float %4638, %4619
  %4640 = fmul fast float %4636, %4608
  %4641 = fmul fast float %4640, %4619
  %4642 = fmul fast float %4637, %4608
  %4643 = fmul fast float %4642, %4619
  %4644 = fadd fast float %4639, %4203
  %4645 = fadd fast float %4641, %4204
  %4646 = fadd fast float %4643, %4205
  %4647 = fmul fast float %4164, %4164
  %4648 = fmul fast float %4647, %4647
  %4649 = fadd fast float %4604, 1.000000e+00
  %4650 = fsub fast float %4649, %4619
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = fsub fast float 1.000000e+00, %4648
  %4655 = call float @dx.op.binary.f32(i32 36, float %4651, float %4654)  ; FMin(a,b)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4657 = call float @dx.op.binary.f32(i32 35, float %4655, float %4656)  ; FMax(a,b)
  %4658 = fadd fast float %4653, 0xBFE4CCCCC0000000
  %4659 = fmul fast float %4658, 0x4006DB6DA0000000
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fmul fast float %4660, 2.000000e+00
  %4662 = fsub fast float 3.000000e+00, %4661
  %4663 = bitcast float %4188 to i32
  %4664 = ashr i32 %4663, 1
  %4665 = add nsw i32 %4664, 532487669
  %4666 = bitcast i32 %4665 to float
  %4667 = fsub fast float 1.000000e+00, %4666
  %4668 = bitcast float %4667 to i32
  %4669 = sub nsw i32 2129859010, %4668
  %4670 = bitcast i32 %4669 to float
  %4671 = fmul fast float %4670, 2.000000e+00
  %4672 = bitcast float %4189 to i32
  %4673 = ashr i32 %4672, 1
  %4674 = add nsw i32 %4673, 532487669
  %4675 = bitcast i32 %4674 to float
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fmul fast float %4679, 2.000000e+00
  %4681 = bitcast float %4190 to i32
  %4682 = ashr i32 %4681, 1
  %4683 = add nsw i32 %4682, 532487669
  %4684 = bitcast i32 %4683 to float
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, 2.000000e+00
  %4690 = fsub fast float 0x4002A9FBE0000000, %4671
  %4691 = fadd fast float %4671, 0x3FD54FDF00000000
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fmul fast float %4694, %4690
  %4696 = fmul fast float %4695, %4695
  %4697 = fsub fast float 0x4002A9FBE0000000, %4680
  %4698 = fadd fast float %4680, 0x3FD54FDF00000000
  %4699 = bitcast float %4698 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = fmul fast float %4701, %4697
  %4703 = fmul fast float %4702, %4702
  %4704 = fsub fast float 0x4002A9FBE0000000, %4689
  %4705 = fadd fast float %4689, 0x3FD54FDF00000000
  %4706 = bitcast float %4705 to i32
  %4707 = sub nsw i32 2129859010, %4706
  %4708 = bitcast i32 %4707 to float
  %4709 = fmul fast float %4708, %4704
  %4710 = fmul fast float %4709, %4709
  %4711 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4696)  ; FMax(a,b)
  %4712 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4703)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4710)  ; FMax(a,b)
  %4714 = fsub fast float 1.000000e+00, %4599
  %4715 = fadd fast float %4714, %4615
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fsub fast float 1.000000e+00, %4579
  %4718 = fmul fast float %4657, %4717
  %4719 = fmul fast float %4660, %4660
  %4720 = fmul fast float %4719, %4718
  %4721 = fmul fast float %4720, %4662
  %4722 = fmul fast float %4717, 0xBFE99999A0000000
  %4723 = fmul fast float %4722, %4608
  %4724 = fmul fast float %4723, %4619
  %4725 = fadd fast float %4724, 1.000000e+00
  %4726 = fadd fast float %4191, -1.000000e+00
  %4727 = fmul fast float %4725, %4726
  %4728 = fadd fast float %4727, 1.000000e+00
  %4729 = fsub fast float %4711, %4188
  %4730 = fsub fast float %4712, %4189
  %4731 = fsub fast float %4713, %4190
  %4732 = fmul fast float %4721, %4729
  %4733 = fmul fast float %4721, %4730
  %4734 = fmul fast float %4721, %4731
  %4735 = fadd fast float %4732, %4188
  %4736 = fadd fast float %4733, %4189
  %4737 = fadd fast float %4734, %4190
  %4738 = fsub fast float %75, %4152
  %4739 = fsub fast float %76, %4153
  %4740 = fsub fast float %77, %4154
  %4741 = fmul fast float %4721, %4738
  %4742 = fmul fast float %4721, %4739
  %4743 = fmul fast float %4721, %4740
  %4744 = fadd fast float %4741, %4152
  %4745 = fadd fast float %4742, %4153
  %4746 = fadd fast float %4743, %4154
  %4747 = fmul fast float %4721, %4716
  %4748 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = fmul fast float %4747, %4749
  %4751 = fadd fast float %4750, %4748
  %4752 = fsub fast float 1.000000e+00, %4164
  %4753 = fmul fast float %4721, %4752
  %4754 = fadd fast float %4753, %4164
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4744, float %4745, float %4746, float %4744, float %4745, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.unary.f32(i32 25, float %4755)  ; Rsqrt(value)
  %4757 = fmul fast float %4744, %4756
  %4758 = fmul fast float %4745, %4756
  %4759 = fmul fast float %4746, %4756
  br label %4760

; <label>:4760                                    ; preds = %4592, %4585
  %4761 = phi float [ %4591, %4585 ], [ %4598, %4592 ]
  %4762 = phi float [ %4590, %4585 ], [ %4596, %4592 ]
  %4763 = phi float [ %4589, %4585 ], [ %4594, %4592 ]
  %4764 = phi float [ %4588, %4585 ], [ %4597, %4592 ]
  %4765 = phi float [ %4587, %4585 ], [ %4595, %4592 ]
  %4766 = phi float [ %4586, %4585 ], [ %4593, %4592 ]
  %4767 = phi float [ %4188, %4585 ], [ %4735, %4592 ]
  %4768 = phi float [ %4189, %4585 ], [ %4736, %4592 ]
  %4769 = phi float [ %4190, %4585 ], [ %4737, %4592 ]
  %4770 = phi float [ %4203, %4585 ], [ %4644, %4592 ]
  %4771 = phi float [ %4204, %4585 ], [ %4645, %4592 ]
  %4772 = phi float [ %4205, %4585 ], [ %4646, %4592 ]
  %4773 = phi float [ %4152, %4585 ], [ %4757, %4592 ]
  %4774 = phi float [ %4153, %4585 ], [ %4758, %4592 ]
  %4775 = phi float [ %4154, %4585 ], [ %4759, %4592 ]
  %4776 = phi float [ %4191, %4585 ], [ %4751, %4592 ]
  %4777 = phi float [ %4164, %4585 ], [ %4754, %4592 ]
  %4778 = select i1 %173, float 0.000000e+00, float %4769
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %4763, float %4762, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4765, float %4764, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = fmul fast float %4782, %4773
  %4784 = fmul fast float %4782, %4774
  %4785 = fmul fast float %4782, %4775
  %4786 = fsub fast float %4766, %4783
  %4787 = fsub fast float %4765, %4784
  %4788 = fsub fast float %4764, %4785
  %4789 = call float @dx.op.binary.f32(i32 36, float %4777, float 1.000000e+00)  ; FMin(a,b)
  %4790 = fsub fast float 1.000000e+00, %4777
  %4791 = bitcast float %4790 to i32
  %4792 = sub nsw i32 2129859010, %4791
  %4793 = bitcast i32 %4792 to float
  %4794 = fsub fast float 1.000000e+00, %45
  %4795 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = call float @dx.op.binary.f32(i32 35, float %4795, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4797 = fdiv fast float %4794, %4796
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = fadd fast float %4800, 5.000000e-01
  %4802 = fmul fast float %4801, %45
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, %4797
  %4806 = fadd fast float %4802, %4805
  %4807 = fsub fast float 5.000000e-01, %4800
  %4808 = fmul fast float %4807, %4770
  %4809 = fmul fast float %4807, %4771
  %4810 = fmul fast float %4807, %4772
  %4811 = fadd fast float %4806, %4808
  %4812 = fadd fast float %4806, %4809
  %4813 = fadd fast float %4806, %4810
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = fadd fast float %4816, 5.000000e-01
  %4818 = fmul fast float %4817, %45
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fmul fast float %4820, %4797
  %4822 = fadd fast float %4818, %4821
  %4823 = fsub fast float 5.000000e-01, %4816
  %4824 = fmul fast float %4823, %4770
  %4825 = fmul fast float %4823, %4771
  %4826 = fmul fast float %4823, %4772
  %4827 = fadd fast float %4822, %4824
  %4828 = fadd fast float %4822, %4825
  %4829 = fadd fast float %4822, %4826
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = call float @dx.op.binary.f32(i32 36, float %4770, float %4831)  ; FMin(a,b)
  %4833 = fsub fast float 1.000000e+00, %4789
  %4834 = fmul fast float %4832, %4833
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = call float @dx.op.binary.f32(i32 36, float %4771, float %4831)  ; FMin(a,b)
  %4840 = fmul fast float %4839, %4833
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = call float @dx.op.binary.f32(i32 36, float %4772, float %4831)  ; FMin(a,b)
  %4846 = fmul fast float %4845, %4833
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = bitcast float %4847 to i32
  %4849 = sub nsw i32 2129859010, %4848
  %4850 = bitcast i32 %4849 to float
  %4851 = fmul fast float %4789, %46
  %4852 = fmul fast float %4851, %4811
  %4853 = fmul fast float %4852, %4838
  %4854 = fmul fast float %4789, %47
  %4855 = fmul fast float %4854, %4812
  %4856 = fmul fast float %4855, %4844
  %4857 = fmul fast float %4789, %48
  %4858 = fmul fast float %4857, %4813
  %4859 = fmul fast float %4858, %4850
  %4860 = call float @dx.op.binary.f32(i32 36, float %4767, float %4831)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4833
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4768, float %4831)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4833
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = call float @dx.op.binary.f32(i32 36, float %4778, float %4831)  ; FMin(a,b)
  %4873 = fmul fast float %4872, %4833
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = fmul fast float %4851, %4827
  %4879 = fmul fast float %4878, %4865
  %4880 = fmul fast float %4854, %4828
  %4881 = fmul fast float %4880, %4871
  %4882 = fmul fast float %4857, %4829
  %4883 = fmul fast float %4882, %4877
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4856, float %4859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = select i1 %173, float 0.000000e+00, float %4853
  %4886 = select i1 %173, float %4884, float %4856
  %4887 = select i1 %173, float 0.000000e+00, float %4859
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4881, float %4883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = select i1 %173, float 0.000000e+00, float %4879
  %4890 = select i1 %173, float %4888, float %4881
  %4891 = select i1 %173, float 0.000000e+00, float %4883
  %4892 = fmul fast float %4780, 9.843750e-01
  %4893 = fmul fast float %4776, 9.843750e-01
  %4894 = fadd fast float %4892, 7.812500e-03
  %4895 = fadd fast float %4893, 7.812500e-03
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4894, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 3
  %4899 = fmul fast float %4897, %4767
  %4900 = fmul fast float %4897, %4768
  %4901 = fmul fast float %4897, %4778
  %4902 = fadd fast float %4899, %4898
  %4903 = fadd fast float %4900, %4898
  %4904 = fadd fast float %4901, %4898
  %4905 = fcmp fast ogt float %4165, 0.000000e+00
  br i1 %4905, label %4906, label %4932

; <label>:4906                                    ; preds = %4760
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4165, float %4780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = fadd fast float %4908, -5.000000e-01
  %4912 = fadd fast float %4909, -5.000000e-01
  %4913 = fadd fast float %4910, -5.000000e-01
  %4914 = fsub fast float 1.000000e+00, %4767
  %4915 = fsub fast float 1.000000e+00, %4768
  %4916 = fsub fast float 1.000000e+00, %4778
  %4917 = fmul fast float %4767, 4.000000e+00
  %4918 = fmul fast float %4917, %4914
  %4919 = fmul fast float %4918, %4911
  %4920 = fmul fast float %4768, 4.000000e+00
  %4921 = fmul fast float %4920, %4915
  %4922 = fmul fast float %4921, %4912
  %4923 = fmul fast float %4778, 4.000000e+00
  %4924 = fmul fast float %4923, %4916
  %4925 = fmul fast float %4924, %4913
  %4926 = fadd fast float %4919, %4902
  %4927 = fadd fast float %4922, %4903
  %4928 = fadd fast float %4925, %4904
  %4929 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  br label %4932

; <label>:4932                                    ; preds = %4906, %4760
  %4933 = phi float [ %4929, %4906 ], [ %4902, %4760 ]
  %4934 = phi float [ %4930, %4906 ], [ %4903, %4760 ]
  %4935 = phi float [ %4931, %4906 ], [ %4904, %4760 ]
  %4936 = call float @dx.op.binary.f32(i32 35, float %4934, float %4935)  ; FMax(a,b)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4933, float %4936)  ; FMax(a,b)
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = fmul fast float %4938, %4885
  %4940 = fmul fast float %4938, %4886
  %4941 = fmul fast float %4938, %4887
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = fcmp fast ogt float %4942, 0x3E7FF19E20000000
  %4944 = fdiv fast float 1.000000e+00, %4942
  %4945 = select i1 %4943, float %4944, float 0.000000e+00
  %4946 = fmul fast float %4945, %4770
  %4947 = fmul fast float %4945, %4771
  %4948 = fmul fast float %4945, %4772
  %4949 = fadd fast float %4946, -1.000000e+00
  %4950 = fadd fast float %4947, -1.000000e+00
  %4951 = fadd fast float %4948, -1.000000e+00
  %4952 = fmul fast float %4949, 5.000000e-01
  %4953 = fmul fast float %4950, 5.000000e-01
  %4954 = fmul fast float %4951, 5.000000e-01
  %4955 = fadd fast float %4952, 1.000000e+00
  %4956 = fadd fast float %4953, 1.000000e+00
  %4957 = fadd fast float %4954, 1.000000e+00
  %4958 = fmul fast float %4933, %4889
  %4959 = fmul fast float %4934, %4890
  %4960 = fmul fast float %4935, %4891
  %4961 = fsub fast float 1.000000e+00, %4780
  %4962 = bitcast float %4961 to i32
  %4963 = sitofp i32 %4962 to float
  %4964 = fmul fast float %4963, 5.000000e+00
  %4965 = fadd fast float %4964, 0xC1EFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, %4166
  %4969 = fmul fast float %4885, %4968
  %4970 = fmul fast float %4969, %4938
  %4971 = fmul fast float %4970, %4955
  %4972 = fmul fast float %4886, %4968
  %4973 = fmul fast float %4972, %4938
  %4974 = fmul fast float %4973, %4956
  %4975 = fmul fast float %4887, %4968
  %4976 = fmul fast float %4975, %4938
  %4977 = fmul fast float %4976, %4957
  %4978 = fmul fast float %4939, %4162
  %4979 = fmul fast float %4940, %4162
  %4980 = fmul fast float %4941, %4162
  %4981 = fadd fast float %4958, %4158
  %4982 = fadd fast float %4981, %4971
  %4983 = fmul fast float %4982, %4162
  %4984 = fadd fast float %4959, %4159
  %4985 = fadd fast float %4984, %4974
  %4986 = fmul fast float %4985, %4162
  %4987 = fadd fast float %4960, %4160
  %4988 = fadd fast float %4987, %4977
  %4989 = fmul fast float %4988, %4162
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4992 = fcmp fast oeq float %4991, 0.000000e+00
  br i1 %4992, label %5220, label %4993

; <label>:4993                                    ; preds = %4932
  %4994 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4996 = extractvalue %dx.types.CBufRet.f32 %4990, 2
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.CBufRet.f32 %4997, 2
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5004 = call float @dx.op.dot3.f32(i32 55, float %4998, float %4999, float %5000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = select i1 %173, float %5002, float %4998
  %5006 = select i1 %173, float %5004, float %4999
  %5007 = select i1 %173, float %5003, float %5000
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5010 = fcmp fast une float %5009, 0.000000e+00
  br i1 %5010, label %5011, label %5028

; <label>:5011                                    ; preds = %4993
  %5012 = fptoui float %68 to i32
  %5013 = fptoui float %69 to i32
  %5014 = lshr i32 %5012, 4
  %5015 = lshr i32 %5013, 4
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = fptoui float %5017 to i32
  %5019 = add i32 %5018, 15
  %5020 = lshr i32 %5019, 4
  %5021 = mul i32 %5020, %5015
  %5022 = add i32 %5021, %5014
  %5023 = shl i32 %5022, 3
  %5024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.i32 %5024, 0
  %5026 = and i32 %5025, -268435456
  %5027 = icmp eq i32 %5026, -1342177280
  br i1 %5027, label %5038, label %5028

; <label>:5028                                    ; preds = %5011, %4993
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5032 = fmul fast float %5030, %68
  %5033 = fmul fast float %5031, %69
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5032, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  br label %5038

; <label>:5038                                    ; preds = %5028, %5011
  %5039 = phi float [ %5035, %5028 ], [ 0.000000e+00, %5011 ]
  %5040 = phi float [ %5036, %5028 ], [ 0.000000e+00, %5011 ]
  %5041 = phi float [ %5037, %5028 ], [ 0.000000e+00, %5011 ]
  %5042 = call float @dx.op.binary.f32(i32 36, float %5040, float %5041)  ; FMin(a,b)
  %5043 = call float @dx.op.binary.f32(i32 36, float %5039, float %5042)  ; FMin(a,b)
  %5044 = fcmp fast ogt float %5043, 0.000000e+00
  br i1 %5044, label %5045, label %5220, !dx.controlflow.hints !72

; <label>:5045                                    ; preds = %5038
  %5046 = fmul fast float %5039, %5005
  %5047 = fmul fast float %5040, %5006
  %5048 = fmul fast float %5041, %5007
  %5049 = fsub fast float %4994, %4766
  %5050 = fsub fast float %4995, %4765
  %5051 = fsub fast float %4996, %4764
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %5049, float %5050, float %5051)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5049
  %5055 = fmul fast float %5053, %5050
  %5056 = fmul fast float %5053, %5051
  %5057 = call float @dx.op.dot3.f32(i32 55, float %4994, float %4995, float %4996, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4762, float %4761, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5060 = fmul fast float %5059, %5059
  %5061 = fmul fast float %5060, %4793
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, %5059
  %5064 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = fmul fast float %5064, %5064
  %5066 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5067 = fsub fast float 1.000000e+00, %4776
  %5068 = call float @dx.op.binary.f32(i32 35, float %5067, float 0x3F847AE140000000)  ; FMax(a,b)
  %5069 = fmul fast float %5068, %5068
  %5070 = fmul fast float %5069, %5069
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = fmul fast float %4780, %4780
  %5073 = fmul fast float %5072, %5071
  %5074 = fadd fast float %5073, %5070
  %5075 = bitcast float %5074 to i32
  %5076 = ashr i32 %5075, 1
  %5077 = add nsw i32 %5076, 532487669
  %5078 = bitcast i32 %5077 to float
  %5079 = fadd fast float %5078, %4780
  %5080 = fmul fast float %5070, %5065
  %5081 = fsub fast float 1.000000e+00, %5065
  %5082 = fadd fast float %5081, %5080
  %5083 = fmul fast float %5066, %5066
  %5084 = fmul fast float %5083, %5071
  %5085 = fadd fast float %5084, %5070
  %5086 = bitcast float %5085 to i32
  %5087 = ashr i32 %5086, 1
  %5088 = add nsw i32 %5087, 532487669
  %5089 = bitcast i32 %5088 to float
  %5090 = fadd fast float %5089, %5066
  %5091 = fmul fast float %5082, %5082
  %5092 = fmul fast float %5091, %5079
  %5093 = fmul fast float %5092, %5090
  %5094 = fdiv fast float 0x3FF0A00000000000, %5093
  %5095 = fmul fast float %5094, %5070
  %5096 = call float @dx.op.unary.f32(i32 6, float %5058)  ; FAbs(value)
  %5097 = fsub fast float 1.000000e+00, %5096
  %5098 = bitcast float %5097 to i32
  %5099 = sitofp i32 %5098 to float
  %5100 = fmul fast float %5099, 5.000000e+00
  %5101 = fadd fast float %5100, 0xC1EFBF8940000000
  %5102 = fptosi float %5101 to i32
  %5103 = bitcast i32 %5102 to float
  %5104 = fsub fast float 1.000000e+00, %4767
  %5105 = fsub fast float 1.000000e+00, %4768
  %5106 = fsub fast float 1.000000e+00, %4778
  %5107 = fmul fast float %5103, %5104
  %5108 = fmul fast float %5103, %5105
  %5109 = fmul fast float %5103, %5106
  %5110 = fadd fast float %5107, %4767
  %5111 = fadd fast float %5108, %4768
  %5112 = fadd fast float %5109, %4778
  br i1 %4905, label %5113, label %5136

; <label>:5113                                    ; preds = %5045
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4165, float %5096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fadd fast float %5116, -5.000000e-01
  %5120 = fadd fast float %5117, -5.000000e-01
  %5121 = fmul fast float %4767, 4.000000e+00
  %5122 = fmul fast float %5121, %5104
  %5123 = fmul fast float %5122, %5118
  %5124 = fmul fast float %4768, 4.000000e+00
  %5125 = fmul fast float %5124, %5105
  %5126 = fmul fast float %5125, %5119
  %5127 = fmul fast float %4778, 4.000000e+00
  %5128 = fmul fast float %5127, %5106
  %5129 = fmul fast float %5128, %5120
  %5130 = fadd fast float %5123, %5110
  %5131 = fadd fast float %5126, %5111
  %5132 = fadd fast float %5129, %5112
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  br label %5136

; <label>:5136                                    ; preds = %5113, %5045
  %5137 = phi float [ %5133, %5113 ], [ %5110, %5045 ]
  %5138 = phi float [ %5134, %5113 ], [ %5111, %5045 ]
  %5139 = phi float [ %5135, %5113 ], [ %5112, %5045 ]
  %5140 = fmul fast float %5057, 9.843750e-01
  %5141 = fadd fast float %5140, 7.812500e-03
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5141, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 3
  %5145 = fmul fast float %5143, %4767
  %5146 = fmul fast float %5143, %4768
  %5147 = fmul fast float %5143, %4778
  %5148 = fadd fast float %5145, %5144
  %5149 = fadd fast float %5146, %5144
  %5150 = fadd fast float %5147, %5144
  br i1 %4905, label %5151, label %5174

; <label>:5151                                    ; preds = %5136
  %5152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4165, float %5057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.ResRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.ResRet.f32 %5152, 2
  %5156 = fadd fast float %5153, -5.000000e-01
  %5157 = fadd fast float %5154, -5.000000e-01
  %5158 = fadd fast float %5155, -5.000000e-01
  %5159 = fmul fast float %4767, 4.000000e+00
  %5160 = fmul fast float %5159, %5104
  %5161 = fmul fast float %5160, %5156
  %5162 = fmul fast float %4768, 4.000000e+00
  %5163 = fmul fast float %5162, %5105
  %5164 = fmul fast float %5163, %5157
  %5165 = fmul fast float %4778, 4.000000e+00
  %5166 = fmul fast float %5165, %5106
  %5167 = fmul fast float %5166, %5158
  %5168 = fadd fast float %5161, %5148
  %5169 = fadd fast float %5164, %5149
  %5170 = fadd fast float %5167, %5150
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5173 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  br label %5174

; <label>:5174                                    ; preds = %5151, %5136
  %5175 = phi float [ %5171, %5151 ], [ %5148, %5136 ]
  %5176 = phi float [ %5172, %5151 ], [ %5149, %5136 ]
  %5177 = phi float [ %5173, %5151 ], [ %5150, %5136 ]
  %5178 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5179 = call float @dx.op.binary.f32(i32 35, float %5175, float %5178)  ; FMax(a,b)
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = fmul fast float %5137, %5095
  %5182 = fmul fast float %5138, %5095
  %5183 = fmul fast float %5139, %5095
  %5184 = fsub fast float 1.000000e+00, %5058
  %5185 = bitcast float %5184 to i32
  %5186 = sitofp i32 %5185 to float
  %5187 = fmul fast float %5186, 5.000000e+00
  %5188 = fadd fast float %5187, 0xC1EFBF8940000000
  %5189 = fptosi float %5188 to i32
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5190, %4166
  %5192 = fmul fast float %5180, %5191
  %5193 = fmul fast float %5192, %4955
  %5194 = fmul fast float %5192, %4956
  %5195 = fmul fast float %5192, %4957
  %5196 = fadd fast float %5193, %5181
  %5197 = fadd fast float %5194, %5182
  %5198 = fadd fast float %5195, %5183
  %5199 = fmul fast float %5063, %5046
  %5200 = fmul fast float %5199, %5180
  %5201 = fmul fast float %5063, %5047
  %5202 = fmul fast float %5201, %5180
  %5203 = fmul fast float %5063, %5048
  %5204 = fmul fast float %5203, %5180
  %5205 = fmul fast float %5199, %5196
  %5206 = fmul fast float %5201, %5197
  %5207 = fmul fast float %5203, %5198
  %5208 = fadd fast float %5200, %4939
  %5209 = fmul fast float %5208, %4162
  %5210 = fadd fast float %5202, %4940
  %5211 = fmul fast float %5210, %4162
  %5212 = fadd fast float %5204, %4941
  %5213 = fmul fast float %5212, %4162
  %5214 = fadd fast float %5205, %4982
  %5215 = fmul fast float %5214, %4162
  %5216 = fadd fast float %5206, %4985
  %5217 = fmul fast float %5216, %4162
  %5218 = fadd fast float %5207, %4988
  %5219 = fmul fast float %5218, %4162
  br label %5220

; <label>:5220                                    ; preds = %5174, %5038, %4932
  %5221 = phi float [ %4983, %4932 ], [ %4983, %5038 ], [ %5215, %5174 ]
  %5222 = phi float [ %4986, %4932 ], [ %4986, %5038 ], [ %5217, %5174 ]
  %5223 = phi float [ %4989, %4932 ], [ %4989, %5038 ], [ %5219, %5174 ]
  %5224 = phi float [ %4978, %4932 ], [ %4978, %5038 ], [ %5209, %5174 ]
  %5225 = phi float [ %4979, %4932 ], [ %4979, %5038 ], [ %5211, %5174 ]
  %5226 = phi float [ %4980, %4932 ], [ %4980, %5038 ], [ %5213, %5174 ]
  %5227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.i32 %5227, 0
  %5229 = icmp eq i32 %5228, 0
  br i1 %5229, label %5664, label %5230

; <label>:5230                                    ; preds = %5220
  %5231 = fptoui float %68 to i32
  %5232 = fptoui float %69 to i32
  %5233 = lshr i32 %5231, 4
  %5234 = lshr i32 %5232, 4
  %5235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.i32 %5235, 0
  %5237 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5234, i32 %5236, i32 %5233)  ; UMad(a,b,c)
  %5238 = add nsw i32 %5228, -1
  %5239 = call i32 @dx.op.binary.i32(i32 37, i32 %5238, i32 0)  ; IMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5241 = fptoui float %5240 to i32
  %5242 = lshr i32 %5241, 5
  %5243 = call i32 @dx.op.binary.i32(i32 40, i32 %5242, i32 8191)  ; UMin(a,b)
  %5244 = shl i32 %5243, 2
  %5245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.i32 %5245, 0
  %5247 = lshr i32 %5246, 16
  %5248 = and i32 %5246, 65535
  %5249 = lshr i32 %5246, 21
  %5250 = lshr i32 %5248, 5
  %5251 = call i32 @dx.op.binary.i32(i32 40, i32 %5250, i32 %5239)  ; UMin(a,b)
  %5252 = icmp ugt i32 %5249, %5251
  br i1 %5252, label %5664, label %5253

; <label>:5253                                    ; preds = %5230
  br label %5254

; <label>:5254                                    ; preds = %5654, %5253
  %5255 = phi i32 [ %5661, %5654 ], [ %5249, %5253 ]
  %5256 = phi float [ %5655, %5654 ], [ %5221, %5253 ]
  %5257 = phi float [ %5656, %5654 ], [ %5222, %5253 ]
  %5258 = phi float [ %5657, %5654 ], [ %5223, %5253 ]
  %5259 = phi float [ %5658, %5654 ], [ %5224, %5253 ]
  %5260 = phi float [ %5659, %5654 ], [ %5225, %5253 ]
  %5261 = phi float [ %5660, %5654 ], [ %5226, %5253 ]
  %5262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.i32 %5262, 0
  %5264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5237, i32 %5263, i32 %5255)  ; UMad(a,b,c)
  %5265 = shl i32 %5264, 2
  %5266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.i32 %5266, 0
  %5268 = shl i32 %5255, 5
  %5269 = sub nsw i32 %5247, %5268
  %5270 = call i32 @dx.op.binary.i32(i32 37, i32 %5269, i32 0)  ; IMax(a,b)
  %5271 = call i32 @dx.op.binary.i32(i32 38, i32 %5270, i32 31)  ; IMin(a,b)
  %5272 = sub nsw i32 1, %5247
  %5273 = add nsw i32 %5272, %5248
  %5274 = call i32 @dx.op.binary.i32(i32 37, i32 %5273, i32 0)  ; IMax(a,b)
  %5275 = call i32 @dx.op.binary.i32(i32 38, i32 %5274, i32 32)  ; IMin(a,b)
  %5276 = and i32 %5275, 31
  %5277 = shl i32 -1, %5276
  %5278 = xor i32 %5277, -1
  %5279 = and i32 %5271, 31
  %5280 = shl i32 %5278, %5279
  %5281 = icmp eq i32 %5275, 32
  %5282 = select i1 %5281, i32 -1, i32 %5280
  %5283 = and i32 %5282, %5267
  %5284 = icmp eq i32 %5283, 0
  br i1 %5284, label %5654, label %5285

; <label>:5285                                    ; preds = %5254
  br label %5286

; <label>:5286                                    ; preds = %5366, %5285
  %5287 = phi i32 [ %5298, %5366 ], [ %5283, %5285 ]
  %5288 = phi float [ %5367, %5366 ], [ %5256, %5285 ]
  %5289 = phi float [ %5368, %5366 ], [ %5257, %5285 ]
  %5290 = phi float [ %5369, %5366 ], [ %5258, %5285 ]
  %5291 = phi float [ %5370, %5366 ], [ %5259, %5285 ]
  %5292 = phi float [ %5371, %5366 ], [ %5260, %5285 ]
  %5293 = phi float [ %5372, %5366 ], [ %5261, %5285 ]
  %5294 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5287)  ; FirstbitLo(value)
  %5295 = add i32 %5294, %5268
  %5296 = and i32 %5294, 31
  %5297 = shl i32 1, %5296
  %5298 = xor i32 %5297, %5287
  %5299 = mul i32 %5295, 112
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5304 = or i32 %5299, 12
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = add i32 %5299, 44
  %5308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = add i32 %5299, 48
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = add i32 %5299, 80
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5316, 2
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5302, float %5303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = select i1 %173, float %5317, float %5301
  %5321 = select i1 %173, float %5319, float %5302
  %5322 = select i1 %173, float %5318, float %5303
  %5323 = fsub fast float %5312, %131
  %5324 = fsub fast float %5313, %132
  %5325 = fsub fast float %5314, %133
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5323, float %5324, float %5325, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 24, float %5326)  ; Sqrt(value)
  %5328 = fdiv fast float 1.000000e+00, %5327
  %5329 = fmul fast float %5328, %5323
  %5330 = fmul fast float %5328, %5324
  %5331 = fmul fast float %5328, %5325
  %5332 = fadd fast float %5327, %5306
  %5333 = fdiv fast float 1.000000e+00, %5332
  %5334 = fmul float %5309, %5333
  %5335 = fmul float %5334, %5334
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = and i32 %5297, %5283
  %5338 = icmp eq i32 %5337, 0
  br i1 %5338, label %5361, label %5339, !dx.controlflow.hints !73

; <label>:5339                                    ; preds = %5286
  %5340 = lshr i32 %5231, 5
  %5341 = lshr i32 %5232, 5
  %5342 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5340, i32 %5341, i32 %5295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5343 = extractvalue %dx.types.ResRet.i32 %5342, 0
  %5344 = and i32 %5343, 3
  %5345 = icmp eq i32 %5344, 0
  %5346 = select i1 %5345, float 1.000000e+00, float 0.000000e+00
  %5347 = icmp eq i32 %5344, 3
  br i1 %5347, label %5348, label %5361

; <label>:5348                                    ; preds = %5339
  %5349 = lshr i32 %5343, 10
  %5350 = and i32 %5349, 8160
  %5351 = and i32 %5232, 31
  %5352 = or i32 %5350, %5351
  %5353 = lshr i32 %5343, 1
  %5354 = and i32 %5353, 16352
  %5355 = and i32 %5231, 31
  %5356 = or i32 %5354, %5355
  %5357 = lshr i32 %5343, 23
  %5358 = and i32 %5357, 255
  %5359 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5356, i32 %5352, i32 %5358, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  br label %5361

; <label>:5361                                    ; preds = %5348, %5339, %5286
  %5362 = phi float [ %5360, %5348 ], [ %5346, %5339 ], [ 0.000000e+00, %5286 ]
  %5363 = call float @dx.op.binary.f32(i32 36, float %5362, float %5362)  ; FMin(a,b)
  %5364 = call float @dx.op.binary.f32(i32 36, float %5362, float %5363)  ; FMin(a,b)
  %5365 = fcmp fast ogt float %5364, 0.000000e+00
  br i1 %5365, label %5374, label %5366, !dx.controlflow.hints !74

; <label>:5366                                    ; preds = %5610, %5361
  %5367 = phi float [ %5288, %5361 ], [ %5650, %5610 ]
  %5368 = phi float [ %5289, %5361 ], [ %5651, %5610 ]
  %5369 = phi float [ %5290, %5361 ], [ %5652, %5610 ]
  %5370 = phi float [ %5291, %5361 ], [ %5644, %5610 ]
  %5371 = phi float [ %5292, %5361 ], [ %5645, %5610 ]
  %5372 = phi float [ %5293, %5361 ], [ %5646, %5610 ]
  %5373 = icmp eq i32 %5287, %5297
  br i1 %5373, label %5653, label %5286

; <label>:5374                                    ; preds = %5361
  %5375 = fmul fast float %5362, %5320
  %5376 = fmul fast float %5362, %5321
  %5377 = fmul fast float %5362, %5322
  %5378 = fsub fast float %5314, %4566
  %5379 = fcmp fast ogt float %5378, 0.000000e+00
  %5380 = fsub fast float %133, %4566
  %5381 = fcmp fast ogt float %5380, 0.000000e+00
  %5382 = xor i1 %5381, %5379
  %5383 = fsub fast float %4566, %5314
  %5384 = fmul fast float %5383, 2.000000e+00
  %5385 = fadd fast float %5384, %5314
  %5386 = select i1 %5382, float %5314, float %5385
  %5387 = fsub fast float %5386, %133
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5323, float %5324, float %5387, float %5323, float %5324, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 25, float %5388)  ; Rsqrt(value)
  %5390 = fmul fast float %5389, %5323
  %5391 = fmul fast float %5389, %5324
  %5392 = fmul fast float %5389, %5387
  %5393 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = fdiv fast float 1.000000e+00, %5394
  %5396 = fmul fast float %5395, %5393
  %5397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5380, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  %5399 = fcmp fast olt float %5397, 0.000000e+00
  %5400 = zext i1 %5398 to i32
  %5401 = zext i1 %5399 to i32
  %5402 = sub nsw i32 %5400, %5401
  %5403 = sitofp i32 %5402 to float
  %5404 = fsub fast float %5386, %4566
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5323, float %5324, float %5404, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fcmp fast ogt float %5405, 0.000000e+00
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = zext i1 %5406 to i32
  %5409 = zext i1 %5407 to i32
  %5410 = sub nsw i32 %5408, %5409
  %5411 = sitofp i32 %5410 to float
  %5412 = fcmp fast une float %5403, %5411
  br i1 %5412, label %5413, label %5423

; <label>:5413                                    ; preds = %5374
  %5414 = fmul fast float %5396, %5392
  %5415 = fmul fast float %5396, %5391
  %5416 = fmul fast float %5396, %5390
  %5417 = fmul fast float %5416, %5416
  %5418 = fmul fast float %5415, %5415
  %5419 = fadd fast float %5417, %5418
  %5420 = fmul fast float %5414, %5414
  %5421 = fadd fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  br label %5435

; <label>:5423                                    ; preds = %5374
  %5424 = icmp slt i32 %5402, 0
  br i1 %5424, label %5425, label %5435

; <label>:5425                                    ; preds = %5423
  %5426 = fsub fast float %131, %5312
  %5427 = fsub fast float %132, %5313
  %5428 = fsub fast float %133, %5386
  %5429 = fmul fast float %5426, %5426
  %5430 = fmul fast float %5427, %5427
  %5431 = fadd fast float %5429, %5430
  %5432 = fmul fast float %5428, %5428
  %5433 = fadd fast float %5431, %5432
  %5434 = call float @dx.op.unary.f32(i32 24, float %5433)  ; Sqrt(value)
  br label %5435

; <label>:5435                                    ; preds = %5425, %5423, %5413
  %5436 = phi float [ %5422, %5413 ], [ %5434, %5425 ], [ 0.000000e+00, %5423 ]
  %5437 = and i1 %5381, %5379
  %5438 = fsub fast float -0.000000e+00, %5436
  %5439 = select i1 %5437, float -0.000000e+00, float %5438
  %5440 = fmul fast float %4567, 0x3FF7154760000000
  %5441 = fmul fast float %5440, %5439
  %5442 = fmul fast float %4568, 0x3FF7154760000000
  %5443 = fmul fast float %5442, %5439
  %5444 = fmul fast float %4569, 0x3FF7154760000000
  %5445 = fmul fast float %5444, %5439
  %5446 = call float @dx.op.unary.f32(i32 21, float %5441)  ; Exp(value)
  %5447 = call float @dx.op.unary.f32(i32 21, float %5443)  ; Exp(value)
  %5448 = call float @dx.op.unary.f32(i32 21, float %5445)  ; Exp(value)
  %5449 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = fmul fast float %5375, %5449
  %5453 = fmul fast float %5376, %5450
  %5454 = fmul fast float %5377, %5451
  %5455 = fsub fast float %5329, %4766
  %5456 = fsub fast float %5330, %4765
  %5457 = fsub fast float %5331, %4764
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = call float @dx.op.unary.f32(i32 25, float %5458)  ; Rsqrt(value)
  %5460 = fmul fast float %5459, %5455
  %5461 = fmul fast float %5459, %5456
  %5462 = fmul fast float %5459, %5457
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %4773, float %4774, float %4775)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4762, float %4761, float %5460, float %5461, float %5462)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5466 = fmul fast float %5465, %5336
  %5467 = fmul fast float %5465, %5465
  %5468 = fmul fast float %5467, %4793
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = fmul fast float %5466, %5469
  %5471 = bitcast float %5326 to i32
  %5472 = ashr i32 %5471, 1
  %5473 = sub nsw i32 1597463007, %5472
  %5474 = bitcast i32 %5473 to float
  %5475 = fmul fast float %5474, %5323
  %5476 = fmul fast float %5474, %5324
  %5477 = fmul fast float %5474, %5325
  %5478 = fsub fast float %5475, %4766
  %5479 = fsub fast float %5476, %4765
  %5480 = fsub fast float %5477, %4764
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 25, float %5481)  ; Rsqrt(value)
  %5483 = fmul fast float %5478, %5482
  %5484 = fmul fast float %5479, %5482
  %5485 = fmul fast float %5480, %5482
  %5486 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fmul fast float %5486, %5486
  %5488 = call float @dx.op.unary.f32(i32 6, float %5463)  ; FAbs(value)
  %5489 = fsub fast float 1.000000e+00, %4776
  %5490 = call float @dx.op.binary.f32(i32 35, float %5489, float 0x3F847AE140000000)  ; FMax(a,b)
  %5491 = fmul fast float %5490, %5490
  %5492 = fmul fast float %5491, %5491
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = fmul fast float %4780, %4780
  %5495 = fmul fast float %5494, %5493
  %5496 = fadd fast float %5495, %5492
  %5497 = bitcast float %5496 to i32
  %5498 = ashr i32 %5497, 1
  %5499 = add nsw i32 %5498, 532487669
  %5500 = bitcast i32 %5499 to float
  %5501 = fadd fast float %5500, %4780
  %5502 = fmul fast float %5492, %5487
  %5503 = fsub fast float 1.000000e+00, %5487
  %5504 = fadd fast float %5503, %5502
  %5505 = fmul fast float %5488, %5488
  %5506 = fmul fast float %5505, %5493
  %5507 = fadd fast float %5506, %5492
  %5508 = bitcast float %5507 to i32
  %5509 = ashr i32 %5508, 1
  %5510 = add nsw i32 %5509, 532487669
  %5511 = bitcast i32 %5510 to float
  %5512 = fadd fast float %5511, %5488
  %5513 = fmul fast float %5504, %5504
  %5514 = fmul fast float %5513, %5501
  %5515 = fmul fast float %5514, %5512
  %5516 = fdiv fast float 1.000000e+00, %5515
  %5517 = bitcast float %5492 to i32
  %5518 = sitofp i32 %5517 to float
  %5519 = fmul fast float %5518, 0x3FE7F73180000000
  %5520 = fadd fast float %5519, 0x41AFE27C40000000
  %5521 = fptosi float %5520 to i32
  %5522 = bitcast i32 %5521 to float
  %5523 = fmul fast float %5309, 0x3FD80E9D60000000
  %5524 = fmul fast float %5523, %5474
  %5525 = fadd fast float %5522, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = fmul fast float %5492, %5516
  %5530 = fmul fast float %5529, %5522
  %5531 = fmul fast float %5530, %5528
  %5532 = call float @dx.op.unary.f32(i32 6, float %5464)  ; FAbs(value)
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = bitcast float %5533 to i32
  %5535 = sitofp i32 %5534 to float
  %5536 = fmul fast float %5535, 5.000000e+00
  %5537 = fadd fast float %5536, 0xC1EFBF8940000000
  %5538 = fptosi float %5537 to i32
  %5539 = bitcast i32 %5538 to float
  %5540 = fsub fast float 1.000000e+00, %4767
  %5541 = fsub fast float 1.000000e+00, %4768
  %5542 = fsub fast float 1.000000e+00, %4778
  %5543 = fmul fast float %5539, %5540
  %5544 = fmul fast float %5539, %5541
  %5545 = fmul fast float %5539, %5542
  %5546 = fadd fast float %5543, %4767
  %5547 = fadd fast float %5544, %4768
  %5548 = fadd fast float %5545, %4778
  br i1 %4905, label %5549, label %5572

; <label>:5549                                    ; preds = %5435
  %5550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4165, float %5532, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5551 = extractvalue %dx.types.ResRet.f32 %5550, 0
  %5552 = extractvalue %dx.types.ResRet.f32 %5550, 1
  %5553 = extractvalue %dx.types.ResRet.f32 %5550, 2
  %5554 = fadd fast float %5551, -5.000000e-01
  %5555 = fadd fast float %5552, -5.000000e-01
  %5556 = fadd fast float %5553, -5.000000e-01
  %5557 = fmul fast float %4767, 4.000000e+00
  %5558 = fmul fast float %5557, %5540
  %5559 = fmul fast float %5558, %5554
  %5560 = fmul fast float %4768, 4.000000e+00
  %5561 = fmul fast float %5560, %5541
  %5562 = fmul fast float %5561, %5555
  %5563 = fmul fast float %4778, 4.000000e+00
  %5564 = fmul fast float %5563, %5542
  %5565 = fmul fast float %5564, %5556
  %5566 = fadd fast float %5559, %5546
  %5567 = fadd fast float %5562, %5547
  %5568 = fadd fast float %5565, %5548
  %5569 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5570 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  br label %5572

; <label>:5572                                    ; preds = %5549, %5435
  %5573 = phi float [ %5569, %5549 ], [ %5546, %5435 ]
  %5574 = phi float [ %5570, %5549 ], [ %5547, %5435 ]
  %5575 = phi float [ %5571, %5549 ], [ %5548, %5435 ]
  %5576 = fmul fast float %5463, 9.843750e-01
  %5577 = fadd fast float %5576, 7.812500e-03
  %5578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5577, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 3
  %5581 = fmul fast float %5579, %4767
  %5582 = fmul fast float %5579, %4768
  %5583 = fmul fast float %5579, %4778
  %5584 = fadd fast float %5581, %5580
  %5585 = fadd fast float %5582, %5580
  %5586 = fadd fast float %5583, %5580
  br i1 %4905, label %5587, label %5610

; <label>:5587                                    ; preds = %5572
  %5588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4165, float %5463, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.ResRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.ResRet.f32 %5588, 2
  %5592 = fadd fast float %5589, -5.000000e-01
  %5593 = fadd fast float %5590, -5.000000e-01
  %5594 = fadd fast float %5591, -5.000000e-01
  %5595 = fmul fast float %4767, 4.000000e+00
  %5596 = fmul fast float %5595, %5540
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %4768, 4.000000e+00
  %5599 = fmul fast float %5598, %5541
  %5600 = fmul fast float %5599, %5593
  %5601 = fmul fast float %4778, 4.000000e+00
  %5602 = fmul fast float %5601, %5542
  %5603 = fmul fast float %5602, %5594
  %5604 = fadd fast float %5597, %5584
  %5605 = fadd fast float %5600, %5585
  %5606 = fadd fast float %5603, %5586
  %5607 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5608 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5609 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  br label %5610

; <label>:5610                                    ; preds = %5587, %5572
  %5611 = phi float [ %5607, %5587 ], [ %5584, %5572 ]
  %5612 = phi float [ %5608, %5587 ], [ %5585, %5572 ]
  %5613 = phi float [ %5609, %5587 ], [ %5586, %5572 ]
  %5614 = call float @dx.op.binary.f32(i32 35, float %5612, float %5613)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float %5611, float %5614)  ; FMax(a,b)
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = fmul fast float %5573, %5531
  %5618 = fmul fast float %5574, %5531
  %5619 = fmul fast float %5575, %5531
  %5620 = fsub fast float 1.000000e+00, %5464
  %5621 = bitcast float %5620 to i32
  %5622 = sitofp i32 %5621 to float
  %5623 = fmul fast float %5622, 5.000000e+00
  %5624 = fadd fast float %5623, 0xC1EFBF8940000000
  %5625 = fptosi float %5624 to i32
  %5626 = bitcast i32 %5625 to float
  %5627 = fmul fast float %5626, %4166
  %5628 = fmul fast float %5616, %5627
  %5629 = fmul fast float %5628, %4955
  %5630 = fmul fast float %5628, %4956
  %5631 = fmul fast float %5628, %4957
  %5632 = fadd fast float %5629, %5617
  %5633 = fadd fast float %5630, %5618
  %5634 = fadd fast float %5631, %5619
  %5635 = fmul fast float %5452, %4162
  %5636 = fmul fast float %5635, %5470
  %5637 = fmul fast float %5636, %5616
  %5638 = fmul fast float %5453, %4162
  %5639 = fmul fast float %5638, %5470
  %5640 = fmul fast float %5639, %5616
  %5641 = fmul fast float %5454, %4162
  %5642 = fmul fast float %5641, %5470
  %5643 = fmul fast float %5642, %5616
  %5644 = fadd fast float %5637, %5291
  %5645 = fadd fast float %5640, %5292
  %5646 = fadd fast float %5643, %5293
  %5647 = fmul fast float %5636, %5632
  %5648 = fmul fast float %5639, %5633
  %5649 = fmul fast float %5642, %5634
  %5650 = fadd fast float %5647, %5288
  %5651 = fadd fast float %5648, %5289
  %5652 = fadd fast float %5649, %5290
  br label %5366

; <label>:5653                                    ; preds = %5366
  br label %5654

; <label>:5654                                    ; preds = %5653, %5254
  %5655 = phi float [ %5256, %5254 ], [ %5367, %5653 ]
  %5656 = phi float [ %5257, %5254 ], [ %5368, %5653 ]
  %5657 = phi float [ %5258, %5254 ], [ %5369, %5653 ]
  %5658 = phi float [ %5259, %5254 ], [ %5370, %5653 ]
  %5659 = phi float [ %5260, %5254 ], [ %5371, %5653 ]
  %5660 = phi float [ %5261, %5254 ], [ %5372, %5653 ]
  %5661 = add i32 %5255, 1
  %5662 = icmp ugt i32 %5661, %5251
  br i1 %5662, label %5663, label %5254

; <label>:5663                                    ; preds = %5654
  br label %5664

; <label>:5664                                    ; preds = %5663, %5230, %5220
  %5665 = phi float [ %5221, %5220 ], [ %5221, %5230 ], [ %5655, %5663 ]
  %5666 = phi float [ %5222, %5220 ], [ %5222, %5230 ], [ %5656, %5663 ]
  %5667 = phi float [ %5223, %5220 ], [ %5223, %5230 ], [ %5657, %5663 ]
  %5668 = phi float [ %5224, %5220 ], [ %5224, %5230 ], [ %5658, %5663 ]
  %5669 = phi float [ %5225, %5220 ], [ %5225, %5230 ], [ %5659, %5663 ]
  %5670 = phi float [ %5226, %5220 ], [ %5226, %5230 ], [ %5660, %5663 ]
  %5671 = call float @dx.op.unary.f32(i32 24, float %4770)  ; Sqrt(value)
  %5672 = call float @dx.op.unary.f32(i32 24, float %4771)  ; Sqrt(value)
  %5673 = call float @dx.op.unary.f32(i32 24, float %4772)  ; Sqrt(value)
  %5674 = fmul fast float %5671, %5668
  %5675 = fmul fast float %5672, %5669
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 0
  br i1 %173, label %5678, label %5698

; <label>:5678                                    ; preds = %5664
  %5679 = fadd fast float %5670, %4168
  %5680 = fmul fast float %5679, %4169
  %5681 = fsub fast float 1.000000e+00, %4169
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 3
  %5685 = fmul fast float %5684, %5682
  %5686 = fadd fast float %5685, %5680
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = fmul fast float %5688, %4961
  %5690 = fsub fast float %5686, %5689
  %5691 = fadd fast float %5675, %5674
  %5692 = fmul fast float %5677, %5691
  %5693 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5694 = fsub fast float %5690, %5693
  %5695 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5696 = fmul fast float %5694, %5695
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  br label %5714

; <label>:5698                                    ; preds = %5664
  %5699 = fmul fast float %5673, %5670
  %5700 = fmul fast float %5677, %5674
  %5701 = fmul fast float %5677, %5675
  %5702 = fmul fast float %5699, %5677
  %5703 = add i32 %33, 356
  %5704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5703, i32 undef)  ; BufferLoad(srv,index,wot)
  %5705 = extractvalue %dx.types.ResRet.i32 %5704, 0
  %5706 = and i32 %5705, 32
  %5707 = icmp eq i32 %5706, 0
  br i1 %5707, label %5714, label %5708

; <label>:5708                                    ; preds = %5698
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = fmul fast float %5710, 0x3FE99999A0000000
  %5712 = fadd fast float %5710, %5700
  %5713 = fadd fast float %5711, %5702
  br label %5714

; <label>:5714                                    ; preds = %5708, %5698, %5678
  %5715 = phi float [ %5692, %5678 ], [ %5712, %5708 ], [ %5700, %5698 ]
  %5716 = phi float [ %5697, %5678 ], [ %5701, %5708 ], [ %5701, %5698 ]
  %5717 = phi float [ 1.000000e+00, %5678 ], [ %5713, %5708 ], [ %5702, %5698 ]
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = fmul fast float %5719, %5666
  %5721 = fmul fast float %5719, %5667
  %5722 = fadd fast float %5666, %5665
  %5723 = select i1 %173, float %5722, float %5665
  %5724 = fmul float %5723, %5719
  %5725 = select i1 %173, float 0.000000e+00, float %5720
  %5726 = select i1 %173, float 0.000000e+00, float %5721
  %5727 = fmul fast float %5715, %5671
  %5728 = fmul fast float %5716, %5672
  %5729 = fmul fast float %5717, %5673
  %5730 = fadd fast float %5724, %5727
  %5731 = fadd fast float %5725, %5728
  %5732 = fadd fast float %5726, %5729
  %5733 = select i1 %173, float %5716, float %5731
  %5734 = select i1 %173, float %5717, float %5732
  %5735 = call float @dx.op.binary.f32(i32 36, float %5730, float 3.225500e+04)  ; FMin(a,b)
  %5736 = call float @dx.op.binary.f32(i32 36, float %5733, float 3.225500e+04)  ; FMin(a,b)
  %5737 = call float @dx.op.binary.f32(i32 36, float %5734, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5735)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5736)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5737)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

