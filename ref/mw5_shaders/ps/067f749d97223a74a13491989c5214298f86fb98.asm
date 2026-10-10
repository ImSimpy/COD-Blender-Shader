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
; shader hash: e5333527330efb3f79b63502a7be42b3
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
  %356 = add i32 %33, 552
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
  %514 = add i32 %33, 440
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
  %537 = add i32 %33, 520
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
  %735 = add i32 %33, 456
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
  %819 = add i32 %33, 472
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
  %1111 = add i32 %33, 508
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
  %1163 = add i32 %33, 492
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
  %1189 = add i32 %33, 444
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
  %1212 = add i32 %33, 524
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
  %1410 = add i32 %33, 460
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
  %1494 = add i32 %33, 476
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
  %1965 = add i32 %33, 512
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
  %2017 = add i32 %33, 496
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
  %2043 = add i32 %33, 448
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
  %2066 = add i32 %33, 528
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
  %2264 = add i32 %33, 464
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
  %2348 = add i32 %33, 480
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
  %2819 = add i32 %33, 516
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
  %2871 = add i32 %33, 500
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
  %2897 = add i32 %33, 452
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
  %2920 = add i32 %33, 532
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
  %3118 = add i32 %33, 468
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
  %3202 = add i32 %33, 484
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
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 0
  %3446 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %3432, float %3433)  ; Dot2(ax,ay,bx,by)
  %3447 = fmul fast float %3446, 0x3FE3333340000000
  %3448 = fsub fast float 1.000000e+00, %3447
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3448, float %3432, float %3433, float %3448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = call float @dx.op.unary.f32(i32 25, float %3449)  ; Rsqrt(value)
  %3451 = fmul fast float %3450, %3432
  %3452 = fmul fast float %3450, %3433
  %3453 = fmul fast float %3448, %3450
  %3454 = fmul fast float %3453, %75
  %3455 = fmul fast float %3453, %76
  %3456 = fmul fast float %3453, %77
  %3457 = fmul fast float %3451, %49
  %3458 = fmul fast float %3451, %50
  %3459 = fmul fast float %3451, %51
  %3460 = fadd fast float %3454, %3457
  %3461 = fadd fast float %3455, %3458
  %3462 = fadd fast float %3456, %3459
  %3463 = fmul fast float %87, %3452
  %3464 = fmul fast float %88, %3452
  %3465 = fmul fast float %89, %3452
  %3466 = fadd fast float %3460, %3463
  %3467 = fadd fast float %3461, %3464
  %3468 = fadd fast float %3462, %3465
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3466, float %3467, float %3468, float %3466, float %3467, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 25, float %3469)  ; Rsqrt(value)
  %3471 = fmul fast float %3466, %3470
  %3472 = fmul fast float %3467, %3470
  %3473 = fmul fast float %3468, %3470
  %3474 = and i32 %35, 1
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3476, label %3988

; <label>:3476                                    ; preds = %3431
  %3477 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3478 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3479 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3480 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3481 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3482 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3483 = fadd fast float %3477, %131
  %3484 = fadd fast float %3478, %132
  %3485 = fadd fast float %3479, %133
  %3486 = fadd fast float %3480, %131
  %3487 = fadd fast float %3481, %132
  %3488 = fadd fast float %3482, %133
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.CBufRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3495 = extractvalue %dx.types.CBufRet.f32 %3493, 3
  %3496 = fmul fast float %3490, %68
  %3497 = fmul fast float %3496, %3494
  %3498 = fmul fast float %3491, %69
  %3499 = fmul fast float %3498, %3495
  %3500 = fptoui float %3497 to i32
  %3501 = fptoui float %3499 to i32
  %3502 = fadd fast float %3490, -1.000000e+00
  %3503 = fadd fast float %3491, -1.000000e+00
  %3504 = fptoui float %3502 to i32
  %3505 = fptoui float %3503 to i32
  %3506 = call i32 @dx.op.binary.i32(i32 40, i32 %3500, i32 %3504)  ; UMin(a,b)
  %3507 = call i32 @dx.op.binary.i32(i32 40, i32 %3501, i32 %3505)  ; UMin(a,b)
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3511 = fmul fast float %3509, %63
  %3512 = fsub fast float %3511, %3510
  %3513 = fadd fast float %3492, -1.000000e+00
  %3514 = call float @dx.op.binary.f32(i32 36, float %3512, float %3513)  ; FMin(a,b)
  %3515 = fptoui float %3514 to i32
  %3516 = fptoui float %3490 to i32
  %3517 = fptoui float %3491 to i32
  %3518 = mul i32 %3515, %3517
  %3519 = add i32 %3518, %3507
  %3520 = mul i32 %3519, %3516
  %3521 = add i32 %3520, %3506
  %3522 = shl i32 %3521, 2
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 1023
  %3526 = lshr i32 %3524, 10
  %3527 = icmp eq i32 %3525, 0
  br i1 %3527, label %3956, label %3528

; <label>:3528                                    ; preds = %3476
  %3529 = and i32 %3524, 1023
  br label %3530

; <label>:3530                                    ; preds = %3657, %3528
  %3531 = phi i32 [ %3607, %3657 ], [ 0, %3528 ]
  %3532 = phi float [ %3658, %3657 ], [ 0.000000e+00, %3528 ]
  %3533 = phi float [ %3659, %3657 ], [ %878, %3528 ]
  %3534 = phi float [ %3660, %3657 ], [ %3445, %3528 ]
  %3535 = phi float [ %3661, %3657 ], [ %3443, %3528 ]
  %3536 = phi float [ %3662, %3657 ], [ 0.000000e+00, %3528 ]
  %3537 = phi float [ %3663, %3657 ], [ 0.000000e+00, %3528 ]
  %3538 = phi float [ %3664, %3657 ], [ %3437, %3528 ]
  %3539 = phi float [ %3665, %3657 ], [ %3438, %3528 ]
  %3540 = phi float [ %3666, %3657 ], [ %3439, %3528 ]
  %3541 = phi float [ %3667, %3657 ], [ %3471, %3528 ]
  %3542 = phi float [ %3668, %3657 ], [ %3472, %3528 ]
  %3543 = phi float [ %3669, %3657 ], [ %3473, %3528 ]
  %3544 = phi float [ %3670, %3657 ], [ %3442, %3528 ]
  %3545 = phi float [ %3671, %3657 ], [ %3441, %3528 ]
  %3546 = phi float [ %3672, %3657 ], [ 0.000000e+00, %3528 ]
  %3547 = phi float [ %3673, %3657 ], [ %3440, %3528 ]
  %3548 = phi float [ %3674, %3657 ], [ %3434, %3528 ]
  %3549 = phi float [ %3675, %3657 ], [ %3435, %3528 ]
  %3550 = phi float [ %3676, %3657 ], [ %3436, %3528 ]
  %3551 = add nuw nsw i32 %3531, %3526
  %3552 = shl i32 %3551, 2
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = shl i32 %3554, 8
  %3556 = or i32 %3555, 48
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.ResRet.f32 %3557, 1
  %3560 = extractvalue %dx.types.ResRet.f32 %3557, 2
  %3561 = extractvalue %dx.types.ResRet.f32 %3557, 3
  %3562 = or i32 %3555, 64
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = extractvalue %dx.types.ResRet.i32 %3563, 1
  %3566 = or i32 %3555, 80
  %3567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 2
  %3569 = extractvalue %dx.types.ResRet.f32 %3567, 3
  %3570 = or i32 %3555, 96
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = extractvalue %dx.types.ResRet.f32 %3571, 3
  %3576 = or i32 %3555, 112
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3579 = or i32 %3555, 128
  %3580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.ResRet.f32 %3580, 3
  %3585 = or i32 %3555, 144
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = or i32 %3555, 160
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3597 = or i32 %3555, 192
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = or i32 %3555, 208
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = or i32 %3555, 248
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = add nuw nsw i32 %3531, 1
  %3608 = bitcast float %3561 to i32
  %3609 = and i32 %3608, 512
  %3610 = icmp eq i32 %3609, 0
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = call float @dx.op.dot4.f32(i32 56, float %3612, float %3613, float %3614, float %3615, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3617 = or i32 %3555, 16
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3624 = or i32 %3555, 32
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = call float @dx.op.unary.f32(i32 27, float %3616)  ; Round_ni(value)
  %3632 = call float @dx.op.unary.f32(i32 6, float %3631)  ; FAbs(value)
  %3633 = call float @dx.op.unary.f32(i32 27, float %3623)  ; Round_ni(value)
  %3634 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3635 = call float @dx.op.unary.f32(i32 6, float %3630)  ; FAbs(value)
  %3636 = call float @dx.op.unary.f32(i32 27, float %3635)  ; Round_ni(value)
  %3637 = fadd fast float %3634, %3632
  %3638 = fadd fast float %3637, %3636
  %3639 = fcmp fast oeq float %3638, 0.000000e+00
  %3640 = call float @dx.op.dot4.f32(i32 56, float %3612, float %3613, float %3614, float %3615, float %3483, float %3484, float %3485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3641 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3483, float %3484, float %3485, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3642 = call float @dx.op.dot4.f32(i32 56, float %3612, float %3613, float %3614, float %3615, float %3486, float %3487, float %3488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3619, float %3620, float %3621, float %3622, float %3486, float %3487, float %3488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = fsub fast float %3640, %3616
  %3645 = fsub fast float %3642, %3616
  %3646 = fsub fast float %3641, %3623
  %3647 = fsub fast float %3643, %3623
  %3648 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3651 = fadd fast float %3650, %3648
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3654 = fcmp fast ogt float %3652, %3653
  %3655 = and i1 %3639, %3654
  %3656 = and i1 %3610, %3655
  br i1 %3656, label %3678, label %3657

; <label>:3657                                    ; preds = %3942, %3759, %3678, %3530
  %3658 = phi float [ %3532, %3678 ], [ %3762, %3759 ], [ %3762, %3942 ], [ %3532, %3530 ]
  %3659 = phi float [ %3533, %3678 ], [ %3533, %3759 ], [ %3917, %3942 ], [ %3533, %3530 ]
  %3660 = phi float [ %3534, %3678 ], [ %3534, %3759 ], [ %3916, %3942 ], [ %3534, %3530 ]
  %3661 = phi float [ %3535, %3678 ], [ %3535, %3759 ], [ %3914, %3942 ], [ %3535, %3530 ]
  %3662 = phi float [ %3536, %3678 ], [ %3536, %3759 ], [ %3886, %3942 ], [ %3536, %3530 ]
  %3663 = phi float [ %3537, %3678 ], [ %3537, %3759 ], [ %3884, %3942 ], [ %3537, %3530 ]
  %3664 = phi float [ %3538, %3678 ], [ %3538, %3759 ], [ %3952, %3942 ], [ %3538, %3530 ]
  %3665 = phi float [ %3539, %3678 ], [ %3539, %3759 ], [ %3953, %3942 ], [ %3539, %3530 ]
  %3666 = phi float [ %3540, %3678 ], [ %3540, %3759 ], [ %3954, %3942 ], [ %3540, %3530 ]
  %3667 = phi float [ %3541, %3678 ], [ %3541, %3759 ], [ %3865, %3942 ], [ %3541, %3530 ]
  %3668 = phi float [ %3542, %3678 ], [ %3542, %3759 ], [ %3866, %3942 ], [ %3542, %3530 ]
  %3669 = phi float [ %3543, %3678 ], [ %3543, %3759 ], [ %3867, %3942 ], [ %3543, %3530 ]
  %3670 = phi float [ %3544, %3678 ], [ %3544, %3759 ], [ %3894, %3942 ], [ %3544, %3530 ]
  %3671 = phi float [ %3545, %3678 ], [ %3545, %3759 ], [ %3891, %3942 ], [ %3545, %3530 ]
  %3672 = phi float [ %3546, %3678 ], [ %3546, %3759 ], [ %3888, %3942 ], [ %3546, %3530 ]
  %3673 = phi float [ %3547, %3678 ], [ %3547, %3759 ], [ %3882, %3942 ], [ %3547, %3530 ]
  %3674 = phi float [ %3548, %3678 ], [ %3548, %3759 ], [ %3877, %3942 ], [ %3548, %3530 ]
  %3675 = phi float [ %3549, %3678 ], [ %3549, %3759 ], [ %3878, %3942 ], [ %3549, %3530 ]
  %3676 = phi float [ %3550, %3678 ], [ %3550, %3759 ], [ %3879, %3942 ], [ %3550, %3530 ]
  %3677 = icmp eq i32 %3607, %3529
  br i1 %3677, label %3955, label %3530

; <label>:3678                                    ; preds = %3530
  %3679 = extractvalue %dx.types.ResRet.f32 %3577, 3
  %3680 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3567, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3684 = extractvalue %dx.types.ResRet.i32 %3563, 3
  %3685 = extractvalue %dx.types.ResRet.i32 %3563, 2
  %3686 = add i32 %3684, 0
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3686, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3689 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3687, %dx.types.Handle %3688, float %3616, float %3623, float undef, float undef, i32 0, i32 0, i32 undef, float %3644, float %3646, float undef, float %3645, float %3647, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = fmul fast float %3690, %3683
  %3692 = fadd fast float %3691, %3682
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = fmul fast float %3616, %3572
  %3695 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3623, float %3694)  ; FMad(a,b,c)
  %3696 = fadd fast float %3695, %3681
  %3697 = fmul fast float %3616, %3574
  %3698 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3623, float %3697)  ; FMad(a,b,c)
  %3699 = fadd fast float %3698, %3680
  %3700 = fmul fast float %3644, %3572
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3646, float %3700)  ; FMad(a,b,c)
  %3702 = fmul fast float %3644, %3574
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3646, float %3702)  ; FMad(a,b,c)
  %3704 = fmul fast float %3645, %3572
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3647, float %3704)  ; FMad(a,b,c)
  %3706 = fmul fast float %3645, %3574
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3647, float %3706)  ; FMad(a,b,c)
  %3708 = add i32 %3685, 0
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3708, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3709, %dx.types.Handle %3688, float %3696, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float %3701, float %3703, float undef, float %3705, float %3707, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = and i32 %3608, 1024
  %3713 = icmp ne i32 %3712, 0
  %3714 = fcmp fast ogt float %3711, 0x3FE0101020000000
  %3715 = uitofp i1 %3714 to float
  %3716 = select i1 %3713, float %3715, float %3711
  %3717 = and i32 %3608, 8192
  %3718 = icmp ne i32 %3717, 0
  %3719 = select i1 %3718, float %3679, float 1.000000e+00
  %3720 = fmul fast float %3616, 2.000000e+00
  %3721 = fadd fast float %3720, -1.000000e+00
  %3722 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3723 = fmul fast float %3722, %3605
  %3724 = fsub fast float %3723, %3605
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fmul fast float %3623, 2.000000e+00
  %3727 = fadd fast float %3726, -1.000000e+00
  %3728 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3729 = fmul fast float %3728, %3606
  %3730 = fsub fast float %3729, %3606
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fmul fast float %3635, %3568
  %3733 = fsub fast float %3732, %3568
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3693, %3719
  %3736 = fmul fast float %3735, %3690
  %3737 = fmul fast float %3736, %3725
  %3738 = fmul fast float %3737, %3716
  %3739 = fmul fast float %3738, %3731
  %3740 = fmul fast float %3739, %3734
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 1
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3744 = fsub fast float %3652, %3743
  %3745 = fmul fast float %3744, %3742
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fmul fast float %3740, %3569
  %3748 = fadd fast float %3740, %3569
  %3749 = fmul fast float %3748, %3578
  %3750 = fsub fast float %3749, %3578
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3752 = and i32 %3608, 128
  %3753 = icmp ne i32 %3752, 0
  %3754 = select i1 %3753, float %3751, float %3747
  %3755 = fmul fast float %3754, %3746
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = fcmp fast ugt float %3755, %3757
  br i1 %3758, label %3759, label %3657

