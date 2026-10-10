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
; shader hash: 8a4ab19dcf2804cff0305ed3aecb785e
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
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t49,space1     1
;                                   texture    byte         r/o      T7     t50,space1     1
;                                   texture    byte         r/o      T8     t51,space1     1
;                                   texture    byte         r/o      T9     t52,space1     1
;                                   texture    byte         r/o     T10     t16,space1     1
;                                   texture    byte         r/o     T11     t17,space1     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t57,space2     1
;                                   texture    byte         r/o     T15     t69,space1     1
;                                   texture     u32          2d     T16     t56,space2     1
;                                   texture     f32          2d     T17     t34,space2     1
;                                   texture     f32          1d     T18     t30,space2     1
;                                   texture     f32          3d     T19     t44,space2     1
;                                   texture     f32          3d     T20     t45,space2     1
;                                   texture     f32     2darray     T21     t47,space2     1
;                                   textureunorm_f32     2darray     T22     t85,space2     1
;                                   texture     f32          2d     T23     t83,space2     1
;                                   texture     f32          2d     T24     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = alloca [3 x float], align 4
  %63 = alloca [3 x float], align 4
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %58
  %69 = fmul fast float %67, %59
  %70 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = bitcast float %70 to i32
  %72 = ashr i32 %71, 1
  %73 = sub nsw i32 1597250115, %72
  %74 = bitcast i32 %73 to float
  %75 = fmul fast float %74, %49
  %76 = fmul fast float %74, %50
  %77 = fmul fast float %74, %51
  %78 = fmul fast float %50, %47
  %79 = fmul fast float %51, %46
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %51, %45
  %82 = fmul fast float %49, %47
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %49, %46
  %85 = fmul fast float %50, %45
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %80, %48
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %86, %48
  %90 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float %38, float %39, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = bitcast float %90 to i32
  %92 = ashr i32 %91, 1
  %93 = sub nsw i32 1597250115, %92
  %94 = bitcast i32 %93 to float
  %95 = fmul fast float %94, %38
  %96 = fmul fast float %94, %39
  %97 = fmul fast float %94, %40
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %68, 2.000000e+00
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %69, 2.000000e+00
  %104 = fmul fast float %103, %100
  %105 = fsub fast float 1.000000e+00, %102
  %106 = fsub fast float 1.000000e+00, %104
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %105, %108
  %112 = fmul fast float %105, %109
  %113 = fmul fast float %105, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %106, %115
  %119 = fmul fast float %106, %116
  %120 = fmul fast float %106, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %125, %111
  %127 = fadd fast float %119, %123
  %128 = fadd fast float %127, %112
  %129 = fadd fast float %120, %124
  %130 = fadd fast float %129, %113
  %131 = fmul fast float %126, %61
  %132 = fmul fast float %128, %61
  %133 = fmul fast float %130, %61
  %134 = fmul fast float %68, 5.000000e-01
  %135 = fmul fast float %69, 5.000000e-01
  %136 = fptosi float %134 to i32
  %137 = fptosi float %135 to i32
  %138 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %136, i32 %137, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = lshr i32 %139, 18
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %141, 0x3F4C00EBA0000000
  %143 = call float @dx.op.unary.f32(i32 21, float %142)  ; Exp(value)
  %144 = fadd fast float %143, -1.000000e+00
  %145 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %146 = extractvalue %dx.types.Dimensions %145, 0
  %147 = sitofp i32 %146 to float
  %148 = extractvalue %dx.types.Dimensions %145, 1
  %149 = sitofp i32 %148 to float
  %150 = fcmp fast oge float %134, %147
  %151 = fcmp fast oge float %135, %149
  %152 = or i1 %150, %151
  %153 = select i1 %152, float 0x4197782600000000, float %144
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %155, %68
  %158 = fmul fast float %156, %69
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = and i32 %160, 114688
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float %157, float 0.000000e+00
  %164 = select i1 %162, float %158, float 0.000000e+00
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fmul fast float %166, 2.550000e+02
  %168 = fptoui float %167 to i32
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp ne i32 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %188

; <label>:177                                     ; preds = %0
  %178 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %179 = fmul fast float %178, %69
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fmul fast float %180, %68
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %25, float %181, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fcmp fast olt float %184, %186
  br label %191

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %174, 0
  %190 = and i1 %173, %189
  br label %191

; <label>:191                                     ; preds = %188, %177
  %192 = phi i1 [ %187, %177 ], [ %190, %188 ]
  %193 = add i32 %29, 156
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %29, 216
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %207, 8
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = add i32 %29, 36
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %29, 288
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %230, 0x3F50624DE0000000
  %234 = fmul fast float %232, 0x3F50624DE0000000
  %235 = add i32 %29, 172
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %29, 232
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %29, 52
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %29, 304
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %29, 188
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %29, 248
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %29, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %29, 320
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %29, 204
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %29, 264
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %29, 84
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %29, 336
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %29, 364
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 32
  %365 = icmp eq i32 %364, 0
  %366 = and i32 %363, 64
  %367 = icmp eq i32 %366, 0
  %368 = and i32 %363, 128
  %369 = icmp eq i32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %389, label %374

; <label>:374                                     ; preds = %191
  %375 = add i32 %29, 488
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = add i32 %377, 0
  %379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %379, %dx.types.Handle %65, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = extractvalue %dx.types.ResRet.f32 %380, 3
  %385 = fmul fast float %384, %54
  %386 = fmul fast float %381, %55
  %387 = fmul fast float %382, %56
  %388 = fmul fast float %383, %57
  br label %389

; <label>:389                                     ; preds = %374, %191
  %390 = phi float [ %57, %191 ], [ %388, %374 ]
  %391 = phi float [ %56, %191 ], [ %387, %374 ]
  %392 = phi float [ %55, %191 ], [ %386, %374 ]
  %393 = phi float [ %54, %191 ], [ %385, %374 ]
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 2
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %417, label %398

; <label>:398                                     ; preds = %389
  %399 = add i32 %29, 44
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %392, float 1.000000e+00
  %405 = add i32 %29, 60
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %391, float 1.000000e+00
  %411 = add i32 %29, 76
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %390, float 1.000000e+00
  br label %417

; <label>:417                                     ; preds = %398, %389
  %418 = phi float [ %390, %389 ], [ %416, %398 ]
  %419 = phi float [ %391, %389 ], [ %410, %398 ]
  %420 = phi float [ %392, %389 ], [ %404, %398 ]
  %421 = lshr i32 %395, 20
  %422 = and i32 %421, 3
  %423 = add nuw nsw i32 %422, 1
  %424 = add i32 %29, 24
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %29, 28
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = or i32 %429, %426
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %1081, label %432

; <label>:432                                     ; preds = %417
  %433 = and i32 %426, 262144
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %32, float 1.000000e+00
  %436 = select i1 %434, float %33, float 0.000000e+00
  %437 = select i1 %434, float %34, float 0.000000e+00
  %438 = select i1 %434, float %35, float 1.000000e+00
  %439 = select i1 %434, float %36, float %52
  %440 = select i1 %434, float %37, float %53
  %441 = add i32 %29, 284
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %445, 0x3F50624DE0000000
  %447 = add i32 %29, 88
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = and i32 %450, 255
  %452 = lshr i32 %449, 24
  %453 = add i32 %29, 292
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %29, 32
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 22
  %464 = shl nuw nsw i32 %463, 5
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = shl i32 %462, 4
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %462, 7
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %474 = fmul fast float %473, 1.000000e+03
  %475 = fmul fast float %233, %474
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %223
  %478 = fmul fast float %234, %474
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %225
  %481 = fmul fast float %446, %474
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fmul fast float %482, 0x401921FB60000000
  %484 = fadd fast float %483, %465
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fsub fast float -0.000000e+00, %485
  %488 = fadd fast float %439, -5.000000e-01
  %489 = fadd fast float %440, -5.000000e-01
  %490 = fmul fast float %457, %488
  %491 = fmul fast float %459, %489
  %492 = fadd fast float %490, 5.000000e-01
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fmul fast float %468, %492
  %495 = fmul fast float %471, %493
  %496 = fmul fast float %486, %494
  %497 = call float @dx.op.tertiary.f32(i32 46, float %487, float %495, float %496)  ; FMad(a,b,c)
  %498 = fmul fast float %485, %494
  %499 = call float @dx.op.tertiary.f32(i32 46, float %486, float %495, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %477, %497
  %501 = fadd fast float %480, %499
  %502 = icmp ugt i32 %451, 1
  %503 = icmp ugt i32 %449, 33554431
  %504 = or i1 %503, %502
  br i1 %504, label %505, label %530

; <label>:505                                     ; preds = %432
  %506 = add i32 %29, 228
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = fmul fast float %473, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = mul nuw nsw i32 %451, %452
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %512, %514
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fptoui float %516 to i32
  %518 = urem i32 %517, %451
  %519 = udiv i32 %517, %452
  %520 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %522 = uitofp i32 %518 to float
  %523 = uitofp i32 %519 to float
  %524 = fadd fast float %520, %522
  %525 = fadd fast float %521, %523
  %526 = uitofp i32 %451 to float
  %527 = uitofp i32 %452 to float
  %528 = fdiv fast float %524, %526
  %529 = fdiv fast float %525, %527
  br label %530

; <label>:530                                     ; preds = %505, %432
  %531 = phi float [ %528, %505 ], [ %500, %432 ]
  %532 = phi float [ %529, %505 ], [ %501, %432 ]
  %533 = and i32 %426, 16777216
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %644, label %535

; <label>:535                                     ; preds = %530
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %540 = fadd fast float %537, %131
  %541 = fadd fast float %538, %132
  %542 = fadd fast float %539, %133
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = icmp eq i32 %30, 65535
  br i1 %546, label %641, label %547

; <label>:547                                     ; preds = %535
  %548 = lshr i32 %30, 1
  %549 = shl i32 %548, 2
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %30, 1
  %553 = icmp ne i32 %552, 0
  %554 = lshr i32 %551, 16
  %555 = and i32 %551, 65535
  %556 = select i1 %553, i32 %554, i32 %555
  %557 = icmp eq i32 %556, 65535
  br i1 %557, label %637, label %558

; <label>:558                                     ; preds = %547
  %559 = mul nuw nsw i32 %556, 40
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = add nuw nsw i32 %559, 12
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = add nuw nsw i32 %559, 24
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = add nuw nsw i32 %559, 36
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = fsub fast float %540, %561
  %578 = fsub fast float %541, %562
  %579 = fsub fast float %542, %563
  %580 = fmul fast float %576, %577
  %581 = fmul fast float %576, %578
  %582 = fmul fast float %576, %579
  %583 = call float @dx.op.unary.f32(i32 27, float %580)  ; Round_ni(value)
  %584 = call float @dx.op.unary.f32(i32 27, float %581)  ; Round_ni(value)
  %585 = call float @dx.op.unary.f32(i32 27, float %582)  ; Round_ni(value)
  %586 = fadd fast float %583, 5.000000e-01
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fadd fast float %585, 5.000000e-01
  %589 = fmul fast float %586, %566
  %590 = fmul fast float %587, %567
  %591 = fmul fast float %588, %568
  %592 = shl i32 %30, 2
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %598 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %596, %dx.types.Handle %26, float %597, float %598, float %599, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = fmul fast float %601, 1.023000e+03
  %605 = fmul fast float %602, 1.023000e+03
  %606 = fmul fast float %603, 1.023000e+03
  %607 = fadd fast float %604, 5.000000e-01
  %608 = fadd fast float %605, 5.000000e-01
  %609 = fadd fast float %606, 5.000000e-01
  %610 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %611 = call float @dx.op.unary.f32(i32 27, float %608)  ; Round_ni(value)
  %612 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %613 = fsub fast float %580, %583
  %614 = fsub fast float %581, %584
  %615 = fsub fast float %582, %585
  %616 = fmul fast float %613, 7.500000e-01
  %617 = fmul fast float %614, 7.500000e-01
  %618 = fmul fast float %615, 7.500000e-01
  %619 = fadd fast float %583, 1.250000e-01
  %620 = fadd fast float %619, %616
  %621 = fadd fast float %620, %610
  %622 = fadd fast float %584, 1.250000e-01
  %623 = fadd fast float %622, %617
  %624 = fadd fast float %623, %611
  %625 = fadd fast float %585, 1.250000e-01
  %626 = fadd fast float %625, %618
  %627 = fadd fast float %626, %612
  %628 = fmul fast float %621, %571
  %629 = fmul fast float %624, %572
  %630 = fmul fast float %627, %573
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %632, 0
  %634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %634, %dx.types.Handle %24, float %628, float %629, float %630, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  br label %637

; <label>:637                                     ; preds = %558, %547
  %638 = phi float [ %636, %558 ], [ -1.000000e+00, %547 ]
  %639 = fadd fast float %638, %545
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  br label %641

; <label>:641                                     ; preds = %637, %535
  %642 = phi float [ %640, %637 ], [ %545, %535 ]
  %643 = fmul fast float %642, %393
  br label %644

; <label>:644                                     ; preds = %641, %530
  %645 = phi float [ %643, %641 ], [ %393, %530 ]
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 256
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %696, label %650

; <label>:650                                     ; preds = %644
  %651 = add i32 %29, 440
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %65, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = add i32 %29, 100
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = shl i32 %660, 4
  %662 = and i32 %661, 32752
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %660, 7
  %665 = and i32 %664, 32752
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = fsub fast float 1.000000e+00, %645
  %668 = call float @dx.op.binary.f32(i32 35, float %667, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %669 = bitcast float %645 to i32
  %670 = sitofp i32 %669 to float
  %671 = fadd fast float %670, 0xC1CFBF8940000000
  %672 = fmul fast float %666, %671
  %673 = fadd fast float %672, 0x41CFBF8940000000
  %674 = fptosi float %673 to i32
  %675 = bitcast i32 %674 to float
  %676 = bitcast float %668 to i32
  %677 = sitofp i32 %676 to float
  %678 = fadd fast float %677, 0xC1CFBF8940000000
  %679 = fmul fast float %678, %666
  %680 = fadd fast float %679, 0x41CFBF8940000000
  %681 = fptosi float %680 to i32
  %682 = bitcast i32 %681 to float
  %683 = fmul fast float %675, %663
  %684 = fmul fast float %682, %663
  %685 = fsub fast float %668, %683
  %686 = fadd fast float %684, %668
  %687 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %689 = fsub fast float %657, %687
  %690 = fsub fast float %688, %687
  %691 = bitcast float %690 to i32
  %692 = sub nsw i32 2129859010, %691
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %693, %689
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  br label %696

; <label>:696                                     ; preds = %650, %644
  %697 = phi float [ %695, %650 ], [ %645, %644 ]
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 128
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %718, label %702

; <label>:702                                     ; preds = %696
  %703 = add i32 %29, 424
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %65, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 524288
  %713 = icmp ne i32 %712, 0
  %714 = fcmp fast ogt float %709, 0x3FE0101020000000
  %715 = select i1 %714, float 1.000000e+00, float 0.000000e+00
  %716 = select i1 %713, float %715, float %709
  %717 = fmul fast float %716, %697
  br label %718

; <label>:718                                     ; preds = %702, %696
  %719 = phi float [ %717, %702 ], [ %697, %696 ]
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 16
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %922, label %724

; <label>:724                                     ; preds = %718
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %29, 376
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %64, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = and i32 %726, 255
  %738 = uitofp i32 %737 to float
  %739 = lshr i32 %726, 8
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %736, %738
  %743 = fadd fast float %742, %741
  %744 = fmul fast float %743, 0x3F70101000000000
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 512
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %757, label %749

; <label>:749                                     ; preds = %724
  %750 = add i32 %29, 456
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %65, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  br label %757

; <label>:757                                     ; preds = %749, %724
  %758 = phi float [ %756, %749 ], [ 1.000000e+00, %724 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 33554432
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %869, label %763

; <label>:763                                     ; preds = %757
  %764 = add i32 %29, 224
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %766, 16
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = add i32 %29, 228
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 65535
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 24
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = and i32 %777, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %777, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = lshr i32 %777, 16
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = add i32 %29, 220
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 24
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = and i32 %794, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %794, 8
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = lshr i32 %794, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = bitcast float %733 to i32
  %810 = ashr i32 %809, 1
  %811 = sub nsw i32 1597463174, %810
  %812 = bitcast i32 %811 to float
  %813 = fmul fast float %733, 5.000000e-01
  %814 = fmul fast float %812, %812
  %815 = fmul fast float %814, %813
  %816 = fsub fast float 1.500000e+00, %815
  %817 = fmul fast float %812, %733
  %818 = fmul fast float %817, %816
  %819 = bitcast float %734 to i32
  %820 = ashr i32 %819, 1
  %821 = sub nsw i32 1597463174, %820
  %822 = bitcast i32 %821 to float
  %823 = fmul fast float %734, 5.000000e-01
  %824 = fmul fast float %822, %822
  %825 = fmul fast float %824, %823
  %826 = fsub fast float 1.500000e+00, %825
  %827 = fmul fast float %822, %734
  %828 = fmul fast float %827, %826
  %829 = bitcast float %735 to i32
  %830 = ashr i32 %829, 1
  %831 = sub nsw i32 1597463174, %830
  %832 = bitcast i32 %831 to float
  %833 = fmul fast float %735, 5.000000e-01
  %834 = fmul fast float %832, %832
  %835 = fmul fast float %834, %833
  %836 = fsub fast float 1.500000e+00, %835
  %837 = fmul fast float %832, %735
  %838 = fmul fast float %837, %836
  %839 = fsub fast float %818, %800
  %840 = fsub fast float %828, %804
  %841 = fsub fast float %838, %808
  %842 = fmul fast float %839, %768
  %843 = fmul fast float %840, %770
  %844 = fmul fast float %841, %775
  %845 = fadd fast float %842, %783
  %846 = fadd fast float %843, %787
  %847 = fadd fast float %844, %791
  %848 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %849 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %850 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %851 = fmul fast float %848, %848
  %852 = fmul fast float %849, %849
  %853 = fmul fast float %850, %850
  %854 = fsub fast float %851, %733
  %855 = fsub fast float %852, %734
  %856 = fsub fast float %853, %735
  %857 = fmul fast float %854, %758
  %858 = fmul fast float %855, %758
  %859 = fmul fast float %856, %758
  %860 = fadd fast float %857, %733
  %861 = fadd fast float %858, %734
  %862 = fadd fast float %859, %735
  %863 = fadd fast float %780, %744
  %864 = fsub fast float %863, %797
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fsub fast float %865, %744
  %867 = fmul fast float %866, %758
  %868 = fadd fast float %867, %744
  br label %922

; <label>:869                                     ; preds = %757
  %870 = and i32 %760, 134217728
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %906, label %872

; <label>:872                                     ; preds = %869
  %873 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %874 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %875 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %876 = fadd fast float %873, -5.000000e-01
  %877 = fadd fast float %874, -5.000000e-01
  %878 = fadd fast float %875, -5.000000e-01
  %879 = fmul fast float %876, %758
  %880 = fmul fast float %877, %758
  %881 = fmul fast float %878, %758
  %882 = fadd fast float %879, 5.000000e-01
  %883 = fadd fast float %880, 5.000000e-01
  %884 = fadd fast float %881, 5.000000e-01
  %885 = call float @dx.op.unary.f32(i32 24, float %733)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %887 = call float @dx.op.unary.f32(i32 24, float %735)  ; Sqrt(value)
  %888 = fmul fast float %882, 2.000000e+00
  %889 = fsub fast float 1.000000e+00, %888
  %890 = fmul fast float %889, %885
  %891 = fadd fast float %890, %888
  %892 = fmul fast float %891, %885
  %893 = fmul fast float %883, 2.000000e+00
  %894 = fsub fast float 1.000000e+00, %893
  %895 = fmul fast float %894, %886
  %896 = fadd fast float %895, %893
  %897 = fmul fast float %896, %886
  %898 = fmul fast float %884, 2.000000e+00
  %899 = fsub fast float 1.000000e+00, %898
  %900 = fmul fast float %899, %887
  %901 = fadd fast float %900, %898
  %902 = fmul fast float %901, %887
  %903 = fmul fast float %892, %892
  %904 = fmul fast float %897, %897
  %905 = fmul fast float %902, %902
  br label %922

; <label>:906                                     ; preds = %869
  %907 = fmul fast float %210, %210
  %908 = fmul fast float %214, %214
  %909 = fmul fast float %218, %218
  %910 = fadd fast float %907, -1.000000e+00
  %911 = fadd fast float %908, -1.000000e+00
  %912 = fadd fast float %909, -1.000000e+00
  %913 = fmul fast float %758, %910
  %914 = fmul fast float %758, %911
  %915 = fmul fast float %758, %912
  %916 = fadd fast float %913, 1.000000e+00
  %917 = fadd fast float %914, 1.000000e+00
  %918 = fadd fast float %915, 1.000000e+00
  %919 = fmul fast float %916, %733
  %920 = fmul fast float %917, %734
  %921 = fmul fast float %918, %735
  br label %922

; <label>:922                                     ; preds = %906, %872, %763, %718
  %923 = phi float [ %868, %763 ], [ %744, %872 ], [ %744, %906 ], [ 0x3FA23C0BE0000000, %718 ]
  %924 = phi float [ %860, %763 ], [ %903, %872 ], [ %919, %906 ], [ 1.000000e+00, %718 ]
  %925 = phi float [ %861, %763 ], [ %904, %872 ], [ %920, %906 ], [ 1.000000e+00, %718 ]
  %926 = phi float [ %862, %763 ], [ %905, %872 ], [ %921, %906 ], [ 1.000000e+00, %718 ]
  %927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.i32 %927, 1
  %929 = and i32 %928, 1
  %930 = icmp ne i32 %929, 0
  %931 = add i32 %29, 372
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 32
  %935 = icmp ne i32 %934, 0
  %936 = and i1 %930, %935
  %937 = select i1 %936, float 1.000000e+00, float %924
  %938 = select i1 %936, float 0x3FD3333340000000, float %925
  %939 = select i1 %936, float 0x3FD3333340000000, float %926
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 32
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %1016, label %944

; <label>:944                                     ; preds = %922
  %945 = add i32 %29, 92
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = add i32 %29, 392
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = add i32 %950, 0
  %952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %952, %dx.types.Handle %64, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = and i32 %947, 255
  %959 = uitofp i32 %958 to float
  %960 = lshr i32 %947, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = lshr i32 %947, 16
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101000000000
  %967 = fmul fast float %954, %959
  %968 = fadd fast float %967, %962
  %969 = fmul fast float %968, 0x3F70101000000000
  %970 = fadd fast float %955, -5.000000e-01
  %971 = fadd fast float %957, -5.000000e-01
  %972 = fmul fast float %970, %966
  %973 = fmul fast float %971, %966
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fmul fast float %974, 2.000000e+00
  %977 = fadd fast float %976, -1.000000e+00
  %978 = fmul fast float %975, 2.000000e+00
  %979 = fadd fast float %978, -1.000000e+00
  %980 = fadd fast float %977, %979
  %981 = fmul fast float %980, 5.000000e-01
  %982 = fsub fast float %977, %979
  %983 = fmul fast float %982, 5.000000e-01
  %984 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %985 = fsub fast float 1.000000e+00, %984
  %986 = call float @dx.op.unary.f32(i32 6, float %983)  ; FAbs(value)
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.dot3.f32(i32 55, float %981, float %983, float %987, float %981, float %983, float %987)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = call float @dx.op.unary.f32(i32 25, float %988)  ; Rsqrt(value)
  %990 = fmul fast float %981, %989
  %991 = fmul fast float %983, %989
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 67108864
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1012, label %996

; <label>:996                                     ; preds = %944
  %997 = add i32 %29, 280
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = and i32 %1003, 65535
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = lshr i32 %999, 16
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = fsub fast float %969, %1007
  %1009 = fmul fast float %1008, %1001
  %1010 = fadd fast float %1009, %1005
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  br label %1012

; <label>:1012                                    ; preds = %996, %944
  %1013 = phi float [ %1011, %996 ], [ %969, %944 ]
  %1014 = call float @dx.op.dot2.f32(i32 54, float %990, float %991, float %435, float %436)  ; Dot2(ax,ay,bx,by)
  %1015 = call float @dx.op.dot2.f32(i32 54, float %990, float %991, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  br label %1016

; <label>:1016                                    ; preds = %1012, %922
  %1017 = phi float [ %1013, %1012 ], [ 0x3FD6666660000000, %922 ]
  %1018 = phi float [ %1014, %1012 ], [ 0.000000e+00, %922 ]
  %1019 = phi float [ %1015, %1012 ], [ 0.000000e+00, %922 ]
  %1020 = phi float [ %956, %1012 ], [ 1.000000e+00, %922 ]
  %1021 = add i32 %29, 160
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 22
  %1025 = shl nuw nsw i32 %1024, 5
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 64
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1064, label %1031

; <label>:1031                                    ; preds = %1016
  %1032 = add i32 %29, 408
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = add i32 %1034, 0
  %1036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 131072
  %1040 = icmp eq i32 %1039, 0
  %1041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1036, %dx.types.Handle %64, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = fmul fast float %1042, %198
  %1046 = fmul fast float %1043, %201
  %1047 = fmul fast float %1044, %204
  br i1 %1040, label %1054, label %1048

; <label>:1048                                    ; preds = %1031
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = fmul fast float %1050, %1045
  %1052 = fmul fast float %1050, %1046
  %1053 = fmul fast float %1050, %1047
  br label %1054

; <label>:1054                                    ; preds = %1048, %1031
  %1055 = phi float [ %1051, %1048 ], [ %1045, %1031 ]
  %1056 = phi float [ %1052, %1048 ], [ %1046, %1031 ]
  %1057 = phi float [ %1053, %1048 ], [ %1047, %1031 ]
  %1058 = fmul fast float %1055, %1026
  %1059 = select i1 %192, float %1058, float %1055
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1056, float %1057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = select i1 %192, float 0.000000e+00, float %1055
  %1062 = select i1 %192, float %1060, float %1056
  %1063 = select i1 %192, float 0.000000e+00, float %1057
  br label %1064

; <label>:1064                                    ; preds = %1054, %1016
  %1065 = phi float [ %1061, %1054 ], [ 0.000000e+00, %1016 ]
  %1066 = phi float [ %1062, %1054 ], [ 0.000000e+00, %1016 ]
  %1067 = phi float [ %1063, %1054 ], [ 0.000000e+00, %1016 ]
  %1068 = add i32 %29, 96
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 255
  %1072 = uitofp i32 %1071 to float
  %1073 = lshr i32 %1070, 8
  %1074 = and i32 %1073, 255
  %1075 = uitofp i32 %1074 to float
  %1076 = call float @dx.op.dot3.f32(i32 55, float %937, float %938, float %939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = fmul fast float %1075, %1076
  %1078 = fadd fast float %1077, %1072
  %1079 = fmul fast float %1078, 0x3F70101020000000
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  br label %1081

; <label>:1081                                    ; preds = %1064, %417
  %1082 = phi float [ 0.000000e+00, %417 ], [ %1018, %1064 ]
  %1083 = phi float [ 0.000000e+00, %417 ], [ %1019, %1064 ]
  %1084 = phi float [ 0.000000e+00, %417 ], [ %937, %1064 ]
  %1085 = phi float [ 0.000000e+00, %417 ], [ %938, %1064 ]
  %1086 = phi float [ 0.000000e+00, %417 ], [ %939, %1064 ]
  %1087 = phi float [ 0.000000e+00, %417 ], [ %1065, %1064 ]
  %1088 = phi float [ 0.000000e+00, %417 ], [ %1066, %1064 ]
  %1089 = phi float [ 0.000000e+00, %417 ], [ %1067, %1064 ]
  %1090 = phi float [ 0.000000e+00, %417 ], [ %923, %1064 ]
  %1091 = phi float [ 0.000000e+00, %417 ], [ %719, %1064 ]
  %1092 = phi float [ 0.000000e+00, %417 ], [ %1017, %1064 ]
  %1093 = phi float [ 0.000000e+00, %417 ], [ %1020, %1064 ]
  %1094 = phi float [ 0.000000e+00, %417 ], [ %1080, %1064 ]
  br i1 %365, label %1936, label %1095

; <label>:1095                                    ; preds = %1081
  %1096 = icmp ult i32 %423, 2
  %1097 = add i32 %29, 40
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %29, 44
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = or i32 %1102, %1099
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1936, label %1105

; <label>:1105                                    ; preds = %1095
  %1106 = and i32 %1099, 262144
  %1107 = icmp ne i32 %1106, 0
  %1108 = select i1 %1107, float %32, float 1.000000e+00
  %1109 = select i1 %1107, float %33, float 0.000000e+00
  %1110 = select i1 %1107, float %34, float 0.000000e+00
  %1111 = select i1 %1107, float %35, float 1.000000e+00
  %1112 = select i1 %1107, float %36, float %52
  %1113 = select i1 %1107, float %37, float %53
  %1114 = add i32 %29, 300
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = lshr i32 %1116, 16
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = fmul fast float %1118, 0x3F50624DE0000000
  %1120 = add i32 %29, 104
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = lshr i32 %1122, 16
  %1124 = and i32 %1123, 255
  %1125 = lshr i32 %1122, 24
  %1126 = add i32 %29, 308
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 65535
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = lshr i32 %1128, 16
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = add i32 %29, 48
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 22
  %1137 = shl nuw nsw i32 %1136, 5
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = shl i32 %1135, 4
  %1140 = and i32 %1139, 32752
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = lshr i32 %1135, 7
  %1143 = and i32 %1142, 32752
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1147 = fmul fast float %1146, 1.000000e+03
  %1148 = fmul fast float %275, %1147
  %1149 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1150 = fadd fast float %1149, %265
  %1151 = fmul fast float %276, %1147
  %1152 = call float @dx.op.unary.f32(i32 22, float %1151)  ; Frc(value)
  %1153 = fadd fast float %1152, %267
  %1154 = fmul fast float %1119, %1147
  %1155 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1156 = fmul fast float %1155, 0x401921FB60000000
  %1157 = fadd fast float %1156, %1138
  %1158 = call float @dx.op.unary.f32(i32 13, float %1157)  ; Sin(value)
  %1159 = call float @dx.op.unary.f32(i32 12, float %1157)  ; Cos(value)
  %1160 = fsub fast float -0.000000e+00, %1158
  %1161 = fadd fast float %1112, -5.000000e-01
  %1162 = fadd fast float %1113, -5.000000e-01
  %1163 = fmul fast float %1130, %1161
  %1164 = fmul fast float %1132, %1162
  %1165 = fadd fast float %1163, 5.000000e-01
  %1166 = fadd fast float %1164, 5.000000e-01
  %1167 = fmul fast float %1141, %1165
  %1168 = fmul fast float %1144, %1166
  %1169 = fmul fast float %1159, %1167
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1160, float %1168, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1158, %1167
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1159, float %1168, float %1171)  ; FMad(a,b,c)
  %1173 = fadd fast float %1150, %1170
  %1174 = fadd fast float %1153, %1172
  %1175 = icmp ugt i32 %1124, 1
  %1176 = icmp ugt i32 %1122, 33554431
  %1177 = or i1 %1176, %1175
  br i1 %1177, label %1178, label %1203

; <label>:1178                                    ; preds = %1105
  %1179 = add i32 %29, 244
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = lshr i32 %1181, 16
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = fmul fast float %1146, %1183
  %1185 = call float @dx.op.unary.f32(i32 22, float %1184)  ; Frc(value)
  %1186 = mul nuw nsw i32 %1124, %1125
  %1187 = uitofp i32 %1186 to float
  %1188 = fmul fast float %1185, %1187
  %1189 = call float @dx.op.unary.f32(i32 27, float %1188)  ; Round_ni(value)
  %1190 = fptoui float %1189 to i32
  %1191 = urem i32 %1190, %1124
  %1192 = udiv i32 %1190, %1125
  %1193 = call float @dx.op.unary.f32(i32 22, float %1173)  ; Frc(value)
  %1194 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1195 = uitofp i32 %1191 to float
  %1196 = uitofp i32 %1192 to float
  %1197 = fadd fast float %1193, %1195
  %1198 = fadd fast float %1194, %1196
  %1199 = uitofp i32 %1124 to float
  %1200 = uitofp i32 %1125 to float
  %1201 = fdiv fast float %1197, %1199
  %1202 = fdiv fast float %1198, %1200
  br label %1203

; <label>:1203                                    ; preds = %1178, %1105
  %1204 = phi float [ %1201, %1178 ], [ %1173, %1105 ]
  %1205 = phi float [ %1202, %1178 ], [ %1174, %1105 ]
  %1206 = and i32 %1099, 16777216
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1317, label %1208

; <label>:1208                                    ; preds = %1203
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = fadd fast float %1210, %131
  %1214 = fadd fast float %1211, %132
  %1215 = fadd fast float %1212, %133
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = icmp eq i32 %30, 65535
  br i1 %1219, label %1314, label %1220

; <label>:1220                                    ; preds = %1208
  %1221 = lshr i32 %30, 1
  %1222 = shl i32 %1221, 2
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %30, 1
  %1226 = icmp ne i32 %1225, 0
  %1227 = lshr i32 %1224, 16
  %1228 = and i32 %1224, 65535
  %1229 = select i1 %1226, i32 %1227, i32 %1228
  %1230 = icmp eq i32 %1229, 65535
  br i1 %1230, label %1310, label %1231

; <label>:1231                                    ; preds = %1220
  %1232 = mul nuw nsw i32 %1229, 40
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = add nuw nsw i32 %1232, 12
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = add nuw nsw i32 %1232, 24
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = add nuw nsw i32 %1232, 36
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = fsub fast float %1213, %1234
  %1251 = fsub fast float %1214, %1235
  %1252 = fsub fast float %1215, %1236
  %1253 = fmul fast float %1249, %1250
  %1254 = fmul fast float %1249, %1251
  %1255 = fmul fast float %1249, %1252
  %1256 = call float @dx.op.unary.f32(i32 27, float %1253)  ; Round_ni(value)
  %1257 = call float @dx.op.unary.f32(i32 27, float %1254)  ; Round_ni(value)
  %1258 = call float @dx.op.unary.f32(i32 27, float %1255)  ; Round_ni(value)
  %1259 = fadd fast float %1256, 5.000000e-01
  %1260 = fadd fast float %1257, 5.000000e-01
  %1261 = fadd fast float %1258, 5.000000e-01
  %1262 = fmul fast float %1259, %1239
  %1263 = fmul fast float %1260, %1240
  %1264 = fmul fast float %1261, %1241
  %1265 = shl i32 %30, 2
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %1267, 0
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1271 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1272 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1269, %dx.types.Handle %26, float %1270, float %1271, float %1272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = fmul fast float %1274, 1.023000e+03
  %1278 = fmul fast float %1275, 1.023000e+03
  %1279 = fmul fast float %1276, 1.023000e+03
  %1280 = fadd fast float %1277, 5.000000e-01
  %1281 = fadd fast float %1278, 5.000000e-01
  %1282 = fadd fast float %1279, 5.000000e-01
  %1283 = call float @dx.op.unary.f32(i32 27, float %1280)  ; Round_ni(value)
  %1284 = call float @dx.op.unary.f32(i32 27, float %1281)  ; Round_ni(value)
  %1285 = call float @dx.op.unary.f32(i32 27, float %1282)  ; Round_ni(value)
  %1286 = fsub fast float %1253, %1256
  %1287 = fsub fast float %1254, %1257
  %1288 = fsub fast float %1255, %1258
  %1289 = fmul fast float %1286, 7.500000e-01
  %1290 = fmul fast float %1287, 7.500000e-01
  %1291 = fmul fast float %1288, 7.500000e-01
  %1292 = fadd fast float %1256, 1.250000e-01
  %1293 = fadd fast float %1292, %1289
  %1294 = fadd fast float %1293, %1283
  %1295 = fadd fast float %1257, 1.250000e-01
  %1296 = fadd fast float %1295, %1290
  %1297 = fadd fast float %1296, %1284
  %1298 = fadd fast float %1258, 1.250000e-01
  %1299 = fadd fast float %1298, %1291
  %1300 = fadd fast float %1299, %1285
  %1301 = fmul fast float %1294, %1244
  %1302 = fmul fast float %1297, %1245
  %1303 = fmul fast float %1300, %1246
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1307, %dx.types.Handle %24, float %1301, float %1302, float %1303, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  br label %1310

; <label>:1310                                    ; preds = %1231, %1220
  %1311 = phi float [ %1309, %1231 ], [ -1.000000e+00, %1220 ]
  %1312 = fadd fast float %1311, %1218
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  br label %1314

; <label>:1314                                    ; preds = %1310, %1208
  %1315 = phi float [ %1313, %1310 ], [ %1218, %1208 ]
  %1316 = fmul fast float %1315, %420
  br label %1317

; <label>:1317                                    ; preds = %1314, %1203
  %1318 = phi float [ %1316, %1314 ], [ %420, %1203 ]
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = and i32 %1320, 256
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1369, label %1323

; <label>:1323                                    ; preds = %1317
  %1324 = add i32 %29, 444
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = add i32 %1326, 0
  %1328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1328, %dx.types.Handle %65, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = add i32 %29, 116
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = shl i32 %1333, 4
  %1335 = and i32 %1334, 32752
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = lshr i32 %1333, 7
  %1338 = and i32 %1337, 32752
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = fsub fast float 1.000000e+00, %1318
  %1341 = call float @dx.op.binary.f32(i32 35, float %1340, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1342 = bitcast float %1318 to i32
  %1343 = sitofp i32 %1342 to float
  %1344 = fadd fast float %1343, 0xC1CFBF8940000000
  %1345 = fmul fast float %1339, %1344
  %1346 = fadd fast float %1345, 0x41CFBF8940000000
  %1347 = fptosi float %1346 to i32
  %1348 = bitcast i32 %1347 to float
  %1349 = bitcast float %1341 to i32
  %1350 = sitofp i32 %1349 to float
  %1351 = fadd fast float %1350, 0xC1CFBF8940000000
  %1352 = fmul fast float %1351, %1339
  %1353 = fadd fast float %1352, 0x41CFBF8940000000
  %1354 = fptosi float %1353 to i32
  %1355 = bitcast i32 %1354 to float
  %1356 = fmul fast float %1348, %1336
  %1357 = fmul fast float %1355, %1336
  %1358 = fsub fast float %1341, %1356
  %1359 = fadd fast float %1357, %1341
  %1360 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1361 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1362 = fsub fast float %1330, %1360
  %1363 = fsub fast float %1361, %1360
  %1364 = bitcast float %1363 to i32
  %1365 = sub nsw i32 2129859010, %1364
  %1366 = bitcast i32 %1365 to float
  %1367 = fmul fast float %1366, %1362
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  br label %1369

; <label>:1369                                    ; preds = %1323, %1317
  %1370 = phi float [ %1368, %1323 ], [ %1318, %1317 ]
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 128
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1391, label %1375

; <label>:1375                                    ; preds = %1369
  %1376 = add i32 %29, 428
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = add i32 %1378, 0
  %1380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1380, %dx.types.Handle %65, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 524288
  %1386 = icmp ne i32 %1385, 0
  %1387 = fcmp fast ogt float %1382, 0x3FE0101020000000
  %1388 = select i1 %1387, float 1.000000e+00, float 0.000000e+00
  %1389 = select i1 %1386, float %1388, float %1382
  %1390 = fmul fast float %1389, %1370
  br label %1391

; <label>:1391                                    ; preds = %1375, %1369
  %1392 = phi float [ %1390, %1375 ], [ %1370, %1369 ]
  %1393 = fcmp fast ult float %1392, 0x3F70101020000000
  br i1 %1393, label %1936, label %1394

; <label>:1394                                    ; preds = %1391
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 16
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1597, label %1399

; <label>:1399                                    ; preds = %1394
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %29, 380
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = add i32 %1404, 0
  %1406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1406, %dx.types.Handle %64, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = extractvalue %dx.types.ResRet.f32 %1407, 3
  %1412 = and i32 %1401, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = lshr i32 %1401, 8
  %1415 = and i32 %1414, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1411, %1413
  %1418 = fadd fast float %1417, %1416
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 512
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1432, label %1424

; <label>:1424                                    ; preds = %1399
  %1425 = add i32 %29, 460
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %65, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  br label %1432

; <label>:1432                                    ; preds = %1424, %1399
  %1433 = phi float [ %1431, %1424 ], [ 1.000000e+00, %1399 ]
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 33554432
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1544, label %1438

; <label>:1438                                    ; preds = %1432
  %1439 = add i32 %29, 240
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 65535
  %1443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1442)  ; LegacyF16ToF32(value)
  %1444 = lshr i32 %1441, 16
  %1445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1444)  ; LegacyF16ToF32(value)
  %1446 = add i32 %29, 244
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 65535
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = lshr i32 %1452, 24
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101020000000
  %1456 = and i32 %1452, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101020000000
  %1459 = lshr i32 %1452, 8
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = fmul fast float %1461, 0x3F70101020000000
  %1463 = lshr i32 %1452, 16
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1465, 0x3F70101020000000
  %1467 = add i32 %29, 236
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = lshr i32 %1469, 24
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = and i32 %1469, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1474, 0x3F70101020000000
  %1476 = lshr i32 %1469, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = lshr i32 %1469, 16
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = fmul fast float %1482, 0x3F70101020000000
  %1484 = bitcast float %1408 to i32
  %1485 = ashr i32 %1484, 1
  %1486 = sub nsw i32 1597463174, %1485
  %1487 = bitcast i32 %1486 to float
  %1488 = fmul fast float %1408, 5.000000e-01
  %1489 = fmul fast float %1487, %1487
  %1490 = fmul fast float %1489, %1488
  %1491 = fsub fast float 1.500000e+00, %1490
  %1492 = fmul fast float %1487, %1408
  %1493 = fmul fast float %1492, %1491
  %1494 = bitcast float %1409 to i32
  %1495 = ashr i32 %1494, 1
  %1496 = sub nsw i32 1597463174, %1495
  %1497 = bitcast i32 %1496 to float
  %1498 = fmul fast float %1409, 5.000000e-01
  %1499 = fmul fast float %1497, %1497
  %1500 = fmul fast float %1499, %1498
  %1501 = fsub fast float 1.500000e+00, %1500
  %1502 = fmul fast float %1497, %1409
  %1503 = fmul fast float %1502, %1501
  %1504 = bitcast float %1410 to i32
  %1505 = ashr i32 %1504, 1
  %1506 = sub nsw i32 1597463174, %1505
  %1507 = bitcast i32 %1506 to float
  %1508 = fmul fast float %1410, 5.000000e-01
  %1509 = fmul fast float %1507, %1507
  %1510 = fmul fast float %1509, %1508
  %1511 = fsub fast float 1.500000e+00, %1510
  %1512 = fmul fast float %1507, %1410
  %1513 = fmul fast float %1512, %1511
  %1514 = fsub fast float %1493, %1475
  %1515 = fsub fast float %1503, %1479
  %1516 = fsub fast float %1513, %1483
  %1517 = fmul fast float %1514, %1443
  %1518 = fmul fast float %1515, %1445
  %1519 = fmul fast float %1516, %1450
  %1520 = fadd fast float %1517, %1458
  %1521 = fadd fast float %1518, %1462
  %1522 = fadd fast float %1519, %1466
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = fmul fast float %1523, %1523
  %1527 = fmul fast float %1524, %1524
  %1528 = fmul fast float %1525, %1525
  %1529 = fsub fast float %1526, %1408
  %1530 = fsub fast float %1527, %1409
  %1531 = fsub fast float %1528, %1410
  %1532 = fmul fast float %1529, %1433
  %1533 = fmul fast float %1530, %1433
  %1534 = fmul fast float %1531, %1433
  %1535 = fadd fast float %1532, %1408
  %1536 = fadd fast float %1533, %1409
  %1537 = fadd fast float %1534, %1410
  %1538 = fadd fast float %1455, %1419
  %1539 = fsub fast float %1538, %1472
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fsub fast float %1540, %1419
  %1542 = fmul fast float %1541, %1433
  %1543 = fadd fast float %1542, %1419
  br label %1597

; <label>:1544                                    ; preds = %1432
  %1545 = and i32 %1435, 134217728
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1581, label %1547

; <label>:1547                                    ; preds = %1544
  %1548 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1549 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1550 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1551 = fadd fast float %1548, -5.000000e-01
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fadd fast float %1550, -5.000000e-01
  %1554 = fmul fast float %1551, %1433
  %1555 = fmul fast float %1552, %1433
  %1556 = fmul fast float %1553, %1433
  %1557 = fadd fast float %1554, 5.000000e-01
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = fadd fast float %1556, 5.000000e-01
  %1560 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1561 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1562 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1563 = fmul fast float %1557, 2.000000e+00
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1564, %1560
  %1566 = fadd fast float %1565, %1563
  %1567 = fmul fast float %1566, %1560
  %1568 = fmul fast float %1558, 2.000000e+00
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1569, %1561
  %1571 = fadd fast float %1570, %1568
  %1572 = fmul fast float %1571, %1561
  %1573 = fmul fast float %1559, 2.000000e+00
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %1574, %1562
  %1576 = fadd fast float %1575, %1573
  %1577 = fmul fast float %1576, %1562
  %1578 = fmul fast float %1567, %1567
  %1579 = fmul fast float %1572, %1572
  %1580 = fmul fast float %1577, %1577
  br label %1597

; <label>:1581                                    ; preds = %1544
  %1582 = fmul fast float %252, %252
  %1583 = fmul fast float %256, %256
  %1584 = fmul fast float %260, %260
  %1585 = fadd fast float %1582, -1.000000e+00
  %1586 = fadd fast float %1583, -1.000000e+00
  %1587 = fadd fast float %1584, -1.000000e+00
  %1588 = fmul fast float %1433, %1585
  %1589 = fmul fast float %1433, %1586
  %1590 = fmul fast float %1433, %1587
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fmul fast float %1591, %1408
  %1595 = fmul fast float %1592, %1409
  %1596 = fmul fast float %1593, %1410
  br label %1597

; <label>:1597                                    ; preds = %1581, %1547, %1438, %1394
  %1598 = phi float [ %1543, %1438 ], [ %1419, %1547 ], [ %1419, %1581 ], [ 0x3FA23C0BE0000000, %1394 ]
  %1599 = phi float [ %1535, %1438 ], [ %1578, %1547 ], [ %1594, %1581 ], [ 1.000000e+00, %1394 ]
  %1600 = phi float [ %1536, %1438 ], [ %1579, %1547 ], [ %1595, %1581 ], [ 1.000000e+00, %1394 ]
  %1601 = phi float [ %1537, %1438 ], [ %1580, %1547 ], [ %1596, %1581 ], [ 1.000000e+00, %1394 ]
  %1602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.i32 %1602, 1
  %1604 = and i32 %1603, 1
  %1605 = icmp ne i32 %1604, 0
  %1606 = add i32 %29, 372
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 32
  %1610 = icmp ne i32 %1609, 0
  %1611 = and i1 %1605, %1610
  %1612 = select i1 %1611, float 1.000000e+00, float %1599
  %1613 = select i1 %1611, float 0x3FD3333340000000, float %1600
  %1614 = select i1 %1611, float 0x3FD3333340000000, float %1601
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 32
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1691, label %1619

; <label>:1619                                    ; preds = %1597
  %1620 = add i32 %29, 108
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = add i32 %29, 396
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = add i32 %1625, 0
  %1627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1627, %dx.types.Handle %64, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.ResRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.ResRet.f32 %1628, 2
  %1632 = extractvalue %dx.types.ResRet.f32 %1628, 3
  %1633 = and i32 %1622, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = lshr i32 %1622, 8
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = lshr i32 %1622, 16
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = fmul fast float %1640, 0x3F70101000000000
  %1642 = fmul fast float %1629, %1634
  %1643 = fadd fast float %1642, %1637
  %1644 = fmul fast float %1643, 0x3F70101000000000
  %1645 = fadd fast float %1630, -5.000000e-01
  %1646 = fadd fast float %1632, -5.000000e-01
  %1647 = fmul fast float %1645, %1641
  %1648 = fmul fast float %1646, %1641
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = fmul fast float %1649, 2.000000e+00
  %1652 = fadd fast float %1651, -1.000000e+00
  %1653 = fmul fast float %1650, 2.000000e+00
  %1654 = fadd fast float %1653, -1.000000e+00
  %1655 = fadd fast float %1652, %1654
  %1656 = fmul fast float %1655, 5.000000e-01
  %1657 = fsub fast float %1652, %1654
  %1658 = fmul fast float %1657, 5.000000e-01
  %1659 = call float @dx.op.unary.f32(i32 6, float %1656)  ; FAbs(value)
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = call float @dx.op.unary.f32(i32 6, float %1658)  ; FAbs(value)
  %1662 = fsub fast float %1660, %1661
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1656, float %1658, float %1662, float %1656, float %1658, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = call float @dx.op.unary.f32(i32 25, float %1663)  ; Rsqrt(value)
  %1665 = fmul fast float %1656, %1664
  %1666 = fmul fast float %1658, %1664
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 67108864
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %1687, label %1671

; <label>:1671                                    ; preds = %1619
  %1672 = add i32 %29, 296
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 65535
  %1676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1675)  ; LegacyF16ToF32(value)
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = and i32 %1678, 65535
  %1680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1679)  ; LegacyF16ToF32(value)
  %1681 = lshr i32 %1674, 16
  %1682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1681)  ; LegacyF16ToF32(value)
  %1683 = fsub fast float %1644, %1682
  %1684 = fmul fast float %1683, %1676
  %1685 = fadd fast float %1684, %1680
  %1686 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  br label %1687

