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
; shader hash: cdaffc3733c1acfdfc95162a3c138ea7
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
  %356 = add i32 %33, 488
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
  %514 = add i32 %33, 360
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
  %537 = add i32 %33, 440
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
  %735 = add i32 %33, 376
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
  %819 = add i32 %33, 392
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
  %867 = add i32 %33, 472
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
  br i1 %346, label %1891, label %912

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
  br i1 %921, label %1891, label %922

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
  %1141 = add i32 %33, 428
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
  %1193 = add i32 %33, 412
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
  br i1 %1210, label %1891, label %1211

; <label>:1211                                    ; preds = %1208
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 16
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1414, label %1216

; <label>:1216                                    ; preds = %1211
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %33, 364
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
  %1242 = add i32 %33, 444
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
  %1440 = add i32 %33, 380
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
  %1524 = add i32 %33, 396
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
  %1562 = and i32 %1561, 1024
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1594, label %1564

; <label>:1564                                    ; preds = %1556
  %1565 = add i32 %33, 168
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = lshr i32 %1567, 8
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = lshr i32 %1567, 16
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101020000000
  %1579 = fmul fast float %1570, %1570
  %1580 = fmul fast float %1574, %1574
  %1581 = fmul fast float %1578, %1578
  %1582 = add i32 %33, 460
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = add i32 %1584, 0
  %1586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1586, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.ResRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.ResRet.f32 %1587, 2
  %1591 = fmul fast float %1579, %1588
  %1592 = fmul fast float %1580, %1589
  %1593 = fmul fast float %1581, %1590
  br label %1594

; <label>:1594                                    ; preds = %1564, %1556
  %1595 = phi float [ %1591, %1564 ], [ 0.000000e+00, %1556 ]
  %1596 = phi float [ %1592, %1564 ], [ 0.000000e+00, %1556 ]
  %1597 = phi float [ %1593, %1564 ], [ 0.000000e+00, %1556 ]
  %1598 = fcmp fast ogt float %1595, 0.000000e+00
  %1599 = fcmp fast ogt float %1596, 0.000000e+00
  %1600 = fcmp fast ogt float %1597, 0.000000e+00
  %1601 = call float @dx.op.unary.f32(i32 23, float %1595)  ; Log(value)
  %1602 = call float @dx.op.unary.f32(i32 23, float %1596)  ; Log(value)
  %1603 = call float @dx.op.unary.f32(i32 23, float %1597)  ; Log(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 7
  %1607 = and i32 %1606, 32752
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = fmul fast float %1601, 0xBFE62E4300000000
  %1610 = fmul fast float %1609, %1608
  %1611 = fmul fast float %1602, 0xBFE62E4300000000
  %1612 = fmul fast float %1611, %1608
  %1613 = fmul fast float %1603, 0xBFE62E4300000000
  %1614 = fmul fast float %1613, %1608
  %1615 = select i1 %1598, float %1610, float 1.270000e+02
  %1616 = select i1 %1599, float %1612, float 1.270000e+02
  %1617 = select i1 %1600, float %1614, float 1.270000e+02
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 26624
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1658, label %1622

; <label>:1622                                    ; preds = %1594
  %1623 = add i32 %33, 476
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = add i32 %1625, 0
  %1627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1627, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 1048576
  %1633 = icmp ne i32 %1632, 0
  %1634 = and i32 %1631, 2048
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1645, label %1636

; <label>:1636                                    ; preds = %1622
  %1637 = extractvalue %dx.types.ResRet.f32 %1628, 3
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = shl i32 %1639, 4
  %1641 = and i32 %1640, 32752
  %1642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1641)  ; LegacyF16ToF32(value)
  %1643 = fmul fast float %1642, %1637
  %1644 = call float @dx.op.binary.f32(i32 35, float %1643, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1645

; <label>:1645                                    ; preds = %1636, %1622
  %1646 = phi float [ %1644, %1636 ], [ 0x3F70101020000000, %1622 ]
  %1647 = and i32 %1631, 16384
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1658, label %1649

; <label>:1649                                    ; preds = %1645
  %1650 = add i32 %33, 112
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = lshr i32 %1652, 24
  %1654 = uitofp i32 %1653 to float
  %1655 = fmul fast float %1629, 0x3F70101020000000
  %1656 = select i1 %1633, float 0x3F70101020000000, float %1655
  %1657 = fmul fast float %1656, %1654
  br label %1658

; <label>:1658                                    ; preds = %1649, %1645, %1594
  %1659 = phi float [ %1646, %1649 ], [ %1646, %1645 ], [ 0x3F70101020000000, %1594 ]
  %1660 = phi float [ %1657, %1649 ], [ 0.000000e+00, %1645 ], [ 0.000000e+00, %1594 ]
  %1661 = add i32 %33, 112
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 255
  %1665 = uitofp i32 %1664 to float
  %1666 = lshr i32 %1663, 8
  %1667 = and i32 %1666, 255
  %1668 = uitofp i32 %1667 to float
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = fmul fast float %1668, %1669
  %1671 = fadd fast float %1670, %1665
  %1672 = fmul fast float %1671, 0x3F70101020000000
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  br i1 %913, label %1674, label %1709

; <label>:1674                                    ; preds = %1658
  %1675 = fmul fast float %1659, 2.000000e+00
  %1676 = fcmp fast olt float %1615, 1.270000e+02
  %1677 = fcmp fast olt float %1616, 1.270000e+02
  %1678 = fcmp fast olt float %1617, 1.270000e+02
  %1679 = fmul fast float %1615, 0xBFF7154760000000
  %1680 = fmul fast float %1679, %1675
  %1681 = fmul fast float %1616, 0xBFF7154760000000
  %1682 = fmul fast float %1681, %1675
  %1683 = fmul fast float %1617, 0xBFF7154760000000
  %1684 = fmul fast float %1683, %1675
  %1685 = call float @dx.op.unary.f32(i32 21, float %1680)  ; Exp(value)
  %1686 = call float @dx.op.unary.f32(i32 21, float %1682)  ; Exp(value)
  %1687 = call float @dx.op.unary.f32(i32 21, float %1684)  ; Exp(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1689 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1691 = fadd fast float %1688, -1.000000e+00
  %1692 = select i1 %1676, float %1691, float -1.000000e+00
  %1693 = fadd fast float %1689, -1.000000e+00
  %1694 = select i1 %1677, float %1693, float -1.000000e+00
  %1695 = fadd fast float %1690, -1.000000e+00
  %1696 = select i1 %1678, float %1695, float -1.000000e+00
  %1697 = fmul fast float %1692, %1209
  %1698 = fmul fast float %1694, %1209
  %1699 = fmul fast float %1696, %1209
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fadd fast float %1698, 1.000000e+00
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fmul fast float %1700, %900
  %1704 = fmul fast float %1701, %901
  %1705 = fmul fast float %1702, %902
  %1706 = fmul fast float %1700, %903
  %1707 = fmul fast float %1701, %904
  %1708 = fmul fast float %1702, %905
  br label %1709

; <label>:1709                                    ; preds = %1674, %1658
  %1710 = phi float [ %1703, %1674 ], [ %900, %1658 ]
  %1711 = phi float [ %1704, %1674 ], [ %901, %1658 ]
  %1712 = phi float [ %1705, %1674 ], [ %902, %1658 ]
  %1713 = phi float [ %1706, %1674 ], [ %903, %1658 ]
  %1714 = phi float [ %1707, %1674 ], [ %904, %1658 ]
  %1715 = phi float [ %1708, %1674 ], [ %905, %1658 ]
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 3
  %1719 = icmp eq i32 %1718, 3
  br i1 %1719, label %1798, label %1720

; <label>:1720                                    ; preds = %1709
  %1721 = and i32 %1717, 16
  %1722 = icmp ne i32 %1721, 0
  %1723 = select i1 %1722, float %1209, float 0.000000e+00
  %1724 = icmp eq i32 %1718, 0
  br i1 %1724, label %1725, label %1753

; <label>:1725                                    ; preds = %1720
  %1726 = and i32 %1717, 64
  %1727 = icmp ne i32 %1726, 0
  %1728 = select i1 %1727, float %1209, float 0.000000e+00
  %1729 = fsub fast float %1429, %1710
  %1730 = fsub fast float %1430, %1711
  %1731 = fsub fast float %1431, %1712
  %1732 = fmul fast float %1723, %1729
  %1733 = fmul fast float %1723, %1730
  %1734 = fmul fast float %1723, %1731
  %1735 = fadd fast float %1732, %1710
  %1736 = fadd fast float %1733, %1711
  %1737 = fadd fast float %1734, %1712
  %1738 = fsub fast float %1415, %906
  %1739 = fmul fast float %1723, %1738
  %1740 = fadd fast float %1739, %906
  %1741 = fsub fast float %1557, %1713
  %1742 = fsub fast float %1558, %1714
  %1743 = fsub fast float %1559, %1715
  %1744 = fmul fast float %1728, %1741
  %1745 = fmul fast float %1728, %1742
  %1746 = fmul fast float %1728, %1743
  %1747 = fadd fast float %1744, %1713
  %1748 = fadd fast float %1745, %1714
  %1749 = fadd fast float %1746, %1715
  %1750 = fsub fast float %1673, %911
  %1751 = fmul fast float %1723, %1750
  %1752 = fadd fast float %1751, %911
  br label %1798

; <label>:1753                                    ; preds = %1720
  %1754 = icmp eq i32 %1718, 1
  br i1 %1754, label %1755, label %1768

; <label>:1755                                    ; preds = %1753
  %1756 = fadd fast float %1429, -1.000000e+00
  %1757 = fadd fast float %1430, -1.000000e+00
  %1758 = fadd fast float %1431, -1.000000e+00
  %1759 = fmul fast float %1723, %1756
  %1760 = fmul fast float %1723, %1757
  %1761 = fmul fast float %1723, %1758
  %1762 = fadd fast float %1759, 1.000000e+00
  %1763 = fadd fast float %1760, 1.000000e+00
  %1764 = fadd fast float %1761, 1.000000e+00
  %1765 = fmul fast float %1762, %1710
  %1766 = fmul fast float %1763, %1711
  %1767 = fmul fast float %1764, %1712
  br label %1798

; <label>:1768                                    ; preds = %1753
  %1769 = icmp eq i32 %1718, 2
  br i1 %1769, label %1770, label %1798

; <label>:1770                                    ; preds = %1768
  %1771 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1772 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1773 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1774 = fadd fast float %1771, -5.000000e-01
  %1775 = fadd fast float %1772, -5.000000e-01
  %1776 = fadd fast float %1773, -5.000000e-01
  %1777 = fmul fast float %1774, %1723
  %1778 = fmul fast float %1775, %1723
  %1779 = fmul fast float %1776, %1723
  %1780 = fadd fast float %1777, 5.000000e-01
  %1781 = fadd fast float %1778, 5.000000e-01
  %1782 = fadd fast float %1779, 5.000000e-01
  %1783 = fmul fast float %1780, 2.000000e+00
  %1784 = fsub fast float 1.000000e+00, %1783
  %1785 = fmul fast float %1784, %1710
  %1786 = fadd fast float %1785, %1783
  %1787 = fmul fast float %1786, %1710
  %1788 = fmul fast float %1781, 2.000000e+00
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = fmul fast float %1789, %1711
  %1791 = fadd fast float %1790, %1788
  %1792 = fmul fast float %1791, %1711
  %1793 = fmul fast float %1782, 2.000000e+00
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = fmul fast float %1794, %1712
  %1796 = fadd fast float %1795, %1793
  %1797 = fmul fast float %1796, %1712
  br label %1798

; <label>:1798                                    ; preds = %1770, %1768, %1755, %1725, %1709
  %1799 = phi float [ %1710, %1709 ], [ %1787, %1770 ], [ %1710, %1768 ], [ %1765, %1755 ], [ %1735, %1725 ]
  %1800 = phi float [ %1711, %1709 ], [ %1792, %1770 ], [ %1711, %1768 ], [ %1766, %1755 ], [ %1736, %1725 ]
  %1801 = phi float [ %1712, %1709 ], [ %1797, %1770 ], [ %1712, %1768 ], [ %1767, %1755 ], [ %1737, %1725 ]
  %1802 = phi float [ %1713, %1709 ], [ %1713, %1770 ], [ %1713, %1768 ], [ %1713, %1755 ], [ %1747, %1725 ]
  %1803 = phi float [ %1714, %1709 ], [ %1714, %1770 ], [ %1714, %1768 ], [ %1714, %1755 ], [ %1748, %1725 ]
  %1804 = phi float [ %1715, %1709 ], [ %1715, %1770 ], [ %1715, %1768 ], [ %1715, %1755 ], [ %1749, %1725 ]
  %1805 = phi float [ %906, %1709 ], [ %906, %1770 ], [ %906, %1768 ], [ %906, %1755 ], [ %1740, %1725 ]
  %1806 = phi float [ %911, %1709 ], [ %911, %1770 ], [ %911, %1768 ], [ %911, %1755 ], [ %1752, %1725 ]
  %1807 = and i32 %1717, 12
  %1808 = icmp eq i32 %1807, 12
  br i1 %1808, label %1891, label %1809

; <label>:1809                                    ; preds = %1798
  %1810 = and i32 %1717, 2097184
  %1811 = icmp eq i32 %1810, 2097184
  %1812 = select i1 %1811, float %1209, float 0.000000e+00
  %1813 = and i32 %1717, 4194336
  %1814 = icmp eq i32 %1813, 4194336
  %1815 = select i1 %1814, float %1209, float 0.000000e+00
  %1816 = and i32 %1717, 8388640
  %1817 = icmp eq i32 %1816, 8388640
  %1818 = select i1 %1817, float %1209, float 0.000000e+00
  %1819 = and i32 %1717, 16384
  %1820 = icmp ne i32 %1819, 0
  %1821 = select i1 %1820, float %1209, float 0.000000e+00
  %1822 = icmp eq i32 %1807, 0
  br i1 %1822, label %1823, label %1839

; <label>:1823                                    ; preds = %1809
  %1824 = fsub fast float %1510, %898
  %1825 = fsub fast float %1511, %899
  %1826 = fmul fast float %1812, %1824
  %1827 = fmul fast float %1812, %1825
  %1828 = fadd fast float %1826, %898
  %1829 = fadd fast float %1827, %899
  %1830 = fsub fast float %1512, %909
  %1831 = fmul fast float %1815, %1830
  %1832 = fadd fast float %1831, %909
  %1833 = fsub fast float %1509, %908
  %1834 = fmul fast float %1818, %1833
  %1835 = fadd fast float %1834, %908
  %1836 = fsub fast float %1660, %910
  %1837 = fmul fast float %1821, %1836
  %1838 = fadd fast float %1837, %910
  br label %1891

; <label>:1839                                    ; preds = %1809
  %1840 = icmp eq i32 %1807, 4
  br i1 %1840, label %1841, label %1875

; <label>:1841                                    ; preds = %1839
  %1842 = fmul fast float %1812, %1510
  %1843 = fmul fast float %1812, %1511
  %1844 = fadd fast float %1842, %898
  %1845 = fadd fast float %1843, %899
  %1846 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1847 = fsub fast float %1846, %909
  %1848 = fmul fast float %1847, %1815
  %1849 = fadd fast float %1848, %909
  %1850 = fadd fast float %1509, %908
  %1851 = fmul fast float %1850, 0x3FF337FAE0000000
  %1852 = fmul fast float %908, %908
  %1853 = fmul fast float %1509, %1509
  %1854 = fadd fast float %1853, %1852
  %1855 = fmul fast float %1854, 0x3FE5152B00000000
  %1856 = fmul fast float %908, 0xBFCC1F85E0000000
  %1857 = fmul fast float %1856, %1509
  %1858 = fadd fast float %1857, 0xBFE1363700000000
  %1859 = fadd fast float %1858, %1851
  %1860 = fsub fast float %1859, %1855
  %1861 = fmul fast float %1850, 0x3FBA6F0D00000000
  %1862 = fmul fast float %1854, 0x3FD0432880000000
  %1863 = fmul fast float %908, 0xBFEF110800000000
  %1864 = fmul fast float %1863, %1509
  %1865 = fadd fast float %1864, 1.000000e+00
  %1866 = fsub fast float %1865, %1861
  %1867 = fadd fast float %1866, %1862
  %1868 = fdiv fast float %1860, %1867
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fsub fast float %1869, %908
  %1871 = fmul fast float %1870, %1818
  %1872 = fadd fast float %1871, %908
  %1873 = fmul fast float %1821, %1660
  %1874 = fadd fast float %1873, %910
  br label %1891

; <label>:1875                                    ; preds = %1839
  %1876 = icmp eq i32 %1807, 8
  br i1 %1876, label %1877, label %1891

; <label>:1877                                    ; preds = %1875
  %1878 = fmul fast float %1812, %1510
  %1879 = fmul fast float %1812, %1511
  %1880 = fadd fast float %1878, %898
  %1881 = fadd fast float %1879, %899
  %1882 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1883 = fsub fast float %1882, %909
  %1884 = fmul fast float %1883, %1815
  %1885 = fadd fast float %1884, %909
  %1886 = fsub fast float %1509, %908
  %1887 = fmul fast float %1818, %1886
  %1888 = fadd fast float %1887, %908
  %1889 = fmul fast float %1821, %1660
  %1890 = fadd fast float %1889, %910
  br label %1891

; <label>:1891                                    ; preds = %1877, %1875, %1841, %1823, %1798, %1208, %912, %897
  %1892 = phi float [ %898, %1798 ], [ %898, %1208 ], [ %898, %897 ], [ %1880, %1877 ], [ %898, %1875 ], [ %1844, %1841 ], [ %1828, %1823 ], [ %898, %912 ]
  %1893 = phi float [ %899, %1798 ], [ %899, %1208 ], [ %899, %897 ], [ %1881, %1877 ], [ %899, %1875 ], [ %1845, %1841 ], [ %1829, %1823 ], [ %899, %912 ]
  %1894 = phi float [ %1799, %1798 ], [ %900, %1208 ], [ %900, %897 ], [ %1799, %1877 ], [ %1799, %1875 ], [ %1799, %1841 ], [ %1799, %1823 ], [ %900, %912 ]
  %1895 = phi float [ %1800, %1798 ], [ %901, %1208 ], [ %901, %897 ], [ %1800, %1877 ], [ %1800, %1875 ], [ %1800, %1841 ], [ %1800, %1823 ], [ %901, %912 ]
  %1896 = phi float [ %1801, %1798 ], [ %902, %1208 ], [ %902, %897 ], [ %1801, %1877 ], [ %1801, %1875 ], [ %1801, %1841 ], [ %1801, %1823 ], [ %902, %912 ]
  %1897 = phi float [ %1802, %1798 ], [ %903, %1208 ], [ %903, %897 ], [ %1802, %1877 ], [ %1802, %1875 ], [ %1802, %1841 ], [ %1802, %1823 ], [ %903, %912 ]
  %1898 = phi float [ %1803, %1798 ], [ %904, %1208 ], [ %904, %897 ], [ %1803, %1877 ], [ %1803, %1875 ], [ %1803, %1841 ], [ %1803, %1823 ], [ %904, %912 ]
  %1899 = phi float [ %1804, %1798 ], [ %905, %1208 ], [ %905, %897 ], [ %1804, %1877 ], [ %1804, %1875 ], [ %1804, %1841 ], [ %1804, %1823 ], [ %905, %912 ]
  %1900 = phi float [ %1805, %1798 ], [ %906, %1208 ], [ %906, %897 ], [ %1805, %1877 ], [ %1805, %1875 ], [ %1805, %1841 ], [ %1805, %1823 ], [ %906, %912 ]
  %1901 = phi float [ %908, %1798 ], [ %908, %1208 ], [ %908, %897 ], [ %1888, %1877 ], [ %908, %1875 ], [ %1872, %1841 ], [ %1835, %1823 ], [ %908, %912 ]
  %1902 = phi float [ %909, %1798 ], [ %909, %1208 ], [ %909, %897 ], [ %1885, %1877 ], [ %909, %1875 ], [ %1849, %1841 ], [ %1832, %1823 ], [ %909, %912 ]
  %1903 = phi float [ %910, %1798 ], [ %910, %1208 ], [ %910, %897 ], [ %1890, %1877 ], [ %910, %1875 ], [ %1874, %1841 ], [ %1838, %1823 ], [ %910, %912 ]
  %1904 = phi float [ %1806, %1798 ], [ %911, %1208 ], [ %911, %897 ], [ %1806, %1877 ], [ %1806, %1875 ], [ %1806, %1841 ], [ %1806, %1823 ], [ %911, %912 ]
  br i1 %348, label %2884, label %1905

; <label>:1905                                    ; preds = %1891
  %1906 = icmp ult i32 %401, 3
  %1907 = add i32 %33, 56
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %33, 60
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = or i32 %1912, %1909
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %2884, label %1915

; <label>:1915                                    ; preds = %1905
  %1916 = and i32 %1909, 262144
  %1917 = icmp ne i32 %1916, 0
  %1918 = select i1 %1917, float %36, float 1.000000e+00
  %1919 = select i1 %1917, float %37, float 0.000000e+00
  %1920 = select i1 %1917, float %38, float 0.000000e+00
  %1921 = select i1 %1917, float %39, float 1.000000e+00
  %1922 = select i1 %1917, float %40, float %56
  %1923 = select i1 %1917, float %41, float %57
  %1924 = add i32 %33, 316
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = lshr i32 %1926, 16
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = fmul fast float %1928, 0x3F50624DE0000000
  %1930 = add i32 %33, 120
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = lshr i32 %1932, 16
  %1934 = and i32 %1933, 255
  %1935 = lshr i32 %1932, 24
  %1936 = add i32 %33, 324
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %1938, 65535
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = lshr i32 %1938, 16
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = add i32 %33, 64
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = lshr i32 %1945, 22
  %1947 = shl nuw nsw i32 %1946, 5
  %1948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1947)  ; LegacyF16ToF32(value)
  %1949 = shl i32 %1945, 4
  %1950 = and i32 %1949, 32752
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = lshr i32 %1945, 7
  %1953 = and i32 %1952, 32752
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1957 = fmul fast float %1956, 1.000000e+03
  %1958 = fmul fast float %298, %1957
  %1959 = call float @dx.op.unary.f32(i32 22, float %1958)  ; Frc(value)
  %1960 = fadd fast float %1959, %288
  %1961 = fmul fast float %299, %1957
  %1962 = call float @dx.op.unary.f32(i32 22, float %1961)  ; Frc(value)
  %1963 = fadd fast float %1962, %290
  %1964 = fmul fast float %1929, %1957
  %1965 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1966 = fmul fast float %1965, 0x401921FB60000000
  %1967 = fadd fast float %1966, %1948
  %1968 = call float @dx.op.unary.f32(i32 13, float %1967)  ; Sin(value)
  %1969 = call float @dx.op.unary.f32(i32 12, float %1967)  ; Cos(value)
  %1970 = fsub fast float -0.000000e+00, %1968
  %1971 = fadd fast float %1922, -5.000000e-01
  %1972 = fadd fast float %1923, -5.000000e-01
  %1973 = fmul fast float %1940, %1971
  %1974 = fmul fast float %1942, %1972
  %1975 = fadd fast float %1973, 5.000000e-01
  %1976 = fadd fast float %1974, 5.000000e-01
  %1977 = fmul fast float %1951, %1975
  %1978 = fmul fast float %1954, %1976
  %1979 = fmul fast float %1969, %1977
  %1980 = call float @dx.op.tertiary.f32(i32 46, float %1970, float %1978, float %1979)  ; FMad(a,b,c)
  %1981 = fmul fast float %1968, %1977
  %1982 = call float @dx.op.tertiary.f32(i32 46, float %1969, float %1978, float %1981)  ; FMad(a,b,c)
  %1983 = fadd fast float %1960, %1980
  %1984 = fadd fast float %1963, %1982
  %1985 = icmp ugt i32 %1934, 1
  %1986 = icmp ugt i32 %1932, 33554431
  %1987 = or i1 %1986, %1985
  br i1 %1987, label %1988, label %2013

; <label>:1988                                    ; preds = %1915
  %1989 = add i32 %33, 260
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = lshr i32 %1991, 16
  %1993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1992)  ; LegacyF16ToF32(value)
  %1994 = fmul fast float %1956, %1993
  %1995 = call float @dx.op.unary.f32(i32 22, float %1994)  ; Frc(value)
  %1996 = mul nuw nsw i32 %1934, %1935
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1995, %1997
  %1999 = call float @dx.op.unary.f32(i32 27, float %1998)  ; Round_ni(value)
  %2000 = fptoui float %1999 to i32
  %2001 = urem i32 %2000, %1934
  %2002 = udiv i32 %2000, %1935
  %2003 = call float @dx.op.unary.f32(i32 22, float %1983)  ; Frc(value)
  %2004 = call float @dx.op.unary.f32(i32 22, float %1984)  ; Frc(value)
  %2005 = uitofp i32 %2001 to float
  %2006 = uitofp i32 %2002 to float
  %2007 = fadd fast float %2003, %2005
  %2008 = fadd fast float %2004, %2006
  %2009 = uitofp i32 %1934 to float
  %2010 = uitofp i32 %1935 to float
  %2011 = fdiv fast float %2007, %2009
  %2012 = fdiv fast float %2008, %2010
  br label %2013

; <label>:2013                                    ; preds = %1988, %1915
  %2014 = phi float [ %2011, %1988 ], [ %1983, %1915 ]
  %2015 = phi float [ %2012, %1988 ], [ %1984, %1915 ]
  %2016 = and i32 %1909, 16777216
  %2017 = icmp eq i32 %2016, 0
  br i1 %2017, label %2127, label %2018

; <label>:2018                                    ; preds = %2013
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2023 = fadd fast float %2020, %131
  %2024 = fadd fast float %2021, %132
  %2025 = fadd fast float %2022, %133
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2029 = icmp eq i32 %34, 65535
  br i1 %2029, label %2124, label %2030

; <label>:2030                                    ; preds = %2018
  %2031 = lshr i32 %34, 1
  %2032 = shl i32 %2031, 2
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %34, 1
  %2036 = icmp ne i32 %2035, 0
  %2037 = lshr i32 %2034, 16
  %2038 = and i32 %2034, 65535
  %2039 = select i1 %2036, i32 %2037, i32 %2038
  %2040 = icmp eq i32 %2039, 65535
  br i1 %2040, label %2120, label %2041

