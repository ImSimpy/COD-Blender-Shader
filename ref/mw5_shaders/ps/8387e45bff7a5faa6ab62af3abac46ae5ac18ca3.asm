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
; shader hash: 7620849b701ff262fc3a248fecd0cf41
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
  %358 = add i32 %33, 520
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
  br i1 %411, label %870, label %412

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
  %516 = add i32 %33, 408
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
  %539 = add i32 %33, 488
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
  %737 = add i32 %33, 424
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
  %821 = add i32 %33, 440
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
  %857 = add i32 %33, 96
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = lshr i32 %859, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %866 = fmul fast float %864, %865
  %867 = fadd fast float %866, %861
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  br label %870

; <label>:870                                     ; preds = %853, %397
  %871 = phi float [ 0.000000e+00, %397 ], [ %807, %853 ]
  %872 = phi float [ 0.000000e+00, %397 ], [ %808, %853 ]
  %873 = phi float [ 0.000000e+00, %397 ], [ %726, %853 ]
  %874 = phi float [ 0.000000e+00, %397 ], [ %727, %853 ]
  %875 = phi float [ 0.000000e+00, %397 ], [ %728, %853 ]
  %876 = phi float [ 0.000000e+00, %397 ], [ %854, %853 ]
  %877 = phi float [ 0.000000e+00, %397 ], [ %855, %853 ]
  %878 = phi float [ 0.000000e+00, %397 ], [ %856, %853 ]
  %879 = phi float [ 0.000000e+00, %397 ], [ %712, %853 ]
  %880 = phi float [ 0.000000e+00, %397 ], [ 1.000000e+00, %853 ]
  %881 = phi float [ 0.000000e+00, %397 ], [ %806, %853 ]
  %882 = phi float [ 0.000000e+00, %397 ], [ %809, %853 ]
  %883 = phi float [ 0.000000e+00, %397 ], [ %869, %853 ]
  br i1 %348, label %1725, label %884

; <label>:884                                     ; preds = %870
  %885 = icmp ult i32 %403, 2
  %886 = add i32 %33, 40
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %33, 44
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = or i32 %891, %888
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %1725, label %894

; <label>:894                                     ; preds = %884
  %895 = and i32 %888, 262144
  %896 = icmp ne i32 %895, 0
  %897 = select i1 %896, float %37, float 1.000000e+00
  %898 = select i1 %896, float %38, float 0.000000e+00
  %899 = select i1 %896, float %39, float 0.000000e+00
  %900 = select i1 %896, float %40, float 1.000000e+00
  %901 = select i1 %896, float %41, float %58
  %902 = select i1 %896, float %42, float %59
  %903 = add i32 %33, 300
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = lshr i32 %905, 16
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = fmul fast float %907, 0x3F50624DE0000000
  %909 = add i32 %33, 104
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = lshr i32 %911, 16
  %913 = and i32 %912, 255
  %914 = lshr i32 %911, 24
  %915 = add i32 %33, 308
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %917, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = add i32 %33, 48
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 22
  %926 = shl nuw nsw i32 %925, 5
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = shl i32 %924, 4
  %929 = and i32 %928, 32752
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = lshr i32 %924, 7
  %932 = and i32 %931, 32752
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %936 = fmul fast float %935, 1.000000e+03
  %937 = fmul fast float %258, %936
  %938 = call float @dx.op.unary.f32(i32 22, float %937)  ; Frc(value)
  %939 = fadd fast float %938, %248
  %940 = fmul fast float %259, %936
  %941 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %942 = fadd fast float %941, %250
  %943 = fmul fast float %908, %936
  %944 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %945 = fmul fast float %944, 0x401921FB60000000
  %946 = fadd fast float %945, %927
  %947 = call float @dx.op.unary.f32(i32 13, float %946)  ; Sin(value)
  %948 = call float @dx.op.unary.f32(i32 12, float %946)  ; Cos(value)
  %949 = fsub fast float -0.000000e+00, %947
  %950 = fadd fast float %901, -5.000000e-01
  %951 = fadd fast float %902, -5.000000e-01
  %952 = fmul fast float %919, %950
  %953 = fmul fast float %921, %951
  %954 = fadd fast float %952, 5.000000e-01
  %955 = fadd fast float %953, 5.000000e-01
  %956 = fmul fast float %930, %954
  %957 = fmul fast float %933, %955
  %958 = fmul fast float %948, %956
  %959 = call float @dx.op.tertiary.f32(i32 46, float %949, float %957, float %958)  ; FMad(a,b,c)
  %960 = fmul fast float %947, %956
  %961 = call float @dx.op.tertiary.f32(i32 46, float %948, float %957, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %939, %959
  %963 = fadd fast float %942, %961
  %964 = icmp ugt i32 %913, 1
  %965 = icmp ugt i32 %911, 33554431
  %966 = or i1 %965, %964
  br i1 %966, label %967, label %992

; <label>:967                                     ; preds = %894
  %968 = add i32 %33, 244
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = lshr i32 %970, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = fmul fast float %935, %972
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = mul nuw nsw i32 %913, %914
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %974, %976
  %978 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %979 = fptoui float %978 to i32
  %980 = urem i32 %979, %913
  %981 = udiv i32 %979, %914
  %982 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %983 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %984 = uitofp i32 %980 to float
  %985 = uitofp i32 %981 to float
  %986 = fadd fast float %982, %984
  %987 = fadd fast float %983, %985
  %988 = uitofp i32 %913 to float
  %989 = uitofp i32 %914 to float
  %990 = fdiv fast float %986, %988
  %991 = fdiv fast float %987, %989
  br label %992

; <label>:992                                     ; preds = %967, %894
  %993 = phi float [ %990, %967 ], [ %962, %894 ]
  %994 = phi float [ %991, %967 ], [ %963, %894 ]
  %995 = and i32 %888, 16777216
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1106, label %997

; <label>:997                                     ; preds = %992
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = fadd fast float %999, %133
  %1003 = fadd fast float %1000, %134
  %1004 = fadd fast float %1001, %135
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = icmp eq i32 %34, 65535
  br i1 %1008, label %1103, label %1009

; <label>:1009                                    ; preds = %997
  %1010 = lshr i32 %34, 1
  %1011 = shl i32 %1010, 2
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %34, 1
  %1015 = icmp ne i32 %1014, 0
  %1016 = lshr i32 %1013, 16
  %1017 = and i32 %1013, 65535
  %1018 = select i1 %1015, i32 %1016, i32 %1017
  %1019 = icmp eq i32 %1018, 65535
  br i1 %1019, label %1099, label %1020

; <label>:1020                                    ; preds = %1009
  %1021 = mul nuw nsw i32 %1018, 40
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = add nuw nsw i32 %1021, 12
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = add nuw nsw i32 %1021, 24
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = add nuw nsw i32 %1021, 36
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = fsub fast float %1002, %1023
  %1040 = fsub fast float %1003, %1024
  %1041 = fsub fast float %1004, %1025
  %1042 = fmul fast float %1038, %1039
  %1043 = fmul fast float %1038, %1040
  %1044 = fmul fast float %1038, %1041
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fmul fast float %1048, %1028
  %1052 = fmul fast float %1049, %1029
  %1053 = fmul fast float %1050, %1030
  %1054 = shl i32 %34, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1058, %dx.types.Handle %30, float %1059, float %1060, float %1061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fmul fast float %1064, 1.023000e+03
  %1068 = fmul fast float %1065, 1.023000e+03
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = fsub fast float %1042, %1045
  %1076 = fsub fast float %1043, %1046
  %1077 = fsub fast float %1044, %1047
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fmul fast float %1076, 7.500000e-01
  %1080 = fmul fast float %1077, 7.500000e-01
  %1081 = fadd fast float %1045, 1.250000e-01
  %1082 = fadd fast float %1081, %1078
  %1083 = fadd fast float %1082, %1072
  %1084 = fadd fast float %1046, 1.250000e-01
  %1085 = fadd fast float %1084, %1079
  %1086 = fadd fast float %1085, %1073
  %1087 = fadd fast float %1047, 1.250000e-01
  %1088 = fadd fast float %1087, %1080
  %1089 = fadd fast float %1088, %1074
  %1090 = fmul fast float %1083, %1033
  %1091 = fmul fast float %1086, %1034
  %1092 = fmul fast float %1089, %1035
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1096, %dx.types.Handle %28, float %1090, float %1091, float %1092, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  br label %1099

; <label>:1099                                    ; preds = %1020, %1009
  %1100 = phi float [ %1098, %1020 ], [ -1.000000e+00, %1009 ]
  %1101 = fadd fast float %1100, %1007
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  br label %1103

; <label>:1103                                    ; preds = %1099, %997
  %1104 = phi float [ %1102, %1099 ], [ %1007, %997 ]
  %1105 = fmul fast float %1104, %400
  br label %1106

; <label>:1106                                    ; preds = %1103, %992
  %1107 = phi float [ %1105, %1103 ], [ %400, %992 ]
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 256
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1158, label %1112

; <label>:1112                                    ; preds = %1106
  %1113 = add i32 %33, 476
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = add i32 %1115, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1117, %dx.types.Handle %67, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = add i32 %33, 116
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = shl i32 %1122, 4
  %1124 = and i32 %1123, 32752
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = lshr i32 %1122, 7
  %1127 = and i32 %1126, 32752
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = fsub fast float 1.000000e+00, %1107
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1131 = bitcast float %1107 to i32
  %1132 = sitofp i32 %1131 to float
  %1133 = fadd fast float %1132, 0xC1CFBF8940000000
  %1134 = fmul fast float %1128, %1133
  %1135 = fadd fast float %1134, 0x41CFBF8940000000
  %1136 = fptosi float %1135 to i32
  %1137 = bitcast i32 %1136 to float
  %1138 = bitcast float %1130 to i32
  %1139 = sitofp i32 %1138 to float
  %1140 = fadd fast float %1139, 0xC1CFBF8940000000
  %1141 = fmul fast float %1140, %1128
  %1142 = fadd fast float %1141, 0x41CFBF8940000000
  %1143 = fptosi float %1142 to i32
  %1144 = bitcast i32 %1143 to float
  %1145 = fmul fast float %1137, %1125
  %1146 = fmul fast float %1144, %1125
  %1147 = fsub fast float %1130, %1145
  %1148 = fadd fast float %1146, %1130
  %1149 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = fsub fast float %1119, %1149
  %1152 = fsub fast float %1150, %1149
  %1153 = bitcast float %1152 to i32
  %1154 = sub nsw i32 2129859010, %1153
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1155, %1151
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1112, %1106
  %1159 = phi float [ %1157, %1112 ], [ %1107, %1106 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 128
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1180, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %33, 460
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %67, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 524288
  %1175 = icmp ne i32 %1174, 0
  %1176 = fcmp fast ogt float %1171, 0x3FE0101020000000
  %1177 = select i1 %1176, float 1.000000e+00, float 0.000000e+00
  %1178 = select i1 %1175, float %1177, float %1171
  %1179 = fmul fast float %1178, %1159
  br label %1180

; <label>:1180                                    ; preds = %1164, %1158
  %1181 = phi float [ %1179, %1164 ], [ %1159, %1158 ]
  %1182 = fcmp fast ult float %1181, 0x3F70101020000000
  br i1 %1182, label %1725, label %1183

; <label>:1183                                    ; preds = %1180
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 16
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1386, label %1188

; <label>:1188                                    ; preds = %1183
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %33, 412
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %66, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1201 = and i32 %1190, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = lshr i32 %1190, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1200, %1202
  %1207 = fadd fast float %1206, %1205
  %1208 = fmul fast float %1207, 0x3F70101000000000
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 512
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1221, label %1213

; <label>:1213                                    ; preds = %1188
  %1214 = add i32 %33, 492
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %67, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  br label %1221

; <label>:1221                                    ; preds = %1213, %1188
  %1222 = phi float [ %1220, %1213 ], [ 1.000000e+00, %1188 ]
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 33554432
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1333, label %1227

; <label>:1227                                    ; preds = %1221
  %1228 = add i32 %33, 240
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 65535
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1230, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = add i32 %33, 244
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 65535
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1256 = add i32 %33, 236
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 24
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = and i32 %1258, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1258, 8
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = lshr i32 %1258, 16
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = bitcast float %1197 to i32
  %1274 = ashr i32 %1273, 1
  %1275 = sub nsw i32 1597463174, %1274
  %1276 = bitcast i32 %1275 to float
  %1277 = fmul fast float %1197, 5.000000e-01
  %1278 = fmul fast float %1276, %1276
  %1279 = fmul fast float %1278, %1277
  %1280 = fsub fast float 1.500000e+00, %1279
  %1281 = fmul fast float %1276, %1197
  %1282 = fmul fast float %1281, %1280
  %1283 = bitcast float %1198 to i32
  %1284 = ashr i32 %1283, 1
  %1285 = sub nsw i32 1597463174, %1284
  %1286 = bitcast i32 %1285 to float
  %1287 = fmul fast float %1198, 5.000000e-01
  %1288 = fmul fast float %1286, %1286
  %1289 = fmul fast float %1288, %1287
  %1290 = fsub fast float 1.500000e+00, %1289
  %1291 = fmul fast float %1286, %1198
  %1292 = fmul fast float %1291, %1290
  %1293 = bitcast float %1199 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = sub nsw i32 1597463174, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1199, 5.000000e-01
  %1298 = fmul fast float %1296, %1296
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float 1.500000e+00, %1299
  %1301 = fmul fast float %1296, %1199
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float %1282, %1264
  %1304 = fsub fast float %1292, %1268
  %1305 = fsub fast float %1302, %1272
  %1306 = fmul fast float %1303, %1232
  %1307 = fmul fast float %1304, %1234
  %1308 = fmul fast float %1305, %1239
  %1309 = fadd fast float %1306, %1247
  %1310 = fadd fast float %1307, %1251
  %1311 = fadd fast float %1308, %1255
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1315 = fmul fast float %1312, %1312
  %1316 = fmul fast float %1313, %1313
  %1317 = fmul fast float %1314, %1314
  %1318 = fsub fast float %1315, %1197
  %1319 = fsub fast float %1316, %1198
  %1320 = fsub fast float %1317, %1199
  %1321 = fmul fast float %1318, %1222
  %1322 = fmul fast float %1319, %1222
  %1323 = fmul fast float %1320, %1222
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1322, %1198
  %1326 = fadd fast float %1323, %1199
  %1327 = fadd fast float %1244, %1208
  %1328 = fsub fast float %1327, %1261
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fsub fast float %1329, %1208
  %1331 = fmul fast float %1330, %1222
  %1332 = fadd fast float %1331, %1208
  br label %1386

; <label>:1333                                    ; preds = %1221
  %1334 = and i32 %1224, 134217728
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1370, label %1336

; <label>:1336                                    ; preds = %1333
  %1337 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fadd fast float %1338, -5.000000e-01
  %1342 = fadd fast float %1339, -5.000000e-01
  %1343 = fmul fast float %1340, %1222
  %1344 = fmul fast float %1341, %1222
  %1345 = fmul fast float %1342, %1222
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = fadd fast float %1344, 5.000000e-01
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1352 = fmul fast float %1346, 2.000000e+00
  %1353 = fsub fast float 1.000000e+00, %1352
  %1354 = fmul fast float %1353, %1349
  %1355 = fadd fast float %1354, %1352
  %1356 = fmul fast float %1355, %1349
  %1357 = fmul fast float %1347, 2.000000e+00
  %1358 = fsub fast float 1.000000e+00, %1357
  %1359 = fmul fast float %1358, %1350
  %1360 = fadd fast float %1359, %1357
  %1361 = fmul fast float %1360, %1350
  %1362 = fmul fast float %1348, 2.000000e+00
  %1363 = fsub fast float 1.000000e+00, %1362
  %1364 = fmul fast float %1363, %1351
  %1365 = fadd fast float %1364, %1362
  %1366 = fmul fast float %1365, %1351
  %1367 = fmul fast float %1356, %1356
  %1368 = fmul fast float %1361, %1361
  %1369 = fmul fast float %1366, %1366
  br label %1386

; <label>:1370                                    ; preds = %1333
  %1371 = fmul fast float %235, %235
  %1372 = fmul fast float %239, %239
  %1373 = fmul fast float %243, %243
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fmul fast float %1222, %1374
  %1378 = fmul fast float %1222, %1375
  %1379 = fmul fast float %1222, %1376
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fmul fast float %1380, %1197
  %1384 = fmul fast float %1381, %1198
  %1385 = fmul fast float %1382, %1199
  br label %1386

; <label>:1386                                    ; preds = %1370, %1336, %1227, %1183
  %1387 = phi float [ %1332, %1227 ], [ %1208, %1336 ], [ %1208, %1370 ], [ 0x3FA23C0BE0000000, %1183 ]
  %1388 = phi float [ %1324, %1227 ], [ %1367, %1336 ], [ %1383, %1370 ], [ 1.000000e+00, %1183 ]
  %1389 = phi float [ %1325, %1227 ], [ %1368, %1336 ], [ %1384, %1370 ], [ 1.000000e+00, %1183 ]
  %1390 = phi float [ %1326, %1227 ], [ %1369, %1336 ], [ %1385, %1370 ], [ 1.000000e+00, %1183 ]
  %1391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.i32 %1391, 1
  %1393 = and i32 %1392, 1
  %1394 = icmp ne i32 %1393, 0
  %1395 = add i32 %33, 356
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp ne i32 %1398, 0
  %1400 = and i1 %1394, %1399
  %1401 = select i1 %1400, float 1.000000e+00, float %1388
  %1402 = select i1 %1400, float 0x3FD3333340000000, float %1389
  %1403 = select i1 %1400, float 0x3FD3333340000000, float %1390
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 32
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1480, label %1408

; <label>:1408                                    ; preds = %1386
  %1409 = add i32 %33, 108
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %33, 428
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = add i32 %1414, 0
  %1416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1416, %dx.types.Handle %66, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.ResRet.f32 %1417, 3
  %1422 = and i32 %1411, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = lshr i32 %1411, 8
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = lshr i32 %1411, 16
  %1428 = and i32 %1427, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1429, 0x3F70101000000000
  %1431 = fmul fast float %1418, %1423
  %1432 = fadd fast float %1431, %1426
  %1433 = fmul fast float %1432, 0x3F70101000000000
  %1434 = fadd fast float %1419, -5.000000e-01
  %1435 = fadd fast float %1421, -5.000000e-01
  %1436 = fmul fast float %1434, %1430
  %1437 = fmul fast float %1435, %1430
  %1438 = fadd fast float %1436, 5.000000e-01
  %1439 = fadd fast float %1437, 5.000000e-01
  %1440 = fmul fast float %1438, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fmul fast float %1439, 2.000000e+00
  %1443 = fadd fast float %1442, -1.000000e+00
  %1444 = fadd fast float %1441, %1443
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = fsub fast float %1441, %1443
  %1447 = fmul fast float %1446, 5.000000e-01
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float 1.000000e+00, %1448
  %1450 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1451 = fsub fast float %1449, %1450
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1447, float %1451, float %1445, float %1447, float %1451)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = call float @dx.op.unary.f32(i32 25, float %1452)  ; Rsqrt(value)
  %1454 = fmul fast float %1445, %1453
  %1455 = fmul fast float %1447, %1453
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 67108864
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1476, label %1460

; <label>:1460                                    ; preds = %1408
  %1461 = add i32 %33, 296
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 65535
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 65535
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = lshr i32 %1463, 16
  %1471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1470)  ; LegacyF16ToF32(value)
  %1472 = fsub fast float %1433, %1471
  %1473 = fmul fast float %1472, %1465
  %1474 = fadd fast float %1473, %1469
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  br label %1476