; <label>:1687                                    ; preds = %1671, %1619
  %1688 = phi float [ %1686, %1671 ], [ %1644, %1619 ]
  %1689 = call float @dx.op.dot2.f32(i32 54, float %1665, float %1666, float %1108, float %1109)  ; Dot2(ax,ay,bx,by)
  %1690 = call float @dx.op.dot2.f32(i32 54, float %1665, float %1666, float %1110, float %1111)  ; Dot2(ax,ay,bx,by)
  br label %1691

; <label>:1691                                    ; preds = %1687, %1597
  %1692 = phi float [ %1688, %1687 ], [ 0x3FD6666660000000, %1597 ]
  %1693 = phi float [ %1689, %1687 ], [ 0.000000e+00, %1597 ]
  %1694 = phi float [ %1690, %1687 ], [ 0.000000e+00, %1597 ]
  %1695 = phi float [ %1631, %1687 ], [ 1.000000e+00, %1597 ]
  %1696 = add i32 %29, 176
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = lshr i32 %1698, 22
  %1700 = shl nuw nsw i32 %1699, 5
  %1701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1700)  ; LegacyF16ToF32(value)
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = and i32 %1703, 64
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1739, label %1706

; <label>:1706                                    ; preds = %1691
  %1707 = add i32 %29, 412
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = add i32 %1709, 0
  %1711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 131072
  %1715 = icmp eq i32 %1714, 0
  %1716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1711, %dx.types.Handle %64, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = fmul fast float %1717, %240
  %1721 = fmul fast float %1718, %243
  %1722 = fmul fast float %1719, %246
  br i1 %1715, label %1729, label %1723

; <label>:1723                                    ; preds = %1706
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = fmul fast float %1725, %1720
  %1727 = fmul fast float %1725, %1721
  %1728 = fmul fast float %1725, %1722
  br label %1729

; <label>:1729                                    ; preds = %1723, %1706
  %1730 = phi float [ %1726, %1723 ], [ %1720, %1706 ]
  %1731 = phi float [ %1727, %1723 ], [ %1721, %1706 ]
  %1732 = phi float [ %1728, %1723 ], [ %1722, %1706 ]
  %1733 = fmul fast float %1730, %1701
  %1734 = select i1 %192, float %1733, float %1730
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1734, float %1731, float %1732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = select i1 %192, float 0.000000e+00, float %1730
  %1737 = select i1 %192, float %1735, float %1731
  %1738 = select i1 %192, float 0.000000e+00, float %1732
  br label %1739

; <label>:1739                                    ; preds = %1729, %1691
  %1740 = phi float [ %1736, %1729 ], [ 0.000000e+00, %1691 ]
  %1741 = phi float [ %1737, %1729 ], [ 0.000000e+00, %1691 ]
  %1742 = phi float [ %1738, %1729 ], [ 0.000000e+00, %1691 ]
  %1743 = add i32 %29, 112
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 255
  %1747 = uitofp i32 %1746 to float
  %1748 = lshr i32 %1745, 8
  %1749 = and i32 %1748, 255
  %1750 = uitofp i32 %1749 to float
  %1751 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1752 = fmul fast float %1750, %1751
  %1753 = fadd fast float %1752, %1747
  %1754 = fmul fast float %1753, 0x3F70101020000000
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  br i1 %1096, label %1756, label %1764

; <label>:1756                                    ; preds = %1739
  %1757 = fsub fast float 1.000000e+00, %1392
  %1758 = fmul fast float %1757, %1084
  %1759 = fmul fast float %1757, %1085
  %1760 = fmul fast float %1757, %1086
  %1761 = fmul fast float %1757, %1087
  %1762 = fmul fast float %1757, %1088
  %1763 = fmul fast float %1757, %1089
  br label %1764

; <label>:1764                                    ; preds = %1756, %1739
  %1765 = phi float [ %1758, %1756 ], [ %1084, %1739 ]
  %1766 = phi float [ %1759, %1756 ], [ %1085, %1739 ]
  %1767 = phi float [ %1760, %1756 ], [ %1086, %1739 ]
  %1768 = phi float [ %1761, %1756 ], [ %1087, %1739 ]
  %1769 = phi float [ %1762, %1756 ], [ %1088, %1739 ]
  %1770 = phi float [ %1763, %1756 ], [ %1089, %1739 ]
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 3
  %1774 = icmp eq i32 %1773, 3
  br i1 %1774, label %1853, label %1775

; <label>:1775                                    ; preds = %1764
  %1776 = and i32 %1772, 16
  %1777 = icmp ne i32 %1776, 0
  %1778 = select i1 %1777, float %1392, float 0.000000e+00
  %1779 = icmp eq i32 %1773, 0
  br i1 %1779, label %1780, label %1808

; <label>:1780                                    ; preds = %1775
  %1781 = and i32 %1772, 64
  %1782 = icmp ne i32 %1781, 0
  %1783 = select i1 %1782, float %1392, float 0.000000e+00
  %1784 = fsub fast float %1612, %1765
  %1785 = fsub fast float %1613, %1766
  %1786 = fsub fast float %1614, %1767
  %1787 = fmul fast float %1778, %1784
  %1788 = fmul fast float %1778, %1785
  %1789 = fmul fast float %1778, %1786
  %1790 = fadd fast float %1787, %1765
  %1791 = fadd fast float %1788, %1766
  %1792 = fadd fast float %1789, %1767
  %1793 = fsub fast float %1598, %1090
  %1794 = fmul fast float %1778, %1793
  %1795 = fadd fast float %1794, %1090
  %1796 = fsub fast float %1740, %1768
  %1797 = fsub fast float %1741, %1769
  %1798 = fsub fast float %1742, %1770
  %1799 = fmul fast float %1783, %1796
  %1800 = fmul fast float %1783, %1797
  %1801 = fmul fast float %1783, %1798
  %1802 = fadd fast float %1799, %1768
  %1803 = fadd fast float %1800, %1769
  %1804 = fadd fast float %1801, %1770
  %1805 = fsub fast float %1755, %1094
  %1806 = fmul fast float %1778, %1805
  %1807 = fadd fast float %1806, %1094
  br label %1853

; <label>:1808                                    ; preds = %1775
  %1809 = icmp eq i32 %1773, 1
  br i1 %1809, label %1810, label %1823

; <label>:1810                                    ; preds = %1808
  %1811 = fadd fast float %1612, -1.000000e+00
  %1812 = fadd fast float %1613, -1.000000e+00
  %1813 = fadd fast float %1614, -1.000000e+00
  %1814 = fmul fast float %1778, %1811
  %1815 = fmul fast float %1778, %1812
  %1816 = fmul fast float %1778, %1813
  %1817 = fadd fast float %1814, 1.000000e+00
  %1818 = fadd fast float %1815, 1.000000e+00
  %1819 = fadd fast float %1816, 1.000000e+00
  %1820 = fmul fast float %1817, %1765
  %1821 = fmul fast float %1818, %1766
  %1822 = fmul fast float %1819, %1767
  br label %1853

; <label>:1823                                    ; preds = %1808
  %1824 = icmp eq i32 %1773, 2
  br i1 %1824, label %1825, label %1853

; <label>:1825                                    ; preds = %1823
  %1826 = call float @dx.op.unary.f32(i32 24, float %1612)  ; Sqrt(value)
  %1827 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1828 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1829 = fadd fast float %1826, -5.000000e-01
  %1830 = fadd fast float %1827, -5.000000e-01
  %1831 = fadd fast float %1828, -5.000000e-01
  %1832 = fmul fast float %1829, %1778
  %1833 = fmul fast float %1830, %1778
  %1834 = fmul fast float %1831, %1778
  %1835 = fadd fast float %1832, 5.000000e-01
  %1836 = fadd fast float %1833, 5.000000e-01
  %1837 = fadd fast float %1834, 5.000000e-01
  %1838 = fmul fast float %1835, 2.000000e+00
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = fmul fast float %1839, %1765
  %1841 = fadd fast float %1840, %1838
  %1842 = fmul fast float %1841, %1765
  %1843 = fmul fast float %1836, 2.000000e+00
  %1844 = fsub fast float 1.000000e+00, %1843
  %1845 = fmul fast float %1844, %1766
  %1846 = fadd fast float %1845, %1843
  %1847 = fmul fast float %1846, %1766
  %1848 = fmul fast float %1837, 2.000000e+00
  %1849 = fsub fast float 1.000000e+00, %1848
  %1850 = fmul fast float %1849, %1767
  %1851 = fadd fast float %1850, %1848
  %1852 = fmul fast float %1851, %1767
  br label %1853

; <label>:1853                                    ; preds = %1825, %1823, %1810, %1780, %1764
  %1854 = phi float [ %1765, %1764 ], [ %1842, %1825 ], [ %1765, %1823 ], [ %1820, %1810 ], [ %1790, %1780 ]
  %1855 = phi float [ %1766, %1764 ], [ %1847, %1825 ], [ %1766, %1823 ], [ %1821, %1810 ], [ %1791, %1780 ]
  %1856 = phi float [ %1767, %1764 ], [ %1852, %1825 ], [ %1767, %1823 ], [ %1822, %1810 ], [ %1792, %1780 ]
  %1857 = phi float [ %1768, %1764 ], [ %1768, %1825 ], [ %1768, %1823 ], [ %1768, %1810 ], [ %1802, %1780 ]
  %1858 = phi float [ %1769, %1764 ], [ %1769, %1825 ], [ %1769, %1823 ], [ %1769, %1810 ], [ %1803, %1780 ]
  %1859 = phi float [ %1770, %1764 ], [ %1770, %1825 ], [ %1770, %1823 ], [ %1770, %1810 ], [ %1804, %1780 ]
  %1860 = phi float [ %1090, %1764 ], [ %1090, %1825 ], [ %1090, %1823 ], [ %1090, %1810 ], [ %1795, %1780 ]
  %1861 = phi float [ %1094, %1764 ], [ %1094, %1825 ], [ %1094, %1823 ], [ %1094, %1810 ], [ %1807, %1780 ]
  %1862 = and i32 %1772, 12
  %1863 = icmp eq i32 %1862, 12
  br i1 %1863, label %1936, label %1864

; <label>:1864                                    ; preds = %1853
  %1865 = and i32 %1772, 2097184
  %1866 = icmp eq i32 %1865, 2097184
  %1867 = select i1 %1866, float %1392, float 0.000000e+00
  %1868 = and i32 %1772, 4194336
  %1869 = icmp eq i32 %1868, 4194336
  %1870 = select i1 %1869, float %1392, float 0.000000e+00
  %1871 = and i32 %1772, 8388640
  %1872 = icmp eq i32 %1871, 8388640
  %1873 = select i1 %1872, float %1392, float 0.000000e+00
  %1874 = icmp eq i32 %1862, 0
  br i1 %1874, label %1875, label %1888

; <label>:1875                                    ; preds = %1864
  %1876 = fsub fast float %1693, %1082
  %1877 = fsub fast float %1694, %1083
  %1878 = fmul fast float %1867, %1876
  %1879 = fmul fast float %1867, %1877
  %1880 = fadd fast float %1878, %1082
  %1881 = fadd fast float %1879, %1083
  %1882 = fsub fast float %1695, %1093
  %1883 = fmul fast float %1870, %1882
  %1884 = fadd fast float %1883, %1093
  %1885 = fsub fast float %1692, %1092
  %1886 = fmul fast float %1873, %1885
  %1887 = fadd fast float %1886, %1092
  br label %1936

; <label>:1888                                    ; preds = %1864
  %1889 = icmp eq i32 %1862, 4
  br i1 %1889, label %1890, label %1922

; <label>:1890                                    ; preds = %1888
  %1891 = fmul fast float %1867, %1693
  %1892 = fmul fast float %1867, %1694
  %1893 = fadd fast float %1891, %1082
  %1894 = fadd fast float %1892, %1083
  %1895 = call float @dx.op.binary.f32(i32 36, float %1093, float %1695)  ; FMin(a,b)
  %1896 = fsub fast float %1895, %1093
  %1897 = fmul fast float %1896, %1870
  %1898 = fadd fast float %1897, %1093
  %1899 = fadd fast float %1692, %1092
  %1900 = fmul fast float %1899, 0x3FF337FAE0000000
  %1901 = fmul fast float %1092, %1092
  %1902 = fmul fast float %1692, %1692
  %1903 = fadd fast float %1902, %1901
  %1904 = fmul fast float %1903, 0x3FE5152B00000000
  %1905 = fmul fast float %1092, 0xBFCC1F85E0000000
  %1906 = fmul fast float %1905, %1692
  %1907 = fadd fast float %1906, 0xBFE1363700000000
  %1908 = fadd fast float %1907, %1900
  %1909 = fsub fast float %1908, %1904
  %1910 = fmul fast float %1899, 0x3FBA6F0D00000000
  %1911 = fmul fast float %1903, 0x3FD0432880000000
  %1912 = fmul fast float %1092, 0xBFEF110800000000
  %1913 = fmul fast float %1912, %1692
  %1914 = fadd fast float %1913, 1.000000e+00
  %1915 = fsub fast float %1914, %1910
  %1916 = fadd fast float %1915, %1911
  %1917 = fdiv fast float %1909, %1916
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fsub fast float %1918, %1092
  %1920 = fmul fast float %1919, %1873
  %1921 = fadd fast float %1920, %1092
  br label %1936

; <label>:1922                                    ; preds = %1888
  %1923 = icmp eq i32 %1862, 8
  br i1 %1923, label %1924, label %1936

; <label>:1924                                    ; preds = %1922
  %1925 = fmul fast float %1867, %1693
  %1926 = fmul fast float %1867, %1694
  %1927 = fadd fast float %1925, %1082
  %1928 = fadd fast float %1926, %1083
  %1929 = call float @dx.op.binary.f32(i32 36, float %1093, float %1695)  ; FMin(a,b)
  %1930 = fsub fast float %1929, %1093
  %1931 = fmul fast float %1930, %1870
  %1932 = fadd fast float %1931, %1093
  %1933 = fsub fast float %1692, %1092
  %1934 = fmul fast float %1873, %1933
  %1935 = fadd fast float %1934, %1092
  br label %1936

; <label>:1936                                    ; preds = %1924, %1922, %1890, %1875, %1853, %1391, %1095, %1081
  %1937 = phi float [ %1082, %1853 ], [ %1082, %1391 ], [ %1082, %1081 ], [ %1927, %1924 ], [ %1082, %1922 ], [ %1893, %1890 ], [ %1880, %1875 ], [ %1082, %1095 ]
  %1938 = phi float [ %1083, %1853 ], [ %1083, %1391 ], [ %1083, %1081 ], [ %1928, %1924 ], [ %1083, %1922 ], [ %1894, %1890 ], [ %1881, %1875 ], [ %1083, %1095 ]
  %1939 = phi float [ %1854, %1853 ], [ %1084, %1391 ], [ %1084, %1081 ], [ %1854, %1924 ], [ %1854, %1922 ], [ %1854, %1890 ], [ %1854, %1875 ], [ %1084, %1095 ]
  %1940 = phi float [ %1855, %1853 ], [ %1085, %1391 ], [ %1085, %1081 ], [ %1855, %1924 ], [ %1855, %1922 ], [ %1855, %1890 ], [ %1855, %1875 ], [ %1085, %1095 ]
  %1941 = phi float [ %1856, %1853 ], [ %1086, %1391 ], [ %1086, %1081 ], [ %1856, %1924 ], [ %1856, %1922 ], [ %1856, %1890 ], [ %1856, %1875 ], [ %1086, %1095 ]
  %1942 = phi float [ %1857, %1853 ], [ %1087, %1391 ], [ %1087, %1081 ], [ %1857, %1924 ], [ %1857, %1922 ], [ %1857, %1890 ], [ %1857, %1875 ], [ %1087, %1095 ]
  %1943 = phi float [ %1858, %1853 ], [ %1088, %1391 ], [ %1088, %1081 ], [ %1858, %1924 ], [ %1858, %1922 ], [ %1858, %1890 ], [ %1858, %1875 ], [ %1088, %1095 ]
  %1944 = phi float [ %1859, %1853 ], [ %1089, %1391 ], [ %1089, %1081 ], [ %1859, %1924 ], [ %1859, %1922 ], [ %1859, %1890 ], [ %1859, %1875 ], [ %1089, %1095 ]
  %1945 = phi float [ %1860, %1853 ], [ %1090, %1391 ], [ %1090, %1081 ], [ %1860, %1924 ], [ %1860, %1922 ], [ %1860, %1890 ], [ %1860, %1875 ], [ %1090, %1095 ]
  %1946 = phi float [ %1092, %1853 ], [ %1092, %1391 ], [ %1092, %1081 ], [ %1935, %1924 ], [ %1092, %1922 ], [ %1921, %1890 ], [ %1887, %1875 ], [ %1092, %1095 ]
  %1947 = phi float [ %1093, %1853 ], [ %1093, %1391 ], [ %1093, %1081 ], [ %1932, %1924 ], [ %1093, %1922 ], [ %1898, %1890 ], [ %1884, %1875 ], [ %1093, %1095 ]
  %1948 = phi float [ %1861, %1853 ], [ %1094, %1391 ], [ %1094, %1081 ], [ %1861, %1924 ], [ %1861, %1922 ], [ %1861, %1890 ], [ %1861, %1875 ], [ %1094, %1095 ]
  br i1 %367, label %2790, label %1949

; <label>:1949                                    ; preds = %1936
  %1950 = icmp ult i32 %423, 3
  %1951 = add i32 %29, 56
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = add i32 %29, 60
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = or i32 %1956, %1953
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2790, label %1959

; <label>:1959                                    ; preds = %1949
  %1960 = and i32 %1953, 262144
  %1961 = icmp ne i32 %1960, 0
  %1962 = select i1 %1961, float %32, float 1.000000e+00
  %1963 = select i1 %1961, float %33, float 0.000000e+00
  %1964 = select i1 %1961, float %34, float 0.000000e+00
  %1965 = select i1 %1961, float %35, float 1.000000e+00
  %1966 = select i1 %1961, float %36, float %52
  %1967 = select i1 %1961, float %37, float %53
  %1968 = add i32 %29, 316
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = lshr i32 %1970, 16
  %1972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1971)  ; LegacyF16ToF32(value)
  %1973 = fmul fast float %1972, 0x3F50624DE0000000
  %1974 = add i32 %29, 120
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = lshr i32 %1976, 16
  %1978 = and i32 %1977, 255
  %1979 = lshr i32 %1976, 24
  %1980 = add i32 %29, 324
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 65535
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = lshr i32 %1982, 16
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = add i32 %29, 64
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 22
  %1991 = shl nuw nsw i32 %1990, 5
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = shl i32 %1989, 4
  %1994 = and i32 %1993, 32752
  %1995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1994)  ; LegacyF16ToF32(value)
  %1996 = lshr i32 %1989, 7
  %1997 = and i32 %1996, 32752
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 3
  %2001 = fmul fast float %2000, 1.000000e+03
  %2002 = fmul fast float %317, %2001
  %2003 = call float @dx.op.unary.f32(i32 22, float %2002)  ; Frc(value)
  %2004 = fadd fast float %2003, %307
  %2005 = fmul fast float %318, %2001
  %2006 = call float @dx.op.unary.f32(i32 22, float %2005)  ; Frc(value)
  %2007 = fadd fast float %2006, %309
  %2008 = fmul fast float %1973, %2001
  %2009 = call float @dx.op.unary.f32(i32 22, float %2008)  ; Frc(value)
  %2010 = fmul fast float %2009, 0x401921FB60000000
  %2011 = fadd fast float %2010, %1992
  %2012 = call float @dx.op.unary.f32(i32 13, float %2011)  ; Sin(value)
  %2013 = call float @dx.op.unary.f32(i32 12, float %2011)  ; Cos(value)
  %2014 = fsub fast float -0.000000e+00, %2012
  %2015 = fadd fast float %1966, -5.000000e-01
  %2016 = fadd fast float %1967, -5.000000e-01
  %2017 = fmul fast float %1984, %2015
  %2018 = fmul fast float %1986, %2016
  %2019 = fadd fast float %2017, 5.000000e-01
  %2020 = fadd fast float %2018, 5.000000e-01
  %2021 = fmul fast float %1995, %2019
  %2022 = fmul fast float %1998, %2020
  %2023 = fmul fast float %2013, %2021
  %2024 = call float @dx.op.tertiary.f32(i32 46, float %2014, float %2022, float %2023)  ; FMad(a,b,c)
  %2025 = fmul fast float %2012, %2021
  %2026 = call float @dx.op.tertiary.f32(i32 46, float %2013, float %2022, float %2025)  ; FMad(a,b,c)
  %2027 = fadd fast float %2004, %2024
  %2028 = fadd fast float %2007, %2026
  %2029 = icmp ugt i32 %1978, 1
  %2030 = icmp ugt i32 %1976, 33554431
  %2031 = or i1 %2030, %2029
  br i1 %2031, label %2032, label %2057

; <label>:2032                                    ; preds = %1959
  %2033 = add i32 %29, 260
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = lshr i32 %2035, 16
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = fmul fast float %2000, %2037
  %2039 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2040 = mul nuw nsw i32 %1978, %1979
  %2041 = uitofp i32 %2040 to float
  %2042 = fmul fast float %2039, %2041
  %2043 = call float @dx.op.unary.f32(i32 27, float %2042)  ; Round_ni(value)
  %2044 = fptoui float %2043 to i32
  %2045 = urem i32 %2044, %1978
  %2046 = udiv i32 %2044, %1979
  %2047 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2048 = call float @dx.op.unary.f32(i32 22, float %2028)  ; Frc(value)
  %2049 = uitofp i32 %2045 to float
  %2050 = uitofp i32 %2046 to float
  %2051 = fadd fast float %2047, %2049
  %2052 = fadd fast float %2048, %2050
  %2053 = uitofp i32 %1978 to float
  %2054 = uitofp i32 %1979 to float
  %2055 = fdiv fast float %2051, %2053
  %2056 = fdiv fast float %2052, %2054
  br label %2057

; <label>:2057                                    ; preds = %2032, %1959
  %2058 = phi float [ %2055, %2032 ], [ %2027, %1959 ]
  %2059 = phi float [ %2056, %2032 ], [ %2028, %1959 ]
  %2060 = and i32 %1953, 16777216
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2171, label %2062

; <label>:2062                                    ; preds = %2057
  %2063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2064 = extractvalue %dx.types.CBufRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.CBufRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.CBufRet.f32 %2063, 2
  %2067 = fadd fast float %2064, %131
  %2068 = fadd fast float %2065, %132
  %2069 = fadd fast float %2066, %133
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = icmp eq i32 %30, 65535
  br i1 %2073, label %2168, label %2074

; <label>:2074                                    ; preds = %2062
  %2075 = lshr i32 %30, 1
  %2076 = shl i32 %2075, 2
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = and i32 %30, 1
  %2080 = icmp ne i32 %2079, 0
  %2081 = lshr i32 %2078, 16
  %2082 = and i32 %2078, 65535
  %2083 = select i1 %2080, i32 %2081, i32 %2082
  %2084 = icmp eq i32 %2083, 65535
  br i1 %2084, label %2164, label %2085

; <label>:2085                                    ; preds = %2074
  %2086 = mul nuw nsw i32 %2083, 40
  %2087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.ResRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.ResRet.f32 %2087, 2
  %2091 = add nuw nsw i32 %2086, 12
  %2092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = add nuw nsw i32 %2086, 24
  %2097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = add nuw nsw i32 %2086, 36
  %2102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = fsub fast float %2067, %2088
  %2105 = fsub fast float %2068, %2089
  %2106 = fsub fast float %2069, %2090
  %2107 = fmul fast float %2103, %2104
  %2108 = fmul fast float %2103, %2105
  %2109 = fmul fast float %2103, %2106
  %2110 = call float @dx.op.unary.f32(i32 27, float %2107)  ; Round_ni(value)
  %2111 = call float @dx.op.unary.f32(i32 27, float %2108)  ; Round_ni(value)
  %2112 = call float @dx.op.unary.f32(i32 27, float %2109)  ; Round_ni(value)
  %2113 = fadd fast float %2110, 5.000000e-01
  %2114 = fadd fast float %2111, 5.000000e-01
  %2115 = fadd fast float %2112, 5.000000e-01
  %2116 = fmul fast float %2113, %2093
  %2117 = fmul fast float %2114, %2094
  %2118 = fmul fast float %2115, %2095
  %2119 = shl i32 %30, 2
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = add i32 %2121, 0
  %2123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2124 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2125 = call float @dx.op.unary.f32(i32 22, float %2117)  ; Frc(value)
  %2126 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2123, %dx.types.Handle %26, float %2124, float %2125, float %2126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.ResRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.ResRet.f32 %2127, 2
  %2131 = fmul fast float %2128, 1.023000e+03
  %2132 = fmul fast float %2129, 1.023000e+03
  %2133 = fmul fast float %2130, 1.023000e+03
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = call float @dx.op.unary.f32(i32 27, float %2134)  ; Round_ni(value)
  %2138 = call float @dx.op.unary.f32(i32 27, float %2135)  ; Round_ni(value)
  %2139 = call float @dx.op.unary.f32(i32 27, float %2136)  ; Round_ni(value)
  %2140 = fsub fast float %2107, %2110
  %2141 = fsub fast float %2108, %2111
  %2142 = fsub fast float %2109, %2112
  %2143 = fmul fast float %2140, 7.500000e-01
  %2144 = fmul fast float %2141, 7.500000e-01
  %2145 = fmul fast float %2142, 7.500000e-01
  %2146 = fadd fast float %2110, 1.250000e-01
  %2147 = fadd fast float %2146, %2143
  %2148 = fadd fast float %2147, %2137
  %2149 = fadd fast float %2111, 1.250000e-01
  %2150 = fadd fast float %2149, %2144
  %2151 = fadd fast float %2150, %2138
  %2152 = fadd fast float %2112, 1.250000e-01
  %2153 = fadd fast float %2152, %2145
  %2154 = fadd fast float %2153, %2139
  %2155 = fmul fast float %2148, %2098
  %2156 = fmul fast float %2151, %2099
  %2157 = fmul fast float %2154, %2100
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %2159, 0
  %2161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2161, %dx.types.Handle %24, float %2155, float %2156, float %2157, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  br label %2164

