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
; shader hash: d10607f676c04940ae2bd9f23f42dbbc
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
  %133 = add i32 %33, 360
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = extractvalue %dx.types.ResRet.i32 %134, 2
  %138 = extractvalue %dx.types.ResRet.i32 %134, 3
  %139 = bitcast i32 %135 to float
  %140 = bitcast i32 %136 to float
  %141 = bitcast i32 %137 to float
  %142 = bitcast i32 %138 to float
  %143 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = call float @dx.op.unary.f32(i32 25, float %143)  ; Rsqrt(value)
  %145 = fmul fast float %144, %74
  %146 = fmul fast float %144, %75
  %147 = fmul fast float %144, %76
  %148 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = call float @dx.op.unary.f32(i32 25, float %148)  ; Rsqrt(value)
  %150 = fmul fast float %149, %130
  %151 = fmul fast float %149, %131
  %152 = fmul fast float %149, %132
  %153 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fmul fast float %153, %153
  %155 = fmul fast float %154, %141
  %156 = fadd fast float %155, %142
  %157 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %160 = fmul fast float %159, %148
  %161 = fsub fast float %139, %160
  %162 = fmul fast float %161, %140
  %163 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %164 = fmul fast float %163, %157
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %168 = fmul fast float %166, %67
  %169 = fmul fast float %167, %68
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, 114688
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float %168, float 0.000000e+00
  %175 = select i1 %173, float %169, float 0.000000e+00
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.550000e+02
  %179 = fptoui float %178 to i32
  %180 = select i1 %173, i32 %179, i32 0
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = and i32 %183, 3
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %183, 4
  %187 = icmp ne i32 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %200

; <label>:189                                     ; preds = %0
  %190 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %191 = fmul fast float %190, %68
  %192 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %193 = fmul fast float %192, %67
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %193, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fsub fast float 1.000000e+00, %195
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fcmp fast olt float %196, %198
  br label %203

; <label>:200                                     ; preds = %0
  %201 = icmp eq i32 %186, 0
  %202 = and i1 %185, %201
  br label %203

; <label>:203                                     ; preds = %200, %189
  %204 = phi i1 [ %199, %189 ], [ %202, %200 ]
  %205 = add i32 %33, 156
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = shl i32 %207, 4
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %207, 7
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 22
  %215 = shl nuw nsw i32 %214, 5
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = add i32 %33, 216
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %219, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %219, 16
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = add i32 %33, 36
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %33, 288
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %240, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = fmul fast float %242, 0x3F50624DE0000000
  %246 = fmul fast float %244, 0x3F50624DE0000000
  %247 = add i32 %33, 172
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %249, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %249, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %33, 232
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %261, 8
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %261, 16
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = add i32 %33, 52
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %33, 304
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = fmul fast float %284, 0x3F50624DE0000000
  %288 = fmul fast float %286, 0x3F50624DE0000000
  %289 = add i32 %33, 188
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %291, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %291, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %33, 248
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %33, 68
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %33, 320
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = add i32 %33, 204
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = shl i32 %333, 4
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %333, 7
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %333, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = add i32 %33, 264
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %345, 8
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = lshr i32 %345, 16
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = add i32 %33, 84
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = add i32 %33, 336
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %366, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = fmul fast float %368, 0x3F50624DE0000000
  %372 = fmul fast float %370, 0x3F50624DE0000000
  %373 = add i32 %33, 348
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 32
  %377 = icmp eq i32 %376, 0
  %378 = and i32 %375, 64
  %379 = icmp eq i32 %378, 0
  %380 = and i32 %375, 128
  %381 = icmp eq i32 %380, 0
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 2
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %399, label %386

; <label>:386                                     ; preds = %203
  %387 = add i32 %33, 520
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, 0
  %391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %391, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = fmul fast float %393, %57
  %397 = fmul fast float %394, %58
  %398 = fmul fast float %395, %59
  br label %399

; <label>:399                                     ; preds = %386, %203
  %400 = phi float [ %59, %203 ], [ %398, %386 ]
  %401 = phi float [ %58, %203 ], [ %397, %386 ]
  %402 = phi float [ %57, %203 ], [ %396, %386 ]
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 2
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %426, label %407

; <label>:407                                     ; preds = %399
  %408 = add i32 %33, 44
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %402, float 1.000000e+00
  %414 = add i32 %33, 60
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %401, float 1.000000e+00
  %420 = add i32 %33, 76
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 1
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %400, float 1.000000e+00
  br label %426

; <label>:426                                     ; preds = %407, %399
  %427 = phi float [ %400, %399 ], [ %425, %407 ]
  %428 = phi float [ %401, %399 ], [ %419, %407 ]
  %429 = phi float [ %402, %399 ], [ %413, %407 ]
  %430 = lshr i32 %404, 20
  %431 = and i32 %430, 3
  %432 = add nuw nsw i32 %431, 1
  %433 = add i32 %33, 24
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %33, 28
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = or i32 %438, %435
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %899, label %441

; <label>:441                                     ; preds = %426
  %442 = and i32 %435, 262144
  %443 = icmp ne i32 %442, 0
  %444 = select i1 %443, float %35, float 1.000000e+00
  %445 = select i1 %443, float %36, float 0.000000e+00
  %446 = select i1 %443, float %37, float 0.000000e+00
  %447 = select i1 %443, float %38, float 1.000000e+00
  %448 = select i1 %443, float %39, float %55
  %449 = select i1 %443, float %40, float %56
  %450 = add i32 %33, 284
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 16
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = fmul fast float %454, 0x3F50624DE0000000
  %456 = add i32 %33, 88
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = lshr i32 %458, 16
  %460 = and i32 %459, 255
  %461 = lshr i32 %458, 24
  %462 = add i32 %33, 292
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %464, 16
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = add i32 %33, 32
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 22
  %473 = shl nuw nsw i32 %472, 5
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = shl i32 %471, 4
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %471, 7
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %483 = fmul fast float %482, 1.000000e+03
  %484 = fmul fast float %245, %483
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fadd fast float %485, %235
  %487 = fmul fast float %246, %483
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fadd fast float %488, %237
  %490 = fmul fast float %455, %483
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fmul fast float %491, 0x401921FB60000000
  %493 = fadd fast float %492, %474
  %494 = call float @dx.op.unary.f32(i32 13, float %493)  ; Sin(value)
  %495 = call float @dx.op.unary.f32(i32 12, float %493)  ; Cos(value)
  %496 = fsub fast float -0.000000e+00, %494
  %497 = fadd fast float %448, -5.000000e-01
  %498 = fadd fast float %449, -5.000000e-01
  %499 = fmul fast float %466, %497
  %500 = fmul fast float %468, %498
  %501 = fadd fast float %499, 5.000000e-01
  %502 = fadd fast float %500, 5.000000e-01
  %503 = fmul fast float %477, %501
  %504 = fmul fast float %480, %502
  %505 = fmul fast float %495, %503
  %506 = call float @dx.op.tertiary.f32(i32 46, float %496, float %504, float %505)  ; FMad(a,b,c)
  %507 = fmul fast float %494, %503
  %508 = call float @dx.op.tertiary.f32(i32 46, float %495, float %504, float %507)  ; FMad(a,b,c)
  %509 = fadd fast float %486, %506
  %510 = fadd fast float %489, %508
  %511 = icmp ugt i32 %460, 1
  %512 = icmp ugt i32 %458, 33554431
  %513 = or i1 %512, %511
  br i1 %513, label %514, label %539

; <label>:514                                     ; preds = %441
  %515 = add i32 %33, 228
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = fmul fast float %482, %519
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = mul nuw nsw i32 %460, %461
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %521, %523
  %525 = call float @dx.op.unary.f32(i32 27, float %524)  ; Round_ni(value)
  %526 = fptoui float %525 to i32
  %527 = urem i32 %526, %460
  %528 = udiv i32 %526, %461
  %529 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %530 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %531 = uitofp i32 %527 to float
  %532 = uitofp i32 %528 to float
  %533 = fadd fast float %529, %531
  %534 = fadd fast float %530, %532
  %535 = uitofp i32 %460 to float
  %536 = uitofp i32 %461 to float
  %537 = fdiv fast float %533, %535
  %538 = fdiv fast float %534, %536
  br label %539

; <label>:539                                     ; preds = %514, %441
  %540 = phi float [ %537, %514 ], [ %509, %441 ]
  %541 = phi float [ %538, %514 ], [ %510, %441 ]
  %542 = and i32 %435, 16
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %740, label %544

; <label>:544                                     ; preds = %539
  %545 = add i32 %33, 408
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = add i32 %547, 0
  %549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %549, %dx.types.Handle %63, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = and i32 %458, 255
  %556 = uitofp i32 %555 to float
  %557 = lshr i32 %458, 8
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %554, %556
  %561 = fadd fast float %560, %559
  %562 = fmul fast float %561, 0x3F70101000000000
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 512
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %575, label %567

; <label>:567                                     ; preds = %544
  %568 = add i32 %33, 488
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %64, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  br label %575

; <label>:575                                     ; preds = %567, %544
  %576 = phi float [ %574, %567 ], [ 1.000000e+00, %544 ]
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 33554432
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %687, label %581

; <label>:581                                     ; preds = %575
  %582 = add i32 %33, 224
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %584, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = add i32 %33, 228
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 65535
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 24
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = and i32 %595, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %595, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %595, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = add i32 %33, 220
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = lshr i32 %612, 24
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = and i32 %612, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %612, 8
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = lshr i32 %612, 16
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = bitcast float %551 to i32
  %628 = ashr i32 %627, 1
  %629 = sub nsw i32 1597463174, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %551, 5.000000e-01
  %632 = fmul fast float %630, %630
  %633 = fmul fast float %632, %631
  %634 = fsub fast float 1.500000e+00, %633
  %635 = fmul fast float %630, %551
  %636 = fmul fast float %635, %634
  %637 = bitcast float %552 to i32
  %638 = ashr i32 %637, 1
  %639 = sub nsw i32 1597463174, %638
  %640 = bitcast i32 %639 to float
  %641 = fmul fast float %552, 5.000000e-01
  %642 = fmul fast float %640, %640
  %643 = fmul fast float %642, %641
  %644 = fsub fast float 1.500000e+00, %643
  %645 = fmul fast float %640, %552
  %646 = fmul fast float %645, %644
  %647 = bitcast float %553 to i32
  %648 = ashr i32 %647, 1
  %649 = sub nsw i32 1597463174, %648
  %650 = bitcast i32 %649 to float
  %651 = fmul fast float %553, 5.000000e-01
  %652 = fmul fast float %650, %650
  %653 = fmul fast float %652, %651
  %654 = fsub fast float 1.500000e+00, %653
  %655 = fmul fast float %650, %553
  %656 = fmul fast float %655, %654
  %657 = fsub fast float %636, %618
  %658 = fsub fast float %646, %622
  %659 = fsub fast float %656, %626
  %660 = fmul fast float %657, %586
  %661 = fmul fast float %658, %588
  %662 = fmul fast float %659, %593
  %663 = fadd fast float %660, %601
  %664 = fadd fast float %661, %605
  %665 = fadd fast float %662, %609
  %666 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %667 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %668 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %669 = fmul fast float %666, %666
  %670 = fmul fast float %667, %667
  %671 = fmul fast float %668, %668
  %672 = fsub fast float %669, %551
  %673 = fsub fast float %670, %552
  %674 = fsub fast float %671, %553
  %675 = fmul fast float %672, %576
  %676 = fmul fast float %673, %576
  %677 = fmul fast float %674, %576
  %678 = fadd fast float %675, %551
  %679 = fadd fast float %676, %552
  %680 = fadd fast float %677, %553
  %681 = fadd fast float %598, %562
  %682 = fsub fast float %681, %615
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = fsub fast float %683, %562
  %685 = fmul fast float %684, %576
  %686 = fadd fast float %685, %562
  br label %740

; <label>:687                                     ; preds = %575
  %688 = and i32 %578, 134217728
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %724, label %690

; <label>:690                                     ; preds = %687
  %691 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %692 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %694 = fadd fast float %691, -5.000000e-01
  %695 = fadd fast float %692, -5.000000e-01
  %696 = fadd fast float %693, -5.000000e-01
  %697 = fmul fast float %694, %576
  %698 = fmul fast float %695, %576
  %699 = fmul fast float %696, %576
  %700 = fadd fast float %697, 5.000000e-01
  %701 = fadd fast float %698, 5.000000e-01
  %702 = fadd fast float %699, 5.000000e-01
  %703 = call float @dx.op.unary.f32(i32 24, float %551)  ; Sqrt(value)
  %704 = call float @dx.op.unary.f32(i32 24, float %552)  ; Sqrt(value)
  %705 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %706 = fmul fast float %700, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %703
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %703
  %711 = fmul fast float %701, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %704
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %704
  %716 = fmul fast float %702, 2.000000e+00
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, %716
  %720 = fmul fast float %719, %705
  %721 = fmul fast float %710, %710
  %722 = fmul fast float %715, %715
  %723 = fmul fast float %720, %720
  br label %740

; <label>:724                                     ; preds = %687
  %725 = fmul fast float %222, %222
  %726 = fmul fast float %226, %226
  %727 = fmul fast float %230, %230
  %728 = fadd fast float %725, -1.000000e+00
  %729 = fadd fast float %726, -1.000000e+00
  %730 = fadd fast float %727, -1.000000e+00
  %731 = fmul fast float %576, %728
  %732 = fmul fast float %576, %729
  %733 = fmul fast float %576, %730
  %734 = fadd fast float %731, 1.000000e+00
  %735 = fadd fast float %732, 1.000000e+00
  %736 = fadd fast float %733, 1.000000e+00
  %737 = fmul fast float %734, %551
  %738 = fmul fast float %735, %552
  %739 = fmul fast float %736, %553
  br label %740

; <label>:740                                     ; preds = %724, %690, %581, %539
  %741 = phi float [ %686, %581 ], [ %562, %690 ], [ %562, %724 ], [ 0x3FA23C0BE0000000, %539 ]
  %742 = phi float [ %678, %581 ], [ %721, %690 ], [ %737, %724 ], [ 1.000000e+00, %539 ]
  %743 = phi float [ %679, %581 ], [ %722, %690 ], [ %738, %724 ], [ 1.000000e+00, %539 ]
  %744 = phi float [ %680, %581 ], [ %723, %690 ], [ %739, %724 ], [ 1.000000e+00, %539 ]
  %745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.i32 %745, 1
  %747 = and i32 %746, 1
  %748 = icmp ne i32 %747, 0
  %749 = add i32 %33, 356
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 32
  %753 = icmp ne i32 %752, 0
  %754 = and i1 %748, %753
  %755 = select i1 %754, float 1.000000e+00, float %742
  %756 = select i1 %754, float 0x3FD3333340000000, float %743
  %757 = select i1 %754, float 0x3FD3333340000000, float %744
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 32
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %834, label %762

; <label>:762                                     ; preds = %740
  %763 = add i32 %33, 92
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %33, 424
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %63, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %765, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101000000000
  %785 = fmul fast float %772, %777
  %786 = fadd fast float %785, %780
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = fadd fast float %773, -5.000000e-01
  %789 = fadd fast float %775, -5.000000e-01
  %790 = fmul fast float %788, %784
  %791 = fmul fast float %789, %784
  %792 = fadd fast float %790, 5.000000e-01
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fmul fast float %792, 2.000000e+00
  %795 = fadd fast float %794, -1.000000e+00
  %796 = fmul fast float %793, 2.000000e+00
  %797 = fadd fast float %796, -1.000000e+00
  %798 = fadd fast float %795, %797
  %799 = fmul fast float %798, 5.000000e-01
  %800 = fsub fast float %795, %797
  %801 = fmul fast float %800, 5.000000e-01
  %802 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %803 = fsub fast float 1.000000e+00, %802
  %804 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %805 = fsub fast float %803, %804
  %806 = call float @dx.op.dot3.f32(i32 55, float %799, float %801, float %805, float %799, float %801, float %805)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.unary.f32(i32 25, float %806)  ; Rsqrt(value)
  %808 = fmul fast float %799, %807
  %809 = fmul fast float %801, %807
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 67108864
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %830, label %814

; <label>:814                                     ; preds = %762
  %815 = add i32 %33, 280
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = lshr i32 %817, 16
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = fsub fast float %787, %825
  %827 = fmul fast float %826, %819
  %828 = fadd fast float %827, %823
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  br label %830

; <label>:830                                     ; preds = %814, %762
  %831 = phi float [ %829, %814 ], [ %787, %762 ]
  %832 = call float @dx.op.dot2.f32(i32 54, float %808, float %809, float %444, float %445)  ; Dot2(ax,ay,bx,by)
  %833 = call float @dx.op.dot2.f32(i32 54, float %808, float %809, float %446, float %447)  ; Dot2(ax,ay,bx,by)
  br label %834

; <label>:834                                     ; preds = %830, %740
  %835 = phi float [ %831, %830 ], [ 0x3FD6666660000000, %740 ]
  %836 = phi float [ %832, %830 ], [ 0.000000e+00, %740 ]
  %837 = phi float [ %833, %830 ], [ 0.000000e+00, %740 ]
  %838 = phi float [ %774, %830 ], [ 1.000000e+00, %740 ]
  %839 = add i32 %33, 160
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 22
  %843 = shl nuw nsw i32 %842, 5
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 64
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %882, label %849

; <label>:849                                     ; preds = %834
  %850 = add i32 %33, 440
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = add i32 %852, 0
  %854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 131072
  %858 = icmp eq i32 %857, 0
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %854, %dx.types.Handle %63, float %540, float %541, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = fmul fast float %860, %210
  %864 = fmul fast float %861, %213
  %865 = fmul fast float %862, %216
  br i1 %858, label %872, label %866

; <label>:866                                     ; preds = %849
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = fmul fast float %868, %863
  %870 = fmul fast float %868, %864
  %871 = fmul fast float %868, %865
  br label %872

