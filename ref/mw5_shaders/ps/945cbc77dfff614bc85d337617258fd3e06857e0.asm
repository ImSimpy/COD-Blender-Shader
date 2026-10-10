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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 77c1f5e41fa8f6910642367a8a9e0eb6
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %60
  %68 = fmul fast float %66, %61
  %69 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %73, %52
  %75 = fmul fast float %73, %53
  %76 = fmul fast float %73, %54
  %77 = fmul fast float %53, %50
  %78 = fmul fast float %54, %49
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %54, %48
  %81 = fmul fast float %52, %50
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %52, %49
  %84 = fmul fast float %53, %48
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %51
  %87 = fmul fast float %82, %51
  %88 = fmul fast float %85, %51
  %89 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %41
  %95 = fmul fast float %93, %42
  %96 = fmul fast float %93, %43
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %67, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %68, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %62
  %131 = fmul fast float %127, %62
  %132 = fmul fast float %129, %62
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %67
  %137 = fmul fast float %135, %68
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 114688
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %141, float %136, float 0.000000e+00
  %143 = select i1 %141, float %137, float 0.000000e+00
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, 2.550000e+02
  %147 = fptoui float %146 to i32
  %148 = select i1 %141, i32 %147, i32 0
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 3
  %152 = and i32 %151, 3
  %153 = icmp ne i32 %152, 0
  %154 = and i32 %151, 4
  %155 = icmp ne i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %168

; <label>:157                                     ; preds = %0
  %158 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %159 = fmul fast float %158, %68
  %160 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %161 = fmul fast float %160, %67
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %161, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = fsub fast float 1.000000e+00, %163
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = fcmp fast olt float %164, %166
  br label %171

; <label>:168                                     ; preds = %0
  %169 = icmp eq i32 %154, 0
  %170 = and i1 %153, %169
  br label %171

; <label>:171                                     ; preds = %168, %157
  %172 = phi i1 [ %167, %157 ], [ %170, %168 ]
  %173 = add i32 %33, 156
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = shl i32 %175, 4
  %177 = and i32 %176, 32752
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = lshr i32 %175, 7
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %175, 22
  %183 = shl nuw nsw i32 %182, 5
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = add i32 %33, 216
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 255
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F70101020000000
  %191 = lshr i32 %187, 8
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %187, 16
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = add i32 %33, 36
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %201, 16
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = add i32 %33, 288
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 65535
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %208, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = fmul fast float %210, 0x3F50624DE0000000
  %214 = fmul fast float %212, 0x3F50624DE0000000
  %215 = add i32 %33, 172
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %33, 232
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = add i32 %33, 52
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %33, 304
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = add i32 %33, 188
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %33, 248
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %33, 68
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %33, 320
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %294, 0x3F50624DE0000000
  %298 = fmul fast float %296, 0x3F50624DE0000000
  %299 = add i32 %33, 204
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = shl i32 %301, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %301, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %301, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %33, 264
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %313, 8
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %313, 16
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = add i32 %33, 84
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %33, 336
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %336, 0x3F50624DE0000000
  %340 = fmul fast float %338, 0x3F50624DE0000000
  %341 = add i32 %33, 348
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 32
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %343, 64
  %347 = icmp eq i32 %346, 0
  %348 = and i32 %343, 128
  %349 = icmp eq i32 %348, 0
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %367, label %354

; <label>:354                                     ; preds = %171
  %355 = add i32 %33, 472
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = add i32 %357, 0
  %359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %359, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = fmul fast float %361, %57
  %365 = fmul fast float %362, %58
  %366 = fmul fast float %363, %59
  br label %367

; <label>:367                                     ; preds = %354, %171
  %368 = phi float [ %59, %171 ], [ %366, %354 ]
  %369 = phi float [ %58, %171 ], [ %365, %354 ]
  %370 = phi float [ %57, %171 ], [ %364, %354 ]
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 2
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %394, label %375

; <label>:375                                     ; preds = %367
  %376 = add i32 %33, 44
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %370, float 1.000000e+00
  %382 = add i32 %33, 60
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 1
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %369, float 1.000000e+00
  %388 = add i32 %33, 76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 1
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %392, float %368, float 1.000000e+00
  br label %394

; <label>:394                                     ; preds = %375, %367
  %395 = phi float [ %368, %367 ], [ %393, %375 ]
  %396 = phi float [ %369, %367 ], [ %387, %375 ]
  %397 = phi float [ %370, %367 ], [ %381, %375 ]
  %398 = lshr i32 %372, 20
  %399 = and i32 %398, 3
  %400 = add nuw nsw i32 %399, 1
  %401 = add i32 %33, 24
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = add i32 %33, 28
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = or i32 %406, %403
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %896, label %409

; <label>:409                                     ; preds = %394
  %410 = and i32 %403, 262144
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %35, float 1.000000e+00
  %413 = select i1 %411, float %36, float 0.000000e+00
  %414 = select i1 %411, float %37, float 0.000000e+00
  %415 = select i1 %411, float %38, float 1.000000e+00
  %416 = select i1 %411, float %39, float %55
  %417 = select i1 %411, float %40, float %56
  %418 = add i32 %33, 284
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = lshr i32 %420, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = fmul fast float %422, 0x3F50624DE0000000
  %424 = add i32 %33, 88
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = lshr i32 %426, 24
  %430 = add i32 %33, 292
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = add i32 %33, 32
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = lshr i32 %439, 22
  %441 = shl nuw nsw i32 %440, 5
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = shl i32 %439, 4
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 7
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %451 = fmul fast float %450, 1.000000e+03
  %452 = fmul fast float %213, %451
  %453 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %454 = fadd fast float %453, %203
  %455 = fmul fast float %214, %451
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fadd fast float %456, %205
  %458 = fmul fast float %423, %451
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fmul fast float %459, 0x401921FB60000000
  %461 = fadd fast float %460, %442
  %462 = call float @dx.op.unary.f32(i32 13, float %461)  ; Sin(value)
  %463 = call float @dx.op.unary.f32(i32 12, float %461)  ; Cos(value)
  %464 = fsub fast float -0.000000e+00, %462
  %465 = fadd fast float %416, -5.000000e-01
  %466 = fadd fast float %417, -5.000000e-01
  %467 = fmul fast float %434, %465
  %468 = fmul fast float %436, %466
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fmul fast float %445, %469
  %472 = fmul fast float %448, %470
  %473 = fmul fast float %463, %471
  %474 = call float @dx.op.tertiary.f32(i32 46, float %464, float %472, float %473)  ; FMad(a,b,c)
  %475 = fmul fast float %462, %471
  %476 = call float @dx.op.tertiary.f32(i32 46, float %463, float %472, float %475)  ; FMad(a,b,c)
  %477 = fadd fast float %454, %474
  %478 = fadd fast float %457, %476
  %479 = icmp ugt i32 %428, 1
  %480 = icmp ugt i32 %426, 33554431
  %481 = or i1 %480, %479
  br i1 %481, label %482, label %507

; <label>:482                                     ; preds = %409
  %483 = add i32 %33, 228
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = fmul fast float %450, %487
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = mul nuw nsw i32 %428, %429
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %489, %491
  %493 = call float @dx.op.unary.f32(i32 27, float %492)  ; Round_ni(value)
  %494 = fptoui float %493 to i32
  %495 = urem i32 %494, %428
  %496 = udiv i32 %494, %429
  %497 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %498 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %499 = uitofp i32 %495 to float
  %500 = uitofp i32 %496 to float
  %501 = fadd fast float %497, %499
  %502 = fadd fast float %498, %500
  %503 = uitofp i32 %428 to float
  %504 = uitofp i32 %429 to float
  %505 = fdiv fast float %501, %503
  %506 = fdiv fast float %502, %504
  br label %507

; <label>:507                                     ; preds = %482, %409
  %508 = phi float [ %505, %482 ], [ %477, %409 ]
  %509 = phi float [ %506, %482 ], [ %478, %409 ]
  %510 = and i32 %403, 16
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %708, label %512

; <label>:512                                     ; preds = %507
  %513 = add i32 %33, 360
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = add i32 %515, 0
  %517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %517, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = extractvalue %dx.types.ResRet.f32 %518, 3
  %523 = and i32 %426, 255
  %524 = uitofp i32 %523 to float
  %525 = lshr i32 %426, 8
  %526 = and i32 %525, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %522, %524
  %529 = fadd fast float %528, %527
  %530 = fmul fast float %529, 0x3F70101000000000
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 512
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %543, label %535

; <label>:535                                     ; preds = %512
  %536 = add i32 %33, 440
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %64, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  br label %543

; <label>:543                                     ; preds = %535, %512
  %544 = phi float [ %542, %535 ], [ 1.000000e+00, %512 ]
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = and i32 %546, 33554432
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %655, label %549

; <label>:549                                     ; preds = %543
  %550 = add i32 %33, 224
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %33, 228
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 24
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = and i32 %563, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %563, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %563, 16
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = add i32 %33, 220
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 24
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = and i32 %580, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = lshr i32 %580, 8
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = lshr i32 %580, 16
  %592 = and i32 %591, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = bitcast float %519 to i32
  %596 = ashr i32 %595, 1
  %597 = sub nsw i32 1597463174, %596
  %598 = bitcast i32 %597 to float
  %599 = fmul fast float %519, 5.000000e-01
  %600 = fmul fast float %598, %598
  %601 = fmul fast float %600, %599
  %602 = fsub fast float 1.500000e+00, %601
  %603 = fmul fast float %598, %519
  %604 = fmul fast float %603, %602
  %605 = bitcast float %520 to i32
  %606 = ashr i32 %605, 1
  %607 = sub nsw i32 1597463174, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %520, 5.000000e-01
  %610 = fmul fast float %608, %608
  %611 = fmul fast float %610, %609
  %612 = fsub fast float 1.500000e+00, %611
  %613 = fmul fast float %608, %520
  %614 = fmul fast float %613, %612
  %615 = bitcast float %521 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %521, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %521
  %624 = fmul fast float %623, %622
  %625 = fsub fast float %604, %586
  %626 = fsub fast float %614, %590
  %627 = fsub fast float %624, %594
  %628 = fmul fast float %625, %554
  %629 = fmul fast float %626, %556
  %630 = fmul fast float %627, %561
  %631 = fadd fast float %628, %569
  %632 = fadd fast float %629, %573
  %633 = fadd fast float %630, %577
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = fmul fast float %634, %634
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fsub fast float %637, %519
  %641 = fsub fast float %638, %520
  %642 = fsub fast float %639, %521
  %643 = fmul fast float %640, %544
  %644 = fmul fast float %641, %544
  %645 = fmul fast float %642, %544
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %566, %530
  %650 = fsub fast float %649, %583
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = fsub fast float %651, %530
  %653 = fmul fast float %652, %544
  %654 = fadd fast float %653, %530
  br label %708

; <label>:655                                     ; preds = %543
  %656 = and i32 %546, 134217728
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %692, label %658

; <label>:658                                     ; preds = %655
  %659 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fmul fast float %662, %544
  %666 = fmul fast float %663, %544
  %667 = fmul fast float %664, %544
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = fmul fast float %668, 2.000000e+00
  %675 = fsub fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %671
  %677 = fadd fast float %676, %674
  %678 = fmul fast float %677, %671
  %679 = fmul fast float %669, 2.000000e+00
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fmul fast float %680, %672
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %682, %672
  %684 = fmul fast float %670, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %673
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %673
  %689 = fmul fast float %678, %678
  %690 = fmul fast float %683, %683
  %691 = fmul fast float %688, %688
  br label %708

; <label>:692                                     ; preds = %655
  %693 = fmul fast float %190, %190
  %694 = fmul fast float %194, %194
  %695 = fmul fast float %198, %198
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fmul fast float %544, %696
  %700 = fmul fast float %544, %697
  %701 = fmul fast float %544, %698
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fmul fast float %702, %519
  %706 = fmul fast float %703, %520
  %707 = fmul fast float %704, %521
  br label %708

; <label>:708                                     ; preds = %692, %658, %549, %507
  %709 = phi float [ %654, %549 ], [ %530, %658 ], [ %530, %692 ], [ 0x3FA23C0BE0000000, %507 ]
  %710 = phi float [ %646, %549 ], [ %689, %658 ], [ %705, %692 ], [ 1.000000e+00, %507 ]
  %711 = phi float [ %647, %549 ], [ %690, %658 ], [ %706, %692 ], [ 1.000000e+00, %507 ]
  %712 = phi float [ %648, %549 ], [ %691, %658 ], [ %707, %692 ], [ 1.000000e+00, %507 ]
  %713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.i32 %713, 1
  %715 = and i32 %714, 1
  %716 = icmp ne i32 %715, 0
  %717 = add i32 %33, 356
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 32
  %721 = icmp ne i32 %720, 0
  %722 = and i1 %716, %721
  %723 = select i1 %722, float 1.000000e+00, float %710
  %724 = select i1 %722, float 0x3FD3333340000000, float %711
  %725 = select i1 %722, float 0x3FD3333340000000, float %712
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 32
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %802, label %730

; <label>:730                                     ; preds = %708
  %731 = add i32 %33, 92
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %33, 376
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = extractvalue %dx.types.ResRet.f32 %739, 3
  %744 = and i32 %733, 255
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %733, 8
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %733, 16
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101000000000
  %753 = fmul fast float %740, %745
  %754 = fadd fast float %753, %748
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = fadd fast float %741, -5.000000e-01
  %757 = fadd fast float %743, -5.000000e-01
  %758 = fmul fast float %756, %752
  %759 = fmul fast float %757, %752
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fmul fast float %760, 2.000000e+00
  %763 = fadd fast float %762, -1.000000e+00
  %764 = fmul fast float %761, 2.000000e+00
  %765 = fadd fast float %764, -1.000000e+00
  %766 = fadd fast float %763, %765
  %767 = fmul fast float %766, 5.000000e-01
  %768 = fsub fast float %763, %765
  %769 = fmul fast float %768, 5.000000e-01
  %770 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %771 = fsub fast float 1.000000e+00, %770
  %772 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %773 = fsub fast float %771, %772
  %774 = call float @dx.op.dot3.f32(i32 55, float %767, float %769, float %773, float %767, float %769, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = call float @dx.op.unary.f32(i32 25, float %774)  ; Rsqrt(value)
  %776 = fmul fast float %767, %775
  %777 = fmul fast float %769, %775
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 67108864
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %798, label %782

; <label>:782                                     ; preds = %730
  %783 = add i32 %33, 280
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 65535
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 65535
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = lshr i32 %785, 16
  %793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %792)  ; LegacyF16ToF32(value)
  %794 = fsub fast float %755, %793
  %795 = fmul fast float %794, %787
  %796 = fadd fast float %795, %791
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  br label %798

; <label>:798                                     ; preds = %782, %730
  %799 = phi float [ %797, %782 ], [ %755, %730 ]
  %800 = call float @dx.op.dot2.f32(i32 54, float %776, float %777, float %412, float %413)  ; Dot2(ax,ay,bx,by)
  %801 = call float @dx.op.dot2.f32(i32 54, float %776, float %777, float %414, float %415)  ; Dot2(ax,ay,bx,by)
  br label %802

; <label>:802                                     ; preds = %798, %708
  %803 = phi float [ %799, %798 ], [ 0x3FD6666660000000, %708 ]
  %804 = phi float [ %800, %798 ], [ 0.000000e+00, %708 ]
  %805 = phi float [ %801, %798 ], [ 0.000000e+00, %708 ]
  %806 = phi float [ %742, %798 ], [ 1.000000e+00, %708 ]
  %807 = add i32 %33, 160
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = lshr i32 %809, 22
  %811 = shl nuw nsw i32 %810, 5
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 64
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %850, label %817

; <label>:817                                     ; preds = %802
  %818 = add i32 %33, 392
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 131072
  %826 = icmp eq i32 %825, 0
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = fmul fast float %828, %178
  %832 = fmul fast float %829, %181
  %833 = fmul fast float %830, %184
  br i1 %826, label %840, label %834

; <label>:834                                     ; preds = %817
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = fmul fast float %836, %831
  %838 = fmul fast float %836, %832
  %839 = fmul fast float %836, %833
  br label %840