; <label>:2164                                    ; preds = %2085, %2074
  %2165 = phi float [ %2163, %2085 ], [ -1.000000e+00, %2074 ]
  %2166 = fadd fast float %2165, %2072
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  br label %2168

; <label>:2168                                    ; preds = %2164, %2062
  %2169 = phi float [ %2167, %2164 ], [ %2072, %2062 ]
  %2170 = fmul fast float %2169, %419
  br label %2171

; <label>:2171                                    ; preds = %2168, %2057
  %2172 = phi float [ %2170, %2168 ], [ %419, %2057 ]
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 256
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2223, label %2177

; <label>:2177                                    ; preds = %2171
  %2178 = add i32 %29, 448
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = add i32 %2180, 0
  %2182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2182, %dx.types.Handle %65, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = add i32 %29, 132
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = shl i32 %2187, 4
  %2189 = and i32 %2188, 32752
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = lshr i32 %2187, 7
  %2192 = and i32 %2191, 32752
  %2193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2192)  ; LegacyF16ToF32(value)
  %2194 = fsub fast float 1.000000e+00, %2172
  %2195 = call float @dx.op.binary.f32(i32 35, float %2194, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2196 = bitcast float %2172 to i32
  %2197 = sitofp i32 %2196 to float
  %2198 = fadd fast float %2197, 0xC1CFBF8940000000
  %2199 = fmul fast float %2193, %2198
  %2200 = fadd fast float %2199, 0x41CFBF8940000000
  %2201 = fptosi float %2200 to i32
  %2202 = bitcast i32 %2201 to float
  %2203 = bitcast float %2195 to i32
  %2204 = sitofp i32 %2203 to float
  %2205 = fadd fast float %2204, 0xC1CFBF8940000000
  %2206 = fmul fast float %2205, %2193
  %2207 = fadd fast float %2206, 0x41CFBF8940000000
  %2208 = fptosi float %2207 to i32
  %2209 = bitcast i32 %2208 to float
  %2210 = fmul fast float %2202, %2190
  %2211 = fmul fast float %2209, %2190
  %2212 = fsub fast float %2195, %2210
  %2213 = fadd fast float %2211, %2195
  %2214 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2215 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2216 = fsub fast float %2184, %2214
  %2217 = fsub fast float %2215, %2214
  %2218 = bitcast float %2217 to i32
  %2219 = sub nsw i32 2129859010, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2220, %2216
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  br label %2223

; <label>:2223                                    ; preds = %2177, %2171
  %2224 = phi float [ %2222, %2177 ], [ %2172, %2171 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 128
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2245, label %2229

; <label>:2229                                    ; preds = %2223
  %2230 = add i32 %29, 432
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2234, %dx.types.Handle %65, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 524288
  %2240 = icmp ne i32 %2239, 0
  %2241 = fcmp fast ogt float %2236, 0x3FE0101020000000
  %2242 = select i1 %2241, float 1.000000e+00, float 0.000000e+00
  %2243 = select i1 %2240, float %2242, float %2236
  %2244 = fmul fast float %2243, %2224
  br label %2245

; <label>:2245                                    ; preds = %2229, %2223
  %2246 = phi float [ %2244, %2229 ], [ %2224, %2223 ]
  %2247 = fcmp fast ult float %2246, 0x3F70101020000000
  br i1 %2247, label %2790, label %2248

; <label>:2248                                    ; preds = %2245
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 16
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2451, label %2253

; <label>:2253                                    ; preds = %2248
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = add i32 %29, 384
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = add i32 %2258, 0
  %2260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2260, %dx.types.Handle %64, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2262 = extractvalue %dx.types.ResRet.f32 %2261, 0
  %2263 = extractvalue %dx.types.ResRet.f32 %2261, 1
  %2264 = extractvalue %dx.types.ResRet.f32 %2261, 2
  %2265 = extractvalue %dx.types.ResRet.f32 %2261, 3
  %2266 = and i32 %2255, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = lshr i32 %2255, 8
  %2269 = and i32 %2268, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2265, %2267
  %2272 = fadd fast float %2271, %2270
  %2273 = fmul fast float %2272, 0x3F70101000000000
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 512
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2286, label %2278

; <label>:2278                                    ; preds = %2253
  %2279 = add i32 %29, 464
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %65, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  br label %2286

; <label>:2286                                    ; preds = %2278, %2253
  %2287 = phi float [ %2285, %2278 ], [ 1.000000e+00, %2253 ]
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 33554432
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2398, label %2292

; <label>:2292                                    ; preds = %2286
  %2293 = add i32 %29, 256
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 65535
  %2297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2296)  ; LegacyF16ToF32(value)
  %2298 = lshr i32 %2295, 16
  %2299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2298)  ; LegacyF16ToF32(value)
  %2300 = add i32 %29, 260
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 65535
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = lshr i32 %2306, 24
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = and i32 %2306, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2311, 0x3F70101020000000
  %2313 = lshr i32 %2306, 8
  %2314 = and i32 %2313, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = fmul fast float %2315, 0x3F70101020000000
  %2317 = lshr i32 %2306, 16
  %2318 = and i32 %2317, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = fmul fast float %2319, 0x3F70101020000000
  %2321 = add i32 %29, 252
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = lshr i32 %2323, 24
  %2325 = uitofp i32 %2324 to float
  %2326 = fmul fast float %2325, 0x3F70101020000000
  %2327 = and i32 %2323, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = fmul fast float %2328, 0x3F70101020000000
  %2330 = lshr i32 %2323, 8
  %2331 = and i32 %2330, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2332, 0x3F70101020000000
  %2334 = lshr i32 %2323, 16
  %2335 = and i32 %2334, 255
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = bitcast float %2262 to i32
  %2339 = ashr i32 %2338, 1
  %2340 = sub nsw i32 1597463174, %2339
  %2341 = bitcast i32 %2340 to float
  %2342 = fmul fast float %2262, 5.000000e-01
  %2343 = fmul fast float %2341, %2341
  %2344 = fmul fast float %2343, %2342
  %2345 = fsub fast float 1.500000e+00, %2344
  %2346 = fmul fast float %2341, %2262
  %2347 = fmul fast float %2346, %2345
  %2348 = bitcast float %2263 to i32
  %2349 = ashr i32 %2348, 1
  %2350 = sub nsw i32 1597463174, %2349
  %2351 = bitcast i32 %2350 to float
  %2352 = fmul fast float %2263, 5.000000e-01
  %2353 = fmul fast float %2351, %2351
  %2354 = fmul fast float %2353, %2352
  %2355 = fsub fast float 1.500000e+00, %2354
  %2356 = fmul fast float %2351, %2263
  %2357 = fmul fast float %2356, %2355
  %2358 = bitcast float %2264 to i32
  %2359 = ashr i32 %2358, 1
  %2360 = sub nsw i32 1597463174, %2359
  %2361 = bitcast i32 %2360 to float
  %2362 = fmul fast float %2264, 5.000000e-01
  %2363 = fmul fast float %2361, %2361
  %2364 = fmul fast float %2363, %2362
  %2365 = fsub fast float 1.500000e+00, %2364
  %2366 = fmul fast float %2361, %2264
  %2367 = fmul fast float %2366, %2365
  %2368 = fsub fast float %2347, %2329
  %2369 = fsub fast float %2357, %2333
  %2370 = fsub fast float %2367, %2337
  %2371 = fmul fast float %2368, %2297
  %2372 = fmul fast float %2369, %2299
  %2373 = fmul fast float %2370, %2304
  %2374 = fadd fast float %2371, %2312
  %2375 = fadd fast float %2372, %2316
  %2376 = fadd fast float %2373, %2320
  %2377 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2378 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2379 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2380 = fmul fast float %2377, %2377
  %2381 = fmul fast float %2378, %2378
  %2382 = fmul fast float %2379, %2379
  %2383 = fsub fast float %2380, %2262
  %2384 = fsub fast float %2381, %2263
  %2385 = fsub fast float %2382, %2264
  %2386 = fmul fast float %2383, %2287
  %2387 = fmul fast float %2384, %2287
  %2388 = fmul fast float %2385, %2287
  %2389 = fadd fast float %2386, %2262
  %2390 = fadd fast float %2387, %2263
  %2391 = fadd fast float %2388, %2264
  %2392 = fadd fast float %2309, %2273
  %2393 = fsub fast float %2392, %2326
  %2394 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2395 = fsub fast float %2394, %2273
  %2396 = fmul fast float %2395, %2287
  %2397 = fadd fast float %2396, %2273
  br label %2451

; <label>:2398                                    ; preds = %2286
  %2399 = and i32 %2289, 134217728
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2435, label %2401

; <label>:2401                                    ; preds = %2398
  %2402 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2403 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2404 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2405 = fadd fast float %2402, -5.000000e-01
  %2406 = fadd fast float %2403, -5.000000e-01
  %2407 = fadd fast float %2404, -5.000000e-01
  %2408 = fmul fast float %2405, %2287
  %2409 = fmul fast float %2406, %2287
  %2410 = fmul fast float %2407, %2287
  %2411 = fadd fast float %2408, 5.000000e-01
  %2412 = fadd fast float %2409, 5.000000e-01
  %2413 = fadd fast float %2410, 5.000000e-01
  %2414 = call float @dx.op.unary.f32(i32 24, float %2262)  ; Sqrt(value)
  %2415 = call float @dx.op.unary.f32(i32 24, float %2263)  ; Sqrt(value)
  %2416 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2417 = fmul fast float %2411, 2.000000e+00
  %2418 = fsub fast float 1.000000e+00, %2417
  %2419 = fmul fast float %2418, %2414
  %2420 = fadd fast float %2419, %2417
  %2421 = fmul fast float %2420, %2414
  %2422 = fmul fast float %2412, 2.000000e+00
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2423, %2415
  %2425 = fadd fast float %2424, %2422
  %2426 = fmul fast float %2425, %2415
  %2427 = fmul fast float %2413, 2.000000e+00
  %2428 = fsub fast float 1.000000e+00, %2427
  %2429 = fmul fast float %2428, %2416
  %2430 = fadd fast float %2429, %2427
  %2431 = fmul fast float %2430, %2416
  %2432 = fmul fast float %2421, %2421
  %2433 = fmul fast float %2426, %2426
  %2434 = fmul fast float %2431, %2431
  br label %2451

; <label>:2435                                    ; preds = %2398
  %2436 = fmul fast float %294, %294
  %2437 = fmul fast float %298, %298
  %2438 = fmul fast float %302, %302
  %2439 = fadd fast float %2436, -1.000000e+00
  %2440 = fadd fast float %2437, -1.000000e+00
  %2441 = fadd fast float %2438, -1.000000e+00
  %2442 = fmul fast float %2287, %2439
  %2443 = fmul fast float %2287, %2440
  %2444 = fmul fast float %2287, %2441
  %2445 = fadd fast float %2442, 1.000000e+00
  %2446 = fadd fast float %2443, 1.000000e+00
  %2447 = fadd fast float %2444, 1.000000e+00
  %2448 = fmul fast float %2445, %2262
  %2449 = fmul fast float %2446, %2263
  %2450 = fmul fast float %2447, %2264
  br label %2451

; <label>:2451                                    ; preds = %2435, %2401, %2292, %2248
  %2452 = phi float [ %2397, %2292 ], [ %2273, %2401 ], [ %2273, %2435 ], [ 0x3FA23C0BE0000000, %2248 ]
  %2453 = phi float [ %2389, %2292 ], [ %2432, %2401 ], [ %2448, %2435 ], [ 1.000000e+00, %2248 ]
  %2454 = phi float [ %2390, %2292 ], [ %2433, %2401 ], [ %2449, %2435 ], [ 1.000000e+00, %2248 ]
  %2455 = phi float [ %2391, %2292 ], [ %2434, %2401 ], [ %2450, %2435 ], [ 1.000000e+00, %2248 ]
  %2456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.i32 %2456, 1
  %2458 = and i32 %2457, 1
  %2459 = icmp ne i32 %2458, 0
  %2460 = add i32 %29, 372
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 32
  %2464 = icmp ne i32 %2463, 0
  %2465 = and i1 %2459, %2464
  %2466 = select i1 %2465, float 1.000000e+00, float %2453
  %2467 = select i1 %2465, float 0x3FD3333340000000, float %2454
  %2468 = select i1 %2465, float 0x3FD3333340000000, float %2455
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = and i32 %2470, 32
  %2472 = icmp eq i32 %2471, 0
  br i1 %2472, label %2545, label %2473

; <label>:2473                                    ; preds = %2451
  %2474 = add i32 %29, 124
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = add i32 %29, 400
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2481, %dx.types.Handle %64, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2483 = extractvalue %dx.types.ResRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.ResRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.ResRet.f32 %2482, 2
  %2486 = extractvalue %dx.types.ResRet.f32 %2482, 3
  %2487 = and i32 %2476, 255
  %2488 = uitofp i32 %2487 to float
  %2489 = lshr i32 %2476, 8
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = lshr i32 %2476, 16
  %2493 = and i32 %2492, 255
  %2494 = uitofp i32 %2493 to float
  %2495 = fmul fast float %2494, 0x3F70101000000000
  %2496 = fmul fast float %2483, %2488
  %2497 = fadd fast float %2496, %2491
  %2498 = fmul fast float %2497, 0x3F70101000000000
  %2499 = fadd fast float %2484, -5.000000e-01
  %2500 = fadd fast float %2486, -5.000000e-01
  %2501 = fmul fast float %2499, %2495
  %2502 = fmul fast float %2500, %2495
  %2503 = fadd fast float %2501, 5.000000e-01
  %2504 = fadd fast float %2502, 5.000000e-01
  %2505 = fmul fast float %2503, 2.000000e+00
  %2506 = fadd fast float %2505, -1.000000e+00
  %2507 = fmul fast float %2504, 2.000000e+00
  %2508 = fadd fast float %2507, -1.000000e+00
  %2509 = fadd fast float %2506, %2508
  %2510 = fmul fast float %2509, 5.000000e-01
  %2511 = fsub fast float %2506, %2508
  %2512 = fmul fast float %2511, 5.000000e-01
  %2513 = call float @dx.op.unary.f32(i32 6, float %2510)  ; FAbs(value)
  %2514 = fsub fast float 1.000000e+00, %2513
  %2515 = call float @dx.op.unary.f32(i32 6, float %2512)  ; FAbs(value)
  %2516 = fsub fast float %2514, %2515
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2512, float %2516, float %2510, float %2512, float %2516)  ; Dot3(ax,ay,az,bx,by,bz)
  %2518 = call float @dx.op.unary.f32(i32 25, float %2517)  ; Rsqrt(value)
  %2519 = fmul fast float %2510, %2518
  %2520 = fmul fast float %2512, %2518
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 67108864
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2541, label %2525

; <label>:2525                                    ; preds = %2473
  %2526 = add i32 %29, 312
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 65535
  %2530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2529)  ; LegacyF16ToF32(value)
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 65535
  %2534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2533)  ; LegacyF16ToF32(value)
  %2535 = lshr i32 %2528, 16
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = fsub fast float %2498, %2536
  %2538 = fmul fast float %2537, %2530
  %2539 = fadd fast float %2538, %2534
  %2540 = call float @dx.op.unary.f32(i32 7, float %2539)  ; Saturate(value)
  br label %2541

; <label>:2541                                    ; preds = %2525, %2473
  %2542 = phi float [ %2540, %2525 ], [ %2498, %2473 ]
  %2543 = call float @dx.op.dot2.f32(i32 54, float %2519, float %2520, float %1962, float %1963)  ; Dot2(ax,ay,bx,by)
  %2544 = call float @dx.op.dot2.f32(i32 54, float %2519, float %2520, float %1964, float %1965)  ; Dot2(ax,ay,bx,by)
  br label %2545

; <label>:2545                                    ; preds = %2541, %2451
  %2546 = phi float [ %2542, %2541 ], [ 0x3FD6666660000000, %2451 ]
  %2547 = phi float [ %2543, %2541 ], [ 0.000000e+00, %2451 ]
  %2548 = phi float [ %2544, %2541 ], [ 0.000000e+00, %2451 ]
  %2549 = phi float [ %2485, %2541 ], [ 1.000000e+00, %2451 ]
  %2550 = add i32 %29, 192
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 22
  %2554 = shl nuw nsw i32 %2553, 5
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 64
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2593, label %2560

; <label>:2560                                    ; preds = %2545
  %2561 = add i32 %29, 416
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %2563, 0
  %2565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 131072
  %2569 = icmp eq i32 %2568, 0
  %2570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2565, %dx.types.Handle %64, float %2058, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.ResRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.ResRet.f32 %2570, 2
  %2574 = fmul fast float %2571, %282
  %2575 = fmul fast float %2572, %285
  %2576 = fmul fast float %2573, %288
  br i1 %2569, label %2583, label %2577

; <label>:2577                                    ; preds = %2560
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = fmul fast float %2579, %2574
  %2581 = fmul fast float %2579, %2575
  %2582 = fmul fast float %2579, %2576
  br label %2583

; <label>:2583                                    ; preds = %2577, %2560
  %2584 = phi float [ %2580, %2577 ], [ %2574, %2560 ]
  %2585 = phi float [ %2581, %2577 ], [ %2575, %2560 ]
  %2586 = phi float [ %2582, %2577 ], [ %2576, %2560 ]
  %2587 = fmul fast float %2584, %2555
  %2588 = select i1 %192, float %2587, float %2584
  %2589 = call float @dx.op.dot3.f32(i32 55, float %2588, float %2585, float %2586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2590 = select i1 %192, float 0.000000e+00, float %2584
  %2591 = select i1 %192, float %2589, float %2585
  %2592 = select i1 %192, float 0.000000e+00, float %2586
  br label %2593

; <label>:2593                                    ; preds = %2583, %2545
  %2594 = phi float [ %2590, %2583 ], [ 0.000000e+00, %2545 ]
  %2595 = phi float [ %2591, %2583 ], [ 0.000000e+00, %2545 ]
  %2596 = phi float [ %2592, %2583 ], [ 0.000000e+00, %2545 ]
  %2597 = add i32 %29, 128
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 255
  %2601 = uitofp i32 %2600 to float
  %2602 = lshr i32 %2599, 8
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = call float @dx.op.dot3.f32(i32 55, float %2466, float %2467, float %2468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2606 = fmul fast float %2604, %2605
  %2607 = fadd fast float %2606, %2601
  %2608 = fmul fast float %2607, 0x3F70101020000000
  %2609 = call float @dx.op.unary.f32(i32 7, float %2608)  ; Saturate(value)
  br i1 %1950, label %2610, label %2618

; <label>:2610                                    ; preds = %2593
  %2611 = fsub fast float 1.000000e+00, %2246
  %2612 = fmul fast float %2611, %1939
  %2613 = fmul fast float %2611, %1940
  %2614 = fmul fast float %2611, %1941
  %2615 = fmul fast float %2611, %1942
  %2616 = fmul fast float %2611, %1943
  %2617 = fmul fast float %2611, %1944
  br label %2618

; <label>:2618                                    ; preds = %2610, %2593
  %2619 = phi float [ %2612, %2610 ], [ %1939, %2593 ]
  %2620 = phi float [ %2613, %2610 ], [ %1940, %2593 ]
  %2621 = phi float [ %2614, %2610 ], [ %1941, %2593 ]
  %2622 = phi float [ %2615, %2610 ], [ %1942, %2593 ]
  %2623 = phi float [ %2616, %2610 ], [ %1943, %2593 ]
  %2624 = phi float [ %2617, %2610 ], [ %1944, %2593 ]
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 3
  %2628 = icmp eq i32 %2627, 3
  br i1 %2628, label %2707, label %2629

; <label>:2629                                    ; preds = %2618
  %2630 = and i32 %2626, 16
  %2631 = icmp ne i32 %2630, 0
  %2632 = select i1 %2631, float %2246, float 0.000000e+00
  %2633 = icmp eq i32 %2627, 0
  br i1 %2633, label %2634, label %2662

; <label>:2634                                    ; preds = %2629
  %2635 = and i32 %2626, 64
  %2636 = icmp ne i32 %2635, 0
  %2637 = select i1 %2636, float %2246, float 0.000000e+00
  %2638 = fsub fast float %2466, %2619
  %2639 = fsub fast float %2467, %2620
  %2640 = fsub fast float %2468, %2621
  %2641 = fmul fast float %2632, %2638
  %2642 = fmul fast float %2632, %2639
  %2643 = fmul fast float %2632, %2640
  %2644 = fadd fast float %2641, %2619
  %2645 = fadd fast float %2642, %2620
  %2646 = fadd fast float %2643, %2621
  %2647 = fsub fast float %2452, %1945
  %2648 = fmul fast float %2632, %2647
  %2649 = fadd fast float %2648, %1945
  %2650 = fsub fast float %2594, %2622
  %2651 = fsub fast float %2595, %2623
  %2652 = fsub fast float %2596, %2624
  %2653 = fmul fast float %2637, %2650
  %2654 = fmul fast float %2637, %2651
  %2655 = fmul fast float %2637, %2652
  %2656 = fadd fast float %2653, %2622
  %2657 = fadd fast float %2654, %2623
  %2658 = fadd fast float %2655, %2624
  %2659 = fsub fast float %2609, %1948
  %2660 = fmul fast float %2632, %2659
  %2661 = fadd fast float %2660, %1948
  br label %2707

; <label>:2662                                    ; preds = %2629
  %2663 = icmp eq i32 %2627, 1
  br i1 %2663, label %2664, label %2677

; <label>:2664                                    ; preds = %2662
  %2665 = fadd fast float %2466, -1.000000e+00
  %2666 = fadd fast float %2467, -1.000000e+00
  %2667 = fadd fast float %2468, -1.000000e+00
  %2668 = fmul fast float %2632, %2665
  %2669 = fmul fast float %2632, %2666
  %2670 = fmul fast float %2632, %2667
  %2671 = fadd fast float %2668, 1.000000e+00
  %2672 = fadd fast float %2669, 1.000000e+00
  %2673 = fadd fast float %2670, 1.000000e+00
  %2674 = fmul fast float %2671, %2619
  %2675 = fmul fast float %2672, %2620
  %2676 = fmul fast float %2673, %2621
  br label %2707

; <label>:2677                                    ; preds = %2662
  %2678 = icmp eq i32 %2627, 2
  br i1 %2678, label %2679, label %2707

; <label>:2679                                    ; preds = %2677
  %2680 = call float @dx.op.unary.f32(i32 24, float %2466)  ; Sqrt(value)
  %2681 = call float @dx.op.unary.f32(i32 24, float %2467)  ; Sqrt(value)
  %2682 = call float @dx.op.unary.f32(i32 24, float %2468)  ; Sqrt(value)
  %2683 = fadd fast float %2680, -5.000000e-01
  %2684 = fadd fast float %2681, -5.000000e-01
  %2685 = fadd fast float %2682, -5.000000e-01
  %2686 = fmul fast float %2683, %2632
  %2687 = fmul fast float %2684, %2632
  %2688 = fmul fast float %2685, %2632
  %2689 = fadd fast float %2686, 5.000000e-01
  %2690 = fadd fast float %2687, 5.000000e-01
  %2691 = fadd fast float %2688, 5.000000e-01
  %2692 = fmul fast float %2689, 2.000000e+00
  %2693 = fsub fast float 1.000000e+00, %2692
  %2694 = fmul fast float %2693, %2619
  %2695 = fadd fast float %2694, %2692
  %2696 = fmul fast float %2695, %2619
  %2697 = fmul fast float %2690, 2.000000e+00
  %2698 = fsub fast float 1.000000e+00, %2697
  %2699 = fmul fast float %2698, %2620
  %2700 = fadd fast float %2699, %2697
  %2701 = fmul fast float %2700, %2620
  %2702 = fmul fast float %2691, 2.000000e+00
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = fmul fast float %2703, %2621
  %2705 = fadd fast float %2704, %2702
  %2706 = fmul fast float %2705, %2621
  br label %2707

; <label>:2707                                    ; preds = %2679, %2677, %2664, %2634, %2618
  %2708 = phi float [ %2619, %2618 ], [ %2696, %2679 ], [ %2619, %2677 ], [ %2674, %2664 ], [ %2644, %2634 ]
  %2709 = phi float [ %2620, %2618 ], [ %2701, %2679 ], [ %2620, %2677 ], [ %2675, %2664 ], [ %2645, %2634 ]
  %2710 = phi float [ %2621, %2618 ], [ %2706, %2679 ], [ %2621, %2677 ], [ %2676, %2664 ], [ %2646, %2634 ]
  %2711 = phi float [ %2622, %2618 ], [ %2622, %2679 ], [ %2622, %2677 ], [ %2622, %2664 ], [ %2656, %2634 ]
  %2712 = phi float [ %2623, %2618 ], [ %2623, %2679 ], [ %2623, %2677 ], [ %2623, %2664 ], [ %2657, %2634 ]
  %2713 = phi float [ %2624, %2618 ], [ %2624, %2679 ], [ %2624, %2677 ], [ %2624, %2664 ], [ %2658, %2634 ]
  %2714 = phi float [ %1945, %2618 ], [ %1945, %2679 ], [ %1945, %2677 ], [ %1945, %2664 ], [ %2649, %2634 ]
  %2715 = phi float [ %1948, %2618 ], [ %1948, %2679 ], [ %1948, %2677 ], [ %1948, %2664 ], [ %2661, %2634 ]
  %2716 = and i32 %2626, 12
  %2717 = icmp eq i32 %2716, 12
  br i1 %2717, label %2790, label %2718

; <label>:2718                                    ; preds = %2707
  %2719 = and i32 %2626, 2097184
  %2720 = icmp eq i32 %2719, 2097184
  %2721 = select i1 %2720, float %2246, float 0.000000e+00
  %2722 = and i32 %2626, 4194336
  %2723 = icmp eq i32 %2722, 4194336
  %2724 = select i1 %2723, float %2246, float 0.000000e+00
  %2725 = and i32 %2626, 8388640
  %2726 = icmp eq i32 %2725, 8388640
  %2727 = select i1 %2726, float %2246, float 0.000000e+00
  %2728 = icmp eq i32 %2716, 0
  br i1 %2728, label %2729, label %2742

; <label>:2729                                    ; preds = %2718
  %2730 = fsub fast float %2547, %1937
  %2731 = fsub fast float %2548, %1938
  %2732 = fmul fast float %2721, %2730
  %2733 = fmul fast float %2721, %2731
  %2734 = fadd fast float %2732, %1937
  %2735 = fadd fast float %2733, %1938
  %2736 = fsub fast float %2549, %1947
  %2737 = fmul fast float %2724, %2736
  %2738 = fadd fast float %2737, %1947
  %2739 = fsub fast float %2546, %1946
  %2740 = fmul fast float %2727, %2739
  %2741 = fadd fast float %2740, %1946
  br label %2790

; <label>:2742                                    ; preds = %2718
  %2743 = icmp eq i32 %2716, 4
  br i1 %2743, label %2744, label %2776

; <label>:2744                                    ; preds = %2742
  %2745 = fmul fast float %2721, %2547
  %2746 = fmul fast float %2721, %2548
  %2747 = fadd fast float %2745, %1937
  %2748 = fadd fast float %2746, %1938
  %2749 = call float @dx.op.binary.f32(i32 36, float %1947, float %2549)  ; FMin(a,b)
  %2750 = fsub fast float %2749, %1947
  %2751 = fmul fast float %2750, %2724
  %2752 = fadd fast float %2751, %1947
  %2753 = fadd fast float %2546, %1946
  %2754 = fmul fast float %2753, 0x3FF337FAE0000000
  %2755 = fmul fast float %1946, %1946
  %2756 = fmul fast float %2546, %2546
  %2757 = fadd fast float %2756, %2755
  %2758 = fmul fast float %2757, 0x3FE5152B00000000
  %2759 = fmul fast float %1946, 0xBFCC1F85E0000000
  %2760 = fmul fast float %2759, %2546
  %2761 = fadd fast float %2760, 0xBFE1363700000000
  %2762 = fadd fast float %2761, %2754
  %2763 = fsub fast float %2762, %2758
  %2764 = fmul fast float %2753, 0x3FBA6F0D00000000
  %2765 = fmul fast float %2757, 0x3FD0432880000000
  %2766 = fmul fast float %1946, 0xBFEF110800000000
  %2767 = fmul fast float %2766, %2546
  %2768 = fadd fast float %2767, 1.000000e+00
  %2769 = fsub fast float %2768, %2764
  %2770 = fadd fast float %2769, %2765
  %2771 = fdiv fast float %2763, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = fsub fast float %2772, %1946
  %2774 = fmul fast float %2773, %2727
  %2775 = fadd fast float %2774, %1946
  br label %2790

; <label>:2776                                    ; preds = %2742
  %2777 = icmp eq i32 %2716, 8
  br i1 %2777, label %2778, label %2790

; <label>:2778                                    ; preds = %2776
  %2779 = fmul fast float %2721, %2547
  %2780 = fmul fast float %2721, %2548
  %2781 = fadd fast float %2779, %1937
  %2782 = fadd fast float %2780, %1938
  %2783 = call float @dx.op.binary.f32(i32 36, float %1947, float %2549)  ; FMin(a,b)
  %2784 = fsub fast float %2783, %1947
  %2785 = fmul fast float %2784, %2724
  %2786 = fadd fast float %2785, %1947
  %2787 = fsub fast float %2546, %1946
  %2788 = fmul fast float %2727, %2787
  %2789 = fadd fast float %2788, %1946
  br label %2790

; <label>:2790                                    ; preds = %2778, %2776, %2744, %2729, %2707, %2245, %1949, %1936
  %2791 = phi float [ %1937, %2707 ], [ %1937, %2245 ], [ %1937, %1936 ], [ %2781, %2778 ], [ %1937, %2776 ], [ %2747, %2744 ], [ %2734, %2729 ], [ %1937, %1949 ]
  %2792 = phi float [ %1938, %2707 ], [ %1938, %2245 ], [ %1938, %1936 ], [ %2782, %2778 ], [ %1938, %2776 ], [ %2748, %2744 ], [ %2735, %2729 ], [ %1938, %1949 ]
  %2793 = phi float [ %2708, %2707 ], [ %1939, %2245 ], [ %1939, %1936 ], [ %2708, %2778 ], [ %2708, %2776 ], [ %2708, %2744 ], [ %2708, %2729 ], [ %1939, %1949 ]
  %2794 = phi float [ %2709, %2707 ], [ %1940, %2245 ], [ %1940, %1936 ], [ %2709, %2778 ], [ %2709, %2776 ], [ %2709, %2744 ], [ %2709, %2729 ], [ %1940, %1949 ]
  %2795 = phi float [ %2710, %2707 ], [ %1941, %2245 ], [ %1941, %1936 ], [ %2710, %2778 ], [ %2710, %2776 ], [ %2710, %2744 ], [ %2710, %2729 ], [ %1941, %1949 ]
  %2796 = phi float [ %2711, %2707 ], [ %1942, %2245 ], [ %1942, %1936 ], [ %2711, %2778 ], [ %2711, %2776 ], [ %2711, %2744 ], [ %2711, %2729 ], [ %1942, %1949 ]
  %2797 = phi float [ %2712, %2707 ], [ %1943, %2245 ], [ %1943, %1936 ], [ %2712, %2778 ], [ %2712, %2776 ], [ %2712, %2744 ], [ %2712, %2729 ], [ %1943, %1949 ]
  %2798 = phi float [ %2713, %2707 ], [ %1944, %2245 ], [ %1944, %1936 ], [ %2713, %2778 ], [ %2713, %2776 ], [ %2713, %2744 ], [ %2713, %2729 ], [ %1944, %1949 ]
  %2799 = phi float [ %2714, %2707 ], [ %1945, %2245 ], [ %1945, %1936 ], [ %2714, %2778 ], [ %2714, %2776 ], [ %2714, %2744 ], [ %2714, %2729 ], [ %1945, %1949 ]
  %2800 = phi float [ %1946, %2707 ], [ %1946, %2245 ], [ %1946, %1936 ], [ %2789, %2778 ], [ %1946, %2776 ], [ %2775, %2744 ], [ %2741, %2729 ], [ %1946, %1949 ]
  %2801 = phi float [ %1947, %2707 ], [ %1947, %2245 ], [ %1947, %1936 ], [ %2786, %2778 ], [ %1947, %2776 ], [ %2752, %2744 ], [ %2738, %2729 ], [ %1947, %1949 ]
  %2802 = phi float [ %2715, %2707 ], [ %1948, %2245 ], [ %1948, %1936 ], [ %2715, %2778 ], [ %2715, %2776 ], [ %2715, %2744 ], [ %2715, %2729 ], [ %1948, %1949 ]
  br i1 %369, label %3644, label %2803

; <label>:2803                                    ; preds = %2790
  %2804 = icmp ult i32 %423, 4
  %2805 = add i32 %29, 72
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = add i32 %29, 76
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = or i32 %2810, %2807
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %3644, label %2813

; <label>:2813                                    ; preds = %2803
  %2814 = and i32 %2807, 262144
  %2815 = icmp ne i32 %2814, 0
  %2816 = select i1 %2815, float %32, float 1.000000e+00
  %2817 = select i1 %2815, float %33, float 0.000000e+00
  %2818 = select i1 %2815, float %34, float 0.000000e+00
  %2819 = select i1 %2815, float %35, float 1.000000e+00
  %2820 = select i1 %2815, float %36, float %52
  %2821 = select i1 %2815, float %37, float %53
  %2822 = add i32 %29, 332
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = lshr i32 %2824, 16
  %2826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2825)  ; LegacyF16ToF32(value)
  %2827 = fmul fast float %2826, 0x3F50624DE0000000
  %2828 = add i32 %29, 136
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = lshr i32 %2830, 16
  %2832 = and i32 %2831, 255
  %2833 = lshr i32 %2830, 24
  %2834 = add i32 %29, 340
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 65535
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = lshr i32 %2836, 16
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = add i32 %29, 80
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = lshr i32 %2843, 22
  %2845 = shl nuw nsw i32 %2844, 5
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = shl i32 %2843, 4
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = lshr i32 %2843, 7
  %2851 = and i32 %2850, 32752
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 3
  %2855 = fmul fast float %2854, 1.000000e+03
  %2856 = fmul fast float %359, %2855
  %2857 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  %2858 = fadd fast float %2857, %349
  %2859 = fmul fast float %360, %2855
  %2860 = call float @dx.op.unary.f32(i32 22, float %2859)  ; Frc(value)
  %2861 = fadd fast float %2860, %351
  %2862 = fmul fast float %2827, %2855
  %2863 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2864 = fmul fast float %2863, 0x401921FB60000000
  %2865 = fadd fast float %2864, %2846
  %2866 = call float @dx.op.unary.f32(i32 13, float %2865)  ; Sin(value)
  %2867 = call float @dx.op.unary.f32(i32 12, float %2865)  ; Cos(value)
  %2868 = fsub fast float -0.000000e+00, %2866
  %2869 = fadd fast float %2820, -5.000000e-01
  %2870 = fadd fast float %2821, -5.000000e-01
  %2871 = fmul fast float %2838, %2869
  %2872 = fmul fast float %2840, %2870
  %2873 = fadd fast float %2871, 5.000000e-01
  %2874 = fadd fast float %2872, 5.000000e-01
  %2875 = fmul fast float %2849, %2873
  %2876 = fmul fast float %2852, %2874
  %2877 = fmul fast float %2867, %2875
  %2878 = call float @dx.op.tertiary.f32(i32 46, float %2868, float %2876, float %2877)  ; FMad(a,b,c)
  %2879 = fmul fast float %2866, %2875
  %2880 = call float @dx.op.tertiary.f32(i32 46, float %2867, float %2876, float %2879)  ; FMad(a,b,c)
  %2881 = fadd fast float %2858, %2878
  %2882 = fadd fast float %2861, %2880
  %2883 = icmp ugt i32 %2832, 1
  %2884 = icmp ugt i32 %2830, 33554431
  %2885 = or i1 %2884, %2883
  br i1 %2885, label %2886, label %2911

; <label>:2886                                    ; preds = %2813
  %2887 = add i32 %29, 276
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = lshr i32 %2889, 16
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = fmul fast float %2854, %2891
  %2893 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2894 = mul nuw nsw i32 %2832, %2833
  %2895 = uitofp i32 %2894 to float
  %2896 = fmul fast float %2893, %2895
  %2897 = call float @dx.op.unary.f32(i32 27, float %2896)  ; Round_ni(value)
  %2898 = fptoui float %2897 to i32
  %2899 = urem i32 %2898, %2832
  %2900 = udiv i32 %2898, %2833
  %2901 = call float @dx.op.unary.f32(i32 22, float %2881)  ; Frc(value)
  %2902 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2903 = uitofp i32 %2899 to float
  %2904 = uitofp i32 %2900 to float
  %2905 = fadd fast float %2901, %2903
  %2906 = fadd fast float %2902, %2904
  %2907 = uitofp i32 %2832 to float
  %2908 = uitofp i32 %2833 to float
  %2909 = fdiv fast float %2905, %2907
  %2910 = fdiv fast float %2906, %2908
  br label %2911

; <label>:2911                                    ; preds = %2886, %2813
  %2912 = phi float [ %2909, %2886 ], [ %2881, %2813 ]
  %2913 = phi float [ %2910, %2886 ], [ %2882, %2813 ]
  %2914 = and i32 %2807, 16777216
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %3025, label %2916

; <label>:2916                                    ; preds = %2911
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = fadd fast float %2918, %131
  %2922 = fadd fast float %2919, %132
  %2923 = fadd fast float %2920, %133
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2927 = icmp eq i32 %30, 65535
  br i1 %2927, label %3022, label %2928

; <label>:2928                                    ; preds = %2916
  %2929 = lshr i32 %30, 1
  %2930 = shl i32 %2929, 2
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %30, 1
  %2934 = icmp ne i32 %2933, 0
  %2935 = lshr i32 %2932, 16
  %2936 = and i32 %2932, 65535
  %2937 = select i1 %2934, i32 %2935, i32 %2936
  %2938 = icmp eq i32 %2937, 65535
  br i1 %2938, label %3018, label %2939

; <label>:2939                                    ; preds = %2928
  %2940 = mul nuw nsw i32 %2937, 40
  %2941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = add nuw nsw i32 %2940, 12
  %2946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.ResRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.ResRet.f32 %2946, 2
  %2950 = add nuw nsw i32 %2940, 24
  %2951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = add nuw nsw i32 %2940, 36
  %2956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  %2958 = fsub fast float %2921, %2942
  %2959 = fsub fast float %2922, %2943
  %2960 = fsub fast float %2923, %2944
  %2961 = fmul fast float %2957, %2958
  %2962 = fmul fast float %2957, %2959
  %2963 = fmul fast float %2957, %2960
  %2964 = call float @dx.op.unary.f32(i32 27, float %2961)  ; Round_ni(value)
  %2965 = call float @dx.op.unary.f32(i32 27, float %2962)  ; Round_ni(value)
  %2966 = call float @dx.op.unary.f32(i32 27, float %2963)  ; Round_ni(value)
  %2967 = fadd fast float %2964, 5.000000e-01
  %2968 = fadd fast float %2965, 5.000000e-01
  %2969 = fadd fast float %2966, 5.000000e-01
  %2970 = fmul fast float %2967, %2947
  %2971 = fmul fast float %2968, %2948
  %2972 = fmul fast float %2969, %2949
  %2973 = shl i32 %30, 2
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = add i32 %2975, 0
  %2977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2978 = call float @dx.op.unary.f32(i32 22, float %2970)  ; Frc(value)
  %2979 = call float @dx.op.unary.f32(i32 22, float %2971)  ; Frc(value)
  %2980 = call float @dx.op.unary.f32(i32 22, float %2972)  ; Frc(value)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2977, %dx.types.Handle %26, float %2978, float %2979, float %2980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = fmul fast float %2982, 1.023000e+03
  %2986 = fmul fast float %2983, 1.023000e+03
  %2987 = fmul fast float %2984, 1.023000e+03
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = call float @dx.op.unary.f32(i32 27, float %2988)  ; Round_ni(value)
  %2992 = call float @dx.op.unary.f32(i32 27, float %2989)  ; Round_ni(value)
  %2993 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2994 = fsub fast float %2961, %2964
  %2995 = fsub fast float %2962, %2965
  %2996 = fsub fast float %2963, %2966
  %2997 = fmul fast float %2994, 7.500000e-01
  %2998 = fmul fast float %2995, 7.500000e-01
  %2999 = fmul fast float %2996, 7.500000e-01
  %3000 = fadd fast float %2964, 1.250000e-01
  %3001 = fadd fast float %3000, %2997
  %3002 = fadd fast float %3001, %2991
  %3003 = fadd fast float %2965, 1.250000e-01
  %3004 = fadd fast float %3003, %2998
  %3005 = fadd fast float %3004, %2992
  %3006 = fadd fast float %2966, 1.250000e-01
  %3007 = fadd fast float %3006, %2999
  %3008 = fadd fast float %3007, %2993
  %3009 = fmul fast float %3002, %2952
  %3010 = fmul fast float %3005, %2953
  %3011 = fmul fast float %3008, %2954
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = add i32 %3013, 0
  %3015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3015, %dx.types.Handle %24, float %3009, float %3010, float %3011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  br label %3018

; <label>:3018                                    ; preds = %2939, %2928
  %3019 = phi float [ %3017, %2939 ], [ -1.000000e+00, %2928 ]
  %3020 = fadd fast float %3019, %2926
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  br label %3022

; <label>:3022                                    ; preds = %3018, %2916
  %3023 = phi float [ %3021, %3018 ], [ %2926, %2916 ]
  %3024 = fmul fast float %3023, %418
  br label %3025

; <label>:3025                                    ; preds = %3022, %2911
  %3026 = phi float [ %3024, %3022 ], [ %418, %2911 ]
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 256
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3077, label %3031

; <label>:3031                                    ; preds = %3025
  %3032 = add i32 %29, 452
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3036, %dx.types.Handle %65, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  %3039 = add i32 %29, 148
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = shl i32 %3041, 4
  %3043 = and i32 %3042, 32752
  %3044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3043)  ; LegacyF16ToF32(value)
  %3045 = lshr i32 %3041, 7
  %3046 = and i32 %3045, 32752
  %3047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3046)  ; LegacyF16ToF32(value)
  %3048 = fsub fast float 1.000000e+00, %3026
  %3049 = call float @dx.op.binary.f32(i32 35, float %3048, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3050 = bitcast float %3026 to i32
  %3051 = sitofp i32 %3050 to float
  %3052 = fadd fast float %3051, 0xC1CFBF8940000000
  %3053 = fmul fast float %3047, %3052
  %3054 = fadd fast float %3053, 0x41CFBF8940000000
  %3055 = fptosi float %3054 to i32
  %3056 = bitcast i32 %3055 to float
  %3057 = bitcast float %3049 to i32
  %3058 = sitofp i32 %3057 to float
  %3059 = fadd fast float %3058, 0xC1CFBF8940000000
  %3060 = fmul fast float %3059, %3047
  %3061 = fadd fast float %3060, 0x41CFBF8940000000
  %3062 = fptosi float %3061 to i32
  %3063 = bitcast i32 %3062 to float
  %3064 = fmul fast float %3056, %3044
  %3065 = fmul fast float %3063, %3044
  %3066 = fsub fast float %3049, %3064
  %3067 = fadd fast float %3065, %3049
  %3068 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3069 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3070 = fsub fast float %3038, %3068
  %3071 = fsub fast float %3069, %3068
  %3072 = bitcast float %3071 to i32
  %3073 = sub nsw i32 2129859010, %3072
  %3074 = bitcast i32 %3073 to float
  %3075 = fmul fast float %3074, %3070
  %3076 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  br label %3077

; <label>:3077                                    ; preds = %3031, %3025
  %3078 = phi float [ %3076, %3031 ], [ %3026, %3025 ]
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 128
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3099, label %3083

; <label>:3083                                    ; preds = %3077
  %3084 = add i32 %29, 436
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = add i32 %3086, 0
  %3088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3088, %dx.types.Handle %65, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, 524288
  %3094 = icmp ne i32 %3093, 0
  %3095 = fcmp fast ogt float %3090, 0x3FE0101020000000
  %3096 = select i1 %3095, float 1.000000e+00, float 0.000000e+00
  %3097 = select i1 %3094, float %3096, float %3090
  %3098 = fmul fast float %3097, %3078
  br label %3099

; <label>:3099                                    ; preds = %3083, %3077
  %3100 = phi float [ %3098, %3083 ], [ %3078, %3077 ]
  %3101 = fcmp fast ult float %3100, 0x3F70101020000000
  br i1 %3101, label %3644, label %3102

; <label>:3102                                    ; preds = %3099
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 16
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3305, label %3107

; <label>:3107                                    ; preds = %3102
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %29, 388
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = add i32 %3112, 0
  %3114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3114, %dx.types.Handle %64, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3116 = extractvalue %dx.types.ResRet.f32 %3115, 0
  %3117 = extractvalue %dx.types.ResRet.f32 %3115, 1
  %3118 = extractvalue %dx.types.ResRet.f32 %3115, 2
  %3119 = extractvalue %dx.types.ResRet.f32 %3115, 3
  %3120 = and i32 %3109, 255
  %3121 = uitofp i32 %3120 to float
  %3122 = lshr i32 %3109, 8
  %3123 = and i32 %3122, 255
  %3124 = uitofp i32 %3123 to float
  %3125 = fmul fast float %3119, %3121
  %3126 = fadd fast float %3125, %3124
  %3127 = fmul fast float %3126, 0x3F70101000000000
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 512
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3140, label %3132

; <label>:3132                                    ; preds = %3107
  %3133 = add i32 %29, 468
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %65, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  br label %3140

; <label>:3140                                    ; preds = %3132, %3107
  %3141 = phi float [ %3139, %3132 ], [ 1.000000e+00, %3107 ]
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 33554432
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3252, label %3146

; <label>:3146                                    ; preds = %3140
  %3147 = add i32 %29, 272
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 65535
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = lshr i32 %3149, 16
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = add i32 %29, 276
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 65535
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = lshr i32 %3160, 24
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3162, 0x3F70101020000000
  %3164 = and i32 %3160, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = fmul fast float %3165, 0x3F70101020000000
  %3167 = lshr i32 %3160, 8
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = fmul fast float %3169, 0x3F70101020000000
  %3171 = lshr i32 %3160, 16
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 0x3F70101020000000
  %3175 = add i32 %29, 268
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = lshr i32 %3177, 24
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = and i32 %3177, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = lshr i32 %3177, 8
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = lshr i32 %3177, 16
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = bitcast float %3116 to i32
  %3193 = ashr i32 %3192, 1
  %3194 = sub nsw i32 1597463174, %3193
  %3195 = bitcast i32 %3194 to float
  %3196 = fmul fast float %3116, 5.000000e-01
  %3197 = fmul fast float %3195, %3195
  %3198 = fmul fast float %3197, %3196
  %3199 = fsub fast float 1.500000e+00, %3198
  %3200 = fmul fast float %3195, %3116
  %3201 = fmul fast float %3200, %3199
  %3202 = bitcast float %3117 to i32
  %3203 = ashr i32 %3202, 1
  %3204 = sub nsw i32 1597463174, %3203
  %3205 = bitcast i32 %3204 to float
  %3206 = fmul fast float %3117, 5.000000e-01
  %3207 = fmul fast float %3205, %3205
  %3208 = fmul fast float %3207, %3206
  %3209 = fsub fast float 1.500000e+00, %3208
  %3210 = fmul fast float %3205, %3117
  %3211 = fmul fast float %3210, %3209
  %3212 = bitcast float %3118 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3118, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3118
  %3221 = fmul fast float %3220, %3219
  %3222 = fsub fast float %3201, %3183
  %3223 = fsub fast float %3211, %3187
  %3224 = fsub fast float %3221, %3191
  %3225 = fmul fast float %3222, %3151
  %3226 = fmul fast float %3223, %3153
  %3227 = fmul fast float %3224, %3158
  %3228 = fadd fast float %3225, %3166
  %3229 = fadd fast float %3226, %3170
  %3230 = fadd fast float %3227, %3174
  %3231 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3233 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3234 = fmul fast float %3231, %3231
  %3235 = fmul fast float %3232, %3232
  %3236 = fmul fast float %3233, %3233
  %3237 = fsub fast float %3234, %3116
  %3238 = fsub fast float %3235, %3117
  %3239 = fsub fast float %3236, %3118
  %3240 = fmul fast float %3237, %3141
  %3241 = fmul fast float %3238, %3141
  %3242 = fmul fast float %3239, %3141
  %3243 = fadd fast float %3240, %3116
  %3244 = fadd fast float %3241, %3117
  %3245 = fadd fast float %3242, %3118
  %3246 = fadd fast float %3163, %3127
  %3247 = fsub fast float %3246, %3180
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3249 = fsub fast float %3248, %3127
  %3250 = fmul fast float %3249, %3141
  %3251 = fadd fast float %3250, %3127
  br label %3305

; <label>:3252                                    ; preds = %3140
  %3253 = and i32 %3143, 134217728
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %3289, label %3255

; <label>:3255                                    ; preds = %3252
  %3256 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3257 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3258 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3259 = fadd fast float %3256, -5.000000e-01
  %3260 = fadd fast float %3257, -5.000000e-01
  %3261 = fadd fast float %3258, -5.000000e-01
  %3262 = fmul fast float %3259, %3141
  %3263 = fmul fast float %3260, %3141
  %3264 = fmul fast float %3261, %3141
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = fadd fast float %3263, 5.000000e-01
  %3267 = fadd fast float %3264, 5.000000e-01
  %3268 = call float @dx.op.unary.f32(i32 24, float %3116)  ; Sqrt(value)
  %3269 = call float @dx.op.unary.f32(i32 24, float %3117)  ; Sqrt(value)
  %3270 = call float @dx.op.unary.f32(i32 24, float %3118)  ; Sqrt(value)
  %3271 = fmul fast float %3265, 2.000000e+00
  %3272 = fsub fast float 1.000000e+00, %3271
  %3273 = fmul fast float %3272, %3268
  %3274 = fadd fast float %3273, %3271
  %3275 = fmul fast float %3274, %3268
  %3276 = fmul fast float %3266, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3269
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3269
  %3281 = fmul fast float %3267, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3270
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3270
  %3286 = fmul fast float %3275, %3275
  %3287 = fmul fast float %3280, %3280
  %3288 = fmul fast float %3285, %3285
  br label %3305

; <label>:3289                                    ; preds = %3252
  %3290 = fmul fast float %336, %336
  %3291 = fmul fast float %340, %340
  %3292 = fmul fast float %344, %344
  %3293 = fadd fast float %3290, -1.000000e+00
  %3294 = fadd fast float %3291, -1.000000e+00
  %3295 = fadd fast float %3292, -1.000000e+00
  %3296 = fmul fast float %3141, %3293
  %3297 = fmul fast float %3141, %3294
  %3298 = fmul fast float %3141, %3295
  %3299 = fadd fast float %3296, 1.000000e+00
  %3300 = fadd fast float %3297, 1.000000e+00
  %3301 = fadd fast float %3298, 1.000000e+00
  %3302 = fmul fast float %3299, %3116
  %3303 = fmul fast float %3300, %3117
  %3304 = fmul fast float %3301, %3118
  br label %3305

; <label>:3305                                    ; preds = %3289, %3255, %3146, %3102
  %3306 = phi float [ %3251, %3146 ], [ %3127, %3255 ], [ %3127, %3289 ], [ 0x3FA23C0BE0000000, %3102 ]
  %3307 = phi float [ %3243, %3146 ], [ %3286, %3255 ], [ %3302, %3289 ], [ 1.000000e+00, %3102 ]
  %3308 = phi float [ %3244, %3146 ], [ %3287, %3255 ], [ %3303, %3289 ], [ 1.000000e+00, %3102 ]
  %3309 = phi float [ %3245, %3146 ], [ %3288, %3255 ], [ %3304, %3289 ], [ 1.000000e+00, %3102 ]
  %3310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.i32 %3310, 1
  %3312 = and i32 %3311, 1
  %3313 = icmp ne i32 %3312, 0
  %3314 = add i32 %29, 372
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 32
  %3318 = icmp ne i32 %3317, 0
  %3319 = and i1 %3313, %3318
  %3320 = select i1 %3319, float 1.000000e+00, float %3307
  %3321 = select i1 %3319, float 0x3FD3333340000000, float %3308
  %3322 = select i1 %3319, float 0x3FD3333340000000, float %3309
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 32
  %3326 = icmp eq i32 %3325, 0
  br i1 %3326, label %3399, label %3327

; <label>:3327                                    ; preds = %3305
  %3328 = add i32 %29, 140
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %29, 404
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = add i32 %3333, 0
  %3335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3335, %dx.types.Handle %64, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3337 = extractvalue %dx.types.ResRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.ResRet.f32 %3336, 1
  %3339 = extractvalue %dx.types.ResRet.f32 %3336, 2
  %3340 = extractvalue %dx.types.ResRet.f32 %3336, 3
  %3341 = and i32 %3330, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = lshr i32 %3330, 8
  %3344 = and i32 %3343, 255
  %3345 = uitofp i32 %3344 to float
  %3346 = lshr i32 %3330, 16
  %3347 = and i32 %3346, 255
  %3348 = uitofp i32 %3347 to float
  %3349 = fmul fast float %3348, 0x3F70101000000000
  %3350 = fmul fast float %3337, %3342
  %3351 = fadd fast float %3350, %3345
  %3352 = fmul fast float %3351, 0x3F70101000000000
  %3353 = fadd fast float %3338, -5.000000e-01
  %3354 = fadd fast float %3340, -5.000000e-01
  %3355 = fmul fast float %3353, %3349
  %3356 = fmul fast float %3354, %3349
  %3357 = fadd fast float %3355, 5.000000e-01
  %3358 = fadd fast float %3356, 5.000000e-01
  %3359 = fmul fast float %3357, 2.000000e+00
  %3360 = fadd fast float %3359, -1.000000e+00
  %3361 = fmul fast float %3358, 2.000000e+00
  %3362 = fadd fast float %3361, -1.000000e+00
  %3363 = fadd fast float %3360, %3362
  %3364 = fmul fast float %3363, 5.000000e-01
  %3365 = fsub fast float %3360, %3362
  %3366 = fmul fast float %3365, 5.000000e-01
  %3367 = call float @dx.op.unary.f32(i32 6, float %3364)  ; FAbs(value)
  %3368 = fsub fast float 1.000000e+00, %3367
  %3369 = call float @dx.op.unary.f32(i32 6, float %3366)  ; FAbs(value)
  %3370 = fsub fast float %3368, %3369
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3364, float %3366, float %3370, float %3364, float %3366, float %3370)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = call float @dx.op.unary.f32(i32 25, float %3371)  ; Rsqrt(value)
  %3373 = fmul fast float %3364, %3372
  %3374 = fmul fast float %3366, %3372
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 67108864
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3395, label %3379

