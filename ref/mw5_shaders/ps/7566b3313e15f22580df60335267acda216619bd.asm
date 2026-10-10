;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw        9     NONE   float      w
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
; shader hash: 413e81be00934cad1bd84fe339be47d9
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
; COMP_FACTOR              0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = bitcast float %72 to i32
  %74 = ashr i32 %73, 1
  %75 = sub nsw i32 1597250115, %74
  %76 = bitcast i32 %75 to float
  %77 = fmul fast float %76, %55
  %78 = fmul fast float %76, %56
  %79 = fmul fast float %76, %57
  %80 = fmul fast float %56, %53
  %81 = fmul fast float %57, %52
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %57, %51
  %84 = fmul fast float %55, %53
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %55, %52
  %87 = fmul fast float %56, %51
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %82, %54
  %90 = fmul fast float %85, %54
  %91 = fmul fast float %88, %54
  %92 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = bitcast float %92 to i32
  %94 = ashr i32 %93, 1
  %95 = sub nsw i32 1597250115, %94
  %96 = bitcast i32 %95 to float
  %97 = fmul fast float %96, %44
  %98 = fmul fast float %96, %45
  %99 = fmul fast float %96, %46
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %70, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %71, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %65
  %134 = fmul fast float %130, %65
  %135 = fmul fast float %132, %65
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %70
  %140 = fmul fast float %138, %71
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = select i1 %144, i32 %150, i32 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %171

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %162 = fmul fast float %161, %71
  %163 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %164 = fmul fast float %163, %70
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %164, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fcmp fast olt float %167, %169
  br label %174

; <label>:171                                     ; preds = %0
  %172 = icmp eq i32 %157, 0
  %173 = and i1 %156, %172
  br label %174

; <label>:174                                     ; preds = %171, %160
  %175 = phi i1 [ %170, %160 ], [ %173, %171 ]
  %176 = add i32 %33, 156
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = shl i32 %178, 4
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %178, 7
  %183 = and i32 %182, 32752
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = lshr i32 %178, 22
  %186 = shl nuw nsw i32 %185, 5
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = add i32 %33, 216
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %190, 8
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = lshr i32 %190, 16
  %199 = and i32 %198, 255
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F70101020000000
  %202 = add i32 %33, 36
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 65535
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %204, 16
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %33, 288
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = fmul fast float %213, 0x3F50624DE0000000
  %217 = fmul fast float %215, 0x3F50624DE0000000
  %218 = add i32 %33, 172
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = add i32 %33, 232
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %232, 8
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %232, 16
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = add i32 %33, 52
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %33, 304
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = add i32 %33, 188
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %33, 248
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %33, 68
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %33, 320
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %33, 204
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = shl i32 %304, 4
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %304, 7
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %304, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %33, 264
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %33, 84
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %33, 336
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %339, 0x3F50624DE0000000
  %343 = fmul fast float %341, 0x3F50624DE0000000
  %344 = add i32 %33, 348
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 32
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %346, 64
  %350 = icmp eq i32 %349, 0
  %351 = and i32 %346, 128
  %352 = icmp eq i32 %351, 0
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %370, label %357

; <label>:357                                     ; preds = %174
  %358 = add i32 %33, 504
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %360, 0
  %362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %362, %dx.types.Handle %67, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = fmul fast float %364, %60
  %368 = fmul fast float %365, %61
  %369 = fmul fast float %366, %62
  br label %370

; <label>:370                                     ; preds = %357, %174
  %371 = phi float [ %62, %174 ], [ %369, %357 ]
  %372 = phi float [ %61, %174 ], [ %368, %357 ]
  %373 = phi float [ %60, %174 ], [ %367, %357 ]
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 2
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %397, label %378

; <label>:378                                     ; preds = %370
  %379 = add i32 %33, 44
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %373, float 1.000000e+00
  %385 = add i32 %33, 60
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 1
  %389 = icmp ne i32 %388, 0
  %390 = select i1 %389, float %372, float 1.000000e+00
  %391 = add i32 %33, 76
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 1
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %371, float 1.000000e+00
  br label %397

; <label>:397                                     ; preds = %378, %370
  %398 = phi float [ %371, %370 ], [ %396, %378 ]
  %399 = phi float [ %372, %370 ], [ %390, %378 ]
  %400 = phi float [ %373, %370 ], [ %384, %378 ]
  %401 = lshr i32 %375, 20
  %402 = and i32 %401, 3
  %403 = add nuw nsw i32 %402, 1
  %404 = add i32 %33, 24
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = add i32 %33, 28
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = or i32 %409, %406
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %899, label %412