; <label>:1476                                    ; preds = %1460, %1408
  %1477 = phi float [ %1475, %1460 ], [ %1433, %1408 ]
  %1478 = call float @dx.op.dot2.f32(i32 54, float %1454, float %1455, float %897, float %898)  ; Dot2(ax,ay,bx,by)
  %1479 = call float @dx.op.dot2.f32(i32 54, float %1454, float %1455, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  br label %1480

; <label>:1480                                    ; preds = %1476, %1386
  %1481 = phi float [ %1477, %1476 ], [ 0x3FD6666660000000, %1386 ]
  %1482 = phi float [ %1478, %1476 ], [ 0.000000e+00, %1386 ]
  %1483 = phi float [ %1479, %1476 ], [ 0.000000e+00, %1386 ]
  %1484 = phi float [ %1420, %1476 ], [ 1.000000e+00, %1386 ]
  %1485 = add i32 %33, 176
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = lshr i32 %1487, 22
  %1489 = shl nuw nsw i32 %1488, 5
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 64
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1528, label %1495

; <label>:1495                                    ; preds = %1480
  %1496 = add i32 %33, 444
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 131072
  %1504 = icmp eq i32 %1503, 0
  %1505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %66, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = fmul fast float %1506, %223
  %1510 = fmul fast float %1507, %226
  %1511 = fmul fast float %1508, %229
  br i1 %1504, label %1518, label %1512

; <label>:1512                                    ; preds = %1495
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = fmul fast float %1514, %1509
  %1516 = fmul fast float %1514, %1510
  %1517 = fmul fast float %1514, %1511
  br label %1518

; <label>:1518                                    ; preds = %1512, %1495
  %1519 = phi float [ %1515, %1512 ], [ %1509, %1495 ]
  %1520 = phi float [ %1516, %1512 ], [ %1510, %1495 ]
  %1521 = phi float [ %1517, %1512 ], [ %1511, %1495 ]
  %1522 = fmul fast float %1519, %1490
  %1523 = select i1 %175, float %1522, float %1519
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1523, float %1520, float %1521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = select i1 %175, float 0.000000e+00, float %1519
  %1526 = select i1 %175, float %1524, float %1520
  %1527 = select i1 %175, float 0.000000e+00, float %1521
  br label %1528

; <label>:1528                                    ; preds = %1518, %1480
  %1529 = phi float [ %1525, %1518 ], [ 0.000000e+00, %1480 ]
  %1530 = phi float [ %1526, %1518 ], [ 0.000000e+00, %1480 ]
  %1531 = phi float [ %1527, %1518 ], [ 0.000000e+00, %1480 ]
  %1532 = add i32 %33, 112
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = lshr i32 %1534, 8
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1402, float %1403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = fmul fast float %1539, %1540
  %1542 = fadd fast float %1541, %1536
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  br i1 %885, label %1545, label %1553

; <label>:1545                                    ; preds = %1528
  %1546 = fsub fast float 1.000000e+00, %1181
  %1547 = fmul fast float %1546, %873
  %1548 = fmul fast float %1546, %874
  %1549 = fmul fast float %1546, %875
  %1550 = fmul fast float %1546, %876
  %1551 = fmul fast float %1546, %877
  %1552 = fmul fast float %1546, %878
  br label %1553

; <label>:1553                                    ; preds = %1545, %1528
  %1554 = phi float [ %1547, %1545 ], [ %873, %1528 ]
  %1555 = phi float [ %1548, %1545 ], [ %874, %1528 ]
  %1556 = phi float [ %1549, %1545 ], [ %875, %1528 ]
  %1557 = phi float [ %1550, %1545 ], [ %876, %1528 ]
  %1558 = phi float [ %1551, %1545 ], [ %877, %1528 ]
  %1559 = phi float [ %1552, %1545 ], [ %878, %1528 ]
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 3
  %1563 = icmp eq i32 %1562, 3
  br i1 %1563, label %1642, label %1564

; <label>:1564                                    ; preds = %1553
  %1565 = and i32 %1561, 16
  %1566 = icmp ne i32 %1565, 0
  %1567 = select i1 %1566, float %1181, float 0.000000e+00
  %1568 = icmp eq i32 %1562, 0
  br i1 %1568, label %1569, label %1597

; <label>:1569                                    ; preds = %1564
  %1570 = and i32 %1561, 64
  %1571 = icmp ne i32 %1570, 0
  %1572 = select i1 %1571, float %1181, float 0.000000e+00
  %1573 = fsub fast float %1401, %1554
  %1574 = fsub fast float %1402, %1555
  %1575 = fsub fast float %1403, %1556
  %1576 = fmul fast float %1567, %1573
  %1577 = fmul fast float %1567, %1574
  %1578 = fmul fast float %1567, %1575
  %1579 = fadd fast float %1576, %1554
  %1580 = fadd fast float %1577, %1555
  %1581 = fadd fast float %1578, %1556
  %1582 = fsub fast float %1387, %879
  %1583 = fmul fast float %1567, %1582
  %1584 = fadd fast float %1583, %879
  %1585 = fsub fast float %1529, %1557
  %1586 = fsub fast float %1530, %1558
  %1587 = fsub fast float %1531, %1559
  %1588 = fmul fast float %1572, %1585
  %1589 = fmul fast float %1572, %1586
  %1590 = fmul fast float %1572, %1587
  %1591 = fadd fast float %1588, %1557
  %1592 = fadd fast float %1589, %1558
  %1593 = fadd fast float %1590, %1559
  %1594 = fsub fast float %1544, %883
  %1595 = fmul fast float %1567, %1594
  %1596 = fadd fast float %1595, %883
  br label %1642

; <label>:1597                                    ; preds = %1564
  %1598 = icmp eq i32 %1562, 1
  br i1 %1598, label %1599, label %1612

; <label>:1599                                    ; preds = %1597
  %1600 = fadd fast float %1401, -1.000000e+00
  %1601 = fadd fast float %1402, -1.000000e+00
  %1602 = fadd fast float %1403, -1.000000e+00
  %1603 = fmul fast float %1567, %1600
  %1604 = fmul fast float %1567, %1601
  %1605 = fmul fast float %1567, %1602
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fmul fast float %1606, %1554
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1608, %1556
  br label %1642

; <label>:1612                                    ; preds = %1597
  %1613 = icmp eq i32 %1562, 2
  br i1 %1613, label %1614, label %1642

; <label>:1614                                    ; preds = %1612
  %1615 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1616 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fadd fast float %1616, -5.000000e-01
  %1620 = fadd fast float %1617, -5.000000e-01
  %1621 = fmul fast float %1618, %1567
  %1622 = fmul fast float %1619, %1567
  %1623 = fmul fast float %1620, %1567
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fadd fast float %1623, 5.000000e-01
  %1627 = fmul fast float %1624, 2.000000e+00
  %1628 = fsub fast float 1.000000e+00, %1627
  %1629 = fmul fast float %1628, %1554
  %1630 = fadd fast float %1629, %1627
  %1631 = fmul fast float %1630, %1554
  %1632 = fmul fast float %1625, 2.000000e+00
  %1633 = fsub fast float 1.000000e+00, %1632
  %1634 = fmul fast float %1633, %1555
  %1635 = fadd fast float %1634, %1632
  %1636 = fmul fast float %1635, %1555
  %1637 = fmul fast float %1626, 2.000000e+00
  %1638 = fsub fast float 1.000000e+00, %1637
  %1639 = fmul fast float %1638, %1556
  %1640 = fadd fast float %1639, %1637
  %1641 = fmul fast float %1640, %1556
  br label %1642

; <label>:1642                                    ; preds = %1614, %1612, %1599, %1569, %1553
  %1643 = phi float [ %1554, %1553 ], [ %1631, %1614 ], [ %1554, %1612 ], [ %1609, %1599 ], [ %1579, %1569 ]
  %1644 = phi float [ %1555, %1553 ], [ %1636, %1614 ], [ %1555, %1612 ], [ %1610, %1599 ], [ %1580, %1569 ]
  %1645 = phi float [ %1556, %1553 ], [ %1641, %1614 ], [ %1556, %1612 ], [ %1611, %1599 ], [ %1581, %1569 ]
  %1646 = phi float [ %1557, %1553 ], [ %1557, %1614 ], [ %1557, %1612 ], [ %1557, %1599 ], [ %1591, %1569 ]
  %1647 = phi float [ %1558, %1553 ], [ %1558, %1614 ], [ %1558, %1612 ], [ %1558, %1599 ], [ %1592, %1569 ]
  %1648 = phi float [ %1559, %1553 ], [ %1559, %1614 ], [ %1559, %1612 ], [ %1559, %1599 ], [ %1593, %1569 ]
  %1649 = phi float [ %879, %1553 ], [ %879, %1614 ], [ %879, %1612 ], [ %879, %1599 ], [ %1584, %1569 ]
  %1650 = phi float [ %883, %1553 ], [ %883, %1614 ], [ %883, %1612 ], [ %883, %1599 ], [ %1596, %1569 ]
  %1651 = and i32 %1561, 12
  %1652 = icmp eq i32 %1651, 12
  br i1 %1652, label %1725, label %1653

; <label>:1653                                    ; preds = %1642
  %1654 = and i32 %1561, 2097184
  %1655 = icmp eq i32 %1654, 2097184
  %1656 = select i1 %1655, float %1181, float 0.000000e+00
  %1657 = and i32 %1561, 4194336
  %1658 = icmp eq i32 %1657, 4194336
  %1659 = select i1 %1658, float %1181, float 0.000000e+00
  %1660 = and i32 %1561, 8388640
  %1661 = icmp eq i32 %1660, 8388640
  %1662 = select i1 %1661, float %1181, float 0.000000e+00
  %1663 = icmp eq i32 %1651, 0
  br i1 %1663, label %1664, label %1677

; <label>:1664                                    ; preds = %1653
  %1665 = fsub fast float %1482, %871
  %1666 = fsub fast float %1483, %872
  %1667 = fmul fast float %1656, %1665
  %1668 = fmul fast float %1656, %1666
  %1669 = fadd fast float %1667, %871
  %1670 = fadd fast float %1668, %872
  %1671 = fsub fast float %1484, %882
  %1672 = fmul fast float %1659, %1671
  %1673 = fadd fast float %1672, %882
  %1674 = fsub fast float %1481, %881
  %1675 = fmul fast float %1662, %1674
  %1676 = fadd fast float %1675, %881
  br label %1725

; <label>:1677                                    ; preds = %1653
  %1678 = icmp eq i32 %1651, 4
  br i1 %1678, label %1679, label %1711

; <label>:1679                                    ; preds = %1677
  %1680 = fmul fast float %1656, %1482
  %1681 = fmul fast float %1656, %1483
  %1682 = fadd fast float %1680, %871
  %1683 = fadd fast float %1681, %872
  %1684 = call float @dx.op.binary.f32(i32 36, float %882, float %1484)  ; FMin(a,b)
  %1685 = fsub fast float %1684, %882
  %1686 = fmul fast float %1685, %1659
  %1687 = fadd fast float %1686, %882
  %1688 = fadd fast float %1481, %881
  %1689 = fmul fast float %1688, 0x3FF337FAE0000000
  %1690 = fmul fast float %881, %881
  %1691 = fmul fast float %1481, %1481
  %1692 = fadd fast float %1691, %1690
  %1693 = fmul fast float %1692, 0x3FE5152B00000000
  %1694 = fmul fast float %881, 0xBFCC1F85E0000000
  %1695 = fmul fast float %1694, %1481
  %1696 = fadd fast float %1695, 0xBFE1363700000000
  %1697 = fadd fast float %1696, %1689
  %1698 = fsub fast float %1697, %1693
  %1699 = fmul fast float %1688, 0x3FBA6F0D00000000
  %1700 = fmul fast float %1692, 0x3FD0432880000000
  %1701 = fmul fast float %881, 0xBFEF110800000000
  %1702 = fmul fast float %1701, %1481
  %1703 = fadd fast float %1702, 1.000000e+00
  %1704 = fsub fast float %1703, %1699
  %1705 = fadd fast float %1704, %1700
  %1706 = fdiv fast float %1698, %1705
  %1707 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1708 = fsub fast float %1707, %881
  %1709 = fmul fast float %1708, %1662
  %1710 = fadd fast float %1709, %881
  br label %1725

; <label>:1711                                    ; preds = %1677
  %1712 = icmp eq i32 %1651, 8
  br i1 %1712, label %1713, label %1725

; <label>:1713                                    ; preds = %1711
  %1714 = fmul fast float %1656, %1482
  %1715 = fmul fast float %1656, %1483
  %1716 = fadd fast float %1714, %871
  %1717 = fadd fast float %1715, %872
  %1718 = call float @dx.op.binary.f32(i32 36, float %882, float %1484)  ; FMin(a,b)
  %1719 = fsub fast float %1718, %882
  %1720 = fmul fast float %1719, %1659
  %1721 = fadd fast float %1720, %882
  %1722 = fsub fast float %1481, %881
  %1723 = fmul fast float %1662, %1722
  %1724 = fadd fast float %1723, %881
  br label %1725

; <label>:1725                                    ; preds = %1713, %1711, %1679, %1664, %1642, %1180, %884, %870
  %1726 = phi float [ %871, %1642 ], [ %871, %1180 ], [ %871, %870 ], [ %1716, %1713 ], [ %871, %1711 ], [ %1682, %1679 ], [ %1669, %1664 ], [ %871, %884 ]
  %1727 = phi float [ %872, %1642 ], [ %872, %1180 ], [ %872, %870 ], [ %1717, %1713 ], [ %872, %1711 ], [ %1683, %1679 ], [ %1670, %1664 ], [ %872, %884 ]
  %1728 = phi float [ %1643, %1642 ], [ %873, %1180 ], [ %873, %870 ], [ %1643, %1713 ], [ %1643, %1711 ], [ %1643, %1679 ], [ %1643, %1664 ], [ %873, %884 ]
  %1729 = phi float [ %1644, %1642 ], [ %874, %1180 ], [ %874, %870 ], [ %1644, %1713 ], [ %1644, %1711 ], [ %1644, %1679 ], [ %1644, %1664 ], [ %874, %884 ]
  %1730 = phi float [ %1645, %1642 ], [ %875, %1180 ], [ %875, %870 ], [ %1645, %1713 ], [ %1645, %1711 ], [ %1645, %1679 ], [ %1645, %1664 ], [ %875, %884 ]
  %1731 = phi float [ %1646, %1642 ], [ %876, %1180 ], [ %876, %870 ], [ %1646, %1713 ], [ %1646, %1711 ], [ %1646, %1679 ], [ %1646, %1664 ], [ %876, %884 ]
  %1732 = phi float [ %1647, %1642 ], [ %877, %1180 ], [ %877, %870 ], [ %1647, %1713 ], [ %1647, %1711 ], [ %1647, %1679 ], [ %1647, %1664 ], [ %877, %884 ]
  %1733 = phi float [ %1648, %1642 ], [ %878, %1180 ], [ %878, %870 ], [ %1648, %1713 ], [ %1648, %1711 ], [ %1648, %1679 ], [ %1648, %1664 ], [ %878, %884 ]
  %1734 = phi float [ %1649, %1642 ], [ %879, %1180 ], [ %879, %870 ], [ %1649, %1713 ], [ %1649, %1711 ], [ %1649, %1679 ], [ %1649, %1664 ], [ %879, %884 ]
  %1735 = phi float [ %881, %1642 ], [ %881, %1180 ], [ %881, %870 ], [ %1724, %1713 ], [ %881, %1711 ], [ %1710, %1679 ], [ %1676, %1664 ], [ %881, %884 ]
  %1736 = phi float [ %882, %1642 ], [ %882, %1180 ], [ %882, %870 ], [ %1721, %1713 ], [ %882, %1711 ], [ %1687, %1679 ], [ %1673, %1664 ], [ %882, %884 ]
  %1737 = phi float [ %1650, %1642 ], [ %883, %1180 ], [ %883, %870 ], [ %1650, %1713 ], [ %1650, %1711 ], [ %1650, %1679 ], [ %1650, %1664 ], [ %883, %884 ]
  br i1 %350, label %2579, label %1738

; <label>:1738                                    ; preds = %1725
  %1739 = icmp ult i32 %403, 3
  %1740 = add i32 %33, 56
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = add i32 %33, 60
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = or i32 %1745, %1742
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %2579, label %1748

; <label>:1748                                    ; preds = %1738
  %1749 = and i32 %1742, 262144
  %1750 = icmp ne i32 %1749, 0
  %1751 = select i1 %1750, float %37, float 1.000000e+00
  %1752 = select i1 %1750, float %38, float 0.000000e+00
  %1753 = select i1 %1750, float %39, float 0.000000e+00
  %1754 = select i1 %1750, float %40, float 1.000000e+00
  %1755 = select i1 %1750, float %41, float %58
  %1756 = select i1 %1750, float %42, float %59
  %1757 = add i32 %33, 316
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = lshr i32 %1759, 16
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = fmul fast float %1761, 0x3F50624DE0000000
  %1763 = add i32 %33, 120
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = lshr i32 %1765, 16
  %1767 = and i32 %1766, 255
  %1768 = lshr i32 %1765, 24
  %1769 = add i32 %33, 324
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 65535
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = lshr i32 %1771, 16
  %1775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1774)  ; LegacyF16ToF32(value)
  %1776 = add i32 %33, 64
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 22
  %1780 = shl nuw nsw i32 %1779, 5
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = shl i32 %1778, 4
  %1783 = and i32 %1782, 32752
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = lshr i32 %1778, 7
  %1786 = and i32 %1785, 32752
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = fmul fast float %1789, 1.000000e+03
  %1791 = fmul fast float %300, %1790
  %1792 = call float @dx.op.unary.f32(i32 22, float %1791)  ; Frc(value)
  %1793 = fadd fast float %1792, %290
  %1794 = fmul fast float %301, %1790
  %1795 = call float @dx.op.unary.f32(i32 22, float %1794)  ; Frc(value)
  %1796 = fadd fast float %1795, %292
  %1797 = fmul fast float %1762, %1790
  %1798 = call float @dx.op.unary.f32(i32 22, float %1797)  ; Frc(value)
  %1799 = fmul fast float %1798, 0x401921FB60000000
  %1800 = fadd fast float %1799, %1781
  %1801 = call float @dx.op.unary.f32(i32 13, float %1800)  ; Sin(value)
  %1802 = call float @dx.op.unary.f32(i32 12, float %1800)  ; Cos(value)
  %1803 = fsub fast float -0.000000e+00, %1801
  %1804 = fadd fast float %1755, -5.000000e-01
  %1805 = fadd fast float %1756, -5.000000e-01
  %1806 = fmul fast float %1773, %1804
  %1807 = fmul fast float %1775, %1805
  %1808 = fadd fast float %1806, 5.000000e-01
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fmul fast float %1784, %1808
  %1811 = fmul fast float %1787, %1809
  %1812 = fmul fast float %1802, %1810
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1811, float %1812)  ; FMad(a,b,c)
  %1814 = fmul fast float %1801, %1810
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1802, float %1811, float %1814)  ; FMad(a,b,c)
  %1816 = fadd fast float %1793, %1813
  %1817 = fadd fast float %1796, %1815
  %1818 = icmp ugt i32 %1767, 1
  %1819 = icmp ugt i32 %1765, 33554431
  %1820 = or i1 %1819, %1818
  br i1 %1820, label %1821, label %1846

; <label>:1821                                    ; preds = %1748
  %1822 = add i32 %33, 260
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = lshr i32 %1824, 16
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = fmul fast float %1789, %1826
  %1828 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1829 = mul nuw nsw i32 %1767, %1768
  %1830 = uitofp i32 %1829 to float
  %1831 = fmul fast float %1828, %1830
  %1832 = call float @dx.op.unary.f32(i32 27, float %1831)  ; Round_ni(value)
  %1833 = fptoui float %1832 to i32
  %1834 = urem i32 %1833, %1767
  %1835 = udiv i32 %1833, %1768
  %1836 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1837 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1838 = uitofp i32 %1834 to float
  %1839 = uitofp i32 %1835 to float
  %1840 = fadd fast float %1836, %1838
  %1841 = fadd fast float %1837, %1839
  %1842 = uitofp i32 %1767 to float
  %1843 = uitofp i32 %1768 to float
  %1844 = fdiv fast float %1840, %1842
  %1845 = fdiv fast float %1841, %1843
  br label %1846

; <label>:1846                                    ; preds = %1821, %1748
  %1847 = phi float [ %1844, %1821 ], [ %1816, %1748 ]
  %1848 = phi float [ %1845, %1821 ], [ %1817, %1748 ]
  %1849 = and i32 %1742, 16777216
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1960, label %1851

; <label>:1851                                    ; preds = %1846
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.CBufRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.CBufRet.f32 %1852, 2
  %1856 = fadd fast float %1853, %133
  %1857 = fadd fast float %1854, %134
  %1858 = fadd fast float %1855, %135
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1862 = icmp eq i32 %34, 65535
  br i1 %1862, label %1957, label %1863

; <label>:1863                                    ; preds = %1851
  %1864 = lshr i32 %34, 1
  %1865 = shl i32 %1864, 2
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %34, 1
  %1869 = icmp ne i32 %1868, 0
  %1870 = lshr i32 %1867, 16
  %1871 = and i32 %1867, 65535
  %1872 = select i1 %1869, i32 %1870, i32 %1871
  %1873 = icmp eq i32 %1872, 65535
  br i1 %1873, label %1953, label %1874

; <label>:1874                                    ; preds = %1863
  %1875 = mul nuw nsw i32 %1872, 40
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = add nuw nsw i32 %1875, 12
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = add nuw nsw i32 %1875, 24
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = add nuw nsw i32 %1875, 36
  %1891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = fsub fast float %1856, %1877
  %1894 = fsub fast float %1857, %1878
  %1895 = fsub fast float %1858, %1879
  %1896 = fmul fast float %1892, %1893
  %1897 = fmul fast float %1892, %1894
  %1898 = fmul fast float %1892, %1895
  %1899 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1900 = call float @dx.op.unary.f32(i32 27, float %1897)  ; Round_ni(value)
  %1901 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fadd fast float %1900, 5.000000e-01
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fmul fast float %1902, %1882
  %1906 = fmul fast float %1903, %1883
  %1907 = fmul fast float %1904, %1884
  %1908 = shl i32 %34, 2
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = add i32 %1910, 0
  %1912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1913 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1914 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1907)  ; Frc(value)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1912, %dx.types.Handle %30, float %1913, float %1914, float %1915, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = fmul fast float %1917, 1.023000e+03
  %1921 = fmul fast float %1918, 1.023000e+03
  %1922 = fmul fast float %1919, 1.023000e+03
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = call float @dx.op.unary.f32(i32 27, float %1924)  ; Round_ni(value)
  %1928 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1929 = fsub fast float %1896, %1899
  %1930 = fsub fast float %1897, %1900
  %1931 = fsub fast float %1898, %1901
  %1932 = fmul fast float %1929, 7.500000e-01
  %1933 = fmul fast float %1930, 7.500000e-01
  %1934 = fmul fast float %1931, 7.500000e-01
  %1935 = fadd fast float %1899, 1.250000e-01
  %1936 = fadd fast float %1935, %1932
  %1937 = fadd fast float %1936, %1926
  %1938 = fadd fast float %1900, 1.250000e-01
  %1939 = fadd fast float %1938, %1933
  %1940 = fadd fast float %1939, %1927
  %1941 = fadd fast float %1901, 1.250000e-01
  %1942 = fadd fast float %1941, %1934
  %1943 = fadd fast float %1942, %1928
  %1944 = fmul fast float %1937, %1887
  %1945 = fmul fast float %1940, %1888
  %1946 = fmul fast float %1943, %1889
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = add i32 %1948, 0
  %1950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1950, %dx.types.Handle %28, float %1944, float %1945, float %1946, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  br label %1953

; <label>:1953                                    ; preds = %1874, %1863
  %1954 = phi float [ %1952, %1874 ], [ -1.000000e+00, %1863 ]
  %1955 = fadd fast float %1954, %1861
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  br label %1957

; <label>:1957                                    ; preds = %1953, %1851
  %1958 = phi float [ %1956, %1953 ], [ %1861, %1851 ]
  %1959 = fmul fast float %1958, %399
  br label %1960

; <label>:1960                                    ; preds = %1957, %1846
  %1961 = phi float [ %1959, %1957 ], [ %399, %1846 ]
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %1963, 256
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %2012, label %1966

; <label>:1966                                    ; preds = %1960
  %1967 = add i32 %33, 480
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %67, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = add i32 %33, 132
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = shl i32 %1976, 4
  %1978 = and i32 %1977, 32752
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = lshr i32 %1976, 7
  %1981 = and i32 %1980, 32752
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = fsub fast float 1.000000e+00, %1961
  %1984 = call float @dx.op.binary.f32(i32 35, float %1983, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1985 = bitcast float %1961 to i32
  %1986 = sitofp i32 %1985 to float
  %1987 = fadd fast float %1986, 0xC1CFBF8940000000
  %1988 = fmul fast float %1982, %1987
  %1989 = fadd fast float %1988, 0x41CFBF8940000000
  %1990 = fptosi float %1989 to i32
  %1991 = bitcast i32 %1990 to float
  %1992 = bitcast float %1984 to i32
  %1993 = sitofp i32 %1992 to float
  %1994 = fadd fast float %1993, 0xC1CFBF8940000000
  %1995 = fmul fast float %1994, %1982
  %1996 = fadd fast float %1995, 0x41CFBF8940000000
  %1997 = fptosi float %1996 to i32
  %1998 = bitcast i32 %1997 to float
  %1999 = fmul fast float %1991, %1979
  %2000 = fmul fast float %1998, %1979
  %2001 = fsub fast float %1984, %1999
  %2002 = fadd fast float %2000, %1984
  %2003 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2004 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2005 = fsub fast float %1973, %2003
  %2006 = fsub fast float %2004, %2003
  %2007 = bitcast float %2006 to i32
  %2008 = sub nsw i32 2129859010, %2007
  %2009 = bitcast i32 %2008 to float
  %2010 = fmul fast float %2009, %2005
  %2011 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  br label %2012

; <label>:2012                                    ; preds = %1966, %1960
  %2013 = phi float [ %2011, %1966 ], [ %1961, %1960 ]
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 128
  %2017 = icmp eq i32 %2016, 0
  br i1 %2017, label %2034, label %2018

; <label>:2018                                    ; preds = %2012
  %2019 = add i32 %33, 464
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = add i32 %2021, 0
  %2023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2023, %dx.types.Handle %67, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 524288
  %2029 = icmp ne i32 %2028, 0
  %2030 = fcmp fast ogt float %2025, 0x3FE0101020000000
  %2031 = select i1 %2030, float 1.000000e+00, float 0.000000e+00
  %2032 = select i1 %2029, float %2031, float %2025
  %2033 = fmul fast float %2032, %2013
  br label %2034

; <label>:2034                                    ; preds = %2018, %2012
  %2035 = phi float [ %2033, %2018 ], [ %2013, %2012 ]
  %2036 = fcmp fast ult float %2035, 0x3F70101020000000
  br i1 %2036, label %2579, label %2037

; <label>:2037                                    ; preds = %2034
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 16
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2240, label %2042

; <label>:2042                                    ; preds = %2037
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %33, 416
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2047, 0
  %2049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2049, %dx.types.Handle %66, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.ResRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.ResRet.f32 %2050, 2
  %2054 = extractvalue %dx.types.ResRet.f32 %2050, 3
  %2055 = and i32 %2044, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = lshr i32 %2044, 8
  %2058 = and i32 %2057, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2054, %2056
  %2061 = fadd fast float %2060, %2059
  %2062 = fmul fast float %2061, 0x3F70101000000000
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 512
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2075, label %2067

; <label>:2067                                    ; preds = %2042
  %2068 = add i32 %33, 496
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = add i32 %2070, 0
  %2072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2072, %dx.types.Handle %67, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  br label %2075

; <label>:2075                                    ; preds = %2067, %2042
  %2076 = phi float [ %2074, %2067 ], [ 1.000000e+00, %2042 ]
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = and i32 %2078, 33554432
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2187, label %2081

; <label>:2081                                    ; preds = %2075
  %2082 = add i32 %33, 256
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 65535
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = lshr i32 %2084, 16
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = add i32 %33, 260
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 65535
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = lshr i32 %2095, 24
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = and i32 %2095, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = lshr i32 %2095, 8
  %2103 = and i32 %2102, 255
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101020000000
  %2106 = lshr i32 %2095, 16
  %2107 = and i32 %2106, 255
  %2108 = uitofp i32 %2107 to float
  %2109 = fmul fast float %2108, 0x3F70101020000000
  %2110 = add i32 %33, 252
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = lshr i32 %2112, 24
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = and i32 %2112, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = lshr i32 %2112, 8
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = lshr i32 %2112, 16
  %2124 = and i32 %2123, 255
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2125, 0x3F70101020000000
  %2127 = bitcast float %2051 to i32
  %2128 = ashr i32 %2127, 1
  %2129 = sub nsw i32 1597463174, %2128
  %2130 = bitcast i32 %2129 to float
  %2131 = fmul fast float %2051, 5.000000e-01
  %2132 = fmul fast float %2130, %2130
  %2133 = fmul fast float %2132, %2131
  %2134 = fsub fast float 1.500000e+00, %2133
  %2135 = fmul fast float %2130, %2051
  %2136 = fmul fast float %2135, %2134
  %2137 = bitcast float %2052 to i32
  %2138 = ashr i32 %2137, 1
  %2139 = sub nsw i32 1597463174, %2138
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2052, 5.000000e-01
  %2142 = fmul fast float %2140, %2140
  %2143 = fmul fast float %2142, %2141
  %2144 = fsub fast float 1.500000e+00, %2143
  %2145 = fmul fast float %2140, %2052
  %2146 = fmul fast float %2145, %2144
  %2147 = bitcast float %2053 to i32
  %2148 = ashr i32 %2147, 1
  %2149 = sub nsw i32 1597463174, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2053, 5.000000e-01
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float 1.500000e+00, %2153
  %2155 = fmul fast float %2150, %2053
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float %2136, %2118
  %2158 = fsub fast float %2146, %2122
  %2159 = fsub fast float %2156, %2126
  %2160 = fmul fast float %2157, %2086
  %2161 = fmul fast float %2158, %2088
  %2162 = fmul fast float %2159, %2093
  %2163 = fadd fast float %2160, %2101
  %2164 = fadd fast float %2161, %2105
  %2165 = fadd fast float %2162, %2109
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2168 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2169 = fmul fast float %2166, %2166
  %2170 = fmul fast float %2167, %2167
  %2171 = fmul fast float %2168, %2168
  %2172 = fsub fast float %2169, %2051
  %2173 = fsub fast float %2170, %2052
  %2174 = fsub fast float %2171, %2053
  %2175 = fmul fast float %2172, %2076
  %2176 = fmul fast float %2173, %2076
  %2177 = fmul fast float %2174, %2076
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2176, %2052
  %2180 = fadd fast float %2177, %2053
  %2181 = fadd fast float %2098, %2062
  %2182 = fsub fast float %2181, %2115
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float %2183, %2062
  %2185 = fmul fast float %2184, %2076
  %2186 = fadd fast float %2185, %2062
  br label %2240

; <label>:2187                                    ; preds = %2075
  %2188 = and i32 %2078, 134217728
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2224, label %2190

; <label>:2190                                    ; preds = %2187
  %2191 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2192 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fadd fast float %2192, -5.000000e-01
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fmul fast float %2194, %2076
  %2198 = fmul fast float %2195, %2076
  %2199 = fmul fast float %2196, %2076
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = fadd fast float %2198, 5.000000e-01
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2206 = fmul fast float %2200, 2.000000e+00
  %2207 = fsub fast float 1.000000e+00, %2206
  %2208 = fmul fast float %2207, %2203
  %2209 = fadd fast float %2208, %2206
  %2210 = fmul fast float %2209, %2203
  %2211 = fmul fast float %2201, 2.000000e+00
  %2212 = fsub fast float 1.000000e+00, %2211
  %2213 = fmul fast float %2212, %2204
  %2214 = fadd fast float %2213, %2211
  %2215 = fmul fast float %2214, %2204
  %2216 = fmul fast float %2202, 2.000000e+00
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = fmul fast float %2217, %2205
  %2219 = fadd fast float %2218, %2216
  %2220 = fmul fast float %2219, %2205
  %2221 = fmul fast float %2210, %2210
  %2222 = fmul fast float %2215, %2215
  %2223 = fmul fast float %2220, %2220
  br label %2240

; <label>:2224                                    ; preds = %2187
  %2225 = fmul fast float %277, %277
  %2226 = fmul fast float %281, %281
  %2227 = fmul fast float %285, %285
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fadd fast float %2226, -1.000000e+00
  %2230 = fadd fast float %2227, -1.000000e+00
  %2231 = fmul fast float %2076, %2228
  %2232 = fmul fast float %2076, %2229
  %2233 = fmul fast float %2076, %2230
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fadd fast float %2232, 1.000000e+00
  %2236 = fadd fast float %2233, 1.000000e+00
  %2237 = fmul fast float %2234, %2051
  %2238 = fmul fast float %2235, %2052
  %2239 = fmul fast float %2236, %2053
  br label %2240

; <label>:2240                                    ; preds = %2224, %2190, %2081, %2037
  %2241 = phi float [ %2186, %2081 ], [ %2062, %2190 ], [ %2062, %2224 ], [ 0x3FA23C0BE0000000, %2037 ]
  %2242 = phi float [ %2178, %2081 ], [ %2221, %2190 ], [ %2237, %2224 ], [ 1.000000e+00, %2037 ]
  %2243 = phi float [ %2179, %2081 ], [ %2222, %2190 ], [ %2238, %2224 ], [ 1.000000e+00, %2037 ]
  %2244 = phi float [ %2180, %2081 ], [ %2223, %2190 ], [ %2239, %2224 ], [ 1.000000e+00, %2037 ]
  %2245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.i32 %2245, 1
  %2247 = and i32 %2246, 1
  %2248 = icmp ne i32 %2247, 0
  %2249 = add i32 %33, 356
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 32
  %2253 = icmp ne i32 %2252, 0
  %2254 = and i1 %2248, %2253
  %2255 = select i1 %2254, float 1.000000e+00, float %2242
  %2256 = select i1 %2254, float 0x3FD3333340000000, float %2243
  %2257 = select i1 %2254, float 0x3FD3333340000000, float %2244
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 32
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2334, label %2262

; <label>:2262                                    ; preds = %2240
  %2263 = add i32 %33, 124
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = add i32 %33, 432
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = add i32 %2268, 0
  %2270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2270, %dx.types.Handle %66, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.ResRet.f32 %2271, 2
  %2275 = extractvalue %dx.types.ResRet.f32 %2271, 3
  %2276 = and i32 %2265, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = lshr i32 %2265, 8
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = lshr i32 %2265, 16
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101000000000
  %2285 = fmul fast float %2272, %2277
  %2286 = fadd fast float %2285, %2280
  %2287 = fmul fast float %2286, 0x3F70101000000000
  %2288 = fadd fast float %2273, -5.000000e-01
  %2289 = fadd fast float %2275, -5.000000e-01
  %2290 = fmul fast float %2288, %2284
  %2291 = fmul fast float %2289, %2284
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = fadd fast float %2291, 5.000000e-01
  %2294 = fmul fast float %2292, 2.000000e+00
  %2295 = fadd fast float %2294, -1.000000e+00
  %2296 = fmul fast float %2293, 2.000000e+00
  %2297 = fadd fast float %2296, -1.000000e+00
  %2298 = fadd fast float %2295, %2297
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = fsub fast float %2295, %2297
  %2301 = fmul fast float %2300, 5.000000e-01
  %2302 = call float @dx.op.unary.f32(i32 6, float %2299)  ; FAbs(value)
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2305 = fsub fast float %2303, %2304
  %2306 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2301, float %2305, float %2299, float %2301, float %2305)  ; Dot3(ax,ay,az,bx,by,bz)
  %2307 = call float @dx.op.unary.f32(i32 25, float %2306)  ; Rsqrt(value)
  %2308 = fmul fast float %2299, %2307
  %2309 = fmul fast float %2301, %2307
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 67108864
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2330, label %2314

