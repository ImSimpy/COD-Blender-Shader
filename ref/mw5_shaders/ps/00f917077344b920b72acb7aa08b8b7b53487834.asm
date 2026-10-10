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
; shader hash: aaefe94a51c6c4ccba25eefb33ac2245
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
  %356 = add i32 %33, 472
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
  %857 = and i32 %856, 43008
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %882, label %859

; <label>:859                                     ; preds = %851
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 32768
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %882, label %864

; <label>:864                                     ; preds = %859
  %865 = and i32 %861, 1048576
  %866 = icmp ne i32 %865, 0
  %867 = add i32 %33, 456
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %869, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 2
  %874 = select i1 %866, float 1.000000e+00, float %873
  %875 = add i32 %33, 100
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = lshr i32 %877, 22
  %879 = shl nuw nsw i32 %878, 5
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = fmul fast float %880, %874
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
  %1562 = and i32 %1561, 43008
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1587, label %1564

; <label>:1564                                    ; preds = %1556
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 32768
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1587, label %1569

; <label>:1569                                    ; preds = %1564
  %1570 = and i32 %1566, 1048576
  %1571 = icmp ne i32 %1570, 0
  %1572 = add i32 %33, 460
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1579 = select i1 %1571, float 1.000000e+00, float %1578
  %1580 = add i32 %33, 116
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = lshr i32 %1582, 22
  %1584 = shl nuw nsw i32 %1583, 5
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = fmul fast float %1585, %1579
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
  %1720 = and i32 %1618, 32768
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
  %2035 = add i32 %33, 432
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
  %2087 = add i32 %33, 416
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
  %2113 = add i32 %33, 368
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
  %2136 = add i32 %33, 448
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
  %2334 = add i32 %33, 384
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
  %2418 = add i32 %33, 400
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
  %2456 = and i32 %2455, 43008
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2481, label %2458

; <label>:2458                                    ; preds = %2450
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 32768
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2481, label %2463

; <label>:2463                                    ; preds = %2458
  %2464 = and i32 %2460, 1048576
  %2465 = icmp ne i32 %2464, 0
  %2466 = add i32 %33, 464
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = add i32 %2468, 0
  %2470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2470, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 2
  %2473 = select i1 %2465, float 1.000000e+00, float %2472
  %2474 = add i32 %33, 132
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = lshr i32 %2476, 22
  %2478 = shl nuw nsw i32 %2477, 5
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = fmul fast float %2479, %2473
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
  %2614 = and i32 %2512, 32768
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
  %2929 = add i32 %33, 436
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
  %2981 = add i32 %33, 420
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
  %3007 = add i32 %33, 372
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
  %3030 = add i32 %33, 452
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
  %3228 = add i32 %33, 388
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
  %3312 = add i32 %33, 404
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
  %3350 = and i32 %3349, 43008
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3375, label %3352

; <label>:3352                                    ; preds = %3344
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = and i32 %3354, 32768
  %3356 = icmp eq i32 %3355, 0
  br i1 %3356, label %3375, label %3357

; <label>:3357                                    ; preds = %3352
  %3358 = and i32 %3354, 1048576
  %3359 = icmp ne i32 %3358, 0
  %3360 = add i32 %33, 468
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 2
  %3367 = select i1 %3359, float 1.000000e+00, float %3366
  %3368 = add i32 %33, 148
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = lshr i32 %3370, 22
  %3372 = shl nuw nsw i32 %3371, 5
  %3373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3372)  ; LegacyF16ToF32(value)
  %3374 = fmul fast float %3373, %3367
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
  %3508 = and i32 %3406, 32768
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
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = call float @dx.op.dot2.f32(i32 54, float %3581, float %3582, float %3581, float %3582)  ; Dot2(ax,ay,bx,by)
  %3597 = fmul fast float %3596, 0x3FE3333340000000
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3598, float %3581, float %3582, float %3598)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = call float @dx.op.unary.f32(i32 25, float %3599)  ; Rsqrt(value)
  %3601 = fmul fast float %3600, %3581
  %3602 = fmul fast float %3600, %3582
  %3603 = fmul fast float %3598, %3600
  %3604 = fmul fast float %3603, %75
  %3605 = fmul fast float %3603, %76
  %3606 = fmul fast float %3603, %77
  %3607 = fmul fast float %3601, %49
  %3608 = fmul fast float %3601, %50
  %3609 = fmul fast float %3601, %51
  %3610 = fadd fast float %3604, %3607
  %3611 = fadd fast float %3605, %3608
  %3612 = fadd fast float %3606, %3609
  %3613 = fmul fast float %87, %3602
  %3614 = fmul fast float %88, %3602
  %3615 = fmul fast float %89, %3602
  %3616 = fadd fast float %3610, %3613
  %3617 = fadd fast float %3611, %3614
  %3618 = fadd fast float %3612, %3615
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3618, float %3616, float %3617, float %3618)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = call float @dx.op.unary.f32(i32 25, float %3619)  ; Rsqrt(value)
  %3621 = fmul fast float %3616, %3620
  %3622 = fmul fast float %3617, %3620
  %3623 = fmul fast float %3618, %3620
  %3624 = and i32 %35, 1
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %3626, label %4139

; <label>:3626                                    ; preds = %3580
  %3627 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3628 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3629 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3630 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3631 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3632 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3633 = fadd fast float %3627, %131
  %3634 = fadd fast float %3628, %132
  %3635 = fadd fast float %3629, %133
  %3636 = fadd fast float %3630, %131
  %3637 = fadd fast float %3631, %132
  %3638 = fadd fast float %3632, %133
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 3
  %3646 = fmul fast float %3640, %68
  %3647 = fmul fast float %3646, %3644
  %3648 = fmul fast float %3641, %69
  %3649 = fmul fast float %3648, %3645
  %3650 = fptoui float %3647 to i32
  %3651 = fptoui float %3649 to i32
  %3652 = fadd fast float %3640, -1.000000e+00
  %3653 = fadd fast float %3641, -1.000000e+00
  %3654 = fptoui float %3652 to i32
  %3655 = fptoui float %3653 to i32
  %3656 = call i32 @dx.op.binary.i32(i32 40, i32 %3650, i32 %3654)  ; UMin(a,b)
  %3657 = call i32 @dx.op.binary.i32(i32 40, i32 %3651, i32 %3655)  ; UMin(a,b)
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3660 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3661 = fmul fast float %3659, %63
  %3662 = fsub fast float %3661, %3660
  %3663 = fadd fast float %3642, -1.000000e+00
  %3664 = call float @dx.op.binary.f32(i32 36, float %3662, float %3663)  ; FMin(a,b)
  %3665 = fptoui float %3664 to i32
  %3666 = fptoui float %3640 to i32
  %3667 = fptoui float %3641 to i32
  %3668 = mul i32 %3665, %3667
  %3669 = add i32 %3668, %3657
  %3670 = mul i32 %3669, %3666
  %3671 = add i32 %3670, %3656
  %3672 = shl i32 %3671, 2
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = and i32 %3674, 1023
  %3676 = lshr i32 %3674, 10
  %3677 = icmp eq i32 %3675, 0
  br i1 %3677, label %4107, label %3678

; <label>:3678                                    ; preds = %3626
  %3679 = and i32 %3674, 1023
  br label %3680