; <label>:3379                                    ; preds = %3327
  %3380 = add i32 %29, 328
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 65535
  %3384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3383)  ; LegacyF16ToF32(value)
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 65535
  %3388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3387)  ; LegacyF16ToF32(value)
  %3389 = lshr i32 %3382, 16
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = fsub fast float %3352, %3390
  %3392 = fmul fast float %3391, %3384
  %3393 = fadd fast float %3392, %3388
  %3394 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  br label %3395

; <label>:3395                                    ; preds = %3379, %3327
  %3396 = phi float [ %3394, %3379 ], [ %3352, %3327 ]
  %3397 = call float @dx.op.dot2.f32(i32 54, float %3373, float %3374, float %2816, float %2817)  ; Dot2(ax,ay,bx,by)
  %3398 = call float @dx.op.dot2.f32(i32 54, float %3373, float %3374, float %2818, float %2819)  ; Dot2(ax,ay,bx,by)
  br label %3399

; <label>:3399                                    ; preds = %3395, %3305
  %3400 = phi float [ %3396, %3395 ], [ 0x3FD6666660000000, %3305 ]
  %3401 = phi float [ %3397, %3395 ], [ 0.000000e+00, %3305 ]
  %3402 = phi float [ %3398, %3395 ], [ 0.000000e+00, %3305 ]
  %3403 = phi float [ %3339, %3395 ], [ 1.000000e+00, %3305 ]
  %3404 = add i32 %29, 208
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = lshr i32 %3406, 22
  %3408 = shl nuw nsw i32 %3407, 5
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 64
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3447, label %3414

; <label>:3414                                    ; preds = %3399
  %3415 = add i32 %29, 420
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = add i32 %3417, 0
  %3419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 131072
  %3423 = icmp eq i32 %3422, 0
  %3424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3419, %dx.types.Handle %64, float %2912, float %2913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3428 = fmul fast float %3425, %324
  %3429 = fmul fast float %3426, %327
  %3430 = fmul fast float %3427, %330
  br i1 %3423, label %3437, label %3431

; <label>:3431                                    ; preds = %3414
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 0
  %3434 = fmul fast float %3433, %3428
  %3435 = fmul fast float %3433, %3429
  %3436 = fmul fast float %3433, %3430
  br label %3437

; <label>:3437                                    ; preds = %3431, %3414
  %3438 = phi float [ %3434, %3431 ], [ %3428, %3414 ]
  %3439 = phi float [ %3435, %3431 ], [ %3429, %3414 ]
  %3440 = phi float [ %3436, %3431 ], [ %3430, %3414 ]
  %3441 = fmul fast float %3438, %3409
  %3442 = select i1 %192, float %3441, float %3438
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3442, float %3439, float %3440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = select i1 %192, float 0.000000e+00, float %3438
  %3445 = select i1 %192, float %3443, float %3439
  %3446 = select i1 %192, float 0.000000e+00, float %3440
  br label %3447

; <label>:3447                                    ; preds = %3437, %3399
  %3448 = phi float [ %3444, %3437 ], [ 0.000000e+00, %3399 ]
  %3449 = phi float [ %3445, %3437 ], [ 0.000000e+00, %3399 ]
  %3450 = phi float [ %3446, %3437 ], [ 0.000000e+00, %3399 ]
  %3451 = add i32 %29, 144
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 255
  %3455 = uitofp i32 %3454 to float
  %3456 = lshr i32 %3453, 8
  %3457 = and i32 %3456, 255
  %3458 = uitofp i32 %3457 to float
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3320, float %3321, float %3322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = fmul fast float %3458, %3459
  %3461 = fadd fast float %3460, %3455
  %3462 = fmul fast float %3461, 0x3F70101020000000
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  br i1 %2804, label %3464, label %3472

; <label>:3464                                    ; preds = %3447
  %3465 = fsub fast float 1.000000e+00, %3100
  %3466 = fmul fast float %3465, %2793
  %3467 = fmul fast float %3465, %2794
  %3468 = fmul fast float %3465, %2795
  %3469 = fmul fast float %3465, %2796
  %3470 = fmul fast float %3465, %2797
  %3471 = fmul fast float %3465, %2798
  br label %3472

; <label>:3472                                    ; preds = %3464, %3447
  %3473 = phi float [ %3466, %3464 ], [ %2793, %3447 ]
  %3474 = phi float [ %3467, %3464 ], [ %2794, %3447 ]
  %3475 = phi float [ %3468, %3464 ], [ %2795, %3447 ]
  %3476 = phi float [ %3469, %3464 ], [ %2796, %3447 ]
  %3477 = phi float [ %3470, %3464 ], [ %2797, %3447 ]
  %3478 = phi float [ %3471, %3464 ], [ %2798, %3447 ]
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 3
  %3482 = icmp eq i32 %3481, 3
  br i1 %3482, label %3561, label %3483

; <label>:3483                                    ; preds = %3472
  %3484 = and i32 %3480, 16
  %3485 = icmp ne i32 %3484, 0
  %3486 = select i1 %3485, float %3100, float 0.000000e+00
  %3487 = icmp eq i32 %3481, 0
  br i1 %3487, label %3488, label %3516

; <label>:3488                                    ; preds = %3483
  %3489 = and i32 %3480, 64
  %3490 = icmp ne i32 %3489, 0
  %3491 = select i1 %3490, float %3100, float 0.000000e+00
  %3492 = fsub fast float %3320, %3473
  %3493 = fsub fast float %3321, %3474
  %3494 = fsub fast float %3322, %3475
  %3495 = fmul fast float %3486, %3492
  %3496 = fmul fast float %3486, %3493
  %3497 = fmul fast float %3486, %3494
  %3498 = fadd fast float %3495, %3473
  %3499 = fadd fast float %3496, %3474
  %3500 = fadd fast float %3497, %3475
  %3501 = fsub fast float %3306, %2799
  %3502 = fmul fast float %3486, %3501
  %3503 = fadd fast float %3502, %2799
  %3504 = fsub fast float %3448, %3476
  %3505 = fsub fast float %3449, %3477
  %3506 = fsub fast float %3450, %3478
  %3507 = fmul fast float %3491, %3504
  %3508 = fmul fast float %3491, %3505
  %3509 = fmul fast float %3491, %3506
  %3510 = fadd fast float %3507, %3476
  %3511 = fadd fast float %3508, %3477
  %3512 = fadd fast float %3509, %3478
  %3513 = fsub fast float %3463, %2802
  %3514 = fmul fast float %3486, %3513
  %3515 = fadd fast float %3514, %2802
  br label %3561

; <label>:3516                                    ; preds = %3483
  %3517 = icmp eq i32 %3481, 1
  br i1 %3517, label %3518, label %3531

; <label>:3518                                    ; preds = %3516
  %3519 = fadd fast float %3320, -1.000000e+00
  %3520 = fadd fast float %3321, -1.000000e+00
  %3521 = fadd fast float %3322, -1.000000e+00
  %3522 = fmul fast float %3486, %3519
  %3523 = fmul fast float %3486, %3520
  %3524 = fmul fast float %3486, %3521
  %3525 = fadd fast float %3522, 1.000000e+00
  %3526 = fadd fast float %3523, 1.000000e+00
  %3527 = fadd fast float %3524, 1.000000e+00
  %3528 = fmul fast float %3525, %3473
  %3529 = fmul fast float %3526, %3474
  %3530 = fmul fast float %3527, %3475
  br label %3561

; <label>:3531                                    ; preds = %3516
  %3532 = icmp eq i32 %3481, 2
  br i1 %3532, label %3533, label %3561

; <label>:3533                                    ; preds = %3531
  %3534 = call float @dx.op.unary.f32(i32 24, float %3320)  ; Sqrt(value)
  %3535 = call float @dx.op.unary.f32(i32 24, float %3321)  ; Sqrt(value)
  %3536 = call float @dx.op.unary.f32(i32 24, float %3322)  ; Sqrt(value)
  %3537 = fadd fast float %3534, -5.000000e-01
  %3538 = fadd fast float %3535, -5.000000e-01
  %3539 = fadd fast float %3536, -5.000000e-01
  %3540 = fmul fast float %3537, %3486
  %3541 = fmul fast float %3538, %3486
  %3542 = fmul fast float %3539, %3486
  %3543 = fadd fast float %3540, 5.000000e-01
  %3544 = fadd fast float %3541, 5.000000e-01
  %3545 = fadd fast float %3542, 5.000000e-01
  %3546 = fmul fast float %3543, 2.000000e+00
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = fmul fast float %3547, %3473
  %3549 = fadd fast float %3548, %3546
  %3550 = fmul fast float %3549, %3473
  %3551 = fmul fast float %3544, 2.000000e+00
  %3552 = fsub fast float 1.000000e+00, %3551
  %3553 = fmul fast float %3552, %3474
  %3554 = fadd fast float %3553, %3551
  %3555 = fmul fast float %3554, %3474
  %3556 = fmul fast float %3545, 2.000000e+00
  %3557 = fsub fast float 1.000000e+00, %3556
  %3558 = fmul fast float %3557, %3475
  %3559 = fadd fast float %3558, %3556
  %3560 = fmul fast float %3559, %3475
  br label %3561

; <label>:3561                                    ; preds = %3533, %3531, %3518, %3488, %3472
  %3562 = phi float [ %3473, %3472 ], [ %3550, %3533 ], [ %3473, %3531 ], [ %3528, %3518 ], [ %3498, %3488 ]
  %3563 = phi float [ %3474, %3472 ], [ %3555, %3533 ], [ %3474, %3531 ], [ %3529, %3518 ], [ %3499, %3488 ]
  %3564 = phi float [ %3475, %3472 ], [ %3560, %3533 ], [ %3475, %3531 ], [ %3530, %3518 ], [ %3500, %3488 ]
  %3565 = phi float [ %3476, %3472 ], [ %3476, %3533 ], [ %3476, %3531 ], [ %3476, %3518 ], [ %3510, %3488 ]
  %3566 = phi float [ %3477, %3472 ], [ %3477, %3533 ], [ %3477, %3531 ], [ %3477, %3518 ], [ %3511, %3488 ]
  %3567 = phi float [ %3478, %3472 ], [ %3478, %3533 ], [ %3478, %3531 ], [ %3478, %3518 ], [ %3512, %3488 ]
  %3568 = phi float [ %2799, %3472 ], [ %2799, %3533 ], [ %2799, %3531 ], [ %2799, %3518 ], [ %3503, %3488 ]
  %3569 = phi float [ %2802, %3472 ], [ %2802, %3533 ], [ %2802, %3531 ], [ %2802, %3518 ], [ %3515, %3488 ]
  %3570 = and i32 %3480, 12
  %3571 = icmp eq i32 %3570, 12
  br i1 %3571, label %3644, label %3572

; <label>:3572                                    ; preds = %3561
  %3573 = and i32 %3480, 2097184
  %3574 = icmp eq i32 %3573, 2097184
  %3575 = select i1 %3574, float %3100, float 0.000000e+00
  %3576 = and i32 %3480, 4194336
  %3577 = icmp eq i32 %3576, 4194336
  %3578 = select i1 %3577, float %3100, float 0.000000e+00
  %3579 = and i32 %3480, 8388640
  %3580 = icmp eq i32 %3579, 8388640
  %3581 = select i1 %3580, float %3100, float 0.000000e+00
  %3582 = icmp eq i32 %3570, 0
  br i1 %3582, label %3583, label %3596

; <label>:3583                                    ; preds = %3572
  %3584 = fsub fast float %3401, %2791
  %3585 = fsub fast float %3402, %2792
  %3586 = fmul fast float %3575, %3584
  %3587 = fmul fast float %3575, %3585
  %3588 = fadd fast float %3586, %2791
  %3589 = fadd fast float %3587, %2792
  %3590 = fsub fast float %3403, %2801
  %3591 = fmul fast float %3578, %3590
  %3592 = fadd fast float %3591, %2801
  %3593 = fsub fast float %3400, %2800
  %3594 = fmul fast float %3581, %3593
  %3595 = fadd fast float %3594, %2800
  br label %3644

; <label>:3596                                    ; preds = %3572
  %3597 = icmp eq i32 %3570, 4
  br i1 %3597, label %3598, label %3630

; <label>:3598                                    ; preds = %3596
  %3599 = fmul fast float %3575, %3401
  %3600 = fmul fast float %3575, %3402
  %3601 = fadd fast float %3599, %2791
  %3602 = fadd fast float %3600, %2792
  %3603 = call float @dx.op.binary.f32(i32 36, float %2801, float %3403)  ; FMin(a,b)
  %3604 = fsub fast float %3603, %2801
  %3605 = fmul fast float %3604, %3578
  %3606 = fadd fast float %3605, %2801
  %3607 = fadd fast float %3400, %2800
  %3608 = fmul fast float %3607, 0x3FF337FAE0000000
  %3609 = fmul fast float %2800, %2800
  %3610 = fmul fast float %3400, %3400
  %3611 = fadd fast float %3610, %3609
  %3612 = fmul fast float %3611, 0x3FE5152B00000000
  %3613 = fmul fast float %2800, 0xBFCC1F85E0000000
  %3614 = fmul fast float %3613, %3400
  %3615 = fadd fast float %3614, 0xBFE1363700000000
  %3616 = fadd fast float %3615, %3608
  %3617 = fsub fast float %3616, %3612
  %3618 = fmul fast float %3607, 0x3FBA6F0D00000000
  %3619 = fmul fast float %3611, 0x3FD0432880000000
  %3620 = fmul fast float %2800, 0xBFEF110800000000
  %3621 = fmul fast float %3620, %3400
  %3622 = fadd fast float %3621, 1.000000e+00
  %3623 = fsub fast float %3622, %3618
  %3624 = fadd fast float %3623, %3619
  %3625 = fdiv fast float %3617, %3624
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fsub fast float %3626, %2800
  %3628 = fmul fast float %3627, %3581
  %3629 = fadd fast float %3628, %2800
  br label %3644

; <label>:3630                                    ; preds = %3596
  %3631 = icmp eq i32 %3570, 8
  br i1 %3631, label %3632, label %3644

; <label>:3632                                    ; preds = %3630
  %3633 = fmul fast float %3575, %3401
  %3634 = fmul fast float %3575, %3402
  %3635 = fadd fast float %3633, %2791
  %3636 = fadd fast float %3634, %2792
  %3637 = call float @dx.op.binary.f32(i32 36, float %2801, float %3403)  ; FMin(a,b)
  %3638 = fsub fast float %3637, %2801
  %3639 = fmul fast float %3638, %3578
  %3640 = fadd fast float %3639, %2801
  %3641 = fsub fast float %3400, %2800
  %3642 = fmul fast float %3581, %3641
  %3643 = fadd fast float %3642, %2800
  br label %3644

; <label>:3644                                    ; preds = %3632, %3630, %3598, %3583, %3561, %3099, %2803, %2790
  %3645 = phi float [ %2791, %3561 ], [ %2791, %3099 ], [ %2791, %2790 ], [ %2791, %2803 ], [ %3588, %3583 ], [ %3601, %3598 ], [ %2791, %3630 ], [ %3635, %3632 ]
  %3646 = phi float [ %2792, %3561 ], [ %2792, %3099 ], [ %2792, %2790 ], [ %2792, %2803 ], [ %3589, %3583 ], [ %3602, %3598 ], [ %2792, %3630 ], [ %3636, %3632 ]
  %3647 = phi float [ %3562, %3561 ], [ %2793, %3099 ], [ %2793, %2790 ], [ %2793, %2803 ], [ %3562, %3583 ], [ %3562, %3598 ], [ %3562, %3630 ], [ %3562, %3632 ]
  %3648 = phi float [ %3563, %3561 ], [ %2794, %3099 ], [ %2794, %2790 ], [ %2794, %2803 ], [ %3563, %3583 ], [ %3563, %3598 ], [ %3563, %3630 ], [ %3563, %3632 ]
  %3649 = phi float [ %3564, %3561 ], [ %2795, %3099 ], [ %2795, %2790 ], [ %2795, %2803 ], [ %3564, %3583 ], [ %3564, %3598 ], [ %3564, %3630 ], [ %3564, %3632 ]
  %3650 = phi float [ %3565, %3561 ], [ %2796, %3099 ], [ %2796, %2790 ], [ %2796, %2803 ], [ %3565, %3583 ], [ %3565, %3598 ], [ %3565, %3630 ], [ %3565, %3632 ]
  %3651 = phi float [ %3566, %3561 ], [ %2797, %3099 ], [ %2797, %2790 ], [ %2797, %2803 ], [ %3566, %3583 ], [ %3566, %3598 ], [ %3566, %3630 ], [ %3566, %3632 ]
  %3652 = phi float [ %3567, %3561 ], [ %2798, %3099 ], [ %2798, %2790 ], [ %2798, %2803 ], [ %3567, %3583 ], [ %3567, %3598 ], [ %3567, %3630 ], [ %3567, %3632 ]
  %3653 = phi float [ %3568, %3561 ], [ %2799, %3099 ], [ %2799, %2790 ], [ %2799, %2803 ], [ %3568, %3583 ], [ %3568, %3598 ], [ %3568, %3630 ], [ %3568, %3632 ]
  %3654 = phi float [ %2800, %3561 ], [ %2800, %3099 ], [ %2800, %2790 ], [ %2800, %2803 ], [ %3595, %3583 ], [ %3629, %3598 ], [ %2800, %3630 ], [ %3643, %3632 ]
  %3655 = phi float [ %2801, %3561 ], [ %2801, %3099 ], [ %2801, %2790 ], [ %2801, %2803 ], [ %3592, %3583 ], [ %3606, %3598 ], [ %2801, %3630 ], [ %3640, %3632 ]
  %3656 = phi float [ %3569, %3561 ], [ %2802, %3099 ], [ %2802, %2790 ], [ %2802, %2803 ], [ %3569, %3583 ], [ %3569, %3598 ], [ %3569, %3630 ], [ %3569, %3632 ]
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = call float @dx.op.dot2.f32(i32 54, float %3645, float %3646, float %3645, float %3646)  ; Dot2(ax,ay,bx,by)
  %3660 = fmul fast float %3659, 0x3FE3333340000000
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3646, float %3661, float %3645, float %3646, float %3661)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = call float @dx.op.unary.f32(i32 25, float %3662)  ; Rsqrt(value)
  %3664 = fmul fast float %3663, %3645
  %3665 = fmul fast float %3663, %3646
  %3666 = fmul fast float %3661, %3663
  %3667 = fmul fast float %3666, %75
  %3668 = fmul fast float %3666, %76
  %3669 = fmul fast float %3666, %77
  %3670 = fmul fast float %3664, %45
  %3671 = fmul fast float %3664, %46
  %3672 = fmul fast float %3664, %47
  %3673 = fadd fast float %3667, %3670
  %3674 = fadd fast float %3668, %3671
  %3675 = fadd fast float %3669, %3672
  %3676 = fmul fast float %87, %3665
  %3677 = fmul fast float %88, %3665
  %3678 = fmul fast float %89, %3665
  %3679 = fadd fast float %3673, %3676
  %3680 = fadd fast float %3674, %3677
  %3681 = fadd fast float %3675, %3678
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3679, float %3680, float %3681, float %3679, float %3680, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.unary.f32(i32 25, float %3682)  ; Rsqrt(value)
  %3684 = fmul fast float %3679, %3683
  %3685 = fmul fast float %3680, %3683
  %3686 = fmul fast float %3681, %3683
  %3687 = and i32 %31, 1
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3689, label %4201

