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
; shader hash: fc68a4e7ac2dc0efb4774b5f643bff1a
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
  %356 = add i32 %33, 504
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
  %537 = add i32 %33, 456
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
  %871 = phi float [ 0.000000e+00, %395 ], [ %852, %851 ]
  %872 = phi float [ 0.000000e+00, %395 ], [ %853, %851 ]
  %873 = phi float [ 0.000000e+00, %395 ], [ %854, %851 ]
  %874 = phi float [ 0.000000e+00, %395 ], [ %724, %851 ]
  %875 = phi float [ 0.000000e+00, %395 ], [ %725, %851 ]
  %876 = phi float [ 0.000000e+00, %395 ], [ %726, %851 ]
  %877 = phi float [ 0.000000e+00, %395 ], [ %710, %851 ]
  %878 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %851 ]
  %879 = phi float [ 0.000000e+00, %395 ], [ %804, %851 ]
  %880 = phi float [ 0.000000e+00, %395 ], [ %807, %851 ]
  %881 = phi float [ 0.000000e+00, %395 ], [ %867, %851 ]
  br i1 %346, label %1834, label %882

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
  br i1 %891, label %1834, label %892

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
  br i1 %1180, label %1834, label %1181

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
  %1212 = add i32 %33, 460
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
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 1024
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1564, label %1534

; <label>:1534                                    ; preds = %1526
  %1535 = add i32 %33, 168
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = fmul fast float %1539, 0x3F70101020000000
  %1541 = lshr i32 %1537, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = lshr i32 %1537, 16
  %1546 = and i32 %1545, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F70101020000000
  %1549 = fmul fast float %1540, %1540
  %1550 = fmul fast float %1544, %1544
  %1551 = fmul fast float %1548, %1548
  %1552 = add i32 %33, 476
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %65, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = fmul fast float %1549, %1558
  %1562 = fmul fast float %1550, %1559
  %1563 = fmul fast float %1551, %1560
  br label %1564

; <label>:1564                                    ; preds = %1534, %1526
  %1565 = phi float [ %1561, %1534 ], [ 0.000000e+00, %1526 ]
  %1566 = phi float [ %1562, %1534 ], [ 0.000000e+00, %1526 ]
  %1567 = phi float [ %1563, %1534 ], [ 0.000000e+00, %1526 ]
  %1568 = fcmp fast ogt float %1565, 0.000000e+00
  %1569 = fcmp fast ogt float %1566, 0.000000e+00
  %1570 = fcmp fast ogt float %1567, 0.000000e+00
  %1571 = call float @dx.op.unary.f32(i32 23, float %1565)  ; Log(value)
  %1572 = call float @dx.op.unary.f32(i32 23, float %1566)  ; Log(value)
  %1573 = call float @dx.op.unary.f32(i32 23, float %1567)  ; Log(value)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = lshr i32 %1575, 7
  %1577 = and i32 %1576, 32752
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = fmul fast float %1571, 0xBFE62E4300000000
  %1580 = fmul fast float %1579, %1578
  %1581 = fmul fast float %1572, 0xBFE62E4300000000
  %1582 = fmul fast float %1581, %1578
  %1583 = fmul fast float %1573, 0xBFE62E4300000000
  %1584 = fmul fast float %1583, %1578
  %1585 = select i1 %1568, float %1580, float 1.270000e+02
  %1586 = select i1 %1569, float %1582, float 1.270000e+02
  %1587 = select i1 %1570, float %1584, float 1.270000e+02
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 10240
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1612, label %1592

; <label>:1592                                    ; preds = %1564
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 2048
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1612, label %1597

; <label>:1597                                    ; preds = %1592
  %1598 = add i32 %33, 492
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = add i32 %1600, 0
  %1602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1602, %dx.types.Handle %65, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 3
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = shl i32 %1606, 4
  %1608 = and i32 %1607, 32752
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = fmul fast float %1609, %1604
  %1611 = call float @dx.op.binary.f32(i32 35, float %1610, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1612

; <label>:1612                                    ; preds = %1597, %1592, %1564
  %1613 = phi float [ %1611, %1597 ], [ 0x3F70101020000000, %1592 ], [ 0x3F70101020000000, %1564 ]
  %1614 = add i32 %33, 112
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = lshr i32 %1616, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = fmul fast float %1621, %1622
  %1624 = fadd fast float %1623, %1618
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  br i1 %883, label %1627, label %1662

; <label>:1627                                    ; preds = %1612
  %1628 = fmul fast float %1613, 2.000000e+00
  %1629 = fcmp fast olt float %1585, 1.270000e+02
  %1630 = fcmp fast olt float %1586, 1.270000e+02
  %1631 = fcmp fast olt float %1587, 1.270000e+02
  %1632 = fmul fast float %1585, 0xBFF7154760000000
  %1633 = fmul fast float %1632, %1628
  %1634 = fmul fast float %1586, 0xBFF7154760000000
  %1635 = fmul fast float %1634, %1628
  %1636 = fmul fast float %1587, 0xBFF7154760000000
  %1637 = fmul fast float %1636, %1628
  %1638 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1639 = call float @dx.op.unary.f32(i32 21, float %1635)  ; Exp(value)
  %1640 = call float @dx.op.unary.f32(i32 21, float %1637)  ; Exp(value)
  %1641 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1644 = fadd fast float %1641, -1.000000e+00
  %1645 = select i1 %1629, float %1644, float -1.000000e+00
  %1646 = fadd fast float %1642, -1.000000e+00
  %1647 = select i1 %1630, float %1646, float -1.000000e+00
  %1648 = fadd fast float %1643, -1.000000e+00
  %1649 = select i1 %1631, float %1648, float -1.000000e+00
  %1650 = fmul fast float %1645, %1179
  %1651 = fmul fast float %1647, %1179
  %1652 = fmul fast float %1649, %1179
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fadd fast float %1651, 1.000000e+00
  %1655 = fadd fast float %1652, 1.000000e+00
  %1656 = fmul fast float %1653, %874
  %1657 = fmul fast float %1654, %875
  %1658 = fmul fast float %1655, %876
  %1659 = fmul fast float %1653, %871
  %1660 = fmul fast float %1654, %872
  %1661 = fmul fast float %1655, %873
  br label %1662

; <label>:1662                                    ; preds = %1627, %1612
  %1663 = phi float [ %1659, %1627 ], [ %871, %1612 ]
  %1664 = phi float [ %1660, %1627 ], [ %872, %1612 ]
  %1665 = phi float [ %1661, %1627 ], [ %873, %1612 ]
  %1666 = phi float [ %1656, %1627 ], [ %874, %1612 ]
  %1667 = phi float [ %1657, %1627 ], [ %875, %1612 ]
  %1668 = phi float [ %1658, %1627 ], [ %876, %1612 ]
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 3
  %1672 = icmp eq i32 %1671, 3
  br i1 %1672, label %1751, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1670, 16
  %1675 = icmp ne i32 %1674, 0
  %1676 = select i1 %1675, float %1179, float 0.000000e+00
  %1677 = icmp eq i32 %1671, 0
  br i1 %1677, label %1678, label %1706

; <label>:1678                                    ; preds = %1673
  %1679 = and i32 %1670, 64
  %1680 = icmp ne i32 %1679, 0
  %1681 = select i1 %1680, float %1179, float 0.000000e+00
  %1682 = fsub fast float %1399, %1666
  %1683 = fsub fast float %1400, %1667
  %1684 = fsub fast float %1401, %1668
  %1685 = fmul fast float %1676, %1682
  %1686 = fmul fast float %1676, %1683
  %1687 = fmul fast float %1676, %1684
  %1688 = fadd fast float %1685, %1666
  %1689 = fadd fast float %1686, %1667
  %1690 = fadd fast float %1687, %1668
  %1691 = fsub fast float %1385, %877
  %1692 = fmul fast float %1676, %1691
  %1693 = fadd fast float %1692, %877
  %1694 = fsub fast float %1527, %1663
  %1695 = fsub fast float %1528, %1664
  %1696 = fsub fast float %1529, %1665
  %1697 = fmul fast float %1681, %1694
  %1698 = fmul fast float %1681, %1695
  %1699 = fmul fast float %1681, %1696
  %1700 = fadd fast float %1697, %1663
  %1701 = fadd fast float %1698, %1664
  %1702 = fadd fast float %1699, %1665
  %1703 = fsub fast float %1626, %881
  %1704 = fmul fast float %1676, %1703
  %1705 = fadd fast float %1704, %881
  br label %1751

; <label>:1706                                    ; preds = %1673
  %1707 = icmp eq i32 %1671, 1
  br i1 %1707, label %1708, label %1721

; <label>:1708                                    ; preds = %1706
  %1709 = fadd fast float %1399, -1.000000e+00
  %1710 = fadd fast float %1400, -1.000000e+00
  %1711 = fadd fast float %1401, -1.000000e+00
  %1712 = fmul fast float %1676, %1709
  %1713 = fmul fast float %1676, %1710
  %1714 = fmul fast float %1676, %1711
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fmul fast float %1715, %1666
  %1719 = fmul fast float %1716, %1667
  %1720 = fmul fast float %1717, %1668
  br label %1751

; <label>:1721                                    ; preds = %1706
  %1722 = icmp eq i32 %1671, 2
  br i1 %1722, label %1723, label %1751

; <label>:1723                                    ; preds = %1721
  %1724 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1726 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fmul fast float %1727, %1676
  %1731 = fmul fast float %1728, %1676
  %1732 = fmul fast float %1729, %1676
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fmul fast float %1733, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1666
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1666
  %1741 = fmul fast float %1734, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1667
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1667
  %1746 = fmul fast float %1735, 2.000000e+00
  %1747 = fsub fast float 1.000000e+00, %1746
  %1748 = fmul fast float %1747, %1668
  %1749 = fadd fast float %1748, %1746
  %1750 = fmul fast float %1749, %1668
  br label %1751

; <label>:1751                                    ; preds = %1723, %1721, %1708, %1678, %1662
  %1752 = phi float [ %1663, %1662 ], [ %1663, %1723 ], [ %1663, %1721 ], [ %1663, %1708 ], [ %1700, %1678 ]
  %1753 = phi float [ %1664, %1662 ], [ %1664, %1723 ], [ %1664, %1721 ], [ %1664, %1708 ], [ %1701, %1678 ]
  %1754 = phi float [ %1665, %1662 ], [ %1665, %1723 ], [ %1665, %1721 ], [ %1665, %1708 ], [ %1702, %1678 ]
  %1755 = phi float [ %1666, %1662 ], [ %1740, %1723 ], [ %1666, %1721 ], [ %1718, %1708 ], [ %1688, %1678 ]
  %1756 = phi float [ %1667, %1662 ], [ %1745, %1723 ], [ %1667, %1721 ], [ %1719, %1708 ], [ %1689, %1678 ]
  %1757 = phi float [ %1668, %1662 ], [ %1750, %1723 ], [ %1668, %1721 ], [ %1720, %1708 ], [ %1690, %1678 ]
  %1758 = phi float [ %877, %1662 ], [ %877, %1723 ], [ %877, %1721 ], [ %877, %1708 ], [ %1693, %1678 ]
  %1759 = phi float [ %881, %1662 ], [ %881, %1723 ], [ %881, %1721 ], [ %881, %1708 ], [ %1705, %1678 ]
  %1760 = and i32 %1670, 12
  %1761 = icmp eq i32 %1760, 12
  br i1 %1761, label %1834, label %1762

; <label>:1762                                    ; preds = %1751
  %1763 = and i32 %1670, 2097184
  %1764 = icmp eq i32 %1763, 2097184
  %1765 = select i1 %1764, float %1179, float 0.000000e+00
  %1766 = and i32 %1670, 4194336
  %1767 = icmp eq i32 %1766, 4194336
  %1768 = select i1 %1767, float %1179, float 0.000000e+00
  %1769 = and i32 %1670, 8388640
  %1770 = icmp eq i32 %1769, 8388640
  %1771 = select i1 %1770, float %1179, float 0.000000e+00
  %1772 = icmp eq i32 %1760, 0
  br i1 %1772, label %1773, label %1786

; <label>:1773                                    ; preds = %1762
  %1774 = fsub fast float %1480, %869
  %1775 = fsub fast float %1481, %870
  %1776 = fmul fast float %1765, %1774
  %1777 = fmul fast float %1765, %1775
  %1778 = fadd fast float %1776, %869
  %1779 = fadd fast float %1777, %870
  %1780 = fsub fast float %1482, %880
  %1781 = fmul fast float %1768, %1780
  %1782 = fadd fast float %1781, %880
  %1783 = fsub fast float %1479, %879
  %1784 = fmul fast float %1771, %1783
  %1785 = fadd fast float %1784, %879
  br label %1834

; <label>:1786                                    ; preds = %1762
  %1787 = icmp eq i32 %1760, 4
  br i1 %1787, label %1788, label %1820

; <label>:1788                                    ; preds = %1786
  %1789 = fmul fast float %1765, %1480
  %1790 = fmul fast float %1765, %1481
  %1791 = fadd fast float %1789, %869
  %1792 = fadd fast float %1790, %870
  %1793 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1794 = fsub fast float %1793, %880
  %1795 = fmul fast float %1794, %1768
  %1796 = fadd fast float %1795, %880
  %1797 = fadd fast float %1479, %879
  %1798 = fmul fast float %1797, 0x3FF337FAE0000000
  %1799 = fmul fast float %879, %879
  %1800 = fmul fast float %1479, %1479
  %1801 = fadd fast float %1800, %1799
  %1802 = fmul fast float %1801, 0x3FE5152B00000000
  %1803 = fmul fast float %879, 0xBFCC1F85E0000000
  %1804 = fmul fast float %1803, %1479
  %1805 = fadd fast float %1804, 0xBFE1363700000000
  %1806 = fadd fast float %1805, %1798
  %1807 = fsub fast float %1806, %1802
  %1808 = fmul fast float %1797, 0x3FBA6F0D00000000
  %1809 = fmul fast float %1801, 0x3FD0432880000000
  %1810 = fmul fast float %879, 0xBFEF110800000000
  %1811 = fmul fast float %1810, %1479
  %1812 = fadd fast float %1811, 1.000000e+00
  %1813 = fsub fast float %1812, %1808
  %1814 = fadd fast float %1813, %1809
  %1815 = fdiv fast float %1807, %1814
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1817 = fsub fast float %1816, %879
  %1818 = fmul fast float %1817, %1771
  %1819 = fadd fast float %1818, %879
  br label %1834

; <label>:1820                                    ; preds = %1786
  %1821 = icmp eq i32 %1760, 8
  br i1 %1821, label %1822, label %1834

; <label>:1822                                    ; preds = %1820
  %1823 = fmul fast float %1765, %1480
  %1824 = fmul fast float %1765, %1481
  %1825 = fadd fast float %1823, %869
  %1826 = fadd fast float %1824, %870
  %1827 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1828 = fsub fast float %1827, %880
  %1829 = fmul fast float %1828, %1768
  %1830 = fadd fast float %1829, %880
  %1831 = fsub fast float %1479, %879
  %1832 = fmul fast float %1771, %1831
  %1833 = fadd fast float %1832, %879
  br label %1834

; <label>:1834                                    ; preds = %1822, %1820, %1788, %1773, %1751, %1178, %882, %868
  %1835 = phi float [ %869, %1751 ], [ %869, %1178 ], [ %869, %868 ], [ %1825, %1822 ], [ %869, %1820 ], [ %1791, %1788 ], [ %1778, %1773 ], [ %869, %882 ]
  %1836 = phi float [ %870, %1751 ], [ %870, %1178 ], [ %870, %868 ], [ %1826, %1822 ], [ %870, %1820 ], [ %1792, %1788 ], [ %1779, %1773 ], [ %870, %882 ]
  %1837 = phi float [ %1752, %1751 ], [ %871, %1178 ], [ %871, %868 ], [ %1752, %1822 ], [ %1752, %1820 ], [ %1752, %1788 ], [ %1752, %1773 ], [ %871, %882 ]
  %1838 = phi float [ %1753, %1751 ], [ %872, %1178 ], [ %872, %868 ], [ %1753, %1822 ], [ %1753, %1820 ], [ %1753, %1788 ], [ %1753, %1773 ], [ %872, %882 ]
  %1839 = phi float [ %1754, %1751 ], [ %873, %1178 ], [ %873, %868 ], [ %1754, %1822 ], [ %1754, %1820 ], [ %1754, %1788 ], [ %1754, %1773 ], [ %873, %882 ]
  %1840 = phi float [ %1755, %1751 ], [ %874, %1178 ], [ %874, %868 ], [ %1755, %1822 ], [ %1755, %1820 ], [ %1755, %1788 ], [ %1755, %1773 ], [ %874, %882 ]
  %1841 = phi float [ %1756, %1751 ], [ %875, %1178 ], [ %875, %868 ], [ %1756, %1822 ], [ %1756, %1820 ], [ %1756, %1788 ], [ %1756, %1773 ], [ %875, %882 ]
  %1842 = phi float [ %1757, %1751 ], [ %876, %1178 ], [ %876, %868 ], [ %1757, %1822 ], [ %1757, %1820 ], [ %1757, %1788 ], [ %1757, %1773 ], [ %876, %882 ]
  %1843 = phi float [ %1758, %1751 ], [ %877, %1178 ], [ %877, %868 ], [ %1758, %1822 ], [ %1758, %1820 ], [ %1758, %1788 ], [ %1758, %1773 ], [ %877, %882 ]
  %1844 = phi float [ %879, %1751 ], [ %879, %1178 ], [ %879, %868 ], [ %1833, %1822 ], [ %879, %1820 ], [ %1819, %1788 ], [ %1785, %1773 ], [ %879, %882 ]
  %1845 = phi float [ %880, %1751 ], [ %880, %1178 ], [ %880, %868 ], [ %1830, %1822 ], [ %880, %1820 ], [ %1796, %1788 ], [ %1782, %1773 ], [ %880, %882 ]
  %1846 = phi float [ %1759, %1751 ], [ %881, %1178 ], [ %881, %868 ], [ %1759, %1822 ], [ %1759, %1820 ], [ %1759, %1788 ], [ %1759, %1773 ], [ %881, %882 ]
  br i1 %348, label %2799, label %1847

; <label>:1847                                    ; preds = %1834
  %1848 = icmp ult i32 %401, 3
  %1849 = add i32 %33, 56
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %33, 60
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = or i32 %1854, %1851
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %2799, label %1857

; <label>:1857                                    ; preds = %1847
  %1858 = and i32 %1851, 262144
  %1859 = icmp ne i32 %1858, 0
  %1860 = select i1 %1859, float %36, float 1.000000e+00
  %1861 = select i1 %1859, float %37, float 0.000000e+00
  %1862 = select i1 %1859, float %38, float 0.000000e+00
  %1863 = select i1 %1859, float %39, float 1.000000e+00
  %1864 = select i1 %1859, float %40, float %56
  %1865 = select i1 %1859, float %41, float %57
  %1866 = add i32 %33, 316
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = lshr i32 %1868, 16
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = fmul fast float %1870, 0x3F50624DE0000000
  %1872 = add i32 %33, 120
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 16
  %1876 = and i32 %1875, 255
  %1877 = lshr i32 %1874, 24
  %1878 = add i32 %33, 324
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 65535
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = lshr i32 %1880, 16
  %1884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1883)  ; LegacyF16ToF32(value)
  %1885 = add i32 %33, 64
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = lshr i32 %1887, 22
  %1889 = shl nuw nsw i32 %1888, 5
  %1890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1889)  ; LegacyF16ToF32(value)
  %1891 = shl i32 %1887, 4
  %1892 = and i32 %1891, 32752
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = lshr i32 %1887, 7
  %1895 = and i32 %1894, 32752
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 3
  %1899 = fmul fast float %1898, 1.000000e+03
  %1900 = fmul fast float %298, %1899
  %1901 = call float @dx.op.unary.f32(i32 22, float %1900)  ; Frc(value)
  %1902 = fadd fast float %1901, %288
  %1903 = fmul fast float %299, %1899
  %1904 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1905 = fadd fast float %1904, %290
  %1906 = fmul fast float %1871, %1899
  %1907 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1908 = fmul fast float %1907, 0x401921FB60000000
  %1909 = fadd fast float %1908, %1890
  %1910 = call float @dx.op.unary.f32(i32 13, float %1909)  ; Sin(value)
  %1911 = call float @dx.op.unary.f32(i32 12, float %1909)  ; Cos(value)
  %1912 = fsub fast float -0.000000e+00, %1910
  %1913 = fadd fast float %1864, -5.000000e-01
  %1914 = fadd fast float %1865, -5.000000e-01
  %1915 = fmul fast float %1882, %1913
  %1916 = fmul fast float %1884, %1914
  %1917 = fadd fast float %1915, 5.000000e-01
  %1918 = fadd fast float %1916, 5.000000e-01
  %1919 = fmul fast float %1893, %1917
  %1920 = fmul fast float %1896, %1918
  %1921 = fmul fast float %1911, %1919
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1912, float %1920, float %1921)  ; FMad(a,b,c)
  %1923 = fmul fast float %1910, %1919
  %1924 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1920, float %1923)  ; FMad(a,b,c)
  %1925 = fadd fast float %1902, %1922
  %1926 = fadd fast float %1905, %1924
  %1927 = icmp ugt i32 %1876, 1
  %1928 = icmp ugt i32 %1874, 33554431
  %1929 = or i1 %1928, %1927
  br i1 %1929, label %1930, label %1955

; <label>:1930                                    ; preds = %1857
  %1931 = add i32 %33, 260
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 16
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fmul fast float %1898, %1935
  %1937 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1938 = mul nuw nsw i32 %1876, %1877
  %1939 = uitofp i32 %1938 to float
  %1940 = fmul fast float %1937, %1939
  %1941 = call float @dx.op.unary.f32(i32 27, float %1940)  ; Round_ni(value)
  %1942 = fptoui float %1941 to i32
  %1943 = urem i32 %1942, %1876
  %1944 = udiv i32 %1942, %1877
  %1945 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1946 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1947 = uitofp i32 %1943 to float
  %1948 = uitofp i32 %1944 to float
  %1949 = fadd fast float %1945, %1947
  %1950 = fadd fast float %1946, %1948
  %1951 = uitofp i32 %1876 to float
  %1952 = uitofp i32 %1877 to float
  %1953 = fdiv fast float %1949, %1951
  %1954 = fdiv fast float %1950, %1952
  br label %1955

; <label>:1955                                    ; preds = %1930, %1857
  %1956 = phi float [ %1953, %1930 ], [ %1925, %1857 ]
  %1957 = phi float [ %1954, %1930 ], [ %1926, %1857 ]
  %1958 = and i32 %1851, 16777216
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2069, label %1960

; <label>:1960                                    ; preds = %1955
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.CBufRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.CBufRet.f32 %1961, 2
  %1965 = fadd fast float %1962, %131
  %1966 = fadd fast float %1963, %132
  %1967 = fadd fast float %1964, %133
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = icmp eq i32 %34, 65535
  br i1 %1971, label %2066, label %1972

; <label>:1972                                    ; preds = %1960
  %1973 = lshr i32 %34, 1
  %1974 = shl i32 %1973, 2
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %34, 1
  %1978 = icmp ne i32 %1977, 0
  %1979 = lshr i32 %1976, 16
  %1980 = and i32 %1976, 65535
  %1981 = select i1 %1978, i32 %1979, i32 %1980
  %1982 = icmp eq i32 %1981, 65535
  br i1 %1982, label %2062, label %1983

; <label>:1983                                    ; preds = %1972
  %1984 = mul nuw nsw i32 %1981, 40
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = add nuw nsw i32 %1984, 12
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.f32 %1990, 2
  %1994 = add nuw nsw i32 %1984, 24
  %1995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.ResRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.ResRet.f32 %1995, 2
  %1999 = add nuw nsw i32 %1984, 36
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = fsub fast float %1965, %1986
  %2003 = fsub fast float %1966, %1987
  %2004 = fsub fast float %1967, %1988
  %2005 = fmul fast float %2001, %2002
  %2006 = fmul fast float %2001, %2003
  %2007 = fmul fast float %2001, %2004
  %2008 = call float @dx.op.unary.f32(i32 27, float %2005)  ; Round_ni(value)
  %2009 = call float @dx.op.unary.f32(i32 27, float %2006)  ; Round_ni(value)
  %2010 = call float @dx.op.unary.f32(i32 27, float %2007)  ; Round_ni(value)
  %2011 = fadd fast float %2008, 5.000000e-01
  %2012 = fadd fast float %2009, 5.000000e-01
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = fmul fast float %2011, %1991
  %2015 = fmul fast float %2012, %1992
  %2016 = fmul fast float %2013, %1993
  %2017 = shl i32 %34, 2
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %2019, 0
  %2021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2022 = call float @dx.op.unary.f32(i32 22, float %2014)  ; Frc(value)
  %2023 = call float @dx.op.unary.f32(i32 22, float %2015)  ; Frc(value)
  %2024 = call float @dx.op.unary.f32(i32 22, float %2016)  ; Frc(value)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2021, %dx.types.Handle %30, float %2022, float %2023, float %2024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = fmul fast float %2026, 1.023000e+03
  %2030 = fmul fast float %2027, 1.023000e+03
  %2031 = fmul fast float %2028, 1.023000e+03
  %2032 = fadd fast float %2029, 5.000000e-01
  %2033 = fadd fast float %2030, 5.000000e-01
  %2034 = fadd fast float %2031, 5.000000e-01
  %2035 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2037 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2038 = fsub fast float %2005, %2008
  %2039 = fsub fast float %2006, %2009
  %2040 = fsub fast float %2007, %2010
  %2041 = fmul fast float %2038, 7.500000e-01
  %2042 = fmul fast float %2039, 7.500000e-01
  %2043 = fmul fast float %2040, 7.500000e-01
  %2044 = fadd fast float %2008, 1.250000e-01
  %2045 = fadd fast float %2044, %2041
  %2046 = fadd fast float %2045, %2035
  %2047 = fadd fast float %2009, 1.250000e-01
  %2048 = fadd fast float %2047, %2042
  %2049 = fadd fast float %2048, %2036
  %2050 = fadd fast float %2010, 1.250000e-01
  %2051 = fadd fast float %2050, %2043
  %2052 = fadd fast float %2051, %2037
  %2053 = fmul fast float %2046, %1996
  %2054 = fmul fast float %2049, %1997
  %2055 = fmul fast float %2052, %1998
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %2057, 0
  %2059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2059, %dx.types.Handle %28, float %2053, float %2054, float %2055, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  br label %2062