; <label>:2041                                    ; preds = %2030
  %2042 = mul nuw nsw i32 %2039, 40
  %2043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.ResRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.ResRet.f32 %2043, 2
  %2047 = add nuw nsw i32 %2042, 12
  %2048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = add nuw nsw i32 %2042, 24
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = add nuw nsw i32 %2042, 36
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = fsub fast float %2023, %2044
  %2061 = fsub fast float %2024, %2045
  %2062 = fsub fast float %2025, %2046
  %2063 = fmul fast float %2059, %2060
  %2064 = fmul fast float %2059, %2061
  %2065 = fmul fast float %2059, %2062
  %2066 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fmul fast float %2069, %2049
  %2073 = fmul fast float %2070, %2050
  %2074 = fmul fast float %2071, %2051
  %2075 = shl i32 %34, 2
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %2077, 0
  %2079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2080 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2081 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2082 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2079, %dx.types.Handle %30, float %2080, float %2081, float %2082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = fmul fast float %2084, 1.023000e+03
  %2088 = fmul fast float %2085, 1.023000e+03
  %2089 = fmul fast float %2086, 1.023000e+03
  %2090 = fadd fast float %2087, 5.000000e-01
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2094 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2095 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2096 = fsub fast float %2063, %2066
  %2097 = fsub fast float %2064, %2067
  %2098 = fsub fast float %2065, %2068
  %2099 = fmul fast float %2096, 7.500000e-01
  %2100 = fmul fast float %2097, 7.500000e-01
  %2101 = fmul fast float %2098, 7.500000e-01
  %2102 = fadd fast float %2066, 1.250000e-01
  %2103 = fadd fast float %2102, %2099
  %2104 = fadd fast float %2103, %2093
  %2105 = fadd fast float %2067, 1.250000e-01
  %2106 = fadd fast float %2105, %2100
  %2107 = fadd fast float %2106, %2094
  %2108 = fadd fast float %2068, 1.250000e-01
  %2109 = fadd fast float %2108, %2101
  %2110 = fadd fast float %2109, %2095
  %2111 = fmul fast float %2104, %2054
  %2112 = fmul fast float %2107, %2055
  %2113 = fmul fast float %2110, %2056
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2117, %dx.types.Handle %28, float %2111, float %2112, float %2113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  br label %2120

; <label>:2120                                    ; preds = %2041, %2030
  %2121 = phi float [ %2119, %2041 ], [ -1.000000e+00, %2030 ]
  %2122 = fadd fast float %2121, %2028
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  br label %2124

; <label>:2124                                    ; preds = %2120, %2018
  %2125 = phi float [ %2123, %2120 ], [ %2028, %2018 ]
  %2126 = fmul fast float %2125, %397
  br label %2127

; <label>:2127                                    ; preds = %2124, %2013
  %2128 = phi float [ %2126, %2124 ], [ %397, %2013 ]
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 256
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2179, label %2133

; <label>:2133                                    ; preds = %2127
  %2134 = add i32 %33, 432
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = add i32 %2136, 0
  %2138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2138, %dx.types.Handle %65, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = add i32 %33, 132
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = shl i32 %2143, 4
  %2145 = and i32 %2144, 32752
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = lshr i32 %2143, 7
  %2148 = and i32 %2147, 32752
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = fsub fast float 1.000000e+00, %2128
  %2151 = call float @dx.op.binary.f32(i32 35, float %2150, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2152 = bitcast float %2128 to i32
  %2153 = sitofp i32 %2152 to float
  %2154 = fadd fast float %2153, 0xC1CFBF8940000000
  %2155 = fmul fast float %2149, %2154
  %2156 = fadd fast float %2155, 0x41CFBF8940000000
  %2157 = fptosi float %2156 to i32
  %2158 = bitcast i32 %2157 to float
  %2159 = bitcast float %2151 to i32
  %2160 = sitofp i32 %2159 to float
  %2161 = fadd fast float %2160, 0xC1CFBF8940000000
  %2162 = fmul fast float %2161, %2149
  %2163 = fadd fast float %2162, 0x41CFBF8940000000
  %2164 = fptosi float %2163 to i32
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2158, %2146
  %2167 = fmul fast float %2165, %2146
  %2168 = fsub fast float %2151, %2166
  %2169 = fadd fast float %2167, %2151
  %2170 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2171 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2172 = fsub fast float %2140, %2170
  %2173 = fsub fast float %2171, %2170
  %2174 = bitcast float %2173 to i32
  %2175 = sub nsw i32 2129859010, %2174
  %2176 = bitcast i32 %2175 to float
  %2177 = fmul fast float %2176, %2172
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  br label %2179

; <label>:2179                                    ; preds = %2133, %2127
  %2180 = phi float [ %2178, %2133 ], [ %2128, %2127 ]
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 128
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2201, label %2185

; <label>:2185                                    ; preds = %2179
  %2186 = add i32 %33, 416
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = add i32 %2188, 0
  %2190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2190, %dx.types.Handle %65, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 524288
  %2196 = icmp ne i32 %2195, 0
  %2197 = fcmp fast ogt float %2192, 0x3FE0101020000000
  %2198 = select i1 %2197, float 1.000000e+00, float 0.000000e+00
  %2199 = select i1 %2196, float %2198, float %2192
  %2200 = fmul fast float %2199, %2180
  br label %2201

; <label>:2201                                    ; preds = %2185, %2179
  %2202 = phi float [ %2200, %2185 ], [ %2180, %2179 ]
  %2203 = fcmp fast ult float %2202, 0x3F70101020000000
  br i1 %2203, label %2884, label %2204

; <label>:2204                                    ; preds = %2201
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 16
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2407, label %2209

; <label>:2209                                    ; preds = %2204
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %33, 368
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = add i32 %2214, 0
  %2216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2216, %dx.types.Handle %64, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.ResRet.f32 %2217, 3
  %2222 = and i32 %2211, 255
  %2223 = uitofp i32 %2222 to float
  %2224 = lshr i32 %2211, 8
  %2225 = and i32 %2224, 255
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2221, %2223
  %2228 = fadd fast float %2227, %2226
  %2229 = fmul fast float %2228, 0x3F70101000000000
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 512
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2242, label %2234

; <label>:2234                                    ; preds = %2209
  %2235 = add i32 %33, 448
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = add i32 %2237, 0
  %2239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2239, %dx.types.Handle %65, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  br label %2242

; <label>:2242                                    ; preds = %2234, %2209
  %2243 = phi float [ %2241, %2234 ], [ 1.000000e+00, %2209 ]
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 33554432
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2354, label %2248

; <label>:2248                                    ; preds = %2242
  %2249 = add i32 %33, 256
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 65535
  %2253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2252)  ; LegacyF16ToF32(value)
  %2254 = lshr i32 %2251, 16
  %2255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2254)  ; LegacyF16ToF32(value)
  %2256 = add i32 %33, 260
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 65535
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = lshr i32 %2262, 24
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = and i32 %2262, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = lshr i32 %2262, 8
  %2270 = and i32 %2269, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = lshr i32 %2262, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = add i32 %33, 252
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = lshr i32 %2279, 24
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101020000000
  %2283 = and i32 %2279, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101020000000
  %2286 = lshr i32 %2279, 8
  %2287 = and i32 %2286, 255
  %2288 = uitofp i32 %2287 to float
  %2289 = fmul fast float %2288, 0x3F70101020000000
  %2290 = lshr i32 %2279, 16
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 0x3F70101020000000
  %2294 = bitcast float %2218 to i32
  %2295 = ashr i32 %2294, 1
  %2296 = sub nsw i32 1597463174, %2295
  %2297 = bitcast i32 %2296 to float
  %2298 = fmul fast float %2218, 5.000000e-01
  %2299 = fmul fast float %2297, %2297
  %2300 = fmul fast float %2299, %2298
  %2301 = fsub fast float 1.500000e+00, %2300
  %2302 = fmul fast float %2297, %2218
  %2303 = fmul fast float %2302, %2301
  %2304 = bitcast float %2219 to i32
  %2305 = ashr i32 %2304, 1
  %2306 = sub nsw i32 1597463174, %2305
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2219, 5.000000e-01
  %2309 = fmul fast float %2307, %2307
  %2310 = fmul fast float %2309, %2308
  %2311 = fsub fast float 1.500000e+00, %2310
  %2312 = fmul fast float %2307, %2219
  %2313 = fmul fast float %2312, %2311
  %2314 = bitcast float %2220 to i32
  %2315 = ashr i32 %2314, 1
  %2316 = sub nsw i32 1597463174, %2315
  %2317 = bitcast i32 %2316 to float
  %2318 = fmul fast float %2220, 5.000000e-01
  %2319 = fmul fast float %2317, %2317
  %2320 = fmul fast float %2319, %2318
  %2321 = fsub fast float 1.500000e+00, %2320
  %2322 = fmul fast float %2317, %2220
  %2323 = fmul fast float %2322, %2321
  %2324 = fsub fast float %2303, %2285
  %2325 = fsub fast float %2313, %2289
  %2326 = fsub fast float %2323, %2293
  %2327 = fmul fast float %2324, %2253
  %2328 = fmul fast float %2325, %2255
  %2329 = fmul fast float %2326, %2260
  %2330 = fadd fast float %2327, %2268
  %2331 = fadd fast float %2328, %2272
  %2332 = fadd fast float %2329, %2276
  %2333 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2334 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2335 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2336 = fmul fast float %2333, %2333
  %2337 = fmul fast float %2334, %2334
  %2338 = fmul fast float %2335, %2335
  %2339 = fsub fast float %2336, %2218
  %2340 = fsub fast float %2337, %2219
  %2341 = fsub fast float %2338, %2220
  %2342 = fmul fast float %2339, %2243
  %2343 = fmul fast float %2340, %2243
  %2344 = fmul fast float %2341, %2243
  %2345 = fadd fast float %2342, %2218
  %2346 = fadd fast float %2343, %2219
  %2347 = fadd fast float %2344, %2220
  %2348 = fadd fast float %2265, %2229
  %2349 = fsub fast float %2348, %2282
  %2350 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2351 = fsub fast float %2350, %2229
  %2352 = fmul fast float %2351, %2243
  %2353 = fadd fast float %2352, %2229
  br label %2407

; <label>:2354                                    ; preds = %2242
  %2355 = and i32 %2245, 134217728
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2391, label %2357

; <label>:2357                                    ; preds = %2354
  %2358 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2359 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2360 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2361 = fadd fast float %2358, -5.000000e-01
  %2362 = fadd fast float %2359, -5.000000e-01
  %2363 = fadd fast float %2360, -5.000000e-01
  %2364 = fmul fast float %2361, %2243
  %2365 = fmul fast float %2362, %2243
  %2366 = fmul fast float %2363, %2243
  %2367 = fadd fast float %2364, 5.000000e-01
  %2368 = fadd fast float %2365, 5.000000e-01
  %2369 = fadd fast float %2366, 5.000000e-01
  %2370 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2371 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2372 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2373 = fmul fast float %2367, 2.000000e+00
  %2374 = fsub fast float 1.000000e+00, %2373
  %2375 = fmul fast float %2374, %2370
  %2376 = fadd fast float %2375, %2373
  %2377 = fmul fast float %2376, %2370
  %2378 = fmul fast float %2368, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2371
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2371
  %2383 = fmul fast float %2369, 2.000000e+00
  %2384 = fsub fast float 1.000000e+00, %2383
  %2385 = fmul fast float %2384, %2372
  %2386 = fadd fast float %2385, %2383
  %2387 = fmul fast float %2386, %2372
  %2388 = fmul fast float %2377, %2377
  %2389 = fmul fast float %2382, %2382
  %2390 = fmul fast float %2387, %2387
  br label %2407

; <label>:2391                                    ; preds = %2354
  %2392 = fmul fast float %275, %275
  %2393 = fmul fast float %279, %279
  %2394 = fmul fast float %283, %283
  %2395 = fadd fast float %2392, -1.000000e+00
  %2396 = fadd fast float %2393, -1.000000e+00
  %2397 = fadd fast float %2394, -1.000000e+00
  %2398 = fmul fast float %2243, %2395
  %2399 = fmul fast float %2243, %2396
  %2400 = fmul fast float %2243, %2397
  %2401 = fadd fast float %2398, 1.000000e+00
  %2402 = fadd fast float %2399, 1.000000e+00
  %2403 = fadd fast float %2400, 1.000000e+00
  %2404 = fmul fast float %2401, %2218
  %2405 = fmul fast float %2402, %2219
  %2406 = fmul fast float %2403, %2220
  br label %2407

; <label>:2407                                    ; preds = %2391, %2357, %2248, %2204
  %2408 = phi float [ %2353, %2248 ], [ %2229, %2357 ], [ %2229, %2391 ], [ 0x3FA23C0BE0000000, %2204 ]
  %2409 = phi float [ %2345, %2248 ], [ %2388, %2357 ], [ %2404, %2391 ], [ 1.000000e+00, %2204 ]
  %2410 = phi float [ %2346, %2248 ], [ %2389, %2357 ], [ %2405, %2391 ], [ 1.000000e+00, %2204 ]
  %2411 = phi float [ %2347, %2248 ], [ %2390, %2357 ], [ %2406, %2391 ], [ 1.000000e+00, %2204 ]
  %2412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.i32 %2412, 1
  %2414 = and i32 %2413, 1
  %2415 = icmp ne i32 %2414, 0
  %2416 = add i32 %33, 356
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 32
  %2420 = icmp ne i32 %2419, 0
  %2421 = and i1 %2415, %2420
  %2422 = select i1 %2421, float 1.000000e+00, float %2409
  %2423 = select i1 %2421, float 0x3FD3333340000000, float %2410
  %2424 = select i1 %2421, float 0x3FD3333340000000, float %2411
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 32
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2501, label %2429

; <label>:2429                                    ; preds = %2407
  %2430 = add i32 %33, 124
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = add i32 %33, 384
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %2435, 0
  %2437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2437, %dx.types.Handle %64, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.ResRet.f32 %2438, 1
  %2441 = extractvalue %dx.types.ResRet.f32 %2438, 2
  %2442 = extractvalue %dx.types.ResRet.f32 %2438, 3
  %2443 = and i32 %2432, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = lshr i32 %2432, 8
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = lshr i32 %2432, 16
  %2449 = and i32 %2448, 255
  %2450 = uitofp i32 %2449 to float
  %2451 = fmul fast float %2450, 0x3F70101000000000
  %2452 = fmul fast float %2439, %2444
  %2453 = fadd fast float %2452, %2447
  %2454 = fmul fast float %2453, 0x3F70101000000000
  %2455 = fadd fast float %2440, -5.000000e-01
  %2456 = fadd fast float %2442, -5.000000e-01
  %2457 = fmul fast float %2455, %2451
  %2458 = fmul fast float %2456, %2451
  %2459 = fadd fast float %2457, 5.000000e-01
  %2460 = fadd fast float %2458, 5.000000e-01
  %2461 = fmul fast float %2459, 2.000000e+00
  %2462 = fadd fast float %2461, -1.000000e+00
  %2463 = fmul fast float %2460, 2.000000e+00
  %2464 = fadd fast float %2463, -1.000000e+00
  %2465 = fadd fast float %2462, %2464
  %2466 = fmul fast float %2465, 5.000000e-01
  %2467 = fsub fast float %2462, %2464
  %2468 = fmul fast float %2467, 5.000000e-01
  %2469 = call float @dx.op.unary.f32(i32 6, float %2466)  ; FAbs(value)
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = call float @dx.op.unary.f32(i32 6, float %2468)  ; FAbs(value)
  %2472 = fsub fast float %2470, %2471
  %2473 = call float @dx.op.dot3.f32(i32 55, float %2466, float %2468, float %2472, float %2466, float %2468, float %2472)  ; Dot3(ax,ay,az,bx,by,bz)
  %2474 = call float @dx.op.unary.f32(i32 25, float %2473)  ; Rsqrt(value)
  %2475 = fmul fast float %2466, %2474
  %2476 = fmul fast float %2468, %2474
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 67108864
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2497, label %2481

; <label>:2481                                    ; preds = %2429
  %2482 = add i32 %33, 312
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 65535
  %2486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2485)  ; LegacyF16ToF32(value)
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 65535
  %2490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2489)  ; LegacyF16ToF32(value)
  %2491 = lshr i32 %2484, 16
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = fsub fast float %2454, %2492
  %2494 = fmul fast float %2493, %2486
  %2495 = fadd fast float %2494, %2490
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  br label %2497

; <label>:2497                                    ; preds = %2481, %2429
  %2498 = phi float [ %2496, %2481 ], [ %2454, %2429 ]
  %2499 = call float @dx.op.dot2.f32(i32 54, float %2475, float %2476, float %1918, float %1919)  ; Dot2(ax,ay,bx,by)
  %2500 = call float @dx.op.dot2.f32(i32 54, float %2475, float %2476, float %1920, float %1921)  ; Dot2(ax,ay,bx,by)
  br label %2501

; <label>:2501                                    ; preds = %2497, %2407
  %2502 = phi float [ %2498, %2497 ], [ 0x3FD6666660000000, %2407 ]
  %2503 = phi float [ %2499, %2497 ], [ 0.000000e+00, %2407 ]
  %2504 = phi float [ %2500, %2497 ], [ 0.000000e+00, %2407 ]
  %2505 = phi float [ %2441, %2497 ], [ 1.000000e+00, %2407 ]
  %2506 = add i32 %33, 192
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = lshr i32 %2508, 22
  %2510 = shl nuw nsw i32 %2509, 5
  %2511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2510)  ; LegacyF16ToF32(value)
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 64
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2549, label %2516

; <label>:2516                                    ; preds = %2501
  %2517 = add i32 %33, 400
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %2519, 0
  %2521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 131072
  %2525 = icmp eq i32 %2524, 0
  %2526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2521, %dx.types.Handle %64, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2530 = fmul fast float %2527, %263
  %2531 = fmul fast float %2528, %266
  %2532 = fmul fast float %2529, %269
  br i1 %2525, label %2539, label %2533

; <label>:2533                                    ; preds = %2516
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = fmul fast float %2535, %2530
  %2537 = fmul fast float %2535, %2531
  %2538 = fmul fast float %2535, %2532
  br label %2539