; <label>:2314                                    ; preds = %2262
  %2315 = add i32 %33, 312
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 65535
  %2319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2318)  ; LegacyF16ToF32(value)
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 65535
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = lshr i32 %2317, 16
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = fsub fast float %2287, %2325
  %2327 = fmul fast float %2326, %2319
  %2328 = fadd fast float %2327, %2323
  %2329 = call float @dx.op.unary.f32(i32 7, float %2328)  ; Saturate(value)
  br label %2330

; <label>:2330                                    ; preds = %2314, %2262
  %2331 = phi float [ %2329, %2314 ], [ %2287, %2262 ]
  %2332 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %1751, float %1752)  ; Dot2(ax,ay,bx,by)
  %2333 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %1753, float %1754)  ; Dot2(ax,ay,bx,by)
  br label %2334

; <label>:2334                                    ; preds = %2330, %2240
  %2335 = phi float [ %2331, %2330 ], [ 0x3FD6666660000000, %2240 ]
  %2336 = phi float [ %2332, %2330 ], [ 0.000000e+00, %2240 ]
  %2337 = phi float [ %2333, %2330 ], [ 0.000000e+00, %2240 ]
  %2338 = phi float [ %2274, %2330 ], [ 1.000000e+00, %2240 ]
  %2339 = add i32 %33, 192
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = lshr i32 %2341, 22
  %2343 = shl nuw nsw i32 %2342, 5
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 64
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2382, label %2349

; <label>:2349                                    ; preds = %2334
  %2350 = add i32 %33, 448
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %2352, 0
  %2354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 131072
  %2358 = icmp eq i32 %2357, 0
  %2359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2354, %dx.types.Handle %66, float %1847, float %1848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.ResRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.ResRet.f32 %2359, 2
  %2363 = fmul fast float %2360, %265
  %2364 = fmul fast float %2361, %268
  %2365 = fmul fast float %2362, %271
  br i1 %2358, label %2372, label %2366

; <label>:2366                                    ; preds = %2349
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 0
  %2369 = fmul fast float %2368, %2363
  %2370 = fmul fast float %2368, %2364
  %2371 = fmul fast float %2368, %2365
  br label %2372

; <label>:2372                                    ; preds = %2366, %2349
  %2373 = phi float [ %2369, %2366 ], [ %2363, %2349 ]
  %2374 = phi float [ %2370, %2366 ], [ %2364, %2349 ]
  %2375 = phi float [ %2371, %2366 ], [ %2365, %2349 ]
  %2376 = fmul fast float %2373, %2344
  %2377 = select i1 %175, float %2376, float %2373
  %2378 = call float @dx.op.dot3.f32(i32 55, float %2377, float %2374, float %2375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2379 = select i1 %175, float 0.000000e+00, float %2373
  %2380 = select i1 %175, float %2378, float %2374
  %2381 = select i1 %175, float 0.000000e+00, float %2375
  br label %2382

; <label>:2382                                    ; preds = %2372, %2334
  %2383 = phi float [ %2379, %2372 ], [ 0.000000e+00, %2334 ]
  %2384 = phi float [ %2380, %2372 ], [ 0.000000e+00, %2334 ]
  %2385 = phi float [ %2381, %2372 ], [ 0.000000e+00, %2334 ]
  %2386 = add i32 %33, 128
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = lshr i32 %2388, 8
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2256, float %2257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = fmul fast float %2393, %2394
  %2396 = fadd fast float %2395, %2390
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  br i1 %1739, label %2399, label %2407

; <label>:2399                                    ; preds = %2382
  %2400 = fsub fast float 1.000000e+00, %2035
  %2401 = fmul fast float %2400, %1728
  %2402 = fmul fast float %2400, %1729
  %2403 = fmul fast float %2400, %1730
  %2404 = fmul fast float %2400, %1731
  %2405 = fmul fast float %2400, %1732
  %2406 = fmul fast float %2400, %1733
  br label %2407

; <label>:2407                                    ; preds = %2399, %2382
  %2408 = phi float [ %2401, %2399 ], [ %1728, %2382 ]
  %2409 = phi float [ %2402, %2399 ], [ %1729, %2382 ]
  %2410 = phi float [ %2403, %2399 ], [ %1730, %2382 ]
  %2411 = phi float [ %2404, %2399 ], [ %1731, %2382 ]
  %2412 = phi float [ %2405, %2399 ], [ %1732, %2382 ]
  %2413 = phi float [ %2406, %2399 ], [ %1733, %2382 ]
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 3
  %2417 = icmp eq i32 %2416, 3
  br i1 %2417, label %2496, label %2418

; <label>:2418                                    ; preds = %2407
  %2419 = and i32 %2415, 16
  %2420 = icmp ne i32 %2419, 0
  %2421 = select i1 %2420, float %2035, float 0.000000e+00
  %2422 = icmp eq i32 %2416, 0
  br i1 %2422, label %2423, label %2451

; <label>:2423                                    ; preds = %2418
  %2424 = and i32 %2415, 64
  %2425 = icmp ne i32 %2424, 0
  %2426 = select i1 %2425, float %2035, float 0.000000e+00
  %2427 = fsub fast float %2255, %2408
  %2428 = fsub fast float %2256, %2409
  %2429 = fsub fast float %2257, %2410
  %2430 = fmul fast float %2421, %2427
  %2431 = fmul fast float %2421, %2428
  %2432 = fmul fast float %2421, %2429
  %2433 = fadd fast float %2430, %2408
  %2434 = fadd fast float %2431, %2409
  %2435 = fadd fast float %2432, %2410
  %2436 = fsub fast float %2241, %1734
  %2437 = fmul fast float %2421, %2436
  %2438 = fadd fast float %2437, %1734
  %2439 = fsub fast float %2383, %2411
  %2440 = fsub fast float %2384, %2412
  %2441 = fsub fast float %2385, %2413
  %2442 = fmul fast float %2426, %2439
  %2443 = fmul fast float %2426, %2440
  %2444 = fmul fast float %2426, %2441
  %2445 = fadd fast float %2442, %2411
  %2446 = fadd fast float %2443, %2412
  %2447 = fadd fast float %2444, %2413
  %2448 = fsub fast float %2398, %1737
  %2449 = fmul fast float %2421, %2448
  %2450 = fadd fast float %2449, %1737
  br label %2496

; <label>:2451                                    ; preds = %2418
  %2452 = icmp eq i32 %2416, 1
  br i1 %2452, label %2453, label %2466

; <label>:2453                                    ; preds = %2451
  %2454 = fadd fast float %2255, -1.000000e+00
  %2455 = fadd fast float %2256, -1.000000e+00
  %2456 = fadd fast float %2257, -1.000000e+00
  %2457 = fmul fast float %2421, %2454
  %2458 = fmul fast float %2421, %2455
  %2459 = fmul fast float %2421, %2456
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fadd fast float %2458, 1.000000e+00
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fmul fast float %2460, %2408
  %2464 = fmul fast float %2461, %2409
  %2465 = fmul fast float %2462, %2410
  br label %2496

; <label>:2466                                    ; preds = %2451
  %2467 = icmp eq i32 %2416, 2
  br i1 %2467, label %2468, label %2496

; <label>:2468                                    ; preds = %2466
  %2469 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2470 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2471 = call float @dx.op.unary.f32(i32 24, float %2257)  ; Sqrt(value)
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fmul fast float %2472, %2421
  %2476 = fmul fast float %2473, %2421
  %2477 = fmul fast float %2474, %2421
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fmul fast float %2478, 2.000000e+00
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2482, %2408
  %2484 = fadd fast float %2483, %2481
  %2485 = fmul fast float %2484, %2408
  %2486 = fmul fast float %2479, 2.000000e+00
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = fmul fast float %2487, %2409
  %2489 = fadd fast float %2488, %2486
  %2490 = fmul fast float %2489, %2409
  %2491 = fmul fast float %2480, 2.000000e+00
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2492, %2410
  %2494 = fadd fast float %2493, %2491
  %2495 = fmul fast float %2494, %2410
  br label %2496

; <label>:2496                                    ; preds = %2468, %2466, %2453, %2423, %2407
  %2497 = phi float [ %2408, %2407 ], [ %2485, %2468 ], [ %2408, %2466 ], [ %2463, %2453 ], [ %2433, %2423 ]
  %2498 = phi float [ %2409, %2407 ], [ %2490, %2468 ], [ %2409, %2466 ], [ %2464, %2453 ], [ %2434, %2423 ]
  %2499 = phi float [ %2410, %2407 ], [ %2495, %2468 ], [ %2410, %2466 ], [ %2465, %2453 ], [ %2435, %2423 ]
  %2500 = phi float [ %2411, %2407 ], [ %2411, %2468 ], [ %2411, %2466 ], [ %2411, %2453 ], [ %2445, %2423 ]
  %2501 = phi float [ %2412, %2407 ], [ %2412, %2468 ], [ %2412, %2466 ], [ %2412, %2453 ], [ %2446, %2423 ]
  %2502 = phi float [ %2413, %2407 ], [ %2413, %2468 ], [ %2413, %2466 ], [ %2413, %2453 ], [ %2447, %2423 ]
  %2503 = phi float [ %1734, %2407 ], [ %1734, %2468 ], [ %1734, %2466 ], [ %1734, %2453 ], [ %2438, %2423 ]
  %2504 = phi float [ %1737, %2407 ], [ %1737, %2468 ], [ %1737, %2466 ], [ %1737, %2453 ], [ %2450, %2423 ]
  %2505 = and i32 %2415, 12
  %2506 = icmp eq i32 %2505, 12
  br i1 %2506, label %2579, label %2507

; <label>:2507                                    ; preds = %2496
  %2508 = and i32 %2415, 2097184
  %2509 = icmp eq i32 %2508, 2097184
  %2510 = select i1 %2509, float %2035, float 0.000000e+00
  %2511 = and i32 %2415, 4194336
  %2512 = icmp eq i32 %2511, 4194336
  %2513 = select i1 %2512, float %2035, float 0.000000e+00
  %2514 = and i32 %2415, 8388640
  %2515 = icmp eq i32 %2514, 8388640
  %2516 = select i1 %2515, float %2035, float 0.000000e+00
  %2517 = icmp eq i32 %2505, 0
  br i1 %2517, label %2518, label %2531

; <label>:2518                                    ; preds = %2507
  %2519 = fsub fast float %2336, %1726
  %2520 = fsub fast float %2337, %1727
  %2521 = fmul fast float %2510, %2519
  %2522 = fmul fast float %2510, %2520
  %2523 = fadd fast float %2521, %1726
  %2524 = fadd fast float %2522, %1727
  %2525 = fsub fast float %2338, %1736
  %2526 = fmul fast float %2513, %2525
  %2527 = fadd fast float %2526, %1736
  %2528 = fsub fast float %2335, %1735
  %2529 = fmul fast float %2516, %2528
  %2530 = fadd fast float %2529, %1735
  br label %2579

; <label>:2531                                    ; preds = %2507
  %2532 = icmp eq i32 %2505, 4
  br i1 %2532, label %2533, label %2565

; <label>:2533                                    ; preds = %2531
  %2534 = fmul fast float %2510, %2336
  %2535 = fmul fast float %2510, %2337
  %2536 = fadd fast float %2534, %1726
  %2537 = fadd fast float %2535, %1727
  %2538 = call float @dx.op.binary.f32(i32 36, float %1736, float %2338)  ; FMin(a,b)
  %2539 = fsub fast float %2538, %1736
  %2540 = fmul fast float %2539, %2513
  %2541 = fadd fast float %2540, %1736
  %2542 = fadd fast float %2335, %1735
  %2543 = fmul fast float %2542, 0x3FF337FAE0000000
  %2544 = fmul fast float %1735, %1735
  %2545 = fmul fast float %2335, %2335
  %2546 = fadd fast float %2545, %2544
  %2547 = fmul fast float %2546, 0x3FE5152B00000000
  %2548 = fmul fast float %1735, 0xBFCC1F85E0000000
  %2549 = fmul fast float %2548, %2335
  %2550 = fadd fast float %2549, 0xBFE1363700000000
  %2551 = fadd fast float %2550, %2543
  %2552 = fsub fast float %2551, %2547
  %2553 = fmul fast float %2542, 0x3FBA6F0D00000000
  %2554 = fmul fast float %2546, 0x3FD0432880000000
  %2555 = fmul fast float %1735, 0xBFEF110800000000
  %2556 = fmul fast float %2555, %2335
  %2557 = fadd fast float %2556, 1.000000e+00
  %2558 = fsub fast float %2557, %2553
  %2559 = fadd fast float %2558, %2554
  %2560 = fdiv fast float %2552, %2559
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = fsub fast float %2561, %1735
  %2563 = fmul fast float %2562, %2516
  %2564 = fadd fast float %2563, %1735
  br label %2579

; <label>:2565                                    ; preds = %2531
  %2566 = icmp eq i32 %2505, 8
  br i1 %2566, label %2567, label %2579

; <label>:2567                                    ; preds = %2565
  %2568 = fmul fast float %2510, %2336
  %2569 = fmul fast float %2510, %2337
  %2570 = fadd fast float %2568, %1726
  %2571 = fadd fast float %2569, %1727
  %2572 = call float @dx.op.binary.f32(i32 36, float %1736, float %2338)  ; FMin(a,b)
  %2573 = fsub fast float %2572, %1736
  %2574 = fmul fast float %2573, %2513
  %2575 = fadd fast float %2574, %1736
  %2576 = fsub fast float %2335, %1735
  %2577 = fmul fast float %2516, %2576
  %2578 = fadd fast float %2577, %1735
  br label %2579

; <label>:2579                                    ; preds = %2567, %2565, %2533, %2518, %2496, %2034, %1738, %1725
  %2580 = phi float [ %1726, %2496 ], [ %1726, %2034 ], [ %1726, %1725 ], [ %2570, %2567 ], [ %1726, %2565 ], [ %2536, %2533 ], [ %2523, %2518 ], [ %1726, %1738 ]
  %2581 = phi float [ %1727, %2496 ], [ %1727, %2034 ], [ %1727, %1725 ], [ %2571, %2567 ], [ %1727, %2565 ], [ %2537, %2533 ], [ %2524, %2518 ], [ %1727, %1738 ]
  %2582 = phi float [ %2497, %2496 ], [ %1728, %2034 ], [ %1728, %1725 ], [ %2497, %2567 ], [ %2497, %2565 ], [ %2497, %2533 ], [ %2497, %2518 ], [ %1728, %1738 ]
  %2583 = phi float [ %2498, %2496 ], [ %1729, %2034 ], [ %1729, %1725 ], [ %2498, %2567 ], [ %2498, %2565 ], [ %2498, %2533 ], [ %2498, %2518 ], [ %1729, %1738 ]
  %2584 = phi float [ %2499, %2496 ], [ %1730, %2034 ], [ %1730, %1725 ], [ %2499, %2567 ], [ %2499, %2565 ], [ %2499, %2533 ], [ %2499, %2518 ], [ %1730, %1738 ]
  %2585 = phi float [ %2500, %2496 ], [ %1731, %2034 ], [ %1731, %1725 ], [ %2500, %2567 ], [ %2500, %2565 ], [ %2500, %2533 ], [ %2500, %2518 ], [ %1731, %1738 ]
  %2586 = phi float [ %2501, %2496 ], [ %1732, %2034 ], [ %1732, %1725 ], [ %2501, %2567 ], [ %2501, %2565 ], [ %2501, %2533 ], [ %2501, %2518 ], [ %1732, %1738 ]
  %2587 = phi float [ %2502, %2496 ], [ %1733, %2034 ], [ %1733, %1725 ], [ %2502, %2567 ], [ %2502, %2565 ], [ %2502, %2533 ], [ %2502, %2518 ], [ %1733, %1738 ]
  %2588 = phi float [ %2503, %2496 ], [ %1734, %2034 ], [ %1734, %1725 ], [ %2503, %2567 ], [ %2503, %2565 ], [ %2503, %2533 ], [ %2503, %2518 ], [ %1734, %1738 ]
  %2589 = phi float [ %1735, %2496 ], [ %1735, %2034 ], [ %1735, %1725 ], [ %2578, %2567 ], [ %1735, %2565 ], [ %2564, %2533 ], [ %2530, %2518 ], [ %1735, %1738 ]
  %2590 = phi float [ %1736, %2496 ], [ %1736, %2034 ], [ %1736, %1725 ], [ %2575, %2567 ], [ %1736, %2565 ], [ %2541, %2533 ], [ %2527, %2518 ], [ %1736, %1738 ]
  %2591 = phi float [ %2504, %2496 ], [ %1737, %2034 ], [ %1737, %1725 ], [ %2504, %2567 ], [ %2504, %2565 ], [ %2504, %2533 ], [ %2504, %2518 ], [ %1737, %1738 ]
  br i1 %352, label %3433, label %2592

; <label>:2592                                    ; preds = %2579
  %2593 = icmp ult i32 %403, 4
  %2594 = add i32 %33, 72
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = add i32 %33, 76
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = or i32 %2599, %2596
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %3433, label %2602

; <label>:2602                                    ; preds = %2592
  %2603 = and i32 %2596, 262144
  %2604 = icmp ne i32 %2603, 0
  %2605 = select i1 %2604, float %37, float 1.000000e+00
  %2606 = select i1 %2604, float %38, float 0.000000e+00
  %2607 = select i1 %2604, float %39, float 0.000000e+00
  %2608 = select i1 %2604, float %40, float 1.000000e+00
  %2609 = select i1 %2604, float %41, float %58
  %2610 = select i1 %2604, float %42, float %59
  %2611 = add i32 %33, 332
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 16
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = fmul fast float %2615, 0x3F50624DE0000000
  %2617 = add i32 %33, 136
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = lshr i32 %2619, 16
  %2621 = and i32 %2620, 255
  %2622 = lshr i32 %2619, 24
  %2623 = add i32 %33, 340
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2625, 16
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = add i32 %33, 80
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 22
  %2634 = shl nuw nsw i32 %2633, 5
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = shl i32 %2632, 4
  %2637 = and i32 %2636, 32752
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = lshr i32 %2632, 7
  %2640 = and i32 %2639, 32752
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 3
  %2644 = fmul fast float %2643, 1.000000e+03
  %2645 = fmul fast float %342, %2644
  %2646 = call float @dx.op.unary.f32(i32 22, float %2645)  ; Frc(value)
  %2647 = fadd fast float %2646, %332
  %2648 = fmul fast float %343, %2644
  %2649 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2650 = fadd fast float %2649, %334
  %2651 = fmul fast float %2616, %2644
  %2652 = call float @dx.op.unary.f32(i32 22, float %2651)  ; Frc(value)
  %2653 = fmul fast float %2652, 0x401921FB60000000
  %2654 = fadd fast float %2653, %2635
  %2655 = call float @dx.op.unary.f32(i32 13, float %2654)  ; Sin(value)
  %2656 = call float @dx.op.unary.f32(i32 12, float %2654)  ; Cos(value)
  %2657 = fsub fast float -0.000000e+00, %2655
  %2658 = fadd fast float %2609, -5.000000e-01
  %2659 = fadd fast float %2610, -5.000000e-01
  %2660 = fmul fast float %2627, %2658
  %2661 = fmul fast float %2629, %2659
  %2662 = fadd fast float %2660, 5.000000e-01
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = fmul fast float %2638, %2662
  %2665 = fmul fast float %2641, %2663
  %2666 = fmul fast float %2656, %2664
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2665, float %2666)  ; FMad(a,b,c)
  %2668 = fmul fast float %2655, %2664
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2656, float %2665, float %2668)  ; FMad(a,b,c)
  %2670 = fadd fast float %2647, %2667
  %2671 = fadd fast float %2650, %2669
  %2672 = icmp ugt i32 %2621, 1
  %2673 = icmp ugt i32 %2619, 33554431
  %2674 = or i1 %2673, %2672
  br i1 %2674, label %2675, label %2700

; <label>:2675                                    ; preds = %2602
  %2676 = add i32 %33, 276
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = lshr i32 %2678, 16
  %2680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2679)  ; LegacyF16ToF32(value)
  %2681 = fmul fast float %2643, %2680
  %2682 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2683 = mul nuw nsw i32 %2621, %2622
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2682, %2684
  %2686 = call float @dx.op.unary.f32(i32 27, float %2685)  ; Round_ni(value)
  %2687 = fptoui float %2686 to i32
  %2688 = urem i32 %2687, %2621
  %2689 = udiv i32 %2687, %2622
  %2690 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2691 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2692 = uitofp i32 %2688 to float
  %2693 = uitofp i32 %2689 to float
  %2694 = fadd fast float %2690, %2692
  %2695 = fadd fast float %2691, %2693
  %2696 = uitofp i32 %2621 to float
  %2697 = uitofp i32 %2622 to float
  %2698 = fdiv fast float %2694, %2696
  %2699 = fdiv fast float %2695, %2697
  br label %2700

; <label>:2700                                    ; preds = %2675, %2602
  %2701 = phi float [ %2698, %2675 ], [ %2670, %2602 ]
  %2702 = phi float [ %2699, %2675 ], [ %2671, %2602 ]
  %2703 = and i32 %2596, 16777216
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2814, label %2705

; <label>:2705                                    ; preds = %2700
  %2706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2707 = extractvalue %dx.types.CBufRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.CBufRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.CBufRet.f32 %2706, 2
  %2710 = fadd fast float %2707, %133
  %2711 = fadd fast float %2708, %134
  %2712 = fadd fast float %2709, %135
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = icmp eq i32 %34, 65535
  br i1 %2716, label %2811, label %2717

; <label>:2717                                    ; preds = %2705
  %2718 = lshr i32 %34, 1
  %2719 = shl i32 %2718, 2
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %34, 1
  %2723 = icmp ne i32 %2722, 0
  %2724 = lshr i32 %2721, 16
  %2725 = and i32 %2721, 65535
  %2726 = select i1 %2723, i32 %2724, i32 %2725
  %2727 = icmp eq i32 %2726, 65535
  br i1 %2727, label %2807, label %2728