; <label>:840                                     ; preds = %834, %817
  %841 = phi float [ %837, %834 ], [ %831, %817 ]
  %842 = phi float [ %838, %834 ], [ %832, %817 ]
  %843 = phi float [ %839, %834 ], [ %833, %817 ]
  %844 = fmul fast float %841, %812
  %845 = select i1 %172, float %844, float %841
  %846 = call float @dx.op.dot3.f32(i32 55, float %845, float %842, float %843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = select i1 %172, float 0.000000e+00, float %841
  %848 = select i1 %172, float %846, float %842
  %849 = select i1 %172, float 0.000000e+00, float %843
  br label %850

; <label>:850                                     ; preds = %840, %802
  %851 = phi float [ %847, %840 ], [ 0.000000e+00, %802 ]
  %852 = phi float [ %848, %840 ], [ 0.000000e+00, %802 ]
  %853 = phi float [ %849, %840 ], [ 0.000000e+00, %802 ]
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 26624
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %881, label %858

; <label>:858                                     ; preds = %850
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 16384
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %881, label %863

; <label>:863                                     ; preds = %858
  %864 = and i32 %860, 1048576
  %865 = icmp ne i32 %864, 0
  %866 = add i32 %33, 456
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = add i32 %868, 0
  %870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %870, %dx.types.Handle %64, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = add i32 %33, 96
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = lshr i32 %875, 24
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %872, 0x3F70101020000000
  %879 = select i1 %865, float 0x3F70101020000000, float %878
  %880 = fmul fast float %879, %877
  br label %881

; <label>:881                                     ; preds = %863, %858, %850
  %882 = phi float [ %880, %863 ], [ 0.000000e+00, %858 ], [ 0.000000e+00, %850 ]
  %883 = add i32 %33, 96
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = lshr i32 %885, 8
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = call float @dx.op.dot3.f32(i32 55, float %723, float %724, float %725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = fmul fast float %890, %891
  %893 = fadd fast float %892, %887
  %894 = fmul fast float %893, 0x3F70101020000000
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  br label %896

; <label>:896                                     ; preds = %881, %394
  %897 = phi float [ 0.000000e+00, %394 ], [ %804, %881 ]
  %898 = phi float [ 0.000000e+00, %394 ], [ %805, %881 ]
  %899 = phi float [ 0.000000e+00, %394 ], [ %723, %881 ]
  %900 = phi float [ 0.000000e+00, %394 ], [ %724, %881 ]
  %901 = phi float [ 0.000000e+00, %394 ], [ %725, %881 ]
  %902 = phi float [ 0.000000e+00, %394 ], [ %851, %881 ]
  %903 = phi float [ 0.000000e+00, %394 ], [ %852, %881 ]
  %904 = phi float [ 0.000000e+00, %394 ], [ %853, %881 ]
  %905 = phi float [ 0.000000e+00, %394 ], [ %709, %881 ]
  %906 = phi float [ 0.000000e+00, %394 ], [ 1.000000e+00, %881 ]
  %907 = phi float [ 0.000000e+00, %394 ], [ %803, %881 ]
  %908 = phi float [ 0.000000e+00, %394 ], [ %806, %881 ]
  %909 = phi float [ 0.000000e+00, %394 ], [ %882, %881 ]
  %910 = phi float [ 0.000000e+00, %394 ], [ %895, %881 ]
  br i1 %345, label %1791, label %911

; <label>:911                                     ; preds = %896
  %912 = icmp ult i32 %400, 2
  %913 = add i32 %33, 40
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %33, 44
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = or i32 %918, %915
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %1791, label %921

; <label>:921                                     ; preds = %911
  %922 = and i32 %915, 262144
  %923 = icmp ne i32 %922, 0
  %924 = select i1 %923, float %35, float 1.000000e+00
  %925 = select i1 %923, float %36, float 0.000000e+00
  %926 = select i1 %923, float %37, float 0.000000e+00
  %927 = select i1 %923, float %38, float 1.000000e+00
  %928 = select i1 %923, float %39, float %55
  %929 = select i1 %923, float %40, float %56
  %930 = add i32 %33, 300
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = lshr i32 %932, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = fmul fast float %934, 0x3F50624DE0000000
  %936 = add i32 %33, 104
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 16
  %940 = and i32 %939, 255
  %941 = lshr i32 %938, 24
  %942 = add i32 %33, 308
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %944, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = add i32 %33, 48
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = lshr i32 %951, 22
  %953 = shl nuw nsw i32 %952, 5
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = shl i32 %951, 4
  %956 = and i32 %955, 32752
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = lshr i32 %951, 7
  %959 = and i32 %958, 32752
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = fmul fast float %962, 1.000000e+03
  %964 = fmul fast float %255, %963
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fadd fast float %965, %245
  %967 = fmul fast float %256, %963
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fadd fast float %968, %247
  %970 = fmul fast float %935, %963
  %971 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %972 = fmul fast float %971, 0x401921FB60000000
  %973 = fadd fast float %972, %954
  %974 = call float @dx.op.unary.f32(i32 13, float %973)  ; Sin(value)
  %975 = call float @dx.op.unary.f32(i32 12, float %973)  ; Cos(value)
  %976 = fsub fast float -0.000000e+00, %974
  %977 = fadd fast float %928, -5.000000e-01
  %978 = fadd fast float %929, -5.000000e-01
  %979 = fmul fast float %946, %977
  %980 = fmul fast float %948, %978
  %981 = fadd fast float %979, 5.000000e-01
  %982 = fadd fast float %980, 5.000000e-01
  %983 = fmul fast float %957, %981
  %984 = fmul fast float %960, %982
  %985 = fmul fast float %975, %983
  %986 = call float @dx.op.tertiary.f32(i32 46, float %976, float %984, float %985)  ; FMad(a,b,c)
  %987 = fmul fast float %974, %983
  %988 = call float @dx.op.tertiary.f32(i32 46, float %975, float %984, float %987)  ; FMad(a,b,c)
  %989 = fadd fast float %966, %986
  %990 = fadd fast float %969, %988
  %991 = icmp ugt i32 %940, 1
  %992 = icmp ugt i32 %938, 33554431
  %993 = or i1 %992, %991
  br i1 %993, label %994, label %1019

; <label>:994                                     ; preds = %921
  %995 = add i32 %33, 244
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = lshr i32 %997, 16
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = fmul fast float %962, %999
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = mul nuw nsw i32 %940, %941
  %1003 = uitofp i32 %1002 to float
  %1004 = fmul fast float %1001, %1003
  %1005 = call float @dx.op.unary.f32(i32 27, float %1004)  ; Round_ni(value)
  %1006 = fptoui float %1005 to i32
  %1007 = urem i32 %1006, %940
  %1008 = udiv i32 %1006, %941
  %1009 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %1010 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %1011 = uitofp i32 %1007 to float
  %1012 = uitofp i32 %1008 to float
  %1013 = fadd fast float %1009, %1011
  %1014 = fadd fast float %1010, %1012
  %1015 = uitofp i32 %940 to float
  %1016 = uitofp i32 %941 to float
  %1017 = fdiv fast float %1013, %1015
  %1018 = fdiv fast float %1014, %1016
  br label %1019

; <label>:1019                                    ; preds = %994, %921
  %1020 = phi float [ %1017, %994 ], [ %989, %921 ]
  %1021 = phi float [ %1018, %994 ], [ %990, %921 ]
  %1022 = and i32 %915, 16777216
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1133, label %1024

; <label>:1024                                    ; preds = %1019
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = fadd fast float %1026, %130
  %1030 = fadd fast float %1027, %131
  %1031 = fadd fast float %1028, %132
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = icmp eq i32 %34, 65535
  br i1 %1035, label %1130, label %1036

; <label>:1036                                    ; preds = %1024
  %1037 = lshr i32 %34, 1
  %1038 = shl i32 %1037, 2
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %34, 1
  %1042 = icmp ne i32 %1041, 0
  %1043 = lshr i32 %1040, 16
  %1044 = and i32 %1040, 65535
  %1045 = select i1 %1042, i32 %1043, i32 %1044
  %1046 = icmp eq i32 %1045, 65535
  br i1 %1046, label %1126, label %1047

; <label>:1047                                    ; preds = %1036
  %1048 = mul nuw nsw i32 %1045, 40
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = add nuw nsw i32 %1048, 12
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = add nuw nsw i32 %1048, 24
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = add nuw nsw i32 %1048, 36
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = fsub fast float %1029, %1050
  %1067 = fsub fast float %1030, %1051
  %1068 = fsub fast float %1031, %1052
  %1069 = fmul fast float %1065, %1066
  %1070 = fmul fast float %1065, %1067
  %1071 = fmul fast float %1065, %1068
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = fadd fast float %1072, 5.000000e-01
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fmul fast float %1075, %1055
  %1079 = fmul fast float %1076, %1056
  %1080 = fmul fast float %1077, %1057
  %1081 = shl i32 %34, 2
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1078)  ; Frc(value)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1088 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1085, %dx.types.Handle %30, float %1086, float %1087, float %1088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = fmul fast float %1090, 1.023000e+03
  %1094 = fmul fast float %1091, 1.023000e+03
  %1095 = fmul fast float %1092, 1.023000e+03
  %1096 = fadd fast float %1093, 5.000000e-01
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = fsub fast float %1069, %1072
  %1103 = fsub fast float %1070, %1073
  %1104 = fsub fast float %1071, %1074
  %1105 = fmul fast float %1102, 7.500000e-01
  %1106 = fmul fast float %1103, 7.500000e-01
  %1107 = fmul fast float %1104, 7.500000e-01
  %1108 = fadd fast float %1072, 1.250000e-01
  %1109 = fadd fast float %1108, %1105
  %1110 = fadd fast float %1109, %1099
  %1111 = fadd fast float %1073, 1.250000e-01
  %1112 = fadd fast float %1111, %1106
  %1113 = fadd fast float %1112, %1100
  %1114 = fadd fast float %1074, 1.250000e-01
  %1115 = fadd fast float %1114, %1107
  %1116 = fadd fast float %1115, %1101
  %1117 = fmul fast float %1110, %1060
  %1118 = fmul fast float %1113, %1061
  %1119 = fmul fast float %1116, %1062
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1121, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1123, %dx.types.Handle %28, float %1117, float %1118, float %1119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  br label %1126

; <label>:1126                                    ; preds = %1047, %1036
  %1127 = phi float [ %1125, %1047 ], [ -1.000000e+00, %1036 ]
  %1128 = fadd fast float %1127, %1034
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  br label %1130

; <label>:1130                                    ; preds = %1126, %1024
  %1131 = phi float [ %1129, %1126 ], [ %1034, %1024 ]
  %1132 = fmul fast float %1131, %397
  br label %1133

; <label>:1133                                    ; preds = %1130, %1019
  %1134 = phi float [ %1132, %1130 ], [ %397, %1019 ]
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 256
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1185, label %1139

; <label>:1139                                    ; preds = %1133
  %1140 = add i32 %33, 428
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %1142, 0
  %1144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1144, %dx.types.Handle %64, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = add i32 %33, 116
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = shl i32 %1149, 4
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = lshr i32 %1149, 7
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fsub fast float 1.000000e+00, %1134
  %1157 = call float @dx.op.binary.f32(i32 35, float %1156, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1158 = bitcast float %1134 to i32
  %1159 = sitofp i32 %1158 to float
  %1160 = fadd fast float %1159, 0xC1CFBF8940000000
  %1161 = fmul fast float %1155, %1160
  %1162 = fadd fast float %1161, 0x41CFBF8940000000
  %1163 = fptosi float %1162 to i32
  %1164 = bitcast i32 %1163 to float
  %1165 = bitcast float %1157 to i32
  %1166 = sitofp i32 %1165 to float
  %1167 = fadd fast float %1166, 0xC1CFBF8940000000
  %1168 = fmul fast float %1167, %1155
  %1169 = fadd fast float %1168, 0x41CFBF8940000000
  %1170 = fptosi float %1169 to i32
  %1171 = bitcast i32 %1170 to float
  %1172 = fmul fast float %1164, %1152
  %1173 = fmul fast float %1171, %1152
  %1174 = fsub fast float %1157, %1172
  %1175 = fadd fast float %1173, %1157
  %1176 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1177 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1178 = fsub fast float %1146, %1176
  %1179 = fsub fast float %1177, %1176
  %1180 = bitcast float %1179 to i32
  %1181 = sub nsw i32 2129859010, %1180
  %1182 = bitcast i32 %1181 to float
  %1183 = fmul fast float %1182, %1178
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br label %1185

; <label>:1185                                    ; preds = %1139, %1133
  %1186 = phi float [ %1184, %1139 ], [ %1134, %1133 ]
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 128
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1207, label %1191

; <label>:1191                                    ; preds = %1185
  %1192 = add i32 %33, 412
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = add i32 %1194, 0
  %1196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1196, %dx.types.Handle %64, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 524288
  %1202 = icmp ne i32 %1201, 0
  %1203 = fcmp fast ogt float %1198, 0x3FE0101020000000
  %1204 = select i1 %1203, float 1.000000e+00, float 0.000000e+00
  %1205 = select i1 %1202, float %1204, float %1198
  %1206 = fmul fast float %1205, %1186
  br label %1207

; <label>:1207                                    ; preds = %1191, %1185
  %1208 = phi float [ %1206, %1191 ], [ %1186, %1185 ]
  %1209 = fcmp fast ult float %1208, 0x3F70101020000000
  br i1 %1209, label %1791, label %1210

; <label>:1210                                    ; preds = %1207
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 16
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1413, label %1215

; <label>:1215                                    ; preds = %1210
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %33, 364
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %1220, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1222, %dx.types.Handle %63, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = and i32 %1217, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = lshr i32 %1217, 8
  %1231 = and i32 %1230, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1227, %1229
  %1234 = fadd fast float %1233, %1232
  %1235 = fmul fast float %1234, 0x3F70101000000000
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 512
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1248, label %1240

; <label>:1240                                    ; preds = %1215
  %1241 = add i32 %33, 444
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %64, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  br label %1248

; <label>:1248                                    ; preds = %1240, %1215
  %1249 = phi float [ %1247, %1240 ], [ 1.000000e+00, %1215 ]
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 33554432
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1360, label %1254

; <label>:1254                                    ; preds = %1248
  %1255 = add i32 %33, 240
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 65535
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = lshr i32 %1257, 16
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = add i32 %33, 244
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 65535
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 24
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = and i32 %1268, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = lshr i32 %1268, 8
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101020000000
  %1279 = lshr i32 %1268, 16
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101020000000
  %1283 = add i32 %33, 236
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 24
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = and i32 %1285, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = lshr i32 %1285, 8
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = lshr i32 %1285, 16
  %1297 = and i32 %1296, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = bitcast float %1224 to i32
  %1301 = ashr i32 %1300, 1
  %1302 = sub nsw i32 1597463174, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1224, 5.000000e-01
  %1305 = fmul fast float %1303, %1303
  %1306 = fmul fast float %1305, %1304
  %1307 = fsub fast float 1.500000e+00, %1306
  %1308 = fmul fast float %1303, %1224
  %1309 = fmul fast float %1308, %1307
  %1310 = bitcast float %1225 to i32
  %1311 = ashr i32 %1310, 1
  %1312 = sub nsw i32 1597463174, %1311
  %1313 = bitcast i32 %1312 to float
  %1314 = fmul fast float %1225, 5.000000e-01
  %1315 = fmul fast float %1313, %1313
  %1316 = fmul fast float %1315, %1314
  %1317 = fsub fast float 1.500000e+00, %1316
  %1318 = fmul fast float %1313, %1225
  %1319 = fmul fast float %1318, %1317
  %1320 = bitcast float %1226 to i32
  %1321 = ashr i32 %1320, 1
  %1322 = sub nsw i32 1597463174, %1321
  %1323 = bitcast i32 %1322 to float
  %1324 = fmul fast float %1226, 5.000000e-01
  %1325 = fmul fast float %1323, %1323
  %1326 = fmul fast float %1325, %1324
  %1327 = fsub fast float 1.500000e+00, %1326
  %1328 = fmul fast float %1323, %1226
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float %1309, %1291
  %1331 = fsub fast float %1319, %1295
  %1332 = fsub fast float %1329, %1299
  %1333 = fmul fast float %1330, %1259
  %1334 = fmul fast float %1331, %1261
  %1335 = fmul fast float %1332, %1266
  %1336 = fadd fast float %1333, %1274
  %1337 = fadd fast float %1334, %1278
  %1338 = fadd fast float %1335, %1282
  %1339 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1340 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1341 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1342 = fmul fast float %1339, %1339
  %1343 = fmul fast float %1340, %1340
  %1344 = fmul fast float %1341, %1341
  %1345 = fsub fast float %1342, %1224
  %1346 = fsub fast float %1343, %1225
  %1347 = fsub fast float %1344, %1226
  %1348 = fmul fast float %1345, %1249
  %1349 = fmul fast float %1346, %1249
  %1350 = fmul fast float %1347, %1249
  %1351 = fadd fast float %1348, %1224
  %1352 = fadd fast float %1349, %1225
  %1353 = fadd fast float %1350, %1226
  %1354 = fadd fast float %1271, %1235
  %1355 = fsub fast float %1354, %1288
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = fsub fast float %1356, %1235
  %1358 = fmul fast float %1357, %1249
  %1359 = fadd fast float %1358, %1235
  br label %1413

; <label>:1360                                    ; preds = %1248
  %1361 = and i32 %1251, 134217728
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1397, label %1363

; <label>:1363                                    ; preds = %1360
  %1364 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1365 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1366 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1367 = fadd fast float %1364, -5.000000e-01
  %1368 = fadd fast float %1365, -5.000000e-01
  %1369 = fadd fast float %1366, -5.000000e-01
  %1370 = fmul fast float %1367, %1249
  %1371 = fmul fast float %1368, %1249
  %1372 = fmul fast float %1369, %1249
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = call float @dx.op.unary.f32(i32 24, float %1224)  ; Sqrt(value)
  %1377 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1378 = call float @dx.op.unary.f32(i32 24, float %1226)  ; Sqrt(value)
  %1379 = fmul fast float %1373, 2.000000e+00
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = fmul fast float %1380, %1376
  %1382 = fadd fast float %1381, %1379
  %1383 = fmul fast float %1382, %1376
  %1384 = fmul fast float %1374, 2.000000e+00
  %1385 = fsub fast float 1.000000e+00, %1384
  %1386 = fmul fast float %1385, %1377
  %1387 = fadd fast float %1386, %1384
  %1388 = fmul fast float %1387, %1377
  %1389 = fmul fast float %1375, 2.000000e+00
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = fmul fast float %1390, %1378
  %1392 = fadd fast float %1391, %1389
  %1393 = fmul fast float %1392, %1378
  %1394 = fmul fast float %1383, %1383
  %1395 = fmul fast float %1388, %1388
  %1396 = fmul fast float %1393, %1393
  br label %1413

; <label>:1397                                    ; preds = %1360
  %1398 = fmul fast float %232, %232
  %1399 = fmul fast float %236, %236
  %1400 = fmul fast float %240, %240
  %1401 = fadd fast float %1398, -1.000000e+00
  %1402 = fadd fast float %1399, -1.000000e+00
  %1403 = fadd fast float %1400, -1.000000e+00
  %1404 = fmul fast float %1249, %1401
  %1405 = fmul fast float %1249, %1402
  %1406 = fmul fast float %1249, %1403
  %1407 = fadd fast float %1404, 1.000000e+00
  %1408 = fadd fast float %1405, 1.000000e+00
  %1409 = fadd fast float %1406, 1.000000e+00
  %1410 = fmul fast float %1407, %1224
  %1411 = fmul fast float %1408, %1225
  %1412 = fmul fast float %1409, %1226
  br label %1413

; <label>:1413                                    ; preds = %1397, %1363, %1254, %1210
  %1414 = phi float [ %1359, %1254 ], [ %1235, %1363 ], [ %1235, %1397 ], [ 0x3FA23C0BE0000000, %1210 ]
  %1415 = phi float [ %1351, %1254 ], [ %1394, %1363 ], [ %1410, %1397 ], [ 1.000000e+00, %1210 ]
  %1416 = phi float [ %1352, %1254 ], [ %1395, %1363 ], [ %1411, %1397 ], [ 1.000000e+00, %1210 ]
  %1417 = phi float [ %1353, %1254 ], [ %1396, %1363 ], [ %1412, %1397 ], [ 1.000000e+00, %1210 ]
  %1418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.i32 %1418, 1
  %1420 = and i32 %1419, 1
  %1421 = icmp ne i32 %1420, 0
  %1422 = add i32 %33, 356
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 32
  %1426 = icmp ne i32 %1425, 0
  %1427 = and i1 %1421, %1426
  %1428 = select i1 %1427, float 1.000000e+00, float %1415
  %1429 = select i1 %1427, float 0x3FD3333340000000, float %1416
  %1430 = select i1 %1427, float 0x3FD3333340000000, float %1417
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 32
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1507, label %1435

; <label>:1435                                    ; preds = %1413
  %1436 = add i32 %33, 108
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %33, 380
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1443, %dx.types.Handle %63, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = and i32 %1438, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1438, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = lshr i32 %1438, 16
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101000000000
  %1458 = fmul fast float %1445, %1450
  %1459 = fadd fast float %1458, %1453
  %1460 = fmul fast float %1459, 0x3F70101000000000
  %1461 = fadd fast float %1446, -5.000000e-01
  %1462 = fadd fast float %1448, -5.000000e-01
  %1463 = fmul fast float %1461, %1457
  %1464 = fmul fast float %1462, %1457
  %1465 = fadd fast float %1463, 5.000000e-01
  %1466 = fadd fast float %1464, 5.000000e-01
  %1467 = fmul fast float %1465, 2.000000e+00
  %1468 = fadd fast float %1467, -1.000000e+00
  %1469 = fmul fast float %1466, 2.000000e+00
  %1470 = fadd fast float %1469, -1.000000e+00
  %1471 = fadd fast float %1468, %1470
  %1472 = fmul fast float %1471, 5.000000e-01
  %1473 = fsub fast float %1468, %1470
  %1474 = fmul fast float %1473, 5.000000e-01
  %1475 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = call float @dx.op.unary.f32(i32 6, float %1474)  ; FAbs(value)
  %1478 = fsub fast float %1476, %1477
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1472, float %1474, float %1478, float %1472, float %1474, float %1478)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.unary.f32(i32 25, float %1479)  ; Rsqrt(value)
  %1481 = fmul fast float %1472, %1480
  %1482 = fmul fast float %1474, %1480
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 67108864
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1503, label %1487

; <label>:1487                                    ; preds = %1435
  %1488 = add i32 %33, 296
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 65535
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1490, 16
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = fsub fast float %1460, %1498
  %1500 = fmul fast float %1499, %1492
  %1501 = fadd fast float %1500, %1496
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  br label %1503

; <label>:1503                                    ; preds = %1487, %1435
  %1504 = phi float [ %1502, %1487 ], [ %1460, %1435 ]
  %1505 = call float @dx.op.dot2.f32(i32 54, float %1481, float %1482, float %924, float %925)  ; Dot2(ax,ay,bx,by)
  %1506 = call float @dx.op.dot2.f32(i32 54, float %1481, float %1482, float %926, float %927)  ; Dot2(ax,ay,bx,by)
  br label %1507

; <label>:1507                                    ; preds = %1503, %1413
  %1508 = phi float [ %1504, %1503 ], [ 0x3FD6666660000000, %1413 ]
  %1509 = phi float [ %1505, %1503 ], [ 0.000000e+00, %1413 ]
  %1510 = phi float [ %1506, %1503 ], [ 0.000000e+00, %1413 ]
  %1511 = phi float [ %1447, %1503 ], [ 1.000000e+00, %1413 ]
  %1512 = add i32 %33, 176
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = lshr i32 %1514, 22
  %1516 = shl nuw nsw i32 %1515, 5
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 64
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1555, label %1522

; <label>:1522                                    ; preds = %1507
  %1523 = add i32 %33, 396
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %1525, 0
  %1527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 131072
  %1531 = icmp eq i32 %1530, 0
  %1532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1527, %dx.types.Handle %63, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = fmul fast float %1533, %220
  %1537 = fmul fast float %1534, %223
  %1538 = fmul fast float %1535, %226
  br i1 %1531, label %1545, label %1539

; <label>:1539                                    ; preds = %1522
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1542 = fmul fast float %1541, %1536
  %1543 = fmul fast float %1541, %1537
  %1544 = fmul fast float %1541, %1538
  br label %1545

; <label>:1545                                    ; preds = %1539, %1522
  %1546 = phi float [ %1542, %1539 ], [ %1536, %1522 ]
  %1547 = phi float [ %1543, %1539 ], [ %1537, %1522 ]
  %1548 = phi float [ %1544, %1539 ], [ %1538, %1522 ]
  %1549 = fmul fast float %1546, %1517
  %1550 = select i1 %172, float %1549, float %1546
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1547, float %1548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = select i1 %172, float 0.000000e+00, float %1546
  %1553 = select i1 %172, float %1551, float %1547
  %1554 = select i1 %172, float 0.000000e+00, float %1548
  br label %1555

; <label>:1555                                    ; preds = %1545, %1507
  %1556 = phi float [ %1552, %1545 ], [ 0.000000e+00, %1507 ]
  %1557 = phi float [ %1553, %1545 ], [ 0.000000e+00, %1507 ]
  %1558 = phi float [ %1554, %1545 ], [ 0.000000e+00, %1507 ]
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 26624
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1586, label %1563

; <label>:1563                                    ; preds = %1555
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 16384
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1586, label %1568

; <label>:1568                                    ; preds = %1563
  %1569 = and i32 %1565, 1048576
  %1570 = icmp ne i32 %1569, 0
  %1571 = add i32 %33, 460
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = add i32 %1573, 0
  %1575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1575, %dx.types.Handle %64, float %1020, float %1021, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = add i32 %33, 112
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = lshr i32 %1580, 24
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1577, 0x3F70101020000000
  %1584 = select i1 %1570, float 0x3F70101020000000, float %1583
  %1585 = fmul fast float %1584, %1582
  br label %1586

; <label>:1586                                    ; preds = %1568, %1563, %1555
  %1587 = phi float [ %1585, %1568 ], [ 0.000000e+00, %1563 ], [ 0.000000e+00, %1555 ]
  %1588 = add i32 %33, 112
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = lshr i32 %1590, 8
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1429, float %1430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = fmul fast float %1595, %1596
  %1598 = fadd fast float %1597, %1592
  %1599 = fmul fast float %1598, 0x3F70101020000000
  %1600 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  br i1 %912, label %1601, label %1609

; <label>:1601                                    ; preds = %1586
  %1602 = fsub fast float 1.000000e+00, %1208
  %1603 = fmul fast float %1602, %899
  %1604 = fmul fast float %1602, %900
  %1605 = fmul fast float %1602, %901
  %1606 = fmul fast float %1602, %902
  %1607 = fmul fast float %1602, %903
  %1608 = fmul fast float %1602, %904
  br label %1609

; <label>:1609                                    ; preds = %1601, %1586
  %1610 = phi float [ %1603, %1601 ], [ %899, %1586 ]
  %1611 = phi float [ %1604, %1601 ], [ %900, %1586 ]
  %1612 = phi float [ %1605, %1601 ], [ %901, %1586 ]
  %1613 = phi float [ %1606, %1601 ], [ %902, %1586 ]
  %1614 = phi float [ %1607, %1601 ], [ %903, %1586 ]
  %1615 = phi float [ %1608, %1601 ], [ %904, %1586 ]
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 3
  %1619 = icmp eq i32 %1618, 3
  br i1 %1619, label %1698, label %1620

; <label>:1620                                    ; preds = %1609
  %1621 = and i32 %1617, 16
  %1622 = icmp ne i32 %1621, 0
  %1623 = select i1 %1622, float %1208, float 0.000000e+00
  %1624 = icmp eq i32 %1618, 0
  br i1 %1624, label %1625, label %1653

; <label>:1625                                    ; preds = %1620
  %1626 = and i32 %1617, 64
  %1627 = icmp ne i32 %1626, 0
  %1628 = select i1 %1627, float %1208, float 0.000000e+00
  %1629 = fsub fast float %1428, %1610
  %1630 = fsub fast float %1429, %1611
  %1631 = fsub fast float %1430, %1612
  %1632 = fmul fast float %1623, %1629
  %1633 = fmul fast float %1623, %1630
  %1634 = fmul fast float %1623, %1631
  %1635 = fadd fast float %1632, %1610
  %1636 = fadd fast float %1633, %1611
  %1637 = fadd fast float %1634, %1612
  %1638 = fsub fast float %1414, %905
  %1639 = fmul fast float %1623, %1638
  %1640 = fadd fast float %1639, %905
  %1641 = fsub fast float %1556, %1613
  %1642 = fsub fast float %1557, %1614
  %1643 = fsub fast float %1558, %1615
  %1644 = fmul fast float %1628, %1641
  %1645 = fmul fast float %1628, %1642
  %1646 = fmul fast float %1628, %1643
  %1647 = fadd fast float %1644, %1613
  %1648 = fadd fast float %1645, %1614
  %1649 = fadd fast float %1646, %1615
  %1650 = fsub fast float %1600, %910
  %1651 = fmul fast float %1623, %1650
  %1652 = fadd fast float %1651, %910
  br label %1698

; <label>:1653                                    ; preds = %1620
  %1654 = icmp eq i32 %1618, 1
  br i1 %1654, label %1655, label %1668

; <label>:1655                                    ; preds = %1653
  %1656 = fadd fast float %1428, -1.000000e+00
  %1657 = fadd fast float %1429, -1.000000e+00
  %1658 = fadd fast float %1430, -1.000000e+00
  %1659 = fmul fast float %1623, %1656
  %1660 = fmul fast float %1623, %1657
  %1661 = fmul fast float %1623, %1658
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fmul fast float %1662, %1610
  %1666 = fmul fast float %1663, %1611
  %1667 = fmul fast float %1664, %1612
  br label %1698

; <label>:1668                                    ; preds = %1653
  %1669 = icmp eq i32 %1618, 2
  br i1 %1669, label %1670, label %1698

; <label>:1670                                    ; preds = %1668
  %1671 = call float @dx.op.unary.f32(i32 24, float %1428)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fmul fast float %1674, %1623
  %1678 = fmul fast float %1675, %1623
  %1679 = fmul fast float %1676, %1623
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fmul fast float %1680, 2.000000e+00
  %1684 = fsub fast float 1.000000e+00, %1683
  %1685 = fmul fast float %1684, %1610
  %1686 = fadd fast float %1685, %1683
  %1687 = fmul fast float %1686, %1610
  %1688 = fmul fast float %1681, 2.000000e+00
  %1689 = fsub fast float 1.000000e+00, %1688
  %1690 = fmul fast float %1689, %1611
  %1691 = fadd fast float %1690, %1688
  %1692 = fmul fast float %1691, %1611
  %1693 = fmul fast float %1682, 2.000000e+00
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fmul fast float %1694, %1612
  %1696 = fadd fast float %1695, %1693
  %1697 = fmul fast float %1696, %1612
  br label %1698

; <label>:1698                                    ; preds = %1670, %1668, %1655, %1625, %1609
  %1699 = phi float [ %1610, %1609 ], [ %1687, %1670 ], [ %1610, %1668 ], [ %1665, %1655 ], [ %1635, %1625 ]
  %1700 = phi float [ %1611, %1609 ], [ %1692, %1670 ], [ %1611, %1668 ], [ %1666, %1655 ], [ %1636, %1625 ]
  %1701 = phi float [ %1612, %1609 ], [ %1697, %1670 ], [ %1612, %1668 ], [ %1667, %1655 ], [ %1637, %1625 ]
  %1702 = phi float [ %1613, %1609 ], [ %1613, %1670 ], [ %1613, %1668 ], [ %1613, %1655 ], [ %1647, %1625 ]
  %1703 = phi float [ %1614, %1609 ], [ %1614, %1670 ], [ %1614, %1668 ], [ %1614, %1655 ], [ %1648, %1625 ]
  %1704 = phi float [ %1615, %1609 ], [ %1615, %1670 ], [ %1615, %1668 ], [ %1615, %1655 ], [ %1649, %1625 ]
  %1705 = phi float [ %905, %1609 ], [ %905, %1670 ], [ %905, %1668 ], [ %905, %1655 ], [ %1640, %1625 ]
  %1706 = phi float [ %910, %1609 ], [ %910, %1670 ], [ %910, %1668 ], [ %910, %1655 ], [ %1652, %1625 ]
  %1707 = and i32 %1617, 12
  %1708 = icmp eq i32 %1707, 12
  br i1 %1708, label %1791, label %1709

; <label>:1709                                    ; preds = %1698
  %1710 = and i32 %1617, 2097184
  %1711 = icmp eq i32 %1710, 2097184
  %1712 = select i1 %1711, float %1208, float 0.000000e+00
  %1713 = and i32 %1617, 4194336
  %1714 = icmp eq i32 %1713, 4194336
  %1715 = select i1 %1714, float %1208, float 0.000000e+00
  %1716 = and i32 %1617, 8388640
  %1717 = icmp eq i32 %1716, 8388640
  %1718 = select i1 %1717, float %1208, float 0.000000e+00
  %1719 = and i32 %1617, 16384
  %1720 = icmp ne i32 %1719, 0
  %1721 = select i1 %1720, float %1208, float 0.000000e+00
  %1722 = icmp eq i32 %1707, 0
  br i1 %1722, label %1723, label %1739

; <label>:1723                                    ; preds = %1709
  %1724 = fsub fast float %1509, %897
  %1725 = fsub fast float %1510, %898
  %1726 = fmul fast float %1712, %1724
  %1727 = fmul fast float %1712, %1725
  %1728 = fadd fast float %1726, %897
  %1729 = fadd fast float %1727, %898
  %1730 = fsub fast float %1511, %908
  %1731 = fmul fast float %1715, %1730
  %1732 = fadd fast float %1731, %908
  %1733 = fsub fast float %1508, %907
  %1734 = fmul fast float %1718, %1733
  %1735 = fadd fast float %1734, %907
  %1736 = fsub fast float %1587, %909
  %1737 = fmul fast float %1721, %1736
  %1738 = fadd fast float %1737, %909
  br label %1791

; <label>:1739                                    ; preds = %1709
  %1740 = icmp eq i32 %1707, 4
  br i1 %1740, label %1741, label %1775

; <label>:1741                                    ; preds = %1739
  %1742 = fmul fast float %1712, %1509
  %1743 = fmul fast float %1712, %1510
  %1744 = fadd fast float %1742, %897
  %1745 = fadd fast float %1743, %898
  %1746 = call float @dx.op.binary.f32(i32 36, float %908, float %1511)  ; FMin(a,b)
  %1747 = fsub fast float %1746, %908
  %1748 = fmul fast float %1747, %1715
  %1749 = fadd fast float %1748, %908
  %1750 = fadd fast float %1508, %907
  %1751 = fmul fast float %1750, 0x3FF337FAE0000000
  %1752 = fmul fast float %907, %907
  %1753 = fmul fast float %1508, %1508
  %1754 = fadd fast float %1753, %1752
  %1755 = fmul fast float %1754, 0x3FE5152B00000000
  %1756 = fmul fast float %907, 0xBFCC1F85E0000000
  %1757 = fmul fast float %1756, %1508
  %1758 = fadd fast float %1757, 0xBFE1363700000000
  %1759 = fadd fast float %1758, %1751
  %1760 = fsub fast float %1759, %1755
  %1761 = fmul fast float %1750, 0x3FBA6F0D00000000
  %1762 = fmul fast float %1754, 0x3FD0432880000000
  %1763 = fmul fast float %907, 0xBFEF110800000000
  %1764 = fmul fast float %1763, %1508
  %1765 = fadd fast float %1764, 1.000000e+00
  %1766 = fsub fast float %1765, %1761
  %1767 = fadd fast float %1766, %1762
  %1768 = fdiv fast float %1760, %1767
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1770 = fsub fast float %1769, %907
  %1771 = fmul fast float %1770, %1718
  %1772 = fadd fast float %1771, %907
  %1773 = fmul fast float %1721, %1587
  %1774 = fadd fast float %1773, %909
  br label %1791

; <label>:1775                                    ; preds = %1739
  %1776 = icmp eq i32 %1707, 8
  br i1 %1776, label %1777, label %1791

; <label>:1777                                    ; preds = %1775
  %1778 = fmul fast float %1712, %1509
  %1779 = fmul fast float %1712, %1510
  %1780 = fadd fast float %1778, %897
  %1781 = fadd fast float %1779, %898
  %1782 = call float @dx.op.binary.f32(i32 36, float %908, float %1511)  ; FMin(a,b)
  %1783 = fsub fast float %1782, %908
  %1784 = fmul fast float %1783, %1715
  %1785 = fadd fast float %1784, %908
  %1786 = fsub fast float %1508, %907
  %1787 = fmul fast float %1718, %1786
  %1788 = fadd fast float %1787, %907
  %1789 = fmul fast float %1721, %1587
  %1790 = fadd fast float %1789, %909
  br label %1791

; <label>:1791                                    ; preds = %1777, %1775, %1741, %1723, %1698, %1207, %911, %896
  %1792 = phi float [ %897, %1698 ], [ %897, %1207 ], [ %897, %896 ], [ %1780, %1777 ], [ %897, %1775 ], [ %1744, %1741 ], [ %1728, %1723 ], [ %897, %911 ]
  %1793 = phi float [ %898, %1698 ], [ %898, %1207 ], [ %898, %896 ], [ %1781, %1777 ], [ %898, %1775 ], [ %1745, %1741 ], [ %1729, %1723 ], [ %898, %911 ]
  %1794 = phi float [ %1699, %1698 ], [ %899, %1207 ], [ %899, %896 ], [ %1699, %1777 ], [ %1699, %1775 ], [ %1699, %1741 ], [ %1699, %1723 ], [ %899, %911 ]
  %1795 = phi float [ %1700, %1698 ], [ %900, %1207 ], [ %900, %896 ], [ %1700, %1777 ], [ %1700, %1775 ], [ %1700, %1741 ], [ %1700, %1723 ], [ %900, %911 ]
  %1796 = phi float [ %1701, %1698 ], [ %901, %1207 ], [ %901, %896 ], [ %1701, %1777 ], [ %1701, %1775 ], [ %1701, %1741 ], [ %1701, %1723 ], [ %901, %911 ]
  %1797 = phi float [ %1702, %1698 ], [ %902, %1207 ], [ %902, %896 ], [ %1702, %1777 ], [ %1702, %1775 ], [ %1702, %1741 ], [ %1702, %1723 ], [ %902, %911 ]
  %1798 = phi float [ %1703, %1698 ], [ %903, %1207 ], [ %903, %896 ], [ %1703, %1777 ], [ %1703, %1775 ], [ %1703, %1741 ], [ %1703, %1723 ], [ %903, %911 ]
  %1799 = phi float [ %1704, %1698 ], [ %904, %1207 ], [ %904, %896 ], [ %1704, %1777 ], [ %1704, %1775 ], [ %1704, %1741 ], [ %1704, %1723 ], [ %904, %911 ]
  %1800 = phi float [ %1705, %1698 ], [ %905, %1207 ], [ %905, %896 ], [ %1705, %1777 ], [ %1705, %1775 ], [ %1705, %1741 ], [ %1705, %1723 ], [ %905, %911 ]
  %1801 = phi float [ %907, %1698 ], [ %907, %1207 ], [ %907, %896 ], [ %1788, %1777 ], [ %907, %1775 ], [ %1772, %1741 ], [ %1735, %1723 ], [ %907, %911 ]
  %1802 = phi float [ %908, %1698 ], [ %908, %1207 ], [ %908, %896 ], [ %1785, %1777 ], [ %908, %1775 ], [ %1749, %1741 ], [ %1732, %1723 ], [ %908, %911 ]
  %1803 = phi float [ %909, %1698 ], [ %909, %1207 ], [ %909, %896 ], [ %1790, %1777 ], [ %909, %1775 ], [ %1774, %1741 ], [ %1738, %1723 ], [ %909, %911 ]
  %1804 = phi float [ %1706, %1698 ], [ %910, %1207 ], [ %910, %896 ], [ %1706, %1777 ], [ %1706, %1775 ], [ %1706, %1741 ], [ %1706, %1723 ], [ %910, %911 ]
  br i1 %347, label %2685, label %1805

; <label>:1805                                    ; preds = %1791
  %1806 = icmp ult i32 %400, 3
  %1807 = add i32 %33, 56
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %33, 60
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = or i32 %1812, %1809
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %2685, label %1815

; <label>:1815                                    ; preds = %1805
  %1816 = and i32 %1809, 262144
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %35, float 1.000000e+00
  %1819 = select i1 %1817, float %36, float 0.000000e+00
  %1820 = select i1 %1817, float %37, float 0.000000e+00
  %1821 = select i1 %1817, float %38, float 1.000000e+00
  %1822 = select i1 %1817, float %39, float %55
  %1823 = select i1 %1817, float %40, float %56
  %1824 = add i32 %33, 316
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = lshr i32 %1826, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = fmul fast float %1828, 0x3F50624DE0000000
  %1830 = add i32 %33, 120
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 16
  %1834 = and i32 %1833, 255
  %1835 = lshr i32 %1832, 24
  %1836 = add i32 %33, 324
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1838, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = add i32 %33, 64
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = lshr i32 %1845, 22
  %1847 = shl nuw nsw i32 %1846, 5
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = shl i32 %1845, 4
  %1850 = and i32 %1849, 32752
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = lshr i32 %1845, 7
  %1853 = and i32 %1852, 32752
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1857 = fmul fast float %1856, 1.000000e+03
  %1858 = fmul fast float %297, %1857
  %1859 = call float @dx.op.unary.f32(i32 22, float %1858)  ; Frc(value)
  %1860 = fadd fast float %1859, %287
  %1861 = fmul fast float %298, %1857
  %1862 = call float @dx.op.unary.f32(i32 22, float %1861)  ; Frc(value)
  %1863 = fadd fast float %1862, %289
  %1864 = fmul fast float %1829, %1857
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = fmul fast float %1865, 0x401921FB60000000
  %1867 = fadd fast float %1866, %1848
  %1868 = call float @dx.op.unary.f32(i32 13, float %1867)  ; Sin(value)
  %1869 = call float @dx.op.unary.f32(i32 12, float %1867)  ; Cos(value)
  %1870 = fsub fast float -0.000000e+00, %1868
  %1871 = fadd fast float %1822, -5.000000e-01
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fmul fast float %1840, %1871
  %1874 = fmul fast float %1842, %1872
  %1875 = fadd fast float %1873, 5.000000e-01
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fmul fast float %1851, %1875
  %1878 = fmul fast float %1854, %1876
  %1879 = fmul fast float %1869, %1877
  %1880 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1878, float %1879)  ; FMad(a,b,c)
  %1881 = fmul fast float %1868, %1877
  %1882 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1878, float %1881)  ; FMad(a,b,c)
  %1883 = fadd fast float %1860, %1880
  %1884 = fadd fast float %1863, %1882
  %1885 = icmp ugt i32 %1834, 1
  %1886 = icmp ugt i32 %1832, 33554431
  %1887 = or i1 %1886, %1885
  br i1 %1887, label %1888, label %1913

; <label>:1888                                    ; preds = %1815
  %1889 = add i32 %33, 260
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = lshr i32 %1891, 16
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = fmul fast float %1856, %1893
  %1895 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1896 = mul nuw nsw i32 %1834, %1835
  %1897 = uitofp i32 %1896 to float
  %1898 = fmul fast float %1895, %1897
  %1899 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1900 = fptoui float %1899 to i32
  %1901 = urem i32 %1900, %1834
  %1902 = udiv i32 %1900, %1835
  %1903 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = uitofp i32 %1901 to float
  %1906 = uitofp i32 %1902 to float
  %1907 = fadd fast float %1903, %1905
  %1908 = fadd fast float %1904, %1906
  %1909 = uitofp i32 %1834 to float
  %1910 = uitofp i32 %1835 to float
  %1911 = fdiv fast float %1907, %1909
  %1912 = fdiv fast float %1908, %1910
  br label %1913