; <label>:872                                     ; preds = %866, %849
  %873 = phi float [ %869, %866 ], [ %863, %849 ]
  %874 = phi float [ %870, %866 ], [ %864, %849 ]
  %875 = phi float [ %871, %866 ], [ %865, %849 ]
  %876 = fmul fast float %873, %844
  %877 = select i1 %204, float %876, float %873
  %878 = call float @dx.op.dot3.f32(i32 55, float %877, float %874, float %875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = select i1 %204, float 0.000000e+00, float %873
  %880 = select i1 %204, float %878, float %874
  %881 = select i1 %204, float 0.000000e+00, float %875
  br label %882

; <label>:882                                     ; preds = %872, %834
  %883 = phi float [ %879, %872 ], [ 0.000000e+00, %834 ]
  %884 = phi float [ %880, %872 ], [ 0.000000e+00, %834 ]
  %885 = phi float [ %881, %872 ], [ 0.000000e+00, %834 ]
  %886 = add i32 %33, 96
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %888, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = fmul fast float %893, %894
  %896 = fadd fast float %895, %890
  %897 = fmul fast float %896, 0x3F70101020000000
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  br label %899

; <label>:899                                     ; preds = %882, %426
  %900 = phi float [ 0.000000e+00, %426 ], [ %836, %882 ]
  %901 = phi float [ 0.000000e+00, %426 ], [ %837, %882 ]
  %902 = phi float [ 0.000000e+00, %426 ], [ %755, %882 ]
  %903 = phi float [ 0.000000e+00, %426 ], [ %756, %882 ]
  %904 = phi float [ 0.000000e+00, %426 ], [ %757, %882 ]
  %905 = phi float [ 0.000000e+00, %426 ], [ %883, %882 ]
  %906 = phi float [ 0.000000e+00, %426 ], [ %884, %882 ]
  %907 = phi float [ 0.000000e+00, %426 ], [ %885, %882 ]
  %908 = phi float [ 0.000000e+00, %426 ], [ %741, %882 ]
  %909 = phi float [ 0.000000e+00, %426 ], [ 1.000000e+00, %882 ]
  %910 = phi float [ 0.000000e+00, %426 ], [ %835, %882 ]
  %911 = phi float [ 0.000000e+00, %426 ], [ %838, %882 ]
  %912 = phi float [ 0.000000e+00, %426 ], [ %898, %882 ]
  br i1 %377, label %1754, label %913

; <label>:913                                     ; preds = %899
  %914 = icmp ult i32 %432, 2
  %915 = add i32 %33, 40
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %33, 44
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = or i32 %920, %917
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %1754, label %923

; <label>:923                                     ; preds = %913
  %924 = and i32 %917, 262144
  %925 = icmp ne i32 %924, 0
  %926 = select i1 %925, float %35, float 1.000000e+00
  %927 = select i1 %925, float %36, float 0.000000e+00
  %928 = select i1 %925, float %37, float 0.000000e+00
  %929 = select i1 %925, float %38, float 1.000000e+00
  %930 = select i1 %925, float %39, float %55
  %931 = select i1 %925, float %40, float %56
  %932 = add i32 %33, 300
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 16
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = fmul fast float %936, 0x3F50624DE0000000
  %938 = add i32 %33, 104
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 16
  %942 = and i32 %941, 255
  %943 = lshr i32 %940, 24
  %944 = add i32 %33, 308
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %946, 16
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = add i32 %33, 48
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 22
  %955 = shl nuw nsw i32 %954, 5
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = shl i32 %953, 4
  %958 = and i32 %957, 32752
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = lshr i32 %953, 7
  %961 = and i32 %960, 32752
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %965 = fmul fast float %964, 1.000000e+03
  %966 = fmul fast float %287, %965
  %967 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %968 = fadd fast float %967, %277
  %969 = fmul fast float %288, %965
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fadd fast float %970, %279
  %972 = fmul fast float %937, %965
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = fmul fast float %973, 0x401921FB60000000
  %975 = fadd fast float %974, %956
  %976 = call float @dx.op.unary.f32(i32 13, float %975)  ; Sin(value)
  %977 = call float @dx.op.unary.f32(i32 12, float %975)  ; Cos(value)
  %978 = fsub fast float -0.000000e+00, %976
  %979 = fadd fast float %930, -5.000000e-01
  %980 = fadd fast float %931, -5.000000e-01
  %981 = fmul fast float %948, %979
  %982 = fmul fast float %950, %980
  %983 = fadd fast float %981, 5.000000e-01
  %984 = fadd fast float %982, 5.000000e-01
  %985 = fmul fast float %959, %983
  %986 = fmul fast float %962, %984
  %987 = fmul fast float %977, %985
  %988 = call float @dx.op.tertiary.f32(i32 46, float %978, float %986, float %987)  ; FMad(a,b,c)
  %989 = fmul fast float %976, %985
  %990 = call float @dx.op.tertiary.f32(i32 46, float %977, float %986, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %968, %988
  %992 = fadd fast float %971, %990
  %993 = icmp ugt i32 %942, 1
  %994 = icmp ugt i32 %940, 33554431
  %995 = or i1 %994, %993
  br i1 %995, label %996, label %1021

; <label>:996                                     ; preds = %923
  %997 = add i32 %33, 244
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = lshr i32 %999, 16
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = fmul fast float %964, %1001
  %1003 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1004 = mul nuw nsw i32 %942, %943
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1003, %1005
  %1007 = call float @dx.op.unary.f32(i32 27, float %1006)  ; Round_ni(value)
  %1008 = fptoui float %1007 to i32
  %1009 = urem i32 %1008, %942
  %1010 = udiv i32 %1008, %943
  %1011 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %1012 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %1013 = uitofp i32 %1009 to float
  %1014 = uitofp i32 %1010 to float
  %1015 = fadd fast float %1011, %1013
  %1016 = fadd fast float %1012, %1014
  %1017 = uitofp i32 %942 to float
  %1018 = uitofp i32 %943 to float
  %1019 = fdiv fast float %1015, %1017
  %1020 = fdiv fast float %1016, %1018
  br label %1021

; <label>:1021                                    ; preds = %996, %923
  %1022 = phi float [ %1019, %996 ], [ %991, %923 ]
  %1023 = phi float [ %1020, %996 ], [ %992, %923 ]
  %1024 = and i32 %917, 16777216
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1135, label %1026

; <label>:1026                                    ; preds = %1021
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = fadd fast float %1028, %130
  %1032 = fadd fast float %1029, %131
  %1033 = fadd fast float %1030, %132
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = icmp eq i32 %34, 65535
  br i1 %1037, label %1132, label %1038

; <label>:1038                                    ; preds = %1026
  %1039 = lshr i32 %34, 1
  %1040 = shl i32 %1039, 2
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %34, 1
  %1044 = icmp ne i32 %1043, 0
  %1045 = lshr i32 %1042, 16
  %1046 = and i32 %1042, 65535
  %1047 = select i1 %1044, i32 %1045, i32 %1046
  %1048 = icmp eq i32 %1047, 65535
  br i1 %1048, label %1128, label %1049

; <label>:1049                                    ; preds = %1038
  %1050 = mul nuw nsw i32 %1047, 40
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = add nuw nsw i32 %1050, 12
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = add nuw nsw i32 %1050, 24
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = add nuw nsw i32 %1050, 36
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = fsub fast float %1031, %1052
  %1069 = fsub fast float %1032, %1053
  %1070 = fsub fast float %1033, %1054
  %1071 = fmul fast float %1067, %1068
  %1072 = fmul fast float %1067, %1069
  %1073 = fmul fast float %1067, %1070
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fmul fast float %1077, %1057
  %1081 = fmul fast float %1078, %1058
  %1082 = fmul fast float %1079, %1059
  %1083 = shl i32 %34, 2
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1087, %dx.types.Handle %30, float %1088, float %1089, float %1090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1092, 1.023000e+03
  %1096 = fmul fast float %1093, 1.023000e+03
  %1097 = fmul fast float %1094, 1.023000e+03
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = fsub fast float %1071, %1074
  %1105 = fsub fast float %1072, %1075
  %1106 = fsub fast float %1073, %1076
  %1107 = fmul fast float %1104, 7.500000e-01
  %1108 = fmul fast float %1105, 7.500000e-01
  %1109 = fmul fast float %1106, 7.500000e-01
  %1110 = fadd fast float %1074, 1.250000e-01
  %1111 = fadd fast float %1110, %1107
  %1112 = fadd fast float %1111, %1101
  %1113 = fadd fast float %1075, 1.250000e-01
  %1114 = fadd fast float %1113, %1108
  %1115 = fadd fast float %1114, %1102
  %1116 = fadd fast float %1076, 1.250000e-01
  %1117 = fadd fast float %1116, %1109
  %1118 = fadd fast float %1117, %1103
  %1119 = fmul fast float %1112, %1062
  %1120 = fmul fast float %1115, %1063
  %1121 = fmul fast float %1118, %1064
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1125, %dx.types.Handle %28, float %1119, float %1120, float %1121, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  br label %1128

; <label>:1128                                    ; preds = %1049, %1038
  %1129 = phi float [ %1127, %1049 ], [ -1.000000e+00, %1038 ]
  %1130 = fadd fast float %1129, %1036
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  br label %1132

; <label>:1132                                    ; preds = %1128, %1026
  %1133 = phi float [ %1131, %1128 ], [ %1036, %1026 ]
  %1134 = fmul fast float %1133, %429
  br label %1135

; <label>:1135                                    ; preds = %1132, %1021
  %1136 = phi float [ %1134, %1132 ], [ %429, %1021 ]
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 256
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1187, label %1141

; <label>:1141                                    ; preds = %1135
  %1142 = add i32 %33, 476
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1146, %dx.types.Handle %64, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = add i32 %33, 116
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = shl i32 %1151, 4
  %1153 = and i32 %1152, 32752
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = lshr i32 %1151, 7
  %1156 = and i32 %1155, 32752
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fsub fast float 1.000000e+00, %1136
  %1159 = call float @dx.op.binary.f32(i32 35, float %1158, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1160 = bitcast float %1136 to i32
  %1161 = sitofp i32 %1160 to float
  %1162 = fadd fast float %1161, 0xC1CFBF8940000000
  %1163 = fmul fast float %1157, %1162
  %1164 = fadd fast float %1163, 0x41CFBF8940000000
  %1165 = fptosi float %1164 to i32
  %1166 = bitcast i32 %1165 to float
  %1167 = bitcast float %1159 to i32
  %1168 = sitofp i32 %1167 to float
  %1169 = fadd fast float %1168, 0xC1CFBF8940000000
  %1170 = fmul fast float %1169, %1157
  %1171 = fadd fast float %1170, 0x41CFBF8940000000
  %1172 = fptosi float %1171 to i32
  %1173 = bitcast i32 %1172 to float
  %1174 = fmul fast float %1166, %1154
  %1175 = fmul fast float %1173, %1154
  %1176 = fsub fast float %1159, %1174
  %1177 = fadd fast float %1175, %1159
  %1178 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = fsub fast float %1148, %1178
  %1181 = fsub fast float %1179, %1178
  %1182 = bitcast float %1181 to i32
  %1183 = sub nsw i32 2129859010, %1182
  %1184 = bitcast i32 %1183 to float
  %1185 = fmul fast float %1184, %1180
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  br label %1187

; <label>:1187                                    ; preds = %1141, %1135
  %1188 = phi float [ %1186, %1141 ], [ %1136, %1135 ]
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 128
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1209, label %1193

; <label>:1193                                    ; preds = %1187
  %1194 = add i32 %33, 460
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = add i32 %1196, 0
  %1198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1198, %dx.types.Handle %64, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 524288
  %1204 = icmp ne i32 %1203, 0
  %1205 = fcmp fast ogt float %1200, 0x3FE0101020000000
  %1206 = select i1 %1205, float 1.000000e+00, float 0.000000e+00
  %1207 = select i1 %1204, float %1206, float %1200
  %1208 = fmul fast float %1207, %1188
  br label %1209

; <label>:1209                                    ; preds = %1193, %1187
  %1210 = phi float [ %1208, %1193 ], [ %1188, %1187 ]
  %1211 = fcmp fast ult float %1210, 0x3F70101020000000
  br i1 %1211, label %1754, label %1212

; <label>:1212                                    ; preds = %1209
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 16
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1415, label %1217

; <label>:1217                                    ; preds = %1212
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %33, 412
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %63, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = and i32 %1219, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = lshr i32 %1219, 8
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1229, %1231
  %1236 = fadd fast float %1235, %1234
  %1237 = fmul fast float %1236, 0x3F70101000000000
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 512
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1250, label %1242

; <label>:1242                                    ; preds = %1217
  %1243 = add i32 %33, 492
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %64, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  br label %1250

; <label>:1250                                    ; preds = %1242, %1217
  %1251 = phi float [ %1249, %1242 ], [ 1.000000e+00, %1217 ]
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 33554432
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1362, label %1256

; <label>:1256                                    ; preds = %1250
  %1257 = add i32 %33, 240
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 65535
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = lshr i32 %1259, 16
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = add i32 %33, 244
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 65535
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 24
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = and i32 %1270, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101020000000
  %1277 = lshr i32 %1270, 8
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = lshr i32 %1270, 16
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = add i32 %33, 236
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 24
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = and i32 %1287, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = lshr i32 %1287, 8
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1287, 16
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = bitcast float %1226 to i32
  %1303 = ashr i32 %1302, 1
  %1304 = sub nsw i32 1597463174, %1303
  %1305 = bitcast i32 %1304 to float
  %1306 = fmul fast float %1226, 5.000000e-01
  %1307 = fmul fast float %1305, %1305
  %1308 = fmul fast float %1307, %1306
  %1309 = fsub fast float 1.500000e+00, %1308
  %1310 = fmul fast float %1305, %1226
  %1311 = fmul fast float %1310, %1309
  %1312 = bitcast float %1227 to i32
  %1313 = ashr i32 %1312, 1
  %1314 = sub nsw i32 1597463174, %1313
  %1315 = bitcast i32 %1314 to float
  %1316 = fmul fast float %1227, 5.000000e-01
  %1317 = fmul fast float %1315, %1315
  %1318 = fmul fast float %1317, %1316
  %1319 = fsub fast float 1.500000e+00, %1318
  %1320 = fmul fast float %1315, %1227
  %1321 = fmul fast float %1320, %1319
  %1322 = bitcast float %1228 to i32
  %1323 = ashr i32 %1322, 1
  %1324 = sub nsw i32 1597463174, %1323
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1228, 5.000000e-01
  %1327 = fmul fast float %1325, %1325
  %1328 = fmul fast float %1327, %1326
  %1329 = fsub fast float 1.500000e+00, %1328
  %1330 = fmul fast float %1325, %1228
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float %1311, %1293
  %1333 = fsub fast float %1321, %1297
  %1334 = fsub fast float %1331, %1301
  %1335 = fmul fast float %1332, %1261
  %1336 = fmul fast float %1333, %1263
  %1337 = fmul fast float %1334, %1268
  %1338 = fadd fast float %1335, %1276
  %1339 = fadd fast float %1336, %1280
  %1340 = fadd fast float %1337, %1284
  %1341 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1342 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1344 = fmul fast float %1341, %1341
  %1345 = fmul fast float %1342, %1342
  %1346 = fmul fast float %1343, %1343
  %1347 = fsub fast float %1344, %1226
  %1348 = fsub fast float %1345, %1227
  %1349 = fsub fast float %1346, %1228
  %1350 = fmul fast float %1347, %1251
  %1351 = fmul fast float %1348, %1251
  %1352 = fmul fast float %1349, %1251
  %1353 = fadd fast float %1350, %1226
  %1354 = fadd fast float %1351, %1227
  %1355 = fadd fast float %1352, %1228
  %1356 = fadd fast float %1273, %1237
  %1357 = fsub fast float %1356, %1290
  %1358 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1359 = fsub fast float %1358, %1237
  %1360 = fmul fast float %1359, %1251
  %1361 = fadd fast float %1360, %1237
  br label %1415

; <label>:1362                                    ; preds = %1250
  %1363 = and i32 %1253, 134217728
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1399, label %1365

; <label>:1365                                    ; preds = %1362
  %1366 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1367 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1368 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %1369 = fadd fast float %1366, -5.000000e-01
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fadd fast float %1368, -5.000000e-01
  %1372 = fmul fast float %1369, %1251
  %1373 = fmul fast float %1370, %1251
  %1374 = fmul fast float %1371, %1251
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = fadd fast float %1374, 5.000000e-01
  %1378 = call float @dx.op.unary.f32(i32 24, float %1226)  ; Sqrt(value)
  %1379 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1380 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1381 = fmul fast float %1375, 2.000000e+00
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1382, %1378
  %1384 = fadd fast float %1383, %1381
  %1385 = fmul fast float %1384, %1378
  %1386 = fmul fast float %1376, 2.000000e+00
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = fmul fast float %1387, %1379
  %1389 = fadd fast float %1388, %1386
  %1390 = fmul fast float %1389, %1379
  %1391 = fmul fast float %1377, 2.000000e+00
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = fmul fast float %1392, %1380
  %1394 = fadd fast float %1393, %1391
  %1395 = fmul fast float %1394, %1380
  %1396 = fmul fast float %1385, %1385
  %1397 = fmul fast float %1390, %1390
  %1398 = fmul fast float %1395, %1395
  br label %1415

; <label>:1399                                    ; preds = %1362
  %1400 = fmul fast float %264, %264
  %1401 = fmul fast float %268, %268
  %1402 = fmul fast float %272, %272
  %1403 = fadd fast float %1400, -1.000000e+00
  %1404 = fadd fast float %1401, -1.000000e+00
  %1405 = fadd fast float %1402, -1.000000e+00
  %1406 = fmul fast float %1251, %1403
  %1407 = fmul fast float %1251, %1404
  %1408 = fmul fast float %1251, %1405
  %1409 = fadd fast float %1406, 1.000000e+00
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fadd fast float %1408, 1.000000e+00
  %1412 = fmul fast float %1409, %1226
  %1413 = fmul fast float %1410, %1227
  %1414 = fmul fast float %1411, %1228
  br label %1415

; <label>:1415                                    ; preds = %1399, %1365, %1256, %1212
  %1416 = phi float [ %1361, %1256 ], [ %1237, %1365 ], [ %1237, %1399 ], [ 0x3FA23C0BE0000000, %1212 ]
  %1417 = phi float [ %1353, %1256 ], [ %1396, %1365 ], [ %1412, %1399 ], [ 1.000000e+00, %1212 ]
  %1418 = phi float [ %1354, %1256 ], [ %1397, %1365 ], [ %1413, %1399 ], [ 1.000000e+00, %1212 ]
  %1419 = phi float [ %1355, %1256 ], [ %1398, %1365 ], [ %1414, %1399 ], [ 1.000000e+00, %1212 ]
  %1420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.i32 %1420, 1
  %1422 = and i32 %1421, 1
  %1423 = icmp ne i32 %1422, 0
  %1424 = add i32 %33, 356
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 32
  %1428 = icmp ne i32 %1427, 0
  %1429 = and i1 %1423, %1428
  %1430 = select i1 %1429, float 1.000000e+00, float %1417
  %1431 = select i1 %1429, float 0x3FD3333340000000, float %1418
  %1432 = select i1 %1429, float 0x3FD3333340000000, float %1419
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 32
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1509, label %1437

; <label>:1437                                    ; preds = %1415
  %1438 = add i32 %33, 108
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %33, 428
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %63, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = and i32 %1440, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = lshr i32 %1440, 8
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = lshr i32 %1440, 16
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1458, 0x3F70101000000000
  %1460 = fmul fast float %1447, %1452
  %1461 = fadd fast float %1460, %1455
  %1462 = fmul fast float %1461, 0x3F70101000000000
  %1463 = fadd fast float %1448, -5.000000e-01
  %1464 = fadd fast float %1450, -5.000000e-01
  %1465 = fmul fast float %1463, %1459
  %1466 = fmul fast float %1464, %1459
  %1467 = fadd fast float %1465, 5.000000e-01
  %1468 = fadd fast float %1466, 5.000000e-01
  %1469 = fmul fast float %1467, 2.000000e+00
  %1470 = fadd fast float %1469, -1.000000e+00
  %1471 = fmul fast float %1468, 2.000000e+00
  %1472 = fadd fast float %1471, -1.000000e+00
  %1473 = fadd fast float %1470, %1472
  %1474 = fmul fast float %1473, 5.000000e-01
  %1475 = fsub fast float %1470, %1472
  %1476 = fmul fast float %1475, 5.000000e-01
  %1477 = call float @dx.op.unary.f32(i32 6, float %1474)  ; FAbs(value)
  %1478 = fsub fast float 1.000000e+00, %1477
  %1479 = call float @dx.op.unary.f32(i32 6, float %1476)  ; FAbs(value)
  %1480 = fsub fast float %1478, %1479
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1474, float %1476, float %1480, float %1474, float %1476, float %1480)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = call float @dx.op.unary.f32(i32 25, float %1481)  ; Rsqrt(value)
  %1483 = fmul fast float %1474, %1482
  %1484 = fmul fast float %1476, %1482
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 67108864
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1505, label %1489

; <label>:1489                                    ; preds = %1437
  %1490 = add i32 %33, 296
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = lshr i32 %1492, 16
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = fsub fast float %1462, %1500
  %1502 = fmul fast float %1501, %1494
  %1503 = fadd fast float %1502, %1498
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  br label %1505

; <label>:1505                                    ; preds = %1489, %1437
  %1506 = phi float [ %1504, %1489 ], [ %1462, %1437 ]
  %1507 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %926, float %927)  ; Dot2(ax,ay,bx,by)
  %1508 = call float @dx.op.dot2.f32(i32 54, float %1483, float %1484, float %928, float %929)  ; Dot2(ax,ay,bx,by)
  br label %1509

; <label>:1509                                    ; preds = %1505, %1415
  %1510 = phi float [ %1506, %1505 ], [ 0x3FD6666660000000, %1415 ]
  %1511 = phi float [ %1507, %1505 ], [ 0.000000e+00, %1415 ]
  %1512 = phi float [ %1508, %1505 ], [ 0.000000e+00, %1415 ]
  %1513 = phi float [ %1449, %1505 ], [ 1.000000e+00, %1415 ]
  %1514 = add i32 %33, 176
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = lshr i32 %1516, 22
  %1518 = shl nuw nsw i32 %1517, 5
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 64
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1557, label %1524

; <label>:1524                                    ; preds = %1509
  %1525 = add i32 %33, 444
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = add i32 %1527, 0
  %1529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 131072
  %1533 = icmp eq i32 %1532, 0
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1529, %dx.types.Handle %63, float %1022, float %1023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = fmul fast float %1535, %252
  %1539 = fmul fast float %1536, %255
  %1540 = fmul fast float %1537, %258
  br i1 %1533, label %1547, label %1541

; <label>:1541                                    ; preds = %1524
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = fmul fast float %1543, %1538
  %1545 = fmul fast float %1543, %1539
  %1546 = fmul fast float %1543, %1540
  br label %1547

; <label>:1547                                    ; preds = %1541, %1524
  %1548 = phi float [ %1544, %1541 ], [ %1538, %1524 ]
  %1549 = phi float [ %1545, %1541 ], [ %1539, %1524 ]
  %1550 = phi float [ %1546, %1541 ], [ %1540, %1524 ]
  %1551 = fmul fast float %1548, %1519
  %1552 = select i1 %204, float %1551, float %1548
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1552, float %1549, float %1550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = select i1 %204, float 0.000000e+00, float %1548
  %1555 = select i1 %204, float %1553, float %1549
  %1556 = select i1 %204, float 0.000000e+00, float %1550
  br label %1557

; <label>:1557                                    ; preds = %1547, %1509
  %1558 = phi float [ %1554, %1547 ], [ 0.000000e+00, %1509 ]
  %1559 = phi float [ %1555, %1547 ], [ 0.000000e+00, %1509 ]
  %1560 = phi float [ %1556, %1547 ], [ 0.000000e+00, %1509 ]
  %1561 = add i32 %33, 112
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = lshr i32 %1563, 8
  %1567 = and i32 %1566, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1570 = fmul fast float %1568, %1569
  %1571 = fadd fast float %1570, %1565
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  br i1 %914, label %1574, label %1582

; <label>:1574                                    ; preds = %1557
  %1575 = fsub fast float 1.000000e+00, %1210
  %1576 = fmul fast float %1575, %902
  %1577 = fmul fast float %1575, %903
  %1578 = fmul fast float %1575, %904
  %1579 = fmul fast float %1575, %905
  %1580 = fmul fast float %1575, %906
  %1581 = fmul fast float %1575, %907
  br label %1582

; <label>:1582                                    ; preds = %1574, %1557
  %1583 = phi float [ %1576, %1574 ], [ %902, %1557 ]
  %1584 = phi float [ %1577, %1574 ], [ %903, %1557 ]
  %1585 = phi float [ %1578, %1574 ], [ %904, %1557 ]
  %1586 = phi float [ %1579, %1574 ], [ %905, %1557 ]
  %1587 = phi float [ %1580, %1574 ], [ %906, %1557 ]
  %1588 = phi float [ %1581, %1574 ], [ %907, %1557 ]
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 3
  %1592 = icmp eq i32 %1591, 3
  br i1 %1592, label %1671, label %1593

; <label>:1593                                    ; preds = %1582
  %1594 = and i32 %1590, 16
  %1595 = icmp ne i32 %1594, 0
  %1596 = select i1 %1595, float %1210, float 0.000000e+00
  %1597 = icmp eq i32 %1591, 0
  br i1 %1597, label %1598, label %1626

; <label>:1598                                    ; preds = %1593
  %1599 = and i32 %1590, 64
  %1600 = icmp ne i32 %1599, 0
  %1601 = select i1 %1600, float %1210, float 0.000000e+00
  %1602 = fsub fast float %1430, %1583
  %1603 = fsub fast float %1431, %1584
  %1604 = fsub fast float %1432, %1585
  %1605 = fmul fast float %1596, %1602
  %1606 = fmul fast float %1596, %1603
  %1607 = fmul fast float %1596, %1604
  %1608 = fadd fast float %1605, %1583
  %1609 = fadd fast float %1606, %1584
  %1610 = fadd fast float %1607, %1585
  %1611 = fsub fast float %1416, %908
  %1612 = fmul fast float %1596, %1611
  %1613 = fadd fast float %1612, %908
  %1614 = fsub fast float %1558, %1586
  %1615 = fsub fast float %1559, %1587
  %1616 = fsub fast float %1560, %1588
  %1617 = fmul fast float %1601, %1614
  %1618 = fmul fast float %1601, %1615
  %1619 = fmul fast float %1601, %1616
  %1620 = fadd fast float %1617, %1586
  %1621 = fadd fast float %1618, %1587
  %1622 = fadd fast float %1619, %1588
  %1623 = fsub fast float %1573, %912
  %1624 = fmul fast float %1596, %1623
  %1625 = fadd fast float %1624, %912
  br label %1671

; <label>:1626                                    ; preds = %1593
  %1627 = icmp eq i32 %1591, 1
  br i1 %1627, label %1628, label %1641

; <label>:1628                                    ; preds = %1626
  %1629 = fadd fast float %1430, -1.000000e+00
  %1630 = fadd fast float %1431, -1.000000e+00
  %1631 = fadd fast float %1432, -1.000000e+00
  %1632 = fmul fast float %1596, %1629
  %1633 = fmul fast float %1596, %1630
  %1634 = fmul fast float %1596, %1631
  %1635 = fadd fast float %1632, 1.000000e+00
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fadd fast float %1634, 1.000000e+00
  %1638 = fmul fast float %1635, %1583
  %1639 = fmul fast float %1636, %1584
  %1640 = fmul fast float %1637, %1585
  br label %1671

; <label>:1641                                    ; preds = %1626
  %1642 = icmp eq i32 %1591, 2
  br i1 %1642, label %1643, label %1671

; <label>:1643                                    ; preds = %1641
  %1644 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1645 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1647 = fadd fast float %1644, -5.000000e-01
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fmul fast float %1647, %1596
  %1651 = fmul fast float %1648, %1596
  %1652 = fmul fast float %1649, %1596
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = fadd fast float %1651, 5.000000e-01
  %1655 = fadd fast float %1652, 5.000000e-01
  %1656 = fmul fast float %1653, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1583
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1583
  %1661 = fmul fast float %1654, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1584
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1584
  %1666 = fmul fast float %1655, 2.000000e+00
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = fmul fast float %1667, %1585
  %1669 = fadd fast float %1668, %1666
  %1670 = fmul fast float %1669, %1585
  br label %1671

; <label>:1671                                    ; preds = %1643, %1641, %1628, %1598, %1582
  %1672 = phi float [ %1583, %1582 ], [ %1660, %1643 ], [ %1583, %1641 ], [ %1638, %1628 ], [ %1608, %1598 ]
  %1673 = phi float [ %1584, %1582 ], [ %1665, %1643 ], [ %1584, %1641 ], [ %1639, %1628 ], [ %1609, %1598 ]
  %1674 = phi float [ %1585, %1582 ], [ %1670, %1643 ], [ %1585, %1641 ], [ %1640, %1628 ], [ %1610, %1598 ]
  %1675 = phi float [ %1586, %1582 ], [ %1586, %1643 ], [ %1586, %1641 ], [ %1586, %1628 ], [ %1620, %1598 ]
  %1676 = phi float [ %1587, %1582 ], [ %1587, %1643 ], [ %1587, %1641 ], [ %1587, %1628 ], [ %1621, %1598 ]
  %1677 = phi float [ %1588, %1582 ], [ %1588, %1643 ], [ %1588, %1641 ], [ %1588, %1628 ], [ %1622, %1598 ]
  %1678 = phi float [ %908, %1582 ], [ %908, %1643 ], [ %908, %1641 ], [ %908, %1628 ], [ %1613, %1598 ]
  %1679 = phi float [ %912, %1582 ], [ %912, %1643 ], [ %912, %1641 ], [ %912, %1628 ], [ %1625, %1598 ]
  %1680 = and i32 %1590, 12
  %1681 = icmp eq i32 %1680, 12
  br i1 %1681, label %1754, label %1682

; <label>:1682                                    ; preds = %1671
  %1683 = and i32 %1590, 2097184
  %1684 = icmp eq i32 %1683, 2097184
  %1685 = select i1 %1684, float %1210, float 0.000000e+00
  %1686 = and i32 %1590, 4194336
  %1687 = icmp eq i32 %1686, 4194336
  %1688 = select i1 %1687, float %1210, float 0.000000e+00
  %1689 = and i32 %1590, 8388640
  %1690 = icmp eq i32 %1689, 8388640
  %1691 = select i1 %1690, float %1210, float 0.000000e+00
  %1692 = icmp eq i32 %1680, 0
  br i1 %1692, label %1693, label %1706

; <label>:1693                                    ; preds = %1682
  %1694 = fsub fast float %1511, %900
  %1695 = fsub fast float %1512, %901
  %1696 = fmul fast float %1685, %1694
  %1697 = fmul fast float %1685, %1695
  %1698 = fadd fast float %1696, %900
  %1699 = fadd fast float %1697, %901
  %1700 = fsub fast float %1513, %911
  %1701 = fmul fast float %1688, %1700
  %1702 = fadd fast float %1701, %911
  %1703 = fsub fast float %1510, %910
  %1704 = fmul fast float %1691, %1703
  %1705 = fadd fast float %1704, %910
  br label %1754

; <label>:1706                                    ; preds = %1682
  %1707 = icmp eq i32 %1680, 4
  br i1 %1707, label %1708, label %1740

; <label>:1708                                    ; preds = %1706
  %1709 = fmul fast float %1685, %1511
  %1710 = fmul fast float %1685, %1512
  %1711 = fadd fast float %1709, %900
  %1712 = fadd fast float %1710, %901
  %1713 = call float @dx.op.binary.f32(i32 36, float %911, float %1513)  ; FMin(a,b)
  %1714 = fsub fast float %1713, %911
  %1715 = fmul fast float %1714, %1688
  %1716 = fadd fast float %1715, %911
  %1717 = fadd fast float %1510, %910
  %1718 = fmul fast float %1717, 0x3FF337FAE0000000
  %1719 = fmul fast float %910, %910
  %1720 = fmul fast float %1510, %1510
  %1721 = fadd fast float %1720, %1719
  %1722 = fmul fast float %1721, 0x3FE5152B00000000
  %1723 = fmul fast float %910, 0xBFCC1F85E0000000
  %1724 = fmul fast float %1723, %1510
  %1725 = fadd fast float %1724, 0xBFE1363700000000
  %1726 = fadd fast float %1725, %1718
  %1727 = fsub fast float %1726, %1722
  %1728 = fmul fast float %1717, 0x3FBA6F0D00000000
  %1729 = fmul fast float %1721, 0x3FD0432880000000
  %1730 = fmul fast float %910, 0xBFEF110800000000
  %1731 = fmul fast float %1730, %1510
  %1732 = fadd fast float %1731, 1.000000e+00
  %1733 = fsub fast float %1732, %1728
  %1734 = fadd fast float %1733, %1729
  %1735 = fdiv fast float %1727, %1734
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = fsub fast float %1736, %910
  %1738 = fmul fast float %1737, %1691
  %1739 = fadd fast float %1738, %910
  br label %1754

; <label>:1740                                    ; preds = %1706
  %1741 = icmp eq i32 %1680, 8
  br i1 %1741, label %1742, label %1754

; <label>:1742                                    ; preds = %1740
  %1743 = fmul fast float %1685, %1511
  %1744 = fmul fast float %1685, %1512
  %1745 = fadd fast float %1743, %900
  %1746 = fadd fast float %1744, %901
  %1747 = call float @dx.op.binary.f32(i32 36, float %911, float %1513)  ; FMin(a,b)
  %1748 = fsub fast float %1747, %911
  %1749 = fmul fast float %1748, %1688
  %1750 = fadd fast float %1749, %911
  %1751 = fsub fast float %1510, %910
  %1752 = fmul fast float %1691, %1751
  %1753 = fadd fast float %1752, %910
  br label %1754

; <label>:1754                                    ; preds = %1742, %1740, %1708, %1693, %1671, %1209, %913, %899
  %1755 = phi float [ %900, %1671 ], [ %900, %1209 ], [ %900, %899 ], [ %1745, %1742 ], [ %900, %1740 ], [ %1711, %1708 ], [ %1698, %1693 ], [ %900, %913 ]
  %1756 = phi float [ %901, %1671 ], [ %901, %1209 ], [ %901, %899 ], [ %1746, %1742 ], [ %901, %1740 ], [ %1712, %1708 ], [ %1699, %1693 ], [ %901, %913 ]
  %1757 = phi float [ %1672, %1671 ], [ %902, %1209 ], [ %902, %899 ], [ %1672, %1742 ], [ %1672, %1740 ], [ %1672, %1708 ], [ %1672, %1693 ], [ %902, %913 ]
  %1758 = phi float [ %1673, %1671 ], [ %903, %1209 ], [ %903, %899 ], [ %1673, %1742 ], [ %1673, %1740 ], [ %1673, %1708 ], [ %1673, %1693 ], [ %903, %913 ]
  %1759 = phi float [ %1674, %1671 ], [ %904, %1209 ], [ %904, %899 ], [ %1674, %1742 ], [ %1674, %1740 ], [ %1674, %1708 ], [ %1674, %1693 ], [ %904, %913 ]
  %1760 = phi float [ %1675, %1671 ], [ %905, %1209 ], [ %905, %899 ], [ %1675, %1742 ], [ %1675, %1740 ], [ %1675, %1708 ], [ %1675, %1693 ], [ %905, %913 ]
  %1761 = phi float [ %1676, %1671 ], [ %906, %1209 ], [ %906, %899 ], [ %1676, %1742 ], [ %1676, %1740 ], [ %1676, %1708 ], [ %1676, %1693 ], [ %906, %913 ]
  %1762 = phi float [ %1677, %1671 ], [ %907, %1209 ], [ %907, %899 ], [ %1677, %1742 ], [ %1677, %1740 ], [ %1677, %1708 ], [ %1677, %1693 ], [ %907, %913 ]
  %1763 = phi float [ %1678, %1671 ], [ %908, %1209 ], [ %908, %899 ], [ %1678, %1742 ], [ %1678, %1740 ], [ %1678, %1708 ], [ %1678, %1693 ], [ %908, %913 ]
  %1764 = phi float [ %910, %1671 ], [ %910, %1209 ], [ %910, %899 ], [ %1753, %1742 ], [ %910, %1740 ], [ %1739, %1708 ], [ %1705, %1693 ], [ %910, %913 ]
  %1765 = phi float [ %911, %1671 ], [ %911, %1209 ], [ %911, %899 ], [ %1750, %1742 ], [ %911, %1740 ], [ %1716, %1708 ], [ %1702, %1693 ], [ %911, %913 ]
  %1766 = phi float [ %1679, %1671 ], [ %912, %1209 ], [ %912, %899 ], [ %1679, %1742 ], [ %1679, %1740 ], [ %1679, %1708 ], [ %1679, %1693 ], [ %912, %913 ]
  br i1 %379, label %2608, label %1767

; <label>:1767                                    ; preds = %1754
  %1768 = icmp ult i32 %432, 3
  %1769 = add i32 %33, 56
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %33, 60
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = or i32 %1774, %1771
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %2608, label %1777

; <label>:1777                                    ; preds = %1767
  %1778 = and i32 %1771, 262144
  %1779 = icmp ne i32 %1778, 0
  %1780 = select i1 %1779, float %35, float 1.000000e+00
  %1781 = select i1 %1779, float %36, float 0.000000e+00
  %1782 = select i1 %1779, float %37, float 0.000000e+00
  %1783 = select i1 %1779, float %38, float 1.000000e+00
  %1784 = select i1 %1779, float %39, float %55
  %1785 = select i1 %1779, float %40, float %56
  %1786 = add i32 %33, 316
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = lshr i32 %1788, 16
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fmul fast float %1790, 0x3F50624DE0000000
  %1792 = add i32 %33, 120
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = lshr i32 %1794, 16
  %1796 = and i32 %1795, 255
  %1797 = lshr i32 %1794, 24
  %1798 = add i32 %33, 324
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 65535
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = lshr i32 %1800, 16
  %1804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1803)  ; LegacyF16ToF32(value)
  %1805 = add i32 %33, 64
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = lshr i32 %1807, 22
  %1809 = shl nuw nsw i32 %1808, 5
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = shl i32 %1807, 4
  %1812 = and i32 %1811, 32752
  %1813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1812)  ; LegacyF16ToF32(value)
  %1814 = lshr i32 %1807, 7
  %1815 = and i32 %1814, 32752
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 3
  %1819 = fmul fast float %1818, 1.000000e+03
  %1820 = fmul fast float %329, %1819
  %1821 = call float @dx.op.unary.f32(i32 22, float %1820)  ; Frc(value)
  %1822 = fadd fast float %1821, %319
  %1823 = fmul fast float %330, %1819
  %1824 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1825 = fadd fast float %1824, %321
  %1826 = fmul fast float %1791, %1819
  %1827 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1828 = fmul fast float %1827, 0x401921FB60000000
  %1829 = fadd fast float %1828, %1810
  %1830 = call float @dx.op.unary.f32(i32 13, float %1829)  ; Sin(value)
  %1831 = call float @dx.op.unary.f32(i32 12, float %1829)  ; Cos(value)
  %1832 = fsub fast float -0.000000e+00, %1830
  %1833 = fadd fast float %1784, -5.000000e-01
  %1834 = fadd fast float %1785, -5.000000e-01
  %1835 = fmul fast float %1802, %1833
  %1836 = fmul fast float %1804, %1834
  %1837 = fadd fast float %1835, 5.000000e-01
  %1838 = fadd fast float %1836, 5.000000e-01
  %1839 = fmul fast float %1813, %1837
  %1840 = fmul fast float %1816, %1838
  %1841 = fmul fast float %1831, %1839
  %1842 = call float @dx.op.tertiary.f32(i32 46, float %1832, float %1840, float %1841)  ; FMad(a,b,c)
  %1843 = fmul fast float %1830, %1839
  %1844 = call float @dx.op.tertiary.f32(i32 46, float %1831, float %1840, float %1843)  ; FMad(a,b,c)
  %1845 = fadd fast float %1822, %1842
  %1846 = fadd fast float %1825, %1844
  %1847 = icmp ugt i32 %1796, 1
  %1848 = icmp ugt i32 %1794, 33554431
  %1849 = or i1 %1848, %1847
  br i1 %1849, label %1850, label %1875