; <label>:3680                                    ; preds = %3807, %3678
  %3681 = phi i32 [ %3757, %3807 ], [ 0, %3678 ]
  %3682 = phi float [ %3808, %3807 ], [ 0.000000e+00, %3678 ]
  %3683 = phi float [ %3809, %3807 ], [ %3595, %3678 ]
  %3684 = phi float [ %3810, %3807 ], [ %3593, %3678 ]
  %3685 = phi float [ %3811, %3807 ], [ %3592, %3678 ]
  %3686 = phi float [ %3812, %3807 ], [ 0.000000e+00, %3678 ]
  %3687 = phi float [ %3813, %3807 ], [ 0.000000e+00, %3678 ]
  %3688 = phi float [ %3814, %3807 ], [ %3586, %3678 ]
  %3689 = phi float [ %3815, %3807 ], [ %3587, %3678 ]
  %3690 = phi float [ %3816, %3807 ], [ %3588, %3678 ]
  %3691 = phi float [ %3817, %3807 ], [ %3621, %3678 ]
  %3692 = phi float [ %3818, %3807 ], [ %3622, %3678 ]
  %3693 = phi float [ %3819, %3807 ], [ %3623, %3678 ]
  %3694 = phi float [ %3820, %3807 ], [ %3591, %3678 ]
  %3695 = phi float [ %3821, %3807 ], [ %3590, %3678 ]
  %3696 = phi float [ %3822, %3807 ], [ 0.000000e+00, %3678 ]
  %3697 = phi float [ %3823, %3807 ], [ %3589, %3678 ]
  %3698 = phi float [ %3824, %3807 ], [ %3583, %3678 ]
  %3699 = phi float [ %3825, %3807 ], [ %3584, %3678 ]
  %3700 = phi float [ %3826, %3807 ], [ %3585, %3678 ]
  %3701 = add nuw nsw i32 %3681, %3676
  %3702 = shl i32 %3701, 2
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = shl i32 %3704, 8
  %3706 = or i32 %3705, 48
  %3707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3707, 2
  %3711 = extractvalue %dx.types.ResRet.f32 %3707, 3
  %3712 = or i32 %3705, 64
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.i32 %3713, 1
  %3716 = or i32 %3705, 80
  %3717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3720 = or i32 %3705, 96
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = extractvalue %dx.types.ResRet.f32 %3721, 3
  %3726 = or i32 %3705, 112
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3729 = or i32 %3705, 128
  %3730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = extractvalue %dx.types.ResRet.f32 %3730, 3
  %3735 = or i32 %3705, 144
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = or i32 %3705, 160
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3747 = or i32 %3705, 192
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = or i32 %3705, 208
  %3751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = or i32 %3705, 248
  %3754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = add nuw nsw i32 %3681, 1
  %3758 = bitcast float %3711 to i32
  %3759 = and i32 %3758, 512
  %3760 = icmp eq i32 %3759, 0
  %3761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = call float @dx.op.dot4.f32(i32 56, float %3762, float %3763, float %3764, float %3765, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3767 = or i32 %3705, 16
  %3768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.ResRet.f32 %3768, 3
  %3773 = call float @dx.op.dot4.f32(i32 56, float %3769, float %3770, float %3771, float %3772, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3774 = or i32 %3705, 32
  %3775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = extractvalue %dx.types.ResRet.f32 %3775, 3
  %3780 = call float @dx.op.dot4.f32(i32 56, float %3776, float %3777, float %3778, float %3779, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3781 = call float @dx.op.unary.f32(i32 27, float %3766)  ; Round_ni(value)
  %3782 = call float @dx.op.unary.f32(i32 6, float %3781)  ; FAbs(value)
  %3783 = call float @dx.op.unary.f32(i32 27, float %3773)  ; Round_ni(value)
  %3784 = call float @dx.op.unary.f32(i32 6, float %3783)  ; FAbs(value)
  %3785 = call float @dx.op.unary.f32(i32 6, float %3780)  ; FAbs(value)
  %3786 = call float @dx.op.unary.f32(i32 27, float %3785)  ; Round_ni(value)
  %3787 = fadd fast float %3784, %3782
  %3788 = fadd fast float %3787, %3786
  %3789 = fcmp fast oeq float %3788, 0.000000e+00
  %3790 = call float @dx.op.dot4.f32(i32 56, float %3762, float %3763, float %3764, float %3765, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3791 = call float @dx.op.dot4.f32(i32 56, float %3769, float %3770, float %3771, float %3772, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3792 = call float @dx.op.dot4.f32(i32 56, float %3762, float %3763, float %3764, float %3765, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3793 = call float @dx.op.dot4.f32(i32 56, float %3769, float %3770, float %3771, float %3772, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3794 = fsub fast float %3790, %3766
  %3795 = fsub fast float %3792, %3766
  %3796 = fsub fast float %3791, %3773
  %3797 = fsub fast float %3793, %3773
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3801 = fadd fast float %3800, %3798
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3804 = fcmp fast ogt float %3802, %3803
  %3805 = and i1 %3789, %3804
  %3806 = and i1 %3760, %3805
  br i1 %3806, label %3828, label %3807

; <label>:3807                                    ; preds = %4093, %3909, %3828, %3680
  %3808 = phi float [ %3682, %3828 ], [ %3912, %3909 ], [ %3912, %4093 ], [ %3682, %3680 ]
  %3809 = phi float [ %3683, %3828 ], [ %3683, %3909 ], [ %4068, %4093 ], [ %3683, %3680 ]
  %3810 = phi float [ %3684, %3828 ], [ %3684, %3909 ], [ %4066, %4093 ], [ %3684, %3680 ]
  %3811 = phi float [ %3685, %3828 ], [ %3685, %3909 ], [ %4038, %4093 ], [ %3685, %3680 ]
  %3812 = phi float [ %3686, %3828 ], [ %3686, %3909 ], [ %4036, %4093 ], [ %3686, %3680 ]
  %3813 = phi float [ %3687, %3828 ], [ %3687, %3909 ], [ %4034, %4093 ], [ %3687, %3680 ]
  %3814 = phi float [ %3688, %3828 ], [ %3688, %3909 ], [ %4103, %4093 ], [ %3688, %3680 ]
  %3815 = phi float [ %3689, %3828 ], [ %3689, %3909 ], [ %4104, %4093 ], [ %3689, %3680 ]
  %3816 = phi float [ %3690, %3828 ], [ %3690, %3909 ], [ %4105, %4093 ], [ %3690, %3680 ]
  %3817 = phi float [ %3691, %3828 ], [ %3691, %3909 ], [ %4015, %4093 ], [ %3691, %3680 ]
  %3818 = phi float [ %3692, %3828 ], [ %3692, %3909 ], [ %4016, %4093 ], [ %3692, %3680 ]
  %3819 = phi float [ %3693, %3828 ], [ %3693, %3909 ], [ %4017, %4093 ], [ %3693, %3680 ]
  %3820 = phi float [ %3694, %3828 ], [ %3694, %3909 ], [ %4046, %4093 ], [ %3694, %3680 ]
  %3821 = phi float [ %3695, %3828 ], [ %3695, %3909 ], [ %4043, %4093 ], [ %3695, %3680 ]
  %3822 = phi float [ %3696, %3828 ], [ %3696, %3909 ], [ %4040, %4093 ], [ %3696, %3680 ]
  %3823 = phi float [ %3697, %3828 ], [ %3697, %3909 ], [ %4032, %4093 ], [ %3697, %3680 ]
  %3824 = phi float [ %3698, %3828 ], [ %3698, %3909 ], [ %4027, %4093 ], [ %3698, %3680 ]
  %3825 = phi float [ %3699, %3828 ], [ %3699, %3909 ], [ %4028, %4093 ], [ %3699, %3680 ]
  %3826 = phi float [ %3700, %3828 ], [ %3700, %3909 ], [ %4029, %4093 ], [ %3700, %3680 ]
  %3827 = icmp eq i32 %3757, %3679
  br i1 %3827, label %4106, label %3680

; <label>:3828                                    ; preds = %3680
  %3829 = extractvalue %dx.types.ResRet.f32 %3727, 3
  %3830 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3834 = extractvalue %dx.types.ResRet.i32 %3713, 3
  %3835 = extractvalue %dx.types.ResRet.i32 %3713, 2
  %3836 = add i32 %3834, 0
  %3837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3837, %dx.types.Handle %3838, float %3766, float %3773, float undef, float undef, i32 0, i32 0, i32 undef, float %3794, float %3796, float undef, float %3795, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = fmul fast float %3840, %3833
  %3842 = fadd fast float %3841, %3832
  %3843 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3844 = fmul fast float %3766, %3722
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3773, float %3844)  ; FMad(a,b,c)
  %3846 = fadd fast float %3845, %3831
  %3847 = fmul fast float %3766, %3724
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3773, float %3847)  ; FMad(a,b,c)
  %3849 = fadd fast float %3848, %3830
  %3850 = fmul fast float %3794, %3722
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3796, float %3850)  ; FMad(a,b,c)
  %3852 = fmul fast float %3794, %3724
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3796, float %3852)  ; FMad(a,b,c)
  %3854 = fmul fast float %3795, %3722
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3797, float %3854)  ; FMad(a,b,c)
  %3856 = fmul fast float %3795, %3724
  %3857 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3797, float %3856)  ; FMad(a,b,c)
  %3858 = add i32 %3835, 0
  %3859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3858, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3859, %dx.types.Handle %3838, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = and i32 %3758, 1024
  %3863 = icmp ne i32 %3862, 0
  %3864 = fcmp fast ogt float %3861, 0x3FE0101020000000
  %3865 = uitofp i1 %3864 to float
  %3866 = select i1 %3863, float %3865, float %3861
  %3867 = and i32 %3758, 8192
  %3868 = icmp ne i32 %3867, 0
  %3869 = select i1 %3868, float %3829, float 1.000000e+00
  %3870 = fmul fast float %3766, 2.000000e+00
  %3871 = fadd fast float %3870, -1.000000e+00
  %3872 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3873 = fmul fast float %3872, %3755
  %3874 = fsub fast float %3873, %3755
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3773, 2.000000e+00
  %3877 = fadd fast float %3876, -1.000000e+00
  %3878 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3879 = fmul fast float %3878, %3756
  %3880 = fsub fast float %3879, %3756
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fmul fast float %3785, %3718
  %3883 = fsub fast float %3882, %3718
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
  %3894 = fsub fast float %3802, %3893
  %3895 = fmul fast float %3894, %3892
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3890, %3719
  %3898 = fadd fast float %3890, %3719
  %3899 = fmul fast float %3898, %3728
  %3900 = fsub fast float %3899, %3728
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = and i32 %3758, 128
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3901, float %3897
  %3905 = fmul fast float %3904, %3896
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = fcmp fast ugt float %3905, %3907
  br i1 %3908, label %3909, label %3807

; <label>:3909                                    ; preds = %3828
  %3910 = select i1 %3868, float %3905, float 0.000000e+00
  %3911 = fadd fast float %3910, %3682
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  br i1 %3868, label %3807, label %3913

; <label>:3913                                    ; preds = %3909
  %3914 = and i32 %3758, 4
  %3915 = and i32 %3758, 8
  %3916 = add i32 %3714, 0
  %3917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3916, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3917, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = bitcast float %3740 to i32
  %3925 = and i32 %3924, 255
  %3926 = uitofp i32 %3925 to float
  %3927 = lshr i32 %3924, 8
  %3928 = and i32 %3927, 255
  %3929 = uitofp i32 %3928 to float
  %3930 = fmul fast float %3923, %3926
  %3931 = fadd fast float %3930, %3929
  %3932 = fmul fast float %3931, 0x3F70101000000000
  %3933 = add i32 %3715, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3933, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3934, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %3940 = bitcast float %3734 to i32
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
  %3959 = fmul fast float %3920, %3743
  %3960 = fmul fast float %3921, %3744
  %3961 = fmul fast float %3922, %3745
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
  %3979 = fmul fast float %3978, %3708
  %3980 = fmul fast float %3978, %3709
  %3981 = fmul fast float %3978, %3710
  %3982 = fmul fast float %3976, %3731
  %3983 = fmul fast float %3976, %3732
  %3984 = fmul fast float %3976, %3733
  %3985 = fadd fast float %3982, %3979
  %3986 = fadd fast float %3983, %3980
  %3987 = fadd fast float %3984, %3981
  %3988 = fmul fast float %3977, %3737
  %3989 = fmul fast float %3977, %3738
  %3990 = fmul fast float %3977, %3739
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
  %4002 = and i32 %3758, 1
  %4003 = icmp eq i32 %4002, 0
  br i1 %4003, label %4004, label %4008

; <label>:4004                                    ; preds = %3913
  %4005 = fsub fast float %3996, %3691
  %4006 = fsub fast float %3997, %3692
  %4007 = fsub fast float %3998, %3693
  br label %4008

; <label>:4008                                    ; preds = %4004, %3913
  %4009 = phi float [ %4005, %4004 ], [ %3996, %3913 ]
  %4010 = phi float [ %4006, %4004 ], [ %3997, %3913 ]
  %4011 = phi float [ %4007, %4004 ], [ %3998, %3913 ]
  %4012 = fmul float %4011, %4001
  %4013 = fmul float %4010, %4001
  %4014 = fmul float %4009, %4001
  %4015 = fadd fast float %4014, %3691
  %4016 = fadd fast float %4013, %3692
  %4017 = fadd fast float %4012, %3693
  %4018 = icmp ne i32 %3914, 0
  %4019 = select i1 %4018, float 1.000000e+00, float 0.000000e+00
  %4020 = fmul fast float %3905, %4019
  %4021 = fsub fast float %3959, %3698
  %4022 = fsub fast float %3960, %3699
  %4023 = fsub fast float %3961, %3700
  %4024 = fmul fast float %4021, %4020
  %4025 = fmul fast float %4022, %4020
  %4026 = fmul fast float %4023, %4020
  %4027 = fadd fast float %4024, %3698
  %4028 = fadd fast float %4025, %3699
  %4029 = fadd fast float %4026, %3700
  %4030 = fsub fast float %3932, %3697
  %4031 = fmul fast float %4030, %4020
  %4032 = fadd fast float %4031, %3697
  %4033 = fmul fast float %4020, %3687
  %4034 = fsub fast float %3687, %4033
  %4035 = fmul fast float %4020, %3686
  %4036 = fsub fast float %3686, %4035
  %4037 = fmul fast float %4020, %3685
  %4038 = fsub fast float %3685, %4037
  %4039 = fadd fast float %3905, %3696
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = fsub fast float %3952, %3695
  %4042 = fmul fast float %4041, %4001
  %4043 = fadd fast float %4042, %3695
  %4044 = fsub fast float %3938, %3694
  %4045 = fmul fast float %4044, %4001
  %4046 = fadd fast float %4045, %3694
  %4047 = call float @dx.op.dot3.f32(i32 55, float %3959, float %3960, float %3961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4051 = fmul fast float %4050, %4047
  %4052 = fadd fast float %4051, %4049
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4054 = bitcast float %3746 to i32
  %4055 = and i32 %4054, 65535
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = lshr i32 %4054, 16
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = fcmp fast oge float %4056, 0.000000e+00
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = select i1 %4059, float %4056, float %4061
  %4063 = fadd fast float %4062, %4058
  %4064 = fsub fast float %4053, %3684
  %4065 = fmul fast float %4064, %3905
  %4066 = fadd fast float %4065, %3684
  %4067 = fmul fast float %4063, %3905
  %4068 = call float @dx.op.binary.f32(i32 35, float %3683, float %4067)  ; FMax(a,b)
  %4069 = and i32 %3758, 16
  %4070 = icmp eq i32 %4069, 0
  br i1 %4070, label %4093, label %4071

; <label>:4071                                    ; preds = %4008
  %4072 = bitcast float %3752 to i32
  %4073 = add i32 %3749, 0
  %4074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4075 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4074, %dx.types.Handle %3918, float %3846, float %3849, float undef, float undef, i32 0, i32 0, i32 undef, float %3851, float %3853, float undef, float %3855, float %3857, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4076 = extractvalue %dx.types.ResRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.ResRet.f32 %4075, 1
  %4078 = extractvalue %dx.types.ResRet.f32 %4075, 2
  %4079 = and i32 %4072, 65535
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = fmul fast float %4076, %3743
  %4082 = fmul fast float %4077, %3744
  %4083 = fmul fast float %4078, %3745
  %4084 = and i32 %3758, 16384
  %4085 = icmp ne i32 %4084, 0
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = select i1 %4085, float %4087, float 1.000000e+00
  %4089 = fmul fast float %4088, %4080
  %4090 = fmul fast float %4081, %4089
  %4091 = fmul fast float %4082, %4089
  %4092 = fmul fast float %4083, %4089
  br label %4093

; <label>:4093                                    ; preds = %4071, %4008
  %4094 = phi float [ %4090, %4071 ], [ 0.000000e+00, %4008 ]
  %4095 = phi float [ %4091, %4071 ], [ 0.000000e+00, %4008 ]
  %4096 = phi float [ %4092, %4071 ], [ 0.000000e+00, %4008 ]
  %4097 = fsub fast float %4094, %3688
  %4098 = fsub fast float %4095, %3689
  %4099 = fsub fast float %4096, %3690
  %4100 = fmul fast float %4097, %3905
  %4101 = fmul fast float %4098, %3905
  %4102 = fmul fast float %4099, %3905
  %4103 = fadd fast float %4100, %3688
  %4104 = fadd fast float %4101, %3689
  %4105 = fadd fast float %4102, %3690
  br label %3807

; <label>:4106                                    ; preds = %3807
  br label %4107

; <label>:4107                                    ; preds = %4106, %3626
  %4108 = phi float [ 0.000000e+00, %3626 ], [ %3808, %4106 ]
  %4109 = phi float [ %3595, %3626 ], [ %3809, %4106 ]
  %4110 = phi float [ %3593, %3626 ], [ %3810, %4106 ]
  %4111 = phi float [ %3592, %3626 ], [ %3811, %4106 ]
  %4112 = phi float [ 0.000000e+00, %3626 ], [ %3812, %4106 ]
  %4113 = phi float [ 0.000000e+00, %3626 ], [ %3813, %4106 ]
  %4114 = phi float [ %3586, %3626 ], [ %3814, %4106 ]
  %4115 = phi float [ %3587, %3626 ], [ %3815, %4106 ]
  %4116 = phi float [ %3588, %3626 ], [ %3816, %4106 ]
  %4117 = phi float [ %3621, %3626 ], [ %3817, %4106 ]
  %4118 = phi float [ %3622, %3626 ], [ %3818, %4106 ]
  %4119 = phi float [ %3623, %3626 ], [ %3819, %4106 ]
  %4120 = phi float [ %3591, %3626 ], [ %3820, %4106 ]
  %4121 = phi float [ %3590, %3626 ], [ %3821, %4106 ]
  %4122 = phi float [ 0.000000e+00, %3626 ], [ %3822, %4106 ]
  %4123 = phi float [ %3589, %3626 ], [ %3823, %4106 ]
  %4124 = phi float [ %3583, %3626 ], [ %3824, %4106 ]
  %4125 = phi float [ %3584, %3626 ], [ %3825, %4106 ]
  %4126 = phi float [ %3585, %3626 ], [ %3826, %4106 ]
  %4127 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float %4117, float %4118, float %4119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = call float @dx.op.unary.f32(i32 25, float %4127)  ; Rsqrt(value)
  %4129 = fmul fast float %4128, %4117
  %4130 = fmul fast float %4128, %4118
  %4131 = fmul fast float %4128, %4119
  %4132 = fadd fast float %4122, %907
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %4129, float %4130, float %4131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = call float @dx.op.unary.f32(i32 25, float %4134)  ; Rsqrt(value)
  %4136 = fmul fast float %4135, %4129
  %4137 = fmul fast float %4135, %4130
  %4138 = fmul fast float %4135, %4131
  br label %4139

; <label>:4139                                    ; preds = %4107, %3580
  %4140 = phi float [ %4136, %4107 ], [ %3621, %3580 ]
  %4141 = phi float [ %4137, %4107 ], [ %3622, %3580 ]
  %4142 = phi float [ %4138, %4107 ], [ %3623, %3580 ]
  %4143 = phi float [ %4124, %4107 ], [ %3583, %3580 ]
  %4144 = phi float [ %4125, %4107 ], [ %3584, %3580 ]
  %4145 = phi float [ %4126, %4107 ], [ %3585, %3580 ]
  %4146 = phi float [ %4114, %4107 ], [ %3586, %3580 ]
  %4147 = phi float [ %4115, %4107 ], [ %3587, %3580 ]
  %4148 = phi float [ %4116, %4107 ], [ %3588, %3580 ]
  %4149 = phi float [ %4123, %4107 ], [ %3589, %3580 ]
  %4150 = phi float [ %4133, %4107 ], [ %907, %3580 ]
  %4151 = phi float [ %4121, %4107 ], [ %3590, %3580 ]
  %4152 = phi float [ %4120, %4107 ], [ %3591, %3580 ]
  %4153 = phi float [ %4113, %4107 ], [ 0.000000e+00, %3580 ]
  %4154 = phi float [ %4112, %4107 ], [ 0.000000e+00, %3580 ]
  %4155 = phi float [ %4111, %4107 ], [ %3592, %3580 ]
  %4156 = phi float [ %4108, %4107 ], [ 0.000000e+00, %3580 ]
  %4157 = phi float [ %4109, %4107 ], [ %3595, %3580 ]
  %4158 = phi float [ %4110, %4107 ], [ %3593, %3580 ]
  %4159 = fadd fast float %4149, 0xBFB99999A0000000
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = fmul fast float %4160, 0x3FF1C71C80000000
  %4162 = call float @dx.op.binary.f32(i32 36, float %4149, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4163 = fsub fast float 1.000000e+00, %4161
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = fmul fast float %4164, %4143
  %4166 = fmul fast float %4164, %4144
  %4167 = fmul fast float %4164, %4145
  %4168 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = fmul fast float %4161, %4143
  %4172 = fmul fast float %4161, %4144
  %4173 = fmul fast float %4161, %4145
  %4174 = fadd fast float %4171, %4162
  %4175 = fadd fast float %4172, %4162
  %4176 = fadd fast float %4173, %4162
  %4177 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.i32 %4181, 3
  %4183 = and i32 %4182, 8
  %4184 = icmp ne i32 %4183, 0
  %4185 = call float @dx.op.binary.f32(i32 35, float %4168, float %4143)  ; FMax(a,b)
  %4186 = call float @dx.op.binary.f32(i32 35, float %4169, float %4143)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4170, float %4143)  ; FMax(a,b)
  %4188 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = select i1 %173, float %4143, float %4168
  %4190 = select i1 %173, float %4188, float %4169
  %4191 = select i1 %173, float 1.000000e+00, float %4170
  %4192 = select i1 %4184, float %4185, float %4189
  %4193 = select i1 %4184, float %4186, float %4190
  %4194 = select i1 %4184, float %4187, float %4191
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4199 = fadd fast float %4196, %131
  %4200 = fadd fast float %4197, %132
  %4201 = fadd fast float %4198, %133
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4205 = fsub fast float %4199, %4203
  %4206 = fsub fast float %4200, %4204
  %4207 = fmul fast float %4205, %4205
  %4208 = fmul fast float %4206, %4206
  %4209 = fadd fast float %4207, %4208
  %4210 = call float @dx.op.unary.f32(i32 24, float %4209)  ; Sqrt(value)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4212 = fcmp fast olt float %4210, %4211
  br i1 %4212, label %4213, label %4280

; <label>:4213                                    ; preds = %4139
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4221 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4223 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4224 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4225 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4226 = fadd fast float %4223, %4199
  %4227 = fadd fast float %4224, %4200
  %4228 = fadd fast float %4225, %4201
  %4229 = fmul fast float %4226, %4215
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4217, float %4229)  ; FMad(a,b,c)
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4219, float %4230)  ; FMad(a,b,c)
  %4232 = fmul fast float %4226, %4220
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4221, float %4232)  ; FMad(a,b,c)
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4222, float %4233)  ; FMad(a,b,c)
  %4235 = fsub fast float %4231, %4223
  %4236 = fsub fast float %4234, %4224
  %4237 = fsub fast float %4235, %4203
  %4238 = fadd fast float %4237, %4211
  %4239 = fsub fast float %4236, %4204
  %4240 = fadd fast float %4239, %4211
  %4241 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4242 = fmul fast float %4238, %4241
  %4243 = fmul fast float %4240, %4241
  %4244 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4246 = fsub fast float 1.000000e+00, %4244
  %4247 = fsub fast float 1.000000e+00, %4245
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4246, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = fcmp fast ugt float %4249, 0.000000e+00
  br i1 %4250, label %4251, label %4554