; <label>:3759                                    ; preds = %3678
  %3760 = select i1 %3718, float %3755, float 0.000000e+00
  %3761 = fadd fast float %3760, %3532
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  br i1 %3718, label %3657, label %3763

; <label>:3763                                    ; preds = %3759
  %3764 = and i32 %3608, 4
  %3765 = and i32 %3608, 8
  %3766 = add i32 %3564, 0
  %3767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3769 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3767, %dx.types.Handle %3768, float %3696, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float %3701, float %3703, float undef, float %3705, float %3707, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.ResRet.f32 %3769, 3
  %3774 = bitcast float %3590 to i32
  %3775 = and i32 %3774, 255
  %3776 = uitofp i32 %3775 to float
  %3777 = lshr i32 %3774, 8
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = fmul fast float %3773, %3776
  %3781 = fadd fast float %3780, %3779
  %3782 = fmul fast float %3781, 0x3F70101000000000
  %3783 = add i32 %3565, 0
  %3784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3783, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3785 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3784, %dx.types.Handle %3768, float %3696, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float %3701, float %3703, float undef, float %3705, float %3707, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3790 = bitcast float %3584 to i32
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = lshr i32 %3790, 8
  %3794 = and i32 %3793, 255
  %3795 = uitofp i32 %3794 to float
  %3796 = lshr i32 %3790, 16
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = fmul fast float %3798, 0x3F70101000000000
  %3800 = fmul fast float %3786, %3792
  %3801 = fadd fast float %3800, %3795
  %3802 = fmul fast float %3801, 0x3F70101000000000
  %3803 = fadd fast float %3787, -5.000000e-01
  %3804 = fadd fast float %3789, -5.000000e-01
  %3805 = fmul fast float %3803, %3799
  %3806 = fmul fast float %3804, %3799
  %3807 = fadd fast float %3805, 5.000000e-01
  %3808 = fadd fast float %3806, 5.000000e-01
  %3809 = fmul fast float %3770, %3593
  %3810 = fmul fast float %3771, %3594
  %3811 = fmul fast float %3772, %3595
  %3812 = fmul fast float %3807, 2.000000e+00
  %3813 = fadd fast float %3812, -1.000000e+00
  %3814 = fmul fast float %3808, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = fadd fast float %3813, %3815
  %3817 = fmul fast float %3816, 5.000000e-01
  %3818 = fsub fast float %3813, %3815
  %3819 = fmul fast float %3818, 5.000000e-01
  %3820 = call float @dx.op.unary.f32(i32 6, float %3817)  ; FAbs(value)
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = call float @dx.op.unary.f32(i32 6, float %3819)  ; FAbs(value)
  %3823 = fsub fast float %3821, %3822
  %3824 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3819, float %3823, float %3817, float %3819, float %3823)  ; Dot3(ax,ay,az,bx,by,bz)
  %3825 = call float @dx.op.unary.f32(i32 25, float %3824)  ; Rsqrt(value)
  %3826 = fmul fast float %3817, %3825
  %3827 = fmul fast float %3819, %3825
  %3828 = fmul fast float %3825, %3823
  %3829 = fmul fast float %3828, %3558
  %3830 = fmul fast float %3828, %3559
  %3831 = fmul fast float %3828, %3560
  %3832 = fmul fast float %3826, %3581
  %3833 = fmul fast float %3826, %3582
  %3834 = fmul fast float %3826, %3583
  %3835 = fadd fast float %3832, %3829
  %3836 = fadd fast float %3833, %3830
  %3837 = fadd fast float %3834, %3831
  %3838 = fmul fast float %3827, %3587
  %3839 = fmul fast float %3827, %3588
  %3840 = fmul fast float %3827, %3589
  %3841 = fadd fast float %3835, %3838
  %3842 = fadd fast float %3836, %3839
  %3843 = fadd fast float %3837, %3840
  %3844 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %3841, float %3842, float %3843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3845 = call float @dx.op.unary.f32(i32 25, float %3844)  ; Rsqrt(value)
  %3846 = fmul fast float %3841, %3845
  %3847 = fmul fast float %3842, %3845
  %3848 = fmul fast float %3843, %3845
  %3849 = icmp ne i32 %3765, 0
  %3850 = select i1 %3849, float 1.000000e+00, float 0.000000e+00
  %3851 = fmul fast float %3755, %3850
  %3852 = and i32 %3608, 1
  %3853 = icmp eq i32 %3852, 0
  br i1 %3853, label %3854, label %3858

; <label>:3854                                    ; preds = %3763
  %3855 = fsub fast float %3846, %3541
  %3856 = fsub fast float %3847, %3542
  %3857 = fsub fast float %3848, %3543
  br label %3858

; <label>:3858                                    ; preds = %3854, %3763
  %3859 = phi float [ %3855, %3854 ], [ %3846, %3763 ]
  %3860 = phi float [ %3856, %3854 ], [ %3847, %3763 ]
  %3861 = phi float [ %3857, %3854 ], [ %3848, %3763 ]
  %3862 = fmul float %3861, %3851
  %3863 = fmul float %3860, %3851
  %3864 = fmul float %3859, %3851
  %3865 = fadd fast float %3864, %3541
  %3866 = fadd fast float %3863, %3542
  %3867 = fadd fast float %3862, %3543
  %3868 = icmp ne i32 %3764, 0
  %3869 = select i1 %3868, float 1.000000e+00, float 0.000000e+00
  %3870 = fmul fast float %3755, %3869
  %3871 = fsub fast float %3809, %3548
  %3872 = fsub fast float %3810, %3549
  %3873 = fsub fast float %3811, %3550
  %3874 = fmul fast float %3871, %3870
  %3875 = fmul fast float %3872, %3870
  %3876 = fmul fast float %3873, %3870
  %3877 = fadd fast float %3874, %3548
  %3878 = fadd fast float %3875, %3549
  %3879 = fadd fast float %3876, %3550
  %3880 = fsub fast float %3782, %3547
  %3881 = fmul fast float %3880, %3870
  %3882 = fadd fast float %3881, %3547
  %3883 = fmul fast float %3870, %3537
  %3884 = fsub fast float %3537, %3883
  %3885 = fmul fast float %3870, %3536
  %3886 = fsub fast float %3536, %3885
  %3887 = fadd fast float %3755, %3546
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fsub fast float %3802, %3545
  %3890 = fmul fast float %3889, %3851
  %3891 = fadd fast float %3890, %3545
  %3892 = fsub fast float %3788, %3544
  %3893 = fmul fast float %3892, %3851
  %3894 = fadd fast float %3893, %3544
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3810, float %3811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3899 = fmul fast float %3898, %3895
  %3900 = fadd fast float %3899, %3897
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = bitcast float %3596 to i32
  %3903 = and i32 %3902, 65535
  %3904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3903)  ; LegacyF16ToF32(value)
  %3905 = lshr i32 %3902, 16
  %3906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3905)  ; LegacyF16ToF32(value)
  %3907 = fcmp fast oge float %3904, 0.000000e+00
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = select i1 %3907, float %3904, float %3909
  %3911 = fadd fast float %3910, %3906
  %3912 = fsub fast float %3901, %3535
  %3913 = fmul fast float %3912, %3755
  %3914 = fadd fast float %3913, %3535
  %3915 = fmul fast float %3911, %3755
  %3916 = call float @dx.op.binary.f32(i32 35, float %3534, float %3915)  ; FMax(a,b)
  %3917 = call float @dx.op.binary.f32(i32 35, float %3533, float %3755)  ; FMax(a,b)
  %3918 = and i32 %3608, 16
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3942, label %3920

; <label>:3920                                    ; preds = %3858
  %3921 = bitcast float %3602 to i32
  %3922 = add i32 %3599, 0
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3923, %dx.types.Handle %3768, float %3696, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float %3701, float %3703, float undef, float %3705, float %3707, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = and i32 %3921, 65535
  %3929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3928)  ; LegacyF16ToF32(value)
  %3930 = fmul fast float %3925, %3593
  %3931 = fmul fast float %3926, %3594
  %3932 = fmul fast float %3927, %3595
  %3933 = and i32 %3608, 16384
  %3934 = icmp ne i32 %3933, 0
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = select i1 %3934, float %3936, float 1.000000e+00
  %3938 = fmul fast float %3937, %3929
  %3939 = fmul fast float %3930, %3938
  %3940 = fmul fast float %3931, %3938
  %3941 = fmul fast float %3932, %3938
  br label %3942

; <label>:3942                                    ; preds = %3920, %3858
  %3943 = phi float [ %3939, %3920 ], [ 0.000000e+00, %3858 ]
  %3944 = phi float [ %3940, %3920 ], [ 0.000000e+00, %3858 ]
  %3945 = phi float [ %3941, %3920 ], [ 0.000000e+00, %3858 ]
  %3946 = fsub fast float %3943, %3538
  %3947 = fsub fast float %3944, %3539
  %3948 = fsub fast float %3945, %3540
  %3949 = fmul fast float %3946, %3755
  %3950 = fmul fast float %3947, %3755
  %3951 = fmul fast float %3948, %3755
  %3952 = fadd fast float %3949, %3538
  %3953 = fadd fast float %3950, %3539
  %3954 = fadd fast float %3951, %3540
  br label %3657

; <label>:3955                                    ; preds = %3657
  br label %3956

; <label>:3956                                    ; preds = %3955, %3476
  %3957 = phi float [ 0.000000e+00, %3476 ], [ %3658, %3955 ]
  %3958 = phi float [ %878, %3476 ], [ %3659, %3955 ]
  %3959 = phi float [ %3445, %3476 ], [ %3660, %3955 ]
  %3960 = phi float [ %3443, %3476 ], [ %3661, %3955 ]
  %3961 = phi float [ 0.000000e+00, %3476 ], [ %3662, %3955 ]
  %3962 = phi float [ 0.000000e+00, %3476 ], [ %3663, %3955 ]
  %3963 = phi float [ %3437, %3476 ], [ %3664, %3955 ]
  %3964 = phi float [ %3438, %3476 ], [ %3665, %3955 ]
  %3965 = phi float [ %3439, %3476 ], [ %3666, %3955 ]
  %3966 = phi float [ %3471, %3476 ], [ %3667, %3955 ]
  %3967 = phi float [ %3472, %3476 ], [ %3668, %3955 ]
  %3968 = phi float [ %3473, %3476 ], [ %3669, %3955 ]
  %3969 = phi float [ %3442, %3476 ], [ %3670, %3955 ]
  %3970 = phi float [ %3441, %3476 ], [ %3671, %3955 ]
  %3971 = phi float [ 0.000000e+00, %3476 ], [ %3672, %3955 ]
  %3972 = phi float [ %3440, %3476 ], [ %3673, %3955 ]
  %3973 = phi float [ %3434, %3476 ], [ %3674, %3955 ]
  %3974 = phi float [ %3435, %3476 ], [ %3675, %3955 ]
  %3975 = phi float [ %3436, %3476 ], [ %3676, %3955 ]
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3966, float %3967, float %3968, float %3966, float %3967, float %3968)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.unary.f32(i32 25, float %3976)  ; Rsqrt(value)
  %3978 = fmul fast float %3977, %3966
  %3979 = fmul fast float %3977, %3967
  %3980 = fmul fast float %3977, %3968
  %3981 = fadd fast float %3971, %878
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3978, float %3979, float %3980, float %3978, float %3979, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call float @dx.op.unary.f32(i32 25, float %3983)  ; Rsqrt(value)
  %3985 = fmul fast float %3984, %3978
  %3986 = fmul fast float %3984, %3979
  %3987 = fmul fast float %3984, %3980
  br label %3988