; <label>:2539                                    ; preds = %2533, %2516
  %2540 = phi float [ %2536, %2533 ], [ %2530, %2516 ]
  %2541 = phi float [ %2537, %2533 ], [ %2531, %2516 ]
  %2542 = phi float [ %2538, %2533 ], [ %2532, %2516 ]
  %2543 = fmul fast float %2540, %2511
  %2544 = select i1 %173, float %2543, float %2540
  %2545 = call float @dx.op.dot3.f32(i32 55, float %2544, float %2541, float %2542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2546 = select i1 %173, float 0.000000e+00, float %2540
  %2547 = select i1 %173, float %2545, float %2541
  %2548 = select i1 %173, float 0.000000e+00, float %2542
  br label %2549

; <label>:2549                                    ; preds = %2539, %2501
  %2550 = phi float [ %2546, %2539 ], [ 0.000000e+00, %2501 ]
  %2551 = phi float [ %2547, %2539 ], [ 0.000000e+00, %2501 ]
  %2552 = phi float [ %2548, %2539 ], [ 0.000000e+00, %2501 ]
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 1024
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2587, label %2557

; <label>:2557                                    ; preds = %2549
  %2558 = add i32 %33, 184
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = fmul fast float %2562, 0x3F70101020000000
  %2564 = lshr i32 %2560, 8
  %2565 = and i32 %2564, 255
  %2566 = uitofp i32 %2565 to float
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = lshr i32 %2560, 16
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = fmul fast float %2570, 0x3F70101020000000
  %2572 = fmul fast float %2563, %2563
  %2573 = fmul fast float %2567, %2567
  %2574 = fmul fast float %2571, %2571
  %2575 = add i32 %33, 464
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = add i32 %2577, 0
  %2579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2579, %dx.types.Handle %65, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2581 = extractvalue %dx.types.ResRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.ResRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.ResRet.f32 %2580, 2
  %2584 = fmul fast float %2572, %2581
  %2585 = fmul fast float %2573, %2582
  %2586 = fmul fast float %2574, %2583
  br label %2587

; <label>:2587                                    ; preds = %2557, %2549
  %2588 = phi float [ %2584, %2557 ], [ 0.000000e+00, %2549 ]
  %2589 = phi float [ %2585, %2557 ], [ 0.000000e+00, %2549 ]
  %2590 = phi float [ %2586, %2557 ], [ 0.000000e+00, %2549 ]
  %2591 = fcmp fast ogt float %2588, 0.000000e+00
  %2592 = fcmp fast ogt float %2589, 0.000000e+00
  %2593 = fcmp fast ogt float %2590, 0.000000e+00
  %2594 = call float @dx.op.unary.f32(i32 23, float %2588)  ; Log(value)
  %2595 = call float @dx.op.unary.f32(i32 23, float %2589)  ; Log(value)
  %2596 = call float @dx.op.unary.f32(i32 23, float %2590)  ; Log(value)
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = lshr i32 %2598, 7
  %2600 = and i32 %2599, 32752
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = fmul fast float %2594, 0xBFE62E4300000000
  %2603 = fmul fast float %2602, %2601
  %2604 = fmul fast float %2595, 0xBFE62E4300000000
  %2605 = fmul fast float %2604, %2601
  %2606 = fmul fast float %2596, 0xBFE62E4300000000
  %2607 = fmul fast float %2606, %2601
  %2608 = select i1 %2591, float %2603, float 1.270000e+02
  %2609 = select i1 %2592, float %2605, float 1.270000e+02
  %2610 = select i1 %2593, float %2607, float 1.270000e+02
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 26624
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2651, label %2615

; <label>:2615                                    ; preds = %2587
  %2616 = add i32 %33, 480
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %2618, 0
  %2620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2620, %dx.types.Handle %65, float %2014, float %2015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 1048576
  %2626 = icmp ne i32 %2625, 0
  %2627 = and i32 %2624, 2048
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2638, label %2629

; <label>:2629                                    ; preds = %2615
  %2630 = extractvalue %dx.types.ResRet.f32 %2621, 3
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = shl i32 %2632, 4
  %2634 = and i32 %2633, 32752
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = fmul fast float %2635, %2630
  %2637 = call float @dx.op.binary.f32(i32 35, float %2636, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2638

; <label>:2638                                    ; preds = %2629, %2615
  %2639 = phi float [ %2637, %2629 ], [ 0x3F70101020000000, %2615 ]
  %2640 = and i32 %2624, 16384
  %2641 = icmp eq i32 %2640, 0
  br i1 %2641, label %2651, label %2642

; <label>:2642                                    ; preds = %2638
  %2643 = add i32 %33, 128
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 24
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2622, 0x3F70101020000000
  %2649 = select i1 %2626, float 0x3F70101020000000, float %2648
  %2650 = fmul fast float %2649, %2647
  br label %2651

; <label>:2651                                    ; preds = %2642, %2638, %2587
  %2652 = phi float [ %2639, %2642 ], [ %2639, %2638 ], [ 0x3F70101020000000, %2587 ]
  %2653 = phi float [ %2650, %2642 ], [ 0.000000e+00, %2638 ], [ 0.000000e+00, %2587 ]
  %2654 = add i32 %33, 128
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = lshr i32 %2656, 8
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = call float @dx.op.dot3.f32(i32 55, float %2422, float %2423, float %2424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = fmul fast float %2661, %2662
  %2664 = fadd fast float %2663, %2658
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  br i1 %1906, label %2667, label %2702

; <label>:2667                                    ; preds = %2651
  %2668 = fmul fast float %2652, 2.000000e+00
  %2669 = fcmp fast olt float %2608, 1.270000e+02
  %2670 = fcmp fast olt float %2609, 1.270000e+02
  %2671 = fcmp fast olt float %2610, 1.270000e+02
  %2672 = fmul fast float %2608, 0xBFF7154760000000
  %2673 = fmul fast float %2672, %2668
  %2674 = fmul fast float %2609, 0xBFF7154760000000
  %2675 = fmul fast float %2674, %2668
  %2676 = fmul fast float %2610, 0xBFF7154760000000
  %2677 = fmul fast float %2676, %2668
  %2678 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2679 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2680 = call float @dx.op.unary.f32(i32 21, float %2677)  ; Exp(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2682 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2683 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2684 = fadd fast float %2681, -1.000000e+00
  %2685 = select i1 %2669, float %2684, float -1.000000e+00
  %2686 = fadd fast float %2682, -1.000000e+00
  %2687 = select i1 %2670, float %2686, float -1.000000e+00
  %2688 = fadd fast float %2683, -1.000000e+00
  %2689 = select i1 %2671, float %2688, float -1.000000e+00
  %2690 = fmul fast float %2685, %2202
  %2691 = fmul fast float %2687, %2202
  %2692 = fmul fast float %2689, %2202
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fadd fast float %2691, 1.000000e+00
  %2695 = fadd fast float %2692, 1.000000e+00
  %2696 = fmul fast float %2693, %1894
  %2697 = fmul fast float %2694, %1895
  %2698 = fmul fast float %2695, %1896
  %2699 = fmul fast float %2693, %1897
  %2700 = fmul fast float %2694, %1898
  %2701 = fmul fast float %2695, %1899
  br label %2702

; <label>:2702                                    ; preds = %2667, %2651
  %2703 = phi float [ %2696, %2667 ], [ %1894, %2651 ]
  %2704 = phi float [ %2697, %2667 ], [ %1895, %2651 ]
  %2705 = phi float [ %2698, %2667 ], [ %1896, %2651 ]
  %2706 = phi float [ %2699, %2667 ], [ %1897, %2651 ]
  %2707 = phi float [ %2700, %2667 ], [ %1898, %2651 ]
  %2708 = phi float [ %2701, %2667 ], [ %1899, %2651 ]
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %2710, 3
  %2712 = icmp eq i32 %2711, 3
  br i1 %2712, label %2791, label %2713

; <label>:2713                                    ; preds = %2702
  %2714 = and i32 %2710, 16
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float %2202, float 0.000000e+00
  %2717 = icmp eq i32 %2711, 0
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2713
  %2719 = and i32 %2710, 64
  %2720 = icmp ne i32 %2719, 0
  %2721 = select i1 %2720, float %2202, float 0.000000e+00
  %2722 = fsub fast float %2422, %2703
  %2723 = fsub fast float %2423, %2704
  %2724 = fsub fast float %2424, %2705
  %2725 = fmul fast float %2716, %2722
  %2726 = fmul fast float %2716, %2723
  %2727 = fmul fast float %2716, %2724
  %2728 = fadd fast float %2725, %2703
  %2729 = fadd fast float %2726, %2704
  %2730 = fadd fast float %2727, %2705
  %2731 = fsub fast float %2408, %1900
  %2732 = fmul fast float %2716, %2731
  %2733 = fadd fast float %2732, %1900
  %2734 = fsub fast float %2550, %2706
  %2735 = fsub fast float %2551, %2707
  %2736 = fsub fast float %2552, %2708
  %2737 = fmul fast float %2721, %2734
  %2738 = fmul fast float %2721, %2735
  %2739 = fmul fast float %2721, %2736
  %2740 = fadd fast float %2737, %2706
  %2741 = fadd fast float %2738, %2707
  %2742 = fadd fast float %2739, %2708
  %2743 = fsub fast float %2666, %1904
  %2744 = fmul fast float %2716, %2743
  %2745 = fadd fast float %2744, %1904
  br label %2791

; <label>:2746                                    ; preds = %2713
  %2747 = icmp eq i32 %2711, 1
  br i1 %2747, label %2748, label %2761

; <label>:2748                                    ; preds = %2746
  %2749 = fadd fast float %2422, -1.000000e+00
  %2750 = fadd fast float %2423, -1.000000e+00
  %2751 = fadd fast float %2424, -1.000000e+00
  %2752 = fmul fast float %2716, %2749
  %2753 = fmul fast float %2716, %2750
  %2754 = fmul fast float %2716, %2751
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fadd fast float %2753, 1.000000e+00
  %2757 = fadd fast float %2754, 1.000000e+00
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2704
  %2760 = fmul fast float %2757, %2705
  br label %2791

; <label>:2761                                    ; preds = %2746
  %2762 = icmp eq i32 %2711, 2
  br i1 %2762, label %2763, label %2791

; <label>:2763                                    ; preds = %2761
  %2764 = call float @dx.op.unary.f32(i32 24, float %2422)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2423)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %2424)  ; Sqrt(value)
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fmul fast float %2767, %2716
  %2771 = fmul fast float %2768, %2716
  %2772 = fmul fast float %2769, %2716
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fmul fast float %2773, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2703
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2703
  %2781 = fmul fast float %2774, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fmul fast float %2782, %2704
  %2784 = fadd fast float %2783, %2781
  %2785 = fmul fast float %2784, %2704
  %2786 = fmul fast float %2775, 2.000000e+00
  %2787 = fsub fast float 1.000000e+00, %2786
  %2788 = fmul fast float %2787, %2705
  %2789 = fadd fast float %2788, %2786
  %2790 = fmul fast float %2789, %2705
  br label %2791

; <label>:2791                                    ; preds = %2763, %2761, %2748, %2718, %2702
  %2792 = phi float [ %2703, %2702 ], [ %2780, %2763 ], [ %2703, %2761 ], [ %2758, %2748 ], [ %2728, %2718 ]
  %2793 = phi float [ %2704, %2702 ], [ %2785, %2763 ], [ %2704, %2761 ], [ %2759, %2748 ], [ %2729, %2718 ]
  %2794 = phi float [ %2705, %2702 ], [ %2790, %2763 ], [ %2705, %2761 ], [ %2760, %2748 ], [ %2730, %2718 ]
  %2795 = phi float [ %2706, %2702 ], [ %2706, %2763 ], [ %2706, %2761 ], [ %2706, %2748 ], [ %2740, %2718 ]
  %2796 = phi float [ %2707, %2702 ], [ %2707, %2763 ], [ %2707, %2761 ], [ %2707, %2748 ], [ %2741, %2718 ]
  %2797 = phi float [ %2708, %2702 ], [ %2708, %2763 ], [ %2708, %2761 ], [ %2708, %2748 ], [ %2742, %2718 ]
  %2798 = phi float [ %1900, %2702 ], [ %1900, %2763 ], [ %1900, %2761 ], [ %1900, %2748 ], [ %2733, %2718 ]
  %2799 = phi float [ %1904, %2702 ], [ %1904, %2763 ], [ %1904, %2761 ], [ %1904, %2748 ], [ %2745, %2718 ]
  %2800 = and i32 %2710, 12
  %2801 = icmp eq i32 %2800, 12
  br i1 %2801, label %2884, label %2802

; <label>:2802                                    ; preds = %2791
  %2803 = and i32 %2710, 2097184
  %2804 = icmp eq i32 %2803, 2097184
  %2805 = select i1 %2804, float %2202, float 0.000000e+00
  %2806 = and i32 %2710, 4194336
  %2807 = icmp eq i32 %2806, 4194336
  %2808 = select i1 %2807, float %2202, float 0.000000e+00
  %2809 = and i32 %2710, 8388640
  %2810 = icmp eq i32 %2809, 8388640
  %2811 = select i1 %2810, float %2202, float 0.000000e+00
  %2812 = and i32 %2710, 16384
  %2813 = icmp ne i32 %2812, 0
  %2814 = select i1 %2813, float %2202, float 0.000000e+00
  %2815 = icmp eq i32 %2800, 0
  br i1 %2815, label %2816, label %2832

; <label>:2816                                    ; preds = %2802
  %2817 = fsub fast float %2503, %1892
  %2818 = fsub fast float %2504, %1893
  %2819 = fmul fast float %2805, %2817
  %2820 = fmul fast float %2805, %2818
  %2821 = fadd fast float %2819, %1892
  %2822 = fadd fast float %2820, %1893
  %2823 = fsub fast float %2505, %1902
  %2824 = fmul fast float %2808, %2823
  %2825 = fadd fast float %2824, %1902
  %2826 = fsub fast float %2502, %1901
  %2827 = fmul fast float %2811, %2826
  %2828 = fadd fast float %2827, %1901
  %2829 = fsub fast float %2653, %1903
  %2830 = fmul fast float %2814, %2829
  %2831 = fadd fast float %2830, %1903
  br label %2884

; <label>:2832                                    ; preds = %2802
  %2833 = icmp eq i32 %2800, 4
  br i1 %2833, label %2834, label %2868

; <label>:2834                                    ; preds = %2832
  %2835 = fmul fast float %2805, %2503
  %2836 = fmul fast float %2805, %2504
  %2837 = fadd fast float %2835, %1892
  %2838 = fadd fast float %2836, %1893
  %2839 = call float @dx.op.binary.f32(i32 36, float %1902, float %2505)  ; FMin(a,b)
  %2840 = fsub fast float %2839, %1902
  %2841 = fmul fast float %2840, %2808
  %2842 = fadd fast float %2841, %1902
  %2843 = fadd fast float %2502, %1901
  %2844 = fmul fast float %2843, 0x3FF337FAE0000000
  %2845 = fmul fast float %1901, %1901
  %2846 = fmul fast float %2502, %2502
  %2847 = fadd fast float %2846, %2845
  %2848 = fmul fast float %2847, 0x3FE5152B00000000
  %2849 = fmul fast float %1901, 0xBFCC1F85E0000000
  %2850 = fmul fast float %2849, %2502
  %2851 = fadd fast float %2850, 0xBFE1363700000000
  %2852 = fadd fast float %2851, %2844
  %2853 = fsub fast float %2852, %2848
  %2854 = fmul fast float %2843, 0x3FBA6F0D00000000
  %2855 = fmul fast float %2847, 0x3FD0432880000000
  %2856 = fmul fast float %1901, 0xBFEF110800000000
  %2857 = fmul fast float %2856, %2502
  %2858 = fadd fast float %2857, 1.000000e+00
  %2859 = fsub fast float %2858, %2854
  %2860 = fadd fast float %2859, %2855
  %2861 = fdiv fast float %2853, %2860
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = fsub fast float %2862, %1901
  %2864 = fmul fast float %2863, %2811
  %2865 = fadd fast float %2864, %1901
  %2866 = fmul fast float %2814, %2653
  %2867 = fadd fast float %2866, %1903
  br label %2884

; <label>:2868                                    ; preds = %2832
  %2869 = icmp eq i32 %2800, 8
  br i1 %2869, label %2870, label %2884

; <label>:2870                                    ; preds = %2868
  %2871 = fmul fast float %2805, %2503
  %2872 = fmul fast float %2805, %2504
  %2873 = fadd fast float %2871, %1892
  %2874 = fadd fast float %2872, %1893
  %2875 = call float @dx.op.binary.f32(i32 36, float %1902, float %2505)  ; FMin(a,b)
  %2876 = fsub fast float %2875, %1902
  %2877 = fmul fast float %2876, %2808
  %2878 = fadd fast float %2877, %1902
  %2879 = fsub fast float %2502, %1901
  %2880 = fmul fast float %2811, %2879
  %2881 = fadd fast float %2880, %1901
  %2882 = fmul fast float %2814, %2653
  %2883 = fadd fast float %2882, %1903
  br label %2884

; <label>:2884                                    ; preds = %2870, %2868, %2834, %2816, %2791, %2201, %1905, %1891
  %2885 = phi float [ %1892, %2791 ], [ %1892, %2201 ], [ %1892, %1891 ], [ %2873, %2870 ], [ %1892, %2868 ], [ %2837, %2834 ], [ %2821, %2816 ], [ %1892, %1905 ]
  %2886 = phi float [ %1893, %2791 ], [ %1893, %2201 ], [ %1893, %1891 ], [ %2874, %2870 ], [ %1893, %2868 ], [ %2838, %2834 ], [ %2822, %2816 ], [ %1893, %1905 ]
  %2887 = phi float [ %2792, %2791 ], [ %1894, %2201 ], [ %1894, %1891 ], [ %2792, %2870 ], [ %2792, %2868 ], [ %2792, %2834 ], [ %2792, %2816 ], [ %1894, %1905 ]
  %2888 = phi float [ %2793, %2791 ], [ %1895, %2201 ], [ %1895, %1891 ], [ %2793, %2870 ], [ %2793, %2868 ], [ %2793, %2834 ], [ %2793, %2816 ], [ %1895, %1905 ]
  %2889 = phi float [ %2794, %2791 ], [ %1896, %2201 ], [ %1896, %1891 ], [ %2794, %2870 ], [ %2794, %2868 ], [ %2794, %2834 ], [ %2794, %2816 ], [ %1896, %1905 ]
  %2890 = phi float [ %2795, %2791 ], [ %1897, %2201 ], [ %1897, %1891 ], [ %2795, %2870 ], [ %2795, %2868 ], [ %2795, %2834 ], [ %2795, %2816 ], [ %1897, %1905 ]
  %2891 = phi float [ %2796, %2791 ], [ %1898, %2201 ], [ %1898, %1891 ], [ %2796, %2870 ], [ %2796, %2868 ], [ %2796, %2834 ], [ %2796, %2816 ], [ %1898, %1905 ]
  %2892 = phi float [ %2797, %2791 ], [ %1899, %2201 ], [ %1899, %1891 ], [ %2797, %2870 ], [ %2797, %2868 ], [ %2797, %2834 ], [ %2797, %2816 ], [ %1899, %1905 ]
  %2893 = phi float [ %2798, %2791 ], [ %1900, %2201 ], [ %1900, %1891 ], [ %2798, %2870 ], [ %2798, %2868 ], [ %2798, %2834 ], [ %2798, %2816 ], [ %1900, %1905 ]
  %2894 = phi float [ %1901, %2791 ], [ %1901, %2201 ], [ %1901, %1891 ], [ %2881, %2870 ], [ %1901, %2868 ], [ %2865, %2834 ], [ %2828, %2816 ], [ %1901, %1905 ]
  %2895 = phi float [ %1902, %2791 ], [ %1902, %2201 ], [ %1902, %1891 ], [ %2878, %2870 ], [ %1902, %2868 ], [ %2842, %2834 ], [ %2825, %2816 ], [ %1902, %1905 ]
  %2896 = phi float [ %1903, %2791 ], [ %1903, %2201 ], [ %1903, %1891 ], [ %2883, %2870 ], [ %1903, %2868 ], [ %2867, %2834 ], [ %2831, %2816 ], [ %1903, %1905 ]
  %2897 = phi float [ %2799, %2791 ], [ %1904, %2201 ], [ %1904, %1891 ], [ %2799, %2870 ], [ %2799, %2868 ], [ %2799, %2834 ], [ %2799, %2816 ], [ %1904, %1905 ]
  br i1 %350, label %3877, label %2898

; <label>:2898                                    ; preds = %2884
  %2899 = icmp ult i32 %401, 4
  %2900 = add i32 %33, 72
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %33, 76
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = or i32 %2905, %2902
  %2907 = icmp eq i32 %2906, 0
  br i1 %2907, label %3877, label %2908

; <label>:2908                                    ; preds = %2898
  %2909 = and i32 %2902, 262144
  %2910 = icmp ne i32 %2909, 0
  %2911 = select i1 %2910, float %36, float 1.000000e+00
  %2912 = select i1 %2910, float %37, float 0.000000e+00
  %2913 = select i1 %2910, float %38, float 0.000000e+00
  %2914 = select i1 %2910, float %39, float 1.000000e+00
  %2915 = select i1 %2910, float %40, float %56
  %2916 = select i1 %2910, float %41, float %57
  %2917 = add i32 %33, 332
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = lshr i32 %2919, 16
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = fmul fast float %2921, 0x3F50624DE0000000
  %2923 = add i32 %33, 136
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = lshr i32 %2925, 16
  %2927 = and i32 %2926, 255
  %2928 = lshr i32 %2925, 24
  %2929 = add i32 %33, 340
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = lshr i32 %2931, 16
  %2935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2934)  ; LegacyF16ToF32(value)
  %2936 = add i32 %33, 80
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = lshr i32 %2938, 22
  %2940 = shl nuw nsw i32 %2939, 5
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = shl i32 %2938, 4
  %2943 = and i32 %2942, 32752
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = lshr i32 %2938, 7
  %2946 = and i32 %2945, 32752
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 3
  %2950 = fmul fast float %2949, 1.000000e+03
  %2951 = fmul fast float %340, %2950
  %2952 = call float @dx.op.unary.f32(i32 22, float %2951)  ; Frc(value)
  %2953 = fadd fast float %2952, %330
  %2954 = fmul fast float %341, %2950
  %2955 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2956 = fadd fast float %2955, %332
  %2957 = fmul fast float %2922, %2950
  %2958 = call float @dx.op.unary.f32(i32 22, float %2957)  ; Frc(value)
  %2959 = fmul fast float %2958, 0x401921FB60000000
  %2960 = fadd fast float %2959, %2941
  %2961 = call float @dx.op.unary.f32(i32 13, float %2960)  ; Sin(value)
  %2962 = call float @dx.op.unary.f32(i32 12, float %2960)  ; Cos(value)
  %2963 = fsub fast float -0.000000e+00, %2961
  %2964 = fadd fast float %2915, -5.000000e-01
  %2965 = fadd fast float %2916, -5.000000e-01
  %2966 = fmul fast float %2933, %2964
  %2967 = fmul fast float %2935, %2965
  %2968 = fadd fast float %2966, 5.000000e-01
  %2969 = fadd fast float %2967, 5.000000e-01
  %2970 = fmul fast float %2944, %2968
  %2971 = fmul fast float %2947, %2969
  %2972 = fmul fast float %2962, %2970
  %2973 = call float @dx.op.tertiary.f32(i32 46, float %2963, float %2971, float %2972)  ; FMad(a,b,c)
  %2974 = fmul fast float %2961, %2970
  %2975 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %2971, float %2974)  ; FMad(a,b,c)
  %2976 = fadd fast float %2953, %2973
  %2977 = fadd fast float %2956, %2975
  %2978 = icmp ugt i32 %2927, 1
  %2979 = icmp ugt i32 %2925, 33554431
  %2980 = or i1 %2979, %2978
  br i1 %2980, label %2981, label %3006

; <label>:2981                                    ; preds = %2908
  %2982 = add i32 %33, 276
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = lshr i32 %2984, 16
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = fmul fast float %2949, %2986
  %2988 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2989 = mul nuw nsw i32 %2927, %2928
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2988, %2990
  %2992 = call float @dx.op.unary.f32(i32 27, float %2991)  ; Round_ni(value)
  %2993 = fptoui float %2992 to i32
  %2994 = urem i32 %2993, %2927
  %2995 = udiv i32 %2993, %2928
  %2996 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2997 = call float @dx.op.unary.f32(i32 22, float %2977)  ; Frc(value)
  %2998 = uitofp i32 %2994 to float
  %2999 = uitofp i32 %2995 to float
  %3000 = fadd fast float %2996, %2998
  %3001 = fadd fast float %2997, %2999
  %3002 = uitofp i32 %2927 to float
  %3003 = uitofp i32 %2928 to float
  %3004 = fdiv fast float %3000, %3002
  %3005 = fdiv fast float %3001, %3003
  br label %3006

; <label>:3006                                    ; preds = %2981, %2908
  %3007 = phi float [ %3004, %2981 ], [ %2976, %2908 ]
  %3008 = phi float [ %3005, %2981 ], [ %2977, %2908 ]
  %3009 = and i32 %2902, 16777216
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3120, label %3011

; <label>:3011                                    ; preds = %3006
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.CBufRet.f32 %3012, 2
  %3016 = fadd fast float %3013, %131
  %3017 = fadd fast float %3014, %132
  %3018 = fadd fast float %3015, %133
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = icmp eq i32 %34, 65535
  br i1 %3022, label %3117, label %3023

; <label>:3023                                    ; preds = %3011
  %3024 = lshr i32 %34, 1
  %3025 = shl i32 %3024, 2
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %34, 1
  %3029 = icmp ne i32 %3028, 0
  %3030 = lshr i32 %3027, 16
  %3031 = and i32 %3027, 65535
  %3032 = select i1 %3029, i32 %3030, i32 %3031
  %3033 = icmp eq i32 %3032, 65535
  br i1 %3033, label %3113, label %3034

; <label>:3034                                    ; preds = %3023
  %3035 = mul nuw nsw i32 %3032, 40
  %3036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = add nuw nsw i32 %3035, 12
  %3041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.f32 %3041, 0
  %3043 = extractvalue %dx.types.ResRet.f32 %3041, 1
  %3044 = extractvalue %dx.types.ResRet.f32 %3041, 2
  %3045 = add nuw nsw i32 %3035, 24
  %3046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.f32 %3046, 0
  %3048 = extractvalue %dx.types.ResRet.f32 %3046, 1
  %3049 = extractvalue %dx.types.ResRet.f32 %3046, 2
  %3050 = add nuw nsw i32 %3035, 36
  %3051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = fsub fast float %3016, %3037
  %3054 = fsub fast float %3017, %3038
  %3055 = fsub fast float %3018, %3039
  %3056 = fmul fast float %3052, %3053
  %3057 = fmul fast float %3052, %3054
  %3058 = fmul fast float %3052, %3055
  %3059 = call float @dx.op.unary.f32(i32 27, float %3056)  ; Round_ni(value)
  %3060 = call float @dx.op.unary.f32(i32 27, float %3057)  ; Round_ni(value)
  %3061 = call float @dx.op.unary.f32(i32 27, float %3058)  ; Round_ni(value)
  %3062 = fadd fast float %3059, 5.000000e-01
  %3063 = fadd fast float %3060, 5.000000e-01
  %3064 = fadd fast float %3061, 5.000000e-01
  %3065 = fmul fast float %3062, %3042
  %3066 = fmul fast float %3063, %3043
  %3067 = fmul fast float %3064, %3044
  %3068 = shl i32 %34, 2
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = add i32 %3070, 0
  %3072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3073 = call float @dx.op.unary.f32(i32 22, float %3065)  ; Frc(value)
  %3074 = call float @dx.op.unary.f32(i32 22, float %3066)  ; Frc(value)
  %3075 = call float @dx.op.unary.f32(i32 22, float %3067)  ; Frc(value)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3072, %dx.types.Handle %30, float %3073, float %3074, float %3075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = extractvalue %dx.types.ResRet.f32 %3076, 1
  %3079 = extractvalue %dx.types.ResRet.f32 %3076, 2
  %3080 = fmul fast float %3077, 1.023000e+03
  %3081 = fmul fast float %3078, 1.023000e+03
  %3082 = fmul fast float %3079, 1.023000e+03
  %3083 = fadd fast float %3080, 5.000000e-01
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = call float @dx.op.unary.f32(i32 27, float %3083)  ; Round_ni(value)
  %3087 = call float @dx.op.unary.f32(i32 27, float %3084)  ; Round_ni(value)
  %3088 = call float @dx.op.unary.f32(i32 27, float %3085)  ; Round_ni(value)
  %3089 = fsub fast float %3056, %3059
  %3090 = fsub fast float %3057, %3060
  %3091 = fsub fast float %3058, %3061
  %3092 = fmul fast float %3089, 7.500000e-01
  %3093 = fmul fast float %3090, 7.500000e-01
  %3094 = fmul fast float %3091, 7.500000e-01
  %3095 = fadd fast float %3059, 1.250000e-01
  %3096 = fadd fast float %3095, %3092
  %3097 = fadd fast float %3096, %3086
  %3098 = fadd fast float %3060, 1.250000e-01
  %3099 = fadd fast float %3098, %3093
  %3100 = fadd fast float %3099, %3087
  %3101 = fadd fast float %3061, 1.250000e-01
  %3102 = fadd fast float %3101, %3094
  %3103 = fadd fast float %3102, %3088
  %3104 = fmul fast float %3097, %3047
  %3105 = fmul fast float %3100, %3048
  %3106 = fmul fast float %3103, %3049
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %3108, 0
  %3110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3110, %dx.types.Handle %28, float %3104, float %3105, float %3106, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  br label %3113

; <label>:3113                                    ; preds = %3034, %3023
  %3114 = phi float [ %3112, %3034 ], [ -1.000000e+00, %3023 ]
  %3115 = fadd fast float %3114, %3021
  %3116 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  br label %3117

; <label>:3117                                    ; preds = %3113, %3011
  %3118 = phi float [ %3116, %3113 ], [ %3021, %3011 ]
  %3119 = fmul fast float %3118, %396
  br label %3120

; <label>:3120                                    ; preds = %3117, %3006
  %3121 = phi float [ %3119, %3117 ], [ %396, %3006 ]
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 256
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3172, label %3126

; <label>:3126                                    ; preds = %3120
  %3127 = add i32 %33, 436
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %65, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = add i32 %33, 148
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = shl i32 %3136, 4
  %3138 = and i32 %3137, 32752
  %3139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3138)  ; LegacyF16ToF32(value)
  %3140 = lshr i32 %3136, 7
  %3141 = and i32 %3140, 32752
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = fsub fast float 1.000000e+00, %3121
  %3144 = call float @dx.op.binary.f32(i32 35, float %3143, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3145 = bitcast float %3121 to i32
  %3146 = sitofp i32 %3145 to float
  %3147 = fadd fast float %3146, 0xC1CFBF8940000000
  %3148 = fmul fast float %3142, %3147
  %3149 = fadd fast float %3148, 0x41CFBF8940000000
  %3150 = fptosi float %3149 to i32
  %3151 = bitcast i32 %3150 to float
  %3152 = bitcast float %3144 to i32
  %3153 = sitofp i32 %3152 to float
  %3154 = fadd fast float %3153, 0xC1CFBF8940000000
  %3155 = fmul fast float %3154, %3142
  %3156 = fadd fast float %3155, 0x41CFBF8940000000
  %3157 = fptosi float %3156 to i32
  %3158 = bitcast i32 %3157 to float
  %3159 = fmul fast float %3151, %3139
  %3160 = fmul fast float %3158, %3139
  %3161 = fsub fast float %3144, %3159
  %3162 = fadd fast float %3160, %3144
  %3163 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  %3164 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3165 = fsub fast float %3133, %3163
  %3166 = fsub fast float %3164, %3163
  %3167 = bitcast float %3166 to i32
  %3168 = sub nsw i32 2129859010, %3167
  %3169 = bitcast i32 %3168 to float
  %3170 = fmul fast float %3169, %3165
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  br label %3172

; <label>:3172                                    ; preds = %3126, %3120
  %3173 = phi float [ %3171, %3126 ], [ %3121, %3120 ]
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 128
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3194, label %3178

; <label>:3178                                    ; preds = %3172
  %3179 = add i32 %33, 420
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = add i32 %3181, 0
  %3183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3183, %dx.types.Handle %65, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 524288
  %3189 = icmp ne i32 %3188, 0
  %3190 = fcmp fast ogt float %3185, 0x3FE0101020000000
  %3191 = select i1 %3190, float 1.000000e+00, float 0.000000e+00
  %3192 = select i1 %3189, float %3191, float %3185
  %3193 = fmul fast float %3192, %3173
  br label %3194

; <label>:3194                                    ; preds = %3178, %3172
  %3195 = phi float [ %3193, %3178 ], [ %3173, %3172 ]
  %3196 = fcmp fast ult float %3195, 0x3F70101020000000
  br i1 %3196, label %3877, label %3197

; <label>:3197                                    ; preds = %3194
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 16
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3400, label %3202

; <label>:3202                                    ; preds = %3197
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = add i32 %33, 372
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %3207, 0
  %3209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3209, %dx.types.Handle %64, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = extractvalue %dx.types.ResRet.f32 %3210, 1
  %3213 = extractvalue %dx.types.ResRet.f32 %3210, 2
  %3214 = extractvalue %dx.types.ResRet.f32 %3210, 3
  %3215 = and i32 %3204, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = lshr i32 %3204, 8
  %3218 = and i32 %3217, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3214, %3216
  %3221 = fadd fast float %3220, %3219
  %3222 = fmul fast float %3221, 0x3F70101000000000
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 512
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %3235, label %3227

; <label>:3227                                    ; preds = %3202
  %3228 = add i32 %33, 452
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %65, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  br label %3235

; <label>:3235                                    ; preds = %3227, %3202
  %3236 = phi float [ %3234, %3227 ], [ 1.000000e+00, %3202 ]
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = and i32 %3238, 33554432
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %3347, label %3241

; <label>:3241                                    ; preds = %3235
  %3242 = add i32 %33, 272
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 65535
  %3246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3245)  ; LegacyF16ToF32(value)
  %3247 = lshr i32 %3244, 16
  %3248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3247)  ; LegacyF16ToF32(value)
  %3249 = add i32 %33, 276
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 65535
  %3253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3252)  ; LegacyF16ToF32(value)
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = lshr i32 %3255, 24
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = and i32 %3255, 255
  %3260 = uitofp i32 %3259 to float
  %3261 = fmul fast float %3260, 0x3F70101020000000
  %3262 = lshr i32 %3255, 8
  %3263 = and i32 %3262, 255
  %3264 = uitofp i32 %3263 to float
  %3265 = fmul fast float %3264, 0x3F70101020000000
  %3266 = lshr i32 %3255, 16
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = fmul fast float %3268, 0x3F70101020000000
  %3270 = add i32 %33, 268
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = lshr i32 %3272, 24
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3274, 0x3F70101020000000
  %3276 = and i32 %3272, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = fmul fast float %3277, 0x3F70101020000000
  %3279 = lshr i32 %3272, 8
  %3280 = and i32 %3279, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = fmul fast float %3281, 0x3F70101020000000
  %3283 = lshr i32 %3272, 16
  %3284 = and i32 %3283, 255
  %3285 = uitofp i32 %3284 to float
  %3286 = fmul fast float %3285, 0x3F70101020000000
  %3287 = bitcast float %3211 to i32
  %3288 = ashr i32 %3287, 1
  %3289 = sub nsw i32 1597463174, %3288
  %3290 = bitcast i32 %3289 to float
  %3291 = fmul fast float %3211, 5.000000e-01
  %3292 = fmul fast float %3290, %3290
  %3293 = fmul fast float %3292, %3291
  %3294 = fsub fast float 1.500000e+00, %3293
  %3295 = fmul fast float %3290, %3211
  %3296 = fmul fast float %3295, %3294
  %3297 = bitcast float %3212 to i32
  %3298 = ashr i32 %3297, 1
  %3299 = sub nsw i32 1597463174, %3298
  %3300 = bitcast i32 %3299 to float
  %3301 = fmul fast float %3212, 5.000000e-01
  %3302 = fmul fast float %3300, %3300
  %3303 = fmul fast float %3302, %3301
  %3304 = fsub fast float 1.500000e+00, %3303
  %3305 = fmul fast float %3300, %3212
  %3306 = fmul fast float %3305, %3304
  %3307 = bitcast float %3213 to i32
  %3308 = ashr i32 %3307, 1
  %3309 = sub nsw i32 1597463174, %3308
  %3310 = bitcast i32 %3309 to float
  %3311 = fmul fast float %3213, 5.000000e-01
  %3312 = fmul fast float %3310, %3310
  %3313 = fmul fast float %3312, %3311
  %3314 = fsub fast float 1.500000e+00, %3313
  %3315 = fmul fast float %3310, %3213
  %3316 = fmul fast float %3315, %3314
  %3317 = fsub fast float %3296, %3278
  %3318 = fsub fast float %3306, %3282
  %3319 = fsub fast float %3316, %3286
  %3320 = fmul fast float %3317, %3246
  %3321 = fmul fast float %3318, %3248
  %3322 = fmul fast float %3319, %3253
  %3323 = fadd fast float %3320, %3261
  %3324 = fadd fast float %3321, %3265
  %3325 = fadd fast float %3322, %3269
  %3326 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  %3327 = call float @dx.op.unary.f32(i32 7, float %3324)  ; Saturate(value)
  %3328 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3329 = fmul fast float %3326, %3326
  %3330 = fmul fast float %3327, %3327
  %3331 = fmul fast float %3328, %3328
  %3332 = fsub fast float %3329, %3211
  %3333 = fsub fast float %3330, %3212
  %3334 = fsub fast float %3331, %3213
  %3335 = fmul fast float %3332, %3236
  %3336 = fmul fast float %3333, %3236
  %3337 = fmul fast float %3334, %3236
  %3338 = fadd fast float %3335, %3211
  %3339 = fadd fast float %3336, %3212
  %3340 = fadd fast float %3337, %3213
  %3341 = fadd fast float %3258, %3222
  %3342 = fsub fast float %3341, %3275
  %3343 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3344 = fsub fast float %3343, %3222
  %3345 = fmul fast float %3344, %3236
  %3346 = fadd fast float %3345, %3222
  br label %3400