; <label>:1850                                    ; preds = %1777
  %1851 = add i32 %33, 260
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 16
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = fmul fast float %1818, %1855
  %1857 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1858 = mul nuw nsw i32 %1796, %1797
  %1859 = uitofp i32 %1858 to float
  %1860 = fmul fast float %1857, %1859
  %1861 = call float @dx.op.unary.f32(i32 27, float %1860)  ; Round_ni(value)
  %1862 = fptoui float %1861 to i32
  %1863 = urem i32 %1862, %1796
  %1864 = udiv i32 %1862, %1797
  %1865 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1866 = call float @dx.op.unary.f32(i32 22, float %1846)  ; Frc(value)
  %1867 = uitofp i32 %1863 to float
  %1868 = uitofp i32 %1864 to float
  %1869 = fadd fast float %1865, %1867
  %1870 = fadd fast float %1866, %1868
  %1871 = uitofp i32 %1796 to float
  %1872 = uitofp i32 %1797 to float
  %1873 = fdiv fast float %1869, %1871
  %1874 = fdiv fast float %1870, %1872
  br label %1875

; <label>:1875                                    ; preds = %1850, %1777
  %1876 = phi float [ %1873, %1850 ], [ %1845, %1777 ]
  %1877 = phi float [ %1874, %1850 ], [ %1846, %1777 ]
  %1878 = and i32 %1771, 16777216
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1989, label %1880

; <label>:1880                                    ; preds = %1875
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.CBufRet.f32 %1881, 2
  %1885 = fadd fast float %1882, %130
  %1886 = fadd fast float %1883, %131
  %1887 = fadd fast float %1884, %132
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = icmp eq i32 %34, 65535
  br i1 %1891, label %1986, label %1892

; <label>:1892                                    ; preds = %1880
  %1893 = lshr i32 %34, 1
  %1894 = shl i32 %1893, 2
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %34, 1
  %1898 = icmp ne i32 %1897, 0
  %1899 = lshr i32 %1896, 16
  %1900 = and i32 %1896, 65535
  %1901 = select i1 %1898, i32 %1899, i32 %1900
  %1902 = icmp eq i32 %1901, 65535
  br i1 %1902, label %1982, label %1903

; <label>:1903                                    ; preds = %1892
  %1904 = mul nuw nsw i32 %1901, 40
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = add nuw nsw i32 %1904, 12
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = add nuw nsw i32 %1904, 24
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.ResRet.f32 %1915, 2
  %1919 = add nuw nsw i32 %1904, 36
  %1920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = fsub fast float %1885, %1906
  %1923 = fsub fast float %1886, %1907
  %1924 = fsub fast float %1887, %1908
  %1925 = fmul fast float %1921, %1922
  %1926 = fmul fast float %1921, %1923
  %1927 = fmul fast float %1921, %1924
  %1928 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1930 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1931 = fadd fast float %1928, 5.000000e-01
  %1932 = fadd fast float %1929, 5.000000e-01
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fmul fast float %1931, %1911
  %1935 = fmul fast float %1932, %1912
  %1936 = fmul fast float %1933, %1913
  %1937 = shl i32 %34, 2
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = add i32 %1939, 0
  %1941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1940, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1942 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1943 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1944 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1941, %dx.types.Handle %30, float %1942, float %1943, float %1944, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.ResRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.ResRet.f32 %1945, 2
  %1949 = fmul fast float %1946, 1.023000e+03
  %1950 = fmul fast float %1947, 1.023000e+03
  %1951 = fmul fast float %1948, 1.023000e+03
  %1952 = fadd fast float %1949, 5.000000e-01
  %1953 = fadd fast float %1950, 5.000000e-01
  %1954 = fadd fast float %1951, 5.000000e-01
  %1955 = call float @dx.op.unary.f32(i32 27, float %1952)  ; Round_ni(value)
  %1956 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1957 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1958 = fsub fast float %1925, %1928
  %1959 = fsub fast float %1926, %1929
  %1960 = fsub fast float %1927, %1930
  %1961 = fmul fast float %1958, 7.500000e-01
  %1962 = fmul fast float %1959, 7.500000e-01
  %1963 = fmul fast float %1960, 7.500000e-01
  %1964 = fadd fast float %1928, 1.250000e-01
  %1965 = fadd fast float %1964, %1961
  %1966 = fadd fast float %1965, %1955
  %1967 = fadd fast float %1929, 1.250000e-01
  %1968 = fadd fast float %1967, %1962
  %1969 = fadd fast float %1968, %1956
  %1970 = fadd fast float %1930, 1.250000e-01
  %1971 = fadd fast float %1970, %1963
  %1972 = fadd fast float %1971, %1957
  %1973 = fmul fast float %1966, %1916
  %1974 = fmul fast float %1969, %1917
  %1975 = fmul fast float %1972, %1918
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = add i32 %1977, 0
  %1979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1979, %dx.types.Handle %28, float %1973, float %1974, float %1975, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  br label %1982

; <label>:1982                                    ; preds = %1903, %1892
  %1983 = phi float [ %1981, %1903 ], [ -1.000000e+00, %1892 ]
  %1984 = fadd fast float %1983, %1890
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  br label %1986

; <label>:1986                                    ; preds = %1982, %1880
  %1987 = phi float [ %1985, %1982 ], [ %1890, %1880 ]
  %1988 = fmul fast float %1987, %428
  br label %1989

; <label>:1989                                    ; preds = %1986, %1875
  %1990 = phi float [ %1988, %1986 ], [ %428, %1875 ]
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 256
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2041, label %1995

; <label>:1995                                    ; preds = %1989
  %1996 = add i32 %33, 480
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = add i32 %1998, 0
  %2000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2000, %dx.types.Handle %64, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = add i32 %33, 132
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = shl i32 %2005, 4
  %2007 = and i32 %2006, 32752
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = lshr i32 %2005, 7
  %2010 = and i32 %2009, 32752
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = fsub fast float 1.000000e+00, %1990
  %2013 = call float @dx.op.binary.f32(i32 35, float %2012, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2014 = bitcast float %1990 to i32
  %2015 = sitofp i32 %2014 to float
  %2016 = fadd fast float %2015, 0xC1CFBF8940000000
  %2017 = fmul fast float %2011, %2016
  %2018 = fadd fast float %2017, 0x41CFBF8940000000
  %2019 = fptosi float %2018 to i32
  %2020 = bitcast i32 %2019 to float
  %2021 = bitcast float %2013 to i32
  %2022 = sitofp i32 %2021 to float
  %2023 = fadd fast float %2022, 0xC1CFBF8940000000
  %2024 = fmul fast float %2023, %2011
  %2025 = fadd fast float %2024, 0x41CFBF8940000000
  %2026 = fptosi float %2025 to i32
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %2020, %2008
  %2029 = fmul fast float %2027, %2008
  %2030 = fsub fast float %2013, %2028
  %2031 = fadd fast float %2029, %2013
  %2032 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2034 = fsub fast float %2002, %2032
  %2035 = fsub fast float %2033, %2032
  %2036 = bitcast float %2035 to i32
  %2037 = sub nsw i32 2129859010, %2036
  %2038 = bitcast i32 %2037 to float
  %2039 = fmul fast float %2038, %2034
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  br label %2041

; <label>:2041                                    ; preds = %1995, %1989
  %2042 = phi float [ %2040, %1995 ], [ %1990, %1989 ]
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 128
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %2063, label %2047

; <label>:2047                                    ; preds = %2041
  %2048 = add i32 %33, 464
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %2050, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2052, %dx.types.Handle %64, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 524288
  %2058 = icmp ne i32 %2057, 0
  %2059 = fcmp fast ogt float %2054, 0x3FE0101020000000
  %2060 = select i1 %2059, float 1.000000e+00, float 0.000000e+00
  %2061 = select i1 %2058, float %2060, float %2054
  %2062 = fmul fast float %2061, %2042
  br label %2063

; <label>:2063                                    ; preds = %2047, %2041
  %2064 = phi float [ %2062, %2047 ], [ %2042, %2041 ]
  %2065 = fcmp fast ult float %2064, 0x3F70101020000000
  br i1 %2065, label %2608, label %2066

; <label>:2066                                    ; preds = %2063
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 16
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2269, label %2071

; <label>:2071                                    ; preds = %2066
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %33, 416
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = add i32 %2076, 0
  %2078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2078, %dx.types.Handle %63, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = extractvalue %dx.types.ResRet.f32 %2079, 3
  %2084 = and i32 %2073, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = lshr i32 %2073, 8
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2083, %2085
  %2090 = fadd fast float %2089, %2088
  %2091 = fmul fast float %2090, 0x3F70101000000000
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 512
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2104, label %2096

; <label>:2096                                    ; preds = %2071
  %2097 = add i32 %33, 496
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = add i32 %2099, 0
  %2101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2101, %dx.types.Handle %64, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  br label %2104

; <label>:2104                                    ; preds = %2096, %2071
  %2105 = phi float [ %2103, %2096 ], [ 1.000000e+00, %2071 ]
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 33554432
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2216, label %2110

; <label>:2110                                    ; preds = %2104
  %2111 = add i32 %33, 256
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 65535
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = lshr i32 %2113, 16
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = add i32 %33, 260
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = and i32 %2120, 65535
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = lshr i32 %2124, 24
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = and i32 %2124, 255
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2129, 0x3F70101020000000
  %2131 = lshr i32 %2124, 8
  %2132 = and i32 %2131, 255
  %2133 = uitofp i32 %2132 to float
  %2134 = fmul fast float %2133, 0x3F70101020000000
  %2135 = lshr i32 %2124, 16
  %2136 = and i32 %2135, 255
  %2137 = uitofp i32 %2136 to float
  %2138 = fmul fast float %2137, 0x3F70101020000000
  %2139 = add i32 %33, 252
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = lshr i32 %2141, 24
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = and i32 %2141, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2146, 0x3F70101020000000
  %2148 = lshr i32 %2141, 8
  %2149 = and i32 %2148, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101020000000
  %2152 = lshr i32 %2141, 16
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F70101020000000
  %2156 = bitcast float %2080 to i32
  %2157 = ashr i32 %2156, 1
  %2158 = sub nsw i32 1597463174, %2157
  %2159 = bitcast i32 %2158 to float
  %2160 = fmul fast float %2080, 5.000000e-01
  %2161 = fmul fast float %2159, %2159
  %2162 = fmul fast float %2161, %2160
  %2163 = fsub fast float 1.500000e+00, %2162
  %2164 = fmul fast float %2159, %2080
  %2165 = fmul fast float %2164, %2163
  %2166 = bitcast float %2081 to i32
  %2167 = ashr i32 %2166, 1
  %2168 = sub nsw i32 1597463174, %2167
  %2169 = bitcast i32 %2168 to float
  %2170 = fmul fast float %2081, 5.000000e-01
  %2171 = fmul fast float %2169, %2169
  %2172 = fmul fast float %2171, %2170
  %2173 = fsub fast float 1.500000e+00, %2172
  %2174 = fmul fast float %2169, %2081
  %2175 = fmul fast float %2174, %2173
  %2176 = bitcast float %2082 to i32
  %2177 = ashr i32 %2176, 1
  %2178 = sub nsw i32 1597463174, %2177
  %2179 = bitcast i32 %2178 to float
  %2180 = fmul fast float %2082, 5.000000e-01
  %2181 = fmul fast float %2179, %2179
  %2182 = fmul fast float %2181, %2180
  %2183 = fsub fast float 1.500000e+00, %2182
  %2184 = fmul fast float %2179, %2082
  %2185 = fmul fast float %2184, %2183
  %2186 = fsub fast float %2165, %2147
  %2187 = fsub fast float %2175, %2151
  %2188 = fsub fast float %2185, %2155
  %2189 = fmul fast float %2186, %2115
  %2190 = fmul fast float %2187, %2117
  %2191 = fmul fast float %2188, %2122
  %2192 = fadd fast float %2189, %2130
  %2193 = fadd fast float %2190, %2134
  %2194 = fadd fast float %2191, %2138
  %2195 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2196 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2197 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2198 = fmul fast float %2195, %2195
  %2199 = fmul fast float %2196, %2196
  %2200 = fmul fast float %2197, %2197
  %2201 = fsub fast float %2198, %2080
  %2202 = fsub fast float %2199, %2081
  %2203 = fsub fast float %2200, %2082
  %2204 = fmul fast float %2201, %2105
  %2205 = fmul fast float %2202, %2105
  %2206 = fmul fast float %2203, %2105
  %2207 = fadd fast float %2204, %2080
  %2208 = fadd fast float %2205, %2081
  %2209 = fadd fast float %2206, %2082
  %2210 = fadd fast float %2127, %2091
  %2211 = fsub fast float %2210, %2144
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fsub fast float %2212, %2091
  %2214 = fmul fast float %2213, %2105
  %2215 = fadd fast float %2214, %2091
  br label %2269

; <label>:2216                                    ; preds = %2104
  %2217 = and i32 %2107, 134217728
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2253, label %2219

; <label>:2219                                    ; preds = %2216
  %2220 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2221 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2222 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %2223 = fadd fast float %2220, -5.000000e-01
  %2224 = fadd fast float %2221, -5.000000e-01
  %2225 = fadd fast float %2222, -5.000000e-01
  %2226 = fmul fast float %2223, %2105
  %2227 = fmul fast float %2224, %2105
  %2228 = fmul fast float %2225, %2105
  %2229 = fadd fast float %2226, 5.000000e-01
  %2230 = fadd fast float %2227, 5.000000e-01
  %2231 = fadd fast float %2228, 5.000000e-01
  %2232 = call float @dx.op.unary.f32(i32 24, float %2080)  ; Sqrt(value)
  %2233 = call float @dx.op.unary.f32(i32 24, float %2081)  ; Sqrt(value)
  %2234 = call float @dx.op.unary.f32(i32 24, float %2082)  ; Sqrt(value)
  %2235 = fmul fast float %2229, 2.000000e+00
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2232
  %2238 = fadd fast float %2237, %2235
  %2239 = fmul fast float %2238, %2232
  %2240 = fmul fast float %2230, 2.000000e+00
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = fmul fast float %2241, %2233
  %2243 = fadd fast float %2242, %2240
  %2244 = fmul fast float %2243, %2233
  %2245 = fmul fast float %2231, 2.000000e+00
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = fmul fast float %2246, %2234
  %2248 = fadd fast float %2247, %2245
  %2249 = fmul fast float %2248, %2234
  %2250 = fmul fast float %2239, %2239
  %2251 = fmul fast float %2244, %2244
  %2252 = fmul fast float %2249, %2249
  br label %2269

; <label>:2253                                    ; preds = %2216
  %2254 = fmul fast float %306, %306
  %2255 = fmul fast float %310, %310
  %2256 = fmul fast float %314, %314
  %2257 = fadd fast float %2254, -1.000000e+00
  %2258 = fadd fast float %2255, -1.000000e+00
  %2259 = fadd fast float %2256, -1.000000e+00
  %2260 = fmul fast float %2105, %2257
  %2261 = fmul fast float %2105, %2258
  %2262 = fmul fast float %2105, %2259
  %2263 = fadd fast float %2260, 1.000000e+00
  %2264 = fadd fast float %2261, 1.000000e+00
  %2265 = fadd fast float %2262, 1.000000e+00
  %2266 = fmul fast float %2263, %2080
  %2267 = fmul fast float %2264, %2081
  %2268 = fmul fast float %2265, %2082
  br label %2269

; <label>:2269                                    ; preds = %2253, %2219, %2110, %2066
  %2270 = phi float [ %2215, %2110 ], [ %2091, %2219 ], [ %2091, %2253 ], [ 0x3FA23C0BE0000000, %2066 ]
  %2271 = phi float [ %2207, %2110 ], [ %2250, %2219 ], [ %2266, %2253 ], [ 1.000000e+00, %2066 ]
  %2272 = phi float [ %2208, %2110 ], [ %2251, %2219 ], [ %2267, %2253 ], [ 1.000000e+00, %2066 ]
  %2273 = phi float [ %2209, %2110 ], [ %2252, %2219 ], [ %2268, %2253 ], [ 1.000000e+00, %2066 ]
  %2274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.i32 %2274, 1
  %2276 = and i32 %2275, 1
  %2277 = icmp ne i32 %2276, 0
  %2278 = add i32 %33, 356
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 32
  %2282 = icmp ne i32 %2281, 0
  %2283 = and i1 %2277, %2282
  %2284 = select i1 %2283, float 1.000000e+00, float %2271
  %2285 = select i1 %2283, float 0x3FD3333340000000, float %2272
  %2286 = select i1 %2283, float 0x3FD3333340000000, float %2273
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 32
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2363, label %2291

; <label>:2291                                    ; preds = %2269
  %2292 = add i32 %33, 124
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %33, 432
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %63, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = and i32 %2294, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = lshr i32 %2294, 8
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = lshr i32 %2294, 16
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2312, 0x3F70101000000000
  %2314 = fmul fast float %2301, %2306
  %2315 = fadd fast float %2314, %2309
  %2316 = fmul fast float %2315, 0x3F70101000000000
  %2317 = fadd fast float %2302, -5.000000e-01
  %2318 = fadd fast float %2304, -5.000000e-01
  %2319 = fmul fast float %2317, %2313
  %2320 = fmul fast float %2318, %2313
  %2321 = fadd fast float %2319, 5.000000e-01
  %2322 = fadd fast float %2320, 5.000000e-01
  %2323 = fmul fast float %2321, 2.000000e+00
  %2324 = fadd fast float %2323, -1.000000e+00
  %2325 = fmul fast float %2322, 2.000000e+00
  %2326 = fadd fast float %2325, -1.000000e+00
  %2327 = fadd fast float %2324, %2326
  %2328 = fmul fast float %2327, 5.000000e-01
  %2329 = fsub fast float %2324, %2326
  %2330 = fmul fast float %2329, 5.000000e-01
  %2331 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = call float @dx.op.unary.f32(i32 6, float %2330)  ; FAbs(value)
  %2334 = fsub fast float %2332, %2333
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2330, float %2334, float %2328, float %2330, float %2334)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = call float @dx.op.unary.f32(i32 25, float %2335)  ; Rsqrt(value)
  %2337 = fmul fast float %2328, %2336
  %2338 = fmul fast float %2330, %2336
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 67108864
  %2342 = icmp eq i32 %2341, 0
  br i1 %2342, label %2359, label %2343

; <label>:2343                                    ; preds = %2291
  %2344 = add i32 %33, 312
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 65535
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 65535
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = lshr i32 %2346, 16
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = fsub fast float %2316, %2354
  %2356 = fmul fast float %2355, %2348
  %2357 = fadd fast float %2356, %2352
  %2358 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  br label %2359

; <label>:2359                                    ; preds = %2343, %2291
  %2360 = phi float [ %2358, %2343 ], [ %2316, %2291 ]
  %2361 = call float @dx.op.dot2.f32(i32 54, float %2337, float %2338, float %1780, float %1781)  ; Dot2(ax,ay,bx,by)
  %2362 = call float @dx.op.dot2.f32(i32 54, float %2337, float %2338, float %1782, float %1783)  ; Dot2(ax,ay,bx,by)
  br label %2363