; <label>:2062                                    ; preds = %1983, %1972
  %2063 = phi float [ %2061, %1983 ], [ -1.000000e+00, %1972 ]
  %2064 = fadd fast float %2063, %1970
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  br label %2066

; <label>:2066                                    ; preds = %2062, %1960
  %2067 = phi float [ %2065, %2062 ], [ %1970, %1960 ]
  %2068 = fmul fast float %2067, %397
  br label %2069

; <label>:2069                                    ; preds = %2066, %1955
  %2070 = phi float [ %2068, %2066 ], [ %397, %1955 ]
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 256
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2121, label %2075

; <label>:2075                                    ; preds = %2069
  %2076 = add i32 %33, 448
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = add i32 %2078, 0
  %2080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2080, %dx.types.Handle %65, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = add i32 %33, 132
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = shl i32 %2085, 4
  %2087 = and i32 %2086, 32752
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = lshr i32 %2085, 7
  %2090 = and i32 %2089, 32752
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = fsub fast float 1.000000e+00, %2070
  %2093 = call float @dx.op.binary.f32(i32 35, float %2092, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2094 = bitcast float %2070 to i32
  %2095 = sitofp i32 %2094 to float
  %2096 = fadd fast float %2095, 0xC1CFBF8940000000
  %2097 = fmul fast float %2091, %2096
  %2098 = fadd fast float %2097, 0x41CFBF8940000000
  %2099 = fptosi float %2098 to i32
  %2100 = bitcast i32 %2099 to float
  %2101 = bitcast float %2093 to i32
  %2102 = sitofp i32 %2101 to float
  %2103 = fadd fast float %2102, 0xC1CFBF8940000000
  %2104 = fmul fast float %2103, %2091
  %2105 = fadd fast float %2104, 0x41CFBF8940000000
  %2106 = fptosi float %2105 to i32
  %2107 = bitcast i32 %2106 to float
  %2108 = fmul fast float %2100, %2088
  %2109 = fmul fast float %2107, %2088
  %2110 = fsub fast float %2093, %2108
  %2111 = fadd fast float %2109, %2093
  %2112 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2113 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2114 = fsub fast float %2082, %2112
  %2115 = fsub fast float %2113, %2112
  %2116 = bitcast float %2115 to i32
  %2117 = sub nsw i32 2129859010, %2116
  %2118 = bitcast i32 %2117 to float
  %2119 = fmul fast float %2118, %2114
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  br label %2121

; <label>:2121                                    ; preds = %2075, %2069
  %2122 = phi float [ %2120, %2075 ], [ %2070, %2069 ]
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = and i32 %2124, 128
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2143, label %2127

; <label>:2127                                    ; preds = %2121
  %2128 = add i32 %33, 432
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = add i32 %2130, 0
  %2132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2132, %dx.types.Handle %65, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = and i32 %2136, 524288
  %2138 = icmp ne i32 %2137, 0
  %2139 = fcmp fast ogt float %2134, 0x3FE0101020000000
  %2140 = select i1 %2139, float 1.000000e+00, float 0.000000e+00
  %2141 = select i1 %2138, float %2140, float %2134
  %2142 = fmul fast float %2141, %2122
  br label %2143

; <label>:2143                                    ; preds = %2127, %2121
  %2144 = phi float [ %2142, %2127 ], [ %2122, %2121 ]
  %2145 = fcmp fast ult float %2144, 0x3F70101020000000
  br i1 %2145, label %2799, label %2146

; <label>:2146                                    ; preds = %2143
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 16
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2349, label %2151

; <label>:2151                                    ; preds = %2146
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = add i32 %33, 384
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2156, 0
  %2158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2158, %dx.types.Handle %64, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.ResRet.f32 %2159, 1
  %2162 = extractvalue %dx.types.ResRet.f32 %2159, 2
  %2163 = extractvalue %dx.types.ResRet.f32 %2159, 3
  %2164 = and i32 %2153, 255
  %2165 = uitofp i32 %2164 to float
  %2166 = lshr i32 %2153, 8
  %2167 = and i32 %2166, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2163, %2165
  %2170 = fadd fast float %2169, %2168
  %2171 = fmul fast float %2170, 0x3F70101000000000
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 512
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2184, label %2176

; <label>:2176                                    ; preds = %2151
  %2177 = add i32 %33, 464
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = add i32 %2179, 0
  %2181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2181, %dx.types.Handle %65, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  br label %2184

; <label>:2184                                    ; preds = %2176, %2151
  %2185 = phi float [ %2183, %2176 ], [ 1.000000e+00, %2151 ]
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 33554432
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2296, label %2190

; <label>:2190                                    ; preds = %2184
  %2191 = add i32 %33, 256
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = and i32 %2193, 65535
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = lshr i32 %2193, 16
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = add i32 %33, 260
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 65535
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = lshr i32 %2204, 24
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3F70101020000000
  %2208 = and i32 %2204, 255
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2209, 0x3F70101020000000
  %2211 = lshr i32 %2204, 8
  %2212 = and i32 %2211, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = lshr i32 %2204, 16
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = add i32 %33, 252
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = lshr i32 %2221, 24
  %2223 = uitofp i32 %2222 to float
  %2224 = fmul fast float %2223, 0x3F70101020000000
  %2225 = and i32 %2221, 255
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2226, 0x3F70101020000000
  %2228 = lshr i32 %2221, 8
  %2229 = and i32 %2228, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = lshr i32 %2221, 16
  %2233 = and i32 %2232, 255
  %2234 = uitofp i32 %2233 to float
  %2235 = fmul fast float %2234, 0x3F70101020000000
  %2236 = bitcast float %2160 to i32
  %2237 = ashr i32 %2236, 1
  %2238 = sub nsw i32 1597463174, %2237
  %2239 = bitcast i32 %2238 to float
  %2240 = fmul fast float %2160, 5.000000e-01
  %2241 = fmul fast float %2239, %2239
  %2242 = fmul fast float %2241, %2240
  %2243 = fsub fast float 1.500000e+00, %2242
  %2244 = fmul fast float %2239, %2160
  %2245 = fmul fast float %2244, %2243
  %2246 = bitcast float %2161 to i32
  %2247 = ashr i32 %2246, 1
  %2248 = sub nsw i32 1597463174, %2247
  %2249 = bitcast i32 %2248 to float
  %2250 = fmul fast float %2161, 5.000000e-01
  %2251 = fmul fast float %2249, %2249
  %2252 = fmul fast float %2251, %2250
  %2253 = fsub fast float 1.500000e+00, %2252
  %2254 = fmul fast float %2249, %2161
  %2255 = fmul fast float %2254, %2253
  %2256 = bitcast float %2162 to i32
  %2257 = ashr i32 %2256, 1
  %2258 = sub nsw i32 1597463174, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2162, 5.000000e-01
  %2261 = fmul fast float %2259, %2259
  %2262 = fmul fast float %2261, %2260
  %2263 = fsub fast float 1.500000e+00, %2262
  %2264 = fmul fast float %2259, %2162
  %2265 = fmul fast float %2264, %2263
  %2266 = fsub fast float %2245, %2227
  %2267 = fsub fast float %2255, %2231
  %2268 = fsub fast float %2265, %2235
  %2269 = fmul fast float %2266, %2195
  %2270 = fmul fast float %2267, %2197
  %2271 = fmul fast float %2268, %2202
  %2272 = fadd fast float %2269, %2210
  %2273 = fadd fast float %2270, %2214
  %2274 = fadd fast float %2271, %2218
  %2275 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2276 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2277 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2278 = fmul fast float %2275, %2275
  %2279 = fmul fast float %2276, %2276
  %2280 = fmul fast float %2277, %2277
  %2281 = fsub fast float %2278, %2160
  %2282 = fsub fast float %2279, %2161
  %2283 = fsub fast float %2280, %2162
  %2284 = fmul fast float %2281, %2185
  %2285 = fmul fast float %2282, %2185
  %2286 = fmul fast float %2283, %2185
  %2287 = fadd fast float %2284, %2160
  %2288 = fadd fast float %2285, %2161
  %2289 = fadd fast float %2286, %2162
  %2290 = fadd fast float %2207, %2171
  %2291 = fsub fast float %2290, %2224
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = fsub fast float %2292, %2171
  %2294 = fmul fast float %2293, %2185
  %2295 = fadd fast float %2294, %2171
  br label %2349

; <label>:2296                                    ; preds = %2184
  %2297 = and i32 %2187, 134217728
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2333, label %2299

; <label>:2299                                    ; preds = %2296
  %2300 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2301 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2302 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2303 = fadd fast float %2300, -5.000000e-01
  %2304 = fadd fast float %2301, -5.000000e-01
  %2305 = fadd fast float %2302, -5.000000e-01
  %2306 = fmul fast float %2303, %2185
  %2307 = fmul fast float %2304, %2185
  %2308 = fmul fast float %2305, %2185
  %2309 = fadd fast float %2306, 5.000000e-01
  %2310 = fadd fast float %2307, 5.000000e-01
  %2311 = fadd fast float %2308, 5.000000e-01
  %2312 = call float @dx.op.unary.f32(i32 24, float %2160)  ; Sqrt(value)
  %2313 = call float @dx.op.unary.f32(i32 24, float %2161)  ; Sqrt(value)
  %2314 = call float @dx.op.unary.f32(i32 24, float %2162)  ; Sqrt(value)
  %2315 = fmul fast float %2309, 2.000000e+00
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = fmul fast float %2316, %2312
  %2318 = fadd fast float %2317, %2315
  %2319 = fmul fast float %2318, %2312
  %2320 = fmul fast float %2310, 2.000000e+00
  %2321 = fsub fast float 1.000000e+00, %2320
  %2322 = fmul fast float %2321, %2313
  %2323 = fadd fast float %2322, %2320
  %2324 = fmul fast float %2323, %2313
  %2325 = fmul fast float %2311, 2.000000e+00
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = fmul fast float %2326, %2314
  %2328 = fadd fast float %2327, %2325
  %2329 = fmul fast float %2328, %2314
  %2330 = fmul fast float %2319, %2319
  %2331 = fmul fast float %2324, %2324
  %2332 = fmul fast float %2329, %2329
  br label %2349

; <label>:2333                                    ; preds = %2296
  %2334 = fmul fast float %275, %275
  %2335 = fmul fast float %279, %279
  %2336 = fmul fast float %283, %283
  %2337 = fadd fast float %2334, -1.000000e+00
  %2338 = fadd fast float %2335, -1.000000e+00
  %2339 = fadd fast float %2336, -1.000000e+00
  %2340 = fmul fast float %2185, %2337
  %2341 = fmul fast float %2185, %2338
  %2342 = fmul fast float %2185, %2339
  %2343 = fadd fast float %2340, 1.000000e+00
  %2344 = fadd fast float %2341, 1.000000e+00
  %2345 = fadd fast float %2342, 1.000000e+00
  %2346 = fmul fast float %2343, %2160
  %2347 = fmul fast float %2344, %2161
  %2348 = fmul fast float %2345, %2162
  br label %2349

; <label>:2349                                    ; preds = %2333, %2299, %2190, %2146
  %2350 = phi float [ %2295, %2190 ], [ %2171, %2299 ], [ %2171, %2333 ], [ 0x3FA23C0BE0000000, %2146 ]
  %2351 = phi float [ %2287, %2190 ], [ %2330, %2299 ], [ %2346, %2333 ], [ 1.000000e+00, %2146 ]
  %2352 = phi float [ %2288, %2190 ], [ %2331, %2299 ], [ %2347, %2333 ], [ 1.000000e+00, %2146 ]
  %2353 = phi float [ %2289, %2190 ], [ %2332, %2299 ], [ %2348, %2333 ], [ 1.000000e+00, %2146 ]
  %2354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.i32 %2354, 1
  %2356 = and i32 %2355, 1
  %2357 = icmp ne i32 %2356, 0
  %2358 = add i32 %33, 356
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 32
  %2362 = icmp ne i32 %2361, 0
  %2363 = and i1 %2357, %2362
  %2364 = select i1 %2363, float 1.000000e+00, float %2351
  %2365 = select i1 %2363, float 0x3FD3333340000000, float %2352
  %2366 = select i1 %2363, float 0x3FD3333340000000, float %2353
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 32
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2443, label %2371

; <label>:2371                                    ; preds = %2349
  %2372 = add i32 %33, 124
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %33, 400
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %2377, 0
  %2379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2379, %dx.types.Handle %64, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = extractvalue %dx.types.ResRet.f32 %2380, 3
  %2385 = and i32 %2374, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = lshr i32 %2374, 8
  %2388 = and i32 %2387, 255
  %2389 = uitofp i32 %2388 to float
  %2390 = lshr i32 %2374, 16
  %2391 = and i32 %2390, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101000000000
  %2394 = fmul fast float %2381, %2386
  %2395 = fadd fast float %2394, %2389
  %2396 = fmul fast float %2395, 0x3F70101000000000
  %2397 = fadd fast float %2382, -5.000000e-01
  %2398 = fadd fast float %2384, -5.000000e-01
  %2399 = fmul fast float %2397, %2393
  %2400 = fmul fast float %2398, %2393
  %2401 = fadd fast float %2399, 5.000000e-01
  %2402 = fadd fast float %2400, 5.000000e-01
  %2403 = fmul fast float %2401, 2.000000e+00
  %2404 = fadd fast float %2403, -1.000000e+00
  %2405 = fmul fast float %2402, 2.000000e+00
  %2406 = fadd fast float %2405, -1.000000e+00
  %2407 = fadd fast float %2404, %2406
  %2408 = fmul fast float %2407, 5.000000e-01
  %2409 = fsub fast float %2404, %2406
  %2410 = fmul fast float %2409, 5.000000e-01
  %2411 = call float @dx.op.unary.f32(i32 6, float %2408)  ; FAbs(value)
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = call float @dx.op.unary.f32(i32 6, float %2410)  ; FAbs(value)
  %2414 = fsub fast float %2412, %2413
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2408, float %2410, float %2414, float %2408, float %2410, float %2414)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = call float @dx.op.unary.f32(i32 25, float %2415)  ; Rsqrt(value)
  %2417 = fmul fast float %2408, %2416
  %2418 = fmul fast float %2410, %2416
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 67108864
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2439, label %2423

; <label>:2423                                    ; preds = %2371
  %2424 = add i32 %33, 312
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 65535
  %2428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2427)  ; LegacyF16ToF32(value)
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 65535
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = lshr i32 %2426, 16
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = fsub fast float %2396, %2434
  %2436 = fmul fast float %2435, %2428
  %2437 = fadd fast float %2436, %2432
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  br label %2439

; <label>:2439                                    ; preds = %2423, %2371
  %2440 = phi float [ %2438, %2423 ], [ %2396, %2371 ]
  %2441 = call float @dx.op.dot2.f32(i32 54, float %2417, float %2418, float %1860, float %1861)  ; Dot2(ax,ay,bx,by)
  %2442 = call float @dx.op.dot2.f32(i32 54, float %2417, float %2418, float %1862, float %1863)  ; Dot2(ax,ay,bx,by)
  br label %2443

; <label>:2443                                    ; preds = %2439, %2349
  %2444 = phi float [ %2440, %2439 ], [ 0x3FD6666660000000, %2349 ]
  %2445 = phi float [ %2441, %2439 ], [ 0.000000e+00, %2349 ]
  %2446 = phi float [ %2442, %2439 ], [ 0.000000e+00, %2349 ]
  %2447 = phi float [ %2383, %2439 ], [ 1.000000e+00, %2349 ]
  %2448 = add i32 %33, 192
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = lshr i32 %2450, 22
  %2452 = shl nuw nsw i32 %2451, 5
  %2453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2452)  ; LegacyF16ToF32(value)
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 64
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2491, label %2458

; <label>:2458                                    ; preds = %2443
  %2459 = add i32 %33, 416
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = add i32 %2461, 0
  %2463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 131072
  %2467 = icmp eq i32 %2466, 0
  %2468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2463, %dx.types.Handle %64, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.ResRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.ResRet.f32 %2468, 2
  %2472 = fmul fast float %2469, %263
  %2473 = fmul fast float %2470, %266
  %2474 = fmul fast float %2471, %269
  br i1 %2467, label %2481, label %2475

; <label>:2475                                    ; preds = %2458
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2478 = fmul fast float %2477, %2472
  %2479 = fmul fast float %2477, %2473
  %2480 = fmul fast float %2477, %2474
  br label %2481

; <label>:2481                                    ; preds = %2475, %2458
  %2482 = phi float [ %2478, %2475 ], [ %2472, %2458 ]
  %2483 = phi float [ %2479, %2475 ], [ %2473, %2458 ]
  %2484 = phi float [ %2480, %2475 ], [ %2474, %2458 ]
  %2485 = fmul fast float %2482, %2453
  %2486 = select i1 %173, float %2485, float %2482
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2486, float %2483, float %2484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = select i1 %173, float 0.000000e+00, float %2482
  %2489 = select i1 %173, float %2487, float %2483
  %2490 = select i1 %173, float 0.000000e+00, float %2484
  br label %2491

; <label>:2491                                    ; preds = %2481, %2443
  %2492 = phi float [ %2488, %2481 ], [ 0.000000e+00, %2443 ]
  %2493 = phi float [ %2489, %2481 ], [ 0.000000e+00, %2443 ]
  %2494 = phi float [ %2490, %2481 ], [ 0.000000e+00, %2443 ]
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 1024
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2529, label %2499

; <label>:2499                                    ; preds = %2491
  %2500 = add i32 %33, 184
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = lshr i32 %2502, 8
  %2507 = and i32 %2506, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = lshr i32 %2502, 16
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = fmul fast float %2505, %2505
  %2515 = fmul fast float %2509, %2509
  %2516 = fmul fast float %2513, %2513
  %2517 = add i32 %33, 480
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %2519, 0
  %2521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2521, %dx.types.Handle %65, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.ResRet.f32 %2522, 1
  %2525 = extractvalue %dx.types.ResRet.f32 %2522, 2
  %2526 = fmul fast float %2514, %2523
  %2527 = fmul fast float %2515, %2524
  %2528 = fmul fast float %2516, %2525
  br label %2529

; <label>:2529                                    ; preds = %2499, %2491
  %2530 = phi float [ %2526, %2499 ], [ 0.000000e+00, %2491 ]
  %2531 = phi float [ %2527, %2499 ], [ 0.000000e+00, %2491 ]
  %2532 = phi float [ %2528, %2499 ], [ 0.000000e+00, %2491 ]
  %2533 = fcmp fast ogt float %2530, 0.000000e+00
  %2534 = fcmp fast ogt float %2531, 0.000000e+00
  %2535 = fcmp fast ogt float %2532, 0.000000e+00
  %2536 = call float @dx.op.unary.f32(i32 23, float %2530)  ; Log(value)
  %2537 = call float @dx.op.unary.f32(i32 23, float %2531)  ; Log(value)
  %2538 = call float @dx.op.unary.f32(i32 23, float %2532)  ; Log(value)
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = lshr i32 %2540, 7
  %2542 = and i32 %2541, 32752
  %2543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2542)  ; LegacyF16ToF32(value)
  %2544 = fmul fast float %2536, 0xBFE62E4300000000
  %2545 = fmul fast float %2544, %2543
  %2546 = fmul fast float %2537, 0xBFE62E4300000000
  %2547 = fmul fast float %2546, %2543
  %2548 = fmul fast float %2538, 0xBFE62E4300000000
  %2549 = fmul fast float %2548, %2543
  %2550 = select i1 %2533, float %2545, float 1.270000e+02
  %2551 = select i1 %2534, float %2547, float 1.270000e+02
  %2552 = select i1 %2535, float %2549, float 1.270000e+02
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 10240
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2577, label %2557

; <label>:2557                                    ; preds = %2529
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 2048
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2577, label %2562

; <label>:2562                                    ; preds = %2557
  %2563 = add i32 %33, 496
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %65, float %1956, float %1957, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 3
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = shl i32 %2571, 4
  %2573 = and i32 %2572, 32752
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = fmul fast float %2574, %2569
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2577