; <label>:3988                                    ; preds = %3956, %3431
  %3989 = phi float [ %3973, %3956 ], [ %3434, %3431 ]
  %3990 = phi float [ %3974, %3956 ], [ %3435, %3431 ]
  %3991 = phi float [ %3975, %3956 ], [ %3436, %3431 ]
  %3992 = phi float [ %3963, %3956 ], [ %3437, %3431 ]
  %3993 = phi float [ %3964, %3956 ], [ %3438, %3431 ]
  %3994 = phi float [ %3965, %3956 ], [ %3439, %3431 ]
  %3995 = phi float [ %3985, %3956 ], [ %3471, %3431 ]
  %3996 = phi float [ %3986, %3956 ], [ %3472, %3431 ]
  %3997 = phi float [ %3987, %3956 ], [ %3473, %3431 ]
  %3998 = phi float [ %3972, %3956 ], [ %3440, %3431 ]
  %3999 = phi float [ %3982, %3956 ], [ %878, %3431 ]
  %4000 = phi float [ %3970, %3956 ], [ %3441, %3431 ]
  %4001 = phi float [ %3969, %3956 ], [ %3442, %3431 ]
  %4002 = phi float [ %3962, %3956 ], [ 0.000000e+00, %3431 ]
  %4003 = phi float [ %3961, %3956 ], [ 0.000000e+00, %3431 ]
  %4004 = phi float [ %3957, %3956 ], [ 0.000000e+00, %3431 ]
  %4005 = phi float [ %3959, %3956 ], [ %3445, %3431 ]
  %4006 = phi float [ %3958, %3956 ], [ %878, %3431 ]
  %4007 = phi float [ %3960, %3956 ], [ %3443, %3431 ]
  %4008 = fadd fast float %3998, 0xBFB99999A0000000
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fmul fast float %4009, 0x3FF1C71C80000000
  %4011 = call float @dx.op.binary.f32(i32 36, float %3998, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4012 = fsub fast float 1.000000e+00, %4010
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fmul fast float %4013, %3989
  %4015 = fmul fast float %4013, %3990
  %4016 = fmul fast float %4013, %3991
  %4017 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4018 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4020 = fmul fast float %4010, %3989
  %4021 = fmul fast float %4010, %3990
  %4022 = fmul fast float %4010, %3991
  %4023 = fadd fast float %4020, %4011
  %4024 = fadd fast float %4021, %4011
  %4025 = fadd fast float %4022, %4011
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.i32 %4030, 3
  %4032 = and i32 %4031, 8
  %4033 = icmp ne i32 %4032, 0
  %4034 = call float @dx.op.binary.f32(i32 35, float %4017, float %3989)  ; FMax(a,b)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4018, float %3989)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 35, float %4019, float %3989)  ; FMax(a,b)
  %4037 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4018, float %4019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = select i1 %173, float %3989, float %4017
  %4039 = select i1 %173, float %4037, float %4018
  %4040 = select i1 %173, float 1.000000e+00, float %4019
  %4041 = select i1 %4033, float %4034, float %4038
  %4042 = select i1 %4033, float %4035, float %4039
  %4043 = select i1 %4033, float %4036, float %4040
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.CBufRet.f32 %4044, 2
  %4048 = fadd fast float %4045, %131
  %4049 = fadd fast float %4046, %132
  %4050 = fadd fast float %4047, %133
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = fsub fast float %4048, %4052
  %4055 = fsub fast float %4049, %4053
  %4056 = fmul fast float %4054, %4054
  %4057 = fmul fast float %4055, %4055
  %4058 = fadd fast float %4056, %4057
  %4059 = call float @dx.op.unary.f32(i32 24, float %4058)  ; Sqrt(value)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4061 = fcmp fast olt float %4059, %4060
  br i1 %4061, label %4062, label %4129

; <label>:4062                                    ; preds = %3988
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4073 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4074 = extractvalue %dx.types.CBufRet.f32 %4067, 3
  %4075 = fadd fast float %4072, %4048
  %4076 = fadd fast float %4073, %4049
  %4077 = fadd fast float %4074, %4050
  %4078 = fmul fast float %4075, %4064
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4066, float %4078)  ; FMad(a,b,c)
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4068, float %4079)  ; FMad(a,b,c)
  %4081 = fmul fast float %4075, %4069
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4070, float %4081)  ; FMad(a,b,c)
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4071, float %4082)  ; FMad(a,b,c)
  %4084 = fsub fast float %4080, %4072
  %4085 = fsub fast float %4083, %4073
  %4086 = fsub fast float %4084, %4052
  %4087 = fadd fast float %4086, %4060
  %4088 = fsub fast float %4085, %4053
  %4089 = fadd fast float %4088, %4060
  %4090 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4091 = fmul fast float %4087, %4090
  %4092 = fmul fast float %4089, %4090
  %4093 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = fsub fast float 1.000000e+00, %4093
  %4096 = fsub fast float 1.000000e+00, %4094
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4095, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = fcmp fast ugt float %4098, 0.000000e+00
  br i1 %4099, label %4100, label %4403

; <label>:4100                                    ; preds = %4062
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4103 = fmul fast float %4102, %4098
  %4104 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4105 = fadd fast float %4104, %4103
  %4106 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4107 = fadd fast float %4105, %4074
  %4108 = fmul fast float %4080, %4068
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4071, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4106, float %4109)  ; FMad(a,b,c)
  %4111 = fsub fast float %4110, %4074
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 2
  %4114 = fsub fast float %4111, %4113
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4095, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4095, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4123 = fadd fast float %4120, %4116
  %4124 = fmul fast float %4123, 0x3F847AE140000000
  %4125 = fadd fast float %4121, %4117
  %4126 = fmul fast float %4125, 0x3F847AE140000000
  %4127 = fadd fast float %4122, %4118
  %4128 = fmul fast float %4127, 0x3F847AE140000000
  br label %4403

; <label>:4129                                    ; preds = %3988
  %4130 = and i32 %149, 1
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4403, label %4132

; <label>:4132                                    ; preds = %4129
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4140 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4137, 1
  %4142 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4143 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4144 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4145 = fadd fast float %4142, %4048
  %4146 = fadd fast float %4143, %4049
  %4147 = fadd fast float %4144, %4050
  %4148 = fmul fast float %4145, %4134
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4136, float %4148)  ; FMad(a,b,c)
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4138, float %4149)  ; FMad(a,b,c)
  %4151 = fmul fast float %4145, %4139
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4140, float %4151)  ; FMad(a,b,c)
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4141, float %4152)  ; FMad(a,b,c)
  %4154 = fsub fast float %4150, %4142
  %4155 = fsub fast float %4153, %4143
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.i32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.i32 %4163, 1
  %4166 = udiv i32 %4165, %4164
  %4167 = fsub fast float %4154, %4157
  %4168 = fsub fast float %4155, %4158
  %4169 = call float @dx.op.binary.f32(i32 35, float %4167, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4171 = call float @dx.op.binary.f32(i32 36, float %4169, float %4159)  ; FMin(a,b)
  %4172 = call float @dx.op.binary.f32(i32 36, float %4170, float %4160)  ; FMin(a,b)
  %4173 = add i32 %4164, -1
  %4174 = add i32 %4166, -1
  %4175 = fmul fast float %4171, %4162
  %4176 = fmul fast float %4172, %4162
  %4177 = fptoui float %4175 to i32
  %4178 = fptoui float %4176 to i32
  %4179 = call i32 @dx.op.binary.i32(i32 40, i32 %4177, i32 %4173)  ; UMin(a,b)
  %4180 = call i32 @dx.op.binary.i32(i32 40, i32 %4178, i32 %4174)  ; UMin(a,b)
  %4181 = mul i32 %4180, %4164
  %4182 = add i32 %4181, %4179
  %4183 = shl i32 %4182, 2
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = icmp eq i32 %4185, -1
  br i1 %4186, label %4403, label %4187

; <label>:4187                                    ; preds = %4132
  %4188 = mul i32 %4185, 148
  %4189 = add i32 %4188, 4
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = add i32 %4188, 8
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = add i32 %4188, 36
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4188, 60
  %4199 = add i32 %4188, 92
  %4200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.i32 %4200, 0
  %4202 = add i32 %4188, 116
  %4203 = fsub fast float %4154, %4191
  %4204 = fsub fast float %4155, %4194
  %4205 = fmul fast float %4162, %4203
  %4206 = fmul fast float %4162, %4204
  %4207 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4208 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4209 = fsub fast float 1.000000e+00, %4208
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4212 = call float @dx.op.unary.f32(i32 83, float %4207)  ; DerivCoarseX(value)
  %4213 = call float @dx.op.unary.f32(i32 83, float %4209)  ; DerivCoarseX(value)
  %4214 = call float @dx.op.unary.f32(i32 84, float %4207)  ; DerivCoarseY(value)
  %4215 = call float @dx.op.unary.f32(i32 84, float %4209)  ; DerivCoarseY(value)
  %4216 = fmul fast float %4212, %4211
  %4217 = fmul fast float %4213, %4211
  %4218 = fmul fast float %4214, %4211
  %4219 = fmul fast float %4215, %4211
  %4220 = call float @dx.op.dot2.f32(i32 54, float %4218, float %4219, float %4218, float %4219)  ; Dot2(ax,ay,bx,by)
  %4221 = call float @dx.op.dot2.f32(i32 54, float %4216, float %4217, float %4216, float %4217)  ; Dot2(ax,ay,bx,by)
  %4222 = call float @dx.op.binary.f32(i32 35, float %4221, float %4220)  ; FMax(a,b)
  %4223 = call float @dx.op.unary.f32(i32 23, float %4222)  ; Log(value)
  %4224 = fmul fast float %4223, 5.000000e-01
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4227 = fadd fast float %4226, %4224
  %4228 = call float @dx.op.binary.f32(i32 35, float %4227, float 0.000000e+00)  ; FMax(a,b)
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4231 = fadd fast float %4230, %4228
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4234 = fadd fast float %4231, %4233
  %4235 = add i32 %4201, 0
  %4236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4235, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4236, i32 0)  ; GetDimensions(handle,mipLevel)
  %4238 = extractvalue %dx.types.Dimensions %4237, 0
  %4239 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4238)  ; FirstbitLo(value)
  %4240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.i32 %4240, 1
  %4242 = sub nsw i32 %4241, %4239
  %4243 = sitofp i32 %4242 to float
  %4244 = fsub fast float %4234, %4243
  %4245 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4236, %dx.types.Handle %27, float %4207, float %4209, float %4197, float undef, i32 0, i32 0, i32 undef, float %4245)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = fcmp ule float %4247, 0x3FE0101020000000
  %4249 = extractvalue %dx.types.CBufRet.i32 %4240, 0
  %4250 = and i32 %4249, 128
  %4251 = icmp ne i32 %4250, 0
  %4252 = and i1 %4248, %4251
  br i1 %4252, label %4403, label %4253

; <label>:4253                                    ; preds = %4187
  %4254 = add i32 %4188, 20
  %4255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = add i32 %4188, 24
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = add i32 %4188, 40
  %4261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4260, i32 undef)  ; BufferLoad(srv,index,wot)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = add i32 %4188, 96
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 2
  %4268 = fmul fast float %4267, %4207
  %4269 = fmul fast float %4267, %4209
  %4270 = extractvalue %dx.types.CBufRet.f32 %4266, 3
  %4271 = fadd fast float %4268, %4270
  %4272 = fadd fast float %4269, %4270
  %4273 = add i32 %4265, 0
  %4274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4273, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4274, i32 0)  ; GetDimensions(handle,mipLevel)
  %4276 = extractvalue %dx.types.Dimensions %4275, 0
  %4277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4276)  ; FirstbitLo(value)
  %4278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.i32 %4278, 1
  %4280 = sub nsw i32 %4279, %4277
  %4281 = sitofp i32 %4280 to float
  %4282 = fsub fast float %4231, %4281
  %4283 = call float @dx.op.binary.f32(i32 35, float %4282, float 0.000000e+00)  ; FMax(a,b)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4274, %dx.types.Handle %27, float %4271, float %4272, float %4262, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = fmul fast float %4285, %4256
  %4287 = fadd fast float %4286, %4259
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4296 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4297 = fadd fast float %4293, %4154
  %4298 = fadd fast float %4295, %4155
  %4299 = fadd fast float %4287, %4296
  %4300 = fmul fast float %4297, %4289
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4290, float %4300)  ; FMad(a,b,c)
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4291, float %4301)  ; FMad(a,b,c)
  %4303 = fsub fast float %4302, %4296
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4306 = fsub fast float %4303, %4305
  %4307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.i32 %4307, 0
  %4309 = call i32 @dx.op.binary.i32(i32 40, i32 %4185, i32 %4308)  ; UMin(a,b)
  %4310 = mul i32 %4309, 36
  %4311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4310, i32 undef)  ; BufferLoad(srv,index,wot)
  %4312 = extractvalue %dx.types.ResRet.i32 %4311, 0
  %4313 = add i32 %4310, 4
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = fmul fast float %4315, %4207
  %4317 = fmul fast float %4315, %4209
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4319 = fadd fast float %4316, %4318
  %4320 = fadd fast float %4317, %4318
  %4321 = icmp eq i32 %4312, 0
  br i1 %4321, label %4390, label %4322