; <label>:4251                                    ; preds = %4213
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4254 = fmul fast float %4253, %4249
  %4255 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4256 = fadd fast float %4255, %4254
  %4257 = extractvalue %dx.types.CBufRet.f32 %4218, 2
  %4258 = fadd fast float %4256, %4225
  %4259 = fmul fast float %4231, %4219
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4222, float %4259)  ; FMad(a,b,c)
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4258, float %4257, float %4260)  ; FMad(a,b,c)
  %4262 = fsub fast float %4261, %4225
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 2
  %4265 = fsub fast float %4262, %4264
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4246, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4246, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = extractvalue %dx.types.ResRet.f32 %4270, 1
  %4273 = extractvalue %dx.types.ResRet.f32 %4270, 2
  %4274 = fadd fast float %4271, %4267
  %4275 = fmul fast float %4274, 0x3F847AE140000000
  %4276 = fadd fast float %4272, %4268
  %4277 = fmul fast float %4276, 0x3F847AE140000000
  %4278 = fadd fast float %4273, %4269
  %4279 = fmul fast float %4278, 0x3F847AE140000000
  br label %4554

; <label>:4280                                    ; preds = %4139
  %4281 = and i32 %149, 1
  %4282 = icmp eq i32 %4281, 0
  br i1 %4282, label %4554, label %4283

; <label>:4283                                    ; preds = %4280
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4291 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4293 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4294 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4295 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4296 = fadd fast float %4293, %4199
  %4297 = fadd fast float %4294, %4200
  %4298 = fadd fast float %4295, %4201
  %4299 = fmul fast float %4296, %4285
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4287, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4289, float %4300)  ; FMad(a,b,c)
  %4302 = fmul fast float %4296, %4290
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4291, float %4302)  ; FMad(a,b,c)
  %4304 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4292, float %4303)  ; FMad(a,b,c)
  %4305 = fsub fast float %4301, %4293
  %4306 = fsub fast float %4304, %4294
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4311 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.i32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.i32 %4314, 1
  %4317 = udiv i32 %4316, %4315
  %4318 = fsub fast float %4305, %4308
  %4319 = fsub fast float %4306, %4309
  %4320 = call float @dx.op.binary.f32(i32 35, float %4318, float 0.000000e+00)  ; FMax(a,b)
  %4321 = call float @dx.op.binary.f32(i32 35, float %4319, float 0.000000e+00)  ; FMax(a,b)
  %4322 = call float @dx.op.binary.f32(i32 36, float %4320, float %4310)  ; FMin(a,b)
  %4323 = call float @dx.op.binary.f32(i32 36, float %4321, float %4311)  ; FMin(a,b)
  %4324 = add i32 %4315, -1
  %4325 = add i32 %4317, -1
  %4326 = fmul fast float %4322, %4313
  %4327 = fmul fast float %4323, %4313
  %4328 = fptoui float %4326 to i32
  %4329 = fptoui float %4327 to i32
  %4330 = call i32 @dx.op.binary.i32(i32 40, i32 %4328, i32 %4324)  ; UMin(a,b)
  %4331 = call i32 @dx.op.binary.i32(i32 40, i32 %4329, i32 %4325)  ; UMin(a,b)
  %4332 = mul i32 %4331, %4315
  %4333 = add i32 %4332, %4330
  %4334 = shl i32 %4333, 2
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = icmp eq i32 %4336, -1
  br i1 %4337, label %4554, label %4338

; <label>:4338                                    ; preds = %4283
  %4339 = mul i32 %4336, 148
  %4340 = add i32 %4339, 4
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = add i32 %4339, 8
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = add i32 %4339, 36
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = add i32 %4339, 60
  %4350 = add i32 %4339, 92
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = add i32 %4339, 116
  %4354 = fsub fast float %4305, %4342
  %4355 = fsub fast float %4306, %4345
  %4356 = fmul fast float %4313, %4354
  %4357 = fmul fast float %4313, %4355
  %4358 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4360 = fsub fast float 1.000000e+00, %4359
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 2
  %4363 = call float @dx.op.unary.f32(i32 83, float %4358)  ; DerivCoarseX(value)
  %4364 = call float @dx.op.unary.f32(i32 83, float %4360)  ; DerivCoarseX(value)
  %4365 = call float @dx.op.unary.f32(i32 84, float %4358)  ; DerivCoarseY(value)
  %4366 = call float @dx.op.unary.f32(i32 84, float %4360)  ; DerivCoarseY(value)
  %4367 = fmul fast float %4363, %4362
  %4368 = fmul fast float %4364, %4362
  %4369 = fmul fast float %4365, %4362
  %4370 = fmul fast float %4366, %4362
  %4371 = call float @dx.op.dot2.f32(i32 54, float %4369, float %4370, float %4369, float %4370)  ; Dot2(ax,ay,bx,by)
  %4372 = call float @dx.op.dot2.f32(i32 54, float %4367, float %4368, float %4367, float %4368)  ; Dot2(ax,ay,bx,by)
  %4373 = call float @dx.op.binary.f32(i32 35, float %4372, float %4371)  ; FMax(a,b)
  %4374 = call float @dx.op.unary.f32(i32 23, float %4373)  ; Log(value)
  %4375 = fmul fast float %4374, 5.000000e-01
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4378 = fadd fast float %4377, %4375
  %4379 = call float @dx.op.binary.f32(i32 35, float %4378, float 0.000000e+00)  ; FMax(a,b)
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4382 = fadd fast float %4381, %4379
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4385 = fadd fast float %4382, %4384
  %4386 = add i32 %4352, 0
  %4387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4388 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4387, i32 0)  ; GetDimensions(handle,mipLevel)
  %4389 = extractvalue %dx.types.Dimensions %4388, 0
  %4390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4389)  ; FirstbitLo(value)
  %4391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.i32 %4391, 1
  %4393 = sub nsw i32 %4392, %4390
  %4394 = sitofp i32 %4393 to float
  %4395 = fsub fast float %4385, %4394
  %4396 = call float @dx.op.binary.f32(i32 35, float %4395, float 0.000000e+00)  ; FMax(a,b)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4387, %dx.types.Handle %27, float %4358, float %4360, float %4348, float undef, i32 0, i32 0, i32 undef, float %4396)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = fcmp ule float %4398, 0x3FE0101020000000
  %4400 = extractvalue %dx.types.CBufRet.i32 %4391, 0
  %4401 = and i32 %4400, 128
  %4402 = icmp ne i32 %4401, 0
  %4403 = and i1 %4399, %4402
  br i1 %4403, label %4554, label %4404

; <label>:4404                                    ; preds = %4338
  %4405 = add i32 %4339, 20
  %4406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = add i32 %4339, 24
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = add i32 %4339, 40
  %4412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = add i32 %4339, 96
  %4415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.i32 %4415, 0
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4419 = fmul fast float %4418, %4358
  %4420 = fmul fast float %4418, %4360
  %4421 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4422 = fadd fast float %4419, %4421
  %4423 = fadd fast float %4420, %4421
  %4424 = add i32 %4416, 0
  %4425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4426 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4425, i32 0)  ; GetDimensions(handle,mipLevel)
  %4427 = extractvalue %dx.types.Dimensions %4426, 0
  %4428 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4427)  ; FirstbitLo(value)
  %4429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.i32 %4429, 1
  %4431 = sub nsw i32 %4430, %4428
  %4432 = sitofp i32 %4431 to float
  %4433 = fsub fast float %4382, %4432
  %4434 = call float @dx.op.binary.f32(i32 35, float %4433, float 0.000000e+00)  ; FMax(a,b)
  %4435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4425, %dx.types.Handle %27, float %4422, float %4423, float %4413, float undef, i32 0, i32 0, i32 undef, float %4434)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = fmul fast float %4436, %4407
  %4438 = fadd fast float %4437, %4410
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.CBufRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4447 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4448 = fadd fast float %4444, %4305
  %4449 = fadd fast float %4446, %4306
  %4450 = fadd fast float %4438, %4447
  %4451 = fmul fast float %4448, %4440
  %4452 = call float @dx.op.tertiary.f32(i32 46, float %4449, float %4441, float %4451)  ; FMad(a,b,c)
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4450, float %4442, float %4452)  ; FMad(a,b,c)
  %4454 = fsub fast float %4453, %4447
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4457 = fsub fast float %4454, %4456
  %4458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.i32 %4458, 0
  %4460 = call i32 @dx.op.binary.i32(i32 40, i32 %4336, i32 %4459)  ; UMin(a,b)
  %4461 = mul i32 %4460, 36
  %4462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4461, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.i32 %4462, 0
  %4464 = add i32 %4461, 4
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = fmul fast float %4466, %4358
  %4468 = fmul fast float %4466, %4360
  %4469 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4470 = fadd fast float %4467, %4469
  %4471 = fadd fast float %4468, %4469
  %4472 = icmp eq i32 %4463, 0
  br i1 %4472, label %4541, label %4473