; <label>:2577                                    ; preds = %2562, %2557, %2529
  %2578 = phi float [ %2576, %2562 ], [ 0x3F70101020000000, %2557 ], [ 0x3F70101020000000, %2529 ]
  %2579 = add i32 %33, 128
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = lshr i32 %2581, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = call float @dx.op.dot3.f32(i32 55, float %2364, float %2365, float %2366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2588 = fmul fast float %2586, %2587
  %2589 = fadd fast float %2588, %2583
  %2590 = fmul fast float %2589, 0x3F70101020000000
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  br i1 %1848, label %2592, label %2627

; <label>:2592                                    ; preds = %2577
  %2593 = fmul fast float %2578, 2.000000e+00
  %2594 = fcmp fast olt float %2550, 1.270000e+02
  %2595 = fcmp fast olt float %2551, 1.270000e+02
  %2596 = fcmp fast olt float %2552, 1.270000e+02
  %2597 = fmul fast float %2550, 0xBFF7154760000000
  %2598 = fmul fast float %2597, %2593
  %2599 = fmul fast float %2551, 0xBFF7154760000000
  %2600 = fmul fast float %2599, %2593
  %2601 = fmul fast float %2552, 0xBFF7154760000000
  %2602 = fmul fast float %2601, %2593
  %2603 = call float @dx.op.unary.f32(i32 21, float %2598)  ; Exp(value)
  %2604 = call float @dx.op.unary.f32(i32 21, float %2600)  ; Exp(value)
  %2605 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2606 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2607 = call float @dx.op.unary.f32(i32 7, float %2604)  ; Saturate(value)
  %2608 = call float @dx.op.unary.f32(i32 7, float %2605)  ; Saturate(value)
  %2609 = fadd fast float %2606, -1.000000e+00
  %2610 = select i1 %2594, float %2609, float -1.000000e+00
  %2611 = fadd fast float %2607, -1.000000e+00
  %2612 = select i1 %2595, float %2611, float -1.000000e+00
  %2613 = fadd fast float %2608, -1.000000e+00
  %2614 = select i1 %2596, float %2613, float -1.000000e+00
  %2615 = fmul fast float %2610, %2144
  %2616 = fmul fast float %2612, %2144
  %2617 = fmul fast float %2614, %2144
  %2618 = fadd fast float %2615, 1.000000e+00
  %2619 = fadd fast float %2616, 1.000000e+00
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fmul fast float %2618, %1840
  %2622 = fmul fast float %2619, %1841
  %2623 = fmul fast float %2620, %1842
  %2624 = fmul fast float %2618, %1837
  %2625 = fmul fast float %2619, %1838
  %2626 = fmul fast float %2620, %1839
  br label %2627

; <label>:2627                                    ; preds = %2592, %2577
  %2628 = phi float [ %2624, %2592 ], [ %1837, %2577 ]
  %2629 = phi float [ %2625, %2592 ], [ %1838, %2577 ]
  %2630 = phi float [ %2626, %2592 ], [ %1839, %2577 ]
  %2631 = phi float [ %2621, %2592 ], [ %1840, %2577 ]
  %2632 = phi float [ %2622, %2592 ], [ %1841, %2577 ]
  %2633 = phi float [ %2623, %2592 ], [ %1842, %2577 ]
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 3
  %2637 = icmp eq i32 %2636, 3
  br i1 %2637, label %2716, label %2638

; <label>:2638                                    ; preds = %2627
  %2639 = and i32 %2635, 16
  %2640 = icmp ne i32 %2639, 0
  %2641 = select i1 %2640, float %2144, float 0.000000e+00
  %2642 = icmp eq i32 %2636, 0
  br i1 %2642, label %2643, label %2671

; <label>:2643                                    ; preds = %2638
  %2644 = and i32 %2635, 64
  %2645 = icmp ne i32 %2644, 0
  %2646 = select i1 %2645, float %2144, float 0.000000e+00
  %2647 = fsub fast float %2364, %2631
  %2648 = fsub fast float %2365, %2632
  %2649 = fsub fast float %2366, %2633
  %2650 = fmul fast float %2641, %2647
  %2651 = fmul fast float %2641, %2648
  %2652 = fmul fast float %2641, %2649
  %2653 = fadd fast float %2650, %2631
  %2654 = fadd fast float %2651, %2632
  %2655 = fadd fast float %2652, %2633
  %2656 = fsub fast float %2350, %1843
  %2657 = fmul fast float %2641, %2656
  %2658 = fadd fast float %2657, %1843
  %2659 = fsub fast float %2492, %2628
  %2660 = fsub fast float %2493, %2629
  %2661 = fsub fast float %2494, %2630
  %2662 = fmul fast float %2646, %2659
  %2663 = fmul fast float %2646, %2660
  %2664 = fmul fast float %2646, %2661
  %2665 = fadd fast float %2662, %2628
  %2666 = fadd fast float %2663, %2629
  %2667 = fadd fast float %2664, %2630
  %2668 = fsub fast float %2591, %1846
  %2669 = fmul fast float %2641, %2668
  %2670 = fadd fast float %2669, %1846
  br label %2716

; <label>:2671                                    ; preds = %2638
  %2672 = icmp eq i32 %2636, 1
  br i1 %2672, label %2673, label %2686

; <label>:2673                                    ; preds = %2671
  %2674 = fadd fast float %2364, -1.000000e+00
  %2675 = fadd fast float %2365, -1.000000e+00
  %2676 = fadd fast float %2366, -1.000000e+00
  %2677 = fmul fast float %2641, %2674
  %2678 = fmul fast float %2641, %2675
  %2679 = fmul fast float %2641, %2676
  %2680 = fadd fast float %2677, 1.000000e+00
  %2681 = fadd fast float %2678, 1.000000e+00
  %2682 = fadd fast float %2679, 1.000000e+00
  %2683 = fmul fast float %2680, %2631
  %2684 = fmul fast float %2681, %2632
  %2685 = fmul fast float %2682, %2633
  br label %2716

; <label>:2686                                    ; preds = %2671
  %2687 = icmp eq i32 %2636, 2
  br i1 %2687, label %2688, label %2716

; <label>:2688                                    ; preds = %2686
  %2689 = call float @dx.op.unary.f32(i32 24, float %2364)  ; Sqrt(value)
  %2690 = call float @dx.op.unary.f32(i32 24, float %2365)  ; Sqrt(value)
  %2691 = call float @dx.op.unary.f32(i32 24, float %2366)  ; Sqrt(value)
  %2692 = fadd fast float %2689, -5.000000e-01
  %2693 = fadd fast float %2690, -5.000000e-01
  %2694 = fadd fast float %2691, -5.000000e-01
  %2695 = fmul fast float %2692, %2641
  %2696 = fmul fast float %2693, %2641
  %2697 = fmul fast float %2694, %2641
  %2698 = fadd fast float %2695, 5.000000e-01
  %2699 = fadd fast float %2696, 5.000000e-01
  %2700 = fadd fast float %2697, 5.000000e-01
  %2701 = fmul fast float %2698, 2.000000e+00
  %2702 = fsub fast float 1.000000e+00, %2701
  %2703 = fmul fast float %2702, %2631
  %2704 = fadd fast float %2703, %2701
  %2705 = fmul fast float %2704, %2631
  %2706 = fmul fast float %2699, 2.000000e+00
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2707, %2632
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2632
  %2711 = fmul fast float %2700, 2.000000e+00
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2712, %2633
  %2714 = fadd fast float %2713, %2711
  %2715 = fmul fast float %2714, %2633
  br label %2716

; <label>:2716                                    ; preds = %2688, %2686, %2673, %2643, %2627
  %2717 = phi float [ %2628, %2627 ], [ %2628, %2688 ], [ %2628, %2686 ], [ %2628, %2673 ], [ %2665, %2643 ]
  %2718 = phi float [ %2629, %2627 ], [ %2629, %2688 ], [ %2629, %2686 ], [ %2629, %2673 ], [ %2666, %2643 ]
  %2719 = phi float [ %2630, %2627 ], [ %2630, %2688 ], [ %2630, %2686 ], [ %2630, %2673 ], [ %2667, %2643 ]
  %2720 = phi float [ %2631, %2627 ], [ %2705, %2688 ], [ %2631, %2686 ], [ %2683, %2673 ], [ %2653, %2643 ]
  %2721 = phi float [ %2632, %2627 ], [ %2710, %2688 ], [ %2632, %2686 ], [ %2684, %2673 ], [ %2654, %2643 ]
  %2722 = phi float [ %2633, %2627 ], [ %2715, %2688 ], [ %2633, %2686 ], [ %2685, %2673 ], [ %2655, %2643 ]
  %2723 = phi float [ %1843, %2627 ], [ %1843, %2688 ], [ %1843, %2686 ], [ %1843, %2673 ], [ %2658, %2643 ]
  %2724 = phi float [ %1846, %2627 ], [ %1846, %2688 ], [ %1846, %2686 ], [ %1846, %2673 ], [ %2670, %2643 ]
  %2725 = and i32 %2635, 12
  %2726 = icmp eq i32 %2725, 12
  br i1 %2726, label %2799, label %2727

; <label>:2727                                    ; preds = %2716
  %2728 = and i32 %2635, 2097184
  %2729 = icmp eq i32 %2728, 2097184
  %2730 = select i1 %2729, float %2144, float 0.000000e+00
  %2731 = and i32 %2635, 4194336
  %2732 = icmp eq i32 %2731, 4194336
  %2733 = select i1 %2732, float %2144, float 0.000000e+00
  %2734 = and i32 %2635, 8388640
  %2735 = icmp eq i32 %2734, 8388640
  %2736 = select i1 %2735, float %2144, float 0.000000e+00
  %2737 = icmp eq i32 %2725, 0
  br i1 %2737, label %2738, label %2751

; <label>:2738                                    ; preds = %2727
  %2739 = fsub fast float %2445, %1835
  %2740 = fsub fast float %2446, %1836
  %2741 = fmul fast float %2730, %2739
  %2742 = fmul fast float %2730, %2740
  %2743 = fadd fast float %2741, %1835
  %2744 = fadd fast float %2742, %1836
  %2745 = fsub fast float %2447, %1845
  %2746 = fmul fast float %2733, %2745
  %2747 = fadd fast float %2746, %1845
  %2748 = fsub fast float %2444, %1844
  %2749 = fmul fast float %2736, %2748
  %2750 = fadd fast float %2749, %1844
  br label %2799

; <label>:2751                                    ; preds = %2727
  %2752 = icmp eq i32 %2725, 4
  br i1 %2752, label %2753, label %2785

; <label>:2753                                    ; preds = %2751
  %2754 = fmul fast float %2730, %2445
  %2755 = fmul fast float %2730, %2446
  %2756 = fadd fast float %2754, %1835
  %2757 = fadd fast float %2755, %1836
  %2758 = call float @dx.op.binary.f32(i32 36, float %1845, float %2447)  ; FMin(a,b)
  %2759 = fsub fast float %2758, %1845
  %2760 = fmul fast float %2759, %2733
  %2761 = fadd fast float %2760, %1845
  %2762 = fadd fast float %2444, %1844
  %2763 = fmul fast float %2762, 0x3FF337FAE0000000
  %2764 = fmul fast float %1844, %1844
  %2765 = fmul fast float %2444, %2444
  %2766 = fadd fast float %2765, %2764
  %2767 = fmul fast float %2766, 0x3FE5152B00000000
  %2768 = fmul fast float %1844, 0xBFCC1F85E0000000
  %2769 = fmul fast float %2768, %2444
  %2770 = fadd fast float %2769, 0xBFE1363700000000
  %2771 = fadd fast float %2770, %2763
  %2772 = fsub fast float %2771, %2767
  %2773 = fmul fast float %2762, 0x3FBA6F0D00000000
  %2774 = fmul fast float %2766, 0x3FD0432880000000
  %2775 = fmul fast float %1844, 0xBFEF110800000000
  %2776 = fmul fast float %2775, %2444
  %2777 = fadd fast float %2776, 1.000000e+00
  %2778 = fsub fast float %2777, %2773
  %2779 = fadd fast float %2778, %2774
  %2780 = fdiv fast float %2772, %2779
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fsub fast float %2781, %1844
  %2783 = fmul fast float %2782, %2736
  %2784 = fadd fast float %2783, %1844
  br label %2799

; <label>:2785                                    ; preds = %2751
  %2786 = icmp eq i32 %2725, 8
  br i1 %2786, label %2787, label %2799

; <label>:2787                                    ; preds = %2785
  %2788 = fmul fast float %2730, %2445
  %2789 = fmul fast float %2730, %2446
  %2790 = fadd fast float %2788, %1835
  %2791 = fadd fast float %2789, %1836
  %2792 = call float @dx.op.binary.f32(i32 36, float %1845, float %2447)  ; FMin(a,b)
  %2793 = fsub fast float %2792, %1845
  %2794 = fmul fast float %2793, %2733
  %2795 = fadd fast float %2794, %1845
  %2796 = fsub fast float %2444, %1844
  %2797 = fmul fast float %2736, %2796
  %2798 = fadd fast float %2797, %1844
  br label %2799

; <label>:2799                                    ; preds = %2787, %2785, %2753, %2738, %2716, %2143, %1847, %1834
  %2800 = phi float [ %1835, %2716 ], [ %1835, %2143 ], [ %1835, %1834 ], [ %2790, %2787 ], [ %1835, %2785 ], [ %2756, %2753 ], [ %2743, %2738 ], [ %1835, %1847 ]
  %2801 = phi float [ %1836, %2716 ], [ %1836, %2143 ], [ %1836, %1834 ], [ %2791, %2787 ], [ %1836, %2785 ], [ %2757, %2753 ], [ %2744, %2738 ], [ %1836, %1847 ]
  %2802 = phi float [ %2717, %2716 ], [ %1837, %2143 ], [ %1837, %1834 ], [ %2717, %2787 ], [ %2717, %2785 ], [ %2717, %2753 ], [ %2717, %2738 ], [ %1837, %1847 ]
  %2803 = phi float [ %2718, %2716 ], [ %1838, %2143 ], [ %1838, %1834 ], [ %2718, %2787 ], [ %2718, %2785 ], [ %2718, %2753 ], [ %2718, %2738 ], [ %1838, %1847 ]
  %2804 = phi float [ %2719, %2716 ], [ %1839, %2143 ], [ %1839, %1834 ], [ %2719, %2787 ], [ %2719, %2785 ], [ %2719, %2753 ], [ %2719, %2738 ], [ %1839, %1847 ]
  %2805 = phi float [ %2720, %2716 ], [ %1840, %2143 ], [ %1840, %1834 ], [ %2720, %2787 ], [ %2720, %2785 ], [ %2720, %2753 ], [ %2720, %2738 ], [ %1840, %1847 ]
  %2806 = phi float [ %2721, %2716 ], [ %1841, %2143 ], [ %1841, %1834 ], [ %2721, %2787 ], [ %2721, %2785 ], [ %2721, %2753 ], [ %2721, %2738 ], [ %1841, %1847 ]
  %2807 = phi float [ %2722, %2716 ], [ %1842, %2143 ], [ %1842, %1834 ], [ %2722, %2787 ], [ %2722, %2785 ], [ %2722, %2753 ], [ %2722, %2738 ], [ %1842, %1847 ]
  %2808 = phi float [ %2723, %2716 ], [ %1843, %2143 ], [ %1843, %1834 ], [ %2723, %2787 ], [ %2723, %2785 ], [ %2723, %2753 ], [ %2723, %2738 ], [ %1843, %1847 ]
  %2809 = phi float [ %1844, %2716 ], [ %1844, %2143 ], [ %1844, %1834 ], [ %2798, %2787 ], [ %1844, %2785 ], [ %2784, %2753 ], [ %2750, %2738 ], [ %1844, %1847 ]
  %2810 = phi float [ %1845, %2716 ], [ %1845, %2143 ], [ %1845, %1834 ], [ %2795, %2787 ], [ %1845, %2785 ], [ %2761, %2753 ], [ %2747, %2738 ], [ %1845, %1847 ]
  %2811 = phi float [ %2724, %2716 ], [ %1846, %2143 ], [ %1846, %1834 ], [ %2724, %2787 ], [ %2724, %2785 ], [ %2724, %2753 ], [ %2724, %2738 ], [ %1846, %1847 ]
  br i1 %350, label %3764, label %2812

; <label>:2812                                    ; preds = %2799
  %2813 = icmp ult i32 %401, 4
  %2814 = add i32 %33, 72
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %33, 76
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = or i32 %2819, %2816
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %3764, label %2822

; <label>:2822                                    ; preds = %2812
  %2823 = and i32 %2816, 262144
  %2824 = icmp ne i32 %2823, 0
  %2825 = select i1 %2824, float %36, float 1.000000e+00
  %2826 = select i1 %2824, float %37, float 0.000000e+00
  %2827 = select i1 %2824, float %38, float 0.000000e+00
  %2828 = select i1 %2824, float %39, float 1.000000e+00
  %2829 = select i1 %2824, float %40, float %56
  %2830 = select i1 %2824, float %41, float %57
  %2831 = add i32 %33, 332
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = lshr i32 %2833, 16
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = fmul fast float %2835, 0x3F50624DE0000000
  %2837 = add i32 %33, 136
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 16
  %2841 = and i32 %2840, 255
  %2842 = lshr i32 %2839, 24
  %2843 = add i32 %33, 340
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = and i32 %2845, 65535
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = lshr i32 %2845, 16
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = add i32 %33, 80
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 22
  %2854 = shl nuw nsw i32 %2853, 5
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = shl i32 %2852, 4
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2852, 7
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 3
  %2864 = fmul fast float %2863, 1.000000e+03
  %2865 = fmul fast float %340, %2864
  %2866 = call float @dx.op.unary.f32(i32 22, float %2865)  ; Frc(value)
  %2867 = fadd fast float %2866, %330
  %2868 = fmul fast float %341, %2864
  %2869 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2870 = fadd fast float %2869, %332
  %2871 = fmul fast float %2836, %2864
  %2872 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2873 = fmul fast float %2872, 0x401921FB60000000
  %2874 = fadd fast float %2873, %2855
  %2875 = call float @dx.op.unary.f32(i32 13, float %2874)  ; Sin(value)
  %2876 = call float @dx.op.unary.f32(i32 12, float %2874)  ; Cos(value)
  %2877 = fsub fast float -0.000000e+00, %2875
  %2878 = fadd fast float %2829, -5.000000e-01
  %2879 = fadd fast float %2830, -5.000000e-01
  %2880 = fmul fast float %2847, %2878
  %2881 = fmul fast float %2849, %2879
  %2882 = fadd fast float %2880, 5.000000e-01
  %2883 = fadd fast float %2881, 5.000000e-01
  %2884 = fmul fast float %2858, %2882
  %2885 = fmul fast float %2861, %2883
  %2886 = fmul fast float %2876, %2884
  %2887 = call float @dx.op.tertiary.f32(i32 46, float %2877, float %2885, float %2886)  ; FMad(a,b,c)
  %2888 = fmul fast float %2875, %2884
  %2889 = call float @dx.op.tertiary.f32(i32 46, float %2876, float %2885, float %2888)  ; FMad(a,b,c)
  %2890 = fadd fast float %2867, %2887
  %2891 = fadd fast float %2870, %2889
  %2892 = icmp ugt i32 %2841, 1
  %2893 = icmp ugt i32 %2839, 33554431
  %2894 = or i1 %2893, %2892
  br i1 %2894, label %2895, label %2920

; <label>:2895                                    ; preds = %2822
  %2896 = add i32 %33, 276
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = lshr i32 %2898, 16
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = fmul fast float %2863, %2900
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = mul nuw nsw i32 %2841, %2842
  %2904 = uitofp i32 %2903 to float
  %2905 = fmul fast float %2902, %2904
  %2906 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2907 = fptoui float %2906 to i32
  %2908 = urem i32 %2907, %2841
  %2909 = udiv i32 %2907, %2842
  %2910 = call float @dx.op.unary.f32(i32 22, float %2890)  ; Frc(value)
  %2911 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2912 = uitofp i32 %2908 to float
  %2913 = uitofp i32 %2909 to float
  %2914 = fadd fast float %2910, %2912
  %2915 = fadd fast float %2911, %2913
  %2916 = uitofp i32 %2841 to float
  %2917 = uitofp i32 %2842 to float
  %2918 = fdiv fast float %2914, %2916
  %2919 = fdiv fast float %2915, %2917
  br label %2920

; <label>:2920                                    ; preds = %2895, %2822
  %2921 = phi float [ %2918, %2895 ], [ %2890, %2822 ]
  %2922 = phi float [ %2919, %2895 ], [ %2891, %2822 ]
  %2923 = and i32 %2816, 16777216
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %3034, label %2925

; <label>:2925                                    ; preds = %2920
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.CBufRet.f32 %2926, 2
  %2930 = fadd fast float %2927, %131
  %2931 = fadd fast float %2928, %132
  %2932 = fadd fast float %2929, %133
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = icmp eq i32 %34, 65535
  br i1 %2936, label %3031, label %2937

; <label>:2937                                    ; preds = %2925
  %2938 = lshr i32 %34, 1
  %2939 = shl i32 %2938, 2
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %34, 1
  %2943 = icmp ne i32 %2942, 0
  %2944 = lshr i32 %2941, 16
  %2945 = and i32 %2941, 65535
  %2946 = select i1 %2943, i32 %2944, i32 %2945
  %2947 = icmp eq i32 %2946, 65535
  br i1 %2947, label %3027, label %2948

; <label>:2948                                    ; preds = %2937
  %2949 = mul nuw nsw i32 %2946, 40
  %2950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2954 = add nuw nsw i32 %2949, 12
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = add nuw nsw i32 %2949, 24
  %2960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = add nuw nsw i32 %2949, 36
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = fsub fast float %2930, %2951
  %2968 = fsub fast float %2931, %2952
  %2969 = fsub fast float %2932, %2953
  %2970 = fmul fast float %2966, %2967
  %2971 = fmul fast float %2966, %2968
  %2972 = fmul fast float %2966, %2969
  %2973 = call float @dx.op.unary.f32(i32 27, float %2970)  ; Round_ni(value)
  %2974 = call float @dx.op.unary.f32(i32 27, float %2971)  ; Round_ni(value)
  %2975 = call float @dx.op.unary.f32(i32 27, float %2972)  ; Round_ni(value)
  %2976 = fadd fast float %2973, 5.000000e-01
  %2977 = fadd fast float %2974, 5.000000e-01
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fmul fast float %2976, %2956
  %2980 = fmul fast float %2977, %2957
  %2981 = fmul fast float %2978, %2958
  %2982 = shl i32 %34, 2
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = add i32 %2984, 0
  %2986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2987 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %2988 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2989 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2986, %dx.types.Handle %30, float %2987, float %2988, float %2989, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = fmul fast float %2991, 1.023000e+03
  %2995 = fmul fast float %2992, 1.023000e+03
  %2996 = fmul fast float %2993, 1.023000e+03
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = fadd fast float %2996, 5.000000e-01
  %3000 = call float @dx.op.unary.f32(i32 27, float %2997)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = call float @dx.op.unary.f32(i32 27, float %2999)  ; Round_ni(value)
  %3003 = fsub fast float %2970, %2973
  %3004 = fsub fast float %2971, %2974
  %3005 = fsub fast float %2972, %2975
  %3006 = fmul fast float %3003, 7.500000e-01
  %3007 = fmul fast float %3004, 7.500000e-01
  %3008 = fmul fast float %3005, 7.500000e-01
  %3009 = fadd fast float %2973, 1.250000e-01
  %3010 = fadd fast float %3009, %3006
  %3011 = fadd fast float %3010, %3000
  %3012 = fadd fast float %2974, 1.250000e-01
  %3013 = fadd fast float %3012, %3007
  %3014 = fadd fast float %3013, %3001
  %3015 = fadd fast float %2975, 1.250000e-01
  %3016 = fadd fast float %3015, %3008
  %3017 = fadd fast float %3016, %3002
  %3018 = fmul fast float %3011, %2961
  %3019 = fmul fast float %3014, %2962
  %3020 = fmul fast float %3017, %2963
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3024, %dx.types.Handle %28, float %3018, float %3019, float %3020, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  br label %3027

; <label>:3027                                    ; preds = %2948, %2937
  %3028 = phi float [ %3026, %2948 ], [ -1.000000e+00, %2937 ]
  %3029 = fadd fast float %3028, %2935
  %3030 = call float @dx.op.unary.f32(i32 7, float %3029)  ; Saturate(value)
  br label %3031

; <label>:3031                                    ; preds = %3027, %2925
  %3032 = phi float [ %3030, %3027 ], [ %2935, %2925 ]
  %3033 = fmul fast float %3032, %396
  br label %3034

; <label>:3034                                    ; preds = %3031, %2920
  %3035 = phi float [ %3033, %3031 ], [ %396, %2920 ]
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 256
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3086, label %3040

; <label>:3040                                    ; preds = %3034
  %3041 = add i32 %33, 452
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = add i32 %3043, 0
  %3045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3045, %dx.types.Handle %65, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3047 = extractvalue %dx.types.ResRet.f32 %3046, 0
  %3048 = add i32 %33, 148
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = shl i32 %3050, 4
  %3052 = and i32 %3051, 32752
  %3053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3052)  ; LegacyF16ToF32(value)
  %3054 = lshr i32 %3050, 7
  %3055 = and i32 %3054, 32752
  %3056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3055)  ; LegacyF16ToF32(value)
  %3057 = fsub fast float 1.000000e+00, %3035
  %3058 = call float @dx.op.binary.f32(i32 35, float %3057, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3059 = bitcast float %3035 to i32
  %3060 = sitofp i32 %3059 to float
  %3061 = fadd fast float %3060, 0xC1CFBF8940000000
  %3062 = fmul fast float %3056, %3061
  %3063 = fadd fast float %3062, 0x41CFBF8940000000
  %3064 = fptosi float %3063 to i32
  %3065 = bitcast i32 %3064 to float
  %3066 = bitcast float %3058 to i32
  %3067 = sitofp i32 %3066 to float
  %3068 = fadd fast float %3067, 0xC1CFBF8940000000
  %3069 = fmul fast float %3068, %3056
  %3070 = fadd fast float %3069, 0x41CFBF8940000000
  %3071 = fptosi float %3070 to i32
  %3072 = bitcast i32 %3071 to float
  %3073 = fmul fast float %3065, %3053
  %3074 = fmul fast float %3072, %3053
  %3075 = fsub fast float %3058, %3073
  %3076 = fadd fast float %3074, %3058
  %3077 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3079 = fsub fast float %3047, %3077
  %3080 = fsub fast float %3078, %3077
  %3081 = bitcast float %3080 to i32
  %3082 = sub nsw i32 2129859010, %3081
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3083, %3079
  %3085 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  br label %3086

; <label>:3086                                    ; preds = %3040, %3034
  %3087 = phi float [ %3085, %3040 ], [ %3035, %3034 ]
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 128
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3108, label %3092

; <label>:3092                                    ; preds = %3086
  %3093 = add i32 %33, 436
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = add i32 %3095, 0
  %3097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3098 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3097, %dx.types.Handle %65, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3099 = extractvalue %dx.types.ResRet.f32 %3098, 0
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 524288
  %3103 = icmp ne i32 %3102, 0
  %3104 = fcmp fast ogt float %3099, 0x3FE0101020000000
  %3105 = select i1 %3104, float 1.000000e+00, float 0.000000e+00
  %3106 = select i1 %3103, float %3105, float %3099
  %3107 = fmul fast float %3106, %3087
  br label %3108

; <label>:3108                                    ; preds = %3092, %3086
  %3109 = phi float [ %3107, %3092 ], [ %3087, %3086 ]
  %3110 = fcmp fast ult float %3109, 0x3F70101020000000
  br i1 %3110, label %3764, label %3111

; <label>:3111                                    ; preds = %3108
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 16
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3314, label %3116

; <label>:3116                                    ; preds = %3111
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = add i32 %33, 388
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %64, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = extractvalue %dx.types.ResRet.f32 %3124, 1
  %3127 = extractvalue %dx.types.ResRet.f32 %3124, 2
  %3128 = extractvalue %dx.types.ResRet.f32 %3124, 3
  %3129 = and i32 %3118, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = lshr i32 %3118, 8
  %3132 = and i32 %3131, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = fmul fast float %3128, %3130
  %3135 = fadd fast float %3134, %3133
  %3136 = fmul fast float %3135, 0x3F70101000000000
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 512
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3149, label %3141

; <label>:3141                                    ; preds = %3116
  %3142 = add i32 %33, 468
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %3144, 0
  %3146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3146, %dx.types.Handle %65, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  br label %3149

; <label>:3149                                    ; preds = %3141, %3116
  %3150 = phi float [ %3148, %3141 ], [ 1.000000e+00, %3116 ]
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 33554432
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3261, label %3155

; <label>:3155                                    ; preds = %3149
  %3156 = add i32 %33, 272
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 65535
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = lshr i32 %3158, 16
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = add i32 %33, 276
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 65535
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = lshr i32 %3169, 24
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3171, 0x3F70101020000000
  %3173 = and i32 %3169, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = lshr i32 %3169, 8
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = lshr i32 %3169, 16
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = add i32 %33, 268
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = lshr i32 %3186, 24
  %3188 = uitofp i32 %3187 to float
  %3189 = fmul fast float %3188, 0x3F70101020000000
  %3190 = and i32 %3186, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = lshr i32 %3186, 8
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = lshr i32 %3186, 16
  %3198 = and i32 %3197, 255
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = bitcast float %3125 to i32
  %3202 = ashr i32 %3201, 1
  %3203 = sub nsw i32 1597463174, %3202
  %3204 = bitcast i32 %3203 to float
  %3205 = fmul fast float %3125, 5.000000e-01
  %3206 = fmul fast float %3204, %3204
  %3207 = fmul fast float %3206, %3205
  %3208 = fsub fast float 1.500000e+00, %3207
  %3209 = fmul fast float %3204, %3125
  %3210 = fmul fast float %3209, %3208
  %3211 = bitcast float %3126 to i32
  %3212 = ashr i32 %3211, 1
  %3213 = sub nsw i32 1597463174, %3212
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3126, 5.000000e-01
  %3216 = fmul fast float %3214, %3214
  %3217 = fmul fast float %3216, %3215
  %3218 = fsub fast float 1.500000e+00, %3217
  %3219 = fmul fast float %3214, %3126
  %3220 = fmul fast float %3219, %3218
  %3221 = bitcast float %3127 to i32
  %3222 = ashr i32 %3221, 1
  %3223 = sub nsw i32 1597463174, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3127, 5.000000e-01
  %3226 = fmul fast float %3224, %3224
  %3227 = fmul fast float %3226, %3225
  %3228 = fsub fast float 1.500000e+00, %3227
  %3229 = fmul fast float %3224, %3127
  %3230 = fmul fast float %3229, %3228
  %3231 = fsub fast float %3210, %3192
  %3232 = fsub fast float %3220, %3196
  %3233 = fsub fast float %3230, %3200
  %3234 = fmul fast float %3231, %3160
  %3235 = fmul fast float %3232, %3162
  %3236 = fmul fast float %3233, %3167
  %3237 = fadd fast float %3234, %3175
  %3238 = fadd fast float %3235, %3179
  %3239 = fadd fast float %3236, %3183
  %3240 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3241 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = fmul fast float %3240, %3240
  %3244 = fmul fast float %3241, %3241
  %3245 = fmul fast float %3242, %3242
  %3246 = fsub fast float %3243, %3125
  %3247 = fsub fast float %3244, %3126
  %3248 = fsub fast float %3245, %3127
  %3249 = fmul fast float %3246, %3150
  %3250 = fmul fast float %3247, %3150
  %3251 = fmul fast float %3248, %3150
  %3252 = fadd fast float %3249, %3125
  %3253 = fadd fast float %3250, %3126
  %3254 = fadd fast float %3251, %3127
  %3255 = fadd fast float %3172, %3136
  %3256 = fsub fast float %3255, %3189
  %3257 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3258 = fsub fast float %3257, %3136
  %3259 = fmul fast float %3258, %3150
  %3260 = fadd fast float %3259, %3136
  br label %3314

; <label>:3261                                    ; preds = %3149
  %3262 = and i32 %3152, 134217728
  %3263 = icmp eq i32 %3262, 0
  br i1 %3263, label %3298, label %3264

; <label>:3264                                    ; preds = %3261
  %3265 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3266 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3268 = fadd fast float %3265, -5.000000e-01
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fmul fast float %3268, %3150
  %3272 = fmul fast float %3269, %3150
  %3273 = fmul fast float %3270, %3150
  %3274 = fadd fast float %3271, 5.000000e-01
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3280 = fmul fast float %3274, 2.000000e+00
  %3281 = fsub fast float 1.000000e+00, %3280
  %3282 = fmul fast float %3281, %3277
  %3283 = fadd fast float %3282, %3280
  %3284 = fmul fast float %3283, %3277
  %3285 = fmul fast float %3275, 2.000000e+00
  %3286 = fsub fast float 1.000000e+00, %3285
  %3287 = fmul fast float %3286, %3278
  %3288 = fadd fast float %3287, %3285
  %3289 = fmul fast float %3288, %3278
  %3290 = fmul fast float %3276, 2.000000e+00
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = fmul fast float %3291, %3279
  %3293 = fadd fast float %3292, %3290
  %3294 = fmul fast float %3293, %3279
  %3295 = fmul fast float %3284, %3284
  %3296 = fmul fast float %3289, %3289
  %3297 = fmul fast float %3294, %3294
  br label %3314

; <label>:3298                                    ; preds = %3261
  %3299 = fmul fast float %317, %317
  %3300 = fmul fast float %321, %321
  %3301 = fmul fast float %325, %325
  %3302 = fadd fast float %3299, -1.000000e+00
  %3303 = fadd fast float %3300, -1.000000e+00
  %3304 = fadd fast float %3301, -1.000000e+00
  %3305 = fmul fast float %3150, %3302
  %3306 = fmul fast float %3150, %3303
  %3307 = fmul fast float %3150, %3304
  %3308 = fadd fast float %3305, 1.000000e+00
  %3309 = fadd fast float %3306, 1.000000e+00
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fmul fast float %3308, %3125
  %3312 = fmul fast float %3309, %3126
  %3313 = fmul fast float %3310, %3127
  br label %3314

; <label>:3314                                    ; preds = %3298, %3264, %3155, %3111
  %3315 = phi float [ %3260, %3155 ], [ %3136, %3264 ], [ %3136, %3298 ], [ 0x3FA23C0BE0000000, %3111 ]
  %3316 = phi float [ %3252, %3155 ], [ %3295, %3264 ], [ %3311, %3298 ], [ 1.000000e+00, %3111 ]
  %3317 = phi float [ %3253, %3155 ], [ %3296, %3264 ], [ %3312, %3298 ], [ 1.000000e+00, %3111 ]
  %3318 = phi float [ %3254, %3155 ], [ %3297, %3264 ], [ %3313, %3298 ], [ 1.000000e+00, %3111 ]
  %3319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.i32 %3319, 1
  %3321 = and i32 %3320, 1
  %3322 = icmp ne i32 %3321, 0
  %3323 = add i32 %33, 356
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = and i32 %3325, 32
  %3327 = icmp ne i32 %3326, 0
  %3328 = and i1 %3322, %3327
  %3329 = select i1 %3328, float 1.000000e+00, float %3316
  %3330 = select i1 %3328, float 0x3FD3333340000000, float %3317
  %3331 = select i1 %3328, float 0x3FD3333340000000, float %3318
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = and i32 %3333, 32
  %3335 = icmp eq i32 %3334, 0
  br i1 %3335, label %3408, label %3336

; <label>:3336                                    ; preds = %3314
  %3337 = add i32 %33, 140
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = add i32 %33, 404
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = add i32 %3342, 0
  %3344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3344, %dx.types.Handle %64, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = extractvalue %dx.types.ResRet.f32 %3345, 3
  %3350 = and i32 %3339, 255
  %3351 = uitofp i32 %3350 to float
  %3352 = lshr i32 %3339, 8
  %3353 = and i32 %3352, 255
  %3354 = uitofp i32 %3353 to float
  %3355 = lshr i32 %3339, 16
  %3356 = and i32 %3355, 255
  %3357 = uitofp i32 %3356 to float
  %3358 = fmul fast float %3357, 0x3F70101000000000
  %3359 = fmul fast float %3346, %3351
  %3360 = fadd fast float %3359, %3354
  %3361 = fmul fast float %3360, 0x3F70101000000000
  %3362 = fadd fast float %3347, -5.000000e-01
  %3363 = fadd fast float %3349, -5.000000e-01
  %3364 = fmul fast float %3362, %3358
  %3365 = fmul fast float %3363, %3358
  %3366 = fadd fast float %3364, 5.000000e-01
  %3367 = fadd fast float %3365, 5.000000e-01
  %3368 = fmul fast float %3366, 2.000000e+00
  %3369 = fadd fast float %3368, -1.000000e+00
  %3370 = fmul fast float %3367, 2.000000e+00
  %3371 = fadd fast float %3370, -1.000000e+00
  %3372 = fadd fast float %3369, %3371
  %3373 = fmul fast float %3372, 5.000000e-01
  %3374 = fsub fast float %3369, %3371
  %3375 = fmul fast float %3374, 5.000000e-01
  %3376 = call float @dx.op.unary.f32(i32 6, float %3373)  ; FAbs(value)
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3379 = fsub fast float %3377, %3378
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3373, float %3375, float %3379, float %3373, float %3375, float %3379)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = call float @dx.op.unary.f32(i32 25, float %3380)  ; Rsqrt(value)
  %3382 = fmul fast float %3373, %3381
  %3383 = fmul fast float %3375, %3381
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = and i32 %3385, 67108864
  %3387 = icmp eq i32 %3386, 0
  br i1 %3387, label %3404, label %3388