; <label>:2728                                    ; preds = %2717
  %2729 = mul nuw nsw i32 %2726, 40
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.ResRet.f32 %2730, 2
  %2734 = add nuw nsw i32 %2729, 12
  %2735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = add nuw nsw i32 %2729, 24
  %2740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.ResRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.ResRet.f32 %2740, 2
  %2744 = add nuw nsw i32 %2729, 36
  %2745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = fsub fast float %2710, %2731
  %2748 = fsub fast float %2711, %2732
  %2749 = fsub fast float %2712, %2733
  %2750 = fmul fast float %2746, %2747
  %2751 = fmul fast float %2746, %2748
  %2752 = fmul fast float %2746, %2749
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2755 = call float @dx.op.unary.f32(i32 27, float %2752)  ; Round_ni(value)
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fadd fast float %2754, 5.000000e-01
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = fmul fast float %2756, %2736
  %2760 = fmul fast float %2757, %2737
  %2761 = fmul fast float %2758, %2738
  %2762 = shl i32 %34, 2
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = add i32 %2764, 0
  %2766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2768 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2769 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2766, %dx.types.Handle %30, float %2767, float %2768, float %2769, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2774 = fmul fast float %2771, 1.023000e+03
  %2775 = fmul fast float %2772, 1.023000e+03
  %2776 = fmul fast float %2773, 1.023000e+03
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2782 = call float @dx.op.unary.f32(i32 27, float %2779)  ; Round_ni(value)
  %2783 = fsub fast float %2750, %2753
  %2784 = fsub fast float %2751, %2754
  %2785 = fsub fast float %2752, %2755
  %2786 = fmul fast float %2783, 7.500000e-01
  %2787 = fmul fast float %2784, 7.500000e-01
  %2788 = fmul fast float %2785, 7.500000e-01
  %2789 = fadd fast float %2753, 1.250000e-01
  %2790 = fadd fast float %2789, %2786
  %2791 = fadd fast float %2790, %2780
  %2792 = fadd fast float %2754, 1.250000e-01
  %2793 = fadd fast float %2792, %2787
  %2794 = fadd fast float %2793, %2781
  %2795 = fadd fast float %2755, 1.250000e-01
  %2796 = fadd fast float %2795, %2788
  %2797 = fadd fast float %2796, %2782
  %2798 = fmul fast float %2791, %2741
  %2799 = fmul fast float %2794, %2742
  %2800 = fmul fast float %2797, %2743
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = add i32 %2802, 0
  %2804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2804, %dx.types.Handle %28, float %2798, float %2799, float %2800, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2806 = extractvalue %dx.types.ResRet.f32 %2805, 0
  br label %2807

; <label>:2807                                    ; preds = %2728, %2717
  %2808 = phi float [ %2806, %2728 ], [ -1.000000e+00, %2717 ]
  %2809 = fadd fast float %2808, %2715
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  br label %2811

; <label>:2811                                    ; preds = %2807, %2705
  %2812 = phi float [ %2810, %2807 ], [ %2715, %2705 ]
  %2813 = fmul fast float %2812, %398
  br label %2814

; <label>:2814                                    ; preds = %2811, %2700
  %2815 = phi float [ %2813, %2811 ], [ %398, %2700 ]
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = and i32 %2817, 256
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %2866, label %2820

; <label>:2820                                    ; preds = %2814
  %2821 = add i32 %33, 484
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = add i32 %2823, 0
  %2825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2825, %dx.types.Handle %67, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 0
  %2828 = add i32 %33, 148
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = shl i32 %2830, 4
  %2832 = and i32 %2831, 32752
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = lshr i32 %2830, 7
  %2835 = and i32 %2834, 32752
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = fsub fast float 1.000000e+00, %2815
  %2838 = call float @dx.op.binary.f32(i32 35, float %2837, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2839 = bitcast float %2815 to i32
  %2840 = sitofp i32 %2839 to float
  %2841 = fadd fast float %2840, 0xC1CFBF8940000000
  %2842 = fmul fast float %2836, %2841
  %2843 = fadd fast float %2842, 0x41CFBF8940000000
  %2844 = fptosi float %2843 to i32
  %2845 = bitcast i32 %2844 to float
  %2846 = bitcast float %2838 to i32
  %2847 = sitofp i32 %2846 to float
  %2848 = fadd fast float %2847, 0xC1CFBF8940000000
  %2849 = fmul fast float %2848, %2836
  %2850 = fadd fast float %2849, 0x41CFBF8940000000
  %2851 = fptosi float %2850 to i32
  %2852 = bitcast i32 %2851 to float
  %2853 = fmul fast float %2845, %2833
  %2854 = fmul fast float %2852, %2833
  %2855 = fsub fast float %2838, %2853
  %2856 = fadd fast float %2854, %2838
  %2857 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2858 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2859 = fsub fast float %2827, %2857
  %2860 = fsub fast float %2858, %2857
  %2861 = bitcast float %2860 to i32
  %2862 = sub nsw i32 2129859010, %2861
  %2863 = bitcast i32 %2862 to float
  %2864 = fmul fast float %2863, %2859
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  br label %2866

; <label>:2866                                    ; preds = %2820, %2814
  %2867 = phi float [ %2865, %2820 ], [ %2815, %2814 ]
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 128
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %2888, label %2872

; <label>:2872                                    ; preds = %2866
  %2873 = add i32 %33, 468
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = add i32 %2875, 0
  %2877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2877, %dx.types.Handle %67, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 524288
  %2883 = icmp ne i32 %2882, 0
  %2884 = fcmp fast ogt float %2879, 0x3FE0101020000000
  %2885 = select i1 %2884, float 1.000000e+00, float 0.000000e+00
  %2886 = select i1 %2883, float %2885, float %2879
  %2887 = fmul fast float %2886, %2867
  br label %2888

; <label>:2888                                    ; preds = %2872, %2866
  %2889 = phi float [ %2887, %2872 ], [ %2867, %2866 ]
  %2890 = fcmp fast ult float %2889, 0x3F70101020000000
  br i1 %2890, label %3433, label %2891

; <label>:2891                                    ; preds = %2888
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 16
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %3094, label %2896

; <label>:2896                                    ; preds = %2891
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %33, 420
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %2901, 0
  %2903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2903, %dx.types.Handle %66, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.ResRet.f32 %2904, 3
  %2909 = and i32 %2898, 255
  %2910 = uitofp i32 %2909 to float
  %2911 = lshr i32 %2898, 8
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2908, %2910
  %2915 = fadd fast float %2914, %2913
  %2916 = fmul fast float %2915, 0x3F70101000000000
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 512
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2929, label %2921

; <label>:2921                                    ; preds = %2896
  %2922 = add i32 %33, 500
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %2924, 0
  %2926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2926, %dx.types.Handle %67, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  br label %2929

; <label>:2929                                    ; preds = %2921, %2896
  %2930 = phi float [ %2928, %2921 ], [ 1.000000e+00, %2896 ]
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 33554432
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3041, label %2935

; <label>:2935                                    ; preds = %2929
  %2936 = add i32 %33, 272
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 65535
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = lshr i32 %2938, 16
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = add i32 %33, 276
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = and i32 %2945, 65535
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 24
  %2951 = uitofp i32 %2950 to float
  %2952 = fmul fast float %2951, 0x3F70101020000000
  %2953 = and i32 %2949, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = lshr i32 %2949, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2949, 16
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = add i32 %33, 268
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = lshr i32 %2966, 24
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = and i32 %2966, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2966, 8
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2966, 16
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = bitcast float %2905 to i32
  %2982 = ashr i32 %2981, 1
  %2983 = sub nsw i32 1597463174, %2982
  %2984 = bitcast i32 %2983 to float
  %2985 = fmul fast float %2905, 5.000000e-01
  %2986 = fmul fast float %2984, %2984
  %2987 = fmul fast float %2986, %2985
  %2988 = fsub fast float 1.500000e+00, %2987
  %2989 = fmul fast float %2984, %2905
  %2990 = fmul fast float %2989, %2988
  %2991 = bitcast float %2906 to i32
  %2992 = ashr i32 %2991, 1
  %2993 = sub nsw i32 1597463174, %2992
  %2994 = bitcast i32 %2993 to float
  %2995 = fmul fast float %2906, 5.000000e-01
  %2996 = fmul fast float %2994, %2994
  %2997 = fmul fast float %2996, %2995
  %2998 = fsub fast float 1.500000e+00, %2997
  %2999 = fmul fast float %2994, %2906
  %3000 = fmul fast float %2999, %2998
  %3001 = bitcast float %2907 to i32
  %3002 = ashr i32 %3001, 1
  %3003 = sub nsw i32 1597463174, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %2907, 5.000000e-01
  %3006 = fmul fast float %3004, %3004
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float 1.500000e+00, %3007
  %3009 = fmul fast float %3004, %2907
  %3010 = fmul fast float %3009, %3008
  %3011 = fsub fast float %2990, %2972
  %3012 = fsub fast float %3000, %2976
  %3013 = fsub fast float %3010, %2980
  %3014 = fmul fast float %3011, %2940
  %3015 = fmul fast float %3012, %2942
  %3016 = fmul fast float %3013, %2947
  %3017 = fadd fast float %3014, %2955
  %3018 = fadd fast float %3015, %2959
  %3019 = fadd fast float %3016, %2963
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3022 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3023 = fmul fast float %3020, %3020
  %3024 = fmul fast float %3021, %3021
  %3025 = fmul fast float %3022, %3022
  %3026 = fsub fast float %3023, %2905
  %3027 = fsub fast float %3024, %2906
  %3028 = fsub fast float %3025, %2907
  %3029 = fmul fast float %3026, %2930
  %3030 = fmul fast float %3027, %2930
  %3031 = fmul fast float %3028, %2930
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %3030, %2906
  %3034 = fadd fast float %3031, %2907
  %3035 = fadd fast float %2952, %2916
  %3036 = fsub fast float %3035, %2969
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3038 = fsub fast float %3037, %2916
  %3039 = fmul fast float %3038, %2930
  %3040 = fadd fast float %3039, %2916
  br label %3094

; <label>:3041                                    ; preds = %2929
  %3042 = and i32 %2932, 134217728
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3078, label %3044

; <label>:3044                                    ; preds = %3041
  %3045 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3046 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fmul fast float %3048, %2930
  %3052 = fmul fast float %3049, %2930
  %3053 = fmul fast float %3050, %2930
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3060 = fmul fast float %3054, 2.000000e+00
  %3061 = fsub fast float 1.000000e+00, %3060
  %3062 = fmul fast float %3061, %3057
  %3063 = fadd fast float %3062, %3060
  %3064 = fmul fast float %3063, %3057
  %3065 = fmul fast float %3055, 2.000000e+00
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = fmul fast float %3066, %3058
  %3068 = fadd fast float %3067, %3065
  %3069 = fmul fast float %3068, %3058
  %3070 = fmul fast float %3056, 2.000000e+00
  %3071 = fsub fast float 1.000000e+00, %3070
  %3072 = fmul fast float %3071, %3059
  %3073 = fadd fast float %3072, %3070
  %3074 = fmul fast float %3073, %3059
  %3075 = fmul fast float %3064, %3064
  %3076 = fmul fast float %3069, %3069
  %3077 = fmul fast float %3074, %3074
  br label %3094

; <label>:3078                                    ; preds = %3041
  %3079 = fmul fast float %319, %319
  %3080 = fmul fast float %323, %323
  %3081 = fmul fast float %327, %327
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fadd fast float %3080, -1.000000e+00
  %3084 = fadd fast float %3081, -1.000000e+00
  %3085 = fmul fast float %2930, %3082
  %3086 = fmul fast float %2930, %3083
  %3087 = fmul fast float %2930, %3084
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fadd fast float %3086, 1.000000e+00
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fmul fast float %3088, %2905
  %3092 = fmul fast float %3089, %2906
  %3093 = fmul fast float %3090, %2907
  br label %3094

; <label>:3094                                    ; preds = %3078, %3044, %2935, %2891
  %3095 = phi float [ %3040, %2935 ], [ %2916, %3044 ], [ %2916, %3078 ], [ 0x3FA23C0BE0000000, %2891 ]
  %3096 = phi float [ %3032, %2935 ], [ %3075, %3044 ], [ %3091, %3078 ], [ 1.000000e+00, %2891 ]
  %3097 = phi float [ %3033, %2935 ], [ %3076, %3044 ], [ %3092, %3078 ], [ 1.000000e+00, %2891 ]
  %3098 = phi float [ %3034, %2935 ], [ %3077, %3044 ], [ %3093, %3078 ], [ 1.000000e+00, %2891 ]
  %3099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.i32 %3099, 1
  %3101 = and i32 %3100, 1
  %3102 = icmp ne i32 %3101, 0
  %3103 = add i32 %33, 356
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 32
  %3107 = icmp ne i32 %3106, 0
  %3108 = and i1 %3102, %3107
  %3109 = select i1 %3108, float 1.000000e+00, float %3096
  %3110 = select i1 %3108, float 0x3FD3333340000000, float %3097
  %3111 = select i1 %3108, float 0x3FD3333340000000, float %3098
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 32
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3188, label %3116

; <label>:3116                                    ; preds = %3094
  %3117 = add i32 %33, 140
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %33, 436
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %66, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.ResRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3125, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3125, 3
  %3130 = and i32 %3119, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3119, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = lshr i32 %3119, 16
  %3136 = and i32 %3135, 255
  %3137 = uitofp i32 %3136 to float
  %3138 = fmul fast float %3137, 0x3F70101000000000
  %3139 = fmul fast float %3126, %3131
  %3140 = fadd fast float %3139, %3134
  %3141 = fmul fast float %3140, 0x3F70101000000000
  %3142 = fadd fast float %3127, -5.000000e-01
  %3143 = fadd fast float %3129, -5.000000e-01
  %3144 = fmul fast float %3142, %3138
  %3145 = fmul fast float %3143, %3138
  %3146 = fadd fast float %3144, 5.000000e-01
  %3147 = fadd fast float %3145, 5.000000e-01
  %3148 = fmul fast float %3146, 2.000000e+00
  %3149 = fadd fast float %3148, -1.000000e+00
  %3150 = fmul fast float %3147, 2.000000e+00
  %3151 = fadd fast float %3150, -1.000000e+00
  %3152 = fadd fast float %3149, %3151
  %3153 = fmul fast float %3152, 5.000000e-01
  %3154 = fsub fast float %3149, %3151
  %3155 = fmul fast float %3154, 5.000000e-01
  %3156 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3159 = fsub fast float %3157, %3158
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3155, float %3159, float %3153, float %3155, float %3159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call float @dx.op.unary.f32(i32 25, float %3160)  ; Rsqrt(value)
  %3162 = fmul fast float %3153, %3161
  %3163 = fmul fast float %3155, %3161
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 67108864
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %3184, label %3168

; <label>:3168                                    ; preds = %3116
  %3169 = add i32 %33, 328
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 65535
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 65535
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = lshr i32 %3171, 16
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = fsub fast float %3141, %3179
  %3181 = fmul fast float %3180, %3173
  %3182 = fadd fast float %3181, %3177
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  br label %3184

; <label>:3184                                    ; preds = %3168, %3116
  %3185 = phi float [ %3183, %3168 ], [ %3141, %3116 ]
  %3186 = call float @dx.op.dot2.f32(i32 54, float %3162, float %3163, float %2605, float %2606)  ; Dot2(ax,ay,bx,by)
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3162, float %3163, float %2607, float %2608)  ; Dot2(ax,ay,bx,by)
  br label %3188

; <label>:3188                                    ; preds = %3184, %3094
  %3189 = phi float [ %3185, %3184 ], [ 0x3FD6666660000000, %3094 ]
  %3190 = phi float [ %3186, %3184 ], [ 0.000000e+00, %3094 ]
  %3191 = phi float [ %3187, %3184 ], [ 0.000000e+00, %3094 ]
  %3192 = phi float [ %3128, %3184 ], [ 1.000000e+00, %3094 ]
  %3193 = add i32 %33, 208
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 22
  %3197 = shl nuw nsw i32 %3196, 5
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 64
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3236, label %3203

; <label>:3203                                    ; preds = %3188
  %3204 = add i32 %33, 452
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 131072
  %3212 = icmp eq i32 %3211, 0
  %3213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %66, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = fmul fast float %3214, %307
  %3218 = fmul fast float %3215, %310
  %3219 = fmul fast float %3216, %313
  br i1 %3212, label %3226, label %3220

; <label>:3220                                    ; preds = %3203
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 0
  %3223 = fmul fast float %3222, %3217
  %3224 = fmul fast float %3222, %3218
  %3225 = fmul fast float %3222, %3219
  br label %3226

; <label>:3226                                    ; preds = %3220, %3203
  %3227 = phi float [ %3223, %3220 ], [ %3217, %3203 ]
  %3228 = phi float [ %3224, %3220 ], [ %3218, %3203 ]
  %3229 = phi float [ %3225, %3220 ], [ %3219, %3203 ]
  %3230 = fmul fast float %3227, %3198
  %3231 = select i1 %175, float %3230, float %3227
  %3232 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3228, float %3229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3233 = select i1 %175, float 0.000000e+00, float %3227
  %3234 = select i1 %175, float %3232, float %3228
  %3235 = select i1 %175, float 0.000000e+00, float %3229
  br label %3236

; <label>:3236                                    ; preds = %3226, %3188
  %3237 = phi float [ %3233, %3226 ], [ 0.000000e+00, %3188 ]
  %3238 = phi float [ %3234, %3226 ], [ 0.000000e+00, %3188 ]
  %3239 = phi float [ %3235, %3226 ], [ 0.000000e+00, %3188 ]
  %3240 = add i32 %33, 144
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = lshr i32 %3242, 8
  %3246 = and i32 %3245, 255
  %3247 = uitofp i32 %3246 to float
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3109, float %3110, float %3111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fmul fast float %3247, %3248
  %3250 = fadd fast float %3249, %3244
  %3251 = fmul fast float %3250, 0x3F70101020000000
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  br i1 %2593, label %3253, label %3261

; <label>:3253                                    ; preds = %3236
  %3254 = fsub fast float 1.000000e+00, %2889
  %3255 = fmul fast float %3254, %2582
  %3256 = fmul fast float %3254, %2583
  %3257 = fmul fast float %3254, %2584
  %3258 = fmul fast float %3254, %2585
  %3259 = fmul fast float %3254, %2586
  %3260 = fmul fast float %3254, %2587
  br label %3261

; <label>:3261                                    ; preds = %3253, %3236
  %3262 = phi float [ %3255, %3253 ], [ %2582, %3236 ]
  %3263 = phi float [ %3256, %3253 ], [ %2583, %3236 ]
  %3264 = phi float [ %3257, %3253 ], [ %2584, %3236 ]
  %3265 = phi float [ %3258, %3253 ], [ %2585, %3236 ]
  %3266 = phi float [ %3259, %3253 ], [ %2586, %3236 ]
  %3267 = phi float [ %3260, %3253 ], [ %2587, %3236 ]
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 3
  %3271 = icmp eq i32 %3270, 3
  br i1 %3271, label %3350, label %3272

; <label>:3272                                    ; preds = %3261
  %3273 = and i32 %3269, 16
  %3274 = icmp ne i32 %3273, 0
  %3275 = select i1 %3274, float %2889, float 0.000000e+00
  %3276 = icmp eq i32 %3270, 0
  br i1 %3276, label %3277, label %3305

; <label>:3277                                    ; preds = %3272
  %3278 = and i32 %3269, 64
  %3279 = icmp ne i32 %3278, 0
  %3280 = select i1 %3279, float %2889, float 0.000000e+00
  %3281 = fsub fast float %3109, %3262
  %3282 = fsub fast float %3110, %3263
  %3283 = fsub fast float %3111, %3264
  %3284 = fmul fast float %3275, %3281
  %3285 = fmul fast float %3275, %3282
  %3286 = fmul fast float %3275, %3283
  %3287 = fadd fast float %3284, %3262
  %3288 = fadd fast float %3285, %3263
  %3289 = fadd fast float %3286, %3264
  %3290 = fsub fast float %3095, %2588
  %3291 = fmul fast float %3275, %3290
  %3292 = fadd fast float %3291, %2588
  %3293 = fsub fast float %3237, %3265
  %3294 = fsub fast float %3238, %3266
  %3295 = fsub fast float %3239, %3267
  %3296 = fmul fast float %3280, %3293
  %3297 = fmul fast float %3280, %3294
  %3298 = fmul fast float %3280, %3295
  %3299 = fadd fast float %3296, %3265
  %3300 = fadd fast float %3297, %3266
  %3301 = fadd fast float %3298, %3267
  %3302 = fsub fast float %3252, %2591
  %3303 = fmul fast float %3275, %3302
  %3304 = fadd fast float %3303, %2591
  br label %3350

; <label>:3305                                    ; preds = %3272
  %3306 = icmp eq i32 %3270, 1
  br i1 %3306, label %3307, label %3320

; <label>:3307                                    ; preds = %3305
  %3308 = fadd fast float %3109, -1.000000e+00
  %3309 = fadd fast float %3110, -1.000000e+00
  %3310 = fadd fast float %3111, -1.000000e+00
  %3311 = fmul fast float %3275, %3308
  %3312 = fmul fast float %3275, %3309
  %3313 = fmul fast float %3275, %3310
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fmul fast float %3314, %3262
  %3318 = fmul fast float %3315, %3263
  %3319 = fmul fast float %3316, %3264
  br label %3350

; <label>:3320                                    ; preds = %3305
  %3321 = icmp eq i32 %3270, 2
  br i1 %3321, label %3322, label %3350

; <label>:3322                                    ; preds = %3320
  %3323 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3324 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3325 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3326 = fadd fast float %3323, -5.000000e-01
  %3327 = fadd fast float %3324, -5.000000e-01
  %3328 = fadd fast float %3325, -5.000000e-01
  %3329 = fmul fast float %3326, %3275
  %3330 = fmul fast float %3327, %3275
  %3331 = fmul fast float %3328, %3275
  %3332 = fadd fast float %3329, 5.000000e-01
  %3333 = fadd fast float %3330, 5.000000e-01
  %3334 = fadd fast float %3331, 5.000000e-01
  %3335 = fmul fast float %3332, 2.000000e+00
  %3336 = fsub fast float 1.000000e+00, %3335
  %3337 = fmul fast float %3336, %3262
  %3338 = fadd fast float %3337, %3335
  %3339 = fmul fast float %3338, %3262
  %3340 = fmul fast float %3333, 2.000000e+00
  %3341 = fsub fast float 1.000000e+00, %3340
  %3342 = fmul fast float %3341, %3263
  %3343 = fadd fast float %3342, %3340
  %3344 = fmul fast float %3343, %3263
  %3345 = fmul fast float %3334, 2.000000e+00
  %3346 = fsub fast float 1.000000e+00, %3345
  %3347 = fmul fast float %3346, %3264
  %3348 = fadd fast float %3347, %3345
  %3349 = fmul fast float %3348, %3264
  br label %3350

; <label>:3350                                    ; preds = %3322, %3320, %3307, %3277, %3261
  %3351 = phi float [ %3262, %3261 ], [ %3339, %3322 ], [ %3262, %3320 ], [ %3317, %3307 ], [ %3287, %3277 ]
  %3352 = phi float [ %3263, %3261 ], [ %3344, %3322 ], [ %3263, %3320 ], [ %3318, %3307 ], [ %3288, %3277 ]
  %3353 = phi float [ %3264, %3261 ], [ %3349, %3322 ], [ %3264, %3320 ], [ %3319, %3307 ], [ %3289, %3277 ]
  %3354 = phi float [ %3265, %3261 ], [ %3265, %3322 ], [ %3265, %3320 ], [ %3265, %3307 ], [ %3299, %3277 ]
  %3355 = phi float [ %3266, %3261 ], [ %3266, %3322 ], [ %3266, %3320 ], [ %3266, %3307 ], [ %3300, %3277 ]
  %3356 = phi float [ %3267, %3261 ], [ %3267, %3322 ], [ %3267, %3320 ], [ %3267, %3307 ], [ %3301, %3277 ]
  %3357 = phi float [ %2588, %3261 ], [ %2588, %3322 ], [ %2588, %3320 ], [ %2588, %3307 ], [ %3292, %3277 ]
  %3358 = phi float [ %2591, %3261 ], [ %2591, %3322 ], [ %2591, %3320 ], [ %2591, %3307 ], [ %3304, %3277 ]
  %3359 = and i32 %3269, 12
  %3360 = icmp eq i32 %3359, 12
  br i1 %3360, label %3433, label %3361

; <label>:3361                                    ; preds = %3350
  %3362 = and i32 %3269, 2097184
  %3363 = icmp eq i32 %3362, 2097184
  %3364 = select i1 %3363, float %2889, float 0.000000e+00
  %3365 = and i32 %3269, 4194336
  %3366 = icmp eq i32 %3365, 4194336
  %3367 = select i1 %3366, float %2889, float 0.000000e+00
  %3368 = and i32 %3269, 8388640
  %3369 = icmp eq i32 %3368, 8388640
  %3370 = select i1 %3369, float %2889, float 0.000000e+00
  %3371 = icmp eq i32 %3359, 0
  br i1 %3371, label %3372, label %3385

; <label>:3372                                    ; preds = %3361
  %3373 = fsub fast float %3190, %2580
  %3374 = fsub fast float %3191, %2581
  %3375 = fmul fast float %3364, %3373
  %3376 = fmul fast float %3364, %3374
  %3377 = fadd fast float %3375, %2580
  %3378 = fadd fast float %3376, %2581
  %3379 = fsub fast float %3192, %2590
  %3380 = fmul fast float %3367, %3379
  %3381 = fadd fast float %3380, %2590
  %3382 = fsub fast float %3189, %2589
  %3383 = fmul fast float %3370, %3382
  %3384 = fadd fast float %3383, %2589
  br label %3433

; <label>:3385                                    ; preds = %3361
  %3386 = icmp eq i32 %3359, 4
  br i1 %3386, label %3387, label %3419

; <label>:3387                                    ; preds = %3385
  %3388 = fmul fast float %3364, %3190
  %3389 = fmul fast float %3364, %3191
  %3390 = fadd fast float %3388, %2580
  %3391 = fadd fast float %3389, %2581
  %3392 = call float @dx.op.binary.f32(i32 36, float %2590, float %3192)  ; FMin(a,b)
  %3393 = fsub fast float %3392, %2590
  %3394 = fmul fast float %3393, %3367
  %3395 = fadd fast float %3394, %2590
  %3396 = fadd fast float %3189, %2589
  %3397 = fmul fast float %3396, 0x3FF337FAE0000000
  %3398 = fmul fast float %2589, %2589
  %3399 = fmul fast float %3189, %3189
  %3400 = fadd fast float %3399, %3398
  %3401 = fmul fast float %3400, 0x3FE5152B00000000
  %3402 = fmul fast float %2589, 0xBFCC1F85E0000000
  %3403 = fmul fast float %3402, %3189
  %3404 = fadd fast float %3403, 0xBFE1363700000000
  %3405 = fadd fast float %3404, %3397
  %3406 = fsub fast float %3405, %3401
  %3407 = fmul fast float %3396, 0x3FBA6F0D00000000
  %3408 = fmul fast float %3400, 0x3FD0432880000000
  %3409 = fmul fast float %2589, 0xBFEF110800000000
  %3410 = fmul fast float %3409, %3189
  %3411 = fadd fast float %3410, 1.000000e+00
  %3412 = fsub fast float %3411, %3407
  %3413 = fadd fast float %3412, %3408
  %3414 = fdiv fast float %3406, %3413
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = fsub fast float %3415, %2589
  %3417 = fmul fast float %3416, %3370
  %3418 = fadd fast float %3417, %2589
  br label %3433

