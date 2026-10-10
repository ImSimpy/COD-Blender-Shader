;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: cb0c0cd94bc219b9e38c0143ecb11aad
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fmul fast float %96, %85
  %98 = fmul fast float %96, %86
  %99 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %76
  %105 = fmul fast float %103, %77
  %106 = fmul fast float %103, %78
  %107 = fmul fast float %77, %74
  %108 = fmul fast float %78, %73
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %78, %72
  %111 = fmul fast float %76, %74
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %76, %73
  %114 = fmul fast float %77, %72
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %75
  %117 = fmul fast float %112, %75
  %118 = fmul fast float %115, %75
  %119 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = bitcast float %119 to i32
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 1597250115, %121
  %123 = bitcast i32 %122 to float
  %124 = fmul fast float %123, %65
  %125 = fmul fast float %123, %66
  %126 = fmul fast float %123, %67
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %130 = fmul fast float %97, 2.000000e+00
  %131 = fmul fast float %130, %128
  %132 = fmul fast float %98, 2.000000e+00
  %133 = fmul fast float %132, %129
  %134 = fsub fast float 1.000000e+00, %131
  %135 = fsub fast float 1.000000e+00, %133
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %134, %137
  %141 = fmul fast float %134, %138
  %142 = fmul fast float %134, %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %135, %144
  %148 = fmul fast float %135, %145
  %149 = fmul fast float %135, %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fadd fast float %147, %151
  %155 = fadd fast float %154, %140
  %156 = fadd fast float %148, %152
  %157 = fadd fast float %156, %141
  %158 = fadd fast float %149, %153
  %159 = fadd fast float %158, %142
  %160 = fmul fast float %155, %88
  %161 = fmul fast float %157, %88
  %162 = fmul fast float %159, %88
  %163 = fmul fast float %97, 5.000000e-01
  %164 = fmul fast float %98, 5.000000e-01
  %165 = fptosi float %163 to i32
  %166 = fptosi float %164 to i32
  %167 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %165, i32 %166, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = lshr i32 %168, 18
  %170 = uitofp i32 %169 to float
  %171 = fmul fast float %170, 0x3F4C00EBA0000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = fadd fast float %172, -1.000000e+00
  %174 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %175 = extractvalue %dx.types.Dimensions %174, 0
  %176 = sitofp i32 %175 to float
  %177 = extractvalue %dx.types.Dimensions %174, 1
  %178 = sitofp i32 %177 to float
  %179 = fcmp fast oge float %163, %176
  %180 = fcmp fast oge float %164, %178
  %181 = or i1 %179, %180
  %182 = select i1 %181, float 0x4197782600000000, float %173
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %186 = fmul fast float %184, %97
  %187 = fmul fast float %185, %98
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 114688
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float %186, float 0.000000e+00
  %193 = select i1 %191, float %187, float 0.000000e+00
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %192, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fmul fast float %195, 2.550000e+02
  %197 = fptoui float %196 to i32
  %198 = select i1 %191, i32 %197, i32 0
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = and i32 %201, 3
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %201, 4
  %205 = icmp ne i32 %204, 0
  %206 = and i1 %203, %205
  br i1 %206, label %207, label %218

; <label>:207                                     ; preds = %0
  %208 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %209 = fmul fast float %208, %98
  %210 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %211 = fmul fast float %210, %97
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %211, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = fcmp fast olt float %214, %216
  br label %221

; <label>:218                                     ; preds = %0
  %219 = icmp eq i32 %204, 0
  %220 = and i1 %203, %219
  br label %221

; <label>:221                                     ; preds = %218, %207
  %222 = phi i1 [ %217, %207 ], [ %220, %218 ]
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = fmul fast float %224, 0x3FE3C6EF40000000
  %226 = frem fast float %97, 2.560000e+02
  %227 = frem fast float %98, 2.560000e+02
  %228 = fptoui float %226 to i32
  %229 = fptoui float %227 to i32
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fadd fast float %231, %225
  %233 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %234 = add i32 %54, 156
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = shl i32 %236, 4
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %236, 7
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %236, 22
  %244 = shl nuw nsw i32 %243, 5
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %54, 216
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %248, 8
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %248, 16
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = add i32 %54, 36
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %54, 288
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %271, 0x3F50624DE0000000
  %275 = fmul fast float %273, 0x3F50624DE0000000
  %276 = add i32 %54, 172
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = shl i32 %278, 4
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %278, 7
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %54, 232
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %290, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %290, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = add i32 %54, 52
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %54, 304
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %54, 188
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %54, 248
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %332, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %332, 16
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = add i32 %54, 68
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %54, 320
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %54, 204
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %362, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = add i32 %54, 264
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %374, 8
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %374, 16
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = add i32 %54, 84
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %54, 336
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %54, 348
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 32
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %404, 64
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %404, 128
  %410 = icmp eq i32 %409, 0
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

; <label>:415                                     ; preds = %221
  %416 = add i32 %54, 524
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = add i32 %418, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %420, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = fmul fast float %425, %81
  %427 = fmul fast float %422, %82
  %428 = fmul fast float %423, %83
  %429 = fmul fast float %424, %84
  br label %430

; <label>:430                                     ; preds = %415, %221
  %431 = phi float [ %84, %221 ], [ %429, %415 ]
  %432 = phi float [ %83, %221 ], [ %428, %415 ]
  %433 = phi float [ %82, %221 ], [ %427, %415 ]
  %434 = phi float [ %81, %221 ], [ %426, %415 ]
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %458, label %439

; <label>:439                                     ; preds = %430
  %440 = add i32 %54, 44
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %433, float 1.000000e+00
  %446 = add i32 %54, 60
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %432, float 1.000000e+00
  %452 = add i32 %54, 76
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %431, float 1.000000e+00
  br label %458

; <label>:458                                     ; preds = %439, %430
  %459 = phi float [ %431, %430 ], [ %457, %439 ]
  %460 = phi float [ %432, %430 ], [ %451, %439 ]
  %461 = phi float [ %433, %430 ], [ %445, %439 ]
  %462 = lshr i32 %436, 20
  %463 = and i32 %462, 3
  %464 = add nuw nsw i32 %463, 1
  %465 = add i32 %54, 24
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %54, 28
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = or i32 %470, %467
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %1151, label %473

; <label>:473                                     ; preds = %458
  %474 = and i32 %467, 262144
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %58, float 1.000000e+00
  %477 = select i1 %475, float %59, float 0.000000e+00
  %478 = select i1 %475, float %60, float 0.000000e+00
  %479 = select i1 %475, float %61, float 1.000000e+00
  %480 = select i1 %475, float %62, float %79
  %481 = select i1 %475, float %63, float %80
  %482 = add i32 %54, 284
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %486, 0x3F50624DE0000000
  %488 = add i32 %54, 88
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = and i32 %491, 255
  %493 = lshr i32 %490, 24
  %494 = add i32 %54, 292
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %54, 32
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 22
  %505 = shl nuw nsw i32 %504, 5
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = shl i32 %503, 4
  %508 = and i32 %507, 32752
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %503, 7
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %515 = fmul fast float %514, 1.000000e+03
  %516 = fmul fast float %274, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fadd fast float %517, %264
  %519 = fmul fast float %275, %515
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = fadd fast float %520, %266
  %522 = fmul fast float %487, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fmul fast float %523, 0x401921FB60000000
  %525 = fadd fast float %524, %506
  %526 = call float @dx.op.unary.f32(i32 13, float %525)  ; Sin(value)
  %527 = call float @dx.op.unary.f32(i32 12, float %525)  ; Cos(value)
  %528 = fsub fast float -0.000000e+00, %526
  %529 = fadd fast float %480, -5.000000e-01
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fmul fast float %498, %529
  %532 = fmul fast float %500, %530
  %533 = fadd fast float %531, 5.000000e-01
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fmul fast float %509, %533
  %536 = fmul fast float %512, %534
  %537 = fmul fast float %527, %535
  %538 = call float @dx.op.tertiary.f32(i32 46, float %528, float %536, float %537)  ; FMad(a,b,c)
  %539 = fmul fast float %526, %535
  %540 = call float @dx.op.tertiary.f32(i32 46, float %527, float %536, float %539)  ; FMad(a,b,c)
  %541 = fadd fast float %518, %538
  %542 = fadd fast float %521, %540
  %543 = icmp ugt i32 %492, 1
  %544 = icmp ugt i32 %490, 33554431
  %545 = or i1 %544, %543
  br i1 %545, label %546, label %571

; <label>:546                                     ; preds = %473
  %547 = add i32 %54, 228
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = fmul fast float %514, %551
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = mul nuw nsw i32 %492, %493
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %553, %555
  %557 = call float @dx.op.unary.f32(i32 27, float %556)  ; Round_ni(value)
  %558 = fptoui float %557 to i32
  %559 = urem i32 %558, %492
  %560 = udiv i32 %558, %493
  %561 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = uitofp i32 %559 to float
  %564 = uitofp i32 %560 to float
  %565 = fadd fast float %561, %563
  %566 = fadd fast float %562, %564
  %567 = uitofp i32 %492 to float
  %568 = uitofp i32 %493 to float
  %569 = fdiv fast float %565, %567
  %570 = fdiv fast float %566, %568
  br label %571

; <label>:571                                     ; preds = %546, %473
  %572 = phi float [ %569, %546 ], [ %541, %473 ]
  %573 = phi float [ %570, %546 ], [ %542, %473 ]
  %574 = and i32 %467, 16777216
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %685, label %576

; <label>:576                                     ; preds = %571
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = fadd fast float %578, %160
  %582 = fadd fast float %579, %161
  %583 = fadd fast float %580, %162
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = icmp eq i32 %55, 65535
  br i1 %587, label %682, label %588

; <label>:588                                     ; preds = %576
  %589 = lshr i32 %55, 1
  %590 = shl i32 %589, 2
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %55, 1
  %594 = icmp ne i32 %593, 0
  %595 = lshr i32 %592, 16
  %596 = and i32 %592, 65535
  %597 = select i1 %594, i32 %595, i32 %596
  %598 = icmp eq i32 %597, 65535
  br i1 %598, label %678, label %599

; <label>:599                                     ; preds = %588
  %600 = mul nuw nsw i32 %597, 40
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %600, 12
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %600, 24
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %600, 36
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = fsub fast float %581, %602
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fmul fast float %617, %618
  %622 = fmul fast float %617, %619
  %623 = fmul fast float %617, %620
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fmul fast float %627, %607
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = shl i32 %55, 2
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %637, %dx.types.Handle %49, float %638, float %639, float %640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fadd fast float %645, 5.000000e-01
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = fsub fast float %621, %624
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fadd fast float %624, 1.250000e-01
  %661 = fadd fast float %660, %657
  %662 = fadd fast float %661, %651
  %663 = fadd fast float %625, 1.250000e-01
  %664 = fadd fast float %663, %658
  %665 = fadd fast float %664, %652
  %666 = fadd fast float %626, 1.250000e-01
  %667 = fadd fast float %666, %659
  %668 = fadd fast float %667, %653
  %669 = fmul fast float %662, %612
  %670 = fmul fast float %665, %613
  %671 = fmul fast float %668, %614
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %675, %dx.types.Handle %47, float %669, float %670, float %671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  br label %678

; <label>:678                                     ; preds = %599, %588
  %679 = phi float [ %677, %599 ], [ -1.000000e+00, %588 ]
  %680 = fadd fast float %679, %586
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %678, %576
  %683 = phi float [ %681, %678 ], [ %586, %576 ]
  %684 = fmul fast float %683, %434
  br label %685

; <label>:685                                     ; preds = %682, %571
  %686 = phi float [ %684, %682 ], [ %434, %571 ]
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 256
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %737, label %691

; <label>:691                                     ; preds = %685
  %692 = add i32 %54, 472
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %94, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = add i32 %54, 100
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = shl i32 %701, 4
  %703 = and i32 %702, 32752
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %701, 7
  %706 = and i32 %705, 32752
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = fsub fast float 1.000000e+00, %686
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %710 = bitcast float %686 to i32
  %711 = sitofp i32 %710 to float
  %712 = fadd fast float %711, 0xC1CFBF8940000000
  %713 = fmul fast float %707, %712
  %714 = fadd fast float %713, 0x41CFBF8940000000
  %715 = fptosi float %714 to i32
  %716 = bitcast i32 %715 to float
  %717 = bitcast float %709 to i32
  %718 = sitofp i32 %717 to float
  %719 = fadd fast float %718, 0xC1CFBF8940000000
  %720 = fmul fast float %719, %707
  %721 = fadd fast float %720, 0x41CFBF8940000000
  %722 = fptosi float %721 to i32
  %723 = bitcast i32 %722 to float
  %724 = fmul fast float %716, %704
  %725 = fmul fast float %723, %704
  %726 = fsub fast float %709, %724
  %727 = fadd fast float %725, %709
  %728 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = fsub fast float %698, %728
  %731 = fsub fast float %729, %728
  %732 = bitcast float %731 to i32
  %733 = sub nsw i32 2129859010, %732
  %734 = bitcast i32 %733 to float
  %735 = fmul fast float %734, %730
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  br label %737

; <label>:737                                     ; preds = %691, %685
  %738 = phi float [ %736, %691 ], [ %686, %685 ]
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 128
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %759, label %743

; <label>:743                                     ; preds = %737
  %744 = add i32 %54, 456
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %94, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 524288
  %754 = icmp ne i32 %753, 0
  %755 = fcmp fast ogt float %750, 0x3FE0101020000000
  %756 = select i1 %755, float 1.000000e+00, float 0.000000e+00
  %757 = select i1 %754, float %756, float %750
  %758 = fmul fast float %757, %738
  br label %759

; <label>:759                                     ; preds = %743, %737
  %760 = phi float [ %758, %743 ], [ %738, %737 ]
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %963, label %765

; <label>:765                                     ; preds = %759
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %54, 408
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %93, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  %778 = and i32 %767, 255
  %779 = uitofp i32 %778 to float
  %780 = lshr i32 %767, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %777, %779
  %784 = fadd fast float %783, %782
  %785 = fmul fast float %784, 0x3F70101000000000
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 512
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %798, label %790

; <label>:790                                     ; preds = %765
  %791 = add i32 %54, 492
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %94, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  br label %798

; <label>:798                                     ; preds = %790, %765
  %799 = phi float [ %797, %790 ], [ 1.000000e+00, %765 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 33554432
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %910, label %804

; <label>:804                                     ; preds = %798
  %805 = add i32 %54, 224
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 65535
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = lshr i32 %807, 16
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = add i32 %54, 228
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = lshr i32 %818, 24
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = and i32 %818, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %818, 8
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %818, 16
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = add i32 %54, 220
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 24
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = and i32 %835, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %835, 8
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = lshr i32 %835, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = bitcast float %774 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %774, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %774
  %859 = fmul fast float %858, %857
  %860 = bitcast float %775 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %775, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %775
  %869 = fmul fast float %868, %867
  %870 = bitcast float %776 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %776, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %776
  %879 = fmul fast float %878, %877
  %880 = fsub fast float %859, %841
  %881 = fsub fast float %869, %845
  %882 = fsub fast float %879, %849
  %883 = fmul fast float %880, %809
  %884 = fmul fast float %881, %811
  %885 = fmul fast float %882, %816
  %886 = fadd fast float %883, %824
  %887 = fadd fast float %884, %828
  %888 = fadd fast float %885, %832
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = fmul fast float %889, %889
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fsub fast float %892, %774
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fmul fast float %895, %799
  %899 = fmul fast float %896, %799
  %900 = fmul fast float %897, %799
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %821, %785
  %905 = fsub fast float %904, %838
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fsub fast float %906, %785
  %908 = fmul fast float %907, %799
  %909 = fadd fast float %908, %785
  br label %963

; <label>:910                                     ; preds = %798
  %911 = and i32 %801, 134217728
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %947, label %913

; <label>:913                                     ; preds = %910
  %914 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fmul fast float %917, %799
  %921 = fmul fast float %918, %799
  %922 = fmul fast float %919, %799
  %923 = fadd fast float %920, 5.000000e-01
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = fmul fast float %923, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %926
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %926
  %934 = fmul fast float %924, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %927
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %927
  %939 = fmul fast float %925, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %928
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %928
  %944 = fmul fast float %933, %933
  %945 = fmul fast float %938, %938
  %946 = fmul fast float %943, %943
  br label %963

; <label>:947                                     ; preds = %910
  %948 = fmul fast float %251, %251
  %949 = fmul fast float %255, %255
  %950 = fmul fast float %259, %259
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fmul fast float %799, %951
  %955 = fmul fast float %799, %952
  %956 = fmul fast float %799, %953
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fmul fast float %957, %774
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  br label %963

; <label>:963                                     ; preds = %947, %913, %804, %759
  %964 = phi float [ %909, %804 ], [ %785, %913 ], [ %785, %947 ], [ 0x3FA23C0BE0000000, %759 ]
  %965 = phi float [ %901, %804 ], [ %944, %913 ], [ %960, %947 ], [ 1.000000e+00, %759 ]
  %966 = phi float [ %902, %804 ], [ %945, %913 ], [ %961, %947 ], [ 1.000000e+00, %759 ]
  %967 = phi float [ %903, %804 ], [ %946, %913 ], [ %962, %947 ], [ 1.000000e+00, %759 ]
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %970 = and i32 %969, 1
  %971 = icmp ne i32 %970, 0
  %972 = add i32 %54, 356
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 32
  %976 = icmp ne i32 %975, 0
  %977 = and i1 %971, %976
  %978 = select i1 %977, float 1.000000e+00, float %965
  %979 = select i1 %977, float 0x3FD3333340000000, float %966
  %980 = select i1 %977, float 0x3FD3333340000000, float %967
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 32
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1057, label %985

; <label>:985                                     ; preds = %963
  %986 = add i32 %54, 92
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %54, 424
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %93, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = and i32 %988, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %988, 8
  %1002 = and i32 %1001, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = lshr i32 %988, 16
  %1005 = and i32 %1004, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = fmul fast float %1006, 0x3F70101000000000
  %1008 = fmul fast float %995, %1000
  %1009 = fadd fast float %1008, %1003
  %1010 = fmul fast float %1009, 0x3F70101000000000
  %1011 = fadd fast float %996, -5.000000e-01
  %1012 = fadd fast float %998, -5.000000e-01
  %1013 = fmul fast float %1011, %1007
  %1014 = fmul fast float %1012, %1007
  %1015 = fadd fast float %1013, 5.000000e-01
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fmul fast float %1016, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fadd fast float %1018, %1020
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = fsub fast float %1018, %1020
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1024, float %1028, float %1022, float %1024, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1022, %1030
  %1032 = fmul fast float %1024, %1030
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 67108864
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1053, label %1037

; <label>:1037                                    ; preds = %985
  %1038 = add i32 %54, 280
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 65535
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = lshr i32 %1040, 16
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = fsub fast float %1010, %1048
  %1050 = fmul fast float %1049, %1042
  %1051 = fadd fast float %1050, %1046
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %1037, %985
  %1054 = phi float [ %1052, %1037 ], [ %1010, %985 ]
  %1055 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  br label %1057

; <label>:1057                                    ; preds = %1053, %963
  %1058 = phi float [ %1054, %1053 ], [ 0x3FD6666660000000, %963 ]
  %1059 = phi float [ %1055, %1053 ], [ 0.000000e+00, %963 ]
  %1060 = phi float [ %1056, %1053 ], [ 0.000000e+00, %963 ]
  %1061 = phi float [ %997, %1053 ], [ 1.000000e+00, %963 ]
  %1062 = add i32 %54, 160
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 22
  %1066 = shl nuw nsw i32 %1065, 5
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 64
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1105, label %1072

; <label>:1072                                    ; preds = %1057
  %1073 = add i32 %54, 440
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 131072
  %1081 = icmp eq i32 %1080, 0
  %1082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %93, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, %239
  %1087 = fmul fast float %1084, %242
  %1088 = fmul fast float %1085, %245
  br i1 %1081, label %1095, label %1089

; <label>:1089                                    ; preds = %1072
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = fmul fast float %1091, %1086
  %1093 = fmul fast float %1091, %1087
  %1094 = fmul fast float %1091, %1088
  br label %1095

; <label>:1095                                    ; preds = %1089, %1072
  %1096 = phi float [ %1092, %1089 ], [ %1086, %1072 ]
  %1097 = phi float [ %1093, %1089 ], [ %1087, %1072 ]
  %1098 = phi float [ %1094, %1089 ], [ %1088, %1072 ]
  %1099 = fmul fast float %1096, %1067
  %1100 = select i1 %222, float %1099, float %1096
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1097, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %222, float 0.000000e+00, float %1096
  %1103 = select i1 %222, float %1101, float %1097
  %1104 = select i1 %222, float 0.000000e+00, float %1098
  br label %1105

; <label>:1105                                    ; preds = %1095, %1057
  %1106 = phi float [ %1102, %1095 ], [ 0.000000e+00, %1057 ]
  %1107 = phi float [ %1103, %1095 ], [ 0.000000e+00, %1057 ]
  %1108 = phi float [ %1104, %1095 ], [ 0.000000e+00, %1057 ]
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 26624
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1136, label %1113

; <label>:1113                                    ; preds = %1105
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 16384
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1136, label %1118

; <label>:1118                                    ; preds = %1113
  %1119 = and i32 %1115, 1048576
  %1120 = icmp ne i32 %1119, 0
  %1121 = add i32 %54, 508
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1125, %dx.types.Handle %94, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = add i32 %54, 96
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = lshr i32 %1130, 24
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1127, 0x3F70101020000000
  %1134 = select i1 %1120, float 0x3F70101020000000, float %1133
  %1135 = fmul fast float %1134, %1132
  br label %1136

; <label>:1136                                    ; preds = %1118, %1113, %1105
  %1137 = phi float [ %1135, %1118 ], [ 0.000000e+00, %1113 ], [ 0.000000e+00, %1105 ]
  %1138 = add i32 %54, 96
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = lshr i32 %1140, 8
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = call float @dx.op.dot3.f32(i32 55, float %978, float %979, float %980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = fmul fast float %1145, %1146
  %1148 = fadd fast float %1147, %1142
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  br label %1151

; <label>:1151                                    ; preds = %1136, %458
  %1152 = phi float [ 0.000000e+00, %458 ], [ %1059, %1136 ]
  %1153 = phi float [ 0.000000e+00, %458 ], [ %1060, %1136 ]
  %1154 = phi float [ 0.000000e+00, %458 ], [ %978, %1136 ]
  %1155 = phi float [ 0.000000e+00, %458 ], [ %979, %1136 ]
  %1156 = phi float [ 0.000000e+00, %458 ], [ %980, %1136 ]
  %1157 = phi float [ 0.000000e+00, %458 ], [ %1106, %1136 ]
  %1158 = phi float [ 0.000000e+00, %458 ], [ %1107, %1136 ]
  %1159 = phi float [ 0.000000e+00, %458 ], [ %1108, %1136 ]
  %1160 = phi float [ 0.000000e+00, %458 ], [ %964, %1136 ]
  %1161 = phi float [ 0.000000e+00, %458 ], [ %760, %1136 ]
  %1162 = phi float [ 0.000000e+00, %458 ], [ %1058, %1136 ]
  %1163 = phi float [ 0.000000e+00, %458 ], [ %1061, %1136 ]
  %1164 = phi float [ 0.000000e+00, %458 ], [ %1137, %1136 ]
  %1165 = phi float [ 0.000000e+00, %458 ], [ %1150, %1136 ]
  br i1 %406, label %2046, label %1166

; <label>:1166                                    ; preds = %1151
  %1167 = icmp ult i32 %464, 2
  %1168 = add i32 %54, 40
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %54, 44
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = or i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %2046, label %1176

; <label>:1176                                    ; preds = %1166
  %1177 = and i32 %1170, 262144
  %1178 = icmp ne i32 %1177, 0
  %1179 = select i1 %1178, float %58, float 1.000000e+00
  %1180 = select i1 %1178, float %59, float 0.000000e+00
  %1181 = select i1 %1178, float %60, float 0.000000e+00
  %1182 = select i1 %1178, float %61, float 1.000000e+00
  %1183 = select i1 %1178, float %62, float %79
  %1184 = select i1 %1178, float %63, float %80
  %1185 = add i32 %54, 300
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1189, 0x3F50624DE0000000
  %1191 = add i32 %54, 104
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 16
  %1195 = and i32 %1194, 255
  %1196 = lshr i32 %1193, 24
  %1197 = add i32 %54, 308
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 65535
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1199, 16
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = add i32 %54, 48
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = lshr i32 %1206, 22
  %1208 = shl nuw nsw i32 %1207, 5
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = shl i32 %1206, 4
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1206, 7
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1218 = fmul fast float %1217, 1.000000e+03
  %1219 = fmul fast float %316, %1218
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = fadd fast float %1220, %306
  %1222 = fmul fast float %317, %1218
  %1223 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1224 = fadd fast float %1223, %308
  %1225 = fmul fast float %1190, %1218
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = fmul fast float %1226, 0x401921FB60000000
  %1228 = fadd fast float %1227, %1209
  %1229 = call float @dx.op.unary.f32(i32 13, float %1228)  ; Sin(value)
  %1230 = call float @dx.op.unary.f32(i32 12, float %1228)  ; Cos(value)
  %1231 = fsub fast float -0.000000e+00, %1229
  %1232 = fadd fast float %1183, -5.000000e-01
  %1233 = fadd fast float %1184, -5.000000e-01
  %1234 = fmul fast float %1201, %1232
  %1235 = fmul fast float %1203, %1233
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1212, %1236
  %1239 = fmul fast float %1215, %1237
  %1240 = fmul fast float %1230, %1238
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1231, float %1239, float %1240)  ; FMad(a,b,c)
  %1242 = fmul fast float %1229, %1238
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1230, float %1239, float %1242)  ; FMad(a,b,c)
  %1244 = fadd fast float %1221, %1241
  %1245 = fadd fast float %1224, %1243
  %1246 = icmp ugt i32 %1195, 1
  %1247 = icmp ugt i32 %1193, 33554431
  %1248 = or i1 %1247, %1246
  br i1 %1248, label %1249, label %1274

; <label>:1249                                    ; preds = %1176
  %1250 = add i32 %54, 244
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = lshr i32 %1252, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = fmul fast float %1217, %1254
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = mul nuw nsw i32 %1195, %1196
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1256, %1258
  %1260 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1261 = fptoui float %1260 to i32
  %1262 = urem i32 %1261, %1195
  %1263 = udiv i32 %1261, %1196
  %1264 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1265 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1266 = uitofp i32 %1262 to float
  %1267 = uitofp i32 %1263 to float
  %1268 = fadd fast float %1264, %1266
  %1269 = fadd fast float %1265, %1267
  %1270 = uitofp i32 %1195 to float
  %1271 = uitofp i32 %1196 to float
  %1272 = fdiv fast float %1268, %1270
  %1273 = fdiv fast float %1269, %1271
  br label %1274

; <label>:1274                                    ; preds = %1249, %1176
  %1275 = phi float [ %1272, %1249 ], [ %1244, %1176 ]
  %1276 = phi float [ %1273, %1249 ], [ %1245, %1176 ]
  %1277 = and i32 %1170, 16777216
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1388, label %1279

; <label>:1279                                    ; preds = %1274
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = fadd fast float %1281, %160
  %1285 = fadd fast float %1282, %161
  %1286 = fadd fast float %1283, %162
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = icmp eq i32 %55, 65535
  br i1 %1290, label %1385, label %1291

; <label>:1291                                    ; preds = %1279
  %1292 = lshr i32 %55, 1
  %1293 = shl i32 %1292, 2
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %55, 1
  %1297 = icmp ne i32 %1296, 0
  %1298 = lshr i32 %1295, 16
  %1299 = and i32 %1295, 65535
  %1300 = select i1 %1297, i32 %1298, i32 %1299
  %1301 = icmp eq i32 %1300, 65535
  br i1 %1301, label %1381, label %1302

; <label>:1302                                    ; preds = %1291
  %1303 = mul nuw nsw i32 %1300, 40
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = add nuw nsw i32 %1303, 12
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = add nuw nsw i32 %1303, 24
  %1314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = add nuw nsw i32 %1303, 36
  %1319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = fsub fast float %1284, %1305
  %1322 = fsub fast float %1285, %1306
  %1323 = fsub fast float %1286, %1307
  %1324 = fmul fast float %1320, %1321
  %1325 = fmul fast float %1320, %1322
  %1326 = fmul fast float %1320, %1323
  %1327 = call float @dx.op.unary.f32(i32 27, float %1324)  ; Round_ni(value)
  %1328 = call float @dx.op.unary.f32(i32 27, float %1325)  ; Round_ni(value)
  %1329 = call float @dx.op.unary.f32(i32 27, float %1326)  ; Round_ni(value)
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fmul fast float %1330, %1310
  %1334 = fmul fast float %1331, %1311
  %1335 = fmul fast float %1332, %1312
  %1336 = shl i32 %55, 2
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %1338, 0
  %1340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1341 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1342 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1343 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1340, %dx.types.Handle %49, float %1341, float %1342, float %1343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = fmul fast float %1345, 1.023000e+03
  %1349 = fmul fast float %1346, 1.023000e+03
  %1350 = fmul fast float %1347, 1.023000e+03
  %1351 = fadd fast float %1348, 5.000000e-01
  %1352 = fadd fast float %1349, 5.000000e-01
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = call float @dx.op.unary.f32(i32 27, float %1351)  ; Round_ni(value)
  %1355 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1356 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1357 = fsub fast float %1324, %1327
  %1358 = fsub fast float %1325, %1328
  %1359 = fsub fast float %1326, %1329
  %1360 = fmul fast float %1357, 7.500000e-01
  %1361 = fmul fast float %1358, 7.500000e-01
  %1362 = fmul fast float %1359, 7.500000e-01
  %1363 = fadd fast float %1327, 1.250000e-01
  %1364 = fadd fast float %1363, %1360
  %1365 = fadd fast float %1364, %1354
  %1366 = fadd fast float %1328, 1.250000e-01
  %1367 = fadd fast float %1366, %1361
  %1368 = fadd fast float %1367, %1355
  %1369 = fadd fast float %1329, 1.250000e-01
  %1370 = fadd fast float %1369, %1362
  %1371 = fadd fast float %1370, %1356
  %1372 = fmul fast float %1365, %1315
  %1373 = fmul fast float %1368, %1316
  %1374 = fmul fast float %1371, %1317
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1378, %dx.types.Handle %47, float %1372, float %1373, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  br label %1381

; <label>:1381                                    ; preds = %1302, %1291
  %1382 = phi float [ %1380, %1302 ], [ -1.000000e+00, %1291 ]
  %1383 = fadd fast float %1382, %1289
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  br label %1385

; <label>:1385                                    ; preds = %1381, %1279
  %1386 = phi float [ %1384, %1381 ], [ %1289, %1279 ]
  %1387 = fmul fast float %1386, %461
  br label %1388

; <label>:1388                                    ; preds = %1385, %1274
  %1389 = phi float [ %1387, %1385 ], [ %461, %1274 ]
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 256
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1440, label %1394

; <label>:1394                                    ; preds = %1388
  %1395 = add i32 %54, 476
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %94, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = add i32 %54, 116
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = shl i32 %1404, 4
  %1406 = and i32 %1405, 32752
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1404, 7
  %1409 = and i32 %1408, 32752
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = fsub fast float 1.000000e+00, %1389
  %1412 = call float @dx.op.binary.f32(i32 35, float %1411, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1413 = bitcast float %1389 to i32
  %1414 = sitofp i32 %1413 to float
  %1415 = fadd fast float %1414, 0xC1CFBF8940000000
  %1416 = fmul fast float %1410, %1415
  %1417 = fadd fast float %1416, 0x41CFBF8940000000
  %1418 = fptosi float %1417 to i32
  %1419 = bitcast i32 %1418 to float
  %1420 = bitcast float %1412 to i32
  %1421 = sitofp i32 %1420 to float
  %1422 = fadd fast float %1421, 0xC1CFBF8940000000
  %1423 = fmul fast float %1422, %1410
  %1424 = fadd fast float %1423, 0x41CFBF8940000000
  %1425 = fptosi float %1424 to i32
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1419, %1407
  %1428 = fmul fast float %1426, %1407
  %1429 = fsub fast float %1412, %1427
  %1430 = fadd fast float %1428, %1412
  %1431 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = fsub fast float %1401, %1431
  %1434 = fsub fast float %1432, %1431
  %1435 = bitcast float %1434 to i32
  %1436 = sub nsw i32 2129859010, %1435
  %1437 = bitcast i32 %1436 to float
  %1438 = fmul fast float %1437, %1433
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  br label %1440

; <label>:1440                                    ; preds = %1394, %1388
  %1441 = phi float [ %1439, %1394 ], [ %1389, %1388 ]
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 128
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1440
  %1447 = add i32 %54, 460
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %94, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 524288
  %1457 = icmp ne i32 %1456, 0
  %1458 = fcmp fast ogt float %1453, 0x3FE0101020000000
  %1459 = select i1 %1458, float 1.000000e+00, float 0.000000e+00
  %1460 = select i1 %1457, float %1459, float %1453
  %1461 = fmul fast float %1460, %1441
  br label %1462

; <label>:1462                                    ; preds = %1446, %1440
  %1463 = phi float [ %1461, %1446 ], [ %1441, %1440 ]
  %1464 = fcmp fast ult float %1463, 0x3F70101020000000
  br i1 %1464, label %2046, label %1465

; <label>:1465                                    ; preds = %1462
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 16
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1668, label %1470

; <label>:1470                                    ; preds = %1465
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %54, 412
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = add i32 %1475, 0
  %1477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1477, %dx.types.Handle %93, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.ResRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.ResRet.f32 %1478, 2
  %1482 = extractvalue %dx.types.ResRet.f32 %1478, 3
  %1483 = and i32 %1472, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = lshr i32 %1472, 8
  %1486 = and i32 %1485, 255
  %1487 = uitofp i32 %1486 to float
  %1488 = fmul fast float %1482, %1484
  %1489 = fadd fast float %1488, %1487
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 512
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1503, label %1495

; <label>:1495                                    ; preds = %1470
  %1496 = add i32 %54, 496
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %94, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  br label %1503

; <label>:1503                                    ; preds = %1495, %1470
  %1504 = phi float [ %1502, %1495 ], [ 1.000000e+00, %1470 ]
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 33554432
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1615, label %1509

; <label>:1509                                    ; preds = %1503
  %1510 = add i32 %54, 240
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = lshr i32 %1512, 16
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = add i32 %54, 244
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = lshr i32 %1523, 24
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = and i32 %1523, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1523, 8
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = lshr i32 %1523, 16
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = add i32 %54, 236
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 24
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = and i32 %1540, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = lshr i32 %1540, 8
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = lshr i32 %1540, 16
  %1552 = and i32 %1551, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = fmul fast float %1553, 0x3F70101020000000
  %1555 = bitcast float %1479 to i32
  %1556 = ashr i32 %1555, 1
  %1557 = sub nsw i32 1597463174, %1556
  %1558 = bitcast i32 %1557 to float
  %1559 = fmul fast float %1479, 5.000000e-01
  %1560 = fmul fast float %1558, %1558
  %1561 = fmul fast float %1560, %1559
  %1562 = fsub fast float 1.500000e+00, %1561
  %1563 = fmul fast float %1558, %1479
  %1564 = fmul fast float %1563, %1562
  %1565 = bitcast float %1480 to i32
  %1566 = ashr i32 %1565, 1
  %1567 = sub nsw i32 1597463174, %1566
  %1568 = bitcast i32 %1567 to float
  %1569 = fmul fast float %1480, 5.000000e-01
  %1570 = fmul fast float %1568, %1568
  %1571 = fmul fast float %1570, %1569
  %1572 = fsub fast float 1.500000e+00, %1571
  %1573 = fmul fast float %1568, %1480
  %1574 = fmul fast float %1573, %1572
  %1575 = bitcast float %1481 to i32
  %1576 = ashr i32 %1575, 1
  %1577 = sub nsw i32 1597463174, %1576
  %1578 = bitcast i32 %1577 to float
  %1579 = fmul fast float %1481, 5.000000e-01
  %1580 = fmul fast float %1578, %1578
  %1581 = fmul fast float %1580, %1579
  %1582 = fsub fast float 1.500000e+00, %1581
  %1583 = fmul fast float %1578, %1481
  %1584 = fmul fast float %1583, %1582
  %1585 = fsub fast float %1564, %1546
  %1586 = fsub fast float %1574, %1550
  %1587 = fsub fast float %1584, %1554
  %1588 = fmul fast float %1585, %1514
  %1589 = fmul fast float %1586, %1516
  %1590 = fmul fast float %1587, %1521
  %1591 = fadd fast float %1588, %1529
  %1592 = fadd fast float %1589, %1533
  %1593 = fadd fast float %1590, %1537
  %1594 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = fmul fast float %1594, %1594
  %1598 = fmul fast float %1595, %1595
  %1599 = fmul fast float %1596, %1596
  %1600 = fsub fast float %1597, %1479
  %1601 = fsub fast float %1598, %1480
  %1602 = fsub fast float %1599, %1481
  %1603 = fmul fast float %1600, %1504
  %1604 = fmul fast float %1601, %1504
  %1605 = fmul fast float %1602, %1504
  %1606 = fadd fast float %1603, %1479
  %1607 = fadd fast float %1604, %1480
  %1608 = fadd fast float %1605, %1481
  %1609 = fadd fast float %1526, %1490
  %1610 = fsub fast float %1609, %1543
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fsub fast float %1611, %1490
  %1613 = fmul fast float %1612, %1504
  %1614 = fadd fast float %1613, %1490
  br label %1668

; <label>:1615                                    ; preds = %1503
  %1616 = and i32 %1506, 134217728
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1652, label %1618

; <label>:1618                                    ; preds = %1615
  %1619 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1620 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1622 = fadd fast float %1619, -5.000000e-01
  %1623 = fadd fast float %1620, -5.000000e-01
  %1624 = fadd fast float %1621, -5.000000e-01
  %1625 = fmul fast float %1622, %1504
  %1626 = fmul fast float %1623, %1504
  %1627 = fmul fast float %1624, %1504
  %1628 = fadd fast float %1625, 5.000000e-01
  %1629 = fadd fast float %1626, 5.000000e-01
  %1630 = fadd fast float %1627, 5.000000e-01
  %1631 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1632 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1634 = fmul fast float %1628, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1631
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1631
  %1639 = fmul fast float %1629, 2.000000e+00
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fmul fast float %1640, %1632
  %1642 = fadd fast float %1641, %1639
  %1643 = fmul fast float %1642, %1632
  %1644 = fmul fast float %1630, 2.000000e+00
  %1645 = fsub fast float 1.000000e+00, %1644
  %1646 = fmul fast float %1645, %1633
  %1647 = fadd fast float %1646, %1644
  %1648 = fmul fast float %1647, %1633
  %1649 = fmul fast float %1638, %1638
  %1650 = fmul fast float %1643, %1643
  %1651 = fmul fast float %1648, %1648
  br label %1668

; <label>:1652                                    ; preds = %1615
  %1653 = fmul fast float %293, %293
  %1654 = fmul fast float %297, %297
  %1655 = fmul fast float %301, %301
  %1656 = fadd fast float %1653, -1.000000e+00
  %1657 = fadd fast float %1654, -1.000000e+00
  %1658 = fadd fast float %1655, -1.000000e+00
  %1659 = fmul fast float %1504, %1656
  %1660 = fmul fast float %1504, %1657
  %1661 = fmul fast float %1504, %1658
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fmul fast float %1662, %1479
  %1666 = fmul fast float %1663, %1480
  %1667 = fmul fast float %1664, %1481
  br label %1668

; <label>:1668                                    ; preds = %1652, %1618, %1509, %1465
  %1669 = phi float [ %1614, %1509 ], [ %1490, %1618 ], [ %1490, %1652 ], [ 0x3FA23C0BE0000000, %1465 ]
  %1670 = phi float [ %1606, %1509 ], [ %1649, %1618 ], [ %1665, %1652 ], [ 1.000000e+00, %1465 ]
  %1671 = phi float [ %1607, %1509 ], [ %1650, %1618 ], [ %1666, %1652 ], [ 1.000000e+00, %1465 ]
  %1672 = phi float [ %1608, %1509 ], [ %1651, %1618 ], [ %1667, %1652 ], [ 1.000000e+00, %1465 ]
  %1673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.i32 %1673, 1
  %1675 = and i32 %1674, 1
  %1676 = icmp ne i32 %1675, 0
  %1677 = add i32 %54, 356
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 32
  %1681 = icmp ne i32 %1680, 0
  %1682 = and i1 %1676, %1681
  %1683 = select i1 %1682, float 1.000000e+00, float %1670
  %1684 = select i1 %1682, float 0x3FD3333340000000, float %1671
  %1685 = select i1 %1682, float 0x3FD3333340000000, float %1672
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 32
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1762, label %1690

; <label>:1690                                    ; preds = %1668
  %1691 = add i32 %54, 108
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = add i32 %54, 428
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = add i32 %1696, 0
  %1698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1698, %dx.types.Handle %93, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.ResRet.f32 %1699, 3
  %1704 = and i32 %1693, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = lshr i32 %1693, 8
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = lshr i32 %1693, 16
  %1710 = and i32 %1709, 255
  %1711 = uitofp i32 %1710 to float
  %1712 = fmul fast float %1711, 0x3F70101000000000
  %1713 = fmul fast float %1700, %1705
  %1714 = fadd fast float %1713, %1708
  %1715 = fmul fast float %1714, 0x3F70101000000000
  %1716 = fadd fast float %1701, -5.000000e-01
  %1717 = fadd fast float %1703, -5.000000e-01
  %1718 = fmul fast float %1716, %1712
  %1719 = fmul fast float %1717, %1712
  %1720 = fadd fast float %1718, 5.000000e-01
  %1721 = fadd fast float %1719, 5.000000e-01
  %1722 = fmul fast float %1720, 2.000000e+00
  %1723 = fadd fast float %1722, -1.000000e+00
  %1724 = fmul fast float %1721, 2.000000e+00
  %1725 = fadd fast float %1724, -1.000000e+00
  %1726 = fadd fast float %1723, %1725
  %1727 = fmul fast float %1726, 5.000000e-01
  %1728 = fsub fast float %1723, %1725
  %1729 = fmul fast float %1728, 5.000000e-01
  %1730 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1733 = fsub fast float %1731, %1732
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1729, float %1733, float %1727, float %1729, float %1733)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = call float @dx.op.unary.f32(i32 25, float %1734)  ; Rsqrt(value)
  %1736 = fmul fast float %1727, %1735
  %1737 = fmul fast float %1729, %1735
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 67108864
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1758, label %1742

; <label>:1742                                    ; preds = %1690
  %1743 = add i32 %54, 296
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 65535
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 65535
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = lshr i32 %1745, 16
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = fsub fast float %1715, %1753
  %1755 = fmul fast float %1754, %1747
  %1756 = fadd fast float %1755, %1751
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  br label %1758

; <label>:1758                                    ; preds = %1742, %1690
  %1759 = phi float [ %1757, %1742 ], [ %1715, %1690 ]
  %1760 = call float @dx.op.dot2.f32(i32 54, float %1736, float %1737, float %1179, float %1180)  ; Dot2(ax,ay,bx,by)
  %1761 = call float @dx.op.dot2.f32(i32 54, float %1736, float %1737, float %1181, float %1182)  ; Dot2(ax,ay,bx,by)
  br label %1762

; <label>:1762                                    ; preds = %1758, %1668
  %1763 = phi float [ %1759, %1758 ], [ 0x3FD6666660000000, %1668 ]
  %1764 = phi float [ %1760, %1758 ], [ 0.000000e+00, %1668 ]
  %1765 = phi float [ %1761, %1758 ], [ 0.000000e+00, %1668 ]
  %1766 = phi float [ %1702, %1758 ], [ 1.000000e+00, %1668 ]
  %1767 = add i32 %54, 176
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = lshr i32 %1769, 22
  %1771 = shl nuw nsw i32 %1770, 5
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 64
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1810, label %1777

; <label>:1777                                    ; preds = %1762
  %1778 = add i32 %54, 444
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 131072
  %1786 = icmp eq i32 %1785, 0
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %93, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = fmul fast float %1788, %281
  %1792 = fmul fast float %1789, %284
  %1793 = fmul fast float %1790, %287
  br i1 %1786, label %1800, label %1794

; <label>:1794                                    ; preds = %1777
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = fmul fast float %1796, %1791
  %1798 = fmul fast float %1796, %1792
  %1799 = fmul fast float %1796, %1793
  br label %1800

; <label>:1800                                    ; preds = %1794, %1777
  %1801 = phi float [ %1797, %1794 ], [ %1791, %1777 ]
  %1802 = phi float [ %1798, %1794 ], [ %1792, %1777 ]
  %1803 = phi float [ %1799, %1794 ], [ %1793, %1777 ]
  %1804 = fmul fast float %1801, %1772
  %1805 = select i1 %222, float %1804, float %1801
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1802, float %1803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = select i1 %222, float 0.000000e+00, float %1801
  %1808 = select i1 %222, float %1806, float %1802
  %1809 = select i1 %222, float 0.000000e+00, float %1803
  br label %1810

; <label>:1810                                    ; preds = %1800, %1762
  %1811 = phi float [ %1807, %1800 ], [ 0.000000e+00, %1762 ]
  %1812 = phi float [ %1808, %1800 ], [ 0.000000e+00, %1762 ]
  %1813 = phi float [ %1809, %1800 ], [ 0.000000e+00, %1762 ]
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 26624
  %1817 = icmp eq i32 %1816, 0
  br i1 %1817, label %1841, label %1818

; <label>:1818                                    ; preds = %1810
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 16384
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1841, label %1823

; <label>:1823                                    ; preds = %1818
  %1824 = and i32 %1820, 1048576
  %1825 = icmp ne i32 %1824, 0
  %1826 = add i32 %54, 512
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = add i32 %1828, 0
  %1830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1830, %dx.types.Handle %94, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1832 = extractvalue %dx.types.ResRet.f32 %1831, 0
  %1833 = add i32 %54, 112
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = lshr i32 %1835, 24
  %1837 = uitofp i32 %1836 to float
  %1838 = fmul fast float %1832, 0x3F70101020000000
  %1839 = select i1 %1825, float 0x3F70101020000000, float %1838
  %1840 = fmul fast float %1839, %1837
  br label %1841

; <label>:1841                                    ; preds = %1823, %1818, %1810
  %1842 = phi float [ %1840, %1823 ], [ 0.000000e+00, %1818 ], [ 0.000000e+00, %1810 ]
  %1843 = add i32 %54, 112
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 255
  %1847 = uitofp i32 %1846 to float
  %1848 = lshr i32 %1845, 8
  %1849 = and i32 %1848, 255
  %1850 = uitofp i32 %1849 to float
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1684, float %1685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = fmul fast float %1850, %1851
  %1853 = fadd fast float %1852, %1847
  %1854 = fmul fast float %1853, 0x3F70101020000000
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br i1 %1167, label %1856, label %1864

; <label>:1856                                    ; preds = %1841
  %1857 = fsub fast float 1.000000e+00, %1463
  %1858 = fmul fast float %1857, %1154
  %1859 = fmul fast float %1857, %1155
  %1860 = fmul fast float %1857, %1156
  %1861 = fmul fast float %1857, %1157
  %1862 = fmul fast float %1857, %1158
  %1863 = fmul fast float %1857, %1159
  br label %1864

; <label>:1864                                    ; preds = %1856, %1841
  %1865 = phi float [ %1858, %1856 ], [ %1154, %1841 ]
  %1866 = phi float [ %1859, %1856 ], [ %1155, %1841 ]
  %1867 = phi float [ %1860, %1856 ], [ %1156, %1841 ]
  %1868 = phi float [ %1861, %1856 ], [ %1157, %1841 ]
  %1869 = phi float [ %1862, %1856 ], [ %1158, %1841 ]
  %1870 = phi float [ %1863, %1856 ], [ %1159, %1841 ]
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 3
  %1874 = icmp eq i32 %1873, 3
  br i1 %1874, label %1953, label %1875

; <label>:1875                                    ; preds = %1864
  %1876 = and i32 %1872, 16
  %1877 = icmp ne i32 %1876, 0
  %1878 = select i1 %1877, float %1463, float 0.000000e+00
  %1879 = icmp eq i32 %1873, 0
  br i1 %1879, label %1880, label %1908

; <label>:1880                                    ; preds = %1875
  %1881 = and i32 %1872, 64
  %1882 = icmp ne i32 %1881, 0
  %1883 = select i1 %1882, float %1463, float 0.000000e+00
  %1884 = fsub fast float %1683, %1865
  %1885 = fsub fast float %1684, %1866
  %1886 = fsub fast float %1685, %1867
  %1887 = fmul fast float %1878, %1884
  %1888 = fmul fast float %1878, %1885
  %1889 = fmul fast float %1878, %1886
  %1890 = fadd fast float %1887, %1865
  %1891 = fadd fast float %1888, %1866
  %1892 = fadd fast float %1889, %1867
  %1893 = fsub fast float %1669, %1160
  %1894 = fmul fast float %1878, %1893
  %1895 = fadd fast float %1894, %1160
  %1896 = fsub fast float %1811, %1868
  %1897 = fsub fast float %1812, %1869
  %1898 = fsub fast float %1813, %1870
  %1899 = fmul fast float %1883, %1896
  %1900 = fmul fast float %1883, %1897
  %1901 = fmul fast float %1883, %1898
  %1902 = fadd fast float %1899, %1868
  %1903 = fadd fast float %1900, %1869
  %1904 = fadd fast float %1901, %1870
  %1905 = fsub fast float %1855, %1165
  %1906 = fmul fast float %1878, %1905
  %1907 = fadd fast float %1906, %1165
  br label %1953

; <label>:1908                                    ; preds = %1875
  %1909 = icmp eq i32 %1873, 1
  br i1 %1909, label %1910, label %1923

; <label>:1910                                    ; preds = %1908
  %1911 = fadd fast float %1683, -1.000000e+00
  %1912 = fadd fast float %1684, -1.000000e+00
  %1913 = fadd fast float %1685, -1.000000e+00
  %1914 = fmul fast float %1878, %1911
  %1915 = fmul fast float %1878, %1912
  %1916 = fmul fast float %1878, %1913
  %1917 = fadd fast float %1914, 1.000000e+00
  %1918 = fadd fast float %1915, 1.000000e+00
  %1919 = fadd fast float %1916, 1.000000e+00
  %1920 = fmul fast float %1917, %1865
  %1921 = fmul fast float %1918, %1866
  %1922 = fmul fast float %1919, %1867
  br label %1953

; <label>:1923                                    ; preds = %1908
  %1924 = icmp eq i32 %1873, 2
  br i1 %1924, label %1925, label %1953

; <label>:1925                                    ; preds = %1923
  %1926 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1927 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1928 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1929 = fadd fast float %1926, -5.000000e-01
  %1930 = fadd fast float %1927, -5.000000e-01
  %1931 = fadd fast float %1928, -5.000000e-01
  %1932 = fmul fast float %1929, %1878
  %1933 = fmul fast float %1930, %1878
  %1934 = fmul fast float %1931, %1878
  %1935 = fadd fast float %1932, 5.000000e-01
  %1936 = fadd fast float %1933, 5.000000e-01
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fmul fast float %1935, 2.000000e+00
  %1939 = fsub fast float 1.000000e+00, %1938
  %1940 = fmul fast float %1939, %1865
  %1941 = fadd fast float %1940, %1938
  %1942 = fmul fast float %1941, %1865
  %1943 = fmul fast float %1936, 2.000000e+00
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = fmul fast float %1944, %1866
  %1946 = fadd fast float %1945, %1943
  %1947 = fmul fast float %1946, %1866
  %1948 = fmul fast float %1937, 2.000000e+00
  %1949 = fsub fast float 1.000000e+00, %1948
  %1950 = fmul fast float %1949, %1867
  %1951 = fadd fast float %1950, %1948
  %1952 = fmul fast float %1951, %1867
  br label %1953

; <label>:1953                                    ; preds = %1925, %1923, %1910, %1880, %1864
  %1954 = phi float [ %1865, %1864 ], [ %1942, %1925 ], [ %1865, %1923 ], [ %1920, %1910 ], [ %1890, %1880 ]
  %1955 = phi float [ %1866, %1864 ], [ %1947, %1925 ], [ %1866, %1923 ], [ %1921, %1910 ], [ %1891, %1880 ]
  %1956 = phi float [ %1867, %1864 ], [ %1952, %1925 ], [ %1867, %1923 ], [ %1922, %1910 ], [ %1892, %1880 ]
  %1957 = phi float [ %1868, %1864 ], [ %1868, %1925 ], [ %1868, %1923 ], [ %1868, %1910 ], [ %1902, %1880 ]
  %1958 = phi float [ %1869, %1864 ], [ %1869, %1925 ], [ %1869, %1923 ], [ %1869, %1910 ], [ %1903, %1880 ]
  %1959 = phi float [ %1870, %1864 ], [ %1870, %1925 ], [ %1870, %1923 ], [ %1870, %1910 ], [ %1904, %1880 ]
  %1960 = phi float [ %1160, %1864 ], [ %1160, %1925 ], [ %1160, %1923 ], [ %1160, %1910 ], [ %1895, %1880 ]
  %1961 = phi float [ %1165, %1864 ], [ %1165, %1925 ], [ %1165, %1923 ], [ %1165, %1910 ], [ %1907, %1880 ]
  %1962 = and i32 %1872, 12
  %1963 = icmp eq i32 %1962, 12
  br i1 %1963, label %2046, label %1964

; <label>:1964                                    ; preds = %1953
  %1965 = and i32 %1872, 2097184
  %1966 = icmp eq i32 %1965, 2097184
  %1967 = select i1 %1966, float %1463, float 0.000000e+00
  %1968 = and i32 %1872, 4194336
  %1969 = icmp eq i32 %1968, 4194336
  %1970 = select i1 %1969, float %1463, float 0.000000e+00
  %1971 = and i32 %1872, 8388640
  %1972 = icmp eq i32 %1971, 8388640
  %1973 = select i1 %1972, float %1463, float 0.000000e+00
  %1974 = and i32 %1872, 16384
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %1463, float 0.000000e+00
  %1977 = icmp eq i32 %1962, 0
  br i1 %1977, label %1978, label %1994

; <label>:1978                                    ; preds = %1964
  %1979 = fsub fast float %1764, %1152
  %1980 = fsub fast float %1765, %1153
  %1981 = fmul fast float %1967, %1979
  %1982 = fmul fast float %1967, %1980
  %1983 = fadd fast float %1981, %1152
  %1984 = fadd fast float %1982, %1153
  %1985 = fsub fast float %1766, %1163
  %1986 = fmul fast float %1970, %1985
  %1987 = fadd fast float %1986, %1163
  %1988 = fsub fast float %1763, %1162
  %1989 = fmul fast float %1973, %1988
  %1990 = fadd fast float %1989, %1162
  %1991 = fsub fast float %1842, %1164
  %1992 = fmul fast float %1976, %1991
  %1993 = fadd fast float %1992, %1164
  br label %2046

; <label>:1994                                    ; preds = %1964
  %1995 = icmp eq i32 %1962, 4
  br i1 %1995, label %1996, label %2030

; <label>:1996                                    ; preds = %1994
  %1997 = fmul fast float %1967, %1764
  %1998 = fmul fast float %1967, %1765
  %1999 = fadd fast float %1997, %1152
  %2000 = fadd fast float %1998, %1153
  %2001 = call float @dx.op.binary.f32(i32 36, float %1163, float %1766)  ; FMin(a,b)
  %2002 = fsub fast float %2001, %1163
  %2003 = fmul fast float %2002, %1970
  %2004 = fadd fast float %2003, %1163
  %2005 = fadd fast float %1763, %1162
  %2006 = fmul fast float %2005, 0x3FF337FAE0000000
  %2007 = fmul fast float %1162, %1162
  %2008 = fmul fast float %1763, %1763
  %2009 = fadd fast float %2008, %2007
  %2010 = fmul fast float %2009, 0x3FE5152B00000000
  %2011 = fmul fast float %1162, 0xBFCC1F85E0000000
  %2012 = fmul fast float %2011, %1763
  %2013 = fadd fast float %2012, 0xBFE1363700000000
  %2014 = fadd fast float %2013, %2006
  %2015 = fsub fast float %2014, %2010
  %2016 = fmul fast float %2005, 0x3FBA6F0D00000000
  %2017 = fmul fast float %2009, 0x3FD0432880000000
  %2018 = fmul fast float %1162, 0xBFEF110800000000
  %2019 = fmul fast float %2018, %1763
  %2020 = fadd fast float %2019, 1.000000e+00
  %2021 = fsub fast float %2020, %2016
  %2022 = fadd fast float %2021, %2017
  %2023 = fdiv fast float %2015, %2022
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fsub fast float %2024, %1162
  %2026 = fmul fast float %2025, %1973
  %2027 = fadd fast float %2026, %1162
  %2028 = fmul fast float %1976, %1842
  %2029 = fadd fast float %2028, %1164
  br label %2046

; <label>:2030                                    ; preds = %1994
  %2031 = icmp eq i32 %1962, 8
  br i1 %2031, label %2032, label %2046

; <label>:2032                                    ; preds = %2030
  %2033 = fmul fast float %1967, %1764
  %2034 = fmul fast float %1967, %1765
  %2035 = fadd fast float %2033, %1152
  %2036 = fadd fast float %2034, %1153
  %2037 = call float @dx.op.binary.f32(i32 36, float %1163, float %1766)  ; FMin(a,b)
  %2038 = fsub fast float %2037, %1163
  %2039 = fmul fast float %2038, %1970
  %2040 = fadd fast float %2039, %1163
  %2041 = fsub fast float %1763, %1162
  %2042 = fmul fast float %1973, %2041
  %2043 = fadd fast float %2042, %1162
  %2044 = fmul fast float %1976, %1842
  %2045 = fadd fast float %2044, %1164
  br label %2046

; <label>:2046                                    ; preds = %2032, %2030, %1996, %1978, %1953, %1462, %1166, %1151
  %2047 = phi float [ %1152, %1953 ], [ %1152, %1462 ], [ %1152, %1151 ], [ %2035, %2032 ], [ %1152, %2030 ], [ %1999, %1996 ], [ %1983, %1978 ], [ %1152, %1166 ]
  %2048 = phi float [ %1153, %1953 ], [ %1153, %1462 ], [ %1153, %1151 ], [ %2036, %2032 ], [ %1153, %2030 ], [ %2000, %1996 ], [ %1984, %1978 ], [ %1153, %1166 ]
  %2049 = phi float [ %1954, %1953 ], [ %1154, %1462 ], [ %1154, %1151 ], [ %1954, %2032 ], [ %1954, %2030 ], [ %1954, %1996 ], [ %1954, %1978 ], [ %1154, %1166 ]
  %2050 = phi float [ %1955, %1953 ], [ %1155, %1462 ], [ %1155, %1151 ], [ %1955, %2032 ], [ %1955, %2030 ], [ %1955, %1996 ], [ %1955, %1978 ], [ %1155, %1166 ]
  %2051 = phi float [ %1956, %1953 ], [ %1156, %1462 ], [ %1156, %1151 ], [ %1956, %2032 ], [ %1956, %2030 ], [ %1956, %1996 ], [ %1956, %1978 ], [ %1156, %1166 ]
  %2052 = phi float [ %1957, %1953 ], [ %1157, %1462 ], [ %1157, %1151 ], [ %1957, %2032 ], [ %1957, %2030 ], [ %1957, %1996 ], [ %1957, %1978 ], [ %1157, %1166 ]
  %2053 = phi float [ %1958, %1953 ], [ %1158, %1462 ], [ %1158, %1151 ], [ %1958, %2032 ], [ %1958, %2030 ], [ %1958, %1996 ], [ %1958, %1978 ], [ %1158, %1166 ]
  %2054 = phi float [ %1959, %1953 ], [ %1159, %1462 ], [ %1159, %1151 ], [ %1959, %2032 ], [ %1959, %2030 ], [ %1959, %1996 ], [ %1959, %1978 ], [ %1159, %1166 ]
  %2055 = phi float [ %1960, %1953 ], [ %1160, %1462 ], [ %1160, %1151 ], [ %1960, %2032 ], [ %1960, %2030 ], [ %1960, %1996 ], [ %1960, %1978 ], [ %1160, %1166 ]
  %2056 = phi float [ %1162, %1953 ], [ %1162, %1462 ], [ %1162, %1151 ], [ %2043, %2032 ], [ %1162, %2030 ], [ %2027, %1996 ], [ %1990, %1978 ], [ %1162, %1166 ]
  %2057 = phi float [ %1163, %1953 ], [ %1163, %1462 ], [ %1163, %1151 ], [ %2040, %2032 ], [ %1163, %2030 ], [ %2004, %1996 ], [ %1987, %1978 ], [ %1163, %1166 ]
  %2058 = phi float [ %1164, %1953 ], [ %1164, %1462 ], [ %1164, %1151 ], [ %2045, %2032 ], [ %1164, %2030 ], [ %2029, %1996 ], [ %1993, %1978 ], [ %1164, %1166 ]
  %2059 = phi float [ %1961, %1953 ], [ %1165, %1462 ], [ %1165, %1151 ], [ %1961, %2032 ], [ %1961, %2030 ], [ %1961, %1996 ], [ %1961, %1978 ], [ %1165, %1166 ]
  br i1 %408, label %2940, label %2060

; <label>:2060                                    ; preds = %2046
  %2061 = icmp ult i32 %464, 3
  %2062 = add i32 %54, 56
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %54, 60
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = or i32 %2067, %2064
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2940, label %2070

; <label>:2070                                    ; preds = %2060
  %2071 = and i32 %2064, 262144
  %2072 = icmp ne i32 %2071, 0
  %2073 = select i1 %2072, float %58, float 1.000000e+00
  %2074 = select i1 %2072, float %59, float 0.000000e+00
  %2075 = select i1 %2072, float %60, float 0.000000e+00
  %2076 = select i1 %2072, float %61, float 1.000000e+00
  %2077 = select i1 %2072, float %62, float %79
  %2078 = select i1 %2072, float %63, float %80
  %2079 = add i32 %54, 316
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 16
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = fmul fast float %2083, 0x3F50624DE0000000
  %2085 = add i32 %54, 120
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 16
  %2089 = and i32 %2088, 255
  %2090 = lshr i32 %2087, 24
  %2091 = add i32 %54, 324
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 65535
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = lshr i32 %2093, 16
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = add i32 %54, 64
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = lshr i32 %2100, 22
  %2102 = shl nuw nsw i32 %2101, 5
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = shl i32 %2100, 4
  %2105 = and i32 %2104, 32752
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = lshr i32 %2100, 7
  %2108 = and i32 %2107, 32752
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 3
  %2112 = fmul fast float %2111, 1.000000e+03
  %2113 = fmul fast float %358, %2112
  %2114 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2115 = fadd fast float %2114, %348
  %2116 = fmul fast float %359, %2112
  %2117 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2118 = fadd fast float %2117, %350
  %2119 = fmul fast float %2084, %2112
  %2120 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2121 = fmul fast float %2120, 0x401921FB60000000
  %2122 = fadd fast float %2121, %2103
  %2123 = call float @dx.op.unary.f32(i32 13, float %2122)  ; Sin(value)
  %2124 = call float @dx.op.unary.f32(i32 12, float %2122)  ; Cos(value)
  %2125 = fsub fast float -0.000000e+00, %2123
  %2126 = fadd fast float %2077, -5.000000e-01
  %2127 = fadd fast float %2078, -5.000000e-01
  %2128 = fmul fast float %2095, %2126
  %2129 = fmul fast float %2097, %2127
  %2130 = fadd fast float %2128, 5.000000e-01
  %2131 = fadd fast float %2129, 5.000000e-01
  %2132 = fmul fast float %2106, %2130
  %2133 = fmul fast float %2109, %2131
  %2134 = fmul fast float %2124, %2132
  %2135 = call float @dx.op.tertiary.f32(i32 46, float %2125, float %2133, float %2134)  ; FMad(a,b,c)
  %2136 = fmul fast float %2123, %2132
  %2137 = call float @dx.op.tertiary.f32(i32 46, float %2124, float %2133, float %2136)  ; FMad(a,b,c)
  %2138 = fadd fast float %2115, %2135
  %2139 = fadd fast float %2118, %2137
  %2140 = icmp ugt i32 %2089, 1
  %2141 = icmp ugt i32 %2087, 33554431
  %2142 = or i1 %2141, %2140
  br i1 %2142, label %2143, label %2168

; <label>:2143                                    ; preds = %2070
  %2144 = add i32 %54, 260
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = lshr i32 %2146, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = fmul fast float %2111, %2148
  %2150 = call float @dx.op.unary.f32(i32 22, float %2149)  ; Frc(value)
  %2151 = mul nuw nsw i32 %2089, %2090
  %2152 = uitofp i32 %2151 to float
  %2153 = fmul fast float %2150, %2152
  %2154 = call float @dx.op.unary.f32(i32 27, float %2153)  ; Round_ni(value)
  %2155 = fptoui float %2154 to i32
  %2156 = urem i32 %2155, %2089
  %2157 = udiv i32 %2155, %2090
  %2158 = call float @dx.op.unary.f32(i32 22, float %2138)  ; Frc(value)
  %2159 = call float @dx.op.unary.f32(i32 22, float %2139)  ; Frc(value)
  %2160 = uitofp i32 %2156 to float
  %2161 = uitofp i32 %2157 to float
  %2162 = fadd fast float %2158, %2160
  %2163 = fadd fast float %2159, %2161
  %2164 = uitofp i32 %2089 to float
  %2165 = uitofp i32 %2090 to float
  %2166 = fdiv fast float %2162, %2164
  %2167 = fdiv fast float %2163, %2165
  br label %2168

; <label>:2168                                    ; preds = %2143, %2070
  %2169 = phi float [ %2166, %2143 ], [ %2138, %2070 ]
  %2170 = phi float [ %2167, %2143 ], [ %2139, %2070 ]
  %2171 = and i32 %2064, 16777216
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2282, label %2173

; <label>:2173                                    ; preds = %2168
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2178 = fadd fast float %2175, %160
  %2179 = fadd fast float %2176, %161
  %2180 = fadd fast float %2177, %162
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = icmp eq i32 %55, 65535
  br i1 %2184, label %2279, label %2185

; <label>:2185                                    ; preds = %2173
  %2186 = lshr i32 %55, 1
  %2187 = shl i32 %2186, 2
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %55, 1
  %2191 = icmp ne i32 %2190, 0
  %2192 = lshr i32 %2189, 16
  %2193 = and i32 %2189, 65535
  %2194 = select i1 %2191, i32 %2192, i32 %2193
  %2195 = icmp eq i32 %2194, 65535
  br i1 %2195, label %2275, label %2196

; <label>:2196                                    ; preds = %2185
  %2197 = mul nuw nsw i32 %2194, 40
  %2198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = add nuw nsw i32 %2197, 12
  %2203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.ResRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.ResRet.f32 %2203, 2
  %2207 = add nuw nsw i32 %2197, 24
  %2208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.ResRet.f32 %2208, 2
  %2212 = add nuw nsw i32 %2197, 36
  %2213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = fsub fast float %2178, %2199
  %2216 = fsub fast float %2179, %2200
  %2217 = fsub fast float %2180, %2201
  %2218 = fmul fast float %2214, %2215
  %2219 = fmul fast float %2214, %2216
  %2220 = fmul fast float %2214, %2217
  %2221 = call float @dx.op.unary.f32(i32 27, float %2218)  ; Round_ni(value)
  %2222 = call float @dx.op.unary.f32(i32 27, float %2219)  ; Round_ni(value)
  %2223 = call float @dx.op.unary.f32(i32 27, float %2220)  ; Round_ni(value)
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = fmul fast float %2224, %2204
  %2228 = fmul fast float %2225, %2205
  %2229 = fmul fast float %2226, %2206
  %2230 = shl i32 %55, 2
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2236 = call float @dx.op.unary.f32(i32 22, float %2228)  ; Frc(value)
  %2237 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2234, %dx.types.Handle %49, float %2235, float %2236, float %2237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = fmul fast float %2239, 1.023000e+03
  %2243 = fmul fast float %2240, 1.023000e+03
  %2244 = fmul fast float %2241, 1.023000e+03
  %2245 = fadd fast float %2242, 5.000000e-01
  %2246 = fadd fast float %2243, 5.000000e-01
  %2247 = fadd fast float %2244, 5.000000e-01
  %2248 = call float @dx.op.unary.f32(i32 27, float %2245)  ; Round_ni(value)
  %2249 = call float @dx.op.unary.f32(i32 27, float %2246)  ; Round_ni(value)
  %2250 = call float @dx.op.unary.f32(i32 27, float %2247)  ; Round_ni(value)
  %2251 = fsub fast float %2218, %2221
  %2252 = fsub fast float %2219, %2222
  %2253 = fsub fast float %2220, %2223
  %2254 = fmul fast float %2251, 7.500000e-01
  %2255 = fmul fast float %2252, 7.500000e-01
  %2256 = fmul fast float %2253, 7.500000e-01
  %2257 = fadd fast float %2221, 1.250000e-01
  %2258 = fadd fast float %2257, %2254
  %2259 = fadd fast float %2258, %2248
  %2260 = fadd fast float %2222, 1.250000e-01
  %2261 = fadd fast float %2260, %2255
  %2262 = fadd fast float %2261, %2249
  %2263 = fadd fast float %2223, 1.250000e-01
  %2264 = fadd fast float %2263, %2256
  %2265 = fadd fast float %2264, %2250
  %2266 = fmul fast float %2259, %2209
  %2267 = fmul fast float %2262, %2210
  %2268 = fmul fast float %2265, %2211
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %2270, 0
  %2272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2272, %dx.types.Handle %47, float %2266, float %2267, float %2268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  br label %2275

; <label>:2275                                    ; preds = %2196, %2185
  %2276 = phi float [ %2274, %2196 ], [ -1.000000e+00, %2185 ]
  %2277 = fadd fast float %2276, %2183
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  br label %2279

; <label>:2279                                    ; preds = %2275, %2173
  %2280 = phi float [ %2278, %2275 ], [ %2183, %2173 ]
  %2281 = fmul fast float %2280, %460
  br label %2282

; <label>:2282                                    ; preds = %2279, %2168
  %2283 = phi float [ %2281, %2279 ], [ %460, %2168 ]
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 256
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2334, label %2288

; <label>:2288                                    ; preds = %2282
  %2289 = add i32 %54, 480
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %94, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = add i32 %54, 132
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = shl i32 %2298, 4
  %2300 = and i32 %2299, 32752
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = lshr i32 %2298, 7
  %2303 = and i32 %2302, 32752
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = fsub fast float 1.000000e+00, %2283
  %2306 = call float @dx.op.binary.f32(i32 35, float %2305, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2307 = bitcast float %2283 to i32
  %2308 = sitofp i32 %2307 to float
  %2309 = fadd fast float %2308, 0xC1CFBF8940000000
  %2310 = fmul fast float %2304, %2309
  %2311 = fadd fast float %2310, 0x41CFBF8940000000
  %2312 = fptosi float %2311 to i32
  %2313 = bitcast i32 %2312 to float
  %2314 = bitcast float %2306 to i32
  %2315 = sitofp i32 %2314 to float
  %2316 = fadd fast float %2315, 0xC1CFBF8940000000
  %2317 = fmul fast float %2316, %2304
  %2318 = fadd fast float %2317, 0x41CFBF8940000000
  %2319 = fptosi float %2318 to i32
  %2320 = bitcast i32 %2319 to float
  %2321 = fmul fast float %2313, %2301
  %2322 = fmul fast float %2320, %2301
  %2323 = fsub fast float %2306, %2321
  %2324 = fadd fast float %2322, %2306
  %2325 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2326 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2327 = fsub fast float %2295, %2325
  %2328 = fsub fast float %2326, %2325
  %2329 = bitcast float %2328 to i32
  %2330 = sub nsw i32 2129859010, %2329
  %2331 = bitcast i32 %2330 to float
  %2332 = fmul fast float %2331, %2327
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br label %2334

; <label>:2334                                    ; preds = %2288, %2282
  %2335 = phi float [ %2333, %2288 ], [ %2283, %2282 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 128
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2356, label %2340

; <label>:2340                                    ; preds = %2334
  %2341 = add i32 %54, 464
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2345, %dx.types.Handle %94, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 524288
  %2351 = icmp ne i32 %2350, 0
  %2352 = fcmp fast ogt float %2347, 0x3FE0101020000000
  %2353 = select i1 %2352, float 1.000000e+00, float 0.000000e+00
  %2354 = select i1 %2351, float %2353, float %2347
  %2355 = fmul fast float %2354, %2335
  br label %2356

; <label>:2356                                    ; preds = %2340, %2334
  %2357 = phi float [ %2355, %2340 ], [ %2335, %2334 ]
  %2358 = fcmp fast ult float %2357, 0x3F70101020000000
  br i1 %2358, label %2940, label %2359

; <label>:2359                                    ; preds = %2356
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 16
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2562, label %2364

; <label>:2364                                    ; preds = %2359
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = add i32 %54, 416
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = add i32 %2369, 0
  %2371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2371, %dx.types.Handle %93, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = extractvalue %dx.types.ResRet.f32 %2372, 3
  %2377 = and i32 %2366, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = lshr i32 %2366, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = fmul fast float %2376, %2378
  %2383 = fadd fast float %2382, %2381
  %2384 = fmul fast float %2383, 0x3F70101000000000
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 512
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2397, label %2389

; <label>:2389                                    ; preds = %2364
  %2390 = add i32 %54, 500
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %94, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  br label %2397

; <label>:2397                                    ; preds = %2389, %2364
  %2398 = phi float [ %2396, %2389 ], [ 1.000000e+00, %2364 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 33554432
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2509, label %2403

; <label>:2403                                    ; preds = %2397
  %2404 = add i32 %54, 256
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 65535
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2406, 16
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = add i32 %54, 260
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = lshr i32 %2417, 24
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = and i32 %2417, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = lshr i32 %2417, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = lshr i32 %2417, 16
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = add i32 %54, 252
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 24
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3F70101020000000
  %2438 = and i32 %2434, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = lshr i32 %2434, 8
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3F70101020000000
  %2445 = lshr i32 %2434, 16
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = fmul fast float %2447, 0x3F70101020000000
  %2449 = bitcast float %2373 to i32
  %2450 = ashr i32 %2449, 1
  %2451 = sub nsw i32 1597463174, %2450
  %2452 = bitcast i32 %2451 to float
  %2453 = fmul fast float %2373, 5.000000e-01
  %2454 = fmul fast float %2452, %2452
  %2455 = fmul fast float %2454, %2453
  %2456 = fsub fast float 1.500000e+00, %2455
  %2457 = fmul fast float %2452, %2373
  %2458 = fmul fast float %2457, %2456
  %2459 = bitcast float %2374 to i32
  %2460 = ashr i32 %2459, 1
  %2461 = sub nsw i32 1597463174, %2460
  %2462 = bitcast i32 %2461 to float
  %2463 = fmul fast float %2374, 5.000000e-01
  %2464 = fmul fast float %2462, %2462
  %2465 = fmul fast float %2464, %2463
  %2466 = fsub fast float 1.500000e+00, %2465
  %2467 = fmul fast float %2462, %2374
  %2468 = fmul fast float %2467, %2466
  %2469 = bitcast float %2375 to i32
  %2470 = ashr i32 %2469, 1
  %2471 = sub nsw i32 1597463174, %2470
  %2472 = bitcast i32 %2471 to float
  %2473 = fmul fast float %2375, 5.000000e-01
  %2474 = fmul fast float %2472, %2472
  %2475 = fmul fast float %2474, %2473
  %2476 = fsub fast float 1.500000e+00, %2475
  %2477 = fmul fast float %2472, %2375
  %2478 = fmul fast float %2477, %2476
  %2479 = fsub fast float %2458, %2440
  %2480 = fsub fast float %2468, %2444
  %2481 = fsub fast float %2478, %2448
  %2482 = fmul fast float %2479, %2408
  %2483 = fmul fast float %2480, %2410
  %2484 = fmul fast float %2481, %2415
  %2485 = fadd fast float %2482, %2423
  %2486 = fadd fast float %2483, %2427
  %2487 = fadd fast float %2484, %2431
  %2488 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2489 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2491 = fmul fast float %2488, %2488
  %2492 = fmul fast float %2489, %2489
  %2493 = fmul fast float %2490, %2490
  %2494 = fsub fast float %2491, %2373
  %2495 = fsub fast float %2492, %2374
  %2496 = fsub fast float %2493, %2375
  %2497 = fmul fast float %2494, %2398
  %2498 = fmul fast float %2495, %2398
  %2499 = fmul fast float %2496, %2398
  %2500 = fadd fast float %2497, %2373
  %2501 = fadd fast float %2498, %2374
  %2502 = fadd fast float %2499, %2375
  %2503 = fadd fast float %2420, %2384
  %2504 = fsub fast float %2503, %2437
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fsub fast float %2505, %2384
  %2507 = fmul fast float %2506, %2398
  %2508 = fadd fast float %2507, %2384
  br label %2562

; <label>:2509                                    ; preds = %2397
  %2510 = and i32 %2400, 134217728
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2546, label %2512

; <label>:2512                                    ; preds = %2509
  %2513 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2514 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2515 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fadd fast float %2514, -5.000000e-01
  %2518 = fadd fast float %2515, -5.000000e-01
  %2519 = fmul fast float %2516, %2398
  %2520 = fmul fast float %2517, %2398
  %2521 = fmul fast float %2518, %2398
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = fadd fast float %2520, 5.000000e-01
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2374)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %2375)  ; Sqrt(value)
  %2528 = fmul fast float %2522, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2525
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2525
  %2533 = fmul fast float %2523, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2526
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2526
  %2538 = fmul fast float %2524, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2527
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2527
  %2543 = fmul fast float %2532, %2532
  %2544 = fmul fast float %2537, %2537
  %2545 = fmul fast float %2542, %2542
  br label %2562

; <label>:2546                                    ; preds = %2509
  %2547 = fmul fast float %335, %335
  %2548 = fmul fast float %339, %339
  %2549 = fmul fast float %343, %343
  %2550 = fadd fast float %2547, -1.000000e+00
  %2551 = fadd fast float %2548, -1.000000e+00
  %2552 = fadd fast float %2549, -1.000000e+00
  %2553 = fmul fast float %2398, %2550
  %2554 = fmul fast float %2398, %2551
  %2555 = fmul fast float %2398, %2552
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fmul fast float %2556, %2373
  %2560 = fmul fast float %2557, %2374
  %2561 = fmul fast float %2558, %2375
  br label %2562

; <label>:2562                                    ; preds = %2546, %2512, %2403, %2359
  %2563 = phi float [ %2508, %2403 ], [ %2384, %2512 ], [ %2384, %2546 ], [ 0x3FA23C0BE0000000, %2359 ]
  %2564 = phi float [ %2500, %2403 ], [ %2543, %2512 ], [ %2559, %2546 ], [ 1.000000e+00, %2359 ]
  %2565 = phi float [ %2501, %2403 ], [ %2544, %2512 ], [ %2560, %2546 ], [ 1.000000e+00, %2359 ]
  %2566 = phi float [ %2502, %2403 ], [ %2545, %2512 ], [ %2561, %2546 ], [ 1.000000e+00, %2359 ]
  %2567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.i32 %2567, 1
  %2569 = and i32 %2568, 1
  %2570 = icmp ne i32 %2569, 0
  %2571 = add i32 %54, 356
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 32
  %2575 = icmp ne i32 %2574, 0
  %2576 = and i1 %2570, %2575
  %2577 = select i1 %2576, float 1.000000e+00, float %2564
  %2578 = select i1 %2576, float 0x3FD3333340000000, float %2565
  %2579 = select i1 %2576, float 0x3FD3333340000000, float %2566
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 32
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2656, label %2584

; <label>:2584                                    ; preds = %2562
  %2585 = add i32 %54, 124
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = add i32 %54, 432
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %93, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = and i32 %2587, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = lshr i32 %2587, 8
  %2601 = and i32 %2600, 255
  %2602 = uitofp i32 %2601 to float
  %2603 = lshr i32 %2587, 16
  %2604 = and i32 %2603, 255
  %2605 = uitofp i32 %2604 to float
  %2606 = fmul fast float %2605, 0x3F70101000000000
  %2607 = fmul fast float %2594, %2599
  %2608 = fadd fast float %2607, %2602
  %2609 = fmul fast float %2608, 0x3F70101000000000
  %2610 = fadd fast float %2595, -5.000000e-01
  %2611 = fadd fast float %2597, -5.000000e-01
  %2612 = fmul fast float %2610, %2606
  %2613 = fmul fast float %2611, %2606
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fmul fast float %2614, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = fmul fast float %2615, 2.000000e+00
  %2619 = fadd fast float %2618, -1.000000e+00
  %2620 = fadd fast float %2617, %2619
  %2621 = fmul fast float %2620, 5.000000e-01
  %2622 = fsub fast float %2617, %2619
  %2623 = fmul fast float %2622, 5.000000e-01
  %2624 = call float @dx.op.unary.f32(i32 6, float %2621)  ; FAbs(value)
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = call float @dx.op.unary.f32(i32 6, float %2623)  ; FAbs(value)
  %2627 = fsub fast float %2625, %2626
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2621, float %2623, float %2627, float %2621, float %2623, float %2627)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = call float @dx.op.unary.f32(i32 25, float %2628)  ; Rsqrt(value)
  %2630 = fmul fast float %2621, %2629
  %2631 = fmul fast float %2623, %2629
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 67108864
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2652, label %2636

; <label>:2636                                    ; preds = %2584
  %2637 = add i32 %54, 312
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 65535
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 65535
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = lshr i32 %2639, 16
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fsub fast float %2609, %2647
  %2649 = fmul fast float %2648, %2641
  %2650 = fadd fast float %2649, %2645
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  br label %2652

; <label>:2652                                    ; preds = %2636, %2584
  %2653 = phi float [ %2651, %2636 ], [ %2609, %2584 ]
  %2654 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2073, float %2074)  ; Dot2(ax,ay,bx,by)
  %2655 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2075, float %2076)  ; Dot2(ax,ay,bx,by)
  br label %2656

; <label>:2656                                    ; preds = %2652, %2562
  %2657 = phi float [ %2653, %2652 ], [ 0x3FD6666660000000, %2562 ]
  %2658 = phi float [ %2654, %2652 ], [ 0.000000e+00, %2562 ]
  %2659 = phi float [ %2655, %2652 ], [ 0.000000e+00, %2562 ]
  %2660 = phi float [ %2596, %2652 ], [ 1.000000e+00, %2562 ]
  %2661 = add i32 %54, 192
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 22
  %2665 = shl nuw nsw i32 %2664, 5
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 64
  %2670 = icmp eq i32 %2669, 0
  br i1 %2670, label %2704, label %2671

; <label>:2671                                    ; preds = %2656
  %2672 = add i32 %54, 448
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = add i32 %2674, 0
  %2676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 131072
  %2680 = icmp eq i32 %2679, 0
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2676, %dx.types.Handle %93, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = fmul fast float %2682, %323
  %2686 = fmul fast float %2683, %326
  %2687 = fmul fast float %2684, %329
  br i1 %2680, label %2694, label %2688

; <label>:2688                                    ; preds = %2671
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = fmul fast float %2690, %2685
  %2692 = fmul fast float %2690, %2686
  %2693 = fmul fast float %2690, %2687
  br label %2694

; <label>:2694                                    ; preds = %2688, %2671
  %2695 = phi float [ %2691, %2688 ], [ %2685, %2671 ]
  %2696 = phi float [ %2692, %2688 ], [ %2686, %2671 ]
  %2697 = phi float [ %2693, %2688 ], [ %2687, %2671 ]
  %2698 = fmul fast float %2695, %2666
  %2699 = select i1 %222, float %2698, float %2695
  %2700 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2696, float %2697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2701 = select i1 %222, float 0.000000e+00, float %2695
  %2702 = select i1 %222, float %2700, float %2696
  %2703 = select i1 %222, float 0.000000e+00, float %2697
  br label %2704

; <label>:2704                                    ; preds = %2694, %2656
  %2705 = phi float [ %2701, %2694 ], [ 0.000000e+00, %2656 ]
  %2706 = phi float [ %2702, %2694 ], [ 0.000000e+00, %2656 ]
  %2707 = phi float [ %2703, %2694 ], [ 0.000000e+00, %2656 ]
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 26624
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2735, label %2712

; <label>:2712                                    ; preds = %2704
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 16384
  %2716 = icmp eq i32 %2715, 0
  br i1 %2716, label %2735, label %2717

; <label>:2717                                    ; preds = %2712
  %2718 = and i32 %2714, 1048576
  %2719 = icmp ne i32 %2718, 0
  %2720 = add i32 %54, 516
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = add i32 %2722, 0
  %2724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2724, %dx.types.Handle %94, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = add i32 %54, 128
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = lshr i32 %2729, 24
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2726, 0x3F70101020000000
  %2733 = select i1 %2719, float 0x3F70101020000000, float %2732
  %2734 = fmul fast float %2733, %2731
  br label %2735

; <label>:2735                                    ; preds = %2717, %2712, %2704
  %2736 = phi float [ %2734, %2717 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2704 ]
  %2737 = add i32 %54, 128
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = and i32 %2739, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = lshr i32 %2739, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2578, float %2579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = fmul fast float %2744, %2745
  %2747 = fadd fast float %2746, %2741
  %2748 = fmul fast float %2747, 0x3F70101020000000
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  br i1 %2061, label %2750, label %2758

; <label>:2750                                    ; preds = %2735
  %2751 = fsub fast float 1.000000e+00, %2357
  %2752 = fmul fast float %2751, %2049
  %2753 = fmul fast float %2751, %2050
  %2754 = fmul fast float %2751, %2051
  %2755 = fmul fast float %2751, %2052
  %2756 = fmul fast float %2751, %2053
  %2757 = fmul fast float %2751, %2054
  br label %2758

; <label>:2758                                    ; preds = %2750, %2735
  %2759 = phi float [ %2752, %2750 ], [ %2049, %2735 ]
  %2760 = phi float [ %2753, %2750 ], [ %2050, %2735 ]
  %2761 = phi float [ %2754, %2750 ], [ %2051, %2735 ]
  %2762 = phi float [ %2755, %2750 ], [ %2052, %2735 ]
  %2763 = phi float [ %2756, %2750 ], [ %2053, %2735 ]
  %2764 = phi float [ %2757, %2750 ], [ %2054, %2735 ]
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 3
  %2768 = icmp eq i32 %2767, 3
  br i1 %2768, label %2847, label %2769

; <label>:2769                                    ; preds = %2758
  %2770 = and i32 %2766, 16
  %2771 = icmp ne i32 %2770, 0
  %2772 = select i1 %2771, float %2357, float 0.000000e+00
  %2773 = icmp eq i32 %2767, 0
  br i1 %2773, label %2774, label %2802

; <label>:2774                                    ; preds = %2769
  %2775 = and i32 %2766, 64
  %2776 = icmp ne i32 %2775, 0
  %2777 = select i1 %2776, float %2357, float 0.000000e+00
  %2778 = fsub fast float %2577, %2759
  %2779 = fsub fast float %2578, %2760
  %2780 = fsub fast float %2579, %2761
  %2781 = fmul fast float %2772, %2778
  %2782 = fmul fast float %2772, %2779
  %2783 = fmul fast float %2772, %2780
  %2784 = fadd fast float %2781, %2759
  %2785 = fadd fast float %2782, %2760
  %2786 = fadd fast float %2783, %2761
  %2787 = fsub fast float %2563, %2055
  %2788 = fmul fast float %2772, %2787
  %2789 = fadd fast float %2788, %2055
  %2790 = fsub fast float %2705, %2762
  %2791 = fsub fast float %2706, %2763
  %2792 = fsub fast float %2707, %2764
  %2793 = fmul fast float %2777, %2790
  %2794 = fmul fast float %2777, %2791
  %2795 = fmul fast float %2777, %2792
  %2796 = fadd fast float %2793, %2762
  %2797 = fadd fast float %2794, %2763
  %2798 = fadd fast float %2795, %2764
  %2799 = fsub fast float %2749, %2059
  %2800 = fmul fast float %2772, %2799
  %2801 = fadd fast float %2800, %2059
  br label %2847

; <label>:2802                                    ; preds = %2769
  %2803 = icmp eq i32 %2767, 1
  br i1 %2803, label %2804, label %2817

; <label>:2804                                    ; preds = %2802
  %2805 = fadd fast float %2577, -1.000000e+00
  %2806 = fadd fast float %2578, -1.000000e+00
  %2807 = fadd fast float %2579, -1.000000e+00
  %2808 = fmul fast float %2772, %2805
  %2809 = fmul fast float %2772, %2806
  %2810 = fmul fast float %2772, %2807
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2759
  %2815 = fmul fast float %2812, %2760
  %2816 = fmul fast float %2813, %2761
  br label %2847

; <label>:2817                                    ; preds = %2802
  %2818 = icmp eq i32 %2767, 2
  br i1 %2818, label %2819, label %2847

; <label>:2819                                    ; preds = %2817
  %2820 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2821 = call float @dx.op.unary.f32(i32 24, float %2578)  ; Sqrt(value)
  %2822 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2823 = fadd fast float %2820, -5.000000e-01
  %2824 = fadd fast float %2821, -5.000000e-01
  %2825 = fadd fast float %2822, -5.000000e-01
  %2826 = fmul fast float %2823, %2772
  %2827 = fmul fast float %2824, %2772
  %2828 = fmul fast float %2825, %2772
  %2829 = fadd fast float %2826, 5.000000e-01
  %2830 = fadd fast float %2827, 5.000000e-01
  %2831 = fadd fast float %2828, 5.000000e-01
  %2832 = fmul fast float %2829, 2.000000e+00
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fmul fast float %2833, %2759
  %2835 = fadd fast float %2834, %2832
  %2836 = fmul fast float %2835, %2759
  %2837 = fmul fast float %2830, 2.000000e+00
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2838, %2760
  %2840 = fadd fast float %2839, %2837
  %2841 = fmul fast float %2840, %2760
  %2842 = fmul fast float %2831, 2.000000e+00
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %2843, %2761
  %2845 = fadd fast float %2844, %2842
  %2846 = fmul fast float %2845, %2761
  br label %2847

; <label>:2847                                    ; preds = %2819, %2817, %2804, %2774, %2758
  %2848 = phi float [ %2759, %2758 ], [ %2836, %2819 ], [ %2759, %2817 ], [ %2814, %2804 ], [ %2784, %2774 ]
  %2849 = phi float [ %2760, %2758 ], [ %2841, %2819 ], [ %2760, %2817 ], [ %2815, %2804 ], [ %2785, %2774 ]
  %2850 = phi float [ %2761, %2758 ], [ %2846, %2819 ], [ %2761, %2817 ], [ %2816, %2804 ], [ %2786, %2774 ]
  %2851 = phi float [ %2762, %2758 ], [ %2762, %2819 ], [ %2762, %2817 ], [ %2762, %2804 ], [ %2796, %2774 ]
  %2852 = phi float [ %2763, %2758 ], [ %2763, %2819 ], [ %2763, %2817 ], [ %2763, %2804 ], [ %2797, %2774 ]
  %2853 = phi float [ %2764, %2758 ], [ %2764, %2819 ], [ %2764, %2817 ], [ %2764, %2804 ], [ %2798, %2774 ]
  %2854 = phi float [ %2055, %2758 ], [ %2055, %2819 ], [ %2055, %2817 ], [ %2055, %2804 ], [ %2789, %2774 ]
  %2855 = phi float [ %2059, %2758 ], [ %2059, %2819 ], [ %2059, %2817 ], [ %2059, %2804 ], [ %2801, %2774 ]
  %2856 = and i32 %2766, 12
  %2857 = icmp eq i32 %2856, 12
  br i1 %2857, label %2940, label %2858

; <label>:2858                                    ; preds = %2847
  %2859 = and i32 %2766, 2097184
  %2860 = icmp eq i32 %2859, 2097184
  %2861 = select i1 %2860, float %2357, float 0.000000e+00
  %2862 = and i32 %2766, 4194336
  %2863 = icmp eq i32 %2862, 4194336
  %2864 = select i1 %2863, float %2357, float 0.000000e+00
  %2865 = and i32 %2766, 8388640
  %2866 = icmp eq i32 %2865, 8388640
  %2867 = select i1 %2866, float %2357, float 0.000000e+00
  %2868 = and i32 %2766, 16384
  %2869 = icmp ne i32 %2868, 0
  %2870 = select i1 %2869, float %2357, float 0.000000e+00
  %2871 = icmp eq i32 %2856, 0
  br i1 %2871, label %2872, label %2888

; <label>:2872                                    ; preds = %2858
  %2873 = fsub fast float %2658, %2047
  %2874 = fsub fast float %2659, %2048
  %2875 = fmul fast float %2861, %2873
  %2876 = fmul fast float %2861, %2874
  %2877 = fadd fast float %2875, %2047
  %2878 = fadd fast float %2876, %2048
  %2879 = fsub fast float %2660, %2057
  %2880 = fmul fast float %2864, %2879
  %2881 = fadd fast float %2880, %2057
  %2882 = fsub fast float %2657, %2056
  %2883 = fmul fast float %2867, %2882
  %2884 = fadd fast float %2883, %2056
  %2885 = fsub fast float %2736, %2058
  %2886 = fmul fast float %2870, %2885
  %2887 = fadd fast float %2886, %2058
  br label %2940

; <label>:2888                                    ; preds = %2858
  %2889 = icmp eq i32 %2856, 4
  br i1 %2889, label %2890, label %2924

; <label>:2890                                    ; preds = %2888
  %2891 = fmul fast float %2861, %2658
  %2892 = fmul fast float %2861, %2659
  %2893 = fadd fast float %2891, %2047
  %2894 = fadd fast float %2892, %2048
  %2895 = call float @dx.op.binary.f32(i32 36, float %2057, float %2660)  ; FMin(a,b)
  %2896 = fsub fast float %2895, %2057
  %2897 = fmul fast float %2896, %2864
  %2898 = fadd fast float %2897, %2057
  %2899 = fadd fast float %2657, %2056
  %2900 = fmul fast float %2899, 0x3FF337FAE0000000
  %2901 = fmul fast float %2056, %2056
  %2902 = fmul fast float %2657, %2657
  %2903 = fadd fast float %2902, %2901
  %2904 = fmul fast float %2903, 0x3FE5152B00000000
  %2905 = fmul fast float %2056, 0xBFCC1F85E0000000
  %2906 = fmul fast float %2905, %2657
  %2907 = fadd fast float %2906, 0xBFE1363700000000
  %2908 = fadd fast float %2907, %2900
  %2909 = fsub fast float %2908, %2904
  %2910 = fmul fast float %2899, 0x3FBA6F0D00000000
  %2911 = fmul fast float %2903, 0x3FD0432880000000
  %2912 = fmul fast float %2056, 0xBFEF110800000000
  %2913 = fmul fast float %2912, %2657
  %2914 = fadd fast float %2913, 1.000000e+00
  %2915 = fsub fast float %2914, %2910
  %2916 = fadd fast float %2915, %2911
  %2917 = fdiv fast float %2909, %2916
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2919 = fsub fast float %2918, %2056
  %2920 = fmul fast float %2919, %2867
  %2921 = fadd fast float %2920, %2056
  %2922 = fmul fast float %2870, %2736
  %2923 = fadd fast float %2922, %2058
  br label %2940

; <label>:2924                                    ; preds = %2888
  %2925 = icmp eq i32 %2856, 8
  br i1 %2925, label %2926, label %2940

; <label>:2926                                    ; preds = %2924
  %2927 = fmul fast float %2861, %2658
  %2928 = fmul fast float %2861, %2659
  %2929 = fadd fast float %2927, %2047
  %2930 = fadd fast float %2928, %2048
  %2931 = call float @dx.op.binary.f32(i32 36, float %2057, float %2660)  ; FMin(a,b)
  %2932 = fsub fast float %2931, %2057
  %2933 = fmul fast float %2932, %2864
  %2934 = fadd fast float %2933, %2057
  %2935 = fsub fast float %2657, %2056
  %2936 = fmul fast float %2867, %2935
  %2937 = fadd fast float %2936, %2056
  %2938 = fmul fast float %2870, %2736
  %2939 = fadd fast float %2938, %2058
  br label %2940

; <label>:2940                                    ; preds = %2926, %2924, %2890, %2872, %2847, %2356, %2060, %2046
  %2941 = phi float [ %2047, %2847 ], [ %2047, %2356 ], [ %2047, %2046 ], [ %2929, %2926 ], [ %2047, %2924 ], [ %2893, %2890 ], [ %2877, %2872 ], [ %2047, %2060 ]
  %2942 = phi float [ %2048, %2847 ], [ %2048, %2356 ], [ %2048, %2046 ], [ %2930, %2926 ], [ %2048, %2924 ], [ %2894, %2890 ], [ %2878, %2872 ], [ %2048, %2060 ]
  %2943 = phi float [ %2848, %2847 ], [ %2049, %2356 ], [ %2049, %2046 ], [ %2848, %2926 ], [ %2848, %2924 ], [ %2848, %2890 ], [ %2848, %2872 ], [ %2049, %2060 ]
  %2944 = phi float [ %2849, %2847 ], [ %2050, %2356 ], [ %2050, %2046 ], [ %2849, %2926 ], [ %2849, %2924 ], [ %2849, %2890 ], [ %2849, %2872 ], [ %2050, %2060 ]
  %2945 = phi float [ %2850, %2847 ], [ %2051, %2356 ], [ %2051, %2046 ], [ %2850, %2926 ], [ %2850, %2924 ], [ %2850, %2890 ], [ %2850, %2872 ], [ %2051, %2060 ]
  %2946 = phi float [ %2851, %2847 ], [ %2052, %2356 ], [ %2052, %2046 ], [ %2851, %2926 ], [ %2851, %2924 ], [ %2851, %2890 ], [ %2851, %2872 ], [ %2052, %2060 ]
  %2947 = phi float [ %2852, %2847 ], [ %2053, %2356 ], [ %2053, %2046 ], [ %2852, %2926 ], [ %2852, %2924 ], [ %2852, %2890 ], [ %2852, %2872 ], [ %2053, %2060 ]
  %2948 = phi float [ %2853, %2847 ], [ %2054, %2356 ], [ %2054, %2046 ], [ %2853, %2926 ], [ %2853, %2924 ], [ %2853, %2890 ], [ %2853, %2872 ], [ %2054, %2060 ]
  %2949 = phi float [ %2854, %2847 ], [ %2055, %2356 ], [ %2055, %2046 ], [ %2854, %2926 ], [ %2854, %2924 ], [ %2854, %2890 ], [ %2854, %2872 ], [ %2055, %2060 ]
  %2950 = phi float [ %2056, %2847 ], [ %2056, %2356 ], [ %2056, %2046 ], [ %2937, %2926 ], [ %2056, %2924 ], [ %2921, %2890 ], [ %2884, %2872 ], [ %2056, %2060 ]
  %2951 = phi float [ %2057, %2847 ], [ %2057, %2356 ], [ %2057, %2046 ], [ %2934, %2926 ], [ %2057, %2924 ], [ %2898, %2890 ], [ %2881, %2872 ], [ %2057, %2060 ]
  %2952 = phi float [ %2058, %2847 ], [ %2058, %2356 ], [ %2058, %2046 ], [ %2939, %2926 ], [ %2058, %2924 ], [ %2923, %2890 ], [ %2887, %2872 ], [ %2058, %2060 ]
  %2953 = phi float [ %2855, %2847 ], [ %2059, %2356 ], [ %2059, %2046 ], [ %2855, %2926 ], [ %2855, %2924 ], [ %2855, %2890 ], [ %2855, %2872 ], [ %2059, %2060 ]
  br i1 %410, label %3834, label %2954

; <label>:2954                                    ; preds = %2940
  %2955 = icmp ult i32 %464, 4
  %2956 = add i32 %54, 72
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = add i32 %54, 76
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = or i32 %2961, %2958
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3834, label %2964

; <label>:2964                                    ; preds = %2954
  %2965 = and i32 %2958, 262144
  %2966 = icmp ne i32 %2965, 0
  %2967 = select i1 %2966, float %58, float 1.000000e+00
  %2968 = select i1 %2966, float %59, float 0.000000e+00
  %2969 = select i1 %2966, float %60, float 0.000000e+00
  %2970 = select i1 %2966, float %61, float 1.000000e+00
  %2971 = select i1 %2966, float %62, float %79
  %2972 = select i1 %2966, float %63, float %80
  %2973 = add i32 %54, 332
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = lshr i32 %2975, 16
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = fmul fast float %2977, 0x3F50624DE0000000
  %2979 = add i32 %54, 136
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = lshr i32 %2981, 16
  %2983 = and i32 %2982, 255
  %2984 = lshr i32 %2981, 24
  %2985 = add i32 %54, 340
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 65535
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = lshr i32 %2987, 16
  %2991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2990)  ; LegacyF16ToF32(value)
  %2992 = add i32 %54, 80
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = lshr i32 %2994, 22
  %2996 = shl nuw nsw i32 %2995, 5
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = shl i32 %2994, 4
  %2999 = and i32 %2998, 32752
  %3000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2999)  ; LegacyF16ToF32(value)
  %3001 = lshr i32 %2994, 7
  %3002 = and i32 %3001, 32752
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 3
  %3006 = fmul fast float %3005, 1.000000e+03
  %3007 = fmul fast float %400, %3006
  %3008 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3009 = fadd fast float %3008, %390
  %3010 = fmul fast float %401, %3006
  %3011 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3012 = fadd fast float %3011, %392
  %3013 = fmul fast float %2978, %3006
  %3014 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3015 = fmul fast float %3014, 0x401921FB60000000
  %3016 = fadd fast float %3015, %2997
  %3017 = call float @dx.op.unary.f32(i32 13, float %3016)  ; Sin(value)
  %3018 = call float @dx.op.unary.f32(i32 12, float %3016)  ; Cos(value)
  %3019 = fsub fast float -0.000000e+00, %3017
  %3020 = fadd fast float %2971, -5.000000e-01
  %3021 = fadd fast float %2972, -5.000000e-01
  %3022 = fmul fast float %2989, %3020
  %3023 = fmul fast float %2991, %3021
  %3024 = fadd fast float %3022, 5.000000e-01
  %3025 = fadd fast float %3023, 5.000000e-01
  %3026 = fmul fast float %3000, %3024
  %3027 = fmul fast float %3003, %3025
  %3028 = fmul fast float %3018, %3026
  %3029 = call float @dx.op.tertiary.f32(i32 46, float %3019, float %3027, float %3028)  ; FMad(a,b,c)
  %3030 = fmul fast float %3017, %3026
  %3031 = call float @dx.op.tertiary.f32(i32 46, float %3018, float %3027, float %3030)  ; FMad(a,b,c)
  %3032 = fadd fast float %3009, %3029
  %3033 = fadd fast float %3012, %3031
  %3034 = icmp ugt i32 %2983, 1
  %3035 = icmp ugt i32 %2981, 33554431
  %3036 = or i1 %3035, %3034
  br i1 %3036, label %3037, label %3062

; <label>:3037                                    ; preds = %2964
  %3038 = add i32 %54, 276
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = lshr i32 %3040, 16
  %3042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3041)  ; LegacyF16ToF32(value)
  %3043 = fmul fast float %3005, %3042
  %3044 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3045 = mul nuw nsw i32 %2983, %2984
  %3046 = uitofp i32 %3045 to float
  %3047 = fmul fast float %3044, %3046
  %3048 = call float @dx.op.unary.f32(i32 27, float %3047)  ; Round_ni(value)
  %3049 = fptoui float %3048 to i32
  %3050 = urem i32 %3049, %2983
  %3051 = udiv i32 %3049, %2984
  %3052 = call float @dx.op.unary.f32(i32 22, float %3032)  ; Frc(value)
  %3053 = call float @dx.op.unary.f32(i32 22, float %3033)  ; Frc(value)
  %3054 = uitofp i32 %3050 to float
  %3055 = uitofp i32 %3051 to float
  %3056 = fadd fast float %3052, %3054
  %3057 = fadd fast float %3053, %3055
  %3058 = uitofp i32 %2983 to float
  %3059 = uitofp i32 %2984 to float
  %3060 = fdiv fast float %3056, %3058
  %3061 = fdiv fast float %3057, %3059
  br label %3062

; <label>:3062                                    ; preds = %3037, %2964
  %3063 = phi float [ %3060, %3037 ], [ %3032, %2964 ]
  %3064 = phi float [ %3061, %3037 ], [ %3033, %2964 ]
  %3065 = and i32 %2958, 16777216
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3176, label %3067

; <label>:3067                                    ; preds = %3062
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.CBufRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.CBufRet.f32 %3068, 2
  %3072 = fadd fast float %3069, %160
  %3073 = fadd fast float %3070, %161
  %3074 = fadd fast float %3071, %162
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3078 = icmp eq i32 %55, 65535
  br i1 %3078, label %3173, label %3079

; <label>:3079                                    ; preds = %3067
  %3080 = lshr i32 %55, 1
  %3081 = shl i32 %3080, 2
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = and i32 %55, 1
  %3085 = icmp ne i32 %3084, 0
  %3086 = lshr i32 %3083, 16
  %3087 = and i32 %3083, 65535
  %3088 = select i1 %3085, i32 %3086, i32 %3087
  %3089 = icmp eq i32 %3088, 65535
  br i1 %3089, label %3169, label %3090

; <label>:3090                                    ; preds = %3079
  %3091 = mul nuw nsw i32 %3088, 40
  %3092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.f32 %3092, 0
  %3094 = extractvalue %dx.types.ResRet.f32 %3092, 1
  %3095 = extractvalue %dx.types.ResRet.f32 %3092, 2
  %3096 = add nuw nsw i32 %3091, 12
  %3097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.ResRet.f32 %3097, 2
  %3101 = add nuw nsw i32 %3091, 24
  %3102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.ResRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.ResRet.f32 %3102, 2
  %3106 = add nuw nsw i32 %3091, 36
  %3107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.f32 %3107, 0
  %3109 = fsub fast float %3072, %3093
  %3110 = fsub fast float %3073, %3094
  %3111 = fsub fast float %3074, %3095
  %3112 = fmul fast float %3108, %3109
  %3113 = fmul fast float %3108, %3110
  %3114 = fmul fast float %3108, %3111
  %3115 = call float @dx.op.unary.f32(i32 27, float %3112)  ; Round_ni(value)
  %3116 = call float @dx.op.unary.f32(i32 27, float %3113)  ; Round_ni(value)
  %3117 = call float @dx.op.unary.f32(i32 27, float %3114)  ; Round_ni(value)
  %3118 = fadd fast float %3115, 5.000000e-01
  %3119 = fadd fast float %3116, 5.000000e-01
  %3120 = fadd fast float %3117, 5.000000e-01
  %3121 = fmul fast float %3118, %3098
  %3122 = fmul fast float %3119, %3099
  %3123 = fmul fast float %3120, %3100
  %3124 = shl i32 %55, 2
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %3126, 0
  %3128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3129 = call float @dx.op.unary.f32(i32 22, float %3121)  ; Frc(value)
  %3130 = call float @dx.op.unary.f32(i32 22, float %3122)  ; Frc(value)
  %3131 = call float @dx.op.unary.f32(i32 22, float %3123)  ; Frc(value)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3128, %dx.types.Handle %49, float %3129, float %3130, float %3131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = extractvalue %dx.types.ResRet.f32 %3132, 1
  %3135 = extractvalue %dx.types.ResRet.f32 %3132, 2
  %3136 = fmul fast float %3133, 1.023000e+03
  %3137 = fmul fast float %3134, 1.023000e+03
  %3138 = fmul fast float %3135, 1.023000e+03
  %3139 = fadd fast float %3136, 5.000000e-01
  %3140 = fadd fast float %3137, 5.000000e-01
  %3141 = fadd fast float %3138, 5.000000e-01
  %3142 = call float @dx.op.unary.f32(i32 27, float %3139)  ; Round_ni(value)
  %3143 = call float @dx.op.unary.f32(i32 27, float %3140)  ; Round_ni(value)
  %3144 = call float @dx.op.unary.f32(i32 27, float %3141)  ; Round_ni(value)
  %3145 = fsub fast float %3112, %3115
  %3146 = fsub fast float %3113, %3116
  %3147 = fsub fast float %3114, %3117
  %3148 = fmul fast float %3145, 7.500000e-01
  %3149 = fmul fast float %3146, 7.500000e-01
  %3150 = fmul fast float %3147, 7.500000e-01
  %3151 = fadd fast float %3115, 1.250000e-01
  %3152 = fadd fast float %3151, %3148
  %3153 = fadd fast float %3152, %3142
  %3154 = fadd fast float %3116, 1.250000e-01
  %3155 = fadd fast float %3154, %3149
  %3156 = fadd fast float %3155, %3143
  %3157 = fadd fast float %3117, 1.250000e-01
  %3158 = fadd fast float %3157, %3150
  %3159 = fadd fast float %3158, %3144
  %3160 = fmul fast float %3153, %3103
  %3161 = fmul fast float %3156, %3104
  %3162 = fmul fast float %3159, %3105
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3166, %dx.types.Handle %47, float %3160, float %3161, float %3162, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  br label %3169

; <label>:3169                                    ; preds = %3090, %3079
  %3170 = phi float [ %3168, %3090 ], [ -1.000000e+00, %3079 ]
  %3171 = fadd fast float %3170, %3077
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  br label %3173

; <label>:3173                                    ; preds = %3169, %3067
  %3174 = phi float [ %3172, %3169 ], [ %3077, %3067 ]
  %3175 = fmul fast float %3174, %459
  br label %3176

; <label>:3176                                    ; preds = %3173, %3062
  %3177 = phi float [ %3175, %3173 ], [ %459, %3062 ]
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 256
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3228, label %3182

; <label>:3182                                    ; preds = %3176
  %3183 = add i32 %54, 484
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %3185, 0
  %3187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3187, %dx.types.Handle %94, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = add i32 %54, 148
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = shl i32 %3192, 4
  %3194 = and i32 %3193, 32752
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = lshr i32 %3192, 7
  %3197 = and i32 %3196, 32752
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = fsub fast float 1.000000e+00, %3177
  %3200 = call float @dx.op.binary.f32(i32 35, float %3199, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3201 = bitcast float %3177 to i32
  %3202 = sitofp i32 %3201 to float
  %3203 = fadd fast float %3202, 0xC1CFBF8940000000
  %3204 = fmul fast float %3198, %3203
  %3205 = fadd fast float %3204, 0x41CFBF8940000000
  %3206 = fptosi float %3205 to i32
  %3207 = bitcast i32 %3206 to float
  %3208 = bitcast float %3200 to i32
  %3209 = sitofp i32 %3208 to float
  %3210 = fadd fast float %3209, 0xC1CFBF8940000000
  %3211 = fmul fast float %3210, %3198
  %3212 = fadd fast float %3211, 0x41CFBF8940000000
  %3213 = fptosi float %3212 to i32
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3207, %3195
  %3216 = fmul fast float %3214, %3195
  %3217 = fsub fast float %3200, %3215
  %3218 = fadd fast float %3216, %3200
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3221 = fsub fast float %3189, %3219
  %3222 = fsub fast float %3220, %3219
  %3223 = bitcast float %3222 to i32
  %3224 = sub nsw i32 2129859010, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3225, %3221
  %3227 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  br label %3228

; <label>:3228                                    ; preds = %3182, %3176
  %3229 = phi float [ %3227, %3182 ], [ %3177, %3176 ]
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 128
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3250, label %3234

; <label>:3234                                    ; preds = %3228
  %3235 = add i32 %54, 468
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = add i32 %3237, 0
  %3239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3239, %dx.types.Handle %94, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 524288
  %3245 = icmp ne i32 %3244, 0
  %3246 = fcmp fast ogt float %3241, 0x3FE0101020000000
  %3247 = select i1 %3246, float 1.000000e+00, float 0.000000e+00
  %3248 = select i1 %3245, float %3247, float %3241
  %3249 = fmul fast float %3248, %3229
  br label %3250

; <label>:3250                                    ; preds = %3234, %3228
  %3251 = phi float [ %3249, %3234 ], [ %3229, %3228 ]
  %3252 = fcmp fast ult float %3251, 0x3F70101020000000
  br i1 %3252, label %3834, label %3253

; <label>:3253                                    ; preds = %3250
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 16
  %3257 = icmp eq i32 %3256, 0
  br i1 %3257, label %3456, label %3258

; <label>:3258                                    ; preds = %3253
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = add i32 %54, 420
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = add i32 %3263, 0
  %3265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3265, %dx.types.Handle %93, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = extractvalue %dx.types.ResRet.f32 %3266, 3
  %3271 = and i32 %3260, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = lshr i32 %3260, 8
  %3274 = and i32 %3273, 255
  %3275 = uitofp i32 %3274 to float
  %3276 = fmul fast float %3270, %3272
  %3277 = fadd fast float %3276, %3275
  %3278 = fmul fast float %3277, 0x3F70101000000000
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = and i32 %3280, 512
  %3282 = icmp eq i32 %3281, 0
  br i1 %3282, label %3291, label %3283

; <label>:3283                                    ; preds = %3258
  %3284 = add i32 %54, 504
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = add i32 %3286, 0
  %3288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3288, %dx.types.Handle %94, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  br label %3291

; <label>:3291                                    ; preds = %3283, %3258
  %3292 = phi float [ %3290, %3283 ], [ 1.000000e+00, %3258 ]
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 33554432
  %3296 = icmp eq i32 %3295, 0
  br i1 %3296, label %3403, label %3297

; <label>:3297                                    ; preds = %3291
  %3298 = add i32 %54, 272
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = and i32 %3300, 65535
  %3302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3301)  ; LegacyF16ToF32(value)
  %3303 = lshr i32 %3300, 16
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = add i32 %54, 276
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = and i32 %3307, 65535
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = lshr i32 %3311, 24
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, 0x3F70101020000000
  %3315 = and i32 %3311, 255
  %3316 = uitofp i32 %3315 to float
  %3317 = fmul fast float %3316, 0x3F70101020000000
  %3318 = lshr i32 %3311, 8
  %3319 = and i32 %3318, 255
  %3320 = uitofp i32 %3319 to float
  %3321 = fmul fast float %3320, 0x3F70101020000000
  %3322 = lshr i32 %3311, 16
  %3323 = and i32 %3322, 255
  %3324 = uitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 0x3F70101020000000
  %3326 = add i32 %54, 268
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = lshr i32 %3328, 24
  %3330 = uitofp i32 %3329 to float
  %3331 = fmul fast float %3330, 0x3F70101020000000
  %3332 = and i32 %3328, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = fmul fast float %3333, 0x3F70101020000000
  %3335 = lshr i32 %3328, 8
  %3336 = and i32 %3335, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = fmul fast float %3337, 0x3F70101020000000
  %3339 = lshr i32 %3328, 16
  %3340 = and i32 %3339, 255
  %3341 = uitofp i32 %3340 to float
  %3342 = fmul fast float %3341, 0x3F70101020000000
  %3343 = bitcast float %3267 to i32
  %3344 = ashr i32 %3343, 1
  %3345 = sub nsw i32 1597463174, %3344
  %3346 = bitcast i32 %3345 to float
  %3347 = fmul fast float %3267, 5.000000e-01
  %3348 = fmul fast float %3346, %3346
  %3349 = fmul fast float %3348, %3347
  %3350 = fsub fast float 1.500000e+00, %3349
  %3351 = fmul fast float %3346, %3267
  %3352 = fmul fast float %3351, %3350
  %3353 = bitcast float %3268 to i32
  %3354 = ashr i32 %3353, 1
  %3355 = sub nsw i32 1597463174, %3354
  %3356 = bitcast i32 %3355 to float
  %3357 = fmul fast float %3268, 5.000000e-01
  %3358 = fmul fast float %3356, %3356
  %3359 = fmul fast float %3358, %3357
  %3360 = fsub fast float 1.500000e+00, %3359
  %3361 = fmul fast float %3356, %3268
  %3362 = fmul fast float %3361, %3360
  %3363 = bitcast float %3269 to i32
  %3364 = ashr i32 %3363, 1
  %3365 = sub nsw i32 1597463174, %3364
  %3366 = bitcast i32 %3365 to float
  %3367 = fmul fast float %3269, 5.000000e-01
  %3368 = fmul fast float %3366, %3366
  %3369 = fmul fast float %3368, %3367
  %3370 = fsub fast float 1.500000e+00, %3369
  %3371 = fmul fast float %3366, %3269
  %3372 = fmul fast float %3371, %3370
  %3373 = fsub fast float %3352, %3334
  %3374 = fsub fast float %3362, %3338
  %3375 = fsub fast float %3372, %3342
  %3376 = fmul fast float %3373, %3302
  %3377 = fmul fast float %3374, %3304
  %3378 = fmul fast float %3375, %3309
  %3379 = fadd fast float %3376, %3317
  %3380 = fadd fast float %3377, %3321
  %3381 = fadd fast float %3378, %3325
  %3382 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3385 = fmul fast float %3382, %3382
  %3386 = fmul fast float %3383, %3383
  %3387 = fmul fast float %3384, %3384
  %3388 = fsub fast float %3385, %3267
  %3389 = fsub fast float %3386, %3268
  %3390 = fsub fast float %3387, %3269
  %3391 = fmul fast float %3388, %3292
  %3392 = fmul fast float %3389, %3292
  %3393 = fmul fast float %3390, %3292
  %3394 = fadd fast float %3391, %3267
  %3395 = fadd fast float %3392, %3268
  %3396 = fadd fast float %3393, %3269
  %3397 = fadd fast float %3314, %3278
  %3398 = fsub fast float %3397, %3331
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = fsub fast float %3399, %3278
  %3401 = fmul fast float %3400, %3292
  %3402 = fadd fast float %3401, %3278
  br label %3456

; <label>:3403                                    ; preds = %3291
  %3404 = and i32 %3294, 134217728
  %3405 = icmp eq i32 %3404, 0
  br i1 %3405, label %3440, label %3406

; <label>:3406                                    ; preds = %3403
  %3407 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3408 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3409 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3410 = fadd fast float %3407, -5.000000e-01
  %3411 = fadd fast float %3408, -5.000000e-01
  %3412 = fadd fast float %3409, -5.000000e-01
  %3413 = fmul fast float %3410, %3292
  %3414 = fmul fast float %3411, %3292
  %3415 = fmul fast float %3412, %3292
  %3416 = fadd fast float %3413, 5.000000e-01
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = fadd fast float %3415, 5.000000e-01
  %3419 = call float @dx.op.unary.f32(i32 24, float %3267)  ; Sqrt(value)
  %3420 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3421 = call float @dx.op.unary.f32(i32 24, float %3269)  ; Sqrt(value)
  %3422 = fmul fast float %3416, 2.000000e+00
  %3423 = fsub fast float 1.000000e+00, %3422
  %3424 = fmul fast float %3423, %3419
  %3425 = fadd fast float %3424, %3422
  %3426 = fmul fast float %3425, %3419
  %3427 = fmul fast float %3417, 2.000000e+00
  %3428 = fsub fast float 1.000000e+00, %3427
  %3429 = fmul fast float %3428, %3420
  %3430 = fadd fast float %3429, %3427
  %3431 = fmul fast float %3430, %3420
  %3432 = fmul fast float %3418, 2.000000e+00
  %3433 = fsub fast float 1.000000e+00, %3432
  %3434 = fmul fast float %3433, %3421
  %3435 = fadd fast float %3434, %3432
  %3436 = fmul fast float %3435, %3421
  %3437 = fmul fast float %3426, %3426
  %3438 = fmul fast float %3431, %3431
  %3439 = fmul fast float %3436, %3436
  br label %3456

; <label>:3440                                    ; preds = %3403
  %3441 = fmul fast float %377, %377
  %3442 = fmul fast float %381, %381
  %3443 = fmul fast float %385, %385
  %3444 = fadd fast float %3441, -1.000000e+00
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fadd fast float %3443, -1.000000e+00
  %3447 = fmul fast float %3292, %3444
  %3448 = fmul fast float %3292, %3445
  %3449 = fmul fast float %3292, %3446
  %3450 = fadd fast float %3447, 1.000000e+00
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fmul fast float %3450, %3267
  %3454 = fmul fast float %3451, %3268
  %3455 = fmul fast float %3452, %3269
  br label %3456

; <label>:3456                                    ; preds = %3440, %3406, %3297, %3253
  %3457 = phi float [ %3402, %3297 ], [ %3278, %3406 ], [ %3278, %3440 ], [ 0x3FA23C0BE0000000, %3253 ]
  %3458 = phi float [ %3394, %3297 ], [ %3437, %3406 ], [ %3453, %3440 ], [ 1.000000e+00, %3253 ]
  %3459 = phi float [ %3395, %3297 ], [ %3438, %3406 ], [ %3454, %3440 ], [ 1.000000e+00, %3253 ]
  %3460 = phi float [ %3396, %3297 ], [ %3439, %3406 ], [ %3455, %3440 ], [ 1.000000e+00, %3253 ]
  %3461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.i32 %3461, 1
  %3463 = and i32 %3462, 1
  %3464 = icmp ne i32 %3463, 0
  %3465 = add i32 %54, 356
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %3467, 32
  %3469 = icmp ne i32 %3468, 0
  %3470 = and i1 %3464, %3469
  %3471 = select i1 %3470, float 1.000000e+00, float %3458
  %3472 = select i1 %3470, float 0x3FD3333340000000, float %3459
  %3473 = select i1 %3470, float 0x3FD3333340000000, float %3460
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 32
  %3477 = icmp eq i32 %3476, 0
  br i1 %3477, label %3550, label %3478

; <label>:3478                                    ; preds = %3456
  %3479 = add i32 %54, 140
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = add i32 %54, 436
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = add i32 %3484, 0
  %3486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3486, %dx.types.Handle %93, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3487, 3
  %3492 = and i32 %3481, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = lshr i32 %3481, 8
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = lshr i32 %3481, 16
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = fmul fast float %3499, 0x3F70101000000000
  %3501 = fmul fast float %3488, %3493
  %3502 = fadd fast float %3501, %3496
  %3503 = fmul fast float %3502, 0x3F70101000000000
  %3504 = fadd fast float %3489, -5.000000e-01
  %3505 = fadd fast float %3491, -5.000000e-01
  %3506 = fmul fast float %3504, %3500
  %3507 = fmul fast float %3505, %3500
  %3508 = fadd fast float %3506, 5.000000e-01
  %3509 = fadd fast float %3507, 5.000000e-01
  %3510 = fmul fast float %3508, 2.000000e+00
  %3511 = fadd fast float %3510, -1.000000e+00
  %3512 = fmul fast float %3509, 2.000000e+00
  %3513 = fadd fast float %3512, -1.000000e+00
  %3514 = fadd fast float %3511, %3513
  %3515 = fmul fast float %3514, 5.000000e-01
  %3516 = fsub fast float %3511, %3513
  %3517 = fmul fast float %3516, 5.000000e-01
  %3518 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3519 = fsub fast float 1.000000e+00, %3518
  %3520 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3521 = fsub fast float %3519, %3520
  %3522 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3517, float %3521, float %3515, float %3517, float %3521)  ; Dot3(ax,ay,az,bx,by,bz)
  %3523 = call float @dx.op.unary.f32(i32 25, float %3522)  ; Rsqrt(value)
  %3524 = fmul fast float %3515, %3523
  %3525 = fmul fast float %3517, %3523
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 67108864
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3546, label %3530

; <label>:3530                                    ; preds = %3478
  %3531 = add i32 %54, 328
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 65535
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = and i32 %3537, 65535
  %3539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3538)  ; LegacyF16ToF32(value)
  %3540 = lshr i32 %3533, 16
  %3541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3540)  ; LegacyF16ToF32(value)
  %3542 = fsub fast float %3503, %3541
  %3543 = fmul fast float %3542, %3535
  %3544 = fadd fast float %3543, %3539
  %3545 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  br label %3546

; <label>:3546                                    ; preds = %3530, %3478
  %3547 = phi float [ %3545, %3530 ], [ %3503, %3478 ]
  %3548 = call float @dx.op.dot2.f32(i32 54, float %3524, float %3525, float %2967, float %2968)  ; Dot2(ax,ay,bx,by)
  %3549 = call float @dx.op.dot2.f32(i32 54, float %3524, float %3525, float %2969, float %2970)  ; Dot2(ax,ay,bx,by)
  br label %3550

; <label>:3550                                    ; preds = %3546, %3456
  %3551 = phi float [ %3547, %3546 ], [ 0x3FD6666660000000, %3456 ]
  %3552 = phi float [ %3548, %3546 ], [ 0.000000e+00, %3456 ]
  %3553 = phi float [ %3549, %3546 ], [ 0.000000e+00, %3456 ]
  %3554 = phi float [ %3490, %3546 ], [ 1.000000e+00, %3456 ]
  %3555 = add i32 %54, 208
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = lshr i32 %3557, 22
  %3559 = shl nuw nsw i32 %3558, 5
  %3560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3559)  ; LegacyF16ToF32(value)
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = and i32 %3562, 64
  %3564 = icmp eq i32 %3563, 0
  br i1 %3564, label %3598, label %3565

; <label>:3565                                    ; preds = %3550
  %3566 = add i32 %54, 452
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = add i32 %3568, 0
  %3570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = and i32 %3572, 131072
  %3574 = icmp eq i32 %3573, 0
  %3575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3570, %dx.types.Handle %93, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = fmul fast float %3576, %365
  %3580 = fmul fast float %3577, %368
  %3581 = fmul fast float %3578, %371
  br i1 %3574, label %3588, label %3582

; <label>:3582                                    ; preds = %3565
  %3583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3584 = extractvalue %dx.types.CBufRet.f32 %3583, 0
  %3585 = fmul fast float %3584, %3579
  %3586 = fmul fast float %3584, %3580
  %3587 = fmul fast float %3584, %3581
  br label %3588

; <label>:3588                                    ; preds = %3582, %3565
  %3589 = phi float [ %3585, %3582 ], [ %3579, %3565 ]
  %3590 = phi float [ %3586, %3582 ], [ %3580, %3565 ]
  %3591 = phi float [ %3587, %3582 ], [ %3581, %3565 ]
  %3592 = fmul fast float %3589, %3560
  %3593 = select i1 %222, float %3592, float %3589
  %3594 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3590, float %3591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3595 = select i1 %222, float 0.000000e+00, float %3589
  %3596 = select i1 %222, float %3594, float %3590
  %3597 = select i1 %222, float 0.000000e+00, float %3591
  br label %3598

; <label>:3598                                    ; preds = %3588, %3550
  %3599 = phi float [ %3595, %3588 ], [ 0.000000e+00, %3550 ]
  %3600 = phi float [ %3596, %3588 ], [ 0.000000e+00, %3550 ]
  %3601 = phi float [ %3597, %3588 ], [ 0.000000e+00, %3550 ]
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 26624
  %3605 = icmp eq i32 %3604, 0
  br i1 %3605, label %3629, label %3606

; <label>:3606                                    ; preds = %3598
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 16384
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3629, label %3611

; <label>:3611                                    ; preds = %3606
  %3612 = and i32 %3608, 1048576
  %3613 = icmp ne i32 %3612, 0
  %3614 = add i32 %54, 520
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = add i32 %3616, 0
  %3618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3618, %dx.types.Handle %94, float %3063, float %3064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = add i32 %54, 144
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = lshr i32 %3623, 24
  %3625 = uitofp i32 %3624 to float
  %3626 = fmul fast float %3620, 0x3F70101020000000
  %3627 = select i1 %3613, float 0x3F70101020000000, float %3626
  %3628 = fmul fast float %3627, %3625
  br label %3629

; <label>:3629                                    ; preds = %3611, %3606, %3598
  %3630 = phi float [ %3628, %3611 ], [ 0.000000e+00, %3606 ], [ 0.000000e+00, %3598 ]
  %3631 = add i32 %54, 144
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3633, 8
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3640 = fmul fast float %3638, %3639
  %3641 = fadd fast float %3640, %3635
  %3642 = fmul fast float %3641, 0x3F70101020000000
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  br i1 %2955, label %3644, label %3652

; <label>:3644                                    ; preds = %3629
  %3645 = fsub fast float 1.000000e+00, %3251
  %3646 = fmul fast float %3645, %2943
  %3647 = fmul fast float %3645, %2944
  %3648 = fmul fast float %3645, %2945
  %3649 = fmul fast float %3645, %2946
  %3650 = fmul fast float %3645, %2947
  %3651 = fmul fast float %3645, %2948
  br label %3652

; <label>:3652                                    ; preds = %3644, %3629
  %3653 = phi float [ %3646, %3644 ], [ %2943, %3629 ]
  %3654 = phi float [ %3647, %3644 ], [ %2944, %3629 ]
  %3655 = phi float [ %3648, %3644 ], [ %2945, %3629 ]
  %3656 = phi float [ %3649, %3644 ], [ %2946, %3629 ]
  %3657 = phi float [ %3650, %3644 ], [ %2947, %3629 ]
  %3658 = phi float [ %3651, %3644 ], [ %2948, %3629 ]
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 3
  %3662 = icmp eq i32 %3661, 3
  br i1 %3662, label %3741, label %3663

; <label>:3663                                    ; preds = %3652
  %3664 = and i32 %3660, 16
  %3665 = icmp ne i32 %3664, 0
  %3666 = select i1 %3665, float %3251, float 0.000000e+00
  %3667 = icmp eq i32 %3661, 0
  br i1 %3667, label %3668, label %3696

; <label>:3668                                    ; preds = %3663
  %3669 = and i32 %3660, 64
  %3670 = icmp ne i32 %3669, 0
  %3671 = select i1 %3670, float %3251, float 0.000000e+00
  %3672 = fsub fast float %3471, %3653
  %3673 = fsub fast float %3472, %3654
  %3674 = fsub fast float %3473, %3655
  %3675 = fmul fast float %3666, %3672
  %3676 = fmul fast float %3666, %3673
  %3677 = fmul fast float %3666, %3674
  %3678 = fadd fast float %3675, %3653
  %3679 = fadd fast float %3676, %3654
  %3680 = fadd fast float %3677, %3655
  %3681 = fsub fast float %3457, %2949
  %3682 = fmul fast float %3666, %3681
  %3683 = fadd fast float %3682, %2949
  %3684 = fsub fast float %3599, %3656
  %3685 = fsub fast float %3600, %3657
  %3686 = fsub fast float %3601, %3658
  %3687 = fmul fast float %3671, %3684
  %3688 = fmul fast float %3671, %3685
  %3689 = fmul fast float %3671, %3686
  %3690 = fadd fast float %3687, %3656
  %3691 = fadd fast float %3688, %3657
  %3692 = fadd fast float %3689, %3658
  %3693 = fsub fast float %3643, %2953
  %3694 = fmul fast float %3666, %3693
  %3695 = fadd fast float %3694, %2953
  br label %3741

; <label>:3696                                    ; preds = %3663
  %3697 = icmp eq i32 %3661, 1
  br i1 %3697, label %3698, label %3711

; <label>:3698                                    ; preds = %3696
  %3699 = fadd fast float %3471, -1.000000e+00
  %3700 = fadd fast float %3472, -1.000000e+00
  %3701 = fadd fast float %3473, -1.000000e+00
  %3702 = fmul fast float %3666, %3699
  %3703 = fmul fast float %3666, %3700
  %3704 = fmul fast float %3666, %3701
  %3705 = fadd fast float %3702, 1.000000e+00
  %3706 = fadd fast float %3703, 1.000000e+00
  %3707 = fadd fast float %3704, 1.000000e+00
  %3708 = fmul fast float %3705, %3653
  %3709 = fmul fast float %3706, %3654
  %3710 = fmul fast float %3707, %3655
  br label %3741

; <label>:3711                                    ; preds = %3696
  %3712 = icmp eq i32 %3661, 2
  br i1 %3712, label %3713, label %3741

; <label>:3713                                    ; preds = %3711
  %3714 = call float @dx.op.unary.f32(i32 24, float %3471)  ; Sqrt(value)
  %3715 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3716 = call float @dx.op.unary.f32(i32 24, float %3473)  ; Sqrt(value)
  %3717 = fadd fast float %3714, -5.000000e-01
  %3718 = fadd fast float %3715, -5.000000e-01
  %3719 = fadd fast float %3716, -5.000000e-01
  %3720 = fmul fast float %3717, %3666
  %3721 = fmul fast float %3718, %3666
  %3722 = fmul fast float %3719, %3666
  %3723 = fadd fast float %3720, 5.000000e-01
  %3724 = fadd fast float %3721, 5.000000e-01
  %3725 = fadd fast float %3722, 5.000000e-01
  %3726 = fmul fast float %3723, 2.000000e+00
  %3727 = fsub fast float 1.000000e+00, %3726
  %3728 = fmul fast float %3727, %3653
  %3729 = fadd fast float %3728, %3726
  %3730 = fmul fast float %3729, %3653
  %3731 = fmul fast float %3724, 2.000000e+00
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = fmul fast float %3732, %3654
  %3734 = fadd fast float %3733, %3731
  %3735 = fmul fast float %3734, %3654
  %3736 = fmul fast float %3725, 2.000000e+00
  %3737 = fsub fast float 1.000000e+00, %3736
  %3738 = fmul fast float %3737, %3655
  %3739 = fadd fast float %3738, %3736
  %3740 = fmul fast float %3739, %3655
  br label %3741

; <label>:3741                                    ; preds = %3713, %3711, %3698, %3668, %3652
  %3742 = phi float [ %3653, %3652 ], [ %3730, %3713 ], [ %3653, %3711 ], [ %3708, %3698 ], [ %3678, %3668 ]
  %3743 = phi float [ %3654, %3652 ], [ %3735, %3713 ], [ %3654, %3711 ], [ %3709, %3698 ], [ %3679, %3668 ]
  %3744 = phi float [ %3655, %3652 ], [ %3740, %3713 ], [ %3655, %3711 ], [ %3710, %3698 ], [ %3680, %3668 ]
  %3745 = phi float [ %3656, %3652 ], [ %3656, %3713 ], [ %3656, %3711 ], [ %3656, %3698 ], [ %3690, %3668 ]
  %3746 = phi float [ %3657, %3652 ], [ %3657, %3713 ], [ %3657, %3711 ], [ %3657, %3698 ], [ %3691, %3668 ]
  %3747 = phi float [ %3658, %3652 ], [ %3658, %3713 ], [ %3658, %3711 ], [ %3658, %3698 ], [ %3692, %3668 ]
  %3748 = phi float [ %2949, %3652 ], [ %2949, %3713 ], [ %2949, %3711 ], [ %2949, %3698 ], [ %3683, %3668 ]
  %3749 = phi float [ %2953, %3652 ], [ %2953, %3713 ], [ %2953, %3711 ], [ %2953, %3698 ], [ %3695, %3668 ]
  %3750 = and i32 %3660, 12
  %3751 = icmp eq i32 %3750, 12
  br i1 %3751, label %3834, label %3752

; <label>:3752                                    ; preds = %3741
  %3753 = and i32 %3660, 2097184
  %3754 = icmp eq i32 %3753, 2097184
  %3755 = select i1 %3754, float %3251, float 0.000000e+00
  %3756 = and i32 %3660, 4194336
  %3757 = icmp eq i32 %3756, 4194336
  %3758 = select i1 %3757, float %3251, float 0.000000e+00
  %3759 = and i32 %3660, 8388640
  %3760 = icmp eq i32 %3759, 8388640
  %3761 = select i1 %3760, float %3251, float 0.000000e+00
  %3762 = and i32 %3660, 16384
  %3763 = icmp ne i32 %3762, 0
  %3764 = select i1 %3763, float %3251, float 0.000000e+00
  %3765 = icmp eq i32 %3750, 0
  br i1 %3765, label %3766, label %3782

; <label>:3766                                    ; preds = %3752
  %3767 = fsub fast float %3552, %2941
  %3768 = fsub fast float %3553, %2942
  %3769 = fmul fast float %3755, %3767
  %3770 = fmul fast float %3755, %3768
  %3771 = fadd fast float %3769, %2941
  %3772 = fadd fast float %3770, %2942
  %3773 = fsub fast float %3554, %2951
  %3774 = fmul fast float %3758, %3773
  %3775 = fadd fast float %3774, %2951
  %3776 = fsub fast float %3551, %2950
  %3777 = fmul fast float %3761, %3776
  %3778 = fadd fast float %3777, %2950
  %3779 = fsub fast float %3630, %2952
  %3780 = fmul fast float %3764, %3779
  %3781 = fadd fast float %3780, %2952
  br label %3834

; <label>:3782                                    ; preds = %3752
  %3783 = icmp eq i32 %3750, 4
  br i1 %3783, label %3784, label %3818

; <label>:3784                                    ; preds = %3782
  %3785 = fmul fast float %3755, %3552
  %3786 = fmul fast float %3755, %3553
  %3787 = fadd fast float %3785, %2941
  %3788 = fadd fast float %3786, %2942
  %3789 = call float @dx.op.binary.f32(i32 36, float %2951, float %3554)  ; FMin(a,b)
  %3790 = fsub fast float %3789, %2951
  %3791 = fmul fast float %3790, %3758
  %3792 = fadd fast float %3791, %2951
  %3793 = fadd fast float %3551, %2950
  %3794 = fmul fast float %3793, 0x3FF337FAE0000000
  %3795 = fmul fast float %2950, %2950
  %3796 = fmul fast float %3551, %3551
  %3797 = fadd fast float %3796, %3795
  %3798 = fmul fast float %3797, 0x3FE5152B00000000
  %3799 = fmul fast float %2950, 0xBFCC1F85E0000000
  %3800 = fmul fast float %3799, %3551
  %3801 = fadd fast float %3800, 0xBFE1363700000000
  %3802 = fadd fast float %3801, %3794
  %3803 = fsub fast float %3802, %3798
  %3804 = fmul fast float %3793, 0x3FBA6F0D00000000
  %3805 = fmul fast float %3797, 0x3FD0432880000000
  %3806 = fmul fast float %2950, 0xBFEF110800000000
  %3807 = fmul fast float %3806, %3551
  %3808 = fadd fast float %3807, 1.000000e+00
  %3809 = fsub fast float %3808, %3804
  %3810 = fadd fast float %3809, %3805
  %3811 = fdiv fast float %3803, %3810
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fsub fast float %3812, %2950
  %3814 = fmul fast float %3813, %3761
  %3815 = fadd fast float %3814, %2950
  %3816 = fmul fast float %3764, %3630
  %3817 = fadd fast float %3816, %2952
  br label %3834

; <label>:3818                                    ; preds = %3782
  %3819 = icmp eq i32 %3750, 8
  br i1 %3819, label %3820, label %3834

; <label>:3820                                    ; preds = %3818
  %3821 = fmul fast float %3755, %3552
  %3822 = fmul fast float %3755, %3553
  %3823 = fadd fast float %3821, %2941
  %3824 = fadd fast float %3822, %2942
  %3825 = call float @dx.op.binary.f32(i32 36, float %2951, float %3554)  ; FMin(a,b)
  %3826 = fsub fast float %3825, %2951
  %3827 = fmul fast float %3826, %3758
  %3828 = fadd fast float %3827, %2951
  %3829 = fsub fast float %3551, %2950
  %3830 = fmul fast float %3761, %3829
  %3831 = fadd fast float %3830, %2950
  %3832 = fmul fast float %3764, %3630
  %3833 = fadd fast float %3832, %2952
  br label %3834

; <label>:3834                                    ; preds = %3820, %3818, %3784, %3766, %3741, %3250, %2954, %2940
  %3835 = phi float [ %2941, %3741 ], [ %2941, %3250 ], [ %2941, %2940 ], [ %2941, %2954 ], [ %3771, %3766 ], [ %3787, %3784 ], [ %2941, %3818 ], [ %3823, %3820 ]
  %3836 = phi float [ %2942, %3741 ], [ %2942, %3250 ], [ %2942, %2940 ], [ %2942, %2954 ], [ %3772, %3766 ], [ %3788, %3784 ], [ %2942, %3818 ], [ %3824, %3820 ]
  %3837 = phi float [ %3742, %3741 ], [ %2943, %3250 ], [ %2943, %2940 ], [ %2943, %2954 ], [ %3742, %3766 ], [ %3742, %3784 ], [ %3742, %3818 ], [ %3742, %3820 ]
  %3838 = phi float [ %3743, %3741 ], [ %2944, %3250 ], [ %2944, %2940 ], [ %2944, %2954 ], [ %3743, %3766 ], [ %3743, %3784 ], [ %3743, %3818 ], [ %3743, %3820 ]
  %3839 = phi float [ %3744, %3741 ], [ %2945, %3250 ], [ %2945, %2940 ], [ %2945, %2954 ], [ %3744, %3766 ], [ %3744, %3784 ], [ %3744, %3818 ], [ %3744, %3820 ]
  %3840 = phi float [ %3745, %3741 ], [ %2946, %3250 ], [ %2946, %2940 ], [ %2946, %2954 ], [ %3745, %3766 ], [ %3745, %3784 ], [ %3745, %3818 ], [ %3745, %3820 ]
  %3841 = phi float [ %3746, %3741 ], [ %2947, %3250 ], [ %2947, %2940 ], [ %2947, %2954 ], [ %3746, %3766 ], [ %3746, %3784 ], [ %3746, %3818 ], [ %3746, %3820 ]
  %3842 = phi float [ %3747, %3741 ], [ %2948, %3250 ], [ %2948, %2940 ], [ %2948, %2954 ], [ %3747, %3766 ], [ %3747, %3784 ], [ %3747, %3818 ], [ %3747, %3820 ]
  %3843 = phi float [ %3748, %3741 ], [ %2949, %3250 ], [ %2949, %2940 ], [ %2949, %2954 ], [ %3748, %3766 ], [ %3748, %3784 ], [ %3748, %3818 ], [ %3748, %3820 ]
  %3844 = phi float [ %2950, %3741 ], [ %2950, %3250 ], [ %2950, %2940 ], [ %2950, %2954 ], [ %3778, %3766 ], [ %3815, %3784 ], [ %2950, %3818 ], [ %3831, %3820 ]
  %3845 = phi float [ %2951, %3741 ], [ %2951, %3250 ], [ %2951, %2940 ], [ %2951, %2954 ], [ %3775, %3766 ], [ %3792, %3784 ], [ %2951, %3818 ], [ %3828, %3820 ]
  %3846 = phi float [ %2952, %3741 ], [ %2952, %3250 ], [ %2952, %2940 ], [ %2952, %2954 ], [ %3781, %3766 ], [ %3817, %3784 ], [ %2952, %3818 ], [ %3833, %3820 ]
  %3847 = phi float [ %3749, %3741 ], [ %2953, %3250 ], [ %2953, %2940 ], [ %2953, %2954 ], [ %3749, %3766 ], [ %3749, %3784 ], [ %3749, %3818 ], [ %3749, %3820 ]
  %3848 = add i32 %54, 360
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.i32 %3849, 1
  %3852 = bitcast i32 %3850 to float
  %3853 = bitcast i32 %3851 to float
  %3854 = fcmp fast oge float %3852, 0.000000e+00
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = select i1 %3854, float %3852, float %3856
  %3858 = add i32 %54, 488
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = add i32 %3860, 0
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3862, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = fmul fast float %3864, %3853
  %3866 = fadd fast float %3865, %3857
  %3867 = call float @dx.op.dot2.f32(i32 54, float %3835, float %3836, float %3835, float %3836)  ; Dot2(ax,ay,bx,by)
  %3868 = fmul fast float %3867, 0x3FE3333340000000
  %3869 = fsub fast float 1.000000e+00, %3868
  %3870 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3836, float %3869, float %3835, float %3836, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 25, float %3870)  ; Rsqrt(value)
  %3872 = fmul fast float %3871, %3835
  %3873 = fmul fast float %3871, %3836
  %3874 = fmul fast float %3869, %3871
  %3875 = fmul fast float %3874, %104
  %3876 = fmul fast float %3874, %105
  %3877 = fmul fast float %3874, %106
  %3878 = fmul fast float %3872, %72
  %3879 = fmul fast float %3872, %73
  %3880 = fmul fast float %3872, %74
  %3881 = fadd fast float %3875, %3878
  %3882 = fadd fast float %3876, %3879
  %3883 = fadd fast float %3877, %3880
  %3884 = fmul fast float %116, %3873
  %3885 = fmul fast float %117, %3873
  %3886 = fmul fast float %118, %3873
  %3887 = fadd fast float %3881, %3884
  %3888 = fadd fast float %3882, %3885
  %3889 = fadd fast float %3883, %3886
  %3890 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3887, float %3888, float %3889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call float @dx.op.unary.f32(i32 25, float %3890)  ; Rsqrt(value)
  %3892 = fmul fast float %3887, %3891
  %3893 = fmul fast float %3888, %3891
  %3894 = fmul fast float %3889, %3891
  %3895 = and i32 %56, 1
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3897, label %4409

; <label>:3897                                    ; preds = %3834
  %3898 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3899 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %3900 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %3901 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3902 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %3903 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %3904 = fadd fast float %3898, %160
  %3905 = fadd fast float %3899, %161
  %3906 = fadd fast float %3900, %162
  %3907 = fadd fast float %3901, %160
  %3908 = fadd fast float %3902, %161
  %3909 = fadd fast float %3903, %162
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3917 = fmul fast float %3911, %97
  %3918 = fmul fast float %3917, %3915
  %3919 = fmul fast float %3912, %98
  %3920 = fmul fast float %3919, %3916
  %3921 = fptoui float %3918 to i32
  %3922 = fptoui float %3920 to i32
  %3923 = fadd fast float %3911, -1.000000e+00
  %3924 = fadd fast float %3912, -1.000000e+00
  %3925 = fptoui float %3923 to i32
  %3926 = fptoui float %3924 to i32
  %3927 = call i32 @dx.op.binary.i32(i32 40, i32 %3921, i32 %3925)  ; UMin(a,b)
  %3928 = call i32 @dx.op.binary.i32(i32 40, i32 %3922, i32 %3926)  ; UMin(a,b)
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3932 = fmul fast float %3930, %88
  %3933 = fsub fast float %3932, %3931
  %3934 = fadd fast float %3913, -1.000000e+00
  %3935 = call float @dx.op.binary.f32(i32 36, float %3933, float %3934)  ; FMin(a,b)
  %3936 = fptoui float %3935 to i32
  %3937 = fptoui float %3911 to i32
  %3938 = fptoui float %3912 to i32
  %3939 = mul i32 %3936, %3938
  %3940 = add i32 %3939, %3928
  %3941 = mul i32 %3940, %3937
  %3942 = add i32 %3941, %3927
  %3943 = shl i32 %3942, 2
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = and i32 %3945, 1023
  %3947 = lshr i32 %3945, 10
  %3948 = icmp eq i32 %3946, 0
  br i1 %3948, label %4377, label %3949

; <label>:3949                                    ; preds = %3897
  %3950 = and i32 %3945, 1023
  br label %3951

; <label>:3951                                    ; preds = %4078, %3949
  %3952 = phi i32 [ %4028, %4078 ], [ 0, %3949 ]
  %3953 = phi float [ %4079, %4078 ], [ 0.000000e+00, %3949 ]
  %3954 = phi float [ %4080, %4078 ], [ %1161, %3949 ]
  %3955 = phi float [ %4081, %4078 ], [ %3866, %3949 ]
  %3956 = phi float [ %4082, %4078 ], [ %3847, %3949 ]
  %3957 = phi float [ %4083, %4078 ], [ %3846, %3949 ]
  %3958 = phi float [ %4084, %4078 ], [ 0.000000e+00, %3949 ]
  %3959 = phi float [ %4085, %4078 ], [ %3840, %3949 ]
  %3960 = phi float [ %4086, %4078 ], [ %3841, %3949 ]
  %3961 = phi float [ %4087, %4078 ], [ %3842, %3949 ]
  %3962 = phi float [ %4088, %4078 ], [ %3892, %3949 ]
  %3963 = phi float [ %4089, %4078 ], [ %3893, %3949 ]
  %3964 = phi float [ %4090, %4078 ], [ %3894, %3949 ]
  %3965 = phi float [ %4091, %4078 ], [ %3845, %3949 ]
  %3966 = phi float [ %4092, %4078 ], [ %3844, %3949 ]
  %3967 = phi float [ %4093, %4078 ], [ 0.000000e+00, %3949 ]
  %3968 = phi float [ %4094, %4078 ], [ %3843, %3949 ]
  %3969 = phi float [ %4095, %4078 ], [ %3837, %3949 ]
  %3970 = phi float [ %4096, %4078 ], [ %3838, %3949 ]
  %3971 = phi float [ %4097, %4078 ], [ %3839, %3949 ]
  %3972 = add nuw nsw i32 %3952, %3947
  %3973 = shl i32 %3972, 2
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = shl i32 %3975, 8
  %3977 = or i32 %3976, 48
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = extractvalue %dx.types.ResRet.f32 %3978, 3
  %3983 = or i32 %3976, 64
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.i32 %3984, 1
  %3987 = or i32 %3976, 80
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 2
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 3
  %3991 = or i32 %3976, 96
  %3992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.f32 %3992, 1
  %3995 = extractvalue %dx.types.ResRet.f32 %3992, 2
  %3996 = extractvalue %dx.types.ResRet.f32 %3992, 3
  %3997 = or i32 %3976, 112
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4000 = or i32 %3976, 128
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.ResRet.f32 %4001, 3
  %4006 = or i32 %3976, 144
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = extractvalue %dx.types.ResRet.f32 %4007, 3
  %4012 = or i32 %3976, 160
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = extractvalue %dx.types.ResRet.f32 %4013, 3
  %4018 = or i32 %3976, 192
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = or i32 %3976, 208
  %4022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = or i32 %3976, 248
  %4025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = add nuw nsw i32 %3952, 1
  %4029 = bitcast float %3982 to i32
  %4030 = and i32 %4029, 512
  %4031 = icmp eq i32 %4030, 0
  %4032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  %4036 = extractvalue %dx.types.ResRet.f32 %4032, 3
  %4037 = call float @dx.op.dot4.f32(i32 56, float %4033, float %4034, float %4035, float %4036, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4038 = or i32 %3976, 16
  %4039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %4039, 2
  %4043 = extractvalue %dx.types.ResRet.f32 %4039, 3
  %4044 = call float @dx.op.dot4.f32(i32 56, float %4040, float %4041, float %4042, float %4043, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4045 = or i32 %3976, 32
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = call float @dx.op.dot4.f32(i32 56, float %4047, float %4048, float %4049, float %4050, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4052 = call float @dx.op.unary.f32(i32 27, float %4037)  ; Round_ni(value)
  %4053 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4054 = call float @dx.op.unary.f32(i32 27, float %4044)  ; Round_ni(value)
  %4055 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4056 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4057 = call float @dx.op.unary.f32(i32 27, float %4056)  ; Round_ni(value)
  %4058 = fadd fast float %4055, %4053
  %4059 = fadd fast float %4058, %4057
  %4060 = fcmp fast oeq float %4059, 0.000000e+00
  %4061 = call float @dx.op.dot4.f32(i32 56, float %4033, float %4034, float %4035, float %4036, float %3904, float %3905, float %3906, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4062 = call float @dx.op.dot4.f32(i32 56, float %4040, float %4041, float %4042, float %4043, float %3904, float %3905, float %3906, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4063 = call float @dx.op.dot4.f32(i32 56, float %4033, float %4034, float %4035, float %4036, float %3907, float %3908, float %3909, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4064 = call float @dx.op.dot4.f32(i32 56, float %4040, float %4041, float %4042, float %4043, float %3907, float %3908, float %3909, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4065 = fsub fast float %4061, %4037
  %4066 = fsub fast float %4063, %4037
  %4067 = fsub fast float %4062, %4044
  %4068 = fsub fast float %4064, %4044
  %4069 = call float @dx.op.dot3.f32(i32 55, float %3979, float %3980, float %3981, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4072 = fadd fast float %4071, %4069
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4075 = fcmp fast ogt float %4073, %4074
  %4076 = and i1 %4060, %4075
  %4077 = and i1 %4031, %4076
  br i1 %4077, label %4099, label %4078

; <label>:4078                                    ; preds = %4363, %4180, %4099, %3951
  %4079 = phi float [ %3953, %4099 ], [ %4183, %4180 ], [ %4183, %4363 ], [ %3953, %3951 ]
  %4080 = phi float [ %3954, %4099 ], [ %3954, %4180 ], [ %4338, %4363 ], [ %3954, %3951 ]
  %4081 = phi float [ %3955, %4099 ], [ %3955, %4180 ], [ %4337, %4363 ], [ %3955, %3951 ]
  %4082 = phi float [ %3956, %4099 ], [ %3956, %4180 ], [ %4335, %4363 ], [ %3956, %3951 ]
  %4083 = phi float [ %3957, %4099 ], [ %3957, %4180 ], [ %4307, %4363 ], [ %3957, %3951 ]
  %4084 = phi float [ %3958, %4099 ], [ %3958, %4180 ], [ %4305, %4363 ], [ %3958, %3951 ]
  %4085 = phi float [ %3959, %4099 ], [ %3959, %4180 ], [ %4373, %4363 ], [ %3959, %3951 ]
  %4086 = phi float [ %3960, %4099 ], [ %3960, %4180 ], [ %4374, %4363 ], [ %3960, %3951 ]
  %4087 = phi float [ %3961, %4099 ], [ %3961, %4180 ], [ %4375, %4363 ], [ %3961, %3951 ]
  %4088 = phi float [ %3962, %4099 ], [ %3962, %4180 ], [ %4286, %4363 ], [ %3962, %3951 ]
  %4089 = phi float [ %3963, %4099 ], [ %3963, %4180 ], [ %4287, %4363 ], [ %3963, %3951 ]
  %4090 = phi float [ %3964, %4099 ], [ %3964, %4180 ], [ %4288, %4363 ], [ %3964, %3951 ]
  %4091 = phi float [ %3965, %4099 ], [ %3965, %4180 ], [ %4315, %4363 ], [ %3965, %3951 ]
  %4092 = phi float [ %3966, %4099 ], [ %3966, %4180 ], [ %4312, %4363 ], [ %3966, %3951 ]
  %4093 = phi float [ %3967, %4099 ], [ %3967, %4180 ], [ %4309, %4363 ], [ %3967, %3951 ]
  %4094 = phi float [ %3968, %4099 ], [ %3968, %4180 ], [ %4303, %4363 ], [ %3968, %3951 ]
  %4095 = phi float [ %3969, %4099 ], [ %3969, %4180 ], [ %4298, %4363 ], [ %3969, %3951 ]
  %4096 = phi float [ %3970, %4099 ], [ %3970, %4180 ], [ %4299, %4363 ], [ %3970, %3951 ]
  %4097 = phi float [ %3971, %4099 ], [ %3971, %4180 ], [ %4300, %4363 ], [ %3971, %3951 ]
  %4098 = icmp eq i32 %4028, %3950
  br i1 %4098, label %4376, label %3951

; <label>:4099                                    ; preds = %3951
  %4100 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4101 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %4105 = extractvalue %dx.types.ResRet.i32 %3984, 3
  %4106 = extractvalue %dx.types.ResRet.i32 %3984, 2
  %4107 = add i32 %4105, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4108, %dx.types.Handle %4109, float %4037, float %4044, float undef, float undef, i32 0, i32 0, i32 undef, float %4065, float %4067, float undef, float %4066, float %4068, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = fmul fast float %4111, %4104
  %4113 = fadd fast float %4112, %4103
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4037, %3993
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4044, float %4115)  ; FMad(a,b,c)
  %4117 = fadd fast float %4116, %4102
  %4118 = fmul fast float %4037, %3995
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4044, float %4118)  ; FMad(a,b,c)
  %4120 = fadd fast float %4119, %4101
  %4121 = fmul fast float %4065, %3993
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4067, float %4121)  ; FMad(a,b,c)
  %4123 = fmul fast float %4065, %3995
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4067, float %4123)  ; FMad(a,b,c)
  %4125 = fmul fast float %4066, %3993
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4068, float %4125)  ; FMad(a,b,c)
  %4127 = fmul fast float %4066, %3995
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4068, float %4127)  ; FMad(a,b,c)
  %4129 = add i32 %4106, 0
  %4130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4130, %dx.types.Handle %4109, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = and i32 %4029, 1024
  %4134 = icmp ne i32 %4133, 0
  %4135 = fcmp fast ogt float %4132, 0x3FE0101020000000
  %4136 = uitofp i1 %4135 to float
  %4137 = select i1 %4134, float %4136, float %4132
  %4138 = and i32 %4029, 8192
  %4139 = icmp ne i32 %4138, 0
  %4140 = select i1 %4139, float %4100, float 1.000000e+00
  %4141 = fmul fast float %4037, 2.000000e+00
  %4142 = fadd fast float %4141, -1.000000e+00
  %4143 = call float @dx.op.unary.f32(i32 6, float %4142)  ; FAbs(value)
  %4144 = fmul fast float %4143, %4026
  %4145 = fsub fast float %4144, %4026
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4044, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4150 = fmul fast float %4149, %4027
  %4151 = fsub fast float %4150, %4027
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4056, %3989
  %4154 = fsub fast float %4153, %3989
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fmul fast float %4114, %4140
  %4157 = fmul fast float %4156, %4111
  %4158 = fmul fast float %4157, %4146
  %4159 = fmul fast float %4158, %4137
  %4160 = fmul fast float %4159, %4152
  %4161 = fmul fast float %4160, %4155
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4165 = fsub fast float %4073, %4164
  %4166 = fmul fast float %4165, %4163
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4161, %3990
  %4169 = fadd fast float %4161, %3990
  %4170 = fmul fast float %4169, %3999
  %4171 = fsub fast float %4170, %3999
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = and i32 %4029, 128
  %4174 = icmp ne i32 %4173, 0
  %4175 = select i1 %4174, float %4172, float %4168
  %4176 = fmul fast float %4175, %4167
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = fcmp fast ugt float %4176, %4178
  br i1 %4179, label %4180, label %4078

; <label>:4180                                    ; preds = %4099
  %4181 = select i1 %4139, float %4176, float 0.000000e+00
  %4182 = fadd fast float %4181, %3953
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  br i1 %4139, label %4078, label %4184

; <label>:4184                                    ; preds = %4180
  %4185 = and i32 %4029, 4
  %4186 = and i32 %4029, 8
  %4187 = add i32 %3985, 0
  %4188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4187, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4188, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4195 = bitcast float %4011 to i32
  %4196 = and i32 %4195, 255
  %4197 = uitofp i32 %4196 to float
  %4198 = lshr i32 %4195, 8
  %4199 = and i32 %4198, 255
  %4200 = uitofp i32 %4199 to float
  %4201 = fmul fast float %4194, %4197
  %4202 = fadd fast float %4201, %4200
  %4203 = fmul fast float %4202, 0x3F70101000000000
  %4204 = add i32 %3986, 0
  %4205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4205, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = bitcast float %4005 to i32
  %4212 = and i32 %4211, 255
  %4213 = uitofp i32 %4212 to float
  %4214 = lshr i32 %4211, 8
  %4215 = and i32 %4214, 255
  %4216 = uitofp i32 %4215 to float
  %4217 = lshr i32 %4211, 16
  %4218 = and i32 %4217, 255
  %4219 = uitofp i32 %4218 to float
  %4220 = fmul fast float %4219, 0x3F70101000000000
  %4221 = fmul fast float %4207, %4213
  %4222 = fadd fast float %4221, %4216
  %4223 = fmul fast float %4222, 0x3F70101000000000
  %4224 = fadd fast float %4208, -5.000000e-01
  %4225 = fadd fast float %4210, -5.000000e-01
  %4226 = fmul fast float %4224, %4220
  %4227 = fmul fast float %4225, %4220
  %4228 = fadd fast float %4226, 5.000000e-01
  %4229 = fadd fast float %4227, 5.000000e-01
  %4230 = fmul fast float %4191, %4014
  %4231 = fmul fast float %4192, %4015
  %4232 = fmul fast float %4193, %4016
  %4233 = fmul fast float %4228, 2.000000e+00
  %4234 = fadd fast float %4233, -1.000000e+00
  %4235 = fmul fast float %4229, 2.000000e+00
  %4236 = fadd fast float %4235, -1.000000e+00
  %4237 = fadd fast float %4234, %4236
  %4238 = fmul fast float %4237, 5.000000e-01
  %4239 = fsub fast float %4234, %4236
  %4240 = fmul fast float %4239, 5.000000e-01
  %4241 = call float @dx.op.unary.f32(i32 6, float %4238)  ; FAbs(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4244 = fsub fast float %4242, %4243
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4240, float %4244, float %4238, float %4240, float %4244)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.unary.f32(i32 25, float %4245)  ; Rsqrt(value)
  %4247 = fmul fast float %4238, %4246
  %4248 = fmul fast float %4240, %4246
  %4249 = fmul fast float %4246, %4244
  %4250 = fmul fast float %4249, %3979
  %4251 = fmul fast float %4249, %3980
  %4252 = fmul fast float %4249, %3981
  %4253 = fmul fast float %4247, %4002
  %4254 = fmul fast float %4247, %4003
  %4255 = fmul fast float %4247, %4004
  %4256 = fadd fast float %4253, %4250
  %4257 = fadd fast float %4254, %4251
  %4258 = fadd fast float %4255, %4252
  %4259 = fmul fast float %4248, %4008
  %4260 = fmul fast float %4248, %4009
  %4261 = fmul fast float %4248, %4010
  %4262 = fadd fast float %4256, %4259
  %4263 = fadd fast float %4257, %4260
  %4264 = fadd fast float %4258, %4261
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 25, float %4265)  ; Rsqrt(value)
  %4267 = fmul fast float %4262, %4266
  %4268 = fmul fast float %4263, %4266
  %4269 = fmul fast float %4264, %4266
  %4270 = icmp ne i32 %4186, 0
  %4271 = select i1 %4270, float 1.000000e+00, float 0.000000e+00
  %4272 = fmul fast float %4176, %4271
  %4273 = and i32 %4029, 1
  %4274 = icmp eq i32 %4273, 0
  br i1 %4274, label %4275, label %4279

; <label>:4275                                    ; preds = %4184
  %4276 = fsub fast float %4267, %3962
  %4277 = fsub fast float %4268, %3963
  %4278 = fsub fast float %4269, %3964
  br label %4279

; <label>:4279                                    ; preds = %4275, %4184
  %4280 = phi float [ %4276, %4275 ], [ %4267, %4184 ]
  %4281 = phi float [ %4277, %4275 ], [ %4268, %4184 ]
  %4282 = phi float [ %4278, %4275 ], [ %4269, %4184 ]
  %4283 = fmul float %4282, %4272
  %4284 = fmul float %4281, %4272
  %4285 = fmul float %4280, %4272
  %4286 = fadd fast float %4285, %3962
  %4287 = fadd fast float %4284, %3963
  %4288 = fadd fast float %4283, %3964
  %4289 = icmp ne i32 %4185, 0
  %4290 = select i1 %4289, float 1.000000e+00, float 0.000000e+00
  %4291 = fmul fast float %4176, %4290
  %4292 = fsub fast float %4230, %3969
  %4293 = fsub fast float %4231, %3970
  %4294 = fsub fast float %4232, %3971
  %4295 = fmul fast float %4292, %4291
  %4296 = fmul fast float %4293, %4291
  %4297 = fmul fast float %4294, %4291
  %4298 = fadd fast float %4295, %3969
  %4299 = fadd fast float %4296, %3970
  %4300 = fadd fast float %4297, %3971
  %4301 = fsub fast float %4203, %3968
  %4302 = fmul fast float %4301, %4291
  %4303 = fadd fast float %4302, %3968
  %4304 = fmul fast float %4291, %3958
  %4305 = fsub fast float %3958, %4304
  %4306 = fmul fast float %4291, %3957
  %4307 = fsub fast float %3957, %4306
  %4308 = fadd fast float %4176, %3967
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fsub fast float %4223, %3966
  %4311 = fmul fast float %4310, %4272
  %4312 = fadd fast float %4311, %3966
  %4313 = fsub fast float %4209, %3965
  %4314 = fmul fast float %4313, %4272
  %4315 = fadd fast float %4314, %3965
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = fmul fast float %4319, %4316
  %4321 = fadd fast float %4320, %4318
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = bitcast float %4017 to i32
  %4324 = and i32 %4323, 65535
  %4325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4324)  ; LegacyF16ToF32(value)
  %4326 = lshr i32 %4323, 16
  %4327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4326)  ; LegacyF16ToF32(value)
  %4328 = fcmp fast oge float %4325, 0.000000e+00
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = select i1 %4328, float %4325, float %4330
  %4332 = fadd fast float %4331, %4327
  %4333 = fsub fast float %4322, %3956
  %4334 = fmul fast float %4333, %4176
  %4335 = fadd fast float %4334, %3956
  %4336 = fmul fast float %4332, %4176
  %4337 = call float @dx.op.binary.f32(i32 35, float %3955, float %4336)  ; FMax(a,b)
  %4338 = call float @dx.op.binary.f32(i32 35, float %3954, float %4176)  ; FMax(a,b)
  %4339 = and i32 %4029, 16
  %4340 = icmp eq i32 %4339, 0
  br i1 %4340, label %4363, label %4341

; <label>:4341                                    ; preds = %4279
  %4342 = bitcast float %4023 to i32
  %4343 = add i32 %4020, 0
  %4344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4343, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4344, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = and i32 %4342, 65535
  %4350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4349)  ; LegacyF16ToF32(value)
  %4351 = fmul fast float %4346, %4014
  %4352 = fmul fast float %4347, %4015
  %4353 = fmul fast float %4348, %4016
  %4354 = and i32 %4029, 16384
  %4355 = icmp ne i32 %4354, 0
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = select i1 %4355, float %4357, float 1.000000e+00
  %4359 = fmul fast float %4358, %4350
  %4360 = fmul fast float %4351, %4359
  %4361 = fmul fast float %4352, %4359
  %4362 = fmul fast float %4353, %4359
  br label %4363

; <label>:4363                                    ; preds = %4341, %4279
  %4364 = phi float [ %4360, %4341 ], [ 0.000000e+00, %4279 ]
  %4365 = phi float [ %4361, %4341 ], [ 0.000000e+00, %4279 ]
  %4366 = phi float [ %4362, %4341 ], [ 0.000000e+00, %4279 ]
  %4367 = fsub fast float %4364, %3959
  %4368 = fsub fast float %4365, %3960
  %4369 = fsub fast float %4366, %3961
  %4370 = fmul fast float %4367, %4176
  %4371 = fmul fast float %4368, %4176
  %4372 = fmul fast float %4369, %4176
  %4373 = fadd fast float %4370, %3959
  %4374 = fadd fast float %4371, %3960
  %4375 = fadd fast float %4372, %3961
  br label %4078

; <label>:4376                                    ; preds = %4078
  br label %4377

; <label>:4377                                    ; preds = %4376, %3897
  %4378 = phi float [ 0.000000e+00, %3897 ], [ %4079, %4376 ]
  %4379 = phi float [ %1161, %3897 ], [ %4080, %4376 ]
  %4380 = phi float [ %3866, %3897 ], [ %4081, %4376 ]
  %4381 = phi float [ %3847, %3897 ], [ %4082, %4376 ]
  %4382 = phi float [ %3846, %3897 ], [ %4083, %4376 ]
  %4383 = phi float [ 0.000000e+00, %3897 ], [ %4084, %4376 ]
  %4384 = phi float [ %3840, %3897 ], [ %4085, %4376 ]
  %4385 = phi float [ %3841, %3897 ], [ %4086, %4376 ]
  %4386 = phi float [ %3842, %3897 ], [ %4087, %4376 ]
  %4387 = phi float [ %3892, %3897 ], [ %4088, %4376 ]
  %4388 = phi float [ %3893, %3897 ], [ %4089, %4376 ]
  %4389 = phi float [ %3894, %3897 ], [ %4090, %4376 ]
  %4390 = phi float [ %3845, %3897 ], [ %4091, %4376 ]
  %4391 = phi float [ %3844, %3897 ], [ %4092, %4376 ]
  %4392 = phi float [ 0.000000e+00, %3897 ], [ %4093, %4376 ]
  %4393 = phi float [ %3843, %3897 ], [ %4094, %4376 ]
  %4394 = phi float [ %3837, %3897 ], [ %4095, %4376 ]
  %4395 = phi float [ %3838, %3897 ], [ %4096, %4376 ]
  %4396 = phi float [ %3839, %3897 ], [ %4097, %4376 ]
  %4397 = call float @dx.op.dot3.f32(i32 55, float %4387, float %4388, float %4389, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4398 = call float @dx.op.unary.f32(i32 25, float %4397)  ; Rsqrt(value)
  %4399 = fmul fast float %4398, %4387
  %4400 = fmul fast float %4398, %4388
  %4401 = fmul fast float %4398, %4389
  %4402 = fadd fast float %4392, %1161
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4404 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4400, float %4401, float %4399, float %4400, float %4401)  ; Dot3(ax,ay,az,bx,by,bz)
  %4405 = call float @dx.op.unary.f32(i32 25, float %4404)  ; Rsqrt(value)
  %4406 = fmul fast float %4405, %4399
  %4407 = fmul fast float %4405, %4400
  %4408 = fmul fast float %4405, %4401
  br label %4409

; <label>:4409                                    ; preds = %4377, %3834
  %4410 = phi float [ %4406, %4377 ], [ %3892, %3834 ]
  %4411 = phi float [ %4407, %4377 ], [ %3893, %3834 ]
  %4412 = phi float [ %4408, %4377 ], [ %3894, %3834 ]
  %4413 = phi float [ %4394, %4377 ], [ %3837, %3834 ]
  %4414 = phi float [ %4395, %4377 ], [ %3838, %3834 ]
  %4415 = phi float [ %4396, %4377 ], [ %3839, %3834 ]
  %4416 = phi float [ %4384, %4377 ], [ %3840, %3834 ]
  %4417 = phi float [ %4385, %4377 ], [ %3841, %3834 ]
  %4418 = phi float [ %4386, %4377 ], [ %3842, %3834 ]
  %4419 = phi float [ %4393, %4377 ], [ %3843, %3834 ]
  %4420 = phi float [ %4403, %4377 ], [ %1161, %3834 ]
  %4421 = phi float [ %4391, %4377 ], [ %3844, %3834 ]
  %4422 = phi float [ %4390, %4377 ], [ %3845, %3834 ]
  %4423 = phi float [ %4383, %4377 ], [ 0.000000e+00, %3834 ]
  %4424 = phi float [ %4382, %4377 ], [ %3846, %3834 ]
  %4425 = phi float [ %4378, %4377 ], [ 0.000000e+00, %3834 ]
  %4426 = phi float [ %4380, %4377 ], [ %3866, %3834 ]
  %4427 = phi float [ %4379, %4377 ], [ %1161, %3834 ]
  %4428 = phi float [ %4381, %4377 ], [ %3847, %3834 ]
  %4429 = fadd fast float %4419, 0xBFB99999A0000000
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fmul fast float %4430, 0x3FF1C71C80000000
  %4432 = call float @dx.op.binary.f32(i32 36, float %4419, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4433 = fsub fast float 1.000000e+00, %4431
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, %4413
  %4436 = fmul fast float %4434, %4414
  %4437 = fmul fast float %4434, %4415
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = fmul fast float %4431, %4413
  %4442 = fmul fast float %4431, %4414
  %4443 = fmul fast float %4431, %4415
  %4444 = fadd fast float %4441, %4432
  %4445 = fadd fast float %4442, %4432
  %4446 = fadd fast float %4443, %4432
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.i32 %4451, 3
  %4453 = and i32 %4452, 8
  %4454 = icmp ne i32 %4453, 0
  %4455 = call float @dx.op.binary.f32(i32 35, float %4438, float %4413)  ; FMax(a,b)
  %4456 = call float @dx.op.binary.f32(i32 35, float %4439, float %4413)  ; FMax(a,b)
  %4457 = call float @dx.op.binary.f32(i32 35, float %4440, float %4413)  ; FMax(a,b)
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = select i1 %222, float %4413, float %4438
  %4460 = select i1 %222, float %4458, float %4439
  %4461 = select i1 %222, float 1.000000e+00, float %4440
  %4462 = select i1 %4454, float %4455, float %4459
  %4463 = select i1 %4454, float %4456, float %4460
  %4464 = select i1 %4454, float %4457, float %4461
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4469 = fadd fast float %4466, %160
  %4470 = fadd fast float %4467, %161
  %4471 = fadd fast float %4468, %162
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = fsub fast float %4469, %4473
  %4476 = fsub fast float %4470, %4474
  %4477 = fmul fast float %4475, %4475
  %4478 = fmul fast float %4476, %4476
  %4479 = fadd fast float %4477, %4478
  %4480 = call float @dx.op.unary.f32(i32 24, float %4479)  ; Sqrt(value)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4472, 2
  %4482 = fcmp fast olt float %4480, %4481
  br i1 %4482, label %4483, label %4550

; <label>:4483                                    ; preds = %4409
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 0
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 0
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4484, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4486, 1
  %4492 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4493 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4494 = extractvalue %dx.types.CBufRet.f32 %4486, 3
  %4495 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4496 = fadd fast float %4493, %4469
  %4497 = fadd fast float %4494, %4470
  %4498 = fadd fast float %4495, %4471
  %4499 = fmul fast float %4496, %4485
  %4500 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4487, float %4499)  ; FMad(a,b,c)
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4489, float %4500)  ; FMad(a,b,c)
  %4502 = fmul fast float %4496, %4490
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4491, float %4502)  ; FMad(a,b,c)
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4492, float %4503)  ; FMad(a,b,c)
  %4505 = fsub fast float %4501, %4493
  %4506 = fsub fast float %4504, %4494
  %4507 = fsub fast float %4505, %4473
  %4508 = fadd fast float %4507, %4481
  %4509 = fsub fast float %4506, %4474
  %4510 = fadd fast float %4509, %4481
  %4511 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4512 = fmul fast float %4508, %4511
  %4513 = fmul fast float %4510, %4511
  %4514 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4516 = fsub fast float 1.000000e+00, %4514
  %4517 = fsub fast float 1.000000e+00, %4515
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = fcmp fast ugt float %4519, 0.000000e+00
  br i1 %4520, label %4521, label %4824

; <label>:4521                                    ; preds = %4483
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4524 = fmul fast float %4523, %4519
  %4525 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4526 = fadd fast float %4525, %4524
  %4527 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4528 = fadd fast float %4526, %4495
  %4529 = fmul fast float %4501, %4489
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4504, float %4492, float %4529)  ; FMad(a,b,c)
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4527, float %4530)  ; FMad(a,b,c)
  %4532 = fsub fast float %4531, %4495
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4535 = fsub fast float %4532, %4534
  %4536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.ResRet.f32 %4536, 2
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = fadd fast float %4541, %4537
  %4545 = fmul fast float %4544, 0x3F847AE140000000
  %4546 = fadd fast float %4542, %4538
  %4547 = fmul fast float %4546, 0x3F847AE140000000
  %4548 = fadd fast float %4543, %4539
  %4549 = fmul fast float %4548, 0x3F847AE140000000
  br label %4824

; <label>:4550                                    ; preds = %4409
  %4551 = and i32 %198, 1
  %4552 = icmp eq i32 %4551, 0
  br i1 %4552, label %4824, label %4553

; <label>:4553                                    ; preds = %4550
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4561 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4558, 1
  %4563 = extractvalue %dx.types.CBufRet.f32 %4554, 3
  %4564 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4565 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4566 = fadd fast float %4563, %4469
  %4567 = fadd fast float %4564, %4470
  %4568 = fadd fast float %4565, %4471
  %4569 = fmul fast float %4566, %4555
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4557, float %4569)  ; FMad(a,b,c)
  %4571 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4559, float %4570)  ; FMad(a,b,c)
  %4572 = fmul fast float %4566, %4560
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4561, float %4572)  ; FMad(a,b,c)
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4562, float %4573)  ; FMad(a,b,c)
  %4575 = fsub fast float %4571, %4563
  %4576 = fsub fast float %4574, %4564
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.CBufRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 3
  %4584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.i32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.i32 %4584, 1
  %4587 = udiv i32 %4586, %4585
  %4588 = fsub fast float %4575, %4578
  %4589 = fsub fast float %4576, %4579
  %4590 = call float @dx.op.binary.f32(i32 35, float %4588, float 0.000000e+00)  ; FMax(a,b)
  %4591 = call float @dx.op.binary.f32(i32 35, float %4589, float 0.000000e+00)  ; FMax(a,b)
  %4592 = call float @dx.op.binary.f32(i32 36, float %4590, float %4580)  ; FMin(a,b)
  %4593 = call float @dx.op.binary.f32(i32 36, float %4591, float %4581)  ; FMin(a,b)
  %4594 = add i32 %4585, -1
  %4595 = add i32 %4587, -1
  %4596 = fmul fast float %4592, %4583
  %4597 = fmul fast float %4593, %4583
  %4598 = fptoui float %4596 to i32
  %4599 = fptoui float %4597 to i32
  %4600 = call i32 @dx.op.binary.i32(i32 40, i32 %4598, i32 %4594)  ; UMin(a,b)
  %4601 = call i32 @dx.op.binary.i32(i32 40, i32 %4599, i32 %4595)  ; UMin(a,b)
  %4602 = mul i32 %4601, %4585
  %4603 = add i32 %4602, %4600
  %4604 = shl i32 %4603, 2
  %4605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.i32 %4605, 0
  %4607 = icmp eq i32 %4606, -1
  br i1 %4607, label %4824, label %4608

; <label>:4608                                    ; preds = %4553
  %4609 = mul i32 %4606, 148
  %4610 = add i32 %4609, 4
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = add i32 %4609, 8
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = add i32 %4609, 36
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = add i32 %4609, 60
  %4620 = add i32 %4609, 92
  %4621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.i32 %4621, 0
  %4623 = add i32 %4609, 116
  %4624 = fsub fast float %4575, %4612
  %4625 = fsub fast float %4576, %4615
  %4626 = fmul fast float %4583, %4624
  %4627 = fmul fast float %4583, %4625
  %4628 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4630 = fsub fast float 1.000000e+00, %4629
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4633 = call float @dx.op.unary.f32(i32 83, float %4628)  ; DerivCoarseX(value)
  %4634 = call float @dx.op.unary.f32(i32 83, float %4630)  ; DerivCoarseX(value)
  %4635 = call float @dx.op.unary.f32(i32 84, float %4628)  ; DerivCoarseY(value)
  %4636 = call float @dx.op.unary.f32(i32 84, float %4630)  ; DerivCoarseY(value)
  %4637 = fmul fast float %4633, %4632
  %4638 = fmul fast float %4634, %4632
  %4639 = fmul fast float %4635, %4632
  %4640 = fmul fast float %4636, %4632
  %4641 = call float @dx.op.dot2.f32(i32 54, float %4639, float %4640, float %4639, float %4640)  ; Dot2(ax,ay,bx,by)
  %4642 = call float @dx.op.dot2.f32(i32 54, float %4637, float %4638, float %4637, float %4638)  ; Dot2(ax,ay,bx,by)
  %4643 = call float @dx.op.binary.f32(i32 35, float %4642, float %4641)  ; FMax(a,b)
  %4644 = call float @dx.op.unary.f32(i32 23, float %4643)  ; Log(value)
  %4645 = fmul fast float %4644, 5.000000e-01
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4648 = fadd fast float %4647, %4645
  %4649 = call float @dx.op.binary.f32(i32 35, float %4648, float 0.000000e+00)  ; FMax(a,b)
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4652 = fadd fast float %4651, %4649
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4655 = fadd fast float %4652, %4654
  %4656 = add i32 %4622, 0
  %4657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4658 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4657, i32 0)  ; GetDimensions(handle,mipLevel)
  %4659 = extractvalue %dx.types.Dimensions %4658, 0
  %4660 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4659)  ; FirstbitLo(value)
  %4661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.i32 %4661, 1
  %4663 = sub nsw i32 %4662, %4660
  %4664 = sitofp i32 %4663 to float
  %4665 = fsub fast float %4655, %4664
  %4666 = call float @dx.op.binary.f32(i32 35, float %4665, float 0.000000e+00)  ; FMax(a,b)
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4657, %dx.types.Handle %46, float %4628, float %4630, float %4618, float undef, i32 0, i32 0, i32 undef, float %4666)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = fcmp ule float %4668, 0x3FE0101020000000
  %4670 = extractvalue %dx.types.CBufRet.i32 %4661, 0
  %4671 = and i32 %4670, 128
  %4672 = icmp ne i32 %4671, 0
  %4673 = and i1 %4669, %4672
  br i1 %4673, label %4824, label %4674

; <label>:4674                                    ; preds = %4608
  %4675 = add i32 %4609, 20
  %4676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4675, i32 undef)  ; BufferLoad(srv,index,wot)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = add i32 %4609, 24
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = add i32 %4609, 40
  %4682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = add i32 %4609, 96
  %4685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.i32 %4685, 0
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 2
  %4689 = fmul fast float %4688, %4628
  %4690 = fmul fast float %4688, %4630
  %4691 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4692 = fadd fast float %4689, %4691
  %4693 = fadd fast float %4690, %4691
  %4694 = add i32 %4686, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4694, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4695, i32 0)  ; GetDimensions(handle,mipLevel)
  %4697 = extractvalue %dx.types.Dimensions %4696, 0
  %4698 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4697)  ; FirstbitLo(value)
  %4699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.i32 %4699, 1
  %4701 = sub nsw i32 %4700, %4698
  %4702 = sitofp i32 %4701 to float
  %4703 = fsub fast float %4652, %4702
  %4704 = call float @dx.op.binary.f32(i32 35, float %4703, float 0.000000e+00)  ; FMax(a,b)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4695, %dx.types.Handle %46, float %4692, float %4693, float %4683, float undef, i32 0, i32 0, i32 undef, float %4704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = fmul fast float %4706, %4677
  %4708 = fadd fast float %4707, %4680
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.CBufRet.f32 %4709, 2
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 3
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 3
  %4717 = extractvalue %dx.types.CBufRet.f32 %4709, 3
  %4718 = fadd fast float %4714, %4575
  %4719 = fadd fast float %4716, %4576
  %4720 = fadd fast float %4708, %4717
  %4721 = fmul fast float %4718, %4710
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %4719, float %4711, float %4721)  ; FMad(a,b,c)
  %4723 = call float @dx.op.tertiary.f32(i32 46, float %4720, float %4712, float %4722)  ; FMad(a,b,c)
  %4724 = fsub fast float %4723, %4717
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4727 = fsub fast float %4724, %4726
  %4728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.i32 %4728, 0
  %4730 = call i32 @dx.op.binary.i32(i32 40, i32 %4606, i32 %4729)  ; UMin(a,b)
  %4731 = mul i32 %4730, 36
  %4732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4731, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.i32 %4732, 0
  %4734 = add i32 %4731, 4
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 0
  %4737 = fmul fast float %4736, %4628
  %4738 = fmul fast float %4736, %4630
  %4739 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4740 = fadd fast float %4737, %4739
  %4741 = fadd fast float %4738, %4739
  %4742 = icmp eq i32 %4733, 0
  br i1 %4742, label %4811, label %4743

; <label>:4743                                    ; preds = %4674
  br label %4744

; <label>:4744                                    ; preds = %4801, %4743
  %4745 = phi float [ %4802, %4801 ], [ 0.000000e+00, %4743 ]
  %4746 = phi float [ %4803, %4801 ], [ 0.000000e+00, %4743 ]
  %4747 = phi float [ %4804, %4801 ], [ 0.000000e+00, %4743 ]
  %4748 = phi float [ %4805, %4801 ], [ 0.000000e+00, %4743 ]
  %4749 = phi float [ %4806, %4801 ], [ 0.000000e+00, %4743 ]
  %4750 = phi float [ %4807, %4801 ], [ 0.000000e+00, %4743 ]
  %4751 = phi i32 [ %4808, %4801 ], [ 0, %4743 ]
  %4752 = shl i32 %4751, 2
  %4753 = add i32 %4619, %4752
  %4754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4753, i32 undef)  ; BufferLoad(srv,index,wot)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = add i32 %4623, %4752
  %4757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.i32 %4757, 0
  %4759 = add i32 %4758, 0
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4759, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4760, i32 0)  ; GetDimensions(handle,mipLevel)
  %4762 = extractvalue %dx.types.Dimensions %4761, 0
  %4763 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4762)  ; FirstbitLo(value)
  %4764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.i32 %4764, 1
  %4766 = sub nsw i32 %4765, %4763
  %4767 = sitofp i32 %4766 to float
  %4768 = fsub fast float %4652, %4767
  %4769 = call float @dx.op.binary.f32(i32 35, float %4768, float 0.000000e+00)  ; FMax(a,b)
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4760, %dx.types.Handle %46, float %4740, float %4741, float %4755, float undef, i32 0, i32 0, i32 undef, float %4769)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = fcmp fast ogt float %4771, 0.000000e+00
  br i1 %4772, label %4773, label %4801

; <label>:4773                                    ; preds = %4744
  %4774 = add i32 %4734, %4752
  %4775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.i32 %4775, 0
  %4777 = and i32 %4776, 32767
  %4778 = mul nuw nsw i32 %4777, 928
  %4779 = add nuw nsw i32 %4778, 48
  %4780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4779, i32 undef)  ; BufferLoad(srv,index,wot)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = add nuw nsw i32 %4778, 60
  %4785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4784, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = fmul fast float %4781, %4771
  %4790 = fmul fast float %4782, %4771
  %4791 = fmul fast float %4783, %4771
  %4792 = fadd fast float %4789, %4745
  %4793 = fadd fast float %4790, %4746
  %4794 = fadd fast float %4791, %4747
  %4795 = fmul fast float %4786, %4771
  %4796 = fmul fast float %4787, %4771
  %4797 = fmul fast float %4788, %4771
  %4798 = fadd fast float %4795, %4748
  %4799 = fadd fast float %4796, %4749
  %4800 = fadd fast float %4797, %4750
  br label %4801

; <label>:4801                                    ; preds = %4773, %4744
  %4802 = phi float [ %4792, %4773 ], [ %4745, %4744 ]
  %4803 = phi float [ %4793, %4773 ], [ %4746, %4744 ]
  %4804 = phi float [ %4794, %4773 ], [ %4747, %4744 ]
  %4805 = phi float [ %4798, %4773 ], [ %4748, %4744 ]
  %4806 = phi float [ %4799, %4773 ], [ %4749, %4744 ]
  %4807 = phi float [ %4800, %4773 ], [ %4750, %4744 ]
  %4808 = add nuw i32 %4751, 1
  %4809 = icmp eq i32 %4808, %4733
  br i1 %4809, label %4810, label %4744

; <label>:4810                                    ; preds = %4801
  br label %4811

; <label>:4811                                    ; preds = %4810, %4674
  %4812 = phi float [ 0.000000e+00, %4674 ], [ %4802, %4810 ]
  %4813 = phi float [ 0.000000e+00, %4674 ], [ %4803, %4810 ]
  %4814 = phi float [ 0.000000e+00, %4674 ], [ %4804, %4810 ]
  %4815 = phi float [ 0.000000e+00, %4674 ], [ %4805, %4810 ]
  %4816 = phi float [ 0.000000e+00, %4674 ], [ %4806, %4810 ]
  %4817 = phi float [ 0.000000e+00, %4674 ], [ %4807, %4810 ]
  %4818 = fadd fast float %4815, %4812
  %4819 = fmul fast float %4818, 0x3F847AE140000000
  %4820 = fadd fast float %4816, %4813
  %4821 = fmul fast float %4820, 0x3F847AE140000000
  %4822 = fadd fast float %4817, %4814
  %4823 = fmul fast float %4822, 0x3F847AE140000000
  br label %4824

; <label>:4824                                    ; preds = %4811, %4608, %4553, %4550, %4521, %4483
  %4825 = phi float [ %4535, %4521 ], [ -1.310720e+05, %4483 ], [ %4727, %4811 ], [ -1.310720e+05, %4553 ], [ -1.310720e+05, %4608 ], [ -1.310720e+05, %4550 ]
  %4826 = phi float [ %4545, %4521 ], [ 0.000000e+00, %4483 ], [ %4819, %4811 ], [ 0.000000e+00, %4553 ], [ 0.000000e+00, %4608 ], [ 0.000000e+00, %4550 ]
  %4827 = phi float [ %4547, %4521 ], [ 0.000000e+00, %4483 ], [ %4821, %4811 ], [ 0.000000e+00, %4553 ], [ 0.000000e+00, %4608 ], [ 0.000000e+00, %4550 ]
  %4828 = phi float [ %4549, %4521 ], [ 0.000000e+00, %4483 ], [ %4823, %4811 ], [ 0.000000e+00, %4553 ], [ 0.000000e+00, %4608 ], [ 0.000000e+00, %4550 ]
  %4829 = phi i1 [ true, %4521 ], [ false, %4483 ], [ true, %4811 ], [ false, %4553 ], [ false, %4608 ], [ false, %4550 ]
  %4830 = and i32 %198, 3
  %4831 = icmp eq i32 %4830, 1
  %4832 = select i1 %4831, float 1.000000e+00, float 0.000000e+00
  %4833 = fsub fast float %4825, %162
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = select i1 %4829, float %4834, float 1.000000e+00
  %4836 = fmul fast float %4835, %4832
  %4837 = icmp eq i32 %4830, 3
  %4838 = select i1 %4837, float 1.000000e+00, float %4836
  %4839 = call float @dx.op.binary.f32(i32 35, float %4425, float %4838)  ; FMax(a,b)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fcmp fast une float %4840, 0.000000e+00
  %4842 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  br i1 %4841, label %4851, label %4844

; <label>:4844                                    ; preds = %4824
  %4845 = fmul fast float %4843, %160
  %4846 = fmul fast float %4843, %161
  %4847 = fmul fast float %4843, %162
  %4848 = fsub fast float -0.000000e+00, %4845
  %4849 = fsub fast float -0.000000e+00, %4846
  %4850 = fsub fast float -0.000000e+00, %4847
  br label %5019

; <label>:4851                                    ; preds = %4824
  %4852 = fmul fast float %160, %4843
  %4853 = fsub fast float -0.000000e+00, %4852
  %4854 = fmul fast float %161, %4843
  %4855 = fsub fast float -0.000000e+00, %4854
  %4856 = fmul fast float %162, %4843
  %4857 = fsub fast float -0.000000e+00, %4856
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4855, float %4857, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = fmul fast float %4840, 2.500000e+00
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fmul fast float %4840, 0x4013FFFFE0000000
  %4862 = fadd fast float %4861, 0xBFFFFFFFE0000000
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %4840, 0x4004000020000000
  %4865 = fadd fast float %4864, 0xBFF8000040000000
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4868 = fmul fast float %4429, 1.000000e+01
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fmul fast float %4869, 2.000000e+00
  %4871 = fsub fast float 3.000000e+00, %4870
  %4872 = fmul fast float %4869, %4869
  %4873 = fmul fast float %4872, %4871
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = fsub fast float 0x3FE3333340000000, %4450
  %4876 = fmul fast float %4875, 0x400AAAAAA0000000
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = fmul fast float %4874, %4877
  %4879 = fmul fast float %4462, 0x3FEA2B8620000000
  %4880 = fmul fast float %4463, 0x3FEA2B8620000000
  %4881 = fmul fast float %4464, 0x3FEA2B8620000000
  %4882 = fadd fast float %4879, 0x3FC81DFBA0000000
  %4883 = fmul fast float %4882, %4462
  %4884 = fadd fast float %4883, 0x3F910E6020000000
  %4885 = fadd fast float %4880, 0x3FC81DFBA0000000
  %4886 = fmul fast float %4885, %4463
  %4887 = fadd fast float %4886, 0x3F910E6020000000
  %4888 = fadd fast float %4881, 0x3FC81DFBA0000000
  %4889 = fmul fast float %4888, %4464
  %4890 = fadd fast float %4889, 0x3F910E6020000000
  %4891 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = fsub fast float %4891, %4462
  %4895 = fsub fast float %4892, %4463
  %4896 = fsub fast float %4893, %4464
  %4897 = fmul fast float %4894, %4867
  %4898 = fmul fast float %4897, %4878
  %4899 = fmul fast float %4895, %4867
  %4900 = fmul fast float %4899, %4878
  %4901 = fmul fast float %4896, %4867
  %4902 = fmul fast float %4901, %4878
  %4903 = fadd fast float %4898, %4462
  %4904 = fadd fast float %4900, %4463
  %4905 = fadd fast float %4902, %4464
  %4906 = fmul fast float %4422, %4422
  %4907 = fmul fast float %4906, %4906
  %4908 = fadd fast float %4863, 1.000000e+00
  %4909 = fsub fast float %4908, %4878
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fsub fast float 1.000000e+00, %4907
  %4914 = call float @dx.op.binary.f32(i32 36, float %4910, float %4913)  ; FMin(a,b)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4914, float %4915)  ; FMax(a,b)
  %4917 = fadd fast float %4912, 0xBFE4CCCCC0000000
  %4918 = fmul fast float %4917, 0x4006DB6DA0000000
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fmul fast float %4919, 2.000000e+00
  %4921 = fsub fast float 3.000000e+00, %4920
  %4922 = bitcast float %4447 to i32
  %4923 = ashr i32 %4922, 1
  %4924 = add nsw i32 %4923, 532487669
  %4925 = bitcast i32 %4924 to float
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = bitcast float %4926 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = fmul fast float %4929, 2.000000e+00
  %4931 = bitcast float %4448 to i32
  %4932 = ashr i32 %4931, 1
  %4933 = add nsw i32 %4932, 532487669
  %4934 = bitcast i32 %4933 to float
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = bitcast float %4935 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4938, 2.000000e+00
  %4940 = bitcast float %4449 to i32
  %4941 = ashr i32 %4940, 1
  %4942 = add nsw i32 %4941, 532487669
  %4943 = bitcast i32 %4942 to float
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, 2.000000e+00
  %4949 = fsub fast float 0x4002A9FBE0000000, %4930
  %4950 = fadd fast float %4930, 0x3FD54FDF00000000
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4949
  %4955 = fmul fast float %4954, %4954
  %4956 = fsub fast float 0x4002A9FBE0000000, %4939
  %4957 = fadd fast float %4939, 0x3FD54FDF00000000
  %4958 = bitcast float %4957 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = fmul fast float %4960, %4956
  %4962 = fmul fast float %4961, %4961
  %4963 = fsub fast float 0x4002A9FBE0000000, %4948
  %4964 = fadd fast float %4948, 0x3FD54FDF00000000
  %4965 = bitcast float %4964 to i32
  %4966 = sub nsw i32 2129859010, %4965
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, %4963
  %4969 = fmul fast float %4968, %4968
  %4970 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4955)  ; FMax(a,b)
  %4971 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4962)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4969)  ; FMax(a,b)
  %4973 = fsub fast float 1.000000e+00, %4858
  %4974 = fadd fast float %4973, %4874
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = fsub fast float 1.000000e+00, %4838
  %4977 = fmul fast float %4916, %4976
  %4978 = fmul fast float %4919, %4919
  %4979 = fmul fast float %4978, %4977
  %4980 = fmul fast float %4979, %4921
  %4981 = fmul fast float %4976, 0xBFE99999A0000000
  %4982 = fmul fast float %4981, %4867
  %4983 = fmul fast float %4982, %4878
  %4984 = fadd fast float %4983, 1.000000e+00
  %4985 = fadd fast float %4450, -1.000000e+00
  %4986 = fmul fast float %4984, %4985
  %4987 = fadd fast float %4986, 1.000000e+00
  %4988 = fsub fast float %4970, %4447
  %4989 = fsub fast float %4971, %4448
  %4990 = fsub fast float %4972, %4449
  %4991 = fmul fast float %4980, %4988
  %4992 = fmul fast float %4980, %4989
  %4993 = fmul fast float %4980, %4990
  %4994 = fadd fast float %4991, %4447
  %4995 = fadd fast float %4992, %4448
  %4996 = fadd fast float %4993, %4449
  %4997 = fsub fast float %104, %4410
  %4998 = fsub fast float %105, %4411
  %4999 = fsub fast float %106, %4412
  %5000 = fmul fast float %4980, %4997
  %5001 = fmul fast float %4980, %4998
  %5002 = fmul fast float %4980, %4999
  %5003 = fadd fast float %5000, %4410
  %5004 = fadd fast float %5001, %4411
  %5005 = fadd fast float %5002, %4412
  %5006 = fmul fast float %4980, %4975
  %5007 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = fmul fast float %5006, %5008
  %5010 = fadd fast float %5009, %5007
  %5011 = fsub fast float 1.000000e+00, %4422
  %5012 = fmul fast float %4980, %5011
  %5013 = fadd fast float %5012, %4422
  %5014 = call float @dx.op.dot3.f32(i32 55, float %5003, float %5004, float %5005, float %5003, float %5004, float %5005)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = call float @dx.op.unary.f32(i32 25, float %5014)  ; Rsqrt(value)
  %5016 = fmul fast float %5003, %5015
  %5017 = fmul fast float %5004, %5015
  %5018 = fmul fast float %5005, %5015
  br label %5019

; <label>:5019                                    ; preds = %4851, %4844
  %5020 = phi float [ %4850, %4844 ], [ %4857, %4851 ]
  %5021 = phi float [ %4849, %4844 ], [ %4855, %4851 ]
  %5022 = phi float [ %4848, %4844 ], [ %4853, %4851 ]
  %5023 = phi float [ %4847, %4844 ], [ %4856, %4851 ]
  %5024 = phi float [ %4846, %4844 ], [ %4854, %4851 ]
  %5025 = phi float [ %4845, %4844 ], [ %4852, %4851 ]
  %5026 = phi float [ %4447, %4844 ], [ %4994, %4851 ]
  %5027 = phi float [ %4448, %4844 ], [ %4995, %4851 ]
  %5028 = phi float [ %4449, %4844 ], [ %4996, %4851 ]
  %5029 = phi float [ %4410, %4844 ], [ %5016, %4851 ]
  %5030 = phi float [ %4411, %4844 ], [ %5017, %4851 ]
  %5031 = phi float [ %4412, %4844 ], [ %5018, %4851 ]
  %5032 = phi float [ %4462, %4844 ], [ %4903, %4851 ]
  %5033 = phi float [ %4463, %4844 ], [ %4904, %4851 ]
  %5034 = phi float [ %4464, %4844 ], [ %4905, %4851 ]
  %5035 = phi float [ %4450, %4844 ], [ %5010, %4851 ]
  %5036 = phi float [ %4422, %4844 ], [ %5013, %4851 ]
  %5037 = fsub fast float -0.000000e+00, %162
  %5038 = select i1 %222, float 0.000000e+00, float %5028
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %5022, float %5021, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5024, float %5023, float %5029, float %5030, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = fmul fast float %5041, 2.000000e+00
  %5043 = fmul fast float %5042, %5029
  %5044 = fmul fast float %5042, %5030
  %5045 = fmul fast float %5042, %5031
  %5046 = fsub fast float %5025, %5043
  %5047 = fsub fast float %5024, %5044
  %5048 = fsub fast float %5023, %5045
  %5049 = call float @dx.op.binary.f32(i32 36, float %5036, float 1.000000e+00)  ; FMin(a,b)
  %5050 = fsub fast float 1.000000e+00, %5036
  %5051 = bitcast float %5050 to i32
  %5052 = sub nsw i32 2129859010, %5051
  %5053 = bitcast i32 %5052 to float
  %5054 = fsub fast float 1.000000e+00, %68
  %5055 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.binary.f32(i32 35, float %5055, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5057 = fdiv fast float %5054, %5056
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, 5.000000e-01
  %5061 = fadd fast float %5060, 5.000000e-01
  %5062 = fmul fast float %5061, %68
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, %5057
  %5066 = fadd fast float %5062, %5065
  %5067 = fsub fast float 5.000000e-01, %5060
  %5068 = fmul fast float %5067, %5032
  %5069 = fmul fast float %5067, %5033
  %5070 = fmul fast float %5067, %5034
  %5071 = fadd fast float %5066, %5068
  %5072 = fadd fast float %5066, %5069
  %5073 = fadd fast float %5066, %5070
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, 5.000000e-01
  %5077 = fadd fast float %5076, 5.000000e-01
  %5078 = fmul fast float %5077, %68
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5057
  %5082 = fadd fast float %5078, %5081
  %5083 = fsub fast float 5.000000e-01, %5076
  %5084 = fmul fast float %5083, %5032
  %5085 = fmul fast float %5083, %5033
  %5086 = fmul fast float %5083, %5034
  %5087 = fadd fast float %5082, %5084
  %5088 = fadd fast float %5082, %5085
  %5089 = fadd fast float %5082, %5086
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = call float @dx.op.binary.f32(i32 36, float %5032, float %5091)  ; FMin(a,b)
  %5093 = fsub fast float 1.000000e+00, %5049
  %5094 = fmul fast float %5092, %5093
  %5095 = fsub fast float 1.000000e+00, %5094
  %5096 = bitcast float %5095 to i32
  %5097 = sub nsw i32 2129859010, %5096
  %5098 = bitcast i32 %5097 to float
  %5099 = call float @dx.op.binary.f32(i32 36, float %5033, float %5091)  ; FMin(a,b)
  %5100 = fmul fast float %5099, %5093
  %5101 = fsub fast float 1.000000e+00, %5100
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = call float @dx.op.binary.f32(i32 36, float %5034, float %5091)  ; FMin(a,b)
  %5106 = fmul fast float %5105, %5093
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = bitcast float %5107 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = fmul fast float %5049, %69
  %5112 = fmul fast float %5111, %5071
  %5113 = fmul fast float %5112, %5098
  %5114 = fmul fast float %5049, %70
  %5115 = fmul fast float %5114, %5072
  %5116 = fmul fast float %5115, %5104
  %5117 = fmul fast float %5049, %71
  %5118 = fmul fast float %5117, %5073
  %5119 = fmul fast float %5118, %5110
  %5120 = call float @dx.op.binary.f32(i32 36, float %5026, float %5091)  ; FMin(a,b)
  %5121 = fmul fast float %5120, %5093
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = bitcast float %5122 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = call float @dx.op.binary.f32(i32 36, float %5027, float %5091)  ; FMin(a,b)
  %5127 = fmul fast float %5126, %5093
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = call float @dx.op.binary.f32(i32 36, float %5038, float %5091)  ; FMin(a,b)
  %5133 = fmul fast float %5132, %5093
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = bitcast float %5134 to i32
  %5136 = sub nsw i32 2129859010, %5135
  %5137 = bitcast i32 %5136 to float
  %5138 = fmul fast float %5111, %5087
  %5139 = fmul fast float %5138, %5125
  %5140 = fmul fast float %5114, %5088
  %5141 = fmul fast float %5140, %5131
  %5142 = fmul fast float %5117, %5089
  %5143 = fmul fast float %5142, %5137
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5116, float %5119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = select i1 %222, float 0.000000e+00, float %5113
  %5146 = select i1 %222, float %5144, float %5116
  %5147 = select i1 %222, float 0.000000e+00, float %5119
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5141, float %5143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = select i1 %222, float 0.000000e+00, float %5139
  %5150 = select i1 %222, float %5148, float %5141
  %5151 = select i1 %222, float 0.000000e+00, float %5143
  %5152 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5153 = fmul fast float %5152, %5145
  %5154 = fmul fast float %5152, %5146
  %5155 = fmul fast float %5147, %5152
  %5156 = fmul fast float %5040, 9.843750e-01
  %5157 = fmul fast float %5035, 9.843750e-01
  %5158 = fadd fast float %5156, 7.812500e-03
  %5159 = fadd fast float %5157, 7.812500e-03
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5158, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 3
  %5163 = fmul fast float %5161, %5026
  %5164 = fmul fast float %5161, %5027
  %5165 = fmul fast float %5161, %5038
  %5166 = fadd fast float %5163, %5162
  %5167 = fadd fast float %5164, %5162
  %5168 = fadd fast float %5165, %5162
  %5169 = fcmp fast ogt float %4423, 0.000000e+00
  br i1 %5169, label %5170, label %5196

; <label>:5170                                    ; preds = %5019
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4423, float %5040, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = fadd fast float %5172, -5.000000e-01
  %5176 = fadd fast float %5173, -5.000000e-01
  %5177 = fadd fast float %5174, -5.000000e-01
  %5178 = fsub fast float 1.000000e+00, %5026
  %5179 = fsub fast float 1.000000e+00, %5027
  %5180 = fsub fast float 1.000000e+00, %5038
  %5181 = fmul fast float %5026, 4.000000e+00
  %5182 = fmul fast float %5181, %5178
  %5183 = fmul fast float %5182, %5175
  %5184 = fmul fast float %5027, 4.000000e+00
  %5185 = fmul fast float %5184, %5179
  %5186 = fmul fast float %5185, %5176
  %5187 = fmul fast float %5038, 4.000000e+00
  %5188 = fmul fast float %5187, %5180
  %5189 = fmul fast float %5188, %5177
  %5190 = fadd fast float %5183, %5166
  %5191 = fadd fast float %5186, %5167
  %5192 = fadd fast float %5189, %5168
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  br label %5196

; <label>:5196                                    ; preds = %5170, %5019
  %5197 = phi float [ %5193, %5170 ], [ %5166, %5019 ]
  %5198 = phi float [ %5194, %5170 ], [ %5167, %5019 ]
  %5199 = phi float [ %5195, %5170 ], [ %5168, %5019 ]
  %5200 = call float @dx.op.binary.f32(i32 35, float %5198, float %5199)  ; FMax(a,b)
  %5201 = call float @dx.op.binary.f32(i32 35, float %5197, float %5200)  ; FMax(a,b)
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %160, %160
  %5204 = fmul fast float %161, %161
  %5205 = fadd fast float %5204, %5203
  %5206 = fmul fast float %162, %162
  %5207 = fadd fast float %5205, %5206
  %5208 = call float @dx.op.unary.f32(i32 24, float %5207)  ; Sqrt(value)
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5211 = fsub fast float %5208, %5210
  %5212 = extractvalue %dx.types.CBufRet.f32 %5209, 2
  %5213 = fmul fast float %5211, %5212
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5216 = extractvalue %dx.types.CBufRet.f32 %5209, 3
  %5217 = fmul fast float %5214, %57
  %5218 = fmul fast float %5217, %5215
  %5219 = fmul fast float %5217, %5216
  %5220 = fadd fast float %5219, 1.000000e+00
  %5221 = fmul fast float %5202, %5153
  %5222 = fmul fast float %5221, %5220
  %5223 = fmul fast float %5202, %5154
  %5224 = fmul fast float %5223, %5220
  %5225 = fmul fast float %5202, %5155
  %5226 = fmul fast float %5225, %5220
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = fcmp fast ogt float %5227, 0x3E7FF19E20000000
  %5229 = fdiv fast float 1.000000e+00, %5227
  %5230 = select i1 %5228, float %5229, float 0.000000e+00
  %5231 = fmul fast float %5230, %5032
  %5232 = fmul fast float %5230, %5033
  %5233 = fmul fast float %5230, %5034
  %5234 = fadd fast float %5231, -1.000000e+00
  %5235 = fadd fast float %5232, -1.000000e+00
  %5236 = fadd fast float %5233, -1.000000e+00
  %5237 = fmul fast float %5234, 5.000000e-01
  %5238 = fmul fast float %5235, 5.000000e-01
  %5239 = fmul fast float %5236, 5.000000e-01
  %5240 = fadd fast float %5237, 1.000000e+00
  %5241 = fadd fast float %5238, 1.000000e+00
  %5242 = fadd fast float %5239, 1.000000e+00
  %5243 = fadd fast float %5218, %4424
  %5244 = fmul fast float %5197, %5149
  %5245 = fmul fast float %5198, %5150
  %5246 = fmul fast float %5199, %5151
  %5247 = fsub fast float 1.000000e+00, %5040
  %5248 = bitcast float %5247 to i32
  %5249 = sitofp i32 %5248 to float
  %5250 = fmul fast float %5249, 5.000000e+00
  %5251 = fadd fast float %5250, 0xC1EFBF8940000000
  %5252 = fptosi float %5251 to i32
  %5253 = bitcast i32 %5252 to float
  %5254 = fmul fast float %5243, %5253
  %5255 = fmul fast float %5221, %5254
  %5256 = fmul fast float %5255, %5240
  %5257 = fmul fast float %5223, %5254
  %5258 = fmul fast float %5257, %5241
  %5259 = fmul fast float %5225, %5254
  %5260 = fmul fast float %5259, %5242
  %5261 = fmul fast float %5222, %4420
  %5262 = fmul fast float %5224, %4420
  %5263 = fmul fast float %5226, %4420
  %5264 = fadd fast float %5244, %4416
  %5265 = fadd fast float %5264, %5256
  %5266 = fmul fast float %5265, %4420
  %5267 = fadd fast float %5245, %4417
  %5268 = fadd fast float %5267, %5258
  %5269 = fmul fast float %5268, %4420
  %5270 = fadd fast float %5246, %4418
  %5271 = fadd fast float %5270, %5260
  %5272 = fmul fast float %5271, %4420
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 3
  %5275 = fcmp fast oeq float %5274, 0.000000e+00
  br i1 %5275, label %6345, label %5276

; <label>:5276                                    ; preds = %5196
  %5277 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = select i1 %222, float %5285, float %5281
  %5289 = select i1 %222, float %5287, float %5282
  %5290 = select i1 %222, float %5286, float %5283
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5293 = fmul fast float %5292, %104
  %5294 = fmul fast float %5292, %105
  %5295 = fmul fast float %5292, %106
  %5296 = fadd fast float %5293, %160
  %5297 = fadd fast float %5294, %161
  %5298 = fadd fast float %5295, %162
  %5299 = fcmp fast olt float %5274, 0.000000e+00
  br i1 %5299, label %5924, label %5300

; <label>:5300                                    ; preds = %5276
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5305 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5310 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5315 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5316 = fmul fast float %5302, %5296
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5303, float %5316)  ; FMad(a,b,c)
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5304, float %5317)  ; FMad(a,b,c)
  %5319 = fadd fast float %5318, %5305
  %5320 = fmul fast float %5307, %5296
  %5321 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5308, float %5320)  ; FMad(a,b,c)
  %5322 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5309, float %5321)  ; FMad(a,b,c)
  %5323 = fadd fast float %5322, %5310
  %5324 = fmul fast float %5312, %5296
  %5325 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5313, float %5324)  ; FMad(a,b,c)
  %5326 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5314, float %5325)  ; FMad(a,b,c)
  %5327 = fadd fast float %5326, %5315
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.CBufRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5332 = fmul fast float %5331, %5319
  %5333 = fmul fast float %5331, %5323
  %5334 = fadd fast float %5332, %5329
  %5335 = fadd fast float %5333, %5330
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5340 = fmul fast float %5339, %5319
  %5341 = fmul fast float %5339, %5323
  %5342 = fadd fast float %5340, %5337
  %5343 = fadd fast float %5341, %5338
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5346 = fsub fast float %5345, %5327
  %5347 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5348 = fmul fast float %5346, %5347
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 2
  %5354 = fadd fast float %5353, %5351
  %5355 = fcmp fast ogt float %5354, 0.000000e+00
  br i1 %5355, label %5356, label %5380

; <label>:5356                                    ; preds = %5300
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5360 = fsub fast float %5342, %5358
  %5361 = fsub fast float %5343, %5359
  %5362 = fcmp fast olt float %5360, 0.000000e+00
  %5363 = fcmp fast olt float %5361, 0.000000e+00
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.CBufRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5369 = select i1 %5362, float %5365, float %5367
  %5370 = select i1 %5363, float %5366, float %5368
  %5371 = fmul fast float %5369, %5360
  %5372 = fmul fast float %5370, %5361
  %5373 = call float @dx.op.unary.f32(i32 6, float %5371)  ; FAbs(value)
  %5374 = call float @dx.op.unary.f32(i32 6, float %5372)  ; FAbs(value)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5376 = call float @dx.op.binary.f32(i32 35, float %5373, float %5374)  ; FMax(a,b)
  %5377 = fsub fast float %5375, %5376
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fmul fast float %5378, %5350
  br label %5380

; <label>:5380                                    ; preds = %5356, %5300
  %5381 = phi float [ %5379, %5356 ], [ 0.000000e+00, %5300 ]
  %5382 = extractvalue %dx.types.CBufRet.f32 %5328, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5384 = fadd fast float %5383, %5382
  %5385 = fcmp fast ogt float %5384, 0.000000e+00
  %5386 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  br i1 %5385, label %5387, label %5410

; <label>:5387                                    ; preds = %5380
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = fsub fast float %5334, %5389
  %5392 = fsub fast float %5335, %5390
  %5393 = fcmp fast olt float %5391, 0.000000e+00
  %5394 = fcmp fast olt float %5392, 0.000000e+00
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = select i1 %5393, float %5396, float %5398
  %5401 = select i1 %5394, float %5397, float %5399
  %5402 = fmul fast float %5400, %5391
  %5403 = fmul fast float %5401, %5392
  %5404 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5405 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5406 = call float @dx.op.binary.f32(i32 35, float %5404, float %5405)  ; FMax(a,b)
  %5407 = fsub fast float %5386, %5406
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = fmul fast float %5408, %5350
  br label %5410

; <label>:5410                                    ; preds = %5387, %5380
  %5411 = phi float [ %5409, %5387 ], [ 0.000000e+00, %5380 ]
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5418 = fsub fast float %5319, %5416
  %5419 = fsub fast float %5323, %5417
  %5420 = fcmp fast olt float %5418, 0.000000e+00
  %5421 = fcmp fast olt float %5419, 0.000000e+00
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5426 = extractvalue %dx.types.CBufRet.f32 %5422, 3
  %5427 = select i1 %5420, float %5423, float %5425
  %5428 = select i1 %5421, float %5424, float %5426
  %5429 = fmul fast float %5427, %5418
  %5430 = fmul fast float %5428, %5419
  %5431 = call float @dx.op.unary.f32(i32 6, float %5429)  ; FAbs(value)
  %5432 = call float @dx.op.unary.f32(i32 6, float %5430)  ; FAbs(value)
  %5433 = call float @dx.op.binary.f32(i32 35, float %5431, float %5432)  ; FMax(a,b)
  %5434 = fsub fast float %5386, %5433
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = call float @dx.op.binary.f32(i32 36, float %5435, float %5414)  ; FMin(a,b)
  %5437 = fmul fast float %5436, %5350
  %5438 = fsub fast float %5411, %5437
  %5439 = fsub fast float %5381, %5411
  %5440 = fsub fast float %5439, %5437
  %5441 = call float @dx.op.binary.f32(i32 35, float %5411, float %5381)  ; FMax(a,b)
  %5442 = call float @dx.op.binary.f32(i32 35, float %5437, float %5441)  ; FMax(a,b)
  %5443 = fcmp fast olt float %5442, 1.000000e+00
  br i1 %5443, label %5444, label %5842, !dx.controlflow.hints !95

; <label>:5444                                    ; preds = %5410
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = fcmp fast une float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5842, !dx.controlflow.hints !96

; <label>:5448                                    ; preds = %5444
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5453 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5464 = fmul fast float %5450, %5296
  %5465 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5451, float %5464)  ; FMad(a,b,c)
  %5466 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5452, float %5465)  ; FMad(a,b,c)
  %5467 = fadd fast float %5466, %5453
  %5468 = fmul fast float %5455, %5296
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5456, float %5468)  ; FMad(a,b,c)
  %5470 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5457, float %5469)  ; FMad(a,b,c)
  %5471 = fadd fast float %5470, %5458
  %5472 = fmul fast float %5460, %5296
  %5473 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5461, float %5472)  ; FMad(a,b,c)
  %5474 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5462, float %5473)  ; FMad(a,b,c)
  %5475 = fadd fast float %5474, %5463
  %5476 = fcmp fast oge float %5467, 1.000000e+00
  %5477 = fcmp fast oge float %5471, 1.000000e+00
  %5478 = or i1 %5476, %5477
  %5479 = fcmp fast olt float %5467, 0.000000e+00
  %5480 = fcmp fast olt float %5471, 0.000000e+00
  %5481 = or i1 %5479, %5480
  %5482 = or i1 %5478, %5481
  br i1 %5482, label %5842, label %5483, !dx.controlflow.hints !97

; <label>:5483                                    ; preds = %5448
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.i32 %5488, 2
  %5490 = uitofp i32 %5489 to float
  %5491 = extractvalue %dx.types.CBufRet.i32 %5488, 3
  %5492 = uitofp i32 %5491 to float
  %5493 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5494 = fmul fast float %5493, 2.000000e+00
  %5495 = fsub fast float %5467, %5485
  %5496 = fsub fast float %5471, %5486
  %5497 = fmul fast float %5494, %5495
  %5498 = fmul fast float %5494, %5496
  %5499 = fdiv fast float 1.000000e+00, %5279
  %5500 = fmul fast float %5498, %5499
  %5501 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5502 = fmul fast float %5487, %5298
  %5503 = fmul fast float %5502, %5494
  %5504 = call float @dx.op.unary.f32(i32 6, float %5503)  ; FAbs(value)
  %5505 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5506 = call float @dx.op.binary.f32(i32 35, float %5504, float %5501)  ; FMax(a,b)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5505, float %5506)  ; FMax(a,b)
  %5508 = fmul fast float %5507, 2.000000e+00
  %5509 = call float @dx.op.unary.f32(i32 23, float %5508)  ; Log(value)
  %5510 = call float @dx.op.binary.f32(i32 35, float %5509, float %5490)  ; FMax(a,b)
  %5511 = call float @dx.op.unary.f32(i32 22, float %5510)  ; Frc(value)
  %5512 = fadd fast float %5511, 0xBFEA666660000000
  %5513 = fmul fast float %5512, 8.000000e+00
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = call float @dx.op.unary.f32(i32 27, float %5510)  ; Round_ni(value)
  %5516 = fadd fast float %5515, %5514
  %5517 = call float @dx.op.binary.f32(i32 36, float %5516, float %5492)  ; FMin(a,b)
  %5518 = call float @dx.op.unary.f32(i32 27, float %5517)  ; Round_ni(value)
  %5519 = fsub fast float -0.000000e+00, %5518
  %5520 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5521 = fmul fast float %5520, %5494
  %5522 = fmul fast float %5521, %5467
  %5523 = fmul fast float %5521, %5471
  %5524 = fmul fast float %5522, 2.500000e-01
  %5525 = fmul fast float %5523, 2.500000e-01
  %5526 = fadd fast float %5524, 5.000000e-01
  %5527 = fadd fast float %5525, 5.000000e-01
  %5528 = fsub fast float %5492, %5490
  %5529 = fptoui float %5528 to i32
  %5530 = add i32 %5529, 320
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5530)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.f32 %5531, 1
  %5534 = fcmp fast une float %5517, %5492
  %5535 = fsub fast float %5467, %5532
  %5536 = fsub fast float %5471, %5533
  %5537 = call float @dx.op.unary.f32(i32 6, float %5535)  ; FAbs(value)
  %5538 = call float @dx.op.unary.f32(i32 6, float %5536)  ; FAbs(value)
  %5539 = fmul fast float %5537, %5521
  %5540 = fmul fast float %5538, %5521
  %5541 = fcmp fast olt float %5539, 1.000000e+00
  %5542 = fcmp fast olt float %5540, 1.000000e+00
  %5543 = and i1 %5541, %5542
  %5544 = or i1 %5534, %5543
  br i1 %5544, label %5545, label %5842, !dx.controlflow.hints !98

; <label>:5545                                    ; preds = %5483
  %5546 = fmul fast float %5523, 5.000000e-01
  %5547 = fmul fast float %5522, 5.000000e-01
  %5548 = fadd fast float %5546, 5.000000e-01
  %5549 = fadd fast float %5547, 5.000000e-01
  %5550 = sitofp i32 %5489 to float
  %5551 = fsub fast float %5517, %5550
  %5552 = call float @dx.op.unary.f32(i32 27, float %5551)  ; Round_ni(value)
  %5553 = call float @dx.op.unary.f32(i32 22, float %5517)  ; Frc(value)
  %5554 = call float @dx.op.unary.f32(i32 22, float %5549)  ; Frc(value)
  %5555 = call float @dx.op.unary.f32(i32 22, float %5548)  ; Frc(value)
  %5556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5554, float %5555, float %5552, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.ResRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.ResRet.f32 %5556, 2
  %5560 = extractvalue %dx.types.ResRet.f32 %5556, 3
  %5561 = fcmp fast ogt float %5553, 0.000000e+00
  br i1 %5561, label %5562, label %5583, !dx.controlflow.hints !99

; <label>:5562                                    ; preds = %5545
  %5563 = fadd fast float %5552, 1.000000e+00
  %5564 = call float @dx.op.unary.f32(i32 22, float %5526)  ; Frc(value)
  %5565 = call float @dx.op.unary.f32(i32 22, float %5527)  ; Frc(value)
  %5566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5564, float %5565, float %5563, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5570 = extractvalue %dx.types.ResRet.f32 %5566, 3
  %5571 = fsub fast float %5567, %5557
  %5572 = fsub fast float %5568, %5558
  %5573 = fsub fast float %5569, %5559
  %5574 = fsub fast float %5570, %5560
  %5575 = fmul fast float %5571, %5553
  %5576 = fmul fast float %5572, %5553
  %5577 = fmul fast float %5573, %5553
  %5578 = fmul fast float %5574, %5553
  %5579 = fadd fast float %5575, %5557
  %5580 = fadd fast float %5576, %5558
  %5581 = fadd fast float %5577, %5559
  %5582 = fadd fast float %5578, %5560
  br label %5583

; <label>:5583                                    ; preds = %5562, %5545
  %5584 = phi float [ %5579, %5562 ], [ %5557, %5545 ]
  %5585 = phi float [ %5580, %5562 ], [ %5558, %5545 ]
  %5586 = phi float [ %5581, %5562 ], [ %5559, %5545 ]
  %5587 = phi float [ %5582, %5562 ], [ %5560, %5545 ]
  %5588 = fadd fast float %5584, -5.000000e-01
  %5589 = fadd fast float %5586, -5.000000e-01
  %5590 = fmul fast float %5588, 0xBFD5555560000000
  %5591 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5589, float %5590)  ; FMad(a,b,c)
  %5592 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5585, float 0.000000e+00)  ; FMad(a,b,c)
  %5593 = fadd fast float %5592, %5587
  %5594 = fmul fast float %5588, -7.500000e-01
  %5595 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5589, float %5594)  ; FMad(a,b,c)
  %5596 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5585, float 0.000000e+00)  ; FMad(a,b,c)
  %5597 = fadd fast float %5596, %5587
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = fsub fast float %5601, %5591
  %5606 = fsub fast float %5602, %5593
  %5607 = fsub fast float %5603, %5595
  %5608 = fsub fast float %5604, %5597
  %5609 = fmul fast float %5605, %5599
  %5610 = fmul fast float %5606, %5599
  %5611 = fmul fast float %5607, %5599
  %5612 = fmul fast float %5608, %5599
  %5613 = fadd fast float %5609, %5591
  %5614 = fadd fast float %5610, %5593
  %5615 = fadd fast float %5611, %5595
  %5616 = fadd fast float %5612, %5597
  %5617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5618 = extractvalue %dx.types.ResRet.i32 %5617, 0
  %5619 = and i32 %5618, 536870911
  %5620 = uitofp i32 %5619 to float
  %5621 = fmul fast float %5620, %5467
  %5622 = fmul fast float %5620, %5471
  %5623 = fptoui float %5621 to i32
  %5624 = fptoui float %5622 to i32
  %5625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.i32 %5625, 0
  %5627 = and i32 %5626, 31
  %5628 = lshr i32 %5623, %5627
  %5629 = lshr i32 %5624, %5627
  %5630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5631 = extractvalue %dx.types.ResRet.i32 %5630, 0
  %5632 = and i32 %5631, 31
  %5633 = shl i32 1, %5632
  %5634 = call i32 @dx.op.binary.i32(i32 40, i32 %5633, i32 4)  ; UMin(a,b)
  %5635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5636 = extractvalue %dx.types.ResRet.i32 %5635, 0
  %5637 = extractvalue %dx.types.ResRet.i32 %5635, 1
  %5638 = icmp eq i32 %5634, 0
  br i1 %5638, label %5680, label %5639

; <label>:5639                                    ; preds = %5583
  br label %5640

; <label>:5640                                    ; preds = %5668, %5639
  %5641 = phi i32 [ %5671, %5668 ], [ 0, %5639 ]
  %5642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5643 = extractvalue %dx.types.ResRet.i32 %5642, 0
  %5644 = lshr i32 %5643, 16
  %5645 = and i32 %5644, 31
  %5646 = shl i32 %5629, %5645
  %5647 = add i32 %5646, %5628
  %5648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.i32 %5648, 0
  %5650 = and i32 %5649, 31
  %5651 = shl i32 %5647, %5650
  %5652 = add i32 %5651, %5641
  %5653 = shl i32 %5652, 2
  %5654 = add i32 %5653, 32
  %5655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5654, i32 undef)  ; BufferLoad(srv,index,wot)
  %5656 = extractvalue %dx.types.ResRet.i32 %5655, 0
  %5657 = icmp slt i32 %5656, 0
  %5658 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5641
  %5659 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5641
  %5660 = bitcast float* %5658 to i32*
  %5661 = bitcast float* %5659 to i32*
  br i1 %5657, label %5662, label %5668

; <label>:5662                                    ; preds = %5640
  %5663 = and i32 %5656, 1073741823
  %5664 = add nuw nsw i32 %5663, 20
  %5665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.i32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.i32 %5665, 1
  br label %5668

; <label>:5668                                    ; preds = %5662, %5640
  %5669 = phi i32 [ %5666, %5662 ], [ %5636, %5640 ]
  %5670 = phi i32 [ %5667, %5662 ], [ %5637, %5640 ]
  store i32 %5669, i32* %5660, align 4
  store i32 %5670, i32* %5661, align 4
  %5671 = add nuw i32 %5641, 1
  %5672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.i32 %5672, 2
  %5674 = icmp eq i32 %5673, 0
  %5675 = icmp ugt i32 %5656, -1073741825
  %5676 = and i1 %5675, %5674
  %5677 = icmp ult i32 %5671, %5634
  %5678 = and i1 %5676, %5677
  br i1 %5678, label %5640, label %5679

; <label>:5679                                    ; preds = %5668
  br label %5680

; <label>:5680                                    ; preds = %5679, %5583
  %5681 = phi i32 [ 0, %5583 ], [ %5671, %5679 ]
  %5682 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5683 = fptoui float %5682 to i32
  %5684 = icmp eq i32 %5683, 0
  br i1 %5684, label %5736, label %5685

; <label>:5685                                    ; preds = %5680
  br label %5686

; <label>:5686                                    ; preds = %5731, %5685
  %5687 = phi i32 [ %5732, %5731 ], [ %5681, %5685 ]
  %5688 = phi i32 [ %5733, %5731 ], [ 0, %5685 ]
  %5689 = lshr i32 %5688, 2
  %5690 = and i32 %5688, 3
  %5691 = add nuw nsw i32 %5689, 83
  %5692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5691)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.i32 %5692, 0
  %5694 = extractvalue %dx.types.CBufRet.i32 %5692, 1
  %5695 = extractvalue %dx.types.CBufRet.i32 %5692, 2
  %5696 = extractvalue %dx.types.CBufRet.i32 %5692, 3
  %5697 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5693, i32* %5697, align 4
  %5698 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5694, i32* %5698, align 4
  %5699 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5695, i32* %5699, align 4
  %5700 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5696, i32* %5700, align 4
  %5701 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5690
  %5702 = load i32, i32* %5701, align 4, !tbaa !100, !noalias !104
  %5703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5704 = extractvalue %dx.types.ResRet.i32 %5703, 0
  %5705 = lshr i32 %5704, 16
  %5706 = and i32 %5705, 31
  %5707 = shl i32 %5629, %5706
  %5708 = add i32 %5707, %5628
  %5709 = shl i32 %5708, 2
  %5710 = add i32 %5709, %5702
  %5711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5710, i32 undef)  ; BufferLoad(srv,index,wot)
  %5712 = extractvalue %dx.types.ResRet.i32 %5711, 0
  %5713 = icmp eq i32 %5712, 0
  br i1 %5713, label %5731, label %5714

; <label>:5714                                    ; preds = %5686
  %5715 = icmp slt i32 %5712, 0
  %5716 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5687
  %5717 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5687
  %5718 = bitcast float* %5716 to i32*
  %5719 = bitcast float* %5717 to i32*
  br i1 %5715, label %5720, label %5727

; <label>:5720                                    ; preds = %5714
  %5721 = and i32 %5712, 1073741823
  %5722 = add i32 %5702, 20
  %5723 = add i32 %5722, %5721
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = extractvalue %dx.types.ResRet.i32 %5724, 1
  br label %5727

; <label>:5727                                    ; preds = %5720, %5714
  %5728 = phi i32 [ %5725, %5720 ], [ %5636, %5714 ]
  %5729 = phi i32 [ %5726, %5720 ], [ %5637, %5714 ]
  store i32 %5728, i32* %5718, align 4
  store i32 %5729, i32* %5719, align 4
  %5730 = add i32 %5687, 1
  br label %5731

; <label>:5731                                    ; preds = %5727, %5686
  %5732 = phi i32 [ %5687, %5686 ], [ %5730, %5727 ]
  %5733 = add nuw i32 %5688, 1
  %5734 = icmp eq i32 %5733, %5683
  br i1 %5734, label %5735, label %5686

; <label>:5735                                    ; preds = %5731
  br label %5736

; <label>:5736                                    ; preds = %5735, %5680
  %5737 = phi i32 [ %5681, %5680 ], [ %5732, %5735 ]
  %5738 = icmp eq i32 %5737, 1
  %5739 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %5740 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %5738, label %5741, label %5744

; <label>:5741                                    ; preds = %5736
  %5742 = load float, float* %5739, align 4
  %5743 = load float, float* %5740, align 4
  br label %5771

; <label>:5744                                    ; preds = %5736
  %5745 = load float, float* %5739, align 4
  %5746 = load float, float* %5740, align 4
  %5747 = fdiv fast float 1.000000e+00, %5746
  %5748 = fsub fast float %5745, %5747
  %5749 = icmp ugt i32 %5737, 1
  br i1 %5749, label %5750, label %5766

; <label>:5750                                    ; preds = %5744
  br label %5751

; <label>:5751                                    ; preds = %5751, %5750
  %5752 = phi float [ %5761, %5751 ], [ %5748, %5750 ]
  %5753 = phi float [ %5762, %5751 ], [ %5745, %5750 ]
  %5754 = phi i32 [ %5763, %5751 ], [ 1, %5750 ]
  %5755 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5754
  %5756 = load float, float* %5755, align 4
  %5757 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5754
  %5758 = load float, float* %5757, align 4
  %5759 = fdiv fast float 1.000000e+00, %5758
  %5760 = fsub fast float %5756, %5759
  %5761 = call float @dx.op.binary.f32(i32 36, float %5752, float %5760)  ; FMin(a,b)
  %5762 = call float @dx.op.binary.f32(i32 35, float %5753, float %5756)  ; FMax(a,b)
  %5763 = add nuw i32 %5754, 1
  %5764 = icmp eq i32 %5763, %5737
  br i1 %5764, label %5765, label %5751

; <label>:5765                                    ; preds = %5751
  br label %5766

; <label>:5766                                    ; preds = %5765, %5744
  %5767 = phi float [ %5748, %5744 ], [ %5761, %5765 ]
  %5768 = phi float [ %5745, %5744 ], [ %5762, %5765 ]
  %5769 = fsub fast float %5768, %5767
  %5770 = fdiv fast float 1.000000e+00, %5769
  br label %5771

; <label>:5771                                    ; preds = %5766, %5741
  %5772 = phi float [ %5742, %5741 ], [ %5768, %5766 ]
  %5773 = phi float [ %5743, %5741 ], [ %5770, %5766 ]
  %5774 = fadd fast float %5475, %5772
  %5775 = fmul fast float %5774, %5773
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fmul fast float %5776, 2.000000e+00
  %5778 = fsub fast float 1.000000e+00, %5777
  %5779 = fmul fast float %5613, %5613
  %5780 = fsub fast float %5614, %5779
  %5781 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5780)  ; FMax(a,b)
  %5782 = fdiv fast float 1.000000e+00, %5781
  %5783 = fmul fast float %5614, %5613
  %5784 = fsub fast float %5615, %5783
  %5785 = fsub fast float %5778, %5613
  %5786 = fmul fast float %5778, %5778
  %5787 = fsub fast float %5786, %5614
  %5788 = fmul fast float %5782, %5784
  %5789 = fmul fast float %5788, %5785
  %5790 = fsub fast float %5787, %5789
  %5791 = fmul fast float %5614, %5614
  %5792 = fsub fast float %5616, %5791
  %5793 = fmul fast float %5784, %5784
  %5794 = fmul fast float %5793, %5782
  %5795 = fsub fast float %5792, %5794
  %5796 = fdiv fast float %5790, %5795
  %5797 = fmul fast float %5796, %5784
  %5798 = fsub fast float %5785, %5797
  %5799 = fmul fast float %5798, %5782
  %5800 = fmul fast float %5799, %5613
  %5801 = fsub fast float 1.000000e+00, %5800
  %5802 = fmul fast float %5796, %5614
  %5803 = fsub fast float %5801, %5802
  %5804 = fmul fast float %5799, %5799
  %5805 = fmul fast float %5796, 4.000000e+00
  %5806 = fmul fast float %5805, %5803
  %5807 = fsub fast float %5804, %5806
  %5808 = call float @dx.op.unary.f32(i32 24, float %5807)  ; Sqrt(value)
  %5809 = fcmp fast oge float %5799, 0.000000e+00
  %5810 = fsub fast float -0.000000e+00, %5808
  %5811 = select i1 %5809, float %5810, float %5808
  %5812 = fsub fast float %5811, %5799
  %5813 = fdiv fast float %5812, %5796
  %5814 = fdiv fast float %5803, %5812
  %5815 = fmul fast float %5813, 5.000000e-01
  %5816 = fmul fast float %5814, 2.000000e+00
  %5817 = select i1 %5809, float %5815, float %5816
  %5818 = select i1 %5809, float %5816, float %5815
  %5819 = call float @dx.op.binary.f32(i32 35, float %5817, float %5818)  ; FMax(a,b)
  %5820 = call float @dx.op.binary.f32(i32 36, float %5817, float %5818)  ; FMin(a,b)
  %5821 = fcmp fast ogt float %5778, %5819
  %5822 = fsub fast float %5778, %5820
  %5823 = fsub fast float %5778, %5819
  %5824 = fsub fast float %5819, %5820
  %5825 = select i1 %5821, float %5823, float %5824
  %5826 = fmul float %5822, %5825
  %5827 = select i1 %5821, float %5820, float %5778
  %5828 = fcmp fast ogt float %5778, %5820
  %5829 = fmul fast float %5827, %5819
  %5830 = fadd fast float %5827, %5819
  %5831 = fmul fast float %5830, %5613
  %5832 = fadd fast float %5829, %5614
  %5833 = fsub fast float %5832, %5831
  %5834 = fdiv fast float %5833, %5826
  %5835 = select i1 %5828, float %5834, float 0.000000e+00
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = select i1 %5821, float %5836, float %5835
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5840 = fmul fast float %5839, %5838
  %5841 = fsub fast float 1.000000e+00, %5840
  br label %5842

; <label>:5842                                    ; preds = %5771, %5483, %5448, %5444, %5410
  %5843 = phi float [ 1.000000e+00, %5410 ], [ %5841, %5771 ], [ 1.000000e+00, %5448 ], [ 1.000000e+00, %5483 ], [ 1.000000e+00, %5444 ]
  %5844 = fcmp fast ogt float %5440, 0.000000e+00
  br i1 %5844, label %5845, label %5851, !dx.controlflow.hints !113

; <label>:5845                                    ; preds = %5842
  %5846 = fadd fast float %5353, %5327
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, 0x3F10000000000000
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5342, float %5343, float undef, float undef, i32 0, i32 0, i32 undef, float %5848)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  br label %5851

; <label>:5851                                    ; preds = %5845, %5842
  %5852 = phi float [ %5850, %5845 ], [ 1.000000e+00, %5842 ]
  %5853 = fcmp fast ogt float %5438, 0.000000e+00
  br i1 %5853, label %5854, label %5860, !dx.controlflow.hints !114

; <label>:5854                                    ; preds = %5851
  %5855 = fadd fast float %5383, %5327
  %5856 = call float @dx.op.binary.f32(i32 35, float %5855, float 0.000000e+00)  ; FMax(a,b)
  %5857 = fadd fast float %5856, 0x3F10000000000000
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float %5857)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  br label %5860

; <label>:5860                                    ; preds = %5854, %5851
  %5861 = phi float [ %5859, %5854 ], [ 1.000000e+00, %5851 ]
  %5862 = fcmp fast ogt float %5437, 0.000000e+00
  br i1 %5862, label %5863, label %5870, !dx.controlflow.hints !115

; <label>:5863                                    ; preds = %5860
  %5864 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5865 = fadd fast float %5864, %5327
  %5866 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5867 = fadd fast float %5866, 0x3F10000000000000
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5319, float %5323, float undef, float undef, i32 0, i32 0, i32 undef, float %5867)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  br label %5870

; <label>:5870                                    ; preds = %5863, %5860
  %5871 = phi float [ %5869, %5863 ], [ 1.000000e+00, %5860 ]
  %5872 = fsub fast float %5852, %5843
  %5873 = fmul fast float %5872, %5381
  %5874 = fadd fast float %5873, %5843
  %5875 = fsub fast float %5861, %5874
  %5876 = fmul fast float %5875, %5411
  %5877 = fadd fast float %5876, %5874
  %5878 = fsub fast float %5871, %5877
  %5879 = fmul fast float %5878, %5437
  %5880 = fadd fast float %5879, %5877
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5883 = fcmp fast ogt float %5882, 0.000000e+00
  br i1 %5883, label %5884, label %5924, !dx.controlflow.hints !116

; <label>:5884                                    ; preds = %5870
  %5885 = fcmp fast ugt float %5882, 0.000000e+00
  br i1 %5885, label %5886, label %5921

; <label>:5886                                    ; preds = %5884
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.CBufRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5896 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5897 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5899, 2
  %5903 = fadd fast float %5900, %5296
  %5904 = fadd fast float %5901, %5297
  %5905 = fadd fast float %5902, %5298
  %5906 = fmul fast float %5903, %5888
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5904, float %5906)  ; FMad(a,b,c)
  %5908 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5905, float %5907)  ; FMad(a,b,c)
  %5909 = fadd fast float %5908, %5891
  %5910 = fmul fast float %5903, %5893
  %5911 = call float @dx.op.tertiary.f32(i32 46, float %5894, float %5904, float %5910)  ; FMad(a,b,c)
  %5912 = call float @dx.op.tertiary.f32(i32 46, float %5895, float %5905, float %5911)  ; FMad(a,b,c)
  %5913 = fadd fast float %5912, %5896
  %5914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5909, float %5913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = fmul fast float %5915, %5898
  %5917 = fadd fast float %5916, %5897
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = fmul fast float %5918, %5882
  %5920 = fsub fast float 1.000000e+00, %5919
  br label %5921

; <label>:5921                                    ; preds = %5886, %5884
  %5922 = phi float [ %5920, %5886 ], [ 1.000000e+00, %5884 ]
  %5923 = fmul fast float %5922, %5880
  br label %5924

; <label>:5924                                    ; preds = %5921, %5870, %5276
  %5925 = phi float [ 1.000000e+00, %5276 ], [ %5923, %5921 ], [ %5880, %5870 ]
  %5926 = call float @dx.op.binary.f32(i32 36, float %5925, float %5925)  ; FMin(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5925, float %5926)  ; FMin(a,b)
  %5928 = fcmp fast ogt float %5927, 0.000000e+00
  br i1 %5928, label %5929, label %6089, !dx.controlflow.hints !117

; <label>:5929                                    ; preds = %5924
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = fmul fast float %5931, %5296
  %5946 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5932, float %5945)  ; FMad(a,b,c)
  %5947 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5933, float %5946)  ; FMad(a,b,c)
  %5948 = fadd fast float %5947, %5934
  %5949 = fmul fast float %5936, %5296
  %5950 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5937, float %5949)  ; FMad(a,b,c)
  %5951 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5938, float %5950)  ; FMad(a,b,c)
  %5952 = fadd fast float %5951, %5939
  %5953 = fmul fast float %5941, %5296
  %5954 = call float @dx.op.tertiary.f32(i32 46, float %5297, float %5942, float %5953)  ; FMad(a,b,c)
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5943, float %5954)  ; FMad(a,b,c)
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5960 = fmul fast float %5959, %5948
  %5961 = fmul fast float %5959, %5952
  %5962 = fadd fast float %5960, %5957
  %5963 = fadd fast float %5961, %5958
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5967 = fsub fast float %5962, %5965
  %5968 = fsub fast float %5963, %5966
  %5969 = fcmp fast olt float %5967, 0.000000e+00
  %5970 = fcmp fast olt float %5968, 0.000000e+00
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5976 = select i1 %5969, float %5972, float %5974
  %5977 = select i1 %5970, float %5973, float %5975
  %5978 = fmul fast float %5976, %5967
  %5979 = fmul fast float %5977, %5968
  %5980 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5981 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5983 = call float @dx.op.binary.f32(i32 35, float %5980, float %5981)  ; FMax(a,b)
  %5984 = fsub fast float %5982, %5983
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fcmp fast ogt float %5985, 0.000000e+00
  br i1 %5986, label %5987, label %6028, !dx.controlflow.hints !118

; <label>:5987                                    ; preds = %5929
  %5988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5962, float %5963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5989 = extractvalue %dx.types.ResRet.f32 %5988, 1
  %5990 = fcmp fast ogt float %5989, 0.000000e+00
  br i1 %5990, label %5991, label %6023

; <label>:5991                                    ; preds = %5987
  %5992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5962, float %5963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5993 = extractvalue %dx.types.ResRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5992, 2
  %5996 = extractvalue %dx.types.ResRet.f32 %5992, 3
  %5997 = fsub fast float 1.000000e+00, %5944
  %5998 = fsub fast float %5997, %5955
  %5999 = fmul fast float %5998, 0x400921FB60000000
  %6000 = fadd fast float %5999, 0x3FF921FB60000000
  %6001 = call float @dx.op.unary.f32(i32 13, float %6000)  ; Sin(value)
  %6002 = fadd fast float %6001, -1.000000e+00
  %6003 = fmul fast float %6002, 0x3FD45F3060000000
  %6004 = fmul fast float %5998, 0x401921FB60000000
  %6005 = fadd fast float %6004, 0x400921FB60000000
  %6006 = call float @dx.op.unary.f32(i32 13, float %6005)  ; Sin(value)
  %6007 = fadd fast float %6006, 0x3E7777A5C0000000
  %6008 = fmul fast float %6007, 0x3FC45F3060000000
  %6009 = fmul fast float %5998, 0x4022D97C80000000
  %6010 = fadd fast float %6009, 0x4012D97C80000000
  %6011 = call float @dx.op.unary.f32(i32 13, float %6010)  ; Sin(value)
  %6012 = fadd fast float %6011, 1.000000e+00
  %6013 = fmul fast float %6012, 0x3FBB2995E0000000
  %6014 = fmul fast float %5998, 0x402921FB60000000
  %6015 = fadd fast float %6014, 0x401921FB60000000
  %6016 = call float @dx.op.unary.f32(i32 13, float %6015)  ; Sin(value)
  %6017 = fadd fast float %6016, 0xBE8777A5C0000000
  %6018 = fmul fast float %6017, 0x3FB45F3060000000
  %6019 = call float @dx.op.dot4.f32(i32 56, float %5993, float %5994, float %5995, float %5996, float %6003, float %6008, float %6013, float %6018)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6020 = fmul fast float %6019, 0xBFF7154760000000
  %6021 = call float @dx.op.unary.f32(i32 21, float %6020)  ; Exp(value)
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  br label %6023

; <label>:6023                                    ; preds = %5991, %5987
  %6024 = phi float [ %6022, %5991 ], [ 1.000000e+00, %5987 ]
  %6025 = fadd fast float %6024, -1.000000e+00
  %6026 = fmul fast float %6025, %5985
  %6027 = fadd fast float %6026, 1.000000e+00
  br label %6028

; <label>:6028                                    ; preds = %6023, %5929
  %6029 = phi float [ %6027, %6023 ], [ 1.000000e+00, %5929 ]
  %6030 = fmul fast float %6029, %5925
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6035 = fadd fast float %6032, %160
  %6036 = fadd fast float %6033, %161
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 1
  %6039 = fsub fast float -0.000000e+00, %6035
  %6040 = fsub fast float -0.000000e+00, %6036
  %6041 = fsub fast float %5037, %6034
  %6042 = fadd fast float %6041, %6038
  %6043 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6039, float %6040, float %6042)  ; Dot3(ax,ay,az,bx,by,bz)
  %6044 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5277, float %5278, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = fdiv fast float 1.000000e+00, %6044
  %6046 = fmul fast float %6045, %6043
  %6047 = fmul fast float %5277, %6046
  %6048 = fmul fast float %5278, %6046
  %6049 = fadd fast float %6047, %6035
  %6050 = fadd fast float %6048, %6036
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = fsub fast float %6049, %6052
  %6055 = fsub fast float %6050, %6053
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6059 = fmul fast float %6054, %6057
  %6060 = fmul fast float %6055, %6058
  %6061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.i32 %6061, 3
  %6063 = icmp eq i32 %6062, 0
  br i1 %6063, label %6069, label %6064

; <label>:6064                                    ; preds = %6028
  %6065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6059, float %6060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6066 = extractvalue %dx.types.ResRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.ResRet.f32 %6065, 1
  %6068 = extractvalue %dx.types.ResRet.f32 %6065, 2
  br label %6074

; <label>:6069                                    ; preds = %6028
  %6070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6059, float %6060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6071 = extractvalue %dx.types.ResRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.ResRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.ResRet.f32 %6070, 2
  br label %6074

; <label>:6074                                    ; preds = %6069, %6064
  %6075 = phi float [ %6066, %6064 ], [ %6071, %6069 ]
  %6076 = phi float [ %6067, %6064 ], [ %6072, %6069 ]
  %6077 = phi float [ %6068, %6064 ], [ %6073, %6069 ]
  %6078 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6079 = fmul fast float %6078, %6075
  %6080 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6081 = fsub fast float %6046, %6080
  %6082 = fsub fast float %6081, %6079
  %6083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6082)  ; FMax(a,b)
  %6084 = fmul fast float %6083, %6076
  %6085 = call float @dx.op.binary.f32(i32 36, float %6077, float %6084)  ; FMin(a,b)
  %6086 = fmul fast float %6085, 0xBFF7154760000000
  %6087 = call float @dx.op.unary.f32(i32 21, float %6086)  ; Exp(value)
  %6088 = fmul fast float %6030, %6087
  br label %6089

; <label>:6089                                    ; preds = %6074, %5924
  %6090 = phi float [ %6088, %6074 ], [ %5925, %5924 ]
  %6091 = call float @dx.op.binary.f32(i32 36, float %6090, float %6090)  ; FMin(a,b)
  %6092 = call float @dx.op.binary.f32(i32 36, float %6090, float %6091)  ; FMin(a,b)
  %6093 = fcmp fast ogt float %6092, 0.000000e+00
  br i1 %6093, label %6094, label %6345, !dx.controlflow.hints !119

; <label>:6094                                    ; preds = %6089
  %6095 = fmul fast float %6090, %5288
  %6096 = fmul fast float %6090, %5289
  %6097 = fmul fast float %6090, %5290
  %6098 = fsub fast float %162, %4825
  %6099 = fcmp fast ogt float %6098, 0.000000e+00
  %6100 = fmul fast float %5277, 5.120000e+02
  %6101 = fmul fast float %5278, 5.120000e+02
  %6102 = fmul fast float %5279, 5.120000e+02
  %6103 = fadd fast float %6102, %162
  %6104 = fsub fast float %4825, %6103
  %6105 = fmul fast float %6104, 2.000000e+00
  %6106 = fadd fast float %6105, %6103
  %6107 = select i1 %6099, float %6106, float %6103
  %6108 = fsub fast float %6107, %162
  %6109 = call float @dx.op.dot3.f32(i32 55, float %6100, float %6101, float %6108, float %6100, float %6101, float %6108)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = call float @dx.op.unary.f32(i32 25, float %6109)  ; Rsqrt(value)
  %6111 = fmul fast float %6110, %6100
  %6112 = fmul fast float %6110, %6101
  %6113 = fmul fast float %6110, %6108
  %6114 = fsub fast float %4825, %162
  %6115 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6111, float %6112, float %6113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = fdiv fast float 1.000000e+00, %6116
  %6118 = fmul fast float %6117, %6115
  %6119 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6098, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = fcmp fast ogt float %6119, 0.000000e+00
  %6121 = fcmp fast olt float %6119, 0.000000e+00
  %6122 = zext i1 %6120 to i32
  %6123 = zext i1 %6121 to i32
  %6124 = sub nsw i32 %6122, %6123
  %6125 = sitofp i32 %6124 to float
  %6126 = fsub fast float %6107, %4825
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6100, float %6101, float %6126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = fcmp fast ogt float %6127, 0.000000e+00
  %6129 = fcmp fast olt float %6127, 0.000000e+00
  %6130 = zext i1 %6128 to i32
  %6131 = zext i1 %6129 to i32
  %6132 = sub nsw i32 %6130, %6131
  %6133 = sitofp i32 %6132 to float
  %6134 = fcmp fast une float %6125, %6133
  br i1 %6134, label %6135, label %6145

; <label>:6135                                    ; preds = %6094
  %6136 = fmul fast float %6118, %6113
  %6137 = fmul fast float %6118, %6112
  %6138 = fmul fast float %6118, %6111
  %6139 = fmul fast float %6138, %6138
  %6140 = fmul fast float %6137, %6137
  %6141 = fadd fast float %6139, %6140
  %6142 = fmul fast float %6136, %6136
  %6143 = fadd fast float %6141, %6142
  %6144 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  br label %6155

; <label>:6145                                    ; preds = %6094
  %6146 = icmp slt i32 %6124, 0
  br i1 %6146, label %6147, label %6155

; <label>:6147                                    ; preds = %6145
  %6148 = fsub fast float %162, %6107
  %6149 = fmul fast float %6100, %6100
  %6150 = fmul fast float %6101, %6101
  %6151 = fadd fast float %6149, %6150
  %6152 = fmul fast float %6148, %6148
  %6153 = fadd fast float %6151, %6152
  %6154 = call float @dx.op.unary.f32(i32 24, float %6153)  ; Sqrt(value)
  br label %6155

; <label>:6155                                    ; preds = %6147, %6145, %6135
  %6156 = phi float [ %6144, %6135 ], [ %6154, %6147 ], [ 0.000000e+00, %6145 ]
  %6157 = fsub fast float -0.000000e+00, %6156
  %6158 = select i1 %6099, float -0.000000e+00, float %6157
  %6159 = fmul fast float %4826, 0x3FF7154760000000
  %6160 = fmul fast float %6159, %6158
  %6161 = fmul fast float %4827, 0x3FF7154760000000
  %6162 = fmul fast float %6161, %6158
  %6163 = fmul fast float %4828, 0x3FF7154760000000
  %6164 = fmul fast float %6163, %6158
  %6165 = call float @dx.op.unary.f32(i32 21, float %6160)  ; Exp(value)
  %6166 = call float @dx.op.unary.f32(i32 21, float %6162)  ; Exp(value)
  %6167 = call float @dx.op.unary.f32(i32 21, float %6164)  ; Exp(value)
  %6168 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6169 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6170 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6171 = fmul fast float %6095, %6168
  %6172 = fmul fast float %6096, %6169
  %6173 = fmul fast float %6097, %6170
  %6174 = fsub fast float %5277, %5025
  %6175 = fsub fast float %5278, %5024
  %6176 = fsub fast float %5279, %5023
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = call float @dx.op.unary.f32(i32 25, float %6177)  ; Rsqrt(value)
  %6179 = fmul fast float %6178, %6174
  %6180 = fmul fast float %6178, %6175
  %6181 = fmul fast float %6178, %6176
  %6182 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %5029, float %5030, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5021, float %5020, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6184 = call float @dx.op.unary.f32(i32 7, float %6182)  ; Saturate(value)
  %6185 = fmul fast float %6184, %6184
  %6186 = fmul fast float %6185, %5053
  %6187 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6188 = fmul fast float %6187, %6184
  %6189 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6190 = fmul fast float %6189, %6189
  %6191 = call float @dx.op.unary.f32(i32 6, float %6182)  ; FAbs(value)
  %6192 = fsub fast float 1.000000e+00, %5035
  %6193 = call float @dx.op.binary.f32(i32 35, float %6192, float 0x3F847AE140000000)  ; FMax(a,b)
  %6194 = fmul fast float %6193, %6193
  %6195 = fmul fast float %6194, %6194
  %6196 = fsub fast float 1.000000e+00, %6195
  %6197 = fmul fast float %5040, %5040
  %6198 = fmul fast float %6197, %6196
  %6199 = fadd fast float %6198, %6195
  %6200 = bitcast float %6199 to i32
  %6201 = ashr i32 %6200, 1
  %6202 = add nsw i32 %6201, 532487669
  %6203 = bitcast i32 %6202 to float
  %6204 = fadd fast float %6203, %5040
  %6205 = fmul fast float %6195, %6190
  %6206 = fsub fast float 1.000000e+00, %6190
  %6207 = fadd fast float %6206, %6205
  %6208 = fmul fast float %6191, %6191
  %6209 = fmul fast float %6208, %6196
  %6210 = fadd fast float %6209, %6195
  %6211 = bitcast float %6210 to i32
  %6212 = ashr i32 %6211, 1
  %6213 = add nsw i32 %6212, 532487669
  %6214 = bitcast i32 %6213 to float
  %6215 = fadd fast float %6214, %6191
  %6216 = fmul fast float %6207, %6207
  %6217 = fmul fast float %6216, %6204
  %6218 = fmul fast float %6217, %6215
  %6219 = fdiv fast float 0x3FF0A00000000000, %6218
  %6220 = fmul fast float %6219, %6195
  %6221 = call float @dx.op.unary.f32(i32 6, float %6183)  ; FAbs(value)
  %6222 = fsub fast float 1.000000e+00, %6221
  %6223 = bitcast float %6222 to i32
  %6224 = sitofp i32 %6223 to float
  %6225 = fmul fast float %6224, 5.000000e+00
  %6226 = fadd fast float %6225, 0xC1EFBF8940000000
  %6227 = fptosi float %6226 to i32
  %6228 = bitcast i32 %6227 to float
  %6229 = fsub fast float 1.000000e+00, %5026
  %6230 = fsub fast float 1.000000e+00, %5027
  %6231 = fsub fast float 1.000000e+00, %5038
  %6232 = fmul fast float %6228, %6229
  %6233 = fmul fast float %6228, %6230
  %6234 = fmul fast float %6228, %6231
  %6235 = fadd fast float %6232, %5026
  %6236 = fadd fast float %6233, %5027
  %6237 = fadd fast float %6234, %5038
  br i1 %5169, label %6238, label %6261

; <label>:6238                                    ; preds = %6155
  %6239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4423, float %6221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6240 = extractvalue %dx.types.ResRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.ResRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.ResRet.f32 %6239, 2
  %6243 = fadd fast float %6240, -5.000000e-01
  %6244 = fadd fast float %6241, -5.000000e-01
  %6245 = fadd fast float %6242, -5.000000e-01
  %6246 = fmul fast float %5026, 4.000000e+00
  %6247 = fmul fast float %6246, %6229
  %6248 = fmul fast float %6247, %6243
  %6249 = fmul fast float %5027, 4.000000e+00
  %6250 = fmul fast float %6249, %6230
  %6251 = fmul fast float %6250, %6244
  %6252 = fmul fast float %5038, 4.000000e+00
  %6253 = fmul fast float %6252, %6231
  %6254 = fmul fast float %6253, %6245
  %6255 = fadd fast float %6248, %6235
  %6256 = fadd fast float %6251, %6236
  %6257 = fadd fast float %6254, %6237
  %6258 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6259 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  br label %6261

; <label>:6261                                    ; preds = %6238, %6155
  %6262 = phi float [ %6258, %6238 ], [ %6235, %6155 ]
  %6263 = phi float [ %6259, %6238 ], [ %6236, %6155 ]
  %6264 = phi float [ %6260, %6238 ], [ %6237, %6155 ]
  %6265 = fmul fast float %6182, 9.843750e-01
  %6266 = fadd fast float %6265, 7.812500e-03
  %6267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6266, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6270 = fmul fast float %6268, %5026
  %6271 = fmul fast float %6268, %5027
  %6272 = fmul fast float %6268, %5038
  %6273 = fadd fast float %6270, %6269
  %6274 = fadd fast float %6271, %6269
  %6275 = fadd fast float %6272, %6269
  br i1 %5169, label %6276, label %6299

; <label>:6276                                    ; preds = %6261
  %6277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4423, float %6182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = fadd fast float %6278, -5.000000e-01
  %6282 = fadd fast float %6279, -5.000000e-01
  %6283 = fadd fast float %6280, -5.000000e-01
  %6284 = fmul fast float %5026, 4.000000e+00
  %6285 = fmul fast float %6284, %6229
  %6286 = fmul fast float %6285, %6281
  %6287 = fmul fast float %5027, 4.000000e+00
  %6288 = fmul fast float %6287, %6230
  %6289 = fmul fast float %6288, %6282
  %6290 = fmul fast float %5038, 4.000000e+00
  %6291 = fmul fast float %6290, %6231
  %6292 = fmul fast float %6291, %6283
  %6293 = fadd fast float %6286, %6273
  %6294 = fadd fast float %6289, %6274
  %6295 = fadd fast float %6292, %6275
  %6296 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6297 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6298 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  br label %6299

; <label>:6299                                    ; preds = %6276, %6261
  %6300 = phi float [ %6296, %6276 ], [ %6273, %6261 ]
  %6301 = phi float [ %6297, %6276 ], [ %6274, %6261 ]
  %6302 = phi float [ %6298, %6276 ], [ %6275, %6261 ]
  %6303 = call float @dx.op.binary.f32(i32 35, float %6301, float %6302)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float %6300, float %6303)  ; FMax(a,b)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6262, %6220
  %6307 = fmul fast float %6263, %6220
  %6308 = fmul fast float %6264, %6220
  %6309 = fsub fast float 1.000000e+00, %6183
  %6310 = bitcast float %6309 to i32
  %6311 = sitofp i32 %6310 to float
  %6312 = fmul fast float %6311, 5.000000e+00
  %6313 = fadd fast float %6312, 0xC1EFBF8940000000
  %6314 = fptosi float %6313 to i32
  %6315 = bitcast i32 %6314 to float
  %6316 = fmul fast float %6315, %4424
  %6317 = fmul fast float %6305, %6316
  %6318 = fmul fast float %6317, %5240
  %6319 = fmul fast float %6317, %5241
  %6320 = fmul fast float %6317, %5242
  %6321 = fadd fast float %6318, %6306
  %6322 = fadd fast float %6319, %6307
  %6323 = fadd fast float %6320, %6308
  %6324 = fmul fast float %6188, %6171
  %6325 = fmul fast float %6324, %6305
  %6326 = fmul fast float %6188, %6172
  %6327 = fmul fast float %6326, %6305
  %6328 = fmul fast float %6188, %6173
  %6329 = fmul fast float %6328, %6305
  %6330 = fmul fast float %6324, %6321
  %6331 = fmul fast float %6326, %6322
  %6332 = fmul fast float %6328, %6323
  %6333 = fadd fast float %6325, %5222
  %6334 = fmul fast float %6333, %4420
  %6335 = fadd fast float %6327, %5224
  %6336 = fmul fast float %6335, %4420
  %6337 = fadd fast float %6329, %5226
  %6338 = fmul fast float %6337, %4420
  %6339 = fadd fast float %6330, %5265
  %6340 = fmul fast float %6339, %4420
  %6341 = fadd fast float %6331, %5268
  %6342 = fmul fast float %6341, %4420
  %6343 = fadd fast float %6332, %5271
  %6344 = fmul fast float %6343, %4420
  br label %6345

; <label>:6345                                    ; preds = %6299, %6089, %5196
  %6346 = phi float [ %5266, %5196 ], [ %5266, %6089 ], [ %6340, %6299 ]
  %6347 = phi float [ %5269, %5196 ], [ %5269, %6089 ], [ %6342, %6299 ]
  %6348 = phi float [ %5272, %5196 ], [ %5272, %6089 ], [ %6344, %6299 ]
  %6349 = phi float [ %5261, %5196 ], [ %5261, %6089 ], [ %6334, %6299 ]
  %6350 = phi float [ %5262, %5196 ], [ %5262, %6089 ], [ %6336, %6299 ]
  %6351 = phi float [ %5263, %5196 ], [ %5263, %6089 ], [ %6338, %6299 ]
  %6352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.i32 %6352, 0
  %6354 = icmp eq i32 %6353, 0
  br i1 %6354, label %6975, label %6355

; <label>:6355                                    ; preds = %6345
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6359 = fmul fast float %6357, %97
  %6360 = fmul fast float %6358, %98
  %6361 = fptoui float %6359 to i32
  %6362 = fptoui float %6360 to i32
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 3
  %6367 = fadd fast float %88, -4.000000e+00
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float 0.000000e+00)  ; FMax(a,b)
  %6369 = fadd fast float %6368, %6364
  %6370 = fmul fast float %6369, %6365
  %6371 = call float @dx.op.unary.f32(i32 23, float %6370)  ; Log(value)
  %6372 = fmul fast float %6371, %6366
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6375 = fmul fast float %6372, %6374
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.i32 %6377, 1
  %6379 = add i32 %6378, -1
  %6380 = uitofp i32 %6378 to float
  %6381 = fmul fast float %6380, %6376
  %6382 = fptoui float %6381 to i32
  %6383 = call i32 @dx.op.binary.i32(i32 40, i32 %6382, i32 %6379)  ; UMin(a,b)
  %6384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.i32 %6384, 2
  %6386 = extractvalue %dx.types.CBufRet.i32 %6384, 3
  %6387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6362, i32 %6385, i32 %6361)  ; UMad(a,b,c)
  %6388 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6383, i32 %6386, i32 %6387)  ; UMad(a,b,c)
  %6389 = add nsw i32 %6353, -1
  %6390 = call i32 @dx.op.binary.i32(i32 37, i32 %6389, i32 0)  ; IMax(a,b)
  %6391 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %6392 = fptoui float %6391 to i32
  %6393 = lshr i32 %6392, 5
  %6394 = call i32 @dx.op.binary.i32(i32 40, i32 %6393, i32 8191)  ; UMin(a,b)
  %6395 = shl i32 %6394, 2
  %6396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6395, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.i32 %6396, 0
  %6398 = lshr i32 %6397, 16
  %6399 = and i32 %6397, 65535
  %6400 = lshr i32 %6397, 21
  %6401 = lshr i32 %6399, 5
  %6402 = call i32 @dx.op.binary.i32(i32 40, i32 %6401, i32 %6390)  ; UMin(a,b)
  %6403 = icmp ugt i32 %6400, %6402
  br i1 %6403, label %6975, label %6404

; <label>:6404                                    ; preds = %6355
  br label %6405

; <label>:6405                                    ; preds = %6965, %6404
  %6406 = phi i32 [ %6972, %6965 ], [ %6400, %6404 ]
  %6407 = phi float [ %6966, %6965 ], [ %6346, %6404 ]
  %6408 = phi float [ %6967, %6965 ], [ %6347, %6404 ]
  %6409 = phi float [ %6968, %6965 ], [ %6348, %6404 ]
  %6410 = phi float [ %6969, %6965 ], [ %6349, %6404 ]
  %6411 = phi float [ %6970, %6965 ], [ %6350, %6404 ]
  %6412 = phi float [ %6971, %6965 ], [ %6351, %6404 ]
  %6413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.i32 %6413, 0
  %6415 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6388, i32 %6414, i32 %6406)  ; UMad(a,b,c)
  %6416 = shl i32 %6415, 2
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6416, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = shl i32 %6406, 5
  %6420 = sub nsw i32 %6398, %6419
  %6421 = call i32 @dx.op.binary.i32(i32 37, i32 %6420, i32 0)  ; IMax(a,b)
  %6422 = call i32 @dx.op.binary.i32(i32 38, i32 %6421, i32 31)  ; IMin(a,b)
  %6423 = sub nsw i32 1, %6398
  %6424 = add nsw i32 %6423, %6399
  %6425 = call i32 @dx.op.binary.i32(i32 37, i32 %6424, i32 0)  ; IMax(a,b)
  %6426 = call i32 @dx.op.binary.i32(i32 38, i32 %6425, i32 32)  ; IMin(a,b)
  %6427 = and i32 %6426, 31
  %6428 = shl i32 -1, %6427
  %6429 = xor i32 %6428, -1
  %6430 = and i32 %6422, 31
  %6431 = shl i32 %6429, %6430
  %6432 = icmp eq i32 %6426, 32
  %6433 = select i1 %6432, i32 -1, i32 %6431
  %6434 = and i32 %6433, %6418
  %6435 = icmp eq i32 %6434, 0
  br i1 %6435, label %6965, label %6436

; <label>:6436                                    ; preds = %6405
  br label %6437

; <label>:6437                                    ; preds = %6571, %6436
  %6438 = phi i32 [ %6449, %6571 ], [ %6434, %6436 ]
  %6439 = phi float [ %6572, %6571 ], [ %6407, %6436 ]
  %6440 = phi float [ %6573, %6571 ], [ %6408, %6436 ]
  %6441 = phi float [ %6574, %6571 ], [ %6409, %6436 ]
  %6442 = phi float [ %6575, %6571 ], [ %6410, %6436 ]
  %6443 = phi float [ %6576, %6571 ], [ %6411, %6436 ]
  %6444 = phi float [ %6577, %6571 ], [ %6412, %6436 ]
  %6445 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6438)  ; FirstbitLo(value)
  %6446 = add i32 %6445, %6419
  %6447 = and i32 %6445, 31
  %6448 = shl i32 1, %6447
  %6449 = xor i32 %6448, %6438
  %6450 = mul i32 %6446, 112
  %6451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6450, i32 undef)  ; BufferLoad(srv,index,wot)
  %6452 = extractvalue %dx.types.ResRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.ResRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.ResRet.f32 %6451, 2
  %6455 = or i32 %6450, 12
  %6456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6455, i32 undef)  ; BufferLoad(srv,index,wot)
  %6457 = extractvalue %dx.types.ResRet.f32 %6456, 0
  %6458 = add i32 %6450, 16
  %6459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6458, i32 undef)  ; BufferLoad(srv,index,wot)
  %6460 = extractvalue %dx.types.ResRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.ResRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.ResRet.f32 %6459, 2
  %6463 = add i32 %6450, 28
  %6464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6463, i32 undef)  ; BufferLoad(srv,index,wot)
  %6465 = extractvalue %dx.types.ResRet.i32 %6464, 0
  %6466 = add i32 %6450, 44
  %6467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = add i32 %6450, 48
  %6470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6469, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.ResRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.ResRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.ResRet.f32 %6470, 3
  %6475 = add i32 %6450, 64
  %6476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.ResRet.f32 %6476, 1
  %6479 = extractvalue %dx.types.ResRet.f32 %6476, 2
  %6480 = extractvalue %dx.types.ResRet.f32 %6476, 3
  %6481 = add i32 %6450, 80
  %6482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6481, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 1
  %6484 = extractvalue %dx.types.ResRet.f32 %6482, 2
  %6485 = add i32 %6450, 92
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6489 = select i1 %222, float %6483, float %6452
  %6490 = select i1 %222, float %6488, float %6453
  %6491 = select i1 %222, float %6484, float %6454
  %6492 = and i32 %6487, 65535
  %6493 = uitofp i32 %6492 to float
  %6494 = lshr i32 %6487, 16
  %6495 = uitofp i32 %6494 to float
  %6496 = and i32 %6465, 65535
  %6497 = and i32 %6465, 50331648
  %6498 = icmp eq i32 %6497, 33554432
  %6499 = fsub fast float %6471, %160
  %6500 = fsub fast float %6472, %161
  %6501 = fsub fast float %6473, %162
  %6502 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6501, float %6499, float %6500, float %6501)  ; Dot3(ax,ay,az,bx,by,bz)
  %6503 = call float @dx.op.unary.f32(i32 24, float %6502)  ; Sqrt(value)
  %6504 = fdiv fast float 1.000000e+00, %6503
  %6505 = fmul fast float %6504, %6499
  %6506 = fmul fast float %6504, %6500
  %6507 = fmul fast float %6504, %6501
  %6508 = fadd fast float %6503, %6457
  %6509 = fdiv fast float 1.000000e+00, %6508
  %6510 = fmul float %6468, %6509
  %6511 = fmul float %6510, %6510
  %6512 = call float @dx.op.unary.f32(i32 7, float %6511)  ; Saturate(value)
  br i1 %6498, label %6513, label %6534

; <label>:6513                                    ; preds = %6437
  %6514 = fmul fast float %6479, %6460
  %6515 = fmul fast float %6479, %6461
  %6516 = fmul fast float %6479, %6462
  %6517 = fadd fast float %6499, %6514
  %6518 = fadd fast float %6500, %6515
  %6519 = fadd fast float %6501, %6516
  %6520 = call float @dx.op.dot3.f32(i32 55, float %6517, float %6518, float %6519, float %6517, float %6518, float %6519)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = call float @dx.op.unary.f32(i32 25, float %6520)  ; Rsqrt(value)
  %6522 = fmul fast float %6521, %6517
  %6523 = fmul fast float %6521, %6518
  %6524 = fmul fast float %6521, %6519
  %6525 = fsub fast float %160, %6471
  %6526 = fsub fast float %161, %6472
  %6527 = fsub fast float %162, %6473
  %6528 = fsub fast float -0.000000e+00, %6525
  %6529 = fsub fast float -0.000000e+00, %6526
  %6530 = fsub fast float -0.000000e+00, %6527
  %6531 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6460, float %6461, float %6462)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = fcmp fast ogt float %6531, 0.000000e+00
  %6533 = uitofp i1 %6532 to float
  br label %6534

; <label>:6534                                    ; preds = %6513, %6437
  %6535 = phi float [ %6533, %6513 ], [ 1.000000e+00, %6437 ]
  %6536 = phi float [ %6522, %6513 ], [ %6505, %6437 ]
  %6537 = phi float [ %6523, %6513 ], [ %6506, %6437 ]
  %6538 = phi float [ %6524, %6513 ], [ %6507, %6437 ]
  %6539 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float %6536, float %6537, float %6538)  ; Dot3(ax,ay,az,bx,by,bz)
  %6540 = fmul fast float %6539, %6539
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = fsub fast float 1.000000e+00, %6541
  %6543 = fmul fast float %6542, 5.000000e-01
  %6544 = fcmp fast ogt float %6539, 0.000000e+00
  %6545 = fsub fast float 1.000000e+00, %6543
  %6546 = select i1 %6544, float %6543, float %6545
  %6547 = fmul fast float %6546, %6495
  %6548 = fadd fast float %6547, %6493
  %6549 = fmul fast float %6548, 0x3EF0001000000000
  %6550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6549, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6551 = extractvalue %dx.types.ResRet.f32 %6550, 0
  %6552 = fmul fast float %6539, %6477
  %6553 = fadd fast float %6552, %6478
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = select i1 %6498, float 1.000000e+00, float %6554
  %6556 = select i1 %6498, float %6554, float 1.000000e+00
  %6557 = fmul fast float %6503, %6474
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = fmul fast float %6558, %6480
  %6560 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6561 = fmul fast float %6560, %6556
  %6562 = fmul fast float %6561, 2.000000e+00
  %6563 = fsub fast float 3.000000e+00, %6562
  %6564 = fmul fast float %6551, %6535
  %6565 = fmul fast float %6561, %6561
  %6566 = fmul fast float %6565, %6564
  %6567 = fmul fast float %6566, %6563
  %6568 = call float @dx.op.binary.f32(i32 36, float %6567, float %6567)  ; FMin(a,b)
  %6569 = call float @dx.op.binary.f32(i32 36, float %6567, float %6568)  ; FMin(a,b)
  %6570 = fcmp fast ogt float %6569, 0.000000e+00
  br i1 %6570, label %6579, label %6571, !dx.controlflow.hints !120

; <label>:6571                                    ; preds = %6921, %6679, %6534
  %6572 = phi float [ %6439, %6679 ], [ %6439, %6534 ], [ %6961, %6921 ]
  %6573 = phi float [ %6440, %6679 ], [ %6440, %6534 ], [ %6962, %6921 ]
  %6574 = phi float [ %6441, %6679 ], [ %6441, %6534 ], [ %6963, %6921 ]
  %6575 = phi float [ %6442, %6679 ], [ %6442, %6534 ], [ %6955, %6921 ]
  %6576 = phi float [ %6443, %6679 ], [ %6443, %6534 ], [ %6956, %6921 ]
  %6577 = phi float [ %6444, %6679 ], [ %6444, %6534 ], [ %6957, %6921 ]
  %6578 = icmp eq i32 %6438, %6448
  br i1 %6578, label %6964, label %6437

; <label>:6579                                    ; preds = %6534
  %6580 = icmp eq i32 %6496, 255
  br i1 %6580, label %6679, label %6581, !dx.controlflow.hints !121

; <label>:6581                                    ; preds = %6579
  %6582 = mul nuw nsw i32 %6496, 176
  %6583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6582, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.ResRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.ResRet.f32 %6583, 2
  %6587 = extractvalue %dx.types.ResRet.f32 %6583, 3
  %6588 = add nuw nsw i32 %6582, 16
  %6589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = add nuw nsw i32 %6582, 32
  %6593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6592, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.ResRet.f32 %6593, 2
  %6597 = add nuw nsw i32 %6582, 48
  %6598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6597, i32 undef)  ; BufferLoad(srv,index,wot)
  %6599 = extractvalue %dx.types.ResRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.ResRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.ResRet.f32 %6598, 2
  %6602 = extractvalue %dx.types.ResRet.f32 %6598, 3
  %6603 = add nuw nsw i32 %6582, 64
  %6604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6603, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.ResRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.ResRet.f32 %6604, 3
  %6609 = add nuw nsw i32 %6582, 80
  %6610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6609, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.ResRet.f32 %6610, 2
  %6614 = extractvalue %dx.types.ResRet.f32 %6610, 3
  %6615 = add nuw nsw i32 %6582, 96
  %6616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6615, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.ResRet.f32 %6616, 1
  %6619 = extractvalue %dx.types.ResRet.f32 %6616, 2
  %6620 = extractvalue %dx.types.ResRet.f32 %6616, 3
  %6621 = bitcast float %6591 to i32
  %6622 = fmul fast float %6596, %104
  %6623 = fmul fast float %6596, %105
  %6624 = fmul fast float %6596, %106
  %6625 = fadd fast float %6622, %160
  %6626 = fadd fast float %6623, %161
  %6627 = fadd fast float %6624, %162
  %6628 = fmul fast float %6625, %6599
  %6629 = call float @dx.op.tertiary.f32(i32 46, float %6626, float %6605, float %6628)  ; FMad(a,b,c)
  %6630 = call float @dx.op.tertiary.f32(i32 46, float %6627, float %6611, float %6629)  ; FMad(a,b,c)
  %6631 = fadd fast float %6630, %6617
  %6632 = fmul fast float %6625, %6600
  %6633 = call float @dx.op.tertiary.f32(i32 46, float %6626, float %6606, float %6632)  ; FMad(a,b,c)
  %6634 = call float @dx.op.tertiary.f32(i32 46, float %6627, float %6612, float %6633)  ; FMad(a,b,c)
  %6635 = fadd fast float %6634, %6618
  %6636 = fmul fast float %6625, %6601
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6626, float %6607, float %6636)  ; FMad(a,b,c)
  %6638 = call float @dx.op.tertiary.f32(i32 46, float %6627, float %6613, float %6637)  ; FMad(a,b,c)
  %6639 = fadd fast float %6638, %6619
  %6640 = fmul fast float %6625, %6602
  %6641 = call float @dx.op.tertiary.f32(i32 46, float %6626, float %6608, float %6640)  ; FMad(a,b,c)
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6627, float %6614, float %6641)  ; FMad(a,b,c)
  %6643 = fadd fast float %6642, %6620
  %6644 = fdiv fast float %6631, %6643
  %6645 = fdiv fast float %6635, %6643
  %6646 = fdiv fast float %6639, %6643
  %6647 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6646)  ; FMax(a,b)
  %6648 = fmul fast float %233, 0x401921FB60000000
  %6649 = call float @dx.op.unary.f32(i32 13, float %6648)  ; Sin(value)
  %6650 = call float @dx.op.unary.f32(i32 12, float %6648)  ; Cos(value)
  %6651 = fsub fast float -0.000000e+00, %6649
  %6652 = fmul fast float %6586, 5.000000e-01
  %6653 = call float @dx.op.dot2.f32(i32 54, float %233, float %233, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6654 = call float @dx.op.unary.f32(i32 22, float %6653)  ; Frc(value)
  %6655 = fmul fast float %6654, 0x404A7DD040000000
  %6656 = call float @dx.op.unary.f32(i32 22, float %6655)  ; Frc(value)
  %6657 = fmul fast float %6656, %6595
  %6658 = fadd fast float %6657, %6652
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6658, float %6651, float 0.000000e+00)  ; FMad(a,b,c)
  %6660 = call float @dx.op.tertiary.f32(i32 46, float %6658, float %6650, float 0.000000e+00)  ; FMad(a,b,c)
  %6661 = fadd fast float %6659, %6644
  %6662 = fadd fast float %6660, %6645
  %6663 = fmul fast float %6661, %6590
  %6664 = fmul fast float %6662, %6590
  %6665 = call float @dx.op.binary.f32(i32 35, float %6663, float %6586)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6664, float %6586)  ; FMax(a,b)
  %6667 = call float @dx.op.binary.f32(i32 36, float %6665, float %6587)  ; FMin(a,b)
  %6668 = call float @dx.op.binary.f32(i32 36, float %6666, float %6587)  ; FMin(a,b)
  %6669 = fadd fast float %6667, %6584
  %6670 = fadd fast float %6668, %6585
  %6671 = uitofp i32 %6621 to float
  %6672 = fadd fast float %6647, %6594
  %6673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6669, float %6670, float %6671, float undef, i32 0, i32 0, i32 undef, float %6672)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = fadd fast float %6674, -1.000000e+00
  %6676 = fmul fast float %6675, %6555
  %6677 = fadd fast float %6676, 1.000000e+00
  %6678 = fmul fast float %6677, %6567
  br label %6679

; <label>:6679                                    ; preds = %6581, %6579
  %6680 = phi float [ %6678, %6581 ], [ %6567, %6579 ]
  %6681 = call float @dx.op.binary.f32(i32 36, float %6680, float %6680)  ; FMin(a,b)
  %6682 = call float @dx.op.binary.f32(i32 36, float %6680, float %6681)  ; FMin(a,b)
  %6683 = fcmp fast ogt float %6682, 0.000000e+00
  br i1 %6683, label %6684, label %6571, !dx.controlflow.hints !122

; <label>:6684                                    ; preds = %6679
  %6685 = fmul fast float %6680, %6489
  %6686 = fmul fast float %6680, %6490
  %6687 = fmul fast float %6680, %6491
  %6688 = fsub fast float %6473, %4825
  %6689 = fcmp fast ogt float %6688, 0.000000e+00
  %6690 = fsub fast float %162, %4825
  %6691 = fcmp fast ogt float %6690, 0.000000e+00
  %6692 = xor i1 %6691, %6689
  %6693 = fsub fast float %4825, %6473
  %6694 = fmul fast float %6693, 2.000000e+00
  %6695 = fadd fast float %6694, %6473
  %6696 = select i1 %6692, float %6473, float %6695
  %6697 = fsub fast float %6696, %162
  %6698 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6697, float %6499, float %6500, float %6697)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = call float @dx.op.unary.f32(i32 25, float %6698)  ; Rsqrt(value)
  %6700 = fmul fast float %6699, %6499
  %6701 = fmul fast float %6699, %6500
  %6702 = fmul fast float %6699, %6697
  %6703 = fsub fast float %4825, %162
  %6704 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6703)  ; Dot3(ax,ay,az,bx,by,bz)
  %6705 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = fdiv fast float 1.000000e+00, %6705
  %6707 = fmul fast float %6706, %6704
  %6708 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6690, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = fcmp fast ogt float %6708, 0.000000e+00
  %6710 = fcmp fast olt float %6708, 0.000000e+00
  %6711 = zext i1 %6709 to i32
  %6712 = zext i1 %6710 to i32
  %6713 = sub nsw i32 %6711, %6712
  %6714 = sitofp i32 %6713 to float
  %6715 = fsub fast float %6696, %4825
  %6716 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6715, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6717 = fcmp fast ogt float %6716, 0.000000e+00
  %6718 = fcmp fast olt float %6716, 0.000000e+00
  %6719 = zext i1 %6717 to i32
  %6720 = zext i1 %6718 to i32
  %6721 = sub nsw i32 %6719, %6720
  %6722 = sitofp i32 %6721 to float
  %6723 = fcmp fast une float %6714, %6722
  br i1 %6723, label %6724, label %6734

; <label>:6724                                    ; preds = %6684
  %6725 = fmul fast float %6707, %6702
  %6726 = fmul fast float %6707, %6701
  %6727 = fmul fast float %6707, %6700
  %6728 = fmul fast float %6727, %6727
  %6729 = fmul fast float %6726, %6726
  %6730 = fadd fast float %6728, %6729
  %6731 = fmul fast float %6725, %6725
  %6732 = fadd fast float %6730, %6731
  %6733 = call float @dx.op.unary.f32(i32 24, float %6732)  ; Sqrt(value)
  br label %6746

; <label>:6734                                    ; preds = %6684
  %6735 = icmp slt i32 %6713, 0
  br i1 %6735, label %6736, label %6746

; <label>:6736                                    ; preds = %6734
  %6737 = fsub fast float %160, %6471
  %6738 = fsub fast float %161, %6472
  %6739 = fsub fast float %162, %6696
  %6740 = fmul fast float %6737, %6737
  %6741 = fmul fast float %6738, %6738
  %6742 = fadd fast float %6740, %6741
  %6743 = fmul fast float %6739, %6739
  %6744 = fadd fast float %6742, %6743
  %6745 = call float @dx.op.unary.f32(i32 24, float %6744)  ; Sqrt(value)
  br label %6746

; <label>:6746                                    ; preds = %6736, %6734, %6724
  %6747 = phi float [ %6733, %6724 ], [ %6745, %6736 ], [ 0.000000e+00, %6734 ]
  %6748 = and i1 %6691, %6689
  %6749 = fsub fast float -0.000000e+00, %6747
  %6750 = select i1 %6748, float -0.000000e+00, float %6749
  %6751 = fmul fast float %4826, 0x3FF7154760000000
  %6752 = fmul fast float %6751, %6750
  %6753 = fmul fast float %4827, 0x3FF7154760000000
  %6754 = fmul fast float %6753, %6750
  %6755 = fmul fast float %4828, 0x3FF7154760000000
  %6756 = fmul fast float %6755, %6750
  %6757 = call float @dx.op.unary.f32(i32 21, float %6752)  ; Exp(value)
  %6758 = call float @dx.op.unary.f32(i32 21, float %6754)  ; Exp(value)
  %6759 = call float @dx.op.unary.f32(i32 21, float %6756)  ; Exp(value)
  %6760 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6761 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6762 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6763 = fmul fast float %6685, %6760
  %6764 = fmul fast float %6686, %6761
  %6765 = fmul fast float %6687, %6762
  %6766 = fsub fast float %6505, %5025
  %6767 = fsub fast float %6506, %5024
  %6768 = fsub fast float %6507, %5023
  %6769 = call float @dx.op.dot3.f32(i32 55, float %6766, float %6767, float %6768, float %6766, float %6767, float %6768)  ; Dot3(ax,ay,az,bx,by,bz)
  %6770 = call float @dx.op.unary.f32(i32 25, float %6769)  ; Rsqrt(value)
  %6771 = fmul fast float %6770, %6766
  %6772 = fmul fast float %6770, %6767
  %6773 = fmul fast float %6770, %6768
  %6774 = call float @dx.op.dot3.f32(i32 55, float %6505, float %6506, float %6507, float %5029, float %5030, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6775 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5021, float %5020, float %6771, float %6772, float %6773)  ; Dot3(ax,ay,az,bx,by,bz)
  %6776 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6777 = fmul fast float %6776, %6512
  %6778 = fmul fast float %6776, %6776
  %6779 = fmul fast float %6778, %5053
  %6780 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6781 = fmul fast float %6777, %6780
  %6782 = bitcast float %6502 to i32
  %6783 = ashr i32 %6782, 1
  %6784 = sub nsw i32 1597463007, %6783
  %6785 = bitcast i32 %6784 to float
  %6786 = fmul fast float %6785, %6499
  %6787 = fmul fast float %6785, %6500
  %6788 = fmul fast float %6785, %6501
  %6789 = fsub fast float %6786, %5025
  %6790 = fsub fast float %6787, %5024
  %6791 = fsub fast float %6788, %5023
  %6792 = call float @dx.op.dot3.f32(i32 55, float %6789, float %6790, float %6791, float %6789, float %6790, float %6791)  ; Dot3(ax,ay,az,bx,by,bz)
  %6793 = call float @dx.op.unary.f32(i32 25, float %6792)  ; Rsqrt(value)
  %6794 = fmul fast float %6789, %6793
  %6795 = fmul fast float %6790, %6793
  %6796 = fmul fast float %6791, %6793
  %6797 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %6794, float %6795, float %6796)  ; Dot3(ax,ay,az,bx,by,bz)
  %6798 = fmul fast float %6797, %6797
  %6799 = call float @dx.op.unary.f32(i32 6, float %6774)  ; FAbs(value)
  %6800 = fsub fast float 1.000000e+00, %5035
  %6801 = call float @dx.op.binary.f32(i32 35, float %6800, float 0x3F847AE140000000)  ; FMax(a,b)
  %6802 = fmul fast float %6801, %6801
  %6803 = fmul fast float %6802, %6802
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = fmul fast float %5040, %5040
  %6806 = fmul fast float %6805, %6804
  %6807 = fadd fast float %6806, %6803
  %6808 = bitcast float %6807 to i32
  %6809 = ashr i32 %6808, 1
  %6810 = add nsw i32 %6809, 532487669
  %6811 = bitcast i32 %6810 to float
  %6812 = fadd fast float %6811, %5040
  %6813 = fmul fast float %6803, %6798
  %6814 = fsub fast float 1.000000e+00, %6798
  %6815 = fadd fast float %6814, %6813
  %6816 = fmul fast float %6799, %6799
  %6817 = fmul fast float %6816, %6804
  %6818 = fadd fast float %6817, %6803
  %6819 = bitcast float %6818 to i32
  %6820 = ashr i32 %6819, 1
  %6821 = add nsw i32 %6820, 532487669
  %6822 = bitcast i32 %6821 to float
  %6823 = fadd fast float %6822, %6799
  %6824 = fmul fast float %6815, %6815
  %6825 = fmul fast float %6824, %6812
  %6826 = fmul fast float %6825, %6823
  %6827 = fdiv fast float 1.000000e+00, %6826
  %6828 = bitcast float %6803 to i32
  %6829 = sitofp i32 %6828 to float
  %6830 = fmul fast float %6829, 0x3FE7F73180000000
  %6831 = fadd fast float %6830, 0x41AFE27C40000000
  %6832 = fptosi float %6831 to i32
  %6833 = bitcast i32 %6832 to float
  %6834 = fmul fast float %6468, 0x3FD80E9D60000000
  %6835 = fmul fast float %6834, %6785
  %6836 = fadd fast float %6833, %6835
  %6837 = bitcast float %6836 to i32
  %6838 = sub nsw i32 2129859010, %6837
  %6839 = bitcast i32 %6838 to float
  %6840 = fmul fast float %6803, %6827
  %6841 = fmul fast float %6840, %6833
  %6842 = fmul fast float %6841, %6839
  %6843 = call float @dx.op.unary.f32(i32 6, float %6775)  ; FAbs(value)
  %6844 = fsub fast float 1.000000e+00, %6843
  %6845 = bitcast float %6844 to i32
  %6846 = sitofp i32 %6845 to float
  %6847 = fmul fast float %6846, 5.000000e+00
  %6848 = fadd fast float %6847, 0xC1EFBF8940000000
  %6849 = fptosi float %6848 to i32
  %6850 = bitcast i32 %6849 to float
  %6851 = fsub fast float 1.000000e+00, %5026
  %6852 = fsub fast float 1.000000e+00, %5027
  %6853 = fsub fast float 1.000000e+00, %5038
  %6854 = fmul fast float %6850, %6851
  %6855 = fmul fast float %6850, %6852
  %6856 = fmul fast float %6850, %6853
  %6857 = fadd fast float %6854, %5026
  %6858 = fadd fast float %6855, %5027
  %6859 = fadd fast float %6856, %5038
  br i1 %5169, label %6860, label %6883

; <label>:6860                                    ; preds = %6746
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4423, float %6843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  %6865 = fadd fast float %6862, -5.000000e-01
  %6866 = fadd fast float %6863, -5.000000e-01
  %6867 = fadd fast float %6864, -5.000000e-01
  %6868 = fmul fast float %5026, 4.000000e+00
  %6869 = fmul fast float %6868, %6851
  %6870 = fmul fast float %6869, %6865
  %6871 = fmul fast float %5027, 4.000000e+00
  %6872 = fmul fast float %6871, %6852
  %6873 = fmul fast float %6872, %6866
  %6874 = fmul fast float %5038, 4.000000e+00
  %6875 = fmul fast float %6874, %6853
  %6876 = fmul fast float %6875, %6867
  %6877 = fadd fast float %6870, %6857
  %6878 = fadd fast float %6873, %6858
  %6879 = fadd fast float %6876, %6859
  %6880 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6881 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6882 = call float @dx.op.unary.f32(i32 7, float %6879)  ; Saturate(value)
  br label %6883

; <label>:6883                                    ; preds = %6860, %6746
  %6884 = phi float [ %6880, %6860 ], [ %6857, %6746 ]
  %6885 = phi float [ %6881, %6860 ], [ %6858, %6746 ]
  %6886 = phi float [ %6882, %6860 ], [ %6859, %6746 ]
  %6887 = fmul fast float %6774, 9.843750e-01
  %6888 = fadd fast float %6887, 7.812500e-03
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6888, float %5159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 3
  %6892 = fmul fast float %6890, %5026
  %6893 = fmul fast float %6890, %5027
  %6894 = fmul fast float %6890, %5038
  %6895 = fadd fast float %6892, %6891
  %6896 = fadd fast float %6893, %6891
  %6897 = fadd fast float %6894, %6891
  br i1 %5169, label %6898, label %6921

; <label>:6898                                    ; preds = %6883
  %6899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4423, float %6774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.ResRet.f32 %6899, 2
  %6903 = fadd fast float %6900, -5.000000e-01
  %6904 = fadd fast float %6901, -5.000000e-01
  %6905 = fadd fast float %6902, -5.000000e-01
  %6906 = fmul fast float %5026, 4.000000e+00
  %6907 = fmul fast float %6906, %6851
  %6908 = fmul fast float %6907, %6903
  %6909 = fmul fast float %5027, 4.000000e+00
  %6910 = fmul fast float %6909, %6852
  %6911 = fmul fast float %6910, %6904
  %6912 = fmul fast float %5038, 4.000000e+00
  %6913 = fmul fast float %6912, %6853
  %6914 = fmul fast float %6913, %6905
  %6915 = fadd fast float %6908, %6895
  %6916 = fadd fast float %6911, %6896
  %6917 = fadd fast float %6914, %6897
  %6918 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6919 = call float @dx.op.unary.f32(i32 7, float %6916)  ; Saturate(value)
  %6920 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  br label %6921

; <label>:6921                                    ; preds = %6898, %6883
  %6922 = phi float [ %6918, %6898 ], [ %6895, %6883 ]
  %6923 = phi float [ %6919, %6898 ], [ %6896, %6883 ]
  %6924 = phi float [ %6920, %6898 ], [ %6897, %6883 ]
  %6925 = call float @dx.op.binary.f32(i32 35, float %6923, float %6924)  ; FMax(a,b)
  %6926 = call float @dx.op.binary.f32(i32 35, float %6922, float %6925)  ; FMax(a,b)
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = fmul fast float %6884, %6842
  %6929 = fmul fast float %6885, %6842
  %6930 = fmul fast float %6886, %6842
  %6931 = fsub fast float 1.000000e+00, %6775
  %6932 = bitcast float %6931 to i32
  %6933 = sitofp i32 %6932 to float
  %6934 = fmul fast float %6933, 5.000000e+00
  %6935 = fadd fast float %6934, 0xC1EFBF8940000000
  %6936 = fptosi float %6935 to i32
  %6937 = bitcast i32 %6936 to float
  %6938 = fmul fast float %6937, %4424
  %6939 = fmul fast float %6927, %6938
  %6940 = fmul fast float %6939, %5240
  %6941 = fmul fast float %6939, %5241
  %6942 = fmul fast float %6939, %5242
  %6943 = fadd fast float %6940, %6928
  %6944 = fadd fast float %6941, %6929
  %6945 = fadd fast float %6942, %6930
  %6946 = fmul fast float %6763, %4420
  %6947 = fmul fast float %6946, %6781
  %6948 = fmul fast float %6947, %6927
  %6949 = fmul fast float %6764, %4420
  %6950 = fmul fast float %6949, %6781
  %6951 = fmul fast float %6950, %6927
  %6952 = fmul fast float %6765, %4420
  %6953 = fmul fast float %6952, %6781
  %6954 = fmul fast float %6953, %6927
  %6955 = fadd fast float %6948, %6442
  %6956 = fadd fast float %6951, %6443
  %6957 = fadd fast float %6954, %6444
  %6958 = fmul fast float %6947, %6943
  %6959 = fmul fast float %6950, %6944
  %6960 = fmul fast float %6953, %6945
  %6961 = fadd fast float %6958, %6439
  %6962 = fadd fast float %6959, %6440
  %6963 = fadd fast float %6960, %6441
  br label %6571

; <label>:6964                                    ; preds = %6571
  br label %6965

; <label>:6965                                    ; preds = %6964, %6405
  %6966 = phi float [ %6407, %6405 ], [ %6572, %6964 ]
  %6967 = phi float [ %6408, %6405 ], [ %6573, %6964 ]
  %6968 = phi float [ %6409, %6405 ], [ %6574, %6964 ]
  %6969 = phi float [ %6410, %6405 ], [ %6575, %6964 ]
  %6970 = phi float [ %6411, %6405 ], [ %6576, %6964 ]
  %6971 = phi float [ %6412, %6405 ], [ %6577, %6964 ]
  %6972 = add i32 %6406, 1
  %6973 = icmp ugt i32 %6972, %6402
  br i1 %6973, label %6974, label %6405

; <label>:6974                                    ; preds = %6965
  br label %6975

; <label>:6975                                    ; preds = %6974, %6355, %6345
  %6976 = phi float [ %6346, %6345 ], [ %6346, %6355 ], [ %6966, %6974 ]
  %6977 = phi float [ %6347, %6345 ], [ %6347, %6355 ], [ %6967, %6974 ]
  %6978 = phi float [ %6348, %6345 ], [ %6348, %6355 ], [ %6968, %6974 ]
  %6979 = phi float [ %6349, %6345 ], [ %6349, %6355 ], [ %6969, %6974 ]
  %6980 = phi float [ %6350, %6345 ], [ %6350, %6355 ], [ %6970, %6974 ]
  %6981 = phi float [ %6351, %6345 ], [ %6351, %6355 ], [ %6971, %6974 ]
  %6982 = fmul fast float %4420, %4420
  %6983 = fsub fast float 1.000000e+00, %6982
  %6984 = call float @dx.op.dot3.f32(i32 55, float %6983, float %6983, float %6983, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6985 = fsub fast float 1.000000e+00, %6984
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %6988 = fmul fast float %6987, %5247
  %6989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.f32 %6989, 3
  %6991 = fsub fast float 1.000000e+00, %4428
  %6992 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6993 = fadd fast float %6981, %4426
  %6994 = fmul fast float %6993, %4428
  %6995 = fmul fast float %6992, %6990
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %6998 = fmul fast float %6979, %5032
  %6999 = fmul fast float %6980, %5033
  %7000 = fmul fast float %6981, %5034
  %7001 = fcmp fast ogt float %88, %182
  %7002 = and i1 %7001, %4831
  %7003 = or i1 %4837, %7002
  %7004 = icmp eq i32 %4830, 2
  %7005 = fcmp fast ole float %88, %182
  %7006 = and i1 %7005, %7004
  %7007 = or i1 %7006, %7003
  br i1 %7002, label %7008, label %7265

; <label>:7008                                    ; preds = %6975
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7012 = fmul fast float %7010, %97
  %7013 = fmul fast float %7011, %98
  %7014 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  %7015 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7016 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7014, float %7015, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.ResRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.ResRet.f32 %7016, 2
  %7020 = extractvalue %dx.types.ResRet.f32 %7016, 3
  %7021 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7014, float %7015, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  %7025 = extractvalue %dx.types.ResRet.f32 %7021, 3
  %7026 = call float @dx.op.binary.f32(i32 35, float %7018, float %7019)  ; FMax(a,b)
  %7027 = call float @dx.op.binary.f32(i32 35, float %7017, float %7026)  ; FMax(a,b)
  %7028 = call float @dx.op.binary.f32(i32 35, float %7027, float %7020)  ; FMax(a,b)
  %7029 = call float @dx.op.binary.f32(i32 36, float %7023, float %7024)  ; FMin(a,b)
  %7030 = call float @dx.op.binary.f32(i32 36, float %7022, float %7029)  ; FMin(a,b)
  %7031 = call float @dx.op.binary.f32(i32 36, float %7030, float %7025)  ; FMin(a,b)
  %7032 = fmul fast float %7028, 2.550000e+02
  %7033 = fadd fast float %7032, 0x3F70101020000000
  %7034 = fptoui float %7033 to i32
  %7035 = fmul fast float %7031, 2.550000e+02
  %7036 = fadd fast float %7035, 0x3F70101020000000
  %7037 = fptoui float %7036 to i32
  %7038 = icmp ult i32 %7034, %7037
  br i1 %7038, label %7039, label %7207

; <label>:7039                                    ; preds = %7008
  %7040 = fcmp fast ogt float %87, 9.843750e-01
  %7041 = fadd fast float %88, -4.000000e+00
  %7042 = select i1 %7040, float -4.000000e+00, float %7041
  %7043 = call float @dx.op.binary.f32(i32 35, float %7042, float 0.000000e+00)  ; FMax(a,b)
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = fadd fast float %7045, %7043
  %7047 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7048 = fmul fast float %7046, %7047
  %7049 = call float @dx.op.unary.f32(i32 23, float %7048)  ; Log(value)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7051 = fmul fast float %7050, %7049
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7054 = fmul fast float %7051, %7053
  %7055 = call float @dx.op.unary.f32(i32 7, float %7054)  ; Saturate(value)
  %7056 = uitofp i32 %7034 to float
  %7057 = uitofp i32 %7037 to float
  %7058 = fadd fast float %7056, 5.000000e-01
  %7059 = fadd fast float %7057, 5.000000e-01
  %7060 = fmul fast float %7053, %7058
  %7061 = fmul fast float %7053, %7059
  %7062 = fadd fast float %7060, 0x3F0FFB4800000000
  %7063 = fadd fast float %7061, 0xBF0FFB4800000000
  %7064 = call float @dx.op.binary.f32(i32 35, float %7055, float %7062)  ; FMax(a,b)
  %7065 = call float @dx.op.binary.f32(i32 36, float %7064, float %7063)  ; FMin(a,b)
  %7066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7066, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7066, 2
  %7069 = extractvalue %dx.types.CBufRet.f32 %7066, 0
  %7070 = fmul fast float %7067, %7065
  %7071 = fadd fast float %7069, %7070
  %7072 = fadd fast float %7069, %7068
  %7073 = fsub fast float %7067, %7068
  %7074 = fadd fast float %7073, %7069
  %7075 = call float @dx.op.binary.f32(i32 35, float %7071, float %7072)  ; FMax(a,b)
  %7076 = call float @dx.op.binary.f32(i32 36, float %7075, float %7074)  ; FMin(a,b)
  %7077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7014, float %7015, float %7076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7078 = extractvalue %dx.types.ResRet.f32 %7077, 0
  %7079 = extractvalue %dx.types.ResRet.f32 %7077, 1
  %7080 = extractvalue %dx.types.ResRet.f32 %7077, 2
  %7081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.i32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.i32 %7081, 1
  %7084 = uitofp i32 %7082 to float
  %7085 = uitofp i32 %7083 to float
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7089 = fmul fast float %7084, %7014
  %7090 = fmul fast float %7085, %7015
  %7091 = fadd fast float %7089, -5.000000e-01
  %7092 = fadd fast float %7090, -5.000000e-01
  %7093 = call float @dx.op.unary.f32(i32 22, float %7091)  ; Frc(value)
  %7094 = call float @dx.op.unary.f32(i32 22, float %7092)  ; Frc(value)
  %7095 = fmul fast float %7093, %7093
  %7096 = fmul fast float %7095, %7093
  %7097 = fsub fast float 3.000000e+00, %7093
  %7098 = fmul fast float %7095, %7097
  %7099 = fmul fast float %7093, 3.000000e+00
  %7100 = fmul fast float %7096, 3.000000e+00
  %7101 = fmul fast float %7095, 6.000000e+00
  %7102 = fsub fast float %7100, %7101
  %7103 = fadd fast float %7102, 4.000000e+00
  %7104 = fmul fast float %7103, 0x3FC5555560000000
  %7105 = fmul fast float %7096, -3.000000e+00
  %7106 = fadd fast float %7095, %7093
  %7107 = fmul fast float %7106, 3.000000e+00
  %7108 = fadd fast float %7105, 1.000000e+00
  %7109 = fadd fast float %7108, %7107
  %7110 = fmul fast float %7096, 0x3FC5555560000000
  %7111 = fmul fast float %7094, %7094
  %7112 = fmul fast float %7111, %7094
  %7113 = fsub fast float 3.000000e+00, %7094
  %7114 = fmul fast float %7111, %7113
  %7115 = fmul fast float %7094, 3.000000e+00
  %7116 = fmul fast float %7112, 3.000000e+00
  %7117 = fmul fast float %7111, 6.000000e+00
  %7118 = fsub fast float %7116, %7117
  %7119 = fadd fast float %7118, 4.000000e+00
  %7120 = fmul fast float %7119, 0x3FC5555560000000
  %7121 = fmul fast float %7112, -3.000000e+00
  %7122 = fadd fast float %7111, %7094
  %7123 = fmul fast float %7122, 3.000000e+00
  %7124 = fadd fast float %7121, 1.000000e+00
  %7125 = fadd fast float %7124, %7123
  %7126 = fmul fast float %7112, 0x3FC5555560000000
  %7127 = fadd fast float %7093, 1.000000e+00
  %7128 = fsub fast float 1.000000e+00, %7099
  %7129 = fadd fast float %7128, %7098
  %7130 = fadd fast float %7129, %7103
  %7131 = fmul fast float %7130, 0x3FC5555560000000
  %7132 = fdiv fast float %7104, %7131
  %7133 = fsub fast float %7127, %7132
  %7134 = fsub fast float 1.000000e+00, %7093
  %7135 = fadd fast float %7109, %7096
  %7136 = fmul fast float %7135, 0x3FC5555560000000
  %7137 = fdiv fast float %7110, %7136
  %7138 = fadd fast float %7134, %7137
  %7139 = fadd fast float %7094, 1.000000e+00
  %7140 = fsub fast float 1.000000e+00, %7115
  %7141 = fadd fast float %7140, %7114
  %7142 = fadd fast float %7141, %7119
  %7143 = fmul fast float %7142, 0x3FC5555560000000
  %7144 = fdiv fast float %7120, %7143
  %7145 = fsub fast float %7139, %7144
  %7146 = fsub fast float 1.000000e+00, %7094
  %7147 = fadd fast float %7125, %7112
  %7148 = fmul fast float %7147, 0x3FC5555560000000
  %7149 = fdiv fast float %7126, %7148
  %7150 = fadd fast float %7149, %7146
  %7151 = fmul fast float %7133, %7087
  %7152 = fsub fast float %7014, %7151
  %7153 = fmul fast float %7138, %7087
  %7154 = fadd fast float %7153, %7014
  %7155 = fmul fast float %7150, %7088
  %7156 = fadd fast float %7155, %7015
  %7157 = fmul fast float %7145, %7088
  %7158 = fsub fast float %7015, %7157
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7152, float %7158, float %7076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.ResRet.f32 %7159, 2
  %7163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7154, float %7158, float %7076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7164 = extractvalue %dx.types.ResRet.f32 %7163, 0
  %7165 = extractvalue %dx.types.ResRet.f32 %7163, 1
  %7166 = extractvalue %dx.types.ResRet.f32 %7163, 2
  %7167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7152, float %7156, float %7076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7168 = extractvalue %dx.types.ResRet.f32 %7167, 0
  %7169 = extractvalue %dx.types.ResRet.f32 %7167, 1
  %7170 = extractvalue %dx.types.ResRet.f32 %7167, 2
  %7171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7154, float %7156, float %7076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7172 = extractvalue %dx.types.ResRet.f32 %7171, 0
  %7173 = extractvalue %dx.types.ResRet.f32 %7171, 1
  %7174 = extractvalue %dx.types.ResRet.f32 %7171, 2
  %7175 = fsub fast float %7168, %7160
  %7176 = fsub fast float %7169, %7161
  %7177 = fsub fast float %7170, %7162
  %7178 = fmul fast float %7175, %7148
  %7179 = fmul fast float %7176, %7148
  %7180 = fmul fast float %7177, %7148
  %7181 = fadd fast float %7178, %7160
  %7182 = fadd fast float %7179, %7161
  %7183 = fadd fast float %7180, %7162
  %7184 = fsub fast float %7172, %7164
  %7185 = fsub fast float %7173, %7165
  %7186 = fsub fast float %7174, %7166
  %7187 = fmul fast float %7184, %7148
  %7188 = fmul fast float %7185, %7148
  %7189 = fmul fast float %7186, %7148
  %7190 = fsub fast float %7164, %7181
  %7191 = fadd fast float %7190, %7187
  %7192 = fsub fast float %7165, %7182
  %7193 = fadd fast float %7192, %7188
  %7194 = fsub fast float %7166, %7183
  %7195 = fadd fast float %7194, %7189
  %7196 = fmul fast float %7191, %7136
  %7197 = fmul fast float %7193, %7136
  %7198 = fmul fast float %7195, %7136
  %7199 = fadd fast float %7196, %7181
  %7200 = fadd fast float %7197, %7182
  %7201 = fadd fast float %7198, %7183
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 1
  %7204 = fmul fast float %7199, %7203
  %7205 = fmul fast float %7200, %7203
  %7206 = fmul fast float %7201, %7203
  br label %7207

; <label>:7207                                    ; preds = %7039, %7008
  %7208 = phi float [ %7078, %7039 ], [ 1.000000e+00, %7008 ]
  %7209 = phi float [ %7079, %7039 ], [ 1.000000e+00, %7008 ]
  %7210 = phi float [ %7080, %7039 ], [ 1.000000e+00, %7008 ]
  %7211 = phi float [ %7204, %7039 ], [ 0.000000e+00, %7008 ]
  %7212 = phi float [ %7205, %7039 ], [ 0.000000e+00, %7008 ]
  %7213 = phi float [ %7206, %7039 ], [ 0.000000e+00, %7008 ]
  %7214 = fmul fast float %7211, %6985
  %7215 = fmul fast float %7212, %6985
  %7216 = fmul fast float %7213, %6985
  %7217 = call float @dx.op.dot3.f32(i32 55, float %7208, float %7209, float %7210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7218 = call float @dx.op.dot3.f32(i32 55, float %7214, float %7215, float %7216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7219 = select i1 %222, float %7217, float %7208
  %7220 = select i1 %222, float %7217, float %7209
  %7221 = select i1 %222, float 1.000000e+00, float %7210
  %7222 = select i1 %222, float %7218, float %7214
  %7223 = select i1 %222, float 0.000000e+00, float %7215
  %7224 = select i1 %222, float 0.000000e+00, float %7216
  %7225 = fmul fast float %7219, %6998
  %7226 = fmul fast float %7220, %6999
  %7227 = fmul fast float %7221, %7000
  %7228 = fadd fast float %7225, %7222
  %7229 = fadd fast float %7226, %7223
  %7230 = fadd fast float %7224, %7227
  %7231 = fmul fast float %7219, %6976
  %7232 = fmul fast float %7220, %6977
  %7233 = fmul fast float %7221, %6978
  %7234 = fmul fast float %130, %7010
  %7235 = fmul fast float %132, %7011
  %7236 = fsub fast float 1.000000e+00, %7234
  %7237 = fsub fast float 1.000000e+00, %7235
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7242 = fmul fast float %7236, %7239
  %7243 = fmul fast float %7236, %7240
  %7244 = fmul fast float %7236, %7241
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 0
  %7247 = extractvalue %dx.types.CBufRet.f32 %7245, 1
  %7248 = extractvalue %dx.types.CBufRet.f32 %7245, 2
  %7249 = fmul fast float %7237, %7246
  %7250 = fmul fast float %7237, %7247
  %7251 = fmul fast float %7237, %7248
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.CBufRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.CBufRet.f32 %7252, 2
  %7256 = fadd fast float %7249, %7253
  %7257 = fadd fast float %7256, %7242
  %7258 = fadd fast float %7250, %7254
  %7259 = fadd fast float %7258, %7243
  %7260 = fadd fast float %7251, %7255
  %7261 = fadd fast float %7260, %7244
  %7262 = fmul fast float %7257, %182
  %7263 = fmul fast float %7259, %182
  %7264 = fmul fast float %7261, %182
  br label %7265

; <label>:7265                                    ; preds = %7207, %6975
  %7266 = phi float [ %7262, %7207 ], [ %160, %6975 ]
  %7267 = phi float [ %7263, %7207 ], [ %161, %6975 ]
  %7268 = phi float [ %7264, %7207 ], [ %162, %6975 ]
  %7269 = phi float [ %182, %7207 ], [ %88, %6975 ]
  %7270 = phi float [ %7228, %7207 ], [ %6998, %6975 ]
  %7271 = phi float [ %7229, %7207 ], [ %6999, %6975 ]
  %7272 = phi float [ %7230, %7207 ], [ %7000, %6975 ]
  %7273 = phi float [ %7231, %7207 ], [ %6976, %6975 ]
  %7274 = phi float [ %7232, %7207 ], [ %6977, %6975 ]
  %7275 = phi float [ %7233, %7207 ], [ %6978, %6975 ]
  %7276 = phi float [ %7208, %7207 ], [ 1.000000e+00, %6975 ]
  br i1 %7007, label %8431, label %7277

; <label>:7277                                    ; preds = %7265
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.CBufRet.f32 %7278, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7278, 3
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.CBufRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.CBufRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.CBufRet.f32 %7288, 2
  %7292 = extractvalue %dx.types.CBufRet.f32 %7288, 3
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7295 = extractvalue %dx.types.CBufRet.f32 %7293, 1
  %7296 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7297 = extractvalue %dx.types.CBufRet.f32 %7293, 3
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 3
  %7302 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 1
  %7304 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7305 = fcmp fast olt float %7304, -5.000000e-01
  %7306 = call float @dx.op.dot3.f32(i32 55, float %7266, float %7267, float %7268, float %7266, float %7267, float %7268)  ; Dot3(ax,ay,az,bx,by,bz)
  %7307 = call float @dx.op.unary.f32(i32 25, float %7306)  ; Rsqrt(value)
  %7308 = fmul fast float %7307, %7306
  %7309 = fmul fast float %7307, %7266
  %7310 = fmul fast float %7307, %7267
  %7311 = fmul fast float %7307, %7268
  %7312 = fadd fast float %7308, %7282
  %7313 = call float @dx.op.dot3.f32(i32 55, float %7309, float %7310, float %7311, float %7279, float %7280, float %7281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.i32 %7314, 1
  %7316 = and i32 %7315, 1
  %7317 = icmp ne i32 %7316, 0
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7320 = fcmp fast ogt float %7319, 0.000000e+00
  %7321 = and i1 %7317, %7320
  br i1 %7321, label %7322, label %7728, !dx.controlflow.hints !123

; <label>:7322                                    ; preds = %7277
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7329 = fsub fast float %7326, %7328
  %7330 = and i32 %7315, 2
  %7331 = extractvalue %dx.types.CBufRet.i32 %7314, 0
  %7332 = call i32 @dx.op.binary.i32(i32 40, i32 %7331, i32 3)  ; UMin(a,b)
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7338 = fsub fast float %7334, %7336
  %7339 = fsub fast float %7335, %7337
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 0
  %7342 = fcmp fast ogt float %7341, 0.000000e+00
  %7343 = fsub fast float -0.000000e+00, %7338
  %7344 = fsub fast float -0.000000e+00, %7339
  %7345 = call float @dx.op.dot2.f32(i32 54, float %7309, float %7310, float %7309, float %7310)  ; Dot2(ax,ay,bx,by)
  %7346 = call float @dx.op.dot2.f32(i32 54, float %7309, float %7310, float %7343, float %7344)  ; Dot2(ax,ay,bx,by)
  %7347 = fmul fast float %7346, 2.000000e+00
  %7348 = call float @dx.op.dot2.f32(i32 54, float %7343, float %7344, float %7343, float %7344)  ; Dot2(ax,ay,bx,by)
  %7349 = fmul fast float %7341, %7341
  %7350 = fsub fast float %7348, %7349
  %7351 = fmul fast float %7347, %7347
  %7352 = fmul fast float %7345, 4.000000e+00
  %7353 = fmul fast float %7352, %7350
  %7354 = fsub fast float %7351, %7353
  %7355 = fcmp fast ogt float %7354, 0.000000e+00
  br i1 %7355, label %7356, label %7371

; <label>:7356                                    ; preds = %7322
  %7357 = fcmp fast ogt float %7347, 0.000000e+00
  %7358 = call float @dx.op.unary.f32(i32 24, float %7354)  ; Sqrt(value)
  %7359 = fsub fast float -0.000000e+00, %7358
  %7360 = select i1 %7357, float %7358, float %7359
  %7361 = fadd fast float %7360, %7347
  %7362 = fmul float %7361, -5.000000e-01
  %7363 = fdiv fast float %7362, %7345
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float 0.000000e+00)  ; FMax(a,b)
  %7365 = call float @dx.op.binary.f32(i32 36, float %7308, float %7364)  ; FMin(a,b)
  %7366 = fdiv fast float %7350, %7362
  %7367 = call float @dx.op.binary.f32(i32 35, float %7366, float 0.000000e+00)  ; FMax(a,b)
  %7368 = call float @dx.op.binary.f32(i32 36, float %7308, float %7367)  ; FMin(a,b)
  %7369 = call float @dx.op.binary.f32(i32 36, float %7365, float %7368)  ; FMin(a,b)
  %7370 = call float @dx.op.binary.f32(i32 35, float %7365, float %7368)  ; FMax(a,b)
  br label %7371

; <label>:7371                                    ; preds = %7356, %7322
  %7372 = phi float [ %7370, %7356 ], [ -1.000000e+00, %7322 ]
  %7373 = phi float [ %7369, %7356 ], [ -1.000000e+00, %7322 ]
  %7374 = phi i1 [ true, %7356 ], [ false, %7322 ]
  %7375 = and i1 %7342, %7374
  br i1 %7375, label %7376, label %7378

; <label>:7376                                    ; preds = %7371
  %7377 = fcmp fast oeq float %7373, %7372
  br i1 %7377, label %7681, label %7379

; <label>:7378                                    ; preds = %7371
  br i1 %7342, label %7681, label %7379

; <label>:7379                                    ; preds = %7378, %7376
  %7380 = phi float [ %7308, %7378 ], [ %7372, %7376 ]
  %7381 = phi float [ 0.000000e+00, %7378 ], [ %7373, %7376 ]
  %7382 = icmp ne i32 %7330, 0
  %7383 = fmul fast float %7380, %7311
  %7384 = fadd fast float %7383, %7324
  %7385 = fmul fast float %7384, %7380
  %7386 = select i1 %7382, float 0.000000e+00, float %7385
  %7387 = fcmp fast oeq float %7311, 0.000000e+00
  %7388 = fdiv fast float %7329, %7311
  %7389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7388)  ; FMax(a,b)
  %7390 = select i1 %7387, float %7380, float %7389
  %7391 = call float @dx.op.binary.f32(i32 36, float %7380, float %7390)  ; FMin(a,b)
  %7392 = fcmp fast ogt float %7311, 0.000000e+00
  %7393 = fcmp fast olt float %7329, 0.000000e+00
  br i1 %7392, label %7394, label %7451

; <label>:7394                                    ; preds = %7379
  %7395 = icmp eq i32 %7330, 0
  br i1 %7393, label %7396, label %7440

; <label>:7396                                    ; preds = %7394
  %7397 = select i1 %7395, float %7380, float 0.000000e+00
  %7398 = fsub fast float -0.000000e+00, %7397
  %7399 = call float @dx.op.unary.f32(i32 6, float %7398)  ; FAbs(value)
  %7400 = fmul fast float %7397, %7311
  %7401 = fadd fast float %7400, %7324
  %7402 = fmul fast float %7399, %7401
  %7403 = fsub fast float %7386, %7402
  %7404 = fsub fast float %7380, %7399
  %7405 = select i1 %7395, float %7404, float 0.000000e+00
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 0
  %7408 = extractvalue %dx.types.CBufRet.f32 %7406, 1
  %7409 = extractvalue %dx.types.CBufRet.f32 %7406, 2
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7410, 3
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 3
  %7417 = call float @dx.op.binary.f32(i32 36, float %7403, float %7416)  ; FMin(a,b)
  %7418 = fmul fast float %7414, %7405
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = fsub fast float %7411, %7407
  %7421 = fsub fast float %7412, %7408
  %7422 = fsub fast float %7413, %7409
  %7423 = fmul fast float %7419, %7420
  %7424 = fmul fast float %7419, %7421
  %7425 = fmul fast float %7419, %7422
  %7426 = fadd fast float %7423, %7407
  %7427 = fadd fast float %7424, %7408
  %7428 = fadd fast float %7425, %7409
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7432 = fadd fast float %7431, %7430
  %7433 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7429, 2
  %7435 = extractvalue %dx.types.CBufRet.f32 %7429, 3
  %7436 = fadd fast float %7435, %7434
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  %7438 = fmul fast float %7433, %7417
  %7439 = fmul fast float %7438, %7437
  br label %7681

; <label>:7440                                    ; preds = %7394
  br i1 %7395, label %7441, label %7462

; <label>:7441                                    ; preds = %7440
  %7442 = call float @dx.op.binary.f32(i32 36, float %7391, float %7381)  ; FMin(a,b)
  %7443 = fsub fast float %7391, %7442
  %7444 = fsub fast float %7443, %7380
  %7445 = call float @dx.op.unary.f32(i32 6, float %7444)  ; FAbs(value)
  %7446 = fadd fast float %7443, %7380
  %7447 = fmul fast float %7446, %7311
  %7448 = fadd fast float %7447, %7324
  %7449 = fmul fast float %7448, %7445
  %7450 = fsub fast float %7386, %7449
  br label %7462

; <label>:7451                                    ; preds = %7379
  br i1 %7393, label %7452, label %7462

; <label>:7452                                    ; preds = %7451
  %7453 = call float @dx.op.binary.f32(i32 35, float %7381, float %7391)  ; FMax(a,b)
  %7454 = icmp eq i32 %7330, 0
  %7455 = select i1 %7454, float %7391, float 0.000000e+00
  %7456 = fsub fast float -0.000000e+00, %7455
  %7457 = call float @dx.op.unary.f32(i32 6, float %7456)  ; FAbs(value)
  %7458 = fmul fast float %7455, %7311
  %7459 = fadd fast float %7458, %7324
  %7460 = fmul fast float %7457, %7459
  %7461 = fsub fast float %7386, %7460
  br label %7462

; <label>:7462                                    ; preds = %7452, %7451, %7441, %7440
  %7463 = phi float [ %7381, %7440 ], [ %7381, %7441 ], [ %7453, %7452 ], [ %7381, %7451 ]
  %7464 = phi float [ 0.000000e+00, %7440 ], [ %7445, %7441 ], [ %7457, %7452 ], [ 0.000000e+00, %7451 ]
  %7465 = phi float [ %7386, %7440 ], [ %7450, %7441 ], [ %7461, %7452 ], [ %7386, %7451 ]
  %7466 = phi float [ %7391, %7440 ], [ %7391, %7441 ], [ %7380, %7452 ], [ %7380, %7451 ]
  %7467 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7467, align 4, !tbaa !124, !noalias !126
  %7468 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7468, align 4, !tbaa !124, !noalias !126
  %7469 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7469, align 4, !tbaa !124, !noalias !126
  %7470 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7470, align 4, !tbaa !124, !noalias !126
  %7471 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7471, align 4, !tbaa !124, !noalias !126
  %7472 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7472, align 4, !tbaa !124, !noalias !126
  %7473 = icmp sgt i32 %7332, 0
  br i1 %7473, label %7474, label %7535

; <label>:7474                                    ; preds = %7462
  br label %7475

; <label>:7475                                    ; preds = %7524, %7474
  %7476 = phi i32 [ %7525, %7524 ], [ 0, %7474 ]
  %7477 = phi i32 [ %7526, %7524 ], [ 0, %7474 ]
  %7478 = add nuw i32 %7477, 171
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7478)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.CBufRet.f32 %7482, 1
  %7485 = fsub fast float %7480, %7483
  %7486 = fsub fast float %7481, %7484
  %7487 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7488 = fsub fast float -0.000000e+00, %7485
  %7489 = fsub fast float -0.000000e+00, %7486
  %7490 = call float @dx.op.dot2.f32(i32 54, float %7309, float %7310, float %7488, float %7489)  ; Dot2(ax,ay,bx,by)
  %7491 = fmul fast float %7490, 2.000000e+00
  %7492 = call float @dx.op.dot2.f32(i32 54, float %7488, float %7489, float %7488, float %7489)  ; Dot2(ax,ay,bx,by)
  %7493 = fmul fast float %7487, %7487
  %7494 = fsub fast float %7492, %7493
  %7495 = fmul fast float %7491, %7491
  %7496 = fmul fast float %7352, %7494
  %7497 = fsub fast float %7495, %7496
  %7498 = fcmp fast ogt float %7497, 0.000000e+00
  br i1 %7498, label %7499, label %7514

; <label>:7499                                    ; preds = %7475
  %7500 = fcmp fast ogt float %7491, 0.000000e+00
  %7501 = call float @dx.op.unary.f32(i32 24, float %7497)  ; Sqrt(value)
  %7502 = fsub fast float -0.000000e+00, %7501
  %7503 = select i1 %7500, float %7501, float %7502
  %7504 = fadd fast float %7503, %7491
  %7505 = fmul float %7504, -5.000000e-01
  %7506 = fdiv fast float %7505, %7345
  %7507 = call float @dx.op.binary.f32(i32 35, float %7506, float 0.000000e+00)  ; FMax(a,b)
  %7508 = call float @dx.op.binary.f32(i32 36, float %7380, float %7507)  ; FMin(a,b)
  %7509 = fdiv fast float %7494, %7505
  %7510 = call float @dx.op.binary.f32(i32 35, float %7509, float 0.000000e+00)  ; FMax(a,b)
  %7511 = call float @dx.op.binary.f32(i32 36, float %7380, float %7510)  ; FMin(a,b)
  %7512 = call float @dx.op.binary.f32(i32 36, float %7508, float %7511)  ; FMin(a,b)
  %7513 = call float @dx.op.binary.f32(i32 35, float %7508, float %7511)  ; FMax(a,b)
  br label %7514

; <label>:7514                                    ; preds = %7499, %7475
  %7515 = phi float [ %7513, %7499 ], [ -1.000000e+00, %7475 ]
  %7516 = phi float [ %7512, %7499 ], [ -1.000000e+00, %7475 ]
  %7517 = phi i1 [ true, %7499 ], [ false, %7475 ]
  br i1 %7517, label %7518, label %7524

; <label>:7518                                    ; preds = %7514
  %7519 = call float @dx.op.binary.f32(i32 35, float %7463, float %7516)  ; FMax(a,b)
  %7520 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7477
  store float %7519, float* %7520, align 4, !tbaa !124, !noalias !126
  %7521 = call float @dx.op.binary.f32(i32 35, float %7463, float %7515)  ; FMax(a,b)
  %7522 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7477
  store float %7521, float* %7522, align 4, !tbaa !124, !noalias !126
  %7523 = add nsw i32 %7476, 1
  br label %7524

; <label>:7524                                    ; preds = %7518, %7514
  %7525 = phi i32 [ %7523, %7518 ], [ %7476, %7514 ]
  %7526 = add nuw nsw i32 %7477, 1
  %7527 = icmp eq i32 %7526, %7332
  br i1 %7527, label %7528, label %7475

; <label>:7528                                    ; preds = %7524
  %7529 = load float, float* %7469, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7530 = load float, float* %7468, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7531 = load float, float* %7467, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7532 = load float, float* %7472, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7533 = load float, float* %7471, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7534 = load float, float* %7470, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7535

; <label>:7535                                    ; preds = %7528, %7462
  %7536 = phi float [ -1.000000e+00, %7462 ], [ %7534, %7528 ]
  %7537 = phi float [ -1.000000e+00, %7462 ], [ %7533, %7528 ]
  %7538 = phi float [ -1.000000e+00, %7462 ], [ %7532, %7528 ]
  %7539 = phi float [ -1.000000e+00, %7462 ], [ %7531, %7528 ]
  %7540 = phi float [ -1.000000e+00, %7462 ], [ %7530, %7528 ]
  %7541 = phi float [ -1.000000e+00, %7462 ], [ %7529, %7528 ]
  %7542 = phi i32 [ 0, %7462 ], [ %7525, %7528 ]
  %7543 = call float @dx.op.binary.f32(i32 36, float %7540, float %7541)  ; FMin(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7539, float %7543)  ; FMin(a,b)
  %7545 = call float @dx.op.binary.f32(i32 35, float %7539, float %7540)  ; FMax(a,b)
  %7546 = call float @dx.op.binary.f32(i32 36, float %7545, float %7541)  ; FMin(a,b)
  %7547 = call float @dx.op.binary.f32(i32 36, float %7539, float %7540)  ; FMin(a,b)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7547, float %7546)  ; FMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 35, float %7540, float %7541)  ; FMax(a,b)
  %7550 = call float @dx.op.binary.f32(i32 35, float %7539, float %7549)  ; FMax(a,b)
  store float %7544, float* %7467, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7548, float* %7468, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7550, float* %7469, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7551 = call float @dx.op.binary.f32(i32 36, float %7537, float %7538)  ; FMin(a,b)
  %7552 = call float @dx.op.binary.f32(i32 36, float %7536, float %7551)  ; FMin(a,b)
  %7553 = call float @dx.op.binary.f32(i32 35, float %7536, float %7537)  ; FMax(a,b)
  %7554 = call float @dx.op.binary.f32(i32 36, float %7553, float %7538)  ; FMin(a,b)
  %7555 = call float @dx.op.binary.f32(i32 36, float %7536, float %7537)  ; FMin(a,b)
  %7556 = call float @dx.op.binary.f32(i32 35, float %7555, float %7554)  ; FMax(a,b)
  %7557 = call float @dx.op.binary.f32(i32 35, float %7537, float %7538)  ; FMax(a,b)
  %7558 = call float @dx.op.binary.f32(i32 35, float %7536, float %7557)  ; FMax(a,b)
  store float %7552, float* %7470, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7556, float* %7471, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7558, float* %7472, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7559 = sub nsw i32 3, %7542
  %7560 = icmp sgt i32 %7559, 2
  br i1 %7560, label %7561, label %7599

; <label>:7561                                    ; preds = %7535
  %7562 = icmp eq i32 %7330, 0
  %7563 = fsub fast float %7380, %7464
  %7564 = select i1 %7562, float %7563, float %7464
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7568 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7570 = extractvalue %dx.types.CBufRet.f32 %7569, 0
  %7571 = extractvalue %dx.types.CBufRet.f32 %7569, 1
  %7572 = extractvalue %dx.types.CBufRet.f32 %7569, 2
  %7573 = extractvalue %dx.types.CBufRet.f32 %7569, 3
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 3
  %7576 = call float @dx.op.binary.f32(i32 36, float %7465, float %7575)  ; FMin(a,b)
  %7577 = fmul fast float %7573, %7564
  %7578 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7579 = fsub fast float %7570, %7566
  %7580 = fsub fast float %7571, %7567
  %7581 = fsub fast float %7572, %7568
  %7582 = fmul fast float %7578, %7579
  %7583 = fmul fast float %7578, %7580
  %7584 = fmul fast float %7578, %7581
  %7585 = fadd fast float %7582, %7566
  %7586 = fadd fast float %7583, %7567
  %7587 = fadd fast float %7584, %7568
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7591 = fadd fast float %7590, %7589
  %7592 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7594 = extractvalue %dx.types.CBufRet.f32 %7588, 3
  %7595 = fadd fast float %7594, %7593
  %7596 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7597 = fmul fast float %7592, %7576
  %7598 = fmul fast float %7597, %7596
  br label %7681

; <label>:7599                                    ; preds = %7535
  %7600 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7559
  %7601 = load float, float* %7600, align 4, !tbaa !124, !noalias !126
  %7602 = fcmp fast olt float %7601, %7466
  %7603 = icmp sgt i32 %7542, 0
  %7604 = and i1 %7603, %7602
  br i1 %7604, label %7605, label %7642

; <label>:7605                                    ; preds = %7599
  br label %7606

; <label>:7606                                    ; preds = %7635, %7605
  %7607 = phi float [ %7636, %7635 ], [ %7464, %7605 ]
  %7608 = phi float [ %7637, %7635 ], [ %7465, %7605 ]
  %7609 = phi float [ %7617, %7635 ], [ %7601, %7605 ]
  %7610 = phi i32 [ %7614, %7635 ], [ %7559, %7605 ]
  %7611 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7610
  %7612 = load float, float* %7611, align 4, !tbaa !124, !noalias !126
  %7613 = icmp slt i32 %7610, 2
  %7614 = add nsw i32 %7610, 1
  %7615 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7614
  %7616 = load float, float* %7615, align 4, !tbaa !124, !noalias !126
  %7617 = select i1 %7613, float %7616, float %7380
  %7618 = call float @dx.op.binary.f32(i32 36, float %7617, float %7612)  ; FMin(a,b)
  %7619 = call float @dx.op.binary.f32(i32 36, float %7466, float %7618)  ; FMin(a,b)
  %7620 = icmp eq i32 %7330, 0
  %7621 = fadd fast float %7619, %7609
  %7622 = fmul fast float %7621, %7311
  %7623 = fadd fast float %7622, %7324
  br i1 %7620, label %7629, label %7624

; <label>:7624                                    ; preds = %7606
  %7625 = fsub fast float %7619, %7609
  %7626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7625)  ; FMax(a,b)
  %7627 = fmul fast float %7626, %7623
  %7628 = fadd fast float %7627, %7608
  br label %7635

; <label>:7629                                    ; preds = %7606
  %7630 = fsub fast float %7609, %7619
  %7631 = call float @dx.op.unary.f32(i32 6, float %7630)  ; FAbs(value)
  %7632 = fadd fast float %7631, %7607
  %7633 = fmul fast float %7631, %7623
  %7634 = fsub fast float %7608, %7633
  br label %7635

; <label>:7635                                    ; preds = %7629, %7624
  %7636 = phi float [ %7626, %7624 ], [ %7632, %7629 ]
  %7637 = phi float [ %7628, %7624 ], [ %7634, %7629 ]
  %7638 = fcmp fast olt float %7617, %7466
  %7639 = icmp slt i32 %7614, 3
  %7640 = and i1 %7639, %7638
  br i1 %7640, label %7606, label %7641

; <label>:7641                                    ; preds = %7635
  br label %7642

; <label>:7642                                    ; preds = %7641, %7599
  %7643 = phi float [ %7464, %7599 ], [ %7636, %7641 ]
  %7644 = phi float [ %7465, %7599 ], [ %7637, %7641 ]
  %7645 = fsub fast float %7380, %7643
  %7646 = select i1 %7382, float %7643, float %7645
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.CBufRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.CBufRet.f32 %7651, 2
  %7655 = extractvalue %dx.types.CBufRet.f32 %7651, 3
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 3
  %7658 = call float @dx.op.binary.f32(i32 36, float %7644, float %7657)  ; FMin(a,b)
  %7659 = fmul fast float %7655, %7646
  %7660 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7661 = fsub fast float %7652, %7648
  %7662 = fsub fast float %7653, %7649
  %7663 = fsub fast float %7654, %7650
  %7664 = fmul fast float %7660, %7661
  %7665 = fmul fast float %7660, %7662
  %7666 = fmul fast float %7660, %7663
  %7667 = fadd fast float %7664, %7648
  %7668 = fadd fast float %7665, %7649
  %7669 = fadd fast float %7666, %7650
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = fadd fast float %7672, %7671
  %7674 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7676 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7677 = fadd fast float %7676, %7675
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7679 = fmul fast float %7674, %7658
  %7680 = fmul fast float %7679, %7678
  br label %7681

; <label>:7681                                    ; preds = %7642, %7561, %7396, %7378, %7376
  %7682 = phi float [ %7405, %7396 ], [ %7564, %7561 ], [ %7646, %7642 ], [ 0.000000e+00, %7376 ], [ 0.000000e+00, %7378 ]
  %7683 = phi float [ %7439, %7396 ], [ %7598, %7561 ], [ %7680, %7642 ], [ 0.000000e+00, %7376 ], [ 0.000000e+00, %7378 ]
  %7684 = phi float [ %7426, %7396 ], [ %7585, %7561 ], [ %7667, %7642 ], [ 0.000000e+00, %7376 ], [ 0.000000e+00, %7378 ]
  %7685 = phi float [ %7427, %7396 ], [ %7586, %7561 ], [ %7668, %7642 ], [ 0.000000e+00, %7376 ], [ 0.000000e+00, %7378 ]
  %7686 = phi float [ %7428, %7396 ], [ %7587, %7561 ], [ %7669, %7642 ], [ 0.000000e+00, %7376 ], [ 0.000000e+00, %7378 ]
  %7687 = fmul fast float %7319, %7683
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7690 = fsub fast float %7326, %7689
  %7691 = fcmp fast olt float %7687, -2.000000e+01
  %7692 = call float @dx.op.unary.f32(i32 21, float %7687)  ; Exp(value)
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7698 = fmul fast float %7695, %7690
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = fsub fast float 1.000000e+00, %7699
  %7701 = fmul fast float %7311, 5.000000e-01
  %7702 = fadd fast float %7701, 5.000000e-01
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fsub fast float 1.000000e+00, %7703
  %7705 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7700)  ; FMax(a,b)
  %7706 = fdiv fast float %7704, %7705
  %7707 = fsub fast float %7690, %7268
  %7708 = call float @dx.op.unary.f32(i32 6, float %7707)  ; FAbs(value)
  %7709 = fmul fast float %7708, %7694
  %7710 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7711 = fsub fast float 1.000000e+00, %7709
  %7712 = fmul fast float %7711, %7710
  %7713 = fadd fast float %7712, %7709
  %7714 = fmul fast float %7697, %7690
  %7715 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7716 = fsub fast float 1.000000e+00, %7713
  %7717 = fmul fast float %7716, %7715
  %7718 = fadd fast float %7717, %7713
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = fadd fast float %7692, -1.000000e+00
  %7721 = select i1 %7691, float -1.000000e+00, float %7720
  %7722 = fmul fast float %7719, %7721
  %7723 = fadd fast float %7722, 1.000000e+00
  %7724 = fsub fast float -0.000000e+00, %7722
  %7725 = fmul fast float %7684, %7724
  %7726 = fmul fast float %7685, %7724
  %7727 = fmul fast float %7686, %7724
  br label %7728

; <label>:7728                                    ; preds = %7681, %7277
  %7729 = phi float [ %7682, %7681 ], [ 0.000000e+00, %7277 ]
  %7730 = phi float [ %7723, %7681 ], [ 1.000000e+00, %7277 ]
  %7731 = phi float [ %7725, %7681 ], [ 0.000000e+00, %7277 ]
  %7732 = phi float [ %7726, %7681 ], [ 0.000000e+00, %7277 ]
  %7733 = phi float [ %7727, %7681 ], [ 0.000000e+00, %7277 ]
  %7734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7734, 1
  %7736 = fsub fast float 1.000000e+00, %7730
  %7737 = fmul fast float %7736, %7312
  %7738 = fmul fast float %7737, %7735
  %7739 = fsub fast float %7312, %7738
  br i1 %7305, label %7740, label %7769, !dx.controlflow.hints !162

; <label>:7740                                    ; preds = %7728
  %7741 = fmul fast float %7313, %7302
  %7742 = fadd fast float %7741, %7303
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = fmul fast float %7284, %7739
  %7745 = fsub fast float -0.000000e+00, %7744
  %7746 = fmul fast float %7285, %7739
  %7747 = fsub fast float -0.000000e+00, %7746
  %7748 = call float @dx.op.unary.f32(i32 21, float %7745)  ; Exp(value)
  %7749 = call float @dx.op.unary.f32(i32 21, float %7747)  ; Exp(value)
  %7750 = call float @dx.op.binary.f32(i32 35, float %7292, float %7748)  ; FMax(a,b)
  %7751 = call float @dx.op.binary.f32(i32 35, float %7292, float %7749)  ; FMax(a,b)
  %7752 = fsub fast float %7751, %7750
  %7753 = fmul fast float %7752, %7743
  %7754 = fadd fast float %7753, %7750
  %7755 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7756 = fsub fast float %7289, %7294
  %7757 = fsub fast float %7290, %7295
  %7758 = fsub fast float %7291, %7296
  %7759 = fmul fast float %7743, %7756
  %7760 = fmul fast float %7743, %7757
  %7761 = fmul fast float %7743, %7758
  %7762 = fadd fast float %7759, %7294
  %7763 = fadd fast float %7760, %7295
  %7764 = fadd fast float %7761, %7296
  %7765 = fsub fast float 1.000000e+00, %7755
  %7766 = fmul fast float %7765, %7762
  %7767 = fmul fast float %7765, %7763
  %7768 = fmul fast float %7765, %7764
  br label %7828

; <label>:7769                                    ; preds = %7728
  %7770 = fmul fast float %7739, %7301
  %7771 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7772 = fsub fast float 2.000000e+00, %7771
  %7773 = fmul fast float %7771, 9.921875e-01
  %7774 = fmul fast float %7773, %7772
  %7775 = fadd fast float %7774, 3.906250e-03
  %7776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7775, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = fsub fast float %7771, %7777
  %7779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7778)  ; FMax(a,b)
  %7780 = fmul fast float %7287, %7268
  %7781 = call float @dx.op.unary.f32(i32 6, float %7780)  ; FAbs(value)
  %7782 = fcmp fast ogt float %7781, 0x3EB0C6F7A0000000
  br i1 %7782, label %7783, label %7789, !dx.controlflow.hints !163

; <label>:7783                                    ; preds = %7769
  %7784 = fmul fast float %7780, 0xBFF7154760000000
  %7785 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = fdiv fast float %7786, %7780
  %7788 = fmul fast float %7787, %7297
  br label %7789

; <label>:7789                                    ; preds = %7783, %7769
  %7790 = phi float [ %7788, %7783 ], [ %7297, %7769 ]
  %7791 = fadd fast float %7790, %7299
  %7792 = fmul fast float %7791, %7779
  %7793 = fmul fast float %7284, %7792
  %7794 = fsub fast float -0.000000e+00, %7793
  %7795 = fmul fast float %7285, %7792
  %7796 = fsub fast float -0.000000e+00, %7795
  %7797 = fmul fast float %7286, %7792
  %7798 = fsub fast float -0.000000e+00, %7797
  %7799 = call float @dx.op.unary.f32(i32 21, float %7794)  ; Exp(value)
  %7800 = call float @dx.op.unary.f32(i32 21, float %7796)  ; Exp(value)
  %7801 = call float @dx.op.unary.f32(i32 21, float %7798)  ; Exp(value)
  %7802 = fmul fast float %7313, %7313
  %7803 = fadd fast float %7802, 1.000000e+00
  %7804 = fmul fast float %7803, 0x3FAE8EC8A0000000
  %7805 = fmul fast float %7804, %7294
  %7806 = fmul fast float %7804, %7295
  %7807 = fmul fast float %7804, %7296
  %7808 = fmul fast float %7313, %7292
  %7809 = fsub fast float 1.000000e+00, %7808
  %7810 = fmul fast float %7292, %7292
  %7811 = fsub fast float 1.000000e+00, %7810
  %7812 = fmul fast float %7811, 0x3FB45F3060000000
  %7813 = fmul fast float %7809, %7809
  %7814 = fdiv fast float 1.000000e+00, %7813
  %7815 = fmul fast float %7812, %7814
  %7816 = fmul fast float %7815, %7289
  %7817 = fmul fast float %7815, %7290
  %7818 = fmul fast float %7815, %7291
  %7819 = fadd fast float %7816, %7805
  %7820 = fadd fast float %7817, %7806
  %7821 = fadd fast float %7818, %7807
  %7822 = fsub fast float 1.000000e+00, %7799
  %7823 = fsub fast float 1.000000e+00, %7800
  %7824 = fsub fast float 1.000000e+00, %7801
  %7825 = fmul fast float %7819, %7822
  %7826 = fmul fast float %7820, %7823
  %7827 = fmul fast float %7821, %7824
  br label %7828

; <label>:7828                                    ; preds = %7789, %7740
  %7829 = phi float [ %7766, %7740 ], [ %7825, %7789 ]
  %7830 = phi float [ %7767, %7740 ], [ %7826, %7789 ]
  %7831 = phi float [ %7768, %7740 ], [ %7827, %7789 ]
  %7832 = phi float [ %7755, %7740 ], [ %7799, %7789 ]
  %7833 = phi float [ %7755, %7740 ], [ %7800, %7789 ]
  %7834 = phi float [ %7755, %7740 ], [ %7801, %7789 ]
  br i1 %7321, label %7835, label %8033, !dx.controlflow.hints !164

; <label>:7835                                    ; preds = %7828
  %7836 = extractvalue %dx.types.CBufRet.f32 %7734, 0
  %7837 = fmul fast float %7836, %7736
  %7838 = fsub fast float %7731, %7829
  %7839 = fsub fast float %7732, %7830
  %7840 = fsub fast float %7733, %7831
  %7841 = fmul fast float %7837, %7838
  %7842 = fmul fast float %7837, %7839
  %7843 = fmul fast float %7837, %7840
  %7844 = fadd fast float %7841, %7829
  %7845 = fadd fast float %7842, %7830
  %7846 = fadd fast float %7843, %7831
  %7847 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7832)  ; FMax(a,b)
  %7848 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7833)  ; FMax(a,b)
  %7849 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7834)  ; FMax(a,b)
  %7850 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7730)  ; FMax(a,b)
  %7851 = call float @dx.op.binary.f32(i32 35, float %7729, float %7739)  ; FMax(a,b)
  %7852 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7851)  ; FMax(a,b)
  %7853 = fdiv fast float %7729, %7852
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = fdiv fast float %7739, %7852
  %7856 = call float @dx.op.unary.f32(i32 7, float %7855)  ; Saturate(value)
  %7857 = fcmp fast une float %7850, 1.000000e+00
  br i1 %7857, label %7858, label %7871, !dx.controlflow.hints !165

; <label>:7858                                    ; preds = %7835
  %7859 = call float @dx.op.unary.f32(i32 23, float %7850)  ; Log(value)
  %7860 = fmul fast float %7859, 0x3FE62E4300000000
  %7861 = fmul fast float %7731, %7860
  %7862 = fsub fast float -0.000000e+00, %7861
  %7863 = fmul fast float %7732, %7860
  %7864 = fsub fast float -0.000000e+00, %7863
  %7865 = fmul fast float %7733, %7860
  %7866 = fsub fast float -0.000000e+00, %7865
  %7867 = fsub fast float 1.000000e+00, %7850
  %7868 = fdiv fast float %7862, %7867
  %7869 = fdiv fast float %7864, %7867
  %7870 = fdiv fast float %7866, %7867
  br label %7871

; <label>:7871                                    ; preds = %7858, %7835
  %7872 = phi float [ %7868, %7858 ], [ %7731, %7835 ]
  %7873 = phi float [ %7869, %7858 ], [ %7732, %7835 ]
  %7874 = phi float [ %7870, %7858 ], [ %7733, %7835 ]
  %7875 = phi float [ %7860, %7858 ], [ 0.000000e+00, %7835 ]
  %7876 = fcmp fast une float %7847, 1.000000e+00
  br i1 %7876, label %7877, label %7884, !dx.controlflow.hints !166

; <label>:7877                                    ; preds = %7871
  %7878 = call float @dx.op.unary.f32(i32 23, float %7847)  ; Log(value)
  %7879 = fmul fast float %7878, 0x3FE62E4300000000
  %7880 = fmul fast float %7844, %7879
  %7881 = fsub fast float -0.000000e+00, %7880
  %7882 = fsub fast float 1.000000e+00, %7847
  %7883 = fdiv fast float %7881, %7882
  br label %7884

; <label>:7884                                    ; preds = %7877, %7871
  %7885 = phi float [ %7883, %7877 ], [ %7844, %7871 ]
  %7886 = phi float [ %7879, %7877 ], [ 0.000000e+00, %7871 ]
  %7887 = fcmp fast une float %7848, 1.000000e+00
  br i1 %7887, label %7888, label %7895, !dx.controlflow.hints !166

; <label>:7888                                    ; preds = %7884
  %7889 = call float @dx.op.unary.f32(i32 23, float %7848)  ; Log(value)
  %7890 = fmul fast float %7889, 0x3FE62E4300000000
  %7891 = fmul fast float %7845, %7890
  %7892 = fsub fast float -0.000000e+00, %7891
  %7893 = fsub fast float 1.000000e+00, %7848
  %7894 = fdiv fast float %7892, %7893
  br label %7895

; <label>:7895                                    ; preds = %7888, %7884
  %7896 = phi float [ %7894, %7888 ], [ %7845, %7884 ]
  %7897 = phi float [ %7890, %7888 ], [ 0.000000e+00, %7884 ]
  %7898 = fcmp fast une float %7849, 1.000000e+00
  br i1 %7898, label %7899, label %7906, !dx.controlflow.hints !166

; <label>:7899                                    ; preds = %7895
  %7900 = call float @dx.op.unary.f32(i32 23, float %7849)  ; Log(value)
  %7901 = fmul fast float %7900, 0x3FE62E4300000000
  %7902 = fmul fast float %7846, %7901
  %7903 = fsub fast float -0.000000e+00, %7902
  %7904 = fsub fast float 1.000000e+00, %7849
  %7905 = fdiv fast float %7903, %7904
  br label %7906

; <label>:7906                                    ; preds = %7899, %7895
  %7907 = phi float [ %7905, %7899 ], [ %7846, %7895 ]
  %7908 = phi float [ %7901, %7899 ], [ 0.000000e+00, %7895 ]
  %7909 = fmul fast float %7872, %7856
  %7910 = fmul fast float %7873, %7856
  %7911 = fmul fast float %7874, %7856
  %7912 = fmul fast float %7875, %7856
  %7913 = fmul fast float %7885, %7854
  %7914 = fmul fast float %7896, %7854
  %7915 = fmul fast float %7907, %7854
  %7916 = fmul fast float %7886, %7854
  %7917 = fmul fast float %7897, %7854
  %7918 = fmul fast float %7908, %7854
  %7919 = fadd fast float %7913, %7909
  %7920 = fadd fast float %7914, %7910
  %7921 = fadd fast float %7915, %7911
  %7922 = fadd fast float %7916, %7912
  %7923 = fadd fast float %7917, %7912
  %7924 = fadd fast float %7918, %7912
  %7925 = fcmp fast une float %7922, 0.000000e+00
  br i1 %7925, label %7926, label %7933, !dx.controlflow.hints !167

; <label>:7926                                    ; preds = %7906
  %7927 = fmul fast float %7922, 0x3FF7154760000000
  %7928 = call float @dx.op.unary.f32(i32 21, float %7927)  ; Exp(value)
  %7929 = fsub fast float 1.000000e+00, %7928
  %7930 = fmul fast float %7919, %7929
  %7931 = fsub fast float -0.000000e+00, %7930
  %7932 = fdiv fast float %7931, %7922
  br label %7933

; <label>:7933                                    ; preds = %7926, %7906
  %7934 = phi float [ %7928, %7926 ], [ 1.000000e+00, %7906 ]
  %7935 = phi float [ %7932, %7926 ], [ %7919, %7906 ]
  %7936 = fcmp fast une float %7923, 0.000000e+00
  br i1 %7936, label %7937, label %7944, !dx.controlflow.hints !167

; <label>:7937                                    ; preds = %7933
  %7938 = fmul fast float %7923, 0x3FF7154760000000
  %7939 = call float @dx.op.unary.f32(i32 21, float %7938)  ; Exp(value)
  %7940 = fsub fast float 1.000000e+00, %7939
  %7941 = fmul fast float %7920, %7940
  %7942 = fsub fast float -0.000000e+00, %7941
  %7943 = fdiv fast float %7942, %7923
  br label %7944

; <label>:7944                                    ; preds = %7937, %7933
  %7945 = phi float [ %7939, %7937 ], [ 1.000000e+00, %7933 ]
  %7946 = phi float [ %7943, %7937 ], [ %7920, %7933 ]
  %7947 = fcmp fast une float %7924, 0.000000e+00
  br i1 %7947, label %7948, label %7955, !dx.controlflow.hints !167

; <label>:7948                                    ; preds = %7944
  %7949 = fmul fast float %7924, 0x3FF7154760000000
  %7950 = call float @dx.op.unary.f32(i32 21, float %7949)  ; Exp(value)
  %7951 = fsub fast float 1.000000e+00, %7950
  %7952 = fmul fast float %7921, %7951
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fdiv fast float %7953, %7924
  br label %7955

; <label>:7955                                    ; preds = %7948, %7944
  %7956 = phi float [ %7950, %7948 ], [ 1.000000e+00, %7944 ]
  %7957 = phi float [ %7954, %7948 ], [ %7921, %7944 ]
  %7958 = fcmp fast ogt float %7854, %7856
  br i1 %7958, label %7959, label %7979

; <label>:7959                                    ; preds = %7955
  %7960 = fsub fast float 1.000000e+00, %7856
  %7961 = fmul fast float %7872, %7960
  %7962 = fmul fast float %7873, %7960
  %7963 = fmul fast float %7874, %7960
  %7964 = fmul fast float %7875, %7960
  %7965 = fcmp fast une float %7964, 0.000000e+00
  br i1 %7965, label %7966, label %8017, !dx.controlflow.hints !168

; <label>:7966                                    ; preds = %7959
  %7967 = fmul fast float %7964, 0x3FF7154760000000
  %7968 = call float @dx.op.unary.f32(i32 21, float %7967)  ; Exp(value)
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %7961, %7969
  %7971 = fsub fast float -0.000000e+00, %7970
  %7972 = fmul fast float %7962, %7969
  %7973 = fsub fast float -0.000000e+00, %7972
  %7974 = fmul fast float %7963, %7969
  %7975 = fsub fast float -0.000000e+00, %7974
  %7976 = fdiv fast float %7971, %7964
  %7977 = fdiv fast float %7973, %7964
  %7978 = fdiv fast float %7975, %7964
  br label %8017

; <label>:7979                                    ; preds = %7955
  %7980 = fsub fast float 1.000000e+00, %7854
  %7981 = fmul fast float %7885, %7980
  %7982 = fmul fast float %7896, %7980
  %7983 = fmul fast float %7907, %7980
  %7984 = fmul fast float %7886, %7980
  %7985 = fmul fast float %7897, %7980
  %7986 = fmul fast float %7908, %7980
  %7987 = fcmp fast une float %7984, 0.000000e+00
  br i1 %7987, label %7988, label %7995, !dx.controlflow.hints !167

; <label>:7988                                    ; preds = %7979
  %7989 = fmul fast float %7984, 0x3FF7154760000000
  %7990 = call float @dx.op.unary.f32(i32 21, float %7989)  ; Exp(value)
  %7991 = fsub fast float 1.000000e+00, %7990
  %7992 = fmul fast float %7981, %7991
  %7993 = fsub fast float -0.000000e+00, %7992
  %7994 = fdiv fast float %7993, %7984
  br label %7995

; <label>:7995                                    ; preds = %7988, %7979
  %7996 = phi float [ %7994, %7988 ], [ %7981, %7979 ]
  %7997 = phi float [ %7990, %7988 ], [ 1.000000e+00, %7979 ]
  %7998 = fcmp fast une float %7985, 0.000000e+00
  br i1 %7998, label %7999, label %8006, !dx.controlflow.hints !167

; <label>:7999                                    ; preds = %7995
  %8000 = fmul fast float %7985, 0x3FF7154760000000
  %8001 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8002 = fsub fast float 1.000000e+00, %8001
  %8003 = fmul fast float %7982, %8002
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fdiv fast float %8004, %7985
  br label %8006

; <label>:8006                                    ; preds = %7999, %7995
  %8007 = phi float [ %8005, %7999 ], [ %7982, %7995 ]
  %8008 = phi float [ %8001, %7999 ], [ 1.000000e+00, %7995 ]
  %8009 = fcmp fast une float %7986, 0.000000e+00
  br i1 %8009, label %8010, label %8017, !dx.controlflow.hints !167

; <label>:8010                                    ; preds = %8006
  %8011 = fmul fast float %7986, 0x3FF7154760000000
  %8012 = call float @dx.op.unary.f32(i32 21, float %8011)  ; Exp(value)
  %8013 = fsub fast float 1.000000e+00, %8012
  %8014 = fmul fast float %7983, %8013
  %8015 = fsub fast float -0.000000e+00, %8014
  %8016 = fdiv fast float %8015, %7986
  br label %8017

; <label>:8017                                    ; preds = %8010, %8006, %7966, %7959
  %8018 = phi float [ %8016, %8010 ], [ %7978, %7966 ], [ %7963, %7959 ], [ %7983, %8006 ]
  %8019 = phi float [ %8007, %8010 ], [ %7977, %7966 ], [ %7962, %7959 ], [ %8007, %8006 ]
  %8020 = phi float [ %7996, %8010 ], [ %7976, %7966 ], [ %7961, %7959 ], [ %7996, %8006 ]
  %8021 = phi float [ %8012, %8010 ], [ %7968, %7966 ], [ 1.000000e+00, %7959 ], [ 1.000000e+00, %8006 ]
  %8022 = phi float [ %8008, %8010 ], [ %7968, %7966 ], [ 1.000000e+00, %7959 ], [ %8008, %8006 ]
  %8023 = phi float [ %7997, %8010 ], [ %7968, %7966 ], [ 1.000000e+00, %7959 ], [ %7997, %8006 ]
  %8024 = fmul fast float %8023, %7935
  %8025 = fmul fast float %8022, %7946
  %8026 = fmul fast float %8021, %7957
  %8027 = fadd fast float %8024, %8020
  %8028 = fadd fast float %8025, %8019
  %8029 = fadd fast float %8026, %8018
  %8030 = fmul fast float %8023, %7934
  %8031 = fmul fast float %8022, %7945
  %8032 = fmul fast float %8021, %7956
  br label %8033

; <label>:8033                                    ; preds = %8017, %7828
  %8034 = phi float [ %8032, %8017 ], [ %7834, %7828 ]
  %8035 = phi float [ %8031, %8017 ], [ %7833, %7828 ]
  %8036 = phi float [ %8030, %8017 ], [ %7832, %7828 ]
  %8037 = phi float [ %8029, %8017 ], [ %7831, %7828 ]
  %8038 = phi float [ %8028, %8017 ], [ %7830, %7828 ]
  %8039 = phi float [ %8027, %8017 ], [ %7829, %7828 ]
  %8040 = fmul fast float %8039, %6985
  %8041 = fmul fast float %8038, %6985
  %8042 = fmul fast float %8037, %6985
  %8043 = fmul fast float %8036, %7276
  %8044 = call float @dx.op.dot3.f32(i32 55, float %8036, float %8035, float %8034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = call float @dx.op.dot3.f32(i32 55, float %8040, float %8041, float %8042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8046 = select i1 %222, float %8044, float %8036
  %8047 = select i1 %222, float %8044, float %8035
  %8048 = select i1 %222, float 1.000000e+00, float %8034
  %8049 = select i1 %222, float %8045, float %8040
  %8050 = select i1 %222, float 0.000000e+00, float %8041
  %8051 = select i1 %222, float 0.000000e+00, float %8042
  %8052 = fmul fast float %8046, %7270
  %8053 = fmul fast float %8047, %7271
  %8054 = fmul fast float %8048, %7272
  %8055 = fadd fast float %8052, %8049
  %8056 = fadd fast float %8053, %8050
  %8057 = fadd fast float %8051, %8054
  %8058 = fmul fast float %8046, %7273
  %8059 = fmul fast float %8047, %7274
  %8060 = fmul fast float %8048, %7275
  %8061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.i32 %8061, 0
  %8063 = icmp eq i32 %8062, 0
  br i1 %8063, label %8431, label %8064, !dx.controlflow.hints !169

; <label>:8064                                    ; preds = %8033
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8067 = extractvalue %dx.types.CBufRet.f32 %8065, 3
  %8068 = fmul fast float %8066, %97
  %8069 = fmul fast float %8067, %98
  %8070 = fmul fast float %8068, 2.000000e+00
  %8071 = fmul fast float %8069, 2.000000e+00
  %8072 = fsub fast float 1.000000e+00, %8070
  %8073 = fsub fast float 1.000000e+00, %8071
  %8074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.f32 %8074, 0
  %8076 = extractvalue %dx.types.CBufRet.f32 %8074, 1
  %8077 = extractvalue %dx.types.CBufRet.f32 %8074, 2
  %8078 = fmul fast float %8072, %8075
  %8079 = fmul fast float %8072, %8076
  %8080 = fmul fast float %8072, %8077
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8085 = fmul fast float %8073, %8082
  %8086 = fmul fast float %8073, %8083
  %8087 = fmul fast float %8073, %8084
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.CBufRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.CBufRet.f32 %8088, 2
  %8092 = fadd fast float %8085, %8089
  %8093 = fadd fast float %8092, %8078
  %8094 = fadd fast float %8086, %8090
  %8095 = fadd fast float %8094, %8079
  %8096 = fadd fast float %8087, %8091
  %8097 = fadd fast float %8096, %8080
  %8098 = fmul fast float %8093, %7269
  %8099 = fmul fast float %8095, %7269
  %8100 = fmul fast float %8097, %7269
  %8101 = fmul fast float %8098, %8098
  %8102 = fmul fast float %8099, %8099
  %8103 = fadd fast float %8101, %8102
  %8104 = fmul fast float %8100, %8100
  %8105 = fadd fast float %8103, %8104
  %8106 = call float @dx.op.unary.f32(i32 24, float %8105)  ; Sqrt(value)
  %8107 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %8108 = fsub fast float %8106, %8107
  %8109 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %8110 = fmul fast float %8108, %8109
  %8111 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8112 = fadd fast float %8111, -5.000000e-01
  %8113 = fmul fast float %8112, 2.000000e+00
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8116 = call float @dx.op.binary.f32(i32 36, float %8115, float %8113)  ; FMin(a,b)
  %8117 = fsub fast float -0.000000e+00, %8115
  %8118 = fcmp fast ogt float %8116, %8117
  br i1 %8118, label %8119, label %8431, !dx.controlflow.hints !170

; <label>:8119                                    ; preds = %8064
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8122 = fcmp fast ogt float %8121, 0.000000e+00
  br i1 %8122, label %8123, label %8198, !dx.controlflow.hints !171

; <label>:8123                                    ; preds = %8119
  %8124 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8125 = extractvalue %dx.types.Dimensions %8124, 0
  %8126 = sitofp i32 %8125 to float
  %8127 = extractvalue %dx.types.Dimensions %8124, 1
  %8128 = sitofp i32 %8127 to float
  %8129 = fmul fast float %8068, %8126
  %8130 = fmul fast float %8069, %8128
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 1
  %8133 = fsub fast float -0.000000e+00, %8132
  %8134 = fptoui float %8133 to i32
  %8135 = fptoui float %8129 to i32
  %8136 = fptoui float %8130 to i32
  %8137 = and i32 %8134, 31
  %8138 = lshr i32 %8135, %8137
  %8139 = lshr i32 %8136, %8137
  %8140 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8134, i32 %8138, i32 %8139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = fcmp fast olt float %8141, -1.000000e+00
  %8143 = fcmp fast ogt float %8141, -1.000000e+00
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 1
  %8146 = select i1 %8143, float %8145, float 1.000000e+00
  %8147 = fadd fast float %8141, 1.000000e+00
  %8148 = fmul fast float %8146, %8147
  %8149 = call float @dx.op.unary.f32(i32 6, float %8148)  ; FAbs(value)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8144, 3
  %8151 = fcmp fast oge float %8149, %8150
  %8152 = select i1 %8151, float 0x4197782600000000, float %8149
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = select i1 %8142, float %8154, float %8075
  %8158 = select i1 %8142, float %8155, float %8076
  %8159 = select i1 %8142, float %8156, float %8077
  %8160 = fmul fast float %8157, %8072
  %8161 = fmul fast float %8158, %8072
  %8162 = fmul fast float %8159, %8072
  %8163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.f32 %8163, 0
  %8165 = extractvalue %dx.types.CBufRet.f32 %8163, 1
  %8166 = extractvalue %dx.types.CBufRet.f32 %8163, 2
  %8167 = select i1 %8142, float %8164, float %8082
  %8168 = select i1 %8142, float %8165, float %8083
  %8169 = select i1 %8142, float %8166, float %8084
  %8170 = fmul fast float %8167, %8073
  %8171 = fmul fast float %8168, %8073
  %8172 = fmul fast float %8169, %8073
  %8173 = fadd fast float %8170, %8160
  %8174 = fadd fast float %8171, %8161
  %8175 = fadd fast float %8172, %8162
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %8180 = select i1 %8142, float %8177, float %8089
  %8181 = select i1 %8142, float %8178, float %8090
  %8182 = select i1 %8142, float %8179, float %8091
  %8183 = fadd fast float %8173, %8180
  %8184 = fadd fast float %8174, %8181
  %8185 = fadd fast float %8175, %8182
  %8186 = fmul fast float %8183, %8152
  %8187 = fmul fast float %8184, %8152
  %8188 = fmul fast float %8185, %8152
  %8189 = fmul fast float %8186, %8186
  %8190 = fmul fast float %8187, %8187
  %8191 = fadd fast float %8189, %8190
  %8192 = fmul fast float %8188, %8188
  %8193 = fadd fast float %8191, %8192
  %8194 = call float @dx.op.unary.f32(i32 24, float %8193)  ; Sqrt(value)
  %8195 = fsub fast float %8194, %8107
  %8196 = fmul fast float %8195, %8109
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  br label %8198

; <label>:8198                                    ; preds = %8123, %8119
  %8199 = phi float [ %8197, %8123 ], [ 1.000000e+00, %8119 ]
  %8200 = fmul fast float %8116, 5.000000e-01
  %8201 = fadd fast float %8200, 5.000000e-01
  %8202 = call float @dx.op.unary.f32(i32 22, float %8201)  ; Frc(value)
  %8203 = call float @dx.op.unary.f32(i32 27, float %8202)  ; Round_ni(value)
  %8204 = call float @dx.op.unary.f32(i32 22, float %8202)  ; Frc(value)
  %8205 = fmul fast float %8204, 2.000000e+00
  %8206 = fadd fast float %8205, -1.000000e+00
  %8207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8068, float %8069, float %8203, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8208 = extractvalue %dx.types.ResRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.ResRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.ResRet.f32 %8207, 2
  %8211 = extractvalue %dx.types.ResRet.f32 %8207, 3
  %8212 = fadd fast float %8208, -5.000000e-01
  %8213 = fadd fast float %8210, -5.000000e-01
  %8214 = fmul fast float %8212, 0xBFD5555560000000
  %8215 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8213, float %8214)  ; FMad(a,b,c)
  %8216 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8209, float 0.000000e+00)  ; FMad(a,b,c)
  %8217 = fadd fast float %8216, %8211
  %8218 = fmul fast float %8212, -7.500000e-01
  %8219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8213, float %8218)  ; FMad(a,b,c)
  %8220 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8209, float 0.000000e+00)  ; FMad(a,b,c)
  %8221 = fadd fast float %8220, %8211
  %8222 = call float @dx.op.binary.f32(i32 35, float %8215, float -1.000000e+00)  ; FMax(a,b)
  %8223 = call float @dx.op.binary.f32(i32 35, float %8217, float -1.000000e+00)  ; FMax(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float %8219, float -1.000000e+00)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 35, float %8221, float -1.000000e+00)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 36, float %8222, float 1.000000e+00)  ; FMin(a,b)
  %8227 = call float @dx.op.binary.f32(i32 36, float %8223, float 1.000000e+00)  ; FMin(a,b)
  %8228 = call float @dx.op.binary.f32(i32 36, float %8224, float 1.000000e+00)  ; FMin(a,b)
  %8229 = call float @dx.op.binary.f32(i32 36, float %8225, float 1.000000e+00)  ; FMin(a,b)
  %8230 = fcmp fast olt float %8226, 0x3FEFFF8020000000
  br i1 %8230, label %8231, label %8346, !dx.controlflow.hints !172

; <label>:8231                                    ; preds = %8198
  %8232 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = extractvalue %dx.types.CBufRet.f32 %8233, 3
  %8238 = fsub fast float %8234, %8226
  %8239 = fsub fast float %8235, %8227
  %8240 = fsub fast float %8236, %8228
  %8241 = fsub fast float %8237, %8229
  %8242 = fmul fast float %8238, %8232
  %8243 = fmul fast float %8239, %8232
  %8244 = fmul fast float %8240, %8232
  %8245 = fmul fast float %8241, %8232
  %8246 = fadd fast float %8242, %8226
  %8247 = fadd fast float %8243, %8227
  %8248 = fsub fast float -0.000000e+00, %8247
  %8249 = fadd fast float %8244, %8228
  %8250 = fadd fast float %8245, %8229
  %8251 = fmul fast float %8246, %8246
  %8252 = fsub fast float %8247, %8251
  %8253 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8252)  ; FMax(a,b)
  %8254 = fdiv fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8247, %8246
  %8256 = fsub fast float %8249, %8255
  %8257 = fsub fast float %8206, %8246
  %8258 = fmul fast float %8206, %8206
  %8259 = fsub fast float %8258, %8247
  %8260 = fmul fast float %8257, %8254
  %8261 = fmul fast float %8260, %8256
  %8262 = fsub fast float %8259, %8261
  %8263 = fmul fast float %8247, %8247
  %8264 = fsub fast float %8250, %8263
  %8265 = fmul fast float %8256, %8256
  %8266 = fmul fast float %8265, %8254
  %8267 = fsub fast float %8264, %8266
  %8268 = fdiv fast float %8262, %8267
  %8269 = fmul fast float %8256, %8268
  %8270 = fsub fast float %8257, %8269
  %8271 = fmul fast float %8270, %8254
  %8272 = fmul fast float %8271, %8246
  %8273 = fsub fast float 1.000000e+00, %8272
  %8274 = fmul fast float %8247, %8268
  %8275 = fsub fast float %8273, %8274
  %8276 = fmul fast float %8271, %8271
  %8277 = fmul fast float %8268, 4.000000e+00
  %8278 = fmul fast float %8277, %8275
  %8279 = fsub fast float %8276, %8278
  %8280 = call float @dx.op.unary.f32(i32 24, float %8279)  ; Sqrt(value)
  %8281 = fcmp fast oge float %8271, 0.000000e+00
  %8282 = fsub fast float -0.000000e+00, %8280
  %8283 = select i1 %8281, float %8282, float %8280
  %8284 = fsub fast float %8283, %8271
  %8285 = fdiv fast float %8284, %8268
  %8286 = fdiv fast float %8275, %8284
  %8287 = fmul fast float %8285, 5.000000e-01
  %8288 = fmul fast float %8286, 2.000000e+00
  %8289 = select i1 %8281, float %8287, float %8288
  %8290 = select i1 %8281, float %8288, float %8287
  %8291 = call float @dx.op.binary.f32(i32 35, float %8289, float %8290)  ; FMax(a,b)
  %8292 = call float @dx.op.binary.f32(i32 36, float %8289, float %8290)  ; FMin(a,b)
  %8293 = fcmp fast ogt float %8206, %8292
  br i1 %8293, label %8294, label %8304

; <label>:8294                                    ; preds = %8231
  %8295 = fsub fast float %8206, %8292
  %8296 = fsub fast float %8291, %8292
  %8297 = fmul fast float %8295, %8296
  %8298 = fmul fast float %8291, %8206
  %8299 = fadd fast float %8291, %8206
  %8300 = fmul fast float %8299, %8246
  %8301 = fadd fast float %8298, %8247
  %8302 = fsub fast float %8301, %8300
  %8303 = fdiv fast float %8302, %8297
  br label %8304

; <label>:8304                                    ; preds = %8294, %8231
  %8305 = phi float [ %8303, %8294 ], [ 0.000000e+00, %8231 ]
  %8306 = fcmp fast ogt float %8206, %8291
  %8307 = fsub fast float %8206, %8291
  br i1 %8306, label %8308, label %8318

; <label>:8308                                    ; preds = %8304
  %8309 = fsub fast float %8291, %8292
  %8310 = fmul fast float %8309, %8307
  %8311 = fmul fast float %8292, %8206
  %8312 = fadd fast float %8292, %8206
  %8313 = fmul fast float %8312, %8246
  %8314 = fsub fast float %8248, %8311
  %8315 = fadd fast float %8314, %8313
  %8316 = fdiv fast float %8315, %8310
  %8317 = fadd fast float %8316, %8305
  br label %8318

; <label>:8318                                    ; preds = %8308, %8304
  %8319 = phi float [ %8317, %8308 ], [ %8305, %8304 ]
  %8320 = fsub fast float %8206, %8292
  %8321 = fmul fast float %8320, %8307
  %8322 = fmul fast float %8292, %8291
  %8323 = fadd fast float %8292, %8291
  %8324 = fmul fast float %8323, %8246
  %8325 = fadd fast float %8322, %8247
  %8326 = fsub fast float %8325, %8324
  %8327 = fdiv fast float %8326, %8321
  %8328 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  %8329 = fcmp fast oeq float %6997, 0.000000e+00
  %8330 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8331 = fcmp fast oeq float %8330, 0.000000e+00
  %8332 = or i1 %8329, %8331
  %8333 = fmul fast float %8330, 2.000000e+00
  %8334 = fadd fast float %8115, %8116
  %8335 = fdiv fast float %8334, %8333
  %8336 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8337 = fmul fast float %8336, 2.000000e+00
  %8338 = fsub fast float 3.000000e+00, %8337
  %8339 = fmul fast float %8336, %8336
  %8340 = fmul fast float %8339, %8338
  %8341 = select i1 %8332, float 1.000000e+00, float %8340
  %8342 = fmul fast float %8327, %6997
  %8343 = fadd fast float %8328, %8342
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fmul fast float %8341, %8344
  br label %8346

; <label>:8346                                    ; preds = %8318, %8198
  %8347 = phi float [ %8345, %8318 ], [ 0.000000e+00, %8198 ]
  %8348 = fsub fast float 1.000000e+00, %8347
  %8349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8068, float %8069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.i32 %8351, 2
  %8353 = icmp eq i32 %8352, 0
  br i1 %8353, label %8359, label %8354

; <label>:8354                                    ; preds = %8346
  %8355 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8356 = fadd fast float %8350, -1.000000e+00
  %8357 = fmul fast float %8355, %8356
  %8358 = fadd fast float %8357, 1.000000e+00
  br label %8359

; <label>:8359                                    ; preds = %8354, %8346
  %8360 = phi float [ %8358, %8354 ], [ %8348, %8346 ]
  br i1 %8122, label %8361, label %8379

; <label>:8361                                    ; preds = %8359
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8364 = fsub fast float %8199, %8363
  %8365 = call float @dx.op.unary.f32(i32 7, float %8364)  ; Saturate(value)
  %8366 = fsub fast float %8199, %8121
  %8367 = call float @dx.op.unary.f32(i32 7, float %8366)  ; Saturate(value)
  %8368 = fsub fast float %8365, %8367
  %8369 = fsub fast float %8201, %8367
  %8370 = fdiv fast float %8369, %8368
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = fmul fast float %8371, 2.000000e+00
  %8373 = fsub fast float 3.000000e+00, %8372
  %8374 = fsub fast float %8350, %8360
  %8375 = fmul fast float %8371, %8371
  %8376 = fmul fast float %8375, %8374
  %8377 = fmul fast float %8376, %8373
  %8378 = fadd fast float %8377, %8360
  br label %8379

; <label>:8379                                    ; preds = %8361, %8359
  %8380 = phi float [ %8378, %8361 ], [ %8360, %8359 ]
  %8381 = call float @dx.op.binary.f32(i32 35, float %8350, float %8380)  ; FMax(a,b)
  %8382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.i32 %8382, 2
  %8384 = and i32 %8383, 1
  %8385 = icmp eq i32 %8384, 0
  %8386 = fcmp fast une float %8381, 1.000000e+00
  %8387 = and i1 %8386, %8385
  br i1 %8387, label %8388, label %8407

; <label>:8388                                    ; preds = %8379
  %8389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8068, float %8069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.ResRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.ResRet.f32 %8389, 2
  %8393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.f32 %8393, 1
  %8395 = fmul fast float %8394, %8390
  %8396 = fmul fast float %8394, %8391
  %8397 = fmul fast float %8394, %8392
  %8398 = fcmp fast ogt float %8350, 0x3FEFFF2E40000000
  %8399 = fsub fast float 1.000000e+00, %8381
  %8400 = fsub fast float 1.000000e+00, %8350
  %8401 = fdiv fast float %8399, %8400
  %8402 = call float @dx.op.unary.f32(i32 7, float %8401)  ; Saturate(value)
  %8403 = select i1 %8398, float 0.000000e+00, float %8402
  %8404 = fmul fast float %8395, %8403
  %8405 = fmul fast float %8396, %8403
  %8406 = fmul fast float %8397, %8403
  br label %8407

; <label>:8407                                    ; preds = %8388, %8379
  %8408 = phi float [ 0.000000e+00, %8379 ], [ %8404, %8388 ]
  %8409 = phi float [ 0.000000e+00, %8379 ], [ %8405, %8388 ]
  %8410 = phi float [ 0.000000e+00, %8379 ], [ %8406, %8388 ]
  %8411 = fmul fast float %8408, %6985
  %8412 = fmul fast float %8409, %6985
  %8413 = fmul fast float %8410, %6985
  %8414 = fmul fast float %8381, %8043
  %8415 = call float @dx.op.dot3.f32(i32 55, float %8381, float %8381, float %8381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8416 = call float @dx.op.dot3.f32(i32 55, float %8411, float %8412, float %8413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8417 = select i1 %222, float %8415, float %8381
  %8418 = select i1 %222, float 1.000000e+00, float %8381
  %8419 = select i1 %222, float %8416, float %8411
  %8420 = select i1 %222, float 0.000000e+00, float %8412
  %8421 = select i1 %222, float 0.000000e+00, float %8413
  %8422 = fmul fast float %8417, %8055
  %8423 = fmul fast float %8417, %8056
  %8424 = fmul fast float %8418, %8057
  %8425 = fadd fast float %8422, %8419
  %8426 = fadd fast float %8423, %8420
  %8427 = fadd fast float %8421, %8424
  %8428 = fmul fast float %8417, %8058
  %8429 = fmul fast float %8417, %8059
  %8430 = fmul fast float %8418, %8060
  br label %8431

; <label>:8431                                    ; preds = %8407, %8064, %8033, %7265
  %8432 = phi float [ %7270, %7265 ], [ %8055, %8033 ], [ %8425, %8407 ], [ %8055, %8064 ]
  %8433 = phi float [ %7271, %7265 ], [ %8056, %8033 ], [ %8426, %8407 ], [ %8056, %8064 ]
  %8434 = phi float [ %7272, %7265 ], [ %8057, %8033 ], [ %8427, %8407 ], [ %8057, %8064 ]
  %8435 = phi float [ %7273, %7265 ], [ %8058, %8033 ], [ %8428, %8407 ], [ %8058, %8064 ]
  %8436 = phi float [ %7274, %7265 ], [ %8059, %8033 ], [ %8429, %8407 ], [ %8059, %8064 ]
  %8437 = phi float [ %7275, %7265 ], [ %8060, %8033 ], [ %8430, %8407 ], [ %8060, %8064 ]
  %8438 = phi float [ %7276, %7265 ], [ %8043, %8033 ], [ %8414, %8407 ], [ %8043, %8064 ]
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 2
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 3
  %8442 = fmul fast float %8440, %97
  %8443 = fmul fast float %8441, %98
  %8444 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8445 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8446 = select i1 %7007, i32 2, i32 0
  %8447 = or i32 %8446, 1
  %8448 = uitofp i32 %8447 to float
  %8449 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8444, float %8445, float %8448, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  %8453 = extractvalue %dx.types.ResRet.f32 %8449, 3
  %8454 = add nuw nsw i32 %8446, 2
  %8455 = uitofp i32 %8454 to float
  %8456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8444, float %8445, float %8455, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = extractvalue %dx.types.ResRet.f32 %8456, 3
  %8461 = call float @dx.op.binary.f32(i32 35, float %8451, float %8452)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float %8450, float %8461)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8462, float %8453)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 36, float %8458, float %8459)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 36, float %8457, float %8464)  ; FMin(a,b)
  %8466 = call float @dx.op.binary.f32(i32 36, float %8465, float %8460)  ; FMin(a,b)
  %8467 = fmul fast float %8463, 2.550000e+02
  %8468 = fadd fast float %8467, 0x3F70101020000000
  %8469 = fptoui float %8468 to i32
  %8470 = fmul fast float %8466, 2.550000e+02
  %8471 = fadd fast float %8470, 0x3F70101020000000
  %8472 = fptoui float %8471 to i32
  %8473 = icmp ult i32 %8469, %8472
  br i1 %8473, label %8474, label %8643

; <label>:8474                                    ; preds = %8431
  %8475 = fcmp fast ogt float %87, 9.843750e-01
  %8476 = fadd fast float %7269, -4.000000e+00
  %8477 = select i1 %8475, float -4.000000e+00, float %8476
  %8478 = call float @dx.op.binary.f32(i32 35, float %8477, float 0.000000e+00)  ; FMax(a,b)
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 0
  %8481 = fadd fast float %8480, %8478
  %8482 = extractvalue %dx.types.CBufRet.f32 %8479, 2
  %8483 = fmul fast float %8481, %8482
  %8484 = call float @dx.op.unary.f32(i32 23, float %8483)  ; Log(value)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8479, 3
  %8486 = fmul fast float %8485, %8484
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8489 = fmul fast float %8486, %8488
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = uitofp i32 %8469 to float
  %8492 = uitofp i32 %8472 to float
  %8493 = fadd fast float %8491, 5.000000e-01
  %8494 = fadd fast float %8492, 5.000000e-01
  %8495 = fmul fast float %8488, %8493
  %8496 = fmul fast float %8488, %8494
  %8497 = fadd fast float %8495, 0x3F0FFB4800000000
  %8498 = fadd fast float %8496, 0xBF0FFB4800000000
  %8499 = call float @dx.op.binary.f32(i32 35, float %8490, float %8497)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 36, float %8499, float %8498)  ; FMin(a,b)
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8503 = extractvalue %dx.types.CBufRet.f32 %8501, 2
  %8504 = extractvalue %dx.types.CBufRet.f32 %8501, 0
  %8505 = select i1 %7007, float %8504, float 0.000000e+00
  %8506 = fmul fast float %8502, %8500
  %8507 = fadd fast float %8505, %8506
  %8508 = fadd fast float %8505, %8503
  %8509 = fsub fast float %8502, %8503
  %8510 = fadd fast float %8509, %8505
  %8511 = call float @dx.op.binary.f32(i32 35, float %8507, float %8508)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 36, float %8511, float %8510)  ; FMin(a,b)
  %8513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8444, float %8445, float %8512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8514 = extractvalue %dx.types.ResRet.f32 %8513, 0
  %8515 = extractvalue %dx.types.ResRet.f32 %8513, 1
  %8516 = extractvalue %dx.types.ResRet.f32 %8513, 2
  %8517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.i32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.i32 %8517, 1
  %8520 = uitofp i32 %8518 to float
  %8521 = uitofp i32 %8519 to float
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8525 = fmul fast float %8520, %8444
  %8526 = fmul fast float %8521, %8445
  %8527 = fadd fast float %8525, -5.000000e-01
  %8528 = fadd fast float %8526, -5.000000e-01
  %8529 = call float @dx.op.unary.f32(i32 22, float %8527)  ; Frc(value)
  %8530 = call float @dx.op.unary.f32(i32 22, float %8528)  ; Frc(value)
  %8531 = fmul fast float %8529, %8529
  %8532 = fmul fast float %8531, %8529
  %8533 = fsub fast float 3.000000e+00, %8529
  %8534 = fmul fast float %8531, %8533
  %8535 = fmul fast float %8529, 3.000000e+00
  %8536 = fmul fast float %8532, 3.000000e+00
  %8537 = fmul fast float %8531, 6.000000e+00
  %8538 = fsub fast float %8536, %8537
  %8539 = fadd fast float %8538, 4.000000e+00
  %8540 = fmul fast float %8539, 0x3FC5555560000000
  %8541 = fmul fast float %8532, -3.000000e+00
  %8542 = fadd fast float %8531, %8529
  %8543 = fmul fast float %8542, 3.000000e+00
  %8544 = fadd fast float %8541, 1.000000e+00
  %8545 = fadd fast float %8544, %8543
  %8546 = fmul fast float %8532, 0x3FC5555560000000
  %8547 = fmul fast float %8530, %8530
  %8548 = fmul fast float %8547, %8530
  %8549 = fsub fast float 3.000000e+00, %8530
  %8550 = fmul fast float %8547, %8549
  %8551 = fmul fast float %8530, 3.000000e+00
  %8552 = fmul fast float %8548, 3.000000e+00
  %8553 = fmul fast float %8547, 6.000000e+00
  %8554 = fsub fast float %8552, %8553
  %8555 = fadd fast float %8554, 4.000000e+00
  %8556 = fmul fast float %8555, 0x3FC5555560000000
  %8557 = fmul fast float %8548, -3.000000e+00
  %8558 = fadd fast float %8547, %8530
  %8559 = fmul fast float %8558, 3.000000e+00
  %8560 = fadd fast float %8557, 1.000000e+00
  %8561 = fadd fast float %8560, %8559
  %8562 = fmul fast float %8548, 0x3FC5555560000000
  %8563 = fadd fast float %8529, 1.000000e+00
  %8564 = fsub fast float 1.000000e+00, %8535
  %8565 = fadd fast float %8564, %8534
  %8566 = fadd fast float %8565, %8539
  %8567 = fmul fast float %8566, 0x3FC5555560000000
  %8568 = fdiv fast float %8540, %8567
  %8569 = fsub fast float %8563, %8568
  %8570 = fsub fast float 1.000000e+00, %8529
  %8571 = fadd fast float %8545, %8532
  %8572 = fmul fast float %8571, 0x3FC5555560000000
  %8573 = fdiv fast float %8546, %8572
  %8574 = fadd fast float %8570, %8573
  %8575 = fadd fast float %8530, 1.000000e+00
  %8576 = fsub fast float 1.000000e+00, %8551
  %8577 = fadd fast float %8576, %8550
  %8578 = fadd fast float %8577, %8555
  %8579 = fmul fast float %8578, 0x3FC5555560000000
  %8580 = fdiv fast float %8556, %8579
  %8581 = fsub fast float %8575, %8580
  %8582 = fsub fast float 1.000000e+00, %8530
  %8583 = fadd fast float %8561, %8548
  %8584 = fmul fast float %8583, 0x3FC5555560000000
  %8585 = fdiv fast float %8562, %8584
  %8586 = fadd fast float %8585, %8582
  %8587 = fmul fast float %8569, %8523
  %8588 = fsub fast float %8444, %8587
  %8589 = fmul fast float %8574, %8523
  %8590 = fadd fast float %8589, %8444
  %8591 = fmul fast float %8586, %8524
  %8592 = fadd fast float %8591, %8445
  %8593 = fmul fast float %8581, %8524
  %8594 = fsub fast float %8445, %8593
  %8595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8588, float %8594, float %8512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8596 = extractvalue %dx.types.ResRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.ResRet.f32 %8595, 1
  %8598 = extractvalue %dx.types.ResRet.f32 %8595, 2
  %8599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8590, float %8594, float %8512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8600 = extractvalue %dx.types.ResRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.ResRet.f32 %8599, 1
  %8602 = extractvalue %dx.types.ResRet.f32 %8599, 2
  %8603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8588, float %8592, float %8512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.ResRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.ResRet.f32 %8603, 2
  %8607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8590, float %8592, float %8512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8608 = extractvalue %dx.types.ResRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.ResRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.ResRet.f32 %8607, 2
  %8611 = fsub fast float %8604, %8596
  %8612 = fsub fast float %8605, %8597
  %8613 = fsub fast float %8606, %8598
  %8614 = fmul fast float %8611, %8584
  %8615 = fmul fast float %8612, %8584
  %8616 = fmul fast float %8613, %8584
  %8617 = fadd fast float %8614, %8596
  %8618 = fadd fast float %8615, %8597
  %8619 = fadd fast float %8616, %8598
  %8620 = fsub fast float %8608, %8600
  %8621 = fsub fast float %8609, %8601
  %8622 = fsub fast float %8610, %8602
  %8623 = fmul fast float %8620, %8584
  %8624 = fmul fast float %8621, %8584
  %8625 = fmul fast float %8622, %8584
  %8626 = fsub fast float %8600, %8617
  %8627 = fadd fast float %8626, %8623
  %8628 = fsub fast float %8601, %8618
  %8629 = fadd fast float %8628, %8624
  %8630 = fsub fast float %8602, %8619
  %8631 = fadd fast float %8630, %8625
  %8632 = fmul fast float %8627, %8572
  %8633 = fmul fast float %8629, %8572
  %8634 = fmul fast float %8631, %8572
  %8635 = fadd fast float %8632, %8617
  %8636 = fadd fast float %8633, %8618
  %8637 = fadd fast float %8634, %8619
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8640 = fmul fast float %8635, %8639
  %8641 = fmul fast float %8636, %8639
  %8642 = fmul fast float %8637, %8639
  br label %8643

; <label>:8643                                    ; preds = %8474, %8431
  %8644 = phi float [ %8514, %8474 ], [ 1.000000e+00, %8431 ]
  %8645 = phi float [ %8515, %8474 ], [ 1.000000e+00, %8431 ]
  %8646 = phi float [ %8516, %8474 ], [ 1.000000e+00, %8431 ]
  %8647 = phi float [ %8640, %8474 ], [ 0.000000e+00, %8431 ]
  %8648 = phi float [ %8641, %8474 ], [ 0.000000e+00, %8431 ]
  %8649 = phi float [ %8642, %8474 ], [ 0.000000e+00, %8431 ]
  %8650 = fmul fast float %8647, %6985
  %8651 = fmul fast float %8648, %6985
  %8652 = fmul fast float %8649, %6985
  %8653 = fmul fast float %8644, %8438
  %8654 = call float @dx.op.dot3.f32(i32 55, float %8644, float %8645, float %8646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8655 = call float @dx.op.dot3.f32(i32 55, float %8650, float %8651, float %8652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8656 = select i1 %222, float %8654, float %8644
  %8657 = select i1 %222, float %8654, float %8645
  %8658 = select i1 %222, float 1.000000e+00, float %8646
  %8659 = select i1 %222, float %8655, float %8650
  %8660 = select i1 %222, float 0.000000e+00, float %8651
  %8661 = select i1 %222, float 0.000000e+00, float %8652
  %8662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.i32 %8662, 3
  %8664 = and i32 %8663, 3
  %8665 = icmp ne i32 %8664, 0
  %8666 = and i32 %8663, 4
  %8667 = icmp ne i32 %8666, 0
  %8668 = and i1 %8665, %8667
  %8669 = and i1 %222, %8668
  br i1 %8669, label %8670, label %8676

; <label>:8670                                    ; preds = %8643
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8673 = fadd fast float %8653, -1.000000e+00
  %8674 = fmul fast float %8672, %8673
  %8675 = fadd fast float %8674, 1.000000e+00
  br label %8676

; <label>:8676                                    ; preds = %8670, %8643
  %8677 = phi float [ %8675, %8670 ], [ %8653, %8643 ]
  %8678 = fadd fast float %8435, %8432
  %8679 = fmul fast float %8656, %8678
  %8680 = fadd fast float %8679, %8659
  %8681 = fadd fast float %8436, %8433
  %8682 = fmul fast float %8657, %8681
  %8683 = fadd fast float %8682, %8660
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  br i1 %222, label %8686, label %8710

; <label>:8686                                    ; preds = %8676
  %8687 = fadd fast float %8680, %8683
  %8688 = fmul fast float %8685, %8687
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 3
  %8691 = extractvalue %dx.types.CBufRet.f32 %6989, 1
  %8692 = fsub fast float %6994, %6988
  %8693 = fadd fast float %8692, %6995
  %8694 = fsub fast float %8693, %8691
  %8695 = extractvalue %dx.types.CBufRet.f32 %6989, 2
  %8696 = fmul fast float %8694, %8695
  %8697 = call float @dx.op.unary.f32(i32 7, float %8696)  ; Saturate(value)
  %8698 = fsub fast float %8697, %8690
  %8699 = fmul fast float %8698, %8677
  %8700 = fadd fast float %8699, %8690
  %8701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8701, 0
  %8703 = fsub fast float %8700, %8702
  %8704 = fmul fast float %8703, 1.000000e+01
  %8705 = call float @dx.op.unary.f32(i32 7, float %8704)  ; Saturate(value)
  %8706 = fsub fast float %4427, %6985
  %8707 = fmul fast float %8705, %8706
  %8708 = fadd fast float %8707, %6985
  %8709 = fmul fast float %8708, %8700
  br label %8734

; <label>:8710                                    ; preds = %8676
  %8711 = fadd fast float %8437, %8434
  %8712 = fmul fast float %8658, %8711
  %8713 = fadd fast float %8712, %8661
  %8714 = fmul fast float %8685, %8680
  %8715 = fmul fast float %8685, %8683
  %8716 = fmul fast float %8685, %8713
  %8717 = call float @dx.op.binary.f32(i32 35, float %8715, float %8716)  ; FMax(a,b)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8714, float %8717)  ; FMax(a,b)
  %8719 = call float @dx.op.binary.f32(i32 35, float %8718, float %6985)  ; FMax(a,b)
  %8720 = fcmp fast ugt float %8719, 0x3F10000000000000
  br i1 %8720, label %8722, label %8721

; <label>:8721                                    ; preds = %8710
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8722

; <label>:8722                                    ; preds = %8721, %8710
  %8723 = add i32 %54, 356
  %8724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8723, i32 undef)  ; BufferLoad(srv,index,wot)
  %8725 = extractvalue %dx.types.ResRet.i32 %8724, 0
  %8726 = and i32 %8725, 32
  %8727 = icmp eq i32 %8726, 0
  br i1 %8727, label %8734, label %8728

; <label>:8728                                    ; preds = %8722
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 0
  %8731 = fmul fast float %8730, 0x3FE99999A0000000
  %8732 = fadd fast float %8730, %8714
  %8733 = fadd fast float %8731, %8716
  br label %8734

; <label>:8734                                    ; preds = %8728, %8722, %8686
  %8735 = phi float [ %8688, %8686 ], [ %8732, %8728 ], [ %8714, %8722 ]
  %8736 = phi float [ %8709, %8686 ], [ %8715, %8728 ], [ %8715, %8722 ]
  %8737 = phi float [ %8708, %8686 ], [ %8733, %8728 ], [ %8716, %8722 ]
  %8738 = phi float [ %8708, %8686 ], [ %6985, %8728 ], [ %6985, %8722 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8735, float 3.225500e+04)  ; FMin(a,b)
  %8740 = call float @dx.op.binary.f32(i32 36, float %8736, float 3.225500e+04)  ; FMin(a,b)
  %8741 = call float @dx.op.binary.f32(i32 36, float %8737, float 3.225500e+04)  ; FMin(a,b)
  %8742 = call float @dx.op.binary.f32(i32 36, float %8738, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8739)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8740)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8741)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8742)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !94}
!70 = !{!71, !92, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 5, i8 0, !79}
!82 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !73, i8 2, i32 1, i8 1, i32 3, i8 3, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 7, i8 0, !77}
!86 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!87 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !88}
!88 = !{i32 3, i32 8}
!89 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 10, i8 0, !90}
!90 = !{i32 3, i32 13}
!91 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!92 = !{!93}
!93 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!94 = !{i32 0, i64 16}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
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
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !102, i64 0}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