; <label>:4322                                    ; preds = %4253
  br label %4323

; <label>:4323                                    ; preds = %4380, %4322
  %4324 = phi float [ %4381, %4380 ], [ 0.000000e+00, %4322 ]
  %4325 = phi float [ %4382, %4380 ], [ 0.000000e+00, %4322 ]
  %4326 = phi float [ %4383, %4380 ], [ 0.000000e+00, %4322 ]
  %4327 = phi float [ %4384, %4380 ], [ 0.000000e+00, %4322 ]
  %4328 = phi float [ %4385, %4380 ], [ 0.000000e+00, %4322 ]
  %4329 = phi float [ %4386, %4380 ], [ 0.000000e+00, %4322 ]
  %4330 = phi i32 [ %4387, %4380 ], [ 0, %4322 ]
  %4331 = shl i32 %4330, 2
  %4332 = add i32 %4198, %4331
  %4333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = add i32 %4202, %4331
  %4336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.i32 %4336, 0
  %4338 = add i32 %4337, 0
  %4339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4338, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4340 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4339, i32 0)  ; GetDimensions(handle,mipLevel)
  %4341 = extractvalue %dx.types.Dimensions %4340, 0
  %4342 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4341)  ; FirstbitLo(value)
  %4343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.i32 %4343, 1
  %4345 = sub nsw i32 %4344, %4342
  %4346 = sitofp i32 %4345 to float
  %4347 = fsub fast float %4231, %4346
  %4348 = call float @dx.op.binary.f32(i32 35, float %4347, float 0.000000e+00)  ; FMax(a,b)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4339, %dx.types.Handle %27, float %4319, float %4320, float %4334, float undef, i32 0, i32 0, i32 undef, float %4348)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = fcmp fast ogt float %4350, 0.000000e+00
  br i1 %4351, label %4352, label %4380

; <label>:4352                                    ; preds = %4323
  %4353 = add i32 %4313, %4331
  %4354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.i32 %4354, 0
  %4356 = and i32 %4355, 32767
  %4357 = mul nuw nsw i32 %4356, 928
  %4358 = add nuw nsw i32 %4357, 48
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = add nuw nsw i32 %4357, 60
  %4364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  %4368 = fmul fast float %4360, %4350
  %4369 = fmul fast float %4361, %4350
  %4370 = fmul fast float %4362, %4350
  %4371 = fadd fast float %4368, %4324
  %4372 = fadd fast float %4369, %4325
  %4373 = fadd fast float %4370, %4326
  %4374 = fmul fast float %4365, %4350
  %4375 = fmul fast float %4366, %4350
  %4376 = fmul fast float %4367, %4350
  %4377 = fadd fast float %4374, %4327
  %4378 = fadd fast float %4375, %4328
  %4379 = fadd fast float %4376, %4329
  br label %4380

; <label>:4380                                    ; preds = %4352, %4323
  %4381 = phi float [ %4371, %4352 ], [ %4324, %4323 ]
  %4382 = phi float [ %4372, %4352 ], [ %4325, %4323 ]
  %4383 = phi float [ %4373, %4352 ], [ %4326, %4323 ]
  %4384 = phi float [ %4377, %4352 ], [ %4327, %4323 ]
  %4385 = phi float [ %4378, %4352 ], [ %4328, %4323 ]
  %4386 = phi float [ %4379, %4352 ], [ %4329, %4323 ]
  %4387 = add nuw i32 %4330, 1
  %4388 = icmp eq i32 %4387, %4312
  br i1 %4388, label %4389, label %4323

; <label>:4389                                    ; preds = %4380
  br label %4390

; <label>:4390                                    ; preds = %4389, %4253
  %4391 = phi float [ 0.000000e+00, %4253 ], [ %4381, %4389 ]
  %4392 = phi float [ 0.000000e+00, %4253 ], [ %4382, %4389 ]
  %4393 = phi float [ 0.000000e+00, %4253 ], [ %4383, %4389 ]
  %4394 = phi float [ 0.000000e+00, %4253 ], [ %4384, %4389 ]
  %4395 = phi float [ 0.000000e+00, %4253 ], [ %4385, %4389 ]
  %4396 = phi float [ 0.000000e+00, %4253 ], [ %4386, %4389 ]
  %4397 = fadd fast float %4394, %4391
  %4398 = fmul fast float %4397, 0x3F847AE140000000
  %4399 = fadd fast float %4395, %4392
  %4400 = fmul fast float %4399, 0x3F847AE140000000
  %4401 = fadd fast float %4396, %4393
  %4402 = fmul fast float %4401, 0x3F847AE140000000
  br label %4403

; <label>:4403                                    ; preds = %4390, %4187, %4132, %4129, %4100, %4062
  %4404 = phi float [ %4114, %4100 ], [ -1.310720e+05, %4062 ], [ %4306, %4390 ], [ -1.310720e+05, %4132 ], [ -1.310720e+05, %4187 ], [ -1.310720e+05, %4129 ]
  %4405 = phi float [ %4124, %4100 ], [ 0.000000e+00, %4062 ], [ %4398, %4390 ], [ 0.000000e+00, %4132 ], [ 0.000000e+00, %4187 ], [ 0.000000e+00, %4129 ]
  %4406 = phi float [ %4126, %4100 ], [ 0.000000e+00, %4062 ], [ %4400, %4390 ], [ 0.000000e+00, %4132 ], [ 0.000000e+00, %4187 ], [ 0.000000e+00, %4129 ]
  %4407 = phi float [ %4128, %4100 ], [ 0.000000e+00, %4062 ], [ %4402, %4390 ], [ 0.000000e+00, %4132 ], [ 0.000000e+00, %4187 ], [ 0.000000e+00, %4129 ]
  %4408 = phi i1 [ true, %4100 ], [ false, %4062 ], [ true, %4390 ], [ false, %4132 ], [ false, %4187 ], [ false, %4129 ]
  %4409 = and i32 %149, 3
  %4410 = icmp eq i32 %4409, 1
  %4411 = select i1 %4410, float 1.000000e+00, float 0.000000e+00
  %4412 = fsub fast float %4404, %133
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = select i1 %4408, float %4413, float 1.000000e+00
  %4415 = fmul fast float %4414, %4411
  %4416 = icmp eq i32 %4409, 3
  %4417 = select i1 %4416, float 1.000000e+00, float %4415
  %4418 = call float @dx.op.binary.f32(i32 35, float %4004, float %4417)  ; FMax(a,b)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fcmp fast une float %4419, 0.000000e+00
  %4421 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = call float @dx.op.unary.f32(i32 25, float %4421)  ; Rsqrt(value)
  br i1 %4420, label %4430, label %4423

; <label>:4423                                    ; preds = %4403
  %4424 = fmul fast float %4422, %131
  %4425 = fmul fast float %4422, %132
  %4426 = fmul fast float %4422, %133
  %4427 = fsub fast float -0.000000e+00, %4424
  %4428 = fsub fast float -0.000000e+00, %4425
  %4429 = fsub fast float -0.000000e+00, %4426
  br label %4598

; <label>:4430                                    ; preds = %4403
  %4431 = fmul fast float %131, %4422
  %4432 = fsub fast float -0.000000e+00, %4431
  %4433 = fmul fast float %132, %4422
  %4434 = fsub fast float -0.000000e+00, %4433
  %4435 = fmul fast float %133, %4422
  %4436 = fsub fast float -0.000000e+00, %4435
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4434, float %4436, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = fmul fast float %4419, 2.500000e+00
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4419, 0x4013FFFFE0000000
  %4441 = fadd fast float %4440, 0xBFFFFFFFE0000000
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4419, 0x4004000020000000
  %4444 = fadd fast float %4443, 0xBFF8000040000000
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4447 = fmul fast float %4008, 1.000000e+01
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fmul fast float %4448, 2.000000e+00
  %4450 = fsub fast float 3.000000e+00, %4449
  %4451 = fmul fast float %4448, %4448
  %4452 = fmul fast float %4451, %4450
  %4453 = fsub fast float 1.000000e+00, %4452
  %4454 = fsub fast float 0x3FE3333340000000, %4029
  %4455 = fmul fast float %4454, 0x400AAAAAA0000000
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fmul fast float %4453, %4456
  %4458 = fmul fast float %4041, 0x3FEA2B8620000000
  %4459 = fmul fast float %4042, 0x3FEA2B8620000000
  %4460 = fmul fast float %4043, 0x3FEA2B8620000000
  %4461 = fadd fast float %4458, 0x3FC81DFBA0000000
  %4462 = fmul fast float %4461, %4041
  %4463 = fadd fast float %4462, 0x3F910E6020000000
  %4464 = fadd fast float %4459, 0x3FC81DFBA0000000
  %4465 = fmul fast float %4464, %4042
  %4466 = fadd fast float %4465, 0x3F910E6020000000
  %4467 = fadd fast float %4460, 0x3FC81DFBA0000000
  %4468 = fmul fast float %4467, %4043
  %4469 = fadd fast float %4468, 0x3F910E6020000000
  %4470 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = fsub fast float %4470, %4041
  %4474 = fsub fast float %4471, %4042
  %4475 = fsub fast float %4472, %4043
  %4476 = fmul fast float %4473, %4446
  %4477 = fmul fast float %4476, %4457
  %4478 = fmul fast float %4474, %4446
  %4479 = fmul fast float %4478, %4457
  %4480 = fmul fast float %4475, %4446
  %4481 = fmul fast float %4480, %4457
  %4482 = fadd fast float %4477, %4041
  %4483 = fadd fast float %4479, %4042
  %4484 = fadd fast float %4481, %4043
  %4485 = fmul fast float %4001, %4001
  %4486 = fmul fast float %4485, %4485
  %4487 = fadd fast float %4442, 1.000000e+00
  %4488 = fsub fast float %4487, %4457
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fsub fast float 1.000000e+00, %4486
  %4493 = call float @dx.op.binary.f32(i32 36, float %4489, float %4492)  ; FMin(a,b)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4495 = call float @dx.op.binary.f32(i32 35, float %4493, float %4494)  ; FMax(a,b)
  %4496 = fadd fast float %4491, 0xBFE4CCCCC0000000
  %4497 = fmul fast float %4496, 0x4006DB6DA0000000
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = fmul fast float %4498, 2.000000e+00
  %4500 = fsub fast float 3.000000e+00, %4499
  %4501 = bitcast float %4026 to i32
  %4502 = ashr i32 %4501, 1
  %4503 = add nsw i32 %4502, 532487669
  %4504 = bitcast i32 %4503 to float
  %4505 = fsub fast float 1.000000e+00, %4504
  %4506 = bitcast float %4505 to i32
  %4507 = sub nsw i32 2129859010, %4506
  %4508 = bitcast i32 %4507 to float
  %4509 = fmul fast float %4508, 2.000000e+00
  %4510 = bitcast float %4027 to i32
  %4511 = ashr i32 %4510, 1
  %4512 = add nsw i32 %4511, 532487669
  %4513 = bitcast i32 %4512 to float
  %4514 = fsub fast float 1.000000e+00, %4513
  %4515 = bitcast float %4514 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4517, 2.000000e+00
  %4519 = bitcast float %4028 to i32
  %4520 = ashr i32 %4519, 1
  %4521 = add nsw i32 %4520, 532487669
  %4522 = bitcast i32 %4521 to float
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = bitcast float %4523 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = fmul fast float %4526, 2.000000e+00
  %4528 = fsub fast float 0x4002A9FBE0000000, %4509
  %4529 = fadd fast float %4509, 0x3FD54FDF00000000
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, %4528
  %4534 = fmul fast float %4533, %4533
  %4535 = fsub fast float 0x4002A9FBE0000000, %4518
  %4536 = fadd fast float %4518, 0x3FD54FDF00000000
  %4537 = bitcast float %4536 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = fmul fast float %4539, %4535
  %4541 = fmul fast float %4540, %4540
  %4542 = fsub fast float 0x4002A9FBE0000000, %4527
  %4543 = fadd fast float %4527, 0x3FD54FDF00000000
  %4544 = bitcast float %4543 to i32
  %4545 = sub nsw i32 2129859010, %4544
  %4546 = bitcast i32 %4545 to float
  %4547 = fmul fast float %4546, %4542
  %4548 = fmul fast float %4547, %4547
  %4549 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4534)  ; FMax(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4541)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4548)  ; FMax(a,b)
  %4552 = fsub fast float 1.000000e+00, %4437
  %4553 = fadd fast float %4552, %4453
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fsub fast float 1.000000e+00, %4417
  %4556 = fmul fast float %4495, %4555
  %4557 = fmul fast float %4498, %4498
  %4558 = fmul fast float %4557, %4556
  %4559 = fmul fast float %4558, %4500
  %4560 = fmul fast float %4555, 0xBFE99999A0000000
  %4561 = fmul fast float %4560, %4446
  %4562 = fmul fast float %4561, %4457
  %4563 = fadd fast float %4562, 1.000000e+00
  %4564 = fadd fast float %4029, -1.000000e+00
  %4565 = fmul fast float %4563, %4564
  %4566 = fadd fast float %4565, 1.000000e+00
  %4567 = fsub fast float %4549, %4026
  %4568 = fsub fast float %4550, %4027
  %4569 = fsub fast float %4551, %4028
  %4570 = fmul fast float %4559, %4567
  %4571 = fmul fast float %4559, %4568
  %4572 = fmul fast float %4559, %4569
  %4573 = fadd fast float %4570, %4026
  %4574 = fadd fast float %4571, %4027
  %4575 = fadd fast float %4572, %4028
  %4576 = fsub fast float %75, %3995
  %4577 = fsub fast float %76, %3996
  %4578 = fsub fast float %77, %3997
  %4579 = fmul fast float %4559, %4576
  %4580 = fmul fast float %4559, %4577
  %4581 = fmul fast float %4559, %4578
  %4582 = fadd fast float %4579, %3995
  %4583 = fadd fast float %4580, %3996
  %4584 = fadd fast float %4581, %3997
  %4585 = fmul fast float %4559, %4554
  %4586 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4587 = fsub fast float 1.000000e+00, %4586
  %4588 = fmul fast float %4585, %4587
  %4589 = fadd fast float %4588, %4586
  %4590 = fsub fast float 1.000000e+00, %4001
  %4591 = fmul fast float %4559, %4590
  %4592 = fadd fast float %4591, %4001
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4582, float %4583, float %4584, float %4582, float %4583, float %4584)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 25, float %4593)  ; Rsqrt(value)
  %4595 = fmul fast float %4582, %4594
  %4596 = fmul fast float %4583, %4594
  %4597 = fmul fast float %4584, %4594
  br label %4598