; <label>:3347                                    ; preds = %3235
  %3348 = and i32 %3238, 134217728
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3384, label %3350

; <label>:3350                                    ; preds = %3347
  %3351 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3352 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fadd fast float %3352, -5.000000e-01
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fmul fast float %3354, %3236
  %3358 = fmul fast float %3355, %3236
  %3359 = fmul fast float %3356, %3236
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = call float @dx.op.unary.f32(i32 24, float %3211)  ; Sqrt(value)
  %3364 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3365 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3366 = fmul fast float %3360, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3363
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3363
  %3371 = fmul fast float %3361, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3364
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3364
  %3376 = fmul fast float %3362, 2.000000e+00
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3377, %3365
  %3379 = fadd fast float %3378, %3376
  %3380 = fmul fast float %3379, %3365
  %3381 = fmul fast float %3370, %3370
  %3382 = fmul fast float %3375, %3375
  %3383 = fmul fast float %3380, %3380
  br label %3400

; <label>:3384                                    ; preds = %3347
  %3385 = fmul fast float %317, %317
  %3386 = fmul fast float %321, %321
  %3387 = fmul fast float %325, %325
  %3388 = fadd fast float %3385, -1.000000e+00
  %3389 = fadd fast float %3386, -1.000000e+00
  %3390 = fadd fast float %3387, -1.000000e+00
  %3391 = fmul fast float %3236, %3388
  %3392 = fmul fast float %3236, %3389
  %3393 = fmul fast float %3236, %3390
  %3394 = fadd fast float %3391, 1.000000e+00
  %3395 = fadd fast float %3392, 1.000000e+00
  %3396 = fadd fast float %3393, 1.000000e+00
  %3397 = fmul fast float %3394, %3211
  %3398 = fmul fast float %3395, %3212
  %3399 = fmul fast float %3396, %3213
  br label %3400

; <label>:3400                                    ; preds = %3384, %3350, %3241, %3197
  %3401 = phi float [ %3346, %3241 ], [ %3222, %3350 ], [ %3222, %3384 ], [ 0x3FA23C0BE0000000, %3197 ]
  %3402 = phi float [ %3338, %3241 ], [ %3381, %3350 ], [ %3397, %3384 ], [ 1.000000e+00, %3197 ]
  %3403 = phi float [ %3339, %3241 ], [ %3382, %3350 ], [ %3398, %3384 ], [ 1.000000e+00, %3197 ]
  %3404 = phi float [ %3340, %3241 ], [ %3383, %3350 ], [ %3399, %3384 ], [ 1.000000e+00, %3197 ]
  %3405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.i32 %3405, 1
  %3407 = and i32 %3406, 1
  %3408 = icmp ne i32 %3407, 0
  %3409 = add i32 %33, 356
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 32
  %3413 = icmp ne i32 %3412, 0
  %3414 = and i1 %3408, %3413
  %3415 = select i1 %3414, float 1.000000e+00, float %3402
  %3416 = select i1 %3414, float 0x3FD3333340000000, float %3403
  %3417 = select i1 %3414, float 0x3FD3333340000000, float %3404
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 32
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3494, label %3422

; <label>:3422                                    ; preds = %3400
  %3423 = add i32 %33, 140
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = add i32 %33, 388
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = add i32 %3428, 0
  %3430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3430, %dx.types.Handle %64, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.ResRet.f32 %3431, 2
  %3435 = extractvalue %dx.types.ResRet.f32 %3431, 3
  %3436 = and i32 %3425, 255
  %3437 = uitofp i32 %3436 to float
  %3438 = lshr i32 %3425, 8
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = lshr i32 %3425, 16
  %3442 = and i32 %3441, 255
  %3443 = uitofp i32 %3442 to float
  %3444 = fmul fast float %3443, 0x3F70101000000000
  %3445 = fmul fast float %3432, %3437
  %3446 = fadd fast float %3445, %3440
  %3447 = fmul fast float %3446, 0x3F70101000000000
  %3448 = fadd fast float %3433, -5.000000e-01
  %3449 = fadd fast float %3435, -5.000000e-01
  %3450 = fmul fast float %3448, %3444
  %3451 = fmul fast float %3449, %3444
  %3452 = fadd fast float %3450, 5.000000e-01
  %3453 = fadd fast float %3451, 5.000000e-01
  %3454 = fmul fast float %3452, 2.000000e+00
  %3455 = fadd fast float %3454, -1.000000e+00
  %3456 = fmul fast float %3453, 2.000000e+00
  %3457 = fadd fast float %3456, -1.000000e+00
  %3458 = fadd fast float %3455, %3457
  %3459 = fmul fast float %3458, 5.000000e-01
  %3460 = fsub fast float %3455, %3457
  %3461 = fmul fast float %3460, 5.000000e-01
  %3462 = call float @dx.op.unary.f32(i32 6, float %3459)  ; FAbs(value)
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3465 = fsub fast float %3463, %3464
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3461, float %3465, float %3459, float %3461, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call float @dx.op.unary.f32(i32 25, float %3466)  ; Rsqrt(value)
  %3468 = fmul fast float %3459, %3467
  %3469 = fmul fast float %3461, %3467
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 67108864
  %3473 = icmp eq i32 %3472, 0
  br i1 %3473, label %3490, label %3474

; <label>:3474                                    ; preds = %3422
  %3475 = add i32 %33, 328
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = and i32 %3477, 65535
  %3479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3478)  ; LegacyF16ToF32(value)
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = and i32 %3481, 65535
  %3483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3482)  ; LegacyF16ToF32(value)
  %3484 = lshr i32 %3477, 16
  %3485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3484)  ; LegacyF16ToF32(value)
  %3486 = fsub fast float %3447, %3485
  %3487 = fmul fast float %3486, %3479
  %3488 = fadd fast float %3487, %3483
  %3489 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  br label %3490

; <label>:3490                                    ; preds = %3474, %3422
  %3491 = phi float [ %3489, %3474 ], [ %3447, %3422 ]
  %3492 = call float @dx.op.dot2.f32(i32 54, float %3468, float %3469, float %2911, float %2912)  ; Dot2(ax,ay,bx,by)
  %3493 = call float @dx.op.dot2.f32(i32 54, float %3468, float %3469, float %2913, float %2914)  ; Dot2(ax,ay,bx,by)
  br label %3494

; <label>:3494                                    ; preds = %3490, %3400
  %3495 = phi float [ %3491, %3490 ], [ 0x3FD6666660000000, %3400 ]
  %3496 = phi float [ %3492, %3490 ], [ 0.000000e+00, %3400 ]
  %3497 = phi float [ %3493, %3490 ], [ 0.000000e+00, %3400 ]
  %3498 = phi float [ %3434, %3490 ], [ 1.000000e+00, %3400 ]
  %3499 = add i32 %33, 208
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 22
  %3503 = shl nuw nsw i32 %3502, 5
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 64
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3542, label %3509

; <label>:3509                                    ; preds = %3494
  %3510 = add i32 %33, 404
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = add i32 %3512, 0
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 131072
  %3518 = icmp eq i32 %3517, 0
  %3519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3514, %dx.types.Handle %64, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = fmul fast float %3520, %305
  %3524 = fmul fast float %3521, %308
  %3525 = fmul fast float %3522, %311
  br i1 %3518, label %3532, label %3526

; <label>:3526                                    ; preds = %3509
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = fmul fast float %3528, %3523
  %3530 = fmul fast float %3528, %3524
  %3531 = fmul fast float %3528, %3525
  br label %3532

; <label>:3532                                    ; preds = %3526, %3509
  %3533 = phi float [ %3529, %3526 ], [ %3523, %3509 ]
  %3534 = phi float [ %3530, %3526 ], [ %3524, %3509 ]
  %3535 = phi float [ %3531, %3526 ], [ %3525, %3509 ]
  %3536 = fmul fast float %3533, %3504
  %3537 = select i1 %173, float %3536, float %3533
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3537, float %3534, float %3535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = select i1 %173, float 0.000000e+00, float %3533
  %3540 = select i1 %173, float %3538, float %3534
  %3541 = select i1 %173, float 0.000000e+00, float %3535
  br label %3542

; <label>:3542                                    ; preds = %3532, %3494
  %3543 = phi float [ %3539, %3532 ], [ 0.000000e+00, %3494 ]
  %3544 = phi float [ %3540, %3532 ], [ 0.000000e+00, %3494 ]
  %3545 = phi float [ %3541, %3532 ], [ 0.000000e+00, %3494 ]
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = and i32 %3547, 1024
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3580, label %3550

; <label>:3550                                    ; preds = %3542
  %3551 = add i32 %33, 200
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = fmul fast float %3555, 0x3F70101020000000
  %3557 = lshr i32 %3553, 8
  %3558 = and i32 %3557, 255
  %3559 = uitofp i32 %3558 to float
  %3560 = fmul fast float %3559, 0x3F70101020000000
  %3561 = lshr i32 %3553, 16
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = fmul fast float %3563, 0x3F70101020000000
  %3565 = fmul fast float %3556, %3556
  %3566 = fmul fast float %3560, %3560
  %3567 = fmul fast float %3564, %3564
  %3568 = add i32 %33, 468
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = add i32 %3570, 0
  %3572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3572, %dx.types.Handle %65, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = fmul fast float %3565, %3574
  %3578 = fmul fast float %3566, %3575
  %3579 = fmul fast float %3567, %3576
  br label %3580

; <label>:3580                                    ; preds = %3550, %3542
  %3581 = phi float [ %3577, %3550 ], [ 0.000000e+00, %3542 ]
  %3582 = phi float [ %3578, %3550 ], [ 0.000000e+00, %3542 ]
  %3583 = phi float [ %3579, %3550 ], [ 0.000000e+00, %3542 ]
  %3584 = fcmp fast ogt float %3581, 0.000000e+00
  %3585 = fcmp fast ogt float %3582, 0.000000e+00
  %3586 = fcmp fast ogt float %3583, 0.000000e+00
  %3587 = call float @dx.op.unary.f32(i32 23, float %3581)  ; Log(value)
  %3588 = call float @dx.op.unary.f32(i32 23, float %3582)  ; Log(value)
  %3589 = call float @dx.op.unary.f32(i32 23, float %3583)  ; Log(value)
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = lshr i32 %3591, 7
  %3593 = and i32 %3592, 32752
  %3594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3593)  ; LegacyF16ToF32(value)
  %3595 = fmul fast float %3587, 0xBFE62E4300000000
  %3596 = fmul fast float %3595, %3594
  %3597 = fmul fast float %3588, 0xBFE62E4300000000
  %3598 = fmul fast float %3597, %3594
  %3599 = fmul fast float %3589, 0xBFE62E4300000000
  %3600 = fmul fast float %3599, %3594
  %3601 = select i1 %3584, float %3596, float 1.270000e+02
  %3602 = select i1 %3585, float %3598, float 1.270000e+02
  %3603 = select i1 %3586, float %3600, float 1.270000e+02
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = and i32 %3605, 26624
  %3607 = icmp eq i32 %3606, 0
  br i1 %3607, label %3644, label %3608

; <label>:3608                                    ; preds = %3580
  %3609 = add i32 %33, 484
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = add i32 %3611, 0
  %3613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3613, %dx.types.Handle %65, float %3007, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = and i32 %3617, 1048576
  %3619 = icmp ne i32 %3618, 0
  %3620 = and i32 %3617, 2048
  %3621 = icmp eq i32 %3620, 0
  br i1 %3621, label %3631, label %3622

; <label>:3622                                    ; preds = %3608
  %3623 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = shl i32 %3625, 4
  %3627 = and i32 %3626, 32752
  %3628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3627)  ; LegacyF16ToF32(value)
  %3629 = fmul fast float %3628, %3623
  %3630 = call float @dx.op.binary.f32(i32 35, float %3629, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3631

; <label>:3631                                    ; preds = %3622, %3608
  %3632 = phi float [ %3630, %3622 ], [ 0x3F70101020000000, %3608 ]
  %3633 = and i32 %3617, 16384
  %3634 = icmp eq i32 %3633, 0
  br i1 %3634, label %3644, label %3635

; <label>:3635                                    ; preds = %3631
  %3636 = add i32 %33, 144
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = lshr i32 %3638, 24
  %3640 = uitofp i32 %3639 to float
  %3641 = fmul fast float %3615, 0x3F70101020000000
  %3642 = select i1 %3619, float 0x3F70101020000000, float %3641
  %3643 = fmul fast float %3642, %3640
  br label %3644

; <label>:3644                                    ; preds = %3635, %3631, %3580
  %3645 = phi float [ %3632, %3635 ], [ %3632, %3631 ], [ 0x3F70101020000000, %3580 ]
  %3646 = phi float [ %3643, %3635 ], [ 0.000000e+00, %3631 ], [ 0.000000e+00, %3580 ]
  %3647 = add i32 %33, 144
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 255
  %3651 = uitofp i32 %3650 to float
  %3652 = lshr i32 %3649, 8
  %3653 = and i32 %3652, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3415, float %3416, float %3417, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = fmul fast float %3654, %3655
  %3657 = fadd fast float %3656, %3651
  %3658 = fmul fast float %3657, 0x3F70101020000000
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  br i1 %2899, label %3660, label %3695

; <label>:3660                                    ; preds = %3644
  %3661 = fmul fast float %3645, 2.000000e+00
  %3662 = fcmp fast olt float %3601, 1.270000e+02
  %3663 = fcmp fast olt float %3602, 1.270000e+02
  %3664 = fcmp fast olt float %3603, 1.270000e+02
  %3665 = fmul fast float %3601, 0xBFF7154760000000
  %3666 = fmul fast float %3665, %3661
  %3667 = fmul fast float %3602, 0xBFF7154760000000
  %3668 = fmul fast float %3667, %3661
  %3669 = fmul fast float %3603, 0xBFF7154760000000
  %3670 = fmul fast float %3669, %3661
  %3671 = call float @dx.op.unary.f32(i32 21, float %3666)  ; Exp(value)
  %3672 = call float @dx.op.unary.f32(i32 21, float %3668)  ; Exp(value)
  %3673 = call float @dx.op.unary.f32(i32 21, float %3670)  ; Exp(value)
  %3674 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3676 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3677 = fadd fast float %3674, -1.000000e+00
  %3678 = select i1 %3662, float %3677, float -1.000000e+00
  %3679 = fadd fast float %3675, -1.000000e+00
  %3680 = select i1 %3663, float %3679, float -1.000000e+00
  %3681 = fadd fast float %3676, -1.000000e+00
  %3682 = select i1 %3664, float %3681, float -1.000000e+00
  %3683 = fmul fast float %3678, %3195
  %3684 = fmul fast float %3680, %3195
  %3685 = fmul fast float %3682, %3195
  %3686 = fadd fast float %3683, 1.000000e+00
  %3687 = fadd fast float %3684, 1.000000e+00
  %3688 = fadd fast float %3685, 1.000000e+00
  %3689 = fmul fast float %3686, %2887
  %3690 = fmul fast float %3687, %2888
  %3691 = fmul fast float %3688, %2889
  %3692 = fmul fast float %3686, %2890
  %3693 = fmul fast float %3687, %2891
  %3694 = fmul fast float %3688, %2892
  br label %3695

; <label>:3695                                    ; preds = %3660, %3644
  %3696 = phi float [ %3689, %3660 ], [ %2887, %3644 ]
  %3697 = phi float [ %3690, %3660 ], [ %2888, %3644 ]
  %3698 = phi float [ %3691, %3660 ], [ %2889, %3644 ]
  %3699 = phi float [ %3692, %3660 ], [ %2890, %3644 ]
  %3700 = phi float [ %3693, %3660 ], [ %2891, %3644 ]
  %3701 = phi float [ %3694, %3660 ], [ %2892, %3644 ]
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 3
  %3705 = icmp eq i32 %3704, 3
  br i1 %3705, label %3784, label %3706

; <label>:3706                                    ; preds = %3695
  %3707 = and i32 %3703, 16
  %3708 = icmp ne i32 %3707, 0
  %3709 = select i1 %3708, float %3195, float 0.000000e+00
  %3710 = icmp eq i32 %3704, 0
  br i1 %3710, label %3711, label %3739

; <label>:3711                                    ; preds = %3706
  %3712 = and i32 %3703, 64
  %3713 = icmp ne i32 %3712, 0
  %3714 = select i1 %3713, float %3195, float 0.000000e+00
  %3715 = fsub fast float %3415, %3696
  %3716 = fsub fast float %3416, %3697
  %3717 = fsub fast float %3417, %3698
  %3718 = fmul fast float %3709, %3715
  %3719 = fmul fast float %3709, %3716
  %3720 = fmul fast float %3709, %3717
  %3721 = fadd fast float %3718, %3696
  %3722 = fadd fast float %3719, %3697
  %3723 = fadd fast float %3720, %3698
  %3724 = fsub fast float %3401, %2893
  %3725 = fmul fast float %3709, %3724
  %3726 = fadd fast float %3725, %2893
  %3727 = fsub fast float %3543, %3699
  %3728 = fsub fast float %3544, %3700
  %3729 = fsub fast float %3545, %3701
  %3730 = fmul fast float %3714, %3727
  %3731 = fmul fast float %3714, %3728
  %3732 = fmul fast float %3714, %3729
  %3733 = fadd fast float %3730, %3699
  %3734 = fadd fast float %3731, %3700
  %3735 = fadd fast float %3732, %3701
  %3736 = fsub fast float %3659, %2897
  %3737 = fmul fast float %3709, %3736
  %3738 = fadd fast float %3737, %2897
  br label %3784

; <label>:3739                                    ; preds = %3706
  %3740 = icmp eq i32 %3704, 1
  br i1 %3740, label %3741, label %3754

; <label>:3741                                    ; preds = %3739
  %3742 = fadd fast float %3415, -1.000000e+00
  %3743 = fadd fast float %3416, -1.000000e+00
  %3744 = fadd fast float %3417, -1.000000e+00
  %3745 = fmul fast float %3709, %3742
  %3746 = fmul fast float %3709, %3743
  %3747 = fmul fast float %3709, %3744
  %3748 = fadd fast float %3745, 1.000000e+00
  %3749 = fadd fast float %3746, 1.000000e+00
  %3750 = fadd fast float %3747, 1.000000e+00
  %3751 = fmul fast float %3748, %3696
  %3752 = fmul fast float %3749, %3697
  %3753 = fmul fast float %3750, %3698
  br label %3784

; <label>:3754                                    ; preds = %3739
  %3755 = icmp eq i32 %3704, 2
  br i1 %3755, label %3756, label %3784

; <label>:3756                                    ; preds = %3754
  %3757 = call float @dx.op.unary.f32(i32 24, float %3415)  ; Sqrt(value)
  %3758 = call float @dx.op.unary.f32(i32 24, float %3416)  ; Sqrt(value)
  %3759 = call float @dx.op.unary.f32(i32 24, float %3417)  ; Sqrt(value)
  %3760 = fadd fast float %3757, -5.000000e-01
  %3761 = fadd fast float %3758, -5.000000e-01
  %3762 = fadd fast float %3759, -5.000000e-01
  %3763 = fmul fast float %3760, %3709
  %3764 = fmul fast float %3761, %3709
  %3765 = fmul fast float %3762, %3709
  %3766 = fadd fast float %3763, 5.000000e-01
  %3767 = fadd fast float %3764, 5.000000e-01
  %3768 = fadd fast float %3765, 5.000000e-01
  %3769 = fmul fast float %3766, 2.000000e+00
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3770, %3696
  %3772 = fadd fast float %3771, %3769
  %3773 = fmul fast float %3772, %3696
  %3774 = fmul fast float %3767, 2.000000e+00
  %3775 = fsub fast float 1.000000e+00, %3774
  %3776 = fmul fast float %3775, %3697
  %3777 = fadd fast float %3776, %3774
  %3778 = fmul fast float %3777, %3697
  %3779 = fmul fast float %3768, 2.000000e+00
  %3780 = fsub fast float 1.000000e+00, %3779
  %3781 = fmul fast float %3780, %3698
  %3782 = fadd fast float %3781, %3779
  %3783 = fmul fast float %3782, %3698
  br label %3784

; <label>:3784                                    ; preds = %3756, %3754, %3741, %3711, %3695
  %3785 = phi float [ %3696, %3695 ], [ %3773, %3756 ], [ %3696, %3754 ], [ %3751, %3741 ], [ %3721, %3711 ]
  %3786 = phi float [ %3697, %3695 ], [ %3778, %3756 ], [ %3697, %3754 ], [ %3752, %3741 ], [ %3722, %3711 ]
  %3787 = phi float [ %3698, %3695 ], [ %3783, %3756 ], [ %3698, %3754 ], [ %3753, %3741 ], [ %3723, %3711 ]
  %3788 = phi float [ %3699, %3695 ], [ %3699, %3756 ], [ %3699, %3754 ], [ %3699, %3741 ], [ %3733, %3711 ]
  %3789 = phi float [ %3700, %3695 ], [ %3700, %3756 ], [ %3700, %3754 ], [ %3700, %3741 ], [ %3734, %3711 ]
  %3790 = phi float [ %3701, %3695 ], [ %3701, %3756 ], [ %3701, %3754 ], [ %3701, %3741 ], [ %3735, %3711 ]
  %3791 = phi float [ %2893, %3695 ], [ %2893, %3756 ], [ %2893, %3754 ], [ %2893, %3741 ], [ %3726, %3711 ]
  %3792 = phi float [ %2897, %3695 ], [ %2897, %3756 ], [ %2897, %3754 ], [ %2897, %3741 ], [ %3738, %3711 ]
  %3793 = and i32 %3703, 12
  %3794 = icmp eq i32 %3793, 12
  br i1 %3794, label %3877, label %3795

; <label>:3795                                    ; preds = %3784
  %3796 = and i32 %3703, 2097184
  %3797 = icmp eq i32 %3796, 2097184
  %3798 = select i1 %3797, float %3195, float 0.000000e+00
  %3799 = and i32 %3703, 4194336
  %3800 = icmp eq i32 %3799, 4194336
  %3801 = select i1 %3800, float %3195, float 0.000000e+00
  %3802 = and i32 %3703, 8388640
  %3803 = icmp eq i32 %3802, 8388640
  %3804 = select i1 %3803, float %3195, float 0.000000e+00
  %3805 = and i32 %3703, 16384
  %3806 = icmp ne i32 %3805, 0
  %3807 = select i1 %3806, float %3195, float 0.000000e+00
  %3808 = icmp eq i32 %3793, 0
  br i1 %3808, label %3809, label %3825

; <label>:3809                                    ; preds = %3795
  %3810 = fsub fast float %3496, %2885
  %3811 = fsub fast float %3497, %2886
  %3812 = fmul fast float %3798, %3810
  %3813 = fmul fast float %3798, %3811
  %3814 = fadd fast float %3812, %2885
  %3815 = fadd fast float %3813, %2886
  %3816 = fsub fast float %3498, %2895
  %3817 = fmul fast float %3801, %3816
  %3818 = fadd fast float %3817, %2895
  %3819 = fsub fast float %3495, %2894
  %3820 = fmul fast float %3804, %3819
  %3821 = fadd fast float %3820, %2894
  %3822 = fsub fast float %3646, %2896
  %3823 = fmul fast float %3807, %3822
  %3824 = fadd fast float %3823, %2896
  br label %3877

; <label>:3825                                    ; preds = %3795
  %3826 = icmp eq i32 %3793, 4
  br i1 %3826, label %3827, label %3861

; <label>:3827                                    ; preds = %3825
  %3828 = fmul fast float %3798, %3496
  %3829 = fmul fast float %3798, %3497
  %3830 = fadd fast float %3828, %2885
  %3831 = fadd fast float %3829, %2886
  %3832 = call float @dx.op.binary.f32(i32 36, float %2895, float %3498)  ; FMin(a,b)
  %3833 = fsub fast float %3832, %2895
  %3834 = fmul fast float %3833, %3801
  %3835 = fadd fast float %3834, %2895
  %3836 = fadd fast float %3495, %2894
  %3837 = fmul fast float %3836, 0x3FF337FAE0000000
  %3838 = fmul fast float %2894, %2894
  %3839 = fmul fast float %3495, %3495
  %3840 = fadd fast float %3839, %3838
  %3841 = fmul fast float %3840, 0x3FE5152B00000000
  %3842 = fmul fast float %2894, 0xBFCC1F85E0000000
  %3843 = fmul fast float %3842, %3495
  %3844 = fadd fast float %3843, 0xBFE1363700000000
  %3845 = fadd fast float %3844, %3837
  %3846 = fsub fast float %3845, %3841
  %3847 = fmul fast float %3836, 0x3FBA6F0D00000000
  %3848 = fmul fast float %3840, 0x3FD0432880000000
  %3849 = fmul fast float %2894, 0xBFEF110800000000
  %3850 = fmul fast float %3849, %3495
  %3851 = fadd fast float %3850, 1.000000e+00
  %3852 = fsub fast float %3851, %3847
  %3853 = fadd fast float %3852, %3848
  %3854 = fdiv fast float %3846, %3853
  %3855 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3856 = fsub fast float %3855, %2894
  %3857 = fmul fast float %3856, %3804
  %3858 = fadd fast float %3857, %2894
  %3859 = fmul fast float %3807, %3646
  %3860 = fadd fast float %3859, %2896
  br label %3877

; <label>:3861                                    ; preds = %3825
  %3862 = icmp eq i32 %3793, 8
  br i1 %3862, label %3863, label %3877

; <label>:3863                                    ; preds = %3861
  %3864 = fmul fast float %3798, %3496
  %3865 = fmul fast float %3798, %3497
  %3866 = fadd fast float %3864, %2885
  %3867 = fadd fast float %3865, %2886
  %3868 = call float @dx.op.binary.f32(i32 36, float %2895, float %3498)  ; FMin(a,b)
  %3869 = fsub fast float %3868, %2895
  %3870 = fmul fast float %3869, %3801
  %3871 = fadd fast float %3870, %2895
  %3872 = fsub fast float %3495, %2894
  %3873 = fmul fast float %3804, %3872
  %3874 = fadd fast float %3873, %2894
  %3875 = fmul fast float %3807, %3646
  %3876 = fadd fast float %3875, %2896
  br label %3877

; <label>:3877                                    ; preds = %3863, %3861, %3827, %3809, %3784, %3194, %2898, %2884
  %3878 = phi float [ %2885, %3784 ], [ %2885, %3194 ], [ %2885, %2884 ], [ %2885, %2898 ], [ %3814, %3809 ], [ %3830, %3827 ], [ %2885, %3861 ], [ %3866, %3863 ]
  %3879 = phi float [ %2886, %3784 ], [ %2886, %3194 ], [ %2886, %2884 ], [ %2886, %2898 ], [ %3815, %3809 ], [ %3831, %3827 ], [ %2886, %3861 ], [ %3867, %3863 ]
  %3880 = phi float [ %3785, %3784 ], [ %2887, %3194 ], [ %2887, %2884 ], [ %2887, %2898 ], [ %3785, %3809 ], [ %3785, %3827 ], [ %3785, %3861 ], [ %3785, %3863 ]
  %3881 = phi float [ %3786, %3784 ], [ %2888, %3194 ], [ %2888, %2884 ], [ %2888, %2898 ], [ %3786, %3809 ], [ %3786, %3827 ], [ %3786, %3861 ], [ %3786, %3863 ]
  %3882 = phi float [ %3787, %3784 ], [ %2889, %3194 ], [ %2889, %2884 ], [ %2889, %2898 ], [ %3787, %3809 ], [ %3787, %3827 ], [ %3787, %3861 ], [ %3787, %3863 ]
  %3883 = phi float [ %3788, %3784 ], [ %2890, %3194 ], [ %2890, %2884 ], [ %2890, %2898 ], [ %3788, %3809 ], [ %3788, %3827 ], [ %3788, %3861 ], [ %3788, %3863 ]
  %3884 = phi float [ %3789, %3784 ], [ %2891, %3194 ], [ %2891, %2884 ], [ %2891, %2898 ], [ %3789, %3809 ], [ %3789, %3827 ], [ %3789, %3861 ], [ %3789, %3863 ]
  %3885 = phi float [ %3790, %3784 ], [ %2892, %3194 ], [ %2892, %2884 ], [ %2892, %2898 ], [ %3790, %3809 ], [ %3790, %3827 ], [ %3790, %3861 ], [ %3790, %3863 ]
  %3886 = phi float [ %3791, %3784 ], [ %2893, %3194 ], [ %2893, %2884 ], [ %2893, %2898 ], [ %3791, %3809 ], [ %3791, %3827 ], [ %3791, %3861 ], [ %3791, %3863 ]
  %3887 = phi float [ %2894, %3784 ], [ %2894, %3194 ], [ %2894, %2884 ], [ %2894, %2898 ], [ %3821, %3809 ], [ %3858, %3827 ], [ %2894, %3861 ], [ %3874, %3863 ]
  %3888 = phi float [ %2895, %3784 ], [ %2895, %3194 ], [ %2895, %2884 ], [ %2895, %2898 ], [ %3818, %3809 ], [ %3835, %3827 ], [ %2895, %3861 ], [ %3871, %3863 ]
  %3889 = phi float [ %2896, %3784 ], [ %2896, %3194 ], [ %2896, %2884 ], [ %2896, %2898 ], [ %3824, %3809 ], [ %3860, %3827 ], [ %2896, %3861 ], [ %3876, %3863 ]
  %3890 = phi float [ %3792, %3784 ], [ %2897, %3194 ], [ %2897, %2884 ], [ %2897, %2898 ], [ %3792, %3809 ], [ %3792, %3827 ], [ %3792, %3861 ], [ %3792, %3863 ]
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = call float @dx.op.dot2.f32(i32 54, float %3878, float %3879, float %3878, float %3879)  ; Dot2(ax,ay,bx,by)
  %3894 = fmul fast float %3893, 0x3FE3333340000000
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3895, float %3878, float %3879, float %3895)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call float @dx.op.unary.f32(i32 25, float %3896)  ; Rsqrt(value)
  %3898 = fmul fast float %3897, %3878
  %3899 = fmul fast float %3897, %3879
  %3900 = fmul fast float %3895, %3897
  %3901 = fmul fast float %3900, %75
  %3902 = fmul fast float %3900, %76
  %3903 = fmul fast float %3900, %77
  %3904 = fmul fast float %3898, %49
  %3905 = fmul fast float %3898, %50
  %3906 = fmul fast float %3898, %51
  %3907 = fadd fast float %3901, %3904
  %3908 = fadd fast float %3902, %3905
  %3909 = fadd fast float %3903, %3906
  %3910 = fmul fast float %87, %3899
  %3911 = fmul fast float %88, %3899
  %3912 = fmul fast float %89, %3899
  %3913 = fadd fast float %3907, %3910
  %3914 = fadd fast float %3908, %3911
  %3915 = fadd fast float %3909, %3912
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3914, float %3915, float %3913, float %3914, float %3915)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call float @dx.op.unary.f32(i32 25, float %3916)  ; Rsqrt(value)
  %3918 = fmul fast float %3913, %3917
  %3919 = fmul fast float %3914, %3917
  %3920 = fmul fast float %3915, %3917
  %3921 = and i32 %35, 1
  %3922 = icmp eq i32 %3921, 0
  br i1 %3922, label %3923, label %4431