; <label>:1913                                    ; preds = %1888, %1815
  %1914 = phi float [ %1911, %1888 ], [ %1883, %1815 ]
  %1915 = phi float [ %1912, %1888 ], [ %1884, %1815 ]
  %1916 = and i32 %1809, 16777216
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %2027, label %1918

; <label>:1918                                    ; preds = %1913
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.CBufRet.f32 %1919, 2
  %1923 = fadd fast float %1920, %130
  %1924 = fadd fast float %1921, %131
  %1925 = fadd fast float %1922, %132
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1929 = icmp eq i32 %34, 65535
  br i1 %1929, label %2024, label %1930

; <label>:1930                                    ; preds = %1918
  %1931 = lshr i32 %34, 1
  %1932 = shl i32 %1931, 2
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %34, 1
  %1936 = icmp ne i32 %1935, 0
  %1937 = lshr i32 %1934, 16
  %1938 = and i32 %1934, 65535
  %1939 = select i1 %1936, i32 %1937, i32 %1938
  %1940 = icmp eq i32 %1939, 65535
  br i1 %1940, label %2020, label %1941

; <label>:1941                                    ; preds = %1930
  %1942 = mul nuw nsw i32 %1939, 40
  %1943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = add nuw nsw i32 %1942, 12
  %1948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.ResRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.ResRet.f32 %1948, 2
  %1952 = add nuw nsw i32 %1942, 24
  %1953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = extractvalue %dx.types.ResRet.f32 %1953, 1
  %1956 = extractvalue %dx.types.ResRet.f32 %1953, 2
  %1957 = add nuw nsw i32 %1942, 36
  %1958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = fsub fast float %1923, %1944
  %1961 = fsub fast float %1924, %1945
  %1962 = fsub fast float %1925, %1946
  %1963 = fmul fast float %1959, %1960
  %1964 = fmul fast float %1959, %1961
  %1965 = fmul fast float %1959, %1962
  %1966 = call float @dx.op.unary.f32(i32 27, float %1963)  ; Round_ni(value)
  %1967 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1968 = call float @dx.op.unary.f32(i32 27, float %1965)  ; Round_ni(value)
  %1969 = fadd fast float %1966, 5.000000e-01
  %1970 = fadd fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 5.000000e-01
  %1972 = fmul fast float %1969, %1949
  %1973 = fmul fast float %1970, %1950
  %1974 = fmul fast float %1971, %1951
  %1975 = shl i32 %34, 2
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = add i32 %1977, 0
  %1979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1980 = call float @dx.op.unary.f32(i32 22, float %1972)  ; Frc(value)
  %1981 = call float @dx.op.unary.f32(i32 22, float %1973)  ; Frc(value)
  %1982 = call float @dx.op.unary.f32(i32 22, float %1974)  ; Frc(value)
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1979, %dx.types.Handle %30, float %1980, float %1981, float %1982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = fmul fast float %1984, 1.023000e+03
  %1988 = fmul fast float %1985, 1.023000e+03
  %1989 = fmul fast float %1986, 1.023000e+03
  %1990 = fadd fast float %1987, 5.000000e-01
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = fadd fast float %1989, 5.000000e-01
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = fsub fast float %1963, %1966
  %1997 = fsub fast float %1964, %1967
  %1998 = fsub fast float %1965, %1968
  %1999 = fmul fast float %1996, 7.500000e-01
  %2000 = fmul fast float %1997, 7.500000e-01
  %2001 = fmul fast float %1998, 7.500000e-01
  %2002 = fadd fast float %1966, 1.250000e-01
  %2003 = fadd fast float %2002, %1999
  %2004 = fadd fast float %2003, %1993
  %2005 = fadd fast float %1967, 1.250000e-01
  %2006 = fadd fast float %2005, %2000
  %2007 = fadd fast float %2006, %1994
  %2008 = fadd fast float %1968, 1.250000e-01
  %2009 = fadd fast float %2008, %2001
  %2010 = fadd fast float %2009, %1995
  %2011 = fmul fast float %2004, %1954
  %2012 = fmul fast float %2007, %1955
  %2013 = fmul fast float %2010, %1956
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = add i32 %2015, 0
  %2017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2017, %dx.types.Handle %28, float %2011, float %2012, float %2013, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  br label %2020

; <label>:2020                                    ; preds = %1941, %1930
  %2021 = phi float [ %2019, %1941 ], [ -1.000000e+00, %1930 ]
  %2022 = fadd fast float %2021, %1928
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  br label %2024

; <label>:2024                                    ; preds = %2020, %1918
  %2025 = phi float [ %2023, %2020 ], [ %1928, %1918 ]
  %2026 = fmul fast float %2025, %396
  br label %2027

; <label>:2027                                    ; preds = %2024, %1913
  %2028 = phi float [ %2026, %2024 ], [ %396, %1913 ]
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 256
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2079, label %2033

; <label>:2033                                    ; preds = %2027
  %2034 = add i32 %33, 432
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %2036, 0
  %2038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2038, %dx.types.Handle %64, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = add i32 %33, 132
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = shl i32 %2043, 4
  %2045 = and i32 %2044, 32752
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = lshr i32 %2043, 7
  %2048 = and i32 %2047, 32752
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = fsub fast float 1.000000e+00, %2028
  %2051 = call float @dx.op.binary.f32(i32 35, float %2050, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2052 = bitcast float %2028 to i32
  %2053 = sitofp i32 %2052 to float
  %2054 = fadd fast float %2053, 0xC1CFBF8940000000
  %2055 = fmul fast float %2049, %2054
  %2056 = fadd fast float %2055, 0x41CFBF8940000000
  %2057 = fptosi float %2056 to i32
  %2058 = bitcast i32 %2057 to float
  %2059 = bitcast float %2051 to i32
  %2060 = sitofp i32 %2059 to float
  %2061 = fadd fast float %2060, 0xC1CFBF8940000000
  %2062 = fmul fast float %2061, %2049
  %2063 = fadd fast float %2062, 0x41CFBF8940000000
  %2064 = fptosi float %2063 to i32
  %2065 = bitcast i32 %2064 to float
  %2066 = fmul fast float %2058, %2046
  %2067 = fmul fast float %2065, %2046
  %2068 = fsub fast float %2051, %2066
  %2069 = fadd fast float %2067, %2051
  %2070 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2071 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2072 = fsub fast float %2040, %2070
  %2073 = fsub fast float %2071, %2070
  %2074 = bitcast float %2073 to i32
  %2075 = sub nsw i32 2129859010, %2074
  %2076 = bitcast i32 %2075 to float
  %2077 = fmul fast float %2076, %2072
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  br label %2079

; <label>:2079                                    ; preds = %2033, %2027
  %2080 = phi float [ %2078, %2033 ], [ %2028, %2027 ]
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 128
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2101, label %2085

; <label>:2085                                    ; preds = %2079
  %2086 = add i32 %33, 416
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %2088, 0
  %2090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2090, %dx.types.Handle %64, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 524288
  %2096 = icmp ne i32 %2095, 0
  %2097 = fcmp fast ogt float %2092, 0x3FE0101020000000
  %2098 = select i1 %2097, float 1.000000e+00, float 0.000000e+00
  %2099 = select i1 %2096, float %2098, float %2092
  %2100 = fmul fast float %2099, %2080
  br label %2101

; <label>:2101                                    ; preds = %2085, %2079
  %2102 = phi float [ %2100, %2085 ], [ %2080, %2079 ]
  %2103 = fcmp fast ult float %2102, 0x3F70101020000000
  br i1 %2103, label %2685, label %2104

; <label>:2104                                    ; preds = %2101
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 16
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2307, label %2109

; <label>:2109                                    ; preds = %2104
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %33, 368
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = add i32 %2114, 0
  %2116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2116, %dx.types.Handle %63, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.ResRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.ResRet.f32 %2117, 2
  %2121 = extractvalue %dx.types.ResRet.f32 %2117, 3
  %2122 = and i32 %2111, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = lshr i32 %2111, 8
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2121, %2123
  %2128 = fadd fast float %2127, %2126
  %2129 = fmul fast float %2128, 0x3F70101000000000
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 512
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2142, label %2134

; <label>:2134                                    ; preds = %2109
  %2135 = add i32 %33, 448
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2139, %dx.types.Handle %64, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  br label %2142

; <label>:2142                                    ; preds = %2134, %2109
  %2143 = phi float [ %2141, %2134 ], [ 1.000000e+00, %2109 ]
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 33554432
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2254, label %2148

; <label>:2148                                    ; preds = %2142
  %2149 = add i32 %33, 256
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = and i32 %2151, 65535
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = lshr i32 %2151, 16
  %2155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2154)  ; LegacyF16ToF32(value)
  %2156 = add i32 %33, 260
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 65535
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = lshr i32 %2162, 24
  %2164 = uitofp i32 %2163 to float
  %2165 = fmul fast float %2164, 0x3F70101020000000
  %2166 = and i32 %2162, 255
  %2167 = uitofp i32 %2166 to float
  %2168 = fmul fast float %2167, 0x3F70101020000000
  %2169 = lshr i32 %2162, 8
  %2170 = and i32 %2169, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = fmul fast float %2171, 0x3F70101020000000
  %2173 = lshr i32 %2162, 16
  %2174 = and i32 %2173, 255
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2175, 0x3F70101020000000
  %2177 = add i32 %33, 252
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = lshr i32 %2179, 24
  %2181 = uitofp i32 %2180 to float
  %2182 = fmul fast float %2181, 0x3F70101020000000
  %2183 = and i32 %2179, 255
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2184, 0x3F70101020000000
  %2186 = lshr i32 %2179, 8
  %2187 = and i32 %2186, 255
  %2188 = uitofp i32 %2187 to float
  %2189 = fmul fast float %2188, 0x3F70101020000000
  %2190 = lshr i32 %2179, 16
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F70101020000000
  %2194 = bitcast float %2118 to i32
  %2195 = ashr i32 %2194, 1
  %2196 = sub nsw i32 1597463174, %2195
  %2197 = bitcast i32 %2196 to float
  %2198 = fmul fast float %2118, 5.000000e-01
  %2199 = fmul fast float %2197, %2197
  %2200 = fmul fast float %2199, %2198
  %2201 = fsub fast float 1.500000e+00, %2200
  %2202 = fmul fast float %2197, %2118
  %2203 = fmul fast float %2202, %2201
  %2204 = bitcast float %2119 to i32
  %2205 = ashr i32 %2204, 1
  %2206 = sub nsw i32 1597463174, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2119, 5.000000e-01
  %2209 = fmul fast float %2207, %2207
  %2210 = fmul fast float %2209, %2208
  %2211 = fsub fast float 1.500000e+00, %2210
  %2212 = fmul fast float %2207, %2119
  %2213 = fmul fast float %2212, %2211
  %2214 = bitcast float %2120 to i32
  %2215 = ashr i32 %2214, 1
  %2216 = sub nsw i32 1597463174, %2215
  %2217 = bitcast i32 %2216 to float
  %2218 = fmul fast float %2120, 5.000000e-01
  %2219 = fmul fast float %2217, %2217
  %2220 = fmul fast float %2219, %2218
  %2221 = fsub fast float 1.500000e+00, %2220
  %2222 = fmul fast float %2217, %2120
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float %2203, %2185
  %2225 = fsub fast float %2213, %2189
  %2226 = fsub fast float %2223, %2193
  %2227 = fmul fast float %2224, %2153
  %2228 = fmul fast float %2225, %2155
  %2229 = fmul fast float %2226, %2160
  %2230 = fadd fast float %2227, %2168
  %2231 = fadd fast float %2228, %2172
  %2232 = fadd fast float %2229, %2176
  %2233 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2234 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2235 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2236 = fmul fast float %2233, %2233
  %2237 = fmul fast float %2234, %2234
  %2238 = fmul fast float %2235, %2235
  %2239 = fsub fast float %2236, %2118
  %2240 = fsub fast float %2237, %2119
  %2241 = fsub fast float %2238, %2120
  %2242 = fmul fast float %2239, %2143
  %2243 = fmul fast float %2240, %2143
  %2244 = fmul fast float %2241, %2143
  %2245 = fadd fast float %2242, %2118
  %2246 = fadd fast float %2243, %2119
  %2247 = fadd fast float %2244, %2120
  %2248 = fadd fast float %2165, %2129
  %2249 = fsub fast float %2248, %2182
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2251 = fsub fast float %2250, %2129
  %2252 = fmul fast float %2251, %2143
  %2253 = fadd fast float %2252, %2129
  br label %2307

; <label>:2254                                    ; preds = %2142
  %2255 = and i32 %2145, 134217728
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2291, label %2257

; <label>:2257                                    ; preds = %2254
  %2258 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2259 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2260 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2261 = fadd fast float %2258, -5.000000e-01
  %2262 = fadd fast float %2259, -5.000000e-01
  %2263 = fadd fast float %2260, -5.000000e-01
  %2264 = fmul fast float %2261, %2143
  %2265 = fmul fast float %2262, %2143
  %2266 = fmul fast float %2263, %2143
  %2267 = fadd fast float %2264, 5.000000e-01
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = fadd fast float %2266, 5.000000e-01
  %2270 = call float @dx.op.unary.f32(i32 24, float %2118)  ; Sqrt(value)
  %2271 = call float @dx.op.unary.f32(i32 24, float %2119)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %2120)  ; Sqrt(value)
  %2273 = fmul fast float %2267, 2.000000e+00
  %2274 = fsub fast float 1.000000e+00, %2273
  %2275 = fmul fast float %2274, %2270
  %2276 = fadd fast float %2275, %2273
  %2277 = fmul fast float %2276, %2270
  %2278 = fmul fast float %2268, 2.000000e+00
  %2279 = fsub fast float 1.000000e+00, %2278
  %2280 = fmul fast float %2279, %2271
  %2281 = fadd fast float %2280, %2278
  %2282 = fmul fast float %2281, %2271
  %2283 = fmul fast float %2269, 2.000000e+00
  %2284 = fsub fast float 1.000000e+00, %2283
  %2285 = fmul fast float %2284, %2272
  %2286 = fadd fast float %2285, %2283
  %2287 = fmul fast float %2286, %2272
  %2288 = fmul fast float %2277, %2277
  %2289 = fmul fast float %2282, %2282
  %2290 = fmul fast float %2287, %2287
  br label %2307

; <label>:2291                                    ; preds = %2254
  %2292 = fmul fast float %274, %274
  %2293 = fmul fast float %278, %278
  %2294 = fmul fast float %282, %282
  %2295 = fadd fast float %2292, -1.000000e+00
  %2296 = fadd fast float %2293, -1.000000e+00
  %2297 = fadd fast float %2294, -1.000000e+00
  %2298 = fmul fast float %2143, %2295
  %2299 = fmul fast float %2143, %2296
  %2300 = fmul fast float %2143, %2297
  %2301 = fadd fast float %2298, 1.000000e+00
  %2302 = fadd fast float %2299, 1.000000e+00
  %2303 = fadd fast float %2300, 1.000000e+00
  %2304 = fmul fast float %2301, %2118
  %2305 = fmul fast float %2302, %2119
  %2306 = fmul fast float %2303, %2120
  br label %2307

; <label>:2307                                    ; preds = %2291, %2257, %2148, %2104
  %2308 = phi float [ %2253, %2148 ], [ %2129, %2257 ], [ %2129, %2291 ], [ 0x3FA23C0BE0000000, %2104 ]
  %2309 = phi float [ %2245, %2148 ], [ %2288, %2257 ], [ %2304, %2291 ], [ 1.000000e+00, %2104 ]
  %2310 = phi float [ %2246, %2148 ], [ %2289, %2257 ], [ %2305, %2291 ], [ 1.000000e+00, %2104 ]
  %2311 = phi float [ %2247, %2148 ], [ %2290, %2257 ], [ %2306, %2291 ], [ 1.000000e+00, %2104 ]
  %2312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.i32 %2312, 1
  %2314 = and i32 %2313, 1
  %2315 = icmp ne i32 %2314, 0
  %2316 = add i32 %33, 356
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 32
  %2320 = icmp ne i32 %2319, 0
  %2321 = and i1 %2315, %2320
  %2322 = select i1 %2321, float 1.000000e+00, float %2309
  %2323 = select i1 %2321, float 0x3FD3333340000000, float %2310
  %2324 = select i1 %2321, float 0x3FD3333340000000, float %2311
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = and i32 %2326, 32
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %2401, label %2329

; <label>:2329                                    ; preds = %2307
  %2330 = add i32 %33, 124
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %33, 384
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %2335, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2337, %dx.types.Handle %63, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  %2343 = and i32 %2332, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = lshr i32 %2332, 8
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = lshr i32 %2332, 16
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101000000000
  %2352 = fmul fast float %2339, %2344
  %2353 = fadd fast float %2352, %2347
  %2354 = fmul fast float %2353, 0x3F70101000000000
  %2355 = fadd fast float %2340, -5.000000e-01
  %2356 = fadd fast float %2342, -5.000000e-01
  %2357 = fmul fast float %2355, %2351
  %2358 = fmul fast float %2356, %2351
  %2359 = fadd fast float %2357, 5.000000e-01
  %2360 = fadd fast float %2358, 5.000000e-01
  %2361 = fmul fast float %2359, 2.000000e+00
  %2362 = fadd fast float %2361, -1.000000e+00
  %2363 = fmul fast float %2360, 2.000000e+00
  %2364 = fadd fast float %2363, -1.000000e+00
  %2365 = fadd fast float %2362, %2364
  %2366 = fmul fast float %2365, 5.000000e-01
  %2367 = fsub fast float %2362, %2364
  %2368 = fmul fast float %2367, 5.000000e-01
  %2369 = call float @dx.op.unary.f32(i32 6, float %2366)  ; FAbs(value)
  %2370 = fsub fast float 1.000000e+00, %2369
  %2371 = call float @dx.op.unary.f32(i32 6, float %2368)  ; FAbs(value)
  %2372 = fsub fast float %2370, %2371
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2368, float %2372, float %2366, float %2368, float %2372)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = call float @dx.op.unary.f32(i32 25, float %2373)  ; Rsqrt(value)
  %2375 = fmul fast float %2366, %2374
  %2376 = fmul fast float %2368, %2374
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 67108864
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2397, label %2381

; <label>:2381                                    ; preds = %2329
  %2382 = add i32 %33, 312
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 65535
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 65535
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = lshr i32 %2384, 16
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = fsub fast float %2354, %2392
  %2394 = fmul fast float %2393, %2386
  %2395 = fadd fast float %2394, %2390
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  br label %2397

; <label>:2397                                    ; preds = %2381, %2329
  %2398 = phi float [ %2396, %2381 ], [ %2354, %2329 ]
  %2399 = call float @dx.op.dot2.f32(i32 54, float %2375, float %2376, float %1818, float %1819)  ; Dot2(ax,ay,bx,by)
  %2400 = call float @dx.op.dot2.f32(i32 54, float %2375, float %2376, float %1820, float %1821)  ; Dot2(ax,ay,bx,by)
  br label %2401

; <label>:2401                                    ; preds = %2397, %2307
  %2402 = phi float [ %2398, %2397 ], [ 0x3FD6666660000000, %2307 ]
  %2403 = phi float [ %2399, %2397 ], [ 0.000000e+00, %2307 ]
  %2404 = phi float [ %2400, %2397 ], [ 0.000000e+00, %2307 ]
  %2405 = phi float [ %2341, %2397 ], [ 1.000000e+00, %2307 ]
  %2406 = add i32 %33, 192
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = lshr i32 %2408, 22
  %2410 = shl nuw nsw i32 %2409, 5
  %2411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2410)  ; LegacyF16ToF32(value)
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 64
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2449, label %2416

; <label>:2416                                    ; preds = %2401
  %2417 = add i32 %33, 400
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 131072
  %2425 = icmp eq i32 %2424, 0
  %2426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2421, %dx.types.Handle %63, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2427 = extractvalue %dx.types.ResRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.ResRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.ResRet.f32 %2426, 2
  %2430 = fmul fast float %2427, %262
  %2431 = fmul fast float %2428, %265
  %2432 = fmul fast float %2429, %268
  br i1 %2425, label %2439, label %2433

; <label>:2433                                    ; preds = %2416
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = fmul fast float %2435, %2430
  %2437 = fmul fast float %2435, %2431
  %2438 = fmul fast float %2435, %2432
  br label %2439

; <label>:2439                                    ; preds = %2433, %2416
  %2440 = phi float [ %2436, %2433 ], [ %2430, %2416 ]
  %2441 = phi float [ %2437, %2433 ], [ %2431, %2416 ]
  %2442 = phi float [ %2438, %2433 ], [ %2432, %2416 ]
  %2443 = fmul fast float %2440, %2411
  %2444 = select i1 %172, float %2443, float %2440
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2444, float %2441, float %2442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = select i1 %172, float 0.000000e+00, float %2440
  %2447 = select i1 %172, float %2445, float %2441
  %2448 = select i1 %172, float 0.000000e+00, float %2442
  br label %2449

; <label>:2449                                    ; preds = %2439, %2401
  %2450 = phi float [ %2446, %2439 ], [ 0.000000e+00, %2401 ]
  %2451 = phi float [ %2447, %2439 ], [ 0.000000e+00, %2401 ]
  %2452 = phi float [ %2448, %2439 ], [ 0.000000e+00, %2401 ]
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 26624
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2480, label %2457

; <label>:2457                                    ; preds = %2449
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 16384
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2480, label %2462

; <label>:2462                                    ; preds = %2457
  %2463 = and i32 %2459, 1048576
  %2464 = icmp ne i32 %2463, 0
  %2465 = add i32 %33, 464
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = add i32 %2467, 0
  %2469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2469, %dx.types.Handle %64, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  %2472 = add i32 %33, 128
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = lshr i32 %2474, 24
  %2476 = uitofp i32 %2475 to float
  %2477 = fmul fast float %2471, 0x3F70101020000000
  %2478 = select i1 %2464, float 0x3F70101020000000, float %2477
  %2479 = fmul fast float %2478, %2476
  br label %2480

; <label>:2480                                    ; preds = %2462, %2457, %2449
  %2481 = phi float [ %2479, %2462 ], [ 0.000000e+00, %2457 ], [ 0.000000e+00, %2449 ]
  %2482 = add i32 %33, 128
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = lshr i32 %2484, 8
  %2488 = and i32 %2487, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2322, float %2323, float %2324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = fmul fast float %2489, %2490
  %2492 = fadd fast float %2491, %2486
  %2493 = fmul fast float %2492, 0x3F70101020000000
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  br i1 %1806, label %2495, label %2503

; <label>:2495                                    ; preds = %2480
  %2496 = fsub fast float 1.000000e+00, %2102
  %2497 = fmul fast float %2496, %1794
  %2498 = fmul fast float %2496, %1795
  %2499 = fmul fast float %2496, %1796
  %2500 = fmul fast float %2496, %1797
  %2501 = fmul fast float %2496, %1798
  %2502 = fmul fast float %2496, %1799
  br label %2503

; <label>:2503                                    ; preds = %2495, %2480
  %2504 = phi float [ %2497, %2495 ], [ %1794, %2480 ]
  %2505 = phi float [ %2498, %2495 ], [ %1795, %2480 ]
  %2506 = phi float [ %2499, %2495 ], [ %1796, %2480 ]
  %2507 = phi float [ %2500, %2495 ], [ %1797, %2480 ]
  %2508 = phi float [ %2501, %2495 ], [ %1798, %2480 ]
  %2509 = phi float [ %2502, %2495 ], [ %1799, %2480 ]
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 3
  %2513 = icmp eq i32 %2512, 3
  br i1 %2513, label %2592, label %2514

; <label>:2514                                    ; preds = %2503
  %2515 = and i32 %2511, 16
  %2516 = icmp ne i32 %2515, 0
  %2517 = select i1 %2516, float %2102, float 0.000000e+00
  %2518 = icmp eq i32 %2512, 0
  br i1 %2518, label %2519, label %2547

; <label>:2519                                    ; preds = %2514
  %2520 = and i32 %2511, 64
  %2521 = icmp ne i32 %2520, 0
  %2522 = select i1 %2521, float %2102, float 0.000000e+00
  %2523 = fsub fast float %2322, %2504
  %2524 = fsub fast float %2323, %2505
  %2525 = fsub fast float %2324, %2506
  %2526 = fmul fast float %2517, %2523
  %2527 = fmul fast float %2517, %2524
  %2528 = fmul fast float %2517, %2525
  %2529 = fadd fast float %2526, %2504
  %2530 = fadd fast float %2527, %2505
  %2531 = fadd fast float %2528, %2506
  %2532 = fsub fast float %2308, %1800
  %2533 = fmul fast float %2517, %2532
  %2534 = fadd fast float %2533, %1800
  %2535 = fsub fast float %2450, %2507
  %2536 = fsub fast float %2451, %2508
  %2537 = fsub fast float %2452, %2509
  %2538 = fmul fast float %2522, %2535
  %2539 = fmul fast float %2522, %2536
  %2540 = fmul fast float %2522, %2537
  %2541 = fadd fast float %2538, %2507
  %2542 = fadd fast float %2539, %2508
  %2543 = fadd fast float %2540, %2509
  %2544 = fsub fast float %2494, %1804
  %2545 = fmul fast float %2517, %2544
  %2546 = fadd fast float %2545, %1804
  br label %2592

; <label>:2547                                    ; preds = %2514
  %2548 = icmp eq i32 %2512, 1
  br i1 %2548, label %2549, label %2562

; <label>:2549                                    ; preds = %2547
  %2550 = fadd fast float %2322, -1.000000e+00
  %2551 = fadd fast float %2323, -1.000000e+00
  %2552 = fadd fast float %2324, -1.000000e+00
  %2553 = fmul fast float %2517, %2550
  %2554 = fmul fast float %2517, %2551
  %2555 = fmul fast float %2517, %2552
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fmul fast float %2556, %2504
  %2560 = fmul fast float %2557, %2505
  %2561 = fmul fast float %2558, %2506
  br label %2592

; <label>:2562                                    ; preds = %2547
  %2563 = icmp eq i32 %2512, 2
  br i1 %2563, label %2564, label %2592

; <label>:2564                                    ; preds = %2562
  %2565 = call float @dx.op.unary.f32(i32 24, float %2322)  ; Sqrt(value)
  %2566 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2568 = fadd fast float %2565, -5.000000e-01
  %2569 = fadd fast float %2566, -5.000000e-01
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fmul fast float %2568, %2517
  %2572 = fmul fast float %2569, %2517
  %2573 = fmul fast float %2570, %2517
  %2574 = fadd fast float %2571, 5.000000e-01
  %2575 = fadd fast float %2572, 5.000000e-01
  %2576 = fadd fast float %2573, 5.000000e-01
  %2577 = fmul fast float %2574, 2.000000e+00
  %2578 = fsub fast float 1.000000e+00, %2577
  %2579 = fmul fast float %2578, %2504
  %2580 = fadd fast float %2579, %2577
  %2581 = fmul fast float %2580, %2504
  %2582 = fmul fast float %2575, 2.000000e+00
  %2583 = fsub fast float 1.000000e+00, %2582
  %2584 = fmul fast float %2583, %2505
  %2585 = fadd fast float %2584, %2582
  %2586 = fmul fast float %2585, %2505
  %2587 = fmul fast float %2576, 2.000000e+00
  %2588 = fsub fast float 1.000000e+00, %2587
  %2589 = fmul fast float %2588, %2506
  %2590 = fadd fast float %2589, %2587
  %2591 = fmul fast float %2590, %2506
  br label %2592

; <label>:2592                                    ; preds = %2564, %2562, %2549, %2519, %2503
  %2593 = phi float [ %2504, %2503 ], [ %2581, %2564 ], [ %2504, %2562 ], [ %2559, %2549 ], [ %2529, %2519 ]
  %2594 = phi float [ %2505, %2503 ], [ %2586, %2564 ], [ %2505, %2562 ], [ %2560, %2549 ], [ %2530, %2519 ]
  %2595 = phi float [ %2506, %2503 ], [ %2591, %2564 ], [ %2506, %2562 ], [ %2561, %2549 ], [ %2531, %2519 ]
  %2596 = phi float [ %2507, %2503 ], [ %2507, %2564 ], [ %2507, %2562 ], [ %2507, %2549 ], [ %2541, %2519 ]
  %2597 = phi float [ %2508, %2503 ], [ %2508, %2564 ], [ %2508, %2562 ], [ %2508, %2549 ], [ %2542, %2519 ]
  %2598 = phi float [ %2509, %2503 ], [ %2509, %2564 ], [ %2509, %2562 ], [ %2509, %2549 ], [ %2543, %2519 ]
  %2599 = phi float [ %1800, %2503 ], [ %1800, %2564 ], [ %1800, %2562 ], [ %1800, %2549 ], [ %2534, %2519 ]
  %2600 = phi float [ %1804, %2503 ], [ %1804, %2564 ], [ %1804, %2562 ], [ %1804, %2549 ], [ %2546, %2519 ]
  %2601 = and i32 %2511, 12
  %2602 = icmp eq i32 %2601, 12
  br i1 %2602, label %2685, label %2603

; <label>:2603                                    ; preds = %2592
  %2604 = and i32 %2511, 2097184
  %2605 = icmp eq i32 %2604, 2097184
  %2606 = select i1 %2605, float %2102, float 0.000000e+00
  %2607 = and i32 %2511, 4194336
  %2608 = icmp eq i32 %2607, 4194336
  %2609 = select i1 %2608, float %2102, float 0.000000e+00
  %2610 = and i32 %2511, 8388640
  %2611 = icmp eq i32 %2610, 8388640
  %2612 = select i1 %2611, float %2102, float 0.000000e+00
  %2613 = and i32 %2511, 16384
  %2614 = icmp ne i32 %2613, 0
  %2615 = select i1 %2614, float %2102, float 0.000000e+00
  %2616 = icmp eq i32 %2601, 0
  br i1 %2616, label %2617, label %2633