; <label>:3419                                    ; preds = %3385
  %3420 = icmp eq i32 %3359, 8
  br i1 %3420, label %3421, label %3433

; <label>:3421                                    ; preds = %3419
  %3422 = fmul fast float %3364, %3190
  %3423 = fmul fast float %3364, %3191
  %3424 = fadd fast float %3422, %2580
  %3425 = fadd fast float %3423, %2581
  %3426 = call float @dx.op.binary.f32(i32 36, float %2590, float %3192)  ; FMin(a,b)
  %3427 = fsub fast float %3426, %2590
  %3428 = fmul fast float %3427, %3367
  %3429 = fadd fast float %3428, %2590
  %3430 = fsub fast float %3189, %2589
  %3431 = fmul fast float %3370, %3430
  %3432 = fadd fast float %3431, %2589
  br label %3433

; <label>:3433                                    ; preds = %3421, %3419, %3387, %3372, %3350, %2888, %2592, %2579
  %3434 = phi float [ %2580, %3350 ], [ %2580, %2888 ], [ %2580, %2579 ], [ %2580, %2592 ], [ %3377, %3372 ], [ %3390, %3387 ], [ %2580, %3419 ], [ %3424, %3421 ]
  %3435 = phi float [ %2581, %3350 ], [ %2581, %2888 ], [ %2581, %2579 ], [ %2581, %2592 ], [ %3378, %3372 ], [ %3391, %3387 ], [ %2581, %3419 ], [ %3425, %3421 ]
  %3436 = phi float [ %3351, %3350 ], [ %2582, %2888 ], [ %2582, %2579 ], [ %2582, %2592 ], [ %3351, %3372 ], [ %3351, %3387 ], [ %3351, %3419 ], [ %3351, %3421 ]
  %3437 = phi float [ %3352, %3350 ], [ %2583, %2888 ], [ %2583, %2579 ], [ %2583, %2592 ], [ %3352, %3372 ], [ %3352, %3387 ], [ %3352, %3419 ], [ %3352, %3421 ]
  %3438 = phi float [ %3353, %3350 ], [ %2584, %2888 ], [ %2584, %2579 ], [ %2584, %2592 ], [ %3353, %3372 ], [ %3353, %3387 ], [ %3353, %3419 ], [ %3353, %3421 ]
  %3439 = phi float [ %3354, %3350 ], [ %2585, %2888 ], [ %2585, %2579 ], [ %2585, %2592 ], [ %3354, %3372 ], [ %3354, %3387 ], [ %3354, %3419 ], [ %3354, %3421 ]
  %3440 = phi float [ %3355, %3350 ], [ %2586, %2888 ], [ %2586, %2579 ], [ %2586, %2592 ], [ %3355, %3372 ], [ %3355, %3387 ], [ %3355, %3419 ], [ %3355, %3421 ]
  %3441 = phi float [ %3356, %3350 ], [ %2587, %2888 ], [ %2587, %2579 ], [ %2587, %2592 ], [ %3356, %3372 ], [ %3356, %3387 ], [ %3356, %3419 ], [ %3356, %3421 ]
  %3442 = phi float [ %3357, %3350 ], [ %2588, %2888 ], [ %2588, %2579 ], [ %2588, %2592 ], [ %3357, %3372 ], [ %3357, %3387 ], [ %3357, %3419 ], [ %3357, %3421 ]
  %3443 = phi float [ %2589, %3350 ], [ %2589, %2888 ], [ %2589, %2579 ], [ %2589, %2592 ], [ %3384, %3372 ], [ %3418, %3387 ], [ %2589, %3419 ], [ %3432, %3421 ]
  %3444 = phi float [ %2590, %3350 ], [ %2590, %2888 ], [ %2590, %2579 ], [ %2590, %2592 ], [ %3381, %3372 ], [ %3395, %3387 ], [ %2590, %3419 ], [ %3429, %3421 ]
  %3445 = phi float [ %3358, %3350 ], [ %2591, %2888 ], [ %2591, %2579 ], [ %2591, %2592 ], [ %3358, %3372 ], [ %3358, %3387 ], [ %3358, %3419 ], [ %3358, %3421 ]
  %3446 = add i32 %33, 360
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = bitcast i32 %3448 to float
  %3450 = fcmp fast oge float %3449, 0.000000e+00
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = select i1 %3450, float %3449, float %3452
  %3454 = call float @dx.op.dot2.f32(i32 54, float %3434, float %3435, float %3434, float %3435)  ; Dot2(ax,ay,bx,by)
  %3455 = fmul fast float %3454, 0x3FE3333340000000
  %3456 = fsub fast float 1.000000e+00, %3455
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3434, float %3435, float %3456, float %3434, float %3435, float %3456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = call float @dx.op.unary.f32(i32 25, float %3457)  ; Rsqrt(value)
  %3459 = fmul fast float %3458, %3434
  %3460 = fmul fast float %3458, %3435
  %3461 = fmul fast float %3456, %3458
  %3462 = fmul fast float %3461, %77
  %3463 = fmul fast float %3461, %78
  %3464 = fmul fast float %3461, %79
  %3465 = fmul fast float %3459, %51
  %3466 = fmul fast float %3459, %52
  %3467 = fmul fast float %3459, %53
  %3468 = fadd fast float %3462, %3465
  %3469 = fadd fast float %3463, %3466
  %3470 = fadd fast float %3464, %3467
  %3471 = fmul fast float %89, %3460
  %3472 = fmul fast float %90, %3460
  %3473 = fmul fast float %91, %3460
  %3474 = fadd fast float %3468, %3471
  %3475 = fadd fast float %3469, %3472
  %3476 = fadd fast float %3470, %3473
  %3477 = call float @dx.op.dot3.f32(i32 55, float %3474, float %3475, float %3476, float %3474, float %3475, float %3476)  ; Dot3(ax,ay,az,bx,by,bz)
  %3478 = call float @dx.op.unary.f32(i32 25, float %3477)  ; Rsqrt(value)
  %3479 = fmul fast float %3474, %3478
  %3480 = fmul fast float %3475, %3478
  %3481 = fmul fast float %3476, %3478
  %3482 = and i32 %35, 1
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %3484, label %3992

; <label>:3484                                    ; preds = %3433
  %3485 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3486 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3487 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3488 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3489 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3490 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3491 = fadd fast float %3485, %133
  %3492 = fadd fast float %3486, %134
  %3493 = fadd fast float %3487, %135
  %3494 = fadd fast float %3488, %133
  %3495 = fadd fast float %3489, %134
  %3496 = fadd fast float %3490, %135
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 1
  %3500 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 2
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 3
  %3504 = fmul fast float %3498, %70
  %3505 = fmul fast float %3504, %3502
  %3506 = fmul fast float %3499, %71
  %3507 = fmul fast float %3506, %3503
  %3508 = fptoui float %3505 to i32
  %3509 = fptoui float %3507 to i32
  %3510 = fadd fast float %3498, -1.000000e+00
  %3511 = fadd fast float %3499, -1.000000e+00
  %3512 = fptoui float %3510 to i32
  %3513 = fptoui float %3511 to i32
  %3514 = call i32 @dx.op.binary.i32(i32 40, i32 %3508, i32 %3512)  ; UMin(a,b)
  %3515 = call i32 @dx.op.binary.i32(i32 40, i32 %3509, i32 %3513)  ; UMin(a,b)
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3518 = extractvalue %dx.types.CBufRet.f32 %3516, 3
  %3519 = fmul fast float %3517, %65
  %3520 = fsub fast float %3519, %3518
  %3521 = fadd fast float %3500, -1.000000e+00
  %3522 = call float @dx.op.binary.f32(i32 36, float %3520, float %3521)  ; FMin(a,b)
  %3523 = fptoui float %3522 to i32
  %3524 = fptoui float %3498 to i32
  %3525 = fptoui float %3499 to i32
  %3526 = mul i32 %3523, %3525
  %3527 = add i32 %3526, %3515
  %3528 = mul i32 %3527, %3524
  %3529 = add i32 %3528, %3514
  %3530 = shl i32 %3529, 2
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 1023
  %3534 = lshr i32 %3532, 10
  %3535 = icmp eq i32 %3533, 0
  br i1 %3535, label %3961, label %3536

; <label>:3536                                    ; preds = %3484
  %3537 = and i32 %3532, 1023
  br label %3538

; <label>:3538                                    ; preds = %3664, %3536
  %3539 = phi i32 [ %3614, %3664 ], [ 0, %3536 ]
  %3540 = phi float [ %3665, %3664 ], [ 0.000000e+00, %3536 ]
  %3541 = phi float [ %3666, %3664 ], [ %3453, %3536 ]
  %3542 = phi float [ %3667, %3664 ], [ %3445, %3536 ]
  %3543 = phi float [ %3668, %3664 ], [ 0.000000e+00, %3536 ]
  %3544 = phi float [ %3669, %3664 ], [ 0.000000e+00, %3536 ]
  %3545 = phi float [ %3670, %3664 ], [ %3439, %3536 ]
  %3546 = phi float [ %3671, %3664 ], [ %3440, %3536 ]
  %3547 = phi float [ %3672, %3664 ], [ %3441, %3536 ]
  %3548 = phi float [ %3673, %3664 ], [ %3479, %3536 ]
  %3549 = phi float [ %3674, %3664 ], [ %3480, %3536 ]
  %3550 = phi float [ %3675, %3664 ], [ %3481, %3536 ]
  %3551 = phi float [ %3676, %3664 ], [ %3444, %3536 ]
  %3552 = phi float [ %3677, %3664 ], [ %3443, %3536 ]
  %3553 = phi float [ %3678, %3664 ], [ 0.000000e+00, %3536 ]
  %3554 = phi float [ %3679, %3664 ], [ %3442, %3536 ]
  %3555 = phi float [ %3680, %3664 ], [ %3436, %3536 ]
  %3556 = phi float [ %3681, %3664 ], [ %3437, %3536 ]
  %3557 = phi float [ %3682, %3664 ], [ %3438, %3536 ]
  %3558 = add nuw nsw i32 %3539, %3534
  %3559 = shl i32 %3558, 2
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = shl i32 %3561, 8
  %3563 = or i32 %3562, 48
  %3564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = extractvalue %dx.types.ResRet.f32 %3564, 3
  %3569 = or i32 %3562, 64
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.i32 %3570, 1
  %3573 = or i32 %3562, 80
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 3
  %3577 = or i32 %3562, 96
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = or i32 %3562, 112
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3586 = or i32 %3562, 128
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3562, 144
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = or i32 %3562, 160
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3562, 192
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = or i32 %3562, 208
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = or i32 %3562, 248
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = add nuw nsw i32 %3539, 1
  %3615 = bitcast float %3568 to i32
  %3616 = and i32 %3615, 512
  %3617 = icmp eq i32 %3616, 0
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3624 = or i32 %3562, 16
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = or i32 %3562, 32
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = call float @dx.op.unary.f32(i32 27, float %3623)  ; Round_ni(value)
  %3639 = call float @dx.op.unary.f32(i32 6, float %3638)  ; FAbs(value)
  %3640 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3641 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3637)  ; FAbs(value)
  %3643 = call float @dx.op.unary.f32(i32 27, float %3642)  ; Round_ni(value)
  %3644 = fadd fast float %3641, %3639
  %3645 = fadd fast float %3644, %3643
  %3646 = fcmp fast oeq float %3645, 0.000000e+00
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3491, float %3492, float %3493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3491, float %3492, float %3493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3494, float %3495, float %3496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3494, float %3495, float %3496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = fsub fast float %3647, %3623
  %3652 = fsub fast float %3649, %3623
  %3653 = fsub fast float %3648, %3630
  %3654 = fsub fast float %3650, %3630
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3565, float %3566, float %3567, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3658 = fadd fast float %3657, %3655
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3661 = fcmp fast ogt float %3659, %3660
  %3662 = and i1 %3646, %3661
  %3663 = and i1 %3617, %3662
  br i1 %3663, label %3684, label %3664

; <label>:3664                                    ; preds = %3947, %3765, %3684, %3538
  %3665 = phi float [ %3540, %3684 ], [ %3768, %3765 ], [ %3768, %3947 ], [ %3540, %3538 ]
  %3666 = phi float [ %3541, %3684 ], [ %3541, %3765 ], [ %3922, %3947 ], [ %3541, %3538 ]
  %3667 = phi float [ %3542, %3684 ], [ %3542, %3765 ], [ %3920, %3947 ], [ %3542, %3538 ]
  %3668 = phi float [ %3543, %3684 ], [ %3543, %3765 ], [ %3892, %3947 ], [ %3543, %3538 ]
  %3669 = phi float [ %3544, %3684 ], [ %3544, %3765 ], [ %3890, %3947 ], [ %3544, %3538 ]
  %3670 = phi float [ %3545, %3684 ], [ %3545, %3765 ], [ %3957, %3947 ], [ %3545, %3538 ]
  %3671 = phi float [ %3546, %3684 ], [ %3546, %3765 ], [ %3958, %3947 ], [ %3546, %3538 ]
  %3672 = phi float [ %3547, %3684 ], [ %3547, %3765 ], [ %3959, %3947 ], [ %3547, %3538 ]
  %3673 = phi float [ %3548, %3684 ], [ %3548, %3765 ], [ %3871, %3947 ], [ %3548, %3538 ]
  %3674 = phi float [ %3549, %3684 ], [ %3549, %3765 ], [ %3872, %3947 ], [ %3549, %3538 ]
  %3675 = phi float [ %3550, %3684 ], [ %3550, %3765 ], [ %3873, %3947 ], [ %3550, %3538 ]
  %3676 = phi float [ %3551, %3684 ], [ %3551, %3765 ], [ %3900, %3947 ], [ %3551, %3538 ]
  %3677 = phi float [ %3552, %3684 ], [ %3552, %3765 ], [ %3897, %3947 ], [ %3552, %3538 ]
  %3678 = phi float [ %3553, %3684 ], [ %3553, %3765 ], [ %3894, %3947 ], [ %3553, %3538 ]
  %3679 = phi float [ %3554, %3684 ], [ %3554, %3765 ], [ %3888, %3947 ], [ %3554, %3538 ]
  %3680 = phi float [ %3555, %3684 ], [ %3555, %3765 ], [ %3883, %3947 ], [ %3555, %3538 ]
  %3681 = phi float [ %3556, %3684 ], [ %3556, %3765 ], [ %3884, %3947 ], [ %3556, %3538 ]
  %3682 = phi float [ %3557, %3684 ], [ %3557, %3765 ], [ %3885, %3947 ], [ %3557, %3538 ]
  %3683 = icmp eq i32 %3614, %3537
  br i1 %3683, label %3960, label %3538

; <label>:3684                                    ; preds = %3538
  %3685 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3686 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3688 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3689 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3690 = extractvalue %dx.types.ResRet.i32 %3570, 3
  %3691 = extractvalue %dx.types.ResRet.i32 %3570, 2
  %3692 = add i32 %3690, 0
  %3693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3693, %dx.types.Handle %3694, float %3623, float %3630, float undef, float undef, i32 0, i32 0, i32 undef, float %3651, float %3653, float undef, float %3652, float %3654, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = fmul fast float %3696, %3689
  %3698 = fadd fast float %3697, %3688
  %3699 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3700 = fmul fast float %3623, %3579
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3630, float %3700)  ; FMad(a,b,c)
  %3702 = fadd fast float %3701, %3687
  %3703 = fmul fast float %3623, %3581
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3630, float %3703)  ; FMad(a,b,c)
  %3705 = fadd fast float %3704, %3686
  %3706 = fmul fast float %3651, %3579
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3653, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3651, %3581
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3653, float %3708)  ; FMad(a,b,c)
  %3710 = fmul fast float %3652, %3579
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3654, float %3710)  ; FMad(a,b,c)
  %3712 = fmul fast float %3652, %3581
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3654, float %3712)  ; FMad(a,b,c)
  %3714 = add i32 %3691, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3715, %dx.types.Handle %3694, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = and i32 %3615, 1024
  %3719 = icmp ne i32 %3718, 0
  %3720 = fcmp fast ogt float %3717, 0x3FE0101020000000
  %3721 = uitofp i1 %3720 to float
  %3722 = select i1 %3719, float %3721, float %3717
  %3723 = and i32 %3615, 8192
  %3724 = icmp ne i32 %3723, 0
  %3725 = select i1 %3724, float %3685, float 1.000000e+00
  %3726 = fmul fast float %3623, 2.000000e+00
  %3727 = fadd fast float %3726, -1.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3729 = fmul fast float %3728, %3612
  %3730 = fsub fast float %3729, %3612
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fmul fast float %3630, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3735 = fmul fast float %3734, %3613
  %3736 = fsub fast float %3735, %3613
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3738 = fmul fast float %3642, %3575
  %3739 = fsub fast float %3738, %3575
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fmul fast float %3699, %3725
  %3742 = fmul fast float %3741, %3696
  %3743 = fmul fast float %3742, %3731
  %3744 = fmul fast float %3743, %3722
  %3745 = fmul fast float %3744, %3737
  %3746 = fmul fast float %3745, %3740
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3750 = fsub fast float %3659, %3749
  %3751 = fmul fast float %3750, %3748
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3746, %3576
  %3754 = fadd fast float %3746, %3576
  %3755 = fmul fast float %3754, %3585
  %3756 = fsub fast float %3755, %3585
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = and i32 %3615, 128
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3757, float %3753
  %3761 = fmul fast float %3760, %3752
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = fcmp fast ugt float %3761, %3763
  br i1 %3764, label %3765, label %3664

; <label>:3765                                    ; preds = %3684
  %3766 = select i1 %3724, float %3761, float 0.000000e+00
  %3767 = fadd fast float %3766, %3540
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  br i1 %3724, label %3664, label %3769

; <label>:3769                                    ; preds = %3765
  %3770 = and i32 %3615, 4
  %3771 = and i32 %3615, 8
  %3772 = add i32 %3571, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = extractvalue %dx.types.ResRet.f32 %3775, 3
  %3780 = bitcast float %3597 to i32
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = lshr i32 %3780, 8
  %3784 = and i32 %3783, 255
  %3785 = uitofp i32 %3784 to float
  %3786 = fmul fast float %3779, %3782
  %3787 = fadd fast float %3786, %3785
  %3788 = fmul fast float %3787, 0x3F70101000000000
  %3789 = add i32 %3572, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3790, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.ResRet.f32 %3791, 1
  %3794 = extractvalue %dx.types.ResRet.f32 %3791, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3791, 3
  %3796 = bitcast float %3591 to i32
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = lshr i32 %3796, 8
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = lshr i32 %3796, 16
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3804, 0x3F70101000000000
  %3806 = fmul fast float %3792, %3798
  %3807 = fadd fast float %3806, %3801
  %3808 = fmul fast float %3807, 0x3F70101000000000
  %3809 = fadd fast float %3793, -5.000000e-01
  %3810 = fadd fast float %3795, -5.000000e-01
  %3811 = fmul fast float %3809, %3805
  %3812 = fmul fast float %3810, %3805
  %3813 = fadd fast float %3811, 5.000000e-01
  %3814 = fadd fast float %3812, 5.000000e-01
  %3815 = fmul fast float %3776, %3600
  %3816 = fmul fast float %3777, %3601
  %3817 = fmul fast float %3778, %3602
  %3818 = fmul fast float %3813, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fmul fast float %3814, 2.000000e+00
  %3821 = fadd fast float %3820, -1.000000e+00
  %3822 = fadd fast float %3819, %3821
  %3823 = fmul fast float %3822, 5.000000e-01
  %3824 = fsub fast float %3819, %3821
  %3825 = fmul fast float %3824, 5.000000e-01
  %3826 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = call float @dx.op.unary.f32(i32 6, float %3825)  ; FAbs(value)
  %3829 = fsub fast float %3827, %3828
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3825, float %3829, float %3823, float %3825, float %3829)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call float @dx.op.unary.f32(i32 25, float %3830)  ; Rsqrt(value)
  %3832 = fmul fast float %3823, %3831
  %3833 = fmul fast float %3825, %3831
  %3834 = fmul fast float %3831, %3829
  %3835 = fmul fast float %3834, %3565
  %3836 = fmul fast float %3834, %3566
  %3837 = fmul fast float %3834, %3567
  %3838 = fmul fast float %3832, %3588
  %3839 = fmul fast float %3832, %3589
  %3840 = fmul fast float %3832, %3590
  %3841 = fadd fast float %3838, %3835
  %3842 = fadd fast float %3839, %3836
  %3843 = fadd fast float %3840, %3837
  %3844 = fmul fast float %3833, %3594
  %3845 = fmul fast float %3833, %3595
  %3846 = fmul fast float %3833, %3596
  %3847 = fadd fast float %3841, %3844
  %3848 = fadd fast float %3842, %3845
  %3849 = fadd fast float %3843, %3846
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %3847, float %3848, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = call float @dx.op.unary.f32(i32 25, float %3850)  ; Rsqrt(value)
  %3852 = fmul fast float %3847, %3851
  %3853 = fmul fast float %3848, %3851
  %3854 = fmul fast float %3849, %3851
  %3855 = icmp ne i32 %3771, 0
  %3856 = select i1 %3855, float 1.000000e+00, float 0.000000e+00
  %3857 = fmul fast float %3761, %3856
  %3858 = and i32 %3615, 1
  %3859 = icmp eq i32 %3858, 0
  br i1 %3859, label %3860, label %3864

; <label>:3860                                    ; preds = %3769
  %3861 = fsub fast float %3852, %3548
  %3862 = fsub fast float %3853, %3549
  %3863 = fsub fast float %3854, %3550
  br label %3864

; <label>:3864                                    ; preds = %3860, %3769
  %3865 = phi float [ %3861, %3860 ], [ %3852, %3769 ]
  %3866 = phi float [ %3862, %3860 ], [ %3853, %3769 ]
  %3867 = phi float [ %3863, %3860 ], [ %3854, %3769 ]
  %3868 = fmul float %3867, %3857
  %3869 = fmul float %3866, %3857
  %3870 = fmul float %3865, %3857
  %3871 = fadd fast float %3870, %3548
  %3872 = fadd fast float %3869, %3549
  %3873 = fadd fast float %3868, %3550
  %3874 = icmp ne i32 %3770, 0
  %3875 = select i1 %3874, float 1.000000e+00, float 0.000000e+00
  %3876 = fmul fast float %3761, %3875
  %3877 = fsub fast float %3815, %3555
  %3878 = fsub fast float %3816, %3556
  %3879 = fsub fast float %3817, %3557
  %3880 = fmul fast float %3877, %3876
  %3881 = fmul fast float %3878, %3876
  %3882 = fmul fast float %3879, %3876
  %3883 = fadd fast float %3880, %3555
  %3884 = fadd fast float %3881, %3556
  %3885 = fadd fast float %3882, %3557
  %3886 = fsub fast float %3788, %3554
  %3887 = fmul fast float %3886, %3876
  %3888 = fadd fast float %3887, %3554
  %3889 = fmul fast float %3876, %3544
  %3890 = fsub fast float %3544, %3889
  %3891 = fmul fast float %3876, %3543
  %3892 = fsub fast float %3543, %3891
  %3893 = fadd fast float %3761, %3553
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fsub fast float %3808, %3552
  %3896 = fmul fast float %3895, %3857
  %3897 = fadd fast float %3896, %3552
  %3898 = fsub fast float %3794, %3551
  %3899 = fmul fast float %3898, %3857
  %3900 = fadd fast float %3899, %3551
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = fmul fast float %3904, %3901
  %3906 = fadd fast float %3905, %3903
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = bitcast float %3603 to i32
  %3909 = and i32 %3908, 65535
  %3910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3909)  ; LegacyF16ToF32(value)
  %3911 = lshr i32 %3908, 16
  %3912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3911)  ; LegacyF16ToF32(value)
  %3913 = fcmp fast oge float %3910, 0.000000e+00
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = select i1 %3913, float %3910, float %3915
  %3917 = fadd fast float %3916, %3912
  %3918 = fsub fast float %3907, %3542
  %3919 = fmul fast float %3918, %3761
  %3920 = fadd fast float %3919, %3542
  %3921 = fmul fast float %3917, %3761
  %3922 = call float @dx.op.binary.f32(i32 35, float %3541, float %3921)  ; FMax(a,b)
  %3923 = and i32 %3615, 16
  %3924 = icmp eq i32 %3923, 0
  br i1 %3924, label %3947, label %3925

; <label>:3925                                    ; preds = %3864
  %3926 = bitcast float %3609 to i32
  %3927 = add i32 %3606, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %3774, float %3702, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float %3707, float %3709, float undef, float %3711, float %3713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = and i32 %3926, 65535
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = fmul fast float %3930, %3600
  %3936 = fmul fast float %3931, %3601
  %3937 = fmul fast float %3932, %3602
  %3938 = and i32 %3615, 16384
  %3939 = icmp ne i32 %3938, 0
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = select i1 %3939, float %3941, float 1.000000e+00
  %3943 = fmul fast float %3942, %3934
  %3944 = fmul fast float %3935, %3943
  %3945 = fmul fast float %3936, %3943
  %3946 = fmul fast float %3937, %3943
  br label %3947

; <label>:3947                                    ; preds = %3925, %3864
  %3948 = phi float [ %3944, %3925 ], [ 0.000000e+00, %3864 ]
  %3949 = phi float [ %3945, %3925 ], [ 0.000000e+00, %3864 ]
  %3950 = phi float [ %3946, %3925 ], [ 0.000000e+00, %3864 ]
  %3951 = fsub fast float %3948, %3545
  %3952 = fsub fast float %3949, %3546
  %3953 = fsub fast float %3950, %3547
  %3954 = fmul fast float %3951, %3761
  %3955 = fmul fast float %3952, %3761
  %3956 = fmul fast float %3953, %3761
  %3957 = fadd fast float %3954, %3545
  %3958 = fadd fast float %3955, %3546
  %3959 = fadd fast float %3956, %3547
  br label %3664

; <label>:3960                                    ; preds = %3664
  br label %3961