; <label>:412                                     ; preds = %397
  %413 = and i32 %406, 262144
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %37, float 1.000000e+00
  %416 = select i1 %414, float %38, float 0.000000e+00
  %417 = select i1 %414, float %39, float 0.000000e+00
  %418 = select i1 %414, float %40, float 1.000000e+00
  %419 = select i1 %414, float %41, float %58
  %420 = select i1 %414, float %42, float %59
  %421 = add i32 %33, 284
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = fmul fast float %425, 0x3F50624DE0000000
  %427 = add i32 %33, 88
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = lshr i32 %429, 24
  %433 = add i32 %33, 292
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %33, 32
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 22
  %444 = shl nuw nsw i32 %443, 5
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = shl i32 %442, 4
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %442, 7
  %450 = and i32 %449, 32752
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = fmul fast float %453, 1.000000e+03
  %455 = fmul fast float %216, %454
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fadd fast float %456, %206
  %458 = fmul fast float %217, %454
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fadd fast float %459, %208
  %461 = fmul fast float %426, %454
  %462 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %463 = fmul fast float %462, 0x401921FB60000000
  %464 = fadd fast float %463, %445
  %465 = call float @dx.op.unary.f32(i32 13, float %464)  ; Sin(value)
  %466 = call float @dx.op.unary.f32(i32 12, float %464)  ; Cos(value)
  %467 = fsub fast float -0.000000e+00, %465
  %468 = fadd fast float %419, -5.000000e-01
  %469 = fadd fast float %420, -5.000000e-01
  %470 = fmul fast float %437, %468
  %471 = fmul fast float %439, %469
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fmul fast float %448, %472
  %475 = fmul fast float %451, %473
  %476 = fmul fast float %466, %474
  %477 = call float @dx.op.tertiary.f32(i32 46, float %467, float %475, float %476)  ; FMad(a,b,c)
  %478 = fmul fast float %465, %474
  %479 = call float @dx.op.tertiary.f32(i32 46, float %466, float %475, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %457, %477
  %481 = fadd fast float %460, %479
  %482 = icmp ugt i32 %431, 1
  %483 = icmp ugt i32 %429, 33554431
  %484 = or i1 %483, %482
  br i1 %484, label %485, label %510

; <label>:485                                     ; preds = %412
  %486 = add i32 %33, 228
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = fmul fast float %453, %490
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = mul nuw nsw i32 %431, %432
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %492, %494
  %496 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %497 = fptoui float %496 to i32
  %498 = urem i32 %497, %431
  %499 = udiv i32 %497, %432
  %500 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %502 = uitofp i32 %498 to float
  %503 = uitofp i32 %499 to float
  %504 = fadd fast float %500, %502
  %505 = fadd fast float %501, %503
  %506 = uitofp i32 %431 to float
  %507 = uitofp i32 %432 to float
  %508 = fdiv fast float %504, %506
  %509 = fdiv fast float %505, %507
  br label %510

; <label>:510                                     ; preds = %485, %412
  %511 = phi float [ %508, %485 ], [ %480, %412 ]
  %512 = phi float [ %509, %485 ], [ %481, %412 ]
  %513 = and i32 %406, 16
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %711, label %515

; <label>:515                                     ; preds = %510
  %516 = add i32 %33, 392
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %520, %dx.types.Handle %66, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = and i32 %429, 255
  %527 = uitofp i32 %526 to float
  %528 = lshr i32 %429, 8
  %529 = and i32 %528, 255
  %530 = uitofp i32 %529 to float
  %531 = fmul fast float %525, %527
  %532 = fadd fast float %531, %530
  %533 = fmul fast float %532, 0x3F70101000000000
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 512
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %546, label %538

; <label>:538                                     ; preds = %515
  %539 = add i32 %33, 472
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %67, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  br label %546

; <label>:546                                     ; preds = %538, %515
  %547 = phi float [ %545, %538 ], [ 1.000000e+00, %515 ]
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 33554432
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %658, label %552

; <label>:552                                     ; preds = %546
  %553 = add i32 %33, 224
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %33, 228
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %581 = add i32 %33, 220
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %598 = bitcast float %522 to i32
  %599 = ashr i32 %598, 1
  %600 = sub nsw i32 1597463174, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %522, 5.000000e-01
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %603, %602
  %605 = fsub fast float 1.500000e+00, %604
  %606 = fmul fast float %601, %522
  %607 = fmul fast float %606, %605
  %608 = bitcast float %523 to i32
  %609 = ashr i32 %608, 1
  %610 = sub nsw i32 1597463174, %609
  %611 = bitcast i32 %610 to float
  %612 = fmul fast float %523, 5.000000e-01
  %613 = fmul fast float %611, %611
  %614 = fmul fast float %613, %612
  %615 = fsub fast float 1.500000e+00, %614
  %616 = fmul fast float %611, %523
  %617 = fmul fast float %616, %615
  %618 = bitcast float %524 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %524, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %524
  %627 = fmul fast float %626, %625
  %628 = fsub fast float %607, %589
  %629 = fsub fast float %617, %593
  %630 = fsub fast float %627, %597
  %631 = fmul fast float %628, %557
  %632 = fmul fast float %629, %559
  %633 = fmul fast float %630, %564
  %634 = fadd fast float %631, %572
  %635 = fadd fast float %632, %576
  %636 = fadd fast float %633, %580
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = fmul fast float %637, %637
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fsub fast float %640, %522
  %644 = fsub fast float %641, %523
  %645 = fsub fast float %642, %524
  %646 = fmul fast float %643, %547
  %647 = fmul fast float %644, %547
  %648 = fmul fast float %645, %547
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %569, %533
  %653 = fsub fast float %652, %586
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fsub fast float %654, %533
  %656 = fmul fast float %655, %547
  %657 = fadd fast float %656, %533
  br label %711

; <label>:658                                     ; preds = %546
  %659 = and i32 %549, 134217728
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %695, label %661

; <label>:661                                     ; preds = %658
  %662 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fmul fast float %665, %547
  %669 = fmul fast float %666, %547
  %670 = fmul fast float %667, %547
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = fmul fast float %671, 2.000000e+00
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fmul fast float %678, %674
  %680 = fadd fast float %679, %677
  %681 = fmul fast float %680, %674
  %682 = fmul fast float %672, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %675
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %675
  %687 = fmul fast float %673, 2.000000e+00
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %676
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, %676
  %692 = fmul fast float %681, %681
  %693 = fmul fast float %686, %686
  %694 = fmul fast float %691, %691
  br label %711

; <label>:695                                     ; preds = %658
  %696 = fmul fast float %193, %193
  %697 = fmul fast float %197, %197
  %698 = fmul fast float %201, %201
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fmul fast float %547, %699
  %703 = fmul fast float %547, %700
  %704 = fmul fast float %547, %701
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fmul fast float %705, %522
  %709 = fmul fast float %706, %523
  %710 = fmul fast float %707, %524
  br label %711

; <label>:711                                     ; preds = %695, %661, %552, %510
  %712 = phi float [ %657, %552 ], [ %533, %661 ], [ %533, %695 ], [ 0x3FA23C0BE0000000, %510 ]
  %713 = phi float [ %649, %552 ], [ %692, %661 ], [ %708, %695 ], [ 1.000000e+00, %510 ]
  %714 = phi float [ %650, %552 ], [ %693, %661 ], [ %709, %695 ], [ 1.000000e+00, %510 ]
  %715 = phi float [ %651, %552 ], [ %694, %661 ], [ %710, %695 ], [ 1.000000e+00, %510 ]
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = and i32 %717, 1
  %719 = icmp ne i32 %718, 0
  %720 = add i32 %33, 356
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 32
  %724 = icmp ne i32 %723, 0
  %725 = and i1 %719, %724
  %726 = select i1 %725, float 1.000000e+00, float %713
  %727 = select i1 %725, float 0x3FD3333340000000, float %714
  %728 = select i1 %725, float 0x3FD3333340000000, float %715
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 32
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %805, label %733

; <label>:733                                     ; preds = %711
  %734 = add i32 %33, 92
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %33, 408
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %66, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = and i32 %736, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %736, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = lshr i32 %736, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = fmul fast float %743, %748
  %757 = fadd fast float %756, %751
  %758 = fmul fast float %757, 0x3F70101000000000
  %759 = fadd fast float %744, -5.000000e-01
  %760 = fadd fast float %746, -5.000000e-01
  %761 = fmul fast float %759, %755
  %762 = fmul fast float %760, %755
  %763 = fadd fast float %761, 5.000000e-01
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fmul fast float %763, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fmul fast float %764, 2.000000e+00
  %768 = fadd fast float %767, -1.000000e+00
  %769 = fadd fast float %766, %768
  %770 = fmul fast float %769, 5.000000e-01
  %771 = fsub fast float %766, %768
  %772 = fmul fast float %771, 5.000000e-01
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float 1.000000e+00, %773
  %775 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %776 = fsub fast float %774, %775
  %777 = call float @dx.op.dot3.f32(i32 55, float %770, float %772, float %776, float %770, float %772, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %770, %778
  %780 = fmul fast float %772, %778
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 67108864
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %801, label %785

; <label>:785                                     ; preds = %733
  %786 = add i32 %33, 280
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 65535
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = lshr i32 %788, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fsub fast float %758, %796
  %798 = fmul fast float %797, %790
  %799 = fadd fast float %798, %794
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  br label %801

; <label>:801                                     ; preds = %785, %733
  %802 = phi float [ %800, %785 ], [ %758, %733 ]
  %803 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  %804 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %417, float %418)  ; Dot2(ax,ay,bx,by)
  br label %805

; <label>:805                                     ; preds = %801, %711
  %806 = phi float [ %802, %801 ], [ 0x3FD6666660000000, %711 ]
  %807 = phi float [ %803, %801 ], [ 0.000000e+00, %711 ]
  %808 = phi float [ %804, %801 ], [ 0.000000e+00, %711 ]
  %809 = phi float [ %745, %801 ], [ 1.000000e+00, %711 ]
  %810 = add i32 %33, 160
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 22
  %814 = shl nuw nsw i32 %813, 5
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 64
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %853, label %820

; <label>:820                                     ; preds = %805
  %821 = add i32 %33, 424
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 131072
  %829 = icmp eq i32 %828, 0
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %66, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = fmul fast float %831, %181
  %835 = fmul fast float %832, %184
  %836 = fmul fast float %833, %187
  br i1 %829, label %843, label %837

; <label>:837                                     ; preds = %820
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = fmul fast float %839, %834
  %841 = fmul fast float %839, %835
  %842 = fmul fast float %839, %836
  br label %843

; <label>:843                                     ; preds = %837, %820
  %844 = phi float [ %840, %837 ], [ %834, %820 ]
  %845 = phi float [ %841, %837 ], [ %835, %820 ]
  %846 = phi float [ %842, %837 ], [ %836, %820 ]
  %847 = fmul fast float %844, %815
  %848 = select i1 %175, float %847, float %844
  %849 = call float @dx.op.dot3.f32(i32 55, float %848, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = select i1 %175, float 0.000000e+00, float %844
  %851 = select i1 %175, float %849, float %845
  %852 = select i1 %175, float 0.000000e+00, float %846
  br label %853

; <label>:853                                     ; preds = %843, %805
  %854 = phi float [ %850, %843 ], [ 0.000000e+00, %805 ]
  %855 = phi float [ %851, %843 ], [ 0.000000e+00, %805 ]
  %856 = phi float [ %852, %843 ], [ 0.000000e+00, %805 ]
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 26624
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %884, label %861

; <label>:861                                     ; preds = %853
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 16384
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %884, label %866

; <label>:866                                     ; preds = %861
  %867 = and i32 %863, 1048576
  %868 = icmp ne i32 %867, 0
  %869 = add i32 %33, 488
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %871, 0
  %873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %873, %dx.types.Handle %67, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = add i32 %33, 96
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 24
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %875, 0x3F70101020000000
  %882 = select i1 %868, float 0x3F70101020000000, float %881
  %883 = fmul fast float %882, %880
  br label %884

; <label>:884                                     ; preds = %866, %861, %853
  %885 = phi float [ %883, %866 ], [ 0.000000e+00, %861 ], [ 0.000000e+00, %853 ]
  %886 = add i32 %33, 96
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %888, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = fmul fast float %893, %894
  %896 = fadd fast float %895, %890
  %897 = fmul fast float %896, 0x3F70101020000000
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  br label %899

; <label>:899                                     ; preds = %884, %397
  %900 = phi float [ 0.000000e+00, %397 ], [ %807, %884 ]
  %901 = phi float [ 0.000000e+00, %397 ], [ %808, %884 ]
  %902 = phi float [ 0.000000e+00, %397 ], [ %726, %884 ]
  %903 = phi float [ 0.000000e+00, %397 ], [ %727, %884 ]
  %904 = phi float [ 0.000000e+00, %397 ], [ %728, %884 ]
  %905 = phi float [ 0.000000e+00, %397 ], [ %854, %884 ]
  %906 = phi float [ 0.000000e+00, %397 ], [ %855, %884 ]
  %907 = phi float [ 0.000000e+00, %397 ], [ %856, %884 ]
  %908 = phi float [ 0.000000e+00, %397 ], [ %712, %884 ]
  %909 = phi float [ 0.000000e+00, %397 ], [ 1.000000e+00, %884 ]
  %910 = phi float [ 0.000000e+00, %397 ], [ %806, %884 ]
  %911 = phi float [ 0.000000e+00, %397 ], [ %809, %884 ]
  %912 = phi float [ 0.000000e+00, %397 ], [ %885, %884 ]
  %913 = phi float [ 0.000000e+00, %397 ], [ %898, %884 ]
  br i1 %348, label %1794, label %914

; <label>:914                                     ; preds = %899
  %915 = icmp ult i32 %403, 2
  %916 = add i32 %33, 40
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %33, 44
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = or i32 %921, %918
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %1794, label %924

; <label>:924                                     ; preds = %914
  %925 = and i32 %918, 262144
  %926 = icmp ne i32 %925, 0
  %927 = select i1 %926, float %37, float 1.000000e+00
  %928 = select i1 %926, float %38, float 0.000000e+00
  %929 = select i1 %926, float %39, float 0.000000e+00
  %930 = select i1 %926, float %40, float 1.000000e+00
  %931 = select i1 %926, float %41, float %58
  %932 = select i1 %926, float %42, float %59
  %933 = add i32 %33, 300
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 16
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = fmul fast float %937, 0x3F50624DE0000000
  %939 = add i32 %33, 104
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 16
  %943 = and i32 %942, 255
  %944 = lshr i32 %941, 24
  %945 = add i32 %33, 308
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %947, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = add i32 %33, 48
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 22
  %956 = shl nuw nsw i32 %955, 5
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = shl i32 %954, 4
  %959 = and i32 %958, 32752
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %954, 7
  %962 = and i32 %961, 32752
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %966 = fmul fast float %965, 1.000000e+03
  %967 = fmul fast float %258, %966
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fadd fast float %968, %248
  %970 = fmul fast float %259, %966
  %971 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %972 = fadd fast float %971, %250
  %973 = fmul fast float %938, %966
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = fmul fast float %974, 0x401921FB60000000
  %976 = fadd fast float %975, %957
  %977 = call float @dx.op.unary.f32(i32 13, float %976)  ; Sin(value)
  %978 = call float @dx.op.unary.f32(i32 12, float %976)  ; Cos(value)
  %979 = fsub fast float -0.000000e+00, %977
  %980 = fadd fast float %931, -5.000000e-01
  %981 = fadd fast float %932, -5.000000e-01
  %982 = fmul fast float %949, %980
  %983 = fmul fast float %951, %981
  %984 = fadd fast float %982, 5.000000e-01
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fmul fast float %960, %984
  %987 = fmul fast float %963, %985
  %988 = fmul fast float %978, %986
  %989 = call float @dx.op.tertiary.f32(i32 46, float %979, float %987, float %988)  ; FMad(a,b,c)
  %990 = fmul fast float %977, %986
  %991 = call float @dx.op.tertiary.f32(i32 46, float %978, float %987, float %990)  ; FMad(a,b,c)
  %992 = fadd fast float %969, %989
  %993 = fadd fast float %972, %991
  %994 = icmp ugt i32 %943, 1
  %995 = icmp ugt i32 %941, 33554431
  %996 = or i1 %995, %994
  br i1 %996, label %997, label %1022

; <label>:997                                     ; preds = %924
  %998 = add i32 %33, 244
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = lshr i32 %1000, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = fmul fast float %965, %1002
  %1004 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1005 = mul nuw nsw i32 %943, %944
  %1006 = uitofp i32 %1005 to float
  %1007 = fmul fast float %1004, %1006
  %1008 = call float @dx.op.unary.f32(i32 27, float %1007)  ; Round_ni(value)
  %1009 = fptoui float %1008 to i32
  %1010 = urem i32 %1009, %943
  %1011 = udiv i32 %1009, %944
  %1012 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %1013 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %1014 = uitofp i32 %1010 to float
  %1015 = uitofp i32 %1011 to float
  %1016 = fadd fast float %1012, %1014
  %1017 = fadd fast float %1013, %1015
  %1018 = uitofp i32 %943 to float
  %1019 = uitofp i32 %944 to float
  %1020 = fdiv fast float %1016, %1018
  %1021 = fdiv fast float %1017, %1019
  br label %1022

; <label>:1022                                    ; preds = %997, %924
  %1023 = phi float [ %1020, %997 ], [ %992, %924 ]
  %1024 = phi float [ %1021, %997 ], [ %993, %924 ]
  %1025 = and i32 %918, 16777216
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1136, label %1027

; <label>:1027                                    ; preds = %1022
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = fadd fast float %1029, %133
  %1033 = fadd fast float %1030, %134
  %1034 = fadd fast float %1031, %135
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = icmp eq i32 %34, 65535
  br i1 %1038, label %1133, label %1039

; <label>:1039                                    ; preds = %1027
  %1040 = lshr i32 %34, 1
  %1041 = shl i32 %1040, 2
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %34, 1
  %1045 = icmp ne i32 %1044, 0
  %1046 = lshr i32 %1043, 16
  %1047 = and i32 %1043, 65535
  %1048 = select i1 %1045, i32 %1046, i32 %1047
  %1049 = icmp eq i32 %1048, 65535
  br i1 %1049, label %1129, label %1050

; <label>:1050                                    ; preds = %1039
  %1051 = mul nuw nsw i32 %1048, 40
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1051, 12
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = add nuw nsw i32 %1051, 24
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = add nuw nsw i32 %1051, 36
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = fsub fast float %1032, %1053
  %1070 = fsub fast float %1033, %1054
  %1071 = fsub fast float %1034, %1055
  %1072 = fmul fast float %1068, %1069
  %1073 = fmul fast float %1068, %1070
  %1074 = fmul fast float %1068, %1071
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1077 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fadd fast float %1077, 5.000000e-01
  %1081 = fmul fast float %1078, %1058
  %1082 = fmul fast float %1079, %1059
  %1083 = fmul fast float %1080, %1060
  %1084 = shl i32 %34, 2
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1091 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1088, %dx.types.Handle %30, float %1089, float %1090, float %1091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = fmul fast float %1093, 1.023000e+03
  %1097 = fmul fast float %1094, 1.023000e+03
  %1098 = fmul fast float %1095, 1.023000e+03
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1105 = fsub fast float %1072, %1075
  %1106 = fsub fast float %1073, %1076
  %1107 = fsub fast float %1074, %1077
  %1108 = fmul fast float %1105, 7.500000e-01
  %1109 = fmul fast float %1106, 7.500000e-01
  %1110 = fmul fast float %1107, 7.500000e-01
  %1111 = fadd fast float %1075, 1.250000e-01
  %1112 = fadd fast float %1111, %1108
  %1113 = fadd fast float %1112, %1102
  %1114 = fadd fast float %1076, 1.250000e-01
  %1115 = fadd fast float %1114, %1109
  %1116 = fadd fast float %1115, %1103
  %1117 = fadd fast float %1077, 1.250000e-01
  %1118 = fadd fast float %1117, %1110
  %1119 = fadd fast float %1118, %1104
  %1120 = fmul fast float %1113, %1063
  %1121 = fmul fast float %1116, %1064
  %1122 = fmul fast float %1119, %1065
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1126, %dx.types.Handle %28, float %1120, float %1121, float %1122, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  br label %1129

; <label>:1129                                    ; preds = %1050, %1039
  %1130 = phi float [ %1128, %1050 ], [ -1.000000e+00, %1039 ]
  %1131 = fadd fast float %1130, %1037
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  br label %1133

; <label>:1133                                    ; preds = %1129, %1027
  %1134 = phi float [ %1132, %1129 ], [ %1037, %1027 ]
  %1135 = fmul fast float %1134, %400
  br label %1136

; <label>:1136                                    ; preds = %1133, %1022
  %1137 = phi float [ %1135, %1133 ], [ %400, %1022 ]
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 256
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1188, label %1142

; <label>:1142                                    ; preds = %1136
  %1143 = add i32 %33, 460
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %1145, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1147, %dx.types.Handle %67, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = add i32 %33, 116
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = shl i32 %1152, 4
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1152, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fsub fast float 1.000000e+00, %1137
  %1160 = call float @dx.op.binary.f32(i32 35, float %1159, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1161 = bitcast float %1137 to i32
  %1162 = sitofp i32 %1161 to float
  %1163 = fadd fast float %1162, 0xC1CFBF8940000000
  %1164 = fmul fast float %1158, %1163
  %1165 = fadd fast float %1164, 0x41CFBF8940000000
  %1166 = fptosi float %1165 to i32
  %1167 = bitcast i32 %1166 to float
  %1168 = bitcast float %1160 to i32
  %1169 = sitofp i32 %1168 to float
  %1170 = fadd fast float %1169, 0xC1CFBF8940000000
  %1171 = fmul fast float %1170, %1158
  %1172 = fadd fast float %1171, 0x41CFBF8940000000
  %1173 = fptosi float %1172 to i32
  %1174 = bitcast i32 %1173 to float
  %1175 = fmul fast float %1167, %1155
  %1176 = fmul fast float %1174, %1155
  %1177 = fsub fast float %1160, %1175
  %1178 = fadd fast float %1176, %1160
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = fsub fast float %1149, %1179
  %1182 = fsub fast float %1180, %1179
  %1183 = bitcast float %1182 to i32
  %1184 = sub nsw i32 2129859010, %1183
  %1185 = bitcast i32 %1184 to float
  %1186 = fmul fast float %1185, %1181
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  br label %1188

; <label>:1188                                    ; preds = %1142, %1136
  %1189 = phi float [ %1187, %1142 ], [ %1137, %1136 ]
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 128
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1210, label %1194

; <label>:1194                                    ; preds = %1188
  %1195 = add i32 %33, 444
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %67, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 524288
  %1205 = icmp ne i32 %1204, 0
  %1206 = fcmp fast ogt float %1201, 0x3FE0101020000000
  %1207 = select i1 %1206, float 1.000000e+00, float 0.000000e+00
  %1208 = select i1 %1205, float %1207, float %1201
  %1209 = fmul fast float %1208, %1189
  br label %1210

; <label>:1210                                    ; preds = %1194, %1188
  %1211 = phi float [ %1209, %1194 ], [ %1189, %1188 ]
  %1212 = fcmp fast ult float %1211, 0x3F70101020000000
  br i1 %1212, label %1794, label %1213

; <label>:1213                                    ; preds = %1210
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 16
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1416, label %1218

; <label>:1218                                    ; preds = %1213
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %33, 396
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %66, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.ResRet.f32 %1226, 3
  %1231 = and i32 %1220, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = lshr i32 %1220, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1230, %1232
  %1237 = fadd fast float %1236, %1235
  %1238 = fmul fast float %1237, 0x3F70101000000000
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 512
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1251, label %1243

; <label>:1243                                    ; preds = %1218
  %1244 = add i32 %33, 476
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %67, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  br label %1251

; <label>:1251                                    ; preds = %1243, %1218
  %1252 = phi float [ %1250, %1243 ], [ 1.000000e+00, %1218 ]
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 33554432
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1363, label %1257

; <label>:1257                                    ; preds = %1251
  %1258 = add i32 %33, 240
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 65535
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = lshr i32 %1260, 16
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = add i32 %33, 244
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 65535
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1286 = add i32 %33, 236
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = lshr i32 %1288, 24
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = and i32 %1288, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = lshr i32 %1288, 8
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = lshr i32 %1288, 16
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = bitcast float %1227 to i32
  %1304 = ashr i32 %1303, 1
  %1305 = sub nsw i32 1597463174, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1227, 5.000000e-01
  %1308 = fmul fast float %1306, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float 1.500000e+00, %1309
  %1311 = fmul fast float %1306, %1227
  %1312 = fmul fast float %1311, %1310
  %1313 = bitcast float %1228 to i32
  %1314 = ashr i32 %1313, 1
  %1315 = sub nsw i32 1597463174, %1314
  %1316 = bitcast i32 %1315 to float
  %1317 = fmul fast float %1228, 5.000000e-01
  %1318 = fmul fast float %1316, %1316
  %1319 = fmul fast float %1318, %1317
  %1320 = fsub fast float 1.500000e+00, %1319
  %1321 = fmul fast float %1316, %1228
  %1322 = fmul fast float %1321, %1320
  %1323 = bitcast float %1229 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1229, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1229
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float %1312, %1294
  %1334 = fsub fast float %1322, %1298
  %1335 = fsub fast float %1332, %1302
  %1336 = fmul fast float %1333, %1262
  %1337 = fmul fast float %1334, %1264
  %1338 = fmul fast float %1335, %1269
  %1339 = fadd fast float %1336, %1277
  %1340 = fadd fast float %1337, %1281
  %1341 = fadd fast float %1338, %1285
  %1342 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1344 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1345 = fmul fast float %1342, %1342
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fsub fast float %1345, %1227
  %1349 = fsub fast float %1346, %1228
  %1350 = fsub fast float %1347, %1229
  %1351 = fmul fast float %1348, %1252
  %1352 = fmul fast float %1349, %1252
  %1353 = fmul fast float %1350, %1252
  %1354 = fadd fast float %1351, %1227
  %1355 = fadd fast float %1352, %1228
  %1356 = fadd fast float %1353, %1229
  %1357 = fadd fast float %1274, %1238
  %1358 = fsub fast float %1357, %1291
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fsub fast float %1359, %1238
  %1361 = fmul fast float %1360, %1252
  %1362 = fadd fast float %1361, %1238
  br label %1416

; <label>:1363                                    ; preds = %1251
  %1364 = and i32 %1254, 134217728
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1400, label %1366

; <label>:1366                                    ; preds = %1363
  %1367 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1368 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1369 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fadd fast float %1368, -5.000000e-01
  %1372 = fadd fast float %1369, -5.000000e-01
  %1373 = fmul fast float %1370, %1252
  %1374 = fmul fast float %1371, %1252
  %1375 = fmul fast float %1372, %1252
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = fadd fast float %1374, 5.000000e-01
  %1378 = fadd fast float %1375, 5.000000e-01
  %1379 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1380 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1381 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1382 = fmul fast float %1376, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1379
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1379
  %1387 = fmul fast float %1377, 2.000000e+00
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1388, %1380
  %1390 = fadd fast float %1389, %1387
  %1391 = fmul fast float %1390, %1380
  %1392 = fmul fast float %1378, 2.000000e+00
  %1393 = fsub fast float 1.000000e+00, %1392
  %1394 = fmul fast float %1393, %1381
  %1395 = fadd fast float %1394, %1392
  %1396 = fmul fast float %1395, %1381
  %1397 = fmul fast float %1386, %1386
  %1398 = fmul fast float %1391, %1391
  %1399 = fmul fast float %1396, %1396
  br label %1416

; <label>:1400                                    ; preds = %1363
  %1401 = fmul fast float %235, %235
  %1402 = fmul fast float %239, %239
  %1403 = fmul fast float %243, %243
  %1404 = fadd fast float %1401, -1.000000e+00
  %1405 = fadd fast float %1402, -1.000000e+00
  %1406 = fadd fast float %1403, -1.000000e+00
  %1407 = fmul fast float %1252, %1404
  %1408 = fmul fast float %1252, %1405
  %1409 = fmul fast float %1252, %1406
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fadd fast float %1408, 1.000000e+00
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = fmul fast float %1410, %1227
  %1414 = fmul fast float %1411, %1228
  %1415 = fmul fast float %1412, %1229
  br label %1416

; <label>:1416                                    ; preds = %1400, %1366, %1257, %1213
  %1417 = phi float [ %1362, %1257 ], [ %1238, %1366 ], [ %1238, %1400 ], [ 0x3FA23C0BE0000000, %1213 ]
  %1418 = phi float [ %1354, %1257 ], [ %1397, %1366 ], [ %1413, %1400 ], [ 1.000000e+00, %1213 ]
  %1419 = phi float [ %1355, %1257 ], [ %1398, %1366 ], [ %1414, %1400 ], [ 1.000000e+00, %1213 ]
  %1420 = phi float [ %1356, %1257 ], [ %1399, %1366 ], [ %1415, %1400 ], [ 1.000000e+00, %1213 ]
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 1
  %1423 = and i32 %1422, 1
  %1424 = icmp ne i32 %1423, 0
  %1425 = add i32 %33, 356
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 32
  %1429 = icmp ne i32 %1428, 0
  %1430 = and i1 %1424, %1429
  %1431 = select i1 %1430, float 1.000000e+00, float %1418
  %1432 = select i1 %1430, float 0x3FD3333340000000, float %1419
  %1433 = select i1 %1430, float 0x3FD3333340000000, float %1420
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 32
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1510, label %1438

; <label>:1438                                    ; preds = %1416
  %1439 = add i32 %33, 108
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %33, 412
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %1444, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %66, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.ResRet.f32 %1447, 2
  %1451 = extractvalue %dx.types.ResRet.f32 %1447, 3
  %1452 = and i32 %1441, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = lshr i32 %1441, 8
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %1441, 16
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = fmul fast float %1459, 0x3F70101000000000
  %1461 = fmul fast float %1448, %1453
  %1462 = fadd fast float %1461, %1456
  %1463 = fmul fast float %1462, 0x3F70101000000000
  %1464 = fadd fast float %1449, -5.000000e-01
  %1465 = fadd fast float %1451, -5.000000e-01
  %1466 = fmul fast float %1464, %1460
  %1467 = fmul fast float %1465, %1460
  %1468 = fadd fast float %1466, 5.000000e-01
  %1469 = fadd fast float %1467, 5.000000e-01
  %1470 = fmul fast float %1468, 2.000000e+00
  %1471 = fadd fast float %1470, -1.000000e+00
  %1472 = fmul fast float %1469, 2.000000e+00
  %1473 = fadd fast float %1472, -1.000000e+00
  %1474 = fadd fast float %1471, %1473
  %1475 = fmul fast float %1474, 5.000000e-01
  %1476 = fsub fast float %1471, %1473
  %1477 = fmul fast float %1476, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1481 = fsub fast float %1479, %1480
  %1482 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1477, float %1481, float %1475, float %1477, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = call float @dx.op.unary.f32(i32 25, float %1482)  ; Rsqrt(value)
  %1484 = fmul fast float %1475, %1483
  %1485 = fmul fast float %1477, %1483
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 67108864
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1506, label %1490

; <label>:1490                                    ; preds = %1438
  %1491 = add i32 %33, 296
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = lshr i32 %1493, 16
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = fsub fast float %1463, %1501
  %1503 = fmul fast float %1502, %1495
  %1504 = fadd fast float %1503, %1499
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  br label %1506

; <label>:1506                                    ; preds = %1490, %1438
  %1507 = phi float [ %1505, %1490 ], [ %1463, %1438 ]
  %1508 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %927, float %928)  ; Dot2(ax,ay,bx,by)
  %1509 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %929, float %930)  ; Dot2(ax,ay,bx,by)
  br label %1510

; <label>:1510                                    ; preds = %1506, %1416
  %1511 = phi float [ %1507, %1506 ], [ 0x3FD6666660000000, %1416 ]
  %1512 = phi float [ %1508, %1506 ], [ 0.000000e+00, %1416 ]
  %1513 = phi float [ %1509, %1506 ], [ 0.000000e+00, %1416 ]
  %1514 = phi float [ %1450, %1506 ], [ 1.000000e+00, %1416 ]
  %1515 = add i32 %33, 176
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = lshr i32 %1517, 22
  %1519 = shl nuw nsw i32 %1518, 5
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 64
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1558, label %1525

; <label>:1525                                    ; preds = %1510
  %1526 = add i32 %33, 428
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 131072
  %1534 = icmp eq i32 %1533, 0
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %66, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.ResRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.ResRet.f32 %1535, 2
  %1539 = fmul fast float %1536, %223
  %1540 = fmul fast float %1537, %226
  %1541 = fmul fast float %1538, %229
  br i1 %1534, label %1548, label %1542

; <label>:1542                                    ; preds = %1525
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 0
  %1545 = fmul fast float %1544, %1539
  %1546 = fmul fast float %1544, %1540
  %1547 = fmul fast float %1544, %1541
  br label %1548

; <label>:1548                                    ; preds = %1542, %1525
  %1549 = phi float [ %1545, %1542 ], [ %1539, %1525 ]
  %1550 = phi float [ %1546, %1542 ], [ %1540, %1525 ]
  %1551 = phi float [ %1547, %1542 ], [ %1541, %1525 ]
  %1552 = fmul fast float %1549, %1520
  %1553 = select i1 %175, float %1552, float %1549
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = select i1 %175, float 0.000000e+00, float %1549
  %1556 = select i1 %175, float %1554, float %1550
  %1557 = select i1 %175, float 0.000000e+00, float %1551
  br label %1558

; <label>:1558                                    ; preds = %1548, %1510
  %1559 = phi float [ %1555, %1548 ], [ 0.000000e+00, %1510 ]
  %1560 = phi float [ %1556, %1548 ], [ 0.000000e+00, %1510 ]
  %1561 = phi float [ %1557, %1548 ], [ 0.000000e+00, %1510 ]
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 26624
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1589, label %1566

; <label>:1566                                    ; preds = %1558
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 16384
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1589, label %1571

; <label>:1571                                    ; preds = %1566
  %1572 = and i32 %1568, 1048576
  %1573 = icmp ne i32 %1572, 0
  %1574 = add i32 %33, 492
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %1576, 0
  %1578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1578, %dx.types.Handle %67, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = add i32 %33, 112
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = lshr i32 %1583, 24
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1580, 0x3F70101020000000
  %1587 = select i1 %1573, float 0x3F70101020000000, float %1586
  %1588 = fmul fast float %1587, %1585
  br label %1589

; <label>:1589                                    ; preds = %1571, %1566, %1558
  %1590 = phi float [ %1588, %1571 ], [ 0.000000e+00, %1566 ], [ 0.000000e+00, %1558 ]
  %1591 = add i32 %33, 112
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = lshr i32 %1593, 8
  %1597 = and i32 %1596, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = fmul fast float %1598, %1599
  %1601 = fadd fast float %1600, %1595
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br i1 %915, label %1604, label %1612

; <label>:1604                                    ; preds = %1589
  %1605 = fsub fast float 1.000000e+00, %1211
  %1606 = fmul fast float %1605, %902
  %1607 = fmul fast float %1605, %903
  %1608 = fmul fast float %1605, %904
  %1609 = fmul fast float %1605, %905
  %1610 = fmul fast float %1605, %906
  %1611 = fmul fast float %1605, %907
  br label %1612

; <label>:1612                                    ; preds = %1604, %1589
  %1613 = phi float [ %1606, %1604 ], [ %902, %1589 ]
  %1614 = phi float [ %1607, %1604 ], [ %903, %1589 ]
  %1615 = phi float [ %1608, %1604 ], [ %904, %1589 ]
  %1616 = phi float [ %1609, %1604 ], [ %905, %1589 ]
  %1617 = phi float [ %1610, %1604 ], [ %906, %1589 ]
  %1618 = phi float [ %1611, %1604 ], [ %907, %1589 ]
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 3
  %1622 = icmp eq i32 %1621, 3
  br i1 %1622, label %1701, label %1623

; <label>:1623                                    ; preds = %1612
  %1624 = and i32 %1620, 16
  %1625 = icmp ne i32 %1624, 0
  %1626 = select i1 %1625, float %1211, float 0.000000e+00
  %1627 = icmp eq i32 %1621, 0
  br i1 %1627, label %1628, label %1656

; <label>:1628                                    ; preds = %1623
  %1629 = and i32 %1620, 64
  %1630 = icmp ne i32 %1629, 0
  %1631 = select i1 %1630, float %1211, float 0.000000e+00
  %1632 = fsub fast float %1431, %1613
  %1633 = fsub fast float %1432, %1614
  %1634 = fsub fast float %1433, %1615
  %1635 = fmul fast float %1626, %1632
  %1636 = fmul fast float %1626, %1633
  %1637 = fmul fast float %1626, %1634
  %1638 = fadd fast float %1635, %1613
  %1639 = fadd fast float %1636, %1614
  %1640 = fadd fast float %1637, %1615
  %1641 = fsub fast float %1417, %908
  %1642 = fmul fast float %1626, %1641
  %1643 = fadd fast float %1642, %908
  %1644 = fsub fast float %1559, %1616
  %1645 = fsub fast float %1560, %1617
  %1646 = fsub fast float %1561, %1618
  %1647 = fmul fast float %1631, %1644
  %1648 = fmul fast float %1631, %1645
  %1649 = fmul fast float %1631, %1646
  %1650 = fadd fast float %1647, %1616
  %1651 = fadd fast float %1648, %1617
  %1652 = fadd fast float %1649, %1618
  %1653 = fsub fast float %1603, %913
  %1654 = fmul fast float %1626, %1653
  %1655 = fadd fast float %1654, %913
  br label %1701

; <label>:1656                                    ; preds = %1623
  %1657 = icmp eq i32 %1621, 1
  br i1 %1657, label %1658, label %1671

; <label>:1658                                    ; preds = %1656
  %1659 = fadd fast float %1431, -1.000000e+00
  %1660 = fadd fast float %1432, -1.000000e+00
  %1661 = fadd fast float %1433, -1.000000e+00
  %1662 = fmul fast float %1626, %1659
  %1663 = fmul fast float %1626, %1660
  %1664 = fmul fast float %1626, %1661
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fmul fast float %1665, %1613
  %1669 = fmul fast float %1666, %1614
  %1670 = fmul fast float %1667, %1615
  br label %1701

; <label>:1671                                    ; preds = %1656
  %1672 = icmp eq i32 %1621, 2
  br i1 %1672, label %1673, label %1701

; <label>:1673                                    ; preds = %1671
  %1674 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fmul fast float %1677, %1626
  %1681 = fmul fast float %1678, %1626
  %1682 = fmul fast float %1679, %1626
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fmul fast float %1683, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1613
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1613
  %1691 = fmul fast float %1684, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1614
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1614
  %1696 = fmul fast float %1685, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1615
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1615
  br label %1701

; <label>:1701                                    ; preds = %1673, %1671, %1658, %1628, %1612
  %1702 = phi float [ %1613, %1612 ], [ %1690, %1673 ], [ %1613, %1671 ], [ %1668, %1658 ], [ %1638, %1628 ]
  %1703 = phi float [ %1614, %1612 ], [ %1695, %1673 ], [ %1614, %1671 ], [ %1669, %1658 ], [ %1639, %1628 ]
  %1704 = phi float [ %1615, %1612 ], [ %1700, %1673 ], [ %1615, %1671 ], [ %1670, %1658 ], [ %1640, %1628 ]
  %1705 = phi float [ %1616, %1612 ], [ %1616, %1673 ], [ %1616, %1671 ], [ %1616, %1658 ], [ %1650, %1628 ]
  %1706 = phi float [ %1617, %1612 ], [ %1617, %1673 ], [ %1617, %1671 ], [ %1617, %1658 ], [ %1651, %1628 ]
  %1707 = phi float [ %1618, %1612 ], [ %1618, %1673 ], [ %1618, %1671 ], [ %1618, %1658 ], [ %1652, %1628 ]
  %1708 = phi float [ %908, %1612 ], [ %908, %1673 ], [ %908, %1671 ], [ %908, %1658 ], [ %1643, %1628 ]
  %1709 = phi float [ %913, %1612 ], [ %913, %1673 ], [ %913, %1671 ], [ %913, %1658 ], [ %1655, %1628 ]
  %1710 = and i32 %1620, 12
  %1711 = icmp eq i32 %1710, 12
  br i1 %1711, label %1794, label %1712

; <label>:1712                                    ; preds = %1701
  %1713 = and i32 %1620, 2097184
  %1714 = icmp eq i32 %1713, 2097184
  %1715 = select i1 %1714, float %1211, float 0.000000e+00
  %1716 = and i32 %1620, 4194336
  %1717 = icmp eq i32 %1716, 4194336
  %1718 = select i1 %1717, float %1211, float 0.000000e+00
  %1719 = and i32 %1620, 8388640
  %1720 = icmp eq i32 %1719, 8388640
  %1721 = select i1 %1720, float %1211, float 0.000000e+00
  %1722 = and i32 %1620, 16384
  %1723 = icmp ne i32 %1722, 0
  %1724 = select i1 %1723, float %1211, float 0.000000e+00
  %1725 = icmp eq i32 %1710, 0
  br i1 %1725, label %1726, label %1742

; <label>:1726                                    ; preds = %1712
  %1727 = fsub fast float %1512, %900
  %1728 = fsub fast float %1513, %901
  %1729 = fmul fast float %1715, %1727
  %1730 = fmul fast float %1715, %1728
  %1731 = fadd fast float %1729, %900
  %1732 = fadd fast float %1730, %901
  %1733 = fsub fast float %1514, %911
  %1734 = fmul fast float %1718, %1733
  %1735 = fadd fast float %1734, %911
  %1736 = fsub fast float %1511, %910
  %1737 = fmul fast float %1721, %1736
  %1738 = fadd fast float %1737, %910
  %1739 = fsub fast float %1590, %912
  %1740 = fmul fast float %1724, %1739
  %1741 = fadd fast float %1740, %912
  br label %1794

; <label>:1742                                    ; preds = %1712
  %1743 = icmp eq i32 %1710, 4
  br i1 %1743, label %1744, label %1778

; <label>:1744                                    ; preds = %1742
  %1745 = fmul fast float %1715, %1512
  %1746 = fmul fast float %1715, %1513
  %1747 = fadd fast float %1745, %900
  %1748 = fadd fast float %1746, %901
  %1749 = call float @dx.op.binary.f32(i32 36, float %911, float %1514)  ; FMin(a,b)
  %1750 = fsub fast float %1749, %911
  %1751 = fmul fast float %1750, %1718
  %1752 = fadd fast float %1751, %911
  %1753 = fadd fast float %1511, %910
  %1754 = fmul fast float %1753, 0x3FF337FAE0000000
  %1755 = fmul fast float %910, %910
  %1756 = fmul fast float %1511, %1511
  %1757 = fadd fast float %1756, %1755
  %1758 = fmul fast float %1757, 0x3FE5152B00000000
  %1759 = fmul fast float %910, 0xBFCC1F85E0000000
  %1760 = fmul fast float %1759, %1511
  %1761 = fadd fast float %1760, 0xBFE1363700000000
  %1762 = fadd fast float %1761, %1754
  %1763 = fsub fast float %1762, %1758
  %1764 = fmul fast float %1753, 0x3FBA6F0D00000000
  %1765 = fmul fast float %1757, 0x3FD0432880000000
  %1766 = fmul fast float %910, 0xBFEF110800000000
  %1767 = fmul fast float %1766, %1511
  %1768 = fadd fast float %1767, 1.000000e+00
  %1769 = fsub fast float %1768, %1764
  %1770 = fadd fast float %1769, %1765
  %1771 = fdiv fast float %1763, %1770
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = fsub fast float %1772, %910
  %1774 = fmul fast float %1773, %1721
  %1775 = fadd fast float %1774, %910
  %1776 = fmul fast float %1724, %1590
  %1777 = fadd fast float %1776, %912
  br label %1794

; <label>:1778                                    ; preds = %1742
  %1779 = icmp eq i32 %1710, 8
  br i1 %1779, label %1780, label %1794

; <label>:1780                                    ; preds = %1778
  %1781 = fmul fast float %1715, %1512
  %1782 = fmul fast float %1715, %1513
  %1783 = fadd fast float %1781, %900
  %1784 = fadd fast float %1782, %901
  %1785 = call float @dx.op.binary.f32(i32 36, float %911, float %1514)  ; FMin(a,b)
  %1786 = fsub fast float %1785, %911
  %1787 = fmul fast float %1786, %1718
  %1788 = fadd fast float %1787, %911
  %1789 = fsub fast float %1511, %910
  %1790 = fmul fast float %1721, %1789
  %1791 = fadd fast float %1790, %910
  %1792 = fmul fast float %1724, %1590
  %1793 = fadd fast float %1792, %912
  br label %1794

; <label>:1794                                    ; preds = %1780, %1778, %1744, %1726, %1701, %1210, %914, %899
  %1795 = phi float [ %900, %1701 ], [ %900, %1210 ], [ %900, %899 ], [ %1783, %1780 ], [ %900, %1778 ], [ %1747, %1744 ], [ %1731, %1726 ], [ %900, %914 ]
  %1796 = phi float [ %901, %1701 ], [ %901, %1210 ], [ %901, %899 ], [ %1784, %1780 ], [ %901, %1778 ], [ %1748, %1744 ], [ %1732, %1726 ], [ %901, %914 ]
  %1797 = phi float [ %1702, %1701 ], [ %902, %1210 ], [ %902, %899 ], [ %1702, %1780 ], [ %1702, %1778 ], [ %1702, %1744 ], [ %1702, %1726 ], [ %902, %914 ]
  %1798 = phi float [ %1703, %1701 ], [ %903, %1210 ], [ %903, %899 ], [ %1703, %1780 ], [ %1703, %1778 ], [ %1703, %1744 ], [ %1703, %1726 ], [ %903, %914 ]
  %1799 = phi float [ %1704, %1701 ], [ %904, %1210 ], [ %904, %899 ], [ %1704, %1780 ], [ %1704, %1778 ], [ %1704, %1744 ], [ %1704, %1726 ], [ %904, %914 ]
  %1800 = phi float [ %1705, %1701 ], [ %905, %1210 ], [ %905, %899 ], [ %1705, %1780 ], [ %1705, %1778 ], [ %1705, %1744 ], [ %1705, %1726 ], [ %905, %914 ]
  %1801 = phi float [ %1706, %1701 ], [ %906, %1210 ], [ %906, %899 ], [ %1706, %1780 ], [ %1706, %1778 ], [ %1706, %1744 ], [ %1706, %1726 ], [ %906, %914 ]
  %1802 = phi float [ %1707, %1701 ], [ %907, %1210 ], [ %907, %899 ], [ %1707, %1780 ], [ %1707, %1778 ], [ %1707, %1744 ], [ %1707, %1726 ], [ %907, %914 ]
  %1803 = phi float [ %1708, %1701 ], [ %908, %1210 ], [ %908, %899 ], [ %1708, %1780 ], [ %1708, %1778 ], [ %1708, %1744 ], [ %1708, %1726 ], [ %908, %914 ]
  %1804 = phi float [ %910, %1701 ], [ %910, %1210 ], [ %910, %899 ], [ %1791, %1780 ], [ %910, %1778 ], [ %1775, %1744 ], [ %1738, %1726 ], [ %910, %914 ]
  %1805 = phi float [ %911, %1701 ], [ %911, %1210 ], [ %911, %899 ], [ %1788, %1780 ], [ %911, %1778 ], [ %1752, %1744 ], [ %1735, %1726 ], [ %911, %914 ]
  %1806 = phi float [ %912, %1701 ], [ %912, %1210 ], [ %912, %899 ], [ %1793, %1780 ], [ %912, %1778 ], [ %1777, %1744 ], [ %1741, %1726 ], [ %912, %914 ]
  %1807 = phi float [ %1709, %1701 ], [ %913, %1210 ], [ %913, %899 ], [ %1709, %1780 ], [ %1709, %1778 ], [ %1709, %1744 ], [ %1709, %1726 ], [ %913, %914 ]
  br i1 %350, label %2688, label %1808

; <label>:1808                                    ; preds = %1794
  %1809 = icmp ult i32 %403, 3
  %1810 = add i32 %33, 56
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = add i32 %33, 60
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = or i32 %1815, %1812
  %1817 = icmp eq i32 %1816, 0
  br i1 %1817, label %2688, label %1818

; <label>:1818                                    ; preds = %1808
  %1819 = and i32 %1812, 262144
  %1820 = icmp ne i32 %1819, 0
  %1821 = select i1 %1820, float %37, float 1.000000e+00
  %1822 = select i1 %1820, float %38, float 0.000000e+00
  %1823 = select i1 %1820, float %39, float 0.000000e+00
  %1824 = select i1 %1820, float %40, float 1.000000e+00
  %1825 = select i1 %1820, float %41, float %58
  %1826 = select i1 %1820, float %42, float %59
  %1827 = add i32 %33, 316
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = lshr i32 %1829, 16
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = fmul fast float %1831, 0x3F50624DE0000000
  %1833 = add i32 %33, 120
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = lshr i32 %1835, 16
  %1837 = and i32 %1836, 255
  %1838 = lshr i32 %1835, 24
  %1839 = add i32 %33, 324
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 65535
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = lshr i32 %1841, 16
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = add i32 %33, 64
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 22
  %1850 = shl nuw nsw i32 %1849, 5
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = shl i32 %1848, 4
  %1853 = and i32 %1852, 32752
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = lshr i32 %1848, 7
  %1856 = and i32 %1855, 32752
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1860 = fmul fast float %1859, 1.000000e+03
  %1861 = fmul fast float %300, %1860
  %1862 = call float @dx.op.unary.f32(i32 22, float %1861)  ; Frc(value)
  %1863 = fadd fast float %1862, %290
  %1864 = fmul fast float %301, %1860
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = fadd fast float %1865, %292
  %1867 = fmul fast float %1832, %1860
  %1868 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1869 = fmul fast float %1868, 0x401921FB60000000
  %1870 = fadd fast float %1869, %1851
  %1871 = call float @dx.op.unary.f32(i32 13, float %1870)  ; Sin(value)
  %1872 = call float @dx.op.unary.f32(i32 12, float %1870)  ; Cos(value)
  %1873 = fsub fast float -0.000000e+00, %1871
  %1874 = fadd fast float %1825, -5.000000e-01
  %1875 = fadd fast float %1826, -5.000000e-01
  %1876 = fmul fast float %1843, %1874
  %1877 = fmul fast float %1845, %1875
  %1878 = fadd fast float %1876, 5.000000e-01
  %1879 = fadd fast float %1877, 5.000000e-01
  %1880 = fmul fast float %1854, %1878
  %1881 = fmul fast float %1857, %1879
  %1882 = fmul fast float %1872, %1880
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1873, float %1881, float %1882)  ; FMad(a,b,c)
  %1884 = fmul fast float %1871, %1880
  %1885 = call float @dx.op.tertiary.f32(i32 46, float %1872, float %1881, float %1884)  ; FMad(a,b,c)
  %1886 = fadd fast float %1863, %1883
  %1887 = fadd fast float %1866, %1885
  %1888 = icmp ugt i32 %1837, 1
  %1889 = icmp ugt i32 %1835, 33554431
  %1890 = or i1 %1889, %1888
  br i1 %1890, label %1891, label %1916

; <label>:1891                                    ; preds = %1818
  %1892 = add i32 %33, 260
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 16
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = fmul fast float %1859, %1896
  %1898 = call float @dx.op.unary.f32(i32 22, float %1897)  ; Frc(value)
  %1899 = mul nuw nsw i32 %1837, %1838
  %1900 = uitofp i32 %1899 to float
  %1901 = fmul fast float %1898, %1900
  %1902 = call float @dx.op.unary.f32(i32 27, float %1901)  ; Round_ni(value)
  %1903 = fptoui float %1902 to i32
  %1904 = urem i32 %1903, %1837
  %1905 = udiv i32 %1903, %1838
  %1906 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1907 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1908 = uitofp i32 %1904 to float
  %1909 = uitofp i32 %1905 to float
  %1910 = fadd fast float %1906, %1908
  %1911 = fadd fast float %1907, %1909
  %1912 = uitofp i32 %1837 to float
  %1913 = uitofp i32 %1838 to float
  %1914 = fdiv fast float %1910, %1912
  %1915 = fdiv fast float %1911, %1913
  br label %1916

; <label>:1916                                    ; preds = %1891, %1818
  %1917 = phi float [ %1914, %1891 ], [ %1886, %1818 ]
  %1918 = phi float [ %1915, %1891 ], [ %1887, %1818 ]
  %1919 = and i32 %1812, 16777216
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %2030, label %1921

; <label>:1921                                    ; preds = %1916
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1925 = extractvalue %dx.types.CBufRet.f32 %1922, 2
  %1926 = fadd fast float %1923, %133
  %1927 = fadd fast float %1924, %134
  %1928 = fadd fast float %1925, %135
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = icmp eq i32 %34, 65535
  br i1 %1932, label %2027, label %1933

; <label>:1933                                    ; preds = %1921
  %1934 = lshr i32 %34, 1
  %1935 = shl i32 %1934, 2
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = and i32 %34, 1
  %1939 = icmp ne i32 %1938, 0
  %1940 = lshr i32 %1937, 16
  %1941 = and i32 %1937, 65535
  %1942 = select i1 %1939, i32 %1940, i32 %1941
  %1943 = icmp eq i32 %1942, 65535
  br i1 %1943, label %2023, label %1944