; <label>:4473                                    ; preds = %4404
  br label %4474

; <label>:4474                                    ; preds = %4531, %4473
  %4475 = phi float [ %4532, %4531 ], [ 0.000000e+00, %4473 ]
  %4476 = phi float [ %4533, %4531 ], [ 0.000000e+00, %4473 ]
  %4477 = phi float [ %4534, %4531 ], [ 0.000000e+00, %4473 ]
  %4478 = phi float [ %4535, %4531 ], [ 0.000000e+00, %4473 ]
  %4479 = phi float [ %4536, %4531 ], [ 0.000000e+00, %4473 ]
  %4480 = phi float [ %4537, %4531 ], [ 0.000000e+00, %4473 ]
  %4481 = phi i32 [ %4538, %4531 ], [ 0, %4473 ]
  %4482 = shl i32 %4481, 2
  %4483 = add i32 %4349, %4482
  %4484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4483, i32 undef)  ; BufferLoad(srv,index,wot)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = add i32 %4353, %4482
  %4487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.i32 %4487, 0
  %4489 = add i32 %4488, 0
  %4490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4489, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4491 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4490, i32 0)  ; GetDimensions(handle,mipLevel)
  %4492 = extractvalue %dx.types.Dimensions %4491, 0
  %4493 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4492)  ; FirstbitLo(value)
  %4494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.i32 %4494, 1
  %4496 = sub nsw i32 %4495, %4493
  %4497 = sitofp i32 %4496 to float
  %4498 = fsub fast float %4382, %4497
  %4499 = call float @dx.op.binary.f32(i32 35, float %4498, float 0.000000e+00)  ; FMax(a,b)
  %4500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4490, %dx.types.Handle %27, float %4470, float %4471, float %4485, float undef, i32 0, i32 0, i32 undef, float %4499)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4501 = extractvalue %dx.types.ResRet.f32 %4500, 0
  %4502 = fcmp fast ogt float %4501, 0.000000e+00
  br i1 %4502, label %4503, label %4531

; <label>:4503                                    ; preds = %4474
  %4504 = add i32 %4464, %4482
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 32767
  %4508 = mul nuw nsw i32 %4507, 928
  %4509 = add nuw nsw i32 %4508, 48
  %4510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.ResRet.f32 %4510, 1
  %4513 = extractvalue %dx.types.ResRet.f32 %4510, 2
  %4514 = add nuw nsw i32 %4508, 60
  %4515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4514, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = fmul fast float %4511, %4501
  %4520 = fmul fast float %4512, %4501
  %4521 = fmul fast float %4513, %4501
  %4522 = fadd fast float %4519, %4475
  %4523 = fadd fast float %4520, %4476
  %4524 = fadd fast float %4521, %4477
  %4525 = fmul fast float %4516, %4501
  %4526 = fmul fast float %4517, %4501
  %4527 = fmul fast float %4518, %4501
  %4528 = fadd fast float %4525, %4478
  %4529 = fadd fast float %4526, %4479
  %4530 = fadd fast float %4527, %4480
  br label %4531

; <label>:4531                                    ; preds = %4503, %4474
  %4532 = phi float [ %4522, %4503 ], [ %4475, %4474 ]
  %4533 = phi float [ %4523, %4503 ], [ %4476, %4474 ]
  %4534 = phi float [ %4524, %4503 ], [ %4477, %4474 ]
  %4535 = phi float [ %4528, %4503 ], [ %4478, %4474 ]
  %4536 = phi float [ %4529, %4503 ], [ %4479, %4474 ]
  %4537 = phi float [ %4530, %4503 ], [ %4480, %4474 ]
  %4538 = add nuw i32 %4481, 1
  %4539 = icmp eq i32 %4538, %4463
  br i1 %4539, label %4540, label %4474

; <label>:4540                                    ; preds = %4531
  br label %4541

; <label>:4541                                    ; preds = %4540, %4404
  %4542 = phi float [ 0.000000e+00, %4404 ], [ %4532, %4540 ]
  %4543 = phi float [ 0.000000e+00, %4404 ], [ %4533, %4540 ]
  %4544 = phi float [ 0.000000e+00, %4404 ], [ %4534, %4540 ]
  %4545 = phi float [ 0.000000e+00, %4404 ], [ %4535, %4540 ]
  %4546 = phi float [ 0.000000e+00, %4404 ], [ %4536, %4540 ]
  %4547 = phi float [ 0.000000e+00, %4404 ], [ %4537, %4540 ]
  %4548 = fadd fast float %4545, %4542
  %4549 = fmul fast float %4548, 0x3F847AE140000000
  %4550 = fadd fast float %4546, %4543
  %4551 = fmul fast float %4550, 0x3F847AE140000000
  %4552 = fadd fast float %4547, %4544
  %4553 = fmul fast float %4552, 0x3F847AE140000000
  br label %4554

; <label>:4554                                    ; preds = %4541, %4338, %4283, %4280, %4251, %4213
  %4555 = phi float [ %4265, %4251 ], [ -1.310720e+05, %4213 ], [ %4457, %4541 ], [ -1.310720e+05, %4283 ], [ -1.310720e+05, %4338 ], [ -1.310720e+05, %4280 ]
  %4556 = phi float [ %4275, %4251 ], [ 0.000000e+00, %4213 ], [ %4549, %4541 ], [ 0.000000e+00, %4283 ], [ 0.000000e+00, %4338 ], [ 0.000000e+00, %4280 ]
  %4557 = phi float [ %4277, %4251 ], [ 0.000000e+00, %4213 ], [ %4551, %4541 ], [ 0.000000e+00, %4283 ], [ 0.000000e+00, %4338 ], [ 0.000000e+00, %4280 ]
  %4558 = phi float [ %4279, %4251 ], [ 0.000000e+00, %4213 ], [ %4553, %4541 ], [ 0.000000e+00, %4283 ], [ 0.000000e+00, %4338 ], [ 0.000000e+00, %4280 ]
  %4559 = phi i1 [ true, %4251 ], [ false, %4213 ], [ true, %4541 ], [ false, %4283 ], [ false, %4338 ], [ false, %4280 ]
  %4560 = and i32 %149, 3
  %4561 = icmp eq i32 %4560, 1
  %4562 = select i1 %4561, float 1.000000e+00, float 0.000000e+00
  %4563 = fsub fast float %4555, %133
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = select i1 %4559, float %4564, float 1.000000e+00
  %4566 = fmul fast float %4565, %4562
  %4567 = icmp eq i32 %4560, 3
  %4568 = select i1 %4567, float 1.000000e+00, float %4566
  %4569 = call float @dx.op.binary.f32(i32 35, float %4156, float %4568)  ; FMax(a,b)
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fcmp fast une float %4570, 0.000000e+00
  %4572 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  br i1 %4571, label %4581, label %4574

; <label>:4574                                    ; preds = %4554
  %4575 = fmul fast float %4573, %131
  %4576 = fmul fast float %4573, %132
  %4577 = fmul fast float %4573, %133
  %4578 = fsub fast float -0.000000e+00, %4575
  %4579 = fsub fast float -0.000000e+00, %4576
  %4580 = fsub fast float -0.000000e+00, %4577
  br label %4749

; <label>:4581                                    ; preds = %4554
  %4582 = fmul fast float %131, %4573
  %4583 = fsub fast float -0.000000e+00, %4582
  %4584 = fmul fast float %132, %4573
  %4585 = fsub fast float -0.000000e+00, %4584
  %4586 = fmul fast float %133, %4573
  %4587 = fsub fast float -0.000000e+00, %4586
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4585, float %4587, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = fmul fast float %4570, 2.500000e+00
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4570, 0x4013FFFFE0000000
  %4592 = fadd fast float %4591, 0xBFFFFFFFE0000000
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4570, 0x4004000020000000
  %4595 = fadd fast float %4594, 0xBFF8000040000000
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4598 = fmul fast float %4159, 1.000000e+01
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, 2.000000e+00
  %4601 = fsub fast float 3.000000e+00, %4600
  %4602 = fmul fast float %4599, %4599
  %4603 = fmul fast float %4602, %4601
  %4604 = fsub fast float 1.000000e+00, %4603
  %4605 = fsub fast float 0x3FE3333340000000, %4180
  %4606 = fmul fast float %4605, 0x400AAAAAA0000000
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fmul fast float %4604, %4607
  %4609 = fmul fast float %4192, 0x3FEA2B8620000000
  %4610 = fmul fast float %4193, 0x3FEA2B8620000000
  %4611 = fmul fast float %4194, 0x3FEA2B8620000000
  %4612 = fadd fast float %4609, 0x3FC81DFBA0000000
  %4613 = fmul fast float %4612, %4192
  %4614 = fadd fast float %4613, 0x3F910E6020000000
  %4615 = fadd fast float %4610, 0x3FC81DFBA0000000
  %4616 = fmul fast float %4615, %4193
  %4617 = fadd fast float %4616, 0x3F910E6020000000
  %4618 = fadd fast float %4611, 0x3FC81DFBA0000000
  %4619 = fmul fast float %4618, %4194
  %4620 = fadd fast float %4619, 0x3F910E6020000000
  %4621 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4622 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4624 = fsub fast float %4621, %4192
  %4625 = fsub fast float %4622, %4193
  %4626 = fsub fast float %4623, %4194
  %4627 = fmul fast float %4624, %4597
  %4628 = fmul fast float %4627, %4608
  %4629 = fmul fast float %4625, %4597
  %4630 = fmul fast float %4629, %4608
  %4631 = fmul fast float %4626, %4597
  %4632 = fmul fast float %4631, %4608
  %4633 = fadd fast float %4628, %4192
  %4634 = fadd fast float %4630, %4193
  %4635 = fadd fast float %4632, %4194
  %4636 = fmul fast float %4152, %4152
  %4637 = fmul fast float %4636, %4636
  %4638 = fadd fast float %4593, 1.000000e+00
  %4639 = fsub fast float %4638, %4608
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fsub fast float 1.000000e+00, %4637
  %4644 = call float @dx.op.binary.f32(i32 36, float %4640, float %4643)  ; FMin(a,b)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4647 = fadd fast float %4642, 0xBFE4CCCCC0000000
  %4648 = fmul fast float %4647, 0x4006DB6DA0000000
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4649, 2.000000e+00
  %4651 = fsub fast float 3.000000e+00, %4650
  %4652 = bitcast float %4177 to i32
  %4653 = ashr i32 %4652, 1
  %4654 = add nsw i32 %4653, 532487669
  %4655 = bitcast i32 %4654 to float
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = bitcast float %4656 to i32
  %4658 = sub nsw i32 2129859010, %4657
  %4659 = bitcast i32 %4658 to float
  %4660 = fmul fast float %4659, 2.000000e+00
  %4661 = bitcast float %4178 to i32
  %4662 = ashr i32 %4661, 1
  %4663 = add nsw i32 %4662, 532487669
  %4664 = bitcast i32 %4663 to float
  %4665 = fsub fast float 1.000000e+00, %4664
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, 2.000000e+00
  %4670 = bitcast float %4179 to i32
  %4671 = ashr i32 %4670, 1
  %4672 = add nsw i32 %4671, 532487669
  %4673 = bitcast i32 %4672 to float
  %4674 = fsub fast float 1.000000e+00, %4673
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = fmul fast float %4677, 2.000000e+00
  %4679 = fsub fast float 0x4002A9FBE0000000, %4660
  %4680 = fadd fast float %4660, 0x3FD54FDF00000000
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, %4679
  %4685 = fmul fast float %4684, %4684
  %4686 = fsub fast float 0x4002A9FBE0000000, %4669
  %4687 = fadd fast float %4669, 0x3FD54FDF00000000
  %4688 = bitcast float %4687 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4690, %4686
  %4692 = fmul fast float %4691, %4691
  %4693 = fsub fast float 0x4002A9FBE0000000, %4678
  %4694 = fadd fast float %4678, 0x3FD54FDF00000000
  %4695 = bitcast float %4694 to i32
  %4696 = sub nsw i32 2129859010, %4695
  %4697 = bitcast i32 %4696 to float
  %4698 = fmul fast float %4697, %4693
  %4699 = fmul fast float %4698, %4698
  %4700 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4685)  ; FMax(a,b)
  %4701 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4692)  ; FMax(a,b)
  %4702 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4699)  ; FMax(a,b)
  %4703 = fsub fast float 1.000000e+00, %4588
  %4704 = fadd fast float %4703, %4604
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fsub fast float 1.000000e+00, %4568
  %4707 = fmul fast float %4646, %4706
  %4708 = fmul fast float %4649, %4649
  %4709 = fmul fast float %4708, %4707
  %4710 = fmul fast float %4709, %4651
  %4711 = fmul fast float %4706, 0xBFE99999A0000000
  %4712 = fmul fast float %4711, %4597
  %4713 = fmul fast float %4712, %4608
  %4714 = fadd fast float %4713, 1.000000e+00
  %4715 = fadd fast float %4180, -1.000000e+00
  %4716 = fmul fast float %4714, %4715
  %4717 = fadd fast float %4716, 1.000000e+00
  %4718 = fsub fast float %4700, %4177
  %4719 = fsub fast float %4701, %4178
  %4720 = fsub fast float %4702, %4179
  %4721 = fmul fast float %4710, %4718
  %4722 = fmul fast float %4710, %4719
  %4723 = fmul fast float %4710, %4720
  %4724 = fadd fast float %4721, %4177
  %4725 = fadd fast float %4722, %4178
  %4726 = fadd fast float %4723, %4179
  %4727 = fsub fast float %75, %4140
  %4728 = fsub fast float %76, %4141
  %4729 = fsub fast float %77, %4142
  %4730 = fmul fast float %4710, %4727
  %4731 = fmul fast float %4710, %4728
  %4732 = fmul fast float %4710, %4729
  %4733 = fadd fast float %4730, %4140
  %4734 = fadd fast float %4731, %4141
  %4735 = fadd fast float %4732, %4142
  %4736 = fmul fast float %4710, %4705
  %4737 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = fmul fast float %4736, %4738
  %4740 = fadd fast float %4739, %4737
  %4741 = fsub fast float 1.000000e+00, %4152
  %4742 = fmul fast float %4710, %4741
  %4743 = fadd fast float %4742, %4152
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = call float @dx.op.unary.f32(i32 25, float %4744)  ; Rsqrt(value)
  %4746 = fmul fast float %4733, %4745
  %4747 = fmul fast float %4734, %4745
  %4748 = fmul fast float %4735, %4745
  br label %4749