; <label>:3689                                    ; preds = %3644
  %3690 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3691 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3692 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3693 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3694 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3695 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3696 = fadd fast float %3690, %131
  %3697 = fadd fast float %3691, %132
  %3698 = fadd fast float %3692, %133
  %3699 = fadd fast float %3693, %131
  %3700 = fadd fast float %3694, %132
  %3701 = fadd fast float %3695, %133
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3707 = extractvalue %dx.types.CBufRet.f32 %3706, 2
  %3708 = extractvalue %dx.types.CBufRet.f32 %3706, 3
  %3709 = fmul fast float %3703, %68
  %3710 = fmul fast float %3709, %3707
  %3711 = fmul fast float %3704, %69
  %3712 = fmul fast float %3711, %3708
  %3713 = fptoui float %3710 to i32
  %3714 = fptoui float %3712 to i32
  %3715 = fadd fast float %3703, -1.000000e+00
  %3716 = fadd fast float %3704, -1.000000e+00
  %3717 = fptoui float %3715 to i32
  %3718 = fptoui float %3716 to i32
  %3719 = call i32 @dx.op.binary.i32(i32 40, i32 %3713, i32 %3717)  ; UMin(a,b)
  %3720 = call i32 @dx.op.binary.i32(i32 40, i32 %3714, i32 %3718)  ; UMin(a,b)
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 2
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 3
  %3724 = fmul fast float %3722, %61
  %3725 = fsub fast float %3724, %3723
  %3726 = fadd fast float %3705, -1.000000e+00
  %3727 = call float @dx.op.binary.f32(i32 36, float %3725, float %3726)  ; FMin(a,b)
  %3728 = fptoui float %3727 to i32
  %3729 = fptoui float %3703 to i32
  %3730 = fptoui float %3704 to i32
  %3731 = mul i32 %3728, %3730
  %3732 = add i32 %3731, %3720
  %3733 = mul i32 %3732, %3729
  %3734 = add i32 %3733, %3719
  %3735 = shl i32 %3734, 2
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 1023
  %3739 = lshr i32 %3737, 10
  %3740 = icmp eq i32 %3738, 0
  br i1 %3740, label %4169, label %3741

; <label>:3741                                    ; preds = %3689
  %3742 = and i32 %3737, 1023
  br label %3743

; <label>:3743                                    ; preds = %3870, %3741
  %3744 = phi i32 [ %3820, %3870 ], [ 0, %3741 ]
  %3745 = phi float [ %3871, %3870 ], [ 0.000000e+00, %3741 ]
  %3746 = phi float [ %3872, %3870 ], [ %1091, %3741 ]
  %3747 = phi float [ %3873, %3870 ], [ %3658, %3741 ]
  %3748 = phi float [ %3874, %3870 ], [ %3656, %3741 ]
  %3749 = phi float [ %3875, %3870 ], [ 0.000000e+00, %3741 ]
  %3750 = phi float [ %3876, %3870 ], [ 0.000000e+00, %3741 ]
  %3751 = phi float [ %3877, %3870 ], [ %3650, %3741 ]
  %3752 = phi float [ %3878, %3870 ], [ %3651, %3741 ]
  %3753 = phi float [ %3879, %3870 ], [ %3652, %3741 ]
  %3754 = phi float [ %3880, %3870 ], [ %3684, %3741 ]
  %3755 = phi float [ %3881, %3870 ], [ %3685, %3741 ]
  %3756 = phi float [ %3882, %3870 ], [ %3686, %3741 ]
  %3757 = phi float [ %3883, %3870 ], [ %3655, %3741 ]
  %3758 = phi float [ %3884, %3870 ], [ %3654, %3741 ]
  %3759 = phi float [ %3885, %3870 ], [ 0.000000e+00, %3741 ]
  %3760 = phi float [ %3886, %3870 ], [ %3653, %3741 ]
  %3761 = phi float [ %3887, %3870 ], [ %3647, %3741 ]
  %3762 = phi float [ %3888, %3870 ], [ %3648, %3741 ]
  %3763 = phi float [ %3889, %3870 ], [ %3649, %3741 ]
  %3764 = add nuw nsw i32 %3744, %3739
  %3765 = shl i32 %3764, 2
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = shl i32 %3767, 8
  %3769 = or i32 %3768, 48
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = or i32 %3768, 64
  %3776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.i32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.i32 %3776, 1
  %3779 = or i32 %3768, 80
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3783 = or i32 %3768, 96
  %3784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3784, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3784, 3
  %3789 = or i32 %3768, 112
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3792 = or i32 %3768, 128
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = or i32 %3768, 144
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = or i32 %3768, 160
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = or i32 %3768, 192
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = or i32 %3768, 208
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = or i32 %3768, 248
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = add nuw nsw i32 %3744, 1
  %3821 = bitcast float %3774 to i32
  %3822 = and i32 %3821, 512
  %3823 = icmp eq i32 %3822, 0
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = call float @dx.op.dot4.f32(i32 56, float %3825, float %3826, float %3827, float %3828, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3830 = or i32 %3768, 16
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = call float @dx.op.dot4.f32(i32 56, float %3832, float %3833, float %3834, float %3835, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3837 = or i32 %3768, 32
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3843 = call float @dx.op.dot4.f32(i32 56, float %3839, float %3840, float %3841, float %3842, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3844 = call float @dx.op.unary.f32(i32 27, float %3829)  ; Round_ni(value)
  %3845 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3846 = call float @dx.op.unary.f32(i32 27, float %3836)  ; Round_ni(value)
  %3847 = call float @dx.op.unary.f32(i32 6, float %3846)  ; FAbs(value)
  %3848 = call float @dx.op.unary.f32(i32 6, float %3843)  ; FAbs(value)
  %3849 = call float @dx.op.unary.f32(i32 27, float %3848)  ; Round_ni(value)
  %3850 = fadd fast float %3847, %3845
  %3851 = fadd fast float %3850, %3849
  %3852 = fcmp fast oeq float %3851, 0.000000e+00
  %3853 = call float @dx.op.dot4.f32(i32 56, float %3825, float %3826, float %3827, float %3828, float %3696, float %3697, float %3698, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3854 = call float @dx.op.dot4.f32(i32 56, float %3832, float %3833, float %3834, float %3835, float %3696, float %3697, float %3698, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3855 = call float @dx.op.dot4.f32(i32 56, float %3825, float %3826, float %3827, float %3828, float %3699, float %3700, float %3701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3856 = call float @dx.op.dot4.f32(i32 56, float %3832, float %3833, float %3834, float %3835, float %3699, float %3700, float %3701, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3857 = fsub fast float %3853, %3829
  %3858 = fsub fast float %3855, %3829
  %3859 = fsub fast float %3854, %3836
  %3860 = fsub fast float %3856, %3836
  %3861 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3772, float %3773, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3864 = fadd fast float %3863, %3861
  %3865 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3867 = fcmp fast ogt float %3865, %3866
  %3868 = and i1 %3852, %3867
  %3869 = and i1 %3823, %3868
  br i1 %3869, label %3891, label %3870

; <label>:3870                                    ; preds = %4155, %3972, %3891, %3743
  %3871 = phi float [ %3745, %3891 ], [ %3975, %3972 ], [ %3975, %4155 ], [ %3745, %3743 ]
  %3872 = phi float [ %3746, %3891 ], [ %3746, %3972 ], [ %4130, %4155 ], [ %3746, %3743 ]
  %3873 = phi float [ %3747, %3891 ], [ %3747, %3972 ], [ %4129, %4155 ], [ %3747, %3743 ]
  %3874 = phi float [ %3748, %3891 ], [ %3748, %3972 ], [ %4127, %4155 ], [ %3748, %3743 ]
  %3875 = phi float [ %3749, %3891 ], [ %3749, %3972 ], [ %4099, %4155 ], [ %3749, %3743 ]
  %3876 = phi float [ %3750, %3891 ], [ %3750, %3972 ], [ %4097, %4155 ], [ %3750, %3743 ]
  %3877 = phi float [ %3751, %3891 ], [ %3751, %3972 ], [ %4165, %4155 ], [ %3751, %3743 ]
  %3878 = phi float [ %3752, %3891 ], [ %3752, %3972 ], [ %4166, %4155 ], [ %3752, %3743 ]
  %3879 = phi float [ %3753, %3891 ], [ %3753, %3972 ], [ %4167, %4155 ], [ %3753, %3743 ]
  %3880 = phi float [ %3754, %3891 ], [ %3754, %3972 ], [ %4078, %4155 ], [ %3754, %3743 ]
  %3881 = phi float [ %3755, %3891 ], [ %3755, %3972 ], [ %4079, %4155 ], [ %3755, %3743 ]
  %3882 = phi float [ %3756, %3891 ], [ %3756, %3972 ], [ %4080, %4155 ], [ %3756, %3743 ]
  %3883 = phi float [ %3757, %3891 ], [ %3757, %3972 ], [ %4107, %4155 ], [ %3757, %3743 ]
  %3884 = phi float [ %3758, %3891 ], [ %3758, %3972 ], [ %4104, %4155 ], [ %3758, %3743 ]
  %3885 = phi float [ %3759, %3891 ], [ %3759, %3972 ], [ %4101, %4155 ], [ %3759, %3743 ]
  %3886 = phi float [ %3760, %3891 ], [ %3760, %3972 ], [ %4095, %4155 ], [ %3760, %3743 ]
  %3887 = phi float [ %3761, %3891 ], [ %3761, %3972 ], [ %4090, %4155 ], [ %3761, %3743 ]
  %3888 = phi float [ %3762, %3891 ], [ %3762, %3972 ], [ %4091, %4155 ], [ %3762, %3743 ]
  %3889 = phi float [ %3763, %3891 ], [ %3763, %3972 ], [ %4092, %4155 ], [ %3763, %3743 ]
  %3890 = icmp eq i32 %3820, %3742
  br i1 %3890, label %4168, label %3743

; <label>:3891                                    ; preds = %3743
  %3892 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3893 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3894 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3897 = extractvalue %dx.types.ResRet.i32 %3776, 3
  %3898 = extractvalue %dx.types.ResRet.i32 %3776, 2
  %3899 = add i32 %3897, 0
  %3900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3899, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3902 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3900, %dx.types.Handle %3901, float %3829, float %3836, float undef, float undef, i32 0, i32 0, i32 undef, float %3857, float %3859, float undef, float %3858, float %3860, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = fmul fast float %3903, %3896
  %3905 = fadd fast float %3904, %3895
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3829, %3785
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3836, float %3907)  ; FMad(a,b,c)
  %3909 = fadd fast float %3908, %3894
  %3910 = fmul fast float %3829, %3787
  %3911 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3836, float %3910)  ; FMad(a,b,c)
  %3912 = fadd fast float %3911, %3893
  %3913 = fmul fast float %3857, %3785
  %3914 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3859, float %3913)  ; FMad(a,b,c)
  %3915 = fmul fast float %3857, %3787
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3859, float %3915)  ; FMad(a,b,c)
  %3917 = fmul fast float %3858, %3785
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3860, float %3917)  ; FMad(a,b,c)
  %3919 = fmul fast float %3858, %3787
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3788, float %3860, float %3919)  ; FMad(a,b,c)
  %3921 = add i32 %3898, 0
  %3922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3921, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3923 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3922, %dx.types.Handle %3901, float %3909, float %3912, float undef, float undef, i32 0, i32 0, i32 undef, float %3914, float %3916, float undef, float %3918, float %3920, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = and i32 %3821, 1024
  %3926 = icmp ne i32 %3925, 0
  %3927 = fcmp fast ogt float %3924, 0x3FE0101020000000
  %3928 = uitofp i1 %3927 to float
  %3929 = select i1 %3926, float %3928, float %3924
  %3930 = and i32 %3821, 8192
  %3931 = icmp ne i32 %3930, 0
  %3932 = select i1 %3931, float %3892, float 1.000000e+00
  %3933 = fmul fast float %3829, 2.000000e+00
  %3934 = fadd fast float %3933, -1.000000e+00
  %3935 = call float @dx.op.unary.f32(i32 6, float %3934)  ; FAbs(value)
  %3936 = fmul fast float %3935, %3818
  %3937 = fsub fast float %3936, %3818
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3939 = fmul fast float %3836, 2.000000e+00
  %3940 = fadd fast float %3939, -1.000000e+00
  %3941 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3942 = fmul fast float %3941, %3819
  %3943 = fsub fast float %3942, %3819
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fmul fast float %3848, %3781
  %3946 = fsub fast float %3945, %3781
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = fmul fast float %3906, %3932
  %3949 = fmul fast float %3948, %3903
  %3950 = fmul fast float %3949, %3938
  %3951 = fmul fast float %3950, %3929
  %3952 = fmul fast float %3951, %3944
  %3953 = fmul fast float %3952, %3947
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3957 = fsub fast float %3865, %3956
  %3958 = fmul fast float %3957, %3955
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3960 = fmul fast float %3953, %3782
  %3961 = fadd fast float %3953, %3782
  %3962 = fmul fast float %3961, %3791
  %3963 = fsub fast float %3962, %3791
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = and i32 %3821, 128
  %3966 = icmp ne i32 %3965, 0
  %3967 = select i1 %3966, float %3964, float %3960
  %3968 = fmul fast float %3967, %3959
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3971 = fcmp fast ugt float %3968, %3970
  br i1 %3971, label %3972, label %3870

; <label>:3972                                    ; preds = %3891
  %3973 = select i1 %3931, float %3968, float 0.000000e+00
  %3974 = fadd fast float %3973, %3745
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  br i1 %3931, label %3870, label %3976

; <label>:3976                                    ; preds = %3972
  %3977 = and i32 %3821, 4
  %3978 = and i32 %3821, 8
  %3979 = add i32 %3777, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3980, %dx.types.Handle %3981, float %3909, float %3912, float undef, float undef, i32 0, i32 0, i32 undef, float %3914, float %3916, float undef, float %3918, float %3920, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.f32 %3982, 1
  %3985 = extractvalue %dx.types.ResRet.f32 %3982, 2
  %3986 = extractvalue %dx.types.ResRet.f32 %3982, 3
  %3987 = bitcast float %3803 to i32
  %3988 = and i32 %3987, 255
  %3989 = uitofp i32 %3988 to float
  %3990 = lshr i32 %3987, 8
  %3991 = and i32 %3990, 255
  %3992 = uitofp i32 %3991 to float
  %3993 = fmul fast float %3986, %3989
  %3994 = fadd fast float %3993, %3992
  %3995 = fmul fast float %3994, 0x3F70101000000000
  %3996 = add i32 %3778, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3996, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3997, %dx.types.Handle %3981, float %3909, float %3912, float undef, float undef, i32 0, i32 0, i32 undef, float %3914, float %3916, float undef, float %3918, float %3920, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = bitcast float %3797 to i32
  %4004 = and i32 %4003, 255
  %4005 = uitofp i32 %4004 to float
  %4006 = lshr i32 %4003, 8
  %4007 = and i32 %4006, 255
  %4008 = uitofp i32 %4007 to float
  %4009 = lshr i32 %4003, 16
  %4010 = and i32 %4009, 255
  %4011 = uitofp i32 %4010 to float
  %4012 = fmul fast float %4011, 0x3F70101000000000
  %4013 = fmul fast float %3999, %4005
  %4014 = fadd fast float %4013, %4008
  %4015 = fmul fast float %4014, 0x3F70101000000000
  %4016 = fadd fast float %4000, -5.000000e-01
  %4017 = fadd fast float %4002, -5.000000e-01
  %4018 = fmul fast float %4016, %4012
  %4019 = fmul fast float %4017, %4012
  %4020 = fadd fast float %4018, 5.000000e-01
  %4021 = fadd fast float %4019, 5.000000e-01
  %4022 = fmul fast float %3983, %3806
  %4023 = fmul fast float %3984, %3807
  %4024 = fmul fast float %3985, %3808
  %4025 = fmul fast float %4020, 2.000000e+00
  %4026 = fadd fast float %4025, -1.000000e+00
  %4027 = fmul fast float %4021, 2.000000e+00
  %4028 = fadd fast float %4027, -1.000000e+00
  %4029 = fadd fast float %4026, %4028
  %4030 = fmul fast float %4029, 5.000000e-01
  %4031 = fsub fast float %4026, %4028
  %4032 = fmul fast float %4031, 5.000000e-01
  %4033 = call float @dx.op.unary.f32(i32 6, float %4030)  ; FAbs(value)
  %4034 = fsub fast float 1.000000e+00, %4033
  %4035 = call float @dx.op.unary.f32(i32 6, float %4032)  ; FAbs(value)
  %4036 = fsub fast float %4034, %4035
  %4037 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4032, float %4036, float %4030, float %4032, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = call float @dx.op.unary.f32(i32 25, float %4037)  ; Rsqrt(value)
  %4039 = fmul fast float %4030, %4038
  %4040 = fmul fast float %4032, %4038
  %4041 = fmul fast float %4038, %4036
  %4042 = fmul fast float %4041, %3771
  %4043 = fmul fast float %4041, %3772
  %4044 = fmul fast float %4041, %3773
  %4045 = fmul fast float %4039, %3794
  %4046 = fmul fast float %4039, %3795
  %4047 = fmul fast float %4039, %3796
  %4048 = fadd fast float %4045, %4042
  %4049 = fadd fast float %4046, %4043
  %4050 = fadd fast float %4047, %4044
  %4051 = fmul fast float %4040, %3800
  %4052 = fmul fast float %4040, %3801
  %4053 = fmul fast float %4040, %3802
  %4054 = fadd fast float %4048, %4051
  %4055 = fadd fast float %4049, %4052
  %4056 = fadd fast float %4050, %4053
  %4057 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4055, float %4056, float %4054, float %4055, float %4056)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = call float @dx.op.unary.f32(i32 25, float %4057)  ; Rsqrt(value)
  %4059 = fmul fast float %4054, %4058
  %4060 = fmul fast float %4055, %4058
  %4061 = fmul fast float %4056, %4058
  %4062 = icmp ne i32 %3978, 0
  %4063 = select i1 %4062, float 1.000000e+00, float 0.000000e+00
  %4064 = fmul fast float %3968, %4063
  %4065 = and i32 %3821, 1
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4067, label %4071

; <label>:4067                                    ; preds = %3976
  %4068 = fsub fast float %4059, %3754
  %4069 = fsub fast float %4060, %3755
  %4070 = fsub fast float %4061, %3756
  br label %4071

; <label>:4071                                    ; preds = %4067, %3976
  %4072 = phi float [ %4068, %4067 ], [ %4059, %3976 ]
  %4073 = phi float [ %4069, %4067 ], [ %4060, %3976 ]
  %4074 = phi float [ %4070, %4067 ], [ %4061, %3976 ]
  %4075 = fmul float %4074, %4064
  %4076 = fmul float %4073, %4064
  %4077 = fmul float %4072, %4064
  %4078 = fadd fast float %4077, %3754
  %4079 = fadd fast float %4076, %3755
  %4080 = fadd fast float %4075, %3756
  %4081 = icmp ne i32 %3977, 0
  %4082 = select i1 %4081, float 1.000000e+00, float 0.000000e+00
  %4083 = fmul fast float %3968, %4082
  %4084 = fsub fast float %4022, %3761
  %4085 = fsub fast float %4023, %3762
  %4086 = fsub fast float %4024, %3763
  %4087 = fmul fast float %4084, %4083
  %4088 = fmul fast float %4085, %4083
  %4089 = fmul fast float %4086, %4083
  %4090 = fadd fast float %4087, %3761
  %4091 = fadd fast float %4088, %3762
  %4092 = fadd fast float %4089, %3763
  %4093 = fsub fast float %3995, %3760
  %4094 = fmul fast float %4093, %4083
  %4095 = fadd fast float %4094, %3760
  %4096 = fmul fast float %4083, %3750
  %4097 = fsub fast float %3750, %4096
  %4098 = fmul fast float %4083, %3749
  %4099 = fsub fast float %3749, %4098
  %4100 = fadd fast float %3968, %3759
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fsub fast float %4015, %3758
  %4103 = fmul fast float %4102, %4064
  %4104 = fadd fast float %4103, %3758
  %4105 = fsub fast float %4001, %3757
  %4106 = fmul fast float %4105, %4064
  %4107 = fadd fast float %4106, %3757
  %4108 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = fmul fast float %4111, %4108
  %4113 = fadd fast float %4112, %4110
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = bitcast float %3809 to i32
  %4116 = and i32 %4115, 65535
  %4117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4116)  ; LegacyF16ToF32(value)
  %4118 = lshr i32 %4115, 16
  %4119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4118)  ; LegacyF16ToF32(value)
  %4120 = fcmp fast oge float %4117, 0.000000e+00
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = select i1 %4120, float %4117, float %4122
  %4124 = fadd fast float %4123, %4119
  %4125 = fsub fast float %4114, %3748
  %4126 = fmul fast float %4125, %3968
  %4127 = fadd fast float %4126, %3748
  %4128 = fmul fast float %4124, %3968
  %4129 = call float @dx.op.binary.f32(i32 35, float %3747, float %4128)  ; FMax(a,b)
  %4130 = call float @dx.op.binary.f32(i32 35, float %3746, float %3968)  ; FMax(a,b)
  %4131 = and i32 %3821, 16
  %4132 = icmp eq i32 %4131, 0
  br i1 %4132, label %4155, label %4133

; <label>:4133                                    ; preds = %4071
  %4134 = bitcast float %3815 to i32
  %4135 = add i32 %3812, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4136, %dx.types.Handle %3981, float %3909, float %3912, float undef, float undef, i32 0, i32 0, i32 undef, float %3914, float %3916, float undef, float %3918, float %3920, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = and i32 %4134, 65535
  %4142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4141)  ; LegacyF16ToF32(value)
  %4143 = fmul fast float %4138, %3806
  %4144 = fmul fast float %4139, %3807
  %4145 = fmul fast float %4140, %3808
  %4146 = and i32 %3821, 16384
  %4147 = icmp ne i32 %4146, 0
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = select i1 %4147, float %4149, float 1.000000e+00
  %4151 = fmul fast float %4150, %4142
  %4152 = fmul fast float %4143, %4151
  %4153 = fmul fast float %4144, %4151
  %4154 = fmul fast float %4145, %4151
  br label %4155

; <label>:4155                                    ; preds = %4133, %4071
  %4156 = phi float [ %4152, %4133 ], [ 0.000000e+00, %4071 ]
  %4157 = phi float [ %4153, %4133 ], [ 0.000000e+00, %4071 ]
  %4158 = phi float [ %4154, %4133 ], [ 0.000000e+00, %4071 ]
  %4159 = fsub fast float %4156, %3751
  %4160 = fsub fast float %4157, %3752
  %4161 = fsub fast float %4158, %3753
  %4162 = fmul fast float %4159, %3968
  %4163 = fmul fast float %4160, %3968
  %4164 = fmul fast float %4161, %3968
  %4165 = fadd fast float %4162, %3751
  %4166 = fadd fast float %4163, %3752
  %4167 = fadd fast float %4164, %3753
  br label %3870

; <label>:4168                                    ; preds = %3870
  br label %4169

; <label>:4169                                    ; preds = %4168, %3689
  %4170 = phi float [ 0.000000e+00, %3689 ], [ %3871, %4168 ]
  %4171 = phi float [ %1091, %3689 ], [ %3872, %4168 ]
  %4172 = phi float [ %3658, %3689 ], [ %3873, %4168 ]
  %4173 = phi float [ %3656, %3689 ], [ %3874, %4168 ]
  %4174 = phi float [ 0.000000e+00, %3689 ], [ %3875, %4168 ]
  %4175 = phi float [ 0.000000e+00, %3689 ], [ %3876, %4168 ]
  %4176 = phi float [ %3650, %3689 ], [ %3877, %4168 ]
  %4177 = phi float [ %3651, %3689 ], [ %3878, %4168 ]
  %4178 = phi float [ %3652, %3689 ], [ %3879, %4168 ]
  %4179 = phi float [ %3684, %3689 ], [ %3880, %4168 ]
  %4180 = phi float [ %3685, %3689 ], [ %3881, %4168 ]
  %4181 = phi float [ %3686, %3689 ], [ %3882, %4168 ]
  %4182 = phi float [ %3655, %3689 ], [ %3883, %4168 ]
  %4183 = phi float [ %3654, %3689 ], [ %3884, %4168 ]
  %4184 = phi float [ 0.000000e+00, %3689 ], [ %3885, %4168 ]
  %4185 = phi float [ %3653, %3689 ], [ %3886, %4168 ]
  %4186 = phi float [ %3647, %3689 ], [ %3887, %4168 ]
  %4187 = phi float [ %3648, %3689 ], [ %3888, %4168 ]
  %4188 = phi float [ %3649, %3689 ], [ %3889, %4168 ]
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float %4179, float %4180, float %4181)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = call float @dx.op.unary.f32(i32 25, float %4189)  ; Rsqrt(value)
  %4191 = fmul fast float %4190, %4179
  %4192 = fmul fast float %4190, %4180
  %4193 = fmul fast float %4190, %4181
  %4194 = fadd fast float %4184, %1091
  %4195 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4196 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float %4191, float %4192, float %4193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4197 = call float @dx.op.unary.f32(i32 25, float %4196)  ; Rsqrt(value)
  %4198 = fmul fast float %4197, %4191
  %4199 = fmul fast float %4197, %4192
  %4200 = fmul fast float %4197, %4193
  br label %4201

; <label>:4201                                    ; preds = %4169, %3644
  %4202 = phi float [ %4198, %4169 ], [ %3684, %3644 ]
  %4203 = phi float [ %4199, %4169 ], [ %3685, %3644 ]
  %4204 = phi float [ %4200, %4169 ], [ %3686, %3644 ]
  %4205 = phi float [ %4186, %4169 ], [ %3647, %3644 ]
  %4206 = phi float [ %4187, %4169 ], [ %3648, %3644 ]
  %4207 = phi float [ %4188, %4169 ], [ %3649, %3644 ]
  %4208 = phi float [ %4176, %4169 ], [ %3650, %3644 ]
  %4209 = phi float [ %4177, %4169 ], [ %3651, %3644 ]
  %4210 = phi float [ %4178, %4169 ], [ %3652, %3644 ]
  %4211 = phi float [ %4185, %4169 ], [ %3653, %3644 ]
  %4212 = phi float [ %4195, %4169 ], [ %1091, %3644 ]
  %4213 = phi float [ %4183, %4169 ], [ %3654, %3644 ]
  %4214 = phi float [ %4182, %4169 ], [ %3655, %3644 ]
  %4215 = phi float [ %4175, %4169 ], [ 0.000000e+00, %3644 ]
  %4216 = phi float [ %4174, %4169 ], [ 0.000000e+00, %3644 ]
  %4217 = phi float [ %4170, %4169 ], [ 0.000000e+00, %3644 ]
  %4218 = phi float [ %4172, %4169 ], [ %3658, %3644 ]
  %4219 = phi float [ %4171, %4169 ], [ %1091, %3644 ]
  %4220 = phi float [ %4173, %4169 ], [ %3656, %3644 ]
  %4221 = fadd fast float %4211, 0xBFB99999A0000000
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = fmul fast float %4222, 0x3FF1C71C80000000
  %4224 = call float @dx.op.binary.f32(i32 36, float %4211, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4225 = fsub fast float 1.000000e+00, %4223
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = fmul fast float %4226, %4205
  %4228 = fmul fast float %4226, %4206
  %4229 = fmul fast float %4226, %4207
  %4230 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4231 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4233 = fmul fast float %4223, %4205
  %4234 = fmul fast float %4223, %4206
  %4235 = fmul fast float %4223, %4207
  %4236 = fadd fast float %4233, %4224
  %4237 = fadd fast float %4234, %4224
  %4238 = fadd fast float %4235, %4224
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 3
  %4245 = and i32 %4244, 8
  %4246 = icmp ne i32 %4245, 0
  %4247 = call float @dx.op.binary.f32(i32 35, float %4230, float %4205)  ; FMax(a,b)
  %4248 = call float @dx.op.binary.f32(i32 35, float %4231, float %4205)  ; FMax(a,b)
  %4249 = call float @dx.op.binary.f32(i32 35, float %4232, float %4205)  ; FMax(a,b)
  %4250 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4251 = select i1 %192, float %4205, float %4230
  %4252 = select i1 %192, float %4250, float %4231
  %4253 = select i1 %192, float 1.000000e+00, float %4232
  %4254 = select i1 %4246, float %4247, float %4251
  %4255 = select i1 %4246, float %4248, float %4252
  %4256 = select i1 %4246, float %4249, float %4253
  %4257 = and i32 %168, 3
  %4258 = select i1 %162, i32 %4257, i32 0
  %4259 = icmp eq i32 %4258, 1
  br i1 %4259, label %4260, label %4336

; <label>:4260                                    ; preds = %4201
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.CBufRet.f32 %4261, 1
  %4264 = fadd fast float %4262, %131
  %4265 = fadd fast float %4263, %132
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.CBufRet.f32 %4266, 1
  %4269 = fsub fast float %4264, %4267
  %4270 = fsub fast float %4265, %4268
  %4271 = fmul fast float %4269, %4269
  %4272 = fmul fast float %4270, %4270
  %4273 = fadd fast float %4271, %4272
  %4274 = call float @dx.op.unary.f32(i32 24, float %4273)  ; Sqrt(value)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4266, 2
  %4276 = fcmp fast olt float %4274, %4275
  br i1 %4276, label %4277, label %4330

; <label>:4277                                    ; preds = %4260
  %4278 = extractvalue %dx.types.CBufRet.f32 %4261, 2
  %4279 = fadd fast float %4278, %133
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4290 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4291 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4292 = fadd fast float %4289, %4264
  %4293 = fadd fast float %4290, %4265
  %4294 = fadd fast float %4279, %4291
  %4295 = fmul fast float %4292, %4281
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4283, float %4295)  ; FMad(a,b,c)
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4285, float %4296)  ; FMad(a,b,c)
  %4298 = fmul fast float %4292, %4286
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4287, float %4298)  ; FMad(a,b,c)
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4288, float %4299)  ; FMad(a,b,c)
  %4301 = fsub fast float %4297, %4289
  %4302 = fsub fast float %4300, %4290
  %4303 = fsub fast float %4301, %4267
  %4304 = fadd fast float %4303, %4275
  %4305 = fsub fast float %4302, %4268
  %4306 = fadd fast float %4305, %4275
  %4307 = extractvalue %dx.types.CBufRet.f32 %4266, 3
  %4308 = fmul fast float %4304, %4307
  %4309 = fmul fast float %4306, %4307
  %4310 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4311 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4312 = fsub fast float 1.000000e+00, %4310
  %4313 = fsub fast float 1.000000e+00, %4311
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %4312, float %4313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = fcmp fast ugt float %4315, 0.000000e+00
  br i1 %4316, label %4317, label %4330

; <label>:4317                                    ; preds = %4277
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4320 = fmul fast float %4319, %4315
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4322 = fadd fast float %4321, %4320
  %4323 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4324 = fadd fast float %4322, %4291
  %4325 = fmul fast float %4297, %4285
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4288, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4323, float %4326)  ; FMad(a,b,c)
  %4328 = fsub fast float %4327, %4291
  %4329 = fsub fast float %4328, %4278
  br label %4330

; <label>:4330                                    ; preds = %4317, %4277, %4260
  %4331 = phi i1 [ true, %4317 ], [ false, %4277 ], [ false, %4260 ]
  %4332 = phi float [ %4329, %4317 ], [ -1.310720e+05, %4277 ], [ -1.310720e+05, %4260 ]
  %4333 = fsub fast float %4332, %133
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = select i1 %4331, float %4334, float 1.000000e+00
  br label %4336

; <label>:4336                                    ; preds = %4330, %4201
  %4337 = phi float [ %4335, %4330 ], [ 0.000000e+00, %4201 ]
  %4338 = icmp eq i32 %4258, 3
  %4339 = select i1 %4338, float 1.000000e+00, float %4337
  %4340 = call float @dx.op.binary.f32(i32 35, float %4217, float %4339)  ; FMax(a,b)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fcmp fast une float %4341, 0.000000e+00
  %4343 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = call float @dx.op.unary.f32(i32 25, float %4343)  ; Rsqrt(value)
  br i1 %4342, label %4352, label %4345

; <label>:4345                                    ; preds = %4336
  %4346 = fmul fast float %4344, %131
  %4347 = fmul fast float %4344, %132
  %4348 = fmul fast float %4344, %133
  %4349 = fsub fast float -0.000000e+00, %4346
  %4350 = fsub fast float -0.000000e+00, %4347
  %4351 = fsub fast float -0.000000e+00, %4348
  br label %4520

