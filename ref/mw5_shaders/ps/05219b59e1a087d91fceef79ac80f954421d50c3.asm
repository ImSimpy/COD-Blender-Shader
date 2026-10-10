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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f411adbdc8b2e2a4acfe3e049f613441
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t49,space1     1
;                                   texture    byte         r/o      T8     t50,space1     1
;                                   texture    byte         r/o      T9     t51,space1     1
;                                   texture    byte         r/o     T10     t52,space1     1
;                                   texture    byte         r/o     T11     t16,space1     1
;                                   texture    byte         r/o     T12     t17,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = icmp ne i32 %54, 0
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = alloca [12 x float], align 4
  %96 = alloca [12 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fmul fast float %102, %91
  %104 = fmul fast float %102, %92
  %105 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %106 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %82, %105
  %112 = fmul fast float %111, %110
  %113 = fmul fast float %83, %105
  %114 = fmul fast float %113, %110
  %115 = fmul fast float %84, %105
  %116 = fmul fast float %115, %110
  %117 = fmul fast float %83, %80
  %118 = fmul fast float %84, %79
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %84, %78
  %121 = fmul fast float %82, %80
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %82, %79
  %124 = fmul fast float %83, %78
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %119, %81
  %127 = fmul fast float %122, %81
  %128 = fmul fast float %125, %81
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %132 = fmul fast float %103, 2.000000e+00
  %133 = fmul fast float %132, %130
  %134 = fmul fast float %104, 2.000000e+00
  %135 = fmul fast float %134, %131
  %136 = fsub fast float 1.000000e+00, %133
  %137 = fsub fast float 1.000000e+00, %135
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %136, %139
  %143 = fmul fast float %136, %140
  %144 = fmul fast float %136, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %137, %146
  %150 = fmul fast float %137, %147
  %151 = fmul fast float %137, %148
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fadd fast float %149, %153
  %157 = fadd fast float %156, %142
  %158 = fadd fast float %150, %154
  %159 = fadd fast float %158, %143
  %160 = fadd fast float %151, %155
  %161 = fadd fast float %160, %144
  %162 = fmul fast float %157, %94
  %163 = fmul fast float %159, %94
  %164 = fmul fast float %161, %94
  %165 = fmul fast float %103, 5.000000e-01
  %166 = fmul fast float %104, 5.000000e-01
  %167 = fptosi float %165 to i32
  %168 = fptosi float %166 to i32
  %169 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %167, i32 %168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = lshr i32 %170, 18
  %172 = uitofp i32 %171 to float
  %173 = fmul fast float %172, 0x3F4C00EBA0000000
  %174 = call float @dx.op.unary.f32(i32 21, float %173)  ; Exp(value)
  %175 = fadd fast float %174, -1.000000e+00
  %176 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %177 = extractvalue %dx.types.Dimensions %176, 0
  %178 = sitofp i32 %177 to float
  %179 = extractvalue %dx.types.Dimensions %176, 1
  %180 = sitofp i32 %179 to float
  %181 = fcmp fast oge float %165, %178
  %182 = fcmp fast oge float %166, %180
  %183 = or i1 %181, %182
  %184 = select i1 %183, float 0x4197782600000000, float %175
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %188 = fmul fast float %186, %103
  %189 = fmul fast float %187, %104
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 114688
  %193 = icmp ne i32 %192, 0
  %194 = select i1 %193, float %188, float 0.000000e+00
  %195 = select i1 %193, float %189, float 0.000000e+00
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %194, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fmul fast float %197, 2.550000e+02
  %199 = fptoui float %198 to i32
  %200 = select i1 %193, i32 %199, i32 0
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 3
  %204 = and i32 %203, 3
  %205 = icmp ne i32 %204, 0
  %206 = and i32 %203, 4
  %207 = icmp ne i32 %206, 0
  %208 = and i1 %205, %207
  br i1 %208, label %209, label %220

; <label>:209                                     ; preds = %0
  %210 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %211 = fmul fast float %210, %104
  %212 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %213 = fmul fast float %212, %103
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %213, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fsub fast float 1.000000e+00, %215
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = fcmp fast olt float %216, %218
  br label %223

; <label>:220                                     ; preds = %0
  %221 = icmp eq i32 %206, 0
  %222 = and i1 %205, %221
  br label %223

; <label>:223                                     ; preds = %220, %209
  %224 = phi i1 [ %219, %209 ], [ %222, %220 ]
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = fmul fast float %226, 0x3FE3C6EF40000000
  %228 = frem fast float %103, 2.560000e+02
  %229 = frem fast float %104, 2.560000e+02
  %230 = fptoui float %228 to i32
  %231 = fptoui float %229 to i32
  %232 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %230, i32 %231, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fadd fast float %233, %227
  %235 = call float @dx.op.unary.f32(i32 22, float %234)  ; Frc(value)
  %236 = add i32 %56, 156
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = shl i32 %238, 4
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %238, 7
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 22
  %246 = shl nuw nsw i32 %245, 5
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %56, 216
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %250, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %250, 16
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = add i32 %56, 36
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %56, 288
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %273, 0x3F50624DE0000000
  %277 = fmul fast float %275, 0x3F50624DE0000000
  %278 = add i32 %56, 172
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = shl i32 %280, 4
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %280, 7
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 22
  %288 = shl nuw nsw i32 %287, 5
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %56, 232
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %56, 52
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %56, 304
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = add i32 %56, 188
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %56, 248
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %56, 68
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %56, 320
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = fmul fast float %357, 0x3F50624DE0000000
  %361 = fmul fast float %359, 0x3F50624DE0000000
  %362 = add i32 %56, 204
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = shl i32 %364, 4
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %364, 7
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %364, 22
  %372 = shl nuw nsw i32 %371, 5
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %56, 264
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %376, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %376, 16
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = add i32 %56, 84
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = add i32 %56, 336
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = fmul fast float %399, 0x3F50624DE0000000
  %403 = fmul fast float %401, 0x3F50624DE0000000
  %404 = add i32 %56, 348
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 32
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %406, 64
  %410 = icmp eq i32 %409, 0
  %411 = and i32 %406, 128
  %412 = icmp eq i32 %411, 0
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %432, label %417

; <label>:417                                     ; preds = %223
  %418 = add i32 %56, 524
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = add i32 %420, 0
  %422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %422, %dx.types.Handle %100, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = extractvalue %dx.types.ResRet.f32 %423, 3
  %428 = fmul fast float %427, %87
  %429 = fmul fast float %424, %88
  %430 = fmul fast float %425, %89
  %431 = fmul fast float %426, %90
  br label %432

; <label>:432                                     ; preds = %417, %223
  %433 = phi float [ %90, %223 ], [ %431, %417 ]
  %434 = phi float [ %89, %223 ], [ %430, %417 ]
  %435 = phi float [ %88, %223 ], [ %429, %417 ]
  %436 = phi float [ %87, %223 ], [ %428, %417 ]
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 2
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %460, label %441

; <label>:441                                     ; preds = %432
  %442 = add i32 %56, 44
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %435, float 1.000000e+00
  %448 = add i32 %56, 60
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %434, float 1.000000e+00
  %454 = add i32 %56, 76
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 1
  %458 = icmp ne i32 %457, 0
  %459 = select i1 %458, float %433, float 1.000000e+00
  br label %460

; <label>:460                                     ; preds = %441, %432
  %461 = phi float [ %433, %432 ], [ %459, %441 ]
  %462 = phi float [ %434, %432 ], [ %453, %441 ]
  %463 = phi float [ %435, %432 ], [ %447, %441 ]
  %464 = lshr i32 %438, 20
  %465 = and i32 %464, 3
  %466 = add nuw nsw i32 %465, 1
  %467 = add i32 %56, 24
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = add i32 %56, 28
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = or i32 %472, %469
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %1124, label %475

; <label>:475                                     ; preds = %460
  %476 = and i32 %469, 262144
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %60, float 1.000000e+00
  %479 = select i1 %477, float %61, float 0.000000e+00
  %480 = select i1 %477, float %62, float 0.000000e+00
  %481 = select i1 %477, float %63, float 1.000000e+00
  %482 = select i1 %477, float %64, float %85
  %483 = select i1 %477, float %65, float %86
  %484 = add i32 %56, 284
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = fmul fast float %488, 0x3F50624DE0000000
  %490 = add i32 %56, 88
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = lshr i32 %492, 16
  %494 = and i32 %493, 255
  %495 = lshr i32 %492, 24
  %496 = add i32 %56, 292
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 65535
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %498, 16
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = add i32 %56, 32
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = shl i32 %505, 4
  %510 = and i32 %509, 32752
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = lshr i32 %505, 7
  %513 = and i32 %512, 32752
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 3
  %517 = fmul fast float %516, 1.000000e+03
  %518 = fmul fast float %276, %517
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fadd fast float %519, %266
  %521 = fmul fast float %277, %517
  %522 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %523 = fadd fast float %522, %268
  %524 = fmul fast float %489, %517
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = fmul fast float %525, 0x401921FB60000000
  %527 = fadd fast float %526, %508
  %528 = call float @dx.op.unary.f32(i32 13, float %527)  ; Sin(value)
  %529 = call float @dx.op.unary.f32(i32 12, float %527)  ; Cos(value)
  %530 = fsub fast float -0.000000e+00, %528
  %531 = fadd fast float %482, -5.000000e-01
  %532 = fadd fast float %483, -5.000000e-01
  %533 = fmul fast float %500, %531
  %534 = fmul fast float %502, %532
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fadd fast float %534, 5.000000e-01
  %537 = fmul fast float %511, %535
  %538 = fmul fast float %514, %536
  %539 = fmul fast float %529, %537
  %540 = call float @dx.op.tertiary.f32(i32 46, float %530, float %538, float %539)  ; FMad(a,b,c)
  %541 = fmul fast float %528, %537
  %542 = call float @dx.op.tertiary.f32(i32 46, float %529, float %538, float %541)  ; FMad(a,b,c)
  %543 = fadd fast float %520, %540
  %544 = fadd fast float %523, %542
  %545 = icmp ugt i32 %494, 1
  %546 = icmp ugt i32 %492, 33554431
  %547 = or i1 %546, %545
  br i1 %547, label %548, label %573

; <label>:548                                     ; preds = %475
  %549 = add i32 %56, 228
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = lshr i32 %551, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = fmul fast float %516, %553
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = mul nuw nsw i32 %494, %495
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %555, %557
  %559 = call float @dx.op.unary.f32(i32 27, float %558)  ; Round_ni(value)
  %560 = fptoui float %559 to i32
  %561 = urem i32 %560, %494
  %562 = udiv i32 %560, %495
  %563 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %564 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %565 = uitofp i32 %561 to float
  %566 = uitofp i32 %562 to float
  %567 = fadd fast float %563, %565
  %568 = fadd fast float %564, %566
  %569 = uitofp i32 %494 to float
  %570 = uitofp i32 %495 to float
  %571 = fdiv fast float %567, %569
  %572 = fdiv fast float %568, %570
  br label %573

; <label>:573                                     ; preds = %548, %475
  %574 = phi float [ %571, %548 ], [ %543, %475 ]
  %575 = phi float [ %572, %548 ], [ %544, %475 ]
  %576 = and i32 %469, 16777216
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %687, label %578

; <label>:578                                     ; preds = %573
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = fadd fast float %580, %162
  %584 = fadd fast float %581, %163
  %585 = fadd fast float %582, %164
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = icmp eq i32 %57, 65535
  br i1 %589, label %684, label %590

; <label>:590                                     ; preds = %578
  %591 = lshr i32 %57, 1
  %592 = shl i32 %591, 2
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %57, 1
  %596 = icmp ne i32 %595, 0
  %597 = lshr i32 %594, 16
  %598 = and i32 %594, 65535
  %599 = select i1 %596, i32 %597, i32 %598
  %600 = icmp eq i32 %599, 65535
  br i1 %600, label %680, label %601

; <label>:601                                     ; preds = %590
  %602 = mul nuw nsw i32 %599, 40
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = add nuw nsw i32 %602, 12
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = add nuw nsw i32 %602, 24
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = add nuw nsw i32 %602, 36
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = fsub fast float %583, %604
  %621 = fsub fast float %584, %605
  %622 = fsub fast float %585, %606
  %623 = fmul fast float %619, %620
  %624 = fmul fast float %619, %621
  %625 = fmul fast float %619, %622
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fadd fast float %628, 5.000000e-01
  %632 = fmul fast float %629, %609
  %633 = fmul fast float %630, %610
  %634 = fmul fast float %631, %611
  %635 = shl i32 %57, 2
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = add i32 %637, 0
  %639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %639, %dx.types.Handle %49, float %640, float %641, float %642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fmul fast float %646, 1.023000e+03
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = fsub fast float %623, %626
  %657 = fsub fast float %624, %627
  %658 = fsub fast float %625, %628
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fmul fast float %658, 7.500000e-01
  %662 = fadd fast float %626, 1.250000e-01
  %663 = fadd fast float %662, %659
  %664 = fadd fast float %663, %653
  %665 = fadd fast float %627, 1.250000e-01
  %666 = fadd fast float %665, %660
  %667 = fadd fast float %666, %654
  %668 = fadd fast float %628, 1.250000e-01
  %669 = fadd fast float %668, %661
  %670 = fadd fast float %669, %655
  %671 = fmul fast float %664, %614
  %672 = fmul fast float %667, %615
  %673 = fmul fast float %670, %616
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = add i32 %675, 0
  %677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %677, %dx.types.Handle %47, float %671, float %672, float %673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  br label %680

; <label>:680                                     ; preds = %601, %590
  %681 = phi float [ %679, %601 ], [ -1.000000e+00, %590 ]
  %682 = fadd fast float %681, %588
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  br label %684

; <label>:684                                     ; preds = %680, %578
  %685 = phi float [ %683, %680 ], [ %588, %578 ]
  %686 = fmul fast float %685, %436
  br label %687

; <label>:687                                     ; preds = %684, %573
  %688 = phi float [ %686, %684 ], [ %436, %573 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 256
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %739, label %693

; <label>:693                                     ; preds = %687
  %694 = add i32 %56, 472
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %100, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = add i32 %56, 100
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = shl i32 %703, 4
  %705 = and i32 %704, 32752
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = lshr i32 %703, 7
  %708 = and i32 %707, 32752
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = fsub fast float 1.000000e+00, %688
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %712 = bitcast float %688 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %709, %714
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = bitcast float %711 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %721, %709
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = fmul fast float %718, %706
  %727 = fmul fast float %725, %706
  %728 = fsub fast float %711, %726
  %729 = fadd fast float %727, %711
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %732 = fsub fast float %700, %730
  %733 = fsub fast float %731, %730
  %734 = bitcast float %733 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %732
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  br label %739

; <label>:739                                     ; preds = %693, %687
  %740 = phi float [ %738, %693 ], [ %688, %687 ]
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 128
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %761, label %745

; <label>:745                                     ; preds = %739
  %746 = add i32 %56, 456
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %100, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 524288
  %756 = icmp ne i32 %755, 0
  %757 = fcmp fast ogt float %752, 0x3FE0101020000000
  %758 = select i1 %757, float 1.000000e+00, float 0.000000e+00
  %759 = select i1 %756, float %758, float %752
  %760 = fmul fast float %759, %740
  br label %761

; <label>:761                                     ; preds = %745, %739
  %762 = phi float [ %760, %745 ], [ %740, %739 ]
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 16
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %965, label %767

; <label>:767                                     ; preds = %761
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %56, 408
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %772, 0
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %774, %dx.types.Handle %99, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = and i32 %769, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %769, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %779, %781
  %786 = fadd fast float %785, %784
  %787 = fmul fast float %786, 0x3F70101000000000
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 512
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %800, label %792

; <label>:792                                     ; preds = %767
  %793 = add i32 %56, 492
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %795, 0
  %797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %797, %dx.types.Handle %100, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  br label %800

; <label>:800                                     ; preds = %792, %767
  %801 = phi float [ %799, %792 ], [ 1.000000e+00, %767 ]
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 33554432
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %912, label %806

; <label>:806                                     ; preds = %800
  %807 = add i32 %56, 224
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = lshr i32 %809, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = add i32 %56, 228
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = lshr i32 %820, 24
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = and i32 %820, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %820, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = lshr i32 %820, 16
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = add i32 %56, 220
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 24
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = and i32 %837, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %837, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %837, 16
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = bitcast float %776 to i32
  %853 = ashr i32 %852, 1
  %854 = sub nsw i32 1597463174, %853
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %776, 5.000000e-01
  %857 = fmul fast float %855, %855
  %858 = fmul fast float %857, %856
  %859 = fsub fast float 1.500000e+00, %858
  %860 = fmul fast float %855, %776
  %861 = fmul fast float %860, %859
  %862 = bitcast float %777 to i32
  %863 = ashr i32 %862, 1
  %864 = sub nsw i32 1597463174, %863
  %865 = bitcast i32 %864 to float
  %866 = fmul fast float %777, 5.000000e-01
  %867 = fmul fast float %865, %865
  %868 = fmul fast float %867, %866
  %869 = fsub fast float 1.500000e+00, %868
  %870 = fmul fast float %865, %777
  %871 = fmul fast float %870, %869
  %872 = bitcast float %778 to i32
  %873 = ashr i32 %872, 1
  %874 = sub nsw i32 1597463174, %873
  %875 = bitcast i32 %874 to float
  %876 = fmul fast float %778, 5.000000e-01
  %877 = fmul fast float %875, %875
  %878 = fmul fast float %877, %876
  %879 = fsub fast float 1.500000e+00, %878
  %880 = fmul fast float %875, %778
  %881 = fmul fast float %880, %879
  %882 = fsub fast float %861, %843
  %883 = fsub fast float %871, %847
  %884 = fsub fast float %881, %851
  %885 = fmul fast float %882, %811
  %886 = fmul fast float %883, %813
  %887 = fmul fast float %884, %818
  %888 = fadd fast float %885, %826
  %889 = fadd fast float %886, %830
  %890 = fadd fast float %887, %834
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %894 = fmul fast float %891, %891
  %895 = fmul fast float %892, %892
  %896 = fmul fast float %893, %893
  %897 = fsub fast float %894, %776
  %898 = fsub fast float %895, %777
  %899 = fsub fast float %896, %778
  %900 = fmul fast float %897, %801
  %901 = fmul fast float %898, %801
  %902 = fmul fast float %899, %801
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %902, %778
  %906 = fadd fast float %823, %787
  %907 = fsub fast float %906, %840
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = fsub fast float %908, %787
  %910 = fmul fast float %909, %801
  %911 = fadd fast float %910, %787
  br label %965

; <label>:912                                     ; preds = %800
  %913 = and i32 %803, 134217728
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %949, label %915

; <label>:915                                     ; preds = %912
  %916 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %918 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fadd fast float %918, -5.000000e-01
  %922 = fmul fast float %919, %801
  %923 = fmul fast float %920, %801
  %924 = fmul fast float %921, %801
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = fadd fast float %924, 5.000000e-01
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %931 = fmul fast float %925, 2.000000e+00
  %932 = fsub fast float 1.000000e+00, %931
  %933 = fmul fast float %932, %928
  %934 = fadd fast float %933, %931
  %935 = fmul fast float %934, %928
  %936 = fmul fast float %926, 2.000000e+00
  %937 = fsub fast float 1.000000e+00, %936
  %938 = fmul fast float %937, %929
  %939 = fadd fast float %938, %936
  %940 = fmul fast float %939, %929
  %941 = fmul fast float %927, 2.000000e+00
  %942 = fsub fast float 1.000000e+00, %941
  %943 = fmul fast float %942, %930
  %944 = fadd fast float %943, %941
  %945 = fmul fast float %944, %930
  %946 = fmul fast float %935, %935
  %947 = fmul fast float %940, %940
  %948 = fmul fast float %945, %945
  br label %965

; <label>:949                                     ; preds = %912
  %950 = fmul fast float %253, %253
  %951 = fmul fast float %257, %257
  %952 = fmul fast float %261, %261
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fadd fast float %952, -1.000000e+00
  %956 = fmul fast float %801, %953
  %957 = fmul fast float %801, %954
  %958 = fmul fast float %801, %955
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fadd fast float %958, 1.000000e+00
  %962 = fmul fast float %959, %776
  %963 = fmul fast float %960, %777
  %964 = fmul fast float %961, %778
  br label %965

; <label>:965                                     ; preds = %949, %915, %806, %761
  %966 = phi float [ %911, %806 ], [ %787, %915 ], [ %787, %949 ], [ 0x3FA23C0BE0000000, %761 ]
  %967 = phi float [ %903, %806 ], [ %946, %915 ], [ %962, %949 ], [ 1.000000e+00, %761 ]
  %968 = phi float [ %904, %806 ], [ %947, %915 ], [ %963, %949 ], [ 1.000000e+00, %761 ]
  %969 = phi float [ %905, %806 ], [ %948, %915 ], [ %964, %949 ], [ 1.000000e+00, %761 ]
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 1
  %972 = and i32 %971, 1
  %973 = icmp ne i32 %972, 0
  %974 = add i32 %56, 356
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 32
  %978 = icmp ne i32 %977, 0
  %979 = and i1 %973, %978
  %980 = select i1 %979, float 1.000000e+00, float %967
  %981 = select i1 %979, float 0x3FD3333340000000, float %968
  %982 = select i1 %979, float 0x3FD3333340000000, float %969
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 32
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1059, label %987

; <label>:987                                     ; preds = %965
  %988 = add i32 %56, 92
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = add i32 %56, 424
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = add i32 %993, 0
  %995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %995, %dx.types.Handle %99, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %996, 3
  %1001 = and i32 %990, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = lshr i32 %990, 8
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = lshr i32 %990, 16
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = fmul fast float %1008, 0x3F70101000000000
  %1010 = fmul fast float %997, %1002
  %1011 = fadd fast float %1010, %1005
  %1012 = fmul fast float %1011, 0x3F70101000000000
  %1013 = fadd fast float %998, -5.000000e-01
  %1014 = fadd fast float %1000, -5.000000e-01
  %1015 = fmul fast float %1013, %1009
  %1016 = fmul fast float %1014, %1009
  %1017 = fadd fast float %1015, 5.000000e-01
  %1018 = fadd fast float %1016, 5.000000e-01
  %1019 = fmul fast float %1017, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fmul fast float %1018, 2.000000e+00
  %1022 = fadd fast float %1021, -1.000000e+00
  %1023 = fadd fast float %1020, %1022
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = fsub fast float %1020, %1022
  %1026 = fmul fast float %1025, 5.000000e-01
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float 1.000000e+00, %1027
  %1029 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1030 = fsub fast float %1028, %1029
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1024, float %1026, float %1030, float %1024, float %1026, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 25, float %1031)  ; Rsqrt(value)
  %1033 = fmul fast float %1024, %1032
  %1034 = fmul fast float %1026, %1032
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 67108864
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1055, label %1039

; <label>:1039                                    ; preds = %987
  %1040 = add i32 %56, 280
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = lshr i32 %1042, 16
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = fsub fast float %1012, %1050
  %1052 = fmul fast float %1051, %1044
  %1053 = fadd fast float %1052, %1048
  %1054 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  br label %1055

; <label>:1055                                    ; preds = %1039, %987
  %1056 = phi float [ %1054, %1039 ], [ %1012, %987 ]
  %1057 = call float @dx.op.dot2.f32(i32 54, float %1033, float %1034, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  %1058 = call float @dx.op.dot2.f32(i32 54, float %1033, float %1034, float %480, float %481)  ; Dot2(ax,ay,bx,by)
  br label %1059

; <label>:1059                                    ; preds = %1055, %965
  %1060 = phi float [ %1056, %1055 ], [ 0x3FD6666660000000, %965 ]
  %1061 = phi float [ %1057, %1055 ], [ 0.000000e+00, %965 ]
  %1062 = phi float [ %1058, %1055 ], [ 0.000000e+00, %965 ]
  %1063 = phi float [ %999, %1055 ], [ 1.000000e+00, %965 ]
  %1064 = add i32 %56, 160
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = lshr i32 %1066, 22
  %1068 = shl nuw nsw i32 %1067, 5
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 64
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1107, label %1074

; <label>:1074                                    ; preds = %1059
  %1075 = add i32 %56, 440
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 131072
  %1083 = icmp eq i32 %1082, 0
  %1084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1079, %dx.types.Handle %99, float %574, float %575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = fmul fast float %1085, %241
  %1089 = fmul fast float %1086, %244
  %1090 = fmul fast float %1087, %247
  br i1 %1083, label %1097, label %1091

; <label>:1091                                    ; preds = %1074
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = fmul fast float %1093, %1088
  %1095 = fmul fast float %1093, %1089
  %1096 = fmul fast float %1093, %1090
  br label %1097

; <label>:1097                                    ; preds = %1091, %1074
  %1098 = phi float [ %1094, %1091 ], [ %1088, %1074 ]
  %1099 = phi float [ %1095, %1091 ], [ %1089, %1074 ]
  %1100 = phi float [ %1096, %1091 ], [ %1090, %1074 ]
  %1101 = fmul fast float %1098, %1069
  %1102 = select i1 %224, float %1101, float %1098
  %1103 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1099, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1104 = select i1 %224, float 0.000000e+00, float %1098
  %1105 = select i1 %224, float %1103, float %1099
  %1106 = select i1 %224, float 0.000000e+00, float %1100
  br label %1107

; <label>:1107                                    ; preds = %1097, %1059
  %1108 = phi float [ %1104, %1097 ], [ 0.000000e+00, %1059 ]
  %1109 = phi float [ %1105, %1097 ], [ 0.000000e+00, %1059 ]
  %1110 = phi float [ %1106, %1097 ], [ 0.000000e+00, %1059 ]
  %1111 = add i32 %56, 96
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = lshr i32 %1113, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = call float @dx.op.dot3.f32(i32 55, float %980, float %981, float %982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = fmul fast float %1118, %1119
  %1121 = fadd fast float %1120, %1115
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  br label %1124

; <label>:1124                                    ; preds = %1107, %460
  %1125 = phi float [ 0.000000e+00, %460 ], [ %1061, %1107 ]
  %1126 = phi float [ 0.000000e+00, %460 ], [ %1062, %1107 ]
  %1127 = phi float [ 0.000000e+00, %460 ], [ %980, %1107 ]
  %1128 = phi float [ 0.000000e+00, %460 ], [ %981, %1107 ]
  %1129 = phi float [ 0.000000e+00, %460 ], [ %982, %1107 ]
  %1130 = phi float [ 0.000000e+00, %460 ], [ %1108, %1107 ]
  %1131 = phi float [ 0.000000e+00, %460 ], [ %1109, %1107 ]
  %1132 = phi float [ 0.000000e+00, %460 ], [ %1110, %1107 ]
  %1133 = phi float [ 0.000000e+00, %460 ], [ %966, %1107 ]
  %1134 = phi float [ 0.000000e+00, %460 ], [ %762, %1107 ]
  %1135 = phi float [ 0.000000e+00, %460 ], [ %1060, %1107 ]
  %1136 = phi float [ 0.000000e+00, %460 ], [ %1063, %1107 ]
  %1137 = phi float [ 0.000000e+00, %460 ], [ %1123, %1107 ]
  br i1 %408, label %1979, label %1138

; <label>:1138                                    ; preds = %1124
  %1139 = icmp ult i32 %466, 2
  %1140 = add i32 %56, 40
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %56, 44
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = or i32 %1145, %1142
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1979, label %1148

; <label>:1148                                    ; preds = %1138
  %1149 = and i32 %1142, 262144
  %1150 = icmp ne i32 %1149, 0
  %1151 = select i1 %1150, float %60, float 1.000000e+00
  %1152 = select i1 %1150, float %61, float 0.000000e+00
  %1153 = select i1 %1150, float %62, float 0.000000e+00
  %1154 = select i1 %1150, float %63, float 1.000000e+00
  %1155 = select i1 %1150, float %64, float %85
  %1156 = select i1 %1150, float %65, float %86
  %1157 = add i32 %56, 300
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = lshr i32 %1159, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fmul fast float %1161, 0x3F50624DE0000000
  %1163 = add i32 %56, 104
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 16
  %1167 = and i32 %1166, 255
  %1168 = lshr i32 %1165, 24
  %1169 = add i32 %56, 308
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1171, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = add i32 %56, 48
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = lshr i32 %1178, 22
  %1180 = shl nuw nsw i32 %1179, 5
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = shl i32 %1178, 4
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1178, 7
  %1186 = and i32 %1185, 32752
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 3
  %1190 = fmul fast float %1189, 1.000000e+03
  %1191 = fmul fast float %318, %1190
  %1192 = call float @dx.op.unary.f32(i32 22, float %1191)  ; Frc(value)
  %1193 = fadd fast float %1192, %308
  %1194 = fmul fast float %319, %1190
  %1195 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1196 = fadd fast float %1195, %310
  %1197 = fmul fast float %1162, %1190
  %1198 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1199 = fmul fast float %1198, 0x401921FB60000000
  %1200 = fadd fast float %1199, %1181
  %1201 = call float @dx.op.unary.f32(i32 13, float %1200)  ; Sin(value)
  %1202 = call float @dx.op.unary.f32(i32 12, float %1200)  ; Cos(value)
  %1203 = fsub fast float -0.000000e+00, %1201
  %1204 = fadd fast float %1155, -5.000000e-01
  %1205 = fadd fast float %1156, -5.000000e-01
  %1206 = fmul fast float %1173, %1204
  %1207 = fmul fast float %1175, %1205
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fadd fast float %1207, 5.000000e-01
  %1210 = fmul fast float %1184, %1208
  %1211 = fmul fast float %1187, %1209
  %1212 = fmul fast float %1202, %1210
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %1211, float %1212)  ; FMad(a,b,c)
  %1214 = fmul fast float %1201, %1210
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1211, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1193, %1213
  %1217 = fadd fast float %1196, %1215
  %1218 = icmp ugt i32 %1167, 1
  %1219 = icmp ugt i32 %1165, 33554431
  %1220 = or i1 %1219, %1218
  br i1 %1220, label %1221, label %1246

; <label>:1221                                    ; preds = %1148
  %1222 = add i32 %56, 244
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = fmul fast float %1189, %1226
  %1228 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1229 = mul nuw nsw i32 %1167, %1168
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1228, %1230
  %1232 = call float @dx.op.unary.f32(i32 27, float %1231)  ; Round_ni(value)
  %1233 = fptoui float %1232 to i32
  %1234 = urem i32 %1233, %1167
  %1235 = udiv i32 %1233, %1168
  %1236 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1237 = call float @dx.op.unary.f32(i32 22, float %1217)  ; Frc(value)
  %1238 = uitofp i32 %1234 to float
  %1239 = uitofp i32 %1235 to float
  %1240 = fadd fast float %1236, %1238
  %1241 = fadd fast float %1237, %1239
  %1242 = uitofp i32 %1167 to float
  %1243 = uitofp i32 %1168 to float
  %1244 = fdiv fast float %1240, %1242
  %1245 = fdiv fast float %1241, %1243
  br label %1246

; <label>:1246                                    ; preds = %1221, %1148
  %1247 = phi float [ %1244, %1221 ], [ %1216, %1148 ]
  %1248 = phi float [ %1245, %1221 ], [ %1217, %1148 ]
  %1249 = and i32 %1142, 16777216
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1360, label %1251

; <label>:1251                                    ; preds = %1246
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1256 = fadd fast float %1253, %162
  %1257 = fadd fast float %1254, %163
  %1258 = fadd fast float %1255, %164
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = icmp eq i32 %57, 65535
  br i1 %1262, label %1357, label %1263

; <label>:1263                                    ; preds = %1251
  %1264 = lshr i32 %57, 1
  %1265 = shl i32 %1264, 2
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %57, 1
  %1269 = icmp ne i32 %1268, 0
  %1270 = lshr i32 %1267, 16
  %1271 = and i32 %1267, 65535
  %1272 = select i1 %1269, i32 %1270, i32 %1271
  %1273 = icmp eq i32 %1272, 65535
  br i1 %1273, label %1353, label %1274

; <label>:1274                                    ; preds = %1263
  %1275 = mul nuw nsw i32 %1272, 40
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = add nuw nsw i32 %1275, 12
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1285 = add nuw nsw i32 %1275, 24
  %1286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = add nuw nsw i32 %1275, 36
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = fsub fast float %1256, %1277
  %1294 = fsub fast float %1257, %1278
  %1295 = fsub fast float %1258, %1279
  %1296 = fmul fast float %1292, %1293
  %1297 = fmul fast float %1292, %1294
  %1298 = fmul fast float %1292, %1295
  %1299 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1300 = call float @dx.op.unary.f32(i32 27, float %1297)  ; Round_ni(value)
  %1301 = call float @dx.op.unary.f32(i32 27, float %1298)  ; Round_ni(value)
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fadd fast float %1300, 5.000000e-01
  %1304 = fadd fast float %1301, 5.000000e-01
  %1305 = fmul fast float %1302, %1282
  %1306 = fmul fast float %1303, %1283
  %1307 = fmul fast float %1304, %1284
  %1308 = shl i32 %57, 2
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %1310, 0
  %1312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1315 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1312, %dx.types.Handle %49, float %1313, float %1314, float %1315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = fmul fast float %1317, 1.023000e+03
  %1321 = fmul fast float %1318, 1.023000e+03
  %1322 = fmul fast float %1319, 1.023000e+03
  %1323 = fadd fast float %1320, 5.000000e-01
  %1324 = fadd fast float %1321, 5.000000e-01
  %1325 = fadd fast float %1322, 5.000000e-01
  %1326 = call float @dx.op.unary.f32(i32 27, float %1323)  ; Round_ni(value)
  %1327 = call float @dx.op.unary.f32(i32 27, float %1324)  ; Round_ni(value)
  %1328 = call float @dx.op.unary.f32(i32 27, float %1325)  ; Round_ni(value)
  %1329 = fsub fast float %1296, %1299
  %1330 = fsub fast float %1297, %1300
  %1331 = fsub fast float %1298, %1301
  %1332 = fmul fast float %1329, 7.500000e-01
  %1333 = fmul fast float %1330, 7.500000e-01
  %1334 = fmul fast float %1331, 7.500000e-01
  %1335 = fadd fast float %1299, 1.250000e-01
  %1336 = fadd fast float %1335, %1332
  %1337 = fadd fast float %1336, %1326
  %1338 = fadd fast float %1300, 1.250000e-01
  %1339 = fadd fast float %1338, %1333
  %1340 = fadd fast float %1339, %1327
  %1341 = fadd fast float %1301, 1.250000e-01
  %1342 = fadd fast float %1341, %1334
  %1343 = fadd fast float %1342, %1328
  %1344 = fmul fast float %1337, %1287
  %1345 = fmul fast float %1340, %1288
  %1346 = fmul fast float %1343, %1289
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = add i32 %1348, 0
  %1350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1350, %dx.types.Handle %47, float %1344, float %1345, float %1346, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  br label %1353

; <label>:1353                                    ; preds = %1274, %1263
  %1354 = phi float [ %1352, %1274 ], [ -1.000000e+00, %1263 ]
  %1355 = fadd fast float %1354, %1261
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  br label %1357

; <label>:1357                                    ; preds = %1353, %1251
  %1358 = phi float [ %1356, %1353 ], [ %1261, %1251 ]
  %1359 = fmul fast float %1358, %463
  br label %1360

; <label>:1360                                    ; preds = %1357, %1246
  %1361 = phi float [ %1359, %1357 ], [ %463, %1246 ]
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 256
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1412, label %1366

; <label>:1366                                    ; preds = %1360
  %1367 = add i32 %56, 476
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %100, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = add i32 %56, 116
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = shl i32 %1376, 4
  %1378 = and i32 %1377, 32752
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = lshr i32 %1376, 7
  %1381 = and i32 %1380, 32752
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = fsub fast float 1.000000e+00, %1361
  %1384 = call float @dx.op.binary.f32(i32 35, float %1383, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1385 = bitcast float %1361 to i32
  %1386 = sitofp i32 %1385 to float
  %1387 = fadd fast float %1386, 0xC1CFBF8940000000
  %1388 = fmul fast float %1382, %1387
  %1389 = fadd fast float %1388, 0x41CFBF8940000000
  %1390 = fptosi float %1389 to i32
  %1391 = bitcast i32 %1390 to float
  %1392 = bitcast float %1384 to i32
  %1393 = sitofp i32 %1392 to float
  %1394 = fadd fast float %1393, 0xC1CFBF8940000000
  %1395 = fmul fast float %1394, %1382
  %1396 = fadd fast float %1395, 0x41CFBF8940000000
  %1397 = fptosi float %1396 to i32
  %1398 = bitcast i32 %1397 to float
  %1399 = fmul fast float %1391, %1379
  %1400 = fmul fast float %1398, %1379
  %1401 = fsub fast float %1384, %1399
  %1402 = fadd fast float %1400, %1384
  %1403 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1405 = fsub fast float %1373, %1403
  %1406 = fsub fast float %1404, %1403
  %1407 = bitcast float %1406 to i32
  %1408 = sub nsw i32 2129859010, %1407
  %1409 = bitcast i32 %1408 to float
  %1410 = fmul fast float %1409, %1405
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  br label %1412

; <label>:1412                                    ; preds = %1366, %1360
  %1413 = phi float [ %1411, %1366 ], [ %1361, %1360 ]
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 128
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1434, label %1418

; <label>:1418                                    ; preds = %1412
  %1419 = add i32 %56, 460
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %100, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 524288
  %1429 = icmp ne i32 %1428, 0
  %1430 = fcmp fast ogt float %1425, 0x3FE0101020000000
  %1431 = select i1 %1430, float 1.000000e+00, float 0.000000e+00
  %1432 = select i1 %1429, float %1431, float %1425
  %1433 = fmul fast float %1432, %1413
  br label %1434

; <label>:1434                                    ; preds = %1418, %1412
  %1435 = phi float [ %1433, %1418 ], [ %1413, %1412 ]
  %1436 = fcmp fast ult float %1435, 0x3F70101020000000
  br i1 %1436, label %1979, label %1437

; <label>:1437                                    ; preds = %1434
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = and i32 %1439, 16
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1640, label %1442

; <label>:1442                                    ; preds = %1437
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %56, 412
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = add i32 %1447, 0
  %1449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1449, %dx.types.Handle %99, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = and i32 %1444, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %1444, 8
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = fmul fast float %1454, %1456
  %1461 = fadd fast float %1460, %1459
  %1462 = fmul fast float %1461, 0x3F70101000000000
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 512
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1475, label %1467

; <label>:1467                                    ; preds = %1442
  %1468 = add i32 %56, 496
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = add i32 %1470, 0
  %1472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1472, %dx.types.Handle %100, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  br label %1475

; <label>:1475                                    ; preds = %1467, %1442
  %1476 = phi float [ %1474, %1467 ], [ 1.000000e+00, %1442 ]
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 33554432
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1587, label %1481

; <label>:1481                                    ; preds = %1475
  %1482 = add i32 %56, 240
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 65535
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = lshr i32 %1484, 16
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = add i32 %56, 244
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = lshr i32 %1495, 24
  %1497 = uitofp i32 %1496 to float
  %1498 = fmul fast float %1497, 0x3F70101020000000
  %1499 = and i32 %1495, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = lshr i32 %1495, 8
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = lshr i32 %1495, 16
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = add i32 %56, 236
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = lshr i32 %1512, 24
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101020000000
  %1516 = and i32 %1512, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1512, 8
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1512, 16
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = bitcast float %1451 to i32
  %1528 = ashr i32 %1527, 1
  %1529 = sub nsw i32 1597463174, %1528
  %1530 = bitcast i32 %1529 to float
  %1531 = fmul fast float %1451, 5.000000e-01
  %1532 = fmul fast float %1530, %1530
  %1533 = fmul fast float %1532, %1531
  %1534 = fsub fast float 1.500000e+00, %1533
  %1535 = fmul fast float %1530, %1451
  %1536 = fmul fast float %1535, %1534
  %1537 = bitcast float %1452 to i32
  %1538 = ashr i32 %1537, 1
  %1539 = sub nsw i32 1597463174, %1538
  %1540 = bitcast i32 %1539 to float
  %1541 = fmul fast float %1452, 5.000000e-01
  %1542 = fmul fast float %1540, %1540
  %1543 = fmul fast float %1542, %1541
  %1544 = fsub fast float 1.500000e+00, %1543
  %1545 = fmul fast float %1540, %1452
  %1546 = fmul fast float %1545, %1544
  %1547 = bitcast float %1453 to i32
  %1548 = ashr i32 %1547, 1
  %1549 = sub nsw i32 1597463174, %1548
  %1550 = bitcast i32 %1549 to float
  %1551 = fmul fast float %1453, 5.000000e-01
  %1552 = fmul fast float %1550, %1550
  %1553 = fmul fast float %1552, %1551
  %1554 = fsub fast float 1.500000e+00, %1553
  %1555 = fmul fast float %1550, %1453
  %1556 = fmul fast float %1555, %1554
  %1557 = fsub fast float %1536, %1518
  %1558 = fsub fast float %1546, %1522
  %1559 = fsub fast float %1556, %1526
  %1560 = fmul fast float %1557, %1486
  %1561 = fmul fast float %1558, %1488
  %1562 = fmul fast float %1559, %1493
  %1563 = fadd fast float %1560, %1501
  %1564 = fadd fast float %1561, %1505
  %1565 = fadd fast float %1562, %1509
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1568 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1569 = fmul fast float %1566, %1566
  %1570 = fmul fast float %1567, %1567
  %1571 = fmul fast float %1568, %1568
  %1572 = fsub fast float %1569, %1451
  %1573 = fsub fast float %1570, %1452
  %1574 = fsub fast float %1571, %1453
  %1575 = fmul fast float %1572, %1476
  %1576 = fmul fast float %1573, %1476
  %1577 = fmul fast float %1574, %1476
  %1578 = fadd fast float %1575, %1451
  %1579 = fadd fast float %1576, %1452
  %1580 = fadd fast float %1577, %1453
  %1581 = fadd fast float %1498, %1462
  %1582 = fsub fast float %1581, %1515
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1584 = fsub fast float %1583, %1462
  %1585 = fmul fast float %1584, %1476
  %1586 = fadd fast float %1585, %1462
  br label %1640

; <label>:1587                                    ; preds = %1475
  %1588 = and i32 %1478, 134217728
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1624, label %1590

; <label>:1590                                    ; preds = %1587
  %1591 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1592 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1593 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1594 = fadd fast float %1591, -5.000000e-01
  %1595 = fadd fast float %1592, -5.000000e-01
  %1596 = fadd fast float %1593, -5.000000e-01
  %1597 = fmul fast float %1594, %1476
  %1598 = fmul fast float %1595, %1476
  %1599 = fmul fast float %1596, %1476
  %1600 = fadd fast float %1597, 5.000000e-01
  %1601 = fadd fast float %1598, 5.000000e-01
  %1602 = fadd fast float %1599, 5.000000e-01
  %1603 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1606 = fmul fast float %1600, 2.000000e+00
  %1607 = fsub fast float 1.000000e+00, %1606
  %1608 = fmul fast float %1607, %1603
  %1609 = fadd fast float %1608, %1606
  %1610 = fmul fast float %1609, %1603
  %1611 = fmul fast float %1601, 2.000000e+00
  %1612 = fsub fast float 1.000000e+00, %1611
  %1613 = fmul fast float %1612, %1604
  %1614 = fadd fast float %1613, %1611
  %1615 = fmul fast float %1614, %1604
  %1616 = fmul fast float %1602, 2.000000e+00
  %1617 = fsub fast float 1.000000e+00, %1616
  %1618 = fmul fast float %1617, %1605
  %1619 = fadd fast float %1618, %1616
  %1620 = fmul fast float %1619, %1605
  %1621 = fmul fast float %1610, %1610
  %1622 = fmul fast float %1615, %1615
  %1623 = fmul fast float %1620, %1620
  br label %1640

; <label>:1624                                    ; preds = %1587
  %1625 = fmul fast float %295, %295
  %1626 = fmul fast float %299, %299
  %1627 = fmul fast float %303, %303
  %1628 = fadd fast float %1625, -1.000000e+00
  %1629 = fadd fast float %1626, -1.000000e+00
  %1630 = fadd fast float %1627, -1.000000e+00
  %1631 = fmul fast float %1476, %1628
  %1632 = fmul fast float %1476, %1629
  %1633 = fmul fast float %1476, %1630
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fadd fast float %1632, 1.000000e+00
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fmul fast float %1634, %1451
  %1638 = fmul fast float %1635, %1452
  %1639 = fmul fast float %1636, %1453
  br label %1640

; <label>:1640                                    ; preds = %1624, %1590, %1481, %1437
  %1641 = phi float [ %1586, %1481 ], [ %1462, %1590 ], [ %1462, %1624 ], [ 0x3FA23C0BE0000000, %1437 ]
  %1642 = phi float [ %1578, %1481 ], [ %1621, %1590 ], [ %1637, %1624 ], [ 1.000000e+00, %1437 ]
  %1643 = phi float [ %1579, %1481 ], [ %1622, %1590 ], [ %1638, %1624 ], [ 1.000000e+00, %1437 ]
  %1644 = phi float [ %1580, %1481 ], [ %1623, %1590 ], [ %1639, %1624 ], [ 1.000000e+00, %1437 ]
  %1645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.i32 %1645, 1
  %1647 = and i32 %1646, 1
  %1648 = icmp ne i32 %1647, 0
  %1649 = add i32 %56, 356
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 32
  %1653 = icmp ne i32 %1652, 0
  %1654 = and i1 %1648, %1653
  %1655 = select i1 %1654, float 1.000000e+00, float %1642
  %1656 = select i1 %1654, float 0x3FD3333340000000, float %1643
  %1657 = select i1 %1654, float 0x3FD3333340000000, float %1644
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 32
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1734, label %1662

; <label>:1662                                    ; preds = %1640
  %1663 = add i32 %56, 108
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = add i32 %56, 428
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = add i32 %1668, 0
  %1670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1670, %dx.types.Handle %99, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = extractvalue %dx.types.ResRet.f32 %1671, 3
  %1676 = and i32 %1665, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = lshr i32 %1665, 8
  %1679 = and i32 %1678, 255
  %1680 = uitofp i32 %1679 to float
  %1681 = lshr i32 %1665, 16
  %1682 = and i32 %1681, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = fmul fast float %1683, 0x3F70101000000000
  %1685 = fmul fast float %1672, %1677
  %1686 = fadd fast float %1685, %1680
  %1687 = fmul fast float %1686, 0x3F70101000000000
  %1688 = fadd fast float %1673, -5.000000e-01
  %1689 = fadd fast float %1675, -5.000000e-01
  %1690 = fmul fast float %1688, %1684
  %1691 = fmul fast float %1689, %1684
  %1692 = fadd fast float %1690, 5.000000e-01
  %1693 = fadd fast float %1691, 5.000000e-01
  %1694 = fmul fast float %1692, 2.000000e+00
  %1695 = fadd fast float %1694, -1.000000e+00
  %1696 = fmul fast float %1693, 2.000000e+00
  %1697 = fadd fast float %1696, -1.000000e+00
  %1698 = fadd fast float %1695, %1697
  %1699 = fmul fast float %1698, 5.000000e-01
  %1700 = fsub fast float %1695, %1697
  %1701 = fmul fast float %1700, 5.000000e-01
  %1702 = call float @dx.op.unary.f32(i32 6, float %1699)  ; FAbs(value)
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = call float @dx.op.unary.f32(i32 6, float %1701)  ; FAbs(value)
  %1705 = fsub fast float %1703, %1704
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1699, float %1701, float %1705, float %1699, float %1701, float %1705)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = call float @dx.op.unary.f32(i32 25, float %1706)  ; Rsqrt(value)
  %1708 = fmul fast float %1699, %1707
  %1709 = fmul fast float %1701, %1707
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = and i32 %1711, 67108864
  %1713 = icmp eq i32 %1712, 0
  br i1 %1713, label %1730, label %1714

; <label>:1714                                    ; preds = %1662
  %1715 = add i32 %56, 296
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 65535
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 65535
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = lshr i32 %1717, 16
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = fsub fast float %1687, %1725
  %1727 = fmul fast float %1726, %1719
  %1728 = fadd fast float %1727, %1723
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  br label %1730

; <label>:1730                                    ; preds = %1714, %1662
  %1731 = phi float [ %1729, %1714 ], [ %1687, %1662 ]
  %1732 = call float @dx.op.dot2.f32(i32 54, float %1708, float %1709, float %1151, float %1152)  ; Dot2(ax,ay,bx,by)
  %1733 = call float @dx.op.dot2.f32(i32 54, float %1708, float %1709, float %1153, float %1154)  ; Dot2(ax,ay,bx,by)
  br label %1734

; <label>:1734                                    ; preds = %1730, %1640
  %1735 = phi float [ %1731, %1730 ], [ 0x3FD6666660000000, %1640 ]
  %1736 = phi float [ %1732, %1730 ], [ 0.000000e+00, %1640 ]
  %1737 = phi float [ %1733, %1730 ], [ 0.000000e+00, %1640 ]
  %1738 = phi float [ %1674, %1730 ], [ 1.000000e+00, %1640 ]
  %1739 = add i32 %56, 176
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 22
  %1743 = shl nuw nsw i32 %1742, 5
  %1744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1743)  ; LegacyF16ToF32(value)
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 64
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1782, label %1749

; <label>:1749                                    ; preds = %1734
  %1750 = add i32 %56, 444
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 131072
  %1758 = icmp eq i32 %1757, 0
  %1759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %99, float %1247, float %1248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.ResRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.ResRet.f32 %1759, 2
  %1763 = fmul fast float %1760, %283
  %1764 = fmul fast float %1761, %286
  %1765 = fmul fast float %1762, %289
  br i1 %1758, label %1772, label %1766

; <label>:1766                                    ; preds = %1749
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = fmul fast float %1768, %1763
  %1770 = fmul fast float %1768, %1764
  %1771 = fmul fast float %1768, %1765
  br label %1772

; <label>:1772                                    ; preds = %1766, %1749
  %1773 = phi float [ %1769, %1766 ], [ %1763, %1749 ]
  %1774 = phi float [ %1770, %1766 ], [ %1764, %1749 ]
  %1775 = phi float [ %1771, %1766 ], [ %1765, %1749 ]
  %1776 = fmul fast float %1773, %1744
  %1777 = select i1 %224, float %1776, float %1773
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1777, float %1774, float %1775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = select i1 %224, float 0.000000e+00, float %1773
  %1780 = select i1 %224, float %1778, float %1774
  %1781 = select i1 %224, float 0.000000e+00, float %1775
  br label %1782

; <label>:1782                                    ; preds = %1772, %1734
  %1783 = phi float [ %1779, %1772 ], [ 0.000000e+00, %1734 ]
  %1784 = phi float [ %1780, %1772 ], [ 0.000000e+00, %1734 ]
  %1785 = phi float [ %1781, %1772 ], [ 0.000000e+00, %1734 ]
  %1786 = add i32 %56, 112
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = and i32 %1788, 255
  %1790 = uitofp i32 %1789 to float
  %1791 = lshr i32 %1788, 8
  %1792 = and i32 %1791, 255
  %1793 = uitofp i32 %1792 to float
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1655, float %1656, float %1657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = fmul fast float %1793, %1794
  %1796 = fadd fast float %1795, %1790
  %1797 = fmul fast float %1796, 0x3F70101020000000
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  br i1 %1139, label %1799, label %1807

; <label>:1799                                    ; preds = %1782
  %1800 = fsub fast float 1.000000e+00, %1435
  %1801 = fmul fast float %1800, %1127
  %1802 = fmul fast float %1800, %1128
  %1803 = fmul fast float %1800, %1129
  %1804 = fmul fast float %1800, %1130
  %1805 = fmul fast float %1800, %1131
  %1806 = fmul fast float %1800, %1132
  br label %1807

; <label>:1807                                    ; preds = %1799, %1782
  %1808 = phi float [ %1801, %1799 ], [ %1127, %1782 ]
  %1809 = phi float [ %1802, %1799 ], [ %1128, %1782 ]
  %1810 = phi float [ %1803, %1799 ], [ %1129, %1782 ]
  %1811 = phi float [ %1804, %1799 ], [ %1130, %1782 ]
  %1812 = phi float [ %1805, %1799 ], [ %1131, %1782 ]
  %1813 = phi float [ %1806, %1799 ], [ %1132, %1782 ]
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 3
  %1817 = icmp eq i32 %1816, 3
  br i1 %1817, label %1896, label %1818

; <label>:1818                                    ; preds = %1807
  %1819 = and i32 %1815, 16
  %1820 = icmp ne i32 %1819, 0
  %1821 = select i1 %1820, float %1435, float 0.000000e+00
  %1822 = icmp eq i32 %1816, 0
  br i1 %1822, label %1823, label %1851

; <label>:1823                                    ; preds = %1818
  %1824 = and i32 %1815, 64
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %1435, float 0.000000e+00
  %1827 = fsub fast float %1655, %1808
  %1828 = fsub fast float %1656, %1809
  %1829 = fsub fast float %1657, %1810
  %1830 = fmul fast float %1821, %1827
  %1831 = fmul fast float %1821, %1828
  %1832 = fmul fast float %1821, %1829
  %1833 = fadd fast float %1830, %1808
  %1834 = fadd fast float %1831, %1809
  %1835 = fadd fast float %1832, %1810
  %1836 = fsub fast float %1641, %1133
  %1837 = fmul fast float %1821, %1836
  %1838 = fadd fast float %1837, %1133
  %1839 = fsub fast float %1783, %1811
  %1840 = fsub fast float %1784, %1812
  %1841 = fsub fast float %1785, %1813
  %1842 = fmul fast float %1826, %1839
  %1843 = fmul fast float %1826, %1840
  %1844 = fmul fast float %1826, %1841
  %1845 = fadd fast float %1842, %1811
  %1846 = fadd fast float %1843, %1812
  %1847 = fadd fast float %1844, %1813
  %1848 = fsub fast float %1798, %1137
  %1849 = fmul fast float %1821, %1848
  %1850 = fadd fast float %1849, %1137
  br label %1896

; <label>:1851                                    ; preds = %1818
  %1852 = icmp eq i32 %1816, 1
  br i1 %1852, label %1853, label %1866

; <label>:1853                                    ; preds = %1851
  %1854 = fadd fast float %1655, -1.000000e+00
  %1855 = fadd fast float %1656, -1.000000e+00
  %1856 = fadd fast float %1657, -1.000000e+00
  %1857 = fmul fast float %1821, %1854
  %1858 = fmul fast float %1821, %1855
  %1859 = fmul fast float %1821, %1856
  %1860 = fadd fast float %1857, 1.000000e+00
  %1861 = fadd fast float %1858, 1.000000e+00
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fmul fast float %1860, %1808
  %1864 = fmul fast float %1861, %1809
  %1865 = fmul fast float %1862, %1810
  br label %1896

; <label>:1866                                    ; preds = %1851
  %1867 = icmp eq i32 %1816, 2
  br i1 %1867, label %1868, label %1896

; <label>:1868                                    ; preds = %1866
  %1869 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1870 = call float @dx.op.unary.f32(i32 24, float %1656)  ; Sqrt(value)
  %1871 = call float @dx.op.unary.f32(i32 24, float %1657)  ; Sqrt(value)
  %1872 = fadd fast float %1869, -5.000000e-01
  %1873 = fadd fast float %1870, -5.000000e-01
  %1874 = fadd fast float %1871, -5.000000e-01
  %1875 = fmul fast float %1872, %1821
  %1876 = fmul fast float %1873, %1821
  %1877 = fmul fast float %1874, %1821
  %1878 = fadd fast float %1875, 5.000000e-01
  %1879 = fadd fast float %1876, 5.000000e-01
  %1880 = fadd fast float %1877, 5.000000e-01
  %1881 = fmul fast float %1878, 2.000000e+00
  %1882 = fsub fast float 1.000000e+00, %1881
  %1883 = fmul fast float %1882, %1808
  %1884 = fadd fast float %1883, %1881
  %1885 = fmul fast float %1884, %1808
  %1886 = fmul fast float %1879, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1809
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1809
  %1891 = fmul fast float %1880, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1810
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1810
  br label %1896

; <label>:1896                                    ; preds = %1868, %1866, %1853, %1823, %1807
  %1897 = phi float [ %1808, %1807 ], [ %1885, %1868 ], [ %1808, %1866 ], [ %1863, %1853 ], [ %1833, %1823 ]
  %1898 = phi float [ %1809, %1807 ], [ %1890, %1868 ], [ %1809, %1866 ], [ %1864, %1853 ], [ %1834, %1823 ]
  %1899 = phi float [ %1810, %1807 ], [ %1895, %1868 ], [ %1810, %1866 ], [ %1865, %1853 ], [ %1835, %1823 ]
  %1900 = phi float [ %1811, %1807 ], [ %1811, %1868 ], [ %1811, %1866 ], [ %1811, %1853 ], [ %1845, %1823 ]
  %1901 = phi float [ %1812, %1807 ], [ %1812, %1868 ], [ %1812, %1866 ], [ %1812, %1853 ], [ %1846, %1823 ]
  %1902 = phi float [ %1813, %1807 ], [ %1813, %1868 ], [ %1813, %1866 ], [ %1813, %1853 ], [ %1847, %1823 ]
  %1903 = phi float [ %1133, %1807 ], [ %1133, %1868 ], [ %1133, %1866 ], [ %1133, %1853 ], [ %1838, %1823 ]
  %1904 = phi float [ %1137, %1807 ], [ %1137, %1868 ], [ %1137, %1866 ], [ %1137, %1853 ], [ %1850, %1823 ]
  %1905 = and i32 %1815, 12
  %1906 = icmp eq i32 %1905, 12
  br i1 %1906, label %1979, label %1907

; <label>:1907                                    ; preds = %1896
  %1908 = and i32 %1815, 2097184
  %1909 = icmp eq i32 %1908, 2097184
  %1910 = select i1 %1909, float %1435, float 0.000000e+00
  %1911 = and i32 %1815, 4194336
  %1912 = icmp eq i32 %1911, 4194336
  %1913 = select i1 %1912, float %1435, float 0.000000e+00
  %1914 = and i32 %1815, 8388640
  %1915 = icmp eq i32 %1914, 8388640
  %1916 = select i1 %1915, float %1435, float 0.000000e+00
  %1917 = icmp eq i32 %1905, 0
  br i1 %1917, label %1918, label %1931

; <label>:1918                                    ; preds = %1907
  %1919 = fsub fast float %1736, %1125
  %1920 = fsub fast float %1737, %1126
  %1921 = fmul fast float %1910, %1919
  %1922 = fmul fast float %1910, %1920
  %1923 = fadd fast float %1921, %1125
  %1924 = fadd fast float %1922, %1126
  %1925 = fsub fast float %1738, %1136
  %1926 = fmul fast float %1913, %1925
  %1927 = fadd fast float %1926, %1136
  %1928 = fsub fast float %1735, %1135
  %1929 = fmul fast float %1916, %1928
  %1930 = fadd fast float %1929, %1135
  br label %1979

; <label>:1931                                    ; preds = %1907
  %1932 = icmp eq i32 %1905, 4
  br i1 %1932, label %1933, label %1965

; <label>:1933                                    ; preds = %1931
  %1934 = fmul fast float %1910, %1736
  %1935 = fmul fast float %1910, %1737
  %1936 = fadd fast float %1934, %1125
  %1937 = fadd fast float %1935, %1126
  %1938 = call float @dx.op.binary.f32(i32 36, float %1136, float %1738)  ; FMin(a,b)
  %1939 = fsub fast float %1938, %1136
  %1940 = fmul fast float %1939, %1913
  %1941 = fadd fast float %1940, %1136
  %1942 = fadd fast float %1735, %1135
  %1943 = fmul fast float %1942, 0x3FF337FAE0000000
  %1944 = fmul fast float %1135, %1135
  %1945 = fmul fast float %1735, %1735
  %1946 = fadd fast float %1945, %1944
  %1947 = fmul fast float %1946, 0x3FE5152B00000000
  %1948 = fmul fast float %1135, 0xBFCC1F85E0000000
  %1949 = fmul fast float %1948, %1735
  %1950 = fadd fast float %1949, 0xBFE1363700000000
  %1951 = fadd fast float %1950, %1943
  %1952 = fsub fast float %1951, %1947
  %1953 = fmul fast float %1942, 0x3FBA6F0D00000000
  %1954 = fmul fast float %1946, 0x3FD0432880000000
  %1955 = fmul fast float %1135, 0xBFEF110800000000
  %1956 = fmul fast float %1955, %1735
  %1957 = fadd fast float %1956, 1.000000e+00
  %1958 = fsub fast float %1957, %1953
  %1959 = fadd fast float %1958, %1954
  %1960 = fdiv fast float %1952, %1959
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fsub fast float %1961, %1135
  %1963 = fmul fast float %1962, %1916
  %1964 = fadd fast float %1963, %1135
  br label %1979

; <label>:1965                                    ; preds = %1931
  %1966 = icmp eq i32 %1905, 8
  br i1 %1966, label %1967, label %1979

; <label>:1967                                    ; preds = %1965
  %1968 = fmul fast float %1910, %1736
  %1969 = fmul fast float %1910, %1737
  %1970 = fadd fast float %1968, %1125
  %1971 = fadd fast float %1969, %1126
  %1972 = call float @dx.op.binary.f32(i32 36, float %1136, float %1738)  ; FMin(a,b)
  %1973 = fsub fast float %1972, %1136
  %1974 = fmul fast float %1973, %1913
  %1975 = fadd fast float %1974, %1136
  %1976 = fsub fast float %1735, %1135
  %1977 = fmul fast float %1916, %1976
  %1978 = fadd fast float %1977, %1135
  br label %1979

; <label>:1979                                    ; preds = %1967, %1965, %1933, %1918, %1896, %1434, %1138, %1124
  %1980 = phi float [ %1125, %1896 ], [ %1125, %1434 ], [ %1125, %1124 ], [ %1970, %1967 ], [ %1125, %1965 ], [ %1936, %1933 ], [ %1923, %1918 ], [ %1125, %1138 ]
  %1981 = phi float [ %1126, %1896 ], [ %1126, %1434 ], [ %1126, %1124 ], [ %1971, %1967 ], [ %1126, %1965 ], [ %1937, %1933 ], [ %1924, %1918 ], [ %1126, %1138 ]
  %1982 = phi float [ %1897, %1896 ], [ %1127, %1434 ], [ %1127, %1124 ], [ %1897, %1967 ], [ %1897, %1965 ], [ %1897, %1933 ], [ %1897, %1918 ], [ %1127, %1138 ]
  %1983 = phi float [ %1898, %1896 ], [ %1128, %1434 ], [ %1128, %1124 ], [ %1898, %1967 ], [ %1898, %1965 ], [ %1898, %1933 ], [ %1898, %1918 ], [ %1128, %1138 ]
  %1984 = phi float [ %1899, %1896 ], [ %1129, %1434 ], [ %1129, %1124 ], [ %1899, %1967 ], [ %1899, %1965 ], [ %1899, %1933 ], [ %1899, %1918 ], [ %1129, %1138 ]
  %1985 = phi float [ %1900, %1896 ], [ %1130, %1434 ], [ %1130, %1124 ], [ %1900, %1967 ], [ %1900, %1965 ], [ %1900, %1933 ], [ %1900, %1918 ], [ %1130, %1138 ]
  %1986 = phi float [ %1901, %1896 ], [ %1131, %1434 ], [ %1131, %1124 ], [ %1901, %1967 ], [ %1901, %1965 ], [ %1901, %1933 ], [ %1901, %1918 ], [ %1131, %1138 ]
  %1987 = phi float [ %1902, %1896 ], [ %1132, %1434 ], [ %1132, %1124 ], [ %1902, %1967 ], [ %1902, %1965 ], [ %1902, %1933 ], [ %1902, %1918 ], [ %1132, %1138 ]
  %1988 = phi float [ %1903, %1896 ], [ %1133, %1434 ], [ %1133, %1124 ], [ %1903, %1967 ], [ %1903, %1965 ], [ %1903, %1933 ], [ %1903, %1918 ], [ %1133, %1138 ]
  %1989 = phi float [ %1135, %1896 ], [ %1135, %1434 ], [ %1135, %1124 ], [ %1978, %1967 ], [ %1135, %1965 ], [ %1964, %1933 ], [ %1930, %1918 ], [ %1135, %1138 ]
  %1990 = phi float [ %1136, %1896 ], [ %1136, %1434 ], [ %1136, %1124 ], [ %1975, %1967 ], [ %1136, %1965 ], [ %1941, %1933 ], [ %1927, %1918 ], [ %1136, %1138 ]
  %1991 = phi float [ %1904, %1896 ], [ %1137, %1434 ], [ %1137, %1124 ], [ %1904, %1967 ], [ %1904, %1965 ], [ %1904, %1933 ], [ %1904, %1918 ], [ %1137, %1138 ]
  br i1 %410, label %2833, label %1992

; <label>:1992                                    ; preds = %1979
  %1993 = icmp ult i32 %466, 3
  %1994 = add i32 %56, 56
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = add i32 %56, 60
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = or i32 %1999, %1996
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2833, label %2002

; <label>:2002                                    ; preds = %1992
  %2003 = and i32 %1996, 262144
  %2004 = icmp ne i32 %2003, 0
  %2005 = select i1 %2004, float %60, float 1.000000e+00
  %2006 = select i1 %2004, float %61, float 0.000000e+00
  %2007 = select i1 %2004, float %62, float 0.000000e+00
  %2008 = select i1 %2004, float %63, float 1.000000e+00
  %2009 = select i1 %2004, float %64, float %85
  %2010 = select i1 %2004, float %65, float %86
  %2011 = add i32 %56, 316
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 16
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = fmul fast float %2015, 0x3F50624DE0000000
  %2017 = add i32 %56, 120
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = lshr i32 %2019, 16
  %2021 = and i32 %2020, 255
  %2022 = lshr i32 %2019, 24
  %2023 = add i32 %56, 324
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 65535
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = lshr i32 %2025, 16
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = add i32 %56, 64
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = lshr i32 %2032, 22
  %2034 = shl nuw nsw i32 %2033, 5
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = shl i32 %2032, 4
  %2037 = and i32 %2036, 32752
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = lshr i32 %2032, 7
  %2040 = and i32 %2039, 32752
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 3
  %2044 = fmul fast float %2043, 1.000000e+03
  %2045 = fmul fast float %360, %2044
  %2046 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2047 = fadd fast float %2046, %350
  %2048 = fmul fast float %361, %2044
  %2049 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2050 = fadd fast float %2049, %352
  %2051 = fmul fast float %2016, %2044
  %2052 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2053 = fmul fast float %2052, 0x401921FB60000000
  %2054 = fadd fast float %2053, %2035
  %2055 = call float @dx.op.unary.f32(i32 13, float %2054)  ; Sin(value)
  %2056 = call float @dx.op.unary.f32(i32 12, float %2054)  ; Cos(value)
  %2057 = fsub fast float -0.000000e+00, %2055
  %2058 = fadd fast float %2009, -5.000000e-01
  %2059 = fadd fast float %2010, -5.000000e-01
  %2060 = fmul fast float %2027, %2058
  %2061 = fmul fast float %2029, %2059
  %2062 = fadd fast float %2060, 5.000000e-01
  %2063 = fadd fast float %2061, 5.000000e-01
  %2064 = fmul fast float %2038, %2062
  %2065 = fmul fast float %2041, %2063
  %2066 = fmul fast float %2056, %2064
  %2067 = call float @dx.op.tertiary.f32(i32 46, float %2057, float %2065, float %2066)  ; FMad(a,b,c)
  %2068 = fmul fast float %2055, %2064
  %2069 = call float @dx.op.tertiary.f32(i32 46, float %2056, float %2065, float %2068)  ; FMad(a,b,c)
  %2070 = fadd fast float %2047, %2067
  %2071 = fadd fast float %2050, %2069
  %2072 = icmp ugt i32 %2021, 1
  %2073 = icmp ugt i32 %2019, 33554431
  %2074 = or i1 %2073, %2072
  br i1 %2074, label %2075, label %2100

; <label>:2075                                    ; preds = %2002
  %2076 = add i32 %56, 260
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = lshr i32 %2078, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = fmul fast float %2043, %2080
  %2082 = call float @dx.op.unary.f32(i32 22, float %2081)  ; Frc(value)
  %2083 = mul nuw nsw i32 %2021, %2022
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2082, %2084
  %2086 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2087 = fptoui float %2086 to i32
  %2088 = urem i32 %2087, %2021
  %2089 = udiv i32 %2087, %2022
  %2090 = call float @dx.op.unary.f32(i32 22, float %2070)  ; Frc(value)
  %2091 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2092 = uitofp i32 %2088 to float
  %2093 = uitofp i32 %2089 to float
  %2094 = fadd fast float %2090, %2092
  %2095 = fadd fast float %2091, %2093
  %2096 = uitofp i32 %2021 to float
  %2097 = uitofp i32 %2022 to float
  %2098 = fdiv fast float %2094, %2096
  %2099 = fdiv fast float %2095, %2097
  br label %2100

; <label>:2100                                    ; preds = %2075, %2002
  %2101 = phi float [ %2098, %2075 ], [ %2070, %2002 ]
  %2102 = phi float [ %2099, %2075 ], [ %2071, %2002 ]
  %2103 = and i32 %1996, 16777216
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2214, label %2105

; <label>:2105                                    ; preds = %2100
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = fadd fast float %2107, %162
  %2111 = fadd fast float %2108, %163
  %2112 = fadd fast float %2109, %164
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = icmp eq i32 %57, 65535
  br i1 %2116, label %2211, label %2117

; <label>:2117                                    ; preds = %2105
  %2118 = lshr i32 %57, 1
  %2119 = shl i32 %2118, 2
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %57, 1
  %2123 = icmp ne i32 %2122, 0
  %2124 = lshr i32 %2121, 16
  %2125 = and i32 %2121, 65535
  %2126 = select i1 %2123, i32 %2124, i32 %2125
  %2127 = icmp eq i32 %2126, 65535
  br i1 %2127, label %2207, label %2128

; <label>:2128                                    ; preds = %2117
  %2129 = mul nuw nsw i32 %2126, 40
  %2130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = add nuw nsw i32 %2129, 12
  %2135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = add nuw nsw i32 %2129, 24
  %2140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.ResRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.ResRet.f32 %2140, 2
  %2144 = add nuw nsw i32 %2129, 36
  %2145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = fsub fast float %2110, %2131
  %2148 = fsub fast float %2111, %2132
  %2149 = fsub fast float %2112, %2133
  %2150 = fmul fast float %2146, %2147
  %2151 = fmul fast float %2146, %2148
  %2152 = fmul fast float %2146, %2149
  %2153 = call float @dx.op.unary.f32(i32 27, float %2150)  ; Round_ni(value)
  %2154 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2155 = call float @dx.op.unary.f32(i32 27, float %2152)  ; Round_ni(value)
  %2156 = fadd fast float %2153, 5.000000e-01
  %2157 = fadd fast float %2154, 5.000000e-01
  %2158 = fadd fast float %2155, 5.000000e-01
  %2159 = fmul fast float %2156, %2136
  %2160 = fmul fast float %2157, %2137
  %2161 = fmul fast float %2158, %2138
  %2162 = shl i32 %57, 2
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2168 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2169 = call float @dx.op.unary.f32(i32 22, float %2161)  ; Frc(value)
  %2170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2166, %dx.types.Handle %49, float %2167, float %2168, float %2169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = fmul fast float %2171, 1.023000e+03
  %2175 = fmul fast float %2172, 1.023000e+03
  %2176 = fmul fast float %2173, 1.023000e+03
  %2177 = fadd fast float %2174, 5.000000e-01
  %2178 = fadd fast float %2175, 5.000000e-01
  %2179 = fadd fast float %2176, 5.000000e-01
  %2180 = call float @dx.op.unary.f32(i32 27, float %2177)  ; Round_ni(value)
  %2181 = call float @dx.op.unary.f32(i32 27, float %2178)  ; Round_ni(value)
  %2182 = call float @dx.op.unary.f32(i32 27, float %2179)  ; Round_ni(value)
  %2183 = fsub fast float %2150, %2153
  %2184 = fsub fast float %2151, %2154
  %2185 = fsub fast float %2152, %2155
  %2186 = fmul fast float %2183, 7.500000e-01
  %2187 = fmul fast float %2184, 7.500000e-01
  %2188 = fmul fast float %2185, 7.500000e-01
  %2189 = fadd fast float %2153, 1.250000e-01
  %2190 = fadd fast float %2189, %2186
  %2191 = fadd fast float %2190, %2180
  %2192 = fadd fast float %2154, 1.250000e-01
  %2193 = fadd fast float %2192, %2187
  %2194 = fadd fast float %2193, %2181
  %2195 = fadd fast float %2155, 1.250000e-01
  %2196 = fadd fast float %2195, %2188
  %2197 = fadd fast float %2196, %2182
  %2198 = fmul fast float %2191, %2141
  %2199 = fmul fast float %2194, %2142
  %2200 = fmul fast float %2197, %2143
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %2202, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2204, %dx.types.Handle %47, float %2198, float %2199, float %2200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  br label %2207

; <label>:2207                                    ; preds = %2128, %2117
  %2208 = phi float [ %2206, %2128 ], [ -1.000000e+00, %2117 ]
  %2209 = fadd fast float %2208, %2115
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  br label %2211

; <label>:2211                                    ; preds = %2207, %2105
  %2212 = phi float [ %2210, %2207 ], [ %2115, %2105 ]
  %2213 = fmul fast float %2212, %462
  br label %2214

; <label>:2214                                    ; preds = %2211, %2100
  %2215 = phi float [ %2213, %2211 ], [ %462, %2100 ]
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 256
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2266, label %2220

; <label>:2220                                    ; preds = %2214
  %2221 = add i32 %56, 480
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %2223, 0
  %2225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2225, %dx.types.Handle %100, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = add i32 %56, 132
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = shl i32 %2230, 4
  %2232 = and i32 %2231, 32752
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2230, 7
  %2235 = and i32 %2234, 32752
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fsub fast float 1.000000e+00, %2215
  %2238 = call float @dx.op.binary.f32(i32 35, float %2237, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2239 = bitcast float %2215 to i32
  %2240 = sitofp i32 %2239 to float
  %2241 = fadd fast float %2240, 0xC1CFBF8940000000
  %2242 = fmul fast float %2236, %2241
  %2243 = fadd fast float %2242, 0x41CFBF8940000000
  %2244 = fptosi float %2243 to i32
  %2245 = bitcast i32 %2244 to float
  %2246 = bitcast float %2238 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fadd fast float %2247, 0xC1CFBF8940000000
  %2249 = fmul fast float %2248, %2236
  %2250 = fadd fast float %2249, 0x41CFBF8940000000
  %2251 = fptosi float %2250 to i32
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2245, %2233
  %2254 = fmul fast float %2252, %2233
  %2255 = fsub fast float %2238, %2253
  %2256 = fadd fast float %2254, %2238
  %2257 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2259 = fsub fast float %2227, %2257
  %2260 = fsub fast float %2258, %2257
  %2261 = bitcast float %2260 to i32
  %2262 = sub nsw i32 2129859010, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2263, %2259
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  br label %2266

; <label>:2266                                    ; preds = %2220, %2214
  %2267 = phi float [ %2265, %2220 ], [ %2215, %2214 ]
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 128
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2288, label %2272

; <label>:2272                                    ; preds = %2266
  %2273 = add i32 %56, 464
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %2275, 0
  %2277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2277, %dx.types.Handle %100, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 524288
  %2283 = icmp ne i32 %2282, 0
  %2284 = fcmp fast ogt float %2279, 0x3FE0101020000000
  %2285 = select i1 %2284, float 1.000000e+00, float 0.000000e+00
  %2286 = select i1 %2283, float %2285, float %2279
  %2287 = fmul fast float %2286, %2267
  br label %2288

; <label>:2288                                    ; preds = %2272, %2266
  %2289 = phi float [ %2287, %2272 ], [ %2267, %2266 ]
  %2290 = fcmp fast ult float %2289, 0x3F70101020000000
  br i1 %2290, label %2833, label %2291

; <label>:2291                                    ; preds = %2288
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = and i32 %2293, 16
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2494, label %2296

; <label>:2296                                    ; preds = %2291
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = add i32 %56, 416
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = add i32 %2301, 0
  %2303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2303, %dx.types.Handle %99, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = and i32 %2298, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = lshr i32 %2298, 8
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2308, %2310
  %2315 = fadd fast float %2314, %2313
  %2316 = fmul fast float %2315, 0x3F70101000000000
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 512
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2329, label %2321

; <label>:2321                                    ; preds = %2296
  %2322 = add i32 %56, 500
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = add i32 %2324, 0
  %2326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2326, %dx.types.Handle %100, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  br label %2329

; <label>:2329                                    ; preds = %2321, %2296
  %2330 = phi float [ %2328, %2321 ], [ 1.000000e+00, %2296 ]
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 33554432
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2441, label %2335

; <label>:2335                                    ; preds = %2329
  %2336 = add i32 %56, 256
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 65535
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = lshr i32 %2338, 16
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = add i32 %56, 260
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = lshr i32 %2349, 24
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101020000000
  %2353 = and i32 %2349, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2349, 8
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = lshr i32 %2349, 16
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2362, 0x3F70101020000000
  %2364 = add i32 %56, 252
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = lshr i32 %2366, 24
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = and i32 %2366, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = lshr i32 %2366, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2366, 16
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = bitcast float %2305 to i32
  %2382 = ashr i32 %2381, 1
  %2383 = sub nsw i32 1597463174, %2382
  %2384 = bitcast i32 %2383 to float
  %2385 = fmul fast float %2305, 5.000000e-01
  %2386 = fmul fast float %2384, %2384
  %2387 = fmul fast float %2386, %2385
  %2388 = fsub fast float 1.500000e+00, %2387
  %2389 = fmul fast float %2384, %2305
  %2390 = fmul fast float %2389, %2388
  %2391 = bitcast float %2306 to i32
  %2392 = ashr i32 %2391, 1
  %2393 = sub nsw i32 1597463174, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = fmul fast float %2306, 5.000000e-01
  %2396 = fmul fast float %2394, %2394
  %2397 = fmul fast float %2396, %2395
  %2398 = fsub fast float 1.500000e+00, %2397
  %2399 = fmul fast float %2394, %2306
  %2400 = fmul fast float %2399, %2398
  %2401 = bitcast float %2307 to i32
  %2402 = ashr i32 %2401, 1
  %2403 = sub nsw i32 1597463174, %2402
  %2404 = bitcast i32 %2403 to float
  %2405 = fmul fast float %2307, 5.000000e-01
  %2406 = fmul fast float %2404, %2404
  %2407 = fmul fast float %2406, %2405
  %2408 = fsub fast float 1.500000e+00, %2407
  %2409 = fmul fast float %2404, %2307
  %2410 = fmul fast float %2409, %2408
  %2411 = fsub fast float %2390, %2372
  %2412 = fsub fast float %2400, %2376
  %2413 = fsub fast float %2410, %2380
  %2414 = fmul fast float %2411, %2340
  %2415 = fmul fast float %2412, %2342
  %2416 = fmul fast float %2413, %2347
  %2417 = fadd fast float %2414, %2355
  %2418 = fadd fast float %2415, %2359
  %2419 = fadd fast float %2416, %2363
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2421, %2421
  %2425 = fmul fast float %2422, %2422
  %2426 = fsub fast float %2423, %2305
  %2427 = fsub fast float %2424, %2306
  %2428 = fsub fast float %2425, %2307
  %2429 = fmul fast float %2426, %2330
  %2430 = fmul fast float %2427, %2330
  %2431 = fmul fast float %2428, %2330
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2431, %2307
  %2435 = fadd fast float %2352, %2316
  %2436 = fsub fast float %2435, %2369
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = fsub fast float %2437, %2316
  %2439 = fmul fast float %2438, %2330
  %2440 = fadd fast float %2439, %2316
  br label %2494

; <label>:2441                                    ; preds = %2329
  %2442 = and i32 %2332, 134217728
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2478, label %2444

; <label>:2444                                    ; preds = %2441
  %2445 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2446 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2447 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fadd fast float %2447, -5.000000e-01
  %2451 = fmul fast float %2448, %2330
  %2452 = fmul fast float %2449, %2330
  %2453 = fmul fast float %2450, %2330
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = fadd fast float %2453, 5.000000e-01
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = call float @dx.op.unary.f32(i32 24, float %2307)  ; Sqrt(value)
  %2460 = fmul fast float %2454, 2.000000e+00
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = fmul fast float %2461, %2457
  %2463 = fadd fast float %2462, %2460
  %2464 = fmul fast float %2463, %2457
  %2465 = fmul fast float %2455, 2.000000e+00
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2466, %2458
  %2468 = fadd fast float %2467, %2465
  %2469 = fmul fast float %2468, %2458
  %2470 = fmul fast float %2456, 2.000000e+00
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2471, %2459
  %2473 = fadd fast float %2472, %2470
  %2474 = fmul fast float %2473, %2459
  %2475 = fmul fast float %2464, %2464
  %2476 = fmul fast float %2469, %2469
  %2477 = fmul fast float %2474, %2474
  br label %2494

; <label>:2478                                    ; preds = %2441
  %2479 = fmul fast float %337, %337
  %2480 = fmul fast float %341, %341
  %2481 = fmul fast float %345, %345
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fadd fast float %2481, -1.000000e+00
  %2485 = fmul fast float %2330, %2482
  %2486 = fmul fast float %2330, %2483
  %2487 = fmul fast float %2330, %2484
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fmul fast float %2488, %2305
  %2492 = fmul fast float %2489, %2306
  %2493 = fmul fast float %2490, %2307
  br label %2494

; <label>:2494                                    ; preds = %2478, %2444, %2335, %2291
  %2495 = phi float [ %2440, %2335 ], [ %2316, %2444 ], [ %2316, %2478 ], [ 0x3FA23C0BE0000000, %2291 ]
  %2496 = phi float [ %2432, %2335 ], [ %2475, %2444 ], [ %2491, %2478 ], [ 1.000000e+00, %2291 ]
  %2497 = phi float [ %2433, %2335 ], [ %2476, %2444 ], [ %2492, %2478 ], [ 1.000000e+00, %2291 ]
  %2498 = phi float [ %2434, %2335 ], [ %2477, %2444 ], [ %2493, %2478 ], [ 1.000000e+00, %2291 ]
  %2499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.i32 %2499, 1
  %2501 = and i32 %2500, 1
  %2502 = icmp ne i32 %2501, 0
  %2503 = add i32 %56, 356
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 32
  %2507 = icmp ne i32 %2506, 0
  %2508 = and i1 %2502, %2507
  %2509 = select i1 %2508, float 1.000000e+00, float %2496
  %2510 = select i1 %2508, float 0x3FD3333340000000, float %2497
  %2511 = select i1 %2508, float 0x3FD3333340000000, float %2498
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 32
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2588, label %2516

; <label>:2516                                    ; preds = %2494
  %2517 = add i32 %56, 124
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %56, 432
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %99, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = extractvalue %dx.types.ResRet.f32 %2525, 3
  %2530 = and i32 %2519, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = lshr i32 %2519, 8
  %2533 = and i32 %2532, 255
  %2534 = uitofp i32 %2533 to float
  %2535 = lshr i32 %2519, 16
  %2536 = and i32 %2535, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = fmul fast float %2537, 0x3F70101000000000
  %2539 = fmul fast float %2526, %2531
  %2540 = fadd fast float %2539, %2534
  %2541 = fmul fast float %2540, 0x3F70101000000000
  %2542 = fadd fast float %2527, -5.000000e-01
  %2543 = fadd fast float %2529, -5.000000e-01
  %2544 = fmul fast float %2542, %2538
  %2545 = fmul fast float %2543, %2538
  %2546 = fadd fast float %2544, 5.000000e-01
  %2547 = fadd fast float %2545, 5.000000e-01
  %2548 = fmul fast float %2546, 2.000000e+00
  %2549 = fadd fast float %2548, -1.000000e+00
  %2550 = fmul fast float %2547, 2.000000e+00
  %2551 = fadd fast float %2550, -1.000000e+00
  %2552 = fadd fast float %2549, %2551
  %2553 = fmul fast float %2552, 5.000000e-01
  %2554 = fsub fast float %2549, %2551
  %2555 = fmul fast float %2554, 5.000000e-01
  %2556 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2557 = fsub fast float 1.000000e+00, %2556
  %2558 = call float @dx.op.unary.f32(i32 6, float %2555)  ; FAbs(value)
  %2559 = fsub fast float %2557, %2558
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2555, float %2559, float %2553, float %2555, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = call float @dx.op.unary.f32(i32 25, float %2560)  ; Rsqrt(value)
  %2562 = fmul fast float %2553, %2561
  %2563 = fmul fast float %2555, %2561
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 67108864
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2584, label %2568

; <label>:2568                                    ; preds = %2516
  %2569 = add i32 %56, 312
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = lshr i32 %2571, 16
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = fsub fast float %2541, %2579
  %2581 = fmul fast float %2580, %2573
  %2582 = fadd fast float %2581, %2577
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  br label %2584

; <label>:2584                                    ; preds = %2568, %2516
  %2585 = phi float [ %2583, %2568 ], [ %2541, %2516 ]
  %2586 = call float @dx.op.dot2.f32(i32 54, float %2562, float %2563, float %2005, float %2006)  ; Dot2(ax,ay,bx,by)
  %2587 = call float @dx.op.dot2.f32(i32 54, float %2562, float %2563, float %2007, float %2008)  ; Dot2(ax,ay,bx,by)
  br label %2588

; <label>:2588                                    ; preds = %2584, %2494
  %2589 = phi float [ %2585, %2584 ], [ 0x3FD6666660000000, %2494 ]
  %2590 = phi float [ %2586, %2584 ], [ 0.000000e+00, %2494 ]
  %2591 = phi float [ %2587, %2584 ], [ 0.000000e+00, %2494 ]
  %2592 = phi float [ %2528, %2584 ], [ 1.000000e+00, %2494 ]
  %2593 = add i32 %56, 192
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 22
  %2597 = shl nuw nsw i32 %2596, 5
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 64
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2636, label %2603

; <label>:2603                                    ; preds = %2588
  %2604 = add i32 %56, 448
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %2606, 0
  %2608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 131072
  %2612 = icmp eq i32 %2611, 0
  %2613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2608, %dx.types.Handle %99, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = fmul fast float %2614, %325
  %2618 = fmul fast float %2615, %328
  %2619 = fmul fast float %2616, %331
  br i1 %2612, label %2626, label %2620

; <label>:2620                                    ; preds = %2603
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 0
  %2623 = fmul fast float %2622, %2617
  %2624 = fmul fast float %2622, %2618
  %2625 = fmul fast float %2622, %2619
  br label %2626

; <label>:2626                                    ; preds = %2620, %2603
  %2627 = phi float [ %2623, %2620 ], [ %2617, %2603 ]
  %2628 = phi float [ %2624, %2620 ], [ %2618, %2603 ]
  %2629 = phi float [ %2625, %2620 ], [ %2619, %2603 ]
  %2630 = fmul fast float %2627, %2598
  %2631 = select i1 %224, float %2630, float %2627
  %2632 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2628, float %2629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2633 = select i1 %224, float 0.000000e+00, float %2627
  %2634 = select i1 %224, float %2632, float %2628
  %2635 = select i1 %224, float 0.000000e+00, float %2629
  br label %2636

; <label>:2636                                    ; preds = %2626, %2588
  %2637 = phi float [ %2633, %2626 ], [ 0.000000e+00, %2588 ]
  %2638 = phi float [ %2634, %2626 ], [ 0.000000e+00, %2588 ]
  %2639 = phi float [ %2635, %2626 ], [ 0.000000e+00, %2588 ]
  %2640 = add i32 %56, 128
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 255
  %2644 = uitofp i32 %2643 to float
  %2645 = lshr i32 %2642, 8
  %2646 = and i32 %2645, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = call float @dx.op.dot3.f32(i32 55, float %2509, float %2510, float %2511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2649 = fmul fast float %2647, %2648
  %2650 = fadd fast float %2649, %2644
  %2651 = fmul fast float %2650, 0x3F70101020000000
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  br i1 %1993, label %2653, label %2661

; <label>:2653                                    ; preds = %2636
  %2654 = fsub fast float 1.000000e+00, %2289
  %2655 = fmul fast float %2654, %1982
  %2656 = fmul fast float %2654, %1983
  %2657 = fmul fast float %2654, %1984
  %2658 = fmul fast float %2654, %1985
  %2659 = fmul fast float %2654, %1986
  %2660 = fmul fast float %2654, %1987
  br label %2661

; <label>:2661                                    ; preds = %2653, %2636
  %2662 = phi float [ %2655, %2653 ], [ %1982, %2636 ]
  %2663 = phi float [ %2656, %2653 ], [ %1983, %2636 ]
  %2664 = phi float [ %2657, %2653 ], [ %1984, %2636 ]
  %2665 = phi float [ %2658, %2653 ], [ %1985, %2636 ]
  %2666 = phi float [ %2659, %2653 ], [ %1986, %2636 ]
  %2667 = phi float [ %2660, %2653 ], [ %1987, %2636 ]
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 3
  %2671 = icmp eq i32 %2670, 3
  br i1 %2671, label %2750, label %2672

; <label>:2672                                    ; preds = %2661
  %2673 = and i32 %2669, 16
  %2674 = icmp ne i32 %2673, 0
  %2675 = select i1 %2674, float %2289, float 0.000000e+00
  %2676 = icmp eq i32 %2670, 0
  br i1 %2676, label %2677, label %2705

; <label>:2677                                    ; preds = %2672
  %2678 = and i32 %2669, 64
  %2679 = icmp ne i32 %2678, 0
  %2680 = select i1 %2679, float %2289, float 0.000000e+00
  %2681 = fsub fast float %2509, %2662
  %2682 = fsub fast float %2510, %2663
  %2683 = fsub fast float %2511, %2664
  %2684 = fmul fast float %2675, %2681
  %2685 = fmul fast float %2675, %2682
  %2686 = fmul fast float %2675, %2683
  %2687 = fadd fast float %2684, %2662
  %2688 = fadd fast float %2685, %2663
  %2689 = fadd fast float %2686, %2664
  %2690 = fsub fast float %2495, %1988
  %2691 = fmul fast float %2675, %2690
  %2692 = fadd fast float %2691, %1988
  %2693 = fsub fast float %2637, %2665
  %2694 = fsub fast float %2638, %2666
  %2695 = fsub fast float %2639, %2667
  %2696 = fmul fast float %2680, %2693
  %2697 = fmul fast float %2680, %2694
  %2698 = fmul fast float %2680, %2695
  %2699 = fadd fast float %2696, %2665
  %2700 = fadd fast float %2697, %2666
  %2701 = fadd fast float %2698, %2667
  %2702 = fsub fast float %2652, %1991
  %2703 = fmul fast float %2675, %2702
  %2704 = fadd fast float %2703, %1991
  br label %2750

; <label>:2705                                    ; preds = %2672
  %2706 = icmp eq i32 %2670, 1
  br i1 %2706, label %2707, label %2720

; <label>:2707                                    ; preds = %2705
  %2708 = fadd fast float %2509, -1.000000e+00
  %2709 = fadd fast float %2510, -1.000000e+00
  %2710 = fadd fast float %2511, -1.000000e+00
  %2711 = fmul fast float %2675, %2708
  %2712 = fmul fast float %2675, %2709
  %2713 = fmul fast float %2675, %2710
  %2714 = fadd fast float %2711, 1.000000e+00
  %2715 = fadd fast float %2712, 1.000000e+00
  %2716 = fadd fast float %2713, 1.000000e+00
  %2717 = fmul fast float %2714, %2662
  %2718 = fmul fast float %2715, %2663
  %2719 = fmul fast float %2716, %2664
  br label %2750

; <label>:2720                                    ; preds = %2705
  %2721 = icmp eq i32 %2670, 2
  br i1 %2721, label %2722, label %2750

; <label>:2722                                    ; preds = %2720
  %2723 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2724 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2725 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2726 = fadd fast float %2723, -5.000000e-01
  %2727 = fadd fast float %2724, -5.000000e-01
  %2728 = fadd fast float %2725, -5.000000e-01
  %2729 = fmul fast float %2726, %2675
  %2730 = fmul fast float %2727, %2675
  %2731 = fmul fast float %2728, %2675
  %2732 = fadd fast float %2729, 5.000000e-01
  %2733 = fadd fast float %2730, 5.000000e-01
  %2734 = fadd fast float %2731, 5.000000e-01
  %2735 = fmul fast float %2732, 2.000000e+00
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = fmul fast float %2736, %2662
  %2738 = fadd fast float %2737, %2735
  %2739 = fmul fast float %2738, %2662
  %2740 = fmul fast float %2733, 2.000000e+00
  %2741 = fsub fast float 1.000000e+00, %2740
  %2742 = fmul fast float %2741, %2663
  %2743 = fadd fast float %2742, %2740
  %2744 = fmul fast float %2743, %2663
  %2745 = fmul fast float %2734, 2.000000e+00
  %2746 = fsub fast float 1.000000e+00, %2745
  %2747 = fmul fast float %2746, %2664
  %2748 = fadd fast float %2747, %2745
  %2749 = fmul fast float %2748, %2664
  br label %2750

; <label>:2750                                    ; preds = %2722, %2720, %2707, %2677, %2661
  %2751 = phi float [ %2662, %2661 ], [ %2739, %2722 ], [ %2662, %2720 ], [ %2717, %2707 ], [ %2687, %2677 ]
  %2752 = phi float [ %2663, %2661 ], [ %2744, %2722 ], [ %2663, %2720 ], [ %2718, %2707 ], [ %2688, %2677 ]
  %2753 = phi float [ %2664, %2661 ], [ %2749, %2722 ], [ %2664, %2720 ], [ %2719, %2707 ], [ %2689, %2677 ]
  %2754 = phi float [ %2665, %2661 ], [ %2665, %2722 ], [ %2665, %2720 ], [ %2665, %2707 ], [ %2699, %2677 ]
  %2755 = phi float [ %2666, %2661 ], [ %2666, %2722 ], [ %2666, %2720 ], [ %2666, %2707 ], [ %2700, %2677 ]
  %2756 = phi float [ %2667, %2661 ], [ %2667, %2722 ], [ %2667, %2720 ], [ %2667, %2707 ], [ %2701, %2677 ]
  %2757 = phi float [ %1988, %2661 ], [ %1988, %2722 ], [ %1988, %2720 ], [ %1988, %2707 ], [ %2692, %2677 ]
  %2758 = phi float [ %1991, %2661 ], [ %1991, %2722 ], [ %1991, %2720 ], [ %1991, %2707 ], [ %2704, %2677 ]
  %2759 = and i32 %2669, 12
  %2760 = icmp eq i32 %2759, 12
  br i1 %2760, label %2833, label %2761

; <label>:2761                                    ; preds = %2750
  %2762 = and i32 %2669, 2097184
  %2763 = icmp eq i32 %2762, 2097184
  %2764 = select i1 %2763, float %2289, float 0.000000e+00
  %2765 = and i32 %2669, 4194336
  %2766 = icmp eq i32 %2765, 4194336
  %2767 = select i1 %2766, float %2289, float 0.000000e+00
  %2768 = and i32 %2669, 8388640
  %2769 = icmp eq i32 %2768, 8388640
  %2770 = select i1 %2769, float %2289, float 0.000000e+00
  %2771 = icmp eq i32 %2759, 0
  br i1 %2771, label %2772, label %2785

; <label>:2772                                    ; preds = %2761
  %2773 = fsub fast float %2590, %1980
  %2774 = fsub fast float %2591, %1981
  %2775 = fmul fast float %2764, %2773
  %2776 = fmul fast float %2764, %2774
  %2777 = fadd fast float %2775, %1980
  %2778 = fadd fast float %2776, %1981
  %2779 = fsub fast float %2592, %1990
  %2780 = fmul fast float %2767, %2779
  %2781 = fadd fast float %2780, %1990
  %2782 = fsub fast float %2589, %1989
  %2783 = fmul fast float %2770, %2782
  %2784 = fadd fast float %2783, %1989
  br label %2833

; <label>:2785                                    ; preds = %2761
  %2786 = icmp eq i32 %2759, 4
  br i1 %2786, label %2787, label %2819

; <label>:2787                                    ; preds = %2785
  %2788 = fmul fast float %2764, %2590
  %2789 = fmul fast float %2764, %2591
  %2790 = fadd fast float %2788, %1980
  %2791 = fadd fast float %2789, %1981
  %2792 = call float @dx.op.binary.f32(i32 36, float %1990, float %2592)  ; FMin(a,b)
  %2793 = fsub fast float %2792, %1990
  %2794 = fmul fast float %2793, %2767
  %2795 = fadd fast float %2794, %1990
  %2796 = fadd fast float %2589, %1989
  %2797 = fmul fast float %2796, 0x3FF337FAE0000000
  %2798 = fmul fast float %1989, %1989
  %2799 = fmul fast float %2589, %2589
  %2800 = fadd fast float %2799, %2798
  %2801 = fmul fast float %2800, 0x3FE5152B00000000
  %2802 = fmul fast float %1989, 0xBFCC1F85E0000000
  %2803 = fmul fast float %2802, %2589
  %2804 = fadd fast float %2803, 0xBFE1363700000000
  %2805 = fadd fast float %2804, %2797
  %2806 = fsub fast float %2805, %2801
  %2807 = fmul fast float %2796, 0x3FBA6F0D00000000
  %2808 = fmul fast float %2800, 0x3FD0432880000000
  %2809 = fmul fast float %1989, 0xBFEF110800000000
  %2810 = fmul fast float %2809, %2589
  %2811 = fadd fast float %2810, 1.000000e+00
  %2812 = fsub fast float %2811, %2807
  %2813 = fadd fast float %2812, %2808
  %2814 = fdiv fast float %2806, %2813
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = fsub fast float %2815, %1989
  %2817 = fmul fast float %2816, %2770
  %2818 = fadd fast float %2817, %1989
  br label %2833

; <label>:2819                                    ; preds = %2785
  %2820 = icmp eq i32 %2759, 8
  br i1 %2820, label %2821, label %2833

; <label>:2821                                    ; preds = %2819
  %2822 = fmul fast float %2764, %2590
  %2823 = fmul fast float %2764, %2591
  %2824 = fadd fast float %2822, %1980
  %2825 = fadd fast float %2823, %1981
  %2826 = call float @dx.op.binary.f32(i32 36, float %1990, float %2592)  ; FMin(a,b)
  %2827 = fsub fast float %2826, %1990
  %2828 = fmul fast float %2827, %2767
  %2829 = fadd fast float %2828, %1990
  %2830 = fsub fast float %2589, %1989
  %2831 = fmul fast float %2770, %2830
  %2832 = fadd fast float %2831, %1989
  br label %2833

; <label>:2833                                    ; preds = %2821, %2819, %2787, %2772, %2750, %2288, %1992, %1979
  %2834 = phi float [ %1980, %2750 ], [ %1980, %2288 ], [ %1980, %1979 ], [ %2824, %2821 ], [ %1980, %2819 ], [ %2790, %2787 ], [ %2777, %2772 ], [ %1980, %1992 ]
  %2835 = phi float [ %1981, %2750 ], [ %1981, %2288 ], [ %1981, %1979 ], [ %2825, %2821 ], [ %1981, %2819 ], [ %2791, %2787 ], [ %2778, %2772 ], [ %1981, %1992 ]
  %2836 = phi float [ %2751, %2750 ], [ %1982, %2288 ], [ %1982, %1979 ], [ %2751, %2821 ], [ %2751, %2819 ], [ %2751, %2787 ], [ %2751, %2772 ], [ %1982, %1992 ]
  %2837 = phi float [ %2752, %2750 ], [ %1983, %2288 ], [ %1983, %1979 ], [ %2752, %2821 ], [ %2752, %2819 ], [ %2752, %2787 ], [ %2752, %2772 ], [ %1983, %1992 ]
  %2838 = phi float [ %2753, %2750 ], [ %1984, %2288 ], [ %1984, %1979 ], [ %2753, %2821 ], [ %2753, %2819 ], [ %2753, %2787 ], [ %2753, %2772 ], [ %1984, %1992 ]
  %2839 = phi float [ %2754, %2750 ], [ %1985, %2288 ], [ %1985, %1979 ], [ %2754, %2821 ], [ %2754, %2819 ], [ %2754, %2787 ], [ %2754, %2772 ], [ %1985, %1992 ]
  %2840 = phi float [ %2755, %2750 ], [ %1986, %2288 ], [ %1986, %1979 ], [ %2755, %2821 ], [ %2755, %2819 ], [ %2755, %2787 ], [ %2755, %2772 ], [ %1986, %1992 ]
  %2841 = phi float [ %2756, %2750 ], [ %1987, %2288 ], [ %1987, %1979 ], [ %2756, %2821 ], [ %2756, %2819 ], [ %2756, %2787 ], [ %2756, %2772 ], [ %1987, %1992 ]
  %2842 = phi float [ %2757, %2750 ], [ %1988, %2288 ], [ %1988, %1979 ], [ %2757, %2821 ], [ %2757, %2819 ], [ %2757, %2787 ], [ %2757, %2772 ], [ %1988, %1992 ]
  %2843 = phi float [ %1989, %2750 ], [ %1989, %2288 ], [ %1989, %1979 ], [ %2832, %2821 ], [ %1989, %2819 ], [ %2818, %2787 ], [ %2784, %2772 ], [ %1989, %1992 ]
  %2844 = phi float [ %1990, %2750 ], [ %1990, %2288 ], [ %1990, %1979 ], [ %2829, %2821 ], [ %1990, %2819 ], [ %2795, %2787 ], [ %2781, %2772 ], [ %1990, %1992 ]
  %2845 = phi float [ %2758, %2750 ], [ %1991, %2288 ], [ %1991, %1979 ], [ %2758, %2821 ], [ %2758, %2819 ], [ %2758, %2787 ], [ %2758, %2772 ], [ %1991, %1992 ]
  br i1 %412, label %3687, label %2846

; <label>:2846                                    ; preds = %2833
  %2847 = icmp ult i32 %466, 4
  %2848 = add i32 %56, 72
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = add i32 %56, 76
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = or i32 %2853, %2850
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %3687, label %2856

; <label>:2856                                    ; preds = %2846
  %2857 = and i32 %2850, 262144
  %2858 = icmp ne i32 %2857, 0
  %2859 = select i1 %2858, float %60, float 1.000000e+00
  %2860 = select i1 %2858, float %61, float 0.000000e+00
  %2861 = select i1 %2858, float %62, float 0.000000e+00
  %2862 = select i1 %2858, float %63, float 1.000000e+00
  %2863 = select i1 %2858, float %64, float %85
  %2864 = select i1 %2858, float %65, float %86
  %2865 = add i32 %56, 332
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = lshr i32 %2867, 16
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = fmul fast float %2869, 0x3F50624DE0000000
  %2871 = add i32 %56, 136
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = lshr i32 %2873, 16
  %2875 = and i32 %2874, 255
  %2876 = lshr i32 %2873, 24
  %2877 = add i32 %56, 340
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 65535
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = lshr i32 %2879, 16
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = add i32 %56, 80
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = lshr i32 %2886, 22
  %2888 = shl nuw nsw i32 %2887, 5
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = shl i32 %2886, 4
  %2891 = and i32 %2890, 32752
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = lshr i32 %2886, 7
  %2894 = and i32 %2893, 32752
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2898 = fmul fast float %2897, 1.000000e+03
  %2899 = fmul fast float %402, %2898
  %2900 = call float @dx.op.unary.f32(i32 22, float %2899)  ; Frc(value)
  %2901 = fadd fast float %2900, %392
  %2902 = fmul fast float %403, %2898
  %2903 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2904 = fadd fast float %2903, %394
  %2905 = fmul fast float %2870, %2898
  %2906 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2907 = fmul fast float %2906, 0x401921FB60000000
  %2908 = fadd fast float %2907, %2889
  %2909 = call float @dx.op.unary.f32(i32 13, float %2908)  ; Sin(value)
  %2910 = call float @dx.op.unary.f32(i32 12, float %2908)  ; Cos(value)
  %2911 = fsub fast float -0.000000e+00, %2909
  %2912 = fadd fast float %2863, -5.000000e-01
  %2913 = fadd fast float %2864, -5.000000e-01
  %2914 = fmul fast float %2881, %2912
  %2915 = fmul fast float %2883, %2913
  %2916 = fadd fast float %2914, 5.000000e-01
  %2917 = fadd fast float %2915, 5.000000e-01
  %2918 = fmul fast float %2892, %2916
  %2919 = fmul fast float %2895, %2917
  %2920 = fmul fast float %2910, %2918
  %2921 = call float @dx.op.tertiary.f32(i32 46, float %2911, float %2919, float %2920)  ; FMad(a,b,c)
  %2922 = fmul fast float %2909, %2918
  %2923 = call float @dx.op.tertiary.f32(i32 46, float %2910, float %2919, float %2922)  ; FMad(a,b,c)
  %2924 = fadd fast float %2901, %2921
  %2925 = fadd fast float %2904, %2923
  %2926 = icmp ugt i32 %2875, 1
  %2927 = icmp ugt i32 %2873, 33554431
  %2928 = or i1 %2927, %2926
  br i1 %2928, label %2929, label %2954

; <label>:2929                                    ; preds = %2856
  %2930 = add i32 %56, 276
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = lshr i32 %2932, 16
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = fmul fast float %2897, %2934
  %2936 = call float @dx.op.unary.f32(i32 22, float %2935)  ; Frc(value)
  %2937 = mul nuw nsw i32 %2875, %2876
  %2938 = uitofp i32 %2937 to float
  %2939 = fmul fast float %2936, %2938
  %2940 = call float @dx.op.unary.f32(i32 27, float %2939)  ; Round_ni(value)
  %2941 = fptoui float %2940 to i32
  %2942 = urem i32 %2941, %2875
  %2943 = udiv i32 %2941, %2876
  %2944 = call float @dx.op.unary.f32(i32 22, float %2924)  ; Frc(value)
  %2945 = call float @dx.op.unary.f32(i32 22, float %2925)  ; Frc(value)
  %2946 = uitofp i32 %2942 to float
  %2947 = uitofp i32 %2943 to float
  %2948 = fadd fast float %2944, %2946
  %2949 = fadd fast float %2945, %2947
  %2950 = uitofp i32 %2875 to float
  %2951 = uitofp i32 %2876 to float
  %2952 = fdiv fast float %2948, %2950
  %2953 = fdiv fast float %2949, %2951
  br label %2954

; <label>:2954                                    ; preds = %2929, %2856
  %2955 = phi float [ %2952, %2929 ], [ %2924, %2856 ]
  %2956 = phi float [ %2953, %2929 ], [ %2925, %2856 ]
  %2957 = and i32 %2850, 16777216
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %3068, label %2959

; <label>:2959                                    ; preds = %2954
  %2960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.CBufRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.CBufRet.f32 %2960, 2
  %2964 = fadd fast float %2961, %162
  %2965 = fadd fast float %2962, %163
  %2966 = fadd fast float %2963, %164
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = icmp eq i32 %57, 65535
  br i1 %2970, label %3065, label %2971

; <label>:2971                                    ; preds = %2959
  %2972 = lshr i32 %57, 1
  %2973 = shl i32 %2972, 2
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %57, 1
  %2977 = icmp ne i32 %2976, 0
  %2978 = lshr i32 %2975, 16
  %2979 = and i32 %2975, 65535
  %2980 = select i1 %2977, i32 %2978, i32 %2979
  %2981 = icmp eq i32 %2980, 65535
  br i1 %2981, label %3061, label %2982

; <label>:2982                                    ; preds = %2971
  %2983 = mul nuw nsw i32 %2980, 40
  %2984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = add nuw nsw i32 %2983, 12
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = add nuw nsw i32 %2983, 24
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = add nuw nsw i32 %2983, 36
  %2999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = fsub fast float %2964, %2985
  %3002 = fsub fast float %2965, %2986
  %3003 = fsub fast float %2966, %2987
  %3004 = fmul fast float %3000, %3001
  %3005 = fmul fast float %3000, %3002
  %3006 = fmul fast float %3000, %3003
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3009 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fmul fast float %3010, %2990
  %3014 = fmul fast float %3011, %2991
  %3015 = fmul fast float %3012, %2992
  %3016 = shl i32 %57, 2
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = add i32 %3018, 0
  %3020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3021 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3022 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3023 = call float @dx.op.unary.f32(i32 22, float %3015)  ; Frc(value)
  %3024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3020, %dx.types.Handle %49, float %3021, float %3022, float %3023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.ResRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3024, 2
  %3028 = fmul fast float %3025, 1.023000e+03
  %3029 = fmul fast float %3026, 1.023000e+03
  %3030 = fmul fast float %3027, 1.023000e+03
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = fadd fast float %3029, 5.000000e-01
  %3033 = fadd fast float %3030, 5.000000e-01
  %3034 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3035 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3036 = call float @dx.op.unary.f32(i32 27, float %3033)  ; Round_ni(value)
  %3037 = fsub fast float %3004, %3007
  %3038 = fsub fast float %3005, %3008
  %3039 = fsub fast float %3006, %3009
  %3040 = fmul fast float %3037, 7.500000e-01
  %3041 = fmul fast float %3038, 7.500000e-01
  %3042 = fmul fast float %3039, 7.500000e-01
  %3043 = fadd fast float %3007, 1.250000e-01
  %3044 = fadd fast float %3043, %3040
  %3045 = fadd fast float %3044, %3034
  %3046 = fadd fast float %3008, 1.250000e-01
  %3047 = fadd fast float %3046, %3041
  %3048 = fadd fast float %3047, %3035
  %3049 = fadd fast float %3009, 1.250000e-01
  %3050 = fadd fast float %3049, %3042
  %3051 = fadd fast float %3050, %3036
  %3052 = fmul fast float %3045, %2995
  %3053 = fmul fast float %3048, %2996
  %3054 = fmul fast float %3051, %2997
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3058, %dx.types.Handle %47, float %3052, float %3053, float %3054, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  br label %3061

; <label>:3061                                    ; preds = %2982, %2971
  %3062 = phi float [ %3060, %2982 ], [ -1.000000e+00, %2971 ]
  %3063 = fadd fast float %3062, %2969
  %3064 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  br label %3065

; <label>:3065                                    ; preds = %3061, %2959
  %3066 = phi float [ %3064, %3061 ], [ %2969, %2959 ]
  %3067 = fmul fast float %3066, %461
  br label %3068

; <label>:3068                                    ; preds = %3065, %2954
  %3069 = phi float [ %3067, %3065 ], [ %461, %2954 ]
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = and i32 %3071, 256
  %3073 = icmp eq i32 %3072, 0
  br i1 %3073, label %3120, label %3074

; <label>:3074                                    ; preds = %3068
  %3075 = add i32 %56, 484
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = add i32 %3077, 0
  %3079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3079, %dx.types.Handle %100, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = add i32 %56, 148
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = shl i32 %3084, 4
  %3086 = and i32 %3085, 32752
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = lshr i32 %3084, 7
  %3089 = and i32 %3088, 32752
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = fsub fast float 1.000000e+00, %3069
  %3092 = call float @dx.op.binary.f32(i32 35, float %3091, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3093 = bitcast float %3069 to i32
  %3094 = sitofp i32 %3093 to float
  %3095 = fadd fast float %3094, 0xC1CFBF8940000000
  %3096 = fmul fast float %3090, %3095
  %3097 = fadd fast float %3096, 0x41CFBF8940000000
  %3098 = fptosi float %3097 to i32
  %3099 = bitcast i32 %3098 to float
  %3100 = bitcast float %3092 to i32
  %3101 = sitofp i32 %3100 to float
  %3102 = fadd fast float %3101, 0xC1CFBF8940000000
  %3103 = fmul fast float %3102, %3090
  %3104 = fadd fast float %3103, 0x41CFBF8940000000
  %3105 = fptosi float %3104 to i32
  %3106 = bitcast i32 %3105 to float
  %3107 = fmul fast float %3099, %3087
  %3108 = fmul fast float %3106, %3087
  %3109 = fsub fast float %3092, %3107
  %3110 = fadd fast float %3108, %3092
  %3111 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3112 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3113 = fsub fast float %3081, %3111
  %3114 = fsub fast float %3112, %3111
  %3115 = bitcast float %3114 to i32
  %3116 = sub nsw i32 2129859010, %3115
  %3117 = bitcast i32 %3116 to float
  %3118 = fmul fast float %3117, %3113
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  br label %3120

; <label>:3120                                    ; preds = %3074, %3068
  %3121 = phi float [ %3119, %3074 ], [ %3069, %3068 ]
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 128
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3142, label %3126

; <label>:3126                                    ; preds = %3120
  %3127 = add i32 %56, 468
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %100, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 524288
  %3137 = icmp ne i32 %3136, 0
  %3138 = fcmp fast ogt float %3133, 0x3FE0101020000000
  %3139 = select i1 %3138, float 1.000000e+00, float 0.000000e+00
  %3140 = select i1 %3137, float %3139, float %3133
  %3141 = fmul fast float %3140, %3121
  br label %3142

; <label>:3142                                    ; preds = %3126, %3120
  %3143 = phi float [ %3141, %3126 ], [ %3121, %3120 ]
  %3144 = fcmp fast ult float %3143, 0x3F70101020000000
  br i1 %3144, label %3687, label %3145

; <label>:3145                                    ; preds = %3142
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = and i32 %3147, 16
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3348, label %3150

; <label>:3150                                    ; preds = %3145
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %56, 420
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %99, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  %3161 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3162 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3163 = and i32 %3152, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3152, 8
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3162, %3164
  %3169 = fadd fast float %3168, %3167
  %3170 = fmul fast float %3169, 0x3F70101000000000
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 512
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %3183, label %3175

; <label>:3175                                    ; preds = %3150
  %3176 = add i32 %56, 504
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = add i32 %3178, 0
  %3180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3180, %dx.types.Handle %100, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  br label %3183

; <label>:3183                                    ; preds = %3175, %3150
  %3184 = phi float [ %3182, %3175 ], [ 1.000000e+00, %3150 ]
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 33554432
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3295, label %3189

; <label>:3189                                    ; preds = %3183
  %3190 = add i32 %56, 272
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 65535
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = lshr i32 %3192, 16
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = add i32 %56, 276
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 24
  %3205 = uitofp i32 %3204 to float
  %3206 = fmul fast float %3205, 0x3F70101020000000
  %3207 = and i32 %3203, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3203, 8
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = lshr i32 %3203, 16
  %3215 = and i32 %3214, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = add i32 %56, 268
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = lshr i32 %3220, 24
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3222, 0x3F70101020000000
  %3224 = and i32 %3220, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = lshr i32 %3220, 8
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = lshr i32 %3220, 16
  %3232 = and i32 %3231, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = bitcast float %3159 to i32
  %3236 = ashr i32 %3235, 1
  %3237 = sub nsw i32 1597463174, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3159, 5.000000e-01
  %3240 = fmul fast float %3238, %3238
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float 1.500000e+00, %3241
  %3243 = fmul fast float %3238, %3159
  %3244 = fmul fast float %3243, %3242
  %3245 = bitcast float %3160 to i32
  %3246 = ashr i32 %3245, 1
  %3247 = sub nsw i32 1597463174, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3160, 5.000000e-01
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3250, %3249
  %3252 = fsub fast float 1.500000e+00, %3251
  %3253 = fmul fast float %3248, %3160
  %3254 = fmul fast float %3253, %3252
  %3255 = bitcast float %3161 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = sub nsw i32 1597463174, %3256
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3161, 5.000000e-01
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, %3259
  %3262 = fsub fast float 1.500000e+00, %3261
  %3263 = fmul fast float %3258, %3161
  %3264 = fmul fast float %3263, %3262
  %3265 = fsub fast float %3244, %3226
  %3266 = fsub fast float %3254, %3230
  %3267 = fsub fast float %3264, %3234
  %3268 = fmul fast float %3265, %3194
  %3269 = fmul fast float %3266, %3196
  %3270 = fmul fast float %3267, %3201
  %3271 = fadd fast float %3268, %3209
  %3272 = fadd fast float %3269, %3213
  %3273 = fadd fast float %3270, %3217
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3276 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3277 = fmul fast float %3274, %3274
  %3278 = fmul fast float %3275, %3275
  %3279 = fmul fast float %3276, %3276
  %3280 = fsub fast float %3277, %3159
  %3281 = fsub fast float %3278, %3160
  %3282 = fsub fast float %3279, %3161
  %3283 = fmul fast float %3280, %3184
  %3284 = fmul fast float %3281, %3184
  %3285 = fmul fast float %3282, %3184
  %3286 = fadd fast float %3283, %3159
  %3287 = fadd fast float %3284, %3160
  %3288 = fadd fast float %3285, %3161
  %3289 = fadd fast float %3206, %3170
  %3290 = fsub fast float %3289, %3223
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3292 = fsub fast float %3291, %3170
  %3293 = fmul fast float %3292, %3184
  %3294 = fadd fast float %3293, %3170
  br label %3348

; <label>:3295                                    ; preds = %3183
  %3296 = and i32 %3186, 134217728
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3332, label %3298

; <label>:3298                                    ; preds = %3295
  %3299 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3300 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3301 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3302 = fadd fast float %3299, -5.000000e-01
  %3303 = fadd fast float %3300, -5.000000e-01
  %3304 = fadd fast float %3301, -5.000000e-01
  %3305 = fmul fast float %3302, %3184
  %3306 = fmul fast float %3303, %3184
  %3307 = fmul fast float %3304, %3184
  %3308 = fadd fast float %3305, 5.000000e-01
  %3309 = fadd fast float %3306, 5.000000e-01
  %3310 = fadd fast float %3307, 5.000000e-01
  %3311 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3312 = call float @dx.op.unary.f32(i32 24, float %3160)  ; Sqrt(value)
  %3313 = call float @dx.op.unary.f32(i32 24, float %3161)  ; Sqrt(value)
  %3314 = fmul fast float %3308, 2.000000e+00
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = fmul fast float %3315, %3311
  %3317 = fadd fast float %3316, %3314
  %3318 = fmul fast float %3317, %3311
  %3319 = fmul fast float %3309, 2.000000e+00
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3320, %3312
  %3322 = fadd fast float %3321, %3319
  %3323 = fmul fast float %3322, %3312
  %3324 = fmul fast float %3310, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3313
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3313
  %3329 = fmul fast float %3318, %3318
  %3330 = fmul fast float %3323, %3323
  %3331 = fmul fast float %3328, %3328
  br label %3348

; <label>:3332                                    ; preds = %3295
  %3333 = fmul fast float %379, %379
  %3334 = fmul fast float %383, %383
  %3335 = fmul fast float %387, %387
  %3336 = fadd fast float %3333, -1.000000e+00
  %3337 = fadd fast float %3334, -1.000000e+00
  %3338 = fadd fast float %3335, -1.000000e+00
  %3339 = fmul fast float %3184, %3336
  %3340 = fmul fast float %3184, %3337
  %3341 = fmul fast float %3184, %3338
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fmul fast float %3342, %3159
  %3346 = fmul fast float %3343, %3160
  %3347 = fmul fast float %3344, %3161
  br label %3348

; <label>:3348                                    ; preds = %3332, %3298, %3189, %3145
  %3349 = phi float [ %3294, %3189 ], [ %3170, %3298 ], [ %3170, %3332 ], [ 0x3FA23C0BE0000000, %3145 ]
  %3350 = phi float [ %3286, %3189 ], [ %3329, %3298 ], [ %3345, %3332 ], [ 1.000000e+00, %3145 ]
  %3351 = phi float [ %3287, %3189 ], [ %3330, %3298 ], [ %3346, %3332 ], [ 1.000000e+00, %3145 ]
  %3352 = phi float [ %3288, %3189 ], [ %3331, %3298 ], [ %3347, %3332 ], [ 1.000000e+00, %3145 ]
  %3353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.i32 %3353, 1
  %3355 = and i32 %3354, 1
  %3356 = icmp ne i32 %3355, 0
  %3357 = add i32 %56, 356
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 32
  %3361 = icmp ne i32 %3360, 0
  %3362 = and i1 %3356, %3361
  %3363 = select i1 %3362, float 1.000000e+00, float %3350
  %3364 = select i1 %3362, float 0x3FD3333340000000, float %3351
  %3365 = select i1 %3362, float 0x3FD3333340000000, float %3352
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 32
  %3369 = icmp eq i32 %3368, 0
  br i1 %3369, label %3442, label %3370

; <label>:3370                                    ; preds = %3348
  %3371 = add i32 %56, 140
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = add i32 %56, 436
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %3376, 0
  %3378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3378, %dx.types.Handle %99, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = extractvalue %dx.types.ResRet.f32 %3379, 3
  %3384 = and i32 %3373, 255
  %3385 = uitofp i32 %3384 to float
  %3386 = lshr i32 %3373, 8
  %3387 = and i32 %3386, 255
  %3388 = uitofp i32 %3387 to float
  %3389 = lshr i32 %3373, 16
  %3390 = and i32 %3389, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = fmul fast float %3391, 0x3F70101000000000
  %3393 = fmul fast float %3380, %3385
  %3394 = fadd fast float %3393, %3388
  %3395 = fmul fast float %3394, 0x3F70101000000000
  %3396 = fadd fast float %3381, -5.000000e-01
  %3397 = fadd fast float %3383, -5.000000e-01
  %3398 = fmul fast float %3396, %3392
  %3399 = fmul fast float %3397, %3392
  %3400 = fadd fast float %3398, 5.000000e-01
  %3401 = fadd fast float %3399, 5.000000e-01
  %3402 = fmul fast float %3400, 2.000000e+00
  %3403 = fadd fast float %3402, -1.000000e+00
  %3404 = fmul fast float %3401, 2.000000e+00
  %3405 = fadd fast float %3404, -1.000000e+00
  %3406 = fadd fast float %3403, %3405
  %3407 = fmul fast float %3406, 5.000000e-01
  %3408 = fsub fast float %3403, %3405
  %3409 = fmul fast float %3408, 5.000000e-01
  %3410 = call float @dx.op.unary.f32(i32 6, float %3407)  ; FAbs(value)
  %3411 = fsub fast float 1.000000e+00, %3410
  %3412 = call float @dx.op.unary.f32(i32 6, float %3409)  ; FAbs(value)
  %3413 = fsub fast float %3411, %3412
  %3414 = call float @dx.op.dot3.f32(i32 55, float %3407, float %3409, float %3413, float %3407, float %3409, float %3413)  ; Dot3(ax,ay,az,bx,by,bz)
  %3415 = call float @dx.op.unary.f32(i32 25, float %3414)  ; Rsqrt(value)
  %3416 = fmul fast float %3407, %3415
  %3417 = fmul fast float %3409, %3415
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 67108864
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3438, label %3422

; <label>:3422                                    ; preds = %3370
  %3423 = add i32 %56, 328
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 65535
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = lshr i32 %3425, 16
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = fsub fast float %3395, %3433
  %3435 = fmul fast float %3434, %3427
  %3436 = fadd fast float %3435, %3431
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  br label %3438

; <label>:3438                                    ; preds = %3422, %3370
  %3439 = phi float [ %3437, %3422 ], [ %3395, %3370 ]
  %3440 = call float @dx.op.dot2.f32(i32 54, float %3416, float %3417, float %2859, float %2860)  ; Dot2(ax,ay,bx,by)
  %3441 = call float @dx.op.dot2.f32(i32 54, float %3416, float %3417, float %2861, float %2862)  ; Dot2(ax,ay,bx,by)
  br label %3442

; <label>:3442                                    ; preds = %3438, %3348
  %3443 = phi float [ %3439, %3438 ], [ 0x3FD6666660000000, %3348 ]
  %3444 = phi float [ %3440, %3438 ], [ 0.000000e+00, %3348 ]
  %3445 = phi float [ %3441, %3438 ], [ 0.000000e+00, %3348 ]
  %3446 = phi float [ %3382, %3438 ], [ 1.000000e+00, %3348 ]
  %3447 = add i32 %56, 208
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 22
  %3451 = shl nuw nsw i32 %3450, 5
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, 64
  %3456 = icmp eq i32 %3455, 0
  br i1 %3456, label %3490, label %3457

; <label>:3457                                    ; preds = %3442
  %3458 = add i32 %56, 452
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %3460, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 131072
  %3466 = icmp eq i32 %3465, 0
  %3467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3462, %dx.types.Handle %99, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = fmul fast float %3468, %367
  %3472 = fmul fast float %3469, %370
  %3473 = fmul fast float %3470, %373
  br i1 %3466, label %3480, label %3474

; <label>:3474                                    ; preds = %3457
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = fmul fast float %3476, %3471
  %3478 = fmul fast float %3476, %3472
  %3479 = fmul fast float %3476, %3473
  br label %3480

; <label>:3480                                    ; preds = %3474, %3457
  %3481 = phi float [ %3477, %3474 ], [ %3471, %3457 ]
  %3482 = phi float [ %3478, %3474 ], [ %3472, %3457 ]
  %3483 = phi float [ %3479, %3474 ], [ %3473, %3457 ]
  %3484 = fmul fast float %3481, %3452
  %3485 = select i1 %224, float %3484, float %3481
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3485, float %3482, float %3483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = select i1 %224, float 0.000000e+00, float %3481
  %3488 = select i1 %224, float %3486, float %3482
  %3489 = select i1 %224, float 0.000000e+00, float %3483
  br label %3490

; <label>:3490                                    ; preds = %3480, %3442
  %3491 = phi float [ %3487, %3480 ], [ 0.000000e+00, %3442 ]
  %3492 = phi float [ %3488, %3480 ], [ 0.000000e+00, %3442 ]
  %3493 = phi float [ %3489, %3480 ], [ 0.000000e+00, %3442 ]
  %3494 = add i32 %56, 144
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = lshr i32 %3496, 8
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3364, float %3365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = fmul fast float %3501, %3502
  %3504 = fadd fast float %3503, %3498
  %3505 = fmul fast float %3504, 0x3F70101020000000
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  br i1 %2847, label %3507, label %3515

; <label>:3507                                    ; preds = %3490
  %3508 = fsub fast float 1.000000e+00, %3143
  %3509 = fmul fast float %3508, %2836
  %3510 = fmul fast float %3508, %2837
  %3511 = fmul fast float %3508, %2838
  %3512 = fmul fast float %3508, %2839
  %3513 = fmul fast float %3508, %2840
  %3514 = fmul fast float %3508, %2841
  br label %3515

; <label>:3515                                    ; preds = %3507, %3490
  %3516 = phi float [ %3509, %3507 ], [ %2836, %3490 ]
  %3517 = phi float [ %3510, %3507 ], [ %2837, %3490 ]
  %3518 = phi float [ %3511, %3507 ], [ %2838, %3490 ]
  %3519 = phi float [ %3512, %3507 ], [ %2839, %3490 ]
  %3520 = phi float [ %3513, %3507 ], [ %2840, %3490 ]
  %3521 = phi float [ %3514, %3507 ], [ %2841, %3490 ]
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = and i32 %3523, 3
  %3525 = icmp eq i32 %3524, 3
  br i1 %3525, label %3604, label %3526

; <label>:3526                                    ; preds = %3515
  %3527 = and i32 %3523, 16
  %3528 = icmp ne i32 %3527, 0
  %3529 = select i1 %3528, float %3143, float 0.000000e+00
  %3530 = icmp eq i32 %3524, 0
  br i1 %3530, label %3531, label %3559

; <label>:3531                                    ; preds = %3526
  %3532 = and i32 %3523, 64
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %3143, float 0.000000e+00
  %3535 = fsub fast float %3363, %3516
  %3536 = fsub fast float %3364, %3517
  %3537 = fsub fast float %3365, %3518
  %3538 = fmul fast float %3529, %3535
  %3539 = fmul fast float %3529, %3536
  %3540 = fmul fast float %3529, %3537
  %3541 = fadd fast float %3538, %3516
  %3542 = fadd fast float %3539, %3517
  %3543 = fadd fast float %3540, %3518
  %3544 = fsub fast float %3349, %2842
  %3545 = fmul fast float %3529, %3544
  %3546 = fadd fast float %3545, %2842
  %3547 = fsub fast float %3491, %3519
  %3548 = fsub fast float %3492, %3520
  %3549 = fsub fast float %3493, %3521
  %3550 = fmul fast float %3534, %3547
  %3551 = fmul fast float %3534, %3548
  %3552 = fmul fast float %3534, %3549
  %3553 = fadd fast float %3550, %3519
  %3554 = fadd fast float %3551, %3520
  %3555 = fadd fast float %3552, %3521
  %3556 = fsub fast float %3506, %2845
  %3557 = fmul fast float %3529, %3556
  %3558 = fadd fast float %3557, %2845
  br label %3604

; <label>:3559                                    ; preds = %3526
  %3560 = icmp eq i32 %3524, 1
  br i1 %3560, label %3561, label %3574

; <label>:3561                                    ; preds = %3559
  %3562 = fadd fast float %3363, -1.000000e+00
  %3563 = fadd fast float %3364, -1.000000e+00
  %3564 = fadd fast float %3365, -1.000000e+00
  %3565 = fmul fast float %3529, %3562
  %3566 = fmul fast float %3529, %3563
  %3567 = fmul fast float %3529, %3564
  %3568 = fadd fast float %3565, 1.000000e+00
  %3569 = fadd fast float %3566, 1.000000e+00
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fmul fast float %3568, %3516
  %3572 = fmul fast float %3569, %3517
  %3573 = fmul fast float %3570, %3518
  br label %3604

; <label>:3574                                    ; preds = %3559
  %3575 = icmp eq i32 %3524, 2
  br i1 %3575, label %3576, label %3604

; <label>:3576                                    ; preds = %3574
  %3577 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3578 = call float @dx.op.unary.f32(i32 24, float %3364)  ; Sqrt(value)
  %3579 = call float @dx.op.unary.f32(i32 24, float %3365)  ; Sqrt(value)
  %3580 = fadd fast float %3577, -5.000000e-01
  %3581 = fadd fast float %3578, -5.000000e-01
  %3582 = fadd fast float %3579, -5.000000e-01
  %3583 = fmul fast float %3580, %3529
  %3584 = fmul fast float %3581, %3529
  %3585 = fmul fast float %3582, %3529
  %3586 = fadd fast float %3583, 5.000000e-01
  %3587 = fadd fast float %3584, 5.000000e-01
  %3588 = fadd fast float %3585, 5.000000e-01
  %3589 = fmul fast float %3586, 2.000000e+00
  %3590 = fsub fast float 1.000000e+00, %3589
  %3591 = fmul fast float %3590, %3516
  %3592 = fadd fast float %3591, %3589
  %3593 = fmul fast float %3592, %3516
  %3594 = fmul fast float %3587, 2.000000e+00
  %3595 = fsub fast float 1.000000e+00, %3594
  %3596 = fmul fast float %3595, %3517
  %3597 = fadd fast float %3596, %3594
  %3598 = fmul fast float %3597, %3517
  %3599 = fmul fast float %3588, 2.000000e+00
  %3600 = fsub fast float 1.000000e+00, %3599
  %3601 = fmul fast float %3600, %3518
  %3602 = fadd fast float %3601, %3599
  %3603 = fmul fast float %3602, %3518
  br label %3604

; <label>:3604                                    ; preds = %3576, %3574, %3561, %3531, %3515
  %3605 = phi float [ %3516, %3515 ], [ %3593, %3576 ], [ %3516, %3574 ], [ %3571, %3561 ], [ %3541, %3531 ]
  %3606 = phi float [ %3517, %3515 ], [ %3598, %3576 ], [ %3517, %3574 ], [ %3572, %3561 ], [ %3542, %3531 ]
  %3607 = phi float [ %3518, %3515 ], [ %3603, %3576 ], [ %3518, %3574 ], [ %3573, %3561 ], [ %3543, %3531 ]
  %3608 = phi float [ %3519, %3515 ], [ %3519, %3576 ], [ %3519, %3574 ], [ %3519, %3561 ], [ %3553, %3531 ]
  %3609 = phi float [ %3520, %3515 ], [ %3520, %3576 ], [ %3520, %3574 ], [ %3520, %3561 ], [ %3554, %3531 ]
  %3610 = phi float [ %3521, %3515 ], [ %3521, %3576 ], [ %3521, %3574 ], [ %3521, %3561 ], [ %3555, %3531 ]
  %3611 = phi float [ %2842, %3515 ], [ %2842, %3576 ], [ %2842, %3574 ], [ %2842, %3561 ], [ %3546, %3531 ]
  %3612 = phi float [ %2845, %3515 ], [ %2845, %3576 ], [ %2845, %3574 ], [ %2845, %3561 ], [ %3558, %3531 ]
  %3613 = and i32 %3523, 12
  %3614 = icmp eq i32 %3613, 12
  br i1 %3614, label %3687, label %3615

; <label>:3615                                    ; preds = %3604
  %3616 = and i32 %3523, 2097184
  %3617 = icmp eq i32 %3616, 2097184
  %3618 = select i1 %3617, float %3143, float 0.000000e+00
  %3619 = and i32 %3523, 4194336
  %3620 = icmp eq i32 %3619, 4194336
  %3621 = select i1 %3620, float %3143, float 0.000000e+00
  %3622 = and i32 %3523, 8388640
  %3623 = icmp eq i32 %3622, 8388640
  %3624 = select i1 %3623, float %3143, float 0.000000e+00
  %3625 = icmp eq i32 %3613, 0
  br i1 %3625, label %3626, label %3639

; <label>:3626                                    ; preds = %3615
  %3627 = fsub fast float %3444, %2834
  %3628 = fsub fast float %3445, %2835
  %3629 = fmul fast float %3618, %3627
  %3630 = fmul fast float %3618, %3628
  %3631 = fadd fast float %3629, %2834
  %3632 = fadd fast float %3630, %2835
  %3633 = fsub fast float %3446, %2844
  %3634 = fmul fast float %3621, %3633
  %3635 = fadd fast float %3634, %2844
  %3636 = fsub fast float %3443, %2843
  %3637 = fmul fast float %3624, %3636
  %3638 = fadd fast float %3637, %2843
  br label %3687

; <label>:3639                                    ; preds = %3615
  %3640 = icmp eq i32 %3613, 4
  br i1 %3640, label %3641, label %3673

; <label>:3641                                    ; preds = %3639
  %3642 = fmul fast float %3618, %3444
  %3643 = fmul fast float %3618, %3445
  %3644 = fadd fast float %3642, %2834
  %3645 = fadd fast float %3643, %2835
  %3646 = call float @dx.op.binary.f32(i32 36, float %2844, float %3446)  ; FMin(a,b)
  %3647 = fsub fast float %3646, %2844
  %3648 = fmul fast float %3647, %3621
  %3649 = fadd fast float %3648, %2844
  %3650 = fadd fast float %3443, %2843
  %3651 = fmul fast float %3650, 0x3FF337FAE0000000
  %3652 = fmul fast float %2843, %2843
  %3653 = fmul fast float %3443, %3443
  %3654 = fadd fast float %3653, %3652
  %3655 = fmul fast float %3654, 0x3FE5152B00000000
  %3656 = fmul fast float %2843, 0xBFCC1F85E0000000
  %3657 = fmul fast float %3656, %3443
  %3658 = fadd fast float %3657, 0xBFE1363700000000
  %3659 = fadd fast float %3658, %3651
  %3660 = fsub fast float %3659, %3655
  %3661 = fmul fast float %3650, 0x3FBA6F0D00000000
  %3662 = fmul fast float %3654, 0x3FD0432880000000
  %3663 = fmul fast float %2843, 0xBFEF110800000000
  %3664 = fmul fast float %3663, %3443
  %3665 = fadd fast float %3664, 1.000000e+00
  %3666 = fsub fast float %3665, %3661
  %3667 = fadd fast float %3666, %3662
  %3668 = fdiv fast float %3660, %3667
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3670 = fsub fast float %3669, %2843
  %3671 = fmul fast float %3670, %3624
  %3672 = fadd fast float %3671, %2843
  br label %3687

; <label>:3673                                    ; preds = %3639
  %3674 = icmp eq i32 %3613, 8
  br i1 %3674, label %3675, label %3687

; <label>:3675                                    ; preds = %3673
  %3676 = fmul fast float %3618, %3444
  %3677 = fmul fast float %3618, %3445
  %3678 = fadd fast float %3676, %2834
  %3679 = fadd fast float %3677, %2835
  %3680 = call float @dx.op.binary.f32(i32 36, float %2844, float %3446)  ; FMin(a,b)
  %3681 = fsub fast float %3680, %2844
  %3682 = fmul fast float %3681, %3621
  %3683 = fadd fast float %3682, %2844
  %3684 = fsub fast float %3443, %2843
  %3685 = fmul fast float %3624, %3684
  %3686 = fadd fast float %3685, %2843
  br label %3687

; <label>:3687                                    ; preds = %3675, %3673, %3641, %3626, %3604, %3142, %2846, %2833
  %3688 = phi float [ %2834, %3604 ], [ %2834, %3142 ], [ %2834, %2833 ], [ %2834, %2846 ], [ %3631, %3626 ], [ %3644, %3641 ], [ %2834, %3673 ], [ %3678, %3675 ]
  %3689 = phi float [ %2835, %3604 ], [ %2835, %3142 ], [ %2835, %2833 ], [ %2835, %2846 ], [ %3632, %3626 ], [ %3645, %3641 ], [ %2835, %3673 ], [ %3679, %3675 ]
  %3690 = phi float [ %3605, %3604 ], [ %2836, %3142 ], [ %2836, %2833 ], [ %2836, %2846 ], [ %3605, %3626 ], [ %3605, %3641 ], [ %3605, %3673 ], [ %3605, %3675 ]
  %3691 = phi float [ %3606, %3604 ], [ %2837, %3142 ], [ %2837, %2833 ], [ %2837, %2846 ], [ %3606, %3626 ], [ %3606, %3641 ], [ %3606, %3673 ], [ %3606, %3675 ]
  %3692 = phi float [ %3607, %3604 ], [ %2838, %3142 ], [ %2838, %2833 ], [ %2838, %2846 ], [ %3607, %3626 ], [ %3607, %3641 ], [ %3607, %3673 ], [ %3607, %3675 ]
  %3693 = phi float [ %3608, %3604 ], [ %2839, %3142 ], [ %2839, %2833 ], [ %2839, %2846 ], [ %3608, %3626 ], [ %3608, %3641 ], [ %3608, %3673 ], [ %3608, %3675 ]
  %3694 = phi float [ %3609, %3604 ], [ %2840, %3142 ], [ %2840, %2833 ], [ %2840, %2846 ], [ %3609, %3626 ], [ %3609, %3641 ], [ %3609, %3673 ], [ %3609, %3675 ]
  %3695 = phi float [ %3610, %3604 ], [ %2841, %3142 ], [ %2841, %2833 ], [ %2841, %2846 ], [ %3610, %3626 ], [ %3610, %3641 ], [ %3610, %3673 ], [ %3610, %3675 ]
  %3696 = phi float [ %3611, %3604 ], [ %2842, %3142 ], [ %2842, %2833 ], [ %2842, %2846 ], [ %3611, %3626 ], [ %3611, %3641 ], [ %3611, %3673 ], [ %3611, %3675 ]
  %3697 = phi float [ %2843, %3604 ], [ %2843, %3142 ], [ %2843, %2833 ], [ %2843, %2846 ], [ %3638, %3626 ], [ %3672, %3641 ], [ %2843, %3673 ], [ %3686, %3675 ]
  %3698 = phi float [ %2844, %3604 ], [ %2844, %3142 ], [ %2844, %2833 ], [ %2844, %2846 ], [ %3635, %3626 ], [ %3649, %3641 ], [ %2844, %3673 ], [ %3683, %3675 ]
  %3699 = phi float [ %3612, %3604 ], [ %2845, %3142 ], [ %2845, %2833 ], [ %2845, %2846 ], [ %3612, %3626 ], [ %3612, %3641 ], [ %3612, %3673 ], [ %3612, %3675 ]
  %3700 = add i32 %56, 360
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = extractvalue %dx.types.ResRet.i32 %3701, 1
  %3704 = bitcast i32 %3702 to float
  %3705 = bitcast i32 %3703 to float
  %3706 = fcmp fast oge float %3704, 0.000000e+00
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = select i1 %3706, float %3704, float %3708
  %3710 = add i32 %56, 488
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = add i32 %3712, 0
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3714, %dx.types.Handle %100, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = fmul fast float %3716, %3705
  %3718 = fadd fast float %3717, %3709
  %3719 = call float @dx.op.dot2.f32(i32 54, float %3688, float %3689, float %3688, float %3689)  ; Dot2(ax,ay,bx,by)
  %3720 = fmul fast float %3719, 0x3FE3333340000000
  %3721 = fsub fast float 1.000000e+00, %3720
  %3722 = call float @dx.op.dot3.f32(i32 55, float %3688, float %3689, float %3721, float %3688, float %3689, float %3721)  ; Dot3(ax,ay,az,bx,by,bz)
  %3723 = call float @dx.op.unary.f32(i32 25, float %3722)  ; Rsqrt(value)
  %3724 = fmul fast float %3723, %3688
  %3725 = fmul fast float %3723, %3689
  %3726 = fmul fast float %3721, %3723
  %3727 = fmul fast float %3726, %112
  %3728 = fmul fast float %3726, %114
  %3729 = fmul fast float %3726, %116
  %3730 = fmul fast float %3724, %78
  %3731 = fmul fast float %3724, %79
  %3732 = fmul fast float %3724, %80
  %3733 = fadd fast float %3727, %3730
  %3734 = fadd fast float %3728, %3731
  %3735 = fadd fast float %3729, %3732
  %3736 = fmul fast float %126, %3725
  %3737 = fmul fast float %127, %3725
  %3738 = fmul fast float %128, %3725
  %3739 = fadd fast float %3733, %3736
  %3740 = fadd fast float %3734, %3737
  %3741 = fadd fast float %3735, %3738
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3739, float %3740, float %3741, float %3739, float %3740, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.unary.f32(i32 25, float %3742)  ; Rsqrt(value)
  %3744 = fmul fast float %3739, %3743
  %3745 = fmul fast float %3740, %3743
  %3746 = fmul fast float %3741, %3743
  %3747 = and i32 %58, 1
  %3748 = icmp eq i32 %3747, 0
  br i1 %3748, label %3749, label %4257

; <label>:3749                                    ; preds = %3687
  %3750 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %3751 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %3752 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %3753 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %3754 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %3755 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %3756 = fadd fast float %3750, %162
  %3757 = fadd fast float %3751, %163
  %3758 = fadd fast float %3752, %164
  %3759 = fadd fast float %3753, %162
  %3760 = fadd fast float %3754, %163
  %3761 = fadd fast float %3755, %164
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3769 = fmul fast float %3763, %103
  %3770 = fmul fast float %3769, %3767
  %3771 = fmul fast float %3764, %104
  %3772 = fmul fast float %3771, %3768
  %3773 = fptoui float %3770 to i32
  %3774 = fptoui float %3772 to i32
  %3775 = fadd fast float %3763, -1.000000e+00
  %3776 = fadd fast float %3764, -1.000000e+00
  %3777 = fptoui float %3775 to i32
  %3778 = fptoui float %3776 to i32
  %3779 = call i32 @dx.op.binary.i32(i32 40, i32 %3773, i32 %3777)  ; UMin(a,b)
  %3780 = call i32 @dx.op.binary.i32(i32 40, i32 %3774, i32 %3778)  ; UMin(a,b)
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 2
  %3783 = extractvalue %dx.types.CBufRet.f32 %3781, 3
  %3784 = fmul fast float %3782, %94
  %3785 = fsub fast float %3784, %3783
  %3786 = fadd fast float %3765, -1.000000e+00
  %3787 = call float @dx.op.binary.f32(i32 36, float %3785, float %3786)  ; FMin(a,b)
  %3788 = fptoui float %3787 to i32
  %3789 = fptoui float %3763 to i32
  %3790 = fptoui float %3764 to i32
  %3791 = mul i32 %3788, %3790
  %3792 = add i32 %3791, %3780
  %3793 = mul i32 %3792, %3789
  %3794 = add i32 %3793, %3779
  %3795 = shl i32 %3794, 2
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = and i32 %3797, 1023
  %3799 = lshr i32 %3797, 10
  %3800 = icmp eq i32 %3798, 0
  br i1 %3800, label %4226, label %3801

; <label>:3801                                    ; preds = %3749
  %3802 = and i32 %3797, 1023
  br label %3803

; <label>:3803                                    ; preds = %3929, %3801
  %3804 = phi i32 [ %3879, %3929 ], [ 0, %3801 ]
  %3805 = phi float [ %3930, %3929 ], [ 0.000000e+00, %3801 ]
  %3806 = phi float [ %3931, %3929 ], [ %3718, %3801 ]
  %3807 = phi float [ %3932, %3929 ], [ %3699, %3801 ]
  %3808 = phi float [ %3933, %3929 ], [ 0.000000e+00, %3801 ]
  %3809 = phi float [ %3934, %3929 ], [ 0.000000e+00, %3801 ]
  %3810 = phi float [ %3935, %3929 ], [ %3693, %3801 ]
  %3811 = phi float [ %3936, %3929 ], [ %3694, %3801 ]
  %3812 = phi float [ %3937, %3929 ], [ %3695, %3801 ]
  %3813 = phi float [ %3938, %3929 ], [ %3744, %3801 ]
  %3814 = phi float [ %3939, %3929 ], [ %3745, %3801 ]
  %3815 = phi float [ %3940, %3929 ], [ %3746, %3801 ]
  %3816 = phi float [ %3941, %3929 ], [ %3698, %3801 ]
  %3817 = phi float [ %3942, %3929 ], [ %3697, %3801 ]
  %3818 = phi float [ %3943, %3929 ], [ 0.000000e+00, %3801 ]
  %3819 = phi float [ %3944, %3929 ], [ %3696, %3801 ]
  %3820 = phi float [ %3945, %3929 ], [ %3690, %3801 ]
  %3821 = phi float [ %3946, %3929 ], [ %3691, %3801 ]
  %3822 = phi float [ %3947, %3929 ], [ %3692, %3801 ]
  %3823 = add nuw nsw i32 %3804, %3799
  %3824 = shl i32 %3823, 2
  %3825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.i32 %3825, 0
  %3827 = shl i32 %3826, 8
  %3828 = or i32 %3827, 48
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3834 = or i32 %3827, 64
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.i32 %3835, 1
  %3838 = or i32 %3827, 80
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3842 = or i32 %3827, 96
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3827, 112
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3851 = or i32 %3827, 128
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3827, 144
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = or i32 %3827, 160
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = or i32 %3827, 192
  %3870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.i32 %3870, 0
  %3872 = or i32 %3827, 208
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = or i32 %3827, 248
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = add nuw nsw i32 %3804, 1
  %3880 = bitcast float %3833 to i32
  %3881 = and i32 %3880, 512
  %3882 = icmp eq i32 %3881, 0
  %3883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.ResRet.f32 %3883, 1
  %3886 = extractvalue %dx.types.ResRet.f32 %3883, 2
  %3887 = extractvalue %dx.types.ResRet.f32 %3883, 3
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3884, float %3885, float %3886, float %3887, float %162, float %163, float %164, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = or i32 %3827, 16
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = extractvalue %dx.types.ResRet.f32 %3890, 3
  %3895 = call float @dx.op.dot4.f32(i32 56, float %3891, float %3892, float %3893, float %3894, float %162, float %163, float %164, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3896 = or i32 %3827, 32
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3898, float %3899, float %3900, float %3901, float %162, float %163, float %164, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3904 = call float @dx.op.unary.f32(i32 6, float %3903)  ; FAbs(value)
  %3905 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3906 = call float @dx.op.unary.f32(i32 6, float %3905)  ; FAbs(value)
  %3907 = call float @dx.op.unary.f32(i32 6, float %3902)  ; FAbs(value)
  %3908 = call float @dx.op.unary.f32(i32 27, float %3907)  ; Round_ni(value)
  %3909 = fadd fast float %3906, %3904
  %3910 = fadd fast float %3909, %3908
  %3911 = fcmp fast oeq float %3910, 0.000000e+00
  %3912 = call float @dx.op.dot4.f32(i32 56, float %3884, float %3885, float %3886, float %3887, float %3756, float %3757, float %3758, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3913 = call float @dx.op.dot4.f32(i32 56, float %3891, float %3892, float %3893, float %3894, float %3756, float %3757, float %3758, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3914 = call float @dx.op.dot4.f32(i32 56, float %3884, float %3885, float %3886, float %3887, float %3759, float %3760, float %3761, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3915 = call float @dx.op.dot4.f32(i32 56, float %3891, float %3892, float %3893, float %3894, float %3759, float %3760, float %3761, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3916 = fsub fast float %3912, %3888
  %3917 = fsub fast float %3914, %3888
  %3918 = fsub fast float %3913, %3895
  %3919 = fsub fast float %3915, %3895
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3832, float %112, float %114, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 2
  %3923 = fadd fast float %3922, %3920
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3926 = fcmp fast ogt float %3924, %3925
  %3927 = and i1 %3911, %3926
  %3928 = and i1 %3882, %3927
  br i1 %3928, label %3949, label %3929

; <label>:3929                                    ; preds = %4212, %4030, %3949, %3803
  %3930 = phi float [ %3805, %3949 ], [ %4033, %4030 ], [ %4033, %4212 ], [ %3805, %3803 ]
  %3931 = phi float [ %3806, %3949 ], [ %3806, %4030 ], [ %4187, %4212 ], [ %3806, %3803 ]
  %3932 = phi float [ %3807, %3949 ], [ %3807, %4030 ], [ %4185, %4212 ], [ %3807, %3803 ]
  %3933 = phi float [ %3808, %3949 ], [ %3808, %4030 ], [ %4157, %4212 ], [ %3808, %3803 ]
  %3934 = phi float [ %3809, %3949 ], [ %3809, %4030 ], [ %4155, %4212 ], [ %3809, %3803 ]
  %3935 = phi float [ %3810, %3949 ], [ %3810, %4030 ], [ %4222, %4212 ], [ %3810, %3803 ]
  %3936 = phi float [ %3811, %3949 ], [ %3811, %4030 ], [ %4223, %4212 ], [ %3811, %3803 ]
  %3937 = phi float [ %3812, %3949 ], [ %3812, %4030 ], [ %4224, %4212 ], [ %3812, %3803 ]
  %3938 = phi float [ %3813, %3949 ], [ %3813, %4030 ], [ %4136, %4212 ], [ %3813, %3803 ]
  %3939 = phi float [ %3814, %3949 ], [ %3814, %4030 ], [ %4137, %4212 ], [ %3814, %3803 ]
  %3940 = phi float [ %3815, %3949 ], [ %3815, %4030 ], [ %4138, %4212 ], [ %3815, %3803 ]
  %3941 = phi float [ %3816, %3949 ], [ %3816, %4030 ], [ %4165, %4212 ], [ %3816, %3803 ]
  %3942 = phi float [ %3817, %3949 ], [ %3817, %4030 ], [ %4162, %4212 ], [ %3817, %3803 ]
  %3943 = phi float [ %3818, %3949 ], [ %3818, %4030 ], [ %4159, %4212 ], [ %3818, %3803 ]
  %3944 = phi float [ %3819, %3949 ], [ %3819, %4030 ], [ %4153, %4212 ], [ %3819, %3803 ]
  %3945 = phi float [ %3820, %3949 ], [ %3820, %4030 ], [ %4148, %4212 ], [ %3820, %3803 ]
  %3946 = phi float [ %3821, %3949 ], [ %3821, %4030 ], [ %4149, %4212 ], [ %3821, %3803 ]
  %3947 = phi float [ %3822, %3949 ], [ %3822, %4030 ], [ %4150, %4212 ], [ %3822, %3803 ]
  %3948 = icmp eq i32 %3879, %3802
  br i1 %3948, label %4225, label %3803

; <label>:3949                                    ; preds = %3803
  %3950 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3951 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3955 = extractvalue %dx.types.ResRet.i32 %3835, 3
  %3956 = extractvalue %dx.types.ResRet.i32 %3835, 2
  %3957 = add i32 %3955, 0
  %3958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3958, %dx.types.Handle %3959, float %3888, float %3895, float undef, float undef, i32 0, i32 0, i32 undef, float %3916, float %3918, float undef, float %3917, float %3919, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = fmul fast float %3961, %3954
  %3963 = fadd fast float %3962, %3953
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = fmul fast float %3888, %3844
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3895, float %3965)  ; FMad(a,b,c)
  %3967 = fadd fast float %3966, %3952
  %3968 = fmul fast float %3888, %3846
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3895, float %3968)  ; FMad(a,b,c)
  %3970 = fadd fast float %3969, %3951
  %3971 = fmul fast float %3916, %3844
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3918, float %3971)  ; FMad(a,b,c)
  %3973 = fmul fast float %3916, %3846
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3918, float %3973)  ; FMad(a,b,c)
  %3975 = fmul fast float %3917, %3844
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3845, float %3919, float %3975)  ; FMad(a,b,c)
  %3977 = fmul fast float %3917, %3846
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3919, float %3977)  ; FMad(a,b,c)
  %3979 = add i32 %3956, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3980, %dx.types.Handle %3959, float %3967, float %3970, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = and i32 %3880, 1024
  %3984 = icmp ne i32 %3983, 0
  %3985 = fcmp fast ogt float %3982, 0x3FE0101020000000
  %3986 = uitofp i1 %3985 to float
  %3987 = select i1 %3984, float %3986, float %3982
  %3988 = and i32 %3880, 8192
  %3989 = icmp ne i32 %3988, 0
  %3990 = select i1 %3989, float %3950, float 1.000000e+00
  %3991 = fmul fast float %3888, 2.000000e+00
  %3992 = fadd fast float %3991, -1.000000e+00
  %3993 = call float @dx.op.unary.f32(i32 6, float %3992)  ; FAbs(value)
  %3994 = fmul fast float %3993, %3877
  %3995 = fsub fast float %3994, %3877
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = fmul fast float %3895, 2.000000e+00
  %3998 = fadd fast float %3997, -1.000000e+00
  %3999 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4000 = fmul fast float %3999, %3878
  %4001 = fsub fast float %4000, %3878
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = fmul fast float %3907, %3840
  %4004 = fsub fast float %4003, %3840
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fmul fast float %3964, %3990
  %4007 = fmul fast float %4006, %3961
  %4008 = fmul fast float %4007, %3996
  %4009 = fmul fast float %4008, %3987
  %4010 = fmul fast float %4009, %4002
  %4011 = fmul fast float %4010, %4005
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 1
  %4014 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4015 = fsub fast float %3924, %4014
  %4016 = fmul fast float %4015, %4013
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fmul fast float %4011, %3841
  %4019 = fadd fast float %4011, %3841
  %4020 = fmul fast float %4019, %3850
  %4021 = fsub fast float %4020, %3850
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = and i32 %3880, 128
  %4024 = icmp ne i32 %4023, 0
  %4025 = select i1 %4024, float %4022, float %4018
  %4026 = fmul fast float %4025, %4017
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = fcmp fast ugt float %4026, %4028
  br i1 %4029, label %4030, label %3929

; <label>:4030                                    ; preds = %3949
  %4031 = select i1 %3989, float %4026, float 0.000000e+00
  %4032 = fadd fast float %4031, %3805
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  br i1 %3989, label %3929, label %4034

; <label>:4034                                    ; preds = %4030
  %4035 = and i32 %3880, 4
  %4036 = and i32 %3880, 8
  %4037 = add i32 %3836, 0
  %4038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4037, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4038, %dx.types.Handle %4039, float %3967, float %3970, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4045 = bitcast float %3862 to i32
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4045, 8
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = fmul fast float %4044, %4047
  %4052 = fadd fast float %4051, %4050
  %4053 = fmul fast float %4052, 0x3F70101000000000
  %4054 = add i32 %3837, 0
  %4055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4055, %dx.types.Handle %4039, float %3967, float %3970, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.ResRet.f32 %4056, 3
  %4061 = bitcast float %3856 to i32
  %4062 = and i32 %4061, 255
  %4063 = uitofp i32 %4062 to float
  %4064 = lshr i32 %4061, 8
  %4065 = and i32 %4064, 255
  %4066 = uitofp i32 %4065 to float
  %4067 = lshr i32 %4061, 16
  %4068 = and i32 %4067, 255
  %4069 = uitofp i32 %4068 to float
  %4070 = fmul fast float %4069, 0x3F70101000000000
  %4071 = fmul fast float %4057, %4063
  %4072 = fadd fast float %4071, %4066
  %4073 = fmul fast float %4072, 0x3F70101000000000
  %4074 = fadd fast float %4058, -5.000000e-01
  %4075 = fadd fast float %4060, -5.000000e-01
  %4076 = fmul fast float %4074, %4070
  %4077 = fmul fast float %4075, %4070
  %4078 = fadd fast float %4076, 5.000000e-01
  %4079 = fadd fast float %4077, 5.000000e-01
  %4080 = fmul fast float %4041, %3865
  %4081 = fmul fast float %4042, %3866
  %4082 = fmul fast float %4043, %3867
  %4083 = fmul fast float %4078, 2.000000e+00
  %4084 = fadd fast float %4083, -1.000000e+00
  %4085 = fmul fast float %4079, 2.000000e+00
  %4086 = fadd fast float %4085, -1.000000e+00
  %4087 = fadd fast float %4084, %4086
  %4088 = fmul fast float %4087, 5.000000e-01
  %4089 = fsub fast float %4084, %4086
  %4090 = fmul fast float %4089, 5.000000e-01
  %4091 = call float @dx.op.unary.f32(i32 6, float %4088)  ; FAbs(value)
  %4092 = fsub fast float 1.000000e+00, %4091
  %4093 = call float @dx.op.unary.f32(i32 6, float %4090)  ; FAbs(value)
  %4094 = fsub fast float %4092, %4093
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4088, float %4090, float %4094, float %4088, float %4090, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.unary.f32(i32 25, float %4095)  ; Rsqrt(value)
  %4097 = fmul fast float %4088, %4096
  %4098 = fmul fast float %4090, %4096
  %4099 = fmul fast float %4096, %4094
  %4100 = fmul fast float %4099, %3830
  %4101 = fmul fast float %4099, %3831
  %4102 = fmul fast float %4099, %3832
  %4103 = fmul fast float %4097, %3853
  %4104 = fmul fast float %4097, %3854
  %4105 = fmul fast float %4097, %3855
  %4106 = fadd fast float %4103, %4100
  %4107 = fadd fast float %4104, %4101
  %4108 = fadd fast float %4105, %4102
  %4109 = fmul fast float %4098, %3859
  %4110 = fmul fast float %4098, %3860
  %4111 = fmul fast float %4098, %3861
  %4112 = fadd fast float %4106, %4109
  %4113 = fadd fast float %4107, %4110
  %4114 = fadd fast float %4108, %4111
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4112, float %4113, float %4114, float %4112, float %4113, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = call float @dx.op.unary.f32(i32 25, float %4115)  ; Rsqrt(value)
  %4117 = fmul fast float %4112, %4116
  %4118 = fmul fast float %4113, %4116
  %4119 = fmul fast float %4114, %4116
  %4120 = icmp ne i32 %4036, 0
  %4121 = select i1 %4120, float 1.000000e+00, float 0.000000e+00
  %4122 = fmul fast float %4026, %4121
  %4123 = and i32 %3880, 1
  %4124 = icmp eq i32 %4123, 0
  br i1 %4124, label %4125, label %4129

; <label>:4125                                    ; preds = %4034
  %4126 = fsub fast float %4117, %3813
  %4127 = fsub fast float %4118, %3814
  %4128 = fsub fast float %4119, %3815
  br label %4129

; <label>:4129                                    ; preds = %4125, %4034
  %4130 = phi float [ %4126, %4125 ], [ %4117, %4034 ]
  %4131 = phi float [ %4127, %4125 ], [ %4118, %4034 ]
  %4132 = phi float [ %4128, %4125 ], [ %4119, %4034 ]
  %4133 = fmul float %4132, %4122
  %4134 = fmul float %4131, %4122
  %4135 = fmul float %4130, %4122
  %4136 = fadd fast float %4135, %3813
  %4137 = fadd fast float %4134, %3814
  %4138 = fadd fast float %4133, %3815
  %4139 = icmp ne i32 %4035, 0
  %4140 = select i1 %4139, float 1.000000e+00, float 0.000000e+00
  %4141 = fmul fast float %4026, %4140
  %4142 = fsub fast float %4080, %3820
  %4143 = fsub fast float %4081, %3821
  %4144 = fsub fast float %4082, %3822
  %4145 = fmul fast float %4142, %4141
  %4146 = fmul fast float %4143, %4141
  %4147 = fmul fast float %4144, %4141
  %4148 = fadd fast float %4145, %3820
  %4149 = fadd fast float %4146, %3821
  %4150 = fadd fast float %4147, %3822
  %4151 = fsub fast float %4053, %3819
  %4152 = fmul fast float %4151, %4141
  %4153 = fadd fast float %4152, %3819
  %4154 = fmul fast float %4141, %3809
  %4155 = fsub fast float %3809, %4154
  %4156 = fmul fast float %4141, %3808
  %4157 = fsub fast float %3808, %4156
  %4158 = fadd fast float %4026, %3818
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = fsub fast float %4073, %3817
  %4161 = fmul fast float %4160, %4122
  %4162 = fadd fast float %4161, %3817
  %4163 = fsub fast float %4059, %3816
  %4164 = fmul fast float %4163, %4122
  %4165 = fadd fast float %4164, %3816
  %4166 = call float @dx.op.dot3.f32(i32 55, float %4080, float %4081, float %4082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = fmul fast float %4169, %4166
  %4171 = fadd fast float %4170, %4168
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = bitcast float %3868 to i32
  %4174 = and i32 %4173, 65535
  %4175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4174)  ; LegacyF16ToF32(value)
  %4176 = lshr i32 %4173, 16
  %4177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4176)  ; LegacyF16ToF32(value)
  %4178 = fcmp fast oge float %4175, 0.000000e+00
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = select i1 %4178, float %4175, float %4180
  %4182 = fadd fast float %4181, %4177
  %4183 = fsub fast float %4172, %3807
  %4184 = fmul fast float %4183, %4026
  %4185 = fadd fast float %4184, %3807
  %4186 = fmul fast float %4182, %4026
  %4187 = call float @dx.op.binary.f32(i32 35, float %3806, float %4186)  ; FMax(a,b)
  %4188 = and i32 %3880, 16
  %4189 = icmp eq i32 %4188, 0
  br i1 %4189, label %4212, label %4190

; <label>:4190                                    ; preds = %4129
  %4191 = bitcast float %3874 to i32
  %4192 = add i32 %3871, 0
  %4193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4194 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4193, %dx.types.Handle %4039, float %3967, float %3970, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = and i32 %4191, 65535
  %4199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4198)  ; LegacyF16ToF32(value)
  %4200 = fmul fast float %4195, %3865
  %4201 = fmul fast float %4196, %3866
  %4202 = fmul fast float %4197, %3867
  %4203 = and i32 %3880, 16384
  %4204 = icmp ne i32 %4203, 0
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = select i1 %4204, float %4206, float 1.000000e+00
  %4208 = fmul fast float %4207, %4199
  %4209 = fmul fast float %4200, %4208
  %4210 = fmul fast float %4201, %4208
  %4211 = fmul fast float %4202, %4208
  br label %4212

; <label>:4212                                    ; preds = %4190, %4129
  %4213 = phi float [ %4209, %4190 ], [ 0.000000e+00, %4129 ]
  %4214 = phi float [ %4210, %4190 ], [ 0.000000e+00, %4129 ]
  %4215 = phi float [ %4211, %4190 ], [ 0.000000e+00, %4129 ]
  %4216 = fsub fast float %4213, %3810
  %4217 = fsub fast float %4214, %3811
  %4218 = fsub fast float %4215, %3812
  %4219 = fmul fast float %4216, %4026
  %4220 = fmul fast float %4217, %4026
  %4221 = fmul fast float %4218, %4026
  %4222 = fadd fast float %4219, %3810
  %4223 = fadd fast float %4220, %3811
  %4224 = fadd fast float %4221, %3812
  br label %3929

; <label>:4225                                    ; preds = %3929
  br label %4226

; <label>:4226                                    ; preds = %4225, %3749
  %4227 = phi float [ 0.000000e+00, %3749 ], [ %3930, %4225 ]
  %4228 = phi float [ %3718, %3749 ], [ %3931, %4225 ]
  %4229 = phi float [ %3699, %3749 ], [ %3932, %4225 ]
  %4230 = phi float [ 0.000000e+00, %3749 ], [ %3933, %4225 ]
  %4231 = phi float [ 0.000000e+00, %3749 ], [ %3934, %4225 ]
  %4232 = phi float [ %3693, %3749 ], [ %3935, %4225 ]
  %4233 = phi float [ %3694, %3749 ], [ %3936, %4225 ]
  %4234 = phi float [ %3695, %3749 ], [ %3937, %4225 ]
  %4235 = phi float [ %3744, %3749 ], [ %3938, %4225 ]
  %4236 = phi float [ %3745, %3749 ], [ %3939, %4225 ]
  %4237 = phi float [ %3746, %3749 ], [ %3940, %4225 ]
  %4238 = phi float [ %3698, %3749 ], [ %3941, %4225 ]
  %4239 = phi float [ %3697, %3749 ], [ %3942, %4225 ]
  %4240 = phi float [ 0.000000e+00, %3749 ], [ %3943, %4225 ]
  %4241 = phi float [ %3696, %3749 ], [ %3944, %4225 ]
  %4242 = phi float [ %3690, %3749 ], [ %3945, %4225 ]
  %4243 = phi float [ %3691, %3749 ], [ %3946, %4225 ]
  %4244 = phi float [ %3692, %3749 ], [ %3947, %4225 ]
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4236, float %4237, float %4235, float %4236, float %4237)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.unary.f32(i32 25, float %4245)  ; Rsqrt(value)
  %4247 = fmul fast float %4246, %4235
  %4248 = fmul fast float %4246, %4236
  %4249 = fmul fast float %4246, %4237
  %4250 = fadd fast float %4240, %1134
  %4251 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4247, float %4248, float %4249)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  %4254 = fmul fast float %4253, %4247
  %4255 = fmul fast float %4253, %4248
  %4256 = fmul fast float %4253, %4249
  br label %4257

; <label>:4257                                    ; preds = %4226, %3687
  %4258 = phi float [ %4254, %4226 ], [ %3744, %3687 ]
  %4259 = phi float [ %4255, %4226 ], [ %3745, %3687 ]
  %4260 = phi float [ %4256, %4226 ], [ %3746, %3687 ]
  %4261 = phi float [ %4242, %4226 ], [ %3690, %3687 ]
  %4262 = phi float [ %4243, %4226 ], [ %3691, %3687 ]
  %4263 = phi float [ %4244, %4226 ], [ %3692, %3687 ]
  %4264 = phi float [ %4232, %4226 ], [ %3693, %3687 ]
  %4265 = phi float [ %4233, %4226 ], [ %3694, %3687 ]
  %4266 = phi float [ %4234, %4226 ], [ %3695, %3687 ]
  %4267 = phi float [ %4241, %4226 ], [ %3696, %3687 ]
  %4268 = phi float [ %4251, %4226 ], [ %1134, %3687 ]
  %4269 = phi float [ %4239, %4226 ], [ %3697, %3687 ]
  %4270 = phi float [ %4238, %4226 ], [ %3698, %3687 ]
  %4271 = phi float [ %4231, %4226 ], [ 0.000000e+00, %3687 ]
  %4272 = phi float [ %4230, %4226 ], [ 0.000000e+00, %3687 ]
  %4273 = phi float [ %4227, %4226 ], [ 0.000000e+00, %3687 ]
  %4274 = phi float [ %4228, %4226 ], [ %3718, %3687 ]
  %4275 = phi float [ %4229, %4226 ], [ %3699, %3687 ]
  %4276 = fadd fast float %4267, 0xBFB99999A0000000
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fmul fast float %4277, 0x3FF1C71C80000000
  %4279 = call float @dx.op.binary.f32(i32 36, float %4267, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4280 = fsub fast float 1.000000e+00, %4278
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fmul fast float %4281, %4261
  %4283 = fmul fast float %4281, %4262
  %4284 = fmul fast float %4281, %4263
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = fmul fast float %4278, %4261
  %4289 = fmul fast float %4278, %4262
  %4290 = fmul fast float %4278, %4263
  %4291 = fadd fast float %4288, %4279
  %4292 = fadd fast float %4289, %4279
  %4293 = fadd fast float %4290, %4279
  %4294 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 3
  %4300 = and i32 %4299, 8
  %4301 = icmp ne i32 %4300, 0
  %4302 = call float @dx.op.binary.f32(i32 35, float %4285, float %4261)  ; FMax(a,b)
  %4303 = call float @dx.op.binary.f32(i32 35, float %4286, float %4261)  ; FMax(a,b)
  %4304 = call float @dx.op.binary.f32(i32 35, float %4287, float %4261)  ; FMax(a,b)
  %4305 = call float @dx.op.dot3.f32(i32 55, float %4285, float %4286, float %4287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = select i1 %224, float %4261, float %4285
  %4307 = select i1 %224, float %4305, float %4286
  %4308 = select i1 %224, float 1.000000e+00, float %4287
  %4309 = select i1 %4301, float %4302, float %4306
  %4310 = select i1 %4301, float %4303, float %4307
  %4311 = select i1 %4301, float %4304, float %4308
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4316 = fadd fast float %4313, %162
  %4317 = fadd fast float %4314, %163
  %4318 = fadd fast float %4315, %164
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4322 = fsub fast float %4316, %4320
  %4323 = fsub fast float %4317, %4321
  %4324 = fmul fast float %4322, %4322
  %4325 = fmul fast float %4323, %4323
  %4326 = fadd fast float %4324, %4325
  %4327 = call float @dx.op.unary.f32(i32 24, float %4326)  ; Sqrt(value)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4329 = fcmp fast olt float %4327, %4328
  br i1 %4329, label %4330, label %4397

; <label>:4330                                    ; preds = %4257
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4338 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4339 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4340 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4341 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4342 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4343 = fadd fast float %4340, %4316
  %4344 = fadd fast float %4341, %4317
  %4345 = fadd fast float %4342, %4318
  %4346 = fmul fast float %4343, %4332
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4334, float %4346)  ; FMad(a,b,c)
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4336, float %4347)  ; FMad(a,b,c)
  %4349 = fmul fast float %4343, %4337
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4338, float %4349)  ; FMad(a,b,c)
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4339, float %4350)  ; FMad(a,b,c)
  %4352 = fsub fast float %4348, %4340
  %4353 = fsub fast float %4351, %4341
  %4354 = fsub fast float %4352, %4320
  %4355 = fadd fast float %4354, %4328
  %4356 = fsub fast float %4353, %4321
  %4357 = fadd fast float %4356, %4328
  %4358 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4359 = fmul fast float %4355, %4358
  %4360 = fmul fast float %4357, %4358
  %4361 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4363 = fsub fast float 1.000000e+00, %4361
  %4364 = fsub fast float 1.000000e+00, %4362
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4363, float %4364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = fcmp fast ugt float %4366, 0.000000e+00
  br i1 %4367, label %4368, label %4671

; <label>:4368                                    ; preds = %4330
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 2
  %4371 = fmul fast float %4370, %4366
  %4372 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4373 = fadd fast float %4372, %4371
  %4374 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4375 = fadd fast float %4373, %4342
  %4376 = fmul fast float %4348, %4336
  %4377 = call float @dx.op.tertiary.f32(i32 46, float %4351, float %4339, float %4376)  ; FMad(a,b,c)
  %4378 = call float @dx.op.tertiary.f32(i32 46, float %4375, float %4374, float %4377)  ; FMad(a,b,c)
  %4379 = fsub fast float %4378, %4342
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4382 = fsub fast float %4379, %4381
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4363, float %4364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4363, float %4364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = fadd fast float %4388, %4384
  %4392 = fmul fast float %4391, 0x3F847AE140000000
  %4393 = fadd fast float %4389, %4385
  %4394 = fmul fast float %4393, 0x3F847AE140000000
  %4395 = fadd fast float %4390, %4386
  %4396 = fmul fast float %4395, 0x3F847AE140000000
  br label %4671

; <label>:4397                                    ; preds = %4257
  %4398 = and i32 %200, 1
  %4399 = icmp eq i32 %4398, 0
  br i1 %4399, label %4671, label %4400

; <label>:4400                                    ; preds = %4397
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4408 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4409 = extractvalue %dx.types.CBufRet.f32 %4405, 1
  %4410 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4411 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4412 = extractvalue %dx.types.CBufRet.f32 %4405, 3
  %4413 = fadd fast float %4410, %4316
  %4414 = fadd fast float %4411, %4317
  %4415 = fadd fast float %4412, %4318
  %4416 = fmul fast float %4413, %4402
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4404, float %4416)  ; FMad(a,b,c)
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4406, float %4417)  ; FMad(a,b,c)
  %4419 = fmul fast float %4413, %4407
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4408, float %4419)  ; FMad(a,b,c)
  %4421 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4409, float %4420)  ; FMad(a,b,c)
  %4422 = fsub fast float %4418, %4410
  %4423 = fsub fast float %4421, %4411
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.CBufRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.CBufRet.f32 %4424, 3
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 3
  %4431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.i32 %4431, 0
  %4433 = extractvalue %dx.types.CBufRet.i32 %4431, 1
  %4434 = udiv i32 %4433, %4432
  %4435 = fsub fast float %4422, %4425
  %4436 = fsub fast float %4423, %4426
  %4437 = call float @dx.op.binary.f32(i32 35, float %4435, float 0.000000e+00)  ; FMax(a,b)
  %4438 = call float @dx.op.binary.f32(i32 35, float %4436, float 0.000000e+00)  ; FMax(a,b)
  %4439 = call float @dx.op.binary.f32(i32 36, float %4437, float %4427)  ; FMin(a,b)
  %4440 = call float @dx.op.binary.f32(i32 36, float %4438, float %4428)  ; FMin(a,b)
  %4441 = add i32 %4432, -1
  %4442 = add i32 %4434, -1
  %4443 = fmul fast float %4439, %4430
  %4444 = fmul fast float %4440, %4430
  %4445 = fptoui float %4443 to i32
  %4446 = fptoui float %4444 to i32
  %4447 = call i32 @dx.op.binary.i32(i32 40, i32 %4445, i32 %4441)  ; UMin(a,b)
  %4448 = call i32 @dx.op.binary.i32(i32 40, i32 %4446, i32 %4442)  ; UMin(a,b)
  %4449 = mul i32 %4448, %4432
  %4450 = add i32 %4449, %4447
  %4451 = shl i32 %4450, 2
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = icmp eq i32 %4453, -1
  br i1 %4454, label %4671, label %4455

; <label>:4455                                    ; preds = %4400
  %4456 = mul i32 %4453, 148
  %4457 = add i32 %4456, 4
  %4458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = add i32 %4456, 8
  %4461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = add i32 %4456, 36
  %4464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = add i32 %4456, 60
  %4467 = add i32 %4456, 92
  %4468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4469 = extractvalue %dx.types.ResRet.i32 %4468, 0
  %4470 = add i32 %4456, 116
  %4471 = fsub fast float %4422, %4459
  %4472 = fsub fast float %4423, %4462
  %4473 = fmul fast float %4430, %4471
  %4474 = fmul fast float %4430, %4472
  %4475 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4480 = call float @dx.op.unary.f32(i32 83, float %4475)  ; DerivCoarseX(value)
  %4481 = call float @dx.op.unary.f32(i32 83, float %4477)  ; DerivCoarseX(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %4475)  ; DerivCoarseY(value)
  %4483 = call float @dx.op.unary.f32(i32 84, float %4477)  ; DerivCoarseY(value)
  %4484 = fmul fast float %4480, %4479
  %4485 = fmul fast float %4481, %4479
  %4486 = fmul fast float %4482, %4479
  %4487 = fmul fast float %4483, %4479
  %4488 = call float @dx.op.dot2.f32(i32 54, float %4486, float %4487, float %4486, float %4487)  ; Dot2(ax,ay,bx,by)
  %4489 = call float @dx.op.dot2.f32(i32 54, float %4484, float %4485, float %4484, float %4485)  ; Dot2(ax,ay,bx,by)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4489, float %4488)  ; FMax(a,b)
  %4491 = call float @dx.op.unary.f32(i32 23, float %4490)  ; Log(value)
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4495 = fadd fast float %4494, %4492
  %4496 = call float @dx.op.binary.f32(i32 35, float %4495, float 0.000000e+00)  ; FMax(a,b)
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4499 = fadd fast float %4498, %4496
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4502 = fadd fast float %4499, %4501
  %4503 = add i32 %4469, 0
  %4504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4505 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4504, i32 0)  ; GetDimensions(handle,mipLevel)
  %4506 = extractvalue %dx.types.Dimensions %4505, 0
  %4507 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4506)  ; FirstbitLo(value)
  %4508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.i32 %4508, 1
  %4510 = sub nsw i32 %4509, %4507
  %4511 = sitofp i32 %4510 to float
  %4512 = fsub fast float %4502, %4511
  %4513 = call float @dx.op.binary.f32(i32 35, float %4512, float 0.000000e+00)  ; FMax(a,b)
  %4514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4504, %dx.types.Handle %46, float %4475, float %4477, float %4465, float undef, i32 0, i32 0, i32 undef, float %4513)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = fcmp ule float %4515, 0x3FE0101020000000
  %4517 = extractvalue %dx.types.CBufRet.i32 %4508, 0
  %4518 = and i32 %4517, 128
  %4519 = icmp ne i32 %4518, 0
  %4520 = and i1 %4516, %4519
  br i1 %4520, label %4671, label %4521

; <label>:4521                                    ; preds = %4455
  %4522 = add i32 %4456, 20
  %4523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4522, i32 undef)  ; BufferLoad(srv,index,wot)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = add i32 %4456, 24
  %4526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4525, i32 undef)  ; BufferLoad(srv,index,wot)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = add i32 %4456, 40
  %4529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = add i32 %4456, 96
  %4532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.i32 %4532, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4536 = fmul fast float %4535, %4475
  %4537 = fmul fast float %4535, %4477
  %4538 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4539 = fadd fast float %4536, %4538
  %4540 = fadd fast float %4537, %4538
  %4541 = add i32 %4533, 0
  %4542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4541, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4543 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4542, i32 0)  ; GetDimensions(handle,mipLevel)
  %4544 = extractvalue %dx.types.Dimensions %4543, 0
  %4545 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4544)  ; FirstbitLo(value)
  %4546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.i32 %4546, 1
  %4548 = sub nsw i32 %4547, %4545
  %4549 = sitofp i32 %4548 to float
  %4550 = fsub fast float %4499, %4549
  %4551 = call float @dx.op.binary.f32(i32 35, float %4550, float 0.000000e+00)  ; FMax(a,b)
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4542, %dx.types.Handle %46, float %4539, float %4540, float %4530, float undef, i32 0, i32 0, i32 undef, float %4551)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = fmul fast float %4553, %4524
  %4555 = fadd fast float %4554, %4527
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4564 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4565 = fadd fast float %4561, %4422
  %4566 = fadd fast float %4563, %4423
  %4567 = fadd fast float %4555, %4564
  %4568 = fmul fast float %4565, %4557
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4558, float %4568)  ; FMad(a,b,c)
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4559, float %4569)  ; FMad(a,b,c)
  %4571 = fsub fast float %4570, %4564
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4574 = fsub fast float %4571, %4573
  %4575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.i32 %4575, 0
  %4577 = call i32 @dx.op.binary.i32(i32 40, i32 %4453, i32 %4576)  ; UMin(a,b)
  %4578 = mul i32 %4577, 36
  %4579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = add i32 %4578, 4
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = fmul fast float %4583, %4475
  %4585 = fmul fast float %4583, %4477
  %4586 = extractvalue %dx.types.CBufRet.f32 %4582, 1
  %4587 = fadd fast float %4584, %4586
  %4588 = fadd fast float %4585, %4586
  %4589 = icmp eq i32 %4580, 0
  br i1 %4589, label %4658, label %4590

; <label>:4590                                    ; preds = %4521
  br label %4591

; <label>:4591                                    ; preds = %4648, %4590
  %4592 = phi float [ %4649, %4648 ], [ 0.000000e+00, %4590 ]
  %4593 = phi float [ %4650, %4648 ], [ 0.000000e+00, %4590 ]
  %4594 = phi float [ %4651, %4648 ], [ 0.000000e+00, %4590 ]
  %4595 = phi float [ %4652, %4648 ], [ 0.000000e+00, %4590 ]
  %4596 = phi float [ %4653, %4648 ], [ 0.000000e+00, %4590 ]
  %4597 = phi float [ %4654, %4648 ], [ 0.000000e+00, %4590 ]
  %4598 = phi i32 [ %4655, %4648 ], [ 0, %4590 ]
  %4599 = shl i32 %4598, 2
  %4600 = add i32 %4466, %4599
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = add i32 %4470, %4599
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = add i32 %4605, 0
  %4607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4606, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4608 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4607, i32 0)  ; GetDimensions(handle,mipLevel)
  %4609 = extractvalue %dx.types.Dimensions %4608, 0
  %4610 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4609)  ; FirstbitLo(value)
  %4611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.i32 %4611, 1
  %4613 = sub nsw i32 %4612, %4610
  %4614 = sitofp i32 %4613 to float
  %4615 = fsub fast float %4499, %4614
  %4616 = call float @dx.op.binary.f32(i32 35, float %4615, float 0.000000e+00)  ; FMax(a,b)
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4607, %dx.types.Handle %46, float %4587, float %4588, float %4602, float undef, i32 0, i32 0, i32 undef, float %4616)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = fcmp fast ogt float %4618, 0.000000e+00
  br i1 %4619, label %4620, label %4648

; <label>:4620                                    ; preds = %4591
  %4621 = add i32 %4581, %4599
  %4622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4621, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = and i32 %4623, 32767
  %4625 = mul nuw nsw i32 %4624, 928
  %4626 = add nuw nsw i32 %4625, 48
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = add nuw nsw i32 %4625, 60
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = fmul fast float %4628, %4618
  %4637 = fmul fast float %4629, %4618
  %4638 = fmul fast float %4630, %4618
  %4639 = fadd fast float %4636, %4592
  %4640 = fadd fast float %4637, %4593
  %4641 = fadd fast float %4638, %4594
  %4642 = fmul fast float %4633, %4618
  %4643 = fmul fast float %4634, %4618
  %4644 = fmul fast float %4635, %4618
  %4645 = fadd fast float %4642, %4595
  %4646 = fadd fast float %4643, %4596
  %4647 = fadd fast float %4644, %4597
  br label %4648

; <label>:4648                                    ; preds = %4620, %4591
  %4649 = phi float [ %4639, %4620 ], [ %4592, %4591 ]
  %4650 = phi float [ %4640, %4620 ], [ %4593, %4591 ]
  %4651 = phi float [ %4641, %4620 ], [ %4594, %4591 ]
  %4652 = phi float [ %4645, %4620 ], [ %4595, %4591 ]
  %4653 = phi float [ %4646, %4620 ], [ %4596, %4591 ]
  %4654 = phi float [ %4647, %4620 ], [ %4597, %4591 ]
  %4655 = add nuw i32 %4598, 1
  %4656 = icmp eq i32 %4655, %4580
  br i1 %4656, label %4657, label %4591

; <label>:4657                                    ; preds = %4648
  br label %4658

; <label>:4658                                    ; preds = %4657, %4521
  %4659 = phi float [ 0.000000e+00, %4521 ], [ %4649, %4657 ]
  %4660 = phi float [ 0.000000e+00, %4521 ], [ %4650, %4657 ]
  %4661 = phi float [ 0.000000e+00, %4521 ], [ %4651, %4657 ]
  %4662 = phi float [ 0.000000e+00, %4521 ], [ %4652, %4657 ]
  %4663 = phi float [ 0.000000e+00, %4521 ], [ %4653, %4657 ]
  %4664 = phi float [ 0.000000e+00, %4521 ], [ %4654, %4657 ]
  %4665 = fadd fast float %4662, %4659
  %4666 = fmul fast float %4665, 0x3F847AE140000000
  %4667 = fadd fast float %4663, %4660
  %4668 = fmul fast float %4667, 0x3F847AE140000000
  %4669 = fadd fast float %4664, %4661
  %4670 = fmul fast float %4669, 0x3F847AE140000000
  br label %4671

; <label>:4671                                    ; preds = %4658, %4455, %4400, %4397, %4368, %4330
  %4672 = phi float [ %4382, %4368 ], [ -1.310720e+05, %4330 ], [ %4574, %4658 ], [ -1.310720e+05, %4400 ], [ -1.310720e+05, %4455 ], [ -1.310720e+05, %4397 ]
  %4673 = phi float [ %4392, %4368 ], [ 0.000000e+00, %4330 ], [ %4666, %4658 ], [ 0.000000e+00, %4400 ], [ 0.000000e+00, %4455 ], [ 0.000000e+00, %4397 ]
  %4674 = phi float [ %4394, %4368 ], [ 0.000000e+00, %4330 ], [ %4668, %4658 ], [ 0.000000e+00, %4400 ], [ 0.000000e+00, %4455 ], [ 0.000000e+00, %4397 ]
  %4675 = phi float [ %4396, %4368 ], [ 0.000000e+00, %4330 ], [ %4670, %4658 ], [ 0.000000e+00, %4400 ], [ 0.000000e+00, %4455 ], [ 0.000000e+00, %4397 ]
  %4676 = phi i1 [ true, %4368 ], [ false, %4330 ], [ true, %4658 ], [ false, %4400 ], [ false, %4455 ], [ false, %4397 ]
  %4677 = and i32 %200, 3
  %4678 = icmp eq i32 %4677, 1
  %4679 = select i1 %4678, float 1.000000e+00, float 0.000000e+00
  %4680 = fsub fast float %4672, %164
  %4681 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4682 = select i1 %4676, float %4681, float 1.000000e+00
  %4683 = fmul fast float %4682, %4679
  %4684 = icmp eq i32 %4677, 3
  %4685 = select i1 %4684, float 1.000000e+00, float %4683
  %4686 = call float @dx.op.binary.f32(i32 35, float %4273, float %4685)  ; FMax(a,b)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fcmp fast une float %4687, 0.000000e+00
  %4689 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = call float @dx.op.unary.f32(i32 25, float %4689)  ; Rsqrt(value)
  br i1 %4688, label %4698, label %4691

; <label>:4691                                    ; preds = %4671
  %4692 = fmul fast float %4690, %162
  %4693 = fmul fast float %4690, %163
  %4694 = fmul fast float %4690, %164
  %4695 = fsub fast float -0.000000e+00, %4692
  %4696 = fsub fast float -0.000000e+00, %4693
  %4697 = fsub fast float -0.000000e+00, %4694
  br label %4866

; <label>:4698                                    ; preds = %4671
  %4699 = fmul fast float %162, %4690
  %4700 = fsub fast float -0.000000e+00, %4699
  %4701 = fmul fast float %163, %4690
  %4702 = fsub fast float -0.000000e+00, %4701
  %4703 = fmul fast float %164, %4690
  %4704 = fsub fast float -0.000000e+00, %4703
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4702, float %4704, float %112, float %114, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = fmul fast float %4687, 2.500000e+00
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4687, 0x4013FFFFE0000000
  %4709 = fadd fast float %4708, 0xBFFFFFFFE0000000
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4687, 0x4004000020000000
  %4712 = fadd fast float %4711, 0xBFF8000040000000
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4715 = fmul fast float %4276, 1.000000e+01
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, 2.000000e+00
  %4718 = fsub fast float 3.000000e+00, %4717
  %4719 = fmul fast float %4716, %4716
  %4720 = fmul fast float %4719, %4718
  %4721 = fsub fast float 1.000000e+00, %4720
  %4722 = fsub fast float 0x3FE3333340000000, %4297
  %4723 = fmul fast float %4722, 0x400AAAAAA0000000
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4721, %4724
  %4726 = fmul fast float %4309, 0x3FEA2B8620000000
  %4727 = fmul fast float %4310, 0x3FEA2B8620000000
  %4728 = fmul fast float %4311, 0x3FEA2B8620000000
  %4729 = fadd fast float %4726, 0x3FC81DFBA0000000
  %4730 = fmul fast float %4729, %4309
  %4731 = fadd fast float %4730, 0x3F910E6020000000
  %4732 = fadd fast float %4727, 0x3FC81DFBA0000000
  %4733 = fmul fast float %4732, %4310
  %4734 = fadd fast float %4733, 0x3F910E6020000000
  %4735 = fadd fast float %4728, 0x3FC81DFBA0000000
  %4736 = fmul fast float %4735, %4311
  %4737 = fadd fast float %4736, 0x3F910E6020000000
  %4738 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4741 = fsub fast float %4738, %4309
  %4742 = fsub fast float %4739, %4310
  %4743 = fsub fast float %4740, %4311
  %4744 = fmul fast float %4741, %4714
  %4745 = fmul fast float %4744, %4725
  %4746 = fmul fast float %4742, %4714
  %4747 = fmul fast float %4746, %4725
  %4748 = fmul fast float %4743, %4714
  %4749 = fmul fast float %4748, %4725
  %4750 = fadd fast float %4745, %4309
  %4751 = fadd fast float %4747, %4310
  %4752 = fadd fast float %4749, %4311
  %4753 = fmul fast float %4270, %4270
  %4754 = fmul fast float %4753, %4753
  %4755 = fadd fast float %4710, 1.000000e+00
  %4756 = fsub fast float %4755, %4725
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = call float @dx.op.dot3.f32(i32 55, float %112, float %114, float %116, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fsub fast float 1.000000e+00, %4754
  %4761 = call float @dx.op.binary.f32(i32 36, float %4757, float %4760)  ; FMin(a,b)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4761, float %4762)  ; FMax(a,b)
  %4764 = fadd fast float %4759, 0xBFE4CCCCC0000000
  %4765 = fmul fast float %4764, 0x4006DB6DA0000000
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fmul fast float %4766, 2.000000e+00
  %4768 = fsub fast float 3.000000e+00, %4767
  %4769 = bitcast float %4294 to i32
  %4770 = ashr i32 %4769, 1
  %4771 = add nsw i32 %4770, 532487669
  %4772 = bitcast i32 %4771 to float
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4776, 2.000000e+00
  %4778 = bitcast float %4295 to i32
  %4779 = ashr i32 %4778, 1
  %4780 = add nsw i32 %4779, 532487669
  %4781 = bitcast i32 %4780 to float
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = fmul fast float %4785, 2.000000e+00
  %4787 = bitcast float %4296 to i32
  %4788 = ashr i32 %4787, 1
  %4789 = add nsw i32 %4788, 532487669
  %4790 = bitcast i32 %4789 to float
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = bitcast float %4791 to i32
  %4793 = sub nsw i32 2129859010, %4792
  %4794 = bitcast i32 %4793 to float
  %4795 = fmul fast float %4794, 2.000000e+00
  %4796 = fsub fast float 0x4002A9FBE0000000, %4777
  %4797 = fadd fast float %4777, 0x3FD54FDF00000000
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4800, %4796
  %4802 = fmul fast float %4801, %4801
  %4803 = fsub fast float 0x4002A9FBE0000000, %4786
  %4804 = fadd fast float %4786, 0x3FD54FDF00000000
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4807, %4803
  %4809 = fmul fast float %4808, %4808
  %4810 = fsub fast float 0x4002A9FBE0000000, %4795
  %4811 = fadd fast float %4795, 0x3FD54FDF00000000
  %4812 = bitcast float %4811 to i32
  %4813 = sub nsw i32 2129859010, %4812
  %4814 = bitcast i32 %4813 to float
  %4815 = fmul fast float %4814, %4810
  %4816 = fmul fast float %4815, %4815
  %4817 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4802)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4809)  ; FMax(a,b)
  %4819 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4816)  ; FMax(a,b)
  %4820 = fsub fast float 1.000000e+00, %4705
  %4821 = fadd fast float %4820, %4721
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = fsub fast float 1.000000e+00, %4685
  %4824 = fmul fast float %4763, %4823
  %4825 = fmul fast float %4766, %4766
  %4826 = fmul fast float %4825, %4824
  %4827 = fmul fast float %4826, %4768
  %4828 = fmul fast float %4823, 0xBFE99999A0000000
  %4829 = fmul fast float %4828, %4714
  %4830 = fmul fast float %4829, %4725
  %4831 = fadd fast float %4830, 1.000000e+00
  %4832 = fadd fast float %4297, -1.000000e+00
  %4833 = fmul fast float %4831, %4832
  %4834 = fadd fast float %4833, 1.000000e+00
  %4835 = fsub fast float %4817, %4294
  %4836 = fsub fast float %4818, %4295
  %4837 = fsub fast float %4819, %4296
  %4838 = fmul fast float %4827, %4835
  %4839 = fmul fast float %4827, %4836
  %4840 = fmul fast float %4827, %4837
  %4841 = fadd fast float %4838, %4294
  %4842 = fadd fast float %4839, %4295
  %4843 = fadd fast float %4840, %4296
  %4844 = fsub fast float %112, %4258
  %4845 = fsub fast float %114, %4259
  %4846 = fsub fast float %116, %4260
  %4847 = fmul fast float %4827, %4844
  %4848 = fmul fast float %4827, %4845
  %4849 = fmul fast float %4827, %4846
  %4850 = fadd fast float %4847, %4258
  %4851 = fadd fast float %4848, %4259
  %4852 = fadd fast float %4849, %4260
  %4853 = fmul fast float %4827, %4822
  %4854 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4855 = fsub fast float 1.000000e+00, %4854
  %4856 = fmul fast float %4853, %4855
  %4857 = fadd fast float %4856, %4854
  %4858 = fsub fast float 1.000000e+00, %4270
  %4859 = fmul fast float %4827, %4858
  %4860 = fadd fast float %4859, %4270
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4851, float %4852, float %4850, float %4851, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = call float @dx.op.unary.f32(i32 25, float %4861)  ; Rsqrt(value)
  %4863 = fmul fast float %4850, %4862
  %4864 = fmul fast float %4851, %4862
  %4865 = fmul fast float %4852, %4862
  br label %4866

; <label>:4866                                    ; preds = %4698, %4691
  %4867 = phi float [ %4697, %4691 ], [ %4704, %4698 ]
  %4868 = phi float [ %4696, %4691 ], [ %4702, %4698 ]
  %4869 = phi float [ %4695, %4691 ], [ %4700, %4698 ]
  %4870 = phi float [ %4694, %4691 ], [ %4703, %4698 ]
  %4871 = phi float [ %4693, %4691 ], [ %4701, %4698 ]
  %4872 = phi float [ %4692, %4691 ], [ %4699, %4698 ]
  %4873 = phi float [ %4309, %4691 ], [ %4750, %4698 ]
  %4874 = phi float [ %4310, %4691 ], [ %4751, %4698 ]
  %4875 = phi float [ %4311, %4691 ], [ %4752, %4698 ]
  %4876 = phi float [ %4294, %4691 ], [ %4841, %4698 ]
  %4877 = phi float [ %4295, %4691 ], [ %4842, %4698 ]
  %4878 = phi float [ %4296, %4691 ], [ %4843, %4698 ]
  %4879 = phi float [ %4258, %4691 ], [ %4863, %4698 ]
  %4880 = phi float [ %4259, %4691 ], [ %4864, %4698 ]
  %4881 = phi float [ %4260, %4691 ], [ %4865, %4698 ]
  %4882 = phi float [ %4297, %4691 ], [ %4857, %4698 ]
  %4883 = phi float [ %4270, %4691 ], [ %4860, %4698 ]
  %4884 = fsub fast float -0.000000e+00, %164
  %4885 = select i1 %224, float 0.000000e+00, float %4878
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4880, float %4881, float %4869, float %4868, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4871, float %4870, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = fmul fast float %4888, 2.000000e+00
  %4890 = fmul fast float %4889, %4879
  %4891 = fmul fast float %4889, %4880
  %4892 = fmul fast float %4889, %4881
  %4893 = fsub fast float %4872, %4890
  %4894 = fsub fast float %4871, %4891
  %4895 = fsub fast float %4870, %4892
  %4896 = call float @dx.op.binary.f32(i32 36, float %4883, float 1.000000e+00)  ; FMin(a,b)
  %4897 = fsub fast float 1.000000e+00, %4883
  %4898 = bitcast float %4897 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = call float @dx.op.dot3.f32(i32 55, float %74, float %70, float %66, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = fmul fast float %4900, 0x3FD20DD760000000
  %4902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %4903 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = fcmp fast oeq float %4903, 0.000000e+00
  %4905 = fcmp fast oeq float %4902, 0.000000e+00
  %4906 = or i1 %4905, %4904
  br i1 %4906, label %4936, label %4907

; <label>:4907                                    ; preds = %4866
  %4908 = fsub fast float -0.000000e+00, %77
  %4909 = fsub fast float -0.000000e+00, %75
  %4910 = call float @dx.op.unary.f32(i32 24, float %4903)  ; Sqrt(value)
  %4911 = fdiv fast float %4910, %4902
  %4912 = fcmp fast ogt float %4911, 0x3FFB6F8900000000
  %4913 = select i1 %4912, float 0x3FFB6F8900000000, float %4911
  %4914 = fmul fast float %4913, 0x3FE8A23460000000
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4913, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4917 = fmul fast float %4915, %4902
  %4918 = fmul fast float %4916, 0x3FF279A740000000
  %4919 = fadd fast float %4918, -1.000000e+00
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %76, float %4908, float %4909, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.unary.f32(i32 25, float %4920)  ; Rsqrt(value)
  %4922 = fmul fast float %4921, %4908
  %4923 = fmul fast float %4921, %4909
  %4924 = fmul fast float %4921, %76
  %4925 = fmul fast float %4919, %4919
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fmul fast float %4916, 0x40005F8BE0000000
  %4928 = fsub fast float 0x400C5BF8A0000000, %4927
  %4929 = fdiv fast float %4917, %4928
  %4930 = fmul fast float %4929, 0x3FEE31C3C0000000
  %4931 = fmul fast float %4930, %4926
  %4932 = fmul fast float %4916, 0x3FDACB7480000000
  %4933 = fadd fast float %4932, 0xBFD7347680000000
  %4934 = fmul fast float %4933, %4929
  %4935 = fmul fast float %4934, %4926
  br label %4936

; <label>:4936                                    ; preds = %4907, %4866
  %4937 = phi float [ %4922, %4907 ], [ 0.000000e+00, %4866 ]
  %4938 = phi float [ %4923, %4907 ], [ 0.000000e+00, %4866 ]
  %4939 = phi float [ %4924, %4907 ], [ 0.000000e+00, %4866 ]
  %4940 = phi float [ %4931, %4907 ], [ 0.000000e+00, %4866 ]
  %4941 = phi float [ %4935, %4907 ], [ 0.000000e+00, %4866 ]
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = fmul fast float %4942, %4942
  %4944 = fmul fast float %4943, 0x3FEE471020000000
  %4945 = fadd fast float %4944, 0xBFD42F6020000000
  %4946 = fmul fast float %4902, 0x3FD20DD760000000
  %4947 = fmul fast float %4945, %4941
  %4948 = fmul fast float %4940, 0x3FDF454380000000
  %4949 = fmul fast float %4948, %4942
  %4950 = fadd fast float %4949, %4946
  %4951 = fadd fast float %4950, %4947
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fmul fast float %4952, 0x3FDF454380000000
  %4954 = fmul fast float %4952, %4952
  %4955 = fmul fast float %4954, 0x3FEE471020000000
  %4956 = fadd fast float %4955, 0xBFD42F6020000000
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4940, float %4941, float 0x3FD20DD760000000, float %4953, float %4956)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %4959 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = fcmp fast oeq float %4959, 0.000000e+00
  %4961 = fcmp fast oeq float %4958, 0.000000e+00
  %4962 = or i1 %4961, %4960
  br i1 %4962, label %4992, label %4963

; <label>:4963                                    ; preds = %4936
  %4964 = fsub fast float -0.000000e+00, %73
  %4965 = fsub fast float -0.000000e+00, %71
  %4966 = call float @dx.op.unary.f32(i32 24, float %4959)  ; Sqrt(value)
  %4967 = fdiv fast float %4966, %4958
  %4968 = fcmp fast ogt float %4967, 0x3FFB6F8900000000
  %4969 = select i1 %4968, float 0x3FFB6F8900000000, float %4967
  %4970 = fmul fast float %4969, 0x3FE8A23460000000
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4969, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4973 = fmul fast float %4971, %4958
  %4974 = fmul fast float %4972, 0x3FF279A740000000
  %4975 = fadd fast float %4974, -1.000000e+00
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %72, float %4964, float %4965, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = call float @dx.op.unary.f32(i32 25, float %4976)  ; Rsqrt(value)
  %4978 = fmul fast float %4977, %4964
  %4979 = fmul fast float %4977, %4965
  %4980 = fmul fast float %4977, %72
  %4981 = fmul fast float %4975, %4975
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = fmul fast float %4972, 0x40005F8BE0000000
  %4984 = fsub fast float 0x400C5BF8A0000000, %4983
  %4985 = fdiv fast float %4973, %4984
  %4986 = fmul fast float %4985, 0x3FEE31C3C0000000
  %4987 = fmul fast float %4986, %4982
  %4988 = fmul fast float %4972, 0x3FDACB7480000000
  %4989 = fadd fast float %4988, 0xBFD7347680000000
  %4990 = fmul fast float %4989, %4985
  %4991 = fmul fast float %4990, %4982
  br label %4992

; <label>:4992                                    ; preds = %4963, %4936
  %4993 = phi float [ %4978, %4963 ], [ 0.000000e+00, %4936 ]
  %4994 = phi float [ %4979, %4963 ], [ 0.000000e+00, %4936 ]
  %4995 = phi float [ %4980, %4963 ], [ 0.000000e+00, %4936 ]
  %4996 = phi float [ %4987, %4963 ], [ 0.000000e+00, %4936 ]
  %4997 = phi float [ %4991, %4963 ], [ 0.000000e+00, %4936 ]
  %4998 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4999 = fmul fast float %4998, %4998
  %5000 = fmul fast float %4999, 0x3FEE471020000000
  %5001 = fadd fast float %5000, 0xBFD42F6020000000
  %5002 = fmul fast float %4958, 0x3FD20DD760000000
  %5003 = fmul fast float %5001, %4997
  %5004 = fmul fast float %4996, 0x3FDF454380000000
  %5005 = fmul fast float %5004, %4998
  %5006 = fadd fast float %5005, %5002
  %5007 = fadd fast float %5006, %5003
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = fmul fast float %5008, 0x3FDF454380000000
  %5010 = fmul fast float %5008, %5008
  %5011 = fmul fast float %5010, 0x3FEE471020000000
  %5012 = fadd fast float %5011, 0xBFD42F6020000000
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4996, float %4997, float 0x3FD20DD760000000, float %5009, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5015 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = fcmp fast oeq float %5015, 0.000000e+00
  %5017 = fcmp fast oeq float %5014, 0.000000e+00
  %5018 = or i1 %5017, %5016
  br i1 %5018, label %5048, label %5019

; <label>:5019                                    ; preds = %4992
  %5020 = fsub fast float -0.000000e+00, %69
  %5021 = fsub fast float -0.000000e+00, %67
  %5022 = call float @dx.op.unary.f32(i32 24, float %5015)  ; Sqrt(value)
  %5023 = fdiv fast float %5022, %5014
  %5024 = fcmp fast ogt float %5023, 0x3FFB6F8900000000
  %5025 = select i1 %5024, float 0x3FFB6F8900000000, float %5023
  %5026 = fmul fast float %5025, 0x3FE8A23460000000
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5025, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5029 = fmul fast float %5027, %5014
  %5030 = fmul fast float %5028, 0x3FF279A740000000
  %5031 = fadd fast float %5030, -1.000000e+00
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5021, float %68, float %5020, float %5021, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 25, float %5032)  ; Rsqrt(value)
  %5034 = fmul fast float %5033, %5020
  %5035 = fmul fast float %5033, %5021
  %5036 = fmul fast float %5033, %68
  %5037 = fmul fast float %5031, %5031
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = fmul fast float %5028, 0x40005F8BE0000000
  %5040 = fsub fast float 0x400C5BF8A0000000, %5039
  %5041 = fdiv fast float %5029, %5040
  %5042 = fmul fast float %5041, 0x3FEE31C3C0000000
  %5043 = fmul fast float %5042, %5038
  %5044 = fmul fast float %5028, 0x3FDACB7480000000
  %5045 = fadd fast float %5044, 0xBFD7347680000000
  %5046 = fmul fast float %5045, %5041
  %5047 = fmul fast float %5046, %5038
  br label %5048

; <label>:5048                                    ; preds = %5019, %4992
  %5049 = phi float [ %5034, %5019 ], [ 0.000000e+00, %4992 ]
  %5050 = phi float [ %5035, %5019 ], [ 0.000000e+00, %4992 ]
  %5051 = phi float [ %5036, %5019 ], [ 0.000000e+00, %4992 ]
  %5052 = phi float [ %5043, %5019 ], [ 0.000000e+00, %4992 ]
  %5053 = phi float [ %5047, %5019 ], [ 0.000000e+00, %4992 ]
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = fmul fast float %5054, %5054
  %5056 = fmul fast float %5055, 0x3FEE471020000000
  %5057 = fadd fast float %5056, 0xBFD42F6020000000
  %5058 = fmul fast float %5014, 0x3FD20DD760000000
  %5059 = fmul fast float %5057, %5053
  %5060 = fmul fast float %5052, 0x3FDF454380000000
  %5061 = fmul fast float %5060, %5054
  %5062 = fadd fast float %5061, %5058
  %5063 = fadd fast float %5062, %5059
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = fmul fast float %5064, 0x3FDF454380000000
  %5066 = fmul fast float %5064, %5064
  %5067 = fmul fast float %5066, 0x3FEE471020000000
  %5068 = fadd fast float %5067, 0xBFD42F6020000000
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5052, float %5053, float 0x3FD20DD760000000, float %5065, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.binary.f32(i32 35, float %4951, float 0.000000e+00)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float %5063, float 0.000000e+00)  ; FMax(a,b)
  %5073 = call float @dx.op.binary.f32(i32 35, float %4957, float 0.000000e+00)  ; FMax(a,b)
  %5074 = call float @dx.op.binary.f32(i32 35, float %5013, float 0.000000e+00)  ; FMax(a,b)
  %5075 = call float @dx.op.binary.f32(i32 35, float %5069, float 0.000000e+00)  ; FMax(a,b)
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5078 = call float @dx.op.binary.f32(i32 36, float %4873, float %5077)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %4896
  %5080 = fmul fast float %5078, %5079
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = bitcast float %5081 to i32
  %5083 = sub nsw i32 2129859010, %5082
  %5084 = bitcast i32 %5083 to float
  %5085 = call float @dx.op.binary.f32(i32 36, float %4874, float %5077)  ; FMin(a,b)
  %5086 = fmul fast float %5085, %5079
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = bitcast float %5087 to i32
  %5089 = sub nsw i32 2129859010, %5088
  %5090 = bitcast i32 %5089 to float
  %5091 = call float @dx.op.binary.f32(i32 36, float %4875, float %5077)  ; FMin(a,b)
  %5092 = fmul fast float %5091, %5079
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = bitcast float %5093 to i32
  %5095 = sub nsw i32 2129859010, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5070, %4896
  %5098 = fmul fast float %5097, %5084
  %5099 = fmul fast float %5071, %4896
  %5100 = fmul fast float %5099, %5090
  %5101 = fmul fast float %5072, %4896
  %5102 = fmul fast float %5101, %5096
  %5103 = call float @dx.op.binary.f32(i32 36, float %4876, float %5077)  ; FMin(a,b)
  %5104 = fmul fast float %5103, %5079
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = bitcast float %5105 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = call float @dx.op.binary.f32(i32 36, float %4877, float %5077)  ; FMin(a,b)
  %5110 = fmul fast float %5109, %5079
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = bitcast float %5111 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = call float @dx.op.binary.f32(i32 36, float %4885, float %5077)  ; FMin(a,b)
  %5116 = fmul fast float %5115, %5079
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = bitcast float %5117 to i32
  %5119 = sub nsw i32 2129859010, %5118
  %5120 = bitcast i32 %5119 to float
  %5121 = fmul fast float %5073, %4896
  %5122 = fmul fast float %5121, %5108
  %5123 = fmul fast float %5074, %4896
  %5124 = fmul fast float %5123, %5114
  %5125 = fmul fast float %5075, %4896
  %5126 = fmul fast float %5125, %5120
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5100, float %5102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = select i1 %224, float 0.000000e+00, float %5098
  %5129 = select i1 %224, float %5127, float %5100
  %5130 = select i1 %224, float 0.000000e+00, float %5102
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5124, float %5126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = select i1 %224, float 0.000000e+00, float %5122
  %5133 = select i1 %224, float %5131, float %5124
  %5134 = select i1 %224, float 0.000000e+00, float %5126
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5137 = fsub fast float %94, %5136
  %5138 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5139 = fmul fast float %5137, %5138
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %4900, 0x4071A18460000000
  %5142 = fadd fast float %5141, 0x3F0FFB4800000000
  %5143 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5144 = fadd fast float %5143, 0x4006B851E0000000
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5148 = fsub fast float %5146, %5144
  %5149 = fcmp fast ogt float %5148, 0.000000e+00
  %5150 = fcmp fast olt float %5148, 0.000000e+00
  %5151 = zext i1 %5149 to i32
  %5152 = zext i1 %5150 to i32
  %5153 = sub nsw i32 %5151, %5152
  %5154 = sitofp i32 %5153 to float
  %5155 = call float @dx.op.unary.f32(i32 6, float %5148)  ; FAbs(value)
  %5156 = fsub fast float %5155, %5147
  %5157 = call float @dx.op.binary.f32(i32 35, float %5156, float 0.000000e+00)  ; FMax(a,b)
  %5158 = fmul fast float %5154, %5157
  %5159 = fadd fast float %5143, %5158
  %5160 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5161 = fmul fast float %5160, 0x3F50624DE0000000
  %5162 = fcmp fast oeq float %4901, 0.000000e+00
  %5163 = fdiv fast float 0x400C5BF880000000, %4900
  %5164 = fmul fast float %5161, %5163
  %5165 = select i1 %5162, float 1.000000e+00, float %5164
  %5166 = call float @dx.op.binary.f32(i32 35, float %5165, float 1.000000e+00)  ; FMax(a,b)
  %5167 = fadd fast float %5166, -1.000000e+00
  %5168 = fmul fast float %5167, %5140
  %5169 = fadd fast float %5168, 1.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 6, float %5169)  ; FAbs(value)
  %5171 = fmul fast float %5170, %5128
  %5172 = fmul fast float %5170, %5129
  %5173 = fmul fast float %5170, %5130
  %5174 = fmul fast float %4887, 9.843750e-01
  %5175 = fmul fast float %4882, 9.843750e-01
  %5176 = fadd fast float %5174, 7.812500e-03
  %5177 = fadd fast float %5175, 7.812500e-03
  %5178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5176, float %5177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 2
  %5180 = extractvalue %dx.types.ResRet.f32 %5178, 3
  %5181 = fmul fast float %5179, %4876
  %5182 = fmul fast float %5179, %4877
  %5183 = fmul fast float %5179, %4885
  %5184 = fadd fast float %5181, %5180
  %5185 = fadd fast float %5182, %5180
  %5186 = fadd fast float %5183, %5180
  %5187 = fcmp fast ogt float %4271, 0.000000e+00
  br i1 %5187, label %5188, label %5214

; <label>:5188                                    ; preds = %5048
  %5189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4271, float %4887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.ResRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.ResRet.f32 %5189, 2
  %5193 = fadd fast float %5190, -5.000000e-01
  %5194 = fadd fast float %5191, -5.000000e-01
  %5195 = fadd fast float %5192, -5.000000e-01
  %5196 = fsub fast float 1.000000e+00, %4876
  %5197 = fsub fast float 1.000000e+00, %4877
  %5198 = fsub fast float 1.000000e+00, %4885
  %5199 = fmul fast float %4876, 4.000000e+00
  %5200 = fmul fast float %5199, %5196
  %5201 = fmul fast float %5200, %5193
  %5202 = fmul fast float %4877, 4.000000e+00
  %5203 = fmul fast float %5202, %5197
  %5204 = fmul fast float %5203, %5194
  %5205 = fmul fast float %4885, 4.000000e+00
  %5206 = fmul fast float %5205, %5198
  %5207 = fmul fast float %5206, %5195
  %5208 = fadd fast float %5201, %5184
  %5209 = fadd fast float %5204, %5185
  %5210 = fadd fast float %5207, %5186
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  br label %5214

; <label>:5214                                    ; preds = %5188, %5048
  %5215 = phi float [ %5211, %5188 ], [ %5184, %5048 ]
  %5216 = phi float [ %5212, %5188 ], [ %5185, %5048 ]
  %5217 = phi float [ %5213, %5188 ], [ %5186, %5048 ]
  %5218 = call float @dx.op.binary.f32(i32 35, float %5216, float %5217)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5215, float %5218)  ; FMax(a,b)
  %5220 = fsub fast float 1.000000e+00, %5219
  %5221 = fmul fast float %162, %162
  %5222 = fmul fast float %163, %163
  %5223 = fadd fast float %5222, %5221
  %5224 = fmul fast float %164, %164
  %5225 = fadd fast float %5223, %5224
  %5226 = call float @dx.op.unary.f32(i32 24, float %5225)  ; Sqrt(value)
  %5227 = fsub fast float %5226, %5136
  %5228 = fmul fast float %5227, %5138
  %5229 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5232 = fmul fast float %5229, %59
  %5233 = fmul fast float %5232, %5230
  %5234 = fmul fast float %5232, %5231
  %5235 = fadd fast float %5234, 1.000000e+00
  %5236 = fmul fast float %5220, %5171
  %5237 = fmul fast float %5236, %5235
  %5238 = fmul fast float %5220, %5172
  %5239 = fmul fast float %5238, %5235
  %5240 = fmul fast float %5220, %5173
  %5241 = fmul fast float %5240, %5235
  %5242 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fcmp fast ogt float %5242, 0x3E7FF19E20000000
  %5244 = fdiv fast float 1.000000e+00, %5242
  %5245 = select i1 %5243, float %5244, float 0.000000e+00
  %5246 = fmul fast float %5245, %4873
  %5247 = fmul fast float %5245, %4874
  %5248 = fmul fast float %5245, %4875
  %5249 = fadd fast float %5246, -1.000000e+00
  %5250 = fadd fast float %5247, -1.000000e+00
  %5251 = fadd fast float %5248, -1.000000e+00
  %5252 = fmul fast float %5249, 5.000000e-01
  %5253 = fmul fast float %5250, 5.000000e-01
  %5254 = fmul fast float %5251, 5.000000e-01
  %5255 = fadd fast float %5252, 1.000000e+00
  %5256 = fadd fast float %5253, 1.000000e+00
  %5257 = fadd fast float %5254, 1.000000e+00
  %5258 = fadd fast float %5233, %4272
  %5259 = fmul fast float %5215, %5132
  %5260 = fmul fast float %5216, %5133
  %5261 = fmul fast float %5217, %5134
  %5262 = fsub fast float 1.000000e+00, %4887
  %5263 = bitcast float %5262 to i32
  %5264 = sitofp i32 %5263 to float
  %5265 = fmul fast float %5264, 5.000000e+00
  %5266 = fadd fast float %5265, 0xC1EFBF8940000000
  %5267 = fptosi float %5266 to i32
  %5268 = bitcast i32 %5267 to float
  %5269 = fmul fast float %5258, %5268
  %5270 = fmul fast float %5236, %5269
  %5271 = fmul fast float %5270, %5255
  %5272 = fmul fast float %5238, %5269
  %5273 = fmul fast float %5272, %5256
  %5274 = fmul fast float %5240, %5269
  %5275 = fmul fast float %5274, %5257
  %5276 = fmul fast float %5237, %4268
  %5277 = fmul fast float %5239, %4268
  %5278 = fmul fast float %5241, %4268
  %5279 = fadd fast float %5259, %4264
  %5280 = fadd fast float %5279, %5271
  %5281 = fmul fast float %5280, %4268
  %5282 = fadd fast float %5260, %4265
  %5283 = fadd fast float %5282, %5273
  %5284 = fmul fast float %5283, %4268
  %5285 = fadd fast float %5261, %4266
  %5286 = fadd fast float %5285, %5275
  %5287 = fmul fast float %5286, %4268
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 3
  %5290 = fcmp fast oeq float %5289, 0.000000e+00
  br i1 %5290, label %6361, label %5291

; <label>:5291                                    ; preds = %5214
  %5292 = extractvalue %dx.types.CBufRet.f32 %5288, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5288, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5288, 2
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5297, float %5298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = select i1 %224, float %5300, float %5296
  %5304 = select i1 %224, float %5302, float %5297
  %5305 = select i1 %224, float %5301, float %5298
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5308 = fmul fast float %5307, %112
  %5309 = fmul fast float %5307, %114
  %5310 = fmul fast float %5307, %116
  %5311 = fadd fast float %5308, %162
  %5312 = fadd fast float %5309, %163
  %5313 = fadd fast float %5310, %164
  %5314 = fcmp fast olt float %5289, 0.000000e+00
  br i1 %5314, label %5939, label %5315

; <label>:5315                                    ; preds = %5291
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5316, 2
  %5320 = extractvalue %dx.types.CBufRet.f32 %5316, 3
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.CBufRet.f32 %5321, 2
  %5325 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5330 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5331 = fmul fast float %5317, %5311
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5318, float %5331)  ; FMad(a,b,c)
  %5333 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5319, float %5332)  ; FMad(a,b,c)
  %5334 = fadd fast float %5333, %5320
  %5335 = fmul fast float %5322, %5311
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5323, float %5335)  ; FMad(a,b,c)
  %5337 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5324, float %5336)  ; FMad(a,b,c)
  %5338 = fadd fast float %5337, %5325
  %5339 = fmul fast float %5327, %5311
  %5340 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5328, float %5339)  ; FMad(a,b,c)
  %5341 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5329, float %5340)  ; FMad(a,b,c)
  %5342 = fadd fast float %5341, %5330
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5347 = fmul fast float %5346, %5334
  %5348 = fmul fast float %5346, %5338
  %5349 = fadd fast float %5347, %5344
  %5350 = fadd fast float %5348, %5345
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.CBufRet.f32 %5351, 3
  %5355 = fmul fast float %5354, %5334
  %5356 = fmul fast float %5354, %5338
  %5357 = fadd fast float %5355, %5352
  %5358 = fadd fast float %5356, %5353
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %5361 = fsub fast float %5360, %5342
  %5362 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5363 = fmul fast float %5361, %5362
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5369 = fadd fast float %5368, %5366
  %5370 = fcmp fast ogt float %5369, 0.000000e+00
  br i1 %5370, label %5371, label %5395

; <label>:5371                                    ; preds = %5315
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = fsub fast float %5357, %5373
  %5376 = fsub fast float %5358, %5374
  %5377 = fcmp fast olt float %5375, 0.000000e+00
  %5378 = fcmp fast olt float %5376, 0.000000e+00
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = select i1 %5377, float %5380, float %5382
  %5385 = select i1 %5378, float %5381, float %5383
  %5386 = fmul fast float %5384, %5375
  %5387 = fmul fast float %5385, %5376
  %5388 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5389 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5391 = call float @dx.op.binary.f32(i32 35, float %5388, float %5389)  ; FMax(a,b)
  %5392 = fsub fast float %5390, %5391
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5394 = fmul fast float %5393, %5365
  br label %5395

; <label>:5395                                    ; preds = %5371, %5315
  %5396 = phi float [ %5394, %5371 ], [ 0.000000e+00, %5315 ]
  %5397 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5398 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5399 = fadd fast float %5398, %5397
  %5400 = fcmp fast ogt float %5399, 0.000000e+00
  %5401 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  br i1 %5400, label %5402, label %5425

; <label>:5402                                    ; preds = %5395
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5406 = fsub fast float %5349, %5404
  %5407 = fsub fast float %5350, %5405
  %5408 = fcmp fast olt float %5406, 0.000000e+00
  %5409 = fcmp fast olt float %5407, 0.000000e+00
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5414 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5415 = select i1 %5408, float %5411, float %5413
  %5416 = select i1 %5409, float %5412, float %5414
  %5417 = fmul fast float %5415, %5406
  %5418 = fmul fast float %5416, %5407
  %5419 = call float @dx.op.unary.f32(i32 6, float %5417)  ; FAbs(value)
  %5420 = call float @dx.op.unary.f32(i32 6, float %5418)  ; FAbs(value)
  %5421 = call float @dx.op.binary.f32(i32 35, float %5419, float %5420)  ; FMax(a,b)
  %5422 = fsub fast float %5401, %5421
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = fmul fast float %5423, %5365
  br label %5425

; <label>:5425                                    ; preds = %5402, %5395
  %5426 = phi float [ %5424, %5402 ], [ 0.000000e+00, %5395 ]
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = fsub fast float %5334, %5431
  %5434 = fsub fast float %5338, %5432
  %5435 = fcmp fast olt float %5433, 0.000000e+00
  %5436 = fcmp fast olt float %5434, 0.000000e+00
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = select i1 %5435, float %5438, float %5440
  %5443 = select i1 %5436, float %5439, float %5441
  %5444 = fmul fast float %5442, %5433
  %5445 = fmul fast float %5443, %5434
  %5446 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5447 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5446, float %5447)  ; FMax(a,b)
  %5449 = fsub fast float %5401, %5448
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = call float @dx.op.binary.f32(i32 36, float %5450, float %5429)  ; FMin(a,b)
  %5452 = fmul fast float %5451, %5365
  %5453 = fsub fast float %5426, %5452
  %5454 = fsub fast float %5396, %5426
  %5455 = fsub fast float %5454, %5452
  %5456 = call float @dx.op.binary.f32(i32 35, float %5426, float %5396)  ; FMax(a,b)
  %5457 = call float @dx.op.binary.f32(i32 35, float %5452, float %5456)  ; FMax(a,b)
  %5458 = fcmp fast olt float %5457, 1.000000e+00
  br i1 %5458, label %5459, label %5857, !dx.controlflow.hints !96

; <label>:5459                                    ; preds = %5425
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = fcmp fast une float %5461, 0.000000e+00
  br i1 %5462, label %5463, label %5857, !dx.controlflow.hints !97

; <label>:5463                                    ; preds = %5459
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5468 = extractvalue %dx.types.CBufRet.f32 %5464, 3
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5473 = extractvalue %dx.types.CBufRet.f32 %5469, 3
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.CBufRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5478 = extractvalue %dx.types.CBufRet.f32 %5474, 3
  %5479 = fmul fast float %5465, %5311
  %5480 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5466, float %5479)  ; FMad(a,b,c)
  %5481 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5467, float %5480)  ; FMad(a,b,c)
  %5482 = fadd fast float %5481, %5468
  %5483 = fmul fast float %5470, %5311
  %5484 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5471, float %5483)  ; FMad(a,b,c)
  %5485 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5472, float %5484)  ; FMad(a,b,c)
  %5486 = fadd fast float %5485, %5473
  %5487 = fmul fast float %5475, %5311
  %5488 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5476, float %5487)  ; FMad(a,b,c)
  %5489 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5477, float %5488)  ; FMad(a,b,c)
  %5490 = fadd fast float %5489, %5478
  %5491 = fcmp fast oge float %5482, 1.000000e+00
  %5492 = fcmp fast oge float %5486, 1.000000e+00
  %5493 = or i1 %5491, %5492
  %5494 = fcmp fast olt float %5482, 0.000000e+00
  %5495 = fcmp fast olt float %5486, 0.000000e+00
  %5496 = or i1 %5494, %5495
  %5497 = or i1 %5493, %5496
  br i1 %5497, label %5857, label %5498, !dx.controlflow.hints !98

; <label>:5498                                    ; preds = %5463
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.CBufRet.f32 %5499, 2
  %5503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.i32 %5503, 2
  %5505 = uitofp i32 %5504 to float
  %5506 = extractvalue %dx.types.CBufRet.i32 %5503, 3
  %5507 = uitofp i32 %5506 to float
  %5508 = extractvalue %dx.types.CBufRet.f32 %5499, 3
  %5509 = fmul fast float %5508, 2.000000e+00
  %5510 = fsub fast float %5482, %5500
  %5511 = fsub fast float %5486, %5501
  %5512 = fmul fast float %5509, %5510
  %5513 = fmul fast float %5509, %5511
  %5514 = fdiv fast float 1.000000e+00, %5294
  %5515 = fmul fast float %5513, %5514
  %5516 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5517 = fmul fast float %5502, %5313
  %5518 = fmul fast float %5517, %5509
  %5519 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5520 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5521 = call float @dx.op.binary.f32(i32 35, float %5519, float %5516)  ; FMax(a,b)
  %5522 = call float @dx.op.binary.f32(i32 35, float %5520, float %5521)  ; FMax(a,b)
  %5523 = fmul fast float %5522, 2.000000e+00
  %5524 = call float @dx.op.unary.f32(i32 23, float %5523)  ; Log(value)
  %5525 = call float @dx.op.binary.f32(i32 35, float %5524, float %5505)  ; FMax(a,b)
  %5526 = call float @dx.op.unary.f32(i32 22, float %5525)  ; Frc(value)
  %5527 = fadd fast float %5526, 0xBFEA666660000000
  %5528 = fmul fast float %5527, 8.000000e+00
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = call float @dx.op.unary.f32(i32 27, float %5525)  ; Round_ni(value)
  %5531 = fadd fast float %5530, %5529
  %5532 = call float @dx.op.binary.f32(i32 36, float %5531, float %5507)  ; FMin(a,b)
  %5533 = call float @dx.op.unary.f32(i32 27, float %5532)  ; Round_ni(value)
  %5534 = fsub fast float -0.000000e+00, %5533
  %5535 = call float @dx.op.unary.f32(i32 21, float %5534)  ; Exp(value)
  %5536 = fmul fast float %5535, %5509
  %5537 = fmul fast float %5536, %5482
  %5538 = fmul fast float %5536, %5486
  %5539 = fmul fast float %5537, 2.500000e-01
  %5540 = fmul fast float %5538, 2.500000e-01
  %5541 = fadd fast float %5539, 5.000000e-01
  %5542 = fadd fast float %5540, 5.000000e-01
  %5543 = fsub fast float %5507, %5505
  %5544 = fptoui float %5543 to i32
  %5545 = add i32 %5544, 320
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5545)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = fcmp fast une float %5532, %5507
  %5550 = fsub fast float %5482, %5547
  %5551 = fsub fast float %5486, %5548
  %5552 = call float @dx.op.unary.f32(i32 6, float %5550)  ; FAbs(value)
  %5553 = call float @dx.op.unary.f32(i32 6, float %5551)  ; FAbs(value)
  %5554 = fmul fast float %5552, %5536
  %5555 = fmul fast float %5553, %5536
  %5556 = fcmp fast olt float %5554, 1.000000e+00
  %5557 = fcmp fast olt float %5555, 1.000000e+00
  %5558 = and i1 %5556, %5557
  %5559 = or i1 %5549, %5558
  br i1 %5559, label %5560, label %5857, !dx.controlflow.hints !99

; <label>:5560                                    ; preds = %5498
  %5561 = fmul fast float %5538, 5.000000e-01
  %5562 = fmul fast float %5537, 5.000000e-01
  %5563 = fadd fast float %5561, 5.000000e-01
  %5564 = fadd fast float %5562, 5.000000e-01
  %5565 = sitofp i32 %5504 to float
  %5566 = fsub fast float %5532, %5565
  %5567 = call float @dx.op.unary.f32(i32 27, float %5566)  ; Round_ni(value)
  %5568 = call float @dx.op.unary.f32(i32 22, float %5532)  ; Frc(value)
  %5569 = call float @dx.op.unary.f32(i32 22, float %5564)  ; Frc(value)
  %5570 = call float @dx.op.unary.f32(i32 22, float %5563)  ; Frc(value)
  %5571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5569, float %5570, float %5567, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5572 = extractvalue %dx.types.ResRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.ResRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.ResRet.f32 %5571, 2
  %5575 = extractvalue %dx.types.ResRet.f32 %5571, 3
  %5576 = fcmp fast ogt float %5568, 0.000000e+00
  br i1 %5576, label %5577, label %5598, !dx.controlflow.hints !100

; <label>:5577                                    ; preds = %5560
  %5578 = fadd fast float %5567, 1.000000e+00
  %5579 = call float @dx.op.unary.f32(i32 22, float %5541)  ; Frc(value)
  %5580 = call float @dx.op.unary.f32(i32 22, float %5542)  ; Frc(value)
  %5581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5579, float %5580, float %5578, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5585 = extractvalue %dx.types.ResRet.f32 %5581, 3
  %5586 = fsub fast float %5582, %5572
  %5587 = fsub fast float %5583, %5573
  %5588 = fsub fast float %5584, %5574
  %5589 = fsub fast float %5585, %5575
  %5590 = fmul fast float %5586, %5568
  %5591 = fmul fast float %5587, %5568
  %5592 = fmul fast float %5588, %5568
  %5593 = fmul fast float %5589, %5568
  %5594 = fadd fast float %5590, %5572
  %5595 = fadd fast float %5591, %5573
  %5596 = fadd fast float %5592, %5574
  %5597 = fadd fast float %5593, %5575
  br label %5598

; <label>:5598                                    ; preds = %5577, %5560
  %5599 = phi float [ %5594, %5577 ], [ %5572, %5560 ]
  %5600 = phi float [ %5595, %5577 ], [ %5573, %5560 ]
  %5601 = phi float [ %5596, %5577 ], [ %5574, %5560 ]
  %5602 = phi float [ %5597, %5577 ], [ %5575, %5560 ]
  %5603 = fadd fast float %5599, -5.000000e-01
  %5604 = fadd fast float %5601, -5.000000e-01
  %5605 = fmul fast float %5603, 0xBFD5555560000000
  %5606 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5604, float %5605)  ; FMad(a,b,c)
  %5607 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5600, float 0.000000e+00)  ; FMad(a,b,c)
  %5608 = fadd fast float %5607, %5602
  %5609 = fmul fast float %5603, -7.500000e-01
  %5610 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5604, float %5609)  ; FMad(a,b,c)
  %5611 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5600, float 0.000000e+00)  ; FMad(a,b,c)
  %5612 = fadd fast float %5611, %5602
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5619 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5620 = fsub fast float %5616, %5606
  %5621 = fsub fast float %5617, %5608
  %5622 = fsub fast float %5618, %5610
  %5623 = fsub fast float %5619, %5612
  %5624 = fmul fast float %5620, %5614
  %5625 = fmul fast float %5621, %5614
  %5626 = fmul fast float %5622, %5614
  %5627 = fmul fast float %5623, %5614
  %5628 = fadd fast float %5624, %5606
  %5629 = fadd fast float %5625, %5608
  %5630 = fadd fast float %5626, %5610
  %5631 = fadd fast float %5627, %5612
  %5632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5633 = extractvalue %dx.types.ResRet.i32 %5632, 0
  %5634 = and i32 %5633, 536870911
  %5635 = uitofp i32 %5634 to float
  %5636 = fmul fast float %5635, %5482
  %5637 = fmul fast float %5635, %5486
  %5638 = fptoui float %5636 to i32
  %5639 = fptoui float %5637 to i32
  %5640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.i32 %5640, 0
  %5642 = and i32 %5641, 31
  %5643 = lshr i32 %5638, %5642
  %5644 = lshr i32 %5639, %5642
  %5645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5646 = extractvalue %dx.types.ResRet.i32 %5645, 0
  %5647 = and i32 %5646, 31
  %5648 = shl i32 1, %5647
  %5649 = call i32 @dx.op.binary.i32(i32 40, i32 %5648, i32 4)  ; UMin(a,b)
  %5650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.i32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.i32 %5650, 1
  %5653 = icmp eq i32 %5649, 0
  br i1 %5653, label %5695, label %5654

; <label>:5654                                    ; preds = %5598
  br label %5655

; <label>:5655                                    ; preds = %5683, %5654
  %5656 = phi i32 [ %5686, %5683 ], [ 0, %5654 ]
  %5657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.i32 %5657, 0
  %5659 = lshr i32 %5658, 16
  %5660 = and i32 %5659, 31
  %5661 = shl i32 %5644, %5660
  %5662 = add i32 %5661, %5643
  %5663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.i32 %5663, 0
  %5665 = and i32 %5664, 31
  %5666 = shl i32 %5662, %5665
  %5667 = add i32 %5666, %5656
  %5668 = shl i32 %5667, 2
  %5669 = add i32 %5668, 32
  %5670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.i32 %5670, 0
  %5672 = icmp slt i32 %5671, 0
  %5673 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5656
  %5674 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5656
  %5675 = bitcast float* %5673 to i32*
  %5676 = bitcast float* %5674 to i32*
  br i1 %5672, label %5677, label %5683

; <label>:5677                                    ; preds = %5655
  %5678 = and i32 %5671, 1073741823
  %5679 = add nuw nsw i32 %5678, 20
  %5680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5679, i32 undef)  ; BufferLoad(srv,index,wot)
  %5681 = extractvalue %dx.types.ResRet.i32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.i32 %5680, 1
  br label %5683

; <label>:5683                                    ; preds = %5677, %5655
  %5684 = phi i32 [ %5681, %5677 ], [ %5651, %5655 ]
  %5685 = phi i32 [ %5682, %5677 ], [ %5652, %5655 ]
  store i32 %5684, i32* %5675, align 4
  store i32 %5685, i32* %5676, align 4
  %5686 = add nuw i32 %5656, 1
  %5687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.i32 %5687, 2
  %5689 = icmp eq i32 %5688, 0
  %5690 = icmp ugt i32 %5671, -1073741825
  %5691 = and i1 %5690, %5689
  %5692 = icmp ult i32 %5686, %5649
  %5693 = and i1 %5691, %5692
  br i1 %5693, label %5655, label %5694

; <label>:5694                                    ; preds = %5683
  br label %5695

; <label>:5695                                    ; preds = %5694, %5598
  %5696 = phi i32 [ 0, %5598 ], [ %5686, %5694 ]
  %5697 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5698 = fptoui float %5697 to i32
  %5699 = icmp eq i32 %5698, 0
  br i1 %5699, label %5751, label %5700

; <label>:5700                                    ; preds = %5695
  br label %5701

; <label>:5701                                    ; preds = %5746, %5700
  %5702 = phi i32 [ %5747, %5746 ], [ %5696, %5700 ]
  %5703 = phi i32 [ %5748, %5746 ], [ 0, %5700 ]
  %5704 = lshr i32 %5703, 2
  %5705 = and i32 %5703, 3
  %5706 = add nuw nsw i32 %5704, 83
  %5707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5706)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.i32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.i32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.i32 %5707, 2
  %5711 = extractvalue %dx.types.CBufRet.i32 %5707, 3
  %5712 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5708, i32* %5712, align 4
  %5713 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5709, i32* %5713, align 4
  %5714 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5710, i32* %5714, align 4
  %5715 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5711, i32* %5715, align 4
  %5716 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5705
  %5717 = load i32, i32* %5716, align 4, !tbaa !101, !noalias !105
  %5718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5719 = extractvalue %dx.types.ResRet.i32 %5718, 0
  %5720 = lshr i32 %5719, 16
  %5721 = and i32 %5720, 31
  %5722 = shl i32 %5644, %5721
  %5723 = add i32 %5722, %5643
  %5724 = shl i32 %5723, 2
  %5725 = add i32 %5724, %5717
  %5726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5725, i32 undef)  ; BufferLoad(srv,index,wot)
  %5727 = extractvalue %dx.types.ResRet.i32 %5726, 0
  %5728 = icmp eq i32 %5727, 0
  br i1 %5728, label %5746, label %5729

; <label>:5729                                    ; preds = %5701
  %5730 = icmp slt i32 %5727, 0
  %5731 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5702
  %5732 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5702
  %5733 = bitcast float* %5731 to i32*
  %5734 = bitcast float* %5732 to i32*
  br i1 %5730, label %5735, label %5742

; <label>:5735                                    ; preds = %5729
  %5736 = and i32 %5727, 1073741823
  %5737 = add i32 %5717, 20
  %5738 = add i32 %5737, %5736
  %5739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5738, i32 undef)  ; BufferLoad(srv,index,wot)
  %5740 = extractvalue %dx.types.ResRet.i32 %5739, 0
  %5741 = extractvalue %dx.types.ResRet.i32 %5739, 1
  br label %5742

; <label>:5742                                    ; preds = %5735, %5729
  %5743 = phi i32 [ %5740, %5735 ], [ %5651, %5729 ]
  %5744 = phi i32 [ %5741, %5735 ], [ %5652, %5729 ]
  store i32 %5743, i32* %5733, align 4
  store i32 %5744, i32* %5734, align 4
  %5745 = add i32 %5702, 1
  br label %5746

; <label>:5746                                    ; preds = %5742, %5701
  %5747 = phi i32 [ %5702, %5701 ], [ %5745, %5742 ]
  %5748 = add nuw i32 %5703, 1
  %5749 = icmp eq i32 %5748, %5698
  br i1 %5749, label %5750, label %5701

; <label>:5750                                    ; preds = %5746
  br label %5751

; <label>:5751                                    ; preds = %5750, %5695
  %5752 = phi i32 [ %5696, %5695 ], [ %5747, %5750 ]
  %5753 = icmp eq i32 %5752, 1
  %5754 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  %5755 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  br i1 %5753, label %5756, label %5759

; <label>:5756                                    ; preds = %5751
  %5757 = load float, float* %5754, align 4
  %5758 = load float, float* %5755, align 4
  br label %5786

; <label>:5759                                    ; preds = %5751
  %5760 = load float, float* %5754, align 4
  %5761 = load float, float* %5755, align 4
  %5762 = fdiv fast float 1.000000e+00, %5761
  %5763 = fsub fast float %5760, %5762
  %5764 = icmp ugt i32 %5752, 1
  br i1 %5764, label %5765, label %5781

; <label>:5765                                    ; preds = %5759
  br label %5766

; <label>:5766                                    ; preds = %5766, %5765
  %5767 = phi float [ %5776, %5766 ], [ %5763, %5765 ]
  %5768 = phi float [ %5777, %5766 ], [ %5760, %5765 ]
  %5769 = phi i32 [ %5778, %5766 ], [ 1, %5765 ]
  %5770 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5769
  %5771 = load float, float* %5770, align 4
  %5772 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5769
  %5773 = load float, float* %5772, align 4
  %5774 = fdiv fast float 1.000000e+00, %5773
  %5775 = fsub fast float %5771, %5774
  %5776 = call float @dx.op.binary.f32(i32 36, float %5767, float %5775)  ; FMin(a,b)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5768, float %5771)  ; FMax(a,b)
  %5778 = add nuw i32 %5769, 1
  %5779 = icmp eq i32 %5778, %5752
  br i1 %5779, label %5780, label %5766

; <label>:5780                                    ; preds = %5766
  br label %5781

; <label>:5781                                    ; preds = %5780, %5759
  %5782 = phi float [ %5763, %5759 ], [ %5776, %5780 ]
  %5783 = phi float [ %5760, %5759 ], [ %5777, %5780 ]
  %5784 = fsub fast float %5783, %5782
  %5785 = fdiv fast float 1.000000e+00, %5784
  br label %5786

; <label>:5786                                    ; preds = %5781, %5756
  %5787 = phi float [ %5757, %5756 ], [ %5783, %5781 ]
  %5788 = phi float [ %5758, %5756 ], [ %5785, %5781 ]
  %5789 = fadd fast float %5490, %5787
  %5790 = fmul fast float %5789, %5788
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5791, 2.000000e+00
  %5793 = fsub fast float 1.000000e+00, %5792
  %5794 = fmul fast float %5628, %5628
  %5795 = fsub fast float %5629, %5794
  %5796 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5795)  ; FMax(a,b)
  %5797 = fdiv fast float 1.000000e+00, %5796
  %5798 = fmul fast float %5629, %5628
  %5799 = fsub fast float %5630, %5798
  %5800 = fsub fast float %5793, %5628
  %5801 = fmul fast float %5793, %5793
  %5802 = fsub fast float %5801, %5629
  %5803 = fmul fast float %5797, %5799
  %5804 = fmul fast float %5803, %5800
  %5805 = fsub fast float %5802, %5804
  %5806 = fmul fast float %5629, %5629
  %5807 = fsub fast float %5631, %5806
  %5808 = fmul fast float %5799, %5799
  %5809 = fmul fast float %5808, %5797
  %5810 = fsub fast float %5807, %5809
  %5811 = fdiv fast float %5805, %5810
  %5812 = fmul fast float %5811, %5799
  %5813 = fsub fast float %5800, %5812
  %5814 = fmul fast float %5813, %5797
  %5815 = fmul fast float %5814, %5628
  %5816 = fsub fast float 1.000000e+00, %5815
  %5817 = fmul fast float %5811, %5629
  %5818 = fsub fast float %5816, %5817
  %5819 = fmul fast float %5814, %5814
  %5820 = fmul fast float %5811, 4.000000e+00
  %5821 = fmul fast float %5820, %5818
  %5822 = fsub fast float %5819, %5821
  %5823 = call float @dx.op.unary.f32(i32 24, float %5822)  ; Sqrt(value)
  %5824 = fcmp fast oge float %5814, 0.000000e+00
  %5825 = fsub fast float -0.000000e+00, %5823
  %5826 = select i1 %5824, float %5825, float %5823
  %5827 = fsub fast float %5826, %5814
  %5828 = fdiv fast float %5827, %5811
  %5829 = fdiv fast float %5818, %5827
  %5830 = fmul fast float %5828, 5.000000e-01
  %5831 = fmul fast float %5829, 2.000000e+00
  %5832 = select i1 %5824, float %5830, float %5831
  %5833 = select i1 %5824, float %5831, float %5830
  %5834 = call float @dx.op.binary.f32(i32 35, float %5832, float %5833)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 36, float %5832, float %5833)  ; FMin(a,b)
  %5836 = fcmp fast ogt float %5793, %5834
  %5837 = fsub fast float %5793, %5835
  %5838 = fsub fast float %5793, %5834
  %5839 = fsub fast float %5834, %5835
  %5840 = select i1 %5836, float %5838, float %5839
  %5841 = fmul float %5837, %5840
  %5842 = select i1 %5836, float %5835, float %5793
  %5843 = fcmp fast ogt float %5793, %5835
  %5844 = fmul fast float %5842, %5834
  %5845 = fadd fast float %5842, %5834
  %5846 = fmul fast float %5845, %5628
  %5847 = fadd fast float %5844, %5629
  %5848 = fsub fast float %5847, %5846
  %5849 = fdiv fast float %5848, %5841
  %5850 = select i1 %5843, float %5849, float 0.000000e+00
  %5851 = fsub fast float 1.000000e+00, %5850
  %5852 = select i1 %5836, float %5851, float %5850
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5613, 3
  %5855 = fmul fast float %5854, %5853
  %5856 = fsub fast float 1.000000e+00, %5855
  br label %5857

; <label>:5857                                    ; preds = %5786, %5498, %5463, %5459, %5425
  %5858 = phi float [ 1.000000e+00, %5425 ], [ %5856, %5786 ], [ 1.000000e+00, %5463 ], [ 1.000000e+00, %5498 ], [ 1.000000e+00, %5459 ]
  %5859 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5859, label %5860, label %5866, !dx.controlflow.hints !114

; <label>:5860                                    ; preds = %5857
  %5861 = fadd fast float %5368, %5342
  %5862 = call float @dx.op.binary.f32(i32 35, float %5861, float 0.000000e+00)  ; FMax(a,b)
  %5863 = fadd fast float %5862, 0x3F10000000000000
  %5864 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5357, float %5358, float undef, float undef, i32 0, i32 0, i32 undef, float %5863)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  br label %5866

; <label>:5866                                    ; preds = %5860, %5857
  %5867 = phi float [ %5865, %5860 ], [ 1.000000e+00, %5857 ]
  %5868 = fcmp fast ogt float %5453, 0.000000e+00
  br i1 %5868, label %5869, label %5875, !dx.controlflow.hints !115

; <label>:5869                                    ; preds = %5866
  %5870 = fadd fast float %5398, %5342
  %5871 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5872 = fadd fast float %5871, 0x3F10000000000000
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5349, float %5350, float undef, float undef, i32 0, i32 0, i32 undef, float %5872)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  br label %5875

; <label>:5875                                    ; preds = %5869, %5866
  %5876 = phi float [ %5874, %5869 ], [ 1.000000e+00, %5866 ]
  %5877 = fcmp fast ogt float %5452, 0.000000e+00
  br i1 %5877, label %5878, label %5885, !dx.controlflow.hints !116

; <label>:5878                                    ; preds = %5875
  %5879 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5880 = fadd fast float %5879, %5342
  %5881 = call float @dx.op.binary.f32(i32 35, float %5880, float 0.000000e+00)  ; FMax(a,b)
  %5882 = fadd fast float %5881, 0x3F10000000000000
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5334, float %5338, float undef, float undef, i32 0, i32 0, i32 undef, float %5882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  br label %5885

; <label>:5885                                    ; preds = %5878, %5875
  %5886 = phi float [ %5884, %5878 ], [ 1.000000e+00, %5875 ]
  %5887 = fsub fast float %5867, %5858
  %5888 = fmul fast float %5887, %5396
  %5889 = fadd fast float %5888, %5858
  %5890 = fsub fast float %5876, %5889
  %5891 = fmul fast float %5890, %5426
  %5892 = fadd fast float %5891, %5889
  %5893 = fsub fast float %5886, %5892
  %5894 = fmul fast float %5893, %5452
  %5895 = fadd fast float %5894, %5892
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5898 = fcmp fast ogt float %5897, 0.000000e+00
  br i1 %5898, label %5899, label %5939, !dx.controlflow.hints !117

; <label>:5899                                    ; preds = %5885
  %5900 = fcmp fast ugt float %5897, 0.000000e+00
  br i1 %5900, label %5901, label %5936

; <label>:5901                                    ; preds = %5899
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5918 = fadd fast float %5915, %5311
  %5919 = fadd fast float %5916, %5312
  %5920 = fadd fast float %5917, %5313
  %5921 = fmul fast float %5918, %5903
  %5922 = call float @dx.op.tertiary.f32(i32 46, float %5904, float %5919, float %5921)  ; FMad(a,b,c)
  %5923 = call float @dx.op.tertiary.f32(i32 46, float %5905, float %5920, float %5922)  ; FMad(a,b,c)
  %5924 = fadd fast float %5923, %5906
  %5925 = fmul fast float %5918, %5908
  %5926 = call float @dx.op.tertiary.f32(i32 46, float %5909, float %5919, float %5925)  ; FMad(a,b,c)
  %5927 = call float @dx.op.tertiary.f32(i32 46, float %5910, float %5920, float %5926)  ; FMad(a,b,c)
  %5928 = fadd fast float %5927, %5911
  %5929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5924, float %5928, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  %5931 = fmul fast float %5930, %5913
  %5932 = fadd fast float %5931, %5912
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = fmul fast float %5933, %5897
  %5935 = fsub fast float 1.000000e+00, %5934
  br label %5936

; <label>:5936                                    ; preds = %5901, %5899
  %5937 = phi float [ %5935, %5901 ], [ 1.000000e+00, %5899 ]
  %5938 = fmul fast float %5937, %5895
  br label %5939

; <label>:5939                                    ; preds = %5936, %5885, %5291
  %5940 = phi float [ 1.000000e+00, %5291 ], [ %5938, %5936 ], [ %5895, %5885 ]
  %5941 = call float @dx.op.binary.f32(i32 36, float %5940, float %5940)  ; FMin(a,b)
  %5942 = call float @dx.op.binary.f32(i32 36, float %5940, float %5941)  ; FMin(a,b)
  %5943 = fcmp fast ogt float %5942, 0.000000e+00
  br i1 %5943, label %5944, label %6104, !dx.controlflow.hints !118

; <label>:5944                                    ; preds = %5939
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %5960 = fmul fast float %5946, %5311
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5947, float %5960)  ; FMad(a,b,c)
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5948, float %5961)  ; FMad(a,b,c)
  %5963 = fadd fast float %5962, %5949
  %5964 = fmul fast float %5951, %5311
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5952, float %5964)  ; FMad(a,b,c)
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5953, float %5965)  ; FMad(a,b,c)
  %5967 = fadd fast float %5966, %5954
  %5968 = fmul fast float %5956, %5311
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5957, float %5968)  ; FMad(a,b,c)
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5958, float %5969)  ; FMad(a,b,c)
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5975 = fmul fast float %5974, %5963
  %5976 = fmul fast float %5974, %5967
  %5977 = fadd fast float %5975, %5972
  %5978 = fadd fast float %5976, %5973
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = fsub fast float %5977, %5980
  %5983 = fsub fast float %5978, %5981
  %5984 = fcmp fast olt float %5982, 0.000000e+00
  %5985 = fcmp fast olt float %5983, 0.000000e+00
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5990 = extractvalue %dx.types.CBufRet.f32 %5986, 3
  %5991 = select i1 %5984, float %5987, float %5989
  %5992 = select i1 %5985, float %5988, float %5990
  %5993 = fmul fast float %5991, %5982
  %5994 = fmul fast float %5992, %5983
  %5995 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %5996 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5998 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %5999 = fsub fast float %5997, %5998
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6001 = fcmp fast ogt float %6000, 0.000000e+00
  br i1 %6001, label %6002, label %6043, !dx.controlflow.hints !119

; <label>:6002                                    ; preds = %5944
  %6003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5977, float %5978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 1
  %6005 = fcmp fast ogt float %6004, 0.000000e+00
  br i1 %6005, label %6006, label %6038

; <label>:6006                                    ; preds = %6002
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5977, float %5978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.ResRet.f32 %6007, 3
  %6012 = fsub fast float 1.000000e+00, %5959
  %6013 = fsub fast float %6012, %5970
  %6014 = fmul fast float %6013, 0x400921FB60000000
  %6015 = fadd fast float %6014, 0x3FF921FB60000000
  %6016 = call float @dx.op.unary.f32(i32 13, float %6015)  ; Sin(value)
  %6017 = fadd fast float %6016, -1.000000e+00
  %6018 = fmul fast float %6017, 0x3FD45F3060000000
  %6019 = fmul fast float %6013, 0x401921FB60000000
  %6020 = fadd fast float %6019, 0x400921FB60000000
  %6021 = call float @dx.op.unary.f32(i32 13, float %6020)  ; Sin(value)
  %6022 = fadd fast float %6021, 0x3E7777A5C0000000
  %6023 = fmul fast float %6022, 0x3FC45F3060000000
  %6024 = fmul fast float %6013, 0x4022D97C80000000
  %6025 = fadd fast float %6024, 0x4012D97C80000000
  %6026 = call float @dx.op.unary.f32(i32 13, float %6025)  ; Sin(value)
  %6027 = fadd fast float %6026, 1.000000e+00
  %6028 = fmul fast float %6027, 0x3FBB2995E0000000
  %6029 = fmul fast float %6013, 0x402921FB60000000
  %6030 = fadd fast float %6029, 0x401921FB60000000
  %6031 = call float @dx.op.unary.f32(i32 13, float %6030)  ; Sin(value)
  %6032 = fadd fast float %6031, 0xBE8777A5C0000000
  %6033 = fmul fast float %6032, 0x3FB45F3060000000
  %6034 = call float @dx.op.dot4.f32(i32 56, float %6008, float %6009, float %6010, float %6011, float %6018, float %6023, float %6028, float %6033)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6035 = fmul fast float %6034, 0xBFF7154760000000
  %6036 = call float @dx.op.unary.f32(i32 21, float %6035)  ; Exp(value)
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  br label %6038

; <label>:6038                                    ; preds = %6006, %6002
  %6039 = phi float [ %6037, %6006 ], [ 1.000000e+00, %6002 ]
  %6040 = fadd fast float %6039, -1.000000e+00
  %6041 = fmul fast float %6040, %6000
  %6042 = fadd fast float %6041, 1.000000e+00
  br label %6043

; <label>:6043                                    ; preds = %6038, %5944
  %6044 = phi float [ %6042, %6038 ], [ 1.000000e+00, %5944 ]
  %6045 = fmul fast float %6044, %5940
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6050 = fadd fast float %6047, %162
  %6051 = fadd fast float %6048, %163
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6054 = fsub fast float -0.000000e+00, %6050
  %6055 = fsub fast float -0.000000e+00, %6051
  %6056 = fsub fast float %4884, %6049
  %6057 = fadd fast float %6056, %6053
  %6058 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6054, float %6055, float %6057)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = fdiv fast float 1.000000e+00, %6059
  %6061 = fmul fast float %6060, %6058
  %6062 = fmul fast float %5292, %6061
  %6063 = fmul fast float %5293, %6061
  %6064 = fadd fast float %6062, %6050
  %6065 = fadd fast float %6063, %6051
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = fsub fast float %6064, %6067
  %6070 = fsub fast float %6065, %6068
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 3
  %6074 = fmul fast float %6069, %6072
  %6075 = fmul fast float %6070, %6073
  %6076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.i32 %6076, 3
  %6078 = icmp eq i32 %6077, 0
  br i1 %6078, label %6084, label %6079

; <label>:6079                                    ; preds = %6043
  %6080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6074, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6081 = extractvalue %dx.types.ResRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.ResRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.ResRet.f32 %6080, 2
  br label %6089

; <label>:6084                                    ; preds = %6043
  %6085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6074, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.ResRet.f32 %6085, 2
  br label %6089

; <label>:6089                                    ; preds = %6084, %6079
  %6090 = phi float [ %6081, %6079 ], [ %6086, %6084 ]
  %6091 = phi float [ %6082, %6079 ], [ %6087, %6084 ]
  %6092 = phi float [ %6083, %6079 ], [ %6088, %6084 ]
  %6093 = extractvalue %dx.types.CBufRet.f32 %6052, 2
  %6094 = fmul fast float %6093, %6090
  %6095 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6096 = fsub fast float %6061, %6095
  %6097 = fsub fast float %6096, %6094
  %6098 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6097)  ; FMax(a,b)
  %6099 = fmul fast float %6098, %6091
  %6100 = call float @dx.op.binary.f32(i32 36, float %6092, float %6099)  ; FMin(a,b)
  %6101 = fmul fast float %6100, 0xBFF7154760000000
  %6102 = call float @dx.op.unary.f32(i32 21, float %6101)  ; Exp(value)
  %6103 = fmul fast float %6045, %6102
  br label %6104

; <label>:6104                                    ; preds = %6089, %5939
  %6105 = phi float [ %6103, %6089 ], [ %5940, %5939 ]
  %6106 = call float @dx.op.binary.f32(i32 36, float %6105, float %6105)  ; FMin(a,b)
  %6107 = call float @dx.op.binary.f32(i32 36, float %6105, float %6106)  ; FMin(a,b)
  %6108 = fcmp fast ogt float %6107, 0.000000e+00
  br i1 %6108, label %6109, label %6361, !dx.controlflow.hints !120

; <label>:6109                                    ; preds = %6104
  %6110 = fmul fast float %6105, %5303
  %6111 = fmul fast float %6105, %5304
  %6112 = fmul fast float %6105, %5305
  %6113 = fsub fast float %164, %4672
  %6114 = fcmp fast ogt float %6113, 0.000000e+00
  %6115 = fmul fast float %5292, 5.120000e+02
  %6116 = fmul fast float %5293, 5.120000e+02
  %6117 = fmul fast float %5294, 5.120000e+02
  %6118 = fadd fast float %6117, %164
  %6119 = fsub fast float %4672, %6118
  %6120 = fmul fast float %6119, 2.000000e+00
  %6121 = fadd fast float %6120, %6118
  %6122 = select i1 %6114, float %6121, float %6118
  %6123 = fsub fast float %6122, %164
  %6124 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6123, float %6115, float %6116, float %6123)  ; Dot3(ax,ay,az,bx,by,bz)
  %6125 = call float @dx.op.unary.f32(i32 25, float %6124)  ; Rsqrt(value)
  %6126 = fmul fast float %6125, %6115
  %6127 = fmul fast float %6125, %6116
  %6128 = fmul fast float %6125, %6123
  %6129 = fsub fast float %4672, %164
  %6130 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6129)  ; Dot3(ax,ay,az,bx,by,bz)
  %6131 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6126, float %6127, float %6128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = fdiv fast float 1.000000e+00, %6131
  %6133 = fmul fast float %6132, %6130
  %6134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = fcmp fast ogt float %6134, 0.000000e+00
  %6136 = fcmp fast olt float %6134, 0.000000e+00
  %6137 = zext i1 %6135 to i32
  %6138 = zext i1 %6136 to i32
  %6139 = sub nsw i32 %6137, %6138
  %6140 = sitofp i32 %6139 to float
  %6141 = fsub fast float %6122, %4672
  %6142 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6116, float %6141, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  %6144 = fcmp fast olt float %6142, 0.000000e+00
  %6145 = zext i1 %6143 to i32
  %6146 = zext i1 %6144 to i32
  %6147 = sub nsw i32 %6145, %6146
  %6148 = sitofp i32 %6147 to float
  %6149 = fcmp fast une float %6140, %6148
  br i1 %6149, label %6150, label %6160

; <label>:6150                                    ; preds = %6109
  %6151 = fmul fast float %6133, %6128
  %6152 = fmul fast float %6133, %6127
  %6153 = fmul fast float %6133, %6126
  %6154 = fmul fast float %6153, %6153
  %6155 = fmul fast float %6152, %6152
  %6156 = fadd fast float %6154, %6155
  %6157 = fmul fast float %6151, %6151
  %6158 = fadd fast float %6156, %6157
  %6159 = call float @dx.op.unary.f32(i32 24, float %6158)  ; Sqrt(value)
  br label %6170

; <label>:6160                                    ; preds = %6109
  %6161 = icmp slt i32 %6139, 0
  br i1 %6161, label %6162, label %6170

; <label>:6162                                    ; preds = %6160
  %6163 = fsub fast float %164, %6122
  %6164 = fmul fast float %6115, %6115
  %6165 = fmul fast float %6116, %6116
  %6166 = fadd fast float %6164, %6165
  %6167 = fmul fast float %6163, %6163
  %6168 = fadd fast float %6166, %6167
  %6169 = call float @dx.op.unary.f32(i32 24, float %6168)  ; Sqrt(value)
  br label %6170

; <label>:6170                                    ; preds = %6162, %6160, %6150
  %6171 = phi float [ %6159, %6150 ], [ %6169, %6162 ], [ 0.000000e+00, %6160 ]
  %6172 = fsub fast float -0.000000e+00, %6171
  %6173 = select i1 %6114, float -0.000000e+00, float %6172
  %6174 = fmul fast float %4673, 0x3FF7154760000000
  %6175 = fmul fast float %6174, %6173
  %6176 = fmul fast float %4674, 0x3FF7154760000000
  %6177 = fmul fast float %6176, %6173
  %6178 = fmul fast float %4675, 0x3FF7154760000000
  %6179 = fmul fast float %6178, %6173
  %6180 = call float @dx.op.unary.f32(i32 21, float %6175)  ; Exp(value)
  %6181 = call float @dx.op.unary.f32(i32 21, float %6177)  ; Exp(value)
  %6182 = call float @dx.op.unary.f32(i32 21, float %6179)  ; Exp(value)
  %6183 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6184 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6185 = call float @dx.op.unary.f32(i32 7, float %6182)  ; Saturate(value)
  %6186 = fmul fast float %6110, %6183
  %6187 = fmul fast float %6111, %6184
  %6188 = fmul fast float %6112, %6185
  %6189 = fsub fast float %5292, %4872
  %6190 = fsub fast float %5293, %4871
  %6191 = fsub fast float %5294, %4870
  %6192 = call float @dx.op.dot3.f32(i32 55, float %6189, float %6190, float %6191, float %6189, float %6190, float %6191)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = call float @dx.op.unary.f32(i32 25, float %6192)  ; Rsqrt(value)
  %6194 = fmul fast float %6193, %6189
  %6195 = fmul fast float %6193, %6190
  %6196 = fmul fast float %6193, %6191
  %6197 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4868, float %4867, float %6194, float %6195, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6200 = bitcast i32 %4899 to float
  %6201 = fmul fast float %6199, %6199
  %6202 = fmul fast float %6201, %6200
  %6203 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6204 = fmul fast float %6203, %6199
  %6205 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4880, float %4881, float %6194, float %6195, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = fmul fast float %6205, %6205
  %6207 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6208 = fsub fast float 1.000000e+00, %4882
  %6209 = call float @dx.op.binary.f32(i32 35, float %6208, float 0x3F847AE140000000)  ; FMax(a,b)
  %6210 = fmul fast float %6209, %6209
  %6211 = fmul fast float %6210, %6210
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = fmul fast float %4887, %4887
  %6214 = fmul fast float %6213, %6212
  %6215 = fadd fast float %6214, %6211
  %6216 = bitcast float %6215 to i32
  %6217 = ashr i32 %6216, 1
  %6218 = add nsw i32 %6217, 532487669
  %6219 = bitcast i32 %6218 to float
  %6220 = fadd fast float %6219, %4887
  %6221 = fmul fast float %6211, %6206
  %6222 = fsub fast float 1.000000e+00, %6206
  %6223 = fadd fast float %6222, %6221
  %6224 = fmul fast float %6207, %6207
  %6225 = fmul fast float %6224, %6212
  %6226 = fadd fast float %6225, %6211
  %6227 = bitcast float %6226 to i32
  %6228 = ashr i32 %6227, 1
  %6229 = add nsw i32 %6228, 532487669
  %6230 = bitcast i32 %6229 to float
  %6231 = fadd fast float %6230, %6207
  %6232 = fmul fast float %6223, %6223
  %6233 = fmul fast float %6232, %6220
  %6234 = fmul fast float %6233, %6231
  %6235 = fdiv fast float 0x3FF0A00000000000, %6234
  %6236 = fmul fast float %6235, %6211
  %6237 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6238 = fsub fast float 1.000000e+00, %6237
  %6239 = bitcast float %6238 to i32
  %6240 = sitofp i32 %6239 to float
  %6241 = fmul fast float %6240, 5.000000e+00
  %6242 = fadd fast float %6241, 0xC1EFBF8940000000
  %6243 = fptosi float %6242 to i32
  %6244 = bitcast i32 %6243 to float
  %6245 = fsub fast float 1.000000e+00, %4876
  %6246 = fsub fast float 1.000000e+00, %4877
  %6247 = fsub fast float 1.000000e+00, %4885
  %6248 = fmul fast float %6244, %6245
  %6249 = fmul fast float %6244, %6246
  %6250 = fmul fast float %6244, %6247
  %6251 = fadd fast float %6248, %4876
  %6252 = fadd fast float %6249, %4877
  %6253 = fadd fast float %6250, %4885
  br i1 %5187, label %6254, label %6277

; <label>:6254                                    ; preds = %6170
  %6255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4271, float %6237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.ResRet.f32 %6255, 2
  %6259 = fadd fast float %6256, -5.000000e-01
  %6260 = fadd fast float %6257, -5.000000e-01
  %6261 = fadd fast float %6258, -5.000000e-01
  %6262 = fmul fast float %4876, 4.000000e+00
  %6263 = fmul fast float %6262, %6245
  %6264 = fmul fast float %6263, %6259
  %6265 = fmul fast float %4877, 4.000000e+00
  %6266 = fmul fast float %6265, %6246
  %6267 = fmul fast float %6266, %6260
  %6268 = fmul fast float %4885, 4.000000e+00
  %6269 = fmul fast float %6268, %6247
  %6270 = fmul fast float %6269, %6261
  %6271 = fadd fast float %6264, %6251
  %6272 = fadd fast float %6267, %6252
  %6273 = fadd fast float %6270, %6253
  %6274 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6275 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6276 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  br label %6277

; <label>:6277                                    ; preds = %6254, %6170
  %6278 = phi float [ %6274, %6254 ], [ %6251, %6170 ]
  %6279 = phi float [ %6275, %6254 ], [ %6252, %6170 ]
  %6280 = phi float [ %6276, %6254 ], [ %6253, %6170 ]
  %6281 = fmul fast float %6197, 9.843750e-01
  %6282 = fadd fast float %6281, 7.812500e-03
  %6283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6282, float %5177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 2
  %6285 = extractvalue %dx.types.ResRet.f32 %6283, 3
  %6286 = fmul fast float %6284, %4876
  %6287 = fmul fast float %6284, %4877
  %6288 = fmul fast float %6284, %4885
  %6289 = fadd fast float %6286, %6285
  %6290 = fadd fast float %6287, %6285
  %6291 = fadd fast float %6288, %6285
  br i1 %5187, label %6292, label %6315

; <label>:6292                                    ; preds = %6277
  %6293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4271, float %6197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6294 = extractvalue %dx.types.ResRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.ResRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.ResRet.f32 %6293, 2
  %6297 = fadd fast float %6294, -5.000000e-01
  %6298 = fadd fast float %6295, -5.000000e-01
  %6299 = fadd fast float %6296, -5.000000e-01
  %6300 = fmul fast float %4876, 4.000000e+00
  %6301 = fmul fast float %6300, %6245
  %6302 = fmul fast float %6301, %6297
  %6303 = fmul fast float %4877, 4.000000e+00
  %6304 = fmul fast float %6303, %6246
  %6305 = fmul fast float %6304, %6298
  %6306 = fmul fast float %4885, 4.000000e+00
  %6307 = fmul fast float %6306, %6247
  %6308 = fmul fast float %6307, %6299
  %6309 = fadd fast float %6302, %6289
  %6310 = fadd fast float %6305, %6290
  %6311 = fadd fast float %6308, %6291
  %6312 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6313 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  br label %6315

; <label>:6315                                    ; preds = %6292, %6277
  %6316 = phi float [ %6312, %6292 ], [ %6289, %6277 ]
  %6317 = phi float [ %6313, %6292 ], [ %6290, %6277 ]
  %6318 = phi float [ %6314, %6292 ], [ %6291, %6277 ]
  %6319 = call float @dx.op.binary.f32(i32 35, float %6317, float %6318)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6316, float %6319)  ; FMax(a,b)
  %6321 = fsub fast float 1.000000e+00, %6320
  %6322 = fmul fast float %6278, %6236
  %6323 = fmul fast float %6279, %6236
  %6324 = fmul fast float %6280, %6236
  %6325 = fsub fast float 1.000000e+00, %6198
  %6326 = bitcast float %6325 to i32
  %6327 = sitofp i32 %6326 to float
  %6328 = fmul fast float %6327, 5.000000e+00
  %6329 = fadd fast float %6328, 0xC1EFBF8940000000
  %6330 = fptosi float %6329 to i32
  %6331 = bitcast i32 %6330 to float
  %6332 = fmul fast float %6331, %4272
  %6333 = fmul fast float %6321, %6332
  %6334 = fmul fast float %6333, %5255
  %6335 = fmul fast float %6333, %5256
  %6336 = fmul fast float %6333, %5257
  %6337 = fadd fast float %6334, %6322
  %6338 = fadd fast float %6335, %6323
  %6339 = fadd fast float %6336, %6324
  %6340 = fmul fast float %6204, %6186
  %6341 = fmul fast float %6340, %6321
  %6342 = fmul fast float %6204, %6187
  %6343 = fmul fast float %6342, %6321
  %6344 = fmul fast float %6204, %6188
  %6345 = fmul fast float %6344, %6321
  %6346 = fmul fast float %6340, %6337
  %6347 = fmul fast float %6342, %6338
  %6348 = fmul fast float %6344, %6339
  %6349 = fadd fast float %6341, %5237
  %6350 = fmul fast float %6349, %4268
  %6351 = fadd fast float %6343, %5239
  %6352 = fmul fast float %6351, %4268
  %6353 = fadd fast float %6345, %5241
  %6354 = fmul fast float %6353, %4268
  %6355 = fadd fast float %6346, %5280
  %6356 = fmul fast float %6355, %4268
  %6357 = fadd fast float %6347, %5283
  %6358 = fmul fast float %6357, %4268
  %6359 = fadd fast float %6348, %5286
  %6360 = fmul fast float %6359, %4268
  br label %6361

; <label>:6361                                    ; preds = %6315, %6104, %5214
  %6362 = phi float [ %5281, %5214 ], [ %5281, %6104 ], [ %6356, %6315 ]
  %6363 = phi float [ %5284, %5214 ], [ %5284, %6104 ], [ %6358, %6315 ]
  %6364 = phi float [ %5287, %5214 ], [ %5287, %6104 ], [ %6360, %6315 ]
  %6365 = phi float [ %5276, %5214 ], [ %5276, %6104 ], [ %6350, %6315 ]
  %6366 = phi float [ %5277, %5214 ], [ %5277, %6104 ], [ %6352, %6315 ]
  %6367 = phi float [ %5278, %5214 ], [ %5278, %6104 ], [ %6354, %6315 ]
  %6368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.i32 %6368, 0
  %6370 = icmp eq i32 %6369, 0
  br i1 %6370, label %6992, label %6371

; <label>:6371                                    ; preds = %6361
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6375 = fmul fast float %6373, %103
  %6376 = fmul fast float %6374, %104
  %6377 = fptoui float %6375 to i32
  %6378 = fptoui float %6376 to i32
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6379, 3
  %6383 = fadd fast float %94, -4.000000e+00
  %6384 = call float @dx.op.binary.f32(i32 35, float %6383, float 0.000000e+00)  ; FMax(a,b)
  %6385 = fadd fast float %6384, %6380
  %6386 = fmul fast float %6385, %6381
  %6387 = call float @dx.op.unary.f32(i32 23, float %6386)  ; Log(value)
  %6388 = fmul fast float %6387, %6382
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6391 = fmul fast float %6388, %6390
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.i32 %6393, 1
  %6395 = add i32 %6394, -1
  %6396 = uitofp i32 %6394 to float
  %6397 = fmul fast float %6396, %6392
  %6398 = fptoui float %6397 to i32
  %6399 = call i32 @dx.op.binary.i32(i32 40, i32 %6398, i32 %6395)  ; UMin(a,b)
  %6400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.i32 %6400, 2
  %6402 = extractvalue %dx.types.CBufRet.i32 %6400, 3
  %6403 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6378, i32 %6401, i32 %6377)  ; UMad(a,b,c)
  %6404 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6399, i32 %6402, i32 %6403)  ; UMad(a,b,c)
  %6405 = add nsw i32 %6369, -1
  %6406 = call i32 @dx.op.binary.i32(i32 37, i32 %6405, i32 0)  ; IMax(a,b)
  %6407 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %6408 = fptoui float %6407 to i32
  %6409 = lshr i32 %6408, 5
  %6410 = call i32 @dx.op.binary.i32(i32 40, i32 %6409, i32 8191)  ; UMin(a,b)
  %6411 = shl i32 %6410, 2
  %6412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6411, i32 undef)  ; BufferLoad(srv,index,wot)
  %6413 = extractvalue %dx.types.ResRet.i32 %6412, 0
  %6414 = lshr i32 %6413, 16
  %6415 = and i32 %6413, 65535
  %6416 = lshr i32 %6413, 21
  %6417 = lshr i32 %6415, 5
  %6418 = call i32 @dx.op.binary.i32(i32 40, i32 %6417, i32 %6406)  ; UMin(a,b)
  %6419 = icmp ugt i32 %6416, %6418
  br i1 %6419, label %6992, label %6420

; <label>:6420                                    ; preds = %6371
  br label %6421

; <label>:6421                                    ; preds = %6982, %6420
  %6422 = phi i32 [ %6989, %6982 ], [ %6416, %6420 ]
  %6423 = phi float [ %6983, %6982 ], [ %6362, %6420 ]
  %6424 = phi float [ %6984, %6982 ], [ %6363, %6420 ]
  %6425 = phi float [ %6985, %6982 ], [ %6364, %6420 ]
  %6426 = phi float [ %6986, %6982 ], [ %6365, %6420 ]
  %6427 = phi float [ %6987, %6982 ], [ %6366, %6420 ]
  %6428 = phi float [ %6988, %6982 ], [ %6367, %6420 ]
  %6429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.i32 %6429, 0
  %6431 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6404, i32 %6430, i32 %6422)  ; UMad(a,b,c)
  %6432 = shl i32 %6431, 2
  %6433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6432, i32 undef)  ; BufferLoad(srv,index,wot)
  %6434 = extractvalue %dx.types.ResRet.i32 %6433, 0
  %6435 = shl i32 %6422, 5
  %6436 = sub nsw i32 %6414, %6435
  %6437 = call i32 @dx.op.binary.i32(i32 37, i32 %6436, i32 0)  ; IMax(a,b)
  %6438 = call i32 @dx.op.binary.i32(i32 38, i32 %6437, i32 31)  ; IMin(a,b)
  %6439 = sub nsw i32 1, %6414
  %6440 = add nsw i32 %6439, %6415
  %6441 = call i32 @dx.op.binary.i32(i32 37, i32 %6440, i32 0)  ; IMax(a,b)
  %6442 = call i32 @dx.op.binary.i32(i32 38, i32 %6441, i32 32)  ; IMin(a,b)
  %6443 = and i32 %6442, 31
  %6444 = shl i32 -1, %6443
  %6445 = xor i32 %6444, -1
  %6446 = and i32 %6438, 31
  %6447 = shl i32 %6445, %6446
  %6448 = icmp eq i32 %6442, 32
  %6449 = select i1 %6448, i32 -1, i32 %6447
  %6450 = and i32 %6449, %6434
  %6451 = icmp eq i32 %6450, 0
  br i1 %6451, label %6982, label %6452

; <label>:6452                                    ; preds = %6421
  br label %6453

; <label>:6453                                    ; preds = %6587, %6452
  %6454 = phi i32 [ %6465, %6587 ], [ %6450, %6452 ]
  %6455 = phi float [ %6588, %6587 ], [ %6423, %6452 ]
  %6456 = phi float [ %6589, %6587 ], [ %6424, %6452 ]
  %6457 = phi float [ %6590, %6587 ], [ %6425, %6452 ]
  %6458 = phi float [ %6591, %6587 ], [ %6426, %6452 ]
  %6459 = phi float [ %6592, %6587 ], [ %6427, %6452 ]
  %6460 = phi float [ %6593, %6587 ], [ %6428, %6452 ]
  %6461 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6454)  ; FirstbitLo(value)
  %6462 = add i32 %6461, %6435
  %6463 = and i32 %6461, 31
  %6464 = shl i32 1, %6463
  %6465 = xor i32 %6464, %6454
  %6466 = mul i32 %6462, 112
  %6467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6471 = or i32 %6466, 12
  %6472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = add i32 %6466, 16
  %6475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6474, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.f32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.f32 %6475, 1
  %6478 = extractvalue %dx.types.ResRet.f32 %6475, 2
  %6479 = add i32 %6466, 28
  %6480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.i32 %6480, 0
  %6482 = add i32 %6466, 44
  %6483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6482, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = add i32 %6466, 48
  %6486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.ResRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.ResRet.f32 %6486, 2
  %6490 = extractvalue %dx.types.ResRet.f32 %6486, 3
  %6491 = add i32 %6466, 64
  %6492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6491, i32 undef)  ; BufferLoad(srv,index,wot)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.ResRet.f32 %6492, 2
  %6496 = extractvalue %dx.types.ResRet.f32 %6492, 3
  %6497 = add i32 %6466, 80
  %6498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6497, i32 undef)  ; BufferLoad(srv,index,wot)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 1
  %6500 = extractvalue %dx.types.ResRet.f32 %6498, 2
  %6501 = add i32 %6466, 92
  %6502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6501, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.i32 %6502, 0
  %6504 = call float @dx.op.dot3.f32(i32 55, float %6468, float %6469, float %6470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6505 = select i1 %224, float %6499, float %6468
  %6506 = select i1 %224, float %6504, float %6469
  %6507 = select i1 %224, float %6500, float %6470
  %6508 = and i32 %6503, 65535
  %6509 = uitofp i32 %6508 to float
  %6510 = lshr i32 %6503, 16
  %6511 = uitofp i32 %6510 to float
  %6512 = and i32 %6481, 65535
  %6513 = and i32 %6481, 50331648
  %6514 = icmp eq i32 %6513, 33554432
  %6515 = fsub fast float %6487, %162
  %6516 = fsub fast float %6488, %163
  %6517 = fsub fast float %6489, %164
  %6518 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6517, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.unary.f32(i32 24, float %6518)  ; Sqrt(value)
  %6520 = fdiv fast float 1.000000e+00, %6519
  %6521 = fmul fast float %6520, %6515
  %6522 = fmul fast float %6520, %6516
  %6523 = fmul fast float %6520, %6517
  %6524 = fadd fast float %6519, %6473
  %6525 = fdiv fast float 1.000000e+00, %6524
  %6526 = fmul float %6484, %6525
  %6527 = fmul float %6526, %6526
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  br i1 %6514, label %6529, label %6550

; <label>:6529                                    ; preds = %6453
  %6530 = fmul fast float %6495, %6476
  %6531 = fmul fast float %6495, %6477
  %6532 = fmul fast float %6495, %6478
  %6533 = fadd fast float %6515, %6530
  %6534 = fadd fast float %6516, %6531
  %6535 = fadd fast float %6517, %6532
  %6536 = call float @dx.op.dot3.f32(i32 55, float %6533, float %6534, float %6535, float %6533, float %6534, float %6535)  ; Dot3(ax,ay,az,bx,by,bz)
  %6537 = call float @dx.op.unary.f32(i32 25, float %6536)  ; Rsqrt(value)
  %6538 = fmul fast float %6537, %6533
  %6539 = fmul fast float %6537, %6534
  %6540 = fmul fast float %6537, %6535
  %6541 = fsub fast float %162, %6487
  %6542 = fsub fast float %163, %6488
  %6543 = fsub fast float %164, %6489
  %6544 = fsub fast float -0.000000e+00, %6541
  %6545 = fsub fast float -0.000000e+00, %6542
  %6546 = fsub fast float -0.000000e+00, %6543
  %6547 = call float @dx.op.dot3.f32(i32 55, float %6544, float %6545, float %6546, float %6476, float %6477, float %6478)  ; Dot3(ax,ay,az,bx,by,bz)
  %6548 = fcmp fast ogt float %6547, 0.000000e+00
  %6549 = uitofp i1 %6548 to float
  br label %6550

; <label>:6550                                    ; preds = %6529, %6453
  %6551 = phi float [ %6549, %6529 ], [ 1.000000e+00, %6453 ]
  %6552 = phi float [ %6538, %6529 ], [ %6521, %6453 ]
  %6553 = phi float [ %6539, %6529 ], [ %6522, %6453 ]
  %6554 = phi float [ %6540, %6529 ], [ %6523, %6453 ]
  %6555 = call float @dx.op.dot3.f32(i32 55, float %6476, float %6477, float %6478, float %6552, float %6553, float %6554)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = fmul fast float %6555, %6555
  %6557 = call float @dx.op.unary.f32(i32 7, float %6556)  ; Saturate(value)
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = fmul fast float %6558, 5.000000e-01
  %6560 = fcmp fast ogt float %6555, 0.000000e+00
  %6561 = fsub fast float 1.000000e+00, %6559
  %6562 = select i1 %6560, float %6559, float %6561
  %6563 = fmul fast float %6562, %6511
  %6564 = fadd fast float %6563, %6509
  %6565 = fmul fast float %6564, 0x3EF0001000000000
  %6566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6565, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6567 = extractvalue %dx.types.ResRet.f32 %6566, 0
  %6568 = fmul fast float %6555, %6493
  %6569 = fadd fast float %6568, %6494
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = select i1 %6514, float 1.000000e+00, float %6570
  %6572 = select i1 %6514, float %6570, float 1.000000e+00
  %6573 = fmul fast float %6519, %6490
  %6574 = fsub fast float 1.000000e+00, %6573
  %6575 = fmul fast float %6574, %6496
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = fmul fast float %6576, %6572
  %6578 = fmul fast float %6577, 2.000000e+00
  %6579 = fsub fast float 3.000000e+00, %6578
  %6580 = fmul fast float %6567, %6551
  %6581 = fmul fast float %6577, %6577
  %6582 = fmul fast float %6581, %6580
  %6583 = fmul fast float %6582, %6579
  %6584 = call float @dx.op.binary.f32(i32 36, float %6583, float %6583)  ; FMin(a,b)
  %6585 = call float @dx.op.binary.f32(i32 36, float %6583, float %6584)  ; FMin(a,b)
  %6586 = fcmp fast ogt float %6585, 0.000000e+00
  br i1 %6586, label %6595, label %6587, !dx.controlflow.hints !121

; <label>:6587                                    ; preds = %6938, %6695, %6550
  %6588 = phi float [ %6455, %6695 ], [ %6455, %6550 ], [ %6978, %6938 ]
  %6589 = phi float [ %6456, %6695 ], [ %6456, %6550 ], [ %6979, %6938 ]
  %6590 = phi float [ %6457, %6695 ], [ %6457, %6550 ], [ %6980, %6938 ]
  %6591 = phi float [ %6458, %6695 ], [ %6458, %6550 ], [ %6972, %6938 ]
  %6592 = phi float [ %6459, %6695 ], [ %6459, %6550 ], [ %6973, %6938 ]
  %6593 = phi float [ %6460, %6695 ], [ %6460, %6550 ], [ %6974, %6938 ]
  %6594 = icmp eq i32 %6454, %6464
  br i1 %6594, label %6981, label %6453

; <label>:6595                                    ; preds = %6550
  %6596 = icmp eq i32 %6512, 255
  br i1 %6596, label %6695, label %6597, !dx.controlflow.hints !122

; <label>:6597                                    ; preds = %6595
  %6598 = mul nuw nsw i32 %6512, 176
  %6599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6598, i32 undef)  ; BufferLoad(srv,index,wot)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = extractvalue %dx.types.ResRet.f32 %6599, 1
  %6602 = extractvalue %dx.types.ResRet.f32 %6599, 2
  %6603 = extractvalue %dx.types.ResRet.f32 %6599, 3
  %6604 = add nuw nsw i32 %6598, 16
  %6605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.ResRet.f32 %6605, 1
  %6608 = add nuw nsw i32 %6598, 32
  %6609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6608, i32 undef)  ; BufferLoad(srv,index,wot)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  %6613 = add nuw nsw i32 %6598, 48
  %6614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6613, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = extractvalue %dx.types.ResRet.f32 %6614, 3
  %6619 = add nuw nsw i32 %6598, 64
  %6620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6619, i32 undef)  ; BufferLoad(srv,index,wot)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.ResRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.ResRet.f32 %6620, 2
  %6624 = extractvalue %dx.types.ResRet.f32 %6620, 3
  %6625 = add nuw nsw i32 %6598, 80
  %6626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6625, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.ResRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.ResRet.f32 %6626, 3
  %6631 = add nuw nsw i32 %6598, 96
  %6632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6631, i32 undef)  ; BufferLoad(srv,index,wot)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.ResRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.ResRet.f32 %6632, 2
  %6636 = extractvalue %dx.types.ResRet.f32 %6632, 3
  %6637 = bitcast float %6607 to i32
  %6638 = fmul fast float %6612, %112
  %6639 = fmul fast float %6612, %114
  %6640 = fmul fast float %6612, %116
  %6641 = fadd fast float %6638, %162
  %6642 = fadd fast float %6639, %163
  %6643 = fadd fast float %6640, %164
  %6644 = fmul fast float %6641, %6615
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6621, float %6644)  ; FMad(a,b,c)
  %6646 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6627, float %6645)  ; FMad(a,b,c)
  %6647 = fadd fast float %6646, %6633
  %6648 = fmul fast float %6641, %6616
  %6649 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6622, float %6648)  ; FMad(a,b,c)
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6628, float %6649)  ; FMad(a,b,c)
  %6651 = fadd fast float %6650, %6634
  %6652 = fmul fast float %6641, %6617
  %6653 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6623, float %6652)  ; FMad(a,b,c)
  %6654 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6629, float %6653)  ; FMad(a,b,c)
  %6655 = fadd fast float %6654, %6635
  %6656 = fmul fast float %6641, %6618
  %6657 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6624, float %6656)  ; FMad(a,b,c)
  %6658 = call float @dx.op.tertiary.f32(i32 46, float %6643, float %6630, float %6657)  ; FMad(a,b,c)
  %6659 = fadd fast float %6658, %6636
  %6660 = fdiv fast float %6647, %6659
  %6661 = fdiv fast float %6651, %6659
  %6662 = fdiv fast float %6655, %6659
  %6663 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6662)  ; FMax(a,b)
  %6664 = fmul fast float %235, 0x401921FB60000000
  %6665 = call float @dx.op.unary.f32(i32 13, float %6664)  ; Sin(value)
  %6666 = call float @dx.op.unary.f32(i32 12, float %6664)  ; Cos(value)
  %6667 = fsub fast float -0.000000e+00, %6665
  %6668 = fmul fast float %6602, 5.000000e-01
  %6669 = call float @dx.op.dot2.f32(i32 54, float %235, float %235, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6670 = call float @dx.op.unary.f32(i32 22, float %6669)  ; Frc(value)
  %6671 = fmul fast float %6670, 0x404A7DD040000000
  %6672 = call float @dx.op.unary.f32(i32 22, float %6671)  ; Frc(value)
  %6673 = fmul fast float %6672, %6611
  %6674 = fadd fast float %6673, %6668
  %6675 = call float @dx.op.tertiary.f32(i32 46, float %6674, float %6667, float 0.000000e+00)  ; FMad(a,b,c)
  %6676 = call float @dx.op.tertiary.f32(i32 46, float %6674, float %6666, float 0.000000e+00)  ; FMad(a,b,c)
  %6677 = fadd fast float %6675, %6660
  %6678 = fadd fast float %6676, %6661
  %6679 = fmul fast float %6677, %6606
  %6680 = fmul fast float %6678, %6606
  %6681 = call float @dx.op.binary.f32(i32 35, float %6679, float %6602)  ; FMax(a,b)
  %6682 = call float @dx.op.binary.f32(i32 35, float %6680, float %6602)  ; FMax(a,b)
  %6683 = call float @dx.op.binary.f32(i32 36, float %6681, float %6603)  ; FMin(a,b)
  %6684 = call float @dx.op.binary.f32(i32 36, float %6682, float %6603)  ; FMin(a,b)
  %6685 = fadd fast float %6683, %6600
  %6686 = fadd fast float %6684, %6601
  %6687 = uitofp i32 %6637 to float
  %6688 = fadd fast float %6663, %6610
  %6689 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6685, float %6686, float %6687, float undef, i32 0, i32 0, i32 undef, float %6688)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6690 = extractvalue %dx.types.ResRet.f32 %6689, 0
  %6691 = fadd fast float %6690, -1.000000e+00
  %6692 = fmul fast float %6691, %6571
  %6693 = fadd fast float %6692, 1.000000e+00
  %6694 = fmul fast float %6693, %6583
  br label %6695

; <label>:6695                                    ; preds = %6597, %6595
  %6696 = phi float [ %6694, %6597 ], [ %6583, %6595 ]
  %6697 = call float @dx.op.binary.f32(i32 36, float %6696, float %6696)  ; FMin(a,b)
  %6698 = call float @dx.op.binary.f32(i32 36, float %6696, float %6697)  ; FMin(a,b)
  %6699 = fcmp fast ogt float %6698, 0.000000e+00
  br i1 %6699, label %6700, label %6587, !dx.controlflow.hints !123

; <label>:6700                                    ; preds = %6695
  %6701 = fmul fast float %6696, %6505
  %6702 = fmul fast float %6696, %6506
  %6703 = fmul fast float %6696, %6507
  %6704 = fsub fast float %6489, %4672
  %6705 = fcmp fast ogt float %6704, 0.000000e+00
  %6706 = fsub fast float %164, %4672
  %6707 = fcmp fast ogt float %6706, 0.000000e+00
  %6708 = xor i1 %6707, %6705
  %6709 = fsub fast float %4672, %6489
  %6710 = fmul fast float %6709, 2.000000e+00
  %6711 = fadd fast float %6710, %6489
  %6712 = select i1 %6708, float %6489, float %6711
  %6713 = fsub fast float %6712, %164
  %6714 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6713, float %6515, float %6516, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = call float @dx.op.unary.f32(i32 25, float %6714)  ; Rsqrt(value)
  %6716 = fmul fast float %6715, %6515
  %6717 = fmul fast float %6715, %6516
  %6718 = fmul fast float %6715, %6713
  %6719 = fsub fast float %4672, %164
  %6720 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6719)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6716, float %6717, float %6718)  ; Dot3(ax,ay,az,bx,by,bz)
  %6722 = fdiv fast float 1.000000e+00, %6721
  %6723 = fmul fast float %6722, %6720
  %6724 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6706, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = fcmp fast ogt float %6724, 0.000000e+00
  %6726 = fcmp fast olt float %6724, 0.000000e+00
  %6727 = zext i1 %6725 to i32
  %6728 = zext i1 %6726 to i32
  %6729 = sub nsw i32 %6727, %6728
  %6730 = sitofp i32 %6729 to float
  %6731 = fsub fast float %6712, %4672
  %6732 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6731, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6733 = fcmp fast ogt float %6732, 0.000000e+00
  %6734 = fcmp fast olt float %6732, 0.000000e+00
  %6735 = zext i1 %6733 to i32
  %6736 = zext i1 %6734 to i32
  %6737 = sub nsw i32 %6735, %6736
  %6738 = sitofp i32 %6737 to float
  %6739 = fcmp fast une float %6730, %6738
  br i1 %6739, label %6740, label %6750

; <label>:6740                                    ; preds = %6700
  %6741 = fmul fast float %6723, %6718
  %6742 = fmul fast float %6723, %6717
  %6743 = fmul fast float %6723, %6716
  %6744 = fmul fast float %6743, %6743
  %6745 = fmul fast float %6742, %6742
  %6746 = fadd fast float %6744, %6745
  %6747 = fmul fast float %6741, %6741
  %6748 = fadd fast float %6746, %6747
  %6749 = call float @dx.op.unary.f32(i32 24, float %6748)  ; Sqrt(value)
  br label %6762

; <label>:6750                                    ; preds = %6700
  %6751 = icmp slt i32 %6729, 0
  br i1 %6751, label %6752, label %6762

; <label>:6752                                    ; preds = %6750
  %6753 = fsub fast float %162, %6487
  %6754 = fsub fast float %163, %6488
  %6755 = fsub fast float %164, %6712
  %6756 = fmul fast float %6753, %6753
  %6757 = fmul fast float %6754, %6754
  %6758 = fadd fast float %6756, %6757
  %6759 = fmul fast float %6755, %6755
  %6760 = fadd fast float %6758, %6759
  %6761 = call float @dx.op.unary.f32(i32 24, float %6760)  ; Sqrt(value)
  br label %6762

; <label>:6762                                    ; preds = %6752, %6750, %6740
  %6763 = phi float [ %6749, %6740 ], [ %6761, %6752 ], [ 0.000000e+00, %6750 ]
  %6764 = and i1 %6707, %6705
  %6765 = fsub fast float -0.000000e+00, %6763
  %6766 = select i1 %6764, float -0.000000e+00, float %6765
  %6767 = fmul fast float %4673, 0x3FF7154760000000
  %6768 = fmul fast float %6767, %6766
  %6769 = fmul fast float %4674, 0x3FF7154760000000
  %6770 = fmul fast float %6769, %6766
  %6771 = fmul fast float %4675, 0x3FF7154760000000
  %6772 = fmul fast float %6771, %6766
  %6773 = call float @dx.op.unary.f32(i32 21, float %6768)  ; Exp(value)
  %6774 = call float @dx.op.unary.f32(i32 21, float %6770)  ; Exp(value)
  %6775 = call float @dx.op.unary.f32(i32 21, float %6772)  ; Exp(value)
  %6776 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6777 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6778 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6779 = fmul fast float %6701, %6776
  %6780 = fmul fast float %6702, %6777
  %6781 = fmul fast float %6703, %6778
  %6782 = fsub fast float %6521, %4872
  %6783 = fsub fast float %6522, %4871
  %6784 = fsub fast float %6523, %4870
  %6785 = call float @dx.op.dot3.f32(i32 55, float %6782, float %6783, float %6784, float %6782, float %6783, float %6784)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = call float @dx.op.unary.f32(i32 25, float %6785)  ; Rsqrt(value)
  %6787 = fmul fast float %6786, %6782
  %6788 = fmul fast float %6786, %6783
  %6789 = fmul fast float %6786, %6784
  %6790 = call float @dx.op.dot3.f32(i32 55, float %6521, float %6522, float %6523, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %6791 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4868, float %4867, float %6787, float %6788, float %6789)  ; Dot3(ax,ay,az,bx,by,bz)
  %6792 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6793 = fmul fast float %6792, %6528
  %6794 = bitcast i32 %4899 to float
  %6795 = fmul fast float %6792, %6792
  %6796 = fmul fast float %6795, %6794
  %6797 = call float @dx.op.unary.f32(i32 7, float %6796)  ; Saturate(value)
  %6798 = fmul fast float %6793, %6797
  %6799 = bitcast float %6518 to i32
  %6800 = ashr i32 %6799, 1
  %6801 = sub nsw i32 1597463007, %6800
  %6802 = bitcast i32 %6801 to float
  %6803 = fmul fast float %6802, %6515
  %6804 = fmul fast float %6802, %6516
  %6805 = fmul fast float %6802, %6517
  %6806 = fsub fast float %6803, %4872
  %6807 = fsub fast float %6804, %4871
  %6808 = fsub fast float %6805, %4870
  %6809 = call float @dx.op.dot3.f32(i32 55, float %6806, float %6807, float %6808, float %6806, float %6807, float %6808)  ; Dot3(ax,ay,az,bx,by,bz)
  %6810 = call float @dx.op.unary.f32(i32 25, float %6809)  ; Rsqrt(value)
  %6811 = fmul fast float %6806, %6810
  %6812 = fmul fast float %6807, %6810
  %6813 = fmul fast float %6808, %6810
  %6814 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4880, float %4881, float %6811, float %6812, float %6813)  ; Dot3(ax,ay,az,bx,by,bz)
  %6815 = fmul fast float %6814, %6814
  %6816 = call float @dx.op.unary.f32(i32 6, float %6790)  ; FAbs(value)
  %6817 = fsub fast float 1.000000e+00, %4882
  %6818 = call float @dx.op.binary.f32(i32 35, float %6817, float 0x3F847AE140000000)  ; FMax(a,b)
  %6819 = fmul fast float %6818, %6818
  %6820 = fmul fast float %6819, %6819
  %6821 = fsub fast float 1.000000e+00, %6820
  %6822 = fmul fast float %4887, %4887
  %6823 = fmul fast float %6822, %6821
  %6824 = fadd fast float %6823, %6820
  %6825 = bitcast float %6824 to i32
  %6826 = ashr i32 %6825, 1
  %6827 = add nsw i32 %6826, 532487669
  %6828 = bitcast i32 %6827 to float
  %6829 = fadd fast float %6828, %4887
  %6830 = fmul fast float %6820, %6815
  %6831 = fsub fast float 1.000000e+00, %6815
  %6832 = fadd fast float %6831, %6830
  %6833 = fmul fast float %6816, %6816
  %6834 = fmul fast float %6833, %6821
  %6835 = fadd fast float %6834, %6820
  %6836 = bitcast float %6835 to i32
  %6837 = ashr i32 %6836, 1
  %6838 = add nsw i32 %6837, 532487669
  %6839 = bitcast i32 %6838 to float
  %6840 = fadd fast float %6839, %6816
  %6841 = fmul fast float %6832, %6832
  %6842 = fmul fast float %6841, %6829
  %6843 = fmul fast float %6842, %6840
  %6844 = fdiv fast float 1.000000e+00, %6843
  %6845 = bitcast float %6820 to i32
  %6846 = sitofp i32 %6845 to float
  %6847 = fmul fast float %6846, 0x3FE7F73180000000
  %6848 = fadd fast float %6847, 0x41AFE27C40000000
  %6849 = fptosi float %6848 to i32
  %6850 = bitcast i32 %6849 to float
  %6851 = fmul fast float %6484, 0x3FD80E9D60000000
  %6852 = fmul fast float %6851, %6802
  %6853 = fadd fast float %6850, %6852
  %6854 = bitcast float %6853 to i32
  %6855 = sub nsw i32 2129859010, %6854
  %6856 = bitcast i32 %6855 to float
  %6857 = fmul fast float %6820, %6844
  %6858 = fmul fast float %6857, %6850
  %6859 = fmul fast float %6858, %6856
  %6860 = call float @dx.op.unary.f32(i32 6, float %6791)  ; FAbs(value)
  %6861 = fsub fast float 1.000000e+00, %6860
  %6862 = bitcast float %6861 to i32
  %6863 = sitofp i32 %6862 to float
  %6864 = fmul fast float %6863, 5.000000e+00
  %6865 = fadd fast float %6864, 0xC1EFBF8940000000
  %6866 = fptosi float %6865 to i32
  %6867 = bitcast i32 %6866 to float
  %6868 = fsub fast float 1.000000e+00, %4876
  %6869 = fsub fast float 1.000000e+00, %4877
  %6870 = fsub fast float 1.000000e+00, %4885
  %6871 = fmul fast float %6867, %6868
  %6872 = fmul fast float %6867, %6869
  %6873 = fmul fast float %6867, %6870
  %6874 = fadd fast float %6871, %4876
  %6875 = fadd fast float %6872, %4877
  %6876 = fadd fast float %6873, %4885
  br i1 %5187, label %6877, label %6900

; <label>:6877                                    ; preds = %6762
  %6878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4271, float %6860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6879 = extractvalue %dx.types.ResRet.f32 %6878, 0
  %6880 = extractvalue %dx.types.ResRet.f32 %6878, 1
  %6881 = extractvalue %dx.types.ResRet.f32 %6878, 2
  %6882 = fadd fast float %6879, -5.000000e-01
  %6883 = fadd fast float %6880, -5.000000e-01
  %6884 = fadd fast float %6881, -5.000000e-01
  %6885 = fmul fast float %4876, 4.000000e+00
  %6886 = fmul fast float %6885, %6868
  %6887 = fmul fast float %6886, %6882
  %6888 = fmul fast float %4877, 4.000000e+00
  %6889 = fmul fast float %6888, %6869
  %6890 = fmul fast float %6889, %6883
  %6891 = fmul fast float %4885, 4.000000e+00
  %6892 = fmul fast float %6891, %6870
  %6893 = fmul fast float %6892, %6884
  %6894 = fadd fast float %6887, %6874
  %6895 = fadd fast float %6890, %6875
  %6896 = fadd fast float %6893, %6876
  %6897 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6898 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6899 = call float @dx.op.unary.f32(i32 7, float %6896)  ; Saturate(value)
  br label %6900

; <label>:6900                                    ; preds = %6877, %6762
  %6901 = phi float [ %6897, %6877 ], [ %6874, %6762 ]
  %6902 = phi float [ %6898, %6877 ], [ %6875, %6762 ]
  %6903 = phi float [ %6899, %6877 ], [ %6876, %6762 ]
  %6904 = fmul fast float %6790, 9.843750e-01
  %6905 = fadd fast float %6904, 7.812500e-03
  %6906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6905, float %5177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6907 = extractvalue %dx.types.ResRet.f32 %6906, 2
  %6908 = extractvalue %dx.types.ResRet.f32 %6906, 3
  %6909 = fmul fast float %6907, %4876
  %6910 = fmul fast float %6907, %4877
  %6911 = fmul fast float %6907, %4885
  %6912 = fadd fast float %6909, %6908
  %6913 = fadd fast float %6910, %6908
  %6914 = fadd fast float %6911, %6908
  br i1 %5187, label %6915, label %6938

; <label>:6915                                    ; preds = %6900
  %6916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4271, float %6790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.ResRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.ResRet.f32 %6916, 2
  %6920 = fadd fast float %6917, -5.000000e-01
  %6921 = fadd fast float %6918, -5.000000e-01
  %6922 = fadd fast float %6919, -5.000000e-01
  %6923 = fmul fast float %4876, 4.000000e+00
  %6924 = fmul fast float %6923, %6868
  %6925 = fmul fast float %6924, %6920
  %6926 = fmul fast float %4877, 4.000000e+00
  %6927 = fmul fast float %6926, %6869
  %6928 = fmul fast float %6927, %6921
  %6929 = fmul fast float %4885, 4.000000e+00
  %6930 = fmul fast float %6929, %6870
  %6931 = fmul fast float %6930, %6922
  %6932 = fadd fast float %6925, %6912
  %6933 = fadd fast float %6928, %6913
  %6934 = fadd fast float %6931, %6914
  %6935 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  %6936 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  %6937 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  br label %6938

; <label>:6938                                    ; preds = %6915, %6900
  %6939 = phi float [ %6935, %6915 ], [ %6912, %6900 ]
  %6940 = phi float [ %6936, %6915 ], [ %6913, %6900 ]
  %6941 = phi float [ %6937, %6915 ], [ %6914, %6900 ]
  %6942 = call float @dx.op.binary.f32(i32 35, float %6940, float %6941)  ; FMax(a,b)
  %6943 = call float @dx.op.binary.f32(i32 35, float %6939, float %6942)  ; FMax(a,b)
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = fmul fast float %6901, %6859
  %6946 = fmul fast float %6902, %6859
  %6947 = fmul fast float %6903, %6859
  %6948 = fsub fast float 1.000000e+00, %6791
  %6949 = bitcast float %6948 to i32
  %6950 = sitofp i32 %6949 to float
  %6951 = fmul fast float %6950, 5.000000e+00
  %6952 = fadd fast float %6951, 0xC1EFBF8940000000
  %6953 = fptosi float %6952 to i32
  %6954 = bitcast i32 %6953 to float
  %6955 = fmul fast float %6954, %4272
  %6956 = fmul fast float %6944, %6955
  %6957 = fmul fast float %6956, %5255
  %6958 = fmul fast float %6956, %5256
  %6959 = fmul fast float %6956, %5257
  %6960 = fadd fast float %6957, %6945
  %6961 = fadd fast float %6958, %6946
  %6962 = fadd fast float %6959, %6947
  %6963 = fmul fast float %6779, %4268
  %6964 = fmul fast float %6963, %6798
  %6965 = fmul fast float %6964, %6944
  %6966 = fmul fast float %6780, %4268
  %6967 = fmul fast float %6966, %6798
  %6968 = fmul fast float %6967, %6944
  %6969 = fmul fast float %6781, %4268
  %6970 = fmul fast float %6969, %6798
  %6971 = fmul fast float %6970, %6944
  %6972 = fadd fast float %6965, %6458
  %6973 = fadd fast float %6968, %6459
  %6974 = fadd fast float %6971, %6460
  %6975 = fmul fast float %6964, %6960
  %6976 = fmul fast float %6967, %6961
  %6977 = fmul fast float %6970, %6962
  %6978 = fadd fast float %6975, %6455
  %6979 = fadd fast float %6976, %6456
  %6980 = fadd fast float %6977, %6457
  br label %6587

; <label>:6981                                    ; preds = %6587
  br label %6982

; <label>:6982                                    ; preds = %6981, %6421
  %6983 = phi float [ %6423, %6421 ], [ %6588, %6981 ]
  %6984 = phi float [ %6424, %6421 ], [ %6589, %6981 ]
  %6985 = phi float [ %6425, %6421 ], [ %6590, %6981 ]
  %6986 = phi float [ %6426, %6421 ], [ %6591, %6981 ]
  %6987 = phi float [ %6427, %6421 ], [ %6592, %6981 ]
  %6988 = phi float [ %6428, %6421 ], [ %6593, %6981 ]
  %6989 = add i32 %6422, 1
  %6990 = icmp ugt i32 %6989, %6418
  br i1 %6990, label %6991, label %6421

; <label>:6991                                    ; preds = %6982
  br label %6992

; <label>:6992                                    ; preds = %6991, %6371, %6361
  %6993 = phi float [ %6362, %6361 ], [ %6362, %6371 ], [ %6983, %6991 ]
  %6994 = phi float [ %6363, %6361 ], [ %6363, %6371 ], [ %6984, %6991 ]
  %6995 = phi float [ %6364, %6361 ], [ %6364, %6371 ], [ %6985, %6991 ]
  %6996 = phi float [ %6365, %6361 ], [ %6365, %6371 ], [ %6986, %6991 ]
  %6997 = phi float [ %6366, %6361 ], [ %6366, %6371 ], [ %6987, %6991 ]
  %6998 = phi float [ %6367, %6361 ], [ %6367, %6371 ], [ %6988, %6991 ]
  %6999 = fmul fast float %4268, %4268
  %7000 = fsub fast float 1.000000e+00, %6999
  %7001 = call float @dx.op.dot3.f32(i32 55, float %7000, float %7000, float %7000, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7002 = fsub fast float 1.000000e+00, %7001
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = fmul fast float %7004, %5262
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 3
  %7008 = fsub fast float 1.000000e+00, %4275
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7010 = fadd fast float %6998, %4274
  %7011 = fmul fast float %7010, %4275
  %7012 = fmul fast float %7009, %7007
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 3
  %7015 = fmul fast float %6996, %4873
  %7016 = fmul fast float %6997, %4874
  %7017 = fmul fast float %6998, %4875
  %7018 = fcmp fast ogt float %94, %184
  %7019 = and i1 %7018, %4678
  %7020 = or i1 %4684, %7019
  %7021 = icmp eq i32 %4677, 2
  %7022 = fcmp fast ole float %94, %184
  %7023 = and i1 %7022, %7021
  %7024 = or i1 %7023, %7020
  br i1 %7019, label %7025, label %7282

; <label>:7025                                    ; preds = %6992
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7028 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7029 = fmul fast float %7027, %103
  %7030 = fmul fast float %7028, %104
  %7031 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7032 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7033 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7031, float %7032, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7034 = extractvalue %dx.types.ResRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.ResRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.ResRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.ResRet.f32 %7033, 3
  %7038 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7031, float %7032, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7039 = extractvalue %dx.types.ResRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.ResRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.ResRet.f32 %7038, 2
  %7042 = extractvalue %dx.types.ResRet.f32 %7038, 3
  %7043 = call float @dx.op.binary.f32(i32 35, float %7035, float %7036)  ; FMax(a,b)
  %7044 = call float @dx.op.binary.f32(i32 35, float %7034, float %7043)  ; FMax(a,b)
  %7045 = call float @dx.op.binary.f32(i32 35, float %7044, float %7037)  ; FMax(a,b)
  %7046 = call float @dx.op.binary.f32(i32 36, float %7040, float %7041)  ; FMin(a,b)
  %7047 = call float @dx.op.binary.f32(i32 36, float %7039, float %7046)  ; FMin(a,b)
  %7048 = call float @dx.op.binary.f32(i32 36, float %7047, float %7042)  ; FMin(a,b)
  %7049 = fmul fast float %7045, 2.550000e+02
  %7050 = fadd fast float %7049, 0x3F70101020000000
  %7051 = fptoui float %7050 to i32
  %7052 = fmul fast float %7048, 2.550000e+02
  %7053 = fadd fast float %7052, 0x3F70101020000000
  %7054 = fptoui float %7053 to i32
  %7055 = icmp ult i32 %7051, %7054
  br i1 %7055, label %7056, label %7224

; <label>:7056                                    ; preds = %7025
  %7057 = fcmp fast ogt float %93, 9.843750e-01
  %7058 = fadd fast float %94, -4.000000e+00
  %7059 = select i1 %7057, float -4.000000e+00, float %7058
  %7060 = call float @dx.op.binary.f32(i32 35, float %7059, float 0.000000e+00)  ; FMax(a,b)
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = fadd fast float %7062, %7060
  %7064 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7065 = fmul fast float %7063, %7064
  %7066 = call float @dx.op.unary.f32(i32 23, float %7065)  ; Log(value)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7061, 3
  %7068 = fmul fast float %7067, %7066
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7071 = fmul fast float %7068, %7070
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = uitofp i32 %7051 to float
  %7074 = uitofp i32 %7054 to float
  %7075 = fadd fast float %7073, 5.000000e-01
  %7076 = fadd fast float %7074, 5.000000e-01
  %7077 = fmul fast float %7070, %7075
  %7078 = fmul fast float %7070, %7076
  %7079 = fadd fast float %7077, 0x3F0FFB4800000000
  %7080 = fadd fast float %7078, 0xBF0FFB4800000000
  %7081 = call float @dx.op.binary.f32(i32 35, float %7072, float %7079)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 36, float %7081, float %7080)  ; FMin(a,b)
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 2
  %7086 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7087 = fmul fast float %7084, %7082
  %7088 = fadd fast float %7086, %7087
  %7089 = fadd fast float %7086, %7085
  %7090 = fsub fast float %7084, %7085
  %7091 = fadd fast float %7090, %7086
  %7092 = call float @dx.op.binary.f32(i32 35, float %7088, float %7089)  ; FMax(a,b)
  %7093 = call float @dx.op.binary.f32(i32 36, float %7092, float %7091)  ; FMin(a,b)
  %7094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7031, float %7032, float %7093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7095 = extractvalue %dx.types.ResRet.f32 %7094, 0
  %7096 = extractvalue %dx.types.ResRet.f32 %7094, 1
  %7097 = extractvalue %dx.types.ResRet.f32 %7094, 2
  %7098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.i32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.i32 %7098, 1
  %7101 = uitofp i32 %7099 to float
  %7102 = uitofp i32 %7100 to float
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = fmul fast float %7101, %7031
  %7107 = fmul fast float %7102, %7032
  %7108 = fadd fast float %7106, -5.000000e-01
  %7109 = fadd fast float %7107, -5.000000e-01
  %7110 = call float @dx.op.unary.f32(i32 22, float %7108)  ; Frc(value)
  %7111 = call float @dx.op.unary.f32(i32 22, float %7109)  ; Frc(value)
  %7112 = fmul fast float %7110, %7110
  %7113 = fmul fast float %7112, %7110
  %7114 = fsub fast float 3.000000e+00, %7110
  %7115 = fmul fast float %7112, %7114
  %7116 = fmul fast float %7110, 3.000000e+00
  %7117 = fmul fast float %7113, 3.000000e+00
  %7118 = fmul fast float %7112, 6.000000e+00
  %7119 = fsub fast float %7117, %7118
  %7120 = fadd fast float %7119, 4.000000e+00
  %7121 = fmul fast float %7120, 0x3FC5555560000000
  %7122 = fmul fast float %7113, -3.000000e+00
  %7123 = fadd fast float %7112, %7110
  %7124 = fmul fast float %7123, 3.000000e+00
  %7125 = fadd fast float %7122, 1.000000e+00
  %7126 = fadd fast float %7125, %7124
  %7127 = fmul fast float %7113, 0x3FC5555560000000
  %7128 = fmul fast float %7111, %7111
  %7129 = fmul fast float %7128, %7111
  %7130 = fsub fast float 3.000000e+00, %7111
  %7131 = fmul fast float %7128, %7130
  %7132 = fmul fast float %7111, 3.000000e+00
  %7133 = fmul fast float %7129, 3.000000e+00
  %7134 = fmul fast float %7128, 6.000000e+00
  %7135 = fsub fast float %7133, %7134
  %7136 = fadd fast float %7135, 4.000000e+00
  %7137 = fmul fast float %7136, 0x3FC5555560000000
  %7138 = fmul fast float %7129, -3.000000e+00
  %7139 = fadd fast float %7128, %7111
  %7140 = fmul fast float %7139, 3.000000e+00
  %7141 = fadd fast float %7138, 1.000000e+00
  %7142 = fadd fast float %7141, %7140
  %7143 = fmul fast float %7129, 0x3FC5555560000000
  %7144 = fadd fast float %7110, 1.000000e+00
  %7145 = fsub fast float 1.000000e+00, %7116
  %7146 = fadd fast float %7145, %7115
  %7147 = fadd fast float %7146, %7120
  %7148 = fmul fast float %7147, 0x3FC5555560000000
  %7149 = fdiv fast float %7121, %7148
  %7150 = fsub fast float %7144, %7149
  %7151 = fsub fast float 1.000000e+00, %7110
  %7152 = fadd fast float %7126, %7113
  %7153 = fmul fast float %7152, 0x3FC5555560000000
  %7154 = fdiv fast float %7127, %7153
  %7155 = fadd fast float %7151, %7154
  %7156 = fadd fast float %7111, 1.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7132
  %7158 = fadd fast float %7157, %7131
  %7159 = fadd fast float %7158, %7136
  %7160 = fmul fast float %7159, 0x3FC5555560000000
  %7161 = fdiv fast float %7137, %7160
  %7162 = fsub fast float %7156, %7161
  %7163 = fsub fast float 1.000000e+00, %7111
  %7164 = fadd fast float %7142, %7129
  %7165 = fmul fast float %7164, 0x3FC5555560000000
  %7166 = fdiv fast float %7143, %7165
  %7167 = fadd fast float %7166, %7163
  %7168 = fmul fast float %7150, %7104
  %7169 = fsub fast float %7031, %7168
  %7170 = fmul fast float %7155, %7104
  %7171 = fadd fast float %7170, %7031
  %7172 = fmul fast float %7167, %7105
  %7173 = fadd fast float %7172, %7032
  %7174 = fmul fast float %7162, %7105
  %7175 = fsub fast float %7032, %7174
  %7176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7169, float %7175, float %7093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7177 = extractvalue %dx.types.ResRet.f32 %7176, 0
  %7178 = extractvalue %dx.types.ResRet.f32 %7176, 1
  %7179 = extractvalue %dx.types.ResRet.f32 %7176, 2
  %7180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7171, float %7175, float %7093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7181 = extractvalue %dx.types.ResRet.f32 %7180, 0
  %7182 = extractvalue %dx.types.ResRet.f32 %7180, 1
  %7183 = extractvalue %dx.types.ResRet.f32 %7180, 2
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7169, float %7173, float %7093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7171, float %7173, float %7093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.ResRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.ResRet.f32 %7188, 2
  %7192 = fsub fast float %7185, %7177
  %7193 = fsub fast float %7186, %7178
  %7194 = fsub fast float %7187, %7179
  %7195 = fmul fast float %7192, %7165
  %7196 = fmul fast float %7193, %7165
  %7197 = fmul fast float %7194, %7165
  %7198 = fadd fast float %7195, %7177
  %7199 = fadd fast float %7196, %7178
  %7200 = fadd fast float %7197, %7179
  %7201 = fsub fast float %7189, %7181
  %7202 = fsub fast float %7190, %7182
  %7203 = fsub fast float %7191, %7183
  %7204 = fmul fast float %7201, %7165
  %7205 = fmul fast float %7202, %7165
  %7206 = fmul fast float %7203, %7165
  %7207 = fsub fast float %7181, %7198
  %7208 = fadd fast float %7207, %7204
  %7209 = fsub fast float %7182, %7199
  %7210 = fadd fast float %7209, %7205
  %7211 = fsub fast float %7183, %7200
  %7212 = fadd fast float %7211, %7206
  %7213 = fmul fast float %7208, %7153
  %7214 = fmul fast float %7210, %7153
  %7215 = fmul fast float %7212, %7153
  %7216 = fadd fast float %7213, %7198
  %7217 = fadd fast float %7214, %7199
  %7218 = fadd fast float %7215, %7200
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7221 = fmul fast float %7216, %7220
  %7222 = fmul fast float %7217, %7220
  %7223 = fmul fast float %7218, %7220
  br label %7224

; <label>:7224                                    ; preds = %7056, %7025
  %7225 = phi float [ %7095, %7056 ], [ 1.000000e+00, %7025 ]
  %7226 = phi float [ %7096, %7056 ], [ 1.000000e+00, %7025 ]
  %7227 = phi float [ %7097, %7056 ], [ 1.000000e+00, %7025 ]
  %7228 = phi float [ %7221, %7056 ], [ 0.000000e+00, %7025 ]
  %7229 = phi float [ %7222, %7056 ], [ 0.000000e+00, %7025 ]
  %7230 = phi float [ %7223, %7056 ], [ 0.000000e+00, %7025 ]
  %7231 = fmul fast float %7228, %7002
  %7232 = fmul fast float %7229, %7002
  %7233 = fmul fast float %7230, %7002
  %7234 = call float @dx.op.dot3.f32(i32 55, float %7225, float %7226, float %7227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7235 = call float @dx.op.dot3.f32(i32 55, float %7231, float %7232, float %7233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7236 = select i1 %224, float %7234, float %7225
  %7237 = select i1 %224, float %7234, float %7226
  %7238 = select i1 %224, float 1.000000e+00, float %7227
  %7239 = select i1 %224, float %7235, float %7231
  %7240 = select i1 %224, float 0.000000e+00, float %7232
  %7241 = select i1 %224, float 0.000000e+00, float %7233
  %7242 = fmul fast float %7236, %7015
  %7243 = fmul fast float %7237, %7016
  %7244 = fmul fast float %7238, %7017
  %7245 = fadd fast float %7242, %7239
  %7246 = fadd fast float %7243, %7240
  %7247 = fadd fast float %7241, %7244
  %7248 = fmul fast float %7236, %6993
  %7249 = fmul fast float %7237, %6994
  %7250 = fmul fast float %7238, %6995
  %7251 = fmul fast float %132, %7027
  %7252 = fmul fast float %134, %7028
  %7253 = fsub fast float 1.000000e+00, %7251
  %7254 = fsub fast float 1.000000e+00, %7252
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = fmul fast float %7253, %7256
  %7260 = fmul fast float %7253, %7257
  %7261 = fmul fast float %7253, %7258
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = extractvalue %dx.types.CBufRet.f32 %7262, 1
  %7265 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7266 = fmul fast float %7254, %7263
  %7267 = fmul fast float %7254, %7264
  %7268 = fmul fast float %7254, %7265
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.CBufRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.CBufRet.f32 %7269, 2
  %7273 = fadd fast float %7266, %7270
  %7274 = fadd fast float %7273, %7259
  %7275 = fadd fast float %7267, %7271
  %7276 = fadd fast float %7275, %7260
  %7277 = fadd fast float %7268, %7272
  %7278 = fadd fast float %7277, %7261
  %7279 = fmul fast float %7274, %184
  %7280 = fmul fast float %7276, %184
  %7281 = fmul fast float %7278, %184
  br label %7282

; <label>:7282                                    ; preds = %7224, %6992
  %7283 = phi float [ %7279, %7224 ], [ %162, %6992 ]
  %7284 = phi float [ %7280, %7224 ], [ %163, %6992 ]
  %7285 = phi float [ %7281, %7224 ], [ %164, %6992 ]
  %7286 = phi float [ %184, %7224 ], [ %94, %6992 ]
  %7287 = phi float [ %7245, %7224 ], [ %7015, %6992 ]
  %7288 = phi float [ %7246, %7224 ], [ %7016, %6992 ]
  %7289 = phi float [ %7247, %7224 ], [ %7017, %6992 ]
  %7290 = phi float [ %7248, %7224 ], [ %6993, %6992 ]
  %7291 = phi float [ %7249, %7224 ], [ %6994, %6992 ]
  %7292 = phi float [ %7250, %7224 ], [ %6995, %6992 ]
  %7293 = phi float [ %7225, %7224 ], [ 1.000000e+00, %6992 ]
  br i1 %7024, label %8448, label %7294

; <label>:7294                                    ; preds = %7282
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = extractvalue %dx.types.CBufRet.f32 %7295, 3
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.CBufRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7304 = extractvalue %dx.types.CBufRet.f32 %7300, 3
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 3
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7322 = fcmp fast olt float %7321, -5.000000e-01
  %7323 = call float @dx.op.dot3.f32(i32 55, float %7283, float %7284, float %7285, float %7283, float %7284, float %7285)  ; Dot3(ax,ay,az,bx,by,bz)
  %7324 = call float @dx.op.unary.f32(i32 25, float %7323)  ; Rsqrt(value)
  %7325 = fmul fast float %7324, %7323
  %7326 = fmul fast float %7324, %7283
  %7327 = fmul fast float %7324, %7284
  %7328 = fmul fast float %7324, %7285
  %7329 = fadd fast float %7325, %7299
  %7330 = call float @dx.op.dot3.f32(i32 55, float %7326, float %7327, float %7328, float %7296, float %7297, float %7298)  ; Dot3(ax,ay,az,bx,by,bz)
  %7331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.i32 %7331, 1
  %7333 = and i32 %7332, 1
  %7334 = icmp ne i32 %7333, 0
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 2
  %7337 = fcmp fast ogt float %7336, 0.000000e+00
  %7338 = and i1 %7334, %7337
  br i1 %7338, label %7339, label %7745, !dx.controlflow.hints !124

; <label>:7339                                    ; preds = %7294
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 3
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 2
  %7346 = fsub fast float %7343, %7345
  %7347 = and i32 %7332, 2
  %7348 = extractvalue %dx.types.CBufRet.i32 %7331, 0
  %7349 = call i32 @dx.op.binary.i32(i32 40, i32 %7348, i32 3)  ; UMin(a,b)
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7353 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  %7354 = extractvalue %dx.types.CBufRet.f32 %7344, 1
  %7355 = fsub fast float %7351, %7353
  %7356 = fsub fast float %7352, %7354
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 0
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  %7360 = fsub fast float -0.000000e+00, %7355
  %7361 = fsub fast float -0.000000e+00, %7356
  %7362 = call float @dx.op.dot2.f32(i32 54, float %7326, float %7327, float %7326, float %7327)  ; Dot2(ax,ay,bx,by)
  %7363 = call float @dx.op.dot2.f32(i32 54, float %7326, float %7327, float %7360, float %7361)  ; Dot2(ax,ay,bx,by)
  %7364 = fmul fast float %7363, 2.000000e+00
  %7365 = call float @dx.op.dot2.f32(i32 54, float %7360, float %7361, float %7360, float %7361)  ; Dot2(ax,ay,bx,by)
  %7366 = fmul fast float %7358, %7358
  %7367 = fsub fast float %7365, %7366
  %7368 = fmul fast float %7364, %7364
  %7369 = fmul fast float %7362, 4.000000e+00
  %7370 = fmul fast float %7369, %7367
  %7371 = fsub fast float %7368, %7370
  %7372 = fcmp fast ogt float %7371, 0.000000e+00
  br i1 %7372, label %7373, label %7388

; <label>:7373                                    ; preds = %7339
  %7374 = fcmp fast ogt float %7364, 0.000000e+00
  %7375 = call float @dx.op.unary.f32(i32 24, float %7371)  ; Sqrt(value)
  %7376 = fsub fast float -0.000000e+00, %7375
  %7377 = select i1 %7374, float %7375, float %7376
  %7378 = fadd fast float %7377, %7364
  %7379 = fmul float %7378, -5.000000e-01
  %7380 = fdiv fast float %7379, %7362
  %7381 = call float @dx.op.binary.f32(i32 35, float %7380, float 0.000000e+00)  ; FMax(a,b)
  %7382 = call float @dx.op.binary.f32(i32 36, float %7325, float %7381)  ; FMin(a,b)
  %7383 = fdiv fast float %7367, %7379
  %7384 = call float @dx.op.binary.f32(i32 35, float %7383, float 0.000000e+00)  ; FMax(a,b)
  %7385 = call float @dx.op.binary.f32(i32 36, float %7325, float %7384)  ; FMin(a,b)
  %7386 = call float @dx.op.binary.f32(i32 36, float %7382, float %7385)  ; FMin(a,b)
  %7387 = call float @dx.op.binary.f32(i32 35, float %7382, float %7385)  ; FMax(a,b)
  br label %7388

; <label>:7388                                    ; preds = %7373, %7339
  %7389 = phi float [ %7387, %7373 ], [ -1.000000e+00, %7339 ]
  %7390 = phi float [ %7386, %7373 ], [ -1.000000e+00, %7339 ]
  %7391 = phi i1 [ true, %7373 ], [ false, %7339 ]
  %7392 = and i1 %7359, %7391
  br i1 %7392, label %7393, label %7395

; <label>:7393                                    ; preds = %7388
  %7394 = fcmp fast oeq float %7390, %7389
  br i1 %7394, label %7698, label %7396

; <label>:7395                                    ; preds = %7388
  br i1 %7359, label %7698, label %7396

; <label>:7396                                    ; preds = %7395, %7393
  %7397 = phi float [ %7325, %7395 ], [ %7389, %7393 ]
  %7398 = phi float [ 0.000000e+00, %7395 ], [ %7390, %7393 ]
  %7399 = icmp ne i32 %7347, 0
  %7400 = fmul fast float %7397, %7328
  %7401 = fadd fast float %7400, %7341
  %7402 = fmul fast float %7401, %7397
  %7403 = select i1 %7399, float 0.000000e+00, float %7402
  %7404 = fcmp fast oeq float %7328, 0.000000e+00
  %7405 = fdiv fast float %7346, %7328
  %7406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7405)  ; FMax(a,b)
  %7407 = select i1 %7404, float %7397, float %7406
  %7408 = call float @dx.op.binary.f32(i32 36, float %7397, float %7407)  ; FMin(a,b)
  %7409 = fcmp fast ogt float %7328, 0.000000e+00
  %7410 = fcmp fast olt float %7346, 0.000000e+00
  br i1 %7409, label %7411, label %7468

; <label>:7411                                    ; preds = %7396
  %7412 = icmp eq i32 %7347, 0
  br i1 %7410, label %7413, label %7457

; <label>:7413                                    ; preds = %7411
  %7414 = select i1 %7412, float %7397, float 0.000000e+00
  %7415 = fsub fast float -0.000000e+00, %7414
  %7416 = call float @dx.op.unary.f32(i32 6, float %7415)  ; FAbs(value)
  %7417 = fmul fast float %7414, %7328
  %7418 = fadd fast float %7417, %7341
  %7419 = fmul fast float %7416, %7418
  %7420 = fsub fast float %7403, %7419
  %7421 = fsub fast float %7397, %7416
  %7422 = select i1 %7412, float %7421, float 0.000000e+00
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.CBufRet.f32 %7423, 2
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.CBufRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.CBufRet.f32 %7427, 3
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 3
  %7434 = call float @dx.op.binary.f32(i32 36, float %7420, float %7433)  ; FMin(a,b)
  %7435 = fmul fast float %7431, %7422
  %7436 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7437 = fsub fast float %7428, %7424
  %7438 = fsub fast float %7429, %7425
  %7439 = fsub fast float %7430, %7426
  %7440 = fmul fast float %7436, %7437
  %7441 = fmul fast float %7436, %7438
  %7442 = fmul fast float %7436, %7439
  %7443 = fadd fast float %7440, %7424
  %7444 = fadd fast float %7441, %7425
  %7445 = fadd fast float %7442, %7426
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = fadd fast float %7448, %7447
  %7450 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7452 = extractvalue %dx.types.CBufRet.f32 %7446, 3
  %7453 = fadd fast float %7452, %7451
  %7454 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7455 = fmul fast float %7450, %7434
  %7456 = fmul fast float %7455, %7454
  br label %7698

; <label>:7457                                    ; preds = %7411
  br i1 %7412, label %7458, label %7479

; <label>:7458                                    ; preds = %7457
  %7459 = call float @dx.op.binary.f32(i32 36, float %7408, float %7398)  ; FMin(a,b)
  %7460 = fsub fast float %7408, %7459
  %7461 = fsub fast float %7460, %7397
  %7462 = call float @dx.op.unary.f32(i32 6, float %7461)  ; FAbs(value)
  %7463 = fadd fast float %7460, %7397
  %7464 = fmul fast float %7463, %7328
  %7465 = fadd fast float %7464, %7341
  %7466 = fmul fast float %7465, %7462
  %7467 = fsub fast float %7403, %7466
  br label %7479

; <label>:7468                                    ; preds = %7396
  br i1 %7410, label %7469, label %7479

; <label>:7469                                    ; preds = %7468
  %7470 = call float @dx.op.binary.f32(i32 35, float %7398, float %7408)  ; FMax(a,b)
  %7471 = icmp eq i32 %7347, 0
  %7472 = select i1 %7471, float %7408, float 0.000000e+00
  %7473 = fsub fast float -0.000000e+00, %7472
  %7474 = call float @dx.op.unary.f32(i32 6, float %7473)  ; FAbs(value)
  %7475 = fmul fast float %7472, %7328
  %7476 = fadd fast float %7475, %7341
  %7477 = fmul fast float %7474, %7476
  %7478 = fsub fast float %7403, %7477
  br label %7479

; <label>:7479                                    ; preds = %7469, %7468, %7458, %7457
  %7480 = phi float [ %7398, %7457 ], [ %7398, %7458 ], [ %7470, %7469 ], [ %7398, %7468 ]
  %7481 = phi float [ 0.000000e+00, %7457 ], [ %7462, %7458 ], [ %7474, %7469 ], [ 0.000000e+00, %7468 ]
  %7482 = phi float [ %7403, %7457 ], [ %7467, %7458 ], [ %7478, %7469 ], [ %7403, %7468 ]
  %7483 = phi float [ %7408, %7457 ], [ %7408, %7458 ], [ %7397, %7469 ], [ %7397, %7468 ]
  %7484 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %7484, align 4, !tbaa !125, !noalias !127
  %7485 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %7485, align 4, !tbaa !125, !noalias !127
  %7486 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %7486, align 4, !tbaa !125, !noalias !127
  %7487 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7487, align 4, !tbaa !125, !noalias !127
  %7488 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7488, align 4, !tbaa !125, !noalias !127
  %7489 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7489, align 4, !tbaa !125, !noalias !127
  %7490 = icmp sgt i32 %7349, 0
  br i1 %7490, label %7491, label %7552

; <label>:7491                                    ; preds = %7479
  br label %7492

; <label>:7492                                    ; preds = %7541, %7491
  %7493 = phi i32 [ %7542, %7541 ], [ 0, %7491 ]
  %7494 = phi i32 [ %7543, %7541 ], [ 0, %7491 ]
  %7495 = add nuw i32 %7494, 171
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7495)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7500 = extractvalue %dx.types.CBufRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.CBufRet.f32 %7499, 1
  %7502 = fsub fast float %7497, %7500
  %7503 = fsub fast float %7498, %7501
  %7504 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7505 = fsub fast float -0.000000e+00, %7502
  %7506 = fsub fast float -0.000000e+00, %7503
  %7507 = call float @dx.op.dot2.f32(i32 54, float %7326, float %7327, float %7505, float %7506)  ; Dot2(ax,ay,bx,by)
  %7508 = fmul fast float %7507, 2.000000e+00
  %7509 = call float @dx.op.dot2.f32(i32 54, float %7505, float %7506, float %7505, float %7506)  ; Dot2(ax,ay,bx,by)
  %7510 = fmul fast float %7504, %7504
  %7511 = fsub fast float %7509, %7510
  %7512 = fmul fast float %7508, %7508
  %7513 = fmul fast float %7369, %7511
  %7514 = fsub fast float %7512, %7513
  %7515 = fcmp fast ogt float %7514, 0.000000e+00
  br i1 %7515, label %7516, label %7531

; <label>:7516                                    ; preds = %7492
  %7517 = fcmp fast ogt float %7508, 0.000000e+00
  %7518 = call float @dx.op.unary.f32(i32 24, float %7514)  ; Sqrt(value)
  %7519 = fsub fast float -0.000000e+00, %7518
  %7520 = select i1 %7517, float %7518, float %7519
  %7521 = fadd fast float %7520, %7508
  %7522 = fmul float %7521, -5.000000e-01
  %7523 = fdiv fast float %7522, %7362
  %7524 = call float @dx.op.binary.f32(i32 35, float %7523, float 0.000000e+00)  ; FMax(a,b)
  %7525 = call float @dx.op.binary.f32(i32 36, float %7397, float %7524)  ; FMin(a,b)
  %7526 = fdiv fast float %7511, %7522
  %7527 = call float @dx.op.binary.f32(i32 35, float %7526, float 0.000000e+00)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7397, float %7527)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7525, float %7528)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7525, float %7528)  ; FMax(a,b)
  br label %7531

; <label>:7531                                    ; preds = %7516, %7492
  %7532 = phi float [ %7530, %7516 ], [ -1.000000e+00, %7492 ]
  %7533 = phi float [ %7529, %7516 ], [ -1.000000e+00, %7492 ]
  %7534 = phi i1 [ true, %7516 ], [ false, %7492 ]
  br i1 %7534, label %7535, label %7541

; <label>:7535                                    ; preds = %7531
  %7536 = call float @dx.op.binary.f32(i32 35, float %7480, float %7533)  ; FMax(a,b)
  %7537 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7494
  store float %7536, float* %7537, align 4, !tbaa !125, !noalias !127
  %7538 = call float @dx.op.binary.f32(i32 35, float %7480, float %7532)  ; FMax(a,b)
  %7539 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7494
  store float %7538, float* %7539, align 4, !tbaa !125, !noalias !127
  %7540 = add nsw i32 %7493, 1
  br label %7541

; <label>:7541                                    ; preds = %7535, %7531
  %7542 = phi i32 [ %7540, %7535 ], [ %7493, %7531 ]
  %7543 = add nuw nsw i32 %7494, 1
  %7544 = icmp eq i32 %7543, %7349
  br i1 %7544, label %7545, label %7492

; <label>:7545                                    ; preds = %7541
  %7546 = load float, float* %7486, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %7547 = load float, float* %7485, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %7548 = load float, float* %7484, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %7549 = load float, float* %7489, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %7550 = load float, float* %7488, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %7551 = load float, float* %7487, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %7552

; <label>:7552                                    ; preds = %7545, %7479
  %7553 = phi float [ -1.000000e+00, %7479 ], [ %7551, %7545 ]
  %7554 = phi float [ -1.000000e+00, %7479 ], [ %7550, %7545 ]
  %7555 = phi float [ -1.000000e+00, %7479 ], [ %7549, %7545 ]
  %7556 = phi float [ -1.000000e+00, %7479 ], [ %7548, %7545 ]
  %7557 = phi float [ -1.000000e+00, %7479 ], [ %7547, %7545 ]
  %7558 = phi float [ -1.000000e+00, %7479 ], [ %7546, %7545 ]
  %7559 = phi i32 [ 0, %7479 ], [ %7542, %7545 ]
  %7560 = call float @dx.op.binary.f32(i32 36, float %7557, float %7558)  ; FMin(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7556, float %7560)  ; FMin(a,b)
  %7562 = call float @dx.op.binary.f32(i32 35, float %7556, float %7557)  ; FMax(a,b)
  %7563 = call float @dx.op.binary.f32(i32 36, float %7562, float %7558)  ; FMin(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7556, float %7557)  ; FMin(a,b)
  %7565 = call float @dx.op.binary.f32(i32 35, float %7564, float %7563)  ; FMax(a,b)
  %7566 = call float @dx.op.binary.f32(i32 35, float %7557, float %7558)  ; FMax(a,b)
  %7567 = call float @dx.op.binary.f32(i32 35, float %7556, float %7566)  ; FMax(a,b)
  store float %7561, float* %7484, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %7565, float* %7485, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %7567, float* %7486, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %7568 = call float @dx.op.binary.f32(i32 36, float %7554, float %7555)  ; FMin(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7553, float %7568)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 35, float %7553, float %7554)  ; FMax(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7570, float %7555)  ; FMin(a,b)
  %7572 = call float @dx.op.binary.f32(i32 36, float %7553, float %7554)  ; FMin(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %7572, float %7571)  ; FMax(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %7554, float %7555)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float %7553, float %7574)  ; FMax(a,b)
  store float %7569, float* %7487, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %7573, float* %7488, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %7575, float* %7489, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %7576 = sub nsw i32 3, %7559
  %7577 = icmp sgt i32 %7576, 2
  br i1 %7577, label %7578, label %7616

; <label>:7578                                    ; preds = %7552
  %7579 = icmp eq i32 %7347, 0
  %7580 = fsub fast float %7397, %7481
  %7581 = select i1 %7579, float %7580, float %7481
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.CBufRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.CBufRet.f32 %7582, 2
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.CBufRet.f32 %7586, 2
  %7590 = extractvalue %dx.types.CBufRet.f32 %7586, 3
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 3
  %7593 = call float @dx.op.binary.f32(i32 36, float %7482, float %7592)  ; FMin(a,b)
  %7594 = fmul fast float %7590, %7581
  %7595 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7596 = fsub fast float %7587, %7583
  %7597 = fsub fast float %7588, %7584
  %7598 = fsub fast float %7589, %7585
  %7599 = fmul fast float %7595, %7596
  %7600 = fmul fast float %7595, %7597
  %7601 = fmul fast float %7595, %7598
  %7602 = fadd fast float %7599, %7583
  %7603 = fadd fast float %7600, %7584
  %7604 = fadd fast float %7601, %7585
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7608 = fadd fast float %7607, %7606
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7605, 2
  %7611 = extractvalue %dx.types.CBufRet.f32 %7605, 3
  %7612 = fadd fast float %7611, %7610
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = fmul fast float %7609, %7593
  %7615 = fmul fast float %7614, %7613
  br label %7698

; <label>:7616                                    ; preds = %7552
  %7617 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7576
  %7618 = load float, float* %7617, align 4, !tbaa !125, !noalias !127
  %7619 = fcmp fast olt float %7618, %7483
  %7620 = icmp sgt i32 %7559, 0
  %7621 = and i1 %7620, %7619
  br i1 %7621, label %7622, label %7659

; <label>:7622                                    ; preds = %7616
  br label %7623

; <label>:7623                                    ; preds = %7652, %7622
  %7624 = phi float [ %7653, %7652 ], [ %7481, %7622 ]
  %7625 = phi float [ %7654, %7652 ], [ %7482, %7622 ]
  %7626 = phi float [ %7634, %7652 ], [ %7618, %7622 ]
  %7627 = phi i32 [ %7631, %7652 ], [ %7576, %7622 ]
  %7628 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7627
  %7629 = load float, float* %7628, align 4, !tbaa !125, !noalias !127
  %7630 = icmp slt i32 %7627, 2
  %7631 = add nsw i32 %7627, 1
  %7632 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7631
  %7633 = load float, float* %7632, align 4, !tbaa !125, !noalias !127
  %7634 = select i1 %7630, float %7633, float %7397
  %7635 = call float @dx.op.binary.f32(i32 36, float %7634, float %7629)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7483, float %7635)  ; FMin(a,b)
  %7637 = icmp eq i32 %7347, 0
  %7638 = fadd fast float %7636, %7626
  %7639 = fmul fast float %7638, %7328
  %7640 = fadd fast float %7639, %7341
  br i1 %7637, label %7646, label %7641

; <label>:7641                                    ; preds = %7623
  %7642 = fsub fast float %7636, %7626
  %7643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7642)  ; FMax(a,b)
  %7644 = fmul fast float %7643, %7640
  %7645 = fadd fast float %7644, %7625
  br label %7652

; <label>:7646                                    ; preds = %7623
  %7647 = fsub fast float %7626, %7636
  %7648 = call float @dx.op.unary.f32(i32 6, float %7647)  ; FAbs(value)
  %7649 = fadd fast float %7648, %7624
  %7650 = fmul fast float %7648, %7640
  %7651 = fsub fast float %7625, %7650
  br label %7652

; <label>:7652                                    ; preds = %7646, %7641
  %7653 = phi float [ %7643, %7641 ], [ %7649, %7646 ]
  %7654 = phi float [ %7645, %7641 ], [ %7651, %7646 ]
  %7655 = fcmp fast olt float %7634, %7483
  %7656 = icmp slt i32 %7631, 3
  %7657 = and i1 %7656, %7655
  br i1 %7657, label %7623, label %7658

; <label>:7658                                    ; preds = %7652
  br label %7659

; <label>:7659                                    ; preds = %7658, %7616
  %7660 = phi float [ %7481, %7616 ], [ %7653, %7658 ]
  %7661 = phi float [ %7482, %7616 ], [ %7654, %7658 ]
  %7662 = fsub fast float %7397, %7660
  %7663 = select i1 %7399, float %7660, float %7662
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7666 = extractvalue %dx.types.CBufRet.f32 %7664, 1
  %7667 = extractvalue %dx.types.CBufRet.f32 %7664, 2
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7675 = call float @dx.op.binary.f32(i32 36, float %7661, float %7674)  ; FMin(a,b)
  %7676 = fmul fast float %7672, %7663
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = fsub fast float %7669, %7665
  %7679 = fsub fast float %7670, %7666
  %7680 = fsub fast float %7671, %7667
  %7681 = fmul fast float %7677, %7678
  %7682 = fmul fast float %7677, %7679
  %7683 = fmul fast float %7677, %7680
  %7684 = fadd fast float %7681, %7665
  %7685 = fadd fast float %7682, %7666
  %7686 = fadd fast float %7683, %7667
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = fadd fast float %7689, %7688
  %7691 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7693 = extractvalue %dx.types.CBufRet.f32 %7687, 3
  %7694 = fadd fast float %7693, %7692
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7696 = fmul fast float %7691, %7675
  %7697 = fmul fast float %7696, %7695
  br label %7698

; <label>:7698                                    ; preds = %7659, %7578, %7413, %7395, %7393
  %7699 = phi float [ %7422, %7413 ], [ %7581, %7578 ], [ %7663, %7659 ], [ 0.000000e+00, %7393 ], [ 0.000000e+00, %7395 ]
  %7700 = phi float [ %7456, %7413 ], [ %7615, %7578 ], [ %7697, %7659 ], [ 0.000000e+00, %7393 ], [ 0.000000e+00, %7395 ]
  %7701 = phi float [ %7443, %7413 ], [ %7602, %7578 ], [ %7684, %7659 ], [ 0.000000e+00, %7393 ], [ 0.000000e+00, %7395 ]
  %7702 = phi float [ %7444, %7413 ], [ %7603, %7578 ], [ %7685, %7659 ], [ 0.000000e+00, %7393 ], [ 0.000000e+00, %7395 ]
  %7703 = phi float [ %7445, %7413 ], [ %7604, %7578 ], [ %7686, %7659 ], [ 0.000000e+00, %7393 ], [ 0.000000e+00, %7395 ]
  %7704 = fmul fast float %7336, %7700
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %7707 = fsub fast float %7343, %7706
  %7708 = fcmp fast olt float %7704, -2.000000e+01
  %7709 = call float @dx.op.unary.f32(i32 21, float %7704)  ; Exp(value)
  %7710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7711 = extractvalue %dx.types.CBufRet.f32 %7710, 2
  %7712 = extractvalue %dx.types.CBufRet.f32 %7710, 3
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7715 = fmul fast float %7712, %7707
  %7716 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7717 = fsub fast float 1.000000e+00, %7716
  %7718 = fmul fast float %7328, 5.000000e-01
  %7719 = fadd fast float %7718, 5.000000e-01
  %7720 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  %7721 = fsub fast float 1.000000e+00, %7720
  %7722 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7717)  ; FMax(a,b)
  %7723 = fdiv fast float %7721, %7722
  %7724 = fsub fast float %7707, %7285
  %7725 = call float @dx.op.unary.f32(i32 6, float %7724)  ; FAbs(value)
  %7726 = fmul fast float %7725, %7711
  %7727 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7728 = fsub fast float 1.000000e+00, %7726
  %7729 = fmul fast float %7728, %7727
  %7730 = fadd fast float %7729, %7726
  %7731 = fmul fast float %7714, %7707
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fsub fast float 1.000000e+00, %7730
  %7734 = fmul fast float %7733, %7732
  %7735 = fadd fast float %7734, %7730
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7737 = fadd fast float %7709, -1.000000e+00
  %7738 = select i1 %7708, float -1.000000e+00, float %7737
  %7739 = fmul fast float %7736, %7738
  %7740 = fadd fast float %7739, 1.000000e+00
  %7741 = fsub fast float -0.000000e+00, %7739
  %7742 = fmul fast float %7701, %7741
  %7743 = fmul fast float %7702, %7741
  %7744 = fmul fast float %7703, %7741
  br label %7745

; <label>:7745                                    ; preds = %7698, %7294
  %7746 = phi float [ %7699, %7698 ], [ 0.000000e+00, %7294 ]
  %7747 = phi float [ %7740, %7698 ], [ 1.000000e+00, %7294 ]
  %7748 = phi float [ %7742, %7698 ], [ 0.000000e+00, %7294 ]
  %7749 = phi float [ %7743, %7698 ], [ 0.000000e+00, %7294 ]
  %7750 = phi float [ %7744, %7698 ], [ 0.000000e+00, %7294 ]
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7753 = fsub fast float 1.000000e+00, %7747
  %7754 = fmul fast float %7753, %7329
  %7755 = fmul fast float %7754, %7752
  %7756 = fsub fast float %7329, %7755
  br i1 %7322, label %7757, label %7786, !dx.controlflow.hints !163

; <label>:7757                                    ; preds = %7745
  %7758 = fmul fast float %7330, %7319
  %7759 = fadd fast float %7758, %7320
  %7760 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7761 = fmul fast float %7301, %7756
  %7762 = fsub fast float -0.000000e+00, %7761
  %7763 = fmul fast float %7302, %7756
  %7764 = fsub fast float -0.000000e+00, %7763
  %7765 = call float @dx.op.unary.f32(i32 21, float %7762)  ; Exp(value)
  %7766 = call float @dx.op.unary.f32(i32 21, float %7764)  ; Exp(value)
  %7767 = call float @dx.op.binary.f32(i32 35, float %7309, float %7765)  ; FMax(a,b)
  %7768 = call float @dx.op.binary.f32(i32 35, float %7309, float %7766)  ; FMax(a,b)
  %7769 = fsub fast float %7768, %7767
  %7770 = fmul fast float %7769, %7760
  %7771 = fadd fast float %7770, %7767
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fsub fast float %7306, %7311
  %7774 = fsub fast float %7307, %7312
  %7775 = fsub fast float %7308, %7313
  %7776 = fmul fast float %7760, %7773
  %7777 = fmul fast float %7760, %7774
  %7778 = fmul fast float %7760, %7775
  %7779 = fadd fast float %7776, %7311
  %7780 = fadd fast float %7777, %7312
  %7781 = fadd fast float %7778, %7313
  %7782 = fsub fast float 1.000000e+00, %7772
  %7783 = fmul fast float %7782, %7779
  %7784 = fmul fast float %7782, %7780
  %7785 = fmul fast float %7782, %7781
  br label %7845

; <label>:7786                                    ; preds = %7745
  %7787 = fmul fast float %7756, %7318
  %7788 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7789 = fsub fast float 2.000000e+00, %7788
  %7790 = fmul fast float %7788, 9.921875e-01
  %7791 = fmul fast float %7790, %7789
  %7792 = fadd fast float %7791, 3.906250e-03
  %7793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7792, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = fsub fast float %7788, %7794
  %7796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7795)  ; FMax(a,b)
  %7797 = fmul fast float %7304, %7285
  %7798 = call float @dx.op.unary.f32(i32 6, float %7797)  ; FAbs(value)
  %7799 = fcmp fast ogt float %7798, 0x3EB0C6F7A0000000
  br i1 %7799, label %7800, label %7806, !dx.controlflow.hints !164

; <label>:7800                                    ; preds = %7786
  %7801 = fmul fast float %7797, 0xBFF7154760000000
  %7802 = call float @dx.op.unary.f32(i32 21, float %7801)  ; Exp(value)
  %7803 = fsub fast float 1.000000e+00, %7802
  %7804 = fdiv fast float %7803, %7797
  %7805 = fmul fast float %7804, %7314
  br label %7806

; <label>:7806                                    ; preds = %7800, %7786
  %7807 = phi float [ %7805, %7800 ], [ %7314, %7786 ]
  %7808 = fadd fast float %7807, %7316
  %7809 = fmul fast float %7808, %7796
  %7810 = fmul fast float %7301, %7809
  %7811 = fsub fast float -0.000000e+00, %7810
  %7812 = fmul fast float %7302, %7809
  %7813 = fsub fast float -0.000000e+00, %7812
  %7814 = fmul fast float %7303, %7809
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7817 = call float @dx.op.unary.f32(i32 21, float %7813)  ; Exp(value)
  %7818 = call float @dx.op.unary.f32(i32 21, float %7815)  ; Exp(value)
  %7819 = fmul fast float %7330, %7330
  %7820 = fadd fast float %7819, 1.000000e+00
  %7821 = fmul fast float %7820, 0x3FAE8EC8A0000000
  %7822 = fmul fast float %7821, %7311
  %7823 = fmul fast float %7821, %7312
  %7824 = fmul fast float %7821, %7313
  %7825 = fmul fast float %7330, %7309
  %7826 = fsub fast float 1.000000e+00, %7825
  %7827 = fmul fast float %7309, %7309
  %7828 = fsub fast float 1.000000e+00, %7827
  %7829 = fmul fast float %7828, 0x3FB45F3060000000
  %7830 = fmul fast float %7826, %7826
  %7831 = fdiv fast float 1.000000e+00, %7830
  %7832 = fmul fast float %7829, %7831
  %7833 = fmul fast float %7832, %7306
  %7834 = fmul fast float %7832, %7307
  %7835 = fmul fast float %7832, %7308
  %7836 = fadd fast float %7833, %7822
  %7837 = fadd fast float %7834, %7823
  %7838 = fadd fast float %7835, %7824
  %7839 = fsub fast float 1.000000e+00, %7816
  %7840 = fsub fast float 1.000000e+00, %7817
  %7841 = fsub fast float 1.000000e+00, %7818
  %7842 = fmul fast float %7836, %7839
  %7843 = fmul fast float %7837, %7840
  %7844 = fmul fast float %7838, %7841
  br label %7845

; <label>:7845                                    ; preds = %7806, %7757
  %7846 = phi float [ %7783, %7757 ], [ %7842, %7806 ]
  %7847 = phi float [ %7784, %7757 ], [ %7843, %7806 ]
  %7848 = phi float [ %7785, %7757 ], [ %7844, %7806 ]
  %7849 = phi float [ %7772, %7757 ], [ %7816, %7806 ]
  %7850 = phi float [ %7772, %7757 ], [ %7817, %7806 ]
  %7851 = phi float [ %7772, %7757 ], [ %7818, %7806 ]
  br i1 %7338, label %7852, label %8050, !dx.controlflow.hints !165

; <label>:7852                                    ; preds = %7845
  %7853 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7854 = fmul fast float %7853, %7753
  %7855 = fsub fast float %7748, %7846
  %7856 = fsub fast float %7749, %7847
  %7857 = fsub fast float %7750, %7848
  %7858 = fmul fast float %7854, %7855
  %7859 = fmul fast float %7854, %7856
  %7860 = fmul fast float %7854, %7857
  %7861 = fadd fast float %7858, %7846
  %7862 = fadd fast float %7859, %7847
  %7863 = fadd fast float %7860, %7848
  %7864 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7849)  ; FMax(a,b)
  %7865 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7850)  ; FMax(a,b)
  %7866 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7851)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7747)  ; FMax(a,b)
  %7868 = call float @dx.op.binary.f32(i32 35, float %7746, float %7756)  ; FMax(a,b)
  %7869 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7868)  ; FMax(a,b)
  %7870 = fdiv fast float %7746, %7869
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fdiv fast float %7756, %7869
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7874 = fcmp fast une float %7867, 1.000000e+00
  br i1 %7874, label %7875, label %7888, !dx.controlflow.hints !166

; <label>:7875                                    ; preds = %7852
  %7876 = call float @dx.op.unary.f32(i32 23, float %7867)  ; Log(value)
  %7877 = fmul fast float %7876, 0x3FE62E4300000000
  %7878 = fmul fast float %7748, %7877
  %7879 = fsub fast float -0.000000e+00, %7878
  %7880 = fmul fast float %7749, %7877
  %7881 = fsub fast float -0.000000e+00, %7880
  %7882 = fmul fast float %7750, %7877
  %7883 = fsub fast float -0.000000e+00, %7882
  %7884 = fsub fast float 1.000000e+00, %7867
  %7885 = fdiv fast float %7879, %7884
  %7886 = fdiv fast float %7881, %7884
  %7887 = fdiv fast float %7883, %7884
  br label %7888

; <label>:7888                                    ; preds = %7875, %7852
  %7889 = phi float [ %7885, %7875 ], [ %7748, %7852 ]
  %7890 = phi float [ %7886, %7875 ], [ %7749, %7852 ]
  %7891 = phi float [ %7887, %7875 ], [ %7750, %7852 ]
  %7892 = phi float [ %7877, %7875 ], [ 0.000000e+00, %7852 ]
  %7893 = fcmp fast une float %7864, 1.000000e+00
  br i1 %7893, label %7894, label %7901, !dx.controlflow.hints !167

; <label>:7894                                    ; preds = %7888
  %7895 = call float @dx.op.unary.f32(i32 23, float %7864)  ; Log(value)
  %7896 = fmul fast float %7895, 0x3FE62E4300000000
  %7897 = fmul fast float %7861, %7896
  %7898 = fsub fast float -0.000000e+00, %7897
  %7899 = fsub fast float 1.000000e+00, %7864
  %7900 = fdiv fast float %7898, %7899
  br label %7901

; <label>:7901                                    ; preds = %7894, %7888
  %7902 = phi float [ %7900, %7894 ], [ %7861, %7888 ]
  %7903 = phi float [ %7896, %7894 ], [ 0.000000e+00, %7888 ]
  %7904 = fcmp fast une float %7865, 1.000000e+00
  br i1 %7904, label %7905, label %7912, !dx.controlflow.hints !167

; <label>:7905                                    ; preds = %7901
  %7906 = call float @dx.op.unary.f32(i32 23, float %7865)  ; Log(value)
  %7907 = fmul fast float %7906, 0x3FE62E4300000000
  %7908 = fmul fast float %7862, %7907
  %7909 = fsub fast float -0.000000e+00, %7908
  %7910 = fsub fast float 1.000000e+00, %7865
  %7911 = fdiv fast float %7909, %7910
  br label %7912

; <label>:7912                                    ; preds = %7905, %7901
  %7913 = phi float [ %7911, %7905 ], [ %7862, %7901 ]
  %7914 = phi float [ %7907, %7905 ], [ 0.000000e+00, %7901 ]
  %7915 = fcmp fast une float %7866, 1.000000e+00
  br i1 %7915, label %7916, label %7923, !dx.controlflow.hints !167

; <label>:7916                                    ; preds = %7912
  %7917 = call float @dx.op.unary.f32(i32 23, float %7866)  ; Log(value)
  %7918 = fmul fast float %7917, 0x3FE62E4300000000
  %7919 = fmul fast float %7863, %7918
  %7920 = fsub fast float -0.000000e+00, %7919
  %7921 = fsub fast float 1.000000e+00, %7866
  %7922 = fdiv fast float %7920, %7921
  br label %7923

; <label>:7923                                    ; preds = %7916, %7912
  %7924 = phi float [ %7922, %7916 ], [ %7863, %7912 ]
  %7925 = phi float [ %7918, %7916 ], [ 0.000000e+00, %7912 ]
  %7926 = fmul fast float %7889, %7873
  %7927 = fmul fast float %7890, %7873
  %7928 = fmul fast float %7891, %7873
  %7929 = fmul fast float %7892, %7873
  %7930 = fmul fast float %7902, %7871
  %7931 = fmul fast float %7913, %7871
  %7932 = fmul fast float %7924, %7871
  %7933 = fmul fast float %7903, %7871
  %7934 = fmul fast float %7914, %7871
  %7935 = fmul fast float %7925, %7871
  %7936 = fadd fast float %7930, %7926
  %7937 = fadd fast float %7931, %7927
  %7938 = fadd fast float %7932, %7928
  %7939 = fadd fast float %7933, %7929
  %7940 = fadd fast float %7934, %7929
  %7941 = fadd fast float %7935, %7929
  %7942 = fcmp fast une float %7939, 0.000000e+00
  br i1 %7942, label %7943, label %7950, !dx.controlflow.hints !168

; <label>:7943                                    ; preds = %7923
  %7944 = fmul fast float %7939, 0x3FF7154760000000
  %7945 = call float @dx.op.unary.f32(i32 21, float %7944)  ; Exp(value)
  %7946 = fsub fast float 1.000000e+00, %7945
  %7947 = fmul fast float %7936, %7946
  %7948 = fsub fast float -0.000000e+00, %7947
  %7949 = fdiv fast float %7948, %7939
  br label %7950

; <label>:7950                                    ; preds = %7943, %7923
  %7951 = phi float [ %7945, %7943 ], [ 1.000000e+00, %7923 ]
  %7952 = phi float [ %7949, %7943 ], [ %7936, %7923 ]
  %7953 = fcmp fast une float %7940, 0.000000e+00
  br i1 %7953, label %7954, label %7961, !dx.controlflow.hints !168

; <label>:7954                                    ; preds = %7950
  %7955 = fmul fast float %7940, 0x3FF7154760000000
  %7956 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7957 = fsub fast float 1.000000e+00, %7956
  %7958 = fmul fast float %7937, %7957
  %7959 = fsub fast float -0.000000e+00, %7958
  %7960 = fdiv fast float %7959, %7940
  br label %7961

; <label>:7961                                    ; preds = %7954, %7950
  %7962 = phi float [ %7956, %7954 ], [ 1.000000e+00, %7950 ]
  %7963 = phi float [ %7960, %7954 ], [ %7937, %7950 ]
  %7964 = fcmp fast une float %7941, 0.000000e+00
  br i1 %7964, label %7965, label %7972, !dx.controlflow.hints !168

; <label>:7965                                    ; preds = %7961
  %7966 = fmul fast float %7941, 0x3FF7154760000000
  %7967 = call float @dx.op.unary.f32(i32 21, float %7966)  ; Exp(value)
  %7968 = fsub fast float 1.000000e+00, %7967
  %7969 = fmul fast float %7938, %7968
  %7970 = fsub fast float -0.000000e+00, %7969
  %7971 = fdiv fast float %7970, %7941
  br label %7972

; <label>:7972                                    ; preds = %7965, %7961
  %7973 = phi float [ %7967, %7965 ], [ 1.000000e+00, %7961 ]
  %7974 = phi float [ %7971, %7965 ], [ %7938, %7961 ]
  %7975 = fcmp fast ogt float %7871, %7873
  br i1 %7975, label %7976, label %7996

; <label>:7976                                    ; preds = %7972
  %7977 = fsub fast float 1.000000e+00, %7873
  %7978 = fmul fast float %7889, %7977
  %7979 = fmul fast float %7890, %7977
  %7980 = fmul fast float %7891, %7977
  %7981 = fmul fast float %7892, %7977
  %7982 = fcmp fast une float %7981, 0.000000e+00
  br i1 %7982, label %7983, label %8034, !dx.controlflow.hints !169

; <label>:7983                                    ; preds = %7976
  %7984 = fmul fast float %7981, 0x3FF7154760000000
  %7985 = call float @dx.op.unary.f32(i32 21, float %7984)  ; Exp(value)
  %7986 = fsub fast float 1.000000e+00, %7985
  %7987 = fmul fast float %7978, %7986
  %7988 = fsub fast float -0.000000e+00, %7987
  %7989 = fmul fast float %7979, %7986
  %7990 = fsub fast float -0.000000e+00, %7989
  %7991 = fmul fast float %7980, %7986
  %7992 = fsub fast float -0.000000e+00, %7991
  %7993 = fdiv fast float %7988, %7981
  %7994 = fdiv fast float %7990, %7981
  %7995 = fdiv fast float %7992, %7981
  br label %8034

; <label>:7996                                    ; preds = %7972
  %7997 = fsub fast float 1.000000e+00, %7871
  %7998 = fmul fast float %7902, %7997
  %7999 = fmul fast float %7913, %7997
  %8000 = fmul fast float %7924, %7997
  %8001 = fmul fast float %7903, %7997
  %8002 = fmul fast float %7914, %7997
  %8003 = fmul fast float %7925, %7997
  %8004 = fcmp fast une float %8001, 0.000000e+00
  br i1 %8004, label %8005, label %8012, !dx.controlflow.hints !168

; <label>:8005                                    ; preds = %7996
  %8006 = fmul fast float %8001, 0x3FF7154760000000
  %8007 = call float @dx.op.unary.f32(i32 21, float %8006)  ; Exp(value)
  %8008 = fsub fast float 1.000000e+00, %8007
  %8009 = fmul fast float %7998, %8008
  %8010 = fsub fast float -0.000000e+00, %8009
  %8011 = fdiv fast float %8010, %8001
  br label %8012

; <label>:8012                                    ; preds = %8005, %7996
  %8013 = phi float [ %8011, %8005 ], [ %7998, %7996 ]
  %8014 = phi float [ %8007, %8005 ], [ 1.000000e+00, %7996 ]
  %8015 = fcmp fast une float %8002, 0.000000e+00
  br i1 %8015, label %8016, label %8023, !dx.controlflow.hints !168

; <label>:8016                                    ; preds = %8012
  %8017 = fmul fast float %8002, 0x3FF7154760000000
  %8018 = call float @dx.op.unary.f32(i32 21, float %8017)  ; Exp(value)
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %7999, %8019
  %8021 = fsub fast float -0.000000e+00, %8020
  %8022 = fdiv fast float %8021, %8002
  br label %8023

; <label>:8023                                    ; preds = %8016, %8012
  %8024 = phi float [ %8022, %8016 ], [ %7999, %8012 ]
  %8025 = phi float [ %8018, %8016 ], [ 1.000000e+00, %8012 ]
  %8026 = fcmp fast une float %8003, 0.000000e+00
  br i1 %8026, label %8027, label %8034, !dx.controlflow.hints !168

; <label>:8027                                    ; preds = %8023
  %8028 = fmul fast float %8003, 0x3FF7154760000000
  %8029 = call float @dx.op.unary.f32(i32 21, float %8028)  ; Exp(value)
  %8030 = fsub fast float 1.000000e+00, %8029
  %8031 = fmul fast float %8000, %8030
  %8032 = fsub fast float -0.000000e+00, %8031
  %8033 = fdiv fast float %8032, %8003
  br label %8034

; <label>:8034                                    ; preds = %8027, %8023, %7983, %7976
  %8035 = phi float [ %8033, %8027 ], [ %7995, %7983 ], [ %7980, %7976 ], [ %8000, %8023 ]
  %8036 = phi float [ %8024, %8027 ], [ %7994, %7983 ], [ %7979, %7976 ], [ %8024, %8023 ]
  %8037 = phi float [ %8013, %8027 ], [ %7993, %7983 ], [ %7978, %7976 ], [ %8013, %8023 ]
  %8038 = phi float [ %8029, %8027 ], [ %7985, %7983 ], [ 1.000000e+00, %7976 ], [ 1.000000e+00, %8023 ]
  %8039 = phi float [ %8025, %8027 ], [ %7985, %7983 ], [ 1.000000e+00, %7976 ], [ %8025, %8023 ]
  %8040 = phi float [ %8014, %8027 ], [ %7985, %7983 ], [ 1.000000e+00, %7976 ], [ %8014, %8023 ]
  %8041 = fmul fast float %8040, %7952
  %8042 = fmul fast float %8039, %7963
  %8043 = fmul fast float %8038, %7974
  %8044 = fadd fast float %8041, %8037
  %8045 = fadd fast float %8042, %8036
  %8046 = fadd fast float %8043, %8035
  %8047 = fmul fast float %8040, %7951
  %8048 = fmul fast float %8039, %7962
  %8049 = fmul fast float %8038, %7973
  br label %8050

; <label>:8050                                    ; preds = %8034, %7845
  %8051 = phi float [ %8049, %8034 ], [ %7851, %7845 ]
  %8052 = phi float [ %8048, %8034 ], [ %7850, %7845 ]
  %8053 = phi float [ %8047, %8034 ], [ %7849, %7845 ]
  %8054 = phi float [ %8046, %8034 ], [ %7848, %7845 ]
  %8055 = phi float [ %8045, %8034 ], [ %7847, %7845 ]
  %8056 = phi float [ %8044, %8034 ], [ %7846, %7845 ]
  %8057 = fmul fast float %8056, %7002
  %8058 = fmul fast float %8055, %7002
  %8059 = fmul fast float %8054, %7002
  %8060 = fmul fast float %8053, %7293
  %8061 = call float @dx.op.dot3.f32(i32 55, float %8053, float %8052, float %8051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8062 = call float @dx.op.dot3.f32(i32 55, float %8057, float %8058, float %8059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8063 = select i1 %224, float %8061, float %8053
  %8064 = select i1 %224, float %8061, float %8052
  %8065 = select i1 %224, float 1.000000e+00, float %8051
  %8066 = select i1 %224, float %8062, float %8057
  %8067 = select i1 %224, float 0.000000e+00, float %8058
  %8068 = select i1 %224, float 0.000000e+00, float %8059
  %8069 = fmul fast float %8063, %7287
  %8070 = fmul fast float %8064, %7288
  %8071 = fmul fast float %8065, %7289
  %8072 = fadd fast float %8069, %8066
  %8073 = fadd fast float %8070, %8067
  %8074 = fadd fast float %8068, %8071
  %8075 = fmul fast float %8063, %7290
  %8076 = fmul fast float %8064, %7291
  %8077 = fmul fast float %8065, %7292
  %8078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8079 = extractvalue %dx.types.CBufRet.i32 %8078, 0
  %8080 = icmp eq i32 %8079, 0
  br i1 %8080, label %8448, label %8081, !dx.controlflow.hints !170

; <label>:8081                                    ; preds = %8050
  %8082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8083 = extractvalue %dx.types.CBufRet.f32 %8082, 2
  %8084 = extractvalue %dx.types.CBufRet.f32 %8082, 3
  %8085 = fmul fast float %8083, %103
  %8086 = fmul fast float %8084, %104
  %8087 = fmul fast float %8085, 2.000000e+00
  %8088 = fmul fast float %8086, 2.000000e+00
  %8089 = fsub fast float 1.000000e+00, %8087
  %8090 = fsub fast float 1.000000e+00, %8088
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = fmul fast float %8089, %8092
  %8096 = fmul fast float %8089, %8093
  %8097 = fmul fast float %8089, %8094
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = fmul fast float %8090, %8099
  %8103 = fmul fast float %8090, %8100
  %8104 = fmul fast float %8090, %8101
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = fadd fast float %8102, %8106
  %8110 = fadd fast float %8109, %8095
  %8111 = fadd fast float %8103, %8107
  %8112 = fadd fast float %8111, %8096
  %8113 = fadd fast float %8104, %8108
  %8114 = fadd fast float %8113, %8097
  %8115 = fmul fast float %8110, %7286
  %8116 = fmul fast float %8112, %7286
  %8117 = fmul fast float %8114, %7286
  %8118 = fmul fast float %8115, %8115
  %8119 = fmul fast float %8116, %8116
  %8120 = fadd fast float %8118, %8119
  %8121 = fmul fast float %8117, %8117
  %8122 = fadd fast float %8120, %8121
  %8123 = call float @dx.op.unary.f32(i32 24, float %8122)  ; Sqrt(value)
  %8124 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %8125 = fsub fast float %8123, %8124
  %8126 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %8127 = fmul fast float %8125, %8126
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8129 = fadd fast float %8128, -5.000000e-01
  %8130 = fmul fast float %8129, 2.000000e+00
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8133 = call float @dx.op.binary.f32(i32 36, float %8132, float %8130)  ; FMin(a,b)
  %8134 = fsub fast float -0.000000e+00, %8132
  %8135 = fcmp fast ogt float %8133, %8134
  br i1 %8135, label %8136, label %8448, !dx.controlflow.hints !171

; <label>:8136                                    ; preds = %8081
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 3
  %8139 = fcmp fast ogt float %8138, 0.000000e+00
  br i1 %8139, label %8140, label %8215, !dx.controlflow.hints !172

; <label>:8140                                    ; preds = %8136
  %8141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8142 = extractvalue %dx.types.Dimensions %8141, 0
  %8143 = sitofp i32 %8142 to float
  %8144 = extractvalue %dx.types.Dimensions %8141, 1
  %8145 = sitofp i32 %8144 to float
  %8146 = fmul fast float %8085, %8143
  %8147 = fmul fast float %8086, %8145
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 1
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fptoui float %8150 to i32
  %8152 = fptoui float %8146 to i32
  %8153 = fptoui float %8147 to i32
  %8154 = and i32 %8151, 31
  %8155 = lshr i32 %8152, %8154
  %8156 = lshr i32 %8153, %8154
  %8157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8151, i32 %8155, i32 %8156, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8158 = extractvalue %dx.types.ResRet.f32 %8157, 0
  %8159 = fcmp fast olt float %8158, -1.000000e+00
  %8160 = fcmp fast ogt float %8158, -1.000000e+00
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8163 = select i1 %8160, float %8162, float 1.000000e+00
  %8164 = fadd fast float %8158, 1.000000e+00
  %8165 = fmul fast float %8163, %8164
  %8166 = call float @dx.op.unary.f32(i32 6, float %8165)  ; FAbs(value)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8161, 3
  %8168 = fcmp fast oge float %8166, %8167
  %8169 = select i1 %8168, float 0x4197782600000000, float %8166
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.CBufRet.f32 %8170, 2
  %8174 = select i1 %8159, float %8171, float %8092
  %8175 = select i1 %8159, float %8172, float %8093
  %8176 = select i1 %8159, float %8173, float %8094
  %8177 = fmul fast float %8174, %8089
  %8178 = fmul fast float %8175, %8089
  %8179 = fmul fast float %8176, %8089
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = select i1 %8159, float %8181, float %8099
  %8185 = select i1 %8159, float %8182, float %8100
  %8186 = select i1 %8159, float %8183, float %8101
  %8187 = fmul fast float %8184, %8090
  %8188 = fmul fast float %8185, %8090
  %8189 = fmul fast float %8186, %8090
  %8190 = fadd fast float %8187, %8177
  %8191 = fadd fast float %8188, %8178
  %8192 = fadd fast float %8189, %8179
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 0
  %8195 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8196 = extractvalue %dx.types.CBufRet.f32 %8193, 2
  %8197 = select i1 %8159, float %8194, float %8106
  %8198 = select i1 %8159, float %8195, float %8107
  %8199 = select i1 %8159, float %8196, float %8108
  %8200 = fadd fast float %8190, %8197
  %8201 = fadd fast float %8191, %8198
  %8202 = fadd fast float %8192, %8199
  %8203 = fmul fast float %8200, %8169
  %8204 = fmul fast float %8201, %8169
  %8205 = fmul fast float %8202, %8169
  %8206 = fmul fast float %8203, %8203
  %8207 = fmul fast float %8204, %8204
  %8208 = fadd fast float %8206, %8207
  %8209 = fmul fast float %8205, %8205
  %8210 = fadd fast float %8208, %8209
  %8211 = call float @dx.op.unary.f32(i32 24, float %8210)  ; Sqrt(value)
  %8212 = fsub fast float %8211, %8124
  %8213 = fmul fast float %8212, %8126
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  br label %8215

; <label>:8215                                    ; preds = %8140, %8136
  %8216 = phi float [ %8214, %8140 ], [ 1.000000e+00, %8136 ]
  %8217 = fmul fast float %8133, 5.000000e-01
  %8218 = fadd fast float %8217, 5.000000e-01
  %8219 = call float @dx.op.unary.f32(i32 22, float %8218)  ; Frc(value)
  %8220 = call float @dx.op.unary.f32(i32 27, float %8219)  ; Round_ni(value)
  %8221 = call float @dx.op.unary.f32(i32 22, float %8219)  ; Frc(value)
  %8222 = fmul fast float %8221, 2.000000e+00
  %8223 = fadd fast float %8222, -1.000000e+00
  %8224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8085, float %8086, float %8220, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8225 = extractvalue %dx.types.ResRet.f32 %8224, 0
  %8226 = extractvalue %dx.types.ResRet.f32 %8224, 1
  %8227 = extractvalue %dx.types.ResRet.f32 %8224, 2
  %8228 = extractvalue %dx.types.ResRet.f32 %8224, 3
  %8229 = fadd fast float %8225, -5.000000e-01
  %8230 = fadd fast float %8227, -5.000000e-01
  %8231 = fmul fast float %8229, 0xBFD5555560000000
  %8232 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8230, float %8231)  ; FMad(a,b,c)
  %8233 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8226, float 0.000000e+00)  ; FMad(a,b,c)
  %8234 = fadd fast float %8233, %8228
  %8235 = fmul fast float %8229, -7.500000e-01
  %8236 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8230, float %8235)  ; FMad(a,b,c)
  %8237 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8226, float 0.000000e+00)  ; FMad(a,b,c)
  %8238 = fadd fast float %8237, %8228
  %8239 = call float @dx.op.binary.f32(i32 35, float %8232, float -1.000000e+00)  ; FMax(a,b)
  %8240 = call float @dx.op.binary.f32(i32 35, float %8234, float -1.000000e+00)  ; FMax(a,b)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8236, float -1.000000e+00)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 35, float %8238, float -1.000000e+00)  ; FMax(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8239, float 1.000000e+00)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 36, float %8240, float 1.000000e+00)  ; FMin(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8241, float 1.000000e+00)  ; FMin(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8242, float 1.000000e+00)  ; FMin(a,b)
  %8247 = fcmp fast olt float %8243, 0x3FEFFF8020000000
  br i1 %8247, label %8248, label %8363, !dx.controlflow.hints !173

; <label>:8248                                    ; preds = %8215
  %8249 = extractvalue %dx.types.CBufRet.f32 %8131, 3
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %8254 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8255 = fsub fast float %8251, %8243
  %8256 = fsub fast float %8252, %8244
  %8257 = fsub fast float %8253, %8245
  %8258 = fsub fast float %8254, %8246
  %8259 = fmul fast float %8255, %8249
  %8260 = fmul fast float %8256, %8249
  %8261 = fmul fast float %8257, %8249
  %8262 = fmul fast float %8258, %8249
  %8263 = fadd fast float %8259, %8243
  %8264 = fadd fast float %8260, %8244
  %8265 = fsub fast float -0.000000e+00, %8264
  %8266 = fadd fast float %8261, %8245
  %8267 = fadd fast float %8262, %8246
  %8268 = fmul fast float %8263, %8263
  %8269 = fsub fast float %8264, %8268
  %8270 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8269)  ; FMax(a,b)
  %8271 = fdiv fast float 1.000000e+00, %8270
  %8272 = fmul fast float %8264, %8263
  %8273 = fsub fast float %8266, %8272
  %8274 = fsub fast float %8223, %8263
  %8275 = fmul fast float %8223, %8223
  %8276 = fsub fast float %8275, %8264
  %8277 = fmul fast float %8274, %8271
  %8278 = fmul fast float %8277, %8273
  %8279 = fsub fast float %8276, %8278
  %8280 = fmul fast float %8264, %8264
  %8281 = fsub fast float %8267, %8280
  %8282 = fmul fast float %8273, %8273
  %8283 = fmul fast float %8282, %8271
  %8284 = fsub fast float %8281, %8283
  %8285 = fdiv fast float %8279, %8284
  %8286 = fmul fast float %8273, %8285
  %8287 = fsub fast float %8274, %8286
  %8288 = fmul fast float %8287, %8271
  %8289 = fmul fast float %8288, %8263
  %8290 = fsub fast float 1.000000e+00, %8289
  %8291 = fmul fast float %8264, %8285
  %8292 = fsub fast float %8290, %8291
  %8293 = fmul fast float %8288, %8288
  %8294 = fmul fast float %8285, 4.000000e+00
  %8295 = fmul fast float %8294, %8292
  %8296 = fsub fast float %8293, %8295
  %8297 = call float @dx.op.unary.f32(i32 24, float %8296)  ; Sqrt(value)
  %8298 = fcmp fast oge float %8288, 0.000000e+00
  %8299 = fsub fast float -0.000000e+00, %8297
  %8300 = select i1 %8298, float %8299, float %8297
  %8301 = fsub fast float %8300, %8288
  %8302 = fdiv fast float %8301, %8285
  %8303 = fdiv fast float %8292, %8301
  %8304 = fmul fast float %8302, 5.000000e-01
  %8305 = fmul fast float %8303, 2.000000e+00
  %8306 = select i1 %8298, float %8304, float %8305
  %8307 = select i1 %8298, float %8305, float %8304
  %8308 = call float @dx.op.binary.f32(i32 35, float %8306, float %8307)  ; FMax(a,b)
  %8309 = call float @dx.op.binary.f32(i32 36, float %8306, float %8307)  ; FMin(a,b)
  %8310 = fcmp fast ogt float %8223, %8309
  br i1 %8310, label %8311, label %8321

; <label>:8311                                    ; preds = %8248
  %8312 = fsub fast float %8223, %8309
  %8313 = fsub fast float %8308, %8309
  %8314 = fmul fast float %8312, %8313
  %8315 = fmul fast float %8308, %8223
  %8316 = fadd fast float %8308, %8223
  %8317 = fmul fast float %8316, %8263
  %8318 = fadd fast float %8315, %8264
  %8319 = fsub fast float %8318, %8317
  %8320 = fdiv fast float %8319, %8314
  br label %8321

; <label>:8321                                    ; preds = %8311, %8248
  %8322 = phi float [ %8320, %8311 ], [ 0.000000e+00, %8248 ]
  %8323 = fcmp fast ogt float %8223, %8308
  %8324 = fsub fast float %8223, %8308
  br i1 %8323, label %8325, label %8335

; <label>:8325                                    ; preds = %8321
  %8326 = fsub fast float %8308, %8309
  %8327 = fmul fast float %8326, %8324
  %8328 = fmul fast float %8309, %8223
  %8329 = fadd fast float %8309, %8223
  %8330 = fmul fast float %8329, %8263
  %8331 = fsub fast float %8265, %8328
  %8332 = fadd fast float %8331, %8330
  %8333 = fdiv fast float %8332, %8327
  %8334 = fadd fast float %8333, %8322
  br label %8335

; <label>:8335                                    ; preds = %8325, %8321
  %8336 = phi float [ %8334, %8325 ], [ %8322, %8321 ]
  %8337 = fsub fast float %8223, %8309
  %8338 = fmul fast float %8337, %8324
  %8339 = fmul fast float %8309, %8308
  %8340 = fadd fast float %8309, %8308
  %8341 = fmul fast float %8340, %8263
  %8342 = fadd fast float %8339, %8264
  %8343 = fsub fast float %8342, %8341
  %8344 = fdiv fast float %8343, %8338
  %8345 = call float @dx.op.unary.f32(i32 7, float %8336)  ; Saturate(value)
  %8346 = fcmp fast oeq float %7014, 0.000000e+00
  %8347 = extractvalue %dx.types.CBufRet.f32 %8131, 0
  %8348 = fcmp fast oeq float %8347, 0.000000e+00
  %8349 = or i1 %8346, %8348
  %8350 = fmul fast float %8347, 2.000000e+00
  %8351 = fadd fast float %8132, %8133
  %8352 = fdiv fast float %8351, %8350
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = fmul fast float %8353, 2.000000e+00
  %8355 = fsub fast float 3.000000e+00, %8354
  %8356 = fmul fast float %8353, %8353
  %8357 = fmul fast float %8356, %8355
  %8358 = select i1 %8349, float 1.000000e+00, float %8357
  %8359 = fmul fast float %8344, %7014
  %8360 = fadd fast float %8345, %8359
  %8361 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8362 = fmul fast float %8358, %8361
  br label %8363

; <label>:8363                                    ; preds = %8335, %8215
  %8364 = phi float [ %8362, %8335 ], [ 0.000000e+00, %8215 ]
  %8365 = fsub fast float 1.000000e+00, %8364
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8085, float %8086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.i32 %8368, 2
  %8370 = icmp eq i32 %8369, 0
  br i1 %8370, label %8376, label %8371

; <label>:8371                                    ; preds = %8363
  %8372 = call float @dx.op.unary.f32(i32 7, float %8364)  ; Saturate(value)
  %8373 = fadd fast float %8367, -1.000000e+00
  %8374 = fmul fast float %8372, %8373
  %8375 = fadd fast float %8374, 1.000000e+00
  br label %8376

; <label>:8376                                    ; preds = %8371, %8363
  %8377 = phi float [ %8375, %8371 ], [ %8365, %8363 ]
  br i1 %8139, label %8378, label %8396

; <label>:8378                                    ; preds = %8376
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 1
  %8381 = fsub fast float %8216, %8380
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = fsub fast float %8216, %8138
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fsub fast float %8382, %8384
  %8386 = fsub fast float %8218, %8384
  %8387 = fdiv fast float %8386, %8385
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = fmul fast float %8388, 2.000000e+00
  %8390 = fsub fast float 3.000000e+00, %8389
  %8391 = fsub fast float %8367, %8377
  %8392 = fmul fast float %8388, %8388
  %8393 = fmul fast float %8392, %8391
  %8394 = fmul fast float %8393, %8390
  %8395 = fadd fast float %8394, %8377
  br label %8396

; <label>:8396                                    ; preds = %8378, %8376
  %8397 = phi float [ %8395, %8378 ], [ %8377, %8376 ]
  %8398 = call float @dx.op.binary.f32(i32 35, float %8367, float %8397)  ; FMax(a,b)
  %8399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.i32 %8399, 2
  %8401 = and i32 %8400, 1
  %8402 = icmp eq i32 %8401, 0
  %8403 = fcmp fast une float %8398, 1.000000e+00
  %8404 = and i1 %8403, %8402
  br i1 %8404, label %8405, label %8424

; <label>:8405                                    ; preds = %8396
  %8406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8085, float %8086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8407 = extractvalue %dx.types.ResRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.ResRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.ResRet.f32 %8406, 2
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8412 = fmul fast float %8411, %8407
  %8413 = fmul fast float %8411, %8408
  %8414 = fmul fast float %8411, %8409
  %8415 = fcmp fast ogt float %8367, 0x3FEFFF2E40000000
  %8416 = fsub fast float 1.000000e+00, %8398
  %8417 = fsub fast float 1.000000e+00, %8367
  %8418 = fdiv fast float %8416, %8417
  %8419 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8420 = select i1 %8415, float 0.000000e+00, float %8419
  %8421 = fmul fast float %8412, %8420
  %8422 = fmul fast float %8413, %8420
  %8423 = fmul fast float %8414, %8420
  br label %8424

; <label>:8424                                    ; preds = %8405, %8396
  %8425 = phi float [ 0.000000e+00, %8396 ], [ %8421, %8405 ]
  %8426 = phi float [ 0.000000e+00, %8396 ], [ %8422, %8405 ]
  %8427 = phi float [ 0.000000e+00, %8396 ], [ %8423, %8405 ]
  %8428 = fmul fast float %8425, %7002
  %8429 = fmul fast float %8426, %7002
  %8430 = fmul fast float %8427, %7002
  %8431 = fmul fast float %8398, %8060
  %8432 = call float @dx.op.dot3.f32(i32 55, float %8398, float %8398, float %8398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8433 = call float @dx.op.dot3.f32(i32 55, float %8428, float %8429, float %8430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8434 = select i1 %224, float %8432, float %8398
  %8435 = select i1 %224, float 1.000000e+00, float %8398
  %8436 = select i1 %224, float %8433, float %8428
  %8437 = select i1 %224, float 0.000000e+00, float %8429
  %8438 = select i1 %224, float 0.000000e+00, float %8430
  %8439 = fmul fast float %8434, %8072
  %8440 = fmul fast float %8434, %8073
  %8441 = fmul fast float %8435, %8074
  %8442 = fadd fast float %8439, %8436
  %8443 = fadd fast float %8440, %8437
  %8444 = fadd fast float %8438, %8441
  %8445 = fmul fast float %8434, %8075
  %8446 = fmul fast float %8434, %8076
  %8447 = fmul fast float %8435, %8077
  br label %8448

; <label>:8448                                    ; preds = %8424, %8081, %8050, %7282
  %8449 = phi float [ %7287, %7282 ], [ %8072, %8050 ], [ %8442, %8424 ], [ %8072, %8081 ]
  %8450 = phi float [ %7288, %7282 ], [ %8073, %8050 ], [ %8443, %8424 ], [ %8073, %8081 ]
  %8451 = phi float [ %7289, %7282 ], [ %8074, %8050 ], [ %8444, %8424 ], [ %8074, %8081 ]
  %8452 = phi float [ %7290, %7282 ], [ %8075, %8050 ], [ %8445, %8424 ], [ %8075, %8081 ]
  %8453 = phi float [ %7291, %7282 ], [ %8076, %8050 ], [ %8446, %8424 ], [ %8076, %8081 ]
  %8454 = phi float [ %7292, %7282 ], [ %8077, %8050 ], [ %8447, %8424 ], [ %8077, %8081 ]
  %8455 = phi float [ %7293, %7282 ], [ %8060, %8050 ], [ %8431, %8424 ], [ %8060, %8081 ]
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8459 = fmul fast float %8457, %103
  %8460 = fmul fast float %8458, %104
  %8461 = call float @dx.op.unary.f32(i32 7, float %8459)  ; Saturate(value)
  %8462 = call float @dx.op.unary.f32(i32 7, float %8460)  ; Saturate(value)
  %8463 = select i1 %7024, i32 2, i32 0
  %8464 = or i32 %8463, 1
  %8465 = uitofp i32 %8464 to float
  %8466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8461, float %8462, float %8465, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8467 = extractvalue %dx.types.ResRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.ResRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.ResRet.f32 %8466, 2
  %8470 = extractvalue %dx.types.ResRet.f32 %8466, 3
  %8471 = add nuw nsw i32 %8463, 2
  %8472 = uitofp i32 %8471 to float
  %8473 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8461, float %8462, float %8472, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8474 = extractvalue %dx.types.ResRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.ResRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.ResRet.f32 %8473, 2
  %8477 = extractvalue %dx.types.ResRet.f32 %8473, 3
  %8478 = call float @dx.op.binary.f32(i32 35, float %8468, float %8469)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float %8467, float %8478)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8479, float %8470)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8475, float %8476)  ; FMin(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8474, float %8481)  ; FMin(a,b)
  %8483 = call float @dx.op.binary.f32(i32 36, float %8482, float %8477)  ; FMin(a,b)
  %8484 = fmul fast float %8480, 2.550000e+02
  %8485 = fadd fast float %8484, 0x3F70101020000000
  %8486 = fptoui float %8485 to i32
  %8487 = fmul fast float %8483, 2.550000e+02
  %8488 = fadd fast float %8487, 0x3F70101020000000
  %8489 = fptoui float %8488 to i32
  %8490 = icmp ult i32 %8486, %8489
  br i1 %8490, label %8491, label %8660

; <label>:8491                                    ; preds = %8448
  %8492 = fcmp fast ogt float %93, 9.843750e-01
  %8493 = fadd fast float %7286, -4.000000e+00
  %8494 = select i1 %8492, float -4.000000e+00, float %8493
  %8495 = call float @dx.op.binary.f32(i32 35, float %8494, float 0.000000e+00)  ; FMax(a,b)
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  %8498 = fadd fast float %8497, %8495
  %8499 = extractvalue %dx.types.CBufRet.f32 %8496, 2
  %8500 = fmul fast float %8498, %8499
  %8501 = call float @dx.op.unary.f32(i32 23, float %8500)  ; Log(value)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8496, 3
  %8503 = fmul fast float %8502, %8501
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8506 = fmul fast float %8503, %8505
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = uitofp i32 %8486 to float
  %8509 = uitofp i32 %8489 to float
  %8510 = fadd fast float %8508, 5.000000e-01
  %8511 = fadd fast float %8509, 5.000000e-01
  %8512 = fmul fast float %8505, %8510
  %8513 = fmul fast float %8505, %8511
  %8514 = fadd fast float %8512, 0x3F0FFB4800000000
  %8515 = fadd fast float %8513, 0xBF0FFB4800000000
  %8516 = call float @dx.op.binary.f32(i32 35, float %8507, float %8514)  ; FMax(a,b)
  %8517 = call float @dx.op.binary.f32(i32 36, float %8516, float %8515)  ; FMin(a,b)
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8522 = select i1 %7024, float %8521, float 0.000000e+00
  %8523 = fmul fast float %8519, %8517
  %8524 = fadd fast float %8522, %8523
  %8525 = fadd fast float %8522, %8520
  %8526 = fsub fast float %8519, %8520
  %8527 = fadd fast float %8526, %8522
  %8528 = call float @dx.op.binary.f32(i32 35, float %8524, float %8525)  ; FMax(a,b)
  %8529 = call float @dx.op.binary.f32(i32 36, float %8528, float %8527)  ; FMin(a,b)
  %8530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8461, float %8462, float %8529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8531 = extractvalue %dx.types.ResRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.ResRet.f32 %8530, 1
  %8533 = extractvalue %dx.types.ResRet.f32 %8530, 2
  %8534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.i32 %8534, 0
  %8536 = extractvalue %dx.types.CBufRet.i32 %8534, 1
  %8537 = uitofp i32 %8535 to float
  %8538 = uitofp i32 %8536 to float
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 0
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 1
  %8542 = fmul fast float %8537, %8461
  %8543 = fmul fast float %8538, %8462
  %8544 = fadd fast float %8542, -5.000000e-01
  %8545 = fadd fast float %8543, -5.000000e-01
  %8546 = call float @dx.op.unary.f32(i32 22, float %8544)  ; Frc(value)
  %8547 = call float @dx.op.unary.f32(i32 22, float %8545)  ; Frc(value)
  %8548 = fmul fast float %8546, %8546
  %8549 = fmul fast float %8548, %8546
  %8550 = fsub fast float 3.000000e+00, %8546
  %8551 = fmul fast float %8548, %8550
  %8552 = fmul fast float %8546, 3.000000e+00
  %8553 = fmul fast float %8549, 3.000000e+00
  %8554 = fmul fast float %8548, 6.000000e+00
  %8555 = fsub fast float %8553, %8554
  %8556 = fadd fast float %8555, 4.000000e+00
  %8557 = fmul fast float %8556, 0x3FC5555560000000
  %8558 = fmul fast float %8549, -3.000000e+00
  %8559 = fadd fast float %8548, %8546
  %8560 = fmul fast float %8559, 3.000000e+00
  %8561 = fadd fast float %8558, 1.000000e+00
  %8562 = fadd fast float %8561, %8560
  %8563 = fmul fast float %8549, 0x3FC5555560000000
  %8564 = fmul fast float %8547, %8547
  %8565 = fmul fast float %8564, %8547
  %8566 = fsub fast float 3.000000e+00, %8547
  %8567 = fmul fast float %8564, %8566
  %8568 = fmul fast float %8547, 3.000000e+00
  %8569 = fmul fast float %8565, 3.000000e+00
  %8570 = fmul fast float %8564, 6.000000e+00
  %8571 = fsub fast float %8569, %8570
  %8572 = fadd fast float %8571, 4.000000e+00
  %8573 = fmul fast float %8572, 0x3FC5555560000000
  %8574 = fmul fast float %8565, -3.000000e+00
  %8575 = fadd fast float %8564, %8547
  %8576 = fmul fast float %8575, 3.000000e+00
  %8577 = fadd fast float %8574, 1.000000e+00
  %8578 = fadd fast float %8577, %8576
  %8579 = fmul fast float %8565, 0x3FC5555560000000
  %8580 = fadd fast float %8546, 1.000000e+00
  %8581 = fsub fast float 1.000000e+00, %8552
  %8582 = fadd fast float %8581, %8551
  %8583 = fadd fast float %8582, %8556
  %8584 = fmul fast float %8583, 0x3FC5555560000000
  %8585 = fdiv fast float %8557, %8584
  %8586 = fsub fast float %8580, %8585
  %8587 = fsub fast float 1.000000e+00, %8546
  %8588 = fadd fast float %8562, %8549
  %8589 = fmul fast float %8588, 0x3FC5555560000000
  %8590 = fdiv fast float %8563, %8589
  %8591 = fadd fast float %8587, %8590
  %8592 = fadd fast float %8547, 1.000000e+00
  %8593 = fsub fast float 1.000000e+00, %8568
  %8594 = fadd fast float %8593, %8567
  %8595 = fadd fast float %8594, %8572
  %8596 = fmul fast float %8595, 0x3FC5555560000000
  %8597 = fdiv fast float %8573, %8596
  %8598 = fsub fast float %8592, %8597
  %8599 = fsub fast float 1.000000e+00, %8547
  %8600 = fadd fast float %8578, %8565
  %8601 = fmul fast float %8600, 0x3FC5555560000000
  %8602 = fdiv fast float %8579, %8601
  %8603 = fadd fast float %8602, %8599
  %8604 = fmul fast float %8586, %8540
  %8605 = fsub fast float %8461, %8604
  %8606 = fmul fast float %8591, %8540
  %8607 = fadd fast float %8606, %8461
  %8608 = fmul fast float %8603, %8541
  %8609 = fadd fast float %8608, %8462
  %8610 = fmul fast float %8598, %8541
  %8611 = fsub fast float %8462, %8610
  %8612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8605, float %8611, float %8529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8613 = extractvalue %dx.types.ResRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.ResRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.ResRet.f32 %8612, 2
  %8616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8607, float %8611, float %8529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8617 = extractvalue %dx.types.ResRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.ResRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.ResRet.f32 %8616, 2
  %8620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8605, float %8609, float %8529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8621 = extractvalue %dx.types.ResRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.ResRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.ResRet.f32 %8620, 2
  %8624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8607, float %8609, float %8529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.ResRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.ResRet.f32 %8624, 2
  %8628 = fsub fast float %8621, %8613
  %8629 = fsub fast float %8622, %8614
  %8630 = fsub fast float %8623, %8615
  %8631 = fmul fast float %8628, %8601
  %8632 = fmul fast float %8629, %8601
  %8633 = fmul fast float %8630, %8601
  %8634 = fadd fast float %8631, %8613
  %8635 = fadd fast float %8632, %8614
  %8636 = fadd fast float %8633, %8615
  %8637 = fsub fast float %8625, %8617
  %8638 = fsub fast float %8626, %8618
  %8639 = fsub fast float %8627, %8619
  %8640 = fmul fast float %8637, %8601
  %8641 = fmul fast float %8638, %8601
  %8642 = fmul fast float %8639, %8601
  %8643 = fsub fast float %8617, %8634
  %8644 = fadd fast float %8643, %8640
  %8645 = fsub fast float %8618, %8635
  %8646 = fadd fast float %8645, %8641
  %8647 = fsub fast float %8619, %8636
  %8648 = fadd fast float %8647, %8642
  %8649 = fmul fast float %8644, %8589
  %8650 = fmul fast float %8646, %8589
  %8651 = fmul fast float %8648, %8589
  %8652 = fadd fast float %8649, %8634
  %8653 = fadd fast float %8650, %8635
  %8654 = fadd fast float %8651, %8636
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 1
  %8657 = fmul fast float %8652, %8656
  %8658 = fmul fast float %8653, %8656
  %8659 = fmul fast float %8654, %8656
  br label %8660

; <label>:8660                                    ; preds = %8491, %8448
  %8661 = phi float [ %8531, %8491 ], [ 1.000000e+00, %8448 ]
  %8662 = phi float [ %8532, %8491 ], [ 1.000000e+00, %8448 ]
  %8663 = phi float [ %8533, %8491 ], [ 1.000000e+00, %8448 ]
  %8664 = phi float [ %8657, %8491 ], [ 0.000000e+00, %8448 ]
  %8665 = phi float [ %8658, %8491 ], [ 0.000000e+00, %8448 ]
  %8666 = phi float [ %8659, %8491 ], [ 0.000000e+00, %8448 ]
  %8667 = fmul fast float %8664, %7002
  %8668 = fmul fast float %8665, %7002
  %8669 = fmul fast float %8666, %7002
  %8670 = fmul fast float %8661, %8455
  %8671 = call float @dx.op.dot3.f32(i32 55, float %8661, float %8662, float %8663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8672 = call float @dx.op.dot3.f32(i32 55, float %8667, float %8668, float %8669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8673 = select i1 %224, float %8671, float %8661
  %8674 = select i1 %224, float %8671, float %8662
  %8675 = select i1 %224, float 1.000000e+00, float %8663
  %8676 = select i1 %224, float %8672, float %8667
  %8677 = select i1 %224, float 0.000000e+00, float %8668
  %8678 = select i1 %224, float 0.000000e+00, float %8669
  %8679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.i32 %8679, 3
  %8681 = and i32 %8680, 3
  %8682 = icmp ne i32 %8681, 0
  %8683 = and i32 %8680, 4
  %8684 = icmp ne i32 %8683, 0
  %8685 = and i1 %8682, %8684
  %8686 = and i1 %224, %8685
  br i1 %8686, label %8687, label %8693

; <label>:8687                                    ; preds = %8660
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8690 = fadd fast float %8670, -1.000000e+00
  %8691 = fmul fast float %8689, %8690
  %8692 = fadd fast float %8691, 1.000000e+00
  br label %8693

; <label>:8693                                    ; preds = %8687, %8660
  %8694 = phi float [ %8692, %8687 ], [ %8670, %8660 ]
  %8695 = fadd fast float %8452, %8449
  %8696 = fmul fast float %8673, %8695
  %8697 = fadd fast float %8696, %8676
  %8698 = fadd fast float %8453, %8450
  %8699 = fmul fast float %8674, %8698
  %8700 = fadd fast float %8699, %8677
  %8701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8701, 0
  br i1 %224, label %8703, label %8726

; <label>:8703                                    ; preds = %8693
  %8704 = fadd fast float %8697, %8700
  %8705 = fmul fast float %8702, %8704
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 3
  %8708 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %8709 = fsub fast float %7011, %7005
  %8710 = fadd fast float %8709, %7012
  %8711 = fsub fast float %8710, %8708
  %8712 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %8713 = fmul fast float %8711, %8712
  %8714 = call float @dx.op.unary.f32(i32 7, float %8713)  ; Saturate(value)
  %8715 = fsub fast float %8714, %8707
  %8716 = fmul fast float %8715, %8694
  %8717 = fadd fast float %8716, %8707
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = fsub fast float %8717, %8719
  %8721 = fmul fast float %8720, 1.000000e+01
  %8722 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  %8723 = fmul fast float %8722, %7001
  %8724 = fadd fast float %8723, %7002
  %8725 = fmul fast float %8724, %8717
  br label %8750

; <label>:8726                                    ; preds = %8693
  %8727 = fadd fast float %8454, %8451
  %8728 = fmul fast float %8675, %8727
  %8729 = fadd fast float %8728, %8678
  %8730 = fmul fast float %8702, %8697
  %8731 = fmul fast float %8702, %8700
  %8732 = fmul fast float %8702, %8729
  %8733 = call float @dx.op.binary.f32(i32 35, float %8731, float %8732)  ; FMax(a,b)
  %8734 = call float @dx.op.binary.f32(i32 35, float %8730, float %8733)  ; FMax(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8734, float %7002)  ; FMax(a,b)
  %8736 = fcmp fast ugt float %8735, 0x3F10000000000000
  br i1 %8736, label %8738, label %8737

; <label>:8737                                    ; preds = %8726
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8738

; <label>:8738                                    ; preds = %8737, %8726
  %8739 = add i32 %56, 356
  %8740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8739, i32 undef)  ; BufferLoad(srv,index,wot)
  %8741 = extractvalue %dx.types.ResRet.i32 %8740, 0
  %8742 = and i32 %8741, 32
  %8743 = icmp eq i32 %8742, 0
  br i1 %8743, label %8750, label %8744

; <label>:8744                                    ; preds = %8738
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = fmul fast float %8746, 0x3FE99999A0000000
  %8748 = fadd fast float %8746, %8730
  %8749 = fadd fast float %8747, %8732
  br label %8750

; <label>:8750                                    ; preds = %8744, %8738, %8703
  %8751 = phi float [ %8705, %8703 ], [ %8748, %8744 ], [ %8730, %8738 ]
  %8752 = phi float [ %8725, %8703 ], [ %8731, %8744 ], [ %8731, %8738 ]
  %8753 = phi float [ %8724, %8703 ], [ %8749, %8744 ], [ %8732, %8738 ]
  %8754 = phi float [ %8724, %8703 ], [ %7002, %8744 ], [ %7002, %8738 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8751, float 3.225500e+04)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8752, float 3.225500e+04)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8753, float 3.225500e+04)  ; FMin(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8754, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8755)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8756)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8757)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8758)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[51 x i32] [i32 49, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !95}
!70 = !{!71, !93, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !90, !92}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"SH_RED", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!82 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 7, i8 0, !74}
!84 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 8, i8 0, !77}
!85 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 8}
!88 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 11, i8 0, !89}
!89 = !{i32 3, i32 13}
!90 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !103, i64 0}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