; <label>:2617                                    ; preds = %2603
  %2618 = fsub fast float %2403, %1792
  %2619 = fsub fast float %2404, %1793
  %2620 = fmul fast float %2606, %2618
  %2621 = fmul fast float %2606, %2619
  %2622 = fadd fast float %2620, %1792
  %2623 = fadd fast float %2621, %1793
  %2624 = fsub fast float %2405, %1802
  %2625 = fmul fast float %2609, %2624
  %2626 = fadd fast float %2625, %1802
  %2627 = fsub fast float %2402, %1801
  %2628 = fmul fast float %2612, %2627
  %2629 = fadd fast float %2628, %1801
  %2630 = fsub fast float %2481, %1803
  %2631 = fmul fast float %2615, %2630
  %2632 = fadd fast float %2631, %1803
  br label %2685

; <label>:2633                                    ; preds = %2603
  %2634 = icmp eq i32 %2601, 4
  br i1 %2634, label %2635, label %2669

; <label>:2635                                    ; preds = %2633
  %2636 = fmul fast float %2606, %2403
  %2637 = fmul fast float %2606, %2404
  %2638 = fadd fast float %2636, %1792
  %2639 = fadd fast float %2637, %1793
  %2640 = call float @dx.op.binary.f32(i32 36, float %1802, float %2405)  ; FMin(a,b)
  %2641 = fsub fast float %2640, %1802
  %2642 = fmul fast float %2641, %2609
  %2643 = fadd fast float %2642, %1802
  %2644 = fadd fast float %2402, %1801
  %2645 = fmul fast float %2644, 0x3FF337FAE0000000
  %2646 = fmul fast float %1801, %1801
  %2647 = fmul fast float %2402, %2402
  %2648 = fadd fast float %2647, %2646
  %2649 = fmul fast float %2648, 0x3FE5152B00000000
  %2650 = fmul fast float %1801, 0xBFCC1F85E0000000
  %2651 = fmul fast float %2650, %2402
  %2652 = fadd fast float %2651, 0xBFE1363700000000
  %2653 = fadd fast float %2652, %2645
  %2654 = fsub fast float %2653, %2649
  %2655 = fmul fast float %2644, 0x3FBA6F0D00000000
  %2656 = fmul fast float %2648, 0x3FD0432880000000
  %2657 = fmul fast float %1801, 0xBFEF110800000000
  %2658 = fmul fast float %2657, %2402
  %2659 = fadd fast float %2658, 1.000000e+00
  %2660 = fsub fast float %2659, %2655
  %2661 = fadd fast float %2660, %2656
  %2662 = fdiv fast float %2654, %2661
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2664 = fsub fast float %2663, %1801
  %2665 = fmul fast float %2664, %2612
  %2666 = fadd fast float %2665, %1801
  %2667 = fmul fast float %2615, %2481
  %2668 = fadd fast float %2667, %1803
  br label %2685

; <label>:2669                                    ; preds = %2633
  %2670 = icmp eq i32 %2601, 8
  br i1 %2670, label %2671, label %2685

; <label>:2671                                    ; preds = %2669
  %2672 = fmul fast float %2606, %2403
  %2673 = fmul fast float %2606, %2404
  %2674 = fadd fast float %2672, %1792
  %2675 = fadd fast float %2673, %1793
  %2676 = call float @dx.op.binary.f32(i32 36, float %1802, float %2405)  ; FMin(a,b)
  %2677 = fsub fast float %2676, %1802
  %2678 = fmul fast float %2677, %2609
  %2679 = fadd fast float %2678, %1802
  %2680 = fsub fast float %2402, %1801
  %2681 = fmul fast float %2612, %2680
  %2682 = fadd fast float %2681, %1801
  %2683 = fmul fast float %2615, %2481
  %2684 = fadd fast float %2683, %1803
  br label %2685

; <label>:2685                                    ; preds = %2671, %2669, %2635, %2617, %2592, %2101, %1805, %1791
  %2686 = phi float [ %1792, %2592 ], [ %1792, %2101 ], [ %1792, %1791 ], [ %2674, %2671 ], [ %1792, %2669 ], [ %2638, %2635 ], [ %2622, %2617 ], [ %1792, %1805 ]
  %2687 = phi float [ %1793, %2592 ], [ %1793, %2101 ], [ %1793, %1791 ], [ %2675, %2671 ], [ %1793, %2669 ], [ %2639, %2635 ], [ %2623, %2617 ], [ %1793, %1805 ]
  %2688 = phi float [ %2593, %2592 ], [ %1794, %2101 ], [ %1794, %1791 ], [ %2593, %2671 ], [ %2593, %2669 ], [ %2593, %2635 ], [ %2593, %2617 ], [ %1794, %1805 ]
  %2689 = phi float [ %2594, %2592 ], [ %1795, %2101 ], [ %1795, %1791 ], [ %2594, %2671 ], [ %2594, %2669 ], [ %2594, %2635 ], [ %2594, %2617 ], [ %1795, %1805 ]
  %2690 = phi float [ %2595, %2592 ], [ %1796, %2101 ], [ %1796, %1791 ], [ %2595, %2671 ], [ %2595, %2669 ], [ %2595, %2635 ], [ %2595, %2617 ], [ %1796, %1805 ]
  %2691 = phi float [ %2596, %2592 ], [ %1797, %2101 ], [ %1797, %1791 ], [ %2596, %2671 ], [ %2596, %2669 ], [ %2596, %2635 ], [ %2596, %2617 ], [ %1797, %1805 ]
  %2692 = phi float [ %2597, %2592 ], [ %1798, %2101 ], [ %1798, %1791 ], [ %2597, %2671 ], [ %2597, %2669 ], [ %2597, %2635 ], [ %2597, %2617 ], [ %1798, %1805 ]
  %2693 = phi float [ %2598, %2592 ], [ %1799, %2101 ], [ %1799, %1791 ], [ %2598, %2671 ], [ %2598, %2669 ], [ %2598, %2635 ], [ %2598, %2617 ], [ %1799, %1805 ]
  %2694 = phi float [ %2599, %2592 ], [ %1800, %2101 ], [ %1800, %1791 ], [ %2599, %2671 ], [ %2599, %2669 ], [ %2599, %2635 ], [ %2599, %2617 ], [ %1800, %1805 ]
  %2695 = phi float [ %1801, %2592 ], [ %1801, %2101 ], [ %1801, %1791 ], [ %2682, %2671 ], [ %1801, %2669 ], [ %2666, %2635 ], [ %2629, %2617 ], [ %1801, %1805 ]
  %2696 = phi float [ %1802, %2592 ], [ %1802, %2101 ], [ %1802, %1791 ], [ %2679, %2671 ], [ %1802, %2669 ], [ %2643, %2635 ], [ %2626, %2617 ], [ %1802, %1805 ]
  %2697 = phi float [ %1803, %2592 ], [ %1803, %2101 ], [ %1803, %1791 ], [ %2684, %2671 ], [ %1803, %2669 ], [ %2668, %2635 ], [ %2632, %2617 ], [ %1803, %1805 ]
  %2698 = phi float [ %2600, %2592 ], [ %1804, %2101 ], [ %1804, %1791 ], [ %2600, %2671 ], [ %2600, %2669 ], [ %2600, %2635 ], [ %2600, %2617 ], [ %1804, %1805 ]
  br i1 %349, label %3579, label %2699

; <label>:2699                                    ; preds = %2685
  %2700 = icmp ult i32 %400, 4
  %2701 = add i32 %33, 72
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = add i32 %33, 76
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = or i32 %2706, %2703
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %3579, label %2709

; <label>:2709                                    ; preds = %2699
  %2710 = and i32 %2703, 262144
  %2711 = icmp ne i32 %2710, 0
  %2712 = select i1 %2711, float %35, float 1.000000e+00
  %2713 = select i1 %2711, float %36, float 0.000000e+00
  %2714 = select i1 %2711, float %37, float 0.000000e+00
  %2715 = select i1 %2711, float %38, float 1.000000e+00
  %2716 = select i1 %2711, float %39, float %55
  %2717 = select i1 %2711, float %40, float %56
  %2718 = add i32 %33, 332
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = lshr i32 %2720, 16
  %2722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2721)  ; LegacyF16ToF32(value)
  %2723 = fmul fast float %2722, 0x3F50624DE0000000
  %2724 = add i32 %33, 136
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 16
  %2728 = and i32 %2727, 255
  %2729 = lshr i32 %2726, 24
  %2730 = add i32 %33, 340
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, 65535
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = lshr i32 %2732, 16
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = add i32 %33, 80
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = lshr i32 %2739, 22
  %2741 = shl nuw nsw i32 %2740, 5
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = shl i32 %2739, 4
  %2744 = and i32 %2743, 32752
  %2745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2744)  ; LegacyF16ToF32(value)
  %2746 = lshr i32 %2739, 7
  %2747 = and i32 %2746, 32752
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 3
  %2751 = fmul fast float %2750, 1.000000e+03
  %2752 = fmul fast float %339, %2751
  %2753 = call float @dx.op.unary.f32(i32 22, float %2752)  ; Frc(value)
  %2754 = fadd fast float %2753, %329
  %2755 = fmul fast float %340, %2751
  %2756 = call float @dx.op.unary.f32(i32 22, float %2755)  ; Frc(value)
  %2757 = fadd fast float %2756, %331
  %2758 = fmul fast float %2723, %2751
  %2759 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2760 = fmul fast float %2759, 0x401921FB60000000
  %2761 = fadd fast float %2760, %2742
  %2762 = call float @dx.op.unary.f32(i32 13, float %2761)  ; Sin(value)
  %2763 = call float @dx.op.unary.f32(i32 12, float %2761)  ; Cos(value)
  %2764 = fsub fast float -0.000000e+00, %2762
  %2765 = fadd fast float %2716, -5.000000e-01
  %2766 = fadd fast float %2717, -5.000000e-01
  %2767 = fmul fast float %2734, %2765
  %2768 = fmul fast float %2736, %2766
  %2769 = fadd fast float %2767, 5.000000e-01
  %2770 = fadd fast float %2768, 5.000000e-01
  %2771 = fmul fast float %2745, %2769
  %2772 = fmul fast float %2748, %2770
  %2773 = fmul fast float %2763, %2771
  %2774 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2772, float %2773)  ; FMad(a,b,c)
  %2775 = fmul fast float %2762, %2771
  %2776 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2772, float %2775)  ; FMad(a,b,c)
  %2777 = fadd fast float %2754, %2774
  %2778 = fadd fast float %2757, %2776
  %2779 = icmp ugt i32 %2728, 1
  %2780 = icmp ugt i32 %2726, 33554431
  %2781 = or i1 %2780, %2779
  br i1 %2781, label %2782, label %2807

; <label>:2782                                    ; preds = %2709
  %2783 = add i32 %33, 276
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = lshr i32 %2785, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = fmul fast float %2750, %2787
  %2789 = call float @dx.op.unary.f32(i32 22, float %2788)  ; Frc(value)
  %2790 = mul nuw nsw i32 %2728, %2729
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2789, %2791
  %2793 = call float @dx.op.unary.f32(i32 27, float %2792)  ; Round_ni(value)
  %2794 = fptoui float %2793 to i32
  %2795 = urem i32 %2794, %2728
  %2796 = udiv i32 %2794, %2729
  %2797 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2798 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2799 = uitofp i32 %2795 to float
  %2800 = uitofp i32 %2796 to float
  %2801 = fadd fast float %2797, %2799
  %2802 = fadd fast float %2798, %2800
  %2803 = uitofp i32 %2728 to float
  %2804 = uitofp i32 %2729 to float
  %2805 = fdiv fast float %2801, %2803
  %2806 = fdiv fast float %2802, %2804
  br label %2807

; <label>:2807                                    ; preds = %2782, %2709
  %2808 = phi float [ %2805, %2782 ], [ %2777, %2709 ]
  %2809 = phi float [ %2806, %2782 ], [ %2778, %2709 ]
  %2810 = and i32 %2703, 16777216
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2921, label %2812

; <label>:2812                                    ; preds = %2807
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2817 = fadd fast float %2814, %130
  %2818 = fadd fast float %2815, %131
  %2819 = fadd fast float %2816, %132
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = icmp eq i32 %34, 65535
  br i1 %2823, label %2918, label %2824

; <label>:2824                                    ; preds = %2812
  %2825 = lshr i32 %34, 1
  %2826 = shl i32 %2825, 2
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %34, 1
  %2830 = icmp ne i32 %2829, 0
  %2831 = lshr i32 %2828, 16
  %2832 = and i32 %2828, 65535
  %2833 = select i1 %2830, i32 %2831, i32 %2832
  %2834 = icmp eq i32 %2833, 65535
  br i1 %2834, label %2914, label %2835

; <label>:2835                                    ; preds = %2824
  %2836 = mul nuw nsw i32 %2833, 40
  %2837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2841 = add nuw nsw i32 %2836, 12
  %2842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = add nuw nsw i32 %2836, 24
  %2847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = add nuw nsw i32 %2836, 36
  %2852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = fsub fast float %2817, %2838
  %2855 = fsub fast float %2818, %2839
  %2856 = fsub fast float %2819, %2840
  %2857 = fmul fast float %2853, %2854
  %2858 = fmul fast float %2853, %2855
  %2859 = fmul fast float %2853, %2856
  %2860 = call float @dx.op.unary.f32(i32 27, float %2857)  ; Round_ni(value)
  %2861 = call float @dx.op.unary.f32(i32 27, float %2858)  ; Round_ni(value)
  %2862 = call float @dx.op.unary.f32(i32 27, float %2859)  ; Round_ni(value)
  %2863 = fadd fast float %2860, 5.000000e-01
  %2864 = fadd fast float %2861, 5.000000e-01
  %2865 = fadd fast float %2862, 5.000000e-01
  %2866 = fmul fast float %2863, %2843
  %2867 = fmul fast float %2864, %2844
  %2868 = fmul fast float %2865, %2845
  %2869 = shl i32 %34, 2
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = add i32 %2871, 0
  %2873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2874 = call float @dx.op.unary.f32(i32 22, float %2866)  ; Frc(value)
  %2875 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2873, %dx.types.Handle %30, float %2874, float %2875, float %2876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = fmul fast float %2878, 1.023000e+03
  %2882 = fmul fast float %2879, 1.023000e+03
  %2883 = fmul fast float %2880, 1.023000e+03
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = call float @dx.op.unary.f32(i32 27, float %2884)  ; Round_ni(value)
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = fsub fast float %2857, %2860
  %2891 = fsub fast float %2858, %2861
  %2892 = fsub fast float %2859, %2862
  %2893 = fmul fast float %2890, 7.500000e-01
  %2894 = fmul fast float %2891, 7.500000e-01
  %2895 = fmul fast float %2892, 7.500000e-01
  %2896 = fadd fast float %2860, 1.250000e-01
  %2897 = fadd fast float %2896, %2893
  %2898 = fadd fast float %2897, %2887
  %2899 = fadd fast float %2861, 1.250000e-01
  %2900 = fadd fast float %2899, %2894
  %2901 = fadd fast float %2900, %2888
  %2902 = fadd fast float %2862, 1.250000e-01
  %2903 = fadd fast float %2902, %2895
  %2904 = fadd fast float %2903, %2889
  %2905 = fmul fast float %2898, %2848
  %2906 = fmul fast float %2901, %2849
  %2907 = fmul fast float %2904, %2850
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = add i32 %2909, 0
  %2911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2911, %dx.types.Handle %28, float %2905, float %2906, float %2907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2913 = extractvalue %dx.types.ResRet.f32 %2912, 0
  br label %2914

; <label>:2914                                    ; preds = %2835, %2824
  %2915 = phi float [ %2913, %2835 ], [ -1.000000e+00, %2824 ]
  %2916 = fadd fast float %2915, %2822
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  br label %2918

; <label>:2918                                    ; preds = %2914, %2812
  %2919 = phi float [ %2917, %2914 ], [ %2822, %2812 ]
  %2920 = fmul fast float %2919, %395
  br label %2921

; <label>:2921                                    ; preds = %2918, %2807
  %2922 = phi float [ %2920, %2918 ], [ %395, %2807 ]
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 256
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2973, label %2927

; <label>:2927                                    ; preds = %2921
  %2928 = add i32 %33, 436
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = add i32 %2930, 0
  %2932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2932, %dx.types.Handle %64, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = add i32 %33, 148
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = shl i32 %2937, 4
  %2939 = and i32 %2938, 32752
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = lshr i32 %2937, 7
  %2942 = and i32 %2941, 32752
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = fsub fast float 1.000000e+00, %2922
  %2945 = call float @dx.op.binary.f32(i32 35, float %2944, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2946 = bitcast float %2922 to i32
  %2947 = sitofp i32 %2946 to float
  %2948 = fadd fast float %2947, 0xC1CFBF8940000000
  %2949 = fmul fast float %2943, %2948
  %2950 = fadd fast float %2949, 0x41CFBF8940000000
  %2951 = fptosi float %2950 to i32
  %2952 = bitcast i32 %2951 to float
  %2953 = bitcast float %2945 to i32
  %2954 = sitofp i32 %2953 to float
  %2955 = fadd fast float %2954, 0xC1CFBF8940000000
  %2956 = fmul fast float %2955, %2943
  %2957 = fadd fast float %2956, 0x41CFBF8940000000
  %2958 = fptosi float %2957 to i32
  %2959 = bitcast i32 %2958 to float
  %2960 = fmul fast float %2952, %2940
  %2961 = fmul fast float %2959, %2940
  %2962 = fsub fast float %2945, %2960
  %2963 = fadd fast float %2961, %2945
  %2964 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2965 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2966 = fsub fast float %2934, %2964
  %2967 = fsub fast float %2965, %2964
  %2968 = bitcast float %2967 to i32
  %2969 = sub nsw i32 2129859010, %2968
  %2970 = bitcast i32 %2969 to float
  %2971 = fmul fast float %2970, %2966
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  br label %2973

; <label>:2973                                    ; preds = %2927, %2921
  %2974 = phi float [ %2972, %2927 ], [ %2922, %2921 ]
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 128
  %2978 = icmp eq i32 %2977, 0
  br i1 %2978, label %2995, label %2979

; <label>:2979                                    ; preds = %2973
  %2980 = add i32 %33, 420
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = add i32 %2982, 0
  %2984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2984, %dx.types.Handle %64, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 524288
  %2990 = icmp ne i32 %2989, 0
  %2991 = fcmp fast ogt float %2986, 0x3FE0101020000000
  %2992 = select i1 %2991, float 1.000000e+00, float 0.000000e+00
  %2993 = select i1 %2990, float %2992, float %2986
  %2994 = fmul fast float %2993, %2974
  br label %2995

; <label>:2995                                    ; preds = %2979, %2973
  %2996 = phi float [ %2994, %2979 ], [ %2974, %2973 ]
  %2997 = fcmp fast ult float %2996, 0x3F70101020000000
  br i1 %2997, label %3579, label %2998

; <label>:2998                                    ; preds = %2995
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 16
  %3002 = icmp eq i32 %3001, 0
  br i1 %3002, label %3201, label %3003

; <label>:3003                                    ; preds = %2998
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = add i32 %33, 372
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = add i32 %3008, 0
  %3010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3010, %dx.types.Handle %63, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3012 = extractvalue %dx.types.ResRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.ResRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.ResRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.ResRet.f32 %3011, 3
  %3016 = and i32 %3005, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = lshr i32 %3005, 8
  %3019 = and i32 %3018, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3015, %3017
  %3022 = fadd fast float %3021, %3020
  %3023 = fmul fast float %3022, 0x3F70101000000000
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 512
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3036, label %3028

; <label>:3028                                    ; preds = %3003
  %3029 = add i32 %33, 452
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = add i32 %3031, 0
  %3033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3033, %dx.types.Handle %64, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  br label %3036

; <label>:3036                                    ; preds = %3028, %3003
  %3037 = phi float [ %3035, %3028 ], [ 1.000000e+00, %3003 ]
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 33554432
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3148, label %3042

; <label>:3042                                    ; preds = %3036
  %3043 = add i32 %33, 272
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 65535
  %3047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3046)  ; LegacyF16ToF32(value)
  %3048 = lshr i32 %3045, 16
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = add i32 %33, 276
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 65535
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = lshr i32 %3056, 24
  %3058 = uitofp i32 %3057 to float
  %3059 = fmul fast float %3058, 0x3F70101020000000
  %3060 = and i32 %3056, 255
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = lshr i32 %3056, 8
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = lshr i32 %3056, 16
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = add i32 %33, 268
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = lshr i32 %3073, 24
  %3075 = uitofp i32 %3074 to float
  %3076 = fmul fast float %3075, 0x3F70101020000000
  %3077 = and i32 %3073, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = lshr i32 %3073, 8
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = lshr i32 %3073, 16
  %3085 = and i32 %3084, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = bitcast float %3012 to i32
  %3089 = ashr i32 %3088, 1
  %3090 = sub nsw i32 1597463174, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = fmul fast float %3012, 5.000000e-01
  %3093 = fmul fast float %3091, %3091
  %3094 = fmul fast float %3093, %3092
  %3095 = fsub fast float 1.500000e+00, %3094
  %3096 = fmul fast float %3091, %3012
  %3097 = fmul fast float %3096, %3095
  %3098 = bitcast float %3013 to i32
  %3099 = ashr i32 %3098, 1
  %3100 = sub nsw i32 1597463174, %3099
  %3101 = bitcast i32 %3100 to float
  %3102 = fmul fast float %3013, 5.000000e-01
  %3103 = fmul fast float %3101, %3101
  %3104 = fmul fast float %3103, %3102
  %3105 = fsub fast float 1.500000e+00, %3104
  %3106 = fmul fast float %3101, %3013
  %3107 = fmul fast float %3106, %3105
  %3108 = bitcast float %3014 to i32
  %3109 = ashr i32 %3108, 1
  %3110 = sub nsw i32 1597463174, %3109
  %3111 = bitcast i32 %3110 to float
  %3112 = fmul fast float %3014, 5.000000e-01
  %3113 = fmul fast float %3111, %3111
  %3114 = fmul fast float %3113, %3112
  %3115 = fsub fast float 1.500000e+00, %3114
  %3116 = fmul fast float %3111, %3014
  %3117 = fmul fast float %3116, %3115
  %3118 = fsub fast float %3097, %3079
  %3119 = fsub fast float %3107, %3083
  %3120 = fsub fast float %3117, %3087
  %3121 = fmul fast float %3118, %3047
  %3122 = fmul fast float %3119, %3049
  %3123 = fmul fast float %3120, %3054
  %3124 = fadd fast float %3121, %3062
  %3125 = fadd fast float %3122, %3066
  %3126 = fadd fast float %3123, %3070
  %3127 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3128 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3129 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3130 = fmul fast float %3127, %3127
  %3131 = fmul fast float %3128, %3128
  %3132 = fmul fast float %3129, %3129
  %3133 = fsub fast float %3130, %3012
  %3134 = fsub fast float %3131, %3013
  %3135 = fsub fast float %3132, %3014
  %3136 = fmul fast float %3133, %3037
  %3137 = fmul fast float %3134, %3037
  %3138 = fmul fast float %3135, %3037
  %3139 = fadd fast float %3136, %3012
  %3140 = fadd fast float %3137, %3013
  %3141 = fadd fast float %3138, %3014
  %3142 = fadd fast float %3059, %3023
  %3143 = fsub fast float %3142, %3076
  %3144 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3145 = fsub fast float %3144, %3023
  %3146 = fmul fast float %3145, %3037
  %3147 = fadd fast float %3146, %3023
  br label %3201

; <label>:3148                                    ; preds = %3036
  %3149 = and i32 %3039, 134217728
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3185, label %3151

; <label>:3151                                    ; preds = %3148
  %3152 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3153 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3155 = fadd fast float %3152, -5.000000e-01
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fmul fast float %3155, %3037
  %3159 = fmul fast float %3156, %3037
  %3160 = fmul fast float %3157, %3037
  %3161 = fadd fast float %3158, 5.000000e-01
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = call float @dx.op.unary.f32(i32 24, float %3012)  ; Sqrt(value)
  %3165 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  %3166 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3167 = fmul fast float %3161, 2.000000e+00
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3168, %3164
  %3170 = fadd fast float %3169, %3167
  %3171 = fmul fast float %3170, %3164
  %3172 = fmul fast float %3162, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3165
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3165
  %3177 = fmul fast float %3163, 2.000000e+00
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = fmul fast float %3178, %3166
  %3180 = fadd fast float %3179, %3177
  %3181 = fmul fast float %3180, %3166
  %3182 = fmul fast float %3171, %3171
  %3183 = fmul fast float %3176, %3176
  %3184 = fmul fast float %3181, %3181
  br label %3201

; <label>:3185                                    ; preds = %3148
  %3186 = fmul fast float %316, %316
  %3187 = fmul fast float %320, %320
  %3188 = fmul fast float %324, %324
  %3189 = fadd fast float %3186, -1.000000e+00
  %3190 = fadd fast float %3187, -1.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fmul fast float %3037, %3189
  %3193 = fmul fast float %3037, %3190
  %3194 = fmul fast float %3037, %3191
  %3195 = fadd fast float %3192, 1.000000e+00
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fmul fast float %3195, %3012
  %3199 = fmul fast float %3196, %3013
  %3200 = fmul fast float %3197, %3014
  br label %3201

; <label>:3201                                    ; preds = %3185, %3151, %3042, %2998
  %3202 = phi float [ %3147, %3042 ], [ %3023, %3151 ], [ %3023, %3185 ], [ 0x3FA23C0BE0000000, %2998 ]
  %3203 = phi float [ %3139, %3042 ], [ %3182, %3151 ], [ %3198, %3185 ], [ 1.000000e+00, %2998 ]
  %3204 = phi float [ %3140, %3042 ], [ %3183, %3151 ], [ %3199, %3185 ], [ 1.000000e+00, %2998 ]
  %3205 = phi float [ %3141, %3042 ], [ %3184, %3151 ], [ %3200, %3185 ], [ 1.000000e+00, %2998 ]
  %3206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.i32 %3206, 1
  %3208 = and i32 %3207, 1
  %3209 = icmp ne i32 %3208, 0
  %3210 = add i32 %33, 356
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 32
  %3214 = icmp ne i32 %3213, 0
  %3215 = and i1 %3209, %3214
  %3216 = select i1 %3215, float 1.000000e+00, float %3203
  %3217 = select i1 %3215, float 0x3FD3333340000000, float %3204
  %3218 = select i1 %3215, float 0x3FD3333340000000, float %3205
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 32
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3295, label %3223

; <label>:3223                                    ; preds = %3201
  %3224 = add i32 %33, 140
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = add i32 %33, 388
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %3229, 0
  %3231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3231, %dx.types.Handle %63, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.ResRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.ResRet.f32 %3232, 2
  %3236 = extractvalue %dx.types.ResRet.f32 %3232, 3
  %3237 = and i32 %3226, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = lshr i32 %3226, 8
  %3240 = and i32 %3239, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = lshr i32 %3226, 16
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = fmul fast float %3244, 0x3F70101000000000
  %3246 = fmul fast float %3233, %3238
  %3247 = fadd fast float %3246, %3241
  %3248 = fmul fast float %3247, 0x3F70101000000000
  %3249 = fadd fast float %3234, -5.000000e-01
  %3250 = fadd fast float %3236, -5.000000e-01
  %3251 = fmul fast float %3249, %3245
  %3252 = fmul fast float %3250, %3245
  %3253 = fadd fast float %3251, 5.000000e-01
  %3254 = fadd fast float %3252, 5.000000e-01
  %3255 = fmul fast float %3253, 2.000000e+00
  %3256 = fadd fast float %3255, -1.000000e+00
  %3257 = fmul fast float %3254, 2.000000e+00
  %3258 = fadd fast float %3257, -1.000000e+00
  %3259 = fadd fast float %3256, %3258
  %3260 = fmul fast float %3259, 5.000000e-01
  %3261 = fsub fast float %3256, %3258
  %3262 = fmul fast float %3261, 5.000000e-01
  %3263 = call float @dx.op.unary.f32(i32 6, float %3260)  ; FAbs(value)
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = call float @dx.op.unary.f32(i32 6, float %3262)  ; FAbs(value)
  %3266 = fsub fast float %3264, %3265
  %3267 = call float @dx.op.dot3.f32(i32 55, float %3260, float %3262, float %3266, float %3260, float %3262, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3268 = call float @dx.op.unary.f32(i32 25, float %3267)  ; Rsqrt(value)
  %3269 = fmul fast float %3260, %3268
  %3270 = fmul fast float %3262, %3268
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 67108864
  %3274 = icmp eq i32 %3273, 0
  br i1 %3274, label %3291, label %3275

; <label>:3275                                    ; preds = %3223
  %3276 = add i32 %33, 328
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 65535
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = and i32 %3282, 65535
  %3284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3283)  ; LegacyF16ToF32(value)
  %3285 = lshr i32 %3278, 16
  %3286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3285)  ; LegacyF16ToF32(value)
  %3287 = fsub fast float %3248, %3286
  %3288 = fmul fast float %3287, %3280
  %3289 = fadd fast float %3288, %3284
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  br label %3291

; <label>:3291                                    ; preds = %3275, %3223
  %3292 = phi float [ %3290, %3275 ], [ %3248, %3223 ]
  %3293 = call float @dx.op.dot2.f32(i32 54, float %3269, float %3270, float %2712, float %2713)  ; Dot2(ax,ay,bx,by)
  %3294 = call float @dx.op.dot2.f32(i32 54, float %3269, float %3270, float %2714, float %2715)  ; Dot2(ax,ay,bx,by)
  br label %3295

; <label>:3295                                    ; preds = %3291, %3201
  %3296 = phi float [ %3292, %3291 ], [ 0x3FD6666660000000, %3201 ]
  %3297 = phi float [ %3293, %3291 ], [ 0.000000e+00, %3201 ]
  %3298 = phi float [ %3294, %3291 ], [ 0.000000e+00, %3201 ]
  %3299 = phi float [ %3235, %3291 ], [ 1.000000e+00, %3201 ]
  %3300 = add i32 %33, 208
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = lshr i32 %3302, 22
  %3304 = shl nuw nsw i32 %3303, 5
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = and i32 %3307, 64
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %3343, label %3310