; <label>:4352                                    ; preds = %4336
  %4353 = fmul fast float %131, %4344
  %4354 = fsub fast float -0.000000e+00, %4353
  %4355 = fmul fast float %132, %4344
  %4356 = fsub fast float -0.000000e+00, %4355
  %4357 = fmul fast float %133, %4344
  %4358 = fsub fast float -0.000000e+00, %4357
  %4359 = call float @dx.op.dot3.f32(i32 55, float %4354, float %4356, float %4358, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4360 = fmul fast float %4341, 2.500000e+00
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4341, 0x4013FFFFE0000000
  %4363 = fadd fast float %4362, 0xBFFFFFFFE0000000
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fmul fast float %4341, 0x4004000020000000
  %4366 = fadd fast float %4365, 0xBFF8000040000000
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4369 = fmul fast float %4221, 1.000000e+01
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4370, 2.000000e+00
  %4372 = fsub fast float 3.000000e+00, %4371
  %4373 = fmul fast float %4370, %4370
  %4374 = fmul fast float %4373, %4372
  %4375 = fsub fast float 1.000000e+00, %4374
  %4376 = fsub fast float 0x3FE3333340000000, %4242
  %4377 = fmul fast float %4376, 0x400AAAAAA0000000
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fmul fast float %4375, %4378
  %4380 = fmul fast float %4254, 0x3FEA2B8620000000
  %4381 = fmul fast float %4255, 0x3FEA2B8620000000
  %4382 = fmul fast float %4256, 0x3FEA2B8620000000
  %4383 = fadd fast float %4380, 0x3FC81DFBA0000000
  %4384 = fmul fast float %4383, %4254
  %4385 = fadd fast float %4384, 0x3F910E6020000000
  %4386 = fadd fast float %4381, 0x3FC81DFBA0000000
  %4387 = fmul fast float %4386, %4255
  %4388 = fadd fast float %4387, 0x3F910E6020000000
  %4389 = fadd fast float %4382, 0x3FC81DFBA0000000
  %4390 = fmul fast float %4389, %4256
  %4391 = fadd fast float %4390, 0x3F910E6020000000
  %4392 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4393 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4394 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4395 = fsub fast float %4392, %4254
  %4396 = fsub fast float %4393, %4255
  %4397 = fsub fast float %4394, %4256
  %4398 = fmul fast float %4395, %4368
  %4399 = fmul fast float %4398, %4379
  %4400 = fmul fast float %4396, %4368
  %4401 = fmul fast float %4400, %4379
  %4402 = fmul fast float %4397, %4368
  %4403 = fmul fast float %4402, %4379
  %4404 = fadd fast float %4399, %4254
  %4405 = fadd fast float %4401, %4255
  %4406 = fadd fast float %4403, %4256
  %4407 = fmul fast float %4214, %4214
  %4408 = fmul fast float %4407, %4407
  %4409 = fadd fast float %4364, 1.000000e+00
  %4410 = fsub fast float %4409, %4379
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fsub fast float 1.000000e+00, %4408
  %4415 = call float @dx.op.binary.f32(i32 36, float %4411, float %4414)  ; FMin(a,b)
  %4416 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4417 = call float @dx.op.binary.f32(i32 35, float %4415, float %4416)  ; FMax(a,b)
  %4418 = fadd fast float %4413, 0xBFE4CCCCC0000000
  %4419 = fmul fast float %4418, 0x4006DB6DA0000000
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, 2.000000e+00
  %4422 = fsub fast float 3.000000e+00, %4421
  %4423 = bitcast float %4239 to i32
  %4424 = ashr i32 %4423, 1
  %4425 = add nsw i32 %4424, 532487669
  %4426 = bitcast i32 %4425 to float
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = bitcast float %4427 to i32
  %4429 = sub nsw i32 2129859010, %4428
  %4430 = bitcast i32 %4429 to float
  %4431 = fmul fast float %4430, 2.000000e+00
  %4432 = bitcast float %4240 to i32
  %4433 = ashr i32 %4432, 1
  %4434 = add nsw i32 %4433, 532487669
  %4435 = bitcast i32 %4434 to float
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = bitcast float %4436 to i32
  %4438 = sub nsw i32 2129859010, %4437
  %4439 = bitcast i32 %4438 to float
  %4440 = fmul fast float %4439, 2.000000e+00
  %4441 = bitcast float %4241 to i32
  %4442 = ashr i32 %4441, 1
  %4443 = add nsw i32 %4442, 532487669
  %4444 = bitcast i32 %4443 to float
  %4445 = fsub fast float 1.000000e+00, %4444
  %4446 = bitcast float %4445 to i32
  %4447 = sub nsw i32 2129859010, %4446
  %4448 = bitcast i32 %4447 to float
  %4449 = fmul fast float %4448, 2.000000e+00
  %4450 = fsub fast float 0x4002A9FBE0000000, %4431
  %4451 = fadd fast float %4431, 0x3FD54FDF00000000
  %4452 = bitcast float %4451 to i32
  %4453 = sub nsw i32 2129859010, %4452
  %4454 = bitcast i32 %4453 to float
  %4455 = fmul fast float %4454, %4450
  %4456 = fmul fast float %4455, %4455
  %4457 = fsub fast float 0x4002A9FBE0000000, %4440
  %4458 = fadd fast float %4440, 0x3FD54FDF00000000
  %4459 = bitcast float %4458 to i32
  %4460 = sub nsw i32 2129859010, %4459
  %4461 = bitcast i32 %4460 to float
  %4462 = fmul fast float %4461, %4457
  %4463 = fmul fast float %4462, %4462
  %4464 = fsub fast float 0x4002A9FBE0000000, %4449
  %4465 = fadd fast float %4449, 0x3FD54FDF00000000
  %4466 = bitcast float %4465 to i32
  %4467 = sub nsw i32 2129859010, %4466
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4468, %4464
  %4470 = fmul fast float %4469, %4469
  %4471 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4456)  ; FMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4463)  ; FMax(a,b)
  %4473 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4470)  ; FMax(a,b)
  %4474 = fsub fast float 1.000000e+00, %4359
  %4475 = fadd fast float %4474, %4375
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fsub fast float 1.000000e+00, %4339
  %4478 = fmul fast float %4417, %4477
  %4479 = fmul fast float %4420, %4420
  %4480 = fmul fast float %4479, %4478
  %4481 = fmul fast float %4480, %4422
  %4482 = fmul fast float %4477, 0xBFE99999A0000000
  %4483 = fmul fast float %4482, %4368
  %4484 = fmul fast float %4483, %4379
  %4485 = fadd fast float %4484, 1.000000e+00
  %4486 = fadd fast float %4242, -1.000000e+00
  %4487 = fmul fast float %4485, %4486
  %4488 = fadd fast float %4487, 1.000000e+00
  %4489 = fsub fast float %4471, %4239
  %4490 = fsub fast float %4472, %4240
  %4491 = fsub fast float %4473, %4241
  %4492 = fmul fast float %4481, %4489
  %4493 = fmul fast float %4481, %4490
  %4494 = fmul fast float %4481, %4491
  %4495 = fadd fast float %4492, %4239
  %4496 = fadd fast float %4493, %4240
  %4497 = fadd fast float %4494, %4241
  %4498 = fsub fast float %75, %4202
  %4499 = fsub fast float %76, %4203
  %4500 = fsub fast float %77, %4204
  %4501 = fmul fast float %4481, %4498
  %4502 = fmul fast float %4481, %4499
  %4503 = fmul fast float %4481, %4500
  %4504 = fadd fast float %4501, %4202
  %4505 = fadd fast float %4502, %4203
  %4506 = fadd fast float %4503, %4204
  %4507 = fmul fast float %4481, %4476
  %4508 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = fmul fast float %4507, %4509
  %4511 = fadd fast float %4510, %4508
  %4512 = fsub fast float 1.000000e+00, %4214
  %4513 = fmul fast float %4481, %4512
  %4514 = fadd fast float %4513, %4214
  %4515 = call float @dx.op.dot3.f32(i32 55, float %4504, float %4505, float %4506, float %4504, float %4505, float %4506)  ; Dot3(ax,ay,az,bx,by,bz)
  %4516 = call float @dx.op.unary.f32(i32 25, float %4515)  ; Rsqrt(value)
  %4517 = fmul fast float %4504, %4516
  %4518 = fmul fast float %4505, %4516
  %4519 = fmul fast float %4506, %4516
  br label %4520

; <label>:4520                                    ; preds = %4352, %4345
  %4521 = phi float [ %4351, %4345 ], [ %4358, %4352 ]
  %4522 = phi float [ %4350, %4345 ], [ %4356, %4352 ]
  %4523 = phi float [ %4349, %4345 ], [ %4354, %4352 ]
  %4524 = phi float [ %4348, %4345 ], [ %4357, %4352 ]
  %4525 = phi float [ %4347, %4345 ], [ %4355, %4352 ]
  %4526 = phi float [ %4346, %4345 ], [ %4353, %4352 ]
  %4527 = phi float [ %4254, %4345 ], [ %4404, %4352 ]
  %4528 = phi float [ %4255, %4345 ], [ %4405, %4352 ]
  %4529 = phi float [ %4256, %4345 ], [ %4406, %4352 ]
  %4530 = phi float [ %4239, %4345 ], [ %4495, %4352 ]
  %4531 = phi float [ %4240, %4345 ], [ %4496, %4352 ]
  %4532 = phi float [ %4241, %4345 ], [ %4497, %4352 ]
  %4533 = phi float [ %4202, %4345 ], [ %4517, %4352 ]
  %4534 = phi float [ %4203, %4345 ], [ %4518, %4352 ]
  %4535 = phi float [ %4204, %4345 ], [ %4519, %4352 ]
  %4536 = phi float [ %4242, %4345 ], [ %4511, %4352 ]
  %4537 = phi float [ %4214, %4345 ], [ %4514, %4352 ]
  %4538 = select i1 %192, float 0.000000e+00, float %4532
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %4523, float %4522, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4525, float %4524, float %4533, float %4534, float %4535)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = fmul fast float %4542, %4533
  %4544 = fmul fast float %4542, %4534
  %4545 = fmul fast float %4542, %4535
  %4546 = fsub fast float %4526, %4543
  %4547 = fsub fast float %4525, %4544
  %4548 = fsub fast float %4524, %4545
  %4549 = call float @dx.op.binary.f32(i32 36, float %4537, float 1.000000e+00)  ; FMin(a,b)
  %4550 = fsub fast float 1.000000e+00, %41
  %4551 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = call float @dx.op.binary.f32(i32 35, float %4551, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4553 = fdiv fast float %4550, %4552
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fmul fast float %4555, 5.000000e-01
  %4557 = fadd fast float %4556, 5.000000e-01
  %4558 = fmul fast float %4557, %41
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = fmul fast float %4560, %4553
  %4562 = fadd fast float %4558, %4561
  %4563 = fsub fast float 5.000000e-01, %4556
  %4564 = fmul fast float %4563, %4527
  %4565 = fmul fast float %4563, %4528
  %4566 = fmul fast float %4563, %4529
  %4567 = fadd fast float %4562, %4564
  %4568 = fadd fast float %4562, %4565
  %4569 = fadd fast float %4562, %4566
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4547, float %4548, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fmul fast float %4571, 5.000000e-01
  %4573 = fadd fast float %4572, 5.000000e-01
  %4574 = fmul fast float %4573, %41
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4547, float %4548, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fmul fast float %4576, %4553
  %4578 = fadd fast float %4574, %4577
  %4579 = fsub fast float 5.000000e-01, %4572
  %4580 = fmul fast float %4579, %4527
  %4581 = fmul fast float %4579, %4528
  %4582 = fmul fast float %4579, %4529
  %4583 = fadd fast float %4578, %4580
  %4584 = fadd fast float %4578, %4581
  %4585 = fadd fast float %4578, %4582
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = call float @dx.op.binary.f32(i32 36, float %4527, float %4587)  ; FMin(a,b)
  %4589 = fsub fast float 1.000000e+00, %4549
  %4590 = fmul fast float %4588, %4589
  %4591 = fsub fast float 1.000000e+00, %4590
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = call float @dx.op.binary.f32(i32 36, float %4528, float %4587)  ; FMin(a,b)
  %4596 = fmul fast float %4595, %4589
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = bitcast float %4597 to i32
  %4599 = sub nsw i32 2129859010, %4598
  %4600 = bitcast i32 %4599 to float
  %4601 = call float @dx.op.binary.f32(i32 36, float %4529, float %4587)  ; FMin(a,b)
  %4602 = fmul fast float %4601, %4589
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = bitcast float %4603 to i32
  %4605 = sub nsw i32 2129859010, %4604
  %4606 = bitcast i32 %4605 to float
  %4607 = fmul fast float %4549, %42
  %4608 = fmul fast float %4607, %4567
  %4609 = fmul fast float %4608, %4594
  %4610 = fmul fast float %4549, %43
  %4611 = fmul fast float %4610, %4568
  %4612 = fmul fast float %4611, %4600
  %4613 = fmul fast float %4549, %44
  %4614 = fmul fast float %4613, %4569
  %4615 = fmul fast float %4614, %4606
  %4616 = call float @dx.op.binary.f32(i32 36, float %4530, float %4587)  ; FMin(a,b)
  %4617 = fmul fast float %4616, %4589
  %4618 = fsub fast float 1.000000e+00, %4617
  %4619 = bitcast float %4618 to i32
  %4620 = sub nsw i32 2129859010, %4619
  %4621 = bitcast i32 %4620 to float
  %4622 = call float @dx.op.binary.f32(i32 36, float %4531, float %4587)  ; FMin(a,b)
  %4623 = fmul fast float %4622, %4589
  %4624 = fsub fast float 1.000000e+00, %4623
  %4625 = bitcast float %4624 to i32
  %4626 = sub nsw i32 2129859010, %4625
  %4627 = bitcast i32 %4626 to float
  %4628 = call float @dx.op.binary.f32(i32 36, float %4538, float %4587)  ; FMin(a,b)
  %4629 = fmul fast float %4628, %4589
  %4630 = fsub fast float 1.000000e+00, %4629
  %4631 = bitcast float %4630 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = fmul fast float %4607, %4583
  %4635 = fmul fast float %4634, %4621
  %4636 = fmul fast float %4610, %4584
  %4637 = fmul fast float %4636, %4627
  %4638 = fmul fast float %4613, %4585
  %4639 = fmul fast float %4638, %4633
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4612, float %4615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = select i1 %192, float 0.000000e+00, float %4609
  %4642 = select i1 %192, float %4640, float %4612
  %4643 = select i1 %192, float 0.000000e+00, float %4615
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4637, float %4639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = select i1 %192, float 0.000000e+00, float %4635
  %4646 = select i1 %192, float %4644, float %4637
  %4647 = select i1 %192, float 0.000000e+00, float %4639
  %4648 = fmul fast float %4540, 9.843750e-01
  %4649 = fmul fast float %4536, 9.843750e-01
  %4650 = fadd fast float %4648, 7.812500e-03
  %4651 = fadd fast float %4649, 7.812500e-03
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 2
  %4654 = extractvalue %dx.types.ResRet.f32 %4652, 3
  %4655 = fmul fast float %4653, %4530
  %4656 = fmul fast float %4653, %4531
  %4657 = fmul fast float %4653, %4538
  %4658 = fadd fast float %4655, %4654
  %4659 = fadd fast float %4656, %4654
  %4660 = fadd fast float %4657, %4654
  %4661 = fcmp fast ogt float %4215, 0.000000e+00
  br i1 %4661, label %4662, label %4688

; <label>:4662                                    ; preds = %4520
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %4215, float %4540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4663, 2
  %4667 = fadd fast float %4664, -5.000000e-01
  %4668 = fadd fast float %4665, -5.000000e-01
  %4669 = fadd fast float %4666, -5.000000e-01
  %4670 = fsub fast float 1.000000e+00, %4530
  %4671 = fsub fast float 1.000000e+00, %4531
  %4672 = fsub fast float 1.000000e+00, %4538
  %4673 = fmul fast float %4530, 4.000000e+00
  %4674 = fmul fast float %4673, %4670
  %4675 = fmul fast float %4674, %4667
  %4676 = fmul fast float %4531, 4.000000e+00
  %4677 = fmul fast float %4676, %4671
  %4678 = fmul fast float %4677, %4668
  %4679 = fmul fast float %4538, 4.000000e+00
  %4680 = fmul fast float %4679, %4672
  %4681 = fmul fast float %4680, %4669
  %4682 = fadd fast float %4675, %4658
  %4683 = fadd fast float %4678, %4659
  %4684 = fadd fast float %4681, %4660
  %4685 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  br label %4688

; <label>:4688                                    ; preds = %4662, %4520
  %4689 = phi float [ %4685, %4662 ], [ %4658, %4520 ]
  %4690 = phi float [ %4686, %4662 ], [ %4659, %4520 ]
  %4691 = phi float [ %4687, %4662 ], [ %4660, %4520 ]
  %4692 = call float @dx.op.binary.f32(i32 35, float %4690, float %4691)  ; FMax(a,b)
  %4693 = call float @dx.op.binary.f32(i32 35, float %4689, float %4692)  ; FMax(a,b)
  %4694 = fsub fast float 1.000000e+00, %4693
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4527, float %4528, float %4529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = fcmp fast ogt float %4695, 0x3E7FF19E20000000
  %4697 = fdiv fast float 1.000000e+00, %4695
  %4698 = select i1 %4696, float %4697, float 0.000000e+00
  %4699 = fmul fast float %4698, %4527
  %4700 = fmul fast float %4698, %4528
  %4701 = fmul fast float %4698, %4529
  %4702 = fadd fast float %4699, -1.000000e+00
  %4703 = fadd fast float %4700, -1.000000e+00
  %4704 = fadd fast float %4701, -1.000000e+00
  %4705 = fmul fast float %4702, 5.000000e-01
  %4706 = fmul fast float %4703, 5.000000e-01
  %4707 = fmul fast float %4704, 5.000000e-01
  %4708 = fadd fast float %4705, 1.000000e+00
  %4709 = fadd fast float %4706, 1.000000e+00
  %4710 = fadd fast float %4707, 1.000000e+00
  %4711 = fmul fast float %4689, %4645
  %4712 = fmul fast float %4690, %4646
  %4713 = fmul fast float %4691, %4647
  %4714 = fsub fast float 1.000000e+00, %4540
  %4715 = bitcast float %4714 to i32
  %4716 = sitofp i32 %4715 to float
  %4717 = fmul fast float %4716, 5.000000e+00
  %4718 = fadd fast float %4717, 0xC1EFBF8940000000
  %4719 = fptosi float %4718 to i32
  %4720 = bitcast i32 %4719 to float
  %4721 = fmul fast float %4720, %4216
  %4722 = fmul fast float %4641, %4721
  %4723 = fmul fast float %4722, %4694
  %4724 = fmul fast float %4723, %4708
  %4725 = fmul fast float %4642, %4721
  %4726 = fmul fast float %4725, %4694
  %4727 = fmul fast float %4726, %4709
  %4728 = fmul fast float %4643, %4721
  %4729 = fmul fast float %4728, %4694
  %4730 = fmul fast float %4729, %4710
  %4731 = fmul fast float %4643, %4212
  %4732 = fmul fast float %4731, %4694
  %4733 = fadd fast float %4711, %4208
  %4734 = fadd fast float %4733, %4724
  %4735 = fmul fast float %4734, %4212
  %4736 = fadd fast float %4712, %4209
  %4737 = fadd fast float %4736, %4727
  %4738 = fmul fast float %4737, %4212
  %4739 = fadd fast float %4713, %4210
  %4740 = fadd fast float %4739, %4730
  %4741 = fmul fast float %4740, %4212
  %4742 = fmul fast float %4212, %4212
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4743, float %4743, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4748 = fmul fast float %4747, %4714
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4751 = fsub fast float 1.000000e+00, %4220
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fadd fast float %4732, %4218
  %4754 = fmul fast float %4753, %4220
  %4755 = fmul fast float %4752, %4750
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4758 = fmul fast float %4527, %4212
  %4759 = fmul fast float %4758, %4641
  %4760 = fmul fast float %4759, %4694
  %4761 = fmul fast float %4528, %4212
  %4762 = fmul fast float %4761, %4642
  %4763 = fmul fast float %4762, %4694
  %4764 = fmul fast float %4732, %4529
  %4765 = fcmp fast ogt float %61, %153
  %4766 = and i1 %4765, %4259
  %4767 = or i1 %4338, %4766
  %4768 = icmp eq i32 %4258, 2
  %4769 = fcmp fast ole float %61, %153
  %4770 = and i1 %4769, %4768
  %4771 = or i1 %4770, %4767
  br i1 %4766, label %4772, label %5029

; <label>:4772                                    ; preds = %4688
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4776 = fmul fast float %4774, %68
  %4777 = fmul fast float %4775, %69
  %4778 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4780 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %25, float %4778, float %4779, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = extractvalue %dx.types.ResRet.f32 %4780, 3
  %4785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %25, float %4778, float %4779, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = extractvalue %dx.types.ResRet.f32 %4785, 3
  %4790 = call float @dx.op.binary.f32(i32 35, float %4782, float %4783)  ; FMax(a,b)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4781, float %4790)  ; FMax(a,b)
  %4792 = call float @dx.op.binary.f32(i32 35, float %4791, float %4784)  ; FMax(a,b)
  %4793 = call float @dx.op.binary.f32(i32 36, float %4787, float %4788)  ; FMin(a,b)
  %4794 = call float @dx.op.binary.f32(i32 36, float %4786, float %4793)  ; FMin(a,b)
  %4795 = call float @dx.op.binary.f32(i32 36, float %4794, float %4789)  ; FMin(a,b)
  %4796 = fmul fast float %4792, 2.550000e+02
  %4797 = fadd fast float %4796, 0x3F70101020000000
  %4798 = fptoui float %4797 to i32
  %4799 = fmul fast float %4795, 2.550000e+02
  %4800 = fadd fast float %4799, 0x3F70101020000000
  %4801 = fptoui float %4800 to i32
  %4802 = icmp ult i32 %4798, %4801
  br i1 %4802, label %4803, label %4971

; <label>:4803                                    ; preds = %4772
  %4804 = fcmp fast ogt float %60, 9.843750e-01
  %4805 = fadd fast float %61, -4.000000e+00
  %4806 = select i1 %4804, float -4.000000e+00, float %4805
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float 0.000000e+00)  ; FMax(a,b)
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = fadd fast float %4809, %4807
  %4811 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4812 = fmul fast float %4810, %4811
  %4813 = call float @dx.op.unary.f32(i32 23, float %4812)  ; Log(value)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4815 = fmul fast float %4814, %4813
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 2
  %4818 = fmul fast float %4815, %4817
  %4819 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4820 = uitofp i32 %4798 to float
  %4821 = uitofp i32 %4801 to float
  %4822 = fadd fast float %4820, 5.000000e-01
  %4823 = fadd fast float %4821, 5.000000e-01
  %4824 = fmul fast float %4817, %4822
  %4825 = fmul fast float %4817, %4823
  %4826 = fadd fast float %4824, 0x3F0FFB4800000000
  %4827 = fadd fast float %4825, 0xBF0FFB4800000000
  %4828 = call float @dx.op.binary.f32(i32 35, float %4819, float %4826)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 36, float %4828, float %4827)  ; FMin(a,b)
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4834 = fmul fast float %4831, %4829
  %4835 = fadd fast float %4833, %4834
  %4836 = fadd fast float %4833, %4832
  %4837 = fsub fast float %4831, %4832
  %4838 = fadd fast float %4837, %4833
  %4839 = call float @dx.op.binary.f32(i32 35, float %4835, float %4836)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 36, float %4839, float %4838)  ; FMin(a,b)
  %4841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %23, float %4778, float %4779, float %4840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.ResRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.ResRet.f32 %4841, 2
  %4845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.i32 %4845, 0
  %4847 = extractvalue %dx.types.CBufRet.i32 %4845, 1
  %4848 = uitofp i32 %4846 to float
  %4849 = uitofp i32 %4847 to float
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = fmul fast float %4848, %4778
  %4854 = fmul fast float %4849, %4779
  %4855 = fadd fast float %4853, -5.000000e-01
  %4856 = fadd fast float %4854, -5.000000e-01
  %4857 = call float @dx.op.unary.f32(i32 22, float %4855)  ; Frc(value)
  %4858 = call float @dx.op.unary.f32(i32 22, float %4856)  ; Frc(value)
  %4859 = fmul fast float %4857, %4857
  %4860 = fmul fast float %4859, %4857
  %4861 = fsub fast float 3.000000e+00, %4857
  %4862 = fmul fast float %4859, %4861
  %4863 = fmul fast float %4857, 3.000000e+00
  %4864 = fmul fast float %4860, 3.000000e+00
  %4865 = fmul fast float %4859, 6.000000e+00
  %4866 = fsub fast float %4864, %4865
  %4867 = fadd fast float %4866, 4.000000e+00
  %4868 = fmul fast float %4867, 0x3FC5555560000000
  %4869 = fmul fast float %4860, -3.000000e+00
  %4870 = fadd fast float %4859, %4857
  %4871 = fmul fast float %4870, 3.000000e+00
  %4872 = fadd fast float %4869, 1.000000e+00
  %4873 = fadd fast float %4872, %4871
  %4874 = fmul fast float %4860, 0x3FC5555560000000
  %4875 = fmul fast float %4858, %4858
  %4876 = fmul fast float %4875, %4858
  %4877 = fsub fast float 3.000000e+00, %4858
  %4878 = fmul fast float %4875, %4877
  %4879 = fmul fast float %4858, 3.000000e+00
  %4880 = fmul fast float %4876, 3.000000e+00
  %4881 = fmul fast float %4875, 6.000000e+00
  %4882 = fsub fast float %4880, %4881
  %4883 = fadd fast float %4882, 4.000000e+00
  %4884 = fmul fast float %4883, 0x3FC5555560000000
  %4885 = fmul fast float %4876, -3.000000e+00
  %4886 = fadd fast float %4875, %4858
  %4887 = fmul fast float %4886, 3.000000e+00
  %4888 = fadd fast float %4885, 1.000000e+00
  %4889 = fadd fast float %4888, %4887
  %4890 = fmul fast float %4876, 0x3FC5555560000000
  %4891 = fadd fast float %4857, 1.000000e+00
  %4892 = fsub fast float 1.000000e+00, %4863
  %4893 = fadd fast float %4892, %4862
  %4894 = fadd fast float %4893, %4867
  %4895 = fmul fast float %4894, 0x3FC5555560000000
  %4896 = fdiv fast float %4868, %4895
  %4897 = fsub fast float %4891, %4896
  %4898 = fsub fast float 1.000000e+00, %4857
  %4899 = fadd fast float %4873, %4860
  %4900 = fmul fast float %4899, 0x3FC5555560000000
  %4901 = fdiv fast float %4874, %4900
  %4902 = fadd fast float %4898, %4901
  %4903 = fadd fast float %4858, 1.000000e+00
  %4904 = fsub fast float 1.000000e+00, %4879
  %4905 = fadd fast float %4904, %4878
  %4906 = fadd fast float %4905, %4883
  %4907 = fmul fast float %4906, 0x3FC5555560000000
  %4908 = fdiv fast float %4884, %4907
  %4909 = fsub fast float %4903, %4908
  %4910 = fsub fast float 1.000000e+00, %4858
  %4911 = fadd fast float %4889, %4876
  %4912 = fmul fast float %4911, 0x3FC5555560000000
  %4913 = fdiv fast float %4890, %4912
  %4914 = fadd fast float %4913, %4910
  %4915 = fmul fast float %4897, %4851
  %4916 = fsub fast float %4778, %4915
  %4917 = fmul fast float %4902, %4851
  %4918 = fadd fast float %4917, %4778
  %4919 = fmul fast float %4914, %4852
  %4920 = fadd fast float %4919, %4779
  %4921 = fmul fast float %4909, %4852
  %4922 = fsub fast float %4779, %4921
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %4916, float %4922, float %4840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %4918, float %4922, float %4840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %4916, float %4920, float %4840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 1
  %4934 = extractvalue %dx.types.ResRet.f32 %4931, 2
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %4918, float %4920, float %4840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4939 = fsub fast float %4932, %4924
  %4940 = fsub fast float %4933, %4925
  %4941 = fsub fast float %4934, %4926
  %4942 = fmul fast float %4939, %4912
  %4943 = fmul fast float %4940, %4912
  %4944 = fmul fast float %4941, %4912
  %4945 = fadd fast float %4942, %4924
  %4946 = fadd fast float %4943, %4925
  %4947 = fadd fast float %4944, %4926
  %4948 = fsub fast float %4936, %4928
  %4949 = fsub fast float %4937, %4929
  %4950 = fsub fast float %4938, %4930
  %4951 = fmul fast float %4948, %4912
  %4952 = fmul fast float %4949, %4912
  %4953 = fmul fast float %4950, %4912
  %4954 = fsub fast float %4928, %4945
  %4955 = fadd fast float %4954, %4951
  %4956 = fsub fast float %4929, %4946
  %4957 = fadd fast float %4956, %4952
  %4958 = fsub fast float %4930, %4947
  %4959 = fadd fast float %4958, %4953
  %4960 = fmul fast float %4955, %4900
  %4961 = fmul fast float %4957, %4900
  %4962 = fmul fast float %4959, %4900
  %4963 = fadd fast float %4960, %4945
  %4964 = fadd fast float %4961, %4946
  %4965 = fadd fast float %4962, %4947
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4968 = fmul fast float %4963, %4967
  %4969 = fmul fast float %4964, %4967
  %4970 = fmul fast float %4965, %4967
  br label %4971

; <label>:4971                                    ; preds = %4803, %4772
  %4972 = phi float [ %4842, %4803 ], [ 1.000000e+00, %4772 ]
  %4973 = phi float [ %4843, %4803 ], [ 1.000000e+00, %4772 ]
  %4974 = phi float [ %4844, %4803 ], [ 1.000000e+00, %4772 ]
  %4975 = phi float [ %4968, %4803 ], [ 0.000000e+00, %4772 ]
  %4976 = phi float [ %4969, %4803 ], [ 0.000000e+00, %4772 ]
  %4977 = phi float [ %4970, %4803 ], [ 0.000000e+00, %4772 ]
  %4978 = fmul fast float %4975, %4745
  %4979 = fmul fast float %4976, %4745
  %4980 = fmul fast float %4977, %4745
  %4981 = call float @dx.op.dot3.f32(i32 55, float %4972, float %4973, float %4974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4978, float %4979, float %4980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = select i1 %192, float %4981, float %4972
  %4984 = select i1 %192, float %4981, float %4973
  %4985 = select i1 %192, float 1.000000e+00, float %4974
  %4986 = select i1 %192, float %4982, float %4978
  %4987 = select i1 %192, float 0.000000e+00, float %4979
  %4988 = select i1 %192, float 0.000000e+00, float %4980
  %4989 = fmul fast float %4983, %4760
  %4990 = fmul fast float %4984, %4763
  %4991 = fmul fast float %4985, %4764
  %4992 = fadd fast float %4989, %4986
  %4993 = fadd fast float %4990, %4987
  %4994 = fadd fast float %4988, %4991
  %4995 = fmul fast float %4983, %4735
  %4996 = fmul fast float %4984, %4738
  %4997 = fmul fast float %4985, %4741
  %4998 = fmul fast float %101, %4774
  %4999 = fmul fast float %103, %4775
  %5000 = fsub fast float 1.000000e+00, %4998
  %5001 = fsub fast float 1.000000e+00, %4999
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.CBufRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5006 = fmul fast float %5000, %5003
  %5007 = fmul fast float %5000, %5004
  %5008 = fmul fast float %5000, %5005
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5013 = fmul fast float %5001, %5010
  %5014 = fmul fast float %5001, %5011
  %5015 = fmul fast float %5001, %5012
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = fadd fast float %5013, %5017
  %5021 = fadd fast float %5020, %5006
  %5022 = fadd fast float %5014, %5018
  %5023 = fadd fast float %5022, %5007
  %5024 = fadd fast float %5015, %5019
  %5025 = fadd fast float %5024, %5008
  %5026 = fmul fast float %5021, %153
  %5027 = fmul fast float %5023, %153
  %5028 = fmul fast float %5025, %153
  br label %5029

; <label>:5029                                    ; preds = %4971, %4688
  %5030 = phi float [ %5026, %4971 ], [ %131, %4688 ]
  %5031 = phi float [ %5027, %4971 ], [ %132, %4688 ]
  %5032 = phi float [ %5028, %4971 ], [ %133, %4688 ]
  %5033 = phi float [ %153, %4971 ], [ %61, %4688 ]
  %5034 = phi float [ %4992, %4971 ], [ %4760, %4688 ]
  %5035 = phi float [ %4993, %4971 ], [ %4763, %4688 ]
  %5036 = phi float [ %4994, %4971 ], [ %4764, %4688 ]
  %5037 = phi float [ %4995, %4971 ], [ %4735, %4688 ]
  %5038 = phi float [ %4996, %4971 ], [ %4738, %4688 ]
  %5039 = phi float [ %4997, %4971 ], [ %4741, %4688 ]
  %5040 = phi float [ %4972, %4971 ], [ 1.000000e+00, %4688 ]
  br i1 %4771, label %6195, label %5041

; <label>:5041                                    ; preds = %5029
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.CBufRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.CBufRet.f32 %5042, 2
  %5046 = extractvalue %dx.types.CBufRet.f32 %5042, 3
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.CBufRet.f32 %5047, 3
  %5052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5053 = extractvalue %dx.types.CBufRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.CBufRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.CBufRet.f32 %5052, 2
  %5056 = extractvalue %dx.types.CBufRet.f32 %5052, 3
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5061 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 3
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5067 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5068 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5069 = fcmp fast olt float %5068, -5.000000e-01
  %5070 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = call float @dx.op.unary.f32(i32 25, float %5070)  ; Rsqrt(value)
  %5072 = fmul fast float %5071, %5070
  %5073 = fmul fast float %5071, %5030
  %5074 = fmul fast float %5071, %5031
  %5075 = fmul fast float %5071, %5032
  %5076 = fadd fast float %5072, %5046
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %5075, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.i32 %5078, 1
  %5080 = and i32 %5079, 1
  %5081 = icmp ne i32 %5080, 0
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 2
  %5084 = fcmp fast ogt float %5083, 0.000000e+00
  %5085 = and i1 %5081, %5084
  br i1 %5085, label %5086, label %5492, !dx.controlflow.hints !66

; <label>:5086                                    ; preds = %5041
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 3
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5093 = fsub fast float %5090, %5092
  %5094 = and i32 %5079, 2
  %5095 = extractvalue %dx.types.CBufRet.i32 %5078, 0
  %5096 = call i32 @dx.op.binary.i32(i32 40, i32 %5095, i32 3)  ; UMin(a,b)
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.CBufRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5101 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5102 = fsub fast float %5098, %5100
  %5103 = fsub fast float %5099, %5101
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = fcmp fast ogt float %5105, 0.000000e+00
  %5107 = fsub fast float -0.000000e+00, %5102
  %5108 = fsub fast float -0.000000e+00, %5103
  %5109 = call float @dx.op.dot2.f32(i32 54, float %5073, float %5074, float %5073, float %5074)  ; Dot2(ax,ay,bx,by)
  %5110 = call float @dx.op.dot2.f32(i32 54, float %5073, float %5074, float %5107, float %5108)  ; Dot2(ax,ay,bx,by)
  %5111 = fmul fast float %5110, 2.000000e+00
  %5112 = call float @dx.op.dot2.f32(i32 54, float %5107, float %5108, float %5107, float %5108)  ; Dot2(ax,ay,bx,by)
  %5113 = fmul fast float %5105, %5105
  %5114 = fsub fast float %5112, %5113
  %5115 = fmul fast float %5111, %5111
  %5116 = fmul fast float %5109, 4.000000e+00
  %5117 = fmul fast float %5116, %5114
  %5118 = fsub fast float %5115, %5117
  %5119 = fcmp fast ogt float %5118, 0.000000e+00
  br i1 %5119, label %5120, label %5135

; <label>:5120                                    ; preds = %5086
  %5121 = fcmp fast ogt float %5111, 0.000000e+00
  %5122 = call float @dx.op.unary.f32(i32 24, float %5118)  ; Sqrt(value)
  %5123 = fsub fast float -0.000000e+00, %5122
  %5124 = select i1 %5121, float %5122, float %5123
  %5125 = fadd fast float %5124, %5111
  %5126 = fmul float %5125, -5.000000e-01
  %5127 = fdiv fast float %5126, %5109
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float 0.000000e+00)  ; FMax(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5072, float %5128)  ; FMin(a,b)
  %5130 = fdiv fast float %5114, %5126
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float 0.000000e+00)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 36, float %5072, float %5131)  ; FMin(a,b)
  %5133 = call float @dx.op.binary.f32(i32 36, float %5129, float %5132)  ; FMin(a,b)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5129, float %5132)  ; FMax(a,b)
  br label %5135

; <label>:5135                                    ; preds = %5120, %5086
  %5136 = phi float [ %5134, %5120 ], [ -1.000000e+00, %5086 ]
  %5137 = phi float [ %5133, %5120 ], [ -1.000000e+00, %5086 ]
  %5138 = phi i1 [ true, %5120 ], [ false, %5086 ]
  %5139 = and i1 %5106, %5138
  br i1 %5139, label %5140, label %5142

; <label>:5140                                    ; preds = %5135
  %5141 = fcmp fast oeq float %5137, %5136
  br i1 %5141, label %5445, label %5143

; <label>:5142                                    ; preds = %5135
  br i1 %5106, label %5445, label %5143

; <label>:5143                                    ; preds = %5142, %5140
  %5144 = phi float [ %5072, %5142 ], [ %5136, %5140 ]
  %5145 = phi float [ 0.000000e+00, %5142 ], [ %5137, %5140 ]
  %5146 = icmp ne i32 %5094, 0
  %5147 = fmul fast float %5144, %5075
  %5148 = fadd fast float %5147, %5088
  %5149 = fmul fast float %5148, %5144
  %5150 = select i1 %5146, float 0.000000e+00, float %5149
  %5151 = fcmp fast oeq float %5075, 0.000000e+00
  %5152 = fdiv fast float %5093, %5075
  %5153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5152)  ; FMax(a,b)
  %5154 = select i1 %5151, float %5144, float %5153
  %5155 = call float @dx.op.binary.f32(i32 36, float %5144, float %5154)  ; FMin(a,b)
  %5156 = fcmp fast ogt float %5075, 0.000000e+00
  %5157 = fcmp fast olt float %5093, 0.000000e+00
  br i1 %5156, label %5158, label %5215

; <label>:5158                                    ; preds = %5143
  %5159 = icmp eq i32 %5094, 0
  br i1 %5157, label %5160, label %5204

; <label>:5160                                    ; preds = %5158
  %5161 = select i1 %5159, float %5144, float 0.000000e+00
  %5162 = fsub fast float -0.000000e+00, %5161
  %5163 = call float @dx.op.unary.f32(i32 6, float %5162)  ; FAbs(value)
  %5164 = fmul fast float %5161, %5075
  %5165 = fadd fast float %5164, %5088
  %5166 = fmul fast float %5163, %5165
  %5167 = fsub fast float %5150, %5166
  %5168 = fsub fast float %5144, %5163
  %5169 = select i1 %5159, float %5168, float 0.000000e+00
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5178 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5181 = call float @dx.op.binary.f32(i32 36, float %5167, float %5180)  ; FMin(a,b)
  %5182 = fmul fast float %5178, %5169
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fsub fast float %5175, %5171
  %5185 = fsub fast float %5176, %5172
  %5186 = fsub fast float %5177, %5173
  %5187 = fmul fast float %5183, %5184
  %5188 = fmul fast float %5183, %5185
  %5189 = fmul fast float %5183, %5186
  %5190 = fadd fast float %5187, %5171
  %5191 = fadd fast float %5188, %5172
  %5192 = fadd fast float %5189, %5173
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = fadd fast float %5195, %5194
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5199 = extractvalue %dx.types.CBufRet.f32 %5193, 3
  %5200 = fadd fast float %5199, %5198
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = fmul fast float %5197, %5181
  %5203 = fmul fast float %5202, %5201
  br label %5445

; <label>:5204                                    ; preds = %5158
  br i1 %5159, label %5205, label %5226

; <label>:5205                                    ; preds = %5204
  %5206 = call float @dx.op.binary.f32(i32 36, float %5155, float %5145)  ; FMin(a,b)
  %5207 = fsub fast float %5155, %5206
  %5208 = fsub fast float %5207, %5144
  %5209 = call float @dx.op.unary.f32(i32 6, float %5208)  ; FAbs(value)
  %5210 = fadd fast float %5207, %5144
  %5211 = fmul fast float %5210, %5075
  %5212 = fadd fast float %5211, %5088
  %5213 = fmul fast float %5212, %5209
  %5214 = fsub fast float %5150, %5213
  br label %5226