; <label>:3923                                    ; preds = %3877
  %3924 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3925 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3926 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3927 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3928 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3929 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3930 = fadd fast float %3924, %131
  %3931 = fadd fast float %3925, %132
  %3932 = fadd fast float %3926, %133
  %3933 = fadd fast float %3927, %131
  %3934 = fadd fast float %3928, %132
  %3935 = fadd fast float %3929, %133
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3943 = fmul fast float %3937, %68
  %3944 = fmul fast float %3943, %3941
  %3945 = fmul fast float %3938, %69
  %3946 = fmul fast float %3945, %3942
  %3947 = fptoui float %3944 to i32
  %3948 = fptoui float %3946 to i32
  %3949 = fadd fast float %3937, -1.000000e+00
  %3950 = fadd fast float %3938, -1.000000e+00
  %3951 = fptoui float %3949 to i32
  %3952 = fptoui float %3950 to i32
  %3953 = call i32 @dx.op.binary.i32(i32 40, i32 %3947, i32 %3951)  ; UMin(a,b)
  %3954 = call i32 @dx.op.binary.i32(i32 40, i32 %3948, i32 %3952)  ; UMin(a,b)
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3958 = fmul fast float %3956, %63
  %3959 = fsub fast float %3958, %3957
  %3960 = fadd fast float %3939, -1.000000e+00
  %3961 = call float @dx.op.binary.f32(i32 36, float %3959, float %3960)  ; FMin(a,b)
  %3962 = fptoui float %3961 to i32
  %3963 = fptoui float %3937 to i32
  %3964 = fptoui float %3938 to i32
  %3965 = mul i32 %3962, %3964
  %3966 = add i32 %3965, %3954
  %3967 = mul i32 %3966, %3963
  %3968 = add i32 %3967, %3953
  %3969 = shl i32 %3968, 2
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 1023
  %3973 = lshr i32 %3971, 10
  %3974 = icmp eq i32 %3972, 0
  br i1 %3974, label %4400, label %3975

; <label>:3975                                    ; preds = %3923
  %3976 = and i32 %3971, 1023
  br label %3977

; <label>:3977                                    ; preds = %4103, %3975
  %3978 = phi i32 [ %4053, %4103 ], [ 0, %3975 ]
  %3979 = phi float [ %4104, %4103 ], [ 0.000000e+00, %3975 ]
  %3980 = phi float [ %4105, %4103 ], [ %3892, %3975 ]
  %3981 = phi float [ %4106, %4103 ], [ %3890, %3975 ]
  %3982 = phi float [ %4107, %4103 ], [ %3889, %3975 ]
  %3983 = phi float [ %4108, %4103 ], [ 0.000000e+00, %3975 ]
  %3984 = phi float [ %4109, %4103 ], [ %3883, %3975 ]
  %3985 = phi float [ %4110, %4103 ], [ %3884, %3975 ]
  %3986 = phi float [ %4111, %4103 ], [ %3885, %3975 ]
  %3987 = phi float [ %4112, %4103 ], [ %3918, %3975 ]
  %3988 = phi float [ %4113, %4103 ], [ %3919, %3975 ]
  %3989 = phi float [ %4114, %4103 ], [ %3920, %3975 ]
  %3990 = phi float [ %4115, %4103 ], [ %3888, %3975 ]
  %3991 = phi float [ %4116, %4103 ], [ %3887, %3975 ]
  %3992 = phi float [ %4117, %4103 ], [ 0.000000e+00, %3975 ]
  %3993 = phi float [ %4118, %4103 ], [ %3886, %3975 ]
  %3994 = phi float [ %4119, %4103 ], [ %3880, %3975 ]
  %3995 = phi float [ %4120, %4103 ], [ %3881, %3975 ]
  %3996 = phi float [ %4121, %4103 ], [ %3882, %3975 ]
  %3997 = add nuw nsw i32 %3978, %3973
  %3998 = shl i32 %3997, 2
  %3999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.i32 %3999, 0
  %4001 = shl i32 %4000, 8
  %4002 = or i32 %4001, 48
  %4003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4002, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.ResRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.ResRet.f32 %4003, 2
  %4007 = extractvalue %dx.types.ResRet.f32 %4003, 3
  %4008 = or i32 %4001, 64
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.i32 %4009, 1
  %4012 = or i32 %4001, 80
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 3
  %4016 = or i32 %4001, 96
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = or i32 %4001, 112
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4025 = or i32 %4001, 128
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = or i32 %4001, 144
  %4032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.ResRet.f32 %4032, 3
  %4037 = or i32 %4001, 160
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %4038, 2
  %4042 = extractvalue %dx.types.ResRet.f32 %4038, 3
  %4043 = or i32 %4001, 192
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = or i32 %4001, 208
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = or i32 %4001, 248
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = add nuw nsw i32 %3978, 1
  %4054 = bitcast float %4007 to i32
  %4055 = and i32 %4054, 512
  %4056 = icmp eq i32 %4055, 0
  %4057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.ResRet.f32 %4057, 1
  %4060 = extractvalue %dx.types.ResRet.f32 %4057, 2
  %4061 = extractvalue %dx.types.ResRet.f32 %4057, 3
  %4062 = call float @dx.op.dot4.f32(i32 56, float %4058, float %4059, float %4060, float %4061, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4063 = or i32 %4001, 16
  %4064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4063, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = extractvalue %dx.types.ResRet.f32 %4064, 3
  %4069 = call float @dx.op.dot4.f32(i32 56, float %4065, float %4066, float %4067, float %4068, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4070 = or i32 %4001, 32
  %4071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = extractvalue %dx.types.ResRet.f32 %4071, 3
  %4076 = call float @dx.op.dot4.f32(i32 56, float %4072, float %4073, float %4074, float %4075, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4077 = call float @dx.op.unary.f32(i32 27, float %4062)  ; Round_ni(value)
  %4078 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4079 = call float @dx.op.unary.f32(i32 27, float %4069)  ; Round_ni(value)
  %4080 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4081 = call float @dx.op.unary.f32(i32 6, float %4076)  ; FAbs(value)
  %4082 = call float @dx.op.unary.f32(i32 27, float %4081)  ; Round_ni(value)
  %4083 = fadd fast float %4080, %4078
  %4084 = fadd fast float %4083, %4082
  %4085 = fcmp fast oeq float %4084, 0.000000e+00
  %4086 = call float @dx.op.dot4.f32(i32 56, float %4058, float %4059, float %4060, float %4061, float %3930, float %3931, float %3932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4087 = call float @dx.op.dot4.f32(i32 56, float %4065, float %4066, float %4067, float %4068, float %3930, float %3931, float %3932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4088 = call float @dx.op.dot4.f32(i32 56, float %4058, float %4059, float %4060, float %4061, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4089 = call float @dx.op.dot4.f32(i32 56, float %4065, float %4066, float %4067, float %4068, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4090 = fsub fast float %4086, %4062
  %4091 = fsub fast float %4088, %4062
  %4092 = fsub fast float %4087, %4069
  %4093 = fsub fast float %4089, %4069
  %4094 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4097 = fadd fast float %4096, %4094
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4100 = fcmp fast ogt float %4098, %4099
  %4101 = and i1 %4085, %4100
  %4102 = and i1 %4056, %4101
  br i1 %4102, label %4123, label %4103

; <label>:4103                                    ; preds = %4386, %4204, %4123, %3977
  %4104 = phi float [ %3979, %4123 ], [ %4207, %4204 ], [ %4207, %4386 ], [ %3979, %3977 ]
  %4105 = phi float [ %3980, %4123 ], [ %3980, %4204 ], [ %4361, %4386 ], [ %3980, %3977 ]
  %4106 = phi float [ %3981, %4123 ], [ %3981, %4204 ], [ %4359, %4386 ], [ %3981, %3977 ]
  %4107 = phi float [ %3982, %4123 ], [ %3982, %4204 ], [ %4331, %4386 ], [ %3982, %3977 ]
  %4108 = phi float [ %3983, %4123 ], [ %3983, %4204 ], [ %4329, %4386 ], [ %3983, %3977 ]
  %4109 = phi float [ %3984, %4123 ], [ %3984, %4204 ], [ %4396, %4386 ], [ %3984, %3977 ]
  %4110 = phi float [ %3985, %4123 ], [ %3985, %4204 ], [ %4397, %4386 ], [ %3985, %3977 ]
  %4111 = phi float [ %3986, %4123 ], [ %3986, %4204 ], [ %4398, %4386 ], [ %3986, %3977 ]
  %4112 = phi float [ %3987, %4123 ], [ %3987, %4204 ], [ %4310, %4386 ], [ %3987, %3977 ]
  %4113 = phi float [ %3988, %4123 ], [ %3988, %4204 ], [ %4311, %4386 ], [ %3988, %3977 ]
  %4114 = phi float [ %3989, %4123 ], [ %3989, %4204 ], [ %4312, %4386 ], [ %3989, %3977 ]
  %4115 = phi float [ %3990, %4123 ], [ %3990, %4204 ], [ %4339, %4386 ], [ %3990, %3977 ]
  %4116 = phi float [ %3991, %4123 ], [ %3991, %4204 ], [ %4336, %4386 ], [ %3991, %3977 ]
  %4117 = phi float [ %3992, %4123 ], [ %3992, %4204 ], [ %4333, %4386 ], [ %3992, %3977 ]
  %4118 = phi float [ %3993, %4123 ], [ %3993, %4204 ], [ %4327, %4386 ], [ %3993, %3977 ]
  %4119 = phi float [ %3994, %4123 ], [ %3994, %4204 ], [ %4322, %4386 ], [ %3994, %3977 ]
  %4120 = phi float [ %3995, %4123 ], [ %3995, %4204 ], [ %4323, %4386 ], [ %3995, %3977 ]
  %4121 = phi float [ %3996, %4123 ], [ %3996, %4204 ], [ %4324, %4386 ], [ %3996, %3977 ]
  %4122 = icmp eq i32 %4053, %3976
  br i1 %4122, label %4399, label %3977

; <label>:4123                                    ; preds = %3977
  %4124 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4125 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4129 = extractvalue %dx.types.ResRet.i32 %4009, 3
  %4130 = extractvalue %dx.types.ResRet.i32 %4009, 2
  %4131 = add i32 %4129, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %4133, float %4062, float %4069, float undef, float undef, i32 0, i32 0, i32 undef, float %4090, float %4092, float undef, float %4091, float %4093, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = fmul fast float %4135, %4128
  %4137 = fadd fast float %4136, %4127
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fmul fast float %4062, %4018
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4069, float %4139)  ; FMad(a,b,c)
  %4141 = fadd fast float %4140, %4126
  %4142 = fmul fast float %4062, %4020
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4069, float %4142)  ; FMad(a,b,c)
  %4144 = fadd fast float %4143, %4125
  %4145 = fmul fast float %4090, %4018
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4092, float %4145)  ; FMad(a,b,c)
  %4147 = fmul fast float %4090, %4020
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4092, float %4147)  ; FMad(a,b,c)
  %4149 = fmul fast float %4091, %4018
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4093, float %4149)  ; FMad(a,b,c)
  %4151 = fmul fast float %4091, %4020
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4093, float %4151)  ; FMad(a,b,c)
  %4153 = add i32 %4130, 0
  %4154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4153, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4155 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4154, %dx.types.Handle %4133, float %4141, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4146, float %4148, float undef, float %4150, float %4152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = and i32 %4054, 1024
  %4158 = icmp ne i32 %4157, 0
  %4159 = fcmp fast ogt float %4156, 0x3FE0101020000000
  %4160 = uitofp i1 %4159 to float
  %4161 = select i1 %4158, float %4160, float %4156
  %4162 = and i32 %4054, 8192
  %4163 = icmp ne i32 %4162, 0
  %4164 = select i1 %4163, float %4124, float 1.000000e+00
  %4165 = fmul fast float %4062, 2.000000e+00
  %4166 = fadd fast float %4165, -1.000000e+00
  %4167 = call float @dx.op.unary.f32(i32 6, float %4166)  ; FAbs(value)
  %4168 = fmul fast float %4167, %4051
  %4169 = fsub fast float %4168, %4051
  %4170 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4171 = fmul fast float %4069, 2.000000e+00
  %4172 = fadd fast float %4171, -1.000000e+00
  %4173 = call float @dx.op.unary.f32(i32 6, float %4172)  ; FAbs(value)
  %4174 = fmul fast float %4173, %4052
  %4175 = fsub fast float %4174, %4052
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = fmul fast float %4081, %4014
  %4178 = fsub fast float %4177, %4014
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fmul fast float %4138, %4164
  %4181 = fmul fast float %4180, %4135
  %4182 = fmul fast float %4181, %4170
  %4183 = fmul fast float %4182, %4161
  %4184 = fmul fast float %4183, %4176
  %4185 = fmul fast float %4184, %4179
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4189 = fsub fast float %4098, %4188
  %4190 = fmul fast float %4189, %4187
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4192 = fmul fast float %4185, %4015
  %4193 = fadd fast float %4185, %4015
  %4194 = fmul fast float %4193, %4024
  %4195 = fsub fast float %4194, %4024
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = and i32 %4054, 128
  %4198 = icmp ne i32 %4197, 0
  %4199 = select i1 %4198, float %4196, float %4192
  %4200 = fmul fast float %4199, %4191
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = fcmp fast ugt float %4200, %4202
  br i1 %4203, label %4204, label %4103

; <label>:4204                                    ; preds = %4123
  %4205 = select i1 %4163, float %4200, float 0.000000e+00
  %4206 = fadd fast float %4205, %3979
  %4207 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  br i1 %4163, label %4103, label %4208

; <label>:4208                                    ; preds = %4204
  %4209 = and i32 %4054, 4
  %4210 = and i32 %4054, 8
  %4211 = add i32 %4010, 0
  %4212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4211, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4212, %dx.types.Handle %4213, float %4141, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4146, float %4148, float undef, float %4150, float %4152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = bitcast float %4036 to i32
  %4220 = and i32 %4219, 255
  %4221 = uitofp i32 %4220 to float
  %4222 = lshr i32 %4219, 8
  %4223 = and i32 %4222, 255
  %4224 = uitofp i32 %4223 to float
  %4225 = fmul fast float %4218, %4221
  %4226 = fadd fast float %4225, %4224
  %4227 = fmul fast float %4226, 0x3F70101000000000
  %4228 = add i32 %4011, 0
  %4229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4229, %dx.types.Handle %4213, float %4141, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4146, float %4148, float undef, float %4150, float %4152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4234 = extractvalue %dx.types.ResRet.f32 %4230, 3
  %4235 = bitcast float %4030 to i32
  %4236 = and i32 %4235, 255
  %4237 = uitofp i32 %4236 to float
  %4238 = lshr i32 %4235, 8
  %4239 = and i32 %4238, 255
  %4240 = uitofp i32 %4239 to float
  %4241 = lshr i32 %4235, 16
  %4242 = and i32 %4241, 255
  %4243 = uitofp i32 %4242 to float
  %4244 = fmul fast float %4243, 0x3F70101000000000
  %4245 = fmul fast float %4231, %4237
  %4246 = fadd fast float %4245, %4240
  %4247 = fmul fast float %4246, 0x3F70101000000000
  %4248 = fadd fast float %4232, -5.000000e-01
  %4249 = fadd fast float %4234, -5.000000e-01
  %4250 = fmul fast float %4248, %4244
  %4251 = fmul fast float %4249, %4244
  %4252 = fadd fast float %4250, 5.000000e-01
  %4253 = fadd fast float %4251, 5.000000e-01
  %4254 = fmul fast float %4215, %4039
  %4255 = fmul fast float %4216, %4040
  %4256 = fmul fast float %4217, %4041
  %4257 = fmul fast float %4252, 2.000000e+00
  %4258 = fadd fast float %4257, -1.000000e+00
  %4259 = fmul fast float %4253, 2.000000e+00
  %4260 = fadd fast float %4259, -1.000000e+00
  %4261 = fadd fast float %4258, %4260
  %4262 = fmul fast float %4261, 5.000000e-01
  %4263 = fsub fast float %4258, %4260
  %4264 = fmul fast float %4263, 5.000000e-01
  %4265 = call float @dx.op.unary.f32(i32 6, float %4262)  ; FAbs(value)
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = call float @dx.op.unary.f32(i32 6, float %4264)  ; FAbs(value)
  %4268 = fsub fast float %4266, %4267
  %4269 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4264, float %4268, float %4262, float %4264, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = call float @dx.op.unary.f32(i32 25, float %4269)  ; Rsqrt(value)
  %4271 = fmul fast float %4262, %4270
  %4272 = fmul fast float %4264, %4270
  %4273 = fmul fast float %4270, %4268
  %4274 = fmul fast float %4273, %4004
  %4275 = fmul fast float %4273, %4005
  %4276 = fmul fast float %4273, %4006
  %4277 = fmul fast float %4271, %4027
  %4278 = fmul fast float %4271, %4028
  %4279 = fmul fast float %4271, %4029
  %4280 = fadd fast float %4277, %4274
  %4281 = fadd fast float %4278, %4275
  %4282 = fadd fast float %4279, %4276
  %4283 = fmul fast float %4272, %4033
  %4284 = fmul fast float %4272, %4034
  %4285 = fmul fast float %4272, %4035
  %4286 = fadd fast float %4280, %4283
  %4287 = fadd fast float %4281, %4284
  %4288 = fadd fast float %4282, %4285
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4286, float %4287, float %4288, float %4286, float %4287, float %4288)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = call float @dx.op.unary.f32(i32 25, float %4289)  ; Rsqrt(value)
  %4291 = fmul fast float %4286, %4290
  %4292 = fmul fast float %4287, %4290
  %4293 = fmul fast float %4288, %4290
  %4294 = icmp ne i32 %4210, 0
  %4295 = select i1 %4294, float 1.000000e+00, float 0.000000e+00
  %4296 = fmul fast float %4200, %4295
  %4297 = and i32 %4054, 1
  %4298 = icmp eq i32 %4297, 0
  br i1 %4298, label %4299, label %4303

; <label>:4299                                    ; preds = %4208
  %4300 = fsub fast float %4291, %3987
  %4301 = fsub fast float %4292, %3988
  %4302 = fsub fast float %4293, %3989
  br label %4303

; <label>:4303                                    ; preds = %4299, %4208
  %4304 = phi float [ %4300, %4299 ], [ %4291, %4208 ]
  %4305 = phi float [ %4301, %4299 ], [ %4292, %4208 ]
  %4306 = phi float [ %4302, %4299 ], [ %4293, %4208 ]
  %4307 = fmul float %4306, %4296
  %4308 = fmul float %4305, %4296
  %4309 = fmul float %4304, %4296
  %4310 = fadd fast float %4309, %3987
  %4311 = fadd fast float %4308, %3988
  %4312 = fadd fast float %4307, %3989
  %4313 = icmp ne i32 %4209, 0
  %4314 = select i1 %4313, float 1.000000e+00, float 0.000000e+00
  %4315 = fmul fast float %4200, %4314
  %4316 = fsub fast float %4254, %3994
  %4317 = fsub fast float %4255, %3995
  %4318 = fsub fast float %4256, %3996
  %4319 = fmul fast float %4316, %4315
  %4320 = fmul fast float %4317, %4315
  %4321 = fmul fast float %4318, %4315
  %4322 = fadd fast float %4319, %3994
  %4323 = fadd fast float %4320, %3995
  %4324 = fadd fast float %4321, %3996
  %4325 = fsub fast float %4227, %3993
  %4326 = fmul fast float %4325, %4315
  %4327 = fadd fast float %4326, %3993
  %4328 = fmul fast float %4315, %3983
  %4329 = fsub fast float %3983, %4328
  %4330 = fmul fast float %4315, %3982
  %4331 = fsub fast float %3982, %4330
  %4332 = fadd fast float %4200, %3992
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = fsub fast float %4247, %3991
  %4335 = fmul fast float %4334, %4296
  %4336 = fadd fast float %4335, %3991
  %4337 = fsub fast float %4233, %3990
  %4338 = fmul fast float %4337, %4296
  %4339 = fadd fast float %4338, %3990
  %4340 = call float @dx.op.dot3.f32(i32 55, float %4254, float %4255, float %4256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4344 = fmul fast float %4343, %4340
  %4345 = fadd fast float %4344, %4342
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = bitcast float %4042 to i32
  %4348 = and i32 %4347, 65535
  %4349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4348)  ; LegacyF16ToF32(value)
  %4350 = lshr i32 %4347, 16
  %4351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4350)  ; LegacyF16ToF32(value)
  %4352 = fcmp fast oge float %4349, 0.000000e+00
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 0
  %4355 = select i1 %4352, float %4349, float %4354
  %4356 = fadd fast float %4355, %4351
  %4357 = fsub fast float %4346, %3981
  %4358 = fmul fast float %4357, %4200
  %4359 = fadd fast float %4358, %3981
  %4360 = fmul fast float %4356, %4200
  %4361 = call float @dx.op.binary.f32(i32 35, float %3980, float %4360)  ; FMax(a,b)
  %4362 = and i32 %4054, 16
  %4363 = icmp eq i32 %4362, 0
  br i1 %4363, label %4386, label %4364