; <label>:3310                                    ; preds = %3295
  %3311 = add i32 %33, 404
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = add i32 %3313, 0
  %3315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = and i32 %3317, 131072
  %3319 = icmp eq i32 %3318, 0
  %3320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3315, %dx.types.Handle %63, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3324 = fmul fast float %3321, %304
  %3325 = fmul fast float %3322, %307
  %3326 = fmul fast float %3323, %310
  br i1 %3319, label %3333, label %3327

; <label>:3327                                    ; preds = %3310
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 0
  %3330 = fmul fast float %3329, %3324
  %3331 = fmul fast float %3329, %3325
  %3332 = fmul fast float %3329, %3326
  br label %3333

; <label>:3333                                    ; preds = %3327, %3310
  %3334 = phi float [ %3330, %3327 ], [ %3324, %3310 ]
  %3335 = phi float [ %3331, %3327 ], [ %3325, %3310 ]
  %3336 = phi float [ %3332, %3327 ], [ %3326, %3310 ]
  %3337 = fmul fast float %3334, %3305
  %3338 = select i1 %172, float %3337, float %3334
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3338, float %3335, float %3336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = select i1 %172, float 0.000000e+00, float %3334
  %3341 = select i1 %172, float %3339, float %3335
  %3342 = select i1 %172, float 0.000000e+00, float %3336
  br label %3343

; <label>:3343                                    ; preds = %3333, %3295
  %3344 = phi float [ %3340, %3333 ], [ 0.000000e+00, %3295 ]
  %3345 = phi float [ %3341, %3333 ], [ 0.000000e+00, %3295 ]
  %3346 = phi float [ %3342, %3333 ], [ 0.000000e+00, %3295 ]
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = and i32 %3348, 26624
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3374, label %3351

; <label>:3351                                    ; preds = %3343
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = and i32 %3353, 16384
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3374, label %3356

; <label>:3356                                    ; preds = %3351
  %3357 = and i32 %3353, 1048576
  %3358 = icmp ne i32 %3357, 0
  %3359 = add i32 %33, 468
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = add i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3363, %dx.types.Handle %64, float %2808, float %2809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = add i32 %33, 144
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = lshr i32 %3368, 24
  %3370 = uitofp i32 %3369 to float
  %3371 = fmul fast float %3365, 0x3F70101020000000
  %3372 = select i1 %3358, float 0x3F70101020000000, float %3371
  %3373 = fmul fast float %3372, %3370
  br label %3374

; <label>:3374                                    ; preds = %3356, %3351, %3343
  %3375 = phi float [ %3373, %3356 ], [ 0.000000e+00, %3351 ], [ 0.000000e+00, %3343 ]
  %3376 = add i32 %33, 144
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, 255
  %3380 = uitofp i32 %3379 to float
  %3381 = lshr i32 %3378, 8
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3216, float %3217, float %3218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = fmul fast float %3383, %3384
  %3386 = fadd fast float %3385, %3380
  %3387 = fmul fast float %3386, 0x3F70101020000000
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  br i1 %2700, label %3389, label %3397

; <label>:3389                                    ; preds = %3374
  %3390 = fsub fast float 1.000000e+00, %2996
  %3391 = fmul fast float %3390, %2688
  %3392 = fmul fast float %3390, %2689
  %3393 = fmul fast float %3390, %2690
  %3394 = fmul fast float %3390, %2691
  %3395 = fmul fast float %3390, %2692
  %3396 = fmul fast float %3390, %2693
  br label %3397

; <label>:3397                                    ; preds = %3389, %3374
  %3398 = phi float [ %3391, %3389 ], [ %2688, %3374 ]
  %3399 = phi float [ %3392, %3389 ], [ %2689, %3374 ]
  %3400 = phi float [ %3393, %3389 ], [ %2690, %3374 ]
  %3401 = phi float [ %3394, %3389 ], [ %2691, %3374 ]
  %3402 = phi float [ %3395, %3389 ], [ %2692, %3374 ]
  %3403 = phi float [ %3396, %3389 ], [ %2693, %3374 ]
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 3
  %3407 = icmp eq i32 %3406, 3
  br i1 %3407, label %3486, label %3408

; <label>:3408                                    ; preds = %3397
  %3409 = and i32 %3405, 16
  %3410 = icmp ne i32 %3409, 0
  %3411 = select i1 %3410, float %2996, float 0.000000e+00
  %3412 = icmp eq i32 %3406, 0
  br i1 %3412, label %3413, label %3441

; <label>:3413                                    ; preds = %3408
  %3414 = and i32 %3405, 64
  %3415 = icmp ne i32 %3414, 0
  %3416 = select i1 %3415, float %2996, float 0.000000e+00
  %3417 = fsub fast float %3216, %3398
  %3418 = fsub fast float %3217, %3399
  %3419 = fsub fast float %3218, %3400
  %3420 = fmul fast float %3411, %3417
  %3421 = fmul fast float %3411, %3418
  %3422 = fmul fast float %3411, %3419
  %3423 = fadd fast float %3420, %3398
  %3424 = fadd fast float %3421, %3399
  %3425 = fadd fast float %3422, %3400
  %3426 = fsub fast float %3202, %2694
  %3427 = fmul fast float %3411, %3426
  %3428 = fadd fast float %3427, %2694
  %3429 = fsub fast float %3344, %3401
  %3430 = fsub fast float %3345, %3402
  %3431 = fsub fast float %3346, %3403
  %3432 = fmul fast float %3416, %3429
  %3433 = fmul fast float %3416, %3430
  %3434 = fmul fast float %3416, %3431
  %3435 = fadd fast float %3432, %3401
  %3436 = fadd fast float %3433, %3402
  %3437 = fadd fast float %3434, %3403
  %3438 = fsub fast float %3388, %2698
  %3439 = fmul fast float %3411, %3438
  %3440 = fadd fast float %3439, %2698
  br label %3486

; <label>:3441                                    ; preds = %3408
  %3442 = icmp eq i32 %3406, 1
  br i1 %3442, label %3443, label %3456

; <label>:3443                                    ; preds = %3441
  %3444 = fadd fast float %3216, -1.000000e+00
  %3445 = fadd fast float %3217, -1.000000e+00
  %3446 = fadd fast float %3218, -1.000000e+00
  %3447 = fmul fast float %3411, %3444
  %3448 = fmul fast float %3411, %3445
  %3449 = fmul fast float %3411, %3446
  %3450 = fadd fast float %3447, 1.000000e+00
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fmul fast float %3450, %3398
  %3454 = fmul fast float %3451, %3399
  %3455 = fmul fast float %3452, %3400
  br label %3486

; <label>:3456                                    ; preds = %3441
  %3457 = icmp eq i32 %3406, 2
  br i1 %3457, label %3458, label %3486

; <label>:3458                                    ; preds = %3456
  %3459 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3460 = call float @dx.op.unary.f32(i32 24, float %3217)  ; Sqrt(value)
  %3461 = call float @dx.op.unary.f32(i32 24, float %3218)  ; Sqrt(value)
  %3462 = fadd fast float %3459, -5.000000e-01
  %3463 = fadd fast float %3460, -5.000000e-01
  %3464 = fadd fast float %3461, -5.000000e-01
  %3465 = fmul fast float %3462, %3411
  %3466 = fmul fast float %3463, %3411
  %3467 = fmul fast float %3464, %3411
  %3468 = fadd fast float %3465, 5.000000e-01
  %3469 = fadd fast float %3466, 5.000000e-01
  %3470 = fadd fast float %3467, 5.000000e-01
  %3471 = fmul fast float %3468, 2.000000e+00
  %3472 = fsub fast float 1.000000e+00, %3471
  %3473 = fmul fast float %3472, %3398
  %3474 = fadd fast float %3473, %3471
  %3475 = fmul fast float %3474, %3398
  %3476 = fmul fast float %3469, 2.000000e+00
  %3477 = fsub fast float 1.000000e+00, %3476
  %3478 = fmul fast float %3477, %3399
  %3479 = fadd fast float %3478, %3476
  %3480 = fmul fast float %3479, %3399
  %3481 = fmul fast float %3470, 2.000000e+00
  %3482 = fsub fast float 1.000000e+00, %3481
  %3483 = fmul fast float %3482, %3400
  %3484 = fadd fast float %3483, %3481
  %3485 = fmul fast float %3484, %3400
  br label %3486

; <label>:3486                                    ; preds = %3458, %3456, %3443, %3413, %3397
  %3487 = phi float [ %3398, %3397 ], [ %3475, %3458 ], [ %3398, %3456 ], [ %3453, %3443 ], [ %3423, %3413 ]
  %3488 = phi float [ %3399, %3397 ], [ %3480, %3458 ], [ %3399, %3456 ], [ %3454, %3443 ], [ %3424, %3413 ]
  %3489 = phi float [ %3400, %3397 ], [ %3485, %3458 ], [ %3400, %3456 ], [ %3455, %3443 ], [ %3425, %3413 ]
  %3490 = phi float [ %3401, %3397 ], [ %3401, %3458 ], [ %3401, %3456 ], [ %3401, %3443 ], [ %3435, %3413 ]
  %3491 = phi float [ %3402, %3397 ], [ %3402, %3458 ], [ %3402, %3456 ], [ %3402, %3443 ], [ %3436, %3413 ]
  %3492 = phi float [ %3403, %3397 ], [ %3403, %3458 ], [ %3403, %3456 ], [ %3403, %3443 ], [ %3437, %3413 ]
  %3493 = phi float [ %2694, %3397 ], [ %2694, %3458 ], [ %2694, %3456 ], [ %2694, %3443 ], [ %3428, %3413 ]
  %3494 = phi float [ %2698, %3397 ], [ %2698, %3458 ], [ %2698, %3456 ], [ %2698, %3443 ], [ %3440, %3413 ]
  %3495 = and i32 %3405, 12
  %3496 = icmp eq i32 %3495, 12
  br i1 %3496, label %3579, label %3497

; <label>:3497                                    ; preds = %3486
  %3498 = and i32 %3405, 2097184
  %3499 = icmp eq i32 %3498, 2097184
  %3500 = select i1 %3499, float %2996, float 0.000000e+00
  %3501 = and i32 %3405, 4194336
  %3502 = icmp eq i32 %3501, 4194336
  %3503 = select i1 %3502, float %2996, float 0.000000e+00
  %3504 = and i32 %3405, 8388640
  %3505 = icmp eq i32 %3504, 8388640
  %3506 = select i1 %3505, float %2996, float 0.000000e+00
  %3507 = and i32 %3405, 16384
  %3508 = icmp ne i32 %3507, 0
  %3509 = select i1 %3508, float %2996, float 0.000000e+00
  %3510 = icmp eq i32 %3495, 0
  br i1 %3510, label %3511, label %3527

; <label>:3511                                    ; preds = %3497
  %3512 = fsub fast float %3297, %2686
  %3513 = fsub fast float %3298, %2687
  %3514 = fmul fast float %3500, %3512
  %3515 = fmul fast float %3500, %3513
  %3516 = fadd fast float %3514, %2686
  %3517 = fadd fast float %3515, %2687
  %3518 = fsub fast float %3299, %2696
  %3519 = fmul fast float %3503, %3518
  %3520 = fadd fast float %3519, %2696
  %3521 = fsub fast float %3296, %2695
  %3522 = fmul fast float %3506, %3521
  %3523 = fadd fast float %3522, %2695
  %3524 = fsub fast float %3375, %2697
  %3525 = fmul fast float %3509, %3524
  %3526 = fadd fast float %3525, %2697
  br label %3579

; <label>:3527                                    ; preds = %3497
  %3528 = icmp eq i32 %3495, 4
  br i1 %3528, label %3529, label %3563

; <label>:3529                                    ; preds = %3527
  %3530 = fmul fast float %3500, %3297
  %3531 = fmul fast float %3500, %3298
  %3532 = fadd fast float %3530, %2686
  %3533 = fadd fast float %3531, %2687
  %3534 = call float @dx.op.binary.f32(i32 36, float %2696, float %3299)  ; FMin(a,b)
  %3535 = fsub fast float %3534, %2696
  %3536 = fmul fast float %3535, %3503
  %3537 = fadd fast float %3536, %2696
  %3538 = fadd fast float %3296, %2695
  %3539 = fmul fast float %3538, 0x3FF337FAE0000000
  %3540 = fmul fast float %2695, %2695
  %3541 = fmul fast float %3296, %3296
  %3542 = fadd fast float %3541, %3540
  %3543 = fmul fast float %3542, 0x3FE5152B00000000
  %3544 = fmul fast float %2695, 0xBFCC1F85E0000000
  %3545 = fmul fast float %3544, %3296
  %3546 = fadd fast float %3545, 0xBFE1363700000000
  %3547 = fadd fast float %3546, %3539
  %3548 = fsub fast float %3547, %3543
  %3549 = fmul fast float %3538, 0x3FBA6F0D00000000
  %3550 = fmul fast float %3542, 0x3FD0432880000000
  %3551 = fmul fast float %2695, 0xBFEF110800000000
  %3552 = fmul fast float %3551, %3296
  %3553 = fadd fast float %3552, 1.000000e+00
  %3554 = fsub fast float %3553, %3549
  %3555 = fadd fast float %3554, %3550
  %3556 = fdiv fast float %3548, %3555
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fsub fast float %3557, %2695
  %3559 = fmul fast float %3558, %3506
  %3560 = fadd fast float %3559, %2695
  %3561 = fmul fast float %3509, %3375
  %3562 = fadd fast float %3561, %2697
  br label %3579

; <label>:3563                                    ; preds = %3527
  %3564 = icmp eq i32 %3495, 8
  br i1 %3564, label %3565, label %3579

; <label>:3565                                    ; preds = %3563
  %3566 = fmul fast float %3500, %3297
  %3567 = fmul fast float %3500, %3298
  %3568 = fadd fast float %3566, %2686
  %3569 = fadd fast float %3567, %2687
  %3570 = call float @dx.op.binary.f32(i32 36, float %2696, float %3299)  ; FMin(a,b)
  %3571 = fsub fast float %3570, %2696
  %3572 = fmul fast float %3571, %3503
  %3573 = fadd fast float %3572, %2696
  %3574 = fsub fast float %3296, %2695
  %3575 = fmul fast float %3506, %3574
  %3576 = fadd fast float %3575, %2695
  %3577 = fmul fast float %3509, %3375
  %3578 = fadd fast float %3577, %2697
  br label %3579

; <label>:3579                                    ; preds = %3565, %3563, %3529, %3511, %3486, %2995, %2699, %2685
  %3580 = phi float [ %2686, %3486 ], [ %2686, %2995 ], [ %2686, %2685 ], [ %2686, %2699 ], [ %3516, %3511 ], [ %3532, %3529 ], [ %2686, %3563 ], [ %3568, %3565 ]
  %3581 = phi float [ %2687, %3486 ], [ %2687, %2995 ], [ %2687, %2685 ], [ %2687, %2699 ], [ %3517, %3511 ], [ %3533, %3529 ], [ %2687, %3563 ], [ %3569, %3565 ]
  %3582 = phi float [ %3487, %3486 ], [ %2688, %2995 ], [ %2688, %2685 ], [ %2688, %2699 ], [ %3487, %3511 ], [ %3487, %3529 ], [ %3487, %3563 ], [ %3487, %3565 ]
  %3583 = phi float [ %3488, %3486 ], [ %2689, %2995 ], [ %2689, %2685 ], [ %2689, %2699 ], [ %3488, %3511 ], [ %3488, %3529 ], [ %3488, %3563 ], [ %3488, %3565 ]
  %3584 = phi float [ %3489, %3486 ], [ %2690, %2995 ], [ %2690, %2685 ], [ %2690, %2699 ], [ %3489, %3511 ], [ %3489, %3529 ], [ %3489, %3563 ], [ %3489, %3565 ]
  %3585 = phi float [ %3490, %3486 ], [ %2691, %2995 ], [ %2691, %2685 ], [ %2691, %2699 ], [ %3490, %3511 ], [ %3490, %3529 ], [ %3490, %3563 ], [ %3490, %3565 ]
  %3586 = phi float [ %3491, %3486 ], [ %2692, %2995 ], [ %2692, %2685 ], [ %2692, %2699 ], [ %3491, %3511 ], [ %3491, %3529 ], [ %3491, %3563 ], [ %3491, %3565 ]
  %3587 = phi float [ %3492, %3486 ], [ %2693, %2995 ], [ %2693, %2685 ], [ %2693, %2699 ], [ %3492, %3511 ], [ %3492, %3529 ], [ %3492, %3563 ], [ %3492, %3565 ]
  %3588 = phi float [ %3493, %3486 ], [ %2694, %2995 ], [ %2694, %2685 ], [ %2694, %2699 ], [ %3493, %3511 ], [ %3493, %3529 ], [ %3493, %3563 ], [ %3493, %3565 ]
  %3589 = phi float [ %2695, %3486 ], [ %2695, %2995 ], [ %2695, %2685 ], [ %2695, %2699 ], [ %3523, %3511 ], [ %3560, %3529 ], [ %2695, %3563 ], [ %3576, %3565 ]
  %3590 = phi float [ %2696, %3486 ], [ %2696, %2995 ], [ %2696, %2685 ], [ %2696, %2699 ], [ %3520, %3511 ], [ %3537, %3529 ], [ %2696, %3563 ], [ %3573, %3565 ]
  %3591 = phi float [ %2697, %3486 ], [ %2697, %2995 ], [ %2697, %2685 ], [ %2697, %2699 ], [ %3526, %3511 ], [ %3562, %3529 ], [ %2697, %3563 ], [ %3578, %3565 ]
  %3592 = phi float [ %3494, %3486 ], [ %2698, %2995 ], [ %2698, %2685 ], [ %2698, %2699 ], [ %3494, %3511 ], [ %3494, %3529 ], [ %3494, %3563 ], [ %3494, %3565 ]
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = call float @dx.op.dot2.f32(i32 54, float %3580, float %3581, float %3580, float %3581)  ; Dot2(ax,ay,bx,by)
  %3596 = fmul fast float %3595, 0x3FE3333340000000
  %3597 = fsub fast float 1.000000e+00, %3596
  %3598 = call float @dx.op.dot3.f32(i32 55, float %3580, float %3581, float %3597, float %3580, float %3581, float %3597)  ; Dot3(ax,ay,az,bx,by,bz)
  %3599 = call float @dx.op.unary.f32(i32 25, float %3598)  ; Rsqrt(value)
  %3600 = fmul fast float %3599, %3580
  %3601 = fmul fast float %3599, %3581
  %3602 = fmul fast float %3597, %3599
  %3603 = fmul fast float %3602, %74
  %3604 = fmul fast float %3602, %75
  %3605 = fmul fast float %3602, %76
  %3606 = fmul fast float %3600, %48
  %3607 = fmul fast float %3600, %49
  %3608 = fmul fast float %3600, %50
  %3609 = fadd fast float %3603, %3606
  %3610 = fadd fast float %3604, %3607
  %3611 = fadd fast float %3605, %3608
  %3612 = fmul fast float %86, %3601
  %3613 = fmul fast float %87, %3601
  %3614 = fmul fast float %88, %3601
  %3615 = fadd fast float %3609, %3612
  %3616 = fadd fast float %3610, %3613
  %3617 = fadd fast float %3611, %3614
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3615, float %3616, float %3617)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = call float @dx.op.unary.f32(i32 25, float %3618)  ; Rsqrt(value)
  %3620 = fmul fast float %3615, %3619
  %3621 = fmul fast float %3616, %3619
  %3622 = fmul fast float %3617, %3619
  %3623 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3624 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3625 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3626 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3627 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3628 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3629 = fadd fast float %3623, %130
  %3630 = fadd fast float %3624, %131
  %3631 = fadd fast float %3625, %132
  %3632 = fadd fast float %3626, %130
  %3633 = fadd fast float %3627, %131
  %3634 = fadd fast float %3628, %132
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 3
  %3642 = fmul fast float %3636, %67
  %3643 = fmul fast float %3642, %3640
  %3644 = fmul fast float %3637, %68
  %3645 = fmul fast float %3644, %3641
  %3646 = fptoui float %3643 to i32
  %3647 = fptoui float %3645 to i32
  %3648 = fadd fast float %3636, -1.000000e+00
  %3649 = fadd fast float %3637, -1.000000e+00
  %3650 = fptoui float %3648 to i32
  %3651 = fptoui float %3649 to i32
  %3652 = call i32 @dx.op.binary.i32(i32 40, i32 %3646, i32 %3650)  ; UMin(a,b)
  %3653 = call i32 @dx.op.binary.i32(i32 40, i32 %3647, i32 %3651)  ; UMin(a,b)
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 2
  %3656 = extractvalue %dx.types.CBufRet.f32 %3654, 3
  %3657 = fmul fast float %3655, %62
  %3658 = fsub fast float %3657, %3656
  %3659 = fadd fast float %3638, -1.000000e+00
  %3660 = call float @dx.op.binary.f32(i32 36, float %3658, float %3659)  ; FMin(a,b)
  %3661 = fptoui float %3660 to i32
  %3662 = fptoui float %3636 to i32
  %3663 = fptoui float %3637 to i32
  %3664 = mul i32 %3661, %3663
  %3665 = add i32 %3664, %3653
  %3666 = mul i32 %3665, %3662
  %3667 = add i32 %3666, %3652
  %3668 = shl i32 %3667, 2
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 1023
  %3672 = lshr i32 %3670, 10
  %3673 = icmp eq i32 %3671, 0
  br i1 %3673, label %4099, label %3674

; <label>:3674                                    ; preds = %3579
  %3675 = and i32 %3670, 1023
  br label %3676

; <label>:3676                                    ; preds = %3802, %3674
  %3677 = phi i32 [ %3752, %3802 ], [ 0, %3674 ]
  %3678 = phi float [ %3803, %3802 ], [ 0.000000e+00, %3674 ]
  %3679 = phi float [ %3804, %3802 ], [ %3594, %3674 ]
  %3680 = phi float [ %3805, %3802 ], [ %3592, %3674 ]
  %3681 = phi float [ %3806, %3802 ], [ %3591, %3674 ]
  %3682 = phi float [ %3807, %3802 ], [ 0.000000e+00, %3674 ]
  %3683 = phi float [ %3808, %3802 ], [ %3585, %3674 ]
  %3684 = phi float [ %3809, %3802 ], [ %3586, %3674 ]
  %3685 = phi float [ %3810, %3802 ], [ %3587, %3674 ]
  %3686 = phi float [ %3811, %3802 ], [ %3620, %3674 ]
  %3687 = phi float [ %3812, %3802 ], [ %3621, %3674 ]
  %3688 = phi float [ %3813, %3802 ], [ %3622, %3674 ]
  %3689 = phi float [ %3814, %3802 ], [ %3590, %3674 ]
  %3690 = phi float [ %3815, %3802 ], [ %3589, %3674 ]
  %3691 = phi float [ %3816, %3802 ], [ 0.000000e+00, %3674 ]
  %3692 = phi float [ %3817, %3802 ], [ %3588, %3674 ]
  %3693 = phi float [ %3818, %3802 ], [ %3582, %3674 ]
  %3694 = phi float [ %3819, %3802 ], [ %3583, %3674 ]
  %3695 = phi float [ %3820, %3802 ], [ %3584, %3674 ]
  %3696 = add nuw nsw i32 %3677, %3672
  %3697 = shl i32 %3696, 2
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = shl i32 %3699, 8
  %3701 = or i32 %3700, 48
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.ResRet.f32 %3702, 3
  %3707 = or i32 %3700, 64
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.i32 %3708, 1
  %3711 = or i32 %3700, 80
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3715 = or i32 %3700, 96
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3721 = or i32 %3700, 112
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 2
  %3724 = or i32 %3700, 128
  %3725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.ResRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.ResRet.f32 %3725, 2
  %3729 = extractvalue %dx.types.ResRet.f32 %3725, 3
  %3730 = or i32 %3700, 144
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = or i32 %3700, 160
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3742 = or i32 %3700, 192
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = or i32 %3700, 208
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = or i32 %3700, 248
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3752 = add nuw nsw i32 %3677, 1
  %3753 = bitcast float %3706 to i32
  %3754 = and i32 %3753, 512
  %3755 = icmp eq i32 %3754, 0
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.ResRet.f32 %3756, 2
  %3760 = extractvalue %dx.types.ResRet.f32 %3756, 3
  %3761 = call float @dx.op.dot4.f32(i32 56, float %3757, float %3758, float %3759, float %3760, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3762 = or i32 %3700, 16
  %3763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.ResRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.ResRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.ResRet.f32 %3763, 3
  %3768 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3769 = or i32 %3700, 32
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = call float @dx.op.dot4.f32(i32 56, float %3771, float %3772, float %3773, float %3774, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3776 = call float @dx.op.unary.f32(i32 27, float %3761)  ; Round_ni(value)
  %3777 = call float @dx.op.unary.f32(i32 6, float %3776)  ; FAbs(value)
  %3778 = call float @dx.op.unary.f32(i32 27, float %3768)  ; Round_ni(value)
  %3779 = call float @dx.op.unary.f32(i32 6, float %3778)  ; FAbs(value)
  %3780 = call float @dx.op.unary.f32(i32 6, float %3775)  ; FAbs(value)
  %3781 = call float @dx.op.unary.f32(i32 27, float %3780)  ; Round_ni(value)
  %3782 = fadd fast float %3779, %3777
  %3783 = fadd fast float %3782, %3781
  %3784 = fcmp fast oeq float %3783, 0.000000e+00
  %3785 = call float @dx.op.dot4.f32(i32 56, float %3757, float %3758, float %3759, float %3760, float %3629, float %3630, float %3631, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3786 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %3629, float %3630, float %3631, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3787 = call float @dx.op.dot4.f32(i32 56, float %3757, float %3758, float %3759, float %3760, float %3632, float %3633, float %3634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3788 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %3632, float %3633, float %3634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3789 = fsub fast float %3785, %3761
  %3790 = fsub fast float %3787, %3761
  %3791 = fsub fast float %3786, %3768
  %3792 = fsub fast float %3788, %3768
  %3793 = call float @dx.op.dot3.f32(i32 55, float %3703, float %3704, float %3705, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 2
  %3796 = fadd fast float %3795, %3793
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3799 = fcmp fast ogt float %3797, %3798
  %3800 = and i1 %3784, %3799
  %3801 = and i1 %3755, %3800
  br i1 %3801, label %3822, label %3802

; <label>:3802                                    ; preds = %4085, %3903, %3822, %3676
  %3803 = phi float [ %3678, %3822 ], [ %3906, %3903 ], [ %3906, %4085 ], [ %3678, %3676 ]
  %3804 = phi float [ %3679, %3822 ], [ %3679, %3903 ], [ %4060, %4085 ], [ %3679, %3676 ]
  %3805 = phi float [ %3680, %3822 ], [ %3680, %3903 ], [ %4058, %4085 ], [ %3680, %3676 ]
  %3806 = phi float [ %3681, %3822 ], [ %3681, %3903 ], [ %4030, %4085 ], [ %3681, %3676 ]
  %3807 = phi float [ %3682, %3822 ], [ %3682, %3903 ], [ %4028, %4085 ], [ %3682, %3676 ]
  %3808 = phi float [ %3683, %3822 ], [ %3683, %3903 ], [ %4095, %4085 ], [ %3683, %3676 ]
  %3809 = phi float [ %3684, %3822 ], [ %3684, %3903 ], [ %4096, %4085 ], [ %3684, %3676 ]
  %3810 = phi float [ %3685, %3822 ], [ %3685, %3903 ], [ %4097, %4085 ], [ %3685, %3676 ]
  %3811 = phi float [ %3686, %3822 ], [ %3686, %3903 ], [ %4009, %4085 ], [ %3686, %3676 ]
  %3812 = phi float [ %3687, %3822 ], [ %3687, %3903 ], [ %4010, %4085 ], [ %3687, %3676 ]
  %3813 = phi float [ %3688, %3822 ], [ %3688, %3903 ], [ %4011, %4085 ], [ %3688, %3676 ]
  %3814 = phi float [ %3689, %3822 ], [ %3689, %3903 ], [ %4038, %4085 ], [ %3689, %3676 ]
  %3815 = phi float [ %3690, %3822 ], [ %3690, %3903 ], [ %4035, %4085 ], [ %3690, %3676 ]
  %3816 = phi float [ %3691, %3822 ], [ %3691, %3903 ], [ %4032, %4085 ], [ %3691, %3676 ]
  %3817 = phi float [ %3692, %3822 ], [ %3692, %3903 ], [ %4026, %4085 ], [ %3692, %3676 ]
  %3818 = phi float [ %3693, %3822 ], [ %3693, %3903 ], [ %4021, %4085 ], [ %3693, %3676 ]
  %3819 = phi float [ %3694, %3822 ], [ %3694, %3903 ], [ %4022, %4085 ], [ %3694, %3676 ]
  %3820 = phi float [ %3695, %3822 ], [ %3695, %3903 ], [ %4023, %4085 ], [ %3695, %3676 ]
  %3821 = icmp eq i32 %3752, %3675
  br i1 %3821, label %4098, label %3676

; <label>:3822                                    ; preds = %3676
  %3823 = extractvalue %dx.types.ResRet.f32 %3722, 3
  %3824 = extractvalue %dx.types.ResRet.f32 %3722, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3828 = extractvalue %dx.types.ResRet.i32 %3708, 3
  %3829 = extractvalue %dx.types.ResRet.i32 %3708, 2
  %3830 = add i32 %3828, 0
  %3831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3830, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3831, %dx.types.Handle %3832, float %3761, float %3768, float undef, float undef, i32 0, i32 0, i32 undef, float %3789, float %3791, float undef, float %3790, float %3792, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = fmul fast float %3834, %3827
  %3836 = fadd fast float %3835, %3826
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = fmul fast float %3761, %3717
  %3839 = call float @dx.op.tertiary.f32(i32 46, float %3718, float %3768, float %3838)  ; FMad(a,b,c)
  %3840 = fadd fast float %3839, %3825
  %3841 = fmul fast float %3761, %3719
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %3720, float %3768, float %3841)  ; FMad(a,b,c)
  %3843 = fadd fast float %3842, %3824
  %3844 = fmul fast float %3789, %3717
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3718, float %3791, float %3844)  ; FMad(a,b,c)
  %3846 = fmul fast float %3789, %3719
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %3720, float %3791, float %3846)  ; FMad(a,b,c)
  %3848 = fmul fast float %3790, %3717
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3718, float %3792, float %3848)  ; FMad(a,b,c)
  %3850 = fmul fast float %3790, %3719
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3720, float %3792, float %3850)  ; FMad(a,b,c)
  %3852 = add i32 %3829, 0
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3853, %dx.types.Handle %3832, float %3840, float %3843, float undef, float undef, i32 0, i32 0, i32 undef, float %3845, float %3847, float undef, float %3849, float %3851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = and i32 %3753, 1024
  %3857 = icmp ne i32 %3856, 0
  %3858 = fcmp fast ogt float %3855, 0x3FE0101020000000
  %3859 = uitofp i1 %3858 to float
  %3860 = select i1 %3857, float %3859, float %3855
  %3861 = and i32 %3753, 8192
  %3862 = icmp ne i32 %3861, 0
  %3863 = select i1 %3862, float %3823, float 1.000000e+00
  %3864 = fmul fast float %3761, 2.000000e+00
  %3865 = fadd fast float %3864, -1.000000e+00
  %3866 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3867 = fmul fast float %3866, %3750
  %3868 = fsub fast float %3867, %3750
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = fmul fast float %3768, 2.000000e+00
  %3871 = fadd fast float %3870, -1.000000e+00
  %3872 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3873 = fmul fast float %3872, %3751
  %3874 = fsub fast float %3873, %3751
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3780, %3713
  %3877 = fsub fast float %3876, %3713
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = fmul fast float %3837, %3863
  %3880 = fmul fast float %3879, %3834
  %3881 = fmul fast float %3880, %3869
  %3882 = fmul fast float %3881, %3860
  %3883 = fmul fast float %3882, %3875
  %3884 = fmul fast float %3883, %3878
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3888 = fsub fast float %3797, %3887
  %3889 = fmul fast float %3888, %3886
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fmul fast float %3884, %3714
  %3892 = fadd fast float %3884, %3714
  %3893 = fmul fast float %3892, %3723
  %3894 = fsub fast float %3893, %3723
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = and i32 %3753, 128
  %3897 = icmp ne i32 %3896, 0
  %3898 = select i1 %3897, float %3895, float %3891
  %3899 = fmul fast float %3898, %3890
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = fcmp fast ugt float %3899, %3901
  br i1 %3902, label %3903, label %3802