; <label>:4598                                    ; preds = %4430, %4423
  %4599 = phi float [ %4429, %4423 ], [ %4436, %4430 ]
  %4600 = phi float [ %4428, %4423 ], [ %4434, %4430 ]
  %4601 = phi float [ %4427, %4423 ], [ %4432, %4430 ]
  %4602 = phi float [ %4426, %4423 ], [ %4435, %4430 ]
  %4603 = phi float [ %4425, %4423 ], [ %4433, %4430 ]
  %4604 = phi float [ %4424, %4423 ], [ %4431, %4430 ]
  %4605 = phi float [ %4026, %4423 ], [ %4573, %4430 ]
  %4606 = phi float [ %4027, %4423 ], [ %4574, %4430 ]
  %4607 = phi float [ %4028, %4423 ], [ %4575, %4430 ]
  %4608 = phi float [ %4041, %4423 ], [ %4482, %4430 ]
  %4609 = phi float [ %4042, %4423 ], [ %4483, %4430 ]
  %4610 = phi float [ %4043, %4423 ], [ %4484, %4430 ]
  %4611 = phi float [ %3995, %4423 ], [ %4595, %4430 ]
  %4612 = phi float [ %3996, %4423 ], [ %4596, %4430 ]
  %4613 = phi float [ %3997, %4423 ], [ %4597, %4430 ]
  %4614 = phi float [ %4029, %4423 ], [ %4589, %4430 ]
  %4615 = phi float [ %4001, %4423 ], [ %4592, %4430 ]
  %4616 = select i1 %173, float 0.000000e+00, float %4607
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %4601, float %4600, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4603, float %4602, float %4611, float %4612, float %4613)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = fmul fast float %4619, 2.000000e+00
  %4621 = fmul fast float %4620, %4611
  %4622 = fmul fast float %4620, %4612
  %4623 = fmul fast float %4620, %4613
  %4624 = fsub fast float %4604, %4621
  %4625 = fsub fast float %4603, %4622
  %4626 = fsub fast float %4602, %4623
  %4627 = call float @dx.op.binary.f32(i32 36, float %4615, float 1.000000e+00)  ; FMin(a,b)
  %4628 = fsub fast float 1.000000e+00, %4615
  %4629 = bitcast float %4628 to i32
  %4630 = sub nsw i32 2129859010, %4629
  %4631 = bitcast i32 %4630 to float
  %4632 = fsub fast float 1.000000e+00, %45
  %4633 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = call float @dx.op.binary.f32(i32 35, float %4633, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4635 = fdiv fast float %4632, %4634
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fmul fast float %4637, 5.000000e-01
  %4639 = fadd fast float %4638, 5.000000e-01
  %4640 = fmul fast float %4639, %45
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fmul fast float %4642, %4635
  %4644 = fadd fast float %4640, %4643
  %4645 = fsub fast float 5.000000e-01, %4638
  %4646 = fmul fast float %4645, %4608
  %4647 = fmul fast float %4645, %4609
  %4648 = fmul fast float %4645, %4610
  %4649 = fadd fast float %4644, %4646
  %4650 = fadd fast float %4644, %4647
  %4651 = fadd fast float %4644, %4648
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = fmul fast float %4653, 5.000000e-01
  %4655 = fadd fast float %4654, 5.000000e-01
  %4656 = fmul fast float %4655, %45
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, %4635
  %4660 = fadd fast float %4656, %4659
  %4661 = fsub fast float 5.000000e-01, %4654
  %4662 = fmul fast float %4661, %4608
  %4663 = fmul fast float %4661, %4609
  %4664 = fmul fast float %4661, %4610
  %4665 = fadd fast float %4660, %4662
  %4666 = fadd fast float %4660, %4663
  %4667 = fadd fast float %4660, %4664
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = call float @dx.op.binary.f32(i32 36, float %4608, float %4669)  ; FMin(a,b)
  %4671 = fsub fast float 1.000000e+00, %4627
  %4672 = fmul fast float %4670, %4671
  %4673 = fsub fast float 1.000000e+00, %4672
  %4674 = bitcast float %4673 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = call float @dx.op.binary.f32(i32 36, float %4609, float %4669)  ; FMin(a,b)
  %4678 = fmul fast float %4677, %4671
  %4679 = fsub fast float 1.000000e+00, %4678
  %4680 = bitcast float %4679 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = bitcast i32 %4681 to float
  %4683 = call float @dx.op.binary.f32(i32 36, float %4610, float %4669)  ; FMin(a,b)
  %4684 = fmul fast float %4683, %4671
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4627, %46
  %4690 = fmul fast float %4689, %4649
  %4691 = fmul fast float %4690, %4676
  %4692 = fmul fast float %4627, %47
  %4693 = fmul fast float %4692, %4650
  %4694 = fmul fast float %4693, %4682
  %4695 = fmul fast float %4627, %48
  %4696 = fmul fast float %4695, %4651
  %4697 = fmul fast float %4696, %4688
  %4698 = call float @dx.op.binary.f32(i32 36, float %4605, float %4669)  ; FMin(a,b)
  %4699 = fmul fast float %4698, %4671
  %4700 = fsub fast float 1.000000e+00, %4699
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = call float @dx.op.binary.f32(i32 36, float %4606, float %4669)  ; FMin(a,b)
  %4705 = fmul fast float %4704, %4671
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = bitcast float %4706 to i32
  %4708 = sub nsw i32 2129859010, %4707
  %4709 = bitcast i32 %4708 to float
  %4710 = call float @dx.op.binary.f32(i32 36, float %4616, float %4669)  ; FMin(a,b)
  %4711 = fmul fast float %4710, %4671
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = bitcast float %4712 to i32
  %4714 = sub nsw i32 2129859010, %4713
  %4715 = bitcast i32 %4714 to float
  %4716 = fmul fast float %4689, %4665
  %4717 = fmul fast float %4716, %4703
  %4718 = fmul fast float %4692, %4666
  %4719 = fmul fast float %4718, %4709
  %4720 = fmul fast float %4695, %4667
  %4721 = fmul fast float %4720, %4715
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4694, float %4697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = select i1 %173, float 0.000000e+00, float %4691
  %4724 = select i1 %173, float %4722, float %4694
  %4725 = select i1 %173, float 0.000000e+00, float %4697
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4719, float %4721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = select i1 %173, float 0.000000e+00, float %4717
  %4728 = select i1 %173, float %4726, float %4719
  %4729 = select i1 %173, float 0.000000e+00, float %4721
  %4730 = fmul fast float %4618, 9.843750e-01
  %4731 = fmul fast float %4614, 9.843750e-01
  %4732 = fadd fast float %4730, 7.812500e-03
  %4733 = fadd fast float %4731, 7.812500e-03
  %4734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4732, float %4733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 2
  %4736 = extractvalue %dx.types.ResRet.f32 %4734, 3
  %4737 = fmul fast float %4735, %4605
  %4738 = fmul fast float %4735, %4606
  %4739 = fmul fast float %4735, %4616
  %4740 = fadd fast float %4737, %4736
  %4741 = fadd fast float %4738, %4736
  %4742 = fadd fast float %4739, %4736
  %4743 = fcmp fast ogt float %4002, 0.000000e+00
  br i1 %4743, label %4744, label %4770

; <label>:4744                                    ; preds = %4598
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4002, float %4618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.ResRet.f32 %4745, 1
  %4748 = extractvalue %dx.types.ResRet.f32 %4745, 2
  %4749 = fadd fast float %4746, -5.000000e-01
  %4750 = fadd fast float %4747, -5.000000e-01
  %4751 = fadd fast float %4748, -5.000000e-01
  %4752 = fsub fast float 1.000000e+00, %4605
  %4753 = fsub fast float 1.000000e+00, %4606
  %4754 = fsub fast float 1.000000e+00, %4616
  %4755 = fmul fast float %4605, 4.000000e+00
  %4756 = fmul fast float %4755, %4752
  %4757 = fmul fast float %4756, %4749
  %4758 = fmul fast float %4606, 4.000000e+00
  %4759 = fmul fast float %4758, %4753
  %4760 = fmul fast float %4759, %4750
  %4761 = fmul fast float %4616, 4.000000e+00
  %4762 = fmul fast float %4761, %4754
  %4763 = fmul fast float %4762, %4751
  %4764 = fadd fast float %4757, %4740
  %4765 = fadd fast float %4760, %4741
  %4766 = fadd fast float %4763, %4742
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  br label %4770

; <label>:4770                                    ; preds = %4744, %4598
  %4771 = phi float [ %4767, %4744 ], [ %4740, %4598 ]
  %4772 = phi float [ %4768, %4744 ], [ %4741, %4598 ]
  %4773 = phi float [ %4769, %4744 ], [ %4742, %4598 ]
  %4774 = call float @dx.op.binary.f32(i32 35, float %4772, float %4773)  ; FMax(a,b)
  %4775 = call float @dx.op.binary.f32(i32 35, float %4771, float %4774)  ; FMax(a,b)
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = fmul fast float %4776, %4723
  %4778 = fmul fast float %4776, %4724
  %4779 = fmul fast float %4776, %4725
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4609, float %4610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = fcmp fast ogt float %4780, 0x3E7FF19E20000000
  %4782 = fdiv fast float 1.000000e+00, %4780
  %4783 = select i1 %4781, float %4782, float 0.000000e+00
  %4784 = fmul fast float %4783, %4608
  %4785 = fmul fast float %4783, %4609
  %4786 = fmul fast float %4783, %4610
  %4787 = fadd fast float %4784, -1.000000e+00
  %4788 = fadd fast float %4785, -1.000000e+00
  %4789 = fadd fast float %4786, -1.000000e+00
  %4790 = fmul fast float %4787, 5.000000e-01
  %4791 = fmul fast float %4788, 5.000000e-01
  %4792 = fmul fast float %4789, 5.000000e-01
  %4793 = fadd fast float %4790, 1.000000e+00
  %4794 = fadd fast float %4791, 1.000000e+00
  %4795 = fadd fast float %4792, 1.000000e+00
  %4796 = fmul fast float %4771, %4727
  %4797 = fmul fast float %4772, %4728
  %4798 = fmul fast float %4773, %4729
  %4799 = fsub fast float 1.000000e+00, %4618
  %4800 = bitcast float %4799 to i32
  %4801 = sitofp i32 %4800 to float
  %4802 = fmul fast float %4801, 5.000000e+00
  %4803 = fadd fast float %4802, 0xC1EFBF8940000000
  %4804 = fptosi float %4803 to i32
  %4805 = bitcast i32 %4804 to float
  %4806 = fmul fast float %4805, %4003
  %4807 = fmul fast float %4723, %4806
  %4808 = fmul fast float %4807, %4776
  %4809 = fmul fast float %4808, %4793
  %4810 = fmul fast float %4724, %4806
  %4811 = fmul fast float %4810, %4776
  %4812 = fmul fast float %4811, %4794
  %4813 = fmul fast float %4725, %4806
  %4814 = fmul fast float %4813, %4776
  %4815 = fmul fast float %4814, %4795
  %4816 = fmul fast float %4777, %3999
  %4817 = fmul fast float %4778, %3999
  %4818 = fmul fast float %4779, %3999
  %4819 = fadd fast float %4796, %3992
  %4820 = fadd fast float %4819, %4809
  %4821 = fmul fast float %4820, %3999
  %4822 = fadd fast float %4797, %3993
  %4823 = fadd fast float %4822, %4812
  %4824 = fmul fast float %4823, %3999
  %4825 = fadd fast float %4798, %3994
  %4826 = fadd fast float %4825, %4815
  %4827 = fmul fast float %4826, %3999
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4830 = fcmp fast oeq float %4829, 0.000000e+00
  br i1 %4830, label %5058, label %4831

; <label>:4831                                    ; preds = %4770
  %4832 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4834 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 0
  %4841 = extractvalue %dx.types.CBufRet.f32 %4839, 1
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = select i1 %173, float %4840, float %4836
  %4844 = select i1 %173, float %4842, float %4837
  %4845 = select i1 %173, float %4841, float %4838
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4848 = fcmp fast une float %4847, 0.000000e+00
  br i1 %4848, label %4849, label %4866

; <label>:4849                                    ; preds = %4831
  %4850 = fptoui float %68 to i32
  %4851 = fptoui float %69 to i32
  %4852 = lshr i32 %4850, 4
  %4853 = lshr i32 %4851, 4
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fptoui float %4855 to i32
  %4857 = add i32 %4856, 15
  %4858 = lshr i32 %4857, 4
  %4859 = mul i32 %4858, %4853
  %4860 = add i32 %4859, %4852
  %4861 = shl i32 %4860, 3
  %4862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4861, i32 undef)  ; BufferLoad(srv,index,wot)
  %4863 = extractvalue %dx.types.ResRet.i32 %4862, 0
  %4864 = and i32 %4863, -268435456
  %4865 = icmp eq i32 %4864, -1342177280
  br i1 %4865, label %4876, label %4866