; <label>:4364                                    ; preds = %4303
  %4365 = bitcast float %4048 to i32
  %4366 = add i32 %4045, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4213, float %4141, float %4144, float undef, float undef, i32 0, i32 0, i32 undef, float %4146, float %4148, float undef, float %4150, float %4152, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = and i32 %4365, 65535
  %4373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4372)  ; LegacyF16ToF32(value)
  %4374 = fmul fast float %4369, %4039
  %4375 = fmul fast float %4370, %4040
  %4376 = fmul fast float %4371, %4041
  %4377 = and i32 %4054, 16384
  %4378 = icmp ne i32 %4377, 0
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = select i1 %4378, float %4380, float 1.000000e+00
  %4382 = fmul fast float %4381, %4373
  %4383 = fmul fast float %4374, %4382
  %4384 = fmul fast float %4375, %4382
  %4385 = fmul fast float %4376, %4382
  br label %4386

; <label>:4386                                    ; preds = %4364, %4303
  %4387 = phi float [ %4383, %4364 ], [ 0.000000e+00, %4303 ]
  %4388 = phi float [ %4384, %4364 ], [ 0.000000e+00, %4303 ]
  %4389 = phi float [ %4385, %4364 ], [ 0.000000e+00, %4303 ]
  %4390 = fsub fast float %4387, %3984
  %4391 = fsub fast float %4388, %3985
  %4392 = fsub fast float %4389, %3986
  %4393 = fmul fast float %4390, %4200
  %4394 = fmul fast float %4391, %4200
  %4395 = fmul fast float %4392, %4200
  %4396 = fadd fast float %4393, %3984
  %4397 = fadd fast float %4394, %3985
  %4398 = fadd fast float %4395, %3986
  br label %4103

; <label>:4399                                    ; preds = %4103
  br label %4400

; <label>:4400                                    ; preds = %4399, %3923
  %4401 = phi float [ 0.000000e+00, %3923 ], [ %4104, %4399 ]
  %4402 = phi float [ %3892, %3923 ], [ %4105, %4399 ]
  %4403 = phi float [ %3890, %3923 ], [ %4106, %4399 ]
  %4404 = phi float [ %3889, %3923 ], [ %4107, %4399 ]
  %4405 = phi float [ 0.000000e+00, %3923 ], [ %4108, %4399 ]
  %4406 = phi float [ %3883, %3923 ], [ %4109, %4399 ]
  %4407 = phi float [ %3884, %3923 ], [ %4110, %4399 ]
  %4408 = phi float [ %3885, %3923 ], [ %4111, %4399 ]
  %4409 = phi float [ %3918, %3923 ], [ %4112, %4399 ]
  %4410 = phi float [ %3919, %3923 ], [ %4113, %4399 ]
  %4411 = phi float [ %3920, %3923 ], [ %4114, %4399 ]
  %4412 = phi float [ %3888, %3923 ], [ %4115, %4399 ]
  %4413 = phi float [ %3887, %3923 ], [ %4116, %4399 ]
  %4414 = phi float [ 0.000000e+00, %3923 ], [ %4117, %4399 ]
  %4415 = phi float [ %3886, %3923 ], [ %4118, %4399 ]
  %4416 = phi float [ %3880, %3923 ], [ %4119, %4399 ]
  %4417 = phi float [ %3881, %3923 ], [ %4120, %4399 ]
  %4418 = phi float [ %3882, %3923 ], [ %4121, %4399 ]
  %4419 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float %4409, float %4410, float %4411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.unary.f32(i32 25, float %4419)  ; Rsqrt(value)
  %4421 = fmul fast float %4420, %4409
  %4422 = fmul fast float %4420, %4410
  %4423 = fmul fast float %4420, %4411
  %4424 = fadd fast float %4414, %907
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4421, float %4422, float %4423, float %4421, float %4422, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 25, float %4426)  ; Rsqrt(value)
  %4428 = fmul fast float %4427, %4421
  %4429 = fmul fast float %4427, %4422
  %4430 = fmul fast float %4427, %4423
  br label %4431

; <label>:4431                                    ; preds = %4400, %3877
  %4432 = phi float [ %4428, %4400 ], [ %3918, %3877 ]
  %4433 = phi float [ %4429, %4400 ], [ %3919, %3877 ]
  %4434 = phi float [ %4430, %4400 ], [ %3920, %3877 ]
  %4435 = phi float [ %4416, %4400 ], [ %3880, %3877 ]
  %4436 = phi float [ %4417, %4400 ], [ %3881, %3877 ]
  %4437 = phi float [ %4418, %4400 ], [ %3882, %3877 ]
  %4438 = phi float [ %4406, %4400 ], [ %3883, %3877 ]
  %4439 = phi float [ %4407, %4400 ], [ %3884, %3877 ]
  %4440 = phi float [ %4408, %4400 ], [ %3885, %3877 ]
  %4441 = phi float [ %4415, %4400 ], [ %3886, %3877 ]
  %4442 = phi float [ %4425, %4400 ], [ %907, %3877 ]
  %4443 = phi float [ %4413, %4400 ], [ %3887, %3877 ]
  %4444 = phi float [ %4412, %4400 ], [ %3888, %3877 ]
  %4445 = phi float [ %4405, %4400 ], [ 0.000000e+00, %3877 ]
  %4446 = phi float [ %4404, %4400 ], [ %3889, %3877 ]
  %4447 = phi float [ %4401, %4400 ], [ 0.000000e+00, %3877 ]
  %4448 = phi float [ %4402, %4400 ], [ %3892, %3877 ]
  %4449 = phi float [ %4403, %4400 ], [ %3890, %3877 ]
  %4450 = fadd fast float %4441, 0xBFB99999A0000000
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = fmul fast float %4451, 0x3FF1C71C80000000
  %4453 = call float @dx.op.binary.f32(i32 36, float %4441, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4454 = fsub fast float 1.000000e+00, %4452
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4455, %4435
  %4457 = fmul fast float %4455, %4436
  %4458 = fmul fast float %4455, %4437
  %4459 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4462 = fmul fast float %4452, %4435
  %4463 = fmul fast float %4452, %4436
  %4464 = fmul fast float %4452, %4437
  %4465 = fadd fast float %4462, %4453
  %4466 = fadd fast float %4463, %4453
  %4467 = fadd fast float %4464, %4453
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.i32 %4472, 3
  %4474 = and i32 %4473, 8
  %4475 = icmp ne i32 %4474, 0
  %4476 = call float @dx.op.binary.f32(i32 35, float %4459, float %4435)  ; FMax(a,b)
  %4477 = call float @dx.op.binary.f32(i32 35, float %4460, float %4435)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4461, float %4435)  ; FMax(a,b)
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4459, float %4460, float %4461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = select i1 %173, float %4435, float %4459
  %4481 = select i1 %173, float %4479, float %4460
  %4482 = select i1 %173, float 1.000000e+00, float %4461
  %4483 = select i1 %4475, float %4476, float %4480
  %4484 = select i1 %4475, float %4477, float %4481
  %4485 = select i1 %4475, float %4478, float %4482
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 1
  %4489 = extractvalue %dx.types.CBufRet.f32 %4486, 2
  %4490 = fadd fast float %4487, %131
  %4491 = fadd fast float %4488, %132
  %4492 = fadd fast float %4489, %133
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4496 = fsub fast float %4490, %4494
  %4497 = fsub fast float %4491, %4495
  %4498 = fmul fast float %4496, %4496
  %4499 = fmul fast float %4497, %4497
  %4500 = fadd fast float %4498, %4499
  %4501 = call float @dx.op.unary.f32(i32 24, float %4500)  ; Sqrt(value)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4503 = fcmp fast olt float %4501, %4502
  br i1 %4503, label %4504, label %4571

; <label>:4504                                    ; preds = %4431
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 0
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4505, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4514 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4515 = extractvalue %dx.types.CBufRet.f32 %4507, 3
  %4516 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4517 = fadd fast float %4514, %4490
  %4518 = fadd fast float %4515, %4491
  %4519 = fadd fast float %4516, %4492
  %4520 = fmul fast float %4517, %4506
  %4521 = call float @dx.op.tertiary.f32(i32 46, float %4518, float %4508, float %4520)  ; FMad(a,b,c)
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4510, float %4521)  ; FMad(a,b,c)
  %4523 = fmul fast float %4517, %4511
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4518, float %4512, float %4523)  ; FMad(a,b,c)
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4513, float %4524)  ; FMad(a,b,c)
  %4526 = fsub fast float %4522, %4514
  %4527 = fsub fast float %4525, %4515
  %4528 = fsub fast float %4526, %4494
  %4529 = fadd fast float %4528, %4502
  %4530 = fsub fast float %4527, %4495
  %4531 = fadd fast float %4530, %4502
  %4532 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4533 = fmul fast float %4529, %4532
  %4534 = fmul fast float %4531, %4532
  %4535 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4537 = fsub fast float 1.000000e+00, %4535
  %4538 = fsub fast float 1.000000e+00, %4536
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = fcmp fast ugt float %4540, 0.000000e+00
  br i1 %4541, label %4542, label %4845

; <label>:4542                                    ; preds = %4504
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4545 = fmul fast float %4544, %4540
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4547 = fadd fast float %4546, %4545
  %4548 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4549 = fadd fast float %4547, %4516
  %4550 = fmul fast float %4522, %4510
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4513, float %4550)  ; FMad(a,b,c)
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4548, float %4551)  ; FMad(a,b,c)
  %4553 = fsub fast float %4552, %4516
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4556 = fsub fast float %4553, %4555
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4537, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = fadd fast float %4562, %4558
  %4566 = fmul fast float %4565, 0x3F847AE140000000
  %4567 = fadd fast float %4563, %4559
  %4568 = fmul fast float %4567, 0x3F847AE140000000
  %4569 = fadd fast float %4564, %4560
  %4570 = fmul fast float %4569, 0x3F847AE140000000
  br label %4845

; <label>:4571                                    ; preds = %4431
  %4572 = and i32 %149, 1
  %4573 = icmp eq i32 %4572, 0
  br i1 %4573, label %4845, label %4574

; <label>:4574                                    ; preds = %4571
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4584 = extractvalue %dx.types.CBufRet.f32 %4575, 3
  %4585 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4586 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4587 = fadd fast float %4584, %4490
  %4588 = fadd fast float %4585, %4491
  %4589 = fadd fast float %4586, %4492
  %4590 = fmul fast float %4587, %4576
  %4591 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4578, float %4590)  ; FMad(a,b,c)
  %4592 = call float @dx.op.tertiary.f32(i32 46, float %4589, float %4580, float %4591)  ; FMad(a,b,c)
  %4593 = fmul fast float %4587, %4581
  %4594 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4582, float %4593)  ; FMad(a,b,c)
  %4595 = call float @dx.op.tertiary.f32(i32 46, float %4589, float %4583, float %4594)  ; FMad(a,b,c)
  %4596 = fsub fast float %4592, %4584
  %4597 = fsub fast float %4595, %4585
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.i32 %4605, 0
  %4607 = extractvalue %dx.types.CBufRet.i32 %4605, 1
  %4608 = udiv i32 %4607, %4606
  %4609 = fsub fast float %4596, %4599
  %4610 = fsub fast float %4597, %4600
  %4611 = call float @dx.op.binary.f32(i32 35, float %4609, float 0.000000e+00)  ; FMax(a,b)
  %4612 = call float @dx.op.binary.f32(i32 35, float %4610, float 0.000000e+00)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 36, float %4611, float %4601)  ; FMin(a,b)
  %4614 = call float @dx.op.binary.f32(i32 36, float %4612, float %4602)  ; FMin(a,b)
  %4615 = add i32 %4606, -1
  %4616 = add i32 %4608, -1
  %4617 = fmul fast float %4613, %4604
  %4618 = fmul fast float %4614, %4604
  %4619 = fptoui float %4617 to i32
  %4620 = fptoui float %4618 to i32
  %4621 = call i32 @dx.op.binary.i32(i32 40, i32 %4619, i32 %4615)  ; UMin(a,b)
  %4622 = call i32 @dx.op.binary.i32(i32 40, i32 %4620, i32 %4616)  ; UMin(a,b)
  %4623 = mul i32 %4622, %4606
  %4624 = add i32 %4623, %4621
  %4625 = shl i32 %4624, 2
  %4626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 0
  %4628 = icmp eq i32 %4627, -1
  br i1 %4628, label %4845, label %4629

; <label>:4629                                    ; preds = %4574
  %4630 = mul i32 %4627, 148
  %4631 = add i32 %4630, 4
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = add i32 %4630, 8
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = add i32 %4630, 36
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = add i32 %4630, 60
  %4641 = add i32 %4630, 92
  %4642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4641, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.i32 %4642, 0
  %4644 = add i32 %4630, 116
  %4645 = fsub fast float %4596, %4633
  %4646 = fsub fast float %4597, %4636
  %4647 = fmul fast float %4604, %4645
  %4648 = fmul fast float %4604, %4646
  %4649 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = call float @dx.op.unary.f32(i32 83, float %4649)  ; DerivCoarseX(value)
  %4655 = call float @dx.op.unary.f32(i32 83, float %4651)  ; DerivCoarseX(value)
  %4656 = call float @dx.op.unary.f32(i32 84, float %4649)  ; DerivCoarseY(value)
  %4657 = call float @dx.op.unary.f32(i32 84, float %4651)  ; DerivCoarseY(value)
  %4658 = fmul fast float %4654, %4653
  %4659 = fmul fast float %4655, %4653
  %4660 = fmul fast float %4656, %4653
  %4661 = fmul fast float %4657, %4653
  %4662 = call float @dx.op.dot2.f32(i32 54, float %4660, float %4661, float %4660, float %4661)  ; Dot2(ax,ay,bx,by)
  %4663 = call float @dx.op.dot2.f32(i32 54, float %4658, float %4659, float %4658, float %4659)  ; Dot2(ax,ay,bx,by)
  %4664 = call float @dx.op.binary.f32(i32 35, float %4663, float %4662)  ; FMax(a,b)
  %4665 = call float @dx.op.unary.f32(i32 23, float %4664)  ; Log(value)
  %4666 = fmul fast float %4665, 5.000000e-01
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4669 = fadd fast float %4668, %4666
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float 0.000000e+00)  ; FMax(a,b)
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4673 = fadd fast float %4672, %4670
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 3
  %4676 = fadd fast float %4673, %4675
  %4677 = add i32 %4643, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4678, i32 0)  ; GetDimensions(handle,mipLevel)
  %4680 = extractvalue %dx.types.Dimensions %4679, 0
  %4681 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4680)  ; FirstbitLo(value)
  %4682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.i32 %4682, 1
  %4684 = sub nsw i32 %4683, %4681
  %4685 = sitofp i32 %4684 to float
  %4686 = fsub fast float %4676, %4685
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0.000000e+00)  ; FMax(a,b)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4678, %dx.types.Handle %27, float %4649, float %4651, float %4639, float undef, i32 0, i32 0, i32 undef, float %4687)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fcmp ule float %4689, 0x3FE0101020000000
  %4691 = extractvalue %dx.types.CBufRet.i32 %4682, 0
  %4692 = and i32 %4691, 128
  %4693 = icmp ne i32 %4692, 0
  %4694 = and i1 %4690, %4693
  br i1 %4694, label %4845, label %4695

; <label>:4695                                    ; preds = %4629
  %4696 = add i32 %4630, 20
  %4697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4696, i32 undef)  ; BufferLoad(srv,index,wot)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = add i32 %4630, 24
  %4700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4699, i32 undef)  ; BufferLoad(srv,index,wot)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = add i32 %4630, 40
  %4703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = add i32 %4630, 96
  %4706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4707 = extractvalue %dx.types.ResRet.i32 %4706, 0
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4710 = fmul fast float %4709, %4649
  %4711 = fmul fast float %4709, %4651
  %4712 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4713 = fadd fast float %4710, %4712
  %4714 = fadd fast float %4711, %4712
  %4715 = add i32 %4707, 0
  %4716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4715, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4717 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4716, i32 0)  ; GetDimensions(handle,mipLevel)
  %4718 = extractvalue %dx.types.Dimensions %4717, 0
  %4719 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4718)  ; FirstbitLo(value)
  %4720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.i32 %4720, 1
  %4722 = sub nsw i32 %4721, %4719
  %4723 = sitofp i32 %4722 to float
  %4724 = fsub fast float %4673, %4723
  %4725 = call float @dx.op.binary.f32(i32 35, float %4724, float 0.000000e+00)  ; FMax(a,b)
  %4726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4716, %dx.types.Handle %27, float %4713, float %4714, float %4704, float undef, i32 0, i32 0, i32 undef, float %4725)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4727 = extractvalue %dx.types.ResRet.f32 %4726, 0
  %4728 = fmul fast float %4727, %4698
  %4729 = fadd fast float %4728, %4701
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4733 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 3
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4738 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4739 = fadd fast float %4735, %4596
  %4740 = fadd fast float %4737, %4597
  %4741 = fadd fast float %4729, %4738
  %4742 = fmul fast float %4739, %4731
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4732, float %4742)  ; FMad(a,b,c)
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4733, float %4743)  ; FMad(a,b,c)
  %4745 = fsub fast float %4744, %4738
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4748 = fsub fast float %4745, %4747
  %4749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.i32 %4749, 0
  %4751 = call i32 @dx.op.binary.i32(i32 40, i32 %4627, i32 %4750)  ; UMin(a,b)
  %4752 = mul i32 %4751, 36
  %4753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.i32 %4753, 0
  %4755 = add i32 %4752, 4
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 0
  %4758 = fmul fast float %4757, %4649
  %4759 = fmul fast float %4757, %4651
  %4760 = extractvalue %dx.types.CBufRet.f32 %4756, 1
  %4761 = fadd fast float %4758, %4760
  %4762 = fadd fast float %4759, %4760
  %4763 = icmp eq i32 %4754, 0
  br i1 %4763, label %4832, label %4764

; <label>:4764                                    ; preds = %4695
  br label %4765

; <label>:4765                                    ; preds = %4822, %4764
  %4766 = phi float [ %4823, %4822 ], [ 0.000000e+00, %4764 ]
  %4767 = phi float [ %4824, %4822 ], [ 0.000000e+00, %4764 ]
  %4768 = phi float [ %4825, %4822 ], [ 0.000000e+00, %4764 ]
  %4769 = phi float [ %4826, %4822 ], [ 0.000000e+00, %4764 ]
  %4770 = phi float [ %4827, %4822 ], [ 0.000000e+00, %4764 ]
  %4771 = phi float [ %4828, %4822 ], [ 0.000000e+00, %4764 ]
  %4772 = phi i32 [ %4829, %4822 ], [ 0, %4764 ]
  %4773 = shl i32 %4772, 2
  %4774 = add i32 %4640, %4773
  %4775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = add i32 %4644, %4773
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = add i32 %4779, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4781, i32 0)  ; GetDimensions(handle,mipLevel)
  %4783 = extractvalue %dx.types.Dimensions %4782, 0
  %4784 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4783)  ; FirstbitLo(value)
  %4785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.i32 %4785, 1
  %4787 = sub nsw i32 %4786, %4784
  %4788 = sitofp i32 %4787 to float
  %4789 = fsub fast float %4673, %4788
  %4790 = call float @dx.op.binary.f32(i32 35, float %4789, float 0.000000e+00)  ; FMax(a,b)
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4781, %dx.types.Handle %27, float %4761, float %4762, float %4776, float undef, i32 0, i32 0, i32 undef, float %4790)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = fcmp fast ogt float %4792, 0.000000e+00
  br i1 %4793, label %4794, label %4822

; <label>:4794                                    ; preds = %4765
  %4795 = add i32 %4755, %4773
  %4796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4795, i32 undef)  ; BufferLoad(srv,index,wot)
  %4797 = extractvalue %dx.types.ResRet.i32 %4796, 0
  %4798 = and i32 %4797, 32767
  %4799 = mul nuw nsw i32 %4798, 928
  %4800 = add nuw nsw i32 %4799, 48
  %4801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = add nuw nsw i32 %4799, 60
  %4806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4805, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.ResRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.ResRet.f32 %4806, 2
  %4810 = fmul fast float %4802, %4792
  %4811 = fmul fast float %4803, %4792
  %4812 = fmul fast float %4804, %4792
  %4813 = fadd fast float %4810, %4766
  %4814 = fadd fast float %4811, %4767
  %4815 = fadd fast float %4812, %4768
  %4816 = fmul fast float %4807, %4792
  %4817 = fmul fast float %4808, %4792
  %4818 = fmul fast float %4809, %4792
  %4819 = fadd fast float %4816, %4769
  %4820 = fadd fast float %4817, %4770
  %4821 = fadd fast float %4818, %4771
  br label %4822

; <label>:4822                                    ; preds = %4794, %4765
  %4823 = phi float [ %4813, %4794 ], [ %4766, %4765 ]
  %4824 = phi float [ %4814, %4794 ], [ %4767, %4765 ]
  %4825 = phi float [ %4815, %4794 ], [ %4768, %4765 ]
  %4826 = phi float [ %4819, %4794 ], [ %4769, %4765 ]
  %4827 = phi float [ %4820, %4794 ], [ %4770, %4765 ]
  %4828 = phi float [ %4821, %4794 ], [ %4771, %4765 ]
  %4829 = add nuw i32 %4772, 1
  %4830 = icmp eq i32 %4829, %4754
  br i1 %4830, label %4831, label %4765

; <label>:4831                                    ; preds = %4822
  br label %4832

; <label>:4832                                    ; preds = %4831, %4695
  %4833 = phi float [ 0.000000e+00, %4695 ], [ %4823, %4831 ]
  %4834 = phi float [ 0.000000e+00, %4695 ], [ %4824, %4831 ]
  %4835 = phi float [ 0.000000e+00, %4695 ], [ %4825, %4831 ]
  %4836 = phi float [ 0.000000e+00, %4695 ], [ %4826, %4831 ]
  %4837 = phi float [ 0.000000e+00, %4695 ], [ %4827, %4831 ]
  %4838 = phi float [ 0.000000e+00, %4695 ], [ %4828, %4831 ]
  %4839 = fadd fast float %4836, %4833
  %4840 = fmul fast float %4839, 0x3F847AE140000000
  %4841 = fadd fast float %4837, %4834
  %4842 = fmul fast float %4841, 0x3F847AE140000000
  %4843 = fadd fast float %4838, %4835
  %4844 = fmul fast float %4843, 0x3F847AE140000000
  br label %4845

; <label>:4845                                    ; preds = %4832, %4629, %4574, %4571, %4542, %4504
  %4846 = phi float [ %4556, %4542 ], [ -1.310720e+05, %4504 ], [ %4748, %4832 ], [ -1.310720e+05, %4574 ], [ -1.310720e+05, %4629 ], [ -1.310720e+05, %4571 ]
  %4847 = phi float [ %4566, %4542 ], [ 0.000000e+00, %4504 ], [ %4840, %4832 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4629 ], [ 0.000000e+00, %4571 ]
  %4848 = phi float [ %4568, %4542 ], [ 0.000000e+00, %4504 ], [ %4842, %4832 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4629 ], [ 0.000000e+00, %4571 ]
  %4849 = phi float [ %4570, %4542 ], [ 0.000000e+00, %4504 ], [ %4844, %4832 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4629 ], [ 0.000000e+00, %4571 ]
  %4850 = phi i1 [ true, %4542 ], [ false, %4504 ], [ true, %4832 ], [ false, %4574 ], [ false, %4629 ], [ false, %4571 ]
  %4851 = and i32 %149, 3
  %4852 = icmp eq i32 %4851, 1
  %4853 = select i1 %4852, float 1.000000e+00, float 0.000000e+00
  %4854 = fsub fast float %4846, %133
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = select i1 %4850, float %4855, float 1.000000e+00
  %4857 = fmul fast float %4856, %4853
  %4858 = icmp eq i32 %4851, 3
  %4859 = select i1 %4858, float 1.000000e+00, float %4857
  %4860 = call float @dx.op.binary.f32(i32 35, float %4447, float %4859)  ; FMax(a,b)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4862 = fcmp fast une float %4861, 0.000000e+00
  %4863 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = call float @dx.op.unary.f32(i32 25, float %4863)  ; Rsqrt(value)
  br i1 %4862, label %4872, label %4865

; <label>:4865                                    ; preds = %4845
  %4866 = fmul fast float %4864, %131
  %4867 = fmul fast float %4864, %132
  %4868 = fmul fast float %4864, %133
  %4869 = fsub fast float -0.000000e+00, %4866
  %4870 = fsub fast float -0.000000e+00, %4867
  %4871 = fsub fast float -0.000000e+00, %4868
  br label %5040