; <label>:3388                                    ; preds = %3336
  %3389 = add i32 %33, 328
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = and i32 %3391, 65535
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 65535
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = lshr i32 %3391, 16
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = fsub fast float %3361, %3399
  %3401 = fmul fast float %3400, %3393
  %3402 = fadd fast float %3401, %3397
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  br label %3404

; <label>:3404                                    ; preds = %3388, %3336
  %3405 = phi float [ %3403, %3388 ], [ %3361, %3336 ]
  %3406 = call float @dx.op.dot2.f32(i32 54, float %3382, float %3383, float %2825, float %2826)  ; Dot2(ax,ay,bx,by)
  %3407 = call float @dx.op.dot2.f32(i32 54, float %3382, float %3383, float %2827, float %2828)  ; Dot2(ax,ay,bx,by)
  br label %3408

; <label>:3408                                    ; preds = %3404, %3314
  %3409 = phi float [ %3405, %3404 ], [ 0x3FD6666660000000, %3314 ]
  %3410 = phi float [ %3406, %3404 ], [ 0.000000e+00, %3314 ]
  %3411 = phi float [ %3407, %3404 ], [ 0.000000e+00, %3314 ]
  %3412 = phi float [ %3348, %3404 ], [ 1.000000e+00, %3314 ]
  %3413 = add i32 %33, 208
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = lshr i32 %3415, 22
  %3417 = shl nuw nsw i32 %3416, 5
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 64
  %3422 = icmp eq i32 %3421, 0
  br i1 %3422, label %3456, label %3423

; <label>:3423                                    ; preds = %3408
  %3424 = add i32 %33, 420
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = add i32 %3426, 0
  %3428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 131072
  %3432 = icmp eq i32 %3431, 0
  %3433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3428, %dx.types.Handle %64, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = fmul fast float %3434, %305
  %3438 = fmul fast float %3435, %308
  %3439 = fmul fast float %3436, %311
  br i1 %3432, label %3446, label %3440

; <label>:3440                                    ; preds = %3423
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3443 = fmul fast float %3442, %3437
  %3444 = fmul fast float %3442, %3438
  %3445 = fmul fast float %3442, %3439
  br label %3446

; <label>:3446                                    ; preds = %3440, %3423
  %3447 = phi float [ %3443, %3440 ], [ %3437, %3423 ]
  %3448 = phi float [ %3444, %3440 ], [ %3438, %3423 ]
  %3449 = phi float [ %3445, %3440 ], [ %3439, %3423 ]
  %3450 = fmul fast float %3447, %3418
  %3451 = select i1 %173, float %3450, float %3447
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3448, float %3449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = select i1 %173, float 0.000000e+00, float %3447
  %3454 = select i1 %173, float %3452, float %3448
  %3455 = select i1 %173, float 0.000000e+00, float %3449
  br label %3456

; <label>:3456                                    ; preds = %3446, %3408
  %3457 = phi float [ %3453, %3446 ], [ 0.000000e+00, %3408 ]
  %3458 = phi float [ %3454, %3446 ], [ 0.000000e+00, %3408 ]
  %3459 = phi float [ %3455, %3446 ], [ 0.000000e+00, %3408 ]
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 1024
  %3463 = icmp eq i32 %3462, 0
  br i1 %3463, label %3494, label %3464

; <label>:3464                                    ; preds = %3456
  %3465 = add i32 %33, 200
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = lshr i32 %3467, 8
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = lshr i32 %3467, 16
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = fmul fast float %3477, 0x3F70101020000000
  %3479 = fmul fast float %3470, %3470
  %3480 = fmul fast float %3474, %3474
  %3481 = fmul fast float %3478, %3478
  %3482 = add i32 %33, 484
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = add i32 %3484, 0
  %3486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3486, %dx.types.Handle %65, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = fmul fast float %3479, %3488
  %3492 = fmul fast float %3480, %3489
  %3493 = fmul fast float %3481, %3490
  br label %3494

; <label>:3494                                    ; preds = %3464, %3456
  %3495 = phi float [ %3491, %3464 ], [ 0.000000e+00, %3456 ]
  %3496 = phi float [ %3492, %3464 ], [ 0.000000e+00, %3456 ]
  %3497 = phi float [ %3493, %3464 ], [ 0.000000e+00, %3456 ]
  %3498 = fcmp fast ogt float %3495, 0.000000e+00
  %3499 = fcmp fast ogt float %3496, 0.000000e+00
  %3500 = fcmp fast ogt float %3497, 0.000000e+00
  %3501 = call float @dx.op.unary.f32(i32 23, float %3495)  ; Log(value)
  %3502 = call float @dx.op.unary.f32(i32 23, float %3496)  ; Log(value)
  %3503 = call float @dx.op.unary.f32(i32 23, float %3497)  ; Log(value)
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = lshr i32 %3505, 7
  %3507 = and i32 %3506, 32752
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = fmul fast float %3501, 0xBFE62E4300000000
  %3510 = fmul fast float %3509, %3508
  %3511 = fmul fast float %3502, 0xBFE62E4300000000
  %3512 = fmul fast float %3511, %3508
  %3513 = fmul fast float %3503, 0xBFE62E4300000000
  %3514 = fmul fast float %3513, %3508
  %3515 = select i1 %3498, float %3510, float 1.270000e+02
  %3516 = select i1 %3499, float %3512, float 1.270000e+02
  %3517 = select i1 %3500, float %3514, float 1.270000e+02
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 10240
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3542, label %3522

; <label>:3522                                    ; preds = %3494
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 2048
  %3526 = icmp eq i32 %3525, 0
  br i1 %3526, label %3542, label %3527