; <label>:2363                                    ; preds = %2359, %2269
  %2364 = phi float [ %2360, %2359 ], [ 0x3FD6666660000000, %2269 ]
  %2365 = phi float [ %2361, %2359 ], [ 0.000000e+00, %2269 ]
  %2366 = phi float [ %2362, %2359 ], [ 0.000000e+00, %2269 ]
  %2367 = phi float [ %2303, %2359 ], [ 1.000000e+00, %2269 ]
  %2368 = add i32 %33, 192
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 22
  %2372 = shl nuw nsw i32 %2371, 5
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 64
  %2377 = icmp eq i32 %2376, 0
  br i1 %2377, label %2411, label %2378

; <label>:2378                                    ; preds = %2363
  %2379 = add i32 %33, 448
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = add i32 %2381, 0
  %2383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 131072
  %2387 = icmp eq i32 %2386, 0
  %2388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2383, %dx.types.Handle %63, float %1876, float %1877, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.ResRet.f32 %2388, 1
  %2391 = extractvalue %dx.types.ResRet.f32 %2388, 2
  %2392 = fmul fast float %2389, %294
  %2393 = fmul fast float %2390, %297
  %2394 = fmul fast float %2391, %300
  br i1 %2387, label %2401, label %2395

; <label>:2395                                    ; preds = %2378
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = fmul fast float %2397, %2392
  %2399 = fmul fast float %2397, %2393
  %2400 = fmul fast float %2397, %2394
  br label %2401

; <label>:2401                                    ; preds = %2395, %2378
  %2402 = phi float [ %2398, %2395 ], [ %2392, %2378 ]
  %2403 = phi float [ %2399, %2395 ], [ %2393, %2378 ]
  %2404 = phi float [ %2400, %2395 ], [ %2394, %2378 ]
  %2405 = fmul fast float %2402, %2373
  %2406 = select i1 %204, float %2405, float %2402
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2406, float %2403, float %2404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = select i1 %204, float 0.000000e+00, float %2402
  %2409 = select i1 %204, float %2407, float %2403
  %2410 = select i1 %204, float 0.000000e+00, float %2404
  br label %2411

; <label>:2411                                    ; preds = %2401, %2363
  %2412 = phi float [ %2408, %2401 ], [ 0.000000e+00, %2363 ]
  %2413 = phi float [ %2409, %2401 ], [ 0.000000e+00, %2363 ]
  %2414 = phi float [ %2410, %2401 ], [ 0.000000e+00, %2363 ]
  %2415 = add i32 %33, 128
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = lshr i32 %2417, 8
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2284, float %2285, float %2286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = fmul fast float %2422, %2423
  %2425 = fadd fast float %2424, %2419
  %2426 = fmul fast float %2425, 0x3F70101020000000
  %2427 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  br i1 %1768, label %2428, label %2436

; <label>:2428                                    ; preds = %2411
  %2429 = fsub fast float 1.000000e+00, %2064
  %2430 = fmul fast float %2429, %1757
  %2431 = fmul fast float %2429, %1758
  %2432 = fmul fast float %2429, %1759
  %2433 = fmul fast float %2429, %1760
  %2434 = fmul fast float %2429, %1761
  %2435 = fmul fast float %2429, %1762
  br label %2436

; <label>:2436                                    ; preds = %2428, %2411
  %2437 = phi float [ %2430, %2428 ], [ %1757, %2411 ]
  %2438 = phi float [ %2431, %2428 ], [ %1758, %2411 ]
  %2439 = phi float [ %2432, %2428 ], [ %1759, %2411 ]
  %2440 = phi float [ %2433, %2428 ], [ %1760, %2411 ]
  %2441 = phi float [ %2434, %2428 ], [ %1761, %2411 ]
  %2442 = phi float [ %2435, %2428 ], [ %1762, %2411 ]
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 3
  %2446 = icmp eq i32 %2445, 3
  br i1 %2446, label %2525, label %2447

; <label>:2447                                    ; preds = %2436
  %2448 = and i32 %2444, 16
  %2449 = icmp ne i32 %2448, 0
  %2450 = select i1 %2449, float %2064, float 0.000000e+00
  %2451 = icmp eq i32 %2445, 0
  br i1 %2451, label %2452, label %2480

; <label>:2452                                    ; preds = %2447
  %2453 = and i32 %2444, 64
  %2454 = icmp ne i32 %2453, 0
  %2455 = select i1 %2454, float %2064, float 0.000000e+00
  %2456 = fsub fast float %2284, %2437
  %2457 = fsub fast float %2285, %2438
  %2458 = fsub fast float %2286, %2439
  %2459 = fmul fast float %2450, %2456
  %2460 = fmul fast float %2450, %2457
  %2461 = fmul fast float %2450, %2458
  %2462 = fadd fast float %2459, %2437
  %2463 = fadd fast float %2460, %2438
  %2464 = fadd fast float %2461, %2439
  %2465 = fsub fast float %2270, %1763
  %2466 = fmul fast float %2450, %2465
  %2467 = fadd fast float %2466, %1763
  %2468 = fsub fast float %2412, %2440
  %2469 = fsub fast float %2413, %2441
  %2470 = fsub fast float %2414, %2442
  %2471 = fmul fast float %2455, %2468
  %2472 = fmul fast float %2455, %2469
  %2473 = fmul fast float %2455, %2470
  %2474 = fadd fast float %2471, %2440
  %2475 = fadd fast float %2472, %2441
  %2476 = fadd fast float %2473, %2442
  %2477 = fsub fast float %2427, %1766
  %2478 = fmul fast float %2450, %2477
  %2479 = fadd fast float %2478, %1766
  br label %2525

; <label>:2480                                    ; preds = %2447
  %2481 = icmp eq i32 %2445, 1
  br i1 %2481, label %2482, label %2495

; <label>:2482                                    ; preds = %2480
  %2483 = fadd fast float %2284, -1.000000e+00
  %2484 = fadd fast float %2285, -1.000000e+00
  %2485 = fadd fast float %2286, -1.000000e+00
  %2486 = fmul fast float %2450, %2483
  %2487 = fmul fast float %2450, %2484
  %2488 = fmul fast float %2450, %2485
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fadd fast float %2488, 1.000000e+00
  %2492 = fmul fast float %2489, %2437
  %2493 = fmul fast float %2490, %2438
  %2494 = fmul fast float %2491, %2439
  br label %2525

; <label>:2495                                    ; preds = %2480
  %2496 = icmp eq i32 %2445, 2
  br i1 %2496, label %2497, label %2525

; <label>:2497                                    ; preds = %2495
  %2498 = call float @dx.op.unary.f32(i32 24, float %2284)  ; Sqrt(value)
  %2499 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2500 = call float @dx.op.unary.f32(i32 24, float %2286)  ; Sqrt(value)
  %2501 = fadd fast float %2498, -5.000000e-01
  %2502 = fadd fast float %2499, -5.000000e-01
  %2503 = fadd fast float %2500, -5.000000e-01
  %2504 = fmul fast float %2501, %2450
  %2505 = fmul fast float %2502, %2450
  %2506 = fmul fast float %2503, %2450
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = fadd fast float %2505, 5.000000e-01
  %2509 = fadd fast float %2506, 5.000000e-01
  %2510 = fmul fast float %2507, 2.000000e+00
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, %2437
  %2513 = fadd fast float %2512, %2510
  %2514 = fmul fast float %2513, %2437
  %2515 = fmul fast float %2508, 2.000000e+00
  %2516 = fsub fast float 1.000000e+00, %2515
  %2517 = fmul fast float %2516, %2438
  %2518 = fadd fast float %2517, %2515
  %2519 = fmul fast float %2518, %2438
  %2520 = fmul fast float %2509, 2.000000e+00
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2521, %2439
  %2523 = fadd fast float %2522, %2520
  %2524 = fmul fast float %2523, %2439
  br label %2525

; <label>:2525                                    ; preds = %2497, %2495, %2482, %2452, %2436
  %2526 = phi float [ %2437, %2436 ], [ %2514, %2497 ], [ %2437, %2495 ], [ %2492, %2482 ], [ %2462, %2452 ]
  %2527 = phi float [ %2438, %2436 ], [ %2519, %2497 ], [ %2438, %2495 ], [ %2493, %2482 ], [ %2463, %2452 ]
  %2528 = phi float [ %2439, %2436 ], [ %2524, %2497 ], [ %2439, %2495 ], [ %2494, %2482 ], [ %2464, %2452 ]
  %2529 = phi float [ %2440, %2436 ], [ %2440, %2497 ], [ %2440, %2495 ], [ %2440, %2482 ], [ %2474, %2452 ]
  %2530 = phi float [ %2441, %2436 ], [ %2441, %2497 ], [ %2441, %2495 ], [ %2441, %2482 ], [ %2475, %2452 ]
  %2531 = phi float [ %2442, %2436 ], [ %2442, %2497 ], [ %2442, %2495 ], [ %2442, %2482 ], [ %2476, %2452 ]
  %2532 = phi float [ %1763, %2436 ], [ %1763, %2497 ], [ %1763, %2495 ], [ %1763, %2482 ], [ %2467, %2452 ]
  %2533 = phi float [ %1766, %2436 ], [ %1766, %2497 ], [ %1766, %2495 ], [ %1766, %2482 ], [ %2479, %2452 ]
  %2534 = and i32 %2444, 12
  %2535 = icmp eq i32 %2534, 12
  br i1 %2535, label %2608, label %2536

; <label>:2536                                    ; preds = %2525
  %2537 = and i32 %2444, 2097184
  %2538 = icmp eq i32 %2537, 2097184
  %2539 = select i1 %2538, float %2064, float 0.000000e+00
  %2540 = and i32 %2444, 4194336
  %2541 = icmp eq i32 %2540, 4194336
  %2542 = select i1 %2541, float %2064, float 0.000000e+00
  %2543 = and i32 %2444, 8388640
  %2544 = icmp eq i32 %2543, 8388640
  %2545 = select i1 %2544, float %2064, float 0.000000e+00
  %2546 = icmp eq i32 %2534, 0
  br i1 %2546, label %2547, label %2560

; <label>:2547                                    ; preds = %2536
  %2548 = fsub fast float %2365, %1755
  %2549 = fsub fast float %2366, %1756
  %2550 = fmul fast float %2539, %2548
  %2551 = fmul fast float %2539, %2549
  %2552 = fadd fast float %2550, %1755
  %2553 = fadd fast float %2551, %1756
  %2554 = fsub fast float %2367, %1765
  %2555 = fmul fast float %2542, %2554
  %2556 = fadd fast float %2555, %1765
  %2557 = fsub fast float %2364, %1764
  %2558 = fmul fast float %2545, %2557
  %2559 = fadd fast float %2558, %1764
  br label %2608

; <label>:2560                                    ; preds = %2536
  %2561 = icmp eq i32 %2534, 4
  br i1 %2561, label %2562, label %2594

; <label>:2562                                    ; preds = %2560
  %2563 = fmul fast float %2539, %2365
  %2564 = fmul fast float %2539, %2366
  %2565 = fadd fast float %2563, %1755
  %2566 = fadd fast float %2564, %1756
  %2567 = call float @dx.op.binary.f32(i32 36, float %1765, float %2367)  ; FMin(a,b)
  %2568 = fsub fast float %2567, %1765
  %2569 = fmul fast float %2568, %2542
  %2570 = fadd fast float %2569, %1765
  %2571 = fadd fast float %2364, %1764
  %2572 = fmul fast float %2571, 0x3FF337FAE0000000
  %2573 = fmul fast float %1764, %1764
  %2574 = fmul fast float %2364, %2364
  %2575 = fadd fast float %2574, %2573
  %2576 = fmul fast float %2575, 0x3FE5152B00000000
  %2577 = fmul fast float %1764, 0xBFCC1F85E0000000
  %2578 = fmul fast float %2577, %2364
  %2579 = fadd fast float %2578, 0xBFE1363700000000
  %2580 = fadd fast float %2579, %2572
  %2581 = fsub fast float %2580, %2576
  %2582 = fmul fast float %2571, 0x3FBA6F0D00000000
  %2583 = fmul fast float %2575, 0x3FD0432880000000
  %2584 = fmul fast float %1764, 0xBFEF110800000000
  %2585 = fmul fast float %2584, %2364
  %2586 = fadd fast float %2585, 1.000000e+00
  %2587 = fsub fast float %2586, %2582
  %2588 = fadd fast float %2587, %2583
  %2589 = fdiv fast float %2581, %2588
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2591 = fsub fast float %2590, %1764
  %2592 = fmul fast float %2591, %2545
  %2593 = fadd fast float %2592, %1764
  br label %2608

; <label>:2594                                    ; preds = %2560
  %2595 = icmp eq i32 %2534, 8
  br i1 %2595, label %2596, label %2608

; <label>:2596                                    ; preds = %2594
  %2597 = fmul fast float %2539, %2365
  %2598 = fmul fast float %2539, %2366
  %2599 = fadd fast float %2597, %1755
  %2600 = fadd fast float %2598, %1756
  %2601 = call float @dx.op.binary.f32(i32 36, float %1765, float %2367)  ; FMin(a,b)
  %2602 = fsub fast float %2601, %1765
  %2603 = fmul fast float %2602, %2542
  %2604 = fadd fast float %2603, %1765
  %2605 = fsub fast float %2364, %1764
  %2606 = fmul fast float %2545, %2605
  %2607 = fadd fast float %2606, %1764
  br label %2608

; <label>:2608                                    ; preds = %2596, %2594, %2562, %2547, %2525, %2063, %1767, %1754
  %2609 = phi float [ %1755, %2525 ], [ %1755, %2063 ], [ %1755, %1754 ], [ %2599, %2596 ], [ %1755, %2594 ], [ %2565, %2562 ], [ %2552, %2547 ], [ %1755, %1767 ]
  %2610 = phi float [ %1756, %2525 ], [ %1756, %2063 ], [ %1756, %1754 ], [ %2600, %2596 ], [ %1756, %2594 ], [ %2566, %2562 ], [ %2553, %2547 ], [ %1756, %1767 ]
  %2611 = phi float [ %2526, %2525 ], [ %1757, %2063 ], [ %1757, %1754 ], [ %2526, %2596 ], [ %2526, %2594 ], [ %2526, %2562 ], [ %2526, %2547 ], [ %1757, %1767 ]
  %2612 = phi float [ %2527, %2525 ], [ %1758, %2063 ], [ %1758, %1754 ], [ %2527, %2596 ], [ %2527, %2594 ], [ %2527, %2562 ], [ %2527, %2547 ], [ %1758, %1767 ]
  %2613 = phi float [ %2528, %2525 ], [ %1759, %2063 ], [ %1759, %1754 ], [ %2528, %2596 ], [ %2528, %2594 ], [ %2528, %2562 ], [ %2528, %2547 ], [ %1759, %1767 ]
  %2614 = phi float [ %2529, %2525 ], [ %1760, %2063 ], [ %1760, %1754 ], [ %2529, %2596 ], [ %2529, %2594 ], [ %2529, %2562 ], [ %2529, %2547 ], [ %1760, %1767 ]
  %2615 = phi float [ %2530, %2525 ], [ %1761, %2063 ], [ %1761, %1754 ], [ %2530, %2596 ], [ %2530, %2594 ], [ %2530, %2562 ], [ %2530, %2547 ], [ %1761, %1767 ]
  %2616 = phi float [ %2531, %2525 ], [ %1762, %2063 ], [ %1762, %1754 ], [ %2531, %2596 ], [ %2531, %2594 ], [ %2531, %2562 ], [ %2531, %2547 ], [ %1762, %1767 ]
  %2617 = phi float [ %2532, %2525 ], [ %1763, %2063 ], [ %1763, %1754 ], [ %2532, %2596 ], [ %2532, %2594 ], [ %2532, %2562 ], [ %2532, %2547 ], [ %1763, %1767 ]
  %2618 = phi float [ %1764, %2525 ], [ %1764, %2063 ], [ %1764, %1754 ], [ %2607, %2596 ], [ %1764, %2594 ], [ %2593, %2562 ], [ %2559, %2547 ], [ %1764, %1767 ]
  %2619 = phi float [ %1765, %2525 ], [ %1765, %2063 ], [ %1765, %1754 ], [ %2604, %2596 ], [ %1765, %2594 ], [ %2570, %2562 ], [ %2556, %2547 ], [ %1765, %1767 ]
  %2620 = phi float [ %2533, %2525 ], [ %1766, %2063 ], [ %1766, %1754 ], [ %2533, %2596 ], [ %2533, %2594 ], [ %2533, %2562 ], [ %2533, %2547 ], [ %1766, %1767 ]
  br i1 %381, label %3462, label %2621

; <label>:2621                                    ; preds = %2608
  %2622 = icmp ult i32 %432, 4
  %2623 = add i32 %33, 72
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = add i32 %33, 76
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = or i32 %2628, %2625
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %3462, label %2631

; <label>:2631                                    ; preds = %2621
  %2632 = and i32 %2625, 262144
  %2633 = icmp ne i32 %2632, 0
  %2634 = select i1 %2633, float %35, float 1.000000e+00
  %2635 = select i1 %2633, float %36, float 0.000000e+00
  %2636 = select i1 %2633, float %37, float 0.000000e+00
  %2637 = select i1 %2633, float %38, float 1.000000e+00
  %2638 = select i1 %2633, float %39, float %55
  %2639 = select i1 %2633, float %40, float %56
  %2640 = add i32 %33, 332
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 16
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = fmul fast float %2644, 0x3F50624DE0000000
  %2646 = add i32 %33, 136
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = lshr i32 %2648, 16
  %2650 = and i32 %2649, 255
  %2651 = lshr i32 %2648, 24
  %2652 = add i32 %33, 340
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 65535
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = lshr i32 %2654, 16
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = add i32 %33, 80
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = lshr i32 %2661, 22
  %2663 = shl nuw nsw i32 %2662, 5
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = shl i32 %2661, 4
  %2666 = and i32 %2665, 32752
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = lshr i32 %2661, 7
  %2669 = and i32 %2668, 32752
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2673 = fmul fast float %2672, 1.000000e+03
  %2674 = fmul fast float %371, %2673
  %2675 = call float @dx.op.unary.f32(i32 22, float %2674)  ; Frc(value)
  %2676 = fadd fast float %2675, %361
  %2677 = fmul fast float %372, %2673
  %2678 = call float @dx.op.unary.f32(i32 22, float %2677)  ; Frc(value)
  %2679 = fadd fast float %2678, %363
  %2680 = fmul fast float %2645, %2673
  %2681 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2682 = fmul fast float %2681, 0x401921FB60000000
  %2683 = fadd fast float %2682, %2664
  %2684 = call float @dx.op.unary.f32(i32 13, float %2683)  ; Sin(value)
  %2685 = call float @dx.op.unary.f32(i32 12, float %2683)  ; Cos(value)
  %2686 = fsub fast float -0.000000e+00, %2684
  %2687 = fadd fast float %2638, -5.000000e-01
  %2688 = fadd fast float %2639, -5.000000e-01
  %2689 = fmul fast float %2656, %2687
  %2690 = fmul fast float %2658, %2688
  %2691 = fadd fast float %2689, 5.000000e-01
  %2692 = fadd fast float %2690, 5.000000e-01
  %2693 = fmul fast float %2667, %2691
  %2694 = fmul fast float %2670, %2692
  %2695 = fmul fast float %2685, %2693
  %2696 = call float @dx.op.tertiary.f32(i32 46, float %2686, float %2694, float %2695)  ; FMad(a,b,c)
  %2697 = fmul fast float %2684, %2693
  %2698 = call float @dx.op.tertiary.f32(i32 46, float %2685, float %2694, float %2697)  ; FMad(a,b,c)
  %2699 = fadd fast float %2676, %2696
  %2700 = fadd fast float %2679, %2698
  %2701 = icmp ugt i32 %2650, 1
  %2702 = icmp ugt i32 %2648, 33554431
  %2703 = or i1 %2702, %2701
  br i1 %2703, label %2704, label %2729

; <label>:2704                                    ; preds = %2631
  %2705 = add i32 %33, 276
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = lshr i32 %2707, 16
  %2709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2708)  ; LegacyF16ToF32(value)
  %2710 = fmul fast float %2672, %2709
  %2711 = call float @dx.op.unary.f32(i32 22, float %2710)  ; Frc(value)
  %2712 = mul nuw nsw i32 %2650, %2651
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2711, %2713
  %2715 = call float @dx.op.unary.f32(i32 27, float %2714)  ; Round_ni(value)
  %2716 = fptoui float %2715 to i32
  %2717 = urem i32 %2716, %2650
  %2718 = udiv i32 %2716, %2651
  %2719 = call float @dx.op.unary.f32(i32 22, float %2699)  ; Frc(value)
  %2720 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2721 = uitofp i32 %2717 to float
  %2722 = uitofp i32 %2718 to float
  %2723 = fadd fast float %2719, %2721
  %2724 = fadd fast float %2720, %2722
  %2725 = uitofp i32 %2650 to float
  %2726 = uitofp i32 %2651 to float
  %2727 = fdiv fast float %2723, %2725
  %2728 = fdiv fast float %2724, %2726
  br label %2729

; <label>:2729                                    ; preds = %2704, %2631
  %2730 = phi float [ %2727, %2704 ], [ %2699, %2631 ]
  %2731 = phi float [ %2728, %2704 ], [ %2700, %2631 ]
  %2732 = and i32 %2625, 16777216
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2843, label %2734

; <label>:2734                                    ; preds = %2729
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2739 = fadd fast float %2736, %130
  %2740 = fadd fast float %2737, %131
  %2741 = fadd fast float %2738, %132
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = icmp eq i32 %34, 65535
  br i1 %2745, label %2840, label %2746

; <label>:2746                                    ; preds = %2734
  %2747 = lshr i32 %34, 1
  %2748 = shl i32 %2747, 2
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %34, 1
  %2752 = icmp ne i32 %2751, 0
  %2753 = lshr i32 %2750, 16
  %2754 = and i32 %2750, 65535
  %2755 = select i1 %2752, i32 %2753, i32 %2754
  %2756 = icmp eq i32 %2755, 65535
  br i1 %2756, label %2836, label %2757

; <label>:2757                                    ; preds = %2746
  %2758 = mul nuw nsw i32 %2755, 40
  %2759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = add nuw nsw i32 %2758, 12
  %2764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = add nuw nsw i32 %2758, 24
  %2769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = add nuw nsw i32 %2758, 36
  %2774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2776 = fsub fast float %2739, %2760
  %2777 = fsub fast float %2740, %2761
  %2778 = fsub fast float %2741, %2762
  %2779 = fmul fast float %2775, %2776
  %2780 = fmul fast float %2775, %2777
  %2781 = fmul fast float %2775, %2778
  %2782 = call float @dx.op.unary.f32(i32 27, float %2779)  ; Round_ni(value)
  %2783 = call float @dx.op.unary.f32(i32 27, float %2780)  ; Round_ni(value)
  %2784 = call float @dx.op.unary.f32(i32 27, float %2781)  ; Round_ni(value)
  %2785 = fadd fast float %2782, 5.000000e-01
  %2786 = fadd fast float %2783, 5.000000e-01
  %2787 = fadd fast float %2784, 5.000000e-01
  %2788 = fmul fast float %2785, %2765
  %2789 = fmul fast float %2786, %2766
  %2790 = fmul fast float %2787, %2767
  %2791 = shl i32 %34, 2
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = add i32 %2793, 0
  %2795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2796 = call float @dx.op.unary.f32(i32 22, float %2788)  ; Frc(value)
  %2797 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2798 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2795, %dx.types.Handle %30, float %2796, float %2797, float %2798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.ResRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.ResRet.f32 %2799, 2
  %2803 = fmul fast float %2800, 1.023000e+03
  %2804 = fmul fast float %2801, 1.023000e+03
  %2805 = fmul fast float %2802, 1.023000e+03
  %2806 = fadd fast float %2803, 5.000000e-01
  %2807 = fadd fast float %2804, 5.000000e-01
  %2808 = fadd fast float %2805, 5.000000e-01
  %2809 = call float @dx.op.unary.f32(i32 27, float %2806)  ; Round_ni(value)
  %2810 = call float @dx.op.unary.f32(i32 27, float %2807)  ; Round_ni(value)
  %2811 = call float @dx.op.unary.f32(i32 27, float %2808)  ; Round_ni(value)
  %2812 = fsub fast float %2779, %2782
  %2813 = fsub fast float %2780, %2783
  %2814 = fsub fast float %2781, %2784
  %2815 = fmul fast float %2812, 7.500000e-01
  %2816 = fmul fast float %2813, 7.500000e-01
  %2817 = fmul fast float %2814, 7.500000e-01
  %2818 = fadd fast float %2782, 1.250000e-01
  %2819 = fadd fast float %2818, %2815
  %2820 = fadd fast float %2819, %2809
  %2821 = fadd fast float %2783, 1.250000e-01
  %2822 = fadd fast float %2821, %2816
  %2823 = fadd fast float %2822, %2810
  %2824 = fadd fast float %2784, 1.250000e-01
  %2825 = fadd fast float %2824, %2817
  %2826 = fadd fast float %2825, %2811
  %2827 = fmul fast float %2820, %2770
  %2828 = fmul fast float %2823, %2771
  %2829 = fmul fast float %2826, %2772
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = add i32 %2831, 0
  %2833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2832, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2833, %dx.types.Handle %28, float %2827, float %2828, float %2829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2835 = extractvalue %dx.types.ResRet.f32 %2834, 0
  br label %2836

; <label>:2836                                    ; preds = %2757, %2746
  %2837 = phi float [ %2835, %2757 ], [ -1.000000e+00, %2746 ]
  %2838 = fadd fast float %2837, %2744
  %2839 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  br label %2840

; <label>:2840                                    ; preds = %2836, %2734
  %2841 = phi float [ %2839, %2836 ], [ %2744, %2734 ]
  %2842 = fmul fast float %2841, %427
  br label %2843

; <label>:2843                                    ; preds = %2840, %2729
  %2844 = phi float [ %2842, %2840 ], [ %427, %2729 ]
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = and i32 %2846, 256
  %2848 = icmp eq i32 %2847, 0
  br i1 %2848, label %2895, label %2849