; <label>:3903                                    ; preds = %3822
  %3904 = select i1 %3862, float %3899, float 0.000000e+00
  %3905 = fadd fast float %3904, %3678
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  br i1 %3862, label %3802, label %3907

; <label>:3907                                    ; preds = %3903
  %3908 = and i32 %3753, 4
  %3909 = and i32 %3753, 8
  %3910 = add i32 %3709, 0
  %3911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3911, %dx.types.Handle %3912, float %3840, float %3843, float undef, float undef, i32 0, i32 0, i32 undef, float %3845, float %3847, float undef, float %3849, float %3851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = extractvalue %dx.types.ResRet.f32 %3913, 3
  %3918 = bitcast float %3735 to i32
  %3919 = and i32 %3918, 255
  %3920 = uitofp i32 %3919 to float
  %3921 = lshr i32 %3918, 8
  %3922 = and i32 %3921, 255
  %3923 = uitofp i32 %3922 to float
  %3924 = fmul fast float %3917, %3920
  %3925 = fadd fast float %3924, %3923
  %3926 = fmul fast float %3925, 0x3F70101000000000
  %3927 = add i32 %3710, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %3912, float %3840, float %3843, float undef, float undef, i32 0, i32 0, i32 undef, float %3845, float %3847, float undef, float %3849, float %3851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = extractvalue %dx.types.ResRet.f32 %3929, 3
  %3934 = bitcast float %3729 to i32
  %3935 = and i32 %3934, 255
  %3936 = uitofp i32 %3935 to float
  %3937 = lshr i32 %3934, 8
  %3938 = and i32 %3937, 255
  %3939 = uitofp i32 %3938 to float
  %3940 = lshr i32 %3934, 16
  %3941 = and i32 %3940, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = fmul fast float %3942, 0x3F70101000000000
  %3944 = fmul fast float %3930, %3936
  %3945 = fadd fast float %3944, %3939
  %3946 = fmul fast float %3945, 0x3F70101000000000
  %3947 = fadd fast float %3931, -5.000000e-01
  %3948 = fadd fast float %3933, -5.000000e-01
  %3949 = fmul fast float %3947, %3943
  %3950 = fmul fast float %3948, %3943
  %3951 = fadd fast float %3949, 5.000000e-01
  %3952 = fadd fast float %3950, 5.000000e-01
  %3953 = fmul fast float %3914, %3738
  %3954 = fmul fast float %3915, %3739
  %3955 = fmul fast float %3916, %3740
  %3956 = fmul fast float %3951, 2.000000e+00
  %3957 = fadd fast float %3956, -1.000000e+00
  %3958 = fmul fast float %3952, 2.000000e+00
  %3959 = fadd fast float %3958, -1.000000e+00
  %3960 = fadd fast float %3957, %3959
  %3961 = fmul fast float %3960, 5.000000e-01
  %3962 = fsub fast float %3957, %3959
  %3963 = fmul fast float %3962, 5.000000e-01
  %3964 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3965 = fsub fast float 1.000000e+00, %3964
  %3966 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3967 = fsub fast float %3965, %3966
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3963, float %3967, float %3961, float %3963, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = call float @dx.op.unary.f32(i32 25, float %3968)  ; Rsqrt(value)
  %3970 = fmul fast float %3961, %3969
  %3971 = fmul fast float %3963, %3969
  %3972 = fmul fast float %3969, %3967
  %3973 = fmul fast float %3972, %3703
  %3974 = fmul fast float %3972, %3704
  %3975 = fmul fast float %3972, %3705
  %3976 = fmul fast float %3970, %3726
  %3977 = fmul fast float %3970, %3727
  %3978 = fmul fast float %3970, %3728
  %3979 = fadd fast float %3976, %3973
  %3980 = fadd fast float %3977, %3974
  %3981 = fadd fast float %3978, %3975
  %3982 = fmul fast float %3971, %3732
  %3983 = fmul fast float %3971, %3733
  %3984 = fmul fast float %3971, %3734
  %3985 = fadd fast float %3979, %3982
  %3986 = fadd fast float %3980, %3983
  %3987 = fadd fast float %3981, %3984
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float %3985, float %3986, float %3987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.unary.f32(i32 25, float %3988)  ; Rsqrt(value)
  %3990 = fmul fast float %3985, %3989
  %3991 = fmul fast float %3986, %3989
  %3992 = fmul fast float %3987, %3989
  %3993 = icmp ne i32 %3909, 0
  %3994 = select i1 %3993, float 1.000000e+00, float 0.000000e+00
  %3995 = fmul fast float %3899, %3994
  %3996 = and i32 %3753, 1
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %3998, label %4002

; <label>:3998                                    ; preds = %3907
  %3999 = fsub fast float %3990, %3686
  %4000 = fsub fast float %3991, %3687
  %4001 = fsub fast float %3992, %3688
  br label %4002

; <label>:4002                                    ; preds = %3998, %3907
  %4003 = phi float [ %3999, %3998 ], [ %3990, %3907 ]
  %4004 = phi float [ %4000, %3998 ], [ %3991, %3907 ]
  %4005 = phi float [ %4001, %3998 ], [ %3992, %3907 ]
  %4006 = fmul float %4005, %3995
  %4007 = fmul float %4004, %3995
  %4008 = fmul float %4003, %3995
  %4009 = fadd fast float %4008, %3686
  %4010 = fadd fast float %4007, %3687
  %4011 = fadd fast float %4006, %3688
  %4012 = icmp ne i32 %3908, 0
  %4013 = select i1 %4012, float 1.000000e+00, float 0.000000e+00
  %4014 = fmul fast float %3899, %4013
  %4015 = fsub fast float %3953, %3693
  %4016 = fsub fast float %3954, %3694
  %4017 = fsub fast float %3955, %3695
  %4018 = fmul fast float %4015, %4014
  %4019 = fmul fast float %4016, %4014
  %4020 = fmul fast float %4017, %4014
  %4021 = fadd fast float %4018, %3693
  %4022 = fadd fast float %4019, %3694
  %4023 = fadd fast float %4020, %3695
  %4024 = fsub fast float %3926, %3692
  %4025 = fmul fast float %4024, %4014
  %4026 = fadd fast float %4025, %3692
  %4027 = fmul fast float %4014, %3682
  %4028 = fsub fast float %3682, %4027
  %4029 = fmul fast float %4014, %3681
  %4030 = fsub fast float %3681, %4029
  %4031 = fadd fast float %3899, %3691
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = fsub fast float %3946, %3690
  %4034 = fmul fast float %4033, %3995
  %4035 = fadd fast float %4034, %3690
  %4036 = fsub fast float %3932, %3689
  %4037 = fmul fast float %4036, %3995
  %4038 = fadd fast float %4037, %3689
  %4039 = call float @dx.op.dot3.f32(i32 55, float %3953, float %3954, float %3955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = fmul fast float %4042, %4039
  %4044 = fadd fast float %4043, %4041
  %4045 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4046 = bitcast float %3741 to i32
  %4047 = and i32 %4046, 65535
  %4048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4047)  ; LegacyF16ToF32(value)
  %4049 = lshr i32 %4046, 16
  %4050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4049)  ; LegacyF16ToF32(value)
  %4051 = fcmp fast oge float %4048, 0.000000e+00
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = select i1 %4051, float %4048, float %4053
  %4055 = fadd fast float %4054, %4050
  %4056 = fsub fast float %4045, %3680
  %4057 = fmul fast float %4056, %3899
  %4058 = fadd fast float %4057, %3680
  %4059 = fmul fast float %4055, %3899
  %4060 = call float @dx.op.binary.f32(i32 35, float %3679, float %4059)  ; FMax(a,b)
  %4061 = and i32 %3753, 16
  %4062 = icmp eq i32 %4061, 0
  br i1 %4062, label %4085, label %4063

; <label>:4063                                    ; preds = %4002
  %4064 = bitcast float %3747 to i32
  %4065 = add i32 %3744, 0
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4066, %dx.types.Handle %3912, float %3840, float %3843, float undef, float undef, i32 0, i32 0, i32 undef, float %3845, float %3847, float undef, float %3849, float %3851, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = and i32 %4064, 65535
  %4072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4071)  ; LegacyF16ToF32(value)
  %4073 = fmul fast float %4068, %3738
  %4074 = fmul fast float %4069, %3739
  %4075 = fmul fast float %4070, %3740
  %4076 = and i32 %3753, 16384
  %4077 = icmp ne i32 %4076, 0
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = select i1 %4077, float %4079, float 1.000000e+00
  %4081 = fmul fast float %4080, %4072
  %4082 = fmul fast float %4073, %4081
  %4083 = fmul fast float %4074, %4081
  %4084 = fmul fast float %4075, %4081
  br label %4085

; <label>:4085                                    ; preds = %4063, %4002
  %4086 = phi float [ %4082, %4063 ], [ 0.000000e+00, %4002 ]
  %4087 = phi float [ %4083, %4063 ], [ 0.000000e+00, %4002 ]
  %4088 = phi float [ %4084, %4063 ], [ 0.000000e+00, %4002 ]
  %4089 = fsub fast float %4086, %3683
  %4090 = fsub fast float %4087, %3684
  %4091 = fsub fast float %4088, %3685
  %4092 = fmul fast float %4089, %3899
  %4093 = fmul fast float %4090, %3899
  %4094 = fmul fast float %4091, %3899
  %4095 = fadd fast float %4092, %3683
  %4096 = fadd fast float %4093, %3684
  %4097 = fadd fast float %4094, %3685
  br label %3802

; <label>:4098                                    ; preds = %3802
  br label %4099

; <label>:4099                                    ; preds = %4098, %3579
  %4100 = phi float [ 0.000000e+00, %3579 ], [ %3803, %4098 ]
  %4101 = phi float [ %3594, %3579 ], [ %3804, %4098 ]
  %4102 = phi float [ %3592, %3579 ], [ %3805, %4098 ]
  %4103 = phi float [ %3591, %3579 ], [ %3806, %4098 ]
  %4104 = phi float [ 0.000000e+00, %3579 ], [ %3807, %4098 ]
  %4105 = phi float [ %3585, %3579 ], [ %3808, %4098 ]
  %4106 = phi float [ %3586, %3579 ], [ %3809, %4098 ]
  %4107 = phi float [ %3587, %3579 ], [ %3810, %4098 ]
  %4108 = phi float [ %3620, %3579 ], [ %3811, %4098 ]
  %4109 = phi float [ %3621, %3579 ], [ %3812, %4098 ]
  %4110 = phi float [ %3622, %3579 ], [ %3813, %4098 ]
  %4111 = phi float [ %3590, %3579 ], [ %3814, %4098 ]
  %4112 = phi float [ %3589, %3579 ], [ %3815, %4098 ]
  %4113 = phi float [ 0.000000e+00, %3579 ], [ %3816, %4098 ]
  %4114 = phi float [ %3588, %3579 ], [ %3817, %4098 ]
  %4115 = phi float [ %3582, %3579 ], [ %3818, %4098 ]
  %4116 = phi float [ %3583, %3579 ], [ %3819, %4098 ]
  %4117 = phi float [ %3584, %3579 ], [ %3820, %4098 ]
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4109, float %4110, float %4108, float %4109, float %4110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call float @dx.op.unary.f32(i32 25, float %4118)  ; Rsqrt(value)
  %4120 = fmul fast float %4119, %4108
  %4121 = fmul fast float %4119, %4109
  %4122 = fmul fast float %4119, %4110
  %4123 = fadd fast float %4113, %906
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %4120, float %4121, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = call float @dx.op.unary.f32(i32 25, float %4125)  ; Rsqrt(value)
  %4127 = fmul fast float %4126, %4120
  %4128 = fmul fast float %4126, %4121
  %4129 = fmul fast float %4126, %4122
  %4130 = fadd fast float %4114, 0xBFB99999A0000000
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4132 = fmul fast float %4131, 0x3FF1C71C80000000
  %4133 = call float @dx.op.binary.f32(i32 36, float %4114, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4134 = fsub fast float 1.000000e+00, %4132
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fmul fast float %4135, %4115
  %4137 = fmul fast float %4135, %4116
  %4138 = fmul fast float %4135, %4117
  %4139 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4140 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = fmul fast float %4132, %4115
  %4143 = fmul fast float %4132, %4116
  %4144 = fmul fast float %4132, %4117
  %4145 = fadd fast float %4142, %4133
  %4146 = fadd fast float %4143, %4133
  %4147 = fadd fast float %4144, %4133
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.i32 %4152, 3
  %4154 = and i32 %4153, 8
  %4155 = icmp ne i32 %4154, 0
  %4156 = call float @dx.op.binary.f32(i32 35, float %4139, float %4115)  ; FMax(a,b)
  %4157 = call float @dx.op.binary.f32(i32 35, float %4140, float %4115)  ; FMax(a,b)
  %4158 = call float @dx.op.binary.f32(i32 35, float %4141, float %4115)  ; FMax(a,b)
  %4159 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4160 = select i1 %172, float %4115, float %4139
  %4161 = select i1 %172, float %4159, float %4140
  %4162 = select i1 %172, float 1.000000e+00, float %4141
  %4163 = select i1 %4155, float %4156, float %4160
  %4164 = select i1 %4155, float %4157, float %4161
  %4165 = select i1 %4155, float %4158, float %4162
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = fadd fast float %4167, %130
  %4171 = fadd fast float %4168, %131
  %4172 = fadd fast float %4169, %132
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4176 = fsub fast float %4170, %4174
  %4177 = fsub fast float %4171, %4175
  %4178 = fmul fast float %4176, %4176
  %4179 = fmul fast float %4177, %4177
  %4180 = fadd fast float %4178, %4179
  %4181 = call float @dx.op.unary.f32(i32 24, float %4180)  ; Sqrt(value)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4183 = fcmp fast olt float %4181, %4182
  br i1 %4183, label %4184, label %4251

; <label>:4184                                    ; preds = %4099
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4192 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4193 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4185, 3
  %4195 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4196 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4197 = fadd fast float %4194, %4170
  %4198 = fadd fast float %4195, %4171
  %4199 = fadd fast float %4196, %4172
  %4200 = fmul fast float %4197, %4186
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4188, float %4200)  ; FMad(a,b,c)
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4190, float %4201)  ; FMad(a,b,c)
  %4203 = fmul fast float %4197, %4191
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4192, float %4203)  ; FMad(a,b,c)
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4193, float %4204)  ; FMad(a,b,c)
  %4206 = fsub fast float %4202, %4194
  %4207 = fsub fast float %4205, %4195
  %4208 = fsub fast float %4206, %4174
  %4209 = fadd fast float %4208, %4182
  %4210 = fsub fast float %4207, %4175
  %4211 = fadd fast float %4210, %4182
  %4212 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4213 = fmul fast float %4209, %4212
  %4214 = fmul fast float %4211, %4212
  %4215 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4216 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4217 = fsub fast float 1.000000e+00, %4215
  %4218 = fsub fast float 1.000000e+00, %4216
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4217, float %4218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = fcmp fast ugt float %4220, 0.000000e+00
  br i1 %4221, label %4222, label %4525

; <label>:4222                                    ; preds = %4184
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 2
  %4225 = fmul fast float %4224, %4220
  %4226 = extractvalue %dx.types.CBufRet.f32 %4223, 3
  %4227 = fadd fast float %4226, %4225
  %4228 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4229 = fadd fast float %4227, %4196
  %4230 = fmul fast float %4202, %4190
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4205, float %4193, float %4230)  ; FMad(a,b,c)
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4228, float %4231)  ; FMad(a,b,c)
  %4233 = fsub fast float %4232, %4196
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 2
  %4236 = fsub fast float %4233, %4235
  %4237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4217, float %4218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4217, float %4218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = fadd fast float %4242, %4238
  %4246 = fmul fast float %4245, 0x3F847AE140000000
  %4247 = fadd fast float %4243, %4239
  %4248 = fmul fast float %4247, 0x3F847AE140000000
  %4249 = fadd fast float %4244, %4240
  %4250 = fmul fast float %4249, 0x3F847AE140000000
  br label %4525

; <label>:4251                                    ; preds = %4099
  %4252 = and i32 %148, 1
  %4253 = icmp eq i32 %4252, 0
  br i1 %4253, label %4525, label %4254

; <label>:4254                                    ; preds = %4251
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 0
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4262 = extractvalue %dx.types.CBufRet.f32 %4257, 1
  %4263 = extractvalue %dx.types.CBufRet.f32 %4259, 1
  %4264 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4265 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4266 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4267 = fadd fast float %4264, %4170
  %4268 = fadd fast float %4265, %4171
  %4269 = fadd fast float %4266, %4172
  %4270 = fmul fast float %4267, %4256
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4268, float %4258, float %4270)  ; FMad(a,b,c)
  %4272 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4260, float %4271)  ; FMad(a,b,c)
  %4273 = fmul fast float %4267, %4261
  %4274 = call float @dx.op.tertiary.f32(i32 46, float %4268, float %4262, float %4273)  ; FMad(a,b,c)
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4263, float %4274)  ; FMad(a,b,c)
  %4276 = fsub fast float %4272, %4264
  %4277 = fsub fast float %4275, %4265
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4282 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.i32 %4285, 1
  %4288 = udiv i32 %4287, %4286
  %4289 = fsub fast float %4276, %4279
  %4290 = fsub fast float %4277, %4280
  %4291 = call float @dx.op.binary.f32(i32 35, float %4289, float 0.000000e+00)  ; FMax(a,b)
  %4292 = call float @dx.op.binary.f32(i32 35, float %4290, float 0.000000e+00)  ; FMax(a,b)
  %4293 = call float @dx.op.binary.f32(i32 36, float %4291, float %4281)  ; FMin(a,b)
  %4294 = call float @dx.op.binary.f32(i32 36, float %4292, float %4282)  ; FMin(a,b)
  %4295 = add i32 %4286, -1
  %4296 = add i32 %4288, -1
  %4297 = fmul fast float %4293, %4284
  %4298 = fmul fast float %4294, %4284
  %4299 = fptoui float %4297 to i32
  %4300 = fptoui float %4298 to i32
  %4301 = call i32 @dx.op.binary.i32(i32 40, i32 %4299, i32 %4295)  ; UMin(a,b)
  %4302 = call i32 @dx.op.binary.i32(i32 40, i32 %4300, i32 %4296)  ; UMin(a,b)
  %4303 = mul i32 %4302, %4286
  %4304 = add i32 %4303, %4301
  %4305 = shl i32 %4304, 2
  %4306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.i32 %4306, 0
  %4308 = icmp eq i32 %4307, -1
  br i1 %4308, label %4525, label %4309

; <label>:4309                                    ; preds = %4254
  %4310 = mul i32 %4307, 148
  %4311 = add i32 %4310, 4
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = add i32 %4310, 8
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = add i32 %4310, 36
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = add i32 %4310, 60
  %4321 = add i32 %4310, 92
  %4322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = add i32 %4310, 116
  %4325 = fsub fast float %4276, %4313
  %4326 = fsub fast float %4277, %4316
  %4327 = fmul fast float %4284, %4325
  %4328 = fmul fast float %4284, %4326
  %4329 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4331 = fsub fast float 1.000000e+00, %4330
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = call float @dx.op.unary.f32(i32 83, float %4329)  ; DerivCoarseX(value)
  %4335 = call float @dx.op.unary.f32(i32 83, float %4331)  ; DerivCoarseX(value)
  %4336 = call float @dx.op.unary.f32(i32 84, float %4329)  ; DerivCoarseY(value)
  %4337 = call float @dx.op.unary.f32(i32 84, float %4331)  ; DerivCoarseY(value)
  %4338 = fmul fast float %4334, %4333
  %4339 = fmul fast float %4335, %4333
  %4340 = fmul fast float %4336, %4333
  %4341 = fmul fast float %4337, %4333
  %4342 = call float @dx.op.dot2.f32(i32 54, float %4340, float %4341, float %4340, float %4341)  ; Dot2(ax,ay,bx,by)
  %4343 = call float @dx.op.dot2.f32(i32 54, float %4338, float %4339, float %4338, float %4339)  ; Dot2(ax,ay,bx,by)
  %4344 = call float @dx.op.binary.f32(i32 35, float %4343, float %4342)  ; FMax(a,b)
  %4345 = call float @dx.op.unary.f32(i32 23, float %4344)  ; Log(value)
  %4346 = fmul fast float %4345, 5.000000e-01
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4349 = fadd fast float %4348, %4346
  %4350 = call float @dx.op.binary.f32(i32 35, float %4349, float 0.000000e+00)  ; FMax(a,b)
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4353 = fadd fast float %4352, %4350
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4356 = fadd fast float %4353, %4355
  %4357 = add i32 %4323, 0
  %4358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4357, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4358, i32 0)  ; GetDimensions(handle,mipLevel)
  %4360 = extractvalue %dx.types.Dimensions %4359, 0
  %4361 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4360)  ; FirstbitLo(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 1
  %4364 = sub nsw i32 %4363, %4361
  %4365 = sitofp i32 %4364 to float
  %4366 = fsub fast float %4356, %4365
  %4367 = call float @dx.op.binary.f32(i32 35, float %4366, float 0.000000e+00)  ; FMax(a,b)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4358, %dx.types.Handle %27, float %4329, float %4331, float %4319, float undef, i32 0, i32 0, i32 undef, float %4367)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = fcmp ule float %4369, 0x3FE0101020000000
  %4371 = extractvalue %dx.types.CBufRet.i32 %4362, 0
  %4372 = and i32 %4371, 128
  %4373 = icmp ne i32 %4372, 0
  %4374 = and i1 %4370, %4373
  br i1 %4374, label %4525, label %4375

; <label>:4375                                    ; preds = %4309
  %4376 = add i32 %4310, 20
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = add i32 %4310, 24
  %4380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = add i32 %4310, 40
  %4383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = add i32 %4310, 96
  %4386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.i32 %4386, 0
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4390 = fmul fast float %4389, %4329
  %4391 = fmul fast float %4389, %4331
  %4392 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4393 = fadd fast float %4390, %4392
  %4394 = fadd fast float %4391, %4392
  %4395 = add i32 %4387, 0
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4395, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4396, i32 0)  ; GetDimensions(handle,mipLevel)
  %4398 = extractvalue %dx.types.Dimensions %4397, 0
  %4399 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4398)  ; FirstbitLo(value)
  %4400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.i32 %4400, 1
  %4402 = sub nsw i32 %4401, %4399
  %4403 = sitofp i32 %4402 to float
  %4404 = fsub fast float %4353, %4403
  %4405 = call float @dx.op.binary.f32(i32 35, float %4404, float 0.000000e+00)  ; FMax(a,b)
  %4406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4396, %dx.types.Handle %27, float %4393, float %4394, float %4384, float undef, i32 0, i32 0, i32 undef, float %4405)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = fmul fast float %4407, %4378
  %4409 = fadd fast float %4408, %4381
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.CBufRet.f32 %4410, 2
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 3
  %4418 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4419 = fadd fast float %4415, %4276
  %4420 = fadd fast float %4417, %4277
  %4421 = fadd fast float %4409, %4418
  %4422 = fmul fast float %4419, %4411
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4412, float %4422)  ; FMad(a,b,c)
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4421, float %4413, float %4423)  ; FMad(a,b,c)
  %4425 = fsub fast float %4424, %4418
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 2
  %4428 = fsub fast float %4425, %4427
  %4429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.i32 %4429, 0
  %4431 = call i32 @dx.op.binary.i32(i32 40, i32 %4307, i32 %4430)  ; UMin(a,b)
  %4432 = mul i32 %4431, 36
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 0
  %4435 = add i32 %4432, 4
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %4329
  %4439 = fmul fast float %4437, %4331
  %4440 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4441 = fadd fast float %4438, %4440
  %4442 = fadd fast float %4439, %4440
  %4443 = icmp eq i32 %4434, 0
  br i1 %4443, label %4512, label %4444

; <label>:4444                                    ; preds = %4375
  br label %4445

; <label>:4445                                    ; preds = %4502, %4444
  %4446 = phi float [ %4503, %4502 ], [ 0.000000e+00, %4444 ]
  %4447 = phi float [ %4504, %4502 ], [ 0.000000e+00, %4444 ]
  %4448 = phi float [ %4505, %4502 ], [ 0.000000e+00, %4444 ]
  %4449 = phi float [ %4506, %4502 ], [ 0.000000e+00, %4444 ]
  %4450 = phi float [ %4507, %4502 ], [ 0.000000e+00, %4444 ]
  %4451 = phi float [ %4508, %4502 ], [ 0.000000e+00, %4444 ]
  %4452 = phi i32 [ %4509, %4502 ], [ 0, %4444 ]
  %4453 = shl i32 %4452, 2
  %4454 = add i32 %4320, %4453
  %4455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4454, i32 undef)  ; BufferLoad(srv,index,wot)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = add i32 %4324, %4453
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = add i32 %4459, 0
  %4461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4460, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4462 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4461, i32 0)  ; GetDimensions(handle,mipLevel)
  %4463 = extractvalue %dx.types.Dimensions %4462, 0
  %4464 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4463)  ; FirstbitLo(value)
  %4465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.i32 %4465, 1
  %4467 = sub nsw i32 %4466, %4464
  %4468 = sitofp i32 %4467 to float
  %4469 = fsub fast float %4353, %4468
  %4470 = call float @dx.op.binary.f32(i32 35, float %4469, float 0.000000e+00)  ; FMax(a,b)
  %4471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4461, %dx.types.Handle %27, float %4441, float %4442, float %4456, float undef, i32 0, i32 0, i32 undef, float %4470)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4472 = extractvalue %dx.types.ResRet.f32 %4471, 0
  %4473 = fcmp fast ogt float %4472, 0.000000e+00
  br i1 %4473, label %4474, label %4502

; <label>:4474                                    ; preds = %4445
  %4475 = add i32 %4435, %4453
  %4476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4475, i32 undef)  ; BufferLoad(srv,index,wot)
  %4477 = extractvalue %dx.types.ResRet.i32 %4476, 0
  %4478 = and i32 %4477, 32767
  %4479 = mul nuw nsw i32 %4478, 928
  %4480 = add nuw nsw i32 %4479, 48
  %4481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = add nuw nsw i32 %4479, 60
  %4486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.ResRet.f32 %4486, 1
  %4489 = extractvalue %dx.types.ResRet.f32 %4486, 2
  %4490 = fmul fast float %4482, %4472
  %4491 = fmul fast float %4483, %4472
  %4492 = fmul fast float %4484, %4472
  %4493 = fadd fast float %4490, %4446
  %4494 = fadd fast float %4491, %4447
  %4495 = fadd fast float %4492, %4448
  %4496 = fmul fast float %4487, %4472
  %4497 = fmul fast float %4488, %4472
  %4498 = fmul fast float %4489, %4472
  %4499 = fadd fast float %4496, %4449
  %4500 = fadd fast float %4497, %4450
  %4501 = fadd fast float %4498, %4451
  br label %4502