; <label>:4749                                    ; preds = %4581, %4574
  %4750 = phi float [ %4580, %4574 ], [ %4587, %4581 ]
  %4751 = phi float [ %4579, %4574 ], [ %4585, %4581 ]
  %4752 = phi float [ %4578, %4574 ], [ %4583, %4581 ]
  %4753 = phi float [ %4577, %4574 ], [ %4586, %4581 ]
  %4754 = phi float [ %4576, %4574 ], [ %4584, %4581 ]
  %4755 = phi float [ %4575, %4574 ], [ %4582, %4581 ]
  %4756 = phi float [ %4177, %4574 ], [ %4724, %4581 ]
  %4757 = phi float [ %4178, %4574 ], [ %4725, %4581 ]
  %4758 = phi float [ %4179, %4574 ], [ %4726, %4581 ]
  %4759 = phi float [ %4192, %4574 ], [ %4633, %4581 ]
  %4760 = phi float [ %4193, %4574 ], [ %4634, %4581 ]
  %4761 = phi float [ %4194, %4574 ], [ %4635, %4581 ]
  %4762 = phi float [ %4140, %4574 ], [ %4746, %4581 ]
  %4763 = phi float [ %4141, %4574 ], [ %4747, %4581 ]
  %4764 = phi float [ %4142, %4574 ], [ %4748, %4581 ]
  %4765 = phi float [ %4180, %4574 ], [ %4740, %4581 ]
  %4766 = phi float [ %4152, %4574 ], [ %4743, %4581 ]
  %4767 = select i1 %173, float 0.000000e+00, float %4758
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %4752, float %4751, float %4750)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4754, float %4753, float %4762, float %4763, float %4764)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = fmul fast float %4770, 2.000000e+00
  %4772 = fmul fast float %4771, %4762
  %4773 = fmul fast float %4771, %4763
  %4774 = fmul fast float %4771, %4764
  %4775 = fsub fast float %4755, %4772
  %4776 = fsub fast float %4754, %4773
  %4777 = fsub fast float %4753, %4774
  %4778 = call float @dx.op.binary.f32(i32 36, float %4766, float 1.000000e+00)  ; FMin(a,b)
  %4779 = fsub fast float 1.000000e+00, %4766
  %4780 = bitcast float %4779 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = fsub fast float 1.000000e+00, %45
  %4783 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4783, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4785 = fdiv fast float %4782, %4784
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, 5.000000e-01
  %4789 = fadd fast float %4788, 5.000000e-01
  %4790 = fmul fast float %4789, %45
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fmul fast float %4792, %4785
  %4794 = fadd fast float %4790, %4793
  %4795 = fsub fast float 5.000000e-01, %4788
  %4796 = fmul fast float %4795, %4759
  %4797 = fmul fast float %4795, %4760
  %4798 = fmul fast float %4795, %4761
  %4799 = fadd fast float %4794, %4796
  %4800 = fadd fast float %4794, %4797
  %4801 = fadd fast float %4794, %4798
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4776, float %4777, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 5.000000e-01
  %4805 = fadd fast float %4804, 5.000000e-01
  %4806 = fmul fast float %4805, %45
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4776, float %4777, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = fmul fast float %4808, %4785
  %4810 = fadd fast float %4806, %4809
  %4811 = fsub fast float 5.000000e-01, %4804
  %4812 = fmul fast float %4811, %4759
  %4813 = fmul fast float %4811, %4760
  %4814 = fmul fast float %4811, %4761
  %4815 = fadd fast float %4810, %4812
  %4816 = fadd fast float %4810, %4813
  %4817 = fadd fast float %4810, %4814
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 0
  %4820 = call float @dx.op.binary.f32(i32 36, float %4759, float %4819)  ; FMin(a,b)
  %4821 = fsub fast float 1.000000e+00, %4778
  %4822 = fmul fast float %4820, %4821
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = bitcast float %4823 to i32
  %4825 = sub nsw i32 2129859010, %4824
  %4826 = bitcast i32 %4825 to float
  %4827 = call float @dx.op.binary.f32(i32 36, float %4760, float %4819)  ; FMin(a,b)
  %4828 = fmul fast float %4827, %4821
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = call float @dx.op.binary.f32(i32 36, float %4761, float %4819)  ; FMin(a,b)
  %4834 = fmul fast float %4833, %4821
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4778, %46
  %4840 = fmul fast float %4839, %4799
  %4841 = fmul fast float %4840, %4826
  %4842 = fmul fast float %4778, %47
  %4843 = fmul fast float %4842, %4800
  %4844 = fmul fast float %4843, %4832
  %4845 = fmul fast float %4778, %48
  %4846 = fmul fast float %4845, %4801
  %4847 = fmul fast float %4846, %4838
  %4848 = call float @dx.op.binary.f32(i32 36, float %4756, float %4819)  ; FMin(a,b)
  %4849 = fmul fast float %4848, %4821
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = bitcast float %4850 to i32
  %4852 = sub nsw i32 2129859010, %4851
  %4853 = bitcast i32 %4852 to float
  %4854 = call float @dx.op.binary.f32(i32 36, float %4757, float %4819)  ; FMin(a,b)
  %4855 = fmul fast float %4854, %4821
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = call float @dx.op.binary.f32(i32 36, float %4767, float %4819)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4821
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = fmul fast float %4839, %4815
  %4867 = fmul fast float %4866, %4853
  %4868 = fmul fast float %4842, %4816
  %4869 = fmul fast float %4868, %4859
  %4870 = fmul fast float %4845, %4817
  %4871 = fmul fast float %4870, %4865
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4844, float %4847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = select i1 %173, float 0.000000e+00, float %4841
  %4874 = select i1 %173, float %4872, float %4844
  %4875 = select i1 %173, float 0.000000e+00, float %4847
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4869, float %4871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = select i1 %173, float 0.000000e+00, float %4867
  %4878 = select i1 %173, float %4876, float %4869
  %4879 = select i1 %173, float 0.000000e+00, float %4871
  %4880 = fmul fast float %4769, 9.843750e-01
  %4881 = fmul fast float %4765, 9.843750e-01
  %4882 = fadd fast float %4880, 7.812500e-03
  %4883 = fadd fast float %4881, 7.812500e-03
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4882, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 3
  %4887 = fmul fast float %4885, %4756
  %4888 = fmul fast float %4885, %4757
  %4889 = fmul fast float %4885, %4767
  %4890 = fadd fast float %4887, %4886
  %4891 = fadd fast float %4888, %4886
  %4892 = fadd fast float %4889, %4886
  %4893 = fcmp fast ogt float %4153, 0.000000e+00
  br i1 %4893, label %4894, label %4920

; <label>:4894                                    ; preds = %4749
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4153, float %4769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.ResRet.f32 %4895, 1
  %4898 = extractvalue %dx.types.ResRet.f32 %4895, 2
  %4899 = fadd fast float %4896, -5.000000e-01
  %4900 = fadd fast float %4897, -5.000000e-01
  %4901 = fadd fast float %4898, -5.000000e-01
  %4902 = fsub fast float 1.000000e+00, %4756
  %4903 = fsub fast float 1.000000e+00, %4757
  %4904 = fsub fast float 1.000000e+00, %4767
  %4905 = fmul fast float %4756, 4.000000e+00
  %4906 = fmul fast float %4905, %4902
  %4907 = fmul fast float %4906, %4899
  %4908 = fmul fast float %4757, 4.000000e+00
  %4909 = fmul fast float %4908, %4903
  %4910 = fmul fast float %4909, %4900
  %4911 = fmul fast float %4767, 4.000000e+00
  %4912 = fmul fast float %4911, %4904
  %4913 = fmul fast float %4912, %4901
  %4914 = fadd fast float %4907, %4890
  %4915 = fadd fast float %4910, %4891
  %4916 = fadd fast float %4913, %4892
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  br label %4920

; <label>:4920                                    ; preds = %4894, %4749
  %4921 = phi float [ %4917, %4894 ], [ %4890, %4749 ]
  %4922 = phi float [ %4918, %4894 ], [ %4891, %4749 ]
  %4923 = phi float [ %4919, %4894 ], [ %4892, %4749 ]
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4921, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fmul fast float %4769, 0x3FEC61D440000000
  %4928 = fadd fast float %4927, 0x3FA1204B00000000
  %4929 = fmul fast float %4928, %4769
  %4930 = fadd fast float %4929, 0x3F931451C0000000
  %4931 = fmul fast float %4930, %4155
  %4932 = fadd fast float %4931, 1.000000e+00
  %4933 = fmul fast float %4873, %4932
  %4934 = fmul fast float %4874, %4932
  %4935 = fmul fast float %4875, %4932
  %4936 = fmul fast float %4933, %4926
  %4937 = fmul fast float %4934, %4926
  %4938 = fmul fast float %4935, %4926
  %4939 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4940 = fcmp fast ogt float %4939, 0x3E7FF19E20000000
  %4941 = fdiv fast float 1.000000e+00, %4939
  %4942 = select i1 %4940, float %4941, float 0.000000e+00
  %4943 = fmul fast float %4942, %4759
  %4944 = fmul fast float %4942, %4760
  %4945 = fmul fast float %4942, %4761
  %4946 = fadd fast float %4943, -1.000000e+00
  %4947 = fadd fast float %4944, -1.000000e+00
  %4948 = fadd fast float %4945, -1.000000e+00
  %4949 = fmul fast float %4946, 5.000000e-01
  %4950 = fmul fast float %4947, 5.000000e-01
  %4951 = fmul fast float %4948, 5.000000e-01
  %4952 = fadd fast float %4949, 1.000000e+00
  %4953 = fadd fast float %4950, 1.000000e+00
  %4954 = fadd fast float %4951, 1.000000e+00
  %4955 = fmul fast float %4921, %4877
  %4956 = fmul fast float %4922, %4878
  %4957 = fmul fast float %4923, %4879
  %4958 = fsub fast float 1.000000e+00, %4769
  %4959 = bitcast float %4958 to i32
  %4960 = sitofp i32 %4959 to float
  %4961 = fmul fast float %4960, 5.000000e+00
  %4962 = fadd fast float %4961, 0xC1EFBF8940000000
  %4963 = fptosi float %4962 to i32
  %4964 = bitcast i32 %4963 to float
  %4965 = fmul fast float %4964, %4154
  %4966 = fmul fast float %4873, %4965
  %4967 = fmul fast float %4966, %4926
  %4968 = fmul fast float %4967, %4952
  %4969 = fmul fast float %4874, %4965
  %4970 = fmul fast float %4969, %4926
  %4971 = fmul fast float %4970, %4953
  %4972 = fmul fast float %4875, %4965
  %4973 = fmul fast float %4972, %4926
  %4974 = fmul fast float %4973, %4954
  %4975 = fmul fast float %4936, %4150
  %4976 = fmul fast float %4937, %4150
  %4977 = fmul fast float %4938, %4150
  %4978 = fadd fast float %4955, %4146
  %4979 = fadd fast float %4978, %4968
  %4980 = fmul fast float %4979, %4150
  %4981 = fadd fast float %4956, %4147
  %4982 = fadd fast float %4981, %4971
  %4983 = fmul fast float %4982, %4150
  %4984 = fadd fast float %4957, %4148
  %4985 = fadd fast float %4984, %4974
  %4986 = fmul fast float %4985, %4150
  %4987 = bitcast i32 %4781 to float
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = fcmp fast oeq float %4989, 0.000000e+00
  br i1 %4990, label %5237, label %4991