; <label>:1944                                    ; preds = %1933
  %1945 = mul nuw nsw i32 %1942, 40
  %1946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.ResRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.ResRet.f32 %1946, 2
  %1950 = add nuw nsw i32 %1945, 12
  %1951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.ResRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.ResRet.f32 %1951, 2
  %1955 = add nuw nsw i32 %1945, 24
  %1956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.ResRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.ResRet.f32 %1956, 2
  %1960 = add nuw nsw i32 %1945, 36
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = fsub fast float %1926, %1947
  %1964 = fsub fast float %1927, %1948
  %1965 = fsub fast float %1928, %1949
  %1966 = fmul fast float %1962, %1963
  %1967 = fmul fast float %1962, %1964
  %1968 = fmul fast float %1962, %1965
  %1969 = call float @dx.op.unary.f32(i32 27, float %1966)  ; Round_ni(value)
  %1970 = call float @dx.op.unary.f32(i32 27, float %1967)  ; Round_ni(value)
  %1971 = call float @dx.op.unary.f32(i32 27, float %1968)  ; Round_ni(value)
  %1972 = fadd fast float %1969, 5.000000e-01
  %1973 = fadd fast float %1970, 5.000000e-01
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fmul fast float %1972, %1952
  %1976 = fmul fast float %1973, %1953
  %1977 = fmul fast float %1974, %1954
  %1978 = shl i32 %34, 2
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = add i32 %1980, 0
  %1982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1983 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1984 = call float @dx.op.unary.f32(i32 22, float %1976)  ; Frc(value)
  %1985 = call float @dx.op.unary.f32(i32 22, float %1977)  ; Frc(value)
  %1986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1982, %dx.types.Handle %30, float %1983, float %1984, float %1985, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1990 = fmul fast float %1987, 1.023000e+03
  %1991 = fmul fast float %1988, 1.023000e+03
  %1992 = fmul fast float %1989, 1.023000e+03
  %1993 = fadd fast float %1990, 5.000000e-01
  %1994 = fadd fast float %1991, 5.000000e-01
  %1995 = fadd fast float %1992, 5.000000e-01
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = call float @dx.op.unary.f32(i32 27, float %1994)  ; Round_ni(value)
  %1998 = call float @dx.op.unary.f32(i32 27, float %1995)  ; Round_ni(value)
  %1999 = fsub fast float %1966, %1969
  %2000 = fsub fast float %1967, %1970
  %2001 = fsub fast float %1968, %1971
  %2002 = fmul fast float %1999, 7.500000e-01
  %2003 = fmul fast float %2000, 7.500000e-01
  %2004 = fmul fast float %2001, 7.500000e-01
  %2005 = fadd fast float %1969, 1.250000e-01
  %2006 = fadd fast float %2005, %2002
  %2007 = fadd fast float %2006, %1996
  %2008 = fadd fast float %1970, 1.250000e-01
  %2009 = fadd fast float %2008, %2003
  %2010 = fadd fast float %2009, %1997
  %2011 = fadd fast float %1971, 1.250000e-01
  %2012 = fadd fast float %2011, %2004
  %2013 = fadd fast float %2012, %1998
  %2014 = fmul fast float %2007, %1957
  %2015 = fmul fast float %2010, %1958
  %2016 = fmul fast float %2013, %1959
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %2018, 0
  %2020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2020, %dx.types.Handle %28, float %2014, float %2015, float %2016, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  br label %2023

; <label>:2023                                    ; preds = %1944, %1933
  %2024 = phi float [ %2022, %1944 ], [ -1.000000e+00, %1933 ]
  %2025 = fadd fast float %2024, %1931
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  br label %2027

; <label>:2027                                    ; preds = %2023, %1921
  %2028 = phi float [ %2026, %2023 ], [ %1931, %1921 ]
  %2029 = fmul fast float %2028, %399
  br label %2030

; <label>:2030                                    ; preds = %2027, %1916
  %2031 = phi float [ %2029, %2027 ], [ %399, %1916 ]
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = and i32 %2033, 256
  %2035 = icmp eq i32 %2034, 0
  br i1 %2035, label %2082, label %2036

; <label>:2036                                    ; preds = %2030
  %2037 = add i32 %33, 464
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %67, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = add i32 %33, 132
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = shl i32 %2046, 4
  %2048 = and i32 %2047, 32752
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2046, 7
  %2051 = and i32 %2050, 32752
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = fsub fast float 1.000000e+00, %2031
  %2054 = call float @dx.op.binary.f32(i32 35, float %2053, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2055 = bitcast float %2031 to i32
  %2056 = sitofp i32 %2055 to float
  %2057 = fadd fast float %2056, 0xC1CFBF8940000000
  %2058 = fmul fast float %2052, %2057
  %2059 = fadd fast float %2058, 0x41CFBF8940000000
  %2060 = fptosi float %2059 to i32
  %2061 = bitcast i32 %2060 to float
  %2062 = bitcast float %2054 to i32
  %2063 = sitofp i32 %2062 to float
  %2064 = fadd fast float %2063, 0xC1CFBF8940000000
  %2065 = fmul fast float %2064, %2052
  %2066 = fadd fast float %2065, 0x41CFBF8940000000
  %2067 = fptosi float %2066 to i32
  %2068 = bitcast i32 %2067 to float
  %2069 = fmul fast float %2061, %2049
  %2070 = fmul fast float %2068, %2049
  %2071 = fsub fast float %2054, %2069
  %2072 = fadd fast float %2070, %2054
  %2073 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2075 = fsub fast float %2043, %2073
  %2076 = fsub fast float %2074, %2073
  %2077 = bitcast float %2076 to i32
  %2078 = sub nsw i32 2129859010, %2077
  %2079 = bitcast i32 %2078 to float
  %2080 = fmul fast float %2079, %2075
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  br label %2082

; <label>:2082                                    ; preds = %2036, %2030
  %2083 = phi float [ %2081, %2036 ], [ %2031, %2030 ]
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 128
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2104, label %2088

; <label>:2088                                    ; preds = %2082
  %2089 = add i32 %33, 448
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2093, %dx.types.Handle %67, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 524288
  %2099 = icmp ne i32 %2098, 0
  %2100 = fcmp fast ogt float %2095, 0x3FE0101020000000
  %2101 = select i1 %2100, float 1.000000e+00, float 0.000000e+00
  %2102 = select i1 %2099, float %2101, float %2095
  %2103 = fmul fast float %2102, %2083
  br label %2104

; <label>:2104                                    ; preds = %2088, %2082
  %2105 = phi float [ %2103, %2088 ], [ %2083, %2082 ]
  %2106 = fcmp fast ult float %2105, 0x3F70101020000000
  br i1 %2106, label %2688, label %2107

; <label>:2107                                    ; preds = %2104
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 16
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2310, label %2112

; <label>:2112                                    ; preds = %2107
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = add i32 %33, 400
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %66, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = extractvalue %dx.types.ResRet.f32 %2120, 2
  %2124 = extractvalue %dx.types.ResRet.f32 %2120, 3
  %2125 = and i32 %2114, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = lshr i32 %2114, 8
  %2128 = and i32 %2127, 255
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2124, %2126
  %2131 = fadd fast float %2130, %2129
  %2132 = fmul fast float %2131, 0x3F70101000000000
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 512
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2145, label %2137

; <label>:2137                                    ; preds = %2112
  %2138 = add i32 %33, 480
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = add i32 %2140, 0
  %2142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2142, %dx.types.Handle %67, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  br label %2145

; <label>:2145                                    ; preds = %2137, %2112
  %2146 = phi float [ %2144, %2137 ], [ 1.000000e+00, %2112 ]
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 33554432
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2257, label %2151

; <label>:2151                                    ; preds = %2145
  %2152 = add i32 %33, 256
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 65535
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = lshr i32 %2154, 16
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = add i32 %33, 260
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %2161, 65535
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = lshr i32 %2165, 24
  %2167 = uitofp i32 %2166 to float
  %2168 = fmul fast float %2167, 0x3F70101020000000
  %2169 = and i32 %2165, 255
  %2170 = uitofp i32 %2169 to float
  %2171 = fmul fast float %2170, 0x3F70101020000000
  %2172 = lshr i32 %2165, 8
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F70101020000000
  %2176 = lshr i32 %2165, 16
  %2177 = and i32 %2176, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2178, 0x3F70101020000000
  %2180 = add i32 %33, 252
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = lshr i32 %2182, 24
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2184, 0x3F70101020000000
  %2186 = and i32 %2182, 255
  %2187 = uitofp i32 %2186 to float
  %2188 = fmul fast float %2187, 0x3F70101020000000
  %2189 = lshr i32 %2182, 8
  %2190 = and i32 %2189, 255
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2191, 0x3F70101020000000
  %2193 = lshr i32 %2182, 16
  %2194 = and i32 %2193, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = fmul fast float %2195, 0x3F70101020000000
  %2197 = bitcast float %2121 to i32
  %2198 = ashr i32 %2197, 1
  %2199 = sub nsw i32 1597463174, %2198
  %2200 = bitcast i32 %2199 to float
  %2201 = fmul fast float %2121, 5.000000e-01
  %2202 = fmul fast float %2200, %2200
  %2203 = fmul fast float %2202, %2201
  %2204 = fsub fast float 1.500000e+00, %2203
  %2205 = fmul fast float %2200, %2121
  %2206 = fmul fast float %2205, %2204
  %2207 = bitcast float %2122 to i32
  %2208 = ashr i32 %2207, 1
  %2209 = sub nsw i32 1597463174, %2208
  %2210 = bitcast i32 %2209 to float
  %2211 = fmul fast float %2122, 5.000000e-01
  %2212 = fmul fast float %2210, %2210
  %2213 = fmul fast float %2212, %2211
  %2214 = fsub fast float 1.500000e+00, %2213
  %2215 = fmul fast float %2210, %2122
  %2216 = fmul fast float %2215, %2214
  %2217 = bitcast float %2123 to i32
  %2218 = ashr i32 %2217, 1
  %2219 = sub nsw i32 1597463174, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2123, 5.000000e-01
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float 1.500000e+00, %2223
  %2225 = fmul fast float %2220, %2123
  %2226 = fmul fast float %2225, %2224
  %2227 = fsub fast float %2206, %2188
  %2228 = fsub fast float %2216, %2192
  %2229 = fsub fast float %2226, %2196
  %2230 = fmul fast float %2227, %2156
  %2231 = fmul fast float %2228, %2158
  %2232 = fmul fast float %2229, %2163
  %2233 = fadd fast float %2230, %2171
  %2234 = fadd fast float %2231, %2175
  %2235 = fadd fast float %2232, %2179
  %2236 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2237 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2238 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2239 = fmul fast float %2236, %2236
  %2240 = fmul fast float %2237, %2237
  %2241 = fmul fast float %2238, %2238
  %2242 = fsub fast float %2239, %2121
  %2243 = fsub fast float %2240, %2122
  %2244 = fsub fast float %2241, %2123
  %2245 = fmul fast float %2242, %2146
  %2246 = fmul fast float %2243, %2146
  %2247 = fmul fast float %2244, %2146
  %2248 = fadd fast float %2245, %2121
  %2249 = fadd fast float %2246, %2122
  %2250 = fadd fast float %2247, %2123
  %2251 = fadd fast float %2168, %2132
  %2252 = fsub fast float %2251, %2185
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fsub fast float %2253, %2132
  %2255 = fmul fast float %2254, %2146
  %2256 = fadd fast float %2255, %2132
  br label %2310

; <label>:2257                                    ; preds = %2145
  %2258 = and i32 %2148, 134217728
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2294, label %2260

; <label>:2260                                    ; preds = %2257
  %2261 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2262 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2263 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %2264 = fadd fast float %2261, -5.000000e-01
  %2265 = fadd fast float %2262, -5.000000e-01
  %2266 = fadd fast float %2263, -5.000000e-01
  %2267 = fmul fast float %2264, %2146
  %2268 = fmul fast float %2265, %2146
  %2269 = fmul fast float %2266, %2146
  %2270 = fadd fast float %2267, 5.000000e-01
  %2271 = fadd fast float %2268, 5.000000e-01
  %2272 = fadd fast float %2269, 5.000000e-01
  %2273 = call float @dx.op.unary.f32(i32 24, float %2121)  ; Sqrt(value)
  %2274 = call float @dx.op.unary.f32(i32 24, float %2122)  ; Sqrt(value)
  %2275 = call float @dx.op.unary.f32(i32 24, float %2123)  ; Sqrt(value)
  %2276 = fmul fast float %2270, 2.000000e+00
  %2277 = fsub fast float 1.000000e+00, %2276
  %2278 = fmul fast float %2277, %2273
  %2279 = fadd fast float %2278, %2276
  %2280 = fmul fast float %2279, %2273
  %2281 = fmul fast float %2271, 2.000000e+00
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fmul fast float %2282, %2274
  %2284 = fadd fast float %2283, %2281
  %2285 = fmul fast float %2284, %2274
  %2286 = fmul fast float %2272, 2.000000e+00
  %2287 = fsub fast float 1.000000e+00, %2286
  %2288 = fmul fast float %2287, %2275
  %2289 = fadd fast float %2288, %2286
  %2290 = fmul fast float %2289, %2275
  %2291 = fmul fast float %2280, %2280
  %2292 = fmul fast float %2285, %2285
  %2293 = fmul fast float %2290, %2290
  br label %2310

; <label>:2294                                    ; preds = %2257
  %2295 = fmul fast float %277, %277
  %2296 = fmul fast float %281, %281
  %2297 = fmul fast float %285, %285
  %2298 = fadd fast float %2295, -1.000000e+00
  %2299 = fadd fast float %2296, -1.000000e+00
  %2300 = fadd fast float %2297, -1.000000e+00
  %2301 = fmul fast float %2146, %2298
  %2302 = fmul fast float %2146, %2299
  %2303 = fmul fast float %2146, %2300
  %2304 = fadd fast float %2301, 1.000000e+00
  %2305 = fadd fast float %2302, 1.000000e+00
  %2306 = fadd fast float %2303, 1.000000e+00
  %2307 = fmul fast float %2304, %2121
  %2308 = fmul fast float %2305, %2122
  %2309 = fmul fast float %2306, %2123
  br label %2310

; <label>:2310                                    ; preds = %2294, %2260, %2151, %2107
  %2311 = phi float [ %2256, %2151 ], [ %2132, %2260 ], [ %2132, %2294 ], [ 0x3FA23C0BE0000000, %2107 ]
  %2312 = phi float [ %2248, %2151 ], [ %2291, %2260 ], [ %2307, %2294 ], [ 1.000000e+00, %2107 ]
  %2313 = phi float [ %2249, %2151 ], [ %2292, %2260 ], [ %2308, %2294 ], [ 1.000000e+00, %2107 ]
  %2314 = phi float [ %2250, %2151 ], [ %2293, %2260 ], [ %2309, %2294 ], [ 1.000000e+00, %2107 ]
  %2315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.i32 %2315, 1
  %2317 = and i32 %2316, 1
  %2318 = icmp ne i32 %2317, 0
  %2319 = add i32 %33, 356
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 32
  %2323 = icmp ne i32 %2322, 0
  %2324 = and i1 %2318, %2323
  %2325 = select i1 %2324, float 1.000000e+00, float %2312
  %2326 = select i1 %2324, float 0x3FD3333340000000, float %2313
  %2327 = select i1 %2324, float 0x3FD3333340000000, float %2314
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 32
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2404, label %2332

; <label>:2332                                    ; preds = %2310
  %2333 = add i32 %33, 124
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %33, 416
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %66, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.ResRet.f32 %2341, 3
  %2346 = and i32 %2335, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = lshr i32 %2335, 8
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = lshr i32 %2335, 16
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101000000000
  %2355 = fmul fast float %2342, %2347
  %2356 = fadd fast float %2355, %2350
  %2357 = fmul fast float %2356, 0x3F70101000000000
  %2358 = fadd fast float %2343, -5.000000e-01
  %2359 = fadd fast float %2345, -5.000000e-01
  %2360 = fmul fast float %2358, %2354
  %2361 = fmul fast float %2359, %2354
  %2362 = fadd fast float %2360, 5.000000e-01
  %2363 = fadd fast float %2361, 5.000000e-01
  %2364 = fmul fast float %2362, 2.000000e+00
  %2365 = fadd fast float %2364, -1.000000e+00
  %2366 = fmul fast float %2363, 2.000000e+00
  %2367 = fadd fast float %2366, -1.000000e+00
  %2368 = fadd fast float %2365, %2367
  %2369 = fmul fast float %2368, 5.000000e-01
  %2370 = fsub fast float %2365, %2367
  %2371 = fmul fast float %2370, 5.000000e-01
  %2372 = call float @dx.op.unary.f32(i32 6, float %2369)  ; FAbs(value)
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2375 = fsub fast float %2373, %2374
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2371, float %2375, float %2369, float %2371, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call float @dx.op.unary.f32(i32 25, float %2376)  ; Rsqrt(value)
  %2378 = fmul fast float %2369, %2377
  %2379 = fmul fast float %2371, %2377
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 67108864
  %2383 = icmp eq i32 %2382, 0
  br i1 %2383, label %2400, label %2384

; <label>:2384                                    ; preds = %2332
  %2385 = add i32 %33, 312
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = and i32 %2387, 65535
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 65535
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = lshr i32 %2387, 16
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = fsub fast float %2357, %2395
  %2397 = fmul fast float %2396, %2389
  %2398 = fadd fast float %2397, %2393
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  br label %2400

; <label>:2400                                    ; preds = %2384, %2332
  %2401 = phi float [ %2399, %2384 ], [ %2357, %2332 ]
  %2402 = call float @dx.op.dot2.f32(i32 54, float %2378, float %2379, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  %2403 = call float @dx.op.dot2.f32(i32 54, float %2378, float %2379, float %1823, float %1824)  ; Dot2(ax,ay,bx,by)
  br label %2404

; <label>:2404                                    ; preds = %2400, %2310
  %2405 = phi float [ %2401, %2400 ], [ 0x3FD6666660000000, %2310 ]
  %2406 = phi float [ %2402, %2400 ], [ 0.000000e+00, %2310 ]
  %2407 = phi float [ %2403, %2400 ], [ 0.000000e+00, %2310 ]
  %2408 = phi float [ %2344, %2400 ], [ 1.000000e+00, %2310 ]
  %2409 = add i32 %33, 192
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = lshr i32 %2411, 22
  %2413 = shl nuw nsw i32 %2412, 5
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 64
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2452, label %2419

; <label>:2419                                    ; preds = %2404
  %2420 = add i32 %33, 432
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = add i32 %2422, 0
  %2424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 131072
  %2428 = icmp eq i32 %2427, 0
  %2429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2424, %dx.types.Handle %66, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = fmul fast float %2430, %265
  %2434 = fmul fast float %2431, %268
  %2435 = fmul fast float %2432, %271
  br i1 %2428, label %2442, label %2436

; <label>:2436                                    ; preds = %2419
  %2437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2437, 0
  %2439 = fmul fast float %2438, %2433
  %2440 = fmul fast float %2438, %2434
  %2441 = fmul fast float %2438, %2435
  br label %2442

; <label>:2442                                    ; preds = %2436, %2419
  %2443 = phi float [ %2439, %2436 ], [ %2433, %2419 ]
  %2444 = phi float [ %2440, %2436 ], [ %2434, %2419 ]
  %2445 = phi float [ %2441, %2436 ], [ %2435, %2419 ]
  %2446 = fmul fast float %2443, %2414
  %2447 = select i1 %175, float %2446, float %2443
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2444, float %2445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = select i1 %175, float 0.000000e+00, float %2443
  %2450 = select i1 %175, float %2448, float %2444
  %2451 = select i1 %175, float 0.000000e+00, float %2445
  br label %2452

; <label>:2452                                    ; preds = %2442, %2404
  %2453 = phi float [ %2449, %2442 ], [ 0.000000e+00, %2404 ]
  %2454 = phi float [ %2450, %2442 ], [ 0.000000e+00, %2404 ]
  %2455 = phi float [ %2451, %2442 ], [ 0.000000e+00, %2404 ]
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 26624
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2483, label %2460

; <label>:2460                                    ; preds = %2452
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 16384
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2483, label %2465

; <label>:2465                                    ; preds = %2460
  %2466 = and i32 %2462, 1048576
  %2467 = icmp ne i32 %2466, 0
  %2468 = add i32 %33, 496
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = add i32 %2470, 0
  %2472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2472, %dx.types.Handle %67, float %1917, float %1918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = add i32 %33, 128
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = lshr i32 %2477, 24
  %2479 = uitofp i32 %2478 to float
  %2480 = fmul fast float %2474, 0x3F70101020000000
  %2481 = select i1 %2467, float 0x3F70101020000000, float %2480
  %2482 = fmul fast float %2481, %2479
  br label %2483

; <label>:2483                                    ; preds = %2465, %2460, %2452
  %2484 = phi float [ %2482, %2465 ], [ 0.000000e+00, %2460 ], [ 0.000000e+00, %2452 ]
  %2485 = add i32 %33, 128
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = lshr i32 %2487, 8
  %2491 = and i32 %2490, 255
  %2492 = uitofp i32 %2491 to float
  %2493 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2494 = fmul fast float %2492, %2493
  %2495 = fadd fast float %2494, %2489
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  br i1 %1809, label %2498, label %2506

; <label>:2498                                    ; preds = %2483
  %2499 = fsub fast float 1.000000e+00, %2105
  %2500 = fmul fast float %2499, %1797
  %2501 = fmul fast float %2499, %1798
  %2502 = fmul fast float %2499, %1799
  %2503 = fmul fast float %2499, %1800
  %2504 = fmul fast float %2499, %1801
  %2505 = fmul fast float %2499, %1802
  br label %2506

; <label>:2506                                    ; preds = %2498, %2483
  %2507 = phi float [ %2500, %2498 ], [ %1797, %2483 ]
  %2508 = phi float [ %2501, %2498 ], [ %1798, %2483 ]
  %2509 = phi float [ %2502, %2498 ], [ %1799, %2483 ]
  %2510 = phi float [ %2503, %2498 ], [ %1800, %2483 ]
  %2511 = phi float [ %2504, %2498 ], [ %1801, %2483 ]
  %2512 = phi float [ %2505, %2498 ], [ %1802, %2483 ]
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 3
  %2516 = icmp eq i32 %2515, 3
  br i1 %2516, label %2595, label %2517

; <label>:2517                                    ; preds = %2506
  %2518 = and i32 %2514, 16
  %2519 = icmp ne i32 %2518, 0
  %2520 = select i1 %2519, float %2105, float 0.000000e+00
  %2521 = icmp eq i32 %2515, 0
  br i1 %2521, label %2522, label %2550

; <label>:2522                                    ; preds = %2517
  %2523 = and i32 %2514, 64
  %2524 = icmp ne i32 %2523, 0
  %2525 = select i1 %2524, float %2105, float 0.000000e+00
  %2526 = fsub fast float %2325, %2507
  %2527 = fsub fast float %2326, %2508
  %2528 = fsub fast float %2327, %2509
  %2529 = fmul fast float %2520, %2526
  %2530 = fmul fast float %2520, %2527
  %2531 = fmul fast float %2520, %2528
  %2532 = fadd fast float %2529, %2507
  %2533 = fadd fast float %2530, %2508
  %2534 = fadd fast float %2531, %2509
  %2535 = fsub fast float %2311, %1803
  %2536 = fmul fast float %2520, %2535
  %2537 = fadd fast float %2536, %1803
  %2538 = fsub fast float %2453, %2510
  %2539 = fsub fast float %2454, %2511
  %2540 = fsub fast float %2455, %2512
  %2541 = fmul fast float %2525, %2538
  %2542 = fmul fast float %2525, %2539
  %2543 = fmul fast float %2525, %2540
  %2544 = fadd fast float %2541, %2510
  %2545 = fadd fast float %2542, %2511
  %2546 = fadd fast float %2543, %2512
  %2547 = fsub fast float %2497, %1807
  %2548 = fmul fast float %2520, %2547
  %2549 = fadd fast float %2548, %1807
  br label %2595

; <label>:2550                                    ; preds = %2517
  %2551 = icmp eq i32 %2515, 1
  br i1 %2551, label %2552, label %2565

; <label>:2552                                    ; preds = %2550
  %2553 = fadd fast float %2325, -1.000000e+00
  %2554 = fadd fast float %2326, -1.000000e+00
  %2555 = fadd fast float %2327, -1.000000e+00
  %2556 = fmul fast float %2520, %2553
  %2557 = fmul fast float %2520, %2554
  %2558 = fmul fast float %2520, %2555
  %2559 = fadd fast float %2556, 1.000000e+00
  %2560 = fadd fast float %2557, 1.000000e+00
  %2561 = fadd fast float %2558, 1.000000e+00
  %2562 = fmul fast float %2559, %2507
  %2563 = fmul fast float %2560, %2508
  %2564 = fmul fast float %2561, %2509
  br label %2595

; <label>:2565                                    ; preds = %2550
  %2566 = icmp eq i32 %2515, 2
  br i1 %2566, label %2567, label %2595

; <label>:2567                                    ; preds = %2565
  %2568 = call float @dx.op.unary.f32(i32 24, float %2325)  ; Sqrt(value)
  %2569 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2570 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2571 = fadd fast float %2568, -5.000000e-01
  %2572 = fadd fast float %2569, -5.000000e-01
  %2573 = fadd fast float %2570, -5.000000e-01
  %2574 = fmul fast float %2571, %2520
  %2575 = fmul fast float %2572, %2520
  %2576 = fmul fast float %2573, %2520
  %2577 = fadd fast float %2574, 5.000000e-01
  %2578 = fadd fast float %2575, 5.000000e-01
  %2579 = fadd fast float %2576, 5.000000e-01
  %2580 = fmul fast float %2577, 2.000000e+00
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fmul fast float %2581, %2507
  %2583 = fadd fast float %2582, %2580
  %2584 = fmul fast float %2583, %2507
  %2585 = fmul fast float %2578, 2.000000e+00
  %2586 = fsub fast float 1.000000e+00, %2585
  %2587 = fmul fast float %2586, %2508
  %2588 = fadd fast float %2587, %2585
  %2589 = fmul fast float %2588, %2508
  %2590 = fmul fast float %2579, 2.000000e+00
  %2591 = fsub fast float 1.000000e+00, %2590
  %2592 = fmul fast float %2591, %2509
  %2593 = fadd fast float %2592, %2590
  %2594 = fmul fast float %2593, %2509
  br label %2595

; <label>:2595                                    ; preds = %2567, %2565, %2552, %2522, %2506
  %2596 = phi float [ %2507, %2506 ], [ %2584, %2567 ], [ %2507, %2565 ], [ %2562, %2552 ], [ %2532, %2522 ]
  %2597 = phi float [ %2508, %2506 ], [ %2589, %2567 ], [ %2508, %2565 ], [ %2563, %2552 ], [ %2533, %2522 ]
  %2598 = phi float [ %2509, %2506 ], [ %2594, %2567 ], [ %2509, %2565 ], [ %2564, %2552 ], [ %2534, %2522 ]
  %2599 = phi float [ %2510, %2506 ], [ %2510, %2567 ], [ %2510, %2565 ], [ %2510, %2552 ], [ %2544, %2522 ]
  %2600 = phi float [ %2511, %2506 ], [ %2511, %2567 ], [ %2511, %2565 ], [ %2511, %2552 ], [ %2545, %2522 ]
  %2601 = phi float [ %2512, %2506 ], [ %2512, %2567 ], [ %2512, %2565 ], [ %2512, %2552 ], [ %2546, %2522 ]
  %2602 = phi float [ %1803, %2506 ], [ %1803, %2567 ], [ %1803, %2565 ], [ %1803, %2552 ], [ %2537, %2522 ]
  %2603 = phi float [ %1807, %2506 ], [ %1807, %2567 ], [ %1807, %2565 ], [ %1807, %2552 ], [ %2549, %2522 ]
  %2604 = and i32 %2514, 12
  %2605 = icmp eq i32 %2604, 12
  br i1 %2605, label %2688, label %2606

; <label>:2606                                    ; preds = %2595
  %2607 = and i32 %2514, 2097184
  %2608 = icmp eq i32 %2607, 2097184
  %2609 = select i1 %2608, float %2105, float 0.000000e+00
  %2610 = and i32 %2514, 4194336
  %2611 = icmp eq i32 %2610, 4194336
  %2612 = select i1 %2611, float %2105, float 0.000000e+00
  %2613 = and i32 %2514, 8388640
  %2614 = icmp eq i32 %2613, 8388640
  %2615 = select i1 %2614, float %2105, float 0.000000e+00
  %2616 = and i32 %2514, 16384
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %2105, float 0.000000e+00
  %2619 = icmp eq i32 %2604, 0
  br i1 %2619, label %2620, label %2636

; <label>:2620                                    ; preds = %2606
  %2621 = fsub fast float %2406, %1795
  %2622 = fsub fast float %2407, %1796
  %2623 = fmul fast float %2609, %2621
  %2624 = fmul fast float %2609, %2622
  %2625 = fadd fast float %2623, %1795
  %2626 = fadd fast float %2624, %1796
  %2627 = fsub fast float %2408, %1805
  %2628 = fmul fast float %2612, %2627
  %2629 = fadd fast float %2628, %1805
  %2630 = fsub fast float %2405, %1804
  %2631 = fmul fast float %2615, %2630
  %2632 = fadd fast float %2631, %1804
  %2633 = fsub fast float %2484, %1806
  %2634 = fmul fast float %2618, %2633
  %2635 = fadd fast float %2634, %1806
  br label %2688

; <label>:2636                                    ; preds = %2606
  %2637 = icmp eq i32 %2604, 4
  br i1 %2637, label %2638, label %2672

; <label>:2638                                    ; preds = %2636
  %2639 = fmul fast float %2609, %2406
  %2640 = fmul fast float %2609, %2407
  %2641 = fadd fast float %2639, %1795
  %2642 = fadd fast float %2640, %1796
  %2643 = call float @dx.op.binary.f32(i32 36, float %1805, float %2408)  ; FMin(a,b)
  %2644 = fsub fast float %2643, %1805
  %2645 = fmul fast float %2644, %2612
  %2646 = fadd fast float %2645, %1805
  %2647 = fadd fast float %2405, %1804
  %2648 = fmul fast float %2647, 0x3FF337FAE0000000
  %2649 = fmul fast float %1804, %1804
  %2650 = fmul fast float %2405, %2405
  %2651 = fadd fast float %2650, %2649
  %2652 = fmul fast float %2651, 0x3FE5152B00000000
  %2653 = fmul fast float %1804, 0xBFCC1F85E0000000
  %2654 = fmul fast float %2653, %2405
  %2655 = fadd fast float %2654, 0xBFE1363700000000
  %2656 = fadd fast float %2655, %2648
  %2657 = fsub fast float %2656, %2652
  %2658 = fmul fast float %2647, 0x3FBA6F0D00000000
  %2659 = fmul fast float %2651, 0x3FD0432880000000
  %2660 = fmul fast float %1804, 0xBFEF110800000000
  %2661 = fmul fast float %2660, %2405
  %2662 = fadd fast float %2661, 1.000000e+00
  %2663 = fsub fast float %2662, %2658
  %2664 = fadd fast float %2663, %2659
  %2665 = fdiv fast float %2657, %2664
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = fsub fast float %2666, %1804
  %2668 = fmul fast float %2667, %2615
  %2669 = fadd fast float %2668, %1804
  %2670 = fmul fast float %2618, %2484
  %2671 = fadd fast float %2670, %1806
  br label %2688

; <label>:2672                                    ; preds = %2636
  %2673 = icmp eq i32 %2604, 8
  br i1 %2673, label %2674, label %2688

; <label>:2674                                    ; preds = %2672
  %2675 = fmul fast float %2609, %2406
  %2676 = fmul fast float %2609, %2407
  %2677 = fadd fast float %2675, %1795
  %2678 = fadd fast float %2676, %1796
  %2679 = call float @dx.op.binary.f32(i32 36, float %1805, float %2408)  ; FMin(a,b)
  %2680 = fsub fast float %2679, %1805
  %2681 = fmul fast float %2680, %2612
  %2682 = fadd fast float %2681, %1805
  %2683 = fsub fast float %2405, %1804
  %2684 = fmul fast float %2615, %2683
  %2685 = fadd fast float %2684, %1804
  %2686 = fmul fast float %2618, %2484
  %2687 = fadd fast float %2686, %1806
  br label %2688

; <label>:2688                                    ; preds = %2674, %2672, %2638, %2620, %2595, %2104, %1808, %1794
  %2689 = phi float [ %1795, %2595 ], [ %1795, %2104 ], [ %1795, %1794 ], [ %2677, %2674 ], [ %1795, %2672 ], [ %2641, %2638 ], [ %2625, %2620 ], [ %1795, %1808 ]
  %2690 = phi float [ %1796, %2595 ], [ %1796, %2104 ], [ %1796, %1794 ], [ %2678, %2674 ], [ %1796, %2672 ], [ %2642, %2638 ], [ %2626, %2620 ], [ %1796, %1808 ]
  %2691 = phi float [ %2596, %2595 ], [ %1797, %2104 ], [ %1797, %1794 ], [ %2596, %2674 ], [ %2596, %2672 ], [ %2596, %2638 ], [ %2596, %2620 ], [ %1797, %1808 ]
  %2692 = phi float [ %2597, %2595 ], [ %1798, %2104 ], [ %1798, %1794 ], [ %2597, %2674 ], [ %2597, %2672 ], [ %2597, %2638 ], [ %2597, %2620 ], [ %1798, %1808 ]
  %2693 = phi float [ %2598, %2595 ], [ %1799, %2104 ], [ %1799, %1794 ], [ %2598, %2674 ], [ %2598, %2672 ], [ %2598, %2638 ], [ %2598, %2620 ], [ %1799, %1808 ]
  %2694 = phi float [ %2599, %2595 ], [ %1800, %2104 ], [ %1800, %1794 ], [ %2599, %2674 ], [ %2599, %2672 ], [ %2599, %2638 ], [ %2599, %2620 ], [ %1800, %1808 ]
  %2695 = phi float [ %2600, %2595 ], [ %1801, %2104 ], [ %1801, %1794 ], [ %2600, %2674 ], [ %2600, %2672 ], [ %2600, %2638 ], [ %2600, %2620 ], [ %1801, %1808 ]
  %2696 = phi float [ %2601, %2595 ], [ %1802, %2104 ], [ %1802, %1794 ], [ %2601, %2674 ], [ %2601, %2672 ], [ %2601, %2638 ], [ %2601, %2620 ], [ %1802, %1808 ]
  %2697 = phi float [ %2602, %2595 ], [ %1803, %2104 ], [ %1803, %1794 ], [ %2602, %2674 ], [ %2602, %2672 ], [ %2602, %2638 ], [ %2602, %2620 ], [ %1803, %1808 ]
  %2698 = phi float [ %1804, %2595 ], [ %1804, %2104 ], [ %1804, %1794 ], [ %2685, %2674 ], [ %1804, %2672 ], [ %2669, %2638 ], [ %2632, %2620 ], [ %1804, %1808 ]
  %2699 = phi float [ %1805, %2595 ], [ %1805, %2104 ], [ %1805, %1794 ], [ %2682, %2674 ], [ %1805, %2672 ], [ %2646, %2638 ], [ %2629, %2620 ], [ %1805, %1808 ]
  %2700 = phi float [ %1806, %2595 ], [ %1806, %2104 ], [ %1806, %1794 ], [ %2687, %2674 ], [ %1806, %2672 ], [ %2671, %2638 ], [ %2635, %2620 ], [ %1806, %1808 ]
  %2701 = phi float [ %2603, %2595 ], [ %1807, %2104 ], [ %1807, %1794 ], [ %2603, %2674 ], [ %2603, %2672 ], [ %2603, %2638 ], [ %2603, %2620 ], [ %1807, %1808 ]
  br i1 %352, label %3582, label %2702

; <label>:2702                                    ; preds = %2688
  %2703 = icmp ult i32 %403, 4
  %2704 = add i32 %33, 72
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = add i32 %33, 76
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = or i32 %2709, %2706
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %3582, label %2712

; <label>:2712                                    ; preds = %2702
  %2713 = and i32 %2706, 262144
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %37, float 1.000000e+00
  %2716 = select i1 %2714, float %38, float 0.000000e+00
  %2717 = select i1 %2714, float %39, float 0.000000e+00
  %2718 = select i1 %2714, float %40, float 1.000000e+00
  %2719 = select i1 %2714, float %41, float %58
  %2720 = select i1 %2714, float %42, float %59
  %2721 = add i32 %33, 332
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = lshr i32 %2723, 16
  %2725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2724)  ; LegacyF16ToF32(value)
  %2726 = fmul fast float %2725, 0x3F50624DE0000000
  %2727 = add i32 %33, 136
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = lshr i32 %2729, 16
  %2731 = and i32 %2730, 255
  %2732 = lshr i32 %2729, 24
  %2733 = add i32 %33, 340
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 65535
  %2737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2736)  ; LegacyF16ToF32(value)
  %2738 = lshr i32 %2735, 16
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = add i32 %33, 80
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = lshr i32 %2742, 22
  %2744 = shl nuw nsw i32 %2743, 5
  %2745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2744)  ; LegacyF16ToF32(value)
  %2746 = shl i32 %2742, 4
  %2747 = and i32 %2746, 32752
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = lshr i32 %2742, 7
  %2750 = and i32 %2749, 32752
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2754 = fmul fast float %2753, 1.000000e+03
  %2755 = fmul fast float %342, %2754
  %2756 = call float @dx.op.unary.f32(i32 22, float %2755)  ; Frc(value)
  %2757 = fadd fast float %2756, %332
  %2758 = fmul fast float %343, %2754
  %2759 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2760 = fadd fast float %2759, %334
  %2761 = fmul fast float %2726, %2754
  %2762 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2763 = fmul fast float %2762, 0x401921FB60000000
  %2764 = fadd fast float %2763, %2745
  %2765 = call float @dx.op.unary.f32(i32 13, float %2764)  ; Sin(value)
  %2766 = call float @dx.op.unary.f32(i32 12, float %2764)  ; Cos(value)
  %2767 = fsub fast float -0.000000e+00, %2765
  %2768 = fadd fast float %2719, -5.000000e-01
  %2769 = fadd fast float %2720, -5.000000e-01
  %2770 = fmul fast float %2737, %2768
  %2771 = fmul fast float %2739, %2769
  %2772 = fadd fast float %2770, 5.000000e-01
  %2773 = fadd fast float %2771, 5.000000e-01
  %2774 = fmul fast float %2748, %2772
  %2775 = fmul fast float %2751, %2773
  %2776 = fmul fast float %2766, %2774
  %2777 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2775, float %2776)  ; FMad(a,b,c)
  %2778 = fmul fast float %2765, %2774
  %2779 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2775, float %2778)  ; FMad(a,b,c)
  %2780 = fadd fast float %2757, %2777
  %2781 = fadd fast float %2760, %2779
  %2782 = icmp ugt i32 %2731, 1
  %2783 = icmp ugt i32 %2729, 33554431
  %2784 = or i1 %2783, %2782
  br i1 %2784, label %2785, label %2810