; <label>:4502                                    ; preds = %4474, %4445
  %4503 = phi float [ %4493, %4474 ], [ %4446, %4445 ]
  %4504 = phi float [ %4494, %4474 ], [ %4447, %4445 ]
  %4505 = phi float [ %4495, %4474 ], [ %4448, %4445 ]
  %4506 = phi float [ %4499, %4474 ], [ %4449, %4445 ]
  %4507 = phi float [ %4500, %4474 ], [ %4450, %4445 ]
  %4508 = phi float [ %4501, %4474 ], [ %4451, %4445 ]
  %4509 = add nuw i32 %4452, 1
  %4510 = icmp eq i32 %4509, %4434
  br i1 %4510, label %4511, label %4445

; <label>:4511                                    ; preds = %4502
  br label %4512

; <label>:4512                                    ; preds = %4511, %4375
  %4513 = phi float [ 0.000000e+00, %4375 ], [ %4503, %4511 ]
  %4514 = phi float [ 0.000000e+00, %4375 ], [ %4504, %4511 ]
  %4515 = phi float [ 0.000000e+00, %4375 ], [ %4505, %4511 ]
  %4516 = phi float [ 0.000000e+00, %4375 ], [ %4506, %4511 ]
  %4517 = phi float [ 0.000000e+00, %4375 ], [ %4507, %4511 ]
  %4518 = phi float [ 0.000000e+00, %4375 ], [ %4508, %4511 ]
  %4519 = fadd fast float %4516, %4513
  %4520 = fmul fast float %4519, 0x3F847AE140000000
  %4521 = fadd fast float %4517, %4514
  %4522 = fmul fast float %4521, 0x3F847AE140000000
  %4523 = fadd fast float %4518, %4515
  %4524 = fmul fast float %4523, 0x3F847AE140000000
  br label %4525

; <label>:4525                                    ; preds = %4512, %4309, %4254, %4251, %4222, %4184
  %4526 = phi float [ %4236, %4222 ], [ -1.310720e+05, %4184 ], [ %4428, %4512 ], [ -1.310720e+05, %4254 ], [ -1.310720e+05, %4309 ], [ -1.310720e+05, %4251 ]
  %4527 = phi float [ %4246, %4222 ], [ 0.000000e+00, %4184 ], [ %4520, %4512 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4251 ]
  %4528 = phi float [ %4248, %4222 ], [ 0.000000e+00, %4184 ], [ %4522, %4512 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4251 ]
  %4529 = phi float [ %4250, %4222 ], [ 0.000000e+00, %4184 ], [ %4524, %4512 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4251 ]
  %4530 = phi i1 [ true, %4222 ], [ false, %4184 ], [ true, %4512 ], [ false, %4254 ], [ false, %4309 ], [ false, %4251 ]
  %4531 = and i32 %148, 3
  %4532 = icmp eq i32 %4531, 1
  %4533 = select i1 %4532, float 1.000000e+00, float 0.000000e+00
  %4534 = fsub fast float %4526, %132
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = select i1 %4530, float %4535, float 1.000000e+00
  %4537 = fmul fast float %4536, %4533
  %4538 = icmp eq i32 %4531, 3
  %4539 = select i1 %4538, float 1.000000e+00, float %4537
  %4540 = call float @dx.op.binary.f32(i32 35, float %4100, float %4539)  ; FMax(a,b)
  %4541 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4542 = fcmp fast une float %4541, 0.000000e+00
  %4543 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.unary.f32(i32 25, float %4543)  ; Rsqrt(value)
  br i1 %4542, label %4552, label %4545

; <label>:4545                                    ; preds = %4525
  %4546 = fmul fast float %4544, %130
  %4547 = fmul fast float %4544, %131
  %4548 = fmul fast float %4544, %132
  %4549 = fsub fast float -0.000000e+00, %4546
  %4550 = fsub fast float -0.000000e+00, %4547
  %4551 = fsub fast float -0.000000e+00, %4548
  br label %4720

; <label>:4552                                    ; preds = %4525
  %4553 = fmul fast float %130, %4544
  %4554 = fsub fast float -0.000000e+00, %4553
  %4555 = fmul fast float %131, %4544
  %4556 = fsub fast float -0.000000e+00, %4555
  %4557 = fmul fast float %132, %4544
  %4558 = fsub fast float -0.000000e+00, %4557
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4556, float %4558, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = fmul fast float %4541, 2.500000e+00
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fmul fast float %4541, 0x4013FFFFE0000000
  %4563 = fadd fast float %4562, 0xBFFFFFFFE0000000
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %4541, 0x4004000020000000
  %4566 = fadd fast float %4565, 0xBFF8000040000000
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4569 = fmul fast float %4130, 1.000000e+01
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fsub fast float 3.000000e+00, %4571
  %4573 = fmul fast float %4570, %4570
  %4574 = fmul fast float %4573, %4572
  %4575 = fsub fast float 1.000000e+00, %4574
  %4576 = fsub fast float 0x3FE3333340000000, %4151
  %4577 = fmul fast float %4576, 0x400AAAAAA0000000
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4575, %4578
  %4580 = fmul fast float %4163, 0x3FEA2B8620000000
  %4581 = fmul fast float %4164, 0x3FEA2B8620000000
  %4582 = fmul fast float %4165, 0x3FEA2B8620000000
  %4583 = fadd fast float %4580, 0x3FC81DFBA0000000
  %4584 = fmul fast float %4583, %4163
  %4585 = fadd fast float %4584, 0x3F910E6020000000
  %4586 = fadd fast float %4581, 0x3FC81DFBA0000000
  %4587 = fmul fast float %4586, %4164
  %4588 = fadd fast float %4587, 0x3F910E6020000000
  %4589 = fadd fast float %4582, 0x3FC81DFBA0000000
  %4590 = fmul fast float %4589, %4165
  %4591 = fadd fast float %4590, 0x3F910E6020000000
  %4592 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = fsub fast float %4592, %4163
  %4596 = fsub fast float %4593, %4164
  %4597 = fsub fast float %4594, %4165
  %4598 = fmul fast float %4595, %4568
  %4599 = fmul fast float %4598, %4579
  %4600 = fmul fast float %4596, %4568
  %4601 = fmul fast float %4600, %4579
  %4602 = fmul fast float %4597, %4568
  %4603 = fmul fast float %4602, %4579
  %4604 = fadd fast float %4599, %4163
  %4605 = fadd fast float %4601, %4164
  %4606 = fadd fast float %4603, %4165
  %4607 = fmul fast float %4111, %4111
  %4608 = fmul fast float %4607, %4607
  %4609 = fadd fast float %4564, 1.000000e+00
  %4610 = fsub fast float %4609, %4579
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fsub fast float 1.000000e+00, %4608
  %4615 = call float @dx.op.binary.f32(i32 36, float %4611, float %4614)  ; FMin(a,b)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4617 = call float @dx.op.binary.f32(i32 35, float %4615, float %4616)  ; FMax(a,b)
  %4618 = fadd fast float %4613, 0xBFE4CCCCC0000000
  %4619 = fmul fast float %4618, 0x4006DB6DA0000000
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fmul fast float %4620, 2.000000e+00
  %4622 = fsub fast float 3.000000e+00, %4621
  %4623 = bitcast float %4148 to i32
  %4624 = ashr i32 %4623, 1
  %4625 = add nsw i32 %4624, 532487669
  %4626 = bitcast i32 %4625 to float
  %4627 = fsub fast float 1.000000e+00, %4626
  %4628 = bitcast float %4627 to i32
  %4629 = sub nsw i32 2129859010, %4628
  %4630 = bitcast i32 %4629 to float
  %4631 = fmul fast float %4630, 2.000000e+00
  %4632 = bitcast float %4149 to i32
  %4633 = ashr i32 %4632, 1
  %4634 = add nsw i32 %4633, 532487669
  %4635 = bitcast i32 %4634 to float
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = fmul fast float %4639, 2.000000e+00
  %4641 = bitcast float %4150 to i32
  %4642 = ashr i32 %4641, 1
  %4643 = add nsw i32 %4642, 532487669
  %4644 = bitcast i32 %4643 to float
  %4645 = fsub fast float 1.000000e+00, %4644
  %4646 = bitcast float %4645 to i32
  %4647 = sub nsw i32 2129859010, %4646
  %4648 = bitcast i32 %4647 to float
  %4649 = fmul fast float %4648, 2.000000e+00
  %4650 = fsub fast float 0x4002A9FBE0000000, %4631
  %4651 = fadd fast float %4631, 0x3FD54FDF00000000
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, %4650
  %4656 = fmul fast float %4655, %4655
  %4657 = fsub fast float 0x4002A9FBE0000000, %4640
  %4658 = fadd fast float %4640, 0x3FD54FDF00000000
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, %4657
  %4663 = fmul fast float %4662, %4662
  %4664 = fsub fast float 0x4002A9FBE0000000, %4649
  %4665 = fadd fast float %4649, 0x3FD54FDF00000000
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, %4664
  %4670 = fmul fast float %4669, %4669
  %4671 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4656)  ; FMax(a,b)
  %4672 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4663)  ; FMax(a,b)
  %4673 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4670)  ; FMax(a,b)
  %4674 = fsub fast float 1.000000e+00, %4559
  %4675 = fadd fast float %4674, %4575
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fsub fast float 1.000000e+00, %4539
  %4678 = fmul fast float %4617, %4677
  %4679 = fmul fast float %4620, %4620
  %4680 = fmul fast float %4679, %4678
  %4681 = fmul fast float %4680, %4622
  %4682 = fmul fast float %4677, 0xBFE99999A0000000
  %4683 = fmul fast float %4682, %4568
  %4684 = fmul fast float %4683, %4579
  %4685 = fadd fast float %4684, 1.000000e+00
  %4686 = fadd fast float %4151, -1.000000e+00
  %4687 = fmul fast float %4685, %4686
  %4688 = fadd fast float %4687, 1.000000e+00
  %4689 = fsub fast float %4671, %4148
  %4690 = fsub fast float %4672, %4149
  %4691 = fsub fast float %4673, %4150
  %4692 = fmul fast float %4681, %4689
  %4693 = fmul fast float %4681, %4690
  %4694 = fmul fast float %4681, %4691
  %4695 = fadd fast float %4692, %4148
  %4696 = fadd fast float %4693, %4149
  %4697 = fadd fast float %4694, %4150
  %4698 = fsub fast float %74, %4127
  %4699 = fsub fast float %75, %4128
  %4700 = fsub fast float %76, %4129
  %4701 = fmul fast float %4681, %4698
  %4702 = fmul fast float %4681, %4699
  %4703 = fmul fast float %4681, %4700
  %4704 = fadd fast float %4701, %4127
  %4705 = fadd fast float %4702, %4128
  %4706 = fadd fast float %4703, %4129
  %4707 = fmul fast float %4681, %4676
  %4708 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4709 = fsub fast float 1.000000e+00, %4708
  %4710 = fmul fast float %4707, %4709
  %4711 = fadd fast float %4710, %4708
  %4712 = fsub fast float 1.000000e+00, %4111
  %4713 = fmul fast float %4681, %4712
  %4714 = fadd fast float %4713, %4111
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4704, float %4705, float %4706, float %4704, float %4705, float %4706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 25, float %4715)  ; Rsqrt(value)
  %4717 = fmul fast float %4704, %4716
  %4718 = fmul fast float %4705, %4716
  %4719 = fmul fast float %4706, %4716
  br label %4720

; <label>:4720                                    ; preds = %4552, %4545
  %4721 = phi float [ %4551, %4545 ], [ %4558, %4552 ]
  %4722 = phi float [ %4550, %4545 ], [ %4556, %4552 ]
  %4723 = phi float [ %4549, %4545 ], [ %4554, %4552 ]
  %4724 = phi float [ %4548, %4545 ], [ %4557, %4552 ]
  %4725 = phi float [ %4547, %4545 ], [ %4555, %4552 ]
  %4726 = phi float [ %4546, %4545 ], [ %4553, %4552 ]
  %4727 = phi float [ %4148, %4545 ], [ %4695, %4552 ]
  %4728 = phi float [ %4149, %4545 ], [ %4696, %4552 ]
  %4729 = phi float [ %4150, %4545 ], [ %4697, %4552 ]
  %4730 = phi float [ %4127, %4545 ], [ %4717, %4552 ]
  %4731 = phi float [ %4128, %4545 ], [ %4718, %4552 ]
  %4732 = phi float [ %4129, %4545 ], [ %4719, %4552 ]
  %4733 = phi float [ %4163, %4545 ], [ %4604, %4552 ]
  %4734 = phi float [ %4164, %4545 ], [ %4605, %4552 ]
  %4735 = phi float [ %4165, %4545 ], [ %4606, %4552 ]
  %4736 = phi float [ %4151, %4545 ], [ %4711, %4552 ]
  %4737 = phi float [ %4111, %4545 ], [ %4714, %4552 ]
  %4738 = select i1 %172, float 0.000000e+00, float %4729
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %4723, float %4722, float %4721)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4725, float %4724, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = fmul fast float %4741, 2.000000e+00
  %4743 = fmul fast float %4742, %4730
  %4744 = fmul fast float %4742, %4731
  %4745 = fmul fast float %4742, %4732
  %4746 = fsub fast float %4726, %4743
  %4747 = fsub fast float %4725, %4744
  %4748 = fsub fast float %4724, %4745
  %4749 = call float @dx.op.binary.f32(i32 36, float %4737, float 1.000000e+00)  ; FMin(a,b)
  %4750 = fsub fast float 1.000000e+00, %4737
  %4751 = bitcast float %4750 to i32
  %4752 = sub nsw i32 2129859010, %4751
  %4753 = fsub fast float 1.000000e+00, %44
  %4754 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.binary.f32(i32 35, float %4754, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4756 = fdiv fast float %4753, %4755
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4758, 5.000000e-01
  %4760 = fadd fast float %4759, 5.000000e-01
  %4761 = fmul fast float %4760, %44
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = fmul fast float %4763, %4756
  %4765 = fadd fast float %4761, %4764
  %4766 = fsub fast float 5.000000e-01, %4759
  %4767 = fmul fast float %4766, %4733
  %4768 = fmul fast float %4766, %4734
  %4769 = fmul fast float %4766, %4735
  %4770 = fadd fast float %4765, %4767
  %4771 = fadd fast float %4765, %4768
  %4772 = fadd fast float %4765, %4769
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4747, float %4748, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fmul fast float %4774, 5.000000e-01
  %4776 = fadd fast float %4775, 5.000000e-01
  %4777 = fmul fast float %4776, %44
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4747, float %4748, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, %4756
  %4781 = fadd fast float %4777, %4780
  %4782 = fsub fast float 5.000000e-01, %4775
  %4783 = fmul fast float %4782, %4733
  %4784 = fmul fast float %4782, %4734
  %4785 = fmul fast float %4782, %4735
  %4786 = fadd fast float %4781, %4783
  %4787 = fadd fast float %4781, %4784
  %4788 = fadd fast float %4781, %4785
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = call float @dx.op.binary.f32(i32 36, float %4733, float %4790)  ; FMin(a,b)
  %4792 = fsub fast float 1.000000e+00, %4749
  %4793 = fmul fast float %4791, %4792
  %4794 = fsub fast float 1.000000e+00, %4793
  %4795 = bitcast float %4794 to i32
  %4796 = sub nsw i32 2129859010, %4795
  %4797 = bitcast i32 %4796 to float
  %4798 = call float @dx.op.binary.f32(i32 36, float %4734, float %4790)  ; FMin(a,b)
  %4799 = fmul fast float %4798, %4792
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = call float @dx.op.binary.f32(i32 36, float %4735, float %4790)  ; FMin(a,b)
  %4805 = fmul fast float %4804, %4792
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4749, %45
  %4811 = fmul fast float %4810, %4770
  %4812 = fmul fast float %4811, %4797
  %4813 = fmul fast float %4749, %46
  %4814 = fmul fast float %4813, %4771
  %4815 = fmul fast float %4814, %4803
  %4816 = fmul fast float %4749, %47
  %4817 = fmul fast float %4816, %4772
  %4818 = fmul fast float %4817, %4809
  %4819 = call float @dx.op.binary.f32(i32 36, float %4727, float %4790)  ; FMin(a,b)
  %4820 = fmul fast float %4819, %4792
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = call float @dx.op.binary.f32(i32 36, float %4728, float %4790)  ; FMin(a,b)
  %4826 = fmul fast float %4825, %4792
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = bitcast float %4827 to i32
  %4829 = sub nsw i32 2129859010, %4828
  %4830 = bitcast i32 %4829 to float
  %4831 = call float @dx.op.binary.f32(i32 36, float %4738, float %4790)  ; FMin(a,b)
  %4832 = fmul fast float %4831, %4792
  %4833 = fsub fast float 1.000000e+00, %4832
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = fmul fast float %4810, %4786
  %4838 = fmul fast float %4837, %4824
  %4839 = fmul fast float %4813, %4787
  %4840 = fmul fast float %4839, %4830
  %4841 = fmul fast float %4816, %4788
  %4842 = fmul fast float %4841, %4836
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4815, float %4818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = select i1 %172, float 0.000000e+00, float %4812
  %4845 = select i1 %172, float %4843, float %4815
  %4846 = select i1 %172, float 0.000000e+00, float %4818
  %4847 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4840, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = select i1 %172, float 0.000000e+00, float %4838
  %4849 = select i1 %172, float %4847, float %4840
  %4850 = select i1 %172, float 0.000000e+00, float %4842
  %4851 = fmul fast float %4740, 9.843750e-01
  %4852 = fmul fast float %4736, 9.843750e-01
  %4853 = fadd fast float %4851, 7.812500e-03
  %4854 = fadd fast float %4852, 7.812500e-03
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4853, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 2
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 3
  %4858 = fmul fast float %4856, %4727
  %4859 = fmul fast float %4856, %4728
  %4860 = fmul fast float %4856, %4738
  %4861 = fadd fast float %4858, %4857
  %4862 = fadd fast float %4859, %4857
  %4863 = fadd fast float %4860, %4857
  %4864 = fcmp fast ogt float %4104, 0.000000e+00
  br i1 %4864, label %4865, label %4891

; <label>:4865                                    ; preds = %4720
  %4866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4104, float %4740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.f32 %4866, 2
  %4870 = fadd fast float %4867, -5.000000e-01
  %4871 = fadd fast float %4868, -5.000000e-01
  %4872 = fadd fast float %4869, -5.000000e-01
  %4873 = fsub fast float 1.000000e+00, %4727
  %4874 = fsub fast float 1.000000e+00, %4728
  %4875 = fsub fast float 1.000000e+00, %4738
  %4876 = fmul fast float %4727, 4.000000e+00
  %4877 = fmul fast float %4876, %4873
  %4878 = fmul fast float %4877, %4870
  %4879 = fmul fast float %4728, 4.000000e+00
  %4880 = fmul fast float %4879, %4874
  %4881 = fmul fast float %4880, %4871
  %4882 = fmul fast float %4738, 4.000000e+00
  %4883 = fmul fast float %4882, %4875
  %4884 = fmul fast float %4883, %4872
  %4885 = fadd fast float %4878, %4861
  %4886 = fadd fast float %4881, %4862
  %4887 = fadd fast float %4884, %4863
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  br label %4891

; <label>:4891                                    ; preds = %4865, %4720
  %4892 = phi float [ %4888, %4865 ], [ %4861, %4720 ]
  %4893 = phi float [ %4889, %4865 ], [ %4862, %4720 ]
  %4894 = phi float [ %4890, %4865 ], [ %4863, %4720 ]
  %4895 = call float @dx.op.binary.f32(i32 35, float %4893, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4892, float %4895)  ; FMax(a,b)
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = fmul fast float %4897, %4844
  %4899 = fmul fast float %4897, %4845
  %4900 = fmul fast float %4897, %4846
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = fcmp fast ogt float %4901, 0x3E7FF19E20000000
  %4903 = fdiv fast float 1.000000e+00, %4901
  %4904 = select i1 %4902, float %4903, float 0.000000e+00
  %4905 = fmul fast float %4904, %4733
  %4906 = fmul fast float %4904, %4734
  %4907 = fmul fast float %4904, %4735
  %4908 = fadd fast float %4905, -1.000000e+00
  %4909 = fadd fast float %4906, -1.000000e+00
  %4910 = fadd fast float %4907, -1.000000e+00
  %4911 = fmul fast float %4908, 5.000000e-01
  %4912 = fmul fast float %4909, 5.000000e-01
  %4913 = fmul fast float %4910, 5.000000e-01
  %4914 = fadd fast float %4911, 1.000000e+00
  %4915 = fadd fast float %4912, 1.000000e+00
  %4916 = fadd fast float %4913, 1.000000e+00
  %4917 = fmul fast float %4892, %4848
  %4918 = fmul fast float %4893, %4849
  %4919 = fmul fast float %4894, %4850
  %4920 = fsub fast float 1.000000e+00, %4740
  %4921 = bitcast float %4920 to i32
  %4922 = sitofp i32 %4921 to float
  %4923 = fmul fast float %4922, 5.000000e+00
  %4924 = fadd fast float %4923, 0xC1EFBF8940000000
  %4925 = fptosi float %4924 to i32
  %4926 = bitcast i32 %4925 to float
  %4927 = fmul fast float %4926, %4103
  %4928 = fmul fast float %4844, %4927
  %4929 = fmul fast float %4928, %4897
  %4930 = fmul fast float %4929, %4914
  %4931 = fmul fast float %4845, %4927
  %4932 = fmul fast float %4931, %4897
  %4933 = fmul fast float %4932, %4915
  %4934 = fmul fast float %4846, %4927
  %4935 = fmul fast float %4934, %4897
  %4936 = fmul fast float %4935, %4916
  %4937 = fmul fast float %4898, %4124
  %4938 = fmul fast float %4899, %4124
  %4939 = fmul fast float %4900, %4124
  %4940 = fadd fast float %4917, %4105
  %4941 = fadd fast float %4940, %4930
  %4942 = fmul fast float %4941, %4124
  %4943 = fadd fast float %4918, %4106
  %4944 = fadd fast float %4943, %4933
  %4945 = fmul fast float %4944, %4124
  %4946 = fadd fast float %4919, %4107
  %4947 = fadd fast float %4946, %4936
  %4948 = fmul fast float %4947, %4124
  %4949 = bitcast i32 %4752 to float
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 3
  %4952 = fcmp fast oeq float %4951, 0.000000e+00
  br i1 %4952, label %5180, label %4953

; <label>:4953                                    ; preds = %4891
  %4954 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4950, 1
  %4956 = extractvalue %dx.types.CBufRet.f32 %4950, 2
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4960 = extractvalue %dx.types.CBufRet.f32 %4957, 2
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = select i1 %172, float %4962, float %4958
  %4966 = select i1 %172, float %4964, float %4959
  %4967 = select i1 %172, float %4963, float %4960
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4970 = fcmp fast une float %4969, 0.000000e+00
  br i1 %4970, label %4971, label %4988

; <label>:4971                                    ; preds = %4953
  %4972 = fptoui float %67 to i32
  %4973 = fptoui float %68 to i32
  %4974 = lshr i32 %4972, 4
  %4975 = lshr i32 %4973, 4
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = fptoui float %4977 to i32
  %4979 = add i32 %4978, 15
  %4980 = lshr i32 %4979, 4
  %4981 = mul i32 %4980, %4975
  %4982 = add i32 %4981, %4974
  %4983 = shl i32 %4982, 3
  %4984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4983, i32 undef)  ; BufferLoad(srv,index,wot)
  %4985 = extractvalue %dx.types.ResRet.i32 %4984, 0
  %4986 = and i32 %4985, -268435456
  %4987 = icmp eq i32 %4986, -1342177280
  br i1 %4987, label %4998, label %4988

; <label>:4988                                    ; preds = %4971, %4953
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4989, 3
  %4992 = fmul fast float %4990, %67
  %4993 = fmul fast float %4991, %68
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4992, float %4993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.ResRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.ResRet.f32 %4994, 2
  br label %4998

; <label>:4998                                    ; preds = %4988, %4971
  %4999 = phi float [ %4995, %4988 ], [ 0.000000e+00, %4971 ]
  %5000 = phi float [ %4996, %4988 ], [ 0.000000e+00, %4971 ]
  %5001 = phi float [ %4997, %4988 ], [ 0.000000e+00, %4971 ]
  %5002 = call float @dx.op.binary.f32(i32 36, float %5000, float %5001)  ; FMin(a,b)
  %5003 = call float @dx.op.binary.f32(i32 36, float %4999, float %5002)  ; FMin(a,b)
  %5004 = fcmp fast ogt float %5003, 0.000000e+00
  br i1 %5004, label %5005, label %5180, !dx.controlflow.hints !72

; <label>:5005                                    ; preds = %4998
  %5006 = fmul fast float %4999, %4965
  %5007 = fmul fast float %5000, %4966
  %5008 = fmul fast float %5001, %4967
  %5009 = fsub fast float %4954, %4726
  %5010 = fsub fast float %4955, %4725
  %5011 = fsub fast float %4956, %4724
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float %5009, float %5010, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = call float @dx.op.unary.f32(i32 25, float %5012)  ; Rsqrt(value)
  %5014 = fmul fast float %5013, %5009
  %5015 = fmul fast float %5013, %5010
  %5016 = fmul fast float %5013, %5011
  %5017 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4722, float %4721, float %5014, float %5015, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5020 = fmul fast float %5019, %5019
  %5021 = fmul fast float %5020, %4949
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, %5019
  %5024 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %5014, float %5015, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = fmul fast float %5024, %5024
  %5026 = call float @dx.op.unary.f32(i32 6, float %5017)  ; FAbs(value)
  %5027 = fsub fast float 1.000000e+00, %4736
  %5028 = call float @dx.op.binary.f32(i32 35, float %5027, float 0x3F847AE140000000)  ; FMax(a,b)
  %5029 = fmul fast float %5028, %5028
  %5030 = fmul fast float %5029, %5029
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = fmul fast float %4740, %4740
  %5033 = fmul fast float %5032, %5031
  %5034 = fadd fast float %5033, %5030
  %5035 = bitcast float %5034 to i32
  %5036 = ashr i32 %5035, 1
  %5037 = add nsw i32 %5036, 532487669
  %5038 = bitcast i32 %5037 to float
  %5039 = fadd fast float %5038, %4740
  %5040 = fmul fast float %5030, %5025
  %5041 = fsub fast float 1.000000e+00, %5025
  %5042 = fadd fast float %5041, %5040
  %5043 = fmul fast float %5026, %5026
  %5044 = fmul fast float %5043, %5031
  %5045 = fadd fast float %5044, %5030
  %5046 = bitcast float %5045 to i32
  %5047 = ashr i32 %5046, 1
  %5048 = add nsw i32 %5047, 532487669
  %5049 = bitcast i32 %5048 to float
  %5050 = fadd fast float %5049, %5026
  %5051 = fmul fast float %5042, %5042
  %5052 = fmul fast float %5051, %5039
  %5053 = fmul fast float %5052, %5050
  %5054 = fdiv fast float 0x3FF0A00000000000, %5053
  %5055 = fmul fast float %5054, %5030
  %5056 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = bitcast float %5057 to i32
  %5059 = sitofp i32 %5058 to float
  %5060 = fmul fast float %5059, 5.000000e+00
  %5061 = fadd fast float %5060, 0xC1EFBF8940000000
  %5062 = fptosi float %5061 to i32
  %5063 = bitcast i32 %5062 to float
  %5064 = fsub fast float 1.000000e+00, %4727
  %5065 = fsub fast float 1.000000e+00, %4728
  %5066 = fsub fast float 1.000000e+00, %4738
  %5067 = fmul fast float %5063, %5064
  %5068 = fmul fast float %5063, %5065
  %5069 = fmul fast float %5063, %5066
  %5070 = fadd fast float %5067, %4727
  %5071 = fadd fast float %5068, %4728
  %5072 = fadd fast float %5069, %4738
  br i1 %4864, label %5073, label %5096

; <label>:5073                                    ; preds = %5005
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4104, float %5056, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = fadd fast float %5075, -5.000000e-01
  %5079 = fadd fast float %5076, -5.000000e-01
  %5080 = fadd fast float %5077, -5.000000e-01
  %5081 = fmul fast float %4727, 4.000000e+00
  %5082 = fmul fast float %5081, %5064
  %5083 = fmul fast float %5082, %5078
  %5084 = fmul fast float %4728, 4.000000e+00
  %5085 = fmul fast float %5084, %5065
  %5086 = fmul fast float %5085, %5079
  %5087 = fmul fast float %4738, 4.000000e+00
  %5088 = fmul fast float %5087, %5066
  %5089 = fmul fast float %5088, %5080
  %5090 = fadd fast float %5083, %5070
  %5091 = fadd fast float %5086, %5071
  %5092 = fadd fast float %5089, %5072
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  br label %5096

; <label>:5096                                    ; preds = %5073, %5005
  %5097 = phi float [ %5093, %5073 ], [ %5070, %5005 ]
  %5098 = phi float [ %5094, %5073 ], [ %5071, %5005 ]
  %5099 = phi float [ %5095, %5073 ], [ %5072, %5005 ]
  %5100 = fmul fast float %5017, 9.843750e-01
  %5101 = fadd fast float %5100, 7.812500e-03
  %5102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5101, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 3
  %5105 = fmul fast float %5103, %4727
  %5106 = fmul fast float %5103, %4728
  %5107 = fmul fast float %5103, %4738
  %5108 = fadd fast float %5105, %5104
  %5109 = fadd fast float %5106, %5104
  %5110 = fadd fast float %5107, %5104
  br i1 %4864, label %5111, label %5134

; <label>:5111                                    ; preds = %5096
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4104, float %5017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = fadd fast float %5113, -5.000000e-01
  %5117 = fadd fast float %5114, -5.000000e-01
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fmul fast float %4727, 4.000000e+00
  %5120 = fmul fast float %5119, %5064
  %5121 = fmul fast float %5120, %5116
  %5122 = fmul fast float %4728, 4.000000e+00
  %5123 = fmul fast float %5122, %5065
  %5124 = fmul fast float %5123, %5117
  %5125 = fmul fast float %4738, 4.000000e+00
  %5126 = fmul fast float %5125, %5066
  %5127 = fmul fast float %5126, %5118
  %5128 = fadd fast float %5121, %5108
  %5129 = fadd fast float %5124, %5109
  %5130 = fadd fast float %5127, %5110
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  br label %5134