; <label>:3527                                    ; preds = %3522
  %3528 = add i32 %33, 500
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = add i32 %3530, 0
  %3532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3532, %dx.types.Handle %65, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 3
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = shl i32 %3536, 4
  %3538 = and i32 %3537, 32752
  %3539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3538)  ; LegacyF16ToF32(value)
  %3540 = fmul fast float %3539, %3534
  %3541 = call float @dx.op.binary.f32(i32 35, float %3540, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3542

; <label>:3542                                    ; preds = %3527, %3522, %3494
  %3543 = phi float [ %3541, %3527 ], [ 0x3F70101020000000, %3522 ], [ 0x3F70101020000000, %3494 ]
  %3544 = add i32 %33, 144
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 255
  %3548 = uitofp i32 %3547 to float
  %3549 = lshr i32 %3546, 8
  %3550 = and i32 %3549, 255
  %3551 = uitofp i32 %3550 to float
  %3552 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3330, float %3331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3553 = fmul fast float %3551, %3552
  %3554 = fadd fast float %3553, %3548
  %3555 = fmul fast float %3554, 0x3F70101020000000
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  br i1 %2813, label %3557, label %3592

; <label>:3557                                    ; preds = %3542
  %3558 = fmul fast float %3543, 2.000000e+00
  %3559 = fcmp fast olt float %3515, 1.270000e+02
  %3560 = fcmp fast olt float %3516, 1.270000e+02
  %3561 = fcmp fast olt float %3517, 1.270000e+02
  %3562 = fmul fast float %3515, 0xBFF7154760000000
  %3563 = fmul fast float %3562, %3558
  %3564 = fmul fast float %3516, 0xBFF7154760000000
  %3565 = fmul fast float %3564, %3558
  %3566 = fmul fast float %3517, 0xBFF7154760000000
  %3567 = fmul fast float %3566, %3558
  %3568 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3569 = call float @dx.op.unary.f32(i32 21, float %3565)  ; Exp(value)
  %3570 = call float @dx.op.unary.f32(i32 21, float %3567)  ; Exp(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = fadd fast float %3571, -1.000000e+00
  %3575 = select i1 %3559, float %3574, float -1.000000e+00
  %3576 = fadd fast float %3572, -1.000000e+00
  %3577 = select i1 %3560, float %3576, float -1.000000e+00
  %3578 = fadd fast float %3573, -1.000000e+00
  %3579 = select i1 %3561, float %3578, float -1.000000e+00
  %3580 = fmul fast float %3575, %3109
  %3581 = fmul fast float %3577, %3109
  %3582 = fmul fast float %3579, %3109
  %3583 = fadd fast float %3580, 1.000000e+00
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fadd fast float %3582, 1.000000e+00
  %3586 = fmul fast float %3583, %2805
  %3587 = fmul fast float %3584, %2806
  %3588 = fmul fast float %3585, %2807
  %3589 = fmul fast float %3583, %2802
  %3590 = fmul fast float %3584, %2803
  %3591 = fmul fast float %3585, %2804
  br label %3592

; <label>:3592                                    ; preds = %3557, %3542
  %3593 = phi float [ %3589, %3557 ], [ %2802, %3542 ]
  %3594 = phi float [ %3590, %3557 ], [ %2803, %3542 ]
  %3595 = phi float [ %3591, %3557 ], [ %2804, %3542 ]
  %3596 = phi float [ %3586, %3557 ], [ %2805, %3542 ]
  %3597 = phi float [ %3587, %3557 ], [ %2806, %3542 ]
  %3598 = phi float [ %3588, %3557 ], [ %2807, %3542 ]
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 3
  %3602 = icmp eq i32 %3601, 3
  br i1 %3602, label %3681, label %3603

; <label>:3603                                    ; preds = %3592
  %3604 = and i32 %3600, 16
  %3605 = icmp ne i32 %3604, 0
  %3606 = select i1 %3605, float %3109, float 0.000000e+00
  %3607 = icmp eq i32 %3601, 0
  br i1 %3607, label %3608, label %3636

; <label>:3608                                    ; preds = %3603
  %3609 = and i32 %3600, 64
  %3610 = icmp ne i32 %3609, 0
  %3611 = select i1 %3610, float %3109, float 0.000000e+00
  %3612 = fsub fast float %3329, %3596
  %3613 = fsub fast float %3330, %3597
  %3614 = fsub fast float %3331, %3598
  %3615 = fmul fast float %3606, %3612
  %3616 = fmul fast float %3606, %3613
  %3617 = fmul fast float %3606, %3614
  %3618 = fadd fast float %3615, %3596
  %3619 = fadd fast float %3616, %3597
  %3620 = fadd fast float %3617, %3598
  %3621 = fsub fast float %3315, %2808
  %3622 = fmul fast float %3606, %3621
  %3623 = fadd fast float %3622, %2808
  %3624 = fsub fast float %3457, %3593
  %3625 = fsub fast float %3458, %3594
  %3626 = fsub fast float %3459, %3595
  %3627 = fmul fast float %3611, %3624
  %3628 = fmul fast float %3611, %3625
  %3629 = fmul fast float %3611, %3626
  %3630 = fadd fast float %3627, %3593
  %3631 = fadd fast float %3628, %3594
  %3632 = fadd fast float %3629, %3595
  %3633 = fsub fast float %3556, %2811
  %3634 = fmul fast float %3606, %3633
  %3635 = fadd fast float %3634, %2811
  br label %3681

; <label>:3636                                    ; preds = %3603
  %3637 = icmp eq i32 %3601, 1
  br i1 %3637, label %3638, label %3651

; <label>:3638                                    ; preds = %3636
  %3639 = fadd fast float %3329, -1.000000e+00
  %3640 = fadd fast float %3330, -1.000000e+00
  %3641 = fadd fast float %3331, -1.000000e+00
  %3642 = fmul fast float %3606, %3639
  %3643 = fmul fast float %3606, %3640
  %3644 = fmul fast float %3606, %3641
  %3645 = fadd fast float %3642, 1.000000e+00
  %3646 = fadd fast float %3643, 1.000000e+00
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fmul fast float %3645, %3596
  %3649 = fmul fast float %3646, %3597
  %3650 = fmul fast float %3647, %3598
  br label %3681

; <label>:3651                                    ; preds = %3636
  %3652 = icmp eq i32 %3601, 2
  br i1 %3652, label %3653, label %3681

; <label>:3653                                    ; preds = %3651
  %3654 = call float @dx.op.unary.f32(i32 24, float %3329)  ; Sqrt(value)
  %3655 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3656 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3657 = fadd fast float %3654, -5.000000e-01
  %3658 = fadd fast float %3655, -5.000000e-01
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fmul fast float %3657, %3606
  %3661 = fmul fast float %3658, %3606
  %3662 = fmul fast float %3659, %3606
  %3663 = fadd fast float %3660, 5.000000e-01
  %3664 = fadd fast float %3661, 5.000000e-01
  %3665 = fadd fast float %3662, 5.000000e-01
  %3666 = fmul fast float %3663, 2.000000e+00
  %3667 = fsub fast float 1.000000e+00, %3666
  %3668 = fmul fast float %3667, %3596
  %3669 = fadd fast float %3668, %3666
  %3670 = fmul fast float %3669, %3596
  %3671 = fmul fast float %3664, 2.000000e+00
  %3672 = fsub fast float 1.000000e+00, %3671
  %3673 = fmul fast float %3672, %3597
  %3674 = fadd fast float %3673, %3671
  %3675 = fmul fast float %3674, %3597
  %3676 = fmul fast float %3665, 2.000000e+00
  %3677 = fsub fast float 1.000000e+00, %3676
  %3678 = fmul fast float %3677, %3598
  %3679 = fadd fast float %3678, %3676
  %3680 = fmul fast float %3679, %3598
  br label %3681

; <label>:3681                                    ; preds = %3653, %3651, %3638, %3608, %3592
  %3682 = phi float [ %3593, %3592 ], [ %3593, %3653 ], [ %3593, %3651 ], [ %3593, %3638 ], [ %3630, %3608 ]
  %3683 = phi float [ %3594, %3592 ], [ %3594, %3653 ], [ %3594, %3651 ], [ %3594, %3638 ], [ %3631, %3608 ]
  %3684 = phi float [ %3595, %3592 ], [ %3595, %3653 ], [ %3595, %3651 ], [ %3595, %3638 ], [ %3632, %3608 ]
  %3685 = phi float [ %3596, %3592 ], [ %3670, %3653 ], [ %3596, %3651 ], [ %3648, %3638 ], [ %3618, %3608 ]
  %3686 = phi float [ %3597, %3592 ], [ %3675, %3653 ], [ %3597, %3651 ], [ %3649, %3638 ], [ %3619, %3608 ]
  %3687 = phi float [ %3598, %3592 ], [ %3680, %3653 ], [ %3598, %3651 ], [ %3650, %3638 ], [ %3620, %3608 ]
  %3688 = phi float [ %2808, %3592 ], [ %2808, %3653 ], [ %2808, %3651 ], [ %2808, %3638 ], [ %3623, %3608 ]
  %3689 = phi float [ %2811, %3592 ], [ %2811, %3653 ], [ %2811, %3651 ], [ %2811, %3638 ], [ %3635, %3608 ]
  %3690 = and i32 %3600, 12
  %3691 = icmp eq i32 %3690, 12
  br i1 %3691, label %3764, label %3692

; <label>:3692                                    ; preds = %3681
  %3693 = and i32 %3600, 2097184
  %3694 = icmp eq i32 %3693, 2097184
  %3695 = select i1 %3694, float %3109, float 0.000000e+00
  %3696 = and i32 %3600, 4194336
  %3697 = icmp eq i32 %3696, 4194336
  %3698 = select i1 %3697, float %3109, float 0.000000e+00
  %3699 = and i32 %3600, 8388640
  %3700 = icmp eq i32 %3699, 8388640
  %3701 = select i1 %3700, float %3109, float 0.000000e+00
  %3702 = icmp eq i32 %3690, 0
  br i1 %3702, label %3703, label %3716

; <label>:3703                                    ; preds = %3692
  %3704 = fsub fast float %3410, %2800
  %3705 = fsub fast float %3411, %2801
  %3706 = fmul fast float %3695, %3704
  %3707 = fmul fast float %3695, %3705
  %3708 = fadd fast float %3706, %2800
  %3709 = fadd fast float %3707, %2801
  %3710 = fsub fast float %3412, %2810
  %3711 = fmul fast float %3698, %3710
  %3712 = fadd fast float %3711, %2810
  %3713 = fsub fast float %3409, %2809
  %3714 = fmul fast float %3701, %3713
  %3715 = fadd fast float %3714, %2809
  br label %3764

; <label>:3716                                    ; preds = %3692
  %3717 = icmp eq i32 %3690, 4
  br i1 %3717, label %3718, label %3750

; <label>:3718                                    ; preds = %3716
  %3719 = fmul fast float %3695, %3410
  %3720 = fmul fast float %3695, %3411
  %3721 = fadd fast float %3719, %2800
  %3722 = fadd fast float %3720, %2801
  %3723 = call float @dx.op.binary.f32(i32 36, float %2810, float %3412)  ; FMin(a,b)
  %3724 = fsub fast float %3723, %2810
  %3725 = fmul fast float %3724, %3698
  %3726 = fadd fast float %3725, %2810
  %3727 = fadd fast float %3409, %2809
  %3728 = fmul fast float %3727, 0x3FF337FAE0000000
  %3729 = fmul fast float %2809, %2809
  %3730 = fmul fast float %3409, %3409
  %3731 = fadd fast float %3730, %3729
  %3732 = fmul fast float %3731, 0x3FE5152B00000000
  %3733 = fmul fast float %2809, 0xBFCC1F85E0000000
  %3734 = fmul fast float %3733, %3409
  %3735 = fadd fast float %3734, 0xBFE1363700000000
  %3736 = fadd fast float %3735, %3728
  %3737 = fsub fast float %3736, %3732
  %3738 = fmul fast float %3727, 0x3FBA6F0D00000000
  %3739 = fmul fast float %3731, 0x3FD0432880000000
  %3740 = fmul fast float %2809, 0xBFEF110800000000
  %3741 = fmul fast float %3740, %3409
  %3742 = fadd fast float %3741, 1.000000e+00
  %3743 = fsub fast float %3742, %3738
  %3744 = fadd fast float %3743, %3739
  %3745 = fdiv fast float %3737, %3744
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fsub fast float %3746, %2809
  %3748 = fmul fast float %3747, %3701
  %3749 = fadd fast float %3748, %2809
  br label %3764

; <label>:3750                                    ; preds = %3716
  %3751 = icmp eq i32 %3690, 8
  br i1 %3751, label %3752, label %3764

; <label>:3752                                    ; preds = %3750
  %3753 = fmul fast float %3695, %3410
  %3754 = fmul fast float %3695, %3411
  %3755 = fadd fast float %3753, %2800
  %3756 = fadd fast float %3754, %2801
  %3757 = call float @dx.op.binary.f32(i32 36, float %2810, float %3412)  ; FMin(a,b)
  %3758 = fsub fast float %3757, %2810
  %3759 = fmul fast float %3758, %3698
  %3760 = fadd fast float %3759, %2810
  %3761 = fsub fast float %3409, %2809
  %3762 = fmul fast float %3701, %3761
  %3763 = fadd fast float %3762, %2809
  br label %3764

; <label>:3764                                    ; preds = %3752, %3750, %3718, %3703, %3681, %3108, %2812, %2799
  %3765 = phi float [ %2800, %3681 ], [ %2800, %3108 ], [ %2800, %2799 ], [ %2800, %2812 ], [ %3708, %3703 ], [ %3721, %3718 ], [ %2800, %3750 ], [ %3755, %3752 ]
  %3766 = phi float [ %2801, %3681 ], [ %2801, %3108 ], [ %2801, %2799 ], [ %2801, %2812 ], [ %3709, %3703 ], [ %3722, %3718 ], [ %2801, %3750 ], [ %3756, %3752 ]
  %3767 = phi float [ %3682, %3681 ], [ %2802, %3108 ], [ %2802, %2799 ], [ %2802, %2812 ], [ %3682, %3703 ], [ %3682, %3718 ], [ %3682, %3750 ], [ %3682, %3752 ]
  %3768 = phi float [ %3683, %3681 ], [ %2803, %3108 ], [ %2803, %2799 ], [ %2803, %2812 ], [ %3683, %3703 ], [ %3683, %3718 ], [ %3683, %3750 ], [ %3683, %3752 ]
  %3769 = phi float [ %3684, %3681 ], [ %2804, %3108 ], [ %2804, %2799 ], [ %2804, %2812 ], [ %3684, %3703 ], [ %3684, %3718 ], [ %3684, %3750 ], [ %3684, %3752 ]
  %3770 = phi float [ %3685, %3681 ], [ %2805, %3108 ], [ %2805, %2799 ], [ %2805, %2812 ], [ %3685, %3703 ], [ %3685, %3718 ], [ %3685, %3750 ], [ %3685, %3752 ]
  %3771 = phi float [ %3686, %3681 ], [ %2806, %3108 ], [ %2806, %2799 ], [ %2806, %2812 ], [ %3686, %3703 ], [ %3686, %3718 ], [ %3686, %3750 ], [ %3686, %3752 ]
  %3772 = phi float [ %3687, %3681 ], [ %2807, %3108 ], [ %2807, %2799 ], [ %2807, %2812 ], [ %3687, %3703 ], [ %3687, %3718 ], [ %3687, %3750 ], [ %3687, %3752 ]
  %3773 = phi float [ %3688, %3681 ], [ %2808, %3108 ], [ %2808, %2799 ], [ %2808, %2812 ], [ %3688, %3703 ], [ %3688, %3718 ], [ %3688, %3750 ], [ %3688, %3752 ]
  %3774 = phi float [ %2809, %3681 ], [ %2809, %3108 ], [ %2809, %2799 ], [ %2809, %2812 ], [ %3715, %3703 ], [ %3749, %3718 ], [ %2809, %3750 ], [ %3763, %3752 ]
  %3775 = phi float [ %2810, %3681 ], [ %2810, %3108 ], [ %2810, %2799 ], [ %2810, %2812 ], [ %3712, %3703 ], [ %3726, %3718 ], [ %2810, %3750 ], [ %3760, %3752 ]
  %3776 = phi float [ %3689, %3681 ], [ %2811, %3108 ], [ %2811, %2799 ], [ %2811, %2812 ], [ %3689, %3703 ], [ %3689, %3718 ], [ %3689, %3750 ], [ %3689, %3752 ]
  %3777 = add i32 %33, 360
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = bitcast i32 %3779 to float
  %3781 = fcmp fast oge float %3780, 0.000000e+00
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = select i1 %3781, float %3780, float %3783
  %3785 = call float @dx.op.dot2.f32(i32 54, float %3765, float %3766, float %3765, float %3766)  ; Dot2(ax,ay,bx,by)
  %3786 = fmul fast float %3785, 0x3FE3333340000000
  %3787 = fsub fast float 1.000000e+00, %3786
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3765, float %3766, float %3787, float %3765, float %3766, float %3787)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = call float @dx.op.unary.f32(i32 25, float %3788)  ; Rsqrt(value)
  %3790 = fmul fast float %3789, %3765
  %3791 = fmul fast float %3789, %3766
  %3792 = fmul fast float %3787, %3789
  %3793 = fmul fast float %3792, %75
  %3794 = fmul fast float %3792, %76
  %3795 = fmul fast float %3792, %77
  %3796 = fmul fast float %3790, %49
  %3797 = fmul fast float %3790, %50
  %3798 = fmul fast float %3790, %51
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = fadd fast float %3795, %3798
  %3802 = fmul fast float %87, %3791
  %3803 = fmul fast float %88, %3791
  %3804 = fmul fast float %89, %3791
  %3805 = fadd fast float %3799, %3802
  %3806 = fadd fast float %3800, %3803
  %3807 = fadd fast float %3801, %3804
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3805, float %3806, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call float @dx.op.unary.f32(i32 25, float %3808)  ; Rsqrt(value)
  %3810 = fmul fast float %3805, %3809
  %3811 = fmul fast float %3806, %3809
  %3812 = fmul fast float %3807, %3809
  %3813 = and i32 %35, 1
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3815, label %4323

; <label>:3815                                    ; preds = %3764
  %3816 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3817 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3818 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3819 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3820 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3821 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3822 = fadd fast float %3816, %131
  %3823 = fadd fast float %3817, %132
  %3824 = fadd fast float %3818, %133
  %3825 = fadd fast float %3819, %131
  %3826 = fadd fast float %3820, %132
  %3827 = fadd fast float %3821, %133
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3835 = fmul fast float %3829, %68
  %3836 = fmul fast float %3835, %3833
  %3837 = fmul fast float %3830, %69
  %3838 = fmul fast float %3837, %3834
  %3839 = fptoui float %3836 to i32
  %3840 = fptoui float %3838 to i32
  %3841 = fadd fast float %3829, -1.000000e+00
  %3842 = fadd fast float %3830, -1.000000e+00
  %3843 = fptoui float %3841 to i32
  %3844 = fptoui float %3842 to i32
  %3845 = call i32 @dx.op.binary.i32(i32 40, i32 %3839, i32 %3843)  ; UMin(a,b)
  %3846 = call i32 @dx.op.binary.i32(i32 40, i32 %3840, i32 %3844)  ; UMin(a,b)
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3850 = fmul fast float %3848, %63
  %3851 = fsub fast float %3850, %3849
  %3852 = fadd fast float %3831, -1.000000e+00
  %3853 = call float @dx.op.binary.f32(i32 36, float %3851, float %3852)  ; FMin(a,b)
  %3854 = fptoui float %3853 to i32
  %3855 = fptoui float %3829 to i32
  %3856 = fptoui float %3830 to i32
  %3857 = mul i32 %3854, %3856
  %3858 = add i32 %3857, %3846
  %3859 = mul i32 %3858, %3855
  %3860 = add i32 %3859, %3845
  %3861 = shl i32 %3860, 2
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = and i32 %3863, 1023
  %3865 = lshr i32 %3863, 10
  %3866 = icmp eq i32 %3864, 0
  br i1 %3866, label %4292, label %3867

; <label>:3867                                    ; preds = %3815
  %3868 = and i32 %3863, 1023
  br label %3869

; <label>:3869                                    ; preds = %3995, %3867
  %3870 = phi i32 [ %3945, %3995 ], [ 0, %3867 ]
  %3871 = phi float [ %3996, %3995 ], [ 0.000000e+00, %3867 ]
  %3872 = phi float [ %3997, %3995 ], [ %3784, %3867 ]
  %3873 = phi float [ %3998, %3995 ], [ %3776, %3867 ]
  %3874 = phi float [ %3999, %3995 ], [ 0.000000e+00, %3867 ]
  %3875 = phi float [ %4000, %3995 ], [ 0.000000e+00, %3867 ]
  %3876 = phi float [ %4001, %3995 ], [ %3767, %3867 ]
  %3877 = phi float [ %4002, %3995 ], [ %3768, %3867 ]
  %3878 = phi float [ %4003, %3995 ], [ %3769, %3867 ]
  %3879 = phi float [ %4004, %3995 ], [ %3810, %3867 ]
  %3880 = phi float [ %4005, %3995 ], [ %3811, %3867 ]
  %3881 = phi float [ %4006, %3995 ], [ %3812, %3867 ]
  %3882 = phi float [ %4007, %3995 ], [ %3775, %3867 ]
  %3883 = phi float [ %4008, %3995 ], [ %3774, %3867 ]
  %3884 = phi float [ %4009, %3995 ], [ 0.000000e+00, %3867 ]
  %3885 = phi float [ %4010, %3995 ], [ %3773, %3867 ]
  %3886 = phi float [ %4011, %3995 ], [ %3770, %3867 ]
  %3887 = phi float [ %4012, %3995 ], [ %3771, %3867 ]
  %3888 = phi float [ %4013, %3995 ], [ %3772, %3867 ]
  %3889 = add nuw nsw i32 %3870, %3865
  %3890 = shl i32 %3889, 2
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = shl i32 %3892, 8
  %3894 = or i32 %3893, 48
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = or i32 %3893, 64
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.i32 %3901, 1
  %3904 = or i32 %3893, 80
  %3905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 3
  %3908 = or i32 %3893, 96
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = or i32 %3893, 112
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3917 = or i32 %3893, 128
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = extractvalue %dx.types.ResRet.f32 %3918, 3
  %3923 = or i32 %3893, 144
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3929 = or i32 %3893, 160
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = extractvalue %dx.types.ResRet.f32 %3930, 3
  %3935 = or i32 %3893, 192
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = or i32 %3893, 208
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = or i32 %3893, 248
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = add nuw nsw i32 %3870, 1
  %3946 = bitcast float %3899 to i32
  %3947 = and i32 %3946, 512
  %3948 = icmp eq i32 %3947, 0
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3955 = or i32 %3893, 16
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = extractvalue %dx.types.ResRet.f32 %3956, 3
  %3961 = call float @dx.op.dot4.f32(i32 56, float %3957, float %3958, float %3959, float %3960, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3962 = or i32 %3893, 32
  %3963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.ResRet.f32 %3963, 3
  %3968 = call float @dx.op.dot4.f32(i32 56, float %3964, float %3965, float %3966, float %3967, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3969 = call float @dx.op.unary.f32(i32 27, float %3954)  ; Round_ni(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3969)  ; FAbs(value)
  %3971 = call float @dx.op.unary.f32(i32 27, float %3961)  ; Round_ni(value)
  %3972 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3973 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3974 = call float @dx.op.unary.f32(i32 27, float %3973)  ; Round_ni(value)
  %3975 = fadd fast float %3972, %3970
  %3976 = fadd fast float %3975, %3974
  %3977 = fcmp fast oeq float %3976, 0.000000e+00
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = call float @dx.op.dot4.f32(i32 56, float %3957, float %3958, float %3959, float %3960, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3980 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3825, float %3826, float %3827, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3981 = call float @dx.op.dot4.f32(i32 56, float %3957, float %3958, float %3959, float %3960, float %3825, float %3826, float %3827, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3982 = fsub fast float %3978, %3954
  %3983 = fsub fast float %3980, %3954
  %3984 = fsub fast float %3979, %3961
  %3985 = fsub fast float %3981, %3961
  %3986 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3898, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 2
  %3989 = fadd fast float %3988, %3986
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3992 = fcmp fast ogt float %3990, %3991
  %3993 = and i1 %3977, %3992
  %3994 = and i1 %3948, %3993
  br i1 %3994, label %4015, label %3995

; <label>:3995                                    ; preds = %4278, %4096, %4015, %3869
  %3996 = phi float [ %3871, %4015 ], [ %4099, %4096 ], [ %4099, %4278 ], [ %3871, %3869 ]
  %3997 = phi float [ %3872, %4015 ], [ %3872, %4096 ], [ %4253, %4278 ], [ %3872, %3869 ]
  %3998 = phi float [ %3873, %4015 ], [ %3873, %4096 ], [ %4251, %4278 ], [ %3873, %3869 ]
  %3999 = phi float [ %3874, %4015 ], [ %3874, %4096 ], [ %4223, %4278 ], [ %3874, %3869 ]
  %4000 = phi float [ %3875, %4015 ], [ %3875, %4096 ], [ %4221, %4278 ], [ %3875, %3869 ]
  %4001 = phi float [ %3876, %4015 ], [ %3876, %4096 ], [ %4288, %4278 ], [ %3876, %3869 ]
  %4002 = phi float [ %3877, %4015 ], [ %3877, %4096 ], [ %4289, %4278 ], [ %3877, %3869 ]
  %4003 = phi float [ %3878, %4015 ], [ %3878, %4096 ], [ %4290, %4278 ], [ %3878, %3869 ]
  %4004 = phi float [ %3879, %4015 ], [ %3879, %4096 ], [ %4202, %4278 ], [ %3879, %3869 ]
  %4005 = phi float [ %3880, %4015 ], [ %3880, %4096 ], [ %4203, %4278 ], [ %3880, %3869 ]
  %4006 = phi float [ %3881, %4015 ], [ %3881, %4096 ], [ %4204, %4278 ], [ %3881, %3869 ]
  %4007 = phi float [ %3882, %4015 ], [ %3882, %4096 ], [ %4231, %4278 ], [ %3882, %3869 ]
  %4008 = phi float [ %3883, %4015 ], [ %3883, %4096 ], [ %4228, %4278 ], [ %3883, %3869 ]
  %4009 = phi float [ %3884, %4015 ], [ %3884, %4096 ], [ %4225, %4278 ], [ %3884, %3869 ]
  %4010 = phi float [ %3885, %4015 ], [ %3885, %4096 ], [ %4219, %4278 ], [ %3885, %3869 ]
  %4011 = phi float [ %3886, %4015 ], [ %3886, %4096 ], [ %4214, %4278 ], [ %3886, %3869 ]
  %4012 = phi float [ %3887, %4015 ], [ %3887, %4096 ], [ %4215, %4278 ], [ %3887, %3869 ]
  %4013 = phi float [ %3888, %4015 ], [ %3888, %4096 ], [ %4216, %4278 ], [ %3888, %3869 ]
  %4014 = icmp eq i32 %3945, %3868
  br i1 %4014, label %4291, label %3869

; <label>:4015                                    ; preds = %3869
  %4016 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %4017 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %4021 = extractvalue %dx.types.ResRet.i32 %3901, 3
  %4022 = extractvalue %dx.types.ResRet.i32 %3901, 2
  %4023 = add i32 %4021, 0
  %4024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4024, %dx.types.Handle %4025, float %3954, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float %3982, float %3984, float undef, float %3983, float %3985, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = fmul fast float %4027, %4020
  %4029 = fadd fast float %4028, %4019
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %3954, %3910
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3961, float %4031)  ; FMad(a,b,c)
  %4033 = fadd fast float %4032, %4018
  %4034 = fmul fast float %3954, %3912
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3961, float %4034)  ; FMad(a,b,c)
  %4036 = fadd fast float %4035, %4017
  %4037 = fmul fast float %3982, %3910
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3984, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %3982, %3912
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3984, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %3983, %3910
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3985, float %4041)  ; FMad(a,b,c)
  %4043 = fmul fast float %3983, %3912
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3985, float %4043)  ; FMad(a,b,c)
  %4045 = add i32 %4022, 0
  %4046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4045, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4046, %dx.types.Handle %4025, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = and i32 %3946, 1024
  %4050 = icmp ne i32 %4049, 0
  %4051 = fcmp fast ogt float %4048, 0x3FE0101020000000
  %4052 = uitofp i1 %4051 to float
  %4053 = select i1 %4050, float %4052, float %4048
  %4054 = and i32 %3946, 8192
  %4055 = icmp ne i32 %4054, 0
  %4056 = select i1 %4055, float %4016, float 1.000000e+00
  %4057 = fmul fast float %3954, 2.000000e+00
  %4058 = fadd fast float %4057, -1.000000e+00
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = fmul fast float %4059, %3943
  %4061 = fsub fast float %4060, %3943
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %3961, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = fmul fast float %4065, %3944
  %4067 = fsub fast float %4066, %3944
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %3973, %3906
  %4070 = fsub fast float %4069, %3906
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = fmul fast float %4030, %4056
  %4073 = fmul fast float %4072, %4027
  %4074 = fmul fast float %4073, %4062
  %4075 = fmul fast float %4074, %4053
  %4076 = fmul fast float %4075, %4068
  %4077 = fmul fast float %4076, %4071
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4081 = fsub fast float %3990, %4080
  %4082 = fmul fast float %4081, %4079
  %4083 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  %4084 = fmul fast float %4077, %3907
  %4085 = fadd fast float %4077, %3907
  %4086 = fmul fast float %4085, %3916
  %4087 = fsub fast float %4086, %3916
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = and i32 %3946, 128
  %4090 = icmp ne i32 %4089, 0
  %4091 = select i1 %4090, float %4088, float %4084
  %4092 = fmul fast float %4091, %4083
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = fcmp fast ugt float %4092, %4094
  br i1 %4095, label %4096, label %3995

; <label>:4096                                    ; preds = %4015
  %4097 = select i1 %4055, float %4092, float 0.000000e+00
  %4098 = fadd fast float %4097, %3871
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  br i1 %4055, label %3995, label %4100

; <label>:4100                                    ; preds = %4096
  %4101 = and i32 %3946, 4
  %4102 = and i32 %3946, 8
  %4103 = add i32 %3902, 0
  %4104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4103, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4104, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = bitcast float %3928 to i32
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = lshr i32 %4111, 8
  %4115 = and i32 %4114, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = fmul fast float %4110, %4113
  %4118 = fadd fast float %4117, %4116
  %4119 = fmul fast float %4118, 0x3F70101000000000
  %4120 = add i32 %3903, 0
  %4121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4120, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4121, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4127 = bitcast float %3922 to i32
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = lshr i32 %4127, 8
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4127, 16
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4135, 0x3F70101000000000
  %4137 = fmul fast float %4123, %4129
  %4138 = fadd fast float %4137, %4132
  %4139 = fmul fast float %4138, 0x3F70101000000000
  %4140 = fadd fast float %4124, -5.000000e-01
  %4141 = fadd fast float %4126, -5.000000e-01
  %4142 = fmul fast float %4140, %4136
  %4143 = fmul fast float %4141, %4136
  %4144 = fadd fast float %4142, 5.000000e-01
  %4145 = fadd fast float %4143, 5.000000e-01
  %4146 = fmul fast float %4107, %3931
  %4147 = fmul fast float %4108, %3932
  %4148 = fmul fast float %4109, %3933
  %4149 = fmul fast float %4144, 2.000000e+00
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = fmul fast float %4145, 2.000000e+00
  %4152 = fadd fast float %4151, -1.000000e+00
  %4153 = fadd fast float %4150, %4152
  %4154 = fmul fast float %4153, 5.000000e-01
  %4155 = fsub fast float %4150, %4152
  %4156 = fmul fast float %4155, 5.000000e-01
  %4157 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4158 = fsub fast float 1.000000e+00, %4157
  %4159 = call float @dx.op.unary.f32(i32 6, float %4156)  ; FAbs(value)
  %4160 = fsub fast float %4158, %4159
  %4161 = call float @dx.op.dot3.f32(i32 55, float %4154, float %4156, float %4160, float %4154, float %4156, float %4160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = call float @dx.op.unary.f32(i32 25, float %4161)  ; Rsqrt(value)
  %4163 = fmul fast float %4154, %4162
  %4164 = fmul fast float %4156, %4162
  %4165 = fmul fast float %4162, %4160
  %4166 = fmul fast float %4165, %3896
  %4167 = fmul fast float %4165, %3897
  %4168 = fmul fast float %4165, %3898
  %4169 = fmul fast float %4163, %3919
  %4170 = fmul fast float %4163, %3920
  %4171 = fmul fast float %4163, %3921
  %4172 = fadd fast float %4169, %4166
  %4173 = fadd fast float %4170, %4167
  %4174 = fadd fast float %4171, %4168
  %4175 = fmul fast float %4164, %3925
  %4176 = fmul fast float %4164, %3926
  %4177 = fmul fast float %4164, %3927
  %4178 = fadd fast float %4172, %4175
  %4179 = fadd fast float %4173, %4176
  %4180 = fadd fast float %4174, %4177
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4179, float %4180, float %4178, float %4179, float %4180)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = call float @dx.op.unary.f32(i32 25, float %4181)  ; Rsqrt(value)
  %4183 = fmul fast float %4178, %4182
  %4184 = fmul fast float %4179, %4182
  %4185 = fmul fast float %4180, %4182
  %4186 = icmp ne i32 %4102, 0
  %4187 = select i1 %4186, float 1.000000e+00, float 0.000000e+00
  %4188 = fmul fast float %4092, %4187
  %4189 = and i32 %3946, 1
  %4190 = icmp eq i32 %4189, 0
  br i1 %4190, label %4191, label %4195

; <label>:4191                                    ; preds = %4100
  %4192 = fsub fast float %4183, %3879
  %4193 = fsub fast float %4184, %3880
  %4194 = fsub fast float %4185, %3881
  br label %4195

; <label>:4195                                    ; preds = %4191, %4100
  %4196 = phi float [ %4192, %4191 ], [ %4183, %4100 ]
  %4197 = phi float [ %4193, %4191 ], [ %4184, %4100 ]
  %4198 = phi float [ %4194, %4191 ], [ %4185, %4100 ]
  %4199 = fmul float %4198, %4188
  %4200 = fmul float %4197, %4188
  %4201 = fmul float %4196, %4188
  %4202 = fadd fast float %4201, %3879
  %4203 = fadd fast float %4200, %3880
  %4204 = fadd fast float %4199, %3881
  %4205 = icmp ne i32 %4101, 0
  %4206 = select i1 %4205, float 1.000000e+00, float 0.000000e+00
  %4207 = fmul fast float %4092, %4206
  %4208 = fsub fast float %4146, %3886
  %4209 = fsub fast float %4147, %3887
  %4210 = fsub fast float %4148, %3888
  %4211 = fmul fast float %4208, %4207
  %4212 = fmul fast float %4209, %4207
  %4213 = fmul fast float %4210, %4207
  %4214 = fadd fast float %4211, %3886
  %4215 = fadd fast float %4212, %3887
  %4216 = fadd fast float %4213, %3888
  %4217 = fsub fast float %4119, %3885
  %4218 = fmul fast float %4217, %4207
  %4219 = fadd fast float %4218, %3885
  %4220 = fmul fast float %4207, %3875
  %4221 = fsub fast float %3875, %4220
  %4222 = fmul fast float %4207, %3874
  %4223 = fsub fast float %3874, %4222
  %4224 = fadd fast float %4092, %3884
  %4225 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4226 = fsub fast float %4139, %3883
  %4227 = fmul fast float %4226, %4188
  %4228 = fadd fast float %4227, %3883
  %4229 = fsub fast float %4125, %3882
  %4230 = fmul fast float %4229, %4188
  %4231 = fadd fast float %4230, %3882
  %4232 = call float @dx.op.dot3.f32(i32 55, float %4146, float %4147, float %4148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4236 = fmul fast float %4235, %4232
  %4237 = fadd fast float %4236, %4234
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = bitcast float %3934 to i32
  %4240 = and i32 %4239, 65535
  %4241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4240)  ; LegacyF16ToF32(value)
  %4242 = lshr i32 %4239, 16
  %4243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4242)  ; LegacyF16ToF32(value)
  %4244 = fcmp fast oge float %4241, 0.000000e+00
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = select i1 %4244, float %4241, float %4246
  %4248 = fadd fast float %4247, %4243
  %4249 = fsub fast float %4238, %3873
  %4250 = fmul fast float %4249, %4092
  %4251 = fadd fast float %4250, %3873
  %4252 = fmul fast float %4248, %4092
  %4253 = call float @dx.op.binary.f32(i32 35, float %3872, float %4252)  ; FMax(a,b)
  %4254 = and i32 %3946, 16
  %4255 = icmp eq i32 %4254, 0
  br i1 %4255, label %4278, label %4256

; <label>:4256                                    ; preds = %4195
  %4257 = bitcast float %3940 to i32
  %4258 = add i32 %3937, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4258, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4259, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = and i32 %4257, 65535
  %4265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4264)  ; LegacyF16ToF32(value)
  %4266 = fmul fast float %4261, %3931
  %4267 = fmul fast float %4262, %3932
  %4268 = fmul fast float %4263, %3933
  %4269 = and i32 %3946, 16384
  %4270 = icmp ne i32 %4269, 0
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = select i1 %4270, float %4272, float 1.000000e+00
  %4274 = fmul fast float %4273, %4265
  %4275 = fmul fast float %4266, %4274
  %4276 = fmul fast float %4267, %4274
  %4277 = fmul fast float %4268, %4274
  br label %4278

; <label>:4278                                    ; preds = %4256, %4195
  %4279 = phi float [ %4275, %4256 ], [ 0.000000e+00, %4195 ]
  %4280 = phi float [ %4276, %4256 ], [ 0.000000e+00, %4195 ]
  %4281 = phi float [ %4277, %4256 ], [ 0.000000e+00, %4195 ]
  %4282 = fsub fast float %4279, %3876
  %4283 = fsub fast float %4280, %3877
  %4284 = fsub fast float %4281, %3878
  %4285 = fmul fast float %4282, %4092
  %4286 = fmul fast float %4283, %4092
  %4287 = fmul fast float %4284, %4092
  %4288 = fadd fast float %4285, %3876
  %4289 = fadd fast float %4286, %3877
  %4290 = fadd fast float %4287, %3878
  br label %3995

; <label>:4291                                    ; preds = %3995
  br label %4292