; <label>:2785                                    ; preds = %2712
  %2786 = add i32 %33, 276
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = lshr i32 %2788, 16
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = fmul fast float %2753, %2790
  %2792 = call float @dx.op.unary.f32(i32 22, float %2791)  ; Frc(value)
  %2793 = mul nuw nsw i32 %2731, %2732
  %2794 = uitofp i32 %2793 to float
  %2795 = fmul fast float %2792, %2794
  %2796 = call float @dx.op.unary.f32(i32 27, float %2795)  ; Round_ni(value)
  %2797 = fptoui float %2796 to i32
  %2798 = urem i32 %2797, %2731
  %2799 = udiv i32 %2797, %2732
  %2800 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2801 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2802 = uitofp i32 %2798 to float
  %2803 = uitofp i32 %2799 to float
  %2804 = fadd fast float %2800, %2802
  %2805 = fadd fast float %2801, %2803
  %2806 = uitofp i32 %2731 to float
  %2807 = uitofp i32 %2732 to float
  %2808 = fdiv fast float %2804, %2806
  %2809 = fdiv fast float %2805, %2807
  br label %2810

; <label>:2810                                    ; preds = %2785, %2712
  %2811 = phi float [ %2808, %2785 ], [ %2780, %2712 ]
  %2812 = phi float [ %2809, %2785 ], [ %2781, %2712 ]
  %2813 = and i32 %2706, 16777216
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2924, label %2815

; <label>:2815                                    ; preds = %2810
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2820 = fadd fast float %2817, %133
  %2821 = fadd fast float %2818, %134
  %2822 = fadd fast float %2819, %135
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = icmp eq i32 %34, 65535
  br i1 %2826, label %2921, label %2827

; <label>:2827                                    ; preds = %2815
  %2828 = lshr i32 %34, 1
  %2829 = shl i32 %2828, 2
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = and i32 %34, 1
  %2833 = icmp ne i32 %2832, 0
  %2834 = lshr i32 %2831, 16
  %2835 = and i32 %2831, 65535
  %2836 = select i1 %2833, i32 %2834, i32 %2835
  %2837 = icmp eq i32 %2836, 65535
  br i1 %2837, label %2917, label %2838

; <label>:2838                                    ; preds = %2827
  %2839 = mul nuw nsw i32 %2836, 40
  %2840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = add nuw nsw i32 %2839, 12
  %2845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = add nuw nsw i32 %2839, 24
  %2850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  %2854 = add nuw nsw i32 %2839, 36
  %2855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = fsub fast float %2820, %2841
  %2858 = fsub fast float %2821, %2842
  %2859 = fsub fast float %2822, %2843
  %2860 = fmul fast float %2856, %2857
  %2861 = fmul fast float %2856, %2858
  %2862 = fmul fast float %2856, %2859
  %2863 = call float @dx.op.unary.f32(i32 27, float %2860)  ; Round_ni(value)
  %2864 = call float @dx.op.unary.f32(i32 27, float %2861)  ; Round_ni(value)
  %2865 = call float @dx.op.unary.f32(i32 27, float %2862)  ; Round_ni(value)
  %2866 = fadd fast float %2863, 5.000000e-01
  %2867 = fadd fast float %2864, 5.000000e-01
  %2868 = fadd fast float %2865, 5.000000e-01
  %2869 = fmul fast float %2866, %2846
  %2870 = fmul fast float %2867, %2847
  %2871 = fmul fast float %2868, %2848
  %2872 = shl i32 %34, 2
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = add i32 %2874, 0
  %2876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2877 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2878 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2879 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2876, %dx.types.Handle %30, float %2877, float %2878, float %2879, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = fmul fast float %2881, 1.023000e+03
  %2885 = fmul fast float %2882, 1.023000e+03
  %2886 = fmul fast float %2883, 1.023000e+03
  %2887 = fadd fast float %2884, 5.000000e-01
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2891 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2892 = call float @dx.op.unary.f32(i32 27, float %2889)  ; Round_ni(value)
  %2893 = fsub fast float %2860, %2863
  %2894 = fsub fast float %2861, %2864
  %2895 = fsub fast float %2862, %2865
  %2896 = fmul fast float %2893, 7.500000e-01
  %2897 = fmul fast float %2894, 7.500000e-01
  %2898 = fmul fast float %2895, 7.500000e-01
  %2899 = fadd fast float %2863, 1.250000e-01
  %2900 = fadd fast float %2899, %2896
  %2901 = fadd fast float %2900, %2890
  %2902 = fadd fast float %2864, 1.250000e-01
  %2903 = fadd fast float %2902, %2897
  %2904 = fadd fast float %2903, %2891
  %2905 = fadd fast float %2865, 1.250000e-01
  %2906 = fadd fast float %2905, %2898
  %2907 = fadd fast float %2906, %2892
  %2908 = fmul fast float %2901, %2851
  %2909 = fmul fast float %2904, %2852
  %2910 = fmul fast float %2907, %2853
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2914, %dx.types.Handle %28, float %2908, float %2909, float %2910, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  br label %2917

; <label>:2917                                    ; preds = %2838, %2827
  %2918 = phi float [ %2916, %2838 ], [ -1.000000e+00, %2827 ]
  %2919 = fadd fast float %2918, %2825
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  br label %2921

; <label>:2921                                    ; preds = %2917, %2815
  %2922 = phi float [ %2920, %2917 ], [ %2825, %2815 ]
  %2923 = fmul fast float %2922, %398
  br label %2924

; <label>:2924                                    ; preds = %2921, %2810
  %2925 = phi float [ %2923, %2921 ], [ %398, %2810 ]
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 256
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2976, label %2930

; <label>:2930                                    ; preds = %2924
  %2931 = add i32 %33, 468
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = add i32 %2933, 0
  %2935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2935, %dx.types.Handle %67, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = add i32 %33, 148
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = shl i32 %2940, 4
  %2942 = and i32 %2941, 32752
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = lshr i32 %2940, 7
  %2945 = and i32 %2944, 32752
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = fsub fast float 1.000000e+00, %2925
  %2948 = call float @dx.op.binary.f32(i32 35, float %2947, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2949 = bitcast float %2925 to i32
  %2950 = sitofp i32 %2949 to float
  %2951 = fadd fast float %2950, 0xC1CFBF8940000000
  %2952 = fmul fast float %2946, %2951
  %2953 = fadd fast float %2952, 0x41CFBF8940000000
  %2954 = fptosi float %2953 to i32
  %2955 = bitcast i32 %2954 to float
  %2956 = bitcast float %2948 to i32
  %2957 = sitofp i32 %2956 to float
  %2958 = fadd fast float %2957, 0xC1CFBF8940000000
  %2959 = fmul fast float %2958, %2946
  %2960 = fadd fast float %2959, 0x41CFBF8940000000
  %2961 = fptosi float %2960 to i32
  %2962 = bitcast i32 %2961 to float
  %2963 = fmul fast float %2955, %2943
  %2964 = fmul fast float %2962, %2943
  %2965 = fsub fast float %2948, %2963
  %2966 = fadd fast float %2964, %2948
  %2967 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2968 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2969 = fsub fast float %2937, %2967
  %2970 = fsub fast float %2968, %2967
  %2971 = bitcast float %2970 to i32
  %2972 = sub nsw i32 2129859010, %2971
  %2973 = bitcast i32 %2972 to float
  %2974 = fmul fast float %2973, %2969
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  br label %2976

; <label>:2976                                    ; preds = %2930, %2924
  %2977 = phi float [ %2975, %2930 ], [ %2925, %2924 ]
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 128
  %2981 = icmp eq i32 %2980, 0
  br i1 %2981, label %2998, label %2982

; <label>:2982                                    ; preds = %2976
  %2983 = add i32 %33, 452
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %2985, 0
  %2987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2987, %dx.types.Handle %67, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 524288
  %2993 = icmp ne i32 %2992, 0
  %2994 = fcmp fast ogt float %2989, 0x3FE0101020000000
  %2995 = select i1 %2994, float 1.000000e+00, float 0.000000e+00
  %2996 = select i1 %2993, float %2995, float %2989
  %2997 = fmul fast float %2996, %2977
  br label %2998

; <label>:2998                                    ; preds = %2982, %2976
  %2999 = phi float [ %2997, %2982 ], [ %2977, %2976 ]
  %3000 = fcmp fast ult float %2999, 0x3F70101020000000
  br i1 %3000, label %3582, label %3001

; <label>:3001                                    ; preds = %2998
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 16
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3204, label %3006

; <label>:3006                                    ; preds = %3001
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = add i32 %33, 404
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = add i32 %3011, 0
  %3013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3013, %dx.types.Handle %66, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.ResRet.f32 %3014, 1
  %3017 = extractvalue %dx.types.ResRet.f32 %3014, 2
  %3018 = extractvalue %dx.types.ResRet.f32 %3014, 3
  %3019 = and i32 %3008, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = lshr i32 %3008, 8
  %3022 = and i32 %3021, 255
  %3023 = uitofp i32 %3022 to float
  %3024 = fmul fast float %3018, %3020
  %3025 = fadd fast float %3024, %3023
  %3026 = fmul fast float %3025, 0x3F70101000000000
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 512
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3039, label %3031

; <label>:3031                                    ; preds = %3006
  %3032 = add i32 %33, 484
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3036, %dx.types.Handle %67, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  br label %3039

; <label>:3039                                    ; preds = %3031, %3006
  %3040 = phi float [ %3038, %3031 ], [ 1.000000e+00, %3006 ]
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 33554432
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3151, label %3045

; <label>:3045                                    ; preds = %3039
  %3046 = add i32 %33, 272
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = lshr i32 %3048, 16
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = add i32 %33, 276
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 65535
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = lshr i32 %3059, 24
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = and i32 %3059, 255
  %3064 = uitofp i32 %3063 to float
  %3065 = fmul fast float %3064, 0x3F70101020000000
  %3066 = lshr i32 %3059, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = fmul fast float %3068, 0x3F70101020000000
  %3070 = lshr i32 %3059, 16
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = fmul fast float %3072, 0x3F70101020000000
  %3074 = add i32 %33, 268
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = lshr i32 %3076, 24
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = and i32 %3076, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = fmul fast float %3081, 0x3F70101020000000
  %3083 = lshr i32 %3076, 8
  %3084 = and i32 %3083, 255
  %3085 = uitofp i32 %3084 to float
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = lshr i32 %3076, 16
  %3088 = and i32 %3087, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = bitcast float %3015 to i32
  %3092 = ashr i32 %3091, 1
  %3093 = sub nsw i32 1597463174, %3092
  %3094 = bitcast i32 %3093 to float
  %3095 = fmul fast float %3015, 5.000000e-01
  %3096 = fmul fast float %3094, %3094
  %3097 = fmul fast float %3096, %3095
  %3098 = fsub fast float 1.500000e+00, %3097
  %3099 = fmul fast float %3094, %3015
  %3100 = fmul fast float %3099, %3098
  %3101 = bitcast float %3016 to i32
  %3102 = ashr i32 %3101, 1
  %3103 = sub nsw i32 1597463174, %3102
  %3104 = bitcast i32 %3103 to float
  %3105 = fmul fast float %3016, 5.000000e-01
  %3106 = fmul fast float %3104, %3104
  %3107 = fmul fast float %3106, %3105
  %3108 = fsub fast float 1.500000e+00, %3107
  %3109 = fmul fast float %3104, %3016
  %3110 = fmul fast float %3109, %3108
  %3111 = bitcast float %3017 to i32
  %3112 = ashr i32 %3111, 1
  %3113 = sub nsw i32 1597463174, %3112
  %3114 = bitcast i32 %3113 to float
  %3115 = fmul fast float %3017, 5.000000e-01
  %3116 = fmul fast float %3114, %3114
  %3117 = fmul fast float %3116, %3115
  %3118 = fsub fast float 1.500000e+00, %3117
  %3119 = fmul fast float %3114, %3017
  %3120 = fmul fast float %3119, %3118
  %3121 = fsub fast float %3100, %3082
  %3122 = fsub fast float %3110, %3086
  %3123 = fsub fast float %3120, %3090
  %3124 = fmul fast float %3121, %3050
  %3125 = fmul fast float %3122, %3052
  %3126 = fmul fast float %3123, %3057
  %3127 = fadd fast float %3124, %3065
  %3128 = fadd fast float %3125, %3069
  %3129 = fadd fast float %3126, %3073
  %3130 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3131 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3132 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3133 = fmul fast float %3130, %3130
  %3134 = fmul fast float %3131, %3131
  %3135 = fmul fast float %3132, %3132
  %3136 = fsub fast float %3133, %3015
  %3137 = fsub fast float %3134, %3016
  %3138 = fsub fast float %3135, %3017
  %3139 = fmul fast float %3136, %3040
  %3140 = fmul fast float %3137, %3040
  %3141 = fmul fast float %3138, %3040
  %3142 = fadd fast float %3139, %3015
  %3143 = fadd fast float %3140, %3016
  %3144 = fadd fast float %3141, %3017
  %3145 = fadd fast float %3062, %3026
  %3146 = fsub fast float %3145, %3079
  %3147 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3148 = fsub fast float %3147, %3026
  %3149 = fmul fast float %3148, %3040
  %3150 = fadd fast float %3149, %3026
  br label %3204

; <label>:3151                                    ; preds = %3039
  %3152 = and i32 %3042, 134217728
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3188, label %3154

; <label>:3154                                    ; preds = %3151
  %3155 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3156 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fadd fast float %3156, -5.000000e-01
  %3160 = fadd fast float %3157, -5.000000e-01
  %3161 = fmul fast float %3158, %3040
  %3162 = fmul fast float %3159, %3040
  %3163 = fmul fast float %3160, %3040
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = fadd fast float %3162, 5.000000e-01
  %3166 = fadd fast float %3163, 5.000000e-01
  %3167 = call float @dx.op.unary.f32(i32 24, float %3015)  ; Sqrt(value)
  %3168 = call float @dx.op.unary.f32(i32 24, float %3016)  ; Sqrt(value)
  %3169 = call float @dx.op.unary.f32(i32 24, float %3017)  ; Sqrt(value)
  %3170 = fmul fast float %3164, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3167
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3167
  %3175 = fmul fast float %3165, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3168
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3168
  %3180 = fmul fast float %3166, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3169
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3169
  %3185 = fmul fast float %3174, %3174
  %3186 = fmul fast float %3179, %3179
  %3187 = fmul fast float %3184, %3184
  br label %3204

; <label>:3188                                    ; preds = %3151
  %3189 = fmul fast float %319, %319
  %3190 = fmul fast float %323, %323
  %3191 = fmul fast float %327, %327
  %3192 = fadd fast float %3189, -1.000000e+00
  %3193 = fadd fast float %3190, -1.000000e+00
  %3194 = fadd fast float %3191, -1.000000e+00
  %3195 = fmul fast float %3040, %3192
  %3196 = fmul fast float %3040, %3193
  %3197 = fmul fast float %3040, %3194
  %3198 = fadd fast float %3195, 1.000000e+00
  %3199 = fadd fast float %3196, 1.000000e+00
  %3200 = fadd fast float %3197, 1.000000e+00
  %3201 = fmul fast float %3198, %3015
  %3202 = fmul fast float %3199, %3016
  %3203 = fmul fast float %3200, %3017
  br label %3204

; <label>:3204                                    ; preds = %3188, %3154, %3045, %3001
  %3205 = phi float [ %3150, %3045 ], [ %3026, %3154 ], [ %3026, %3188 ], [ 0x3FA23C0BE0000000, %3001 ]
  %3206 = phi float [ %3142, %3045 ], [ %3185, %3154 ], [ %3201, %3188 ], [ 1.000000e+00, %3001 ]
  %3207 = phi float [ %3143, %3045 ], [ %3186, %3154 ], [ %3202, %3188 ], [ 1.000000e+00, %3001 ]
  %3208 = phi float [ %3144, %3045 ], [ %3187, %3154 ], [ %3203, %3188 ], [ 1.000000e+00, %3001 ]
  %3209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.i32 %3209, 1
  %3211 = and i32 %3210, 1
  %3212 = icmp ne i32 %3211, 0
  %3213 = add i32 %33, 356
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, 32
  %3217 = icmp ne i32 %3216, 0
  %3218 = and i1 %3212, %3217
  %3219 = select i1 %3218, float 1.000000e+00, float %3206
  %3220 = select i1 %3218, float 0x3FD3333340000000, float %3207
  %3221 = select i1 %3218, float 0x3FD3333340000000, float %3208
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 32
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3298, label %3226

; <label>:3226                                    ; preds = %3204
  %3227 = add i32 %33, 140
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %33, 420
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %3232, 0
  %3234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3234, %dx.types.Handle %66, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = extractvalue %dx.types.ResRet.f32 %3235, 3
  %3240 = and i32 %3229, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = lshr i32 %3229, 8
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = lshr i32 %3229, 16
  %3246 = and i32 %3245, 255
  %3247 = uitofp i32 %3246 to float
  %3248 = fmul fast float %3247, 0x3F70101000000000
  %3249 = fmul fast float %3236, %3241
  %3250 = fadd fast float %3249, %3244
  %3251 = fmul fast float %3250, 0x3F70101000000000
  %3252 = fadd fast float %3237, -5.000000e-01
  %3253 = fadd fast float %3239, -5.000000e-01
  %3254 = fmul fast float %3252, %3248
  %3255 = fmul fast float %3253, %3248
  %3256 = fadd fast float %3254, 5.000000e-01
  %3257 = fadd fast float %3255, 5.000000e-01
  %3258 = fmul fast float %3256, 2.000000e+00
  %3259 = fadd fast float %3258, -1.000000e+00
  %3260 = fmul fast float %3257, 2.000000e+00
  %3261 = fadd fast float %3260, -1.000000e+00
  %3262 = fadd fast float %3259, %3261
  %3263 = fmul fast float %3262, 5.000000e-01
  %3264 = fsub fast float %3259, %3261
  %3265 = fmul fast float %3264, 5.000000e-01
  %3266 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = call float @dx.op.unary.f32(i32 6, float %3265)  ; FAbs(value)
  %3269 = fsub fast float %3267, %3268
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3263, float %3265, float %3269, float %3263, float %3265, float %3269)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = call float @dx.op.unary.f32(i32 25, float %3270)  ; Rsqrt(value)
  %3272 = fmul fast float %3263, %3271
  %3273 = fmul fast float %3265, %3271
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 67108864
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3294, label %3278

; <label>:3278                                    ; preds = %3226
  %3279 = add i32 %33, 328
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 65535
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 65535
  %3287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3286)  ; LegacyF16ToF32(value)
  %3288 = lshr i32 %3281, 16
  %3289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3288)  ; LegacyF16ToF32(value)
  %3290 = fsub fast float %3251, %3289
  %3291 = fmul fast float %3290, %3283
  %3292 = fadd fast float %3291, %3287
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  br label %3294

; <label>:3294                                    ; preds = %3278, %3226
  %3295 = phi float [ %3293, %3278 ], [ %3251, %3226 ]
  %3296 = call float @dx.op.dot2.f32(i32 54, float %3272, float %3273, float %2715, float %2716)  ; Dot2(ax,ay,bx,by)
  %3297 = call float @dx.op.dot2.f32(i32 54, float %3272, float %3273, float %2717, float %2718)  ; Dot2(ax,ay,bx,by)
  br label %3298

; <label>:3298                                    ; preds = %3294, %3204
  %3299 = phi float [ %3295, %3294 ], [ 0x3FD6666660000000, %3204 ]
  %3300 = phi float [ %3296, %3294 ], [ 0.000000e+00, %3204 ]
  %3301 = phi float [ %3297, %3294 ], [ 0.000000e+00, %3204 ]
  %3302 = phi float [ %3238, %3294 ], [ 1.000000e+00, %3204 ]
  %3303 = add i32 %33, 208
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = lshr i32 %3305, 22
  %3307 = shl nuw nsw i32 %3306, 5
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 64
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3346, label %3313

; <label>:3313                                    ; preds = %3298
  %3314 = add i32 %33, 436
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = add i32 %3316, 0
  %3318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 131072
  %3322 = icmp eq i32 %3321, 0
  %3323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3318, %dx.types.Handle %66, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = fmul fast float %3324, %307
  %3328 = fmul fast float %3325, %310
  %3329 = fmul fast float %3326, %313
  br i1 %3322, label %3336, label %3330

; <label>:3330                                    ; preds = %3313
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3333 = fmul fast float %3332, %3327
  %3334 = fmul fast float %3332, %3328
  %3335 = fmul fast float %3332, %3329
  br label %3336

; <label>:3336                                    ; preds = %3330, %3313
  %3337 = phi float [ %3333, %3330 ], [ %3327, %3313 ]
  %3338 = phi float [ %3334, %3330 ], [ %3328, %3313 ]
  %3339 = phi float [ %3335, %3330 ], [ %3329, %3313 ]
  %3340 = fmul fast float %3337, %3308
  %3341 = select i1 %175, float %3340, float %3337
  %3342 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3338, float %3339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3343 = select i1 %175, float 0.000000e+00, float %3337
  %3344 = select i1 %175, float %3342, float %3338
  %3345 = select i1 %175, float 0.000000e+00, float %3339
  br label %3346

; <label>:3346                                    ; preds = %3336, %3298
  %3347 = phi float [ %3343, %3336 ], [ 0.000000e+00, %3298 ]
  %3348 = phi float [ %3344, %3336 ], [ 0.000000e+00, %3298 ]
  %3349 = phi float [ %3345, %3336 ], [ 0.000000e+00, %3298 ]
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 26624
  %3353 = icmp eq i32 %3352, 0
  br i1 %3353, label %3377, label %3354