; <label>:5134                                    ; preds = %5111, %5096
  %5135 = phi float [ %5131, %5111 ], [ %5108, %5096 ]
  %5136 = phi float [ %5132, %5111 ], [ %5109, %5096 ]
  %5137 = phi float [ %5133, %5111 ], [ %5110, %5096 ]
  %5138 = call float @dx.op.binary.f32(i32 35, float %5136, float %5137)  ; FMax(a,b)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5135, float %5138)  ; FMax(a,b)
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = fmul fast float %5097, %5055
  %5142 = fmul fast float %5098, %5055
  %5143 = fmul fast float %5099, %5055
  %5144 = fsub fast float 1.000000e+00, %5018
  %5145 = bitcast float %5144 to i32
  %5146 = sitofp i32 %5145 to float
  %5147 = fmul fast float %5146, 5.000000e+00
  %5148 = fadd fast float %5147, 0xC1EFBF8940000000
  %5149 = fptosi float %5148 to i32
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %5150, %4103
  %5152 = fmul fast float %5140, %5151
  %5153 = fmul fast float %5152, %4914
  %5154 = fmul fast float %5152, %4915
  %5155 = fmul fast float %5152, %4916
  %5156 = fadd fast float %5153, %5141
  %5157 = fadd fast float %5154, %5142
  %5158 = fadd fast float %5155, %5143
  %5159 = fmul fast float %5023, %5006
  %5160 = fmul fast float %5159, %5140
  %5161 = fmul fast float %5023, %5007
  %5162 = fmul fast float %5161, %5140
  %5163 = fmul fast float %5023, %5008
  %5164 = fmul fast float %5163, %5140
  %5165 = fmul fast float %5159, %5156
  %5166 = fmul fast float %5161, %5157
  %5167 = fmul fast float %5163, %5158
  %5168 = fadd fast float %5160, %4898
  %5169 = fmul fast float %5168, %4124
  %5170 = fadd fast float %5162, %4899
  %5171 = fmul fast float %5170, %4124
  %5172 = fadd fast float %5164, %4900
  %5173 = fmul fast float %5172, %4124
  %5174 = fadd fast float %5165, %4941
  %5175 = fmul fast float %5174, %4124
  %5176 = fadd fast float %5166, %4944
  %5177 = fmul fast float %5176, %4124
  %5178 = fadd fast float %5167, %4947
  %5179 = fmul fast float %5178, %4124
  br label %5180

; <label>:5180                                    ; preds = %5134, %4998, %4891
  %5181 = phi float [ %4942, %4891 ], [ %4942, %4998 ], [ %5175, %5134 ]
  %5182 = phi float [ %4945, %4891 ], [ %4945, %4998 ], [ %5177, %5134 ]
  %5183 = phi float [ %4948, %4891 ], [ %4948, %4998 ], [ %5179, %5134 ]
  %5184 = phi float [ %4937, %4891 ], [ %4937, %4998 ], [ %5169, %5134 ]
  %5185 = phi float [ %4938, %4891 ], [ %4938, %4998 ], [ %5171, %5134 ]
  %5186 = phi float [ %4939, %4891 ], [ %4939, %4998 ], [ %5173, %5134 ]
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 0
  %5189 = icmp eq i32 %5188, 0
  br i1 %5189, label %5624, label %5190

; <label>:5190                                    ; preds = %5180
  %5191 = fptoui float %67 to i32
  %5192 = fptoui float %68 to i32
  %5193 = lshr i32 %5191, 4
  %5194 = lshr i32 %5192, 4
  %5195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.i32 %5195, 0
  %5197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5194, i32 %5196, i32 %5193)  ; UMad(a,b,c)
  %5198 = add nsw i32 %5188, -1
  %5199 = call i32 @dx.op.binary.i32(i32 37, i32 %5198, i32 0)  ; IMax(a,b)
  %5200 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %5201 = fptoui float %5200 to i32
  %5202 = lshr i32 %5201, 5
  %5203 = call i32 @dx.op.binary.i32(i32 40, i32 %5202, i32 8191)  ; UMin(a,b)
  %5204 = shl i32 %5203, 2
  %5205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5204, i32 undef)  ; BufferLoad(srv,index,wot)
  %5206 = extractvalue %dx.types.ResRet.i32 %5205, 0
  %5207 = lshr i32 %5206, 16
  %5208 = and i32 %5206, 65535
  %5209 = lshr i32 %5206, 21
  %5210 = lshr i32 %5208, 5
  %5211 = call i32 @dx.op.binary.i32(i32 40, i32 %5210, i32 %5199)  ; UMin(a,b)
  %5212 = icmp ugt i32 %5209, %5211
  br i1 %5212, label %5624, label %5213

; <label>:5213                                    ; preds = %5190
  br label %5214

; <label>:5214                                    ; preds = %5614, %5213
  %5215 = phi i32 [ %5621, %5614 ], [ %5209, %5213 ]
  %5216 = phi float [ %5615, %5614 ], [ %5181, %5213 ]
  %5217 = phi float [ %5616, %5614 ], [ %5182, %5213 ]
  %5218 = phi float [ %5617, %5614 ], [ %5183, %5213 ]
  %5219 = phi float [ %5618, %5614 ], [ %5184, %5213 ]
  %5220 = phi float [ %5619, %5614 ], [ %5185, %5213 ]
  %5221 = phi float [ %5620, %5614 ], [ %5186, %5213 ]
  %5222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.i32 %5222, 0
  %5224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5197, i32 %5223, i32 %5215)  ; UMad(a,b,c)
  %5225 = shl i32 %5224, 2
  %5226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.i32 %5226, 0
  %5228 = shl i32 %5215, 5
  %5229 = sub nsw i32 %5207, %5228
  %5230 = call i32 @dx.op.binary.i32(i32 37, i32 %5229, i32 0)  ; IMax(a,b)
  %5231 = call i32 @dx.op.binary.i32(i32 38, i32 %5230, i32 31)  ; IMin(a,b)
  %5232 = sub nsw i32 1, %5207
  %5233 = add nsw i32 %5232, %5208
  %5234 = call i32 @dx.op.binary.i32(i32 37, i32 %5233, i32 0)  ; IMax(a,b)
  %5235 = call i32 @dx.op.binary.i32(i32 38, i32 %5234, i32 32)  ; IMin(a,b)
  %5236 = and i32 %5235, 31
  %5237 = shl i32 -1, %5236
  %5238 = xor i32 %5237, -1
  %5239 = and i32 %5231, 31
  %5240 = shl i32 %5238, %5239
  %5241 = icmp eq i32 %5235, 32
  %5242 = select i1 %5241, i32 -1, i32 %5240
  %5243 = and i32 %5242, %5227
  %5244 = icmp eq i32 %5243, 0
  br i1 %5244, label %5614, label %5245

; <label>:5245                                    ; preds = %5214
  br label %5246

; <label>:5246                                    ; preds = %5326, %5245
  %5247 = phi i32 [ %5258, %5326 ], [ %5243, %5245 ]
  %5248 = phi float [ %5327, %5326 ], [ %5216, %5245 ]
  %5249 = phi float [ %5328, %5326 ], [ %5217, %5245 ]
  %5250 = phi float [ %5329, %5326 ], [ %5218, %5245 ]
  %5251 = phi float [ %5330, %5326 ], [ %5219, %5245 ]
  %5252 = phi float [ %5331, %5326 ], [ %5220, %5245 ]
  %5253 = phi float [ %5332, %5326 ], [ %5221, %5245 ]
  %5254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5247)  ; FirstbitLo(value)
  %5255 = add i32 %5254, %5228
  %5256 = and i32 %5254, 31
  %5257 = shl i32 1, %5256
  %5258 = xor i32 %5257, %5247
  %5259 = mul i32 %5255, 112
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.ResRet.f32 %5260, 2
  %5264 = or i32 %5259, 12
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = add i32 %5259, 44
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = add i32 %5259, 48
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = add i32 %5259, 80
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 2
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %172, float %5277, float %5261
  %5281 = select i1 %172, float %5279, float %5262
  %5282 = select i1 %172, float %5278, float %5263
  %5283 = fsub fast float %5272, %130
  %5284 = fsub fast float %5273, %131
  %5285 = fsub fast float %5274, %132
  %5286 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5283, float %5284, float %5285)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.unary.f32(i32 24, float %5286)  ; Sqrt(value)
  %5288 = fdiv fast float 1.000000e+00, %5287
  %5289 = fmul fast float %5288, %5283
  %5290 = fmul fast float %5288, %5284
  %5291 = fmul fast float %5288, %5285
  %5292 = fadd fast float %5287, %5266
  %5293 = fdiv fast float 1.000000e+00, %5292
  %5294 = fmul float %5269, %5293
  %5295 = fmul float %5294, %5294
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = and i32 %5257, %5243
  %5298 = icmp eq i32 %5297, 0
  br i1 %5298, label %5321, label %5299, !dx.controlflow.hints !73

; <label>:5299                                    ; preds = %5246
  %5300 = lshr i32 %5191, 5
  %5301 = lshr i32 %5192, 5
  %5302 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5300, i32 %5301, i32 %5255, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5303 = extractvalue %dx.types.ResRet.i32 %5302, 0
  %5304 = and i32 %5303, 3
  %5305 = icmp eq i32 %5304, 0
  %5306 = select i1 %5305, float 1.000000e+00, float 0.000000e+00
  %5307 = icmp eq i32 %5304, 3
  br i1 %5307, label %5308, label %5321

; <label>:5308                                    ; preds = %5299
  %5309 = lshr i32 %5303, 10
  %5310 = and i32 %5309, 8160
  %5311 = and i32 %5192, 31
  %5312 = or i32 %5310, %5311
  %5313 = lshr i32 %5303, 1
  %5314 = and i32 %5313, 16352
  %5315 = and i32 %5191, 31
  %5316 = or i32 %5314, %5315
  %5317 = lshr i32 %5303, 23
  %5318 = and i32 %5317, 255
  %5319 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5316, i32 %5312, i32 %5318, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  br label %5321

; <label>:5321                                    ; preds = %5308, %5299, %5246
  %5322 = phi float [ %5320, %5308 ], [ %5306, %5299 ], [ 0.000000e+00, %5246 ]
  %5323 = call float @dx.op.binary.f32(i32 36, float %5322, float %5322)  ; FMin(a,b)
  %5324 = call float @dx.op.binary.f32(i32 36, float %5322, float %5323)  ; FMin(a,b)
  %5325 = fcmp fast ogt float %5324, 0.000000e+00
  br i1 %5325, label %5334, label %5326, !dx.controlflow.hints !74

; <label>:5326                                    ; preds = %5570, %5321
  %5327 = phi float [ %5248, %5321 ], [ %5610, %5570 ]
  %5328 = phi float [ %5249, %5321 ], [ %5611, %5570 ]
  %5329 = phi float [ %5250, %5321 ], [ %5612, %5570 ]
  %5330 = phi float [ %5251, %5321 ], [ %5604, %5570 ]
  %5331 = phi float [ %5252, %5321 ], [ %5605, %5570 ]
  %5332 = phi float [ %5253, %5321 ], [ %5606, %5570 ]
  %5333 = icmp eq i32 %5247, %5257
  br i1 %5333, label %5613, label %5246

; <label>:5334                                    ; preds = %5321
  %5335 = fmul fast float %5322, %5280
  %5336 = fmul fast float %5322, %5281
  %5337 = fmul fast float %5322, %5282
  %5338 = fsub fast float %5274, %4526
  %5339 = fcmp fast ogt float %5338, 0.000000e+00
  %5340 = fsub fast float %132, %4526
  %5341 = fcmp fast ogt float %5340, 0.000000e+00
  %5342 = xor i1 %5341, %5339
  %5343 = fsub fast float %4526, %5274
  %5344 = fmul fast float %5343, 2.000000e+00
  %5345 = fadd fast float %5344, %5274
  %5346 = select i1 %5342, float %5274, float %5345
  %5347 = fsub fast float %5346, %132
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5347, float %5283, float %5284, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 25, float %5348)  ; Rsqrt(value)
  %5350 = fmul fast float %5349, %5283
  %5351 = fmul fast float %5349, %5284
  %5352 = fmul fast float %5349, %5347
  %5353 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4534)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5350, float %5351, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fdiv fast float 1.000000e+00, %5354
  %5356 = fmul fast float %5355, %5353
  %5357 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5340, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = fcmp fast ogt float %5357, 0.000000e+00
  %5359 = fcmp fast olt float %5357, 0.000000e+00
  %5360 = zext i1 %5358 to i32
  %5361 = zext i1 %5359 to i32
  %5362 = sub nsw i32 %5360, %5361
  %5363 = sitofp i32 %5362 to float
  %5364 = fsub fast float %5346, %4526
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5364, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fcmp fast ogt float %5365, 0.000000e+00
  %5367 = fcmp fast olt float %5365, 0.000000e+00
  %5368 = zext i1 %5366 to i32
  %5369 = zext i1 %5367 to i32
  %5370 = sub nsw i32 %5368, %5369
  %5371 = sitofp i32 %5370 to float
  %5372 = fcmp fast une float %5363, %5371
  br i1 %5372, label %5373, label %5383

; <label>:5373                                    ; preds = %5334
  %5374 = fmul fast float %5356, %5352
  %5375 = fmul fast float %5356, %5351
  %5376 = fmul fast float %5356, %5350
  %5377 = fmul fast float %5376, %5376
  %5378 = fmul fast float %5375, %5375
  %5379 = fadd fast float %5377, %5378
  %5380 = fmul fast float %5374, %5374
  %5381 = fadd fast float %5379, %5380
  %5382 = call float @dx.op.unary.f32(i32 24, float %5381)  ; Sqrt(value)
  br label %5395

; <label>:5383                                    ; preds = %5334
  %5384 = icmp slt i32 %5362, 0
  br i1 %5384, label %5385, label %5395

; <label>:5385                                    ; preds = %5383
  %5386 = fsub fast float %130, %5272
  %5387 = fsub fast float %131, %5273
  %5388 = fsub fast float %132, %5346
  %5389 = fmul fast float %5386, %5386
  %5390 = fmul fast float %5387, %5387
  %5391 = fadd fast float %5389, %5390
  %5392 = fmul fast float %5388, %5388
  %5393 = fadd fast float %5391, %5392
  %5394 = call float @dx.op.unary.f32(i32 24, float %5393)  ; Sqrt(value)
  br label %5395

; <label>:5395                                    ; preds = %5385, %5383, %5373
  %5396 = phi float [ %5382, %5373 ], [ %5394, %5385 ], [ 0.000000e+00, %5383 ]
  %5397 = and i1 %5341, %5339
  %5398 = fsub fast float -0.000000e+00, %5396
  %5399 = select i1 %5397, float -0.000000e+00, float %5398
  %5400 = fmul fast float %4527, 0x3FF7154760000000
  %5401 = fmul fast float %5400, %5399
  %5402 = fmul fast float %4528, 0x3FF7154760000000
  %5403 = fmul fast float %5402, %5399
  %5404 = fmul fast float %4529, 0x3FF7154760000000
  %5405 = fmul fast float %5404, %5399
  %5406 = call float @dx.op.unary.f32(i32 21, float %5401)  ; Exp(value)
  %5407 = call float @dx.op.unary.f32(i32 21, float %5403)  ; Exp(value)
  %5408 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5410 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5411 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5412 = fmul fast float %5335, %5409
  %5413 = fmul fast float %5336, %5410
  %5414 = fmul fast float %5337, %5411
  %5415 = fsub fast float %5289, %4726
  %5416 = fsub fast float %5290, %4725
  %5417 = fsub fast float %5291, %4724
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.unary.f32(i32 25, float %5418)  ; Rsqrt(value)
  %5420 = fmul fast float %5419, %5415
  %5421 = fmul fast float %5419, %5416
  %5422 = fmul fast float %5419, %5417
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4722, float %4721, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5426 = fmul fast float %5425, %5296
  %5427 = fmul fast float %5425, %5425
  %5428 = fmul fast float %5427, %4949
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %5426, %5429
  %5431 = bitcast float %5286 to i32
  %5432 = ashr i32 %5431, 1
  %5433 = sub nsw i32 1597463007, %5432
  %5434 = bitcast i32 %5433 to float
  %5435 = fmul fast float %5434, %5283
  %5436 = fmul fast float %5434, %5284
  %5437 = fmul fast float %5434, %5285
  %5438 = fsub fast float %5435, %4726
  %5439 = fsub fast float %5436, %4725
  %5440 = fsub fast float %5437, %4724
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.unary.f32(i32 25, float %5441)  ; Rsqrt(value)
  %5443 = fmul fast float %5438, %5442
  %5444 = fmul fast float %5439, %5442
  %5445 = fmul fast float %5440, %5442
  %5446 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fmul fast float %5446, %5446
  %5448 = call float @dx.op.unary.f32(i32 6, float %5423)  ; FAbs(value)
  %5449 = fsub fast float 1.000000e+00, %4736
  %5450 = call float @dx.op.binary.f32(i32 35, float %5449, float 0x3F847AE140000000)  ; FMax(a,b)
  %5451 = fmul fast float %5450, %5450
  %5452 = fmul fast float %5451, %5451
  %5453 = fsub fast float 1.000000e+00, %5452
  %5454 = fmul fast float %4740, %4740
  %5455 = fmul fast float %5454, %5453
  %5456 = fadd fast float %5455, %5452
  %5457 = bitcast float %5456 to i32
  %5458 = ashr i32 %5457, 1
  %5459 = add nsw i32 %5458, 532487669
  %5460 = bitcast i32 %5459 to float
  %5461 = fadd fast float %5460, %4740
  %5462 = fmul fast float %5452, %5447
  %5463 = fsub fast float 1.000000e+00, %5447
  %5464 = fadd fast float %5463, %5462
  %5465 = fmul fast float %5448, %5448
  %5466 = fmul fast float %5465, %5453
  %5467 = fadd fast float %5466, %5452
  %5468 = bitcast float %5467 to i32
  %5469 = ashr i32 %5468, 1
  %5470 = add nsw i32 %5469, 532487669
  %5471 = bitcast i32 %5470 to float
  %5472 = fadd fast float %5471, %5448
  %5473 = fmul fast float %5464, %5464
  %5474 = fmul fast float %5473, %5461
  %5475 = fmul fast float %5474, %5472
  %5476 = fdiv fast float 1.000000e+00, %5475
  %5477 = bitcast float %5452 to i32
  %5478 = sitofp i32 %5477 to float
  %5479 = fmul fast float %5478, 0x3FE7F73180000000
  %5480 = fadd fast float %5479, 0x41AFE27C40000000
  %5481 = fptosi float %5480 to i32
  %5482 = bitcast i32 %5481 to float
  %5483 = fmul fast float %5269, 0x3FD80E9D60000000
  %5484 = fmul fast float %5483, %5434
  %5485 = fadd fast float %5482, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = fmul fast float %5452, %5476
  %5490 = fmul fast float %5489, %5482
  %5491 = fmul fast float %5490, %5488
  %5492 = call float @dx.op.unary.f32(i32 6, float %5424)  ; FAbs(value)
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = sitofp i32 %5494 to float
  %5496 = fmul fast float %5495, 5.000000e+00
  %5497 = fadd fast float %5496, 0xC1EFBF8940000000
  %5498 = fptosi float %5497 to i32
  %5499 = bitcast i32 %5498 to float
  %5500 = fsub fast float 1.000000e+00, %4727
  %5501 = fsub fast float 1.000000e+00, %4728
  %5502 = fsub fast float 1.000000e+00, %4738
  %5503 = fmul fast float %5499, %5500
  %5504 = fmul fast float %5499, %5501
  %5505 = fmul fast float %5499, %5502
  %5506 = fadd fast float %5503, %4727
  %5507 = fadd fast float %5504, %4728
  %5508 = fadd fast float %5505, %4738
  br i1 %4864, label %5509, label %5532

; <label>:5509                                    ; preds = %5395
  %5510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4104, float %5492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.ResRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.ResRet.f32 %5510, 2
  %5514 = fadd fast float %5511, -5.000000e-01
  %5515 = fadd fast float %5512, -5.000000e-01
  %5516 = fadd fast float %5513, -5.000000e-01
  %5517 = fmul fast float %4727, 4.000000e+00
  %5518 = fmul fast float %5517, %5500
  %5519 = fmul fast float %5518, %5514
  %5520 = fmul fast float %4728, 4.000000e+00
  %5521 = fmul fast float %5520, %5501
  %5522 = fmul fast float %5521, %5515
  %5523 = fmul fast float %4738, 4.000000e+00
  %5524 = fmul fast float %5523, %5502
  %5525 = fmul fast float %5524, %5516
  %5526 = fadd fast float %5519, %5506
  %5527 = fadd fast float %5522, %5507
  %5528 = fadd fast float %5525, %5508
  %5529 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5530 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5531 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  br label %5532

; <label>:5532                                    ; preds = %5509, %5395
  %5533 = phi float [ %5529, %5509 ], [ %5506, %5395 ]
  %5534 = phi float [ %5530, %5509 ], [ %5507, %5395 ]
  %5535 = phi float [ %5531, %5509 ], [ %5508, %5395 ]
  %5536 = fmul fast float %5423, 9.843750e-01
  %5537 = fadd fast float %5536, 7.812500e-03
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5537, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 3
  %5541 = fmul fast float %5539, %4727
  %5542 = fmul fast float %5539, %4728
  %5543 = fmul fast float %5539, %4738
  %5544 = fadd fast float %5541, %5540
  %5545 = fadd fast float %5542, %5540
  %5546 = fadd fast float %5543, %5540
  br i1 %4864, label %5547, label %5570

; <label>:5547                                    ; preds = %5532
  %5548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4104, float %5423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.ResRet.f32 %5548, 1
  %5551 = extractvalue %dx.types.ResRet.f32 %5548, 2
  %5552 = fadd fast float %5549, -5.000000e-01
  %5553 = fadd fast float %5550, -5.000000e-01
  %5554 = fadd fast float %5551, -5.000000e-01
  %5555 = fmul fast float %4727, 4.000000e+00
  %5556 = fmul fast float %5555, %5500
  %5557 = fmul fast float %5556, %5552
  %5558 = fmul fast float %4728, 4.000000e+00
  %5559 = fmul fast float %5558, %5501
  %5560 = fmul fast float %5559, %5553
  %5561 = fmul fast float %4738, 4.000000e+00
  %5562 = fmul fast float %5561, %5502
  %5563 = fmul fast float %5562, %5554
  %5564 = fadd fast float %5557, %5544
  %5565 = fadd fast float %5560, %5545
  %5566 = fadd fast float %5563, %5546
  %5567 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5568 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5569 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  br label %5570

; <label>:5570                                    ; preds = %5547, %5532
  %5571 = phi float [ %5567, %5547 ], [ %5544, %5532 ]
  %5572 = phi float [ %5568, %5547 ], [ %5545, %5532 ]
  %5573 = phi float [ %5569, %5547 ], [ %5546, %5532 ]
  %5574 = call float @dx.op.binary.f32(i32 35, float %5572, float %5573)  ; FMax(a,b)
  %5575 = call float @dx.op.binary.f32(i32 35, float %5571, float %5574)  ; FMax(a,b)
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5533, %5491
  %5578 = fmul fast float %5534, %5491
  %5579 = fmul fast float %5535, %5491
  %5580 = fsub fast float 1.000000e+00, %5424
  %5581 = bitcast float %5580 to i32
  %5582 = sitofp i32 %5581 to float
  %5583 = fmul fast float %5582, 5.000000e+00
  %5584 = fadd fast float %5583, 0xC1EFBF8940000000
  %5585 = fptosi float %5584 to i32
  %5586 = bitcast i32 %5585 to float
  %5587 = fmul fast float %5586, %4103
  %5588 = fmul fast float %5576, %5587
  %5589 = fmul fast float %5588, %4914
  %5590 = fmul fast float %5588, %4915
  %5591 = fmul fast float %5588, %4916
  %5592 = fadd fast float %5589, %5577
  %5593 = fadd fast float %5590, %5578
  %5594 = fadd fast float %5591, %5579
  %5595 = fmul fast float %5412, %4124
  %5596 = fmul fast float %5595, %5430
  %5597 = fmul fast float %5596, %5576
  %5598 = fmul fast float %5413, %4124
  %5599 = fmul fast float %5598, %5430
  %5600 = fmul fast float %5599, %5576
  %5601 = fmul fast float %5414, %4124
  %5602 = fmul fast float %5601, %5430
  %5603 = fmul fast float %5602, %5576
  %5604 = fadd fast float %5597, %5251
  %5605 = fadd fast float %5600, %5252
  %5606 = fadd fast float %5603, %5253
  %5607 = fmul fast float %5596, %5592
  %5608 = fmul fast float %5599, %5593
  %5609 = fmul fast float %5602, %5594
  %5610 = fadd fast float %5607, %5248
  %5611 = fadd fast float %5608, %5249
  %5612 = fadd fast float %5609, %5250
  br label %5326

; <label>:5613                                    ; preds = %5326
  br label %5614

; <label>:5614                                    ; preds = %5613, %5214
  %5615 = phi float [ %5216, %5214 ], [ %5327, %5613 ]
  %5616 = phi float [ %5217, %5214 ], [ %5328, %5613 ]
  %5617 = phi float [ %5218, %5214 ], [ %5329, %5613 ]
  %5618 = phi float [ %5219, %5214 ], [ %5330, %5613 ]
  %5619 = phi float [ %5220, %5214 ], [ %5331, %5613 ]
  %5620 = phi float [ %5221, %5214 ], [ %5332, %5613 ]
  %5621 = add i32 %5215, 1
  %5622 = icmp ugt i32 %5621, %5211
  br i1 %5622, label %5623, label %5214

; <label>:5623                                    ; preds = %5614
  br label %5624

; <label>:5624                                    ; preds = %5623, %5190, %5180
  %5625 = phi float [ %5181, %5180 ], [ %5181, %5190 ], [ %5615, %5623 ]
  %5626 = phi float [ %5182, %5180 ], [ %5182, %5190 ], [ %5616, %5623 ]
  %5627 = phi float [ %5183, %5180 ], [ %5183, %5190 ], [ %5617, %5623 ]
  %5628 = phi float [ %5184, %5180 ], [ %5184, %5190 ], [ %5618, %5623 ]
  %5629 = phi float [ %5185, %5180 ], [ %5185, %5190 ], [ %5619, %5623 ]
  %5630 = phi float [ %5186, %5180 ], [ %5186, %5190 ], [ %5620, %5623 ]
  %5631 = call float @dx.op.unary.f32(i32 24, float %4733)  ; Sqrt(value)
  %5632 = call float @dx.op.unary.f32(i32 24, float %4734)  ; Sqrt(value)
  %5633 = call float @dx.op.unary.f32(i32 24, float %4735)  ; Sqrt(value)
  %5634 = fmul fast float %5631, %5628
  %5635 = fmul fast float %5632, %5629
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  br i1 %172, label %5638, label %5658

; <label>:5638                                    ; preds = %5624
  %5639 = fadd fast float %5630, %4101
  %5640 = fmul fast float %5639, %4102
  %5641 = fsub fast float 1.000000e+00, %4102
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 3
  %5645 = fmul fast float %5644, %5642
  %5646 = fadd fast float %5645, %5640
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = fmul fast float %5648, %4920
  %5650 = fsub fast float %5646, %5649
  %5651 = fadd fast float %5635, %5634
  %5652 = fmul fast float %5637, %5651
  %5653 = extractvalue %dx.types.CBufRet.f32 %5643, 1
  %5654 = fsub fast float %5650, %5653
  %5655 = extractvalue %dx.types.CBufRet.f32 %5643, 2
  %5656 = fmul fast float %5654, %5655
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  br label %5674

; <label>:5658                                    ; preds = %5624
  %5659 = fmul fast float %5633, %5630
  %5660 = fmul fast float %5637, %5634
  %5661 = fmul fast float %5637, %5635
  %5662 = fmul fast float %5659, %5637
  %5663 = add i32 %33, 356
  %5664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5663, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.i32 %5664, 0
  %5666 = and i32 %5665, 32
  %5667 = icmp eq i32 %5666, 0
  br i1 %5667, label %5674, label %5668

; <label>:5668                                    ; preds = %5658
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = fmul fast float %5670, 0x3FE99999A0000000
  %5672 = fadd fast float %5670, %5660
  %5673 = fadd fast float %5671, %5662
  br label %5674

; <label>:5674                                    ; preds = %5668, %5658, %5638
  %5675 = phi float [ %5652, %5638 ], [ %5672, %5668 ], [ %5660, %5658 ]
  %5676 = phi float [ %5657, %5638 ], [ %5661, %5668 ], [ %5661, %5658 ]
  %5677 = phi float [ 1.000000e+00, %5638 ], [ %5673, %5668 ], [ %5662, %5658 ]
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = fmul fast float %5679, %5626
  %5681 = fmul fast float %5679, %5627
  %5682 = fadd fast float %5626, %5625
  %5683 = select i1 %172, float %5682, float %5625
  %5684 = fmul float %5683, %5679
  %5685 = select i1 %172, float 0.000000e+00, float %5680
  %5686 = select i1 %172, float 0.000000e+00, float %5681
  %5687 = fmul fast float %5675, %5631
  %5688 = fmul fast float %5676, %5632
  %5689 = fmul fast float %5677, %5633
  %5690 = fadd fast float %5684, %5687
  %5691 = fadd fast float %5685, %5688
  %5692 = fadd fast float %5686, %5689
  %5693 = select i1 %172, float %5676, float %5691
  %5694 = select i1 %172, float %5677, float %5692
  %5695 = call float @dx.op.binary.f32(i32 36, float %5690, float 3.225500e+04)  ; FMin(a,b)
  %5696 = call float @dx.op.binary.f32(i32 36, float %5693, float 3.225500e+04)  ; FMin(a,b)
  %5697 = call float @dx.op.binary.f32(i32 36, float %5694, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5695)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5696)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5697)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
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
!67 = !{i32 3, i32 5}
!68 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

