;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: 61b543a43c86b8e1593e853735b553dc
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
;   [128 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     u32          2d     T20     t56,space2     1
;                                   texture     f32     2darray     T21     t35,space2     1
;                                   texture     f32          2d     T22     t34,space2     1
;                                   texture     f32          3d     T23     t31,space2     1
;                                   texture     f32          1d     T24     t30,space2     1
;                                   texture     f32          3d     T25     t44,space2     1
;                                   texture     f32          3d     T26     t45,space2     1
;                                   texture     f32     2darray     T27     t47,space2     1
;                                   textureunorm_f32     2darray     T28     t85,space2     1
;                                   texture     f32          2d     T29     t83,space2     1
;                                   texture     f32          2d     T30     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = alloca [3 x float], align 4
  %69 = alloca [3 x float], align 4
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %64
  %75 = fmul fast float %73, %65
  %76 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %80, %55
  %82 = fmul fast float %80, %56
  %83 = fmul fast float %80, %57
  %84 = fmul fast float %56, %53
  %85 = fmul fast float %57, %52
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %57, %51
  %88 = fmul fast float %55, %53
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %55, %52
  %91 = fmul fast float %56, %51
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %54
  %94 = fmul fast float %89, %54
  %95 = fmul fast float %92, %54
  %96 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = bitcast float %96 to i32
  %98 = ashr i32 %97, 1
  %99 = sub nsw i32 1597250115, %98
  %100 = bitcast i32 %99 to float
  %101 = fmul fast float %100, %44
  %102 = fmul fast float %100, %45
  %103 = fmul fast float %100, %46
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %74, 2.000000e+00
  %108 = fmul fast float %107, %105
  %109 = fmul fast float %75, 2.000000e+00
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %67
  %138 = fmul fast float %134, %67
  %139 = fmul fast float %136, %67
  %140 = fmul fast float %74, 5.000000e-01
  %141 = fmul fast float %75, 5.000000e-01
  %142 = fptosi float %140 to i32
  %143 = fptosi float %141 to i32
  %144 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %142, i32 %143, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = lshr i32 %145, 18
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, 0x3F4C00EBA0000000
  %149 = call float @dx.op.unary.f32(i32 21, float %148)  ; Exp(value)
  %150 = fadd fast float %149, -1.000000e+00
  %151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %152 = extractvalue %dx.types.Dimensions %151, 0
  %153 = sitofp i32 %152 to float
  %154 = extractvalue %dx.types.Dimensions %151, 1
  %155 = sitofp i32 %154 to float
  %156 = fcmp fast oge float %140, %153
  %157 = fcmp fast oge float %141, %155
  %158 = or i1 %156, %157
  %159 = select i1 %158, float 0x4197782600000000, float %150
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %163 = fmul fast float %161, %74
  %164 = fmul fast float %162, %75
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = and i32 %166, 114688
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %168, float %163, float 0.000000e+00
  %170 = select i1 %168, float %164, float 0.000000e+00
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %32, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = fmul fast float %172, 2.550000e+02
  %174 = fptoui float %173 to i32
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 3
  %178 = and i32 %177, 3
  %179 = icmp ne i32 %178, 0
  %180 = and i32 %177, 4
  %181 = icmp ne i32 %180, 0
  %182 = and i1 %179, %181
  br i1 %182, label %183, label %194

; <label>:183                                     ; preds = %0
  %184 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %185 = fmul fast float %184, %75
  %186 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %187 = fmul fast float %186, %74
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %187, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fsub fast float 1.000000e+00, %189
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = fcmp fast olt float %190, %192
  br label %197

; <label>:194                                     ; preds = %0
  %195 = icmp eq i32 %180, 0
  %196 = and i1 %179, %195
  br label %197

; <label>:197                                     ; preds = %194, %183
  %198 = phi i1 [ %193, %183 ], [ %196, %194 ]
  %199 = add i32 %35, 156
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = shl i32 %201, 4
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %201, 7
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %201, 22
  %209 = shl nuw nsw i32 %208, 5
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = add i32 %35, 216
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 255
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = lshr i32 %213, 8
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = lshr i32 %213, 16
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = add i32 %35, 36
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %227, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %35, 288
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %236, 0x3F50624DE0000000
  %240 = fmul fast float %238, 0x3F50624DE0000000
  %241 = add i32 %35, 172
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %35, 232
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %35, 52
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %35, 304
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %35, 188
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %35, 248
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %35, 68
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %35, 320
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = add i32 %35, 204
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = shl i32 %327, 4
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %327, 7
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 22
  %335 = shl nuw nsw i32 %334, 5
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %35, 264
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %339, 8
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %339, 16
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = add i32 %35, 84
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %35, 336
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = fmul fast float %362, 0x3F50624DE0000000
  %366 = fmul fast float %364, 0x3F50624DE0000000
  %367 = add i32 %35, 364
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 32
  %371 = icmp eq i32 %370, 0
  %372 = and i32 %369, 64
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %369, 128
  %375 = icmp eq i32 %374, 0
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 2
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %395, label %380

; <label>:380                                     ; preds = %197
  %381 = add i32 %35, 488
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %385, %dx.types.Handle %71, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = extractvalue %dx.types.ResRet.f32 %386, 3
  %391 = fmul fast float %390, %60
  %392 = fmul fast float %387, %61
  %393 = fmul fast float %388, %62
  %394 = fmul fast float %389, %63
  br label %395

; <label>:395                                     ; preds = %380, %197
  %396 = phi float [ %63, %197 ], [ %394, %380 ]
  %397 = phi float [ %62, %197 ], [ %393, %380 ]
  %398 = phi float [ %61, %197 ], [ %392, %380 ]
  %399 = phi float [ %60, %197 ], [ %391, %380 ]
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %423, label %404

; <label>:404                                     ; preds = %395
  %405 = add i32 %35, 44
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %398, float 1.000000e+00
  %411 = add i32 %35, 60
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %397, float 1.000000e+00
  %417 = add i32 %35, 76
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %396, float 1.000000e+00
  br label %423

; <label>:423                                     ; preds = %404, %395
  %424 = phi float [ %396, %395 ], [ %422, %404 ]
  %425 = phi float [ %397, %395 ], [ %416, %404 ]
  %426 = phi float [ %398, %395 ], [ %410, %404 ]
  %427 = lshr i32 %401, 20
  %428 = and i32 %427, 3
  %429 = add nuw nsw i32 %428, 1
  %430 = add i32 %35, 24
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = add i32 %35, 28
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = or i32 %435, %432
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %1087, label %438

; <label>:438                                     ; preds = %423
  %439 = and i32 %432, 262144
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %38, float 1.000000e+00
  %442 = select i1 %440, float %39, float 0.000000e+00
  %443 = select i1 %440, float %40, float 0.000000e+00
  %444 = select i1 %440, float %41, float 1.000000e+00
  %445 = select i1 %440, float %42, float %58
  %446 = select i1 %440, float %43, float %59
  %447 = add i32 %35, 284
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = fmul fast float %451, 0x3F50624DE0000000
  %453 = add i32 %35, 88
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 16
  %457 = and i32 %456, 255
  %458 = lshr i32 %455, 24
  %459 = add i32 %35, 292
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = add i32 %35, 32
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 22
  %470 = shl nuw nsw i32 %469, 5
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = shl i32 %468, 4
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 7
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %480 = fmul fast float %479, 1.000000e+03
  %481 = fmul fast float %239, %480
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fadd fast float %482, %229
  %484 = fmul fast float %240, %480
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fadd fast float %485, %231
  %487 = fmul fast float %452, %480
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fmul fast float %488, 0x401921FB60000000
  %490 = fadd fast float %489, %471
  %491 = call float @dx.op.unary.f32(i32 13, float %490)  ; Sin(value)
  %492 = call float @dx.op.unary.f32(i32 12, float %490)  ; Cos(value)
  %493 = fsub fast float -0.000000e+00, %491
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fadd fast float %446, -5.000000e-01
  %496 = fmul fast float %463, %494
  %497 = fmul fast float %465, %495
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fadd fast float %497, 5.000000e-01
  %500 = fmul fast float %474, %498
  %501 = fmul fast float %477, %499
  %502 = fmul fast float %492, %500
  %503 = call float @dx.op.tertiary.f32(i32 46, float %493, float %501, float %502)  ; FMad(a,b,c)
  %504 = fmul fast float %491, %500
  %505 = call float @dx.op.tertiary.f32(i32 46, float %492, float %501, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %483, %503
  %507 = fadd fast float %486, %505
  %508 = icmp ugt i32 %457, 1
  %509 = icmp ugt i32 %455, 33554431
  %510 = or i1 %509, %508
  br i1 %510, label %511, label %536

; <label>:511                                     ; preds = %438
  %512 = add i32 %35, 228
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %479, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = mul nuw nsw i32 %457, %458
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %518, %520
  %522 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %523 = fptoui float %522 to i32
  %524 = urem i32 %523, %457
  %525 = udiv i32 %523, %458
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %528 = uitofp i32 %524 to float
  %529 = uitofp i32 %525 to float
  %530 = fadd fast float %526, %528
  %531 = fadd fast float %527, %529
  %532 = uitofp i32 %457 to float
  %533 = uitofp i32 %458 to float
  %534 = fdiv fast float %530, %532
  %535 = fdiv fast float %531, %533
  br label %536

; <label>:536                                     ; preds = %511, %438
  %537 = phi float [ %534, %511 ], [ %506, %438 ]
  %538 = phi float [ %535, %511 ], [ %507, %438 ]
  %539 = and i32 %432, 16777216
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %650, label %541

; <label>:541                                     ; preds = %536
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = fadd fast float %543, %137
  %547 = fadd fast float %544, %138
  %548 = fadd fast float %545, %139
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %552 = icmp eq i32 %36, 65535
  br i1 %552, label %647, label %553

; <label>:553                                     ; preds = %541
  %554 = lshr i32 %36, 1
  %555 = shl i32 %554, 2
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %36, 1
  %559 = icmp ne i32 %558, 0
  %560 = lshr i32 %557, 16
  %561 = and i32 %557, 65535
  %562 = select i1 %559, i32 %560, i32 %561
  %563 = icmp eq i32 %562, 65535
  br i1 %563, label %643, label %564

; <label>:564                                     ; preds = %553
  %565 = mul nuw nsw i32 %562, 40
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = add nuw nsw i32 %565, 12
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = add nuw nsw i32 %565, 24
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = add nuw nsw i32 %565, 36
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = fsub fast float %546, %567
  %584 = fsub fast float %547, %568
  %585 = fsub fast float %548, %569
  %586 = fmul fast float %582, %583
  %587 = fmul fast float %582, %584
  %588 = fmul fast float %582, %585
  %589 = call float @dx.op.unary.f32(i32 27, float %586)  ; Round_ni(value)
  %590 = call float @dx.op.unary.f32(i32 27, float %587)  ; Round_ni(value)
  %591 = call float @dx.op.unary.f32(i32 27, float %588)  ; Round_ni(value)
  %592 = fadd fast float %589, 5.000000e-01
  %593 = fadd fast float %590, 5.000000e-01
  %594 = fadd fast float %591, 5.000000e-01
  %595 = fmul fast float %592, %572
  %596 = fmul fast float %593, %573
  %597 = fmul fast float %594, %574
  %598 = shl i32 %36, 2
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = add i32 %600, 0
  %602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %603 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %604 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %605 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %602, %dx.types.Handle %32, float %603, float %604, float %605, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = fmul fast float %607, 1.023000e+03
  %611 = fmul fast float %608, 1.023000e+03
  %612 = fmul fast float %609, 1.023000e+03
  %613 = fadd fast float %610, 5.000000e-01
  %614 = fadd fast float %611, 5.000000e-01
  %615 = fadd fast float %612, 5.000000e-01
  %616 = call float @dx.op.unary.f32(i32 27, float %613)  ; Round_ni(value)
  %617 = call float @dx.op.unary.f32(i32 27, float %614)  ; Round_ni(value)
  %618 = call float @dx.op.unary.f32(i32 27, float %615)  ; Round_ni(value)
  %619 = fsub fast float %586, %589
  %620 = fsub fast float %587, %590
  %621 = fsub fast float %588, %591
  %622 = fmul fast float %619, 7.500000e-01
  %623 = fmul fast float %620, 7.500000e-01
  %624 = fmul fast float %621, 7.500000e-01
  %625 = fadd fast float %589, 1.250000e-01
  %626 = fadd fast float %625, %622
  %627 = fadd fast float %626, %616
  %628 = fadd fast float %590, 1.250000e-01
  %629 = fadd fast float %628, %623
  %630 = fadd fast float %629, %617
  %631 = fadd fast float %591, 1.250000e-01
  %632 = fadd fast float %631, %624
  %633 = fadd fast float %632, %618
  %634 = fmul fast float %627, %577
  %635 = fmul fast float %630, %578
  %636 = fmul fast float %633, %579
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = add i32 %638, 0
  %640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %640, %dx.types.Handle %30, float %634, float %635, float %636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  br label %643

; <label>:643                                     ; preds = %564, %553
  %644 = phi float [ %642, %564 ], [ -1.000000e+00, %553 ]
  %645 = fadd fast float %644, %551
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  br label %647

; <label>:647                                     ; preds = %643, %541
  %648 = phi float [ %646, %643 ], [ %551, %541 ]
  %649 = fmul fast float %648, %399
  br label %650

; <label>:650                                     ; preds = %647, %536
  %651 = phi float [ %649, %647 ], [ %399, %536 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 256
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %702, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %35, 440
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %71, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = add i32 %35, 100
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = shl i32 %666, 4
  %668 = and i32 %667, 32752
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %666, 7
  %671 = and i32 %670, 32752
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = fsub fast float 1.000000e+00, %651
  %674 = call float @dx.op.binary.f32(i32 35, float %673, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %675 = bitcast float %651 to i32
  %676 = sitofp i32 %675 to float
  %677 = fadd fast float %676, 0xC1CFBF8940000000
  %678 = fmul fast float %672, %677
  %679 = fadd fast float %678, 0x41CFBF8940000000
  %680 = fptosi float %679 to i32
  %681 = bitcast i32 %680 to float
  %682 = bitcast float %674 to i32
  %683 = sitofp i32 %682 to float
  %684 = fadd fast float %683, 0xC1CFBF8940000000
  %685 = fmul fast float %684, %672
  %686 = fadd fast float %685, 0x41CFBF8940000000
  %687 = fptosi float %686 to i32
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %681, %669
  %690 = fmul fast float %688, %669
  %691 = fsub fast float %674, %689
  %692 = fadd fast float %690, %674
  %693 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %695 = fsub fast float %663, %693
  %696 = fsub fast float %694, %693
  %697 = bitcast float %696 to i32
  %698 = sub nsw i32 2129859010, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %699, %695
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  br label %702

; <label>:702                                     ; preds = %656, %650
  %703 = phi float [ %701, %656 ], [ %651, %650 ]
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 128
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %724, label %708

; <label>:708                                     ; preds = %702
  %709 = add i32 %35, 424
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %71, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 524288
  %719 = icmp ne i32 %718, 0
  %720 = fcmp fast ogt float %715, 0x3FE0101020000000
  %721 = select i1 %720, float 1.000000e+00, float 0.000000e+00
  %722 = select i1 %719, float %721, float %715
  %723 = fmul fast float %722, %703
  br label %724

; <label>:724                                     ; preds = %708, %702
  %725 = phi float [ %723, %708 ], [ %703, %702 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 16
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %928, label %730

; <label>:730                                     ; preds = %724
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %35, 376
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %70, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = and i32 %732, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %732, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %742, %744
  %749 = fadd fast float %748, %747
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 512
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %763, label %755

; <label>:755                                     ; preds = %730
  %756 = add i32 %35, 456
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %758, 0
  %760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %760, %dx.types.Handle %71, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  br label %763

; <label>:763                                     ; preds = %755, %730
  %764 = phi float [ %762, %755 ], [ 1.000000e+00, %730 ]
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 33554432
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %875, label %769

; <label>:769                                     ; preds = %763
  %770 = add i32 %35, 224
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %772, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = add i32 %35, 228
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 65535
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 24
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = and i32 %783, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F70101020000000
  %790 = lshr i32 %783, 8
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = lshr i32 %783, 16
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = add i32 %35, 220
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = lshr i32 %800, 24
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F70101020000000
  %804 = and i32 %800, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = lshr i32 %800, 8
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F70101020000000
  %811 = lshr i32 %800, 16
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101020000000
  %815 = bitcast float %739 to i32
  %816 = ashr i32 %815, 1
  %817 = sub nsw i32 1597463174, %816
  %818 = bitcast i32 %817 to float
  %819 = fmul fast float %739, 5.000000e-01
  %820 = fmul fast float %818, %818
  %821 = fmul fast float %820, %819
  %822 = fsub fast float 1.500000e+00, %821
  %823 = fmul fast float %818, %739
  %824 = fmul fast float %823, %822
  %825 = bitcast float %740 to i32
  %826 = ashr i32 %825, 1
  %827 = sub nsw i32 1597463174, %826
  %828 = bitcast i32 %827 to float
  %829 = fmul fast float %740, 5.000000e-01
  %830 = fmul fast float %828, %828
  %831 = fmul fast float %830, %829
  %832 = fsub fast float 1.500000e+00, %831
  %833 = fmul fast float %828, %740
  %834 = fmul fast float %833, %832
  %835 = bitcast float %741 to i32
  %836 = ashr i32 %835, 1
  %837 = sub nsw i32 1597463174, %836
  %838 = bitcast i32 %837 to float
  %839 = fmul fast float %741, 5.000000e-01
  %840 = fmul fast float %838, %838
  %841 = fmul fast float %840, %839
  %842 = fsub fast float 1.500000e+00, %841
  %843 = fmul fast float %838, %741
  %844 = fmul fast float %843, %842
  %845 = fsub fast float %824, %806
  %846 = fsub fast float %834, %810
  %847 = fsub fast float %844, %814
  %848 = fmul fast float %845, %774
  %849 = fmul fast float %846, %776
  %850 = fmul fast float %847, %781
  %851 = fadd fast float %848, %789
  %852 = fadd fast float %849, %793
  %853 = fadd fast float %850, %797
  %854 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %855 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %856 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %857 = fmul fast float %854, %854
  %858 = fmul fast float %855, %855
  %859 = fmul fast float %856, %856
  %860 = fsub fast float %857, %739
  %861 = fsub fast float %858, %740
  %862 = fsub fast float %859, %741
  %863 = fmul fast float %860, %764
  %864 = fmul fast float %861, %764
  %865 = fmul fast float %862, %764
  %866 = fadd fast float %863, %739
  %867 = fadd fast float %864, %740
  %868 = fadd fast float %865, %741
  %869 = fadd fast float %786, %750
  %870 = fsub fast float %869, %803
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = fsub fast float %871, %750
  %873 = fmul fast float %872, %764
  %874 = fadd fast float %873, %750
  br label %928

; <label>:875                                     ; preds = %763
  %876 = and i32 %766, 134217728
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %912, label %878

; <label>:878                                     ; preds = %875
  %879 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %880 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %881 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %882 = fadd fast float %879, -5.000000e-01
  %883 = fadd fast float %880, -5.000000e-01
  %884 = fadd fast float %881, -5.000000e-01
  %885 = fmul fast float %882, %764
  %886 = fmul fast float %883, %764
  %887 = fmul fast float %884, %764
  %888 = fadd fast float %885, 5.000000e-01
  %889 = fadd fast float %886, 5.000000e-01
  %890 = fadd fast float %887, 5.000000e-01
  %891 = call float @dx.op.unary.f32(i32 24, float %739)  ; Sqrt(value)
  %892 = call float @dx.op.unary.f32(i32 24, float %740)  ; Sqrt(value)
  %893 = call float @dx.op.unary.f32(i32 24, float %741)  ; Sqrt(value)
  %894 = fmul fast float %888, 2.000000e+00
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %891
  %897 = fadd fast float %896, %894
  %898 = fmul fast float %897, %891
  %899 = fmul fast float %889, 2.000000e+00
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %892
  %902 = fadd fast float %901, %899
  %903 = fmul fast float %902, %892
  %904 = fmul fast float %890, 2.000000e+00
  %905 = fsub fast float 1.000000e+00, %904
  %906 = fmul fast float %905, %893
  %907 = fadd fast float %906, %904
  %908 = fmul fast float %907, %893
  %909 = fmul fast float %898, %898
  %910 = fmul fast float %903, %903
  %911 = fmul fast float %908, %908
  br label %928

; <label>:912                                     ; preds = %875
  %913 = fmul fast float %216, %216
  %914 = fmul fast float %220, %220
  %915 = fmul fast float %224, %224
  %916 = fadd fast float %913, -1.000000e+00
  %917 = fadd fast float %914, -1.000000e+00
  %918 = fadd fast float %915, -1.000000e+00
  %919 = fmul fast float %764, %916
  %920 = fmul fast float %764, %917
  %921 = fmul fast float %764, %918
  %922 = fadd fast float %919, 1.000000e+00
  %923 = fadd fast float %920, 1.000000e+00
  %924 = fadd fast float %921, 1.000000e+00
  %925 = fmul fast float %922, %739
  %926 = fmul fast float %923, %740
  %927 = fmul fast float %924, %741
  br label %928

; <label>:928                                     ; preds = %912, %878, %769, %724
  %929 = phi float [ %874, %769 ], [ %750, %878 ], [ %750, %912 ], [ 0x3FA23C0BE0000000, %724 ]
  %930 = phi float [ %866, %769 ], [ %909, %878 ], [ %925, %912 ], [ 1.000000e+00, %724 ]
  %931 = phi float [ %867, %769 ], [ %910, %878 ], [ %926, %912 ], [ 1.000000e+00, %724 ]
  %932 = phi float [ %868, %769 ], [ %911, %878 ], [ %927, %912 ], [ 1.000000e+00, %724 ]
  %933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.i32 %933, 1
  %935 = and i32 %934, 1
  %936 = icmp ne i32 %935, 0
  %937 = add i32 %35, 372
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 32
  %941 = icmp ne i32 %940, 0
  %942 = and i1 %936, %941
  %943 = select i1 %942, float 1.000000e+00, float %930
  %944 = select i1 %942, float 0x3FD3333340000000, float %931
  %945 = select i1 %942, float 0x3FD3333340000000, float %932
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 32
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %1022, label %950

; <label>:950                                     ; preds = %928
  %951 = add i32 %35, 92
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = add i32 %35, 392
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = add i32 %956, 0
  %958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %958, %dx.types.Handle %70, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = extractvalue %dx.types.ResRet.f32 %959, 3
  %964 = and i32 %953, 255
  %965 = uitofp i32 %964 to float
  %966 = lshr i32 %953, 8
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = lshr i32 %953, 16
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101000000000
  %973 = fmul fast float %960, %965
  %974 = fadd fast float %973, %968
  %975 = fmul fast float %974, 0x3F70101000000000
  %976 = fadd fast float %961, -5.000000e-01
  %977 = fadd fast float %963, -5.000000e-01
  %978 = fmul fast float %976, %972
  %979 = fmul fast float %977, %972
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fadd fast float %979, 5.000000e-01
  %982 = fmul fast float %980, 2.000000e+00
  %983 = fadd fast float %982, -1.000000e+00
  %984 = fmul fast float %981, 2.000000e+00
  %985 = fadd fast float %984, -1.000000e+00
  %986 = fadd fast float %983, %985
  %987 = fmul fast float %986, 5.000000e-01
  %988 = fsub fast float %983, %985
  %989 = fmul fast float %988, 5.000000e-01
  %990 = call float @dx.op.unary.f32(i32 6, float %987)  ; FAbs(value)
  %991 = fsub fast float 1.000000e+00, %990
  %992 = call float @dx.op.unary.f32(i32 6, float %989)  ; FAbs(value)
  %993 = fsub fast float %991, %992
  %994 = call float @dx.op.dot3.f32(i32 55, float %987, float %989, float %993, float %987, float %989, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call float @dx.op.unary.f32(i32 25, float %994)  ; Rsqrt(value)
  %996 = fmul fast float %987, %995
  %997 = fmul fast float %989, %995
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 67108864
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1018, label %1002

; <label>:1002                                    ; preds = %950
  %1003 = add i32 %35, 280
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 65535
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 65535
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %1005, 16
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = fsub fast float %975, %1013
  %1015 = fmul fast float %1014, %1007
  %1016 = fadd fast float %1015, %1011
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  br label %1018

; <label>:1018                                    ; preds = %1002, %950
  %1019 = phi float [ %1017, %1002 ], [ %975, %950 ]
  %1020 = call float @dx.op.dot2.f32(i32 54, float %996, float %997, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  %1021 = call float @dx.op.dot2.f32(i32 54, float %996, float %997, float %443, float %444)  ; Dot2(ax,ay,bx,by)
  br label %1022

; <label>:1022                                    ; preds = %1018, %928
  %1023 = phi float [ %1019, %1018 ], [ 0x3FD6666660000000, %928 ]
  %1024 = phi float [ %1020, %1018 ], [ 0.000000e+00, %928 ]
  %1025 = phi float [ %1021, %1018 ], [ 0.000000e+00, %928 ]
  %1026 = phi float [ %962, %1018 ], [ 1.000000e+00, %928 ]
  %1027 = add i32 %35, 160
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = lshr i32 %1029, 22
  %1031 = shl nuw nsw i32 %1030, 5
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 64
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1070, label %1037

; <label>:1037                                    ; preds = %1022
  %1038 = add i32 %35, 408
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = add i32 %1040, 0
  %1042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 131072
  %1046 = icmp eq i32 %1045, 0
  %1047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1042, %dx.types.Handle %70, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = fmul fast float %1048, %204
  %1052 = fmul fast float %1049, %207
  %1053 = fmul fast float %1050, %210
  br i1 %1046, label %1060, label %1054

; <label>:1054                                    ; preds = %1037
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = fmul fast float %1056, %1051
  %1058 = fmul fast float %1056, %1052
  %1059 = fmul fast float %1056, %1053
  br label %1060

; <label>:1060                                    ; preds = %1054, %1037
  %1061 = phi float [ %1057, %1054 ], [ %1051, %1037 ]
  %1062 = phi float [ %1058, %1054 ], [ %1052, %1037 ]
  %1063 = phi float [ %1059, %1054 ], [ %1053, %1037 ]
  %1064 = fmul fast float %1061, %1032
  %1065 = select i1 %198, float %1064, float %1061
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1065, float %1062, float %1063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = select i1 %198, float 0.000000e+00, float %1061
  %1068 = select i1 %198, float %1066, float %1062
  %1069 = select i1 %198, float 0.000000e+00, float %1063
  br label %1070

; <label>:1070                                    ; preds = %1060, %1022
  %1071 = phi float [ %1067, %1060 ], [ 0.000000e+00, %1022 ]
  %1072 = phi float [ %1068, %1060 ], [ 0.000000e+00, %1022 ]
  %1073 = phi float [ %1069, %1060 ], [ 0.000000e+00, %1022 ]
  %1074 = add i32 %35, 96
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 255
  %1078 = uitofp i32 %1077 to float
  %1079 = lshr i32 %1076, 8
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = call float @dx.op.dot3.f32(i32 55, float %943, float %944, float %945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = fmul fast float %1081, %1082
  %1084 = fadd fast float %1083, %1078
  %1085 = fmul fast float %1084, 0x3F70101020000000
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  br label %1087

; <label>:1087                                    ; preds = %1070, %423
  %1088 = phi float [ 0.000000e+00, %423 ], [ %1024, %1070 ]
  %1089 = phi float [ 0.000000e+00, %423 ], [ %1025, %1070 ]
  %1090 = phi float [ 0.000000e+00, %423 ], [ %943, %1070 ]
  %1091 = phi float [ 0.000000e+00, %423 ], [ %944, %1070 ]
  %1092 = phi float [ 0.000000e+00, %423 ], [ %945, %1070 ]
  %1093 = phi float [ 0.000000e+00, %423 ], [ %1071, %1070 ]
  %1094 = phi float [ 0.000000e+00, %423 ], [ %1072, %1070 ]
  %1095 = phi float [ 0.000000e+00, %423 ], [ %1073, %1070 ]
  %1096 = phi float [ 0.000000e+00, %423 ], [ %929, %1070 ]
  %1097 = phi float [ 0.000000e+00, %423 ], [ %725, %1070 ]
  %1098 = phi float [ 0.000000e+00, %423 ], [ %1023, %1070 ]
  %1099 = phi float [ 0.000000e+00, %423 ], [ %1026, %1070 ]
  %1100 = phi float [ 0.000000e+00, %423 ], [ %1086, %1070 ]
  br i1 %371, label %1942, label %1101

; <label>:1101                                    ; preds = %1087
  %1102 = icmp ult i32 %429, 2
  %1103 = add i32 %35, 40
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %35, 44
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = or i32 %1108, %1105
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1942, label %1111

; <label>:1111                                    ; preds = %1101
  %1112 = and i32 %1105, 262144
  %1113 = icmp ne i32 %1112, 0
  %1114 = select i1 %1113, float %38, float 1.000000e+00
  %1115 = select i1 %1113, float %39, float 0.000000e+00
  %1116 = select i1 %1113, float %40, float 0.000000e+00
  %1117 = select i1 %1113, float %41, float 1.000000e+00
  %1118 = select i1 %1113, float %42, float %58
  %1119 = select i1 %1113, float %43, float %59
  %1120 = add i32 %35, 300
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = lshr i32 %1122, 16
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = fmul fast float %1124, 0x3F50624DE0000000
  %1126 = add i32 %35, 104
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = lshr i32 %1128, 16
  %1130 = and i32 %1129, 255
  %1131 = lshr i32 %1128, 24
  %1132 = add i32 %35, 308
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 65535
  %1136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1135)  ; LegacyF16ToF32(value)
  %1137 = lshr i32 %1134, 16
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = add i32 %35, 48
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = lshr i32 %1141, 22
  %1143 = shl nuw nsw i32 %1142, 5
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = shl i32 %1141, 4
  %1146 = and i32 %1145, 32752
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = lshr i32 %1141, 7
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1153 = fmul fast float %1152, 1.000000e+03
  %1154 = fmul fast float %281, %1153
  %1155 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1156 = fadd fast float %1155, %271
  %1157 = fmul fast float %282, %1153
  %1158 = call float @dx.op.unary.f32(i32 22, float %1157)  ; Frc(value)
  %1159 = fadd fast float %1158, %273
  %1160 = fmul fast float %1125, %1153
  %1161 = call float @dx.op.unary.f32(i32 22, float %1160)  ; Frc(value)
  %1162 = fmul fast float %1161, 0x401921FB60000000
  %1163 = fadd fast float %1162, %1144
  %1164 = call float @dx.op.unary.f32(i32 13, float %1163)  ; Sin(value)
  %1165 = call float @dx.op.unary.f32(i32 12, float %1163)  ; Cos(value)
  %1166 = fsub fast float -0.000000e+00, %1164
  %1167 = fadd fast float %1118, -5.000000e-01
  %1168 = fadd fast float %1119, -5.000000e-01
  %1169 = fmul fast float %1136, %1167
  %1170 = fmul fast float %1138, %1168
  %1171 = fadd fast float %1169, 5.000000e-01
  %1172 = fadd fast float %1170, 5.000000e-01
  %1173 = fmul fast float %1147, %1171
  %1174 = fmul fast float %1150, %1172
  %1175 = fmul fast float %1165, %1173
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1174, float %1175)  ; FMad(a,b,c)
  %1177 = fmul fast float %1164, %1173
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1165, float %1174, float %1177)  ; FMad(a,b,c)
  %1179 = fadd fast float %1156, %1176
  %1180 = fadd fast float %1159, %1178
  %1181 = icmp ugt i32 %1130, 1
  %1182 = icmp ugt i32 %1128, 33554431
  %1183 = or i1 %1182, %1181
  br i1 %1183, label %1184, label %1209

; <label>:1184                                    ; preds = %1111
  %1185 = add i32 %35, 244
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1152, %1189
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = mul nuw nsw i32 %1130, %1131
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1191, %1193
  %1195 = call float @dx.op.unary.f32(i32 27, float %1194)  ; Round_ni(value)
  %1196 = fptoui float %1195 to i32
  %1197 = urem i32 %1196, %1130
  %1198 = udiv i32 %1196, %1131
  %1199 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1200 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1201 = uitofp i32 %1197 to float
  %1202 = uitofp i32 %1198 to float
  %1203 = fadd fast float %1199, %1201
  %1204 = fadd fast float %1200, %1202
  %1205 = uitofp i32 %1130 to float
  %1206 = uitofp i32 %1131 to float
  %1207 = fdiv fast float %1203, %1205
  %1208 = fdiv fast float %1204, %1206
  br label %1209

; <label>:1209                                    ; preds = %1184, %1111
  %1210 = phi float [ %1207, %1184 ], [ %1179, %1111 ]
  %1211 = phi float [ %1208, %1184 ], [ %1180, %1111 ]
  %1212 = and i32 %1105, 16777216
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1323, label %1214

; <label>:1214                                    ; preds = %1209
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1219 = fadd fast float %1216, %137
  %1220 = fadd fast float %1217, %138
  %1221 = fadd fast float %1218, %139
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = icmp eq i32 %36, 65535
  br i1 %1225, label %1320, label %1226

; <label>:1226                                    ; preds = %1214
  %1227 = lshr i32 %36, 1
  %1228 = shl i32 %1227, 2
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %36, 1
  %1232 = icmp ne i32 %1231, 0
  %1233 = lshr i32 %1230, 16
  %1234 = and i32 %1230, 65535
  %1235 = select i1 %1232, i32 %1233, i32 %1234
  %1236 = icmp eq i32 %1235, 65535
  br i1 %1236, label %1316, label %1237

; <label>:1237                                    ; preds = %1226
  %1238 = mul nuw nsw i32 %1235, 40
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = add nuw nsw i32 %1238, 12
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = add nuw nsw i32 %1238, 24
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = add nuw nsw i32 %1238, 36
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = fsub fast float %1219, %1240
  %1257 = fsub fast float %1220, %1241
  %1258 = fsub fast float %1221, %1242
  %1259 = fmul fast float %1255, %1256
  %1260 = fmul fast float %1255, %1257
  %1261 = fmul fast float %1255, %1258
  %1262 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1263 = call float @dx.op.unary.f32(i32 27, float %1260)  ; Round_ni(value)
  %1264 = call float @dx.op.unary.f32(i32 27, float %1261)  ; Round_ni(value)
  %1265 = fadd fast float %1262, 5.000000e-01
  %1266 = fadd fast float %1263, 5.000000e-01
  %1267 = fadd fast float %1264, 5.000000e-01
  %1268 = fmul fast float %1265, %1245
  %1269 = fmul fast float %1266, %1246
  %1270 = fmul fast float %1267, %1247
  %1271 = shl i32 %36, 2
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1277 = call float @dx.op.unary.f32(i32 22, float %1269)  ; Frc(value)
  %1278 = call float @dx.op.unary.f32(i32 22, float %1270)  ; Frc(value)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1275, %dx.types.Handle %32, float %1276, float %1277, float %1278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = fmul fast float %1280, 1.023000e+03
  %1284 = fmul fast float %1281, 1.023000e+03
  %1285 = fmul fast float %1282, 1.023000e+03
  %1286 = fadd fast float %1283, 5.000000e-01
  %1287 = fadd fast float %1284, 5.000000e-01
  %1288 = fadd fast float %1285, 5.000000e-01
  %1289 = call float @dx.op.unary.f32(i32 27, float %1286)  ; Round_ni(value)
  %1290 = call float @dx.op.unary.f32(i32 27, float %1287)  ; Round_ni(value)
  %1291 = call float @dx.op.unary.f32(i32 27, float %1288)  ; Round_ni(value)
  %1292 = fsub fast float %1259, %1262
  %1293 = fsub fast float %1260, %1263
  %1294 = fsub fast float %1261, %1264
  %1295 = fmul fast float %1292, 7.500000e-01
  %1296 = fmul fast float %1293, 7.500000e-01
  %1297 = fmul fast float %1294, 7.500000e-01
  %1298 = fadd fast float %1262, 1.250000e-01
  %1299 = fadd fast float %1298, %1295
  %1300 = fadd fast float %1299, %1289
  %1301 = fadd fast float %1263, 1.250000e-01
  %1302 = fadd fast float %1301, %1296
  %1303 = fadd fast float %1302, %1290
  %1304 = fadd fast float %1264, 1.250000e-01
  %1305 = fadd fast float %1304, %1297
  %1306 = fadd fast float %1305, %1291
  %1307 = fmul fast float %1300, %1250
  %1308 = fmul fast float %1303, %1251
  %1309 = fmul fast float %1306, %1252
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = add i32 %1311, 0
  %1313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1313, %dx.types.Handle %30, float %1307, float %1308, float %1309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  br label %1316

; <label>:1316                                    ; preds = %1237, %1226
  %1317 = phi float [ %1315, %1237 ], [ -1.000000e+00, %1226 ]
  %1318 = fadd fast float %1317, %1224
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  br label %1320

; <label>:1320                                    ; preds = %1316, %1214
  %1321 = phi float [ %1319, %1316 ], [ %1224, %1214 ]
  %1322 = fmul fast float %1321, %426
  br label %1323

; <label>:1323                                    ; preds = %1320, %1209
  %1324 = phi float [ %1322, %1320 ], [ %426, %1209 ]
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 256
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1375, label %1329

; <label>:1329                                    ; preds = %1323
  %1330 = add i32 %35, 444
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = add i32 %1332, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1334, %dx.types.Handle %71, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = add i32 %35, 116
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = shl i32 %1339, 4
  %1341 = and i32 %1340, 32752
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = lshr i32 %1339, 7
  %1344 = and i32 %1343, 32752
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = fsub fast float 1.000000e+00, %1324
  %1347 = call float @dx.op.binary.f32(i32 35, float %1346, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1348 = bitcast float %1324 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fadd fast float %1349, 0xC1CFBF8940000000
  %1351 = fmul fast float %1345, %1350
  %1352 = fadd fast float %1351, 0x41CFBF8940000000
  %1353 = fptosi float %1352 to i32
  %1354 = bitcast i32 %1353 to float
  %1355 = bitcast float %1347 to i32
  %1356 = sitofp i32 %1355 to float
  %1357 = fadd fast float %1356, 0xC1CFBF8940000000
  %1358 = fmul fast float %1357, %1345
  %1359 = fadd fast float %1358, 0x41CFBF8940000000
  %1360 = fptosi float %1359 to i32
  %1361 = bitcast i32 %1360 to float
  %1362 = fmul fast float %1354, %1342
  %1363 = fmul fast float %1361, %1342
  %1364 = fsub fast float %1347, %1362
  %1365 = fadd fast float %1363, %1347
  %1366 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1368 = fsub fast float %1336, %1366
  %1369 = fsub fast float %1367, %1366
  %1370 = bitcast float %1369 to i32
  %1371 = sub nsw i32 2129859010, %1370
  %1372 = bitcast i32 %1371 to float
  %1373 = fmul fast float %1372, %1368
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  br label %1375

; <label>:1375                                    ; preds = %1329, %1323
  %1376 = phi float [ %1374, %1329 ], [ %1324, %1323 ]
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 128
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1397, label %1381

; <label>:1381                                    ; preds = %1375
  %1382 = add i32 %35, 428
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %71, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 524288
  %1392 = icmp ne i32 %1391, 0
  %1393 = fcmp fast ogt float %1388, 0x3FE0101020000000
  %1394 = select i1 %1393, float 1.000000e+00, float 0.000000e+00
  %1395 = select i1 %1392, float %1394, float %1388
  %1396 = fmul fast float %1395, %1376
  br label %1397

; <label>:1397                                    ; preds = %1381, %1375
  %1398 = phi float [ %1396, %1381 ], [ %1376, %1375 ]
  %1399 = fcmp fast ult float %1398, 0x3F70101020000000
  br i1 %1399, label %1942, label %1400

; <label>:1400                                    ; preds = %1397
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 16
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1603, label %1405

; <label>:1405                                    ; preds = %1400
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = add i32 %35, 380
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = add i32 %1410, 0
  %1412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1412, %dx.types.Handle %70, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = extractvalue %dx.types.ResRet.f32 %1413, 3
  %1418 = and i32 %1407, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = lshr i32 %1407, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1417, %1419
  %1424 = fadd fast float %1423, %1422
  %1425 = fmul fast float %1424, 0x3F70101000000000
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 512
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1438, label %1430

; <label>:1430                                    ; preds = %1405
  %1431 = add i32 %35, 460
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %1433, 0
  %1435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1435, %dx.types.Handle %71, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  br label %1438

; <label>:1438                                    ; preds = %1430, %1405
  %1439 = phi float [ %1437, %1430 ], [ 1.000000e+00, %1405 ]
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 33554432
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1550, label %1444

; <label>:1444                                    ; preds = %1438
  %1445 = add i32 %35, 240
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = lshr i32 %1447, 16
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = add i32 %35, 244
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 65535
  %1456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1455)  ; LegacyF16ToF32(value)
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = lshr i32 %1458, 24
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = and i32 %1458, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1463, 0x3F70101020000000
  %1465 = lshr i32 %1458, 8
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101020000000
  %1469 = lshr i32 %1458, 16
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = add i32 %35, 236
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = lshr i32 %1475, 24
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101020000000
  %1479 = and i32 %1475, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = fmul fast float %1480, 0x3F70101020000000
  %1482 = lshr i32 %1475, 8
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, 0x3F70101020000000
  %1486 = lshr i32 %1475, 16
  %1487 = and i32 %1486, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1488, 0x3F70101020000000
  %1490 = bitcast float %1414 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = sub nsw i32 1597463174, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1414, 5.000000e-01
  %1495 = fmul fast float %1493, %1493
  %1496 = fmul fast float %1495, %1494
  %1497 = fsub fast float 1.500000e+00, %1496
  %1498 = fmul fast float %1493, %1414
  %1499 = fmul fast float %1498, %1497
  %1500 = bitcast float %1415 to i32
  %1501 = ashr i32 %1500, 1
  %1502 = sub nsw i32 1597463174, %1501
  %1503 = bitcast i32 %1502 to float
  %1504 = fmul fast float %1415, 5.000000e-01
  %1505 = fmul fast float %1503, %1503
  %1506 = fmul fast float %1505, %1504
  %1507 = fsub fast float 1.500000e+00, %1506
  %1508 = fmul fast float %1503, %1415
  %1509 = fmul fast float %1508, %1507
  %1510 = bitcast float %1416 to i32
  %1511 = ashr i32 %1510, 1
  %1512 = sub nsw i32 1597463174, %1511
  %1513 = bitcast i32 %1512 to float
  %1514 = fmul fast float %1416, 5.000000e-01
  %1515 = fmul fast float %1513, %1513
  %1516 = fmul fast float %1515, %1514
  %1517 = fsub fast float 1.500000e+00, %1516
  %1518 = fmul fast float %1513, %1416
  %1519 = fmul fast float %1518, %1517
  %1520 = fsub fast float %1499, %1481
  %1521 = fsub fast float %1509, %1485
  %1522 = fsub fast float %1519, %1489
  %1523 = fmul fast float %1520, %1449
  %1524 = fmul fast float %1521, %1451
  %1525 = fmul fast float %1522, %1456
  %1526 = fadd fast float %1523, %1464
  %1527 = fadd fast float %1524, %1468
  %1528 = fadd fast float %1525, %1472
  %1529 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = fmul fast float %1529, %1529
  %1533 = fmul fast float %1530, %1530
  %1534 = fmul fast float %1531, %1531
  %1535 = fsub fast float %1532, %1414
  %1536 = fsub fast float %1533, %1415
  %1537 = fsub fast float %1534, %1416
  %1538 = fmul fast float %1535, %1439
  %1539 = fmul fast float %1536, %1439
  %1540 = fmul fast float %1537, %1439
  %1541 = fadd fast float %1538, %1414
  %1542 = fadd fast float %1539, %1415
  %1543 = fadd fast float %1540, %1416
  %1544 = fadd fast float %1461, %1425
  %1545 = fsub fast float %1544, %1478
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fsub fast float %1546, %1425
  %1548 = fmul fast float %1547, %1439
  %1549 = fadd fast float %1548, %1425
  br label %1603

; <label>:1550                                    ; preds = %1438
  %1551 = and i32 %1441, 134217728
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1587, label %1553

; <label>:1553                                    ; preds = %1550
  %1554 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %1555 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %1556 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1557 = fadd fast float %1554, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fadd fast float %1556, -5.000000e-01
  %1560 = fmul fast float %1557, %1439
  %1561 = fmul fast float %1558, %1439
  %1562 = fmul fast float %1559, %1439
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fadd fast float %1562, 5.000000e-01
  %1566 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1567 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1568 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1569 = fmul fast float %1563, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1566
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1566
  %1574 = fmul fast float %1564, 2.000000e+00
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1575, %1567
  %1577 = fadd fast float %1576, %1574
  %1578 = fmul fast float %1577, %1567
  %1579 = fmul fast float %1565, 2.000000e+00
  %1580 = fsub fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1580, %1568
  %1582 = fadd fast float %1581, %1579
  %1583 = fmul fast float %1582, %1568
  %1584 = fmul fast float %1573, %1573
  %1585 = fmul fast float %1578, %1578
  %1586 = fmul fast float %1583, %1583
  br label %1603

; <label>:1587                                    ; preds = %1550
  %1588 = fmul fast float %258, %258
  %1589 = fmul fast float %262, %262
  %1590 = fmul fast float %266, %266
  %1591 = fadd fast float %1588, -1.000000e+00
  %1592 = fadd fast float %1589, -1.000000e+00
  %1593 = fadd fast float %1590, -1.000000e+00
  %1594 = fmul fast float %1439, %1591
  %1595 = fmul fast float %1439, %1592
  %1596 = fmul fast float %1439, %1593
  %1597 = fadd fast float %1594, 1.000000e+00
  %1598 = fadd fast float %1595, 1.000000e+00
  %1599 = fadd fast float %1596, 1.000000e+00
  %1600 = fmul fast float %1597, %1414
  %1601 = fmul fast float %1598, %1415
  %1602 = fmul fast float %1599, %1416
  br label %1603

; <label>:1603                                    ; preds = %1587, %1553, %1444, %1400
  %1604 = phi float [ %1549, %1444 ], [ %1425, %1553 ], [ %1425, %1587 ], [ 0x3FA23C0BE0000000, %1400 ]
  %1605 = phi float [ %1541, %1444 ], [ %1584, %1553 ], [ %1600, %1587 ], [ 1.000000e+00, %1400 ]
  %1606 = phi float [ %1542, %1444 ], [ %1585, %1553 ], [ %1601, %1587 ], [ 1.000000e+00, %1400 ]
  %1607 = phi float [ %1543, %1444 ], [ %1586, %1553 ], [ %1602, %1587 ], [ 1.000000e+00, %1400 ]
  %1608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.i32 %1608, 1
  %1610 = and i32 %1609, 1
  %1611 = icmp ne i32 %1610, 0
  %1612 = add i32 %35, 372
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 32
  %1616 = icmp ne i32 %1615, 0
  %1617 = and i1 %1611, %1616
  %1618 = select i1 %1617, float 1.000000e+00, float %1605
  %1619 = select i1 %1617, float 0x3FD3333340000000, float %1606
  %1620 = select i1 %1617, float 0x3FD3333340000000, float %1607
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 32
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1697, label %1625

; <label>:1625                                    ; preds = %1603
  %1626 = add i32 %35, 108
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = add i32 %35, 396
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = add i32 %1631, 0
  %1633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1633, %dx.types.Handle %70, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = extractvalue %dx.types.ResRet.f32 %1634, 3
  %1639 = and i32 %1628, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = lshr i32 %1628, 8
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = lshr i32 %1628, 16
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101000000000
  %1648 = fmul fast float %1635, %1640
  %1649 = fadd fast float %1648, %1643
  %1650 = fmul fast float %1649, 0x3F70101000000000
  %1651 = fadd fast float %1636, -5.000000e-01
  %1652 = fadd fast float %1638, -5.000000e-01
  %1653 = fmul fast float %1651, %1647
  %1654 = fmul fast float %1652, %1647
  %1655 = fadd fast float %1653, 5.000000e-01
  %1656 = fadd fast float %1654, 5.000000e-01
  %1657 = fmul fast float %1655, 2.000000e+00
  %1658 = fadd fast float %1657, -1.000000e+00
  %1659 = fmul fast float %1656, 2.000000e+00
  %1660 = fadd fast float %1659, -1.000000e+00
  %1661 = fadd fast float %1658, %1660
  %1662 = fmul fast float %1661, 5.000000e-01
  %1663 = fsub fast float %1658, %1660
  %1664 = fmul fast float %1663, 5.000000e-01
  %1665 = call float @dx.op.unary.f32(i32 6, float %1662)  ; FAbs(value)
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = call float @dx.op.unary.f32(i32 6, float %1664)  ; FAbs(value)
  %1668 = fsub fast float %1666, %1667
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1664, float %1668, float %1662, float %1664, float %1668)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = call float @dx.op.unary.f32(i32 25, float %1669)  ; Rsqrt(value)
  %1671 = fmul fast float %1662, %1670
  %1672 = fmul fast float %1664, %1670
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 67108864
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1693, label %1677

; <label>:1677                                    ; preds = %1625
  %1678 = add i32 %35, 296
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = and i32 %1680, 65535
  %1682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1681)  ; LegacyF16ToF32(value)
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 65535
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = lshr i32 %1680, 16
  %1688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1687)  ; LegacyF16ToF32(value)
  %1689 = fsub fast float %1650, %1688
  %1690 = fmul fast float %1689, %1682
  %1691 = fadd fast float %1690, %1686
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  br label %1693

; <label>:1693                                    ; preds = %1677, %1625
  %1694 = phi float [ %1692, %1677 ], [ %1650, %1625 ]
  %1695 = call float @dx.op.dot2.f32(i32 54, float %1671, float %1672, float %1114, float %1115)  ; Dot2(ax,ay,bx,by)
  %1696 = call float @dx.op.dot2.f32(i32 54, float %1671, float %1672, float %1116, float %1117)  ; Dot2(ax,ay,bx,by)
  br label %1697

; <label>:1697                                    ; preds = %1693, %1603
  %1698 = phi float [ %1694, %1693 ], [ 0x3FD6666660000000, %1603 ]
  %1699 = phi float [ %1695, %1693 ], [ 0.000000e+00, %1603 ]
  %1700 = phi float [ %1696, %1693 ], [ 0.000000e+00, %1603 ]
  %1701 = phi float [ %1637, %1693 ], [ 1.000000e+00, %1603 ]
  %1702 = add i32 %35, 176
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = lshr i32 %1704, 22
  %1706 = shl nuw nsw i32 %1705, 5
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 64
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1745, label %1712

; <label>:1712                                    ; preds = %1697
  %1713 = add i32 %35, 412
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %1715, 0
  %1717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 131072
  %1721 = icmp eq i32 %1720, 0
  %1722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1717, %dx.types.Handle %70, float %1210, float %1211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = fmul fast float %1723, %246
  %1727 = fmul fast float %1724, %249
  %1728 = fmul fast float %1725, %252
  br i1 %1721, label %1735, label %1729

; <label>:1729                                    ; preds = %1712
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = fmul fast float %1731, %1726
  %1733 = fmul fast float %1731, %1727
  %1734 = fmul fast float %1731, %1728
  br label %1735

; <label>:1735                                    ; preds = %1729, %1712
  %1736 = phi float [ %1732, %1729 ], [ %1726, %1712 ]
  %1737 = phi float [ %1733, %1729 ], [ %1727, %1712 ]
  %1738 = phi float [ %1734, %1729 ], [ %1728, %1712 ]
  %1739 = fmul fast float %1736, %1707
  %1740 = select i1 %198, float %1739, float %1736
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1737, float %1738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = select i1 %198, float 0.000000e+00, float %1736
  %1743 = select i1 %198, float %1741, float %1737
  %1744 = select i1 %198, float 0.000000e+00, float %1738
  br label %1745

; <label>:1745                                    ; preds = %1735, %1697
  %1746 = phi float [ %1742, %1735 ], [ 0.000000e+00, %1697 ]
  %1747 = phi float [ %1743, %1735 ], [ 0.000000e+00, %1697 ]
  %1748 = phi float [ %1744, %1735 ], [ 0.000000e+00, %1697 ]
  %1749 = add i32 %35, 112
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = lshr i32 %1751, 8
  %1755 = and i32 %1754, 255
  %1756 = uitofp i32 %1755 to float
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1618, float %1619, float %1620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = fmul fast float %1756, %1757
  %1759 = fadd fast float %1758, %1753
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  br i1 %1102, label %1762, label %1770

; <label>:1762                                    ; preds = %1745
  %1763 = fsub fast float 1.000000e+00, %1398
  %1764 = fmul fast float %1763, %1090
  %1765 = fmul fast float %1763, %1091
  %1766 = fmul fast float %1763, %1092
  %1767 = fmul fast float %1763, %1093
  %1768 = fmul fast float %1763, %1094
  %1769 = fmul fast float %1763, %1095
  br label %1770

; <label>:1770                                    ; preds = %1762, %1745
  %1771 = phi float [ %1764, %1762 ], [ %1090, %1745 ]
  %1772 = phi float [ %1765, %1762 ], [ %1091, %1745 ]
  %1773 = phi float [ %1766, %1762 ], [ %1092, %1745 ]
  %1774 = phi float [ %1767, %1762 ], [ %1093, %1745 ]
  %1775 = phi float [ %1768, %1762 ], [ %1094, %1745 ]
  %1776 = phi float [ %1769, %1762 ], [ %1095, %1745 ]
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 3
  %1780 = icmp eq i32 %1779, 3
  br i1 %1780, label %1859, label %1781

; <label>:1781                                    ; preds = %1770
  %1782 = and i32 %1778, 16
  %1783 = icmp ne i32 %1782, 0
  %1784 = select i1 %1783, float %1398, float 0.000000e+00
  %1785 = icmp eq i32 %1779, 0
  br i1 %1785, label %1786, label %1814

; <label>:1786                                    ; preds = %1781
  %1787 = and i32 %1778, 64
  %1788 = icmp ne i32 %1787, 0
  %1789 = select i1 %1788, float %1398, float 0.000000e+00
  %1790 = fsub fast float %1618, %1771
  %1791 = fsub fast float %1619, %1772
  %1792 = fsub fast float %1620, %1773
  %1793 = fmul fast float %1784, %1790
  %1794 = fmul fast float %1784, %1791
  %1795 = fmul fast float %1784, %1792
  %1796 = fadd fast float %1793, %1771
  %1797 = fadd fast float %1794, %1772
  %1798 = fadd fast float %1795, %1773
  %1799 = fsub fast float %1604, %1096
  %1800 = fmul fast float %1784, %1799
  %1801 = fadd fast float %1800, %1096
  %1802 = fsub fast float %1746, %1774
  %1803 = fsub fast float %1747, %1775
  %1804 = fsub fast float %1748, %1776
  %1805 = fmul fast float %1789, %1802
  %1806 = fmul fast float %1789, %1803
  %1807 = fmul fast float %1789, %1804
  %1808 = fadd fast float %1805, %1774
  %1809 = fadd fast float %1806, %1775
  %1810 = fadd fast float %1807, %1776
  %1811 = fsub fast float %1761, %1100
  %1812 = fmul fast float %1784, %1811
  %1813 = fadd fast float %1812, %1100
  br label %1859

; <label>:1814                                    ; preds = %1781
  %1815 = icmp eq i32 %1779, 1
  br i1 %1815, label %1816, label %1829

; <label>:1816                                    ; preds = %1814
  %1817 = fadd fast float %1618, -1.000000e+00
  %1818 = fadd fast float %1619, -1.000000e+00
  %1819 = fadd fast float %1620, -1.000000e+00
  %1820 = fmul fast float %1784, %1817
  %1821 = fmul fast float %1784, %1818
  %1822 = fmul fast float %1784, %1819
  %1823 = fadd fast float %1820, 1.000000e+00
  %1824 = fadd fast float %1821, 1.000000e+00
  %1825 = fadd fast float %1822, 1.000000e+00
  %1826 = fmul fast float %1823, %1771
  %1827 = fmul fast float %1824, %1772
  %1828 = fmul fast float %1825, %1773
  br label %1859

; <label>:1829                                    ; preds = %1814
  %1830 = icmp eq i32 %1779, 2
  br i1 %1830, label %1831, label %1859

; <label>:1831                                    ; preds = %1829
  %1832 = call float @dx.op.unary.f32(i32 24, float %1618)  ; Sqrt(value)
  %1833 = call float @dx.op.unary.f32(i32 24, float %1619)  ; Sqrt(value)
  %1834 = call float @dx.op.unary.f32(i32 24, float %1620)  ; Sqrt(value)
  %1835 = fadd fast float %1832, -5.000000e-01
  %1836 = fadd fast float %1833, -5.000000e-01
  %1837 = fadd fast float %1834, -5.000000e-01
  %1838 = fmul fast float %1835, %1784
  %1839 = fmul fast float %1836, %1784
  %1840 = fmul fast float %1837, %1784
  %1841 = fadd fast float %1838, 5.000000e-01
  %1842 = fadd fast float %1839, 5.000000e-01
  %1843 = fadd fast float %1840, 5.000000e-01
  %1844 = fmul fast float %1841, 2.000000e+00
  %1845 = fsub fast float 1.000000e+00, %1844
  %1846 = fmul fast float %1845, %1771
  %1847 = fadd fast float %1846, %1844
  %1848 = fmul fast float %1847, %1771
  %1849 = fmul fast float %1842, 2.000000e+00
  %1850 = fsub fast float 1.000000e+00, %1849
  %1851 = fmul fast float %1850, %1772
  %1852 = fadd fast float %1851, %1849
  %1853 = fmul fast float %1852, %1772
  %1854 = fmul fast float %1843, 2.000000e+00
  %1855 = fsub fast float 1.000000e+00, %1854
  %1856 = fmul fast float %1855, %1773
  %1857 = fadd fast float %1856, %1854
  %1858 = fmul fast float %1857, %1773
  br label %1859

; <label>:1859                                    ; preds = %1831, %1829, %1816, %1786, %1770
  %1860 = phi float [ %1771, %1770 ], [ %1848, %1831 ], [ %1771, %1829 ], [ %1826, %1816 ], [ %1796, %1786 ]
  %1861 = phi float [ %1772, %1770 ], [ %1853, %1831 ], [ %1772, %1829 ], [ %1827, %1816 ], [ %1797, %1786 ]
  %1862 = phi float [ %1773, %1770 ], [ %1858, %1831 ], [ %1773, %1829 ], [ %1828, %1816 ], [ %1798, %1786 ]
  %1863 = phi float [ %1774, %1770 ], [ %1774, %1831 ], [ %1774, %1829 ], [ %1774, %1816 ], [ %1808, %1786 ]
  %1864 = phi float [ %1775, %1770 ], [ %1775, %1831 ], [ %1775, %1829 ], [ %1775, %1816 ], [ %1809, %1786 ]
  %1865 = phi float [ %1776, %1770 ], [ %1776, %1831 ], [ %1776, %1829 ], [ %1776, %1816 ], [ %1810, %1786 ]
  %1866 = phi float [ %1096, %1770 ], [ %1096, %1831 ], [ %1096, %1829 ], [ %1096, %1816 ], [ %1801, %1786 ]
  %1867 = phi float [ %1100, %1770 ], [ %1100, %1831 ], [ %1100, %1829 ], [ %1100, %1816 ], [ %1813, %1786 ]
  %1868 = and i32 %1778, 12
  %1869 = icmp eq i32 %1868, 12
  br i1 %1869, label %1942, label %1870

; <label>:1870                                    ; preds = %1859
  %1871 = and i32 %1778, 2097184
  %1872 = icmp eq i32 %1871, 2097184
  %1873 = select i1 %1872, float %1398, float 0.000000e+00
  %1874 = and i32 %1778, 4194336
  %1875 = icmp eq i32 %1874, 4194336
  %1876 = select i1 %1875, float %1398, float 0.000000e+00
  %1877 = and i32 %1778, 8388640
  %1878 = icmp eq i32 %1877, 8388640
  %1879 = select i1 %1878, float %1398, float 0.000000e+00
  %1880 = icmp eq i32 %1868, 0
  br i1 %1880, label %1881, label %1894

; <label>:1881                                    ; preds = %1870
  %1882 = fsub fast float %1699, %1088
  %1883 = fsub fast float %1700, %1089
  %1884 = fmul fast float %1873, %1882
  %1885 = fmul fast float %1873, %1883
  %1886 = fadd fast float %1884, %1088
  %1887 = fadd fast float %1885, %1089
  %1888 = fsub fast float %1701, %1099
  %1889 = fmul fast float %1876, %1888
  %1890 = fadd fast float %1889, %1099
  %1891 = fsub fast float %1698, %1098
  %1892 = fmul fast float %1879, %1891
  %1893 = fadd fast float %1892, %1098
  br label %1942

; <label>:1894                                    ; preds = %1870
  %1895 = icmp eq i32 %1868, 4
  br i1 %1895, label %1896, label %1928

; <label>:1896                                    ; preds = %1894
  %1897 = fmul fast float %1873, %1699
  %1898 = fmul fast float %1873, %1700
  %1899 = fadd fast float %1897, %1088
  %1900 = fadd fast float %1898, %1089
  %1901 = call float @dx.op.binary.f32(i32 36, float %1099, float %1701)  ; FMin(a,b)
  %1902 = fsub fast float %1901, %1099
  %1903 = fmul fast float %1902, %1876
  %1904 = fadd fast float %1903, %1099
  %1905 = fadd fast float %1698, %1098
  %1906 = fmul fast float %1905, 0x3FF337FAE0000000
  %1907 = fmul fast float %1098, %1098
  %1908 = fmul fast float %1698, %1698
  %1909 = fadd fast float %1908, %1907
  %1910 = fmul fast float %1909, 0x3FE5152B00000000
  %1911 = fmul fast float %1098, 0xBFCC1F85E0000000
  %1912 = fmul fast float %1911, %1698
  %1913 = fadd fast float %1912, 0xBFE1363700000000
  %1914 = fadd fast float %1913, %1906
  %1915 = fsub fast float %1914, %1910
  %1916 = fmul fast float %1905, 0x3FBA6F0D00000000
  %1917 = fmul fast float %1909, 0x3FD0432880000000
  %1918 = fmul fast float %1098, 0xBFEF110800000000
  %1919 = fmul fast float %1918, %1698
  %1920 = fadd fast float %1919, 1.000000e+00
  %1921 = fsub fast float %1920, %1916
  %1922 = fadd fast float %1921, %1917
  %1923 = fdiv fast float %1915, %1922
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = fsub fast float %1924, %1098
  %1926 = fmul fast float %1925, %1879
  %1927 = fadd fast float %1926, %1098
  br label %1942

; <label>:1928                                    ; preds = %1894
  %1929 = icmp eq i32 %1868, 8
  br i1 %1929, label %1930, label %1942

; <label>:1930                                    ; preds = %1928
  %1931 = fmul fast float %1873, %1699
  %1932 = fmul fast float %1873, %1700
  %1933 = fadd fast float %1931, %1088
  %1934 = fadd fast float %1932, %1089
  %1935 = call float @dx.op.binary.f32(i32 36, float %1099, float %1701)  ; FMin(a,b)
  %1936 = fsub fast float %1935, %1099
  %1937 = fmul fast float %1936, %1876
  %1938 = fadd fast float %1937, %1099
  %1939 = fsub fast float %1698, %1098
  %1940 = fmul fast float %1879, %1939
  %1941 = fadd fast float %1940, %1098
  br label %1942

; <label>:1942                                    ; preds = %1930, %1928, %1896, %1881, %1859, %1397, %1101, %1087
  %1943 = phi float [ %1088, %1859 ], [ %1088, %1397 ], [ %1088, %1087 ], [ %1933, %1930 ], [ %1088, %1928 ], [ %1899, %1896 ], [ %1886, %1881 ], [ %1088, %1101 ]
  %1944 = phi float [ %1089, %1859 ], [ %1089, %1397 ], [ %1089, %1087 ], [ %1934, %1930 ], [ %1089, %1928 ], [ %1900, %1896 ], [ %1887, %1881 ], [ %1089, %1101 ]
  %1945 = phi float [ %1860, %1859 ], [ %1090, %1397 ], [ %1090, %1087 ], [ %1860, %1930 ], [ %1860, %1928 ], [ %1860, %1896 ], [ %1860, %1881 ], [ %1090, %1101 ]
  %1946 = phi float [ %1861, %1859 ], [ %1091, %1397 ], [ %1091, %1087 ], [ %1861, %1930 ], [ %1861, %1928 ], [ %1861, %1896 ], [ %1861, %1881 ], [ %1091, %1101 ]
  %1947 = phi float [ %1862, %1859 ], [ %1092, %1397 ], [ %1092, %1087 ], [ %1862, %1930 ], [ %1862, %1928 ], [ %1862, %1896 ], [ %1862, %1881 ], [ %1092, %1101 ]
  %1948 = phi float [ %1863, %1859 ], [ %1093, %1397 ], [ %1093, %1087 ], [ %1863, %1930 ], [ %1863, %1928 ], [ %1863, %1896 ], [ %1863, %1881 ], [ %1093, %1101 ]
  %1949 = phi float [ %1864, %1859 ], [ %1094, %1397 ], [ %1094, %1087 ], [ %1864, %1930 ], [ %1864, %1928 ], [ %1864, %1896 ], [ %1864, %1881 ], [ %1094, %1101 ]
  %1950 = phi float [ %1865, %1859 ], [ %1095, %1397 ], [ %1095, %1087 ], [ %1865, %1930 ], [ %1865, %1928 ], [ %1865, %1896 ], [ %1865, %1881 ], [ %1095, %1101 ]
  %1951 = phi float [ %1866, %1859 ], [ %1096, %1397 ], [ %1096, %1087 ], [ %1866, %1930 ], [ %1866, %1928 ], [ %1866, %1896 ], [ %1866, %1881 ], [ %1096, %1101 ]
  %1952 = phi float [ %1098, %1859 ], [ %1098, %1397 ], [ %1098, %1087 ], [ %1941, %1930 ], [ %1098, %1928 ], [ %1927, %1896 ], [ %1893, %1881 ], [ %1098, %1101 ]
  %1953 = phi float [ %1099, %1859 ], [ %1099, %1397 ], [ %1099, %1087 ], [ %1938, %1930 ], [ %1099, %1928 ], [ %1904, %1896 ], [ %1890, %1881 ], [ %1099, %1101 ]
  %1954 = phi float [ %1867, %1859 ], [ %1100, %1397 ], [ %1100, %1087 ], [ %1867, %1930 ], [ %1867, %1928 ], [ %1867, %1896 ], [ %1867, %1881 ], [ %1100, %1101 ]
  br i1 %373, label %2796, label %1955

; <label>:1955                                    ; preds = %1942
  %1956 = icmp ult i32 %429, 3
  %1957 = add i32 %35, 56
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = add i32 %35, 60
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = or i32 %1962, %1959
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2796, label %1965

; <label>:1965                                    ; preds = %1955
  %1966 = and i32 %1959, 262144
  %1967 = icmp ne i32 %1966, 0
  %1968 = select i1 %1967, float %38, float 1.000000e+00
  %1969 = select i1 %1967, float %39, float 0.000000e+00
  %1970 = select i1 %1967, float %40, float 0.000000e+00
  %1971 = select i1 %1967, float %41, float 1.000000e+00
  %1972 = select i1 %1967, float %42, float %58
  %1973 = select i1 %1967, float %43, float %59
  %1974 = add i32 %35, 316
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = lshr i32 %1976, 16
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = fmul fast float %1978, 0x3F50624DE0000000
  %1980 = add i32 %35, 120
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = lshr i32 %1982, 16
  %1984 = and i32 %1983, 255
  %1985 = lshr i32 %1982, 24
  %1986 = add i32 %35, 324
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 65535
  %1990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1989)  ; LegacyF16ToF32(value)
  %1991 = lshr i32 %1988, 16
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = add i32 %35, 64
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = lshr i32 %1995, 22
  %1997 = shl nuw nsw i32 %1996, 5
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = shl i32 %1995, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1995, 7
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.f32 %2005, 3
  %2007 = fmul fast float %2006, 1.000000e+03
  %2008 = fmul fast float %323, %2007
  %2009 = call float @dx.op.unary.f32(i32 22, float %2008)  ; Frc(value)
  %2010 = fadd fast float %2009, %313
  %2011 = fmul fast float %324, %2007
  %2012 = call float @dx.op.unary.f32(i32 22, float %2011)  ; Frc(value)
  %2013 = fadd fast float %2012, %315
  %2014 = fmul fast float %1979, %2007
  %2015 = call float @dx.op.unary.f32(i32 22, float %2014)  ; Frc(value)
  %2016 = fmul fast float %2015, 0x401921FB60000000
  %2017 = fadd fast float %2016, %1998
  %2018 = call float @dx.op.unary.f32(i32 13, float %2017)  ; Sin(value)
  %2019 = call float @dx.op.unary.f32(i32 12, float %2017)  ; Cos(value)
  %2020 = fsub fast float -0.000000e+00, %2018
  %2021 = fadd fast float %1972, -5.000000e-01
  %2022 = fadd fast float %1973, -5.000000e-01
  %2023 = fmul fast float %1990, %2021
  %2024 = fmul fast float %1992, %2022
  %2025 = fadd fast float %2023, 5.000000e-01
  %2026 = fadd fast float %2024, 5.000000e-01
  %2027 = fmul fast float %2001, %2025
  %2028 = fmul fast float %2004, %2026
  %2029 = fmul fast float %2019, %2027
  %2030 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2028, float %2029)  ; FMad(a,b,c)
  %2031 = fmul fast float %2018, %2027
  %2032 = call float @dx.op.tertiary.f32(i32 46, float %2019, float %2028, float %2031)  ; FMad(a,b,c)
  %2033 = fadd fast float %2010, %2030
  %2034 = fadd fast float %2013, %2032
  %2035 = icmp ugt i32 %1984, 1
  %2036 = icmp ugt i32 %1982, 33554431
  %2037 = or i1 %2036, %2035
  br i1 %2037, label %2038, label %2063

; <label>:2038                                    ; preds = %1965
  %2039 = add i32 %35, 260
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 16
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = fmul fast float %2006, %2043
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = mul nuw nsw i32 %1984, %1985
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2045, %2047
  %2049 = call float @dx.op.unary.f32(i32 27, float %2048)  ; Round_ni(value)
  %2050 = fptoui float %2049 to i32
  %2051 = urem i32 %2050, %1984
  %2052 = udiv i32 %2050, %1985
  %2053 = call float @dx.op.unary.f32(i32 22, float %2033)  ; Frc(value)
  %2054 = call float @dx.op.unary.f32(i32 22, float %2034)  ; Frc(value)
  %2055 = uitofp i32 %2051 to float
  %2056 = uitofp i32 %2052 to float
  %2057 = fadd fast float %2053, %2055
  %2058 = fadd fast float %2054, %2056
  %2059 = uitofp i32 %1984 to float
  %2060 = uitofp i32 %1985 to float
  %2061 = fdiv fast float %2057, %2059
  %2062 = fdiv fast float %2058, %2060
  br label %2063

; <label>:2063                                    ; preds = %2038, %1965
  %2064 = phi float [ %2061, %2038 ], [ %2033, %1965 ]
  %2065 = phi float [ %2062, %2038 ], [ %2034, %1965 ]
  %2066 = and i32 %1959, 16777216
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2177, label %2068

; <label>:2068                                    ; preds = %2063
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2073 = fadd fast float %2070, %137
  %2074 = fadd fast float %2071, %138
  %2075 = fadd fast float %2072, %139
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = icmp eq i32 %36, 65535
  br i1 %2079, label %2174, label %2080

; <label>:2080                                    ; preds = %2068
  %2081 = lshr i32 %36, 1
  %2082 = shl i32 %2081, 2
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %36, 1
  %2086 = icmp ne i32 %2085, 0
  %2087 = lshr i32 %2084, 16
  %2088 = and i32 %2084, 65535
  %2089 = select i1 %2086, i32 %2087, i32 %2088
  %2090 = icmp eq i32 %2089, 65535
  br i1 %2090, label %2170, label %2091

; <label>:2091                                    ; preds = %2080
  %2092 = mul nuw nsw i32 %2089, 40
  %2093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = extractvalue %dx.types.ResRet.f32 %2093, 1
  %2096 = extractvalue %dx.types.ResRet.f32 %2093, 2
  %2097 = add nuw nsw i32 %2092, 12
  %2098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.ResRet.f32 %2098, 2
  %2102 = add nuw nsw i32 %2092, 24
  %2103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = add nuw nsw i32 %2092, 36
  %2108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = fsub fast float %2073, %2094
  %2111 = fsub fast float %2074, %2095
  %2112 = fsub fast float %2075, %2096
  %2113 = fmul fast float %2109, %2110
  %2114 = fmul fast float %2109, %2111
  %2115 = fmul fast float %2109, %2112
  %2116 = call float @dx.op.unary.f32(i32 27, float %2113)  ; Round_ni(value)
  %2117 = call float @dx.op.unary.f32(i32 27, float %2114)  ; Round_ni(value)
  %2118 = call float @dx.op.unary.f32(i32 27, float %2115)  ; Round_ni(value)
  %2119 = fadd fast float %2116, 5.000000e-01
  %2120 = fadd fast float %2117, 5.000000e-01
  %2121 = fadd fast float %2118, 5.000000e-01
  %2122 = fmul fast float %2119, %2099
  %2123 = fmul fast float %2120, %2100
  %2124 = fmul fast float %2121, %2101
  %2125 = shl i32 %36, 2
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call float @dx.op.unary.f32(i32 22, float %2122)  ; Frc(value)
  %2131 = call float @dx.op.unary.f32(i32 22, float %2123)  ; Frc(value)
  %2132 = call float @dx.op.unary.f32(i32 22, float %2124)  ; Frc(value)
  %2133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2129, %dx.types.Handle %32, float %2130, float %2131, float %2132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.ResRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.ResRet.f32 %2133, 2
  %2137 = fmul fast float %2134, 1.023000e+03
  %2138 = fmul fast float %2135, 1.023000e+03
  %2139 = fmul fast float %2136, 1.023000e+03
  %2140 = fadd fast float %2137, 5.000000e-01
  %2141 = fadd fast float %2138, 5.000000e-01
  %2142 = fadd fast float %2139, 5.000000e-01
  %2143 = call float @dx.op.unary.f32(i32 27, float %2140)  ; Round_ni(value)
  %2144 = call float @dx.op.unary.f32(i32 27, float %2141)  ; Round_ni(value)
  %2145 = call float @dx.op.unary.f32(i32 27, float %2142)  ; Round_ni(value)
  %2146 = fsub fast float %2113, %2116
  %2147 = fsub fast float %2114, %2117
  %2148 = fsub fast float %2115, %2118
  %2149 = fmul fast float %2146, 7.500000e-01
  %2150 = fmul fast float %2147, 7.500000e-01
  %2151 = fmul fast float %2148, 7.500000e-01
  %2152 = fadd fast float %2116, 1.250000e-01
  %2153 = fadd fast float %2152, %2149
  %2154 = fadd fast float %2153, %2143
  %2155 = fadd fast float %2117, 1.250000e-01
  %2156 = fadd fast float %2155, %2150
  %2157 = fadd fast float %2156, %2144
  %2158 = fadd fast float %2118, 1.250000e-01
  %2159 = fadd fast float %2158, %2151
  %2160 = fadd fast float %2159, %2145
  %2161 = fmul fast float %2154, %2104
  %2162 = fmul fast float %2157, %2105
  %2163 = fmul fast float %2160, %2106
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %2165, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2167, %dx.types.Handle %30, float %2161, float %2162, float %2163, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  br label %2170

; <label>:2170                                    ; preds = %2091, %2080
  %2171 = phi float [ %2169, %2091 ], [ -1.000000e+00, %2080 ]
  %2172 = fadd fast float %2171, %2078
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  br label %2174

; <label>:2174                                    ; preds = %2170, %2068
  %2175 = phi float [ %2173, %2170 ], [ %2078, %2068 ]
  %2176 = fmul fast float %2175, %425
  br label %2177

; <label>:2177                                    ; preds = %2174, %2063
  %2178 = phi float [ %2176, %2174 ], [ %425, %2063 ]
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 256
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2229, label %2183

; <label>:2183                                    ; preds = %2177
  %2184 = add i32 %35, 448
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = add i32 %2186, 0
  %2188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2188, %dx.types.Handle %71, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = add i32 %35, 132
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = shl i32 %2193, 4
  %2195 = and i32 %2194, 32752
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = lshr i32 %2193, 7
  %2198 = and i32 %2197, 32752
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = fsub fast float 1.000000e+00, %2178
  %2201 = call float @dx.op.binary.f32(i32 35, float %2200, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2202 = bitcast float %2178 to i32
  %2203 = sitofp i32 %2202 to float
  %2204 = fadd fast float %2203, 0xC1CFBF8940000000
  %2205 = fmul fast float %2199, %2204
  %2206 = fadd fast float %2205, 0x41CFBF8940000000
  %2207 = fptosi float %2206 to i32
  %2208 = bitcast i32 %2207 to float
  %2209 = bitcast float %2201 to i32
  %2210 = sitofp i32 %2209 to float
  %2211 = fadd fast float %2210, 0xC1CFBF8940000000
  %2212 = fmul fast float %2211, %2199
  %2213 = fadd fast float %2212, 0x41CFBF8940000000
  %2214 = fptosi float %2213 to i32
  %2215 = bitcast i32 %2214 to float
  %2216 = fmul fast float %2208, %2196
  %2217 = fmul fast float %2215, %2196
  %2218 = fsub fast float %2201, %2216
  %2219 = fadd fast float %2217, %2201
  %2220 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2222 = fsub fast float %2190, %2220
  %2223 = fsub fast float %2221, %2220
  %2224 = bitcast float %2223 to i32
  %2225 = sub nsw i32 2129859010, %2224
  %2226 = bitcast i32 %2225 to float
  %2227 = fmul fast float %2226, %2222
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  br label %2229

; <label>:2229                                    ; preds = %2183, %2177
  %2230 = phi float [ %2228, %2183 ], [ %2178, %2177 ]
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 128
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2251, label %2235

; <label>:2235                                    ; preds = %2229
  %2236 = add i32 %35, 432
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = add i32 %2238, 0
  %2240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2240, %dx.types.Handle %71, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, 524288
  %2246 = icmp ne i32 %2245, 0
  %2247 = fcmp fast ogt float %2242, 0x3FE0101020000000
  %2248 = select i1 %2247, float 1.000000e+00, float 0.000000e+00
  %2249 = select i1 %2246, float %2248, float %2242
  %2250 = fmul fast float %2249, %2230
  br label %2251

; <label>:2251                                    ; preds = %2235, %2229
  %2252 = phi float [ %2250, %2235 ], [ %2230, %2229 ]
  %2253 = fcmp fast ult float %2252, 0x3F70101020000000
  br i1 %2253, label %2796, label %2254

; <label>:2254                                    ; preds = %2251
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 16
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2457, label %2259

; <label>:2259                                    ; preds = %2254
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %35, 384
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2266, %dx.types.Handle %70, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.ResRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.ResRet.f32 %2267, 2
  %2271 = extractvalue %dx.types.ResRet.f32 %2267, 3
  %2272 = and i32 %2261, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = lshr i32 %2261, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2271, %2273
  %2278 = fadd fast float %2277, %2276
  %2279 = fmul fast float %2278, 0x3F70101000000000
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 512
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2292, label %2284

; <label>:2284                                    ; preds = %2259
  %2285 = add i32 %35, 464
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %2287, 0
  %2289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2289, %dx.types.Handle %71, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  br label %2292

; <label>:2292                                    ; preds = %2284, %2259
  %2293 = phi float [ %2291, %2284 ], [ 1.000000e+00, %2259 ]
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 33554432
  %2297 = icmp eq i32 %2296, 0
  br i1 %2297, label %2404, label %2298

; <label>:2298                                    ; preds = %2292
  %2299 = add i32 %35, 256
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = and i32 %2301, 65535
  %2303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2302)  ; LegacyF16ToF32(value)
  %2304 = lshr i32 %2301, 16
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = add i32 %35, 260
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 65535
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = lshr i32 %2312, 24
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2314, 0x3F70101020000000
  %2316 = and i32 %2312, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = lshr i32 %2312, 8
  %2320 = and i32 %2319, 255
  %2321 = uitofp i32 %2320 to float
  %2322 = fmul fast float %2321, 0x3F70101020000000
  %2323 = lshr i32 %2312, 16
  %2324 = and i32 %2323, 255
  %2325 = uitofp i32 %2324 to float
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = add i32 %35, 252
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = lshr i32 %2329, 24
  %2331 = uitofp i32 %2330 to float
  %2332 = fmul fast float %2331, 0x3F70101020000000
  %2333 = and i32 %2329, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2334, 0x3F70101020000000
  %2336 = lshr i32 %2329, 8
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = fmul fast float %2338, 0x3F70101020000000
  %2340 = lshr i32 %2329, 16
  %2341 = and i32 %2340, 255
  %2342 = uitofp i32 %2341 to float
  %2343 = fmul fast float %2342, 0x3F70101020000000
  %2344 = bitcast float %2268 to i32
  %2345 = ashr i32 %2344, 1
  %2346 = sub nsw i32 1597463174, %2345
  %2347 = bitcast i32 %2346 to float
  %2348 = fmul fast float %2268, 5.000000e-01
  %2349 = fmul fast float %2347, %2347
  %2350 = fmul fast float %2349, %2348
  %2351 = fsub fast float 1.500000e+00, %2350
  %2352 = fmul fast float %2347, %2268
  %2353 = fmul fast float %2352, %2351
  %2354 = bitcast float %2269 to i32
  %2355 = ashr i32 %2354, 1
  %2356 = sub nsw i32 1597463174, %2355
  %2357 = bitcast i32 %2356 to float
  %2358 = fmul fast float %2269, 5.000000e-01
  %2359 = fmul fast float %2357, %2357
  %2360 = fmul fast float %2359, %2358
  %2361 = fsub fast float 1.500000e+00, %2360
  %2362 = fmul fast float %2357, %2269
  %2363 = fmul fast float %2362, %2361
  %2364 = bitcast float %2270 to i32
  %2365 = ashr i32 %2364, 1
  %2366 = sub nsw i32 1597463174, %2365
  %2367 = bitcast i32 %2366 to float
  %2368 = fmul fast float %2270, 5.000000e-01
  %2369 = fmul fast float %2367, %2367
  %2370 = fmul fast float %2369, %2368
  %2371 = fsub fast float 1.500000e+00, %2370
  %2372 = fmul fast float %2367, %2270
  %2373 = fmul fast float %2372, %2371
  %2374 = fsub fast float %2353, %2335
  %2375 = fsub fast float %2363, %2339
  %2376 = fsub fast float %2373, %2343
  %2377 = fmul fast float %2374, %2303
  %2378 = fmul fast float %2375, %2305
  %2379 = fmul fast float %2376, %2310
  %2380 = fadd fast float %2377, %2318
  %2381 = fadd fast float %2378, %2322
  %2382 = fadd fast float %2379, %2326
  %2383 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2384 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2385 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2386 = fmul fast float %2383, %2383
  %2387 = fmul fast float %2384, %2384
  %2388 = fmul fast float %2385, %2385
  %2389 = fsub fast float %2386, %2268
  %2390 = fsub fast float %2387, %2269
  %2391 = fsub fast float %2388, %2270
  %2392 = fmul fast float %2389, %2293
  %2393 = fmul fast float %2390, %2293
  %2394 = fmul fast float %2391, %2293
  %2395 = fadd fast float %2392, %2268
  %2396 = fadd fast float %2393, %2269
  %2397 = fadd fast float %2394, %2270
  %2398 = fadd fast float %2315, %2279
  %2399 = fsub fast float %2398, %2332
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = fsub fast float %2400, %2279
  %2402 = fmul fast float %2401, %2293
  %2403 = fadd fast float %2402, %2279
  br label %2457

; <label>:2404                                    ; preds = %2292
  %2405 = and i32 %2295, 134217728
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2441, label %2407

; <label>:2407                                    ; preds = %2404
  %2408 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %2409 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %2410 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2411 = fadd fast float %2408, -5.000000e-01
  %2412 = fadd fast float %2409, -5.000000e-01
  %2413 = fadd fast float %2410, -5.000000e-01
  %2414 = fmul fast float %2411, %2293
  %2415 = fmul fast float %2412, %2293
  %2416 = fmul fast float %2413, %2293
  %2417 = fadd fast float %2414, 5.000000e-01
  %2418 = fadd fast float %2415, 5.000000e-01
  %2419 = fadd fast float %2416, 5.000000e-01
  %2420 = call float @dx.op.unary.f32(i32 24, float %2268)  ; Sqrt(value)
  %2421 = call float @dx.op.unary.f32(i32 24, float %2269)  ; Sqrt(value)
  %2422 = call float @dx.op.unary.f32(i32 24, float %2270)  ; Sqrt(value)
  %2423 = fmul fast float %2417, 2.000000e+00
  %2424 = fsub fast float 1.000000e+00, %2423
  %2425 = fmul fast float %2424, %2420
  %2426 = fadd fast float %2425, %2423
  %2427 = fmul fast float %2426, %2420
  %2428 = fmul fast float %2418, 2.000000e+00
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = fmul fast float %2429, %2421
  %2431 = fadd fast float %2430, %2428
  %2432 = fmul fast float %2431, %2421
  %2433 = fmul fast float %2419, 2.000000e+00
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2434, %2422
  %2436 = fadd fast float %2435, %2433
  %2437 = fmul fast float %2436, %2422
  %2438 = fmul fast float %2427, %2427
  %2439 = fmul fast float %2432, %2432
  %2440 = fmul fast float %2437, %2437
  br label %2457

; <label>:2441                                    ; preds = %2404
  %2442 = fmul fast float %300, %300
  %2443 = fmul fast float %304, %304
  %2444 = fmul fast float %308, %308
  %2445 = fadd fast float %2442, -1.000000e+00
  %2446 = fadd fast float %2443, -1.000000e+00
  %2447 = fadd fast float %2444, -1.000000e+00
  %2448 = fmul fast float %2293, %2445
  %2449 = fmul fast float %2293, %2446
  %2450 = fmul fast float %2293, %2447
  %2451 = fadd fast float %2448, 1.000000e+00
  %2452 = fadd fast float %2449, 1.000000e+00
  %2453 = fadd fast float %2450, 1.000000e+00
  %2454 = fmul fast float %2451, %2268
  %2455 = fmul fast float %2452, %2269
  %2456 = fmul fast float %2453, %2270
  br label %2457

; <label>:2457                                    ; preds = %2441, %2407, %2298, %2254
  %2458 = phi float [ %2403, %2298 ], [ %2279, %2407 ], [ %2279, %2441 ], [ 0x3FA23C0BE0000000, %2254 ]
  %2459 = phi float [ %2395, %2298 ], [ %2438, %2407 ], [ %2454, %2441 ], [ 1.000000e+00, %2254 ]
  %2460 = phi float [ %2396, %2298 ], [ %2439, %2407 ], [ %2455, %2441 ], [ 1.000000e+00, %2254 ]
  %2461 = phi float [ %2397, %2298 ], [ %2440, %2407 ], [ %2456, %2441 ], [ 1.000000e+00, %2254 ]
  %2462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.i32 %2462, 1
  %2464 = and i32 %2463, 1
  %2465 = icmp ne i32 %2464, 0
  %2466 = add i32 %35, 372
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 32
  %2470 = icmp ne i32 %2469, 0
  %2471 = and i1 %2465, %2470
  %2472 = select i1 %2471, float 1.000000e+00, float %2459
  %2473 = select i1 %2471, float 0x3FD3333340000000, float %2460
  %2474 = select i1 %2471, float 0x3FD3333340000000, float %2461
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 32
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2551, label %2479

; <label>:2479                                    ; preds = %2457
  %2480 = add i32 %35, 124
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = add i32 %35, 400
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %2485, 0
  %2487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2487, %dx.types.Handle %70, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.ResRet.f32 %2488, 1
  %2491 = extractvalue %dx.types.ResRet.f32 %2488, 2
  %2492 = extractvalue %dx.types.ResRet.f32 %2488, 3
  %2493 = and i32 %2482, 255
  %2494 = uitofp i32 %2493 to float
  %2495 = lshr i32 %2482, 8
  %2496 = and i32 %2495, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = lshr i32 %2482, 16
  %2499 = and i32 %2498, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 0x3F70101000000000
  %2502 = fmul fast float %2489, %2494
  %2503 = fadd fast float %2502, %2497
  %2504 = fmul fast float %2503, 0x3F70101000000000
  %2505 = fadd fast float %2490, -5.000000e-01
  %2506 = fadd fast float %2492, -5.000000e-01
  %2507 = fmul fast float %2505, %2501
  %2508 = fmul fast float %2506, %2501
  %2509 = fadd fast float %2507, 5.000000e-01
  %2510 = fadd fast float %2508, 5.000000e-01
  %2511 = fmul fast float %2509, 2.000000e+00
  %2512 = fadd fast float %2511, -1.000000e+00
  %2513 = fmul fast float %2510, 2.000000e+00
  %2514 = fadd fast float %2513, -1.000000e+00
  %2515 = fadd fast float %2512, %2514
  %2516 = fmul fast float %2515, 5.000000e-01
  %2517 = fsub fast float %2512, %2514
  %2518 = fmul fast float %2517, 5.000000e-01
  %2519 = call float @dx.op.unary.f32(i32 6, float %2516)  ; FAbs(value)
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = call float @dx.op.unary.f32(i32 6, float %2518)  ; FAbs(value)
  %2522 = fsub fast float %2520, %2521
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2518, float %2522, float %2516, float %2518, float %2522)  ; Dot3(ax,ay,az,bx,by,bz)
  %2524 = call float @dx.op.unary.f32(i32 25, float %2523)  ; Rsqrt(value)
  %2525 = fmul fast float %2516, %2524
  %2526 = fmul fast float %2518, %2524
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 67108864
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2547, label %2531

; <label>:2531                                    ; preds = %2479
  %2532 = add i32 %35, 312
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 65535
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 65535
  %2540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2539)  ; LegacyF16ToF32(value)
  %2541 = lshr i32 %2534, 16
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = fsub fast float %2504, %2542
  %2544 = fmul fast float %2543, %2536
  %2545 = fadd fast float %2544, %2540
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  br label %2547

; <label>:2547                                    ; preds = %2531, %2479
  %2548 = phi float [ %2546, %2531 ], [ %2504, %2479 ]
  %2549 = call float @dx.op.dot2.f32(i32 54, float %2525, float %2526, float %1968, float %1969)  ; Dot2(ax,ay,bx,by)
  %2550 = call float @dx.op.dot2.f32(i32 54, float %2525, float %2526, float %1970, float %1971)  ; Dot2(ax,ay,bx,by)
  br label %2551

; <label>:2551                                    ; preds = %2547, %2457
  %2552 = phi float [ %2548, %2547 ], [ 0x3FD6666660000000, %2457 ]
  %2553 = phi float [ %2549, %2547 ], [ 0.000000e+00, %2457 ]
  %2554 = phi float [ %2550, %2547 ], [ 0.000000e+00, %2457 ]
  %2555 = phi float [ %2491, %2547 ], [ 1.000000e+00, %2457 ]
  %2556 = add i32 %35, 192
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = lshr i32 %2558, 22
  %2560 = shl nuw nsw i32 %2559, 5
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 64
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2599, label %2566

; <label>:2566                                    ; preds = %2551
  %2567 = add i32 %35, 416
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %2569, 0
  %2571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 131072
  %2575 = icmp eq i32 %2574, 0
  %2576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2571, %dx.types.Handle %70, float %2064, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = fmul fast float %2577, %288
  %2581 = fmul fast float %2578, %291
  %2582 = fmul fast float %2579, %294
  br i1 %2575, label %2589, label %2583

; <label>:2583                                    ; preds = %2566
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = fmul fast float %2585, %2580
  %2587 = fmul fast float %2585, %2581
  %2588 = fmul fast float %2585, %2582
  br label %2589

; <label>:2589                                    ; preds = %2583, %2566
  %2590 = phi float [ %2586, %2583 ], [ %2580, %2566 ]
  %2591 = phi float [ %2587, %2583 ], [ %2581, %2566 ]
  %2592 = phi float [ %2588, %2583 ], [ %2582, %2566 ]
  %2593 = fmul fast float %2590, %2561
  %2594 = select i1 %198, float %2593, float %2590
  %2595 = call float @dx.op.dot3.f32(i32 55, float %2594, float %2591, float %2592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2596 = select i1 %198, float 0.000000e+00, float %2590
  %2597 = select i1 %198, float %2595, float %2591
  %2598 = select i1 %198, float 0.000000e+00, float %2592
  br label %2599

; <label>:2599                                    ; preds = %2589, %2551
  %2600 = phi float [ %2596, %2589 ], [ 0.000000e+00, %2551 ]
  %2601 = phi float [ %2597, %2589 ], [ 0.000000e+00, %2551 ]
  %2602 = phi float [ %2598, %2589 ], [ 0.000000e+00, %2551 ]
  %2603 = add i32 %35, 128
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = lshr i32 %2605, 8
  %2609 = and i32 %2608, 255
  %2610 = uitofp i32 %2609 to float
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2472, float %2473, float %2474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = fmul fast float %2610, %2611
  %2613 = fadd fast float %2612, %2607
  %2614 = fmul fast float %2613, 0x3F70101020000000
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  br i1 %1956, label %2616, label %2624

; <label>:2616                                    ; preds = %2599
  %2617 = fsub fast float 1.000000e+00, %2252
  %2618 = fmul fast float %2617, %1945
  %2619 = fmul fast float %2617, %1946
  %2620 = fmul fast float %2617, %1947
  %2621 = fmul fast float %2617, %1948
  %2622 = fmul fast float %2617, %1949
  %2623 = fmul fast float %2617, %1950
  br label %2624

; <label>:2624                                    ; preds = %2616, %2599
  %2625 = phi float [ %2618, %2616 ], [ %1945, %2599 ]
  %2626 = phi float [ %2619, %2616 ], [ %1946, %2599 ]
  %2627 = phi float [ %2620, %2616 ], [ %1947, %2599 ]
  %2628 = phi float [ %2621, %2616 ], [ %1948, %2599 ]
  %2629 = phi float [ %2622, %2616 ], [ %1949, %2599 ]
  %2630 = phi float [ %2623, %2616 ], [ %1950, %2599 ]
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 3
  %2634 = icmp eq i32 %2633, 3
  br i1 %2634, label %2713, label %2635

; <label>:2635                                    ; preds = %2624
  %2636 = and i32 %2632, 16
  %2637 = icmp ne i32 %2636, 0
  %2638 = select i1 %2637, float %2252, float 0.000000e+00
  %2639 = icmp eq i32 %2633, 0
  br i1 %2639, label %2640, label %2668

; <label>:2640                                    ; preds = %2635
  %2641 = and i32 %2632, 64
  %2642 = icmp ne i32 %2641, 0
  %2643 = select i1 %2642, float %2252, float 0.000000e+00
  %2644 = fsub fast float %2472, %2625
  %2645 = fsub fast float %2473, %2626
  %2646 = fsub fast float %2474, %2627
  %2647 = fmul fast float %2638, %2644
  %2648 = fmul fast float %2638, %2645
  %2649 = fmul fast float %2638, %2646
  %2650 = fadd fast float %2647, %2625
  %2651 = fadd fast float %2648, %2626
  %2652 = fadd fast float %2649, %2627
  %2653 = fsub fast float %2458, %1951
  %2654 = fmul fast float %2638, %2653
  %2655 = fadd fast float %2654, %1951
  %2656 = fsub fast float %2600, %2628
  %2657 = fsub fast float %2601, %2629
  %2658 = fsub fast float %2602, %2630
  %2659 = fmul fast float %2643, %2656
  %2660 = fmul fast float %2643, %2657
  %2661 = fmul fast float %2643, %2658
  %2662 = fadd fast float %2659, %2628
  %2663 = fadd fast float %2660, %2629
  %2664 = fadd fast float %2661, %2630
  %2665 = fsub fast float %2615, %1954
  %2666 = fmul fast float %2638, %2665
  %2667 = fadd fast float %2666, %1954
  br label %2713

; <label>:2668                                    ; preds = %2635
  %2669 = icmp eq i32 %2633, 1
  br i1 %2669, label %2670, label %2683

; <label>:2670                                    ; preds = %2668
  %2671 = fadd fast float %2472, -1.000000e+00
  %2672 = fadd fast float %2473, -1.000000e+00
  %2673 = fadd fast float %2474, -1.000000e+00
  %2674 = fmul fast float %2638, %2671
  %2675 = fmul fast float %2638, %2672
  %2676 = fmul fast float %2638, %2673
  %2677 = fadd fast float %2674, 1.000000e+00
  %2678 = fadd fast float %2675, 1.000000e+00
  %2679 = fadd fast float %2676, 1.000000e+00
  %2680 = fmul fast float %2677, %2625
  %2681 = fmul fast float %2678, %2626
  %2682 = fmul fast float %2679, %2627
  br label %2713

; <label>:2683                                    ; preds = %2668
  %2684 = icmp eq i32 %2633, 2
  br i1 %2684, label %2685, label %2713

; <label>:2685                                    ; preds = %2683
  %2686 = call float @dx.op.unary.f32(i32 24, float %2472)  ; Sqrt(value)
  %2687 = call float @dx.op.unary.f32(i32 24, float %2473)  ; Sqrt(value)
  %2688 = call float @dx.op.unary.f32(i32 24, float %2474)  ; Sqrt(value)
  %2689 = fadd fast float %2686, -5.000000e-01
  %2690 = fadd fast float %2687, -5.000000e-01
  %2691 = fadd fast float %2688, -5.000000e-01
  %2692 = fmul fast float %2689, %2638
  %2693 = fmul fast float %2690, %2638
  %2694 = fmul fast float %2691, %2638
  %2695 = fadd fast float %2692, 5.000000e-01
  %2696 = fadd fast float %2693, 5.000000e-01
  %2697 = fadd fast float %2694, 5.000000e-01
  %2698 = fmul fast float %2695, 2.000000e+00
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2699, %2625
  %2701 = fadd fast float %2700, %2698
  %2702 = fmul fast float %2701, %2625
  %2703 = fmul fast float %2696, 2.000000e+00
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = fmul fast float %2704, %2626
  %2706 = fadd fast float %2705, %2703
  %2707 = fmul fast float %2706, %2626
  %2708 = fmul fast float %2697, 2.000000e+00
  %2709 = fsub fast float 1.000000e+00, %2708
  %2710 = fmul fast float %2709, %2627
  %2711 = fadd fast float %2710, %2708
  %2712 = fmul fast float %2711, %2627
  br label %2713

; <label>:2713                                    ; preds = %2685, %2683, %2670, %2640, %2624
  %2714 = phi float [ %2625, %2624 ], [ %2702, %2685 ], [ %2625, %2683 ], [ %2680, %2670 ], [ %2650, %2640 ]
  %2715 = phi float [ %2626, %2624 ], [ %2707, %2685 ], [ %2626, %2683 ], [ %2681, %2670 ], [ %2651, %2640 ]
  %2716 = phi float [ %2627, %2624 ], [ %2712, %2685 ], [ %2627, %2683 ], [ %2682, %2670 ], [ %2652, %2640 ]
  %2717 = phi float [ %2628, %2624 ], [ %2628, %2685 ], [ %2628, %2683 ], [ %2628, %2670 ], [ %2662, %2640 ]
  %2718 = phi float [ %2629, %2624 ], [ %2629, %2685 ], [ %2629, %2683 ], [ %2629, %2670 ], [ %2663, %2640 ]
  %2719 = phi float [ %2630, %2624 ], [ %2630, %2685 ], [ %2630, %2683 ], [ %2630, %2670 ], [ %2664, %2640 ]
  %2720 = phi float [ %1951, %2624 ], [ %1951, %2685 ], [ %1951, %2683 ], [ %1951, %2670 ], [ %2655, %2640 ]
  %2721 = phi float [ %1954, %2624 ], [ %1954, %2685 ], [ %1954, %2683 ], [ %1954, %2670 ], [ %2667, %2640 ]
  %2722 = and i32 %2632, 12
  %2723 = icmp eq i32 %2722, 12
  br i1 %2723, label %2796, label %2724

; <label>:2724                                    ; preds = %2713
  %2725 = and i32 %2632, 2097184
  %2726 = icmp eq i32 %2725, 2097184
  %2727 = select i1 %2726, float %2252, float 0.000000e+00
  %2728 = and i32 %2632, 4194336
  %2729 = icmp eq i32 %2728, 4194336
  %2730 = select i1 %2729, float %2252, float 0.000000e+00
  %2731 = and i32 %2632, 8388640
  %2732 = icmp eq i32 %2731, 8388640
  %2733 = select i1 %2732, float %2252, float 0.000000e+00
  %2734 = icmp eq i32 %2722, 0
  br i1 %2734, label %2735, label %2748

; <label>:2735                                    ; preds = %2724
  %2736 = fsub fast float %2553, %1943
  %2737 = fsub fast float %2554, %1944
  %2738 = fmul fast float %2727, %2736
  %2739 = fmul fast float %2727, %2737
  %2740 = fadd fast float %2738, %1943
  %2741 = fadd fast float %2739, %1944
  %2742 = fsub fast float %2555, %1953
  %2743 = fmul fast float %2730, %2742
  %2744 = fadd fast float %2743, %1953
  %2745 = fsub fast float %2552, %1952
  %2746 = fmul fast float %2733, %2745
  %2747 = fadd fast float %2746, %1952
  br label %2796

; <label>:2748                                    ; preds = %2724
  %2749 = icmp eq i32 %2722, 4
  br i1 %2749, label %2750, label %2782

; <label>:2750                                    ; preds = %2748
  %2751 = fmul fast float %2727, %2553
  %2752 = fmul fast float %2727, %2554
  %2753 = fadd fast float %2751, %1943
  %2754 = fadd fast float %2752, %1944
  %2755 = call float @dx.op.binary.f32(i32 36, float %1953, float %2555)  ; FMin(a,b)
  %2756 = fsub fast float %2755, %1953
  %2757 = fmul fast float %2756, %2730
  %2758 = fadd fast float %2757, %1953
  %2759 = fadd fast float %2552, %1952
  %2760 = fmul fast float %2759, 0x3FF337FAE0000000
  %2761 = fmul fast float %1952, %1952
  %2762 = fmul fast float %2552, %2552
  %2763 = fadd fast float %2762, %2761
  %2764 = fmul fast float %2763, 0x3FE5152B00000000
  %2765 = fmul fast float %1952, 0xBFCC1F85E0000000
  %2766 = fmul fast float %2765, %2552
  %2767 = fadd fast float %2766, 0xBFE1363700000000
  %2768 = fadd fast float %2767, %2760
  %2769 = fsub fast float %2768, %2764
  %2770 = fmul fast float %2759, 0x3FBA6F0D00000000
  %2771 = fmul fast float %2763, 0x3FD0432880000000
  %2772 = fmul fast float %1952, 0xBFEF110800000000
  %2773 = fmul fast float %2772, %2552
  %2774 = fadd fast float %2773, 1.000000e+00
  %2775 = fsub fast float %2774, %2770
  %2776 = fadd fast float %2775, %2771
  %2777 = fdiv fast float %2769, %2776
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = fsub fast float %2778, %1952
  %2780 = fmul fast float %2779, %2733
  %2781 = fadd fast float %2780, %1952
  br label %2796

; <label>:2782                                    ; preds = %2748
  %2783 = icmp eq i32 %2722, 8
  br i1 %2783, label %2784, label %2796

; <label>:2784                                    ; preds = %2782
  %2785 = fmul fast float %2727, %2553
  %2786 = fmul fast float %2727, %2554
  %2787 = fadd fast float %2785, %1943
  %2788 = fadd fast float %2786, %1944
  %2789 = call float @dx.op.binary.f32(i32 36, float %1953, float %2555)  ; FMin(a,b)
  %2790 = fsub fast float %2789, %1953
  %2791 = fmul fast float %2790, %2730
  %2792 = fadd fast float %2791, %1953
  %2793 = fsub fast float %2552, %1952
  %2794 = fmul fast float %2733, %2793
  %2795 = fadd fast float %2794, %1952
  br label %2796

; <label>:2796                                    ; preds = %2784, %2782, %2750, %2735, %2713, %2251, %1955, %1942
  %2797 = phi float [ %1943, %2713 ], [ %1943, %2251 ], [ %1943, %1942 ], [ %2787, %2784 ], [ %1943, %2782 ], [ %2753, %2750 ], [ %2740, %2735 ], [ %1943, %1955 ]
  %2798 = phi float [ %1944, %2713 ], [ %1944, %2251 ], [ %1944, %1942 ], [ %2788, %2784 ], [ %1944, %2782 ], [ %2754, %2750 ], [ %2741, %2735 ], [ %1944, %1955 ]
  %2799 = phi float [ %2714, %2713 ], [ %1945, %2251 ], [ %1945, %1942 ], [ %2714, %2784 ], [ %2714, %2782 ], [ %2714, %2750 ], [ %2714, %2735 ], [ %1945, %1955 ]
  %2800 = phi float [ %2715, %2713 ], [ %1946, %2251 ], [ %1946, %1942 ], [ %2715, %2784 ], [ %2715, %2782 ], [ %2715, %2750 ], [ %2715, %2735 ], [ %1946, %1955 ]
  %2801 = phi float [ %2716, %2713 ], [ %1947, %2251 ], [ %1947, %1942 ], [ %2716, %2784 ], [ %2716, %2782 ], [ %2716, %2750 ], [ %2716, %2735 ], [ %1947, %1955 ]
  %2802 = phi float [ %2717, %2713 ], [ %1948, %2251 ], [ %1948, %1942 ], [ %2717, %2784 ], [ %2717, %2782 ], [ %2717, %2750 ], [ %2717, %2735 ], [ %1948, %1955 ]
  %2803 = phi float [ %2718, %2713 ], [ %1949, %2251 ], [ %1949, %1942 ], [ %2718, %2784 ], [ %2718, %2782 ], [ %2718, %2750 ], [ %2718, %2735 ], [ %1949, %1955 ]
  %2804 = phi float [ %2719, %2713 ], [ %1950, %2251 ], [ %1950, %1942 ], [ %2719, %2784 ], [ %2719, %2782 ], [ %2719, %2750 ], [ %2719, %2735 ], [ %1950, %1955 ]
  %2805 = phi float [ %2720, %2713 ], [ %1951, %2251 ], [ %1951, %1942 ], [ %2720, %2784 ], [ %2720, %2782 ], [ %2720, %2750 ], [ %2720, %2735 ], [ %1951, %1955 ]
  %2806 = phi float [ %1952, %2713 ], [ %1952, %2251 ], [ %1952, %1942 ], [ %2795, %2784 ], [ %1952, %2782 ], [ %2781, %2750 ], [ %2747, %2735 ], [ %1952, %1955 ]
  %2807 = phi float [ %1953, %2713 ], [ %1953, %2251 ], [ %1953, %1942 ], [ %2792, %2784 ], [ %1953, %2782 ], [ %2758, %2750 ], [ %2744, %2735 ], [ %1953, %1955 ]
  %2808 = phi float [ %2721, %2713 ], [ %1954, %2251 ], [ %1954, %1942 ], [ %2721, %2784 ], [ %2721, %2782 ], [ %2721, %2750 ], [ %2721, %2735 ], [ %1954, %1955 ]
  br i1 %375, label %3650, label %2809

; <label>:2809                                    ; preds = %2796
  %2810 = icmp ult i32 %429, 4
  %2811 = add i32 %35, 72
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %35, 76
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = or i32 %2816, %2813
  %2818 = icmp eq i32 %2817, 0
  br i1 %2818, label %3650, label %2819

; <label>:2819                                    ; preds = %2809
  %2820 = and i32 %2813, 262144
  %2821 = icmp ne i32 %2820, 0
  %2822 = select i1 %2821, float %38, float 1.000000e+00
  %2823 = select i1 %2821, float %39, float 0.000000e+00
  %2824 = select i1 %2821, float %40, float 0.000000e+00
  %2825 = select i1 %2821, float %41, float 1.000000e+00
  %2826 = select i1 %2821, float %42, float %58
  %2827 = select i1 %2821, float %43, float %59
  %2828 = add i32 %35, 332
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = lshr i32 %2830, 16
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = fmul fast float %2832, 0x3F50624DE0000000
  %2834 = add i32 %35, 136
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 16
  %2838 = and i32 %2837, 255
  %2839 = lshr i32 %2836, 24
  %2840 = add i32 %35, 340
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 65535
  %2844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2843)  ; LegacyF16ToF32(value)
  %2845 = lshr i32 %2842, 16
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = add i32 %35, 80
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = lshr i32 %2849, 22
  %2851 = shl nuw nsw i32 %2850, 5
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = shl i32 %2849, 4
  %2854 = and i32 %2853, 32752
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = lshr i32 %2849, 7
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2861 = fmul fast float %2860, 1.000000e+03
  %2862 = fmul fast float %365, %2861
  %2863 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2864 = fadd fast float %2863, %355
  %2865 = fmul fast float %366, %2861
  %2866 = call float @dx.op.unary.f32(i32 22, float %2865)  ; Frc(value)
  %2867 = fadd fast float %2866, %357
  %2868 = fmul fast float %2833, %2861
  %2869 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2870 = fmul fast float %2869, 0x401921FB60000000
  %2871 = fadd fast float %2870, %2852
  %2872 = call float @dx.op.unary.f32(i32 13, float %2871)  ; Sin(value)
  %2873 = call float @dx.op.unary.f32(i32 12, float %2871)  ; Cos(value)
  %2874 = fsub fast float -0.000000e+00, %2872
  %2875 = fadd fast float %2826, -5.000000e-01
  %2876 = fadd fast float %2827, -5.000000e-01
  %2877 = fmul fast float %2844, %2875
  %2878 = fmul fast float %2846, %2876
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = fadd fast float %2878, 5.000000e-01
  %2881 = fmul fast float %2855, %2879
  %2882 = fmul fast float %2858, %2880
  %2883 = fmul fast float %2873, %2881
  %2884 = call float @dx.op.tertiary.f32(i32 46, float %2874, float %2882, float %2883)  ; FMad(a,b,c)
  %2885 = fmul fast float %2872, %2881
  %2886 = call float @dx.op.tertiary.f32(i32 46, float %2873, float %2882, float %2885)  ; FMad(a,b,c)
  %2887 = fadd fast float %2864, %2884
  %2888 = fadd fast float %2867, %2886
  %2889 = icmp ugt i32 %2838, 1
  %2890 = icmp ugt i32 %2836, 33554431
  %2891 = or i1 %2890, %2889
  br i1 %2891, label %2892, label %2917

; <label>:2892                                    ; preds = %2819
  %2893 = add i32 %35, 276
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 16
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = fmul fast float %2860, %2897
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = mul nuw nsw i32 %2838, %2839
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2899, %2901
  %2903 = call float @dx.op.unary.f32(i32 27, float %2902)  ; Round_ni(value)
  %2904 = fptoui float %2903 to i32
  %2905 = urem i32 %2904, %2838
  %2906 = udiv i32 %2904, %2839
  %2907 = call float @dx.op.unary.f32(i32 22, float %2887)  ; Frc(value)
  %2908 = call float @dx.op.unary.f32(i32 22, float %2888)  ; Frc(value)
  %2909 = uitofp i32 %2905 to float
  %2910 = uitofp i32 %2906 to float
  %2911 = fadd fast float %2907, %2909
  %2912 = fadd fast float %2908, %2910
  %2913 = uitofp i32 %2838 to float
  %2914 = uitofp i32 %2839 to float
  %2915 = fdiv fast float %2911, %2913
  %2916 = fdiv fast float %2912, %2914
  br label %2917

; <label>:2917                                    ; preds = %2892, %2819
  %2918 = phi float [ %2915, %2892 ], [ %2887, %2819 ]
  %2919 = phi float [ %2916, %2892 ], [ %2888, %2819 ]
  %2920 = and i32 %2813, 16777216
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %3031, label %2922

; <label>:2922                                    ; preds = %2917
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2926 = extractvalue %dx.types.CBufRet.f32 %2923, 2
  %2927 = fadd fast float %2924, %137
  %2928 = fadd fast float %2925, %138
  %2929 = fadd fast float %2926, %139
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2933 = icmp eq i32 %36, 65535
  br i1 %2933, label %3028, label %2934

; <label>:2934                                    ; preds = %2922
  %2935 = lshr i32 %36, 1
  %2936 = shl i32 %2935, 2
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %36, 1
  %2940 = icmp ne i32 %2939, 0
  %2941 = lshr i32 %2938, 16
  %2942 = and i32 %2938, 65535
  %2943 = select i1 %2940, i32 %2941, i32 %2942
  %2944 = icmp eq i32 %2943, 65535
  br i1 %2944, label %3024, label %2945

; <label>:2945                                    ; preds = %2934
  %2946 = mul nuw nsw i32 %2943, 40
  %2947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = add nuw nsw i32 %2946, 12
  %2952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.ResRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.ResRet.f32 %2952, 2
  %2956 = add nuw nsw i32 %2946, 24
  %2957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.ResRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.ResRet.f32 %2957, 2
  %2961 = add nuw nsw i32 %2946, 36
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = fsub fast float %2927, %2948
  %2965 = fsub fast float %2928, %2949
  %2966 = fsub fast float %2929, %2950
  %2967 = fmul fast float %2963, %2964
  %2968 = fmul fast float %2963, %2965
  %2969 = fmul fast float %2963, %2966
  %2970 = call float @dx.op.unary.f32(i32 27, float %2967)  ; Round_ni(value)
  %2971 = call float @dx.op.unary.f32(i32 27, float %2968)  ; Round_ni(value)
  %2972 = call float @dx.op.unary.f32(i32 27, float %2969)  ; Round_ni(value)
  %2973 = fadd fast float %2970, 5.000000e-01
  %2974 = fadd fast float %2971, 5.000000e-01
  %2975 = fadd fast float %2972, 5.000000e-01
  %2976 = fmul fast float %2973, %2953
  %2977 = fmul fast float %2974, %2954
  %2978 = fmul fast float %2975, %2955
  %2979 = shl i32 %36, 2
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = add i32 %2981, 0
  %2983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2984 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2985 = call float @dx.op.unary.f32(i32 22, float %2977)  ; Frc(value)
  %2986 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2983, %dx.types.Handle %32, float %2984, float %2985, float %2986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = fmul fast float %2988, 1.023000e+03
  %2992 = fmul fast float %2989, 1.023000e+03
  %2993 = fmul fast float %2990, 1.023000e+03
  %2994 = fadd fast float %2991, 5.000000e-01
  %2995 = fadd fast float %2992, 5.000000e-01
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = call float @dx.op.unary.f32(i32 27, float %2994)  ; Round_ni(value)
  %2998 = call float @dx.op.unary.f32(i32 27, float %2995)  ; Round_ni(value)
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = fsub fast float %2967, %2970
  %3001 = fsub fast float %2968, %2971
  %3002 = fsub fast float %2969, %2972
  %3003 = fmul fast float %3000, 7.500000e-01
  %3004 = fmul fast float %3001, 7.500000e-01
  %3005 = fmul fast float %3002, 7.500000e-01
  %3006 = fadd fast float %2970, 1.250000e-01
  %3007 = fadd fast float %3006, %3003
  %3008 = fadd fast float %3007, %2997
  %3009 = fadd fast float %2971, 1.250000e-01
  %3010 = fadd fast float %3009, %3004
  %3011 = fadd fast float %3010, %2998
  %3012 = fadd fast float %2972, 1.250000e-01
  %3013 = fadd fast float %3012, %3005
  %3014 = fadd fast float %3013, %2999
  %3015 = fmul fast float %3008, %2958
  %3016 = fmul fast float %3011, %2959
  %3017 = fmul fast float %3014, %2960
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3021, %dx.types.Handle %30, float %3015, float %3016, float %3017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  br label %3024

; <label>:3024                                    ; preds = %2945, %2934
  %3025 = phi float [ %3023, %2945 ], [ -1.000000e+00, %2934 ]
  %3026 = fadd fast float %3025, %2932
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  br label %3028

; <label>:3028                                    ; preds = %3024, %2922
  %3029 = phi float [ %3027, %3024 ], [ %2932, %2922 ]
  %3030 = fmul fast float %3029, %424
  br label %3031

; <label>:3031                                    ; preds = %3028, %2917
  %3032 = phi float [ %3030, %3028 ], [ %424, %2917 ]
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = and i32 %3034, 256
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3083, label %3037

; <label>:3037                                    ; preds = %3031
  %3038 = add i32 %35, 452
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = add i32 %3040, 0
  %3042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3042, %dx.types.Handle %71, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = add i32 %35, 148
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = shl i32 %3047, 4
  %3049 = and i32 %3048, 32752
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = lshr i32 %3047, 7
  %3052 = and i32 %3051, 32752
  %3053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3052)  ; LegacyF16ToF32(value)
  %3054 = fsub fast float 1.000000e+00, %3032
  %3055 = call float @dx.op.binary.f32(i32 35, float %3054, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3056 = bitcast float %3032 to i32
  %3057 = sitofp i32 %3056 to float
  %3058 = fadd fast float %3057, 0xC1CFBF8940000000
  %3059 = fmul fast float %3053, %3058
  %3060 = fadd fast float %3059, 0x41CFBF8940000000
  %3061 = fptosi float %3060 to i32
  %3062 = bitcast i32 %3061 to float
  %3063 = bitcast float %3055 to i32
  %3064 = sitofp i32 %3063 to float
  %3065 = fadd fast float %3064, 0xC1CFBF8940000000
  %3066 = fmul fast float %3065, %3053
  %3067 = fadd fast float %3066, 0x41CFBF8940000000
  %3068 = fptosi float %3067 to i32
  %3069 = bitcast i32 %3068 to float
  %3070 = fmul fast float %3062, %3050
  %3071 = fmul fast float %3069, %3050
  %3072 = fsub fast float %3055, %3070
  %3073 = fadd fast float %3071, %3055
  %3074 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3075 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3076 = fsub fast float %3044, %3074
  %3077 = fsub fast float %3075, %3074
  %3078 = bitcast float %3077 to i32
  %3079 = sub nsw i32 2129859010, %3078
  %3080 = bitcast i32 %3079 to float
  %3081 = fmul fast float %3080, %3076
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  br label %3083

; <label>:3083                                    ; preds = %3037, %3031
  %3084 = phi float [ %3082, %3037 ], [ %3032, %3031 ]
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 128
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %3105, label %3089

; <label>:3089                                    ; preds = %3083
  %3090 = add i32 %35, 436
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = add i32 %3092, 0
  %3094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3094, %dx.types.Handle %71, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3096 = extractvalue %dx.types.ResRet.f32 %3095, 0
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 524288
  %3100 = icmp ne i32 %3099, 0
  %3101 = fcmp fast ogt float %3096, 0x3FE0101020000000
  %3102 = select i1 %3101, float 1.000000e+00, float 0.000000e+00
  %3103 = select i1 %3100, float %3102, float %3096
  %3104 = fmul fast float %3103, %3084
  br label %3105

; <label>:3105                                    ; preds = %3089, %3083
  %3106 = phi float [ %3104, %3089 ], [ %3084, %3083 ]
  %3107 = fcmp fast ult float %3106, 0x3F70101020000000
  br i1 %3107, label %3650, label %3108

; <label>:3108                                    ; preds = %3105
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = and i32 %3110, 16
  %3112 = icmp eq i32 %3111, 0
  br i1 %3112, label %3311, label %3113

; <label>:3113                                    ; preds = %3108
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = add i32 %35, 388
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = add i32 %3118, 0
  %3120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3120, %dx.types.Handle %70, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.ResRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.ResRet.f32 %3121, 2
  %3125 = extractvalue %dx.types.ResRet.f32 %3121, 3
  %3126 = and i32 %3115, 255
  %3127 = uitofp i32 %3126 to float
  %3128 = lshr i32 %3115, 8
  %3129 = and i32 %3128, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = fmul fast float %3125, %3127
  %3132 = fadd fast float %3131, %3130
  %3133 = fmul fast float %3132, 0x3F70101000000000
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 512
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3146, label %3138

; <label>:3138                                    ; preds = %3113
  %3139 = add i32 %35, 468
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %3141, 0
  %3143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3143, %dx.types.Handle %71, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  br label %3146

; <label>:3146                                    ; preds = %3138, %3113
  %3147 = phi float [ %3145, %3138 ], [ 1.000000e+00, %3113 ]
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 33554432
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3258, label %3152

; <label>:3152                                    ; preds = %3146
  %3153 = add i32 %35, 272
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 65535
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = lshr i32 %3155, 16
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = add i32 %35, 276
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 65535
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = lshr i32 %3166, 24
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = and i32 %3166, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3171, 0x3F70101020000000
  %3173 = lshr i32 %3166, 8
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = lshr i32 %3166, 16
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = add i32 %35, 268
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = lshr i32 %3183, 24
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = and i32 %3183, 255
  %3188 = uitofp i32 %3187 to float
  %3189 = fmul fast float %3188, 0x3F70101020000000
  %3190 = lshr i32 %3183, 8
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3183, 16
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = bitcast float %3122 to i32
  %3199 = ashr i32 %3198, 1
  %3200 = sub nsw i32 1597463174, %3199
  %3201 = bitcast i32 %3200 to float
  %3202 = fmul fast float %3122, 5.000000e-01
  %3203 = fmul fast float %3201, %3201
  %3204 = fmul fast float %3203, %3202
  %3205 = fsub fast float 1.500000e+00, %3204
  %3206 = fmul fast float %3201, %3122
  %3207 = fmul fast float %3206, %3205
  %3208 = bitcast float %3123 to i32
  %3209 = ashr i32 %3208, 1
  %3210 = sub nsw i32 1597463174, %3209
  %3211 = bitcast i32 %3210 to float
  %3212 = fmul fast float %3123, 5.000000e-01
  %3213 = fmul fast float %3211, %3211
  %3214 = fmul fast float %3213, %3212
  %3215 = fsub fast float 1.500000e+00, %3214
  %3216 = fmul fast float %3211, %3123
  %3217 = fmul fast float %3216, %3215
  %3218 = bitcast float %3124 to i32
  %3219 = ashr i32 %3218, 1
  %3220 = sub nsw i32 1597463174, %3219
  %3221 = bitcast i32 %3220 to float
  %3222 = fmul fast float %3124, 5.000000e-01
  %3223 = fmul fast float %3221, %3221
  %3224 = fmul fast float %3223, %3222
  %3225 = fsub fast float 1.500000e+00, %3224
  %3226 = fmul fast float %3221, %3124
  %3227 = fmul fast float %3226, %3225
  %3228 = fsub fast float %3207, %3189
  %3229 = fsub fast float %3217, %3193
  %3230 = fsub fast float %3227, %3197
  %3231 = fmul fast float %3228, %3157
  %3232 = fmul fast float %3229, %3159
  %3233 = fmul fast float %3230, %3164
  %3234 = fadd fast float %3231, %3172
  %3235 = fadd fast float %3232, %3176
  %3236 = fadd fast float %3233, %3180
  %3237 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3238 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3239 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3240 = fmul fast float %3237, %3237
  %3241 = fmul fast float %3238, %3238
  %3242 = fmul fast float %3239, %3239
  %3243 = fsub fast float %3240, %3122
  %3244 = fsub fast float %3241, %3123
  %3245 = fsub fast float %3242, %3124
  %3246 = fmul fast float %3243, %3147
  %3247 = fmul fast float %3244, %3147
  %3248 = fmul fast float %3245, %3147
  %3249 = fadd fast float %3246, %3122
  %3250 = fadd fast float %3247, %3123
  %3251 = fadd fast float %3248, %3124
  %3252 = fadd fast float %3169, %3133
  %3253 = fsub fast float %3252, %3186
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3255 = fsub fast float %3254, %3133
  %3256 = fmul fast float %3255, %3147
  %3257 = fadd fast float %3256, %3133
  br label %3311

; <label>:3258                                    ; preds = %3146
  %3259 = and i32 %3149, 134217728
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3295, label %3261

; <label>:3261                                    ; preds = %3258
  %3262 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %3264 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3265 = fadd fast float %3262, -5.000000e-01
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fadd fast float %3264, -5.000000e-01
  %3268 = fmul fast float %3265, %3147
  %3269 = fmul fast float %3266, %3147
  %3270 = fmul fast float %3267, %3147
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = fadd fast float %3270, 5.000000e-01
  %3274 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3275 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3276 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3277 = fmul fast float %3271, 2.000000e+00
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = fmul fast float %3278, %3274
  %3280 = fadd fast float %3279, %3277
  %3281 = fmul fast float %3280, %3274
  %3282 = fmul fast float %3272, 2.000000e+00
  %3283 = fsub fast float 1.000000e+00, %3282
  %3284 = fmul fast float %3283, %3275
  %3285 = fadd fast float %3284, %3282
  %3286 = fmul fast float %3285, %3275
  %3287 = fmul fast float %3273, 2.000000e+00
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %3288, %3276
  %3290 = fadd fast float %3289, %3287
  %3291 = fmul fast float %3290, %3276
  %3292 = fmul fast float %3281, %3281
  %3293 = fmul fast float %3286, %3286
  %3294 = fmul fast float %3291, %3291
  br label %3311

; <label>:3295                                    ; preds = %3258
  %3296 = fmul fast float %342, %342
  %3297 = fmul fast float %346, %346
  %3298 = fmul fast float %350, %350
  %3299 = fadd fast float %3296, -1.000000e+00
  %3300 = fadd fast float %3297, -1.000000e+00
  %3301 = fadd fast float %3298, -1.000000e+00
  %3302 = fmul fast float %3147, %3299
  %3303 = fmul fast float %3147, %3300
  %3304 = fmul fast float %3147, %3301
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fadd fast float %3304, 1.000000e+00
  %3308 = fmul fast float %3305, %3122
  %3309 = fmul fast float %3306, %3123
  %3310 = fmul fast float %3307, %3124
  br label %3311

; <label>:3311                                    ; preds = %3295, %3261, %3152, %3108
  %3312 = phi float [ %3257, %3152 ], [ %3133, %3261 ], [ %3133, %3295 ], [ 0x3FA23C0BE0000000, %3108 ]
  %3313 = phi float [ %3249, %3152 ], [ %3292, %3261 ], [ %3308, %3295 ], [ 1.000000e+00, %3108 ]
  %3314 = phi float [ %3250, %3152 ], [ %3293, %3261 ], [ %3309, %3295 ], [ 1.000000e+00, %3108 ]
  %3315 = phi float [ %3251, %3152 ], [ %3294, %3261 ], [ %3310, %3295 ], [ 1.000000e+00, %3108 ]
  %3316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.i32 %3316, 1
  %3318 = and i32 %3317, 1
  %3319 = icmp ne i32 %3318, 0
  %3320 = add i32 %35, 372
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 32
  %3324 = icmp ne i32 %3323, 0
  %3325 = and i1 %3319, %3324
  %3326 = select i1 %3325, float 1.000000e+00, float %3313
  %3327 = select i1 %3325, float 0x3FD3333340000000, float %3314
  %3328 = select i1 %3325, float 0x3FD3333340000000, float %3315
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = and i32 %3330, 32
  %3332 = icmp eq i32 %3331, 0
  br i1 %3332, label %3405, label %3333

; <label>:3333                                    ; preds = %3311
  %3334 = add i32 %35, 140
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = add i32 %35, 404
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = add i32 %3339, 0
  %3341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3341, %dx.types.Handle %70, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3343 = extractvalue %dx.types.ResRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.ResRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.ResRet.f32 %3342, 2
  %3346 = extractvalue %dx.types.ResRet.f32 %3342, 3
  %3347 = and i32 %3336, 255
  %3348 = uitofp i32 %3347 to float
  %3349 = lshr i32 %3336, 8
  %3350 = and i32 %3349, 255
  %3351 = uitofp i32 %3350 to float
  %3352 = lshr i32 %3336, 16
  %3353 = and i32 %3352, 255
  %3354 = uitofp i32 %3353 to float
  %3355 = fmul fast float %3354, 0x3F70101000000000
  %3356 = fmul fast float %3343, %3348
  %3357 = fadd fast float %3356, %3351
  %3358 = fmul fast float %3357, 0x3F70101000000000
  %3359 = fadd fast float %3344, -5.000000e-01
  %3360 = fadd fast float %3346, -5.000000e-01
  %3361 = fmul fast float %3359, %3355
  %3362 = fmul fast float %3360, %3355
  %3363 = fadd fast float %3361, 5.000000e-01
  %3364 = fadd fast float %3362, 5.000000e-01
  %3365 = fmul fast float %3363, 2.000000e+00
  %3366 = fadd fast float %3365, -1.000000e+00
  %3367 = fmul fast float %3364, 2.000000e+00
  %3368 = fadd fast float %3367, -1.000000e+00
  %3369 = fadd fast float %3366, %3368
  %3370 = fmul fast float %3369, 5.000000e-01
  %3371 = fsub fast float %3366, %3368
  %3372 = fmul fast float %3371, 5.000000e-01
  %3373 = call float @dx.op.unary.f32(i32 6, float %3370)  ; FAbs(value)
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = call float @dx.op.unary.f32(i32 6, float %3372)  ; FAbs(value)
  %3376 = fsub fast float %3374, %3375
  %3377 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3372, float %3376, float %3370, float %3372, float %3376)  ; Dot3(ax,ay,az,bx,by,bz)
  %3378 = call float @dx.op.unary.f32(i32 25, float %3377)  ; Rsqrt(value)
  %3379 = fmul fast float %3370, %3378
  %3380 = fmul fast float %3372, %3378
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 67108864
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3401, label %3385

; <label>:3385                                    ; preds = %3333
  %3386 = add i32 %35, 328
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 65535
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 65535
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = lshr i32 %3388, 16
  %3396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3395)  ; LegacyF16ToF32(value)
  %3397 = fsub fast float %3358, %3396
  %3398 = fmul fast float %3397, %3390
  %3399 = fadd fast float %3398, %3394
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  br label %3401

; <label>:3401                                    ; preds = %3385, %3333
  %3402 = phi float [ %3400, %3385 ], [ %3358, %3333 ]
  %3403 = call float @dx.op.dot2.f32(i32 54, float %3379, float %3380, float %2822, float %2823)  ; Dot2(ax,ay,bx,by)
  %3404 = call float @dx.op.dot2.f32(i32 54, float %3379, float %3380, float %2824, float %2825)  ; Dot2(ax,ay,bx,by)
  br label %3405

; <label>:3405                                    ; preds = %3401, %3311
  %3406 = phi float [ %3402, %3401 ], [ 0x3FD6666660000000, %3311 ]
  %3407 = phi float [ %3403, %3401 ], [ 0.000000e+00, %3311 ]
  %3408 = phi float [ %3404, %3401 ], [ 0.000000e+00, %3311 ]
  %3409 = phi float [ %3345, %3401 ], [ 1.000000e+00, %3311 ]
  %3410 = add i32 %35, 208
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = lshr i32 %3412, 22
  %3414 = shl nuw nsw i32 %3413, 5
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 64
  %3419 = icmp eq i32 %3418, 0
  br i1 %3419, label %3453, label %3420

; <label>:3420                                    ; preds = %3405
  %3421 = add i32 %35, 420
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = add i32 %3423, 0
  %3425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 131072
  %3429 = icmp eq i32 %3428, 0
  %3430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3425, %dx.types.Handle %70, float %2918, float %2919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3434 = fmul fast float %3431, %330
  %3435 = fmul fast float %3432, %333
  %3436 = fmul fast float %3433, %336
  br i1 %3429, label %3443, label %3437

; <label>:3437                                    ; preds = %3420
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = fmul fast float %3439, %3434
  %3441 = fmul fast float %3439, %3435
  %3442 = fmul fast float %3439, %3436
  br label %3443

; <label>:3443                                    ; preds = %3437, %3420
  %3444 = phi float [ %3440, %3437 ], [ %3434, %3420 ]
  %3445 = phi float [ %3441, %3437 ], [ %3435, %3420 ]
  %3446 = phi float [ %3442, %3437 ], [ %3436, %3420 ]
  %3447 = fmul fast float %3444, %3415
  %3448 = select i1 %198, float %3447, float %3444
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3448, float %3445, float %3446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = select i1 %198, float 0.000000e+00, float %3444
  %3451 = select i1 %198, float %3449, float %3445
  %3452 = select i1 %198, float 0.000000e+00, float %3446
  br label %3453

; <label>:3453                                    ; preds = %3443, %3405
  %3454 = phi float [ %3450, %3443 ], [ 0.000000e+00, %3405 ]
  %3455 = phi float [ %3451, %3443 ], [ 0.000000e+00, %3405 ]
  %3456 = phi float [ %3452, %3443 ], [ 0.000000e+00, %3405 ]
  %3457 = add i32 %35, 144
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = lshr i32 %3459, 8
  %3463 = and i32 %3462, 255
  %3464 = uitofp i32 %3463 to float
  %3465 = call float @dx.op.dot3.f32(i32 55, float %3326, float %3327, float %3328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3466 = fmul fast float %3464, %3465
  %3467 = fadd fast float %3466, %3461
  %3468 = fmul fast float %3467, 0x3F70101020000000
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  br i1 %2810, label %3470, label %3478

; <label>:3470                                    ; preds = %3453
  %3471 = fsub fast float 1.000000e+00, %3106
  %3472 = fmul fast float %3471, %2799
  %3473 = fmul fast float %3471, %2800
  %3474 = fmul fast float %3471, %2801
  %3475 = fmul fast float %3471, %2802
  %3476 = fmul fast float %3471, %2803
  %3477 = fmul fast float %3471, %2804
  br label %3478

; <label>:3478                                    ; preds = %3470, %3453
  %3479 = phi float [ %3472, %3470 ], [ %2799, %3453 ]
  %3480 = phi float [ %3473, %3470 ], [ %2800, %3453 ]
  %3481 = phi float [ %3474, %3470 ], [ %2801, %3453 ]
  %3482 = phi float [ %3475, %3470 ], [ %2802, %3453 ]
  %3483 = phi float [ %3476, %3470 ], [ %2803, %3453 ]
  %3484 = phi float [ %3477, %3470 ], [ %2804, %3453 ]
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = and i32 %3486, 3
  %3488 = icmp eq i32 %3487, 3
  br i1 %3488, label %3567, label %3489

; <label>:3489                                    ; preds = %3478
  %3490 = and i32 %3486, 16
  %3491 = icmp ne i32 %3490, 0
  %3492 = select i1 %3491, float %3106, float 0.000000e+00
  %3493 = icmp eq i32 %3487, 0
  br i1 %3493, label %3494, label %3522

; <label>:3494                                    ; preds = %3489
  %3495 = and i32 %3486, 64
  %3496 = icmp ne i32 %3495, 0
  %3497 = select i1 %3496, float %3106, float 0.000000e+00
  %3498 = fsub fast float %3326, %3479
  %3499 = fsub fast float %3327, %3480
  %3500 = fsub fast float %3328, %3481
  %3501 = fmul fast float %3492, %3498
  %3502 = fmul fast float %3492, %3499
  %3503 = fmul fast float %3492, %3500
  %3504 = fadd fast float %3501, %3479
  %3505 = fadd fast float %3502, %3480
  %3506 = fadd fast float %3503, %3481
  %3507 = fsub fast float %3312, %2805
  %3508 = fmul fast float %3492, %3507
  %3509 = fadd fast float %3508, %2805
  %3510 = fsub fast float %3454, %3482
  %3511 = fsub fast float %3455, %3483
  %3512 = fsub fast float %3456, %3484
  %3513 = fmul fast float %3497, %3510
  %3514 = fmul fast float %3497, %3511
  %3515 = fmul fast float %3497, %3512
  %3516 = fadd fast float %3513, %3482
  %3517 = fadd fast float %3514, %3483
  %3518 = fadd fast float %3515, %3484
  %3519 = fsub fast float %3469, %2808
  %3520 = fmul fast float %3492, %3519
  %3521 = fadd fast float %3520, %2808
  br label %3567

; <label>:3522                                    ; preds = %3489
  %3523 = icmp eq i32 %3487, 1
  br i1 %3523, label %3524, label %3537

; <label>:3524                                    ; preds = %3522
  %3525 = fadd fast float %3326, -1.000000e+00
  %3526 = fadd fast float %3327, -1.000000e+00
  %3527 = fadd fast float %3328, -1.000000e+00
  %3528 = fmul fast float %3492, %3525
  %3529 = fmul fast float %3492, %3526
  %3530 = fmul fast float %3492, %3527
  %3531 = fadd fast float %3528, 1.000000e+00
  %3532 = fadd fast float %3529, 1.000000e+00
  %3533 = fadd fast float %3530, 1.000000e+00
  %3534 = fmul fast float %3531, %3479
  %3535 = fmul fast float %3532, %3480
  %3536 = fmul fast float %3533, %3481
  br label %3567

; <label>:3537                                    ; preds = %3522
  %3538 = icmp eq i32 %3487, 2
  br i1 %3538, label %3539, label %3567

; <label>:3539                                    ; preds = %3537
  %3540 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3541 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3542 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3543 = fadd fast float %3540, -5.000000e-01
  %3544 = fadd fast float %3541, -5.000000e-01
  %3545 = fadd fast float %3542, -5.000000e-01
  %3546 = fmul fast float %3543, %3492
  %3547 = fmul fast float %3544, %3492
  %3548 = fmul fast float %3545, %3492
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = fmul fast float %3549, 2.000000e+00
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3553, %3479
  %3555 = fadd fast float %3554, %3552
  %3556 = fmul fast float %3555, %3479
  %3557 = fmul fast float %3550, 2.000000e+00
  %3558 = fsub fast float 1.000000e+00, %3557
  %3559 = fmul fast float %3558, %3480
  %3560 = fadd fast float %3559, %3557
  %3561 = fmul fast float %3560, %3480
  %3562 = fmul fast float %3551, 2.000000e+00
  %3563 = fsub fast float 1.000000e+00, %3562
  %3564 = fmul fast float %3563, %3481
  %3565 = fadd fast float %3564, %3562
  %3566 = fmul fast float %3565, %3481
  br label %3567

; <label>:3567                                    ; preds = %3539, %3537, %3524, %3494, %3478
  %3568 = phi float [ %3479, %3478 ], [ %3556, %3539 ], [ %3479, %3537 ], [ %3534, %3524 ], [ %3504, %3494 ]
  %3569 = phi float [ %3480, %3478 ], [ %3561, %3539 ], [ %3480, %3537 ], [ %3535, %3524 ], [ %3505, %3494 ]
  %3570 = phi float [ %3481, %3478 ], [ %3566, %3539 ], [ %3481, %3537 ], [ %3536, %3524 ], [ %3506, %3494 ]
  %3571 = phi float [ %3482, %3478 ], [ %3482, %3539 ], [ %3482, %3537 ], [ %3482, %3524 ], [ %3516, %3494 ]
  %3572 = phi float [ %3483, %3478 ], [ %3483, %3539 ], [ %3483, %3537 ], [ %3483, %3524 ], [ %3517, %3494 ]
  %3573 = phi float [ %3484, %3478 ], [ %3484, %3539 ], [ %3484, %3537 ], [ %3484, %3524 ], [ %3518, %3494 ]
  %3574 = phi float [ %2805, %3478 ], [ %2805, %3539 ], [ %2805, %3537 ], [ %2805, %3524 ], [ %3509, %3494 ]
  %3575 = phi float [ %2808, %3478 ], [ %2808, %3539 ], [ %2808, %3537 ], [ %2808, %3524 ], [ %3521, %3494 ]
  %3576 = and i32 %3486, 12
  %3577 = icmp eq i32 %3576, 12
  br i1 %3577, label %3650, label %3578

; <label>:3578                                    ; preds = %3567
  %3579 = and i32 %3486, 2097184
  %3580 = icmp eq i32 %3579, 2097184
  %3581 = select i1 %3580, float %3106, float 0.000000e+00
  %3582 = and i32 %3486, 4194336
  %3583 = icmp eq i32 %3582, 4194336
  %3584 = select i1 %3583, float %3106, float 0.000000e+00
  %3585 = and i32 %3486, 8388640
  %3586 = icmp eq i32 %3585, 8388640
  %3587 = select i1 %3586, float %3106, float 0.000000e+00
  %3588 = icmp eq i32 %3576, 0
  br i1 %3588, label %3589, label %3602

; <label>:3589                                    ; preds = %3578
  %3590 = fsub fast float %3407, %2797
  %3591 = fsub fast float %3408, %2798
  %3592 = fmul fast float %3581, %3590
  %3593 = fmul fast float %3581, %3591
  %3594 = fadd fast float %3592, %2797
  %3595 = fadd fast float %3593, %2798
  %3596 = fsub fast float %3409, %2807
  %3597 = fmul fast float %3584, %3596
  %3598 = fadd fast float %3597, %2807
  %3599 = fsub fast float %3406, %2806
  %3600 = fmul fast float %3587, %3599
  %3601 = fadd fast float %3600, %2806
  br label %3650

; <label>:3602                                    ; preds = %3578
  %3603 = icmp eq i32 %3576, 4
  br i1 %3603, label %3604, label %3636

; <label>:3604                                    ; preds = %3602
  %3605 = fmul fast float %3581, %3407
  %3606 = fmul fast float %3581, %3408
  %3607 = fadd fast float %3605, %2797
  %3608 = fadd fast float %3606, %2798
  %3609 = call float @dx.op.binary.f32(i32 36, float %2807, float %3409)  ; FMin(a,b)
  %3610 = fsub fast float %3609, %2807
  %3611 = fmul fast float %3610, %3584
  %3612 = fadd fast float %3611, %2807
  %3613 = fadd fast float %3406, %2806
  %3614 = fmul fast float %3613, 0x3FF337FAE0000000
  %3615 = fmul fast float %2806, %2806
  %3616 = fmul fast float %3406, %3406
  %3617 = fadd fast float %3616, %3615
  %3618 = fmul fast float %3617, 0x3FE5152B00000000
  %3619 = fmul fast float %2806, 0xBFCC1F85E0000000
  %3620 = fmul fast float %3619, %3406
  %3621 = fadd fast float %3620, 0xBFE1363700000000
  %3622 = fadd fast float %3621, %3614
  %3623 = fsub fast float %3622, %3618
  %3624 = fmul fast float %3613, 0x3FBA6F0D00000000
  %3625 = fmul fast float %3617, 0x3FD0432880000000
  %3626 = fmul fast float %2806, 0xBFEF110800000000
  %3627 = fmul fast float %3626, %3406
  %3628 = fadd fast float %3627, 1.000000e+00
  %3629 = fsub fast float %3628, %3624
  %3630 = fadd fast float %3629, %3625
  %3631 = fdiv fast float %3623, %3630
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fsub fast float %3632, %2806
  %3634 = fmul fast float %3633, %3587
  %3635 = fadd fast float %3634, %2806
  br label %3650

; <label>:3636                                    ; preds = %3602
  %3637 = icmp eq i32 %3576, 8
  br i1 %3637, label %3638, label %3650

; <label>:3638                                    ; preds = %3636
  %3639 = fmul fast float %3581, %3407
  %3640 = fmul fast float %3581, %3408
  %3641 = fadd fast float %3639, %2797
  %3642 = fadd fast float %3640, %2798
  %3643 = call float @dx.op.binary.f32(i32 36, float %2807, float %3409)  ; FMin(a,b)
  %3644 = fsub fast float %3643, %2807
  %3645 = fmul fast float %3644, %3584
  %3646 = fadd fast float %3645, %2807
  %3647 = fsub fast float %3406, %2806
  %3648 = fmul fast float %3587, %3647
  %3649 = fadd fast float %3648, %2806
  br label %3650

; <label>:3650                                    ; preds = %3638, %3636, %3604, %3589, %3567, %3105, %2809, %2796
  %3651 = phi float [ %2797, %3567 ], [ %2797, %3105 ], [ %2797, %2796 ], [ %2797, %2809 ], [ %3594, %3589 ], [ %3607, %3604 ], [ %2797, %3636 ], [ %3641, %3638 ]
  %3652 = phi float [ %2798, %3567 ], [ %2798, %3105 ], [ %2798, %2796 ], [ %2798, %2809 ], [ %3595, %3589 ], [ %3608, %3604 ], [ %2798, %3636 ], [ %3642, %3638 ]
  %3653 = phi float [ %3568, %3567 ], [ %2799, %3105 ], [ %2799, %2796 ], [ %2799, %2809 ], [ %3568, %3589 ], [ %3568, %3604 ], [ %3568, %3636 ], [ %3568, %3638 ]
  %3654 = phi float [ %3569, %3567 ], [ %2800, %3105 ], [ %2800, %2796 ], [ %2800, %2809 ], [ %3569, %3589 ], [ %3569, %3604 ], [ %3569, %3636 ], [ %3569, %3638 ]
  %3655 = phi float [ %3570, %3567 ], [ %2801, %3105 ], [ %2801, %2796 ], [ %2801, %2809 ], [ %3570, %3589 ], [ %3570, %3604 ], [ %3570, %3636 ], [ %3570, %3638 ]
  %3656 = phi float [ %3571, %3567 ], [ %2802, %3105 ], [ %2802, %2796 ], [ %2802, %2809 ], [ %3571, %3589 ], [ %3571, %3604 ], [ %3571, %3636 ], [ %3571, %3638 ]
  %3657 = phi float [ %3572, %3567 ], [ %2803, %3105 ], [ %2803, %2796 ], [ %2803, %2809 ], [ %3572, %3589 ], [ %3572, %3604 ], [ %3572, %3636 ], [ %3572, %3638 ]
  %3658 = phi float [ %3573, %3567 ], [ %2804, %3105 ], [ %2804, %2796 ], [ %2804, %2809 ], [ %3573, %3589 ], [ %3573, %3604 ], [ %3573, %3636 ], [ %3573, %3638 ]
  %3659 = phi float [ %3574, %3567 ], [ %2805, %3105 ], [ %2805, %2796 ], [ %2805, %2809 ], [ %3574, %3589 ], [ %3574, %3604 ], [ %3574, %3636 ], [ %3574, %3638 ]
  %3660 = phi float [ %2806, %3567 ], [ %2806, %3105 ], [ %2806, %2796 ], [ %2806, %2809 ], [ %3601, %3589 ], [ %3635, %3604 ], [ %2806, %3636 ], [ %3649, %3638 ]
  %3661 = phi float [ %2807, %3567 ], [ %2807, %3105 ], [ %2807, %2796 ], [ %2807, %2809 ], [ %3598, %3589 ], [ %3612, %3604 ], [ %2807, %3636 ], [ %3646, %3638 ]
  %3662 = phi float [ %3575, %3567 ], [ %2808, %3105 ], [ %2808, %2796 ], [ %2808, %2809 ], [ %3575, %3589 ], [ %3575, %3604 ], [ %3575, %3636 ], [ %3575, %3638 ]
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = call float @dx.op.dot2.f32(i32 54, float %3651, float %3652, float %3651, float %3652)  ; Dot2(ax,ay,bx,by)
  %3666 = fmul fast float %3665, 0x3FE3333340000000
  %3667 = fsub fast float 1.000000e+00, %3666
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3652, float %3667, float %3651, float %3652, float %3667)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call float @dx.op.unary.f32(i32 25, float %3668)  ; Rsqrt(value)
  %3670 = fmul fast float %3669, %3651
  %3671 = fmul fast float %3669, %3652
  %3672 = fmul fast float %3667, %3669
  %3673 = fmul fast float %3672, %81
  %3674 = fmul fast float %3672, %82
  %3675 = fmul fast float %3672, %83
  %3676 = fmul fast float %3670, %51
  %3677 = fmul fast float %3670, %52
  %3678 = fmul fast float %3670, %53
  %3679 = fadd fast float %3673, %3676
  %3680 = fadd fast float %3674, %3677
  %3681 = fadd fast float %3675, %3678
  %3682 = fmul fast float %93, %3671
  %3683 = fmul fast float %94, %3671
  %3684 = fmul fast float %95, %3671
  %3685 = fadd fast float %3679, %3682
  %3686 = fadd fast float %3680, %3683
  %3687 = fadd fast float %3681, %3684
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3685, float %3686, float %3687, float %3685, float %3686, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call float @dx.op.unary.f32(i32 25, float %3688)  ; Rsqrt(value)
  %3690 = fmul fast float %3685, %3689
  %3691 = fmul fast float %3686, %3689
  %3692 = fmul fast float %3687, %3689
  %3693 = and i32 %37, 1
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3695, label %4207

; <label>:3695                                    ; preds = %3650
  %3696 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %3697 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %3698 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %3699 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %3700 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %3701 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %3702 = fadd fast float %3696, %137
  %3703 = fadd fast float %3697, %138
  %3704 = fadd fast float %3698, %139
  %3705 = fadd fast float %3699, %137
  %3706 = fadd fast float %3700, %138
  %3707 = fadd fast float %3701, %139
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 2
  %3714 = extractvalue %dx.types.CBufRet.f32 %3712, 3
  %3715 = fmul fast float %3709, %74
  %3716 = fmul fast float %3715, %3713
  %3717 = fmul fast float %3710, %75
  %3718 = fmul fast float %3717, %3714
  %3719 = fptoui float %3716 to i32
  %3720 = fptoui float %3718 to i32
  %3721 = fadd fast float %3709, -1.000000e+00
  %3722 = fadd fast float %3710, -1.000000e+00
  %3723 = fptoui float %3721 to i32
  %3724 = fptoui float %3722 to i32
  %3725 = call i32 @dx.op.binary.i32(i32 40, i32 %3719, i32 %3723)  ; UMin(a,b)
  %3726 = call i32 @dx.op.binary.i32(i32 40, i32 %3720, i32 %3724)  ; UMin(a,b)
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3730 = fmul fast float %3728, %67
  %3731 = fsub fast float %3730, %3729
  %3732 = fadd fast float %3711, -1.000000e+00
  %3733 = call float @dx.op.binary.f32(i32 36, float %3731, float %3732)  ; FMin(a,b)
  %3734 = fptoui float %3733 to i32
  %3735 = fptoui float %3709 to i32
  %3736 = fptoui float %3710 to i32
  %3737 = mul i32 %3734, %3736
  %3738 = add i32 %3737, %3726
  %3739 = mul i32 %3738, %3735
  %3740 = add i32 %3739, %3725
  %3741 = shl i32 %3740, 2
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = and i32 %3743, 1023
  %3745 = lshr i32 %3743, 10
  %3746 = icmp eq i32 %3744, 0
  br i1 %3746, label %4175, label %3747

; <label>:3747                                    ; preds = %3695
  %3748 = and i32 %3743, 1023
  br label %3749

; <label>:3749                                    ; preds = %3876, %3747
  %3750 = phi i32 [ %3826, %3876 ], [ 0, %3747 ]
  %3751 = phi float [ %3877, %3876 ], [ 0.000000e+00, %3747 ]
  %3752 = phi float [ %3878, %3876 ], [ %1097, %3747 ]
  %3753 = phi float [ %3879, %3876 ], [ %3664, %3747 ]
  %3754 = phi float [ %3880, %3876 ], [ %3662, %3747 ]
  %3755 = phi float [ %3881, %3876 ], [ 0.000000e+00, %3747 ]
  %3756 = phi float [ %3882, %3876 ], [ 0.000000e+00, %3747 ]
  %3757 = phi float [ %3883, %3876 ], [ %3656, %3747 ]
  %3758 = phi float [ %3884, %3876 ], [ %3657, %3747 ]
  %3759 = phi float [ %3885, %3876 ], [ %3658, %3747 ]
  %3760 = phi float [ %3886, %3876 ], [ %3690, %3747 ]
  %3761 = phi float [ %3887, %3876 ], [ %3691, %3747 ]
  %3762 = phi float [ %3888, %3876 ], [ %3692, %3747 ]
  %3763 = phi float [ %3889, %3876 ], [ %3661, %3747 ]
  %3764 = phi float [ %3890, %3876 ], [ %3660, %3747 ]
  %3765 = phi float [ %3891, %3876 ], [ 0.000000e+00, %3747 ]
  %3766 = phi float [ %3892, %3876 ], [ %3659, %3747 ]
  %3767 = phi float [ %3893, %3876 ], [ %3653, %3747 ]
  %3768 = phi float [ %3894, %3876 ], [ %3654, %3747 ]
  %3769 = phi float [ %3895, %3876 ], [ %3655, %3747 ]
  %3770 = add nuw nsw i32 %3750, %3745
  %3771 = shl i32 %3770, 2
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = shl i32 %3773, 8
  %3775 = or i32 %3774, 48
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3781 = or i32 %3774, 64
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.i32 %3782, 1
  %3785 = or i32 %3774, 80
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3789 = or i32 %3774, 96
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3795 = or i32 %3774, 112
  %3796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3798 = or i32 %3774, 128
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = or i32 %3774, 144
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = or i32 %3774, 160
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = or i32 %3774, 192
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = or i32 %3774, 208
  %3820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = or i32 %3774, 248
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = add nuw nsw i32 %3750, 1
  %3827 = bitcast float %3780 to i32
  %3828 = and i32 %3827, 512
  %3829 = icmp eq i32 %3828, 0
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = call float @dx.op.dot4.f32(i32 56, float %3831, float %3832, float %3833, float %3834, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3836 = or i32 %3774, 16
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3843 = or i32 %3774, 32
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3849 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3850 = call float @dx.op.unary.f32(i32 27, float %3835)  ; Round_ni(value)
  %3851 = call float @dx.op.unary.f32(i32 6, float %3850)  ; FAbs(value)
  %3852 = call float @dx.op.unary.f32(i32 27, float %3842)  ; Round_ni(value)
  %3853 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3854 = call float @dx.op.unary.f32(i32 6, float %3849)  ; FAbs(value)
  %3855 = call float @dx.op.unary.f32(i32 27, float %3854)  ; Round_ni(value)
  %3856 = fadd fast float %3853, %3851
  %3857 = fadd fast float %3856, %3855
  %3858 = fcmp fast oeq float %3857, 0.000000e+00
  %3859 = call float @dx.op.dot4.f32(i32 56, float %3831, float %3832, float %3833, float %3834, float %3702, float %3703, float %3704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3860 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %3702, float %3703, float %3704, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3861 = call float @dx.op.dot4.f32(i32 56, float %3831, float %3832, float %3833, float %3834, float %3705, float %3706, float %3707, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3862 = call float @dx.op.dot4.f32(i32 56, float %3838, float %3839, float %3840, float %3841, float %3705, float %3706, float %3707, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3863 = fsub fast float %3859, %3835
  %3864 = fsub fast float %3861, %3835
  %3865 = fsub fast float %3860, %3842
  %3866 = fsub fast float %3862, %3842
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3777, float %3778, float %3779, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 2
  %3870 = fadd fast float %3869, %3867
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3873 = fcmp fast ogt float %3871, %3872
  %3874 = and i1 %3858, %3873
  %3875 = and i1 %3829, %3874
  br i1 %3875, label %3897, label %3876

; <label>:3876                                    ; preds = %4161, %3978, %3897, %3749
  %3877 = phi float [ %3751, %3897 ], [ %3981, %3978 ], [ %3981, %4161 ], [ %3751, %3749 ]
  %3878 = phi float [ %3752, %3897 ], [ %3752, %3978 ], [ %4136, %4161 ], [ %3752, %3749 ]
  %3879 = phi float [ %3753, %3897 ], [ %3753, %3978 ], [ %4135, %4161 ], [ %3753, %3749 ]
  %3880 = phi float [ %3754, %3897 ], [ %3754, %3978 ], [ %4133, %4161 ], [ %3754, %3749 ]
  %3881 = phi float [ %3755, %3897 ], [ %3755, %3978 ], [ %4105, %4161 ], [ %3755, %3749 ]
  %3882 = phi float [ %3756, %3897 ], [ %3756, %3978 ], [ %4103, %4161 ], [ %3756, %3749 ]
  %3883 = phi float [ %3757, %3897 ], [ %3757, %3978 ], [ %4171, %4161 ], [ %3757, %3749 ]
  %3884 = phi float [ %3758, %3897 ], [ %3758, %3978 ], [ %4172, %4161 ], [ %3758, %3749 ]
  %3885 = phi float [ %3759, %3897 ], [ %3759, %3978 ], [ %4173, %4161 ], [ %3759, %3749 ]
  %3886 = phi float [ %3760, %3897 ], [ %3760, %3978 ], [ %4084, %4161 ], [ %3760, %3749 ]
  %3887 = phi float [ %3761, %3897 ], [ %3761, %3978 ], [ %4085, %4161 ], [ %3761, %3749 ]
  %3888 = phi float [ %3762, %3897 ], [ %3762, %3978 ], [ %4086, %4161 ], [ %3762, %3749 ]
  %3889 = phi float [ %3763, %3897 ], [ %3763, %3978 ], [ %4113, %4161 ], [ %3763, %3749 ]
  %3890 = phi float [ %3764, %3897 ], [ %3764, %3978 ], [ %4110, %4161 ], [ %3764, %3749 ]
  %3891 = phi float [ %3765, %3897 ], [ %3765, %3978 ], [ %4107, %4161 ], [ %3765, %3749 ]
  %3892 = phi float [ %3766, %3897 ], [ %3766, %3978 ], [ %4101, %4161 ], [ %3766, %3749 ]
  %3893 = phi float [ %3767, %3897 ], [ %3767, %3978 ], [ %4096, %4161 ], [ %3767, %3749 ]
  %3894 = phi float [ %3768, %3897 ], [ %3768, %3978 ], [ %4097, %4161 ], [ %3768, %3749 ]
  %3895 = phi float [ %3769, %3897 ], [ %3769, %3978 ], [ %4098, %4161 ], [ %3769, %3749 ]
  %3896 = icmp eq i32 %3826, %3748
  br i1 %3896, label %4174, label %3749

; <label>:3897                                    ; preds = %3749
  %3898 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3899 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3903 = extractvalue %dx.types.ResRet.i32 %3782, 3
  %3904 = extractvalue %dx.types.ResRet.i32 %3782, 2
  %3905 = add i32 %3903, 0
  %3906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3905, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3908 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3906, %dx.types.Handle %3907, float %3835, float %3842, float undef, float undef, i32 0, i32 0, i32 undef, float %3863, float %3865, float undef, float %3864, float %3866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = fmul fast float %3909, %3902
  %3911 = fadd fast float %3910, %3901
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fmul fast float %3835, %3791
  %3914 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3842, float %3913)  ; FMad(a,b,c)
  %3915 = fadd fast float %3914, %3900
  %3916 = fmul fast float %3835, %3793
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3842, float %3916)  ; FMad(a,b,c)
  %3918 = fadd fast float %3917, %3899
  %3919 = fmul fast float %3863, %3791
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3865, float %3919)  ; FMad(a,b,c)
  %3921 = fmul fast float %3863, %3793
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3865, float %3921)  ; FMad(a,b,c)
  %3923 = fmul fast float %3864, %3791
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3866, float %3923)  ; FMad(a,b,c)
  %3925 = fmul fast float %3864, %3793
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3866, float %3925)  ; FMad(a,b,c)
  %3927 = add i32 %3904, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %3907, float %3915, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float %3920, float %3922, float undef, float %3924, float %3926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = and i32 %3827, 1024
  %3932 = icmp ne i32 %3931, 0
  %3933 = fcmp fast ogt float %3930, 0x3FE0101020000000
  %3934 = uitofp i1 %3933 to float
  %3935 = select i1 %3932, float %3934, float %3930
  %3936 = and i32 %3827, 8192
  %3937 = icmp ne i32 %3936, 0
  %3938 = select i1 %3937, float %3898, float 1.000000e+00
  %3939 = fmul fast float %3835, 2.000000e+00
  %3940 = fadd fast float %3939, -1.000000e+00
  %3941 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3942 = fmul fast float %3941, %3824
  %3943 = fsub fast float %3942, %3824
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fmul fast float %3842, 2.000000e+00
  %3946 = fadd fast float %3945, -1.000000e+00
  %3947 = call float @dx.op.unary.f32(i32 6, float %3946)  ; FAbs(value)
  %3948 = fmul fast float %3947, %3825
  %3949 = fsub fast float %3948, %3825
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fmul fast float %3854, %3787
  %3952 = fsub fast float %3951, %3787
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3912, %3938
  %3955 = fmul fast float %3954, %3909
  %3956 = fmul fast float %3955, %3944
  %3957 = fmul fast float %3956, %3935
  %3958 = fmul fast float %3957, %3950
  %3959 = fmul fast float %3958, %3953
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3963 = fsub fast float %3871, %3962
  %3964 = fmul fast float %3963, %3961
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = fmul fast float %3959, %3788
  %3967 = fadd fast float %3959, %3788
  %3968 = fmul fast float %3967, %3797
  %3969 = fsub fast float %3968, %3797
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = and i32 %3827, 128
  %3972 = icmp ne i32 %3971, 0
  %3973 = select i1 %3972, float %3970, float %3966
  %3974 = fmul fast float %3973, %3965
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = fcmp fast ugt float %3974, %3976
  br i1 %3977, label %3978, label %3876

; <label>:3978                                    ; preds = %3897
  %3979 = select i1 %3937, float %3974, float 0.000000e+00
  %3980 = fadd fast float %3979, %3751
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  br i1 %3937, label %3876, label %3982

; <label>:3982                                    ; preds = %3978
  %3983 = and i32 %3827, 4
  %3984 = and i32 %3827, 8
  %3985 = add i32 %3783, 0
  %3986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3985, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3986, %dx.types.Handle %3987, float %3915, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float %3920, float %3922, float undef, float %3924, float %3926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.ResRet.f32 %3988, 3
  %3993 = bitcast float %3809 to i32
  %3994 = and i32 %3993, 255
  %3995 = uitofp i32 %3994 to float
  %3996 = lshr i32 %3993, 8
  %3997 = and i32 %3996, 255
  %3998 = uitofp i32 %3997 to float
  %3999 = fmul fast float %3992, %3995
  %4000 = fadd fast float %3999, %3998
  %4001 = fmul fast float %4000, 0x3F70101000000000
  %4002 = add i32 %3784, 0
  %4003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4002, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4004 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4003, %dx.types.Handle %3987, float %3915, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float %3920, float %3922, float undef, float %3924, float %3926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4008 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4009 = bitcast float %3803 to i32
  %4010 = and i32 %4009, 255
  %4011 = uitofp i32 %4010 to float
  %4012 = lshr i32 %4009, 8
  %4013 = and i32 %4012, 255
  %4014 = uitofp i32 %4013 to float
  %4015 = lshr i32 %4009, 16
  %4016 = and i32 %4015, 255
  %4017 = uitofp i32 %4016 to float
  %4018 = fmul fast float %4017, 0x3F70101000000000
  %4019 = fmul fast float %4005, %4011
  %4020 = fadd fast float %4019, %4014
  %4021 = fmul fast float %4020, 0x3F70101000000000
  %4022 = fadd fast float %4006, -5.000000e-01
  %4023 = fadd fast float %4008, -5.000000e-01
  %4024 = fmul fast float %4022, %4018
  %4025 = fmul fast float %4023, %4018
  %4026 = fadd fast float %4024, 5.000000e-01
  %4027 = fadd fast float %4025, 5.000000e-01
  %4028 = fmul fast float %3989, %3812
  %4029 = fmul fast float %3990, %3813
  %4030 = fmul fast float %3991, %3814
  %4031 = fmul fast float %4026, 2.000000e+00
  %4032 = fadd fast float %4031, -1.000000e+00
  %4033 = fmul fast float %4027, 2.000000e+00
  %4034 = fadd fast float %4033, -1.000000e+00
  %4035 = fadd fast float %4032, %4034
  %4036 = fmul fast float %4035, 5.000000e-01
  %4037 = fsub fast float %4032, %4034
  %4038 = fmul fast float %4037, 5.000000e-01
  %4039 = call float @dx.op.unary.f32(i32 6, float %4036)  ; FAbs(value)
  %4040 = fsub fast float 1.000000e+00, %4039
  %4041 = call float @dx.op.unary.f32(i32 6, float %4038)  ; FAbs(value)
  %4042 = fsub fast float %4040, %4041
  %4043 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4038, float %4042, float %4036, float %4038, float %4042)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = call float @dx.op.unary.f32(i32 25, float %4043)  ; Rsqrt(value)
  %4045 = fmul fast float %4036, %4044
  %4046 = fmul fast float %4038, %4044
  %4047 = fmul fast float %4044, %4042
  %4048 = fmul fast float %4047, %3777
  %4049 = fmul fast float %4047, %3778
  %4050 = fmul fast float %4047, %3779
  %4051 = fmul fast float %4045, %3800
  %4052 = fmul fast float %4045, %3801
  %4053 = fmul fast float %4045, %3802
  %4054 = fadd fast float %4051, %4048
  %4055 = fadd fast float %4052, %4049
  %4056 = fadd fast float %4053, %4050
  %4057 = fmul fast float %4046, %3806
  %4058 = fmul fast float %4046, %3807
  %4059 = fmul fast float %4046, %3808
  %4060 = fadd fast float %4054, %4057
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %4060, float %4061, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4060, %4064
  %4066 = fmul fast float %4061, %4064
  %4067 = fmul fast float %4062, %4064
  %4068 = icmp ne i32 %3984, 0
  %4069 = select i1 %4068, float 1.000000e+00, float 0.000000e+00
  %4070 = fmul fast float %3974, %4069
  %4071 = and i32 %3827, 1
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4073, label %4077

; <label>:4073                                    ; preds = %3982
  %4074 = fsub fast float %4065, %3760
  %4075 = fsub fast float %4066, %3761
  %4076 = fsub fast float %4067, %3762
  br label %4077

; <label>:4077                                    ; preds = %4073, %3982
  %4078 = phi float [ %4074, %4073 ], [ %4065, %3982 ]
  %4079 = phi float [ %4075, %4073 ], [ %4066, %3982 ]
  %4080 = phi float [ %4076, %4073 ], [ %4067, %3982 ]
  %4081 = fmul float %4080, %4070
  %4082 = fmul float %4079, %4070
  %4083 = fmul float %4078, %4070
  %4084 = fadd fast float %4083, %3760
  %4085 = fadd fast float %4082, %3761
  %4086 = fadd fast float %4081, %3762
  %4087 = icmp ne i32 %3983, 0
  %4088 = select i1 %4087, float 1.000000e+00, float 0.000000e+00
  %4089 = fmul fast float %3974, %4088
  %4090 = fsub fast float %4028, %3767
  %4091 = fsub fast float %4029, %3768
  %4092 = fsub fast float %4030, %3769
  %4093 = fmul fast float %4090, %4089
  %4094 = fmul fast float %4091, %4089
  %4095 = fmul fast float %4092, %4089
  %4096 = fadd fast float %4093, %3767
  %4097 = fadd fast float %4094, %3768
  %4098 = fadd fast float %4095, %3769
  %4099 = fsub fast float %4001, %3766
  %4100 = fmul fast float %4099, %4089
  %4101 = fadd fast float %4100, %3766
  %4102 = fmul fast float %4089, %3756
  %4103 = fsub fast float %3756, %4102
  %4104 = fmul fast float %4089, %3755
  %4105 = fsub fast float %3755, %4104
  %4106 = fadd fast float %3974, %3765
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fsub fast float %4021, %3764
  %4109 = fmul fast float %4108, %4070
  %4110 = fadd fast float %4109, %3764
  %4111 = fsub fast float %4007, %3763
  %4112 = fmul fast float %4111, %4070
  %4113 = fadd fast float %4112, %3763
  %4114 = call float @dx.op.dot3.f32(i32 55, float %4028, float %4029, float %4030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4118 = fmul fast float %4117, %4114
  %4119 = fadd fast float %4118, %4116
  %4120 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4121 = bitcast float %3815 to i32
  %4122 = and i32 %4121, 65535
  %4123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4122)  ; LegacyF16ToF32(value)
  %4124 = lshr i32 %4121, 16
  %4125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4124)  ; LegacyF16ToF32(value)
  %4126 = fcmp fast oge float %4123, 0.000000e+00
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = select i1 %4126, float %4123, float %4128
  %4130 = fadd fast float %4129, %4125
  %4131 = fsub fast float %4120, %3754
  %4132 = fmul fast float %4131, %3974
  %4133 = fadd fast float %4132, %3754
  %4134 = fmul fast float %4130, %3974
  %4135 = call float @dx.op.binary.f32(i32 35, float %3753, float %4134)  ; FMax(a,b)
  %4136 = call float @dx.op.binary.f32(i32 35, float %3752, float %3974)  ; FMax(a,b)
  %4137 = and i32 %3827, 16
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4161, label %4139

; <label>:4139                                    ; preds = %4077
  %4140 = bitcast float %3821 to i32
  %4141 = add i32 %3818, 0
  %4142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4141, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4142, %dx.types.Handle %3987, float %3915, float %3918, float undef, float undef, i32 0, i32 0, i32 undef, float %3920, float %3922, float undef, float %3924, float %3926, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = and i32 %4140, 65535
  %4148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4147)  ; LegacyF16ToF32(value)
  %4149 = fmul fast float %4144, %3812
  %4150 = fmul fast float %4145, %3813
  %4151 = fmul fast float %4146, %3814
  %4152 = and i32 %3827, 16384
  %4153 = icmp ne i32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = select i1 %4153, float %4155, float 1.000000e+00
  %4157 = fmul fast float %4156, %4148
  %4158 = fmul fast float %4149, %4157
  %4159 = fmul fast float %4150, %4157
  %4160 = fmul fast float %4151, %4157
  br label %4161

; <label>:4161                                    ; preds = %4139, %4077
  %4162 = phi float [ %4158, %4139 ], [ 0.000000e+00, %4077 ]
  %4163 = phi float [ %4159, %4139 ], [ 0.000000e+00, %4077 ]
  %4164 = phi float [ %4160, %4139 ], [ 0.000000e+00, %4077 ]
  %4165 = fsub fast float %4162, %3757
  %4166 = fsub fast float %4163, %3758
  %4167 = fsub fast float %4164, %3759
  %4168 = fmul fast float %4165, %3974
  %4169 = fmul fast float %4166, %3974
  %4170 = fmul fast float %4167, %3974
  %4171 = fadd fast float %4168, %3757
  %4172 = fadd fast float %4169, %3758
  %4173 = fadd fast float %4170, %3759
  br label %3876

; <label>:4174                                    ; preds = %3876
  br label %4175

; <label>:4175                                    ; preds = %4174, %3695
  %4176 = phi float [ 0.000000e+00, %3695 ], [ %3877, %4174 ]
  %4177 = phi float [ %1097, %3695 ], [ %3878, %4174 ]
  %4178 = phi float [ %3664, %3695 ], [ %3879, %4174 ]
  %4179 = phi float [ %3662, %3695 ], [ %3880, %4174 ]
  %4180 = phi float [ 0.000000e+00, %3695 ], [ %3881, %4174 ]
  %4181 = phi float [ 0.000000e+00, %3695 ], [ %3882, %4174 ]
  %4182 = phi float [ %3656, %3695 ], [ %3883, %4174 ]
  %4183 = phi float [ %3657, %3695 ], [ %3884, %4174 ]
  %4184 = phi float [ %3658, %3695 ], [ %3885, %4174 ]
  %4185 = phi float [ %3690, %3695 ], [ %3886, %4174 ]
  %4186 = phi float [ %3691, %3695 ], [ %3887, %4174 ]
  %4187 = phi float [ %3692, %3695 ], [ %3888, %4174 ]
  %4188 = phi float [ %3661, %3695 ], [ %3889, %4174 ]
  %4189 = phi float [ %3660, %3695 ], [ %3890, %4174 ]
  %4190 = phi float [ 0.000000e+00, %3695 ], [ %3891, %4174 ]
  %4191 = phi float [ %3659, %3695 ], [ %3892, %4174 ]
  %4192 = phi float [ %3653, %3695 ], [ %3893, %4174 ]
  %4193 = phi float [ %3654, %3695 ], [ %3894, %4174 ]
  %4194 = phi float [ %3655, %3695 ], [ %3895, %4174 ]
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %4185, float %4186, float %4187)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = call float @dx.op.unary.f32(i32 25, float %4195)  ; Rsqrt(value)
  %4197 = fmul fast float %4196, %4185
  %4198 = fmul fast float %4196, %4186
  %4199 = fmul fast float %4196, %4187
  %4200 = fadd fast float %4190, %1097
  %4201 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = call float @dx.op.unary.f32(i32 25, float %4202)  ; Rsqrt(value)
  %4204 = fmul fast float %4203, %4197
  %4205 = fmul fast float %4203, %4198
  %4206 = fmul fast float %4203, %4199
  br label %4207

; <label>:4207                                    ; preds = %4175, %3650
  %4208 = phi float [ %4204, %4175 ], [ %3690, %3650 ]
  %4209 = phi float [ %4205, %4175 ], [ %3691, %3650 ]
  %4210 = phi float [ %4206, %4175 ], [ %3692, %3650 ]
  %4211 = phi float [ %4192, %4175 ], [ %3653, %3650 ]
  %4212 = phi float [ %4193, %4175 ], [ %3654, %3650 ]
  %4213 = phi float [ %4194, %4175 ], [ %3655, %3650 ]
  %4214 = phi float [ %4182, %4175 ], [ %3656, %3650 ]
  %4215 = phi float [ %4183, %4175 ], [ %3657, %3650 ]
  %4216 = phi float [ %4184, %4175 ], [ %3658, %3650 ]
  %4217 = phi float [ %4191, %4175 ], [ %3659, %3650 ]
  %4218 = phi float [ %4201, %4175 ], [ %1097, %3650 ]
  %4219 = phi float [ %4189, %4175 ], [ %3660, %3650 ]
  %4220 = phi float [ %4188, %4175 ], [ %3661, %3650 ]
  %4221 = phi float [ %4181, %4175 ], [ 0.000000e+00, %3650 ]
  %4222 = phi float [ %4180, %4175 ], [ 0.000000e+00, %3650 ]
  %4223 = phi float [ %4176, %4175 ], [ 0.000000e+00, %3650 ]
  %4224 = phi float [ %4178, %4175 ], [ %3664, %3650 ]
  %4225 = phi float [ %4177, %4175 ], [ %1097, %3650 ]
  %4226 = phi float [ %4179, %4175 ], [ %3662, %3650 ]
  %4227 = fadd fast float %4217, 0xBFB99999A0000000
  %4228 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4229 = fmul fast float %4228, 0x3FF1C71C80000000
  %4230 = call float @dx.op.binary.f32(i32 36, float %4217, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4231 = fsub fast float 1.000000e+00, %4229
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4232, %4211
  %4234 = fmul fast float %4232, %4212
  %4235 = fmul fast float %4232, %4213
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = fmul fast float %4229, %4211
  %4240 = fmul fast float %4229, %4212
  %4241 = fmul fast float %4229, %4213
  %4242 = fadd fast float %4239, %4230
  %4243 = fadd fast float %4240, %4230
  %4244 = fadd fast float %4241, %4230
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.i32 %4249, 3
  %4251 = and i32 %4250, 8
  %4252 = icmp ne i32 %4251, 0
  %4253 = call float @dx.op.binary.f32(i32 35, float %4236, float %4211)  ; FMax(a,b)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4237, float %4211)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4238, float %4211)  ; FMax(a,b)
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = select i1 %198, float %4211, float %4236
  %4258 = select i1 %198, float %4256, float %4237
  %4259 = select i1 %198, float 1.000000e+00, float %4238
  %4260 = select i1 %4252, float %4253, float %4257
  %4261 = select i1 %4252, float %4254, float %4258
  %4262 = select i1 %4252, float %4255, float %4259
  %4263 = and i32 %174, 3
  %4264 = select i1 %168, i32 %4263, i32 0
  %4265 = icmp eq i32 %4264, 1
  br i1 %4265, label %4266, label %4342

; <label>:4266                                    ; preds = %4207
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4270 = fadd fast float %4268, %137
  %4271 = fadd fast float %4269, %138
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4275 = fsub fast float %4270, %4273
  %4276 = fsub fast float %4271, %4274
  %4277 = fmul fast float %4275, %4275
  %4278 = fmul fast float %4276, %4276
  %4279 = fadd fast float %4277, %4278
  %4280 = call float @dx.op.unary.f32(i32 24, float %4279)  ; Sqrt(value)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4282 = fcmp fast olt float %4280, %4281
  br i1 %4282, label %4283, label %4336

; <label>:4283                                    ; preds = %4266
  %4284 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4285 = fadd fast float %4284, %139
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4293 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4295 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4296 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4297 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4298 = fadd fast float %4295, %4270
  %4299 = fadd fast float %4296, %4271
  %4300 = fadd fast float %4285, %4297
  %4301 = fmul fast float %4298, %4287
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4289, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4291, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4298, %4292
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4293, float %4304)  ; FMad(a,b,c)
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4294, float %4305)  ; FMad(a,b,c)
  %4307 = fsub fast float %4303, %4295
  %4308 = fsub fast float %4306, %4296
  %4309 = fsub fast float %4307, %4273
  %4310 = fadd fast float %4309, %4281
  %4311 = fsub fast float %4308, %4274
  %4312 = fadd fast float %4311, %4281
  %4313 = extractvalue %dx.types.CBufRet.f32 %4272, 3
  %4314 = fmul fast float %4310, %4313
  %4315 = fmul fast float %4312, %4313
  %4316 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4318 = fsub fast float 1.000000e+00, %4316
  %4319 = fsub fast float 1.000000e+00, %4317
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %4318, float %4319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = fcmp fast ugt float %4321, 0.000000e+00
  br i1 %4322, label %4323, label %4336

; <label>:4323                                    ; preds = %4283
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4326 = fmul fast float %4325, %4321
  %4327 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4328 = fadd fast float %4327, %4326
  %4329 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4330 = fadd fast float %4328, %4297
  %4331 = fmul fast float %4303, %4291
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4306, float %4294, float %4331)  ; FMad(a,b,c)
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4329, float %4332)  ; FMad(a,b,c)
  %4334 = fsub fast float %4333, %4297
  %4335 = fsub fast float %4334, %4284
  br label %4336

; <label>:4336                                    ; preds = %4323, %4283, %4266
  %4337 = phi i1 [ true, %4323 ], [ false, %4283 ], [ false, %4266 ]
  %4338 = phi float [ %4335, %4323 ], [ -1.310720e+05, %4283 ], [ -1.310720e+05, %4266 ]
  %4339 = fsub fast float %4338, %139
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = select i1 %4337, float %4340, float 1.000000e+00
  br label %4342

; <label>:4342                                    ; preds = %4336, %4207
  %4343 = phi float [ %4341, %4336 ], [ 0.000000e+00, %4207 ]
  %4344 = icmp eq i32 %4264, 3
  %4345 = select i1 %4344, float 1.000000e+00, float %4343
  %4346 = call float @dx.op.binary.f32(i32 35, float %4223, float %4345)  ; FMax(a,b)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fcmp fast une float %4347, 0.000000e+00
  %4349 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4350 = call float @dx.op.unary.f32(i32 25, float %4349)  ; Rsqrt(value)
  br i1 %4348, label %4358, label %4351

; <label>:4351                                    ; preds = %4342
  %4352 = fmul fast float %4350, %137
  %4353 = fmul fast float %4350, %138
  %4354 = fmul fast float %4350, %139
  %4355 = fsub fast float -0.000000e+00, %4352
  %4356 = fsub fast float -0.000000e+00, %4353
  %4357 = fsub fast float -0.000000e+00, %4354
  br label %4526

; <label>:4358                                    ; preds = %4342
  %4359 = fmul fast float %137, %4350
  %4360 = fsub fast float -0.000000e+00, %4359
  %4361 = fmul fast float %138, %4350
  %4362 = fsub fast float -0.000000e+00, %4361
  %4363 = fmul fast float %139, %4350
  %4364 = fsub fast float -0.000000e+00, %4363
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4362, float %4364, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = fmul fast float %4347, 2.500000e+00
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4347, 0x4013FFFFE0000000
  %4369 = fadd fast float %4368, 0xBFFFFFFFE0000000
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4347, 0x4004000020000000
  %4372 = fadd fast float %4371, 0xBFF8000040000000
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4375 = fmul fast float %4227, 1.000000e+01
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4376, 2.000000e+00
  %4378 = fsub fast float 3.000000e+00, %4377
  %4379 = fmul fast float %4376, %4376
  %4380 = fmul fast float %4379, %4378
  %4381 = fsub fast float 1.000000e+00, %4380
  %4382 = fsub fast float 0x3FE3333340000000, %4248
  %4383 = fmul fast float %4382, 0x400AAAAAA0000000
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4381, %4384
  %4386 = fmul fast float %4260, 0x3FEA2B8620000000
  %4387 = fmul fast float %4261, 0x3FEA2B8620000000
  %4388 = fmul fast float %4262, 0x3FEA2B8620000000
  %4389 = fadd fast float %4386, 0x3FC81DFBA0000000
  %4390 = fmul fast float %4389, %4260
  %4391 = fadd fast float %4390, 0x3F910E6020000000
  %4392 = fadd fast float %4387, 0x3FC81DFBA0000000
  %4393 = fmul fast float %4392, %4261
  %4394 = fadd fast float %4393, 0x3F910E6020000000
  %4395 = fadd fast float %4388, 0x3FC81DFBA0000000
  %4396 = fmul fast float %4395, %4262
  %4397 = fadd fast float %4396, 0x3F910E6020000000
  %4398 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = fsub fast float %4398, %4260
  %4402 = fsub fast float %4399, %4261
  %4403 = fsub fast float %4400, %4262
  %4404 = fmul fast float %4401, %4374
  %4405 = fmul fast float %4404, %4385
  %4406 = fmul fast float %4402, %4374
  %4407 = fmul fast float %4406, %4385
  %4408 = fmul fast float %4403, %4374
  %4409 = fmul fast float %4408, %4385
  %4410 = fadd fast float %4405, %4260
  %4411 = fadd fast float %4407, %4261
  %4412 = fadd fast float %4409, %4262
  %4413 = fmul fast float %4220, %4220
  %4414 = fmul fast float %4413, %4413
  %4415 = fadd fast float %4370, 1.000000e+00
  %4416 = fsub fast float %4415, %4385
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fsub fast float 1.000000e+00, %4414
  %4421 = call float @dx.op.binary.f32(i32 36, float %4417, float %4420)  ; FMin(a,b)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4423 = call float @dx.op.binary.f32(i32 35, float %4421, float %4422)  ; FMax(a,b)
  %4424 = fadd fast float %4419, 0xBFE4CCCCC0000000
  %4425 = fmul fast float %4424, 0x4006DB6DA0000000
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, 2.000000e+00
  %4428 = fsub fast float 3.000000e+00, %4427
  %4429 = bitcast float %4245 to i32
  %4430 = ashr i32 %4429, 1
  %4431 = add nsw i32 %4430, 532487669
  %4432 = bitcast i32 %4431 to float
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4436, 2.000000e+00
  %4438 = bitcast float %4246 to i32
  %4439 = ashr i32 %4438, 1
  %4440 = add nsw i32 %4439, 532487669
  %4441 = bitcast i32 %4440 to float
  %4442 = fsub fast float 1.000000e+00, %4441
  %4443 = bitcast float %4442 to i32
  %4444 = sub nsw i32 2129859010, %4443
  %4445 = bitcast i32 %4444 to float
  %4446 = fmul fast float %4445, 2.000000e+00
  %4447 = bitcast float %4247 to i32
  %4448 = ashr i32 %4447, 1
  %4449 = add nsw i32 %4448, 532487669
  %4450 = bitcast i32 %4449 to float
  %4451 = fsub fast float 1.000000e+00, %4450
  %4452 = bitcast float %4451 to i32
  %4453 = sub nsw i32 2129859010, %4452
  %4454 = bitcast i32 %4453 to float
  %4455 = fmul fast float %4454, 2.000000e+00
  %4456 = fsub fast float 0x4002A9FBE0000000, %4437
  %4457 = fadd fast float %4437, 0x3FD54FDF00000000
  %4458 = bitcast float %4457 to i32
  %4459 = sub nsw i32 2129859010, %4458
  %4460 = bitcast i32 %4459 to float
  %4461 = fmul fast float %4460, %4456
  %4462 = fmul fast float %4461, %4461
  %4463 = fsub fast float 0x4002A9FBE0000000, %4446
  %4464 = fadd fast float %4446, 0x3FD54FDF00000000
  %4465 = bitcast float %4464 to i32
  %4466 = sub nsw i32 2129859010, %4465
  %4467 = bitcast i32 %4466 to float
  %4468 = fmul fast float %4467, %4463
  %4469 = fmul fast float %4468, %4468
  %4470 = fsub fast float 0x4002A9FBE0000000, %4455
  %4471 = fadd fast float %4455, 0x3FD54FDF00000000
  %4472 = bitcast float %4471 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = fmul fast float %4474, %4470
  %4476 = fmul fast float %4475, %4475
  %4477 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4462)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4469)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4476)  ; FMax(a,b)
  %4480 = fsub fast float 1.000000e+00, %4365
  %4481 = fadd fast float %4480, %4381
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fsub fast float 1.000000e+00, %4345
  %4484 = fmul fast float %4423, %4483
  %4485 = fmul fast float %4426, %4426
  %4486 = fmul fast float %4485, %4484
  %4487 = fmul fast float %4486, %4428
  %4488 = fmul fast float %4483, 0xBFE99999A0000000
  %4489 = fmul fast float %4488, %4374
  %4490 = fmul fast float %4489, %4385
  %4491 = fadd fast float %4490, 1.000000e+00
  %4492 = fadd fast float %4248, -1.000000e+00
  %4493 = fmul fast float %4491, %4492
  %4494 = fadd fast float %4493, 1.000000e+00
  %4495 = fsub fast float %4477, %4245
  %4496 = fsub fast float %4478, %4246
  %4497 = fsub fast float %4479, %4247
  %4498 = fmul fast float %4487, %4495
  %4499 = fmul fast float %4487, %4496
  %4500 = fmul fast float %4487, %4497
  %4501 = fadd fast float %4498, %4245
  %4502 = fadd fast float %4499, %4246
  %4503 = fadd fast float %4500, %4247
  %4504 = fsub fast float %81, %4208
  %4505 = fsub fast float %82, %4209
  %4506 = fsub fast float %83, %4210
  %4507 = fmul fast float %4487, %4504
  %4508 = fmul fast float %4487, %4505
  %4509 = fmul fast float %4487, %4506
  %4510 = fadd fast float %4507, %4208
  %4511 = fadd fast float %4508, %4209
  %4512 = fadd fast float %4509, %4210
  %4513 = fmul fast float %4487, %4482
  %4514 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = fmul fast float %4513, %4515
  %4517 = fadd fast float %4516, %4514
  %4518 = fsub fast float 1.000000e+00, %4220
  %4519 = fmul fast float %4487, %4518
  %4520 = fadd fast float %4519, %4220
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4512, float %4510, float %4511, float %4512)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.unary.f32(i32 25, float %4521)  ; Rsqrt(value)
  %4523 = fmul fast float %4510, %4522
  %4524 = fmul fast float %4511, %4522
  %4525 = fmul fast float %4512, %4522
  br label %4526

; <label>:4526                                    ; preds = %4358, %4351
  %4527 = phi float [ %4357, %4351 ], [ %4364, %4358 ]
  %4528 = phi float [ %4356, %4351 ], [ %4362, %4358 ]
  %4529 = phi float [ %4355, %4351 ], [ %4360, %4358 ]
  %4530 = phi float [ %4354, %4351 ], [ %4363, %4358 ]
  %4531 = phi float [ %4353, %4351 ], [ %4361, %4358 ]
  %4532 = phi float [ %4352, %4351 ], [ %4359, %4358 ]
  %4533 = phi float [ %4245, %4351 ], [ %4501, %4358 ]
  %4534 = phi float [ %4246, %4351 ], [ %4502, %4358 ]
  %4535 = phi float [ %4247, %4351 ], [ %4503, %4358 ]
  %4536 = phi float [ %4208, %4351 ], [ %4523, %4358 ]
  %4537 = phi float [ %4209, %4351 ], [ %4524, %4358 ]
  %4538 = phi float [ %4210, %4351 ], [ %4525, %4358 ]
  %4539 = phi float [ %4260, %4351 ], [ %4410, %4358 ]
  %4540 = phi float [ %4261, %4351 ], [ %4411, %4358 ]
  %4541 = phi float [ %4262, %4351 ], [ %4412, %4358 ]
  %4542 = phi float [ %4248, %4351 ], [ %4517, %4358 ]
  %4543 = phi float [ %4220, %4351 ], [ %4520, %4358 ]
  %4544 = select i1 %198, float 0.000000e+00, float %4535
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %4529, float %4528, float %4527)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4532, float %4531, float %4530, float %4536, float %4537, float %4538)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = fmul fast float %4548, %4536
  %4550 = fmul fast float %4548, %4537
  %4551 = fmul fast float %4548, %4538
  %4552 = fsub fast float %4532, %4549
  %4553 = fsub fast float %4531, %4550
  %4554 = fsub fast float %4530, %4551
  %4555 = call float @dx.op.binary.f32(i32 36, float %4543, float 1.000000e+00)  ; FMin(a,b)
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = ashr i32 %4557, 1
  %4559 = add nsw i32 %4558, 532487669
  %4560 = bitcast i32 %4559 to float
  %4561 = fsub fast float 1.000000e+00, %4542
  %4562 = call float @dx.op.binary.f32(i32 35, float %4561, float 0x3F847AE140000000)  ; FMax(a,b)
  %4563 = fmul fast float %4562, %4562
  %4564 = fmul fast float %4563, %4563
  %4565 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %4560, float %4564, float %4565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = fsub fast float 1.000000e+00, %47
  %4569 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4569, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4571 = fdiv fast float %4568, %4570
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fmul fast float %4573, 5.000000e-01
  %4575 = fadd fast float %4574, 5.000000e-01
  %4576 = fmul fast float %4575, %47
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4578, %4571
  %4580 = fadd fast float %4576, %4579
  %4581 = fsub fast float 5.000000e-01, %4574
  %4582 = fmul fast float %4581, %4539
  %4583 = fmul fast float %4581, %4540
  %4584 = fmul fast float %4581, %4541
  %4585 = fadd fast float %4580, %4582
  %4586 = fadd fast float %4580, %4583
  %4587 = fadd fast float %4580, %4584
  %4588 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, 5.000000e-01
  %4591 = fadd fast float %4590, 5.000000e-01
  %4592 = fmul fast float %4591, %47
  %4593 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, %4571
  %4596 = fadd fast float %4592, %4595
  %4597 = fsub fast float 5.000000e-01, %4590
  %4598 = fmul fast float %4597, %4539
  %4599 = fmul fast float %4597, %4540
  %4600 = fmul fast float %4597, %4541
  %4601 = fadd fast float %4596, %4598
  %4602 = fadd fast float %4596, %4599
  %4603 = fadd fast float %4596, %4600
  %4604 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = call float @dx.op.binary.f32(i32 36, float %4539, float %4606)  ; FMin(a,b)
  %4608 = fmul fast float %4607, %4556
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = bitcast float %4609 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = call float @dx.op.binary.f32(i32 36, float %4540, float %4606)  ; FMin(a,b)
  %4614 = fmul fast float %4613, %4556
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = bitcast float %4615 to i32
  %4617 = sub nsw i32 2129859010, %4616
  %4618 = bitcast i32 %4617 to float
  %4619 = call float @dx.op.binary.f32(i32 36, float %4541, float %4606)  ; FMin(a,b)
  %4620 = fmul fast float %4619, %4556
  %4621 = fsub fast float 1.000000e+00, %4620
  %4622 = bitcast float %4621 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fmul fast float %4555, %48
  %4626 = fmul fast float %4625, %4585
  %4627 = fmul fast float %4626, %4612
  %4628 = fmul fast float %4555, %49
  %4629 = fmul fast float %4628, %4586
  %4630 = fmul fast float %4629, %4618
  %4631 = fmul fast float %4555, %50
  %4632 = fmul fast float %4631, %4587
  %4633 = fmul fast float %4632, %4624
  %4634 = call float @dx.op.binary.f32(i32 36, float %4533, float %4606)  ; FMin(a,b)
  %4635 = fmul fast float %4634, %4556
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = call float @dx.op.binary.f32(i32 36, float %4534, float %4606)  ; FMin(a,b)
  %4641 = fmul fast float %4640, %4556
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = call float @dx.op.binary.f32(i32 36, float %4544, float %4606)  ; FMin(a,b)
  %4647 = fmul fast float %4646, %4556
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = bitcast float %4648 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4625, %4601
  %4653 = fmul fast float %4652, %4639
  %4654 = fmul fast float %4628, %4602
  %4655 = fmul fast float %4654, %4645
  %4656 = fmul fast float %4631, %4603
  %4657 = fmul fast float %4656, %4651
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4630, float %4633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = select i1 %198, float 0.000000e+00, float %4627
  %4660 = select i1 %198, float %4658, float %4630
  %4661 = select i1 %198, float 0.000000e+00, float %4633
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4655, float %4657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = select i1 %198, float 0.000000e+00, float %4653
  %4664 = select i1 %198, float %4662, float %4655
  %4665 = select i1 %198, float 0.000000e+00, float %4657
  %4666 = fmul fast float %4546, 9.843750e-01
  %4667 = fmul fast float %4542, 9.843750e-01
  %4668 = fadd fast float %4666, 7.812500e-03
  %4669 = fadd fast float %4667, 7.812500e-03
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %4668, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4673 = fmul fast float %4671, %4533
  %4674 = fmul fast float %4671, %4534
  %4675 = fmul fast float %4671, %4544
  %4676 = fadd fast float %4673, %4672
  %4677 = fadd fast float %4674, %4672
  %4678 = fadd fast float %4675, %4672
  %4679 = fcmp fast ogt float %4221, 0.000000e+00
  br i1 %4679, label %4680, label %4706

; <label>:4680                                    ; preds = %4526
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %4221, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4681, 2
  %4685 = fadd fast float %4682, -5.000000e-01
  %4686 = fadd fast float %4683, -5.000000e-01
  %4687 = fadd fast float %4684, -5.000000e-01
  %4688 = fsub fast float 1.000000e+00, %4533
  %4689 = fsub fast float 1.000000e+00, %4534
  %4690 = fsub fast float 1.000000e+00, %4544
  %4691 = fmul fast float %4533, 4.000000e+00
  %4692 = fmul fast float %4691, %4688
  %4693 = fmul fast float %4692, %4685
  %4694 = fmul fast float %4534, 4.000000e+00
  %4695 = fmul fast float %4694, %4689
  %4696 = fmul fast float %4695, %4686
  %4697 = fmul fast float %4544, 4.000000e+00
  %4698 = fmul fast float %4697, %4690
  %4699 = fmul fast float %4698, %4687
  %4700 = fadd fast float %4693, %4676
  %4701 = fadd fast float %4696, %4677
  %4702 = fadd fast float %4699, %4678
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  br label %4706

; <label>:4706                                    ; preds = %4680, %4526
  %4707 = phi float [ %4703, %4680 ], [ %4676, %4526 ]
  %4708 = phi float [ %4704, %4680 ], [ %4677, %4526 ]
  %4709 = phi float [ %4705, %4680 ], [ %4678, %4526 ]
  %4710 = call float @dx.op.binary.f32(i32 35, float %4708, float %4709)  ; FMax(a,b)
  %4711 = call float @dx.op.binary.f32(i32 35, float %4707, float %4710)  ; FMax(a,b)
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = fmul fast float %4711, %4542
  %4714 = fadd fast float %4713, %4542
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 2
  %4717 = extractvalue %dx.types.CBufRet.f32 %4715, 3
  %4718 = fmul fast float %4714, %4716
  %4719 = fadd fast float %4718, %4717
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fsub fast float 1.000000e+00, %4567
  %4722 = fadd fast float %4721, %4720
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fcmp fast olt float %4723, 1.000000e+00
  br i1 %4724, label %4725, label %5162

; <label>:4725                                    ; preds = %4706
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4728 = extractvalue %dx.types.CBufRet.f32 %4726, 3
  %4729 = fmul fast float %4727, %74
  %4730 = fmul fast float %4728, %75
  %4731 = fptoui float %4729 to i32
  %4732 = fptoui float %4730 to i32
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4736 = extractvalue %dx.types.CBufRet.f32 %4733, 3
  %4737 = fadd fast float %67, -4.000000e+00
  %4738 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4739 = fadd fast float %4738, %4734
  %4740 = fmul fast float %4739, %4735
  %4741 = call float @dx.op.unary.f32(i32 23, float %4740)  ; Log(value)
  %4742 = fmul fast float %4741, %4736
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 2
  %4745 = fmul fast float %4742, %4744
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = add i32 %4748, -1
  %4750 = uitofp i32 %4748 to float
  %4751 = fmul fast float %4750, %4746
  %4752 = fptoui float %4751 to i32
  %4753 = call i32 @dx.op.binary.i32(i32 40, i32 %4752, i32 %4749)  ; UMin(a,b)
  %4754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.i32 %4754, 2
  %4756 = extractvalue %dx.types.CBufRet.i32 %4754, 3
  %4757 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4732, i32 %4755, i32 %4731)  ; UMad(a,b,c)
  %4758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4753, i32 %4756, i32 %4757)  ; UMad(a,b,c)
  %4759 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %4760 = fptoui float %4759 to i32
  %4761 = lshr i32 %4760, 5
  %4762 = call i32 @dx.op.binary.i32(i32 40, i32 %4761, i32 8191)  ; UMin(a,b)
  %4763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.i32 %4763, 2
  %4765 = add nsw i32 %4764, -1
  %4766 = call i32 @dx.op.binary.i32(i32 37, i32 %4765, i32 0)  ; IMax(a,b)
  %4767 = shl i32 %4762, 2
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = lshr i32 %4769, 16
  %4771 = and i32 %4769, 65535
  %4772 = lshr i32 %4769, 21
  %4773 = lshr i32 %4771, 5
  %4774 = call i32 @dx.op.binary.i32(i32 40, i32 %4773, i32 %4766)  ; UMin(a,b)
  %4775 = icmp ugt i32 %4772, %4774
  br i1 %4775, label %5138, label %4776

; <label>:4776                                    ; preds = %4725
  br label %4777

; <label>:4777                                    ; preds = %5130, %4776
  %4778 = phi float [ %5131, %5130 ], [ 0.000000e+00, %4776 ]
  %4779 = phi float [ %5132, %5130 ], [ 0.000000e+00, %4776 ]
  %4780 = phi float [ %5133, %5130 ], [ 0.000000e+00, %4776 ]
  %4781 = phi float [ %5134, %5130 ], [ 1.000000e+00, %4776 ]
  %4782 = phi i32 [ %5135, %5130 ], [ %4772, %4776 ]
  %4783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.i32 %4783, 2
  %4785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4758, i32 %4784, i32 %4782)  ; UMad(a,b,c)
  %4786 = shl i32 %4785, 2
  %4787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.i32 %4787, 0
  %4789 = shl i32 %4782, 5
  %4790 = sub nsw i32 %4770, %4789
  %4791 = call i32 @dx.op.binary.i32(i32 37, i32 %4790, i32 0)  ; IMax(a,b)
  %4792 = call i32 @dx.op.binary.i32(i32 38, i32 %4791, i32 31)  ; IMin(a,b)
  %4793 = sub nsw i32 1, %4770
  %4794 = add nsw i32 %4793, %4771
  %4795 = call i32 @dx.op.binary.i32(i32 37, i32 %4794, i32 0)  ; IMax(a,b)
  %4796 = call i32 @dx.op.binary.i32(i32 38, i32 %4795, i32 32)  ; IMin(a,b)
  %4797 = and i32 %4796, 31
  %4798 = shl i32 -1, %4797
  %4799 = xor i32 %4798, -1
  %4800 = and i32 %4792, 31
  %4801 = shl i32 %4799, %4800
  %4802 = icmp eq i32 %4796, 32
  %4803 = select i1 %4802, i32 -1, i32 %4801
  %4804 = and i32 %4803, %4788
  %4805 = icmp eq i32 %4804, 0
  br i1 %4805, label %5130, label %4806

; <label>:4806                                    ; preds = %4777
  br label %4807

; <label>:4807                                    ; preds = %4913, %4806
  %4808 = phi float [ %4914, %4913 ], [ %4778, %4806 ]
  %4809 = phi float [ %4915, %4913 ], [ %4779, %4806 ]
  %4810 = phi float [ %4916, %4913 ], [ %4780, %4806 ]
  %4811 = phi float [ %4917, %4913 ], [ %4781, %4806 ]
  %4812 = phi i32 [ %4817, %4913 ], [ %4804, %4806 ]
  %4813 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4812)  ; FirstbitLo(value)
  %4814 = add i32 %4813, %4789
  %4815 = and i32 %4813, 31
  %4816 = shl i32 1, %4815
  %4817 = xor i32 %4816, %4812
  %4818 = mul i32 %4814, 72
  %4819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4818, i32 undef)  ; BufferLoad(srv,index,wot)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.ResRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.ResRet.f32 %4819, 2
  %4823 = add i32 %4818, 12
  %4824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4825 = extractvalue %dx.types.ResRet.i32 %4824, 0
  %4826 = add i32 %4818, 16
  %4827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4826, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = add i32 %4818, 28
  %4832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4831, i32 undef)  ; BufferLoad(srv,index,wot)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = add i32 %4818, 32
  %4835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4834, i32 undef)  ; BufferLoad(srv,index,wot)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.ResRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.ResRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.ResRet.f32 %4835, 3
  %4840 = add i32 %4818, 48
  %4841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4840, i32 undef)  ; BufferLoad(srv,index,wot)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.ResRet.f32 %4841, 1
  %4844 = add i32 %4818, 56
  %4845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = add i32 %4818, 64
  %4849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4850 = extractvalue %dx.types.ResRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.ResRet.f32 %4849, 1
  %4852 = mul i32 %4814, 60
  %4853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4852, i32 undef)  ; BufferLoad(srv,index,wot)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.ResRet.f32 %4853, 1
  %4856 = extractvalue %dx.types.ResRet.f32 %4853, 2
  %4857 = add i32 %4852, 12
  %4858 = add i32 %4852, 48
  %4859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4858, i32 undef)  ; BufferLoad(srv,index,wot)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = and i32 %4825, 32767
  %4864 = bitcast float %4820 to i32
  %4865 = icmp eq i32 %4864, -1
  %4866 = bitcast float %4821 to i32
  %4867 = and i32 %4825, 32768
  %4868 = icmp ne i32 %4867, 0
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = fsub fast float %4854, %4870
  %4874 = fsub fast float %4855, %4871
  %4875 = fsub fast float %4856, %4872
  %4876 = fsub fast float %137, %4873
  %4877 = fsub fast float %138, %4874
  %4878 = fsub fast float %139, %4875
  %4879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4857, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.ResRet.f32 %4879, 2
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = add i32 %4852, 24
  %4885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4884, i32 undef)  ; BufferLoad(srv,index,wot)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 0
  %4887 = extractvalue %dx.types.ResRet.f32 %4885, 1
  %4888 = extractvalue %dx.types.ResRet.f32 %4885, 2
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4886, float %4887, float %4888)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = add i32 %4852, 36
  %4891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4890, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.unary.f32(i32 6, float %4883)  ; FAbs(value)
  %4897 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4898 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4899 = fsub fast float %4860, %4896
  %4900 = fsub fast float %4861, %4897
  %4901 = fsub fast float %4862, %4898
  %4902 = fmul fast float %4899, %4828
  %4903 = fmul fast float %4900, %4829
  %4904 = fmul fast float %4901, %4830
  %4905 = call float @dx.op.binary.f32(i32 36, float %4903, float %4904)  ; FMin(a,b)
  %4906 = call float @dx.op.binary.f32(i32 36, float %4902, float %4905)  ; FMin(a,b)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = call float @dx.op.binary.f32(i32 36, float %4811, float %4907)  ; FMin(a,b)
  %4909 = uitofp i1 %4868 to float
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = fmul fast float %4908, %4910
  %4912 = fcmp fast ogt float %4911, 0.000000e+00
  br i1 %4912, label %4919, label %4913

; <label>:4913                                    ; preds = %5061, %4807
  %4914 = phi float [ %5125, %5061 ], [ %4808, %4807 ]
  %4915 = phi float [ %5126, %5061 ], [ %4809, %4807 ]
  %4916 = phi float [ %5127, %5061 ], [ %4810, %4807 ]
  %4917 = phi float [ %5128, %5061 ], [ %4811, %4807 ]
  %4918 = icmp eq i32 %4812, %4816
  br i1 %4918, label %5129, label %4807

; <label>:4919                                    ; preds = %4807
  br i1 %4865, label %4977, label %4920

; <label>:4920                                    ; preds = %4919
  %4921 = fsub fast float -0.000000e+00, %4880
  %4922 = fsub fast float -0.000000e+00, %4881
  %4923 = fsub fast float -0.000000e+00, %4882
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %4921, float %4922, float %4923)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = fsub fast float -0.000000e+00, %4924
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4921, float %4922, float %4923)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = fadd fast float %4926, %4843
  %4928 = fadd fast float %4842, %4926
  %4929 = fsub fast float -0.000000e+00, %4928
  %4930 = fcmp ogt float %4924, -0.000000e+00
  %4931 = select i1 %4930, float %4929, float %4927
  %4932 = call float @dx.op.unary.f32(i32 6, float %4925)  ; FAbs(value)
  %4933 = fdiv fast float 1.000000e+00, %4932
  %4934 = fmul fast float %4931, %4933
  %4935 = call float @dx.op.binary.f32(i32 35, float %4934, float 0.000000e+00)  ; FMax(a,b)
  %4936 = fsub fast float -0.000000e+00, %4886
  %4937 = fsub fast float -0.000000e+00, %4887
  %4938 = fsub fast float -0.000000e+00, %4888
  %4939 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %4936, float %4937, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %4940 = fsub fast float -0.000000e+00, %4939
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4936, float %4937, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = fadd fast float %4941, %4847
  %4943 = fadd fast float %4846, %4941
  %4944 = fsub fast float -0.000000e+00, %4943
  %4945 = fcmp ogt float %4939, -0.000000e+00
  %4946 = select i1 %4945, float %4944, float %4942
  %4947 = call float @dx.op.unary.f32(i32 6, float %4940)  ; FAbs(value)
  %4948 = fdiv fast float 1.000000e+00, %4947
  %4949 = fmul fast float %4946, %4948
  %4950 = call float @dx.op.binary.f32(i32 35, float %4949, float 0.000000e+00)  ; FMax(a,b)
  %4951 = fsub fast float -0.000000e+00, %4892
  %4952 = fsub fast float -0.000000e+00, %4893
  %4953 = fsub fast float -0.000000e+00, %4894
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %4951, float %4952, float %4953)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = fsub fast float -0.000000e+00, %4954
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4951, float %4952, float %4953)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = fadd fast float %4956, %4851
  %4958 = fadd fast float %4850, %4956
  %4959 = fsub fast float -0.000000e+00, %4958
  %4960 = fcmp ogt float %4954, -0.000000e+00
  %4961 = select i1 %4960, float %4959, float %4957
  %4962 = call float @dx.op.unary.f32(i32 6, float %4955)  ; FAbs(value)
  %4963 = fdiv fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4961, %4963
  %4965 = call float @dx.op.binary.f32(i32 35, float %4964, float 0.000000e+00)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 36, float %4950, float %4965)  ; FMin(a,b)
  %4967 = call float @dx.op.binary.f32(i32 36, float %4935, float %4966)  ; FMin(a,b)
  %4968 = fmul fast float %4967, %4552
  %4969 = fmul fast float %4967, %4553
  %4970 = fmul fast float %4967, %4554
  %4971 = fadd fast float %4968, %137
  %4972 = fadd fast float %4969, %138
  %4973 = fadd fast float %4970, %139
  %4974 = fsub fast float %4971, %4820
  %4975 = fsub fast float %4972, %4821
  %4976 = fsub fast float %4973, %4822
  br label %4984

; <label>:4977                                    ; preds = %4919
  %4978 = fmul fast float %4552, 8.096000e+03
  %4979 = fmul fast float %4553, 8.096000e+03
  %4980 = fmul fast float %4554, 8.096000e+03
  %4981 = fadd fast float %4978, %137
  %4982 = fadd fast float %4979, %138
  %4983 = fadd fast float %4980, %139
  br label %4984

; <label>:4984                                    ; preds = %4977, %4920
  %4985 = phi float [ %4552, %4977 ], [ %4974, %4920 ]
  %4986 = phi float [ %4553, %4977 ], [ %4975, %4920 ]
  %4987 = phi float [ %4554, %4977 ], [ %4976, %4920 ]
  %4988 = phi float [ %4981, %4977 ], [ %4971, %4920 ]
  %4989 = phi float [ %4982, %4977 ], [ %4972, %4920 ]
  %4990 = phi float [ %4983, %4977 ], [ %4973, %4920 ]
  %4991 = fcmp fast olt float %4839, 1.000000e+00
  br i1 %4991, label %4992, label %5023, !dx.controlflow.hints !72

; <label>:4992                                    ; preds = %4984
  %4993 = fmul fast float %4987, %4837
  %4994 = fmul fast float %4986, %4838
  %4995 = fsub fast float %4993, %4994
  %4996 = fmul fast float %4985, %4838
  %4997 = fmul fast float %4987, %4836
  %4998 = fsub fast float %4996, %4997
  %4999 = fmul fast float %4986, %4836
  %5000 = fmul fast float %4985, %4837
  %5001 = fsub fast float %4999, %5000
  %5002 = fmul fast float %4995, 2.000000e+00
  %5003 = fmul fast float %4998, 2.000000e+00
  %5004 = fmul fast float %5001, 2.000000e+00
  %5005 = fmul fast float %5002, %4839
  %5006 = fmul fast float %5003, %4839
  %5007 = fmul fast float %5004, %4839
  %5008 = fmul fast float %5004, %4837
  %5009 = fmul fast float %5003, %4838
  %5010 = fmul fast float %5002, %4838
  %5011 = fmul fast float %5004, %4836
  %5012 = fmul fast float %5003, %4836
  %5013 = fmul fast float %5002, %4837
  %5014 = fadd fast float %5008, %4985
  %5015 = fadd fast float %5014, %5005
  %5016 = fsub fast float %5015, %5009
  %5017 = fsub fast float %4986, %5011
  %5018 = fadd fast float %5017, %5006
  %5019 = fadd fast float %5018, %5010
  %5020 = fadd fast float %5007, %4987
  %5021 = fsub fast float %5020, %5013
  %5022 = fadd fast float %5021, %5012
  br label %5023

; <label>:5023                                    ; preds = %4992, %4984
  %5024 = phi float [ %5016, %4992 ], [ %4985, %4984 ]
  %5025 = phi float [ %5019, %4992 ], [ %4986, %4984 ]
  %5026 = phi float [ %5022, %4992 ], [ %4987, %4984 ]
  br i1 %4865, label %5058, label %5027

; <label>:5027                                    ; preds = %5023
  %5028 = fmul fast float %4542, 0x400187C840000000
  %5029 = fadd fast float %5028, 0xC00EFC2120000000
  %5030 = fmul fast float %5029, %4542
  %5031 = fadd fast float %5030, 0x3FE5D16340000000
  %5032 = fmul fast float %5031, %4542
  %5033 = fadd fast float %5032, 1.000000e+00
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fsub fast float %4988, %137
  %5036 = fsub fast float %4989, %138
  %5037 = fsub fast float %4990, %139
  %5038 = fsub fast float %4988, %4820
  %5039 = fsub fast float %4989, %4821
  %5040 = fsub fast float %4990, %4822
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = fadd fast float %5042, 0x3EE4F8B580000000
  %5044 = fdiv fast float %5041, %5043
  %5045 = bitcast float %5044 to i32
  %5046 = ashr i32 %5045, 1
  %5047 = add nsw i32 %5046, 532487669
  %5048 = bitcast i32 %5047 to float
  %5049 = fmul fast float %5048, %5034
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fmul fast float %5050, 0x4009981AE0000000
  %5052 = fsub fast float 0x40111BBD80000000, %5051
  %5053 = fmul fast float %5052, %5050
  %5054 = fadd fast float %5053, 0xC0009F6020000000
  %5055 = fmul fast float %5054, %5050
  %5056 = fadd fast float %5055, 1.000000e+00
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  br label %5061

; <label>:5058                                    ; preds = %5023
  %5059 = icmp ne i32 %4866, -1
  %5060 = zext i1 %5059 to i32
  br label %5061

; <label>:5061                                    ; preds = %5058, %5027
  %5062 = phi float [ %4542, %5058 ], [ %5057, %5027 ]
  %5063 = phi i32 [ %5060, %5058 ], [ 0, %5027 ]
  %5064 = fmul float %5062, 5.000000e+00
  %5065 = fsub float 5.000000e+00, %5064
  %5066 = icmp ne i32 %5063, 0
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5069 = fadd fast float %5068, %5065
  %5070 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5069)  ; FMax(a,b)
  %5071 = call float @dx.op.unary.f32(i32 6, float %5024)  ; FAbs(value)
  %5072 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5073 = fadd fast float %5072, %5071
  %5074 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5075 = fadd fast float %5073, %5074
  %5076 = fcmp fast oeq float %5075, 0.000000e+00
  %5077 = fdiv fast float 1.000000e+00, %5075
  %5078 = select i1 %5076, float 1.000000e+00, float %5077
  %5079 = fmul fast float %5078, %5024
  %5080 = fmul fast float %5078, %5025
  %5081 = call float @dx.op.unary.f32(i32 6, float %5080)  ; FAbs(value)
  %5082 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5083 = fsub fast float 1.000000e+00, %5081
  %5084 = fsub fast float 1.000000e+00, %5082
  %5085 = fcmp fast oge float %5079, 0.000000e+00
  %5086 = fcmp fast oge float %5080, 0.000000e+00
  %5087 = select i1 %5085, float 1.000000e+00, float -1.000000e+00
  %5088 = select i1 %5086, float 1.000000e+00, float -1.000000e+00
  %5089 = fcmp fast ole float %5026, 0.000000e+00
  %5090 = fmul fast float %5087, %5083
  %5091 = fmul fast float %5088, %5084
  %5092 = select i1 %5089, float %5090, float %5079
  %5093 = select i1 %5089, float %5091, float %5080
  %5094 = fmul fast float %5092, 5.000000e-01
  %5095 = fmul fast float %5093, 5.000000e-01
  %5096 = fadd fast float %5094, 5.000000e-01
  %5097 = fadd fast float %5095, 5.000000e-01
  %5098 = uitofp i32 %4863 to float
  %5099 = call float @dx.op.binary.f32(i32 36, float %5070, float 3.000000e+00)  ; FMin(a,b)
  %5100 = fadd fast float %5099, 2.000000e+00
  %5101 = call float @dx.op.unary.f32(i32 21, float %5100)  ; Exp(value)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5103 = fmul fast float %5102, %5101
  %5104 = fmul fast float %5103, 2.000000e+00
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = fmul fast float %5096, %5105
  %5107 = fmul fast float %5097, %5105
  %5108 = fadd fast float %5106, %5103
  %5109 = fadd fast float %5107, %5103
  %5110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %5108, float %5109, float %5098, float undef, i32 0, i32 0, i32 undef, float %5070)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.ResRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.ResRet.f32 %5110, 2
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5116 = fmul fast float %5115, %4833
  %5117 = call float @dx.op.binary.f32(i32 36, float %4604, float %5116)  ; FMin(a,b)
  %5118 = select i1 %5066, float %5117, float %5116
  %5119 = fmul fast float %5111, %4911
  %5120 = fmul fast float %5119, %5118
  %5121 = fmul fast float %5112, %4911
  %5122 = fmul fast float %5121, %5118
  %5123 = fmul fast float %5113, %4911
  %5124 = fmul fast float %5123, %5118
  %5125 = fadd fast float %5120, %4808
  %5126 = fadd fast float %5122, %4809
  %5127 = fadd fast float %5124, %4810
  %5128 = fsub fast float %4811, %4911
  br label %4913

; <label>:5129                                    ; preds = %4913
  br label %5130

; <label>:5130                                    ; preds = %5129, %4777
  %5131 = phi float [ %4778, %4777 ], [ %4914, %5129 ]
  %5132 = phi float [ %4779, %4777 ], [ %4915, %5129 ]
  %5133 = phi float [ %4780, %4777 ], [ %4916, %5129 ]
  %5134 = phi float [ %4781, %4777 ], [ %4917, %5129 ]
  %5135 = add i32 %4782, 1
  %5136 = icmp ugt i32 %5135, %4774
  br i1 %5136, label %5137, label %4777, !llvm.loop !73

; <label>:5137                                    ; preds = %5130
  br label %5138

; <label>:5138                                    ; preds = %5137, %4725
  %5139 = phi float [ 0.000000e+00, %4725 ], [ %5131, %5137 ]
  %5140 = phi float [ 0.000000e+00, %4725 ], [ %5132, %5137 ]
  %5141 = phi float [ 0.000000e+00, %4725 ], [ %5133, %5137 ]
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = select i1 %198, float 0.000000e+00, float %5139
  %5144 = select i1 %198, float %5142, float %5140
  %5145 = select i1 %198, float 0.000000e+00, float %5141
  %5146 = fcmp fast olt float %4723, 0.000000e+00
  %5147 = call float @dx.op.unary.f32(i32 6, float %4723)  ; FAbs(value)
  %5148 = fmul fast float %5147, %4663
  %5149 = fmul fast float %5147, %4664
  %5150 = fmul fast float %5147, %4665
  %5151 = select i1 %5146, float %4663, float %5148
  %5152 = select i1 %5146, float %4664, float %5149
  %5153 = select i1 %5146, float %4665, float %5150
  %5154 = fsub fast float 1.000000e+00, %5147
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5143
  %5157 = fmul fast float %5155, %5144
  %5158 = fmul fast float %5155, %5145
  %5159 = fadd fast float %5151, %5156
  %5160 = fadd fast float %5152, %5157
  %5161 = fadd fast float %5153, %5158
  br label %5162

; <label>:5162                                    ; preds = %5138, %4706
  %5163 = phi float [ %4663, %4706 ], [ %5159, %5138 ]
  %5164 = phi float [ %4664, %4706 ], [ %5160, %5138 ]
  %5165 = phi float [ %4665, %4706 ], [ %5161, %5138 ]
  %5166 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = fcmp fast ogt float %5166, 0x3E7FF19E20000000
  %5168 = fdiv fast float 1.000000e+00, %5166
  %5169 = select i1 %5167, float %5168, float 0.000000e+00
  %5170 = fmul fast float %5169, %4539
  %5171 = fmul fast float %5169, %4540
  %5172 = fmul fast float %5169, %4541
  %5173 = fadd fast float %5170, -1.000000e+00
  %5174 = fadd fast float %5171, -1.000000e+00
  %5175 = fadd fast float %5172, -1.000000e+00
  %5176 = fmul fast float %5173, 5.000000e-01
  %5177 = fmul fast float %5174, 5.000000e-01
  %5178 = fmul fast float %5175, 5.000000e-01
  %5179 = fadd fast float %5176, 1.000000e+00
  %5180 = fadd fast float %5177, 1.000000e+00
  %5181 = fadd fast float %5178, 1.000000e+00
  %5182 = fmul fast float %5163, %4707
  %5183 = fmul fast float %5164, %4708
  %5184 = fmul fast float %5165, %4709
  %5185 = fsub fast float 1.000000e+00, %4546
  %5186 = bitcast float %5185 to i32
  %5187 = sitofp i32 %5186 to float
  %5188 = fmul fast float %5187, 5.000000e+00
  %5189 = fadd fast float %5188, 0xC1EFBF8940000000
  %5190 = fptosi float %5189 to i32
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, %4222
  %5193 = fmul fast float %4659, %5192
  %5194 = fmul fast float %5193, %4712
  %5195 = fmul fast float %5194, %5179
  %5196 = fmul fast float %4660, %5192
  %5197 = fmul fast float %5196, %4712
  %5198 = fmul fast float %5197, %5180
  %5199 = fmul fast float %4661, %5192
  %5200 = fmul fast float %5199, %4712
  %5201 = fmul fast float %5200, %5181
  %5202 = fmul fast float %4661, %4218
  %5203 = fmul fast float %5202, %4712
  %5204 = fadd fast float %5182, %4214
  %5205 = fadd fast float %5204, %5195
  %5206 = fmul fast float %5205, %4218
  %5207 = fadd fast float %5183, %4215
  %5208 = fadd fast float %5207, %5198
  %5209 = fmul fast float %5208, %4218
  %5210 = fadd fast float %5184, %4216
  %5211 = fadd fast float %5210, %5201
  %5212 = fmul fast float %5211, %4218
  %5213 = fmul fast float %4218, %4218
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5214, float %5214, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = fmul fast float %5218, %5185
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 3
  %5222 = fsub fast float 1.000000e+00, %4226
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fadd fast float %5203, %4224
  %5225 = fmul fast float %5224, %4226
  %5226 = fmul fast float %5223, %5221
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5229 = fmul fast float %4539, %4218
  %5230 = fmul fast float %5229, %4659
  %5231 = fmul fast float %5230, %4712
  %5232 = fmul fast float %4540, %4218
  %5233 = fmul fast float %5232, %4660
  %5234 = fmul fast float %5233, %4712
  %5235 = fmul fast float %5203, %4541
  %5236 = fcmp fast ogt float %67, %159
  %5237 = and i1 %5236, %4265
  %5238 = or i1 %4344, %5237
  %5239 = icmp eq i32 %4264, 2
  %5240 = fcmp fast ole float %67, %159
  %5241 = and i1 %5240, %5239
  %5242 = or i1 %5241, %5238
  br i1 %5237, label %5243, label %5500

; <label>:5243                                    ; preds = %5162
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 3
  %5247 = fmul fast float %5245, %74
  %5248 = fmul fast float %5246, %75
  %5249 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5251 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %5249, float %5250, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.ResRet.f32 %5251, 3
  %5256 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %5249, float %5250, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = extractvalue %dx.types.ResRet.f32 %5256, 3
  %5261 = call float @dx.op.binary.f32(i32 35, float %5253, float %5254)  ; FMax(a,b)
  %5262 = call float @dx.op.binary.f32(i32 35, float %5252, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 35, float %5262, float %5255)  ; FMax(a,b)
  %5264 = call float @dx.op.binary.f32(i32 36, float %5258, float %5259)  ; FMin(a,b)
  %5265 = call float @dx.op.binary.f32(i32 36, float %5257, float %5264)  ; FMin(a,b)
  %5266 = call float @dx.op.binary.f32(i32 36, float %5265, float %5260)  ; FMin(a,b)
  %5267 = fmul fast float %5263, 2.550000e+02
  %5268 = fadd fast float %5267, 0x3F70101020000000
  %5269 = fptoui float %5268 to i32
  %5270 = fmul fast float %5266, 2.550000e+02
  %5271 = fadd fast float %5270, 0x3F70101020000000
  %5272 = fptoui float %5271 to i32
  %5273 = icmp ult i32 %5269, %5272
  br i1 %5273, label %5274, label %5442

; <label>:5274                                    ; preds = %5243
  %5275 = fcmp fast ogt float %66, 9.843750e-01
  %5276 = fadd fast float %67, -4.000000e+00
  %5277 = select i1 %5275, float -4.000000e+00, float %5276
  %5278 = call float @dx.op.binary.f32(i32 35, float %5277, float 0.000000e+00)  ; FMax(a,b)
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = fadd fast float %5280, %5278
  %5282 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5283 = fmul fast float %5281, %5282
  %5284 = call float @dx.op.unary.f32(i32 23, float %5283)  ; Log(value)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5286 = fmul fast float %5285, %5284
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5289 = fmul fast float %5286, %5288
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = uitofp i32 %5269 to float
  %5292 = uitofp i32 %5272 to float
  %5293 = fadd fast float %5291, 5.000000e-01
  %5294 = fadd fast float %5292, 5.000000e-01
  %5295 = fmul fast float %5288, %5293
  %5296 = fmul fast float %5288, %5294
  %5297 = fadd fast float %5295, 0x3F0FFB4800000000
  %5298 = fadd fast float %5296, 0xBF0FFB4800000000
  %5299 = call float @dx.op.binary.f32(i32 35, float %5290, float %5297)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 36, float %5299, float %5298)  ; FMin(a,b)
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5305 = fmul fast float %5302, %5300
  %5306 = fadd fast float %5304, %5305
  %5307 = fadd fast float %5304, %5303
  %5308 = fsub fast float %5302, %5303
  %5309 = fadd fast float %5308, %5304
  %5310 = call float @dx.op.binary.f32(i32 35, float %5306, float %5307)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 36, float %5310, float %5309)  ; FMin(a,b)
  %5312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %5249, float %5250, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5313 = extractvalue %dx.types.ResRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.ResRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.ResRet.f32 %5312, 2
  %5316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.i32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.i32 %5316, 1
  %5319 = uitofp i32 %5317 to float
  %5320 = uitofp i32 %5318 to float
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5324 = fmul fast float %5319, %5249
  %5325 = fmul fast float %5320, %5250
  %5326 = fadd fast float %5324, -5.000000e-01
  %5327 = fadd fast float %5325, -5.000000e-01
  %5328 = call float @dx.op.unary.f32(i32 22, float %5326)  ; Frc(value)
  %5329 = call float @dx.op.unary.f32(i32 22, float %5327)  ; Frc(value)
  %5330 = fmul fast float %5328, %5328
  %5331 = fmul fast float %5330, %5328
  %5332 = fsub fast float 3.000000e+00, %5328
  %5333 = fmul fast float %5330, %5332
  %5334 = fmul fast float %5328, 3.000000e+00
  %5335 = fmul fast float %5331, 3.000000e+00
  %5336 = fmul fast float %5330, 6.000000e+00
  %5337 = fsub fast float %5335, %5336
  %5338 = fadd fast float %5337, 4.000000e+00
  %5339 = fmul fast float %5338, 0x3FC5555560000000
  %5340 = fmul fast float %5331, -3.000000e+00
  %5341 = fadd fast float %5330, %5328
  %5342 = fmul fast float %5341, 3.000000e+00
  %5343 = fadd fast float %5340, 1.000000e+00
  %5344 = fadd fast float %5343, %5342
  %5345 = fmul fast float %5331, 0x3FC5555560000000
  %5346 = fmul fast float %5329, %5329
  %5347 = fmul fast float %5346, %5329
  %5348 = fsub fast float 3.000000e+00, %5329
  %5349 = fmul fast float %5346, %5348
  %5350 = fmul fast float %5329, 3.000000e+00
  %5351 = fmul fast float %5347, 3.000000e+00
  %5352 = fmul fast float %5346, 6.000000e+00
  %5353 = fsub fast float %5351, %5352
  %5354 = fadd fast float %5353, 4.000000e+00
  %5355 = fmul fast float %5354, 0x3FC5555560000000
  %5356 = fmul fast float %5347, -3.000000e+00
  %5357 = fadd fast float %5346, %5329
  %5358 = fmul fast float %5357, 3.000000e+00
  %5359 = fadd fast float %5356, 1.000000e+00
  %5360 = fadd fast float %5359, %5358
  %5361 = fmul fast float %5347, 0x3FC5555560000000
  %5362 = fadd fast float %5328, 1.000000e+00
  %5363 = fsub fast float 1.000000e+00, %5334
  %5364 = fadd fast float %5363, %5333
  %5365 = fadd fast float %5364, %5338
  %5366 = fmul fast float %5365, 0x3FC5555560000000
  %5367 = fdiv fast float %5339, %5366
  %5368 = fsub fast float %5362, %5367
  %5369 = fsub fast float 1.000000e+00, %5328
  %5370 = fadd fast float %5344, %5331
  %5371 = fmul fast float %5370, 0x3FC5555560000000
  %5372 = fdiv fast float %5345, %5371
  %5373 = fadd fast float %5369, %5372
  %5374 = fadd fast float %5329, 1.000000e+00
  %5375 = fsub fast float 1.000000e+00, %5350
  %5376 = fadd fast float %5375, %5349
  %5377 = fadd fast float %5376, %5354
  %5378 = fmul fast float %5377, 0x3FC5555560000000
  %5379 = fdiv fast float %5355, %5378
  %5380 = fsub fast float %5374, %5379
  %5381 = fsub fast float 1.000000e+00, %5329
  %5382 = fadd fast float %5360, %5347
  %5383 = fmul fast float %5382, 0x3FC5555560000000
  %5384 = fdiv fast float %5361, %5383
  %5385 = fadd fast float %5384, %5381
  %5386 = fmul fast float %5368, %5322
  %5387 = fsub fast float %5249, %5386
  %5388 = fmul fast float %5373, %5322
  %5389 = fadd fast float %5388, %5249
  %5390 = fmul fast float %5385, %5323
  %5391 = fadd fast float %5390, %5250
  %5392 = fmul fast float %5380, %5323
  %5393 = fsub fast float %5250, %5392
  %5394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5387, float %5393, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5389, float %5393, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5387, float %5391, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.ResRet.f32 %5402, 2
  %5406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5389, float %5391, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = fsub fast float %5403, %5395
  %5411 = fsub fast float %5404, %5396
  %5412 = fsub fast float %5405, %5397
  %5413 = fmul fast float %5410, %5383
  %5414 = fmul fast float %5411, %5383
  %5415 = fmul fast float %5412, %5383
  %5416 = fadd fast float %5413, %5395
  %5417 = fadd fast float %5414, %5396
  %5418 = fadd fast float %5415, %5397
  %5419 = fsub fast float %5407, %5399
  %5420 = fsub fast float %5408, %5400
  %5421 = fsub fast float %5409, %5401
  %5422 = fmul fast float %5419, %5383
  %5423 = fmul fast float %5420, %5383
  %5424 = fmul fast float %5421, %5383
  %5425 = fsub fast float %5399, %5416
  %5426 = fadd fast float %5425, %5422
  %5427 = fsub fast float %5400, %5417
  %5428 = fadd fast float %5427, %5423
  %5429 = fsub fast float %5401, %5418
  %5430 = fadd fast float %5429, %5424
  %5431 = fmul fast float %5426, %5371
  %5432 = fmul fast float %5428, %5371
  %5433 = fmul fast float %5430, %5371
  %5434 = fadd fast float %5431, %5416
  %5435 = fadd fast float %5432, %5417
  %5436 = fadd fast float %5433, %5418
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5439 = fmul fast float %5434, %5438
  %5440 = fmul fast float %5435, %5438
  %5441 = fmul fast float %5436, %5438
  br label %5442

; <label>:5442                                    ; preds = %5274, %5243
  %5443 = phi float [ %5313, %5274 ], [ 1.000000e+00, %5243 ]
  %5444 = phi float [ %5314, %5274 ], [ 1.000000e+00, %5243 ]
  %5445 = phi float [ %5315, %5274 ], [ 1.000000e+00, %5243 ]
  %5446 = phi float [ %5439, %5274 ], [ 0.000000e+00, %5243 ]
  %5447 = phi float [ %5440, %5274 ], [ 0.000000e+00, %5243 ]
  %5448 = phi float [ %5441, %5274 ], [ 0.000000e+00, %5243 ]
  %5449 = fmul fast float %5446, %5216
  %5450 = fmul fast float %5447, %5216
  %5451 = fmul fast float %5448, %5216
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = select i1 %198, float %5452, float %5443
  %5455 = select i1 %198, float %5452, float %5444
  %5456 = select i1 %198, float 1.000000e+00, float %5445
  %5457 = select i1 %198, float %5453, float %5449
  %5458 = select i1 %198, float 0.000000e+00, float %5450
  %5459 = select i1 %198, float 0.000000e+00, float %5451
  %5460 = fmul fast float %5454, %5231
  %5461 = fmul fast float %5455, %5234
  %5462 = fmul fast float %5456, %5235
  %5463 = fadd fast float %5460, %5457
  %5464 = fadd fast float %5461, %5458
  %5465 = fadd fast float %5459, %5462
  %5466 = fmul fast float %5454, %5206
  %5467 = fmul fast float %5455, %5209
  %5468 = fmul fast float %5456, %5212
  %5469 = fmul fast float %107, %5245
  %5470 = fmul fast float %109, %5246
  %5471 = fsub fast float 1.000000e+00, %5469
  %5472 = fsub fast float 1.000000e+00, %5470
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5477 = fmul fast float %5471, %5474
  %5478 = fmul fast float %5471, %5475
  %5479 = fmul fast float %5471, %5476
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5484 = fmul fast float %5472, %5481
  %5485 = fmul fast float %5472, %5482
  %5486 = fmul fast float %5472, %5483
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.CBufRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.CBufRet.f32 %5487, 2
  %5491 = fadd fast float %5484, %5488
  %5492 = fadd fast float %5491, %5477
  %5493 = fadd fast float %5485, %5489
  %5494 = fadd fast float %5493, %5478
  %5495 = fadd fast float %5486, %5490
  %5496 = fadd fast float %5495, %5479
  %5497 = fmul fast float %5492, %159
  %5498 = fmul fast float %5494, %159
  %5499 = fmul fast float %5496, %159
  br label %5500

; <label>:5500                                    ; preds = %5442, %5162
  %5501 = phi float [ %5497, %5442 ], [ %137, %5162 ]
  %5502 = phi float [ %5498, %5442 ], [ %138, %5162 ]
  %5503 = phi float [ %5499, %5442 ], [ %139, %5162 ]
  %5504 = phi float [ %159, %5442 ], [ %67, %5162 ]
  %5505 = phi float [ %5463, %5442 ], [ %5231, %5162 ]
  %5506 = phi float [ %5464, %5442 ], [ %5234, %5162 ]
  %5507 = phi float [ %5465, %5442 ], [ %5235, %5162 ]
  %5508 = phi float [ %5466, %5442 ], [ %5206, %5162 ]
  %5509 = phi float [ %5467, %5442 ], [ %5209, %5162 ]
  %5510 = phi float [ %5468, %5442 ], [ %5212, %5162 ]
  %5511 = phi float [ %5443, %5442 ], [ 1.000000e+00, %5162 ]
  br i1 %5242, label %6666, label %5512

; <label>:5512                                    ; preds = %5500
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5513, 3
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.CBufRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.CBufRet.f32 %5518, 2
  %5522 = extractvalue %dx.types.CBufRet.f32 %5518, 3
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5527 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5531 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5532 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 3
  %5537 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5540 = fcmp fast olt float %5539, -5.000000e-01
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = call float @dx.op.unary.f32(i32 25, float %5541)  ; Rsqrt(value)
  %5543 = fmul fast float %5542, %5541
  %5544 = fmul fast float %5542, %5501
  %5545 = fmul fast float %5542, %5502
  %5546 = fmul fast float %5542, %5503
  %5547 = fadd fast float %5543, %5517
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %5514, float %5515, float %5516)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.i32 %5549, 1
  %5551 = and i32 %5550, 1
  %5552 = icmp ne i32 %5551, 0
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 2
  %5555 = fcmp fast ogt float %5554, 0.000000e+00
  %5556 = and i1 %5552, %5555
  br i1 %5556, label %5557, label %5963, !dx.controlflow.hints !75

; <label>:5557                                    ; preds = %5512
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 3
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 2
  %5564 = fsub fast float %5561, %5563
  %5565 = and i32 %5550, 2
  %5566 = extractvalue %dx.types.CBufRet.i32 %5549, 0
  %5567 = call i32 @dx.op.binary.i32(i32 40, i32 %5566, i32 3)  ; UMin(a,b)
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  %5572 = extractvalue %dx.types.CBufRet.f32 %5562, 1
  %5573 = fsub fast float %5569, %5571
  %5574 = fsub fast float %5570, %5572
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = fcmp fast ogt float %5576, 0.000000e+00
  %5578 = fsub fast float -0.000000e+00, %5573
  %5579 = fsub fast float -0.000000e+00, %5574
  %5580 = call float @dx.op.dot2.f32(i32 54, float %5544, float %5545, float %5544, float %5545)  ; Dot2(ax,ay,bx,by)
  %5581 = call float @dx.op.dot2.f32(i32 54, float %5544, float %5545, float %5578, float %5579)  ; Dot2(ax,ay,bx,by)
  %5582 = fmul fast float %5581, 2.000000e+00
  %5583 = call float @dx.op.dot2.f32(i32 54, float %5578, float %5579, float %5578, float %5579)  ; Dot2(ax,ay,bx,by)
  %5584 = fmul fast float %5576, %5576
  %5585 = fsub fast float %5583, %5584
  %5586 = fmul fast float %5582, %5582
  %5587 = fmul fast float %5580, 4.000000e+00
  %5588 = fmul fast float %5587, %5585
  %5589 = fsub fast float %5586, %5588
  %5590 = fcmp fast ogt float %5589, 0.000000e+00
  br i1 %5590, label %5591, label %5606

; <label>:5591                                    ; preds = %5557
  %5592 = fcmp fast ogt float %5582, 0.000000e+00
  %5593 = call float @dx.op.unary.f32(i32 24, float %5589)  ; Sqrt(value)
  %5594 = fsub fast float -0.000000e+00, %5593
  %5595 = select i1 %5592, float %5593, float %5594
  %5596 = fadd fast float %5595, %5582
  %5597 = fmul float %5596, -5.000000e-01
  %5598 = fdiv fast float %5597, %5580
  %5599 = call float @dx.op.binary.f32(i32 35, float %5598, float 0.000000e+00)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5543, float %5599)  ; FMin(a,b)
  %5601 = fdiv fast float %5585, %5597
  %5602 = call float @dx.op.binary.f32(i32 35, float %5601, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 36, float %5543, float %5602)  ; FMin(a,b)
  %5604 = call float @dx.op.binary.f32(i32 36, float %5600, float %5603)  ; FMin(a,b)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5600, float %5603)  ; FMax(a,b)
  br label %5606

; <label>:5606                                    ; preds = %5591, %5557
  %5607 = phi float [ %5605, %5591 ], [ -1.000000e+00, %5557 ]
  %5608 = phi float [ %5604, %5591 ], [ -1.000000e+00, %5557 ]
  %5609 = phi i1 [ true, %5591 ], [ false, %5557 ]
  %5610 = and i1 %5577, %5609
  br i1 %5610, label %5611, label %5613

; <label>:5611                                    ; preds = %5606
  %5612 = fcmp fast oeq float %5608, %5607
  br i1 %5612, label %5916, label %5614

; <label>:5613                                    ; preds = %5606
  br i1 %5577, label %5916, label %5614

; <label>:5614                                    ; preds = %5613, %5611
  %5615 = phi float [ %5543, %5613 ], [ %5607, %5611 ]
  %5616 = phi float [ 0.000000e+00, %5613 ], [ %5608, %5611 ]
  %5617 = icmp ne i32 %5565, 0
  %5618 = fmul fast float %5615, %5546
  %5619 = fadd fast float %5618, %5559
  %5620 = fmul fast float %5619, %5615
  %5621 = select i1 %5617, float 0.000000e+00, float %5620
  %5622 = fcmp fast oeq float %5546, 0.000000e+00
  %5623 = fdiv fast float %5564, %5546
  %5624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5623)  ; FMax(a,b)
  %5625 = select i1 %5622, float %5615, float %5624
  %5626 = call float @dx.op.binary.f32(i32 36, float %5615, float %5625)  ; FMin(a,b)
  %5627 = fcmp fast ogt float %5546, 0.000000e+00
  %5628 = fcmp fast olt float %5564, 0.000000e+00
  br i1 %5627, label %5629, label %5686

; <label>:5629                                    ; preds = %5614
  %5630 = icmp eq i32 %5565, 0
  br i1 %5628, label %5631, label %5675

; <label>:5631                                    ; preds = %5629
  %5632 = select i1 %5630, float %5615, float 0.000000e+00
  %5633 = fsub fast float -0.000000e+00, %5632
  %5634 = call float @dx.op.unary.f32(i32 6, float %5633)  ; FAbs(value)
  %5635 = fmul fast float %5632, %5546
  %5636 = fadd fast float %5635, %5559
  %5637 = fmul fast float %5634, %5636
  %5638 = fsub fast float %5621, %5637
  %5639 = fsub fast float %5615, %5634
  %5640 = select i1 %5630, float %5639, float 0.000000e+00
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.CBufRet.f32 %5645, 2
  %5649 = extractvalue %dx.types.CBufRet.f32 %5645, 3
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5652 = call float @dx.op.binary.f32(i32 36, float %5638, float %5651)  ; FMin(a,b)
  %5653 = fmul fast float %5649, %5640
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = fsub fast float %5646, %5642
  %5656 = fsub fast float %5647, %5643
  %5657 = fsub fast float %5648, %5644
  %5658 = fmul fast float %5654, %5655
  %5659 = fmul fast float %5654, %5656
  %5660 = fmul fast float %5654, %5657
  %5661 = fadd fast float %5658, %5642
  %5662 = fadd fast float %5659, %5643
  %5663 = fadd fast float %5660, %5644
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.CBufRet.f32 %5664, 1
  %5667 = fadd fast float %5666, %5665
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5664, 2
  %5670 = extractvalue %dx.types.CBufRet.f32 %5664, 3
  %5671 = fadd fast float %5670, %5669
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5668, %5652
  %5674 = fmul fast float %5673, %5672
  br label %5916

; <label>:5675                                    ; preds = %5629
  br i1 %5630, label %5676, label %5697

; <label>:5676                                    ; preds = %5675
  %5677 = call float @dx.op.binary.f32(i32 36, float %5626, float %5616)  ; FMin(a,b)
  %5678 = fsub fast float %5626, %5677
  %5679 = fsub fast float %5678, %5615
  %5680 = call float @dx.op.unary.f32(i32 6, float %5679)  ; FAbs(value)
  %5681 = fadd fast float %5678, %5615
  %5682 = fmul fast float %5681, %5546
  %5683 = fadd fast float %5682, %5559
  %5684 = fmul fast float %5683, %5680
  %5685 = fsub fast float %5621, %5684
  br label %5697

; <label>:5686                                    ; preds = %5614
  br i1 %5628, label %5687, label %5697

; <label>:5687                                    ; preds = %5686
  %5688 = call float @dx.op.binary.f32(i32 35, float %5616, float %5626)  ; FMax(a,b)
  %5689 = icmp eq i32 %5565, 0
  %5690 = select i1 %5689, float %5626, float 0.000000e+00
  %5691 = fsub fast float -0.000000e+00, %5690
  %5692 = call float @dx.op.unary.f32(i32 6, float %5691)  ; FAbs(value)
  %5693 = fmul fast float %5690, %5546
  %5694 = fadd fast float %5693, %5559
  %5695 = fmul fast float %5692, %5694
  %5696 = fsub fast float %5621, %5695
  br label %5697

; <label>:5697                                    ; preds = %5687, %5686, %5676, %5675
  %5698 = phi float [ %5616, %5675 ], [ %5616, %5676 ], [ %5688, %5687 ], [ %5616, %5686 ]
  %5699 = phi float [ 0.000000e+00, %5675 ], [ %5680, %5676 ], [ %5692, %5687 ], [ 0.000000e+00, %5686 ]
  %5700 = phi float [ %5621, %5675 ], [ %5685, %5676 ], [ %5696, %5687 ], [ %5621, %5686 ]
  %5701 = phi float [ %5626, %5675 ], [ %5626, %5676 ], [ %5615, %5687 ], [ %5615, %5686 ]
  %5702 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 0
  store float -1.000000e+00, float* %5702, align 4, !tbaa !76, !noalias !80
  %5703 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 1
  store float -1.000000e+00, float* %5703, align 4, !tbaa !76, !noalias !80
  %5704 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 2
  store float -1.000000e+00, float* %5704, align 4, !tbaa !76, !noalias !80
  %5705 = getelementptr inbounds [3 x float], [3 x float]* %69, i32 0, i32 0
  store float -1.000000e+00, float* %5705, align 4, !tbaa !76, !noalias !80
  %5706 = getelementptr inbounds [3 x float], [3 x float]* %69, i32 0, i32 1
  store float -1.000000e+00, float* %5706, align 4, !tbaa !76, !noalias !80
  %5707 = getelementptr inbounds [3 x float], [3 x float]* %69, i32 0, i32 2
  store float -1.000000e+00, float* %5707, align 4, !tbaa !76, !noalias !80
  %5708 = icmp sgt i32 %5567, 0
  br i1 %5708, label %5709, label %5770

; <label>:5709                                    ; preds = %5697
  br label %5710

; <label>:5710                                    ; preds = %5759, %5709
  %5711 = phi i32 [ %5760, %5759 ], [ 0, %5709 ]
  %5712 = phi i32 [ %5761, %5759 ], [ 0, %5709 ]
  %5713 = add nuw i32 %5712, 171
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %5713)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.CBufRet.f32 %5714, 1
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5720 = fsub fast float %5715, %5718
  %5721 = fsub fast float %5716, %5719
  %5722 = extractvalue %dx.types.CBufRet.f32 %5714, 2
  %5723 = fsub fast float -0.000000e+00, %5720
  %5724 = fsub fast float -0.000000e+00, %5721
  %5725 = call float @dx.op.dot2.f32(i32 54, float %5544, float %5545, float %5723, float %5724)  ; Dot2(ax,ay,bx,by)
  %5726 = fmul fast float %5725, 2.000000e+00
  %5727 = call float @dx.op.dot2.f32(i32 54, float %5723, float %5724, float %5723, float %5724)  ; Dot2(ax,ay,bx,by)
  %5728 = fmul fast float %5722, %5722
  %5729 = fsub fast float %5727, %5728
  %5730 = fmul fast float %5726, %5726
  %5731 = fmul fast float %5587, %5729
  %5732 = fsub fast float %5730, %5731
  %5733 = fcmp fast ogt float %5732, 0.000000e+00
  br i1 %5733, label %5734, label %5749

; <label>:5734                                    ; preds = %5710
  %5735 = fcmp fast ogt float %5726, 0.000000e+00
  %5736 = call float @dx.op.unary.f32(i32 24, float %5732)  ; Sqrt(value)
  %5737 = fsub fast float -0.000000e+00, %5736
  %5738 = select i1 %5735, float %5736, float %5737
  %5739 = fadd fast float %5738, %5726
  %5740 = fmul float %5739, -5.000000e-01
  %5741 = fdiv fast float %5740, %5580
  %5742 = call float @dx.op.binary.f32(i32 35, float %5741, float 0.000000e+00)  ; FMax(a,b)
  %5743 = call float @dx.op.binary.f32(i32 36, float %5615, float %5742)  ; FMin(a,b)
  %5744 = fdiv fast float %5729, %5740
  %5745 = call float @dx.op.binary.f32(i32 35, float %5744, float 0.000000e+00)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 36, float %5615, float %5745)  ; FMin(a,b)
  %5747 = call float @dx.op.binary.f32(i32 36, float %5743, float %5746)  ; FMin(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5743, float %5746)  ; FMax(a,b)
  br label %5749

; <label>:5749                                    ; preds = %5734, %5710
  %5750 = phi float [ %5748, %5734 ], [ -1.000000e+00, %5710 ]
  %5751 = phi float [ %5747, %5734 ], [ -1.000000e+00, %5710 ]
  %5752 = phi i1 [ true, %5734 ], [ false, %5710 ]
  br i1 %5752, label %5753, label %5759

; <label>:5753                                    ; preds = %5749
  %5754 = call float @dx.op.binary.f32(i32 35, float %5698, float %5751)  ; FMax(a,b)
  %5755 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 %5712
  store float %5754, float* %5755, align 4, !tbaa !76, !noalias !80
  %5756 = call float @dx.op.binary.f32(i32 35, float %5698, float %5750)  ; FMax(a,b)
  %5757 = getelementptr inbounds [3 x float], [3 x float]* %69, i32 0, i32 %5712
  store float %5756, float* %5757, align 4, !tbaa !76, !noalias !80
  %5758 = add nsw i32 %5711, 1
  br label %5759

; <label>:5759                                    ; preds = %5753, %5749
  %5760 = phi i32 [ %5758, %5753 ], [ %5711, %5749 ]
  %5761 = add nuw nsw i32 %5712, 1
  %5762 = icmp eq i32 %5761, %5567
  br i1 %5762, label %5763, label %5710

; <label>:5763                                    ; preds = %5759
  %5764 = load float, float* %5704, align 4, !tbaa !76, !alias.scope !96, !noalias !99
  %5765 = load float, float* %5703, align 4, !tbaa !76, !alias.scope !102, !noalias !103
  %5766 = load float, float* %5702, align 4, !tbaa !76, !alias.scope !104, !noalias !105
  %5767 = load float, float* %5707, align 4, !tbaa !76, !alias.scope !106, !noalias !109
  %5768 = load float, float* %5706, align 4, !tbaa !76, !alias.scope !112, !noalias !113
  %5769 = load float, float* %5705, align 4, !tbaa !76, !alias.scope !114, !noalias !115
  br label %5770

; <label>:5770                                    ; preds = %5763, %5697
  %5771 = phi float [ -1.000000e+00, %5697 ], [ %5769, %5763 ]
  %5772 = phi float [ -1.000000e+00, %5697 ], [ %5768, %5763 ]
  %5773 = phi float [ -1.000000e+00, %5697 ], [ %5767, %5763 ]
  %5774 = phi float [ -1.000000e+00, %5697 ], [ %5766, %5763 ]
  %5775 = phi float [ -1.000000e+00, %5697 ], [ %5765, %5763 ]
  %5776 = phi float [ -1.000000e+00, %5697 ], [ %5764, %5763 ]
  %5777 = phi i32 [ 0, %5697 ], [ %5760, %5763 ]
  %5778 = call float @dx.op.binary.f32(i32 36, float %5775, float %5776)  ; FMin(a,b)
  %5779 = call float @dx.op.binary.f32(i32 36, float %5774, float %5778)  ; FMin(a,b)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5774, float %5775)  ; FMax(a,b)
  %5781 = call float @dx.op.binary.f32(i32 36, float %5780, float %5776)  ; FMin(a,b)
  %5782 = call float @dx.op.binary.f32(i32 36, float %5774, float %5775)  ; FMin(a,b)
  %5783 = call float @dx.op.binary.f32(i32 35, float %5782, float %5781)  ; FMax(a,b)
  %5784 = call float @dx.op.binary.f32(i32 35, float %5775, float %5776)  ; FMax(a,b)
  %5785 = call float @dx.op.binary.f32(i32 35, float %5774, float %5784)  ; FMax(a,b)
  store float %5779, float* %5702, align 4, !tbaa !76, !alias.scope !104, !noalias !105
  store float %5783, float* %5703, align 4, !tbaa !76, !alias.scope !102, !noalias !103
  store float %5785, float* %5704, align 4, !tbaa !76, !alias.scope !96, !noalias !99
  %5786 = call float @dx.op.binary.f32(i32 36, float %5772, float %5773)  ; FMin(a,b)
  %5787 = call float @dx.op.binary.f32(i32 36, float %5771, float %5786)  ; FMin(a,b)
  %5788 = call float @dx.op.binary.f32(i32 35, float %5771, float %5772)  ; FMax(a,b)
  %5789 = call float @dx.op.binary.f32(i32 36, float %5788, float %5773)  ; FMin(a,b)
  %5790 = call float @dx.op.binary.f32(i32 36, float %5771, float %5772)  ; FMin(a,b)
  %5791 = call float @dx.op.binary.f32(i32 35, float %5790, float %5789)  ; FMax(a,b)
  %5792 = call float @dx.op.binary.f32(i32 35, float %5772, float %5773)  ; FMax(a,b)
  %5793 = call float @dx.op.binary.f32(i32 35, float %5771, float %5792)  ; FMax(a,b)
  store float %5787, float* %5705, align 4, !tbaa !76, !alias.scope !114, !noalias !115
  store float %5791, float* %5706, align 4, !tbaa !76, !alias.scope !112, !noalias !113
  store float %5793, float* %5707, align 4, !tbaa !76, !alias.scope !106, !noalias !109
  %5794 = sub nsw i32 3, %5777
  %5795 = icmp sgt i32 %5794, 2
  br i1 %5795, label %5796, label %5834

; <label>:5796                                    ; preds = %5770
  %5797 = icmp eq i32 %5565, 0
  %5798 = fsub fast float %5615, %5699
  %5799 = select i1 %5797, float %5798, float %5699
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5811 = call float @dx.op.binary.f32(i32 36, float %5700, float %5810)  ; FMin(a,b)
  %5812 = fmul fast float %5808, %5799
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fsub fast float %5805, %5801
  %5815 = fsub fast float %5806, %5802
  %5816 = fsub fast float %5807, %5803
  %5817 = fmul fast float %5813, %5814
  %5818 = fmul fast float %5813, %5815
  %5819 = fmul fast float %5813, %5816
  %5820 = fadd fast float %5817, %5801
  %5821 = fadd fast float %5818, %5802
  %5822 = fadd fast float %5819, %5803
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = fadd fast float %5825, %5824
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5829 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5830 = fadd fast float %5829, %5828
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = fmul fast float %5827, %5811
  %5833 = fmul fast float %5832, %5831
  br label %5916

; <label>:5834                                    ; preds = %5770
  %5835 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 %5794
  %5836 = load float, float* %5835, align 4, !tbaa !76, !noalias !80
  %5837 = fcmp fast olt float %5836, %5701
  %5838 = icmp sgt i32 %5777, 0
  %5839 = and i1 %5838, %5837
  br i1 %5839, label %5840, label %5877

; <label>:5840                                    ; preds = %5834
  br label %5841

; <label>:5841                                    ; preds = %5870, %5840
  %5842 = phi float [ %5871, %5870 ], [ %5699, %5840 ]
  %5843 = phi float [ %5872, %5870 ], [ %5700, %5840 ]
  %5844 = phi float [ %5852, %5870 ], [ %5836, %5840 ]
  %5845 = phi i32 [ %5849, %5870 ], [ %5794, %5840 ]
  %5846 = getelementptr inbounds [3 x float], [3 x float]* %69, i32 0, i32 %5845
  %5847 = load float, float* %5846, align 4, !tbaa !76, !noalias !80
  %5848 = icmp slt i32 %5845, 2
  %5849 = add nsw i32 %5845, 1
  %5850 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 %5849
  %5851 = load float, float* %5850, align 4, !tbaa !76, !noalias !80
  %5852 = select i1 %5848, float %5851, float %5615
  %5853 = call float @dx.op.binary.f32(i32 36, float %5852, float %5847)  ; FMin(a,b)
  %5854 = call float @dx.op.binary.f32(i32 36, float %5701, float %5853)  ; FMin(a,b)
  %5855 = icmp eq i32 %5565, 0
  %5856 = fadd fast float %5854, %5844
  %5857 = fmul fast float %5856, %5546
  %5858 = fadd fast float %5857, %5559
  br i1 %5855, label %5864, label %5859

; <label>:5859                                    ; preds = %5841
  %5860 = fsub fast float %5854, %5844
  %5861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5860)  ; FMax(a,b)
  %5862 = fmul fast float %5861, %5858
  %5863 = fadd fast float %5862, %5843
  br label %5870

; <label>:5864                                    ; preds = %5841
  %5865 = fsub fast float %5844, %5854
  %5866 = call float @dx.op.unary.f32(i32 6, float %5865)  ; FAbs(value)
  %5867 = fadd fast float %5866, %5842
  %5868 = fmul fast float %5866, %5858
  %5869 = fsub fast float %5843, %5868
  br label %5870

; <label>:5870                                    ; preds = %5864, %5859
  %5871 = phi float [ %5861, %5859 ], [ %5867, %5864 ]
  %5872 = phi float [ %5863, %5859 ], [ %5869, %5864 ]
  %5873 = fcmp fast olt float %5852, %5701
  %5874 = icmp slt i32 %5849, 3
  %5875 = and i1 %5874, %5873
  br i1 %5875, label %5841, label %5876

; <label>:5876                                    ; preds = %5870
  br label %5877

; <label>:5877                                    ; preds = %5876, %5834
  %5878 = phi float [ %5699, %5834 ], [ %5871, %5876 ]
  %5879 = phi float [ %5700, %5834 ], [ %5872, %5876 ]
  %5880 = fsub fast float %5615, %5878
  %5881 = select i1 %5617, float %5878, float %5880
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5890 = extractvalue %dx.types.CBufRet.f32 %5886, 3
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5893 = call float @dx.op.binary.f32(i32 36, float %5879, float %5892)  ; FMin(a,b)
  %5894 = fmul fast float %5890, %5881
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = fsub fast float %5887, %5883
  %5897 = fsub fast float %5888, %5884
  %5898 = fsub fast float %5889, %5885
  %5899 = fmul fast float %5895, %5896
  %5900 = fmul fast float %5895, %5897
  %5901 = fmul fast float %5895, %5898
  %5902 = fadd fast float %5899, %5883
  %5903 = fadd fast float %5900, %5884
  %5904 = fadd fast float %5901, %5885
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = fadd fast float %5907, %5906
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5912 = fadd fast float %5911, %5910
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5914 = fmul fast float %5909, %5893
  %5915 = fmul fast float %5914, %5913
  br label %5916

; <label>:5916                                    ; preds = %5877, %5796, %5631, %5613, %5611
  %5917 = phi float [ %5640, %5631 ], [ %5799, %5796 ], [ %5881, %5877 ], [ 0.000000e+00, %5611 ], [ 0.000000e+00, %5613 ]
  %5918 = phi float [ %5674, %5631 ], [ %5833, %5796 ], [ %5915, %5877 ], [ 0.000000e+00, %5611 ], [ 0.000000e+00, %5613 ]
  %5919 = phi float [ %5661, %5631 ], [ %5820, %5796 ], [ %5902, %5877 ], [ 0.000000e+00, %5611 ], [ 0.000000e+00, %5613 ]
  %5920 = phi float [ %5662, %5631 ], [ %5821, %5796 ], [ %5903, %5877 ], [ 0.000000e+00, %5611 ], [ 0.000000e+00, %5613 ]
  %5921 = phi float [ %5663, %5631 ], [ %5822, %5796 ], [ %5904, %5877 ], [ 0.000000e+00, %5611 ], [ 0.000000e+00, %5613 ]
  %5922 = fmul fast float %5554, %5918
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5925 = fsub fast float %5561, %5924
  %5926 = fcmp fast olt float %5922, -2.000000e+01
  %5927 = call float @dx.op.unary.f32(i32 21, float %5922)  ; Exp(value)
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5933 = fmul fast float %5930, %5925
  %5934 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = fmul fast float %5546, 5.000000e-01
  %5937 = fadd fast float %5936, 5.000000e-01
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = fsub fast float 1.000000e+00, %5938
  %5940 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5935)  ; FMax(a,b)
  %5941 = fdiv fast float %5939, %5940
  %5942 = fsub fast float %5925, %5503
  %5943 = call float @dx.op.unary.f32(i32 6, float %5942)  ; FAbs(value)
  %5944 = fmul fast float %5943, %5929
  %5945 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5946 = fsub fast float 1.000000e+00, %5944
  %5947 = fmul fast float %5946, %5945
  %5948 = fadd fast float %5947, %5944
  %5949 = fmul fast float %5932, %5925
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = fsub fast float 1.000000e+00, %5948
  %5952 = fmul fast float %5951, %5950
  %5953 = fadd fast float %5952, %5948
  %5954 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5955 = fadd fast float %5927, -1.000000e+00
  %5956 = select i1 %5926, float -1.000000e+00, float %5955
  %5957 = fmul fast float %5954, %5956
  %5958 = fadd fast float %5957, 1.000000e+00
  %5959 = fsub fast float -0.000000e+00, %5957
  %5960 = fmul fast float %5919, %5959
  %5961 = fmul fast float %5920, %5959
  %5962 = fmul fast float %5921, %5959
  br label %5963

; <label>:5963                                    ; preds = %5916, %5512
  %5964 = phi float [ %5917, %5916 ], [ 0.000000e+00, %5512 ]
  %5965 = phi float [ %5958, %5916 ], [ 1.000000e+00, %5512 ]
  %5966 = phi float [ %5960, %5916 ], [ 0.000000e+00, %5512 ]
  %5967 = phi float [ %5961, %5916 ], [ 0.000000e+00, %5512 ]
  %5968 = phi float [ %5962, %5916 ], [ 0.000000e+00, %5512 ]
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5971 = fsub fast float 1.000000e+00, %5965
  %5972 = fmul fast float %5971, %5547
  %5973 = fmul fast float %5972, %5970
  %5974 = fsub fast float %5547, %5973
  br i1 %5540, label %5975, label %6004, !dx.controlflow.hints !116

; <label>:5975                                    ; preds = %5963
  %5976 = fmul fast float %5548, %5537
  %5977 = fadd fast float %5976, %5538
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = fmul fast float %5519, %5974
  %5980 = fsub fast float -0.000000e+00, %5979
  %5981 = fmul fast float %5520, %5974
  %5982 = fsub fast float -0.000000e+00, %5981
  %5983 = call float @dx.op.unary.f32(i32 21, float %5980)  ; Exp(value)
  %5984 = call float @dx.op.unary.f32(i32 21, float %5982)  ; Exp(value)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5527, float %5983)  ; FMax(a,b)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5527, float %5984)  ; FMax(a,b)
  %5987 = fsub fast float %5986, %5985
  %5988 = fmul fast float %5987, %5978
  %5989 = fadd fast float %5988, %5985
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = fsub fast float %5524, %5529
  %5992 = fsub fast float %5525, %5530
  %5993 = fsub fast float %5526, %5531
  %5994 = fmul fast float %5978, %5991
  %5995 = fmul fast float %5978, %5992
  %5996 = fmul fast float %5978, %5993
  %5997 = fadd fast float %5994, %5529
  %5998 = fadd fast float %5995, %5530
  %5999 = fadd fast float %5996, %5531
  %6000 = fsub fast float 1.000000e+00, %5990
  %6001 = fmul fast float %6000, %5997
  %6002 = fmul fast float %6000, %5998
  %6003 = fmul fast float %6000, %5999
  br label %6063

; <label>:6004                                    ; preds = %5963
  %6005 = fmul fast float %5974, %5536
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = fsub fast float 2.000000e+00, %6006
  %6008 = fmul fast float %6006, 9.921875e-01
  %6009 = fmul fast float %6008, %6007
  %6010 = fadd fast float %6009, 3.906250e-03
  %6011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %6010, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = fsub fast float %6006, %6012
  %6014 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6013)  ; FMax(a,b)
  %6015 = fmul fast float %5522, %5503
  %6016 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6017 = fcmp fast ogt float %6016, 0x3EB0C6F7A0000000
  br i1 %6017, label %6018, label %6024, !dx.controlflow.hints !117

; <label>:6018                                    ; preds = %6004
  %6019 = fmul fast float %6015, 0xBFF7154760000000
  %6020 = call float @dx.op.unary.f32(i32 21, float %6019)  ; Exp(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fdiv fast float %6021, %6015
  %6023 = fmul fast float %6022, %5532
  br label %6024

; <label>:6024                                    ; preds = %6018, %6004
  %6025 = phi float [ %6023, %6018 ], [ %5532, %6004 ]
  %6026 = fadd fast float %6025, %5534
  %6027 = fmul fast float %6026, %6014
  %6028 = fmul fast float %5519, %6027
  %6029 = fsub fast float -0.000000e+00, %6028
  %6030 = fmul fast float %5520, %6027
  %6031 = fsub fast float -0.000000e+00, %6030
  %6032 = fmul fast float %5521, %6027
  %6033 = fsub fast float -0.000000e+00, %6032
  %6034 = call float @dx.op.unary.f32(i32 21, float %6029)  ; Exp(value)
  %6035 = call float @dx.op.unary.f32(i32 21, float %6031)  ; Exp(value)
  %6036 = call float @dx.op.unary.f32(i32 21, float %6033)  ; Exp(value)
  %6037 = fmul fast float %5548, %5548
  %6038 = fadd fast float %6037, 1.000000e+00
  %6039 = fmul fast float %6038, 0x3FAE8EC8A0000000
  %6040 = fmul fast float %6039, %5529
  %6041 = fmul fast float %6039, %5530
  %6042 = fmul fast float %6039, %5531
  %6043 = fmul fast float %5548, %5527
  %6044 = fsub fast float 1.000000e+00, %6043
  %6045 = fmul fast float %5527, %5527
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = fmul fast float %6046, 0x3FB45F3060000000
  %6048 = fmul fast float %6044, %6044
  %6049 = fdiv fast float 1.000000e+00, %6048
  %6050 = fmul fast float %6047, %6049
  %6051 = fmul fast float %6050, %5524
  %6052 = fmul fast float %6050, %5525
  %6053 = fmul fast float %6050, %5526
  %6054 = fadd fast float %6051, %6040
  %6055 = fadd fast float %6052, %6041
  %6056 = fadd fast float %6053, %6042
  %6057 = fsub fast float 1.000000e+00, %6034
  %6058 = fsub fast float 1.000000e+00, %6035
  %6059 = fsub fast float 1.000000e+00, %6036
  %6060 = fmul fast float %6054, %6057
  %6061 = fmul fast float %6055, %6058
  %6062 = fmul fast float %6056, %6059
  br label %6063

; <label>:6063                                    ; preds = %6024, %5975
  %6064 = phi float [ %6001, %5975 ], [ %6060, %6024 ]
  %6065 = phi float [ %6002, %5975 ], [ %6061, %6024 ]
  %6066 = phi float [ %6003, %5975 ], [ %6062, %6024 ]
  %6067 = phi float [ %5990, %5975 ], [ %6034, %6024 ]
  %6068 = phi float [ %5990, %5975 ], [ %6035, %6024 ]
  %6069 = phi float [ %5990, %5975 ], [ %6036, %6024 ]
  br i1 %5556, label %6070, label %6268, !dx.controlflow.hints !118

; <label>:6070                                    ; preds = %6063
  %6071 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %6072 = fmul fast float %6071, %5971
  %6073 = fsub fast float %5966, %6064
  %6074 = fsub fast float %5967, %6065
  %6075 = fsub fast float %5968, %6066
  %6076 = fmul fast float %6072, %6073
  %6077 = fmul fast float %6072, %6074
  %6078 = fmul fast float %6072, %6075
  %6079 = fadd fast float %6076, %6064
  %6080 = fadd fast float %6077, %6065
  %6081 = fadd fast float %6078, %6066
  %6082 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6067)  ; FMax(a,b)
  %6083 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6068)  ; FMax(a,b)
  %6084 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6069)  ; FMax(a,b)
  %6085 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5965)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %5964, float %5974)  ; FMax(a,b)
  %6087 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6086)  ; FMax(a,b)
  %6088 = fdiv fast float %5964, %6087
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fdiv fast float %5974, %6087
  %6091 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6092 = fcmp fast une float %6085, 1.000000e+00
  br i1 %6092, label %6093, label %6106, !dx.controlflow.hints !119

; <label>:6093                                    ; preds = %6070
  %6094 = call float @dx.op.unary.f32(i32 23, float %6085)  ; Log(value)
  %6095 = fmul fast float %6094, 0x3FE62E4300000000
  %6096 = fmul fast float %5966, %6095
  %6097 = fsub fast float -0.000000e+00, %6096
  %6098 = fmul fast float %5967, %6095
  %6099 = fsub fast float -0.000000e+00, %6098
  %6100 = fmul fast float %5968, %6095
  %6101 = fsub fast float -0.000000e+00, %6100
  %6102 = fsub fast float 1.000000e+00, %6085
  %6103 = fdiv fast float %6097, %6102
  %6104 = fdiv fast float %6099, %6102
  %6105 = fdiv fast float %6101, %6102
  br label %6106

; <label>:6106                                    ; preds = %6093, %6070
  %6107 = phi float [ %6103, %6093 ], [ %5966, %6070 ]
  %6108 = phi float [ %6104, %6093 ], [ %5967, %6070 ]
  %6109 = phi float [ %6105, %6093 ], [ %5968, %6070 ]
  %6110 = phi float [ %6095, %6093 ], [ 0.000000e+00, %6070 ]
  %6111 = fcmp fast une float %6082, 1.000000e+00
  br i1 %6111, label %6112, label %6119, !dx.controlflow.hints !120

; <label>:6112                                    ; preds = %6106
  %6113 = call float @dx.op.unary.f32(i32 23, float %6082)  ; Log(value)
  %6114 = fmul fast float %6113, 0x3FE62E4300000000
  %6115 = fmul fast float %6079, %6114
  %6116 = fsub fast float -0.000000e+00, %6115
  %6117 = fsub fast float 1.000000e+00, %6082
  %6118 = fdiv fast float %6116, %6117
  br label %6119

; <label>:6119                                    ; preds = %6112, %6106
  %6120 = phi float [ %6118, %6112 ], [ %6079, %6106 ]
  %6121 = phi float [ %6114, %6112 ], [ 0.000000e+00, %6106 ]
  %6122 = fcmp fast une float %6083, 1.000000e+00
  br i1 %6122, label %6123, label %6130, !dx.controlflow.hints !120

; <label>:6123                                    ; preds = %6119
  %6124 = call float @dx.op.unary.f32(i32 23, float %6083)  ; Log(value)
  %6125 = fmul fast float %6124, 0x3FE62E4300000000
  %6126 = fmul fast float %6080, %6125
  %6127 = fsub fast float -0.000000e+00, %6126
  %6128 = fsub fast float 1.000000e+00, %6083
  %6129 = fdiv fast float %6127, %6128
  br label %6130

; <label>:6130                                    ; preds = %6123, %6119
  %6131 = phi float [ %6129, %6123 ], [ %6080, %6119 ]
  %6132 = phi float [ %6125, %6123 ], [ 0.000000e+00, %6119 ]
  %6133 = fcmp fast une float %6084, 1.000000e+00
  br i1 %6133, label %6134, label %6141, !dx.controlflow.hints !120

; <label>:6134                                    ; preds = %6130
  %6135 = call float @dx.op.unary.f32(i32 23, float %6084)  ; Log(value)
  %6136 = fmul fast float %6135, 0x3FE62E4300000000
  %6137 = fmul fast float %6081, %6136
  %6138 = fsub fast float -0.000000e+00, %6137
  %6139 = fsub fast float 1.000000e+00, %6084
  %6140 = fdiv fast float %6138, %6139
  br label %6141

; <label>:6141                                    ; preds = %6134, %6130
  %6142 = phi float [ %6140, %6134 ], [ %6081, %6130 ]
  %6143 = phi float [ %6136, %6134 ], [ 0.000000e+00, %6130 ]
  %6144 = fmul fast float %6107, %6091
  %6145 = fmul fast float %6108, %6091
  %6146 = fmul fast float %6109, %6091
  %6147 = fmul fast float %6110, %6091
  %6148 = fmul fast float %6120, %6089
  %6149 = fmul fast float %6131, %6089
  %6150 = fmul fast float %6142, %6089
  %6151 = fmul fast float %6121, %6089
  %6152 = fmul fast float %6132, %6089
  %6153 = fmul fast float %6143, %6089
  %6154 = fadd fast float %6148, %6144
  %6155 = fadd fast float %6149, %6145
  %6156 = fadd fast float %6150, %6146
  %6157 = fadd fast float %6151, %6147
  %6158 = fadd fast float %6152, %6147
  %6159 = fadd fast float %6153, %6147
  %6160 = fcmp fast une float %6157, 0.000000e+00
  br i1 %6160, label %6161, label %6168, !dx.controlflow.hints !121

; <label>:6161                                    ; preds = %6141
  %6162 = fmul fast float %6157, 0x3FF7154760000000
  %6163 = call float @dx.op.unary.f32(i32 21, float %6162)  ; Exp(value)
  %6164 = fsub fast float 1.000000e+00, %6163
  %6165 = fmul fast float %6154, %6164
  %6166 = fsub fast float -0.000000e+00, %6165
  %6167 = fdiv fast float %6166, %6157
  br label %6168

; <label>:6168                                    ; preds = %6161, %6141
  %6169 = phi float [ %6163, %6161 ], [ 1.000000e+00, %6141 ]
  %6170 = phi float [ %6167, %6161 ], [ %6154, %6141 ]
  %6171 = fcmp fast une float %6158, 0.000000e+00
  br i1 %6171, label %6172, label %6179, !dx.controlflow.hints !121

; <label>:6172                                    ; preds = %6168
  %6173 = fmul fast float %6158, 0x3FF7154760000000
  %6174 = call float @dx.op.unary.f32(i32 21, float %6173)  ; Exp(value)
  %6175 = fsub fast float 1.000000e+00, %6174
  %6176 = fmul fast float %6155, %6175
  %6177 = fsub fast float -0.000000e+00, %6176
  %6178 = fdiv fast float %6177, %6158
  br label %6179

; <label>:6179                                    ; preds = %6172, %6168
  %6180 = phi float [ %6174, %6172 ], [ 1.000000e+00, %6168 ]
  %6181 = phi float [ %6178, %6172 ], [ %6155, %6168 ]
  %6182 = fcmp fast une float %6159, 0.000000e+00
  br i1 %6182, label %6183, label %6190, !dx.controlflow.hints !121

; <label>:6183                                    ; preds = %6179
  %6184 = fmul fast float %6159, 0x3FF7154760000000
  %6185 = call float @dx.op.unary.f32(i32 21, float %6184)  ; Exp(value)
  %6186 = fsub fast float 1.000000e+00, %6185
  %6187 = fmul fast float %6156, %6186
  %6188 = fsub fast float -0.000000e+00, %6187
  %6189 = fdiv fast float %6188, %6159
  br label %6190

; <label>:6190                                    ; preds = %6183, %6179
  %6191 = phi float [ %6185, %6183 ], [ 1.000000e+00, %6179 ]
  %6192 = phi float [ %6189, %6183 ], [ %6156, %6179 ]
  %6193 = fcmp fast ogt float %6089, %6091
  br i1 %6193, label %6194, label %6214

; <label>:6194                                    ; preds = %6190
  %6195 = fsub fast float 1.000000e+00, %6091
  %6196 = fmul fast float %6107, %6195
  %6197 = fmul fast float %6108, %6195
  %6198 = fmul fast float %6109, %6195
  %6199 = fmul fast float %6110, %6195
  %6200 = fcmp fast une float %6199, 0.000000e+00
  br i1 %6200, label %6201, label %6252, !dx.controlflow.hints !122

; <label>:6201                                    ; preds = %6194
  %6202 = fmul fast float %6199, 0x3FF7154760000000
  %6203 = call float @dx.op.unary.f32(i32 21, float %6202)  ; Exp(value)
  %6204 = fsub fast float 1.000000e+00, %6203
  %6205 = fmul fast float %6196, %6204
  %6206 = fsub fast float -0.000000e+00, %6205
  %6207 = fmul fast float %6197, %6204
  %6208 = fsub fast float -0.000000e+00, %6207
  %6209 = fmul fast float %6198, %6204
  %6210 = fsub fast float -0.000000e+00, %6209
  %6211 = fdiv fast float %6206, %6199
  %6212 = fdiv fast float %6208, %6199
  %6213 = fdiv fast float %6210, %6199
  br label %6252

; <label>:6214                                    ; preds = %6190
  %6215 = fsub fast float 1.000000e+00, %6089
  %6216 = fmul fast float %6120, %6215
  %6217 = fmul fast float %6131, %6215
  %6218 = fmul fast float %6142, %6215
  %6219 = fmul fast float %6121, %6215
  %6220 = fmul fast float %6132, %6215
  %6221 = fmul fast float %6143, %6215
  %6222 = fcmp fast une float %6219, 0.000000e+00
  br i1 %6222, label %6223, label %6230, !dx.controlflow.hints !121

; <label>:6223                                    ; preds = %6214
  %6224 = fmul fast float %6219, 0x3FF7154760000000
  %6225 = call float @dx.op.unary.f32(i32 21, float %6224)  ; Exp(value)
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = fmul fast float %6216, %6226
  %6228 = fsub fast float -0.000000e+00, %6227
  %6229 = fdiv fast float %6228, %6219
  br label %6230

; <label>:6230                                    ; preds = %6223, %6214
  %6231 = phi float [ %6229, %6223 ], [ %6216, %6214 ]
  %6232 = phi float [ %6225, %6223 ], [ 1.000000e+00, %6214 ]
  %6233 = fcmp fast une float %6220, 0.000000e+00
  br i1 %6233, label %6234, label %6241, !dx.controlflow.hints !121

; <label>:6234                                    ; preds = %6230
  %6235 = fmul fast float %6220, 0x3FF7154760000000
  %6236 = call float @dx.op.unary.f32(i32 21, float %6235)  ; Exp(value)
  %6237 = fsub fast float 1.000000e+00, %6236
  %6238 = fmul fast float %6217, %6237
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = fdiv fast float %6239, %6220
  br label %6241

; <label>:6241                                    ; preds = %6234, %6230
  %6242 = phi float [ %6240, %6234 ], [ %6217, %6230 ]
  %6243 = phi float [ %6236, %6234 ], [ 1.000000e+00, %6230 ]
  %6244 = fcmp fast une float %6221, 0.000000e+00
  br i1 %6244, label %6245, label %6252, !dx.controlflow.hints !121

; <label>:6245                                    ; preds = %6241
  %6246 = fmul fast float %6221, 0x3FF7154760000000
  %6247 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6248 = fsub fast float 1.000000e+00, %6247
  %6249 = fmul fast float %6218, %6248
  %6250 = fsub fast float -0.000000e+00, %6249
  %6251 = fdiv fast float %6250, %6221
  br label %6252

; <label>:6252                                    ; preds = %6245, %6241, %6201, %6194
  %6253 = phi float [ %6251, %6245 ], [ %6213, %6201 ], [ %6198, %6194 ], [ %6218, %6241 ]
  %6254 = phi float [ %6242, %6245 ], [ %6212, %6201 ], [ %6197, %6194 ], [ %6242, %6241 ]
  %6255 = phi float [ %6231, %6245 ], [ %6211, %6201 ], [ %6196, %6194 ], [ %6231, %6241 ]
  %6256 = phi float [ %6247, %6245 ], [ %6203, %6201 ], [ 1.000000e+00, %6194 ], [ 1.000000e+00, %6241 ]
  %6257 = phi float [ %6243, %6245 ], [ %6203, %6201 ], [ 1.000000e+00, %6194 ], [ %6243, %6241 ]
  %6258 = phi float [ %6232, %6245 ], [ %6203, %6201 ], [ 1.000000e+00, %6194 ], [ %6232, %6241 ]
  %6259 = fmul fast float %6258, %6170
  %6260 = fmul fast float %6257, %6181
  %6261 = fmul fast float %6256, %6192
  %6262 = fadd fast float %6259, %6255
  %6263 = fadd fast float %6260, %6254
  %6264 = fadd fast float %6261, %6253
  %6265 = fmul fast float %6258, %6169
  %6266 = fmul fast float %6257, %6180
  %6267 = fmul fast float %6256, %6191
  br label %6268

; <label>:6268                                    ; preds = %6252, %6063
  %6269 = phi float [ %6267, %6252 ], [ %6069, %6063 ]
  %6270 = phi float [ %6266, %6252 ], [ %6068, %6063 ]
  %6271 = phi float [ %6265, %6252 ], [ %6067, %6063 ]
  %6272 = phi float [ %6264, %6252 ], [ %6066, %6063 ]
  %6273 = phi float [ %6263, %6252 ], [ %6065, %6063 ]
  %6274 = phi float [ %6262, %6252 ], [ %6064, %6063 ]
  %6275 = fmul fast float %6274, %5216
  %6276 = fmul fast float %6273, %5216
  %6277 = fmul fast float %6272, %5216
  %6278 = fmul fast float %6271, %5511
  %6279 = call float @dx.op.dot3.f32(i32 55, float %6271, float %6270, float %6269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6280 = call float @dx.op.dot3.f32(i32 55, float %6275, float %6276, float %6277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6281 = select i1 %198, float %6279, float %6271
  %6282 = select i1 %198, float %6279, float %6270
  %6283 = select i1 %198, float 1.000000e+00, float %6269
  %6284 = select i1 %198, float %6280, float %6275
  %6285 = select i1 %198, float 0.000000e+00, float %6276
  %6286 = select i1 %198, float 0.000000e+00, float %6277
  %6287 = fmul fast float %6281, %5505
  %6288 = fmul fast float %6282, %5506
  %6289 = fmul fast float %6283, %5507
  %6290 = fadd fast float %6287, %6284
  %6291 = fadd fast float %6288, %6285
  %6292 = fadd fast float %6286, %6289
  %6293 = fmul fast float %6281, %5508
  %6294 = fmul fast float %6282, %5509
  %6295 = fmul fast float %6283, %5510
  %6296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.i32 %6296, 0
  %6298 = icmp eq i32 %6297, 0
  br i1 %6298, label %6666, label %6299, !dx.controlflow.hints !123

; <label>:6299                                    ; preds = %6268
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 3
  %6303 = fmul fast float %6301, %74
  %6304 = fmul fast float %6302, %75
  %6305 = fmul fast float %6303, 2.000000e+00
  %6306 = fmul fast float %6304, 2.000000e+00
  %6307 = fsub fast float 1.000000e+00, %6305
  %6308 = fsub fast float 1.000000e+00, %6306
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6313 = fmul fast float %6307, %6310
  %6314 = fmul fast float %6307, %6311
  %6315 = fmul fast float %6307, %6312
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = fmul fast float %6308, %6317
  %6321 = fmul fast float %6308, %6318
  %6322 = fmul fast float %6308, %6319
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6323, 2
  %6327 = fadd fast float %6320, %6324
  %6328 = fadd fast float %6327, %6313
  %6329 = fadd fast float %6321, %6325
  %6330 = fadd fast float %6329, %6314
  %6331 = fadd fast float %6322, %6326
  %6332 = fadd fast float %6331, %6315
  %6333 = fmul fast float %6328, %5504
  %6334 = fmul fast float %6330, %5504
  %6335 = fmul fast float %6332, %5504
  %6336 = fmul fast float %6333, %6333
  %6337 = fmul fast float %6334, %6334
  %6338 = fadd fast float %6336, %6337
  %6339 = fmul fast float %6335, %6335
  %6340 = fadd fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 24, float %6340)  ; Sqrt(value)
  %6342 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %6343 = fsub fast float %6341, %6342
  %6344 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %6345 = fmul fast float %6343, %6344
  %6346 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6347 = fadd fast float %6346, -5.000000e-01
  %6348 = fmul fast float %6347, 2.000000e+00
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6351 = call float @dx.op.binary.f32(i32 36, float %6350, float %6348)  ; FMin(a,b)
  %6352 = fsub fast float -0.000000e+00, %6350
  %6353 = fcmp fast ogt float %6351, %6352
  br i1 %6353, label %6354, label %6666, !dx.controlflow.hints !124

; <label>:6354                                    ; preds = %6299
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6357 = fcmp fast ogt float %6356, 0.000000e+00
  br i1 %6357, label %6358, label %6433, !dx.controlflow.hints !125

; <label>:6358                                    ; preds = %6354
  %6359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %15, i32 0)  ; GetDimensions(handle,mipLevel)
  %6360 = extractvalue %dx.types.Dimensions %6359, 0
  %6361 = sitofp i32 %6360 to float
  %6362 = extractvalue %dx.types.Dimensions %6359, 1
  %6363 = sitofp i32 %6362 to float
  %6364 = fmul fast float %6303, %6361
  %6365 = fmul fast float %6304, %6363
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6368 = fsub fast float -0.000000e+00, %6367
  %6369 = fptoui float %6368 to i32
  %6370 = fptoui float %6364 to i32
  %6371 = fptoui float %6365 to i32
  %6372 = and i32 %6369, 31
  %6373 = lshr i32 %6370, %6372
  %6374 = lshr i32 %6371, %6372
  %6375 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 %6369, i32 %6373, i32 %6374, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = fcmp fast olt float %6376, -1.000000e+00
  %6378 = fcmp fast ogt float %6376, -1.000000e+00
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 1
  %6381 = select i1 %6378, float %6380, float 1.000000e+00
  %6382 = fadd fast float %6376, 1.000000e+00
  %6383 = fmul fast float %6381, %6382
  %6384 = call float @dx.op.unary.f32(i32 6, float %6383)  ; FAbs(value)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6379, 3
  %6386 = fcmp fast oge float %6384, %6385
  %6387 = select i1 %6386, float 0x4197782600000000, float %6384
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6392 = select i1 %6377, float %6389, float %6310
  %6393 = select i1 %6377, float %6390, float %6311
  %6394 = select i1 %6377, float %6391, float %6312
  %6395 = fmul fast float %6392, %6307
  %6396 = fmul fast float %6393, %6307
  %6397 = fmul fast float %6394, %6307
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = select i1 %6377, float %6399, float %6317
  %6403 = select i1 %6377, float %6400, float %6318
  %6404 = select i1 %6377, float %6401, float %6319
  %6405 = fmul fast float %6402, %6308
  %6406 = fmul fast float %6403, %6308
  %6407 = fmul fast float %6404, %6308
  %6408 = fadd fast float %6405, %6395
  %6409 = fadd fast float %6406, %6396
  %6410 = fadd fast float %6407, %6397
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6415 = select i1 %6377, float %6412, float %6324
  %6416 = select i1 %6377, float %6413, float %6325
  %6417 = select i1 %6377, float %6414, float %6326
  %6418 = fadd fast float %6408, %6415
  %6419 = fadd fast float %6409, %6416
  %6420 = fadd fast float %6410, %6417
  %6421 = fmul fast float %6418, %6387
  %6422 = fmul fast float %6419, %6387
  %6423 = fmul fast float %6420, %6387
  %6424 = fmul fast float %6421, %6421
  %6425 = fmul fast float %6422, %6422
  %6426 = fadd fast float %6424, %6425
  %6427 = fmul fast float %6423, %6423
  %6428 = fadd fast float %6426, %6427
  %6429 = call float @dx.op.unary.f32(i32 24, float %6428)  ; Sqrt(value)
  %6430 = fsub fast float %6429, %6342
  %6431 = fmul fast float %6430, %6344
  %6432 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  br label %6433

; <label>:6433                                    ; preds = %6358, %6354
  %6434 = phi float [ %6432, %6358 ], [ 1.000000e+00, %6354 ]
  %6435 = fmul fast float %6351, 5.000000e-01
  %6436 = fadd fast float %6435, 5.000000e-01
  %6437 = call float @dx.op.unary.f32(i32 22, float %6436)  ; Frc(value)
  %6438 = call float @dx.op.unary.f32(i32 27, float %6437)  ; Round_ni(value)
  %6439 = call float @dx.op.unary.f32(i32 22, float %6437)  ; Frc(value)
  %6440 = fmul fast float %6439, 2.000000e+00
  %6441 = fadd fast float %6440, -1.000000e+00
  %6442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %6303, float %6304, float %6438, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.ResRet.f32 %6442, 3
  %6447 = fadd fast float %6443, -5.000000e-01
  %6448 = fadd fast float %6445, -5.000000e-01
  %6449 = fmul fast float %6447, 0xBFD5555560000000
  %6450 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6448, float %6449)  ; FMad(a,b,c)
  %6451 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6444, float 0.000000e+00)  ; FMad(a,b,c)
  %6452 = fadd fast float %6451, %6446
  %6453 = fmul fast float %6447, -7.500000e-01
  %6454 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6448, float %6453)  ; FMad(a,b,c)
  %6455 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6444, float 0.000000e+00)  ; FMad(a,b,c)
  %6456 = fadd fast float %6455, %6446
  %6457 = call float @dx.op.binary.f32(i32 35, float %6450, float -1.000000e+00)  ; FMax(a,b)
  %6458 = call float @dx.op.binary.f32(i32 35, float %6452, float -1.000000e+00)  ; FMax(a,b)
  %6459 = call float @dx.op.binary.f32(i32 35, float %6454, float -1.000000e+00)  ; FMax(a,b)
  %6460 = call float @dx.op.binary.f32(i32 35, float %6456, float -1.000000e+00)  ; FMax(a,b)
  %6461 = call float @dx.op.binary.f32(i32 36, float %6457, float 1.000000e+00)  ; FMin(a,b)
  %6462 = call float @dx.op.binary.f32(i32 36, float %6458, float 1.000000e+00)  ; FMin(a,b)
  %6463 = call float @dx.op.binary.f32(i32 36, float %6459, float 1.000000e+00)  ; FMin(a,b)
  %6464 = call float @dx.op.binary.f32(i32 36, float %6460, float 1.000000e+00)  ; FMin(a,b)
  %6465 = fcmp fast olt float %6461, 0x3FEFFF8020000000
  br i1 %6465, label %6466, label %6581, !dx.controlflow.hints !126

; <label>:6466                                    ; preds = %6433
  %6467 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6471 = extractvalue %dx.types.CBufRet.f32 %6468, 2
  %6472 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6473 = fsub fast float %6469, %6461
  %6474 = fsub fast float %6470, %6462
  %6475 = fsub fast float %6471, %6463
  %6476 = fsub fast float %6472, %6464
  %6477 = fmul fast float %6473, %6467
  %6478 = fmul fast float %6474, %6467
  %6479 = fmul fast float %6475, %6467
  %6480 = fmul fast float %6476, %6467
  %6481 = fadd fast float %6477, %6461
  %6482 = fadd fast float %6478, %6462
  %6483 = fsub fast float -0.000000e+00, %6482
  %6484 = fadd fast float %6479, %6463
  %6485 = fadd fast float %6480, %6464
  %6486 = fmul fast float %6481, %6481
  %6487 = fsub fast float %6482, %6486
  %6488 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6487)  ; FMax(a,b)
  %6489 = fdiv fast float 1.000000e+00, %6488
  %6490 = fmul fast float %6482, %6481
  %6491 = fsub fast float %6484, %6490
  %6492 = fsub fast float %6441, %6481
  %6493 = fmul fast float %6441, %6441
  %6494 = fsub fast float %6493, %6482
  %6495 = fmul fast float %6492, %6489
  %6496 = fmul fast float %6495, %6491
  %6497 = fsub fast float %6494, %6496
  %6498 = fmul fast float %6482, %6482
  %6499 = fsub fast float %6485, %6498
  %6500 = fmul fast float %6491, %6491
  %6501 = fmul fast float %6500, %6489
  %6502 = fsub fast float %6499, %6501
  %6503 = fdiv fast float %6497, %6502
  %6504 = fmul fast float %6491, %6503
  %6505 = fsub fast float %6492, %6504
  %6506 = fmul fast float %6505, %6489
  %6507 = fmul fast float %6506, %6481
  %6508 = fsub fast float 1.000000e+00, %6507
  %6509 = fmul fast float %6482, %6503
  %6510 = fsub fast float %6508, %6509
  %6511 = fmul fast float %6506, %6506
  %6512 = fmul fast float %6503, 4.000000e+00
  %6513 = fmul fast float %6512, %6510
  %6514 = fsub fast float %6511, %6513
  %6515 = call float @dx.op.unary.f32(i32 24, float %6514)  ; Sqrt(value)
  %6516 = fcmp fast oge float %6506, 0.000000e+00
  %6517 = fsub fast float -0.000000e+00, %6515
  %6518 = select i1 %6516, float %6517, float %6515
  %6519 = fsub fast float %6518, %6506
  %6520 = fdiv fast float %6519, %6503
  %6521 = fdiv fast float %6510, %6519
  %6522 = fmul fast float %6520, 5.000000e-01
  %6523 = fmul fast float %6521, 2.000000e+00
  %6524 = select i1 %6516, float %6522, float %6523
  %6525 = select i1 %6516, float %6523, float %6522
  %6526 = call float @dx.op.binary.f32(i32 35, float %6524, float %6525)  ; FMax(a,b)
  %6527 = call float @dx.op.binary.f32(i32 36, float %6524, float %6525)  ; FMin(a,b)
  %6528 = fcmp fast ogt float %6441, %6527
  br i1 %6528, label %6529, label %6539

; <label>:6529                                    ; preds = %6466
  %6530 = fsub fast float %6441, %6527
  %6531 = fsub fast float %6526, %6527
  %6532 = fmul fast float %6530, %6531
  %6533 = fmul fast float %6526, %6441
  %6534 = fadd fast float %6526, %6441
  %6535 = fmul fast float %6534, %6481
  %6536 = fadd fast float %6533, %6482
  %6537 = fsub fast float %6536, %6535
  %6538 = fdiv fast float %6537, %6532
  br label %6539

; <label>:6539                                    ; preds = %6529, %6466
  %6540 = phi float [ %6538, %6529 ], [ 0.000000e+00, %6466 ]
  %6541 = fcmp fast ogt float %6441, %6526
  %6542 = fsub fast float %6441, %6526
  br i1 %6541, label %6543, label %6553

; <label>:6543                                    ; preds = %6539
  %6544 = fsub fast float %6526, %6527
  %6545 = fmul fast float %6544, %6542
  %6546 = fmul fast float %6527, %6441
  %6547 = fadd fast float %6527, %6441
  %6548 = fmul fast float %6547, %6481
  %6549 = fsub fast float %6483, %6546
  %6550 = fadd fast float %6549, %6548
  %6551 = fdiv fast float %6550, %6545
  %6552 = fadd fast float %6551, %6540
  br label %6553

; <label>:6553                                    ; preds = %6543, %6539
  %6554 = phi float [ %6552, %6543 ], [ %6540, %6539 ]
  %6555 = fsub fast float %6441, %6527
  %6556 = fmul fast float %6555, %6542
  %6557 = fmul fast float %6527, %6526
  %6558 = fadd fast float %6527, %6526
  %6559 = fmul fast float %6558, %6481
  %6560 = fadd fast float %6557, %6482
  %6561 = fsub fast float %6560, %6559
  %6562 = fdiv fast float %6561, %6556
  %6563 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6564 = fcmp fast oeq float %5228, 0.000000e+00
  %6565 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6566 = fcmp fast oeq float %6565, 0.000000e+00
  %6567 = or i1 %6564, %6566
  %6568 = fmul fast float %6565, 2.000000e+00
  %6569 = fadd fast float %6350, %6351
  %6570 = fdiv fast float %6569, %6568
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fmul fast float %6571, 2.000000e+00
  %6573 = fsub fast float 3.000000e+00, %6572
  %6574 = fmul fast float %6571, %6571
  %6575 = fmul fast float %6574, %6573
  %6576 = select i1 %6567, float 1.000000e+00, float %6575
  %6577 = fmul fast float %6562, %5228
  %6578 = fadd fast float %6563, %6577
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fmul fast float %6576, %6579
  br label %6581

; <label>:6581                                    ; preds = %6553, %6433
  %6582 = phi float [ %6580, %6553 ], [ 0.000000e+00, %6433 ]
  %6583 = fsub fast float 1.000000e+00, %6582
  %6584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %6303, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6585 = extractvalue %dx.types.ResRet.f32 %6584, 0
  %6586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.i32 %6586, 2
  %6588 = icmp eq i32 %6587, 0
  br i1 %6588, label %6594, label %6589

; <label>:6589                                    ; preds = %6581
  %6590 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6591 = fadd fast float %6585, -1.000000e+00
  %6592 = fmul fast float %6590, %6591
  %6593 = fadd fast float %6592, 1.000000e+00
  br label %6594

; <label>:6594                                    ; preds = %6589, %6581
  %6595 = phi float [ %6593, %6589 ], [ %6583, %6581 ]
  br i1 %6357, label %6596, label %6614

; <label>:6596                                    ; preds = %6594
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6599 = fsub fast float %6434, %6598
  %6600 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6601 = fsub fast float %6434, %6356
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = fsub fast float %6600, %6602
  %6604 = fsub fast float %6436, %6602
  %6605 = fdiv fast float %6604, %6603
  %6606 = call float @dx.op.unary.f32(i32 7, float %6605)  ; Saturate(value)
  %6607 = fmul fast float %6606, 2.000000e+00
  %6608 = fsub fast float 3.000000e+00, %6607
  %6609 = fsub fast float %6585, %6595
  %6610 = fmul fast float %6606, %6606
  %6611 = fmul fast float %6610, %6609
  %6612 = fmul fast float %6611, %6608
  %6613 = fadd fast float %6612, %6595
  br label %6614

; <label>:6614                                    ; preds = %6596, %6594
  %6615 = phi float [ %6613, %6596 ], [ %6595, %6594 ]
  %6616 = call float @dx.op.binary.f32(i32 35, float %6585, float %6615)  ; FMax(a,b)
  %6617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.i32 %6617, 2
  %6619 = and i32 %6618, 1
  %6620 = icmp eq i32 %6619, 0
  %6621 = fcmp fast une float %6616, 1.000000e+00
  %6622 = and i1 %6621, %6620
  br i1 %6622, label %6623, label %6642

; <label>:6623                                    ; preds = %6614
  %6624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %6303, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.ResRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.ResRet.f32 %6624, 2
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6630 = fmul fast float %6629, %6625
  %6631 = fmul fast float %6629, %6626
  %6632 = fmul fast float %6629, %6627
  %6633 = fcmp fast ogt float %6585, 0x3FEFFF2E40000000
  %6634 = fsub fast float 1.000000e+00, %6616
  %6635 = fsub fast float 1.000000e+00, %6585
  %6636 = fdiv fast float %6634, %6635
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6638 = select i1 %6633, float 0.000000e+00, float %6637
  %6639 = fmul fast float %6630, %6638
  %6640 = fmul fast float %6631, %6638
  %6641 = fmul fast float %6632, %6638
  br label %6642

; <label>:6642                                    ; preds = %6623, %6614
  %6643 = phi float [ 0.000000e+00, %6614 ], [ %6639, %6623 ]
  %6644 = phi float [ 0.000000e+00, %6614 ], [ %6640, %6623 ]
  %6645 = phi float [ 0.000000e+00, %6614 ], [ %6641, %6623 ]
  %6646 = fmul fast float %6643, %5216
  %6647 = fmul fast float %6644, %5216
  %6648 = fmul fast float %6645, %5216
  %6649 = fmul fast float %6616, %6278
  %6650 = call float @dx.op.dot3.f32(i32 55, float %6616, float %6616, float %6616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.dot3.f32(i32 55, float %6646, float %6647, float %6648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6652 = select i1 %198, float %6650, float %6616
  %6653 = select i1 %198, float 1.000000e+00, float %6616
  %6654 = select i1 %198, float %6651, float %6646
  %6655 = select i1 %198, float 0.000000e+00, float %6647
  %6656 = select i1 %198, float 0.000000e+00, float %6648
  %6657 = fmul fast float %6652, %6290
  %6658 = fmul fast float %6652, %6291
  %6659 = fmul fast float %6653, %6292
  %6660 = fadd fast float %6657, %6654
  %6661 = fadd fast float %6658, %6655
  %6662 = fadd fast float %6656, %6659
  %6663 = fmul fast float %6652, %6293
  %6664 = fmul fast float %6652, %6294
  %6665 = fmul fast float %6653, %6295
  br label %6666

; <label>:6666                                    ; preds = %6642, %6299, %6268, %5500
  %6667 = phi float [ %5505, %5500 ], [ %6290, %6268 ], [ %6660, %6642 ], [ %6290, %6299 ]
  %6668 = phi float [ %5506, %5500 ], [ %6291, %6268 ], [ %6661, %6642 ], [ %6291, %6299 ]
  %6669 = phi float [ %5507, %5500 ], [ %6292, %6268 ], [ %6662, %6642 ], [ %6292, %6299 ]
  %6670 = phi float [ %5508, %5500 ], [ %6293, %6268 ], [ %6663, %6642 ], [ %6293, %6299 ]
  %6671 = phi float [ %5509, %5500 ], [ %6294, %6268 ], [ %6664, %6642 ], [ %6294, %6299 ]
  %6672 = phi float [ %5510, %5500 ], [ %6295, %6268 ], [ %6665, %6642 ], [ %6295, %6299 ]
  %6673 = phi float [ %5511, %5500 ], [ %6278, %6268 ], [ %6649, %6642 ], [ %6278, %6299 ]
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 2
  %6676 = extractvalue %dx.types.CBufRet.f32 %6674, 3
  %6677 = fmul fast float %6675, %74
  %6678 = fmul fast float %6676, %75
  %6679 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6680 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6681 = select i1 %5242, i32 2, i32 0
  %6682 = or i32 %6681, 1
  %6683 = uitofp i32 %6682 to float
  %6684 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %6679, float %6680, float %6683, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.ResRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.ResRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.ResRet.f32 %6684, 3
  %6689 = add nuw nsw i32 %6681, 2
  %6690 = uitofp i32 %6689 to float
  %6691 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %6679, float %6680, float %6690, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6692 = extractvalue %dx.types.ResRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.ResRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.ResRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.ResRet.f32 %6691, 3
  %6696 = call float @dx.op.binary.f32(i32 35, float %6686, float %6687)  ; FMax(a,b)
  %6697 = call float @dx.op.binary.f32(i32 35, float %6685, float %6696)  ; FMax(a,b)
  %6698 = call float @dx.op.binary.f32(i32 35, float %6697, float %6688)  ; FMax(a,b)
  %6699 = call float @dx.op.binary.f32(i32 36, float %6693, float %6694)  ; FMin(a,b)
  %6700 = call float @dx.op.binary.f32(i32 36, float %6692, float %6699)  ; FMin(a,b)
  %6701 = call float @dx.op.binary.f32(i32 36, float %6700, float %6695)  ; FMin(a,b)
  %6702 = fmul fast float %6698, 2.550000e+02
  %6703 = fadd fast float %6702, 0x3F70101020000000
  %6704 = fptoui float %6703 to i32
  %6705 = fmul fast float %6701, 2.550000e+02
  %6706 = fadd fast float %6705, 0x3F70101020000000
  %6707 = fptoui float %6706 to i32
  %6708 = icmp ult i32 %6704, %6707
  br i1 %6708, label %6709, label %6878

; <label>:6709                                    ; preds = %6666
  %6710 = fcmp fast ogt float %66, 9.843750e-01
  %6711 = fadd fast float %5504, -4.000000e+00
  %6712 = select i1 %6710, float -4.000000e+00, float %6711
  %6713 = call float @dx.op.binary.f32(i32 35, float %6712, float 0.000000e+00)  ; FMax(a,b)
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = fadd fast float %6715, %6713
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = fmul fast float %6716, %6717
  %6719 = call float @dx.op.unary.f32(i32 23, float %6718)  ; Log(value)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6721 = fmul fast float %6720, %6719
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6724 = fmul fast float %6721, %6723
  %6725 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  %6726 = uitofp i32 %6704 to float
  %6727 = uitofp i32 %6707 to float
  %6728 = fadd fast float %6726, 5.000000e-01
  %6729 = fadd fast float %6727, 5.000000e-01
  %6730 = fmul fast float %6723, %6728
  %6731 = fmul fast float %6723, %6729
  %6732 = fadd fast float %6730, 0x3F0FFB4800000000
  %6733 = fadd fast float %6731, 0xBF0FFB4800000000
  %6734 = call float @dx.op.binary.f32(i32 35, float %6725, float %6732)  ; FMax(a,b)
  %6735 = call float @dx.op.binary.f32(i32 36, float %6734, float %6733)  ; FMin(a,b)
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6739 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6740 = select i1 %5242, float %6739, float 0.000000e+00
  %6741 = fmul fast float %6737, %6735
  %6742 = fadd fast float %6740, %6741
  %6743 = fadd fast float %6740, %6738
  %6744 = fsub fast float %6737, %6738
  %6745 = fadd fast float %6744, %6740
  %6746 = call float @dx.op.binary.f32(i32 35, float %6742, float %6743)  ; FMax(a,b)
  %6747 = call float @dx.op.binary.f32(i32 36, float %6746, float %6745)  ; FMin(a,b)
  %6748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %6679, float %6680, float %6747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6749 = extractvalue %dx.types.ResRet.f32 %6748, 0
  %6750 = extractvalue %dx.types.ResRet.f32 %6748, 1
  %6751 = extractvalue %dx.types.ResRet.f32 %6748, 2
  %6752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.i32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.i32 %6752, 1
  %6755 = uitofp i32 %6753 to float
  %6756 = uitofp i32 %6754 to float
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6757, 1
  %6760 = fmul fast float %6755, %6679
  %6761 = fmul fast float %6756, %6680
  %6762 = fadd fast float %6760, -5.000000e-01
  %6763 = fadd fast float %6761, -5.000000e-01
  %6764 = call float @dx.op.unary.f32(i32 22, float %6762)  ; Frc(value)
  %6765 = call float @dx.op.unary.f32(i32 22, float %6763)  ; Frc(value)
  %6766 = fmul fast float %6764, %6764
  %6767 = fmul fast float %6766, %6764
  %6768 = fsub fast float 3.000000e+00, %6764
  %6769 = fmul fast float %6766, %6768
  %6770 = fmul fast float %6764, 3.000000e+00
  %6771 = fmul fast float %6767, 3.000000e+00
  %6772 = fmul fast float %6766, 6.000000e+00
  %6773 = fsub fast float %6771, %6772
  %6774 = fadd fast float %6773, 4.000000e+00
  %6775 = fmul fast float %6774, 0x3FC5555560000000
  %6776 = fmul fast float %6767, -3.000000e+00
  %6777 = fadd fast float %6766, %6764
  %6778 = fmul fast float %6777, 3.000000e+00
  %6779 = fadd fast float %6776, 1.000000e+00
  %6780 = fadd fast float %6779, %6778
  %6781 = fmul fast float %6767, 0x3FC5555560000000
  %6782 = fmul fast float %6765, %6765
  %6783 = fmul fast float %6782, %6765
  %6784 = fsub fast float 3.000000e+00, %6765
  %6785 = fmul fast float %6782, %6784
  %6786 = fmul fast float %6765, 3.000000e+00
  %6787 = fmul fast float %6783, 3.000000e+00
  %6788 = fmul fast float %6782, 6.000000e+00
  %6789 = fsub fast float %6787, %6788
  %6790 = fadd fast float %6789, 4.000000e+00
  %6791 = fmul fast float %6790, 0x3FC5555560000000
  %6792 = fmul fast float %6783, -3.000000e+00
  %6793 = fadd fast float %6782, %6765
  %6794 = fmul fast float %6793, 3.000000e+00
  %6795 = fadd fast float %6792, 1.000000e+00
  %6796 = fadd fast float %6795, %6794
  %6797 = fmul fast float %6783, 0x3FC5555560000000
  %6798 = fadd fast float %6764, 1.000000e+00
  %6799 = fsub fast float 1.000000e+00, %6770
  %6800 = fadd fast float %6799, %6769
  %6801 = fadd fast float %6800, %6774
  %6802 = fmul fast float %6801, 0x3FC5555560000000
  %6803 = fdiv fast float %6775, %6802
  %6804 = fsub fast float %6798, %6803
  %6805 = fsub fast float 1.000000e+00, %6764
  %6806 = fadd fast float %6780, %6767
  %6807 = fmul fast float %6806, 0x3FC5555560000000
  %6808 = fdiv fast float %6781, %6807
  %6809 = fadd fast float %6805, %6808
  %6810 = fadd fast float %6765, 1.000000e+00
  %6811 = fsub fast float 1.000000e+00, %6786
  %6812 = fadd fast float %6811, %6785
  %6813 = fadd fast float %6812, %6790
  %6814 = fmul fast float %6813, 0x3FC5555560000000
  %6815 = fdiv fast float %6791, %6814
  %6816 = fsub fast float %6810, %6815
  %6817 = fsub fast float 1.000000e+00, %6765
  %6818 = fadd fast float %6796, %6783
  %6819 = fmul fast float %6818, 0x3FC5555560000000
  %6820 = fdiv fast float %6797, %6819
  %6821 = fadd fast float %6820, %6817
  %6822 = fmul fast float %6804, %6758
  %6823 = fsub fast float %6679, %6822
  %6824 = fmul fast float %6809, %6758
  %6825 = fadd fast float %6824, %6679
  %6826 = fmul fast float %6821, %6759
  %6827 = fadd fast float %6826, %6680
  %6828 = fmul fast float %6816, %6759
  %6829 = fsub fast float %6680, %6828
  %6830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %6823, float %6829, float %6747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.ResRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.ResRet.f32 %6830, 2
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %6825, float %6829, float %6747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.ResRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.ResRet.f32 %6834, 2
  %6838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %6823, float %6827, float %6747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.ResRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.ResRet.f32 %6838, 2
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %6825, float %6827, float %6747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6846 = fsub fast float %6839, %6831
  %6847 = fsub fast float %6840, %6832
  %6848 = fsub fast float %6841, %6833
  %6849 = fmul fast float %6846, %6819
  %6850 = fmul fast float %6847, %6819
  %6851 = fmul fast float %6848, %6819
  %6852 = fadd fast float %6849, %6831
  %6853 = fadd fast float %6850, %6832
  %6854 = fadd fast float %6851, %6833
  %6855 = fsub fast float %6843, %6835
  %6856 = fsub fast float %6844, %6836
  %6857 = fsub fast float %6845, %6837
  %6858 = fmul fast float %6855, %6819
  %6859 = fmul fast float %6856, %6819
  %6860 = fmul fast float %6857, %6819
  %6861 = fsub fast float %6835, %6852
  %6862 = fadd fast float %6861, %6858
  %6863 = fsub fast float %6836, %6853
  %6864 = fadd fast float %6863, %6859
  %6865 = fsub fast float %6837, %6854
  %6866 = fadd fast float %6865, %6860
  %6867 = fmul fast float %6862, %6807
  %6868 = fmul fast float %6864, %6807
  %6869 = fmul fast float %6866, %6807
  %6870 = fadd fast float %6867, %6852
  %6871 = fadd fast float %6868, %6853
  %6872 = fadd fast float %6869, %6854
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6875 = fmul fast float %6870, %6874
  %6876 = fmul fast float %6871, %6874
  %6877 = fmul fast float %6872, %6874
  br label %6878

; <label>:6878                                    ; preds = %6709, %6666
  %6879 = phi float [ %6749, %6709 ], [ 1.000000e+00, %6666 ]
  %6880 = phi float [ %6750, %6709 ], [ 1.000000e+00, %6666 ]
  %6881 = phi float [ %6751, %6709 ], [ 1.000000e+00, %6666 ]
  %6882 = phi float [ %6875, %6709 ], [ 0.000000e+00, %6666 ]
  %6883 = phi float [ %6876, %6709 ], [ 0.000000e+00, %6666 ]
  %6884 = phi float [ %6877, %6709 ], [ 0.000000e+00, %6666 ]
  %6885 = fmul fast float %6882, %5216
  %6886 = fmul fast float %6883, %5216
  %6887 = fmul fast float %6884, %5216
  %6888 = fmul fast float %6879, %6673
  %6889 = call float @dx.op.dot3.f32(i32 55, float %6879, float %6880, float %6881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6890 = call float @dx.op.dot3.f32(i32 55, float %6885, float %6886, float %6887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6891 = select i1 %198, float %6889, float %6879
  %6892 = select i1 %198, float %6889, float %6880
  %6893 = select i1 %198, float 1.000000e+00, float %6881
  %6894 = select i1 %198, float %6890, float %6885
  %6895 = select i1 %198, float 0.000000e+00, float %6886
  %6896 = select i1 %198, float 0.000000e+00, float %6887
  %6897 = and i32 %4250, 3
  %6898 = icmp ne i32 %6897, 0
  %6899 = and i32 %4250, 4
  %6900 = icmp ne i32 %6899, 0
  %6901 = and i1 %6898, %6900
  %6902 = and i1 %198, %6901
  br i1 %6902, label %6903, label %6909

; <label>:6903                                    ; preds = %6878
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6906 = fadd fast float %6888, -1.000000e+00
  %6907 = fmul fast float %6905, %6906
  %6908 = fadd fast float %6907, 1.000000e+00
  br label %6909

; <label>:6909                                    ; preds = %6903, %6878
  %6910 = phi float [ %6908, %6903 ], [ %6888, %6878 ]
  %6911 = fadd fast float %6670, %6667
  %6912 = fmul fast float %6891, %6911
  %6913 = fadd fast float %6912, %6894
  %6914 = fadd fast float %6671, %6668
  %6915 = fmul fast float %6892, %6914
  %6916 = fadd fast float %6915, %6895
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  br i1 %198, label %6919, label %6943

; <label>:6919                                    ; preds = %6909
  %6920 = fadd fast float %6913, %6916
  %6921 = fmul fast float %6918, %6920
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6924 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %6925 = fsub fast float %5225, %5219
  %6926 = fadd fast float %6925, %5226
  %6927 = fsub fast float %6926, %6924
  %6928 = extractvalue %dx.types.CBufRet.f32 %5220, 2
  %6929 = fmul fast float %6927, %6928
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = fsub fast float %6930, %6923
  %6932 = fmul fast float %6931, %6910
  %6933 = fadd fast float %6932, %6923
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6936 = fsub fast float %6933, %6935
  %6937 = fmul fast float %6936, 1.000000e+01
  %6938 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6939 = fsub fast float %4225, %5216
  %6940 = fmul fast float %6938, %6939
  %6941 = fadd fast float %6940, %5216
  %6942 = fmul fast float %6941, %6933
  br label %6967

; <label>:6943                                    ; preds = %6909
  %6944 = fadd fast float %6672, %6669
  %6945 = fmul fast float %6893, %6944
  %6946 = fadd fast float %6945, %6896
  %6947 = fmul fast float %6918, %6913
  %6948 = fmul fast float %6918, %6916
  %6949 = fmul fast float %6918, %6946
  %6950 = call float @dx.op.binary.f32(i32 35, float %6948, float %6949)  ; FMax(a,b)
  %6951 = call float @dx.op.binary.f32(i32 35, float %6947, float %6950)  ; FMax(a,b)
  %6952 = call float @dx.op.binary.f32(i32 35, float %6951, float %5216)  ; FMax(a,b)
  %6953 = fcmp fast ugt float %6952, 0x3F10000000000000
  br i1 %6953, label %6955, label %6954

; <label>:6954                                    ; preds = %6943
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6955

; <label>:6955                                    ; preds = %6954, %6943
  %6956 = add i32 %35, 372
  %6957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %6956, i32 undef)  ; BufferLoad(srv,index,wot)
  %6958 = extractvalue %dx.types.ResRet.i32 %6957, 0
  %6959 = and i32 %6958, 32
  %6960 = icmp eq i32 %6959, 0
  br i1 %6960, label %6967, label %6961

; <label>:6961                                    ; preds = %6955
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = fmul fast float %6963, 0x3FE99999A0000000
  %6965 = fadd fast float %6963, %6947
  %6966 = fadd fast float %6964, %6949
  br label %6967

; <label>:6967                                    ; preds = %6961, %6955, %6919
  %6968 = phi float [ %6921, %6919 ], [ %6965, %6961 ], [ %6947, %6955 ]
  %6969 = phi float [ %6942, %6919 ], [ %6948, %6961 ], [ %6948, %6955 ]
  %6970 = phi float [ %6941, %6919 ], [ %6966, %6961 ], [ %6949, %6955 ]
  %6971 = phi float [ %6941, %6919 ], [ %5216, %6961 ], [ %5216, %6955 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6972 = call float @dx.op.binary.f32(i32 36, float %6968, float 3.225500e+04)  ; FMin(a,b)
  %6973 = call float @dx.op.binary.f32(i32 36, float %6969, float 3.225500e+04)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 36, float %6970, float 3.225500e+04)  ; FMin(a,b)
  %6975 = call float @dx.op.binary.f32(i32 36, float %6971, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6973)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6974)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6975)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !40, !43}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!40 = !{!41, !42}
!41 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!42 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!43 = !{!44, !45, !46, !47, !48}
!44 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!45 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!46 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !71}
!51 = !{!52, !69, null}
!52 = !{!53, !56, !57, !59, !61, !62, !63, !64, !65, !66, !68}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"COLOR", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!57 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 2, i8 0, !58}
!58 = !{i32 3, i32 3}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 5, i8 0, !60}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 6, i8 0, !55}
!64 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 7, i8 0, !58}
!65 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 8, i8 0, !55}
!66 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !54, i8 1, i32 1, i8 4, i32 9, i8 0, !67}
!67 = !{i32 3, i32 13}
!68 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!71 = !{i32 0, i64 16}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!81 = distinct !{!81, !82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!82 = distinct !{!82, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!83 = distinct !{!83, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!84 = distinct !{!84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!85 = distinct !{!85, !84, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!86 = distinct !{!86, !87, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!87 = distinct !{!87, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!88 = distinct !{!88, !87, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!89 = distinct !{!89, !87, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!90 = distinct !{!90, !91, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!91 = distinct !{!91, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!92 = distinct !{!92, !91, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!93 = distinct !{!93, !91, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!94 = distinct !{!94, !95, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!95 = distinct !{!95, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?sort@@YAXAIAM00@Z: %c"}
!98 = distinct !{!98, !"\01?sort@@YAXAIAM00@Z"}
!99 = !{!100, !101, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!100 = distinct !{!100, !98, !"\01?sort@@YAXAIAM00@Z: %a"}
!101 = distinct !{!101, !98, !"\01?sort@@YAXAIAM00@Z: %b"}
!102 = !{!101}
!103 = !{!100, !97, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!104 = !{!100}
!105 = !{!101, !97, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!106 = !{!107}
!107 = distinct !{!107, !108, !"\01?sort@@YAXAIAM00@Z: %c"}
!108 = distinct !{!108, !"\01?sort@@YAXAIAM00@Z"}
!109 = !{!110, !111, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!110 = distinct !{!110, !108, !"\01?sort@@YAXAIAM00@Z: %a"}
!111 = distinct !{!111, !108, !"\01?sort@@YAXAIAM00@Z: %b"}
!112 = !{!111}
!113 = !{!110, !107, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!114 = !{!110}
!115 = !{!111, !107, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}