; <label>:4866                                    ; preds = %4849, %4831
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4870 = fmul fast float %4868, %68
  %4871 = fmul fast float %4869, %69
  %4872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4870, float %4871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  br label %4876

; <label>:4876                                    ; preds = %4866, %4849
  %4877 = phi float [ %4873, %4866 ], [ 0.000000e+00, %4849 ]
  %4878 = phi float [ %4874, %4866 ], [ 0.000000e+00, %4849 ]
  %4879 = phi float [ %4875, %4866 ], [ 0.000000e+00, %4849 ]
  %4880 = call float @dx.op.binary.f32(i32 36, float %4878, float %4879)  ; FMin(a,b)
  %4881 = call float @dx.op.binary.f32(i32 36, float %4877, float %4880)  ; FMin(a,b)
  %4882 = fcmp fast ogt float %4881, 0.000000e+00
  br i1 %4882, label %4883, label %5058, !dx.controlflow.hints !72

; <label>:4883                                    ; preds = %4876
  %4884 = fmul fast float %4877, %4843
  %4885 = fmul fast float %4878, %4844
  %4886 = fmul fast float %4879, %4845
  %4887 = fsub fast float %4832, %4604
  %4888 = fsub fast float %4833, %4603
  %4889 = fsub fast float %4834, %4602
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4888, float %4889, float %4887, float %4888, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.unary.f32(i32 25, float %4890)  ; Rsqrt(value)
  %4892 = fmul fast float %4891, %4887
  %4893 = fmul fast float %4891, %4888
  %4894 = fmul fast float %4891, %4889
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %4834, float %4611, float %4612, float %4613)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4600, float %4599, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4898 = fmul fast float %4897, %4897
  %4899 = fmul fast float %4898, %4631
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4900, %4897
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = fmul fast float %4902, %4902
  %4904 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4905 = fsub fast float 1.000000e+00, %4614
  %4906 = call float @dx.op.binary.f32(i32 35, float %4905, float 0x3F847AE140000000)  ; FMax(a,b)
  %4907 = fmul fast float %4906, %4906
  %4908 = fmul fast float %4907, %4907
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = fmul fast float %4618, %4618
  %4911 = fmul fast float %4910, %4909
  %4912 = fadd fast float %4911, %4908
  %4913 = bitcast float %4912 to i32
  %4914 = ashr i32 %4913, 1
  %4915 = add nsw i32 %4914, 532487669
  %4916 = bitcast i32 %4915 to float
  %4917 = fadd fast float %4916, %4618
  %4918 = fmul fast float %4908, %4903
  %4919 = fsub fast float 1.000000e+00, %4903
  %4920 = fadd fast float %4919, %4918
  %4921 = fmul fast float %4904, %4904
  %4922 = fmul fast float %4921, %4909
  %4923 = fadd fast float %4922, %4908
  %4924 = bitcast float %4923 to i32
  %4925 = ashr i32 %4924, 1
  %4926 = add nsw i32 %4925, 532487669
  %4927 = bitcast i32 %4926 to float
  %4928 = fadd fast float %4927, %4904
  %4929 = fmul fast float %4920, %4920
  %4930 = fmul fast float %4929, %4917
  %4931 = fmul fast float %4930, %4928
  %4932 = fdiv fast float 0x3FF0A00000000000, %4931
  %4933 = fmul fast float %4932, %4908
  %4934 = call float @dx.op.unary.f32(i32 6, float %4896)  ; FAbs(value)
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = bitcast float %4935 to i32
  %4937 = sitofp i32 %4936 to float
  %4938 = fmul fast float %4937, 5.000000e+00
  %4939 = fadd fast float %4938, 0xC1EFBF8940000000
  %4940 = fptosi float %4939 to i32
  %4941 = bitcast i32 %4940 to float
  %4942 = fsub fast float 1.000000e+00, %4605
  %4943 = fsub fast float 1.000000e+00, %4606
  %4944 = fsub fast float 1.000000e+00, %4616
  %4945 = fmul fast float %4941, %4942
  %4946 = fmul fast float %4941, %4943
  %4947 = fmul fast float %4941, %4944
  %4948 = fadd fast float %4945, %4605
  %4949 = fadd fast float %4946, %4606
  %4950 = fadd fast float %4947, %4616
  br i1 %4743, label %4951, label %4974

; <label>:4951                                    ; preds = %4883
  %4952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4002, float %4934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.ResRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.ResRet.f32 %4952, 2
  %4956 = fadd fast float %4953, -5.000000e-01
  %4957 = fadd fast float %4954, -5.000000e-01
  %4958 = fadd fast float %4955, -5.000000e-01
  %4959 = fmul fast float %4605, 4.000000e+00
  %4960 = fmul fast float %4959, %4942
  %4961 = fmul fast float %4960, %4956
  %4962 = fmul fast float %4606, 4.000000e+00
  %4963 = fmul fast float %4962, %4943
  %4964 = fmul fast float %4963, %4957
  %4965 = fmul fast float %4616, 4.000000e+00
  %4966 = fmul fast float %4965, %4944
  %4967 = fmul fast float %4966, %4958
  %4968 = fadd fast float %4961, %4948
  %4969 = fadd fast float %4964, %4949
  %4970 = fadd fast float %4967, %4950
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4972 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  br label %4974

; <label>:4974                                    ; preds = %4951, %4883
  %4975 = phi float [ %4971, %4951 ], [ %4948, %4883 ]
  %4976 = phi float [ %4972, %4951 ], [ %4949, %4883 ]
  %4977 = phi float [ %4973, %4951 ], [ %4950, %4883 ]
  %4978 = fmul fast float %4895, 9.843750e-01
  %4979 = fadd fast float %4978, 7.812500e-03
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4979, float %4733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 3
  %4983 = fmul fast float %4981, %4605
  %4984 = fmul fast float %4981, %4606
  %4985 = fmul fast float %4981, %4616
  %4986 = fadd fast float %4983, %4982
  %4987 = fadd fast float %4984, %4982
  %4988 = fadd fast float %4985, %4982
  br i1 %4743, label %4989, label %5012

; <label>:4989                                    ; preds = %4974
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4002, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = fadd fast float %4991, -5.000000e-01
  %4995 = fadd fast float %4992, -5.000000e-01
  %4996 = fadd fast float %4993, -5.000000e-01
  %4997 = fmul fast float %4605, 4.000000e+00
  %4998 = fmul fast float %4997, %4942
  %4999 = fmul fast float %4998, %4994
  %5000 = fmul fast float %4606, 4.000000e+00
  %5001 = fmul fast float %5000, %4943
  %5002 = fmul fast float %5001, %4995
  %5003 = fmul fast float %4616, 4.000000e+00
  %5004 = fmul fast float %5003, %4944
  %5005 = fmul fast float %5004, %4996
  %5006 = fadd fast float %4999, %4986
  %5007 = fadd fast float %5002, %4987
  %5008 = fadd fast float %5005, %4988
  %5009 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5010 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5011 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  br label %5012

; <label>:5012                                    ; preds = %4989, %4974
  %5013 = phi float [ %5009, %4989 ], [ %4986, %4974 ]
  %5014 = phi float [ %5010, %4989 ], [ %4987, %4974 ]
  %5015 = phi float [ %5011, %4989 ], [ %4988, %4974 ]
  %5016 = call float @dx.op.binary.f32(i32 35, float %5014, float %5015)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float %5013, float %5016)  ; FMax(a,b)
  %5018 = fsub fast float 1.000000e+00, %5017
  %5019 = fmul fast float %4975, %4933
  %5020 = fmul fast float %4976, %4933
  %5021 = fmul fast float %4977, %4933
  %5022 = fsub fast float 1.000000e+00, %4896
  %5023 = bitcast float %5022 to i32
  %5024 = sitofp i32 %5023 to float
  %5025 = fmul fast float %5024, 5.000000e+00
  %5026 = fadd fast float %5025, 0xC1EFBF8940000000
  %5027 = fptosi float %5026 to i32
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, %4003
  %5030 = fmul fast float %5018, %5029
  %5031 = fmul fast float %5030, %4793
  %5032 = fmul fast float %5030, %4794
  %5033 = fmul fast float %5030, %4795
  %5034 = fadd fast float %5031, %5019
  %5035 = fadd fast float %5032, %5020
  %5036 = fadd fast float %5033, %5021
  %5037 = fmul fast float %4901, %4884
  %5038 = fmul fast float %5037, %5018
  %5039 = fmul fast float %4901, %4885
  %5040 = fmul fast float %5039, %5018
  %5041 = fmul fast float %4901, %4886
  %5042 = fmul fast float %5041, %5018
  %5043 = fmul fast float %5037, %5034
  %5044 = fmul fast float %5039, %5035
  %5045 = fmul fast float %5041, %5036
  %5046 = fadd fast float %5038, %4777
  %5047 = fmul fast float %5046, %3999
  %5048 = fadd fast float %5040, %4778
  %5049 = fmul fast float %5048, %3999
  %5050 = fadd fast float %5042, %4779
  %5051 = fmul fast float %5050, %3999
  %5052 = fadd fast float %5043, %4820
  %5053 = fmul fast float %5052, %3999
  %5054 = fadd fast float %5044, %4823
  %5055 = fmul fast float %5054, %3999
  %5056 = fadd fast float %5045, %4826
  %5057 = fmul fast float %5056, %3999
  br label %5058

; <label>:5058                                    ; preds = %5012, %4876, %4770
  %5059 = phi float [ %4821, %4770 ], [ %4821, %4876 ], [ %5053, %5012 ]
  %5060 = phi float [ %4824, %4770 ], [ %4824, %4876 ], [ %5055, %5012 ]
  %5061 = phi float [ %4827, %4770 ], [ %4827, %4876 ], [ %5057, %5012 ]
  %5062 = phi float [ %4816, %4770 ], [ %4816, %4876 ], [ %5047, %5012 ]
  %5063 = phi float [ %4817, %4770 ], [ %4817, %4876 ], [ %5049, %5012 ]
  %5064 = phi float [ %4818, %4770 ], [ %4818, %4876 ], [ %5051, %5012 ]
  %5065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.i32 %5065, 0
  %5067 = icmp eq i32 %5066, 0
  br i1 %5067, label %5502, label %5068

; <label>:5068                                    ; preds = %5058
  %5069 = fptoui float %68 to i32
  %5070 = fptoui float %69 to i32
  %5071 = lshr i32 %5069, 4
  %5072 = lshr i32 %5070, 4
  %5073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.i32 %5073, 0
  %5075 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5072, i32 %5074, i32 %5071)  ; UMad(a,b,c)
  %5076 = add nsw i32 %5066, -1
  %5077 = call i32 @dx.op.binary.i32(i32 37, i32 %5076, i32 0)  ; IMax(a,b)
  %5078 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5079 = fptoui float %5078 to i32
  %5080 = lshr i32 %5079, 5
  %5081 = call i32 @dx.op.binary.i32(i32 40, i32 %5080, i32 8191)  ; UMin(a,b)
  %5082 = shl i32 %5081, 2
  %5083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = lshr i32 %5084, 16
  %5086 = and i32 %5084, 65535
  %5087 = lshr i32 %5084, 21
  %5088 = lshr i32 %5086, 5
  %5089 = call i32 @dx.op.binary.i32(i32 40, i32 %5088, i32 %5077)  ; UMin(a,b)
  %5090 = icmp ugt i32 %5087, %5089
  br i1 %5090, label %5502, label %5091

; <label>:5091                                    ; preds = %5068
  br label %5092