; <label>:3354                                    ; preds = %3346
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = and i32 %3356, 16384
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3377, label %3359

; <label>:3359                                    ; preds = %3354
  %3360 = and i32 %3356, 1048576
  %3361 = icmp ne i32 %3360, 0
  %3362 = add i32 %33, 500
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = add i32 %3364, 0
  %3366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3366, %dx.types.Handle %67, float %2811, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = add i32 %33, 144
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = lshr i32 %3371, 24
  %3373 = uitofp i32 %3372 to float
  %3374 = fmul fast float %3368, 0x3F70101020000000
  %3375 = select i1 %3361, float 0x3F70101020000000, float %3374
  %3376 = fmul fast float %3375, %3373
  br label %3377

; <label>:3377                                    ; preds = %3359, %3354, %3346
  %3378 = phi float [ %3376, %3359 ], [ 0.000000e+00, %3354 ], [ 0.000000e+00, %3346 ]
  %3379 = add i32 %33, 144
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = lshr i32 %3381, 8
  %3385 = and i32 %3384, 255
  %3386 = uitofp i32 %3385 to float
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = fmul fast float %3386, %3387
  %3389 = fadd fast float %3388, %3383
  %3390 = fmul fast float %3389, 0x3F70101020000000
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  br i1 %2703, label %3392, label %3400

; <label>:3392                                    ; preds = %3377
  %3393 = fsub fast float 1.000000e+00, %2999
  %3394 = fmul fast float %3393, %2691
  %3395 = fmul fast float %3393, %2692
  %3396 = fmul fast float %3393, %2693
  %3397 = fmul fast float %3393, %2694
  %3398 = fmul fast float %3393, %2695
  %3399 = fmul fast float %3393, %2696
  br label %3400

; <label>:3400                                    ; preds = %3392, %3377
  %3401 = phi float [ %3394, %3392 ], [ %2691, %3377 ]
  %3402 = phi float [ %3395, %3392 ], [ %2692, %3377 ]
  %3403 = phi float [ %3396, %3392 ], [ %2693, %3377 ]
  %3404 = phi float [ %3397, %3392 ], [ %2694, %3377 ]
  %3405 = phi float [ %3398, %3392 ], [ %2695, %3377 ]
  %3406 = phi float [ %3399, %3392 ], [ %2696, %3377 ]
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = and i32 %3408, 3
  %3410 = icmp eq i32 %3409, 3
  br i1 %3410, label %3489, label %3411

; <label>:3411                                    ; preds = %3400
  %3412 = and i32 %3408, 16
  %3413 = icmp ne i32 %3412, 0
  %3414 = select i1 %3413, float %2999, float 0.000000e+00
  %3415 = icmp eq i32 %3409, 0
  br i1 %3415, label %3416, label %3444

; <label>:3416                                    ; preds = %3411
  %3417 = and i32 %3408, 64
  %3418 = icmp ne i32 %3417, 0
  %3419 = select i1 %3418, float %2999, float 0.000000e+00
  %3420 = fsub fast float %3219, %3401
  %3421 = fsub fast float %3220, %3402
  %3422 = fsub fast float %3221, %3403
  %3423 = fmul fast float %3414, %3420
  %3424 = fmul fast float %3414, %3421
  %3425 = fmul fast float %3414, %3422
  %3426 = fadd fast float %3423, %3401
  %3427 = fadd fast float %3424, %3402
  %3428 = fadd fast float %3425, %3403
  %3429 = fsub fast float %3205, %2697
  %3430 = fmul fast float %3414, %3429
  %3431 = fadd fast float %3430, %2697
  %3432 = fsub fast float %3347, %3404
  %3433 = fsub fast float %3348, %3405
  %3434 = fsub fast float %3349, %3406
  %3435 = fmul fast float %3419, %3432
  %3436 = fmul fast float %3419, %3433
  %3437 = fmul fast float %3419, %3434
  %3438 = fadd fast float %3435, %3404
  %3439 = fadd fast float %3436, %3405
  %3440 = fadd fast float %3437, %3406
  %3441 = fsub fast float %3391, %2701
  %3442 = fmul fast float %3414, %3441
  %3443 = fadd fast float %3442, %2701
  br label %3489

; <label>:3444                                    ; preds = %3411
  %3445 = icmp eq i32 %3409, 1
  br i1 %3445, label %3446, label %3459

; <label>:3446                                    ; preds = %3444
  %3447 = fadd fast float %3219, -1.000000e+00
  %3448 = fadd fast float %3220, -1.000000e+00
  %3449 = fadd fast float %3221, -1.000000e+00
  %3450 = fmul fast float %3414, %3447
  %3451 = fmul fast float %3414, %3448
  %3452 = fmul fast float %3414, %3449
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fadd fast float %3451, 1.000000e+00
  %3455 = fadd fast float %3452, 1.000000e+00
  %3456 = fmul fast float %3453, %3401
  %3457 = fmul fast float %3454, %3402
  %3458 = fmul fast float %3455, %3403
  br label %3489

; <label>:3459                                    ; preds = %3444
  %3460 = icmp eq i32 %3409, 2
  br i1 %3460, label %3461, label %3489

; <label>:3461                                    ; preds = %3459
  %3462 = call float @dx.op.unary.f32(i32 24, float %3219)  ; Sqrt(value)
  %3463 = call float @dx.op.unary.f32(i32 24, float %3220)  ; Sqrt(value)
  %3464 = call float @dx.op.unary.f32(i32 24, float %3221)  ; Sqrt(value)
  %3465 = fadd fast float %3462, -5.000000e-01
  %3466 = fadd fast float %3463, -5.000000e-01
  %3467 = fadd fast float %3464, -5.000000e-01
  %3468 = fmul fast float %3465, %3414
  %3469 = fmul fast float %3466, %3414
  %3470 = fmul fast float %3467, %3414
  %3471 = fadd fast float %3468, 5.000000e-01
  %3472 = fadd fast float %3469, 5.000000e-01
  %3473 = fadd fast float %3470, 5.000000e-01
  %3474 = fmul fast float %3471, 2.000000e+00
  %3475 = fsub fast float 1.000000e+00, %3474
  %3476 = fmul fast float %3475, %3401
  %3477 = fadd fast float %3476, %3474
  %3478 = fmul fast float %3477, %3401
  %3479 = fmul fast float %3472, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3402
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3402
  %3484 = fmul fast float %3473, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3403
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3403
  br label %3489

; <label>:3489                                    ; preds = %3461, %3459, %3446, %3416, %3400
  %3490 = phi float [ %3401, %3400 ], [ %3478, %3461 ], [ %3401, %3459 ], [ %3456, %3446 ], [ %3426, %3416 ]
  %3491 = phi float [ %3402, %3400 ], [ %3483, %3461 ], [ %3402, %3459 ], [ %3457, %3446 ], [ %3427, %3416 ]
  %3492 = phi float [ %3403, %3400 ], [ %3488, %3461 ], [ %3403, %3459 ], [ %3458, %3446 ], [ %3428, %3416 ]
  %3493 = phi float [ %3404, %3400 ], [ %3404, %3461 ], [ %3404, %3459 ], [ %3404, %3446 ], [ %3438, %3416 ]
  %3494 = phi float [ %3405, %3400 ], [ %3405, %3461 ], [ %3405, %3459 ], [ %3405, %3446 ], [ %3439, %3416 ]
  %3495 = phi float [ %3406, %3400 ], [ %3406, %3461 ], [ %3406, %3459 ], [ %3406, %3446 ], [ %3440, %3416 ]
  %3496 = phi float [ %2697, %3400 ], [ %2697, %3461 ], [ %2697, %3459 ], [ %2697, %3446 ], [ %3431, %3416 ]
  %3497 = phi float [ %2701, %3400 ], [ %2701, %3461 ], [ %2701, %3459 ], [ %2701, %3446 ], [ %3443, %3416 ]
  %3498 = and i32 %3408, 12
  %3499 = icmp eq i32 %3498, 12
  br i1 %3499, label %3582, label %3500

; <label>:3500                                    ; preds = %3489
  %3501 = and i32 %3408, 2097184
  %3502 = icmp eq i32 %3501, 2097184
  %3503 = select i1 %3502, float %2999, float 0.000000e+00
  %3504 = and i32 %3408, 4194336
  %3505 = icmp eq i32 %3504, 4194336
  %3506 = select i1 %3505, float %2999, float 0.000000e+00
  %3507 = and i32 %3408, 8388640
  %3508 = icmp eq i32 %3507, 8388640
  %3509 = select i1 %3508, float %2999, float 0.000000e+00
  %3510 = and i32 %3408, 16384
  %3511 = icmp ne i32 %3510, 0
  %3512 = select i1 %3511, float %2999, float 0.000000e+00
  %3513 = icmp eq i32 %3498, 0
  br i1 %3513, label %3514, label %3530

; <label>:3514                                    ; preds = %3500
  %3515 = fsub fast float %3300, %2689
  %3516 = fsub fast float %3301, %2690
  %3517 = fmul fast float %3503, %3515
  %3518 = fmul fast float %3503, %3516
  %3519 = fadd fast float %3517, %2689
  %3520 = fadd fast float %3518, %2690
  %3521 = fsub fast float %3302, %2699
  %3522 = fmul fast float %3506, %3521
  %3523 = fadd fast float %3522, %2699
  %3524 = fsub fast float %3299, %2698
  %3525 = fmul fast float %3509, %3524
  %3526 = fadd fast float %3525, %2698
  %3527 = fsub fast float %3378, %2700
  %3528 = fmul fast float %3512, %3527
  %3529 = fadd fast float %3528, %2700
  br label %3582

; <label>:3530                                    ; preds = %3500
  %3531 = icmp eq i32 %3498, 4
  br i1 %3531, label %3532, label %3566

; <label>:3532                                    ; preds = %3530
  %3533 = fmul fast float %3503, %3300
  %3534 = fmul fast float %3503, %3301
  %3535 = fadd fast float %3533, %2689
  %3536 = fadd fast float %3534, %2690
  %3537 = call float @dx.op.binary.f32(i32 36, float %2699, float %3302)  ; FMin(a,b)
  %3538 = fsub fast float %3537, %2699
  %3539 = fmul fast float %3538, %3506
  %3540 = fadd fast float %3539, %2699
  %3541 = fadd fast float %3299, %2698
  %3542 = fmul fast float %3541, 0x3FF337FAE0000000
  %3543 = fmul fast float %2698, %2698
  %3544 = fmul fast float %3299, %3299
  %3545 = fadd fast float %3544, %3543
  %3546 = fmul fast float %3545, 0x3FE5152B00000000
  %3547 = fmul fast float %2698, 0xBFCC1F85E0000000
  %3548 = fmul fast float %3547, %3299
  %3549 = fadd fast float %3548, 0xBFE1363700000000
  %3550 = fadd fast float %3549, %3542
  %3551 = fsub fast float %3550, %3546
  %3552 = fmul fast float %3541, 0x3FBA6F0D00000000
  %3553 = fmul fast float %3545, 0x3FD0432880000000
  %3554 = fmul fast float %2698, 0xBFEF110800000000
  %3555 = fmul fast float %3554, %3299
  %3556 = fadd fast float %3555, 1.000000e+00
  %3557 = fsub fast float %3556, %3552
  %3558 = fadd fast float %3557, %3553
  %3559 = fdiv fast float %3551, %3558
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = fsub fast float %3560, %2698
  %3562 = fmul fast float %3561, %3509
  %3563 = fadd fast float %3562, %2698
  %3564 = fmul fast float %3512, %3378
  %3565 = fadd fast float %3564, %2700
  br label %3582

; <label>:3566                                    ; preds = %3530
  %3567 = icmp eq i32 %3498, 8
  br i1 %3567, label %3568, label %3582

; <label>:3568                                    ; preds = %3566
  %3569 = fmul fast float %3503, %3300
  %3570 = fmul fast float %3503, %3301
  %3571 = fadd fast float %3569, %2689
  %3572 = fadd fast float %3570, %2690
  %3573 = call float @dx.op.binary.f32(i32 36, float %2699, float %3302)  ; FMin(a,b)
  %3574 = fsub fast float %3573, %2699
  %3575 = fmul fast float %3574, %3506
  %3576 = fadd fast float %3575, %2699
  %3577 = fsub fast float %3299, %2698
  %3578 = fmul fast float %3509, %3577
  %3579 = fadd fast float %3578, %2698
  %3580 = fmul fast float %3512, %3378
  %3581 = fadd fast float %3580, %2700
  br label %3582

; <label>:3582                                    ; preds = %3568, %3566, %3532, %3514, %3489, %2998, %2702, %2688
  %3583 = phi float [ %2689, %3489 ], [ %2689, %2998 ], [ %2689, %2688 ], [ %2689, %2702 ], [ %3519, %3514 ], [ %3535, %3532 ], [ %2689, %3566 ], [ %3571, %3568 ]
  %3584 = phi float [ %2690, %3489 ], [ %2690, %2998 ], [ %2690, %2688 ], [ %2690, %2702 ], [ %3520, %3514 ], [ %3536, %3532 ], [ %2690, %3566 ], [ %3572, %3568 ]
  %3585 = phi float [ %3490, %3489 ], [ %2691, %2998 ], [ %2691, %2688 ], [ %2691, %2702 ], [ %3490, %3514 ], [ %3490, %3532 ], [ %3490, %3566 ], [ %3490, %3568 ]
  %3586 = phi float [ %3491, %3489 ], [ %2692, %2998 ], [ %2692, %2688 ], [ %2692, %2702 ], [ %3491, %3514 ], [ %3491, %3532 ], [ %3491, %3566 ], [ %3491, %3568 ]
  %3587 = phi float [ %3492, %3489 ], [ %2693, %2998 ], [ %2693, %2688 ], [ %2693, %2702 ], [ %3492, %3514 ], [ %3492, %3532 ], [ %3492, %3566 ], [ %3492, %3568 ]
  %3588 = phi float [ %3493, %3489 ], [ %2694, %2998 ], [ %2694, %2688 ], [ %2694, %2702 ], [ %3493, %3514 ], [ %3493, %3532 ], [ %3493, %3566 ], [ %3493, %3568 ]
  %3589 = phi float [ %3494, %3489 ], [ %2695, %2998 ], [ %2695, %2688 ], [ %2695, %2702 ], [ %3494, %3514 ], [ %3494, %3532 ], [ %3494, %3566 ], [ %3494, %3568 ]
  %3590 = phi float [ %3495, %3489 ], [ %2696, %2998 ], [ %2696, %2688 ], [ %2696, %2702 ], [ %3495, %3514 ], [ %3495, %3532 ], [ %3495, %3566 ], [ %3495, %3568 ]
  %3591 = phi float [ %3496, %3489 ], [ %2697, %2998 ], [ %2697, %2688 ], [ %2697, %2702 ], [ %3496, %3514 ], [ %3496, %3532 ], [ %3496, %3566 ], [ %3496, %3568 ]
  %3592 = phi float [ %2698, %3489 ], [ %2698, %2998 ], [ %2698, %2688 ], [ %2698, %2702 ], [ %3526, %3514 ], [ %3563, %3532 ], [ %2698, %3566 ], [ %3579, %3568 ]
  %3593 = phi float [ %2699, %3489 ], [ %2699, %2998 ], [ %2699, %2688 ], [ %2699, %2702 ], [ %3523, %3514 ], [ %3540, %3532 ], [ %2699, %3566 ], [ %3576, %3568 ]
  %3594 = phi float [ %2700, %3489 ], [ %2700, %2998 ], [ %2700, %2688 ], [ %2700, %2702 ], [ %3529, %3514 ], [ %3565, %3532 ], [ %2700, %3566 ], [ %3581, %3568 ]
  %3595 = phi float [ %3497, %3489 ], [ %2701, %2998 ], [ %2701, %2688 ], [ %2701, %2702 ], [ %3497, %3514 ], [ %3497, %3532 ], [ %3497, %3566 ], [ %3497, %3568 ]
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = call float @dx.op.dot2.f32(i32 54, float %3583, float %3584, float %3583, float %3584)  ; Dot2(ax,ay,bx,by)
  %3599 = fmul fast float %3598, 0x3FE3333340000000
  %3600 = fsub fast float 1.000000e+00, %3599
  %3601 = call float @dx.op.dot3.f32(i32 55, float %3583, float %3584, float %3600, float %3583, float %3584, float %3600)  ; Dot3(ax,ay,az,bx,by,bz)
  %3602 = call float @dx.op.unary.f32(i32 25, float %3601)  ; Rsqrt(value)
  %3603 = fmul fast float %3602, %3583
  %3604 = fmul fast float %3602, %3584
  %3605 = fmul fast float %3600, %3602
  %3606 = fmul fast float %3605, %77
  %3607 = fmul fast float %3605, %78
  %3608 = fmul fast float %3605, %79
  %3609 = fmul fast float %3603, %51
  %3610 = fmul fast float %3603, %52
  %3611 = fmul fast float %3603, %53
  %3612 = fadd fast float %3606, %3609
  %3613 = fadd fast float %3607, %3610
  %3614 = fadd fast float %3608, %3611
  %3615 = fmul fast float %89, %3604
  %3616 = fmul fast float %90, %3604
  %3617 = fmul fast float %91, %3604
  %3618 = fadd fast float %3612, %3615
  %3619 = fadd fast float %3613, %3616
  %3620 = fadd fast float %3614, %3617
  %3621 = call float @dx.op.dot3.f32(i32 55, float %3618, float %3619, float %3620, float %3618, float %3619, float %3620)  ; Dot3(ax,ay,az,bx,by,bz)
  %3622 = call float @dx.op.unary.f32(i32 25, float %3621)  ; Rsqrt(value)
  %3623 = fmul fast float %3618, %3622
  %3624 = fmul fast float %3619, %3622
  %3625 = fmul fast float %3620, %3622
  %3626 = and i32 %35, 1
  %3627 = icmp eq i32 %3626, 0
  br i1 %3627, label %3628, label %4136

; <label>:3628                                    ; preds = %3582
  %3629 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3630 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3631 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3632 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3633 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3634 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3635 = fadd fast float %3629, %133
  %3636 = fadd fast float %3630, %134
  %3637 = fadd fast float %3631, %135
  %3638 = fadd fast float %3632, %133
  %3639 = fadd fast float %3633, %134
  %3640 = fadd fast float %3634, %135
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.CBufRet.f32 %3641, 2
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3647 = extractvalue %dx.types.CBufRet.f32 %3645, 3
  %3648 = fmul fast float %3642, %70
  %3649 = fmul fast float %3648, %3646
  %3650 = fmul fast float %3643, %71
  %3651 = fmul fast float %3650, %3647
  %3652 = fptoui float %3649 to i32
  %3653 = fptoui float %3651 to i32
  %3654 = fadd fast float %3642, -1.000000e+00
  %3655 = fadd fast float %3643, -1.000000e+00
  %3656 = fptoui float %3654 to i32
  %3657 = fptoui float %3655 to i32
  %3658 = call i32 @dx.op.binary.i32(i32 40, i32 %3652, i32 %3656)  ; UMin(a,b)
  %3659 = call i32 @dx.op.binary.i32(i32 40, i32 %3653, i32 %3657)  ; UMin(a,b)
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3663 = fmul fast float %3661, %65
  %3664 = fsub fast float %3663, %3662
  %3665 = fadd fast float %3644, -1.000000e+00
  %3666 = call float @dx.op.binary.f32(i32 36, float %3664, float %3665)  ; FMin(a,b)
  %3667 = fptoui float %3666 to i32
  %3668 = fptoui float %3642 to i32
  %3669 = fptoui float %3643 to i32
  %3670 = mul i32 %3667, %3669
  %3671 = add i32 %3670, %3659
  %3672 = mul i32 %3671, %3668
  %3673 = add i32 %3672, %3658
  %3674 = shl i32 %3673, 2
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 1023
  %3678 = lshr i32 %3676, 10
  %3679 = icmp eq i32 %3677, 0
  br i1 %3679, label %4105, label %3680

; <label>:3680                                    ; preds = %3628
  %3681 = and i32 %3676, 1023
  br label %3682