; <label>:5215                                    ; preds = %5143
  br i1 %5157, label %5216, label %5226

; <label>:5216                                    ; preds = %5215
  %5217 = call float @dx.op.binary.f32(i32 35, float %5145, float %5155)  ; FMax(a,b)
  %5218 = icmp eq i32 %5094, 0
  %5219 = select i1 %5218, float %5155, float 0.000000e+00
  %5220 = fsub fast float -0.000000e+00, %5219
  %5221 = call float @dx.op.unary.f32(i32 6, float %5220)  ; FAbs(value)
  %5222 = fmul fast float %5219, %5075
  %5223 = fadd fast float %5222, %5088
  %5224 = fmul fast float %5221, %5223
  %5225 = fsub fast float %5150, %5224
  br label %5226

; <label>:5226                                    ; preds = %5216, %5215, %5205, %5204
  %5227 = phi float [ %5145, %5204 ], [ %5145, %5205 ], [ %5217, %5216 ], [ %5145, %5215 ]
  %5228 = phi float [ 0.000000e+00, %5204 ], [ %5209, %5205 ], [ %5221, %5216 ], [ 0.000000e+00, %5215 ]
  %5229 = phi float [ %5150, %5204 ], [ %5214, %5205 ], [ %5225, %5216 ], [ %5150, %5215 ]
  %5230 = phi float [ %5155, %5204 ], [ %5155, %5205 ], [ %5144, %5216 ], [ %5144, %5215 ]
  %5231 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 0
  store float -1.000000e+00, float* %5231, align 4, !tbaa !67, !noalias !71
  %5232 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 1
  store float -1.000000e+00, float* %5232, align 4, !tbaa !67, !noalias !71
  %5233 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 2
  store float -1.000000e+00, float* %5233, align 4, !tbaa !67, !noalias !71
  %5234 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 0
  store float -1.000000e+00, float* %5234, align 4, !tbaa !67, !noalias !71
  %5235 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 1
  store float -1.000000e+00, float* %5235, align 4, !tbaa !67, !noalias !71
  %5236 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 2
  store float -1.000000e+00, float* %5236, align 4, !tbaa !67, !noalias !71
  %5237 = icmp sgt i32 %5096, 0
  br i1 %5237, label %5238, label %5299

; <label>:5238                                    ; preds = %5226
  br label %5239

; <label>:5239                                    ; preds = %5288, %5238
  %5240 = phi i32 [ %5289, %5288 ], [ 0, %5238 ]
  %5241 = phi i32 [ %5290, %5288 ], [ 0, %5238 ]
  %5242 = add nuw i32 %5241, 171
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 %5242)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = fsub fast float %5244, %5247
  %5250 = fsub fast float %5245, %5248
  %5251 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5252 = fsub fast float -0.000000e+00, %5249
  %5253 = fsub fast float -0.000000e+00, %5250
  %5254 = call float @dx.op.dot2.f32(i32 54, float %5073, float %5074, float %5252, float %5253)  ; Dot2(ax,ay,bx,by)
  %5255 = fmul fast float %5254, 2.000000e+00
  %5256 = call float @dx.op.dot2.f32(i32 54, float %5252, float %5253, float %5252, float %5253)  ; Dot2(ax,ay,bx,by)
  %5257 = fmul fast float %5251, %5251
  %5258 = fsub fast float %5256, %5257
  %5259 = fmul fast float %5255, %5255
  %5260 = fmul fast float %5116, %5258
  %5261 = fsub fast float %5259, %5260
  %5262 = fcmp fast ogt float %5261, 0.000000e+00
  br i1 %5262, label %5263, label %5278

; <label>:5263                                    ; preds = %5239
  %5264 = fcmp fast ogt float %5255, 0.000000e+00
  %5265 = call float @dx.op.unary.f32(i32 24, float %5261)  ; Sqrt(value)
  %5266 = fsub fast float -0.000000e+00, %5265
  %5267 = select i1 %5264, float %5265, float %5266
  %5268 = fadd fast float %5267, %5255
  %5269 = fmul float %5268, -5.000000e-01
  %5270 = fdiv fast float %5269, %5109
  %5271 = call float @dx.op.binary.f32(i32 35, float %5270, float 0.000000e+00)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 36, float %5144, float %5271)  ; FMin(a,b)
  %5273 = fdiv fast float %5258, %5269
  %5274 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5275 = call float @dx.op.binary.f32(i32 36, float %5144, float %5274)  ; FMin(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5272, float %5275)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 35, float %5272, float %5275)  ; FMax(a,b)
  br label %5278

; <label>:5278                                    ; preds = %5263, %5239
  %5279 = phi float [ %5277, %5263 ], [ -1.000000e+00, %5239 ]
  %5280 = phi float [ %5276, %5263 ], [ -1.000000e+00, %5239 ]
  %5281 = phi i1 [ true, %5263 ], [ false, %5239 ]
  br i1 %5281, label %5282, label %5288

; <label>:5282                                    ; preds = %5278
  %5283 = call float @dx.op.binary.f32(i32 35, float %5227, float %5280)  ; FMax(a,b)
  %5284 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %5241
  store float %5283, float* %5284, align 4, !tbaa !67, !noalias !71
  %5285 = call float @dx.op.binary.f32(i32 35, float %5227, float %5279)  ; FMax(a,b)
  %5286 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %5241
  store float %5285, float* %5286, align 4, !tbaa !67, !noalias !71
  %5287 = add nsw i32 %5240, 1
  br label %5288

; <label>:5288                                    ; preds = %5282, %5278
  %5289 = phi i32 [ %5287, %5282 ], [ %5240, %5278 ]
  %5290 = add nuw nsw i32 %5241, 1
  %5291 = icmp eq i32 %5290, %5096
  br i1 %5291, label %5292, label %5239

; <label>:5292                                    ; preds = %5288
  %5293 = load float, float* %5233, align 4, !tbaa !67, !alias.scope !87, !noalias !90
  %5294 = load float, float* %5232, align 4, !tbaa !67, !alias.scope !93, !noalias !94
  %5295 = load float, float* %5231, align 4, !tbaa !67, !alias.scope !95, !noalias !96
  %5296 = load float, float* %5236, align 4, !tbaa !67, !alias.scope !97, !noalias !100
  %5297 = load float, float* %5235, align 4, !tbaa !67, !alias.scope !103, !noalias !104
  %5298 = load float, float* %5234, align 4, !tbaa !67, !alias.scope !105, !noalias !106
  br label %5299

; <label>:5299                                    ; preds = %5292, %5226
  %5300 = phi float [ -1.000000e+00, %5226 ], [ %5298, %5292 ]
  %5301 = phi float [ -1.000000e+00, %5226 ], [ %5297, %5292 ]
  %5302 = phi float [ -1.000000e+00, %5226 ], [ %5296, %5292 ]
  %5303 = phi float [ -1.000000e+00, %5226 ], [ %5295, %5292 ]
  %5304 = phi float [ -1.000000e+00, %5226 ], [ %5294, %5292 ]
  %5305 = phi float [ -1.000000e+00, %5226 ], [ %5293, %5292 ]
  %5306 = phi i32 [ 0, %5226 ], [ %5289, %5292 ]
  %5307 = call float @dx.op.binary.f32(i32 36, float %5304, float %5305)  ; FMin(a,b)
  %5308 = call float @dx.op.binary.f32(i32 36, float %5303, float %5307)  ; FMin(a,b)
  %5309 = call float @dx.op.binary.f32(i32 35, float %5303, float %5304)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 36, float %5309, float %5305)  ; FMin(a,b)
  %5311 = call float @dx.op.binary.f32(i32 36, float %5303, float %5304)  ; FMin(a,b)
  %5312 = call float @dx.op.binary.f32(i32 35, float %5311, float %5310)  ; FMax(a,b)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5304, float %5305)  ; FMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5303, float %5313)  ; FMax(a,b)
  store float %5308, float* %5231, align 4, !tbaa !67, !alias.scope !95, !noalias !96
  store float %5312, float* %5232, align 4, !tbaa !67, !alias.scope !93, !noalias !94
  store float %5314, float* %5233, align 4, !tbaa !67, !alias.scope !87, !noalias !90
  %5315 = call float @dx.op.binary.f32(i32 36, float %5301, float %5302)  ; FMin(a,b)
  %5316 = call float @dx.op.binary.f32(i32 36, float %5300, float %5315)  ; FMin(a,b)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5300, float %5301)  ; FMax(a,b)
  %5318 = call float @dx.op.binary.f32(i32 36, float %5317, float %5302)  ; FMin(a,b)
  %5319 = call float @dx.op.binary.f32(i32 36, float %5300, float %5301)  ; FMin(a,b)
  %5320 = call float @dx.op.binary.f32(i32 35, float %5319, float %5318)  ; FMax(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5301, float %5302)  ; FMax(a,b)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5300, float %5321)  ; FMax(a,b)
  store float %5316, float* %5234, align 4, !tbaa !67, !alias.scope !105, !noalias !106
  store float %5320, float* %5235, align 4, !tbaa !67, !alias.scope !103, !noalias !104
  store float %5322, float* %5236, align 4, !tbaa !67, !alias.scope !97, !noalias !100
  %5323 = sub nsw i32 3, %5306
  %5324 = icmp sgt i32 %5323, 2
  br i1 %5324, label %5325, label %5363

; <label>:5325                                    ; preds = %5299
  %5326 = icmp eq i32 %5094, 0
  %5327 = fsub fast float %5144, %5228
  %5328 = select i1 %5326, float %5327, float %5228
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5337 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 3
  %5340 = call float @dx.op.binary.f32(i32 36, float %5229, float %5339)  ; FMin(a,b)
  %5341 = fmul fast float %5337, %5328
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fsub fast float %5334, %5330
  %5344 = fsub fast float %5335, %5331
  %5345 = fsub fast float %5336, %5332
  %5346 = fmul fast float %5342, %5343
  %5347 = fmul fast float %5342, %5344
  %5348 = fmul fast float %5342, %5345
  %5349 = fadd fast float %5346, %5330
  %5350 = fadd fast float %5347, %5331
  %5351 = fadd fast float %5348, %5332
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5355 = fadd fast float %5354, %5353
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5352, 2
  %5358 = extractvalue %dx.types.CBufRet.f32 %5352, 3
  %5359 = fadd fast float %5358, %5357
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fmul fast float %5356, %5340
  %5362 = fmul fast float %5361, %5360
  br label %5445

; <label>:5363                                    ; preds = %5299
  %5364 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %5323
  %5365 = load float, float* %5364, align 4, !tbaa !67, !noalias !71
  %5366 = fcmp fast olt float %5365, %5230
  %5367 = icmp sgt i32 %5306, 0
  %5368 = and i1 %5367, %5366
  br i1 %5368, label %5369, label %5406

; <label>:5369                                    ; preds = %5363
  br label %5370

; <label>:5370                                    ; preds = %5399, %5369
  %5371 = phi float [ %5400, %5399 ], [ %5228, %5369 ]
  %5372 = phi float [ %5401, %5399 ], [ %5229, %5369 ]
  %5373 = phi float [ %5381, %5399 ], [ %5365, %5369 ]
  %5374 = phi i32 [ %5378, %5399 ], [ %5323, %5369 ]
  %5375 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %5374
  %5376 = load float, float* %5375, align 4, !tbaa !67, !noalias !71
  %5377 = icmp slt i32 %5374, 2
  %5378 = add nsw i32 %5374, 1
  %5379 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 %5378
  %5380 = load float, float* %5379, align 4, !tbaa !67, !noalias !71
  %5381 = select i1 %5377, float %5380, float %5144
  %5382 = call float @dx.op.binary.f32(i32 36, float %5381, float %5376)  ; FMin(a,b)
  %5383 = call float @dx.op.binary.f32(i32 36, float %5230, float %5382)  ; FMin(a,b)
  %5384 = icmp eq i32 %5094, 0
  %5385 = fadd fast float %5383, %5373
  %5386 = fmul fast float %5385, %5075
  %5387 = fadd fast float %5386, %5088
  br i1 %5384, label %5393, label %5388

; <label>:5388                                    ; preds = %5370
  %5389 = fsub fast float %5383, %5373
  %5390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5389)  ; FMax(a,b)
  %5391 = fmul fast float %5390, %5387
  %5392 = fadd fast float %5391, %5372
  br label %5399

; <label>:5393                                    ; preds = %5370
  %5394 = fsub fast float %5373, %5383
  %5395 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5396 = fadd fast float %5395, %5371
  %5397 = fmul fast float %5395, %5387
  %5398 = fsub fast float %5372, %5397
  br label %5399

; <label>:5399                                    ; preds = %5393, %5388
  %5400 = phi float [ %5390, %5388 ], [ %5396, %5393 ]
  %5401 = phi float [ %5392, %5388 ], [ %5398, %5393 ]
  %5402 = fcmp fast olt float %5381, %5230
  %5403 = icmp slt i32 %5378, 3
  %5404 = and i1 %5403, %5402
  br i1 %5404, label %5370, label %5405

; <label>:5405                                    ; preds = %5399
  br label %5406

; <label>:5406                                    ; preds = %5405, %5363
  %5407 = phi float [ %5228, %5363 ], [ %5400, %5405 ]
  %5408 = phi float [ %5229, %5363 ], [ %5401, %5405 ]
  %5409 = fsub fast float %5144, %5407
  %5410 = select i1 %5146, float %5407, float %5409
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5418 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5419 = extractvalue %dx.types.CBufRet.f32 %5415, 3
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5422 = call float @dx.op.binary.f32(i32 36, float %5408, float %5421)  ; FMin(a,b)
  %5423 = fmul fast float %5419, %5410
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fsub fast float %5416, %5412
  %5426 = fsub fast float %5417, %5413
  %5427 = fsub fast float %5418, %5414
  %5428 = fmul fast float %5424, %5425
  %5429 = fmul fast float %5424, %5426
  %5430 = fmul fast float %5424, %5427
  %5431 = fadd fast float %5428, %5412
  %5432 = fadd fast float %5429, %5413
  %5433 = fadd fast float %5430, %5414
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5437 = fadd fast float %5436, %5435
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5440 = extractvalue %dx.types.CBufRet.f32 %5434, 3
  %5441 = fadd fast float %5440, %5439
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %5438, %5422
  %5444 = fmul fast float %5443, %5442
  br label %5445

; <label>:5445                                    ; preds = %5406, %5325, %5160, %5142, %5140
  %5446 = phi float [ %5169, %5160 ], [ %5328, %5325 ], [ %5410, %5406 ], [ 0.000000e+00, %5140 ], [ 0.000000e+00, %5142 ]
  %5447 = phi float [ %5203, %5160 ], [ %5362, %5325 ], [ %5444, %5406 ], [ 0.000000e+00, %5140 ], [ 0.000000e+00, %5142 ]
  %5448 = phi float [ %5190, %5160 ], [ %5349, %5325 ], [ %5431, %5406 ], [ 0.000000e+00, %5140 ], [ 0.000000e+00, %5142 ]
  %5449 = phi float [ %5191, %5160 ], [ %5350, %5325 ], [ %5432, %5406 ], [ 0.000000e+00, %5140 ], [ 0.000000e+00, %5142 ]
  %5450 = phi float [ %5192, %5160 ], [ %5351, %5325 ], [ %5433, %5406 ], [ 0.000000e+00, %5140 ], [ 0.000000e+00, %5142 ]
  %5451 = fmul fast float %5083, %5447
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5454 = fsub fast float %5090, %5453
  %5455 = fcmp fast olt float %5451, -2.000000e+01
  %5456 = call float @dx.op.unary.f32(i32 21, float %5451)  ; Exp(value)
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5462 = fmul fast float %5459, %5454
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fmul fast float %5075, 5.000000e-01
  %5466 = fadd fast float %5465, 5.000000e-01
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = fsub fast float 1.000000e+00, %5467
  %5469 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5464)  ; FMax(a,b)
  %5470 = fdiv fast float %5468, %5469
  %5471 = fsub fast float %5454, %5032
  %5472 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5473 = fmul fast float %5472, %5458
  %5474 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5475 = fsub fast float 1.000000e+00, %5473
  %5476 = fmul fast float %5475, %5474
  %5477 = fadd fast float %5476, %5473
  %5478 = fmul fast float %5461, %5454
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = fsub fast float 1.000000e+00, %5477
  %5481 = fmul fast float %5480, %5479
  %5482 = fadd fast float %5481, %5477
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fadd fast float %5456, -1.000000e+00
  %5485 = select i1 %5455, float -1.000000e+00, float %5484
  %5486 = fmul fast float %5483, %5485
  %5487 = fadd fast float %5486, 1.000000e+00
  %5488 = fsub fast float -0.000000e+00, %5486
  %5489 = fmul fast float %5448, %5488
  %5490 = fmul fast float %5449, %5488
  %5491 = fmul fast float %5450, %5488
  br label %5492

; <label>:5492                                    ; preds = %5445, %5041
  %5493 = phi float [ %5446, %5445 ], [ 0.000000e+00, %5041 ]
  %5494 = phi float [ %5487, %5445 ], [ 1.000000e+00, %5041 ]
  %5495 = phi float [ %5489, %5445 ], [ 0.000000e+00, %5041 ]
  %5496 = phi float [ %5490, %5445 ], [ 0.000000e+00, %5041 ]
  %5497 = phi float [ %5491, %5445 ], [ 0.000000e+00, %5041 ]
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5500 = fsub fast float 1.000000e+00, %5494
  %5501 = fmul fast float %5500, %5076
  %5502 = fmul fast float %5501, %5499
  %5503 = fsub fast float %5076, %5502
  br i1 %5069, label %5504, label %5533, !dx.controlflow.hints !107

; <label>:5504                                    ; preds = %5492
  %5505 = fmul fast float %5077, %5066
  %5506 = fadd fast float %5505, %5067
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = fmul fast float %5048, %5503
  %5509 = fsub fast float -0.000000e+00, %5508
  %5510 = fmul fast float %5049, %5503
  %5511 = fsub fast float -0.000000e+00, %5510
  %5512 = call float @dx.op.unary.f32(i32 21, float %5509)  ; Exp(value)
  %5513 = call float @dx.op.unary.f32(i32 21, float %5511)  ; Exp(value)
  %5514 = call float @dx.op.binary.f32(i32 35, float %5056, float %5512)  ; FMax(a,b)
  %5515 = call float @dx.op.binary.f32(i32 35, float %5056, float %5513)  ; FMax(a,b)
  %5516 = fsub fast float %5515, %5514
  %5517 = fmul fast float %5516, %5507
  %5518 = fadd fast float %5517, %5514
  %5519 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5520 = fsub fast float %5053, %5058
  %5521 = fsub fast float %5054, %5059
  %5522 = fsub fast float %5055, %5060
  %5523 = fmul fast float %5507, %5520
  %5524 = fmul fast float %5507, %5521
  %5525 = fmul fast float %5507, %5522
  %5526 = fadd fast float %5523, %5058
  %5527 = fadd fast float %5524, %5059
  %5528 = fadd fast float %5525, %5060
  %5529 = fsub fast float 1.000000e+00, %5519
  %5530 = fmul fast float %5529, %5526
  %5531 = fmul fast float %5529, %5527
  %5532 = fmul fast float %5529, %5528
  br label %5592

; <label>:5533                                    ; preds = %5492
  %5534 = fmul fast float %5503, %5065
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fsub fast float 2.000000e+00, %5535
  %5537 = fmul fast float %5535, 9.921875e-01
  %5538 = fmul fast float %5537, %5536
  %5539 = fadd fast float %5538, 3.906250e-03
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %5539, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = fsub fast float %5535, %5541
  %5543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5542)  ; FMax(a,b)
  %5544 = fmul fast float %5051, %5032
  %5545 = call float @dx.op.unary.f32(i32 6, float %5544)  ; FAbs(value)
  %5546 = fcmp fast ogt float %5545, 0x3EB0C6F7A0000000
  br i1 %5546, label %5547, label %5553, !dx.controlflow.hints !108

; <label>:5547                                    ; preds = %5533
  %5548 = fmul fast float %5544, 0xBFF7154760000000
  %5549 = call float @dx.op.unary.f32(i32 21, float %5548)  ; Exp(value)
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = fdiv fast float %5550, %5544
  %5552 = fmul fast float %5551, %5061
  br label %5553

; <label>:5553                                    ; preds = %5547, %5533
  %5554 = phi float [ %5552, %5547 ], [ %5061, %5533 ]
  %5555 = fadd fast float %5554, %5063
  %5556 = fmul fast float %5555, %5543
  %5557 = fmul fast float %5048, %5556
  %5558 = fsub fast float -0.000000e+00, %5557
  %5559 = fmul fast float %5049, %5556
  %5560 = fsub fast float -0.000000e+00, %5559
  %5561 = fmul fast float %5050, %5556
  %5562 = fsub fast float -0.000000e+00, %5561
  %5563 = call float @dx.op.unary.f32(i32 21, float %5558)  ; Exp(value)
  %5564 = call float @dx.op.unary.f32(i32 21, float %5560)  ; Exp(value)
  %5565 = call float @dx.op.unary.f32(i32 21, float %5562)  ; Exp(value)
  %5566 = fmul fast float %5077, %5077
  %5567 = fadd fast float %5566, 1.000000e+00
  %5568 = fmul fast float %5567, 0x3FAE8EC8A0000000
  %5569 = fmul fast float %5568, %5058
  %5570 = fmul fast float %5568, %5059
  %5571 = fmul fast float %5568, %5060
  %5572 = fmul fast float %5077, %5056
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = fmul fast float %5056, %5056
  %5575 = fsub fast float 1.000000e+00, %5574
  %5576 = fmul fast float %5575, 0x3FB45F3060000000
  %5577 = fmul fast float %5573, %5573
  %5578 = fdiv fast float 1.000000e+00, %5577
  %5579 = fmul fast float %5576, %5578
  %5580 = fmul fast float %5579, %5053
  %5581 = fmul fast float %5579, %5054
  %5582 = fmul fast float %5579, %5055
  %5583 = fadd fast float %5580, %5569
  %5584 = fadd fast float %5581, %5570
  %5585 = fadd fast float %5582, %5571
  %5586 = fsub fast float 1.000000e+00, %5563
  %5587 = fsub fast float 1.000000e+00, %5564
  %5588 = fsub fast float 1.000000e+00, %5565
  %5589 = fmul fast float %5583, %5586
  %5590 = fmul fast float %5584, %5587
  %5591 = fmul fast float %5585, %5588
  br label %5592

; <label>:5592                                    ; preds = %5553, %5504
  %5593 = phi float [ %5530, %5504 ], [ %5589, %5553 ]
  %5594 = phi float [ %5531, %5504 ], [ %5590, %5553 ]
  %5595 = phi float [ %5532, %5504 ], [ %5591, %5553 ]
  %5596 = phi float [ %5519, %5504 ], [ %5563, %5553 ]
  %5597 = phi float [ %5519, %5504 ], [ %5564, %5553 ]
  %5598 = phi float [ %5519, %5504 ], [ %5565, %5553 ]
  br i1 %5085, label %5599, label %5797, !dx.controlflow.hints !109

; <label>:5599                                    ; preds = %5592
  %5600 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5601 = fmul fast float %5600, %5500
  %5602 = fsub fast float %5495, %5593
  %5603 = fsub fast float %5496, %5594
  %5604 = fsub fast float %5497, %5595
  %5605 = fmul fast float %5601, %5602
  %5606 = fmul fast float %5601, %5603
  %5607 = fmul fast float %5601, %5604
  %5608 = fadd fast float %5605, %5593
  %5609 = fadd fast float %5606, %5594
  %5610 = fadd fast float %5607, %5595
  %5611 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5596)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5597)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5598)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5494)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float %5493, float %5503)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5615)  ; FMax(a,b)
  %5617 = fdiv fast float %5493, %5616
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = fdiv fast float %5503, %5616
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = fcmp fast une float %5614, 1.000000e+00
  br i1 %5621, label %5622, label %5635, !dx.controlflow.hints !110

; <label>:5622                                    ; preds = %5599
  %5623 = call float @dx.op.unary.f32(i32 23, float %5614)  ; Log(value)
  %5624 = fmul fast float %5623, 0x3FE62E4300000000
  %5625 = fmul fast float %5495, %5624
  %5626 = fsub fast float -0.000000e+00, %5625
  %5627 = fmul fast float %5496, %5624
  %5628 = fsub fast float -0.000000e+00, %5627
  %5629 = fmul fast float %5497, %5624
  %5630 = fsub fast float -0.000000e+00, %5629
  %5631 = fsub fast float 1.000000e+00, %5614
  %5632 = fdiv fast float %5626, %5631
  %5633 = fdiv fast float %5628, %5631
  %5634 = fdiv fast float %5630, %5631
  br label %5635

; <label>:5635                                    ; preds = %5622, %5599
  %5636 = phi float [ %5632, %5622 ], [ %5495, %5599 ]
  %5637 = phi float [ %5633, %5622 ], [ %5496, %5599 ]
  %5638 = phi float [ %5634, %5622 ], [ %5497, %5599 ]
  %5639 = phi float [ %5624, %5622 ], [ 0.000000e+00, %5599 ]
  %5640 = fcmp fast une float %5611, 1.000000e+00
  br i1 %5640, label %5641, label %5648, !dx.controlflow.hints !111

; <label>:5641                                    ; preds = %5635
  %5642 = call float @dx.op.unary.f32(i32 23, float %5611)  ; Log(value)
  %5643 = fmul fast float %5642, 0x3FE62E4300000000
  %5644 = fmul fast float %5608, %5643
  %5645 = fsub fast float -0.000000e+00, %5644
  %5646 = fsub fast float 1.000000e+00, %5611
  %5647 = fdiv fast float %5645, %5646
  br label %5648

; <label>:5648                                    ; preds = %5641, %5635
  %5649 = phi float [ %5647, %5641 ], [ %5608, %5635 ]
  %5650 = phi float [ %5643, %5641 ], [ 0.000000e+00, %5635 ]
  %5651 = fcmp fast une float %5612, 1.000000e+00
  br i1 %5651, label %5652, label %5659, !dx.controlflow.hints !111

; <label>:5652                                    ; preds = %5648
  %5653 = call float @dx.op.unary.f32(i32 23, float %5612)  ; Log(value)
  %5654 = fmul fast float %5653, 0x3FE62E4300000000
  %5655 = fmul fast float %5609, %5654
  %5656 = fsub fast float -0.000000e+00, %5655
  %5657 = fsub fast float 1.000000e+00, %5612
  %5658 = fdiv fast float %5656, %5657
  br label %5659

; <label>:5659                                    ; preds = %5652, %5648
  %5660 = phi float [ %5658, %5652 ], [ %5609, %5648 ]
  %5661 = phi float [ %5654, %5652 ], [ 0.000000e+00, %5648 ]
  %5662 = fcmp fast une float %5613, 1.000000e+00
  br i1 %5662, label %5663, label %5670, !dx.controlflow.hints !111

; <label>:5663                                    ; preds = %5659
  %5664 = call float @dx.op.unary.f32(i32 23, float %5613)  ; Log(value)
  %5665 = fmul fast float %5664, 0x3FE62E4300000000
  %5666 = fmul fast float %5610, %5665
  %5667 = fsub fast float -0.000000e+00, %5666
  %5668 = fsub fast float 1.000000e+00, %5613
  %5669 = fdiv fast float %5667, %5668
  br label %5670

; <label>:5670                                    ; preds = %5663, %5659
  %5671 = phi float [ %5669, %5663 ], [ %5610, %5659 ]
  %5672 = phi float [ %5665, %5663 ], [ 0.000000e+00, %5659 ]
  %5673 = fmul fast float %5636, %5620
  %5674 = fmul fast float %5637, %5620
  %5675 = fmul fast float %5638, %5620
  %5676 = fmul fast float %5639, %5620
  %5677 = fmul fast float %5649, %5618
  %5678 = fmul fast float %5660, %5618
  %5679 = fmul fast float %5671, %5618
  %5680 = fmul fast float %5650, %5618
  %5681 = fmul fast float %5661, %5618
  %5682 = fmul fast float %5672, %5618
  %5683 = fadd fast float %5677, %5673
  %5684 = fadd fast float %5678, %5674
  %5685 = fadd fast float %5679, %5675
  %5686 = fadd fast float %5680, %5676
  %5687 = fadd fast float %5681, %5676
  %5688 = fadd fast float %5682, %5676
  %5689 = fcmp fast une float %5686, 0.000000e+00
  br i1 %5689, label %5690, label %5697, !dx.controlflow.hints !112

; <label>:5690                                    ; preds = %5670
  %5691 = fmul fast float %5686, 0x3FF7154760000000
  %5692 = call float @dx.op.unary.f32(i32 21, float %5691)  ; Exp(value)
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = fmul fast float %5683, %5693
  %5695 = fsub fast float -0.000000e+00, %5694
  %5696 = fdiv fast float %5695, %5686
  br label %5697

; <label>:5697                                    ; preds = %5690, %5670
  %5698 = phi float [ %5692, %5690 ], [ 1.000000e+00, %5670 ]
  %5699 = phi float [ %5696, %5690 ], [ %5683, %5670 ]
  %5700 = fcmp fast une float %5687, 0.000000e+00
  br i1 %5700, label %5701, label %5708, !dx.controlflow.hints !112

; <label>:5701                                    ; preds = %5697
  %5702 = fmul fast float %5687, 0x3FF7154760000000
  %5703 = call float @dx.op.unary.f32(i32 21, float %5702)  ; Exp(value)
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = fmul fast float %5684, %5704
  %5706 = fsub fast float -0.000000e+00, %5705
  %5707 = fdiv fast float %5706, %5687
  br label %5708

; <label>:5708                                    ; preds = %5701, %5697
  %5709 = phi float [ %5703, %5701 ], [ 1.000000e+00, %5697 ]
  %5710 = phi float [ %5707, %5701 ], [ %5684, %5697 ]
  %5711 = fcmp fast une float %5688, 0.000000e+00
  br i1 %5711, label %5712, label %5719, !dx.controlflow.hints !112

; <label>:5712                                    ; preds = %5708
  %5713 = fmul fast float %5688, 0x3FF7154760000000
  %5714 = call float @dx.op.unary.f32(i32 21, float %5713)  ; Exp(value)
  %5715 = fsub fast float 1.000000e+00, %5714
  %5716 = fmul fast float %5685, %5715
  %5717 = fsub fast float -0.000000e+00, %5716
  %5718 = fdiv fast float %5717, %5688
  br label %5719

; <label>:5719                                    ; preds = %5712, %5708
  %5720 = phi float [ %5714, %5712 ], [ 1.000000e+00, %5708 ]
  %5721 = phi float [ %5718, %5712 ], [ %5685, %5708 ]
  %5722 = fcmp fast ogt float %5618, %5620
  br i1 %5722, label %5723, label %5743

; <label>:5723                                    ; preds = %5719
  %5724 = fsub fast float 1.000000e+00, %5620
  %5725 = fmul fast float %5636, %5724
  %5726 = fmul fast float %5637, %5724
  %5727 = fmul fast float %5638, %5724
  %5728 = fmul fast float %5639, %5724
  %5729 = fcmp fast une float %5728, 0.000000e+00
  br i1 %5729, label %5730, label %5781, !dx.controlflow.hints !113

; <label>:5730                                    ; preds = %5723
  %5731 = fmul fast float %5728, 0x3FF7154760000000
  %5732 = call float @dx.op.unary.f32(i32 21, float %5731)  ; Exp(value)
  %5733 = fsub fast float 1.000000e+00, %5732
  %5734 = fmul fast float %5725, %5733
  %5735 = fsub fast float -0.000000e+00, %5734
  %5736 = fmul fast float %5726, %5733
  %5737 = fsub fast float -0.000000e+00, %5736
  %5738 = fmul fast float %5727, %5733
  %5739 = fsub fast float -0.000000e+00, %5738
  %5740 = fdiv fast float %5735, %5728
  %5741 = fdiv fast float %5737, %5728
  %5742 = fdiv fast float %5739, %5728
  br label %5781

; <label>:5743                                    ; preds = %5719
  %5744 = fsub fast float 1.000000e+00, %5618
  %5745 = fmul fast float %5649, %5744
  %5746 = fmul fast float %5660, %5744
  %5747 = fmul fast float %5671, %5744
  %5748 = fmul fast float %5650, %5744
  %5749 = fmul fast float %5661, %5744
  %5750 = fmul fast float %5672, %5744
  %5751 = fcmp fast une float %5748, 0.000000e+00
  br i1 %5751, label %5752, label %5759, !dx.controlflow.hints !112

; <label>:5752                                    ; preds = %5743
  %5753 = fmul fast float %5748, 0x3FF7154760000000
  %5754 = call float @dx.op.unary.f32(i32 21, float %5753)  ; Exp(value)
  %5755 = fsub fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5745, %5755
  %5757 = fsub fast float -0.000000e+00, %5756
  %5758 = fdiv fast float %5757, %5748
  br label %5759

; <label>:5759                                    ; preds = %5752, %5743
  %5760 = phi float [ %5758, %5752 ], [ %5745, %5743 ]
  %5761 = phi float [ %5754, %5752 ], [ 1.000000e+00, %5743 ]
  %5762 = fcmp fast une float %5749, 0.000000e+00
  br i1 %5762, label %5763, label %5770, !dx.controlflow.hints !112

; <label>:5763                                    ; preds = %5759
  %5764 = fmul fast float %5749, 0x3FF7154760000000
  %5765 = call float @dx.op.unary.f32(i32 21, float %5764)  ; Exp(value)
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5746, %5766
  %5768 = fsub fast float -0.000000e+00, %5767
  %5769 = fdiv fast float %5768, %5749
  br label %5770

; <label>:5770                                    ; preds = %5763, %5759
  %5771 = phi float [ %5769, %5763 ], [ %5746, %5759 ]
  %5772 = phi float [ %5765, %5763 ], [ 1.000000e+00, %5759 ]
  %5773 = fcmp fast une float %5750, 0.000000e+00
  br i1 %5773, label %5774, label %5781, !dx.controlflow.hints !112

; <label>:5774                                    ; preds = %5770
  %5775 = fmul fast float %5750, 0x3FF7154760000000
  %5776 = call float @dx.op.unary.f32(i32 21, float %5775)  ; Exp(value)
  %5777 = fsub fast float 1.000000e+00, %5776
  %5778 = fmul fast float %5747, %5777
  %5779 = fsub fast float -0.000000e+00, %5778
  %5780 = fdiv fast float %5779, %5750
  br label %5781

; <label>:5781                                    ; preds = %5774, %5770, %5730, %5723
  %5782 = phi float [ %5780, %5774 ], [ %5742, %5730 ], [ %5727, %5723 ], [ %5747, %5770 ]
  %5783 = phi float [ %5771, %5774 ], [ %5741, %5730 ], [ %5726, %5723 ], [ %5771, %5770 ]
  %5784 = phi float [ %5760, %5774 ], [ %5740, %5730 ], [ %5725, %5723 ], [ %5760, %5770 ]
  %5785 = phi float [ %5776, %5774 ], [ %5732, %5730 ], [ 1.000000e+00, %5723 ], [ 1.000000e+00, %5770 ]
  %5786 = phi float [ %5772, %5774 ], [ %5732, %5730 ], [ 1.000000e+00, %5723 ], [ %5772, %5770 ]
  %5787 = phi float [ %5761, %5774 ], [ %5732, %5730 ], [ 1.000000e+00, %5723 ], [ %5761, %5770 ]
  %5788 = fmul fast float %5787, %5699
  %5789 = fmul fast float %5786, %5710
  %5790 = fmul fast float %5785, %5721
  %5791 = fadd fast float %5788, %5784
  %5792 = fadd fast float %5789, %5783
  %5793 = fadd fast float %5790, %5782
  %5794 = fmul fast float %5787, %5698
  %5795 = fmul fast float %5786, %5709
  %5796 = fmul fast float %5785, %5720
  br label %5797

; <label>:5797                                    ; preds = %5781, %5592
  %5798 = phi float [ %5796, %5781 ], [ %5598, %5592 ]
  %5799 = phi float [ %5795, %5781 ], [ %5597, %5592 ]
  %5800 = phi float [ %5794, %5781 ], [ %5596, %5592 ]
  %5801 = phi float [ %5793, %5781 ], [ %5595, %5592 ]
  %5802 = phi float [ %5792, %5781 ], [ %5594, %5592 ]
  %5803 = phi float [ %5791, %5781 ], [ %5593, %5592 ]
  %5804 = fmul fast float %5803, %4745
  %5805 = fmul fast float %5802, %4745
  %5806 = fmul fast float %5801, %4745
  %5807 = fmul fast float %5800, %5040
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5799, float %5798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = select i1 %192, float %5808, float %5800
  %5811 = select i1 %192, float %5808, float %5799
  %5812 = select i1 %192, float 1.000000e+00, float %5798
  %5813 = select i1 %192, float %5809, float %5804
  %5814 = select i1 %192, float 0.000000e+00, float %5805
  %5815 = select i1 %192, float 0.000000e+00, float %5806
  %5816 = fmul fast float %5810, %5034
  %5817 = fmul fast float %5811, %5035
  %5818 = fmul fast float %5812, %5036
  %5819 = fadd fast float %5816, %5813
  %5820 = fadd fast float %5817, %5814
  %5821 = fadd fast float %5815, %5818
  %5822 = fmul fast float %5810, %5037
  %5823 = fmul fast float %5811, %5038
  %5824 = fmul fast float %5812, %5039
  %5825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.i32 %5825, 0
  %5827 = icmp eq i32 %5826, 0
  br i1 %5827, label %6195, label %5828, !dx.controlflow.hints !114