; <label>:2849                                    ; preds = %2843
  %2850 = add i32 %33, 484
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = add i32 %2852, 0
  %2854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2854, %dx.types.Handle %64, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = add i32 %33, 148
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = shl i32 %2859, 4
  %2861 = and i32 %2860, 32752
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = lshr i32 %2859, 7
  %2864 = and i32 %2863, 32752
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = fsub fast float 1.000000e+00, %2844
  %2867 = call float @dx.op.binary.f32(i32 35, float %2866, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2868 = bitcast float %2844 to i32
  %2869 = sitofp i32 %2868 to float
  %2870 = fadd fast float %2869, 0xC1CFBF8940000000
  %2871 = fmul fast float %2865, %2870
  %2872 = fadd fast float %2871, 0x41CFBF8940000000
  %2873 = fptosi float %2872 to i32
  %2874 = bitcast i32 %2873 to float
  %2875 = bitcast float %2867 to i32
  %2876 = sitofp i32 %2875 to float
  %2877 = fadd fast float %2876, 0xC1CFBF8940000000
  %2878 = fmul fast float %2877, %2865
  %2879 = fadd fast float %2878, 0x41CFBF8940000000
  %2880 = fptosi float %2879 to i32
  %2881 = bitcast i32 %2880 to float
  %2882 = fmul fast float %2874, %2862
  %2883 = fmul fast float %2881, %2862
  %2884 = fsub fast float %2867, %2882
  %2885 = fadd fast float %2883, %2867
  %2886 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2887 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2888 = fsub fast float %2856, %2886
  %2889 = fsub fast float %2887, %2886
  %2890 = bitcast float %2889 to i32
  %2891 = sub nsw i32 2129859010, %2890
  %2892 = bitcast i32 %2891 to float
  %2893 = fmul fast float %2892, %2888
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  br label %2895

; <label>:2895                                    ; preds = %2849, %2843
  %2896 = phi float [ %2894, %2849 ], [ %2844, %2843 ]
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = and i32 %2898, 128
  %2900 = icmp eq i32 %2899, 0
  br i1 %2900, label %2917, label %2901

; <label>:2901                                    ; preds = %2895
  %2902 = add i32 %33, 468
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = add i32 %2904, 0
  %2906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2906, %dx.types.Handle %64, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2908 = extractvalue %dx.types.ResRet.f32 %2907, 0
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 524288
  %2912 = icmp ne i32 %2911, 0
  %2913 = fcmp fast ogt float %2908, 0x3FE0101020000000
  %2914 = select i1 %2913, float 1.000000e+00, float 0.000000e+00
  %2915 = select i1 %2912, float %2914, float %2908
  %2916 = fmul fast float %2915, %2896
  br label %2917

; <label>:2917                                    ; preds = %2901, %2895
  %2918 = phi float [ %2916, %2901 ], [ %2896, %2895 ]
  %2919 = fcmp fast ult float %2918, 0x3F70101020000000
  br i1 %2919, label %3462, label %2920

; <label>:2920                                    ; preds = %2917
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 16
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %3123, label %2925

; <label>:2925                                    ; preds = %2920
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %33, 420
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = add i32 %2930, 0
  %2932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2932, %dx.types.Handle %63, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.ResRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.ResRet.f32 %2933, 2
  %2937 = extractvalue %dx.types.ResRet.f32 %2933, 3
  %2938 = and i32 %2927, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = lshr i32 %2927, 8
  %2941 = and i32 %2940, 255
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2937, %2939
  %2944 = fadd fast float %2943, %2942
  %2945 = fmul fast float %2944, 0x3F70101000000000
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 512
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2958, label %2950

; <label>:2950                                    ; preds = %2925
  %2951 = add i32 %33, 500
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = add i32 %2953, 0
  %2955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2955, %dx.types.Handle %64, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  br label %2958

; <label>:2958                                    ; preds = %2950, %2925
  %2959 = phi float [ %2957, %2950 ], [ 1.000000e+00, %2925 ]
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 33554432
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3070, label %2964

; <label>:2964                                    ; preds = %2958
  %2965 = add i32 %33, 272
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 65535
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = lshr i32 %2967, 16
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = add i32 %33, 276
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 65535
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = lshr i32 %2978, 24
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = and i32 %2978, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = lshr i32 %2978, 8
  %2986 = and i32 %2985, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2978, 16
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = add i32 %33, 268
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = lshr i32 %2995, 24
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = and i32 %2995, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2995, 8
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %2995, 16
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = bitcast float %2934 to i32
  %3011 = ashr i32 %3010, 1
  %3012 = sub nsw i32 1597463174, %3011
  %3013 = bitcast i32 %3012 to float
  %3014 = fmul fast float %2934, 5.000000e-01
  %3015 = fmul fast float %3013, %3013
  %3016 = fmul fast float %3015, %3014
  %3017 = fsub fast float 1.500000e+00, %3016
  %3018 = fmul fast float %3013, %2934
  %3019 = fmul fast float %3018, %3017
  %3020 = bitcast float %2935 to i32
  %3021 = ashr i32 %3020, 1
  %3022 = sub nsw i32 1597463174, %3021
  %3023 = bitcast i32 %3022 to float
  %3024 = fmul fast float %2935, 5.000000e-01
  %3025 = fmul fast float %3023, %3023
  %3026 = fmul fast float %3025, %3024
  %3027 = fsub fast float 1.500000e+00, %3026
  %3028 = fmul fast float %3023, %2935
  %3029 = fmul fast float %3028, %3027
  %3030 = bitcast float %2936 to i32
  %3031 = ashr i32 %3030, 1
  %3032 = sub nsw i32 1597463174, %3031
  %3033 = bitcast i32 %3032 to float
  %3034 = fmul fast float %2936, 5.000000e-01
  %3035 = fmul fast float %3033, %3033
  %3036 = fmul fast float %3035, %3034
  %3037 = fsub fast float 1.500000e+00, %3036
  %3038 = fmul fast float %3033, %2936
  %3039 = fmul fast float %3038, %3037
  %3040 = fsub fast float %3019, %3001
  %3041 = fsub fast float %3029, %3005
  %3042 = fsub fast float %3039, %3009
  %3043 = fmul fast float %3040, %2969
  %3044 = fmul fast float %3041, %2971
  %3045 = fmul fast float %3042, %2976
  %3046 = fadd fast float %3043, %2984
  %3047 = fadd fast float %3044, %2988
  %3048 = fadd fast float %3045, %2992
  %3049 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = fmul fast float %3049, %3049
  %3053 = fmul fast float %3050, %3050
  %3054 = fmul fast float %3051, %3051
  %3055 = fsub fast float %3052, %2934
  %3056 = fsub fast float %3053, %2935
  %3057 = fsub fast float %3054, %2936
  %3058 = fmul fast float %3055, %2959
  %3059 = fmul fast float %3056, %2959
  %3060 = fmul fast float %3057, %2959
  %3061 = fadd fast float %3058, %2934
  %3062 = fadd fast float %3059, %2935
  %3063 = fadd fast float %3060, %2936
  %3064 = fadd fast float %2981, %2945
  %3065 = fsub fast float %3064, %2998
  %3066 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3067 = fsub fast float %3066, %2945
  %3068 = fmul fast float %3067, %2959
  %3069 = fadd fast float %3068, %2945
  br label %3123

; <label>:3070                                    ; preds = %2958
  %3071 = and i32 %2961, 134217728
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3107, label %3073

; <label>:3073                                    ; preds = %3070
  %3074 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3076 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %3077 = fadd fast float %3074, -5.000000e-01
  %3078 = fadd fast float %3075, -5.000000e-01
  %3079 = fadd fast float %3076, -5.000000e-01
  %3080 = fmul fast float %3077, %2959
  %3081 = fmul fast float %3078, %2959
  %3082 = fmul fast float %3079, %2959
  %3083 = fadd fast float %3080, 5.000000e-01
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %3087 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3088 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %3089 = fmul fast float %3083, 2.000000e+00
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3090, %3086
  %3092 = fadd fast float %3091, %3089
  %3093 = fmul fast float %3092, %3086
  %3094 = fmul fast float %3084, 2.000000e+00
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = fmul fast float %3095, %3087
  %3097 = fadd fast float %3096, %3094
  %3098 = fmul fast float %3097, %3087
  %3099 = fmul fast float %3085, 2.000000e+00
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = fmul fast float %3100, %3088
  %3102 = fadd fast float %3101, %3099
  %3103 = fmul fast float %3102, %3088
  %3104 = fmul fast float %3093, %3093
  %3105 = fmul fast float %3098, %3098
  %3106 = fmul fast float %3103, %3103
  br label %3123

; <label>:3107                                    ; preds = %3070
  %3108 = fmul fast float %348, %348
  %3109 = fmul fast float %352, %352
  %3110 = fmul fast float %356, %356
  %3111 = fadd fast float %3108, -1.000000e+00
  %3112 = fadd fast float %3109, -1.000000e+00
  %3113 = fadd fast float %3110, -1.000000e+00
  %3114 = fmul fast float %2959, %3111
  %3115 = fmul fast float %2959, %3112
  %3116 = fmul fast float %2959, %3113
  %3117 = fadd fast float %3114, 1.000000e+00
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fmul fast float %3117, %2934
  %3121 = fmul fast float %3118, %2935
  %3122 = fmul fast float %3119, %2936
  br label %3123

; <label>:3123                                    ; preds = %3107, %3073, %2964, %2920
  %3124 = phi float [ %3069, %2964 ], [ %2945, %3073 ], [ %2945, %3107 ], [ 0x3FA23C0BE0000000, %2920 ]
  %3125 = phi float [ %3061, %2964 ], [ %3104, %3073 ], [ %3120, %3107 ], [ 1.000000e+00, %2920 ]
  %3126 = phi float [ %3062, %2964 ], [ %3105, %3073 ], [ %3121, %3107 ], [ 1.000000e+00, %2920 ]
  %3127 = phi float [ %3063, %2964 ], [ %3106, %3073 ], [ %3122, %3107 ], [ 1.000000e+00, %2920 ]
  %3128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.i32 %3128, 1
  %3130 = and i32 %3129, 1
  %3131 = icmp ne i32 %3130, 0
  %3132 = add i32 %33, 356
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 32
  %3136 = icmp ne i32 %3135, 0
  %3137 = and i1 %3131, %3136
  %3138 = select i1 %3137, float 1.000000e+00, float %3125
  %3139 = select i1 %3137, float 0x3FD3333340000000, float %3126
  %3140 = select i1 %3137, float 0x3FD3333340000000, float %3127
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 32
  %3144 = icmp eq i32 %3143, 0
  br i1 %3144, label %3217, label %3145

; <label>:3145                                    ; preds = %3123
  %3146 = add i32 %33, 140
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %33, 436
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %63, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.ResRet.f32 %3154, 2
  %3158 = extractvalue %dx.types.ResRet.f32 %3154, 3
  %3159 = and i32 %3148, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3148, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = lshr i32 %3148, 16
  %3165 = and i32 %3164, 255
  %3166 = uitofp i32 %3165 to float
  %3167 = fmul fast float %3166, 0x3F70101000000000
  %3168 = fmul fast float %3155, %3160
  %3169 = fadd fast float %3168, %3163
  %3170 = fmul fast float %3169, 0x3F70101000000000
  %3171 = fadd fast float %3156, -5.000000e-01
  %3172 = fadd fast float %3158, -5.000000e-01
  %3173 = fmul fast float %3171, %3167
  %3174 = fmul fast float %3172, %3167
  %3175 = fadd fast float %3173, 5.000000e-01
  %3176 = fadd fast float %3174, 5.000000e-01
  %3177 = fmul fast float %3175, 2.000000e+00
  %3178 = fadd fast float %3177, -1.000000e+00
  %3179 = fmul fast float %3176, 2.000000e+00
  %3180 = fadd fast float %3179, -1.000000e+00
  %3181 = fadd fast float %3178, %3180
  %3182 = fmul fast float %3181, 5.000000e-01
  %3183 = fsub fast float %3178, %3180
  %3184 = fmul fast float %3183, 5.000000e-01
  %3185 = call float @dx.op.unary.f32(i32 6, float %3182)  ; FAbs(value)
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = call float @dx.op.unary.f32(i32 6, float %3184)  ; FAbs(value)
  %3188 = fsub fast float %3186, %3187
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3184, float %3188, float %3182, float %3184, float %3188)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = call float @dx.op.unary.f32(i32 25, float %3189)  ; Rsqrt(value)
  %3191 = fmul fast float %3182, %3190
  %3192 = fmul fast float %3184, %3190
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, 67108864
  %3196 = icmp eq i32 %3195, 0
  br i1 %3196, label %3213, label %3197

; <label>:3197                                    ; preds = %3145
  %3198 = add i32 %33, 328
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 65535
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 65535
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = lshr i32 %3200, 16
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = fsub fast float %3170, %3208
  %3210 = fmul fast float %3209, %3202
  %3211 = fadd fast float %3210, %3206
  %3212 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  br label %3213

; <label>:3213                                    ; preds = %3197, %3145
  %3214 = phi float [ %3212, %3197 ], [ %3170, %3145 ]
  %3215 = call float @dx.op.dot2.f32(i32 54, float %3191, float %3192, float %2634, float %2635)  ; Dot2(ax,ay,bx,by)
  %3216 = call float @dx.op.dot2.f32(i32 54, float %3191, float %3192, float %2636, float %2637)  ; Dot2(ax,ay,bx,by)
  br label %3217

; <label>:3217                                    ; preds = %3213, %3123
  %3218 = phi float [ %3214, %3213 ], [ 0x3FD6666660000000, %3123 ]
  %3219 = phi float [ %3215, %3213 ], [ 0.000000e+00, %3123 ]
  %3220 = phi float [ %3216, %3213 ], [ 0.000000e+00, %3123 ]
  %3221 = phi float [ %3157, %3213 ], [ 1.000000e+00, %3123 ]
  %3222 = add i32 %33, 208
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = lshr i32 %3224, 22
  %3226 = shl nuw nsw i32 %3225, 5
  %3227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3226)  ; LegacyF16ToF32(value)
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = and i32 %3229, 64
  %3231 = icmp eq i32 %3230, 0
  br i1 %3231, label %3265, label %3232

; <label>:3232                                    ; preds = %3217
  %3233 = add i32 %33, 452
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = add i32 %3235, 0
  %3237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 131072
  %3241 = icmp eq i32 %3240, 0
  %3242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3237, %dx.types.Handle %63, float %2730, float %2731, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.ResRet.f32 %3242, 1
  %3245 = extractvalue %dx.types.ResRet.f32 %3242, 2
  %3246 = fmul fast float %3243, %336
  %3247 = fmul fast float %3244, %339
  %3248 = fmul fast float %3245, %342
  br i1 %3241, label %3255, label %3249

; <label>:3249                                    ; preds = %3232
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = fmul fast float %3251, %3246
  %3253 = fmul fast float %3251, %3247
  %3254 = fmul fast float %3251, %3248
  br label %3255

; <label>:3255                                    ; preds = %3249, %3232
  %3256 = phi float [ %3252, %3249 ], [ %3246, %3232 ]
  %3257 = phi float [ %3253, %3249 ], [ %3247, %3232 ]
  %3258 = phi float [ %3254, %3249 ], [ %3248, %3232 ]
  %3259 = fmul fast float %3256, %3227
  %3260 = select i1 %204, float %3259, float %3256
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3260, float %3257, float %3258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = select i1 %204, float 0.000000e+00, float %3256
  %3263 = select i1 %204, float %3261, float %3257
  %3264 = select i1 %204, float 0.000000e+00, float %3258
  br label %3265

; <label>:3265                                    ; preds = %3255, %3217
  %3266 = phi float [ %3262, %3255 ], [ 0.000000e+00, %3217 ]
  %3267 = phi float [ %3263, %3255 ], [ 0.000000e+00, %3217 ]
  %3268 = phi float [ %3264, %3255 ], [ 0.000000e+00, %3217 ]
  %3269 = add i32 %33, 144
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = lshr i32 %3271, 8
  %3275 = and i32 %3274, 255
  %3276 = uitofp i32 %3275 to float
  %3277 = call float @dx.op.dot3.f32(i32 55, float %3138, float %3139, float %3140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3278 = fmul fast float %3276, %3277
  %3279 = fadd fast float %3278, %3273
  %3280 = fmul fast float %3279, 0x3F70101020000000
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  br i1 %2622, label %3282, label %3290

; <label>:3282                                    ; preds = %3265
  %3283 = fsub fast float 1.000000e+00, %2918
  %3284 = fmul fast float %3283, %2611
  %3285 = fmul fast float %3283, %2612
  %3286 = fmul fast float %3283, %2613
  %3287 = fmul fast float %3283, %2614
  %3288 = fmul fast float %3283, %2615
  %3289 = fmul fast float %3283, %2616
  br label %3290

; <label>:3290                                    ; preds = %3282, %3265
  %3291 = phi float [ %3284, %3282 ], [ %2611, %3265 ]
  %3292 = phi float [ %3285, %3282 ], [ %2612, %3265 ]
  %3293 = phi float [ %3286, %3282 ], [ %2613, %3265 ]
  %3294 = phi float [ %3287, %3282 ], [ %2614, %3265 ]
  %3295 = phi float [ %3288, %3282 ], [ %2615, %3265 ]
  %3296 = phi float [ %3289, %3282 ], [ %2616, %3265 ]
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 3
  %3300 = icmp eq i32 %3299, 3
  br i1 %3300, label %3379, label %3301

; <label>:3301                                    ; preds = %3290
  %3302 = and i32 %3298, 16
  %3303 = icmp ne i32 %3302, 0
  %3304 = select i1 %3303, float %2918, float 0.000000e+00
  %3305 = icmp eq i32 %3299, 0
  br i1 %3305, label %3306, label %3334

; <label>:3306                                    ; preds = %3301
  %3307 = and i32 %3298, 64
  %3308 = icmp ne i32 %3307, 0
  %3309 = select i1 %3308, float %2918, float 0.000000e+00
  %3310 = fsub fast float %3138, %3291
  %3311 = fsub fast float %3139, %3292
  %3312 = fsub fast float %3140, %3293
  %3313 = fmul fast float %3304, %3310
  %3314 = fmul fast float %3304, %3311
  %3315 = fmul fast float %3304, %3312
  %3316 = fadd fast float %3313, %3291
  %3317 = fadd fast float %3314, %3292
  %3318 = fadd fast float %3315, %3293
  %3319 = fsub fast float %3124, %2617
  %3320 = fmul fast float %3304, %3319
  %3321 = fadd fast float %3320, %2617
  %3322 = fsub fast float %3266, %3294
  %3323 = fsub fast float %3267, %3295
  %3324 = fsub fast float %3268, %3296
  %3325 = fmul fast float %3309, %3322
  %3326 = fmul fast float %3309, %3323
  %3327 = fmul fast float %3309, %3324
  %3328 = fadd fast float %3325, %3294
  %3329 = fadd fast float %3326, %3295
  %3330 = fadd fast float %3327, %3296
  %3331 = fsub fast float %3281, %2620
  %3332 = fmul fast float %3304, %3331
  %3333 = fadd fast float %3332, %2620
  br label %3379

; <label>:3334                                    ; preds = %3301
  %3335 = icmp eq i32 %3299, 1
  br i1 %3335, label %3336, label %3349

; <label>:3336                                    ; preds = %3334
  %3337 = fadd fast float %3138, -1.000000e+00
  %3338 = fadd fast float %3139, -1.000000e+00
  %3339 = fadd fast float %3140, -1.000000e+00
  %3340 = fmul fast float %3304, %3337
  %3341 = fmul fast float %3304, %3338
  %3342 = fmul fast float %3304, %3339
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fmul fast float %3343, %3291
  %3347 = fmul fast float %3344, %3292
  %3348 = fmul fast float %3345, %3293
  br label %3379

; <label>:3349                                    ; preds = %3334
  %3350 = icmp eq i32 %3299, 2
  br i1 %3350, label %3351, label %3379

; <label>:3351                                    ; preds = %3349
  %3352 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3355 = fadd fast float %3352, -5.000000e-01
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fmul fast float %3355, %3304
  %3359 = fmul fast float %3356, %3304
  %3360 = fmul fast float %3357, %3304
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fmul fast float %3361, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3291
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3291
  %3369 = fmul fast float %3362, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3292
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3292
  %3374 = fmul fast float %3363, 2.000000e+00
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3375, %3293
  %3377 = fadd fast float %3376, %3374
  %3378 = fmul fast float %3377, %3293
  br label %3379

; <label>:3379                                    ; preds = %3351, %3349, %3336, %3306, %3290
  %3380 = phi float [ %3291, %3290 ], [ %3368, %3351 ], [ %3291, %3349 ], [ %3346, %3336 ], [ %3316, %3306 ]
  %3381 = phi float [ %3292, %3290 ], [ %3373, %3351 ], [ %3292, %3349 ], [ %3347, %3336 ], [ %3317, %3306 ]
  %3382 = phi float [ %3293, %3290 ], [ %3378, %3351 ], [ %3293, %3349 ], [ %3348, %3336 ], [ %3318, %3306 ]
  %3383 = phi float [ %3294, %3290 ], [ %3294, %3351 ], [ %3294, %3349 ], [ %3294, %3336 ], [ %3328, %3306 ]
  %3384 = phi float [ %3295, %3290 ], [ %3295, %3351 ], [ %3295, %3349 ], [ %3295, %3336 ], [ %3329, %3306 ]
  %3385 = phi float [ %3296, %3290 ], [ %3296, %3351 ], [ %3296, %3349 ], [ %3296, %3336 ], [ %3330, %3306 ]
  %3386 = phi float [ %2617, %3290 ], [ %2617, %3351 ], [ %2617, %3349 ], [ %2617, %3336 ], [ %3321, %3306 ]
  %3387 = phi float [ %2620, %3290 ], [ %2620, %3351 ], [ %2620, %3349 ], [ %2620, %3336 ], [ %3333, %3306 ]
  %3388 = and i32 %3298, 12
  %3389 = icmp eq i32 %3388, 12
  br i1 %3389, label %3462, label %3390

; <label>:3390                                    ; preds = %3379
  %3391 = and i32 %3298, 2097184
  %3392 = icmp eq i32 %3391, 2097184
  %3393 = select i1 %3392, float %2918, float 0.000000e+00
  %3394 = and i32 %3298, 4194336
  %3395 = icmp eq i32 %3394, 4194336
  %3396 = select i1 %3395, float %2918, float 0.000000e+00
  %3397 = and i32 %3298, 8388640
  %3398 = icmp eq i32 %3397, 8388640
  %3399 = select i1 %3398, float %2918, float 0.000000e+00
  %3400 = icmp eq i32 %3388, 0
  br i1 %3400, label %3401, label %3414

; <label>:3401                                    ; preds = %3390
  %3402 = fsub fast float %3219, %2609
  %3403 = fsub fast float %3220, %2610
  %3404 = fmul fast float %3393, %3402
  %3405 = fmul fast float %3393, %3403
  %3406 = fadd fast float %3404, %2609
  %3407 = fadd fast float %3405, %2610
  %3408 = fsub fast float %3221, %2619
  %3409 = fmul fast float %3396, %3408
  %3410 = fadd fast float %3409, %2619
  %3411 = fsub fast float %3218, %2618
  %3412 = fmul fast float %3399, %3411
  %3413 = fadd fast float %3412, %2618
  br label %3462

; <label>:3414                                    ; preds = %3390
  %3415 = icmp eq i32 %3388, 4
  br i1 %3415, label %3416, label %3448

; <label>:3416                                    ; preds = %3414
  %3417 = fmul fast float %3393, %3219
  %3418 = fmul fast float %3393, %3220
  %3419 = fadd fast float %3417, %2609
  %3420 = fadd fast float %3418, %2610
  %3421 = call float @dx.op.binary.f32(i32 36, float %2619, float %3221)  ; FMin(a,b)
  %3422 = fsub fast float %3421, %2619
  %3423 = fmul fast float %3422, %3396
  %3424 = fadd fast float %3423, %2619
  %3425 = fadd fast float %3218, %2618
  %3426 = fmul fast float %3425, 0x3FF337FAE0000000
  %3427 = fmul fast float %2618, %2618
  %3428 = fmul fast float %3218, %3218
  %3429 = fadd fast float %3428, %3427
  %3430 = fmul fast float %3429, 0x3FE5152B00000000
  %3431 = fmul fast float %2618, 0xBFCC1F85E0000000
  %3432 = fmul fast float %3431, %3218
  %3433 = fadd fast float %3432, 0xBFE1363700000000
  %3434 = fadd fast float %3433, %3426
  %3435 = fsub fast float %3434, %3430
  %3436 = fmul fast float %3425, 0x3FBA6F0D00000000
  %3437 = fmul fast float %3429, 0x3FD0432880000000
  %3438 = fmul fast float %2618, 0xBFEF110800000000
  %3439 = fmul fast float %3438, %3218
  %3440 = fadd fast float %3439, 1.000000e+00
  %3441 = fsub fast float %3440, %3436
  %3442 = fadd fast float %3441, %3437
  %3443 = fdiv fast float %3435, %3442
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fsub fast float %3444, %2618
  %3446 = fmul fast float %3445, %3399
  %3447 = fadd fast float %3446, %2618
  br label %3462

; <label>:3448                                    ; preds = %3414
  %3449 = icmp eq i32 %3388, 8
  br i1 %3449, label %3450, label %3462

; <label>:3450                                    ; preds = %3448
  %3451 = fmul fast float %3393, %3219
  %3452 = fmul fast float %3393, %3220
  %3453 = fadd fast float %3451, %2609
  %3454 = fadd fast float %3452, %2610
  %3455 = call float @dx.op.binary.f32(i32 36, float %2619, float %3221)  ; FMin(a,b)
  %3456 = fsub fast float %3455, %2619
  %3457 = fmul fast float %3456, %3396
  %3458 = fadd fast float %3457, %2619
  %3459 = fsub fast float %3218, %2618
  %3460 = fmul fast float %3399, %3459
  %3461 = fadd fast float %3460, %2618
  br label %3462

; <label>:3462                                    ; preds = %3450, %3448, %3416, %3401, %3379, %2917, %2621, %2608
  %3463 = phi float [ %2609, %3379 ], [ %2609, %2917 ], [ %2609, %2608 ], [ %2609, %2621 ], [ %3406, %3401 ], [ %3419, %3416 ], [ %2609, %3448 ], [ %3453, %3450 ]
  %3464 = phi float [ %2610, %3379 ], [ %2610, %2917 ], [ %2610, %2608 ], [ %2610, %2621 ], [ %3407, %3401 ], [ %3420, %3416 ], [ %2610, %3448 ], [ %3454, %3450 ]
  %3465 = phi float [ %3380, %3379 ], [ %2611, %2917 ], [ %2611, %2608 ], [ %2611, %2621 ], [ %3380, %3401 ], [ %3380, %3416 ], [ %3380, %3448 ], [ %3380, %3450 ]
  %3466 = phi float [ %3381, %3379 ], [ %2612, %2917 ], [ %2612, %2608 ], [ %2612, %2621 ], [ %3381, %3401 ], [ %3381, %3416 ], [ %3381, %3448 ], [ %3381, %3450 ]
  %3467 = phi float [ %3382, %3379 ], [ %2613, %2917 ], [ %2613, %2608 ], [ %2613, %2621 ], [ %3382, %3401 ], [ %3382, %3416 ], [ %3382, %3448 ], [ %3382, %3450 ]
  %3468 = phi float [ %3383, %3379 ], [ %2614, %2917 ], [ %2614, %2608 ], [ %2614, %2621 ], [ %3383, %3401 ], [ %3383, %3416 ], [ %3383, %3448 ], [ %3383, %3450 ]
  %3469 = phi float [ %3384, %3379 ], [ %2615, %2917 ], [ %2615, %2608 ], [ %2615, %2621 ], [ %3384, %3401 ], [ %3384, %3416 ], [ %3384, %3448 ], [ %3384, %3450 ]
  %3470 = phi float [ %3385, %3379 ], [ %2616, %2917 ], [ %2616, %2608 ], [ %2616, %2621 ], [ %3385, %3401 ], [ %3385, %3416 ], [ %3385, %3448 ], [ %3385, %3450 ]
  %3471 = phi float [ %3386, %3379 ], [ %2617, %2917 ], [ %2617, %2608 ], [ %2617, %2621 ], [ %3386, %3401 ], [ %3386, %3416 ], [ %3386, %3448 ], [ %3386, %3450 ]
  %3472 = phi float [ %2618, %3379 ], [ %2618, %2917 ], [ %2618, %2608 ], [ %2618, %2621 ], [ %3413, %3401 ], [ %3447, %3416 ], [ %2618, %3448 ], [ %3461, %3450 ]
  %3473 = phi float [ %2619, %3379 ], [ %2619, %2917 ], [ %2619, %2608 ], [ %2619, %2621 ], [ %3410, %3401 ], [ %3424, %3416 ], [ %2619, %3448 ], [ %3458, %3450 ]
  %3474 = phi float [ %3387, %3379 ], [ %2620, %2917 ], [ %2620, %2608 ], [ %2620, %2621 ], [ %3387, %3401 ], [ %3387, %3416 ], [ %3387, %3448 ], [ %3387, %3450 ]
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = call float @dx.op.dot2.f32(i32 54, float %3463, float %3464, float %3463, float %3464)  ; Dot2(ax,ay,bx,by)
  %3478 = fmul fast float %3477, 0x3FE3333340000000
  %3479 = fsub fast float 1.000000e+00, %3478
  %3480 = call float @dx.op.dot3.f32(i32 55, float %3463, float %3464, float %3479, float %3463, float %3464, float %3479)  ; Dot3(ax,ay,az,bx,by,bz)
  %3481 = call float @dx.op.unary.f32(i32 25, float %3480)  ; Rsqrt(value)
  %3482 = fmul fast float %3481, %3463
  %3483 = fmul fast float %3481, %3464
  %3484 = fmul fast float %3479, %3481
  %3485 = fmul fast float %3484, %74
  %3486 = fmul fast float %3484, %75
  %3487 = fmul fast float %3484, %76
  %3488 = fmul fast float %3482, %48
  %3489 = fmul fast float %3482, %49
  %3490 = fmul fast float %3482, %50
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fmul fast float %86, %3483
  %3495 = fmul fast float %87, %3483
  %3496 = fmul fast float %88, %3483
  %3497 = fadd fast float %3491, %3494
  %3498 = fadd fast float %3492, %3495
  %3499 = fadd fast float %3493, %3496
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3498, float %3499, float %3497, float %3498, float %3499)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = call float @dx.op.unary.f32(i32 25, float %3500)  ; Rsqrt(value)
  %3502 = fmul fast float %3497, %3501
  %3503 = fmul fast float %3498, %3501
  %3504 = fmul fast float %3499, %3501
  %3505 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3506 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3511 = fadd fast float %3505, %130
  %3512 = fadd fast float %3506, %131
  %3513 = fadd fast float %3507, %132
  %3514 = fadd fast float %3508, %130
  %3515 = fadd fast float %3509, %131
  %3516 = fadd fast float %3510, %132
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3524 = fmul fast float %3518, %67
  %3525 = fmul fast float %3524, %3522
  %3526 = fmul fast float %3519, %68
  %3527 = fmul fast float %3526, %3523
  %3528 = fptoui float %3525 to i32
  %3529 = fptoui float %3527 to i32
  %3530 = fadd fast float %3518, -1.000000e+00
  %3531 = fadd fast float %3519, -1.000000e+00
  %3532 = fptoui float %3530 to i32
  %3533 = fptoui float %3531 to i32
  %3534 = call i32 @dx.op.binary.i32(i32 40, i32 %3528, i32 %3532)  ; UMin(a,b)
  %3535 = call i32 @dx.op.binary.i32(i32 40, i32 %3529, i32 %3533)  ; UMin(a,b)
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 2
  %3538 = extractvalue %dx.types.CBufRet.f32 %3536, 3
  %3539 = fmul fast float %3537, %62
  %3540 = fsub fast float %3539, %3538
  %3541 = fadd fast float %3520, -1.000000e+00
  %3542 = call float @dx.op.binary.f32(i32 36, float %3540, float %3541)  ; FMin(a,b)
  %3543 = fptoui float %3542 to i32
  %3544 = fptoui float %3518 to i32
  %3545 = fptoui float %3519 to i32
  %3546 = mul i32 %3543, %3545
  %3547 = add i32 %3546, %3535
  %3548 = mul i32 %3547, %3544
  %3549 = add i32 %3548, %3534
  %3550 = shl i32 %3549, 2
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, 1023
  %3554 = lshr i32 %3552, 10
  %3555 = icmp eq i32 %3553, 0
  br i1 %3555, label %3984, label %3556