; <label>:3682                                    ; preds = %3808, %3680
  %3683 = phi i32 [ %3758, %3808 ], [ 0, %3680 ]
  %3684 = phi float [ %3809, %3808 ], [ 0.000000e+00, %3680 ]
  %3685 = phi float [ %3810, %3808 ], [ %3597, %3680 ]
  %3686 = phi float [ %3811, %3808 ], [ %3595, %3680 ]
  %3687 = phi float [ %3812, %3808 ], [ %3594, %3680 ]
  %3688 = phi float [ %3813, %3808 ], [ 0.000000e+00, %3680 ]
  %3689 = phi float [ %3814, %3808 ], [ %3588, %3680 ]
  %3690 = phi float [ %3815, %3808 ], [ %3589, %3680 ]
  %3691 = phi float [ %3816, %3808 ], [ %3590, %3680 ]
  %3692 = phi float [ %3817, %3808 ], [ %3623, %3680 ]
  %3693 = phi float [ %3818, %3808 ], [ %3624, %3680 ]
  %3694 = phi float [ %3819, %3808 ], [ %3625, %3680 ]
  %3695 = phi float [ %3820, %3808 ], [ %3593, %3680 ]
  %3696 = phi float [ %3821, %3808 ], [ %3592, %3680 ]
  %3697 = phi float [ %3822, %3808 ], [ 0.000000e+00, %3680 ]
  %3698 = phi float [ %3823, %3808 ], [ %3591, %3680 ]
  %3699 = phi float [ %3824, %3808 ], [ %3585, %3680 ]
  %3700 = phi float [ %3825, %3808 ], [ %3586, %3680 ]
  %3701 = phi float [ %3826, %3808 ], [ %3587, %3680 ]
  %3702 = add nuw nsw i32 %3683, %3678
  %3703 = shl i32 %3702, 2
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = shl i32 %3705, 8
  %3707 = or i32 %3706, 48
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = or i32 %3706, 64
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.i32 %3714, 1
  %3717 = or i32 %3706, 80
  %3718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.f32 %3718, 2
  %3720 = extractvalue %dx.types.ResRet.f32 %3718, 3
  %3721 = or i32 %3706, 96
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.ResRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.ResRet.f32 %3722, 3
  %3727 = or i32 %3706, 112
  %3728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3730 = or i32 %3706, 128
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = or i32 %3706, 144
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3742 = or i32 %3706, 160
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = extractvalue %dx.types.ResRet.f32 %3743, 3
  %3748 = or i32 %3706, 192
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = or i32 %3706, 208
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = or i32 %3706, 248
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = add nuw nsw i32 %3683, 1
  %3759 = bitcast float %3712 to i32
  %3760 = and i32 %3759, 512
  %3761 = icmp eq i32 %3760, 0
  %3762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = extractvalue %dx.types.ResRet.f32 %3762, 3
  %3767 = call float @dx.op.dot4.f32(i32 56, float %3763, float %3764, float %3765, float %3766, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3768 = or i32 %3706, 16
  %3769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.ResRet.f32 %3769, 3
  %3774 = call float @dx.op.dot4.f32(i32 56, float %3770, float %3771, float %3772, float %3773, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3775 = or i32 %3706, 32
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3781 = call float @dx.op.dot4.f32(i32 56, float %3777, float %3778, float %3779, float %3780, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3782 = call float @dx.op.unary.f32(i32 27, float %3767)  ; Round_ni(value)
  %3783 = call float @dx.op.unary.f32(i32 6, float %3782)  ; FAbs(value)
  %3784 = call float @dx.op.unary.f32(i32 27, float %3774)  ; Round_ni(value)
  %3785 = call float @dx.op.unary.f32(i32 6, float %3784)  ; FAbs(value)
  %3786 = call float @dx.op.unary.f32(i32 6, float %3781)  ; FAbs(value)
  %3787 = call float @dx.op.unary.f32(i32 27, float %3786)  ; Round_ni(value)
  %3788 = fadd fast float %3785, %3783
  %3789 = fadd fast float %3788, %3787
  %3790 = fcmp fast oeq float %3789, 0.000000e+00
  %3791 = call float @dx.op.dot4.f32(i32 56, float %3763, float %3764, float %3765, float %3766, float %3635, float %3636, float %3637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3792 = call float @dx.op.dot4.f32(i32 56, float %3770, float %3771, float %3772, float %3773, float %3635, float %3636, float %3637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3793 = call float @dx.op.dot4.f32(i32 56, float %3763, float %3764, float %3765, float %3766, float %3638, float %3639, float %3640, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3794 = call float @dx.op.dot4.f32(i32 56, float %3770, float %3771, float %3772, float %3773, float %3638, float %3639, float %3640, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3795 = fsub fast float %3791, %3767
  %3796 = fsub fast float %3793, %3767
  %3797 = fsub fast float %3792, %3774
  %3798 = fsub fast float %3794, %3774
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3710, float %3711, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 2
  %3802 = fadd fast float %3801, %3799
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3805 = fcmp fast ogt float %3803, %3804
  %3806 = and i1 %3790, %3805
  %3807 = and i1 %3761, %3806
  br i1 %3807, label %3828, label %3808

; <label>:3808                                    ; preds = %4091, %3909, %3828, %3682
  %3809 = phi float [ %3684, %3828 ], [ %3912, %3909 ], [ %3912, %4091 ], [ %3684, %3682 ]
  %3810 = phi float [ %3685, %3828 ], [ %3685, %3909 ], [ %4066, %4091 ], [ %3685, %3682 ]
  %3811 = phi float [ %3686, %3828 ], [ %3686, %3909 ], [ %4064, %4091 ], [ %3686, %3682 ]
  %3812 = phi float [ %3687, %3828 ], [ %3687, %3909 ], [ %4036, %4091 ], [ %3687, %3682 ]
  %3813 = phi float [ %3688, %3828 ], [ %3688, %3909 ], [ %4034, %4091 ], [ %3688, %3682 ]
  %3814 = phi float [ %3689, %3828 ], [ %3689, %3909 ], [ %4101, %4091 ], [ %3689, %3682 ]
  %3815 = phi float [ %3690, %3828 ], [ %3690, %3909 ], [ %4102, %4091 ], [ %3690, %3682 ]
  %3816 = phi float [ %3691, %3828 ], [ %3691, %3909 ], [ %4103, %4091 ], [ %3691, %3682 ]
  %3817 = phi float [ %3692, %3828 ], [ %3692, %3909 ], [ %4015, %4091 ], [ %3692, %3682 ]
  %3818 = phi float [ %3693, %3828 ], [ %3693, %3909 ], [ %4016, %4091 ], [ %3693, %3682 ]
  %3819 = phi float [ %3694, %3828 ], [ %3694, %3909 ], [ %4017, %4091 ], [ %3694, %3682 ]
  %3820 = phi float [ %3695, %3828 ], [ %3695, %3909 ], [ %4044, %4091 ], [ %3695, %3682 ]
  %3821 = phi float [ %3696, %3828 ], [ %3696, %3909 ], [ %4041, %4091 ], [ %3696, %3682 ]
  %3822 = phi float [ %3697, %3828 ], [ %3697, %3909 ], [ %4038, %4091 ], [ %3697, %3682 ]
  %3823 = phi float [ %3698, %3828 ], [ %3698, %3909 ], [ %4032, %4091 ], [ %3698, %3682 ]
  %3824 = phi float [ %3699, %3828 ], [ %3699, %3909 ], [ %4027, %4091 ], [ %3699, %3682 ]
  %3825 = phi float [ %3700, %3828 ], [ %3700, %3909 ], [ %4028, %4091 ], [ %3700, %3682 ]
  %3826 = phi float [ %3701, %3828 ], [ %3701, %3909 ], [ %4029, %4091 ], [ %3701, %3682 ]
  %3827 = icmp eq i32 %3758, %3681
  br i1 %3827, label %4104, label %3682

; <label>:3828                                    ; preds = %3682
  %3829 = extractvalue %dx.types.ResRet.f32 %3728, 3
  %3830 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3718, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3718, 0
  %3834 = extractvalue %dx.types.ResRet.i32 %3714, 3
  %3835 = extractvalue %dx.types.ResRet.i32 %3714, 2
  %3836 = add i32 %3834, 0
  %3837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3837, %dx.types.Handle %3838, float %3767, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3796, float %3798, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = fmul fast float %3840, %3833
  %3842 = fadd fast float %3841, %3832
  %3843 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3844 = fmul fast float %3767, %3723
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3774, float %3844)  ; FMad(a,b,c)
  %3846 = fadd fast float %3845, %3831
  %3847 = fmul fast float %3767, %3725
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3726, float %3774, float %3847)  ; FMad(a,b,c)
  %3849 = fadd fast float %3848, %3830
  %3850 = fmul fast float %3795, %3723
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3797, float %3850)  ; FMad(a,b,c)
  %3852 = fmul fast float %3795, %3725
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3726, float %3797, float %3852)  ; FMad(a,b,c)
  %3854 = fmul fast float %3796, %3723
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3798, float %3854)  ; FMad(a,b,c)
  %3856 = fmul fast float %3796, %3725
  %3857 = call float @dx.op.tertiary.f32(i32 46, float %3726, float %3798, float %3856)  ; FMad(a,b,c)
  %3858 = add i32 %3835, 0
  %3859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3858, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3859, %dx.types.Handle %3838, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = and i32 %3759, 1024
  %3863 = icmp ne i32 %3862, 0
  %3864 = fcmp fast ogt float %3861, 0x3FE0101020000000
  %3865 = uitofp i1 %3864 to float
  %3866 = select i1 %3863, float %3865, float %3861
  %3867 = and i32 %3759, 8192
  %3868 = icmp ne i32 %3867, 0
  %3869 = select i1 %3868, float %3829, float 1.000000e+00
  %3870 = fmul fast float %3767, 2.000000e+00
  %3871 = fadd fast float %3870, -1.000000e+00
  %3872 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3873 = fmul fast float %3872, %3756
  %3874 = fsub fast float %3873, %3756
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3774, 2.000000e+00
  %3877 = fadd fast float %3876, -1.000000e+00
  %3878 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3879 = fmul fast float %3878, %3757
  %3880 = fsub fast float %3879, %3757
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fmul fast float %3786, %3719
  %3883 = fsub fast float %3882, %3719
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3843, %3869
  %3886 = fmul fast float %3885, %3840
  %3887 = fmul fast float %3886, %3875
  %3888 = fmul fast float %3887, %3866
  %3889 = fmul fast float %3888, %3881
  %3890 = fmul fast float %3889, %3884
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3894 = fsub fast float %3803, %3893
  %3895 = fmul fast float %3894, %3892
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3890, %3720
  %3898 = fadd fast float %3890, %3720
  %3899 = fmul fast float %3898, %3729
  %3900 = fsub fast float %3899, %3729
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = and i32 %3759, 128
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3901, float %3897
  %3905 = fmul fast float %3904, %3896
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = fcmp fast ugt float %3905, %3907
  br i1 %3908, label %3909, label %3808

; <label>:3909                                    ; preds = %3828
  %3910 = select i1 %3868, float %3905, float 0.000000e+00
  %3911 = fadd fast float %3910, %3684
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  br i1 %3868, label %3808, label %3913

; <label>:3913                                    ; preds = %3909
  %3914 = and i32 %3759, 4
  %3915 = and i32 %3759, 8
  %3916 = add i32 %3715, 0
  %3917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3917, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = bitcast float %3741 to i32
  %3925 = and i32 %3924, 255
  %3926 = uitofp i32 %3925 to float
  %3927 = lshr i32 %3924, 8
  %3928 = and i32 %3927, 255
  %3929 = uitofp i32 %3928 to float
  %3930 = fmul fast float %3923, %3926
  %3931 = fadd fast float %3930, %3929
  %3932 = fmul fast float %3931, 0x3F70101000000000
  %3933 = add i32 %3716, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3934, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %3940 = bitcast float %3735 to i32
  %3941 = and i32 %3940, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = lshr i32 %3940, 8
  %3944 = and i32 %3943, 255
  %3945 = uitofp i32 %3944 to float
  %3946 = lshr i32 %3940, 16
  %3947 = and i32 %3946, 255
  %3948 = uitofp i32 %3947 to float
  %3949 = fmul fast float %3948, 0x3F70101000000000
  %3950 = fmul fast float %3936, %3942
  %3951 = fadd fast float %3950, %3945
  %3952 = fmul fast float %3951, 0x3F70101000000000
  %3953 = fadd fast float %3937, -5.000000e-01
  %3954 = fadd fast float %3939, -5.000000e-01
  %3955 = fmul fast float %3953, %3949
  %3956 = fmul fast float %3954, %3949
  %3957 = fadd fast float %3955, 5.000000e-01
  %3958 = fadd fast float %3956, 5.000000e-01
  %3959 = fmul fast float %3920, %3744
  %3960 = fmul fast float %3921, %3745
  %3961 = fmul fast float %3922, %3746
  %3962 = fmul fast float %3957, 2.000000e+00
  %3963 = fadd fast float %3962, -1.000000e+00
  %3964 = fmul fast float %3958, 2.000000e+00
  %3965 = fadd fast float %3964, -1.000000e+00
  %3966 = fadd fast float %3963, %3965
  %3967 = fmul fast float %3966, 5.000000e-01
  %3968 = fsub fast float %3963, %3965
  %3969 = fmul fast float %3968, 5.000000e-01
  %3970 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3971 = fsub fast float 1.000000e+00, %3970
  %3972 = call float @dx.op.unary.f32(i32 6, float %3969)  ; FAbs(value)
  %3973 = fsub fast float %3971, %3972
  %3974 = call float @dx.op.dot3.f32(i32 55, float %3967, float %3969, float %3973, float %3967, float %3969, float %3973)  ; Dot3(ax,ay,az,bx,by,bz)
  %3975 = call float @dx.op.unary.f32(i32 25, float %3974)  ; Rsqrt(value)
  %3976 = fmul fast float %3967, %3975
  %3977 = fmul fast float %3969, %3975
  %3978 = fmul fast float %3975, %3973
  %3979 = fmul fast float %3978, %3709
  %3980 = fmul fast float %3978, %3710
  %3981 = fmul fast float %3978, %3711
  %3982 = fmul fast float %3976, %3732
  %3983 = fmul fast float %3976, %3733
  %3984 = fmul fast float %3976, %3734
  %3985 = fadd fast float %3982, %3979
  %3986 = fadd fast float %3983, %3980
  %3987 = fadd fast float %3984, %3981
  %3988 = fmul fast float %3977, %3738
  %3989 = fmul fast float %3977, %3739
  %3990 = fmul fast float %3977, %3740
  %3991 = fadd fast float %3985, %3988
  %3992 = fadd fast float %3986, %3989
  %3993 = fadd fast float %3987, %3990
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call float @dx.op.unary.f32(i32 25, float %3994)  ; Rsqrt(value)
  %3996 = fmul fast float %3991, %3995
  %3997 = fmul fast float %3992, %3995
  %3998 = fmul fast float %3993, %3995
  %3999 = icmp ne i32 %3915, 0
  %4000 = select i1 %3999, float 1.000000e+00, float 0.000000e+00
  %4001 = fmul fast float %3905, %4000
  %4002 = and i32 %3759, 1
  %4003 = icmp eq i32 %4002, 0
  br i1 %4003, label %4004, label %4008

; <label>:4004                                    ; preds = %3913
  %4005 = fsub fast float %3996, %3692
  %4006 = fsub fast float %3997, %3693
  %4007 = fsub fast float %3998, %3694
  br label %4008

; <label>:4008                                    ; preds = %4004, %3913
  %4009 = phi float [ %4005, %4004 ], [ %3996, %3913 ]
  %4010 = phi float [ %4006, %4004 ], [ %3997, %3913 ]
  %4011 = phi float [ %4007, %4004 ], [ %3998, %3913 ]
  %4012 = fmul float %4011, %4001
  %4013 = fmul float %4010, %4001
  %4014 = fmul float %4009, %4001
  %4015 = fadd fast float %4014, %3692
  %4016 = fadd fast float %4013, %3693
  %4017 = fadd fast float %4012, %3694
  %4018 = icmp ne i32 %3914, 0
  %4019 = select i1 %4018, float 1.000000e+00, float 0.000000e+00
  %4020 = fmul fast float %3905, %4019
  %4021 = fsub fast float %3959, %3699
  %4022 = fsub fast float %3960, %3700
  %4023 = fsub fast float %3961, %3701
  %4024 = fmul fast float %4021, %4020
  %4025 = fmul fast float %4022, %4020
  %4026 = fmul fast float %4023, %4020
  %4027 = fadd fast float %4024, %3699
  %4028 = fadd fast float %4025, %3700
  %4029 = fadd fast float %4026, %3701
  %4030 = fsub fast float %3932, %3698
  %4031 = fmul fast float %4030, %4020
  %4032 = fadd fast float %4031, %3698
  %4033 = fmul fast float %4020, %3688
  %4034 = fsub fast float %3688, %4033
  %4035 = fmul fast float %4020, %3687
  %4036 = fsub fast float %3687, %4035
  %4037 = fadd fast float %3905, %3697
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4039 = fsub fast float %3952, %3696
  %4040 = fmul fast float %4039, %4001
  %4041 = fadd fast float %4040, %3696
  %4042 = fsub fast float %3938, %3695
  %4043 = fmul fast float %4042, %4001
  %4044 = fadd fast float %4043, %3695
  %4045 = call float @dx.op.dot3.f32(i32 55, float %3959, float %3960, float %3961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = fmul fast float %4048, %4045
  %4050 = fadd fast float %4049, %4047
  %4051 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4052 = bitcast float %3747 to i32
  %4053 = and i32 %4052, 65535
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = lshr i32 %4052, 16
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = fcmp fast oge float %4054, 0.000000e+00
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = select i1 %4057, float %4054, float %4059
  %4061 = fadd fast float %4060, %4056
  %4062 = fsub fast float %4051, %3686
  %4063 = fmul fast float %4062, %3905
  %4064 = fadd fast float %4063, %3686
  %4065 = fmul fast float %4061, %3905
  %4066 = call float @dx.op.binary.f32(i32 35, float %3685, float %4065)  ; FMax(a,b)
  %4067 = and i32 %3759, 16
  %4068 = icmp eq i32 %4067, 0
  br i1 %4068, label %4091, label %4069

; <label>:4069                                    ; preds = %4008
  %4070 = bitcast float %3753 to i32
  %4071 = add i32 %3750, 0
  %4072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4071, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4072, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = and i32 %4070, 65535
  %4078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4077)  ; LegacyF16ToF32(value)
  %4079 = fmul fast float %4074, %3744
  %4080 = fmul fast float %4075, %3745
  %4081 = fmul fast float %4076, %3746
  %4082 = and i32 %3759, 16384
  %4083 = icmp ne i32 %4082, 0
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = select i1 %4083, float %4085, float 1.000000e+00
  %4087 = fmul fast float %4086, %4078
  %4088 = fmul fast float %4079, %4087
  %4089 = fmul fast float %4080, %4087
  %4090 = fmul fast float %4081, %4087
  br label %4091

; <label>:4091                                    ; preds = %4069, %4008
  %4092 = phi float [ %4088, %4069 ], [ 0.000000e+00, %4008 ]
  %4093 = phi float [ %4089, %4069 ], [ 0.000000e+00, %4008 ]
  %4094 = phi float [ %4090, %4069 ], [ 0.000000e+00, %4008 ]
  %4095 = fsub fast float %4092, %3689
  %4096 = fsub fast float %4093, %3690
  %4097 = fsub fast float %4094, %3691
  %4098 = fmul fast float %4095, %3905
  %4099 = fmul fast float %4096, %3905
  %4100 = fmul fast float %4097, %3905
  %4101 = fadd fast float %4098, %3689
  %4102 = fadd fast float %4099, %3690
  %4103 = fadd fast float %4100, %3691
  br label %3808

; <label>:4104                                    ; preds = %3808
  br label %4105

; <label>:4105                                    ; preds = %4104, %3628
  %4106 = phi float [ 0.000000e+00, %3628 ], [ %3809, %4104 ]
  %4107 = phi float [ %3597, %3628 ], [ %3810, %4104 ]
  %4108 = phi float [ %3595, %3628 ], [ %3811, %4104 ]
  %4109 = phi float [ %3594, %3628 ], [ %3812, %4104 ]
  %4110 = phi float [ 0.000000e+00, %3628 ], [ %3813, %4104 ]
  %4111 = phi float [ %3588, %3628 ], [ %3814, %4104 ]
  %4112 = phi float [ %3589, %3628 ], [ %3815, %4104 ]
  %4113 = phi float [ %3590, %3628 ], [ %3816, %4104 ]
  %4114 = phi float [ %3623, %3628 ], [ %3817, %4104 ]
  %4115 = phi float [ %3624, %3628 ], [ %3818, %4104 ]
  %4116 = phi float [ %3625, %3628 ], [ %3819, %4104 ]
  %4117 = phi float [ %3593, %3628 ], [ %3820, %4104 ]
  %4118 = phi float [ %3592, %3628 ], [ %3821, %4104 ]
  %4119 = phi float [ 0.000000e+00, %3628 ], [ %3822, %4104 ]
  %4120 = phi float [ %3591, %3628 ], [ %3823, %4104 ]
  %4121 = phi float [ %3585, %3628 ], [ %3824, %4104 ]
  %4122 = phi float [ %3586, %3628 ], [ %3825, %4104 ]
  %4123 = phi float [ %3587, %3628 ], [ %3826, %4104 ]
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4114, float %4115, float %4116, float %4114, float %4115, float %4116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 25, float %4124)  ; Rsqrt(value)
  %4126 = fmul fast float %4125, %4114
  %4127 = fmul fast float %4125, %4115
  %4128 = fmul fast float %4125, %4116
  %4129 = fadd fast float %4119, %909
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = call float @dx.op.dot3.f32(i32 55, float %4126, float %4127, float %4128, float %4126, float %4127, float %4128)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = call float @dx.op.unary.f32(i32 25, float %4131)  ; Rsqrt(value)
  %4133 = fmul fast float %4132, %4126
  %4134 = fmul fast float %4132, %4127
  %4135 = fmul fast float %4132, %4128
  br label %4136

; <label>:4136                                    ; preds = %4105, %3582
  %4137 = phi float [ %4133, %4105 ], [ %3623, %3582 ]
  %4138 = phi float [ %4134, %4105 ], [ %3624, %3582 ]
  %4139 = phi float [ %4135, %4105 ], [ %3625, %3582 ]
  %4140 = phi float [ %4121, %4105 ], [ %3585, %3582 ]
  %4141 = phi float [ %4122, %4105 ], [ %3586, %3582 ]
  %4142 = phi float [ %4123, %4105 ], [ %3587, %3582 ]
  %4143 = phi float [ %4111, %4105 ], [ %3588, %3582 ]
  %4144 = phi float [ %4112, %4105 ], [ %3589, %3582 ]
  %4145 = phi float [ %4113, %4105 ], [ %3590, %3582 ]
  %4146 = phi float [ %4120, %4105 ], [ %3591, %3582 ]
  %4147 = phi float [ %4130, %4105 ], [ %909, %3582 ]
  %4148 = phi float [ %4118, %4105 ], [ %3592, %3582 ]
  %4149 = phi float [ %4117, %4105 ], [ %3593, %3582 ]
  %4150 = phi float [ %4110, %4105 ], [ 0.000000e+00, %3582 ]
  %4151 = phi float [ %4109, %4105 ], [ %3594, %3582 ]
  %4152 = phi float [ %4106, %4105 ], [ 0.000000e+00, %3582 ]
  %4153 = phi float [ %4107, %4105 ], [ %3597, %3582 ]
  %4154 = phi float [ %4108, %4105 ], [ %3595, %3582 ]
  %4155 = fadd fast float %4146, 0xBFB99999A0000000
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4156, 0x3FF1C71C80000000
  %4158 = call float @dx.op.binary.f32(i32 36, float %4146, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4159 = fsub fast float 1.000000e+00, %4157
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = fmul fast float %4160, %4140
  %4162 = fmul fast float %4160, %4141
  %4163 = fmul fast float %4160, %4142
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = fmul fast float %4157, %4140
  %4168 = fmul fast float %4157, %4141
  %4169 = fmul fast float %4157, %4142
  %4170 = fadd fast float %4167, %4158
  %4171 = fadd fast float %4168, %4158
  %4172 = fadd fast float %4169, %4158
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4175 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.i32 %4177, 3
  %4179 = and i32 %4178, 8
  %4180 = icmp ne i32 %4179, 0
  %4181 = call float @dx.op.binary.f32(i32 35, float %4164, float %4140)  ; FMax(a,b)
  %4182 = call float @dx.op.binary.f32(i32 35, float %4165, float %4140)  ; FMax(a,b)
  %4183 = call float @dx.op.binary.f32(i32 35, float %4166, float %4140)  ; FMax(a,b)
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = select i1 %175, float %4140, float %4164
  %4186 = select i1 %175, float %4184, float %4165
  %4187 = select i1 %175, float 1.000000e+00, float %4166
  %4188 = select i1 %4180, float %4181, float %4185
  %4189 = select i1 %4180, float %4182, float %4186
  %4190 = select i1 %4180, float %4183, float %4187
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4195 = fadd fast float %4192, %133
  %4196 = fadd fast float %4193, %134
  %4197 = fadd fast float %4194, %135
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4201 = fsub fast float %4195, %4199
  %4202 = fsub fast float %4196, %4200
  %4203 = fmul fast float %4201, %4201
  %4204 = fmul fast float %4202, %4202
  %4205 = fadd fast float %4203, %4204
  %4206 = call float @dx.op.unary.f32(i32 24, float %4205)  ; Sqrt(value)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4208 = fcmp fast olt float %4206, %4207
  br i1 %4208, label %4209, label %4276

; <label>:4209                                    ; preds = %4136
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4220 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4221 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4222 = fadd fast float %4219, %4195
  %4223 = fadd fast float %4220, %4196
  %4224 = fadd fast float %4221, %4197
  %4225 = fmul fast float %4222, %4211
  %4226 = call float @dx.op.tertiary.f32(i32 46, float %4223, float %4213, float %4225)  ; FMad(a,b,c)
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4215, float %4226)  ; FMad(a,b,c)
  %4228 = fmul fast float %4222, %4216
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4223, float %4217, float %4228)  ; FMad(a,b,c)
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4218, float %4229)  ; FMad(a,b,c)
  %4231 = fsub fast float %4227, %4219
  %4232 = fsub fast float %4230, %4220
  %4233 = fsub fast float %4231, %4199
  %4234 = fadd fast float %4233, %4207
  %4235 = fsub fast float %4232, %4200
  %4236 = fadd fast float %4235, %4207
  %4237 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4238 = fmul fast float %4234, %4237
  %4239 = fmul fast float %4236, %4237
  %4240 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4242 = fsub fast float 1.000000e+00, %4240
  %4243 = fsub fast float 1.000000e+00, %4241
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4242, float %4243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = fcmp fast ugt float %4245, 0.000000e+00
  br i1 %4246, label %4247, label %4550

; <label>:4247                                    ; preds = %4209
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 2
  %4250 = fmul fast float %4249, %4245
  %4251 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4252 = fadd fast float %4251, %4250
  %4253 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4254 = fadd fast float %4252, %4221
  %4255 = fmul fast float %4227, %4215
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4230, float %4218, float %4255)  ; FMad(a,b,c)
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4253, float %4256)  ; FMad(a,b,c)
  %4258 = fsub fast float %4257, %4221
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 2
  %4261 = fsub fast float %4258, %4260
  %4262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4242, float %4243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4242, float %4243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4270 = fadd fast float %4267, %4263
  %4271 = fmul fast float %4270, 0x3F847AE140000000
  %4272 = fadd fast float %4268, %4264
  %4273 = fmul fast float %4272, 0x3F847AE140000000
  %4274 = fadd fast float %4269, %4265
  %4275 = fmul fast float %4274, 0x3F847AE140000000
  br label %4550

; <label>:4276                                    ; preds = %4136
  %4277 = and i32 %151, 1
  %4278 = icmp eq i32 %4277, 0
  br i1 %4278, label %4550, label %4279

; <label>:4279                                    ; preds = %4276
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4290 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4291 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4292 = fadd fast float %4289, %4195
  %4293 = fadd fast float %4290, %4196
  %4294 = fadd fast float %4291, %4197
  %4295 = fmul fast float %4292, %4281
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4283, float %4295)  ; FMad(a,b,c)
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4285, float %4296)  ; FMad(a,b,c)
  %4298 = fmul fast float %4292, %4286
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4287, float %4298)  ; FMad(a,b,c)
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4288, float %4299)  ; FMad(a,b,c)
  %4301 = fsub fast float %4297, %4289
  %4302 = fsub fast float %4300, %4290
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.i32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.i32 %4310, 1
  %4313 = udiv i32 %4312, %4311
  %4314 = fsub fast float %4301, %4304
  %4315 = fsub fast float %4302, %4305
  %4316 = call float @dx.op.binary.f32(i32 35, float %4314, float 0.000000e+00)  ; FMax(a,b)
  %4317 = call float @dx.op.binary.f32(i32 35, float %4315, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call float @dx.op.binary.f32(i32 36, float %4316, float %4306)  ; FMin(a,b)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4317, float %4307)  ; FMin(a,b)
  %4320 = add i32 %4311, -1
  %4321 = add i32 %4313, -1
  %4322 = fmul fast float %4318, %4309
  %4323 = fmul fast float %4319, %4309
  %4324 = fptoui float %4322 to i32
  %4325 = fptoui float %4323 to i32
  %4326 = call i32 @dx.op.binary.i32(i32 40, i32 %4324, i32 %4320)  ; UMin(a,b)
  %4327 = call i32 @dx.op.binary.i32(i32 40, i32 %4325, i32 %4321)  ; UMin(a,b)
  %4328 = mul i32 %4327, %4311
  %4329 = add i32 %4328, %4326
  %4330 = shl i32 %4329, 2
  %4331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.i32 %4331, 0
  %4333 = icmp eq i32 %4332, -1
  br i1 %4333, label %4550, label %4334

; <label>:4334                                    ; preds = %4279
  %4335 = mul i32 %4332, 148
  %4336 = add i32 %4335, 4
  %4337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = add i32 %4335, 8
  %4340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = add i32 %4335, 36
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4335, 60
  %4346 = add i32 %4335, 92
  %4347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.i32 %4347, 0
  %4349 = add i32 %4335, 116
  %4350 = fsub fast float %4301, %4338
  %4351 = fsub fast float %4302, %4341
  %4352 = fmul fast float %4309, %4350
  %4353 = fmul fast float %4309, %4351
  %4354 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4356 = fsub fast float 1.000000e+00, %4355
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4359 = call float @dx.op.unary.f32(i32 83, float %4354)  ; DerivCoarseX(value)
  %4360 = call float @dx.op.unary.f32(i32 83, float %4356)  ; DerivCoarseX(value)
  %4361 = call float @dx.op.unary.f32(i32 84, float %4354)  ; DerivCoarseY(value)
  %4362 = call float @dx.op.unary.f32(i32 84, float %4356)  ; DerivCoarseY(value)
  %4363 = fmul fast float %4359, %4358
  %4364 = fmul fast float %4360, %4358
  %4365 = fmul fast float %4361, %4358
  %4366 = fmul fast float %4362, %4358
  %4367 = call float @dx.op.dot2.f32(i32 54, float %4365, float %4366, float %4365, float %4366)  ; Dot2(ax,ay,bx,by)
  %4368 = call float @dx.op.dot2.f32(i32 54, float %4363, float %4364, float %4363, float %4364)  ; Dot2(ax,ay,bx,by)
  %4369 = call float @dx.op.binary.f32(i32 35, float %4368, float %4367)  ; FMax(a,b)
  %4370 = call float @dx.op.unary.f32(i32 23, float %4369)  ; Log(value)
  %4371 = fmul fast float %4370, 5.000000e-01
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4374 = fadd fast float %4373, %4371
  %4375 = call float @dx.op.binary.f32(i32 35, float %4374, float 0.000000e+00)  ; FMax(a,b)
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4378 = fadd fast float %4377, %4375
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = fadd fast float %4378, %4380
  %4382 = add i32 %4348, 0
  %4383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4382, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4384 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4383, i32 0)  ; GetDimensions(handle,mipLevel)
  %4385 = extractvalue %dx.types.Dimensions %4384, 0
  %4386 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4385)  ; FirstbitLo(value)
  %4387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.i32 %4387, 1
  %4389 = sub nsw i32 %4388, %4386
  %4390 = sitofp i32 %4389 to float
  %4391 = fsub fast float %4381, %4390
  %4392 = call float @dx.op.binary.f32(i32 35, float %4391, float 0.000000e+00)  ; FMax(a,b)
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4383, %dx.types.Handle %27, float %4354, float %4356, float %4344, float undef, i32 0, i32 0, i32 undef, float %4392)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = fcmp ule float %4394, 0x3FE0101020000000
  %4396 = extractvalue %dx.types.CBufRet.i32 %4387, 0
  %4397 = and i32 %4396, 128
  %4398 = icmp ne i32 %4397, 0
  %4399 = and i1 %4395, %4398
  br i1 %4399, label %4550, label %4400

; <label>:4400                                    ; preds = %4334
  %4401 = add i32 %4335, 20
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = add i32 %4335, 24
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = add i32 %4335, 40
  %4408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = add i32 %4335, 96
  %4411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4415 = fmul fast float %4414, %4354
  %4416 = fmul fast float %4414, %4356
  %4417 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4418 = fadd fast float %4415, %4417
  %4419 = fadd fast float %4416, %4417
  %4420 = add i32 %4412, 0
  %4421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4420, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4422 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4421, i32 0)  ; GetDimensions(handle,mipLevel)
  %4423 = extractvalue %dx.types.Dimensions %4422, 0
  %4424 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4423)  ; FirstbitLo(value)
  %4425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.i32 %4425, 1
  %4427 = sub nsw i32 %4426, %4424
  %4428 = sitofp i32 %4427 to float
  %4429 = fsub fast float %4378, %4428
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float 0.000000e+00)  ; FMax(a,b)
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4421, %dx.types.Handle %27, float %4418, float %4419, float %4409, float undef, i32 0, i32 0, i32 undef, float %4430)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = fmul fast float %4432, %4403
  %4434 = fadd fast float %4433, %4406
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4438 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 3
  %4443 = extractvalue %dx.types.CBufRet.f32 %4435, 3
  %4444 = fadd fast float %4440, %4301
  %4445 = fadd fast float %4442, %4302
  %4446 = fadd fast float %4434, %4443
  %4447 = fmul fast float %4444, %4436
  %4448 = call float @dx.op.tertiary.f32(i32 46, float %4445, float %4437, float %4447)  ; FMad(a,b,c)
  %4449 = call float @dx.op.tertiary.f32(i32 46, float %4446, float %4438, float %4448)  ; FMad(a,b,c)
  %4450 = fsub fast float %4449, %4443
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4453 = fsub fast float %4450, %4452
  %4454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.i32 %4454, 0
  %4456 = call i32 @dx.op.binary.i32(i32 40, i32 %4332, i32 %4455)  ; UMin(a,b)
  %4457 = mul i32 %4456, 36
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = add i32 %4457, 4
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = fmul fast float %4462, %4354
  %4464 = fmul fast float %4462, %4356
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4466 = fadd fast float %4463, %4465
  %4467 = fadd fast float %4464, %4465
  %4468 = icmp eq i32 %4459, 0
  br i1 %4468, label %4537, label %4469

; <label>:4469                                    ; preds = %4400
  br label %4470

; <label>:4470                                    ; preds = %4527, %4469
  %4471 = phi float [ %4528, %4527 ], [ 0.000000e+00, %4469 ]
  %4472 = phi float [ %4529, %4527 ], [ 0.000000e+00, %4469 ]
  %4473 = phi float [ %4530, %4527 ], [ 0.000000e+00, %4469 ]
  %4474 = phi float [ %4531, %4527 ], [ 0.000000e+00, %4469 ]
  %4475 = phi float [ %4532, %4527 ], [ 0.000000e+00, %4469 ]
  %4476 = phi float [ %4533, %4527 ], [ 0.000000e+00, %4469 ]
  %4477 = phi i32 [ %4534, %4527 ], [ 0, %4469 ]
  %4478 = shl i32 %4477, 2
  %4479 = add i32 %4345, %4478
  %4480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = add i32 %4349, %4478
  %4483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4482, i32 undef)  ; BufferLoad(srv,index,wot)
  %4484 = extractvalue %dx.types.ResRet.i32 %4483, 0
  %4485 = add i32 %4484, 0
  %4486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4485, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4487 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4486, i32 0)  ; GetDimensions(handle,mipLevel)
  %4488 = extractvalue %dx.types.Dimensions %4487, 0
  %4489 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4488)  ; FirstbitLo(value)
  %4490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.i32 %4490, 1
  %4492 = sub nsw i32 %4491, %4489
  %4493 = sitofp i32 %4492 to float
  %4494 = fsub fast float %4378, %4493
  %4495 = call float @dx.op.binary.f32(i32 35, float %4494, float 0.000000e+00)  ; FMax(a,b)
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4486, %dx.types.Handle %27, float %4466, float %4467, float %4481, float undef, i32 0, i32 0, i32 undef, float %4495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = fcmp fast ogt float %4497, 0.000000e+00
  br i1 %4498, label %4499, label %4527

; <label>:4499                                    ; preds = %4470
  %4500 = add i32 %4460, %4478
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = and i32 %4502, 32767
  %4504 = mul nuw nsw i32 %4503, 928
  %4505 = add nuw nsw i32 %4504, 48
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = add nuw nsw i32 %4504, 60
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = fmul fast float %4507, %4497
  %4516 = fmul fast float %4508, %4497
  %4517 = fmul fast float %4509, %4497
  %4518 = fadd fast float %4515, %4471
  %4519 = fadd fast float %4516, %4472
  %4520 = fadd fast float %4517, %4473
  %4521 = fmul fast float %4512, %4497
  %4522 = fmul fast float %4513, %4497
  %4523 = fmul fast float %4514, %4497
  %4524 = fadd fast float %4521, %4474
  %4525 = fadd fast float %4522, %4475
  %4526 = fadd fast float %4523, %4476
  br label %4527

; <label>:4527                                    ; preds = %4499, %4470
  %4528 = phi float [ %4518, %4499 ], [ %4471, %4470 ]
  %4529 = phi float [ %4519, %4499 ], [ %4472, %4470 ]
  %4530 = phi float [ %4520, %4499 ], [ %4473, %4470 ]
  %4531 = phi float [ %4524, %4499 ], [ %4474, %4470 ]
  %4532 = phi float [ %4525, %4499 ], [ %4475, %4470 ]
  %4533 = phi float [ %4526, %4499 ], [ %4476, %4470 ]
  %4534 = add nuw i32 %4477, 1
  %4535 = icmp eq i32 %4534, %4459
  br i1 %4535, label %4536, label %4470

; <label>:4536                                    ; preds = %4527
  br label %4537