; <label>:3961                                    ; preds = %3960, %3484
  %3962 = phi float [ 0.000000e+00, %3484 ], [ %3665, %3960 ]
  %3963 = phi float [ %3453, %3484 ], [ %3666, %3960 ]
  %3964 = phi float [ %3445, %3484 ], [ %3667, %3960 ]
  %3965 = phi float [ 0.000000e+00, %3484 ], [ %3668, %3960 ]
  %3966 = phi float [ 0.000000e+00, %3484 ], [ %3669, %3960 ]
  %3967 = phi float [ %3439, %3484 ], [ %3670, %3960 ]
  %3968 = phi float [ %3440, %3484 ], [ %3671, %3960 ]
  %3969 = phi float [ %3441, %3484 ], [ %3672, %3960 ]
  %3970 = phi float [ %3479, %3484 ], [ %3673, %3960 ]
  %3971 = phi float [ %3480, %3484 ], [ %3674, %3960 ]
  %3972 = phi float [ %3481, %3484 ], [ %3675, %3960 ]
  %3973 = phi float [ %3444, %3484 ], [ %3676, %3960 ]
  %3974 = phi float [ %3443, %3484 ], [ %3677, %3960 ]
  %3975 = phi float [ 0.000000e+00, %3484 ], [ %3678, %3960 ]
  %3976 = phi float [ %3442, %3484 ], [ %3679, %3960 ]
  %3977 = phi float [ %3436, %3484 ], [ %3680, %3960 ]
  %3978 = phi float [ %3437, %3484 ], [ %3681, %3960 ]
  %3979 = phi float [ %3438, %3484 ], [ %3682, %3960 ]
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3970, float %3971, float %3972, float %3970, float %3971, float %3972)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call float @dx.op.unary.f32(i32 25, float %3980)  ; Rsqrt(value)
  %3982 = fmul fast float %3981, %3970
  %3983 = fmul fast float %3981, %3971
  %3984 = fmul fast float %3981, %3972
  %3985 = fadd fast float %3975, %880
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float %3982, float %3983, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3982
  %3990 = fmul fast float %3988, %3983
  %3991 = fmul fast float %3988, %3984
  br label %3992

; <label>:3992                                    ; preds = %3961, %3433
  %3993 = phi float [ %3989, %3961 ], [ %3479, %3433 ]
  %3994 = phi float [ %3990, %3961 ], [ %3480, %3433 ]
  %3995 = phi float [ %3991, %3961 ], [ %3481, %3433 ]
  %3996 = phi float [ %3977, %3961 ], [ %3436, %3433 ]
  %3997 = phi float [ %3978, %3961 ], [ %3437, %3433 ]
  %3998 = phi float [ %3979, %3961 ], [ %3438, %3433 ]
  %3999 = phi float [ %3967, %3961 ], [ %3439, %3433 ]
  %4000 = phi float [ %3968, %3961 ], [ %3440, %3433 ]
  %4001 = phi float [ %3969, %3961 ], [ %3441, %3433 ]
  %4002 = phi float [ %3976, %3961 ], [ %3442, %3433 ]
  %4003 = phi float [ %3986, %3961 ], [ %880, %3433 ]
  %4004 = phi float [ %3974, %3961 ], [ %3443, %3433 ]
  %4005 = phi float [ %3973, %3961 ], [ %3444, %3433 ]
  %4006 = phi float [ %3966, %3961 ], [ 0.000000e+00, %3433 ]
  %4007 = phi float [ %3965, %3961 ], [ 0.000000e+00, %3433 ]
  %4008 = phi float [ %3962, %3961 ], [ 0.000000e+00, %3433 ]
  %4009 = phi float [ %3963, %3961 ], [ %3453, %3433 ]
  %4010 = phi float [ %3964, %3961 ], [ %3445, %3433 ]
  %4011 = fadd fast float %4002, 0xBFB99999A0000000
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, 0x3FF1C71C80000000
  %4014 = call float @dx.op.binary.f32(i32 36, float %4002, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4015 = fsub fast float 1.000000e+00, %4013
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %4016, %3996
  %4018 = fmul fast float %4016, %3997
  %4019 = fmul fast float %4016, %3998
  %4020 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4021 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4022 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4023 = fmul fast float %4013, %3996
  %4024 = fmul fast float %4013, %3997
  %4025 = fmul fast float %4013, %3998
  %4026 = fadd fast float %4023, %4014
  %4027 = fadd fast float %4024, %4014
  %4028 = fadd fast float %4025, %4014
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.i32 %4033, 3
  %4035 = and i32 %4034, 8
  %4036 = icmp ne i32 %4035, 0
  %4037 = call float @dx.op.binary.f32(i32 35, float %4020, float %3996)  ; FMax(a,b)
  %4038 = call float @dx.op.binary.f32(i32 35, float %4021, float %3996)  ; FMax(a,b)
  %4039 = call float @dx.op.binary.f32(i32 35, float %4022, float %3996)  ; FMax(a,b)
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4020, float %4021, float %4022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = select i1 %175, float %3996, float %4020
  %4042 = select i1 %175, float %4040, float %4021
  %4043 = select i1 %175, float 1.000000e+00, float %4022
  %4044 = select i1 %4036, float %4037, float %4041
  %4045 = select i1 %4036, float %4038, float %4042
  %4046 = select i1 %4036, float %4039, float %4043
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4051 = fadd fast float %4048, %133
  %4052 = fadd fast float %4049, %134
  %4053 = fadd fast float %4050, %135
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = fsub fast float %4051, %4055
  %4058 = fsub fast float %4052, %4056
  %4059 = fmul fast float %4057, %4057
  %4060 = fmul fast float %4058, %4058
  %4061 = fadd fast float %4059, %4060
  %4062 = call float @dx.op.unary.f32(i32 24, float %4061)  ; Sqrt(value)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4064 = fcmp fast olt float %4062, %4063
  br i1 %4064, label %4065, label %4132

; <label>:4065                                    ; preds = %3992
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4076 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4077 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4078 = fadd fast float %4075, %4051
  %4079 = fadd fast float %4076, %4052
  %4080 = fadd fast float %4077, %4053
  %4081 = fmul fast float %4078, %4067
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4069, float %4081)  ; FMad(a,b,c)
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %4080, float %4071, float %4082)  ; FMad(a,b,c)
  %4084 = fmul fast float %4078, %4072
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4073, float %4084)  ; FMad(a,b,c)
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4080, float %4074, float %4085)  ; FMad(a,b,c)
  %4087 = fsub fast float %4083, %4075
  %4088 = fsub fast float %4086, %4076
  %4089 = fsub fast float %4087, %4055
  %4090 = fadd fast float %4089, %4063
  %4091 = fsub fast float %4088, %4056
  %4092 = fadd fast float %4091, %4063
  %4093 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4094 = fmul fast float %4090, %4093
  %4095 = fmul fast float %4092, %4093
  %4096 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = fsub fast float 1.000000e+00, %4096
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4098, float %4099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = fcmp fast ugt float %4101, 0.000000e+00
  br i1 %4102, label %4103, label %4406

; <label>:4103                                    ; preds = %4065
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = fmul fast float %4105, %4101
  %4107 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4108 = fadd fast float %4107, %4106
  %4109 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4110 = fadd fast float %4108, %4077
  %4111 = fmul fast float %4083, %4071
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4074, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4109, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4113, %4077
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4117 = fsub fast float %4114, %4116
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4098, float %4099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4098, float %4099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = fadd fast float %4123, %4119
  %4127 = fmul fast float %4126, 0x3F847AE140000000
  %4128 = fadd fast float %4124, %4120
  %4129 = fmul fast float %4128, 0x3F847AE140000000
  %4130 = fadd fast float %4125, %4121
  %4131 = fmul fast float %4130, 0x3F847AE140000000
  br label %4406

; <label>:4132                                    ; preds = %3992
  %4133 = and i32 %151, 1
  %4134 = icmp eq i32 %4133, 0
  br i1 %4134, label %4406, label %4135

; <label>:4135                                    ; preds = %4132
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4143 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4146 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4147 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4148 = fadd fast float %4145, %4051
  %4149 = fadd fast float %4146, %4052
  %4150 = fadd fast float %4147, %4053
  %4151 = fmul fast float %4148, %4137
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4139, float %4151)  ; FMad(a,b,c)
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4141, float %4152)  ; FMad(a,b,c)
  %4154 = fmul fast float %4148, %4142
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4143, float %4154)  ; FMad(a,b,c)
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4144, float %4155)  ; FMad(a,b,c)
  %4157 = fsub fast float %4153, %4145
  %4158 = fsub fast float %4156, %4146
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4159, 2
  %4163 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.i32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.i32 %4166, 1
  %4169 = udiv i32 %4168, %4167
  %4170 = fsub fast float %4157, %4160
  %4171 = fsub fast float %4158, %4161
  %4172 = call float @dx.op.binary.f32(i32 35, float %4170, float 0.000000e+00)  ; FMax(a,b)
  %4173 = call float @dx.op.binary.f32(i32 35, float %4171, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call float @dx.op.binary.f32(i32 36, float %4172, float %4162)  ; FMin(a,b)
  %4175 = call float @dx.op.binary.f32(i32 36, float %4173, float %4163)  ; FMin(a,b)
  %4176 = add i32 %4167, -1
  %4177 = add i32 %4169, -1
  %4178 = fmul fast float %4174, %4165
  %4179 = fmul fast float %4175, %4165
  %4180 = fptoui float %4178 to i32
  %4181 = fptoui float %4179 to i32
  %4182 = call i32 @dx.op.binary.i32(i32 40, i32 %4180, i32 %4176)  ; UMin(a,b)
  %4183 = call i32 @dx.op.binary.i32(i32 40, i32 %4181, i32 %4177)  ; UMin(a,b)
  %4184 = mul i32 %4183, %4167
  %4185 = add i32 %4184, %4182
  %4186 = shl i32 %4185, 2
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = icmp eq i32 %4188, -1
  br i1 %4189, label %4406, label %4190

; <label>:4190                                    ; preds = %4135
  %4191 = mul i32 %4188, 148
  %4192 = add i32 %4191, 4
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = add i32 %4191, 8
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4191, 36
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = add i32 %4191, 60
  %4202 = add i32 %4191, 92
  %4203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.i32 %4203, 0
  %4205 = add i32 %4191, 116
  %4206 = fsub fast float %4157, %4194
  %4207 = fsub fast float %4158, %4197
  %4208 = fmul fast float %4165, %4206
  %4209 = fmul fast float %4165, %4207
  %4210 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4211 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4212 = fsub fast float 1.000000e+00, %4211
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 2
  %4215 = call float @dx.op.unary.f32(i32 83, float %4210)  ; DerivCoarseX(value)
  %4216 = call float @dx.op.unary.f32(i32 83, float %4212)  ; DerivCoarseX(value)
  %4217 = call float @dx.op.unary.f32(i32 84, float %4210)  ; DerivCoarseY(value)
  %4218 = call float @dx.op.unary.f32(i32 84, float %4212)  ; DerivCoarseY(value)
  %4219 = fmul fast float %4215, %4214
  %4220 = fmul fast float %4216, %4214
  %4221 = fmul fast float %4217, %4214
  %4222 = fmul fast float %4218, %4214
  %4223 = call float @dx.op.dot2.f32(i32 54, float %4221, float %4222, float %4221, float %4222)  ; Dot2(ax,ay,bx,by)
  %4224 = call float @dx.op.dot2.f32(i32 54, float %4219, float %4220, float %4219, float %4220)  ; Dot2(ax,ay,bx,by)
  %4225 = call float @dx.op.binary.f32(i32 35, float %4224, float %4223)  ; FMax(a,b)
  %4226 = call float @dx.op.unary.f32(i32 23, float %4225)  ; Log(value)
  %4227 = fmul fast float %4226, 5.000000e-01
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4230 = fadd fast float %4229, %4227
  %4231 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4234 = fadd fast float %4233, %4231
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4237 = fadd fast float %4234, %4236
  %4238 = add i32 %4204, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4239, i32 0)  ; GetDimensions(handle,mipLevel)
  %4241 = extractvalue %dx.types.Dimensions %4240, 0
  %4242 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4241)  ; FirstbitLo(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4245 = sub nsw i32 %4244, %4242
  %4246 = sitofp i32 %4245 to float
  %4247 = fsub fast float %4237, %4246
  %4248 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4239, %dx.types.Handle %27, float %4210, float %4212, float %4200, float undef, i32 0, i32 0, i32 undef, float %4248)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fcmp ule float %4250, 0x3FE0101020000000
  %4252 = extractvalue %dx.types.CBufRet.i32 %4243, 0
  %4253 = and i32 %4252, 128
  %4254 = icmp ne i32 %4253, 0
  %4255 = and i1 %4251, %4254
  br i1 %4255, label %4406, label %4256

; <label>:4256                                    ; preds = %4190
  %4257 = add i32 %4191, 20
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = add i32 %4191, 24
  %4261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4260, i32 undef)  ; BufferLoad(srv,index,wot)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = add i32 %4191, 40
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = add i32 %4191, 96
  %4267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.i32 %4267, 0
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4271 = fmul fast float %4270, %4210
  %4272 = fmul fast float %4270, %4212
  %4273 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4274 = fadd fast float %4271, %4273
  %4275 = fadd fast float %4272, %4273
  %4276 = add i32 %4268, 0
  %4277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4276, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4277, i32 0)  ; GetDimensions(handle,mipLevel)
  %4279 = extractvalue %dx.types.Dimensions %4278, 0
  %4280 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4279)  ; FirstbitLo(value)
  %4281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.i32 %4281, 1
  %4283 = sub nsw i32 %4282, %4280
  %4284 = sitofp i32 %4283 to float
  %4285 = fsub fast float %4234, %4284
  %4286 = call float @dx.op.binary.f32(i32 35, float %4285, float 0.000000e+00)  ; FMax(a,b)
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4277, %dx.types.Handle %27, float %4274, float %4275, float %4265, float undef, i32 0, i32 0, i32 undef, float %4286)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = fmul fast float %4288, %4259
  %4290 = fadd fast float %4289, %4262
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4299 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4300 = fadd fast float %4296, %4157
  %4301 = fadd fast float %4298, %4158
  %4302 = fadd fast float %4290, %4299
  %4303 = fmul fast float %4300, %4292
  %4304 = call float @dx.op.tertiary.f32(i32 46, float %4301, float %4293, float %4303)  ; FMad(a,b,c)
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4302, float %4294, float %4304)  ; FMad(a,b,c)
  %4306 = fsub fast float %4305, %4299
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4309 = fsub fast float %4306, %4308
  %4310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.i32 %4310, 0
  %4312 = call i32 @dx.op.binary.i32(i32 40, i32 %4188, i32 %4311)  ; UMin(a,b)
  %4313 = mul i32 %4312, 36
  %4314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %4315 = extractvalue %dx.types.ResRet.i32 %4314, 0
  %4316 = add i32 %4313, 4
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4210
  %4320 = fmul fast float %4318, %4212
  %4321 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4322 = fadd fast float %4319, %4321
  %4323 = fadd fast float %4320, %4321
  %4324 = icmp eq i32 %4315, 0
  br i1 %4324, label %4393, label %4325

; <label>:4325                                    ; preds = %4256
  br label %4326

; <label>:4326                                    ; preds = %4383, %4325
  %4327 = phi float [ %4384, %4383 ], [ 0.000000e+00, %4325 ]
  %4328 = phi float [ %4385, %4383 ], [ 0.000000e+00, %4325 ]
  %4329 = phi float [ %4386, %4383 ], [ 0.000000e+00, %4325 ]
  %4330 = phi float [ %4387, %4383 ], [ 0.000000e+00, %4325 ]
  %4331 = phi float [ %4388, %4383 ], [ 0.000000e+00, %4325 ]
  %4332 = phi float [ %4389, %4383 ], [ 0.000000e+00, %4325 ]
  %4333 = phi i32 [ %4390, %4383 ], [ 0, %4325 ]
  %4334 = shl i32 %4333, 2
  %4335 = add i32 %4201, %4334
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = add i32 %4205, %4334
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = add i32 %4340, 0
  %4342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4341, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4343 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4342, i32 0)  ; GetDimensions(handle,mipLevel)
  %4344 = extractvalue %dx.types.Dimensions %4343, 0
  %4345 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4344)  ; FirstbitLo(value)
  %4346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.i32 %4346, 1
  %4348 = sub nsw i32 %4347, %4345
  %4349 = sitofp i32 %4348 to float
  %4350 = fsub fast float %4234, %4349
  %4351 = call float @dx.op.binary.f32(i32 35, float %4350, float 0.000000e+00)  ; FMax(a,b)
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4342, %dx.types.Handle %27, float %4322, float %4323, float %4337, float undef, i32 0, i32 0, i32 undef, float %4351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = fcmp fast ogt float %4353, 0.000000e+00
  br i1 %4354, label %4355, label %4383

; <label>:4355                                    ; preds = %4326
  %4356 = add i32 %4316, %4334
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = and i32 %4358, 32767
  %4360 = mul nuw nsw i32 %4359, 928
  %4361 = add nuw nsw i32 %4360, 48
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = add nuw nsw i32 %4360, 60
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = fmul fast float %4363, %4353
  %4372 = fmul fast float %4364, %4353
  %4373 = fmul fast float %4365, %4353
  %4374 = fadd fast float %4371, %4327
  %4375 = fadd fast float %4372, %4328
  %4376 = fadd fast float %4373, %4329
  %4377 = fmul fast float %4368, %4353
  %4378 = fmul fast float %4369, %4353
  %4379 = fmul fast float %4370, %4353
  %4380 = fadd fast float %4377, %4330
  %4381 = fadd fast float %4378, %4331
  %4382 = fadd fast float %4379, %4332
  br label %4383

; <label>:4383                                    ; preds = %4355, %4326
  %4384 = phi float [ %4374, %4355 ], [ %4327, %4326 ]
  %4385 = phi float [ %4375, %4355 ], [ %4328, %4326 ]
  %4386 = phi float [ %4376, %4355 ], [ %4329, %4326 ]
  %4387 = phi float [ %4380, %4355 ], [ %4330, %4326 ]
  %4388 = phi float [ %4381, %4355 ], [ %4331, %4326 ]
  %4389 = phi float [ %4382, %4355 ], [ %4332, %4326 ]
  %4390 = add nuw i32 %4333, 1
  %4391 = icmp eq i32 %4390, %4315
  br i1 %4391, label %4392, label %4326

; <label>:4392                                    ; preds = %4383
  br label %4393

; <label>:4393                                    ; preds = %4392, %4256
  %4394 = phi float [ 0.000000e+00, %4256 ], [ %4384, %4392 ]
  %4395 = phi float [ 0.000000e+00, %4256 ], [ %4385, %4392 ]
  %4396 = phi float [ 0.000000e+00, %4256 ], [ %4386, %4392 ]
  %4397 = phi float [ 0.000000e+00, %4256 ], [ %4387, %4392 ]
  %4398 = phi float [ 0.000000e+00, %4256 ], [ %4388, %4392 ]
  %4399 = phi float [ 0.000000e+00, %4256 ], [ %4389, %4392 ]
  %4400 = fadd fast float %4397, %4394
  %4401 = fmul fast float %4400, 0x3F847AE140000000
  %4402 = fadd fast float %4398, %4395
  %4403 = fmul fast float %4402, 0x3F847AE140000000
  %4404 = fadd fast float %4399, %4396
  %4405 = fmul fast float %4404, 0x3F847AE140000000
  br label %4406

; <label>:4406                                    ; preds = %4393, %4190, %4135, %4132, %4103, %4065
  %4407 = phi float [ %4117, %4103 ], [ -1.310720e+05, %4065 ], [ %4309, %4393 ], [ -1.310720e+05, %4135 ], [ -1.310720e+05, %4190 ], [ -1.310720e+05, %4132 ]
  %4408 = phi float [ %4127, %4103 ], [ 0.000000e+00, %4065 ], [ %4401, %4393 ], [ 0.000000e+00, %4135 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4132 ]
  %4409 = phi float [ %4129, %4103 ], [ 0.000000e+00, %4065 ], [ %4403, %4393 ], [ 0.000000e+00, %4135 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4132 ]
  %4410 = phi float [ %4131, %4103 ], [ 0.000000e+00, %4065 ], [ %4405, %4393 ], [ 0.000000e+00, %4135 ], [ 0.000000e+00, %4190 ], [ 0.000000e+00, %4132 ]
  %4411 = phi i1 [ true, %4103 ], [ false, %4065 ], [ true, %4393 ], [ false, %4135 ], [ false, %4190 ], [ false, %4132 ]
  %4412 = and i32 %151, 3
  %4413 = icmp eq i32 %4412, 1
  %4414 = select i1 %4413, float 1.000000e+00, float 0.000000e+00
  %4415 = fsub fast float %4407, %135
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = select i1 %4411, float %4416, float 1.000000e+00
  %4418 = fmul fast float %4417, %4414
  %4419 = icmp eq i32 %4412, 3
  %4420 = select i1 %4419, float 1.000000e+00, float %4418
  %4421 = call float @dx.op.binary.f32(i32 35, float %4008, float %4420)  ; FMax(a,b)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fcmp fast une float %4422, 0.000000e+00
  %4424 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  br i1 %4423, label %4433, label %4426

; <label>:4426                                    ; preds = %4406
  %4427 = fmul fast float %4425, %133
  %4428 = fmul fast float %4425, %134
  %4429 = fmul fast float %4425, %135
  %4430 = fsub fast float -0.000000e+00, %4427
  %4431 = fsub fast float -0.000000e+00, %4428
  %4432 = fsub fast float -0.000000e+00, %4429
  br label %4601

; <label>:4433                                    ; preds = %4406
  %4434 = fmul fast float %133, %4425
  %4435 = fsub fast float -0.000000e+00, %4434
  %4436 = fmul fast float %134, %4425
  %4437 = fsub fast float -0.000000e+00, %4436
  %4438 = fmul fast float %135, %4425
  %4439 = fsub fast float -0.000000e+00, %4438
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4437, float %4439, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = fmul fast float %4422, 2.500000e+00
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4422, 0x4013FFFFE0000000
  %4444 = fadd fast float %4443, 0xBFFFFFFFE0000000
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fmul fast float %4422, 0x4004000020000000
  %4447 = fadd fast float %4446, 0xBFF8000040000000
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4450 = fmul fast float %4011, 1.000000e+01
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = fmul fast float %4451, 2.000000e+00
  %4453 = fsub fast float 3.000000e+00, %4452
  %4454 = fmul fast float %4451, %4451
  %4455 = fmul fast float %4454, %4453
  %4456 = fsub fast float 1.000000e+00, %4455
  %4457 = fsub fast float 0x3FE3333340000000, %4032
  %4458 = fmul fast float %4457, 0x400AAAAAA0000000
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fmul fast float %4456, %4459
  %4461 = fmul fast float %4044, 0x3FEA2B8620000000
  %4462 = fmul fast float %4045, 0x3FEA2B8620000000
  %4463 = fmul fast float %4046, 0x3FEA2B8620000000
  %4464 = fadd fast float %4461, 0x3FC81DFBA0000000
  %4465 = fmul fast float %4464, %4044
  %4466 = fadd fast float %4465, 0x3F910E6020000000
  %4467 = fadd fast float %4462, 0x3FC81DFBA0000000
  %4468 = fmul fast float %4467, %4045
  %4469 = fadd fast float %4468, 0x3F910E6020000000
  %4470 = fadd fast float %4463, 0x3FC81DFBA0000000
  %4471 = fmul fast float %4470, %4046
  %4472 = fadd fast float %4471, 0x3F910E6020000000
  %4473 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4475 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4476 = fsub fast float %4473, %4044
  %4477 = fsub fast float %4474, %4045
  %4478 = fsub fast float %4475, %4046
  %4479 = fmul fast float %4476, %4449
  %4480 = fmul fast float %4479, %4460
  %4481 = fmul fast float %4477, %4449
  %4482 = fmul fast float %4481, %4460
  %4483 = fmul fast float %4478, %4449
  %4484 = fmul fast float %4483, %4460
  %4485 = fadd fast float %4480, %4044
  %4486 = fadd fast float %4482, %4045
  %4487 = fadd fast float %4484, %4046
  %4488 = fmul fast float %4005, %4005
  %4489 = fmul fast float %4488, %4488
  %4490 = fadd fast float %4445, 1.000000e+00
  %4491 = fsub fast float %4490, %4460
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fsub fast float 1.000000e+00, %4489
  %4496 = call float @dx.op.binary.f32(i32 36, float %4492, float %4495)  ; FMin(a,b)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4498 = call float @dx.op.binary.f32(i32 35, float %4496, float %4497)  ; FMax(a,b)
  %4499 = fadd fast float %4494, 0xBFE4CCCCC0000000
  %4500 = fmul fast float %4499, 0x4006DB6DA0000000
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fmul fast float %4501, 2.000000e+00
  %4503 = fsub fast float 3.000000e+00, %4502
  %4504 = bitcast float %4029 to i32
  %4505 = ashr i32 %4504, 1
  %4506 = add nsw i32 %4505, 532487669
  %4507 = bitcast i32 %4506 to float
  %4508 = fsub fast float 1.000000e+00, %4507
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, 2.000000e+00
  %4513 = bitcast float %4030 to i32
  %4514 = ashr i32 %4513, 1
  %4515 = add nsw i32 %4514, 532487669
  %4516 = bitcast i32 %4515 to float
  %4517 = fsub fast float 1.000000e+00, %4516
  %4518 = bitcast float %4517 to i32
  %4519 = sub nsw i32 2129859010, %4518
  %4520 = bitcast i32 %4519 to float
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = bitcast float %4031 to i32
  %4523 = ashr i32 %4522, 1
  %4524 = add nsw i32 %4523, 532487669
  %4525 = bitcast i32 %4524 to float
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = bitcast float %4526 to i32
  %4528 = sub nsw i32 2129859010, %4527
  %4529 = bitcast i32 %4528 to float
  %4530 = fmul fast float %4529, 2.000000e+00
  %4531 = fsub fast float 0x4002A9FBE0000000, %4512
  %4532 = fadd fast float %4512, 0x3FD54FDF00000000
  %4533 = bitcast float %4532 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, %4531
  %4537 = fmul fast float %4536, %4536
  %4538 = fsub fast float 0x4002A9FBE0000000, %4521
  %4539 = fadd fast float %4521, 0x3FD54FDF00000000
  %4540 = bitcast float %4539 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, %4538
  %4544 = fmul fast float %4543, %4543
  %4545 = fsub fast float 0x4002A9FBE0000000, %4530
  %4546 = fadd fast float %4530, 0x3FD54FDF00000000
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, %4545
  %4551 = fmul fast float %4550, %4550
  %4552 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4537)  ; FMax(a,b)
  %4553 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4544)  ; FMax(a,b)
  %4554 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4551)  ; FMax(a,b)
  %4555 = fsub fast float 1.000000e+00, %4440
  %4556 = fadd fast float %4555, %4456
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fsub fast float 1.000000e+00, %4420
  %4559 = fmul fast float %4498, %4558
  %4560 = fmul fast float %4501, %4501
  %4561 = fmul fast float %4560, %4559
  %4562 = fmul fast float %4561, %4503
  %4563 = fmul fast float %4558, 0xBFE99999A0000000
  %4564 = fmul fast float %4563, %4449
  %4565 = fmul fast float %4564, %4460
  %4566 = fadd fast float %4565, 1.000000e+00
  %4567 = fadd fast float %4032, -1.000000e+00
  %4568 = fmul fast float %4566, %4567
  %4569 = fadd fast float %4568, 1.000000e+00
  %4570 = fsub fast float %4552, %4029
  %4571 = fsub fast float %4553, %4030
  %4572 = fsub fast float %4554, %4031
  %4573 = fmul fast float %4562, %4570
  %4574 = fmul fast float %4562, %4571
  %4575 = fmul fast float %4562, %4572
  %4576 = fadd fast float %4573, %4029
  %4577 = fadd fast float %4574, %4030
  %4578 = fadd fast float %4575, %4031
  %4579 = fsub fast float %77, %3993
  %4580 = fsub fast float %78, %3994
  %4581 = fsub fast float %79, %3995
  %4582 = fmul fast float %4562, %4579
  %4583 = fmul fast float %4562, %4580
  %4584 = fmul fast float %4562, %4581
  %4585 = fadd fast float %4582, %3993
  %4586 = fadd fast float %4583, %3994
  %4587 = fadd fast float %4584, %3995
  %4588 = fmul fast float %4562, %4557
  %4589 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4590 = fsub fast float 1.000000e+00, %4589
  %4591 = fmul fast float %4588, %4590
  %4592 = fadd fast float %4591, %4589
  %4593 = fsub fast float 1.000000e+00, %4005
  %4594 = fmul fast float %4562, %4593
  %4595 = fadd fast float %4594, %4005
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4587, float %4585, float %4586, float %4587)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  %4598 = fmul fast float %4585, %4597
  %4599 = fmul fast float %4586, %4597
  %4600 = fmul fast float %4587, %4597
  br label %4601