; <label>:3556                                    ; preds = %3462
  %3557 = and i32 %3552, 1023
  br label %3558

; <label>:3558                                    ; preds = %3685, %3556
  %3559 = phi i32 [ %3635, %3685 ], [ 0, %3556 ]
  %3560 = phi float [ %3686, %3685 ], [ 0.000000e+00, %3556 ]
  %3561 = phi float [ %3687, %3685 ], [ %909, %3556 ]
  %3562 = phi float [ %3688, %3685 ], [ %3476, %3556 ]
  %3563 = phi float [ %3689, %3685 ], [ %3474, %3556 ]
  %3564 = phi float [ %3690, %3685 ], [ 0.000000e+00, %3556 ]
  %3565 = phi float [ %3691, %3685 ], [ 0.000000e+00, %3556 ]
  %3566 = phi float [ %3692, %3685 ], [ %3468, %3556 ]
  %3567 = phi float [ %3693, %3685 ], [ %3469, %3556 ]
  %3568 = phi float [ %3694, %3685 ], [ %3470, %3556 ]
  %3569 = phi float [ %3695, %3685 ], [ %3502, %3556 ]
  %3570 = phi float [ %3696, %3685 ], [ %3503, %3556 ]
  %3571 = phi float [ %3697, %3685 ], [ %3504, %3556 ]
  %3572 = phi float [ %3698, %3685 ], [ %3473, %3556 ]
  %3573 = phi float [ %3699, %3685 ], [ %3472, %3556 ]
  %3574 = phi float [ %3700, %3685 ], [ 0.000000e+00, %3556 ]
  %3575 = phi float [ %3701, %3685 ], [ %3471, %3556 ]
  %3576 = phi float [ %3702, %3685 ], [ %3465, %3556 ]
  %3577 = phi float [ %3703, %3685 ], [ %3466, %3556 ]
  %3578 = phi float [ %3704, %3685 ], [ %3467, %3556 ]
  %3579 = add nuw nsw i32 %3559, %3554
  %3580 = shl i32 %3579, 2
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = shl i32 %3582, 8
  %3584 = or i32 %3583, 48
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3583, 64
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.i32 %3591, 1
  %3594 = or i32 %3583, 80
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3598 = or i32 %3583, 96
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3583, 112
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3607 = or i32 %3583, 128
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3583, 144
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = or i32 %3583, 160
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = or i32 %3583, 192
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = or i32 %3583, 208
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = or i32 %3583, 248
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = add nuw nsw i32 %3559, 1
  %3636 = bitcast float %3589 to i32
  %3637 = and i32 %3636, 512
  %3638 = icmp eq i32 %3637, 0
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = or i32 %3583, 16
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.ResRet.f32 %3646, 2
  %3650 = extractvalue %dx.types.ResRet.f32 %3646, 3
  %3651 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3652 = or i32 %3583, 32
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3653, 3
  %3658 = call float @dx.op.dot4.f32(i32 56, float %3654, float %3655, float %3656, float %3657, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3659 = call float @dx.op.unary.f32(i32 27, float %3644)  ; Round_ni(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3661 = call float @dx.op.unary.f32(i32 27, float %3651)  ; Round_ni(value)
  %3662 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3663 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3663)  ; Round_ni(value)
  %3665 = fadd fast float %3662, %3660
  %3666 = fadd fast float %3665, %3664
  %3667 = fcmp fast oeq float %3666, 0.000000e+00
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3511, float %3512, float %3513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %3511, float %3512, float %3513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %3514, float %3515, float %3516, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3647, float %3648, float %3649, float %3650, float %3514, float %3515, float %3516, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = fsub fast float %3668, %3644
  %3673 = fsub fast float %3670, %3644
  %3674 = fsub fast float %3669, %3651
  %3675 = fsub fast float %3671, %3651
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 2
  %3679 = fadd fast float %3678, %3676
  %3680 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3682 = fcmp fast ogt float %3680, %3681
  %3683 = and i1 %3667, %3682
  %3684 = and i1 %3638, %3683
  br i1 %3684, label %3706, label %3685

; <label>:3685                                    ; preds = %3970, %3787, %3706, %3558
  %3686 = phi float [ %3560, %3706 ], [ %3790, %3787 ], [ %3790, %3970 ], [ %3560, %3558 ]
  %3687 = phi float [ %3561, %3706 ], [ %3561, %3787 ], [ %3945, %3970 ], [ %3561, %3558 ]
  %3688 = phi float [ %3562, %3706 ], [ %3562, %3787 ], [ %3944, %3970 ], [ %3562, %3558 ]
  %3689 = phi float [ %3563, %3706 ], [ %3563, %3787 ], [ %3942, %3970 ], [ %3563, %3558 ]
  %3690 = phi float [ %3564, %3706 ], [ %3564, %3787 ], [ %3914, %3970 ], [ %3564, %3558 ]
  %3691 = phi float [ %3565, %3706 ], [ %3565, %3787 ], [ %3912, %3970 ], [ %3565, %3558 ]
  %3692 = phi float [ %3566, %3706 ], [ %3566, %3787 ], [ %3980, %3970 ], [ %3566, %3558 ]
  %3693 = phi float [ %3567, %3706 ], [ %3567, %3787 ], [ %3981, %3970 ], [ %3567, %3558 ]
  %3694 = phi float [ %3568, %3706 ], [ %3568, %3787 ], [ %3982, %3970 ], [ %3568, %3558 ]
  %3695 = phi float [ %3569, %3706 ], [ %3569, %3787 ], [ %3893, %3970 ], [ %3569, %3558 ]
  %3696 = phi float [ %3570, %3706 ], [ %3570, %3787 ], [ %3894, %3970 ], [ %3570, %3558 ]
  %3697 = phi float [ %3571, %3706 ], [ %3571, %3787 ], [ %3895, %3970 ], [ %3571, %3558 ]
  %3698 = phi float [ %3572, %3706 ], [ %3572, %3787 ], [ %3922, %3970 ], [ %3572, %3558 ]
  %3699 = phi float [ %3573, %3706 ], [ %3573, %3787 ], [ %3919, %3970 ], [ %3573, %3558 ]
  %3700 = phi float [ %3574, %3706 ], [ %3574, %3787 ], [ %3916, %3970 ], [ %3574, %3558 ]
  %3701 = phi float [ %3575, %3706 ], [ %3575, %3787 ], [ %3910, %3970 ], [ %3575, %3558 ]
  %3702 = phi float [ %3576, %3706 ], [ %3576, %3787 ], [ %3905, %3970 ], [ %3576, %3558 ]
  %3703 = phi float [ %3577, %3706 ], [ %3577, %3787 ], [ %3906, %3970 ], [ %3577, %3558 ]
  %3704 = phi float [ %3578, %3706 ], [ %3578, %3787 ], [ %3907, %3970 ], [ %3578, %3558 ]
  %3705 = icmp eq i32 %3635, %3557
  br i1 %3705, label %3983, label %3558

; <label>:3706                                    ; preds = %3558
  %3707 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3708 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3712 = extractvalue %dx.types.ResRet.i32 %3591, 3
  %3713 = extractvalue %dx.types.ResRet.i32 %3591, 2
  %3714 = add i32 %3712, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3717 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3715, %dx.types.Handle %3716, float %3644, float %3651, float undef, float undef, i32 0, i32 0, i32 undef, float %3672, float %3674, float undef, float %3673, float %3675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = fmul fast float %3718, %3711
  %3720 = fadd fast float %3719, %3710
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fmul fast float %3644, %3600
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3651, float %3722)  ; FMad(a,b,c)
  %3724 = fadd fast float %3723, %3709
  %3725 = fmul fast float %3644, %3602
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3651, float %3725)  ; FMad(a,b,c)
  %3727 = fadd fast float %3726, %3708
  %3728 = fmul fast float %3672, %3600
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3674, float %3728)  ; FMad(a,b,c)
  %3730 = fmul fast float %3672, %3602
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3674, float %3730)  ; FMad(a,b,c)
  %3732 = fmul fast float %3673, %3600
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3675, float %3732)  ; FMad(a,b,c)
  %3734 = fmul fast float %3673, %3602
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3675, float %3734)  ; FMad(a,b,c)
  %3736 = add i32 %3713, 0
  %3737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3736, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3738 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3737, %dx.types.Handle %3716, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = and i32 %3636, 1024
  %3741 = icmp ne i32 %3740, 0
  %3742 = fcmp fast ogt float %3739, 0x3FE0101020000000
  %3743 = uitofp i1 %3742 to float
  %3744 = select i1 %3741, float %3743, float %3739
  %3745 = and i32 %3636, 8192
  %3746 = icmp ne i32 %3745, 0
  %3747 = select i1 %3746, float %3707, float 1.000000e+00
  %3748 = fmul fast float %3644, 2.000000e+00
  %3749 = fadd fast float %3748, -1.000000e+00
  %3750 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3751 = fmul fast float %3750, %3633
  %3752 = fsub fast float %3751, %3633
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3651, 2.000000e+00
  %3755 = fadd fast float %3754, -1.000000e+00
  %3756 = call float @dx.op.unary.f32(i32 6, float %3755)  ; FAbs(value)
  %3757 = fmul fast float %3756, %3634
  %3758 = fsub fast float %3757, %3634
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3663, %3596
  %3761 = fsub fast float %3760, %3596
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fmul fast float %3721, %3747
  %3764 = fmul fast float %3763, %3718
  %3765 = fmul fast float %3764, %3753
  %3766 = fmul fast float %3765, %3744
  %3767 = fmul fast float %3766, %3759
  %3768 = fmul fast float %3767, %3762
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3772 = fsub fast float %3680, %3771
  %3773 = fmul fast float %3772, %3770
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = fmul fast float %3768, %3597
  %3776 = fadd fast float %3768, %3597
  %3777 = fmul fast float %3776, %3606
  %3778 = fsub fast float %3777, %3606
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = and i32 %3636, 128
  %3781 = icmp ne i32 %3780, 0
  %3782 = select i1 %3781, float %3779, float %3775
  %3783 = fmul fast float %3782, %3774
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = fcmp fast ugt float %3783, %3785
  br i1 %3786, label %3787, label %3685

; <label>:3787                                    ; preds = %3706
  %3788 = select i1 %3746, float %3783, float 0.000000e+00
  %3789 = fadd fast float %3788, %3560
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  br i1 %3746, label %3685, label %3791

; <label>:3791                                    ; preds = %3787
  %3792 = and i32 %3636, 4
  %3793 = and i32 %3636, 8
  %3794 = add i32 %3592, 0
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3795, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3802 = bitcast float %3618 to i32
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = lshr i32 %3802, 8
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = fmul fast float %3801, %3804
  %3809 = fadd fast float %3808, %3807
  %3810 = fmul fast float %3809, 0x3F70101000000000
  %3811 = add i32 %3593, 0
  %3812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3812, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3818 = bitcast float %3612 to i32
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = lshr i32 %3818, 8
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = lshr i32 %3818, 16
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, 0x3F70101000000000
  %3828 = fmul fast float %3814, %3820
  %3829 = fadd fast float %3828, %3823
  %3830 = fmul fast float %3829, 0x3F70101000000000
  %3831 = fadd fast float %3815, -5.000000e-01
  %3832 = fadd fast float %3817, -5.000000e-01
  %3833 = fmul fast float %3831, %3827
  %3834 = fmul fast float %3832, %3827
  %3835 = fadd fast float %3833, 5.000000e-01
  %3836 = fadd fast float %3834, 5.000000e-01
  %3837 = fmul fast float %3798, %3621
  %3838 = fmul fast float %3799, %3622
  %3839 = fmul fast float %3800, %3623
  %3840 = fmul fast float %3835, 2.000000e+00
  %3841 = fadd fast float %3840, -1.000000e+00
  %3842 = fmul fast float %3836, 2.000000e+00
  %3843 = fadd fast float %3842, -1.000000e+00
  %3844 = fadd fast float %3841, %3843
  %3845 = fmul fast float %3844, 5.000000e-01
  %3846 = fsub fast float %3841, %3843
  %3847 = fmul fast float %3846, 5.000000e-01
  %3848 = call float @dx.op.unary.f32(i32 6, float %3845)  ; FAbs(value)
  %3849 = fsub fast float 1.000000e+00, %3848
  %3850 = call float @dx.op.unary.f32(i32 6, float %3847)  ; FAbs(value)
  %3851 = fsub fast float %3849, %3850
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3847, float %3851, float %3845, float %3847, float %3851)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = call float @dx.op.unary.f32(i32 25, float %3852)  ; Rsqrt(value)
  %3854 = fmul fast float %3845, %3853
  %3855 = fmul fast float %3847, %3853
  %3856 = fmul fast float %3853, %3851
  %3857 = fmul fast float %3856, %3586
  %3858 = fmul fast float %3856, %3587
  %3859 = fmul fast float %3856, %3588
  %3860 = fmul fast float %3854, %3609
  %3861 = fmul fast float %3854, %3610
  %3862 = fmul fast float %3854, %3611
  %3863 = fadd fast float %3860, %3857
  %3864 = fadd fast float %3861, %3858
  %3865 = fadd fast float %3862, %3859
  %3866 = fmul fast float %3855, %3615
  %3867 = fmul fast float %3855, %3616
  %3868 = fmul fast float %3855, %3617
  %3869 = fadd fast float %3863, %3866
  %3870 = fadd fast float %3864, %3867
  %3871 = fadd fast float %3865, %3868
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3870, float %3871, float %3869, float %3870, float %3871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = call float @dx.op.unary.f32(i32 25, float %3872)  ; Rsqrt(value)
  %3874 = fmul fast float %3869, %3873
  %3875 = fmul fast float %3870, %3873
  %3876 = fmul fast float %3871, %3873
  %3877 = icmp ne i32 %3793, 0
  %3878 = select i1 %3877, float 1.000000e+00, float 0.000000e+00
  %3879 = fmul fast float %3783, %3878
  %3880 = and i32 %3636, 1
  %3881 = icmp eq i32 %3880, 0
  br i1 %3881, label %3882, label %3886

; <label>:3882                                    ; preds = %3791
  %3883 = fsub fast float %3874, %3569
  %3884 = fsub fast float %3875, %3570
  %3885 = fsub fast float %3876, %3571
  br label %3886

; <label>:3886                                    ; preds = %3882, %3791
  %3887 = phi float [ %3883, %3882 ], [ %3874, %3791 ]
  %3888 = phi float [ %3884, %3882 ], [ %3875, %3791 ]
  %3889 = phi float [ %3885, %3882 ], [ %3876, %3791 ]
  %3890 = fmul float %3889, %3879
  %3891 = fmul float %3888, %3879
  %3892 = fmul float %3887, %3879
  %3893 = fadd fast float %3892, %3569
  %3894 = fadd fast float %3891, %3570
  %3895 = fadd fast float %3890, %3571
  %3896 = icmp ne i32 %3792, 0
  %3897 = select i1 %3896, float 1.000000e+00, float 0.000000e+00
  %3898 = fmul fast float %3783, %3897
  %3899 = fsub fast float %3837, %3576
  %3900 = fsub fast float %3838, %3577
  %3901 = fsub fast float %3839, %3578
  %3902 = fmul fast float %3899, %3898
  %3903 = fmul fast float %3900, %3898
  %3904 = fmul fast float %3901, %3898
  %3905 = fadd fast float %3902, %3576
  %3906 = fadd fast float %3903, %3577
  %3907 = fadd fast float %3904, %3578
  %3908 = fsub fast float %3810, %3575
  %3909 = fmul fast float %3908, %3898
  %3910 = fadd fast float %3909, %3575
  %3911 = fmul fast float %3898, %3565
  %3912 = fsub fast float %3565, %3911
  %3913 = fmul fast float %3898, %3564
  %3914 = fsub fast float %3564, %3913
  %3915 = fadd fast float %3783, %3574
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = fsub fast float %3830, %3573
  %3918 = fmul fast float %3917, %3879
  %3919 = fadd fast float %3918, %3573
  %3920 = fsub fast float %3816, %3572
  %3921 = fmul fast float %3920, %3879
  %3922 = fadd fast float %3921, %3572
  %3923 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3927 = fmul fast float %3926, %3923
  %3928 = fadd fast float %3927, %3925
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = bitcast float %3624 to i32
  %3931 = and i32 %3930, 65535
  %3932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3931)  ; LegacyF16ToF32(value)
  %3933 = lshr i32 %3930, 16
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = fcmp fast oge float %3932, 0.000000e+00
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = select i1 %3935, float %3932, float %3937
  %3939 = fadd fast float %3938, %3934
  %3940 = fsub fast float %3929, %3563
  %3941 = fmul fast float %3940, %3783
  %3942 = fadd fast float %3941, %3563
  %3943 = fmul fast float %3939, %3783
  %3944 = call float @dx.op.binary.f32(i32 35, float %3562, float %3943)  ; FMax(a,b)
  %3945 = call float @dx.op.binary.f32(i32 35, float %3561, float %3783)  ; FMax(a,b)
  %3946 = and i32 %3636, 16
  %3947 = icmp eq i32 %3946, 0
  br i1 %3947, label %3970, label %3948

; <label>:3948                                    ; preds = %3886
  %3949 = bitcast float %3630 to i32
  %3950 = add i32 %3627, 0
  %3951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3950, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3952 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3951, %dx.types.Handle %3796, float %3724, float %3727, float undef, float undef, i32 0, i32 0, i32 undef, float %3729, float %3731, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.ResRet.f32 %3952, 1
  %3955 = extractvalue %dx.types.ResRet.f32 %3952, 2
  %3956 = and i32 %3949, 65535
  %3957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3956)  ; LegacyF16ToF32(value)
  %3958 = fmul fast float %3953, %3621
  %3959 = fmul fast float %3954, %3622
  %3960 = fmul fast float %3955, %3623
  %3961 = and i32 %3636, 16384
  %3962 = icmp ne i32 %3961, 0
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = select i1 %3962, float %3964, float 1.000000e+00
  %3966 = fmul fast float %3965, %3957
  %3967 = fmul fast float %3958, %3966
  %3968 = fmul fast float %3959, %3966
  %3969 = fmul fast float %3960, %3966
  br label %3970

; <label>:3970                                    ; preds = %3948, %3886
  %3971 = phi float [ %3967, %3948 ], [ 0.000000e+00, %3886 ]
  %3972 = phi float [ %3968, %3948 ], [ 0.000000e+00, %3886 ]
  %3973 = phi float [ %3969, %3948 ], [ 0.000000e+00, %3886 ]
  %3974 = fsub fast float %3971, %3566
  %3975 = fsub fast float %3972, %3567
  %3976 = fsub fast float %3973, %3568
  %3977 = fmul fast float %3974, %3783
  %3978 = fmul fast float %3975, %3783
  %3979 = fmul fast float %3976, %3783
  %3980 = fadd fast float %3977, %3566
  %3981 = fadd fast float %3978, %3567
  %3982 = fadd fast float %3979, %3568
  br label %3685

; <label>:3983                                    ; preds = %3685
  br label %3984