; <label>:4872                                    ; preds = %4845
  %4873 = fmul fast float %131, %4864
  %4874 = fsub fast float -0.000000e+00, %4873
  %4875 = fmul fast float %132, %4864
  %4876 = fsub fast float -0.000000e+00, %4875
  %4877 = fmul fast float %133, %4864
  %4878 = fsub fast float -0.000000e+00, %4877
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4876, float %4878, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = fmul fast float %4861, 2.500000e+00
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4861, 0x4013FFFFE0000000
  %4883 = fadd fast float %4882, 0xBFFFFFFFE0000000
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4861, 0x4004000020000000
  %4886 = fadd fast float %4885, 0xBFF8000040000000
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4889 = fmul fast float %4450, 1.000000e+01
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, 2.000000e+00
  %4892 = fsub fast float 3.000000e+00, %4891
  %4893 = fmul fast float %4890, %4890
  %4894 = fmul fast float %4893, %4892
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = fsub fast float 0x3FE3333340000000, %4471
  %4897 = fmul fast float %4896, 0x400AAAAAA0000000
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fmul fast float %4895, %4898
  %4900 = fmul fast float %4483, 0x3FEA2B8620000000
  %4901 = fmul fast float %4484, 0x3FEA2B8620000000
  %4902 = fmul fast float %4485, 0x3FEA2B8620000000
  %4903 = fadd fast float %4900, 0x3FC81DFBA0000000
  %4904 = fmul fast float %4903, %4483
  %4905 = fadd fast float %4904, 0x3F910E6020000000
  %4906 = fadd fast float %4901, 0x3FC81DFBA0000000
  %4907 = fmul fast float %4906, %4484
  %4908 = fadd fast float %4907, 0x3F910E6020000000
  %4909 = fadd fast float %4902, 0x3FC81DFBA0000000
  %4910 = fmul fast float %4909, %4485
  %4911 = fadd fast float %4910, 0x3F910E6020000000
  %4912 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = fsub fast float %4912, %4483
  %4916 = fsub fast float %4913, %4484
  %4917 = fsub fast float %4914, %4485
  %4918 = fmul fast float %4915, %4888
  %4919 = fmul fast float %4918, %4899
  %4920 = fmul fast float %4916, %4888
  %4921 = fmul fast float %4920, %4899
  %4922 = fmul fast float %4917, %4888
  %4923 = fmul fast float %4922, %4899
  %4924 = fadd fast float %4919, %4483
  %4925 = fadd fast float %4921, %4484
  %4926 = fadd fast float %4923, %4485
  %4927 = fmul fast float %4444, %4444
  %4928 = fmul fast float %4927, %4927
  %4929 = fadd fast float %4884, 1.000000e+00
  %4930 = fsub fast float %4929, %4899
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fsub fast float 1.000000e+00, %4928
  %4935 = call float @dx.op.binary.f32(i32 36, float %4931, float %4934)  ; FMin(a,b)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4935, float %4936)  ; FMax(a,b)
  %4938 = fadd fast float %4933, 0xBFE4CCCCC0000000
  %4939 = fmul fast float %4938, 0x4006DB6DA0000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = fsub fast float 3.000000e+00, %4941
  %4943 = bitcast float %4468 to i32
  %4944 = ashr i32 %4943, 1
  %4945 = add nsw i32 %4944, 532487669
  %4946 = bitcast i32 %4945 to float
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = bitcast float %4947 to i32
  %4949 = sub nsw i32 2129859010, %4948
  %4950 = bitcast i32 %4949 to float
  %4951 = fmul fast float %4950, 2.000000e+00
  %4952 = bitcast float %4469 to i32
  %4953 = ashr i32 %4952, 1
  %4954 = add nsw i32 %4953, 532487669
  %4955 = bitcast i32 %4954 to float
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = bitcast float %4956 to i32
  %4958 = sub nsw i32 2129859010, %4957
  %4959 = bitcast i32 %4958 to float
  %4960 = fmul fast float %4959, 2.000000e+00
  %4961 = bitcast float %4470 to i32
  %4962 = ashr i32 %4961, 1
  %4963 = add nsw i32 %4962, 532487669
  %4964 = bitcast i32 %4963 to float
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, 2.000000e+00
  %4970 = fsub fast float 0x4002A9FBE0000000, %4951
  %4971 = fadd fast float %4951, 0x3FD54FDF00000000
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4974, %4970
  %4976 = fmul fast float %4975, %4975
  %4977 = fsub fast float 0x4002A9FBE0000000, %4960
  %4978 = fadd fast float %4960, 0x3FD54FDF00000000
  %4979 = bitcast float %4978 to i32
  %4980 = sub nsw i32 2129859010, %4979
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4981, %4977
  %4983 = fmul fast float %4982, %4982
  %4984 = fsub fast float 0x4002A9FBE0000000, %4969
  %4985 = fadd fast float %4969, 0x3FD54FDF00000000
  %4986 = bitcast float %4985 to i32
  %4987 = sub nsw i32 2129859010, %4986
  %4988 = bitcast i32 %4987 to float
  %4989 = fmul fast float %4988, %4984
  %4990 = fmul fast float %4989, %4989
  %4991 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4976)  ; FMax(a,b)
  %4992 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4983)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4990)  ; FMax(a,b)
  %4994 = fsub fast float 1.000000e+00, %4879
  %4995 = fadd fast float %4994, %4895
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = fsub fast float 1.000000e+00, %4859
  %4998 = fmul fast float %4937, %4997
  %4999 = fmul fast float %4940, %4940
  %5000 = fmul fast float %4999, %4998
  %5001 = fmul fast float %5000, %4942
  %5002 = fmul fast float %4997, 0xBFE99999A0000000
  %5003 = fmul fast float %5002, %4888
  %5004 = fmul fast float %5003, %4899
  %5005 = fadd fast float %5004, 1.000000e+00
  %5006 = fadd fast float %4471, -1.000000e+00
  %5007 = fmul fast float %5005, %5006
  %5008 = fadd fast float %5007, 1.000000e+00
  %5009 = fsub fast float %4991, %4468
  %5010 = fsub fast float %4992, %4469
  %5011 = fsub fast float %4993, %4470
  %5012 = fmul fast float %5001, %5009
  %5013 = fmul fast float %5001, %5010
  %5014 = fmul fast float %5001, %5011
  %5015 = fadd fast float %5012, %4468
  %5016 = fadd fast float %5013, %4469
  %5017 = fadd fast float %5014, %4470
  %5018 = fsub fast float %75, %4432
  %5019 = fsub fast float %76, %4433
  %5020 = fsub fast float %77, %4434
  %5021 = fmul fast float %5001, %5018
  %5022 = fmul fast float %5001, %5019
  %5023 = fmul fast float %5001, %5020
  %5024 = fadd fast float %5021, %4432
  %5025 = fadd fast float %5022, %4433
  %5026 = fadd fast float %5023, %4434
  %5027 = fmul fast float %5001, %4996
  %5028 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = fmul fast float %5027, %5029
  %5031 = fadd fast float %5030, %5028
  %5032 = fsub fast float 1.000000e+00, %4444
  %5033 = fmul fast float %5001, %5032
  %5034 = fadd fast float %5033, %4444
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %5026, float %5024, float %5025, float %5026)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5024, %5036
  %5038 = fmul fast float %5025, %5036
  %5039 = fmul fast float %5026, %5036
  br label %5040

; <label>:5040                                    ; preds = %4872, %4865
  %5041 = phi float [ %4871, %4865 ], [ %4878, %4872 ]
  %5042 = phi float [ %4870, %4865 ], [ %4876, %4872 ]
  %5043 = phi float [ %4869, %4865 ], [ %4874, %4872 ]
  %5044 = phi float [ %4868, %4865 ], [ %4877, %4872 ]
  %5045 = phi float [ %4867, %4865 ], [ %4875, %4872 ]
  %5046 = phi float [ %4866, %4865 ], [ %4873, %4872 ]
  %5047 = phi float [ %4468, %4865 ], [ %5015, %4872 ]
  %5048 = phi float [ %4469, %4865 ], [ %5016, %4872 ]
  %5049 = phi float [ %4470, %4865 ], [ %5017, %4872 ]
  %5050 = phi float [ %4432, %4865 ], [ %5037, %4872 ]
  %5051 = phi float [ %4433, %4865 ], [ %5038, %4872 ]
  %5052 = phi float [ %4434, %4865 ], [ %5039, %4872 ]
  %5053 = phi float [ %4483, %4865 ], [ %4924, %4872 ]
  %5054 = phi float [ %4484, %4865 ], [ %4925, %4872 ]
  %5055 = phi float [ %4485, %4865 ], [ %4926, %4872 ]
  %5056 = phi float [ %4471, %4865 ], [ %5031, %4872 ]
  %5057 = phi float [ %4444, %4865 ], [ %5034, %4872 ]
  %5058 = select i1 %173, float 0.000000e+00, float %5049
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %5043, float %5042, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5045, float %5044, float %5050, float %5051, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = fmul fast float %5061, 2.000000e+00
  %5063 = fmul fast float %5062, %5050
  %5064 = fmul fast float %5062, %5051
  %5065 = fmul fast float %5062, %5052
  %5066 = fsub fast float %5046, %5063
  %5067 = fsub fast float %5045, %5064
  %5068 = fsub fast float %5044, %5065
  %5069 = call float @dx.op.binary.f32(i32 36, float %5057, float 1.000000e+00)  ; FMin(a,b)
  %5070 = fsub fast float 1.000000e+00, %5057
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = fsub fast float 1.000000e+00, %45
  %5074 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.binary.f32(i32 35, float %5074, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5076 = fdiv fast float %5073, %5075
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, 5.000000e-01
  %5080 = fadd fast float %5079, 5.000000e-01
  %5081 = fmul fast float %5080, %45
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, %5076
  %5085 = fadd fast float %5081, %5084
  %5086 = fsub fast float 5.000000e-01, %5079
  %5087 = fmul fast float %5086, %5053
  %5088 = fmul fast float %5086, %5054
  %5089 = fmul fast float %5086, %5055
  %5090 = fadd fast float %5085, %5087
  %5091 = fadd fast float %5085, %5088
  %5092 = fadd fast float %5085, %5089
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fmul fast float %5094, 5.000000e-01
  %5096 = fadd fast float %5095, 5.000000e-01
  %5097 = fmul fast float %5096, %45
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = fmul fast float %5099, %5076
  %5101 = fadd fast float %5097, %5100
  %5102 = fsub fast float 5.000000e-01, %5095
  %5103 = fmul fast float %5102, %5053
  %5104 = fmul fast float %5102, %5054
  %5105 = fmul fast float %5102, %5055
  %5106 = fadd fast float %5101, %5103
  %5107 = fadd fast float %5101, %5104
  %5108 = fadd fast float %5101, %5105
  %5109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.f32 %5109, 0
  %5111 = call float @dx.op.binary.f32(i32 36, float %5053, float %5110)  ; FMin(a,b)
  %5112 = fsub fast float 1.000000e+00, %5069
  %5113 = fmul fast float %5111, %5112
  %5114 = fsub fast float 1.000000e+00, %5113
  %5115 = bitcast float %5114 to i32
  %5116 = sub nsw i32 2129859010, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = call float @dx.op.binary.f32(i32 36, float %5054, float %5110)  ; FMin(a,b)
  %5119 = fmul fast float %5118, %5112
  %5120 = fsub fast float 1.000000e+00, %5119
  %5121 = bitcast float %5120 to i32
  %5122 = sub nsw i32 2129859010, %5121
  %5123 = bitcast i32 %5122 to float
  %5124 = call float @dx.op.binary.f32(i32 36, float %5055, float %5110)  ; FMin(a,b)
  %5125 = fmul fast float %5124, %5112
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = bitcast float %5126 to i32
  %5128 = sub nsw i32 2129859010, %5127
  %5129 = bitcast i32 %5128 to float
  %5130 = fmul fast float %5069, %46
  %5131 = fmul fast float %5130, %5090
  %5132 = fmul fast float %5131, %5117
  %5133 = fmul fast float %5069, %47
  %5134 = fmul fast float %5133, %5091
  %5135 = fmul fast float %5134, %5123
  %5136 = fmul fast float %5069, %48
  %5137 = fmul fast float %5136, %5092
  %5138 = fmul fast float %5137, %5129
  %5139 = call float @dx.op.binary.f32(i32 36, float %5047, float %5110)  ; FMin(a,b)
  %5140 = fmul fast float %5139, %5112
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = bitcast float %5141 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = call float @dx.op.binary.f32(i32 36, float %5048, float %5110)  ; FMin(a,b)
  %5146 = fmul fast float %5145, %5112
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = bitcast float %5147 to i32
  %5149 = sub nsw i32 2129859010, %5148
  %5150 = bitcast i32 %5149 to float
  %5151 = call float @dx.op.binary.f32(i32 36, float %5058, float %5110)  ; FMin(a,b)
  %5152 = fmul fast float %5151, %5112
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5130, %5106
  %5158 = fmul fast float %5157, %5144
  %5159 = fmul fast float %5133, %5107
  %5160 = fmul fast float %5159, %5150
  %5161 = fmul fast float %5136, %5108
  %5162 = fmul fast float %5161, %5156
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5135, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = select i1 %173, float 0.000000e+00, float %5132
  %5165 = select i1 %173, float %5163, float %5135
  %5166 = select i1 %173, float 0.000000e+00, float %5138
  %5167 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5160, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = select i1 %173, float 0.000000e+00, float %5158
  %5169 = select i1 %173, float %5167, float %5160
  %5170 = select i1 %173, float 0.000000e+00, float %5162
  %5171 = fmul fast float %5060, 9.843750e-01
  %5172 = fmul fast float %5056, 9.843750e-01
  %5173 = fadd fast float %5171, 7.812500e-03
  %5174 = fadd fast float %5172, 7.812500e-03
  %5175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5173, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 2
  %5177 = extractvalue %dx.types.ResRet.f32 %5175, 3
  %5178 = fmul fast float %5176, %5047
  %5179 = fmul fast float %5176, %5048
  %5180 = fmul fast float %5176, %5058
  %5181 = fadd fast float %5178, %5177
  %5182 = fadd fast float %5179, %5177
  %5183 = fadd fast float %5180, %5177
  %5184 = fcmp fast ogt float %4445, 0.000000e+00
  br i1 %5184, label %5185, label %5211

; <label>:5185                                    ; preds = %5040
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4445, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = fadd fast float %5187, -5.000000e-01
  %5191 = fadd fast float %5188, -5.000000e-01
  %5192 = fadd fast float %5189, -5.000000e-01
  %5193 = fsub fast float 1.000000e+00, %5047
  %5194 = fsub fast float 1.000000e+00, %5048
  %5195 = fsub fast float 1.000000e+00, %5058
  %5196 = fmul fast float %5047, 4.000000e+00
  %5197 = fmul fast float %5196, %5193
  %5198 = fmul fast float %5197, %5190
  %5199 = fmul fast float %5048, 4.000000e+00
  %5200 = fmul fast float %5199, %5194
  %5201 = fmul fast float %5200, %5191
  %5202 = fmul fast float %5058, 4.000000e+00
  %5203 = fmul fast float %5202, %5195
  %5204 = fmul fast float %5203, %5192
  %5205 = fadd fast float %5198, %5181
  %5206 = fadd fast float %5201, %5182
  %5207 = fadd fast float %5204, %5183
  %5208 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  br label %5211

; <label>:5211                                    ; preds = %5185, %5040
  %5212 = phi float [ %5208, %5185 ], [ %5181, %5040 ]
  %5213 = phi float [ %5209, %5185 ], [ %5182, %5040 ]
  %5214 = phi float [ %5210, %5185 ], [ %5183, %5040 ]
  %5215 = call float @dx.op.binary.f32(i32 35, float %5213, float %5214)  ; FMax(a,b)
  %5216 = call float @dx.op.binary.f32(i32 35, float %5212, float %5215)  ; FMax(a,b)
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = fmul fast float %5217, %5164
  %5219 = fmul fast float %5217, %5165
  %5220 = fmul fast float %5217, %5166
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fcmp fast ogt float %5221, 0x3E7FF19E20000000
  %5223 = fdiv fast float 1.000000e+00, %5221
  %5224 = select i1 %5222, float %5223, float 0.000000e+00
  %5225 = fmul fast float %5224, %5053
  %5226 = fmul fast float %5224, %5054
  %5227 = fmul fast float %5224, %5055
  %5228 = fadd fast float %5225, -1.000000e+00
  %5229 = fadd fast float %5226, -1.000000e+00
  %5230 = fadd fast float %5227, -1.000000e+00
  %5231 = fmul fast float %5228, 5.000000e-01
  %5232 = fmul fast float %5229, 5.000000e-01
  %5233 = fmul fast float %5230, 5.000000e-01
  %5234 = fadd fast float %5231, 1.000000e+00
  %5235 = fadd fast float %5232, 1.000000e+00
  %5236 = fadd fast float %5233, 1.000000e+00
  %5237 = fmul fast float %5212, %5168
  %5238 = fmul fast float %5213, %5169
  %5239 = fmul fast float %5214, %5170
  %5240 = fsub fast float 1.000000e+00, %5060
  %5241 = bitcast float %5240 to i32
  %5242 = sitofp i32 %5241 to float
  %5243 = fmul fast float %5242, 5.000000e+00
  %5244 = fadd fast float %5243, 0xC1EFBF8940000000
  %5245 = fptosi float %5244 to i32
  %5246 = bitcast i32 %5245 to float
  %5247 = fmul fast float %5246, %4446
  %5248 = fmul fast float %5164, %5247
  %5249 = fmul fast float %5248, %5217
  %5250 = fmul fast float %5249, %5234
  %5251 = fmul fast float %5165, %5247
  %5252 = fmul fast float %5251, %5217
  %5253 = fmul fast float %5252, %5235
  %5254 = fmul fast float %5166, %5247
  %5255 = fmul fast float %5254, %5217
  %5256 = fmul fast float %5255, %5236
  %5257 = fmul fast float %5218, %4442
  %5258 = fmul fast float %5219, %4442
  %5259 = fmul fast float %5220, %4442
  %5260 = fadd fast float %5237, %4438
  %5261 = fadd fast float %5260, %5250
  %5262 = fmul fast float %5261, %4442
  %5263 = fadd fast float %5238, %4439
  %5264 = fadd fast float %5263, %5253
  %5265 = fmul fast float %5264, %4442
  %5266 = fadd fast float %5239, %4440
  %5267 = fadd fast float %5266, %5256
  %5268 = fmul fast float %5267, %4442
  %5269 = bitcast i32 %5072 to float
  %5270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5270, 3
  %5272 = fcmp fast oeq float %5271, 0.000000e+00
  br i1 %5272, label %5500, label %5273

; <label>:5273                                    ; preds = %5211
  %5274 = extractvalue %dx.types.CBufRet.f32 %5270, 0
  %5275 = extractvalue %dx.types.CBufRet.f32 %5270, 1
  %5276 = extractvalue %dx.types.CBufRet.f32 %5270, 2
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.CBufRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.CBufRet.f32 %5277, 2
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = select i1 %173, float %5282, float %5278
  %5286 = select i1 %173, float %5284, float %5279
  %5287 = select i1 %173, float %5283, float %5280
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 1
  %5290 = fcmp fast une float %5289, 0.000000e+00
  br i1 %5290, label %5291, label %5308

; <label>:5291                                    ; preds = %5273
  %5292 = fptoui float %68 to i32
  %5293 = fptoui float %69 to i32
  %5294 = lshr i32 %5292, 4
  %5295 = lshr i32 %5293, 4
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = fptoui float %5297 to i32
  %5299 = add i32 %5298, 15
  %5300 = lshr i32 %5299, 4
  %5301 = mul i32 %5300, %5295
  %5302 = add i32 %5301, %5294
  %5303 = shl i32 %5302, 3
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = and i32 %5305, -268435456
  %5307 = icmp eq i32 %5306, -1342177280
  br i1 %5307, label %5318, label %5308

; <label>:5308                                    ; preds = %5291, %5273
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5312 = fmul fast float %5310, %68
  %5313 = fmul fast float %5311, %69
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5312, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  br label %5318

; <label>:5318                                    ; preds = %5308, %5291
  %5319 = phi float [ %5315, %5308 ], [ 0.000000e+00, %5291 ]
  %5320 = phi float [ %5316, %5308 ], [ 0.000000e+00, %5291 ]
  %5321 = phi float [ %5317, %5308 ], [ 0.000000e+00, %5291 ]
  %5322 = call float @dx.op.binary.f32(i32 36, float %5320, float %5321)  ; FMin(a,b)
  %5323 = call float @dx.op.binary.f32(i32 36, float %5319, float %5322)  ; FMin(a,b)
  %5324 = fcmp fast ogt float %5323, 0.000000e+00
  br i1 %5324, label %5325, label %5500, !dx.controlflow.hints !72

; <label>:5325                                    ; preds = %5318
  %5326 = fmul fast float %5319, %5285
  %5327 = fmul fast float %5320, %5286
  %5328 = fmul fast float %5321, %5287
  %5329 = fsub fast float %5274, %5046
  %5330 = fsub fast float %5275, %5045
  %5331 = fsub fast float %5276, %5044
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 25, float %5332)  ; Rsqrt(value)
  %5334 = fmul fast float %5333, %5329
  %5335 = fmul fast float %5333, %5330
  %5336 = fmul fast float %5333, %5331
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5275, float %5276, float %5050, float %5051, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5042, float %5041, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5340 = fmul fast float %5339, %5339
  %5341 = fmul fast float %5340, %5269
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, %5339
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = fmul fast float %5344, %5344
  %5346 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5347 = fsub fast float 1.000000e+00, %5056
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0x3F847AE140000000)  ; FMax(a,b)
  %5349 = fmul fast float %5348, %5348
  %5350 = fmul fast float %5349, %5349
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5060, %5060
  %5353 = fmul fast float %5352, %5351
  %5354 = fadd fast float %5353, %5350
  %5355 = bitcast float %5354 to i32
  %5356 = ashr i32 %5355, 1
  %5357 = add nsw i32 %5356, 532487669
  %5358 = bitcast i32 %5357 to float
  %5359 = fadd fast float %5358, %5060
  %5360 = fmul fast float %5350, %5345
  %5361 = fsub fast float 1.000000e+00, %5345
  %5362 = fadd fast float %5361, %5360
  %5363 = fmul fast float %5346, %5346
  %5364 = fmul fast float %5363, %5351
  %5365 = fadd fast float %5364, %5350
  %5366 = bitcast float %5365 to i32
  %5367 = ashr i32 %5366, 1
  %5368 = add nsw i32 %5367, 532487669
  %5369 = bitcast i32 %5368 to float
  %5370 = fadd fast float %5369, %5346
  %5371 = fmul fast float %5362, %5362
  %5372 = fmul fast float %5371, %5359
  %5373 = fmul fast float %5372, %5370
  %5374 = fdiv fast float 0x3FF0A00000000000, %5373
  %5375 = fmul fast float %5374, %5350
  %5376 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = bitcast float %5377 to i32
  %5379 = sitofp i32 %5378 to float
  %5380 = fmul fast float %5379, 5.000000e+00
  %5381 = fadd fast float %5380, 0xC1EFBF8940000000
  %5382 = fptosi float %5381 to i32
  %5383 = bitcast i32 %5382 to float
  %5384 = fsub fast float 1.000000e+00, %5047
  %5385 = fsub fast float 1.000000e+00, %5048
  %5386 = fsub fast float 1.000000e+00, %5058
  %5387 = fmul fast float %5383, %5384
  %5388 = fmul fast float %5383, %5385
  %5389 = fmul fast float %5383, %5386
  %5390 = fadd fast float %5387, %5047
  %5391 = fadd fast float %5388, %5048
  %5392 = fadd fast float %5389, %5058
  br i1 %5184, label %5393, label %5416

; <label>:5393                                    ; preds = %5325
  %5394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4445, float %5376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5398 = fadd fast float %5395, -5.000000e-01
  %5399 = fadd fast float %5396, -5.000000e-01
  %5400 = fadd fast float %5397, -5.000000e-01
  %5401 = fmul fast float %5047, 4.000000e+00
  %5402 = fmul fast float %5401, %5384
  %5403 = fmul fast float %5402, %5398
  %5404 = fmul fast float %5048, 4.000000e+00
  %5405 = fmul fast float %5404, %5385
  %5406 = fmul fast float %5405, %5399
  %5407 = fmul fast float %5058, 4.000000e+00
  %5408 = fmul fast float %5407, %5386
  %5409 = fmul fast float %5408, %5400
  %5410 = fadd fast float %5403, %5390
  %5411 = fadd fast float %5406, %5391
  %5412 = fadd fast float %5409, %5392
  %5413 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  br label %5416

; <label>:5416                                    ; preds = %5393, %5325
  %5417 = phi float [ %5413, %5393 ], [ %5390, %5325 ]
  %5418 = phi float [ %5414, %5393 ], [ %5391, %5325 ]
  %5419 = phi float [ %5415, %5393 ], [ %5392, %5325 ]
  %5420 = fmul fast float %5337, 9.843750e-01
  %5421 = fadd fast float %5420, 7.812500e-03
  %5422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5421, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 2
  %5424 = extractvalue %dx.types.ResRet.f32 %5422, 3
  %5425 = fmul fast float %5423, %5047
  %5426 = fmul fast float %5423, %5048
  %5427 = fmul fast float %5423, %5058
  %5428 = fadd fast float %5425, %5424
  %5429 = fadd fast float %5426, %5424
  %5430 = fadd fast float %5427, %5424
  br i1 %5184, label %5431, label %5454

; <label>:5431                                    ; preds = %5416
  %5432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4445, float %5337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.ResRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.ResRet.f32 %5432, 2
  %5436 = fadd fast float %5433, -5.000000e-01
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fadd fast float %5435, -5.000000e-01
  %5439 = fmul fast float %5047, 4.000000e+00
  %5440 = fmul fast float %5439, %5384
  %5441 = fmul fast float %5440, %5436
  %5442 = fmul fast float %5048, 4.000000e+00
  %5443 = fmul fast float %5442, %5385
  %5444 = fmul fast float %5443, %5437
  %5445 = fmul fast float %5058, 4.000000e+00
  %5446 = fmul fast float %5445, %5386
  %5447 = fmul fast float %5446, %5438
  %5448 = fadd fast float %5441, %5428
  %5449 = fadd fast float %5444, %5429
  %5450 = fadd fast float %5447, %5430
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  br label %5454

; <label>:5454                                    ; preds = %5431, %5416
  %5455 = phi float [ %5451, %5431 ], [ %5428, %5416 ]
  %5456 = phi float [ %5452, %5431 ], [ %5429, %5416 ]
  %5457 = phi float [ %5453, %5431 ], [ %5430, %5416 ]
  %5458 = call float @dx.op.binary.f32(i32 35, float %5456, float %5457)  ; FMax(a,b)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5455, float %5458)  ; FMax(a,b)
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = fmul fast float %5417, %5375
  %5462 = fmul fast float %5418, %5375
  %5463 = fmul fast float %5419, %5375
  %5464 = fsub fast float 1.000000e+00, %5338
  %5465 = bitcast float %5464 to i32
  %5466 = sitofp i32 %5465 to float
  %5467 = fmul fast float %5466, 5.000000e+00
  %5468 = fadd fast float %5467, 0xC1EFBF8940000000
  %5469 = fptosi float %5468 to i32
  %5470 = bitcast i32 %5469 to float
  %5471 = fmul fast float %5470, %4446
  %5472 = fmul fast float %5460, %5471
  %5473 = fmul fast float %5472, %5234
  %5474 = fmul fast float %5472, %5235
  %5475 = fmul fast float %5472, %5236
  %5476 = fadd fast float %5473, %5461
  %5477 = fadd fast float %5474, %5462
  %5478 = fadd fast float %5475, %5463
  %5479 = fmul fast float %5343, %5326
  %5480 = fmul fast float %5479, %5460
  %5481 = fmul fast float %5343, %5327
  %5482 = fmul fast float %5481, %5460
  %5483 = fmul fast float %5343, %5328
  %5484 = fmul fast float %5483, %5460
  %5485 = fmul fast float %5479, %5476
  %5486 = fmul fast float %5481, %5477
  %5487 = fmul fast float %5483, %5478
  %5488 = fadd fast float %5480, %5218
  %5489 = fmul fast float %5488, %4442
  %5490 = fadd fast float %5482, %5219
  %5491 = fmul fast float %5490, %4442
  %5492 = fadd fast float %5484, %5220
  %5493 = fmul fast float %5492, %4442
  %5494 = fadd fast float %5485, %5261
  %5495 = fmul fast float %5494, %4442
  %5496 = fadd fast float %5486, %5264
  %5497 = fmul fast float %5496, %4442
  %5498 = fadd fast float %5487, %5267
  %5499 = fmul fast float %5498, %4442
  br label %5500

; <label>:5500                                    ; preds = %5454, %5318, %5211
  %5501 = phi float [ %5262, %5211 ], [ %5262, %5318 ], [ %5495, %5454 ]
  %5502 = phi float [ %5265, %5211 ], [ %5265, %5318 ], [ %5497, %5454 ]
  %5503 = phi float [ %5268, %5211 ], [ %5268, %5318 ], [ %5499, %5454 ]
  %5504 = phi float [ %5257, %5211 ], [ %5257, %5318 ], [ %5489, %5454 ]
  %5505 = phi float [ %5258, %5211 ], [ %5258, %5318 ], [ %5491, %5454 ]
  %5506 = phi float [ %5259, %5211 ], [ %5259, %5318 ], [ %5493, %5454 ]
  %5507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.i32 %5507, 0
  %5509 = icmp eq i32 %5508, 0
  br i1 %5509, label %5944, label %5510