; <label>:4991                                    ; preds = %4920
  %4992 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4994 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.CBufRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4995, 2
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4997, float %4998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = select i1 %173, float %5000, float %4996
  %5004 = select i1 %173, float %5002, float %4997
  %5005 = select i1 %173, float %5001, float %4998
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5008 = fcmp fast une float %5007, 0.000000e+00
  br i1 %5008, label %5009, label %5026

; <label>:5009                                    ; preds = %4991
  %5010 = fptoui float %68 to i32
  %5011 = fptoui float %69 to i32
  %5012 = lshr i32 %5010, 4
  %5013 = lshr i32 %5011, 4
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = fptoui float %5015 to i32
  %5017 = add i32 %5016, 15
  %5018 = lshr i32 %5017, 4
  %5019 = mul i32 %5018, %5013
  %5020 = add i32 %5019, %5012
  %5021 = shl i32 %5020, 3
  %5022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.i32 %5022, 0
  %5024 = and i32 %5023, -268435456
  %5025 = icmp eq i32 %5024, -1342177280
  br i1 %5025, label %5036, label %5026

; <label>:5026                                    ; preds = %5009, %4991
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 3
  %5030 = fmul fast float %5028, %68
  %5031 = fmul fast float %5029, %69
  %5032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5030, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.ResRet.f32 %5032, 1
  %5035 = extractvalue %dx.types.ResRet.f32 %5032, 2
  br label %5036

; <label>:5036                                    ; preds = %5026, %5009
  %5037 = phi float [ %5033, %5026 ], [ 0.000000e+00, %5009 ]
  %5038 = phi float [ %5034, %5026 ], [ 0.000000e+00, %5009 ]
  %5039 = phi float [ %5035, %5026 ], [ 0.000000e+00, %5009 ]
  %5040 = call float @dx.op.binary.f32(i32 36, float %5038, float %5039)  ; FMin(a,b)
  %5041 = call float @dx.op.binary.f32(i32 36, float %5037, float %5040)  ; FMin(a,b)
  %5042 = fcmp fast ogt float %5041, 0.000000e+00
  br i1 %5042, label %5043, label %5237, !dx.controlflow.hints !72

; <label>:5043                                    ; preds = %5036
  %5044 = fmul fast float %5037, %5003
  %5045 = fmul fast float %5038, %5004
  %5046 = fmul fast float %5039, %5005
  %5047 = fsub fast float %4992, %4755
  %5048 = fsub fast float %4993, %4754
  %5049 = fsub fast float %4994, %4753
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5051, %5047
  %5053 = fmul fast float %5051, %5048
  %5054 = fmul fast float %5051, %5049
  %5055 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4993, float %4994, float %4762, float %4763, float %4764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4751, float %4750, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5058 = fmul fast float %5057, %5057
  %5059 = fmul fast float %5058, %4987
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fmul fast float %5060, %5057
  %5062 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = fmul fast float %5062, %5062
  %5064 = call float @dx.op.unary.f32(i32 6, float %5055)  ; FAbs(value)
  %5065 = fsub fast float 1.000000e+00, %4765
  %5066 = call float @dx.op.binary.f32(i32 35, float %5065, float 0x3F847AE140000000)  ; FMax(a,b)
  %5067 = fmul fast float %5066, %5066
  %5068 = fmul fast float %5067, %5067
  %5069 = fsub fast float 1.000000e+00, %5068
  %5070 = fmul fast float %4769, %4769
  %5071 = fmul fast float %5070, %5069
  %5072 = fadd fast float %5071, %5068
  %5073 = bitcast float %5072 to i32
  %5074 = ashr i32 %5073, 1
  %5075 = add nsw i32 %5074, 532487669
  %5076 = bitcast i32 %5075 to float
  %5077 = fadd fast float %5076, %4769
  %5078 = fmul fast float %5068, %5063
  %5079 = fsub fast float 1.000000e+00, %5063
  %5080 = fadd fast float %5079, %5078
  %5081 = fmul fast float %5064, %5064
  %5082 = fmul fast float %5081, %5069
  %5083 = fadd fast float %5082, %5068
  %5084 = bitcast float %5083 to i32
  %5085 = ashr i32 %5084, 1
  %5086 = add nsw i32 %5085, 532487669
  %5087 = bitcast i32 %5086 to float
  %5088 = fadd fast float %5087, %5064
  %5089 = fmul fast float %5080, %5080
  %5090 = fmul fast float %5089, %5077
  %5091 = fmul fast float %5090, %5088
  %5092 = fdiv fast float 0x3FF0A00000000000, %5091
  %5093 = fmul fast float %5092, %5068
  %5094 = call float @dx.op.unary.f32(i32 6, float %5056)  ; FAbs(value)
  %5095 = fsub fast float 1.000000e+00, %5094
  %5096 = bitcast float %5095 to i32
  %5097 = sitofp i32 %5096 to float
  %5098 = fmul fast float %5097, 5.000000e+00
  %5099 = fadd fast float %5098, 0xC1EFBF8940000000
  %5100 = fptosi float %5099 to i32
  %5101 = bitcast i32 %5100 to float
  %5102 = fsub fast float 1.000000e+00, %4756
  %5103 = fsub fast float 1.000000e+00, %4757
  %5104 = fsub fast float 1.000000e+00, %4767
  %5105 = fmul fast float %5101, %5102
  %5106 = fmul fast float %5101, %5103
  %5107 = fmul fast float %5101, %5104
  %5108 = fadd fast float %5105, %4756
  %5109 = fadd fast float %5106, %4757
  %5110 = fadd fast float %5107, %4767
  br i1 %4893, label %5111, label %5134

; <label>:5111                                    ; preds = %5043
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4153, float %5094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = fadd fast float %5113, -5.000000e-01
  %5117 = fadd fast float %5114, -5.000000e-01
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fmul fast float %4756, 4.000000e+00
  %5120 = fmul fast float %5119, %5102
  %5121 = fmul fast float %5120, %5116
  %5122 = fmul fast float %4757, 4.000000e+00
  %5123 = fmul fast float %5122, %5103
  %5124 = fmul fast float %5123, %5117
  %5125 = fmul fast float %4767, 4.000000e+00
  %5126 = fmul fast float %5125, %5104
  %5127 = fmul fast float %5126, %5118
  %5128 = fadd fast float %5121, %5108
  %5129 = fadd fast float %5124, %5109
  %5130 = fadd fast float %5127, %5110
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  br label %5134

; <label>:5134                                    ; preds = %5111, %5043
  %5135 = phi float [ %5131, %5111 ], [ %5108, %5043 ]
  %5136 = phi float [ %5132, %5111 ], [ %5109, %5043 ]
  %5137 = phi float [ %5133, %5111 ], [ %5110, %5043 ]
  %5138 = fmul fast float %5055, 9.843750e-01
  %5139 = fadd fast float %5138, 7.812500e-03
  %5140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5139, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 3
  %5143 = fmul fast float %5141, %4756
  %5144 = fmul fast float %5141, %4757
  %5145 = fmul fast float %5141, %4767
  %5146 = fadd fast float %5143, %5142
  %5147 = fadd fast float %5144, %5142
  %5148 = fadd fast float %5145, %5142
  br i1 %4893, label %5149, label %5172

; <label>:5149                                    ; preds = %5134
  %5150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4153, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.ResRet.f32 %5150, 2
  %5154 = fadd fast float %5151, -5.000000e-01
  %5155 = fadd fast float %5152, -5.000000e-01
  %5156 = fadd fast float %5153, -5.000000e-01
  %5157 = fmul fast float %4756, 4.000000e+00
  %5158 = fmul fast float %5157, %5102
  %5159 = fmul fast float %5158, %5154
  %5160 = fmul fast float %4757, 4.000000e+00
  %5161 = fmul fast float %5160, %5103
  %5162 = fmul fast float %5161, %5155
  %5163 = fmul fast float %4767, 4.000000e+00
  %5164 = fmul fast float %5163, %5104
  %5165 = fmul fast float %5164, %5156
  %5166 = fadd fast float %5159, %5146
  %5167 = fadd fast float %5162, %5147
  %5168 = fadd fast float %5165, %5148
  %5169 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  br label %5172

; <label>:5172                                    ; preds = %5149, %5134
  %5173 = phi float [ %5169, %5149 ], [ %5146, %5134 ]
  %5174 = phi float [ %5170, %5149 ], [ %5147, %5134 ]
  %5175 = phi float [ %5171, %5149 ], [ %5148, %5134 ]
  %5176 = call float @dx.op.binary.f32(i32 35, float %5174, float %5175)  ; FMax(a,b)
  %5177 = call float @dx.op.binary.f32(i32 35, float %5173, float %5176)  ; FMax(a,b)
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = fadd fast float %4775, %4992
  %5180 = fadd fast float %4776, %4993
  %5181 = fadd fast float %4777, %4994
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.unary.f32(i32 25, float %5182)  ; Rsqrt(value)
  %5184 = fmul fast float %5179, %5183
  %5185 = fmul fast float %5180, %5183
  %5186 = fmul fast float %5181, %5183
  %5187 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = fmul fast float %5187, %5187
  %5189 = fmul fast float %5188, 0x3FEFBDA520000000
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5190, %5190
  %5192 = fdiv fast float 0x3F6096BBA0000000, %5191
  %5193 = fmul fast float %5192, %4155
  %5194 = fadd fast float %5193, 1.000000e+00
  %5195 = fmul fast float %5135, %5093
  %5196 = fmul fast float %5136, %5093
  %5197 = fmul fast float %5137, %5093
  %5198 = fsub fast float 1.000000e+00, %5056
  %5199 = bitcast float %5198 to i32
  %5200 = sitofp i32 %5199 to float
  %5201 = fmul fast float %5200, 5.000000e+00
  %5202 = fadd fast float %5201, 0xC1EFBF8940000000
  %5203 = fptosi float %5202 to i32
  %5204 = bitcast i32 %5203 to float
  %5205 = fmul fast float %5204, %4154
  %5206 = fmul fast float %5178, %5205
  %5207 = fmul fast float %5206, %4952
  %5208 = fmul fast float %5206, %4953
  %5209 = fmul fast float %5206, %4954
  %5210 = fadd fast float %5207, %5195
  %5211 = fadd fast float %5208, %5196
  %5212 = fadd fast float %5209, %5197
  %5213 = fmul fast float %5061, %5044
  %5214 = fmul fast float %5213, %5178
  %5215 = fmul fast float %5214, %5194
  %5216 = fmul fast float %5061, %5045
  %5217 = fmul fast float %5216, %5178
  %5218 = fmul fast float %5217, %5194
  %5219 = fmul fast float %5061, %5046
  %5220 = fmul fast float %5219, %5178
  %5221 = fmul fast float %5220, %5194
  %5222 = fmul fast float %5213, %5210
  %5223 = fmul fast float %5216, %5211
  %5224 = fmul fast float %5219, %5212
  %5225 = fadd fast float %5215, %4936
  %5226 = fmul fast float %5225, %4150
  %5227 = fadd fast float %5218, %4937
  %5228 = fmul fast float %5227, %4150
  %5229 = fadd fast float %5221, %4938
  %5230 = fmul fast float %5229, %4150
  %5231 = fadd fast float %5222, %4979
  %5232 = fmul fast float %5231, %4150
  %5233 = fadd fast float %5223, %4982
  %5234 = fmul fast float %5233, %4150
  %5235 = fadd fast float %5224, %4985
  %5236 = fmul fast float %5235, %4150
  br label %5237

; <label>:5237                                    ; preds = %5172, %5036, %4920
  %5238 = phi float [ %4980, %4920 ], [ %4980, %5036 ], [ %5232, %5172 ]
  %5239 = phi float [ %4983, %4920 ], [ %4983, %5036 ], [ %5234, %5172 ]
  %5240 = phi float [ %4986, %4920 ], [ %4986, %5036 ], [ %5236, %5172 ]
  %5241 = phi float [ %4975, %4920 ], [ %4975, %5036 ], [ %5226, %5172 ]
  %5242 = phi float [ %4976, %4920 ], [ %4976, %5036 ], [ %5228, %5172 ]
  %5243 = phi float [ %4977, %4920 ], [ %4977, %5036 ], [ %5230, %5172 ]
  %5244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.i32 %5244, 0
  %5246 = icmp eq i32 %5245, 0
  br i1 %5246, label %5700, label %5247