; <label>:4292                                    ; preds = %4291, %3815
  %4293 = phi float [ 0.000000e+00, %3815 ], [ %3996, %4291 ]
  %4294 = phi float [ %3784, %3815 ], [ %3997, %4291 ]
  %4295 = phi float [ %3776, %3815 ], [ %3998, %4291 ]
  %4296 = phi float [ 0.000000e+00, %3815 ], [ %3999, %4291 ]
  %4297 = phi float [ 0.000000e+00, %3815 ], [ %4000, %4291 ]
  %4298 = phi float [ %3767, %3815 ], [ %4001, %4291 ]
  %4299 = phi float [ %3768, %3815 ], [ %4002, %4291 ]
  %4300 = phi float [ %3769, %3815 ], [ %4003, %4291 ]
  %4301 = phi float [ %3810, %3815 ], [ %4004, %4291 ]
  %4302 = phi float [ %3811, %3815 ], [ %4005, %4291 ]
  %4303 = phi float [ %3812, %3815 ], [ %4006, %4291 ]
  %4304 = phi float [ %3775, %3815 ], [ %4007, %4291 ]
  %4305 = phi float [ %3774, %3815 ], [ %4008, %4291 ]
  %4306 = phi float [ 0.000000e+00, %3815 ], [ %4009, %4291 ]
  %4307 = phi float [ %3773, %3815 ], [ %4010, %4291 ]
  %4308 = phi float [ %3770, %3815 ], [ %4011, %4291 ]
  %4309 = phi float [ %3771, %3815 ], [ %4012, %4291 ]
  %4310 = phi float [ %3772, %3815 ], [ %4013, %4291 ]
  %4311 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %4301, float %4302, float %4303)  ; Dot3(ax,ay,az,bx,by,bz)
  %4312 = call float @dx.op.unary.f32(i32 25, float %4311)  ; Rsqrt(value)
  %4313 = fmul fast float %4312, %4301
  %4314 = fmul fast float %4312, %4302
  %4315 = fmul fast float %4312, %4303
  %4316 = fadd fast float %4306, %878
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = call float @dx.op.dot3.f32(i32 55, float %4313, float %4314, float %4315, float %4313, float %4314, float %4315)  ; Dot3(ax,ay,az,bx,by,bz)
  %4319 = call float @dx.op.unary.f32(i32 25, float %4318)  ; Rsqrt(value)
  %4320 = fmul fast float %4319, %4313
  %4321 = fmul fast float %4319, %4314
  %4322 = fmul fast float %4319, %4315
  br label %4323

; <label>:4323                                    ; preds = %4292, %3764
  %4324 = phi float [ %4320, %4292 ], [ %3810, %3764 ]
  %4325 = phi float [ %4321, %4292 ], [ %3811, %3764 ]
  %4326 = phi float [ %4322, %4292 ], [ %3812, %3764 ]
  %4327 = phi float [ %4298, %4292 ], [ %3767, %3764 ]
  %4328 = phi float [ %4299, %4292 ], [ %3768, %3764 ]
  %4329 = phi float [ %4300, %4292 ], [ %3769, %3764 ]
  %4330 = phi float [ %4308, %4292 ], [ %3770, %3764 ]
  %4331 = phi float [ %4309, %4292 ], [ %3771, %3764 ]
  %4332 = phi float [ %4310, %4292 ], [ %3772, %3764 ]
  %4333 = phi float [ %4307, %4292 ], [ %3773, %3764 ]
  %4334 = phi float [ %4317, %4292 ], [ %878, %3764 ]
  %4335 = phi float [ %4305, %4292 ], [ %3774, %3764 ]
  %4336 = phi float [ %4304, %4292 ], [ %3775, %3764 ]
  %4337 = phi float [ %4297, %4292 ], [ 0.000000e+00, %3764 ]
  %4338 = phi float [ %4296, %4292 ], [ 0.000000e+00, %3764 ]
  %4339 = phi float [ %4293, %4292 ], [ 0.000000e+00, %3764 ]
  %4340 = phi float [ %4294, %4292 ], [ %3784, %3764 ]
  %4341 = phi float [ %4295, %4292 ], [ %3776, %3764 ]
  %4342 = fadd fast float %4333, 0xBFB99999A0000000
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = fmul fast float %4343, 0x3FF1C71C80000000
  %4345 = call float @dx.op.binary.f32(i32 36, float %4333, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4346 = fsub fast float 1.000000e+00, %4344
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4347, %4330
  %4349 = fmul fast float %4347, %4331
  %4350 = fmul fast float %4347, %4332
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = fmul fast float %4344, %4330
  %4355 = fmul fast float %4344, %4331
  %4356 = fmul fast float %4344, %4332
  %4357 = fadd fast float %4354, %4345
  %4358 = fadd fast float %4355, %4345
  %4359 = fadd fast float %4356, %4345
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.i32 %4364, 3
  %4366 = and i32 %4365, 8
  %4367 = icmp ne i32 %4366, 0
  %4368 = call float @dx.op.binary.f32(i32 35, float %4351, float %4330)  ; FMax(a,b)
  %4369 = call float @dx.op.binary.f32(i32 35, float %4352, float %4330)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4353, float %4330)  ; FMax(a,b)
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4351, float %4352, float %4353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = select i1 %173, float %4330, float %4351
  %4373 = select i1 %173, float %4371, float %4352
  %4374 = select i1 %173, float 1.000000e+00, float %4353
  %4375 = select i1 %4367, float %4368, float %4372
  %4376 = select i1 %4367, float %4369, float %4373
  %4377 = select i1 %4367, float %4370, float %4374
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4382 = fadd fast float %4379, %131
  %4383 = fadd fast float %4380, %132
  %4384 = fadd fast float %4381, %133
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4388 = fsub fast float %4382, %4386
  %4389 = fsub fast float %4383, %4387
  %4390 = fmul fast float %4388, %4388
  %4391 = fmul fast float %4389, %4389
  %4392 = fadd fast float %4390, %4391
  %4393 = call float @dx.op.unary.f32(i32 24, float %4392)  ; Sqrt(value)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4395 = fcmp fast olt float %4393, %4394
  br i1 %4395, label %4396, label %4463

; <label>:4396                                    ; preds = %4323
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4407 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4408 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4409 = fadd fast float %4406, %4382
  %4410 = fadd fast float %4407, %4383
  %4411 = fadd fast float %4408, %4384
  %4412 = fmul fast float %4409, %4398
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4400, float %4412)  ; FMad(a,b,c)
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = fmul fast float %4409, %4403
  %4416 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4404, float %4415)  ; FMad(a,b,c)
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4405, float %4416)  ; FMad(a,b,c)
  %4418 = fsub fast float %4414, %4406
  %4419 = fsub fast float %4417, %4407
  %4420 = fsub fast float %4418, %4386
  %4421 = fadd fast float %4420, %4394
  %4422 = fsub fast float %4419, %4387
  %4423 = fadd fast float %4422, %4394
  %4424 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4425 = fmul fast float %4421, %4424
  %4426 = fmul fast float %4423, %4424
  %4427 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4429 = fsub fast float 1.000000e+00, %4427
  %4430 = fsub fast float 1.000000e+00, %4428
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4429, float %4430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = fcmp fast ugt float %4432, 0.000000e+00
  br i1 %4433, label %4434, label %4737

; <label>:4434                                    ; preds = %4396
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4437 = fmul fast float %4436, %4432
  %4438 = extractvalue %dx.types.CBufRet.f32 %4435, 3
  %4439 = fadd fast float %4438, %4437
  %4440 = extractvalue %dx.types.CBufRet.f32 %4401, 2
  %4441 = fadd fast float %4439, %4408
  %4442 = fmul fast float %4414, %4402
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4405, float %4442)  ; FMad(a,b,c)
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4441, float %4440, float %4443)  ; FMad(a,b,c)
  %4445 = fsub fast float %4444, %4408
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 2
  %4448 = fsub fast float %4445, %4447
  %4449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4429, float %4430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.ResRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.ResRet.f32 %4449, 2
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4429, float %4430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fadd fast float %4454, %4450
  %4458 = fmul fast float %4457, 0x3F847AE140000000
  %4459 = fadd fast float %4455, %4451
  %4460 = fmul fast float %4459, 0x3F847AE140000000
  %4461 = fadd fast float %4456, %4452
  %4462 = fmul fast float %4461, 0x3F847AE140000000
  br label %4737

; <label>:4463                                    ; preds = %4323
  %4464 = and i32 %149, 1
  %4465 = icmp eq i32 %4464, 0
  br i1 %4465, label %4737, label %4466

; <label>:4466                                    ; preds = %4463
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4477 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4478 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4479 = fadd fast float %4476, %4382
  %4480 = fadd fast float %4477, %4383
  %4481 = fadd fast float %4478, %4384
  %4482 = fmul fast float %4479, %4468
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4470, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = fmul fast float %4479, %4473
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4474, float %4485)  ; FMad(a,b,c)
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4475, float %4486)  ; FMad(a,b,c)
  %4488 = fsub fast float %4484, %4476
  %4489 = fsub fast float %4487, %4477
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4494 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.i32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.i32 %4497, 1
  %4500 = udiv i32 %4499, %4498
  %4501 = fsub fast float %4488, %4491
  %4502 = fsub fast float %4489, %4492
  %4503 = call float @dx.op.binary.f32(i32 35, float %4501, float 0.000000e+00)  ; FMax(a,b)
  %4504 = call float @dx.op.binary.f32(i32 35, float %4502, float 0.000000e+00)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 36, float %4503, float %4493)  ; FMin(a,b)
  %4506 = call float @dx.op.binary.f32(i32 36, float %4504, float %4494)  ; FMin(a,b)
  %4507 = add i32 %4498, -1
  %4508 = add i32 %4500, -1
  %4509 = fmul fast float %4505, %4496
  %4510 = fmul fast float %4506, %4496
  %4511 = fptoui float %4509 to i32
  %4512 = fptoui float %4510 to i32
  %4513 = call i32 @dx.op.binary.i32(i32 40, i32 %4511, i32 %4507)  ; UMin(a,b)
  %4514 = call i32 @dx.op.binary.i32(i32 40, i32 %4512, i32 %4508)  ; UMin(a,b)
  %4515 = mul i32 %4514, %4498
  %4516 = add i32 %4515, %4513
  %4517 = shl i32 %4516, 2
  %4518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4517, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.i32 %4518, 0
  %4520 = icmp eq i32 %4519, -1
  br i1 %4520, label %4737, label %4521

; <label>:4521                                    ; preds = %4466
  %4522 = mul i32 %4519, 148
  %4523 = add i32 %4522, 4
  %4524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4523, i32 undef)  ; BufferLoad(srv,index,wot)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = add i32 %4522, 8
  %4527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = add i32 %4522, 36
  %4530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = add i32 %4522, 60
  %4533 = add i32 %4522, 92
  %4534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.i32 %4534, 0
  %4536 = add i32 %4522, 116
  %4537 = fsub fast float %4488, %4525
  %4538 = fsub fast float %4489, %4528
  %4539 = fmul fast float %4496, %4537
  %4540 = fmul fast float %4496, %4538
  %4541 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4543 = fsub fast float 1.000000e+00, %4542
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4546 = call float @dx.op.unary.f32(i32 83, float %4541)  ; DerivCoarseX(value)
  %4547 = call float @dx.op.unary.f32(i32 83, float %4543)  ; DerivCoarseX(value)
  %4548 = call float @dx.op.unary.f32(i32 84, float %4541)  ; DerivCoarseY(value)
  %4549 = call float @dx.op.unary.f32(i32 84, float %4543)  ; DerivCoarseY(value)
  %4550 = fmul fast float %4546, %4545
  %4551 = fmul fast float %4547, %4545
  %4552 = fmul fast float %4548, %4545
  %4553 = fmul fast float %4549, %4545
  %4554 = call float @dx.op.dot2.f32(i32 54, float %4552, float %4553, float %4552, float %4553)  ; Dot2(ax,ay,bx,by)
  %4555 = call float @dx.op.dot2.f32(i32 54, float %4550, float %4551, float %4550, float %4551)  ; Dot2(ax,ay,bx,by)
  %4556 = call float @dx.op.binary.f32(i32 35, float %4555, float %4554)  ; FMax(a,b)
  %4557 = call float @dx.op.unary.f32(i32 23, float %4556)  ; Log(value)
  %4558 = fmul fast float %4557, 5.000000e-01
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4561 = fadd fast float %4560, %4558
  %4562 = call float @dx.op.binary.f32(i32 35, float %4561, float 0.000000e+00)  ; FMax(a,b)
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 3
  %4565 = fadd fast float %4564, %4562
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 3
  %4568 = fadd fast float %4565, %4567
  %4569 = add i32 %4535, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4569, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4570, i32 0)  ; GetDimensions(handle,mipLevel)
  %4572 = extractvalue %dx.types.Dimensions %4571, 0
  %4573 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4572)  ; FirstbitLo(value)
  %4574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.i32 %4574, 1
  %4576 = sub nsw i32 %4575, %4573
  %4577 = sitofp i32 %4576 to float
  %4578 = fsub fast float %4568, %4577
  %4579 = call float @dx.op.binary.f32(i32 35, float %4578, float 0.000000e+00)  ; FMax(a,b)
  %4580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4570, %dx.types.Handle %27, float %4541, float %4543, float %4531, float undef, i32 0, i32 0, i32 undef, float %4579)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = fcmp ule float %4581, 0x3FE0101020000000
  %4583 = extractvalue %dx.types.CBufRet.i32 %4574, 0
  %4584 = and i32 %4583, 128
  %4585 = icmp ne i32 %4584, 0
  %4586 = and i1 %4582, %4585
  br i1 %4586, label %4737, label %4587

; <label>:4587                                    ; preds = %4521
  %4588 = add i32 %4522, 20
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = add i32 %4522, 24
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = add i32 %4522, 40
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = add i32 %4522, 96
  %4598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.i32 %4598, 0
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 2
  %4602 = fmul fast float %4601, %4541
  %4603 = fmul fast float %4601, %4543
  %4604 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4605 = fadd fast float %4602, %4604
  %4606 = fadd fast float %4603, %4604
  %4607 = add i32 %4599, 0
  %4608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4607, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4609 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4608, i32 0)  ; GetDimensions(handle,mipLevel)
  %4610 = extractvalue %dx.types.Dimensions %4609, 0
  %4611 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4610)  ; FirstbitLo(value)
  %4612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.i32 %4612, 1
  %4614 = sub nsw i32 %4613, %4611
  %4615 = sitofp i32 %4614 to float
  %4616 = fsub fast float %4565, %4615
  %4617 = call float @dx.op.binary.f32(i32 35, float %4616, float 0.000000e+00)  ; FMax(a,b)
  %4618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4608, %dx.types.Handle %27, float %4605, float %4606, float %4596, float undef, i32 0, i32 0, i32 undef, float %4617)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = fmul fast float %4619, %4590
  %4621 = fadd fast float %4620, %4593
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4630 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4631 = fadd fast float %4627, %4488
  %4632 = fadd fast float %4629, %4489
  %4633 = fadd fast float %4621, %4630
  %4634 = fmul fast float %4631, %4623
  %4635 = call float @dx.op.tertiary.f32(i32 46, float %4632, float %4624, float %4634)  ; FMad(a,b,c)
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4633, float %4625, float %4635)  ; FMad(a,b,c)
  %4637 = fsub fast float %4636, %4630
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4640 = fsub fast float %4637, %4639
  %4641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.i32 %4641, 0
  %4643 = call i32 @dx.op.binary.i32(i32 40, i32 %4519, i32 %4642)  ; UMin(a,b)
  %4644 = mul i32 %4643, 36
  %4645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.i32 %4645, 0
  %4647 = add i32 %4644, 4
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = fmul fast float %4649, %4541
  %4651 = fmul fast float %4649, %4543
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4653 = fadd fast float %4650, %4652
  %4654 = fadd fast float %4651, %4652
  %4655 = icmp eq i32 %4646, 0
  br i1 %4655, label %4724, label %4656

; <label>:4656                                    ; preds = %4587
  br label %4657

; <label>:4657                                    ; preds = %4714, %4656
  %4658 = phi float [ %4715, %4714 ], [ 0.000000e+00, %4656 ]
  %4659 = phi float [ %4716, %4714 ], [ 0.000000e+00, %4656 ]
  %4660 = phi float [ %4717, %4714 ], [ 0.000000e+00, %4656 ]
  %4661 = phi float [ %4718, %4714 ], [ 0.000000e+00, %4656 ]
  %4662 = phi float [ %4719, %4714 ], [ 0.000000e+00, %4656 ]
  %4663 = phi float [ %4720, %4714 ], [ 0.000000e+00, %4656 ]
  %4664 = phi i32 [ %4721, %4714 ], [ 0, %4656 ]
  %4665 = shl i32 %4664, 2
  %4666 = add i32 %4532, %4665
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = add i32 %4536, %4665
  %4670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.i32 %4670, 0
  %4672 = add i32 %4671, 0
  %4673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4672, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4674 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4673, i32 0)  ; GetDimensions(handle,mipLevel)
  %4675 = extractvalue %dx.types.Dimensions %4674, 0
  %4676 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4675)  ; FirstbitLo(value)
  %4677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.i32 %4677, 1
  %4679 = sub nsw i32 %4678, %4676
  %4680 = sitofp i32 %4679 to float
  %4681 = fsub fast float %4565, %4680
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0.000000e+00)  ; FMax(a,b)
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4673, %dx.types.Handle %27, float %4653, float %4654, float %4668, float undef, i32 0, i32 0, i32 undef, float %4682)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = fcmp fast ogt float %4684, 0.000000e+00
  br i1 %4685, label %4686, label %4714

; <label>:4686                                    ; preds = %4657
  %4687 = add i32 %4647, %4665
  %4688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.i32 %4688, 0
  %4690 = and i32 %4689, 32767
  %4691 = mul nuw nsw i32 %4690, 928
  %4692 = add nuw nsw i32 %4691, 48
  %4693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4692, i32 undef)  ; BufferLoad(srv,index,wot)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.ResRet.f32 %4693, 1
  %4696 = extractvalue %dx.types.ResRet.f32 %4693, 2
  %4697 = add nuw nsw i32 %4691, 60
  %4698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4697, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = fmul fast float %4694, %4684
  %4703 = fmul fast float %4695, %4684
  %4704 = fmul fast float %4696, %4684
  %4705 = fadd fast float %4702, %4658
  %4706 = fadd fast float %4703, %4659
  %4707 = fadd fast float %4704, %4660
  %4708 = fmul fast float %4699, %4684
  %4709 = fmul fast float %4700, %4684
  %4710 = fmul fast float %4701, %4684
  %4711 = fadd fast float %4708, %4661
  %4712 = fadd fast float %4709, %4662
  %4713 = fadd fast float %4710, %4663
  br label %4714

; <label>:4714                                    ; preds = %4686, %4657
  %4715 = phi float [ %4705, %4686 ], [ %4658, %4657 ]
  %4716 = phi float [ %4706, %4686 ], [ %4659, %4657 ]
  %4717 = phi float [ %4707, %4686 ], [ %4660, %4657 ]
  %4718 = phi float [ %4711, %4686 ], [ %4661, %4657 ]
  %4719 = phi float [ %4712, %4686 ], [ %4662, %4657 ]
  %4720 = phi float [ %4713, %4686 ], [ %4663, %4657 ]
  %4721 = add nuw i32 %4664, 1
  %4722 = icmp eq i32 %4721, %4646
  br i1 %4722, label %4723, label %4657

; <label>:4723                                    ; preds = %4714
  br label %4724

; <label>:4724                                    ; preds = %4723, %4587
  %4725 = phi float [ 0.000000e+00, %4587 ], [ %4715, %4723 ]
  %4726 = phi float [ 0.000000e+00, %4587 ], [ %4716, %4723 ]
  %4727 = phi float [ 0.000000e+00, %4587 ], [ %4717, %4723 ]
  %4728 = phi float [ 0.000000e+00, %4587 ], [ %4718, %4723 ]
  %4729 = phi float [ 0.000000e+00, %4587 ], [ %4719, %4723 ]
  %4730 = phi float [ 0.000000e+00, %4587 ], [ %4720, %4723 ]
  %4731 = fadd fast float %4728, %4725
  %4732 = fmul fast float %4731, 0x3F847AE140000000
  %4733 = fadd fast float %4729, %4726
  %4734 = fmul fast float %4733, 0x3F847AE140000000
  %4735 = fadd fast float %4730, %4727
  %4736 = fmul fast float %4735, 0x3F847AE140000000
  br label %4737

; <label>:4737                                    ; preds = %4724, %4521, %4466, %4463, %4434, %4396
  %4738 = phi float [ %4448, %4434 ], [ -1.310720e+05, %4396 ], [ %4640, %4724 ], [ -1.310720e+05, %4466 ], [ -1.310720e+05, %4521 ], [ -1.310720e+05, %4463 ]
  %4739 = phi float [ %4458, %4434 ], [ 0.000000e+00, %4396 ], [ %4732, %4724 ], [ 0.000000e+00, %4466 ], [ 0.000000e+00, %4521 ], [ 0.000000e+00, %4463 ]
  %4740 = phi float [ %4460, %4434 ], [ 0.000000e+00, %4396 ], [ %4734, %4724 ], [ 0.000000e+00, %4466 ], [ 0.000000e+00, %4521 ], [ 0.000000e+00, %4463 ]
  %4741 = phi float [ %4462, %4434 ], [ 0.000000e+00, %4396 ], [ %4736, %4724 ], [ 0.000000e+00, %4466 ], [ 0.000000e+00, %4521 ], [ 0.000000e+00, %4463 ]
  %4742 = phi i1 [ true, %4434 ], [ false, %4396 ], [ true, %4724 ], [ false, %4466 ], [ false, %4521 ], [ false, %4463 ]
  %4743 = and i32 %149, 3
  %4744 = icmp eq i32 %4743, 1
  %4745 = select i1 %4744, float 1.000000e+00, float 0.000000e+00
  %4746 = fsub fast float %4738, %133
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = select i1 %4742, float %4747, float 1.000000e+00
  %4749 = fmul fast float %4748, %4745
  %4750 = icmp eq i32 %4743, 3
  %4751 = select i1 %4750, float 1.000000e+00, float %4749
  %4752 = call float @dx.op.binary.f32(i32 35, float %4339, float %4751)  ; FMax(a,b)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fcmp fast une float %4753, 0.000000e+00
  %4755 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.unary.f32(i32 25, float %4755)  ; Rsqrt(value)
  br i1 %4754, label %4764, label %4757

; <label>:4757                                    ; preds = %4737
  %4758 = fmul fast float %4756, %131
  %4759 = fmul fast float %4756, %132
  %4760 = fmul fast float %4756, %133
  %4761 = fsub fast float -0.000000e+00, %4758
  %4762 = fsub fast float -0.000000e+00, %4759
  %4763 = fsub fast float -0.000000e+00, %4760
  br label %4932

; <label>:4764                                    ; preds = %4737
  %4765 = fmul fast float %131, %4756
  %4766 = fsub fast float -0.000000e+00, %4765
  %4767 = fmul fast float %132, %4756
  %4768 = fsub fast float -0.000000e+00, %4767
  %4769 = fmul fast float %133, %4756
  %4770 = fsub fast float -0.000000e+00, %4769
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4768, float %4770, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = fmul fast float %4753, 2.500000e+00
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4753, 0x4013FFFFE0000000
  %4775 = fadd fast float %4774, 0xBFFFFFFFE0000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4753, 0x4004000020000000
  %4778 = fadd fast float %4777, 0xBFF8000040000000
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4781 = fmul fast float %4342, 1.000000e+01
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4782, 2.000000e+00
  %4784 = fsub fast float 3.000000e+00, %4783
  %4785 = fmul fast float %4782, %4782
  %4786 = fmul fast float %4785, %4784
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = fsub fast float 0x3FE3333340000000, %4363
  %4789 = fmul fast float %4788, 0x400AAAAAA0000000
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fmul fast float %4787, %4790
  %4792 = fmul fast float %4375, 0x3FEA2B8620000000
  %4793 = fmul fast float %4376, 0x3FEA2B8620000000
  %4794 = fmul fast float %4377, 0x3FEA2B8620000000
  %4795 = fadd fast float %4792, 0x3FC81DFBA0000000
  %4796 = fmul fast float %4795, %4375
  %4797 = fadd fast float %4796, 0x3F910E6020000000
  %4798 = fadd fast float %4793, 0x3FC81DFBA0000000
  %4799 = fmul fast float %4798, %4376
  %4800 = fadd fast float %4799, 0x3F910E6020000000
  %4801 = fadd fast float %4794, 0x3FC81DFBA0000000
  %4802 = fmul fast float %4801, %4377
  %4803 = fadd fast float %4802, 0x3F910E6020000000
  %4804 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4805 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4807 = fsub fast float %4804, %4375
  %4808 = fsub fast float %4805, %4376
  %4809 = fsub fast float %4806, %4377
  %4810 = fmul fast float %4807, %4780
  %4811 = fmul fast float %4810, %4791
  %4812 = fmul fast float %4808, %4780
  %4813 = fmul fast float %4812, %4791
  %4814 = fmul fast float %4809, %4780
  %4815 = fmul fast float %4814, %4791
  %4816 = fadd fast float %4811, %4375
  %4817 = fadd fast float %4813, %4376
  %4818 = fadd fast float %4815, %4377
  %4819 = fmul fast float %4336, %4336
  %4820 = fmul fast float %4819, %4819
  %4821 = fadd fast float %4776, 1.000000e+00
  %4822 = fsub fast float %4821, %4791
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fsub fast float 1.000000e+00, %4820
  %4827 = call float @dx.op.binary.f32(i32 36, float %4823, float %4826)  ; FMin(a,b)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4827, float %4828)  ; FMax(a,b)
  %4830 = fadd fast float %4825, 0xBFE4CCCCC0000000
  %4831 = fmul fast float %4830, 0x4006DB6DA0000000
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = fmul fast float %4832, 2.000000e+00
  %4834 = fsub fast float 3.000000e+00, %4833
  %4835 = bitcast float %4360 to i32
  %4836 = ashr i32 %4835, 1
  %4837 = add nsw i32 %4836, 532487669
  %4838 = bitcast i32 %4837 to float
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = fmul fast float %4842, 2.000000e+00
  %4844 = bitcast float %4361 to i32
  %4845 = ashr i32 %4844, 1
  %4846 = add nsw i32 %4845, 532487669
  %4847 = bitcast i32 %4846 to float
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4851, 2.000000e+00
  %4853 = bitcast float %4362 to i32
  %4854 = ashr i32 %4853, 1
  %4855 = add nsw i32 %4854, 532487669
  %4856 = bitcast i32 %4855 to float
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4860, 2.000000e+00
  %4862 = fsub fast float 0x4002A9FBE0000000, %4843
  %4863 = fadd fast float %4843, 0x3FD54FDF00000000
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4867, %4867
  %4869 = fsub fast float 0x4002A9FBE0000000, %4852
  %4870 = fadd fast float %4852, 0x3FD54FDF00000000
  %4871 = bitcast float %4870 to i32
  %4872 = sub nsw i32 2129859010, %4871
  %4873 = bitcast i32 %4872 to float
  %4874 = fmul fast float %4873, %4869
  %4875 = fmul fast float %4874, %4874
  %4876 = fsub fast float 0x4002A9FBE0000000, %4861
  %4877 = fadd fast float %4861, 0x3FD54FDF00000000
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = fmul fast float %4880, %4876
  %4882 = fmul fast float %4881, %4881
  %4883 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4868)  ; FMax(a,b)
  %4884 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4875)  ; FMax(a,b)
  %4885 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4882)  ; FMax(a,b)
  %4886 = fsub fast float 1.000000e+00, %4771
  %4887 = fadd fast float %4886, %4787
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fsub fast float 1.000000e+00, %4751
  %4890 = fmul fast float %4829, %4889
  %4891 = fmul fast float %4832, %4832
  %4892 = fmul fast float %4891, %4890
  %4893 = fmul fast float %4892, %4834
  %4894 = fmul fast float %4889, 0xBFE99999A0000000
  %4895 = fmul fast float %4894, %4780
  %4896 = fmul fast float %4895, %4791
  %4897 = fadd fast float %4896, 1.000000e+00
  %4898 = fadd fast float %4363, -1.000000e+00
  %4899 = fmul fast float %4897, %4898
  %4900 = fadd fast float %4899, 1.000000e+00
  %4901 = fsub fast float %4883, %4360
  %4902 = fsub fast float %4884, %4361
  %4903 = fsub fast float %4885, %4362
  %4904 = fmul fast float %4893, %4901
  %4905 = fmul fast float %4893, %4902
  %4906 = fmul fast float %4893, %4903
  %4907 = fadd fast float %4904, %4360
  %4908 = fadd fast float %4905, %4361
  %4909 = fadd fast float %4906, %4362
  %4910 = fsub fast float %75, %4324
  %4911 = fsub fast float %76, %4325
  %4912 = fsub fast float %77, %4326
  %4913 = fmul fast float %4893, %4910
  %4914 = fmul fast float %4893, %4911
  %4915 = fmul fast float %4893, %4912
  %4916 = fadd fast float %4913, %4324
  %4917 = fadd fast float %4914, %4325
  %4918 = fadd fast float %4915, %4326
  %4919 = fmul fast float %4893, %4888
  %4920 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %4919, %4921
  %4923 = fadd fast float %4922, %4920
  %4924 = fsub fast float 1.000000e+00, %4336
  %4925 = fmul fast float %4893, %4924
  %4926 = fadd fast float %4925, %4336
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 25, float %4927)  ; Rsqrt(value)
  %4929 = fmul fast float %4916, %4928
  %4930 = fmul fast float %4917, %4928
  %4931 = fmul fast float %4918, %4928
  br label %4932