; <label>:5092                                    ; preds = %5492, %5091
  %5093 = phi i32 [ %5499, %5492 ], [ %5087, %5091 ]
  %5094 = phi float [ %5493, %5492 ], [ %5059, %5091 ]
  %5095 = phi float [ %5494, %5492 ], [ %5060, %5091 ]
  %5096 = phi float [ %5495, %5492 ], [ %5061, %5091 ]
  %5097 = phi float [ %5496, %5492 ], [ %5062, %5091 ]
  %5098 = phi float [ %5497, %5492 ], [ %5063, %5091 ]
  %5099 = phi float [ %5498, %5492 ], [ %5064, %5091 ]
  %5100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.i32 %5100, 0
  %5102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5075, i32 %5101, i32 %5093)  ; UMad(a,b,c)
  %5103 = shl i32 %5102, 2
  %5104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5103, i32 undef)  ; BufferLoad(srv,index,wot)
  %5105 = extractvalue %dx.types.ResRet.i32 %5104, 0
  %5106 = shl i32 %5093, 5
  %5107 = sub nsw i32 %5085, %5106
  %5108 = call i32 @dx.op.binary.i32(i32 37, i32 %5107, i32 0)  ; IMax(a,b)
  %5109 = call i32 @dx.op.binary.i32(i32 38, i32 %5108, i32 31)  ; IMin(a,b)
  %5110 = sub nsw i32 1, %5085
  %5111 = add nsw i32 %5110, %5086
  %5112 = call i32 @dx.op.binary.i32(i32 37, i32 %5111, i32 0)  ; IMax(a,b)
  %5113 = call i32 @dx.op.binary.i32(i32 38, i32 %5112, i32 32)  ; IMin(a,b)
  %5114 = and i32 %5113, 31
  %5115 = shl i32 -1, %5114
  %5116 = xor i32 %5115, -1
  %5117 = and i32 %5109, 31
  %5118 = shl i32 %5116, %5117
  %5119 = icmp eq i32 %5113, 32
  %5120 = select i1 %5119, i32 -1, i32 %5118
  %5121 = and i32 %5120, %5105
  %5122 = icmp eq i32 %5121, 0
  br i1 %5122, label %5492, label %5123

; <label>:5123                                    ; preds = %5092
  br label %5124

; <label>:5124                                    ; preds = %5204, %5123
  %5125 = phi i32 [ %5136, %5204 ], [ %5121, %5123 ]
  %5126 = phi float [ %5205, %5204 ], [ %5094, %5123 ]
  %5127 = phi float [ %5206, %5204 ], [ %5095, %5123 ]
  %5128 = phi float [ %5207, %5204 ], [ %5096, %5123 ]
  %5129 = phi float [ %5208, %5204 ], [ %5097, %5123 ]
  %5130 = phi float [ %5209, %5204 ], [ %5098, %5123 ]
  %5131 = phi float [ %5210, %5204 ], [ %5099, %5123 ]
  %5132 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5125)  ; FirstbitLo(value)
  %5133 = add i32 %5132, %5106
  %5134 = and i32 %5132, 31
  %5135 = shl i32 1, %5134
  %5136 = xor i32 %5135, %5125
  %5137 = mul i32 %5133, 112
  %5138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5137, i32 undef)  ; BufferLoad(srv,index,wot)
  %5139 = extractvalue %dx.types.ResRet.f32 %5138, 0
  %5140 = extractvalue %dx.types.ResRet.f32 %5138, 1
  %5141 = extractvalue %dx.types.ResRet.f32 %5138, 2
  %5142 = or i32 %5137, 12
  %5143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5142, i32 undef)  ; BufferLoad(srv,index,wot)
  %5144 = extractvalue %dx.types.ResRet.f32 %5143, 0
  %5145 = add i32 %5137, 44
  %5146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.f32 %5146, 0
  %5148 = add i32 %5137, 48
  %5149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5148, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.ResRet.f32 %5149, 2
  %5153 = add i32 %5137, 80
  %5154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5153, i32 undef)  ; BufferLoad(srv,index,wot)
  %5155 = extractvalue %dx.types.ResRet.f32 %5154, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5154, 2
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = select i1 %173, float %5155, float %5139
  %5159 = select i1 %173, float %5157, float %5140
  %5160 = select i1 %173, float %5156, float %5141
  %5161 = fsub fast float %5150, %131
  %5162 = fsub fast float %5151, %132
  %5163 = fsub fast float %5152, %133
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5163, float %5161, float %5162, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 24, float %5164)  ; Sqrt(value)
  %5166 = fdiv fast float 1.000000e+00, %5165
  %5167 = fmul fast float %5166, %5161
  %5168 = fmul fast float %5166, %5162
  %5169 = fmul fast float %5166, %5163
  %5170 = fadd fast float %5165, %5144
  %5171 = fdiv fast float 1.000000e+00, %5170
  %5172 = fmul float %5147, %5171
  %5173 = fmul float %5172, %5172
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = and i32 %5135, %5121
  %5176 = icmp eq i32 %5175, 0
  br i1 %5176, label %5199, label %5177, !dx.controlflow.hints !73

; <label>:5177                                    ; preds = %5124
  %5178 = lshr i32 %5069, 5
  %5179 = lshr i32 %5070, 5
  %5180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5178, i32 %5179, i32 %5133, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = and i32 %5181, 3
  %5183 = icmp eq i32 %5182, 0
  %5184 = select i1 %5183, float 1.000000e+00, float 0.000000e+00
  %5185 = icmp eq i32 %5182, 3
  br i1 %5185, label %5186, label %5199

; <label>:5186                                    ; preds = %5177
  %5187 = lshr i32 %5181, 10
  %5188 = and i32 %5187, 8160
  %5189 = and i32 %5070, 31
  %5190 = or i32 %5188, %5189
  %5191 = lshr i32 %5181, 1
  %5192 = and i32 %5191, 16352
  %5193 = and i32 %5069, 31
  %5194 = or i32 %5192, %5193
  %5195 = lshr i32 %5181, 23
  %5196 = and i32 %5195, 255
  %5197 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5194, i32 %5190, i32 %5196, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  br label %5199

; <label>:5199                                    ; preds = %5186, %5177, %5124
  %5200 = phi float [ %5198, %5186 ], [ %5184, %5177 ], [ 0.000000e+00, %5124 ]
  %5201 = call float @dx.op.binary.f32(i32 36, float %5200, float %5200)  ; FMin(a,b)
  %5202 = call float @dx.op.binary.f32(i32 36, float %5200, float %5201)  ; FMin(a,b)
  %5203 = fcmp fast ogt float %5202, 0.000000e+00
  br i1 %5203, label %5212, label %5204, !dx.controlflow.hints !74

; <label>:5204                                    ; preds = %5448, %5199
  %5205 = phi float [ %5126, %5199 ], [ %5488, %5448 ]
  %5206 = phi float [ %5127, %5199 ], [ %5489, %5448 ]
  %5207 = phi float [ %5128, %5199 ], [ %5490, %5448 ]
  %5208 = phi float [ %5129, %5199 ], [ %5482, %5448 ]
  %5209 = phi float [ %5130, %5199 ], [ %5483, %5448 ]
  %5210 = phi float [ %5131, %5199 ], [ %5484, %5448 ]
  %5211 = icmp eq i32 %5125, %5135
  br i1 %5211, label %5491, label %5124

; <label>:5212                                    ; preds = %5199
  %5213 = fmul fast float %5200, %5158
  %5214 = fmul fast float %5200, %5159
  %5215 = fmul fast float %5200, %5160
  %5216 = fsub fast float %5152, %4404
  %5217 = fcmp fast ogt float %5216, 0.000000e+00
  %5218 = fsub fast float %133, %4404
  %5219 = fcmp fast ogt float %5218, 0.000000e+00
  %5220 = xor i1 %5219, %5217
  %5221 = fsub fast float %4404, %5152
  %5222 = fmul fast float %5221, 2.000000e+00
  %5223 = fadd fast float %5222, %5152
  %5224 = select i1 %5220, float %5152, float %5223
  %5225 = fsub fast float %5224, %133
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5225, float %5161, float %5162, float %5225)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = call float @dx.op.unary.f32(i32 25, float %5226)  ; Rsqrt(value)
  %5228 = fmul fast float %5227, %5161
  %5229 = fmul fast float %5227, %5162
  %5230 = fmul fast float %5227, %5225
  %5231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4412)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5228, float %5229, float %5230)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = fdiv fast float 1.000000e+00, %5232
  %5234 = fmul fast float %5233, %5231
  %5235 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5218, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fcmp fast ogt float %5235, 0.000000e+00
  %5237 = fcmp fast olt float %5235, 0.000000e+00
  %5238 = zext i1 %5236 to i32
  %5239 = zext i1 %5237 to i32
  %5240 = sub nsw i32 %5238, %5239
  %5241 = sitofp i32 %5240 to float
  %5242 = fsub fast float %5224, %4404
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5242, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = fcmp fast ogt float %5243, 0.000000e+00
  %5245 = fcmp fast olt float %5243, 0.000000e+00
  %5246 = zext i1 %5244 to i32
  %5247 = zext i1 %5245 to i32
  %5248 = sub nsw i32 %5246, %5247
  %5249 = sitofp i32 %5248 to float
  %5250 = fcmp fast une float %5241, %5249
  br i1 %5250, label %5251, label %5261

; <label>:5251                                    ; preds = %5212
  %5252 = fmul fast float %5234, %5230
  %5253 = fmul fast float %5234, %5229
  %5254 = fmul fast float %5234, %5228
  %5255 = fmul fast float %5254, %5254
  %5256 = fmul fast float %5253, %5253
  %5257 = fadd fast float %5255, %5256
  %5258 = fmul fast float %5252, %5252
  %5259 = fadd fast float %5257, %5258
  %5260 = call float @dx.op.unary.f32(i32 24, float %5259)  ; Sqrt(value)
  br label %5273

; <label>:5261                                    ; preds = %5212
  %5262 = icmp slt i32 %5240, 0
  br i1 %5262, label %5263, label %5273

; <label>:5263                                    ; preds = %5261
  %5264 = fsub fast float %131, %5150
  %5265 = fsub fast float %132, %5151
  %5266 = fsub fast float %133, %5224
  %5267 = fmul fast float %5264, %5264
  %5268 = fmul fast float %5265, %5265
  %5269 = fadd fast float %5267, %5268
  %5270 = fmul fast float %5266, %5266
  %5271 = fadd fast float %5269, %5270
  %5272 = call float @dx.op.unary.f32(i32 24, float %5271)  ; Sqrt(value)
  br label %5273

; <label>:5273                                    ; preds = %5263, %5261, %5251
  %5274 = phi float [ %5260, %5251 ], [ %5272, %5263 ], [ 0.000000e+00, %5261 ]
  %5275 = and i1 %5219, %5217
  %5276 = fsub fast float -0.000000e+00, %5274
  %5277 = select i1 %5275, float -0.000000e+00, float %5276
  %5278 = fmul fast float %4405, 0x3FF7154760000000
  %5279 = fmul fast float %5278, %5277
  %5280 = fmul fast float %4406, 0x3FF7154760000000
  %5281 = fmul fast float %5280, %5277
  %5282 = fmul fast float %4407, 0x3FF7154760000000
  %5283 = fmul fast float %5282, %5277
  %5284 = call float @dx.op.unary.f32(i32 21, float %5279)  ; Exp(value)
  %5285 = call float @dx.op.unary.f32(i32 21, float %5281)  ; Exp(value)
  %5286 = call float @dx.op.unary.f32(i32 21, float %5283)  ; Exp(value)
  %5287 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5290 = fmul fast float %5213, %5287
  %5291 = fmul fast float %5214, %5288
  %5292 = fmul fast float %5215, %5289
  %5293 = fsub fast float %5167, %4604
  %5294 = fsub fast float %5168, %4603
  %5295 = fsub fast float %5169, %4602
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5293, float %5294, float %5295, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = call float @dx.op.unary.f32(i32 25, float %5296)  ; Rsqrt(value)
  %5298 = fmul fast float %5297, %5293
  %5299 = fmul fast float %5297, %5294
  %5300 = fmul fast float %5297, %5295
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %4611, float %4612, float %4613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = call float @dx.op.dot3.f32(i32 55, float %4601, float %4600, float %4599, float %5298, float %5299, float %5300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5304 = fmul fast float %5303, %5174
  %5305 = fmul fast float %5303, %5303
  %5306 = fmul fast float %5305, %4631
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %5304, %5307
  %5309 = bitcast float %5164 to i32
  %5310 = ashr i32 %5309, 1
  %5311 = sub nsw i32 1597463007, %5310
  %5312 = bitcast i32 %5311 to float
  %5313 = fmul fast float %5312, %5161
  %5314 = fmul fast float %5312, %5162
  %5315 = fmul fast float %5312, %5163
  %5316 = fsub fast float %5313, %4604
  %5317 = fsub fast float %5314, %4603
  %5318 = fsub fast float %5315, %4602
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float %5316, float %5317, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 25, float %5319)  ; Rsqrt(value)
  %5321 = fmul fast float %5316, %5320
  %5322 = fmul fast float %5317, %5320
  %5323 = fmul fast float %5318, %5320
  %5324 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = fmul fast float %5324, %5324
  %5326 = call float @dx.op.unary.f32(i32 6, float %5301)  ; FAbs(value)
  %5327 = fsub fast float 1.000000e+00, %4614
  %5328 = call float @dx.op.binary.f32(i32 35, float %5327, float 0x3F847AE140000000)  ; FMax(a,b)
  %5329 = fmul fast float %5328, %5328
  %5330 = fmul fast float %5329, %5329
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %4618, %4618
  %5333 = fmul fast float %5332, %5331
  %5334 = fadd fast float %5333, %5330
  %5335 = bitcast float %5334 to i32
  %5336 = ashr i32 %5335, 1
  %5337 = add nsw i32 %5336, 532487669
  %5338 = bitcast i32 %5337 to float
  %5339 = fadd fast float %5338, %4618
  %5340 = fmul fast float %5330, %5325
  %5341 = fsub fast float 1.000000e+00, %5325
  %5342 = fadd fast float %5341, %5340
  %5343 = fmul fast float %5326, %5326
  %5344 = fmul fast float %5343, %5331
  %5345 = fadd fast float %5344, %5330
  %5346 = bitcast float %5345 to i32
  %5347 = ashr i32 %5346, 1
  %5348 = add nsw i32 %5347, 532487669
  %5349 = bitcast i32 %5348 to float
  %5350 = fadd fast float %5349, %5326
  %5351 = fmul fast float %5342, %5342
  %5352 = fmul fast float %5351, %5339
  %5353 = fmul fast float %5352, %5350
  %5354 = fdiv fast float 1.000000e+00, %5353
  %5355 = bitcast float %5330 to i32
  %5356 = sitofp i32 %5355 to float
  %5357 = fmul fast float %5356, 0x3FE7F73180000000
  %5358 = fadd fast float %5357, 0x41AFE27C40000000
  %5359 = fptosi float %5358 to i32
  %5360 = bitcast i32 %5359 to float
  %5361 = fmul fast float %5147, 0x3FD80E9D60000000
  %5362 = fmul fast float %5361, %5312
  %5363 = fadd fast float %5360, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5330, %5354
  %5368 = fmul fast float %5367, %5360
  %5369 = fmul fast float %5368, %5366
  %5370 = call float @dx.op.unary.f32(i32 6, float %5302)  ; FAbs(value)
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = bitcast float %5371 to i32
  %5373 = sitofp i32 %5372 to float
  %5374 = fmul fast float %5373, 5.000000e+00
  %5375 = fadd fast float %5374, 0xC1EFBF8940000000
  %5376 = fptosi float %5375 to i32
  %5377 = bitcast i32 %5376 to float
  %5378 = fsub fast float 1.000000e+00, %4605
  %5379 = fsub fast float 1.000000e+00, %4606
  %5380 = fsub fast float 1.000000e+00, %4616
  %5381 = fmul fast float %5377, %5378
  %5382 = fmul fast float %5377, %5379
  %5383 = fmul fast float %5377, %5380
  %5384 = fadd fast float %5381, %4605
  %5385 = fadd fast float %5382, %4606
  %5386 = fadd fast float %5383, %4616
  br i1 %4743, label %5387, label %5410