; <label>:5247                                    ; preds = %5237
  %5248 = fptoui float %68 to i32
  %5249 = fptoui float %69 to i32
  %5250 = lshr i32 %5248, 4
  %5251 = lshr i32 %5249, 4
  %5252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.i32 %5252, 0
  %5254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5251, i32 %5253, i32 %5250)  ; UMad(a,b,c)
  %5255 = add nsw i32 %5245, -1
  %5256 = call i32 @dx.op.binary.i32(i32 37, i32 %5255, i32 0)  ; IMax(a,b)
  %5257 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5258 = fptoui float %5257 to i32
  %5259 = lshr i32 %5258, 5
  %5260 = call i32 @dx.op.binary.i32(i32 40, i32 %5259, i32 8191)  ; UMin(a,b)
  %5261 = shl i32 %5260, 2
  %5262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.i32 %5262, 0
  %5264 = lshr i32 %5263, 16
  %5265 = and i32 %5263, 65535
  %5266 = lshr i32 %5263, 21
  %5267 = lshr i32 %5265, 5
  %5268 = call i32 @dx.op.binary.i32(i32 40, i32 %5267, i32 %5256)  ; UMin(a,b)
  %5269 = icmp ugt i32 %5266, %5268
  br i1 %5269, label %5700, label %5270

; <label>:5270                                    ; preds = %5247
  br label %5271

; <label>:5271                                    ; preds = %5690, %5270
  %5272 = phi i32 [ %5697, %5690 ], [ %5266, %5270 ]
  %5273 = phi float [ %5691, %5690 ], [ %5238, %5270 ]
  %5274 = phi float [ %5692, %5690 ], [ %5239, %5270 ]
  %5275 = phi float [ %5693, %5690 ], [ %5240, %5270 ]
  %5276 = phi float [ %5694, %5690 ], [ %5241, %5270 ]
  %5277 = phi float [ %5695, %5690 ], [ %5242, %5270 ]
  %5278 = phi float [ %5696, %5690 ], [ %5243, %5270 ]
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 0
  %5281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5254, i32 %5280, i32 %5272)  ; UMad(a,b,c)
  %5282 = shl i32 %5281, 2
  %5283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.i32 %5283, 0
  %5285 = shl i32 %5272, 5
  %5286 = sub nsw i32 %5264, %5285
  %5287 = call i32 @dx.op.binary.i32(i32 37, i32 %5286, i32 0)  ; IMax(a,b)
  %5288 = call i32 @dx.op.binary.i32(i32 38, i32 %5287, i32 31)  ; IMin(a,b)
  %5289 = sub nsw i32 1, %5264
  %5290 = add nsw i32 %5289, %5265
  %5291 = call i32 @dx.op.binary.i32(i32 37, i32 %5290, i32 0)  ; IMax(a,b)
  %5292 = call i32 @dx.op.binary.i32(i32 38, i32 %5291, i32 32)  ; IMin(a,b)
  %5293 = and i32 %5292, 31
  %5294 = shl i32 -1, %5293
  %5295 = xor i32 %5294, -1
  %5296 = and i32 %5288, 31
  %5297 = shl i32 %5295, %5296
  %5298 = icmp eq i32 %5292, 32
  %5299 = select i1 %5298, i32 -1, i32 %5297
  %5300 = and i32 %5299, %5284
  %5301 = icmp eq i32 %5300, 0
  br i1 %5301, label %5690, label %5302

; <label>:5302                                    ; preds = %5271
  br label %5303

; <label>:5303                                    ; preds = %5383, %5302
  %5304 = phi i32 [ %5315, %5383 ], [ %5300, %5302 ]
  %5305 = phi float [ %5384, %5383 ], [ %5273, %5302 ]
  %5306 = phi float [ %5385, %5383 ], [ %5274, %5302 ]
  %5307 = phi float [ %5386, %5383 ], [ %5275, %5302 ]
  %5308 = phi float [ %5387, %5383 ], [ %5276, %5302 ]
  %5309 = phi float [ %5388, %5383 ], [ %5277, %5302 ]
  %5310 = phi float [ %5389, %5383 ], [ %5278, %5302 ]
  %5311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5304)  ; FirstbitLo(value)
  %5312 = add i32 %5311, %5285
  %5313 = and i32 %5311, 31
  %5314 = shl i32 1, %5313
  %5315 = xor i32 %5314, %5304
  %5316 = mul i32 %5312, 112
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = or i32 %5316, 12
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = add i32 %5316, 44
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = add i32 %5316, 48
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = add i32 %5316, 80
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5318, float %5319, float %5320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = select i1 %173, float %5334, float %5318
  %5338 = select i1 %173, float %5336, float %5319
  %5339 = select i1 %173, float %5335, float %5320
  %5340 = fsub fast float %5329, %131
  %5341 = fsub fast float %5330, %132
  %5342 = fsub fast float %5331, %133
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5342, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 24, float %5343)  ; Sqrt(value)
  %5345 = fdiv fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5345, %5340
  %5347 = fmul fast float %5345, %5341
  %5348 = fmul fast float %5345, %5342
  %5349 = fadd fast float %5344, %5323
  %5350 = fdiv fast float 1.000000e+00, %5349
  %5351 = fmul float %5326, %5350
  %5352 = fmul float %5351, %5351
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = and i32 %5314, %5300
  %5355 = icmp eq i32 %5354, 0
  br i1 %5355, label %5378, label %5356, !dx.controlflow.hints !73

; <label>:5356                                    ; preds = %5303
  %5357 = lshr i32 %5248, 5
  %5358 = lshr i32 %5249, 5
  %5359 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5357, i32 %5358, i32 %5312, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = and i32 %5360, 3
  %5362 = icmp eq i32 %5361, 0
  %5363 = select i1 %5362, float 1.000000e+00, float 0.000000e+00
  %5364 = icmp eq i32 %5361, 3
  br i1 %5364, label %5365, label %5378

; <label>:5365                                    ; preds = %5356
  %5366 = lshr i32 %5360, 10
  %5367 = and i32 %5366, 8160
  %5368 = and i32 %5249, 31
  %5369 = or i32 %5367, %5368
  %5370 = lshr i32 %5360, 1
  %5371 = and i32 %5370, 16352
  %5372 = and i32 %5248, 31
  %5373 = or i32 %5371, %5372
  %5374 = lshr i32 %5360, 23
  %5375 = and i32 %5374, 255
  %5376 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5373, i32 %5369, i32 %5375, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  br label %5378

; <label>:5378                                    ; preds = %5365, %5356, %5303
  %5379 = phi float [ %5377, %5365 ], [ %5363, %5356 ], [ 0.000000e+00, %5303 ]
  %5380 = call float @dx.op.binary.f32(i32 36, float %5379, float %5379)  ; FMin(a,b)
  %5381 = call float @dx.op.binary.f32(i32 36, float %5379, float %5380)  ; FMin(a,b)
  %5382 = fcmp fast ogt float %5381, 0.000000e+00
  br i1 %5382, label %5391, label %5383, !dx.controlflow.hints !74

; <label>:5383                                    ; preds = %5627, %5378
  %5384 = phi float [ %5305, %5378 ], [ %5686, %5627 ]
  %5385 = phi float [ %5306, %5378 ], [ %5687, %5627 ]
  %5386 = phi float [ %5307, %5378 ], [ %5688, %5627 ]
  %5387 = phi float [ %5308, %5378 ], [ %5680, %5627 ]
  %5388 = phi float [ %5309, %5378 ], [ %5681, %5627 ]
  %5389 = phi float [ %5310, %5378 ], [ %5682, %5627 ]
  %5390 = icmp eq i32 %5304, %5314
  br i1 %5390, label %5689, label %5303

; <label>:5391                                    ; preds = %5378
  %5392 = fmul fast float %5379, %5337
  %5393 = fmul fast float %5379, %5338
  %5394 = fmul fast float %5379, %5339
  %5395 = fsub fast float %5331, %4555
  %5396 = fcmp fast ogt float %5395, 0.000000e+00
  %5397 = fsub fast float %133, %4555
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  %5399 = xor i1 %5398, %5396
  %5400 = fsub fast float %4555, %5331
  %5401 = fmul fast float %5400, 2.000000e+00
  %5402 = fadd fast float %5401, %5331
  %5403 = select i1 %5399, float %5331, float %5402
  %5404 = fsub fast float %5403, %133
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5404, float %5340, float %5341, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 25, float %5405)  ; Rsqrt(value)
  %5407 = fmul fast float %5406, %5340
  %5408 = fmul fast float %5406, %5341
  %5409 = fmul fast float %5406, %5404
  %5410 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4563)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5407, float %5408, float %5409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = fdiv fast float 1.000000e+00, %5411
  %5413 = fmul fast float %5412, %5410
  %5414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5397, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fcmp fast ogt float %5414, 0.000000e+00
  %5416 = fcmp fast olt float %5414, 0.000000e+00
  %5417 = zext i1 %5415 to i32
  %5418 = zext i1 %5416 to i32
  %5419 = sub nsw i32 %5417, %5418
  %5420 = sitofp i32 %5419 to float
  %5421 = fsub fast float %5403, %4555
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5421, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fcmp fast ogt float %5422, 0.000000e+00
  %5424 = fcmp fast olt float %5422, 0.000000e+00
  %5425 = zext i1 %5423 to i32
  %5426 = zext i1 %5424 to i32
  %5427 = sub nsw i32 %5425, %5426
  %5428 = sitofp i32 %5427 to float
  %5429 = fcmp fast une float %5420, %5428
  br i1 %5429, label %5430, label %5440

; <label>:5430                                    ; preds = %5391
  %5431 = fmul fast float %5413, %5409
  %5432 = fmul fast float %5413, %5408
  %5433 = fmul fast float %5413, %5407
  %5434 = fmul fast float %5433, %5433
  %5435 = fmul fast float %5432, %5432
  %5436 = fadd fast float %5434, %5435
  %5437 = fmul fast float %5431, %5431
  %5438 = fadd fast float %5436, %5437
  %5439 = call float @dx.op.unary.f32(i32 24, float %5438)  ; Sqrt(value)
  br label %5452

; <label>:5440                                    ; preds = %5391
  %5441 = icmp slt i32 %5419, 0
  br i1 %5441, label %5442, label %5452

; <label>:5442                                    ; preds = %5440
  %5443 = fsub fast float %131, %5329
  %5444 = fsub fast float %132, %5330
  %5445 = fsub fast float %133, %5403
  %5446 = fmul fast float %5443, %5443
  %5447 = fmul fast float %5444, %5444
  %5448 = fadd fast float %5446, %5447
  %5449 = fmul fast float %5445, %5445
  %5450 = fadd fast float %5448, %5449
  %5451 = call float @dx.op.unary.f32(i32 24, float %5450)  ; Sqrt(value)
  br label %5452

; <label>:5452                                    ; preds = %5442, %5440, %5430
  %5453 = phi float [ %5439, %5430 ], [ %5451, %5442 ], [ 0.000000e+00, %5440 ]
  %5454 = and i1 %5398, %5396
  %5455 = fsub fast float -0.000000e+00, %5453
  %5456 = select i1 %5454, float -0.000000e+00, float %5455
  %5457 = fmul fast float %4556, 0x3FF7154760000000
  %5458 = fmul fast float %5457, %5456
  %5459 = fmul fast float %4557, 0x3FF7154760000000
  %5460 = fmul fast float %5459, %5456
  %5461 = fmul fast float %4558, 0x3FF7154760000000
  %5462 = fmul fast float %5461, %5456
  %5463 = call float @dx.op.unary.f32(i32 21, float %5458)  ; Exp(value)
  %5464 = call float @dx.op.unary.f32(i32 21, float %5460)  ; Exp(value)
  %5465 = call float @dx.op.unary.f32(i32 21, float %5462)  ; Exp(value)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5467 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = fmul fast float %5392, %5466
  %5470 = fmul fast float %5393, %5467
  %5471 = fmul fast float %5394, %5468
  %5472 = fsub fast float %5346, %4755
  %5473 = fsub fast float %5347, %4754
  %5474 = fsub fast float %5348, %4753
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 25, float %5475)  ; Rsqrt(value)
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5476, %5473
  %5479 = fmul fast float %5476, %5474
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float %4762, float %4763, float %4764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4751, float %4750, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5483 = fmul fast float %5482, %5353
  %5484 = fmul fast float %5482, %5482
  %5485 = fmul fast float %5484, %4987
  %5486 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5487 = fmul fast float %5483, %5486
  %5488 = bitcast float %5343 to i32
  %5489 = ashr i32 %5488, 1
  %5490 = sub nsw i32 1597463007, %5489
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5491, %5340
  %5493 = fmul fast float %5491, %5341
  %5494 = fmul fast float %5491, %5342
  %5495 = fsub fast float %5492, %4755
  %5496 = fsub fast float %5493, %4754
  %5497 = fsub fast float %5494, %4753
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5497, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.unary.f32(i32 25, float %5498)  ; Rsqrt(value)
  %5500 = fmul fast float %5495, %5499
  %5501 = fmul fast float %5496, %5499
  %5502 = fmul fast float %5497, %5499
  %5503 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fmul fast float %5503, %5503
  %5505 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5506 = fsub fast float 1.000000e+00, %4765
  %5507 = call float @dx.op.binary.f32(i32 35, float %5506, float 0x3F847AE140000000)  ; FMax(a,b)
  %5508 = fmul fast float %5507, %5507
  %5509 = fmul fast float %5508, %5508
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = fmul fast float %4769, %4769
  %5512 = fmul fast float %5511, %5510
  %5513 = fadd fast float %5512, %5509
  %5514 = bitcast float %5513 to i32
  %5515 = ashr i32 %5514, 1
  %5516 = add nsw i32 %5515, 532487669
  %5517 = bitcast i32 %5516 to float
  %5518 = fadd fast float %5517, %4769
  %5519 = fmul fast float %5509, %5504
  %5520 = fsub fast float 1.000000e+00, %5504
  %5521 = fadd fast float %5520, %5519
  %5522 = fmul fast float %5505, %5505
  %5523 = fmul fast float %5522, %5510
  %5524 = fadd fast float %5523, %5509
  %5525 = bitcast float %5524 to i32
  %5526 = ashr i32 %5525, 1
  %5527 = add nsw i32 %5526, 532487669
  %5528 = bitcast i32 %5527 to float
  %5529 = fadd fast float %5528, %5505
  %5530 = fmul fast float %5521, %5521
  %5531 = fmul fast float %5530, %5518
  %5532 = fmul fast float %5531, %5529
  %5533 = fdiv fast float 1.000000e+00, %5532
  %5534 = bitcast float %5509 to i32
  %5535 = sitofp i32 %5534 to float
  %5536 = fmul fast float %5535, 0x3FE7F73180000000
  %5537 = fadd fast float %5536, 0x41AFE27C40000000
  %5538 = fptosi float %5537 to i32
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5326, 0x3FD80E9D60000000
  %5541 = fmul fast float %5540, %5491
  %5542 = fadd fast float %5539, %5541
  %5543 = bitcast float %5542 to i32
  %5544 = sub nsw i32 2129859010, %5543
  %5545 = bitcast i32 %5544 to float
  %5546 = fmul fast float %5509, %5533
  %5547 = fmul fast float %5546, %5539
  %5548 = fmul fast float %5547, %5545
  %5549 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = bitcast float %5550 to i32
  %5552 = sitofp i32 %5551 to float
  %5553 = fmul fast float %5552, 5.000000e+00
  %5554 = fadd fast float %5553, 0xC1EFBF8940000000
  %5555 = fptosi float %5554 to i32
  %5556 = bitcast i32 %5555 to float
  %5557 = fsub fast float 1.000000e+00, %4756
  %5558 = fsub fast float 1.000000e+00, %4757
  %5559 = fsub fast float 1.000000e+00, %4767
  %5560 = fmul fast float %5556, %5557
  %5561 = fmul fast float %5556, %5558
  %5562 = fmul fast float %5556, %5559
  %5563 = fadd fast float %5560, %4756
  %5564 = fadd fast float %5561, %4757
  %5565 = fadd fast float %5562, %4767
  br i1 %4893, label %5566, label %5589

