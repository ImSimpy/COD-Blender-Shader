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
; shader hash: ade112731564bc440ae36e3bb63d6577
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
  %161 = add i32 %54, 360
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = extractvalue %dx.types.ResRet.i32 %162, 1
  %165 = extractvalue %dx.types.ResRet.i32 %162, 2
  %166 = extractvalue %dx.types.ResRet.i32 %162, 3
  %167 = bitcast i32 %163 to float
  %168 = bitcast i32 %164 to float
  %169 = bitcast i32 %165 to float
  %170 = bitcast i32 %166 to float
  %171 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 25, float %171)  ; Rsqrt(value)
  %173 = fmul fast float %172, %102
  %174 = fmul fast float %172, %103
  %175 = fmul fast float %172, %104
  %176 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %177, %158
  %179 = fmul fast float %177, %159
  %180 = fmul fast float %177, %160
  %181 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %173, float %174, float %175)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = fmul fast float %181, %181
  %183 = fmul fast float %182, %169
  %184 = fadd fast float %183, %170
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %187, %176
  %189 = fsub fast float %167, %188
  %190 = fmul fast float %189, %168
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %191, %185
  %193 = fmul fast float %95, 5.000000e-01
  %194 = fmul fast float %96, 5.000000e-01
  %195 = fptosi float %193 to i32
  %196 = fptosi float %194 to i32
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %216 = fmul fast float %214, %95
  %217 = fmul fast float %215, %96
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 114688
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %221, float %216, float 0.000000e+00
  %223 = select i1 %221, float %217, float 0.000000e+00
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %222, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fmul fast float %225, 2.550000e+02
  %227 = fptoui float %226 to i32
  %228 = select i1 %221, i32 %227, i32 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %248

; <label>:237                                     ; preds = %0
  %238 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %239 = fmul fast float %238, %96
  %240 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %241 = fmul fast float %240, %95
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %241, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %234, 0
  %250 = and i1 %233, %249
  br label %251

; <label>:251                                     ; preds = %248, %237
  %252 = phi i1 [ %247, %237 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %95, 2.560000e+02
  %257 = frem fast float %96, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %54, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %54, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %54, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %54, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = add i32 %54, 172
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %54, 232
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %320, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %320, 16
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = add i32 %54, 52
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %54, 304
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %54, 188
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %54, 248
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %362, 8
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %362, 16
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = add i32 %54, 68
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %54, 320
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %54, 204
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %54, 264
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %404, 8
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = lshr i32 %404, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = add i32 %54, 84
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %54, 336
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %54, 348
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %434, 64
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %434, 128
  %440 = icmp eq i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

; <label>:445                                     ; preds = %251
  %446 = add i32 %54, 520
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %450, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = fmul fast float %455, %79
  %457 = fmul fast float %452, %80
  %458 = fmul fast float %453, %81
  %459 = fmul fast float %454, %82
  br label %460

; <label>:460                                     ; preds = %445, %251
  %461 = phi float [ %82, %251 ], [ %459, %445 ]
  %462 = phi float [ %81, %251 ], [ %458, %445 ]
  %463 = phi float [ %80, %251 ], [ %457, %445 ]
  %464 = phi float [ %79, %251 ], [ %456, %445 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %488, label %469

; <label>:469                                     ; preds = %460
  %470 = add i32 %54, 44
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %463, float 1.000000e+00
  %476 = add i32 %54, 60
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %462, float 1.000000e+00
  %482 = add i32 %54, 76
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %461, float 1.000000e+00
  br label %488

; <label>:488                                     ; preds = %469, %460
  %489 = phi float [ %461, %460 ], [ %487, %469 ]
  %490 = phi float [ %462, %460 ], [ %481, %469 ]
  %491 = phi float [ %463, %460 ], [ %475, %469 ]
  %492 = lshr i32 %466, 20
  %493 = and i32 %492, 3
  %494 = add nuw nsw i32 %493, 1
  %495 = add i32 %54, 24
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %54, 28
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %500, %497
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1152, label %503

; <label>:503                                     ; preds = %488
  %504 = and i32 %497, 262144
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %57, float 1.000000e+00
  %507 = select i1 %505, float %58, float 0.000000e+00
  %508 = select i1 %505, float %59, float 0.000000e+00
  %509 = select i1 %505, float %60, float 1.000000e+00
  %510 = select i1 %505, float %61, float %77
  %511 = select i1 %505, float %62, float %78
  %512 = add i32 %54, 284
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %516, 0x3F50624DE0000000
  %518 = add i32 %54, 88
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = lshr i32 %520, 24
  %524 = add i32 %54, 292
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %54, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = shl i32 %533, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, 1.000000e+03
  %546 = fmul fast float %304, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %294
  %549 = fmul fast float %305, %545
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fadd fast float %550, %296
  %552 = fmul fast float %517, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fmul fast float %553, 0x401921FB60000000
  %555 = fadd fast float %554, %536
  %556 = call float @dx.op.unary.f32(i32 13, float %555)  ; Sin(value)
  %557 = call float @dx.op.unary.f32(i32 12, float %555)  ; Cos(value)
  %558 = fsub fast float -0.000000e+00, %556
  %559 = fadd fast float %510, -5.000000e-01
  %560 = fadd fast float %511, -5.000000e-01
  %561 = fmul fast float %528, %559
  %562 = fmul fast float %530, %560
  %563 = fadd fast float %561, 5.000000e-01
  %564 = fadd fast float %562, 5.000000e-01
  %565 = fmul fast float %539, %563
  %566 = fmul fast float %542, %564
  %567 = fmul fast float %557, %565
  %568 = call float @dx.op.tertiary.f32(i32 46, float %558, float %566, float %567)  ; FMad(a,b,c)
  %569 = fmul fast float %556, %565
  %570 = call float @dx.op.tertiary.f32(i32 46, float %557, float %566, float %569)  ; FMad(a,b,c)
  %571 = fadd fast float %548, %568
  %572 = fadd fast float %551, %570
  %573 = icmp ugt i32 %522, 1
  %574 = icmp ugt i32 %520, 33554431
  %575 = or i1 %574, %573
  br i1 %575, label %576, label %601

; <label>:576                                     ; preds = %503
  %577 = add i32 %54, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fmul fast float %544, %581
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = mul nuw nsw i32 %522, %523
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %583, %585
  %587 = call float @dx.op.unary.f32(i32 27, float %586)  ; Round_ni(value)
  %588 = fptoui float %587 to i32
  %589 = urem i32 %588, %522
  %590 = udiv i32 %588, %523
  %591 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %592 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %593 = uitofp i32 %589 to float
  %594 = uitofp i32 %590 to float
  %595 = fadd fast float %591, %593
  %596 = fadd fast float %592, %594
  %597 = uitofp i32 %522 to float
  %598 = uitofp i32 %523 to float
  %599 = fdiv fast float %595, %597
  %600 = fdiv fast float %596, %598
  br label %601

; <label>:601                                     ; preds = %576, %503
  %602 = phi float [ %599, %576 ], [ %571, %503 ]
  %603 = phi float [ %600, %576 ], [ %572, %503 ]
  %604 = and i32 %497, 16777216
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %715, label %606

; <label>:606                                     ; preds = %601
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = fadd fast float %608, %158
  %612 = fadd fast float %609, %159
  %613 = fadd fast float %610, %160
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %617 = icmp eq i32 %55, 65535
  br i1 %617, label %712, label %618

; <label>:618                                     ; preds = %606
  %619 = lshr i32 %55, 1
  %620 = shl i32 %619, 2
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %55, 1
  %624 = icmp ne i32 %623, 0
  %625 = lshr i32 %622, 16
  %626 = and i32 %622, 65535
  %627 = select i1 %624, i32 %625, i32 %626
  %628 = icmp eq i32 %627, 65535
  br i1 %628, label %708, label %629

; <label>:629                                     ; preds = %618
  %630 = mul nuw nsw i32 %627, 40
  %631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = add nuw nsw i32 %630, 12
  %636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = add nuw nsw i32 %630, 24
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = add nuw nsw i32 %630, 36
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = fsub fast float %611, %632
  %649 = fsub fast float %612, %633
  %650 = fsub fast float %613, %634
  %651 = fmul fast float %647, %648
  %652 = fmul fast float %647, %649
  %653 = fmul fast float %647, %650
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fmul fast float %657, %637
  %661 = fmul fast float %658, %638
  %662 = fmul fast float %659, %639
  %663 = shl i32 %55, 2
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = add i32 %665, 0
  %667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %668 = call float @dx.op.unary.f32(i32 22, float %660)  ; Frc(value)
  %669 = call float @dx.op.unary.f32(i32 22, float %661)  ; Frc(value)
  %670 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %667, %dx.types.Handle %49, float %668, float %669, float %670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = extractvalue %dx.types.ResRet.f32 %671, 1
  %674 = extractvalue %dx.types.ResRet.f32 %671, 2
  %675 = fmul fast float %672, 1.023000e+03
  %676 = fmul fast float %673, 1.023000e+03
  %677 = fmul fast float %674, 1.023000e+03
  %678 = fadd fast float %675, 5.000000e-01
  %679 = fadd fast float %676, 5.000000e-01
  %680 = fadd fast float %677, 5.000000e-01
  %681 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %682 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %683 = call float @dx.op.unary.f32(i32 27, float %680)  ; Round_ni(value)
  %684 = fsub fast float %651, %654
  %685 = fsub fast float %652, %655
  %686 = fsub fast float %653, %656
  %687 = fmul fast float %684, 7.500000e-01
  %688 = fmul fast float %685, 7.500000e-01
  %689 = fmul fast float %686, 7.500000e-01
  %690 = fadd fast float %654, 1.250000e-01
  %691 = fadd fast float %690, %687
  %692 = fadd fast float %691, %681
  %693 = fadd fast float %655, 1.250000e-01
  %694 = fadd fast float %693, %688
  %695 = fadd fast float %694, %682
  %696 = fadd fast float %656, 1.250000e-01
  %697 = fadd fast float %696, %689
  %698 = fadd fast float %697, %683
  %699 = fmul fast float %692, %642
  %700 = fmul fast float %695, %643
  %701 = fmul fast float %698, %644
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %705, %dx.types.Handle %47, float %699, float %700, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  br label %708

; <label>:708                                     ; preds = %629, %618
  %709 = phi float [ %707, %629 ], [ -1.000000e+00, %618 ]
  %710 = fadd fast float %709, %616
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  br label %712

; <label>:712                                     ; preds = %708, %606
  %713 = phi float [ %711, %708 ], [ %616, %606 ]
  %714 = fmul fast float %713, %464
  br label %715

; <label>:715                                     ; preds = %712, %601
  %716 = phi float [ %714, %712 ], [ %464, %601 ]
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 256
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %767, label %721

; <label>:721                                     ; preds = %715
  %722 = add i32 %54, 472
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = add i32 %54, 100
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = shl i32 %731, 4
  %733 = and i32 %732, 32752
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %731, 7
  %736 = and i32 %735, 32752
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = fsub fast float 1.000000e+00, %716
  %739 = call float @dx.op.binary.f32(i32 35, float %738, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %740 = bitcast float %716 to i32
  %741 = sitofp i32 %740 to float
  %742 = fadd fast float %741, 0xC1CFBF8940000000
  %743 = fmul fast float %737, %742
  %744 = fadd fast float %743, 0x41CFBF8940000000
  %745 = fptosi float %744 to i32
  %746 = bitcast i32 %745 to float
  %747 = bitcast float %739 to i32
  %748 = sitofp i32 %747 to float
  %749 = fadd fast float %748, 0xC1CFBF8940000000
  %750 = fmul fast float %749, %737
  %751 = fadd fast float %750, 0x41CFBF8940000000
  %752 = fptosi float %751 to i32
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %746, %734
  %755 = fmul fast float %753, %734
  %756 = fsub fast float %739, %754
  %757 = fadd fast float %755, %739
  %758 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = fsub fast float %728, %758
  %761 = fsub fast float %759, %758
  %762 = bitcast float %761 to i32
  %763 = sub nsw i32 2129859010, %762
  %764 = bitcast i32 %763 to float
  %765 = fmul fast float %764, %760
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  br label %767

; <label>:767                                     ; preds = %721, %715
  %768 = phi float [ %766, %721 ], [ %716, %715 ]
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 128
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %789, label %773

; <label>:773                                     ; preds = %767
  %774 = add i32 %54, 456
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 524288
  %784 = icmp ne i32 %783, 0
  %785 = fcmp fast ogt float %780, 0x3FE0101020000000
  %786 = select i1 %785, float 1.000000e+00, float 0.000000e+00
  %787 = select i1 %784, float %786, float %780
  %788 = fmul fast float %787, %768
  br label %789

; <label>:789                                     ; preds = %773, %767
  %790 = phi float [ %788, %773 ], [ %768, %767 ]
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 16
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %993, label %795

; <label>:795                                     ; preds = %789
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %54, 408
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = add i32 %800, 0
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %802, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = extractvalue %dx.types.ResRet.f32 %803, 1
  %806 = extractvalue %dx.types.ResRet.f32 %803, 2
  %807 = extractvalue %dx.types.ResRet.f32 %803, 3
  %808 = and i32 %797, 255
  %809 = uitofp i32 %808 to float
  %810 = lshr i32 %797, 8
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %807, %809
  %814 = fadd fast float %813, %812
  %815 = fmul fast float %814, 0x3F70101000000000
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 512
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %828, label %820

; <label>:820                                     ; preds = %795
  %821 = add i32 %54, 488
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  br label %828

; <label>:828                                     ; preds = %820, %795
  %829 = phi float [ %827, %820 ], [ 1.000000e+00, %795 ]
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = and i32 %831, 33554432
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %940, label %834

; <label>:834                                     ; preds = %828
  %835 = add i32 %54, 224
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 65535
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = lshr i32 %837, 16
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = add i32 %54, 228
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = lshr i32 %848, 24
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = and i32 %848, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %848, 8
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = lshr i32 %848, 16
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F70101020000000
  %863 = add i32 %54, 220
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 24
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = and i32 %865, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = lshr i32 %865, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F70101020000000
  %876 = lshr i32 %865, 16
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F70101020000000
  %880 = bitcast float %804 to i32
  %881 = ashr i32 %880, 1
  %882 = sub nsw i32 1597463174, %881
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %804, 5.000000e-01
  %885 = fmul fast float %883, %883
  %886 = fmul fast float %885, %884
  %887 = fsub fast float 1.500000e+00, %886
  %888 = fmul fast float %883, %804
  %889 = fmul fast float %888, %887
  %890 = bitcast float %805 to i32
  %891 = ashr i32 %890, 1
  %892 = sub nsw i32 1597463174, %891
  %893 = bitcast i32 %892 to float
  %894 = fmul fast float %805, 5.000000e-01
  %895 = fmul fast float %893, %893
  %896 = fmul fast float %895, %894
  %897 = fsub fast float 1.500000e+00, %896
  %898 = fmul fast float %893, %805
  %899 = fmul fast float %898, %897
  %900 = bitcast float %806 to i32
  %901 = ashr i32 %900, 1
  %902 = sub nsw i32 1597463174, %901
  %903 = bitcast i32 %902 to float
  %904 = fmul fast float %806, 5.000000e-01
  %905 = fmul fast float %903, %903
  %906 = fmul fast float %905, %904
  %907 = fsub fast float 1.500000e+00, %906
  %908 = fmul fast float %903, %806
  %909 = fmul fast float %908, %907
  %910 = fsub fast float %889, %871
  %911 = fsub fast float %899, %875
  %912 = fsub fast float %909, %879
  %913 = fmul fast float %910, %839
  %914 = fmul fast float %911, %841
  %915 = fmul fast float %912, %846
  %916 = fadd fast float %913, %854
  %917 = fadd fast float %914, %858
  %918 = fadd fast float %915, %862
  %919 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %920 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %921 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %922 = fmul fast float %919, %919
  %923 = fmul fast float %920, %920
  %924 = fmul fast float %921, %921
  %925 = fsub fast float %922, %804
  %926 = fsub fast float %923, %805
  %927 = fsub fast float %924, %806
  %928 = fmul fast float %925, %829
  %929 = fmul fast float %926, %829
  %930 = fmul fast float %927, %829
  %931 = fadd fast float %928, %804
  %932 = fadd fast float %929, %805
  %933 = fadd fast float %930, %806
  %934 = fadd fast float %851, %815
  %935 = fsub fast float %934, %868
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fsub fast float %936, %815
  %938 = fmul fast float %937, %829
  %939 = fadd fast float %938, %815
  br label %993

; <label>:940                                     ; preds = %828
  %941 = and i32 %831, 134217728
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %977, label %943

; <label>:943                                     ; preds = %940
  %944 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %945 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %946 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %947 = fadd fast float %944, -5.000000e-01
  %948 = fadd fast float %945, -5.000000e-01
  %949 = fadd fast float %946, -5.000000e-01
  %950 = fmul fast float %947, %829
  %951 = fmul fast float %948, %829
  %952 = fmul fast float %949, %829
  %953 = fadd fast float %950, 5.000000e-01
  %954 = fadd fast float %951, 5.000000e-01
  %955 = fadd fast float %952, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %957 = call float @dx.op.unary.f32(i32 24, float %805)  ; Sqrt(value)
  %958 = call float @dx.op.unary.f32(i32 24, float %806)  ; Sqrt(value)
  %959 = fmul fast float %953, 2.000000e+00
  %960 = fsub fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %956
  %962 = fadd fast float %961, %959
  %963 = fmul fast float %962, %956
  %964 = fmul fast float %954, 2.000000e+00
  %965 = fsub fast float 1.000000e+00, %964
  %966 = fmul fast float %965, %957
  %967 = fadd fast float %966, %964
  %968 = fmul fast float %967, %957
  %969 = fmul fast float %955, 2.000000e+00
  %970 = fsub fast float 1.000000e+00, %969
  %971 = fmul fast float %970, %958
  %972 = fadd fast float %971, %969
  %973 = fmul fast float %972, %958
  %974 = fmul fast float %963, %963
  %975 = fmul fast float %968, %968
  %976 = fmul fast float %973, %973
  br label %993

; <label>:977                                     ; preds = %940
  %978 = fmul fast float %281, %281
  %979 = fmul fast float %285, %285
  %980 = fmul fast float %289, %289
  %981 = fadd fast float %978, -1.000000e+00
  %982 = fadd fast float %979, -1.000000e+00
  %983 = fadd fast float %980, -1.000000e+00
  %984 = fmul fast float %829, %981
  %985 = fmul fast float %829, %982
  %986 = fmul fast float %829, %983
  %987 = fadd fast float %984, 1.000000e+00
  %988 = fadd fast float %985, 1.000000e+00
  %989 = fadd fast float %986, 1.000000e+00
  %990 = fmul fast float %987, %804
  %991 = fmul fast float %988, %805
  %992 = fmul fast float %989, %806
  br label %993

; <label>:993                                     ; preds = %977, %943, %834, %789
  %994 = phi float [ %939, %834 ], [ %815, %943 ], [ %815, %977 ], [ 0x3FA23C0BE0000000, %789 ]
  %995 = phi float [ %931, %834 ], [ %974, %943 ], [ %990, %977 ], [ 1.000000e+00, %789 ]
  %996 = phi float [ %932, %834 ], [ %975, %943 ], [ %991, %977 ], [ 1.000000e+00, %789 ]
  %997 = phi float [ %933, %834 ], [ %976, %943 ], [ %992, %977 ], [ 1.000000e+00, %789 ]
  %998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.i32 %998, 1
  %1000 = and i32 %999, 1
  %1001 = icmp ne i32 %1000, 0
  %1002 = add i32 %54, 356
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 32
  %1006 = icmp ne i32 %1005, 0
  %1007 = and i1 %1001, %1006
  %1008 = select i1 %1007, float 1.000000e+00, float %995
  %1009 = select i1 %1007, float 0x3FD3333340000000, float %996
  %1010 = select i1 %1007, float 0x3FD3333340000000, float %997
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 32
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1087, label %1015

; <label>:1015                                    ; preds = %993
  %1016 = add i32 %54, 92
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %54, 424
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = add i32 %1021, 0
  %1023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1023, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = and i32 %1018, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1018, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = lshr i32 %1018, 16
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F70101000000000
  %1038 = fmul fast float %1025, %1030
  %1039 = fadd fast float %1038, %1033
  %1040 = fmul fast float %1039, 0x3F70101000000000
  %1041 = fadd fast float %1026, -5.000000e-01
  %1042 = fadd fast float %1028, -5.000000e-01
  %1043 = fmul fast float %1041, %1037
  %1044 = fmul fast float %1042, %1037
  %1045 = fadd fast float %1043, 5.000000e-01
  %1046 = fadd fast float %1044, 5.000000e-01
  %1047 = fmul fast float %1045, 2.000000e+00
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = fmul fast float %1046, 2.000000e+00
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = fadd fast float %1048, %1050
  %1052 = fmul fast float %1051, 5.000000e-01
  %1053 = fsub fast float %1048, %1050
  %1054 = fmul fast float %1053, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1058 = fsub fast float %1056, %1057
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1054, float %1058, float %1052, float %1054, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = call float @dx.op.unary.f32(i32 25, float %1059)  ; Rsqrt(value)
  %1061 = fmul fast float %1052, %1060
  %1062 = fmul fast float %1054, %1060
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 67108864
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1083, label %1067

; <label>:1067                                    ; preds = %1015
  %1068 = add i32 %54, 280
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1070, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = fsub fast float %1040, %1078
  %1080 = fmul fast float %1079, %1072
  %1081 = fadd fast float %1080, %1076
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  br label %1083

; <label>:1083                                    ; preds = %1067, %1015
  %1084 = phi float [ %1082, %1067 ], [ %1040, %1015 ]
  %1085 = call float @dx.op.dot2.f32(i32 54, float %1061, float %1062, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  %1086 = call float @dx.op.dot2.f32(i32 54, float %1061, float %1062, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  br label %1087

; <label>:1087                                    ; preds = %1083, %993
  %1088 = phi float [ %1084, %1083 ], [ 0x3FD6666660000000, %993 ]
  %1089 = phi float [ %1085, %1083 ], [ 0.000000e+00, %993 ]
  %1090 = phi float [ %1086, %1083 ], [ 0.000000e+00, %993 ]
  %1091 = phi float [ %1027, %1083 ], [ 1.000000e+00, %993 ]
  %1092 = add i32 %54, 160
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 22
  %1096 = shl nuw nsw i32 %1095, 5
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 64
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1135, label %1102

; <label>:1102                                    ; preds = %1087
  %1103 = add i32 %54, 440
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 131072
  %1111 = icmp eq i32 %1110, 0
  %1112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = fmul fast float %1113, %269
  %1117 = fmul fast float %1114, %272
  %1118 = fmul fast float %1115, %275
  br i1 %1111, label %1125, label %1119

; <label>:1119                                    ; preds = %1102
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = fmul fast float %1121, %1116
  %1123 = fmul fast float %1121, %1117
  %1124 = fmul fast float %1121, %1118
  br label %1125

; <label>:1125                                    ; preds = %1119, %1102
  %1126 = phi float [ %1122, %1119 ], [ %1116, %1102 ]
  %1127 = phi float [ %1123, %1119 ], [ %1117, %1102 ]
  %1128 = phi float [ %1124, %1119 ], [ %1118, %1102 ]
  %1129 = fmul fast float %1126, %1097
  %1130 = select i1 %252, float %1129, float %1126
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1127, float %1128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = select i1 %252, float 0.000000e+00, float %1126
  %1133 = select i1 %252, float %1131, float %1127
  %1134 = select i1 %252, float 0.000000e+00, float %1128
  br label %1135

; <label>:1135                                    ; preds = %1125, %1087
  %1136 = phi float [ %1132, %1125 ], [ 0.000000e+00, %1087 ]
  %1137 = phi float [ %1133, %1125 ], [ 0.000000e+00, %1087 ]
  %1138 = phi float [ %1134, %1125 ], [ 0.000000e+00, %1087 ]
  %1139 = add i32 %54, 96
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = lshr i32 %1141, 8
  %1145 = and i32 %1144, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = fmul fast float %1146, %1147
  %1149 = fadd fast float %1148, %1143
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  br label %1152

; <label>:1152                                    ; preds = %1135, %488
  %1153 = phi float [ 0.000000e+00, %488 ], [ %1089, %1135 ]
  %1154 = phi float [ 0.000000e+00, %488 ], [ %1090, %1135 ]
  %1155 = phi float [ 0.000000e+00, %488 ], [ %1008, %1135 ]
  %1156 = phi float [ 0.000000e+00, %488 ], [ %1009, %1135 ]
  %1157 = phi float [ 0.000000e+00, %488 ], [ %1010, %1135 ]
  %1158 = phi float [ 0.000000e+00, %488 ], [ %1136, %1135 ]
  %1159 = phi float [ 0.000000e+00, %488 ], [ %1137, %1135 ]
  %1160 = phi float [ 0.000000e+00, %488 ], [ %1138, %1135 ]
  %1161 = phi float [ 0.000000e+00, %488 ], [ %994, %1135 ]
  %1162 = phi float [ 0.000000e+00, %488 ], [ %790, %1135 ]
  %1163 = phi float [ 0.000000e+00, %488 ], [ %1088, %1135 ]
  %1164 = phi float [ 0.000000e+00, %488 ], [ %1091, %1135 ]
  %1165 = phi float [ 0.000000e+00, %488 ], [ %1151, %1135 ]
  br i1 %436, label %2007, label %1166

; <label>:1166                                    ; preds = %1152
  %1167 = icmp ult i32 %494, 2
  %1168 = add i32 %54, 40
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %54, 44
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = or i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %2007, label %1176

; <label>:1176                                    ; preds = %1166
  %1177 = and i32 %1170, 262144
  %1178 = icmp ne i32 %1177, 0
  %1179 = select i1 %1178, float %57, float 1.000000e+00
  %1180 = select i1 %1178, float %58, float 0.000000e+00
  %1181 = select i1 %1178, float %59, float 0.000000e+00
  %1182 = select i1 %1178, float %60, float 1.000000e+00
  %1183 = select i1 %1178, float %61, float %77
  %1184 = select i1 %1178, float %62, float %78
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
  %1219 = fmul fast float %346, %1218
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = fadd fast float %1220, %336
  %1222 = fmul fast float %347, %1218
  %1223 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1224 = fadd fast float %1223, %338
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
  %1284 = fadd fast float %1281, %158
  %1285 = fadd fast float %1282, %159
  %1286 = fadd fast float %1283, %160
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
  %1387 = fmul fast float %1386, %491
  br label %1388

; <label>:1388                                    ; preds = %1385, %1274
  %1389 = phi float [ %1387, %1385 ], [ %491, %1274 ]
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
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  br i1 %1464, label %2007, label %1465

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
  %1478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1477, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1496 = add i32 %54, 492
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1619 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1620 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
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
  %1653 = fmul fast float %323, %323
  %1654 = fmul fast float %327, %327
  %1655 = fmul fast float %331, %331
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
  %1699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1698, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = fmul fast float %1788, %311
  %1792 = fmul fast float %1789, %314
  %1793 = fmul fast float %1790, %317
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
  %1805 = select i1 %252, float %1804, float %1801
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1802, float %1803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = select i1 %252, float 0.000000e+00, float %1801
  %1808 = select i1 %252, float %1806, float %1802
  %1809 = select i1 %252, float 0.000000e+00, float %1803
  br label %1810

; <label>:1810                                    ; preds = %1800, %1762
  %1811 = phi float [ %1807, %1800 ], [ 0.000000e+00, %1762 ]
  %1812 = phi float [ %1808, %1800 ], [ 0.000000e+00, %1762 ]
  %1813 = phi float [ %1809, %1800 ], [ 0.000000e+00, %1762 ]
  %1814 = add i32 %54, 112
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 255
  %1818 = uitofp i32 %1817 to float
  %1819 = lshr i32 %1816, 8
  %1820 = and i32 %1819, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1684, float %1685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = fmul fast float %1821, %1822
  %1824 = fadd fast float %1823, %1818
  %1825 = fmul fast float %1824, 0x3F70101020000000
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  br i1 %1167, label %1827, label %1835

; <label>:1827                                    ; preds = %1810
  %1828 = fsub fast float 1.000000e+00, %1463
  %1829 = fmul fast float %1828, %1155
  %1830 = fmul fast float %1828, %1156
  %1831 = fmul fast float %1828, %1157
  %1832 = fmul fast float %1828, %1158
  %1833 = fmul fast float %1828, %1159
  %1834 = fmul fast float %1828, %1160
  br label %1835

; <label>:1835                                    ; preds = %1827, %1810
  %1836 = phi float [ %1829, %1827 ], [ %1155, %1810 ]
  %1837 = phi float [ %1830, %1827 ], [ %1156, %1810 ]
  %1838 = phi float [ %1831, %1827 ], [ %1157, %1810 ]
  %1839 = phi float [ %1832, %1827 ], [ %1158, %1810 ]
  %1840 = phi float [ %1833, %1827 ], [ %1159, %1810 ]
  %1841 = phi float [ %1834, %1827 ], [ %1160, %1810 ]
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 3
  %1845 = icmp eq i32 %1844, 3
  br i1 %1845, label %1924, label %1846

; <label>:1846                                    ; preds = %1835
  %1847 = and i32 %1843, 16
  %1848 = icmp ne i32 %1847, 0
  %1849 = select i1 %1848, float %1463, float 0.000000e+00
  %1850 = icmp eq i32 %1844, 0
  br i1 %1850, label %1851, label %1879

; <label>:1851                                    ; preds = %1846
  %1852 = and i32 %1843, 64
  %1853 = icmp ne i32 %1852, 0
  %1854 = select i1 %1853, float %1463, float 0.000000e+00
  %1855 = fsub fast float %1683, %1836
  %1856 = fsub fast float %1684, %1837
  %1857 = fsub fast float %1685, %1838
  %1858 = fmul fast float %1849, %1855
  %1859 = fmul fast float %1849, %1856
  %1860 = fmul fast float %1849, %1857
  %1861 = fadd fast float %1858, %1836
  %1862 = fadd fast float %1859, %1837
  %1863 = fadd fast float %1860, %1838
  %1864 = fsub fast float %1669, %1161
  %1865 = fmul fast float %1849, %1864
  %1866 = fadd fast float %1865, %1161
  %1867 = fsub fast float %1811, %1839
  %1868 = fsub fast float %1812, %1840
  %1869 = fsub fast float %1813, %1841
  %1870 = fmul fast float %1854, %1867
  %1871 = fmul fast float %1854, %1868
  %1872 = fmul fast float %1854, %1869
  %1873 = fadd fast float %1870, %1839
  %1874 = fadd fast float %1871, %1840
  %1875 = fadd fast float %1872, %1841
  %1876 = fsub fast float %1826, %1165
  %1877 = fmul fast float %1849, %1876
  %1878 = fadd fast float %1877, %1165
  br label %1924

; <label>:1879                                    ; preds = %1846
  %1880 = icmp eq i32 %1844, 1
  br i1 %1880, label %1881, label %1894

; <label>:1881                                    ; preds = %1879
  %1882 = fadd fast float %1683, -1.000000e+00
  %1883 = fadd fast float %1684, -1.000000e+00
  %1884 = fadd fast float %1685, -1.000000e+00
  %1885 = fmul fast float %1849, %1882
  %1886 = fmul fast float %1849, %1883
  %1887 = fmul fast float %1849, %1884
  %1888 = fadd fast float %1885, 1.000000e+00
  %1889 = fadd fast float %1886, 1.000000e+00
  %1890 = fadd fast float %1887, 1.000000e+00
  %1891 = fmul fast float %1888, %1836
  %1892 = fmul fast float %1889, %1837
  %1893 = fmul fast float %1890, %1838
  br label %1924

; <label>:1894                                    ; preds = %1879
  %1895 = icmp eq i32 %1844, 2
  br i1 %1895, label %1896, label %1924

; <label>:1896                                    ; preds = %1894
  %1897 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1898 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1899 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1900 = fadd fast float %1897, -5.000000e-01
  %1901 = fadd fast float %1898, -5.000000e-01
  %1902 = fadd fast float %1899, -5.000000e-01
  %1903 = fmul fast float %1900, %1849
  %1904 = fmul fast float %1901, %1849
  %1905 = fmul fast float %1902, %1849
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fadd fast float %1904, 5.000000e-01
  %1908 = fadd fast float %1905, 5.000000e-01
  %1909 = fmul fast float %1906, 2.000000e+00
  %1910 = fsub fast float 1.000000e+00, %1909
  %1911 = fmul fast float %1910, %1836
  %1912 = fadd fast float %1911, %1909
  %1913 = fmul fast float %1912, %1836
  %1914 = fmul fast float %1907, 2.000000e+00
  %1915 = fsub fast float 1.000000e+00, %1914
  %1916 = fmul fast float %1915, %1837
  %1917 = fadd fast float %1916, %1914
  %1918 = fmul fast float %1917, %1837
  %1919 = fmul fast float %1908, 2.000000e+00
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fmul fast float %1920, %1838
  %1922 = fadd fast float %1921, %1919
  %1923 = fmul fast float %1922, %1838
  br label %1924

; <label>:1924                                    ; preds = %1896, %1894, %1881, %1851, %1835
  %1925 = phi float [ %1836, %1835 ], [ %1913, %1896 ], [ %1836, %1894 ], [ %1891, %1881 ], [ %1861, %1851 ]
  %1926 = phi float [ %1837, %1835 ], [ %1918, %1896 ], [ %1837, %1894 ], [ %1892, %1881 ], [ %1862, %1851 ]
  %1927 = phi float [ %1838, %1835 ], [ %1923, %1896 ], [ %1838, %1894 ], [ %1893, %1881 ], [ %1863, %1851 ]
  %1928 = phi float [ %1839, %1835 ], [ %1839, %1896 ], [ %1839, %1894 ], [ %1839, %1881 ], [ %1873, %1851 ]
  %1929 = phi float [ %1840, %1835 ], [ %1840, %1896 ], [ %1840, %1894 ], [ %1840, %1881 ], [ %1874, %1851 ]
  %1930 = phi float [ %1841, %1835 ], [ %1841, %1896 ], [ %1841, %1894 ], [ %1841, %1881 ], [ %1875, %1851 ]
  %1931 = phi float [ %1161, %1835 ], [ %1161, %1896 ], [ %1161, %1894 ], [ %1161, %1881 ], [ %1866, %1851 ]
  %1932 = phi float [ %1165, %1835 ], [ %1165, %1896 ], [ %1165, %1894 ], [ %1165, %1881 ], [ %1878, %1851 ]
  %1933 = and i32 %1843, 12
  %1934 = icmp eq i32 %1933, 12
  br i1 %1934, label %2007, label %1935

; <label>:1935                                    ; preds = %1924
  %1936 = and i32 %1843, 2097184
  %1937 = icmp eq i32 %1936, 2097184
  %1938 = select i1 %1937, float %1463, float 0.000000e+00
  %1939 = and i32 %1843, 4194336
  %1940 = icmp eq i32 %1939, 4194336
  %1941 = select i1 %1940, float %1463, float 0.000000e+00
  %1942 = and i32 %1843, 8388640
  %1943 = icmp eq i32 %1942, 8388640
  %1944 = select i1 %1943, float %1463, float 0.000000e+00
  %1945 = icmp eq i32 %1933, 0
  br i1 %1945, label %1946, label %1959

; <label>:1946                                    ; preds = %1935
  %1947 = fsub fast float %1764, %1153
  %1948 = fsub fast float %1765, %1154
  %1949 = fmul fast float %1938, %1947
  %1950 = fmul fast float %1938, %1948
  %1951 = fadd fast float %1949, %1153
  %1952 = fadd fast float %1950, %1154
  %1953 = fsub fast float %1766, %1164
  %1954 = fmul fast float %1941, %1953
  %1955 = fadd fast float %1954, %1164
  %1956 = fsub fast float %1763, %1163
  %1957 = fmul fast float %1944, %1956
  %1958 = fadd fast float %1957, %1163
  br label %2007

; <label>:1959                                    ; preds = %1935
  %1960 = icmp eq i32 %1933, 4
  br i1 %1960, label %1961, label %1993

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1938, %1764
  %1963 = fmul fast float %1938, %1765
  %1964 = fadd fast float %1962, %1153
  %1965 = fadd fast float %1963, %1154
  %1966 = call float @dx.op.binary.f32(i32 36, float %1164, float %1766)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1164
  %1968 = fmul fast float %1967, %1941
  %1969 = fadd fast float %1968, %1164
  %1970 = fadd fast float %1763, %1163
  %1971 = fmul fast float %1970, 0x3FF337FAE0000000
  %1972 = fmul fast float %1163, %1163
  %1973 = fmul fast float %1763, %1763
  %1974 = fadd fast float %1973, %1972
  %1975 = fmul fast float %1974, 0x3FE5152B00000000
  %1976 = fmul fast float %1163, 0xBFCC1F85E0000000
  %1977 = fmul fast float %1976, %1763
  %1978 = fadd fast float %1977, 0xBFE1363700000000
  %1979 = fadd fast float %1978, %1971
  %1980 = fsub fast float %1979, %1975
  %1981 = fmul fast float %1970, 0x3FBA6F0D00000000
  %1982 = fmul fast float %1974, 0x3FD0432880000000
  %1983 = fmul fast float %1163, 0xBFEF110800000000
  %1984 = fmul fast float %1983, %1763
  %1985 = fadd fast float %1984, 1.000000e+00
  %1986 = fsub fast float %1985, %1981
  %1987 = fadd fast float %1986, %1982
  %1988 = fdiv fast float %1980, %1987
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float %1989, %1163
  %1991 = fmul fast float %1990, %1944
  %1992 = fadd fast float %1991, %1163
  br label %2007

; <label>:1993                                    ; preds = %1959
  %1994 = icmp eq i32 %1933, 8
  br i1 %1994, label %1995, label %2007

; <label>:1995                                    ; preds = %1993
  %1996 = fmul fast float %1938, %1764
  %1997 = fmul fast float %1938, %1765
  %1998 = fadd fast float %1996, %1153
  %1999 = fadd fast float %1997, %1154
  %2000 = call float @dx.op.binary.f32(i32 36, float %1164, float %1766)  ; FMin(a,b)
  %2001 = fsub fast float %2000, %1164
  %2002 = fmul fast float %2001, %1941
  %2003 = fadd fast float %2002, %1164
  %2004 = fsub fast float %1763, %1163
  %2005 = fmul fast float %1944, %2004
  %2006 = fadd fast float %2005, %1163
  br label %2007

; <label>:2007                                    ; preds = %1995, %1993, %1961, %1946, %1924, %1462, %1166, %1152
  %2008 = phi float [ %1153, %1924 ], [ %1153, %1462 ], [ %1153, %1152 ], [ %1998, %1995 ], [ %1153, %1993 ], [ %1964, %1961 ], [ %1951, %1946 ], [ %1153, %1166 ]
  %2009 = phi float [ %1154, %1924 ], [ %1154, %1462 ], [ %1154, %1152 ], [ %1999, %1995 ], [ %1154, %1993 ], [ %1965, %1961 ], [ %1952, %1946 ], [ %1154, %1166 ]
  %2010 = phi float [ %1925, %1924 ], [ %1155, %1462 ], [ %1155, %1152 ], [ %1925, %1995 ], [ %1925, %1993 ], [ %1925, %1961 ], [ %1925, %1946 ], [ %1155, %1166 ]
  %2011 = phi float [ %1926, %1924 ], [ %1156, %1462 ], [ %1156, %1152 ], [ %1926, %1995 ], [ %1926, %1993 ], [ %1926, %1961 ], [ %1926, %1946 ], [ %1156, %1166 ]
  %2012 = phi float [ %1927, %1924 ], [ %1157, %1462 ], [ %1157, %1152 ], [ %1927, %1995 ], [ %1927, %1993 ], [ %1927, %1961 ], [ %1927, %1946 ], [ %1157, %1166 ]
  %2013 = phi float [ %1928, %1924 ], [ %1158, %1462 ], [ %1158, %1152 ], [ %1928, %1995 ], [ %1928, %1993 ], [ %1928, %1961 ], [ %1928, %1946 ], [ %1158, %1166 ]
  %2014 = phi float [ %1929, %1924 ], [ %1159, %1462 ], [ %1159, %1152 ], [ %1929, %1995 ], [ %1929, %1993 ], [ %1929, %1961 ], [ %1929, %1946 ], [ %1159, %1166 ]
  %2015 = phi float [ %1930, %1924 ], [ %1160, %1462 ], [ %1160, %1152 ], [ %1930, %1995 ], [ %1930, %1993 ], [ %1930, %1961 ], [ %1930, %1946 ], [ %1160, %1166 ]
  %2016 = phi float [ %1931, %1924 ], [ %1161, %1462 ], [ %1161, %1152 ], [ %1931, %1995 ], [ %1931, %1993 ], [ %1931, %1961 ], [ %1931, %1946 ], [ %1161, %1166 ]
  %2017 = phi float [ %1163, %1924 ], [ %1163, %1462 ], [ %1163, %1152 ], [ %2006, %1995 ], [ %1163, %1993 ], [ %1992, %1961 ], [ %1958, %1946 ], [ %1163, %1166 ]
  %2018 = phi float [ %1164, %1924 ], [ %1164, %1462 ], [ %1164, %1152 ], [ %2003, %1995 ], [ %1164, %1993 ], [ %1969, %1961 ], [ %1955, %1946 ], [ %1164, %1166 ]
  %2019 = phi float [ %1932, %1924 ], [ %1165, %1462 ], [ %1165, %1152 ], [ %1932, %1995 ], [ %1932, %1993 ], [ %1932, %1961 ], [ %1932, %1946 ], [ %1165, %1166 ]
  br i1 %438, label %2861, label %2020

; <label>:2020                                    ; preds = %2007
  %2021 = icmp ult i32 %494, 3
  %2022 = add i32 %54, 56
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %54, 60
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = or i32 %2027, %2024
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2861, label %2030

; <label>:2030                                    ; preds = %2020
  %2031 = and i32 %2024, 262144
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %57, float 1.000000e+00
  %2034 = select i1 %2032, float %58, float 0.000000e+00
  %2035 = select i1 %2032, float %59, float 0.000000e+00
  %2036 = select i1 %2032, float %60, float 1.000000e+00
  %2037 = select i1 %2032, float %61, float %77
  %2038 = select i1 %2032, float %62, float %78
  %2039 = add i32 %54, 316
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 16
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = fmul fast float %2043, 0x3F50624DE0000000
  %2045 = add i32 %54, 120
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 16
  %2049 = and i32 %2048, 255
  %2050 = lshr i32 %2047, 24
  %2051 = add i32 %54, 324
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 65535
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = lshr i32 %2053, 16
  %2057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2056)  ; LegacyF16ToF32(value)
  %2058 = add i32 %54, 64
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = lshr i32 %2060, 22
  %2062 = shl nuw nsw i32 %2061, 5
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = shl i32 %2060, 4
  %2065 = and i32 %2064, 32752
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = lshr i32 %2060, 7
  %2068 = and i32 %2067, 32752
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2072 = fmul fast float %2071, 1.000000e+03
  %2073 = fmul fast float %388, %2072
  %2074 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2075 = fadd fast float %2074, %378
  %2076 = fmul fast float %389, %2072
  %2077 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2078 = fadd fast float %2077, %380
  %2079 = fmul fast float %2044, %2072
  %2080 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2081 = fmul fast float %2080, 0x401921FB60000000
  %2082 = fadd fast float %2081, %2063
  %2083 = call float @dx.op.unary.f32(i32 13, float %2082)  ; Sin(value)
  %2084 = call float @dx.op.unary.f32(i32 12, float %2082)  ; Cos(value)
  %2085 = fsub fast float -0.000000e+00, %2083
  %2086 = fadd fast float %2037, -5.000000e-01
  %2087 = fadd fast float %2038, -5.000000e-01
  %2088 = fmul fast float %2055, %2086
  %2089 = fmul fast float %2057, %2087
  %2090 = fadd fast float %2088, 5.000000e-01
  %2091 = fadd fast float %2089, 5.000000e-01
  %2092 = fmul fast float %2066, %2090
  %2093 = fmul fast float %2069, %2091
  %2094 = fmul fast float %2084, %2092
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %2085, float %2093, float %2094)  ; FMad(a,b,c)
  %2096 = fmul fast float %2083, %2092
  %2097 = call float @dx.op.tertiary.f32(i32 46, float %2084, float %2093, float %2096)  ; FMad(a,b,c)
  %2098 = fadd fast float %2075, %2095
  %2099 = fadd fast float %2078, %2097
  %2100 = icmp ugt i32 %2049, 1
  %2101 = icmp ugt i32 %2047, 33554431
  %2102 = or i1 %2101, %2100
  br i1 %2102, label %2103, label %2128

; <label>:2103                                    ; preds = %2030
  %2104 = add i32 %54, 260
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = lshr i32 %2106, 16
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = fmul fast float %2071, %2108
  %2110 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2111 = mul nuw nsw i32 %2049, %2050
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2110, %2112
  %2114 = call float @dx.op.unary.f32(i32 27, float %2113)  ; Round_ni(value)
  %2115 = fptoui float %2114 to i32
  %2116 = urem i32 %2115, %2049
  %2117 = udiv i32 %2115, %2050
  %2118 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2119 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2120 = uitofp i32 %2116 to float
  %2121 = uitofp i32 %2117 to float
  %2122 = fadd fast float %2118, %2120
  %2123 = fadd fast float %2119, %2121
  %2124 = uitofp i32 %2049 to float
  %2125 = uitofp i32 %2050 to float
  %2126 = fdiv fast float %2122, %2124
  %2127 = fdiv fast float %2123, %2125
  br label %2128

; <label>:2128                                    ; preds = %2103, %2030
  %2129 = phi float [ %2126, %2103 ], [ %2098, %2030 ]
  %2130 = phi float [ %2127, %2103 ], [ %2099, %2030 ]
  %2131 = and i32 %2024, 16777216
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2242, label %2133

; <label>:2133                                    ; preds = %2128
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.CBufRet.f32 %2134, 2
  %2138 = fadd fast float %2135, %158
  %2139 = fadd fast float %2136, %159
  %2140 = fadd fast float %2137, %160
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = icmp eq i32 %55, 65535
  br i1 %2144, label %2239, label %2145

; <label>:2145                                    ; preds = %2133
  %2146 = lshr i32 %55, 1
  %2147 = shl i32 %2146, 2
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %55, 1
  %2151 = icmp ne i32 %2150, 0
  %2152 = lshr i32 %2149, 16
  %2153 = and i32 %2149, 65535
  %2154 = select i1 %2151, i32 %2152, i32 %2153
  %2155 = icmp eq i32 %2154, 65535
  br i1 %2155, label %2235, label %2156

; <label>:2156                                    ; preds = %2145
  %2157 = mul nuw nsw i32 %2154, 40
  %2158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = add nuw nsw i32 %2157, 12
  %2163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = add nuw nsw i32 %2157, 24
  %2168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = add nuw nsw i32 %2157, 36
  %2173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = fsub fast float %2138, %2159
  %2176 = fsub fast float %2139, %2160
  %2177 = fsub fast float %2140, %2161
  %2178 = fmul fast float %2174, %2175
  %2179 = fmul fast float %2174, %2176
  %2180 = fmul fast float %2174, %2177
  %2181 = call float @dx.op.unary.f32(i32 27, float %2178)  ; Round_ni(value)
  %2182 = call float @dx.op.unary.f32(i32 27, float %2179)  ; Round_ni(value)
  %2183 = call float @dx.op.unary.f32(i32 27, float %2180)  ; Round_ni(value)
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fmul fast float %2184, %2164
  %2188 = fmul fast float %2185, %2165
  %2189 = fmul fast float %2186, %2166
  %2190 = shl i32 %55, 2
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %2192, 0
  %2194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2195 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2196 = call float @dx.op.unary.f32(i32 22, float %2188)  ; Frc(value)
  %2197 = call float @dx.op.unary.f32(i32 22, float %2189)  ; Frc(value)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2194, %dx.types.Handle %49, float %2195, float %2196, float %2197, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = fmul fast float %2199, 1.023000e+03
  %2203 = fmul fast float %2200, 1.023000e+03
  %2204 = fmul fast float %2201, 1.023000e+03
  %2205 = fadd fast float %2202, 5.000000e-01
  %2206 = fadd fast float %2203, 5.000000e-01
  %2207 = fadd fast float %2204, 5.000000e-01
  %2208 = call float @dx.op.unary.f32(i32 27, float %2205)  ; Round_ni(value)
  %2209 = call float @dx.op.unary.f32(i32 27, float %2206)  ; Round_ni(value)
  %2210 = call float @dx.op.unary.f32(i32 27, float %2207)  ; Round_ni(value)
  %2211 = fsub fast float %2178, %2181
  %2212 = fsub fast float %2179, %2182
  %2213 = fsub fast float %2180, %2183
  %2214 = fmul fast float %2211, 7.500000e-01
  %2215 = fmul fast float %2212, 7.500000e-01
  %2216 = fmul fast float %2213, 7.500000e-01
  %2217 = fadd fast float %2181, 1.250000e-01
  %2218 = fadd fast float %2217, %2214
  %2219 = fadd fast float %2218, %2208
  %2220 = fadd fast float %2182, 1.250000e-01
  %2221 = fadd fast float %2220, %2215
  %2222 = fadd fast float %2221, %2209
  %2223 = fadd fast float %2183, 1.250000e-01
  %2224 = fadd fast float %2223, %2216
  %2225 = fadd fast float %2224, %2210
  %2226 = fmul fast float %2219, %2169
  %2227 = fmul fast float %2222, %2170
  %2228 = fmul fast float %2225, %2171
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2232, %dx.types.Handle %47, float %2226, float %2227, float %2228, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  br label %2235

; <label>:2235                                    ; preds = %2156, %2145
  %2236 = phi float [ %2234, %2156 ], [ -1.000000e+00, %2145 ]
  %2237 = fadd fast float %2236, %2143
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  br label %2239

; <label>:2239                                    ; preds = %2235, %2133
  %2240 = phi float [ %2238, %2235 ], [ %2143, %2133 ]
  %2241 = fmul fast float %2240, %490
  br label %2242

; <label>:2242                                    ; preds = %2239, %2128
  %2243 = phi float [ %2241, %2239 ], [ %490, %2128 ]
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 256
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2294, label %2248

; <label>:2248                                    ; preds = %2242
  %2249 = add i32 %54, 480
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2255 = extractvalue %dx.types.ResRet.f32 %2254, 0
  %2256 = add i32 %54, 132
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = shl i32 %2258, 4
  %2260 = and i32 %2259, 32752
  %2261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2260)  ; LegacyF16ToF32(value)
  %2262 = lshr i32 %2258, 7
  %2263 = and i32 %2262, 32752
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = fsub fast float 1.000000e+00, %2243
  %2266 = call float @dx.op.binary.f32(i32 35, float %2265, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2267 = bitcast float %2243 to i32
  %2268 = sitofp i32 %2267 to float
  %2269 = fadd fast float %2268, 0xC1CFBF8940000000
  %2270 = fmul fast float %2264, %2269
  %2271 = fadd fast float %2270, 0x41CFBF8940000000
  %2272 = fptosi float %2271 to i32
  %2273 = bitcast i32 %2272 to float
  %2274 = bitcast float %2266 to i32
  %2275 = sitofp i32 %2274 to float
  %2276 = fadd fast float %2275, 0xC1CFBF8940000000
  %2277 = fmul fast float %2276, %2264
  %2278 = fadd fast float %2277, 0x41CFBF8940000000
  %2279 = fptosi float %2278 to i32
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2273, %2261
  %2282 = fmul fast float %2280, %2261
  %2283 = fsub fast float %2266, %2281
  %2284 = fadd fast float %2282, %2266
  %2285 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2286 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2287 = fsub fast float %2255, %2285
  %2288 = fsub fast float %2286, %2285
  %2289 = bitcast float %2288 to i32
  %2290 = sub nsw i32 2129859010, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2291, %2287
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  br label %2294

; <label>:2294                                    ; preds = %2248, %2242
  %2295 = phi float [ %2293, %2248 ], [ %2243, %2242 ]
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 128
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2316, label %2300

; <label>:2300                                    ; preds = %2294
  %2301 = add i32 %54, 464
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = add i32 %2303, 0
  %2305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2305, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 524288
  %2311 = icmp ne i32 %2310, 0
  %2312 = fcmp fast ogt float %2307, 0x3FE0101020000000
  %2313 = select i1 %2312, float 1.000000e+00, float 0.000000e+00
  %2314 = select i1 %2311, float %2313, float %2307
  %2315 = fmul fast float %2314, %2295
  br label %2316

; <label>:2316                                    ; preds = %2300, %2294
  %2317 = phi float [ %2315, %2300 ], [ %2295, %2294 ]
  %2318 = fcmp fast ult float %2317, 0x3F70101020000000
  br i1 %2318, label %2861, label %2319

; <label>:2319                                    ; preds = %2316
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 16
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2522, label %2324

; <label>:2324                                    ; preds = %2319
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = add i32 %54, 416
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.f32 %2332, 3
  %2337 = and i32 %2326, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = lshr i32 %2326, 8
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = fmul fast float %2336, %2338
  %2343 = fadd fast float %2342, %2341
  %2344 = fmul fast float %2343, 0x3F70101000000000
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 512
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2357, label %2349

; <label>:2349                                    ; preds = %2324
  %2350 = add i32 %54, 496
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %2352, 0
  %2354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2354, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  br label %2357

; <label>:2357                                    ; preds = %2349, %2324
  %2358 = phi float [ %2356, %2349 ], [ 1.000000e+00, %2324 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 33554432
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2469, label %2363

; <label>:2363                                    ; preds = %2357
  %2364 = add i32 %54, 256
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 65535
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = lshr i32 %2366, 16
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = add i32 %54, 260
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 65535
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = lshr i32 %2377, 24
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = and i32 %2377, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = lshr i32 %2377, 8
  %2385 = and i32 %2384, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = fmul fast float %2386, 0x3F70101020000000
  %2388 = lshr i32 %2377, 16
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2390, 0x3F70101020000000
  %2392 = add i32 %54, 252
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = lshr i32 %2394, 24
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = and i32 %2394, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = lshr i32 %2394, 8
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2403, 0x3F70101020000000
  %2405 = lshr i32 %2394, 16
  %2406 = and i32 %2405, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2407, 0x3F70101020000000
  %2409 = bitcast float %2333 to i32
  %2410 = ashr i32 %2409, 1
  %2411 = sub nsw i32 1597463174, %2410
  %2412 = bitcast i32 %2411 to float
  %2413 = fmul fast float %2333, 5.000000e-01
  %2414 = fmul fast float %2412, %2412
  %2415 = fmul fast float %2414, %2413
  %2416 = fsub fast float 1.500000e+00, %2415
  %2417 = fmul fast float %2412, %2333
  %2418 = fmul fast float %2417, %2416
  %2419 = bitcast float %2334 to i32
  %2420 = ashr i32 %2419, 1
  %2421 = sub nsw i32 1597463174, %2420
  %2422 = bitcast i32 %2421 to float
  %2423 = fmul fast float %2334, 5.000000e-01
  %2424 = fmul fast float %2422, %2422
  %2425 = fmul fast float %2424, %2423
  %2426 = fsub fast float 1.500000e+00, %2425
  %2427 = fmul fast float %2422, %2334
  %2428 = fmul fast float %2427, %2426
  %2429 = bitcast float %2335 to i32
  %2430 = ashr i32 %2429, 1
  %2431 = sub nsw i32 1597463174, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = fmul fast float %2335, 5.000000e-01
  %2434 = fmul fast float %2432, %2432
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float 1.500000e+00, %2435
  %2437 = fmul fast float %2432, %2335
  %2438 = fmul fast float %2437, %2436
  %2439 = fsub fast float %2418, %2400
  %2440 = fsub fast float %2428, %2404
  %2441 = fsub fast float %2438, %2408
  %2442 = fmul fast float %2439, %2368
  %2443 = fmul fast float %2440, %2370
  %2444 = fmul fast float %2441, %2375
  %2445 = fadd fast float %2442, %2383
  %2446 = fadd fast float %2443, %2387
  %2447 = fadd fast float %2444, %2391
  %2448 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2449 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2450 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2451 = fmul fast float %2448, %2448
  %2452 = fmul fast float %2449, %2449
  %2453 = fmul fast float %2450, %2450
  %2454 = fsub fast float %2451, %2333
  %2455 = fsub fast float %2452, %2334
  %2456 = fsub fast float %2453, %2335
  %2457 = fmul fast float %2454, %2358
  %2458 = fmul fast float %2455, %2358
  %2459 = fmul fast float %2456, %2358
  %2460 = fadd fast float %2457, %2333
  %2461 = fadd fast float %2458, %2334
  %2462 = fadd fast float %2459, %2335
  %2463 = fadd fast float %2380, %2344
  %2464 = fsub fast float %2463, %2397
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fsub fast float %2465, %2344
  %2467 = fmul fast float %2466, %2358
  %2468 = fadd fast float %2467, %2344
  br label %2522

; <label>:2469                                    ; preds = %2357
  %2470 = and i32 %2360, 134217728
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2506, label %2472

; <label>:2472                                    ; preds = %2469
  %2473 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2474 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2475 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2476 = fadd fast float %2473, -5.000000e-01
  %2477 = fadd fast float %2474, -5.000000e-01
  %2478 = fadd fast float %2475, -5.000000e-01
  %2479 = fmul fast float %2476, %2358
  %2480 = fmul fast float %2477, %2358
  %2481 = fmul fast float %2478, %2358
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fadd fast float %2480, 5.000000e-01
  %2484 = fadd fast float %2481, 5.000000e-01
  %2485 = call float @dx.op.unary.f32(i32 24, float %2333)  ; Sqrt(value)
  %2486 = call float @dx.op.unary.f32(i32 24, float %2334)  ; Sqrt(value)
  %2487 = call float @dx.op.unary.f32(i32 24, float %2335)  ; Sqrt(value)
  %2488 = fmul fast float %2482, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2485
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2485
  %2493 = fmul fast float %2483, 2.000000e+00
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2486
  %2496 = fadd fast float %2495, %2493
  %2497 = fmul fast float %2496, %2486
  %2498 = fmul fast float %2484, 2.000000e+00
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2499, %2487
  %2501 = fadd fast float %2500, %2498
  %2502 = fmul fast float %2501, %2487
  %2503 = fmul fast float %2492, %2492
  %2504 = fmul fast float %2497, %2497
  %2505 = fmul fast float %2502, %2502
  br label %2522

; <label>:2506                                    ; preds = %2469
  %2507 = fmul fast float %365, %365
  %2508 = fmul fast float %369, %369
  %2509 = fmul fast float %373, %373
  %2510 = fadd fast float %2507, -1.000000e+00
  %2511 = fadd fast float %2508, -1.000000e+00
  %2512 = fadd fast float %2509, -1.000000e+00
  %2513 = fmul fast float %2358, %2510
  %2514 = fmul fast float %2358, %2511
  %2515 = fmul fast float %2358, %2512
  %2516 = fadd fast float %2513, 1.000000e+00
  %2517 = fadd fast float %2514, 1.000000e+00
  %2518 = fadd fast float %2515, 1.000000e+00
  %2519 = fmul fast float %2516, %2333
  %2520 = fmul fast float %2517, %2334
  %2521 = fmul fast float %2518, %2335
  br label %2522

; <label>:2522                                    ; preds = %2506, %2472, %2363, %2319
  %2523 = phi float [ %2468, %2363 ], [ %2344, %2472 ], [ %2344, %2506 ], [ 0x3FA23C0BE0000000, %2319 ]
  %2524 = phi float [ %2460, %2363 ], [ %2503, %2472 ], [ %2519, %2506 ], [ 1.000000e+00, %2319 ]
  %2525 = phi float [ %2461, %2363 ], [ %2504, %2472 ], [ %2520, %2506 ], [ 1.000000e+00, %2319 ]
  %2526 = phi float [ %2462, %2363 ], [ %2505, %2472 ], [ %2521, %2506 ], [ 1.000000e+00, %2319 ]
  %2527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.i32 %2527, 1
  %2529 = and i32 %2528, 1
  %2530 = icmp ne i32 %2529, 0
  %2531 = add i32 %54, 356
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 32
  %2535 = icmp ne i32 %2534, 0
  %2536 = and i1 %2530, %2535
  %2537 = select i1 %2536, float 1.000000e+00, float %2524
  %2538 = select i1 %2536, float 0x3FD3333340000000, float %2525
  %2539 = select i1 %2536, float 0x3FD3333340000000, float %2526
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 32
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2616, label %2544

; <label>:2544                                    ; preds = %2522
  %2545 = add i32 %54, 124
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = add i32 %54, 432
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = add i32 %2550, 0
  %2552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2552, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = extractvalue %dx.types.ResRet.f32 %2553, 3
  %2558 = and i32 %2547, 255
  %2559 = uitofp i32 %2558 to float
  %2560 = lshr i32 %2547, 8
  %2561 = and i32 %2560, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = lshr i32 %2547, 16
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = fmul fast float %2565, 0x3F70101000000000
  %2567 = fmul fast float %2554, %2559
  %2568 = fadd fast float %2567, %2562
  %2569 = fmul fast float %2568, 0x3F70101000000000
  %2570 = fadd fast float %2555, -5.000000e-01
  %2571 = fadd fast float %2557, -5.000000e-01
  %2572 = fmul fast float %2570, %2566
  %2573 = fmul fast float %2571, %2566
  %2574 = fadd fast float %2572, 5.000000e-01
  %2575 = fadd fast float %2573, 5.000000e-01
  %2576 = fmul fast float %2574, 2.000000e+00
  %2577 = fadd fast float %2576, -1.000000e+00
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fadd fast float %2578, -1.000000e+00
  %2580 = fadd fast float %2577, %2579
  %2581 = fmul fast float %2580, 5.000000e-01
  %2582 = fsub fast float %2577, %2579
  %2583 = fmul fast float %2582, 5.000000e-01
  %2584 = call float @dx.op.unary.f32(i32 6, float %2581)  ; FAbs(value)
  %2585 = fsub fast float 1.000000e+00, %2584
  %2586 = call float @dx.op.unary.f32(i32 6, float %2583)  ; FAbs(value)
  %2587 = fsub fast float %2585, %2586
  %2588 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2583, float %2587, float %2581, float %2583, float %2587)  ; Dot3(ax,ay,az,bx,by,bz)
  %2589 = call float @dx.op.unary.f32(i32 25, float %2588)  ; Rsqrt(value)
  %2590 = fmul fast float %2581, %2589
  %2591 = fmul fast float %2583, %2589
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 67108864
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2612, label %2596

; <label>:2596                                    ; preds = %2544
  %2597 = add i32 %54, 312
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 65535
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 65535
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = lshr i32 %2599, 16
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = fsub fast float %2569, %2607
  %2609 = fmul fast float %2608, %2601
  %2610 = fadd fast float %2609, %2605
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  br label %2612

; <label>:2612                                    ; preds = %2596, %2544
  %2613 = phi float [ %2611, %2596 ], [ %2569, %2544 ]
  %2614 = call float @dx.op.dot2.f32(i32 54, float %2590, float %2591, float %2033, float %2034)  ; Dot2(ax,ay,bx,by)
  %2615 = call float @dx.op.dot2.f32(i32 54, float %2590, float %2591, float %2035, float %2036)  ; Dot2(ax,ay,bx,by)
  br label %2616

; <label>:2616                                    ; preds = %2612, %2522
  %2617 = phi float [ %2613, %2612 ], [ 0x3FD6666660000000, %2522 ]
  %2618 = phi float [ %2614, %2612 ], [ 0.000000e+00, %2522 ]
  %2619 = phi float [ %2615, %2612 ], [ 0.000000e+00, %2522 ]
  %2620 = phi float [ %2556, %2612 ], [ 1.000000e+00, %2522 ]
  %2621 = add i32 %54, 192
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 22
  %2625 = shl nuw nsw i32 %2624, 5
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 64
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2664, label %2631

; <label>:2631                                    ; preds = %2616
  %2632 = add i32 %54, 448
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = add i32 %2634, 0
  %2636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 131072
  %2640 = icmp eq i32 %2639, 0
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2636, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = fmul fast float %2642, %353
  %2646 = fmul fast float %2643, %356
  %2647 = fmul fast float %2644, %359
  br i1 %2640, label %2654, label %2648

; <label>:2648                                    ; preds = %2631
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = fmul fast float %2650, %2645
  %2652 = fmul fast float %2650, %2646
  %2653 = fmul fast float %2650, %2647
  br label %2654

; <label>:2654                                    ; preds = %2648, %2631
  %2655 = phi float [ %2651, %2648 ], [ %2645, %2631 ]
  %2656 = phi float [ %2652, %2648 ], [ %2646, %2631 ]
  %2657 = phi float [ %2653, %2648 ], [ %2647, %2631 ]
  %2658 = fmul fast float %2655, %2626
  %2659 = select i1 %252, float %2658, float %2655
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2659, float %2656, float %2657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = select i1 %252, float 0.000000e+00, float %2655
  %2662 = select i1 %252, float %2660, float %2656
  %2663 = select i1 %252, float 0.000000e+00, float %2657
  br label %2664

; <label>:2664                                    ; preds = %2654, %2616
  %2665 = phi float [ %2661, %2654 ], [ 0.000000e+00, %2616 ]
  %2666 = phi float [ %2662, %2654 ], [ 0.000000e+00, %2616 ]
  %2667 = phi float [ %2663, %2654 ], [ 0.000000e+00, %2616 ]
  %2668 = add i32 %54, 128
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = lshr i32 %2670, 8
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2537, float %2538, float %2539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = fmul fast float %2675, %2676
  %2678 = fadd fast float %2677, %2672
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  br i1 %2021, label %2681, label %2689

; <label>:2681                                    ; preds = %2664
  %2682 = fsub fast float 1.000000e+00, %2317
  %2683 = fmul fast float %2682, %2010
  %2684 = fmul fast float %2682, %2011
  %2685 = fmul fast float %2682, %2012
  %2686 = fmul fast float %2682, %2013
  %2687 = fmul fast float %2682, %2014
  %2688 = fmul fast float %2682, %2015
  br label %2689

; <label>:2689                                    ; preds = %2681, %2664
  %2690 = phi float [ %2683, %2681 ], [ %2010, %2664 ]
  %2691 = phi float [ %2684, %2681 ], [ %2011, %2664 ]
  %2692 = phi float [ %2685, %2681 ], [ %2012, %2664 ]
  %2693 = phi float [ %2686, %2681 ], [ %2013, %2664 ]
  %2694 = phi float [ %2687, %2681 ], [ %2014, %2664 ]
  %2695 = phi float [ %2688, %2681 ], [ %2015, %2664 ]
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = and i32 %2697, 3
  %2699 = icmp eq i32 %2698, 3
  br i1 %2699, label %2778, label %2700

; <label>:2700                                    ; preds = %2689
  %2701 = and i32 %2697, 16
  %2702 = icmp ne i32 %2701, 0
  %2703 = select i1 %2702, float %2317, float 0.000000e+00
  %2704 = icmp eq i32 %2698, 0
  br i1 %2704, label %2705, label %2733

; <label>:2705                                    ; preds = %2700
  %2706 = and i32 %2697, 64
  %2707 = icmp ne i32 %2706, 0
  %2708 = select i1 %2707, float %2317, float 0.000000e+00
  %2709 = fsub fast float %2537, %2690
  %2710 = fsub fast float %2538, %2691
  %2711 = fsub fast float %2539, %2692
  %2712 = fmul fast float %2703, %2709
  %2713 = fmul fast float %2703, %2710
  %2714 = fmul fast float %2703, %2711
  %2715 = fadd fast float %2712, %2690
  %2716 = fadd fast float %2713, %2691
  %2717 = fadd fast float %2714, %2692
  %2718 = fsub fast float %2523, %2016
  %2719 = fmul fast float %2703, %2718
  %2720 = fadd fast float %2719, %2016
  %2721 = fsub fast float %2665, %2693
  %2722 = fsub fast float %2666, %2694
  %2723 = fsub fast float %2667, %2695
  %2724 = fmul fast float %2708, %2721
  %2725 = fmul fast float %2708, %2722
  %2726 = fmul fast float %2708, %2723
  %2727 = fadd fast float %2724, %2693
  %2728 = fadd fast float %2725, %2694
  %2729 = fadd fast float %2726, %2695
  %2730 = fsub fast float %2680, %2019
  %2731 = fmul fast float %2703, %2730
  %2732 = fadd fast float %2731, %2019
  br label %2778

; <label>:2733                                    ; preds = %2700
  %2734 = icmp eq i32 %2698, 1
  br i1 %2734, label %2735, label %2748

; <label>:2735                                    ; preds = %2733
  %2736 = fadd fast float %2537, -1.000000e+00
  %2737 = fadd fast float %2538, -1.000000e+00
  %2738 = fadd fast float %2539, -1.000000e+00
  %2739 = fmul fast float %2703, %2736
  %2740 = fmul fast float %2703, %2737
  %2741 = fmul fast float %2703, %2738
  %2742 = fadd fast float %2739, 1.000000e+00
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fmul fast float %2742, %2690
  %2746 = fmul fast float %2743, %2691
  %2747 = fmul fast float %2744, %2692
  br label %2778

; <label>:2748                                    ; preds = %2733
  %2749 = icmp eq i32 %2698, 2
  br i1 %2749, label %2750, label %2778

; <label>:2750                                    ; preds = %2748
  %2751 = call float @dx.op.unary.f32(i32 24, float %2537)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2538)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2703
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2703
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fmul fast float %2760, 2.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2690
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2690
  %2768 = fmul fast float %2761, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2691
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2691
  %2773 = fmul fast float %2762, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2692
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2692
  br label %2778

; <label>:2778                                    ; preds = %2750, %2748, %2735, %2705, %2689
  %2779 = phi float [ %2690, %2689 ], [ %2767, %2750 ], [ %2690, %2748 ], [ %2745, %2735 ], [ %2715, %2705 ]
  %2780 = phi float [ %2691, %2689 ], [ %2772, %2750 ], [ %2691, %2748 ], [ %2746, %2735 ], [ %2716, %2705 ]
  %2781 = phi float [ %2692, %2689 ], [ %2777, %2750 ], [ %2692, %2748 ], [ %2747, %2735 ], [ %2717, %2705 ]
  %2782 = phi float [ %2693, %2689 ], [ %2693, %2750 ], [ %2693, %2748 ], [ %2693, %2735 ], [ %2727, %2705 ]
  %2783 = phi float [ %2694, %2689 ], [ %2694, %2750 ], [ %2694, %2748 ], [ %2694, %2735 ], [ %2728, %2705 ]
  %2784 = phi float [ %2695, %2689 ], [ %2695, %2750 ], [ %2695, %2748 ], [ %2695, %2735 ], [ %2729, %2705 ]
  %2785 = phi float [ %2016, %2689 ], [ %2016, %2750 ], [ %2016, %2748 ], [ %2016, %2735 ], [ %2720, %2705 ]
  %2786 = phi float [ %2019, %2689 ], [ %2019, %2750 ], [ %2019, %2748 ], [ %2019, %2735 ], [ %2732, %2705 ]
  %2787 = and i32 %2697, 12
  %2788 = icmp eq i32 %2787, 12
  br i1 %2788, label %2861, label %2789

; <label>:2789                                    ; preds = %2778
  %2790 = and i32 %2697, 2097184
  %2791 = icmp eq i32 %2790, 2097184
  %2792 = select i1 %2791, float %2317, float 0.000000e+00
  %2793 = and i32 %2697, 4194336
  %2794 = icmp eq i32 %2793, 4194336
  %2795 = select i1 %2794, float %2317, float 0.000000e+00
  %2796 = and i32 %2697, 8388640
  %2797 = icmp eq i32 %2796, 8388640
  %2798 = select i1 %2797, float %2317, float 0.000000e+00
  %2799 = icmp eq i32 %2787, 0
  br i1 %2799, label %2800, label %2813

; <label>:2800                                    ; preds = %2789
  %2801 = fsub fast float %2618, %2008
  %2802 = fsub fast float %2619, %2009
  %2803 = fmul fast float %2792, %2801
  %2804 = fmul fast float %2792, %2802
  %2805 = fadd fast float %2803, %2008
  %2806 = fadd fast float %2804, %2009
  %2807 = fsub fast float %2620, %2018
  %2808 = fmul fast float %2795, %2807
  %2809 = fadd fast float %2808, %2018
  %2810 = fsub fast float %2617, %2017
  %2811 = fmul fast float %2798, %2810
  %2812 = fadd fast float %2811, %2017
  br label %2861

; <label>:2813                                    ; preds = %2789
  %2814 = icmp eq i32 %2787, 4
  br i1 %2814, label %2815, label %2847

; <label>:2815                                    ; preds = %2813
  %2816 = fmul fast float %2792, %2618
  %2817 = fmul fast float %2792, %2619
  %2818 = fadd fast float %2816, %2008
  %2819 = fadd fast float %2817, %2009
  %2820 = call float @dx.op.binary.f32(i32 36, float %2018, float %2620)  ; FMin(a,b)
  %2821 = fsub fast float %2820, %2018
  %2822 = fmul fast float %2821, %2795
  %2823 = fadd fast float %2822, %2018
  %2824 = fadd fast float %2617, %2017
  %2825 = fmul fast float %2824, 0x3FF337FAE0000000
  %2826 = fmul fast float %2017, %2017
  %2827 = fmul fast float %2617, %2617
  %2828 = fadd fast float %2827, %2826
  %2829 = fmul fast float %2828, 0x3FE5152B00000000
  %2830 = fmul fast float %2017, 0xBFCC1F85E0000000
  %2831 = fmul fast float %2830, %2617
  %2832 = fadd fast float %2831, 0xBFE1363700000000
  %2833 = fadd fast float %2832, %2825
  %2834 = fsub fast float %2833, %2829
  %2835 = fmul fast float %2824, 0x3FBA6F0D00000000
  %2836 = fmul fast float %2828, 0x3FD0432880000000
  %2837 = fmul fast float %2017, 0xBFEF110800000000
  %2838 = fmul fast float %2837, %2617
  %2839 = fadd fast float %2838, 1.000000e+00
  %2840 = fsub fast float %2839, %2835
  %2841 = fadd fast float %2840, %2836
  %2842 = fdiv fast float %2834, %2841
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fsub fast float %2843, %2017
  %2845 = fmul fast float %2844, %2798
  %2846 = fadd fast float %2845, %2017
  br label %2861

; <label>:2847                                    ; preds = %2813
  %2848 = icmp eq i32 %2787, 8
  br i1 %2848, label %2849, label %2861

; <label>:2849                                    ; preds = %2847
  %2850 = fmul fast float %2792, %2618
  %2851 = fmul fast float %2792, %2619
  %2852 = fadd fast float %2850, %2008
  %2853 = fadd fast float %2851, %2009
  %2854 = call float @dx.op.binary.f32(i32 36, float %2018, float %2620)  ; FMin(a,b)
  %2855 = fsub fast float %2854, %2018
  %2856 = fmul fast float %2855, %2795
  %2857 = fadd fast float %2856, %2018
  %2858 = fsub fast float %2617, %2017
  %2859 = fmul fast float %2798, %2858
  %2860 = fadd fast float %2859, %2017
  br label %2861

; <label>:2861                                    ; preds = %2849, %2847, %2815, %2800, %2778, %2316, %2020, %2007
  %2862 = phi float [ %2008, %2778 ], [ %2008, %2316 ], [ %2008, %2007 ], [ %2852, %2849 ], [ %2008, %2847 ], [ %2818, %2815 ], [ %2805, %2800 ], [ %2008, %2020 ]
  %2863 = phi float [ %2009, %2778 ], [ %2009, %2316 ], [ %2009, %2007 ], [ %2853, %2849 ], [ %2009, %2847 ], [ %2819, %2815 ], [ %2806, %2800 ], [ %2009, %2020 ]
  %2864 = phi float [ %2779, %2778 ], [ %2010, %2316 ], [ %2010, %2007 ], [ %2779, %2849 ], [ %2779, %2847 ], [ %2779, %2815 ], [ %2779, %2800 ], [ %2010, %2020 ]
  %2865 = phi float [ %2780, %2778 ], [ %2011, %2316 ], [ %2011, %2007 ], [ %2780, %2849 ], [ %2780, %2847 ], [ %2780, %2815 ], [ %2780, %2800 ], [ %2011, %2020 ]
  %2866 = phi float [ %2781, %2778 ], [ %2012, %2316 ], [ %2012, %2007 ], [ %2781, %2849 ], [ %2781, %2847 ], [ %2781, %2815 ], [ %2781, %2800 ], [ %2012, %2020 ]
  %2867 = phi float [ %2782, %2778 ], [ %2013, %2316 ], [ %2013, %2007 ], [ %2782, %2849 ], [ %2782, %2847 ], [ %2782, %2815 ], [ %2782, %2800 ], [ %2013, %2020 ]
  %2868 = phi float [ %2783, %2778 ], [ %2014, %2316 ], [ %2014, %2007 ], [ %2783, %2849 ], [ %2783, %2847 ], [ %2783, %2815 ], [ %2783, %2800 ], [ %2014, %2020 ]
  %2869 = phi float [ %2784, %2778 ], [ %2015, %2316 ], [ %2015, %2007 ], [ %2784, %2849 ], [ %2784, %2847 ], [ %2784, %2815 ], [ %2784, %2800 ], [ %2015, %2020 ]
  %2870 = phi float [ %2785, %2778 ], [ %2016, %2316 ], [ %2016, %2007 ], [ %2785, %2849 ], [ %2785, %2847 ], [ %2785, %2815 ], [ %2785, %2800 ], [ %2016, %2020 ]
  %2871 = phi float [ %2017, %2778 ], [ %2017, %2316 ], [ %2017, %2007 ], [ %2860, %2849 ], [ %2017, %2847 ], [ %2846, %2815 ], [ %2812, %2800 ], [ %2017, %2020 ]
  %2872 = phi float [ %2018, %2778 ], [ %2018, %2316 ], [ %2018, %2007 ], [ %2857, %2849 ], [ %2018, %2847 ], [ %2823, %2815 ], [ %2809, %2800 ], [ %2018, %2020 ]
  %2873 = phi float [ %2786, %2778 ], [ %2019, %2316 ], [ %2019, %2007 ], [ %2786, %2849 ], [ %2786, %2847 ], [ %2786, %2815 ], [ %2786, %2800 ], [ %2019, %2020 ]
  br i1 %440, label %3715, label %2874

; <label>:2874                                    ; preds = %2861
  %2875 = icmp ult i32 %494, 4
  %2876 = add i32 %54, 72
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = add i32 %54, 76
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = or i32 %2881, %2878
  %2883 = icmp eq i32 %2882, 0
  br i1 %2883, label %3715, label %2884

; <label>:2884                                    ; preds = %2874
  %2885 = and i32 %2878, 262144
  %2886 = icmp ne i32 %2885, 0
  %2887 = select i1 %2886, float %57, float 1.000000e+00
  %2888 = select i1 %2886, float %58, float 0.000000e+00
  %2889 = select i1 %2886, float %59, float 0.000000e+00
  %2890 = select i1 %2886, float %60, float 1.000000e+00
  %2891 = select i1 %2886, float %61, float %77
  %2892 = select i1 %2886, float %62, float %78
  %2893 = add i32 %54, 332
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 16
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = fmul fast float %2897, 0x3F50624DE0000000
  %2899 = add i32 %54, 136
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 16
  %2903 = and i32 %2902, 255
  %2904 = lshr i32 %2901, 24
  %2905 = add i32 %54, 340
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 65535
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = lshr i32 %2907, 16
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = add i32 %54, 80
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 22
  %2916 = shl nuw nsw i32 %2915, 5
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = shl i32 %2914, 4
  %2919 = and i32 %2918, 32752
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = lshr i32 %2914, 7
  %2922 = and i32 %2921, 32752
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 3
  %2926 = fmul fast float %2925, 1.000000e+03
  %2927 = fmul fast float %430, %2926
  %2928 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2929 = fadd fast float %2928, %420
  %2930 = fmul fast float %431, %2926
  %2931 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2932 = fadd fast float %2931, %422
  %2933 = fmul fast float %2898, %2926
  %2934 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2935 = fmul fast float %2934, 0x401921FB60000000
  %2936 = fadd fast float %2935, %2917
  %2937 = call float @dx.op.unary.f32(i32 13, float %2936)  ; Sin(value)
  %2938 = call float @dx.op.unary.f32(i32 12, float %2936)  ; Cos(value)
  %2939 = fsub fast float -0.000000e+00, %2937
  %2940 = fadd fast float %2891, -5.000000e-01
  %2941 = fadd fast float %2892, -5.000000e-01
  %2942 = fmul fast float %2909, %2940
  %2943 = fmul fast float %2911, %2941
  %2944 = fadd fast float %2942, 5.000000e-01
  %2945 = fadd fast float %2943, 5.000000e-01
  %2946 = fmul fast float %2920, %2944
  %2947 = fmul fast float %2923, %2945
  %2948 = fmul fast float %2938, %2946
  %2949 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2947, float %2948)  ; FMad(a,b,c)
  %2950 = fmul fast float %2937, %2946
  %2951 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2947, float %2950)  ; FMad(a,b,c)
  %2952 = fadd fast float %2929, %2949
  %2953 = fadd fast float %2932, %2951
  %2954 = icmp ugt i32 %2903, 1
  %2955 = icmp ugt i32 %2901, 33554431
  %2956 = or i1 %2955, %2954
  br i1 %2956, label %2957, label %2982

; <label>:2957                                    ; preds = %2884
  %2958 = add i32 %54, 276
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = lshr i32 %2960, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = fmul fast float %2925, %2962
  %2964 = call float @dx.op.unary.f32(i32 22, float %2963)  ; Frc(value)
  %2965 = mul nuw nsw i32 %2903, %2904
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2964, %2966
  %2968 = call float @dx.op.unary.f32(i32 27, float %2967)  ; Round_ni(value)
  %2969 = fptoui float %2968 to i32
  %2970 = urem i32 %2969, %2903
  %2971 = udiv i32 %2969, %2904
  %2972 = call float @dx.op.unary.f32(i32 22, float %2952)  ; Frc(value)
  %2973 = call float @dx.op.unary.f32(i32 22, float %2953)  ; Frc(value)
  %2974 = uitofp i32 %2970 to float
  %2975 = uitofp i32 %2971 to float
  %2976 = fadd fast float %2972, %2974
  %2977 = fadd fast float %2973, %2975
  %2978 = uitofp i32 %2903 to float
  %2979 = uitofp i32 %2904 to float
  %2980 = fdiv fast float %2976, %2978
  %2981 = fdiv fast float %2977, %2979
  br label %2982

; <label>:2982                                    ; preds = %2957, %2884
  %2983 = phi float [ %2980, %2957 ], [ %2952, %2884 ]
  %2984 = phi float [ %2981, %2957 ], [ %2953, %2884 ]
  %2985 = and i32 %2878, 16777216
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %3096, label %2987

; <label>:2987                                    ; preds = %2982
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2992 = fadd fast float %2989, %158
  %2993 = fadd fast float %2990, %159
  %2994 = fadd fast float %2991, %160
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = icmp eq i32 %55, 65535
  br i1 %2998, label %3093, label %2999

; <label>:2999                                    ; preds = %2987
  %3000 = lshr i32 %55, 1
  %3001 = shl i32 %3000, 2
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %55, 1
  %3005 = icmp ne i32 %3004, 0
  %3006 = lshr i32 %3003, 16
  %3007 = and i32 %3003, 65535
  %3008 = select i1 %3005, i32 %3006, i32 %3007
  %3009 = icmp eq i32 %3008, 65535
  br i1 %3009, label %3089, label %3010

; <label>:3010                                    ; preds = %2999
  %3011 = mul nuw nsw i32 %3008, 40
  %3012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = add nuw nsw i32 %3011, 12
  %3017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.f32 %3017, 0
  %3019 = extractvalue %dx.types.ResRet.f32 %3017, 1
  %3020 = extractvalue %dx.types.ResRet.f32 %3017, 2
  %3021 = add nuw nsw i32 %3011, 24
  %3022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = add nuw nsw i32 %3011, 36
  %3027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = fsub fast float %2992, %3013
  %3030 = fsub fast float %2993, %3014
  %3031 = fsub fast float %2994, %3015
  %3032 = fmul fast float %3028, %3029
  %3033 = fmul fast float %3028, %3030
  %3034 = fmul fast float %3028, %3031
  %3035 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3036 = call float @dx.op.unary.f32(i32 27, float %3033)  ; Round_ni(value)
  %3037 = call float @dx.op.unary.f32(i32 27, float %3034)  ; Round_ni(value)
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fmul fast float %3038, %3018
  %3042 = fmul fast float %3039, %3019
  %3043 = fmul fast float %3040, %3020
  %3044 = shl i32 %55, 2
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call float @dx.op.unary.f32(i32 22, float %3041)  ; Frc(value)
  %3050 = call float @dx.op.unary.f32(i32 22, float %3042)  ; Frc(value)
  %3051 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3048, %dx.types.Handle %49, float %3049, float %3050, float %3051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3053 = extractvalue %dx.types.ResRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.ResRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.ResRet.f32 %3052, 2
  %3056 = fmul fast float %3053, 1.023000e+03
  %3057 = fmul fast float %3054, 1.023000e+03
  %3058 = fmul fast float %3055, 1.023000e+03
  %3059 = fadd fast float %3056, 5.000000e-01
  %3060 = fadd fast float %3057, 5.000000e-01
  %3061 = fadd fast float %3058, 5.000000e-01
  %3062 = call float @dx.op.unary.f32(i32 27, float %3059)  ; Round_ni(value)
  %3063 = call float @dx.op.unary.f32(i32 27, float %3060)  ; Round_ni(value)
  %3064 = call float @dx.op.unary.f32(i32 27, float %3061)  ; Round_ni(value)
  %3065 = fsub fast float %3032, %3035
  %3066 = fsub fast float %3033, %3036
  %3067 = fsub fast float %3034, %3037
  %3068 = fmul fast float %3065, 7.500000e-01
  %3069 = fmul fast float %3066, 7.500000e-01
  %3070 = fmul fast float %3067, 7.500000e-01
  %3071 = fadd fast float %3035, 1.250000e-01
  %3072 = fadd fast float %3071, %3068
  %3073 = fadd fast float %3072, %3062
  %3074 = fadd fast float %3036, 1.250000e-01
  %3075 = fadd fast float %3074, %3069
  %3076 = fadd fast float %3075, %3063
  %3077 = fadd fast float %3037, 1.250000e-01
  %3078 = fadd fast float %3077, %3070
  %3079 = fadd fast float %3078, %3064
  %3080 = fmul fast float %3073, %3023
  %3081 = fmul fast float %3076, %3024
  %3082 = fmul fast float %3079, %3025
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = add i32 %3084, 0
  %3086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3086, %dx.types.Handle %47, float %3080, float %3081, float %3082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  br label %3089

; <label>:3089                                    ; preds = %3010, %2999
  %3090 = phi float [ %3088, %3010 ], [ -1.000000e+00, %2999 ]
  %3091 = fadd fast float %3090, %2997
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  br label %3093

; <label>:3093                                    ; preds = %3089, %2987
  %3094 = phi float [ %3092, %3089 ], [ %2997, %2987 ]
  %3095 = fmul fast float %3094, %489
  br label %3096

; <label>:3096                                    ; preds = %3093, %2982
  %3097 = phi float [ %3095, %3093 ], [ %489, %2982 ]
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 256
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3148, label %3102

; <label>:3102                                    ; preds = %3096
  %3103 = add i32 %54, 484
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %3105, 0
  %3107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3107, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = add i32 %54, 148
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = shl i32 %3112, 4
  %3114 = and i32 %3113, 32752
  %3115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3114)  ; LegacyF16ToF32(value)
  %3116 = lshr i32 %3112, 7
  %3117 = and i32 %3116, 32752
  %3118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3117)  ; LegacyF16ToF32(value)
  %3119 = fsub fast float 1.000000e+00, %3097
  %3120 = call float @dx.op.binary.f32(i32 35, float %3119, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3121 = bitcast float %3097 to i32
  %3122 = sitofp i32 %3121 to float
  %3123 = fadd fast float %3122, 0xC1CFBF8940000000
  %3124 = fmul fast float %3118, %3123
  %3125 = fadd fast float %3124, 0x41CFBF8940000000
  %3126 = fptosi float %3125 to i32
  %3127 = bitcast i32 %3126 to float
  %3128 = bitcast float %3120 to i32
  %3129 = sitofp i32 %3128 to float
  %3130 = fadd fast float %3129, 0xC1CFBF8940000000
  %3131 = fmul fast float %3130, %3118
  %3132 = fadd fast float %3131, 0x41CFBF8940000000
  %3133 = fptosi float %3132 to i32
  %3134 = bitcast i32 %3133 to float
  %3135 = fmul fast float %3127, %3115
  %3136 = fmul fast float %3134, %3115
  %3137 = fsub fast float %3120, %3135
  %3138 = fadd fast float %3136, %3120
  %3139 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3141 = fsub fast float %3109, %3139
  %3142 = fsub fast float %3140, %3139
  %3143 = bitcast float %3142 to i32
  %3144 = sub nsw i32 2129859010, %3143
  %3145 = bitcast i32 %3144 to float
  %3146 = fmul fast float %3145, %3141
  %3147 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  br label %3148

; <label>:3148                                    ; preds = %3102, %3096
  %3149 = phi float [ %3147, %3102 ], [ %3097, %3096 ]
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 128
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3170, label %3154

; <label>:3154                                    ; preds = %3148
  %3155 = add i32 %54, 468
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 524288
  %3165 = icmp ne i32 %3164, 0
  %3166 = fcmp fast ogt float %3161, 0x3FE0101020000000
  %3167 = select i1 %3166, float 1.000000e+00, float 0.000000e+00
  %3168 = select i1 %3165, float %3167, float %3161
  %3169 = fmul fast float %3168, %3149
  br label %3170

; <label>:3170                                    ; preds = %3154, %3148
  %3171 = phi float [ %3169, %3154 ], [ %3149, %3148 ]
  %3172 = fcmp fast ult float %3171, 0x3F70101020000000
  br i1 %3172, label %3715, label %3173

; <label>:3173                                    ; preds = %3170
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 16
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3376, label %3178

; <label>:3178                                    ; preds = %3173
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %54, 420
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = extractvalue %dx.types.ResRet.f32 %3186, 3
  %3191 = and i32 %3180, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = lshr i32 %3180, 8
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3190, %3192
  %3197 = fadd fast float %3196, %3195
  %3198 = fmul fast float %3197, 0x3F70101000000000
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 512
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3211, label %3203

; <label>:3203                                    ; preds = %3178
  %3204 = add i32 %54, 500
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  br label %3211

; <label>:3211                                    ; preds = %3203, %3178
  %3212 = phi float [ %3210, %3203 ], [ 1.000000e+00, %3178 ]
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 33554432
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3323, label %3217

; <label>:3217                                    ; preds = %3211
  %3218 = add i32 %54, 272
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 65535
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = lshr i32 %3220, 16
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = add i32 %54, 276
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 65535
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = lshr i32 %3231, 24
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = and i32 %3231, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = lshr i32 %3231, 8
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101020000000
  %3242 = lshr i32 %3231, 16
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = fmul fast float %3244, 0x3F70101020000000
  %3246 = add i32 %54, 268
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = lshr i32 %3248, 24
  %3250 = uitofp i32 %3249 to float
  %3251 = fmul fast float %3250, 0x3F70101020000000
  %3252 = and i32 %3248, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = lshr i32 %3248, 8
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = lshr i32 %3248, 16
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = fmul fast float %3261, 0x3F70101020000000
  %3263 = bitcast float %3187 to i32
  %3264 = ashr i32 %3263, 1
  %3265 = sub nsw i32 1597463174, %3264
  %3266 = bitcast i32 %3265 to float
  %3267 = fmul fast float %3187, 5.000000e-01
  %3268 = fmul fast float %3266, %3266
  %3269 = fmul fast float %3268, %3267
  %3270 = fsub fast float 1.500000e+00, %3269
  %3271 = fmul fast float %3266, %3187
  %3272 = fmul fast float %3271, %3270
  %3273 = bitcast float %3188 to i32
  %3274 = ashr i32 %3273, 1
  %3275 = sub nsw i32 1597463174, %3274
  %3276 = bitcast i32 %3275 to float
  %3277 = fmul fast float %3188, 5.000000e-01
  %3278 = fmul fast float %3276, %3276
  %3279 = fmul fast float %3278, %3277
  %3280 = fsub fast float 1.500000e+00, %3279
  %3281 = fmul fast float %3276, %3188
  %3282 = fmul fast float %3281, %3280
  %3283 = bitcast float %3189 to i32
  %3284 = ashr i32 %3283, 1
  %3285 = sub nsw i32 1597463174, %3284
  %3286 = bitcast i32 %3285 to float
  %3287 = fmul fast float %3189, 5.000000e-01
  %3288 = fmul fast float %3286, %3286
  %3289 = fmul fast float %3288, %3287
  %3290 = fsub fast float 1.500000e+00, %3289
  %3291 = fmul fast float %3286, %3189
  %3292 = fmul fast float %3291, %3290
  %3293 = fsub fast float %3272, %3254
  %3294 = fsub fast float %3282, %3258
  %3295 = fsub fast float %3292, %3262
  %3296 = fmul fast float %3293, %3222
  %3297 = fmul fast float %3294, %3224
  %3298 = fmul fast float %3295, %3229
  %3299 = fadd fast float %3296, %3237
  %3300 = fadd fast float %3297, %3241
  %3301 = fadd fast float %3298, %3245
  %3302 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3303 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3304 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3305 = fmul fast float %3302, %3302
  %3306 = fmul fast float %3303, %3303
  %3307 = fmul fast float %3304, %3304
  %3308 = fsub fast float %3305, %3187
  %3309 = fsub fast float %3306, %3188
  %3310 = fsub fast float %3307, %3189
  %3311 = fmul fast float %3308, %3212
  %3312 = fmul fast float %3309, %3212
  %3313 = fmul fast float %3310, %3212
  %3314 = fadd fast float %3311, %3187
  %3315 = fadd fast float %3312, %3188
  %3316 = fadd fast float %3313, %3189
  %3317 = fadd fast float %3234, %3198
  %3318 = fsub fast float %3317, %3251
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fsub fast float %3319, %3198
  %3321 = fmul fast float %3320, %3212
  %3322 = fadd fast float %3321, %3198
  br label %3376

; <label>:3323                                    ; preds = %3211
  %3324 = and i32 %3214, 134217728
  %3325 = icmp eq i32 %3324, 0
  br i1 %3325, label %3360, label %3326

; <label>:3326                                    ; preds = %3323
  %3327 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3328 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3329 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3330 = fadd fast float %3327, -5.000000e-01
  %3331 = fadd fast float %3328, -5.000000e-01
  %3332 = fadd fast float %3329, -5.000000e-01
  %3333 = fmul fast float %3330, %3212
  %3334 = fmul fast float %3331, %3212
  %3335 = fmul fast float %3332, %3212
  %3336 = fadd fast float %3333, 5.000000e-01
  %3337 = fadd fast float %3334, 5.000000e-01
  %3338 = fadd fast float %3335, 5.000000e-01
  %3339 = call float @dx.op.unary.f32(i32 24, float %3187)  ; Sqrt(value)
  %3340 = call float @dx.op.unary.f32(i32 24, float %3188)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %3189)  ; Sqrt(value)
  %3342 = fmul fast float %3336, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3339
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3339
  %3347 = fmul fast float %3337, 2.000000e+00
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = fmul fast float %3348, %3340
  %3350 = fadd fast float %3349, %3347
  %3351 = fmul fast float %3350, %3340
  %3352 = fmul fast float %3338, 2.000000e+00
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3353, %3341
  %3355 = fadd fast float %3354, %3352
  %3356 = fmul fast float %3355, %3341
  %3357 = fmul fast float %3346, %3346
  %3358 = fmul fast float %3351, %3351
  %3359 = fmul fast float %3356, %3356
  br label %3376

; <label>:3360                                    ; preds = %3323
  %3361 = fmul fast float %407, %407
  %3362 = fmul fast float %411, %411
  %3363 = fmul fast float %415, %415
  %3364 = fadd fast float %3361, -1.000000e+00
  %3365 = fadd fast float %3362, -1.000000e+00
  %3366 = fadd fast float %3363, -1.000000e+00
  %3367 = fmul fast float %3212, %3364
  %3368 = fmul fast float %3212, %3365
  %3369 = fmul fast float %3212, %3366
  %3370 = fadd fast float %3367, 1.000000e+00
  %3371 = fadd fast float %3368, 1.000000e+00
  %3372 = fadd fast float %3369, 1.000000e+00
  %3373 = fmul fast float %3370, %3187
  %3374 = fmul fast float %3371, %3188
  %3375 = fmul fast float %3372, %3189
  br label %3376

; <label>:3376                                    ; preds = %3360, %3326, %3217, %3173
  %3377 = phi float [ %3322, %3217 ], [ %3198, %3326 ], [ %3198, %3360 ], [ 0x3FA23C0BE0000000, %3173 ]
  %3378 = phi float [ %3314, %3217 ], [ %3357, %3326 ], [ %3373, %3360 ], [ 1.000000e+00, %3173 ]
  %3379 = phi float [ %3315, %3217 ], [ %3358, %3326 ], [ %3374, %3360 ], [ 1.000000e+00, %3173 ]
  %3380 = phi float [ %3316, %3217 ], [ %3359, %3326 ], [ %3375, %3360 ], [ 1.000000e+00, %3173 ]
  %3381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.i32 %3381, 1
  %3383 = and i32 %3382, 1
  %3384 = icmp ne i32 %3383, 0
  %3385 = add i32 %54, 356
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 32
  %3389 = icmp ne i32 %3388, 0
  %3390 = and i1 %3384, %3389
  %3391 = select i1 %3390, float 1.000000e+00, float %3378
  %3392 = select i1 %3390, float 0x3FD3333340000000, float %3379
  %3393 = select i1 %3390, float 0x3FD3333340000000, float %3380
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 32
  %3397 = icmp eq i32 %3396, 0
  br i1 %3397, label %3470, label %3398

; <label>:3398                                    ; preds = %3376
  %3399 = add i32 %54, 140
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = add i32 %54, 436
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = add i32 %3404, 0
  %3406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3406, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3411 = extractvalue %dx.types.ResRet.f32 %3407, 3
  %3412 = and i32 %3401, 255
  %3413 = uitofp i32 %3412 to float
  %3414 = lshr i32 %3401, 8
  %3415 = and i32 %3414, 255
  %3416 = uitofp i32 %3415 to float
  %3417 = lshr i32 %3401, 16
  %3418 = and i32 %3417, 255
  %3419 = uitofp i32 %3418 to float
  %3420 = fmul fast float %3419, 0x3F70101000000000
  %3421 = fmul fast float %3408, %3413
  %3422 = fadd fast float %3421, %3416
  %3423 = fmul fast float %3422, 0x3F70101000000000
  %3424 = fadd fast float %3409, -5.000000e-01
  %3425 = fadd fast float %3411, -5.000000e-01
  %3426 = fmul fast float %3424, %3420
  %3427 = fmul fast float %3425, %3420
  %3428 = fadd fast float %3426, 5.000000e-01
  %3429 = fadd fast float %3427, 5.000000e-01
  %3430 = fmul fast float %3428, 2.000000e+00
  %3431 = fadd fast float %3430, -1.000000e+00
  %3432 = fmul fast float %3429, 2.000000e+00
  %3433 = fadd fast float %3432, -1.000000e+00
  %3434 = fadd fast float %3431, %3433
  %3435 = fmul fast float %3434, 5.000000e-01
  %3436 = fsub fast float %3431, %3433
  %3437 = fmul fast float %3436, 5.000000e-01
  %3438 = call float @dx.op.unary.f32(i32 6, float %3435)  ; FAbs(value)
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.unary.f32(i32 6, float %3437)  ; FAbs(value)
  %3441 = fsub fast float %3439, %3440
  %3442 = call float @dx.op.dot3.f32(i32 55, float %3435, float %3437, float %3441, float %3435, float %3437, float %3441)  ; Dot3(ax,ay,az,bx,by,bz)
  %3443 = call float @dx.op.unary.f32(i32 25, float %3442)  ; Rsqrt(value)
  %3444 = fmul fast float %3435, %3443
  %3445 = fmul fast float %3437, %3443
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 67108864
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3466, label %3450

; <label>:3450                                    ; preds = %3398
  %3451 = add i32 %54, 328
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 65535
  %3455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3454)  ; LegacyF16ToF32(value)
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 65535
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = lshr i32 %3453, 16
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = fsub fast float %3423, %3461
  %3463 = fmul fast float %3462, %3455
  %3464 = fadd fast float %3463, %3459
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  br label %3466

; <label>:3466                                    ; preds = %3450, %3398
  %3467 = phi float [ %3465, %3450 ], [ %3423, %3398 ]
  %3468 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %2887, float %2888)  ; Dot2(ax,ay,bx,by)
  %3469 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %2889, float %2890)  ; Dot2(ax,ay,bx,by)
  br label %3470

; <label>:3470                                    ; preds = %3466, %3376
  %3471 = phi float [ %3467, %3466 ], [ 0x3FD6666660000000, %3376 ]
  %3472 = phi float [ %3468, %3466 ], [ 0.000000e+00, %3376 ]
  %3473 = phi float [ %3469, %3466 ], [ 0.000000e+00, %3376 ]
  %3474 = phi float [ %3410, %3466 ], [ 1.000000e+00, %3376 ]
  %3475 = add i32 %54, 208
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = lshr i32 %3477, 22
  %3479 = shl nuw nsw i32 %3478, 5
  %3480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3479)  ; LegacyF16ToF32(value)
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = and i32 %3482, 64
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3518, label %3485

; <label>:3485                                    ; preds = %3470
  %3486 = add i32 %54, 452
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = add i32 %3488, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 131072
  %3494 = icmp eq i32 %3493, 0
  %3495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3490, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.ResRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3495, 2
  %3499 = fmul fast float %3496, %395
  %3500 = fmul fast float %3497, %398
  %3501 = fmul fast float %3498, %401
  br i1 %3494, label %3508, label %3502

; <label>:3502                                    ; preds = %3485
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = fmul fast float %3504, %3499
  %3506 = fmul fast float %3504, %3500
  %3507 = fmul fast float %3504, %3501
  br label %3508

; <label>:3508                                    ; preds = %3502, %3485
  %3509 = phi float [ %3505, %3502 ], [ %3499, %3485 ]
  %3510 = phi float [ %3506, %3502 ], [ %3500, %3485 ]
  %3511 = phi float [ %3507, %3502 ], [ %3501, %3485 ]
  %3512 = fmul fast float %3509, %3480
  %3513 = select i1 %252, float %3512, float %3509
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3510, float %3511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = select i1 %252, float 0.000000e+00, float %3509
  %3516 = select i1 %252, float %3514, float %3510
  %3517 = select i1 %252, float 0.000000e+00, float %3511
  br label %3518

; <label>:3518                                    ; preds = %3508, %3470
  %3519 = phi float [ %3515, %3508 ], [ 0.000000e+00, %3470 ]
  %3520 = phi float [ %3516, %3508 ], [ 0.000000e+00, %3470 ]
  %3521 = phi float [ %3517, %3508 ], [ 0.000000e+00, %3470 ]
  %3522 = add i32 %54, 144
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 255
  %3526 = uitofp i32 %3525 to float
  %3527 = lshr i32 %3524, 8
  %3528 = and i32 %3527, 255
  %3529 = uitofp i32 %3528 to float
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3392, float %3393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = fmul fast float %3529, %3530
  %3532 = fadd fast float %3531, %3526
  %3533 = fmul fast float %3532, 0x3F70101020000000
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  br i1 %2875, label %3535, label %3543

; <label>:3535                                    ; preds = %3518
  %3536 = fsub fast float 1.000000e+00, %3171
  %3537 = fmul fast float %3536, %2864
  %3538 = fmul fast float %3536, %2865
  %3539 = fmul fast float %3536, %2866
  %3540 = fmul fast float %3536, %2867
  %3541 = fmul fast float %3536, %2868
  %3542 = fmul fast float %3536, %2869
  br label %3543

; <label>:3543                                    ; preds = %3535, %3518
  %3544 = phi float [ %3537, %3535 ], [ %2864, %3518 ]
  %3545 = phi float [ %3538, %3535 ], [ %2865, %3518 ]
  %3546 = phi float [ %3539, %3535 ], [ %2866, %3518 ]
  %3547 = phi float [ %3540, %3535 ], [ %2867, %3518 ]
  %3548 = phi float [ %3541, %3535 ], [ %2868, %3518 ]
  %3549 = phi float [ %3542, %3535 ], [ %2869, %3518 ]
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 3
  %3553 = icmp eq i32 %3552, 3
  br i1 %3553, label %3632, label %3554

; <label>:3554                                    ; preds = %3543
  %3555 = and i32 %3551, 16
  %3556 = icmp ne i32 %3555, 0
  %3557 = select i1 %3556, float %3171, float 0.000000e+00
  %3558 = icmp eq i32 %3552, 0
  br i1 %3558, label %3559, label %3587

; <label>:3559                                    ; preds = %3554
  %3560 = and i32 %3551, 64
  %3561 = icmp ne i32 %3560, 0
  %3562 = select i1 %3561, float %3171, float 0.000000e+00
  %3563 = fsub fast float %3391, %3544
  %3564 = fsub fast float %3392, %3545
  %3565 = fsub fast float %3393, %3546
  %3566 = fmul fast float %3557, %3563
  %3567 = fmul fast float %3557, %3564
  %3568 = fmul fast float %3557, %3565
  %3569 = fadd fast float %3566, %3544
  %3570 = fadd fast float %3567, %3545
  %3571 = fadd fast float %3568, %3546
  %3572 = fsub fast float %3377, %2870
  %3573 = fmul fast float %3557, %3572
  %3574 = fadd fast float %3573, %2870
  %3575 = fsub fast float %3519, %3547
  %3576 = fsub fast float %3520, %3548
  %3577 = fsub fast float %3521, %3549
  %3578 = fmul fast float %3562, %3575
  %3579 = fmul fast float %3562, %3576
  %3580 = fmul fast float %3562, %3577
  %3581 = fadd fast float %3578, %3547
  %3582 = fadd fast float %3579, %3548
  %3583 = fadd fast float %3580, %3549
  %3584 = fsub fast float %3534, %2873
  %3585 = fmul fast float %3557, %3584
  %3586 = fadd fast float %3585, %2873
  br label %3632

; <label>:3587                                    ; preds = %3554
  %3588 = icmp eq i32 %3552, 1
  br i1 %3588, label %3589, label %3602

; <label>:3589                                    ; preds = %3587
  %3590 = fadd fast float %3391, -1.000000e+00
  %3591 = fadd fast float %3392, -1.000000e+00
  %3592 = fadd fast float %3393, -1.000000e+00
  %3593 = fmul fast float %3557, %3590
  %3594 = fmul fast float %3557, %3591
  %3595 = fmul fast float %3557, %3592
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fadd fast float %3594, 1.000000e+00
  %3598 = fadd fast float %3595, 1.000000e+00
  %3599 = fmul fast float %3596, %3544
  %3600 = fmul fast float %3597, %3545
  %3601 = fmul fast float %3598, %3546
  br label %3632

; <label>:3602                                    ; preds = %3587
  %3603 = icmp eq i32 %3552, 2
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3602
  %3605 = call float @dx.op.unary.f32(i32 24, float %3391)  ; Sqrt(value)
  %3606 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3607 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3608 = fadd fast float %3605, -5.000000e-01
  %3609 = fadd fast float %3606, -5.000000e-01
  %3610 = fadd fast float %3607, -5.000000e-01
  %3611 = fmul fast float %3608, %3557
  %3612 = fmul fast float %3609, %3557
  %3613 = fmul fast float %3610, %3557
  %3614 = fadd fast float %3611, 5.000000e-01
  %3615 = fadd fast float %3612, 5.000000e-01
  %3616 = fadd fast float %3613, 5.000000e-01
  %3617 = fmul fast float %3614, 2.000000e+00
  %3618 = fsub fast float 1.000000e+00, %3617
  %3619 = fmul fast float %3618, %3544
  %3620 = fadd fast float %3619, %3617
  %3621 = fmul fast float %3620, %3544
  %3622 = fmul fast float %3615, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3545
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3545
  %3627 = fmul fast float %3616, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3546
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3546
  br label %3632

; <label>:3632                                    ; preds = %3604, %3602, %3589, %3559, %3543
  %3633 = phi float [ %3544, %3543 ], [ %3621, %3604 ], [ %3544, %3602 ], [ %3599, %3589 ], [ %3569, %3559 ]
  %3634 = phi float [ %3545, %3543 ], [ %3626, %3604 ], [ %3545, %3602 ], [ %3600, %3589 ], [ %3570, %3559 ]
  %3635 = phi float [ %3546, %3543 ], [ %3631, %3604 ], [ %3546, %3602 ], [ %3601, %3589 ], [ %3571, %3559 ]
  %3636 = phi float [ %3547, %3543 ], [ %3547, %3604 ], [ %3547, %3602 ], [ %3547, %3589 ], [ %3581, %3559 ]
  %3637 = phi float [ %3548, %3543 ], [ %3548, %3604 ], [ %3548, %3602 ], [ %3548, %3589 ], [ %3582, %3559 ]
  %3638 = phi float [ %3549, %3543 ], [ %3549, %3604 ], [ %3549, %3602 ], [ %3549, %3589 ], [ %3583, %3559 ]
  %3639 = phi float [ %2870, %3543 ], [ %2870, %3604 ], [ %2870, %3602 ], [ %2870, %3589 ], [ %3574, %3559 ]
  %3640 = phi float [ %2873, %3543 ], [ %2873, %3604 ], [ %2873, %3602 ], [ %2873, %3589 ], [ %3586, %3559 ]
  %3641 = and i32 %3551, 12
  %3642 = icmp eq i32 %3641, 12
  br i1 %3642, label %3715, label %3643

; <label>:3643                                    ; preds = %3632
  %3644 = and i32 %3551, 2097184
  %3645 = icmp eq i32 %3644, 2097184
  %3646 = select i1 %3645, float %3171, float 0.000000e+00
  %3647 = and i32 %3551, 4194336
  %3648 = icmp eq i32 %3647, 4194336
  %3649 = select i1 %3648, float %3171, float 0.000000e+00
  %3650 = and i32 %3551, 8388640
  %3651 = icmp eq i32 %3650, 8388640
  %3652 = select i1 %3651, float %3171, float 0.000000e+00
  %3653 = icmp eq i32 %3641, 0
  br i1 %3653, label %3654, label %3667

; <label>:3654                                    ; preds = %3643
  %3655 = fsub fast float %3472, %2862
  %3656 = fsub fast float %3473, %2863
  %3657 = fmul fast float %3646, %3655
  %3658 = fmul fast float %3646, %3656
  %3659 = fadd fast float %3657, %2862
  %3660 = fadd fast float %3658, %2863
  %3661 = fsub fast float %3474, %2872
  %3662 = fmul fast float %3649, %3661
  %3663 = fadd fast float %3662, %2872
  %3664 = fsub fast float %3471, %2871
  %3665 = fmul fast float %3652, %3664
  %3666 = fadd fast float %3665, %2871
  br label %3715

; <label>:3667                                    ; preds = %3643
  %3668 = icmp eq i32 %3641, 4
  br i1 %3668, label %3669, label %3701

; <label>:3669                                    ; preds = %3667
  %3670 = fmul fast float %3646, %3472
  %3671 = fmul fast float %3646, %3473
  %3672 = fadd fast float %3670, %2862
  %3673 = fadd fast float %3671, %2863
  %3674 = call float @dx.op.binary.f32(i32 36, float %2872, float %3474)  ; FMin(a,b)
  %3675 = fsub fast float %3674, %2872
  %3676 = fmul fast float %3675, %3649
  %3677 = fadd fast float %3676, %2872
  %3678 = fadd fast float %3471, %2871
  %3679 = fmul fast float %3678, 0x3FF337FAE0000000
  %3680 = fmul fast float %2871, %2871
  %3681 = fmul fast float %3471, %3471
  %3682 = fadd fast float %3681, %3680
  %3683 = fmul fast float %3682, 0x3FE5152B00000000
  %3684 = fmul fast float %2871, 0xBFCC1F85E0000000
  %3685 = fmul fast float %3684, %3471
  %3686 = fadd fast float %3685, 0xBFE1363700000000
  %3687 = fadd fast float %3686, %3679
  %3688 = fsub fast float %3687, %3683
  %3689 = fmul fast float %3678, 0x3FBA6F0D00000000
  %3690 = fmul fast float %3682, 0x3FD0432880000000
  %3691 = fmul fast float %2871, 0xBFEF110800000000
  %3692 = fmul fast float %3691, %3471
  %3693 = fadd fast float %3692, 1.000000e+00
  %3694 = fsub fast float %3693, %3689
  %3695 = fadd fast float %3694, %3690
  %3696 = fdiv fast float %3688, %3695
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fsub fast float %3697, %2871
  %3699 = fmul fast float %3698, %3652
  %3700 = fadd fast float %3699, %2871
  br label %3715

; <label>:3701                                    ; preds = %3667
  %3702 = icmp eq i32 %3641, 8
  br i1 %3702, label %3703, label %3715

; <label>:3703                                    ; preds = %3701
  %3704 = fmul fast float %3646, %3472
  %3705 = fmul fast float %3646, %3473
  %3706 = fadd fast float %3704, %2862
  %3707 = fadd fast float %3705, %2863
  %3708 = call float @dx.op.binary.f32(i32 36, float %2872, float %3474)  ; FMin(a,b)
  %3709 = fsub fast float %3708, %2872
  %3710 = fmul fast float %3709, %3649
  %3711 = fadd fast float %3710, %2872
  %3712 = fsub fast float %3471, %2871
  %3713 = fmul fast float %3652, %3712
  %3714 = fadd fast float %3713, %2871
  br label %3715

; <label>:3715                                    ; preds = %3703, %3701, %3669, %3654, %3632, %3170, %2874, %2861
  %3716 = phi float [ %2862, %3632 ], [ %2862, %3170 ], [ %2862, %2861 ], [ %2862, %2874 ], [ %3659, %3654 ], [ %3672, %3669 ], [ %2862, %3701 ], [ %3706, %3703 ]
  %3717 = phi float [ %2863, %3632 ], [ %2863, %3170 ], [ %2863, %2861 ], [ %2863, %2874 ], [ %3660, %3654 ], [ %3673, %3669 ], [ %2863, %3701 ], [ %3707, %3703 ]
  %3718 = phi float [ %3633, %3632 ], [ %2864, %3170 ], [ %2864, %2861 ], [ %2864, %2874 ], [ %3633, %3654 ], [ %3633, %3669 ], [ %3633, %3701 ], [ %3633, %3703 ]
  %3719 = phi float [ %3634, %3632 ], [ %2865, %3170 ], [ %2865, %2861 ], [ %2865, %2874 ], [ %3634, %3654 ], [ %3634, %3669 ], [ %3634, %3701 ], [ %3634, %3703 ]
  %3720 = phi float [ %3635, %3632 ], [ %2866, %3170 ], [ %2866, %2861 ], [ %2866, %2874 ], [ %3635, %3654 ], [ %3635, %3669 ], [ %3635, %3701 ], [ %3635, %3703 ]
  %3721 = phi float [ %3636, %3632 ], [ %2867, %3170 ], [ %2867, %2861 ], [ %2867, %2874 ], [ %3636, %3654 ], [ %3636, %3669 ], [ %3636, %3701 ], [ %3636, %3703 ]
  %3722 = phi float [ %3637, %3632 ], [ %2868, %3170 ], [ %2868, %2861 ], [ %2868, %2874 ], [ %3637, %3654 ], [ %3637, %3669 ], [ %3637, %3701 ], [ %3637, %3703 ]
  %3723 = phi float [ %3638, %3632 ], [ %2869, %3170 ], [ %2869, %2861 ], [ %2869, %2874 ], [ %3638, %3654 ], [ %3638, %3669 ], [ %3638, %3701 ], [ %3638, %3703 ]
  %3724 = phi float [ %3639, %3632 ], [ %2870, %3170 ], [ %2870, %2861 ], [ %2870, %2874 ], [ %3639, %3654 ], [ %3639, %3669 ], [ %3639, %3701 ], [ %3639, %3703 ]
  %3725 = phi float [ %2871, %3632 ], [ %2871, %3170 ], [ %2871, %2861 ], [ %2871, %2874 ], [ %3666, %3654 ], [ %3700, %3669 ], [ %2871, %3701 ], [ %3714, %3703 ]
  %3726 = phi float [ %2872, %3632 ], [ %2872, %3170 ], [ %2872, %2861 ], [ %2872, %2874 ], [ %3663, %3654 ], [ %3677, %3669 ], [ %2872, %3701 ], [ %3711, %3703 ]
  %3727 = phi float [ %3640, %3632 ], [ %2873, %3170 ], [ %2873, %2861 ], [ %2873, %2874 ], [ %3640, %3654 ], [ %3640, %3669 ], [ %3640, %3701 ], [ %3640, %3703 ]
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = call float @dx.op.dot2.f32(i32 54, float %3716, float %3717, float %3716, float %3717)  ; Dot2(ax,ay,bx,by)
  %3731 = fmul fast float %3730, 0x3FE3333340000000
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3716, float %3717, float %3732, float %3716, float %3717, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.unary.f32(i32 25, float %3733)  ; Rsqrt(value)
  %3735 = fmul fast float %3734, %3716
  %3736 = fmul fast float %3734, %3717
  %3737 = fmul fast float %3732, %3734
  %3738 = fmul fast float %3737, %102
  %3739 = fmul fast float %3737, %103
  %3740 = fmul fast float %3737, %104
  %3741 = fmul fast float %3735, %70
  %3742 = fmul fast float %3735, %71
  %3743 = fmul fast float %3735, %72
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = fadd fast float %3740, %3743
  %3747 = fmul fast float %114, %3736
  %3748 = fmul fast float %115, %3736
  %3749 = fmul fast float %116, %3736
  %3750 = fadd fast float %3744, %3747
  %3751 = fadd fast float %3745, %3748
  %3752 = fadd fast float %3746, %3749
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3752, float %3750, float %3751, float %3752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = call float @dx.op.unary.f32(i32 25, float %3753)  ; Rsqrt(value)
  %3755 = fmul fast float %3750, %3754
  %3756 = fmul fast float %3751, %3754
  %3757 = fmul fast float %3752, %3754
  %3758 = and i32 %56, 1
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3760, label %4272

; <label>:3760                                    ; preds = %3715
  %3761 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3762 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3763 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3764 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3765 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3766 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3767 = fadd fast float %3761, %158
  %3768 = fadd fast float %3762, %159
  %3769 = fadd fast float %3763, %160
  %3770 = fadd fast float %3764, %158
  %3771 = fadd fast float %3765, %159
  %3772 = fadd fast float %3766, %160
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3779 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3780 = fmul fast float %3774, %95
  %3781 = fmul fast float %3780, %3778
  %3782 = fmul fast float %3775, %96
  %3783 = fmul fast float %3782, %3779
  %3784 = fptoui float %3781 to i32
  %3785 = fptoui float %3783 to i32
  %3786 = fadd fast float %3774, -1.000000e+00
  %3787 = fadd fast float %3775, -1.000000e+00
  %3788 = fptoui float %3786 to i32
  %3789 = fptoui float %3787 to i32
  %3790 = call i32 @dx.op.binary.i32(i32 40, i32 %3784, i32 %3788)  ; UMin(a,b)
  %3791 = call i32 @dx.op.binary.i32(i32 40, i32 %3785, i32 %3789)  ; UMin(a,b)
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3794 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3795 = fmul fast float %3793, %86
  %3796 = fsub fast float %3795, %3794
  %3797 = fadd fast float %3776, -1.000000e+00
  %3798 = call float @dx.op.binary.f32(i32 36, float %3796, float %3797)  ; FMin(a,b)
  %3799 = fptoui float %3798 to i32
  %3800 = fptoui float %3774 to i32
  %3801 = fptoui float %3775 to i32
  %3802 = mul i32 %3799, %3801
  %3803 = add i32 %3802, %3791
  %3804 = mul i32 %3803, %3800
  %3805 = add i32 %3804, %3790
  %3806 = shl i32 %3805, 2
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = and i32 %3808, 1023
  %3810 = lshr i32 %3808, 10
  %3811 = icmp eq i32 %3809, 0
  br i1 %3811, label %4240, label %3812

; <label>:3812                                    ; preds = %3760
  %3813 = and i32 %3808, 1023
  br label %3814

; <label>:3814                                    ; preds = %3941, %3812
  %3815 = phi i32 [ %3891, %3941 ], [ 0, %3812 ]
  %3816 = phi float [ %3942, %3941 ], [ 0.000000e+00, %3812 ]
  %3817 = phi float [ %3943, %3941 ], [ %1162, %3812 ]
  %3818 = phi float [ %3944, %3941 ], [ %3729, %3812 ]
  %3819 = phi float [ %3945, %3941 ], [ %3727, %3812 ]
  %3820 = phi float [ %3946, %3941 ], [ 0.000000e+00, %3812 ]
  %3821 = phi float [ %3947, %3941 ], [ 0.000000e+00, %3812 ]
  %3822 = phi float [ %3948, %3941 ], [ %3721, %3812 ]
  %3823 = phi float [ %3949, %3941 ], [ %3722, %3812 ]
  %3824 = phi float [ %3950, %3941 ], [ %3723, %3812 ]
  %3825 = phi float [ %3951, %3941 ], [ %3755, %3812 ]
  %3826 = phi float [ %3952, %3941 ], [ %3756, %3812 ]
  %3827 = phi float [ %3953, %3941 ], [ %3757, %3812 ]
  %3828 = phi float [ %3954, %3941 ], [ %3726, %3812 ]
  %3829 = phi float [ %3955, %3941 ], [ %3725, %3812 ]
  %3830 = phi float [ %3956, %3941 ], [ 0.000000e+00, %3812 ]
  %3831 = phi float [ %3957, %3941 ], [ %3724, %3812 ]
  %3832 = phi float [ %3958, %3941 ], [ %3718, %3812 ]
  %3833 = phi float [ %3959, %3941 ], [ %3719, %3812 ]
  %3834 = phi float [ %3960, %3941 ], [ %3720, %3812 ]
  %3835 = add nuw nsw i32 %3815, %3810
  %3836 = shl i32 %3835, 2
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = shl i32 %3838, 8
  %3840 = or i32 %3839, 48
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3839, 64
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.i32 %3847, 1
  %3850 = or i32 %3839, 80
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3854 = or i32 %3839, 96
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = or i32 %3839, 112
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3863 = or i32 %3839, 128
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = or i32 %3839, 144
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = or i32 %3839, 160
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = or i32 %3839, 192
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = or i32 %3839, 208
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = or i32 %3839, 248
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = add nuw nsw i32 %3815, 1
  %3892 = bitcast float %3845 to i32
  %3893 = and i32 %3892, 512
  %3894 = icmp eq i32 %3893, 0
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = or i32 %3839, 16
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3908 = or i32 %3839, 32
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = call float @dx.op.dot4.f32(i32 56, float %3910, float %3911, float %3912, float %3913, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3915 = call float @dx.op.unary.f32(i32 27, float %3900)  ; Round_ni(value)
  %3916 = call float @dx.op.unary.f32(i32 6, float %3915)  ; FAbs(value)
  %3917 = call float @dx.op.unary.f32(i32 27, float %3907)  ; Round_ni(value)
  %3918 = call float @dx.op.unary.f32(i32 6, float %3917)  ; FAbs(value)
  %3919 = call float @dx.op.unary.f32(i32 6, float %3914)  ; FAbs(value)
  %3920 = call float @dx.op.unary.f32(i32 27, float %3919)  ; Round_ni(value)
  %3921 = fadd fast float %3918, %3916
  %3922 = fadd fast float %3921, %3920
  %3923 = fcmp fast oeq float %3922, 0.000000e+00
  %3924 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3925 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3926 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3927 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3928 = fsub fast float %3924, %3900
  %3929 = fsub fast float %3926, %3900
  %3930 = fsub fast float %3925, %3907
  %3931 = fsub fast float %3927, %3907
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3935 = fadd fast float %3934, %3932
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3938 = fcmp fast ogt float %3936, %3937
  %3939 = and i1 %3923, %3938
  %3940 = and i1 %3894, %3939
  br i1 %3940, label %3962, label %3941

; <label>:3941                                    ; preds = %4226, %4043, %3962, %3814
  %3942 = phi float [ %3816, %3962 ], [ %4046, %4043 ], [ %4046, %4226 ], [ %3816, %3814 ]
  %3943 = phi float [ %3817, %3962 ], [ %3817, %4043 ], [ %4201, %4226 ], [ %3817, %3814 ]
  %3944 = phi float [ %3818, %3962 ], [ %3818, %4043 ], [ %4200, %4226 ], [ %3818, %3814 ]
  %3945 = phi float [ %3819, %3962 ], [ %3819, %4043 ], [ %4198, %4226 ], [ %3819, %3814 ]
  %3946 = phi float [ %3820, %3962 ], [ %3820, %4043 ], [ %4170, %4226 ], [ %3820, %3814 ]
  %3947 = phi float [ %3821, %3962 ], [ %3821, %4043 ], [ %4168, %4226 ], [ %3821, %3814 ]
  %3948 = phi float [ %3822, %3962 ], [ %3822, %4043 ], [ %4236, %4226 ], [ %3822, %3814 ]
  %3949 = phi float [ %3823, %3962 ], [ %3823, %4043 ], [ %4237, %4226 ], [ %3823, %3814 ]
  %3950 = phi float [ %3824, %3962 ], [ %3824, %4043 ], [ %4238, %4226 ], [ %3824, %3814 ]
  %3951 = phi float [ %3825, %3962 ], [ %3825, %4043 ], [ %4149, %4226 ], [ %3825, %3814 ]
  %3952 = phi float [ %3826, %3962 ], [ %3826, %4043 ], [ %4150, %4226 ], [ %3826, %3814 ]
  %3953 = phi float [ %3827, %3962 ], [ %3827, %4043 ], [ %4151, %4226 ], [ %3827, %3814 ]
  %3954 = phi float [ %3828, %3962 ], [ %3828, %4043 ], [ %4178, %4226 ], [ %3828, %3814 ]
  %3955 = phi float [ %3829, %3962 ], [ %3829, %4043 ], [ %4175, %4226 ], [ %3829, %3814 ]
  %3956 = phi float [ %3830, %3962 ], [ %3830, %4043 ], [ %4172, %4226 ], [ %3830, %3814 ]
  %3957 = phi float [ %3831, %3962 ], [ %3831, %4043 ], [ %4166, %4226 ], [ %3831, %3814 ]
  %3958 = phi float [ %3832, %3962 ], [ %3832, %4043 ], [ %4161, %4226 ], [ %3832, %3814 ]
  %3959 = phi float [ %3833, %3962 ], [ %3833, %4043 ], [ %4162, %4226 ], [ %3833, %3814 ]
  %3960 = phi float [ %3834, %3962 ], [ %3834, %4043 ], [ %4163, %4226 ], [ %3834, %3814 ]
  %3961 = icmp eq i32 %3891, %3813
  br i1 %3961, label %4239, label %3814

; <label>:3962                                    ; preds = %3814
  %3963 = extractvalue %dx.types.ResRet.f32 %3861, 3
  %3964 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3968 = extractvalue %dx.types.ResRet.i32 %3847, 3
  %3969 = extractvalue %dx.types.ResRet.i32 %3847, 2
  %3970 = add i32 %3968, 0
  %3971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3971, %dx.types.Handle %3972, float %3900, float %3907, float undef, float undef, i32 0, i32 0, i32 undef, float %3928, float %3930, float undef, float %3929, float %3931, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = fmul fast float %3974, %3967
  %3976 = fadd fast float %3975, %3966
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3900, %3856
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3907, float %3978)  ; FMad(a,b,c)
  %3980 = fadd fast float %3979, %3965
  %3981 = fmul fast float %3900, %3858
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3907, float %3981)  ; FMad(a,b,c)
  %3983 = fadd fast float %3982, %3964
  %3984 = fmul fast float %3928, %3856
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3930, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3928, %3858
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3930, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3929, %3856
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3931, float %3988)  ; FMad(a,b,c)
  %3990 = fmul fast float %3929, %3858
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3859, float %3931, float %3990)  ; FMad(a,b,c)
  %3992 = add i32 %3969, 0
  %3993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3992, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3993, %dx.types.Handle %3972, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = and i32 %3892, 1024
  %3997 = icmp ne i32 %3996, 0
  %3998 = fcmp fast ogt float %3995, 0x3FE0101020000000
  %3999 = uitofp i1 %3998 to float
  %4000 = select i1 %3997, float %3999, float %3995
  %4001 = and i32 %3892, 8192
  %4002 = icmp ne i32 %4001, 0
  %4003 = select i1 %4002, float %3963, float 1.000000e+00
  %4004 = fmul fast float %3900, 2.000000e+00
  %4005 = fadd fast float %4004, -1.000000e+00
  %4006 = call float @dx.op.unary.f32(i32 6, float %4005)  ; FAbs(value)
  %4007 = fmul fast float %4006, %3889
  %4008 = fsub fast float %4007, %3889
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fmul fast float %3907, 2.000000e+00
  %4011 = fadd fast float %4010, -1.000000e+00
  %4012 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4013 = fmul fast float %4012, %3890
  %4014 = fsub fast float %4013, %3890
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = fmul fast float %3919, %3852
  %4017 = fsub fast float %4016, %3852
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %3977, %4003
  %4020 = fmul fast float %4019, %3974
  %4021 = fmul fast float %4020, %4009
  %4022 = fmul fast float %4021, %4000
  %4023 = fmul fast float %4022, %4015
  %4024 = fmul fast float %4023, %4018
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4028 = fsub fast float %3936, %4027
  %4029 = fmul fast float %4028, %4026
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %4024, %3853
  %4032 = fadd fast float %4024, %3853
  %4033 = fmul fast float %4032, %3862
  %4034 = fsub fast float %4033, %3862
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = and i32 %3892, 128
  %4037 = icmp ne i32 %4036, 0
  %4038 = select i1 %4037, float %4035, float %4031
  %4039 = fmul fast float %4038, %4030
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = fcmp fast ugt float %4039, %4041
  br i1 %4042, label %4043, label %3941

; <label>:4043                                    ; preds = %3962
  %4044 = select i1 %4002, float %4039, float 0.000000e+00
  %4045 = fadd fast float %4044, %3816
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  br i1 %4002, label %3941, label %4047

; <label>:4047                                    ; preds = %4043
  %4048 = and i32 %3892, 4
  %4049 = and i32 %3892, 8
  %4050 = add i32 %3848, 0
  %4051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4050, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4051, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %4053, 2
  %4057 = extractvalue %dx.types.ResRet.f32 %4053, 3
  %4058 = bitcast float %3874 to i32
  %4059 = and i32 %4058, 255
  %4060 = uitofp i32 %4059 to float
  %4061 = lshr i32 %4058, 8
  %4062 = and i32 %4061, 255
  %4063 = uitofp i32 %4062 to float
  %4064 = fmul fast float %4057, %4060
  %4065 = fadd fast float %4064, %4063
  %4066 = fmul fast float %4065, 0x3F70101000000000
  %4067 = add i32 %3849, 0
  %4068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4067, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4068, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = extractvalue %dx.types.ResRet.f32 %4069, 3
  %4074 = bitcast float %3868 to i32
  %4075 = and i32 %4074, 255
  %4076 = uitofp i32 %4075 to float
  %4077 = lshr i32 %4074, 8
  %4078 = and i32 %4077, 255
  %4079 = uitofp i32 %4078 to float
  %4080 = lshr i32 %4074, 16
  %4081 = and i32 %4080, 255
  %4082 = uitofp i32 %4081 to float
  %4083 = fmul fast float %4082, 0x3F70101000000000
  %4084 = fmul fast float %4070, %4076
  %4085 = fadd fast float %4084, %4079
  %4086 = fmul fast float %4085, 0x3F70101000000000
  %4087 = fadd fast float %4071, -5.000000e-01
  %4088 = fadd fast float %4073, -5.000000e-01
  %4089 = fmul fast float %4087, %4083
  %4090 = fmul fast float %4088, %4083
  %4091 = fadd fast float %4089, 5.000000e-01
  %4092 = fadd fast float %4090, 5.000000e-01
  %4093 = fmul fast float %4054, %3877
  %4094 = fmul fast float %4055, %3878
  %4095 = fmul fast float %4056, %3879
  %4096 = fmul fast float %4091, 2.000000e+00
  %4097 = fadd fast float %4096, -1.000000e+00
  %4098 = fmul fast float %4092, 2.000000e+00
  %4099 = fadd fast float %4098, -1.000000e+00
  %4100 = fadd fast float %4097, %4099
  %4101 = fmul fast float %4100, 5.000000e-01
  %4102 = fsub fast float %4097, %4099
  %4103 = fmul fast float %4102, 5.000000e-01
  %4104 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4107 = fsub fast float %4105, %4106
  %4108 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4103, float %4107, float %4101, float %4103, float %4107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = call float @dx.op.unary.f32(i32 25, float %4108)  ; Rsqrt(value)
  %4110 = fmul fast float %4101, %4109
  %4111 = fmul fast float %4103, %4109
  %4112 = fmul fast float %4109, %4107
  %4113 = fmul fast float %4112, %3842
  %4114 = fmul fast float %4112, %3843
  %4115 = fmul fast float %4112, %3844
  %4116 = fmul fast float %4110, %3865
  %4117 = fmul fast float %4110, %3866
  %4118 = fmul fast float %4110, %3867
  %4119 = fadd fast float %4116, %4113
  %4120 = fadd fast float %4117, %4114
  %4121 = fadd fast float %4118, %4115
  %4122 = fmul fast float %4111, %3871
  %4123 = fmul fast float %4111, %3872
  %4124 = fmul fast float %4111, %3873
  %4125 = fadd fast float %4119, %4122
  %4126 = fadd fast float %4120, %4123
  %4127 = fadd fast float %4121, %4124
  %4128 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4126, float %4127, float %4125, float %4126, float %4127)  ; Dot3(ax,ay,az,bx,by,bz)
  %4129 = call float @dx.op.unary.f32(i32 25, float %4128)  ; Rsqrt(value)
  %4130 = fmul fast float %4125, %4129
  %4131 = fmul fast float %4126, %4129
  %4132 = fmul fast float %4127, %4129
  %4133 = icmp ne i32 %4049, 0
  %4134 = select i1 %4133, float 1.000000e+00, float 0.000000e+00
  %4135 = fmul fast float %4039, %4134
  %4136 = and i32 %3892, 1
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4138, label %4142

; <label>:4138                                    ; preds = %4047
  %4139 = fsub fast float %4130, %3825
  %4140 = fsub fast float %4131, %3826
  %4141 = fsub fast float %4132, %3827
  br label %4142

; <label>:4142                                    ; preds = %4138, %4047
  %4143 = phi float [ %4139, %4138 ], [ %4130, %4047 ]
  %4144 = phi float [ %4140, %4138 ], [ %4131, %4047 ]
  %4145 = phi float [ %4141, %4138 ], [ %4132, %4047 ]
  %4146 = fmul float %4145, %4135
  %4147 = fmul float %4144, %4135
  %4148 = fmul float %4143, %4135
  %4149 = fadd fast float %4148, %3825
  %4150 = fadd fast float %4147, %3826
  %4151 = fadd fast float %4146, %3827
  %4152 = icmp ne i32 %4048, 0
  %4153 = select i1 %4152, float 1.000000e+00, float 0.000000e+00
  %4154 = fmul fast float %4039, %4153
  %4155 = fsub fast float %4093, %3832
  %4156 = fsub fast float %4094, %3833
  %4157 = fsub fast float %4095, %3834
  %4158 = fmul fast float %4155, %4154
  %4159 = fmul fast float %4156, %4154
  %4160 = fmul fast float %4157, %4154
  %4161 = fadd fast float %4158, %3832
  %4162 = fadd fast float %4159, %3833
  %4163 = fadd fast float %4160, %3834
  %4164 = fsub fast float %4066, %3831
  %4165 = fmul fast float %4164, %4154
  %4166 = fadd fast float %4165, %3831
  %4167 = fmul fast float %4154, %3821
  %4168 = fsub fast float %3821, %4167
  %4169 = fmul fast float %4154, %3820
  %4170 = fsub fast float %3820, %4169
  %4171 = fadd fast float %4039, %3830
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = fsub fast float %4086, %3829
  %4174 = fmul fast float %4173, %4135
  %4175 = fadd fast float %4174, %3829
  %4176 = fsub fast float %4072, %3828
  %4177 = fmul fast float %4176, %4135
  %4178 = fadd fast float %4177, %3828
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = fmul fast float %4182, %4179
  %4184 = fadd fast float %4183, %4181
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = bitcast float %3880 to i32
  %4187 = and i32 %4186, 65535
  %4188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4187)  ; LegacyF16ToF32(value)
  %4189 = lshr i32 %4186, 16
  %4190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4189)  ; LegacyF16ToF32(value)
  %4191 = fcmp fast oge float %4188, 0.000000e+00
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = select i1 %4191, float %4188, float %4193
  %4195 = fadd fast float %4194, %4190
  %4196 = fsub fast float %4185, %3819
  %4197 = fmul fast float %4196, %4039
  %4198 = fadd fast float %4197, %3819
  %4199 = fmul fast float %4195, %4039
  %4200 = call float @dx.op.binary.f32(i32 35, float %3818, float %4199)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 35, float %3817, float %4039)  ; FMax(a,b)
  %4202 = and i32 %3892, 16
  %4203 = icmp eq i32 %4202, 0
  br i1 %4203, label %4226, label %4204

; <label>:4204                                    ; preds = %4142
  %4205 = bitcast float %3886 to i32
  %4206 = add i32 %3883, 0
  %4207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4207, %dx.types.Handle %4052, float %3980, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float %3985, float %3987, float undef, float %3989, float %3991, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = and i32 %4205, 65535
  %4213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4212)  ; LegacyF16ToF32(value)
  %4214 = fmul fast float %4209, %3877
  %4215 = fmul fast float %4210, %3878
  %4216 = fmul fast float %4211, %3879
  %4217 = and i32 %3892, 16384
  %4218 = icmp ne i32 %4217, 0
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = select i1 %4218, float %4220, float 1.000000e+00
  %4222 = fmul fast float %4221, %4213
  %4223 = fmul fast float %4214, %4222
  %4224 = fmul fast float %4215, %4222
  %4225 = fmul fast float %4216, %4222
  br label %4226

; <label>:4226                                    ; preds = %4204, %4142
  %4227 = phi float [ %4223, %4204 ], [ 0.000000e+00, %4142 ]
  %4228 = phi float [ %4224, %4204 ], [ 0.000000e+00, %4142 ]
  %4229 = phi float [ %4225, %4204 ], [ 0.000000e+00, %4142 ]
  %4230 = fsub fast float %4227, %3822
  %4231 = fsub fast float %4228, %3823
  %4232 = fsub fast float %4229, %3824
  %4233 = fmul fast float %4230, %4039
  %4234 = fmul fast float %4231, %4039
  %4235 = fmul fast float %4232, %4039
  %4236 = fadd fast float %4233, %3822
  %4237 = fadd fast float %4234, %3823
  %4238 = fadd fast float %4235, %3824
  br label %3941

; <label>:4239                                    ; preds = %3941
  br label %4240

; <label>:4240                                    ; preds = %4239, %3760
  %4241 = phi float [ 0.000000e+00, %3760 ], [ %3942, %4239 ]
  %4242 = phi float [ %1162, %3760 ], [ %3943, %4239 ]
  %4243 = phi float [ %3729, %3760 ], [ %3944, %4239 ]
  %4244 = phi float [ %3727, %3760 ], [ %3945, %4239 ]
  %4245 = phi float [ 0.000000e+00, %3760 ], [ %3946, %4239 ]
  %4246 = phi float [ 0.000000e+00, %3760 ], [ %3947, %4239 ]
  %4247 = phi float [ %3721, %3760 ], [ %3948, %4239 ]
  %4248 = phi float [ %3722, %3760 ], [ %3949, %4239 ]
  %4249 = phi float [ %3723, %3760 ], [ %3950, %4239 ]
  %4250 = phi float [ %3755, %3760 ], [ %3951, %4239 ]
  %4251 = phi float [ %3756, %3760 ], [ %3952, %4239 ]
  %4252 = phi float [ %3757, %3760 ], [ %3953, %4239 ]
  %4253 = phi float [ %3726, %3760 ], [ %3954, %4239 ]
  %4254 = phi float [ %3725, %3760 ], [ %3955, %4239 ]
  %4255 = phi float [ 0.000000e+00, %3760 ], [ %3956, %4239 ]
  %4256 = phi float [ %3724, %3760 ], [ %3957, %4239 ]
  %4257 = phi float [ %3718, %3760 ], [ %3958, %4239 ]
  %4258 = phi float [ %3719, %3760 ], [ %3959, %4239 ]
  %4259 = phi float [ %3720, %3760 ], [ %3960, %4239 ]
  %4260 = call float @dx.op.dot3.f32(i32 55, float %4250, float %4251, float %4252, float %4250, float %4251, float %4252)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = call float @dx.op.unary.f32(i32 25, float %4260)  ; Rsqrt(value)
  %4262 = fmul fast float %4261, %4250
  %4263 = fmul fast float %4261, %4251
  %4264 = fmul fast float %4261, %4252
  %4265 = fadd fast float %4255, %1162
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4268 = call float @dx.op.unary.f32(i32 25, float %4267)  ; Rsqrt(value)
  %4269 = fmul fast float %4268, %4262
  %4270 = fmul fast float %4268, %4263
  %4271 = fmul fast float %4268, %4264
  br label %4272

; <label>:4272                                    ; preds = %4240, %3715
  %4273 = phi float [ %4269, %4240 ], [ %3755, %3715 ]
  %4274 = phi float [ %4270, %4240 ], [ %3756, %3715 ]
  %4275 = phi float [ %4271, %4240 ], [ %3757, %3715 ]
  %4276 = phi float [ %4257, %4240 ], [ %3718, %3715 ]
  %4277 = phi float [ %4258, %4240 ], [ %3719, %3715 ]
  %4278 = phi float [ %4259, %4240 ], [ %3720, %3715 ]
  %4279 = phi float [ %4247, %4240 ], [ %3721, %3715 ]
  %4280 = phi float [ %4248, %4240 ], [ %3722, %3715 ]
  %4281 = phi float [ %4249, %4240 ], [ %3723, %3715 ]
  %4282 = phi float [ %4256, %4240 ], [ %3724, %3715 ]
  %4283 = phi float [ %4266, %4240 ], [ %1162, %3715 ]
  %4284 = phi float [ %4254, %4240 ], [ %3725, %3715 ]
  %4285 = phi float [ %4253, %4240 ], [ %3726, %3715 ]
  %4286 = phi float [ %4246, %4240 ], [ 0.000000e+00, %3715 ]
  %4287 = phi float [ %4245, %4240 ], [ 0.000000e+00, %3715 ]
  %4288 = phi float [ %4241, %4240 ], [ 0.000000e+00, %3715 ]
  %4289 = phi float [ %4243, %4240 ], [ %3729, %3715 ]
  %4290 = phi float [ %4242, %4240 ], [ %1162, %3715 ]
  %4291 = phi float [ %4244, %4240 ], [ %3727, %3715 ]
  %4292 = add i32 %54, 392
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.i32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.i32 %4293, 2
  %4297 = bitcast i32 %4294 to float
  %4298 = bitcast i32 %4295 to float
  %4299 = bitcast i32 %4296 to float
  %4300 = add i32 %54, 376
  %4301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4300, i32 undef)  ; BufferLoad(srv,index,wot)
  %4302 = extractvalue %dx.types.ResRet.i32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.i32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.i32 %4301, 2
  %4305 = bitcast i32 %4302 to float
  %4306 = bitcast i32 %4303 to float
  %4307 = bitcast i32 %4304 to float
  %4308 = fsub fast float %4305, %4297
  %4309 = fsub fast float %4306, %4298
  %4310 = fsub fast float %4307, %4299
  %4311 = fmul fast float %4308, %192
  %4312 = fmul fast float %4309, %192
  %4313 = fmul fast float %4310, %192
  %4314 = fadd fast float %4311, %4297
  %4315 = fadd fast float %4312, %4298
  %4316 = fadd fast float %4313, %4299
  %4317 = fmul fast float %4314, %4276
  %4318 = fmul fast float %4315, %4277
  %4319 = fmul fast float %4316, %4278
  %4320 = fmul fast float %4283, %192
  %4321 = fadd fast float %4282, 0xBFB99999A0000000
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4322, 0x3FF1C71C80000000
  %4324 = call float @dx.op.binary.f32(i32 36, float %4282, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4325 = fsub fast float 1.000000e+00, %4323
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4317, %4326
  %4328 = fmul fast float %4318, %4326
  %4329 = fmul fast float %4319, %4326
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = fmul fast float %4317, %4323
  %4334 = fmul fast float %4318, %4323
  %4335 = fmul fast float %4319, %4323
  %4336 = fadd fast float %4333, %4324
  %4337 = fadd fast float %4334, %4324
  %4338 = fadd fast float %4335, %4324
  %4339 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4340 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.i32 %4343, 3
  %4345 = and i32 %4344, 8
  %4346 = icmp ne i32 %4345, 0
  %4347 = call float @dx.op.binary.f32(i32 35, float %4330, float %4317)  ; FMax(a,b)
  %4348 = call float @dx.op.binary.f32(i32 35, float %4331, float %4317)  ; FMax(a,b)
  %4349 = call float @dx.op.binary.f32(i32 35, float %4332, float %4317)  ; FMax(a,b)
  %4350 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4351 = select i1 %252, float %4317, float %4330
  %4352 = select i1 %252, float %4350, float %4331
  %4353 = select i1 %252, float 1.000000e+00, float %4332
  %4354 = select i1 %4346, float %4347, float %4351
  %4355 = select i1 %4346, float %4348, float %4352
  %4356 = select i1 %4346, float %4349, float %4353
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4361 = fadd fast float %4358, %158
  %4362 = fadd fast float %4359, %159
  %4363 = fadd fast float %4360, %160
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = fsub fast float %4361, %4365
  %4368 = fsub fast float %4362, %4366
  %4369 = fmul fast float %4367, %4367
  %4370 = fmul fast float %4368, %4368
  %4371 = fadd fast float %4369, %4370
  %4372 = call float @dx.op.unary.f32(i32 24, float %4371)  ; Sqrt(value)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4374 = fcmp fast olt float %4372, %4373
  br i1 %4374, label %4375, label %4442

; <label>:4375                                    ; preds = %4272
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4383 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4386 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4387 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4388 = fadd fast float %4385, %4361
  %4389 = fadd fast float %4386, %4362
  %4390 = fadd fast float %4387, %4363
  %4391 = fmul fast float %4388, %4377
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4389, float %4379, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4381, float %4392)  ; FMad(a,b,c)
  %4394 = fmul fast float %4388, %4382
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %4389, float %4383, float %4394)  ; FMad(a,b,c)
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4384, float %4395)  ; FMad(a,b,c)
  %4397 = fsub fast float %4393, %4385
  %4398 = fsub fast float %4396, %4386
  %4399 = fsub fast float %4397, %4365
  %4400 = fadd fast float %4399, %4373
  %4401 = fsub fast float %4398, %4366
  %4402 = fadd fast float %4401, %4373
  %4403 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4404 = fmul fast float %4400, %4403
  %4405 = fmul fast float %4402, %4403
  %4406 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = fsub fast float 1.000000e+00, %4406
  %4409 = fsub fast float 1.000000e+00, %4407
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = fcmp fast ugt float %4411, 0.000000e+00
  br i1 %4412, label %4413, label %4716

; <label>:4413                                    ; preds = %4375
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4416 = fmul fast float %4415, %4411
  %4417 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4418 = fadd fast float %4417, %4416
  %4419 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4420 = fadd fast float %4418, %4387
  %4421 = fmul fast float %4393, %4381
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4384, float %4421)  ; FMad(a,b,c)
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4419, float %4422)  ; FMad(a,b,c)
  %4424 = fsub fast float %4423, %4387
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 2
  %4427 = fsub fast float %4424, %4426
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4408, float %4409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = fadd fast float %4433, %4429
  %4437 = fmul fast float %4436, 0x3F847AE140000000
  %4438 = fadd fast float %4434, %4430
  %4439 = fmul fast float %4438, 0x3F847AE140000000
  %4440 = fadd fast float %4435, %4431
  %4441 = fmul fast float %4440, 0x3F847AE140000000
  br label %4716

; <label>:4442                                    ; preds = %4272
  %4443 = and i32 %228, 1
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4716, label %4445

; <label>:4445                                    ; preds = %4442
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4454 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4456 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4457 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4458 = fadd fast float %4455, %4361
  %4459 = fadd fast float %4456, %4362
  %4460 = fadd fast float %4457, %4363
  %4461 = fmul fast float %4458, %4447
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4459, float %4449, float %4461)  ; FMad(a,b,c)
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4451, float %4462)  ; FMad(a,b,c)
  %4464 = fmul fast float %4458, %4452
  %4465 = call float @dx.op.tertiary.f32(i32 46, float %4459, float %4453, float %4464)  ; FMad(a,b,c)
  %4466 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4454, float %4465)  ; FMad(a,b,c)
  %4467 = fsub fast float %4463, %4455
  %4468 = fsub fast float %4466, %4456
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4473 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.i32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.i32 %4476, 1
  %4479 = udiv i32 %4478, %4477
  %4480 = fsub fast float %4467, %4470
  %4481 = fsub fast float %4468, %4471
  %4482 = call float @dx.op.binary.f32(i32 35, float %4480, float 0.000000e+00)  ; FMax(a,b)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4481, float 0.000000e+00)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 36, float %4482, float %4472)  ; FMin(a,b)
  %4485 = call float @dx.op.binary.f32(i32 36, float %4483, float %4473)  ; FMin(a,b)
  %4486 = add i32 %4477, -1
  %4487 = add i32 %4479, -1
  %4488 = fmul fast float %4484, %4475
  %4489 = fmul fast float %4485, %4475
  %4490 = fptoui float %4488 to i32
  %4491 = fptoui float %4489 to i32
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4490, i32 %4486)  ; UMin(a,b)
  %4493 = call i32 @dx.op.binary.i32(i32 40, i32 %4491, i32 %4487)  ; UMin(a,b)
  %4494 = mul i32 %4493, %4477
  %4495 = add i32 %4494, %4492
  %4496 = shl i32 %4495, 2
  %4497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.i32 %4497, 0
  %4499 = icmp eq i32 %4498, -1
  br i1 %4499, label %4716, label %4500

; <label>:4500                                    ; preds = %4445
  %4501 = mul i32 %4498, 148
  %4502 = add i32 %4501, 4
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = add i32 %4501, 8
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = add i32 %4501, 36
  %4509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = add i32 %4501, 60
  %4512 = add i32 %4501, 92
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = add i32 %4501, 116
  %4516 = fsub fast float %4467, %4504
  %4517 = fsub fast float %4468, %4507
  %4518 = fmul fast float %4475, %4516
  %4519 = fmul fast float %4475, %4517
  %4520 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4525 = call float @dx.op.unary.f32(i32 83, float %4520)  ; DerivCoarseX(value)
  %4526 = call float @dx.op.unary.f32(i32 83, float %4522)  ; DerivCoarseX(value)
  %4527 = call float @dx.op.unary.f32(i32 84, float %4520)  ; DerivCoarseY(value)
  %4528 = call float @dx.op.unary.f32(i32 84, float %4522)  ; DerivCoarseY(value)
  %4529 = fmul fast float %4525, %4524
  %4530 = fmul fast float %4526, %4524
  %4531 = fmul fast float %4527, %4524
  %4532 = fmul fast float %4528, %4524
  %4533 = call float @dx.op.dot2.f32(i32 54, float %4531, float %4532, float %4531, float %4532)  ; Dot2(ax,ay,bx,by)
  %4534 = call float @dx.op.dot2.f32(i32 54, float %4529, float %4530, float %4529, float %4530)  ; Dot2(ax,ay,bx,by)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float %4533)  ; FMax(a,b)
  %4536 = call float @dx.op.unary.f32(i32 23, float %4535)  ; Log(value)
  %4537 = fmul fast float %4536, 5.000000e-01
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4540 = fadd fast float %4539, %4537
  %4541 = call float @dx.op.binary.f32(i32 35, float %4540, float 0.000000e+00)  ; FMax(a,b)
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4544 = fadd fast float %4543, %4541
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4547 = fadd fast float %4544, %4546
  %4548 = add i32 %4514, 0
  %4549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4550 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4549, i32 0)  ; GetDimensions(handle,mipLevel)
  %4551 = extractvalue %dx.types.Dimensions %4550, 0
  %4552 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4551)  ; FirstbitLo(value)
  %4553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.i32 %4553, 1
  %4555 = sub nsw i32 %4554, %4552
  %4556 = sitofp i32 %4555 to float
  %4557 = fsub fast float %4547, %4556
  %4558 = call float @dx.op.binary.f32(i32 35, float %4557, float 0.000000e+00)  ; FMax(a,b)
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4549, %dx.types.Handle %46, float %4520, float %4522, float %4510, float undef, i32 0, i32 0, i32 undef, float %4558)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = fcmp ule float %4560, 0x3FE0101020000000
  %4562 = extractvalue %dx.types.CBufRet.i32 %4553, 0
  %4563 = and i32 %4562, 128
  %4564 = icmp ne i32 %4563, 0
  %4565 = and i1 %4561, %4564
  br i1 %4565, label %4716, label %4566

; <label>:4566                                    ; preds = %4500
  %4567 = add i32 %4501, 20
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = add i32 %4501, 24
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = add i32 %4501, 40
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = add i32 %4501, 96
  %4577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4581 = fmul fast float %4580, %4520
  %4582 = fmul fast float %4580, %4522
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4584 = fadd fast float %4581, %4583
  %4585 = fadd fast float %4582, %4583
  %4586 = add i32 %4578, 0
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4586, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4587, i32 0)  ; GetDimensions(handle,mipLevel)
  %4589 = extractvalue %dx.types.Dimensions %4588, 0
  %4590 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4589)  ; FirstbitLo(value)
  %4591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.i32 %4591, 1
  %4593 = sub nsw i32 %4592, %4590
  %4594 = sitofp i32 %4593 to float
  %4595 = fsub fast float %4544, %4594
  %4596 = call float @dx.op.binary.f32(i32 35, float %4595, float 0.000000e+00)  ; FMax(a,b)
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4587, %dx.types.Handle %46, float %4584, float %4585, float %4575, float undef, i32 0, i32 0, i32 undef, float %4596)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = fmul fast float %4598, %4569
  %4600 = fadd fast float %4599, %4572
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4609 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4610 = fadd fast float %4606, %4467
  %4611 = fadd fast float %4608, %4468
  %4612 = fadd fast float %4600, %4609
  %4613 = fmul fast float %4610, %4602
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4603, float %4613)  ; FMad(a,b,c)
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4604, float %4614)  ; FMad(a,b,c)
  %4616 = fsub fast float %4615, %4609
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4619 = fsub fast float %4616, %4618
  %4620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.i32 %4620, 0
  %4622 = call i32 @dx.op.binary.i32(i32 40, i32 %4498, i32 %4621)  ; UMin(a,b)
  %4623 = mul i32 %4622, 36
  %4624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.i32 %4624, 0
  %4626 = add i32 %4623, 4
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = fmul fast float %4628, %4520
  %4630 = fmul fast float %4628, %4522
  %4631 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4632 = fadd fast float %4629, %4631
  %4633 = fadd fast float %4630, %4631
  %4634 = icmp eq i32 %4625, 0
  br i1 %4634, label %4703, label %4635

; <label>:4635                                    ; preds = %4566
  br label %4636

; <label>:4636                                    ; preds = %4693, %4635
  %4637 = phi float [ %4694, %4693 ], [ 0.000000e+00, %4635 ]
  %4638 = phi float [ %4695, %4693 ], [ 0.000000e+00, %4635 ]
  %4639 = phi float [ %4696, %4693 ], [ 0.000000e+00, %4635 ]
  %4640 = phi float [ %4697, %4693 ], [ 0.000000e+00, %4635 ]
  %4641 = phi float [ %4698, %4693 ], [ 0.000000e+00, %4635 ]
  %4642 = phi float [ %4699, %4693 ], [ 0.000000e+00, %4635 ]
  %4643 = phi i32 [ %4700, %4693 ], [ 0, %4635 ]
  %4644 = shl i32 %4643, 2
  %4645 = add i32 %4511, %4644
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = add i32 %4515, %4644
  %4649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.i32 %4649, 0
  %4651 = add i32 %4650, 0
  %4652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4651, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4653 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4652, i32 0)  ; GetDimensions(handle,mipLevel)
  %4654 = extractvalue %dx.types.Dimensions %4653, 0
  %4655 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4654)  ; FirstbitLo(value)
  %4656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.i32 %4656, 1
  %4658 = sub nsw i32 %4657, %4655
  %4659 = sitofp i32 %4658 to float
  %4660 = fsub fast float %4544, %4659
  %4661 = call float @dx.op.binary.f32(i32 35, float %4660, float 0.000000e+00)  ; FMax(a,b)
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4652, %dx.types.Handle %46, float %4632, float %4633, float %4647, float undef, i32 0, i32 0, i32 undef, float %4661)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = fcmp fast ogt float %4663, 0.000000e+00
  br i1 %4664, label %4665, label %4693

; <label>:4665                                    ; preds = %4636
  %4666 = add i32 %4626, %4644
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = and i32 %4668, 32767
  %4670 = mul nuw nsw i32 %4669, 928
  %4671 = add nuw nsw i32 %4670, 48
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = add nuw nsw i32 %4670, 60
  %4677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4676, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4677, 2
  %4681 = fmul fast float %4673, %4663
  %4682 = fmul fast float %4674, %4663
  %4683 = fmul fast float %4675, %4663
  %4684 = fadd fast float %4681, %4637
  %4685 = fadd fast float %4682, %4638
  %4686 = fadd fast float %4683, %4639
  %4687 = fmul fast float %4678, %4663
  %4688 = fmul fast float %4679, %4663
  %4689 = fmul fast float %4680, %4663
  %4690 = fadd fast float %4687, %4640
  %4691 = fadd fast float %4688, %4641
  %4692 = fadd fast float %4689, %4642
  br label %4693

; <label>:4693                                    ; preds = %4665, %4636
  %4694 = phi float [ %4684, %4665 ], [ %4637, %4636 ]
  %4695 = phi float [ %4685, %4665 ], [ %4638, %4636 ]
  %4696 = phi float [ %4686, %4665 ], [ %4639, %4636 ]
  %4697 = phi float [ %4690, %4665 ], [ %4640, %4636 ]
  %4698 = phi float [ %4691, %4665 ], [ %4641, %4636 ]
  %4699 = phi float [ %4692, %4665 ], [ %4642, %4636 ]
  %4700 = add nuw i32 %4643, 1
  %4701 = icmp eq i32 %4700, %4625
  br i1 %4701, label %4702, label %4636

; <label>:4702                                    ; preds = %4693
  br label %4703

; <label>:4703                                    ; preds = %4702, %4566
  %4704 = phi float [ 0.000000e+00, %4566 ], [ %4694, %4702 ]
  %4705 = phi float [ 0.000000e+00, %4566 ], [ %4695, %4702 ]
  %4706 = phi float [ 0.000000e+00, %4566 ], [ %4696, %4702 ]
  %4707 = phi float [ 0.000000e+00, %4566 ], [ %4697, %4702 ]
  %4708 = phi float [ 0.000000e+00, %4566 ], [ %4698, %4702 ]
  %4709 = phi float [ 0.000000e+00, %4566 ], [ %4699, %4702 ]
  %4710 = fadd fast float %4707, %4704
  %4711 = fmul fast float %4710, 0x3F847AE140000000
  %4712 = fadd fast float %4708, %4705
  %4713 = fmul fast float %4712, 0x3F847AE140000000
  %4714 = fadd fast float %4709, %4706
  %4715 = fmul fast float %4714, 0x3F847AE140000000
  br label %4716

; <label>:4716                                    ; preds = %4703, %4500, %4445, %4442, %4413, %4375
  %4717 = phi float [ %4427, %4413 ], [ -1.310720e+05, %4375 ], [ %4619, %4703 ], [ -1.310720e+05, %4445 ], [ -1.310720e+05, %4500 ], [ -1.310720e+05, %4442 ]
  %4718 = phi float [ %4437, %4413 ], [ 0.000000e+00, %4375 ], [ %4711, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4719 = phi float [ %4439, %4413 ], [ 0.000000e+00, %4375 ], [ %4713, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4720 = phi float [ %4441, %4413 ], [ 0.000000e+00, %4375 ], [ %4715, %4703 ], [ 0.000000e+00, %4445 ], [ 0.000000e+00, %4500 ], [ 0.000000e+00, %4442 ]
  %4721 = phi i1 [ true, %4413 ], [ false, %4375 ], [ true, %4703 ], [ false, %4445 ], [ false, %4500 ], [ false, %4442 ]
  %4722 = and i32 %228, 3
  %4723 = icmp eq i32 %4722, 1
  %4724 = select i1 %4723, float 1.000000e+00, float 0.000000e+00
  %4725 = fsub fast float %4717, %160
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = select i1 %4721, float %4726, float 1.000000e+00
  %4728 = fmul fast float %4727, %4724
  %4729 = icmp eq i32 %4722, 3
  %4730 = select i1 %4729, float 1.000000e+00, float %4728
  %4731 = call float @dx.op.binary.f32(i32 35, float %4288, float %4730)  ; FMax(a,b)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fcmp fast une float %4732, 0.000000e+00
  %4734 = fsub fast float -0.000000e+00, %178
  %4735 = fsub fast float -0.000000e+00, %179
  %4736 = fsub fast float -0.000000e+00, %180
  br i1 %4733, label %4737, label %4899

; <label>:4737                                    ; preds = %4716
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fmul fast float %4732, 2.500000e+00
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4732, 0x4013FFFFE0000000
  %4742 = fadd fast float %4741, 0xBFFFFFFFE0000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4732, 0x4004000020000000
  %4745 = fadd fast float %4744, 0xBFF8000040000000
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4748 = fmul fast float %4321, 1.000000e+01
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4749, 2.000000e+00
  %4751 = fsub fast float 3.000000e+00, %4750
  %4752 = fmul fast float %4749, %4749
  %4753 = fmul fast float %4752, %4751
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fsub fast float 0x3FE3333340000000, %4342
  %4756 = fmul fast float %4755, 0x400AAAAAA0000000
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fmul fast float %4754, %4757
  %4759 = fmul fast float %4354, 0x3FEA2B8620000000
  %4760 = fmul fast float %4355, 0x3FEA2B8620000000
  %4761 = fmul fast float %4356, 0x3FEA2B8620000000
  %4762 = fadd fast float %4759, 0x3FC81DFBA0000000
  %4763 = fmul fast float %4762, %4354
  %4764 = fadd fast float %4763, 0x3F910E6020000000
  %4765 = fadd fast float %4760, 0x3FC81DFBA0000000
  %4766 = fmul fast float %4765, %4355
  %4767 = fadd fast float %4766, 0x3F910E6020000000
  %4768 = fadd fast float %4761, 0x3FC81DFBA0000000
  %4769 = fmul fast float %4768, %4356
  %4770 = fadd fast float %4769, 0x3F910E6020000000
  %4771 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = fsub fast float %4771, %4354
  %4775 = fsub fast float %4772, %4355
  %4776 = fsub fast float %4773, %4356
  %4777 = fmul fast float %4774, %4747
  %4778 = fmul fast float %4777, %4758
  %4779 = fmul fast float %4775, %4747
  %4780 = fmul fast float %4779, %4758
  %4781 = fmul fast float %4776, %4747
  %4782 = fmul fast float %4781, %4758
  %4783 = fadd fast float %4778, %4354
  %4784 = fadd fast float %4780, %4355
  %4785 = fadd fast float %4782, %4356
  %4786 = fmul fast float %4285, %4285
  %4787 = fmul fast float %4786, %4786
  %4788 = fadd fast float %4743, 1.000000e+00
  %4789 = fsub fast float %4788, %4758
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fsub fast float 1.000000e+00, %4787
  %4794 = call float @dx.op.binary.f32(i32 36, float %4790, float %4793)  ; FMin(a,b)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4796 = call float @dx.op.binary.f32(i32 35, float %4794, float %4795)  ; FMax(a,b)
  %4797 = fadd fast float %4792, 0xBFE4CCCCC0000000
  %4798 = fmul fast float %4797, 0x4006DB6DA0000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, 2.000000e+00
  %4801 = fsub fast float 3.000000e+00, %4800
  %4802 = bitcast float %4339 to i32
  %4803 = ashr i32 %4802, 1
  %4804 = add nsw i32 %4803, 532487669
  %4805 = bitcast i32 %4804 to float
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4809, 2.000000e+00
  %4811 = bitcast float %4340 to i32
  %4812 = ashr i32 %4811, 1
  %4813 = add nsw i32 %4812, 532487669
  %4814 = bitcast i32 %4813 to float
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = bitcast float %4815 to i32
  %4817 = sub nsw i32 2129859010, %4816
  %4818 = bitcast i32 %4817 to float
  %4819 = fmul fast float %4818, 2.000000e+00
  %4820 = bitcast float %4341 to i32
  %4821 = ashr i32 %4820, 1
  %4822 = add nsw i32 %4821, 532487669
  %4823 = bitcast i32 %4822 to float
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = fmul fast float %4827, 2.000000e+00
  %4829 = fsub fast float 0x4002A9FBE0000000, %4810
  %4830 = fadd fast float %4810, 0x3FD54FDF00000000
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4833, %4829
  %4835 = fmul fast float %4834, %4834
  %4836 = fsub fast float 0x4002A9FBE0000000, %4819
  %4837 = fadd fast float %4819, 0x3FD54FDF00000000
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, %4836
  %4842 = fmul fast float %4841, %4841
  %4843 = fsub fast float 0x4002A9FBE0000000, %4828
  %4844 = fadd fast float %4828, 0x3FD54FDF00000000
  %4845 = bitcast float %4844 to i32
  %4846 = sub nsw i32 2129859010, %4845
  %4847 = bitcast i32 %4846 to float
  %4848 = fmul fast float %4847, %4843
  %4849 = fmul fast float %4848, %4848
  %4850 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4835)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4842)  ; FMax(a,b)
  %4852 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4849)  ; FMax(a,b)
  %4853 = fsub fast float 1.000000e+00, %4738
  %4854 = fadd fast float %4853, %4754
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = fsub fast float 1.000000e+00, %4730
  %4857 = fmul fast float %4796, %4856
  %4858 = fmul fast float %4799, %4799
  %4859 = fmul fast float %4858, %4857
  %4860 = fmul fast float %4859, %4801
  %4861 = fmul fast float %4856, 0xBFE99999A0000000
  %4862 = fmul fast float %4861, %4747
  %4863 = fmul fast float %4862, %4758
  %4864 = fadd fast float %4863, 1.000000e+00
  %4865 = fadd fast float %4342, -1.000000e+00
  %4866 = fmul fast float %4864, %4865
  %4867 = fadd fast float %4866, 1.000000e+00
  %4868 = fsub fast float %4850, %4339
  %4869 = fsub fast float %4851, %4340
  %4870 = fsub fast float %4852, %4341
  %4871 = fmul fast float %4860, %4868
  %4872 = fmul fast float %4860, %4869
  %4873 = fmul fast float %4860, %4870
  %4874 = fadd fast float %4871, %4339
  %4875 = fadd fast float %4872, %4340
  %4876 = fadd fast float %4873, %4341
  %4877 = fsub fast float %102, %4273
  %4878 = fsub fast float %103, %4274
  %4879 = fsub fast float %104, %4275
  %4880 = fmul fast float %4860, %4877
  %4881 = fmul fast float %4860, %4878
  %4882 = fmul fast float %4860, %4879
  %4883 = fadd fast float %4880, %4273
  %4884 = fadd fast float %4881, %4274
  %4885 = fadd fast float %4882, %4275
  %4886 = fmul fast float %4860, %4855
  %4887 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = fmul fast float %4886, %4888
  %4890 = fadd fast float %4889, %4887
  %4891 = fsub fast float 1.000000e+00, %4285
  %4892 = fmul fast float %4860, %4891
  %4893 = fadd fast float %4892, %4285
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4884, float %4885, float %4883, float %4884, float %4885)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4883, %4895
  %4897 = fmul fast float %4884, %4895
  %4898 = fmul fast float %4885, %4895
  br label %4899

; <label>:4899                                    ; preds = %4737, %4716
  %4900 = phi float [ %4896, %4737 ], [ %4273, %4716 ]
  %4901 = phi float [ %4897, %4737 ], [ %4274, %4716 ]
  %4902 = phi float [ %4898, %4737 ], [ %4275, %4716 ]
  %4903 = phi float [ %4783, %4737 ], [ %4354, %4716 ]
  %4904 = phi float [ %4784, %4737 ], [ %4355, %4716 ]
  %4905 = phi float [ %4785, %4737 ], [ %4356, %4716 ]
  %4906 = phi float [ %4874, %4737 ], [ %4339, %4716 ]
  %4907 = phi float [ %4875, %4737 ], [ %4340, %4716 ]
  %4908 = phi float [ %4876, %4737 ], [ %4341, %4716 ]
  %4909 = phi float [ %4890, %4737 ], [ %4342, %4716 ]
  %4910 = phi float [ %4893, %4737 ], [ %4285, %4716 ]
  %4911 = fsub fast float -0.000000e+00, %160
  %4912 = select i1 %252, float 0.000000e+00, float %4908
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4734, float %4735, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = fmul fast float %4915, 2.000000e+00
  %4917 = fmul fast float %4916, %4900
  %4918 = fmul fast float %4916, %4901
  %4919 = fmul fast float %4916, %4902
  %4920 = fsub fast float %178, %4917
  %4921 = fsub fast float %179, %4918
  %4922 = fsub fast float %180, %4919
  %4923 = call float @dx.op.binary.f32(i32 36, float %4910, float 1.000000e+00)  ; FMin(a,b)
  %4924 = fsub fast float 1.000000e+00, %4910
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fsub fast float 1.000000e+00, %66
  %4929 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4929, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4931 = fdiv fast float %4928, %4930
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fmul fast float %4933, 5.000000e-01
  %4935 = fadd fast float %4934, 5.000000e-01
  %4936 = fmul fast float %4935, %66
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4938, %4931
  %4940 = fadd fast float %4936, %4939
  %4941 = fsub fast float 5.000000e-01, %4934
  %4942 = fmul fast float %4941, %4903
  %4943 = fmul fast float %4941, %4904
  %4944 = fmul fast float %4941, %4905
  %4945 = fadd fast float %4940, %4942
  %4946 = fadd fast float %4940, %4943
  %4947 = fadd fast float %4940, %4944
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fmul fast float %4949, 5.000000e-01
  %4951 = fadd fast float %4950, 5.000000e-01
  %4952 = fmul fast float %4951, %66
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fmul fast float %4954, %4931
  %4956 = fadd fast float %4952, %4955
  %4957 = fsub fast float 5.000000e-01, %4950
  %4958 = fmul fast float %4957, %4903
  %4959 = fmul fast float %4957, %4904
  %4960 = fmul fast float %4957, %4905
  %4961 = fadd fast float %4956, %4958
  %4962 = fadd fast float %4956, %4959
  %4963 = fadd fast float %4956, %4960
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = call float @dx.op.binary.f32(i32 36, float %4903, float %4965)  ; FMin(a,b)
  %4967 = fsub fast float 1.000000e+00, %4923
  %4968 = fmul fast float %4966, %4967
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = call float @dx.op.binary.f32(i32 36, float %4904, float %4965)  ; FMin(a,b)
  %4974 = fmul fast float %4973, %4967
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = call float @dx.op.binary.f32(i32 36, float %4905, float %4965)  ; FMin(a,b)
  %4980 = fmul fast float %4979, %4967
  %4981 = fsub fast float 1.000000e+00, %4980
  %4982 = bitcast float %4981 to i32
  %4983 = sub nsw i32 2129859010, %4982
  %4984 = bitcast i32 %4983 to float
  %4985 = fmul fast float %4923, %67
  %4986 = fmul fast float %4985, %4945
  %4987 = fmul fast float %4986, %4972
  %4988 = fmul fast float %4923, %68
  %4989 = fmul fast float %4988, %4946
  %4990 = fmul fast float %4989, %4978
  %4991 = fmul fast float %4923, %69
  %4992 = fmul fast float %4991, %4947
  %4993 = fmul fast float %4992, %4984
  %4994 = call float @dx.op.binary.f32(i32 36, float %4906, float %4965)  ; FMin(a,b)
  %4995 = fmul fast float %4994, %4967
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = bitcast float %4996 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = call float @dx.op.binary.f32(i32 36, float %4907, float %4965)  ; FMin(a,b)
  %5001 = fmul fast float %5000, %4967
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = call float @dx.op.binary.f32(i32 36, float %4912, float %4965)  ; FMin(a,b)
  %5007 = fmul fast float %5006, %4967
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = bitcast float %5008 to i32
  %5010 = sub nsw i32 2129859010, %5009
  %5011 = bitcast i32 %5010 to float
  %5012 = fmul fast float %4985, %4961
  %5013 = fmul fast float %5012, %4999
  %5014 = fmul fast float %4988, %4962
  %5015 = fmul fast float %5014, %5005
  %5016 = fmul fast float %4991, %4963
  %5017 = fmul fast float %5016, %5011
  %5018 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4990, float %4993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = select i1 %252, float 0.000000e+00, float %4987
  %5020 = select i1 %252, float %5018, float %4990
  %5021 = select i1 %252, float 0.000000e+00, float %4993
  %5022 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5015, float %5017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = select i1 %252, float 0.000000e+00, float %5013
  %5024 = select i1 %252, float %5022, float %5015
  %5025 = select i1 %252, float 0.000000e+00, float %5017
  %5026 = fmul fast float %4914, 9.843750e-01
  %5027 = fmul fast float %4909, 9.843750e-01
  %5028 = fadd fast float %5026, 7.812500e-03
  %5029 = fadd fast float %5027, 7.812500e-03
  %5030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5031 = extractvalue %dx.types.ResRet.f32 %5030, 2
  %5032 = extractvalue %dx.types.ResRet.f32 %5030, 3
  %5033 = fmul fast float %5031, %4906
  %5034 = fmul fast float %5031, %4907
  %5035 = fmul fast float %5031, %4912
  %5036 = fadd fast float %5033, %5032
  %5037 = fadd fast float %5034, %5032
  %5038 = fadd fast float %5035, %5032
  %5039 = fcmp fast ogt float %4286, 0.000000e+00
  br i1 %5039, label %5040, label %5066

; <label>:5040                                    ; preds = %4899
  %5041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %4914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5042 = extractvalue %dx.types.ResRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.ResRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.ResRet.f32 %5041, 2
  %5045 = fadd fast float %5042, -5.000000e-01
  %5046 = fadd fast float %5043, -5.000000e-01
  %5047 = fadd fast float %5044, -5.000000e-01
  %5048 = fsub fast float 1.000000e+00, %4906
  %5049 = fsub fast float 1.000000e+00, %4907
  %5050 = fsub fast float 1.000000e+00, %4912
  %5051 = fmul fast float %4906, 4.000000e+00
  %5052 = fmul fast float %5051, %5048
  %5053 = fmul fast float %5052, %5045
  %5054 = fmul fast float %4907, 4.000000e+00
  %5055 = fmul fast float %5054, %5049
  %5056 = fmul fast float %5055, %5046
  %5057 = fmul fast float %4912, 4.000000e+00
  %5058 = fmul fast float %5057, %5050
  %5059 = fmul fast float %5058, %5047
  %5060 = fadd fast float %5053, %5036
  %5061 = fadd fast float %5056, %5037
  %5062 = fadd fast float %5059, %5038
  %5063 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5064 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5065 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  br label %5066

; <label>:5066                                    ; preds = %5040, %4899
  %5067 = phi float [ %5063, %5040 ], [ %5036, %4899 ]
  %5068 = phi float [ %5064, %5040 ], [ %5037, %4899 ]
  %5069 = phi float [ %5065, %5040 ], [ %5038, %4899 ]
  %5070 = call float @dx.op.binary.f32(i32 35, float %5068, float %5069)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5067, float %5070)  ; FMax(a,b)
  %5072 = fsub fast float 1.000000e+00, %5071
  %5073 = fmul fast float %5072, %5019
  %5074 = fmul fast float %5072, %5020
  %5075 = fmul fast float %5072, %5021
  %5076 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = fcmp fast ogt float %5076, 0x3E7FF19E20000000
  %5078 = fdiv fast float 1.000000e+00, %5076
  %5079 = select i1 %5077, float %5078, float 0.000000e+00
  %5080 = fmul fast float %5079, %4903
  %5081 = fmul fast float %5079, %4904
  %5082 = fmul fast float %5079, %4905
  %5083 = fadd fast float %5080, -1.000000e+00
  %5084 = fadd fast float %5081, -1.000000e+00
  %5085 = fadd fast float %5082, -1.000000e+00
  %5086 = fmul fast float %5083, 5.000000e-01
  %5087 = fmul fast float %5084, 5.000000e-01
  %5088 = fmul fast float %5085, 5.000000e-01
  %5089 = fadd fast float %5086, 1.000000e+00
  %5090 = fadd fast float %5087, 1.000000e+00
  %5091 = fadd fast float %5088, 1.000000e+00
  %5092 = fmul fast float %5067, %5023
  %5093 = fmul fast float %5068, %5024
  %5094 = fmul fast float %5069, %5025
  %5095 = fsub fast float 1.000000e+00, %4914
  %5096 = bitcast float %5095 to i32
  %5097 = sitofp i32 %5096 to float
  %5098 = fmul fast float %5097, 5.000000e+00
  %5099 = fadd fast float %5098, 0xC1EFBF8940000000
  %5100 = fptosi float %5099 to i32
  %5101 = bitcast i32 %5100 to float
  %5102 = fmul fast float %5101, %4287
  %5103 = fmul fast float %5019, %5102
  %5104 = fmul fast float %5103, %5072
  %5105 = fmul fast float %5104, %5089
  %5106 = fmul fast float %5020, %5102
  %5107 = fmul fast float %5106, %5072
  %5108 = fmul fast float %5107, %5090
  %5109 = fmul fast float %5021, %5102
  %5110 = fmul fast float %5109, %5072
  %5111 = fmul fast float %5110, %5091
  %5112 = fmul fast float %5073, %4320
  %5113 = fmul fast float %5074, %4320
  %5114 = fmul fast float %5075, %4320
  %5115 = fadd fast float %5092, %4279
  %5116 = fadd fast float %5115, %5105
  %5117 = fmul fast float %5116, %4320
  %5118 = fadd fast float %5093, %4280
  %5119 = fadd fast float %5118, %5108
  %5120 = fmul fast float %5119, %4320
  %5121 = fadd fast float %5094, %4281
  %5122 = fadd fast float %5121, %5111
  %5123 = fmul fast float %5122, %4320
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5126 = fcmp fast oeq float %5125, 0.000000e+00
  br i1 %5126, label %6196, label %5127

; <label>:5127                                    ; preds = %5066
  %5128 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5129 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5130 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = select i1 %252, float %5136, float %5132
  %5140 = select i1 %252, float %5138, float %5133
  %5141 = select i1 %252, float %5137, float %5134
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 2
  %5144 = fmul fast float %5143, %102
  %5145 = fmul fast float %5143, %103
  %5146 = fmul fast float %5143, %104
  %5147 = fadd fast float %5144, %158
  %5148 = fadd fast float %5145, %159
  %5149 = fadd fast float %5146, %160
  %5150 = fcmp fast olt float %5125, 0.000000e+00
  br i1 %5150, label %5775, label %5151

; <label>:5151                                    ; preds = %5127
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5160 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5161 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5167 = fmul fast float %5153, %5147
  %5168 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5154, float %5167)  ; FMad(a,b,c)
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5155, float %5168)  ; FMad(a,b,c)
  %5170 = fadd fast float %5169, %5156
  %5171 = fmul fast float %5158, %5147
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5159, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5160, float %5172)  ; FMad(a,b,c)
  %5174 = fadd fast float %5173, %5161
  %5175 = fmul fast float %5163, %5147
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5165, float %5176)  ; FMad(a,b,c)
  %5178 = fadd fast float %5177, %5166
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5183 = fmul fast float %5182, %5170
  %5184 = fmul fast float %5182, %5174
  %5185 = fadd fast float %5183, %5180
  %5186 = fadd fast float %5184, %5181
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5191 = fmul fast float %5190, %5170
  %5192 = fmul fast float %5190, %5174
  %5193 = fadd fast float %5191, %5188
  %5194 = fadd fast float %5192, %5189
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 1
  %5197 = fsub fast float %5196, %5178
  %5198 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %5199 = fmul fast float %5197, %5198
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5205 = fadd fast float %5204, %5202
  %5206 = fcmp fast ogt float %5205, 0.000000e+00
  br i1 %5206, label %5207, label %5231

; <label>:5207                                    ; preds = %5151
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5211 = fsub fast float %5193, %5209
  %5212 = fsub fast float %5194, %5210
  %5213 = fcmp fast olt float %5211, 0.000000e+00
  %5214 = fcmp fast olt float %5212, 0.000000e+00
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.CBufRet.f32 %5215, 2
  %5219 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5220 = select i1 %5213, float %5216, float %5218
  %5221 = select i1 %5214, float %5217, float %5219
  %5222 = fmul fast float %5220, %5211
  %5223 = fmul fast float %5221, %5212
  %5224 = call float @dx.op.unary.f32(i32 6, float %5222)  ; FAbs(value)
  %5225 = call float @dx.op.unary.f32(i32 6, float %5223)  ; FAbs(value)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5227 = call float @dx.op.binary.f32(i32 35, float %5224, float %5225)  ; FMax(a,b)
  %5228 = fsub fast float %5226, %5227
  %5229 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5230 = fmul fast float %5229, %5201
  br label %5231

; <label>:5231                                    ; preds = %5207, %5151
  %5232 = phi float [ %5230, %5207 ], [ 0.000000e+00, %5151 ]
  %5233 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5234 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5235 = fadd fast float %5234, %5233
  %5236 = fcmp fast ogt float %5235, 0.000000e+00
  %5237 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  br i1 %5236, label %5238, label %5261

; <label>:5238                                    ; preds = %5231
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5242 = fsub fast float %5185, %5240
  %5243 = fsub fast float %5186, %5241
  %5244 = fcmp fast olt float %5242, 0.000000e+00
  %5245 = fcmp fast olt float %5243, 0.000000e+00
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5251 = select i1 %5244, float %5247, float %5249
  %5252 = select i1 %5245, float %5248, float %5250
  %5253 = fmul fast float %5251, %5242
  %5254 = fmul fast float %5252, %5243
  %5255 = call float @dx.op.unary.f32(i32 6, float %5253)  ; FAbs(value)
  %5256 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5255, float %5256)  ; FMax(a,b)
  %5258 = fsub fast float %5237, %5257
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, %5201
  br label %5261

; <label>:5261                                    ; preds = %5238, %5231
  %5262 = phi float [ %5260, %5238 ], [ 0.000000e+00, %5231 ]
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = fsub fast float %5170, %5267
  %5270 = fsub fast float %5174, %5268
  %5271 = fcmp fast olt float %5269, 0.000000e+00
  %5272 = fcmp fast olt float %5270, 0.000000e+00
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5273, 3
  %5278 = select i1 %5271, float %5274, float %5276
  %5279 = select i1 %5272, float %5275, float %5277
  %5280 = fmul fast float %5278, %5269
  %5281 = fmul fast float %5279, %5270
  %5282 = call float @dx.op.unary.f32(i32 6, float %5280)  ; FAbs(value)
  %5283 = call float @dx.op.unary.f32(i32 6, float %5281)  ; FAbs(value)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5282, float %5283)  ; FMax(a,b)
  %5285 = fsub fast float %5237, %5284
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = call float @dx.op.binary.f32(i32 36, float %5286, float %5265)  ; FMin(a,b)
  %5288 = fmul fast float %5287, %5201
  %5289 = fsub fast float %5262, %5288
  %5290 = fsub fast float %5232, %5262
  %5291 = fsub fast float %5290, %5288
  %5292 = call float @dx.op.binary.f32(i32 35, float %5262, float %5232)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5288, float %5292)  ; FMax(a,b)
  %5294 = fcmp fast olt float %5293, 1.000000e+00
  br i1 %5294, label %5295, label %5693, !dx.controlflow.hints !91

; <label>:5295                                    ; preds = %5261
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = fcmp fast une float %5297, 0.000000e+00
  br i1 %5298, label %5299, label %5693, !dx.controlflow.hints !92

; <label>:5299                                    ; preds = %5295
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.CBufRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5315 = fmul fast float %5301, %5147
  %5316 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5302, float %5315)  ; FMad(a,b,c)
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5303, float %5316)  ; FMad(a,b,c)
  %5318 = fadd fast float %5317, %5304
  %5319 = fmul fast float %5306, %5147
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5307, float %5319)  ; FMad(a,b,c)
  %5321 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5308, float %5320)  ; FMad(a,b,c)
  %5322 = fadd fast float %5321, %5309
  %5323 = fmul fast float %5311, %5147
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5312, float %5323)  ; FMad(a,b,c)
  %5325 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5313, float %5324)  ; FMad(a,b,c)
  %5326 = fadd fast float %5325, %5314
  %5327 = fcmp fast oge float %5318, 1.000000e+00
  %5328 = fcmp fast oge float %5322, 1.000000e+00
  %5329 = or i1 %5327, %5328
  %5330 = fcmp fast olt float %5318, 0.000000e+00
  %5331 = fcmp fast olt float %5322, 0.000000e+00
  %5332 = or i1 %5330, %5331
  %5333 = or i1 %5329, %5332
  br i1 %5333, label %5693, label %5334, !dx.controlflow.hints !93

; <label>:5334                                    ; preds = %5299
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.i32 %5339, 2
  %5341 = uitofp i32 %5340 to float
  %5342 = extractvalue %dx.types.CBufRet.i32 %5339, 3
  %5343 = uitofp i32 %5342 to float
  %5344 = extractvalue %dx.types.CBufRet.f32 %5335, 3
  %5345 = fmul fast float %5344, 2.000000e+00
  %5346 = fsub fast float %5318, %5336
  %5347 = fsub fast float %5322, %5337
  %5348 = fmul fast float %5345, %5346
  %5349 = fmul fast float %5345, %5347
  %5350 = fdiv fast float 1.000000e+00, %5130
  %5351 = fmul fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5353 = fmul fast float %5338, %5149
  %5354 = fmul fast float %5353, %5345
  %5355 = call float @dx.op.unary.f32(i32 6, float %5354)  ; FAbs(value)
  %5356 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5357 = call float @dx.op.binary.f32(i32 35, float %5355, float %5352)  ; FMax(a,b)
  %5358 = call float @dx.op.binary.f32(i32 35, float %5356, float %5357)  ; FMax(a,b)
  %5359 = fmul fast float %5358, 2.000000e+00
  %5360 = call float @dx.op.unary.f32(i32 23, float %5359)  ; Log(value)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5360, float %5341)  ; FMax(a,b)
  %5362 = call float @dx.op.unary.f32(i32 22, float %5361)  ; Frc(value)
  %5363 = fadd fast float %5362, 0xBFEA666660000000
  %5364 = fmul fast float %5363, 8.000000e+00
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 27, float %5361)  ; Round_ni(value)
  %5367 = fadd fast float %5366, %5365
  %5368 = call float @dx.op.binary.f32(i32 36, float %5367, float %5343)  ; FMin(a,b)
  %5369 = call float @dx.op.unary.f32(i32 27, float %5368)  ; Round_ni(value)
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = call float @dx.op.unary.f32(i32 21, float %5370)  ; Exp(value)
  %5372 = fmul fast float %5371, %5345
  %5373 = fmul fast float %5372, %5318
  %5374 = fmul fast float %5372, %5322
  %5375 = fmul fast float %5373, 2.500000e-01
  %5376 = fmul fast float %5374, 2.500000e-01
  %5377 = fadd fast float %5375, 5.000000e-01
  %5378 = fadd fast float %5376, 5.000000e-01
  %5379 = fsub fast float %5343, %5341
  %5380 = fptoui float %5379 to i32
  %5381 = add i32 %5380, 320
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5381)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.CBufRet.f32 %5382, 1
  %5385 = fcmp fast une float %5368, %5343
  %5386 = fsub fast float %5318, %5383
  %5387 = fsub fast float %5322, %5384
  %5388 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5389 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5390 = fmul fast float %5388, %5372
  %5391 = fmul fast float %5389, %5372
  %5392 = fcmp fast olt float %5390, 1.000000e+00
  %5393 = fcmp fast olt float %5391, 1.000000e+00
  %5394 = and i1 %5392, %5393
  %5395 = or i1 %5385, %5394
  br i1 %5395, label %5396, label %5693, !dx.controlflow.hints !94

; <label>:5396                                    ; preds = %5334
  %5397 = fmul fast float %5374, 5.000000e-01
  %5398 = fmul fast float %5373, 5.000000e-01
  %5399 = fadd fast float %5397, 5.000000e-01
  %5400 = fadd fast float %5398, 5.000000e-01
  %5401 = sitofp i32 %5340 to float
  %5402 = fsub fast float %5368, %5401
  %5403 = call float @dx.op.unary.f32(i32 27, float %5402)  ; Round_ni(value)
  %5404 = call float @dx.op.unary.f32(i32 22, float %5368)  ; Frc(value)
  %5405 = call float @dx.op.unary.f32(i32 22, float %5400)  ; Frc(value)
  %5406 = call float @dx.op.unary.f32(i32 22, float %5399)  ; Frc(value)
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5405, float %5406, float %5403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = extractvalue %dx.types.ResRet.f32 %5407, 3
  %5412 = fcmp fast ogt float %5404, 0.000000e+00
  br i1 %5412, label %5413, label %5434, !dx.controlflow.hints !95

; <label>:5413                                    ; preds = %5396
  %5414 = fadd fast float %5403, 1.000000e+00
  %5415 = call float @dx.op.unary.f32(i32 22, float %5377)  ; Frc(value)
  %5416 = call float @dx.op.unary.f32(i32 22, float %5378)  ; Frc(value)
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5415, float %5416, float %5414, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5421 = extractvalue %dx.types.ResRet.f32 %5417, 3
  %5422 = fsub fast float %5418, %5408
  %5423 = fsub fast float %5419, %5409
  %5424 = fsub fast float %5420, %5410
  %5425 = fsub fast float %5421, %5411
  %5426 = fmul fast float %5422, %5404
  %5427 = fmul fast float %5423, %5404
  %5428 = fmul fast float %5424, %5404
  %5429 = fmul fast float %5425, %5404
  %5430 = fadd fast float %5426, %5408
  %5431 = fadd fast float %5427, %5409
  %5432 = fadd fast float %5428, %5410
  %5433 = fadd fast float %5429, %5411
  br label %5434

; <label>:5434                                    ; preds = %5413, %5396
  %5435 = phi float [ %5430, %5413 ], [ %5408, %5396 ]
  %5436 = phi float [ %5431, %5413 ], [ %5409, %5396 ]
  %5437 = phi float [ %5432, %5413 ], [ %5410, %5396 ]
  %5438 = phi float [ %5433, %5413 ], [ %5411, %5396 ]
  %5439 = fadd fast float %5435, -5.000000e-01
  %5440 = fadd fast float %5437, -5.000000e-01
  %5441 = fmul fast float %5439, 0xBFD5555560000000
  %5442 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5440, float %5441)  ; FMad(a,b,c)
  %5443 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5436, float 0.000000e+00)  ; FMad(a,b,c)
  %5444 = fadd fast float %5443, %5438
  %5445 = fmul fast float %5439, -7.500000e-01
  %5446 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5440, float %5445)  ; FMad(a,b,c)
  %5447 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5436, float 0.000000e+00)  ; FMad(a,b,c)
  %5448 = fadd fast float %5447, %5438
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5455 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5456 = fsub fast float %5452, %5442
  %5457 = fsub fast float %5453, %5444
  %5458 = fsub fast float %5454, %5446
  %5459 = fsub fast float %5455, %5448
  %5460 = fmul fast float %5456, %5450
  %5461 = fmul fast float %5457, %5450
  %5462 = fmul fast float %5458, %5450
  %5463 = fmul fast float %5459, %5450
  %5464 = fadd fast float %5460, %5442
  %5465 = fadd fast float %5461, %5444
  %5466 = fadd fast float %5462, %5446
  %5467 = fadd fast float %5463, %5448
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = and i32 %5469, 536870911
  %5471 = uitofp i32 %5470 to float
  %5472 = fmul fast float %5471, %5318
  %5473 = fmul fast float %5471, %5322
  %5474 = fptoui float %5472 to i32
  %5475 = fptoui float %5473 to i32
  %5476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.i32 %5476, 0
  %5478 = and i32 %5477, 31
  %5479 = lshr i32 %5474, %5478
  %5480 = lshr i32 %5475, %5478
  %5481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.i32 %5481, 0
  %5483 = and i32 %5482, 31
  %5484 = shl i32 1, %5483
  %5485 = call i32 @dx.op.binary.i32(i32 40, i32 %5484, i32 4)  ; UMin(a,b)
  %5486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.i32 %5486, 0
  %5488 = extractvalue %dx.types.ResRet.i32 %5486, 1
  %5489 = icmp eq i32 %5485, 0
  br i1 %5489, label %5531, label %5490

; <label>:5490                                    ; preds = %5434
  br label %5491

; <label>:5491                                    ; preds = %5519, %5490
  %5492 = phi i32 [ %5522, %5519 ], [ 0, %5490 ]
  %5493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5494 = extractvalue %dx.types.ResRet.i32 %5493, 0
  %5495 = lshr i32 %5494, 16
  %5496 = and i32 %5495, 31
  %5497 = shl i32 %5480, %5496
  %5498 = add i32 %5497, %5479
  %5499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.i32 %5499, 0
  %5501 = and i32 %5500, 31
  %5502 = shl i32 %5498, %5501
  %5503 = add i32 %5502, %5492
  %5504 = shl i32 %5503, 2
  %5505 = add i32 %5504, 32
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = icmp slt i32 %5507, 0
  %5509 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5492
  %5510 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5492
  %5511 = bitcast float* %5509 to i32*
  %5512 = bitcast float* %5510 to i32*
  br i1 %5508, label %5513, label %5519

; <label>:5513                                    ; preds = %5491
  %5514 = and i32 %5507, 1073741823
  %5515 = add nuw nsw i32 %5514, 20
  %5516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5515, i32 undef)  ; BufferLoad(srv,index,wot)
  %5517 = extractvalue %dx.types.ResRet.i32 %5516, 0
  %5518 = extractvalue %dx.types.ResRet.i32 %5516, 1
  br label %5519

; <label>:5519                                    ; preds = %5513, %5491
  %5520 = phi i32 [ %5517, %5513 ], [ %5487, %5491 ]
  %5521 = phi i32 [ %5518, %5513 ], [ %5488, %5491 ]
  store i32 %5520, i32* %5511, align 4
  store i32 %5521, i32* %5512, align 4
  %5522 = add nuw i32 %5492, 1
  %5523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.i32 %5523, 2
  %5525 = icmp eq i32 %5524, 0
  %5526 = icmp ugt i32 %5507, -1073741825
  %5527 = and i1 %5526, %5525
  %5528 = icmp ult i32 %5522, %5485
  %5529 = and i1 %5527, %5528
  br i1 %5529, label %5491, label %5530

; <label>:5530                                    ; preds = %5519
  br label %5531

; <label>:5531                                    ; preds = %5530, %5434
  %5532 = phi i32 [ 0, %5434 ], [ %5522, %5530 ]
  %5533 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5534 = fptoui float %5533 to i32
  %5535 = icmp eq i32 %5534, 0
  br i1 %5535, label %5587, label %5536

; <label>:5536                                    ; preds = %5531
  br label %5537

; <label>:5537                                    ; preds = %5582, %5536
  %5538 = phi i32 [ %5583, %5582 ], [ %5532, %5536 ]
  %5539 = phi i32 [ %5584, %5582 ], [ 0, %5536 ]
  %5540 = lshr i32 %5539, 2
  %5541 = and i32 %5539, 3
  %5542 = add nuw nsw i32 %5540, 83
  %5543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5542)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.i32 %5543, 0
  %5545 = extractvalue %dx.types.CBufRet.i32 %5543, 1
  %5546 = extractvalue %dx.types.CBufRet.i32 %5543, 2
  %5547 = extractvalue %dx.types.CBufRet.i32 %5543, 3
  %5548 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5544, i32* %5548, align 4
  %5549 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5545, i32* %5549, align 4
  %5550 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5546, i32* %5550, align 4
  %5551 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5547, i32* %5551, align 4
  %5552 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5541
  %5553 = load i32, i32* %5552, align 4, !tbaa !96, !noalias !100
  %5554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5555 = extractvalue %dx.types.ResRet.i32 %5554, 0
  %5556 = lshr i32 %5555, 16
  %5557 = and i32 %5556, 31
  %5558 = shl i32 %5480, %5557
  %5559 = add i32 %5558, %5479
  %5560 = shl i32 %5559, 2
  %5561 = add i32 %5560, %5553
  %5562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5561, i32 undef)  ; BufferLoad(srv,index,wot)
  %5563 = extractvalue %dx.types.ResRet.i32 %5562, 0
  %5564 = icmp eq i32 %5563, 0
  br i1 %5564, label %5582, label %5565

; <label>:5565                                    ; preds = %5537
  %5566 = icmp slt i32 %5563, 0
  %5567 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5538
  %5568 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5538
  %5569 = bitcast float* %5567 to i32*
  %5570 = bitcast float* %5568 to i32*
  br i1 %5566, label %5571, label %5578

; <label>:5571                                    ; preds = %5565
  %5572 = and i32 %5563, 1073741823
  %5573 = add i32 %5553, 20
  %5574 = add i32 %5573, %5572
  %5575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5574, i32 undef)  ; BufferLoad(srv,index,wot)
  %5576 = extractvalue %dx.types.ResRet.i32 %5575, 0
  %5577 = extractvalue %dx.types.ResRet.i32 %5575, 1
  br label %5578

; <label>:5578                                    ; preds = %5571, %5565
  %5579 = phi i32 [ %5576, %5571 ], [ %5487, %5565 ]
  %5580 = phi i32 [ %5577, %5571 ], [ %5488, %5565 ]
  store i32 %5579, i32* %5569, align 4
  store i32 %5580, i32* %5570, align 4
  %5581 = add i32 %5538, 1
  br label %5582

; <label>:5582                                    ; preds = %5578, %5537
  %5583 = phi i32 [ %5538, %5537 ], [ %5581, %5578 ]
  %5584 = add nuw i32 %5539, 1
  %5585 = icmp eq i32 %5584, %5534
  br i1 %5585, label %5586, label %5537

; <label>:5586                                    ; preds = %5582
  br label %5587

; <label>:5587                                    ; preds = %5586, %5531
  %5588 = phi i32 [ %5532, %5531 ], [ %5583, %5586 ]
  %5589 = icmp eq i32 %5588, 1
  %5590 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5591 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5589, label %5592, label %5595

; <label>:5592                                    ; preds = %5587
  %5593 = load float, float* %5590, align 4
  %5594 = load float, float* %5591, align 4
  br label %5622

; <label>:5595                                    ; preds = %5587
  %5596 = load float, float* %5590, align 4
  %5597 = load float, float* %5591, align 4
  %5598 = fdiv fast float 1.000000e+00, %5597
  %5599 = fsub fast float %5596, %5598
  %5600 = icmp ugt i32 %5588, 1
  br i1 %5600, label %5601, label %5617

; <label>:5601                                    ; preds = %5595
  br label %5602

; <label>:5602                                    ; preds = %5602, %5601
  %5603 = phi float [ %5612, %5602 ], [ %5599, %5601 ]
  %5604 = phi float [ %5613, %5602 ], [ %5596, %5601 ]
  %5605 = phi i32 [ %5614, %5602 ], [ 1, %5601 ]
  %5606 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5605
  %5607 = load float, float* %5606, align 4
  %5608 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5605
  %5609 = load float, float* %5608, align 4
  %5610 = fdiv fast float 1.000000e+00, %5609
  %5611 = fsub fast float %5607, %5610
  %5612 = call float @dx.op.binary.f32(i32 36, float %5603, float %5611)  ; FMin(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5604, float %5607)  ; FMax(a,b)
  %5614 = add nuw i32 %5605, 1
  %5615 = icmp eq i32 %5614, %5588
  br i1 %5615, label %5616, label %5602

; <label>:5616                                    ; preds = %5602
  br label %5617

; <label>:5617                                    ; preds = %5616, %5595
  %5618 = phi float [ %5599, %5595 ], [ %5612, %5616 ]
  %5619 = phi float [ %5596, %5595 ], [ %5613, %5616 ]
  %5620 = fsub fast float %5619, %5618
  %5621 = fdiv fast float 1.000000e+00, %5620
  br label %5622

; <label>:5622                                    ; preds = %5617, %5592
  %5623 = phi float [ %5593, %5592 ], [ %5619, %5617 ]
  %5624 = phi float [ %5594, %5592 ], [ %5621, %5617 ]
  %5625 = fadd fast float %5326, %5623
  %5626 = fmul fast float %5625, %5624
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5464, %5464
  %5631 = fsub fast float %5465, %5630
  %5632 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5631)  ; FMax(a,b)
  %5633 = fdiv fast float 1.000000e+00, %5632
  %5634 = fmul fast float %5465, %5464
  %5635 = fsub fast float %5466, %5634
  %5636 = fsub fast float %5629, %5464
  %5637 = fmul fast float %5629, %5629
  %5638 = fsub fast float %5637, %5465
  %5639 = fmul fast float %5633, %5635
  %5640 = fmul fast float %5639, %5636
  %5641 = fsub fast float %5638, %5640
  %5642 = fmul fast float %5465, %5465
  %5643 = fsub fast float %5467, %5642
  %5644 = fmul fast float %5635, %5635
  %5645 = fmul fast float %5644, %5633
  %5646 = fsub fast float %5643, %5645
  %5647 = fdiv fast float %5641, %5646
  %5648 = fmul fast float %5647, %5635
  %5649 = fsub fast float %5636, %5648
  %5650 = fmul fast float %5649, %5633
  %5651 = fmul fast float %5650, %5464
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = fmul fast float %5647, %5465
  %5654 = fsub fast float %5652, %5653
  %5655 = fmul fast float %5650, %5650
  %5656 = fmul fast float %5647, 4.000000e+00
  %5657 = fmul fast float %5656, %5654
  %5658 = fsub fast float %5655, %5657
  %5659 = call float @dx.op.unary.f32(i32 24, float %5658)  ; Sqrt(value)
  %5660 = fcmp fast oge float %5650, 0.000000e+00
  %5661 = fsub fast float -0.000000e+00, %5659
  %5662 = select i1 %5660, float %5661, float %5659
  %5663 = fsub fast float %5662, %5650
  %5664 = fdiv fast float %5663, %5647
  %5665 = fdiv fast float %5654, %5663
  %5666 = fmul fast float %5664, 5.000000e-01
  %5667 = fmul fast float %5665, 2.000000e+00
  %5668 = select i1 %5660, float %5666, float %5667
  %5669 = select i1 %5660, float %5667, float %5666
  %5670 = call float @dx.op.binary.f32(i32 35, float %5668, float %5669)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 36, float %5668, float %5669)  ; FMin(a,b)
  %5672 = fcmp fast ogt float %5629, %5670
  %5673 = fsub fast float %5629, %5671
  %5674 = fsub fast float %5629, %5670
  %5675 = fsub fast float %5670, %5671
  %5676 = select i1 %5672, float %5674, float %5675
  %5677 = fmul float %5673, %5676
  %5678 = select i1 %5672, float %5671, float %5629
  %5679 = fcmp fast ogt float %5629, %5671
  %5680 = fmul fast float %5678, %5670
  %5681 = fadd fast float %5678, %5670
  %5682 = fmul fast float %5681, %5464
  %5683 = fadd fast float %5680, %5465
  %5684 = fsub fast float %5683, %5682
  %5685 = fdiv fast float %5684, %5677
  %5686 = select i1 %5679, float %5685, float 0.000000e+00
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = select i1 %5672, float %5687, float %5686
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5691 = fmul fast float %5690, %5689
  %5692 = fsub fast float 1.000000e+00, %5691
  br label %5693

; <label>:5693                                    ; preds = %5622, %5334, %5299, %5295, %5261
  %5694 = phi float [ 1.000000e+00, %5261 ], [ %5692, %5622 ], [ 1.000000e+00, %5299 ], [ 1.000000e+00, %5334 ], [ 1.000000e+00, %5295 ]
  %5695 = fcmp fast ogt float %5291, 0.000000e+00
  br i1 %5695, label %5696, label %5702, !dx.controlflow.hints !109

; <label>:5696                                    ; preds = %5693
  %5697 = fadd fast float %5204, %5178
  %5698 = call float @dx.op.binary.f32(i32 35, float %5697, float 0.000000e+00)  ; FMax(a,b)
  %5699 = fadd fast float %5698, 0x3F10000000000000
  %5700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5193, float %5194, float undef, float undef, i32 0, i32 0, i32 undef, float %5699)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  br label %5702

; <label>:5702                                    ; preds = %5696, %5693
  %5703 = phi float [ %5701, %5696 ], [ 1.000000e+00, %5693 ]
  %5704 = fcmp fast ogt float %5289, 0.000000e+00
  br i1 %5704, label %5705, label %5711, !dx.controlflow.hints !110

; <label>:5705                                    ; preds = %5702
  %5706 = fadd fast float %5234, %5178
  %5707 = call float @dx.op.binary.f32(i32 35, float %5706, float 0.000000e+00)  ; FMax(a,b)
  %5708 = fadd fast float %5707, 0x3F10000000000000
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float %5708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  br label %5711

; <label>:5711                                    ; preds = %5705, %5702
  %5712 = phi float [ %5710, %5705 ], [ 1.000000e+00, %5702 ]
  %5713 = fcmp fast ogt float %5288, 0.000000e+00
  br i1 %5713, label %5714, label %5721, !dx.controlflow.hints !111

; <label>:5714                                    ; preds = %5711
  %5715 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5716 = fadd fast float %5715, %5178
  %5717 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5718 = fadd fast float %5717, 0x3F10000000000000
  %5719 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5170, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float %5718)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 0
  br label %5721

; <label>:5721                                    ; preds = %5714, %5711
  %5722 = phi float [ %5720, %5714 ], [ 1.000000e+00, %5711 ]
  %5723 = fsub fast float %5703, %5694
  %5724 = fmul fast float %5723, %5232
  %5725 = fadd fast float %5724, %5694
  %5726 = fsub fast float %5712, %5725
  %5727 = fmul fast float %5726, %5262
  %5728 = fadd fast float %5727, %5725
  %5729 = fsub fast float %5722, %5728
  %5730 = fmul fast float %5729, %5288
  %5731 = fadd fast float %5730, %5728
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5734 = fcmp fast ogt float %5733, 0.000000e+00
  br i1 %5734, label %5735, label %5775, !dx.controlflow.hints !112

; <label>:5735                                    ; preds = %5721
  %5736 = fcmp fast ugt float %5733, 0.000000e+00
  br i1 %5736, label %5737, label %5772

; <label>:5737                                    ; preds = %5735
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = fadd fast float %5751, %5147
  %5755 = fadd fast float %5752, %5148
  %5756 = fadd fast float %5753, %5149
  %5757 = fmul fast float %5754, %5739
  %5758 = call float @dx.op.tertiary.f32(i32 46, float %5740, float %5755, float %5757)  ; FMad(a,b,c)
  %5759 = call float @dx.op.tertiary.f32(i32 46, float %5741, float %5756, float %5758)  ; FMad(a,b,c)
  %5760 = fadd fast float %5759, %5742
  %5761 = fmul fast float %5754, %5744
  %5762 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5755, float %5761)  ; FMad(a,b,c)
  %5763 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5756, float %5762)  ; FMad(a,b,c)
  %5764 = fadd fast float %5763, %5747
  %5765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5760, float %5764, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5766 = extractvalue %dx.types.ResRet.f32 %5765, 0
  %5767 = fmul fast float %5766, %5749
  %5768 = fadd fast float %5767, %5748
  %5769 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5770 = fmul fast float %5769, %5733
  %5771 = fsub fast float 1.000000e+00, %5770
  br label %5772

; <label>:5772                                    ; preds = %5737, %5735
  %5773 = phi float [ %5771, %5737 ], [ 1.000000e+00, %5735 ]
  %5774 = fmul fast float %5773, %5731
  br label %5775

; <label>:5775                                    ; preds = %5772, %5721, %5127
  %5776 = phi float [ 1.000000e+00, %5127 ], [ %5774, %5772 ], [ %5731, %5721 ]
  %5777 = call float @dx.op.binary.f32(i32 36, float %5776, float %5776)  ; FMin(a,b)
  %5778 = call float @dx.op.binary.f32(i32 36, float %5776, float %5777)  ; FMin(a,b)
  %5779 = fcmp fast ogt float %5778, 0.000000e+00
  br i1 %5779, label %5780, label %5940, !dx.controlflow.hints !113

; <label>:5780                                    ; preds = %5775
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5796 = fmul fast float %5782, %5147
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5783, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5784, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5785
  %5800 = fmul fast float %5787, %5147
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5788, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5789, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5790
  %5804 = fmul fast float %5792, %5147
  %5805 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5793, float %5804)  ; FMad(a,b,c)
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5794, float %5805)  ; FMad(a,b,c)
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5811 = fmul fast float %5810, %5799
  %5812 = fmul fast float %5810, %5803
  %5813 = fadd fast float %5811, %5808
  %5814 = fadd fast float %5812, %5809
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = fsub fast float %5813, %5816
  %5819 = fsub fast float %5814, %5817
  %5820 = fcmp fast olt float %5818, 0.000000e+00
  %5821 = fcmp fast olt float %5819, 0.000000e+00
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5827 = select i1 %5820, float %5823, float %5825
  %5828 = select i1 %5821, float %5824, float %5826
  %5829 = fmul fast float %5827, %5818
  %5830 = fmul fast float %5828, %5819
  %5831 = call float @dx.op.unary.f32(i32 6, float %5829)  ; FAbs(value)
  %5832 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5834 = call float @dx.op.binary.f32(i32 35, float %5831, float %5832)  ; FMax(a,b)
  %5835 = fsub fast float %5833, %5834
  %5836 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5837 = fcmp fast ogt float %5836, 0.000000e+00
  br i1 %5837, label %5838, label %5879, !dx.controlflow.hints !114

; <label>:5838                                    ; preds = %5780
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5813, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 1
  %5841 = fcmp fast ogt float %5840, 0.000000e+00
  br i1 %5841, label %5842, label %5874

; <label>:5842                                    ; preds = %5838
  %5843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5813, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.ResRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.ResRet.f32 %5843, 3
  %5848 = fsub fast float 1.000000e+00, %5795
  %5849 = fsub fast float %5848, %5806
  %5850 = fmul fast float %5849, 0x400921FB60000000
  %5851 = fadd fast float %5850, 0x3FF921FB60000000
  %5852 = call float @dx.op.unary.f32(i32 13, float %5851)  ; Sin(value)
  %5853 = fadd fast float %5852, -1.000000e+00
  %5854 = fmul fast float %5853, 0x3FD45F3060000000
  %5855 = fmul fast float %5849, 0x401921FB60000000
  %5856 = fadd fast float %5855, 0x400921FB60000000
  %5857 = call float @dx.op.unary.f32(i32 13, float %5856)  ; Sin(value)
  %5858 = fadd fast float %5857, 0x3E7777A5C0000000
  %5859 = fmul fast float %5858, 0x3FC45F3060000000
  %5860 = fmul fast float %5849, 0x4022D97C80000000
  %5861 = fadd fast float %5860, 0x4012D97C80000000
  %5862 = call float @dx.op.unary.f32(i32 13, float %5861)  ; Sin(value)
  %5863 = fadd fast float %5862, 1.000000e+00
  %5864 = fmul fast float %5863, 0x3FBB2995E0000000
  %5865 = fmul fast float %5849, 0x402921FB60000000
  %5866 = fadd fast float %5865, 0x401921FB60000000
  %5867 = call float @dx.op.unary.f32(i32 13, float %5866)  ; Sin(value)
  %5868 = fadd fast float %5867, 0xBE8777A5C0000000
  %5869 = fmul fast float %5868, 0x3FB45F3060000000
  %5870 = call float @dx.op.dot4.f32(i32 56, float %5844, float %5845, float %5846, float %5847, float %5854, float %5859, float %5864, float %5869)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5871 = fmul fast float %5870, 0xBFF7154760000000
  %5872 = call float @dx.op.unary.f32(i32 21, float %5871)  ; Exp(value)
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  br label %5874

; <label>:5874                                    ; preds = %5842, %5838
  %5875 = phi float [ %5873, %5842 ], [ 1.000000e+00, %5838 ]
  %5876 = fadd fast float %5875, -1.000000e+00
  %5877 = fmul fast float %5876, %5836
  %5878 = fadd fast float %5877, 1.000000e+00
  br label %5879

; <label>:5879                                    ; preds = %5874, %5780
  %5880 = phi float [ %5878, %5874 ], [ 1.000000e+00, %5780 ]
  %5881 = fmul fast float %5880, %5776
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = fadd fast float %5883, %158
  %5887 = fadd fast float %5884, %159
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5890 = fsub fast float -0.000000e+00, %5886
  %5891 = fsub fast float -0.000000e+00, %5887
  %5892 = fsub fast float %4911, %5885
  %5893 = fadd fast float %5892, %5889
  %5894 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5890, float %5891, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5128, float %5129, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = fdiv fast float 1.000000e+00, %5895
  %5897 = fmul fast float %5896, %5894
  %5898 = fmul fast float %5128, %5897
  %5899 = fmul fast float %5129, %5897
  %5900 = fadd fast float %5898, %5886
  %5901 = fadd fast float %5899, %5887
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = fsub fast float %5900, %5903
  %5906 = fsub fast float %5901, %5904
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5910 = fmul fast float %5905, %5908
  %5911 = fmul fast float %5906, %5909
  %5912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.i32 %5912, 3
  %5914 = icmp eq i32 %5913, 0
  br i1 %5914, label %5920, label %5915

; <label>:5915                                    ; preds = %5879
  %5916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5910, float %5911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.ResRet.f32 %5916, 2
  br label %5925

; <label>:5920                                    ; preds = %5879
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5910, float %5911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.ResRet.f32 %5921, 2
  br label %5925

; <label>:5925                                    ; preds = %5920, %5915
  %5926 = phi float [ %5917, %5915 ], [ %5922, %5920 ]
  %5927 = phi float [ %5918, %5915 ], [ %5923, %5920 ]
  %5928 = phi float [ %5919, %5915 ], [ %5924, %5920 ]
  %5929 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5930 = fmul fast float %5929, %5926
  %5931 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5932 = fsub fast float %5897, %5931
  %5933 = fsub fast float %5932, %5930
  %5934 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5933)  ; FMax(a,b)
  %5935 = fmul fast float %5934, %5927
  %5936 = call float @dx.op.binary.f32(i32 36, float %5928, float %5935)  ; FMin(a,b)
  %5937 = fmul fast float %5936, 0xBFF7154760000000
  %5938 = call float @dx.op.unary.f32(i32 21, float %5937)  ; Exp(value)
  %5939 = fmul fast float %5881, %5938
  br label %5940

; <label>:5940                                    ; preds = %5925, %5775
  %5941 = phi float [ %5939, %5925 ], [ %5776, %5775 ]
  %5942 = call float @dx.op.binary.f32(i32 36, float %5941, float %5941)  ; FMin(a,b)
  %5943 = call float @dx.op.binary.f32(i32 36, float %5941, float %5942)  ; FMin(a,b)
  %5944 = fcmp fast ogt float %5943, 0.000000e+00
  br i1 %5944, label %5945, label %6196, !dx.controlflow.hints !115

; <label>:5945                                    ; preds = %5940
  %5946 = fmul fast float %5941, %5139
  %5947 = fmul fast float %5941, %5140
  %5948 = fmul fast float %5941, %5141
  %5949 = fsub fast float %160, %4717
  %5950 = fcmp fast ogt float %5949, 0.000000e+00
  %5951 = fmul fast float %5128, 5.120000e+02
  %5952 = fmul fast float %5129, 5.120000e+02
  %5953 = fmul fast float %5130, 5.120000e+02
  %5954 = fadd fast float %5953, %160
  %5955 = fsub fast float %4717, %5954
  %5956 = fmul fast float %5955, 2.000000e+00
  %5957 = fadd fast float %5956, %5954
  %5958 = select i1 %5950, float %5957, float %5954
  %5959 = fsub fast float %5958, %160
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5959, float %5951, float %5952, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.unary.f32(i32 25, float %5960)  ; Rsqrt(value)
  %5962 = fmul fast float %5961, %5951
  %5963 = fmul fast float %5961, %5952
  %5964 = fmul fast float %5961, %5959
  %5965 = fsub fast float %4717, %160
  %5966 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5962, float %5963, float %5964)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = fdiv fast float 1.000000e+00, %5967
  %5969 = fmul fast float %5968, %5966
  %5970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5949, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = fcmp fast ogt float %5970, 0.000000e+00
  %5972 = fcmp fast olt float %5970, 0.000000e+00
  %5973 = zext i1 %5971 to i32
  %5974 = zext i1 %5972 to i32
  %5975 = sub nsw i32 %5973, %5974
  %5976 = sitofp i32 %5975 to float
  %5977 = fsub fast float %5958, %4717
  %5978 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5977, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5979 = fcmp fast ogt float %5978, 0.000000e+00
  %5980 = fcmp fast olt float %5978, 0.000000e+00
  %5981 = zext i1 %5979 to i32
  %5982 = zext i1 %5980 to i32
  %5983 = sub nsw i32 %5981, %5982
  %5984 = sitofp i32 %5983 to float
  %5985 = fcmp fast une float %5976, %5984
  br i1 %5985, label %5986, label %5996

; <label>:5986                                    ; preds = %5945
  %5987 = fmul fast float %5969, %5964
  %5988 = fmul fast float %5969, %5963
  %5989 = fmul fast float %5969, %5962
  %5990 = fmul fast float %5989, %5989
  %5991 = fmul fast float %5988, %5988
  %5992 = fadd fast float %5990, %5991
  %5993 = fmul fast float %5987, %5987
  %5994 = fadd fast float %5992, %5993
  %5995 = call float @dx.op.unary.f32(i32 24, float %5994)  ; Sqrt(value)
  br label %6006

; <label>:5996                                    ; preds = %5945
  %5997 = icmp slt i32 %5975, 0
  br i1 %5997, label %5998, label %6006

; <label>:5998                                    ; preds = %5996
  %5999 = fsub fast float %160, %5958
  %6000 = fmul fast float %5951, %5951
  %6001 = fmul fast float %5952, %5952
  %6002 = fadd fast float %6000, %6001
  %6003 = fmul fast float %5999, %5999
  %6004 = fadd fast float %6002, %6003
  %6005 = call float @dx.op.unary.f32(i32 24, float %6004)  ; Sqrt(value)
  br label %6006

; <label>:6006                                    ; preds = %5998, %5996, %5986
  %6007 = phi float [ %5995, %5986 ], [ %6005, %5998 ], [ 0.000000e+00, %5996 ]
  %6008 = fsub fast float -0.000000e+00, %6007
  %6009 = select i1 %5950, float -0.000000e+00, float %6008
  %6010 = fmul fast float %4718, 0x3FF7154760000000
  %6011 = fmul fast float %6010, %6009
  %6012 = fmul fast float %4719, 0x3FF7154760000000
  %6013 = fmul fast float %6012, %6009
  %6014 = fmul fast float %4720, 0x3FF7154760000000
  %6015 = fmul fast float %6014, %6009
  %6016 = call float @dx.op.unary.f32(i32 21, float %6011)  ; Exp(value)
  %6017 = call float @dx.op.unary.f32(i32 21, float %6013)  ; Exp(value)
  %6018 = call float @dx.op.unary.f32(i32 21, float %6015)  ; Exp(value)
  %6019 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6020 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6022 = fmul fast float %5946, %6019
  %6023 = fmul fast float %5947, %6020
  %6024 = fmul fast float %5948, %6021
  %6025 = fsub fast float %5128, %178
  %6026 = fsub fast float %5129, %179
  %6027 = fsub fast float %5130, %180
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = call float @dx.op.unary.f32(i32 25, float %6028)  ; Rsqrt(value)
  %6030 = fmul fast float %6029, %6025
  %6031 = fmul fast float %6029, %6026
  %6032 = fmul fast float %6029, %6027
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6035 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6036 = fmul fast float %6035, %6035
  %6037 = fmul fast float %6036, %4927
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = fmul fast float %6038, %6035
  %6040 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = fmul fast float %6040, %6040
  %6042 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6043 = fsub fast float 1.000000e+00, %4909
  %6044 = call float @dx.op.binary.f32(i32 35, float %6043, float 0x3F847AE140000000)  ; FMax(a,b)
  %6045 = fmul fast float %6044, %6044
  %6046 = fmul fast float %6045, %6045
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = fmul fast float %4914, %4914
  %6049 = fmul fast float %6048, %6047
  %6050 = fadd fast float %6049, %6046
  %6051 = bitcast float %6050 to i32
  %6052 = ashr i32 %6051, 1
  %6053 = add nsw i32 %6052, 532487669
  %6054 = bitcast i32 %6053 to float
  %6055 = fadd fast float %6054, %4914
  %6056 = fmul fast float %6046, %6041
  %6057 = fsub fast float 1.000000e+00, %6041
  %6058 = fadd fast float %6057, %6056
  %6059 = fmul fast float %6042, %6042
  %6060 = fmul fast float %6059, %6047
  %6061 = fadd fast float %6060, %6046
  %6062 = bitcast float %6061 to i32
  %6063 = ashr i32 %6062, 1
  %6064 = add nsw i32 %6063, 532487669
  %6065 = bitcast i32 %6064 to float
  %6066 = fadd fast float %6065, %6042
  %6067 = fmul fast float %6058, %6058
  %6068 = fmul fast float %6067, %6055
  %6069 = fmul fast float %6068, %6066
  %6070 = fdiv fast float 0x3FF0A00000000000, %6069
  %6071 = fmul fast float %6070, %6046
  %6072 = call float @dx.op.unary.f32(i32 6, float %6034)  ; FAbs(value)
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = bitcast float %6073 to i32
  %6075 = sitofp i32 %6074 to float
  %6076 = fmul fast float %6075, 5.000000e+00
  %6077 = fadd fast float %6076, 0xC1EFBF8940000000
  %6078 = fptosi float %6077 to i32
  %6079 = bitcast i32 %6078 to float
  %6080 = fsub fast float 1.000000e+00, %4906
  %6081 = fsub fast float 1.000000e+00, %4907
  %6082 = fsub fast float 1.000000e+00, %4912
  %6083 = fmul fast float %6079, %6080
  %6084 = fmul fast float %6079, %6081
  %6085 = fmul fast float %6079, %6082
  %6086 = fadd fast float %6083, %4906
  %6087 = fadd fast float %6084, %4907
  %6088 = fadd fast float %6085, %4912
  br i1 %5039, label %6089, label %6112

; <label>:6089                                    ; preds = %6006
  %6090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.ResRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.ResRet.f32 %6090, 2
  %6094 = fadd fast float %6091, -5.000000e-01
  %6095 = fadd fast float %6092, -5.000000e-01
  %6096 = fadd fast float %6093, -5.000000e-01
  %6097 = fmul fast float %4906, 4.000000e+00
  %6098 = fmul fast float %6097, %6080
  %6099 = fmul fast float %6098, %6094
  %6100 = fmul fast float %4907, 4.000000e+00
  %6101 = fmul fast float %6100, %6081
  %6102 = fmul fast float %6101, %6095
  %6103 = fmul fast float %4912, 4.000000e+00
  %6104 = fmul fast float %6103, %6082
  %6105 = fmul fast float %6104, %6096
  %6106 = fadd fast float %6099, %6086
  %6107 = fadd fast float %6102, %6087
  %6108 = fadd fast float %6105, %6088
  %6109 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6110 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6111 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  br label %6112

; <label>:6112                                    ; preds = %6089, %6006
  %6113 = phi float [ %6109, %6089 ], [ %6086, %6006 ]
  %6114 = phi float [ %6110, %6089 ], [ %6087, %6006 ]
  %6115 = phi float [ %6111, %6089 ], [ %6088, %6006 ]
  %6116 = fmul fast float %6033, 9.843750e-01
  %6117 = fadd fast float %6116, 7.812500e-03
  %6118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6117, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6119 = extractvalue %dx.types.ResRet.f32 %6118, 2
  %6120 = extractvalue %dx.types.ResRet.f32 %6118, 3
  %6121 = fmul fast float %6119, %4906
  %6122 = fmul fast float %6119, %4907
  %6123 = fmul fast float %6119, %4912
  %6124 = fadd fast float %6121, %6120
  %6125 = fadd fast float %6122, %6120
  %6126 = fadd fast float %6123, %6120
  br i1 %5039, label %6127, label %6150

; <label>:6127                                    ; preds = %6112
  %6128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.ResRet.f32 %6128, 2
  %6132 = fadd fast float %6129, -5.000000e-01
  %6133 = fadd fast float %6130, -5.000000e-01
  %6134 = fadd fast float %6131, -5.000000e-01
  %6135 = fmul fast float %4906, 4.000000e+00
  %6136 = fmul fast float %6135, %6080
  %6137 = fmul fast float %6136, %6132
  %6138 = fmul fast float %4907, 4.000000e+00
  %6139 = fmul fast float %6138, %6081
  %6140 = fmul fast float %6139, %6133
  %6141 = fmul fast float %4912, 4.000000e+00
  %6142 = fmul fast float %6141, %6082
  %6143 = fmul fast float %6142, %6134
  %6144 = fadd fast float %6137, %6124
  %6145 = fadd fast float %6140, %6125
  %6146 = fadd fast float %6143, %6126
  %6147 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6148 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6149 = call float @dx.op.unary.f32(i32 7, float %6146)  ; Saturate(value)
  br label %6150

; <label>:6150                                    ; preds = %6127, %6112
  %6151 = phi float [ %6147, %6127 ], [ %6124, %6112 ]
  %6152 = phi float [ %6148, %6127 ], [ %6125, %6112 ]
  %6153 = phi float [ %6149, %6127 ], [ %6126, %6112 ]
  %6154 = call float @dx.op.binary.f32(i32 35, float %6152, float %6153)  ; FMax(a,b)
  %6155 = call float @dx.op.binary.f32(i32 35, float %6151, float %6154)  ; FMax(a,b)
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = fmul fast float %6113, %6071
  %6158 = fmul fast float %6114, %6071
  %6159 = fmul fast float %6115, %6071
  %6160 = fsub fast float 1.000000e+00, %6034
  %6161 = bitcast float %6160 to i32
  %6162 = sitofp i32 %6161 to float
  %6163 = fmul fast float %6162, 5.000000e+00
  %6164 = fadd fast float %6163, 0xC1EFBF8940000000
  %6165 = fptosi float %6164 to i32
  %6166 = bitcast i32 %6165 to float
  %6167 = fmul fast float %6166, %4287
  %6168 = fmul fast float %6156, %6167
  %6169 = fmul fast float %6168, %5089
  %6170 = fmul fast float %6168, %5090
  %6171 = fmul fast float %6168, %5091
  %6172 = fadd fast float %6169, %6157
  %6173 = fadd fast float %6170, %6158
  %6174 = fadd fast float %6171, %6159
  %6175 = fmul fast float %6039, %6022
  %6176 = fmul fast float %6175, %6156
  %6177 = fmul fast float %6039, %6023
  %6178 = fmul fast float %6177, %6156
  %6179 = fmul fast float %6039, %6024
  %6180 = fmul fast float %6179, %6156
  %6181 = fmul fast float %6175, %6172
  %6182 = fmul fast float %6177, %6173
  %6183 = fmul fast float %6179, %6174
  %6184 = fadd fast float %6176, %5073
  %6185 = fmul fast float %6184, %4320
  %6186 = fadd fast float %6178, %5074
  %6187 = fmul fast float %6186, %4320
  %6188 = fadd fast float %6180, %5075
  %6189 = fmul fast float %6188, %4320
  %6190 = fadd fast float %6181, %5116
  %6191 = fmul fast float %6190, %4320
  %6192 = fadd fast float %6182, %5119
  %6193 = fmul fast float %6192, %4320
  %6194 = fadd fast float %6183, %5122
  %6195 = fmul fast float %6194, %4320
  br label %6196

; <label>:6196                                    ; preds = %6150, %5940, %5066
  %6197 = phi float [ %5117, %5066 ], [ %5117, %5940 ], [ %6191, %6150 ]
  %6198 = phi float [ %5120, %5066 ], [ %5120, %5940 ], [ %6193, %6150 ]
  %6199 = phi float [ %5123, %5066 ], [ %5123, %5940 ], [ %6195, %6150 ]
  %6200 = phi float [ %5112, %5066 ], [ %5112, %5940 ], [ %6185, %6150 ]
  %6201 = phi float [ %5113, %5066 ], [ %5113, %5940 ], [ %6187, %6150 ]
  %6202 = phi float [ %5114, %5066 ], [ %5114, %5940 ], [ %6189, %6150 ]
  %6203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.i32 %6203, 0
  %6205 = icmp eq i32 %6204, 0
  br i1 %6205, label %6826, label %6206

; <label>:6206                                    ; preds = %6196
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6210 = fmul fast float %6208, %95
  %6211 = fmul fast float %6209, %96
  %6212 = fptoui float %6210 to i32
  %6213 = fptoui float %6211 to i32
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6217 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6218 = fadd fast float %86, -4.000000e+00
  %6219 = call float @dx.op.binary.f32(i32 35, float %6218, float 0.000000e+00)  ; FMax(a,b)
  %6220 = fadd fast float %6219, %6215
  %6221 = fmul fast float %6220, %6216
  %6222 = call float @dx.op.unary.f32(i32 23, float %6221)  ; Log(value)
  %6223 = fmul fast float %6222, %6217
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6226 = fmul fast float %6223, %6225
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.i32 %6228, 1
  %6230 = add i32 %6229, -1
  %6231 = uitofp i32 %6229 to float
  %6232 = fmul fast float %6231, %6227
  %6233 = fptoui float %6232 to i32
  %6234 = call i32 @dx.op.binary.i32(i32 40, i32 %6233, i32 %6230)  ; UMin(a,b)
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 2
  %6237 = extractvalue %dx.types.CBufRet.i32 %6235, 3
  %6238 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6213, i32 %6236, i32 %6212)  ; UMad(a,b,c)
  %6239 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6234, i32 %6237, i32 %6238)  ; UMad(a,b,c)
  %6240 = add nsw i32 %6204, -1
  %6241 = call i32 @dx.op.binary.i32(i32 37, i32 %6240, i32 0)  ; IMax(a,b)
  %6242 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6243 = fptoui float %6242 to i32
  %6244 = lshr i32 %6243, 5
  %6245 = call i32 @dx.op.binary.i32(i32 40, i32 %6244, i32 8191)  ; UMin(a,b)
  %6246 = shl i32 %6245, 2
  %6247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6246, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.i32 %6247, 0
  %6249 = lshr i32 %6248, 16
  %6250 = and i32 %6248, 65535
  %6251 = lshr i32 %6248, 21
  %6252 = lshr i32 %6250, 5
  %6253 = call i32 @dx.op.binary.i32(i32 40, i32 %6252, i32 %6241)  ; UMin(a,b)
  %6254 = icmp ugt i32 %6251, %6253
  br i1 %6254, label %6826, label %6255

; <label>:6255                                    ; preds = %6206
  br label %6256

; <label>:6256                                    ; preds = %6816, %6255
  %6257 = phi i32 [ %6823, %6816 ], [ %6251, %6255 ]
  %6258 = phi float [ %6817, %6816 ], [ %6197, %6255 ]
  %6259 = phi float [ %6818, %6816 ], [ %6198, %6255 ]
  %6260 = phi float [ %6819, %6816 ], [ %6199, %6255 ]
  %6261 = phi float [ %6820, %6816 ], [ %6200, %6255 ]
  %6262 = phi float [ %6821, %6816 ], [ %6201, %6255 ]
  %6263 = phi float [ %6822, %6816 ], [ %6202, %6255 ]
  %6264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.i32 %6264, 0
  %6266 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6239, i32 %6265, i32 %6257)  ; UMad(a,b,c)
  %6267 = shl i32 %6266, 2
  %6268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6267, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.i32 %6268, 0
  %6270 = shl i32 %6257, 5
  %6271 = sub nsw i32 %6249, %6270
  %6272 = call i32 @dx.op.binary.i32(i32 37, i32 %6271, i32 0)  ; IMax(a,b)
  %6273 = call i32 @dx.op.binary.i32(i32 38, i32 %6272, i32 31)  ; IMin(a,b)
  %6274 = sub nsw i32 1, %6249
  %6275 = add nsw i32 %6274, %6250
  %6276 = call i32 @dx.op.binary.i32(i32 37, i32 %6275, i32 0)  ; IMax(a,b)
  %6277 = call i32 @dx.op.binary.i32(i32 38, i32 %6276, i32 32)  ; IMin(a,b)
  %6278 = and i32 %6277, 31
  %6279 = shl i32 -1, %6278
  %6280 = xor i32 %6279, -1
  %6281 = and i32 %6273, 31
  %6282 = shl i32 %6280, %6281
  %6283 = icmp eq i32 %6277, 32
  %6284 = select i1 %6283, i32 -1, i32 %6282
  %6285 = and i32 %6284, %6269
  %6286 = icmp eq i32 %6285, 0
  br i1 %6286, label %6816, label %6287

; <label>:6287                                    ; preds = %6256
  br label %6288

; <label>:6288                                    ; preds = %6422, %6287
  %6289 = phi i32 [ %6300, %6422 ], [ %6285, %6287 ]
  %6290 = phi float [ %6423, %6422 ], [ %6258, %6287 ]
  %6291 = phi float [ %6424, %6422 ], [ %6259, %6287 ]
  %6292 = phi float [ %6425, %6422 ], [ %6260, %6287 ]
  %6293 = phi float [ %6426, %6422 ], [ %6261, %6287 ]
  %6294 = phi float [ %6427, %6422 ], [ %6262, %6287 ]
  %6295 = phi float [ %6428, %6422 ], [ %6263, %6287 ]
  %6296 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6289)  ; FirstbitLo(value)
  %6297 = add i32 %6296, %6270
  %6298 = and i32 %6296, 31
  %6299 = shl i32 1, %6298
  %6300 = xor i32 %6299, %6289
  %6301 = mul i32 %6297, 112
  %6302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6301, i32 undef)  ; BufferLoad(srv,index,wot)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6306 = or i32 %6301, 12
  %6307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = add i32 %6301, 16
  %6310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6309, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.ResRet.f32 %6310, 2
  %6314 = add i32 %6301, 28
  %6315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.i32 %6315, 0
  %6317 = add i32 %6301, 44
  %6318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6317, i32 undef)  ; BufferLoad(srv,index,wot)
  %6319 = extractvalue %dx.types.ResRet.f32 %6318, 0
  %6320 = add i32 %6301, 48
  %6321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6320, i32 undef)  ; BufferLoad(srv,index,wot)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.ResRet.f32 %6321, 2
  %6325 = extractvalue %dx.types.ResRet.f32 %6321, 3
  %6326 = add i32 %6301, 64
  %6327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6326, i32 undef)  ; BufferLoad(srv,index,wot)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = extractvalue %dx.types.ResRet.f32 %6327, 3
  %6332 = add i32 %6301, 80
  %6333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6332, i32 undef)  ; BufferLoad(srv,index,wot)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6336 = add i32 %6301, 92
  %6337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6336, i32 undef)  ; BufferLoad(srv,index,wot)
  %6338 = extractvalue %dx.types.ResRet.i32 %6337, 0
  %6339 = call float @dx.op.dot3.f32(i32 55, float %6303, float %6304, float %6305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = select i1 %252, float %6334, float %6303
  %6341 = select i1 %252, float %6339, float %6304
  %6342 = select i1 %252, float %6335, float %6305
  %6343 = and i32 %6338, 65535
  %6344 = uitofp i32 %6343 to float
  %6345 = lshr i32 %6338, 16
  %6346 = uitofp i32 %6345 to float
  %6347 = and i32 %6316, 65535
  %6348 = and i32 %6316, 50331648
  %6349 = icmp eq i32 %6348, 33554432
  %6350 = fsub fast float %6322, %158
  %6351 = fsub fast float %6323, %159
  %6352 = fsub fast float %6324, %160
  %6353 = call float @dx.op.dot3.f32(i32 55, float %6350, float %6351, float %6352, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = call float @dx.op.unary.f32(i32 24, float %6353)  ; Sqrt(value)
  %6355 = fdiv fast float 1.000000e+00, %6354
  %6356 = fmul fast float %6355, %6350
  %6357 = fmul fast float %6355, %6351
  %6358 = fmul fast float %6355, %6352
  %6359 = fadd fast float %6354, %6308
  %6360 = fdiv fast float 1.000000e+00, %6359
  %6361 = fmul float %6319, %6360
  %6362 = fmul float %6361, %6361
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  br i1 %6349, label %6364, label %6385

; <label>:6364                                    ; preds = %6288
  %6365 = fmul fast float %6330, %6311
  %6366 = fmul fast float %6330, %6312
  %6367 = fmul fast float %6330, %6313
  %6368 = fadd fast float %6350, %6365
  %6369 = fadd fast float %6351, %6366
  %6370 = fadd fast float %6352, %6367
  %6371 = call float @dx.op.dot3.f32(i32 55, float %6368, float %6369, float %6370, float %6368, float %6369, float %6370)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = call float @dx.op.unary.f32(i32 25, float %6371)  ; Rsqrt(value)
  %6373 = fmul fast float %6372, %6368
  %6374 = fmul fast float %6372, %6369
  %6375 = fmul fast float %6372, %6370
  %6376 = fsub fast float %158, %6322
  %6377 = fsub fast float %159, %6323
  %6378 = fsub fast float %160, %6324
  %6379 = fsub fast float -0.000000e+00, %6376
  %6380 = fsub fast float -0.000000e+00, %6377
  %6381 = fsub fast float -0.000000e+00, %6378
  %6382 = call float @dx.op.dot3.f32(i32 55, float %6379, float %6380, float %6381, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = fcmp fast ogt float %6382, 0.000000e+00
  %6384 = uitofp i1 %6383 to float
  br label %6385

; <label>:6385                                    ; preds = %6364, %6288
  %6386 = phi float [ %6384, %6364 ], [ 1.000000e+00, %6288 ]
  %6387 = phi float [ %6373, %6364 ], [ %6356, %6288 ]
  %6388 = phi float [ %6374, %6364 ], [ %6357, %6288 ]
  %6389 = phi float [ %6375, %6364 ], [ %6358, %6288 ]
  %6390 = call float @dx.op.dot3.f32(i32 55, float %6311, float %6312, float %6313, float %6387, float %6388, float %6389)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = fmul fast float %6390, %6390
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = fsub fast float 1.000000e+00, %6392
  %6394 = fmul fast float %6393, 5.000000e-01
  %6395 = fcmp fast ogt float %6390, 0.000000e+00
  %6396 = fsub fast float 1.000000e+00, %6394
  %6397 = select i1 %6395, float %6394, float %6396
  %6398 = fmul fast float %6397, %6346
  %6399 = fadd fast float %6398, %6344
  %6400 = fmul fast float %6399, 0x3EF0001000000000
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6400, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = fmul fast float %6390, %6328
  %6404 = fadd fast float %6403, %6329
  %6405 = call float @dx.op.unary.f32(i32 7, float %6404)  ; Saturate(value)
  %6406 = select i1 %6349, float 1.000000e+00, float %6405
  %6407 = select i1 %6349, float %6405, float 1.000000e+00
  %6408 = fmul fast float %6354, %6325
  %6409 = fsub fast float 1.000000e+00, %6408
  %6410 = fmul fast float %6409, %6331
  %6411 = call float @dx.op.unary.f32(i32 7, float %6410)  ; Saturate(value)
  %6412 = fmul fast float %6411, %6407
  %6413 = fmul fast float %6412, 2.000000e+00
  %6414 = fsub fast float 3.000000e+00, %6413
  %6415 = fmul fast float %6402, %6386
  %6416 = fmul fast float %6412, %6412
  %6417 = fmul fast float %6416, %6415
  %6418 = fmul fast float %6417, %6414
  %6419 = call float @dx.op.binary.f32(i32 36, float %6418, float %6418)  ; FMin(a,b)
  %6420 = call float @dx.op.binary.f32(i32 36, float %6418, float %6419)  ; FMin(a,b)
  %6421 = fcmp fast ogt float %6420, 0.000000e+00
  br i1 %6421, label %6430, label %6422, !dx.controlflow.hints !116

; <label>:6422                                    ; preds = %6772, %6530, %6385
  %6423 = phi float [ %6290, %6530 ], [ %6290, %6385 ], [ %6812, %6772 ]
  %6424 = phi float [ %6291, %6530 ], [ %6291, %6385 ], [ %6813, %6772 ]
  %6425 = phi float [ %6292, %6530 ], [ %6292, %6385 ], [ %6814, %6772 ]
  %6426 = phi float [ %6293, %6530 ], [ %6293, %6385 ], [ %6806, %6772 ]
  %6427 = phi float [ %6294, %6530 ], [ %6294, %6385 ], [ %6807, %6772 ]
  %6428 = phi float [ %6295, %6530 ], [ %6295, %6385 ], [ %6808, %6772 ]
  %6429 = icmp eq i32 %6289, %6299
  br i1 %6429, label %6815, label %6288

; <label>:6430                                    ; preds = %6385
  %6431 = icmp eq i32 %6347, 255
  br i1 %6431, label %6530, label %6432, !dx.controlflow.hints !117

; <label>:6432                                    ; preds = %6430
  %6433 = mul nuw nsw i32 %6347, 176
  %6434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6433, i32 undef)  ; BufferLoad(srv,index,wot)
  %6435 = extractvalue %dx.types.ResRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.ResRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.ResRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.ResRet.f32 %6434, 3
  %6439 = add nuw nsw i32 %6433, 16
  %6440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6439, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.ResRet.f32 %6440, 1
  %6443 = add nuw nsw i32 %6433, 32
  %6444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6443, i32 undef)  ; BufferLoad(srv,index,wot)
  %6445 = extractvalue %dx.types.ResRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.ResRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.ResRet.f32 %6444, 2
  %6448 = add nuw nsw i32 %6433, 48
  %6449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.ResRet.f32 %6449, 2
  %6453 = extractvalue %dx.types.ResRet.f32 %6449, 3
  %6454 = add nuw nsw i32 %6433, 64
  %6455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6454, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.ResRet.f32 %6455, 1
  %6458 = extractvalue %dx.types.ResRet.f32 %6455, 2
  %6459 = extractvalue %dx.types.ResRet.f32 %6455, 3
  %6460 = add nuw nsw i32 %6433, 80
  %6461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6460, i32 undef)  ; BufferLoad(srv,index,wot)
  %6462 = extractvalue %dx.types.ResRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.ResRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.ResRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.ResRet.f32 %6461, 3
  %6466 = add nuw nsw i32 %6433, 96
  %6467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.ResRet.f32 %6467, 2
  %6471 = extractvalue %dx.types.ResRet.f32 %6467, 3
  %6472 = bitcast float %6442 to i32
  %6473 = fmul fast float %6447, %102
  %6474 = fmul fast float %6447, %103
  %6475 = fmul fast float %6447, %104
  %6476 = fadd fast float %6473, %158
  %6477 = fadd fast float %6474, %159
  %6478 = fadd fast float %6475, %160
  %6479 = fmul fast float %6476, %6450
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %6477, float %6456, float %6479)  ; FMad(a,b,c)
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6462, float %6480)  ; FMad(a,b,c)
  %6482 = fadd fast float %6481, %6468
  %6483 = fmul fast float %6476, %6451
  %6484 = call float @dx.op.tertiary.f32(i32 46, float %6477, float %6457, float %6483)  ; FMad(a,b,c)
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6463, float %6484)  ; FMad(a,b,c)
  %6486 = fadd fast float %6485, %6469
  %6487 = fmul fast float %6476, %6452
  %6488 = call float @dx.op.tertiary.f32(i32 46, float %6477, float %6458, float %6487)  ; FMad(a,b,c)
  %6489 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6464, float %6488)  ; FMad(a,b,c)
  %6490 = fadd fast float %6489, %6470
  %6491 = fmul fast float %6476, %6453
  %6492 = call float @dx.op.tertiary.f32(i32 46, float %6477, float %6459, float %6491)  ; FMad(a,b,c)
  %6493 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6465, float %6492)  ; FMad(a,b,c)
  %6494 = fadd fast float %6493, %6471
  %6495 = fdiv fast float %6482, %6494
  %6496 = fdiv fast float %6486, %6494
  %6497 = fdiv fast float %6490, %6494
  %6498 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6497)  ; FMax(a,b)
  %6499 = fmul fast float %263, 0x401921FB60000000
  %6500 = call float @dx.op.unary.f32(i32 13, float %6499)  ; Sin(value)
  %6501 = call float @dx.op.unary.f32(i32 12, float %6499)  ; Cos(value)
  %6502 = fsub fast float -0.000000e+00, %6500
  %6503 = fmul fast float %6437, 5.000000e-01
  %6504 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6505 = call float @dx.op.unary.f32(i32 22, float %6504)  ; Frc(value)
  %6506 = fmul fast float %6505, 0x404A7DD040000000
  %6507 = call float @dx.op.unary.f32(i32 22, float %6506)  ; Frc(value)
  %6508 = fmul fast float %6507, %6446
  %6509 = fadd fast float %6508, %6503
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %6509, float %6502, float 0.000000e+00)  ; FMad(a,b,c)
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %6509, float %6501, float 0.000000e+00)  ; FMad(a,b,c)
  %6512 = fadd fast float %6510, %6495
  %6513 = fadd fast float %6511, %6496
  %6514 = fmul fast float %6512, %6441
  %6515 = fmul fast float %6513, %6441
  %6516 = call float @dx.op.binary.f32(i32 35, float %6514, float %6437)  ; FMax(a,b)
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6437)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6516, float %6438)  ; FMin(a,b)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6517, float %6438)  ; FMin(a,b)
  %6520 = fadd fast float %6518, %6435
  %6521 = fadd fast float %6519, %6436
  %6522 = uitofp i32 %6472 to float
  %6523 = fadd fast float %6498, %6445
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6520, float %6521, float %6522, float undef, i32 0, i32 0, i32 undef, float %6523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  %6526 = fadd fast float %6525, -1.000000e+00
  %6527 = fmul fast float %6526, %6406
  %6528 = fadd fast float %6527, 1.000000e+00
  %6529 = fmul fast float %6528, %6418
  br label %6530

; <label>:6530                                    ; preds = %6432, %6430
  %6531 = phi float [ %6529, %6432 ], [ %6418, %6430 ]
  %6532 = call float @dx.op.binary.f32(i32 36, float %6531, float %6531)  ; FMin(a,b)
  %6533 = call float @dx.op.binary.f32(i32 36, float %6531, float %6532)  ; FMin(a,b)
  %6534 = fcmp fast ogt float %6533, 0.000000e+00
  br i1 %6534, label %6535, label %6422, !dx.controlflow.hints !118

; <label>:6535                                    ; preds = %6530
  %6536 = fmul fast float %6531, %6340
  %6537 = fmul fast float %6531, %6341
  %6538 = fmul fast float %6531, %6342
  %6539 = fsub fast float %6324, %4717
  %6540 = fcmp fast ogt float %6539, 0.000000e+00
  %6541 = fsub fast float %160, %4717
  %6542 = fcmp fast ogt float %6541, 0.000000e+00
  %6543 = xor i1 %6542, %6540
  %6544 = fsub fast float %4717, %6324
  %6545 = fmul fast float %6544, 2.000000e+00
  %6546 = fadd fast float %6545, %6324
  %6547 = select i1 %6543, float %6324, float %6546
  %6548 = fsub fast float %6547, %160
  %6549 = call float @dx.op.dot3.f32(i32 55, float %6350, float %6351, float %6548, float %6350, float %6351, float %6548)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = call float @dx.op.unary.f32(i32 25, float %6549)  ; Rsqrt(value)
  %6551 = fmul fast float %6550, %6350
  %6552 = fmul fast float %6550, %6351
  %6553 = fmul fast float %6550, %6548
  %6554 = fsub fast float %4717, %160
  %6555 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6554)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6551, float %6552, float %6553)  ; Dot3(ax,ay,az,bx,by,bz)
  %6557 = fdiv fast float 1.000000e+00, %6556
  %6558 = fmul fast float %6557, %6555
  %6559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6541, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = fcmp fast ogt float %6559, 0.000000e+00
  %6561 = fcmp fast olt float %6559, 0.000000e+00
  %6562 = zext i1 %6560 to i32
  %6563 = zext i1 %6561 to i32
  %6564 = sub nsw i32 %6562, %6563
  %6565 = sitofp i32 %6564 to float
  %6566 = fsub fast float %6547, %4717
  %6567 = call float @dx.op.dot3.f32(i32 55, float %6350, float %6351, float %6566, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = fcmp fast ogt float %6567, 0.000000e+00
  %6569 = fcmp fast olt float %6567, 0.000000e+00
  %6570 = zext i1 %6568 to i32
  %6571 = zext i1 %6569 to i32
  %6572 = sub nsw i32 %6570, %6571
  %6573 = sitofp i32 %6572 to float
  %6574 = fcmp fast une float %6565, %6573
  br i1 %6574, label %6575, label %6585

; <label>:6575                                    ; preds = %6535
  %6576 = fmul fast float %6558, %6553
  %6577 = fmul fast float %6558, %6552
  %6578 = fmul fast float %6558, %6551
  %6579 = fmul fast float %6578, %6578
  %6580 = fmul fast float %6577, %6577
  %6581 = fadd fast float %6579, %6580
  %6582 = fmul fast float %6576, %6576
  %6583 = fadd fast float %6581, %6582
  %6584 = call float @dx.op.unary.f32(i32 24, float %6583)  ; Sqrt(value)
  br label %6597

; <label>:6585                                    ; preds = %6535
  %6586 = icmp slt i32 %6564, 0
  br i1 %6586, label %6587, label %6597

; <label>:6587                                    ; preds = %6585
  %6588 = fsub fast float %158, %6322
  %6589 = fsub fast float %159, %6323
  %6590 = fsub fast float %160, %6547
  %6591 = fmul fast float %6588, %6588
  %6592 = fmul fast float %6589, %6589
  %6593 = fadd fast float %6591, %6592
  %6594 = fmul fast float %6590, %6590
  %6595 = fadd fast float %6593, %6594
  %6596 = call float @dx.op.unary.f32(i32 24, float %6595)  ; Sqrt(value)
  br label %6597

; <label>:6597                                    ; preds = %6587, %6585, %6575
  %6598 = phi float [ %6584, %6575 ], [ %6596, %6587 ], [ 0.000000e+00, %6585 ]
  %6599 = and i1 %6542, %6540
  %6600 = fsub fast float -0.000000e+00, %6598
  %6601 = select i1 %6599, float -0.000000e+00, float %6600
  %6602 = fmul fast float %4718, 0x3FF7154760000000
  %6603 = fmul fast float %6602, %6601
  %6604 = fmul fast float %4719, 0x3FF7154760000000
  %6605 = fmul fast float %6604, %6601
  %6606 = fmul fast float %4720, 0x3FF7154760000000
  %6607 = fmul fast float %6606, %6601
  %6608 = call float @dx.op.unary.f32(i32 21, float %6603)  ; Exp(value)
  %6609 = call float @dx.op.unary.f32(i32 21, float %6605)  ; Exp(value)
  %6610 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6613 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6614 = fmul fast float %6536, %6611
  %6615 = fmul fast float %6537, %6612
  %6616 = fmul fast float %6538, %6613
  %6617 = fsub fast float %6356, %178
  %6618 = fsub fast float %6357, %179
  %6619 = fsub fast float %6358, %180
  %6620 = call float @dx.op.dot3.f32(i32 55, float %6617, float %6618, float %6619, float %6617, float %6618, float %6619)  ; Dot3(ax,ay,az,bx,by,bz)
  %6621 = call float @dx.op.unary.f32(i32 25, float %6620)  ; Rsqrt(value)
  %6622 = fmul fast float %6621, %6617
  %6623 = fmul fast float %6621, %6618
  %6624 = fmul fast float %6621, %6619
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6356, float %6357, float %6358, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6627 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6628 = fmul fast float %6627, %6363
  %6629 = fmul fast float %6627, %6627
  %6630 = fmul fast float %6629, %4927
  %6631 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6632 = fmul fast float %6628, %6631
  %6633 = bitcast float %6353 to i32
  %6634 = ashr i32 %6633, 1
  %6635 = sub nsw i32 1597463007, %6634
  %6636 = bitcast i32 %6635 to float
  %6637 = fmul fast float %6636, %6350
  %6638 = fmul fast float %6636, %6351
  %6639 = fmul fast float %6636, %6352
  %6640 = fsub fast float %6637, %178
  %6641 = fsub fast float %6638, %179
  %6642 = fsub fast float %6639, %180
  %6643 = call float @dx.op.dot3.f32(i32 55, float %6640, float %6641, float %6642, float %6640, float %6641, float %6642)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = call float @dx.op.unary.f32(i32 25, float %6643)  ; Rsqrt(value)
  %6645 = fmul fast float %6640, %6644
  %6646 = fmul fast float %6641, %6644
  %6647 = fmul fast float %6642, %6644
  %6648 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %6645, float %6646, float %6647)  ; Dot3(ax,ay,az,bx,by,bz)
  %6649 = fmul fast float %6648, %6648
  %6650 = call float @dx.op.unary.f32(i32 6, float %6625)  ; FAbs(value)
  %6651 = fsub fast float 1.000000e+00, %4909
  %6652 = call float @dx.op.binary.f32(i32 35, float %6651, float 0x3F847AE140000000)  ; FMax(a,b)
  %6653 = fmul fast float %6652, %6652
  %6654 = fmul fast float %6653, %6653
  %6655 = fsub fast float 1.000000e+00, %6654
  %6656 = fmul fast float %4914, %4914
  %6657 = fmul fast float %6656, %6655
  %6658 = fadd fast float %6657, %6654
  %6659 = bitcast float %6658 to i32
  %6660 = ashr i32 %6659, 1
  %6661 = add nsw i32 %6660, 532487669
  %6662 = bitcast i32 %6661 to float
  %6663 = fadd fast float %6662, %4914
  %6664 = fmul fast float %6654, %6649
  %6665 = fsub fast float 1.000000e+00, %6649
  %6666 = fadd fast float %6665, %6664
  %6667 = fmul fast float %6650, %6650
  %6668 = fmul fast float %6667, %6655
  %6669 = fadd fast float %6668, %6654
  %6670 = bitcast float %6669 to i32
  %6671 = ashr i32 %6670, 1
  %6672 = add nsw i32 %6671, 532487669
  %6673 = bitcast i32 %6672 to float
  %6674 = fadd fast float %6673, %6650
  %6675 = fmul fast float %6666, %6666
  %6676 = fmul fast float %6675, %6663
  %6677 = fmul fast float %6676, %6674
  %6678 = fdiv fast float 1.000000e+00, %6677
  %6679 = bitcast float %6654 to i32
  %6680 = sitofp i32 %6679 to float
  %6681 = fmul fast float %6680, 0x3FE7F73180000000
  %6682 = fadd fast float %6681, 0x41AFE27C40000000
  %6683 = fptosi float %6682 to i32
  %6684 = bitcast i32 %6683 to float
  %6685 = fmul fast float %6319, 0x3FD80E9D60000000
  %6686 = fmul fast float %6685, %6636
  %6687 = fadd fast float %6684, %6686
  %6688 = bitcast float %6687 to i32
  %6689 = sub nsw i32 2129859010, %6688
  %6690 = bitcast i32 %6689 to float
  %6691 = fmul fast float %6654, %6678
  %6692 = fmul fast float %6691, %6684
  %6693 = fmul fast float %6692, %6690
  %6694 = call float @dx.op.unary.f32(i32 6, float %6626)  ; FAbs(value)
  %6695 = fsub fast float 1.000000e+00, %6694
  %6696 = bitcast float %6695 to i32
  %6697 = sitofp i32 %6696 to float
  %6698 = fmul fast float %6697, 5.000000e+00
  %6699 = fadd fast float %6698, 0xC1EFBF8940000000
  %6700 = fptosi float %6699 to i32
  %6701 = bitcast i32 %6700 to float
  %6702 = fsub fast float 1.000000e+00, %4906
  %6703 = fsub fast float 1.000000e+00, %4907
  %6704 = fsub fast float 1.000000e+00, %4912
  %6705 = fmul fast float %6701, %6702
  %6706 = fmul fast float %6701, %6703
  %6707 = fmul fast float %6701, %6704
  %6708 = fadd fast float %6705, %4906
  %6709 = fadd fast float %6706, %4907
  %6710 = fadd fast float %6707, %4912
  br i1 %5039, label %6711, label %6734

; <label>:6711                                    ; preds = %6597
  %6712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = extractvalue %dx.types.ResRet.f32 %6712, 1
  %6715 = extractvalue %dx.types.ResRet.f32 %6712, 2
  %6716 = fadd fast float %6713, -5.000000e-01
  %6717 = fadd fast float %6714, -5.000000e-01
  %6718 = fadd fast float %6715, -5.000000e-01
  %6719 = fmul fast float %4906, 4.000000e+00
  %6720 = fmul fast float %6719, %6702
  %6721 = fmul fast float %6720, %6716
  %6722 = fmul fast float %4907, 4.000000e+00
  %6723 = fmul fast float %6722, %6703
  %6724 = fmul fast float %6723, %6717
  %6725 = fmul fast float %4912, 4.000000e+00
  %6726 = fmul fast float %6725, %6704
  %6727 = fmul fast float %6726, %6718
  %6728 = fadd fast float %6721, %6708
  %6729 = fadd fast float %6724, %6709
  %6730 = fadd fast float %6727, %6710
  %6731 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  %6732 = call float @dx.op.unary.f32(i32 7, float %6729)  ; Saturate(value)
  %6733 = call float @dx.op.unary.f32(i32 7, float %6730)  ; Saturate(value)
  br label %6734

; <label>:6734                                    ; preds = %6711, %6597
  %6735 = phi float [ %6731, %6711 ], [ %6708, %6597 ]
  %6736 = phi float [ %6732, %6711 ], [ %6709, %6597 ]
  %6737 = phi float [ %6733, %6711 ], [ %6710, %6597 ]
  %6738 = fmul fast float %6625, 9.843750e-01
  %6739 = fadd fast float %6738, 7.812500e-03
  %6740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6739, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 2
  %6742 = extractvalue %dx.types.ResRet.f32 %6740, 3
  %6743 = fmul fast float %6741, %4906
  %6744 = fmul fast float %6741, %4907
  %6745 = fmul fast float %6741, %4912
  %6746 = fadd fast float %6743, %6742
  %6747 = fadd fast float %6744, %6742
  %6748 = fadd fast float %6745, %6742
  br i1 %5039, label %6749, label %6772

; <label>:6749                                    ; preds = %6734
  %6750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4286, float %6625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6751 = extractvalue %dx.types.ResRet.f32 %6750, 0
  %6752 = extractvalue %dx.types.ResRet.f32 %6750, 1
  %6753 = extractvalue %dx.types.ResRet.f32 %6750, 2
  %6754 = fadd fast float %6751, -5.000000e-01
  %6755 = fadd fast float %6752, -5.000000e-01
  %6756 = fadd fast float %6753, -5.000000e-01
  %6757 = fmul fast float %4906, 4.000000e+00
  %6758 = fmul fast float %6757, %6702
  %6759 = fmul fast float %6758, %6754
  %6760 = fmul fast float %4907, 4.000000e+00
  %6761 = fmul fast float %6760, %6703
  %6762 = fmul fast float %6761, %6755
  %6763 = fmul fast float %4912, 4.000000e+00
  %6764 = fmul fast float %6763, %6704
  %6765 = fmul fast float %6764, %6756
  %6766 = fadd fast float %6759, %6746
  %6767 = fadd fast float %6762, %6747
  %6768 = fadd fast float %6765, %6748
  %6769 = call float @dx.op.unary.f32(i32 7, float %6766)  ; Saturate(value)
  %6770 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6771 = call float @dx.op.unary.f32(i32 7, float %6768)  ; Saturate(value)
  br label %6772

; <label>:6772                                    ; preds = %6749, %6734
  %6773 = phi float [ %6769, %6749 ], [ %6746, %6734 ]
  %6774 = phi float [ %6770, %6749 ], [ %6747, %6734 ]
  %6775 = phi float [ %6771, %6749 ], [ %6748, %6734 ]
  %6776 = call float @dx.op.binary.f32(i32 35, float %6774, float %6775)  ; FMax(a,b)
  %6777 = call float @dx.op.binary.f32(i32 35, float %6773, float %6776)  ; FMax(a,b)
  %6778 = fsub fast float 1.000000e+00, %6777
  %6779 = fmul fast float %6735, %6693
  %6780 = fmul fast float %6736, %6693
  %6781 = fmul fast float %6737, %6693
  %6782 = fsub fast float 1.000000e+00, %6626
  %6783 = bitcast float %6782 to i32
  %6784 = sitofp i32 %6783 to float
  %6785 = fmul fast float %6784, 5.000000e+00
  %6786 = fadd fast float %6785, 0xC1EFBF8940000000
  %6787 = fptosi float %6786 to i32
  %6788 = bitcast i32 %6787 to float
  %6789 = fmul fast float %6788, %4287
  %6790 = fmul fast float %6778, %6789
  %6791 = fmul fast float %6790, %5089
  %6792 = fmul fast float %6790, %5090
  %6793 = fmul fast float %6790, %5091
  %6794 = fadd fast float %6791, %6779
  %6795 = fadd fast float %6792, %6780
  %6796 = fadd fast float %6793, %6781
  %6797 = fmul fast float %6614, %4320
  %6798 = fmul fast float %6797, %6632
  %6799 = fmul fast float %6798, %6778
  %6800 = fmul fast float %6615, %4320
  %6801 = fmul fast float %6800, %6632
  %6802 = fmul fast float %6801, %6778
  %6803 = fmul fast float %6616, %4320
  %6804 = fmul fast float %6803, %6632
  %6805 = fmul fast float %6804, %6778
  %6806 = fadd fast float %6799, %6293
  %6807 = fadd fast float %6802, %6294
  %6808 = fadd fast float %6805, %6295
  %6809 = fmul fast float %6798, %6794
  %6810 = fmul fast float %6801, %6795
  %6811 = fmul fast float %6804, %6796
  %6812 = fadd fast float %6809, %6290
  %6813 = fadd fast float %6810, %6291
  %6814 = fadd fast float %6811, %6292
  br label %6422

; <label>:6815                                    ; preds = %6422
  br label %6816

; <label>:6816                                    ; preds = %6815, %6256
  %6817 = phi float [ %6258, %6256 ], [ %6423, %6815 ]
  %6818 = phi float [ %6259, %6256 ], [ %6424, %6815 ]
  %6819 = phi float [ %6260, %6256 ], [ %6425, %6815 ]
  %6820 = phi float [ %6261, %6256 ], [ %6426, %6815 ]
  %6821 = phi float [ %6262, %6256 ], [ %6427, %6815 ]
  %6822 = phi float [ %6263, %6256 ], [ %6428, %6815 ]
  %6823 = add i32 %6257, 1
  %6824 = icmp ugt i32 %6823, %6253
  br i1 %6824, label %6825, label %6256

; <label>:6825                                    ; preds = %6816
  br label %6826

; <label>:6826                                    ; preds = %6825, %6206, %6196
  %6827 = phi float [ %6197, %6196 ], [ %6197, %6206 ], [ %6817, %6825 ]
  %6828 = phi float [ %6198, %6196 ], [ %6198, %6206 ], [ %6818, %6825 ]
  %6829 = phi float [ %6199, %6196 ], [ %6199, %6206 ], [ %6819, %6825 ]
  %6830 = phi float [ %6200, %6196 ], [ %6200, %6206 ], [ %6820, %6825 ]
  %6831 = phi float [ %6201, %6196 ], [ %6201, %6206 ], [ %6821, %6825 ]
  %6832 = phi float [ %6202, %6196 ], [ %6202, %6206 ], [ %6822, %6825 ]
  %6833 = fmul fast float %4320, %4320
  %6834 = fsub fast float 1.000000e+00, %6833
  %6835 = call float @dx.op.dot3.f32(i32 55, float %6834, float %6834, float %6834, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6836 = fsub fast float 1.000000e+00, %6835
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = fmul fast float %6838, %5095
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 3
  %6842 = fsub fast float 1.000000e+00, %4291
  %6843 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6844 = fadd fast float %6832, %4289
  %6845 = fmul fast float %6844, %4291
  %6846 = fmul fast float %6843, %6841
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 3
  %6849 = fmul fast float %6830, %4903
  %6850 = fmul fast float %6831, %4904
  %6851 = fmul fast float %6832, %4905
  %6852 = fcmp fast ogt float %86, %212
  %6853 = and i1 %6852, %4723
  %6854 = or i1 %4729, %6853
  %6855 = icmp eq i32 %4722, 2
  %6856 = fcmp fast ole float %86, %212
  %6857 = and i1 %6856, %6855
  %6858 = or i1 %6857, %6854
  br i1 %6853, label %6859, label %7116

; <label>:6859                                    ; preds = %6826
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 3
  %6863 = fmul fast float %6861, %95
  %6864 = fmul fast float %6862, %96
  %6865 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6866 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6865, float %6866, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6865, float %6866, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6873 = extractvalue %dx.types.ResRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.ResRet.f32 %6872, 1
  %6875 = extractvalue %dx.types.ResRet.f32 %6872, 2
  %6876 = extractvalue %dx.types.ResRet.f32 %6872, 3
  %6877 = call float @dx.op.binary.f32(i32 35, float %6869, float %6870)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 35, float %6868, float %6877)  ; FMax(a,b)
  %6879 = call float @dx.op.binary.f32(i32 35, float %6878, float %6871)  ; FMax(a,b)
  %6880 = call float @dx.op.binary.f32(i32 36, float %6874, float %6875)  ; FMin(a,b)
  %6881 = call float @dx.op.binary.f32(i32 36, float %6873, float %6880)  ; FMin(a,b)
  %6882 = call float @dx.op.binary.f32(i32 36, float %6881, float %6876)  ; FMin(a,b)
  %6883 = fmul fast float %6879, 2.550000e+02
  %6884 = fadd fast float %6883, 0x3F70101020000000
  %6885 = fptoui float %6884 to i32
  %6886 = fmul fast float %6882, 2.550000e+02
  %6887 = fadd fast float %6886, 0x3F70101020000000
  %6888 = fptoui float %6887 to i32
  %6889 = icmp ult i32 %6885, %6888
  br i1 %6889, label %6890, label %7058

; <label>:6890                                    ; preds = %6859
  %6891 = fcmp fast ogt float %85, 9.843750e-01
  %6892 = fadd fast float %86, -4.000000e+00
  %6893 = select i1 %6891, float -4.000000e+00, float %6892
  %6894 = call float @dx.op.binary.f32(i32 35, float %6893, float 0.000000e+00)  ; FMax(a,b)
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = fadd fast float %6896, %6894
  %6898 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6899 = fmul fast float %6897, %6898
  %6900 = call float @dx.op.unary.f32(i32 23, float %6899)  ; Log(value)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6895, 3
  %6902 = fmul fast float %6901, %6900
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 2
  %6905 = fmul fast float %6902, %6904
  %6906 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  %6907 = uitofp i32 %6885 to float
  %6908 = uitofp i32 %6888 to float
  %6909 = fadd fast float %6907, 5.000000e-01
  %6910 = fadd fast float %6908, 5.000000e-01
  %6911 = fmul fast float %6904, %6909
  %6912 = fmul fast float %6904, %6910
  %6913 = fadd fast float %6911, 0x3F0FFB4800000000
  %6914 = fadd fast float %6912, 0xBF0FFB4800000000
  %6915 = call float @dx.op.binary.f32(i32 35, float %6906, float %6913)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 36, float %6915, float %6914)  ; FMin(a,b)
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6921 = fmul fast float %6918, %6916
  %6922 = fadd fast float %6920, %6921
  %6923 = fadd fast float %6920, %6919
  %6924 = fsub fast float %6918, %6919
  %6925 = fadd fast float %6924, %6920
  %6926 = call float @dx.op.binary.f32(i32 35, float %6922, float %6923)  ; FMax(a,b)
  %6927 = call float @dx.op.binary.f32(i32 36, float %6926, float %6925)  ; FMin(a,b)
  %6928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6865, float %6866, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.ResRet.f32 %6928, 2
  %6932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.i32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.i32 %6932, 1
  %6935 = uitofp i32 %6933 to float
  %6936 = uitofp i32 %6934 to float
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = fmul fast float %6935, %6865
  %6941 = fmul fast float %6936, %6866
  %6942 = fadd fast float %6940, -5.000000e-01
  %6943 = fadd fast float %6941, -5.000000e-01
  %6944 = call float @dx.op.unary.f32(i32 22, float %6942)  ; Frc(value)
  %6945 = call float @dx.op.unary.f32(i32 22, float %6943)  ; Frc(value)
  %6946 = fmul fast float %6944, %6944
  %6947 = fmul fast float %6946, %6944
  %6948 = fsub fast float 3.000000e+00, %6944
  %6949 = fmul fast float %6946, %6948
  %6950 = fmul fast float %6944, 3.000000e+00
  %6951 = fmul fast float %6947, 3.000000e+00
  %6952 = fmul fast float %6946, 6.000000e+00
  %6953 = fsub fast float %6951, %6952
  %6954 = fadd fast float %6953, 4.000000e+00
  %6955 = fmul fast float %6954, 0x3FC5555560000000
  %6956 = fmul fast float %6947, -3.000000e+00
  %6957 = fadd fast float %6946, %6944
  %6958 = fmul fast float %6957, 3.000000e+00
  %6959 = fadd fast float %6956, 1.000000e+00
  %6960 = fadd fast float %6959, %6958
  %6961 = fmul fast float %6947, 0x3FC5555560000000
  %6962 = fmul fast float %6945, %6945
  %6963 = fmul fast float %6962, %6945
  %6964 = fsub fast float 3.000000e+00, %6945
  %6965 = fmul fast float %6962, %6964
  %6966 = fmul fast float %6945, 3.000000e+00
  %6967 = fmul fast float %6963, 3.000000e+00
  %6968 = fmul fast float %6962, 6.000000e+00
  %6969 = fsub fast float %6967, %6968
  %6970 = fadd fast float %6969, 4.000000e+00
  %6971 = fmul fast float %6970, 0x3FC5555560000000
  %6972 = fmul fast float %6963, -3.000000e+00
  %6973 = fadd fast float %6962, %6945
  %6974 = fmul fast float %6973, 3.000000e+00
  %6975 = fadd fast float %6972, 1.000000e+00
  %6976 = fadd fast float %6975, %6974
  %6977 = fmul fast float %6963, 0x3FC5555560000000
  %6978 = fadd fast float %6944, 1.000000e+00
  %6979 = fsub fast float 1.000000e+00, %6950
  %6980 = fadd fast float %6979, %6949
  %6981 = fadd fast float %6980, %6954
  %6982 = fmul fast float %6981, 0x3FC5555560000000
  %6983 = fdiv fast float %6955, %6982
  %6984 = fsub fast float %6978, %6983
  %6985 = fsub fast float 1.000000e+00, %6944
  %6986 = fadd fast float %6960, %6947
  %6987 = fmul fast float %6986, 0x3FC5555560000000
  %6988 = fdiv fast float %6961, %6987
  %6989 = fadd fast float %6985, %6988
  %6990 = fadd fast float %6945, 1.000000e+00
  %6991 = fsub fast float 1.000000e+00, %6966
  %6992 = fadd fast float %6991, %6965
  %6993 = fadd fast float %6992, %6970
  %6994 = fmul fast float %6993, 0x3FC5555560000000
  %6995 = fdiv fast float %6971, %6994
  %6996 = fsub fast float %6990, %6995
  %6997 = fsub fast float 1.000000e+00, %6945
  %6998 = fadd fast float %6976, %6963
  %6999 = fmul fast float %6998, 0x3FC5555560000000
  %7000 = fdiv fast float %6977, %6999
  %7001 = fadd fast float %7000, %6997
  %7002 = fmul fast float %6984, %6938
  %7003 = fsub fast float %6865, %7002
  %7004 = fmul fast float %6989, %6938
  %7005 = fadd fast float %7004, %6865
  %7006 = fmul fast float %7001, %6939
  %7007 = fadd fast float %7006, %6866
  %7008 = fmul fast float %6996, %6939
  %7009 = fsub fast float %6866, %7008
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7003, float %7009, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7005, float %7009, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.ResRet.f32 %7014, 2
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7003, float %7007, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.ResRet.f32 %7018, 2
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7005, float %7007, float %6927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = fsub fast float %7019, %7011
  %7027 = fsub fast float %7020, %7012
  %7028 = fsub fast float %7021, %7013
  %7029 = fmul fast float %7026, %6999
  %7030 = fmul fast float %7027, %6999
  %7031 = fmul fast float %7028, %6999
  %7032 = fadd fast float %7029, %7011
  %7033 = fadd fast float %7030, %7012
  %7034 = fadd fast float %7031, %7013
  %7035 = fsub fast float %7023, %7015
  %7036 = fsub fast float %7024, %7016
  %7037 = fsub fast float %7025, %7017
  %7038 = fmul fast float %7035, %6999
  %7039 = fmul fast float %7036, %6999
  %7040 = fmul fast float %7037, %6999
  %7041 = fsub fast float %7015, %7032
  %7042 = fadd fast float %7041, %7038
  %7043 = fsub fast float %7016, %7033
  %7044 = fadd fast float %7043, %7039
  %7045 = fsub fast float %7017, %7034
  %7046 = fadd fast float %7045, %7040
  %7047 = fmul fast float %7042, %6987
  %7048 = fmul fast float %7044, %6987
  %7049 = fmul fast float %7046, %6987
  %7050 = fadd fast float %7047, %7032
  %7051 = fadd fast float %7048, %7033
  %7052 = fadd fast float %7049, %7034
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7055 = fmul fast float %7050, %7054
  %7056 = fmul fast float %7051, %7054
  %7057 = fmul fast float %7052, %7054
  br label %7058

; <label>:7058                                    ; preds = %6890, %6859
  %7059 = phi float [ %6929, %6890 ], [ 1.000000e+00, %6859 ]
  %7060 = phi float [ %6930, %6890 ], [ 1.000000e+00, %6859 ]
  %7061 = phi float [ %6931, %6890 ], [ 1.000000e+00, %6859 ]
  %7062 = phi float [ %7055, %6890 ], [ 0.000000e+00, %6859 ]
  %7063 = phi float [ %7056, %6890 ], [ 0.000000e+00, %6859 ]
  %7064 = phi float [ %7057, %6890 ], [ 0.000000e+00, %6859 ]
  %7065 = fmul fast float %7062, %6836
  %7066 = fmul fast float %7063, %6836
  %7067 = fmul fast float %7064, %6836
  %7068 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7069 = call float @dx.op.dot3.f32(i32 55, float %7065, float %7066, float %7067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7070 = select i1 %252, float %7068, float %7059
  %7071 = select i1 %252, float %7068, float %7060
  %7072 = select i1 %252, float 1.000000e+00, float %7061
  %7073 = select i1 %252, float %7069, float %7065
  %7074 = select i1 %252, float 0.000000e+00, float %7066
  %7075 = select i1 %252, float 0.000000e+00, float %7067
  %7076 = fmul fast float %7070, %6849
  %7077 = fmul fast float %7071, %6850
  %7078 = fmul fast float %7072, %6851
  %7079 = fadd fast float %7076, %7073
  %7080 = fadd fast float %7077, %7074
  %7081 = fadd fast float %7075, %7078
  %7082 = fmul fast float %7070, %6827
  %7083 = fmul fast float %7071, %6828
  %7084 = fmul fast float %7072, %6829
  %7085 = fmul fast float %128, %6861
  %7086 = fmul fast float %130, %6862
  %7087 = fsub fast float 1.000000e+00, %7085
  %7088 = fsub fast float 1.000000e+00, %7086
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.CBufRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %7093 = fmul fast float %7087, %7090
  %7094 = fmul fast float %7087, %7091
  %7095 = fmul fast float %7087, %7092
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %7100 = fmul fast float %7088, %7097
  %7101 = fmul fast float %7088, %7098
  %7102 = fmul fast float %7088, %7099
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = fadd fast float %7100, %7104
  %7108 = fadd fast float %7107, %7093
  %7109 = fadd fast float %7101, %7105
  %7110 = fadd fast float %7109, %7094
  %7111 = fadd fast float %7102, %7106
  %7112 = fadd fast float %7111, %7095
  %7113 = fmul fast float %7108, %212
  %7114 = fmul fast float %7110, %212
  %7115 = fmul fast float %7112, %212
  br label %7116

; <label>:7116                                    ; preds = %7058, %6826
  %7117 = phi float [ %7113, %7058 ], [ %158, %6826 ]
  %7118 = phi float [ %7114, %7058 ], [ %159, %6826 ]
  %7119 = phi float [ %7115, %7058 ], [ %160, %6826 ]
  %7120 = phi float [ %212, %7058 ], [ %86, %6826 ]
  %7121 = phi float [ %7079, %7058 ], [ %6849, %6826 ]
  %7122 = phi float [ %7080, %7058 ], [ %6850, %6826 ]
  %7123 = phi float [ %7081, %7058 ], [ %6851, %6826 ]
  %7124 = phi float [ %7082, %7058 ], [ %6827, %6826 ]
  %7125 = phi float [ %7083, %7058 ], [ %6828, %6826 ]
  %7126 = phi float [ %7084, %7058 ], [ %6829, %6826 ]
  %7127 = phi float [ %7059, %7058 ], [ 1.000000e+00, %6826 ]
  br i1 %6858, label %8282, label %7128

; <label>:7128                                    ; preds = %7116
  %7129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7130 = extractvalue %dx.types.CBufRet.f32 %7129, 0
  %7131 = extractvalue %dx.types.CBufRet.f32 %7129, 1
  %7132 = extractvalue %dx.types.CBufRet.f32 %7129, 2
  %7133 = extractvalue %dx.types.CBufRet.f32 %7129, 3
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.CBufRet.f32 %7134, 1
  %7137 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7138 = extractvalue %dx.types.CBufRet.f32 %7134, 3
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7148 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7155 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7156 = fcmp fast olt float %7155, -5.000000e-01
  %7157 = call float @dx.op.dot3.f32(i32 55, float %7117, float %7118, float %7119, float %7117, float %7118, float %7119)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = call float @dx.op.unary.f32(i32 25, float %7157)  ; Rsqrt(value)
  %7159 = fmul fast float %7158, %7157
  %7160 = fmul fast float %7158, %7117
  %7161 = fmul fast float %7158, %7118
  %7162 = fmul fast float %7158, %7119
  %7163 = fadd fast float %7159, %7133
  %7164 = call float @dx.op.dot3.f32(i32 55, float %7160, float %7161, float %7162, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.i32 %7165, 1
  %7167 = and i32 %7166, 1
  %7168 = icmp ne i32 %7167, 0
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7171 = fcmp fast ogt float %7170, 0.000000e+00
  %7172 = and i1 %7168, %7171
  br i1 %7172, label %7173, label %7579, !dx.controlflow.hints !119

; <label>:7173                                    ; preds = %7128
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 2
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 2
  %7180 = fsub fast float %7177, %7179
  %7181 = and i32 %7166, 2
  %7182 = extractvalue %dx.types.CBufRet.i32 %7165, 0
  %7183 = call i32 @dx.op.binary.i32(i32 40, i32 %7182, i32 3)  ; UMin(a,b)
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7189 = fsub fast float %7185, %7187
  %7190 = fsub fast float %7186, %7188
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7193 = fcmp fast ogt float %7192, 0.000000e+00
  %7194 = fsub fast float -0.000000e+00, %7189
  %7195 = fsub fast float -0.000000e+00, %7190
  %7196 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7160, float %7161)  ; Dot2(ax,ay,bx,by)
  %7197 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7194, float %7195)  ; Dot2(ax,ay,bx,by)
  %7198 = fmul fast float %7197, 2.000000e+00
  %7199 = call float @dx.op.dot2.f32(i32 54, float %7194, float %7195, float %7194, float %7195)  ; Dot2(ax,ay,bx,by)
  %7200 = fmul fast float %7192, %7192
  %7201 = fsub fast float %7199, %7200
  %7202 = fmul fast float %7198, %7198
  %7203 = fmul fast float %7196, 4.000000e+00
  %7204 = fmul fast float %7203, %7201
  %7205 = fsub fast float %7202, %7204
  %7206 = fcmp fast ogt float %7205, 0.000000e+00
  br i1 %7206, label %7207, label %7222

; <label>:7207                                    ; preds = %7173
  %7208 = fcmp fast ogt float %7198, 0.000000e+00
  %7209 = call float @dx.op.unary.f32(i32 24, float %7205)  ; Sqrt(value)
  %7210 = fsub fast float -0.000000e+00, %7209
  %7211 = select i1 %7208, float %7209, float %7210
  %7212 = fadd fast float %7211, %7198
  %7213 = fmul float %7212, -5.000000e-01
  %7214 = fdiv fast float %7213, %7196
  %7215 = call float @dx.op.binary.f32(i32 35, float %7214, float 0.000000e+00)  ; FMax(a,b)
  %7216 = call float @dx.op.binary.f32(i32 36, float %7159, float %7215)  ; FMin(a,b)
  %7217 = fdiv fast float %7201, %7213
  %7218 = call float @dx.op.binary.f32(i32 35, float %7217, float 0.000000e+00)  ; FMax(a,b)
  %7219 = call float @dx.op.binary.f32(i32 36, float %7159, float %7218)  ; FMin(a,b)
  %7220 = call float @dx.op.binary.f32(i32 36, float %7216, float %7219)  ; FMin(a,b)
  %7221 = call float @dx.op.binary.f32(i32 35, float %7216, float %7219)  ; FMax(a,b)
  br label %7222

; <label>:7222                                    ; preds = %7207, %7173
  %7223 = phi float [ %7221, %7207 ], [ -1.000000e+00, %7173 ]
  %7224 = phi float [ %7220, %7207 ], [ -1.000000e+00, %7173 ]
  %7225 = phi i1 [ true, %7207 ], [ false, %7173 ]
  %7226 = and i1 %7193, %7225
  br i1 %7226, label %7227, label %7229

; <label>:7227                                    ; preds = %7222
  %7228 = fcmp fast oeq float %7224, %7223
  br i1 %7228, label %7532, label %7230

; <label>:7229                                    ; preds = %7222
  br i1 %7193, label %7532, label %7230

; <label>:7230                                    ; preds = %7229, %7227
  %7231 = phi float [ %7159, %7229 ], [ %7223, %7227 ]
  %7232 = phi float [ 0.000000e+00, %7229 ], [ %7224, %7227 ]
  %7233 = icmp ne i32 %7181, 0
  %7234 = fmul fast float %7231, %7162
  %7235 = fadd fast float %7234, %7175
  %7236 = fmul fast float %7235, %7231
  %7237 = select i1 %7233, float 0.000000e+00, float %7236
  %7238 = fcmp fast oeq float %7162, 0.000000e+00
  %7239 = fdiv fast float %7180, %7162
  %7240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7239)  ; FMax(a,b)
  %7241 = select i1 %7238, float %7231, float %7240
  %7242 = call float @dx.op.binary.f32(i32 36, float %7231, float %7241)  ; FMin(a,b)
  %7243 = fcmp fast ogt float %7162, 0.000000e+00
  %7244 = fcmp fast olt float %7180, 0.000000e+00
  br i1 %7243, label %7245, label %7302

; <label>:7245                                    ; preds = %7230
  %7246 = icmp eq i32 %7181, 0
  br i1 %7244, label %7247, label %7291

; <label>:7247                                    ; preds = %7245
  %7248 = select i1 %7246, float %7231, float 0.000000e+00
  %7249 = fsub fast float -0.000000e+00, %7248
  %7250 = call float @dx.op.unary.f32(i32 6, float %7249)  ; FAbs(value)
  %7251 = fmul fast float %7248, %7162
  %7252 = fadd fast float %7251, %7175
  %7253 = fmul fast float %7250, %7252
  %7254 = fsub fast float %7237, %7253
  %7255 = fsub fast float %7231, %7250
  %7256 = select i1 %7246, float %7255, float 0.000000e+00
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7260 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.CBufRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.CBufRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.CBufRet.f32 %7261, 3
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 3
  %7268 = call float @dx.op.binary.f32(i32 36, float %7254, float %7267)  ; FMin(a,b)
  %7269 = fmul fast float %7265, %7256
  %7270 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7271 = fsub fast float %7262, %7258
  %7272 = fsub fast float %7263, %7259
  %7273 = fsub fast float %7264, %7260
  %7274 = fmul fast float %7270, %7271
  %7275 = fmul fast float %7270, %7272
  %7276 = fmul fast float %7270, %7273
  %7277 = fadd fast float %7274, %7258
  %7278 = fadd fast float %7275, %7259
  %7279 = fadd fast float %7276, %7260
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.CBufRet.f32 %7280, 1
  %7283 = fadd fast float %7282, %7281
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %7286 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7287 = fadd fast float %7286, %7285
  %7288 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7289 = fmul fast float %7284, %7268
  %7290 = fmul fast float %7289, %7288
  br label %7532

; <label>:7291                                    ; preds = %7245
  br i1 %7246, label %7292, label %7313

; <label>:7292                                    ; preds = %7291
  %7293 = call float @dx.op.binary.f32(i32 36, float %7242, float %7232)  ; FMin(a,b)
  %7294 = fsub fast float %7242, %7293
  %7295 = fsub fast float %7294, %7231
  %7296 = call float @dx.op.unary.f32(i32 6, float %7295)  ; FAbs(value)
  %7297 = fadd fast float %7294, %7231
  %7298 = fmul fast float %7297, %7162
  %7299 = fadd fast float %7298, %7175
  %7300 = fmul fast float %7299, %7296
  %7301 = fsub fast float %7237, %7300
  br label %7313

; <label>:7302                                    ; preds = %7230
  br i1 %7244, label %7303, label %7313

; <label>:7303                                    ; preds = %7302
  %7304 = call float @dx.op.binary.f32(i32 35, float %7232, float %7242)  ; FMax(a,b)
  %7305 = icmp eq i32 %7181, 0
  %7306 = select i1 %7305, float %7242, float 0.000000e+00
  %7307 = fsub fast float -0.000000e+00, %7306
  %7308 = call float @dx.op.unary.f32(i32 6, float %7307)  ; FAbs(value)
  %7309 = fmul fast float %7306, %7162
  %7310 = fadd fast float %7309, %7175
  %7311 = fmul fast float %7308, %7310
  %7312 = fsub fast float %7237, %7311
  br label %7313

; <label>:7313                                    ; preds = %7303, %7302, %7292, %7291
  %7314 = phi float [ %7232, %7291 ], [ %7232, %7292 ], [ %7304, %7303 ], [ %7232, %7302 ]
  %7315 = phi float [ 0.000000e+00, %7291 ], [ %7296, %7292 ], [ %7308, %7303 ], [ 0.000000e+00, %7302 ]
  %7316 = phi float [ %7237, %7291 ], [ %7301, %7292 ], [ %7312, %7303 ], [ %7237, %7302 ]
  %7317 = phi float [ %7242, %7291 ], [ %7242, %7292 ], [ %7231, %7303 ], [ %7231, %7302 ]
  %7318 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7318, align 4, !tbaa !120, !noalias !122
  %7319 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7319, align 4, !tbaa !120, !noalias !122
  %7320 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7320, align 4, !tbaa !120, !noalias !122
  %7321 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7321, align 4, !tbaa !120, !noalias !122
  %7322 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7322, align 4, !tbaa !120, !noalias !122
  %7323 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7323, align 4, !tbaa !120, !noalias !122
  %7324 = icmp sgt i32 %7183, 0
  br i1 %7324, label %7325, label %7386

; <label>:7325                                    ; preds = %7313
  br label %7326

; <label>:7326                                    ; preds = %7375, %7325
  %7327 = phi i32 [ %7376, %7375 ], [ 0, %7325 ]
  %7328 = phi i32 [ %7377, %7375 ], [ 0, %7325 ]
  %7329 = add nuw i32 %7328, 171
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7329)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = fsub fast float %7331, %7334
  %7337 = fsub fast float %7332, %7335
  %7338 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7339 = fsub fast float -0.000000e+00, %7336
  %7340 = fsub fast float -0.000000e+00, %7337
  %7341 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7339, float %7340)  ; Dot2(ax,ay,bx,by)
  %7342 = fmul fast float %7341, 2.000000e+00
  %7343 = call float @dx.op.dot2.f32(i32 54, float %7339, float %7340, float %7339, float %7340)  ; Dot2(ax,ay,bx,by)
  %7344 = fmul fast float %7338, %7338
  %7345 = fsub fast float %7343, %7344
  %7346 = fmul fast float %7342, %7342
  %7347 = fmul fast float %7203, %7345
  %7348 = fsub fast float %7346, %7347
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  br i1 %7349, label %7350, label %7365

; <label>:7350                                    ; preds = %7326
  %7351 = fcmp fast ogt float %7342, 0.000000e+00
  %7352 = call float @dx.op.unary.f32(i32 24, float %7348)  ; Sqrt(value)
  %7353 = fsub fast float -0.000000e+00, %7352
  %7354 = select i1 %7351, float %7352, float %7353
  %7355 = fadd fast float %7354, %7342
  %7356 = fmul float %7355, -5.000000e-01
  %7357 = fdiv fast float %7356, %7196
  %7358 = call float @dx.op.binary.f32(i32 35, float %7357, float 0.000000e+00)  ; FMax(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7231, float %7358)  ; FMin(a,b)
  %7360 = fdiv fast float %7345, %7356
  %7361 = call float @dx.op.binary.f32(i32 35, float %7360, float 0.000000e+00)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7231, float %7361)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7359, float %7362)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7359, float %7362)  ; FMax(a,b)
  br label %7365

; <label>:7365                                    ; preds = %7350, %7326
  %7366 = phi float [ %7364, %7350 ], [ -1.000000e+00, %7326 ]
  %7367 = phi float [ %7363, %7350 ], [ -1.000000e+00, %7326 ]
  %7368 = phi i1 [ true, %7350 ], [ false, %7326 ]
  br i1 %7368, label %7369, label %7375

; <label>:7369                                    ; preds = %7365
  %7370 = call float @dx.op.binary.f32(i32 35, float %7314, float %7367)  ; FMax(a,b)
  %7371 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7328
  store float %7370, float* %7371, align 4, !tbaa !120, !noalias !122
  %7372 = call float @dx.op.binary.f32(i32 35, float %7314, float %7366)  ; FMax(a,b)
  %7373 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7328
  store float %7372, float* %7373, align 4, !tbaa !120, !noalias !122
  %7374 = add nsw i32 %7327, 1
  br label %7375

; <label>:7375                                    ; preds = %7369, %7365
  %7376 = phi i32 [ %7374, %7369 ], [ %7327, %7365 ]
  %7377 = add nuw nsw i32 %7328, 1
  %7378 = icmp eq i32 %7377, %7183
  br i1 %7378, label %7379, label %7326

; <label>:7379                                    ; preds = %7375
  %7380 = load float, float* %7320, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7381 = load float, float* %7319, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7382 = load float, float* %7318, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7383 = load float, float* %7323, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7384 = load float, float* %7322, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7385 = load float, float* %7321, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7386

; <label>:7386                                    ; preds = %7379, %7313
  %7387 = phi float [ -1.000000e+00, %7313 ], [ %7385, %7379 ]
  %7388 = phi float [ -1.000000e+00, %7313 ], [ %7384, %7379 ]
  %7389 = phi float [ -1.000000e+00, %7313 ], [ %7383, %7379 ]
  %7390 = phi float [ -1.000000e+00, %7313 ], [ %7382, %7379 ]
  %7391 = phi float [ -1.000000e+00, %7313 ], [ %7381, %7379 ]
  %7392 = phi float [ -1.000000e+00, %7313 ], [ %7380, %7379 ]
  %7393 = phi i32 [ 0, %7313 ], [ %7376, %7379 ]
  %7394 = call float @dx.op.binary.f32(i32 36, float %7391, float %7392)  ; FMin(a,b)
  %7395 = call float @dx.op.binary.f32(i32 36, float %7390, float %7394)  ; FMin(a,b)
  %7396 = call float @dx.op.binary.f32(i32 35, float %7390, float %7391)  ; FMax(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7396, float %7392)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7390, float %7391)  ; FMin(a,b)
  %7399 = call float @dx.op.binary.f32(i32 35, float %7398, float %7397)  ; FMax(a,b)
  %7400 = call float @dx.op.binary.f32(i32 35, float %7391, float %7392)  ; FMax(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7390, float %7400)  ; FMax(a,b)
  store float %7395, float* %7318, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7399, float* %7319, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7401, float* %7320, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7402 = call float @dx.op.binary.f32(i32 36, float %7388, float %7389)  ; FMin(a,b)
  %7403 = call float @dx.op.binary.f32(i32 36, float %7387, float %7402)  ; FMin(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7387, float %7388)  ; FMax(a,b)
  %7405 = call float @dx.op.binary.f32(i32 36, float %7404, float %7389)  ; FMin(a,b)
  %7406 = call float @dx.op.binary.f32(i32 36, float %7387, float %7388)  ; FMin(a,b)
  %7407 = call float @dx.op.binary.f32(i32 35, float %7406, float %7405)  ; FMax(a,b)
  %7408 = call float @dx.op.binary.f32(i32 35, float %7388, float %7389)  ; FMax(a,b)
  %7409 = call float @dx.op.binary.f32(i32 35, float %7387, float %7408)  ; FMax(a,b)
  store float %7403, float* %7321, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7407, float* %7322, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7409, float* %7323, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7410 = sub nsw i32 3, %7393
  %7411 = icmp sgt i32 %7410, 2
  br i1 %7411, label %7412, label %7450

; <label>:7412                                    ; preds = %7386
  %7413 = icmp eq i32 %7181, 0
  %7414 = fsub fast float %7231, %7315
  %7415 = select i1 %7413, float %7414, float %7315
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7423 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7427 = call float @dx.op.binary.f32(i32 36, float %7316, float %7426)  ; FMin(a,b)
  %7428 = fmul fast float %7424, %7415
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7430 = fsub fast float %7421, %7417
  %7431 = fsub fast float %7422, %7418
  %7432 = fsub fast float %7423, %7419
  %7433 = fmul fast float %7429, %7430
  %7434 = fmul fast float %7429, %7431
  %7435 = fmul fast float %7429, %7432
  %7436 = fadd fast float %7433, %7417
  %7437 = fadd fast float %7434, %7418
  %7438 = fadd fast float %7435, %7419
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.CBufRet.f32 %7439, 1
  %7442 = fadd fast float %7441, %7440
  %7443 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7439, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7439, 3
  %7446 = fadd fast float %7445, %7444
  %7447 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7448 = fmul fast float %7443, %7427
  %7449 = fmul fast float %7448, %7447
  br label %7532

; <label>:7450                                    ; preds = %7386
  %7451 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7410
  %7452 = load float, float* %7451, align 4, !tbaa !120, !noalias !122
  %7453 = fcmp fast olt float %7452, %7317
  %7454 = icmp sgt i32 %7393, 0
  %7455 = and i1 %7454, %7453
  br i1 %7455, label %7456, label %7493

; <label>:7456                                    ; preds = %7450
  br label %7457

; <label>:7457                                    ; preds = %7486, %7456
  %7458 = phi float [ %7487, %7486 ], [ %7315, %7456 ]
  %7459 = phi float [ %7488, %7486 ], [ %7316, %7456 ]
  %7460 = phi float [ %7468, %7486 ], [ %7452, %7456 ]
  %7461 = phi i32 [ %7465, %7486 ], [ %7410, %7456 ]
  %7462 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7461
  %7463 = load float, float* %7462, align 4, !tbaa !120, !noalias !122
  %7464 = icmp slt i32 %7461, 2
  %7465 = add nsw i32 %7461, 1
  %7466 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7465
  %7467 = load float, float* %7466, align 4, !tbaa !120, !noalias !122
  %7468 = select i1 %7464, float %7467, float %7231
  %7469 = call float @dx.op.binary.f32(i32 36, float %7468, float %7463)  ; FMin(a,b)
  %7470 = call float @dx.op.binary.f32(i32 36, float %7317, float %7469)  ; FMin(a,b)
  %7471 = icmp eq i32 %7181, 0
  %7472 = fadd fast float %7470, %7460
  %7473 = fmul fast float %7472, %7162
  %7474 = fadd fast float %7473, %7175
  br i1 %7471, label %7480, label %7475

; <label>:7475                                    ; preds = %7457
  %7476 = fsub fast float %7470, %7460
  %7477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7476)  ; FMax(a,b)
  %7478 = fmul fast float %7477, %7474
  %7479 = fadd fast float %7478, %7459
  br label %7486

; <label>:7480                                    ; preds = %7457
  %7481 = fsub fast float %7460, %7470
  %7482 = call float @dx.op.unary.f32(i32 6, float %7481)  ; FAbs(value)
  %7483 = fadd fast float %7482, %7458
  %7484 = fmul fast float %7482, %7474
  %7485 = fsub fast float %7459, %7484
  br label %7486

; <label>:7486                                    ; preds = %7480, %7475
  %7487 = phi float [ %7477, %7475 ], [ %7483, %7480 ]
  %7488 = phi float [ %7479, %7475 ], [ %7485, %7480 ]
  %7489 = fcmp fast olt float %7468, %7317
  %7490 = icmp slt i32 %7465, 3
  %7491 = and i1 %7490, %7489
  br i1 %7491, label %7457, label %7492

; <label>:7492                                    ; preds = %7486
  br label %7493

; <label>:7493                                    ; preds = %7492, %7450
  %7494 = phi float [ %7315, %7450 ], [ %7487, %7492 ]
  %7495 = phi float [ %7316, %7450 ], [ %7488, %7492 ]
  %7496 = fsub fast float %7231, %7494
  %7497 = select i1 %7233, float %7494, float %7496
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7506 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 3
  %7509 = call float @dx.op.binary.f32(i32 36, float %7495, float %7508)  ; FMin(a,b)
  %7510 = fmul fast float %7506, %7497
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float %7503, %7499
  %7513 = fsub fast float %7504, %7500
  %7514 = fsub fast float %7505, %7501
  %7515 = fmul fast float %7511, %7512
  %7516 = fmul fast float %7511, %7513
  %7517 = fmul fast float %7511, %7514
  %7518 = fadd fast float %7515, %7499
  %7519 = fadd fast float %7516, %7500
  %7520 = fadd fast float %7517, %7501
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7524 = fadd fast float %7523, %7522
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7528 = fadd fast float %7527, %7526
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fmul fast float %7525, %7509
  %7531 = fmul fast float %7530, %7529
  br label %7532

; <label>:7532                                    ; preds = %7493, %7412, %7247, %7229, %7227
  %7533 = phi float [ %7256, %7247 ], [ %7415, %7412 ], [ %7497, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7534 = phi float [ %7290, %7247 ], [ %7449, %7412 ], [ %7531, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7535 = phi float [ %7277, %7247 ], [ %7436, %7412 ], [ %7518, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7536 = phi float [ %7278, %7247 ], [ %7437, %7412 ], [ %7519, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7537 = phi float [ %7279, %7247 ], [ %7438, %7412 ], [ %7520, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7538 = fmul fast float %7170, %7534
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = fsub fast float %7177, %7540
  %7542 = fcmp fast olt float %7538, -2.000000e+01
  %7543 = call float @dx.op.unary.f32(i32 21, float %7538)  ; Exp(value)
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 3
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7549 = fmul fast float %7546, %7541
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7162, 5.000000e-01
  %7553 = fadd fast float %7552, 5.000000e-01
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = fsub fast float 1.000000e+00, %7554
  %7556 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7551)  ; FMax(a,b)
  %7557 = fdiv fast float %7555, %7556
  %7558 = fsub fast float %7541, %7119
  %7559 = call float @dx.op.unary.f32(i32 6, float %7558)  ; FAbs(value)
  %7560 = fmul fast float %7559, %7545
  %7561 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7562 = fsub fast float 1.000000e+00, %7560
  %7563 = fmul fast float %7562, %7561
  %7564 = fadd fast float %7563, %7560
  %7565 = fmul fast float %7548, %7541
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = fsub fast float 1.000000e+00, %7564
  %7568 = fmul fast float %7567, %7566
  %7569 = fadd fast float %7568, %7564
  %7570 = call float @dx.op.unary.f32(i32 7, float %7569)  ; Saturate(value)
  %7571 = fadd fast float %7543, -1.000000e+00
  %7572 = select i1 %7542, float -1.000000e+00, float %7571
  %7573 = fmul fast float %7570, %7572
  %7574 = fadd fast float %7573, 1.000000e+00
  %7575 = fsub fast float -0.000000e+00, %7573
  %7576 = fmul fast float %7535, %7575
  %7577 = fmul fast float %7536, %7575
  %7578 = fmul fast float %7537, %7575
  br label %7579

; <label>:7579                                    ; preds = %7532, %7128
  %7580 = phi float [ %7533, %7532 ], [ 0.000000e+00, %7128 ]
  %7581 = phi float [ %7574, %7532 ], [ 1.000000e+00, %7128 ]
  %7582 = phi float [ %7576, %7532 ], [ 0.000000e+00, %7128 ]
  %7583 = phi float [ %7577, %7532 ], [ 0.000000e+00, %7128 ]
  %7584 = phi float [ %7578, %7532 ], [ 0.000000e+00, %7128 ]
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7587 = fsub fast float 1.000000e+00, %7581
  %7588 = fmul fast float %7587, %7163
  %7589 = fmul fast float %7588, %7586
  %7590 = fsub fast float %7163, %7589
  br i1 %7156, label %7591, label %7620, !dx.controlflow.hints !158

; <label>:7591                                    ; preds = %7579
  %7592 = fmul fast float %7164, %7153
  %7593 = fadd fast float %7592, %7154
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = fmul fast float %7135, %7590
  %7596 = fsub fast float -0.000000e+00, %7595
  %7597 = fmul fast float %7136, %7590
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7600 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7143, float %7599)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7143, float %7600)  ; FMax(a,b)
  %7603 = fsub fast float %7602, %7601
  %7604 = fmul fast float %7603, %7594
  %7605 = fadd fast float %7604, %7601
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fsub fast float %7140, %7145
  %7608 = fsub fast float %7141, %7146
  %7609 = fsub fast float %7142, %7147
  %7610 = fmul fast float %7594, %7607
  %7611 = fmul fast float %7594, %7608
  %7612 = fmul fast float %7594, %7609
  %7613 = fadd fast float %7610, %7145
  %7614 = fadd fast float %7611, %7146
  %7615 = fadd fast float %7612, %7147
  %7616 = fsub fast float 1.000000e+00, %7606
  %7617 = fmul fast float %7616, %7613
  %7618 = fmul fast float %7616, %7614
  %7619 = fmul fast float %7616, %7615
  br label %7679

; <label>:7620                                    ; preds = %7579
  %7621 = fmul fast float %7590, %7152
  %7622 = call float @dx.op.unary.f32(i32 7, float %7621)  ; Saturate(value)
  %7623 = fsub fast float 2.000000e+00, %7622
  %7624 = fmul fast float %7622, 9.921875e-01
  %7625 = fmul fast float %7624, %7623
  %7626 = fadd fast float %7625, 3.906250e-03
  %7627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7626, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = fsub fast float %7622, %7628
  %7630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7629)  ; FMax(a,b)
  %7631 = fmul fast float %7138, %7119
  %7632 = call float @dx.op.unary.f32(i32 6, float %7631)  ; FAbs(value)
  %7633 = fcmp fast ogt float %7632, 0x3EB0C6F7A0000000
  br i1 %7633, label %7634, label %7640, !dx.controlflow.hints !159

; <label>:7634                                    ; preds = %7620
  %7635 = fmul fast float %7631, 0xBFF7154760000000
  %7636 = call float @dx.op.unary.f32(i32 21, float %7635)  ; Exp(value)
  %7637 = fsub fast float 1.000000e+00, %7636
  %7638 = fdiv fast float %7637, %7631
  %7639 = fmul fast float %7638, %7148
  br label %7640

; <label>:7640                                    ; preds = %7634, %7620
  %7641 = phi float [ %7639, %7634 ], [ %7148, %7620 ]
  %7642 = fadd fast float %7641, %7150
  %7643 = fmul fast float %7642, %7630
  %7644 = fmul fast float %7135, %7643
  %7645 = fsub fast float -0.000000e+00, %7644
  %7646 = fmul fast float %7136, %7643
  %7647 = fsub fast float -0.000000e+00, %7646
  %7648 = fmul fast float %7137, %7643
  %7649 = fsub fast float -0.000000e+00, %7648
  %7650 = call float @dx.op.unary.f32(i32 21, float %7645)  ; Exp(value)
  %7651 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7652 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7653 = fmul fast float %7164, %7164
  %7654 = fadd fast float %7653, 1.000000e+00
  %7655 = fmul fast float %7654, 0x3FAE8EC8A0000000
  %7656 = fmul fast float %7655, %7145
  %7657 = fmul fast float %7655, %7146
  %7658 = fmul fast float %7655, %7147
  %7659 = fmul fast float %7164, %7143
  %7660 = fsub fast float 1.000000e+00, %7659
  %7661 = fmul fast float %7143, %7143
  %7662 = fsub fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7662, 0x3FB45F3060000000
  %7664 = fmul fast float %7660, %7660
  %7665 = fdiv fast float 1.000000e+00, %7664
  %7666 = fmul fast float %7663, %7665
  %7667 = fmul fast float %7666, %7140
  %7668 = fmul fast float %7666, %7141
  %7669 = fmul fast float %7666, %7142
  %7670 = fadd fast float %7667, %7656
  %7671 = fadd fast float %7668, %7657
  %7672 = fadd fast float %7669, %7658
  %7673 = fsub fast float 1.000000e+00, %7650
  %7674 = fsub fast float 1.000000e+00, %7651
  %7675 = fsub fast float 1.000000e+00, %7652
  %7676 = fmul fast float %7670, %7673
  %7677 = fmul fast float %7671, %7674
  %7678 = fmul fast float %7672, %7675
  br label %7679

; <label>:7679                                    ; preds = %7640, %7591
  %7680 = phi float [ %7617, %7591 ], [ %7676, %7640 ]
  %7681 = phi float [ %7618, %7591 ], [ %7677, %7640 ]
  %7682 = phi float [ %7619, %7591 ], [ %7678, %7640 ]
  %7683 = phi float [ %7606, %7591 ], [ %7650, %7640 ]
  %7684 = phi float [ %7606, %7591 ], [ %7651, %7640 ]
  %7685 = phi float [ %7606, %7591 ], [ %7652, %7640 ]
  br i1 %7172, label %7686, label %7884, !dx.controlflow.hints !160

; <label>:7686                                    ; preds = %7679
  %7687 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7688 = fmul fast float %7687, %7587
  %7689 = fsub fast float %7582, %7680
  %7690 = fsub fast float %7583, %7681
  %7691 = fsub fast float %7584, %7682
  %7692 = fmul fast float %7688, %7689
  %7693 = fmul fast float %7688, %7690
  %7694 = fmul fast float %7688, %7691
  %7695 = fadd fast float %7692, %7680
  %7696 = fadd fast float %7693, %7681
  %7697 = fadd fast float %7694, %7682
  %7698 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7683)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7684)  ; FMax(a,b)
  %7700 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7685)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7581)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7580, float %7590)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7702)  ; FMax(a,b)
  %7704 = fdiv fast float %7580, %7703
  %7705 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7706 = fdiv fast float %7590, %7703
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fcmp fast une float %7701, 1.000000e+00
  br i1 %7708, label %7709, label %7722, !dx.controlflow.hints !161

; <label>:7709                                    ; preds = %7686
  %7710 = call float @dx.op.unary.f32(i32 23, float %7701)  ; Log(value)
  %7711 = fmul fast float %7710, 0x3FE62E4300000000
  %7712 = fmul fast float %7582, %7711
  %7713 = fsub fast float -0.000000e+00, %7712
  %7714 = fmul fast float %7583, %7711
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fmul fast float %7584, %7711
  %7717 = fsub fast float -0.000000e+00, %7716
  %7718 = fsub fast float 1.000000e+00, %7701
  %7719 = fdiv fast float %7713, %7718
  %7720 = fdiv fast float %7715, %7718
  %7721 = fdiv fast float %7717, %7718
  br label %7722

; <label>:7722                                    ; preds = %7709, %7686
  %7723 = phi float [ %7719, %7709 ], [ %7582, %7686 ]
  %7724 = phi float [ %7720, %7709 ], [ %7583, %7686 ]
  %7725 = phi float [ %7721, %7709 ], [ %7584, %7686 ]
  %7726 = phi float [ %7711, %7709 ], [ 0.000000e+00, %7686 ]
  %7727 = fcmp fast une float %7698, 1.000000e+00
  br i1 %7727, label %7728, label %7735, !dx.controlflow.hints !162

; <label>:7728                                    ; preds = %7722
  %7729 = call float @dx.op.unary.f32(i32 23, float %7698)  ; Log(value)
  %7730 = fmul fast float %7729, 0x3FE62E4300000000
  %7731 = fmul fast float %7695, %7730
  %7732 = fsub fast float -0.000000e+00, %7731
  %7733 = fsub fast float 1.000000e+00, %7698
  %7734 = fdiv fast float %7732, %7733
  br label %7735

; <label>:7735                                    ; preds = %7728, %7722
  %7736 = phi float [ %7734, %7728 ], [ %7695, %7722 ]
  %7737 = phi float [ %7730, %7728 ], [ 0.000000e+00, %7722 ]
  %7738 = fcmp fast une float %7699, 1.000000e+00
  br i1 %7738, label %7739, label %7746, !dx.controlflow.hints !162

; <label>:7739                                    ; preds = %7735
  %7740 = call float @dx.op.unary.f32(i32 23, float %7699)  ; Log(value)
  %7741 = fmul fast float %7740, 0x3FE62E4300000000
  %7742 = fmul fast float %7696, %7741
  %7743 = fsub fast float -0.000000e+00, %7742
  %7744 = fsub fast float 1.000000e+00, %7699
  %7745 = fdiv fast float %7743, %7744
  br label %7746

; <label>:7746                                    ; preds = %7739, %7735
  %7747 = phi float [ %7745, %7739 ], [ %7696, %7735 ]
  %7748 = phi float [ %7741, %7739 ], [ 0.000000e+00, %7735 ]
  %7749 = fcmp fast une float %7700, 1.000000e+00
  br i1 %7749, label %7750, label %7757, !dx.controlflow.hints !162

; <label>:7750                                    ; preds = %7746
  %7751 = call float @dx.op.unary.f32(i32 23, float %7700)  ; Log(value)
  %7752 = fmul fast float %7751, 0x3FE62E4300000000
  %7753 = fmul fast float %7697, %7752
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = fsub fast float 1.000000e+00, %7700
  %7756 = fdiv fast float %7754, %7755
  br label %7757

; <label>:7757                                    ; preds = %7750, %7746
  %7758 = phi float [ %7756, %7750 ], [ %7697, %7746 ]
  %7759 = phi float [ %7752, %7750 ], [ 0.000000e+00, %7746 ]
  %7760 = fmul fast float %7723, %7707
  %7761 = fmul fast float %7724, %7707
  %7762 = fmul fast float %7725, %7707
  %7763 = fmul fast float %7726, %7707
  %7764 = fmul fast float %7736, %7705
  %7765 = fmul fast float %7747, %7705
  %7766 = fmul fast float %7758, %7705
  %7767 = fmul fast float %7737, %7705
  %7768 = fmul fast float %7748, %7705
  %7769 = fmul fast float %7759, %7705
  %7770 = fadd fast float %7764, %7760
  %7771 = fadd fast float %7765, %7761
  %7772 = fadd fast float %7766, %7762
  %7773 = fadd fast float %7767, %7763
  %7774 = fadd fast float %7768, %7763
  %7775 = fadd fast float %7769, %7763
  %7776 = fcmp fast une float %7773, 0.000000e+00
  br i1 %7776, label %7777, label %7784, !dx.controlflow.hints !163

; <label>:7777                                    ; preds = %7757
  %7778 = fmul fast float %7773, 0x3FF7154760000000
  %7779 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7780 = fsub fast float 1.000000e+00, %7779
  %7781 = fmul fast float %7770, %7780
  %7782 = fsub fast float -0.000000e+00, %7781
  %7783 = fdiv fast float %7782, %7773
  br label %7784

; <label>:7784                                    ; preds = %7777, %7757
  %7785 = phi float [ %7779, %7777 ], [ 1.000000e+00, %7757 ]
  %7786 = phi float [ %7783, %7777 ], [ %7770, %7757 ]
  %7787 = fcmp fast une float %7774, 0.000000e+00
  br i1 %7787, label %7788, label %7795, !dx.controlflow.hints !163

; <label>:7788                                    ; preds = %7784
  %7789 = fmul fast float %7774, 0x3FF7154760000000
  %7790 = call float @dx.op.unary.f32(i32 21, float %7789)  ; Exp(value)
  %7791 = fsub fast float 1.000000e+00, %7790
  %7792 = fmul fast float %7771, %7791
  %7793 = fsub fast float -0.000000e+00, %7792
  %7794 = fdiv fast float %7793, %7774
  br label %7795

; <label>:7795                                    ; preds = %7788, %7784
  %7796 = phi float [ %7790, %7788 ], [ 1.000000e+00, %7784 ]
  %7797 = phi float [ %7794, %7788 ], [ %7771, %7784 ]
  %7798 = fcmp fast une float %7775, 0.000000e+00
  br i1 %7798, label %7799, label %7806, !dx.controlflow.hints !163

; <label>:7799                                    ; preds = %7795
  %7800 = fmul fast float %7775, 0x3FF7154760000000
  %7801 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7802 = fsub fast float 1.000000e+00, %7801
  %7803 = fmul fast float %7772, %7802
  %7804 = fsub fast float -0.000000e+00, %7803
  %7805 = fdiv fast float %7804, %7775
  br label %7806

; <label>:7806                                    ; preds = %7799, %7795
  %7807 = phi float [ %7801, %7799 ], [ 1.000000e+00, %7795 ]
  %7808 = phi float [ %7805, %7799 ], [ %7772, %7795 ]
  %7809 = fcmp fast ogt float %7705, %7707
  br i1 %7809, label %7810, label %7830

; <label>:7810                                    ; preds = %7806
  %7811 = fsub fast float 1.000000e+00, %7707
  %7812 = fmul fast float %7723, %7811
  %7813 = fmul fast float %7724, %7811
  %7814 = fmul fast float %7725, %7811
  %7815 = fmul fast float %7726, %7811
  %7816 = fcmp fast une float %7815, 0.000000e+00
  br i1 %7816, label %7817, label %7868, !dx.controlflow.hints !164

; <label>:7817                                    ; preds = %7810
  %7818 = fmul fast float %7815, 0x3FF7154760000000
  %7819 = call float @dx.op.unary.f32(i32 21, float %7818)  ; Exp(value)
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = fmul fast float %7812, %7820
  %7822 = fsub fast float -0.000000e+00, %7821
  %7823 = fmul fast float %7813, %7820
  %7824 = fsub fast float -0.000000e+00, %7823
  %7825 = fmul fast float %7814, %7820
  %7826 = fsub fast float -0.000000e+00, %7825
  %7827 = fdiv fast float %7822, %7815
  %7828 = fdiv fast float %7824, %7815
  %7829 = fdiv fast float %7826, %7815
  br label %7868

; <label>:7830                                    ; preds = %7806
  %7831 = fsub fast float 1.000000e+00, %7705
  %7832 = fmul fast float %7736, %7831
  %7833 = fmul fast float %7747, %7831
  %7834 = fmul fast float %7758, %7831
  %7835 = fmul fast float %7737, %7831
  %7836 = fmul fast float %7748, %7831
  %7837 = fmul fast float %7759, %7831
  %7838 = fcmp fast une float %7835, 0.000000e+00
  br i1 %7838, label %7839, label %7846, !dx.controlflow.hints !163

; <label>:7839                                    ; preds = %7830
  %7840 = fmul fast float %7835, 0x3FF7154760000000
  %7841 = call float @dx.op.unary.f32(i32 21, float %7840)  ; Exp(value)
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7832, %7842
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = fdiv fast float %7844, %7835
  br label %7846

; <label>:7846                                    ; preds = %7839, %7830
  %7847 = phi float [ %7845, %7839 ], [ %7832, %7830 ]
  %7848 = phi float [ %7841, %7839 ], [ 1.000000e+00, %7830 ]
  %7849 = fcmp fast une float %7836, 0.000000e+00
  br i1 %7849, label %7850, label %7857, !dx.controlflow.hints !163

; <label>:7850                                    ; preds = %7846
  %7851 = fmul fast float %7836, 0x3FF7154760000000
  %7852 = call float @dx.op.unary.f32(i32 21, float %7851)  ; Exp(value)
  %7853 = fsub fast float 1.000000e+00, %7852
  %7854 = fmul fast float %7833, %7853
  %7855 = fsub fast float -0.000000e+00, %7854
  %7856 = fdiv fast float %7855, %7836
  br label %7857

; <label>:7857                                    ; preds = %7850, %7846
  %7858 = phi float [ %7856, %7850 ], [ %7833, %7846 ]
  %7859 = phi float [ %7852, %7850 ], [ 1.000000e+00, %7846 ]
  %7860 = fcmp fast une float %7837, 0.000000e+00
  br i1 %7860, label %7861, label %7868, !dx.controlflow.hints !163

; <label>:7861                                    ; preds = %7857
  %7862 = fmul fast float %7837, 0x3FF7154760000000
  %7863 = call float @dx.op.unary.f32(i32 21, float %7862)  ; Exp(value)
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7834, %7864
  %7866 = fsub fast float -0.000000e+00, %7865
  %7867 = fdiv fast float %7866, %7837
  br label %7868

; <label>:7868                                    ; preds = %7861, %7857, %7817, %7810
  %7869 = phi float [ %7867, %7861 ], [ %7829, %7817 ], [ %7814, %7810 ], [ %7834, %7857 ]
  %7870 = phi float [ %7858, %7861 ], [ %7828, %7817 ], [ %7813, %7810 ], [ %7858, %7857 ]
  %7871 = phi float [ %7847, %7861 ], [ %7827, %7817 ], [ %7812, %7810 ], [ %7847, %7857 ]
  %7872 = phi float [ %7863, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ 1.000000e+00, %7857 ]
  %7873 = phi float [ %7859, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ %7859, %7857 ]
  %7874 = phi float [ %7848, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ %7848, %7857 ]
  %7875 = fmul fast float %7874, %7786
  %7876 = fmul fast float %7873, %7797
  %7877 = fmul fast float %7872, %7808
  %7878 = fadd fast float %7875, %7871
  %7879 = fadd fast float %7876, %7870
  %7880 = fadd fast float %7877, %7869
  %7881 = fmul fast float %7874, %7785
  %7882 = fmul fast float %7873, %7796
  %7883 = fmul fast float %7872, %7807
  br label %7884

; <label>:7884                                    ; preds = %7868, %7679
  %7885 = phi float [ %7883, %7868 ], [ %7685, %7679 ]
  %7886 = phi float [ %7882, %7868 ], [ %7684, %7679 ]
  %7887 = phi float [ %7881, %7868 ], [ %7683, %7679 ]
  %7888 = phi float [ %7880, %7868 ], [ %7682, %7679 ]
  %7889 = phi float [ %7879, %7868 ], [ %7681, %7679 ]
  %7890 = phi float [ %7878, %7868 ], [ %7680, %7679 ]
  %7891 = fmul fast float %7890, %6836
  %7892 = fmul fast float %7889, %6836
  %7893 = fmul fast float %7888, %6836
  %7894 = fmul fast float %7887, %7127
  %7895 = call float @dx.op.dot3.f32(i32 55, float %7887, float %7886, float %7885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = call float @dx.op.dot3.f32(i32 55, float %7891, float %7892, float %7893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7897 = select i1 %252, float %7895, float %7887
  %7898 = select i1 %252, float %7895, float %7886
  %7899 = select i1 %252, float 1.000000e+00, float %7885
  %7900 = select i1 %252, float %7896, float %7891
  %7901 = select i1 %252, float 0.000000e+00, float %7892
  %7902 = select i1 %252, float 0.000000e+00, float %7893
  %7903 = fmul fast float %7897, %7121
  %7904 = fmul fast float %7898, %7122
  %7905 = fmul fast float %7899, %7123
  %7906 = fadd fast float %7903, %7900
  %7907 = fadd fast float %7904, %7901
  %7908 = fadd fast float %7902, %7905
  %7909 = fmul fast float %7897, %7124
  %7910 = fmul fast float %7898, %7125
  %7911 = fmul fast float %7899, %7126
  %7912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.i32 %7912, 0
  %7914 = icmp eq i32 %7913, 0
  br i1 %7914, label %8282, label %7915, !dx.controlflow.hints !165

; <label>:7915                                    ; preds = %7884
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7919 = fmul fast float %7917, %95
  %7920 = fmul fast float %7918, %96
  %7921 = fmul fast float %7919, 2.000000e+00
  %7922 = fmul fast float %7920, 2.000000e+00
  %7923 = fsub fast float 1.000000e+00, %7921
  %7924 = fsub fast float 1.000000e+00, %7922
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.CBufRet.f32 %7925, 2
  %7929 = fmul fast float %7923, %7926
  %7930 = fmul fast float %7923, %7927
  %7931 = fmul fast float %7923, %7928
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 1
  %7935 = extractvalue %dx.types.CBufRet.f32 %7932, 2
  %7936 = fmul fast float %7924, %7933
  %7937 = fmul fast float %7924, %7934
  %7938 = fmul fast float %7924, %7935
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = extractvalue %dx.types.CBufRet.f32 %7939, 1
  %7942 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7943 = fadd fast float %7936, %7940
  %7944 = fadd fast float %7943, %7929
  %7945 = fadd fast float %7937, %7941
  %7946 = fadd fast float %7945, %7930
  %7947 = fadd fast float %7938, %7942
  %7948 = fadd fast float %7947, %7931
  %7949 = fmul fast float %7944, %7120
  %7950 = fmul fast float %7946, %7120
  %7951 = fmul fast float %7948, %7120
  %7952 = fmul fast float %7949, %7949
  %7953 = fmul fast float %7950, %7950
  %7954 = fadd fast float %7952, %7953
  %7955 = fmul fast float %7951, %7951
  %7956 = fadd fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 24, float %7956)  ; Sqrt(value)
  %7958 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %7959 = fsub fast float %7957, %7958
  %7960 = extractvalue %dx.types.CBufRet.f32 %6847, 2
  %7961 = fmul fast float %7959, %7960
  %7962 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7963 = fadd fast float %7962, -5.000000e-01
  %7964 = fmul fast float %7963, 2.000000e+00
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7967 = call float @dx.op.binary.f32(i32 36, float %7966, float %7964)  ; FMin(a,b)
  %7968 = fsub fast float -0.000000e+00, %7966
  %7969 = fcmp fast ogt float %7967, %7968
  br i1 %7969, label %7970, label %8282, !dx.controlflow.hints !166

; <label>:7970                                    ; preds = %7915
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7973 = fcmp fast ogt float %7972, 0.000000e+00
  br i1 %7973, label %7974, label %8049, !dx.controlflow.hints !167

; <label>:7974                                    ; preds = %7970
  %7975 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7976 = extractvalue %dx.types.Dimensions %7975, 0
  %7977 = sitofp i32 %7976 to float
  %7978 = extractvalue %dx.types.Dimensions %7975, 1
  %7979 = sitofp i32 %7978 to float
  %7980 = fmul fast float %7919, %7977
  %7981 = fmul fast float %7920, %7979
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 1
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fptoui float %7984 to i32
  %7986 = fptoui float %7980 to i32
  %7987 = fptoui float %7981 to i32
  %7988 = and i32 %7985, 31
  %7989 = lshr i32 %7986, %7988
  %7990 = lshr i32 %7987, %7988
  %7991 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7985, i32 %7989, i32 %7990, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7992 = extractvalue %dx.types.ResRet.f32 %7991, 0
  %7993 = fcmp fast olt float %7992, -1.000000e+00
  %7994 = fcmp fast ogt float %7992, -1.000000e+00
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 1
  %7997 = select i1 %7994, float %7996, float 1.000000e+00
  %7998 = fadd fast float %7992, 1.000000e+00
  %7999 = fmul fast float %7997, %7998
  %8000 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8001 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %8002 = fcmp fast oge float %8000, %8001
  %8003 = select i1 %8002, float 0x4197782600000000, float %8000
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8008 = select i1 %7993, float %8005, float %7926
  %8009 = select i1 %7993, float %8006, float %7927
  %8010 = select i1 %7993, float %8007, float %7928
  %8011 = fmul fast float %8008, %7923
  %8012 = fmul fast float %8009, %7923
  %8013 = fmul fast float %8010, %7923
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.CBufRet.f32 %8014, 2
  %8018 = select i1 %7993, float %8015, float %7933
  %8019 = select i1 %7993, float %8016, float %7934
  %8020 = select i1 %7993, float %8017, float %7935
  %8021 = fmul fast float %8018, %7924
  %8022 = fmul fast float %8019, %7924
  %8023 = fmul fast float %8020, %7924
  %8024 = fadd fast float %8021, %8011
  %8025 = fadd fast float %8022, %8012
  %8026 = fadd fast float %8023, %8013
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = select i1 %7993, float %8028, float %7940
  %8032 = select i1 %7993, float %8029, float %7941
  %8033 = select i1 %7993, float %8030, float %7942
  %8034 = fadd fast float %8024, %8031
  %8035 = fadd fast float %8025, %8032
  %8036 = fadd fast float %8026, %8033
  %8037 = fmul fast float %8034, %8003
  %8038 = fmul fast float %8035, %8003
  %8039 = fmul fast float %8036, %8003
  %8040 = fmul fast float %8037, %8037
  %8041 = fmul fast float %8038, %8038
  %8042 = fadd fast float %8040, %8041
  %8043 = fmul fast float %8039, %8039
  %8044 = fadd fast float %8042, %8043
  %8045 = call float @dx.op.unary.f32(i32 24, float %8044)  ; Sqrt(value)
  %8046 = fsub fast float %8045, %7958
  %8047 = fmul fast float %8046, %7960
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  br label %8049

; <label>:8049                                    ; preds = %7974, %7970
  %8050 = phi float [ %8048, %7974 ], [ 1.000000e+00, %7970 ]
  %8051 = fmul fast float %7967, 5.000000e-01
  %8052 = fadd fast float %8051, 5.000000e-01
  %8053 = call float @dx.op.unary.f32(i32 22, float %8052)  ; Frc(value)
  %8054 = call float @dx.op.unary.f32(i32 27, float %8053)  ; Round_ni(value)
  %8055 = call float @dx.op.unary.f32(i32 22, float %8053)  ; Frc(value)
  %8056 = fmul fast float %8055, 2.000000e+00
  %8057 = fadd fast float %8056, -1.000000e+00
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7919, float %7920, float %8054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.ResRet.f32 %8058, 3
  %8063 = fadd fast float %8059, -5.000000e-01
  %8064 = fadd fast float %8061, -5.000000e-01
  %8065 = fmul fast float %8063, 0xBFD5555560000000
  %8066 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8064, float %8065)  ; FMad(a,b,c)
  %8067 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8060, float 0.000000e+00)  ; FMad(a,b,c)
  %8068 = fadd fast float %8067, %8062
  %8069 = fmul fast float %8063, -7.500000e-01
  %8070 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8064, float %8069)  ; FMad(a,b,c)
  %8071 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8060, float 0.000000e+00)  ; FMad(a,b,c)
  %8072 = fadd fast float %8071, %8062
  %8073 = call float @dx.op.binary.f32(i32 35, float %8066, float -1.000000e+00)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 35, float %8068, float -1.000000e+00)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 35, float %8070, float -1.000000e+00)  ; FMax(a,b)
  %8076 = call float @dx.op.binary.f32(i32 35, float %8072, float -1.000000e+00)  ; FMax(a,b)
  %8077 = call float @dx.op.binary.f32(i32 36, float %8073, float 1.000000e+00)  ; FMin(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8074, float 1.000000e+00)  ; FMin(a,b)
  %8079 = call float @dx.op.binary.f32(i32 36, float %8075, float 1.000000e+00)  ; FMin(a,b)
  %8080 = call float @dx.op.binary.f32(i32 36, float %8076, float 1.000000e+00)  ; FMin(a,b)
  %8081 = fcmp fast olt float %8077, 0x3FEFFF8020000000
  br i1 %8081, label %8082, label %8197, !dx.controlflow.hints !168

; <label>:8082                                    ; preds = %8049
  %8083 = extractvalue %dx.types.CBufRet.f32 %7965, 3
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = extractvalue %dx.types.CBufRet.f32 %8084, 3
  %8089 = fsub fast float %8085, %8077
  %8090 = fsub fast float %8086, %8078
  %8091 = fsub fast float %8087, %8079
  %8092 = fsub fast float %8088, %8080
  %8093 = fmul fast float %8089, %8083
  %8094 = fmul fast float %8090, %8083
  %8095 = fmul fast float %8091, %8083
  %8096 = fmul fast float %8092, %8083
  %8097 = fadd fast float %8093, %8077
  %8098 = fadd fast float %8094, %8078
  %8099 = fsub fast float -0.000000e+00, %8098
  %8100 = fadd fast float %8095, %8079
  %8101 = fadd fast float %8096, %8080
  %8102 = fmul fast float %8097, %8097
  %8103 = fsub fast float %8098, %8102
  %8104 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8103)  ; FMax(a,b)
  %8105 = fdiv fast float 1.000000e+00, %8104
  %8106 = fmul fast float %8098, %8097
  %8107 = fsub fast float %8100, %8106
  %8108 = fsub fast float %8057, %8097
  %8109 = fmul fast float %8057, %8057
  %8110 = fsub fast float %8109, %8098
  %8111 = fmul fast float %8108, %8105
  %8112 = fmul fast float %8111, %8107
  %8113 = fsub fast float %8110, %8112
  %8114 = fmul fast float %8098, %8098
  %8115 = fsub fast float %8101, %8114
  %8116 = fmul fast float %8107, %8107
  %8117 = fmul fast float %8116, %8105
  %8118 = fsub fast float %8115, %8117
  %8119 = fdiv fast float %8113, %8118
  %8120 = fmul fast float %8107, %8119
  %8121 = fsub fast float %8108, %8120
  %8122 = fmul fast float %8121, %8105
  %8123 = fmul fast float %8122, %8097
  %8124 = fsub fast float 1.000000e+00, %8123
  %8125 = fmul fast float %8098, %8119
  %8126 = fsub fast float %8124, %8125
  %8127 = fmul fast float %8122, %8122
  %8128 = fmul fast float %8119, 4.000000e+00
  %8129 = fmul fast float %8128, %8126
  %8130 = fsub fast float %8127, %8129
  %8131 = call float @dx.op.unary.f32(i32 24, float %8130)  ; Sqrt(value)
  %8132 = fcmp fast oge float %8122, 0.000000e+00
  %8133 = fsub fast float -0.000000e+00, %8131
  %8134 = select i1 %8132, float %8133, float %8131
  %8135 = fsub fast float %8134, %8122
  %8136 = fdiv fast float %8135, %8119
  %8137 = fdiv fast float %8126, %8135
  %8138 = fmul fast float %8136, 5.000000e-01
  %8139 = fmul fast float %8137, 2.000000e+00
  %8140 = select i1 %8132, float %8138, float %8139
  %8141 = select i1 %8132, float %8139, float %8138
  %8142 = call float @dx.op.binary.f32(i32 35, float %8140, float %8141)  ; FMax(a,b)
  %8143 = call float @dx.op.binary.f32(i32 36, float %8140, float %8141)  ; FMin(a,b)
  %8144 = fcmp fast ogt float %8057, %8143
  br i1 %8144, label %8145, label %8155

; <label>:8145                                    ; preds = %8082
  %8146 = fsub fast float %8057, %8143
  %8147 = fsub fast float %8142, %8143
  %8148 = fmul fast float %8146, %8147
  %8149 = fmul fast float %8142, %8057
  %8150 = fadd fast float %8142, %8057
  %8151 = fmul fast float %8150, %8097
  %8152 = fadd fast float %8149, %8098
  %8153 = fsub fast float %8152, %8151
  %8154 = fdiv fast float %8153, %8148
  br label %8155

; <label>:8155                                    ; preds = %8145, %8082
  %8156 = phi float [ %8154, %8145 ], [ 0.000000e+00, %8082 ]
  %8157 = fcmp fast ogt float %8057, %8142
  %8158 = fsub fast float %8057, %8142
  br i1 %8157, label %8159, label %8169

; <label>:8159                                    ; preds = %8155
  %8160 = fsub fast float %8142, %8143
  %8161 = fmul fast float %8160, %8158
  %8162 = fmul fast float %8143, %8057
  %8163 = fadd fast float %8143, %8057
  %8164 = fmul fast float %8163, %8097
  %8165 = fsub fast float %8099, %8162
  %8166 = fadd fast float %8165, %8164
  %8167 = fdiv fast float %8166, %8161
  %8168 = fadd fast float %8167, %8156
  br label %8169

; <label>:8169                                    ; preds = %8159, %8155
  %8170 = phi float [ %8168, %8159 ], [ %8156, %8155 ]
  %8171 = fsub fast float %8057, %8143
  %8172 = fmul fast float %8171, %8158
  %8173 = fmul fast float %8143, %8142
  %8174 = fadd fast float %8143, %8142
  %8175 = fmul fast float %8174, %8097
  %8176 = fadd fast float %8173, %8098
  %8177 = fsub fast float %8176, %8175
  %8178 = fdiv fast float %8177, %8172
  %8179 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8180 = fcmp fast oeq float %6848, 0.000000e+00
  %8181 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %8182 = fcmp fast oeq float %8181, 0.000000e+00
  %8183 = or i1 %8180, %8182
  %8184 = fmul fast float %8181, 2.000000e+00
  %8185 = fadd fast float %7966, %7967
  %8186 = fdiv fast float %8185, %8184
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fmul fast float %8187, 2.000000e+00
  %8189 = fsub fast float 3.000000e+00, %8188
  %8190 = fmul fast float %8187, %8187
  %8191 = fmul fast float %8190, %8189
  %8192 = select i1 %8183, float 1.000000e+00, float %8191
  %8193 = fmul fast float %8178, %6848
  %8194 = fadd fast float %8179, %8193
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fmul fast float %8192, %8195
  br label %8197

; <label>:8197                                    ; preds = %8169, %8049
  %8198 = phi float [ %8196, %8169 ], [ 0.000000e+00, %8049 ]
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7919, float %7920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.i32 %8202, 2
  %8204 = icmp eq i32 %8203, 0
  br i1 %8204, label %8210, label %8205

; <label>:8205                                    ; preds = %8197
  %8206 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8207 = fadd fast float %8201, -1.000000e+00
  %8208 = fmul fast float %8206, %8207
  %8209 = fadd fast float %8208, 1.000000e+00
  br label %8210

; <label>:8210                                    ; preds = %8205, %8197
  %8211 = phi float [ %8209, %8205 ], [ %8199, %8197 ]
  br i1 %7973, label %8212, label %8230

; <label>:8212                                    ; preds = %8210
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8215 = fsub fast float %8050, %8214
  %8216 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8217 = fsub fast float %8050, %7972
  %8218 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8219 = fsub fast float %8216, %8218
  %8220 = fsub fast float %8052, %8218
  %8221 = fdiv fast float %8220, %8219
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = fmul fast float %8222, 2.000000e+00
  %8224 = fsub fast float 3.000000e+00, %8223
  %8225 = fsub fast float %8201, %8211
  %8226 = fmul fast float %8222, %8222
  %8227 = fmul fast float %8226, %8225
  %8228 = fmul fast float %8227, %8224
  %8229 = fadd fast float %8228, %8211
  br label %8230

; <label>:8230                                    ; preds = %8212, %8210
  %8231 = phi float [ %8229, %8212 ], [ %8211, %8210 ]
  %8232 = call float @dx.op.binary.f32(i32 35, float %8201, float %8231)  ; FMax(a,b)
  %8233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.i32 %8233, 2
  %8235 = and i32 %8234, 1
  %8236 = icmp eq i32 %8235, 0
  %8237 = fcmp fast une float %8232, 1.000000e+00
  %8238 = and i1 %8237, %8236
  br i1 %8238, label %8239, label %8258

; <label>:8239                                    ; preds = %8230
  %8240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7919, float %7920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.ResRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.ResRet.f32 %8240, 2
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8246 = fmul fast float %8245, %8241
  %8247 = fmul fast float %8245, %8242
  %8248 = fmul fast float %8245, %8243
  %8249 = fcmp fast ogt float %8201, 0x3FEFFF2E40000000
  %8250 = fsub fast float 1.000000e+00, %8232
  %8251 = fsub fast float 1.000000e+00, %8201
  %8252 = fdiv fast float %8250, %8251
  %8253 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8254 = select i1 %8249, float 0.000000e+00, float %8253
  %8255 = fmul fast float %8246, %8254
  %8256 = fmul fast float %8247, %8254
  %8257 = fmul fast float %8248, %8254
  br label %8258

; <label>:8258                                    ; preds = %8239, %8230
  %8259 = phi float [ 0.000000e+00, %8230 ], [ %8255, %8239 ]
  %8260 = phi float [ 0.000000e+00, %8230 ], [ %8256, %8239 ]
  %8261 = phi float [ 0.000000e+00, %8230 ], [ %8257, %8239 ]
  %8262 = fmul fast float %8259, %6836
  %8263 = fmul fast float %8260, %6836
  %8264 = fmul fast float %8261, %6836
  %8265 = fmul fast float %8232, %7894
  %8266 = call float @dx.op.dot3.f32(i32 55, float %8232, float %8232, float %8232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8267 = call float @dx.op.dot3.f32(i32 55, float %8262, float %8263, float %8264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8268 = select i1 %252, float %8266, float %8232
  %8269 = select i1 %252, float 1.000000e+00, float %8232
  %8270 = select i1 %252, float %8267, float %8262
  %8271 = select i1 %252, float 0.000000e+00, float %8263
  %8272 = select i1 %252, float 0.000000e+00, float %8264
  %8273 = fmul fast float %8268, %7906
  %8274 = fmul fast float %8268, %7907
  %8275 = fmul fast float %8269, %7908
  %8276 = fadd fast float %8273, %8270
  %8277 = fadd fast float %8274, %8271
  %8278 = fadd fast float %8272, %8275
  %8279 = fmul fast float %8268, %7909
  %8280 = fmul fast float %8268, %7910
  %8281 = fmul fast float %8269, %7911
  br label %8282

; <label>:8282                                    ; preds = %8258, %7915, %7884, %7116
  %8283 = phi float [ %7121, %7116 ], [ %7906, %7884 ], [ %8276, %8258 ], [ %7906, %7915 ]
  %8284 = phi float [ %7122, %7116 ], [ %7907, %7884 ], [ %8277, %8258 ], [ %7907, %7915 ]
  %8285 = phi float [ %7123, %7116 ], [ %7908, %7884 ], [ %8278, %8258 ], [ %7908, %7915 ]
  %8286 = phi float [ %7124, %7116 ], [ %7909, %7884 ], [ %8279, %8258 ], [ %7909, %7915 ]
  %8287 = phi float [ %7125, %7116 ], [ %7910, %7884 ], [ %8280, %8258 ], [ %7910, %7915 ]
  %8288 = phi float [ %7126, %7116 ], [ %7911, %7884 ], [ %8281, %8258 ], [ %7911, %7915 ]
  %8289 = phi float [ %7127, %7116 ], [ %7894, %7884 ], [ %8265, %8258 ], [ %7894, %7915 ]
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 2
  %8292 = extractvalue %dx.types.CBufRet.f32 %8290, 3
  %8293 = fmul fast float %8291, %95
  %8294 = fmul fast float %8292, %96
  %8295 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  %8296 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8297 = select i1 %6858, i32 2, i32 0
  %8298 = or i32 %8297, 1
  %8299 = uitofp i32 %8298 to float
  %8300 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8295, float %8296, float %8299, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8301 = extractvalue %dx.types.ResRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.ResRet.f32 %8300, 1
  %8303 = extractvalue %dx.types.ResRet.f32 %8300, 2
  %8304 = extractvalue %dx.types.ResRet.f32 %8300, 3
  %8305 = add nuw nsw i32 %8297, 2
  %8306 = uitofp i32 %8305 to float
  %8307 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8295, float %8296, float %8306, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8308 = extractvalue %dx.types.ResRet.f32 %8307, 0
  %8309 = extractvalue %dx.types.ResRet.f32 %8307, 1
  %8310 = extractvalue %dx.types.ResRet.f32 %8307, 2
  %8311 = extractvalue %dx.types.ResRet.f32 %8307, 3
  %8312 = call float @dx.op.binary.f32(i32 35, float %8302, float %8303)  ; FMax(a,b)
  %8313 = call float @dx.op.binary.f32(i32 35, float %8301, float %8312)  ; FMax(a,b)
  %8314 = call float @dx.op.binary.f32(i32 35, float %8313, float %8304)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 36, float %8309, float %8310)  ; FMin(a,b)
  %8316 = call float @dx.op.binary.f32(i32 36, float %8308, float %8315)  ; FMin(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8316, float %8311)  ; FMin(a,b)
  %8318 = fmul fast float %8314, 2.550000e+02
  %8319 = fadd fast float %8318, 0x3F70101020000000
  %8320 = fptoui float %8319 to i32
  %8321 = fmul fast float %8317, 2.550000e+02
  %8322 = fadd fast float %8321, 0x3F70101020000000
  %8323 = fptoui float %8322 to i32
  %8324 = icmp ult i32 %8320, %8323
  br i1 %8324, label %8325, label %8494

; <label>:8325                                    ; preds = %8282
  %8326 = fcmp fast ogt float %85, 9.843750e-01
  %8327 = fadd fast float %7120, -4.000000e+00
  %8328 = select i1 %8326, float -4.000000e+00, float %8327
  %8329 = call float @dx.op.binary.f32(i32 35, float %8328, float 0.000000e+00)  ; FMax(a,b)
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = fadd fast float %8331, %8329
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = fmul fast float %8332, %8333
  %8335 = call float @dx.op.unary.f32(i32 23, float %8334)  ; Log(value)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8337 = fmul fast float %8336, %8335
  %8338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8339 = extractvalue %dx.types.CBufRet.f32 %8338, 2
  %8340 = fmul fast float %8337, %8339
  %8341 = call float @dx.op.unary.f32(i32 7, float %8340)  ; Saturate(value)
  %8342 = uitofp i32 %8320 to float
  %8343 = uitofp i32 %8323 to float
  %8344 = fadd fast float %8342, 5.000000e-01
  %8345 = fadd fast float %8343, 5.000000e-01
  %8346 = fmul fast float %8339, %8344
  %8347 = fmul fast float %8339, %8345
  %8348 = fadd fast float %8346, 0x3F0FFB4800000000
  %8349 = fadd fast float %8347, 0xBF0FFB4800000000
  %8350 = call float @dx.op.binary.f32(i32 35, float %8341, float %8348)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 36, float %8350, float %8349)  ; FMin(a,b)
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8355 = extractvalue %dx.types.CBufRet.f32 %8352, 0
  %8356 = select i1 %6858, float %8355, float 0.000000e+00
  %8357 = fmul fast float %8353, %8351
  %8358 = fadd fast float %8356, %8357
  %8359 = fadd fast float %8356, %8354
  %8360 = fsub fast float %8353, %8354
  %8361 = fadd fast float %8360, %8356
  %8362 = call float @dx.op.binary.f32(i32 35, float %8358, float %8359)  ; FMax(a,b)
  %8363 = call float @dx.op.binary.f32(i32 36, float %8362, float %8361)  ; FMin(a,b)
  %8364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8295, float %8296, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8365 = extractvalue %dx.types.ResRet.f32 %8364, 0
  %8366 = extractvalue %dx.types.ResRet.f32 %8364, 1
  %8367 = extractvalue %dx.types.ResRet.f32 %8364, 2
  %8368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.i32 %8368, 0
  %8370 = extractvalue %dx.types.CBufRet.i32 %8368, 1
  %8371 = uitofp i32 %8369 to float
  %8372 = uitofp i32 %8370 to float
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 1
  %8376 = fmul fast float %8371, %8295
  %8377 = fmul fast float %8372, %8296
  %8378 = fadd fast float %8376, -5.000000e-01
  %8379 = fadd fast float %8377, -5.000000e-01
  %8380 = call float @dx.op.unary.f32(i32 22, float %8378)  ; Frc(value)
  %8381 = call float @dx.op.unary.f32(i32 22, float %8379)  ; Frc(value)
  %8382 = fmul fast float %8380, %8380
  %8383 = fmul fast float %8382, %8380
  %8384 = fsub fast float 3.000000e+00, %8380
  %8385 = fmul fast float %8382, %8384
  %8386 = fmul fast float %8380, 3.000000e+00
  %8387 = fmul fast float %8383, 3.000000e+00
  %8388 = fmul fast float %8382, 6.000000e+00
  %8389 = fsub fast float %8387, %8388
  %8390 = fadd fast float %8389, 4.000000e+00
  %8391 = fmul fast float %8390, 0x3FC5555560000000
  %8392 = fmul fast float %8383, -3.000000e+00
  %8393 = fadd fast float %8382, %8380
  %8394 = fmul fast float %8393, 3.000000e+00
  %8395 = fadd fast float %8392, 1.000000e+00
  %8396 = fadd fast float %8395, %8394
  %8397 = fmul fast float %8383, 0x3FC5555560000000
  %8398 = fmul fast float %8381, %8381
  %8399 = fmul fast float %8398, %8381
  %8400 = fsub fast float 3.000000e+00, %8381
  %8401 = fmul fast float %8398, %8400
  %8402 = fmul fast float %8381, 3.000000e+00
  %8403 = fmul fast float %8399, 3.000000e+00
  %8404 = fmul fast float %8398, 6.000000e+00
  %8405 = fsub fast float %8403, %8404
  %8406 = fadd fast float %8405, 4.000000e+00
  %8407 = fmul fast float %8406, 0x3FC5555560000000
  %8408 = fmul fast float %8399, -3.000000e+00
  %8409 = fadd fast float %8398, %8381
  %8410 = fmul fast float %8409, 3.000000e+00
  %8411 = fadd fast float %8408, 1.000000e+00
  %8412 = fadd fast float %8411, %8410
  %8413 = fmul fast float %8399, 0x3FC5555560000000
  %8414 = fadd fast float %8380, 1.000000e+00
  %8415 = fsub fast float 1.000000e+00, %8386
  %8416 = fadd fast float %8415, %8385
  %8417 = fadd fast float %8416, %8390
  %8418 = fmul fast float %8417, 0x3FC5555560000000
  %8419 = fdiv fast float %8391, %8418
  %8420 = fsub fast float %8414, %8419
  %8421 = fsub fast float 1.000000e+00, %8380
  %8422 = fadd fast float %8396, %8383
  %8423 = fmul fast float %8422, 0x3FC5555560000000
  %8424 = fdiv fast float %8397, %8423
  %8425 = fadd fast float %8421, %8424
  %8426 = fadd fast float %8381, 1.000000e+00
  %8427 = fsub fast float 1.000000e+00, %8402
  %8428 = fadd fast float %8427, %8401
  %8429 = fadd fast float %8428, %8406
  %8430 = fmul fast float %8429, 0x3FC5555560000000
  %8431 = fdiv fast float %8407, %8430
  %8432 = fsub fast float %8426, %8431
  %8433 = fsub fast float 1.000000e+00, %8381
  %8434 = fadd fast float %8412, %8399
  %8435 = fmul fast float %8434, 0x3FC5555560000000
  %8436 = fdiv fast float %8413, %8435
  %8437 = fadd fast float %8436, %8433
  %8438 = fmul fast float %8420, %8374
  %8439 = fsub fast float %8295, %8438
  %8440 = fmul fast float %8425, %8374
  %8441 = fadd fast float %8440, %8295
  %8442 = fmul fast float %8437, %8375
  %8443 = fadd fast float %8442, %8296
  %8444 = fmul fast float %8432, %8375
  %8445 = fsub fast float %8296, %8444
  %8446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8439, float %8445, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8441, float %8445, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8451 = extractvalue %dx.types.ResRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.ResRet.f32 %8450, 1
  %8453 = extractvalue %dx.types.ResRet.f32 %8450, 2
  %8454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8439, float %8443, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.ResRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.ResRet.f32 %8454, 2
  %8458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8441, float %8443, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8459 = extractvalue %dx.types.ResRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.ResRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.ResRet.f32 %8458, 2
  %8462 = fsub fast float %8455, %8447
  %8463 = fsub fast float %8456, %8448
  %8464 = fsub fast float %8457, %8449
  %8465 = fmul fast float %8462, %8435
  %8466 = fmul fast float %8463, %8435
  %8467 = fmul fast float %8464, %8435
  %8468 = fadd fast float %8465, %8447
  %8469 = fadd fast float %8466, %8448
  %8470 = fadd fast float %8467, %8449
  %8471 = fsub fast float %8459, %8451
  %8472 = fsub fast float %8460, %8452
  %8473 = fsub fast float %8461, %8453
  %8474 = fmul fast float %8471, %8435
  %8475 = fmul fast float %8472, %8435
  %8476 = fmul fast float %8473, %8435
  %8477 = fsub fast float %8451, %8468
  %8478 = fadd fast float %8477, %8474
  %8479 = fsub fast float %8452, %8469
  %8480 = fadd fast float %8479, %8475
  %8481 = fsub fast float %8453, %8470
  %8482 = fadd fast float %8481, %8476
  %8483 = fmul fast float %8478, %8423
  %8484 = fmul fast float %8480, %8423
  %8485 = fmul fast float %8482, %8423
  %8486 = fadd fast float %8483, %8468
  %8487 = fadd fast float %8484, %8469
  %8488 = fadd fast float %8485, %8470
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8491 = fmul fast float %8486, %8490
  %8492 = fmul fast float %8487, %8490
  %8493 = fmul fast float %8488, %8490
  br label %8494

; <label>:8494                                    ; preds = %8325, %8282
  %8495 = phi float [ %8365, %8325 ], [ 1.000000e+00, %8282 ]
  %8496 = phi float [ %8366, %8325 ], [ 1.000000e+00, %8282 ]
  %8497 = phi float [ %8367, %8325 ], [ 1.000000e+00, %8282 ]
  %8498 = phi float [ %8491, %8325 ], [ 0.000000e+00, %8282 ]
  %8499 = phi float [ %8492, %8325 ], [ 0.000000e+00, %8282 ]
  %8500 = phi float [ %8493, %8325 ], [ 0.000000e+00, %8282 ]
  %8501 = fmul fast float %8498, %6836
  %8502 = fmul fast float %8499, %6836
  %8503 = fmul fast float %8500, %6836
  %8504 = fmul fast float %8495, %8289
  %8505 = call float @dx.op.dot3.f32(i32 55, float %8495, float %8496, float %8497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8506 = call float @dx.op.dot3.f32(i32 55, float %8501, float %8502, float %8503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8507 = select i1 %252, float %8505, float %8495
  %8508 = select i1 %252, float %8505, float %8496
  %8509 = select i1 %252, float 1.000000e+00, float %8497
  %8510 = select i1 %252, float %8506, float %8501
  %8511 = select i1 %252, float 0.000000e+00, float %8502
  %8512 = select i1 %252, float 0.000000e+00, float %8503
  %8513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.i32 %8513, 3
  %8515 = and i32 %8514, 3
  %8516 = icmp ne i32 %8515, 0
  %8517 = and i32 %8514, 4
  %8518 = icmp ne i32 %8517, 0
  %8519 = and i1 %8516, %8518
  %8520 = and i1 %252, %8519
  br i1 %8520, label %8521, label %8527

; <label>:8521                                    ; preds = %8494
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8524 = fadd fast float %8504, -1.000000e+00
  %8525 = fmul fast float %8523, %8524
  %8526 = fadd fast float %8525, 1.000000e+00
  br label %8527

; <label>:8527                                    ; preds = %8521, %8494
  %8528 = phi float [ %8526, %8521 ], [ %8504, %8494 ]
  %8529 = fadd fast float %8286, %8283
  %8530 = fmul fast float %8507, %8529
  %8531 = fadd fast float %8530, %8510
  %8532 = fadd fast float %8287, %8284
  %8533 = fmul fast float %8508, %8532
  %8534 = fadd fast float %8533, %8511
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  br i1 %252, label %8537, label %8561

; <label>:8537                                    ; preds = %8527
  %8538 = fadd fast float %8531, %8534
  %8539 = fmul fast float %8536, %8538
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8542 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %8543 = fsub fast float %6845, %6839
  %8544 = fadd fast float %8543, %6846
  %8545 = fsub fast float %8544, %8542
  %8546 = extractvalue %dx.types.CBufRet.f32 %6840, 2
  %8547 = fmul fast float %8545, %8546
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fsub fast float %8548, %8541
  %8550 = fmul fast float %8549, %8528
  %8551 = fadd fast float %8550, %8541
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = fsub fast float %8551, %8553
  %8555 = fmul fast float %8554, 1.000000e+01
  %8556 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8557 = fsub fast float %4290, %6836
  %8558 = fmul fast float %8556, %8557
  %8559 = fadd fast float %8558, %6836
  %8560 = fmul fast float %8559, %8551
  br label %8585

; <label>:8561                                    ; preds = %8527
  %8562 = fadd fast float %8288, %8285
  %8563 = fmul fast float %8509, %8562
  %8564 = fadd fast float %8563, %8512
  %8565 = fmul fast float %8536, %8531
  %8566 = fmul fast float %8536, %8534
  %8567 = fmul fast float %8536, %8564
  %8568 = call float @dx.op.binary.f32(i32 35, float %8566, float %8567)  ; FMax(a,b)
  %8569 = call float @dx.op.binary.f32(i32 35, float %8565, float %8568)  ; FMax(a,b)
  %8570 = call float @dx.op.binary.f32(i32 35, float %8569, float %6836)  ; FMax(a,b)
  %8571 = fcmp fast ugt float %8570, 0x3F10000000000000
  br i1 %8571, label %8573, label %8572

; <label>:8572                                    ; preds = %8561
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8573

; <label>:8573                                    ; preds = %8572, %8561
  %8574 = add i32 %54, 356
  %8575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8574, i32 undef)  ; BufferLoad(srv,index,wot)
  %8576 = extractvalue %dx.types.ResRet.i32 %8575, 0
  %8577 = and i32 %8576, 32
  %8578 = icmp eq i32 %8577, 0
  br i1 %8578, label %8585, label %8579

; <label>:8579                                    ; preds = %8573
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = fmul fast float %8581, 0x3FE99999A0000000
  %8583 = fadd fast float %8581, %8565
  %8584 = fadd fast float %8582, %8567
  br label %8585

; <label>:8585                                    ; preds = %8579, %8573, %8537
  %8586 = phi float [ %8539, %8537 ], [ %8583, %8579 ], [ %8565, %8573 ]
  %8587 = phi float [ %8560, %8537 ], [ %8566, %8579 ], [ %8566, %8573 ]
  %8588 = phi float [ %8559, %8537 ], [ %8584, %8579 ], [ %8567, %8573 ]
  %8589 = phi float [ %8559, %8537 ], [ %6836, %8579 ], [ %6836, %8573 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8586, float 3.225500e+04)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8587, float 3.225500e+04)  ; FMin(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8588, float 3.225500e+04)  ; FMin(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8589, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