; <label>:4537                                    ; preds = %4536, %4400
  %4538 = phi float [ 0.000000e+00, %4400 ], [ %4528, %4536 ]
  %4539 = phi float [ 0.000000e+00, %4400 ], [ %4529, %4536 ]
  %4540 = phi float [ 0.000000e+00, %4400 ], [ %4530, %4536 ]
  %4541 = phi float [ 0.000000e+00, %4400 ], [ %4531, %4536 ]
  %4542 = phi float [ 0.000000e+00, %4400 ], [ %4532, %4536 ]
  %4543 = phi float [ 0.000000e+00, %4400 ], [ %4533, %4536 ]
  %4544 = fadd fast float %4541, %4538
  %4545 = fmul fast float %4544, 0x3F847AE140000000
  %4546 = fadd fast float %4542, %4539
  %4547 = fmul fast float %4546, 0x3F847AE140000000
  %4548 = fadd fast float %4543, %4540
  %4549 = fmul fast float %4548, 0x3F847AE140000000
  br label %4550

; <label>:4550                                    ; preds = %4537, %4334, %4279, %4276, %4247, %4209
  %4551 = phi float [ %4261, %4247 ], [ -1.310720e+05, %4209 ], [ %4453, %4537 ], [ -1.310720e+05, %4279 ], [ -1.310720e+05, %4334 ], [ -1.310720e+05, %4276 ]
  %4552 = phi float [ %4271, %4247 ], [ 0.000000e+00, %4209 ], [ %4545, %4537 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4276 ]
  %4553 = phi float [ %4273, %4247 ], [ 0.000000e+00, %4209 ], [ %4547, %4537 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4276 ]
  %4554 = phi float [ %4275, %4247 ], [ 0.000000e+00, %4209 ], [ %4549, %4537 ], [ 0.000000e+00, %4279 ], [ 0.000000e+00, %4334 ], [ 0.000000e+00, %4276 ]
  %4555 = phi i1 [ true, %4247 ], [ false, %4209 ], [ true, %4537 ], [ false, %4279 ], [ false, %4334 ], [ false, %4276 ]
  %4556 = and i32 %151, 3
  %4557 = icmp eq i32 %4556, 1
  %4558 = select i1 %4557, float 1.000000e+00, float 0.000000e+00
  %4559 = fsub fast float %4551, %135
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = select i1 %4555, float %4560, float 1.000000e+00
  %4562 = fmul fast float %4561, %4558
  %4563 = icmp eq i32 %4556, 3
  %4564 = select i1 %4563, float 1.000000e+00, float %4562
  %4565 = call float @dx.op.binary.f32(i32 35, float %4152, float %4564)  ; FMax(a,b)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = fcmp fast une float %4566, 0.000000e+00
  %4568 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = call float @dx.op.unary.f32(i32 25, float %4568)  ; Rsqrt(value)
  br i1 %4567, label %4577, label %4570

; <label>:4570                                    ; preds = %4550
  %4571 = fmul fast float %4569, %133
  %4572 = fmul fast float %4569, %134
  %4573 = fmul fast float %4569, %135
  %4574 = fsub fast float -0.000000e+00, %4571
  %4575 = fsub fast float -0.000000e+00, %4572
  %4576 = fsub fast float -0.000000e+00, %4573
  br label %4745

; <label>:4577                                    ; preds = %4550
  %4578 = fmul fast float %133, %4569
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = fmul fast float %134, %4569
  %4581 = fsub fast float -0.000000e+00, %4580
  %4582 = fmul fast float %135, %4569
  %4583 = fsub fast float -0.000000e+00, %4582
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4581, float %4583, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fmul fast float %4566, 2.500000e+00
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %4566, 0x4013FFFFE0000000
  %4588 = fadd fast float %4587, 0xBFFFFFFFE0000000
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4566, 0x4004000020000000
  %4591 = fadd fast float %4590, 0xBFF8000040000000
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4594 = fmul fast float %4155, 1.000000e+01
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4595, 2.000000e+00
  %4597 = fsub fast float 3.000000e+00, %4596
  %4598 = fmul fast float %4595, %4595
  %4599 = fmul fast float %4598, %4597
  %4600 = fsub fast float 1.000000e+00, %4599
  %4601 = fsub fast float 0x3FE3333340000000, %4176
  %4602 = fmul fast float %4601, 0x400AAAAAA0000000
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = fmul fast float %4600, %4603
  %4605 = fmul fast float %4188, 0x3FEA2B8620000000
  %4606 = fmul fast float %4189, 0x3FEA2B8620000000
  %4607 = fmul fast float %4190, 0x3FEA2B8620000000
  %4608 = fadd fast float %4605, 0x3FC81DFBA0000000
  %4609 = fmul fast float %4608, %4188
  %4610 = fadd fast float %4609, 0x3F910E6020000000
  %4611 = fadd fast float %4606, 0x3FC81DFBA0000000
  %4612 = fmul fast float %4611, %4189
  %4613 = fadd fast float %4612, 0x3F910E6020000000
  %4614 = fadd fast float %4607, 0x3FC81DFBA0000000
  %4615 = fmul fast float %4614, %4190
  %4616 = fadd fast float %4615, 0x3F910E6020000000
  %4617 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4620 = fsub fast float %4617, %4188
  %4621 = fsub fast float %4618, %4189
  %4622 = fsub fast float %4619, %4190
  %4623 = fmul fast float %4620, %4593
  %4624 = fmul fast float %4623, %4604
  %4625 = fmul fast float %4621, %4593
  %4626 = fmul fast float %4625, %4604
  %4627 = fmul fast float %4622, %4593
  %4628 = fmul fast float %4627, %4604
  %4629 = fadd fast float %4624, %4188
  %4630 = fadd fast float %4626, %4189
  %4631 = fadd fast float %4628, %4190
  %4632 = fmul fast float %4149, %4149
  %4633 = fmul fast float %4632, %4632
  %4634 = fadd fast float %4589, 1.000000e+00
  %4635 = fsub fast float %4634, %4604
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = fsub fast float 1.000000e+00, %4633
  %4640 = call float @dx.op.binary.f32(i32 36, float %4636, float %4639)  ; FMin(a,b)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4642 = call float @dx.op.binary.f32(i32 35, float %4640, float %4641)  ; FMax(a,b)
  %4643 = fadd fast float %4638, 0xBFE4CCCCC0000000
  %4644 = fmul fast float %4643, 0x4006DB6DA0000000
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fmul fast float %4645, 2.000000e+00
  %4647 = fsub fast float 3.000000e+00, %4646
  %4648 = bitcast float %4173 to i32
  %4649 = ashr i32 %4648, 1
  %4650 = add nsw i32 %4649, 532487669
  %4651 = bitcast i32 %4650 to float
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = fmul fast float %4655, 2.000000e+00
  %4657 = bitcast float %4174 to i32
  %4658 = ashr i32 %4657, 1
  %4659 = add nsw i32 %4658, 532487669
  %4660 = bitcast i32 %4659 to float
  %4661 = fsub fast float 1.000000e+00, %4660
  %4662 = bitcast float %4661 to i32
  %4663 = sub nsw i32 2129859010, %4662
  %4664 = bitcast i32 %4663 to float
  %4665 = fmul fast float %4664, 2.000000e+00
  %4666 = bitcast float %4175 to i32
  %4667 = ashr i32 %4666, 1
  %4668 = add nsw i32 %4667, 532487669
  %4669 = bitcast i32 %4668 to float
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, 2.000000e+00
  %4675 = fsub fast float 0x4002A9FBE0000000, %4656
  %4676 = fadd fast float %4656, 0x3FD54FDF00000000
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fmul fast float %4679, %4675
  %4681 = fmul fast float %4680, %4680
  %4682 = fsub fast float 0x4002A9FBE0000000, %4665
  %4683 = fadd fast float %4665, 0x3FD54FDF00000000
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4686, %4682
  %4688 = fmul fast float %4687, %4687
  %4689 = fsub fast float 0x4002A9FBE0000000, %4674
  %4690 = fadd fast float %4674, 0x3FD54FDF00000000
  %4691 = bitcast float %4690 to i32
  %4692 = sub nsw i32 2129859010, %4691
  %4693 = bitcast i32 %4692 to float
  %4694 = fmul fast float %4693, %4689
  %4695 = fmul fast float %4694, %4694
  %4696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4681)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4688)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4695)  ; FMax(a,b)
  %4699 = fsub fast float 1.000000e+00, %4584
  %4700 = fadd fast float %4699, %4600
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fsub fast float 1.000000e+00, %4564
  %4703 = fmul fast float %4642, %4702
  %4704 = fmul fast float %4645, %4645
  %4705 = fmul fast float %4704, %4703
  %4706 = fmul fast float %4705, %4647
  %4707 = fmul fast float %4702, 0xBFE99999A0000000
  %4708 = fmul fast float %4707, %4593
  %4709 = fmul fast float %4708, %4604
  %4710 = fadd fast float %4709, 1.000000e+00
  %4711 = fadd fast float %4176, -1.000000e+00
  %4712 = fmul fast float %4710, %4711
  %4713 = fadd fast float %4712, 1.000000e+00
  %4714 = fsub fast float %4696, %4173
  %4715 = fsub fast float %4697, %4174
  %4716 = fsub fast float %4698, %4175
  %4717 = fmul fast float %4706, %4714
  %4718 = fmul fast float %4706, %4715
  %4719 = fmul fast float %4706, %4716
  %4720 = fadd fast float %4717, %4173
  %4721 = fadd fast float %4718, %4174
  %4722 = fadd fast float %4719, %4175
  %4723 = fsub fast float %77, %4137
  %4724 = fsub fast float %78, %4138
  %4725 = fsub fast float %79, %4139
  %4726 = fmul fast float %4706, %4723
  %4727 = fmul fast float %4706, %4724
  %4728 = fmul fast float %4706, %4725
  %4729 = fadd fast float %4726, %4137
  %4730 = fadd fast float %4727, %4138
  %4731 = fadd fast float %4728, %4139
  %4732 = fmul fast float %4706, %4701
  %4733 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4734 = fsub fast float 1.000000e+00, %4733
  %4735 = fmul fast float %4732, %4734
  %4736 = fadd fast float %4735, %4733
  %4737 = fsub fast float 1.000000e+00, %4149
  %4738 = fmul fast float %4706, %4737
  %4739 = fadd fast float %4738, %4149
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4729, float %4730, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4729, %4741
  %4743 = fmul fast float %4730, %4741
  %4744 = fmul fast float %4731, %4741
  br label %4745

; <label>:4745                                    ; preds = %4577, %4570
  %4746 = phi float [ %4576, %4570 ], [ %4583, %4577 ]
  %4747 = phi float [ %4575, %4570 ], [ %4581, %4577 ]
  %4748 = phi float [ %4574, %4570 ], [ %4579, %4577 ]
  %4749 = phi float [ %4573, %4570 ], [ %4582, %4577 ]
  %4750 = phi float [ %4572, %4570 ], [ %4580, %4577 ]
  %4751 = phi float [ %4571, %4570 ], [ %4578, %4577 ]
  %4752 = phi float [ %4173, %4570 ], [ %4720, %4577 ]
  %4753 = phi float [ %4174, %4570 ], [ %4721, %4577 ]
  %4754 = phi float [ %4175, %4570 ], [ %4722, %4577 ]
  %4755 = phi float [ %4137, %4570 ], [ %4742, %4577 ]
  %4756 = phi float [ %4138, %4570 ], [ %4743, %4577 ]
  %4757 = phi float [ %4139, %4570 ], [ %4744, %4577 ]
  %4758 = phi float [ %4188, %4570 ], [ %4629, %4577 ]
  %4759 = phi float [ %4189, %4570 ], [ %4630, %4577 ]
  %4760 = phi float [ %4190, %4570 ], [ %4631, %4577 ]
  %4761 = phi float [ %4176, %4570 ], [ %4736, %4577 ]
  %4762 = phi float [ %4149, %4570 ], [ %4739, %4577 ]
  %4763 = select i1 %175, float 0.000000e+00, float %4754
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %4748, float %4747, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4750, float %4749, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = fmul fast float %4766, 2.000000e+00
  %4768 = fmul fast float %4767, %4755
  %4769 = fmul fast float %4767, %4756
  %4770 = fmul fast float %4767, %4757
  %4771 = fsub fast float %4751, %4768
  %4772 = fsub fast float %4750, %4769
  %4773 = fsub fast float %4749, %4770
  %4774 = call float @dx.op.binary.f32(i32 36, float %4762, float 1.000000e+00)  ; FMin(a,b)
  %4775 = fsub fast float 1.000000e+00, %4762
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = fsub fast float 1.000000e+00, %47
  %4779 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.binary.f32(i32 35, float %4779, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4781 = fdiv fast float %4778, %4780
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fmul fast float %4783, 5.000000e-01
  %4785 = fadd fast float %4784, 5.000000e-01
  %4786 = fmul fast float %4785, %47
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fmul fast float %4788, %4781
  %4790 = fadd fast float %4786, %4789
  %4791 = fsub fast float 5.000000e-01, %4784
  %4792 = fmul fast float %4791, %4758
  %4793 = fmul fast float %4791, %4759
  %4794 = fmul fast float %4791, %4760
  %4795 = fadd fast float %4790, %4792
  %4796 = fadd fast float %4790, %4793
  %4797 = fadd fast float %4790, %4794
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4772, float %4773, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = fadd fast float %4800, 5.000000e-01
  %4802 = fmul fast float %4801, %47
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4772, float %4773, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, %4781
  %4806 = fadd fast float %4802, %4805
  %4807 = fsub fast float 5.000000e-01, %4800
  %4808 = fmul fast float %4807, %4758
  %4809 = fmul fast float %4807, %4759
  %4810 = fmul fast float %4807, %4760
  %4811 = fadd fast float %4806, %4808
  %4812 = fadd fast float %4806, %4809
  %4813 = fadd fast float %4806, %4810
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = call float @dx.op.binary.f32(i32 36, float %4758, float %4815)  ; FMin(a,b)
  %4817 = fsub fast float 1.000000e+00, %4774
  %4818 = fmul fast float %4816, %4817
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = bitcast float %4819 to i32
  %4821 = sub nsw i32 2129859010, %4820
  %4822 = bitcast i32 %4821 to float
  %4823 = call float @dx.op.binary.f32(i32 36, float %4759, float %4815)  ; FMin(a,b)
  %4824 = fmul fast float %4823, %4817
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = call float @dx.op.binary.f32(i32 36, float %4760, float %4815)  ; FMin(a,b)
  %4830 = fmul fast float %4829, %4817
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = bitcast float %4831 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = fmul fast float %4774, %48
  %4836 = fmul fast float %4835, %4795
  %4837 = fmul fast float %4836, %4822
  %4838 = fmul fast float %4774, %49
  %4839 = fmul fast float %4838, %4796
  %4840 = fmul fast float %4839, %4828
  %4841 = fmul fast float %4774, %50
  %4842 = fmul fast float %4841, %4797
  %4843 = fmul fast float %4842, %4834
  %4844 = call float @dx.op.binary.f32(i32 36, float %4752, float %4815)  ; FMin(a,b)
  %4845 = fmul fast float %4844, %4817
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = bitcast float %4846 to i32
  %4848 = sub nsw i32 2129859010, %4847
  %4849 = bitcast i32 %4848 to float
  %4850 = call float @dx.op.binary.f32(i32 36, float %4753, float %4815)  ; FMin(a,b)
  %4851 = fmul fast float %4850, %4817
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = call float @dx.op.binary.f32(i32 36, float %4763, float %4815)  ; FMin(a,b)
  %4857 = fmul fast float %4856, %4817
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = bitcast float %4858 to i32
  %4860 = sub nsw i32 2129859010, %4859
  %4861 = bitcast i32 %4860 to float
  %4862 = fmul fast float %4835, %4811
  %4863 = fmul fast float %4862, %4849
  %4864 = fmul fast float %4838, %4812
  %4865 = fmul fast float %4864, %4855
  %4866 = fmul fast float %4841, %4813
  %4867 = fmul fast float %4866, %4861
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4840, float %4843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = select i1 %175, float 0.000000e+00, float %4837
  %4870 = select i1 %175, float %4868, float %4840
  %4871 = select i1 %175, float 0.000000e+00, float %4843
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4865, float %4867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = select i1 %175, float 0.000000e+00, float %4863
  %4874 = select i1 %175, float %4872, float %4865
  %4875 = select i1 %175, float 0.000000e+00, float %4867
  %4876 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4877 = fmul fast float %4876, %4869
  %4878 = fmul fast float %4876, %4870
  %4879 = fmul fast float %4871, %4876
  %4880 = fmul fast float %4765, 9.843750e-01
  %4881 = fmul fast float %4761, 9.843750e-01
  %4882 = fadd fast float %4880, 7.812500e-03
  %4883 = fadd fast float %4881, 7.812500e-03
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4882, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 3
  %4887 = fmul fast float %4885, %4752
  %4888 = fmul fast float %4885, %4753
  %4889 = fmul fast float %4885, %4763
  %4890 = fadd fast float %4887, %4886
  %4891 = fadd fast float %4888, %4886
  %4892 = fadd fast float %4889, %4886
  %4893 = fcmp fast ogt float %4150, 0.000000e+00
  br i1 %4893, label %4894, label %4920

; <label>:4894                                    ; preds = %4745
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4150, float %4765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.ResRet.f32 %4895, 1
  %4898 = extractvalue %dx.types.ResRet.f32 %4895, 2
  %4899 = fadd fast float %4896, -5.000000e-01
  %4900 = fadd fast float %4897, -5.000000e-01
  %4901 = fadd fast float %4898, -5.000000e-01
  %4902 = fsub fast float 1.000000e+00, %4752
  %4903 = fsub fast float 1.000000e+00, %4753
  %4904 = fsub fast float 1.000000e+00, %4763
  %4905 = fmul fast float %4752, 4.000000e+00
  %4906 = fmul fast float %4905, %4902
  %4907 = fmul fast float %4906, %4899
  %4908 = fmul fast float %4753, 4.000000e+00
  %4909 = fmul fast float %4908, %4903
  %4910 = fmul fast float %4909, %4900
  %4911 = fmul fast float %4763, 4.000000e+00
  %4912 = fmul fast float %4911, %4904
  %4913 = fmul fast float %4912, %4901
  %4914 = fadd fast float %4907, %4890
  %4915 = fadd fast float %4910, %4891
  %4916 = fadd fast float %4913, %4892
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  br label %4920

; <label>:4920                                    ; preds = %4894, %4745
  %4921 = phi float [ %4917, %4894 ], [ %4890, %4745 ]
  %4922 = phi float [ %4918, %4894 ], [ %4891, %4745 ]
  %4923 = phi float [ %4919, %4894 ], [ %4892, %4745 ]
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4921, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fmul fast float %133, %133
  %4928 = fmul fast float %134, %134
  %4929 = fadd fast float %4928, %4927
  %4930 = fmul fast float %135, %135
  %4931 = fadd fast float %4929, %4930
  %4932 = call float @dx.op.unary.f32(i32 24, float %4931)  ; Sqrt(value)
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4935 = fsub fast float %4932, %4934
  %4936 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4937 = fmul fast float %4935, %4936
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4940 = extractvalue %dx.types.CBufRet.f32 %4933, 3
  %4941 = fmul fast float %4938, %36
  %4942 = fmul fast float %4941, %4939
  %4943 = fmul fast float %4941, %4940
  %4944 = fadd fast float %4943, 1.000000e+00
  %4945 = fmul fast float %4926, %4877
  %4946 = fmul fast float %4945, %4944
  %4947 = fmul fast float %4926, %4878
  %4948 = fmul fast float %4947, %4944
  %4949 = fmul fast float %4926, %4879
  %4950 = fmul fast float %4949, %4944
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4759, float %4760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = fcmp fast ogt float %4951, 0x3E7FF19E20000000
  %4953 = fdiv fast float 1.000000e+00, %4951
  %4954 = select i1 %4952, float %4953, float 0.000000e+00
  %4955 = fmul fast float %4954, %4758
  %4956 = fmul fast float %4954, %4759
  %4957 = fmul fast float %4954, %4760
  %4958 = fadd fast float %4955, -1.000000e+00
  %4959 = fadd fast float %4956, -1.000000e+00
  %4960 = fadd fast float %4957, -1.000000e+00
  %4961 = fmul fast float %4958, 5.000000e-01
  %4962 = fmul fast float %4959, 5.000000e-01
  %4963 = fmul fast float %4960, 5.000000e-01
  %4964 = fadd fast float %4961, 1.000000e+00
  %4965 = fadd fast float %4962, 1.000000e+00
  %4966 = fadd fast float %4963, 1.000000e+00
  %4967 = fadd fast float %4942, %4151
  %4968 = fmul fast float %4921, %4873
  %4969 = fmul fast float %4922, %4874
  %4970 = fmul fast float %4923, %4875
  %4971 = fsub fast float 1.000000e+00, %4765
  %4972 = bitcast float %4971 to i32
  %4973 = sitofp i32 %4972 to float
  %4974 = fmul fast float %4973, 5.000000e+00
  %4975 = fadd fast float %4974, 0xC1EFBF8940000000
  %4976 = fptosi float %4975 to i32
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4967, %4977
  %4979 = fmul fast float %4945, %4978
  %4980 = fmul fast float %4979, %4964
  %4981 = fmul fast float %4947, %4978
  %4982 = fmul fast float %4981, %4965
  %4983 = fmul fast float %4949, %4978
  %4984 = fmul fast float %4983, %4966
  %4985 = fmul fast float %4946, %4147
  %4986 = fmul fast float %4948, %4147
  %4987 = fmul fast float %4950, %4147
  %4988 = fadd fast float %4968, %4143
  %4989 = fadd fast float %4988, %4980
  %4990 = fmul fast float %4989, %4147
  %4991 = fadd fast float %4969, %4144
  %4992 = fadd fast float %4991, %4982
  %4993 = fmul fast float %4992, %4147
  %4994 = fadd fast float %4970, %4145
  %4995 = fadd fast float %4994, %4984
  %4996 = fmul fast float %4995, %4147
  %4997 = bitcast i32 %4777 to float
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 3
  %5000 = fcmp fast oeq float %4999, 0.000000e+00
  br i1 %5000, label %5228, label %5001

; <label>:5001                                    ; preds = %4920
  %5002 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5003 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5004 = extractvalue %dx.types.CBufRet.f32 %4998, 2
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = select i1 %175, float %5010, float %5006
  %5014 = select i1 %175, float %5012, float %5007
  %5015 = select i1 %175, float %5011, float %5008
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5018 = fcmp fast une float %5017, 0.000000e+00
  br i1 %5018, label %5019, label %5036

; <label>:5019                                    ; preds = %5001
  %5020 = fptoui float %70 to i32
  %5021 = fptoui float %71 to i32
  %5022 = lshr i32 %5020, 4
  %5023 = lshr i32 %5021, 4
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = fptoui float %5025 to i32
  %5027 = add i32 %5026, 15
  %5028 = lshr i32 %5027, 4
  %5029 = mul i32 %5028, %5023
  %5030 = add i32 %5029, %5022
  %5031 = shl i32 %5030, 3
  %5032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5031, i32 undef)  ; BufferLoad(srv,index,wot)
  %5033 = extractvalue %dx.types.ResRet.i32 %5032, 0
  %5034 = and i32 %5033, -268435456
  %5035 = icmp eq i32 %5034, -1342177280
  br i1 %5035, label %5046, label %5036

; <label>:5036                                    ; preds = %5019, %5001
  %5037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.f32 %5037, 2
  %5039 = extractvalue %dx.types.CBufRet.f32 %5037, 3
  %5040 = fmul fast float %5038, %70
  %5041 = fmul fast float %5039, %71
  %5042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5040, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  br label %5046

; <label>:5046                                    ; preds = %5036, %5019
  %5047 = phi float [ %5043, %5036 ], [ 0.000000e+00, %5019 ]
  %5048 = phi float [ %5044, %5036 ], [ 0.000000e+00, %5019 ]
  %5049 = phi float [ %5045, %5036 ], [ 0.000000e+00, %5019 ]
  %5050 = call float @dx.op.binary.f32(i32 36, float %5048, float %5049)  ; FMin(a,b)
  %5051 = call float @dx.op.binary.f32(i32 36, float %5047, float %5050)  ; FMin(a,b)
  %5052 = fcmp fast ogt float %5051, 0.000000e+00
  br i1 %5052, label %5053, label %5228, !dx.controlflow.hints !76

; <label>:5053                                    ; preds = %5046
  %5054 = fmul fast float %5047, %5013
  %5055 = fmul fast float %5048, %5014
  %5056 = fmul fast float %5049, %5015
  %5057 = fsub fast float %5002, %4751
  %5058 = fsub fast float %5003, %4750
  %5059 = fsub fast float %5004, %4749
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 25, float %5060)  ; Rsqrt(value)
  %5062 = fmul fast float %5061, %5057
  %5063 = fmul fast float %5061, %5058
  %5064 = fmul fast float %5061, %5059
  %5065 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5003, float %5004, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5066 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4747, float %4746, float %5062, float %5063, float %5064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5067 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5068 = fmul fast float %5067, %5067
  %5069 = fmul fast float %5068, %4997
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fmul fast float %5070, %5067
  %5072 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %5062, float %5063, float %5064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = fmul fast float %5072, %5072
  %5074 = call float @dx.op.unary.f32(i32 6, float %5065)  ; FAbs(value)
  %5075 = fsub fast float 1.000000e+00, %4761
  %5076 = call float @dx.op.binary.f32(i32 35, float %5075, float 0x3F847AE140000000)  ; FMax(a,b)
  %5077 = fmul fast float %5076, %5076
  %5078 = fmul fast float %5077, %5077
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = fmul fast float %4765, %4765
  %5081 = fmul fast float %5080, %5079
  %5082 = fadd fast float %5081, %5078
  %5083 = bitcast float %5082 to i32
  %5084 = ashr i32 %5083, 1
  %5085 = add nsw i32 %5084, 532487669
  %5086 = bitcast i32 %5085 to float
  %5087 = fadd fast float %5086, %4765
  %5088 = fmul fast float %5078, %5073
  %5089 = fsub fast float 1.000000e+00, %5073
  %5090 = fadd fast float %5089, %5088
  %5091 = fmul fast float %5074, %5074
  %5092 = fmul fast float %5091, %5079
  %5093 = fadd fast float %5092, %5078
  %5094 = bitcast float %5093 to i32
  %5095 = ashr i32 %5094, 1
  %5096 = add nsw i32 %5095, 532487669
  %5097 = bitcast i32 %5096 to float
  %5098 = fadd fast float %5097, %5074
  %5099 = fmul fast float %5090, %5090
  %5100 = fmul fast float %5099, %5087
  %5101 = fmul fast float %5100, %5098
  %5102 = fdiv fast float 0x3FF0A00000000000, %5101
  %5103 = fmul fast float %5102, %5078
  %5104 = call float @dx.op.unary.f32(i32 6, float %5066)  ; FAbs(value)
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = bitcast float %5105 to i32
  %5107 = sitofp i32 %5106 to float
  %5108 = fmul fast float %5107, 5.000000e+00
  %5109 = fadd fast float %5108, 0xC1EFBF8940000000
  %5110 = fptosi float %5109 to i32
  %5111 = bitcast i32 %5110 to float
  %5112 = fsub fast float 1.000000e+00, %4752
  %5113 = fsub fast float 1.000000e+00, %4753
  %5114 = fsub fast float 1.000000e+00, %4763
  %5115 = fmul fast float %5111, %5112
  %5116 = fmul fast float %5111, %5113
  %5117 = fmul fast float %5111, %5114
  %5118 = fadd fast float %5115, %4752
  %5119 = fadd fast float %5116, %4753
  %5120 = fadd fast float %5117, %4763
  br i1 %4893, label %5121, label %5144

; <label>:5121                                    ; preds = %5053
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4150, float %5104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.ResRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.ResRet.f32 %5122, 2
  %5126 = fadd fast float %5123, -5.000000e-01
  %5127 = fadd fast float %5124, -5.000000e-01
  %5128 = fadd fast float %5125, -5.000000e-01
  %5129 = fmul fast float %4752, 4.000000e+00
  %5130 = fmul fast float %5129, %5112
  %5131 = fmul fast float %5130, %5126
  %5132 = fmul fast float %4753, 4.000000e+00
  %5133 = fmul fast float %5132, %5113
  %5134 = fmul fast float %5133, %5127
  %5135 = fmul fast float %4763, 4.000000e+00
  %5136 = fmul fast float %5135, %5114
  %5137 = fmul fast float %5136, %5128
  %5138 = fadd fast float %5131, %5118
  %5139 = fadd fast float %5134, %5119
  %5140 = fadd fast float %5137, %5120
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  br label %5144

; <label>:5144                                    ; preds = %5121, %5053
  %5145 = phi float [ %5141, %5121 ], [ %5118, %5053 ]
  %5146 = phi float [ %5142, %5121 ], [ %5119, %5053 ]
  %5147 = phi float [ %5143, %5121 ], [ %5120, %5053 ]
  %5148 = fmul fast float %5065, 9.843750e-01
  %5149 = fadd fast float %5148, 7.812500e-03
  %5150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5149, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 2
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 3
  %5153 = fmul fast float %5151, %4752
  %5154 = fmul fast float %5151, %4753
  %5155 = fmul fast float %5151, %4763
  %5156 = fadd fast float %5153, %5152
  %5157 = fadd fast float %5154, %5152
  %5158 = fadd fast float %5155, %5152
  br i1 %4893, label %5159, label %5182

; <label>:5159                                    ; preds = %5144
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4150, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5164 = fadd fast float %5161, -5.000000e-01
  %5165 = fadd fast float %5162, -5.000000e-01
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fmul fast float %4752, 4.000000e+00
  %5168 = fmul fast float %5167, %5112
  %5169 = fmul fast float %5168, %5164
  %5170 = fmul fast float %4753, 4.000000e+00
  %5171 = fmul fast float %5170, %5113
  %5172 = fmul fast float %5171, %5165
  %5173 = fmul fast float %4763, 4.000000e+00
  %5174 = fmul fast float %5173, %5114
  %5175 = fmul fast float %5174, %5166
  %5176 = fadd fast float %5169, %5156
  %5177 = fadd fast float %5172, %5157
  %5178 = fadd fast float %5175, %5158
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  br label %5182