; <label>:5566                                    ; preds = %5452
  %5567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4153, float %5549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5568 = extractvalue %dx.types.ResRet.f32 %5567, 0
  %5569 = extractvalue %dx.types.ResRet.f32 %5567, 1
  %5570 = extractvalue %dx.types.ResRet.f32 %5567, 2
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fadd fast float %5569, -5.000000e-01
  %5573 = fadd fast float %5570, -5.000000e-01
  %5574 = fmul fast float %4756, 4.000000e+00
  %5575 = fmul fast float %5574, %5557
  %5576 = fmul fast float %5575, %5571
  %5577 = fmul fast float %4757, 4.000000e+00
  %5578 = fmul fast float %5577, %5558
  %5579 = fmul fast float %5578, %5572
  %5580 = fmul fast float %4767, 4.000000e+00
  %5581 = fmul fast float %5580, %5559
  %5582 = fmul fast float %5581, %5573
  %5583 = fadd fast float %5576, %5563
  %5584 = fadd fast float %5579, %5564
  %5585 = fadd fast float %5582, %5565
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  br label %5589

; <label>:5589                                    ; preds = %5566, %5452
  %5590 = phi float [ %5586, %5566 ], [ %5563, %5452 ]
  %5591 = phi float [ %5587, %5566 ], [ %5564, %5452 ]
  %5592 = phi float [ %5588, %5566 ], [ %5565, %5452 ]
  %5593 = fmul fast float %5480, 9.843750e-01
  %5594 = fadd fast float %5593, 7.812500e-03
  %5595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5594, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 2
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 3
  %5598 = fmul fast float %5596, %4756
  %5599 = fmul fast float %5596, %4757
  %5600 = fmul fast float %5596, %4767
  %5601 = fadd fast float %5598, %5597
  %5602 = fadd fast float %5599, %5597
  %5603 = fadd fast float %5600, %5597
  br i1 %4893, label %5604, label %5627

; <label>:5604                                    ; preds = %5589
  %5605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4153, float %5480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5609 = fadd fast float %5606, -5.000000e-01
  %5610 = fadd fast float %5607, -5.000000e-01
  %5611 = fadd fast float %5608, -5.000000e-01
  %5612 = fmul fast float %4756, 4.000000e+00
  %5613 = fmul fast float %5612, %5557
  %5614 = fmul fast float %5613, %5609
  %5615 = fmul fast float %4757, 4.000000e+00
  %5616 = fmul fast float %5615, %5558
  %5617 = fmul fast float %5616, %5610
  %5618 = fmul fast float %4767, 4.000000e+00
  %5619 = fmul fast float %5618, %5559
  %5620 = fmul fast float %5619, %5611
  %5621 = fadd fast float %5614, %5601
  %5622 = fadd fast float %5617, %5602
  %5623 = fadd fast float %5620, %5603
  %5624 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  br label %5627

; <label>:5627                                    ; preds = %5604, %5589
  %5628 = phi float [ %5624, %5604 ], [ %5601, %5589 ]
  %5629 = phi float [ %5625, %5604 ], [ %5602, %5589 ]
  %5630 = phi float [ %5626, %5604 ], [ %5603, %5589 ]
  %5631 = call float @dx.op.binary.f32(i32 35, float %5629, float %5630)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5628, float %5631)  ; FMax(a,b)
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = fadd fast float %4775, %5346
  %5635 = fadd fast float %4776, %5347
  %5636 = fadd fast float %4777, %5348
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5635, float %5636, float %5634, float %5635, float %5636)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 25, float %5637)  ; Rsqrt(value)
  %5639 = fmul fast float %5634, %5638
  %5640 = fmul fast float %5635, %5638
  %5641 = fmul fast float %5636, %5638
  %5642 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %4764, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = fmul fast float %5642, %5642
  %5644 = fmul fast float %5643, 0x3FEFBDA520000000
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = fmul fast float %5645, %5645
  %5647 = fdiv fast float 0x3F6096BBA0000000, %5646
  %5648 = fmul fast float %5647, %4155
  %5649 = fadd fast float %5648, 1.000000e+00
  %5650 = fmul fast float %5590, %5548
  %5651 = fmul fast float %5591, %5548
  %5652 = fmul fast float %5592, %5548
  %5653 = fsub fast float 1.000000e+00, %5481
  %5654 = bitcast float %5653 to i32
  %5655 = sitofp i32 %5654 to float
  %5656 = fmul fast float %5655, 5.000000e+00
  %5657 = fadd fast float %5656, 0xC1EFBF8940000000
  %5658 = fptosi float %5657 to i32
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5659, %4154
  %5661 = fmul fast float %5633, %5660
  %5662 = fmul fast float %5661, %4952
  %5663 = fmul fast float %5661, %4953
  %5664 = fmul fast float %5661, %4954
  %5665 = fadd fast float %5662, %5650
  %5666 = fadd fast float %5663, %5651
  %5667 = fadd fast float %5664, %5652
  %5668 = fmul fast float %5469, %4150
  %5669 = fmul fast float %5668, %5487
  %5670 = fmul fast float %5669, %5633
  %5671 = fmul fast float %5670, %5649
  %5672 = fmul fast float %5470, %4150
  %5673 = fmul fast float %5672, %5487
  %5674 = fmul fast float %5673, %5633
  %5675 = fmul fast float %5674, %5649
  %5676 = fmul fast float %5471, %4150
  %5677 = fmul fast float %5676, %5487
  %5678 = fmul fast float %5677, %5633
  %5679 = fmul fast float %5678, %5649
  %5680 = fadd fast float %5671, %5308
  %5681 = fadd fast float %5675, %5309
  %5682 = fadd fast float %5679, %5310
  %5683 = fmul fast float %5669, %5665
  %5684 = fmul fast float %5673, %5666
  %5685 = fmul fast float %5677, %5667
  %5686 = fadd fast float %5683, %5305
  %5687 = fadd fast float %5684, %5306
  %5688 = fadd fast float %5685, %5307
  br label %5383

; <label>:5689                                    ; preds = %5383
  br label %5690

; <label>:5690                                    ; preds = %5689, %5271
  %5691 = phi float [ %5273, %5271 ], [ %5384, %5689 ]
  %5692 = phi float [ %5274, %5271 ], [ %5385, %5689 ]
  %5693 = phi float [ %5275, %5271 ], [ %5386, %5689 ]
  %5694 = phi float [ %5276, %5271 ], [ %5387, %5689 ]
  %5695 = phi float [ %5277, %5271 ], [ %5388, %5689 ]
  %5696 = phi float [ %5278, %5271 ], [ %5389, %5689 ]
  %5697 = add i32 %5272, 1
  %5698 = icmp ugt i32 %5697, %5268
  br i1 %5698, label %5699, label %5271

; <label>:5699                                    ; preds = %5690
  br label %5700

; <label>:5700                                    ; preds = %5699, %5247, %5237
  %5701 = phi float [ %5238, %5237 ], [ %5238, %5247 ], [ %5691, %5699 ]
  %5702 = phi float [ %5239, %5237 ], [ %5239, %5247 ], [ %5692, %5699 ]
  %5703 = phi float [ %5240, %5237 ], [ %5240, %5247 ], [ %5693, %5699 ]
  %5704 = phi float [ %5241, %5237 ], [ %5241, %5247 ], [ %5694, %5699 ]
  %5705 = phi float [ %5242, %5237 ], [ %5242, %5247 ], [ %5695, %5699 ]
  %5706 = phi float [ %5243, %5237 ], [ %5243, %5247 ], [ %5696, %5699 ]
  %5707 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %5708 = call float @dx.op.unary.f32(i32 24, float %4760)  ; Sqrt(value)
  %5709 = call float @dx.op.unary.f32(i32 24, float %4761)  ; Sqrt(value)
  %5710 = fmul fast float %5707, %5704
  %5711 = fmul fast float %5708, %5705
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  br i1 %173, label %5714, label %5734

; <label>:5714                                    ; preds = %5700
  %5715 = fadd fast float %5706, %4157
  %5716 = fmul fast float %5715, %4158
  %5717 = fsub fast float 1.000000e+00, %4158
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5721 = fmul fast float %5720, %5718
  %5722 = fadd fast float %5721, %5716
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = fmul fast float %5724, %4958
  %5726 = fsub fast float %5722, %5725
  %5727 = fadd fast float %5711, %5710
  %5728 = fmul fast float %5713, %5727
  %5729 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5730 = fsub fast float %5726, %5729
  %5731 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5732 = fmul fast float %5730, %5731
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  br label %5750

; <label>:5734                                    ; preds = %5700
  %5735 = fmul fast float %5709, %5706
  %5736 = fmul fast float %5713, %5710
  %5737 = fmul fast float %5713, %5711
  %5738 = fmul fast float %5735, %5713
  %5739 = add i32 %33, 356
  %5740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5739, i32 undef)  ; BufferLoad(srv,index,wot)
  %5741 = extractvalue %dx.types.ResRet.i32 %5740, 0
  %5742 = and i32 %5741, 32
  %5743 = icmp eq i32 %5742, 0
  br i1 %5743, label %5750, label %5744

; <label>:5744                                    ; preds = %5734
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = fmul fast float %5746, 0x3FE99999A0000000
  %5748 = fadd fast float %5746, %5736
  %5749 = fadd fast float %5747, %5738
  br label %5750

; <label>:5750                                    ; preds = %5744, %5734, %5714
  %5751 = phi float [ %5728, %5714 ], [ %5748, %5744 ], [ %5736, %5734 ]
  %5752 = phi float [ %5733, %5714 ], [ %5737, %5744 ], [ %5737, %5734 ]
  %5753 = phi float [ 1.000000e+00, %5714 ], [ %5749, %5744 ], [ %5738, %5734 ]
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = fmul fast float %5755, %5702
  %5757 = fmul fast float %5755, %5703
  %5758 = fadd fast float %5702, %5701
  %5759 = select i1 %173, float %5758, float %5701
  %5760 = fmul float %5759, %5755
  %5761 = select i1 %173, float 0.000000e+00, float %5756
  %5762 = select i1 %173, float 0.000000e+00, float %5757
  %5763 = fmul fast float %5751, %5707
  %5764 = fmul fast float %5752, %5708
  %5765 = fmul fast float %5753, %5709
  %5766 = fadd fast float %5760, %5763
  %5767 = fadd fast float %5761, %5764
  %5768 = fadd fast float %5762, %5765
  %5769 = select i1 %173, float %5752, float %5767
  %5770 = select i1 %173, float %5753, float %5768
  %5771 = call float @dx.op.binary.f32(i32 36, float %5766, float 3.225500e+04)  ; FMin(a,b)
  %5772 = call float @dx.op.binary.f32(i32 36, float %5769, float 3.225500e+04)  ; FMin(a,b)
  %5773 = call float @dx.op.binary.f32(i32 36, float %5770, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5771)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5772)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

