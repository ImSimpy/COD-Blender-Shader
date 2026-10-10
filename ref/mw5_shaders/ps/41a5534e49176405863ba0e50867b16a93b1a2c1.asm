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
; shader hash: 5bc4b8db10e8448146f298d5c92c8fd0
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = alloca [12 x float], align 4
  %88 = alloca [12 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %83
  %96 = fmul fast float %94, %84
  %97 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = bitcast float %97 to i32
  %99 = ashr i32 %98, 1
  %100 = sub nsw i32 1597250115, %99
  %101 = bitcast i32 %100 to float
  %102 = fmul fast float %101, %74
  %103 = fmul fast float %101, %75
  %104 = fmul fast float %101, %76
  %105 = fmul fast float %75, %72
  %106 = fmul fast float %76, %71
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %76, %70
  %109 = fmul fast float %74, %72
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %74, %71
  %112 = fmul fast float %75, %70
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %107, %73
  %115 = fmul fast float %110, %73
  %116 = fmul fast float %113, %73
  %117 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %63
  %123 = fmul fast float %121, %64
  %124 = fmul fast float %121, %65
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %95, 2.000000e+00
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %96, 2.000000e+00
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 1.000000e+00, %129
  %133 = fsub fast float 1.000000e+00, %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %132, %135
  %139 = fmul fast float %132, %136
  %140 = fmul fast float %132, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %133, %142
  %146 = fmul fast float %133, %143
  %147 = fmul fast float %133, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %152, %138
  %154 = fadd fast float %146, %150
  %155 = fadd fast float %154, %139
  %156 = fadd fast float %147, %151
  %157 = fadd fast float %156, %140
  %158 = fmul fast float %153, %86
  %159 = fmul fast float %155, %86
  %160 = fmul fast float %157, %86
  %161 = fmul fast float %95, 5.000000e-01
  %162 = fmul fast float %96, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %95
  %185 = fmul fast float %183, %96
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp ne i32 %202, 0
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %216

; <label>:205                                     ; preds = %0
  %206 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %207 = fmul fast float %206, %96
  %208 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %209 = fmul fast float %208, %95
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %209, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast olt float %212, %214
  br label %219

; <label>:216                                     ; preds = %0
  %217 = icmp eq i32 %202, 0
  %218 = and i1 %201, %217
  br label %219

; <label>:219                                     ; preds = %216, %205
  %220 = phi i1 [ %215, %205 ], [ %218, %216 ]
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fmul fast float %222, 0x3FE3C6EF40000000
  %224 = frem fast float %95, 2.560000e+02
  %225 = frem fast float %96, 2.560000e+02
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fadd fast float %229, %223
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = add i32 %54, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %54, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %54, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %54, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %54, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %54, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %54, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %54, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %54, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %54, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %54, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %54, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %54, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %54, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %54, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %54, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %54, 364
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %219
  %414 = add i32 %54, 488
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = fmul fast float %423, %79
  %425 = fmul fast float %420, %80
  %426 = fmul fast float %421, %81
  %427 = fmul fast float %422, %82
  br label %428

; <label>:428                                     ; preds = %413, %219
  %429 = phi float [ %82, %219 ], [ %427, %413 ]
  %430 = phi float [ %81, %219 ], [ %426, %413 ]
  %431 = phi float [ %80, %219 ], [ %425, %413 ]
  %432 = phi float [ %79, %219 ], [ %424, %413 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

; <label>:437                                     ; preds = %428
  %438 = add i32 %54, 44
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %431, float 1.000000e+00
  %444 = add i32 %54, 60
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %430, float 1.000000e+00
  %450 = add i32 %54, 76
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %429, float 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %437, %428
  %457 = phi float [ %429, %428 ], [ %455, %437 ]
  %458 = phi float [ %430, %428 ], [ %449, %437 ]
  %459 = phi float [ %431, %428 ], [ %443, %437 ]
  %460 = lshr i32 %434, 20
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 1
  %463 = add i32 %54, 24
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %54, 28
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = or i32 %468, %465
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1120, label %471

; <label>:471                                     ; preds = %456
  %472 = and i32 %465, 262144
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %57, float 1.000000e+00
  %475 = select i1 %473, float %58, float 0.000000e+00
  %476 = select i1 %473, float %59, float 0.000000e+00
  %477 = select i1 %473, float %60, float 1.000000e+00
  %478 = select i1 %473, float %61, float %77
  %479 = select i1 %473, float %62, float %78
  %480 = add i32 %54, 284
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %484, 0x3F50624DE0000000
  %486 = add i32 %54, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = and i32 %489, 255
  %491 = lshr i32 %488, 24
  %492 = add i32 %54, 292
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = add i32 %54, 32
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = shl i32 %501, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fmul fast float %512, 1.000000e+03
  %514 = fmul fast float %272, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %262
  %517 = fmul fast float %273, %513
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %264
  %520 = fmul fast float %485, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x401921FB60000000
  %523 = fadd fast float %522, %504
  %524 = call float @dx.op.unary.f32(i32 13, float %523)  ; Sin(value)
  %525 = call float @dx.op.unary.f32(i32 12, float %523)  ; Cos(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fadd fast float %478, -5.000000e-01
  %528 = fadd fast float %479, -5.000000e-01
  %529 = fmul fast float %496, %527
  %530 = fmul fast float %498, %528
  %531 = fadd fast float %529, 5.000000e-01
  %532 = fadd fast float %530, 5.000000e-01
  %533 = fmul fast float %507, %531
  %534 = fmul fast float %510, %532
  %535 = fmul fast float %525, %533
  %536 = call float @dx.op.tertiary.f32(i32 46, float %526, float %534, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %524, %533
  %538 = call float @dx.op.tertiary.f32(i32 46, float %525, float %534, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %516, %536
  %540 = fadd fast float %519, %538
  %541 = icmp ugt i32 %490, 1
  %542 = icmp ugt i32 %488, 33554431
  %543 = or i1 %542, %541
  br i1 %543, label %544, label %569

; <label>:544                                     ; preds = %471
  %545 = add i32 %54, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fmul fast float %512, %549
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = mul nuw nsw i32 %490, %491
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %551, %553
  %555 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %556 = fptoui float %555 to i32
  %557 = urem i32 %556, %490
  %558 = udiv i32 %556, %491
  %559 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %560 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %561 = uitofp i32 %557 to float
  %562 = uitofp i32 %558 to float
  %563 = fadd fast float %559, %561
  %564 = fadd fast float %560, %562
  %565 = uitofp i32 %490 to float
  %566 = uitofp i32 %491 to float
  %567 = fdiv fast float %563, %565
  %568 = fdiv fast float %564, %566
  br label %569

; <label>:569                                     ; preds = %544, %471
  %570 = phi float [ %567, %544 ], [ %539, %471 ]
  %571 = phi float [ %568, %544 ], [ %540, %471 ]
  %572 = and i32 %465, 16777216
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = fadd fast float %576, %158
  %580 = fadd fast float %577, %159
  %581 = fadd fast float %578, %160
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = icmp eq i32 %55, 65535
  br i1 %585, label %680, label %586

; <label>:586                                     ; preds = %574
  %587 = lshr i32 %55, 1
  %588 = shl i32 %587, 2
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %55, 1
  %592 = icmp ne i32 %591, 0
  %593 = lshr i32 %590, 16
  %594 = and i32 %590, 65535
  %595 = select i1 %592, i32 %593, i32 %594
  %596 = icmp eq i32 %595, 65535
  br i1 %596, label %676, label %597

; <label>:597                                     ; preds = %586
  %598 = mul nuw nsw i32 %595, 40
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add nuw nsw i32 %598, 12
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %598, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %598, 36
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fsub fast float %579, %600
  %617 = fsub fast float %580, %601
  %618 = fsub fast float %581, %602
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fmul fast float %625, %605
  %629 = fmul fast float %626, %606
  %630 = fmul fast float %627, %607
  %631 = shl i32 %55, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %49, float %636, float %637, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fmul fast float %641, 1.023000e+03
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = fsub fast float %619, %622
  %653 = fsub fast float %620, %623
  %654 = fsub fast float %621, %624
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fmul fast float %653, 7.500000e-01
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fadd fast float %622, 1.250000e-01
  %659 = fadd fast float %658, %655
  %660 = fadd fast float %659, %649
  %661 = fadd fast float %623, 1.250000e-01
  %662 = fadd fast float %661, %656
  %663 = fadd fast float %662, %650
  %664 = fadd fast float %624, 1.250000e-01
  %665 = fadd fast float %664, %657
  %666 = fadd fast float %665, %651
  %667 = fmul fast float %660, %610
  %668 = fmul fast float %663, %611
  %669 = fmul fast float %666, %612
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %47, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  br label %676

; <label>:676                                     ; preds = %597, %586
  %677 = phi float [ %675, %597 ], [ -1.000000e+00, %586 ]
  %678 = fadd fast float %677, %584
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %676, %574
  %681 = phi float [ %679, %676 ], [ %584, %574 ]
  %682 = fmul fast float %681, %432
  br label %683

; <label>:683                                     ; preds = %680, %569
  %684 = phi float [ %682, %680 ], [ %432, %569 ]
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 256
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %735, label %689

; <label>:689                                     ; preds = %683
  %690 = add i32 %54, 440
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = add i32 %54, 100
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float 1.000000e+00, %684
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %708 = bitcast float %684 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %705, %710
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = bitcast float %707 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %714, %702
  %723 = fmul fast float %721, %702
  %724 = fsub fast float %707, %722
  %725 = fadd fast float %723, %707
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fsub fast float %696, %726
  %729 = fsub fast float %727, %726
  %730 = bitcast float %729 to i32
  %731 = sub nsw i32 2129859010, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %689, %683
  %736 = phi float [ %734, %689 ], [ %684, %683 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 128
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %735
  %742 = add i32 %54, 424
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 524288
  %752 = icmp ne i32 %751, 0
  %753 = fcmp fast ogt float %748, 0x3FE0101020000000
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %755 = select i1 %752, float %754, float %748
  %756 = fmul fast float %755, %736
  br label %757

; <label>:757                                     ; preds = %741, %735
  %758 = phi float [ %756, %741 ], [ %736, %735 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %961, label %763

; <label>:763                                     ; preds = %757
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %54, 376
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 512
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

; <label>:788                                     ; preds = %763
  %789 = add i32 %54, 456
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  br label %796

; <label>:796                                     ; preds = %788, %763
  %797 = phi float [ %795, %788 ], [ 1.000000e+00, %763 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 33554432
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %908, label %802

; <label>:802                                     ; preds = %796
  %803 = add i32 %54, 224
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %54, 228
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 24
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = and i32 %816, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %816, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %816, 16
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = add i32 %54, 220
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = and i32 %833, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %833, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %833, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = bitcast float %772 to i32
  %849 = ashr i32 %848, 1
  %850 = sub nsw i32 1597463174, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %772, 5.000000e-01
  %853 = fmul fast float %851, %851
  %854 = fmul fast float %853, %852
  %855 = fsub fast float 1.500000e+00, %854
  %856 = fmul fast float %851, %772
  %857 = fmul fast float %856, %855
  %858 = bitcast float %773 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %773, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %773
  %867 = fmul fast float %866, %865
  %868 = bitcast float %774 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %774, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %774
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %857, %839
  %879 = fsub fast float %867, %843
  %880 = fsub fast float %877, %847
  %881 = fmul fast float %878, %807
  %882 = fmul fast float %879, %809
  %883 = fmul fast float %880, %814
  %884 = fadd fast float %881, %822
  %885 = fadd fast float %882, %826
  %886 = fadd fast float %883, %830
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fsub fast float %890, %772
  %894 = fsub fast float %891, %773
  %895 = fsub fast float %892, %774
  %896 = fmul fast float %893, %797
  %897 = fmul fast float %894, %797
  %898 = fmul fast float %895, %797
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %897, %773
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %819, %783
  %903 = fsub fast float %902, %836
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float %904, %783
  %906 = fmul fast float %905, %797
  %907 = fadd fast float %906, %783
  br label %961

; <label>:908                                     ; preds = %796
  %909 = and i32 %799, 134217728
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %945, label %911

; <label>:911                                     ; preds = %908
  %912 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %913 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fmul fast float %915, %797
  %919 = fmul fast float %916, %797
  %920 = fmul fast float %917, %797
  %921 = fadd fast float %918, 5.000000e-01
  %922 = fadd fast float %919, 5.000000e-01
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = fmul fast float %921, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %928, %924
  %930 = fadd fast float %929, %927
  %931 = fmul fast float %930, %924
  %932 = fmul fast float %922, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %925
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %923, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %926
  %942 = fmul fast float %931, %931
  %943 = fmul fast float %936, %936
  %944 = fmul fast float %941, %941
  br label %961

; <label>:945                                     ; preds = %908
  %946 = fmul fast float %249, %249
  %947 = fmul fast float %253, %253
  %948 = fmul fast float %257, %257
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fadd fast float %947, -1.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fmul fast float %797, %949
  %953 = fmul fast float %797, %950
  %954 = fmul fast float %797, %951
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fadd fast float %953, 1.000000e+00
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fmul fast float %955, %772
  %959 = fmul fast float %956, %773
  %960 = fmul fast float %957, %774
  br label %961

; <label>:961                                     ; preds = %945, %911, %802, %757
  %962 = phi float [ %907, %802 ], [ %783, %911 ], [ %783, %945 ], [ 0x3FA23C0BE0000000, %757 ]
  %963 = phi float [ %899, %802 ], [ %942, %911 ], [ %958, %945 ], [ 1.000000e+00, %757 ]
  %964 = phi float [ %900, %802 ], [ %943, %911 ], [ %959, %945 ], [ 1.000000e+00, %757 ]
  %965 = phi float [ %901, %802 ], [ %944, %911 ], [ %960, %945 ], [ 1.000000e+00, %757 ]
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 1
  %969 = icmp ne i32 %968, 0
  %970 = add i32 %54, 372
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 32
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %969, %974
  %976 = select i1 %975, float 1.000000e+00, float %963
  %977 = select i1 %975, float 0x3FD3333340000000, float %964
  %978 = select i1 %975, float 0x3FD3333340000000, float %965
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1055, label %983

; <label>:983                                     ; preds = %961
  %984 = add i32 %54, 92
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %54, 392
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = and i32 %986, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %986, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %986, 16
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fmul fast float %993, %998
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fadd fast float %996, -5.000000e-01
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1010, %1005
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 67108864
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %983
  %1036 = add i32 %54, 280
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1038, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fsub fast float %1008, %1046
  %1048 = fmul fast float %1047, %1040
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  br label %1051

; <label>:1051                                    ; preds = %1035, %983
  %1052 = phi float [ %1050, %1035 ], [ %1008, %983 ]
  %1053 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %1054 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  br label %1055

; <label>:1055                                    ; preds = %1051, %961
  %1056 = phi float [ %1052, %1051 ], [ 0x3FD6666660000000, %961 ]
  %1057 = phi float [ %1053, %1051 ], [ 0.000000e+00, %961 ]
  %1058 = phi float [ %1054, %1051 ], [ 0.000000e+00, %961 ]
  %1059 = phi float [ %995, %1051 ], [ 1.000000e+00, %961 ]
  %1060 = add i32 %54, 160
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 22
  %1064 = shl nuw nsw i32 %1063, 5
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 64
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1103, label %1070

; <label>:1070                                    ; preds = %1055
  %1071 = add i32 %54, 408
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 131072
  %1079 = icmp eq i32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, %237
  %1085 = fmul fast float %1082, %240
  %1086 = fmul fast float %1083, %243
  br i1 %1079, label %1093, label %1087

; <label>:1087                                    ; preds = %1070
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1089, %1085
  %1092 = fmul fast float %1089, %1086
  br label %1093

; <label>:1093                                    ; preds = %1087, %1070
  %1094 = phi float [ %1090, %1087 ], [ %1084, %1070 ]
  %1095 = phi float [ %1091, %1087 ], [ %1085, %1070 ]
  %1096 = phi float [ %1092, %1087 ], [ %1086, %1070 ]
  %1097 = fmul fast float %1094, %1065
  %1098 = select i1 %220, float %1097, float %1094
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %220, float 0.000000e+00, float %1094
  %1101 = select i1 %220, float %1099, float %1095
  %1102 = select i1 %220, float 0.000000e+00, float %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1055
  %1104 = phi float [ %1100, %1093 ], [ 0.000000e+00, %1055 ]
  %1105 = phi float [ %1101, %1093 ], [ 0.000000e+00, %1055 ]
  %1106 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1055 ]
  %1107 = add i32 %54, 96
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1109, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = fmul fast float %1114, %1115
  %1117 = fadd fast float %1116, %1111
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  br label %1120

; <label>:1120                                    ; preds = %1103, %456
  %1121 = phi float [ 0.000000e+00, %456 ], [ %1057, %1103 ]
  %1122 = phi float [ 0.000000e+00, %456 ], [ %1058, %1103 ]
  %1123 = phi float [ 0.000000e+00, %456 ], [ %1104, %1103 ]
  %1124 = phi float [ 0.000000e+00, %456 ], [ %1105, %1103 ]
  %1125 = phi float [ 0.000000e+00, %456 ], [ %1106, %1103 ]
  %1126 = phi float [ 0.000000e+00, %456 ], [ %976, %1103 ]
  %1127 = phi float [ 0.000000e+00, %456 ], [ %977, %1103 ]
  %1128 = phi float [ 0.000000e+00, %456 ], [ %978, %1103 ]
  %1129 = phi float [ 0.000000e+00, %456 ], [ %962, %1103 ]
  %1130 = phi float [ 0.000000e+00, %456 ], [ %758, %1103 ]
  %1131 = phi float [ 0.000000e+00, %456 ], [ %1056, %1103 ]
  %1132 = phi float [ 0.000000e+00, %456 ], [ %1059, %1103 ]
  %1133 = phi float [ 0.000000e+00, %456 ], [ %1119, %1103 ]
  br i1 %404, label %1975, label %1134

; <label>:1134                                    ; preds = %1120
  %1135 = icmp ult i32 %462, 2
  %1136 = add i32 %54, 40
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %54, 44
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = or i32 %1141, %1138
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1975, label %1144

; <label>:1144                                    ; preds = %1134
  %1145 = and i32 %1138, 262144
  %1146 = icmp ne i32 %1145, 0
  %1147 = select i1 %1146, float %57, float 1.000000e+00
  %1148 = select i1 %1146, float %58, float 0.000000e+00
  %1149 = select i1 %1146, float %59, float 0.000000e+00
  %1150 = select i1 %1146, float %60, float 1.000000e+00
  %1151 = select i1 %1146, float %61, float %77
  %1152 = select i1 %1146, float %62, float %78
  %1153 = add i32 %54, 300
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1157, 0x3F50624DE0000000
  %1159 = add i32 %54, 104
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 16
  %1163 = and i32 %1162, 255
  %1164 = lshr i32 %1161, 24
  %1165 = add i32 %54, 308
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1167, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = add i32 %54, 48
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 22
  %1176 = shl nuw nsw i32 %1175, 5
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = shl i32 %1174, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = fmul fast float %1185, 1.000000e+03
  %1187 = fmul fast float %314, %1186
  %1188 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1189 = fadd fast float %1188, %304
  %1190 = fmul fast float %315, %1186
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %306
  %1193 = fmul fast float %1158, %1186
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fmul fast float %1194, 0x401921FB60000000
  %1196 = fadd fast float %1195, %1177
  %1197 = call float @dx.op.unary.f32(i32 13, float %1196)  ; Sin(value)
  %1198 = call float @dx.op.unary.f32(i32 12, float %1196)  ; Cos(value)
  %1199 = fsub fast float -0.000000e+00, %1197
  %1200 = fadd fast float %1151, -5.000000e-01
  %1201 = fadd fast float %1152, -5.000000e-01
  %1202 = fmul fast float %1169, %1200
  %1203 = fmul fast float %1171, %1201
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = fadd fast float %1203, 5.000000e-01
  %1206 = fmul fast float %1180, %1204
  %1207 = fmul fast float %1183, %1205
  %1208 = fmul fast float %1198, %1206
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %1207, float %1208)  ; FMad(a,b,c)
  %1210 = fmul fast float %1197, %1206
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1207, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1189, %1209
  %1213 = fadd fast float %1192, %1211
  %1214 = icmp ugt i32 %1163, 1
  %1215 = icmp ugt i32 %1161, 33554431
  %1216 = or i1 %1215, %1214
  br i1 %1216, label %1217, label %1242

; <label>:1217                                    ; preds = %1144
  %1218 = add i32 %54, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = lshr i32 %1220, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fmul fast float %1185, %1222
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = mul nuw nsw i32 %1163, %1164
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1224, %1226
  %1228 = call float @dx.op.unary.f32(i32 27, float %1227)  ; Round_ni(value)
  %1229 = fptoui float %1228 to i32
  %1230 = urem i32 %1229, %1163
  %1231 = udiv i32 %1229, %1164
  %1232 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1233 = call float @dx.op.unary.f32(i32 22, float %1213)  ; Frc(value)
  %1234 = uitofp i32 %1230 to float
  %1235 = uitofp i32 %1231 to float
  %1236 = fadd fast float %1232, %1234
  %1237 = fadd fast float %1233, %1235
  %1238 = uitofp i32 %1163 to float
  %1239 = uitofp i32 %1164 to float
  %1240 = fdiv fast float %1236, %1238
  %1241 = fdiv fast float %1237, %1239
  br label %1242

; <label>:1242                                    ; preds = %1217, %1144
  %1243 = phi float [ %1240, %1217 ], [ %1212, %1144 ]
  %1244 = phi float [ %1241, %1217 ], [ %1213, %1144 ]
  %1245 = and i32 %1138, 16777216
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1356, label %1247

; <label>:1247                                    ; preds = %1242
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = fadd fast float %1249, %158
  %1253 = fadd fast float %1250, %159
  %1254 = fadd fast float %1251, %160
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = icmp eq i32 %55, 65535
  br i1 %1258, label %1353, label %1259

; <label>:1259                                    ; preds = %1247
  %1260 = lshr i32 %55, 1
  %1261 = shl i32 %1260, 2
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %55, 1
  %1265 = icmp ne i32 %1264, 0
  %1266 = lshr i32 %1263, 16
  %1267 = and i32 %1263, 65535
  %1268 = select i1 %1265, i32 %1266, i32 %1267
  %1269 = icmp eq i32 %1268, 65535
  br i1 %1269, label %1349, label %1270

; <label>:1270                                    ; preds = %1259
  %1271 = mul nuw nsw i32 %1268, 40
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = add nuw nsw i32 %1271, 12
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = add nuw nsw i32 %1271, 24
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = add nuw nsw i32 %1271, 36
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = fsub fast float %1252, %1273
  %1290 = fsub fast float %1253, %1274
  %1291 = fsub fast float %1254, %1275
  %1292 = fmul fast float %1288, %1289
  %1293 = fmul fast float %1288, %1290
  %1294 = fmul fast float %1288, %1291
  %1295 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 27, float %1293)  ; Round_ni(value)
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = fadd fast float %1295, 5.000000e-01
  %1299 = fadd fast float %1296, 5.000000e-01
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fmul fast float %1298, %1278
  %1302 = fmul fast float %1299, %1279
  %1303 = fmul fast float %1300, %1280
  %1304 = shl i32 %55, 2
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1308, %dx.types.Handle %49, float %1309, float %1310, float %1311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = fmul fast float %1313, 1.023000e+03
  %1317 = fmul fast float %1314, 1.023000e+03
  %1318 = fmul fast float %1315, 1.023000e+03
  %1319 = fadd fast float %1316, 5.000000e-01
  %1320 = fadd fast float %1317, 5.000000e-01
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = call float @dx.op.unary.f32(i32 27, float %1319)  ; Round_ni(value)
  %1323 = call float @dx.op.unary.f32(i32 27, float %1320)  ; Round_ni(value)
  %1324 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1325 = fsub fast float %1292, %1295
  %1326 = fsub fast float %1293, %1296
  %1327 = fsub fast float %1294, %1297
  %1328 = fmul fast float %1325, 7.500000e-01
  %1329 = fmul fast float %1326, 7.500000e-01
  %1330 = fmul fast float %1327, 7.500000e-01
  %1331 = fadd fast float %1295, 1.250000e-01
  %1332 = fadd fast float %1331, %1328
  %1333 = fadd fast float %1332, %1322
  %1334 = fadd fast float %1296, 1.250000e-01
  %1335 = fadd fast float %1334, %1329
  %1336 = fadd fast float %1335, %1323
  %1337 = fadd fast float %1297, 1.250000e-01
  %1338 = fadd fast float %1337, %1330
  %1339 = fadd fast float %1338, %1324
  %1340 = fmul fast float %1333, %1283
  %1341 = fmul fast float %1336, %1284
  %1342 = fmul fast float %1339, %1285
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1346, %dx.types.Handle %47, float %1340, float %1341, float %1342, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1270, %1259
  %1350 = phi float [ %1348, %1270 ], [ -1.000000e+00, %1259 ]
  %1351 = fadd fast float %1350, %1257
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br label %1353

; <label>:1353                                    ; preds = %1349, %1247
  %1354 = phi float [ %1352, %1349 ], [ %1257, %1247 ]
  %1355 = fmul fast float %1354, %459
  br label %1356

; <label>:1356                                    ; preds = %1353, %1242
  %1357 = phi float [ %1355, %1353 ], [ %459, %1242 ]
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 256
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1408, label %1362

; <label>:1362                                    ; preds = %1356
  %1363 = add i32 %54, 444
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = add i32 %1365, 0
  %1367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1367, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = add i32 %54, 116
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = shl i32 %1372, 4
  %1374 = and i32 %1373, 32752
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = lshr i32 %1372, 7
  %1377 = and i32 %1376, 32752
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = fsub fast float 1.000000e+00, %1357
  %1380 = call float @dx.op.binary.f32(i32 35, float %1379, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1381 = bitcast float %1357 to i32
  %1382 = sitofp i32 %1381 to float
  %1383 = fadd fast float %1382, 0xC1CFBF8940000000
  %1384 = fmul fast float %1378, %1383
  %1385 = fadd fast float %1384, 0x41CFBF8940000000
  %1386 = fptosi float %1385 to i32
  %1387 = bitcast i32 %1386 to float
  %1388 = bitcast float %1380 to i32
  %1389 = sitofp i32 %1388 to float
  %1390 = fadd fast float %1389, 0xC1CFBF8940000000
  %1391 = fmul fast float %1390, %1378
  %1392 = fadd fast float %1391, 0x41CFBF8940000000
  %1393 = fptosi float %1392 to i32
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1387, %1375
  %1396 = fmul fast float %1394, %1375
  %1397 = fsub fast float %1380, %1395
  %1398 = fadd fast float %1396, %1380
  %1399 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1400 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1401 = fsub fast float %1369, %1399
  %1402 = fsub fast float %1400, %1399
  %1403 = bitcast float %1402 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1405, %1401
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1362, %1356
  %1409 = phi float [ %1407, %1362 ], [ %1357, %1356 ]
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 128
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1430, label %1414

; <label>:1414                                    ; preds = %1408
  %1415 = add i32 %54, 428
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = add i32 %1417, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1419, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 524288
  %1425 = icmp ne i32 %1424, 0
  %1426 = fcmp fast ogt float %1421, 0x3FE0101020000000
  %1427 = select i1 %1426, float 1.000000e+00, float 0.000000e+00
  %1428 = select i1 %1425, float %1427, float %1421
  %1429 = fmul fast float %1428, %1409
  br label %1430

; <label>:1430                                    ; preds = %1414, %1408
  %1431 = phi float [ %1429, %1414 ], [ %1409, %1408 ]
  %1432 = fcmp fast ult float %1431, 0x3F70101020000000
  br i1 %1432, label %1975, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 16
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1636, label %1438

; <label>:1438                                    ; preds = %1433
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %54, 380
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = and i32 %1440, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = lshr i32 %1440, 8
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1450, %1452
  %1457 = fadd fast float %1456, %1455
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 512
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1471, label %1463

; <label>:1463                                    ; preds = %1438
  %1464 = add i32 %54, 460
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  br label %1471

; <label>:1471                                    ; preds = %1463, %1438
  %1472 = phi float [ %1470, %1463 ], [ 1.000000e+00, %1438 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 33554432
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1583, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %54, 240
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1480, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = add i32 %54, 244
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = lshr i32 %1491, 24
  %1493 = uitofp i32 %1492 to float
  %1494 = fmul fast float %1493, 0x3F70101020000000
  %1495 = and i32 %1491, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = lshr i32 %1491, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = lshr i32 %1491, 16
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = add i32 %54, 236
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 24
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = and i32 %1508, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1508, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1508, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = bitcast float %1447 to i32
  %1524 = ashr i32 %1523, 1
  %1525 = sub nsw i32 1597463174, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1447, 5.000000e-01
  %1528 = fmul fast float %1526, %1526
  %1529 = fmul fast float %1528, %1527
  %1530 = fsub fast float 1.500000e+00, %1529
  %1531 = fmul fast float %1526, %1447
  %1532 = fmul fast float %1531, %1530
  %1533 = bitcast float %1448 to i32
  %1534 = ashr i32 %1533, 1
  %1535 = sub nsw i32 1597463174, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1448, 5.000000e-01
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1538, %1537
  %1540 = fsub fast float 1.500000e+00, %1539
  %1541 = fmul fast float %1536, %1448
  %1542 = fmul fast float %1541, %1540
  %1543 = bitcast float %1449 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = sub nsw i32 1597463174, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1449, 5.000000e-01
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1548, %1547
  %1550 = fsub fast float 1.500000e+00, %1549
  %1551 = fmul fast float %1546, %1449
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float %1532, %1514
  %1554 = fsub fast float %1542, %1518
  %1555 = fsub fast float %1552, %1522
  %1556 = fmul fast float %1553, %1482
  %1557 = fmul fast float %1554, %1484
  %1558 = fmul fast float %1555, %1489
  %1559 = fadd fast float %1556, %1497
  %1560 = fadd fast float %1557, %1501
  %1561 = fadd fast float %1558, %1505
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1564 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1565 = fmul fast float %1562, %1562
  %1566 = fmul fast float %1563, %1563
  %1567 = fmul fast float %1564, %1564
  %1568 = fsub fast float %1565, %1447
  %1569 = fsub fast float %1566, %1448
  %1570 = fsub fast float %1567, %1449
  %1571 = fmul fast float %1568, %1472
  %1572 = fmul fast float %1569, %1472
  %1573 = fmul fast float %1570, %1472
  %1574 = fadd fast float %1571, %1447
  %1575 = fadd fast float %1572, %1448
  %1576 = fadd fast float %1573, %1449
  %1577 = fadd fast float %1494, %1458
  %1578 = fsub fast float %1577, %1511
  %1579 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1580 = fsub fast float %1579, %1458
  %1581 = fmul fast float %1580, %1472
  %1582 = fadd fast float %1581, %1458
  br label %1636

; <label>:1583                                    ; preds = %1471
  %1584 = and i32 %1474, 134217728
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1620, label %1586

; <label>:1586                                    ; preds = %1583
  %1587 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1588 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1589 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fmul fast float %1590, %1472
  %1594 = fmul fast float %1591, %1472
  %1595 = fmul fast float %1592, %1472
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %1448)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1602 = fmul fast float %1596, 2.000000e+00
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, %1599
  %1605 = fadd fast float %1604, %1602
  %1606 = fmul fast float %1605, %1599
  %1607 = fmul fast float %1597, 2.000000e+00
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fmul fast float %1608, %1600
  %1610 = fadd fast float %1609, %1607
  %1611 = fmul fast float %1610, %1600
  %1612 = fmul fast float %1598, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1601
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1601
  %1617 = fmul fast float %1606, %1606
  %1618 = fmul fast float %1611, %1611
  %1619 = fmul fast float %1616, %1616
  br label %1636

; <label>:1620                                    ; preds = %1583
  %1621 = fmul fast float %291, %291
  %1622 = fmul fast float %295, %295
  %1623 = fmul fast float %299, %299
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fadd fast float %1622, -1.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fmul fast float %1472, %1624
  %1628 = fmul fast float %1472, %1625
  %1629 = fmul fast float %1472, %1626
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fmul fast float %1630, %1447
  %1634 = fmul fast float %1631, %1448
  %1635 = fmul fast float %1632, %1449
  br label %1636

; <label>:1636                                    ; preds = %1620, %1586, %1477, %1433
  %1637 = phi float [ %1582, %1477 ], [ %1458, %1586 ], [ %1458, %1620 ], [ 0x3FA23C0BE0000000, %1433 ]
  %1638 = phi float [ %1574, %1477 ], [ %1617, %1586 ], [ %1633, %1620 ], [ 1.000000e+00, %1433 ]
  %1639 = phi float [ %1575, %1477 ], [ %1618, %1586 ], [ %1634, %1620 ], [ 1.000000e+00, %1433 ]
  %1640 = phi float [ %1576, %1477 ], [ %1619, %1586 ], [ %1635, %1620 ], [ 1.000000e+00, %1433 ]
  %1641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.i32 %1641, 1
  %1643 = and i32 %1642, 1
  %1644 = icmp ne i32 %1643, 0
  %1645 = add i32 %54, 372
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 32
  %1649 = icmp ne i32 %1648, 0
  %1650 = and i1 %1644, %1649
  %1651 = select i1 %1650, float 1.000000e+00, float %1638
  %1652 = select i1 %1650, float 0x3FD3333340000000, float %1639
  %1653 = select i1 %1650, float 0x3FD3333340000000, float %1640
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1730, label %1658

; <label>:1658                                    ; preds = %1636
  %1659 = add i32 %54, 108
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = add i32 %54, 396
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %1664, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1666, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1667, 3
  %1672 = and i32 %1661, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = lshr i32 %1661, 8
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1661, 16
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101000000000
  %1681 = fmul fast float %1668, %1673
  %1682 = fadd fast float %1681, %1676
  %1683 = fmul fast float %1682, 0x3F70101000000000
  %1684 = fadd fast float %1669, -5.000000e-01
  %1685 = fadd fast float %1671, -5.000000e-01
  %1686 = fmul fast float %1684, %1680
  %1687 = fmul fast float %1685, %1680
  %1688 = fadd fast float %1686, 5.000000e-01
  %1689 = fadd fast float %1687, 5.000000e-01
  %1690 = fmul fast float %1688, 2.000000e+00
  %1691 = fadd fast float %1690, -1.000000e+00
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fadd fast float %1691, %1693
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = fsub fast float %1691, %1693
  %1697 = fmul fast float %1696, 5.000000e-01
  %1698 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1701 = fsub fast float %1699, %1700
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1697, float %1701, float %1695, float %1697, float %1701)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 25, float %1702)  ; Rsqrt(value)
  %1704 = fmul fast float %1695, %1703
  %1705 = fmul fast float %1697, %1703
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 67108864
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1726, label %1710

; <label>:1710                                    ; preds = %1658
  %1711 = add i32 %54, 296
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 65535
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = lshr i32 %1713, 16
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = fsub fast float %1683, %1721
  %1723 = fmul fast float %1722, %1715
  %1724 = fadd fast float %1723, %1719
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  br label %1726

; <label>:1726                                    ; preds = %1710, %1658
  %1727 = phi float [ %1725, %1710 ], [ %1683, %1658 ]
  %1728 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1147, float %1148)  ; Dot2(ax,ay,bx,by)
  %1729 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  br label %1730

; <label>:1730                                    ; preds = %1726, %1636
  %1731 = phi float [ %1727, %1726 ], [ 0x3FD6666660000000, %1636 ]
  %1732 = phi float [ %1728, %1726 ], [ 0.000000e+00, %1636 ]
  %1733 = phi float [ %1729, %1726 ], [ 0.000000e+00, %1636 ]
  %1734 = phi float [ %1670, %1726 ], [ 1.000000e+00, %1636 ]
  %1735 = add i32 %54, 176
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = lshr i32 %1737, 22
  %1739 = shl nuw nsw i32 %1738, 5
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = and i32 %1742, 64
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1778, label %1745

; <label>:1745                                    ; preds = %1730
  %1746 = add i32 %54, 412
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = add i32 %1748, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 131072
  %1754 = icmp eq i32 %1753, 0
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1750, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = fmul fast float %1756, %279
  %1760 = fmul fast float %1757, %282
  %1761 = fmul fast float %1758, %285
  br i1 %1754, label %1768, label %1762

; <label>:1762                                    ; preds = %1745
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = fmul fast float %1764, %1759
  %1766 = fmul fast float %1764, %1760
  %1767 = fmul fast float %1764, %1761
  br label %1768

; <label>:1768                                    ; preds = %1762, %1745
  %1769 = phi float [ %1765, %1762 ], [ %1759, %1745 ]
  %1770 = phi float [ %1766, %1762 ], [ %1760, %1745 ]
  %1771 = phi float [ %1767, %1762 ], [ %1761, %1745 ]
  %1772 = fmul fast float %1769, %1740
  %1773 = select i1 %220, float %1772, float %1769
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1770, float %1771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = select i1 %220, float 0.000000e+00, float %1769
  %1776 = select i1 %220, float %1774, float %1770
  %1777 = select i1 %220, float 0.000000e+00, float %1771
  br label %1778

; <label>:1778                                    ; preds = %1768, %1730
  %1779 = phi float [ %1775, %1768 ], [ 0.000000e+00, %1730 ]
  %1780 = phi float [ %1776, %1768 ], [ 0.000000e+00, %1730 ]
  %1781 = phi float [ %1777, %1768 ], [ 0.000000e+00, %1730 ]
  %1782 = add i32 %54, 112
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1784, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = fmul fast float %1789, %1790
  %1792 = fadd fast float %1791, %1786
  %1793 = fmul fast float %1792, 0x3F70101020000000
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br i1 %1135, label %1795, label %1803

; <label>:1795                                    ; preds = %1778
  %1796 = fsub fast float 1.000000e+00, %1431
  %1797 = fmul fast float %1796, %1126
  %1798 = fmul fast float %1796, %1127
  %1799 = fmul fast float %1796, %1128
  %1800 = fmul fast float %1796, %1123
  %1801 = fmul fast float %1796, %1124
  %1802 = fmul fast float %1796, %1125
  br label %1803

; <label>:1803                                    ; preds = %1795, %1778
  %1804 = phi float [ %1800, %1795 ], [ %1123, %1778 ]
  %1805 = phi float [ %1801, %1795 ], [ %1124, %1778 ]
  %1806 = phi float [ %1802, %1795 ], [ %1125, %1778 ]
  %1807 = phi float [ %1797, %1795 ], [ %1126, %1778 ]
  %1808 = phi float [ %1798, %1795 ], [ %1127, %1778 ]
  %1809 = phi float [ %1799, %1795 ], [ %1128, %1778 ]
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 3
  %1813 = icmp eq i32 %1812, 3
  br i1 %1813, label %1892, label %1814

; <label>:1814                                    ; preds = %1803
  %1815 = and i32 %1811, 16
  %1816 = icmp ne i32 %1815, 0
  %1817 = select i1 %1816, float %1431, float 0.000000e+00
  %1818 = icmp eq i32 %1812, 0
  br i1 %1818, label %1819, label %1847

; <label>:1819                                    ; preds = %1814
  %1820 = and i32 %1811, 64
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %1431, float 0.000000e+00
  %1823 = fsub fast float %1651, %1807
  %1824 = fsub fast float %1652, %1808
  %1825 = fsub fast float %1653, %1809
  %1826 = fmul fast float %1817, %1823
  %1827 = fmul fast float %1817, %1824
  %1828 = fmul fast float %1817, %1825
  %1829 = fadd fast float %1826, %1807
  %1830 = fadd fast float %1827, %1808
  %1831 = fadd fast float %1828, %1809
  %1832 = fsub fast float %1637, %1129
  %1833 = fmul fast float %1817, %1832
  %1834 = fadd fast float %1833, %1129
  %1835 = fsub fast float %1779, %1804
  %1836 = fsub fast float %1780, %1805
  %1837 = fsub fast float %1781, %1806
  %1838 = fmul fast float %1822, %1835
  %1839 = fmul fast float %1822, %1836
  %1840 = fmul fast float %1822, %1837
  %1841 = fadd fast float %1838, %1804
  %1842 = fadd fast float %1839, %1805
  %1843 = fadd fast float %1840, %1806
  %1844 = fsub fast float %1794, %1133
  %1845 = fmul fast float %1817, %1844
  %1846 = fadd fast float %1845, %1133
  br label %1892

; <label>:1847                                    ; preds = %1814
  %1848 = icmp eq i32 %1812, 1
  br i1 %1848, label %1849, label %1862

; <label>:1849                                    ; preds = %1847
  %1850 = fadd fast float %1651, -1.000000e+00
  %1851 = fadd fast float %1652, -1.000000e+00
  %1852 = fadd fast float %1653, -1.000000e+00
  %1853 = fmul fast float %1817, %1850
  %1854 = fmul fast float %1817, %1851
  %1855 = fmul fast float %1817, %1852
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fmul fast float %1856, %1807
  %1860 = fmul fast float %1857, %1808
  %1861 = fmul fast float %1858, %1809
  br label %1892

; <label>:1862                                    ; preds = %1847
  %1863 = icmp eq i32 %1812, 2
  br i1 %1863, label %1864, label %1892

; <label>:1864                                    ; preds = %1862
  %1865 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1866 = call float @dx.op.unary.f32(i32 24, float %1652)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fmul fast float %1868, %1817
  %1872 = fmul fast float %1869, %1817
  %1873 = fmul fast float %1870, %1817
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fmul fast float %1874, 2.000000e+00
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1878, %1807
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1807
  %1882 = fmul fast float %1875, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1808
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1808
  %1887 = fmul fast float %1876, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1809
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1809
  br label %1892

; <label>:1892                                    ; preds = %1864, %1862, %1849, %1819, %1803
  %1893 = phi float [ %1804, %1803 ], [ %1804, %1864 ], [ %1804, %1862 ], [ %1804, %1849 ], [ %1841, %1819 ]
  %1894 = phi float [ %1805, %1803 ], [ %1805, %1864 ], [ %1805, %1862 ], [ %1805, %1849 ], [ %1842, %1819 ]
  %1895 = phi float [ %1806, %1803 ], [ %1806, %1864 ], [ %1806, %1862 ], [ %1806, %1849 ], [ %1843, %1819 ]
  %1896 = phi float [ %1807, %1803 ], [ %1881, %1864 ], [ %1807, %1862 ], [ %1859, %1849 ], [ %1829, %1819 ]
  %1897 = phi float [ %1808, %1803 ], [ %1886, %1864 ], [ %1808, %1862 ], [ %1860, %1849 ], [ %1830, %1819 ]
  %1898 = phi float [ %1809, %1803 ], [ %1891, %1864 ], [ %1809, %1862 ], [ %1861, %1849 ], [ %1831, %1819 ]
  %1899 = phi float [ %1129, %1803 ], [ %1129, %1864 ], [ %1129, %1862 ], [ %1129, %1849 ], [ %1834, %1819 ]
  %1900 = phi float [ %1133, %1803 ], [ %1133, %1864 ], [ %1133, %1862 ], [ %1133, %1849 ], [ %1846, %1819 ]
  %1901 = and i32 %1811, 12
  %1902 = icmp eq i32 %1901, 12
  br i1 %1902, label %1975, label %1903

; <label>:1903                                    ; preds = %1892
  %1904 = and i32 %1811, 2097184
  %1905 = icmp eq i32 %1904, 2097184
  %1906 = select i1 %1905, float %1431, float 0.000000e+00
  %1907 = and i32 %1811, 4194336
  %1908 = icmp eq i32 %1907, 4194336
  %1909 = select i1 %1908, float %1431, float 0.000000e+00
  %1910 = and i32 %1811, 8388640
  %1911 = icmp eq i32 %1910, 8388640
  %1912 = select i1 %1911, float %1431, float 0.000000e+00
  %1913 = icmp eq i32 %1901, 0
  br i1 %1913, label %1914, label %1927

; <label>:1914                                    ; preds = %1903
  %1915 = fsub fast float %1732, %1121
  %1916 = fsub fast float %1733, %1122
  %1917 = fmul fast float %1906, %1915
  %1918 = fmul fast float %1906, %1916
  %1919 = fadd fast float %1917, %1121
  %1920 = fadd fast float %1918, %1122
  %1921 = fsub fast float %1734, %1132
  %1922 = fmul fast float %1909, %1921
  %1923 = fadd fast float %1922, %1132
  %1924 = fsub fast float %1731, %1131
  %1925 = fmul fast float %1912, %1924
  %1926 = fadd fast float %1925, %1131
  br label %1975

; <label>:1927                                    ; preds = %1903
  %1928 = icmp eq i32 %1901, 4
  br i1 %1928, label %1929, label %1961

; <label>:1929                                    ; preds = %1927
  %1930 = fmul fast float %1906, %1732
  %1931 = fmul fast float %1906, %1733
  %1932 = fadd fast float %1930, %1121
  %1933 = fadd fast float %1931, %1122
  %1934 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1935 = fsub fast float %1934, %1132
  %1936 = fmul fast float %1935, %1909
  %1937 = fadd fast float %1936, %1132
  %1938 = fadd fast float %1731, %1131
  %1939 = fmul fast float %1938, 0x3FF337FAE0000000
  %1940 = fmul fast float %1131, %1131
  %1941 = fmul fast float %1731, %1731
  %1942 = fadd fast float %1941, %1940
  %1943 = fmul fast float %1942, 0x3FE5152B00000000
  %1944 = fmul fast float %1131, 0xBFCC1F85E0000000
  %1945 = fmul fast float %1944, %1731
  %1946 = fadd fast float %1945, 0xBFE1363700000000
  %1947 = fadd fast float %1946, %1939
  %1948 = fsub fast float %1947, %1943
  %1949 = fmul fast float %1938, 0x3FBA6F0D00000000
  %1950 = fmul fast float %1942, 0x3FD0432880000000
  %1951 = fmul fast float %1131, 0xBFEF110800000000
  %1952 = fmul fast float %1951, %1731
  %1953 = fadd fast float %1952, 1.000000e+00
  %1954 = fsub fast float %1953, %1949
  %1955 = fadd fast float %1954, %1950
  %1956 = fdiv fast float %1948, %1955
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float %1957, %1131
  %1959 = fmul fast float %1958, %1912
  %1960 = fadd fast float %1959, %1131
  br label %1975

; <label>:1961                                    ; preds = %1927
  %1962 = icmp eq i32 %1901, 8
  br i1 %1962, label %1963, label %1975

; <label>:1963                                    ; preds = %1961
  %1964 = fmul fast float %1906, %1732
  %1965 = fmul fast float %1906, %1733
  %1966 = fadd fast float %1964, %1121
  %1967 = fadd fast float %1965, %1122
  %1968 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1969 = fsub fast float %1968, %1132
  %1970 = fmul fast float %1969, %1909
  %1971 = fadd fast float %1970, %1132
  %1972 = fsub fast float %1731, %1131
  %1973 = fmul fast float %1912, %1972
  %1974 = fadd fast float %1973, %1131
  br label %1975

; <label>:1975                                    ; preds = %1963, %1961, %1929, %1914, %1892, %1430, %1134, %1120
  %1976 = phi float [ %1121, %1892 ], [ %1121, %1430 ], [ %1121, %1120 ], [ %1966, %1963 ], [ %1121, %1961 ], [ %1932, %1929 ], [ %1919, %1914 ], [ %1121, %1134 ]
  %1977 = phi float [ %1122, %1892 ], [ %1122, %1430 ], [ %1122, %1120 ], [ %1967, %1963 ], [ %1122, %1961 ], [ %1933, %1929 ], [ %1920, %1914 ], [ %1122, %1134 ]
  %1978 = phi float [ %1893, %1892 ], [ %1123, %1430 ], [ %1123, %1120 ], [ %1893, %1963 ], [ %1893, %1961 ], [ %1893, %1929 ], [ %1893, %1914 ], [ %1123, %1134 ]
  %1979 = phi float [ %1894, %1892 ], [ %1124, %1430 ], [ %1124, %1120 ], [ %1894, %1963 ], [ %1894, %1961 ], [ %1894, %1929 ], [ %1894, %1914 ], [ %1124, %1134 ]
  %1980 = phi float [ %1895, %1892 ], [ %1125, %1430 ], [ %1125, %1120 ], [ %1895, %1963 ], [ %1895, %1961 ], [ %1895, %1929 ], [ %1895, %1914 ], [ %1125, %1134 ]
  %1981 = phi float [ %1896, %1892 ], [ %1126, %1430 ], [ %1126, %1120 ], [ %1896, %1963 ], [ %1896, %1961 ], [ %1896, %1929 ], [ %1896, %1914 ], [ %1126, %1134 ]
  %1982 = phi float [ %1897, %1892 ], [ %1127, %1430 ], [ %1127, %1120 ], [ %1897, %1963 ], [ %1897, %1961 ], [ %1897, %1929 ], [ %1897, %1914 ], [ %1127, %1134 ]
  %1983 = phi float [ %1898, %1892 ], [ %1128, %1430 ], [ %1128, %1120 ], [ %1898, %1963 ], [ %1898, %1961 ], [ %1898, %1929 ], [ %1898, %1914 ], [ %1128, %1134 ]
  %1984 = phi float [ %1899, %1892 ], [ %1129, %1430 ], [ %1129, %1120 ], [ %1899, %1963 ], [ %1899, %1961 ], [ %1899, %1929 ], [ %1899, %1914 ], [ %1129, %1134 ]
  %1985 = phi float [ %1131, %1892 ], [ %1131, %1430 ], [ %1131, %1120 ], [ %1974, %1963 ], [ %1131, %1961 ], [ %1960, %1929 ], [ %1926, %1914 ], [ %1131, %1134 ]
  %1986 = phi float [ %1132, %1892 ], [ %1132, %1430 ], [ %1132, %1120 ], [ %1971, %1963 ], [ %1132, %1961 ], [ %1937, %1929 ], [ %1923, %1914 ], [ %1132, %1134 ]
  %1987 = phi float [ %1900, %1892 ], [ %1133, %1430 ], [ %1133, %1120 ], [ %1900, %1963 ], [ %1900, %1961 ], [ %1900, %1929 ], [ %1900, %1914 ], [ %1133, %1134 ]
  br i1 %406, label %2829, label %1988

; <label>:1988                                    ; preds = %1975
  %1989 = icmp ult i32 %462, 3
  %1990 = add i32 %54, 56
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %54, 60
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = or i32 %1995, %1992
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2829, label %1998

; <label>:1998                                    ; preds = %1988
  %1999 = and i32 %1992, 262144
  %2000 = icmp ne i32 %1999, 0
  %2001 = select i1 %2000, float %57, float 1.000000e+00
  %2002 = select i1 %2000, float %58, float 0.000000e+00
  %2003 = select i1 %2000, float %59, float 0.000000e+00
  %2004 = select i1 %2000, float %60, float 1.000000e+00
  %2005 = select i1 %2000, float %61, float %77
  %2006 = select i1 %2000, float %62, float %78
  %2007 = add i32 %54, 316
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 16
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = fmul fast float %2011, 0x3F50624DE0000000
  %2013 = add i32 %54, 120
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 16
  %2017 = and i32 %2016, 255
  %2018 = lshr i32 %2015, 24
  %2019 = add i32 %54, 324
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = and i32 %2021, 65535
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = lshr i32 %2021, 16
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = add i32 %54, 64
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 22
  %2030 = shl nuw nsw i32 %2029, 5
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = shl i32 %2028, 4
  %2033 = and i32 %2032, 32752
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2028, 7
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2040 = fmul fast float %2039, 1.000000e+03
  %2041 = fmul fast float %356, %2040
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = fadd fast float %2042, %346
  %2044 = fmul fast float %357, %2040
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = fadd fast float %2045, %348
  %2047 = fmul fast float %2012, %2040
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = fmul fast float %2048, 0x401921FB60000000
  %2050 = fadd fast float %2049, %2031
  %2051 = call float @dx.op.unary.f32(i32 13, float %2050)  ; Sin(value)
  %2052 = call float @dx.op.unary.f32(i32 12, float %2050)  ; Cos(value)
  %2053 = fsub fast float -0.000000e+00, %2051
  %2054 = fadd fast float %2005, -5.000000e-01
  %2055 = fadd fast float %2006, -5.000000e-01
  %2056 = fmul fast float %2023, %2054
  %2057 = fmul fast float %2025, %2055
  %2058 = fadd fast float %2056, 5.000000e-01
  %2059 = fadd fast float %2057, 5.000000e-01
  %2060 = fmul fast float %2034, %2058
  %2061 = fmul fast float %2037, %2059
  %2062 = fmul fast float %2052, %2060
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2053, float %2061, float %2062)  ; FMad(a,b,c)
  %2064 = fmul fast float %2051, %2060
  %2065 = call float @dx.op.tertiary.f32(i32 46, float %2052, float %2061, float %2064)  ; FMad(a,b,c)
  %2066 = fadd fast float %2043, %2063
  %2067 = fadd fast float %2046, %2065
  %2068 = icmp ugt i32 %2017, 1
  %2069 = icmp ugt i32 %2015, 33554431
  %2070 = or i1 %2069, %2068
  br i1 %2070, label %2071, label %2096

; <label>:2071                                    ; preds = %1998
  %2072 = add i32 %54, 260
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = lshr i32 %2074, 16
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fmul fast float %2039, %2076
  %2078 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2079 = mul nuw nsw i32 %2017, %2018
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2078, %2080
  %2082 = call float @dx.op.unary.f32(i32 27, float %2081)  ; Round_ni(value)
  %2083 = fptoui float %2082 to i32
  %2084 = urem i32 %2083, %2017
  %2085 = udiv i32 %2083, %2018
  %2086 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2087 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2088 = uitofp i32 %2084 to float
  %2089 = uitofp i32 %2085 to float
  %2090 = fadd fast float %2086, %2088
  %2091 = fadd fast float %2087, %2089
  %2092 = uitofp i32 %2017 to float
  %2093 = uitofp i32 %2018 to float
  %2094 = fdiv fast float %2090, %2092
  %2095 = fdiv fast float %2091, %2093
  br label %2096

; <label>:2096                                    ; preds = %2071, %1998
  %2097 = phi float [ %2094, %2071 ], [ %2066, %1998 ]
  %2098 = phi float [ %2095, %2071 ], [ %2067, %1998 ]
  %2099 = and i32 %1992, 16777216
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2210, label %2101

; <label>:2101                                    ; preds = %2096
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2106 = fadd fast float %2103, %158
  %2107 = fadd fast float %2104, %159
  %2108 = fadd fast float %2105, %160
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2112 = icmp eq i32 %55, 65535
  br i1 %2112, label %2207, label %2113

; <label>:2113                                    ; preds = %2101
  %2114 = lshr i32 %55, 1
  %2115 = shl i32 %2114, 2
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %55, 1
  %2119 = icmp ne i32 %2118, 0
  %2120 = lshr i32 %2117, 16
  %2121 = and i32 %2117, 65535
  %2122 = select i1 %2119, i32 %2120, i32 %2121
  %2123 = icmp eq i32 %2122, 65535
  br i1 %2123, label %2203, label %2124

; <label>:2124                                    ; preds = %2113
  %2125 = mul nuw nsw i32 %2122, 40
  %2126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.ResRet.f32 %2126, 2
  %2130 = add nuw nsw i32 %2125, 12
  %2131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = add nuw nsw i32 %2125, 24
  %2136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.ResRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.ResRet.f32 %2136, 2
  %2140 = add nuw nsw i32 %2125, 36
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = fsub fast float %2106, %2127
  %2144 = fsub fast float %2107, %2128
  %2145 = fsub fast float %2108, %2129
  %2146 = fmul fast float %2142, %2143
  %2147 = fmul fast float %2142, %2144
  %2148 = fmul fast float %2142, %2145
  %2149 = call float @dx.op.unary.f32(i32 27, float %2146)  ; Round_ni(value)
  %2150 = call float @dx.op.unary.f32(i32 27, float %2147)  ; Round_ni(value)
  %2151 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fmul fast float %2152, %2132
  %2156 = fmul fast float %2153, %2133
  %2157 = fmul fast float %2154, %2134
  %2158 = shl i32 %55, 2
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2164 = call float @dx.op.unary.f32(i32 22, float %2156)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2157)  ; Frc(value)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2162, %dx.types.Handle %49, float %2163, float %2164, float %2165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = fmul fast float %2167, 1.023000e+03
  %2171 = fmul fast float %2168, 1.023000e+03
  %2172 = fmul fast float %2169, 1.023000e+03
  %2173 = fadd fast float %2170, 5.000000e-01
  %2174 = fadd fast float %2171, 5.000000e-01
  %2175 = fadd fast float %2172, 5.000000e-01
  %2176 = call float @dx.op.unary.f32(i32 27, float %2173)  ; Round_ni(value)
  %2177 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2178 = call float @dx.op.unary.f32(i32 27, float %2175)  ; Round_ni(value)
  %2179 = fsub fast float %2146, %2149
  %2180 = fsub fast float %2147, %2150
  %2181 = fsub fast float %2148, %2151
  %2182 = fmul fast float %2179, 7.500000e-01
  %2183 = fmul fast float %2180, 7.500000e-01
  %2184 = fmul fast float %2181, 7.500000e-01
  %2185 = fadd fast float %2149, 1.250000e-01
  %2186 = fadd fast float %2185, %2182
  %2187 = fadd fast float %2186, %2176
  %2188 = fadd fast float %2150, 1.250000e-01
  %2189 = fadd fast float %2188, %2183
  %2190 = fadd fast float %2189, %2177
  %2191 = fadd fast float %2151, 1.250000e-01
  %2192 = fadd fast float %2191, %2184
  %2193 = fadd fast float %2192, %2178
  %2194 = fmul fast float %2187, %2137
  %2195 = fmul fast float %2190, %2138
  %2196 = fmul fast float %2193, %2139
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = add i32 %2198, 0
  %2200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2200, %dx.types.Handle %47, float %2194, float %2195, float %2196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  br label %2203

; <label>:2203                                    ; preds = %2124, %2113
  %2204 = phi float [ %2202, %2124 ], [ -1.000000e+00, %2113 ]
  %2205 = fadd fast float %2204, %2111
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br label %2207

; <label>:2207                                    ; preds = %2203, %2101
  %2208 = phi float [ %2206, %2203 ], [ %2111, %2101 ]
  %2209 = fmul fast float %2208, %458
  br label %2210

; <label>:2210                                    ; preds = %2207, %2096
  %2211 = phi float [ %2209, %2207 ], [ %458, %2096 ]
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 256
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2262, label %2216

; <label>:2216                                    ; preds = %2210
  %2217 = add i32 %54, 448
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = add i32 %54, 132
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = shl i32 %2226, 4
  %2228 = and i32 %2227, 32752
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2226, 7
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = fsub fast float 1.000000e+00, %2211
  %2234 = call float @dx.op.binary.f32(i32 35, float %2233, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2235 = bitcast float %2211 to i32
  %2236 = sitofp i32 %2235 to float
  %2237 = fadd fast float %2236, 0xC1CFBF8940000000
  %2238 = fmul fast float %2232, %2237
  %2239 = fadd fast float %2238, 0x41CFBF8940000000
  %2240 = fptosi float %2239 to i32
  %2241 = bitcast i32 %2240 to float
  %2242 = bitcast float %2234 to i32
  %2243 = sitofp i32 %2242 to float
  %2244 = fadd fast float %2243, 0xC1CFBF8940000000
  %2245 = fmul fast float %2244, %2232
  %2246 = fadd fast float %2245, 0x41CFBF8940000000
  %2247 = fptosi float %2246 to i32
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2241, %2229
  %2250 = fmul fast float %2248, %2229
  %2251 = fsub fast float %2234, %2249
  %2252 = fadd fast float %2250, %2234
  %2253 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2254 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2255 = fsub fast float %2223, %2253
  %2256 = fsub fast float %2254, %2253
  %2257 = bitcast float %2256 to i32
  %2258 = sub nsw i32 2129859010, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2259, %2255
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  br label %2262

; <label>:2262                                    ; preds = %2216, %2210
  %2263 = phi float [ %2261, %2216 ], [ %2211, %2210 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 128
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2284, label %2268

; <label>:2268                                    ; preds = %2262
  %2269 = add i32 %54, 432
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 524288
  %2279 = icmp ne i32 %2278, 0
  %2280 = fcmp fast ogt float %2275, 0x3FE0101020000000
  %2281 = select i1 %2280, float 1.000000e+00, float 0.000000e+00
  %2282 = select i1 %2279, float %2281, float %2275
  %2283 = fmul fast float %2282, %2263
  br label %2284

; <label>:2284                                    ; preds = %2268, %2262
  %2285 = phi float [ %2283, %2268 ], [ %2263, %2262 ]
  %2286 = fcmp fast ult float %2285, 0x3F70101020000000
  br i1 %2286, label %2829, label %2287

; <label>:2287                                    ; preds = %2284
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 16
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2490, label %2292

; <label>:2292                                    ; preds = %2287
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %54, 384
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = and i32 %2294, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = lshr i32 %2294, 8
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2304, %2306
  %2311 = fadd fast float %2310, %2309
  %2312 = fmul fast float %2311, 0x3F70101000000000
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 512
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2325, label %2317

; <label>:2317                                    ; preds = %2292
  %2318 = add i32 %54, 464
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  br label %2325

; <label>:2325                                    ; preds = %2317, %2292
  %2326 = phi float [ %2324, %2317 ], [ 1.000000e+00, %2292 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 33554432
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2437, label %2331

; <label>:2331                                    ; preds = %2325
  %2332 = add i32 %54, 256
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2334, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = add i32 %54, 260
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 24
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = and i32 %2345, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2345, 8
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2345, 16
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = add i32 %54, 252
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = lshr i32 %2362, 24
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = and i32 %2362, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2362, 8
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = lshr i32 %2362, 16
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = bitcast float %2301 to i32
  %2378 = ashr i32 %2377, 1
  %2379 = sub nsw i32 1597463174, %2378
  %2380 = bitcast i32 %2379 to float
  %2381 = fmul fast float %2301, 5.000000e-01
  %2382 = fmul fast float %2380, %2380
  %2383 = fmul fast float %2382, %2381
  %2384 = fsub fast float 1.500000e+00, %2383
  %2385 = fmul fast float %2380, %2301
  %2386 = fmul fast float %2385, %2384
  %2387 = bitcast float %2302 to i32
  %2388 = ashr i32 %2387, 1
  %2389 = sub nsw i32 1597463174, %2388
  %2390 = bitcast i32 %2389 to float
  %2391 = fmul fast float %2302, 5.000000e-01
  %2392 = fmul fast float %2390, %2390
  %2393 = fmul fast float %2392, %2391
  %2394 = fsub fast float 1.500000e+00, %2393
  %2395 = fmul fast float %2390, %2302
  %2396 = fmul fast float %2395, %2394
  %2397 = bitcast float %2303 to i32
  %2398 = ashr i32 %2397, 1
  %2399 = sub nsw i32 1597463174, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2303, 5.000000e-01
  %2402 = fmul fast float %2400, %2400
  %2403 = fmul fast float %2402, %2401
  %2404 = fsub fast float 1.500000e+00, %2403
  %2405 = fmul fast float %2400, %2303
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float %2386, %2368
  %2408 = fsub fast float %2396, %2372
  %2409 = fsub fast float %2406, %2376
  %2410 = fmul fast float %2407, %2336
  %2411 = fmul fast float %2408, %2338
  %2412 = fmul fast float %2409, %2343
  %2413 = fadd fast float %2410, %2351
  %2414 = fadd fast float %2411, %2355
  %2415 = fadd fast float %2412, %2359
  %2416 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2417 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = fmul fast float %2416, %2416
  %2420 = fmul fast float %2417, %2417
  %2421 = fmul fast float %2418, %2418
  %2422 = fsub fast float %2419, %2301
  %2423 = fsub fast float %2420, %2302
  %2424 = fsub fast float %2421, %2303
  %2425 = fmul fast float %2422, %2326
  %2426 = fmul fast float %2423, %2326
  %2427 = fmul fast float %2424, %2326
  %2428 = fadd fast float %2425, %2301
  %2429 = fadd fast float %2426, %2302
  %2430 = fadd fast float %2427, %2303
  %2431 = fadd fast float %2348, %2312
  %2432 = fsub fast float %2431, %2365
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fsub fast float %2433, %2312
  %2435 = fmul fast float %2434, %2326
  %2436 = fadd fast float %2435, %2312
  br label %2490

; <label>:2437                                    ; preds = %2325
  %2438 = and i32 %2328, 134217728
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2474, label %2440

; <label>:2440                                    ; preds = %2437
  %2441 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2442 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2444 = fadd fast float %2441, -5.000000e-01
  %2445 = fadd fast float %2442, -5.000000e-01
  %2446 = fadd fast float %2443, -5.000000e-01
  %2447 = fmul fast float %2444, %2326
  %2448 = fmul fast float %2445, %2326
  %2449 = fmul fast float %2446, %2326
  %2450 = fadd fast float %2447, 5.000000e-01
  %2451 = fadd fast float %2448, 5.000000e-01
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %2302)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2456 = fmul fast float %2450, 2.000000e+00
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2457, %2453
  %2459 = fadd fast float %2458, %2456
  %2460 = fmul fast float %2459, %2453
  %2461 = fmul fast float %2451, 2.000000e+00
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2462, %2454
  %2464 = fadd fast float %2463, %2461
  %2465 = fmul fast float %2464, %2454
  %2466 = fmul fast float %2452, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2455
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2455
  %2471 = fmul fast float %2460, %2460
  %2472 = fmul fast float %2465, %2465
  %2473 = fmul fast float %2470, %2470
  br label %2490

; <label>:2474                                    ; preds = %2437
  %2475 = fmul fast float %333, %333
  %2476 = fmul fast float %337, %337
  %2477 = fmul fast float %341, %341
  %2478 = fadd fast float %2475, -1.000000e+00
  %2479 = fadd fast float %2476, -1.000000e+00
  %2480 = fadd fast float %2477, -1.000000e+00
  %2481 = fmul fast float %2326, %2478
  %2482 = fmul fast float %2326, %2479
  %2483 = fmul fast float %2326, %2480
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fmul fast float %2484, %2301
  %2488 = fmul fast float %2485, %2302
  %2489 = fmul fast float %2486, %2303
  br label %2490

; <label>:2490                                    ; preds = %2474, %2440, %2331, %2287
  %2491 = phi float [ %2436, %2331 ], [ %2312, %2440 ], [ %2312, %2474 ], [ 0x3FA23C0BE0000000, %2287 ]
  %2492 = phi float [ %2428, %2331 ], [ %2471, %2440 ], [ %2487, %2474 ], [ 1.000000e+00, %2287 ]
  %2493 = phi float [ %2429, %2331 ], [ %2472, %2440 ], [ %2488, %2474 ], [ 1.000000e+00, %2287 ]
  %2494 = phi float [ %2430, %2331 ], [ %2473, %2440 ], [ %2489, %2474 ], [ 1.000000e+00, %2287 ]
  %2495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.i32 %2495, 1
  %2497 = and i32 %2496, 1
  %2498 = icmp ne i32 %2497, 0
  %2499 = add i32 %54, 372
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 32
  %2503 = icmp ne i32 %2502, 0
  %2504 = and i1 %2498, %2503
  %2505 = select i1 %2504, float 1.000000e+00, float %2492
  %2506 = select i1 %2504, float 0x3FD3333340000000, float %2493
  %2507 = select i1 %2504, float 0x3FD3333340000000, float %2494
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2584, label %2512

; <label>:2512                                    ; preds = %2490
  %2513 = add i32 %54, 124
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %54, 400
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %2518, 0
  %2520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2520, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = extractvalue %dx.types.ResRet.f32 %2521, 3
  %2526 = and i32 %2515, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = lshr i32 %2515, 8
  %2529 = and i32 %2528, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2515, 16
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = fmul fast float %2533, 0x3F70101000000000
  %2535 = fmul fast float %2522, %2527
  %2536 = fadd fast float %2535, %2530
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fadd fast float %2523, -5.000000e-01
  %2539 = fadd fast float %2525, -5.000000e-01
  %2540 = fmul fast float %2538, %2534
  %2541 = fmul fast float %2539, %2534
  %2542 = fadd fast float %2540, 5.000000e-01
  %2543 = fadd fast float %2541, 5.000000e-01
  %2544 = fmul fast float %2542, 2.000000e+00
  %2545 = fadd fast float %2544, -1.000000e+00
  %2546 = fmul fast float %2543, 2.000000e+00
  %2547 = fadd fast float %2546, -1.000000e+00
  %2548 = fadd fast float %2545, %2547
  %2549 = fmul fast float %2548, 5.000000e-01
  %2550 = fsub fast float %2545, %2547
  %2551 = fmul fast float %2550, 5.000000e-01
  %2552 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = call float @dx.op.unary.f32(i32 6, float %2551)  ; FAbs(value)
  %2555 = fsub fast float %2553, %2554
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2551, float %2555, float %2549, float %2551, float %2555)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = call float @dx.op.unary.f32(i32 25, float %2556)  ; Rsqrt(value)
  %2558 = fmul fast float %2549, %2557
  %2559 = fmul fast float %2551, %2557
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 67108864
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2580, label %2564

; <label>:2564                                    ; preds = %2512
  %2565 = add i32 %54, 312
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2567, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fsub fast float %2537, %2575
  %2577 = fmul fast float %2576, %2569
  %2578 = fadd fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2564, %2512
  %2581 = phi float [ %2579, %2564 ], [ %2537, %2512 ]
  %2582 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2001, float %2002)  ; Dot2(ax,ay,bx,by)
  %2583 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2003, float %2004)  ; Dot2(ax,ay,bx,by)
  br label %2584

; <label>:2584                                    ; preds = %2580, %2490
  %2585 = phi float [ %2581, %2580 ], [ 0x3FD6666660000000, %2490 ]
  %2586 = phi float [ %2582, %2580 ], [ 0.000000e+00, %2490 ]
  %2587 = phi float [ %2583, %2580 ], [ 0.000000e+00, %2490 ]
  %2588 = phi float [ %2524, %2580 ], [ 1.000000e+00, %2490 ]
  %2589 = add i32 %54, 192
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 22
  %2593 = shl nuw nsw i32 %2592, 5
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 64
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2632, label %2599

; <label>:2599                                    ; preds = %2584
  %2600 = add i32 %54, 416
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2602, 0
  %2604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 131072
  %2608 = icmp eq i32 %2607, 0
  %2609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2604, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = fmul fast float %2610, %321
  %2614 = fmul fast float %2611, %324
  %2615 = fmul fast float %2612, %327
  br i1 %2608, label %2622, label %2616

; <label>:2616                                    ; preds = %2599
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = fmul fast float %2618, %2613
  %2620 = fmul fast float %2618, %2614
  %2621 = fmul fast float %2618, %2615
  br label %2622

; <label>:2622                                    ; preds = %2616, %2599
  %2623 = phi float [ %2619, %2616 ], [ %2613, %2599 ]
  %2624 = phi float [ %2620, %2616 ], [ %2614, %2599 ]
  %2625 = phi float [ %2621, %2616 ], [ %2615, %2599 ]
  %2626 = fmul fast float %2623, %2594
  %2627 = select i1 %220, float %2626, float %2623
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2627, float %2624, float %2625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = select i1 %220, float 0.000000e+00, float %2623
  %2630 = select i1 %220, float %2628, float %2624
  %2631 = select i1 %220, float 0.000000e+00, float %2625
  br label %2632

; <label>:2632                                    ; preds = %2622, %2584
  %2633 = phi float [ %2629, %2622 ], [ 0.000000e+00, %2584 ]
  %2634 = phi float [ %2630, %2622 ], [ 0.000000e+00, %2584 ]
  %2635 = phi float [ %2631, %2622 ], [ 0.000000e+00, %2584 ]
  %2636 = add i32 %54, 128
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = lshr i32 %2638, 8
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = fmul fast float %2643, %2644
  %2646 = fadd fast float %2645, %2640
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  br i1 %1989, label %2649, label %2657

; <label>:2649                                    ; preds = %2632
  %2650 = fsub fast float 1.000000e+00, %2285
  %2651 = fmul fast float %2650, %1981
  %2652 = fmul fast float %2650, %1982
  %2653 = fmul fast float %2650, %1983
  %2654 = fmul fast float %2650, %1978
  %2655 = fmul fast float %2650, %1979
  %2656 = fmul fast float %2650, %1980
  br label %2657

; <label>:2657                                    ; preds = %2649, %2632
  %2658 = phi float [ %2654, %2649 ], [ %1978, %2632 ]
  %2659 = phi float [ %2655, %2649 ], [ %1979, %2632 ]
  %2660 = phi float [ %2656, %2649 ], [ %1980, %2632 ]
  %2661 = phi float [ %2651, %2649 ], [ %1981, %2632 ]
  %2662 = phi float [ %2652, %2649 ], [ %1982, %2632 ]
  %2663 = phi float [ %2653, %2649 ], [ %1983, %2632 ]
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 3
  %2667 = icmp eq i32 %2666, 3
  br i1 %2667, label %2746, label %2668

; <label>:2668                                    ; preds = %2657
  %2669 = and i32 %2665, 16
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %2285, float 0.000000e+00
  %2672 = icmp eq i32 %2666, 0
  br i1 %2672, label %2673, label %2701

; <label>:2673                                    ; preds = %2668
  %2674 = and i32 %2665, 64
  %2675 = icmp ne i32 %2674, 0
  %2676 = select i1 %2675, float %2285, float 0.000000e+00
  %2677 = fsub fast float %2505, %2661
  %2678 = fsub fast float %2506, %2662
  %2679 = fsub fast float %2507, %2663
  %2680 = fmul fast float %2671, %2677
  %2681 = fmul fast float %2671, %2678
  %2682 = fmul fast float %2671, %2679
  %2683 = fadd fast float %2680, %2661
  %2684 = fadd fast float %2681, %2662
  %2685 = fadd fast float %2682, %2663
  %2686 = fsub fast float %2491, %1984
  %2687 = fmul fast float %2671, %2686
  %2688 = fadd fast float %2687, %1984
  %2689 = fsub fast float %2633, %2658
  %2690 = fsub fast float %2634, %2659
  %2691 = fsub fast float %2635, %2660
  %2692 = fmul fast float %2676, %2689
  %2693 = fmul fast float %2676, %2690
  %2694 = fmul fast float %2676, %2691
  %2695 = fadd fast float %2692, %2658
  %2696 = fadd fast float %2693, %2659
  %2697 = fadd fast float %2694, %2660
  %2698 = fsub fast float %2648, %1987
  %2699 = fmul fast float %2671, %2698
  %2700 = fadd fast float %2699, %1987
  br label %2746

; <label>:2701                                    ; preds = %2668
  %2702 = icmp eq i32 %2666, 1
  br i1 %2702, label %2703, label %2716

; <label>:2703                                    ; preds = %2701
  %2704 = fadd fast float %2505, -1.000000e+00
  %2705 = fadd fast float %2506, -1.000000e+00
  %2706 = fadd fast float %2507, -1.000000e+00
  %2707 = fmul fast float %2671, %2704
  %2708 = fmul fast float %2671, %2705
  %2709 = fmul fast float %2671, %2706
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fmul fast float %2710, %2661
  %2714 = fmul fast float %2711, %2662
  %2715 = fmul fast float %2712, %2663
  br label %2746

; <label>:2716                                    ; preds = %2701
  %2717 = icmp eq i32 %2666, 2
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2716
  %2719 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %2506)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %2507)  ; Sqrt(value)
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fmul fast float %2722, %2671
  %2726 = fmul fast float %2723, %2671
  %2727 = fmul fast float %2724, %2671
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fsub fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2732, %2661
  %2734 = fadd fast float %2733, %2731
  %2735 = fmul fast float %2734, %2661
  %2736 = fmul fast float %2729, 2.000000e+00
  %2737 = fsub fast float 1.000000e+00, %2736
  %2738 = fmul fast float %2737, %2662
  %2739 = fadd fast float %2738, %2736
  %2740 = fmul fast float %2739, %2662
  %2741 = fmul fast float %2730, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2663
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2663
  br label %2746

; <label>:2746                                    ; preds = %2718, %2716, %2703, %2673, %2657
  %2747 = phi float [ %2658, %2657 ], [ %2658, %2718 ], [ %2658, %2716 ], [ %2658, %2703 ], [ %2695, %2673 ]
  %2748 = phi float [ %2659, %2657 ], [ %2659, %2718 ], [ %2659, %2716 ], [ %2659, %2703 ], [ %2696, %2673 ]
  %2749 = phi float [ %2660, %2657 ], [ %2660, %2718 ], [ %2660, %2716 ], [ %2660, %2703 ], [ %2697, %2673 ]
  %2750 = phi float [ %2661, %2657 ], [ %2735, %2718 ], [ %2661, %2716 ], [ %2713, %2703 ], [ %2683, %2673 ]
  %2751 = phi float [ %2662, %2657 ], [ %2740, %2718 ], [ %2662, %2716 ], [ %2714, %2703 ], [ %2684, %2673 ]
  %2752 = phi float [ %2663, %2657 ], [ %2745, %2718 ], [ %2663, %2716 ], [ %2715, %2703 ], [ %2685, %2673 ]
  %2753 = phi float [ %1984, %2657 ], [ %1984, %2718 ], [ %1984, %2716 ], [ %1984, %2703 ], [ %2688, %2673 ]
  %2754 = phi float [ %1987, %2657 ], [ %1987, %2718 ], [ %1987, %2716 ], [ %1987, %2703 ], [ %2700, %2673 ]
  %2755 = and i32 %2665, 12
  %2756 = icmp eq i32 %2755, 12
  br i1 %2756, label %2829, label %2757

; <label>:2757                                    ; preds = %2746
  %2758 = and i32 %2665, 2097184
  %2759 = icmp eq i32 %2758, 2097184
  %2760 = select i1 %2759, float %2285, float 0.000000e+00
  %2761 = and i32 %2665, 4194336
  %2762 = icmp eq i32 %2761, 4194336
  %2763 = select i1 %2762, float %2285, float 0.000000e+00
  %2764 = and i32 %2665, 8388640
  %2765 = icmp eq i32 %2764, 8388640
  %2766 = select i1 %2765, float %2285, float 0.000000e+00
  %2767 = icmp eq i32 %2755, 0
  br i1 %2767, label %2768, label %2781

; <label>:2768                                    ; preds = %2757
  %2769 = fsub fast float %2586, %1976
  %2770 = fsub fast float %2587, %1977
  %2771 = fmul fast float %2760, %2769
  %2772 = fmul fast float %2760, %2770
  %2773 = fadd fast float %2771, %1976
  %2774 = fadd fast float %2772, %1977
  %2775 = fsub fast float %2588, %1986
  %2776 = fmul fast float %2763, %2775
  %2777 = fadd fast float %2776, %1986
  %2778 = fsub fast float %2585, %1985
  %2779 = fmul fast float %2766, %2778
  %2780 = fadd fast float %2779, %1985
  br label %2829

; <label>:2781                                    ; preds = %2757
  %2782 = icmp eq i32 %2755, 4
  br i1 %2782, label %2783, label %2815

; <label>:2783                                    ; preds = %2781
  %2784 = fmul fast float %2760, %2586
  %2785 = fmul fast float %2760, %2587
  %2786 = fadd fast float %2784, %1976
  %2787 = fadd fast float %2785, %1977
  %2788 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2789 = fsub fast float %2788, %1986
  %2790 = fmul fast float %2789, %2763
  %2791 = fadd fast float %2790, %1986
  %2792 = fadd fast float %2585, %1985
  %2793 = fmul fast float %2792, 0x3FF337FAE0000000
  %2794 = fmul fast float %1985, %1985
  %2795 = fmul fast float %2585, %2585
  %2796 = fadd fast float %2795, %2794
  %2797 = fmul fast float %2796, 0x3FE5152B00000000
  %2798 = fmul fast float %1985, 0xBFCC1F85E0000000
  %2799 = fmul fast float %2798, %2585
  %2800 = fadd fast float %2799, 0xBFE1363700000000
  %2801 = fadd fast float %2800, %2793
  %2802 = fsub fast float %2801, %2797
  %2803 = fmul fast float %2792, 0x3FBA6F0D00000000
  %2804 = fmul fast float %2796, 0x3FD0432880000000
  %2805 = fmul fast float %1985, 0xBFEF110800000000
  %2806 = fmul fast float %2805, %2585
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fsub fast float %2807, %2803
  %2809 = fadd fast float %2808, %2804
  %2810 = fdiv fast float %2802, %2809
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2812 = fsub fast float %2811, %1985
  %2813 = fmul fast float %2812, %2766
  %2814 = fadd fast float %2813, %1985
  br label %2829

; <label>:2815                                    ; preds = %2781
  %2816 = icmp eq i32 %2755, 8
  br i1 %2816, label %2817, label %2829

; <label>:2817                                    ; preds = %2815
  %2818 = fmul fast float %2760, %2586
  %2819 = fmul fast float %2760, %2587
  %2820 = fadd fast float %2818, %1976
  %2821 = fadd fast float %2819, %1977
  %2822 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2823 = fsub fast float %2822, %1986
  %2824 = fmul fast float %2823, %2763
  %2825 = fadd fast float %2824, %1986
  %2826 = fsub fast float %2585, %1985
  %2827 = fmul fast float %2766, %2826
  %2828 = fadd fast float %2827, %1985
  br label %2829

; <label>:2829                                    ; preds = %2817, %2815, %2783, %2768, %2746, %2284, %1988, %1975
  %2830 = phi float [ %1976, %2746 ], [ %1976, %2284 ], [ %1976, %1975 ], [ %2820, %2817 ], [ %1976, %2815 ], [ %2786, %2783 ], [ %2773, %2768 ], [ %1976, %1988 ]
  %2831 = phi float [ %1977, %2746 ], [ %1977, %2284 ], [ %1977, %1975 ], [ %2821, %2817 ], [ %1977, %2815 ], [ %2787, %2783 ], [ %2774, %2768 ], [ %1977, %1988 ]
  %2832 = phi float [ %2747, %2746 ], [ %1978, %2284 ], [ %1978, %1975 ], [ %2747, %2817 ], [ %2747, %2815 ], [ %2747, %2783 ], [ %2747, %2768 ], [ %1978, %1988 ]
  %2833 = phi float [ %2748, %2746 ], [ %1979, %2284 ], [ %1979, %1975 ], [ %2748, %2817 ], [ %2748, %2815 ], [ %2748, %2783 ], [ %2748, %2768 ], [ %1979, %1988 ]
  %2834 = phi float [ %2749, %2746 ], [ %1980, %2284 ], [ %1980, %1975 ], [ %2749, %2817 ], [ %2749, %2815 ], [ %2749, %2783 ], [ %2749, %2768 ], [ %1980, %1988 ]
  %2835 = phi float [ %2750, %2746 ], [ %1981, %2284 ], [ %1981, %1975 ], [ %2750, %2817 ], [ %2750, %2815 ], [ %2750, %2783 ], [ %2750, %2768 ], [ %1981, %1988 ]
  %2836 = phi float [ %2751, %2746 ], [ %1982, %2284 ], [ %1982, %1975 ], [ %2751, %2817 ], [ %2751, %2815 ], [ %2751, %2783 ], [ %2751, %2768 ], [ %1982, %1988 ]
  %2837 = phi float [ %2752, %2746 ], [ %1983, %2284 ], [ %1983, %1975 ], [ %2752, %2817 ], [ %2752, %2815 ], [ %2752, %2783 ], [ %2752, %2768 ], [ %1983, %1988 ]
  %2838 = phi float [ %2753, %2746 ], [ %1984, %2284 ], [ %1984, %1975 ], [ %2753, %2817 ], [ %2753, %2815 ], [ %2753, %2783 ], [ %2753, %2768 ], [ %1984, %1988 ]
  %2839 = phi float [ %1985, %2746 ], [ %1985, %2284 ], [ %1985, %1975 ], [ %2828, %2817 ], [ %1985, %2815 ], [ %2814, %2783 ], [ %2780, %2768 ], [ %1985, %1988 ]
  %2840 = phi float [ %1986, %2746 ], [ %1986, %2284 ], [ %1986, %1975 ], [ %2825, %2817 ], [ %1986, %2815 ], [ %2791, %2783 ], [ %2777, %2768 ], [ %1986, %1988 ]
  %2841 = phi float [ %2754, %2746 ], [ %1987, %2284 ], [ %1987, %1975 ], [ %2754, %2817 ], [ %2754, %2815 ], [ %2754, %2783 ], [ %2754, %2768 ], [ %1987, %1988 ]
  br i1 %408, label %3683, label %2842

; <label>:2842                                    ; preds = %2829
  %2843 = icmp ult i32 %462, 4
  %2844 = add i32 %54, 72
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %54, 76
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = or i32 %2849, %2846
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %3683, label %2852

; <label>:2852                                    ; preds = %2842
  %2853 = and i32 %2846, 262144
  %2854 = icmp ne i32 %2853, 0
  %2855 = select i1 %2854, float %57, float 1.000000e+00
  %2856 = select i1 %2854, float %58, float 0.000000e+00
  %2857 = select i1 %2854, float %59, float 0.000000e+00
  %2858 = select i1 %2854, float %60, float 1.000000e+00
  %2859 = select i1 %2854, float %61, float %77
  %2860 = select i1 %2854, float %62, float %78
  %2861 = add i32 %54, 332
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 16
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = fmul fast float %2865, 0x3F50624DE0000000
  %2867 = add i32 %54, 136
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 16
  %2871 = and i32 %2870, 255
  %2872 = lshr i32 %2869, 24
  %2873 = add i32 %54, 340
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 65535
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = lshr i32 %2875, 16
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = add i32 %54, 80
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 22
  %2884 = shl nuw nsw i32 %2883, 5
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = shl i32 %2882, 4
  %2887 = and i32 %2886, 32752
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2882, 7
  %2890 = and i32 %2889, 32752
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2894 = fmul fast float %2893, 1.000000e+03
  %2895 = fmul fast float %398, %2894
  %2896 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2897 = fadd fast float %2896, %388
  %2898 = fmul fast float %399, %2894
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = fadd fast float %2899, %390
  %2901 = fmul fast float %2866, %2894
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = fmul fast float %2902, 0x401921FB60000000
  %2904 = fadd fast float %2903, %2885
  %2905 = call float @dx.op.unary.f32(i32 13, float %2904)  ; Sin(value)
  %2906 = call float @dx.op.unary.f32(i32 12, float %2904)  ; Cos(value)
  %2907 = fsub fast float -0.000000e+00, %2905
  %2908 = fadd fast float %2859, -5.000000e-01
  %2909 = fadd fast float %2860, -5.000000e-01
  %2910 = fmul fast float %2877, %2908
  %2911 = fmul fast float %2879, %2909
  %2912 = fadd fast float %2910, 5.000000e-01
  %2913 = fadd fast float %2911, 5.000000e-01
  %2914 = fmul fast float %2888, %2912
  %2915 = fmul fast float %2891, %2913
  %2916 = fmul fast float %2906, %2914
  %2917 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2915, float %2916)  ; FMad(a,b,c)
  %2918 = fmul fast float %2905, %2914
  %2919 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2915, float %2918)  ; FMad(a,b,c)
  %2920 = fadd fast float %2897, %2917
  %2921 = fadd fast float %2900, %2919
  %2922 = icmp ugt i32 %2871, 1
  %2923 = icmp ugt i32 %2869, 33554431
  %2924 = or i1 %2923, %2922
  br i1 %2924, label %2925, label %2950

; <label>:2925                                    ; preds = %2852
  %2926 = add i32 %54, 276
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = lshr i32 %2928, 16
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = fmul fast float %2893, %2930
  %2932 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2933 = mul nuw nsw i32 %2871, %2872
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2932, %2934
  %2936 = call float @dx.op.unary.f32(i32 27, float %2935)  ; Round_ni(value)
  %2937 = fptoui float %2936 to i32
  %2938 = urem i32 %2937, %2871
  %2939 = udiv i32 %2937, %2872
  %2940 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2941 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2942 = uitofp i32 %2938 to float
  %2943 = uitofp i32 %2939 to float
  %2944 = fadd fast float %2940, %2942
  %2945 = fadd fast float %2941, %2943
  %2946 = uitofp i32 %2871 to float
  %2947 = uitofp i32 %2872 to float
  %2948 = fdiv fast float %2944, %2946
  %2949 = fdiv fast float %2945, %2947
  br label %2950

; <label>:2950                                    ; preds = %2925, %2852
  %2951 = phi float [ %2948, %2925 ], [ %2920, %2852 ]
  %2952 = phi float [ %2949, %2925 ], [ %2921, %2852 ]
  %2953 = and i32 %2846, 16777216
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3064, label %2955

; <label>:2955                                    ; preds = %2950
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2960 = fadd fast float %2957, %158
  %2961 = fadd fast float %2958, %159
  %2962 = fadd fast float %2959, %160
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = icmp eq i32 %55, 65535
  br i1 %2966, label %3061, label %2967

; <label>:2967                                    ; preds = %2955
  %2968 = lshr i32 %55, 1
  %2969 = shl i32 %2968, 2
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %55, 1
  %2973 = icmp ne i32 %2972, 0
  %2974 = lshr i32 %2971, 16
  %2975 = and i32 %2971, 65535
  %2976 = select i1 %2973, i32 %2974, i32 %2975
  %2977 = icmp eq i32 %2976, 65535
  br i1 %2977, label %3057, label %2978

; <label>:2978                                    ; preds = %2967
  %2979 = mul nuw nsw i32 %2976, 40
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = add nuw nsw i32 %2979, 12
  %2985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = add nuw nsw i32 %2979, 24
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = add nuw nsw i32 %2979, 36
  %2995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = fsub fast float %2960, %2981
  %2998 = fsub fast float %2961, %2982
  %2999 = fsub fast float %2962, %2983
  %3000 = fmul fast float %2996, %2997
  %3001 = fmul fast float %2996, %2998
  %3002 = fmul fast float %2996, %2999
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = fadd fast float %3004, 5.000000e-01
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fmul fast float %3006, %2986
  %3010 = fmul fast float %3007, %2987
  %3011 = fmul fast float %3008, %2988
  %3012 = shl i32 %55, 2
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3014, 0
  %3016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3017 = call float @dx.op.unary.f32(i32 22, float %3009)  ; Frc(value)
  %3018 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3019 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3016, %dx.types.Handle %49, float %3017, float %3018, float %3019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3020, 2
  %3024 = fmul fast float %3021, 1.023000e+03
  %3025 = fmul fast float %3022, 1.023000e+03
  %3026 = fmul fast float %3023, 1.023000e+03
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = call float @dx.op.unary.f32(i32 27, float %3027)  ; Round_ni(value)
  %3031 = call float @dx.op.unary.f32(i32 27, float %3028)  ; Round_ni(value)
  %3032 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3033 = fsub fast float %3000, %3003
  %3034 = fsub fast float %3001, %3004
  %3035 = fsub fast float %3002, %3005
  %3036 = fmul fast float %3033, 7.500000e-01
  %3037 = fmul fast float %3034, 7.500000e-01
  %3038 = fmul fast float %3035, 7.500000e-01
  %3039 = fadd fast float %3003, 1.250000e-01
  %3040 = fadd fast float %3039, %3036
  %3041 = fadd fast float %3040, %3030
  %3042 = fadd fast float %3004, 1.250000e-01
  %3043 = fadd fast float %3042, %3037
  %3044 = fadd fast float %3043, %3031
  %3045 = fadd fast float %3005, 1.250000e-01
  %3046 = fadd fast float %3045, %3038
  %3047 = fadd fast float %3046, %3032
  %3048 = fmul fast float %3041, %2991
  %3049 = fmul fast float %3044, %2992
  %3050 = fmul fast float %3047, %2993
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = add i32 %3052, 0
  %3054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3054, %dx.types.Handle %47, float %3048, float %3049, float %3050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  br label %3057

; <label>:3057                                    ; preds = %2978, %2967
  %3058 = phi float [ %3056, %2978 ], [ -1.000000e+00, %2967 ]
  %3059 = fadd fast float %3058, %2965
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  br label %3061

; <label>:3061                                    ; preds = %3057, %2955
  %3062 = phi float [ %3060, %3057 ], [ %2965, %2955 ]
  %3063 = fmul fast float %3062, %457
  br label %3064

; <label>:3064                                    ; preds = %3061, %2950
  %3065 = phi float [ %3063, %3061 ], [ %457, %2950 ]
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 256
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3116, label %3070

; <label>:3070                                    ; preds = %3064
  %3071 = add i32 %54, 452
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = add i32 %54, 148
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = shl i32 %3080, 4
  %3082 = and i32 %3081, 32752
  %3083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3082)  ; LegacyF16ToF32(value)
  %3084 = lshr i32 %3080, 7
  %3085 = and i32 %3084, 32752
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = fsub fast float 1.000000e+00, %3065
  %3088 = call float @dx.op.binary.f32(i32 35, float %3087, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3089 = bitcast float %3065 to i32
  %3090 = sitofp i32 %3089 to float
  %3091 = fadd fast float %3090, 0xC1CFBF8940000000
  %3092 = fmul fast float %3086, %3091
  %3093 = fadd fast float %3092, 0x41CFBF8940000000
  %3094 = fptosi float %3093 to i32
  %3095 = bitcast i32 %3094 to float
  %3096 = bitcast float %3088 to i32
  %3097 = sitofp i32 %3096 to float
  %3098 = fadd fast float %3097, 0xC1CFBF8940000000
  %3099 = fmul fast float %3098, %3086
  %3100 = fadd fast float %3099, 0x41CFBF8940000000
  %3101 = fptosi float %3100 to i32
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3095, %3083
  %3104 = fmul fast float %3102, %3083
  %3105 = fsub fast float %3088, %3103
  %3106 = fadd fast float %3104, %3088
  %3107 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3109 = fsub fast float %3077, %3107
  %3110 = fsub fast float %3108, %3107
  %3111 = bitcast float %3110 to i32
  %3112 = sub nsw i32 2129859010, %3111
  %3113 = bitcast i32 %3112 to float
  %3114 = fmul fast float %3113, %3109
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  br label %3116

; <label>:3116                                    ; preds = %3070, %3064
  %3117 = phi float [ %3115, %3070 ], [ %3065, %3064 ]
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 128
  %3121 = icmp eq i32 %3120, 0
  br i1 %3121, label %3138, label %3122

; <label>:3122                                    ; preds = %3116
  %3123 = add i32 %54, 436
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = add i32 %3125, 0
  %3127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3127, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 524288
  %3133 = icmp ne i32 %3132, 0
  %3134 = fcmp fast ogt float %3129, 0x3FE0101020000000
  %3135 = select i1 %3134, float 1.000000e+00, float 0.000000e+00
  %3136 = select i1 %3133, float %3135, float %3129
  %3137 = fmul fast float %3136, %3117
  br label %3138

; <label>:3138                                    ; preds = %3122, %3116
  %3139 = phi float [ %3137, %3122 ], [ %3117, %3116 ]
  %3140 = fcmp fast ult float %3139, 0x3F70101020000000
  br i1 %3140, label %3683, label %3141

; <label>:3141                                    ; preds = %3138
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 16
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3344, label %3146

; <label>:3146                                    ; preds = %3141
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %54, 388
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.ResRet.f32 %3154, 2
  %3158 = extractvalue %dx.types.ResRet.f32 %3154, 3
  %3159 = and i32 %3148, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3148, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3158, %3160
  %3165 = fadd fast float %3164, %3163
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 512
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3179, label %3171

; <label>:3171                                    ; preds = %3146
  %3172 = add i32 %54, 468
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %3174, 0
  %3176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3176, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  br label %3179

; <label>:3179                                    ; preds = %3171, %3146
  %3180 = phi float [ %3178, %3171 ], [ 1.000000e+00, %3146 ]
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 33554432
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3291, label %3185

; <label>:3185                                    ; preds = %3179
  %3186 = add i32 %54, 272
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 65535
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = lshr i32 %3188, 16
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = add i32 %54, 276
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 24
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = and i32 %3199, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3199, 8
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3199, 16
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = add i32 %54, 268
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 24
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = and i32 %3216, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3216, 8
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = lshr i32 %3216, 16
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = bitcast float %3155 to i32
  %3232 = ashr i32 %3231, 1
  %3233 = sub nsw i32 1597463174, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3155, 5.000000e-01
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, %3235
  %3238 = fsub fast float 1.500000e+00, %3237
  %3239 = fmul fast float %3234, %3155
  %3240 = fmul fast float %3239, %3238
  %3241 = bitcast float %3156 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = sub nsw i32 1597463174, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3156, 5.000000e-01
  %3246 = fmul fast float %3244, %3244
  %3247 = fmul fast float %3246, %3245
  %3248 = fsub fast float 1.500000e+00, %3247
  %3249 = fmul fast float %3244, %3156
  %3250 = fmul fast float %3249, %3248
  %3251 = bitcast float %3157 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = sub nsw i32 1597463174, %3252
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3157, 5.000000e-01
  %3256 = fmul fast float %3254, %3254
  %3257 = fmul fast float %3256, %3255
  %3258 = fsub fast float 1.500000e+00, %3257
  %3259 = fmul fast float %3254, %3157
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float %3240, %3222
  %3262 = fsub fast float %3250, %3226
  %3263 = fsub fast float %3260, %3230
  %3264 = fmul fast float %3261, %3190
  %3265 = fmul fast float %3262, %3192
  %3266 = fmul fast float %3263, %3197
  %3267 = fadd fast float %3264, %3205
  %3268 = fadd fast float %3265, %3209
  %3269 = fadd fast float %3266, %3213
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3272 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3273 = fmul fast float %3270, %3270
  %3274 = fmul fast float %3271, %3271
  %3275 = fmul fast float %3272, %3272
  %3276 = fsub fast float %3273, %3155
  %3277 = fsub fast float %3274, %3156
  %3278 = fsub fast float %3275, %3157
  %3279 = fmul fast float %3276, %3180
  %3280 = fmul fast float %3277, %3180
  %3281 = fmul fast float %3278, %3180
  %3282 = fadd fast float %3279, %3155
  %3283 = fadd fast float %3280, %3156
  %3284 = fadd fast float %3281, %3157
  %3285 = fadd fast float %3202, %3166
  %3286 = fsub fast float %3285, %3219
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3288 = fsub fast float %3287, %3166
  %3289 = fmul fast float %3288, %3180
  %3290 = fadd fast float %3289, %3166
  br label %3344

; <label>:3291                                    ; preds = %3179
  %3292 = and i32 %3182, 134217728
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3328, label %3294

; <label>:3294                                    ; preds = %3291
  %3295 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3296 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3297 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3298 = fadd fast float %3295, -5.000000e-01
  %3299 = fadd fast float %3296, -5.000000e-01
  %3300 = fadd fast float %3297, -5.000000e-01
  %3301 = fmul fast float %3298, %3180
  %3302 = fmul fast float %3299, %3180
  %3303 = fmul fast float %3300, %3180
  %3304 = fadd fast float %3301, 5.000000e-01
  %3305 = fadd fast float %3302, 5.000000e-01
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = call float @dx.op.unary.f32(i32 24, float %3155)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3310 = fmul fast float %3304, 2.000000e+00
  %3311 = fsub fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3311, %3307
  %3313 = fadd fast float %3312, %3310
  %3314 = fmul fast float %3313, %3307
  %3315 = fmul fast float %3305, 2.000000e+00
  %3316 = fsub fast float 1.000000e+00, %3315
  %3317 = fmul fast float %3316, %3308
  %3318 = fadd fast float %3317, %3315
  %3319 = fmul fast float %3318, %3308
  %3320 = fmul fast float %3306, 2.000000e+00
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %3321, %3309
  %3323 = fadd fast float %3322, %3320
  %3324 = fmul fast float %3323, %3309
  %3325 = fmul fast float %3314, %3314
  %3326 = fmul fast float %3319, %3319
  %3327 = fmul fast float %3324, %3324
  br label %3344

; <label>:3328                                    ; preds = %3291
  %3329 = fmul fast float %375, %375
  %3330 = fmul fast float %379, %379
  %3331 = fmul fast float %383, %383
  %3332 = fadd fast float %3329, -1.000000e+00
  %3333 = fadd fast float %3330, -1.000000e+00
  %3334 = fadd fast float %3331, -1.000000e+00
  %3335 = fmul fast float %3180, %3332
  %3336 = fmul fast float %3180, %3333
  %3337 = fmul fast float %3180, %3334
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fmul fast float %3338, %3155
  %3342 = fmul fast float %3339, %3156
  %3343 = fmul fast float %3340, %3157
  br label %3344

; <label>:3344                                    ; preds = %3328, %3294, %3185, %3141
  %3345 = phi float [ %3290, %3185 ], [ %3166, %3294 ], [ %3166, %3328 ], [ 0x3FA23C0BE0000000, %3141 ]
  %3346 = phi float [ %3282, %3185 ], [ %3325, %3294 ], [ %3341, %3328 ], [ 1.000000e+00, %3141 ]
  %3347 = phi float [ %3283, %3185 ], [ %3326, %3294 ], [ %3342, %3328 ], [ 1.000000e+00, %3141 ]
  %3348 = phi float [ %3284, %3185 ], [ %3327, %3294 ], [ %3343, %3328 ], [ 1.000000e+00, %3141 ]
  %3349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.i32 %3349, 1
  %3351 = and i32 %3350, 1
  %3352 = icmp ne i32 %3351, 0
  %3353 = add i32 %54, 372
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 32
  %3357 = icmp ne i32 %3356, 0
  %3358 = and i1 %3352, %3357
  %3359 = select i1 %3358, float 1.000000e+00, float %3346
  %3360 = select i1 %3358, float 0x3FD3333340000000, float %3347
  %3361 = select i1 %3358, float 0x3FD3333340000000, float %3348
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 32
  %3365 = icmp eq i32 %3364, 0
  br i1 %3365, label %3438, label %3366

; <label>:3366                                    ; preds = %3344
  %3367 = add i32 %54, 140
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = add i32 %54, 404
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %3372, 0
  %3374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3374, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = and i32 %3369, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = lshr i32 %3369, 8
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = lshr i32 %3369, 16
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F70101000000000
  %3389 = fmul fast float %3376, %3381
  %3390 = fadd fast float %3389, %3384
  %3391 = fmul fast float %3390, 0x3F70101000000000
  %3392 = fadd fast float %3377, -5.000000e-01
  %3393 = fadd fast float %3379, -5.000000e-01
  %3394 = fmul fast float %3392, %3388
  %3395 = fmul fast float %3393, %3388
  %3396 = fadd fast float %3394, 5.000000e-01
  %3397 = fadd fast float %3395, 5.000000e-01
  %3398 = fmul fast float %3396, 2.000000e+00
  %3399 = fadd fast float %3398, -1.000000e+00
  %3400 = fmul fast float %3397, 2.000000e+00
  %3401 = fadd fast float %3400, -1.000000e+00
  %3402 = fadd fast float %3399, %3401
  %3403 = fmul fast float %3402, 5.000000e-01
  %3404 = fsub fast float %3399, %3401
  %3405 = fmul fast float %3404, 5.000000e-01
  %3406 = call float @dx.op.unary.f32(i32 6, float %3403)  ; FAbs(value)
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3409 = fsub fast float %3407, %3408
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3405, float %3409, float %3403, float %3405, float %3409)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = call float @dx.op.unary.f32(i32 25, float %3410)  ; Rsqrt(value)
  %3412 = fmul fast float %3403, %3411
  %3413 = fmul fast float %3405, %3411
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 67108864
  %3417 = icmp eq i32 %3416, 0
  br i1 %3417, label %3434, label %3418

; <label>:3418                                    ; preds = %3366
  %3419 = add i32 %54, 328
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = lshr i32 %3421, 16
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = fsub fast float %3391, %3429
  %3431 = fmul fast float %3430, %3423
  %3432 = fadd fast float %3431, %3427
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  br label %3434

; <label>:3434                                    ; preds = %3418, %3366
  %3435 = phi float [ %3433, %3418 ], [ %3391, %3366 ]
  %3436 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2855, float %2856)  ; Dot2(ax,ay,bx,by)
  %3437 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2857, float %2858)  ; Dot2(ax,ay,bx,by)
  br label %3438

; <label>:3438                                    ; preds = %3434, %3344
  %3439 = phi float [ %3435, %3434 ], [ 0x3FD6666660000000, %3344 ]
  %3440 = phi float [ %3436, %3434 ], [ 0.000000e+00, %3344 ]
  %3441 = phi float [ %3437, %3434 ], [ 0.000000e+00, %3344 ]
  %3442 = phi float [ %3378, %3434 ], [ 1.000000e+00, %3344 ]
  %3443 = add i32 %54, 208
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 22
  %3447 = shl nuw nsw i32 %3446, 5
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 64
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %3486, label %3453

; <label>:3453                                    ; preds = %3438
  %3454 = add i32 %54, 420
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = add i32 %3456, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 131072
  %3462 = icmp eq i32 %3461, 0
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3458, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = fmul fast float %3464, %363
  %3468 = fmul fast float %3465, %366
  %3469 = fmul fast float %3466, %369
  br i1 %3462, label %3476, label %3470

; <label>:3470                                    ; preds = %3453
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = fmul fast float %3472, %3467
  %3474 = fmul fast float %3472, %3468
  %3475 = fmul fast float %3472, %3469
  br label %3476

; <label>:3476                                    ; preds = %3470, %3453
  %3477 = phi float [ %3473, %3470 ], [ %3467, %3453 ]
  %3478 = phi float [ %3474, %3470 ], [ %3468, %3453 ]
  %3479 = phi float [ %3475, %3470 ], [ %3469, %3453 ]
  %3480 = fmul fast float %3477, %3448
  %3481 = select i1 %220, float %3480, float %3477
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3478, float %3479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = select i1 %220, float 0.000000e+00, float %3477
  %3484 = select i1 %220, float %3482, float %3478
  %3485 = select i1 %220, float 0.000000e+00, float %3479
  br label %3486

; <label>:3486                                    ; preds = %3476, %3438
  %3487 = phi float [ %3483, %3476 ], [ 0.000000e+00, %3438 ]
  %3488 = phi float [ %3484, %3476 ], [ 0.000000e+00, %3438 ]
  %3489 = phi float [ %3485, %3476 ], [ 0.000000e+00, %3438 ]
  %3490 = add i32 %54, 144
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3492, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3360, float %3361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = fmul fast float %3497, %3498
  %3500 = fadd fast float %3499, %3494
  %3501 = fmul fast float %3500, 0x3F70101020000000
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  br i1 %2843, label %3503, label %3511

; <label>:3503                                    ; preds = %3486
  %3504 = fsub fast float 1.000000e+00, %3139
  %3505 = fmul fast float %3504, %2835
  %3506 = fmul fast float %3504, %2836
  %3507 = fmul fast float %3504, %2837
  %3508 = fmul fast float %3504, %2832
  %3509 = fmul fast float %3504, %2833
  %3510 = fmul fast float %3504, %2834
  br label %3511

; <label>:3511                                    ; preds = %3503, %3486
  %3512 = phi float [ %3508, %3503 ], [ %2832, %3486 ]
  %3513 = phi float [ %3509, %3503 ], [ %2833, %3486 ]
  %3514 = phi float [ %3510, %3503 ], [ %2834, %3486 ]
  %3515 = phi float [ %3505, %3503 ], [ %2835, %3486 ]
  %3516 = phi float [ %3506, %3503 ], [ %2836, %3486 ]
  %3517 = phi float [ %3507, %3503 ], [ %2837, %3486 ]
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 3
  %3521 = icmp eq i32 %3520, 3
  br i1 %3521, label %3600, label %3522

; <label>:3522                                    ; preds = %3511
  %3523 = and i32 %3519, 16
  %3524 = icmp ne i32 %3523, 0
  %3525 = select i1 %3524, float %3139, float 0.000000e+00
  %3526 = icmp eq i32 %3520, 0
  br i1 %3526, label %3527, label %3555

; <label>:3527                                    ; preds = %3522
  %3528 = and i32 %3519, 64
  %3529 = icmp ne i32 %3528, 0
  %3530 = select i1 %3529, float %3139, float 0.000000e+00
  %3531 = fsub fast float %3359, %3515
  %3532 = fsub fast float %3360, %3516
  %3533 = fsub fast float %3361, %3517
  %3534 = fmul fast float %3525, %3531
  %3535 = fmul fast float %3525, %3532
  %3536 = fmul fast float %3525, %3533
  %3537 = fadd fast float %3534, %3515
  %3538 = fadd fast float %3535, %3516
  %3539 = fadd fast float %3536, %3517
  %3540 = fsub fast float %3345, %2838
  %3541 = fmul fast float %3525, %3540
  %3542 = fadd fast float %3541, %2838
  %3543 = fsub fast float %3487, %3512
  %3544 = fsub fast float %3488, %3513
  %3545 = fsub fast float %3489, %3514
  %3546 = fmul fast float %3530, %3543
  %3547 = fmul fast float %3530, %3544
  %3548 = fmul fast float %3530, %3545
  %3549 = fadd fast float %3546, %3512
  %3550 = fadd fast float %3547, %3513
  %3551 = fadd fast float %3548, %3514
  %3552 = fsub fast float %3502, %2841
  %3553 = fmul fast float %3525, %3552
  %3554 = fadd fast float %3553, %2841
  br label %3600

; <label>:3555                                    ; preds = %3522
  %3556 = icmp eq i32 %3520, 1
  br i1 %3556, label %3557, label %3570

; <label>:3557                                    ; preds = %3555
  %3558 = fadd fast float %3359, -1.000000e+00
  %3559 = fadd fast float %3360, -1.000000e+00
  %3560 = fadd fast float %3361, -1.000000e+00
  %3561 = fmul fast float %3525, %3558
  %3562 = fmul fast float %3525, %3559
  %3563 = fmul fast float %3525, %3560
  %3564 = fadd fast float %3561, 1.000000e+00
  %3565 = fadd fast float %3562, 1.000000e+00
  %3566 = fadd fast float %3563, 1.000000e+00
  %3567 = fmul fast float %3564, %3515
  %3568 = fmul fast float %3565, %3516
  %3569 = fmul fast float %3566, %3517
  br label %3600

; <label>:3570                                    ; preds = %3555
  %3571 = icmp eq i32 %3520, 2
  br i1 %3571, label %3572, label %3600

; <label>:3572                                    ; preds = %3570
  %3573 = call float @dx.op.unary.f32(i32 24, float %3359)  ; Sqrt(value)
  %3574 = call float @dx.op.unary.f32(i32 24, float %3360)  ; Sqrt(value)
  %3575 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3576 = fadd fast float %3573, -5.000000e-01
  %3577 = fadd fast float %3574, -5.000000e-01
  %3578 = fadd fast float %3575, -5.000000e-01
  %3579 = fmul fast float %3576, %3525
  %3580 = fmul fast float %3577, %3525
  %3581 = fmul fast float %3578, %3525
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = fadd fast float %3581, 5.000000e-01
  %3585 = fmul fast float %3582, 2.000000e+00
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3515
  %3588 = fadd fast float %3587, %3585
  %3589 = fmul fast float %3588, %3515
  %3590 = fmul fast float %3583, 2.000000e+00
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3591, %3516
  %3593 = fadd fast float %3592, %3590
  %3594 = fmul fast float %3593, %3516
  %3595 = fmul fast float %3584, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3517
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3517
  br label %3600

; <label>:3600                                    ; preds = %3572, %3570, %3557, %3527, %3511
  %3601 = phi float [ %3512, %3511 ], [ %3512, %3572 ], [ %3512, %3570 ], [ %3512, %3557 ], [ %3549, %3527 ]
  %3602 = phi float [ %3513, %3511 ], [ %3513, %3572 ], [ %3513, %3570 ], [ %3513, %3557 ], [ %3550, %3527 ]
  %3603 = phi float [ %3514, %3511 ], [ %3514, %3572 ], [ %3514, %3570 ], [ %3514, %3557 ], [ %3551, %3527 ]
  %3604 = phi float [ %3515, %3511 ], [ %3589, %3572 ], [ %3515, %3570 ], [ %3567, %3557 ], [ %3537, %3527 ]
  %3605 = phi float [ %3516, %3511 ], [ %3594, %3572 ], [ %3516, %3570 ], [ %3568, %3557 ], [ %3538, %3527 ]
  %3606 = phi float [ %3517, %3511 ], [ %3599, %3572 ], [ %3517, %3570 ], [ %3569, %3557 ], [ %3539, %3527 ]
  %3607 = phi float [ %2838, %3511 ], [ %2838, %3572 ], [ %2838, %3570 ], [ %2838, %3557 ], [ %3542, %3527 ]
  %3608 = phi float [ %2841, %3511 ], [ %2841, %3572 ], [ %2841, %3570 ], [ %2841, %3557 ], [ %3554, %3527 ]
  %3609 = and i32 %3519, 12
  %3610 = icmp eq i32 %3609, 12
  br i1 %3610, label %3683, label %3611

; <label>:3611                                    ; preds = %3600
  %3612 = and i32 %3519, 2097184
  %3613 = icmp eq i32 %3612, 2097184
  %3614 = select i1 %3613, float %3139, float 0.000000e+00
  %3615 = and i32 %3519, 4194336
  %3616 = icmp eq i32 %3615, 4194336
  %3617 = select i1 %3616, float %3139, float 0.000000e+00
  %3618 = and i32 %3519, 8388640
  %3619 = icmp eq i32 %3618, 8388640
  %3620 = select i1 %3619, float %3139, float 0.000000e+00
  %3621 = icmp eq i32 %3609, 0
  br i1 %3621, label %3622, label %3635

; <label>:3622                                    ; preds = %3611
  %3623 = fsub fast float %3440, %2830
  %3624 = fsub fast float %3441, %2831
  %3625 = fmul fast float %3614, %3623
  %3626 = fmul fast float %3614, %3624
  %3627 = fadd fast float %3625, %2830
  %3628 = fadd fast float %3626, %2831
  %3629 = fsub fast float %3442, %2840
  %3630 = fmul fast float %3617, %3629
  %3631 = fadd fast float %3630, %2840
  %3632 = fsub fast float %3439, %2839
  %3633 = fmul fast float %3620, %3632
  %3634 = fadd fast float %3633, %2839
  br label %3683

; <label>:3635                                    ; preds = %3611
  %3636 = icmp eq i32 %3609, 4
  br i1 %3636, label %3637, label %3669

; <label>:3637                                    ; preds = %3635
  %3638 = fmul fast float %3614, %3440
  %3639 = fmul fast float %3614, %3441
  %3640 = fadd fast float %3638, %2830
  %3641 = fadd fast float %3639, %2831
  %3642 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3643 = fsub fast float %3642, %2840
  %3644 = fmul fast float %3643, %3617
  %3645 = fadd fast float %3644, %2840
  %3646 = fadd fast float %3439, %2839
  %3647 = fmul fast float %3646, 0x3FF337FAE0000000
  %3648 = fmul fast float %2839, %2839
  %3649 = fmul fast float %3439, %3439
  %3650 = fadd fast float %3649, %3648
  %3651 = fmul fast float %3650, 0x3FE5152B00000000
  %3652 = fmul fast float %2839, 0xBFCC1F85E0000000
  %3653 = fmul fast float %3652, %3439
  %3654 = fadd fast float %3653, 0xBFE1363700000000
  %3655 = fadd fast float %3654, %3647
  %3656 = fsub fast float %3655, %3651
  %3657 = fmul fast float %3646, 0x3FBA6F0D00000000
  %3658 = fmul fast float %3650, 0x3FD0432880000000
  %3659 = fmul fast float %2839, 0xBFEF110800000000
  %3660 = fmul fast float %3659, %3439
  %3661 = fadd fast float %3660, 1.000000e+00
  %3662 = fsub fast float %3661, %3657
  %3663 = fadd fast float %3662, %3658
  %3664 = fdiv fast float %3656, %3663
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = fsub fast float %3665, %2839
  %3667 = fmul fast float %3666, %3620
  %3668 = fadd fast float %3667, %2839
  br label %3683

; <label>:3669                                    ; preds = %3635
  %3670 = icmp eq i32 %3609, 8
  br i1 %3670, label %3671, label %3683

; <label>:3671                                    ; preds = %3669
  %3672 = fmul fast float %3614, %3440
  %3673 = fmul fast float %3614, %3441
  %3674 = fadd fast float %3672, %2830
  %3675 = fadd fast float %3673, %2831
  %3676 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3677 = fsub fast float %3676, %2840
  %3678 = fmul fast float %3677, %3617
  %3679 = fadd fast float %3678, %2840
  %3680 = fsub fast float %3439, %2839
  %3681 = fmul fast float %3620, %3680
  %3682 = fadd fast float %3681, %2839
  br label %3683

; <label>:3683                                    ; preds = %3671, %3669, %3637, %3622, %3600, %3138, %2842, %2829
  %3684 = phi float [ %2830, %3600 ], [ %2830, %3138 ], [ %2830, %2829 ], [ %2830, %2842 ], [ %3627, %3622 ], [ %3640, %3637 ], [ %2830, %3669 ], [ %3674, %3671 ]
  %3685 = phi float [ %2831, %3600 ], [ %2831, %3138 ], [ %2831, %2829 ], [ %2831, %2842 ], [ %3628, %3622 ], [ %3641, %3637 ], [ %2831, %3669 ], [ %3675, %3671 ]
  %3686 = phi float [ %3601, %3600 ], [ %2832, %3138 ], [ %2832, %2829 ], [ %2832, %2842 ], [ %3601, %3622 ], [ %3601, %3637 ], [ %3601, %3669 ], [ %3601, %3671 ]
  %3687 = phi float [ %3602, %3600 ], [ %2833, %3138 ], [ %2833, %2829 ], [ %2833, %2842 ], [ %3602, %3622 ], [ %3602, %3637 ], [ %3602, %3669 ], [ %3602, %3671 ]
  %3688 = phi float [ %3603, %3600 ], [ %2834, %3138 ], [ %2834, %2829 ], [ %2834, %2842 ], [ %3603, %3622 ], [ %3603, %3637 ], [ %3603, %3669 ], [ %3603, %3671 ]
  %3689 = phi float [ %3604, %3600 ], [ %2835, %3138 ], [ %2835, %2829 ], [ %2835, %2842 ], [ %3604, %3622 ], [ %3604, %3637 ], [ %3604, %3669 ], [ %3604, %3671 ]
  %3690 = phi float [ %3605, %3600 ], [ %2836, %3138 ], [ %2836, %2829 ], [ %2836, %2842 ], [ %3605, %3622 ], [ %3605, %3637 ], [ %3605, %3669 ], [ %3605, %3671 ]
  %3691 = phi float [ %3606, %3600 ], [ %2837, %3138 ], [ %2837, %2829 ], [ %2837, %2842 ], [ %3606, %3622 ], [ %3606, %3637 ], [ %3606, %3669 ], [ %3606, %3671 ]
  %3692 = phi float [ %3607, %3600 ], [ %2838, %3138 ], [ %2838, %2829 ], [ %2838, %2842 ], [ %3607, %3622 ], [ %3607, %3637 ], [ %3607, %3669 ], [ %3607, %3671 ]
  %3693 = phi float [ %2839, %3600 ], [ %2839, %3138 ], [ %2839, %2829 ], [ %2839, %2842 ], [ %3634, %3622 ], [ %3668, %3637 ], [ %2839, %3669 ], [ %3682, %3671 ]
  %3694 = phi float [ %2840, %3600 ], [ %2840, %3138 ], [ %2840, %2829 ], [ %2840, %2842 ], [ %3631, %3622 ], [ %3645, %3637 ], [ %2840, %3669 ], [ %3679, %3671 ]
  %3695 = phi float [ %3608, %3600 ], [ %2841, %3138 ], [ %2841, %2829 ], [ %2841, %2842 ], [ %3608, %3622 ], [ %3608, %3637 ], [ %3608, %3669 ], [ %3608, %3671 ]
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = call float @dx.op.dot2.f32(i32 54, float %3684, float %3685, float %3684, float %3685)  ; Dot2(ax,ay,bx,by)
  %3699 = fmul fast float %3698, 0x3FE3333340000000
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3700, float %3684, float %3685, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3702, %3684
  %3704 = fmul fast float %3702, %3685
  %3705 = fmul fast float %3700, %3702
  %3706 = fmul fast float %3705, %102
  %3707 = fmul fast float %3705, %103
  %3708 = fmul fast float %3705, %104
  %3709 = fmul fast float %3703, %70
  %3710 = fmul fast float %3703, %71
  %3711 = fmul fast float %3703, %72
  %3712 = fadd fast float %3706, %3709
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3708, %3711
  %3715 = fmul fast float %114, %3704
  %3716 = fmul fast float %115, %3704
  %3717 = fmul fast float %116, %3704
  %3718 = fadd fast float %3712, %3715
  %3719 = fadd fast float %3713, %3716
  %3720 = fadd fast float %3714, %3717
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3718, float %3719, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.unary.f32(i32 25, float %3721)  ; Rsqrt(value)
  %3723 = fmul fast float %3718, %3722
  %3724 = fmul fast float %3719, %3722
  %3725 = fmul fast float %3720, %3722
  %3726 = and i32 %56, 1
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3728, label %4240

; <label>:3728                                    ; preds = %3683
  %3729 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3730 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3731 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3732 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3733 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3734 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3735 = fadd fast float %3729, %158
  %3736 = fadd fast float %3730, %159
  %3737 = fadd fast float %3731, %160
  %3738 = fadd fast float %3732, %158
  %3739 = fadd fast float %3733, %159
  %3740 = fadd fast float %3734, %160
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.CBufRet.f32 %3741, 2
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3748 = fmul fast float %3742, %95
  %3749 = fmul fast float %3748, %3746
  %3750 = fmul fast float %3743, %96
  %3751 = fmul fast float %3750, %3747
  %3752 = fptoui float %3749 to i32
  %3753 = fptoui float %3751 to i32
  %3754 = fadd fast float %3742, -1.000000e+00
  %3755 = fadd fast float %3743, -1.000000e+00
  %3756 = fptoui float %3754 to i32
  %3757 = fptoui float %3755 to i32
  %3758 = call i32 @dx.op.binary.i32(i32 40, i32 %3752, i32 %3756)  ; UMin(a,b)
  %3759 = call i32 @dx.op.binary.i32(i32 40, i32 %3753, i32 %3757)  ; UMin(a,b)
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3763 = fmul fast float %3761, %86
  %3764 = fsub fast float %3763, %3762
  %3765 = fadd fast float %3744, -1.000000e+00
  %3766 = call float @dx.op.binary.f32(i32 36, float %3764, float %3765)  ; FMin(a,b)
  %3767 = fptoui float %3766 to i32
  %3768 = fptoui float %3742 to i32
  %3769 = fptoui float %3743 to i32
  %3770 = mul i32 %3767, %3769
  %3771 = add i32 %3770, %3759
  %3772 = mul i32 %3771, %3768
  %3773 = add i32 %3772, %3758
  %3774 = shl i32 %3773, 2
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = and i32 %3776, 1023
  %3778 = lshr i32 %3776, 10
  %3779 = icmp eq i32 %3777, 0
  br i1 %3779, label %4208, label %3780

; <label>:3780                                    ; preds = %3728
  %3781 = and i32 %3776, 1023
  br label %3782

; <label>:3782                                    ; preds = %3909, %3780
  %3783 = phi i32 [ %3859, %3909 ], [ 0, %3780 ]
  %3784 = phi float [ %3910, %3909 ], [ 0.000000e+00, %3780 ]
  %3785 = phi float [ %3911, %3909 ], [ %1130, %3780 ]
  %3786 = phi float [ %3912, %3909 ], [ %3697, %3780 ]
  %3787 = phi float [ %3913, %3909 ], [ %3695, %3780 ]
  %3788 = phi float [ %3914, %3909 ], [ 0.000000e+00, %3780 ]
  %3789 = phi float [ %3915, %3909 ], [ 0.000000e+00, %3780 ]
  %3790 = phi float [ %3916, %3909 ], [ %3686, %3780 ]
  %3791 = phi float [ %3917, %3909 ], [ %3687, %3780 ]
  %3792 = phi float [ %3918, %3909 ], [ %3688, %3780 ]
  %3793 = phi float [ %3919, %3909 ], [ %3723, %3780 ]
  %3794 = phi float [ %3920, %3909 ], [ %3724, %3780 ]
  %3795 = phi float [ %3921, %3909 ], [ %3725, %3780 ]
  %3796 = phi float [ %3922, %3909 ], [ %3694, %3780 ]
  %3797 = phi float [ %3923, %3909 ], [ %3693, %3780 ]
  %3798 = phi float [ %3924, %3909 ], [ 0.000000e+00, %3780 ]
  %3799 = phi float [ %3925, %3909 ], [ %3692, %3780 ]
  %3800 = phi float [ %3926, %3909 ], [ %3689, %3780 ]
  %3801 = phi float [ %3927, %3909 ], [ %3690, %3780 ]
  %3802 = phi float [ %3928, %3909 ], [ %3691, %3780 ]
  %3803 = add nuw nsw i32 %3783, %3778
  %3804 = shl i32 %3803, 2
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = shl i32 %3806, 8
  %3808 = or i32 %3807, 48
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3814 = or i32 %3807, 64
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.i32 %3815, 1
  %3818 = or i32 %3807, 80
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3822 = or i32 %3807, 96
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = or i32 %3807, 112
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3831 = or i32 %3807, 128
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = or i32 %3807, 144
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3843 = or i32 %3807, 160
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3849 = or i32 %3807, 192
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = or i32 %3807, 208
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = or i32 %3807, 248
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = add nuw nsw i32 %3783, 1
  %3860 = bitcast float %3813 to i32
  %3861 = and i32 %3860, 512
  %3862 = icmp eq i32 %3861, 0
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3869 = or i32 %3807, 16
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = or i32 %3807, 32
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = extractvalue %dx.types.ResRet.f32 %3877, 1
  %3880 = extractvalue %dx.types.ResRet.f32 %3877, 2
  %3881 = extractvalue %dx.types.ResRet.f32 %3877, 3
  %3882 = call float @dx.op.dot4.f32(i32 56, float %3878, float %3879, float %3880, float %3881, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3883 = call float @dx.op.unary.f32(i32 27, float %3868)  ; Round_ni(value)
  %3884 = call float @dx.op.unary.f32(i32 6, float %3883)  ; FAbs(value)
  %3885 = call float @dx.op.unary.f32(i32 27, float %3875)  ; Round_ni(value)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3889 = fadd fast float %3886, %3884
  %3890 = fadd fast float %3889, %3888
  %3891 = fcmp fast oeq float %3890, 0.000000e+00
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %3735, float %3736, float %3737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3735, float %3736, float %3737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3895 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3896 = fsub fast float %3892, %3868
  %3897 = fsub fast float %3894, %3868
  %3898 = fsub fast float %3893, %3875
  %3899 = fsub fast float %3895, %3875
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3903 = fadd fast float %3902, %3900
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3906 = fcmp fast ogt float %3904, %3905
  %3907 = and i1 %3891, %3906
  %3908 = and i1 %3862, %3907
  br i1 %3908, label %3930, label %3909

; <label>:3909                                    ; preds = %4194, %4011, %3930, %3782
  %3910 = phi float [ %3784, %3930 ], [ %4014, %4011 ], [ %4014, %4194 ], [ %3784, %3782 ]
  %3911 = phi float [ %3785, %3930 ], [ %3785, %4011 ], [ %4169, %4194 ], [ %3785, %3782 ]
  %3912 = phi float [ %3786, %3930 ], [ %3786, %4011 ], [ %4168, %4194 ], [ %3786, %3782 ]
  %3913 = phi float [ %3787, %3930 ], [ %3787, %4011 ], [ %4166, %4194 ], [ %3787, %3782 ]
  %3914 = phi float [ %3788, %3930 ], [ %3788, %4011 ], [ %4138, %4194 ], [ %3788, %3782 ]
  %3915 = phi float [ %3789, %3930 ], [ %3789, %4011 ], [ %4136, %4194 ], [ %3789, %3782 ]
  %3916 = phi float [ %3790, %3930 ], [ %3790, %4011 ], [ %4204, %4194 ], [ %3790, %3782 ]
  %3917 = phi float [ %3791, %3930 ], [ %3791, %4011 ], [ %4205, %4194 ], [ %3791, %3782 ]
  %3918 = phi float [ %3792, %3930 ], [ %3792, %4011 ], [ %4206, %4194 ], [ %3792, %3782 ]
  %3919 = phi float [ %3793, %3930 ], [ %3793, %4011 ], [ %4117, %4194 ], [ %3793, %3782 ]
  %3920 = phi float [ %3794, %3930 ], [ %3794, %4011 ], [ %4118, %4194 ], [ %3794, %3782 ]
  %3921 = phi float [ %3795, %3930 ], [ %3795, %4011 ], [ %4119, %4194 ], [ %3795, %3782 ]
  %3922 = phi float [ %3796, %3930 ], [ %3796, %4011 ], [ %4146, %4194 ], [ %3796, %3782 ]
  %3923 = phi float [ %3797, %3930 ], [ %3797, %4011 ], [ %4143, %4194 ], [ %3797, %3782 ]
  %3924 = phi float [ %3798, %3930 ], [ %3798, %4011 ], [ %4140, %4194 ], [ %3798, %3782 ]
  %3925 = phi float [ %3799, %3930 ], [ %3799, %4011 ], [ %4134, %4194 ], [ %3799, %3782 ]
  %3926 = phi float [ %3800, %3930 ], [ %3800, %4011 ], [ %4129, %4194 ], [ %3800, %3782 ]
  %3927 = phi float [ %3801, %3930 ], [ %3801, %4011 ], [ %4130, %4194 ], [ %3801, %3782 ]
  %3928 = phi float [ %3802, %3930 ], [ %3802, %4011 ], [ %4131, %4194 ], [ %3802, %3782 ]
  %3929 = icmp eq i32 %3859, %3781
  br i1 %3929, label %4207, label %3782

; <label>:3930                                    ; preds = %3782
  %3931 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3932 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3936 = extractvalue %dx.types.ResRet.i32 %3815, 3
  %3937 = extractvalue %dx.types.ResRet.i32 %3815, 2
  %3938 = add i32 %3936, 0
  %3939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3939, %dx.types.Handle %3940, float %3868, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3896, float %3898, float undef, float %3897, float %3899, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = fmul fast float %3942, %3935
  %3944 = fadd fast float %3943, %3934
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3868, %3824
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3875, float %3946)  ; FMad(a,b,c)
  %3948 = fadd fast float %3947, %3933
  %3949 = fmul fast float %3868, %3826
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3875, float %3949)  ; FMad(a,b,c)
  %3951 = fadd fast float %3950, %3932
  %3952 = fmul fast float %3896, %3824
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3898, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3896, %3826
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3898, float %3954)  ; FMad(a,b,c)
  %3956 = fmul fast float %3897, %3824
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3825, float %3899, float %3956)  ; FMad(a,b,c)
  %3958 = fmul fast float %3897, %3826
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3899, float %3958)  ; FMad(a,b,c)
  %3960 = add i32 %3937, 0
  %3961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3961, %dx.types.Handle %3940, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = and i32 %3860, 1024
  %3965 = icmp ne i32 %3964, 0
  %3966 = fcmp fast ogt float %3963, 0x3FE0101020000000
  %3967 = uitofp i1 %3966 to float
  %3968 = select i1 %3965, float %3967, float %3963
  %3969 = and i32 %3860, 8192
  %3970 = icmp ne i32 %3969, 0
  %3971 = select i1 %3970, float %3931, float 1.000000e+00
  %3972 = fmul fast float %3868, 2.000000e+00
  %3973 = fadd fast float %3972, -1.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 6, float %3973)  ; FAbs(value)
  %3975 = fmul fast float %3974, %3857
  %3976 = fsub fast float %3975, %3857
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3875, 2.000000e+00
  %3979 = fadd fast float %3978, -1.000000e+00
  %3980 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3981 = fmul fast float %3980, %3858
  %3982 = fsub fast float %3981, %3858
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3887, %3820
  %3985 = fsub fast float %3984, %3820
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3945, %3971
  %3988 = fmul fast float %3987, %3942
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3989, %3968
  %3991 = fmul fast float %3990, %3983
  %3992 = fmul fast float %3991, %3986
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3996 = fsub fast float %3904, %3995
  %3997 = fmul fast float %3996, %3994
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3992, %3821
  %4000 = fadd fast float %3992, %3821
  %4001 = fmul fast float %4000, %3830
  %4002 = fsub fast float %4001, %3830
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = and i32 %3860, 128
  %4005 = icmp ne i32 %4004, 0
  %4006 = select i1 %4005, float %4003, float %3999
  %4007 = fmul fast float %4006, %3998
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = fcmp fast ugt float %4007, %4009
  br i1 %4010, label %4011, label %3909

; <label>:4011                                    ; preds = %3930
  %4012 = select i1 %3970, float %4007, float 0.000000e+00
  %4013 = fadd fast float %4012, %3784
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  br i1 %3970, label %3909, label %4015

; <label>:4015                                    ; preds = %4011
  %4016 = and i32 %3860, 4
  %4017 = and i32 %3860, 8
  %4018 = add i32 %3816, 0
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4019, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = bitcast float %3842 to i32
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = lshr i32 %4026, 8
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4025, %4028
  %4033 = fadd fast float %4032, %4031
  %4034 = fmul fast float %4033, 0x3F70101000000000
  %4035 = add i32 %3817, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4035, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4036, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = bitcast float %3836 to i32
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = lshr i32 %4042, 8
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4042, 16
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = fmul fast float %4050, 0x3F70101000000000
  %4052 = fmul fast float %4038, %4044
  %4053 = fadd fast float %4052, %4047
  %4054 = fmul fast float %4053, 0x3F70101000000000
  %4055 = fadd fast float %4039, -5.000000e-01
  %4056 = fadd fast float %4041, -5.000000e-01
  %4057 = fmul fast float %4055, %4051
  %4058 = fmul fast float %4056, %4051
  %4059 = fadd fast float %4057, 5.000000e-01
  %4060 = fadd fast float %4058, 5.000000e-01
  %4061 = fmul fast float %4022, %3845
  %4062 = fmul fast float %4023, %3846
  %4063 = fmul fast float %4024, %3847
  %4064 = fmul fast float %4059, 2.000000e+00
  %4065 = fadd fast float %4064, -1.000000e+00
  %4066 = fmul fast float %4060, 2.000000e+00
  %4067 = fadd fast float %4066, -1.000000e+00
  %4068 = fadd fast float %4065, %4067
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = fsub fast float %4065, %4067
  %4071 = fmul fast float %4070, 5.000000e-01
  %4072 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = call float @dx.op.unary.f32(i32 6, float %4071)  ; FAbs(value)
  %4075 = fsub fast float %4073, %4074
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4071, float %4075, float %4069, float %4071, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4069, %4077
  %4079 = fmul fast float %4071, %4077
  %4080 = fmul fast float %4077, %4075
  %4081 = fmul fast float %4080, %3810
  %4082 = fmul fast float %4080, %3811
  %4083 = fmul fast float %4080, %3812
  %4084 = fmul fast float %4078, %3833
  %4085 = fmul fast float %4078, %3834
  %4086 = fmul fast float %4078, %3835
  %4087 = fadd fast float %4084, %4081
  %4088 = fadd fast float %4085, %4082
  %4089 = fadd fast float %4086, %4083
  %4090 = fmul fast float %4079, %3839
  %4091 = fmul fast float %4079, %3840
  %4092 = fmul fast float %4079, %3841
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = fadd fast float %4089, %4092
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float %4093, float %4094, float %4095)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.unary.f32(i32 25, float %4096)  ; Rsqrt(value)
  %4098 = fmul fast float %4093, %4097
  %4099 = fmul fast float %4094, %4097
  %4100 = fmul fast float %4095, %4097
  %4101 = icmp ne i32 %4017, 0
  %4102 = select i1 %4101, float 1.000000e+00, float 0.000000e+00
  %4103 = fmul fast float %4007, %4102
  %4104 = and i32 %3860, 1
  %4105 = icmp eq i32 %4104, 0
  br i1 %4105, label %4106, label %4110

; <label>:4106                                    ; preds = %4015
  %4107 = fsub fast float %4098, %3793
  %4108 = fsub fast float %4099, %3794
  %4109 = fsub fast float %4100, %3795
  br label %4110

; <label>:4110                                    ; preds = %4106, %4015
  %4111 = phi float [ %4107, %4106 ], [ %4098, %4015 ]
  %4112 = phi float [ %4108, %4106 ], [ %4099, %4015 ]
  %4113 = phi float [ %4109, %4106 ], [ %4100, %4015 ]
  %4114 = fmul float %4113, %4103
  %4115 = fmul float %4112, %4103
  %4116 = fmul float %4111, %4103
  %4117 = fadd fast float %4116, %3793
  %4118 = fadd fast float %4115, %3794
  %4119 = fadd fast float %4114, %3795
  %4120 = icmp ne i32 %4016, 0
  %4121 = select i1 %4120, float 1.000000e+00, float 0.000000e+00
  %4122 = fmul fast float %4007, %4121
  %4123 = fsub fast float %4061, %3800
  %4124 = fsub fast float %4062, %3801
  %4125 = fsub fast float %4063, %3802
  %4126 = fmul fast float %4123, %4122
  %4127 = fmul fast float %4124, %4122
  %4128 = fmul fast float %4125, %4122
  %4129 = fadd fast float %4126, %3800
  %4130 = fadd fast float %4127, %3801
  %4131 = fadd fast float %4128, %3802
  %4132 = fsub fast float %4034, %3799
  %4133 = fmul fast float %4132, %4122
  %4134 = fadd fast float %4133, %3799
  %4135 = fmul fast float %4122, %3789
  %4136 = fsub fast float %3789, %4135
  %4137 = fmul fast float %4122, %3788
  %4138 = fsub fast float %3788, %4137
  %4139 = fadd fast float %4007, %3798
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = fsub fast float %4054, %3797
  %4142 = fmul fast float %4141, %4103
  %4143 = fadd fast float %4142, %3797
  %4144 = fsub fast float %4040, %3796
  %4145 = fmul fast float %4144, %4103
  %4146 = fadd fast float %4145, %3796
  %4147 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4151 = fmul fast float %4150, %4147
  %4152 = fadd fast float %4151, %4149
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = bitcast float %3848 to i32
  %4155 = and i32 %4154, 65535
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = lshr i32 %4154, 16
  %4158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4157)  ; LegacyF16ToF32(value)
  %4159 = fcmp fast oge float %4156, 0.000000e+00
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = select i1 %4159, float %4156, float %4161
  %4163 = fadd fast float %4162, %4158
  %4164 = fsub fast float %4153, %3787
  %4165 = fmul fast float %4164, %4007
  %4166 = fadd fast float %4165, %3787
  %4167 = fmul fast float %4163, %4007
  %4168 = call float @dx.op.binary.f32(i32 35, float %3786, float %4167)  ; FMax(a,b)
  %4169 = call float @dx.op.binary.f32(i32 35, float %3785, float %4007)  ; FMax(a,b)
  %4170 = and i32 %3860, 16
  %4171 = icmp eq i32 %4170, 0
  br i1 %4171, label %4194, label %4172

; <label>:4172                                    ; preds = %4110
  %4173 = bitcast float %3854 to i32
  %4174 = add i32 %3851, 0
  %4175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4174, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4175, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4180 = and i32 %4173, 65535
  %4181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4180)  ; LegacyF16ToF32(value)
  %4182 = fmul fast float %4177, %3845
  %4183 = fmul fast float %4178, %3846
  %4184 = fmul fast float %4179, %3847
  %4185 = and i32 %3860, 16384
  %4186 = icmp ne i32 %4185, 0
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = select i1 %4186, float %4188, float 1.000000e+00
  %4190 = fmul fast float %4189, %4181
  %4191 = fmul fast float %4182, %4190
  %4192 = fmul fast float %4183, %4190
  %4193 = fmul fast float %4184, %4190
  br label %4194

; <label>:4194                                    ; preds = %4172, %4110
  %4195 = phi float [ %4191, %4172 ], [ 0.000000e+00, %4110 ]
  %4196 = phi float [ %4192, %4172 ], [ 0.000000e+00, %4110 ]
  %4197 = phi float [ %4193, %4172 ], [ 0.000000e+00, %4110 ]
  %4198 = fsub fast float %4195, %3790
  %4199 = fsub fast float %4196, %3791
  %4200 = fsub fast float %4197, %3792
  %4201 = fmul fast float %4198, %4007
  %4202 = fmul fast float %4199, %4007
  %4203 = fmul fast float %4200, %4007
  %4204 = fadd fast float %4201, %3790
  %4205 = fadd fast float %4202, %3791
  %4206 = fadd fast float %4203, %3792
  br label %3909

; <label>:4207                                    ; preds = %3909
  br label %4208

; <label>:4208                                    ; preds = %4207, %3728
  %4209 = phi float [ 0.000000e+00, %3728 ], [ %3910, %4207 ]
  %4210 = phi float [ %1130, %3728 ], [ %3911, %4207 ]
  %4211 = phi float [ %3697, %3728 ], [ %3912, %4207 ]
  %4212 = phi float [ %3695, %3728 ], [ %3913, %4207 ]
  %4213 = phi float [ 0.000000e+00, %3728 ], [ %3914, %4207 ]
  %4214 = phi float [ 0.000000e+00, %3728 ], [ %3915, %4207 ]
  %4215 = phi float [ %3686, %3728 ], [ %3916, %4207 ]
  %4216 = phi float [ %3687, %3728 ], [ %3917, %4207 ]
  %4217 = phi float [ %3688, %3728 ], [ %3918, %4207 ]
  %4218 = phi float [ %3723, %3728 ], [ %3919, %4207 ]
  %4219 = phi float [ %3724, %3728 ], [ %3920, %4207 ]
  %4220 = phi float [ %3725, %3728 ], [ %3921, %4207 ]
  %4221 = phi float [ %3694, %3728 ], [ %3922, %4207 ]
  %4222 = phi float [ %3693, %3728 ], [ %3923, %4207 ]
  %4223 = phi float [ 0.000000e+00, %3728 ], [ %3924, %4207 ]
  %4224 = phi float [ %3692, %3728 ], [ %3925, %4207 ]
  %4225 = phi float [ %3689, %3728 ], [ %3926, %4207 ]
  %4226 = phi float [ %3690, %3728 ], [ %3927, %4207 ]
  %4227 = phi float [ %3691, %3728 ], [ %3928, %4207 ]
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %4218, float %4219, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 25, float %4228)  ; Rsqrt(value)
  %4230 = fmul fast float %4229, %4218
  %4231 = fmul fast float %4229, %4219
  %4232 = fmul fast float %4229, %4220
  %4233 = fadd fast float %4223, %1130
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float %4230, float %4231, float %4232)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 25, float %4235)  ; Rsqrt(value)
  %4237 = fmul fast float %4236, %4230
  %4238 = fmul fast float %4236, %4231
  %4239 = fmul fast float %4236, %4232
  br label %4240

; <label>:4240                                    ; preds = %4208, %3683
  %4241 = phi float [ %4237, %4208 ], [ %3723, %3683 ]
  %4242 = phi float [ %4238, %4208 ], [ %3724, %3683 ]
  %4243 = phi float [ %4239, %4208 ], [ %3725, %3683 ]
  %4244 = phi float [ %4225, %4208 ], [ %3689, %3683 ]
  %4245 = phi float [ %4226, %4208 ], [ %3690, %3683 ]
  %4246 = phi float [ %4227, %4208 ], [ %3691, %3683 ]
  %4247 = phi float [ %4215, %4208 ], [ %3686, %3683 ]
  %4248 = phi float [ %4216, %4208 ], [ %3687, %3683 ]
  %4249 = phi float [ %4217, %4208 ], [ %3688, %3683 ]
  %4250 = phi float [ %4224, %4208 ], [ %3692, %3683 ]
  %4251 = phi float [ %4234, %4208 ], [ %1130, %3683 ]
  %4252 = phi float [ %4222, %4208 ], [ %3693, %3683 ]
  %4253 = phi float [ %4221, %4208 ], [ %3694, %3683 ]
  %4254 = phi float [ %4214, %4208 ], [ 0.000000e+00, %3683 ]
  %4255 = phi float [ %4213, %4208 ], [ 0.000000e+00, %3683 ]
  %4256 = phi float [ %4209, %4208 ], [ 0.000000e+00, %3683 ]
  %4257 = phi float [ %4211, %4208 ], [ %3697, %3683 ]
  %4258 = phi float [ %4210, %4208 ], [ %1130, %3683 ]
  %4259 = phi float [ %4212, %4208 ], [ %3695, %3683 ]
  %4260 = fadd fast float %4250, 0xBFB99999A0000000
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4261, 0x3FF1C71C80000000
  %4263 = call float @dx.op.binary.f32(i32 36, float %4250, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4264 = fsub fast float 1.000000e+00, %4262
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4265, %4244
  %4267 = fmul fast float %4265, %4245
  %4268 = fmul fast float %4265, %4246
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = fmul fast float %4262, %4244
  %4273 = fmul fast float %4262, %4245
  %4274 = fmul fast float %4262, %4246
  %4275 = fadd fast float %4272, %4263
  %4276 = fadd fast float %4273, %4263
  %4277 = fadd fast float %4274, %4263
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.i32 %4282, 3
  %4284 = and i32 %4283, 8
  %4285 = icmp ne i32 %4284, 0
  %4286 = call float @dx.op.binary.f32(i32 35, float %4269, float %4244)  ; FMax(a,b)
  %4287 = call float @dx.op.binary.f32(i32 35, float %4270, float %4244)  ; FMax(a,b)
  %4288 = call float @dx.op.binary.f32(i32 35, float %4271, float %4244)  ; FMax(a,b)
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4269, float %4270, float %4271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = select i1 %220, float %4244, float %4269
  %4291 = select i1 %220, float %4289, float %4270
  %4292 = select i1 %220, float 1.000000e+00, float %4271
  %4293 = select i1 %4285, float %4286, float %4290
  %4294 = select i1 %4285, float %4287, float %4291
  %4295 = select i1 %4285, float %4288, float %4292
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4300 = fadd fast float %4297, %158
  %4301 = fadd fast float %4298, %159
  %4302 = fadd fast float %4299, %160
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = fsub fast float %4300, %4304
  %4307 = fsub fast float %4301, %4305
  %4308 = fmul fast float %4306, %4306
  %4309 = fmul fast float %4307, %4307
  %4310 = fadd fast float %4308, %4309
  %4311 = call float @dx.op.unary.f32(i32 24, float %4310)  ; Sqrt(value)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4313 = fcmp fast olt float %4311, %4312
  br i1 %4313, label %4314, label %4381

; <label>:4314                                    ; preds = %4240
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4325 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4327 = fadd fast float %4324, %4300
  %4328 = fadd fast float %4325, %4301
  %4329 = fadd fast float %4326, %4302
  %4330 = fmul fast float %4327, %4316
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4318, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4320, float %4331)  ; FMad(a,b,c)
  %4333 = fmul fast float %4327, %4321
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4322, float %4333)  ; FMad(a,b,c)
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4323, float %4334)  ; FMad(a,b,c)
  %4336 = fsub fast float %4332, %4324
  %4337 = fsub fast float %4335, %4325
  %4338 = fsub fast float %4336, %4304
  %4339 = fadd fast float %4338, %4312
  %4340 = fsub fast float %4337, %4305
  %4341 = fadd fast float %4340, %4312
  %4342 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4343 = fmul fast float %4339, %4342
  %4344 = fmul fast float %4341, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4347 = fsub fast float 1.000000e+00, %4345
  %4348 = fsub fast float 1.000000e+00, %4346
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = fcmp fast ugt float %4350, 0.000000e+00
  br i1 %4351, label %4352, label %4655

; <label>:4352                                    ; preds = %4314
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4350
  %4356 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4357 = fadd fast float %4356, %4355
  %4358 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4359 = fadd fast float %4357, %4326
  %4360 = fmul fast float %4332, %4320
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4323, float %4360)  ; FMad(a,b,c)
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4358, float %4361)  ; FMad(a,b,c)
  %4363 = fsub fast float %4362, %4326
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4366 = fsub fast float %4363, %4365
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = fadd fast float %4372, %4368
  %4376 = fmul fast float %4375, 0x3F847AE140000000
  %4377 = fadd fast float %4373, %4369
  %4378 = fmul fast float %4377, 0x3F847AE140000000
  %4379 = fadd fast float %4374, %4370
  %4380 = fmul fast float %4379, 0x3F847AE140000000
  br label %4655

; <label>:4381                                    ; preds = %4240
  %4382 = and i32 %196, 1
  %4383 = icmp eq i32 %4382, 0
  br i1 %4383, label %4655, label %4384

; <label>:4384                                    ; preds = %4381
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4392 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4394 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4395 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4396 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4397 = fadd fast float %4394, %4300
  %4398 = fadd fast float %4395, %4301
  %4399 = fadd fast float %4396, %4302
  %4400 = fmul fast float %4397, %4386
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4388, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4390, float %4401)  ; FMad(a,b,c)
  %4403 = fmul fast float %4397, %4391
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4392, float %4403)  ; FMad(a,b,c)
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4393, float %4404)  ; FMad(a,b,c)
  %4406 = fsub fast float %4402, %4394
  %4407 = fsub fast float %4405, %4395
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.i32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.i32 %4415, 1
  %4418 = udiv i32 %4417, %4416
  %4419 = fsub fast float %4406, %4409
  %4420 = fsub fast float %4407, %4410
  %4421 = call float @dx.op.binary.f32(i32 35, float %4419, float 0.000000e+00)  ; FMax(a,b)
  %4422 = call float @dx.op.binary.f32(i32 35, float %4420, float 0.000000e+00)  ; FMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 36, float %4421, float %4411)  ; FMin(a,b)
  %4424 = call float @dx.op.binary.f32(i32 36, float %4422, float %4412)  ; FMin(a,b)
  %4425 = add i32 %4416, -1
  %4426 = add i32 %4418, -1
  %4427 = fmul fast float %4423, %4414
  %4428 = fmul fast float %4424, %4414
  %4429 = fptoui float %4427 to i32
  %4430 = fptoui float %4428 to i32
  %4431 = call i32 @dx.op.binary.i32(i32 40, i32 %4429, i32 %4425)  ; UMin(a,b)
  %4432 = call i32 @dx.op.binary.i32(i32 40, i32 %4430, i32 %4426)  ; UMin(a,b)
  %4433 = mul i32 %4432, %4416
  %4434 = add i32 %4433, %4431
  %4435 = shl i32 %4434, 2
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = icmp eq i32 %4437, -1
  br i1 %4438, label %4655, label %4439

; <label>:4439                                    ; preds = %4384
  %4440 = mul i32 %4437, 148
  %4441 = add i32 %4440, 4
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = add i32 %4440, 8
  %4445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = add i32 %4440, 36
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = add i32 %4440, 60
  %4451 = add i32 %4440, 92
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = add i32 %4440, 116
  %4455 = fsub fast float %4406, %4443
  %4456 = fsub fast float %4407, %4446
  %4457 = fmul fast float %4414, %4455
  %4458 = fmul fast float %4414, %4456
  %4459 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4461 = fsub fast float 1.000000e+00, %4460
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4464 = call float @dx.op.unary.f32(i32 83, float %4459)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %4461)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %4459)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %4461)  ; DerivCoarseY(value)
  %4468 = fmul fast float %4464, %4463
  %4469 = fmul fast float %4465, %4463
  %4470 = fmul fast float %4466, %4463
  %4471 = fmul fast float %4467, %4463
  %4472 = call float @dx.op.dot2.f32(i32 54, float %4470, float %4471, float %4470, float %4471)  ; Dot2(ax,ay,bx,by)
  %4473 = call float @dx.op.dot2.f32(i32 54, float %4468, float %4469, float %4468, float %4469)  ; Dot2(ax,ay,bx,by)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4473, float %4472)  ; FMax(a,b)
  %4475 = call float @dx.op.unary.f32(i32 23, float %4474)  ; Log(value)
  %4476 = fmul fast float %4475, 5.000000e-01
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4479 = fadd fast float %4478, %4476
  %4480 = call float @dx.op.binary.f32(i32 35, float %4479, float 0.000000e+00)  ; FMax(a,b)
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4483 = fadd fast float %4482, %4480
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4486 = fadd fast float %4483, %4485
  %4487 = add i32 %4453, 0
  %4488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4487, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4489 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4488, i32 0)  ; GetDimensions(handle,mipLevel)
  %4490 = extractvalue %dx.types.Dimensions %4489, 0
  %4491 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4490)  ; FirstbitLo(value)
  %4492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.i32 %4492, 1
  %4494 = sub nsw i32 %4493, %4491
  %4495 = sitofp i32 %4494 to float
  %4496 = fsub fast float %4486, %4495
  %4497 = call float @dx.op.binary.f32(i32 35, float %4496, float 0.000000e+00)  ; FMax(a,b)
  %4498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4488, %dx.types.Handle %46, float %4459, float %4461, float %4449, float undef, i32 0, i32 0, i32 undef, float %4497)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = fcmp ule float %4499, 0x3FE0101020000000
  %4501 = extractvalue %dx.types.CBufRet.i32 %4492, 0
  %4502 = and i32 %4501, 128
  %4503 = icmp ne i32 %4502, 0
  %4504 = and i1 %4500, %4503
  br i1 %4504, label %4655, label %4505

; <label>:4505                                    ; preds = %4439
  %4506 = add i32 %4440, 20
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = add i32 %4440, 24
  %4510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = add i32 %4440, 40
  %4513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = add i32 %4440, 96
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4518, 2
  %4520 = fmul fast float %4519, %4459
  %4521 = fmul fast float %4519, %4461
  %4522 = extractvalue %dx.types.CBufRet.f32 %4518, 3
  %4523 = fadd fast float %4520, %4522
  %4524 = fadd fast float %4521, %4522
  %4525 = add i32 %4517, 0
  %4526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4525, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4527 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4526, i32 0)  ; GetDimensions(handle,mipLevel)
  %4528 = extractvalue %dx.types.Dimensions %4527, 0
  %4529 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4528)  ; FirstbitLo(value)
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 1
  %4532 = sub nsw i32 %4531, %4529
  %4533 = sitofp i32 %4532 to float
  %4534 = fsub fast float %4483, %4533
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float 0.000000e+00)  ; FMax(a,b)
  %4536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4526, %dx.types.Handle %46, float %4523, float %4524, float %4514, float undef, i32 0, i32 0, i32 undef, float %4535)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %4508
  %4539 = fadd fast float %4538, %4511
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.CBufRet.f32 %4540, 2
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4548 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4549 = fadd fast float %4545, %4406
  %4550 = fadd fast float %4547, %4407
  %4551 = fadd fast float %4539, %4548
  %4552 = fmul fast float %4549, %4541
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4542, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4543, float %4553)  ; FMad(a,b,c)
  %4555 = fsub fast float %4554, %4548
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4558 = fsub fast float %4555, %4557
  %4559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.i32 %4559, 0
  %4561 = call i32 @dx.op.binary.i32(i32 40, i32 %4437, i32 %4560)  ; UMin(a,b)
  %4562 = mul i32 %4561, 36
  %4563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.i32 %4563, 0
  %4565 = add i32 %4562, 4
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = fmul fast float %4567, %4459
  %4569 = fmul fast float %4567, %4461
  %4570 = extractvalue %dx.types.CBufRet.f32 %4566, 1
  %4571 = fadd fast float %4568, %4570
  %4572 = fadd fast float %4569, %4570
  %4573 = icmp eq i32 %4564, 0
  br i1 %4573, label %4642, label %4574

; <label>:4574                                    ; preds = %4505
  br label %4575

; <label>:4575                                    ; preds = %4632, %4574
  %4576 = phi float [ %4633, %4632 ], [ 0.000000e+00, %4574 ]
  %4577 = phi float [ %4634, %4632 ], [ 0.000000e+00, %4574 ]
  %4578 = phi float [ %4635, %4632 ], [ 0.000000e+00, %4574 ]
  %4579 = phi float [ %4636, %4632 ], [ 0.000000e+00, %4574 ]
  %4580 = phi float [ %4637, %4632 ], [ 0.000000e+00, %4574 ]
  %4581 = phi float [ %4638, %4632 ], [ 0.000000e+00, %4574 ]
  %4582 = phi i32 [ %4639, %4632 ], [ 0, %4574 ]
  %4583 = shl i32 %4582, 2
  %4584 = add i32 %4450, %4583
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = add i32 %4454, %4583
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = add i32 %4589, 0
  %4591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4590, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4592 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4591, i32 0)  ; GetDimensions(handle,mipLevel)
  %4593 = extractvalue %dx.types.Dimensions %4592, 0
  %4594 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4593)  ; FirstbitLo(value)
  %4595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.i32 %4595, 1
  %4597 = sub nsw i32 %4596, %4594
  %4598 = sitofp i32 %4597 to float
  %4599 = fsub fast float %4483, %4598
  %4600 = call float @dx.op.binary.f32(i32 35, float %4599, float 0.000000e+00)  ; FMax(a,b)
  %4601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4591, %dx.types.Handle %46, float %4571, float %4572, float %4586, float undef, i32 0, i32 0, i32 undef, float %4600)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = fcmp fast ogt float %4602, 0.000000e+00
  br i1 %4603, label %4604, label %4632

; <label>:4604                                    ; preds = %4575
  %4605 = add i32 %4565, %4583
  %4606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.i32 %4606, 0
  %4608 = and i32 %4607, 32767
  %4609 = mul nuw nsw i32 %4608, 928
  %4610 = add nuw nsw i32 %4609, 48
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = add nuw nsw i32 %4609, 60
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = fmul fast float %4612, %4602
  %4621 = fmul fast float %4613, %4602
  %4622 = fmul fast float %4614, %4602
  %4623 = fadd fast float %4620, %4576
  %4624 = fadd fast float %4621, %4577
  %4625 = fadd fast float %4622, %4578
  %4626 = fmul fast float %4617, %4602
  %4627 = fmul fast float %4618, %4602
  %4628 = fmul fast float %4619, %4602
  %4629 = fadd fast float %4626, %4579
  %4630 = fadd fast float %4627, %4580
  %4631 = fadd fast float %4628, %4581
  br label %4632

; <label>:4632                                    ; preds = %4604, %4575
  %4633 = phi float [ %4623, %4604 ], [ %4576, %4575 ]
  %4634 = phi float [ %4624, %4604 ], [ %4577, %4575 ]
  %4635 = phi float [ %4625, %4604 ], [ %4578, %4575 ]
  %4636 = phi float [ %4629, %4604 ], [ %4579, %4575 ]
  %4637 = phi float [ %4630, %4604 ], [ %4580, %4575 ]
  %4638 = phi float [ %4631, %4604 ], [ %4581, %4575 ]
  %4639 = add nuw i32 %4582, 1
  %4640 = icmp eq i32 %4639, %4564
  br i1 %4640, label %4641, label %4575

; <label>:4641                                    ; preds = %4632
  br label %4642

; <label>:4642                                    ; preds = %4641, %4505
  %4643 = phi float [ 0.000000e+00, %4505 ], [ %4633, %4641 ]
  %4644 = phi float [ 0.000000e+00, %4505 ], [ %4634, %4641 ]
  %4645 = phi float [ 0.000000e+00, %4505 ], [ %4635, %4641 ]
  %4646 = phi float [ 0.000000e+00, %4505 ], [ %4636, %4641 ]
  %4647 = phi float [ 0.000000e+00, %4505 ], [ %4637, %4641 ]
  %4648 = phi float [ 0.000000e+00, %4505 ], [ %4638, %4641 ]
  %4649 = fadd fast float %4646, %4643
  %4650 = fmul fast float %4649, 0x3F847AE140000000
  %4651 = fadd fast float %4647, %4644
  %4652 = fmul fast float %4651, 0x3F847AE140000000
  %4653 = fadd fast float %4648, %4645
  %4654 = fmul fast float %4653, 0x3F847AE140000000
  br label %4655

; <label>:4655                                    ; preds = %4642, %4439, %4384, %4381, %4352, %4314
  %4656 = phi float [ %4366, %4352 ], [ -1.310720e+05, %4314 ], [ %4558, %4642 ], [ -1.310720e+05, %4384 ], [ -1.310720e+05, %4439 ], [ -1.310720e+05, %4381 ]
  %4657 = phi float [ %4376, %4352 ], [ 0.000000e+00, %4314 ], [ %4650, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4658 = phi float [ %4378, %4352 ], [ 0.000000e+00, %4314 ], [ %4652, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4659 = phi float [ %4380, %4352 ], [ 0.000000e+00, %4314 ], [ %4654, %4642 ], [ 0.000000e+00, %4384 ], [ 0.000000e+00, %4439 ], [ 0.000000e+00, %4381 ]
  %4660 = phi i1 [ true, %4352 ], [ false, %4314 ], [ true, %4642 ], [ false, %4384 ], [ false, %4439 ], [ false, %4381 ]
  %4661 = and i32 %196, 3
  %4662 = icmp eq i32 %4661, 1
  %4663 = select i1 %4662, float 1.000000e+00, float 0.000000e+00
  %4664 = fsub fast float %4656, %160
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = select i1 %4660, float %4665, float 1.000000e+00
  %4667 = fmul fast float %4666, %4663
  %4668 = icmp eq i32 %4661, 3
  %4669 = select i1 %4668, float 1.000000e+00, float %4667
  %4670 = call float @dx.op.binary.f32(i32 35, float %4256, float %4669)  ; FMax(a,b)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fcmp fast une float %4671, 0.000000e+00
  %4673 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = call float @dx.op.unary.f32(i32 25, float %4673)  ; Rsqrt(value)
  br i1 %4672, label %4682, label %4675

; <label>:4675                                    ; preds = %4655
  %4676 = fmul fast float %4674, %158
  %4677 = fmul fast float %4674, %159
  %4678 = fmul fast float %4674, %160
  %4679 = fsub fast float -0.000000e+00, %4676
  %4680 = fsub fast float -0.000000e+00, %4677
  %4681 = fsub fast float -0.000000e+00, %4678
  br label %4850

; <label>:4682                                    ; preds = %4655
  %4683 = fmul fast float %158, %4674
  %4684 = fsub fast float -0.000000e+00, %4683
  %4685 = fmul fast float %159, %4674
  %4686 = fsub fast float -0.000000e+00, %4685
  %4687 = fmul fast float %160, %4674
  %4688 = fsub fast float -0.000000e+00, %4687
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4686, float %4688, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = fmul fast float %4671, 2.500000e+00
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fmul fast float %4671, 0x4013FFFFE0000000
  %4693 = fadd fast float %4692, 0xBFFFFFFFE0000000
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4671, 0x4004000020000000
  %4696 = fadd fast float %4695, 0xBFF8000040000000
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4699 = fmul fast float %4260, 1.000000e+01
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4700, 2.000000e+00
  %4702 = fsub fast float 3.000000e+00, %4701
  %4703 = fmul fast float %4700, %4700
  %4704 = fmul fast float %4703, %4702
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = fsub fast float 0x3FE3333340000000, %4281
  %4707 = fmul fast float %4706, 0x400AAAAAA0000000
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = fmul fast float %4705, %4708
  %4710 = fmul fast float %4293, 0x3FEA2B8620000000
  %4711 = fmul fast float %4294, 0x3FEA2B8620000000
  %4712 = fmul fast float %4295, 0x3FEA2B8620000000
  %4713 = fadd fast float %4710, 0x3FC81DFBA0000000
  %4714 = fmul fast float %4713, %4293
  %4715 = fadd fast float %4714, 0x3F910E6020000000
  %4716 = fadd fast float %4711, 0x3FC81DFBA0000000
  %4717 = fmul fast float %4716, %4294
  %4718 = fadd fast float %4717, 0x3F910E6020000000
  %4719 = fadd fast float %4712, 0x3FC81DFBA0000000
  %4720 = fmul fast float %4719, %4295
  %4721 = fadd fast float %4720, 0x3F910E6020000000
  %4722 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = fsub fast float %4722, %4293
  %4726 = fsub fast float %4723, %4294
  %4727 = fsub fast float %4724, %4295
  %4728 = fmul fast float %4725, %4698
  %4729 = fmul fast float %4728, %4709
  %4730 = fmul fast float %4726, %4698
  %4731 = fmul fast float %4730, %4709
  %4732 = fmul fast float %4727, %4698
  %4733 = fmul fast float %4732, %4709
  %4734 = fadd fast float %4729, %4293
  %4735 = fadd fast float %4731, %4294
  %4736 = fadd fast float %4733, %4295
  %4737 = fmul fast float %4253, %4253
  %4738 = fmul fast float %4737, %4737
  %4739 = fadd fast float %4694, 1.000000e+00
  %4740 = fsub fast float %4739, %4709
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fsub fast float 1.000000e+00, %4738
  %4745 = call float @dx.op.binary.f32(i32 36, float %4741, float %4744)  ; FMin(a,b)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4747 = call float @dx.op.binary.f32(i32 35, float %4745, float %4746)  ; FMax(a,b)
  %4748 = fadd fast float %4743, 0xBFE4CCCCC0000000
  %4749 = fmul fast float %4748, 0x4006DB6DA0000000
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4750, 2.000000e+00
  %4752 = fsub fast float 3.000000e+00, %4751
  %4753 = bitcast float %4278 to i32
  %4754 = ashr i32 %4753, 1
  %4755 = add nsw i32 %4754, 532487669
  %4756 = bitcast i32 %4755 to float
  %4757 = fsub fast float 1.000000e+00, %4756
  %4758 = bitcast float %4757 to i32
  %4759 = sub nsw i32 2129859010, %4758
  %4760 = bitcast i32 %4759 to float
  %4761 = fmul fast float %4760, 2.000000e+00
  %4762 = bitcast float %4279 to i32
  %4763 = ashr i32 %4762, 1
  %4764 = add nsw i32 %4763, 532487669
  %4765 = bitcast i32 %4764 to float
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4769, 2.000000e+00
  %4771 = bitcast float %4280 to i32
  %4772 = ashr i32 %4771, 1
  %4773 = add nsw i32 %4772, 532487669
  %4774 = bitcast i32 %4773 to float
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4778, 2.000000e+00
  %4780 = fsub fast float 0x4002A9FBE0000000, %4761
  %4781 = fadd fast float %4761, 0x3FD54FDF00000000
  %4782 = bitcast float %4781 to i32
  %4783 = sub nsw i32 2129859010, %4782
  %4784 = bitcast i32 %4783 to float
  %4785 = fmul fast float %4784, %4780
  %4786 = fmul fast float %4785, %4785
  %4787 = fsub fast float 0x4002A9FBE0000000, %4770
  %4788 = fadd fast float %4770, 0x3FD54FDF00000000
  %4789 = bitcast float %4788 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = fmul fast float %4791, %4787
  %4793 = fmul fast float %4792, %4792
  %4794 = fsub fast float 0x4002A9FBE0000000, %4779
  %4795 = fadd fast float %4779, 0x3FD54FDF00000000
  %4796 = bitcast float %4795 to i32
  %4797 = sub nsw i32 2129859010, %4796
  %4798 = bitcast i32 %4797 to float
  %4799 = fmul fast float %4798, %4794
  %4800 = fmul fast float %4799, %4799
  %4801 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4786)  ; FMax(a,b)
  %4802 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4793)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4800)  ; FMax(a,b)
  %4804 = fsub fast float 1.000000e+00, %4689
  %4805 = fadd fast float %4804, %4705
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fsub fast float 1.000000e+00, %4669
  %4808 = fmul fast float %4747, %4807
  %4809 = fmul fast float %4750, %4750
  %4810 = fmul fast float %4809, %4808
  %4811 = fmul fast float %4810, %4752
  %4812 = fmul fast float %4807, 0xBFE99999A0000000
  %4813 = fmul fast float %4812, %4698
  %4814 = fmul fast float %4813, %4709
  %4815 = fadd fast float %4814, 1.000000e+00
  %4816 = fadd fast float %4281, -1.000000e+00
  %4817 = fmul fast float %4815, %4816
  %4818 = fadd fast float %4817, 1.000000e+00
  %4819 = fsub fast float %4801, %4278
  %4820 = fsub fast float %4802, %4279
  %4821 = fsub fast float %4803, %4280
  %4822 = fmul fast float %4811, %4819
  %4823 = fmul fast float %4811, %4820
  %4824 = fmul fast float %4811, %4821
  %4825 = fadd fast float %4822, %4278
  %4826 = fadd fast float %4823, %4279
  %4827 = fadd fast float %4824, %4280
  %4828 = fsub fast float %102, %4241
  %4829 = fsub fast float %103, %4242
  %4830 = fsub fast float %104, %4243
  %4831 = fmul fast float %4811, %4828
  %4832 = fmul fast float %4811, %4829
  %4833 = fmul fast float %4811, %4830
  %4834 = fadd fast float %4831, %4241
  %4835 = fadd fast float %4832, %4242
  %4836 = fadd fast float %4833, %4243
  %4837 = fmul fast float %4811, %4806
  %4838 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = fmul fast float %4837, %4839
  %4841 = fadd fast float %4840, %4838
  %4842 = fsub fast float 1.000000e+00, %4253
  %4843 = fmul fast float %4811, %4842
  %4844 = fadd fast float %4843, %4253
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float %4834, float %4835, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4834, %4846
  %4848 = fmul fast float %4835, %4846
  %4849 = fmul fast float %4836, %4846
  br label %4850

; <label>:4850                                    ; preds = %4682, %4675
  %4851 = phi float [ %4681, %4675 ], [ %4688, %4682 ]
  %4852 = phi float [ %4680, %4675 ], [ %4686, %4682 ]
  %4853 = phi float [ %4679, %4675 ], [ %4684, %4682 ]
  %4854 = phi float [ %4678, %4675 ], [ %4687, %4682 ]
  %4855 = phi float [ %4677, %4675 ], [ %4685, %4682 ]
  %4856 = phi float [ %4676, %4675 ], [ %4683, %4682 ]
  %4857 = phi float [ %4278, %4675 ], [ %4825, %4682 ]
  %4858 = phi float [ %4279, %4675 ], [ %4826, %4682 ]
  %4859 = phi float [ %4280, %4675 ], [ %4827, %4682 ]
  %4860 = phi float [ %4293, %4675 ], [ %4734, %4682 ]
  %4861 = phi float [ %4294, %4675 ], [ %4735, %4682 ]
  %4862 = phi float [ %4295, %4675 ], [ %4736, %4682 ]
  %4863 = phi float [ %4241, %4675 ], [ %4847, %4682 ]
  %4864 = phi float [ %4242, %4675 ], [ %4848, %4682 ]
  %4865 = phi float [ %4243, %4675 ], [ %4849, %4682 ]
  %4866 = phi float [ %4281, %4675 ], [ %4841, %4682 ]
  %4867 = phi float [ %4253, %4675 ], [ %4844, %4682 ]
  %4868 = fsub fast float -0.000000e+00, %160
  %4869 = select i1 %220, float 0.000000e+00, float %4859
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %4853, float %4852, float %4851)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4856, float %4855, float %4854, float %4863, float %4864, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fmul fast float %4873, %4863
  %4875 = fmul fast float %4873, %4864
  %4876 = fmul fast float %4873, %4865
  %4877 = fsub fast float %4856, %4874
  %4878 = fsub fast float %4855, %4875
  %4879 = fsub fast float %4854, %4876
  %4880 = call float @dx.op.binary.f32(i32 36, float %4867, float 1.000000e+00)  ; FMin(a,b)
  %4881 = fsub fast float 1.000000e+00, %4867
  %4882 = bitcast float %4881 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = bitcast i32 %4883 to float
  %4885 = fsub fast float 1.000000e+00, %66
  %4886 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.binary.f32(i32 35, float %4886, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4888 = fdiv fast float %4885, %4887
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, 5.000000e-01
  %4892 = fadd fast float %4891, 5.000000e-01
  %4893 = fmul fast float %4892, %66
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, %4888
  %4897 = fadd fast float %4893, %4896
  %4898 = fsub fast float 5.000000e-01, %4891
  %4899 = fmul fast float %4898, %4860
  %4900 = fmul fast float %4898, %4861
  %4901 = fmul fast float %4898, %4862
  %4902 = fadd fast float %4897, %4899
  %4903 = fadd fast float %4897, %4900
  %4904 = fadd fast float %4897, %4901
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 5.000000e-01
  %4908 = fadd fast float %4907, 5.000000e-01
  %4909 = fmul fast float %4908, %66
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, %4888
  %4913 = fadd fast float %4909, %4912
  %4914 = fsub fast float 5.000000e-01, %4907
  %4915 = fmul fast float %4914, %4860
  %4916 = fmul fast float %4914, %4861
  %4917 = fmul fast float %4914, %4862
  %4918 = fadd fast float %4913, %4915
  %4919 = fadd fast float %4913, %4916
  %4920 = fadd fast float %4913, %4917
  %4921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4922 = extractvalue %dx.types.CBufRet.f32 %4921, 0
  %4923 = call float @dx.op.binary.f32(i32 36, float %4860, float %4922)  ; FMin(a,b)
  %4924 = fsub fast float 1.000000e+00, %4880
  %4925 = fmul fast float %4923, %4924
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = bitcast float %4926 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = call float @dx.op.binary.f32(i32 36, float %4861, float %4922)  ; FMin(a,b)
  %4931 = fmul fast float %4930, %4924
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = bitcast float %4932 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = call float @dx.op.binary.f32(i32 36, float %4862, float %4922)  ; FMin(a,b)
  %4937 = fmul fast float %4936, %4924
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4880, %67
  %4943 = fmul fast float %4942, %4902
  %4944 = fmul fast float %4943, %4929
  %4945 = fmul fast float %4880, %68
  %4946 = fmul fast float %4945, %4903
  %4947 = fmul fast float %4946, %4935
  %4948 = fmul fast float %4880, %69
  %4949 = fmul fast float %4948, %4904
  %4950 = fmul fast float %4949, %4941
  %4951 = call float @dx.op.binary.f32(i32 36, float %4857, float %4922)  ; FMin(a,b)
  %4952 = fmul fast float %4951, %4924
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = call float @dx.op.binary.f32(i32 36, float %4858, float %4922)  ; FMin(a,b)
  %4958 = fmul fast float %4957, %4924
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = call float @dx.op.binary.f32(i32 36, float %4869, float %4922)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4924
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4942, %4918
  %4970 = fmul fast float %4969, %4956
  %4971 = fmul fast float %4945, %4919
  %4972 = fmul fast float %4971, %4962
  %4973 = fmul fast float %4948, %4920
  %4974 = fmul fast float %4973, %4968
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4947, float %4950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = select i1 %220, float 0.000000e+00, float %4944
  %4977 = select i1 %220, float %4975, float %4947
  %4978 = select i1 %220, float 0.000000e+00, float %4950
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4972, float %4974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = select i1 %220, float 0.000000e+00, float %4970
  %4981 = select i1 %220, float %4979, float %4972
  %4982 = select i1 %220, float 0.000000e+00, float %4974
  %4983 = fmul fast float %4871, 9.843750e-01
  %4984 = fmul fast float %4866, 9.843750e-01
  %4985 = fadd fast float %4983, 7.812500e-03
  %4986 = fadd fast float %4984, 7.812500e-03
  %4987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %4985, float %4986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4988 = extractvalue %dx.types.ResRet.f32 %4987, 2
  %4989 = extractvalue %dx.types.ResRet.f32 %4987, 3
  %4990 = fmul fast float %4988, %4857
  %4991 = fmul fast float %4988, %4858
  %4992 = fmul fast float %4988, %4869
  %4993 = fadd fast float %4990, %4989
  %4994 = fadd fast float %4991, %4989
  %4995 = fadd fast float %4992, %4989
  %4996 = fcmp fast ogt float %4254, 0.000000e+00
  br i1 %4996, label %4997, label %5023

; <label>:4997                                    ; preds = %4850
  %4998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4254, float %4871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4999 = extractvalue %dx.types.ResRet.f32 %4998, 0
  %5000 = extractvalue %dx.types.ResRet.f32 %4998, 1
  %5001 = extractvalue %dx.types.ResRet.f32 %4998, 2
  %5002 = fadd fast float %4999, -5.000000e-01
  %5003 = fadd fast float %5000, -5.000000e-01
  %5004 = fadd fast float %5001, -5.000000e-01
  %5005 = fsub fast float 1.000000e+00, %4857
  %5006 = fsub fast float 1.000000e+00, %4858
  %5007 = fsub fast float 1.000000e+00, %4869
  %5008 = fmul fast float %4857, 4.000000e+00
  %5009 = fmul fast float %5008, %5005
  %5010 = fmul fast float %5009, %5002
  %5011 = fmul fast float %4858, 4.000000e+00
  %5012 = fmul fast float %5011, %5006
  %5013 = fmul fast float %5012, %5003
  %5014 = fmul fast float %4869, 4.000000e+00
  %5015 = fmul fast float %5014, %5007
  %5016 = fmul fast float %5015, %5004
  %5017 = fadd fast float %5010, %4993
  %5018 = fadd fast float %5013, %4994
  %5019 = fadd fast float %5016, %4995
  %5020 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  br label %5023

; <label>:5023                                    ; preds = %4997, %4850
  %5024 = phi float [ %5020, %4997 ], [ %4993, %4850 ]
  %5025 = phi float [ %5021, %4997 ], [ %4994, %4850 ]
  %5026 = phi float [ %5022, %4997 ], [ %4995, %4850 ]
  %5027 = call float @dx.op.binary.f32(i32 35, float %5025, float %5026)  ; FMax(a,b)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5024, float %5027)  ; FMax(a,b)
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = fmul fast float %5029, %4976
  %5031 = fmul fast float %5029, %4977
  %5032 = fmul fast float %5029, %4978
  %5033 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4861, float %4862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = fcmp fast ogt float %5033, 0x3E7FF19E20000000
  %5035 = fdiv fast float 1.000000e+00, %5033
  %5036 = select i1 %5034, float %5035, float 0.000000e+00
  %5037 = fmul fast float %5036, %4860
  %5038 = fmul fast float %5036, %4861
  %5039 = fmul fast float %5036, %4862
  %5040 = fadd fast float %5037, -1.000000e+00
  %5041 = fadd fast float %5038, -1.000000e+00
  %5042 = fadd fast float %5039, -1.000000e+00
  %5043 = fmul fast float %5040, 5.000000e-01
  %5044 = fmul fast float %5041, 5.000000e-01
  %5045 = fmul fast float %5042, 5.000000e-01
  %5046 = fadd fast float %5043, 1.000000e+00
  %5047 = fadd fast float %5044, 1.000000e+00
  %5048 = fadd fast float %5045, 1.000000e+00
  %5049 = fmul fast float %5024, %4980
  %5050 = fmul fast float %5025, %4981
  %5051 = fmul fast float %5026, %4982
  %5052 = fsub fast float 1.000000e+00, %4871
  %5053 = bitcast float %5052 to i32
  %5054 = sitofp i32 %5053 to float
  %5055 = fmul fast float %5054, 5.000000e+00
  %5056 = fadd fast float %5055, 0xC1EFBF8940000000
  %5057 = fptosi float %5056 to i32
  %5058 = bitcast i32 %5057 to float
  %5059 = fmul fast float %5058, %4255
  %5060 = fmul fast float %4976, %5059
  %5061 = fmul fast float %5060, %5029
  %5062 = fmul fast float %5061, %5046
  %5063 = fmul fast float %4977, %5059
  %5064 = fmul fast float %5063, %5029
  %5065 = fmul fast float %5064, %5047
  %5066 = fmul fast float %4978, %5059
  %5067 = fmul fast float %5066, %5029
  %5068 = fmul fast float %5067, %5048
  %5069 = fmul fast float %5030, %4251
  %5070 = fmul fast float %5031, %4251
  %5071 = fmul fast float %5032, %4251
  %5072 = fadd fast float %5049, %4247
  %5073 = fadd fast float %5072, %5062
  %5074 = fmul fast float %5073, %4251
  %5075 = fadd fast float %5050, %4248
  %5076 = fadd fast float %5075, %5065
  %5077 = fmul fast float %5076, %4251
  %5078 = fadd fast float %5051, %4249
  %5079 = fadd fast float %5078, %5068
  %5080 = fmul fast float %5079, %4251
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 3
  %5083 = fcmp fast oeq float %5082, 0.000000e+00
  br i1 %5083, label %6153, label %5084

; <label>:5084                                    ; preds = %5023
  %5085 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = select i1 %220, float %5093, float %5089
  %5097 = select i1 %220, float %5095, float %5090
  %5098 = select i1 %220, float %5094, float %5091
  %5099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5099, 2
  %5101 = fmul fast float %5100, %102
  %5102 = fmul fast float %5100, %103
  %5103 = fmul fast float %5100, %104
  %5104 = fadd fast float %5101, %158
  %5105 = fadd fast float %5102, %159
  %5106 = fadd fast float %5103, %160
  %5107 = fcmp fast olt float %5082, 0.000000e+00
  br i1 %5107, label %5732, label %5108

; <label>:5108                                    ; preds = %5084
  %5109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.CBufRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.CBufRet.f32 %5109, 2
  %5113 = extractvalue %dx.types.CBufRet.f32 %5109, 3
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5118 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5123 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5124 = fmul fast float %5110, %5104
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5111, float %5124)  ; FMad(a,b,c)
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5112, float %5125)  ; FMad(a,b,c)
  %5127 = fadd fast float %5126, %5113
  %5128 = fmul fast float %5115, %5104
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5116, float %5128)  ; FMad(a,b,c)
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5117, float %5129)  ; FMad(a,b,c)
  %5131 = fadd fast float %5130, %5118
  %5132 = fmul fast float %5120, %5104
  %5133 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5121, float %5132)  ; FMad(a,b,c)
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5122, float %5133)  ; FMad(a,b,c)
  %5135 = fadd fast float %5134, %5123
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5139 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5140 = fmul fast float %5139, %5127
  %5141 = fmul fast float %5139, %5131
  %5142 = fadd fast float %5140, %5137
  %5143 = fadd fast float %5141, %5138
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.CBufRet.f32 %5144, 3
  %5148 = fmul fast float %5147, %5127
  %5149 = fmul fast float %5147, %5131
  %5150 = fadd fast float %5148, %5145
  %5151 = fadd fast float %5149, %5146
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5154 = fsub fast float %5153, %5135
  %5155 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5156 = fmul fast float %5154, %5155
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5162 = fadd fast float %5161, %5159
  %5163 = fcmp fast ogt float %5162, 0.000000e+00
  br i1 %5163, label %5164, label %5188

; <label>:5164                                    ; preds = %5108
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5168 = fsub fast float %5150, %5166
  %5169 = fsub fast float %5151, %5167
  %5170 = fcmp fast olt float %5168, 0.000000e+00
  %5171 = fcmp fast olt float %5169, 0.000000e+00
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5176 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5177 = select i1 %5170, float %5173, float %5175
  %5178 = select i1 %5171, float %5174, float %5176
  %5179 = fmul fast float %5177, %5168
  %5180 = fmul fast float %5178, %5169
  %5181 = call float @dx.op.unary.f32(i32 6, float %5179)  ; FAbs(value)
  %5182 = call float @dx.op.unary.f32(i32 6, float %5180)  ; FAbs(value)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  %5184 = call float @dx.op.binary.f32(i32 35, float %5181, float %5182)  ; FMax(a,b)
  %5185 = fsub fast float %5183, %5184
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5186, %5158
  br label %5188

; <label>:5188                                    ; preds = %5164, %5108
  %5189 = phi float [ %5187, %5164 ], [ 0.000000e+00, %5108 ]
  %5190 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5191 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5192 = fadd fast float %5191, %5190
  %5193 = fcmp fast ogt float %5192, 0.000000e+00
  %5194 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  br i1 %5193, label %5195, label %5218

; <label>:5195                                    ; preds = %5188
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5199 = fsub fast float %5142, %5197
  %5200 = fsub fast float %5143, %5198
  %5201 = fcmp fast olt float %5199, 0.000000e+00
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5208 = select i1 %5201, float %5204, float %5206
  %5209 = select i1 %5202, float %5205, float %5207
  %5210 = fmul fast float %5208, %5199
  %5211 = fmul fast float %5209, %5200
  %5212 = call float @dx.op.unary.f32(i32 6, float %5210)  ; FAbs(value)
  %5213 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5214 = call float @dx.op.binary.f32(i32 35, float %5212, float %5213)  ; FMax(a,b)
  %5215 = fsub fast float %5194, %5214
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fmul fast float %5216, %5158
  br label %5218

; <label>:5218                                    ; preds = %5195, %5188
  %5219 = phi float [ %5217, %5195 ], [ 0.000000e+00, %5188 ]
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %5222 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = fsub fast float %5127, %5224
  %5227 = fsub fast float %5131, %5225
  %5228 = fcmp fast olt float %5226, 0.000000e+00
  %5229 = fcmp fast olt float %5227, 0.000000e+00
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5234 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5235 = select i1 %5228, float %5231, float %5233
  %5236 = select i1 %5229, float %5232, float %5234
  %5237 = fmul fast float %5235, %5226
  %5238 = fmul fast float %5236, %5227
  %5239 = call float @dx.op.unary.f32(i32 6, float %5237)  ; FAbs(value)
  %5240 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5239, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float %5194, %5241
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = call float @dx.op.binary.f32(i32 36, float %5243, float %5222)  ; FMin(a,b)
  %5245 = fmul fast float %5244, %5158
  %5246 = fsub fast float %5219, %5245
  %5247 = fsub fast float %5189, %5219
  %5248 = fsub fast float %5247, %5245
  %5249 = call float @dx.op.binary.f32(i32 35, float %5219, float %5189)  ; FMax(a,b)
  %5250 = call float @dx.op.binary.f32(i32 35, float %5245, float %5249)  ; FMax(a,b)
  %5251 = fcmp fast olt float %5250, 1.000000e+00
  br i1 %5251, label %5252, label %5650, !dx.controlflow.hints !91

; <label>:5252                                    ; preds = %5218
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = fcmp fast une float %5254, 0.000000e+00
  br i1 %5255, label %5256, label %5650, !dx.controlflow.hints !92

; <label>:5256                                    ; preds = %5252
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.CBufRet.f32 %5267, 1
  %5270 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5271 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5272 = fmul fast float %5258, %5104
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5259, float %5272)  ; FMad(a,b,c)
  %5274 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5260, float %5273)  ; FMad(a,b,c)
  %5275 = fadd fast float %5274, %5261
  %5276 = fmul fast float %5263, %5104
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5264, float %5276)  ; FMad(a,b,c)
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5265, float %5277)  ; FMad(a,b,c)
  %5279 = fadd fast float %5278, %5266
  %5280 = fmul fast float %5268, %5104
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5269, float %5280)  ; FMad(a,b,c)
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5270, float %5281)  ; FMad(a,b,c)
  %5283 = fadd fast float %5282, %5271
  %5284 = fcmp fast oge float %5275, 1.000000e+00
  %5285 = fcmp fast oge float %5279, 1.000000e+00
  %5286 = or i1 %5284, %5285
  %5287 = fcmp fast olt float %5275, 0.000000e+00
  %5288 = fcmp fast olt float %5279, 0.000000e+00
  %5289 = or i1 %5287, %5288
  %5290 = or i1 %5286, %5289
  br i1 %5290, label %5650, label %5291, !dx.controlflow.hints !93

; <label>:5291                                    ; preds = %5256
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 2
  %5298 = uitofp i32 %5297 to float
  %5299 = extractvalue %dx.types.CBufRet.i32 %5296, 3
  %5300 = uitofp i32 %5299 to float
  %5301 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5302 = fmul fast float %5301, 2.000000e+00
  %5303 = fsub fast float %5275, %5293
  %5304 = fsub fast float %5279, %5294
  %5305 = fmul fast float %5302, %5303
  %5306 = fmul fast float %5302, %5304
  %5307 = fdiv fast float 1.000000e+00, %5087
  %5308 = fmul fast float %5306, %5307
  %5309 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5310 = fmul fast float %5295, %5106
  %5311 = fmul fast float %5310, %5302
  %5312 = call float @dx.op.unary.f32(i32 6, float %5311)  ; FAbs(value)
  %5313 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5312, float %5309)  ; FMax(a,b)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5313, float %5314)  ; FMax(a,b)
  %5316 = fmul fast float %5315, 2.000000e+00
  %5317 = call float @dx.op.unary.f32(i32 23, float %5316)  ; Log(value)
  %5318 = call float @dx.op.binary.f32(i32 35, float %5317, float %5298)  ; FMax(a,b)
  %5319 = call float @dx.op.unary.f32(i32 22, float %5318)  ; Frc(value)
  %5320 = fadd fast float %5319, 0xBFEA666660000000
  %5321 = fmul fast float %5320, 8.000000e+00
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = call float @dx.op.unary.f32(i32 27, float %5318)  ; Round_ni(value)
  %5324 = fadd fast float %5323, %5322
  %5325 = call float @dx.op.binary.f32(i32 36, float %5324, float %5300)  ; FMin(a,b)
  %5326 = call float @dx.op.unary.f32(i32 27, float %5325)  ; Round_ni(value)
  %5327 = fsub fast float -0.000000e+00, %5326
  %5328 = call float @dx.op.unary.f32(i32 21, float %5327)  ; Exp(value)
  %5329 = fmul fast float %5328, %5302
  %5330 = fmul fast float %5329, %5275
  %5331 = fmul fast float %5329, %5279
  %5332 = fmul fast float %5330, 2.500000e-01
  %5333 = fmul fast float %5331, 2.500000e-01
  %5334 = fadd fast float %5332, 5.000000e-01
  %5335 = fadd fast float %5333, 5.000000e-01
  %5336 = fsub fast float %5300, %5298
  %5337 = fptoui float %5336 to i32
  %5338 = add i32 %5337, 320
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5338)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = fcmp fast une float %5325, %5300
  %5343 = fsub fast float %5275, %5340
  %5344 = fsub fast float %5279, %5341
  %5345 = call float @dx.op.unary.f32(i32 6, float %5343)  ; FAbs(value)
  %5346 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5347 = fmul fast float %5345, %5329
  %5348 = fmul fast float %5346, %5329
  %5349 = fcmp fast olt float %5347, 1.000000e+00
  %5350 = fcmp fast olt float %5348, 1.000000e+00
  %5351 = and i1 %5349, %5350
  %5352 = or i1 %5342, %5351
  br i1 %5352, label %5353, label %5650, !dx.controlflow.hints !94

; <label>:5353                                    ; preds = %5291
  %5354 = fmul fast float %5331, 5.000000e-01
  %5355 = fmul fast float %5330, 5.000000e-01
  %5356 = fadd fast float %5354, 5.000000e-01
  %5357 = fadd fast float %5355, 5.000000e-01
  %5358 = sitofp i32 %5297 to float
  %5359 = fsub fast float %5325, %5358
  %5360 = call float @dx.op.unary.f32(i32 27, float %5359)  ; Round_ni(value)
  %5361 = call float @dx.op.unary.f32(i32 22, float %5325)  ; Frc(value)
  %5362 = call float @dx.op.unary.f32(i32 22, float %5357)  ; Frc(value)
  %5363 = call float @dx.op.unary.f32(i32 22, float %5356)  ; Frc(value)
  %5364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5362, float %5363, float %5360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.ResRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.ResRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.ResRet.f32 %5364, 3
  %5369 = fcmp fast ogt float %5361, 0.000000e+00
  br i1 %5369, label %5370, label %5391, !dx.controlflow.hints !95

; <label>:5370                                    ; preds = %5353
  %5371 = fadd fast float %5360, 1.000000e+00
  %5372 = call float @dx.op.unary.f32(i32 22, float %5334)  ; Frc(value)
  %5373 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  %5374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5372, float %5373, float %5371, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.ResRet.f32 %5374, 3
  %5379 = fsub fast float %5375, %5365
  %5380 = fsub fast float %5376, %5366
  %5381 = fsub fast float %5377, %5367
  %5382 = fsub fast float %5378, %5368
  %5383 = fmul fast float %5379, %5361
  %5384 = fmul fast float %5380, %5361
  %5385 = fmul fast float %5381, %5361
  %5386 = fmul fast float %5382, %5361
  %5387 = fadd fast float %5383, %5365
  %5388 = fadd fast float %5384, %5366
  %5389 = fadd fast float %5385, %5367
  %5390 = fadd fast float %5386, %5368
  br label %5391

; <label>:5391                                    ; preds = %5370, %5353
  %5392 = phi float [ %5387, %5370 ], [ %5365, %5353 ]
  %5393 = phi float [ %5388, %5370 ], [ %5366, %5353 ]
  %5394 = phi float [ %5389, %5370 ], [ %5367, %5353 ]
  %5395 = phi float [ %5390, %5370 ], [ %5368, %5353 ]
  %5396 = fadd fast float %5392, -5.000000e-01
  %5397 = fadd fast float %5394, -5.000000e-01
  %5398 = fmul fast float %5396, 0xBFD5555560000000
  %5399 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5397, float %5398)  ; FMad(a,b,c)
  %5400 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5393, float 0.000000e+00)  ; FMad(a,b,c)
  %5401 = fadd fast float %5400, %5395
  %5402 = fmul fast float %5396, -7.500000e-01
  %5403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5397, float %5402)  ; FMad(a,b,c)
  %5404 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5393, float 0.000000e+00)  ; FMad(a,b,c)
  %5405 = fadd fast float %5404, %5395
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5412 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5413 = fsub fast float %5409, %5399
  %5414 = fsub fast float %5410, %5401
  %5415 = fsub fast float %5411, %5403
  %5416 = fsub fast float %5412, %5405
  %5417 = fmul fast float %5413, %5407
  %5418 = fmul fast float %5414, %5407
  %5419 = fmul fast float %5415, %5407
  %5420 = fmul fast float %5416, %5407
  %5421 = fadd fast float %5417, %5399
  %5422 = fadd fast float %5418, %5401
  %5423 = fadd fast float %5419, %5403
  %5424 = fadd fast float %5420, %5405
  %5425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.i32 %5425, 0
  %5427 = and i32 %5426, 536870911
  %5428 = uitofp i32 %5427 to float
  %5429 = fmul fast float %5428, %5275
  %5430 = fmul fast float %5428, %5279
  %5431 = fptoui float %5429 to i32
  %5432 = fptoui float %5430 to i32
  %5433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5434 = extractvalue %dx.types.ResRet.i32 %5433, 0
  %5435 = and i32 %5434, 31
  %5436 = lshr i32 %5431, %5435
  %5437 = lshr i32 %5432, %5435
  %5438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.i32 %5438, 0
  %5440 = and i32 %5439, 31
  %5441 = shl i32 1, %5440
  %5442 = call i32 @dx.op.binary.i32(i32 40, i32 %5441, i32 4)  ; UMin(a,b)
  %5443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.i32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.i32 %5443, 1
  %5446 = icmp eq i32 %5442, 0
  br i1 %5446, label %5488, label %5447

; <label>:5447                                    ; preds = %5391
  br label %5448

; <label>:5448                                    ; preds = %5476, %5447
  %5449 = phi i32 [ %5479, %5476 ], [ 0, %5447 ]
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = lshr i32 %5451, 16
  %5453 = and i32 %5452, 31
  %5454 = shl i32 %5437, %5453
  %5455 = add i32 %5454, %5436
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = and i32 %5457, 31
  %5459 = shl i32 %5455, %5458
  %5460 = add i32 %5459, %5449
  %5461 = shl i32 %5460, 2
  %5462 = add i32 %5461, 32
  %5463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.i32 %5463, 0
  %5465 = icmp slt i32 %5464, 0
  %5466 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5449
  %5467 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5449
  %5468 = bitcast float* %5466 to i32*
  %5469 = bitcast float* %5467 to i32*
  br i1 %5465, label %5470, label %5476

; <label>:5470                                    ; preds = %5448
  %5471 = and i32 %5464, 1073741823
  %5472 = add nuw nsw i32 %5471, 20
  %5473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.i32 %5473, 0
  %5475 = extractvalue %dx.types.ResRet.i32 %5473, 1
  br label %5476

; <label>:5476                                    ; preds = %5470, %5448
  %5477 = phi i32 [ %5474, %5470 ], [ %5444, %5448 ]
  %5478 = phi i32 [ %5475, %5470 ], [ %5445, %5448 ]
  store i32 %5477, i32* %5468, align 4
  store i32 %5478, i32* %5469, align 4
  %5479 = add nuw i32 %5449, 1
  %5480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.i32 %5480, 2
  %5482 = icmp eq i32 %5481, 0
  %5483 = icmp ugt i32 %5464, -1073741825
  %5484 = and i1 %5483, %5482
  %5485 = icmp ult i32 %5479, %5442
  %5486 = and i1 %5484, %5485
  br i1 %5486, label %5448, label %5487

; <label>:5487                                    ; preds = %5476
  br label %5488

; <label>:5488                                    ; preds = %5487, %5391
  %5489 = phi i32 [ 0, %5391 ], [ %5479, %5487 ]
  %5490 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5491 = fptoui float %5490 to i32
  %5492 = icmp eq i32 %5491, 0
  br i1 %5492, label %5544, label %5493

; <label>:5493                                    ; preds = %5488
  br label %5494

; <label>:5494                                    ; preds = %5539, %5493
  %5495 = phi i32 [ %5540, %5539 ], [ %5489, %5493 ]
  %5496 = phi i32 [ %5541, %5539 ], [ 0, %5493 ]
  %5497 = lshr i32 %5496, 2
  %5498 = and i32 %5496, 3
  %5499 = add nuw nsw i32 %5497, 83
  %5500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5499)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.i32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.i32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.i32 %5500, 2
  %5504 = extractvalue %dx.types.CBufRet.i32 %5500, 3
  %5505 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5501, i32* %5505, align 4
  %5506 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5502, i32* %5506, align 4
  %5507 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5503, i32* %5507, align 4
  %5508 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5504, i32* %5508, align 4
  %5509 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5498
  %5510 = load i32, i32* %5509, align 4, !tbaa !96, !noalias !100
  %5511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.i32 %5511, 0
  %5513 = lshr i32 %5512, 16
  %5514 = and i32 %5513, 31
  %5515 = shl i32 %5437, %5514
  %5516 = add i32 %5515, %5436
  %5517 = shl i32 %5516, 2
  %5518 = add i32 %5517, %5510
  %5519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5518, i32 undef)  ; BufferLoad(srv,index,wot)
  %5520 = extractvalue %dx.types.ResRet.i32 %5519, 0
  %5521 = icmp eq i32 %5520, 0
  br i1 %5521, label %5539, label %5522

; <label>:5522                                    ; preds = %5494
  %5523 = icmp slt i32 %5520, 0
  %5524 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5495
  %5525 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5495
  %5526 = bitcast float* %5524 to i32*
  %5527 = bitcast float* %5525 to i32*
  br i1 %5523, label %5528, label %5535

; <label>:5528                                    ; preds = %5522
  %5529 = and i32 %5520, 1073741823
  %5530 = add i32 %5510, 20
  %5531 = add i32 %5530, %5529
  %5532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5531, i32 undef)  ; BufferLoad(srv,index,wot)
  %5533 = extractvalue %dx.types.ResRet.i32 %5532, 0
  %5534 = extractvalue %dx.types.ResRet.i32 %5532, 1
  br label %5535

; <label>:5535                                    ; preds = %5528, %5522
  %5536 = phi i32 [ %5533, %5528 ], [ %5444, %5522 ]
  %5537 = phi i32 [ %5534, %5528 ], [ %5445, %5522 ]
  store i32 %5536, i32* %5526, align 4
  store i32 %5537, i32* %5527, align 4
  %5538 = add i32 %5495, 1
  br label %5539

; <label>:5539                                    ; preds = %5535, %5494
  %5540 = phi i32 [ %5495, %5494 ], [ %5538, %5535 ]
  %5541 = add nuw i32 %5496, 1
  %5542 = icmp eq i32 %5541, %5491
  br i1 %5542, label %5543, label %5494

; <label>:5543                                    ; preds = %5539
  br label %5544

; <label>:5544                                    ; preds = %5543, %5488
  %5545 = phi i32 [ %5489, %5488 ], [ %5540, %5543 ]
  %5546 = icmp eq i32 %5545, 1
  %5547 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5548 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5546, label %5549, label %5552

; <label>:5549                                    ; preds = %5544
  %5550 = load float, float* %5547, align 4
  %5551 = load float, float* %5548, align 4
  br label %5579

; <label>:5552                                    ; preds = %5544
  %5553 = load float, float* %5547, align 4
  %5554 = load float, float* %5548, align 4
  %5555 = fdiv fast float 1.000000e+00, %5554
  %5556 = fsub fast float %5553, %5555
  %5557 = icmp ugt i32 %5545, 1
  br i1 %5557, label %5558, label %5574

; <label>:5558                                    ; preds = %5552
  br label %5559

; <label>:5559                                    ; preds = %5559, %5558
  %5560 = phi float [ %5569, %5559 ], [ %5556, %5558 ]
  %5561 = phi float [ %5570, %5559 ], [ %5553, %5558 ]
  %5562 = phi i32 [ %5571, %5559 ], [ 1, %5558 ]
  %5563 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5562
  %5564 = load float, float* %5563, align 4
  %5565 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5562
  %5566 = load float, float* %5565, align 4
  %5567 = fdiv fast float 1.000000e+00, %5566
  %5568 = fsub fast float %5564, %5567
  %5569 = call float @dx.op.binary.f32(i32 36, float %5560, float %5568)  ; FMin(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5561, float %5564)  ; FMax(a,b)
  %5571 = add nuw i32 %5562, 1
  %5572 = icmp eq i32 %5571, %5545
  br i1 %5572, label %5573, label %5559

; <label>:5573                                    ; preds = %5559
  br label %5574

; <label>:5574                                    ; preds = %5573, %5552
  %5575 = phi float [ %5556, %5552 ], [ %5569, %5573 ]
  %5576 = phi float [ %5553, %5552 ], [ %5570, %5573 ]
  %5577 = fsub fast float %5576, %5575
  %5578 = fdiv fast float 1.000000e+00, %5577
  br label %5579

; <label>:5579                                    ; preds = %5574, %5549
  %5580 = phi float [ %5550, %5549 ], [ %5576, %5574 ]
  %5581 = phi float [ %5551, %5549 ], [ %5578, %5574 ]
  %5582 = fadd fast float %5283, %5580
  %5583 = fmul fast float %5582, %5581
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = fmul fast float %5584, 2.000000e+00
  %5586 = fsub fast float 1.000000e+00, %5585
  %5587 = fmul fast float %5421, %5421
  %5588 = fsub fast float %5422, %5587
  %5589 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5588)  ; FMax(a,b)
  %5590 = fdiv fast float 1.000000e+00, %5589
  %5591 = fmul fast float %5422, %5421
  %5592 = fsub fast float %5423, %5591
  %5593 = fsub fast float %5586, %5421
  %5594 = fmul fast float %5586, %5586
  %5595 = fsub fast float %5594, %5422
  %5596 = fmul fast float %5590, %5592
  %5597 = fmul fast float %5596, %5593
  %5598 = fsub fast float %5595, %5597
  %5599 = fmul fast float %5422, %5422
  %5600 = fsub fast float %5424, %5599
  %5601 = fmul fast float %5592, %5592
  %5602 = fmul fast float %5601, %5590
  %5603 = fsub fast float %5600, %5602
  %5604 = fdiv fast float %5598, %5603
  %5605 = fmul fast float %5604, %5592
  %5606 = fsub fast float %5593, %5605
  %5607 = fmul fast float %5606, %5590
  %5608 = fmul fast float %5607, %5421
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = fmul fast float %5604, %5422
  %5611 = fsub fast float %5609, %5610
  %5612 = fmul fast float %5607, %5607
  %5613 = fmul fast float %5604, 4.000000e+00
  %5614 = fmul fast float %5613, %5611
  %5615 = fsub fast float %5612, %5614
  %5616 = call float @dx.op.unary.f32(i32 24, float %5615)  ; Sqrt(value)
  %5617 = fcmp fast oge float %5607, 0.000000e+00
  %5618 = fsub fast float -0.000000e+00, %5616
  %5619 = select i1 %5617, float %5618, float %5616
  %5620 = fsub fast float %5619, %5607
  %5621 = fdiv fast float %5620, %5604
  %5622 = fdiv fast float %5611, %5620
  %5623 = fmul fast float %5621, 5.000000e-01
  %5624 = fmul fast float %5622, 2.000000e+00
  %5625 = select i1 %5617, float %5623, float %5624
  %5626 = select i1 %5617, float %5624, float %5623
  %5627 = call float @dx.op.binary.f32(i32 35, float %5625, float %5626)  ; FMax(a,b)
  %5628 = call float @dx.op.binary.f32(i32 36, float %5625, float %5626)  ; FMin(a,b)
  %5629 = fcmp fast ogt float %5586, %5627
  %5630 = fsub fast float %5586, %5628
  %5631 = fsub fast float %5586, %5627
  %5632 = fsub fast float %5627, %5628
  %5633 = select i1 %5629, float %5631, float %5632
  %5634 = fmul float %5630, %5633
  %5635 = select i1 %5629, float %5628, float %5586
  %5636 = fcmp fast ogt float %5586, %5628
  %5637 = fmul fast float %5635, %5627
  %5638 = fadd fast float %5635, %5627
  %5639 = fmul fast float %5638, %5421
  %5640 = fadd fast float %5637, %5422
  %5641 = fsub fast float %5640, %5639
  %5642 = fdiv fast float %5641, %5634
  %5643 = select i1 %5636, float %5642, float 0.000000e+00
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = select i1 %5629, float %5644, float %5643
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5648 = fmul fast float %5647, %5646
  %5649 = fsub fast float 1.000000e+00, %5648
  br label %5650

; <label>:5650                                    ; preds = %5579, %5291, %5256, %5252, %5218
  %5651 = phi float [ 1.000000e+00, %5218 ], [ %5649, %5579 ], [ 1.000000e+00, %5256 ], [ 1.000000e+00, %5291 ], [ 1.000000e+00, %5252 ]
  %5652 = fcmp fast ogt float %5248, 0.000000e+00
  br i1 %5652, label %5653, label %5659, !dx.controlflow.hints !109

; <label>:5653                                    ; preds = %5650
  %5654 = fadd fast float %5161, %5135
  %5655 = call float @dx.op.binary.f32(i32 35, float %5654, float 0.000000e+00)  ; FMax(a,b)
  %5656 = fadd fast float %5655, 0x3F10000000000000
  %5657 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5150, float %5151, float undef, float undef, i32 0, i32 0, i32 undef, float %5656)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  br label %5659

; <label>:5659                                    ; preds = %5653, %5650
  %5660 = phi float [ %5658, %5653 ], [ 1.000000e+00, %5650 ]
  %5661 = fcmp fast ogt float %5246, 0.000000e+00
  br i1 %5661, label %5662, label %5668, !dx.controlflow.hints !110

; <label>:5662                                    ; preds = %5659
  %5663 = fadd fast float %5191, %5135
  %5664 = call float @dx.op.binary.f32(i32 35, float %5663, float 0.000000e+00)  ; FMax(a,b)
  %5665 = fadd fast float %5664, 0x3F10000000000000
  %5666 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5142, float %5143, float undef, float undef, i32 0, i32 0, i32 undef, float %5665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  br label %5668

; <label>:5668                                    ; preds = %5662, %5659
  %5669 = phi float [ %5667, %5662 ], [ 1.000000e+00, %5659 ]
  %5670 = fcmp fast ogt float %5245, 0.000000e+00
  br i1 %5670, label %5671, label %5678, !dx.controlflow.hints !111

; <label>:5671                                    ; preds = %5668
  %5672 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5673 = fadd fast float %5672, %5135
  %5674 = call float @dx.op.binary.f32(i32 35, float %5673, float 0.000000e+00)  ; FMax(a,b)
  %5675 = fadd fast float %5674, 0x3F10000000000000
  %5676 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5127, float %5131, float undef, float undef, i32 0, i32 0, i32 undef, float %5675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  br label %5678

; <label>:5678                                    ; preds = %5671, %5668
  %5679 = phi float [ %5677, %5671 ], [ 1.000000e+00, %5668 ]
  %5680 = fsub fast float %5660, %5651
  %5681 = fmul fast float %5680, %5189
  %5682 = fadd fast float %5681, %5651
  %5683 = fsub fast float %5669, %5682
  %5684 = fmul fast float %5683, %5219
  %5685 = fadd fast float %5684, %5682
  %5686 = fsub fast float %5679, %5685
  %5687 = fmul fast float %5686, %5245
  %5688 = fadd fast float %5687, %5685
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5691 = fcmp fast ogt float %5690, 0.000000e+00
  br i1 %5691, label %5692, label %5732, !dx.controlflow.hints !112

; <label>:5692                                    ; preds = %5678
  %5693 = fcmp fast ugt float %5690, 0.000000e+00
  br i1 %5693, label %5694, label %5729

; <label>:5694                                    ; preds = %5692
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 0
  %5702 = extractvalue %dx.types.CBufRet.f32 %5700, 1
  %5703 = extractvalue %dx.types.CBufRet.f32 %5700, 2
  %5704 = extractvalue %dx.types.CBufRet.f32 %5700, 3
  %5705 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5711 = fadd fast float %5708, %5104
  %5712 = fadd fast float %5709, %5105
  %5713 = fadd fast float %5710, %5106
  %5714 = fmul fast float %5711, %5696
  %5715 = call float @dx.op.tertiary.f32(i32 46, float %5697, float %5712, float %5714)  ; FMad(a,b,c)
  %5716 = call float @dx.op.tertiary.f32(i32 46, float %5698, float %5713, float %5715)  ; FMad(a,b,c)
  %5717 = fadd fast float %5716, %5699
  %5718 = fmul fast float %5711, %5701
  %5719 = call float @dx.op.tertiary.f32(i32 46, float %5702, float %5712, float %5718)  ; FMad(a,b,c)
  %5720 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5713, float %5719)  ; FMad(a,b,c)
  %5721 = fadd fast float %5720, %5704
  %5722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5717, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = fmul fast float %5723, %5706
  %5725 = fadd fast float %5724, %5705
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, %5690
  %5728 = fsub fast float 1.000000e+00, %5727
  br label %5729

; <label>:5729                                    ; preds = %5694, %5692
  %5730 = phi float [ %5728, %5694 ], [ 1.000000e+00, %5692 ]
  %5731 = fmul fast float %5730, %5688
  br label %5732

; <label>:5732                                    ; preds = %5729, %5678, %5084
  %5733 = phi float [ 1.000000e+00, %5084 ], [ %5731, %5729 ], [ %5688, %5678 ]
  %5734 = call float @dx.op.binary.f32(i32 36, float %5733, float %5733)  ; FMin(a,b)
  %5735 = call float @dx.op.binary.f32(i32 36, float %5733, float %5734)  ; FMin(a,b)
  %5736 = fcmp fast ogt float %5735, 0.000000e+00
  br i1 %5736, label %5737, label %5897, !dx.controlflow.hints !113

; <label>:5737                                    ; preds = %5732
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5752 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5753 = fmul fast float %5739, %5104
  %5754 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5740, float %5753)  ; FMad(a,b,c)
  %5755 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5741, float %5754)  ; FMad(a,b,c)
  %5756 = fadd fast float %5755, %5742
  %5757 = fmul fast float %5744, %5104
  %5758 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5745, float %5757)  ; FMad(a,b,c)
  %5759 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5746, float %5758)  ; FMad(a,b,c)
  %5760 = fadd fast float %5759, %5747
  %5761 = fmul fast float %5749, %5104
  %5762 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5750, float %5761)  ; FMad(a,b,c)
  %5763 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5751, float %5762)  ; FMad(a,b,c)
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.CBufRet.f32 %5764, 3
  %5768 = fmul fast float %5767, %5756
  %5769 = fmul fast float %5767, %5760
  %5770 = fadd fast float %5768, %5765
  %5771 = fadd fast float %5769, %5766
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5775 = fsub fast float %5770, %5773
  %5776 = fsub fast float %5771, %5774
  %5777 = fcmp fast olt float %5775, 0.000000e+00
  %5778 = fcmp fast olt float %5776, 0.000000e+00
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = select i1 %5777, float %5780, float %5782
  %5785 = select i1 %5778, float %5781, float %5783
  %5786 = fmul fast float %5784, %5775
  %5787 = fmul fast float %5785, %5776
  %5788 = call float @dx.op.unary.f32(i32 6, float %5786)  ; FAbs(value)
  %5789 = call float @dx.op.unary.f32(i32 6, float %5787)  ; FAbs(value)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  %5791 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5792 = fsub fast float %5790, %5791
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fcmp fast ogt float %5793, 0.000000e+00
  br i1 %5794, label %5795, label %5836, !dx.controlflow.hints !114

; <label>:5795                                    ; preds = %5737
  %5796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5770, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5797 = extractvalue %dx.types.ResRet.f32 %5796, 1
  %5798 = fcmp fast ogt float %5797, 0.000000e+00
  br i1 %5798, label %5799, label %5831

; <label>:5799                                    ; preds = %5795
  %5800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5770, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5800, 3
  %5805 = fsub fast float 1.000000e+00, %5752
  %5806 = fsub fast float %5805, %5763
  %5807 = fmul fast float %5806, 0x400921FB60000000
  %5808 = fadd fast float %5807, 0x3FF921FB60000000
  %5809 = call float @dx.op.unary.f32(i32 13, float %5808)  ; Sin(value)
  %5810 = fadd fast float %5809, -1.000000e+00
  %5811 = fmul fast float %5810, 0x3FD45F3060000000
  %5812 = fmul fast float %5806, 0x401921FB60000000
  %5813 = fadd fast float %5812, 0x400921FB60000000
  %5814 = call float @dx.op.unary.f32(i32 13, float %5813)  ; Sin(value)
  %5815 = fadd fast float %5814, 0x3E7777A5C0000000
  %5816 = fmul fast float %5815, 0x3FC45F3060000000
  %5817 = fmul fast float %5806, 0x4022D97C80000000
  %5818 = fadd fast float %5817, 0x4012D97C80000000
  %5819 = call float @dx.op.unary.f32(i32 13, float %5818)  ; Sin(value)
  %5820 = fadd fast float %5819, 1.000000e+00
  %5821 = fmul fast float %5820, 0x3FBB2995E0000000
  %5822 = fmul fast float %5806, 0x402921FB60000000
  %5823 = fadd fast float %5822, 0x401921FB60000000
  %5824 = call float @dx.op.unary.f32(i32 13, float %5823)  ; Sin(value)
  %5825 = fadd fast float %5824, 0xBE8777A5C0000000
  %5826 = fmul fast float %5825, 0x3FB45F3060000000
  %5827 = call float @dx.op.dot4.f32(i32 56, float %5801, float %5802, float %5803, float %5804, float %5811, float %5816, float %5821, float %5826)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5828 = fmul fast float %5827, 0xBFF7154760000000
  %5829 = call float @dx.op.unary.f32(i32 21, float %5828)  ; Exp(value)
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  br label %5831

; <label>:5831                                    ; preds = %5799, %5795
  %5832 = phi float [ %5830, %5799 ], [ 1.000000e+00, %5795 ]
  %5833 = fadd fast float %5832, -1.000000e+00
  %5834 = fmul fast float %5833, %5793
  %5835 = fadd fast float %5834, 1.000000e+00
  br label %5836

; <label>:5836                                    ; preds = %5831, %5737
  %5837 = phi float [ %5835, %5831 ], [ 1.000000e+00, %5737 ]
  %5838 = fmul fast float %5837, %5733
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = fadd fast float %5840, %158
  %5844 = fadd fast float %5841, %159
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5847 = fsub fast float -0.000000e+00, %5843
  %5848 = fsub fast float -0.000000e+00, %5844
  %5849 = fsub fast float %4868, %5842
  %5850 = fadd fast float %5849, %5846
  %5851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5847, float %5848, float %5850)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = fdiv fast float 1.000000e+00, %5852
  %5854 = fmul fast float %5853, %5851
  %5855 = fmul fast float %5085, %5854
  %5856 = fmul fast float %5086, %5854
  %5857 = fadd fast float %5855, %5843
  %5858 = fadd fast float %5856, %5844
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = fsub fast float %5857, %5860
  %5863 = fsub fast float %5858, %5861
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 2
  %5866 = extractvalue %dx.types.CBufRet.f32 %5864, 3
  %5867 = fmul fast float %5862, %5865
  %5868 = fmul fast float %5863, %5866
  %5869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.i32 %5869, 3
  %5871 = icmp eq i32 %5870, 0
  br i1 %5871, label %5877, label %5872

; <label>:5872                                    ; preds = %5836
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5867, float %5868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.ResRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.ResRet.f32 %5873, 2
  br label %5882

; <label>:5877                                    ; preds = %5836
  %5878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5867, float %5868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.ResRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.ResRet.f32 %5878, 2
  br label %5882

; <label>:5882                                    ; preds = %5877, %5872
  %5883 = phi float [ %5874, %5872 ], [ %5879, %5877 ]
  %5884 = phi float [ %5875, %5872 ], [ %5880, %5877 ]
  %5885 = phi float [ %5876, %5872 ], [ %5881, %5877 ]
  %5886 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5887 = fmul fast float %5886, %5883
  %5888 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5889 = fsub fast float %5854, %5888
  %5890 = fsub fast float %5889, %5887
  %5891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5890)  ; FMax(a,b)
  %5892 = fmul fast float %5891, %5884
  %5893 = call float @dx.op.binary.f32(i32 36, float %5885, float %5892)  ; FMin(a,b)
  %5894 = fmul fast float %5893, 0xBFF7154760000000
  %5895 = call float @dx.op.unary.f32(i32 21, float %5894)  ; Exp(value)
  %5896 = fmul fast float %5838, %5895
  br label %5897

; <label>:5897                                    ; preds = %5882, %5732
  %5898 = phi float [ %5896, %5882 ], [ %5733, %5732 ]
  %5899 = call float @dx.op.binary.f32(i32 36, float %5898, float %5898)  ; FMin(a,b)
  %5900 = call float @dx.op.binary.f32(i32 36, float %5898, float %5899)  ; FMin(a,b)
  %5901 = fcmp fast ogt float %5900, 0.000000e+00
  br i1 %5901, label %5902, label %6153, !dx.controlflow.hints !115

; <label>:5902                                    ; preds = %5897
  %5903 = fmul fast float %5898, %5096
  %5904 = fmul fast float %5898, %5097
  %5905 = fmul fast float %5898, %5098
  %5906 = fsub fast float %160, %4656
  %5907 = fcmp fast ogt float %5906, 0.000000e+00
  %5908 = fmul fast float %5085, 5.120000e+02
  %5909 = fmul fast float %5086, 5.120000e+02
  %5910 = fmul fast float %5087, 5.120000e+02
  %5911 = fadd fast float %5910, %160
  %5912 = fsub fast float %4656, %5911
  %5913 = fmul fast float %5912, 2.000000e+00
  %5914 = fadd fast float %5913, %5911
  %5915 = select i1 %5907, float %5914, float %5911
  %5916 = fsub fast float %5915, %160
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5916, float %5908, float %5909, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = call float @dx.op.unary.f32(i32 25, float %5917)  ; Rsqrt(value)
  %5919 = fmul fast float %5918, %5908
  %5920 = fmul fast float %5918, %5909
  %5921 = fmul fast float %5918, %5916
  %5922 = fsub fast float %4656, %160
  %5923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5919, float %5920, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = fdiv fast float 1.000000e+00, %5924
  %5926 = fmul fast float %5925, %5923
  %5927 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5906, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fcmp fast ogt float %5927, 0.000000e+00
  %5929 = fcmp fast olt float %5927, 0.000000e+00
  %5930 = zext i1 %5928 to i32
  %5931 = zext i1 %5929 to i32
  %5932 = sub nsw i32 %5930, %5931
  %5933 = sitofp i32 %5932 to float
  %5934 = fsub fast float %5915, %4656
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5934, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = fcmp fast ogt float %5935, 0.000000e+00
  %5937 = fcmp fast olt float %5935, 0.000000e+00
  %5938 = zext i1 %5936 to i32
  %5939 = zext i1 %5937 to i32
  %5940 = sub nsw i32 %5938, %5939
  %5941 = sitofp i32 %5940 to float
  %5942 = fcmp fast une float %5933, %5941
  br i1 %5942, label %5943, label %5953

; <label>:5943                                    ; preds = %5902
  %5944 = fmul fast float %5926, %5921
  %5945 = fmul fast float %5926, %5920
  %5946 = fmul fast float %5926, %5919
  %5947 = fmul fast float %5946, %5946
  %5948 = fmul fast float %5945, %5945
  %5949 = fadd fast float %5947, %5948
  %5950 = fmul fast float %5944, %5944
  %5951 = fadd fast float %5949, %5950
  %5952 = call float @dx.op.unary.f32(i32 24, float %5951)  ; Sqrt(value)
  br label %5963

; <label>:5953                                    ; preds = %5902
  %5954 = icmp slt i32 %5932, 0
  br i1 %5954, label %5955, label %5963

; <label>:5955                                    ; preds = %5953
  %5956 = fsub fast float %160, %5915
  %5957 = fmul fast float %5908, %5908
  %5958 = fmul fast float %5909, %5909
  %5959 = fadd fast float %5957, %5958
  %5960 = fmul fast float %5956, %5956
  %5961 = fadd fast float %5959, %5960
  %5962 = call float @dx.op.unary.f32(i32 24, float %5961)  ; Sqrt(value)
  br label %5963

; <label>:5963                                    ; preds = %5955, %5953, %5943
  %5964 = phi float [ %5952, %5943 ], [ %5962, %5955 ], [ 0.000000e+00, %5953 ]
  %5965 = fsub fast float -0.000000e+00, %5964
  %5966 = select i1 %5907, float -0.000000e+00, float %5965
  %5967 = fmul fast float %4657, 0x3FF7154760000000
  %5968 = fmul fast float %5967, %5966
  %5969 = fmul fast float %4658, 0x3FF7154760000000
  %5970 = fmul fast float %5969, %5966
  %5971 = fmul fast float %4659, 0x3FF7154760000000
  %5972 = fmul fast float %5971, %5966
  %5973 = call float @dx.op.unary.f32(i32 21, float %5968)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5975 = call float @dx.op.unary.f32(i32 21, float %5972)  ; Exp(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5978 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5979 = fmul fast float %5903, %5976
  %5980 = fmul fast float %5904, %5977
  %5981 = fmul fast float %5905, %5978
  %5982 = fsub fast float %5085, %4856
  %5983 = fsub fast float %5086, %4855
  %5984 = fsub fast float %5087, %4854
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5982, float %5983, float %5984, float %5982, float %5983, float %5984)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.unary.f32(i32 25, float %5985)  ; Rsqrt(value)
  %5987 = fmul fast float %5986, %5982
  %5988 = fmul fast float %5986, %5983
  %5989 = fmul fast float %5986, %5984
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %4863, float %4864, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4852, float %4851, float %5987, float %5988, float %5989)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5993 = fmul fast float %5992, %5992
  %5994 = fmul fast float %5993, %4884
  %5995 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5996 = fmul fast float %5995, %5992
  %5997 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %5987, float %5988, float %5989)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = fmul fast float %5997, %5997
  %5999 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %6000 = fsub fast float 1.000000e+00, %4866
  %6001 = call float @dx.op.binary.f32(i32 35, float %6000, float 0x3F847AE140000000)  ; FMax(a,b)
  %6002 = fmul fast float %6001, %6001
  %6003 = fmul fast float %6002, %6002
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = fmul fast float %4871, %4871
  %6006 = fmul fast float %6005, %6004
  %6007 = fadd fast float %6006, %6003
  %6008 = bitcast float %6007 to i32
  %6009 = ashr i32 %6008, 1
  %6010 = add nsw i32 %6009, 532487669
  %6011 = bitcast i32 %6010 to float
  %6012 = fadd fast float %6011, %4871
  %6013 = fmul fast float %6003, %5998
  %6014 = fsub fast float 1.000000e+00, %5998
  %6015 = fadd fast float %6014, %6013
  %6016 = fmul fast float %5999, %5999
  %6017 = fmul fast float %6016, %6004
  %6018 = fadd fast float %6017, %6003
  %6019 = bitcast float %6018 to i32
  %6020 = ashr i32 %6019, 1
  %6021 = add nsw i32 %6020, 532487669
  %6022 = bitcast i32 %6021 to float
  %6023 = fadd fast float %6022, %5999
  %6024 = fmul fast float %6015, %6015
  %6025 = fmul fast float %6024, %6012
  %6026 = fmul fast float %6025, %6023
  %6027 = fdiv fast float 0x3FF0A00000000000, %6026
  %6028 = fmul fast float %6027, %6003
  %6029 = call float @dx.op.unary.f32(i32 6, float %5991)  ; FAbs(value)
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = bitcast float %6030 to i32
  %6032 = sitofp i32 %6031 to float
  %6033 = fmul fast float %6032, 5.000000e+00
  %6034 = fadd fast float %6033, 0xC1EFBF8940000000
  %6035 = fptosi float %6034 to i32
  %6036 = bitcast i32 %6035 to float
  %6037 = fsub fast float 1.000000e+00, %4857
  %6038 = fsub fast float 1.000000e+00, %4858
  %6039 = fsub fast float 1.000000e+00, %4869
  %6040 = fmul fast float %6036, %6037
  %6041 = fmul fast float %6036, %6038
  %6042 = fmul fast float %6036, %6039
  %6043 = fadd fast float %6040, %4857
  %6044 = fadd fast float %6041, %4858
  %6045 = fadd fast float %6042, %4869
  br i1 %4996, label %6046, label %6069

; <label>:6046                                    ; preds = %5963
  %6047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4254, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6048 = extractvalue %dx.types.ResRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.ResRet.f32 %6047, 2
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fmul fast float %4857, 4.000000e+00
  %6055 = fmul fast float %6054, %6037
  %6056 = fmul fast float %6055, %6051
  %6057 = fmul fast float %4858, 4.000000e+00
  %6058 = fmul fast float %6057, %6038
  %6059 = fmul fast float %6058, %6052
  %6060 = fmul fast float %4869, 4.000000e+00
  %6061 = fmul fast float %6060, %6039
  %6062 = fmul fast float %6061, %6053
  %6063 = fadd fast float %6056, %6043
  %6064 = fadd fast float %6059, %6044
  %6065 = fadd fast float %6062, %6045
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  br label %6069

; <label>:6069                                    ; preds = %6046, %5963
  %6070 = phi float [ %6066, %6046 ], [ %6043, %5963 ]
  %6071 = phi float [ %6067, %6046 ], [ %6044, %5963 ]
  %6072 = phi float [ %6068, %6046 ], [ %6045, %5963 ]
  %6073 = fmul fast float %5990, 9.843750e-01
  %6074 = fadd fast float %6073, 7.812500e-03
  %6075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6074, float %4986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6076 = extractvalue %dx.types.ResRet.f32 %6075, 2
  %6077 = extractvalue %dx.types.ResRet.f32 %6075, 3
  %6078 = fmul fast float %6076, %4857
  %6079 = fmul fast float %6076, %4858
  %6080 = fmul fast float %6076, %4869
  %6081 = fadd fast float %6078, %6077
  %6082 = fadd fast float %6079, %6077
  %6083 = fadd fast float %6080, %6077
  br i1 %4996, label %6084, label %6107

; <label>:6084                                    ; preds = %6069
  %6085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4254, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.ResRet.f32 %6085, 2
  %6089 = fadd fast float %6086, -5.000000e-01
  %6090 = fadd fast float %6087, -5.000000e-01
  %6091 = fadd fast float %6088, -5.000000e-01
  %6092 = fmul fast float %4857, 4.000000e+00
  %6093 = fmul fast float %6092, %6037
  %6094 = fmul fast float %6093, %6089
  %6095 = fmul fast float %4858, 4.000000e+00
  %6096 = fmul fast float %6095, %6038
  %6097 = fmul fast float %6096, %6090
  %6098 = fmul fast float %4869, 4.000000e+00
  %6099 = fmul fast float %6098, %6039
  %6100 = fmul fast float %6099, %6091
  %6101 = fadd fast float %6094, %6081
  %6102 = fadd fast float %6097, %6082
  %6103 = fadd fast float %6100, %6083
  %6104 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  br label %6107

; <label>:6107                                    ; preds = %6084, %6069
  %6108 = phi float [ %6104, %6084 ], [ %6081, %6069 ]
  %6109 = phi float [ %6105, %6084 ], [ %6082, %6069 ]
  %6110 = phi float [ %6106, %6084 ], [ %6083, %6069 ]
  %6111 = call float @dx.op.binary.f32(i32 35, float %6109, float %6110)  ; FMax(a,b)
  %6112 = call float @dx.op.binary.f32(i32 35, float %6108, float %6111)  ; FMax(a,b)
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = fmul fast float %6070, %6028
  %6115 = fmul fast float %6071, %6028
  %6116 = fmul fast float %6072, %6028
  %6117 = fsub fast float 1.000000e+00, %5991
  %6118 = bitcast float %6117 to i32
  %6119 = sitofp i32 %6118 to float
  %6120 = fmul fast float %6119, 5.000000e+00
  %6121 = fadd fast float %6120, 0xC1EFBF8940000000
  %6122 = fptosi float %6121 to i32
  %6123 = bitcast i32 %6122 to float
  %6124 = fmul fast float %6123, %4255
  %6125 = fmul fast float %6113, %6124
  %6126 = fmul fast float %6125, %5046
  %6127 = fmul fast float %6125, %5047
  %6128 = fmul fast float %6125, %5048
  %6129 = fadd fast float %6126, %6114
  %6130 = fadd fast float %6127, %6115
  %6131 = fadd fast float %6128, %6116
  %6132 = fmul fast float %5996, %5979
  %6133 = fmul fast float %6132, %6113
  %6134 = fmul fast float %5996, %5980
  %6135 = fmul fast float %6134, %6113
  %6136 = fmul fast float %5996, %5981
  %6137 = fmul fast float %6136, %6113
  %6138 = fmul fast float %6132, %6129
  %6139 = fmul fast float %6134, %6130
  %6140 = fmul fast float %6136, %6131
  %6141 = fadd fast float %6133, %5030
  %6142 = fmul fast float %6141, %4251
  %6143 = fadd fast float %6135, %5031
  %6144 = fmul fast float %6143, %4251
  %6145 = fadd fast float %6137, %5032
  %6146 = fmul fast float %6145, %4251
  %6147 = fadd fast float %6138, %5073
  %6148 = fmul fast float %6147, %4251
  %6149 = fadd fast float %6139, %5076
  %6150 = fmul fast float %6149, %4251
  %6151 = fadd fast float %6140, %5079
  %6152 = fmul fast float %6151, %4251
  br label %6153

; <label>:6153                                    ; preds = %6107, %5897, %5023
  %6154 = phi float [ %5074, %5023 ], [ %5074, %5897 ], [ %6148, %6107 ]
  %6155 = phi float [ %5077, %5023 ], [ %5077, %5897 ], [ %6150, %6107 ]
  %6156 = phi float [ %5080, %5023 ], [ %5080, %5897 ], [ %6152, %6107 ]
  %6157 = phi float [ %5069, %5023 ], [ %5069, %5897 ], [ %6142, %6107 ]
  %6158 = phi float [ %5070, %5023 ], [ %5070, %5897 ], [ %6144, %6107 ]
  %6159 = phi float [ %5071, %5023 ], [ %5071, %5897 ], [ %6146, %6107 ]
  %6160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.i32 %6160, 0
  %6162 = icmp eq i32 %6161, 0
  br i1 %6162, label %6783, label %6163

; <label>:6163                                    ; preds = %6153
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6167 = fmul fast float %6165, %95
  %6168 = fmul fast float %6166, %96
  %6169 = fptoui float %6167 to i32
  %6170 = fptoui float %6168 to i32
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6175 = fadd fast float %86, -4.000000e+00
  %6176 = call float @dx.op.binary.f32(i32 35, float %6175, float 0.000000e+00)  ; FMax(a,b)
  %6177 = fadd fast float %6176, %6172
  %6178 = fmul fast float %6177, %6173
  %6179 = call float @dx.op.unary.f32(i32 23, float %6178)  ; Log(value)
  %6180 = fmul fast float %6179, %6174
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6183 = fmul fast float %6180, %6182
  %6184 = call float @dx.op.unary.f32(i32 7, float %6183)  ; Saturate(value)
  %6185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.i32 %6185, 1
  %6187 = add i32 %6186, -1
  %6188 = uitofp i32 %6186 to float
  %6189 = fmul fast float %6188, %6184
  %6190 = fptoui float %6189 to i32
  %6191 = call i32 @dx.op.binary.i32(i32 40, i32 %6190, i32 %6187)  ; UMin(a,b)
  %6192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.i32 %6192, 2
  %6194 = extractvalue %dx.types.CBufRet.i32 %6192, 3
  %6195 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6170, i32 %6193, i32 %6169)  ; UMad(a,b,c)
  %6196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6191, i32 %6194, i32 %6195)  ; UMad(a,b,c)
  %6197 = add nsw i32 %6161, -1
  %6198 = call i32 @dx.op.binary.i32(i32 37, i32 %6197, i32 0)  ; IMax(a,b)
  %6199 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6200 = fptoui float %6199 to i32
  %6201 = lshr i32 %6200, 5
  %6202 = call i32 @dx.op.binary.i32(i32 40, i32 %6201, i32 8191)  ; UMin(a,b)
  %6203 = shl i32 %6202, 2
  %6204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.i32 %6204, 0
  %6206 = lshr i32 %6205, 16
  %6207 = and i32 %6205, 65535
  %6208 = lshr i32 %6205, 21
  %6209 = lshr i32 %6207, 5
  %6210 = call i32 @dx.op.binary.i32(i32 40, i32 %6209, i32 %6198)  ; UMin(a,b)
  %6211 = icmp ugt i32 %6208, %6210
  br i1 %6211, label %6783, label %6212

; <label>:6212                                    ; preds = %6163
  br label %6213

; <label>:6213                                    ; preds = %6773, %6212
  %6214 = phi i32 [ %6780, %6773 ], [ %6208, %6212 ]
  %6215 = phi float [ %6774, %6773 ], [ %6154, %6212 ]
  %6216 = phi float [ %6775, %6773 ], [ %6155, %6212 ]
  %6217 = phi float [ %6776, %6773 ], [ %6156, %6212 ]
  %6218 = phi float [ %6777, %6773 ], [ %6157, %6212 ]
  %6219 = phi float [ %6778, %6773 ], [ %6158, %6212 ]
  %6220 = phi float [ %6779, %6773 ], [ %6159, %6212 ]
  %6221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.i32 %6221, 0
  %6223 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6196, i32 %6222, i32 %6214)  ; UMad(a,b,c)
  %6224 = shl i32 %6223, 2
  %6225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6224, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.i32 %6225, 0
  %6227 = shl i32 %6214, 5
  %6228 = sub nsw i32 %6206, %6227
  %6229 = call i32 @dx.op.binary.i32(i32 37, i32 %6228, i32 0)  ; IMax(a,b)
  %6230 = call i32 @dx.op.binary.i32(i32 38, i32 %6229, i32 31)  ; IMin(a,b)
  %6231 = sub nsw i32 1, %6206
  %6232 = add nsw i32 %6231, %6207
  %6233 = call i32 @dx.op.binary.i32(i32 37, i32 %6232, i32 0)  ; IMax(a,b)
  %6234 = call i32 @dx.op.binary.i32(i32 38, i32 %6233, i32 32)  ; IMin(a,b)
  %6235 = and i32 %6234, 31
  %6236 = shl i32 -1, %6235
  %6237 = xor i32 %6236, -1
  %6238 = and i32 %6230, 31
  %6239 = shl i32 %6237, %6238
  %6240 = icmp eq i32 %6234, 32
  %6241 = select i1 %6240, i32 -1, i32 %6239
  %6242 = and i32 %6241, %6226
  %6243 = icmp eq i32 %6242, 0
  br i1 %6243, label %6773, label %6244

; <label>:6244                                    ; preds = %6213
  br label %6245

; <label>:6245                                    ; preds = %6379, %6244
  %6246 = phi i32 [ %6257, %6379 ], [ %6242, %6244 ]
  %6247 = phi float [ %6380, %6379 ], [ %6215, %6244 ]
  %6248 = phi float [ %6381, %6379 ], [ %6216, %6244 ]
  %6249 = phi float [ %6382, %6379 ], [ %6217, %6244 ]
  %6250 = phi float [ %6383, %6379 ], [ %6218, %6244 ]
  %6251 = phi float [ %6384, %6379 ], [ %6219, %6244 ]
  %6252 = phi float [ %6385, %6379 ], [ %6220, %6244 ]
  %6253 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6246)  ; FirstbitLo(value)
  %6254 = add i32 %6253, %6227
  %6255 = and i32 %6253, 31
  %6256 = shl i32 1, %6255
  %6257 = xor i32 %6256, %6246
  %6258 = mul i32 %6254, 112
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = or i32 %6258, 12
  %6264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = add i32 %6258, 16
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = add i32 %6258, 28
  %6272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.i32 %6272, 0
  %6274 = add i32 %6258, 44
  %6275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6274, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = add i32 %6258, 48
  %6278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6277, i32 undef)  ; BufferLoad(srv,index,wot)
  %6279 = extractvalue %dx.types.ResRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.ResRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.ResRet.f32 %6278, 2
  %6282 = extractvalue %dx.types.ResRet.f32 %6278, 3
  %6283 = add i32 %6258, 64
  %6284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6283, i32 undef)  ; BufferLoad(srv,index,wot)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.ResRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.ResRet.f32 %6284, 2
  %6288 = extractvalue %dx.types.ResRet.f32 %6284, 3
  %6289 = add i32 %6258, 80
  %6290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 1
  %6292 = extractvalue %dx.types.ResRet.f32 %6290, 2
  %6293 = add i32 %6258, 92
  %6294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6293, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.i32 %6294, 0
  %6296 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = select i1 %220, float %6291, float %6260
  %6298 = select i1 %220, float %6296, float %6261
  %6299 = select i1 %220, float %6292, float %6262
  %6300 = and i32 %6295, 65535
  %6301 = uitofp i32 %6300 to float
  %6302 = lshr i32 %6295, 16
  %6303 = uitofp i32 %6302 to float
  %6304 = and i32 %6273, 65535
  %6305 = and i32 %6273, 50331648
  %6306 = icmp eq i32 %6305, 33554432
  %6307 = fsub fast float %6279, %158
  %6308 = fsub fast float %6280, %159
  %6309 = fsub fast float %6281, %160
  %6310 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6307, float %6308, float %6309)  ; Dot3(ax,ay,az,bx,by,bz)
  %6311 = call float @dx.op.unary.f32(i32 24, float %6310)  ; Sqrt(value)
  %6312 = fdiv fast float 1.000000e+00, %6311
  %6313 = fmul fast float %6312, %6307
  %6314 = fmul fast float %6312, %6308
  %6315 = fmul fast float %6312, %6309
  %6316 = fadd fast float %6311, %6265
  %6317 = fdiv fast float 1.000000e+00, %6316
  %6318 = fmul float %6276, %6317
  %6319 = fmul float %6318, %6318
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  br i1 %6306, label %6321, label %6342

; <label>:6321                                    ; preds = %6245
  %6322 = fmul fast float %6287, %6268
  %6323 = fmul fast float %6287, %6269
  %6324 = fmul fast float %6287, %6270
  %6325 = fadd fast float %6307, %6322
  %6326 = fadd fast float %6308, %6323
  %6327 = fadd fast float %6309, %6324
  %6328 = call float @dx.op.dot3.f32(i32 55, float %6325, float %6326, float %6327, float %6325, float %6326, float %6327)  ; Dot3(ax,ay,az,bx,by,bz)
  %6329 = call float @dx.op.unary.f32(i32 25, float %6328)  ; Rsqrt(value)
  %6330 = fmul fast float %6329, %6325
  %6331 = fmul fast float %6329, %6326
  %6332 = fmul fast float %6329, %6327
  %6333 = fsub fast float %158, %6279
  %6334 = fsub fast float %159, %6280
  %6335 = fsub fast float %160, %6281
  %6336 = fsub fast float -0.000000e+00, %6333
  %6337 = fsub fast float -0.000000e+00, %6334
  %6338 = fsub fast float -0.000000e+00, %6335
  %6339 = call float @dx.op.dot3.f32(i32 55, float %6336, float %6337, float %6338, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = fcmp fast ogt float %6339, 0.000000e+00
  %6341 = uitofp i1 %6340 to float
  br label %6342

; <label>:6342                                    ; preds = %6321, %6245
  %6343 = phi float [ %6341, %6321 ], [ 1.000000e+00, %6245 ]
  %6344 = phi float [ %6330, %6321 ], [ %6313, %6245 ]
  %6345 = phi float [ %6331, %6321 ], [ %6314, %6245 ]
  %6346 = phi float [ %6332, %6321 ], [ %6315, %6245 ]
  %6347 = call float @dx.op.dot3.f32(i32 55, float %6268, float %6269, float %6270, float %6344, float %6345, float %6346)  ; Dot3(ax,ay,az,bx,by,bz)
  %6348 = fmul fast float %6347, %6347
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = fsub fast float 1.000000e+00, %6349
  %6351 = fmul fast float %6350, 5.000000e-01
  %6352 = fcmp fast ogt float %6347, 0.000000e+00
  %6353 = fsub fast float 1.000000e+00, %6351
  %6354 = select i1 %6352, float %6351, float %6353
  %6355 = fmul fast float %6354, %6303
  %6356 = fadd fast float %6355, %6301
  %6357 = fmul fast float %6356, 0x3EF0001000000000
  %6358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = fmul fast float %6347, %6285
  %6361 = fadd fast float %6360, %6286
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = select i1 %6306, float 1.000000e+00, float %6362
  %6364 = select i1 %6306, float %6362, float 1.000000e+00
  %6365 = fmul fast float %6311, %6282
  %6366 = fsub fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6366, %6288
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = fmul fast float %6368, %6364
  %6370 = fmul fast float %6369, 2.000000e+00
  %6371 = fsub fast float 3.000000e+00, %6370
  %6372 = fmul fast float %6359, %6343
  %6373 = fmul fast float %6369, %6369
  %6374 = fmul fast float %6373, %6372
  %6375 = fmul fast float %6374, %6371
  %6376 = call float @dx.op.binary.f32(i32 36, float %6375, float %6375)  ; FMin(a,b)
  %6377 = call float @dx.op.binary.f32(i32 36, float %6375, float %6376)  ; FMin(a,b)
  %6378 = fcmp fast ogt float %6377, 0.000000e+00
  br i1 %6378, label %6387, label %6379, !dx.controlflow.hints !116

; <label>:6379                                    ; preds = %6729, %6487, %6342
  %6380 = phi float [ %6247, %6487 ], [ %6247, %6342 ], [ %6769, %6729 ]
  %6381 = phi float [ %6248, %6487 ], [ %6248, %6342 ], [ %6770, %6729 ]
  %6382 = phi float [ %6249, %6487 ], [ %6249, %6342 ], [ %6771, %6729 ]
  %6383 = phi float [ %6250, %6487 ], [ %6250, %6342 ], [ %6763, %6729 ]
  %6384 = phi float [ %6251, %6487 ], [ %6251, %6342 ], [ %6764, %6729 ]
  %6385 = phi float [ %6252, %6487 ], [ %6252, %6342 ], [ %6765, %6729 ]
  %6386 = icmp eq i32 %6246, %6256
  br i1 %6386, label %6772, label %6245

; <label>:6387                                    ; preds = %6342
  %6388 = icmp eq i32 %6304, 255
  br i1 %6388, label %6487, label %6389, !dx.controlflow.hints !117

; <label>:6389                                    ; preds = %6387
  %6390 = mul nuw nsw i32 %6304, 176
  %6391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6390, i32 undef)  ; BufferLoad(srv,index,wot)
  %6392 = extractvalue %dx.types.ResRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.ResRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.ResRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.ResRet.f32 %6391, 3
  %6396 = add nuw nsw i32 %6390, 16
  %6397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6396, i32 undef)  ; BufferLoad(srv,index,wot)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = add nuw nsw i32 %6390, 32
  %6401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6400, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  %6405 = add nuw nsw i32 %6390, 48
  %6406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6405, i32 undef)  ; BufferLoad(srv,index,wot)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.ResRet.f32 %6406, 2
  %6410 = extractvalue %dx.types.ResRet.f32 %6406, 3
  %6411 = add nuw nsw i32 %6390, 64
  %6412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6411, i32 undef)  ; BufferLoad(srv,index,wot)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.ResRet.f32 %6412, 1
  %6415 = extractvalue %dx.types.ResRet.f32 %6412, 2
  %6416 = extractvalue %dx.types.ResRet.f32 %6412, 3
  %6417 = add nuw nsw i32 %6390, 80
  %6418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6417, i32 undef)  ; BufferLoad(srv,index,wot)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.ResRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.ResRet.f32 %6418, 2
  %6422 = extractvalue %dx.types.ResRet.f32 %6418, 3
  %6423 = add nuw nsw i32 %6390, 96
  %6424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6423, i32 undef)  ; BufferLoad(srv,index,wot)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.ResRet.f32 %6424, 2
  %6428 = extractvalue %dx.types.ResRet.f32 %6424, 3
  %6429 = bitcast float %6399 to i32
  %6430 = fmul fast float %6404, %102
  %6431 = fmul fast float %6404, %103
  %6432 = fmul fast float %6404, %104
  %6433 = fadd fast float %6430, %158
  %6434 = fadd fast float %6431, %159
  %6435 = fadd fast float %6432, %160
  %6436 = fmul fast float %6433, %6407
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6434, float %6413, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6419, float %6437)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6425
  %6440 = fmul fast float %6433, %6408
  %6441 = call float @dx.op.tertiary.f32(i32 46, float %6434, float %6414, float %6440)  ; FMad(a,b,c)
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6420, float %6441)  ; FMad(a,b,c)
  %6443 = fadd fast float %6442, %6426
  %6444 = fmul fast float %6433, %6409
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %6434, float %6415, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6421, float %6445)  ; FMad(a,b,c)
  %6447 = fadd fast float %6446, %6427
  %6448 = fmul fast float %6433, %6410
  %6449 = call float @dx.op.tertiary.f32(i32 46, float %6434, float %6416, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6422, float %6449)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6428
  %6452 = fdiv fast float %6439, %6451
  %6453 = fdiv fast float %6443, %6451
  %6454 = fdiv fast float %6447, %6451
  %6455 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6454)  ; FMax(a,b)
  %6456 = fmul fast float %231, 0x401921FB60000000
  %6457 = call float @dx.op.unary.f32(i32 13, float %6456)  ; Sin(value)
  %6458 = call float @dx.op.unary.f32(i32 12, float %6456)  ; Cos(value)
  %6459 = fsub fast float -0.000000e+00, %6457
  %6460 = fmul fast float %6394, 5.000000e-01
  %6461 = call float @dx.op.dot2.f32(i32 54, float %231, float %231, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6462 = call float @dx.op.unary.f32(i32 22, float %6461)  ; Frc(value)
  %6463 = fmul fast float %6462, 0x404A7DD040000000
  %6464 = call float @dx.op.unary.f32(i32 22, float %6463)  ; Frc(value)
  %6465 = fmul fast float %6464, %6403
  %6466 = fadd fast float %6465, %6460
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6459, float 0.000000e+00)  ; FMad(a,b,c)
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6458, float 0.000000e+00)  ; FMad(a,b,c)
  %6469 = fadd fast float %6467, %6452
  %6470 = fadd fast float %6468, %6453
  %6471 = fmul fast float %6469, %6398
  %6472 = fmul fast float %6470, %6398
  %6473 = call float @dx.op.binary.f32(i32 35, float %6471, float %6394)  ; FMax(a,b)
  %6474 = call float @dx.op.binary.f32(i32 35, float %6472, float %6394)  ; FMax(a,b)
  %6475 = call float @dx.op.binary.f32(i32 36, float %6473, float %6395)  ; FMin(a,b)
  %6476 = call float @dx.op.binary.f32(i32 36, float %6474, float %6395)  ; FMin(a,b)
  %6477 = fadd fast float %6475, %6392
  %6478 = fadd fast float %6476, %6393
  %6479 = uitofp i32 %6429 to float
  %6480 = fadd fast float %6455, %6402
  %6481 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6477, float %6478, float %6479, float undef, i32 0, i32 0, i32 undef, float %6480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 0
  %6483 = fadd fast float %6482, -1.000000e+00
  %6484 = fmul fast float %6483, %6363
  %6485 = fadd fast float %6484, 1.000000e+00
  %6486 = fmul fast float %6485, %6375
  br label %6487

; <label>:6487                                    ; preds = %6389, %6387
  %6488 = phi float [ %6486, %6389 ], [ %6375, %6387 ]
  %6489 = call float @dx.op.binary.f32(i32 36, float %6488, float %6488)  ; FMin(a,b)
  %6490 = call float @dx.op.binary.f32(i32 36, float %6488, float %6489)  ; FMin(a,b)
  %6491 = fcmp fast ogt float %6490, 0.000000e+00
  br i1 %6491, label %6492, label %6379, !dx.controlflow.hints !118

; <label>:6492                                    ; preds = %6487
  %6493 = fmul fast float %6488, %6297
  %6494 = fmul fast float %6488, %6298
  %6495 = fmul fast float %6488, %6299
  %6496 = fsub fast float %6281, %4656
  %6497 = fcmp fast ogt float %6496, 0.000000e+00
  %6498 = fsub fast float %160, %4656
  %6499 = fcmp fast ogt float %6498, 0.000000e+00
  %6500 = xor i1 %6499, %6497
  %6501 = fsub fast float %4656, %6281
  %6502 = fmul fast float %6501, 2.000000e+00
  %6503 = fadd fast float %6502, %6281
  %6504 = select i1 %6500, float %6281, float %6503
  %6505 = fsub fast float %6504, %160
  %6506 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6505, float %6307, float %6308, float %6505)  ; Dot3(ax,ay,az,bx,by,bz)
  %6507 = call float @dx.op.unary.f32(i32 25, float %6506)  ; Rsqrt(value)
  %6508 = fmul fast float %6507, %6307
  %6509 = fmul fast float %6507, %6308
  %6510 = fmul fast float %6507, %6505
  %6511 = fsub fast float %4656, %160
  %6512 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6511)  ; Dot3(ax,ay,az,bx,by,bz)
  %6513 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6508, float %6509, float %6510)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = fdiv fast float 1.000000e+00, %6513
  %6515 = fmul fast float %6514, %6512
  %6516 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6498, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6517 = fcmp fast ogt float %6516, 0.000000e+00
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = zext i1 %6517 to i32
  %6520 = zext i1 %6518 to i32
  %6521 = sub nsw i32 %6519, %6520
  %6522 = sitofp i32 %6521 to float
  %6523 = fsub fast float %6504, %4656
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6523, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = fcmp fast ogt float %6524, 0.000000e+00
  %6526 = fcmp fast olt float %6524, 0.000000e+00
  %6527 = zext i1 %6525 to i32
  %6528 = zext i1 %6526 to i32
  %6529 = sub nsw i32 %6527, %6528
  %6530 = sitofp i32 %6529 to float
  %6531 = fcmp fast une float %6522, %6530
  br i1 %6531, label %6532, label %6542

; <label>:6532                                    ; preds = %6492
  %6533 = fmul fast float %6515, %6510
  %6534 = fmul fast float %6515, %6509
  %6535 = fmul fast float %6515, %6508
  %6536 = fmul fast float %6535, %6535
  %6537 = fmul fast float %6534, %6534
  %6538 = fadd fast float %6536, %6537
  %6539 = fmul fast float %6533, %6533
  %6540 = fadd fast float %6538, %6539
  %6541 = call float @dx.op.unary.f32(i32 24, float %6540)  ; Sqrt(value)
  br label %6554

; <label>:6542                                    ; preds = %6492
  %6543 = icmp slt i32 %6521, 0
  br i1 %6543, label %6544, label %6554

; <label>:6544                                    ; preds = %6542
  %6545 = fsub fast float %158, %6279
  %6546 = fsub fast float %159, %6280
  %6547 = fsub fast float %160, %6504
  %6548 = fmul fast float %6545, %6545
  %6549 = fmul fast float %6546, %6546
  %6550 = fadd fast float %6548, %6549
  %6551 = fmul fast float %6547, %6547
  %6552 = fadd fast float %6550, %6551
  %6553 = call float @dx.op.unary.f32(i32 24, float %6552)  ; Sqrt(value)
  br label %6554

; <label>:6554                                    ; preds = %6544, %6542, %6532
  %6555 = phi float [ %6541, %6532 ], [ %6553, %6544 ], [ 0.000000e+00, %6542 ]
  %6556 = and i1 %6499, %6497
  %6557 = fsub fast float -0.000000e+00, %6555
  %6558 = select i1 %6556, float -0.000000e+00, float %6557
  %6559 = fmul fast float %4657, 0x3FF7154760000000
  %6560 = fmul fast float %6559, %6558
  %6561 = fmul fast float %4658, 0x3FF7154760000000
  %6562 = fmul fast float %6561, %6558
  %6563 = fmul fast float %4659, 0x3FF7154760000000
  %6564 = fmul fast float %6563, %6558
  %6565 = call float @dx.op.unary.f32(i32 21, float %6560)  ; Exp(value)
  %6566 = call float @dx.op.unary.f32(i32 21, float %6562)  ; Exp(value)
  %6567 = call float @dx.op.unary.f32(i32 21, float %6564)  ; Exp(value)
  %6568 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6569 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6570 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6571 = fmul fast float %6493, %6568
  %6572 = fmul fast float %6494, %6569
  %6573 = fmul fast float %6495, %6570
  %6574 = fsub fast float %6313, %4856
  %6575 = fsub fast float %6314, %4855
  %6576 = fsub fast float %6315, %4854
  %6577 = call float @dx.op.dot3.f32(i32 55, float %6574, float %6575, float %6576, float %6574, float %6575, float %6576)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = call float @dx.op.unary.f32(i32 25, float %6577)  ; Rsqrt(value)
  %6579 = fmul fast float %6578, %6574
  %6580 = fmul fast float %6578, %6575
  %6581 = fmul fast float %6578, %6576
  %6582 = call float @dx.op.dot3.f32(i32 55, float %6313, float %6314, float %6315, float %4863, float %4864, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %6583 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4852, float %4851, float %6579, float %6580, float %6581)  ; Dot3(ax,ay,az,bx,by,bz)
  %6584 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6585 = fmul fast float %6584, %6320
  %6586 = fmul fast float %6584, %6584
  %6587 = fmul fast float %6586, %4884
  %6588 = call float @dx.op.unary.f32(i32 7, float %6587)  ; Saturate(value)
  %6589 = fmul fast float %6585, %6588
  %6590 = bitcast float %6310 to i32
  %6591 = ashr i32 %6590, 1
  %6592 = sub nsw i32 1597463007, %6591
  %6593 = bitcast i32 %6592 to float
  %6594 = fmul fast float %6593, %6307
  %6595 = fmul fast float %6593, %6308
  %6596 = fmul fast float %6593, %6309
  %6597 = fsub fast float %6594, %4856
  %6598 = fsub fast float %6595, %4855
  %6599 = fsub fast float %6596, %4854
  %6600 = call float @dx.op.dot3.f32(i32 55, float %6597, float %6598, float %6599, float %6597, float %6598, float %6599)  ; Dot3(ax,ay,az,bx,by,bz)
  %6601 = call float @dx.op.unary.f32(i32 25, float %6600)  ; Rsqrt(value)
  %6602 = fmul fast float %6597, %6601
  %6603 = fmul fast float %6598, %6601
  %6604 = fmul fast float %6599, %6601
  %6605 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %6602, float %6603, float %6604)  ; Dot3(ax,ay,az,bx,by,bz)
  %6606 = fmul fast float %6605, %6605
  %6607 = call float @dx.op.unary.f32(i32 6, float %6582)  ; FAbs(value)
  %6608 = fsub fast float 1.000000e+00, %4866
  %6609 = call float @dx.op.binary.f32(i32 35, float %6608, float 0x3F847AE140000000)  ; FMax(a,b)
  %6610 = fmul fast float %6609, %6609
  %6611 = fmul fast float %6610, %6610
  %6612 = fsub fast float 1.000000e+00, %6611
  %6613 = fmul fast float %4871, %4871
  %6614 = fmul fast float %6613, %6612
  %6615 = fadd fast float %6614, %6611
  %6616 = bitcast float %6615 to i32
  %6617 = ashr i32 %6616, 1
  %6618 = add nsw i32 %6617, 532487669
  %6619 = bitcast i32 %6618 to float
  %6620 = fadd fast float %6619, %4871
  %6621 = fmul fast float %6611, %6606
  %6622 = fsub fast float 1.000000e+00, %6606
  %6623 = fadd fast float %6622, %6621
  %6624 = fmul fast float %6607, %6607
  %6625 = fmul fast float %6624, %6612
  %6626 = fadd fast float %6625, %6611
  %6627 = bitcast float %6626 to i32
  %6628 = ashr i32 %6627, 1
  %6629 = add nsw i32 %6628, 532487669
  %6630 = bitcast i32 %6629 to float
  %6631 = fadd fast float %6630, %6607
  %6632 = fmul fast float %6623, %6623
  %6633 = fmul fast float %6632, %6620
  %6634 = fmul fast float %6633, %6631
  %6635 = fdiv fast float 1.000000e+00, %6634
  %6636 = bitcast float %6611 to i32
  %6637 = sitofp i32 %6636 to float
  %6638 = fmul fast float %6637, 0x3FE7F73180000000
  %6639 = fadd fast float %6638, 0x41AFE27C40000000
  %6640 = fptosi float %6639 to i32
  %6641 = bitcast i32 %6640 to float
  %6642 = fmul fast float %6276, 0x3FD80E9D60000000
  %6643 = fmul fast float %6642, %6593
  %6644 = fadd fast float %6641, %6643
  %6645 = bitcast float %6644 to i32
  %6646 = sub nsw i32 2129859010, %6645
  %6647 = bitcast i32 %6646 to float
  %6648 = fmul fast float %6611, %6635
  %6649 = fmul fast float %6648, %6641
  %6650 = fmul fast float %6649, %6647
  %6651 = call float @dx.op.unary.f32(i32 6, float %6583)  ; FAbs(value)
  %6652 = fsub fast float 1.000000e+00, %6651
  %6653 = bitcast float %6652 to i32
  %6654 = sitofp i32 %6653 to float
  %6655 = fmul fast float %6654, 5.000000e+00
  %6656 = fadd fast float %6655, 0xC1EFBF8940000000
  %6657 = fptosi float %6656 to i32
  %6658 = bitcast i32 %6657 to float
  %6659 = fsub fast float 1.000000e+00, %4857
  %6660 = fsub fast float 1.000000e+00, %4858
  %6661 = fsub fast float 1.000000e+00, %4869
  %6662 = fmul fast float %6658, %6659
  %6663 = fmul fast float %6658, %6660
  %6664 = fmul fast float %6658, %6661
  %6665 = fadd fast float %6662, %4857
  %6666 = fadd fast float %6663, %4858
  %6667 = fadd fast float %6664, %4869
  br i1 %4996, label %6668, label %6691

; <label>:6668                                    ; preds = %6554
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4254, float %6651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = fadd fast float %6670, -5.000000e-01
  %6674 = fadd fast float %6671, -5.000000e-01
  %6675 = fadd fast float %6672, -5.000000e-01
  %6676 = fmul fast float %4857, 4.000000e+00
  %6677 = fmul fast float %6676, %6659
  %6678 = fmul fast float %6677, %6673
  %6679 = fmul fast float %4858, 4.000000e+00
  %6680 = fmul fast float %6679, %6660
  %6681 = fmul fast float %6680, %6674
  %6682 = fmul fast float %4869, 4.000000e+00
  %6683 = fmul fast float %6682, %6661
  %6684 = fmul fast float %6683, %6675
  %6685 = fadd fast float %6678, %6665
  %6686 = fadd fast float %6681, %6666
  %6687 = fadd fast float %6684, %6667
  %6688 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6689 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6690 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  br label %6691

; <label>:6691                                    ; preds = %6668, %6554
  %6692 = phi float [ %6688, %6668 ], [ %6665, %6554 ]
  %6693 = phi float [ %6689, %6668 ], [ %6666, %6554 ]
  %6694 = phi float [ %6690, %6668 ], [ %6667, %6554 ]
  %6695 = fmul fast float %6582, 9.843750e-01
  %6696 = fadd fast float %6695, 7.812500e-03
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6696, float %4986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 2
  %6699 = extractvalue %dx.types.ResRet.f32 %6697, 3
  %6700 = fmul fast float %6698, %4857
  %6701 = fmul fast float %6698, %4858
  %6702 = fmul fast float %6698, %4869
  %6703 = fadd fast float %6700, %6699
  %6704 = fadd fast float %6701, %6699
  %6705 = fadd fast float %6702, %6699
  br i1 %4996, label %6706, label %6729

; <label>:6706                                    ; preds = %6691
  %6707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4254, float %6582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6708 = extractvalue %dx.types.ResRet.f32 %6707, 0
  %6709 = extractvalue %dx.types.ResRet.f32 %6707, 1
  %6710 = extractvalue %dx.types.ResRet.f32 %6707, 2
  %6711 = fadd fast float %6708, -5.000000e-01
  %6712 = fadd fast float %6709, -5.000000e-01
  %6713 = fadd fast float %6710, -5.000000e-01
  %6714 = fmul fast float %4857, 4.000000e+00
  %6715 = fmul fast float %6714, %6659
  %6716 = fmul fast float %6715, %6711
  %6717 = fmul fast float %4858, 4.000000e+00
  %6718 = fmul fast float %6717, %6660
  %6719 = fmul fast float %6718, %6712
  %6720 = fmul fast float %4869, 4.000000e+00
  %6721 = fmul fast float %6720, %6661
  %6722 = fmul fast float %6721, %6713
  %6723 = fadd fast float %6716, %6703
  %6724 = fadd fast float %6719, %6704
  %6725 = fadd fast float %6722, %6705
  %6726 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  %6727 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  br label %6729

; <label>:6729                                    ; preds = %6706, %6691
  %6730 = phi float [ %6726, %6706 ], [ %6703, %6691 ]
  %6731 = phi float [ %6727, %6706 ], [ %6704, %6691 ]
  %6732 = phi float [ %6728, %6706 ], [ %6705, %6691 ]
  %6733 = call float @dx.op.binary.f32(i32 35, float %6731, float %6732)  ; FMax(a,b)
  %6734 = call float @dx.op.binary.f32(i32 35, float %6730, float %6733)  ; FMax(a,b)
  %6735 = fsub fast float 1.000000e+00, %6734
  %6736 = fmul fast float %6692, %6650
  %6737 = fmul fast float %6693, %6650
  %6738 = fmul fast float %6694, %6650
  %6739 = fsub fast float 1.000000e+00, %6583
  %6740 = bitcast float %6739 to i32
  %6741 = sitofp i32 %6740 to float
  %6742 = fmul fast float %6741, 5.000000e+00
  %6743 = fadd fast float %6742, 0xC1EFBF8940000000
  %6744 = fptosi float %6743 to i32
  %6745 = bitcast i32 %6744 to float
  %6746 = fmul fast float %6745, %4255
  %6747 = fmul fast float %6735, %6746
  %6748 = fmul fast float %6747, %5046
  %6749 = fmul fast float %6747, %5047
  %6750 = fmul fast float %6747, %5048
  %6751 = fadd fast float %6748, %6736
  %6752 = fadd fast float %6749, %6737
  %6753 = fadd fast float %6750, %6738
  %6754 = fmul fast float %6571, %4251
  %6755 = fmul fast float %6754, %6589
  %6756 = fmul fast float %6755, %6735
  %6757 = fmul fast float %6572, %4251
  %6758 = fmul fast float %6757, %6589
  %6759 = fmul fast float %6758, %6735
  %6760 = fmul fast float %6573, %4251
  %6761 = fmul fast float %6760, %6589
  %6762 = fmul fast float %6761, %6735
  %6763 = fadd fast float %6756, %6250
  %6764 = fadd fast float %6759, %6251
  %6765 = fadd fast float %6762, %6252
  %6766 = fmul fast float %6755, %6751
  %6767 = fmul fast float %6758, %6752
  %6768 = fmul fast float %6761, %6753
  %6769 = fadd fast float %6766, %6247
  %6770 = fadd fast float %6767, %6248
  %6771 = fadd fast float %6768, %6249
  br label %6379

; <label>:6772                                    ; preds = %6379
  br label %6773

; <label>:6773                                    ; preds = %6772, %6213
  %6774 = phi float [ %6215, %6213 ], [ %6380, %6772 ]
  %6775 = phi float [ %6216, %6213 ], [ %6381, %6772 ]
  %6776 = phi float [ %6217, %6213 ], [ %6382, %6772 ]
  %6777 = phi float [ %6218, %6213 ], [ %6383, %6772 ]
  %6778 = phi float [ %6219, %6213 ], [ %6384, %6772 ]
  %6779 = phi float [ %6220, %6213 ], [ %6385, %6772 ]
  %6780 = add i32 %6214, 1
  %6781 = icmp ugt i32 %6780, %6210
  br i1 %6781, label %6782, label %6213

; <label>:6782                                    ; preds = %6773
  br label %6783

; <label>:6783                                    ; preds = %6782, %6163, %6153
  %6784 = phi float [ %6154, %6153 ], [ %6154, %6163 ], [ %6774, %6782 ]
  %6785 = phi float [ %6155, %6153 ], [ %6155, %6163 ], [ %6775, %6782 ]
  %6786 = phi float [ %6156, %6153 ], [ %6156, %6163 ], [ %6776, %6782 ]
  %6787 = phi float [ %6157, %6153 ], [ %6157, %6163 ], [ %6777, %6782 ]
  %6788 = phi float [ %6158, %6153 ], [ %6158, %6163 ], [ %6778, %6782 ]
  %6789 = phi float [ %6159, %6153 ], [ %6159, %6163 ], [ %6779, %6782 ]
  %6790 = fmul fast float %4251, %4251
  %6791 = fsub fast float 1.000000e+00, %6790
  %6792 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6791, float %6791, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6793 = fsub fast float 1.000000e+00, %6792
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = fmul fast float %6795, %5052
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 3
  %6799 = fsub fast float 1.000000e+00, %4259
  %6800 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6801 = fadd fast float %6789, %4257
  %6802 = fmul fast float %6801, %4259
  %6803 = fmul fast float %6800, %6798
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 3
  %6806 = fmul fast float %6787, %4860
  %6807 = fmul fast float %6788, %4861
  %6808 = fmul fast float %6789, %4862
  %6809 = fcmp fast ogt float %86, %180
  %6810 = and i1 %6809, %4662
  %6811 = or i1 %4668, %6810
  %6812 = icmp eq i32 %4661, 2
  %6813 = fcmp fast ole float %86, %180
  %6814 = and i1 %6813, %6812
  %6815 = or i1 %6814, %6811
  br i1 %6810, label %6816, label %7073

; <label>:6816                                    ; preds = %6783
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6820 = fmul fast float %6818, %95
  %6821 = fmul fast float %6819, %96
  %6822 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6823 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6822, float %6823, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6825 = extractvalue %dx.types.ResRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.ResRet.f32 %6824, 1
  %6827 = extractvalue %dx.types.ResRet.f32 %6824, 2
  %6828 = extractvalue %dx.types.ResRet.f32 %6824, 3
  %6829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6822, float %6823, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.ResRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.ResRet.f32 %6829, 2
  %6833 = extractvalue %dx.types.ResRet.f32 %6829, 3
  %6834 = call float @dx.op.binary.f32(i32 35, float %6826, float %6827)  ; FMax(a,b)
  %6835 = call float @dx.op.binary.f32(i32 35, float %6825, float %6834)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 35, float %6835, float %6828)  ; FMax(a,b)
  %6837 = call float @dx.op.binary.f32(i32 36, float %6831, float %6832)  ; FMin(a,b)
  %6838 = call float @dx.op.binary.f32(i32 36, float %6830, float %6837)  ; FMin(a,b)
  %6839 = call float @dx.op.binary.f32(i32 36, float %6838, float %6833)  ; FMin(a,b)
  %6840 = fmul fast float %6836, 2.550000e+02
  %6841 = fadd fast float %6840, 0x3F70101020000000
  %6842 = fptoui float %6841 to i32
  %6843 = fmul fast float %6839, 2.550000e+02
  %6844 = fadd fast float %6843, 0x3F70101020000000
  %6845 = fptoui float %6844 to i32
  %6846 = icmp ult i32 %6842, %6845
  br i1 %6846, label %6847, label %7015

; <label>:6847                                    ; preds = %6816
  %6848 = fcmp fast ogt float %85, 9.843750e-01
  %6849 = fadd fast float %86, -4.000000e+00
  %6850 = select i1 %6848, float -4.000000e+00, float %6849
  %6851 = call float @dx.op.binary.f32(i32 35, float %6850, float 0.000000e+00)  ; FMax(a,b)
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = fadd fast float %6853, %6851
  %6855 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6856 = fmul fast float %6854, %6855
  %6857 = call float @dx.op.unary.f32(i32 23, float %6856)  ; Log(value)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6859 = fmul fast float %6858, %6857
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6862 = fmul fast float %6859, %6861
  %6863 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6864 = uitofp i32 %6842 to float
  %6865 = uitofp i32 %6845 to float
  %6866 = fadd fast float %6864, 5.000000e-01
  %6867 = fadd fast float %6865, 5.000000e-01
  %6868 = fmul fast float %6861, %6866
  %6869 = fmul fast float %6861, %6867
  %6870 = fadd fast float %6868, 0x3F0FFB4800000000
  %6871 = fadd fast float %6869, 0xBF0FFB4800000000
  %6872 = call float @dx.op.binary.f32(i32 35, float %6863, float %6870)  ; FMax(a,b)
  %6873 = call float @dx.op.binary.f32(i32 36, float %6872, float %6871)  ; FMin(a,b)
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 1
  %6876 = extractvalue %dx.types.CBufRet.f32 %6874, 2
  %6877 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6878 = fmul fast float %6875, %6873
  %6879 = fadd fast float %6877, %6878
  %6880 = fadd fast float %6877, %6876
  %6881 = fsub fast float %6875, %6876
  %6882 = fadd fast float %6881, %6877
  %6883 = call float @dx.op.binary.f32(i32 35, float %6879, float %6880)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 36, float %6883, float %6882)  ; FMin(a,b)
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6822, float %6823, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  %6889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.i32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.i32 %6889, 1
  %6892 = uitofp i32 %6890 to float
  %6893 = uitofp i32 %6891 to float
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6897 = fmul fast float %6892, %6822
  %6898 = fmul fast float %6893, %6823
  %6899 = fadd fast float %6897, -5.000000e-01
  %6900 = fadd fast float %6898, -5.000000e-01
  %6901 = call float @dx.op.unary.f32(i32 22, float %6899)  ; Frc(value)
  %6902 = call float @dx.op.unary.f32(i32 22, float %6900)  ; Frc(value)
  %6903 = fmul fast float %6901, %6901
  %6904 = fmul fast float %6903, %6901
  %6905 = fsub fast float 3.000000e+00, %6901
  %6906 = fmul fast float %6903, %6905
  %6907 = fmul fast float %6901, 3.000000e+00
  %6908 = fmul fast float %6904, 3.000000e+00
  %6909 = fmul fast float %6903, 6.000000e+00
  %6910 = fsub fast float %6908, %6909
  %6911 = fadd fast float %6910, 4.000000e+00
  %6912 = fmul fast float %6911, 0x3FC5555560000000
  %6913 = fmul fast float %6904, -3.000000e+00
  %6914 = fadd fast float %6903, %6901
  %6915 = fmul fast float %6914, 3.000000e+00
  %6916 = fadd fast float %6913, 1.000000e+00
  %6917 = fadd fast float %6916, %6915
  %6918 = fmul fast float %6904, 0x3FC5555560000000
  %6919 = fmul fast float %6902, %6902
  %6920 = fmul fast float %6919, %6902
  %6921 = fsub fast float 3.000000e+00, %6902
  %6922 = fmul fast float %6919, %6921
  %6923 = fmul fast float %6902, 3.000000e+00
  %6924 = fmul fast float %6920, 3.000000e+00
  %6925 = fmul fast float %6919, 6.000000e+00
  %6926 = fsub fast float %6924, %6925
  %6927 = fadd fast float %6926, 4.000000e+00
  %6928 = fmul fast float %6927, 0x3FC5555560000000
  %6929 = fmul fast float %6920, -3.000000e+00
  %6930 = fadd fast float %6919, %6902
  %6931 = fmul fast float %6930, 3.000000e+00
  %6932 = fadd fast float %6929, 1.000000e+00
  %6933 = fadd fast float %6932, %6931
  %6934 = fmul fast float %6920, 0x3FC5555560000000
  %6935 = fadd fast float %6901, 1.000000e+00
  %6936 = fsub fast float 1.000000e+00, %6907
  %6937 = fadd fast float %6936, %6906
  %6938 = fadd fast float %6937, %6911
  %6939 = fmul fast float %6938, 0x3FC5555560000000
  %6940 = fdiv fast float %6912, %6939
  %6941 = fsub fast float %6935, %6940
  %6942 = fsub fast float 1.000000e+00, %6901
  %6943 = fadd fast float %6917, %6904
  %6944 = fmul fast float %6943, 0x3FC5555560000000
  %6945 = fdiv fast float %6918, %6944
  %6946 = fadd fast float %6942, %6945
  %6947 = fadd fast float %6902, 1.000000e+00
  %6948 = fsub fast float 1.000000e+00, %6923
  %6949 = fadd fast float %6948, %6922
  %6950 = fadd fast float %6949, %6927
  %6951 = fmul fast float %6950, 0x3FC5555560000000
  %6952 = fdiv fast float %6928, %6951
  %6953 = fsub fast float %6947, %6952
  %6954 = fsub fast float 1.000000e+00, %6902
  %6955 = fadd fast float %6933, %6920
  %6956 = fmul fast float %6955, 0x3FC5555560000000
  %6957 = fdiv fast float %6934, %6956
  %6958 = fadd fast float %6957, %6954
  %6959 = fmul fast float %6941, %6895
  %6960 = fsub fast float %6822, %6959
  %6961 = fmul fast float %6946, %6895
  %6962 = fadd fast float %6961, %6822
  %6963 = fmul fast float %6958, %6896
  %6964 = fadd fast float %6963, %6823
  %6965 = fmul fast float %6953, %6896
  %6966 = fsub fast float %6823, %6965
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6960, float %6966, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6962, float %6966, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6960, float %6964, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6962, float %6964, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = fsub fast float %6976, %6968
  %6984 = fsub fast float %6977, %6969
  %6985 = fsub fast float %6978, %6970
  %6986 = fmul fast float %6983, %6956
  %6987 = fmul fast float %6984, %6956
  %6988 = fmul fast float %6985, %6956
  %6989 = fadd fast float %6986, %6968
  %6990 = fadd fast float %6987, %6969
  %6991 = fadd fast float %6988, %6970
  %6992 = fsub fast float %6980, %6972
  %6993 = fsub fast float %6981, %6973
  %6994 = fsub fast float %6982, %6974
  %6995 = fmul fast float %6992, %6956
  %6996 = fmul fast float %6993, %6956
  %6997 = fmul fast float %6994, %6956
  %6998 = fsub fast float %6972, %6989
  %6999 = fadd fast float %6998, %6995
  %7000 = fsub fast float %6973, %6990
  %7001 = fadd fast float %7000, %6996
  %7002 = fsub fast float %6974, %6991
  %7003 = fadd fast float %7002, %6997
  %7004 = fmul fast float %6999, %6944
  %7005 = fmul fast float %7001, %6944
  %7006 = fmul fast float %7003, %6944
  %7007 = fadd fast float %7004, %6989
  %7008 = fadd fast float %7005, %6990
  %7009 = fadd fast float %7006, %6991
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7012 = fmul fast float %7007, %7011
  %7013 = fmul fast float %7008, %7011
  %7014 = fmul fast float %7009, %7011
  br label %7015

; <label>:7015                                    ; preds = %6847, %6816
  %7016 = phi float [ %6886, %6847 ], [ 1.000000e+00, %6816 ]
  %7017 = phi float [ %6887, %6847 ], [ 1.000000e+00, %6816 ]
  %7018 = phi float [ %6888, %6847 ], [ 1.000000e+00, %6816 ]
  %7019 = phi float [ %7012, %6847 ], [ 0.000000e+00, %6816 ]
  %7020 = phi float [ %7013, %6847 ], [ 0.000000e+00, %6816 ]
  %7021 = phi float [ %7014, %6847 ], [ 0.000000e+00, %6816 ]
  %7022 = fmul fast float %7019, %6793
  %7023 = fmul fast float %7020, %6793
  %7024 = fmul fast float %7021, %6793
  %7025 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7017, float %7018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7026 = call float @dx.op.dot3.f32(i32 55, float %7022, float %7023, float %7024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7027 = select i1 %220, float %7025, float %7016
  %7028 = select i1 %220, float %7025, float %7017
  %7029 = select i1 %220, float 1.000000e+00, float %7018
  %7030 = select i1 %220, float %7026, float %7022
  %7031 = select i1 %220, float 0.000000e+00, float %7023
  %7032 = select i1 %220, float 0.000000e+00, float %7024
  %7033 = fmul fast float %7027, %6806
  %7034 = fmul fast float %7028, %6807
  %7035 = fmul fast float %7029, %6808
  %7036 = fadd fast float %7033, %7030
  %7037 = fadd fast float %7034, %7031
  %7038 = fadd fast float %7032, %7035
  %7039 = fmul fast float %7027, %6784
  %7040 = fmul fast float %7028, %6785
  %7041 = fmul fast float %7029, %6786
  %7042 = fmul fast float %128, %6818
  %7043 = fmul fast float %130, %6819
  %7044 = fsub fast float 1.000000e+00, %7042
  %7045 = fsub fast float 1.000000e+00, %7043
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.CBufRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %7050 = fmul fast float %7044, %7047
  %7051 = fmul fast float %7044, %7048
  %7052 = fmul fast float %7044, %7049
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.CBufRet.f32 %7053, 2
  %7057 = fmul fast float %7045, %7054
  %7058 = fmul fast float %7045, %7055
  %7059 = fmul fast float %7045, %7056
  %7060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.CBufRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.CBufRet.f32 %7060, 2
  %7064 = fadd fast float %7057, %7061
  %7065 = fadd fast float %7064, %7050
  %7066 = fadd fast float %7058, %7062
  %7067 = fadd fast float %7066, %7051
  %7068 = fadd fast float %7059, %7063
  %7069 = fadd fast float %7068, %7052
  %7070 = fmul fast float %7065, %180
  %7071 = fmul fast float %7067, %180
  %7072 = fmul fast float %7069, %180
  br label %7073

; <label>:7073                                    ; preds = %7015, %6783
  %7074 = phi float [ %7070, %7015 ], [ %158, %6783 ]
  %7075 = phi float [ %7071, %7015 ], [ %159, %6783 ]
  %7076 = phi float [ %7072, %7015 ], [ %160, %6783 ]
  %7077 = phi float [ %180, %7015 ], [ %86, %6783 ]
  %7078 = phi float [ %7036, %7015 ], [ %6806, %6783 ]
  %7079 = phi float [ %7037, %7015 ], [ %6807, %6783 ]
  %7080 = phi float [ %7038, %7015 ], [ %6808, %6783 ]
  %7081 = phi float [ %7039, %7015 ], [ %6784, %6783 ]
  %7082 = phi float [ %7040, %7015 ], [ %6785, %6783 ]
  %7083 = phi float [ %7041, %7015 ], [ %6786, %6783 ]
  %7084 = phi float [ %7016, %7015 ], [ 1.000000e+00, %6783 ]
  br i1 %6815, label %8239, label %7085

; <label>:7085                                    ; preds = %7073
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.CBufRet.f32 %7086, 2
  %7090 = extractvalue %dx.types.CBufRet.f32 %7086, 3
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7095 = extractvalue %dx.types.CBufRet.f32 %7091, 3
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %7100 = extractvalue %dx.types.CBufRet.f32 %7096, 3
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7105 = extractvalue %dx.types.CBufRet.f32 %7101, 3
  %7106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.f32 %7106, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7113 = fcmp fast olt float %7112, -5.000000e-01
  %7114 = call float @dx.op.dot3.f32(i32 55, float %7074, float %7075, float %7076, float %7074, float %7075, float %7076)  ; Dot3(ax,ay,az,bx,by,bz)
  %7115 = call float @dx.op.unary.f32(i32 25, float %7114)  ; Rsqrt(value)
  %7116 = fmul fast float %7115, %7114
  %7117 = fmul fast float %7115, %7074
  %7118 = fmul fast float %7115, %7075
  %7119 = fmul fast float %7115, %7076
  %7120 = fadd fast float %7116, %7090
  %7121 = call float @dx.op.dot3.f32(i32 55, float %7117, float %7118, float %7119, float %7087, float %7088, float %7089)  ; Dot3(ax,ay,az,bx,by,bz)
  %7122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.i32 %7122, 1
  %7124 = and i32 %7123, 1
  %7125 = icmp ne i32 %7124, 0
  %7126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7126, 2
  %7128 = fcmp fast ogt float %7127, 0.000000e+00
  %7129 = and i1 %7125, %7128
  br i1 %7129, label %7130, label %7536, !dx.controlflow.hints !119

; <label>:7130                                    ; preds = %7085
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7137 = fsub fast float %7134, %7136
  %7138 = and i32 %7123, 2
  %7139 = extractvalue %dx.types.CBufRet.i32 %7122, 0
  %7140 = call i32 @dx.op.binary.i32(i32 40, i32 %7139, i32 3)  ; UMin(a,b)
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7135, 1
  %7146 = fsub fast float %7142, %7144
  %7147 = fsub fast float %7143, %7145
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 0
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  %7151 = fsub fast float -0.000000e+00, %7146
  %7152 = fsub fast float -0.000000e+00, %7147
  %7153 = call float @dx.op.dot2.f32(i32 54, float %7117, float %7118, float %7117, float %7118)  ; Dot2(ax,ay,bx,by)
  %7154 = call float @dx.op.dot2.f32(i32 54, float %7117, float %7118, float %7151, float %7152)  ; Dot2(ax,ay,bx,by)
  %7155 = fmul fast float %7154, 2.000000e+00
  %7156 = call float @dx.op.dot2.f32(i32 54, float %7151, float %7152, float %7151, float %7152)  ; Dot2(ax,ay,bx,by)
  %7157 = fmul fast float %7149, %7149
  %7158 = fsub fast float %7156, %7157
  %7159 = fmul fast float %7155, %7155
  %7160 = fmul fast float %7153, 4.000000e+00
  %7161 = fmul fast float %7160, %7158
  %7162 = fsub fast float %7159, %7161
  %7163 = fcmp fast ogt float %7162, 0.000000e+00
  br i1 %7163, label %7164, label %7179

; <label>:7164                                    ; preds = %7130
  %7165 = fcmp fast ogt float %7155, 0.000000e+00
  %7166 = call float @dx.op.unary.f32(i32 24, float %7162)  ; Sqrt(value)
  %7167 = fsub fast float -0.000000e+00, %7166
  %7168 = select i1 %7165, float %7166, float %7167
  %7169 = fadd fast float %7168, %7155
  %7170 = fmul float %7169, -5.000000e-01
  %7171 = fdiv fast float %7170, %7153
  %7172 = call float @dx.op.binary.f32(i32 35, float %7171, float 0.000000e+00)  ; FMax(a,b)
  %7173 = call float @dx.op.binary.f32(i32 36, float %7116, float %7172)  ; FMin(a,b)
  %7174 = fdiv fast float %7158, %7170
  %7175 = call float @dx.op.binary.f32(i32 35, float %7174, float 0.000000e+00)  ; FMax(a,b)
  %7176 = call float @dx.op.binary.f32(i32 36, float %7116, float %7175)  ; FMin(a,b)
  %7177 = call float @dx.op.binary.f32(i32 36, float %7173, float %7176)  ; FMin(a,b)
  %7178 = call float @dx.op.binary.f32(i32 35, float %7173, float %7176)  ; FMax(a,b)
  br label %7179

; <label>:7179                                    ; preds = %7164, %7130
  %7180 = phi float [ %7178, %7164 ], [ -1.000000e+00, %7130 ]
  %7181 = phi float [ %7177, %7164 ], [ -1.000000e+00, %7130 ]
  %7182 = phi i1 [ true, %7164 ], [ false, %7130 ]
  %7183 = and i1 %7150, %7182
  br i1 %7183, label %7184, label %7186

; <label>:7184                                    ; preds = %7179
  %7185 = fcmp fast oeq float %7181, %7180
  br i1 %7185, label %7489, label %7187

; <label>:7186                                    ; preds = %7179
  br i1 %7150, label %7489, label %7187

; <label>:7187                                    ; preds = %7186, %7184
  %7188 = phi float [ %7116, %7186 ], [ %7180, %7184 ]
  %7189 = phi float [ 0.000000e+00, %7186 ], [ %7181, %7184 ]
  %7190 = icmp ne i32 %7138, 0
  %7191 = fmul fast float %7188, %7119
  %7192 = fadd fast float %7191, %7132
  %7193 = fmul fast float %7192, %7188
  %7194 = select i1 %7190, float 0.000000e+00, float %7193
  %7195 = fcmp fast oeq float %7119, 0.000000e+00
  %7196 = fdiv fast float %7137, %7119
  %7197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7196)  ; FMax(a,b)
  %7198 = select i1 %7195, float %7188, float %7197
  %7199 = call float @dx.op.binary.f32(i32 36, float %7188, float %7198)  ; FMin(a,b)
  %7200 = fcmp fast ogt float %7119, 0.000000e+00
  %7201 = fcmp fast olt float %7137, 0.000000e+00
  br i1 %7200, label %7202, label %7259

; <label>:7202                                    ; preds = %7187
  %7203 = icmp eq i32 %7138, 0
  br i1 %7201, label %7204, label %7248

; <label>:7204                                    ; preds = %7202
  %7205 = select i1 %7203, float %7188, float 0.000000e+00
  %7206 = fsub fast float -0.000000e+00, %7205
  %7207 = call float @dx.op.unary.f32(i32 6, float %7206)  ; FAbs(value)
  %7208 = fmul fast float %7205, %7119
  %7209 = fadd fast float %7208, %7132
  %7210 = fmul fast float %7207, %7209
  %7211 = fsub fast float %7194, %7210
  %7212 = fsub fast float %7188, %7207
  %7213 = select i1 %7203, float %7212, float 0.000000e+00
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.CBufRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.CBufRet.f32 %7214, 2
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 0
  %7220 = extractvalue %dx.types.CBufRet.f32 %7218, 1
  %7221 = extractvalue %dx.types.CBufRet.f32 %7218, 2
  %7222 = extractvalue %dx.types.CBufRet.f32 %7218, 3
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 3
  %7225 = call float @dx.op.binary.f32(i32 36, float %7211, float %7224)  ; FMin(a,b)
  %7226 = fmul fast float %7222, %7213
  %7227 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  %7228 = fsub fast float %7219, %7215
  %7229 = fsub fast float %7220, %7216
  %7230 = fsub fast float %7221, %7217
  %7231 = fmul fast float %7227, %7228
  %7232 = fmul fast float %7227, %7229
  %7233 = fmul fast float %7227, %7230
  %7234 = fadd fast float %7231, %7215
  %7235 = fadd fast float %7232, %7216
  %7236 = fadd fast float %7233, %7217
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7240 = fadd fast float %7239, %7238
  %7241 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7243 = extractvalue %dx.types.CBufRet.f32 %7237, 3
  %7244 = fadd fast float %7243, %7242
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = fmul fast float %7241, %7225
  %7247 = fmul fast float %7246, %7245
  br label %7489

; <label>:7248                                    ; preds = %7202
  br i1 %7203, label %7249, label %7270

; <label>:7249                                    ; preds = %7248
  %7250 = call float @dx.op.binary.f32(i32 36, float %7199, float %7189)  ; FMin(a,b)
  %7251 = fsub fast float %7199, %7250
  %7252 = fsub fast float %7251, %7188
  %7253 = call float @dx.op.unary.f32(i32 6, float %7252)  ; FAbs(value)
  %7254 = fadd fast float %7251, %7188
  %7255 = fmul fast float %7254, %7119
  %7256 = fadd fast float %7255, %7132
  %7257 = fmul fast float %7256, %7253
  %7258 = fsub fast float %7194, %7257
  br label %7270

; <label>:7259                                    ; preds = %7187
  br i1 %7201, label %7260, label %7270

; <label>:7260                                    ; preds = %7259
  %7261 = call float @dx.op.binary.f32(i32 35, float %7189, float %7199)  ; FMax(a,b)
  %7262 = icmp eq i32 %7138, 0
  %7263 = select i1 %7262, float %7199, float 0.000000e+00
  %7264 = fsub fast float -0.000000e+00, %7263
  %7265 = call float @dx.op.unary.f32(i32 6, float %7264)  ; FAbs(value)
  %7266 = fmul fast float %7263, %7119
  %7267 = fadd fast float %7266, %7132
  %7268 = fmul fast float %7265, %7267
  %7269 = fsub fast float %7194, %7268
  br label %7270

; <label>:7270                                    ; preds = %7260, %7259, %7249, %7248
  %7271 = phi float [ %7189, %7248 ], [ %7189, %7249 ], [ %7261, %7260 ], [ %7189, %7259 ]
  %7272 = phi float [ 0.000000e+00, %7248 ], [ %7253, %7249 ], [ %7265, %7260 ], [ 0.000000e+00, %7259 ]
  %7273 = phi float [ %7194, %7248 ], [ %7258, %7249 ], [ %7269, %7260 ], [ %7194, %7259 ]
  %7274 = phi float [ %7199, %7248 ], [ %7199, %7249 ], [ %7188, %7260 ], [ %7188, %7259 ]
  %7275 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7275, align 4, !tbaa !120, !noalias !122
  %7276 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7276, align 4, !tbaa !120, !noalias !122
  %7277 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7277, align 4, !tbaa !120, !noalias !122
  %7278 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7278, align 4, !tbaa !120, !noalias !122
  %7279 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7279, align 4, !tbaa !120, !noalias !122
  %7280 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7280, align 4, !tbaa !120, !noalias !122
  %7281 = icmp sgt i32 %7140, 0
  br i1 %7281, label %7282, label %7343

; <label>:7282                                    ; preds = %7270
  br label %7283

; <label>:7283                                    ; preds = %7332, %7282
  %7284 = phi i32 [ %7333, %7332 ], [ 0, %7282 ]
  %7285 = phi i32 [ %7334, %7332 ], [ 0, %7282 ]
  %7286 = add nuw i32 %7285, 171
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7286)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7293 = fsub fast float %7288, %7291
  %7294 = fsub fast float %7289, %7292
  %7295 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7296 = fsub fast float -0.000000e+00, %7293
  %7297 = fsub fast float -0.000000e+00, %7294
  %7298 = call float @dx.op.dot2.f32(i32 54, float %7117, float %7118, float %7296, float %7297)  ; Dot2(ax,ay,bx,by)
  %7299 = fmul fast float %7298, 2.000000e+00
  %7300 = call float @dx.op.dot2.f32(i32 54, float %7296, float %7297, float %7296, float %7297)  ; Dot2(ax,ay,bx,by)
  %7301 = fmul fast float %7295, %7295
  %7302 = fsub fast float %7300, %7301
  %7303 = fmul fast float %7299, %7299
  %7304 = fmul fast float %7160, %7302
  %7305 = fsub fast float %7303, %7304
  %7306 = fcmp fast ogt float %7305, 0.000000e+00
  br i1 %7306, label %7307, label %7322

; <label>:7307                                    ; preds = %7283
  %7308 = fcmp fast ogt float %7299, 0.000000e+00
  %7309 = call float @dx.op.unary.f32(i32 24, float %7305)  ; Sqrt(value)
  %7310 = fsub fast float -0.000000e+00, %7309
  %7311 = select i1 %7308, float %7309, float %7310
  %7312 = fadd fast float %7311, %7299
  %7313 = fmul float %7312, -5.000000e-01
  %7314 = fdiv fast float %7313, %7153
  %7315 = call float @dx.op.binary.f32(i32 35, float %7314, float 0.000000e+00)  ; FMax(a,b)
  %7316 = call float @dx.op.binary.f32(i32 36, float %7188, float %7315)  ; FMin(a,b)
  %7317 = fdiv fast float %7302, %7313
  %7318 = call float @dx.op.binary.f32(i32 35, float %7317, float 0.000000e+00)  ; FMax(a,b)
  %7319 = call float @dx.op.binary.f32(i32 36, float %7188, float %7318)  ; FMin(a,b)
  %7320 = call float @dx.op.binary.f32(i32 36, float %7316, float %7319)  ; FMin(a,b)
  %7321 = call float @dx.op.binary.f32(i32 35, float %7316, float %7319)  ; FMax(a,b)
  br label %7322

; <label>:7322                                    ; preds = %7307, %7283
  %7323 = phi float [ %7321, %7307 ], [ -1.000000e+00, %7283 ]
  %7324 = phi float [ %7320, %7307 ], [ -1.000000e+00, %7283 ]
  %7325 = phi i1 [ true, %7307 ], [ false, %7283 ]
  br i1 %7325, label %7326, label %7332

; <label>:7326                                    ; preds = %7322
  %7327 = call float @dx.op.binary.f32(i32 35, float %7271, float %7324)  ; FMax(a,b)
  %7328 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7285
  store float %7327, float* %7328, align 4, !tbaa !120, !noalias !122
  %7329 = call float @dx.op.binary.f32(i32 35, float %7271, float %7323)  ; FMax(a,b)
  %7330 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7285
  store float %7329, float* %7330, align 4, !tbaa !120, !noalias !122
  %7331 = add nsw i32 %7284, 1
  br label %7332

; <label>:7332                                    ; preds = %7326, %7322
  %7333 = phi i32 [ %7331, %7326 ], [ %7284, %7322 ]
  %7334 = add nuw nsw i32 %7285, 1
  %7335 = icmp eq i32 %7334, %7140
  br i1 %7335, label %7336, label %7283

; <label>:7336                                    ; preds = %7332
  %7337 = load float, float* %7277, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7338 = load float, float* %7276, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7339 = load float, float* %7275, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7340 = load float, float* %7280, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7341 = load float, float* %7279, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7342 = load float, float* %7278, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7343

; <label>:7343                                    ; preds = %7336, %7270
  %7344 = phi float [ -1.000000e+00, %7270 ], [ %7342, %7336 ]
  %7345 = phi float [ -1.000000e+00, %7270 ], [ %7341, %7336 ]
  %7346 = phi float [ -1.000000e+00, %7270 ], [ %7340, %7336 ]
  %7347 = phi float [ -1.000000e+00, %7270 ], [ %7339, %7336 ]
  %7348 = phi float [ -1.000000e+00, %7270 ], [ %7338, %7336 ]
  %7349 = phi float [ -1.000000e+00, %7270 ], [ %7337, %7336 ]
  %7350 = phi i32 [ 0, %7270 ], [ %7333, %7336 ]
  %7351 = call float @dx.op.binary.f32(i32 36, float %7348, float %7349)  ; FMin(a,b)
  %7352 = call float @dx.op.binary.f32(i32 36, float %7347, float %7351)  ; FMin(a,b)
  %7353 = call float @dx.op.binary.f32(i32 35, float %7347, float %7348)  ; FMax(a,b)
  %7354 = call float @dx.op.binary.f32(i32 36, float %7353, float %7349)  ; FMin(a,b)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7347, float %7348)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 35, float %7355, float %7354)  ; FMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7348, float %7349)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7347, float %7357)  ; FMax(a,b)
  store float %7352, float* %7275, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7356, float* %7276, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7358, float* %7277, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7359 = call float @dx.op.binary.f32(i32 36, float %7345, float %7346)  ; FMin(a,b)
  %7360 = call float @dx.op.binary.f32(i32 36, float %7344, float %7359)  ; FMin(a,b)
  %7361 = call float @dx.op.binary.f32(i32 35, float %7344, float %7345)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7361, float %7346)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7344, float %7345)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float %7362)  ; FMax(a,b)
  %7365 = call float @dx.op.binary.f32(i32 35, float %7345, float %7346)  ; FMax(a,b)
  %7366 = call float @dx.op.binary.f32(i32 35, float %7344, float %7365)  ; FMax(a,b)
  store float %7360, float* %7278, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7364, float* %7279, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7366, float* %7280, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7367 = sub nsw i32 3, %7350
  %7368 = icmp sgt i32 %7367, 2
  br i1 %7368, label %7369, label %7407

; <label>:7369                                    ; preds = %7343
  %7370 = icmp eq i32 %7138, 0
  %7371 = fsub fast float %7188, %7272
  %7372 = select i1 %7370, float %7371, float %7272
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7381 = extractvalue %dx.types.CBufRet.f32 %7377, 3
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 3
  %7384 = call float @dx.op.binary.f32(i32 36, float %7273, float %7383)  ; FMin(a,b)
  %7385 = fmul fast float %7381, %7372
  %7386 = call float @dx.op.unary.f32(i32 7, float %7385)  ; Saturate(value)
  %7387 = fsub fast float %7378, %7374
  %7388 = fsub fast float %7379, %7375
  %7389 = fsub fast float %7380, %7376
  %7390 = fmul fast float %7386, %7387
  %7391 = fmul fast float %7386, %7388
  %7392 = fmul fast float %7386, %7389
  %7393 = fadd fast float %7390, %7374
  %7394 = fadd fast float %7391, %7375
  %7395 = fadd fast float %7392, %7376
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 0
  %7398 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7399 = fadd fast float %7398, %7397
  %7400 = call float @dx.op.unary.f32(i32 7, float %7399)  ; Saturate(value)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7396, 2
  %7402 = extractvalue %dx.types.CBufRet.f32 %7396, 3
  %7403 = fadd fast float %7402, %7401
  %7404 = call float @dx.op.unary.f32(i32 7, float %7403)  ; Saturate(value)
  %7405 = fmul fast float %7400, %7384
  %7406 = fmul fast float %7405, %7404
  br label %7489

; <label>:7407                                    ; preds = %7343
  %7408 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7367
  %7409 = load float, float* %7408, align 4, !tbaa !120, !noalias !122
  %7410 = fcmp fast olt float %7409, %7274
  %7411 = icmp sgt i32 %7350, 0
  %7412 = and i1 %7411, %7410
  br i1 %7412, label %7413, label %7450

; <label>:7413                                    ; preds = %7407
  br label %7414

; <label>:7414                                    ; preds = %7443, %7413
  %7415 = phi float [ %7444, %7443 ], [ %7272, %7413 ]
  %7416 = phi float [ %7445, %7443 ], [ %7273, %7413 ]
  %7417 = phi float [ %7425, %7443 ], [ %7409, %7413 ]
  %7418 = phi i32 [ %7422, %7443 ], [ %7367, %7413 ]
  %7419 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7418
  %7420 = load float, float* %7419, align 4, !tbaa !120, !noalias !122
  %7421 = icmp slt i32 %7418, 2
  %7422 = add nsw i32 %7418, 1
  %7423 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7422
  %7424 = load float, float* %7423, align 4, !tbaa !120, !noalias !122
  %7425 = select i1 %7421, float %7424, float %7188
  %7426 = call float @dx.op.binary.f32(i32 36, float %7425, float %7420)  ; FMin(a,b)
  %7427 = call float @dx.op.binary.f32(i32 36, float %7274, float %7426)  ; FMin(a,b)
  %7428 = icmp eq i32 %7138, 0
  %7429 = fadd fast float %7427, %7417
  %7430 = fmul fast float %7429, %7119
  %7431 = fadd fast float %7430, %7132
  br i1 %7428, label %7437, label %7432

; <label>:7432                                    ; preds = %7414
  %7433 = fsub fast float %7427, %7417
  %7434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7433)  ; FMax(a,b)
  %7435 = fmul fast float %7434, %7431
  %7436 = fadd fast float %7435, %7416
  br label %7443

; <label>:7437                                    ; preds = %7414
  %7438 = fsub fast float %7417, %7427
  %7439 = call float @dx.op.unary.f32(i32 6, float %7438)  ; FAbs(value)
  %7440 = fadd fast float %7439, %7415
  %7441 = fmul fast float %7439, %7431
  %7442 = fsub fast float %7416, %7441
  br label %7443

; <label>:7443                                    ; preds = %7437, %7432
  %7444 = phi float [ %7434, %7432 ], [ %7440, %7437 ]
  %7445 = phi float [ %7436, %7432 ], [ %7442, %7437 ]
  %7446 = fcmp fast olt float %7425, %7274
  %7447 = icmp slt i32 %7422, 3
  %7448 = and i1 %7447, %7446
  br i1 %7448, label %7414, label %7449

; <label>:7449                                    ; preds = %7443
  br label %7450

; <label>:7450                                    ; preds = %7449, %7407
  %7451 = phi float [ %7272, %7407 ], [ %7444, %7449 ]
  %7452 = phi float [ %7273, %7407 ], [ %7445, %7449 ]
  %7453 = fsub fast float %7188, %7451
  %7454 = select i1 %7190, float %7451, float %7453
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.CBufRet.f32 %7459, 2
  %7463 = extractvalue %dx.types.CBufRet.f32 %7459, 3
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 3
  %7466 = call float @dx.op.binary.f32(i32 36, float %7452, float %7465)  ; FMin(a,b)
  %7467 = fmul fast float %7463, %7454
  %7468 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7469 = fsub fast float %7460, %7456
  %7470 = fsub fast float %7461, %7457
  %7471 = fsub fast float %7462, %7458
  %7472 = fmul fast float %7468, %7469
  %7473 = fmul fast float %7468, %7470
  %7474 = fmul fast float %7468, %7471
  %7475 = fadd fast float %7472, %7456
  %7476 = fadd fast float %7473, %7457
  %7477 = fadd fast float %7474, %7458
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7481 = fadd fast float %7480, %7479
  %7482 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7478, 3
  %7485 = fadd fast float %7484, %7483
  %7486 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7487 = fmul fast float %7482, %7466
  %7488 = fmul fast float %7487, %7486
  br label %7489

; <label>:7489                                    ; preds = %7450, %7369, %7204, %7186, %7184
  %7490 = phi float [ %7213, %7204 ], [ %7372, %7369 ], [ %7454, %7450 ], [ 0.000000e+00, %7184 ], [ 0.000000e+00, %7186 ]
  %7491 = phi float [ %7247, %7204 ], [ %7406, %7369 ], [ %7488, %7450 ], [ 0.000000e+00, %7184 ], [ 0.000000e+00, %7186 ]
  %7492 = phi float [ %7234, %7204 ], [ %7393, %7369 ], [ %7475, %7450 ], [ 0.000000e+00, %7184 ], [ 0.000000e+00, %7186 ]
  %7493 = phi float [ %7235, %7204 ], [ %7394, %7369 ], [ %7476, %7450 ], [ 0.000000e+00, %7184 ], [ 0.000000e+00, %7186 ]
  %7494 = phi float [ %7236, %7204 ], [ %7395, %7369 ], [ %7477, %7450 ], [ 0.000000e+00, %7184 ], [ 0.000000e+00, %7186 ]
  %7495 = fmul fast float %7127, %7491
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7498 = fsub fast float %7134, %7497
  %7499 = fcmp fast olt float %7495, -2.000000e+01
  %7500 = call float @dx.op.unary.f32(i32 21, float %7495)  ; Exp(value)
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 2
  %7503 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7506 = fmul fast float %7503, %7498
  %7507 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7508 = fsub fast float 1.000000e+00, %7507
  %7509 = fmul fast float %7119, 5.000000e-01
  %7510 = fadd fast float %7509, 5.000000e-01
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float 1.000000e+00, %7511
  %7513 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7508)  ; FMax(a,b)
  %7514 = fdiv fast float %7512, %7513
  %7515 = fsub fast float %7498, %7076
  %7516 = call float @dx.op.unary.f32(i32 6, float %7515)  ; FAbs(value)
  %7517 = fmul fast float %7516, %7502
  %7518 = call float @dx.op.unary.f32(i32 7, float %7514)  ; Saturate(value)
  %7519 = fsub fast float 1.000000e+00, %7517
  %7520 = fmul fast float %7519, %7518
  %7521 = fadd fast float %7520, %7517
  %7522 = fmul fast float %7505, %7498
  %7523 = call float @dx.op.unary.f32(i32 7, float %7522)  ; Saturate(value)
  %7524 = fsub fast float 1.000000e+00, %7521
  %7525 = fmul fast float %7524, %7523
  %7526 = fadd fast float %7525, %7521
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = fadd fast float %7500, -1.000000e+00
  %7529 = select i1 %7499, float -1.000000e+00, float %7528
  %7530 = fmul fast float %7527, %7529
  %7531 = fadd fast float %7530, 1.000000e+00
  %7532 = fsub fast float -0.000000e+00, %7530
  %7533 = fmul fast float %7492, %7532
  %7534 = fmul fast float %7493, %7532
  %7535 = fmul fast float %7494, %7532
  br label %7536

; <label>:7536                                    ; preds = %7489, %7085
  %7537 = phi float [ %7490, %7489 ], [ 0.000000e+00, %7085 ]
  %7538 = phi float [ %7531, %7489 ], [ 1.000000e+00, %7085 ]
  %7539 = phi float [ %7533, %7489 ], [ 0.000000e+00, %7085 ]
  %7540 = phi float [ %7534, %7489 ], [ 0.000000e+00, %7085 ]
  %7541 = phi float [ %7535, %7489 ], [ 0.000000e+00, %7085 ]
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 1
  %7544 = fsub fast float 1.000000e+00, %7538
  %7545 = fmul fast float %7544, %7120
  %7546 = fmul fast float %7545, %7543
  %7547 = fsub fast float %7120, %7546
  br i1 %7113, label %7548, label %7577, !dx.controlflow.hints !158

; <label>:7548                                    ; preds = %7536
  %7549 = fmul fast float %7121, %7110
  %7550 = fadd fast float %7549, %7111
  %7551 = call float @dx.op.unary.f32(i32 7, float %7550)  ; Saturate(value)
  %7552 = fmul fast float %7092, %7547
  %7553 = fsub fast float -0.000000e+00, %7552
  %7554 = fmul fast float %7093, %7547
  %7555 = fsub fast float -0.000000e+00, %7554
  %7556 = call float @dx.op.unary.f32(i32 21, float %7553)  ; Exp(value)
  %7557 = call float @dx.op.unary.f32(i32 21, float %7555)  ; Exp(value)
  %7558 = call float @dx.op.binary.f32(i32 35, float %7100, float %7556)  ; FMax(a,b)
  %7559 = call float @dx.op.binary.f32(i32 35, float %7100, float %7557)  ; FMax(a,b)
  %7560 = fsub fast float %7559, %7558
  %7561 = fmul fast float %7560, %7551
  %7562 = fadd fast float %7561, %7558
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = fsub fast float %7097, %7102
  %7565 = fsub fast float %7098, %7103
  %7566 = fsub fast float %7099, %7104
  %7567 = fmul fast float %7551, %7564
  %7568 = fmul fast float %7551, %7565
  %7569 = fmul fast float %7551, %7566
  %7570 = fadd fast float %7567, %7102
  %7571 = fadd fast float %7568, %7103
  %7572 = fadd fast float %7569, %7104
  %7573 = fsub fast float 1.000000e+00, %7563
  %7574 = fmul fast float %7573, %7570
  %7575 = fmul fast float %7573, %7571
  %7576 = fmul fast float %7573, %7572
  br label %7636

; <label>:7577                                    ; preds = %7536
  %7578 = fmul fast float %7547, %7109
  %7579 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7580 = fsub fast float 2.000000e+00, %7579
  %7581 = fmul fast float %7579, 9.921875e-01
  %7582 = fmul fast float %7581, %7580
  %7583 = fadd fast float %7582, 3.906250e-03
  %7584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7583, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = fsub fast float %7579, %7585
  %7587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7586)  ; FMax(a,b)
  %7588 = fmul fast float %7095, %7076
  %7589 = call float @dx.op.unary.f32(i32 6, float %7588)  ; FAbs(value)
  %7590 = fcmp fast ogt float %7589, 0x3EB0C6F7A0000000
  br i1 %7590, label %7591, label %7597, !dx.controlflow.hints !159

; <label>:7591                                    ; preds = %7577
  %7592 = fmul fast float %7588, 0xBFF7154760000000
  %7593 = call float @dx.op.unary.f32(i32 21, float %7592)  ; Exp(value)
  %7594 = fsub fast float 1.000000e+00, %7593
  %7595 = fdiv fast float %7594, %7588
  %7596 = fmul fast float %7595, %7105
  br label %7597

; <label>:7597                                    ; preds = %7591, %7577
  %7598 = phi float [ %7596, %7591 ], [ %7105, %7577 ]
  %7599 = fadd fast float %7598, %7107
  %7600 = fmul fast float %7599, %7587
  %7601 = fmul fast float %7092, %7600
  %7602 = fsub fast float -0.000000e+00, %7601
  %7603 = fmul fast float %7093, %7600
  %7604 = fsub fast float -0.000000e+00, %7603
  %7605 = fmul fast float %7094, %7600
  %7606 = fsub fast float -0.000000e+00, %7605
  %7607 = call float @dx.op.unary.f32(i32 21, float %7602)  ; Exp(value)
  %7608 = call float @dx.op.unary.f32(i32 21, float %7604)  ; Exp(value)
  %7609 = call float @dx.op.unary.f32(i32 21, float %7606)  ; Exp(value)
  %7610 = fmul fast float %7121, %7121
  %7611 = fadd fast float %7610, 1.000000e+00
  %7612 = fmul fast float %7611, 0x3FAE8EC8A0000000
  %7613 = fmul fast float %7612, %7102
  %7614 = fmul fast float %7612, %7103
  %7615 = fmul fast float %7612, %7104
  %7616 = fmul fast float %7121, %7100
  %7617 = fsub fast float 1.000000e+00, %7616
  %7618 = fmul fast float %7100, %7100
  %7619 = fsub fast float 1.000000e+00, %7618
  %7620 = fmul fast float %7619, 0x3FB45F3060000000
  %7621 = fmul fast float %7617, %7617
  %7622 = fdiv fast float 1.000000e+00, %7621
  %7623 = fmul fast float %7620, %7622
  %7624 = fmul fast float %7623, %7097
  %7625 = fmul fast float %7623, %7098
  %7626 = fmul fast float %7623, %7099
  %7627 = fadd fast float %7624, %7613
  %7628 = fadd fast float %7625, %7614
  %7629 = fadd fast float %7626, %7615
  %7630 = fsub fast float 1.000000e+00, %7607
  %7631 = fsub fast float 1.000000e+00, %7608
  %7632 = fsub fast float 1.000000e+00, %7609
  %7633 = fmul fast float %7627, %7630
  %7634 = fmul fast float %7628, %7631
  %7635 = fmul fast float %7629, %7632
  br label %7636

; <label>:7636                                    ; preds = %7597, %7548
  %7637 = phi float [ %7574, %7548 ], [ %7633, %7597 ]
  %7638 = phi float [ %7575, %7548 ], [ %7634, %7597 ]
  %7639 = phi float [ %7576, %7548 ], [ %7635, %7597 ]
  %7640 = phi float [ %7563, %7548 ], [ %7607, %7597 ]
  %7641 = phi float [ %7563, %7548 ], [ %7608, %7597 ]
  %7642 = phi float [ %7563, %7548 ], [ %7609, %7597 ]
  br i1 %7129, label %7643, label %7841, !dx.controlflow.hints !160

; <label>:7643                                    ; preds = %7636
  %7644 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7645 = fmul fast float %7644, %7544
  %7646 = fsub fast float %7539, %7637
  %7647 = fsub fast float %7540, %7638
  %7648 = fsub fast float %7541, %7639
  %7649 = fmul fast float %7645, %7646
  %7650 = fmul fast float %7645, %7647
  %7651 = fmul fast float %7645, %7648
  %7652 = fadd fast float %7649, %7637
  %7653 = fadd fast float %7650, %7638
  %7654 = fadd fast float %7651, %7639
  %7655 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7640)  ; FMax(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7641)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7642)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7538)  ; FMax(a,b)
  %7659 = call float @dx.op.binary.f32(i32 35, float %7537, float %7547)  ; FMax(a,b)
  %7660 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7659)  ; FMax(a,b)
  %7661 = fdiv fast float %7537, %7660
  %7662 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7663 = fdiv fast float %7547, %7660
  %7664 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7665 = fcmp fast une float %7658, 1.000000e+00
  br i1 %7665, label %7666, label %7679, !dx.controlflow.hints !161

; <label>:7666                                    ; preds = %7643
  %7667 = call float @dx.op.unary.f32(i32 23, float %7658)  ; Log(value)
  %7668 = fmul fast float %7667, 0x3FE62E4300000000
  %7669 = fmul fast float %7539, %7668
  %7670 = fsub fast float -0.000000e+00, %7669
  %7671 = fmul fast float %7540, %7668
  %7672 = fsub fast float -0.000000e+00, %7671
  %7673 = fmul fast float %7541, %7668
  %7674 = fsub fast float -0.000000e+00, %7673
  %7675 = fsub fast float 1.000000e+00, %7658
  %7676 = fdiv fast float %7670, %7675
  %7677 = fdiv fast float %7672, %7675
  %7678 = fdiv fast float %7674, %7675
  br label %7679

; <label>:7679                                    ; preds = %7666, %7643
  %7680 = phi float [ %7676, %7666 ], [ %7539, %7643 ]
  %7681 = phi float [ %7677, %7666 ], [ %7540, %7643 ]
  %7682 = phi float [ %7678, %7666 ], [ %7541, %7643 ]
  %7683 = phi float [ %7668, %7666 ], [ 0.000000e+00, %7643 ]
  %7684 = fcmp fast une float %7655, 1.000000e+00
  br i1 %7684, label %7685, label %7692, !dx.controlflow.hints !162

; <label>:7685                                    ; preds = %7679
  %7686 = call float @dx.op.unary.f32(i32 23, float %7655)  ; Log(value)
  %7687 = fmul fast float %7686, 0x3FE62E4300000000
  %7688 = fmul fast float %7652, %7687
  %7689 = fsub fast float -0.000000e+00, %7688
  %7690 = fsub fast float 1.000000e+00, %7655
  %7691 = fdiv fast float %7689, %7690
  br label %7692

; <label>:7692                                    ; preds = %7685, %7679
  %7693 = phi float [ %7691, %7685 ], [ %7652, %7679 ]
  %7694 = phi float [ %7687, %7685 ], [ 0.000000e+00, %7679 ]
  %7695 = fcmp fast une float %7656, 1.000000e+00
  br i1 %7695, label %7696, label %7703, !dx.controlflow.hints !162

; <label>:7696                                    ; preds = %7692
  %7697 = call float @dx.op.unary.f32(i32 23, float %7656)  ; Log(value)
  %7698 = fmul fast float %7697, 0x3FE62E4300000000
  %7699 = fmul fast float %7653, %7698
  %7700 = fsub fast float -0.000000e+00, %7699
  %7701 = fsub fast float 1.000000e+00, %7656
  %7702 = fdiv fast float %7700, %7701
  br label %7703

; <label>:7703                                    ; preds = %7696, %7692
  %7704 = phi float [ %7702, %7696 ], [ %7653, %7692 ]
  %7705 = phi float [ %7698, %7696 ], [ 0.000000e+00, %7692 ]
  %7706 = fcmp fast une float %7657, 1.000000e+00
  br i1 %7706, label %7707, label %7714, !dx.controlflow.hints !162

; <label>:7707                                    ; preds = %7703
  %7708 = call float @dx.op.unary.f32(i32 23, float %7657)  ; Log(value)
  %7709 = fmul fast float %7708, 0x3FE62E4300000000
  %7710 = fmul fast float %7654, %7709
  %7711 = fsub fast float -0.000000e+00, %7710
  %7712 = fsub fast float 1.000000e+00, %7657
  %7713 = fdiv fast float %7711, %7712
  br label %7714

; <label>:7714                                    ; preds = %7707, %7703
  %7715 = phi float [ %7713, %7707 ], [ %7654, %7703 ]
  %7716 = phi float [ %7709, %7707 ], [ 0.000000e+00, %7703 ]
  %7717 = fmul fast float %7680, %7664
  %7718 = fmul fast float %7681, %7664
  %7719 = fmul fast float %7682, %7664
  %7720 = fmul fast float %7683, %7664
  %7721 = fmul fast float %7693, %7662
  %7722 = fmul fast float %7704, %7662
  %7723 = fmul fast float %7715, %7662
  %7724 = fmul fast float %7694, %7662
  %7725 = fmul fast float %7705, %7662
  %7726 = fmul fast float %7716, %7662
  %7727 = fadd fast float %7721, %7717
  %7728 = fadd fast float %7722, %7718
  %7729 = fadd fast float %7723, %7719
  %7730 = fadd fast float %7724, %7720
  %7731 = fadd fast float %7725, %7720
  %7732 = fadd fast float %7726, %7720
  %7733 = fcmp fast une float %7730, 0.000000e+00
  br i1 %7733, label %7734, label %7741, !dx.controlflow.hints !163

; <label>:7734                                    ; preds = %7714
  %7735 = fmul fast float %7730, 0x3FF7154760000000
  %7736 = call float @dx.op.unary.f32(i32 21, float %7735)  ; Exp(value)
  %7737 = fsub fast float 1.000000e+00, %7736
  %7738 = fmul fast float %7727, %7737
  %7739 = fsub fast float -0.000000e+00, %7738
  %7740 = fdiv fast float %7739, %7730
  br label %7741

; <label>:7741                                    ; preds = %7734, %7714
  %7742 = phi float [ %7736, %7734 ], [ 1.000000e+00, %7714 ]
  %7743 = phi float [ %7740, %7734 ], [ %7727, %7714 ]
  %7744 = fcmp fast une float %7731, 0.000000e+00
  br i1 %7744, label %7745, label %7752, !dx.controlflow.hints !163

; <label>:7745                                    ; preds = %7741
  %7746 = fmul fast float %7731, 0x3FF7154760000000
  %7747 = call float @dx.op.unary.f32(i32 21, float %7746)  ; Exp(value)
  %7748 = fsub fast float 1.000000e+00, %7747
  %7749 = fmul fast float %7728, %7748
  %7750 = fsub fast float -0.000000e+00, %7749
  %7751 = fdiv fast float %7750, %7731
  br label %7752

; <label>:7752                                    ; preds = %7745, %7741
  %7753 = phi float [ %7747, %7745 ], [ 1.000000e+00, %7741 ]
  %7754 = phi float [ %7751, %7745 ], [ %7728, %7741 ]
  %7755 = fcmp fast une float %7732, 0.000000e+00
  br i1 %7755, label %7756, label %7763, !dx.controlflow.hints !163

; <label>:7756                                    ; preds = %7752
  %7757 = fmul fast float %7732, 0x3FF7154760000000
  %7758 = call float @dx.op.unary.f32(i32 21, float %7757)  ; Exp(value)
  %7759 = fsub fast float 1.000000e+00, %7758
  %7760 = fmul fast float %7729, %7759
  %7761 = fsub fast float -0.000000e+00, %7760
  %7762 = fdiv fast float %7761, %7732
  br label %7763

; <label>:7763                                    ; preds = %7756, %7752
  %7764 = phi float [ %7758, %7756 ], [ 1.000000e+00, %7752 ]
  %7765 = phi float [ %7762, %7756 ], [ %7729, %7752 ]
  %7766 = fcmp fast ogt float %7662, %7664
  br i1 %7766, label %7767, label %7787

; <label>:7767                                    ; preds = %7763
  %7768 = fsub fast float 1.000000e+00, %7664
  %7769 = fmul fast float %7680, %7768
  %7770 = fmul fast float %7681, %7768
  %7771 = fmul fast float %7682, %7768
  %7772 = fmul fast float %7683, %7768
  %7773 = fcmp fast une float %7772, 0.000000e+00
  br i1 %7773, label %7774, label %7825, !dx.controlflow.hints !164

; <label>:7774                                    ; preds = %7767
  %7775 = fmul fast float %7772, 0x3FF7154760000000
  %7776 = call float @dx.op.unary.f32(i32 21, float %7775)  ; Exp(value)
  %7777 = fsub fast float 1.000000e+00, %7776
  %7778 = fmul fast float %7769, %7777
  %7779 = fsub fast float -0.000000e+00, %7778
  %7780 = fmul fast float %7770, %7777
  %7781 = fsub fast float -0.000000e+00, %7780
  %7782 = fmul fast float %7771, %7777
  %7783 = fsub fast float -0.000000e+00, %7782
  %7784 = fdiv fast float %7779, %7772
  %7785 = fdiv fast float %7781, %7772
  %7786 = fdiv fast float %7783, %7772
  br label %7825

; <label>:7787                                    ; preds = %7763
  %7788 = fsub fast float 1.000000e+00, %7662
  %7789 = fmul fast float %7693, %7788
  %7790 = fmul fast float %7704, %7788
  %7791 = fmul fast float %7715, %7788
  %7792 = fmul fast float %7694, %7788
  %7793 = fmul fast float %7705, %7788
  %7794 = fmul fast float %7716, %7788
  %7795 = fcmp fast une float %7792, 0.000000e+00
  br i1 %7795, label %7796, label %7803, !dx.controlflow.hints !163

; <label>:7796                                    ; preds = %7787
  %7797 = fmul fast float %7792, 0x3FF7154760000000
  %7798 = call float @dx.op.unary.f32(i32 21, float %7797)  ; Exp(value)
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = fmul fast float %7789, %7799
  %7801 = fsub fast float -0.000000e+00, %7800
  %7802 = fdiv fast float %7801, %7792
  br label %7803

; <label>:7803                                    ; preds = %7796, %7787
  %7804 = phi float [ %7802, %7796 ], [ %7789, %7787 ]
  %7805 = phi float [ %7798, %7796 ], [ 1.000000e+00, %7787 ]
  %7806 = fcmp fast une float %7793, 0.000000e+00
  br i1 %7806, label %7807, label %7814, !dx.controlflow.hints !163

; <label>:7807                                    ; preds = %7803
  %7808 = fmul fast float %7793, 0x3FF7154760000000
  %7809 = call float @dx.op.unary.f32(i32 21, float %7808)  ; Exp(value)
  %7810 = fsub fast float 1.000000e+00, %7809
  %7811 = fmul fast float %7790, %7810
  %7812 = fsub fast float -0.000000e+00, %7811
  %7813 = fdiv fast float %7812, %7793
  br label %7814

; <label>:7814                                    ; preds = %7807, %7803
  %7815 = phi float [ %7813, %7807 ], [ %7790, %7803 ]
  %7816 = phi float [ %7809, %7807 ], [ 1.000000e+00, %7803 ]
  %7817 = fcmp fast une float %7794, 0.000000e+00
  br i1 %7817, label %7818, label %7825, !dx.controlflow.hints !163

; <label>:7818                                    ; preds = %7814
  %7819 = fmul fast float %7794, 0x3FF7154760000000
  %7820 = call float @dx.op.unary.f32(i32 21, float %7819)  ; Exp(value)
  %7821 = fsub fast float 1.000000e+00, %7820
  %7822 = fmul fast float %7791, %7821
  %7823 = fsub fast float -0.000000e+00, %7822
  %7824 = fdiv fast float %7823, %7794
  br label %7825

; <label>:7825                                    ; preds = %7818, %7814, %7774, %7767
  %7826 = phi float [ %7824, %7818 ], [ %7786, %7774 ], [ %7771, %7767 ], [ %7791, %7814 ]
  %7827 = phi float [ %7815, %7818 ], [ %7785, %7774 ], [ %7770, %7767 ], [ %7815, %7814 ]
  %7828 = phi float [ %7804, %7818 ], [ %7784, %7774 ], [ %7769, %7767 ], [ %7804, %7814 ]
  %7829 = phi float [ %7820, %7818 ], [ %7776, %7774 ], [ 1.000000e+00, %7767 ], [ 1.000000e+00, %7814 ]
  %7830 = phi float [ %7816, %7818 ], [ %7776, %7774 ], [ 1.000000e+00, %7767 ], [ %7816, %7814 ]
  %7831 = phi float [ %7805, %7818 ], [ %7776, %7774 ], [ 1.000000e+00, %7767 ], [ %7805, %7814 ]
  %7832 = fmul fast float %7831, %7743
  %7833 = fmul fast float %7830, %7754
  %7834 = fmul fast float %7829, %7765
  %7835 = fadd fast float %7832, %7828
  %7836 = fadd fast float %7833, %7827
  %7837 = fadd fast float %7834, %7826
  %7838 = fmul fast float %7831, %7742
  %7839 = fmul fast float %7830, %7753
  %7840 = fmul fast float %7829, %7764
  br label %7841

; <label>:7841                                    ; preds = %7825, %7636
  %7842 = phi float [ %7840, %7825 ], [ %7642, %7636 ]
  %7843 = phi float [ %7839, %7825 ], [ %7641, %7636 ]
  %7844 = phi float [ %7838, %7825 ], [ %7640, %7636 ]
  %7845 = phi float [ %7837, %7825 ], [ %7639, %7636 ]
  %7846 = phi float [ %7836, %7825 ], [ %7638, %7636 ]
  %7847 = phi float [ %7835, %7825 ], [ %7637, %7636 ]
  %7848 = fmul fast float %7847, %6793
  %7849 = fmul fast float %7846, %6793
  %7850 = fmul fast float %7845, %6793
  %7851 = fmul fast float %7844, %7084
  %7852 = call float @dx.op.dot3.f32(i32 55, float %7844, float %7843, float %7842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7853 = call float @dx.op.dot3.f32(i32 55, float %7848, float %7849, float %7850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7854 = select i1 %220, float %7852, float %7844
  %7855 = select i1 %220, float %7852, float %7843
  %7856 = select i1 %220, float 1.000000e+00, float %7842
  %7857 = select i1 %220, float %7853, float %7848
  %7858 = select i1 %220, float 0.000000e+00, float %7849
  %7859 = select i1 %220, float 0.000000e+00, float %7850
  %7860 = fmul fast float %7854, %7078
  %7861 = fmul fast float %7855, %7079
  %7862 = fmul fast float %7856, %7080
  %7863 = fadd fast float %7860, %7857
  %7864 = fadd fast float %7861, %7858
  %7865 = fadd fast float %7859, %7862
  %7866 = fmul fast float %7854, %7081
  %7867 = fmul fast float %7855, %7082
  %7868 = fmul fast float %7856, %7083
  %7869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.i32 %7869, 0
  %7871 = icmp eq i32 %7870, 0
  br i1 %7871, label %8239, label %7872, !dx.controlflow.hints !165

; <label>:7872                                    ; preds = %7841
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 2
  %7875 = extractvalue %dx.types.CBufRet.f32 %7873, 3
  %7876 = fmul fast float %7874, %95
  %7877 = fmul fast float %7875, %96
  %7878 = fmul fast float %7876, 2.000000e+00
  %7879 = fmul fast float %7877, 2.000000e+00
  %7880 = fsub fast float 1.000000e+00, %7878
  %7881 = fsub fast float 1.000000e+00, %7879
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 0
  %7884 = extractvalue %dx.types.CBufRet.f32 %7882, 1
  %7885 = extractvalue %dx.types.CBufRet.f32 %7882, 2
  %7886 = fmul fast float %7880, %7883
  %7887 = fmul fast float %7880, %7884
  %7888 = fmul fast float %7880, %7885
  %7889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.CBufRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.CBufRet.f32 %7889, 2
  %7893 = fmul fast float %7881, %7890
  %7894 = fmul fast float %7881, %7891
  %7895 = fmul fast float %7881, %7892
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7900 = fadd fast float %7893, %7897
  %7901 = fadd fast float %7900, %7886
  %7902 = fadd fast float %7894, %7898
  %7903 = fadd fast float %7902, %7887
  %7904 = fadd fast float %7895, %7899
  %7905 = fadd fast float %7904, %7888
  %7906 = fmul fast float %7901, %7077
  %7907 = fmul fast float %7903, %7077
  %7908 = fmul fast float %7905, %7077
  %7909 = fmul fast float %7906, %7906
  %7910 = fmul fast float %7907, %7907
  %7911 = fadd fast float %7909, %7910
  %7912 = fmul fast float %7908, %7908
  %7913 = fadd fast float %7911, %7912
  %7914 = call float @dx.op.unary.f32(i32 24, float %7913)  ; Sqrt(value)
  %7915 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %7916 = fsub fast float %7914, %7915
  %7917 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %7918 = fmul fast float %7916, %7917
  %7919 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7920 = fadd fast float %7919, -5.000000e-01
  %7921 = fmul fast float %7920, 2.000000e+00
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7924 = call float @dx.op.binary.f32(i32 36, float %7923, float %7921)  ; FMin(a,b)
  %7925 = fsub fast float -0.000000e+00, %7923
  %7926 = fcmp fast ogt float %7924, %7925
  br i1 %7926, label %7927, label %8239, !dx.controlflow.hints !166

; <label>:7927                                    ; preds = %7872
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7930 = fcmp fast ogt float %7929, 0.000000e+00
  br i1 %7930, label %7931, label %8006, !dx.controlflow.hints !167

; <label>:7931                                    ; preds = %7927
  %7932 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7933 = extractvalue %dx.types.Dimensions %7932, 0
  %7934 = sitofp i32 %7933 to float
  %7935 = extractvalue %dx.types.Dimensions %7932, 1
  %7936 = sitofp i32 %7935 to float
  %7937 = fmul fast float %7876, %7934
  %7938 = fmul fast float %7877, %7936
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 1
  %7941 = fsub fast float -0.000000e+00, %7940
  %7942 = fptoui float %7941 to i32
  %7943 = fptoui float %7937 to i32
  %7944 = fptoui float %7938 to i32
  %7945 = and i32 %7942, 31
  %7946 = lshr i32 %7943, %7945
  %7947 = lshr i32 %7944, %7945
  %7948 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7942, i32 %7946, i32 %7947, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7949 = extractvalue %dx.types.ResRet.f32 %7948, 0
  %7950 = fcmp fast olt float %7949, -1.000000e+00
  %7951 = fcmp fast ogt float %7949, -1.000000e+00
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 1
  %7954 = select i1 %7951, float %7953, float 1.000000e+00
  %7955 = fadd fast float %7949, 1.000000e+00
  %7956 = fmul fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 6, float %7956)  ; FAbs(value)
  %7958 = extractvalue %dx.types.CBufRet.f32 %7952, 3
  %7959 = fcmp fast oge float %7957, %7958
  %7960 = select i1 %7959, float 0x4197782600000000, float %7957
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.CBufRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.CBufRet.f32 %7961, 2
  %7965 = select i1 %7950, float %7962, float %7883
  %7966 = select i1 %7950, float %7963, float %7884
  %7967 = select i1 %7950, float %7964, float %7885
  %7968 = fmul fast float %7965, %7880
  %7969 = fmul fast float %7966, %7880
  %7970 = fmul fast float %7967, %7880
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7975 = select i1 %7950, float %7972, float %7890
  %7976 = select i1 %7950, float %7973, float %7891
  %7977 = select i1 %7950, float %7974, float %7892
  %7978 = fmul fast float %7975, %7881
  %7979 = fmul fast float %7976, %7881
  %7980 = fmul fast float %7977, %7881
  %7981 = fadd fast float %7978, %7968
  %7982 = fadd fast float %7979, %7969
  %7983 = fadd fast float %7980, %7970
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = select i1 %7950, float %7985, float %7897
  %7989 = select i1 %7950, float %7986, float %7898
  %7990 = select i1 %7950, float %7987, float %7899
  %7991 = fadd fast float %7981, %7988
  %7992 = fadd fast float %7982, %7989
  %7993 = fadd fast float %7983, %7990
  %7994 = fmul fast float %7991, %7960
  %7995 = fmul fast float %7992, %7960
  %7996 = fmul fast float %7993, %7960
  %7997 = fmul fast float %7994, %7994
  %7998 = fmul fast float %7995, %7995
  %7999 = fadd fast float %7997, %7998
  %8000 = fmul fast float %7996, %7996
  %8001 = fadd fast float %7999, %8000
  %8002 = call float @dx.op.unary.f32(i32 24, float %8001)  ; Sqrt(value)
  %8003 = fsub fast float %8002, %7915
  %8004 = fmul fast float %8003, %7917
  %8005 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  br label %8006

; <label>:8006                                    ; preds = %7931, %7927
  %8007 = phi float [ %8005, %7931 ], [ 1.000000e+00, %7927 ]
  %8008 = fmul fast float %7924, 5.000000e-01
  %8009 = fadd fast float %8008, 5.000000e-01
  %8010 = call float @dx.op.unary.f32(i32 22, float %8009)  ; Frc(value)
  %8011 = call float @dx.op.unary.f32(i32 27, float %8010)  ; Round_ni(value)
  %8012 = call float @dx.op.unary.f32(i32 22, float %8010)  ; Frc(value)
  %8013 = fmul fast float %8012, 2.000000e+00
  %8014 = fadd fast float %8013, -1.000000e+00
  %8015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7876, float %7877, float %8011, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  %8019 = extractvalue %dx.types.ResRet.f32 %8015, 3
  %8020 = fadd fast float %8016, -5.000000e-01
  %8021 = fadd fast float %8018, -5.000000e-01
  %8022 = fmul fast float %8020, 0xBFD5555560000000
  %8023 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8021, float %8022)  ; FMad(a,b,c)
  %8024 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8017, float 0.000000e+00)  ; FMad(a,b,c)
  %8025 = fadd fast float %8024, %8019
  %8026 = fmul fast float %8020, -7.500000e-01
  %8027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8021, float %8026)  ; FMad(a,b,c)
  %8028 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8017, float 0.000000e+00)  ; FMad(a,b,c)
  %8029 = fadd fast float %8028, %8019
  %8030 = call float @dx.op.binary.f32(i32 35, float %8023, float -1.000000e+00)  ; FMax(a,b)
  %8031 = call float @dx.op.binary.f32(i32 35, float %8025, float -1.000000e+00)  ; FMax(a,b)
  %8032 = call float @dx.op.binary.f32(i32 35, float %8027, float -1.000000e+00)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 35, float %8029, float -1.000000e+00)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %8030, float 1.000000e+00)  ; FMin(a,b)
  %8035 = call float @dx.op.binary.f32(i32 36, float %8031, float 1.000000e+00)  ; FMin(a,b)
  %8036 = call float @dx.op.binary.f32(i32 36, float %8032, float 1.000000e+00)  ; FMin(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %8033, float 1.000000e+00)  ; FMin(a,b)
  %8038 = fcmp fast olt float %8034, 0x3FEFFF8020000000
  br i1 %8038, label %8039, label %8154, !dx.controlflow.hints !168

; <label>:8039                                    ; preds = %8006
  %8040 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %8041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8042 = extractvalue %dx.types.CBufRet.f32 %8041, 0
  %8043 = extractvalue %dx.types.CBufRet.f32 %8041, 1
  %8044 = extractvalue %dx.types.CBufRet.f32 %8041, 2
  %8045 = extractvalue %dx.types.CBufRet.f32 %8041, 3
  %8046 = fsub fast float %8042, %8034
  %8047 = fsub fast float %8043, %8035
  %8048 = fsub fast float %8044, %8036
  %8049 = fsub fast float %8045, %8037
  %8050 = fmul fast float %8046, %8040
  %8051 = fmul fast float %8047, %8040
  %8052 = fmul fast float %8048, %8040
  %8053 = fmul fast float %8049, %8040
  %8054 = fadd fast float %8050, %8034
  %8055 = fadd fast float %8051, %8035
  %8056 = fsub fast float -0.000000e+00, %8055
  %8057 = fadd fast float %8052, %8036
  %8058 = fadd fast float %8053, %8037
  %8059 = fmul fast float %8054, %8054
  %8060 = fsub fast float %8055, %8059
  %8061 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8060)  ; FMax(a,b)
  %8062 = fdiv fast float 1.000000e+00, %8061
  %8063 = fmul fast float %8055, %8054
  %8064 = fsub fast float %8057, %8063
  %8065 = fsub fast float %8014, %8054
  %8066 = fmul fast float %8014, %8014
  %8067 = fsub fast float %8066, %8055
  %8068 = fmul fast float %8065, %8062
  %8069 = fmul fast float %8068, %8064
  %8070 = fsub fast float %8067, %8069
  %8071 = fmul fast float %8055, %8055
  %8072 = fsub fast float %8058, %8071
  %8073 = fmul fast float %8064, %8064
  %8074 = fmul fast float %8073, %8062
  %8075 = fsub fast float %8072, %8074
  %8076 = fdiv fast float %8070, %8075
  %8077 = fmul fast float %8064, %8076
  %8078 = fsub fast float %8065, %8077
  %8079 = fmul fast float %8078, %8062
  %8080 = fmul fast float %8079, %8054
  %8081 = fsub fast float 1.000000e+00, %8080
  %8082 = fmul fast float %8055, %8076
  %8083 = fsub fast float %8081, %8082
  %8084 = fmul fast float %8079, %8079
  %8085 = fmul fast float %8076, 4.000000e+00
  %8086 = fmul fast float %8085, %8083
  %8087 = fsub fast float %8084, %8086
  %8088 = call float @dx.op.unary.f32(i32 24, float %8087)  ; Sqrt(value)
  %8089 = fcmp fast oge float %8079, 0.000000e+00
  %8090 = fsub fast float -0.000000e+00, %8088
  %8091 = select i1 %8089, float %8090, float %8088
  %8092 = fsub fast float %8091, %8079
  %8093 = fdiv fast float %8092, %8076
  %8094 = fdiv fast float %8083, %8092
  %8095 = fmul fast float %8093, 5.000000e-01
  %8096 = fmul fast float %8094, 2.000000e+00
  %8097 = select i1 %8089, float %8095, float %8096
  %8098 = select i1 %8089, float %8096, float %8095
  %8099 = call float @dx.op.binary.f32(i32 35, float %8097, float %8098)  ; FMax(a,b)
  %8100 = call float @dx.op.binary.f32(i32 36, float %8097, float %8098)  ; FMin(a,b)
  %8101 = fcmp fast ogt float %8014, %8100
  br i1 %8101, label %8102, label %8112

; <label>:8102                                    ; preds = %8039
  %8103 = fsub fast float %8014, %8100
  %8104 = fsub fast float %8099, %8100
  %8105 = fmul fast float %8103, %8104
  %8106 = fmul fast float %8099, %8014
  %8107 = fadd fast float %8099, %8014
  %8108 = fmul fast float %8107, %8054
  %8109 = fadd fast float %8106, %8055
  %8110 = fsub fast float %8109, %8108
  %8111 = fdiv fast float %8110, %8105
  br label %8112

; <label>:8112                                    ; preds = %8102, %8039
  %8113 = phi float [ %8111, %8102 ], [ 0.000000e+00, %8039 ]
  %8114 = fcmp fast ogt float %8014, %8099
  %8115 = fsub fast float %8014, %8099
  br i1 %8114, label %8116, label %8126

; <label>:8116                                    ; preds = %8112
  %8117 = fsub fast float %8099, %8100
  %8118 = fmul fast float %8117, %8115
  %8119 = fmul fast float %8100, %8014
  %8120 = fadd fast float %8100, %8014
  %8121 = fmul fast float %8120, %8054
  %8122 = fsub fast float %8056, %8119
  %8123 = fadd fast float %8122, %8121
  %8124 = fdiv fast float %8123, %8118
  %8125 = fadd fast float %8124, %8113
  br label %8126

; <label>:8126                                    ; preds = %8116, %8112
  %8127 = phi float [ %8125, %8116 ], [ %8113, %8112 ]
  %8128 = fsub fast float %8014, %8100
  %8129 = fmul fast float %8128, %8115
  %8130 = fmul fast float %8100, %8099
  %8131 = fadd fast float %8100, %8099
  %8132 = fmul fast float %8131, %8054
  %8133 = fadd fast float %8130, %8055
  %8134 = fsub fast float %8133, %8132
  %8135 = fdiv fast float %8134, %8129
  %8136 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8137 = fcmp fast oeq float %6805, 0.000000e+00
  %8138 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %8139 = fcmp fast oeq float %8138, 0.000000e+00
  %8140 = or i1 %8137, %8139
  %8141 = fmul fast float %8138, 2.000000e+00
  %8142 = fadd fast float %7923, %7924
  %8143 = fdiv fast float %8142, %8141
  %8144 = call float @dx.op.unary.f32(i32 7, float %8143)  ; Saturate(value)
  %8145 = fmul fast float %8144, 2.000000e+00
  %8146 = fsub fast float 3.000000e+00, %8145
  %8147 = fmul fast float %8144, %8144
  %8148 = fmul fast float %8147, %8146
  %8149 = select i1 %8140, float 1.000000e+00, float %8148
  %8150 = fmul fast float %8135, %6805
  %8151 = fadd fast float %8136, %8150
  %8152 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8153 = fmul fast float %8149, %8152
  br label %8154

; <label>:8154                                    ; preds = %8126, %8006
  %8155 = phi float [ %8153, %8126 ], [ 0.000000e+00, %8006 ]
  %8156 = fsub fast float 1.000000e+00, %8155
  %8157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7876, float %7877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8158 = extractvalue %dx.types.ResRet.f32 %8157, 0
  %8159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.i32 %8159, 2
  %8161 = icmp eq i32 %8160, 0
  br i1 %8161, label %8167, label %8162

; <label>:8162                                    ; preds = %8154
  %8163 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8164 = fadd fast float %8158, -1.000000e+00
  %8165 = fmul fast float %8163, %8164
  %8166 = fadd fast float %8165, 1.000000e+00
  br label %8167

; <label>:8167                                    ; preds = %8162, %8154
  %8168 = phi float [ %8166, %8162 ], [ %8156, %8154 ]
  br i1 %7930, label %8169, label %8187

; <label>:8169                                    ; preds = %8167
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8172 = fsub fast float %8007, %8171
  %8173 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8174 = fsub fast float %8007, %7929
  %8175 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8176 = fsub fast float %8173, %8175
  %8177 = fsub fast float %8009, %8175
  %8178 = fdiv fast float %8177, %8176
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = fmul fast float %8179, 2.000000e+00
  %8181 = fsub fast float 3.000000e+00, %8180
  %8182 = fsub fast float %8158, %8168
  %8183 = fmul fast float %8179, %8179
  %8184 = fmul fast float %8183, %8182
  %8185 = fmul fast float %8184, %8181
  %8186 = fadd fast float %8185, %8168
  br label %8187

; <label>:8187                                    ; preds = %8169, %8167
  %8188 = phi float [ %8186, %8169 ], [ %8168, %8167 ]
  %8189 = call float @dx.op.binary.f32(i32 35, float %8158, float %8188)  ; FMax(a,b)
  %8190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.i32 %8190, 2
  %8192 = and i32 %8191, 1
  %8193 = icmp eq i32 %8192, 0
  %8194 = fcmp fast une float %8189, 1.000000e+00
  %8195 = and i1 %8194, %8193
  br i1 %8195, label %8196, label %8215

; <label>:8196                                    ; preds = %8187
  %8197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7876, float %7877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8198 = extractvalue %dx.types.ResRet.f32 %8197, 0
  %8199 = extractvalue %dx.types.ResRet.f32 %8197, 1
  %8200 = extractvalue %dx.types.ResRet.f32 %8197, 2
  %8201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.f32 %8201, 1
  %8203 = fmul fast float %8202, %8198
  %8204 = fmul fast float %8202, %8199
  %8205 = fmul fast float %8202, %8200
  %8206 = fcmp fast ogt float %8158, 0x3FEFFF2E40000000
  %8207 = fsub fast float 1.000000e+00, %8189
  %8208 = fsub fast float 1.000000e+00, %8158
  %8209 = fdiv fast float %8207, %8208
  %8210 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8211 = select i1 %8206, float 0.000000e+00, float %8210
  %8212 = fmul fast float %8203, %8211
  %8213 = fmul fast float %8204, %8211
  %8214 = fmul fast float %8205, %8211
  br label %8215

; <label>:8215                                    ; preds = %8196, %8187
  %8216 = phi float [ 0.000000e+00, %8187 ], [ %8212, %8196 ]
  %8217 = phi float [ 0.000000e+00, %8187 ], [ %8213, %8196 ]
  %8218 = phi float [ 0.000000e+00, %8187 ], [ %8214, %8196 ]
  %8219 = fmul fast float %8216, %6793
  %8220 = fmul fast float %8217, %6793
  %8221 = fmul fast float %8218, %6793
  %8222 = fmul fast float %8189, %7851
  %8223 = call float @dx.op.dot3.f32(i32 55, float %8189, float %8189, float %8189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8224 = call float @dx.op.dot3.f32(i32 55, float %8219, float %8220, float %8221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8225 = select i1 %220, float %8223, float %8189
  %8226 = select i1 %220, float 1.000000e+00, float %8189
  %8227 = select i1 %220, float %8224, float %8219
  %8228 = select i1 %220, float 0.000000e+00, float %8220
  %8229 = select i1 %220, float 0.000000e+00, float %8221
  %8230 = fmul fast float %8225, %7863
  %8231 = fmul fast float %8225, %7864
  %8232 = fmul fast float %8226, %7865
  %8233 = fadd fast float %8230, %8227
  %8234 = fadd fast float %8231, %8228
  %8235 = fadd fast float %8229, %8232
  %8236 = fmul fast float %8225, %7866
  %8237 = fmul fast float %8225, %7867
  %8238 = fmul fast float %8226, %7868
  br label %8239

; <label>:8239                                    ; preds = %8215, %7872, %7841, %7073
  %8240 = phi float [ %7078, %7073 ], [ %7863, %7841 ], [ %8233, %8215 ], [ %7863, %7872 ]
  %8241 = phi float [ %7079, %7073 ], [ %7864, %7841 ], [ %8234, %8215 ], [ %7864, %7872 ]
  %8242 = phi float [ %7080, %7073 ], [ %7865, %7841 ], [ %8235, %8215 ], [ %7865, %7872 ]
  %8243 = phi float [ %7081, %7073 ], [ %7866, %7841 ], [ %8236, %8215 ], [ %7866, %7872 ]
  %8244 = phi float [ %7082, %7073 ], [ %7867, %7841 ], [ %8237, %8215 ], [ %7867, %7872 ]
  %8245 = phi float [ %7083, %7073 ], [ %7868, %7841 ], [ %8238, %8215 ], [ %7868, %7872 ]
  %8246 = phi float [ %7084, %7073 ], [ %7851, %7841 ], [ %8222, %8215 ], [ %7851, %7872 ]
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 2
  %8249 = extractvalue %dx.types.CBufRet.f32 %8247, 3
  %8250 = fmul fast float %8248, %95
  %8251 = fmul fast float %8249, %96
  %8252 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  %8253 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8254 = select i1 %6815, i32 2, i32 0
  %8255 = or i32 %8254, 1
  %8256 = uitofp i32 %8255 to float
  %8257 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8252, float %8253, float %8256, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8258 = extractvalue %dx.types.ResRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.ResRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.ResRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.ResRet.f32 %8257, 3
  %8262 = add nuw nsw i32 %8254, 2
  %8263 = uitofp i32 %8262 to float
  %8264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8252, float %8253, float %8263, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.ResRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.ResRet.f32 %8264, 2
  %8268 = extractvalue %dx.types.ResRet.f32 %8264, 3
  %8269 = call float @dx.op.binary.f32(i32 35, float %8259, float %8260)  ; FMax(a,b)
  %8270 = call float @dx.op.binary.f32(i32 35, float %8258, float %8269)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 35, float %8270, float %8261)  ; FMax(a,b)
  %8272 = call float @dx.op.binary.f32(i32 36, float %8266, float %8267)  ; FMin(a,b)
  %8273 = call float @dx.op.binary.f32(i32 36, float %8265, float %8272)  ; FMin(a,b)
  %8274 = call float @dx.op.binary.f32(i32 36, float %8273, float %8268)  ; FMin(a,b)
  %8275 = fmul fast float %8271, 2.550000e+02
  %8276 = fadd fast float %8275, 0x3F70101020000000
  %8277 = fptoui float %8276 to i32
  %8278 = fmul fast float %8274, 2.550000e+02
  %8279 = fadd fast float %8278, 0x3F70101020000000
  %8280 = fptoui float %8279 to i32
  %8281 = icmp ult i32 %8277, %8280
  br i1 %8281, label %8282, label %8451

; <label>:8282                                    ; preds = %8239
  %8283 = fcmp fast ogt float %85, 9.843750e-01
  %8284 = fadd fast float %7077, -4.000000e+00
  %8285 = select i1 %8283, float -4.000000e+00, float %8284
  %8286 = call float @dx.op.binary.f32(i32 35, float %8285, float 0.000000e+00)  ; FMax(a,b)
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = fadd fast float %8288, %8286
  %8290 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8291 = fmul fast float %8289, %8290
  %8292 = call float @dx.op.unary.f32(i32 23, float %8291)  ; Log(value)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8294 = fmul fast float %8293, %8292
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 2
  %8297 = fmul fast float %8294, %8296
  %8298 = call float @dx.op.unary.f32(i32 7, float %8297)  ; Saturate(value)
  %8299 = uitofp i32 %8277 to float
  %8300 = uitofp i32 %8280 to float
  %8301 = fadd fast float %8299, 5.000000e-01
  %8302 = fadd fast float %8300, 5.000000e-01
  %8303 = fmul fast float %8296, %8301
  %8304 = fmul fast float %8296, %8302
  %8305 = fadd fast float %8303, 0x3F0FFB4800000000
  %8306 = fadd fast float %8304, 0xBF0FFB4800000000
  %8307 = call float @dx.op.binary.f32(i32 35, float %8298, float %8305)  ; FMax(a,b)
  %8308 = call float @dx.op.binary.f32(i32 36, float %8307, float %8306)  ; FMin(a,b)
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 1
  %8311 = extractvalue %dx.types.CBufRet.f32 %8309, 2
  %8312 = extractvalue %dx.types.CBufRet.f32 %8309, 0
  %8313 = select i1 %6815, float %8312, float 0.000000e+00
  %8314 = fmul fast float %8310, %8308
  %8315 = fadd fast float %8313, %8314
  %8316 = fadd fast float %8313, %8311
  %8317 = fsub fast float %8310, %8311
  %8318 = fadd fast float %8317, %8313
  %8319 = call float @dx.op.binary.f32(i32 35, float %8315, float %8316)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8319, float %8318)  ; FMin(a,b)
  %8321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8252, float %8253, float %8320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8322 = extractvalue %dx.types.ResRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.ResRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.ResRet.f32 %8321, 2
  %8325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.i32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.i32 %8325, 1
  %8328 = uitofp i32 %8326 to float
  %8329 = uitofp i32 %8327 to float
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8333 = fmul fast float %8328, %8252
  %8334 = fmul fast float %8329, %8253
  %8335 = fadd fast float %8333, -5.000000e-01
  %8336 = fadd fast float %8334, -5.000000e-01
  %8337 = call float @dx.op.unary.f32(i32 22, float %8335)  ; Frc(value)
  %8338 = call float @dx.op.unary.f32(i32 22, float %8336)  ; Frc(value)
  %8339 = fmul fast float %8337, %8337
  %8340 = fmul fast float %8339, %8337
  %8341 = fsub fast float 3.000000e+00, %8337
  %8342 = fmul fast float %8339, %8341
  %8343 = fmul fast float %8337, 3.000000e+00
  %8344 = fmul fast float %8340, 3.000000e+00
  %8345 = fmul fast float %8339, 6.000000e+00
  %8346 = fsub fast float %8344, %8345
  %8347 = fadd fast float %8346, 4.000000e+00
  %8348 = fmul fast float %8347, 0x3FC5555560000000
  %8349 = fmul fast float %8340, -3.000000e+00
  %8350 = fadd fast float %8339, %8337
  %8351 = fmul fast float %8350, 3.000000e+00
  %8352 = fadd fast float %8349, 1.000000e+00
  %8353 = fadd fast float %8352, %8351
  %8354 = fmul fast float %8340, 0x3FC5555560000000
  %8355 = fmul fast float %8338, %8338
  %8356 = fmul fast float %8355, %8338
  %8357 = fsub fast float 3.000000e+00, %8338
  %8358 = fmul fast float %8355, %8357
  %8359 = fmul fast float %8338, 3.000000e+00
  %8360 = fmul fast float %8356, 3.000000e+00
  %8361 = fmul fast float %8355, 6.000000e+00
  %8362 = fsub fast float %8360, %8361
  %8363 = fadd fast float %8362, 4.000000e+00
  %8364 = fmul fast float %8363, 0x3FC5555560000000
  %8365 = fmul fast float %8356, -3.000000e+00
  %8366 = fadd fast float %8355, %8338
  %8367 = fmul fast float %8366, 3.000000e+00
  %8368 = fadd fast float %8365, 1.000000e+00
  %8369 = fadd fast float %8368, %8367
  %8370 = fmul fast float %8356, 0x3FC5555560000000
  %8371 = fadd fast float %8337, 1.000000e+00
  %8372 = fsub fast float 1.000000e+00, %8343
  %8373 = fadd fast float %8372, %8342
  %8374 = fadd fast float %8373, %8347
  %8375 = fmul fast float %8374, 0x3FC5555560000000
  %8376 = fdiv fast float %8348, %8375
  %8377 = fsub fast float %8371, %8376
  %8378 = fsub fast float 1.000000e+00, %8337
  %8379 = fadd fast float %8353, %8340
  %8380 = fmul fast float %8379, 0x3FC5555560000000
  %8381 = fdiv fast float %8354, %8380
  %8382 = fadd fast float %8378, %8381
  %8383 = fadd fast float %8338, 1.000000e+00
  %8384 = fsub fast float 1.000000e+00, %8359
  %8385 = fadd fast float %8384, %8358
  %8386 = fadd fast float %8385, %8363
  %8387 = fmul fast float %8386, 0x3FC5555560000000
  %8388 = fdiv fast float %8364, %8387
  %8389 = fsub fast float %8383, %8388
  %8390 = fsub fast float 1.000000e+00, %8338
  %8391 = fadd fast float %8369, %8356
  %8392 = fmul fast float %8391, 0x3FC5555560000000
  %8393 = fdiv fast float %8370, %8392
  %8394 = fadd fast float %8393, %8390
  %8395 = fmul fast float %8377, %8331
  %8396 = fsub fast float %8252, %8395
  %8397 = fmul fast float %8382, %8331
  %8398 = fadd fast float %8397, %8252
  %8399 = fmul fast float %8394, %8332
  %8400 = fadd fast float %8399, %8253
  %8401 = fmul fast float %8389, %8332
  %8402 = fsub fast float %8253, %8401
  %8403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8396, float %8402, float %8320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8404 = extractvalue %dx.types.ResRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.ResRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.ResRet.f32 %8403, 2
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8398, float %8402, float %8320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8396, float %8400, float %8320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8412 = extractvalue %dx.types.ResRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.ResRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.ResRet.f32 %8411, 2
  %8415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8398, float %8400, float %8320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = fsub fast float %8412, %8404
  %8420 = fsub fast float %8413, %8405
  %8421 = fsub fast float %8414, %8406
  %8422 = fmul fast float %8419, %8392
  %8423 = fmul fast float %8420, %8392
  %8424 = fmul fast float %8421, %8392
  %8425 = fadd fast float %8422, %8404
  %8426 = fadd fast float %8423, %8405
  %8427 = fadd fast float %8424, %8406
  %8428 = fsub fast float %8416, %8408
  %8429 = fsub fast float %8417, %8409
  %8430 = fsub fast float %8418, %8410
  %8431 = fmul fast float %8428, %8392
  %8432 = fmul fast float %8429, %8392
  %8433 = fmul fast float %8430, %8392
  %8434 = fsub fast float %8408, %8425
  %8435 = fadd fast float %8434, %8431
  %8436 = fsub fast float %8409, %8426
  %8437 = fadd fast float %8436, %8432
  %8438 = fsub fast float %8410, %8427
  %8439 = fadd fast float %8438, %8433
  %8440 = fmul fast float %8435, %8380
  %8441 = fmul fast float %8437, %8380
  %8442 = fmul fast float %8439, %8380
  %8443 = fadd fast float %8440, %8425
  %8444 = fadd fast float %8441, %8426
  %8445 = fadd fast float %8442, %8427
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8448 = fmul fast float %8443, %8447
  %8449 = fmul fast float %8444, %8447
  %8450 = fmul fast float %8445, %8447
  br label %8451

; <label>:8451                                    ; preds = %8282, %8239
  %8452 = phi float [ %8322, %8282 ], [ 1.000000e+00, %8239 ]
  %8453 = phi float [ %8323, %8282 ], [ 1.000000e+00, %8239 ]
  %8454 = phi float [ %8324, %8282 ], [ 1.000000e+00, %8239 ]
  %8455 = phi float [ %8448, %8282 ], [ 0.000000e+00, %8239 ]
  %8456 = phi float [ %8449, %8282 ], [ 0.000000e+00, %8239 ]
  %8457 = phi float [ %8450, %8282 ], [ 0.000000e+00, %8239 ]
  %8458 = fmul fast float %8455, %6793
  %8459 = fmul fast float %8456, %6793
  %8460 = fmul fast float %8457, %6793
  %8461 = fmul fast float %8452, %8246
  %8462 = call float @dx.op.dot3.f32(i32 55, float %8452, float %8453, float %8454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8463 = call float @dx.op.dot3.f32(i32 55, float %8458, float %8459, float %8460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8464 = select i1 %220, float %8462, float %8452
  %8465 = select i1 %220, float %8462, float %8453
  %8466 = select i1 %220, float 1.000000e+00, float %8454
  %8467 = select i1 %220, float %8463, float %8458
  %8468 = select i1 %220, float 0.000000e+00, float %8459
  %8469 = select i1 %220, float 0.000000e+00, float %8460
  %8470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.i32 %8470, 3
  %8472 = and i32 %8471, 3
  %8473 = icmp ne i32 %8472, 0
  %8474 = and i32 %8471, 4
  %8475 = icmp ne i32 %8474, 0
  %8476 = and i1 %8473, %8475
  %8477 = and i1 %220, %8476
  br i1 %8477, label %8478, label %8484

; <label>:8478                                    ; preds = %8451
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 1
  %8481 = fadd fast float %8461, -1.000000e+00
  %8482 = fmul fast float %8480, %8481
  %8483 = fadd fast float %8482, 1.000000e+00
  br label %8484

; <label>:8484                                    ; preds = %8478, %8451
  %8485 = phi float [ %8483, %8478 ], [ %8461, %8451 ]
  %8486 = fadd fast float %8243, %8240
  %8487 = fmul fast float %8464, %8486
  %8488 = fadd fast float %8487, %8467
  %8489 = fadd fast float %8244, %8241
  %8490 = fmul fast float %8465, %8489
  %8491 = fadd fast float %8490, %8468
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  br i1 %220, label %8494, label %8518

; <label>:8494                                    ; preds = %8484
  %8495 = fadd fast float %8488, %8491
  %8496 = fmul fast float %8493, %8495
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8499 = extractvalue %dx.types.CBufRet.f32 %6797, 1
  %8500 = fsub fast float %6802, %6796
  %8501 = fadd fast float %8500, %6803
  %8502 = fsub fast float %8501, %8499
  %8503 = extractvalue %dx.types.CBufRet.f32 %6797, 2
  %8504 = fmul fast float %8502, %8503
  %8505 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  %8506 = fsub fast float %8505, %8498
  %8507 = fmul fast float %8506, %8485
  %8508 = fadd fast float %8507, %8498
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = fsub fast float %8508, %8510
  %8512 = fmul fast float %8511, 1.000000e+01
  %8513 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8514 = fsub fast float %4258, %6793
  %8515 = fmul fast float %8513, %8514
  %8516 = fadd fast float %8515, %6793
  %8517 = fmul fast float %8516, %8508
  br label %8542

; <label>:8518                                    ; preds = %8484
  %8519 = fadd fast float %8245, %8242
  %8520 = fmul fast float %8466, %8519
  %8521 = fadd fast float %8520, %8469
  %8522 = fmul fast float %8493, %8488
  %8523 = fmul fast float %8493, %8491
  %8524 = fmul fast float %8493, %8521
  %8525 = call float @dx.op.binary.f32(i32 35, float %8523, float %8524)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 35, float %8522, float %8525)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8526, float %6793)  ; FMax(a,b)
  %8528 = fcmp fast ugt float %8527, 0x3F10000000000000
  br i1 %8528, label %8530, label %8529

; <label>:8529                                    ; preds = %8518
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8530

; <label>:8530                                    ; preds = %8529, %8518
  %8531 = add i32 %54, 372
  %8532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8531, i32 undef)  ; BufferLoad(srv,index,wot)
  %8533 = extractvalue %dx.types.ResRet.i32 %8532, 0
  %8534 = and i32 %8533, 32
  %8535 = icmp eq i32 %8534, 0
  br i1 %8535, label %8542, label %8536

; <label>:8536                                    ; preds = %8530
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = fmul fast float %8538, 0x3FE99999A0000000
  %8540 = fadd fast float %8538, %8522
  %8541 = fadd fast float %8539, %8524
  br label %8542

; <label>:8542                                    ; preds = %8536, %8530, %8494
  %8543 = phi float [ %8496, %8494 ], [ %8540, %8536 ], [ %8522, %8530 ]
  %8544 = phi float [ %8517, %8494 ], [ %8523, %8536 ], [ %8523, %8530 ]
  %8545 = phi float [ %8516, %8494 ], [ %8541, %8536 ], [ %8524, %8530 ]
  %8546 = phi float [ %8516, %8494 ], [ %6793, %8536 ], [ %6793, %8530 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8543, float 3.225500e+04)  ; FMin(a,b)
  %8548 = call float @dx.op.binary.f32(i32 36, float %8544, float 3.225500e+04)  ; FMin(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8545, float 3.225500e+04)  ; FMin(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8546, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!68 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !90}
!70 = !{!71, !88, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !87}
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
!83 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 7, i8 0, !77}
!84 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 9, i8 0, !86}
!86 = !{i32 3, i32 13}
!87 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !98, i64 0}
!122 = !{!123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!123 = distinct !{!123, !124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!124 = distinct !{!124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!125 = distinct !{!125, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!126 = distinct !{!126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!127 = distinct !{!127, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!137 = distinct !{!137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!146 = !{!142}
!147 = !{!143, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!156 = !{!152}
!157 = !{!153, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}