; <label>:5510                                    ; preds = %5500
  %5511 = fptoui float %68 to i32
  %5512 = fptoui float %69 to i32
  %5513 = lshr i32 %5511, 4
  %5514 = lshr i32 %5512, 4
  %5515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.i32 %5515, 0
  %5517 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5514, i32 %5516, i32 %5513)  ; UMad(a,b,c)
  %5518 = add nsw i32 %5508, -1
  %5519 = call i32 @dx.op.binary.i32(i32 37, i32 %5518, i32 0)  ; IMax(a,b)
  %5520 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5521 = fptoui float %5520 to i32
  %5522 = lshr i32 %5521, 5
  %5523 = call i32 @dx.op.binary.i32(i32 40, i32 %5522, i32 8191)  ; UMin(a,b)
  %5524 = shl i32 %5523, 2
  %5525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.i32 %5525, 0
  %5527 = lshr i32 %5526, 16
  %5528 = and i32 %5526, 65535
  %5529 = lshr i32 %5526, 21
  %5530 = lshr i32 %5528, 5
  %5531 = call i32 @dx.op.binary.i32(i32 40, i32 %5530, i32 %5519)  ; UMin(a,b)
  %5532 = icmp ugt i32 %5529, %5531
  br i1 %5532, label %5944, label %5533

; <label>:5533                                    ; preds = %5510
  br label %5534

; <label>:5534                                    ; preds = %5934, %5533
  %5535 = phi i32 [ %5941, %5934 ], [ %5529, %5533 ]
  %5536 = phi float [ %5935, %5934 ], [ %5501, %5533 ]
  %5537 = phi float [ %5936, %5934 ], [ %5502, %5533 ]
  %5538 = phi float [ %5937, %5934 ], [ %5503, %5533 ]
  %5539 = phi float [ %5938, %5934 ], [ %5504, %5533 ]
  %5540 = phi float [ %5939, %5934 ], [ %5505, %5533 ]
  %5541 = phi float [ %5940, %5934 ], [ %5506, %5533 ]
  %5542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.i32 %5542, 0
  %5544 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5517, i32 %5543, i32 %5535)  ; UMad(a,b,c)
  %5545 = shl i32 %5544, 2
  %5546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5545, i32 undef)  ; BufferLoad(srv,index,wot)
  %5547 = extractvalue %dx.types.ResRet.i32 %5546, 0
  %5548 = shl i32 %5535, 5
  %5549 = sub nsw i32 %5527, %5548
  %5550 = call i32 @dx.op.binary.i32(i32 37, i32 %5549, i32 0)  ; IMax(a,b)
  %5551 = call i32 @dx.op.binary.i32(i32 38, i32 %5550, i32 31)  ; IMin(a,b)
  %5552 = sub nsw i32 1, %5527
  %5553 = add nsw i32 %5552, %5528
  %5554 = call i32 @dx.op.binary.i32(i32 37, i32 %5553, i32 0)  ; IMax(a,b)
  %5555 = call i32 @dx.op.binary.i32(i32 38, i32 %5554, i32 32)  ; IMin(a,b)
  %5556 = and i32 %5555, 31
  %5557 = shl i32 -1, %5556
  %5558 = xor i32 %5557, -1
  %5559 = and i32 %5551, 31
  %5560 = shl i32 %5558, %5559
  %5561 = icmp eq i32 %5555, 32
  %5562 = select i1 %5561, i32 -1, i32 %5560
  %5563 = and i32 %5562, %5547
  %5564 = icmp eq i32 %5563, 0
  br i1 %5564, label %5934, label %5565

; <label>:5565                                    ; preds = %5534
  br label %5566

; <label>:5566                                    ; preds = %5646, %5565
  %5567 = phi i32 [ %5578, %5646 ], [ %5563, %5565 ]
  %5568 = phi float [ %5647, %5646 ], [ %5536, %5565 ]
  %5569 = phi float [ %5648, %5646 ], [ %5537, %5565 ]
  %5570 = phi float [ %5649, %5646 ], [ %5538, %5565 ]
  %5571 = phi float [ %5650, %5646 ], [ %5539, %5565 ]
  %5572 = phi float [ %5651, %5646 ], [ %5540, %5565 ]
  %5573 = phi float [ %5652, %5646 ], [ %5541, %5565 ]
  %5574 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5567)  ; FirstbitLo(value)
  %5575 = add i32 %5574, %5548
  %5576 = and i32 %5574, 31
  %5577 = shl i32 1, %5576
  %5578 = xor i32 %5577, %5567
  %5579 = mul i32 %5575, 112
  %5580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = or i32 %5579, 12
  %5585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5584, i32 undef)  ; BufferLoad(srv,index,wot)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = add i32 %5579, 44
  %5588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5587, i32 undef)  ; BufferLoad(srv,index,wot)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = add i32 %5579, 48
  %5591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5590, i32 undef)  ; BufferLoad(srv,index,wot)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.ResRet.f32 %5591, 2
  %5595 = add i32 %5579, 80
  %5596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = select i1 %173, float %5597, float %5581
  %5601 = select i1 %173, float %5599, float %5582
  %5602 = select i1 %173, float %5598, float %5583
  %5603 = fsub fast float %5592, %131
  %5604 = fsub fast float %5593, %132
  %5605 = fsub fast float %5594, %133
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 24, float %5606)  ; Sqrt(value)
  %5608 = fdiv fast float 1.000000e+00, %5607
  %5609 = fmul fast float %5608, %5603
  %5610 = fmul fast float %5608, %5604
  %5611 = fmul fast float %5608, %5605
  %5612 = fadd fast float %5607, %5586
  %5613 = fdiv fast float 1.000000e+00, %5612
  %5614 = fmul float %5589, %5613
  %5615 = fmul float %5614, %5614
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = and i32 %5577, %5563
  %5618 = icmp eq i32 %5617, 0
  br i1 %5618, label %5641, label %5619, !dx.controlflow.hints !73

; <label>:5619                                    ; preds = %5566
  %5620 = lshr i32 %5511, 5
  %5621 = lshr i32 %5512, 5
  %5622 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5620, i32 %5621, i32 %5575, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5623 = extractvalue %dx.types.ResRet.i32 %5622, 0
  %5624 = and i32 %5623, 3
  %5625 = icmp eq i32 %5624, 0
  %5626 = select i1 %5625, float 1.000000e+00, float 0.000000e+00
  %5627 = icmp eq i32 %5624, 3
  br i1 %5627, label %5628, label %5641

; <label>:5628                                    ; preds = %5619
  %5629 = lshr i32 %5623, 10
  %5630 = and i32 %5629, 8160
  %5631 = and i32 %5512, 31
  %5632 = or i32 %5630, %5631
  %5633 = lshr i32 %5623, 1
  %5634 = and i32 %5633, 16352
  %5635 = and i32 %5511, 31
  %5636 = or i32 %5634, %5635
  %5637 = lshr i32 %5623, 23
  %5638 = and i32 %5637, 255
  %5639 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5636, i32 %5632, i32 %5638, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5640 = extractvalue %dx.types.ResRet.f32 %5639, 0
  br label %5641

; <label>:5641                                    ; preds = %5628, %5619, %5566
  %5642 = phi float [ %5640, %5628 ], [ %5626, %5619 ], [ 0.000000e+00, %5566 ]
  %5643 = call float @dx.op.binary.f32(i32 36, float %5642, float %5642)  ; FMin(a,b)
  %5644 = call float @dx.op.binary.f32(i32 36, float %5642, float %5643)  ; FMin(a,b)
  %5645 = fcmp fast ogt float %5644, 0.000000e+00
  br i1 %5645, label %5654, label %5646, !dx.controlflow.hints !74

; <label>:5646                                    ; preds = %5890, %5641
  %5647 = phi float [ %5568, %5641 ], [ %5930, %5890 ]
  %5648 = phi float [ %5569, %5641 ], [ %5931, %5890 ]
  %5649 = phi float [ %5570, %5641 ], [ %5932, %5890 ]
  %5650 = phi float [ %5571, %5641 ], [ %5924, %5890 ]
  %5651 = phi float [ %5572, %5641 ], [ %5925, %5890 ]
  %5652 = phi float [ %5573, %5641 ], [ %5926, %5890 ]
  %5653 = icmp eq i32 %5567, %5577
  br i1 %5653, label %5933, label %5566

; <label>:5654                                    ; preds = %5641
  %5655 = fmul fast float %5642, %5600
  %5656 = fmul fast float %5642, %5601
  %5657 = fmul fast float %5642, %5602
  %5658 = fsub fast float %5594, %4846
  %5659 = fcmp fast ogt float %5658, 0.000000e+00
  %5660 = fsub fast float %133, %4846
  %5661 = fcmp fast ogt float %5660, 0.000000e+00
  %5662 = xor i1 %5661, %5659
  %5663 = fsub fast float %4846, %5594
  %5664 = fmul fast float %5663, 2.000000e+00
  %5665 = fadd fast float %5664, %5594
  %5666 = select i1 %5662, float %5594, float %5665
  %5667 = fsub fast float %5666, %133
  %5668 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5667, float %5603, float %5604, float %5667)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = call float @dx.op.unary.f32(i32 25, float %5668)  ; Rsqrt(value)
  %5670 = fmul fast float %5669, %5603
  %5671 = fmul fast float %5669, %5604
  %5672 = fmul fast float %5669, %5667
  %5673 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5670, float %5671, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fdiv fast float 1.000000e+00, %5674
  %5676 = fmul fast float %5675, %5673
  %5677 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5660, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = fcmp fast ogt float %5677, 0.000000e+00
  %5679 = fcmp fast olt float %5677, 0.000000e+00
  %5680 = zext i1 %5678 to i32
  %5681 = zext i1 %5679 to i32
  %5682 = sub nsw i32 %5680, %5681
  %5683 = sitofp i32 %5682 to float
  %5684 = fsub fast float %5666, %4846
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5684, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = fcmp fast ogt float %5685, 0.000000e+00
  %5687 = fcmp fast olt float %5685, 0.000000e+00
  %5688 = zext i1 %5686 to i32
  %5689 = zext i1 %5687 to i32
  %5690 = sub nsw i32 %5688, %5689
  %5691 = sitofp i32 %5690 to float
  %5692 = fcmp fast une float %5683, %5691
  br i1 %5692, label %5693, label %5703

; <label>:5693                                    ; preds = %5654
  %5694 = fmul fast float %5676, %5672
  %5695 = fmul fast float %5676, %5671
  %5696 = fmul fast float %5676, %5670
  %5697 = fmul fast float %5696, %5696
  %5698 = fmul fast float %5695, %5695
  %5699 = fadd fast float %5697, %5698
  %5700 = fmul fast float %5694, %5694
  %5701 = fadd fast float %5699, %5700
  %5702 = call float @dx.op.unary.f32(i32 24, float %5701)  ; Sqrt(value)
  br label %5715

; <label>:5703                                    ; preds = %5654
  %5704 = icmp slt i32 %5682, 0
  br i1 %5704, label %5705, label %5715

; <label>:5705                                    ; preds = %5703
  %5706 = fsub fast float %131, %5592
  %5707 = fsub fast float %132, %5593
  %5708 = fsub fast float %133, %5666
  %5709 = fmul fast float %5706, %5706
  %5710 = fmul fast float %5707, %5707
  %5711 = fadd fast float %5709, %5710
  %5712 = fmul fast float %5708, %5708
  %5713 = fadd fast float %5711, %5712
  %5714 = call float @dx.op.unary.f32(i32 24, float %5713)  ; Sqrt(value)
  br label %5715

; <label>:5715                                    ; preds = %5705, %5703, %5693
  %5716 = phi float [ %5702, %5693 ], [ %5714, %5705 ], [ 0.000000e+00, %5703 ]
  %5717 = and i1 %5661, %5659
  %5718 = fsub fast float -0.000000e+00, %5716
  %5719 = select i1 %5717, float -0.000000e+00, float %5718
  %5720 = fmul fast float %4847, 0x3FF7154760000000
  %5721 = fmul fast float %5720, %5719
  %5722 = fmul fast float %4848, 0x3FF7154760000000
  %5723 = fmul fast float %5722, %5719
  %5724 = fmul fast float %4849, 0x3FF7154760000000
  %5725 = fmul fast float %5724, %5719
  %5726 = call float @dx.op.unary.f32(i32 21, float %5721)  ; Exp(value)
  %5727 = call float @dx.op.unary.f32(i32 21, float %5723)  ; Exp(value)
  %5728 = call float @dx.op.unary.f32(i32 21, float %5725)  ; Exp(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = fmul fast float %5655, %5729
  %5733 = fmul fast float %5656, %5730
  %5734 = fmul fast float %5657, %5731
  %5735 = fsub fast float %5609, %5046
  %5736 = fsub fast float %5610, %5045
  %5737 = fsub fast float %5611, %5044
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %5737, float %5735, float %5736, float %5737)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = call float @dx.op.unary.f32(i32 25, float %5738)  ; Rsqrt(value)
  %5740 = fmul fast float %5739, %5735
  %5741 = fmul fast float %5739, %5736
  %5742 = fmul fast float %5739, %5737
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5611, float %5050, float %5051, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5042, float %5041, float %5740, float %5741, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5746 = fmul fast float %5745, %5616
  %5747 = fmul fast float %5745, %5745
  %5748 = fmul fast float %5747, %5269
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fmul fast float %5746, %5749
  %5751 = bitcast float %5606 to i32
  %5752 = ashr i32 %5751, 1
  %5753 = sub nsw i32 1597463007, %5752
  %5754 = bitcast i32 %5753 to float
  %5755 = fmul fast float %5754, %5603
  %5756 = fmul fast float %5754, %5604
  %5757 = fmul fast float %5754, %5605
  %5758 = fsub fast float %5755, %5046
  %5759 = fsub fast float %5756, %5045
  %5760 = fsub fast float %5757, %5044
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float %5758, float %5759, float %5760)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = call float @dx.op.unary.f32(i32 25, float %5761)  ; Rsqrt(value)
  %5763 = fmul fast float %5758, %5762
  %5764 = fmul fast float %5759, %5762
  %5765 = fmul fast float %5760, %5762
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fmul fast float %5766, %5766
  %5768 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5769 = fsub fast float 1.000000e+00, %5056
  %5770 = call float @dx.op.binary.f32(i32 35, float %5769, float 0x3F847AE140000000)  ; FMax(a,b)
  %5771 = fmul fast float %5770, %5770
  %5772 = fmul fast float %5771, %5771
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = fmul fast float %5060, %5060
  %5775 = fmul fast float %5774, %5773
  %5776 = fadd fast float %5775, %5772
  %5777 = bitcast float %5776 to i32
  %5778 = ashr i32 %5777, 1
  %5779 = add nsw i32 %5778, 532487669
  %5780 = bitcast i32 %5779 to float
  %5781 = fadd fast float %5780, %5060
  %5782 = fmul fast float %5772, %5767
  %5783 = fsub fast float 1.000000e+00, %5767
  %5784 = fadd fast float %5783, %5782
  %5785 = fmul fast float %5768, %5768
  %5786 = fmul fast float %5785, %5773
  %5787 = fadd fast float %5786, %5772
  %5788 = bitcast float %5787 to i32
  %5789 = ashr i32 %5788, 1
  %5790 = add nsw i32 %5789, 532487669
  %5791 = bitcast i32 %5790 to float
  %5792 = fadd fast float %5791, %5768
  %5793 = fmul fast float %5784, %5784
  %5794 = fmul fast float %5793, %5781
  %5795 = fmul fast float %5794, %5792
  %5796 = fdiv fast float 1.000000e+00, %5795
  %5797 = bitcast float %5772 to i32
  %5798 = sitofp i32 %5797 to float
  %5799 = fmul fast float %5798, 0x3FE7F73180000000
  %5800 = fadd fast float %5799, 0x41AFE27C40000000
  %5801 = fptosi float %5800 to i32
  %5802 = bitcast i32 %5801 to float
  %5803 = fmul fast float %5589, 0x3FD80E9D60000000
  %5804 = fmul fast float %5803, %5754
  %5805 = fadd fast float %5802, %5804
  %5806 = bitcast float %5805 to i32
  %5807 = sub nsw i32 2129859010, %5806
  %5808 = bitcast i32 %5807 to float
  %5809 = fmul fast float %5772, %5796
  %5810 = fmul fast float %5809, %5802
  %5811 = fmul fast float %5810, %5808
  %5812 = call float @dx.op.unary.f32(i32 6, float %5744)  ; FAbs(value)
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = bitcast float %5813 to i32
  %5815 = sitofp i32 %5814 to float
  %5816 = fmul fast float %5815, 5.000000e+00
  %5817 = fadd fast float %5816, 0xC1EFBF8940000000
  %5818 = fptosi float %5817 to i32
  %5819 = bitcast i32 %5818 to float
  %5820 = fsub fast float 1.000000e+00, %5047
  %5821 = fsub fast float 1.000000e+00, %5048
  %5822 = fsub fast float 1.000000e+00, %5058
  %5823 = fmul fast float %5819, %5820
  %5824 = fmul fast float %5819, %5821
  %5825 = fmul fast float %5819, %5822
  %5826 = fadd fast float %5823, %5047
  %5827 = fadd fast float %5824, %5048
  %5828 = fadd fast float %5825, %5058
  br i1 %5184, label %5829, label %5852

; <label>:5829                                    ; preds = %5715
  %5830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4445, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.ResRet.f32 %5830, 2
  %5834 = fadd fast float %5831, -5.000000e-01
  %5835 = fadd fast float %5832, -5.000000e-01
  %5836 = fadd fast float %5833, -5.000000e-01
  %5837 = fmul fast float %5047, 4.000000e+00
  %5838 = fmul fast float %5837, %5820
  %5839 = fmul fast float %5838, %5834
  %5840 = fmul fast float %5048, 4.000000e+00
  %5841 = fmul fast float %5840, %5821
  %5842 = fmul fast float %5841, %5835
  %5843 = fmul fast float %5058, 4.000000e+00
  %5844 = fmul fast float %5843, %5822
  %5845 = fmul fast float %5844, %5836
  %5846 = fadd fast float %5839, %5826
  %5847 = fadd fast float %5842, %5827
  %5848 = fadd fast float %5845, %5828
  %5849 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5850 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5851 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  br label %5852

; <label>:5852                                    ; preds = %5829, %5715
  %5853 = phi float [ %5849, %5829 ], [ %5826, %5715 ]
  %5854 = phi float [ %5850, %5829 ], [ %5827, %5715 ]
  %5855 = phi float [ %5851, %5829 ], [ %5828, %5715 ]
  %5856 = fmul fast float %5743, 9.843750e-01
  %5857 = fadd fast float %5856, 7.812500e-03
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5857, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 3
  %5861 = fmul fast float %5859, %5047
  %5862 = fmul fast float %5859, %5048
  %5863 = fmul fast float %5859, %5058
  %5864 = fadd fast float %5861, %5860
  %5865 = fadd fast float %5862, %5860
  %5866 = fadd fast float %5863, %5860
  br i1 %5184, label %5867, label %5890

; <label>:5867                                    ; preds = %5852
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4445, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = fadd fast float %5869, -5.000000e-01
  %5873 = fadd fast float %5870, -5.000000e-01
  %5874 = fadd fast float %5871, -5.000000e-01
  %5875 = fmul fast float %5047, 4.000000e+00
  %5876 = fmul fast float %5875, %5820
  %5877 = fmul fast float %5876, %5872
  %5878 = fmul fast float %5048, 4.000000e+00
  %5879 = fmul fast float %5878, %5821
  %5880 = fmul fast float %5879, %5873
  %5881 = fmul fast float %5058, 4.000000e+00
  %5882 = fmul fast float %5881, %5822
  %5883 = fmul fast float %5882, %5874
  %5884 = fadd fast float %5877, %5864
  %5885 = fadd fast float %5880, %5865
  %5886 = fadd fast float %5883, %5866
  %5887 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5888 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5889 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  br label %5890

; <label>:5890                                    ; preds = %5867, %5852
  %5891 = phi float [ %5887, %5867 ], [ %5864, %5852 ]
  %5892 = phi float [ %5888, %5867 ], [ %5865, %5852 ]
  %5893 = phi float [ %5889, %5867 ], [ %5866, %5852 ]
  %5894 = call float @dx.op.binary.f32(i32 35, float %5892, float %5893)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5891, float %5894)  ; FMax(a,b)
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = fmul fast float %5853, %5811
  %5898 = fmul fast float %5854, %5811
  %5899 = fmul fast float %5855, %5811
  %5900 = fsub fast float 1.000000e+00, %5744
  %5901 = bitcast float %5900 to i32
  %5902 = sitofp i32 %5901 to float
  %5903 = fmul fast float %5902, 5.000000e+00
  %5904 = fadd fast float %5903, 0xC1EFBF8940000000
  %5905 = fptosi float %5904 to i32
  %5906 = bitcast i32 %5905 to float
  %5907 = fmul fast float %5906, %4446
  %5908 = fmul fast float %5896, %5907
  %5909 = fmul fast float %5908, %5234
  %5910 = fmul fast float %5908, %5235
  %5911 = fmul fast float %5908, %5236
  %5912 = fadd fast float %5909, %5897
  %5913 = fadd fast float %5910, %5898
  %5914 = fadd fast float %5911, %5899
  %5915 = fmul fast float %5732, %4442
  %5916 = fmul fast float %5915, %5750
  %5917 = fmul fast float %5916, %5896
  %5918 = fmul fast float %5733, %4442
  %5919 = fmul fast float %5918, %5750
  %5920 = fmul fast float %5919, %5896
  %5921 = fmul fast float %5734, %4442
  %5922 = fmul fast float %5921, %5750
  %5923 = fmul fast float %5922, %5896
  %5924 = fadd fast float %5917, %5571
  %5925 = fadd fast float %5920, %5572
  %5926 = fadd fast float %5923, %5573
  %5927 = fmul fast float %5916, %5912
  %5928 = fmul fast float %5919, %5913
  %5929 = fmul fast float %5922, %5914
  %5930 = fadd fast float %5927, %5568
  %5931 = fadd fast float %5928, %5569
  %5932 = fadd fast float %5929, %5570
  br label %5646

; <label>:5933                                    ; preds = %5646
  br label %5934

; <label>:5934                                    ; preds = %5933, %5534
  %5935 = phi float [ %5536, %5534 ], [ %5647, %5933 ]
  %5936 = phi float [ %5537, %5534 ], [ %5648, %5933 ]
  %5937 = phi float [ %5538, %5534 ], [ %5649, %5933 ]
  %5938 = phi float [ %5539, %5534 ], [ %5650, %5933 ]
  %5939 = phi float [ %5540, %5534 ], [ %5651, %5933 ]
  %5940 = phi float [ %5541, %5534 ], [ %5652, %5933 ]
  %5941 = add i32 %5535, 1
  %5942 = icmp ugt i32 %5941, %5531
  br i1 %5942, label %5943, label %5534

; <label>:5943                                    ; preds = %5934
  br label %5944

; <label>:5944                                    ; preds = %5943, %5510, %5500
  %5945 = phi float [ %5501, %5500 ], [ %5501, %5510 ], [ %5935, %5943 ]
  %5946 = phi float [ %5502, %5500 ], [ %5502, %5510 ], [ %5936, %5943 ]
  %5947 = phi float [ %5503, %5500 ], [ %5503, %5510 ], [ %5937, %5943 ]
  %5948 = phi float [ %5504, %5500 ], [ %5504, %5510 ], [ %5938, %5943 ]
  %5949 = phi float [ %5505, %5500 ], [ %5505, %5510 ], [ %5939, %5943 ]
  %5950 = phi float [ %5506, %5500 ], [ %5506, %5510 ], [ %5940, %5943 ]
  %5951 = call float @dx.op.unary.f32(i32 24, float %5053)  ; Sqrt(value)
  %5952 = call float @dx.op.unary.f32(i32 24, float %5054)  ; Sqrt(value)
  %5953 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  %5954 = fmul fast float %5951, %5948
  %5955 = fmul fast float %5952, %5949
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  br i1 %173, label %5958, label %5978

; <label>:5958                                    ; preds = %5944
  %5959 = fadd fast float %5950, %4448
  %5960 = fmul fast float %5959, %4449
  %5961 = fsub fast float 1.000000e+00, %4449
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5965 = fmul fast float %5964, %5962
  %5966 = fadd fast float %5965, %5960
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = fmul fast float %5968, %5240
  %5970 = fsub fast float %5966, %5969
  %5971 = fadd fast float %5955, %5954
  %5972 = fmul fast float %5957, %5971
  %5973 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5974 = fsub fast float %5970, %5973
  %5975 = extractvalue %dx.types.CBufRet.f32 %5963, 2
  %5976 = fmul fast float %5974, %5975
  %5977 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  br label %5994

; <label>:5978                                    ; preds = %5944
  %5979 = fmul fast float %5953, %5950
  %5980 = fmul fast float %5957, %5954
  %5981 = fmul fast float %5957, %5955
  %5982 = fmul fast float %5979, %5957
  %5983 = add i32 %33, 356
  %5984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5983, i32 undef)  ; BufferLoad(srv,index,wot)
  %5985 = extractvalue %dx.types.ResRet.i32 %5984, 0
  %5986 = and i32 %5985, 32
  %5987 = icmp eq i32 %5986, 0
  br i1 %5987, label %5994, label %5988

; <label>:5988                                    ; preds = %5978
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = fmul fast float %5990, 0x3FE99999A0000000
  %5992 = fadd fast float %5990, %5980
  %5993 = fadd fast float %5991, %5982
  br label %5994

; <label>:5994                                    ; preds = %5988, %5978, %5958
  %5995 = phi float [ %5972, %5958 ], [ %5992, %5988 ], [ %5980, %5978 ]
  %5996 = phi float [ %5977, %5958 ], [ %5981, %5988 ], [ %5981, %5978 ]
  %5997 = phi float [ 1.000000e+00, %5958 ], [ %5993, %5988 ], [ %5982, %5978 ]
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6000 = fmul fast float %5999, %5946
  %6001 = fmul fast float %5999, %5947
  %6002 = fadd fast float %5946, %5945
  %6003 = select i1 %173, float %6002, float %5945
  %6004 = fmul float %6003, %5999
  %6005 = select i1 %173, float 0.000000e+00, float %6000
  %6006 = select i1 %173, float 0.000000e+00, float %6001
  %6007 = fmul fast float %5995, %5951
  %6008 = fmul fast float %5996, %5952
  %6009 = fmul fast float %5997, %5953
  %6010 = fadd fast float %6004, %6007
  %6011 = fadd fast float %6005, %6008
  %6012 = fadd fast float %6006, %6009
  %6013 = select i1 %173, float %5996, float %6011
  %6014 = select i1 %173, float %5997, float %6012
  %6015 = call float @dx.op.binary.f32(i32 36, float %6010, float 3.225500e+04)  ; FMin(a,b)
  %6016 = call float @dx.op.binary.f32(i32 36, float %6013, float 3.225500e+04)  ; FMin(a,b)
  %6017 = call float @dx.op.binary.f32(i32 36, float %6014, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6015)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