; <label>:5182                                    ; preds = %5159, %5144
  %5183 = phi float [ %5179, %5159 ], [ %5156, %5144 ]
  %5184 = phi float [ %5180, %5159 ], [ %5157, %5144 ]
  %5185 = phi float [ %5181, %5159 ], [ %5158, %5144 ]
  %5186 = call float @dx.op.binary.f32(i32 35, float %5184, float %5185)  ; FMax(a,b)
  %5187 = call float @dx.op.binary.f32(i32 35, float %5183, float %5186)  ; FMax(a,b)
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = fmul fast float %5145, %5103
  %5190 = fmul fast float %5146, %5103
  %5191 = fmul fast float %5147, %5103
  %5192 = fsub fast float 1.000000e+00, %5066
  %5193 = bitcast float %5192 to i32
  %5194 = sitofp i32 %5193 to float
  %5195 = fmul fast float %5194, 5.000000e+00
  %5196 = fadd fast float %5195, 0xC1EFBF8940000000
  %5197 = fptosi float %5196 to i32
  %5198 = bitcast i32 %5197 to float
  %5199 = fmul fast float %5198, %4151
  %5200 = fmul fast float %5188, %5199
  %5201 = fmul fast float %5200, %4964
  %5202 = fmul fast float %5200, %4965
  %5203 = fmul fast float %5200, %4966
  %5204 = fadd fast float %5201, %5189
  %5205 = fadd fast float %5202, %5190
  %5206 = fadd fast float %5203, %5191
  %5207 = fmul fast float %5071, %5054
  %5208 = fmul fast float %5207, %5188
  %5209 = fmul fast float %5071, %5055
  %5210 = fmul fast float %5209, %5188
  %5211 = fmul fast float %5071, %5056
  %5212 = fmul fast float %5211, %5188
  %5213 = fmul fast float %5207, %5204
  %5214 = fmul fast float %5209, %5205
  %5215 = fmul fast float %5211, %5206
  %5216 = fadd fast float %5208, %4946
  %5217 = fmul fast float %5216, %4147
  %5218 = fadd fast float %5210, %4948
  %5219 = fmul fast float %5218, %4147
  %5220 = fadd fast float %5212, %4950
  %5221 = fmul fast float %5220, %4147
  %5222 = fadd fast float %5213, %4989
  %5223 = fmul fast float %5222, %4147
  %5224 = fadd fast float %5214, %4992
  %5225 = fmul fast float %5224, %4147
  %5226 = fadd fast float %5215, %4995
  %5227 = fmul fast float %5226, %4147
  br label %5228

; <label>:5228                                    ; preds = %5182, %5046, %4920
  %5229 = phi float [ %4990, %4920 ], [ %4990, %5046 ], [ %5223, %5182 ]
  %5230 = phi float [ %4993, %4920 ], [ %4993, %5046 ], [ %5225, %5182 ]
  %5231 = phi float [ %4996, %4920 ], [ %4996, %5046 ], [ %5227, %5182 ]
  %5232 = phi float [ %4985, %4920 ], [ %4985, %5046 ], [ %5217, %5182 ]
  %5233 = phi float [ %4986, %4920 ], [ %4986, %5046 ], [ %5219, %5182 ]
  %5234 = phi float [ %4987, %4920 ], [ %4987, %5046 ], [ %5221, %5182 ]
  %5235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.i32 %5235, 0
  %5237 = icmp eq i32 %5236, 0
  br i1 %5237, label %5672, label %5238

; <label>:5238                                    ; preds = %5228
  %5239 = fptoui float %70 to i32
  %5240 = fptoui float %71 to i32
  %5241 = lshr i32 %5239, 4
  %5242 = lshr i32 %5240, 4
  %5243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.i32 %5243, 0
  %5245 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5242, i32 %5244, i32 %5241)  ; UMad(a,b,c)
  %5246 = add nsw i32 %5236, -1
  %5247 = call i32 @dx.op.binary.i32(i32 37, i32 %5246, i32 0)  ; IMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %5249 = fptoui float %5248 to i32
  %5250 = lshr i32 %5249, 5
  %5251 = call i32 @dx.op.binary.i32(i32 40, i32 %5250, i32 8191)  ; UMin(a,b)
  %5252 = shl i32 %5251, 2
  %5253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.i32 %5253, 0
  %5255 = lshr i32 %5254, 16
  %5256 = and i32 %5254, 65535
  %5257 = lshr i32 %5254, 21
  %5258 = lshr i32 %5256, 5
  %5259 = call i32 @dx.op.binary.i32(i32 40, i32 %5258, i32 %5247)  ; UMin(a,b)
  %5260 = icmp ugt i32 %5257, %5259
  br i1 %5260, label %5672, label %5261

; <label>:5261                                    ; preds = %5238
  br label %5262

; <label>:5262                                    ; preds = %5662, %5261
  %5263 = phi i32 [ %5669, %5662 ], [ %5257, %5261 ]
  %5264 = phi float [ %5663, %5662 ], [ %5229, %5261 ]
  %5265 = phi float [ %5664, %5662 ], [ %5230, %5261 ]
  %5266 = phi float [ %5665, %5662 ], [ %5231, %5261 ]
  %5267 = phi float [ %5666, %5662 ], [ %5232, %5261 ]
  %5268 = phi float [ %5667, %5662 ], [ %5233, %5261 ]
  %5269 = phi float [ %5668, %5662 ], [ %5234, %5261 ]
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 0
  %5272 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5245, i32 %5271, i32 %5263)  ; UMad(a,b,c)
  %5273 = shl i32 %5272, 2
  %5274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.i32 %5274, 0
  %5276 = shl i32 %5263, 5
  %5277 = sub nsw i32 %5255, %5276
  %5278 = call i32 @dx.op.binary.i32(i32 37, i32 %5277, i32 0)  ; IMax(a,b)
  %5279 = call i32 @dx.op.binary.i32(i32 38, i32 %5278, i32 31)  ; IMin(a,b)
  %5280 = sub nsw i32 1, %5255
  %5281 = add nsw i32 %5280, %5256
  %5282 = call i32 @dx.op.binary.i32(i32 37, i32 %5281, i32 0)  ; IMax(a,b)
  %5283 = call i32 @dx.op.binary.i32(i32 38, i32 %5282, i32 32)  ; IMin(a,b)
  %5284 = and i32 %5283, 31
  %5285 = shl i32 -1, %5284
  %5286 = xor i32 %5285, -1
  %5287 = and i32 %5279, 31
  %5288 = shl i32 %5286, %5287
  %5289 = icmp eq i32 %5283, 32
  %5290 = select i1 %5289, i32 -1, i32 %5288
  %5291 = and i32 %5290, %5275
  %5292 = icmp eq i32 %5291, 0
  br i1 %5292, label %5662, label %5293

; <label>:5293                                    ; preds = %5262
  br label %5294

; <label>:5294                                    ; preds = %5374, %5293
  %5295 = phi i32 [ %5306, %5374 ], [ %5291, %5293 ]
  %5296 = phi float [ %5375, %5374 ], [ %5264, %5293 ]
  %5297 = phi float [ %5376, %5374 ], [ %5265, %5293 ]
  %5298 = phi float [ %5377, %5374 ], [ %5266, %5293 ]
  %5299 = phi float [ %5378, %5374 ], [ %5267, %5293 ]
  %5300 = phi float [ %5379, %5374 ], [ %5268, %5293 ]
  %5301 = phi float [ %5380, %5374 ], [ %5269, %5293 ]
  %5302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5295)  ; FirstbitLo(value)
  %5303 = add i32 %5302, %5276
  %5304 = and i32 %5302, 31
  %5305 = shl i32 1, %5304
  %5306 = xor i32 %5305, %5295
  %5307 = mul i32 %5303, 112
  %5308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.ResRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.ResRet.f32 %5308, 2
  %5312 = or i32 %5307, 12
  %5313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 0
  %5315 = add i32 %5307, 44
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = add i32 %5307, 48
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = add i32 %5307, 80
  %5324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = select i1 %175, float %5325, float %5309
  %5329 = select i1 %175, float %5327, float %5310
  %5330 = select i1 %175, float %5326, float %5311
  %5331 = fsub fast float %5320, %133
  %5332 = fsub fast float %5321, %134
  %5333 = fsub fast float %5322, %135
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 24, float %5334)  ; Sqrt(value)
  %5336 = fdiv fast float 1.000000e+00, %5335
  %5337 = fmul fast float %5336, %5331
  %5338 = fmul fast float %5336, %5332
  %5339 = fmul fast float %5336, %5333
  %5340 = fadd fast float %5335, %5314
  %5341 = fdiv fast float 1.000000e+00, %5340
  %5342 = fmul float %5317, %5341
  %5343 = fmul float %5342, %5342
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = and i32 %5305, %5291
  %5346 = icmp eq i32 %5345, 0
  br i1 %5346, label %5369, label %5347, !dx.controlflow.hints !77

; <label>:5347                                    ; preds = %5294
  %5348 = lshr i32 %5239, 5
  %5349 = lshr i32 %5240, 5
  %5350 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5348, i32 %5349, i32 %5303, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5351 = extractvalue %dx.types.ResRet.i32 %5350, 0
  %5352 = and i32 %5351, 3
  %5353 = icmp eq i32 %5352, 0
  %5354 = select i1 %5353, float 1.000000e+00, float 0.000000e+00
  %5355 = icmp eq i32 %5352, 3
  br i1 %5355, label %5356, label %5369

; <label>:5356                                    ; preds = %5347
  %5357 = lshr i32 %5351, 10
  %5358 = and i32 %5357, 8160
  %5359 = and i32 %5240, 31
  %5360 = or i32 %5358, %5359
  %5361 = lshr i32 %5351, 1
  %5362 = and i32 %5361, 16352
  %5363 = and i32 %5239, 31
  %5364 = or i32 %5362, %5363
  %5365 = lshr i32 %5351, 23
  %5366 = and i32 %5365, 255
  %5367 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5364, i32 %5360, i32 %5366, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  br label %5369

; <label>:5369                                    ; preds = %5356, %5347, %5294
  %5370 = phi float [ %5368, %5356 ], [ %5354, %5347 ], [ 0.000000e+00, %5294 ]
  %5371 = call float @dx.op.binary.f32(i32 36, float %5370, float %5370)  ; FMin(a,b)
  %5372 = call float @dx.op.binary.f32(i32 36, float %5370, float %5371)  ; FMin(a,b)
  %5373 = fcmp fast ogt float %5372, 0.000000e+00
  br i1 %5373, label %5382, label %5374, !dx.controlflow.hints !78

; <label>:5374                                    ; preds = %5618, %5369
  %5375 = phi float [ %5296, %5369 ], [ %5658, %5618 ]
  %5376 = phi float [ %5297, %5369 ], [ %5659, %5618 ]
  %5377 = phi float [ %5298, %5369 ], [ %5660, %5618 ]
  %5378 = phi float [ %5299, %5369 ], [ %5652, %5618 ]
  %5379 = phi float [ %5300, %5369 ], [ %5653, %5618 ]
  %5380 = phi float [ %5301, %5369 ], [ %5654, %5618 ]
  %5381 = icmp eq i32 %5295, %5305
  br i1 %5381, label %5661, label %5294

; <label>:5382                                    ; preds = %5369
  %5383 = fmul fast float %5370, %5328
  %5384 = fmul fast float %5370, %5329
  %5385 = fmul fast float %5370, %5330
  %5386 = fsub fast float %5322, %4551
  %5387 = fcmp fast ogt float %5386, 0.000000e+00
  %5388 = fsub fast float %135, %4551
  %5389 = fcmp fast ogt float %5388, 0.000000e+00
  %5390 = xor i1 %5389, %5387
  %5391 = fsub fast float %4551, %5322
  %5392 = fmul fast float %5391, 2.000000e+00
  %5393 = fadd fast float %5392, %5322
  %5394 = select i1 %5390, float %5322, float %5393
  %5395 = fsub fast float %5394, %135
  %5396 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5395, float %5331, float %5332, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = call float @dx.op.unary.f32(i32 25, float %5396)  ; Rsqrt(value)
  %5398 = fmul fast float %5397, %5331
  %5399 = fmul fast float %5397, %5332
  %5400 = fmul fast float %5397, %5395
  %5401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5398, float %5399, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = fdiv fast float 1.000000e+00, %5402
  %5404 = fmul fast float %5403, %5401
  %5405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5388, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fcmp fast ogt float %5405, 0.000000e+00
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = zext i1 %5406 to i32
  %5409 = zext i1 %5407 to i32
  %5410 = sub nsw i32 %5408, %5409
  %5411 = sitofp i32 %5410 to float
  %5412 = fsub fast float %5394, %4551
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5412, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  %5415 = fcmp fast olt float %5413, 0.000000e+00
  %5416 = zext i1 %5414 to i32
  %5417 = zext i1 %5415 to i32
  %5418 = sub nsw i32 %5416, %5417
  %5419 = sitofp i32 %5418 to float
  %5420 = fcmp fast une float %5411, %5419
  br i1 %5420, label %5421, label %5431

; <label>:5421                                    ; preds = %5382
  %5422 = fmul fast float %5404, %5400
  %5423 = fmul fast float %5404, %5399
  %5424 = fmul fast float %5404, %5398
  %5425 = fmul fast float %5424, %5424
  %5426 = fmul fast float %5423, %5423
  %5427 = fadd fast float %5425, %5426
  %5428 = fmul fast float %5422, %5422
  %5429 = fadd fast float %5427, %5428
  %5430 = call float @dx.op.unary.f32(i32 24, float %5429)  ; Sqrt(value)
  br label %5443

; <label>:5431                                    ; preds = %5382
  %5432 = icmp slt i32 %5410, 0
  br i1 %5432, label %5433, label %5443

; <label>:5433                                    ; preds = %5431
  %5434 = fsub fast float %133, %5320
  %5435 = fsub fast float %134, %5321
  %5436 = fsub fast float %135, %5394
  %5437 = fmul fast float %5434, %5434
  %5438 = fmul fast float %5435, %5435
  %5439 = fadd fast float %5437, %5438
  %5440 = fmul fast float %5436, %5436
  %5441 = fadd fast float %5439, %5440
  %5442 = call float @dx.op.unary.f32(i32 24, float %5441)  ; Sqrt(value)
  br label %5443

; <label>:5443                                    ; preds = %5433, %5431, %5421
  %5444 = phi float [ %5430, %5421 ], [ %5442, %5433 ], [ 0.000000e+00, %5431 ]
  %5445 = and i1 %5389, %5387
  %5446 = fsub fast float -0.000000e+00, %5444
  %5447 = select i1 %5445, float -0.000000e+00, float %5446
  %5448 = fmul fast float %4552, 0x3FF7154760000000
  %5449 = fmul fast float %5448, %5447
  %5450 = fmul fast float %4553, 0x3FF7154760000000
  %5451 = fmul fast float %5450, %5447
  %5452 = fmul fast float %4554, 0x3FF7154760000000
  %5453 = fmul fast float %5452, %5447
  %5454 = call float @dx.op.unary.f32(i32 21, float %5449)  ; Exp(value)
  %5455 = call float @dx.op.unary.f32(i32 21, float %5451)  ; Exp(value)
  %5456 = call float @dx.op.unary.f32(i32 21, float %5453)  ; Exp(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5459 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5460 = fmul fast float %5383, %5457
  %5461 = fmul fast float %5384, %5458
  %5462 = fmul fast float %5385, %5459
  %5463 = fsub fast float %5337, %4751
  %5464 = fsub fast float %5338, %4750
  %5465 = fsub fast float %5339, %4749
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 25, float %5466)  ; Rsqrt(value)
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %5467, %5464
  %5470 = fmul fast float %5467, %5465
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4747, float %4746, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5474 = fmul fast float %5473, %5344
  %5475 = fmul fast float %5473, %5473
  %5476 = fmul fast float %5475, %4997
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %5474, %5477
  %5479 = bitcast float %5334 to i32
  %5480 = ashr i32 %5479, 1
  %5481 = sub nsw i32 1597463007, %5480
  %5482 = bitcast i32 %5481 to float
  %5483 = fmul fast float %5482, %5331
  %5484 = fmul fast float %5482, %5332
  %5485 = fmul fast float %5482, %5333
  %5486 = fsub fast float %5483, %4751
  %5487 = fsub fast float %5484, %4750
  %5488 = fsub fast float %5485, %4749
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5486, float %5487, float %5488, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.unary.f32(i32 25, float %5489)  ; Rsqrt(value)
  %5491 = fmul fast float %5486, %5490
  %5492 = fmul fast float %5487, %5490
  %5493 = fmul fast float %5488, %5490
  %5494 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fmul fast float %5494, %5494
  %5496 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5497 = fsub fast float 1.000000e+00, %4761
  %5498 = call float @dx.op.binary.f32(i32 35, float %5497, float 0x3F847AE140000000)  ; FMax(a,b)
  %5499 = fmul fast float %5498, %5498
  %5500 = fmul fast float %5499, %5499
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = fmul fast float %4765, %4765
  %5503 = fmul fast float %5502, %5501
  %5504 = fadd fast float %5503, %5500
  %5505 = bitcast float %5504 to i32
  %5506 = ashr i32 %5505, 1
  %5507 = add nsw i32 %5506, 532487669
  %5508 = bitcast i32 %5507 to float
  %5509 = fadd fast float %5508, %4765
  %5510 = fmul fast float %5500, %5495
  %5511 = fsub fast float 1.000000e+00, %5495
  %5512 = fadd fast float %5511, %5510
  %5513 = fmul fast float %5496, %5496
  %5514 = fmul fast float %5513, %5501
  %5515 = fadd fast float %5514, %5500
  %5516 = bitcast float %5515 to i32
  %5517 = ashr i32 %5516, 1
  %5518 = add nsw i32 %5517, 532487669
  %5519 = bitcast i32 %5518 to float
  %5520 = fadd fast float %5519, %5496
  %5521 = fmul fast float %5512, %5512
  %5522 = fmul fast float %5521, %5509
  %5523 = fmul fast float %5522, %5520
  %5524 = fdiv fast float 1.000000e+00, %5523
  %5525 = bitcast float %5500 to i32
  %5526 = sitofp i32 %5525 to float
  %5527 = fmul fast float %5526, 0x3FE7F73180000000
  %5528 = fadd fast float %5527, 0x41AFE27C40000000
  %5529 = fptosi float %5528 to i32
  %5530 = bitcast i32 %5529 to float
  %5531 = fmul fast float %5317, 0x3FD80E9D60000000
  %5532 = fmul fast float %5531, %5482
  %5533 = fadd fast float %5530, %5532
  %5534 = bitcast float %5533 to i32
  %5535 = sub nsw i32 2129859010, %5534
  %5536 = bitcast i32 %5535 to float
  %5537 = fmul fast float %5500, %5524
  %5538 = fmul fast float %5537, %5530
  %5539 = fmul fast float %5538, %5536
  %5540 = call float @dx.op.unary.f32(i32 6, float %5472)  ; FAbs(value)
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = bitcast float %5541 to i32
  %5543 = sitofp i32 %5542 to float
  %5544 = fmul fast float %5543, 5.000000e+00
  %5545 = fadd fast float %5544, 0xC1EFBF8940000000
  %5546 = fptosi float %5545 to i32
  %5547 = bitcast i32 %5546 to float
  %5548 = fsub fast float 1.000000e+00, %4752
  %5549 = fsub fast float 1.000000e+00, %4753
  %5550 = fsub fast float 1.000000e+00, %4763
  %5551 = fmul fast float %5547, %5548
  %5552 = fmul fast float %5547, %5549
  %5553 = fmul fast float %5547, %5550
  %5554 = fadd fast float %5551, %4752
  %5555 = fadd fast float %5552, %4753
  %5556 = fadd fast float %5553, %4763
  br i1 %4893, label %5557, label %5580

; <label>:5557                                    ; preds = %5443
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4150, float %5540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = fadd fast float %5559, -5.000000e-01
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fmul fast float %4752, 4.000000e+00
  %5566 = fmul fast float %5565, %5548
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %4753, 4.000000e+00
  %5569 = fmul fast float %5568, %5549
  %5570 = fmul fast float %5569, %5563
  %5571 = fmul fast float %4763, 4.000000e+00
  %5572 = fmul fast float %5571, %5550
  %5573 = fmul fast float %5572, %5564
  %5574 = fadd fast float %5567, %5554
  %5575 = fadd fast float %5570, %5555
  %5576 = fadd fast float %5573, %5556
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  br label %5580

; <label>:5580                                    ; preds = %5557, %5443
  %5581 = phi float [ %5577, %5557 ], [ %5554, %5443 ]
  %5582 = phi float [ %5578, %5557 ], [ %5555, %5443 ]
  %5583 = phi float [ %5579, %5557 ], [ %5556, %5443 ]
  %5584 = fmul fast float %5471, 9.843750e-01
  %5585 = fadd fast float %5584, 7.812500e-03
  %5586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5585, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 2
  %5588 = extractvalue %dx.types.ResRet.f32 %5586, 3
  %5589 = fmul fast float %5587, %4752
  %5590 = fmul fast float %5587, %4753
  %5591 = fmul fast float %5587, %4763
  %5592 = fadd fast float %5589, %5588
  %5593 = fadd fast float %5590, %5588
  %5594 = fadd fast float %5591, %5588
  br i1 %4893, label %5595, label %5618

; <label>:5595                                    ; preds = %5580
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4150, float %5471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5600 = fadd fast float %5597, -5.000000e-01
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fmul fast float %4752, 4.000000e+00
  %5604 = fmul fast float %5603, %5548
  %5605 = fmul fast float %5604, %5600
  %5606 = fmul fast float %4753, 4.000000e+00
  %5607 = fmul fast float %5606, %5549
  %5608 = fmul fast float %5607, %5601
  %5609 = fmul fast float %4763, 4.000000e+00
  %5610 = fmul fast float %5609, %5550
  %5611 = fmul fast float %5610, %5602
  %5612 = fadd fast float %5605, %5592
  %5613 = fadd fast float %5608, %5593
  %5614 = fadd fast float %5611, %5594
  %5615 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5616 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5617 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  br label %5618

; <label>:5618                                    ; preds = %5595, %5580
  %5619 = phi float [ %5615, %5595 ], [ %5592, %5580 ]
  %5620 = phi float [ %5616, %5595 ], [ %5593, %5580 ]
  %5621 = phi float [ %5617, %5595 ], [ %5594, %5580 ]
  %5622 = call float @dx.op.binary.f32(i32 35, float %5620, float %5621)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5619, float %5622)  ; FMax(a,b)
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fmul fast float %5581, %5539
  %5626 = fmul fast float %5582, %5539
  %5627 = fmul fast float %5583, %5539
  %5628 = fsub fast float 1.000000e+00, %5472
  %5629 = bitcast float %5628 to i32
  %5630 = sitofp i32 %5629 to float
  %5631 = fmul fast float %5630, 5.000000e+00
  %5632 = fadd fast float %5631, 0xC1EFBF8940000000
  %5633 = fptosi float %5632 to i32
  %5634 = bitcast i32 %5633 to float
  %5635 = fmul fast float %5634, %4151
  %5636 = fmul fast float %5624, %5635
  %5637 = fmul fast float %5636, %4964
  %5638 = fmul fast float %5636, %4965
  %5639 = fmul fast float %5636, %4966
  %5640 = fadd fast float %5637, %5625
  %5641 = fadd fast float %5638, %5626
  %5642 = fadd fast float %5639, %5627
  %5643 = fmul fast float %5460, %4147
  %5644 = fmul fast float %5643, %5478
  %5645 = fmul fast float %5644, %5624
  %5646 = fmul fast float %5461, %4147
  %5647 = fmul fast float %5646, %5478
  %5648 = fmul fast float %5647, %5624
  %5649 = fmul fast float %5462, %4147
  %5650 = fmul fast float %5649, %5478
  %5651 = fmul fast float %5650, %5624
  %5652 = fadd fast float %5645, %5299
  %5653 = fadd fast float %5648, %5300
  %5654 = fadd fast float %5651, %5301
  %5655 = fmul fast float %5644, %5640
  %5656 = fmul fast float %5647, %5641
  %5657 = fmul fast float %5650, %5642
  %5658 = fadd fast float %5655, %5296
  %5659 = fadd fast float %5656, %5297
  %5660 = fadd fast float %5657, %5298
  br label %5374

; <label>:5661                                    ; preds = %5374
  br label %5662

; <label>:5662                                    ; preds = %5661, %5262
  %5663 = phi float [ %5264, %5262 ], [ %5375, %5661 ]
  %5664 = phi float [ %5265, %5262 ], [ %5376, %5661 ]
  %5665 = phi float [ %5266, %5262 ], [ %5377, %5661 ]
  %5666 = phi float [ %5267, %5262 ], [ %5378, %5661 ]
  %5667 = phi float [ %5268, %5262 ], [ %5379, %5661 ]
  %5668 = phi float [ %5269, %5262 ], [ %5380, %5661 ]
  %5669 = add i32 %5263, 1
  %5670 = icmp ugt i32 %5669, %5259
  br i1 %5670, label %5671, label %5262

; <label>:5671                                    ; preds = %5662
  br label %5672

; <label>:5672                                    ; preds = %5671, %5238, %5228
  %5673 = phi float [ %5229, %5228 ], [ %5229, %5238 ], [ %5663, %5671 ]
  %5674 = phi float [ %5230, %5228 ], [ %5230, %5238 ], [ %5664, %5671 ]
  %5675 = phi float [ %5231, %5228 ], [ %5231, %5238 ], [ %5665, %5671 ]
  %5676 = phi float [ %5232, %5228 ], [ %5232, %5238 ], [ %5666, %5671 ]
  %5677 = phi float [ %5233, %5228 ], [ %5233, %5238 ], [ %5667, %5671 ]
  %5678 = phi float [ %5234, %5228 ], [ %5234, %5238 ], [ %5668, %5671 ]
  %5679 = call float @dx.op.unary.f32(i32 24, float %4758)  ; Sqrt(value)
  %5680 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %5681 = call float @dx.op.unary.f32(i32 24, float %4760)  ; Sqrt(value)
  %5682 = fmul fast float %5679, %5676
  %5683 = fmul fast float %5680, %5677
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  br i1 %175, label %5686, label %5706

; <label>:5686                                    ; preds = %5672
  %5687 = fadd fast float %5678, %4153
  %5688 = fmul fast float %5687, %4154
  %5689 = fsub fast float 1.000000e+00, %4154
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = extractvalue %dx.types.CBufRet.f32 %5691, 3
  %5693 = fmul fast float %5692, %5690
  %5694 = fadd fast float %5693, %5688
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = fmul fast float %5696, %4971
  %5698 = fsub fast float %5694, %5697
  %5699 = fadd fast float %5683, %5682
  %5700 = fmul fast float %5685, %5699
  %5701 = extractvalue %dx.types.CBufRet.f32 %5691, 1
  %5702 = fsub fast float %5698, %5701
  %5703 = extractvalue %dx.types.CBufRet.f32 %5691, 2
  %5704 = fmul fast float %5702, %5703
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  br label %5722

; <label>:5706                                    ; preds = %5672
  %5707 = fmul fast float %5681, %5678
  %5708 = fmul fast float %5685, %5682
  %5709 = fmul fast float %5685, %5683
  %5710 = fmul fast float %5707, %5685
  %5711 = add i32 %33, 356
  %5712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5711, i32 undef)  ; BufferLoad(srv,index,wot)
  %5713 = extractvalue %dx.types.ResRet.i32 %5712, 0
  %5714 = and i32 %5713, 32
  %5715 = icmp eq i32 %5714, 0
  br i1 %5715, label %5722, label %5716

; <label>:5716                                    ; preds = %5706
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = fmul fast float %5718, 0x3FE99999A0000000
  %5720 = fadd fast float %5718, %5708
  %5721 = fadd fast float %5719, %5710
  br label %5722

; <label>:5722                                    ; preds = %5716, %5706, %5686
  %5723 = phi float [ %5700, %5686 ], [ %5720, %5716 ], [ %5708, %5706 ]
  %5724 = phi float [ %5705, %5686 ], [ %5709, %5716 ], [ %5709, %5706 ]
  %5725 = phi float [ 1.000000e+00, %5686 ], [ %5721, %5716 ], [ %5710, %5706 ]
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = fmul fast float %5727, %5674
  %5729 = fmul fast float %5727, %5675
  %5730 = fadd fast float %5674, %5673
  %5731 = select i1 %175, float %5730, float %5673
  %5732 = fmul float %5731, %5727
  %5733 = select i1 %175, float 0.000000e+00, float %5728
  %5734 = select i1 %175, float 0.000000e+00, float %5729
  %5735 = fmul fast float %5723, %5679
  %5736 = fmul fast float %5724, %5680
  %5737 = fmul fast float %5725, %5681
  %5738 = fadd fast float %5732, %5735
  %5739 = fadd fast float %5733, %5736
  %5740 = fadd fast float %5734, %5737
  %5741 = select i1 %175, float %5724, float %5739
  %5742 = select i1 %175, float %5725, float %5740
  %5743 = call float @dx.op.binary.f32(i32 36, float %5738, float 3.225500e+04)  ; FMin(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5741, float 3.225500e+04)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 36, float %5742, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5743)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5744)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5745)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !75}
!49 = !{!50, !73, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72}
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
!64 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !52, i8 2, i32 1, i8 1, i32 3, i8 3, !65}
!65 = !{i32 3, i32 1}
!66 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 7, i8 0, !57}
!67 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!68 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!69 = !{i32 3, i32 8}
!70 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 10, i8 0, !71}
!71 = !{i32 3, i32 13}
!72 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