; <label>:3984                                    ; preds = %3983, %3462
  %3985 = phi float [ 0.000000e+00, %3462 ], [ %3686, %3983 ]
  %3986 = phi float [ %909, %3462 ], [ %3687, %3983 ]
  %3987 = phi float [ %3476, %3462 ], [ %3688, %3983 ]
  %3988 = phi float [ %3474, %3462 ], [ %3689, %3983 ]
  %3989 = phi float [ 0.000000e+00, %3462 ], [ %3690, %3983 ]
  %3990 = phi float [ 0.000000e+00, %3462 ], [ %3691, %3983 ]
  %3991 = phi float [ %3468, %3462 ], [ %3692, %3983 ]
  %3992 = phi float [ %3469, %3462 ], [ %3693, %3983 ]
  %3993 = phi float [ %3470, %3462 ], [ %3694, %3983 ]
  %3994 = phi float [ %3502, %3462 ], [ %3695, %3983 ]
  %3995 = phi float [ %3503, %3462 ], [ %3696, %3983 ]
  %3996 = phi float [ %3504, %3462 ], [ %3697, %3983 ]
  %3997 = phi float [ %3473, %3462 ], [ %3698, %3983 ]
  %3998 = phi float [ %3472, %3462 ], [ %3699, %3983 ]
  %3999 = phi float [ 0.000000e+00, %3462 ], [ %3700, %3983 ]
  %4000 = phi float [ %3471, %3462 ], [ %3701, %3983 ]
  %4001 = phi float [ %3465, %3462 ], [ %3702, %3983 ]
  %4002 = phi float [ %3466, %3462 ], [ %3703, %3983 ]
  %4003 = phi float [ %3467, %3462 ], [ %3704, %3983 ]
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3995, float %3996, float %3994, float %3995, float %3996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %4005, %3994
  %4007 = fmul fast float %4005, %3995
  %4008 = fmul fast float %4005, %3996
  %4009 = fadd fast float %3999, %909
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = call float @dx.op.dot3.f32(i32 55, float %4006, float %4007, float %4008, float %4006, float %4007, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call float @dx.op.unary.f32(i32 25, float %4011)  ; Rsqrt(value)
  %4013 = fmul fast float %4012, %4006
  %4014 = fmul fast float %4012, %4007
  %4015 = fmul fast float %4012, %4008
  %4016 = add i32 %33, 392
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.i32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.i32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.i32 %4017, 3
  %4022 = bitcast i32 %4018 to float
  %4023 = bitcast i32 %4019 to float
  %4024 = bitcast i32 %4020 to float
  %4025 = bitcast i32 %4021 to float
  %4026 = fsub fast float %4001, %4022
  %4027 = fsub fast float %4002, %4023
  %4028 = fsub fast float %4003, %4024
  %4029 = fmul fast float %4026, %164
  %4030 = fmul fast float %4027, %164
  %4031 = fmul fast float %4028, %164
  %4032 = fadd fast float %4029, %4022
  %4033 = fadd fast float %4030, %4023
  %4034 = fadd fast float %4031, %4024
  %4035 = fsub fast float %4010, %4025
  %4036 = fmul fast float %4035, %164
  %4037 = fadd fast float %4036, %4025
  %4038 = fadd fast float %4000, 0xBFB99999A0000000
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %4039, 0x3FF1C71C80000000
  %4041 = call float @dx.op.binary.f32(i32 36, float %4000, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4042 = fsub fast float 1.000000e+00, %4040
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %4032, %4043
  %4045 = fmul fast float %4033, %4043
  %4046 = fmul fast float %4034, %4043
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = fmul fast float %4032, %4040
  %4051 = fmul fast float %4033, %4040
  %4052 = fmul fast float %4034, %4040
  %4053 = fadd fast float %4050, %4041
  %4054 = fadd fast float %4051, %4041
  %4055 = fadd fast float %4052, %4041
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 3
  %4062 = and i32 %4061, 8
  %4063 = icmp ne i32 %4062, 0
  %4064 = call float @dx.op.binary.f32(i32 35, float %4047, float %4032)  ; FMax(a,b)
  %4065 = call float @dx.op.binary.f32(i32 35, float %4048, float %4032)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4049, float %4032)  ; FMax(a,b)
  %4067 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = select i1 %204, float %4032, float %4047
  %4069 = select i1 %204, float %4067, float %4048
  %4070 = select i1 %204, float 1.000000e+00, float %4049
  %4071 = select i1 %4063, float %4064, float %4068
  %4072 = select i1 %4063, float %4065, float %4069
  %4073 = select i1 %4063, float %4066, float %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4078 = fadd fast float %4075, %130
  %4079 = fadd fast float %4076, %131
  %4080 = fadd fast float %4077, %132
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = fsub fast float %4078, %4082
  %4085 = fsub fast float %4079, %4083
  %4086 = fmul fast float %4084, %4084
  %4087 = fmul fast float %4085, %4085
  %4088 = fadd fast float %4086, %4087
  %4089 = call float @dx.op.unary.f32(i32 24, float %4088)  ; Sqrt(value)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4081, 2
  %4091 = fcmp fast olt float %4089, %4090
  br i1 %4091, label %4092, label %4159

; <label>:4092                                    ; preds = %3984
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4103 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4104 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4105 = fadd fast float %4102, %4078
  %4106 = fadd fast float %4103, %4079
  %4107 = fadd fast float %4104, %4080
  %4108 = fmul fast float %4105, %4094
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4096, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = fmul fast float %4105, %4099
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4100, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4110, %4102
  %4115 = fsub fast float %4113, %4103
  %4116 = fsub fast float %4114, %4082
  %4117 = fadd fast float %4116, %4090
  %4118 = fsub fast float %4115, %4083
  %4119 = fadd fast float %4118, %4090
  %4120 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4121 = fmul fast float %4117, %4120
  %4122 = fmul fast float %4119, %4120
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fcmp fast ugt float %4128, 0.000000e+00
  br i1 %4129, label %4130, label %4433

; <label>:4130                                    ; preds = %4092
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4133 = fmul fast float %4132, %4128
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4135 = fadd fast float %4134, %4133
  %4136 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4137 = fadd fast float %4135, %4104
  %4138 = fmul fast float %4110, %4098
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4101, float %4138)  ; FMad(a,b,c)
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4136, float %4139)  ; FMad(a,b,c)
  %4141 = fsub fast float %4140, %4104
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = fsub fast float %4141, %4143
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = fadd fast float %4150, %4146
  %4154 = fmul fast float %4153, 0x3F847AE140000000
  %4155 = fadd fast float %4151, %4147
  %4156 = fmul fast float %4155, 0x3F847AE140000000
  %4157 = fadd fast float %4152, %4148
  %4158 = fmul fast float %4157, 0x3F847AE140000000
  br label %4433

; <label>:4159                                    ; preds = %3984
  %4160 = and i32 %180, 1
  %4161 = icmp eq i32 %4160, 0
  br i1 %4161, label %4433, label %4162

; <label>:4162                                    ; preds = %4159
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4173 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4174 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4175 = fadd fast float %4172, %4078
  %4176 = fadd fast float %4173, %4079
  %4177 = fadd fast float %4174, %4080
  %4178 = fmul fast float %4175, %4164
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4166, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = fmul fast float %4175, %4169
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4170, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4171, float %4182)  ; FMad(a,b,c)
  %4184 = fsub fast float %4180, %4172
  %4185 = fsub fast float %4183, %4173
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.i32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.i32 %4193, 1
  %4196 = udiv i32 %4195, %4194
  %4197 = fsub fast float %4184, %4187
  %4198 = fsub fast float %4185, %4188
  %4199 = call float @dx.op.binary.f32(i32 35, float %4197, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 36, float %4199, float %4189)  ; FMin(a,b)
  %4202 = call float @dx.op.binary.f32(i32 36, float %4200, float %4190)  ; FMin(a,b)
  %4203 = add i32 %4194, -1
  %4204 = add i32 %4196, -1
  %4205 = fmul fast float %4201, %4192
  %4206 = fmul fast float %4202, %4192
  %4207 = fptoui float %4205 to i32
  %4208 = fptoui float %4206 to i32
  %4209 = call i32 @dx.op.binary.i32(i32 40, i32 %4207, i32 %4203)  ; UMin(a,b)
  %4210 = call i32 @dx.op.binary.i32(i32 40, i32 %4208, i32 %4204)  ; UMin(a,b)
  %4211 = mul i32 %4210, %4194
  %4212 = add i32 %4211, %4209
  %4213 = shl i32 %4212, 2
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = icmp eq i32 %4215, -1
  br i1 %4216, label %4433, label %4217

; <label>:4217                                    ; preds = %4162
  %4218 = mul i32 %4215, 148
  %4219 = add i32 %4218, 4
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4218, 8
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4218, 36
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = add i32 %4218, 60
  %4229 = add i32 %4218, 92
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = add i32 %4218, 116
  %4233 = fsub fast float %4184, %4221
  %4234 = fsub fast float %4185, %4224
  %4235 = fmul fast float %4192, %4233
  %4236 = fmul fast float %4192, %4234
  %4237 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fsub fast float 1.000000e+00, %4238
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4242 = call float @dx.op.unary.f32(i32 83, float %4237)  ; DerivCoarseX(value)
  %4243 = call float @dx.op.unary.f32(i32 83, float %4239)  ; DerivCoarseX(value)
  %4244 = call float @dx.op.unary.f32(i32 84, float %4237)  ; DerivCoarseY(value)
  %4245 = call float @dx.op.unary.f32(i32 84, float %4239)  ; DerivCoarseY(value)
  %4246 = fmul fast float %4242, %4241
  %4247 = fmul fast float %4243, %4241
  %4248 = fmul fast float %4244, %4241
  %4249 = fmul fast float %4245, %4241
  %4250 = call float @dx.op.dot2.f32(i32 54, float %4248, float %4249, float %4248, float %4249)  ; Dot2(ax,ay,bx,by)
  %4251 = call float @dx.op.dot2.f32(i32 54, float %4246, float %4247, float %4246, float %4247)  ; Dot2(ax,ay,bx,by)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float %4250)  ; FMax(a,b)
  %4253 = call float @dx.op.unary.f32(i32 23, float %4252)  ; Log(value)
  %4254 = fmul fast float %4253, 5.000000e-01
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4257 = fadd fast float %4256, %4254
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = fadd fast float %4260, %4258
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 3
  %4264 = fadd fast float %4261, %4263
  %4265 = add i32 %4231, 0
  %4266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4267 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4266, i32 0)  ; GetDimensions(handle,mipLevel)
  %4268 = extractvalue %dx.types.Dimensions %4267, 0
  %4269 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4268)  ; FirstbitLo(value)
  %4270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.i32 %4270, 1
  %4272 = sub nsw i32 %4271, %4269
  %4273 = sitofp i32 %4272 to float
  %4274 = fsub fast float %4264, %4273
  %4275 = call float @dx.op.binary.f32(i32 35, float %4274, float 0.000000e+00)  ; FMax(a,b)
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4266, %dx.types.Handle %27, float %4237, float %4239, float %4227, float undef, i32 0, i32 0, i32 undef, float %4275)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = fcmp ule float %4277, 0x3FE0101020000000
  %4279 = extractvalue %dx.types.CBufRet.i32 %4270, 0
  %4280 = and i32 %4279, 128
  %4281 = icmp ne i32 %4280, 0
  %4282 = and i1 %4278, %4281
  br i1 %4282, label %4433, label %4283

; <label>:4283                                    ; preds = %4217
  %4284 = add i32 %4218, 20
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4218, 24
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4218, 40
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = add i32 %4218, 96
  %4294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.i32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4298 = fmul fast float %4297, %4237
  %4299 = fmul fast float %4297, %4239
  %4300 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4301 = fadd fast float %4298, %4300
  %4302 = fadd fast float %4299, %4300
  %4303 = add i32 %4295, 0
  %4304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4304, i32 0)  ; GetDimensions(handle,mipLevel)
  %4306 = extractvalue %dx.types.Dimensions %4305, 0
  %4307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4306)  ; FirstbitLo(value)
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4310 = sub nsw i32 %4309, %4307
  %4311 = sitofp i32 %4310 to float
  %4312 = fsub fast float %4261, %4311
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4304, %dx.types.Handle %27, float %4301, float %4302, float %4292, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = fmul fast float %4315, %4286
  %4317 = fadd fast float %4316, %4289
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4327 = fadd fast float %4323, %4184
  %4328 = fadd fast float %4325, %4185
  %4329 = fadd fast float %4317, %4326
  %4330 = fmul fast float %4327, %4319
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4320, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4321, float %4331)  ; FMad(a,b,c)
  %4333 = fsub fast float %4332, %4326
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4336 = fsub fast float %4333, %4335
  %4337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.i32 %4337, 0
  %4339 = call i32 @dx.op.binary.i32(i32 40, i32 %4215, i32 %4338)  ; UMin(a,b)
  %4340 = mul i32 %4339, 36
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = add i32 %4340, 4
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4237
  %4347 = fmul fast float %4345, %4239
  %4348 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4349 = fadd fast float %4346, %4348
  %4350 = fadd fast float %4347, %4348
  %4351 = icmp eq i32 %4342, 0
  br i1 %4351, label %4420, label %4352

; <label>:4352                                    ; preds = %4283
  br label %4353

; <label>:4353                                    ; preds = %4410, %4352
  %4354 = phi float [ %4411, %4410 ], [ 0.000000e+00, %4352 ]
  %4355 = phi float [ %4412, %4410 ], [ 0.000000e+00, %4352 ]
  %4356 = phi float [ %4413, %4410 ], [ 0.000000e+00, %4352 ]
  %4357 = phi float [ %4414, %4410 ], [ 0.000000e+00, %4352 ]
  %4358 = phi float [ %4415, %4410 ], [ 0.000000e+00, %4352 ]
  %4359 = phi float [ %4416, %4410 ], [ 0.000000e+00, %4352 ]
  %4360 = phi i32 [ %4417, %4410 ], [ 0, %4352 ]
  %4361 = shl i32 %4360, 2
  %4362 = add i32 %4228, %4361
  %4363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = add i32 %4232, %4361
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = add i32 %4367, 0
  %4369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4369, i32 0)  ; GetDimensions(handle,mipLevel)
  %4371 = extractvalue %dx.types.Dimensions %4370, 0
  %4372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4371)  ; FirstbitLo(value)
  %4373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.i32 %4373, 1
  %4375 = sub nsw i32 %4374, %4372
  %4376 = sitofp i32 %4375 to float
  %4377 = fsub fast float %4261, %4376
  %4378 = call float @dx.op.binary.f32(i32 35, float %4377, float 0.000000e+00)  ; FMax(a,b)
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4369, %dx.types.Handle %27, float %4349, float %4350, float %4364, float undef, i32 0, i32 0, i32 undef, float %4378)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %4381, label %4382, label %4410

; <label>:4382                                    ; preds = %4353
  %4383 = add i32 %4343, %4361
  %4384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.i32 %4384, 0
  %4386 = and i32 %4385, 32767
  %4387 = mul nuw nsw i32 %4386, 928
  %4388 = add nuw nsw i32 %4387, 48
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = add nuw nsw i32 %4387, 60
  %4394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4398 = fmul fast float %4390, %4380
  %4399 = fmul fast float %4391, %4380
  %4400 = fmul fast float %4392, %4380
  %4401 = fadd fast float %4398, %4354
  %4402 = fadd fast float %4399, %4355
  %4403 = fadd fast float %4400, %4356
  %4404 = fmul fast float %4395, %4380
  %4405 = fmul fast float %4396, %4380
  %4406 = fmul fast float %4397, %4380
  %4407 = fadd fast float %4404, %4357
  %4408 = fadd fast float %4405, %4358
  %4409 = fadd fast float %4406, %4359
  br label %4410

; <label>:4410                                    ; preds = %4382, %4353
  %4411 = phi float [ %4401, %4382 ], [ %4354, %4353 ]
  %4412 = phi float [ %4402, %4382 ], [ %4355, %4353 ]
  %4413 = phi float [ %4403, %4382 ], [ %4356, %4353 ]
  %4414 = phi float [ %4407, %4382 ], [ %4357, %4353 ]
  %4415 = phi float [ %4408, %4382 ], [ %4358, %4353 ]
  %4416 = phi float [ %4409, %4382 ], [ %4359, %4353 ]
  %4417 = add nuw i32 %4360, 1
  %4418 = icmp eq i32 %4417, %4342
  br i1 %4418, label %4419, label %4353

; <label>:4419                                    ; preds = %4410
  br label %4420

; <label>:4420                                    ; preds = %4419, %4283
  %4421 = phi float [ 0.000000e+00, %4283 ], [ %4411, %4419 ]
  %4422 = phi float [ 0.000000e+00, %4283 ], [ %4412, %4419 ]
  %4423 = phi float [ 0.000000e+00, %4283 ], [ %4413, %4419 ]
  %4424 = phi float [ 0.000000e+00, %4283 ], [ %4414, %4419 ]
  %4425 = phi float [ 0.000000e+00, %4283 ], [ %4415, %4419 ]
  %4426 = phi float [ 0.000000e+00, %4283 ], [ %4416, %4419 ]
  %4427 = fadd fast float %4424, %4421
  %4428 = fmul fast float %4427, 0x3F847AE140000000
  %4429 = fadd fast float %4425, %4422
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  %4431 = fadd fast float %4426, %4423
  %4432 = fmul fast float %4431, 0x3F847AE140000000
  br label %4433

; <label>:4433                                    ; preds = %4420, %4217, %4162, %4159, %4130, %4092
  %4434 = phi float [ %4144, %4130 ], [ -1.310720e+05, %4092 ], [ %4336, %4420 ], [ -1.310720e+05, %4162 ], [ -1.310720e+05, %4217 ], [ -1.310720e+05, %4159 ]
  %4435 = phi float [ %4154, %4130 ], [ 0.000000e+00, %4092 ], [ %4428, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4436 = phi float [ %4156, %4130 ], [ 0.000000e+00, %4092 ], [ %4430, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4437 = phi float [ %4158, %4130 ], [ 0.000000e+00, %4092 ], [ %4432, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4438 = phi i1 [ true, %4130 ], [ false, %4092 ], [ true, %4420 ], [ false, %4162 ], [ false, %4217 ], [ false, %4159 ]
  %4439 = and i32 %180, 3
  %4440 = icmp eq i32 %4439, 1
  %4441 = select i1 %4440, float 1.000000e+00, float 0.000000e+00
  %4442 = fsub fast float %4434, %132
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = select i1 %4438, float %4443, float 1.000000e+00
  %4445 = fmul fast float %4444, %4441
  %4446 = icmp eq i32 %4439, 3
  %4447 = select i1 %4446, float 1.000000e+00, float %4445
  %4448 = call float @dx.op.binary.f32(i32 35, float %3985, float %4447)  ; FMax(a,b)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fcmp fast une float %4449, 0.000000e+00
  %4451 = fsub fast float -0.000000e+00, %150
  %4452 = fsub fast float -0.000000e+00, %151
  %4453 = fsub fast float -0.000000e+00, %152
  br i1 %4450, label %4454, label %4616

; <label>:4454                                    ; preds = %4433
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = fmul fast float %4449, 2.500000e+00
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fmul fast float %4449, 0x4013FFFFE0000000
  %4459 = fadd fast float %4458, 0xBFFFFFFFE0000000
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4449, 0x4004000020000000
  %4462 = fadd fast float %4461, 0xBFF8000040000000
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4465 = fmul fast float %4038, 1.000000e+01
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4466, 2.000000e+00
  %4468 = fsub fast float 3.000000e+00, %4467
  %4469 = fmul fast float %4466, %4466
  %4470 = fmul fast float %4469, %4468
  %4471 = fsub fast float 1.000000e+00, %4470
  %4472 = fsub fast float 0x3FE3333340000000, %4059
  %4473 = fmul fast float %4472, 0x400AAAAAA0000000
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4471, %4474
  %4476 = fmul fast float %4071, 0x3FEA2B8620000000
  %4477 = fmul fast float %4072, 0x3FEA2B8620000000
  %4478 = fmul fast float %4073, 0x3FEA2B8620000000
  %4479 = fadd fast float %4476, 0x3FC81DFBA0000000
  %4480 = fmul fast float %4479, %4071
  %4481 = fadd fast float %4480, 0x3F910E6020000000
  %4482 = fadd fast float %4477, 0x3FC81DFBA0000000
  %4483 = fmul fast float %4482, %4072
  %4484 = fadd fast float %4483, 0x3F910E6020000000
  %4485 = fadd fast float %4478, 0x3FC81DFBA0000000
  %4486 = fmul fast float %4485, %4073
  %4487 = fadd fast float %4486, 0x3F910E6020000000
  %4488 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = fsub fast float %4488, %4071
  %4492 = fsub fast float %4489, %4072
  %4493 = fsub fast float %4490, %4073
  %4494 = fmul fast float %4491, %4464
  %4495 = fmul fast float %4494, %4475
  %4496 = fmul fast float %4492, %4464
  %4497 = fmul fast float %4496, %4475
  %4498 = fmul fast float %4493, %4464
  %4499 = fmul fast float %4498, %4475
  %4500 = fadd fast float %4495, %4071
  %4501 = fadd fast float %4497, %4072
  %4502 = fadd fast float %4499, %4073
  %4503 = fmul fast float %3997, %3997
  %4504 = fmul fast float %4503, %4503
  %4505 = fadd fast float %4460, 1.000000e+00
  %4506 = fsub fast float %4505, %4475
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4510 = fsub fast float 1.000000e+00, %4504
  %4511 = call float @dx.op.binary.f32(i32 36, float %4507, float %4510)  ; FMin(a,b)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4513 = call float @dx.op.binary.f32(i32 35, float %4511, float %4512)  ; FMax(a,b)
  %4514 = fadd fast float %4509, 0xBFE4CCCCC0000000
  %4515 = fmul fast float %4514, 0x4006DB6DA0000000
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fmul fast float %4516, 2.000000e+00
  %4518 = fsub fast float 3.000000e+00, %4517
  %4519 = bitcast float %4056 to i32
  %4520 = ashr i32 %4519, 1
  %4521 = add nsw i32 %4520, 532487669
  %4522 = bitcast i32 %4521 to float
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = bitcast float %4523 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = fmul fast float %4526, 2.000000e+00
  %4528 = bitcast float %4057 to i32
  %4529 = ashr i32 %4528, 1
  %4530 = add nsw i32 %4529, 532487669
  %4531 = bitcast i32 %4530 to float
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = bitcast float %4532 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = bitcast float %4058 to i32
  %4538 = ashr i32 %4537, 1
  %4539 = add nsw i32 %4538, 532487669
  %4540 = bitcast i32 %4539 to float
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, 2.000000e+00
  %4546 = fsub fast float 0x4002A9FBE0000000, %4527
  %4547 = fadd fast float %4527, 0x3FD54FDF00000000
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, %4546
  %4552 = fmul fast float %4551, %4551
  %4553 = fsub fast float 0x4002A9FBE0000000, %4536
  %4554 = fadd fast float %4536, 0x3FD54FDF00000000
  %4555 = bitcast float %4554 to i32
  %4556 = sub nsw i32 2129859010, %4555
  %4557 = bitcast i32 %4556 to float
  %4558 = fmul fast float %4557, %4553
  %4559 = fmul fast float %4558, %4558
  %4560 = fsub fast float 0x4002A9FBE0000000, %4545
  %4561 = fadd fast float %4545, 0x3FD54FDF00000000
  %4562 = bitcast float %4561 to i32
  %4563 = sub nsw i32 2129859010, %4562
  %4564 = bitcast i32 %4563 to float
  %4565 = fmul fast float %4564, %4560
  %4566 = fmul fast float %4565, %4565
  %4567 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4552)  ; FMax(a,b)
  %4568 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4559)  ; FMax(a,b)
  %4569 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4566)  ; FMax(a,b)
  %4570 = fsub fast float 1.000000e+00, %4455
  %4571 = fadd fast float %4570, %4471
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fsub fast float 1.000000e+00, %4447
  %4574 = fmul fast float %4513, %4573
  %4575 = fmul fast float %4516, %4516
  %4576 = fmul fast float %4575, %4574
  %4577 = fmul fast float %4576, %4518
  %4578 = fmul fast float %4573, 0xBFE99999A0000000
  %4579 = fmul fast float %4578, %4464
  %4580 = fmul fast float %4579, %4475
  %4581 = fadd fast float %4580, 1.000000e+00
  %4582 = fadd fast float %4059, -1.000000e+00
  %4583 = fmul fast float %4581, %4582
  %4584 = fadd fast float %4583, 1.000000e+00
  %4585 = fsub fast float %4567, %4056
  %4586 = fsub fast float %4568, %4057
  %4587 = fsub fast float %4569, %4058
  %4588 = fmul fast float %4577, %4585
  %4589 = fmul fast float %4577, %4586
  %4590 = fmul fast float %4577, %4587
  %4591 = fadd fast float %4588, %4056
  %4592 = fadd fast float %4589, %4057
  %4593 = fadd fast float %4590, %4058
  %4594 = fsub fast float %74, %4013
  %4595 = fsub fast float %75, %4014
  %4596 = fsub fast float %76, %4015
  %4597 = fmul fast float %4577, %4594
  %4598 = fmul fast float %4577, %4595
  %4599 = fmul fast float %4577, %4596
  %4600 = fadd fast float %4597, %4013
  %4601 = fadd fast float %4598, %4014
  %4602 = fadd fast float %4599, %4015
  %4603 = fmul fast float %4577, %4572
  %4604 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4605 = fsub fast float 1.000000e+00, %4604
  %4606 = fmul fast float %4603, %4605
  %4607 = fadd fast float %4606, %4604
  %4608 = fsub fast float 1.000000e+00, %3997
  %4609 = fmul fast float %4577, %4608
  %4610 = fadd fast float %4609, %3997
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = call float @dx.op.unary.f32(i32 25, float %4611)  ; Rsqrt(value)
  %4613 = fmul fast float %4600, %4612
  %4614 = fmul fast float %4601, %4612
  %4615 = fmul fast float %4602, %4612
  br label %4616