; <label>:4601                                    ; preds = %4433, %4426
  %4602 = phi float [ %4432, %4426 ], [ %4439, %4433 ]
  %4603 = phi float [ %4431, %4426 ], [ %4437, %4433 ]
  %4604 = phi float [ %4430, %4426 ], [ %4435, %4433 ]
  %4605 = phi float [ %4429, %4426 ], [ %4438, %4433 ]
  %4606 = phi float [ %4428, %4426 ], [ %4436, %4433 ]
  %4607 = phi float [ %4427, %4426 ], [ %4434, %4433 ]
  %4608 = phi float [ %4029, %4426 ], [ %4576, %4433 ]
  %4609 = phi float [ %4030, %4426 ], [ %4577, %4433 ]
  %4610 = phi float [ %4031, %4426 ], [ %4578, %4433 ]
  %4611 = phi float [ %4044, %4426 ], [ %4485, %4433 ]
  %4612 = phi float [ %4045, %4426 ], [ %4486, %4433 ]
  %4613 = phi float [ %4046, %4426 ], [ %4487, %4433 ]
  %4614 = phi float [ %3993, %4426 ], [ %4598, %4433 ]
  %4615 = phi float [ %3994, %4426 ], [ %4599, %4433 ]
  %4616 = phi float [ %3995, %4426 ], [ %4600, %4433 ]
  %4617 = phi float [ %4032, %4426 ], [ %4592, %4433 ]
  %4618 = phi float [ %4005, %4426 ], [ %4595, %4433 ]
  %4619 = select i1 %175, float 0.000000e+00, float %4610
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %4604, float %4603, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4606, float %4605, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = fmul fast float %4622, 2.000000e+00
  %4624 = fmul fast float %4623, %4614
  %4625 = fmul fast float %4623, %4615
  %4626 = fmul fast float %4623, %4616
  %4627 = fsub fast float %4607, %4624
  %4628 = fsub fast float %4606, %4625
  %4629 = fsub fast float %4605, %4626
  %4630 = call float @dx.op.binary.f32(i32 36, float %4618, float 1.000000e+00)  ; FMin(a,b)
  %4631 = fsub fast float 1.000000e+00, %4618
  %4632 = bitcast float %4631 to i32
  %4633 = sub nsw i32 2129859010, %4632
  %4634 = fsub fast float 1.000000e+00, %47
  %4635 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4635, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4637 = fdiv fast float %4634, %4636
  %4638 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, 5.000000e-01
  %4641 = fadd fast float %4640, 5.000000e-01
  %4642 = fmul fast float %4641, %47
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, %4637
  %4646 = fadd fast float %4642, %4645
  %4647 = fsub fast float 5.000000e-01, %4640
  %4648 = fmul fast float %4647, %4611
  %4649 = fmul fast float %4647, %4612
  %4650 = fmul fast float %4647, %4613
  %4651 = fadd fast float %4646, %4648
  %4652 = fadd fast float %4646, %4649
  %4653 = fadd fast float %4646, %4650
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = fmul fast float %4655, 5.000000e-01
  %4657 = fadd fast float %4656, 5.000000e-01
  %4658 = fmul fast float %4657, %47
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fmul fast float %4660, %4637
  %4662 = fadd fast float %4658, %4661
  %4663 = fsub fast float 5.000000e-01, %4656
  %4664 = fmul fast float %4663, %4611
  %4665 = fmul fast float %4663, %4612
  %4666 = fmul fast float %4663, %4613
  %4667 = fadd fast float %4662, %4664
  %4668 = fadd fast float %4662, %4665
  %4669 = fadd fast float %4662, %4666
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = call float @dx.op.binary.f32(i32 36, float %4611, float %4671)  ; FMin(a,b)
  %4673 = fsub fast float 1.000000e+00, %4630
  %4674 = fmul fast float %4672, %4673
  %4675 = fsub fast float 1.000000e+00, %4674
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = call float @dx.op.binary.f32(i32 36, float %4612, float %4671)  ; FMin(a,b)
  %4680 = fmul fast float %4679, %4673
  %4681 = fsub fast float 1.000000e+00, %4680
  %4682 = bitcast float %4681 to i32
  %4683 = sub nsw i32 2129859010, %4682
  %4684 = bitcast i32 %4683 to float
  %4685 = call float @dx.op.binary.f32(i32 36, float %4613, float %4671)  ; FMin(a,b)
  %4686 = fmul fast float %4685, %4673
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = bitcast float %4687 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4630, %48
  %4692 = fmul fast float %4691, %4651
  %4693 = fmul fast float %4692, %4678
  %4694 = fmul fast float %4630, %49
  %4695 = fmul fast float %4694, %4652
  %4696 = fmul fast float %4695, %4684
  %4697 = fmul fast float %4630, %50
  %4698 = fmul fast float %4697, %4653
  %4699 = fmul fast float %4698, %4690
  %4700 = call float @dx.op.binary.f32(i32 36, float %4608, float %4671)  ; FMin(a,b)
  %4701 = fmul fast float %4700, %4673
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = bitcast float %4702 to i32
  %4704 = sub nsw i32 2129859010, %4703
  %4705 = bitcast i32 %4704 to float
  %4706 = call float @dx.op.binary.f32(i32 36, float %4609, float %4671)  ; FMin(a,b)
  %4707 = fmul fast float %4706, %4673
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = bitcast float %4708 to i32
  %4710 = sub nsw i32 2129859010, %4709
  %4711 = bitcast i32 %4710 to float
  %4712 = call float @dx.op.binary.f32(i32 36, float %4619, float %4671)  ; FMin(a,b)
  %4713 = fmul fast float %4712, %4673
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = fmul fast float %4691, %4667
  %4719 = fmul fast float %4718, %4705
  %4720 = fmul fast float %4694, %4668
  %4721 = fmul fast float %4720, %4711
  %4722 = fmul fast float %4697, %4669
  %4723 = fmul fast float %4722, %4717
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4696, float %4699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = select i1 %175, float 0.000000e+00, float %4693
  %4726 = select i1 %175, float %4724, float %4696
  %4727 = select i1 %175, float 0.000000e+00, float %4699
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4721, float %4723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = select i1 %175, float 0.000000e+00, float %4719
  %4730 = select i1 %175, float %4728, float %4721
  %4731 = select i1 %175, float 0.000000e+00, float %4723
  %4732 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4733 = fmul fast float %4732, %4725
  %4734 = fmul fast float %4732, %4726
  %4735 = fmul fast float %4727, %4732
  %4736 = fmul fast float %4621, 9.843750e-01
  %4737 = fmul fast float %4617, 9.843750e-01
  %4738 = fadd fast float %4736, 7.812500e-03
  %4739 = fadd fast float %4737, 7.812500e-03
  %4740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4738, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 2
  %4742 = extractvalue %dx.types.ResRet.f32 %4740, 3
  %4743 = fmul fast float %4741, %4608
  %4744 = fmul fast float %4741, %4609
  %4745 = fmul fast float %4741, %4619
  %4746 = fadd fast float %4743, %4742
  %4747 = fadd fast float %4744, %4742
  %4748 = fadd fast float %4745, %4742
  %4749 = fcmp fast ogt float %4006, 0.000000e+00
  br i1 %4749, label %4750, label %4776

; <label>:4750                                    ; preds = %4601
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4006, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = fadd fast float %4752, -5.000000e-01
  %4756 = fadd fast float %4753, -5.000000e-01
  %4757 = fadd fast float %4754, -5.000000e-01
  %4758 = fsub fast float 1.000000e+00, %4608
  %4759 = fsub fast float 1.000000e+00, %4609
  %4760 = fsub fast float 1.000000e+00, %4619
  %4761 = fmul fast float %4608, 4.000000e+00
  %4762 = fmul fast float %4761, %4758
  %4763 = fmul fast float %4762, %4755
  %4764 = fmul fast float %4609, 4.000000e+00
  %4765 = fmul fast float %4764, %4759
  %4766 = fmul fast float %4765, %4756
  %4767 = fmul fast float %4619, 4.000000e+00
  %4768 = fmul fast float %4767, %4760
  %4769 = fmul fast float %4768, %4757
  %4770 = fadd fast float %4763, %4746
  %4771 = fadd fast float %4766, %4747
  %4772 = fadd fast float %4769, %4748
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  br label %4776

; <label>:4776                                    ; preds = %4750, %4601
  %4777 = phi float [ %4773, %4750 ], [ %4746, %4601 ]
  %4778 = phi float [ %4774, %4750 ], [ %4747, %4601 ]
  %4779 = phi float [ %4775, %4750 ], [ %4748, %4601 ]
  %4780 = call float @dx.op.binary.f32(i32 35, float %4778, float %4779)  ; FMax(a,b)
  %4781 = call float @dx.op.binary.f32(i32 35, float %4777, float %4780)  ; FMax(a,b)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = fmul fast float %133, %133
  %4784 = fmul fast float %134, %134
  %4785 = fadd fast float %4784, %4783
  %4786 = fmul fast float %135, %135
  %4787 = fadd fast float %4785, %4786
  %4788 = call float @dx.op.unary.f32(i32 24, float %4787)  ; Sqrt(value)
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4791 = fsub fast float %4788, %4790
  %4792 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4793 = fmul fast float %4791, %4792
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4797 = fmul fast float %4794, %36
  %4798 = fmul fast float %4797, %4795
  %4799 = fmul fast float %4797, %4796
  %4800 = fadd fast float %4799, 1.000000e+00
  %4801 = fmul fast float %4782, %4733
  %4802 = fmul fast float %4801, %4800
  %4803 = fmul fast float %4782, %4734
  %4804 = fmul fast float %4803, %4800
  %4805 = fmul fast float %4782, %4735
  %4806 = fmul fast float %4805, %4800
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = fcmp fast ogt float %4807, 0x3E7FF19E20000000
  %4809 = fdiv fast float 1.000000e+00, %4807
  %4810 = select i1 %4808, float %4809, float 0.000000e+00
  %4811 = fmul fast float %4810, %4611
  %4812 = fmul fast float %4810, %4612
  %4813 = fmul fast float %4810, %4613
  %4814 = fadd fast float %4811, -1.000000e+00
  %4815 = fadd fast float %4812, -1.000000e+00
  %4816 = fadd fast float %4813, -1.000000e+00
  %4817 = fmul fast float %4814, 5.000000e-01
  %4818 = fmul fast float %4815, 5.000000e-01
  %4819 = fmul fast float %4816, 5.000000e-01
  %4820 = fadd fast float %4817, 1.000000e+00
  %4821 = fadd fast float %4818, 1.000000e+00
  %4822 = fadd fast float %4819, 1.000000e+00
  %4823 = fadd fast float %4798, %4007
  %4824 = fmul fast float %4777, %4729
  %4825 = fmul fast float %4778, %4730
  %4826 = fmul fast float %4779, %4731
  %4827 = fsub fast float 1.000000e+00, %4621
  %4828 = bitcast float %4827 to i32
  %4829 = sitofp i32 %4828 to float
  %4830 = fmul fast float %4829, 5.000000e+00
  %4831 = fadd fast float %4830, 0xC1EFBF8940000000
  %4832 = fptosi float %4831 to i32
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4823, %4833
  %4835 = fmul fast float %4801, %4834
  %4836 = fmul fast float %4835, %4820
  %4837 = fmul fast float %4803, %4834
  %4838 = fmul fast float %4837, %4821
  %4839 = fmul fast float %4805, %4834
  %4840 = fmul fast float %4839, %4822
  %4841 = fmul fast float %4802, %4003
  %4842 = fmul fast float %4804, %4003
  %4843 = fmul fast float %4806, %4003
  %4844 = fadd fast float %4824, %3999
  %4845 = fadd fast float %4844, %4836
  %4846 = fmul fast float %4845, %4003
  %4847 = fadd fast float %4825, %4000
  %4848 = fadd fast float %4847, %4838
  %4849 = fmul fast float %4848, %4003
  %4850 = fadd fast float %4826, %4001
  %4851 = fadd fast float %4850, %4840
  %4852 = fmul fast float %4851, %4003
  %4853 = bitcast i32 %4633 to float
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4856 = fcmp fast oeq float %4855, 0.000000e+00
  br i1 %4856, label %5084, label %4857

; <label>:4857                                    ; preds = %4776
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = select i1 %175, float %4866, float %4862
  %4870 = select i1 %175, float %4868, float %4863
  %4871 = select i1 %175, float %4867, float %4864
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4874 = fcmp fast une float %4873, 0.000000e+00
  br i1 %4874, label %4875, label %4892

; <label>:4875                                    ; preds = %4857
  %4876 = fptoui float %70 to i32
  %4877 = fptoui float %71 to i32
  %4878 = lshr i32 %4876, 4
  %4879 = lshr i32 %4877, 4
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = fptoui float %4881 to i32
  %4883 = add i32 %4882, 15
  %4884 = lshr i32 %4883, 4
  %4885 = mul i32 %4884, %4879
  %4886 = add i32 %4885, %4878
  %4887 = shl i32 %4886, 3
  %4888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.i32 %4888, 0
  %4890 = and i32 %4889, -268435456
  %4891 = icmp eq i32 %4890, -1342177280
  br i1 %4891, label %4902, label %4892

; <label>:4892                                    ; preds = %4875, %4857
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4895 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4896 = fmul fast float %4894, %70
  %4897 = fmul fast float %4895, %71
  %4898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4896, float %4897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.ResRet.f32 %4898, 2
  br label %4902

; <label>:4902                                    ; preds = %4892, %4875
  %4903 = phi float [ %4899, %4892 ], [ 0.000000e+00, %4875 ]
  %4904 = phi float [ %4900, %4892 ], [ 0.000000e+00, %4875 ]
  %4905 = phi float [ %4901, %4892 ], [ 0.000000e+00, %4875 ]
  %4906 = call float @dx.op.binary.f32(i32 36, float %4904, float %4905)  ; FMin(a,b)
  %4907 = call float @dx.op.binary.f32(i32 36, float %4903, float %4906)  ; FMin(a,b)
  %4908 = fcmp fast ogt float %4907, 0.000000e+00
  br i1 %4908, label %4909, label %5084, !dx.controlflow.hints !76

; <label>:4909                                    ; preds = %4902
  %4910 = fmul fast float %4903, %4869
  %4911 = fmul fast float %4904, %4870
  %4912 = fmul fast float %4905, %4871
  %4913 = fsub fast float %4858, %4607
  %4914 = fsub fast float %4859, %4606
  %4915 = fsub fast float %4860, %4605
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4914, float %4915, float %4913, float %4914, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = call float @dx.op.unary.f32(i32 25, float %4916)  ; Rsqrt(value)
  %4918 = fmul fast float %4917, %4913
  %4919 = fmul fast float %4917, %4914
  %4920 = fmul fast float %4917, %4915
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4603, float %4602, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4924 = fmul fast float %4923, %4923
  %4925 = fmul fast float %4924, %4853
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4923
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = fmul fast float %4928, %4928
  %4930 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4931 = fsub fast float 1.000000e+00, %4617
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0x3F847AE140000000)  ; FMax(a,b)
  %4933 = fmul fast float %4932, %4932
  %4934 = fmul fast float %4933, %4933
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fmul fast float %4621, %4621
  %4937 = fmul fast float %4936, %4935
  %4938 = fadd fast float %4937, %4934
  %4939 = bitcast float %4938 to i32
  %4940 = ashr i32 %4939, 1
  %4941 = add nsw i32 %4940, 532487669
  %4942 = bitcast i32 %4941 to float
  %4943 = fadd fast float %4942, %4621
  %4944 = fmul fast float %4934, %4929
  %4945 = fsub fast float 1.000000e+00, %4929
  %4946 = fadd fast float %4945, %4944
  %4947 = fmul fast float %4930, %4930
  %4948 = fmul fast float %4947, %4935
  %4949 = fadd fast float %4948, %4934
  %4950 = bitcast float %4949 to i32
  %4951 = ashr i32 %4950, 1
  %4952 = add nsw i32 %4951, 532487669
  %4953 = bitcast i32 %4952 to float
  %4954 = fadd fast float %4953, %4930
  %4955 = fmul fast float %4946, %4946
  %4956 = fmul fast float %4955, %4943
  %4957 = fmul fast float %4956, %4954
  %4958 = fdiv fast float 0x3FF0A00000000000, %4957
  %4959 = fmul fast float %4958, %4934
  %4960 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4961 = fsub fast float 1.000000e+00, %4960
  %4962 = bitcast float %4961 to i32
  %4963 = sitofp i32 %4962 to float
  %4964 = fmul fast float %4963, 5.000000e+00
  %4965 = fadd fast float %4964, 0xC1EFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fsub fast float 1.000000e+00, %4608
  %4969 = fsub fast float 1.000000e+00, %4609
  %4970 = fsub fast float 1.000000e+00, %4619
  %4971 = fmul fast float %4967, %4968
  %4972 = fmul fast float %4967, %4969
  %4973 = fmul fast float %4967, %4970
  %4974 = fadd fast float %4971, %4608
  %4975 = fadd fast float %4972, %4609
  %4976 = fadd fast float %4973, %4619
  br i1 %4749, label %4977, label %5000

; <label>:4977                                    ; preds = %4909
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4006, float %4960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.ResRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.ResRet.f32 %4978, 2
  %4982 = fadd fast float %4979, -5.000000e-01
  %4983 = fadd fast float %4980, -5.000000e-01
  %4984 = fadd fast float %4981, -5.000000e-01
  %4985 = fmul fast float %4608, 4.000000e+00
  %4986 = fmul fast float %4985, %4968
  %4987 = fmul fast float %4986, %4982
  %4988 = fmul fast float %4609, 4.000000e+00
  %4989 = fmul fast float %4988, %4969
  %4990 = fmul fast float %4989, %4983
  %4991 = fmul fast float %4619, 4.000000e+00
  %4992 = fmul fast float %4991, %4970
  %4993 = fmul fast float %4992, %4984
  %4994 = fadd fast float %4987, %4974
  %4995 = fadd fast float %4990, %4975
  %4996 = fadd fast float %4993, %4976
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  br label %5000

; <label>:5000                                    ; preds = %4977, %4909
  %5001 = phi float [ %4997, %4977 ], [ %4974, %4909 ]
  %5002 = phi float [ %4998, %4977 ], [ %4975, %4909 ]
  %5003 = phi float [ %4999, %4977 ], [ %4976, %4909 ]
  %5004 = fmul fast float %4921, 9.843750e-01
  %5005 = fadd fast float %5004, 7.812500e-03
  %5006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5005, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5007 = extractvalue %dx.types.ResRet.f32 %5006, 2
  %5008 = extractvalue %dx.types.ResRet.f32 %5006, 3
  %5009 = fmul fast float %5007, %4608
  %5010 = fmul fast float %5007, %4609
  %5011 = fmul fast float %5007, %4619
  %5012 = fadd fast float %5009, %5008
  %5013 = fadd fast float %5010, %5008
  %5014 = fadd fast float %5011, %5008
  br i1 %4749, label %5015, label %5038

; <label>:5015                                    ; preds = %5000
  %5016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4006, float %4921, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = fadd fast float %5017, -5.000000e-01
  %5021 = fadd fast float %5018, -5.000000e-01
  %5022 = fadd fast float %5019, -5.000000e-01
  %5023 = fmul fast float %4608, 4.000000e+00
  %5024 = fmul fast float %5023, %4968
  %5025 = fmul fast float %5024, %5020
  %5026 = fmul fast float %4609, 4.000000e+00
  %5027 = fmul fast float %5026, %4969
  %5028 = fmul fast float %5027, %5021
  %5029 = fmul fast float %4619, 4.000000e+00
  %5030 = fmul fast float %5029, %4970
  %5031 = fmul fast float %5030, %5022
  %5032 = fadd fast float %5025, %5012
  %5033 = fadd fast float %5028, %5013
  %5034 = fadd fast float %5031, %5014
  %5035 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5037 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  br label %5038

; <label>:5038                                    ; preds = %5015, %5000
  %5039 = phi float [ %5035, %5015 ], [ %5012, %5000 ]
  %5040 = phi float [ %5036, %5015 ], [ %5013, %5000 ]
  %5041 = phi float [ %5037, %5015 ], [ %5014, %5000 ]
  %5042 = call float @dx.op.binary.f32(i32 35, float %5040, float %5041)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float %5039, float %5042)  ; FMax(a,b)
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = fmul fast float %5001, %4959
  %5046 = fmul fast float %5002, %4959
  %5047 = fmul fast float %5003, %4959
  %5048 = fsub fast float 1.000000e+00, %4922
  %5049 = bitcast float %5048 to i32
  %5050 = sitofp i32 %5049 to float
  %5051 = fmul fast float %5050, 5.000000e+00
  %5052 = fadd fast float %5051, 0xC1EFBF8940000000
  %5053 = fptosi float %5052 to i32
  %5054 = bitcast i32 %5053 to float
  %5055 = fmul fast float %5054, %4007
  %5056 = fmul fast float %5044, %5055
  %5057 = fmul fast float %5056, %4820
  %5058 = fmul fast float %5056, %4821
  %5059 = fmul fast float %5056, %4822
  %5060 = fadd fast float %5057, %5045
  %5061 = fadd fast float %5058, %5046
  %5062 = fadd fast float %5059, %5047
  %5063 = fmul fast float %4927, %4910
  %5064 = fmul fast float %5063, %5044
  %5065 = fmul fast float %4927, %4911
  %5066 = fmul fast float %5065, %5044
  %5067 = fmul fast float %4927, %4912
  %5068 = fmul fast float %5067, %5044
  %5069 = fmul fast float %5063, %5060
  %5070 = fmul fast float %5065, %5061
  %5071 = fmul fast float %5067, %5062
  %5072 = fadd fast float %5064, %4802
  %5073 = fmul fast float %5072, %4003
  %5074 = fadd fast float %5066, %4804
  %5075 = fmul fast float %5074, %4003
  %5076 = fadd fast float %5068, %4806
  %5077 = fmul fast float %5076, %4003
  %5078 = fadd fast float %5069, %4845
  %5079 = fmul fast float %5078, %4003
  %5080 = fadd fast float %5070, %4848
  %5081 = fmul fast float %5080, %4003
  %5082 = fadd fast float %5071, %4851
  %5083 = fmul fast float %5082, %4003
  br label %5084

; <label>:5084                                    ; preds = %5038, %4902, %4776
  %5085 = phi float [ %4846, %4776 ], [ %4846, %4902 ], [ %5079, %5038 ]
  %5086 = phi float [ %4849, %4776 ], [ %4849, %4902 ], [ %5081, %5038 ]
  %5087 = phi float [ %4852, %4776 ], [ %4852, %4902 ], [ %5083, %5038 ]
  %5088 = phi float [ %4841, %4776 ], [ %4841, %4902 ], [ %5073, %5038 ]
  %5089 = phi float [ %4842, %4776 ], [ %4842, %4902 ], [ %5075, %5038 ]
  %5090 = phi float [ %4843, %4776 ], [ %4843, %4902 ], [ %5077, %5038 ]
  %5091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.i32 %5091, 0
  %5093 = icmp eq i32 %5092, 0
  br i1 %5093, label %5528, label %5094