; <label>:5828                                    ; preds = %5797
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 3
  %5832 = fmul fast float %5830, %68
  %5833 = fmul fast float %5831, %69
  %5834 = fmul fast float %5832, 2.000000e+00
  %5835 = fmul fast float %5833, 2.000000e+00
  %5836 = fsub fast float 1.000000e+00, %5834
  %5837 = fsub fast float 1.000000e+00, %5835
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5841 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5842 = fmul fast float %5836, %5839
  %5843 = fmul fast float %5836, %5840
  %5844 = fmul fast float %5836, %5841
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = fmul fast float %5837, %5846
  %5850 = fmul fast float %5837, %5847
  %5851 = fmul fast float %5837, %5848
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = fadd fast float %5849, %5853
  %5857 = fadd fast float %5856, %5842
  %5858 = fadd fast float %5850, %5854
  %5859 = fadd fast float %5858, %5843
  %5860 = fadd fast float %5851, %5855
  %5861 = fadd fast float %5860, %5844
  %5862 = fmul fast float %5857, %5033
  %5863 = fmul fast float %5859, %5033
  %5864 = fmul fast float %5861, %5033
  %5865 = fmul fast float %5862, %5862
  %5866 = fmul fast float %5863, %5863
  %5867 = fadd fast float %5865, %5866
  %5868 = fmul fast float %5864, %5864
  %5869 = fadd fast float %5867, %5868
  %5870 = call float @dx.op.unary.f32(i32 24, float %5869)  ; Sqrt(value)
  %5871 = extractvalue %dx.types.CBufRet.f32 %4756, 0
  %5872 = fsub fast float %5870, %5871
  %5873 = extractvalue %dx.types.CBufRet.f32 %4756, 2
  %5874 = fmul fast float %5872, %5873
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5876 = fadd fast float %5875, -5.000000e-01
  %5877 = fmul fast float %5876, 2.000000e+00
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5880 = call float @dx.op.binary.f32(i32 36, float %5879, float %5877)  ; FMin(a,b)
  %5881 = fsub fast float -0.000000e+00, %5879
  %5882 = fcmp fast ogt float %5880, %5881
  br i1 %5882, label %5883, label %6195, !dx.controlflow.hints !115

; <label>:5883                                    ; preds = %5828
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5886 = fcmp fast ogt float %5885, 0.000000e+00
  br i1 %5886, label %5887, label %5962, !dx.controlflow.hints !116

; <label>:5887                                    ; preds = %5883
  %5888 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %5889 = extractvalue %dx.types.Dimensions %5888, 0
  %5890 = sitofp i32 %5889 to float
  %5891 = extractvalue %dx.types.Dimensions %5888, 1
  %5892 = sitofp i32 %5891 to float
  %5893 = fmul fast float %5832, %5890
  %5894 = fmul fast float %5833, %5892
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5897 = fsub fast float -0.000000e+00, %5896
  %5898 = fptoui float %5897 to i32
  %5899 = fptoui float %5893 to i32
  %5900 = fptoui float %5894 to i32
  %5901 = and i32 %5898, 31
  %5902 = lshr i32 %5899, %5901
  %5903 = lshr i32 %5900, %5901
  %5904 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %5898, i32 %5902, i32 %5903, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = fcmp fast olt float %5905, -1.000000e+00
  %5907 = fcmp fast ogt float %5905, -1.000000e+00
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5910 = select i1 %5907, float %5909, float 1.000000e+00
  %5911 = fadd fast float %5905, 1.000000e+00
  %5912 = fmul fast float %5910, %5911
  %5913 = call float @dx.op.unary.f32(i32 6, float %5912)  ; FAbs(value)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5915 = fcmp fast oge float %5913, %5914
  %5916 = select i1 %5915, float 0x4197782600000000, float %5913
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = select i1 %5906, float %5918, float %5839
  %5922 = select i1 %5906, float %5919, float %5840
  %5923 = select i1 %5906, float %5920, float %5841
  %5924 = fmul fast float %5921, %5836
  %5925 = fmul fast float %5922, %5836
  %5926 = fmul fast float %5923, %5836
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5931 = select i1 %5906, float %5928, float %5846
  %5932 = select i1 %5906, float %5929, float %5847
  %5933 = select i1 %5906, float %5930, float %5848
  %5934 = fmul fast float %5931, %5837
  %5935 = fmul fast float %5932, %5837
  %5936 = fmul fast float %5933, %5837
  %5937 = fadd fast float %5934, %5924
  %5938 = fadd fast float %5935, %5925
  %5939 = fadd fast float %5936, %5926
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = select i1 %5906, float %5941, float %5853
  %5945 = select i1 %5906, float %5942, float %5854
  %5946 = select i1 %5906, float %5943, float %5855
  %5947 = fadd fast float %5937, %5944
  %5948 = fadd fast float %5938, %5945
  %5949 = fadd fast float %5939, %5946
  %5950 = fmul fast float %5947, %5916
  %5951 = fmul fast float %5948, %5916
  %5952 = fmul fast float %5949, %5916
  %5953 = fmul fast float %5950, %5950
  %5954 = fmul fast float %5951, %5951
  %5955 = fadd fast float %5953, %5954
  %5956 = fmul fast float %5952, %5952
  %5957 = fadd fast float %5955, %5956
  %5958 = call float @dx.op.unary.f32(i32 24, float %5957)  ; Sqrt(value)
  %5959 = fsub fast float %5958, %5871
  %5960 = fmul fast float %5959, %5873
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  br label %5962

; <label>:5962                                    ; preds = %5887, %5883
  %5963 = phi float [ %5961, %5887 ], [ 1.000000e+00, %5883 ]
  %5964 = fmul fast float %5880, 5.000000e-01
  %5965 = fadd fast float %5964, 5.000000e-01
  %5966 = call float @dx.op.unary.f32(i32 22, float %5965)  ; Frc(value)
  %5967 = call float @dx.op.unary.f32(i32 27, float %5966)  ; Round_ni(value)
  %5968 = call float @dx.op.unary.f32(i32 22, float %5966)  ; Frc(value)
  %5969 = fmul fast float %5968, 2.000000e+00
  %5970 = fadd fast float %5969, -1.000000e+00
  %5971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %5832, float %5833, float %5967, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.ResRet.f32 %5971, 3
  %5976 = fadd fast float %5972, -5.000000e-01
  %5977 = fadd fast float %5974, -5.000000e-01
  %5978 = fmul fast float %5976, 0xBFD5555560000000
  %5979 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5977, float %5978)  ; FMad(a,b,c)
  %5980 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5973, float 0.000000e+00)  ; FMad(a,b,c)
  %5981 = fadd fast float %5980, %5975
  %5982 = fmul fast float %5976, -7.500000e-01
  %5983 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5977, float %5982)  ; FMad(a,b,c)
  %5984 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5973, float 0.000000e+00)  ; FMad(a,b,c)
  %5985 = fadd fast float %5984, %5975
  %5986 = call float @dx.op.binary.f32(i32 35, float %5979, float -1.000000e+00)  ; FMax(a,b)
  %5987 = call float @dx.op.binary.f32(i32 35, float %5981, float -1.000000e+00)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5983, float -1.000000e+00)  ; FMax(a,b)
  %5989 = call float @dx.op.binary.f32(i32 35, float %5985, float -1.000000e+00)  ; FMax(a,b)
  %5990 = call float @dx.op.binary.f32(i32 36, float %5986, float 1.000000e+00)  ; FMin(a,b)
  %5991 = call float @dx.op.binary.f32(i32 36, float %5987, float 1.000000e+00)  ; FMin(a,b)
  %5992 = call float @dx.op.binary.f32(i32 36, float %5988, float 1.000000e+00)  ; FMin(a,b)
  %5993 = call float @dx.op.binary.f32(i32 36, float %5989, float 1.000000e+00)  ; FMin(a,b)
  %5994 = fcmp fast olt float %5990, 0x3FEFFF8020000000
  br i1 %5994, label %5995, label %6110, !dx.controlflow.hints !117

; <label>:5995                                    ; preds = %5962
  %5996 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %6001 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6002 = fsub fast float %5998, %5990
  %6003 = fsub fast float %5999, %5991
  %6004 = fsub fast float %6000, %5992
  %6005 = fsub fast float %6001, %5993
  %6006 = fmul fast float %6002, %5996
  %6007 = fmul fast float %6003, %5996
  %6008 = fmul fast float %6004, %5996
  %6009 = fmul fast float %6005, %5996
  %6010 = fadd fast float %6006, %5990
  %6011 = fadd fast float %6007, %5991
  %6012 = fsub fast float -0.000000e+00, %6011
  %6013 = fadd fast float %6008, %5992
  %6014 = fadd fast float %6009, %5993
  %6015 = fmul fast float %6010, %6010
  %6016 = fsub fast float %6011, %6015
  %6017 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6016)  ; FMax(a,b)
  %6018 = fdiv fast float 1.000000e+00, %6017
  %6019 = fmul fast float %6011, %6010
  %6020 = fsub fast float %6013, %6019
  %6021 = fsub fast float %5970, %6010
  %6022 = fmul fast float %5970, %5970
  %6023 = fsub fast float %6022, %6011
  %6024 = fmul fast float %6021, %6018
  %6025 = fmul fast float %6024, %6020
  %6026 = fsub fast float %6023, %6025
  %6027 = fmul fast float %6011, %6011
  %6028 = fsub fast float %6014, %6027
  %6029 = fmul fast float %6020, %6020
  %6030 = fmul fast float %6029, %6018
  %6031 = fsub fast float %6028, %6030
  %6032 = fdiv fast float %6026, %6031
  %6033 = fmul fast float %6020, %6032
  %6034 = fsub fast float %6021, %6033
  %6035 = fmul fast float %6034, %6018
  %6036 = fmul fast float %6035, %6010
  %6037 = fsub fast float 1.000000e+00, %6036
  %6038 = fmul fast float %6011, %6032
  %6039 = fsub fast float %6037, %6038
  %6040 = fmul fast float %6035, %6035
  %6041 = fmul fast float %6032, 4.000000e+00
  %6042 = fmul fast float %6041, %6039
  %6043 = fsub fast float %6040, %6042
  %6044 = call float @dx.op.unary.f32(i32 24, float %6043)  ; Sqrt(value)
  %6045 = fcmp fast oge float %6035, 0.000000e+00
  %6046 = fsub fast float -0.000000e+00, %6044
  %6047 = select i1 %6045, float %6046, float %6044
  %6048 = fsub fast float %6047, %6035
  %6049 = fdiv fast float %6048, %6032
  %6050 = fdiv fast float %6039, %6048
  %6051 = fmul fast float %6049, 5.000000e-01
  %6052 = fmul fast float %6050, 2.000000e+00
  %6053 = select i1 %6045, float %6051, float %6052
  %6054 = select i1 %6045, float %6052, float %6051
  %6055 = call float @dx.op.binary.f32(i32 35, float %6053, float %6054)  ; FMax(a,b)
  %6056 = call float @dx.op.binary.f32(i32 36, float %6053, float %6054)  ; FMin(a,b)
  %6057 = fcmp fast ogt float %5970, %6056
  br i1 %6057, label %6058, label %6068

; <label>:6058                                    ; preds = %5995
  %6059 = fsub fast float %5970, %6056
  %6060 = fsub fast float %6055, %6056
  %6061 = fmul fast float %6059, %6060
  %6062 = fmul fast float %6055, %5970
  %6063 = fadd fast float %6055, %5970
  %6064 = fmul fast float %6063, %6010
  %6065 = fadd fast float %6062, %6011
  %6066 = fsub fast float %6065, %6064
  %6067 = fdiv fast float %6066, %6061
  br label %6068

; <label>:6068                                    ; preds = %6058, %5995
  %6069 = phi float [ %6067, %6058 ], [ 0.000000e+00, %5995 ]
  %6070 = fcmp fast ogt float %5970, %6055
  %6071 = fsub fast float %5970, %6055
  br i1 %6070, label %6072, label %6082

; <label>:6072                                    ; preds = %6068
  %6073 = fsub fast float %6055, %6056
  %6074 = fmul fast float %6073, %6071
  %6075 = fmul fast float %6056, %5970
  %6076 = fadd fast float %6056, %5970
  %6077 = fmul fast float %6076, %6010
  %6078 = fsub fast float %6012, %6075
  %6079 = fadd fast float %6078, %6077
  %6080 = fdiv fast float %6079, %6074
  %6081 = fadd fast float %6080, %6069
  br label %6082

; <label>:6082                                    ; preds = %6072, %6068
  %6083 = phi float [ %6081, %6072 ], [ %6069, %6068 ]
  %6084 = fsub fast float %5970, %6056
  %6085 = fmul fast float %6084, %6071
  %6086 = fmul fast float %6056, %6055
  %6087 = fadd fast float %6056, %6055
  %6088 = fmul fast float %6087, %6010
  %6089 = fadd fast float %6086, %6011
  %6090 = fsub fast float %6089, %6088
  %6091 = fdiv fast float %6090, %6085
  %6092 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6093 = fcmp fast oeq float %4757, 0.000000e+00
  %6094 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %6095 = fcmp fast oeq float %6094, 0.000000e+00
  %6096 = or i1 %6093, %6095
  %6097 = fmul fast float %6094, 2.000000e+00
  %6098 = fadd fast float %5879, %5880
  %6099 = fdiv fast float %6098, %6097
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6101 = fmul fast float %6100, 2.000000e+00
  %6102 = fsub fast float 3.000000e+00, %6101
  %6103 = fmul fast float %6100, %6100
  %6104 = fmul fast float %6103, %6102
  %6105 = select i1 %6096, float 1.000000e+00, float %6104
  %6106 = fmul fast float %6091, %4757
  %6107 = fadd fast float %6092, %6106
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fmul fast float %6105, %6108
  br label %6110

; <label>:6110                                    ; preds = %6082, %5962
  %6111 = phi float [ %6109, %6082 ], [ 0.000000e+00, %5962 ]
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %25, float %5832, float %5833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.i32 %6115, 2
  %6117 = icmp eq i32 %6116, 0
  br i1 %6117, label %6123, label %6118

; <label>:6118                                    ; preds = %6110
  %6119 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6120 = fadd fast float %6114, -1.000000e+00
  %6121 = fmul fast float %6119, %6120
  %6122 = fadd fast float %6121, 1.000000e+00
  br label %6123

; <label>:6123                                    ; preds = %6118, %6110
  %6124 = phi float [ %6122, %6118 ], [ %6112, %6110 ]
  br i1 %5886, label %6125, label %6143

; <label>:6125                                    ; preds = %6123
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6128 = fsub fast float %5963, %6127
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6130 = fsub fast float %5963, %5885
  %6131 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6132 = fsub fast float %6129, %6131
  %6133 = fsub fast float %5965, %6131
  %6134 = fdiv fast float %6133, %6132
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = fmul fast float %6135, 2.000000e+00
  %6137 = fsub fast float 3.000000e+00, %6136
  %6138 = fsub fast float %6114, %6124
  %6139 = fmul fast float %6135, %6135
  %6140 = fmul fast float %6139, %6138
  %6141 = fmul fast float %6140, %6137
  %6142 = fadd fast float %6141, %6124
  br label %6143

; <label>:6143                                    ; preds = %6125, %6123
  %6144 = phi float [ %6142, %6125 ], [ %6124, %6123 ]
  %6145 = call float @dx.op.binary.f32(i32 35, float %6114, float %6144)  ; FMax(a,b)
  %6146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.i32 %6146, 2
  %6148 = and i32 %6147, 1
  %6149 = icmp eq i32 %6148, 0
  %6150 = fcmp fast une float %6145, 1.000000e+00
  %6151 = and i1 %6150, %6149
  br i1 %6151, label %6152, label %6171

; <label>:6152                                    ; preds = %6143
  %6153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %5832, float %5833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6154 = extractvalue %dx.types.ResRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.ResRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.ResRet.f32 %6153, 2
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6159 = fmul fast float %6158, %6154
  %6160 = fmul fast float %6158, %6155
  %6161 = fmul fast float %6158, %6156
  %6162 = fcmp fast ogt float %6114, 0x3FEFFF2E40000000
  %6163 = fsub fast float 1.000000e+00, %6145
  %6164 = fsub fast float 1.000000e+00, %6114
  %6165 = fdiv fast float %6163, %6164
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = select i1 %6162, float 0.000000e+00, float %6166
  %6168 = fmul fast float %6159, %6167
  %6169 = fmul fast float %6160, %6167
  %6170 = fmul fast float %6161, %6167
  br label %6171

; <label>:6171                                    ; preds = %6152, %6143
  %6172 = phi float [ 0.000000e+00, %6143 ], [ %6168, %6152 ]
  %6173 = phi float [ 0.000000e+00, %6143 ], [ %6169, %6152 ]
  %6174 = phi float [ 0.000000e+00, %6143 ], [ %6170, %6152 ]
  %6175 = fmul fast float %6172, %4745
  %6176 = fmul fast float %6173, %4745
  %6177 = fmul fast float %6174, %4745
  %6178 = fmul fast float %6145, %5807
  %6179 = call float @dx.op.dot3.f32(i32 55, float %6145, float %6145, float %6145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6175, float %6176, float %6177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = select i1 %192, float %6179, float %6145
  %6182 = select i1 %192, float 1.000000e+00, float %6145
  %6183 = select i1 %192, float %6180, float %6175
  %6184 = select i1 %192, float 0.000000e+00, float %6176
  %6185 = select i1 %192, float 0.000000e+00, float %6177
  %6186 = fmul fast float %6181, %5819
  %6187 = fmul fast float %6181, %5820
  %6188 = fmul fast float %6182, %5821
  %6189 = fadd fast float %6186, %6183
  %6190 = fadd fast float %6187, %6184
  %6191 = fadd fast float %6185, %6188
  %6192 = fmul fast float %6181, %5822
  %6193 = fmul fast float %6181, %5823
  %6194 = fmul fast float %6182, %5824
  br label %6195

; <label>:6195                                    ; preds = %6171, %5828, %5797, %5029
  %6196 = phi float [ %5034, %5029 ], [ %5819, %5797 ], [ %6189, %6171 ], [ %5819, %5828 ]
  %6197 = phi float [ %5035, %5029 ], [ %5820, %5797 ], [ %6190, %6171 ], [ %5820, %5828 ]
  %6198 = phi float [ %5036, %5029 ], [ %5821, %5797 ], [ %6191, %6171 ], [ %5821, %5828 ]
  %6199 = phi float [ %5037, %5029 ], [ %5822, %5797 ], [ %6192, %6171 ], [ %5822, %5828 ]
  %6200 = phi float [ %5038, %5029 ], [ %5823, %5797 ], [ %6193, %6171 ], [ %5823, %5828 ]
  %6201 = phi float [ %5039, %5029 ], [ %5824, %5797 ], [ %6194, %6171 ], [ %5824, %5828 ]
  %6202 = phi float [ %5040, %5029 ], [ %5807, %5797 ], [ %6178, %6171 ], [ %5807, %5828 ]
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 3
  %6206 = fmul fast float %6204, %68
  %6207 = fmul fast float %6205, %69
  %6208 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6209 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6210 = select i1 %4771, i32 2, i32 0
  %6211 = or i32 %6210, 1
  %6212 = uitofp i32 %6211 to float
  %6213 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %25, float %6208, float %6209, float %6212, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6214 = extractvalue %dx.types.ResRet.f32 %6213, 0
  %6215 = extractvalue %dx.types.ResRet.f32 %6213, 1
  %6216 = extractvalue %dx.types.ResRet.f32 %6213, 2
  %6217 = extractvalue %dx.types.ResRet.f32 %6213, 3
  %6218 = add nuw nsw i32 %6210, 2
  %6219 = uitofp i32 %6218 to float
  %6220 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %25, float %6208, float %6209, float %6219, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6221 = extractvalue %dx.types.ResRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.ResRet.f32 %6220, 2
  %6224 = extractvalue %dx.types.ResRet.f32 %6220, 3
  %6225 = call float @dx.op.binary.f32(i32 35, float %6215, float %6216)  ; FMax(a,b)
  %6226 = call float @dx.op.binary.f32(i32 35, float %6214, float %6225)  ; FMax(a,b)
  %6227 = call float @dx.op.binary.f32(i32 35, float %6226, float %6217)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 36, float %6222, float %6223)  ; FMin(a,b)
  %6229 = call float @dx.op.binary.f32(i32 36, float %6221, float %6228)  ; FMin(a,b)
  %6230 = call float @dx.op.binary.f32(i32 36, float %6229, float %6224)  ; FMin(a,b)
  %6231 = fmul fast float %6227, 2.550000e+02
  %6232 = fadd fast float %6231, 0x3F70101020000000
  %6233 = fptoui float %6232 to i32
  %6234 = fmul fast float %6230, 2.550000e+02
  %6235 = fadd fast float %6234, 0x3F70101020000000
  %6236 = fptoui float %6235 to i32
  %6237 = icmp ult i32 %6233, %6236
  br i1 %6237, label %6238, label %6407

; <label>:6238                                    ; preds = %6195
  %6239 = fcmp fast ogt float %60, 9.843750e-01
  %6240 = fadd fast float %5033, -4.000000e+00
  %6241 = select i1 %6239, float -4.000000e+00, float %6240
  %6242 = call float @dx.op.binary.f32(i32 35, float %6241, float 0.000000e+00)  ; FMax(a,b)
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6245 = fadd fast float %6244, %6242
  %6246 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6247 = fmul fast float %6245, %6246
  %6248 = call float @dx.op.unary.f32(i32 23, float %6247)  ; Log(value)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6243, 3
  %6250 = fmul fast float %6249, %6248
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6253 = fmul fast float %6250, %6252
  %6254 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6255 = uitofp i32 %6233 to float
  %6256 = uitofp i32 %6236 to float
  %6257 = fadd fast float %6255, 5.000000e-01
  %6258 = fadd fast float %6256, 5.000000e-01
  %6259 = fmul fast float %6252, %6257
  %6260 = fmul fast float %6252, %6258
  %6261 = fadd fast float %6259, 0x3F0FFB4800000000
  %6262 = fadd fast float %6260, 0xBF0FFB4800000000
  %6263 = call float @dx.op.binary.f32(i32 35, float %6254, float %6261)  ; FMax(a,b)
  %6264 = call float @dx.op.binary.f32(i32 36, float %6263, float %6262)  ; FMin(a,b)
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6269 = select i1 %4771, float %6268, float 0.000000e+00
  %6270 = fmul fast float %6266, %6264
  %6271 = fadd fast float %6269, %6270
  %6272 = fadd fast float %6269, %6267
  %6273 = fsub fast float %6266, %6267
  %6274 = fadd fast float %6273, %6269
  %6275 = call float @dx.op.binary.f32(i32 35, float %6271, float %6272)  ; FMax(a,b)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6275, float %6274)  ; FMin(a,b)
  %6277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %23, float %6208, float %6209, float %6276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.i32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.i32 %6281, 1
  %6284 = uitofp i32 %6282 to float
  %6285 = uitofp i32 %6283 to float
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6289 = fmul fast float %6284, %6208
  %6290 = fmul fast float %6285, %6209
  %6291 = fadd fast float %6289, -5.000000e-01
  %6292 = fadd fast float %6290, -5.000000e-01
  %6293 = call float @dx.op.unary.f32(i32 22, float %6291)  ; Frc(value)
  %6294 = call float @dx.op.unary.f32(i32 22, float %6292)  ; Frc(value)
  %6295 = fmul fast float %6293, %6293
  %6296 = fmul fast float %6295, %6293
  %6297 = fsub fast float 3.000000e+00, %6293
  %6298 = fmul fast float %6295, %6297
  %6299 = fmul fast float %6293, 3.000000e+00
  %6300 = fmul fast float %6296, 3.000000e+00
  %6301 = fmul fast float %6295, 6.000000e+00
  %6302 = fsub fast float %6300, %6301
  %6303 = fadd fast float %6302, 4.000000e+00
  %6304 = fmul fast float %6303, 0x3FC5555560000000
  %6305 = fmul fast float %6296, -3.000000e+00
  %6306 = fadd fast float %6295, %6293
  %6307 = fmul fast float %6306, 3.000000e+00
  %6308 = fadd fast float %6305, 1.000000e+00
  %6309 = fadd fast float %6308, %6307
  %6310 = fmul fast float %6296, 0x3FC5555560000000
  %6311 = fmul fast float %6294, %6294
  %6312 = fmul fast float %6311, %6294
  %6313 = fsub fast float 3.000000e+00, %6294
  %6314 = fmul fast float %6311, %6313
  %6315 = fmul fast float %6294, 3.000000e+00
  %6316 = fmul fast float %6312, 3.000000e+00
  %6317 = fmul fast float %6311, 6.000000e+00
  %6318 = fsub fast float %6316, %6317
  %6319 = fadd fast float %6318, 4.000000e+00
  %6320 = fmul fast float %6319, 0x3FC5555560000000
  %6321 = fmul fast float %6312, -3.000000e+00
  %6322 = fadd fast float %6311, %6294
  %6323 = fmul fast float %6322, 3.000000e+00
  %6324 = fadd fast float %6321, 1.000000e+00
  %6325 = fadd fast float %6324, %6323
  %6326 = fmul fast float %6312, 0x3FC5555560000000
  %6327 = fadd fast float %6293, 1.000000e+00
  %6328 = fsub fast float 1.000000e+00, %6299
  %6329 = fadd fast float %6328, %6298
  %6330 = fadd fast float %6329, %6303
  %6331 = fmul fast float %6330, 0x3FC5555560000000
  %6332 = fdiv fast float %6304, %6331
  %6333 = fsub fast float %6327, %6332
  %6334 = fsub fast float 1.000000e+00, %6293
  %6335 = fadd fast float %6309, %6296
  %6336 = fmul fast float %6335, 0x3FC5555560000000
  %6337 = fdiv fast float %6310, %6336
  %6338 = fadd fast float %6334, %6337
  %6339 = fadd fast float %6294, 1.000000e+00
  %6340 = fsub fast float 1.000000e+00, %6315
  %6341 = fadd fast float %6340, %6314
  %6342 = fadd fast float %6341, %6319
  %6343 = fmul fast float %6342, 0x3FC5555560000000
  %6344 = fdiv fast float %6320, %6343
  %6345 = fsub fast float %6339, %6344
  %6346 = fsub fast float 1.000000e+00, %6294
  %6347 = fadd fast float %6325, %6312
  %6348 = fmul fast float %6347, 0x3FC5555560000000
  %6349 = fdiv fast float %6326, %6348
  %6350 = fadd fast float %6349, %6346
  %6351 = fmul fast float %6333, %6287
  %6352 = fsub fast float %6208, %6351
  %6353 = fmul fast float %6338, %6287
  %6354 = fadd fast float %6353, %6208
  %6355 = fmul fast float %6350, %6288
  %6356 = fadd fast float %6355, %6209
  %6357 = fmul fast float %6345, %6288
  %6358 = fsub fast float %6209, %6357
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %6352, float %6358, float %6276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.ResRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.ResRet.f32 %6359, 2
  %6363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %6354, float %6358, float %6276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.ResRet.f32 %6363, 2
  %6367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %6352, float %6356, float %6276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.ResRet.f32 %6367, 2
  %6371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %23, float %6354, float %6356, float %6276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.ResRet.f32 %6371, 1
  %6374 = extractvalue %dx.types.ResRet.f32 %6371, 2
  %6375 = fsub fast float %6368, %6360
  %6376 = fsub fast float %6369, %6361
  %6377 = fsub fast float %6370, %6362
  %6378 = fmul fast float %6375, %6348
  %6379 = fmul fast float %6376, %6348
  %6380 = fmul fast float %6377, %6348
  %6381 = fadd fast float %6378, %6360
  %6382 = fadd fast float %6379, %6361
  %6383 = fadd fast float %6380, %6362
  %6384 = fsub fast float %6372, %6364
  %6385 = fsub fast float %6373, %6365
  %6386 = fsub fast float %6374, %6366
  %6387 = fmul fast float %6384, %6348
  %6388 = fmul fast float %6385, %6348
  %6389 = fmul fast float %6386, %6348
  %6390 = fsub fast float %6364, %6381
  %6391 = fadd fast float %6390, %6387
  %6392 = fsub fast float %6365, %6382
  %6393 = fadd fast float %6392, %6388
  %6394 = fsub fast float %6366, %6383
  %6395 = fadd fast float %6394, %6389
  %6396 = fmul fast float %6391, %6336
  %6397 = fmul fast float %6393, %6336
  %6398 = fmul fast float %6395, %6336
  %6399 = fadd fast float %6396, %6381
  %6400 = fadd fast float %6397, %6382
  %6401 = fadd fast float %6398, %6383
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 1
  %6404 = fmul fast float %6399, %6403
  %6405 = fmul fast float %6400, %6403
  %6406 = fmul fast float %6401, %6403
  br label %6407

; <label>:6407                                    ; preds = %6238, %6195
  %6408 = phi float [ %6278, %6238 ], [ 1.000000e+00, %6195 ]
  %6409 = phi float [ %6279, %6238 ], [ 1.000000e+00, %6195 ]
  %6410 = phi float [ %6280, %6238 ], [ 1.000000e+00, %6195 ]
  %6411 = phi float [ %6404, %6238 ], [ 0.000000e+00, %6195 ]
  %6412 = phi float [ %6405, %6238 ], [ 0.000000e+00, %6195 ]
  %6413 = phi float [ %6406, %6238 ], [ 0.000000e+00, %6195 ]
  %6414 = fmul fast float %6411, %4745
  %6415 = fmul fast float %6412, %4745
  %6416 = fmul fast float %6413, %4745
  %6417 = fmul fast float %6408, %6202
  %6418 = call float @dx.op.dot3.f32(i32 55, float %6408, float %6409, float %6410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = call float @dx.op.dot3.f32(i32 55, float %6414, float %6415, float %6416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6420 = select i1 %192, float %6418, float %6408
  %6421 = select i1 %192, float %6418, float %6409
  %6422 = select i1 %192, float 1.000000e+00, float %6410
  %6423 = select i1 %192, float %6419, float %6414
  %6424 = select i1 %192, float 0.000000e+00, float %6415
  %6425 = select i1 %192, float 0.000000e+00, float %6416
  %6426 = and i32 %4244, 3
  %6427 = icmp ne i32 %6426, 0
  %6428 = and i32 %4244, 4
  %6429 = icmp ne i32 %6428, 0
  %6430 = and i1 %6427, %6429
  %6431 = and i1 %192, %6430
  br i1 %6431, label %6432, label %6438

; <label>:6432                                    ; preds = %6407
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6435 = fadd fast float %6417, -1.000000e+00
  %6436 = fmul fast float %6434, %6435
  %6437 = fadd fast float %6436, 1.000000e+00
  br label %6438

; <label>:6438                                    ; preds = %6432, %6407
  %6439 = phi float [ %6437, %6432 ], [ %6417, %6407 ]
  %6440 = fadd fast float %6199, %6196
  %6441 = fmul fast float %6420, %6440
  %6442 = fadd fast float %6441, %6423
  %6443 = fadd fast float %6200, %6197
  %6444 = fmul fast float %6421, %6443
  %6445 = fadd fast float %6444, %6424
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  br i1 %192, label %6448, label %6472

; <label>:6448                                    ; preds = %6438
  %6449 = fadd fast float %6442, %6445
  %6450 = fmul fast float %6447, %6449
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6453 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %6454 = fsub fast float %4754, %4748
  %6455 = fadd fast float %6454, %4755
  %6456 = fsub fast float %6455, %6453
  %6457 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %6458 = fmul fast float %6456, %6457
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fsub fast float %6459, %6452
  %6461 = fmul fast float %6460, %6439
  %6462 = fadd fast float %6461, %6452
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = fsub fast float %6462, %6464
  %6466 = fmul fast float %6465, 1.000000e+01
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = fsub fast float %4219, %4745
  %6469 = fmul fast float %6467, %6468
  %6470 = fadd fast float %6469, %4745
  %6471 = fmul fast float %6470, %6462
  br label %6496

; <label>:6472                                    ; preds = %6438
  %6473 = fadd fast float %6201, %6198
  %6474 = fmul fast float %6422, %6473
  %6475 = fadd fast float %6474, %6425
  %6476 = fmul fast float %6447, %6442
  %6477 = fmul fast float %6447, %6445
  %6478 = fmul fast float %6447, %6475
  %6479 = call float @dx.op.binary.f32(i32 35, float %6477, float %6478)  ; FMax(a,b)
  %6480 = call float @dx.op.binary.f32(i32 35, float %6476, float %6479)  ; FMax(a,b)
  %6481 = call float @dx.op.binary.f32(i32 35, float %6480, float %4745)  ; FMax(a,b)
  %6482 = fcmp fast ugt float %6481, 0x3F10000000000000
  br i1 %6482, label %6484, label %6483

; <label>:6483                                    ; preds = %6472
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6484

; <label>:6484                                    ; preds = %6483, %6472
  %6485 = add i32 %29, 372
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = and i32 %6487, 32
  %6489 = icmp eq i32 %6488, 0
  br i1 %6489, label %6496, label %6490

; <label>:6490                                    ; preds = %6484
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = fmul fast float %6492, 0x3FE99999A0000000
  %6494 = fadd fast float %6492, %6476
  %6495 = fadd fast float %6493, %6478
  br label %6496

; <label>:6496                                    ; preds = %6490, %6484, %6448
  %6497 = phi float [ %6450, %6448 ], [ %6494, %6490 ], [ %6476, %6484 ]
  %6498 = phi float [ %6471, %6448 ], [ %6477, %6490 ], [ %6477, %6484 ]
  %6499 = phi float [ %6470, %6448 ], [ %6495, %6490 ], [ %6478, %6484 ]
  %6500 = phi float [ %6470, %6448 ], [ %4745, %6490 ], [ %4745, %6484 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6501 = call float @dx.op.binary.f32(i32 36, float %6497, float 3.225500e+04)  ; FMin(a,b)
  %6502 = call float @dx.op.binary.f32(i32 36, float %6498, float 3.225500e+04)  ; FMin(a,b)
  %6503 = call float @dx.op.binary.f32(i32 36, float %6499, float 3.225500e+04)  ; FMin(a,b)
  %6504 = call float @dx.op.binary.f32(i32 36, float %6500, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6501)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6502)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6503)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!dx.viewIdState = !{!43}
!dx.entryPoints = !{!44}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 5}
!25 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!27 = !{i32 19, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!28 = !{i32 20, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !31}
!31 = !{i32 0, i32 14}
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!37 = !{!38, !39, !40, !41, !42}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !65}
!45 = !{!46, !63, null}
!46 = !{!47, !50, !51, !53, !55, !56, !57, !58, !59, !60, !62}
!47 = !{i32 0, !"SV_Position", i8 9, i8 3, !48, i8 4, i32 1, i8 4, i32 0, i8 0, !49}
!48 = !{i32 0}
!49 = !{i32 3, i32 15}
!50 = !{i32 1, !"COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 1, i8 0, !49}
!51 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 2, i8 0, !52}
!52 = !{i32 3, i32 3}
!53 = !{i32 3, !"NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 3, i8 0, !54}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TANGENT", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !49}
!56 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 5, i8 0, !54}
!57 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 6, i8 0, !49}
!58 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 7, i8 0, !52}
!59 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 8, i8 0, !49}
!60 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 9, i8 0, !61}
!61 = !{i32 3, i32 13}
!62 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!63 = !{!64}
!64 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !49}
!65 = !{i32 0, i64 16}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!72 = distinct !{!72, !73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!73 = distinct !{!73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!74 = distinct !{!74, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!75 = distinct !{!75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!76 = distinct !{!76, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!77 = distinct !{!77, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!78 = distinct !{!78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!79 = distinct !{!79, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!80 = distinct !{!80, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!81 = distinct !{!81, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!82 = distinct !{!82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!83 = distinct !{!83, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!84 = distinct !{!84, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!85 = distinct !{!85, !86, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!86 = distinct !{!86, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"\01?sort@@YAXAIAM00@Z: %c"}
!89 = distinct !{!89, !"\01?sort@@YAXAIAM00@Z"}
!90 = !{!91, !92, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!91 = distinct !{!91, !89, !"\01?sort@@YAXAIAM00@Z: %a"}
!92 = distinct !{!92, !89, !"\01?sort@@YAXAIAM00@Z: %b"}
!93 = !{!92}
!94 = !{!91, !88, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!95 = !{!91}
!96 = !{!92, !88, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!97 = !{!98}
!98 = distinct !{!98, !99, !"\01?sort@@YAXAIAM00@Z: %c"}
!99 = distinct !{!99, !"\01?sort@@YAXAIAM00@Z"}
!100 = !{!101, !102, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!101 = distinct !{!101, !99, !"\01?sort@@YAXAIAM00@Z: %a"}
!102 = distinct !{!102, !99, !"\01?sort@@YAXAIAM00@Z: %b"}
!103 = !{!102}
!104 = !{!101, !98, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!105 = !{!101}
!106 = !{!102, !98, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}