; <label>:4616                                    ; preds = %4454, %4433
  %4617 = phi float [ %4591, %4454 ], [ %4056, %4433 ]
  %4618 = phi float [ %4592, %4454 ], [ %4057, %4433 ]
  %4619 = phi float [ %4593, %4454 ], [ %4058, %4433 ]
  %4620 = phi float [ %4500, %4454 ], [ %4071, %4433 ]
  %4621 = phi float [ %4501, %4454 ], [ %4072, %4433 ]
  %4622 = phi float [ %4502, %4454 ], [ %4073, %4433 ]
  %4623 = phi float [ %4613, %4454 ], [ %4013, %4433 ]
  %4624 = phi float [ %4614, %4454 ], [ %4014, %4433 ]
  %4625 = phi float [ %4615, %4454 ], [ %4015, %4433 ]
  %4626 = phi float [ %4607, %4454 ], [ %4059, %4433 ]
  %4627 = phi float [ %4610, %4454 ], [ %3997, %4433 ]
  %4628 = select i1 %204, float 0.000000e+00, float %4619
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4451, float %4452, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fmul fast float %4631, 2.000000e+00
  %4633 = fmul fast float %4632, %4623
  %4634 = fmul fast float %4632, %4624
  %4635 = fmul fast float %4632, %4625
  %4636 = fsub fast float %150, %4633
  %4637 = fsub fast float %151, %4634
  %4638 = fsub fast float %152, %4635
  %4639 = call float @dx.op.binary.f32(i32 36, float %4627, float 1.000000e+00)  ; FMin(a,b)
  %4640 = fsub fast float 1.000000e+00, %4627
  %4641 = bitcast float %4640 to i32
  %4642 = sub nsw i32 2129859010, %4641
  %4643 = fsub fast float 1.000000e+00, %44
  %4644 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.binary.f32(i32 35, float %4644, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4646 = fdiv fast float %4643, %4645
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fmul fast float %4648, 5.000000e-01
  %4650 = fadd fast float %4649, 5.000000e-01
  %4651 = fmul fast float %4650, %44
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = fmul fast float %4653, %4646
  %4655 = fadd fast float %4651, %4654
  %4656 = fsub fast float 5.000000e-01, %4649
  %4657 = fmul fast float %4656, %4620
  %4658 = fmul fast float %4656, %4621
  %4659 = fmul fast float %4656, %4622
  %4660 = fadd fast float %4655, %4657
  %4661 = fadd fast float %4655, %4658
  %4662 = fadd fast float %4655, %4659
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, 5.000000e-01
  %4666 = fadd fast float %4665, 5.000000e-01
  %4667 = fmul fast float %4666, %44
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fmul fast float %4669, %4646
  %4671 = fadd fast float %4667, %4670
  %4672 = fsub fast float 5.000000e-01, %4665
  %4673 = fmul fast float %4672, %4620
  %4674 = fmul fast float %4672, %4621
  %4675 = fmul fast float %4672, %4622
  %4676 = fadd fast float %4671, %4673
  %4677 = fadd fast float %4671, %4674
  %4678 = fadd fast float %4671, %4675
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 0
  %4681 = call float @dx.op.binary.f32(i32 36, float %4620, float %4680)  ; FMin(a,b)
  %4682 = fsub fast float 1.000000e+00, %4639
  %4683 = fmul fast float %4681, %4682
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = bitcast float %4684 to i32
  %4686 = sub nsw i32 2129859010, %4685
  %4687 = bitcast i32 %4686 to float
  %4688 = call float @dx.op.binary.f32(i32 36, float %4621, float %4680)  ; FMin(a,b)
  %4689 = fmul fast float %4688, %4682
  %4690 = fsub fast float 1.000000e+00, %4689
  %4691 = bitcast float %4690 to i32
  %4692 = sub nsw i32 2129859010, %4691
  %4693 = bitcast i32 %4692 to float
  %4694 = call float @dx.op.binary.f32(i32 36, float %4622, float %4680)  ; FMin(a,b)
  %4695 = fmul fast float %4694, %4682
  %4696 = fsub fast float 1.000000e+00, %4695
  %4697 = bitcast float %4696 to i32
  %4698 = sub nsw i32 2129859010, %4697
  %4699 = bitcast i32 %4698 to float
  %4700 = fmul fast float %4639, %45
  %4701 = fmul fast float %4700, %4660
  %4702 = fmul fast float %4701, %4687
  %4703 = fmul fast float %4639, %46
  %4704 = fmul fast float %4703, %4661
  %4705 = fmul fast float %4704, %4693
  %4706 = fmul fast float %4639, %47
  %4707 = fmul fast float %4706, %4662
  %4708 = fmul fast float %4707, %4699
  %4709 = call float @dx.op.binary.f32(i32 36, float %4617, float %4680)  ; FMin(a,b)
  %4710 = fmul fast float %4709, %4682
  %4711 = fsub fast float 1.000000e+00, %4710
  %4712 = bitcast float %4711 to i32
  %4713 = sub nsw i32 2129859010, %4712
  %4714 = bitcast i32 %4713 to float
  %4715 = call float @dx.op.binary.f32(i32 36, float %4618, float %4680)  ; FMin(a,b)
  %4716 = fmul fast float %4715, %4682
  %4717 = fsub fast float 1.000000e+00, %4716
  %4718 = bitcast float %4717 to i32
  %4719 = sub nsw i32 2129859010, %4718
  %4720 = bitcast i32 %4719 to float
  %4721 = call float @dx.op.binary.f32(i32 36, float %4628, float %4680)  ; FMin(a,b)
  %4722 = fmul fast float %4721, %4682
  %4723 = fsub fast float 1.000000e+00, %4722
  %4724 = bitcast float %4723 to i32
  %4725 = sub nsw i32 2129859010, %4724
  %4726 = bitcast i32 %4725 to float
  %4727 = fmul fast float %4700, %4676
  %4728 = fmul fast float %4727, %4714
  %4729 = fmul fast float %4703, %4677
  %4730 = fmul fast float %4729, %4720
  %4731 = fmul fast float %4706, %4678
  %4732 = fmul fast float %4731, %4726
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4702, float %4705, float %4708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = select i1 %204, float 0.000000e+00, float %4702
  %4735 = select i1 %204, float %4733, float %4705
  %4736 = select i1 %204, float 0.000000e+00, float %4708
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4728, float %4730, float %4732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = select i1 %204, float 0.000000e+00, float %4728
  %4739 = select i1 %204, float %4737, float %4730
  %4740 = select i1 %204, float 0.000000e+00, float %4732
  %4741 = fmul fast float %4630, 9.843750e-01
  %4742 = fmul fast float %4626, 9.843750e-01
  %4743 = fadd fast float %4741, 7.812500e-03
  %4744 = fadd fast float %4742, 7.812500e-03
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4743, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 2
  %4747 = extractvalue %dx.types.ResRet.f32 %4745, 3
  %4748 = fmul fast float %4746, %4617
  %4749 = fmul fast float %4746, %4618
  %4750 = fmul fast float %4746, %4628
  %4751 = fadd fast float %4748, %4747
  %4752 = fadd fast float %4749, %4747
  %4753 = fadd fast float %4750, %4747
  %4754 = fcmp fast ogt float %3990, 0.000000e+00
  br i1 %4754, label %4755, label %4781

; <label>:4755                                    ; preds = %4616
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3990, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.ResRet.f32 %4756, 1
  %4759 = extractvalue %dx.types.ResRet.f32 %4756, 2
  %4760 = fadd fast float %4757, -5.000000e-01
  %4761 = fadd fast float %4758, -5.000000e-01
  %4762 = fadd fast float %4759, -5.000000e-01
  %4763 = fsub fast float 1.000000e+00, %4617
  %4764 = fsub fast float 1.000000e+00, %4618
  %4765 = fsub fast float 1.000000e+00, %4628
  %4766 = fmul fast float %4617, 4.000000e+00
  %4767 = fmul fast float %4766, %4763
  %4768 = fmul fast float %4767, %4760
  %4769 = fmul fast float %4618, 4.000000e+00
  %4770 = fmul fast float %4769, %4764
  %4771 = fmul fast float %4770, %4761
  %4772 = fmul fast float %4628, 4.000000e+00
  %4773 = fmul fast float %4772, %4765
  %4774 = fmul fast float %4773, %4762
  %4775 = fadd fast float %4768, %4751
  %4776 = fadd fast float %4771, %4752
  %4777 = fadd fast float %4774, %4753
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  br label %4781

; <label>:4781                                    ; preds = %4755, %4616
  %4782 = phi float [ %4778, %4755 ], [ %4751, %4616 ]
  %4783 = phi float [ %4779, %4755 ], [ %4752, %4616 ]
  %4784 = phi float [ %4780, %4755 ], [ %4753, %4616 ]
  %4785 = call float @dx.op.binary.f32(i32 35, float %4783, float %4784)  ; FMax(a,b)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4782, float %4785)  ; FMax(a,b)
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = fmul fast float %4787, %4734
  %4789 = fmul fast float %4787, %4735
  %4790 = fmul fast float %4787, %4736
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = fcmp fast ogt float %4791, 0x3E7FF19E20000000
  %4793 = fdiv fast float 1.000000e+00, %4791
  %4794 = select i1 %4792, float %4793, float 0.000000e+00
  %4795 = fmul fast float %4794, %4620
  %4796 = fmul fast float %4794, %4621
  %4797 = fmul fast float %4794, %4622
  %4798 = fadd fast float %4795, -1.000000e+00
  %4799 = fadd fast float %4796, -1.000000e+00
  %4800 = fadd fast float %4797, -1.000000e+00
  %4801 = fmul fast float %4798, 5.000000e-01
  %4802 = fmul fast float %4799, 5.000000e-01
  %4803 = fmul fast float %4800, 5.000000e-01
  %4804 = fadd fast float %4801, 1.000000e+00
  %4805 = fadd fast float %4802, 1.000000e+00
  %4806 = fadd fast float %4803, 1.000000e+00
  %4807 = fmul fast float %4782, %4738
  %4808 = fmul fast float %4783, %4739
  %4809 = fmul fast float %4784, %4740
  %4810 = fsub fast float 1.000000e+00, %4630
  %4811 = bitcast float %4810 to i32
  %4812 = sitofp i32 %4811 to float
  %4813 = fmul fast float %4812, 5.000000e+00
  %4814 = fadd fast float %4813, 0xC1EFBF8940000000
  %4815 = fptosi float %4814 to i32
  %4816 = bitcast i32 %4815 to float
  %4817 = fmul fast float %4816, %3989
  %4818 = fmul fast float %4734, %4817
  %4819 = fmul fast float %4818, %4787
  %4820 = fmul fast float %4819, %4804
  %4821 = fmul fast float %4735, %4817
  %4822 = fmul fast float %4821, %4787
  %4823 = fmul fast float %4822, %4805
  %4824 = fmul fast float %4736, %4817
  %4825 = fmul fast float %4824, %4787
  %4826 = fmul fast float %4825, %4806
  %4827 = fmul fast float %4788, %4037
  %4828 = fmul fast float %4789, %4037
  %4829 = fmul fast float %4790, %4037
  %4830 = fadd fast float %4807, %3991
  %4831 = fadd fast float %4830, %4820
  %4832 = fmul fast float %4831, %4037
  %4833 = fadd fast float %4808, %3992
  %4834 = fadd fast float %4833, %4823
  %4835 = fmul fast float %4834, %4037
  %4836 = fadd fast float %4809, %3993
  %4837 = fadd fast float %4836, %4826
  %4838 = fmul fast float %4837, %4037
  %4839 = bitcast i32 %4642 to float
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 3
  %4842 = fcmp fast oeq float %4841, 0.000000e+00
  br i1 %4842, label %5070, label %4843

; <label>:4843                                    ; preds = %4781
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
  %4855 = select i1 %204, float %4852, float %4848
  %4856 = select i1 %204, float %4854, float %4849
  %4857 = select i1 %204, float %4853, float %4850
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4860 = fcmp fast une float %4859, 0.000000e+00
  br i1 %4860, label %4861, label %4878

; <label>:4861                                    ; preds = %4843
  %4862 = fptoui float %67 to i32
  %4863 = fptoui float %68 to i32
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
  %4882 = fmul fast float %4880, %67
  %4883 = fmul fast float %4881, %68
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
  %4899 = fsub fast float %4844, %150
  %4900 = fsub fast float %4845, %151
  %4901 = fsub fast float %4846, %152
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float %4899, float %4900, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.unary.f32(i32 25, float %4902)  ; Rsqrt(value)
  %4904 = fmul fast float %4903, %4899
  %4905 = fmul fast float %4903, %4900
  %4906 = fmul fast float %4903, %4901
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %4904, float %4905, float %4906)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4910 = fmul fast float %4909, %4909
  %4911 = fmul fast float %4910, %4839
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, %4909
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4904, float %4905, float %4906)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %4954 = fsub fast float 1.000000e+00, %4617
  %4955 = fsub fast float 1.000000e+00, %4618
  %4956 = fsub fast float 1.000000e+00, %4628
  %4957 = fmul fast float %4953, %4954
  %4958 = fmul fast float %4953, %4955
  %4959 = fmul fast float %4953, %4956
  %4960 = fadd fast float %4957, %4617
  %4961 = fadd fast float %4958, %4618
  %4962 = fadd fast float %4959, %4628
  br i1 %4754, label %4963, label %4986

; <label>:4963                                    ; preds = %4895
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3990, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.ResRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.ResRet.f32 %4964, 2
  %4968 = fadd fast float %4965, -5.000000e-01
  %4969 = fadd fast float %4966, -5.000000e-01
  %4970 = fadd fast float %4967, -5.000000e-01
  %4971 = fmul fast float %4617, 4.000000e+00
  %4972 = fmul fast float %4971, %4954
  %4973 = fmul fast float %4972, %4968
  %4974 = fmul fast float %4618, 4.000000e+00
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
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4991, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 3
  %4995 = fmul fast float %4993, %4617
  %4996 = fmul fast float %4993, %4618
  %4997 = fmul fast float %4993, %4628
  %4998 = fadd fast float %4995, %4994
  %4999 = fadd fast float %4996, %4994
  %5000 = fadd fast float %4997, %4994
  br i1 %4754, label %5001, label %5024

; <label>:5001                                    ; preds = %4986
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3990, float %4907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.ResRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.ResRet.f32 %5002, 2
  %5006 = fadd fast float %5003, -5.000000e-01
  %5007 = fadd fast float %5004, -5.000000e-01
  %5008 = fadd fast float %5005, -5.000000e-01
  %5009 = fmul fast float %4617, 4.000000e+00
  %5010 = fmul fast float %5009, %4954
  %5011 = fmul fast float %5010, %5006
  %5012 = fmul fast float %4618, 4.000000e+00
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
  %5041 = fmul fast float %5040, %3989
  %5042 = fmul fast float %5030, %5041
  %5043 = fmul fast float %5042, %4804
  %5044 = fmul fast float %5042, %4805
  %5045 = fmul fast float %5042, %4806
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
  %5058 = fadd fast float %5050, %4788
  %5059 = fmul fast float %5058, %4037
  %5060 = fadd fast float %5052, %4789
  %5061 = fmul fast float %5060, %4037
  %5062 = fadd fast float %5054, %4790
  %5063 = fmul fast float %5062, %4037
  %5064 = fadd fast float %5055, %4831
  %5065 = fmul fast float %5064, %4037
  %5066 = fadd fast float %5056, %4834
  %5067 = fmul fast float %5066, %4037
  %5068 = fadd fast float %5057, %4837
  %5069 = fmul fast float %5068, %4037
  br label %5070

; <label>:5070                                    ; preds = %5024, %4888, %4781
  %5071 = phi float [ %4832, %4781 ], [ %4832, %4888 ], [ %5065, %5024 ]
  %5072 = phi float [ %4835, %4781 ], [ %4835, %4888 ], [ %5067, %5024 ]
  %5073 = phi float [ %4838, %4781 ], [ %4838, %4888 ], [ %5069, %5024 ]
  %5074 = phi float [ %4827, %4781 ], [ %4827, %4888 ], [ %5059, %5024 ]
  %5075 = phi float [ %4828, %4781 ], [ %4828, %4888 ], [ %5061, %5024 ]
  %5076 = phi float [ %4829, %4781 ], [ %4829, %4888 ], [ %5063, %5024 ]
  %5077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.i32 %5077, 0
  %5079 = icmp eq i32 %5078, 0
  br i1 %5079, label %5514, label %5080

; <label>:5080                                    ; preds = %5070
  %5081 = fptoui float %67 to i32
  %5082 = fptoui float %68 to i32
  %5083 = lshr i32 %5081, 4
  %5084 = lshr i32 %5082, 4
  %5085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.i32 %5085, 0
  %5087 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5084, i32 %5086, i32 %5083)  ; UMad(a,b,c)
  %5088 = add nsw i32 %5078, -1
  %5089 = call i32 @dx.op.binary.i32(i32 37, i32 %5088, i32 0)  ; IMax(a,b)
  %5090 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
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
  %5170 = select i1 %204, float %5167, float %5151
  %5171 = select i1 %204, float %5169, float %5152
  %5172 = select i1 %204, float %5168, float %5153
  %5173 = fsub fast float %5162, %130
  %5174 = fsub fast float %5163, %131
  %5175 = fsub fast float %5164, %132
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
  %5228 = fsub fast float %5164, %4434
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  %5230 = fsub fast float %132, %4434
  %5231 = fcmp fast ogt float %5230, 0.000000e+00
  %5232 = xor i1 %5231, %5229
  %5233 = fsub fast float %4434, %5164
  %5234 = fmul fast float %5233, 2.000000e+00
  %5235 = fadd fast float %5234, %5164
  %5236 = select i1 %5232, float %5164, float %5235
  %5237 = fsub fast float %5236, %132
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5237, float %5173, float %5174, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.unary.f32(i32 25, float %5238)  ; Rsqrt(value)
  %5240 = fmul fast float %5239, %5173
  %5241 = fmul fast float %5239, %5174
  %5242 = fmul fast float %5239, %5237
  %5243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5254 = fsub fast float %5236, %4434
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
  %5276 = fsub fast float %130, %5162
  %5277 = fsub fast float %131, %5163
  %5278 = fsub fast float %132, %5236
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
  %5290 = fmul fast float %4435, 0x3FF7154760000000
  %5291 = fmul fast float %5290, %5289
  %5292 = fmul fast float %4436, 0x3FF7154760000000
  %5293 = fmul fast float %5292, %5289
  %5294 = fmul fast float %4437, 0x3FF7154760000000
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
  %5305 = fsub fast float %5179, %150
  %5306 = fsub fast float %5180, %151
  %5307 = fsub fast float %5181, %152
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5305, float %5306, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5309, %5305
  %5311 = fmul fast float %5309, %5306
  %5312 = fmul fast float %5309, %5307
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5316 = fmul fast float %5315, %5186
  %5317 = fmul fast float %5315, %5315
  %5318 = fmul fast float %5317, %4839
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fmul fast float %5316, %5319
  %5321 = bitcast float %5176 to i32
  %5322 = ashr i32 %5321, 1
  %5323 = sub nsw i32 1597463007, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = fmul fast float %5324, %5173
  %5326 = fmul fast float %5324, %5174
  %5327 = fmul fast float %5324, %5175
  %5328 = fsub fast float %5325, %150
  %5329 = fsub fast float %5326, %151
  %5330 = fsub fast float %5327, %152
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5328, float %5329, float %5330, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5328, %5332
  %5334 = fmul fast float %5329, %5332
  %5335 = fmul fast float %5330, %5332
  %5336 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5390 = fsub fast float 1.000000e+00, %4617
  %5391 = fsub fast float 1.000000e+00, %4618
  %5392 = fsub fast float 1.000000e+00, %4628
  %5393 = fmul fast float %5389, %5390
  %5394 = fmul fast float %5389, %5391
  %5395 = fmul fast float %5389, %5392
  %5396 = fadd fast float %5393, %4617
  %5397 = fadd fast float %5394, %4618
  %5398 = fadd fast float %5395, %4628
  br i1 %4754, label %5399, label %5422

; <label>:5399                                    ; preds = %5285
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3990, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.ResRet.f32 %5400, 2
  %5404 = fadd fast float %5401, -5.000000e-01
  %5405 = fadd fast float %5402, -5.000000e-01
  %5406 = fadd fast float %5403, -5.000000e-01
  %5407 = fmul fast float %4617, 4.000000e+00
  %5408 = fmul fast float %5407, %5390
  %5409 = fmul fast float %5408, %5404
  %5410 = fmul fast float %4618, 4.000000e+00
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
  %5428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5427, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 2
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 3
  %5431 = fmul fast float %5429, %4617
  %5432 = fmul fast float %5429, %4618
  %5433 = fmul fast float %5429, %4628
  %5434 = fadd fast float %5431, %5430
  %5435 = fadd fast float %5432, %5430
  %5436 = fadd fast float %5433, %5430
  br i1 %4754, label %5437, label %5460

; <label>:5437                                    ; preds = %5422
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3990, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.ResRet.f32 %5438, 2
  %5442 = fadd fast float %5439, -5.000000e-01
  %5443 = fadd fast float %5440, -5.000000e-01
  %5444 = fadd fast float %5441, -5.000000e-01
  %5445 = fmul fast float %4617, 4.000000e+00
  %5446 = fmul fast float %5445, %5390
  %5447 = fmul fast float %5446, %5442
  %5448 = fmul fast float %4618, 4.000000e+00
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
  %5477 = fmul fast float %5476, %3989
  %5478 = fmul fast float %5466, %5477
  %5479 = fmul fast float %5478, %4804
  %5480 = fmul fast float %5478, %4805
  %5481 = fmul fast float %5478, %4806
  %5482 = fadd fast float %5479, %5467
  %5483 = fadd fast float %5480, %5468
  %5484 = fadd fast float %5481, %5469
  %5485 = fmul fast float %5302, %4037
  %5486 = fmul fast float %5485, %5320
  %5487 = fmul fast float %5486, %5466
  %5488 = fmul fast float %5303, %4037
  %5489 = fmul fast float %5488, %5320
  %5490 = fmul fast float %5489, %5466
  %5491 = fmul fast float %5304, %4037
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
  %5521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5522 = extractvalue %dx.types.ResRet.i32 %5521, 3
  %5523 = bitcast i32 %5522 to float
  %5524 = fsub fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5524, %164
  %5526 = fadd fast float %5525, %5523
  %5527 = call float @dx.op.unary.f32(i32 24, float %4620)  ; Sqrt(value)
  %5528 = call float @dx.op.unary.f32(i32 24, float %4621)  ; Sqrt(value)
  %5529 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %5530 = fmul fast float %5527, %5518
  %5531 = fmul fast float %5528, %5519
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 0
  br i1 %204, label %5534, label %5563

; <label>:5534                                    ; preds = %5514
  %5535 = fadd fast float %5520, %3987
  %5536 = fmul fast float %5535, %3988
  %5537 = fsub fast float 1.000000e+00, %3988
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 3
  %5541 = fmul fast float %5540, %5538
  %5542 = fadd fast float %5541, %5536
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = fmul fast float %5544, %4810
  %5546 = fsub fast float %5542, %5545
  %5547 = fadd fast float %5531, %5530
  %5548 = fmul fast float %5533, %5547
  %5549 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5550 = fsub fast float %5546, %5549
  %5551 = extractvalue %dx.types.CBufRet.f32 %5539, 2
  %5552 = fmul fast float %5550, %5551
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5556 = fsub fast float %5553, %5555
  %5557 = fmul fast float %5556, 1.000000e+01
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fsub fast float %3986, %5526
  %5560 = fmul fast float %5558, %5559
  %5561 = fadd fast float %5560, %5526
  %5562 = fmul fast float %5561, %5553
  br label %5579

; <label>:5563                                    ; preds = %5514
  %5564 = fmul fast float %5529, %5520
  %5565 = fmul fast float %5533, %5530
  %5566 = fmul fast float %5533, %5531
  %5567 = fmul fast float %5564, %5533
  %5568 = add i32 %33, 356
  %5569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5568, i32 undef)  ; BufferLoad(srv,index,wot)
  %5570 = extractvalue %dx.types.ResRet.i32 %5569, 0
  %5571 = and i32 %5570, 32
  %5572 = icmp eq i32 %5571, 0
  br i1 %5572, label %5579, label %5573

; <label>:5573                                    ; preds = %5563
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = fmul fast float %5575, 0x3FE99999A0000000
  %5577 = fadd fast float %5575, %5565
  %5578 = fadd fast float %5576, %5567
  br label %5579

; <label>:5579                                    ; preds = %5573, %5563, %5534
  %5580 = phi float [ %5548, %5534 ], [ %5577, %5573 ], [ %5565, %5563 ]
  %5581 = phi float [ %5562, %5534 ], [ %5566, %5573 ], [ %5566, %5563 ]
  %5582 = phi float [ %5561, %5534 ], [ %5578, %5573 ], [ %5567, %5563 ]
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = fmul fast float %5584, %5516
  %5586 = fmul fast float %5584, %5517
  %5587 = fadd fast float %5516, %5515
  %5588 = select i1 %204, float %5587, float %5515
  %5589 = fmul float %5588, %5584
  %5590 = select i1 %204, float 0.000000e+00, float %5585
  %5591 = select i1 %204, float 0.000000e+00, float %5586
  %5592 = fmul fast float %5580, %5527
  %5593 = fmul fast float %5581, %5528
  %5594 = fmul fast float %5582, %5529
  %5595 = fadd fast float %5589, %5592
  %5596 = fadd fast float %5590, %5593
  %5597 = fadd fast float %5591, %5594
  %5598 = select i1 %204, float %5581, float %5596
  %5599 = select i1 %204, float %5582, float %5597
  %5600 = call float @dx.op.binary.f32(i32 36, float %5595, float 3.225500e+04)  ; FMin(a,b)
  %5601 = call float @dx.op.binary.f32(i32 36, float %5598, float 3.225500e+04)  ; FMin(a,b)
  %5602 = call float @dx.op.binary.f32(i32 36, float %5599, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