; <label>:4932                                    ; preds = %4764, %4757
  %4933 = phi float [ %4763, %4757 ], [ %4770, %4764 ]
  %4934 = phi float [ %4762, %4757 ], [ %4768, %4764 ]
  %4935 = phi float [ %4761, %4757 ], [ %4766, %4764 ]
  %4936 = phi float [ %4760, %4757 ], [ %4769, %4764 ]
  %4937 = phi float [ %4759, %4757 ], [ %4767, %4764 ]
  %4938 = phi float [ %4758, %4757 ], [ %4765, %4764 ]
  %4939 = phi float [ %4324, %4757 ], [ %4929, %4764 ]
  %4940 = phi float [ %4325, %4757 ], [ %4930, %4764 ]
  %4941 = phi float [ %4326, %4757 ], [ %4931, %4764 ]
  %4942 = phi float [ %4360, %4757 ], [ %4907, %4764 ]
  %4943 = phi float [ %4361, %4757 ], [ %4908, %4764 ]
  %4944 = phi float [ %4362, %4757 ], [ %4909, %4764 ]
  %4945 = phi float [ %4375, %4757 ], [ %4816, %4764 ]
  %4946 = phi float [ %4376, %4757 ], [ %4817, %4764 ]
  %4947 = phi float [ %4377, %4757 ], [ %4818, %4764 ]
  %4948 = phi float [ %4363, %4757 ], [ %4923, %4764 ]
  %4949 = phi float [ %4336, %4757 ], [ %4926, %4764 ]
  %4950 = select i1 %173, float 0.000000e+00, float %4944
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %4935, float %4934, float %4933)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4937, float %4936, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = fmul fast float %4953, 2.000000e+00
  %4955 = fmul fast float %4954, %4939
  %4956 = fmul fast float %4954, %4940
  %4957 = fmul fast float %4954, %4941
  %4958 = fsub fast float %4938, %4955
  %4959 = fsub fast float %4937, %4956
  %4960 = fsub fast float %4936, %4957
  %4961 = call float @dx.op.binary.f32(i32 36, float %4949, float 1.000000e+00)  ; FMin(a,b)
  %4962 = fsub fast float 1.000000e+00, %4949
  %4963 = bitcast float %4962 to i32
  %4964 = sub nsw i32 2129859010, %4963
  %4965 = fsub fast float 1.000000e+00, %45
  %4966 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4966, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4968 = fdiv fast float %4965, %4967
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fmul fast float %4970, 5.000000e-01
  %4972 = fadd fast float %4971, 5.000000e-01
  %4973 = fmul fast float %4972, %45
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = fmul fast float %4975, %4968
  %4977 = fadd fast float %4973, %4976
  %4978 = fsub fast float 5.000000e-01, %4971
  %4979 = fmul fast float %4978, %4945
  %4980 = fmul fast float %4978, %4946
  %4981 = fmul fast float %4978, %4947
  %4982 = fadd fast float %4977, %4979
  %4983 = fadd fast float %4977, %4980
  %4984 = fadd fast float %4977, %4981
  %4985 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fmul fast float %4986, 5.000000e-01
  %4988 = fadd fast float %4987, 5.000000e-01
  %4989 = fmul fast float %4988, %45
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fmul fast float %4991, %4968
  %4993 = fadd fast float %4989, %4992
  %4994 = fsub fast float 5.000000e-01, %4987
  %4995 = fmul fast float %4994, %4945
  %4996 = fmul fast float %4994, %4946
  %4997 = fmul fast float %4994, %4947
  %4998 = fadd fast float %4993, %4995
  %4999 = fadd fast float %4993, %4996
  %5000 = fadd fast float %4993, %4997
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = call float @dx.op.binary.f32(i32 36, float %4945, float %5002)  ; FMin(a,b)
  %5004 = fsub fast float 1.000000e+00, %4961
  %5005 = fmul fast float %5003, %5004
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = call float @dx.op.binary.f32(i32 36, float %4946, float %5002)  ; FMin(a,b)
  %5011 = fmul fast float %5010, %5004
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = call float @dx.op.binary.f32(i32 36, float %4947, float %5002)  ; FMin(a,b)
  %5017 = fmul fast float %5016, %5004
  %5018 = fsub fast float 1.000000e+00, %5017
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %4961, %46
  %5023 = fmul fast float %5022, %4982
  %5024 = fmul fast float %5023, %5009
  %5025 = fmul fast float %4961, %47
  %5026 = fmul fast float %5025, %4983
  %5027 = fmul fast float %5026, %5015
  %5028 = fmul fast float %4961, %48
  %5029 = fmul fast float %5028, %4984
  %5030 = fmul fast float %5029, %5021
  %5031 = call float @dx.op.binary.f32(i32 36, float %4942, float %5002)  ; FMin(a,b)
  %5032 = fmul fast float %5031, %5004
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = call float @dx.op.binary.f32(i32 36, float %4943, float %5002)  ; FMin(a,b)
  %5038 = fmul fast float %5037, %5004
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = call float @dx.op.binary.f32(i32 36, float %4950, float %5002)  ; FMin(a,b)
  %5044 = fmul fast float %5043, %5004
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = bitcast float %5045 to i32
  %5047 = sub nsw i32 2129859010, %5046
  %5048 = bitcast i32 %5047 to float
  %5049 = fmul fast float %5022, %4998
  %5050 = fmul fast float %5049, %5036
  %5051 = fmul fast float %5025, %4999
  %5052 = fmul fast float %5051, %5042
  %5053 = fmul fast float %5028, %5000
  %5054 = fmul fast float %5053, %5048
  %5055 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5027, float %5030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = select i1 %173, float 0.000000e+00, float %5024
  %5057 = select i1 %173, float %5055, float %5027
  %5058 = select i1 %173, float 0.000000e+00, float %5030
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5052, float %5054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = select i1 %173, float 0.000000e+00, float %5050
  %5061 = select i1 %173, float %5059, float %5052
  %5062 = select i1 %173, float 0.000000e+00, float %5054
  %5063 = fmul fast float %4952, 9.843750e-01
  %5064 = fmul fast float %4948, 9.843750e-01
  %5065 = fadd fast float %5063, 7.812500e-03
  %5066 = fadd fast float %5064, 7.812500e-03
  %5067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5065, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 2
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 3
  %5070 = fmul fast float %5068, %4942
  %5071 = fmul fast float %5068, %4943
  %5072 = fmul fast float %5068, %4950
  %5073 = fadd fast float %5070, %5069
  %5074 = fadd fast float %5071, %5069
  %5075 = fadd fast float %5072, %5069
  %5076 = fcmp fast ogt float %4337, 0.000000e+00
  br i1 %5076, label %5077, label %5103

; <label>:5077                                    ; preds = %4932
  %5078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %4952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.ResRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.ResRet.f32 %5078, 2
  %5082 = fadd fast float %5079, -5.000000e-01
  %5083 = fadd fast float %5080, -5.000000e-01
  %5084 = fadd fast float %5081, -5.000000e-01
  %5085 = fsub fast float 1.000000e+00, %4942
  %5086 = fsub fast float 1.000000e+00, %4943
  %5087 = fsub fast float 1.000000e+00, %4950
  %5088 = fmul fast float %4942, 4.000000e+00
  %5089 = fmul fast float %5088, %5085
  %5090 = fmul fast float %5089, %5082
  %5091 = fmul fast float %4943, 4.000000e+00
  %5092 = fmul fast float %5091, %5086
  %5093 = fmul fast float %5092, %5083
  %5094 = fmul fast float %4950, 4.000000e+00
  %5095 = fmul fast float %5094, %5087
  %5096 = fmul fast float %5095, %5084
  %5097 = fadd fast float %5090, %5073
  %5098 = fadd fast float %5093, %5074
  %5099 = fadd fast float %5096, %5075
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  br label %5103

; <label>:5103                                    ; preds = %5077, %4932
  %5104 = phi float [ %5100, %5077 ], [ %5073, %4932 ]
  %5105 = phi float [ %5101, %5077 ], [ %5074, %4932 ]
  %5106 = phi float [ %5102, %5077 ], [ %5075, %4932 ]
  %5107 = call float @dx.op.binary.f32(i32 35, float %5105, float %5106)  ; FMax(a,b)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5104, float %5107)  ; FMax(a,b)
  %5109 = fsub fast float 1.000000e+00, %5108
  %5110 = fmul fast float %5109, %5056
  %5111 = fmul fast float %5109, %5057
  %5112 = fmul fast float %5109, %5058
  %5113 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = fcmp fast ogt float %5113, 0x3E7FF19E20000000
  %5115 = fdiv fast float 1.000000e+00, %5113
  %5116 = select i1 %5114, float %5115, float 0.000000e+00
  %5117 = fmul fast float %5116, %4945
  %5118 = fmul fast float %5116, %4946
  %5119 = fmul fast float %5116, %4947
  %5120 = fadd fast float %5117, -1.000000e+00
  %5121 = fadd fast float %5118, -1.000000e+00
  %5122 = fadd fast float %5119, -1.000000e+00
  %5123 = fmul fast float %5120, 5.000000e-01
  %5124 = fmul fast float %5121, 5.000000e-01
  %5125 = fmul fast float %5122, 5.000000e-01
  %5126 = fadd fast float %5123, 1.000000e+00
  %5127 = fadd fast float %5124, 1.000000e+00
  %5128 = fadd fast float %5125, 1.000000e+00
  %5129 = fmul fast float %5104, %5060
  %5130 = fmul fast float %5105, %5061
  %5131 = fmul fast float %5106, %5062
  %5132 = fsub fast float 1.000000e+00, %4952
  %5133 = bitcast float %5132 to i32
  %5134 = sitofp i32 %5133 to float
  %5135 = fmul fast float %5134, 5.000000e+00
  %5136 = fadd fast float %5135, 0xC1EFBF8940000000
  %5137 = fptosi float %5136 to i32
  %5138 = bitcast i32 %5137 to float
  %5139 = fmul fast float %5138, %4338
  %5140 = fmul fast float %5056, %5139
  %5141 = fmul fast float %5140, %5109
  %5142 = fmul fast float %5141, %5126
  %5143 = fmul fast float %5057, %5139
  %5144 = fmul fast float %5143, %5109
  %5145 = fmul fast float %5144, %5127
  %5146 = fmul fast float %5058, %5139
  %5147 = fmul fast float %5146, %5109
  %5148 = fmul fast float %5147, %5128
  %5149 = fmul fast float %5110, %4334
  %5150 = fmul fast float %5111, %4334
  %5151 = fmul fast float %5112, %4334
  %5152 = fadd fast float %5129, %4327
  %5153 = fadd fast float %5152, %5142
  %5154 = fmul fast float %5153, %4334
  %5155 = fadd fast float %5130, %4328
  %5156 = fadd fast float %5155, %5145
  %5157 = fmul fast float %5156, %4334
  %5158 = fadd fast float %5131, %4329
  %5159 = fadd fast float %5158, %5148
  %5160 = fmul fast float %5159, %4334
  %5161 = bitcast i32 %4964 to float
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5164 = fcmp fast oeq float %5163, 0.000000e+00
  br i1 %5164, label %5392, label %5165

; <label>:5165                                    ; preds = %5103
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5167 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = select i1 %173, float %5174, float %5170
  %5178 = select i1 %173, float %5176, float %5171
  %5179 = select i1 %173, float %5175, float %5172
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5182 = fcmp fast une float %5181, 0.000000e+00
  br i1 %5182, label %5183, label %5200

; <label>:5183                                    ; preds = %5165
  %5184 = fptoui float %68 to i32
  %5185 = fptoui float %69 to i32
  %5186 = lshr i32 %5184, 4
  %5187 = lshr i32 %5185, 4
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = fptoui float %5189 to i32
  %5191 = add i32 %5190, 15
  %5192 = lshr i32 %5191, 4
  %5193 = mul i32 %5192, %5187
  %5194 = add i32 %5193, %5186
  %5195 = shl i32 %5194, 3
  %5196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5195, i32 undef)  ; BufferLoad(srv,index,wot)
  %5197 = extractvalue %dx.types.ResRet.i32 %5196, 0
  %5198 = and i32 %5197, -268435456
  %5199 = icmp eq i32 %5198, -1342177280
  br i1 %5199, label %5210, label %5200

; <label>:5200                                    ; preds = %5183, %5165
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5203 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5204 = fmul fast float %5202, %68
  %5205 = fmul fast float %5203, %69
  %5206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5204, float %5205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  br label %5210

; <label>:5210                                    ; preds = %5200, %5183
  %5211 = phi float [ %5207, %5200 ], [ 0.000000e+00, %5183 ]
  %5212 = phi float [ %5208, %5200 ], [ 0.000000e+00, %5183 ]
  %5213 = phi float [ %5209, %5200 ], [ 0.000000e+00, %5183 ]
  %5214 = call float @dx.op.binary.f32(i32 36, float %5212, float %5213)  ; FMin(a,b)
  %5215 = call float @dx.op.binary.f32(i32 36, float %5211, float %5214)  ; FMin(a,b)
  %5216 = fcmp fast ogt float %5215, 0.000000e+00
  br i1 %5216, label %5217, label %5392, !dx.controlflow.hints !72

; <label>:5217                                    ; preds = %5210
  %5218 = fmul fast float %5211, %5177
  %5219 = fmul fast float %5212, %5178
  %5220 = fmul fast float %5213, %5179
  %5221 = fsub fast float %5166, %4938
  %5222 = fsub fast float %5167, %4937
  %5223 = fsub fast float %5168, %4936
  %5224 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %5221, float %5222, float %5223)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = call float @dx.op.unary.f32(i32 25, float %5224)  ; Rsqrt(value)
  %5226 = fmul fast float %5225, %5221
  %5227 = fmul fast float %5225, %5222
  %5228 = fmul fast float %5225, %5223
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %5168, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4934, float %4933, float %5226, float %5227, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5232 = fmul fast float %5231, %5231
  %5233 = fmul fast float %5232, %5161
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %5234, %5231
  %5236 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %5226, float %5227, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = fmul fast float %5236, %5236
  %5238 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5239 = fsub fast float 1.000000e+00, %4948
  %5240 = call float @dx.op.binary.f32(i32 35, float %5239, float 0x3F847AE140000000)  ; FMax(a,b)
  %5241 = fmul fast float %5240, %5240
  %5242 = fmul fast float %5241, %5241
  %5243 = fsub fast float 1.000000e+00, %5242
  %5244 = fmul fast float %4952, %4952
  %5245 = fmul fast float %5244, %5243
  %5246 = fadd fast float %5245, %5242
  %5247 = bitcast float %5246 to i32
  %5248 = ashr i32 %5247, 1
  %5249 = add nsw i32 %5248, 532487669
  %5250 = bitcast i32 %5249 to float
  %5251 = fadd fast float %5250, %4952
  %5252 = fmul fast float %5242, %5237
  %5253 = fsub fast float 1.000000e+00, %5237
  %5254 = fadd fast float %5253, %5252
  %5255 = fmul fast float %5238, %5238
  %5256 = fmul fast float %5255, %5243
  %5257 = fadd fast float %5256, %5242
  %5258 = bitcast float %5257 to i32
  %5259 = ashr i32 %5258, 1
  %5260 = add nsw i32 %5259, 532487669
  %5261 = bitcast i32 %5260 to float
  %5262 = fadd fast float %5261, %5238
  %5263 = fmul fast float %5254, %5254
  %5264 = fmul fast float %5263, %5251
  %5265 = fmul fast float %5264, %5262
  %5266 = fdiv fast float 0x3FF0A00000000000, %5265
  %5267 = fmul fast float %5266, %5242
  %5268 = call float @dx.op.unary.f32(i32 6, float %5230)  ; FAbs(value)
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = bitcast float %5269 to i32
  %5271 = sitofp i32 %5270 to float
  %5272 = fmul fast float %5271, 5.000000e+00
  %5273 = fadd fast float %5272, 0xC1EFBF8940000000
  %5274 = fptosi float %5273 to i32
  %5275 = bitcast i32 %5274 to float
  %5276 = fsub fast float 1.000000e+00, %4942
  %5277 = fsub fast float 1.000000e+00, %4943
  %5278 = fsub fast float 1.000000e+00, %4950
  %5279 = fmul fast float %5275, %5276
  %5280 = fmul fast float %5275, %5277
  %5281 = fmul fast float %5275, %5278
  %5282 = fadd fast float %5279, %4942
  %5283 = fadd fast float %5280, %4943
  %5284 = fadd fast float %5281, %4950
  br i1 %5076, label %5285, label %5308

; <label>:5285                                    ; preds = %5217
  %5286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5286, 2
  %5290 = fadd fast float %5287, -5.000000e-01
  %5291 = fadd fast float %5288, -5.000000e-01
  %5292 = fadd fast float %5289, -5.000000e-01
  %5293 = fmul fast float %4942, 4.000000e+00
  %5294 = fmul fast float %5293, %5276
  %5295 = fmul fast float %5294, %5290
  %5296 = fmul fast float %4943, 4.000000e+00
  %5297 = fmul fast float %5296, %5277
  %5298 = fmul fast float %5297, %5291
  %5299 = fmul fast float %4950, 4.000000e+00
  %5300 = fmul fast float %5299, %5278
  %5301 = fmul fast float %5300, %5292
  %5302 = fadd fast float %5295, %5282
  %5303 = fadd fast float %5298, %5283
  %5304 = fadd fast float %5301, %5284
  %5305 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  br label %5308

; <label>:5308                                    ; preds = %5285, %5217
  %5309 = phi float [ %5305, %5285 ], [ %5282, %5217 ]
  %5310 = phi float [ %5306, %5285 ], [ %5283, %5217 ]
  %5311 = phi float [ %5307, %5285 ], [ %5284, %5217 ]
  %5312 = fmul fast float %5229, 9.843750e-01
  %5313 = fadd fast float %5312, 7.812500e-03
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5313, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 3
  %5317 = fmul fast float %5315, %4942
  %5318 = fmul fast float %5315, %4943
  %5319 = fmul fast float %5315, %4950
  %5320 = fadd fast float %5317, %5316
  %5321 = fadd fast float %5318, %5316
  %5322 = fadd fast float %5319, %5316
  br i1 %5076, label %5323, label %5346

; <label>:5323                                    ; preds = %5308
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = fadd fast float %5325, -5.000000e-01
  %5329 = fadd fast float %5326, -5.000000e-01
  %5330 = fadd fast float %5327, -5.000000e-01
  %5331 = fmul fast float %4942, 4.000000e+00
  %5332 = fmul fast float %5331, %5276
  %5333 = fmul fast float %5332, %5328
  %5334 = fmul fast float %4943, 4.000000e+00
  %5335 = fmul fast float %5334, %5277
  %5336 = fmul fast float %5335, %5329
  %5337 = fmul fast float %4950, 4.000000e+00
  %5338 = fmul fast float %5337, %5278
  %5339 = fmul fast float %5338, %5330
  %5340 = fadd fast float %5333, %5320
  %5341 = fadd fast float %5336, %5321
  %5342 = fadd fast float %5339, %5322
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5345 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  br label %5346

; <label>:5346                                    ; preds = %5323, %5308
  %5347 = phi float [ %5343, %5323 ], [ %5320, %5308 ]
  %5348 = phi float [ %5344, %5323 ], [ %5321, %5308 ]
  %5349 = phi float [ %5345, %5323 ], [ %5322, %5308 ]
  %5350 = call float @dx.op.binary.f32(i32 35, float %5348, float %5349)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float %5347, float %5350)  ; FMax(a,b)
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = fmul fast float %5309, %5267
  %5354 = fmul fast float %5310, %5267
  %5355 = fmul fast float %5311, %5267
  %5356 = fsub fast float 1.000000e+00, %5230
  %5357 = bitcast float %5356 to i32
  %5358 = sitofp i32 %5357 to float
  %5359 = fmul fast float %5358, 5.000000e+00
  %5360 = fadd fast float %5359, 0xC1EFBF8940000000
  %5361 = fptosi float %5360 to i32
  %5362 = bitcast i32 %5361 to float
  %5363 = fmul fast float %5362, %4338
  %5364 = fmul fast float %5352, %5363
  %5365 = fmul fast float %5364, %5126
  %5366 = fmul fast float %5364, %5127
  %5367 = fmul fast float %5364, %5128
  %5368 = fadd fast float %5365, %5353
  %5369 = fadd fast float %5366, %5354
  %5370 = fadd fast float %5367, %5355
  %5371 = fmul fast float %5235, %5218
  %5372 = fmul fast float %5371, %5352
  %5373 = fmul fast float %5235, %5219
  %5374 = fmul fast float %5373, %5352
  %5375 = fmul fast float %5235, %5220
  %5376 = fmul fast float %5375, %5352
  %5377 = fmul fast float %5371, %5368
  %5378 = fmul fast float %5373, %5369
  %5379 = fmul fast float %5375, %5370
  %5380 = fadd fast float %5372, %5110
  %5381 = fmul fast float %5380, %4334
  %5382 = fadd fast float %5374, %5111
  %5383 = fmul fast float %5382, %4334
  %5384 = fadd fast float %5376, %5112
  %5385 = fmul fast float %5384, %4334
  %5386 = fadd fast float %5377, %5153
  %5387 = fmul fast float %5386, %4334
  %5388 = fadd fast float %5378, %5156
  %5389 = fmul fast float %5388, %4334
  %5390 = fadd fast float %5379, %5159
  %5391 = fmul fast float %5390, %4334
  br label %5392

; <label>:5392                                    ; preds = %5346, %5210, %5103
  %5393 = phi float [ %5154, %5103 ], [ %5154, %5210 ], [ %5387, %5346 ]
  %5394 = phi float [ %5157, %5103 ], [ %5157, %5210 ], [ %5389, %5346 ]
  %5395 = phi float [ %5160, %5103 ], [ %5160, %5210 ], [ %5391, %5346 ]
  %5396 = phi float [ %5149, %5103 ], [ %5149, %5210 ], [ %5381, %5346 ]
  %5397 = phi float [ %5150, %5103 ], [ %5150, %5210 ], [ %5383, %5346 ]
  %5398 = phi float [ %5151, %5103 ], [ %5151, %5210 ], [ %5385, %5346 ]
  %5399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.i32 %5399, 0
  %5401 = icmp eq i32 %5400, 0
  br i1 %5401, label %5836, label %5402

; <label>:5402                                    ; preds = %5392
  %5403 = fptoui float %68 to i32
  %5404 = fptoui float %69 to i32
  %5405 = lshr i32 %5403, 4
  %5406 = lshr i32 %5404, 4
  %5407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.i32 %5407, 0
  %5409 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5406, i32 %5408, i32 %5405)  ; UMad(a,b,c)
  %5410 = add nsw i32 %5400, -1
  %5411 = call i32 @dx.op.binary.i32(i32 37, i32 %5410, i32 0)  ; IMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5413 = fptoui float %5412 to i32
  %5414 = lshr i32 %5413, 5
  %5415 = call i32 @dx.op.binary.i32(i32 40, i32 %5414, i32 8191)  ; UMin(a,b)
  %5416 = shl i32 %5415, 2
  %5417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.i32 %5417, 0
  %5419 = lshr i32 %5418, 16
  %5420 = and i32 %5418, 65535
  %5421 = lshr i32 %5418, 21
  %5422 = lshr i32 %5420, 5
  %5423 = call i32 @dx.op.binary.i32(i32 40, i32 %5422, i32 %5411)  ; UMin(a,b)
  %5424 = icmp ugt i32 %5421, %5423
  br i1 %5424, label %5836, label %5425