; <label>:5094                                    ; preds = %5084
  %5095 = fptoui float %70 to i32
  %5096 = fptoui float %71 to i32
  %5097 = lshr i32 %5095, 4
  %5098 = lshr i32 %5096, 4
  %5099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.i32 %5099, 0
  %5101 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5098, i32 %5100, i32 %5097)  ; UMad(a,b,c)
  %5102 = add nsw i32 %5092, -1
  %5103 = call i32 @dx.op.binary.i32(i32 37, i32 %5102, i32 0)  ; IMax(a,b)
  %5104 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %5105 = fptoui float %5104 to i32
  %5106 = lshr i32 %5105, 5
  %5107 = call i32 @dx.op.binary.i32(i32 40, i32 %5106, i32 8191)  ; UMin(a,b)
  %5108 = shl i32 %5107, 2
  %5109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5108, i32 undef)  ; BufferLoad(srv,index,wot)
  %5110 = extractvalue %dx.types.ResRet.i32 %5109, 0
  %5111 = lshr i32 %5110, 16
  %5112 = and i32 %5110, 65535
  %5113 = lshr i32 %5110, 21
  %5114 = lshr i32 %5112, 5
  %5115 = call i32 @dx.op.binary.i32(i32 40, i32 %5114, i32 %5103)  ; UMin(a,b)
  %5116 = icmp ugt i32 %5113, %5115
  br i1 %5116, label %5528, label %5117

; <label>:5117                                    ; preds = %5094
  br label %5118

; <label>:5118                                    ; preds = %5518, %5117
  %5119 = phi i32 [ %5525, %5518 ], [ %5113, %5117 ]
  %5120 = phi float [ %5519, %5518 ], [ %5085, %5117 ]
  %5121 = phi float [ %5520, %5518 ], [ %5086, %5117 ]
  %5122 = phi float [ %5521, %5518 ], [ %5087, %5117 ]
  %5123 = phi float [ %5522, %5518 ], [ %5088, %5117 ]
  %5124 = phi float [ %5523, %5518 ], [ %5089, %5117 ]
  %5125 = phi float [ %5524, %5518 ], [ %5090, %5117 ]
  %5126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.i32 %5126, 0
  %5128 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5101, i32 %5127, i32 %5119)  ; UMad(a,b,c)
  %5129 = shl i32 %5128, 2
  %5130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5129, i32 undef)  ; BufferLoad(srv,index,wot)
  %5131 = extractvalue %dx.types.ResRet.i32 %5130, 0
  %5132 = shl i32 %5119, 5
  %5133 = sub nsw i32 %5111, %5132
  %5134 = call i32 @dx.op.binary.i32(i32 37, i32 %5133, i32 0)  ; IMax(a,b)
  %5135 = call i32 @dx.op.binary.i32(i32 38, i32 %5134, i32 31)  ; IMin(a,b)
  %5136 = sub nsw i32 1, %5111
  %5137 = add nsw i32 %5136, %5112
  %5138 = call i32 @dx.op.binary.i32(i32 37, i32 %5137, i32 0)  ; IMax(a,b)
  %5139 = call i32 @dx.op.binary.i32(i32 38, i32 %5138, i32 32)  ; IMin(a,b)
  %5140 = and i32 %5139, 31
  %5141 = shl i32 -1, %5140
  %5142 = xor i32 %5141, -1
  %5143 = and i32 %5135, 31
  %5144 = shl i32 %5142, %5143
  %5145 = icmp eq i32 %5139, 32
  %5146 = select i1 %5145, i32 -1, i32 %5144
  %5147 = and i32 %5146, %5131
  %5148 = icmp eq i32 %5147, 0
  br i1 %5148, label %5518, label %5149

; <label>:5149                                    ; preds = %5118
  br label %5150

; <label>:5150                                    ; preds = %5230, %5149
  %5151 = phi i32 [ %5162, %5230 ], [ %5147, %5149 ]
  %5152 = phi float [ %5231, %5230 ], [ %5120, %5149 ]
  %5153 = phi float [ %5232, %5230 ], [ %5121, %5149 ]
  %5154 = phi float [ %5233, %5230 ], [ %5122, %5149 ]
  %5155 = phi float [ %5234, %5230 ], [ %5123, %5149 ]
  %5156 = phi float [ %5235, %5230 ], [ %5124, %5149 ]
  %5157 = phi float [ %5236, %5230 ], [ %5125, %5149 ]
  %5158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5151)  ; FirstbitLo(value)
  %5159 = add i32 %5158, %5132
  %5160 = and i32 %5158, 31
  %5161 = shl i32 1, %5160
  %5162 = xor i32 %5161, %5151
  %5163 = mul i32 %5159, 112
  %5164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = or i32 %5163, 12
  %5169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5168, i32 undef)  ; BufferLoad(srv,index,wot)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  %5171 = add i32 %5163, 44
  %5172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5171, i32 undef)  ; BufferLoad(srv,index,wot)
  %5173 = extractvalue %dx.types.ResRet.f32 %5172, 0
  %5174 = add i32 %5163, 48
  %5175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 0
  %5177 = extractvalue %dx.types.ResRet.f32 %5175, 1
  %5178 = extractvalue %dx.types.ResRet.f32 %5175, 2
  %5179 = add i32 %5163, 80
  %5180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = select i1 %175, float %5181, float %5165
  %5185 = select i1 %175, float %5183, float %5166
  %5186 = select i1 %175, float %5182, float %5167
  %5187 = fsub fast float %5176, %133
  %5188 = fsub fast float %5177, %134
  %5189 = fsub fast float %5178, %135
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 24, float %5190)  ; Sqrt(value)
  %5192 = fdiv fast float 1.000000e+00, %5191
  %5193 = fmul fast float %5192, %5187
  %5194 = fmul fast float %5192, %5188
  %5195 = fmul fast float %5192, %5189
  %5196 = fadd fast float %5191, %5170
  %5197 = fdiv fast float 1.000000e+00, %5196
  %5198 = fmul float %5173, %5197
  %5199 = fmul float %5198, %5198
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = and i32 %5161, %5147
  %5202 = icmp eq i32 %5201, 0
  br i1 %5202, label %5225, label %5203, !dx.controlflow.hints !77

; <label>:5203                                    ; preds = %5150
  %5204 = lshr i32 %5095, 5
  %5205 = lshr i32 %5096, 5
  %5206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5204, i32 %5205, i32 %5159, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5207 = extractvalue %dx.types.ResRet.i32 %5206, 0
  %5208 = and i32 %5207, 3
  %5209 = icmp eq i32 %5208, 0
  %5210 = select i1 %5209, float 1.000000e+00, float 0.000000e+00
  %5211 = icmp eq i32 %5208, 3
  br i1 %5211, label %5212, label %5225

; <label>:5212                                    ; preds = %5203
  %5213 = lshr i32 %5207, 10
  %5214 = and i32 %5213, 8160
  %5215 = and i32 %5096, 31
  %5216 = or i32 %5214, %5215
  %5217 = lshr i32 %5207, 1
  %5218 = and i32 %5217, 16352
  %5219 = and i32 %5095, 31
  %5220 = or i32 %5218, %5219
  %5221 = lshr i32 %5207, 23
  %5222 = and i32 %5221, 255
  %5223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5220, i32 %5216, i32 %5222, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  br label %5225

; <label>:5225                                    ; preds = %5212, %5203, %5150
  %5226 = phi float [ %5224, %5212 ], [ %5210, %5203 ], [ 0.000000e+00, %5150 ]
  %5227 = call float @dx.op.binary.f32(i32 36, float %5226, float %5226)  ; FMin(a,b)
  %5228 = call float @dx.op.binary.f32(i32 36, float %5226, float %5227)  ; FMin(a,b)
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  br i1 %5229, label %5238, label %5230, !dx.controlflow.hints !78

; <label>:5230                                    ; preds = %5474, %5225
  %5231 = phi float [ %5152, %5225 ], [ %5514, %5474 ]
  %5232 = phi float [ %5153, %5225 ], [ %5515, %5474 ]
  %5233 = phi float [ %5154, %5225 ], [ %5516, %5474 ]
  %5234 = phi float [ %5155, %5225 ], [ %5508, %5474 ]
  %5235 = phi float [ %5156, %5225 ], [ %5509, %5474 ]
  %5236 = phi float [ %5157, %5225 ], [ %5510, %5474 ]
  %5237 = icmp eq i32 %5151, %5161
  br i1 %5237, label %5517, label %5150

; <label>:5238                                    ; preds = %5225
  %5239 = fmul fast float %5226, %5184
  %5240 = fmul fast float %5226, %5185
  %5241 = fmul fast float %5226, %5186
  %5242 = fsub fast float %5178, %4407
  %5243 = fcmp fast ogt float %5242, 0.000000e+00
  %5244 = fsub fast float %135, %4407
  %5245 = fcmp fast ogt float %5244, 0.000000e+00
  %5246 = xor i1 %5245, %5243
  %5247 = fsub fast float %4407, %5178
  %5248 = fmul fast float %5247, 2.000000e+00
  %5249 = fadd fast float %5248, %5178
  %5250 = select i1 %5246, float %5178, float %5249
  %5251 = fsub fast float %5250, %135
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5251, float %5187, float %5188, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 25, float %5252)  ; Rsqrt(value)
  %5254 = fmul fast float %5253, %5187
  %5255 = fmul fast float %5253, %5188
  %5256 = fmul fast float %5253, %5251
  %5257 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5254, float %5255, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = fdiv fast float 1.000000e+00, %5258
  %5260 = fmul fast float %5259, %5257
  %5261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5244, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = fcmp fast ogt float %5261, 0.000000e+00
  %5263 = fcmp fast olt float %5261, 0.000000e+00
  %5264 = zext i1 %5262 to i32
  %5265 = zext i1 %5263 to i32
  %5266 = sub nsw i32 %5264, %5265
  %5267 = sitofp i32 %5266 to float
  %5268 = fsub fast float %5250, %4407
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5268, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = fcmp fast ogt float %5269, 0.000000e+00
  %5271 = fcmp fast olt float %5269, 0.000000e+00
  %5272 = zext i1 %5270 to i32
  %5273 = zext i1 %5271 to i32
  %5274 = sub nsw i32 %5272, %5273
  %5275 = sitofp i32 %5274 to float
  %5276 = fcmp fast une float %5267, %5275
  br i1 %5276, label %5277, label %5287

; <label>:5277                                    ; preds = %5238
  %5278 = fmul fast float %5260, %5256
  %5279 = fmul fast float %5260, %5255
  %5280 = fmul fast float %5260, %5254
  %5281 = fmul fast float %5280, %5280
  %5282 = fmul fast float %5279, %5279
  %5283 = fadd fast float %5281, %5282
  %5284 = fmul fast float %5278, %5278
  %5285 = fadd fast float %5283, %5284
  %5286 = call float @dx.op.unary.f32(i32 24, float %5285)  ; Sqrt(value)
  br label %5299

; <label>:5287                                    ; preds = %5238
  %5288 = icmp slt i32 %5266, 0
  br i1 %5288, label %5289, label %5299

; <label>:5289                                    ; preds = %5287
  %5290 = fsub fast float %133, %5176
  %5291 = fsub fast float %134, %5177
  %5292 = fsub fast float %135, %5250
  %5293 = fmul fast float %5290, %5290
  %5294 = fmul fast float %5291, %5291
  %5295 = fadd fast float %5293, %5294
  %5296 = fmul fast float %5292, %5292
  %5297 = fadd fast float %5295, %5296
  %5298 = call float @dx.op.unary.f32(i32 24, float %5297)  ; Sqrt(value)
  br label %5299

; <label>:5299                                    ; preds = %5289, %5287, %5277
  %5300 = phi float [ %5286, %5277 ], [ %5298, %5289 ], [ 0.000000e+00, %5287 ]
  %5301 = and i1 %5245, %5243
  %5302 = fsub fast float -0.000000e+00, %5300
  %5303 = select i1 %5301, float -0.000000e+00, float %5302
  %5304 = fmul fast float %4408, 0x3FF7154760000000
  %5305 = fmul fast float %5304, %5303
  %5306 = fmul fast float %4409, 0x3FF7154760000000
  %5307 = fmul fast float %5306, %5303
  %5308 = fmul fast float %4410, 0x3FF7154760000000
  %5309 = fmul fast float %5308, %5303
  %5310 = call float @dx.op.unary.f32(i32 21, float %5305)  ; Exp(value)
  %5311 = call float @dx.op.unary.f32(i32 21, float %5307)  ; Exp(value)
  %5312 = call float @dx.op.unary.f32(i32 21, float %5309)  ; Exp(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5314 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5316 = fmul fast float %5239, %5313
  %5317 = fmul fast float %5240, %5314
  %5318 = fmul fast float %5241, %5315
  %5319 = fsub fast float %5193, %4607
  %5320 = fsub fast float %5194, %4606
  %5321 = fsub fast float %5195, %4605
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = call float @dx.op.unary.f32(i32 25, float %5322)  ; Rsqrt(value)
  %5324 = fmul fast float %5323, %5319
  %5325 = fmul fast float %5323, %5320
  %5326 = fmul fast float %5323, %5321
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5193, float %5194, float %5195, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4603, float %4602, float %5324, float %5325, float %5326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5330 = fmul fast float %5329, %5200
  %5331 = fmul fast float %5329, %5329
  %5332 = fmul fast float %5331, %4853
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fmul fast float %5330, %5333
  %5335 = bitcast float %5190 to i32
  %5336 = ashr i32 %5335, 1
  %5337 = sub nsw i32 1597463007, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5338, %5187
  %5340 = fmul fast float %5338, %5188
  %5341 = fmul fast float %5338, %5189
  %5342 = fsub fast float %5339, %4607
  %5343 = fsub fast float %5340, %4606
  %5344 = fsub fast float %5341, %4605
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5344, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.unary.f32(i32 25, float %5345)  ; Rsqrt(value)
  %5347 = fmul fast float %5342, %5346
  %5348 = fmul fast float %5343, %5346
  %5349 = fmul fast float %5344, %5346
  %5350 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %5347, float %5348, float %5349)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fmul fast float %5350, %5350
  %5352 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5353 = fsub fast float 1.000000e+00, %4617
  %5354 = call float @dx.op.binary.f32(i32 35, float %5353, float 0x3F847AE140000000)  ; FMax(a,b)
  %5355 = fmul fast float %5354, %5354
  %5356 = fmul fast float %5355, %5355
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = fmul fast float %4621, %4621
  %5359 = fmul fast float %5358, %5357
  %5360 = fadd fast float %5359, %5356
  %5361 = bitcast float %5360 to i32
  %5362 = ashr i32 %5361, 1
  %5363 = add nsw i32 %5362, 532487669
  %5364 = bitcast i32 %5363 to float
  %5365 = fadd fast float %5364, %4621
  %5366 = fmul fast float %5356, %5351
  %5367 = fsub fast float 1.000000e+00, %5351
  %5368 = fadd fast float %5367, %5366
  %5369 = fmul fast float %5352, %5352
  %5370 = fmul fast float %5369, %5357
  %5371 = fadd fast float %5370, %5356
  %5372 = bitcast float %5371 to i32
  %5373 = ashr i32 %5372, 1
  %5374 = add nsw i32 %5373, 532487669
  %5375 = bitcast i32 %5374 to float
  %5376 = fadd fast float %5375, %5352
  %5377 = fmul fast float %5368, %5368
  %5378 = fmul fast float %5377, %5365
  %5379 = fmul fast float %5378, %5376
  %5380 = fdiv fast float 1.000000e+00, %5379
  %5381 = bitcast float %5356 to i32
  %5382 = sitofp i32 %5381 to float
  %5383 = fmul fast float %5382, 0x3FE7F73180000000
  %5384 = fadd fast float %5383, 0x41AFE27C40000000
  %5385 = fptosi float %5384 to i32
  %5386 = bitcast i32 %5385 to float
  %5387 = fmul fast float %5173, 0x3FD80E9D60000000
  %5388 = fmul fast float %5387, %5338
  %5389 = fadd fast float %5386, %5388
  %5390 = bitcast float %5389 to i32
  %5391 = sub nsw i32 2129859010, %5390
  %5392 = bitcast i32 %5391 to float
  %5393 = fmul fast float %5356, %5380
  %5394 = fmul fast float %5393, %5386
  %5395 = fmul fast float %5394, %5392
  %5396 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = bitcast float %5397 to i32
  %5399 = sitofp i32 %5398 to float
  %5400 = fmul fast float %5399, 5.000000e+00
  %5401 = fadd fast float %5400, 0xC1EFBF8940000000
  %5402 = fptosi float %5401 to i32
  %5403 = bitcast i32 %5402 to float
  %5404 = fsub fast float 1.000000e+00, %4608
  %5405 = fsub fast float 1.000000e+00, %4609
  %5406 = fsub fast float 1.000000e+00, %4619
  %5407 = fmul fast float %5403, %5404
  %5408 = fmul fast float %5403, %5405
  %5409 = fmul fast float %5403, %5406
  %5410 = fadd fast float %5407, %4608
  %5411 = fadd fast float %5408, %4609
  %5412 = fadd fast float %5409, %4619
  br i1 %4749, label %5413, label %5436

; <label>:5413                                    ; preds = %5299
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4006, float %5396, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = fadd fast float %5415, -5.000000e-01
  %5419 = fadd fast float %5416, -5.000000e-01
  %5420 = fadd fast float %5417, -5.000000e-01
  %5421 = fmul fast float %4608, 4.000000e+00
  %5422 = fmul fast float %5421, %5404
  %5423 = fmul fast float %5422, %5418
  %5424 = fmul fast float %4609, 4.000000e+00
  %5425 = fmul fast float %5424, %5405
  %5426 = fmul fast float %5425, %5419
  %5427 = fmul fast float %4619, 4.000000e+00
  %5428 = fmul fast float %5427, %5406
  %5429 = fmul fast float %5428, %5420
  %5430 = fadd fast float %5423, %5410
  %5431 = fadd fast float %5426, %5411
  %5432 = fadd fast float %5429, %5412
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  br label %5436

; <label>:5436                                    ; preds = %5413, %5299
  %5437 = phi float [ %5433, %5413 ], [ %5410, %5299 ]
  %5438 = phi float [ %5434, %5413 ], [ %5411, %5299 ]
  %5439 = phi float [ %5435, %5413 ], [ %5412, %5299 ]
  %5440 = fmul fast float %5327, 9.843750e-01
  %5441 = fadd fast float %5440, 7.812500e-03
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5441, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5445 = fmul fast float %5443, %4608
  %5446 = fmul fast float %5443, %4609
  %5447 = fmul fast float %5443, %4619
  %5448 = fadd fast float %5445, %5444
  %5449 = fadd fast float %5446, %5444
  %5450 = fadd fast float %5447, %5444
  br i1 %4749, label %5451, label %5474

; <label>:5451                                    ; preds = %5436
  %5452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4006, float %5327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = fadd fast float %5453, -5.000000e-01
  %5457 = fadd fast float %5454, -5.000000e-01
  %5458 = fadd fast float %5455, -5.000000e-01
  %5459 = fmul fast float %4608, 4.000000e+00
  %5460 = fmul fast float %5459, %5404
  %5461 = fmul fast float %5460, %5456
  %5462 = fmul fast float %4609, 4.000000e+00
  %5463 = fmul fast float %5462, %5405
  %5464 = fmul fast float %5463, %5457
  %5465 = fmul fast float %4619, 4.000000e+00
  %5466 = fmul fast float %5465, %5406
  %5467 = fmul fast float %5466, %5458
  %5468 = fadd fast float %5461, %5448
  %5469 = fadd fast float %5464, %5449
  %5470 = fadd fast float %5467, %5450
  %5471 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  br label %5474

; <label>:5474                                    ; preds = %5451, %5436
  %5475 = phi float [ %5471, %5451 ], [ %5448, %5436 ]
  %5476 = phi float [ %5472, %5451 ], [ %5449, %5436 ]
  %5477 = phi float [ %5473, %5451 ], [ %5450, %5436 ]
  %5478 = call float @dx.op.binary.f32(i32 35, float %5476, float %5477)  ; FMax(a,b)
  %5479 = call float @dx.op.binary.f32(i32 35, float %5475, float %5478)  ; FMax(a,b)
  %5480 = fsub fast float 1.000000e+00, %5479
  %5481 = fmul fast float %5437, %5395
  %5482 = fmul fast float %5438, %5395
  %5483 = fmul fast float %5439, %5395
  %5484 = fsub fast float 1.000000e+00, %5328
  %5485 = bitcast float %5484 to i32
  %5486 = sitofp i32 %5485 to float
  %5487 = fmul fast float %5486, 5.000000e+00
  %5488 = fadd fast float %5487, 0xC1EFBF8940000000
  %5489 = fptosi float %5488 to i32
  %5490 = bitcast i32 %5489 to float
  %5491 = fmul fast float %5490, %4007
  %5492 = fmul fast float %5480, %5491
  %5493 = fmul fast float %5492, %4820
  %5494 = fmul fast float %5492, %4821
  %5495 = fmul fast float %5492, %4822
  %5496 = fadd fast float %5493, %5481
  %5497 = fadd fast float %5494, %5482
  %5498 = fadd fast float %5495, %5483
  %5499 = fmul fast float %5316, %4003
  %5500 = fmul fast float %5499, %5334
  %5501 = fmul fast float %5500, %5480
  %5502 = fmul fast float %5317, %4003
  %5503 = fmul fast float %5502, %5334
  %5504 = fmul fast float %5503, %5480
  %5505 = fmul fast float %5318, %4003
  %5506 = fmul fast float %5505, %5334
  %5507 = fmul fast float %5506, %5480
  %5508 = fadd fast float %5501, %5155
  %5509 = fadd fast float %5504, %5156
  %5510 = fadd fast float %5507, %5157
  %5511 = fmul fast float %5500, %5496
  %5512 = fmul fast float %5503, %5497
  %5513 = fmul fast float %5506, %5498
  %5514 = fadd fast float %5511, %5152
  %5515 = fadd fast float %5512, %5153
  %5516 = fadd fast float %5513, %5154
  br label %5230

; <label>:5517                                    ; preds = %5230
  br label %5518

; <label>:5518                                    ; preds = %5517, %5118
  %5519 = phi float [ %5120, %5118 ], [ %5231, %5517 ]
  %5520 = phi float [ %5121, %5118 ], [ %5232, %5517 ]
  %5521 = phi float [ %5122, %5118 ], [ %5233, %5517 ]
  %5522 = phi float [ %5123, %5118 ], [ %5234, %5517 ]
  %5523 = phi float [ %5124, %5118 ], [ %5235, %5517 ]
  %5524 = phi float [ %5125, %5118 ], [ %5236, %5517 ]
  %5525 = add i32 %5119, 1
  %5526 = icmp ugt i32 %5525, %5115
  br i1 %5526, label %5527, label %5118

; <label>:5527                                    ; preds = %5518
  br label %5528

; <label>:5528                                    ; preds = %5527, %5094, %5084
  %5529 = phi float [ %5085, %5084 ], [ %5085, %5094 ], [ %5519, %5527 ]
  %5530 = phi float [ %5086, %5084 ], [ %5086, %5094 ], [ %5520, %5527 ]
  %5531 = phi float [ %5087, %5084 ], [ %5087, %5094 ], [ %5521, %5527 ]
  %5532 = phi float [ %5088, %5084 ], [ %5088, %5094 ], [ %5522, %5527 ]
  %5533 = phi float [ %5089, %5084 ], [ %5089, %5094 ], [ %5523, %5527 ]
  %5534 = phi float [ %5090, %5084 ], [ %5090, %5094 ], [ %5524, %5527 ]
  %5535 = call float @dx.op.unary.f32(i32 24, float %4611)  ; Sqrt(value)
  %5536 = call float @dx.op.unary.f32(i32 24, float %4612)  ; Sqrt(value)
  %5537 = call float @dx.op.unary.f32(i32 24, float %4613)  ; Sqrt(value)
  %5538 = fmul fast float %5535, %5532
  %5539 = fmul fast float %5536, %5533
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  br i1 %175, label %5542, label %5562

; <label>:5542                                    ; preds = %5528
  %5543 = fadd fast float %5534, %4009
  %5544 = fmul fast float %5543, %4010
  %5545 = fsub fast float 1.000000e+00, %4010
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 3
  %5549 = fmul fast float %5548, %5546
  %5550 = fadd fast float %5549, %5544
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = fmul fast float %5552, %4827
  %5554 = fsub fast float %5550, %5553
  %5555 = fadd fast float %5539, %5538
  %5556 = fmul fast float %5541, %5555
  %5557 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5558 = fsub fast float %5554, %5557
  %5559 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5560 = fmul fast float %5558, %5559
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  br label %5578

; <label>:5562                                    ; preds = %5528
  %5563 = fmul fast float %5537, %5534
  %5564 = fmul fast float %5541, %5538
  %5565 = fmul fast float %5541, %5539
  %5566 = fmul fast float %5563, %5541
  %5567 = add i32 %33, 356
  %5568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5567, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.i32 %5568, 0
  %5570 = and i32 %5569, 32
  %5571 = icmp eq i32 %5570, 0
  br i1 %5571, label %5578, label %5572

; <label>:5572                                    ; preds = %5562
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = fmul fast float %5574, 0x3FE99999A0000000
  %5576 = fadd fast float %5574, %5564
  %5577 = fadd fast float %5575, %5566
  br label %5578

; <label>:5578                                    ; preds = %5572, %5562, %5542
  %5579 = phi float [ %5556, %5542 ], [ %5576, %5572 ], [ %5564, %5562 ]
  %5580 = phi float [ %5561, %5542 ], [ %5565, %5572 ], [ %5565, %5562 ]
  %5581 = phi float [ 1.000000e+00, %5542 ], [ %5577, %5572 ], [ %5566, %5562 ]
  %5582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5583 = extractvalue %dx.types.CBufRet.f32 %5582, 0
  %5584 = fmul fast float %5583, %5530
  %5585 = fmul fast float %5583, %5531
  %5586 = fadd fast float %5530, %5529
  %5587 = select i1 %175, float %5586, float %5529
  %5588 = fmul float %5587, %5583
  %5589 = select i1 %175, float 0.000000e+00, float %5584
  %5590 = select i1 %175, float 0.000000e+00, float %5585
  %5591 = fmul fast float %5579, %5535
  %5592 = fmul fast float %5580, %5536
  %5593 = fmul fast float %5581, %5537
  %5594 = fadd fast float %5588, %5591
  %5595 = fadd fast float %5589, %5592
  %5596 = fadd fast float %5590, %5593
  %5597 = select i1 %175, float %5580, float %5595
  %5598 = select i1 %175, float %5581, float %5596
  %5599 = call float @dx.op.binary.f32(i32 36, float %5594, float 3.225500e+04)  ; FMin(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5597, float 3.225500e+04)  ; FMin(a,b)
  %5601 = call float @dx.op.binary.f32(i32 36, float %5598, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