; <label>:5387                                    ; preds = %5273
  %5388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4002, float %5370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = fadd fast float %5389, -5.000000e-01
  %5393 = fadd fast float %5390, -5.000000e-01
  %5394 = fadd fast float %5391, -5.000000e-01
  %5395 = fmul fast float %4605, 4.000000e+00
  %5396 = fmul fast float %5395, %5378
  %5397 = fmul fast float %5396, %5392
  %5398 = fmul fast float %4606, 4.000000e+00
  %5399 = fmul fast float %5398, %5379
  %5400 = fmul fast float %5399, %5393
  %5401 = fmul fast float %4616, 4.000000e+00
  %5402 = fmul fast float %5401, %5380
  %5403 = fmul fast float %5402, %5394
  %5404 = fadd fast float %5397, %5384
  %5405 = fadd fast float %5400, %5385
  %5406 = fadd fast float %5403, %5386
  %5407 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5408 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  br label %5410

; <label>:5410                                    ; preds = %5387, %5273
  %5411 = phi float [ %5407, %5387 ], [ %5384, %5273 ]
  %5412 = phi float [ %5408, %5387 ], [ %5385, %5273 ]
  %5413 = phi float [ %5409, %5387 ], [ %5386, %5273 ]
  %5414 = fmul fast float %5301, 9.843750e-01
  %5415 = fadd fast float %5414, 7.812500e-03
  %5416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5415, float %4733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 2
  %5418 = extractvalue %dx.types.ResRet.f32 %5416, 3
  %5419 = fmul fast float %5417, %4605
  %5420 = fmul fast float %5417, %4606
  %5421 = fmul fast float %5417, %4616
  %5422 = fadd fast float %5419, %5418
  %5423 = fadd fast float %5420, %5418
  %5424 = fadd fast float %5421, %5418
  br i1 %4743, label %5425, label %5448

; <label>:5425                                    ; preds = %5410
  %5426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4002, float %5301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.ResRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.ResRet.f32 %5426, 2
  %5430 = fadd fast float %5427, -5.000000e-01
  %5431 = fadd fast float %5428, -5.000000e-01
  %5432 = fadd fast float %5429, -5.000000e-01
  %5433 = fmul fast float %4605, 4.000000e+00
  %5434 = fmul fast float %5433, %5378
  %5435 = fmul fast float %5434, %5430
  %5436 = fmul fast float %4606, 4.000000e+00
  %5437 = fmul fast float %5436, %5379
  %5438 = fmul fast float %5437, %5431
  %5439 = fmul fast float %4616, 4.000000e+00
  %5440 = fmul fast float %5439, %5380
  %5441 = fmul fast float %5440, %5432
  %5442 = fadd fast float %5435, %5422
  %5443 = fadd fast float %5438, %5423
  %5444 = fadd fast float %5441, %5424
  %5445 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  br label %5448

; <label>:5448                                    ; preds = %5425, %5410
  %5449 = phi float [ %5445, %5425 ], [ %5422, %5410 ]
  %5450 = phi float [ %5446, %5425 ], [ %5423, %5410 ]
  %5451 = phi float [ %5447, %5425 ], [ %5424, %5410 ]
  %5452 = call float @dx.op.binary.f32(i32 35, float %5450, float %5451)  ; FMax(a,b)
  %5453 = call float @dx.op.binary.f32(i32 35, float %5449, float %5452)  ; FMax(a,b)
  %5454 = fsub fast float 1.000000e+00, %5453
  %5455 = fmul fast float %5411, %5369
  %5456 = fmul fast float %5412, %5369
  %5457 = fmul fast float %5413, %5369
  %5458 = fsub fast float 1.000000e+00, %5302
  %5459 = bitcast float %5458 to i32
  %5460 = sitofp i32 %5459 to float
  %5461 = fmul fast float %5460, 5.000000e+00
  %5462 = fadd fast float %5461, 0xC1EFBF8940000000
  %5463 = fptosi float %5462 to i32
  %5464 = bitcast i32 %5463 to float
  %5465 = fmul fast float %5464, %4003
  %5466 = fmul fast float %5454, %5465
  %5467 = fmul fast float %5466, %4793
  %5468 = fmul fast float %5466, %4794
  %5469 = fmul fast float %5466, %4795
  %5470 = fadd fast float %5467, %5455
  %5471 = fadd fast float %5468, %5456
  %5472 = fadd fast float %5469, %5457
  %5473 = fmul fast float %5290, %3999
  %5474 = fmul fast float %5473, %5308
  %5475 = fmul fast float %5474, %5454
  %5476 = fmul fast float %5291, %3999
  %5477 = fmul fast float %5476, %5308
  %5478 = fmul fast float %5477, %5454
  %5479 = fmul fast float %5292, %3999
  %5480 = fmul fast float %5479, %5308
  %5481 = fmul fast float %5480, %5454
  %5482 = fadd fast float %5475, %5129
  %5483 = fadd fast float %5478, %5130
  %5484 = fadd fast float %5481, %5131
  %5485 = fmul fast float %5474, %5470
  %5486 = fmul fast float %5477, %5471
  %5487 = fmul fast float %5480, %5472
  %5488 = fadd fast float %5485, %5126
  %5489 = fadd fast float %5486, %5127
  %5490 = fadd fast float %5487, %5128
  br label %5204

; <label>:5491                                    ; preds = %5204
  br label %5492

; <label>:5492                                    ; preds = %5491, %5092
  %5493 = phi float [ %5094, %5092 ], [ %5205, %5491 ]
  %5494 = phi float [ %5095, %5092 ], [ %5206, %5491 ]
  %5495 = phi float [ %5096, %5092 ], [ %5207, %5491 ]
  %5496 = phi float [ %5097, %5092 ], [ %5208, %5491 ]
  %5497 = phi float [ %5098, %5092 ], [ %5209, %5491 ]
  %5498 = phi float [ %5099, %5092 ], [ %5210, %5491 ]
  %5499 = add i32 %5093, 1
  %5500 = icmp ugt i32 %5499, %5089
  br i1 %5500, label %5501, label %5092

; <label>:5501                                    ; preds = %5492
  br label %5502

; <label>:5502                                    ; preds = %5501, %5068, %5058
  %5503 = phi float [ %5059, %5058 ], [ %5059, %5068 ], [ %5493, %5501 ]
  %5504 = phi float [ %5060, %5058 ], [ %5060, %5068 ], [ %5494, %5501 ]
  %5505 = phi float [ %5061, %5058 ], [ %5061, %5068 ], [ %5495, %5501 ]
  %5506 = phi float [ %5062, %5058 ], [ %5062, %5068 ], [ %5496, %5501 ]
  %5507 = phi float [ %5063, %5058 ], [ %5063, %5068 ], [ %5497, %5501 ]
  %5508 = phi float [ %5064, %5058 ], [ %5064, %5068 ], [ %5498, %5501 ]
  %5509 = call float @dx.op.unary.f32(i32 24, float %4608)  ; Sqrt(value)
  %5510 = call float @dx.op.unary.f32(i32 24, float %4609)  ; Sqrt(value)
  %5511 = call float @dx.op.unary.f32(i32 24, float %4610)  ; Sqrt(value)
  %5512 = fmul fast float %5509, %5506
  %5513 = fmul fast float %5510, %5507
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  br i1 %173, label %5516, label %5545

; <label>:5516                                    ; preds = %5502
  %5517 = fadd fast float %5508, %4005
  %5518 = fmul fast float %5517, %4007
  %5519 = fsub fast float 1.000000e+00, %4007
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 3
  %5523 = fmul fast float %5522, %5520
  %5524 = fadd fast float %5523, %5518
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = fmul fast float %5526, %4799
  %5528 = fsub fast float %5524, %5527
  %5529 = fadd fast float %5513, %5512
  %5530 = fmul fast float %5515, %5529
  %5531 = extractvalue %dx.types.CBufRet.f32 %5521, 1
  %5532 = fsub fast float %5528, %5531
  %5533 = extractvalue %dx.types.CBufRet.f32 %5521, 2
  %5534 = fmul fast float %5532, %5533
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = fsub fast float %5535, %5537
  %5539 = fmul fast float %5538, 1.000000e+01
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = fadd fast float %4006, -1.000000e+00
  %5542 = fmul fast float %5540, %5541
  %5543 = fadd fast float %5542, 1.000000e+00
  %5544 = fmul fast float %5543, %5535
  br label %5561

; <label>:5545                                    ; preds = %5502
  %5546 = fmul fast float %5511, %5508
  %5547 = fmul fast float %5515, %5512
  %5548 = fmul fast float %5515, %5513
  %5549 = fmul fast float %5546, %5515
  %5550 = add i32 %33, 356
  %5551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.i32 %5551, 0
  %5553 = and i32 %5552, 32
  %5554 = icmp eq i32 %5553, 0
  br i1 %5554, label %5561, label %5555

; <label>:5555                                    ; preds = %5545
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = fmul fast float %5557, 0x3FE99999A0000000
  %5559 = fadd fast float %5557, %5547
  %5560 = fadd fast float %5558, %5549
  br label %5561

; <label>:5561                                    ; preds = %5555, %5545, %5516
  %5562 = phi float [ %5530, %5516 ], [ %5559, %5555 ], [ %5547, %5545 ]
  %5563 = phi float [ %5544, %5516 ], [ %5548, %5555 ], [ %5548, %5545 ]
  %5564 = phi float [ %5543, %5516 ], [ %5560, %5555 ], [ %5549, %5545 ]
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 0
  %5567 = fmul fast float %5566, %5504
  %5568 = fmul fast float %5566, %5505
  %5569 = fadd fast float %5504, %5503
  %5570 = select i1 %173, float %5569, float %5503
  %5571 = fmul float %5570, %5566
  %5572 = select i1 %173, float 0.000000e+00, float %5567
  %5573 = select i1 %173, float 0.000000e+00, float %5568
  %5574 = fmul fast float %5562, %5509
  %5575 = fmul fast float %5563, %5510
  %5576 = fmul fast float %5564, %5511
  %5577 = fadd fast float %5571, %5574
  %5578 = fadd fast float %5572, %5575
  %5579 = fadd fast float %5573, %5576
  %5580 = select i1 %173, float %5563, float %5578
  %5581 = select i1 %173, float %5564, float %5579
  %5582 = call float @dx.op.binary.f32(i32 36, float %5577, float 3.225500e+04)  ; FMin(a,b)
  %5583 = call float @dx.op.binary.f32(i32 36, float %5580, float 3.225500e+04)  ; FMin(a,b)
  %5584 = call float @dx.op.binary.f32(i32 36, float %5581, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5583)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