; <label>:5425                                    ; preds = %5402
  br label %5426

; <label>:5426                                    ; preds = %5826, %5425
  %5427 = phi i32 [ %5833, %5826 ], [ %5421, %5425 ]
  %5428 = phi float [ %5827, %5826 ], [ %5393, %5425 ]
  %5429 = phi float [ %5828, %5826 ], [ %5394, %5425 ]
  %5430 = phi float [ %5829, %5826 ], [ %5395, %5425 ]
  %5431 = phi float [ %5830, %5826 ], [ %5396, %5425 ]
  %5432 = phi float [ %5831, %5826 ], [ %5397, %5425 ]
  %5433 = phi float [ %5832, %5826 ], [ %5398, %5425 ]
  %5434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.i32 %5434, 0
  %5436 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5409, i32 %5435, i32 %5427)  ; UMad(a,b,c)
  %5437 = shl i32 %5436, 2
  %5438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.i32 %5438, 0
  %5440 = shl i32 %5427, 5
  %5441 = sub nsw i32 %5419, %5440
  %5442 = call i32 @dx.op.binary.i32(i32 37, i32 %5441, i32 0)  ; IMax(a,b)
  %5443 = call i32 @dx.op.binary.i32(i32 38, i32 %5442, i32 31)  ; IMin(a,b)
  %5444 = sub nsw i32 1, %5419
  %5445 = add nsw i32 %5444, %5420
  %5446 = call i32 @dx.op.binary.i32(i32 37, i32 %5445, i32 0)  ; IMax(a,b)
  %5447 = call i32 @dx.op.binary.i32(i32 38, i32 %5446, i32 32)  ; IMin(a,b)
  %5448 = and i32 %5447, 31
  %5449 = shl i32 -1, %5448
  %5450 = xor i32 %5449, -1
  %5451 = and i32 %5443, 31
  %5452 = shl i32 %5450, %5451
  %5453 = icmp eq i32 %5447, 32
  %5454 = select i1 %5453, i32 -1, i32 %5452
  %5455 = and i32 %5454, %5439
  %5456 = icmp eq i32 %5455, 0
  br i1 %5456, label %5826, label %5457

; <label>:5457                                    ; preds = %5426
  br label %5458

; <label>:5458                                    ; preds = %5538, %5457
  %5459 = phi i32 [ %5470, %5538 ], [ %5455, %5457 ]
  %5460 = phi float [ %5539, %5538 ], [ %5428, %5457 ]
  %5461 = phi float [ %5540, %5538 ], [ %5429, %5457 ]
  %5462 = phi float [ %5541, %5538 ], [ %5430, %5457 ]
  %5463 = phi float [ %5542, %5538 ], [ %5431, %5457 ]
  %5464 = phi float [ %5543, %5538 ], [ %5432, %5457 ]
  %5465 = phi float [ %5544, %5538 ], [ %5433, %5457 ]
  %5466 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5459)  ; FirstbitLo(value)
  %5467 = add i32 %5466, %5440
  %5468 = and i32 %5466, 31
  %5469 = shl i32 1, %5468
  %5470 = xor i32 %5469, %5459
  %5471 = mul i32 %5467, 112
  %5472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.ResRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.ResRet.f32 %5472, 2
  %5476 = or i32 %5471, 12
  %5477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5476, i32 undef)  ; BufferLoad(srv,index,wot)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 0
  %5479 = add i32 %5471, 44
  %5480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = add i32 %5471, 48
  %5483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5482, i32 undef)  ; BufferLoad(srv,index,wot)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.ResRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.ResRet.f32 %5483, 2
  %5487 = add i32 %5471, 80
  %5488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5487, i32 undef)  ; BufferLoad(srv,index,wot)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = select i1 %173, float %5489, float %5473
  %5493 = select i1 %173, float %5491, float %5474
  %5494 = select i1 %173, float %5490, float %5475
  %5495 = fsub fast float %5484, %131
  %5496 = fsub fast float %5485, %132
  %5497 = fsub fast float %5486, %133
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5497, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.unary.f32(i32 24, float %5498)  ; Sqrt(value)
  %5500 = fdiv fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5500, %5495
  %5502 = fmul fast float %5500, %5496
  %5503 = fmul fast float %5500, %5497
  %5504 = fadd fast float %5499, %5478
  %5505 = fdiv fast float 1.000000e+00, %5504
  %5506 = fmul float %5481, %5505
  %5507 = fmul float %5506, %5506
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = and i32 %5469, %5455
  %5510 = icmp eq i32 %5509, 0
  br i1 %5510, label %5533, label %5511, !dx.controlflow.hints !73

; <label>:5511                                    ; preds = %5458
  %5512 = lshr i32 %5403, 5
  %5513 = lshr i32 %5404, 5
  %5514 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5512, i32 %5513, i32 %5467, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5515 = extractvalue %dx.types.ResRet.i32 %5514, 0
  %5516 = and i32 %5515, 3
  %5517 = icmp eq i32 %5516, 0
  %5518 = select i1 %5517, float 1.000000e+00, float 0.000000e+00
  %5519 = icmp eq i32 %5516, 3
  br i1 %5519, label %5520, label %5533

; <label>:5520                                    ; preds = %5511
  %5521 = lshr i32 %5515, 10
  %5522 = and i32 %5521, 8160
  %5523 = and i32 %5404, 31
  %5524 = or i32 %5522, %5523
  %5525 = lshr i32 %5515, 1
  %5526 = and i32 %5525, 16352
  %5527 = and i32 %5403, 31
  %5528 = or i32 %5526, %5527
  %5529 = lshr i32 %5515, 23
  %5530 = and i32 %5529, 255
  %5531 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5528, i32 %5524, i32 %5530, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  br label %5533

; <label>:5533                                    ; preds = %5520, %5511, %5458
  %5534 = phi float [ %5532, %5520 ], [ %5518, %5511 ], [ 0.000000e+00, %5458 ]
  %5535 = call float @dx.op.binary.f32(i32 36, float %5534, float %5534)  ; FMin(a,b)
  %5536 = call float @dx.op.binary.f32(i32 36, float %5534, float %5535)  ; FMin(a,b)
  %5537 = fcmp fast ogt float %5536, 0.000000e+00
  br i1 %5537, label %5546, label %5538, !dx.controlflow.hints !74

; <label>:5538                                    ; preds = %5782, %5533
  %5539 = phi float [ %5460, %5533 ], [ %5822, %5782 ]
  %5540 = phi float [ %5461, %5533 ], [ %5823, %5782 ]
  %5541 = phi float [ %5462, %5533 ], [ %5824, %5782 ]
  %5542 = phi float [ %5463, %5533 ], [ %5816, %5782 ]
  %5543 = phi float [ %5464, %5533 ], [ %5817, %5782 ]
  %5544 = phi float [ %5465, %5533 ], [ %5818, %5782 ]
  %5545 = icmp eq i32 %5459, %5469
  br i1 %5545, label %5825, label %5458

; <label>:5546                                    ; preds = %5533
  %5547 = fmul fast float %5534, %5492
  %5548 = fmul fast float %5534, %5493
  %5549 = fmul fast float %5534, %5494
  %5550 = fsub fast float %5486, %4738
  %5551 = fcmp fast ogt float %5550, 0.000000e+00
  %5552 = fsub fast float %133, %4738
  %5553 = fcmp fast ogt float %5552, 0.000000e+00
  %5554 = xor i1 %5553, %5551
  %5555 = fsub fast float %4738, %5486
  %5556 = fmul fast float %5555, 2.000000e+00
  %5557 = fadd fast float %5556, %5486
  %5558 = select i1 %5554, float %5486, float %5557
  %5559 = fsub fast float %5558, %133
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5559, float %5495, float %5496, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = call float @dx.op.unary.f32(i32 25, float %5560)  ; Rsqrt(value)
  %5562 = fmul fast float %5561, %5495
  %5563 = fmul fast float %5561, %5496
  %5564 = fmul fast float %5561, %5559
  %5565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5562, float %5563, float %5564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = fdiv fast float 1.000000e+00, %5566
  %5568 = fmul fast float %5567, %5565
  %5569 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5552, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = fcmp fast ogt float %5569, 0.000000e+00
  %5571 = fcmp fast olt float %5569, 0.000000e+00
  %5572 = zext i1 %5570 to i32
  %5573 = zext i1 %5571 to i32
  %5574 = sub nsw i32 %5572, %5573
  %5575 = sitofp i32 %5574 to float
  %5576 = fsub fast float %5558, %4738
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5576, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = fcmp fast ogt float %5577, 0.000000e+00
  %5579 = fcmp fast olt float %5577, 0.000000e+00
  %5580 = zext i1 %5578 to i32
  %5581 = zext i1 %5579 to i32
  %5582 = sub nsw i32 %5580, %5581
  %5583 = sitofp i32 %5582 to float
  %5584 = fcmp fast une float %5575, %5583
  br i1 %5584, label %5585, label %5595

; <label>:5585                                    ; preds = %5546
  %5586 = fmul fast float %5568, %5564
  %5587 = fmul fast float %5568, %5563
  %5588 = fmul fast float %5568, %5562
  %5589 = fmul fast float %5588, %5588
  %5590 = fmul fast float %5587, %5587
  %5591 = fadd fast float %5589, %5590
  %5592 = fmul fast float %5586, %5586
  %5593 = fadd fast float %5591, %5592
  %5594 = call float @dx.op.unary.f32(i32 24, float %5593)  ; Sqrt(value)
  br label %5607

; <label>:5595                                    ; preds = %5546
  %5596 = icmp slt i32 %5574, 0
  br i1 %5596, label %5597, label %5607

; <label>:5597                                    ; preds = %5595
  %5598 = fsub fast float %131, %5484
  %5599 = fsub fast float %132, %5485
  %5600 = fsub fast float %133, %5558
  %5601 = fmul fast float %5598, %5598
  %5602 = fmul fast float %5599, %5599
  %5603 = fadd fast float %5601, %5602
  %5604 = fmul fast float %5600, %5600
  %5605 = fadd fast float %5603, %5604
  %5606 = call float @dx.op.unary.f32(i32 24, float %5605)  ; Sqrt(value)
  br label %5607

; <label>:5607                                    ; preds = %5597, %5595, %5585
  %5608 = phi float [ %5594, %5585 ], [ %5606, %5597 ], [ 0.000000e+00, %5595 ]
  %5609 = and i1 %5553, %5551
  %5610 = fsub fast float -0.000000e+00, %5608
  %5611 = select i1 %5609, float -0.000000e+00, float %5610
  %5612 = fmul fast float %4739, 0x3FF7154760000000
  %5613 = fmul fast float %5612, %5611
  %5614 = fmul fast float %4740, 0x3FF7154760000000
  %5615 = fmul fast float %5614, %5611
  %5616 = fmul fast float %4741, 0x3FF7154760000000
  %5617 = fmul fast float %5616, %5611
  %5618 = call float @dx.op.unary.f32(i32 21, float %5613)  ; Exp(value)
  %5619 = call float @dx.op.unary.f32(i32 21, float %5615)  ; Exp(value)
  %5620 = call float @dx.op.unary.f32(i32 21, float %5617)  ; Exp(value)
  %5621 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5624 = fmul fast float %5547, %5621
  %5625 = fmul fast float %5548, %5622
  %5626 = fmul fast float %5549, %5623
  %5627 = fsub fast float %5501, %4938
  %5628 = fsub fast float %5502, %4937
  %5629 = fsub fast float %5503, %4936
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float %5627, float %5628, float %5629)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = call float @dx.op.unary.f32(i32 25, float %5630)  ; Rsqrt(value)
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5631, %5628
  %5634 = fmul fast float %5631, %5629
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4934, float %4933, float %5632, float %5633, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5638 = fmul fast float %5637, %5508
  %5639 = fmul fast float %5637, %5637
  %5640 = fmul fast float %5639, %5161
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = fmul fast float %5638, %5641
  %5643 = bitcast float %5498 to i32
  %5644 = ashr i32 %5643, 1
  %5645 = sub nsw i32 1597463007, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = fmul fast float %5646, %5495
  %5648 = fmul fast float %5646, %5496
  %5649 = fmul fast float %5646, %5497
  %5650 = fsub fast float %5647, %4938
  %5651 = fsub fast float %5648, %4937
  %5652 = fsub fast float %5649, %4936
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call float @dx.op.unary.f32(i32 25, float %5653)  ; Rsqrt(value)
  %5655 = fmul fast float %5650, %5654
  %5656 = fmul fast float %5651, %5654
  %5657 = fmul fast float %5652, %5654
  %5658 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %5655, float %5656, float %5657)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = fmul fast float %5658, %5658
  %5660 = call float @dx.op.unary.f32(i32 6, float %5635)  ; FAbs(value)
  %5661 = fsub fast float 1.000000e+00, %4948
  %5662 = call float @dx.op.binary.f32(i32 35, float %5661, float 0x3F847AE140000000)  ; FMax(a,b)
  %5663 = fmul fast float %5662, %5662
  %5664 = fmul fast float %5663, %5663
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = fmul fast float %4952, %4952
  %5667 = fmul fast float %5666, %5665
  %5668 = fadd fast float %5667, %5664
  %5669 = bitcast float %5668 to i32
  %5670 = ashr i32 %5669, 1
  %5671 = add nsw i32 %5670, 532487669
  %5672 = bitcast i32 %5671 to float
  %5673 = fadd fast float %5672, %4952
  %5674 = fmul fast float %5664, %5659
  %5675 = fsub fast float 1.000000e+00, %5659
  %5676 = fadd fast float %5675, %5674
  %5677 = fmul fast float %5660, %5660
  %5678 = fmul fast float %5677, %5665
  %5679 = fadd fast float %5678, %5664
  %5680 = bitcast float %5679 to i32
  %5681 = ashr i32 %5680, 1
  %5682 = add nsw i32 %5681, 532487669
  %5683 = bitcast i32 %5682 to float
  %5684 = fadd fast float %5683, %5660
  %5685 = fmul fast float %5676, %5676
  %5686 = fmul fast float %5685, %5673
  %5687 = fmul fast float %5686, %5684
  %5688 = fdiv fast float 1.000000e+00, %5687
  %5689 = bitcast float %5664 to i32
  %5690 = sitofp i32 %5689 to float
  %5691 = fmul fast float %5690, 0x3FE7F73180000000
  %5692 = fadd fast float %5691, 0x41AFE27C40000000
  %5693 = fptosi float %5692 to i32
  %5694 = bitcast i32 %5693 to float
  %5695 = fmul fast float %5481, 0x3FD80E9D60000000
  %5696 = fmul fast float %5695, %5646
  %5697 = fadd fast float %5694, %5696
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5664, %5688
  %5702 = fmul fast float %5701, %5694
  %5703 = fmul fast float %5702, %5700
  %5704 = call float @dx.op.unary.f32(i32 6, float %5636)  ; FAbs(value)
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sitofp i32 %5706 to float
  %5708 = fmul fast float %5707, 5.000000e+00
  %5709 = fadd fast float %5708, 0xC1EFBF8940000000
  %5710 = fptosi float %5709 to i32
  %5711 = bitcast i32 %5710 to float
  %5712 = fsub fast float 1.000000e+00, %4942
  %5713 = fsub fast float 1.000000e+00, %4943
  %5714 = fsub fast float 1.000000e+00, %4950
  %5715 = fmul fast float %5711, %5712
  %5716 = fmul fast float %5711, %5713
  %5717 = fmul fast float %5711, %5714
  %5718 = fadd fast float %5715, %4942
  %5719 = fadd fast float %5716, %4943
  %5720 = fadd fast float %5717, %4950
  br i1 %5076, label %5721, label %5744

; <label>:5721                                    ; preds = %5607
  %5722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = fadd fast float %5723, -5.000000e-01
  %5727 = fadd fast float %5724, -5.000000e-01
  %5728 = fadd fast float %5725, -5.000000e-01
  %5729 = fmul fast float %4942, 4.000000e+00
  %5730 = fmul fast float %5729, %5712
  %5731 = fmul fast float %5730, %5726
  %5732 = fmul fast float %4943, 4.000000e+00
  %5733 = fmul fast float %5732, %5713
  %5734 = fmul fast float %5733, %5727
  %5735 = fmul fast float %4950, 4.000000e+00
  %5736 = fmul fast float %5735, %5714
  %5737 = fmul fast float %5736, %5728
  %5738 = fadd fast float %5731, %5718
  %5739 = fadd fast float %5734, %5719
  %5740 = fadd fast float %5737, %5720
  %5741 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5742 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5743 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  br label %5744

; <label>:5744                                    ; preds = %5721, %5607
  %5745 = phi float [ %5741, %5721 ], [ %5718, %5607 ]
  %5746 = phi float [ %5742, %5721 ], [ %5719, %5607 ]
  %5747 = phi float [ %5743, %5721 ], [ %5720, %5607 ]
  %5748 = fmul fast float %5635, 9.843750e-01
  %5749 = fadd fast float %5748, 7.812500e-03
  %5750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5749, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 3
  %5753 = fmul fast float %5751, %4942
  %5754 = fmul fast float %5751, %4943
  %5755 = fmul fast float %5751, %4950
  %5756 = fadd fast float %5753, %5752
  %5757 = fadd fast float %5754, %5752
  %5758 = fadd fast float %5755, %5752
  br i1 %5076, label %5759, label %5782

; <label>:5759                                    ; preds = %5744
  %5760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5761 = extractvalue %dx.types.ResRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.ResRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.ResRet.f32 %5760, 2
  %5764 = fadd fast float %5761, -5.000000e-01
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fadd fast float %5763, -5.000000e-01
  %5767 = fmul fast float %4942, 4.000000e+00
  %5768 = fmul fast float %5767, %5712
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %4943, 4.000000e+00
  %5771 = fmul fast float %5770, %5713
  %5772 = fmul fast float %5771, %5765
  %5773 = fmul fast float %4950, 4.000000e+00
  %5774 = fmul fast float %5773, %5714
  %5775 = fmul fast float %5774, %5766
  %5776 = fadd fast float %5769, %5756
  %5777 = fadd fast float %5772, %5757
  %5778 = fadd fast float %5775, %5758
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5781 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  br label %5782

; <label>:5782                                    ; preds = %5759, %5744
  %5783 = phi float [ %5779, %5759 ], [ %5756, %5744 ]
  %5784 = phi float [ %5780, %5759 ], [ %5757, %5744 ]
  %5785 = phi float [ %5781, %5759 ], [ %5758, %5744 ]
  %5786 = call float @dx.op.binary.f32(i32 35, float %5784, float %5785)  ; FMax(a,b)
  %5787 = call float @dx.op.binary.f32(i32 35, float %5783, float %5786)  ; FMax(a,b)
  %5788 = fsub fast float 1.000000e+00, %5787
  %5789 = fmul fast float %5745, %5703
  %5790 = fmul fast float %5746, %5703
  %5791 = fmul fast float %5747, %5703
  %5792 = fsub fast float 1.000000e+00, %5636
  %5793 = bitcast float %5792 to i32
  %5794 = sitofp i32 %5793 to float
  %5795 = fmul fast float %5794, 5.000000e+00
  %5796 = fadd fast float %5795, 0xC1EFBF8940000000
  %5797 = fptosi float %5796 to i32
  %5798 = bitcast i32 %5797 to float
  %5799 = fmul fast float %5798, %4338
  %5800 = fmul fast float %5788, %5799
  %5801 = fmul fast float %5800, %5126
  %5802 = fmul fast float %5800, %5127
  %5803 = fmul fast float %5800, %5128
  %5804 = fadd fast float %5801, %5789
  %5805 = fadd fast float %5802, %5790
  %5806 = fadd fast float %5803, %5791
  %5807 = fmul fast float %5624, %4334
  %5808 = fmul fast float %5807, %5642
  %5809 = fmul fast float %5808, %5788
  %5810 = fmul fast float %5625, %4334
  %5811 = fmul fast float %5810, %5642
  %5812 = fmul fast float %5811, %5788
  %5813 = fmul fast float %5626, %4334
  %5814 = fmul fast float %5813, %5642
  %5815 = fmul fast float %5814, %5788
  %5816 = fadd fast float %5809, %5463
  %5817 = fadd fast float %5812, %5464
  %5818 = fadd fast float %5815, %5465
  %5819 = fmul fast float %5808, %5804
  %5820 = fmul fast float %5811, %5805
  %5821 = fmul fast float %5814, %5806
  %5822 = fadd fast float %5819, %5460
  %5823 = fadd fast float %5820, %5461
  %5824 = fadd fast float %5821, %5462
  br label %5538

; <label>:5825                                    ; preds = %5538
  br label %5826

; <label>:5826                                    ; preds = %5825, %5426
  %5827 = phi float [ %5428, %5426 ], [ %5539, %5825 ]
  %5828 = phi float [ %5429, %5426 ], [ %5540, %5825 ]
  %5829 = phi float [ %5430, %5426 ], [ %5541, %5825 ]
  %5830 = phi float [ %5431, %5426 ], [ %5542, %5825 ]
  %5831 = phi float [ %5432, %5426 ], [ %5543, %5825 ]
  %5832 = phi float [ %5433, %5426 ], [ %5544, %5825 ]
  %5833 = add i32 %5427, 1
  %5834 = icmp ugt i32 %5833, %5423
  br i1 %5834, label %5835, label %5426

; <label>:5835                                    ; preds = %5826
  br label %5836

; <label>:5836                                    ; preds = %5835, %5402, %5392
  %5837 = phi float [ %5393, %5392 ], [ %5393, %5402 ], [ %5827, %5835 ]
  %5838 = phi float [ %5394, %5392 ], [ %5394, %5402 ], [ %5828, %5835 ]
  %5839 = phi float [ %5395, %5392 ], [ %5395, %5402 ], [ %5829, %5835 ]
  %5840 = phi float [ %5396, %5392 ], [ %5396, %5402 ], [ %5830, %5835 ]
  %5841 = phi float [ %5397, %5392 ], [ %5397, %5402 ], [ %5831, %5835 ]
  %5842 = phi float [ %5398, %5392 ], [ %5398, %5402 ], [ %5832, %5835 ]
  %5843 = call float @dx.op.unary.f32(i32 24, float %4945)  ; Sqrt(value)
  %5844 = call float @dx.op.unary.f32(i32 24, float %4946)  ; Sqrt(value)
  %5845 = call float @dx.op.unary.f32(i32 24, float %4947)  ; Sqrt(value)
  %5846 = fmul fast float %5843, %5840
  %5847 = fmul fast float %5844, %5841
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  br i1 %173, label %5850, label %5870

; <label>:5850                                    ; preds = %5836
  %5851 = fadd fast float %5842, %4340
  %5852 = fmul fast float %5851, %4341
  %5853 = fsub fast float 1.000000e+00, %4341
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5857 = fmul fast float %5856, %5854
  %5858 = fadd fast float %5857, %5852
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = fmul fast float %5860, %5132
  %5862 = fsub fast float %5858, %5861
  %5863 = fadd fast float %5847, %5846
  %5864 = fmul fast float %5849, %5863
  %5865 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5866 = fsub fast float %5862, %5865
  %5867 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5868 = fmul fast float %5866, %5867
  %5869 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  br label %5886

; <label>:5870                                    ; preds = %5836
  %5871 = fmul fast float %5845, %5842
  %5872 = fmul fast float %5849, %5846
  %5873 = fmul fast float %5849, %5847
  %5874 = fmul fast float %5871, %5849
  %5875 = add i32 %33, 356
  %5876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5875, i32 undef)  ; BufferLoad(srv,index,wot)
  %5877 = extractvalue %dx.types.ResRet.i32 %5876, 0
  %5878 = and i32 %5877, 32
  %5879 = icmp eq i32 %5878, 0
  br i1 %5879, label %5886, label %5880

; <label>:5880                                    ; preds = %5870
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = fmul fast float %5882, 0x3FE99999A0000000
  %5884 = fadd fast float %5882, %5872
  %5885 = fadd fast float %5883, %5874
  br label %5886

; <label>:5886                                    ; preds = %5880, %5870, %5850
  %5887 = phi float [ %5864, %5850 ], [ %5884, %5880 ], [ %5872, %5870 ]
  %5888 = phi float [ %5869, %5850 ], [ %5873, %5880 ], [ %5873, %5870 ]
  %5889 = phi float [ 1.000000e+00, %5850 ], [ %5885, %5880 ], [ %5874, %5870 ]
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = fmul fast float %5891, %5838
  %5893 = fmul fast float %5891, %5839
  %5894 = fadd fast float %5838, %5837
  %5895 = select i1 %173, float %5894, float %5837
  %5896 = fmul float %5895, %5891
  %5897 = select i1 %173, float 0.000000e+00, float %5892
  %5898 = select i1 %173, float 0.000000e+00, float %5893
  %5899 = fmul fast float %5887, %5843
  %5900 = fmul fast float %5888, %5844
  %5901 = fmul fast float %5889, %5845
  %5902 = fadd fast float %5896, %5899
  %5903 = fadd fast float %5897, %5900
  %5904 = fadd fast float %5898, %5901
  %5905 = select i1 %173, float %5888, float %5903
  %5906 = select i1 %173, float %5889, float %5904
  %5907 = call float @dx.op.binary.f32(i32 36, float %5902, float 3.225500e+04)  ; FMin(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5905, float 3.225500e+04)  ; FMin(a,b)
  %5909 = call float @dx.op.binary.f32(i32 36, float %5906, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5908)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5909)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

