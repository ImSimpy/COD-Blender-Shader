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
; shader hash: ed711e09e98efedfff6224fabdf9ef9a
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
  %400 = add i32 %54, 348
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
  %414 = add i32 %54, 492
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
  %789 = add i32 %54, 460
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
  %970 = add i32 %54, 356
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
  %1123 = phi float [ 0.000000e+00, %456 ], [ %976, %1103 ]
  %1124 = phi float [ 0.000000e+00, %456 ], [ %977, %1103 ]
  %1125 = phi float [ 0.000000e+00, %456 ], [ %978, %1103 ]
  %1126 = phi float [ 0.000000e+00, %456 ], [ %1104, %1103 ]
  %1127 = phi float [ 0.000000e+00, %456 ], [ %1105, %1103 ]
  %1128 = phi float [ 0.000000e+00, %456 ], [ %1106, %1103 ]
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
  %1464 = add i32 %54, 464
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
  %1645 = add i32 %54, 356
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
  %1797 = fmul fast float %1796, %1123
  %1798 = fmul fast float %1796, %1124
  %1799 = fmul fast float %1796, %1125
  %1800 = fmul fast float %1796, %1126
  %1801 = fmul fast float %1796, %1127
  %1802 = fmul fast float %1796, %1128
  br label %1803

; <label>:1803                                    ; preds = %1795, %1778
  %1804 = phi float [ %1797, %1795 ], [ %1123, %1778 ]
  %1805 = phi float [ %1798, %1795 ], [ %1124, %1778 ]
  %1806 = phi float [ %1799, %1795 ], [ %1125, %1778 ]
  %1807 = phi float [ %1800, %1795 ], [ %1126, %1778 ]
  %1808 = phi float [ %1801, %1795 ], [ %1127, %1778 ]
  %1809 = phi float [ %1802, %1795 ], [ %1128, %1778 ]
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
  %1823 = fsub fast float %1651, %1804
  %1824 = fsub fast float %1652, %1805
  %1825 = fsub fast float %1653, %1806
  %1826 = fmul fast float %1817, %1823
  %1827 = fmul fast float %1817, %1824
  %1828 = fmul fast float %1817, %1825
  %1829 = fadd fast float %1826, %1804
  %1830 = fadd fast float %1827, %1805
  %1831 = fadd fast float %1828, %1806
  %1832 = fsub fast float %1637, %1129
  %1833 = fmul fast float %1817, %1832
  %1834 = fadd fast float %1833, %1129
  %1835 = fsub fast float %1779, %1807
  %1836 = fsub fast float %1780, %1808
  %1837 = fsub fast float %1781, %1809
  %1838 = fmul fast float %1822, %1835
  %1839 = fmul fast float %1822, %1836
  %1840 = fmul fast float %1822, %1837
  %1841 = fadd fast float %1838, %1807
  %1842 = fadd fast float %1839, %1808
  %1843 = fadd fast float %1840, %1809
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
  %1859 = fmul fast float %1856, %1804
  %1860 = fmul fast float %1857, %1805
  %1861 = fmul fast float %1858, %1806
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
  %1879 = fmul fast float %1878, %1804
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1804
  %1882 = fmul fast float %1875, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1805
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1805
  %1887 = fmul fast float %1876, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1806
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1806
  br label %1892

; <label>:1892                                    ; preds = %1864, %1862, %1849, %1819, %1803
  %1893 = phi float [ %1804, %1803 ], [ %1881, %1864 ], [ %1804, %1862 ], [ %1859, %1849 ], [ %1829, %1819 ]
  %1894 = phi float [ %1805, %1803 ], [ %1886, %1864 ], [ %1805, %1862 ], [ %1860, %1849 ], [ %1830, %1819 ]
  %1895 = phi float [ %1806, %1803 ], [ %1891, %1864 ], [ %1806, %1862 ], [ %1861, %1849 ], [ %1831, %1819 ]
  %1896 = phi float [ %1807, %1803 ], [ %1807, %1864 ], [ %1807, %1862 ], [ %1807, %1849 ], [ %1841, %1819 ]
  %1897 = phi float [ %1808, %1803 ], [ %1808, %1864 ], [ %1808, %1862 ], [ %1808, %1849 ], [ %1842, %1819 ]
  %1898 = phi float [ %1809, %1803 ], [ %1809, %1864 ], [ %1809, %1862 ], [ %1809, %1849 ], [ %1843, %1819 ]
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
  %2318 = add i32 %54, 468
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
  %2499 = add i32 %54, 356
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
  %2651 = fmul fast float %2650, %1978
  %2652 = fmul fast float %2650, %1979
  %2653 = fmul fast float %2650, %1980
  %2654 = fmul fast float %2650, %1981
  %2655 = fmul fast float %2650, %1982
  %2656 = fmul fast float %2650, %1983
  br label %2657

; <label>:2657                                    ; preds = %2649, %2632
  %2658 = phi float [ %2651, %2649 ], [ %1978, %2632 ]
  %2659 = phi float [ %2652, %2649 ], [ %1979, %2632 ]
  %2660 = phi float [ %2653, %2649 ], [ %1980, %2632 ]
  %2661 = phi float [ %2654, %2649 ], [ %1981, %2632 ]
  %2662 = phi float [ %2655, %2649 ], [ %1982, %2632 ]
  %2663 = phi float [ %2656, %2649 ], [ %1983, %2632 ]
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
  %2677 = fsub fast float %2505, %2658
  %2678 = fsub fast float %2506, %2659
  %2679 = fsub fast float %2507, %2660
  %2680 = fmul fast float %2671, %2677
  %2681 = fmul fast float %2671, %2678
  %2682 = fmul fast float %2671, %2679
  %2683 = fadd fast float %2680, %2658
  %2684 = fadd fast float %2681, %2659
  %2685 = fadd fast float %2682, %2660
  %2686 = fsub fast float %2491, %1984
  %2687 = fmul fast float %2671, %2686
  %2688 = fadd fast float %2687, %1984
  %2689 = fsub fast float %2633, %2661
  %2690 = fsub fast float %2634, %2662
  %2691 = fsub fast float %2635, %2663
  %2692 = fmul fast float %2676, %2689
  %2693 = fmul fast float %2676, %2690
  %2694 = fmul fast float %2676, %2691
  %2695 = fadd fast float %2692, %2661
  %2696 = fadd fast float %2693, %2662
  %2697 = fadd fast float %2694, %2663
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
  %2713 = fmul fast float %2710, %2658
  %2714 = fmul fast float %2711, %2659
  %2715 = fmul fast float %2712, %2660
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
  %2733 = fmul fast float %2732, %2658
  %2734 = fadd fast float %2733, %2731
  %2735 = fmul fast float %2734, %2658
  %2736 = fmul fast float %2729, 2.000000e+00
  %2737 = fsub fast float 1.000000e+00, %2736
  %2738 = fmul fast float %2737, %2659
  %2739 = fadd fast float %2738, %2736
  %2740 = fmul fast float %2739, %2659
  %2741 = fmul fast float %2730, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2660
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2660
  br label %2746

; <label>:2746                                    ; preds = %2718, %2716, %2703, %2673, %2657
  %2747 = phi float [ %2658, %2657 ], [ %2735, %2718 ], [ %2658, %2716 ], [ %2713, %2703 ], [ %2683, %2673 ]
  %2748 = phi float [ %2659, %2657 ], [ %2740, %2718 ], [ %2659, %2716 ], [ %2714, %2703 ], [ %2684, %2673 ]
  %2749 = phi float [ %2660, %2657 ], [ %2745, %2718 ], [ %2660, %2716 ], [ %2715, %2703 ], [ %2685, %2673 ]
  %2750 = phi float [ %2661, %2657 ], [ %2661, %2718 ], [ %2661, %2716 ], [ %2661, %2703 ], [ %2695, %2673 ]
  %2751 = phi float [ %2662, %2657 ], [ %2662, %2718 ], [ %2662, %2716 ], [ %2662, %2703 ], [ %2696, %2673 ]
  %2752 = phi float [ %2663, %2657 ], [ %2663, %2718 ], [ %2663, %2716 ], [ %2663, %2703 ], [ %2697, %2673 ]
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
  %3172 = add i32 %54, 472
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
  %3353 = add i32 %54, 356
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
  %3505 = fmul fast float %3504, %2832
  %3506 = fmul fast float %3504, %2833
  %3507 = fmul fast float %3504, %2834
  %3508 = fmul fast float %3504, %2835
  %3509 = fmul fast float %3504, %2836
  %3510 = fmul fast float %3504, %2837
  br label %3511

; <label>:3511                                    ; preds = %3503, %3486
  %3512 = phi float [ %3505, %3503 ], [ %2832, %3486 ]
  %3513 = phi float [ %3506, %3503 ], [ %2833, %3486 ]
  %3514 = phi float [ %3507, %3503 ], [ %2834, %3486 ]
  %3515 = phi float [ %3508, %3503 ], [ %2835, %3486 ]
  %3516 = phi float [ %3509, %3503 ], [ %2836, %3486 ]
  %3517 = phi float [ %3510, %3503 ], [ %2837, %3486 ]
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
  %3531 = fsub fast float %3359, %3512
  %3532 = fsub fast float %3360, %3513
  %3533 = fsub fast float %3361, %3514
  %3534 = fmul fast float %3525, %3531
  %3535 = fmul fast float %3525, %3532
  %3536 = fmul fast float %3525, %3533
  %3537 = fadd fast float %3534, %3512
  %3538 = fadd fast float %3535, %3513
  %3539 = fadd fast float %3536, %3514
  %3540 = fsub fast float %3345, %2838
  %3541 = fmul fast float %3525, %3540
  %3542 = fadd fast float %3541, %2838
  %3543 = fsub fast float %3487, %3515
  %3544 = fsub fast float %3488, %3516
  %3545 = fsub fast float %3489, %3517
  %3546 = fmul fast float %3530, %3543
  %3547 = fmul fast float %3530, %3544
  %3548 = fmul fast float %3530, %3545
  %3549 = fadd fast float %3546, %3515
  %3550 = fadd fast float %3547, %3516
  %3551 = fadd fast float %3548, %3517
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
  %3567 = fmul fast float %3564, %3512
  %3568 = fmul fast float %3565, %3513
  %3569 = fmul fast float %3566, %3514
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
  %3587 = fmul fast float %3586, %3512
  %3588 = fadd fast float %3587, %3585
  %3589 = fmul fast float %3588, %3512
  %3590 = fmul fast float %3583, 2.000000e+00
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3591, %3513
  %3593 = fadd fast float %3592, %3590
  %3594 = fmul fast float %3593, %3513
  %3595 = fmul fast float %3584, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3514
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3514
  br label %3600

; <label>:3600                                    ; preds = %3572, %3570, %3557, %3527, %3511
  %3601 = phi float [ %3512, %3511 ], [ %3589, %3572 ], [ %3512, %3570 ], [ %3567, %3557 ], [ %3537, %3527 ]
  %3602 = phi float [ %3513, %3511 ], [ %3594, %3572 ], [ %3513, %3570 ], [ %3568, %3557 ], [ %3538, %3527 ]
  %3603 = phi float [ %3514, %3511 ], [ %3599, %3572 ], [ %3514, %3570 ], [ %3569, %3557 ], [ %3539, %3527 ]
  %3604 = phi float [ %3515, %3511 ], [ %3515, %3572 ], [ %3515, %3570 ], [ %3515, %3557 ], [ %3549, %3527 ]
  %3605 = phi float [ %3516, %3511 ], [ %3516, %3572 ], [ %3516, %3570 ], [ %3516, %3557 ], [ %3550, %3527 ]
  %3606 = phi float [ %3517, %3511 ], [ %3517, %3572 ], [ %3517, %3570 ], [ %3517, %3557 ], [ %3551, %3527 ]
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
  %3696 = add i32 %54, 360
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = extractvalue %dx.types.ResRet.i32 %3697, 1
  %3700 = bitcast i32 %3698 to float
  %3701 = bitcast i32 %3699 to float
  %3702 = fcmp fast oge float %3700, 0.000000e+00
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = select i1 %3702, float %3700, float %3704
  %3706 = add i32 %54, 456
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = add i32 %3708, 0
  %3710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3710, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = fmul fast float %3712, %3701
  %3714 = fadd fast float %3713, %3705
  %3715 = call float @dx.op.dot2.f32(i32 54, float %3684, float %3685, float %3684, float %3685)  ; Dot2(ax,ay,bx,by)
  %3716 = fmul fast float %3715, 0x3FE3333340000000
  %3717 = fsub fast float 1.000000e+00, %3716
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3717, float %3684, float %3685, float %3717)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = call float @dx.op.unary.f32(i32 25, float %3718)  ; Rsqrt(value)
  %3720 = fmul fast float %3719, %3684
  %3721 = fmul fast float %3719, %3685
  %3722 = fmul fast float %3717, %3719
  %3723 = fmul fast float %3722, %102
  %3724 = fmul fast float %3722, %103
  %3725 = fmul fast float %3722, %104
  %3726 = fmul fast float %3720, %70
  %3727 = fmul fast float %3720, %71
  %3728 = fmul fast float %3720, %72
  %3729 = fadd fast float %3723, %3726
  %3730 = fadd fast float %3724, %3727
  %3731 = fadd fast float %3725, %3728
  %3732 = fmul fast float %114, %3721
  %3733 = fmul fast float %115, %3721
  %3734 = fmul fast float %116, %3721
  %3735 = fadd fast float %3729, %3732
  %3736 = fadd fast float %3730, %3733
  %3737 = fadd fast float %3731, %3734
  %3738 = call float @dx.op.dot3.f32(i32 55, float %3735, float %3736, float %3737, float %3735, float %3736, float %3737)  ; Dot3(ax,ay,az,bx,by,bz)
  %3739 = call float @dx.op.unary.f32(i32 25, float %3738)  ; Rsqrt(value)
  %3740 = fmul fast float %3735, %3739
  %3741 = fmul fast float %3736, %3739
  %3742 = fmul fast float %3737, %3739
  %3743 = and i32 %56, 1
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3745, label %4253

; <label>:3745                                    ; preds = %3683
  %3746 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3747 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3748 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3749 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3750 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3751 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3752 = fadd fast float %3746, %158
  %3753 = fadd fast float %3747, %159
  %3754 = fadd fast float %3748, %160
  %3755 = fadd fast float %3749, %158
  %3756 = fadd fast float %3750, %159
  %3757 = fadd fast float %3751, %160
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3764 = extractvalue %dx.types.CBufRet.f32 %3762, 3
  %3765 = fmul fast float %3759, %95
  %3766 = fmul fast float %3765, %3763
  %3767 = fmul fast float %3760, %96
  %3768 = fmul fast float %3767, %3764
  %3769 = fptoui float %3766 to i32
  %3770 = fptoui float %3768 to i32
  %3771 = fadd fast float %3759, -1.000000e+00
  %3772 = fadd fast float %3760, -1.000000e+00
  %3773 = fptoui float %3771 to i32
  %3774 = fptoui float %3772 to i32
  %3775 = call i32 @dx.op.binary.i32(i32 40, i32 %3769, i32 %3773)  ; UMin(a,b)
  %3776 = call i32 @dx.op.binary.i32(i32 40, i32 %3770, i32 %3774)  ; UMin(a,b)
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3779 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3780 = fmul fast float %3778, %86
  %3781 = fsub fast float %3780, %3779
  %3782 = fadd fast float %3761, -1.000000e+00
  %3783 = call float @dx.op.binary.f32(i32 36, float %3781, float %3782)  ; FMin(a,b)
  %3784 = fptoui float %3783 to i32
  %3785 = fptoui float %3759 to i32
  %3786 = fptoui float %3760 to i32
  %3787 = mul i32 %3784, %3786
  %3788 = add i32 %3787, %3776
  %3789 = mul i32 %3788, %3785
  %3790 = add i32 %3789, %3775
  %3791 = shl i32 %3790, 2
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = and i32 %3793, 1023
  %3795 = lshr i32 %3793, 10
  %3796 = icmp eq i32 %3794, 0
  br i1 %3796, label %4222, label %3797

; <label>:3797                                    ; preds = %3745
  %3798 = and i32 %3793, 1023
  br label %3799

; <label>:3799                                    ; preds = %3925, %3797
  %3800 = phi i32 [ %3875, %3925 ], [ 0, %3797 ]
  %3801 = phi float [ %3926, %3925 ], [ 0.000000e+00, %3797 ]
  %3802 = phi float [ %3927, %3925 ], [ %3714, %3797 ]
  %3803 = phi float [ %3928, %3925 ], [ %3695, %3797 ]
  %3804 = phi float [ %3929, %3925 ], [ 0.000000e+00, %3797 ]
  %3805 = phi float [ %3930, %3925 ], [ 0.000000e+00, %3797 ]
  %3806 = phi float [ %3931, %3925 ], [ %3689, %3797 ]
  %3807 = phi float [ %3932, %3925 ], [ %3690, %3797 ]
  %3808 = phi float [ %3933, %3925 ], [ %3691, %3797 ]
  %3809 = phi float [ %3934, %3925 ], [ %3740, %3797 ]
  %3810 = phi float [ %3935, %3925 ], [ %3741, %3797 ]
  %3811 = phi float [ %3936, %3925 ], [ %3742, %3797 ]
  %3812 = phi float [ %3937, %3925 ], [ %3694, %3797 ]
  %3813 = phi float [ %3938, %3925 ], [ %3693, %3797 ]
  %3814 = phi float [ %3939, %3925 ], [ 0.000000e+00, %3797 ]
  %3815 = phi float [ %3940, %3925 ], [ %3692, %3797 ]
  %3816 = phi float [ %3941, %3925 ], [ %3686, %3797 ]
  %3817 = phi float [ %3942, %3925 ], [ %3687, %3797 ]
  %3818 = phi float [ %3943, %3925 ], [ %3688, %3797 ]
  %3819 = add nuw nsw i32 %3800, %3795
  %3820 = shl i32 %3819, 2
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = shl i32 %3822, 8
  %3824 = or i32 %3823, 48
  %3825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3830 = or i32 %3823, 64
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.i32 %3831, 1
  %3834 = or i32 %3823, 80
  %3835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 3
  %3838 = or i32 %3823, 96
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = or i32 %3823, 112
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3847 = or i32 %3823, 128
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = or i32 %3823, 144
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = or i32 %3823, 160
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3865 = or i32 %3823, 192
  %3866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.i32 %3866, 0
  %3868 = or i32 %3823, 208
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = or i32 %3823, 248
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = add nuw nsw i32 %3800, 1
  %3876 = bitcast float %3829 to i32
  %3877 = and i32 %3876, 512
  %3878 = icmp eq i32 %3877, 0
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3885 = or i32 %3823, 16
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3887, float %3888, float %3889, float %3890, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = or i32 %3823, 32
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3893, 3
  %3898 = call float @dx.op.dot4.f32(i32 56, float %3894, float %3895, float %3896, float %3897, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3899 = call float @dx.op.unary.f32(i32 27, float %3884)  ; Round_ni(value)
  %3900 = call float @dx.op.unary.f32(i32 6, float %3899)  ; FAbs(value)
  %3901 = call float @dx.op.unary.f32(i32 27, float %3891)  ; Round_ni(value)
  %3902 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3903 = call float @dx.op.unary.f32(i32 6, float %3898)  ; FAbs(value)
  %3904 = call float @dx.op.unary.f32(i32 27, float %3903)  ; Round_ni(value)
  %3905 = fadd fast float %3902, %3900
  %3906 = fadd fast float %3905, %3904
  %3907 = fcmp fast oeq float %3906, 0.000000e+00
  %3908 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3752, float %3753, float %3754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3909 = call float @dx.op.dot4.f32(i32 56, float %3887, float %3888, float %3889, float %3890, float %3752, float %3753, float %3754, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3910 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3755, float %3756, float %3757, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3911 = call float @dx.op.dot4.f32(i32 56, float %3887, float %3888, float %3889, float %3890, float %3755, float %3756, float %3757, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3912 = fsub fast float %3908, %3884
  %3913 = fsub fast float %3910, %3884
  %3914 = fsub fast float %3909, %3891
  %3915 = fsub fast float %3911, %3891
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3826, float %3827, float %3828, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3919 = fadd fast float %3918, %3916
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3922 = fcmp fast ogt float %3920, %3921
  %3923 = and i1 %3907, %3922
  %3924 = and i1 %3878, %3923
  br i1 %3924, label %3945, label %3925

; <label>:3925                                    ; preds = %4208, %4026, %3945, %3799
  %3926 = phi float [ %3801, %3945 ], [ %4029, %4026 ], [ %4029, %4208 ], [ %3801, %3799 ]
  %3927 = phi float [ %3802, %3945 ], [ %3802, %4026 ], [ %4183, %4208 ], [ %3802, %3799 ]
  %3928 = phi float [ %3803, %3945 ], [ %3803, %4026 ], [ %4181, %4208 ], [ %3803, %3799 ]
  %3929 = phi float [ %3804, %3945 ], [ %3804, %4026 ], [ %4153, %4208 ], [ %3804, %3799 ]
  %3930 = phi float [ %3805, %3945 ], [ %3805, %4026 ], [ %4151, %4208 ], [ %3805, %3799 ]
  %3931 = phi float [ %3806, %3945 ], [ %3806, %4026 ], [ %4218, %4208 ], [ %3806, %3799 ]
  %3932 = phi float [ %3807, %3945 ], [ %3807, %4026 ], [ %4219, %4208 ], [ %3807, %3799 ]
  %3933 = phi float [ %3808, %3945 ], [ %3808, %4026 ], [ %4220, %4208 ], [ %3808, %3799 ]
  %3934 = phi float [ %3809, %3945 ], [ %3809, %4026 ], [ %4132, %4208 ], [ %3809, %3799 ]
  %3935 = phi float [ %3810, %3945 ], [ %3810, %4026 ], [ %4133, %4208 ], [ %3810, %3799 ]
  %3936 = phi float [ %3811, %3945 ], [ %3811, %4026 ], [ %4134, %4208 ], [ %3811, %3799 ]
  %3937 = phi float [ %3812, %3945 ], [ %3812, %4026 ], [ %4161, %4208 ], [ %3812, %3799 ]
  %3938 = phi float [ %3813, %3945 ], [ %3813, %4026 ], [ %4158, %4208 ], [ %3813, %3799 ]
  %3939 = phi float [ %3814, %3945 ], [ %3814, %4026 ], [ %4155, %4208 ], [ %3814, %3799 ]
  %3940 = phi float [ %3815, %3945 ], [ %3815, %4026 ], [ %4149, %4208 ], [ %3815, %3799 ]
  %3941 = phi float [ %3816, %3945 ], [ %3816, %4026 ], [ %4144, %4208 ], [ %3816, %3799 ]
  %3942 = phi float [ %3817, %3945 ], [ %3817, %4026 ], [ %4145, %4208 ], [ %3817, %3799 ]
  %3943 = phi float [ %3818, %3945 ], [ %3818, %4026 ], [ %4146, %4208 ], [ %3818, %3799 ]
  %3944 = icmp eq i32 %3875, %3798
  br i1 %3944, label %4221, label %3799

; <label>:3945                                    ; preds = %3799
  %3946 = extractvalue %dx.types.ResRet.f32 %3845, 3
  %3947 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3951 = extractvalue %dx.types.ResRet.i32 %3831, 3
  %3952 = extractvalue %dx.types.ResRet.i32 %3831, 2
  %3953 = add i32 %3951, 0
  %3954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3953, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3954, %dx.types.Handle %3955, float %3884, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float %3912, float %3914, float undef, float %3913, float %3915, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = fmul fast float %3957, %3950
  %3959 = fadd fast float %3958, %3949
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = fmul fast float %3884, %3840
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3891, float %3961)  ; FMad(a,b,c)
  %3963 = fadd fast float %3962, %3948
  %3964 = fmul fast float %3884, %3842
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3891, float %3964)  ; FMad(a,b,c)
  %3966 = fadd fast float %3965, %3947
  %3967 = fmul fast float %3912, %3840
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3914, float %3967)  ; FMad(a,b,c)
  %3969 = fmul fast float %3912, %3842
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3914, float %3969)  ; FMad(a,b,c)
  %3971 = fmul fast float %3913, %3840
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3915, float %3971)  ; FMad(a,b,c)
  %3973 = fmul fast float %3913, %3842
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3915, float %3973)  ; FMad(a,b,c)
  %3975 = add i32 %3952, 0
  %3976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3975, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3976, %dx.types.Handle %3955, float %3963, float %3966, float undef, float undef, i32 0, i32 0, i32 undef, float %3968, float %3970, float undef, float %3972, float %3974, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = and i32 %3876, 1024
  %3980 = icmp ne i32 %3979, 0
  %3981 = fcmp fast ogt float %3978, 0x3FE0101020000000
  %3982 = uitofp i1 %3981 to float
  %3983 = select i1 %3980, float %3982, float %3978
  %3984 = and i32 %3876, 8192
  %3985 = icmp ne i32 %3984, 0
  %3986 = select i1 %3985, float %3946, float 1.000000e+00
  %3987 = fmul fast float %3884, 2.000000e+00
  %3988 = fadd fast float %3987, -1.000000e+00
  %3989 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3990 = fmul fast float %3989, %3873
  %3991 = fsub fast float %3990, %3873
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fmul fast float %3891, 2.000000e+00
  %3994 = fadd fast float %3993, -1.000000e+00
  %3995 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3996 = fmul fast float %3995, %3874
  %3997 = fsub fast float %3996, %3874
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3903, %3836
  %4000 = fsub fast float %3999, %3836
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %3960, %3986
  %4003 = fmul fast float %4002, %3957
  %4004 = fmul fast float %4003, %3992
  %4005 = fmul fast float %4004, %3983
  %4006 = fmul fast float %4005, %3998
  %4007 = fmul fast float %4006, %4001
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4010 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4011 = fsub fast float %3920, %4010
  %4012 = fmul fast float %4011, %4009
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fmul fast float %4007, %3837
  %4015 = fadd fast float %4007, %3837
  %4016 = fmul fast float %4015, %3846
  %4017 = fsub fast float %4016, %3846
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = and i32 %3876, 128
  %4020 = icmp ne i32 %4019, 0
  %4021 = select i1 %4020, float %4018, float %4014
  %4022 = fmul fast float %4021, %4013
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = fcmp fast ugt float %4022, %4024
  br i1 %4025, label %4026, label %3925

; <label>:4026                                    ; preds = %3945
  %4027 = select i1 %3985, float %4022, float 0.000000e+00
  %4028 = fadd fast float %4027, %3801
  %4029 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  br i1 %3985, label %3925, label %4030

; <label>:4030                                    ; preds = %4026
  %4031 = and i32 %3876, 4
  %4032 = and i32 %3876, 8
  %4033 = add i32 %3832, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4033, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4034, %dx.types.Handle %4035, float %3963, float %3966, float undef, float undef, i32 0, i32 0, i32 undef, float %3968, float %3970, float undef, float %3972, float %3974, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.ResRet.f32 %4036, 3
  %4041 = bitcast float %3858 to i32
  %4042 = and i32 %4041, 255
  %4043 = uitofp i32 %4042 to float
  %4044 = lshr i32 %4041, 8
  %4045 = and i32 %4044, 255
  %4046 = uitofp i32 %4045 to float
  %4047 = fmul fast float %4040, %4043
  %4048 = fadd fast float %4047, %4046
  %4049 = fmul fast float %4048, 0x3F70101000000000
  %4050 = add i32 %3833, 0
  %4051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4050, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4052 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4051, %dx.types.Handle %4035, float %3963, float %3966, float undef, float undef, i32 0, i32 0, i32 undef, float %3968, float %3970, float undef, float %3972, float %3974, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.ResRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.ResRet.f32 %4052, 2
  %4056 = extractvalue %dx.types.ResRet.f32 %4052, 3
  %4057 = bitcast float %3852 to i32
  %4058 = and i32 %4057, 255
  %4059 = uitofp i32 %4058 to float
  %4060 = lshr i32 %4057, 8
  %4061 = and i32 %4060, 255
  %4062 = uitofp i32 %4061 to float
  %4063 = lshr i32 %4057, 16
  %4064 = and i32 %4063, 255
  %4065 = uitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3F70101000000000
  %4067 = fmul fast float %4053, %4059
  %4068 = fadd fast float %4067, %4062
  %4069 = fmul fast float %4068, 0x3F70101000000000
  %4070 = fadd fast float %4054, -5.000000e-01
  %4071 = fadd fast float %4056, -5.000000e-01
  %4072 = fmul fast float %4070, %4066
  %4073 = fmul fast float %4071, %4066
  %4074 = fadd fast float %4072, 5.000000e-01
  %4075 = fadd fast float %4073, 5.000000e-01
  %4076 = fmul fast float %4037, %3861
  %4077 = fmul fast float %4038, %3862
  %4078 = fmul fast float %4039, %3863
  %4079 = fmul fast float %4074, 2.000000e+00
  %4080 = fadd fast float %4079, -1.000000e+00
  %4081 = fmul fast float %4075, 2.000000e+00
  %4082 = fadd fast float %4081, -1.000000e+00
  %4083 = fadd fast float %4080, %4082
  %4084 = fmul fast float %4083, 5.000000e-01
  %4085 = fsub fast float %4080, %4082
  %4086 = fmul fast float %4085, 5.000000e-01
  %4087 = call float @dx.op.unary.f32(i32 6, float %4084)  ; FAbs(value)
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = call float @dx.op.unary.f32(i32 6, float %4086)  ; FAbs(value)
  %4090 = fsub fast float %4088, %4089
  %4091 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4086, float %4090, float %4084, float %4086, float %4090)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = call float @dx.op.unary.f32(i32 25, float %4091)  ; Rsqrt(value)
  %4093 = fmul fast float %4084, %4092
  %4094 = fmul fast float %4086, %4092
  %4095 = fmul fast float %4092, %4090
  %4096 = fmul fast float %4095, %3826
  %4097 = fmul fast float %4095, %3827
  %4098 = fmul fast float %4095, %3828
  %4099 = fmul fast float %4093, %3849
  %4100 = fmul fast float %4093, %3850
  %4101 = fmul fast float %4093, %3851
  %4102 = fadd fast float %4099, %4096
  %4103 = fadd fast float %4100, %4097
  %4104 = fadd fast float %4101, %4098
  %4105 = fmul fast float %4094, %3855
  %4106 = fmul fast float %4094, %3856
  %4107 = fmul fast float %4094, %3857
  %4108 = fadd fast float %4102, %4105
  %4109 = fadd fast float %4103, %4106
  %4110 = fadd fast float %4104, %4107
  %4111 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4109, float %4110, float %4108, float %4109, float %4110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4112 = call float @dx.op.unary.f32(i32 25, float %4111)  ; Rsqrt(value)
  %4113 = fmul fast float %4108, %4112
  %4114 = fmul fast float %4109, %4112
  %4115 = fmul fast float %4110, %4112
  %4116 = icmp ne i32 %4032, 0
  %4117 = select i1 %4116, float 1.000000e+00, float 0.000000e+00
  %4118 = fmul fast float %4022, %4117
  %4119 = and i32 %3876, 1
  %4120 = icmp eq i32 %4119, 0
  br i1 %4120, label %4121, label %4125

; <label>:4121                                    ; preds = %4030
  %4122 = fsub fast float %4113, %3809
  %4123 = fsub fast float %4114, %3810
  %4124 = fsub fast float %4115, %3811
  br label %4125

; <label>:4125                                    ; preds = %4121, %4030
  %4126 = phi float [ %4122, %4121 ], [ %4113, %4030 ]
  %4127 = phi float [ %4123, %4121 ], [ %4114, %4030 ]
  %4128 = phi float [ %4124, %4121 ], [ %4115, %4030 ]
  %4129 = fmul float %4128, %4118
  %4130 = fmul float %4127, %4118
  %4131 = fmul float %4126, %4118
  %4132 = fadd fast float %4131, %3809
  %4133 = fadd fast float %4130, %3810
  %4134 = fadd fast float %4129, %3811
  %4135 = icmp ne i32 %4031, 0
  %4136 = select i1 %4135, float 1.000000e+00, float 0.000000e+00
  %4137 = fmul fast float %4022, %4136
  %4138 = fsub fast float %4076, %3816
  %4139 = fsub fast float %4077, %3817
  %4140 = fsub fast float %4078, %3818
  %4141 = fmul fast float %4138, %4137
  %4142 = fmul fast float %4139, %4137
  %4143 = fmul fast float %4140, %4137
  %4144 = fadd fast float %4141, %3816
  %4145 = fadd fast float %4142, %3817
  %4146 = fadd fast float %4143, %3818
  %4147 = fsub fast float %4049, %3815
  %4148 = fmul fast float %4147, %4137
  %4149 = fadd fast float %4148, %3815
  %4150 = fmul fast float %4137, %3805
  %4151 = fsub fast float %3805, %4150
  %4152 = fmul fast float %4137, %3804
  %4153 = fsub fast float %3804, %4152
  %4154 = fadd fast float %4022, %3814
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fsub fast float %4069, %3813
  %4157 = fmul fast float %4156, %4118
  %4158 = fadd fast float %4157, %3813
  %4159 = fsub fast float %4055, %3812
  %4160 = fmul fast float %4159, %4118
  %4161 = fadd fast float %4160, %3812
  %4162 = call float @dx.op.dot3.f32(i32 55, float %4076, float %4077, float %4078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = fmul fast float %4165, %4162
  %4167 = fadd fast float %4166, %4164
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = bitcast float %3864 to i32
  %4170 = and i32 %4169, 65535
  %4171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4170)  ; LegacyF16ToF32(value)
  %4172 = lshr i32 %4169, 16
  %4173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4172)  ; LegacyF16ToF32(value)
  %4174 = fcmp fast oge float %4171, 0.000000e+00
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = select i1 %4174, float %4171, float %4176
  %4178 = fadd fast float %4177, %4173
  %4179 = fsub fast float %4168, %3803
  %4180 = fmul fast float %4179, %4022
  %4181 = fadd fast float %4180, %3803
  %4182 = fmul fast float %4178, %4022
  %4183 = call float @dx.op.binary.f32(i32 35, float %3802, float %4182)  ; FMax(a,b)
  %4184 = and i32 %3876, 16
  %4185 = icmp eq i32 %4184, 0
  br i1 %4185, label %4208, label %4186

; <label>:4186                                    ; preds = %4125
  %4187 = bitcast float %3870 to i32
  %4188 = add i32 %3867, 0
  %4189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4188, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4189, %dx.types.Handle %4035, float %3963, float %3966, float undef, float undef, i32 0, i32 0, i32 undef, float %3968, float %3970, float undef, float %3972, float %3974, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = and i32 %4187, 65535
  %4195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4194)  ; LegacyF16ToF32(value)
  %4196 = fmul fast float %4191, %3861
  %4197 = fmul fast float %4192, %3862
  %4198 = fmul fast float %4193, %3863
  %4199 = and i32 %3876, 16384
  %4200 = icmp ne i32 %4199, 0
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = select i1 %4200, float %4202, float 1.000000e+00
  %4204 = fmul fast float %4203, %4195
  %4205 = fmul fast float %4196, %4204
  %4206 = fmul fast float %4197, %4204
  %4207 = fmul fast float %4198, %4204
  br label %4208

; <label>:4208                                    ; preds = %4186, %4125
  %4209 = phi float [ %4205, %4186 ], [ 0.000000e+00, %4125 ]
  %4210 = phi float [ %4206, %4186 ], [ 0.000000e+00, %4125 ]
  %4211 = phi float [ %4207, %4186 ], [ 0.000000e+00, %4125 ]
  %4212 = fsub fast float %4209, %3806
  %4213 = fsub fast float %4210, %3807
  %4214 = fsub fast float %4211, %3808
  %4215 = fmul fast float %4212, %4022
  %4216 = fmul fast float %4213, %4022
  %4217 = fmul fast float %4214, %4022
  %4218 = fadd fast float %4215, %3806
  %4219 = fadd fast float %4216, %3807
  %4220 = fadd fast float %4217, %3808
  br label %3925

; <label>:4221                                    ; preds = %3925
  br label %4222

; <label>:4222                                    ; preds = %4221, %3745
  %4223 = phi float [ 0.000000e+00, %3745 ], [ %3926, %4221 ]
  %4224 = phi float [ %3714, %3745 ], [ %3927, %4221 ]
  %4225 = phi float [ %3695, %3745 ], [ %3928, %4221 ]
  %4226 = phi float [ 0.000000e+00, %3745 ], [ %3929, %4221 ]
  %4227 = phi float [ 0.000000e+00, %3745 ], [ %3930, %4221 ]
  %4228 = phi float [ %3689, %3745 ], [ %3931, %4221 ]
  %4229 = phi float [ %3690, %3745 ], [ %3932, %4221 ]
  %4230 = phi float [ %3691, %3745 ], [ %3933, %4221 ]
  %4231 = phi float [ %3740, %3745 ], [ %3934, %4221 ]
  %4232 = phi float [ %3741, %3745 ], [ %3935, %4221 ]
  %4233 = phi float [ %3742, %3745 ], [ %3936, %4221 ]
  %4234 = phi float [ %3694, %3745 ], [ %3937, %4221 ]
  %4235 = phi float [ %3693, %3745 ], [ %3938, %4221 ]
  %4236 = phi float [ 0.000000e+00, %3745 ], [ %3939, %4221 ]
  %4237 = phi float [ %3692, %3745 ], [ %3940, %4221 ]
  %4238 = phi float [ %3686, %3745 ], [ %3941, %4221 ]
  %4239 = phi float [ %3687, %3745 ], [ %3942, %4221 ]
  %4240 = phi float [ %3688, %3745 ], [ %3943, %4221 ]
  %4241 = call float @dx.op.dot3.f32(i32 55, float %4231, float %4232, float %4233, float %4231, float %4232, float %4233)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call float @dx.op.unary.f32(i32 25, float %4241)  ; Rsqrt(value)
  %4243 = fmul fast float %4242, %4231
  %4244 = fmul fast float %4242, %4232
  %4245 = fmul fast float %4242, %4233
  %4246 = fadd fast float %4236, %1130
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4244, float %4245, float %4243, float %4244, float %4245)  ; Dot3(ax,ay,az,bx,by,bz)
  %4249 = call float @dx.op.unary.f32(i32 25, float %4248)  ; Rsqrt(value)
  %4250 = fmul fast float %4249, %4243
  %4251 = fmul fast float %4249, %4244
  %4252 = fmul fast float %4249, %4245
  br label %4253

; <label>:4253                                    ; preds = %4222, %3683
  %4254 = phi float [ %4250, %4222 ], [ %3740, %3683 ]
  %4255 = phi float [ %4251, %4222 ], [ %3741, %3683 ]
  %4256 = phi float [ %4252, %4222 ], [ %3742, %3683 ]
  %4257 = phi float [ %4228, %4222 ], [ %3689, %3683 ]
  %4258 = phi float [ %4229, %4222 ], [ %3690, %3683 ]
  %4259 = phi float [ %4230, %4222 ], [ %3691, %3683 ]
  %4260 = phi float [ %4238, %4222 ], [ %3686, %3683 ]
  %4261 = phi float [ %4239, %4222 ], [ %3687, %3683 ]
  %4262 = phi float [ %4240, %4222 ], [ %3688, %3683 ]
  %4263 = phi float [ %4237, %4222 ], [ %3692, %3683 ]
  %4264 = phi float [ %4247, %4222 ], [ %1130, %3683 ]
  %4265 = phi float [ %4235, %4222 ], [ %3693, %3683 ]
  %4266 = phi float [ %4234, %4222 ], [ %3694, %3683 ]
  %4267 = phi float [ %4227, %4222 ], [ 0.000000e+00, %3683 ]
  %4268 = phi float [ %4226, %4222 ], [ 0.000000e+00, %3683 ]
  %4269 = phi float [ %4223, %4222 ], [ 0.000000e+00, %3683 ]
  %4270 = phi float [ %4224, %4222 ], [ %3714, %3683 ]
  %4271 = phi float [ %4225, %4222 ], [ %3695, %3683 ]
  %4272 = fadd fast float %4263, 0xBFB99999A0000000
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %4273, 0x3FF1C71C80000000
  %4275 = call float @dx.op.binary.f32(i32 36, float %4263, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4276 = fsub fast float 1.000000e+00, %4274
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fmul fast float %4277, %4260
  %4279 = fmul fast float %4277, %4261
  %4280 = fmul fast float %4277, %4262
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = fmul fast float %4274, %4260
  %4285 = fmul fast float %4274, %4261
  %4286 = fmul fast float %4274, %4262
  %4287 = fadd fast float %4284, %4275
  %4288 = fadd fast float %4285, %4275
  %4289 = fadd fast float %4286, %4275
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 3
  %4296 = and i32 %4295, 8
  %4297 = icmp ne i32 %4296, 0
  %4298 = call float @dx.op.binary.f32(i32 35, float %4281, float %4260)  ; FMax(a,b)
  %4299 = call float @dx.op.binary.f32(i32 35, float %4282, float %4260)  ; FMax(a,b)
  %4300 = call float @dx.op.binary.f32(i32 35, float %4283, float %4260)  ; FMax(a,b)
  %4301 = call float @dx.op.dot3.f32(i32 55, float %4281, float %4282, float %4283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = select i1 %220, float %4260, float %4281
  %4303 = select i1 %220, float %4301, float %4282
  %4304 = select i1 %220, float 1.000000e+00, float %4283
  %4305 = select i1 %4297, float %4298, float %4302
  %4306 = select i1 %4297, float %4299, float %4303
  %4307 = select i1 %4297, float %4300, float %4304
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4312 = fadd fast float %4309, %158
  %4313 = fadd fast float %4310, %159
  %4314 = fadd fast float %4311, %160
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4318 = fsub fast float %4312, %4316
  %4319 = fsub fast float %4313, %4317
  %4320 = fmul fast float %4318, %4318
  %4321 = fmul fast float %4319, %4319
  %4322 = fadd fast float %4320, %4321
  %4323 = call float @dx.op.unary.f32(i32 24, float %4322)  ; Sqrt(value)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4325 = fcmp fast olt float %4323, %4324
  br i1 %4325, label %4326, label %4393

; <label>:4326                                    ; preds = %4253
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4336 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4337 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4338 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4339 = fadd fast float %4336, %4312
  %4340 = fadd fast float %4337, %4313
  %4341 = fadd fast float %4338, %4314
  %4342 = fmul fast float %4339, %4328
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4330, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4332, float %4343)  ; FMad(a,b,c)
  %4345 = fmul fast float %4339, %4333
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4334, float %4345)  ; FMad(a,b,c)
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4335, float %4346)  ; FMad(a,b,c)
  %4348 = fsub fast float %4344, %4336
  %4349 = fsub fast float %4347, %4337
  %4350 = fsub fast float %4348, %4316
  %4351 = fadd fast float %4350, %4324
  %4352 = fsub fast float %4349, %4317
  %4353 = fadd fast float %4352, %4324
  %4354 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4355 = fmul fast float %4351, %4354
  %4356 = fmul fast float %4353, %4354
  %4357 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4359 = fsub fast float 1.000000e+00, %4357
  %4360 = fsub fast float 1.000000e+00, %4358
  %4361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4359, float %4360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = fcmp fast ugt float %4362, 0.000000e+00
  br i1 %4363, label %4364, label %4667

; <label>:4364                                    ; preds = %4326
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4367 = fmul fast float %4366, %4362
  %4368 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4369 = fadd fast float %4368, %4367
  %4370 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4371 = fadd fast float %4369, %4338
  %4372 = fmul fast float %4344, %4332
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4335, float %4372)  ; FMad(a,b,c)
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4370, float %4373)  ; FMad(a,b,c)
  %4375 = fsub fast float %4374, %4338
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4378 = fsub fast float %4375, %4377
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4359, float %4360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4359, float %4360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = fadd fast float %4384, %4380
  %4388 = fmul fast float %4387, 0x3F847AE140000000
  %4389 = fadd fast float %4385, %4381
  %4390 = fmul fast float %4389, 0x3F847AE140000000
  %4391 = fadd fast float %4386, %4382
  %4392 = fmul fast float %4391, 0x3F847AE140000000
  br label %4667

; <label>:4393                                    ; preds = %4253
  %4394 = and i32 %196, 1
  %4395 = icmp eq i32 %4394, 0
  br i1 %4395, label %4667, label %4396

; <label>:4396                                    ; preds = %4393
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4407 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4408 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4409 = fadd fast float %4406, %4312
  %4410 = fadd fast float %4407, %4313
  %4411 = fadd fast float %4408, %4314
  %4412 = fmul fast float %4409, %4398
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4400, float %4412)  ; FMad(a,b,c)
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = fmul fast float %4409, %4403
  %4416 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4404, float %4415)  ; FMad(a,b,c)
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4405, float %4416)  ; FMad(a,b,c)
  %4418 = fsub fast float %4414, %4406
  %4419 = fsub fast float %4417, %4407
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.CBufRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.CBufRet.f32 %4420, 2
  %4424 = extractvalue %dx.types.CBufRet.f32 %4420, 3
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.i32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.i32 %4427, 1
  %4430 = udiv i32 %4429, %4428
  %4431 = fsub fast float %4418, %4421
  %4432 = fsub fast float %4419, %4422
  %4433 = call float @dx.op.binary.f32(i32 35, float %4431, float 0.000000e+00)  ; FMax(a,b)
  %4434 = call float @dx.op.binary.f32(i32 35, float %4432, float 0.000000e+00)  ; FMax(a,b)
  %4435 = call float @dx.op.binary.f32(i32 36, float %4433, float %4423)  ; FMin(a,b)
  %4436 = call float @dx.op.binary.f32(i32 36, float %4434, float %4424)  ; FMin(a,b)
  %4437 = add i32 %4428, -1
  %4438 = add i32 %4430, -1
  %4439 = fmul fast float %4435, %4426
  %4440 = fmul fast float %4436, %4426
  %4441 = fptoui float %4439 to i32
  %4442 = fptoui float %4440 to i32
  %4443 = call i32 @dx.op.binary.i32(i32 40, i32 %4441, i32 %4437)  ; UMin(a,b)
  %4444 = call i32 @dx.op.binary.i32(i32 40, i32 %4442, i32 %4438)  ; UMin(a,b)
  %4445 = mul i32 %4444, %4428
  %4446 = add i32 %4445, %4443
  %4447 = shl i32 %4446, 2
  %4448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.i32 %4448, 0
  %4450 = icmp eq i32 %4449, -1
  br i1 %4450, label %4667, label %4451

; <label>:4451                                    ; preds = %4396
  %4452 = mul i32 %4449, 148
  %4453 = add i32 %4452, 4
  %4454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = add i32 %4452, 8
  %4457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = add i32 %4452, 36
  %4460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4459, i32 undef)  ; BufferLoad(srv,index,wot)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = add i32 %4452, 60
  %4463 = add i32 %4452, 92
  %4464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.i32 %4464, 0
  %4466 = add i32 %4452, 116
  %4467 = fsub fast float %4418, %4455
  %4468 = fsub fast float %4419, %4458
  %4469 = fmul fast float %4426, %4467
  %4470 = fmul fast float %4426, %4468
  %4471 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4473 = fsub fast float 1.000000e+00, %4472
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = call float @dx.op.unary.f32(i32 83, float %4471)  ; DerivCoarseX(value)
  %4477 = call float @dx.op.unary.f32(i32 83, float %4473)  ; DerivCoarseX(value)
  %4478 = call float @dx.op.unary.f32(i32 84, float %4471)  ; DerivCoarseY(value)
  %4479 = call float @dx.op.unary.f32(i32 84, float %4473)  ; DerivCoarseY(value)
  %4480 = fmul fast float %4476, %4475
  %4481 = fmul fast float %4477, %4475
  %4482 = fmul fast float %4478, %4475
  %4483 = fmul fast float %4479, %4475
  %4484 = call float @dx.op.dot2.f32(i32 54, float %4482, float %4483, float %4482, float %4483)  ; Dot2(ax,ay,bx,by)
  %4485 = call float @dx.op.dot2.f32(i32 54, float %4480, float %4481, float %4480, float %4481)  ; Dot2(ax,ay,bx,by)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4485, float %4484)  ; FMax(a,b)
  %4487 = call float @dx.op.unary.f32(i32 23, float %4486)  ; Log(value)
  %4488 = fmul fast float %4487, 5.000000e-01
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4491 = fadd fast float %4490, %4488
  %4492 = call float @dx.op.binary.f32(i32 35, float %4491, float 0.000000e+00)  ; FMax(a,b)
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4495 = fadd fast float %4494, %4492
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4498 = fadd fast float %4495, %4497
  %4499 = add i32 %4465, 0
  %4500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4501 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4500, i32 0)  ; GetDimensions(handle,mipLevel)
  %4502 = extractvalue %dx.types.Dimensions %4501, 0
  %4503 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4502)  ; FirstbitLo(value)
  %4504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.i32 %4504, 1
  %4506 = sub nsw i32 %4505, %4503
  %4507 = sitofp i32 %4506 to float
  %4508 = fsub fast float %4498, %4507
  %4509 = call float @dx.op.binary.f32(i32 35, float %4508, float 0.000000e+00)  ; FMax(a,b)
  %4510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4500, %dx.types.Handle %46, float %4471, float %4473, float %4461, float undef, i32 0, i32 0, i32 undef, float %4509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = fcmp ule float %4511, 0x3FE0101020000000
  %4513 = extractvalue %dx.types.CBufRet.i32 %4504, 0
  %4514 = and i32 %4513, 128
  %4515 = icmp ne i32 %4514, 0
  %4516 = and i1 %4512, %4515
  br i1 %4516, label %4667, label %4517

; <label>:4517                                    ; preds = %4451
  %4518 = add i32 %4452, 20
  %4519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = add i32 %4452, 24
  %4522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = add i32 %4452, 40
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = add i32 %4452, 96
  %4528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.i32 %4528, 0
  %4530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.f32 %4530, 2
  %4532 = fmul fast float %4531, %4471
  %4533 = fmul fast float %4531, %4473
  %4534 = extractvalue %dx.types.CBufRet.f32 %4530, 3
  %4535 = fadd fast float %4532, %4534
  %4536 = fadd fast float %4533, %4534
  %4537 = add i32 %4529, 0
  %4538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4537, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4539 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4538, i32 0)  ; GetDimensions(handle,mipLevel)
  %4540 = extractvalue %dx.types.Dimensions %4539, 0
  %4541 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4540)  ; FirstbitLo(value)
  %4542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.i32 %4542, 1
  %4544 = sub nsw i32 %4543, %4541
  %4545 = sitofp i32 %4544 to float
  %4546 = fsub fast float %4495, %4545
  %4547 = call float @dx.op.binary.f32(i32 35, float %4546, float 0.000000e+00)  ; FMax(a,b)
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4538, %dx.types.Handle %46, float %4535, float %4536, float %4526, float undef, i32 0, i32 0, i32 undef, float %4547)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = fmul fast float %4549, %4520
  %4551 = fadd fast float %4550, %4523
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4560 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4561 = fadd fast float %4557, %4418
  %4562 = fadd fast float %4559, %4419
  %4563 = fadd fast float %4551, %4560
  %4564 = fmul fast float %4561, %4553
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4554, float %4564)  ; FMad(a,b,c)
  %4566 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4555, float %4565)  ; FMad(a,b,c)
  %4567 = fsub fast float %4566, %4560
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 2
  %4570 = fsub fast float %4567, %4569
  %4571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.i32 %4571, 0
  %4573 = call i32 @dx.op.binary.i32(i32 40, i32 %4449, i32 %4572)  ; UMin(a,b)
  %4574 = mul i32 %4573, 36
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = add i32 %4574, 4
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = fmul fast float %4579, %4471
  %4581 = fmul fast float %4579, %4473
  %4582 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4583 = fadd fast float %4580, %4582
  %4584 = fadd fast float %4581, %4582
  %4585 = icmp eq i32 %4576, 0
  br i1 %4585, label %4654, label %4586

; <label>:4586                                    ; preds = %4517
  br label %4587

; <label>:4587                                    ; preds = %4644, %4586
  %4588 = phi float [ %4645, %4644 ], [ 0.000000e+00, %4586 ]
  %4589 = phi float [ %4646, %4644 ], [ 0.000000e+00, %4586 ]
  %4590 = phi float [ %4647, %4644 ], [ 0.000000e+00, %4586 ]
  %4591 = phi float [ %4648, %4644 ], [ 0.000000e+00, %4586 ]
  %4592 = phi float [ %4649, %4644 ], [ 0.000000e+00, %4586 ]
  %4593 = phi float [ %4650, %4644 ], [ 0.000000e+00, %4586 ]
  %4594 = phi i32 [ %4651, %4644 ], [ 0, %4586 ]
  %4595 = shl i32 %4594, 2
  %4596 = add i32 %4462, %4595
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = add i32 %4466, %4595
  %4600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.i32 %4600, 0
  %4602 = add i32 %4601, 0
  %4603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4602, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4604 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4603, i32 0)  ; GetDimensions(handle,mipLevel)
  %4605 = extractvalue %dx.types.Dimensions %4604, 0
  %4606 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4605)  ; FirstbitLo(value)
  %4607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.i32 %4607, 1
  %4609 = sub nsw i32 %4608, %4606
  %4610 = sitofp i32 %4609 to float
  %4611 = fsub fast float %4495, %4610
  %4612 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4603, %dx.types.Handle %46, float %4583, float %4584, float %4598, float undef, i32 0, i32 0, i32 undef, float %4612)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = fcmp fast ogt float %4614, 0.000000e+00
  br i1 %4615, label %4616, label %4644

; <label>:4616                                    ; preds = %4587
  %4617 = add i32 %4577, %4595
  %4618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4617, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.i32 %4618, 0
  %4620 = and i32 %4619, 32767
  %4621 = mul nuw nsw i32 %4620, 928
  %4622 = add nuw nsw i32 %4621, 48
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = add nuw nsw i32 %4621, 60
  %4628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.ResRet.f32 %4628, 1
  %4631 = extractvalue %dx.types.ResRet.f32 %4628, 2
  %4632 = fmul fast float %4624, %4614
  %4633 = fmul fast float %4625, %4614
  %4634 = fmul fast float %4626, %4614
  %4635 = fadd fast float %4632, %4588
  %4636 = fadd fast float %4633, %4589
  %4637 = fadd fast float %4634, %4590
  %4638 = fmul fast float %4629, %4614
  %4639 = fmul fast float %4630, %4614
  %4640 = fmul fast float %4631, %4614
  %4641 = fadd fast float %4638, %4591
  %4642 = fadd fast float %4639, %4592
  %4643 = fadd fast float %4640, %4593
  br label %4644

; <label>:4644                                    ; preds = %4616, %4587
  %4645 = phi float [ %4635, %4616 ], [ %4588, %4587 ]
  %4646 = phi float [ %4636, %4616 ], [ %4589, %4587 ]
  %4647 = phi float [ %4637, %4616 ], [ %4590, %4587 ]
  %4648 = phi float [ %4641, %4616 ], [ %4591, %4587 ]
  %4649 = phi float [ %4642, %4616 ], [ %4592, %4587 ]
  %4650 = phi float [ %4643, %4616 ], [ %4593, %4587 ]
  %4651 = add nuw i32 %4594, 1
  %4652 = icmp eq i32 %4651, %4576
  br i1 %4652, label %4653, label %4587

; <label>:4653                                    ; preds = %4644
  br label %4654

; <label>:4654                                    ; preds = %4653, %4517
  %4655 = phi float [ 0.000000e+00, %4517 ], [ %4645, %4653 ]
  %4656 = phi float [ 0.000000e+00, %4517 ], [ %4646, %4653 ]
  %4657 = phi float [ 0.000000e+00, %4517 ], [ %4647, %4653 ]
  %4658 = phi float [ 0.000000e+00, %4517 ], [ %4648, %4653 ]
  %4659 = phi float [ 0.000000e+00, %4517 ], [ %4649, %4653 ]
  %4660 = phi float [ 0.000000e+00, %4517 ], [ %4650, %4653 ]
  %4661 = fadd fast float %4658, %4655
  %4662 = fmul fast float %4661, 0x3F847AE140000000
  %4663 = fadd fast float %4659, %4656
  %4664 = fmul fast float %4663, 0x3F847AE140000000
  %4665 = fadd fast float %4660, %4657
  %4666 = fmul fast float %4665, 0x3F847AE140000000
  br label %4667

; <label>:4667                                    ; preds = %4654, %4451, %4396, %4393, %4364, %4326
  %4668 = phi float [ %4378, %4364 ], [ -1.310720e+05, %4326 ], [ %4570, %4654 ], [ -1.310720e+05, %4396 ], [ -1.310720e+05, %4451 ], [ -1.310720e+05, %4393 ]
  %4669 = phi float [ %4388, %4364 ], [ 0.000000e+00, %4326 ], [ %4662, %4654 ], [ 0.000000e+00, %4396 ], [ 0.000000e+00, %4451 ], [ 0.000000e+00, %4393 ]
  %4670 = phi float [ %4390, %4364 ], [ 0.000000e+00, %4326 ], [ %4664, %4654 ], [ 0.000000e+00, %4396 ], [ 0.000000e+00, %4451 ], [ 0.000000e+00, %4393 ]
  %4671 = phi float [ %4392, %4364 ], [ 0.000000e+00, %4326 ], [ %4666, %4654 ], [ 0.000000e+00, %4396 ], [ 0.000000e+00, %4451 ], [ 0.000000e+00, %4393 ]
  %4672 = phi i1 [ true, %4364 ], [ false, %4326 ], [ true, %4654 ], [ false, %4396 ], [ false, %4451 ], [ false, %4393 ]
  %4673 = and i32 %196, 3
  %4674 = icmp eq i32 %4673, 1
  %4675 = select i1 %4674, float 1.000000e+00, float 0.000000e+00
  %4676 = fsub fast float %4668, %160
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = select i1 %4672, float %4677, float 1.000000e+00
  %4679 = fmul fast float %4678, %4675
  %4680 = icmp eq i32 %4673, 3
  %4681 = select i1 %4680, float 1.000000e+00, float %4679
  %4682 = call float @dx.op.binary.f32(i32 35, float %4269, float %4681)  ; FMax(a,b)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fcmp fast une float %4683, 0.000000e+00
  %4685 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.unary.f32(i32 25, float %4685)  ; Rsqrt(value)
  br i1 %4684, label %4694, label %4687

; <label>:4687                                    ; preds = %4667
  %4688 = fmul fast float %4686, %158
  %4689 = fmul fast float %4686, %159
  %4690 = fmul fast float %4686, %160
  %4691 = fsub fast float -0.000000e+00, %4688
  %4692 = fsub fast float -0.000000e+00, %4689
  %4693 = fsub fast float -0.000000e+00, %4690
  br label %4862

; <label>:4694                                    ; preds = %4667
  %4695 = fmul fast float %158, %4686
  %4696 = fsub fast float -0.000000e+00, %4695
  %4697 = fmul fast float %159, %4686
  %4698 = fsub fast float -0.000000e+00, %4697
  %4699 = fmul fast float %160, %4686
  %4700 = fsub fast float -0.000000e+00, %4699
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4698, float %4700, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fmul fast float %4683, 2.500000e+00
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4683, 0x4013FFFFE0000000
  %4705 = fadd fast float %4704, 0xBFFFFFFFE0000000
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fmul fast float %4683, 0x4004000020000000
  %4708 = fadd fast float %4707, 0xBFF8000040000000
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4711 = fmul fast float %4272, 1.000000e+01
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, 2.000000e+00
  %4714 = fsub fast float 3.000000e+00, %4713
  %4715 = fmul fast float %4712, %4712
  %4716 = fmul fast float %4715, %4714
  %4717 = fsub fast float 1.000000e+00, %4716
  %4718 = fsub fast float 0x3FE3333340000000, %4293
  %4719 = fmul fast float %4718, 0x400AAAAAA0000000
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4717, %4720
  %4722 = fmul fast float %4305, 0x3FEA2B8620000000
  %4723 = fmul fast float %4306, 0x3FEA2B8620000000
  %4724 = fmul fast float %4307, 0x3FEA2B8620000000
  %4725 = fadd fast float %4722, 0x3FC81DFBA0000000
  %4726 = fmul fast float %4725, %4305
  %4727 = fadd fast float %4726, 0x3F910E6020000000
  %4728 = fadd fast float %4723, 0x3FC81DFBA0000000
  %4729 = fmul fast float %4728, %4306
  %4730 = fadd fast float %4729, 0x3F910E6020000000
  %4731 = fadd fast float %4724, 0x3FC81DFBA0000000
  %4732 = fmul fast float %4731, %4307
  %4733 = fadd fast float %4732, 0x3F910E6020000000
  %4734 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4737 = fsub fast float %4734, %4305
  %4738 = fsub fast float %4735, %4306
  %4739 = fsub fast float %4736, %4307
  %4740 = fmul fast float %4737, %4710
  %4741 = fmul fast float %4740, %4721
  %4742 = fmul fast float %4738, %4710
  %4743 = fmul fast float %4742, %4721
  %4744 = fmul fast float %4739, %4710
  %4745 = fmul fast float %4744, %4721
  %4746 = fadd fast float %4741, %4305
  %4747 = fadd fast float %4743, %4306
  %4748 = fadd fast float %4745, %4307
  %4749 = fmul fast float %4266, %4266
  %4750 = fmul fast float %4749, %4749
  %4751 = fadd fast float %4706, 1.000000e+00
  %4752 = fsub fast float %4751, %4721
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fsub fast float 1.000000e+00, %4750
  %4757 = call float @dx.op.binary.f32(i32 36, float %4753, float %4756)  ; FMin(a,b)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4759 = call float @dx.op.binary.f32(i32 35, float %4757, float %4758)  ; FMax(a,b)
  %4760 = fadd fast float %4755, 0xBFE4CCCCC0000000
  %4761 = fmul fast float %4760, 0x4006DB6DA0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4762, 2.000000e+00
  %4764 = fsub fast float 3.000000e+00, %4763
  %4765 = bitcast float %4290 to i32
  %4766 = ashr i32 %4765, 1
  %4767 = add nsw i32 %4766, 532487669
  %4768 = bitcast i32 %4767 to float
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = bitcast float %4769 to i32
  %4771 = sub nsw i32 2129859010, %4770
  %4772 = bitcast i32 %4771 to float
  %4773 = fmul fast float %4772, 2.000000e+00
  %4774 = bitcast float %4291 to i32
  %4775 = ashr i32 %4774, 1
  %4776 = add nsw i32 %4775, 532487669
  %4777 = bitcast i32 %4776 to float
  %4778 = fsub fast float 1.000000e+00, %4777
  %4779 = bitcast float %4778 to i32
  %4780 = sub nsw i32 2129859010, %4779
  %4781 = bitcast i32 %4780 to float
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = bitcast float %4292 to i32
  %4784 = ashr i32 %4783, 1
  %4785 = add nsw i32 %4784, 532487669
  %4786 = bitcast i32 %4785 to float
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = bitcast float %4787 to i32
  %4789 = sub nsw i32 2129859010, %4788
  %4790 = bitcast i32 %4789 to float
  %4791 = fmul fast float %4790, 2.000000e+00
  %4792 = fsub fast float 0x4002A9FBE0000000, %4773
  %4793 = fadd fast float %4773, 0x3FD54FDF00000000
  %4794 = bitcast float %4793 to i32
  %4795 = sub nsw i32 2129859010, %4794
  %4796 = bitcast i32 %4795 to float
  %4797 = fmul fast float %4796, %4792
  %4798 = fmul fast float %4797, %4797
  %4799 = fsub fast float 0x4002A9FBE0000000, %4782
  %4800 = fadd fast float %4782, 0x3FD54FDF00000000
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = fmul fast float %4803, %4799
  %4805 = fmul fast float %4804, %4804
  %4806 = fsub fast float 0x4002A9FBE0000000, %4791
  %4807 = fadd fast float %4791, 0x3FD54FDF00000000
  %4808 = bitcast float %4807 to i32
  %4809 = sub nsw i32 2129859010, %4808
  %4810 = bitcast i32 %4809 to float
  %4811 = fmul fast float %4810, %4806
  %4812 = fmul fast float %4811, %4811
  %4813 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4798)  ; FMax(a,b)
  %4814 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4805)  ; FMax(a,b)
  %4815 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4812)  ; FMax(a,b)
  %4816 = fsub fast float 1.000000e+00, %4701
  %4817 = fadd fast float %4816, %4717
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fsub fast float 1.000000e+00, %4681
  %4820 = fmul fast float %4759, %4819
  %4821 = fmul fast float %4762, %4762
  %4822 = fmul fast float %4821, %4820
  %4823 = fmul fast float %4822, %4764
  %4824 = fmul fast float %4819, 0xBFE99999A0000000
  %4825 = fmul fast float %4824, %4710
  %4826 = fmul fast float %4825, %4721
  %4827 = fadd fast float %4826, 1.000000e+00
  %4828 = fadd fast float %4293, -1.000000e+00
  %4829 = fmul fast float %4827, %4828
  %4830 = fadd fast float %4829, 1.000000e+00
  %4831 = fsub fast float %4813, %4290
  %4832 = fsub fast float %4814, %4291
  %4833 = fsub fast float %4815, %4292
  %4834 = fmul fast float %4823, %4831
  %4835 = fmul fast float %4823, %4832
  %4836 = fmul fast float %4823, %4833
  %4837 = fadd fast float %4834, %4290
  %4838 = fadd fast float %4835, %4291
  %4839 = fadd fast float %4836, %4292
  %4840 = fsub fast float %102, %4254
  %4841 = fsub fast float %103, %4255
  %4842 = fsub fast float %104, %4256
  %4843 = fmul fast float %4823, %4840
  %4844 = fmul fast float %4823, %4841
  %4845 = fmul fast float %4823, %4842
  %4846 = fadd fast float %4843, %4254
  %4847 = fadd fast float %4844, %4255
  %4848 = fadd fast float %4845, %4256
  %4849 = fmul fast float %4823, %4818
  %4850 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = fmul fast float %4849, %4851
  %4853 = fadd fast float %4852, %4850
  %4854 = fsub fast float 1.000000e+00, %4266
  %4855 = fmul fast float %4823, %4854
  %4856 = fadd fast float %4855, %4266
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4847, float %4848, float %4846, float %4847, float %4848)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 25, float %4857)  ; Rsqrt(value)
  %4859 = fmul fast float %4846, %4858
  %4860 = fmul fast float %4847, %4858
  %4861 = fmul fast float %4848, %4858
  br label %4862

; <label>:4862                                    ; preds = %4694, %4687
  %4863 = phi float [ %4693, %4687 ], [ %4700, %4694 ]
  %4864 = phi float [ %4692, %4687 ], [ %4698, %4694 ]
  %4865 = phi float [ %4691, %4687 ], [ %4696, %4694 ]
  %4866 = phi float [ %4690, %4687 ], [ %4699, %4694 ]
  %4867 = phi float [ %4689, %4687 ], [ %4697, %4694 ]
  %4868 = phi float [ %4688, %4687 ], [ %4695, %4694 ]
  %4869 = phi float [ %4290, %4687 ], [ %4837, %4694 ]
  %4870 = phi float [ %4291, %4687 ], [ %4838, %4694 ]
  %4871 = phi float [ %4292, %4687 ], [ %4839, %4694 ]
  %4872 = phi float [ %4305, %4687 ], [ %4746, %4694 ]
  %4873 = phi float [ %4306, %4687 ], [ %4747, %4694 ]
  %4874 = phi float [ %4307, %4687 ], [ %4748, %4694 ]
  %4875 = phi float [ %4254, %4687 ], [ %4859, %4694 ]
  %4876 = phi float [ %4255, %4687 ], [ %4860, %4694 ]
  %4877 = phi float [ %4256, %4687 ], [ %4861, %4694 ]
  %4878 = phi float [ %4293, %4687 ], [ %4853, %4694 ]
  %4879 = phi float [ %4266, %4687 ], [ %4856, %4694 ]
  %4880 = fsub fast float -0.000000e+00, %160
  %4881 = select i1 %220, float 0.000000e+00, float %4871
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %4865, float %4864, float %4863)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4868, float %4867, float %4866, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = fmul fast float %4884, 2.000000e+00
  %4886 = fmul fast float %4885, %4875
  %4887 = fmul fast float %4885, %4876
  %4888 = fmul fast float %4885, %4877
  %4889 = fsub fast float %4868, %4886
  %4890 = fsub fast float %4867, %4887
  %4891 = fsub fast float %4866, %4888
  %4892 = call float @dx.op.binary.f32(i32 36, float %4879, float 1.000000e+00)  ; FMin(a,b)
  %4893 = fsub fast float 1.000000e+00, %4879
  %4894 = bitcast float %4893 to i32
  %4895 = sub nsw i32 2129859010, %4894
  %4896 = bitcast i32 %4895 to float
  %4897 = fsub fast float 1.000000e+00, %66
  %4898 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4898, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4900 = fdiv fast float %4897, %4899
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4902, 5.000000e-01
  %4904 = fadd fast float %4903, 5.000000e-01
  %4905 = fmul fast float %4904, %66
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4907, %4900
  %4909 = fadd fast float %4905, %4908
  %4910 = fsub fast float 5.000000e-01, %4903
  %4911 = fmul fast float %4910, %4872
  %4912 = fmul fast float %4910, %4873
  %4913 = fmul fast float %4910, %4874
  %4914 = fadd fast float %4909, %4911
  %4915 = fadd fast float %4909, %4912
  %4916 = fadd fast float %4909, %4913
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fmul fast float %4918, 5.000000e-01
  %4920 = fadd fast float %4919, 5.000000e-01
  %4921 = fmul fast float %4920, %66
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fmul fast float %4923, %4900
  %4925 = fadd fast float %4921, %4924
  %4926 = fsub fast float 5.000000e-01, %4919
  %4927 = fmul fast float %4926, %4872
  %4928 = fmul fast float %4926, %4873
  %4929 = fmul fast float %4926, %4874
  %4930 = fadd fast float %4925, %4927
  %4931 = fadd fast float %4925, %4928
  %4932 = fadd fast float %4925, %4929
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = call float @dx.op.binary.f32(i32 36, float %4872, float %4934)  ; FMin(a,b)
  %4936 = fsub fast float 1.000000e+00, %4892
  %4937 = fmul fast float %4935, %4936
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = call float @dx.op.binary.f32(i32 36, float %4873, float %4934)  ; FMin(a,b)
  %4943 = fmul fast float %4942, %4936
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = call float @dx.op.binary.f32(i32 36, float %4874, float %4934)  ; FMin(a,b)
  %4949 = fmul fast float %4948, %4936
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4892, %67
  %4955 = fmul fast float %4954, %4914
  %4956 = fmul fast float %4955, %4941
  %4957 = fmul fast float %4892, %68
  %4958 = fmul fast float %4957, %4915
  %4959 = fmul fast float %4958, %4947
  %4960 = fmul fast float %4892, %69
  %4961 = fmul fast float %4960, %4916
  %4962 = fmul fast float %4961, %4953
  %4963 = call float @dx.op.binary.f32(i32 36, float %4869, float %4934)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4936
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = call float @dx.op.binary.f32(i32 36, float %4870, float %4934)  ; FMin(a,b)
  %4970 = fmul fast float %4969, %4936
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = call float @dx.op.binary.f32(i32 36, float %4881, float %4934)  ; FMin(a,b)
  %4976 = fmul fast float %4975, %4936
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4954, %4930
  %4982 = fmul fast float %4981, %4968
  %4983 = fmul fast float %4957, %4931
  %4984 = fmul fast float %4983, %4974
  %4985 = fmul fast float %4960, %4932
  %4986 = fmul fast float %4985, %4980
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4959, float %4962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = select i1 %220, float 0.000000e+00, float %4956
  %4989 = select i1 %220, float %4987, float %4959
  %4990 = select i1 %220, float 0.000000e+00, float %4962
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4984, float %4986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = select i1 %220, float 0.000000e+00, float %4982
  %4993 = select i1 %220, float %4991, float %4984
  %4994 = select i1 %220, float 0.000000e+00, float %4986
  %4995 = fmul fast float %4883, 9.843750e-01
  %4996 = fmul fast float %4878, 9.843750e-01
  %4997 = fadd fast float %4995, 7.812500e-03
  %4998 = fadd fast float %4996, 7.812500e-03
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %4997, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5002 = fmul fast float %5000, %4869
  %5003 = fmul fast float %5000, %4870
  %5004 = fmul fast float %5000, %4881
  %5005 = fadd fast float %5002, %5001
  %5006 = fadd fast float %5003, %5001
  %5007 = fadd fast float %5004, %5001
  %5008 = fcmp fast ogt float %4267, 0.000000e+00
  br i1 %5008, label %5009, label %5035

; <label>:5009                                    ; preds = %4862
  %5010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4267, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.ResRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5010, 2
  %5014 = fadd fast float %5011, -5.000000e-01
  %5015 = fadd fast float %5012, -5.000000e-01
  %5016 = fadd fast float %5013, -5.000000e-01
  %5017 = fsub fast float 1.000000e+00, %4869
  %5018 = fsub fast float 1.000000e+00, %4870
  %5019 = fsub fast float 1.000000e+00, %4881
  %5020 = fmul fast float %4869, 4.000000e+00
  %5021 = fmul fast float %5020, %5017
  %5022 = fmul fast float %5021, %5014
  %5023 = fmul fast float %4870, 4.000000e+00
  %5024 = fmul fast float %5023, %5018
  %5025 = fmul fast float %5024, %5015
  %5026 = fmul fast float %4881, 4.000000e+00
  %5027 = fmul fast float %5026, %5019
  %5028 = fmul fast float %5027, %5016
  %5029 = fadd fast float %5022, %5005
  %5030 = fadd fast float %5025, %5006
  %5031 = fadd fast float %5028, %5007
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  br label %5035

; <label>:5035                                    ; preds = %5009, %4862
  %5036 = phi float [ %5032, %5009 ], [ %5005, %4862 ]
  %5037 = phi float [ %5033, %5009 ], [ %5006, %4862 ]
  %5038 = phi float [ %5034, %5009 ], [ %5007, %4862 ]
  %5039 = call float @dx.op.binary.f32(i32 35, float %5037, float %5038)  ; FMax(a,b)
  %5040 = call float @dx.op.binary.f32(i32 35, float %5036, float %5039)  ; FMax(a,b)
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5041, %4988
  %5043 = fmul fast float %5041, %4989
  %5044 = fmul fast float %5041, %4990
  %5045 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = fcmp fast ogt float %5045, 0x3E7FF19E20000000
  %5047 = fdiv fast float 1.000000e+00, %5045
  %5048 = select i1 %5046, float %5047, float 0.000000e+00
  %5049 = fmul fast float %5048, %4872
  %5050 = fmul fast float %5048, %4873
  %5051 = fmul fast float %5048, %4874
  %5052 = fadd fast float %5049, -1.000000e+00
  %5053 = fadd fast float %5050, -1.000000e+00
  %5054 = fadd fast float %5051, -1.000000e+00
  %5055 = fmul fast float %5052, 5.000000e-01
  %5056 = fmul fast float %5053, 5.000000e-01
  %5057 = fmul fast float %5054, 5.000000e-01
  %5058 = fadd fast float %5055, 1.000000e+00
  %5059 = fadd fast float %5056, 1.000000e+00
  %5060 = fadd fast float %5057, 1.000000e+00
  %5061 = fmul fast float %5036, %4992
  %5062 = fmul fast float %5037, %4993
  %5063 = fmul fast float %5038, %4994
  %5064 = fsub fast float 1.000000e+00, %4883
  %5065 = bitcast float %5064 to i32
  %5066 = sitofp i32 %5065 to float
  %5067 = fmul fast float %5066, 5.000000e+00
  %5068 = fadd fast float %5067, 0xC1EFBF8940000000
  %5069 = fptosi float %5068 to i32
  %5070 = bitcast i32 %5069 to float
  %5071 = fmul fast float %5070, %4268
  %5072 = fmul fast float %4988, %5071
  %5073 = fmul fast float %5072, %5041
  %5074 = fmul fast float %5073, %5058
  %5075 = fmul fast float %4989, %5071
  %5076 = fmul fast float %5075, %5041
  %5077 = fmul fast float %5076, %5059
  %5078 = fmul fast float %4990, %5071
  %5079 = fmul fast float %5078, %5041
  %5080 = fmul fast float %5079, %5060
  %5081 = fmul fast float %5042, %4264
  %5082 = fmul fast float %5043, %4264
  %5083 = fmul fast float %5044, %4264
  %5084 = fadd fast float %5061, %4257
  %5085 = fadd fast float %5084, %5074
  %5086 = fmul fast float %5085, %4264
  %5087 = fadd fast float %5062, %4258
  %5088 = fadd fast float %5087, %5077
  %5089 = fmul fast float %5088, %4264
  %5090 = fadd fast float %5063, %4259
  %5091 = fadd fast float %5090, %5080
  %5092 = fmul fast float %5091, %4264
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 3
  %5095 = fcmp fast oeq float %5094, 0.000000e+00
  br i1 %5095, label %6165, label %5096

; <label>:5096                                    ; preds = %5035
  %5097 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5098 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5099 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5102 = extractvalue %dx.types.CBufRet.f32 %5100, 1
  %5103 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5102, float %5103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = select i1 %220, float %5105, float %5101
  %5109 = select i1 %220, float %5107, float %5102
  %5110 = select i1 %220, float %5106, float %5103
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5113 = fmul fast float %5112, %102
  %5114 = fmul fast float %5112, %103
  %5115 = fmul fast float %5112, %104
  %5116 = fadd fast float %5113, %158
  %5117 = fadd fast float %5114, %159
  %5118 = fadd fast float %5115, %160
  %5119 = fcmp fast olt float %5094, 0.000000e+00
  br i1 %5119, label %5744, label %5120

; <label>:5120                                    ; preds = %5096
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.CBufRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5125 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.CBufRet.f32 %5126, 1
  %5129 = extractvalue %dx.types.CBufRet.f32 %5126, 2
  %5130 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5135 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5136 = fmul fast float %5122, %5116
  %5137 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5123, float %5136)  ; FMad(a,b,c)
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5124, float %5137)  ; FMad(a,b,c)
  %5139 = fadd fast float %5138, %5125
  %5140 = fmul fast float %5127, %5116
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5128, float %5140)  ; FMad(a,b,c)
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5129, float %5141)  ; FMad(a,b,c)
  %5143 = fadd fast float %5142, %5130
  %5144 = fmul fast float %5132, %5116
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5133, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5134, float %5145)  ; FMad(a,b,c)
  %5147 = fadd fast float %5146, %5135
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5152 = fmul fast float %5151, %5139
  %5153 = fmul fast float %5151, %5143
  %5154 = fadd fast float %5152, %5149
  %5155 = fadd fast float %5153, %5150
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5160 = fmul fast float %5159, %5139
  %5161 = fmul fast float %5159, %5143
  %5162 = fadd fast float %5160, %5157
  %5163 = fadd fast float %5161, %5158
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5166 = fsub fast float %5165, %5147
  %5167 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5168 = fmul fast float %5166, %5167
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5174 = fadd fast float %5173, %5171
  %5175 = fcmp fast ogt float %5174, 0.000000e+00
  br i1 %5175, label %5176, label %5200

; <label>:5176                                    ; preds = %5120
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5180 = fsub fast float %5162, %5178
  %5181 = fsub fast float %5163, %5179
  %5182 = fcmp fast olt float %5180, 0.000000e+00
  %5183 = fcmp fast olt float %5181, 0.000000e+00
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5188 = extractvalue %dx.types.CBufRet.f32 %5184, 3
  %5189 = select i1 %5182, float %5185, float %5187
  %5190 = select i1 %5183, float %5186, float %5188
  %5191 = fmul fast float %5189, %5180
  %5192 = fmul fast float %5190, %5181
  %5193 = call float @dx.op.unary.f32(i32 6, float %5191)  ; FAbs(value)
  %5194 = call float @dx.op.unary.f32(i32 6, float %5192)  ; FAbs(value)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5196 = call float @dx.op.binary.f32(i32 35, float %5193, float %5194)  ; FMax(a,b)
  %5197 = fsub fast float %5195, %5196
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, %5170
  br label %5200

; <label>:5200                                    ; preds = %5176, %5120
  %5201 = phi float [ %5199, %5176 ], [ 0.000000e+00, %5120 ]
  %5202 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5203 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5204 = fadd fast float %5203, %5202
  %5205 = fcmp fast ogt float %5204, 0.000000e+00
  %5206 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  br i1 %5205, label %5207, label %5230

; <label>:5207                                    ; preds = %5200
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5211 = fsub fast float %5154, %5209
  %5212 = fsub fast float %5155, %5210
  %5213 = fcmp fast olt float %5211, 0.000000e+00
  %5214 = fcmp fast olt float %5212, 0.000000e+00
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5226 = call float @dx.op.binary.f32(i32 35, float %5224, float %5225)  ; FMax(a,b)
  %5227 = fsub fast float %5206, %5226
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fmul fast float %5228, %5170
  br label %5230

; <label>:5230                                    ; preds = %5207, %5200
  %5231 = phi float [ %5229, %5207 ], [ 0.000000e+00, %5200 ]
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 1
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5238 = fsub fast float %5139, %5236
  %5239 = fsub fast float %5143, %5237
  %5240 = fcmp fast olt float %5238, 0.000000e+00
  %5241 = fcmp fast olt float %5239, 0.000000e+00
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5247 = select i1 %5240, float %5243, float %5245
  %5248 = select i1 %5241, float %5244, float %5246
  %5249 = fmul fast float %5247, %5238
  %5250 = fmul fast float %5248, %5239
  %5251 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5252 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5251, float %5252)  ; FMax(a,b)
  %5254 = fsub fast float %5206, %5253
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = call float @dx.op.binary.f32(i32 36, float %5255, float %5234)  ; FMin(a,b)
  %5257 = fmul fast float %5256, %5170
  %5258 = fsub fast float %5231, %5257
  %5259 = fsub fast float %5201, %5231
  %5260 = fsub fast float %5259, %5257
  %5261 = call float @dx.op.binary.f32(i32 35, float %5231, float %5201)  ; FMax(a,b)
  %5262 = call float @dx.op.binary.f32(i32 35, float %5257, float %5261)  ; FMax(a,b)
  %5263 = fcmp fast olt float %5262, 1.000000e+00
  br i1 %5263, label %5264, label %5662, !dx.controlflow.hints !91

; <label>:5264                                    ; preds = %5230
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = fcmp fast une float %5266, 0.000000e+00
  br i1 %5267, label %5268, label %5662, !dx.controlflow.hints !92

; <label>:5268                                    ; preds = %5264
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5278 = extractvalue %dx.types.CBufRet.f32 %5274, 3
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5283 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5284 = fmul fast float %5270, %5116
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5271, float %5284)  ; FMad(a,b,c)
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5272, float %5285)  ; FMad(a,b,c)
  %5287 = fadd fast float %5286, %5273
  %5288 = fmul fast float %5275, %5116
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5276, float %5288)  ; FMad(a,b,c)
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5277, float %5289)  ; FMad(a,b,c)
  %5291 = fadd fast float %5290, %5278
  %5292 = fmul fast float %5280, %5116
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5281, float %5292)  ; FMad(a,b,c)
  %5294 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5282, float %5293)  ; FMad(a,b,c)
  %5295 = fadd fast float %5294, %5283
  %5296 = fcmp fast oge float %5287, 1.000000e+00
  %5297 = fcmp fast oge float %5291, 1.000000e+00
  %5298 = or i1 %5296, %5297
  %5299 = fcmp fast olt float %5287, 0.000000e+00
  %5300 = fcmp fast olt float %5291, 0.000000e+00
  %5301 = or i1 %5299, %5300
  %5302 = or i1 %5298, %5301
  br i1 %5302, label %5662, label %5303, !dx.controlflow.hints !93

; <label>:5303                                    ; preds = %5268
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.i32 %5308, 2
  %5310 = uitofp i32 %5309 to float
  %5311 = extractvalue %dx.types.CBufRet.i32 %5308, 3
  %5312 = uitofp i32 %5311 to float
  %5313 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5314 = fmul fast float %5313, 2.000000e+00
  %5315 = fsub fast float %5287, %5305
  %5316 = fsub fast float %5291, %5306
  %5317 = fmul fast float %5314, %5315
  %5318 = fmul fast float %5314, %5316
  %5319 = fdiv fast float 1.000000e+00, %5099
  %5320 = fmul fast float %5318, %5319
  %5321 = call float @dx.op.unary.f32(i32 6, float %5320)  ; FAbs(value)
  %5322 = fmul fast float %5307, %5118
  %5323 = fmul fast float %5322, %5314
  %5324 = call float @dx.op.unary.f32(i32 6, float %5323)  ; FAbs(value)
  %5325 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5326 = call float @dx.op.binary.f32(i32 35, float %5324, float %5321)  ; FMax(a,b)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5325, float %5326)  ; FMax(a,b)
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = call float @dx.op.unary.f32(i32 23, float %5328)  ; Log(value)
  %5330 = call float @dx.op.binary.f32(i32 35, float %5329, float %5310)  ; FMax(a,b)
  %5331 = call float @dx.op.unary.f32(i32 22, float %5330)  ; Frc(value)
  %5332 = fadd fast float %5331, 0xBFEA666660000000
  %5333 = fmul fast float %5332, 8.000000e+00
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = call float @dx.op.unary.f32(i32 27, float %5330)  ; Round_ni(value)
  %5336 = fadd fast float %5335, %5334
  %5337 = call float @dx.op.binary.f32(i32 36, float %5336, float %5312)  ; FMin(a,b)
  %5338 = call float @dx.op.unary.f32(i32 27, float %5337)  ; Round_ni(value)
  %5339 = fsub fast float -0.000000e+00, %5338
  %5340 = call float @dx.op.unary.f32(i32 21, float %5339)  ; Exp(value)
  %5341 = fmul fast float %5340, %5314
  %5342 = fmul fast float %5341, %5287
  %5343 = fmul fast float %5341, %5291
  %5344 = fmul fast float %5342, 2.500000e-01
  %5345 = fmul fast float %5343, 2.500000e-01
  %5346 = fadd fast float %5344, 5.000000e-01
  %5347 = fadd fast float %5345, 5.000000e-01
  %5348 = fsub fast float %5312, %5310
  %5349 = fptoui float %5348 to i32
  %5350 = add i32 %5349, 320
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5350)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = fcmp fast une float %5337, %5312
  %5355 = fsub fast float %5287, %5352
  %5356 = fsub fast float %5291, %5353
  %5357 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5358 = call float @dx.op.unary.f32(i32 6, float %5356)  ; FAbs(value)
  %5359 = fmul fast float %5357, %5341
  %5360 = fmul fast float %5358, %5341
  %5361 = fcmp fast olt float %5359, 1.000000e+00
  %5362 = fcmp fast olt float %5360, 1.000000e+00
  %5363 = and i1 %5361, %5362
  %5364 = or i1 %5354, %5363
  br i1 %5364, label %5365, label %5662, !dx.controlflow.hints !94

; <label>:5365                                    ; preds = %5303
  %5366 = fmul fast float %5343, 5.000000e-01
  %5367 = fmul fast float %5342, 5.000000e-01
  %5368 = fadd fast float %5366, 5.000000e-01
  %5369 = fadd fast float %5367, 5.000000e-01
  %5370 = sitofp i32 %5309 to float
  %5371 = fsub fast float %5337, %5370
  %5372 = call float @dx.op.unary.f32(i32 27, float %5371)  ; Round_ni(value)
  %5373 = call float @dx.op.unary.f32(i32 22, float %5337)  ; Frc(value)
  %5374 = call float @dx.op.unary.f32(i32 22, float %5369)  ; Frc(value)
  %5375 = call float @dx.op.unary.f32(i32 22, float %5368)  ; Frc(value)
  %5376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5374, float %5375, float %5372, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.ResRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.ResRet.f32 %5376, 2
  %5380 = extractvalue %dx.types.ResRet.f32 %5376, 3
  %5381 = fcmp fast ogt float %5373, 0.000000e+00
  br i1 %5381, label %5382, label %5403, !dx.controlflow.hints !95

; <label>:5382                                    ; preds = %5365
  %5383 = fadd fast float %5372, 1.000000e+00
  %5384 = call float @dx.op.unary.f32(i32 22, float %5346)  ; Frc(value)
  %5385 = call float @dx.op.unary.f32(i32 22, float %5347)  ; Frc(value)
  %5386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5384, float %5385, float %5383, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5387 = extractvalue %dx.types.ResRet.f32 %5386, 0
  %5388 = extractvalue %dx.types.ResRet.f32 %5386, 1
  %5389 = extractvalue %dx.types.ResRet.f32 %5386, 2
  %5390 = extractvalue %dx.types.ResRet.f32 %5386, 3
  %5391 = fsub fast float %5387, %5377
  %5392 = fsub fast float %5388, %5378
  %5393 = fsub fast float %5389, %5379
  %5394 = fsub fast float %5390, %5380
  %5395 = fmul fast float %5391, %5373
  %5396 = fmul fast float %5392, %5373
  %5397 = fmul fast float %5393, %5373
  %5398 = fmul fast float %5394, %5373
  %5399 = fadd fast float %5395, %5377
  %5400 = fadd fast float %5396, %5378
  %5401 = fadd fast float %5397, %5379
  %5402 = fadd fast float %5398, %5380
  br label %5403

; <label>:5403                                    ; preds = %5382, %5365
  %5404 = phi float [ %5399, %5382 ], [ %5377, %5365 ]
  %5405 = phi float [ %5400, %5382 ], [ %5378, %5365 ]
  %5406 = phi float [ %5401, %5382 ], [ %5379, %5365 ]
  %5407 = phi float [ %5402, %5382 ], [ %5380, %5365 ]
  %5408 = fadd fast float %5404, -5.000000e-01
  %5409 = fadd fast float %5406, -5.000000e-01
  %5410 = fmul fast float %5408, 0xBFD5555560000000
  %5411 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5409, float %5410)  ; FMad(a,b,c)
  %5412 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5405, float 0.000000e+00)  ; FMad(a,b,c)
  %5413 = fadd fast float %5412, %5407
  %5414 = fmul fast float %5408, -7.500000e-01
  %5415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5409, float %5414)  ; FMad(a,b,c)
  %5416 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5405, float 0.000000e+00)  ; FMad(a,b,c)
  %5417 = fadd fast float %5416, %5407
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.CBufRet.f32 %5420, 1
  %5423 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5424 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5425 = fsub fast float %5421, %5411
  %5426 = fsub fast float %5422, %5413
  %5427 = fsub fast float %5423, %5415
  %5428 = fsub fast float %5424, %5417
  %5429 = fmul fast float %5425, %5419
  %5430 = fmul fast float %5426, %5419
  %5431 = fmul fast float %5427, %5419
  %5432 = fmul fast float %5428, %5419
  %5433 = fadd fast float %5429, %5411
  %5434 = fadd fast float %5430, %5413
  %5435 = fadd fast float %5431, %5415
  %5436 = fadd fast float %5432, %5417
  %5437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.i32 %5437, 0
  %5439 = and i32 %5438, 536870911
  %5440 = uitofp i32 %5439 to float
  %5441 = fmul fast float %5440, %5287
  %5442 = fmul fast float %5440, %5291
  %5443 = fptoui float %5441 to i32
  %5444 = fptoui float %5442 to i32
  %5445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.i32 %5445, 0
  %5447 = and i32 %5446, 31
  %5448 = lshr i32 %5443, %5447
  %5449 = lshr i32 %5444, %5447
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = and i32 %5451, 31
  %5453 = shl i32 1, %5452
  %5454 = call i32 @dx.op.binary.i32(i32 40, i32 %5453, i32 4)  ; UMin(a,b)
  %5455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.i32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.i32 %5455, 1
  %5458 = icmp eq i32 %5454, 0
  br i1 %5458, label %5500, label %5459

; <label>:5459                                    ; preds = %5403
  br label %5460

; <label>:5460                                    ; preds = %5488, %5459
  %5461 = phi i32 [ %5491, %5488 ], [ 0, %5459 ]
  %5462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5463 = extractvalue %dx.types.ResRet.i32 %5462, 0
  %5464 = lshr i32 %5463, 16
  %5465 = and i32 %5464, 31
  %5466 = shl i32 %5449, %5465
  %5467 = add i32 %5466, %5448
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = and i32 %5469, 31
  %5471 = shl i32 %5467, %5470
  %5472 = add i32 %5471, %5461
  %5473 = shl i32 %5472, 2
  %5474 = add i32 %5473, 32
  %5475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.i32 %5475, 0
  %5477 = icmp slt i32 %5476, 0
  %5478 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5461
  %5479 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5461
  %5480 = bitcast float* %5478 to i32*
  %5481 = bitcast float* %5479 to i32*
  br i1 %5477, label %5482, label %5488

; <label>:5482                                    ; preds = %5460
  %5483 = and i32 %5476, 1073741823
  %5484 = add nuw nsw i32 %5483, 20
  %5485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5484, i32 undef)  ; BufferLoad(srv,index,wot)
  %5486 = extractvalue %dx.types.ResRet.i32 %5485, 0
  %5487 = extractvalue %dx.types.ResRet.i32 %5485, 1
  br label %5488

; <label>:5488                                    ; preds = %5482, %5460
  %5489 = phi i32 [ %5486, %5482 ], [ %5456, %5460 ]
  %5490 = phi i32 [ %5487, %5482 ], [ %5457, %5460 ]
  store i32 %5489, i32* %5480, align 4
  store i32 %5490, i32* %5481, align 4
  %5491 = add nuw i32 %5461, 1
  %5492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.i32 %5492, 2
  %5494 = icmp eq i32 %5493, 0
  %5495 = icmp ugt i32 %5476, -1073741825
  %5496 = and i1 %5495, %5494
  %5497 = icmp ult i32 %5491, %5454
  %5498 = and i1 %5496, %5497
  br i1 %5498, label %5460, label %5499

; <label>:5499                                    ; preds = %5488
  br label %5500

; <label>:5500                                    ; preds = %5499, %5403
  %5501 = phi i32 [ 0, %5403 ], [ %5491, %5499 ]
  %5502 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5503 = fptoui float %5502 to i32
  %5504 = icmp eq i32 %5503, 0
  br i1 %5504, label %5556, label %5505

; <label>:5505                                    ; preds = %5500
  br label %5506

; <label>:5506                                    ; preds = %5551, %5505
  %5507 = phi i32 [ %5552, %5551 ], [ %5501, %5505 ]
  %5508 = phi i32 [ %5553, %5551 ], [ 0, %5505 ]
  %5509 = lshr i32 %5508, 2
  %5510 = and i32 %5508, 3
  %5511 = add nuw nsw i32 %5509, 83
  %5512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5511)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.i32 %5512, 0
  %5514 = extractvalue %dx.types.CBufRet.i32 %5512, 1
  %5515 = extractvalue %dx.types.CBufRet.i32 %5512, 2
  %5516 = extractvalue %dx.types.CBufRet.i32 %5512, 3
  %5517 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5513, i32* %5517, align 4
  %5518 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5514, i32* %5518, align 4
  %5519 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5515, i32* %5519, align 4
  %5520 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5516, i32* %5520, align 4
  %5521 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5510
  %5522 = load i32, i32* %5521, align 4, !tbaa !96, !noalias !100
  %5523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.i32 %5523, 0
  %5525 = lshr i32 %5524, 16
  %5526 = and i32 %5525, 31
  %5527 = shl i32 %5449, %5526
  %5528 = add i32 %5527, %5448
  %5529 = shl i32 %5528, 2
  %5530 = add i32 %5529, %5522
  %5531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5530, i32 undef)  ; BufferLoad(srv,index,wot)
  %5532 = extractvalue %dx.types.ResRet.i32 %5531, 0
  %5533 = icmp eq i32 %5532, 0
  br i1 %5533, label %5551, label %5534

; <label>:5534                                    ; preds = %5506
  %5535 = icmp slt i32 %5532, 0
  %5536 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5507
  %5537 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5507
  %5538 = bitcast float* %5536 to i32*
  %5539 = bitcast float* %5537 to i32*
  br i1 %5535, label %5540, label %5547

; <label>:5540                                    ; preds = %5534
  %5541 = and i32 %5532, 1073741823
  %5542 = add i32 %5522, 20
  %5543 = add i32 %5542, %5541
  %5544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5543, i32 undef)  ; BufferLoad(srv,index,wot)
  %5545 = extractvalue %dx.types.ResRet.i32 %5544, 0
  %5546 = extractvalue %dx.types.ResRet.i32 %5544, 1
  br label %5547

; <label>:5547                                    ; preds = %5540, %5534
  %5548 = phi i32 [ %5545, %5540 ], [ %5456, %5534 ]
  %5549 = phi i32 [ %5546, %5540 ], [ %5457, %5534 ]
  store i32 %5548, i32* %5538, align 4
  store i32 %5549, i32* %5539, align 4
  %5550 = add i32 %5507, 1
  br label %5551

; <label>:5551                                    ; preds = %5547, %5506
  %5552 = phi i32 [ %5507, %5506 ], [ %5550, %5547 ]
  %5553 = add nuw i32 %5508, 1
  %5554 = icmp eq i32 %5553, %5503
  br i1 %5554, label %5555, label %5506

; <label>:5555                                    ; preds = %5551
  br label %5556

; <label>:5556                                    ; preds = %5555, %5500
  %5557 = phi i32 [ %5501, %5500 ], [ %5552, %5555 ]
  %5558 = icmp eq i32 %5557, 1
  %5559 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5560 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5558, label %5561, label %5564

; <label>:5561                                    ; preds = %5556
  %5562 = load float, float* %5559, align 4
  %5563 = load float, float* %5560, align 4
  br label %5591

; <label>:5564                                    ; preds = %5556
  %5565 = load float, float* %5559, align 4
  %5566 = load float, float* %5560, align 4
  %5567 = fdiv fast float 1.000000e+00, %5566
  %5568 = fsub fast float %5565, %5567
  %5569 = icmp ugt i32 %5557, 1
  br i1 %5569, label %5570, label %5586

; <label>:5570                                    ; preds = %5564
  br label %5571

; <label>:5571                                    ; preds = %5571, %5570
  %5572 = phi float [ %5581, %5571 ], [ %5568, %5570 ]
  %5573 = phi float [ %5582, %5571 ], [ %5565, %5570 ]
  %5574 = phi i32 [ %5583, %5571 ], [ 1, %5570 ]
  %5575 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5574
  %5576 = load float, float* %5575, align 4
  %5577 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5574
  %5578 = load float, float* %5577, align 4
  %5579 = fdiv fast float 1.000000e+00, %5578
  %5580 = fsub fast float %5576, %5579
  %5581 = call float @dx.op.binary.f32(i32 36, float %5572, float %5580)  ; FMin(a,b)
  %5582 = call float @dx.op.binary.f32(i32 35, float %5573, float %5576)  ; FMax(a,b)
  %5583 = add nuw i32 %5574, 1
  %5584 = icmp eq i32 %5583, %5557
  br i1 %5584, label %5585, label %5571

; <label>:5585                                    ; preds = %5571
  br label %5586

; <label>:5586                                    ; preds = %5585, %5564
  %5587 = phi float [ %5568, %5564 ], [ %5581, %5585 ]
  %5588 = phi float [ %5565, %5564 ], [ %5582, %5585 ]
  %5589 = fsub fast float %5588, %5587
  %5590 = fdiv fast float 1.000000e+00, %5589
  br label %5591

; <label>:5591                                    ; preds = %5586, %5561
  %5592 = phi float [ %5562, %5561 ], [ %5588, %5586 ]
  %5593 = phi float [ %5563, %5561 ], [ %5590, %5586 ]
  %5594 = fadd fast float %5295, %5592
  %5595 = fmul fast float %5594, %5593
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fmul fast float %5596, 2.000000e+00
  %5598 = fsub fast float 1.000000e+00, %5597
  %5599 = fmul fast float %5433, %5433
  %5600 = fsub fast float %5434, %5599
  %5601 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5600)  ; FMax(a,b)
  %5602 = fdiv fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5434, %5433
  %5604 = fsub fast float %5435, %5603
  %5605 = fsub fast float %5598, %5433
  %5606 = fmul fast float %5598, %5598
  %5607 = fsub fast float %5606, %5434
  %5608 = fmul fast float %5602, %5604
  %5609 = fmul fast float %5608, %5605
  %5610 = fsub fast float %5607, %5609
  %5611 = fmul fast float %5434, %5434
  %5612 = fsub fast float %5436, %5611
  %5613 = fmul fast float %5604, %5604
  %5614 = fmul fast float %5613, %5602
  %5615 = fsub fast float %5612, %5614
  %5616 = fdiv fast float %5610, %5615
  %5617 = fmul fast float %5616, %5604
  %5618 = fsub fast float %5605, %5617
  %5619 = fmul fast float %5618, %5602
  %5620 = fmul fast float %5619, %5433
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fmul fast float %5616, %5434
  %5623 = fsub fast float %5621, %5622
  %5624 = fmul fast float %5619, %5619
  %5625 = fmul fast float %5616, 4.000000e+00
  %5626 = fmul fast float %5625, %5623
  %5627 = fsub fast float %5624, %5626
  %5628 = call float @dx.op.unary.f32(i32 24, float %5627)  ; Sqrt(value)
  %5629 = fcmp fast oge float %5619, 0.000000e+00
  %5630 = fsub fast float -0.000000e+00, %5628
  %5631 = select i1 %5629, float %5630, float %5628
  %5632 = fsub fast float %5631, %5619
  %5633 = fdiv fast float %5632, %5616
  %5634 = fdiv fast float %5623, %5632
  %5635 = fmul fast float %5633, 5.000000e-01
  %5636 = fmul fast float %5634, 2.000000e+00
  %5637 = select i1 %5629, float %5635, float %5636
  %5638 = select i1 %5629, float %5636, float %5635
  %5639 = call float @dx.op.binary.f32(i32 35, float %5637, float %5638)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 36, float %5637, float %5638)  ; FMin(a,b)
  %5641 = fcmp fast ogt float %5598, %5639
  %5642 = fsub fast float %5598, %5640
  %5643 = fsub fast float %5598, %5639
  %5644 = fsub fast float %5639, %5640
  %5645 = select i1 %5641, float %5643, float %5644
  %5646 = fmul float %5642, %5645
  %5647 = select i1 %5641, float %5640, float %5598
  %5648 = fcmp fast ogt float %5598, %5640
  %5649 = fmul fast float %5647, %5639
  %5650 = fadd fast float %5647, %5639
  %5651 = fmul fast float %5650, %5433
  %5652 = fadd fast float %5649, %5434
  %5653 = fsub fast float %5652, %5651
  %5654 = fdiv fast float %5653, %5646
  %5655 = select i1 %5648, float %5654, float 0.000000e+00
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = select i1 %5641, float %5656, float %5655
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5660 = fmul fast float %5659, %5658
  %5661 = fsub fast float 1.000000e+00, %5660
  br label %5662

; <label>:5662                                    ; preds = %5591, %5303, %5268, %5264, %5230
  %5663 = phi float [ 1.000000e+00, %5230 ], [ %5661, %5591 ], [ 1.000000e+00, %5268 ], [ 1.000000e+00, %5303 ], [ 1.000000e+00, %5264 ]
  %5664 = fcmp fast ogt float %5260, 0.000000e+00
  br i1 %5664, label %5665, label %5671, !dx.controlflow.hints !109

; <label>:5665                                    ; preds = %5662
  %5666 = fadd fast float %5173, %5147
  %5667 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5668 = fadd fast float %5667, 0x3F10000000000000
  %5669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5162, float %5163, float undef, float undef, i32 0, i32 0, i32 undef, float %5668)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  br label %5671

; <label>:5671                                    ; preds = %5665, %5662
  %5672 = phi float [ %5670, %5665 ], [ 1.000000e+00, %5662 ]
  %5673 = fcmp fast ogt float %5258, 0.000000e+00
  br i1 %5673, label %5674, label %5680, !dx.controlflow.hints !110

; <label>:5674                                    ; preds = %5671
  %5675 = fadd fast float %5203, %5147
  %5676 = call float @dx.op.binary.f32(i32 35, float %5675, float 0.000000e+00)  ; FMax(a,b)
  %5677 = fadd fast float %5676, 0x3F10000000000000
  %5678 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5154, float %5155, float undef, float undef, i32 0, i32 0, i32 undef, float %5677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 0
  br label %5680

; <label>:5680                                    ; preds = %5674, %5671
  %5681 = phi float [ %5679, %5674 ], [ 1.000000e+00, %5671 ]
  %5682 = fcmp fast ogt float %5257, 0.000000e+00
  br i1 %5682, label %5683, label %5690, !dx.controlflow.hints !111

; <label>:5683                                    ; preds = %5680
  %5684 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5685 = fadd fast float %5684, %5147
  %5686 = call float @dx.op.binary.f32(i32 35, float %5685, float 0.000000e+00)  ; FMax(a,b)
  %5687 = fadd fast float %5686, 0x3F10000000000000
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5139, float %5143, float undef, float undef, i32 0, i32 0, i32 undef, float %5687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  br label %5690

; <label>:5690                                    ; preds = %5683, %5680
  %5691 = phi float [ %5689, %5683 ], [ 1.000000e+00, %5680 ]
  %5692 = fsub fast float %5672, %5663
  %5693 = fmul fast float %5692, %5201
  %5694 = fadd fast float %5693, %5663
  %5695 = fsub fast float %5681, %5694
  %5696 = fmul fast float %5695, %5231
  %5697 = fadd fast float %5696, %5694
  %5698 = fsub fast float %5691, %5697
  %5699 = fmul fast float %5698, %5257
  %5700 = fadd fast float %5699, %5697
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5703 = fcmp fast ogt float %5702, 0.000000e+00
  br i1 %5703, label %5704, label %5744, !dx.controlflow.hints !112

; <label>:5704                                    ; preds = %5690
  %5705 = fcmp fast ugt float %5702, 0.000000e+00
  br i1 %5705, label %5706, label %5741

; <label>:5706                                    ; preds = %5704
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5711 = extractvalue %dx.types.CBufRet.f32 %5707, 3
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5715 = extractvalue %dx.types.CBufRet.f32 %5712, 2
  %5716 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5717 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = fadd fast float %5720, %5116
  %5724 = fadd fast float %5721, %5117
  %5725 = fadd fast float %5722, %5118
  %5726 = fmul fast float %5723, %5708
  %5727 = call float @dx.op.tertiary.f32(i32 46, float %5709, float %5724, float %5726)  ; FMad(a,b,c)
  %5728 = call float @dx.op.tertiary.f32(i32 46, float %5710, float %5725, float %5727)  ; FMad(a,b,c)
  %5729 = fadd fast float %5728, %5711
  %5730 = fmul fast float %5723, %5713
  %5731 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5724, float %5730)  ; FMad(a,b,c)
  %5732 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5725, float %5731)  ; FMad(a,b,c)
  %5733 = fadd fast float %5732, %5716
  %5734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5729, float %5733, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5735 = extractvalue %dx.types.ResRet.f32 %5734, 0
  %5736 = fmul fast float %5735, %5718
  %5737 = fadd fast float %5736, %5717
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fmul fast float %5738, %5702
  %5740 = fsub fast float 1.000000e+00, %5739
  br label %5741

; <label>:5741                                    ; preds = %5706, %5704
  %5742 = phi float [ %5740, %5706 ], [ 1.000000e+00, %5704 ]
  %5743 = fmul fast float %5742, %5700
  br label %5744

; <label>:5744                                    ; preds = %5741, %5690, %5096
  %5745 = phi float [ 1.000000e+00, %5096 ], [ %5743, %5741 ], [ %5700, %5690 ]
  %5746 = call float @dx.op.binary.f32(i32 36, float %5745, float %5745)  ; FMin(a,b)
  %5747 = call float @dx.op.binary.f32(i32 36, float %5745, float %5746)  ; FMin(a,b)
  %5748 = fcmp fast ogt float %5747, 0.000000e+00
  br i1 %5748, label %5749, label %5909, !dx.controlflow.hints !113

; <label>:5749                                    ; preds = %5744
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5759 = extractvalue %dx.types.CBufRet.f32 %5755, 3
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5765 = fmul fast float %5751, %5116
  %5766 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5752, float %5765)  ; FMad(a,b,c)
  %5767 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5753, float %5766)  ; FMad(a,b,c)
  %5768 = fadd fast float %5767, %5754
  %5769 = fmul fast float %5756, %5116
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5757, float %5769)  ; FMad(a,b,c)
  %5771 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5758, float %5770)  ; FMad(a,b,c)
  %5772 = fadd fast float %5771, %5759
  %5773 = fmul fast float %5761, %5116
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5762, float %5773)  ; FMad(a,b,c)
  %5775 = call float @dx.op.tertiary.f32(i32 46, float %5118, float %5763, float %5774)  ; FMad(a,b,c)
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5780 = fmul fast float %5779, %5768
  %5781 = fmul fast float %5779, %5772
  %5782 = fadd fast float %5780, %5777
  %5783 = fadd fast float %5781, %5778
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = fsub fast float %5782, %5785
  %5788 = fsub fast float %5783, %5786
  %5789 = fcmp fast olt float %5787, 0.000000e+00
  %5790 = fcmp fast olt float %5788, 0.000000e+00
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5796 = select i1 %5789, float %5792, float %5794
  %5797 = select i1 %5790, float %5793, float %5795
  %5798 = fmul fast float %5796, %5787
  %5799 = fmul fast float %5797, %5788
  %5800 = call float @dx.op.unary.f32(i32 6, float %5798)  ; FAbs(value)
  %5801 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5803 = call float @dx.op.binary.f32(i32 35, float %5800, float %5801)  ; FMax(a,b)
  %5804 = fsub fast float %5802, %5803
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5806 = fcmp fast ogt float %5805, 0.000000e+00
  br i1 %5806, label %5807, label %5848, !dx.controlflow.hints !114

; <label>:5807                                    ; preds = %5749
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5782, float %5783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5810 = fcmp fast ogt float %5809, 0.000000e+00
  br i1 %5810, label %5811, label %5843

; <label>:5811                                    ; preds = %5807
  %5812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5782, float %5783, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.ResRet.f32 %5812, 3
  %5817 = fsub fast float 1.000000e+00, %5764
  %5818 = fsub fast float %5817, %5775
  %5819 = fmul fast float %5818, 0x400921FB60000000
  %5820 = fadd fast float %5819, 0x3FF921FB60000000
  %5821 = call float @dx.op.unary.f32(i32 13, float %5820)  ; Sin(value)
  %5822 = fadd fast float %5821, -1.000000e+00
  %5823 = fmul fast float %5822, 0x3FD45F3060000000
  %5824 = fmul fast float %5818, 0x401921FB60000000
  %5825 = fadd fast float %5824, 0x400921FB60000000
  %5826 = call float @dx.op.unary.f32(i32 13, float %5825)  ; Sin(value)
  %5827 = fadd fast float %5826, 0x3E7777A5C0000000
  %5828 = fmul fast float %5827, 0x3FC45F3060000000
  %5829 = fmul fast float %5818, 0x4022D97C80000000
  %5830 = fadd fast float %5829, 0x4012D97C80000000
  %5831 = call float @dx.op.unary.f32(i32 13, float %5830)  ; Sin(value)
  %5832 = fadd fast float %5831, 1.000000e+00
  %5833 = fmul fast float %5832, 0x3FBB2995E0000000
  %5834 = fmul fast float %5818, 0x402921FB60000000
  %5835 = fadd fast float %5834, 0x401921FB60000000
  %5836 = call float @dx.op.unary.f32(i32 13, float %5835)  ; Sin(value)
  %5837 = fadd fast float %5836, 0xBE8777A5C0000000
  %5838 = fmul fast float %5837, 0x3FB45F3060000000
  %5839 = call float @dx.op.dot4.f32(i32 56, float %5813, float %5814, float %5815, float %5816, float %5823, float %5828, float %5833, float %5838)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5840 = fmul fast float %5839, 0xBFF7154760000000
  %5841 = call float @dx.op.unary.f32(i32 21, float %5840)  ; Exp(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  br label %5843

; <label>:5843                                    ; preds = %5811, %5807
  %5844 = phi float [ %5842, %5811 ], [ 1.000000e+00, %5807 ]
  %5845 = fadd fast float %5844, -1.000000e+00
  %5846 = fmul fast float %5845, %5805
  %5847 = fadd fast float %5846, 1.000000e+00
  br label %5848

; <label>:5848                                    ; preds = %5843, %5749
  %5849 = phi float [ %5847, %5843 ], [ 1.000000e+00, %5749 ]
  %5850 = fmul fast float %5849, %5745
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5855 = fadd fast float %5852, %158
  %5856 = fadd fast float %5853, %159
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5859 = fsub fast float -0.000000e+00, %5855
  %5860 = fsub fast float -0.000000e+00, %5856
  %5861 = fsub fast float %4880, %5854
  %5862 = fadd fast float %5861, %5858
  %5863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5859, float %5860, float %5862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5097, float %5098, float %5099)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = fdiv fast float 1.000000e+00, %5864
  %5866 = fmul fast float %5865, %5863
  %5867 = fmul fast float %5097, %5866
  %5868 = fmul fast float %5098, %5866
  %5869 = fadd fast float %5867, %5855
  %5870 = fadd fast float %5868, %5856
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = fsub fast float %5869, %5872
  %5875 = fsub fast float %5870, %5873
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5879 = fmul fast float %5874, %5877
  %5880 = fmul fast float %5875, %5878
  %5881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.i32 %5881, 3
  %5883 = icmp eq i32 %5882, 0
  br i1 %5883, label %5889, label %5884

; <label>:5884                                    ; preds = %5848
  %5885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5879, float %5880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5886 = extractvalue %dx.types.ResRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.ResRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.ResRet.f32 %5885, 2
  br label %5894

; <label>:5889                                    ; preds = %5848
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5879, float %5880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  br label %5894

; <label>:5894                                    ; preds = %5889, %5884
  %5895 = phi float [ %5886, %5884 ], [ %5891, %5889 ]
  %5896 = phi float [ %5887, %5884 ], [ %5892, %5889 ]
  %5897 = phi float [ %5888, %5884 ], [ %5893, %5889 ]
  %5898 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5899 = fmul fast float %5898, %5895
  %5900 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5901 = fsub fast float %5866, %5900
  %5902 = fsub fast float %5901, %5899
  %5903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5902)  ; FMax(a,b)
  %5904 = fmul fast float %5903, %5896
  %5905 = call float @dx.op.binary.f32(i32 36, float %5897, float %5904)  ; FMin(a,b)
  %5906 = fmul fast float %5905, 0xBFF7154760000000
  %5907 = call float @dx.op.unary.f32(i32 21, float %5906)  ; Exp(value)
  %5908 = fmul fast float %5850, %5907
  br label %5909

; <label>:5909                                    ; preds = %5894, %5744
  %5910 = phi float [ %5908, %5894 ], [ %5745, %5744 ]
  %5911 = call float @dx.op.binary.f32(i32 36, float %5910, float %5910)  ; FMin(a,b)
  %5912 = call float @dx.op.binary.f32(i32 36, float %5910, float %5911)  ; FMin(a,b)
  %5913 = fcmp fast ogt float %5912, 0.000000e+00
  br i1 %5913, label %5914, label %6165, !dx.controlflow.hints !115

; <label>:5914                                    ; preds = %5909
  %5915 = fmul fast float %5910, %5108
  %5916 = fmul fast float %5910, %5109
  %5917 = fmul fast float %5910, %5110
  %5918 = fsub fast float %160, %4668
  %5919 = fcmp fast ogt float %5918, 0.000000e+00
  %5920 = fmul fast float %5097, 5.120000e+02
  %5921 = fmul fast float %5098, 5.120000e+02
  %5922 = fmul fast float %5099, 5.120000e+02
  %5923 = fadd fast float %5922, %160
  %5924 = fsub fast float %4668, %5923
  %5925 = fmul fast float %5924, 2.000000e+00
  %5926 = fadd fast float %5925, %5923
  %5927 = select i1 %5919, float %5926, float %5923
  %5928 = fsub fast float %5927, %160
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5928, float %5920, float %5921, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.unary.f32(i32 25, float %5929)  ; Rsqrt(value)
  %5931 = fmul fast float %5930, %5920
  %5932 = fmul fast float %5930, %5921
  %5933 = fmul fast float %5930, %5928
  %5934 = fsub fast float %4668, %160
  %5935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fdiv fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5937, %5935
  %5939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5918, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = fcmp fast ogt float %5939, 0.000000e+00
  %5941 = fcmp fast olt float %5939, 0.000000e+00
  %5942 = zext i1 %5940 to i32
  %5943 = zext i1 %5941 to i32
  %5944 = sub nsw i32 %5942, %5943
  %5945 = sitofp i32 %5944 to float
  %5946 = fsub fast float %5927, %4668
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5946, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = fcmp fast ogt float %5947, 0.000000e+00
  %5949 = fcmp fast olt float %5947, 0.000000e+00
  %5950 = zext i1 %5948 to i32
  %5951 = zext i1 %5949 to i32
  %5952 = sub nsw i32 %5950, %5951
  %5953 = sitofp i32 %5952 to float
  %5954 = fcmp fast une float %5945, %5953
  br i1 %5954, label %5955, label %5965

; <label>:5955                                    ; preds = %5914
  %5956 = fmul fast float %5938, %5933
  %5957 = fmul fast float %5938, %5932
  %5958 = fmul fast float %5938, %5931
  %5959 = fmul fast float %5958, %5958
  %5960 = fmul fast float %5957, %5957
  %5961 = fadd fast float %5959, %5960
  %5962 = fmul fast float %5956, %5956
  %5963 = fadd fast float %5961, %5962
  %5964 = call float @dx.op.unary.f32(i32 24, float %5963)  ; Sqrt(value)
  br label %5975

; <label>:5965                                    ; preds = %5914
  %5966 = icmp slt i32 %5944, 0
  br i1 %5966, label %5967, label %5975

; <label>:5967                                    ; preds = %5965
  %5968 = fsub fast float %160, %5927
  %5969 = fmul fast float %5920, %5920
  %5970 = fmul fast float %5921, %5921
  %5971 = fadd fast float %5969, %5970
  %5972 = fmul fast float %5968, %5968
  %5973 = fadd fast float %5971, %5972
  %5974 = call float @dx.op.unary.f32(i32 24, float %5973)  ; Sqrt(value)
  br label %5975

; <label>:5975                                    ; preds = %5967, %5965, %5955
  %5976 = phi float [ %5964, %5955 ], [ %5974, %5967 ], [ 0.000000e+00, %5965 ]
  %5977 = fsub fast float -0.000000e+00, %5976
  %5978 = select i1 %5919, float -0.000000e+00, float %5977
  %5979 = fmul fast float %4669, 0x3FF7154760000000
  %5980 = fmul fast float %5979, %5978
  %5981 = fmul fast float %4670, 0x3FF7154760000000
  %5982 = fmul fast float %5981, %5978
  %5983 = fmul fast float %4671, 0x3FF7154760000000
  %5984 = fmul fast float %5983, %5978
  %5985 = call float @dx.op.unary.f32(i32 21, float %5980)  ; Exp(value)
  %5986 = call float @dx.op.unary.f32(i32 21, float %5982)  ; Exp(value)
  %5987 = call float @dx.op.unary.f32(i32 21, float %5984)  ; Exp(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5990 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5991 = fmul fast float %5915, %5988
  %5992 = fmul fast float %5916, %5989
  %5993 = fmul fast float %5917, %5990
  %5994 = fsub fast float %5097, %4868
  %5995 = fsub fast float %5098, %4867
  %5996 = fsub fast float %5099, %4866
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = call float @dx.op.unary.f32(i32 25, float %5997)  ; Rsqrt(value)
  %5999 = fmul fast float %5998, %5994
  %6000 = fmul fast float %5998, %5995
  %6001 = fmul fast float %5998, %5996
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4864, float %4863, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6005 = fmul fast float %6004, %6004
  %6006 = fmul fast float %6005, %4896
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fmul fast float %6007, %6004
  %6009 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = fmul fast float %6009, %6009
  %6011 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6012 = fsub fast float 1.000000e+00, %4878
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float 0x3F847AE140000000)  ; FMax(a,b)
  %6014 = fmul fast float %6013, %6013
  %6015 = fmul fast float %6014, %6014
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = fmul fast float %4883, %4883
  %6018 = fmul fast float %6017, %6016
  %6019 = fadd fast float %6018, %6015
  %6020 = bitcast float %6019 to i32
  %6021 = ashr i32 %6020, 1
  %6022 = add nsw i32 %6021, 532487669
  %6023 = bitcast i32 %6022 to float
  %6024 = fadd fast float %6023, %4883
  %6025 = fmul fast float %6015, %6010
  %6026 = fsub fast float 1.000000e+00, %6010
  %6027 = fadd fast float %6026, %6025
  %6028 = fmul fast float %6011, %6011
  %6029 = fmul fast float %6028, %6016
  %6030 = fadd fast float %6029, %6015
  %6031 = bitcast float %6030 to i32
  %6032 = ashr i32 %6031, 1
  %6033 = add nsw i32 %6032, 532487669
  %6034 = bitcast i32 %6033 to float
  %6035 = fadd fast float %6034, %6011
  %6036 = fmul fast float %6027, %6027
  %6037 = fmul fast float %6036, %6024
  %6038 = fmul fast float %6037, %6035
  %6039 = fdiv fast float 0x3FF0A00000000000, %6038
  %6040 = fmul fast float %6039, %6015
  %6041 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6042 = fsub fast float 1.000000e+00, %6041
  %6043 = bitcast float %6042 to i32
  %6044 = sitofp i32 %6043 to float
  %6045 = fmul fast float %6044, 5.000000e+00
  %6046 = fadd fast float %6045, 0xC1EFBF8940000000
  %6047 = fptosi float %6046 to i32
  %6048 = bitcast i32 %6047 to float
  %6049 = fsub fast float 1.000000e+00, %4869
  %6050 = fsub fast float 1.000000e+00, %4870
  %6051 = fsub fast float 1.000000e+00, %4881
  %6052 = fmul fast float %6048, %6049
  %6053 = fmul fast float %6048, %6050
  %6054 = fmul fast float %6048, %6051
  %6055 = fadd fast float %6052, %4869
  %6056 = fadd fast float %6053, %4870
  %6057 = fadd fast float %6054, %4881
  br i1 %5008, label %6058, label %6081

; <label>:6058                                    ; preds = %5975
  %6059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4267, float %6041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fmul fast float %4869, 4.000000e+00
  %6067 = fmul fast float %6066, %6049
  %6068 = fmul fast float %6067, %6063
  %6069 = fmul fast float %4870, 4.000000e+00
  %6070 = fmul fast float %6069, %6050
  %6071 = fmul fast float %6070, %6064
  %6072 = fmul fast float %4881, 4.000000e+00
  %6073 = fmul fast float %6072, %6051
  %6074 = fmul fast float %6073, %6065
  %6075 = fadd fast float %6068, %6055
  %6076 = fadd fast float %6071, %6056
  %6077 = fadd fast float %6074, %6057
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  br label %6081

; <label>:6081                                    ; preds = %6058, %5975
  %6082 = phi float [ %6078, %6058 ], [ %6055, %5975 ]
  %6083 = phi float [ %6079, %6058 ], [ %6056, %5975 ]
  %6084 = phi float [ %6080, %6058 ], [ %6057, %5975 ]
  %6085 = fmul fast float %6002, 9.843750e-01
  %6086 = fadd fast float %6085, 7.812500e-03
  %6087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6086, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 3
  %6090 = fmul fast float %6088, %4869
  %6091 = fmul fast float %6088, %4870
  %6092 = fmul fast float %6088, %4881
  %6093 = fadd fast float %6090, %6089
  %6094 = fadd fast float %6091, %6089
  %6095 = fadd fast float %6092, %6089
  br i1 %5008, label %6096, label %6119

; <label>:6096                                    ; preds = %6081
  %6097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4267, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fadd fast float %6100, -5.000000e-01
  %6104 = fmul fast float %4869, 4.000000e+00
  %6105 = fmul fast float %6104, %6049
  %6106 = fmul fast float %6105, %6101
  %6107 = fmul fast float %4870, 4.000000e+00
  %6108 = fmul fast float %6107, %6050
  %6109 = fmul fast float %6108, %6102
  %6110 = fmul fast float %4881, 4.000000e+00
  %6111 = fmul fast float %6110, %6051
  %6112 = fmul fast float %6111, %6103
  %6113 = fadd fast float %6106, %6093
  %6114 = fadd fast float %6109, %6094
  %6115 = fadd fast float %6112, %6095
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  br label %6119

; <label>:6119                                    ; preds = %6096, %6081
  %6120 = phi float [ %6116, %6096 ], [ %6093, %6081 ]
  %6121 = phi float [ %6117, %6096 ], [ %6094, %6081 ]
  %6122 = phi float [ %6118, %6096 ], [ %6095, %6081 ]
  %6123 = call float @dx.op.binary.f32(i32 35, float %6121, float %6122)  ; FMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 35, float %6120, float %6123)  ; FMax(a,b)
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fmul fast float %6082, %6040
  %6127 = fmul fast float %6083, %6040
  %6128 = fmul fast float %6084, %6040
  %6129 = fsub fast float 1.000000e+00, %6003
  %6130 = bitcast float %6129 to i32
  %6131 = sitofp i32 %6130 to float
  %6132 = fmul fast float %6131, 5.000000e+00
  %6133 = fadd fast float %6132, 0xC1EFBF8940000000
  %6134 = fptosi float %6133 to i32
  %6135 = bitcast i32 %6134 to float
  %6136 = fmul fast float %6135, %4268
  %6137 = fmul fast float %6125, %6136
  %6138 = fmul fast float %6137, %5058
  %6139 = fmul fast float %6137, %5059
  %6140 = fmul fast float %6137, %5060
  %6141 = fadd fast float %6138, %6126
  %6142 = fadd fast float %6139, %6127
  %6143 = fadd fast float %6140, %6128
  %6144 = fmul fast float %6008, %5991
  %6145 = fmul fast float %6144, %6125
  %6146 = fmul fast float %6008, %5992
  %6147 = fmul fast float %6146, %6125
  %6148 = fmul fast float %6008, %5993
  %6149 = fmul fast float %6148, %6125
  %6150 = fmul fast float %6144, %6141
  %6151 = fmul fast float %6146, %6142
  %6152 = fmul fast float %6148, %6143
  %6153 = fadd fast float %6145, %5042
  %6154 = fmul fast float %6153, %4264
  %6155 = fadd fast float %6147, %5043
  %6156 = fmul fast float %6155, %4264
  %6157 = fadd fast float %6149, %5044
  %6158 = fmul fast float %6157, %4264
  %6159 = fadd fast float %6150, %5085
  %6160 = fmul fast float %6159, %4264
  %6161 = fadd fast float %6151, %5088
  %6162 = fmul fast float %6161, %4264
  %6163 = fadd fast float %6152, %5091
  %6164 = fmul fast float %6163, %4264
  br label %6165

; <label>:6165                                    ; preds = %6119, %5909, %5035
  %6166 = phi float [ %5086, %5035 ], [ %5086, %5909 ], [ %6160, %6119 ]
  %6167 = phi float [ %5089, %5035 ], [ %5089, %5909 ], [ %6162, %6119 ]
  %6168 = phi float [ %5092, %5035 ], [ %5092, %5909 ], [ %6164, %6119 ]
  %6169 = phi float [ %5081, %5035 ], [ %5081, %5909 ], [ %6154, %6119 ]
  %6170 = phi float [ %5082, %5035 ], [ %5082, %5909 ], [ %6156, %6119 ]
  %6171 = phi float [ %5083, %5035 ], [ %5083, %5909 ], [ %6158, %6119 ]
  %6172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.i32 %6172, 0
  %6174 = icmp eq i32 %6173, 0
  br i1 %6174, label %6795, label %6175

; <label>:6175                                    ; preds = %6165
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6179 = fmul fast float %6177, %95
  %6180 = fmul fast float %6178, %96
  %6181 = fptoui float %6179 to i32
  %6182 = fptoui float %6180 to i32
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6187 = fadd fast float %86, -4.000000e+00
  %6188 = call float @dx.op.binary.f32(i32 35, float %6187, float 0.000000e+00)  ; FMax(a,b)
  %6189 = fadd fast float %6188, %6184
  %6190 = fmul fast float %6189, %6185
  %6191 = call float @dx.op.unary.f32(i32 23, float %6190)  ; Log(value)
  %6192 = fmul fast float %6191, %6186
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6195 = fmul fast float %6192, %6194
  %6196 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.i32 %6197, 1
  %6199 = add i32 %6198, -1
  %6200 = uitofp i32 %6198 to float
  %6201 = fmul fast float %6200, %6196
  %6202 = fptoui float %6201 to i32
  %6203 = call i32 @dx.op.binary.i32(i32 40, i32 %6202, i32 %6199)  ; UMin(a,b)
  %6204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.i32 %6204, 2
  %6206 = extractvalue %dx.types.CBufRet.i32 %6204, 3
  %6207 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6182, i32 %6205, i32 %6181)  ; UMad(a,b,c)
  %6208 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6203, i32 %6206, i32 %6207)  ; UMad(a,b,c)
  %6209 = add nsw i32 %6173, -1
  %6210 = call i32 @dx.op.binary.i32(i32 37, i32 %6209, i32 0)  ; IMax(a,b)
  %6211 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6212 = fptoui float %6211 to i32
  %6213 = lshr i32 %6212, 5
  %6214 = call i32 @dx.op.binary.i32(i32 40, i32 %6213, i32 8191)  ; UMin(a,b)
  %6215 = shl i32 %6214, 2
  %6216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6215, i32 undef)  ; BufferLoad(srv,index,wot)
  %6217 = extractvalue %dx.types.ResRet.i32 %6216, 0
  %6218 = lshr i32 %6217, 16
  %6219 = and i32 %6217, 65535
  %6220 = lshr i32 %6217, 21
  %6221 = lshr i32 %6219, 5
  %6222 = call i32 @dx.op.binary.i32(i32 40, i32 %6221, i32 %6210)  ; UMin(a,b)
  %6223 = icmp ugt i32 %6220, %6222
  br i1 %6223, label %6795, label %6224

; <label>:6224                                    ; preds = %6175
  br label %6225

; <label>:6225                                    ; preds = %6785, %6224
  %6226 = phi i32 [ %6792, %6785 ], [ %6220, %6224 ]
  %6227 = phi float [ %6786, %6785 ], [ %6166, %6224 ]
  %6228 = phi float [ %6787, %6785 ], [ %6167, %6224 ]
  %6229 = phi float [ %6788, %6785 ], [ %6168, %6224 ]
  %6230 = phi float [ %6789, %6785 ], [ %6169, %6224 ]
  %6231 = phi float [ %6790, %6785 ], [ %6170, %6224 ]
  %6232 = phi float [ %6791, %6785 ], [ %6171, %6224 ]
  %6233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.i32 %6233, 0
  %6235 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6208, i32 %6234, i32 %6226)  ; UMad(a,b,c)
  %6236 = shl i32 %6235, 2
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = shl i32 %6226, 5
  %6240 = sub nsw i32 %6218, %6239
  %6241 = call i32 @dx.op.binary.i32(i32 37, i32 %6240, i32 0)  ; IMax(a,b)
  %6242 = call i32 @dx.op.binary.i32(i32 38, i32 %6241, i32 31)  ; IMin(a,b)
  %6243 = sub nsw i32 1, %6218
  %6244 = add nsw i32 %6243, %6219
  %6245 = call i32 @dx.op.binary.i32(i32 37, i32 %6244, i32 0)  ; IMax(a,b)
  %6246 = call i32 @dx.op.binary.i32(i32 38, i32 %6245, i32 32)  ; IMin(a,b)
  %6247 = and i32 %6246, 31
  %6248 = shl i32 -1, %6247
  %6249 = xor i32 %6248, -1
  %6250 = and i32 %6242, 31
  %6251 = shl i32 %6249, %6250
  %6252 = icmp eq i32 %6246, 32
  %6253 = select i1 %6252, i32 -1, i32 %6251
  %6254 = and i32 %6253, %6238
  %6255 = icmp eq i32 %6254, 0
  br i1 %6255, label %6785, label %6256

; <label>:6256                                    ; preds = %6225
  br label %6257

; <label>:6257                                    ; preds = %6391, %6256
  %6258 = phi i32 [ %6269, %6391 ], [ %6254, %6256 ]
  %6259 = phi float [ %6392, %6391 ], [ %6227, %6256 ]
  %6260 = phi float [ %6393, %6391 ], [ %6228, %6256 ]
  %6261 = phi float [ %6394, %6391 ], [ %6229, %6256 ]
  %6262 = phi float [ %6395, %6391 ], [ %6230, %6256 ]
  %6263 = phi float [ %6396, %6391 ], [ %6231, %6256 ]
  %6264 = phi float [ %6397, %6391 ], [ %6232, %6256 ]
  %6265 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6258)  ; FirstbitLo(value)
  %6266 = add i32 %6265, %6239
  %6267 = and i32 %6265, 31
  %6268 = shl i32 1, %6267
  %6269 = xor i32 %6268, %6258
  %6270 = mul i32 %6266, 112
  %6271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6270, i32 undef)  ; BufferLoad(srv,index,wot)
  %6272 = extractvalue %dx.types.ResRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.ResRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.ResRet.f32 %6271, 2
  %6275 = or i32 %6270, 12
  %6276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6275, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = add i32 %6270, 16
  %6279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6278, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  %6283 = add i32 %6270, 28
  %6284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6283, i32 undef)  ; BufferLoad(srv,index,wot)
  %6285 = extractvalue %dx.types.ResRet.i32 %6284, 0
  %6286 = add i32 %6270, 44
  %6287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6286, i32 undef)  ; BufferLoad(srv,index,wot)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = add i32 %6270, 48
  %6290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.ResRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.ResRet.f32 %6290, 2
  %6294 = extractvalue %dx.types.ResRet.f32 %6290, 3
  %6295 = add i32 %6270, 64
  %6296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6297 = extractvalue %dx.types.ResRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.ResRet.f32 %6296, 1
  %6299 = extractvalue %dx.types.ResRet.f32 %6296, 2
  %6300 = extractvalue %dx.types.ResRet.f32 %6296, 3
  %6301 = add i32 %6270, 80
  %6302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6301, i32 undef)  ; BufferLoad(srv,index,wot)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6305 = add i32 %6270, 92
  %6306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6305, i32 undef)  ; BufferLoad(srv,index,wot)
  %6307 = extractvalue %dx.types.ResRet.i32 %6306, 0
  %6308 = call float @dx.op.dot3.f32(i32 55, float %6272, float %6273, float %6274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = select i1 %220, float %6303, float %6272
  %6310 = select i1 %220, float %6308, float %6273
  %6311 = select i1 %220, float %6304, float %6274
  %6312 = and i32 %6307, 65535
  %6313 = uitofp i32 %6312 to float
  %6314 = lshr i32 %6307, 16
  %6315 = uitofp i32 %6314 to float
  %6316 = and i32 %6285, 65535
  %6317 = and i32 %6285, 50331648
  %6318 = icmp eq i32 %6317, 33554432
  %6319 = fsub fast float %6291, %158
  %6320 = fsub fast float %6292, %159
  %6321 = fsub fast float %6293, %160
  %6322 = call float @dx.op.dot3.f32(i32 55, float %6319, float %6320, float %6321, float %6319, float %6320, float %6321)  ; Dot3(ax,ay,az,bx,by,bz)
  %6323 = call float @dx.op.unary.f32(i32 24, float %6322)  ; Sqrt(value)
  %6324 = fdiv fast float 1.000000e+00, %6323
  %6325 = fmul fast float %6324, %6319
  %6326 = fmul fast float %6324, %6320
  %6327 = fmul fast float %6324, %6321
  %6328 = fadd fast float %6323, %6277
  %6329 = fdiv fast float 1.000000e+00, %6328
  %6330 = fmul float %6288, %6329
  %6331 = fmul float %6330, %6330
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  br i1 %6318, label %6333, label %6354

; <label>:6333                                    ; preds = %6257
  %6334 = fmul fast float %6299, %6280
  %6335 = fmul fast float %6299, %6281
  %6336 = fmul fast float %6299, %6282
  %6337 = fadd fast float %6319, %6334
  %6338 = fadd fast float %6320, %6335
  %6339 = fadd fast float %6321, %6336
  %6340 = call float @dx.op.dot3.f32(i32 55, float %6337, float %6338, float %6339, float %6337, float %6338, float %6339)  ; Dot3(ax,ay,az,bx,by,bz)
  %6341 = call float @dx.op.unary.f32(i32 25, float %6340)  ; Rsqrt(value)
  %6342 = fmul fast float %6341, %6337
  %6343 = fmul fast float %6341, %6338
  %6344 = fmul fast float %6341, %6339
  %6345 = fsub fast float %158, %6291
  %6346 = fsub fast float %159, %6292
  %6347 = fsub fast float %160, %6293
  %6348 = fsub fast float -0.000000e+00, %6345
  %6349 = fsub fast float -0.000000e+00, %6346
  %6350 = fsub fast float -0.000000e+00, %6347
  %6351 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = fcmp fast ogt float %6351, 0.000000e+00
  %6353 = uitofp i1 %6352 to float
  br label %6354

; <label>:6354                                    ; preds = %6333, %6257
  %6355 = phi float [ %6353, %6333 ], [ 1.000000e+00, %6257 ]
  %6356 = phi float [ %6342, %6333 ], [ %6325, %6257 ]
  %6357 = phi float [ %6343, %6333 ], [ %6326, %6257 ]
  %6358 = phi float [ %6344, %6333 ], [ %6327, %6257 ]
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6280, float %6281, float %6282, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = fmul fast float %6359, %6359
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fsub fast float 1.000000e+00, %6361
  %6363 = fmul fast float %6362, 5.000000e-01
  %6364 = fcmp fast ogt float %6359, 0.000000e+00
  %6365 = fsub fast float 1.000000e+00, %6363
  %6366 = select i1 %6364, float %6363, float %6365
  %6367 = fmul fast float %6366, %6315
  %6368 = fadd fast float %6367, %6313
  %6369 = fmul fast float %6368, 0x3EF0001000000000
  %6370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6369, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6371 = extractvalue %dx.types.ResRet.f32 %6370, 0
  %6372 = fmul fast float %6359, %6297
  %6373 = fadd fast float %6372, %6298
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = select i1 %6318, float 1.000000e+00, float %6374
  %6376 = select i1 %6318, float %6374, float 1.000000e+00
  %6377 = fmul fast float %6323, %6294
  %6378 = fsub fast float 1.000000e+00, %6377
  %6379 = fmul fast float %6378, %6300
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = fmul fast float %6380, %6376
  %6382 = fmul fast float %6381, 2.000000e+00
  %6383 = fsub fast float 3.000000e+00, %6382
  %6384 = fmul fast float %6371, %6355
  %6385 = fmul fast float %6381, %6381
  %6386 = fmul fast float %6385, %6384
  %6387 = fmul fast float %6386, %6383
  %6388 = call float @dx.op.binary.f32(i32 36, float %6387, float %6387)  ; FMin(a,b)
  %6389 = call float @dx.op.binary.f32(i32 36, float %6387, float %6388)  ; FMin(a,b)
  %6390 = fcmp fast ogt float %6389, 0.000000e+00
  br i1 %6390, label %6399, label %6391, !dx.controlflow.hints !116

; <label>:6391                                    ; preds = %6741, %6499, %6354
  %6392 = phi float [ %6259, %6499 ], [ %6259, %6354 ], [ %6781, %6741 ]
  %6393 = phi float [ %6260, %6499 ], [ %6260, %6354 ], [ %6782, %6741 ]
  %6394 = phi float [ %6261, %6499 ], [ %6261, %6354 ], [ %6783, %6741 ]
  %6395 = phi float [ %6262, %6499 ], [ %6262, %6354 ], [ %6775, %6741 ]
  %6396 = phi float [ %6263, %6499 ], [ %6263, %6354 ], [ %6776, %6741 ]
  %6397 = phi float [ %6264, %6499 ], [ %6264, %6354 ], [ %6777, %6741 ]
  %6398 = icmp eq i32 %6258, %6268
  br i1 %6398, label %6784, label %6257

; <label>:6399                                    ; preds = %6354
  %6400 = icmp eq i32 %6316, 255
  br i1 %6400, label %6499, label %6401, !dx.controlflow.hints !117

; <label>:6401                                    ; preds = %6399
  %6402 = mul nuw nsw i32 %6316, 176
  %6403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6402, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.ResRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.ResRet.f32 %6403, 3
  %6408 = add nuw nsw i32 %6402, 16
  %6409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6408, i32 undef)  ; BufferLoad(srv,index,wot)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = add nuw nsw i32 %6402, 32
  %6413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6412, i32 undef)  ; BufferLoad(srv,index,wot)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.ResRet.f32 %6413, 2
  %6417 = add nuw nsw i32 %6402, 48
  %6418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6417, i32 undef)  ; BufferLoad(srv,index,wot)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.ResRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.ResRet.f32 %6418, 2
  %6422 = extractvalue %dx.types.ResRet.f32 %6418, 3
  %6423 = add nuw nsw i32 %6402, 64
  %6424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6423, i32 undef)  ; BufferLoad(srv,index,wot)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.ResRet.f32 %6424, 2
  %6428 = extractvalue %dx.types.ResRet.f32 %6424, 3
  %6429 = add nuw nsw i32 %6402, 80
  %6430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6429, i32 undef)  ; BufferLoad(srv,index,wot)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.ResRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.ResRet.f32 %6430, 2
  %6434 = extractvalue %dx.types.ResRet.f32 %6430, 3
  %6435 = add nuw nsw i32 %6402, 96
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.ResRet.f32 %6436, 2
  %6440 = extractvalue %dx.types.ResRet.f32 %6436, 3
  %6441 = bitcast float %6411 to i32
  %6442 = fmul fast float %6416, %102
  %6443 = fmul fast float %6416, %103
  %6444 = fmul fast float %6416, %104
  %6445 = fadd fast float %6442, %158
  %6446 = fadd fast float %6443, %159
  %6447 = fadd fast float %6444, %160
  %6448 = fmul fast float %6445, %6419
  %6449 = call float @dx.op.tertiary.f32(i32 46, float %6446, float %6425, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6447, float %6431, float %6449)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6437
  %6452 = fmul fast float %6445, %6420
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %6446, float %6426, float %6452)  ; FMad(a,b,c)
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6447, float %6432, float %6453)  ; FMad(a,b,c)
  %6455 = fadd fast float %6454, %6438
  %6456 = fmul fast float %6445, %6421
  %6457 = call float @dx.op.tertiary.f32(i32 46, float %6446, float %6427, float %6456)  ; FMad(a,b,c)
  %6458 = call float @dx.op.tertiary.f32(i32 46, float %6447, float %6433, float %6457)  ; FMad(a,b,c)
  %6459 = fadd fast float %6458, %6439
  %6460 = fmul fast float %6445, %6422
  %6461 = call float @dx.op.tertiary.f32(i32 46, float %6446, float %6428, float %6460)  ; FMad(a,b,c)
  %6462 = call float @dx.op.tertiary.f32(i32 46, float %6447, float %6434, float %6461)  ; FMad(a,b,c)
  %6463 = fadd fast float %6462, %6440
  %6464 = fdiv fast float %6451, %6463
  %6465 = fdiv fast float %6455, %6463
  %6466 = fdiv fast float %6459, %6463
  %6467 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6466)  ; FMax(a,b)
  %6468 = fmul fast float %231, 0x401921FB60000000
  %6469 = call float @dx.op.unary.f32(i32 13, float %6468)  ; Sin(value)
  %6470 = call float @dx.op.unary.f32(i32 12, float %6468)  ; Cos(value)
  %6471 = fsub fast float -0.000000e+00, %6469
  %6472 = fmul fast float %6406, 5.000000e-01
  %6473 = call float @dx.op.dot2.f32(i32 54, float %231, float %231, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6474 = call float @dx.op.unary.f32(i32 22, float %6473)  ; Frc(value)
  %6475 = fmul fast float %6474, 0x404A7DD040000000
  %6476 = call float @dx.op.unary.f32(i32 22, float %6475)  ; Frc(value)
  %6477 = fmul fast float %6476, %6415
  %6478 = fadd fast float %6477, %6472
  %6479 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6471, float 0.000000e+00)  ; FMad(a,b,c)
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %6478, float %6470, float 0.000000e+00)  ; FMad(a,b,c)
  %6481 = fadd fast float %6479, %6464
  %6482 = fadd fast float %6480, %6465
  %6483 = fmul fast float %6481, %6410
  %6484 = fmul fast float %6482, %6410
  %6485 = call float @dx.op.binary.f32(i32 35, float %6483, float %6406)  ; FMax(a,b)
  %6486 = call float @dx.op.binary.f32(i32 35, float %6484, float %6406)  ; FMax(a,b)
  %6487 = call float @dx.op.binary.f32(i32 36, float %6485, float %6407)  ; FMin(a,b)
  %6488 = call float @dx.op.binary.f32(i32 36, float %6486, float %6407)  ; FMin(a,b)
  %6489 = fadd fast float %6487, %6404
  %6490 = fadd fast float %6488, %6405
  %6491 = uitofp i32 %6441 to float
  %6492 = fadd fast float %6467, %6414
  %6493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6489, float %6490, float %6491, float undef, i32 0, i32 0, i32 undef, float %6492)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6494 = extractvalue %dx.types.ResRet.f32 %6493, 0
  %6495 = fadd fast float %6494, -1.000000e+00
  %6496 = fmul fast float %6495, %6375
  %6497 = fadd fast float %6496, 1.000000e+00
  %6498 = fmul fast float %6497, %6387
  br label %6499

; <label>:6499                                    ; preds = %6401, %6399
  %6500 = phi float [ %6498, %6401 ], [ %6387, %6399 ]
  %6501 = call float @dx.op.binary.f32(i32 36, float %6500, float %6500)  ; FMin(a,b)
  %6502 = call float @dx.op.binary.f32(i32 36, float %6500, float %6501)  ; FMin(a,b)
  %6503 = fcmp fast ogt float %6502, 0.000000e+00
  br i1 %6503, label %6504, label %6391, !dx.controlflow.hints !118

; <label>:6504                                    ; preds = %6499
  %6505 = fmul fast float %6500, %6309
  %6506 = fmul fast float %6500, %6310
  %6507 = fmul fast float %6500, %6311
  %6508 = fsub fast float %6293, %4668
  %6509 = fcmp fast ogt float %6508, 0.000000e+00
  %6510 = fsub fast float %160, %4668
  %6511 = fcmp fast ogt float %6510, 0.000000e+00
  %6512 = xor i1 %6511, %6509
  %6513 = fsub fast float %4668, %6293
  %6514 = fmul fast float %6513, 2.000000e+00
  %6515 = fadd fast float %6514, %6293
  %6516 = select i1 %6512, float %6293, float %6515
  %6517 = fsub fast float %6516, %160
  %6518 = call float @dx.op.dot3.f32(i32 55, float %6319, float %6320, float %6517, float %6319, float %6320, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.unary.f32(i32 25, float %6518)  ; Rsqrt(value)
  %6520 = fmul fast float %6519, %6319
  %6521 = fmul fast float %6519, %6320
  %6522 = fmul fast float %6519, %6517
  %6523 = fsub fast float %4668, %160
  %6524 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6523)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6520, float %6521, float %6522)  ; Dot3(ax,ay,az,bx,by,bz)
  %6526 = fdiv fast float 1.000000e+00, %6525
  %6527 = fmul fast float %6526, %6524
  %6528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6510, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = fcmp fast ogt float %6528, 0.000000e+00
  %6530 = fcmp fast olt float %6528, 0.000000e+00
  %6531 = zext i1 %6529 to i32
  %6532 = zext i1 %6530 to i32
  %6533 = sub nsw i32 %6531, %6532
  %6534 = sitofp i32 %6533 to float
  %6535 = fsub fast float %6516, %4668
  %6536 = call float @dx.op.dot3.f32(i32 55, float %6319, float %6320, float %6535, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6537 = fcmp fast ogt float %6536, 0.000000e+00
  %6538 = fcmp fast olt float %6536, 0.000000e+00
  %6539 = zext i1 %6537 to i32
  %6540 = zext i1 %6538 to i32
  %6541 = sub nsw i32 %6539, %6540
  %6542 = sitofp i32 %6541 to float
  %6543 = fcmp fast une float %6534, %6542
  br i1 %6543, label %6544, label %6554

; <label>:6544                                    ; preds = %6504
  %6545 = fmul fast float %6527, %6522
  %6546 = fmul fast float %6527, %6521
  %6547 = fmul fast float %6527, %6520
  %6548 = fmul fast float %6547, %6547
  %6549 = fmul fast float %6546, %6546
  %6550 = fadd fast float %6548, %6549
  %6551 = fmul fast float %6545, %6545
  %6552 = fadd fast float %6550, %6551
  %6553 = call float @dx.op.unary.f32(i32 24, float %6552)  ; Sqrt(value)
  br label %6566

; <label>:6554                                    ; preds = %6504
  %6555 = icmp slt i32 %6533, 0
  br i1 %6555, label %6556, label %6566

; <label>:6556                                    ; preds = %6554
  %6557 = fsub fast float %158, %6291
  %6558 = fsub fast float %159, %6292
  %6559 = fsub fast float %160, %6516
  %6560 = fmul fast float %6557, %6557
  %6561 = fmul fast float %6558, %6558
  %6562 = fadd fast float %6560, %6561
  %6563 = fmul fast float %6559, %6559
  %6564 = fadd fast float %6562, %6563
  %6565 = call float @dx.op.unary.f32(i32 24, float %6564)  ; Sqrt(value)
  br label %6566

; <label>:6566                                    ; preds = %6556, %6554, %6544
  %6567 = phi float [ %6553, %6544 ], [ %6565, %6556 ], [ 0.000000e+00, %6554 ]
  %6568 = and i1 %6511, %6509
  %6569 = fsub fast float -0.000000e+00, %6567
  %6570 = select i1 %6568, float -0.000000e+00, float %6569
  %6571 = fmul fast float %4669, 0x3FF7154760000000
  %6572 = fmul fast float %6571, %6570
  %6573 = fmul fast float %4670, 0x3FF7154760000000
  %6574 = fmul fast float %6573, %6570
  %6575 = fmul fast float %4671, 0x3FF7154760000000
  %6576 = fmul fast float %6575, %6570
  %6577 = call float @dx.op.unary.f32(i32 21, float %6572)  ; Exp(value)
  %6578 = call float @dx.op.unary.f32(i32 21, float %6574)  ; Exp(value)
  %6579 = call float @dx.op.unary.f32(i32 21, float %6576)  ; Exp(value)
  %6580 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6581 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6582 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6583 = fmul fast float %6505, %6580
  %6584 = fmul fast float %6506, %6581
  %6585 = fmul fast float %6507, %6582
  %6586 = fsub fast float %6325, %4868
  %6587 = fsub fast float %6326, %4867
  %6588 = fsub fast float %6327, %4866
  %6589 = call float @dx.op.dot3.f32(i32 55, float %6586, float %6587, float %6588, float %6586, float %6587, float %6588)  ; Dot3(ax,ay,az,bx,by,bz)
  %6590 = call float @dx.op.unary.f32(i32 25, float %6589)  ; Rsqrt(value)
  %6591 = fmul fast float %6590, %6586
  %6592 = fmul fast float %6590, %6587
  %6593 = fmul fast float %6590, %6588
  %6594 = call float @dx.op.dot3.f32(i32 55, float %6325, float %6326, float %6327, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %6595 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4864, float %4863, float %6591, float %6592, float %6593)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.unary.f32(i32 7, float %6594)  ; Saturate(value)
  %6597 = fmul fast float %6596, %6332
  %6598 = fmul fast float %6596, %6596
  %6599 = fmul fast float %6598, %4896
  %6600 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6601 = fmul fast float %6597, %6600
  %6602 = bitcast float %6322 to i32
  %6603 = ashr i32 %6602, 1
  %6604 = sub nsw i32 1597463007, %6603
  %6605 = bitcast i32 %6604 to float
  %6606 = fmul fast float %6605, %6319
  %6607 = fmul fast float %6605, %6320
  %6608 = fmul fast float %6605, %6321
  %6609 = fsub fast float %6606, %4868
  %6610 = fsub fast float %6607, %4867
  %6611 = fsub fast float %6608, %4866
  %6612 = call float @dx.op.dot3.f32(i32 55, float %6609, float %6610, float %6611, float %6609, float %6610, float %6611)  ; Dot3(ax,ay,az,bx,by,bz)
  %6613 = call float @dx.op.unary.f32(i32 25, float %6612)  ; Rsqrt(value)
  %6614 = fmul fast float %6609, %6613
  %6615 = fmul fast float %6610, %6613
  %6616 = fmul fast float %6611, %6613
  %6617 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %6614, float %6615, float %6616)  ; Dot3(ax,ay,az,bx,by,bz)
  %6618 = fmul fast float %6617, %6617
  %6619 = call float @dx.op.unary.f32(i32 6, float %6594)  ; FAbs(value)
  %6620 = fsub fast float 1.000000e+00, %4878
  %6621 = call float @dx.op.binary.f32(i32 35, float %6620, float 0x3F847AE140000000)  ; FMax(a,b)
  %6622 = fmul fast float %6621, %6621
  %6623 = fmul fast float %6622, %6622
  %6624 = fsub fast float 1.000000e+00, %6623
  %6625 = fmul fast float %4883, %4883
  %6626 = fmul fast float %6625, %6624
  %6627 = fadd fast float %6626, %6623
  %6628 = bitcast float %6627 to i32
  %6629 = ashr i32 %6628, 1
  %6630 = add nsw i32 %6629, 532487669
  %6631 = bitcast i32 %6630 to float
  %6632 = fadd fast float %6631, %4883
  %6633 = fmul fast float %6623, %6618
  %6634 = fsub fast float 1.000000e+00, %6618
  %6635 = fadd fast float %6634, %6633
  %6636 = fmul fast float %6619, %6619
  %6637 = fmul fast float %6636, %6624
  %6638 = fadd fast float %6637, %6623
  %6639 = bitcast float %6638 to i32
  %6640 = ashr i32 %6639, 1
  %6641 = add nsw i32 %6640, 532487669
  %6642 = bitcast i32 %6641 to float
  %6643 = fadd fast float %6642, %6619
  %6644 = fmul fast float %6635, %6635
  %6645 = fmul fast float %6644, %6632
  %6646 = fmul fast float %6645, %6643
  %6647 = fdiv fast float 1.000000e+00, %6646
  %6648 = bitcast float %6623 to i32
  %6649 = sitofp i32 %6648 to float
  %6650 = fmul fast float %6649, 0x3FE7F73180000000
  %6651 = fadd fast float %6650, 0x41AFE27C40000000
  %6652 = fptosi float %6651 to i32
  %6653 = bitcast i32 %6652 to float
  %6654 = fmul fast float %6288, 0x3FD80E9D60000000
  %6655 = fmul fast float %6654, %6605
  %6656 = fadd fast float %6653, %6655
  %6657 = bitcast float %6656 to i32
  %6658 = sub nsw i32 2129859010, %6657
  %6659 = bitcast i32 %6658 to float
  %6660 = fmul fast float %6623, %6647
  %6661 = fmul fast float %6660, %6653
  %6662 = fmul fast float %6661, %6659
  %6663 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6664 = fsub fast float 1.000000e+00, %6663
  %6665 = bitcast float %6664 to i32
  %6666 = sitofp i32 %6665 to float
  %6667 = fmul fast float %6666, 5.000000e+00
  %6668 = fadd fast float %6667, 0xC1EFBF8940000000
  %6669 = fptosi float %6668 to i32
  %6670 = bitcast i32 %6669 to float
  %6671 = fsub fast float 1.000000e+00, %4869
  %6672 = fsub fast float 1.000000e+00, %4870
  %6673 = fsub fast float 1.000000e+00, %4881
  %6674 = fmul fast float %6670, %6671
  %6675 = fmul fast float %6670, %6672
  %6676 = fmul fast float %6670, %6673
  %6677 = fadd fast float %6674, %4869
  %6678 = fadd fast float %6675, %4870
  %6679 = fadd fast float %6676, %4881
  br i1 %5008, label %6680, label %6703

; <label>:6680                                    ; preds = %6566
  %6681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4267, float %6663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6682 = extractvalue %dx.types.ResRet.f32 %6681, 0
  %6683 = extractvalue %dx.types.ResRet.f32 %6681, 1
  %6684 = extractvalue %dx.types.ResRet.f32 %6681, 2
  %6685 = fadd fast float %6682, -5.000000e-01
  %6686 = fadd fast float %6683, -5.000000e-01
  %6687 = fadd fast float %6684, -5.000000e-01
  %6688 = fmul fast float %4869, 4.000000e+00
  %6689 = fmul fast float %6688, %6671
  %6690 = fmul fast float %6689, %6685
  %6691 = fmul fast float %4870, 4.000000e+00
  %6692 = fmul fast float %6691, %6672
  %6693 = fmul fast float %6692, %6686
  %6694 = fmul fast float %4881, 4.000000e+00
  %6695 = fmul fast float %6694, %6673
  %6696 = fmul fast float %6695, %6687
  %6697 = fadd fast float %6690, %6677
  %6698 = fadd fast float %6693, %6678
  %6699 = fadd fast float %6696, %6679
  %6700 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6701 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  %6702 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  br label %6703

; <label>:6703                                    ; preds = %6680, %6566
  %6704 = phi float [ %6700, %6680 ], [ %6677, %6566 ]
  %6705 = phi float [ %6701, %6680 ], [ %6678, %6566 ]
  %6706 = phi float [ %6702, %6680 ], [ %6679, %6566 ]
  %6707 = fmul fast float %6594, 9.843750e-01
  %6708 = fadd fast float %6707, 7.812500e-03
  %6709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6708, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 2
  %6711 = extractvalue %dx.types.ResRet.f32 %6709, 3
  %6712 = fmul fast float %6710, %4869
  %6713 = fmul fast float %6710, %4870
  %6714 = fmul fast float %6710, %4881
  %6715 = fadd fast float %6712, %6711
  %6716 = fadd fast float %6713, %6711
  %6717 = fadd fast float %6714, %6711
  br i1 %5008, label %6718, label %6741

; <label>:6718                                    ; preds = %6703
  %6719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4267, float %6594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6720 = extractvalue %dx.types.ResRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.ResRet.f32 %6719, 1
  %6722 = extractvalue %dx.types.ResRet.f32 %6719, 2
  %6723 = fadd fast float %6720, -5.000000e-01
  %6724 = fadd fast float %6721, -5.000000e-01
  %6725 = fadd fast float %6722, -5.000000e-01
  %6726 = fmul fast float %4869, 4.000000e+00
  %6727 = fmul fast float %6726, %6671
  %6728 = fmul fast float %6727, %6723
  %6729 = fmul fast float %4870, 4.000000e+00
  %6730 = fmul fast float %6729, %6672
  %6731 = fmul fast float %6730, %6724
  %6732 = fmul fast float %4881, 4.000000e+00
  %6733 = fmul fast float %6732, %6673
  %6734 = fmul fast float %6733, %6725
  %6735 = fadd fast float %6728, %6715
  %6736 = fadd fast float %6731, %6716
  %6737 = fadd fast float %6734, %6717
  %6738 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6739 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6740 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  br label %6741

; <label>:6741                                    ; preds = %6718, %6703
  %6742 = phi float [ %6738, %6718 ], [ %6715, %6703 ]
  %6743 = phi float [ %6739, %6718 ], [ %6716, %6703 ]
  %6744 = phi float [ %6740, %6718 ], [ %6717, %6703 ]
  %6745 = call float @dx.op.binary.f32(i32 35, float %6743, float %6744)  ; FMax(a,b)
  %6746 = call float @dx.op.binary.f32(i32 35, float %6742, float %6745)  ; FMax(a,b)
  %6747 = fsub fast float 1.000000e+00, %6746
  %6748 = fmul fast float %6704, %6662
  %6749 = fmul fast float %6705, %6662
  %6750 = fmul fast float %6706, %6662
  %6751 = fsub fast float 1.000000e+00, %6595
  %6752 = bitcast float %6751 to i32
  %6753 = sitofp i32 %6752 to float
  %6754 = fmul fast float %6753, 5.000000e+00
  %6755 = fadd fast float %6754, 0xC1EFBF8940000000
  %6756 = fptosi float %6755 to i32
  %6757 = bitcast i32 %6756 to float
  %6758 = fmul fast float %6757, %4268
  %6759 = fmul fast float %6747, %6758
  %6760 = fmul fast float %6759, %5058
  %6761 = fmul fast float %6759, %5059
  %6762 = fmul fast float %6759, %5060
  %6763 = fadd fast float %6760, %6748
  %6764 = fadd fast float %6761, %6749
  %6765 = fadd fast float %6762, %6750
  %6766 = fmul fast float %6583, %4264
  %6767 = fmul fast float %6766, %6601
  %6768 = fmul fast float %6767, %6747
  %6769 = fmul fast float %6584, %4264
  %6770 = fmul fast float %6769, %6601
  %6771 = fmul fast float %6770, %6747
  %6772 = fmul fast float %6585, %4264
  %6773 = fmul fast float %6772, %6601
  %6774 = fmul fast float %6773, %6747
  %6775 = fadd fast float %6768, %6262
  %6776 = fadd fast float %6771, %6263
  %6777 = fadd fast float %6774, %6264
  %6778 = fmul fast float %6767, %6763
  %6779 = fmul fast float %6770, %6764
  %6780 = fmul fast float %6773, %6765
  %6781 = fadd fast float %6778, %6259
  %6782 = fadd fast float %6779, %6260
  %6783 = fadd fast float %6780, %6261
  br label %6391

; <label>:6784                                    ; preds = %6391
  br label %6785

; <label>:6785                                    ; preds = %6784, %6225
  %6786 = phi float [ %6227, %6225 ], [ %6392, %6784 ]
  %6787 = phi float [ %6228, %6225 ], [ %6393, %6784 ]
  %6788 = phi float [ %6229, %6225 ], [ %6394, %6784 ]
  %6789 = phi float [ %6230, %6225 ], [ %6395, %6784 ]
  %6790 = phi float [ %6231, %6225 ], [ %6396, %6784 ]
  %6791 = phi float [ %6232, %6225 ], [ %6397, %6784 ]
  %6792 = add i32 %6226, 1
  %6793 = icmp ugt i32 %6792, %6222
  br i1 %6793, label %6794, label %6225

; <label>:6794                                    ; preds = %6785
  br label %6795

; <label>:6795                                    ; preds = %6794, %6175, %6165
  %6796 = phi float [ %6166, %6165 ], [ %6166, %6175 ], [ %6786, %6794 ]
  %6797 = phi float [ %6167, %6165 ], [ %6167, %6175 ], [ %6787, %6794 ]
  %6798 = phi float [ %6168, %6165 ], [ %6168, %6175 ], [ %6788, %6794 ]
  %6799 = phi float [ %6169, %6165 ], [ %6169, %6175 ], [ %6789, %6794 ]
  %6800 = phi float [ %6170, %6165 ], [ %6170, %6175 ], [ %6790, %6794 ]
  %6801 = phi float [ %6171, %6165 ], [ %6171, %6175 ], [ %6791, %6794 ]
  %6802 = fmul fast float %4264, %4264
  %6803 = fsub fast float 1.000000e+00, %6802
  %6804 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6803, float %6803, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = fsub fast float 1.000000e+00, %6804
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6808 = fmul fast float %6807, %5064
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6811 = fsub fast float 1.000000e+00, %4271
  %6812 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6813 = fadd fast float %6801, %4270
  %6814 = fmul fast float %6813, %4271
  %6815 = fmul fast float %6812, %6810
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6818 = fmul fast float %6799, %4872
  %6819 = fmul fast float %6800, %4873
  %6820 = fmul fast float %6801, %4874
  %6821 = fcmp fast ogt float %86, %180
  %6822 = and i1 %6821, %4674
  %6823 = or i1 %4680, %6822
  %6824 = icmp eq i32 %4673, 2
  %6825 = fcmp fast ole float %86, %180
  %6826 = and i1 %6825, %6824
  %6827 = or i1 %6826, %6823
  br i1 %6822, label %6828, label %7085

; <label>:6828                                    ; preds = %6795
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 3
  %6832 = fmul fast float %6830, %95
  %6833 = fmul fast float %6831, %96
  %6834 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6835 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6836 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6834, float %6835, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.ResRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.ResRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.ResRet.f32 %6836, 3
  %6841 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6834, float %6835, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6842 = extractvalue %dx.types.ResRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.ResRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.ResRet.f32 %6841, 2
  %6845 = extractvalue %dx.types.ResRet.f32 %6841, 3
  %6846 = call float @dx.op.binary.f32(i32 35, float %6838, float %6839)  ; FMax(a,b)
  %6847 = call float @dx.op.binary.f32(i32 35, float %6837, float %6846)  ; FMax(a,b)
  %6848 = call float @dx.op.binary.f32(i32 35, float %6847, float %6840)  ; FMax(a,b)
  %6849 = call float @dx.op.binary.f32(i32 36, float %6843, float %6844)  ; FMin(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6842, float %6849)  ; FMin(a,b)
  %6851 = call float @dx.op.binary.f32(i32 36, float %6850, float %6845)  ; FMin(a,b)
  %6852 = fmul fast float %6848, 2.550000e+02
  %6853 = fadd fast float %6852, 0x3F70101020000000
  %6854 = fptoui float %6853 to i32
  %6855 = fmul fast float %6851, 2.550000e+02
  %6856 = fadd fast float %6855, 0x3F70101020000000
  %6857 = fptoui float %6856 to i32
  %6858 = icmp ult i32 %6854, %6857
  br i1 %6858, label %6859, label %7027

; <label>:6859                                    ; preds = %6828
  %6860 = fcmp fast ogt float %85, 9.843750e-01
  %6861 = fadd fast float %86, -4.000000e+00
  %6862 = select i1 %6860, float -4.000000e+00, float %6861
  %6863 = call float @dx.op.binary.f32(i32 35, float %6862, float 0.000000e+00)  ; FMax(a,b)
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = fadd fast float %6865, %6863
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = fmul fast float %6866, %6867
  %6869 = call float @dx.op.unary.f32(i32 23, float %6868)  ; Log(value)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6864, 3
  %6871 = fmul fast float %6870, %6869
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6874 = fmul fast float %6871, %6873
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = uitofp i32 %6854 to float
  %6877 = uitofp i32 %6857 to float
  %6878 = fadd fast float %6876, 5.000000e-01
  %6879 = fadd fast float %6877, 5.000000e-01
  %6880 = fmul fast float %6873, %6878
  %6881 = fmul fast float %6873, %6879
  %6882 = fadd fast float %6880, 0x3F0FFB4800000000
  %6883 = fadd fast float %6881, 0xBF0FFB4800000000
  %6884 = call float @dx.op.binary.f32(i32 35, float %6875, float %6882)  ; FMax(a,b)
  %6885 = call float @dx.op.binary.f32(i32 36, float %6884, float %6883)  ; FMin(a,b)
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6890 = fmul fast float %6887, %6885
  %6891 = fadd fast float %6889, %6890
  %6892 = fadd fast float %6889, %6888
  %6893 = fsub fast float %6887, %6888
  %6894 = fadd fast float %6893, %6889
  %6895 = call float @dx.op.binary.f32(i32 35, float %6891, float %6892)  ; FMax(a,b)
  %6896 = call float @dx.op.binary.f32(i32 36, float %6895, float %6894)  ; FMin(a,b)
  %6897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6834, float %6835, float %6896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6898 = extractvalue %dx.types.ResRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.ResRet.f32 %6897, 2
  %6901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.i32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.i32 %6901, 1
  %6904 = uitofp i32 %6902 to float
  %6905 = uitofp i32 %6903 to float
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6909 = fmul fast float %6904, %6834
  %6910 = fmul fast float %6905, %6835
  %6911 = fadd fast float %6909, -5.000000e-01
  %6912 = fadd fast float %6910, -5.000000e-01
  %6913 = call float @dx.op.unary.f32(i32 22, float %6911)  ; Frc(value)
  %6914 = call float @dx.op.unary.f32(i32 22, float %6912)  ; Frc(value)
  %6915 = fmul fast float %6913, %6913
  %6916 = fmul fast float %6915, %6913
  %6917 = fsub fast float 3.000000e+00, %6913
  %6918 = fmul fast float %6915, %6917
  %6919 = fmul fast float %6913, 3.000000e+00
  %6920 = fmul fast float %6916, 3.000000e+00
  %6921 = fmul fast float %6915, 6.000000e+00
  %6922 = fsub fast float %6920, %6921
  %6923 = fadd fast float %6922, 4.000000e+00
  %6924 = fmul fast float %6923, 0x3FC5555560000000
  %6925 = fmul fast float %6916, -3.000000e+00
  %6926 = fadd fast float %6915, %6913
  %6927 = fmul fast float %6926, 3.000000e+00
  %6928 = fadd fast float %6925, 1.000000e+00
  %6929 = fadd fast float %6928, %6927
  %6930 = fmul fast float %6916, 0x3FC5555560000000
  %6931 = fmul fast float %6914, %6914
  %6932 = fmul fast float %6931, %6914
  %6933 = fsub fast float 3.000000e+00, %6914
  %6934 = fmul fast float %6931, %6933
  %6935 = fmul fast float %6914, 3.000000e+00
  %6936 = fmul fast float %6932, 3.000000e+00
  %6937 = fmul fast float %6931, 6.000000e+00
  %6938 = fsub fast float %6936, %6937
  %6939 = fadd fast float %6938, 4.000000e+00
  %6940 = fmul fast float %6939, 0x3FC5555560000000
  %6941 = fmul fast float %6932, -3.000000e+00
  %6942 = fadd fast float %6931, %6914
  %6943 = fmul fast float %6942, 3.000000e+00
  %6944 = fadd fast float %6941, 1.000000e+00
  %6945 = fadd fast float %6944, %6943
  %6946 = fmul fast float %6932, 0x3FC5555560000000
  %6947 = fadd fast float %6913, 1.000000e+00
  %6948 = fsub fast float 1.000000e+00, %6919
  %6949 = fadd fast float %6948, %6918
  %6950 = fadd fast float %6949, %6923
  %6951 = fmul fast float %6950, 0x3FC5555560000000
  %6952 = fdiv fast float %6924, %6951
  %6953 = fsub fast float %6947, %6952
  %6954 = fsub fast float 1.000000e+00, %6913
  %6955 = fadd fast float %6929, %6916
  %6956 = fmul fast float %6955, 0x3FC5555560000000
  %6957 = fdiv fast float %6930, %6956
  %6958 = fadd fast float %6954, %6957
  %6959 = fadd fast float %6914, 1.000000e+00
  %6960 = fsub fast float 1.000000e+00, %6935
  %6961 = fadd fast float %6960, %6934
  %6962 = fadd fast float %6961, %6939
  %6963 = fmul fast float %6962, 0x3FC5555560000000
  %6964 = fdiv fast float %6940, %6963
  %6965 = fsub fast float %6959, %6964
  %6966 = fsub fast float 1.000000e+00, %6914
  %6967 = fadd fast float %6945, %6932
  %6968 = fmul fast float %6967, 0x3FC5555560000000
  %6969 = fdiv fast float %6946, %6968
  %6970 = fadd fast float %6969, %6966
  %6971 = fmul fast float %6953, %6907
  %6972 = fsub fast float %6834, %6971
  %6973 = fmul fast float %6958, %6907
  %6974 = fadd fast float %6973, %6834
  %6975 = fmul fast float %6970, %6908
  %6976 = fadd fast float %6975, %6835
  %6977 = fmul fast float %6965, %6908
  %6978 = fsub fast float %6835, %6977
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6972, float %6978, float %6896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6974, float %6978, float %6896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.ResRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.ResRet.f32 %6983, 2
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6972, float %6976, float %6896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.ResRet.f32 %6987, 2
  %6991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6974, float %6976, float %6896, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6995 = fsub fast float %6988, %6980
  %6996 = fsub fast float %6989, %6981
  %6997 = fsub fast float %6990, %6982
  %6998 = fmul fast float %6995, %6968
  %6999 = fmul fast float %6996, %6968
  %7000 = fmul fast float %6997, %6968
  %7001 = fadd fast float %6998, %6980
  %7002 = fadd fast float %6999, %6981
  %7003 = fadd fast float %7000, %6982
  %7004 = fsub fast float %6992, %6984
  %7005 = fsub fast float %6993, %6985
  %7006 = fsub fast float %6994, %6986
  %7007 = fmul fast float %7004, %6968
  %7008 = fmul fast float %7005, %6968
  %7009 = fmul fast float %7006, %6968
  %7010 = fsub fast float %6984, %7001
  %7011 = fadd fast float %7010, %7007
  %7012 = fsub fast float %6985, %7002
  %7013 = fadd fast float %7012, %7008
  %7014 = fsub fast float %6986, %7003
  %7015 = fadd fast float %7014, %7009
  %7016 = fmul fast float %7011, %6956
  %7017 = fmul fast float %7013, %6956
  %7018 = fmul fast float %7015, %6956
  %7019 = fadd fast float %7016, %7001
  %7020 = fadd fast float %7017, %7002
  %7021 = fadd fast float %7018, %7003
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7024 = fmul fast float %7019, %7023
  %7025 = fmul fast float %7020, %7023
  %7026 = fmul fast float %7021, %7023
  br label %7027

; <label>:7027                                    ; preds = %6859, %6828
  %7028 = phi float [ %6898, %6859 ], [ 1.000000e+00, %6828 ]
  %7029 = phi float [ %6899, %6859 ], [ 1.000000e+00, %6828 ]
  %7030 = phi float [ %6900, %6859 ], [ 1.000000e+00, %6828 ]
  %7031 = phi float [ %7024, %6859 ], [ 0.000000e+00, %6828 ]
  %7032 = phi float [ %7025, %6859 ], [ 0.000000e+00, %6828 ]
  %7033 = phi float [ %7026, %6859 ], [ 0.000000e+00, %6828 ]
  %7034 = fmul fast float %7031, %6805
  %7035 = fmul fast float %7032, %6805
  %7036 = fmul fast float %7033, %6805
  %7037 = call float @dx.op.dot3.f32(i32 55, float %7028, float %7029, float %7030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7038 = call float @dx.op.dot3.f32(i32 55, float %7034, float %7035, float %7036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = select i1 %220, float %7037, float %7028
  %7040 = select i1 %220, float %7037, float %7029
  %7041 = select i1 %220, float 1.000000e+00, float %7030
  %7042 = select i1 %220, float %7038, float %7034
  %7043 = select i1 %220, float 0.000000e+00, float %7035
  %7044 = select i1 %220, float 0.000000e+00, float %7036
  %7045 = fmul fast float %7039, %6818
  %7046 = fmul fast float %7040, %6819
  %7047 = fmul fast float %7041, %6820
  %7048 = fadd fast float %7045, %7042
  %7049 = fadd fast float %7046, %7043
  %7050 = fadd fast float %7044, %7047
  %7051 = fmul fast float %7039, %6796
  %7052 = fmul fast float %7040, %6797
  %7053 = fmul fast float %7041, %6798
  %7054 = fmul fast float %128, %6830
  %7055 = fmul fast float %130, %6831
  %7056 = fsub fast float 1.000000e+00, %7054
  %7057 = fsub fast float 1.000000e+00, %7055
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.CBufRet.f32 %7058, 1
  %7061 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7062 = fmul fast float %7056, %7059
  %7063 = fmul fast float %7056, %7060
  %7064 = fmul fast float %7056, %7061
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7069 = fmul fast float %7057, %7066
  %7070 = fmul fast float %7057, %7067
  %7071 = fmul fast float %7057, %7068
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.CBufRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.CBufRet.f32 %7072, 2
  %7076 = fadd fast float %7069, %7073
  %7077 = fadd fast float %7076, %7062
  %7078 = fadd fast float %7070, %7074
  %7079 = fadd fast float %7078, %7063
  %7080 = fadd fast float %7071, %7075
  %7081 = fadd fast float %7080, %7064
  %7082 = fmul fast float %7077, %180
  %7083 = fmul fast float %7079, %180
  %7084 = fmul fast float %7081, %180
  br label %7085

; <label>:7085                                    ; preds = %7027, %6795
  %7086 = phi float [ %7082, %7027 ], [ %158, %6795 ]
  %7087 = phi float [ %7083, %7027 ], [ %159, %6795 ]
  %7088 = phi float [ %7084, %7027 ], [ %160, %6795 ]
  %7089 = phi float [ %180, %7027 ], [ %86, %6795 ]
  %7090 = phi float [ %7048, %7027 ], [ %6818, %6795 ]
  %7091 = phi float [ %7049, %7027 ], [ %6819, %6795 ]
  %7092 = phi float [ %7050, %7027 ], [ %6820, %6795 ]
  %7093 = phi float [ %7051, %7027 ], [ %6796, %6795 ]
  %7094 = phi float [ %7052, %7027 ], [ %6797, %6795 ]
  %7095 = phi float [ %7053, %7027 ], [ %6798, %6795 ]
  %7096 = phi float [ %7028, %7027 ], [ 1.000000e+00, %6795 ]
  br i1 %6827, label %8251, label %7097

; <label>:7097                                    ; preds = %7085
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7102 = extractvalue %dx.types.CBufRet.f32 %7098, 3
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7112 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7113, 2
  %7117 = extractvalue %dx.types.CBufRet.f32 %7113, 3
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 3
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7123 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7124 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7125 = fcmp fast olt float %7124, -5.000000e-01
  %7126 = call float @dx.op.dot3.f32(i32 55, float %7086, float %7087, float %7088, float %7086, float %7087, float %7088)  ; Dot3(ax,ay,az,bx,by,bz)
  %7127 = call float @dx.op.unary.f32(i32 25, float %7126)  ; Rsqrt(value)
  %7128 = fmul fast float %7127, %7126
  %7129 = fmul fast float %7127, %7086
  %7130 = fmul fast float %7127, %7087
  %7131 = fmul fast float %7127, %7088
  %7132 = fadd fast float %7128, %7102
  %7133 = call float @dx.op.dot3.f32(i32 55, float %7129, float %7130, float %7131, float %7099, float %7100, float %7101)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.i32 %7134, 1
  %7136 = and i32 %7135, 1
  %7137 = icmp ne i32 %7136, 0
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 2
  %7140 = fcmp fast ogt float %7139, 0.000000e+00
  %7141 = and i1 %7137, %7140
  br i1 %7141, label %7142, label %7548, !dx.controlflow.hints !119

; <label>:7142                                    ; preds = %7097
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 3
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7149 = fsub fast float %7146, %7148
  %7150 = and i32 %7135, 2
  %7151 = extractvalue %dx.types.CBufRet.i32 %7134, 0
  %7152 = call i32 @dx.op.binary.i32(i32 40, i32 %7151, i32 3)  ; UMin(a,b)
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7157 = extractvalue %dx.types.CBufRet.f32 %7147, 1
  %7158 = fsub fast float %7154, %7156
  %7159 = fsub fast float %7155, %7157
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7162 = fcmp fast ogt float %7161, 0.000000e+00
  %7163 = fsub fast float -0.000000e+00, %7158
  %7164 = fsub fast float -0.000000e+00, %7159
  %7165 = call float @dx.op.dot2.f32(i32 54, float %7129, float %7130, float %7129, float %7130)  ; Dot2(ax,ay,bx,by)
  %7166 = call float @dx.op.dot2.f32(i32 54, float %7129, float %7130, float %7163, float %7164)  ; Dot2(ax,ay,bx,by)
  %7167 = fmul fast float %7166, 2.000000e+00
  %7168 = call float @dx.op.dot2.f32(i32 54, float %7163, float %7164, float %7163, float %7164)  ; Dot2(ax,ay,bx,by)
  %7169 = fmul fast float %7161, %7161
  %7170 = fsub fast float %7168, %7169
  %7171 = fmul fast float %7167, %7167
  %7172 = fmul fast float %7165, 4.000000e+00
  %7173 = fmul fast float %7172, %7170
  %7174 = fsub fast float %7171, %7173
  %7175 = fcmp fast ogt float %7174, 0.000000e+00
  br i1 %7175, label %7176, label %7191

; <label>:7176                                    ; preds = %7142
  %7177 = fcmp fast ogt float %7167, 0.000000e+00
  %7178 = call float @dx.op.unary.f32(i32 24, float %7174)  ; Sqrt(value)
  %7179 = fsub fast float -0.000000e+00, %7178
  %7180 = select i1 %7177, float %7178, float %7179
  %7181 = fadd fast float %7180, %7167
  %7182 = fmul float %7181, -5.000000e-01
  %7183 = fdiv fast float %7182, %7165
  %7184 = call float @dx.op.binary.f32(i32 35, float %7183, float 0.000000e+00)  ; FMax(a,b)
  %7185 = call float @dx.op.binary.f32(i32 36, float %7128, float %7184)  ; FMin(a,b)
  %7186 = fdiv fast float %7170, %7182
  %7187 = call float @dx.op.binary.f32(i32 35, float %7186, float 0.000000e+00)  ; FMax(a,b)
  %7188 = call float @dx.op.binary.f32(i32 36, float %7128, float %7187)  ; FMin(a,b)
  %7189 = call float @dx.op.binary.f32(i32 36, float %7185, float %7188)  ; FMin(a,b)
  %7190 = call float @dx.op.binary.f32(i32 35, float %7185, float %7188)  ; FMax(a,b)
  br label %7191

; <label>:7191                                    ; preds = %7176, %7142
  %7192 = phi float [ %7190, %7176 ], [ -1.000000e+00, %7142 ]
  %7193 = phi float [ %7189, %7176 ], [ -1.000000e+00, %7142 ]
  %7194 = phi i1 [ true, %7176 ], [ false, %7142 ]
  %7195 = and i1 %7162, %7194
  br i1 %7195, label %7196, label %7198

; <label>:7196                                    ; preds = %7191
  %7197 = fcmp fast oeq float %7193, %7192
  br i1 %7197, label %7501, label %7199

; <label>:7198                                    ; preds = %7191
  br i1 %7162, label %7501, label %7199

; <label>:7199                                    ; preds = %7198, %7196
  %7200 = phi float [ %7128, %7198 ], [ %7192, %7196 ]
  %7201 = phi float [ 0.000000e+00, %7198 ], [ %7193, %7196 ]
  %7202 = icmp ne i32 %7150, 0
  %7203 = fmul fast float %7200, %7131
  %7204 = fadd fast float %7203, %7144
  %7205 = fmul fast float %7204, %7200
  %7206 = select i1 %7202, float 0.000000e+00, float %7205
  %7207 = fcmp fast oeq float %7131, 0.000000e+00
  %7208 = fdiv fast float %7149, %7131
  %7209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7208)  ; FMax(a,b)
  %7210 = select i1 %7207, float %7200, float %7209
  %7211 = call float @dx.op.binary.f32(i32 36, float %7200, float %7210)  ; FMin(a,b)
  %7212 = fcmp fast ogt float %7131, 0.000000e+00
  %7213 = fcmp fast olt float %7149, 0.000000e+00
  br i1 %7212, label %7214, label %7271

; <label>:7214                                    ; preds = %7199
  %7215 = icmp eq i32 %7150, 0
  br i1 %7213, label %7216, label %7260

; <label>:7216                                    ; preds = %7214
  %7217 = select i1 %7215, float %7200, float 0.000000e+00
  %7218 = fsub fast float -0.000000e+00, %7217
  %7219 = call float @dx.op.unary.f32(i32 6, float %7218)  ; FAbs(value)
  %7220 = fmul fast float %7217, %7131
  %7221 = fadd fast float %7220, %7144
  %7222 = fmul fast float %7219, %7221
  %7223 = fsub fast float %7206, %7222
  %7224 = fsub fast float %7200, %7219
  %7225 = select i1 %7215, float %7224, float 0.000000e+00
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7230, 3
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 3
  %7237 = call float @dx.op.binary.f32(i32 36, float %7223, float %7236)  ; FMin(a,b)
  %7238 = fmul fast float %7234, %7225
  %7239 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7240 = fsub fast float %7231, %7227
  %7241 = fsub fast float %7232, %7228
  %7242 = fsub fast float %7233, %7229
  %7243 = fmul fast float %7239, %7240
  %7244 = fmul fast float %7239, %7241
  %7245 = fmul fast float %7239, %7242
  %7246 = fadd fast float %7243, %7227
  %7247 = fadd fast float %7244, %7228
  %7248 = fadd fast float %7245, %7229
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.CBufRet.f32 %7249, 1
  %7252 = fadd fast float %7251, %7250
  %7253 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7249, 2
  %7255 = extractvalue %dx.types.CBufRet.f32 %7249, 3
  %7256 = fadd fast float %7255, %7254
  %7257 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7258 = fmul fast float %7253, %7237
  %7259 = fmul fast float %7258, %7257
  br label %7501

; <label>:7260                                    ; preds = %7214
  br i1 %7215, label %7261, label %7282

; <label>:7261                                    ; preds = %7260
  %7262 = call float @dx.op.binary.f32(i32 36, float %7211, float %7201)  ; FMin(a,b)
  %7263 = fsub fast float %7211, %7262
  %7264 = fsub fast float %7263, %7200
  %7265 = call float @dx.op.unary.f32(i32 6, float %7264)  ; FAbs(value)
  %7266 = fadd fast float %7263, %7200
  %7267 = fmul fast float %7266, %7131
  %7268 = fadd fast float %7267, %7144
  %7269 = fmul fast float %7268, %7265
  %7270 = fsub fast float %7206, %7269
  br label %7282

; <label>:7271                                    ; preds = %7199
  br i1 %7213, label %7272, label %7282

; <label>:7272                                    ; preds = %7271
  %7273 = call float @dx.op.binary.f32(i32 35, float %7201, float %7211)  ; FMax(a,b)
  %7274 = icmp eq i32 %7150, 0
  %7275 = select i1 %7274, float %7211, float 0.000000e+00
  %7276 = fsub fast float -0.000000e+00, %7275
  %7277 = call float @dx.op.unary.f32(i32 6, float %7276)  ; FAbs(value)
  %7278 = fmul fast float %7275, %7131
  %7279 = fadd fast float %7278, %7144
  %7280 = fmul fast float %7277, %7279
  %7281 = fsub fast float %7206, %7280
  br label %7282

; <label>:7282                                    ; preds = %7272, %7271, %7261, %7260
  %7283 = phi float [ %7201, %7260 ], [ %7201, %7261 ], [ %7273, %7272 ], [ %7201, %7271 ]
  %7284 = phi float [ 0.000000e+00, %7260 ], [ %7265, %7261 ], [ %7277, %7272 ], [ 0.000000e+00, %7271 ]
  %7285 = phi float [ %7206, %7260 ], [ %7270, %7261 ], [ %7281, %7272 ], [ %7206, %7271 ]
  %7286 = phi float [ %7211, %7260 ], [ %7211, %7261 ], [ %7200, %7272 ], [ %7200, %7271 ]
  %7287 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7287, align 4, !tbaa !120, !noalias !122
  %7288 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7288, align 4, !tbaa !120, !noalias !122
  %7289 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7289, align 4, !tbaa !120, !noalias !122
  %7290 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7290, align 4, !tbaa !120, !noalias !122
  %7291 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7291, align 4, !tbaa !120, !noalias !122
  %7292 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7292, align 4, !tbaa !120, !noalias !122
  %7293 = icmp sgt i32 %7152, 0
  br i1 %7293, label %7294, label %7355

; <label>:7294                                    ; preds = %7282
  br label %7295

; <label>:7295                                    ; preds = %7344, %7294
  %7296 = phi i32 [ %7345, %7344 ], [ 0, %7294 ]
  %7297 = phi i32 [ %7346, %7344 ], [ 0, %7294 ]
  %7298 = add nuw i32 %7297, 171
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7298)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 0
  %7301 = extractvalue %dx.types.CBufRet.f32 %7299, 1
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.CBufRet.f32 %7302, 1
  %7305 = fsub fast float %7300, %7303
  %7306 = fsub fast float %7301, %7304
  %7307 = extractvalue %dx.types.CBufRet.f32 %7299, 2
  %7308 = fsub fast float -0.000000e+00, %7305
  %7309 = fsub fast float -0.000000e+00, %7306
  %7310 = call float @dx.op.dot2.f32(i32 54, float %7129, float %7130, float %7308, float %7309)  ; Dot2(ax,ay,bx,by)
  %7311 = fmul fast float %7310, 2.000000e+00
  %7312 = call float @dx.op.dot2.f32(i32 54, float %7308, float %7309, float %7308, float %7309)  ; Dot2(ax,ay,bx,by)
  %7313 = fmul fast float %7307, %7307
  %7314 = fsub fast float %7312, %7313
  %7315 = fmul fast float %7311, %7311
  %7316 = fmul fast float %7172, %7314
  %7317 = fsub fast float %7315, %7316
  %7318 = fcmp fast ogt float %7317, 0.000000e+00
  br i1 %7318, label %7319, label %7334

; <label>:7319                                    ; preds = %7295
  %7320 = fcmp fast ogt float %7311, 0.000000e+00
  %7321 = call float @dx.op.unary.f32(i32 24, float %7317)  ; Sqrt(value)
  %7322 = fsub fast float -0.000000e+00, %7321
  %7323 = select i1 %7320, float %7321, float %7322
  %7324 = fadd fast float %7323, %7311
  %7325 = fmul float %7324, -5.000000e-01
  %7326 = fdiv fast float %7325, %7165
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float 0.000000e+00)  ; FMax(a,b)
  %7328 = call float @dx.op.binary.f32(i32 36, float %7200, float %7327)  ; FMin(a,b)
  %7329 = fdiv fast float %7314, %7325
  %7330 = call float @dx.op.binary.f32(i32 35, float %7329, float 0.000000e+00)  ; FMax(a,b)
  %7331 = call float @dx.op.binary.f32(i32 36, float %7200, float %7330)  ; FMin(a,b)
  %7332 = call float @dx.op.binary.f32(i32 36, float %7328, float %7331)  ; FMin(a,b)
  %7333 = call float @dx.op.binary.f32(i32 35, float %7328, float %7331)  ; FMax(a,b)
  br label %7334

; <label>:7334                                    ; preds = %7319, %7295
  %7335 = phi float [ %7333, %7319 ], [ -1.000000e+00, %7295 ]
  %7336 = phi float [ %7332, %7319 ], [ -1.000000e+00, %7295 ]
  %7337 = phi i1 [ true, %7319 ], [ false, %7295 ]
  br i1 %7337, label %7338, label %7344

; <label>:7338                                    ; preds = %7334
  %7339 = call float @dx.op.binary.f32(i32 35, float %7283, float %7336)  ; FMax(a,b)
  %7340 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7297
  store float %7339, float* %7340, align 4, !tbaa !120, !noalias !122
  %7341 = call float @dx.op.binary.f32(i32 35, float %7283, float %7335)  ; FMax(a,b)
  %7342 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7297
  store float %7341, float* %7342, align 4, !tbaa !120, !noalias !122
  %7343 = add nsw i32 %7296, 1
  br label %7344

; <label>:7344                                    ; preds = %7338, %7334
  %7345 = phi i32 [ %7343, %7338 ], [ %7296, %7334 ]
  %7346 = add nuw nsw i32 %7297, 1
  %7347 = icmp eq i32 %7346, %7152
  br i1 %7347, label %7348, label %7295

; <label>:7348                                    ; preds = %7344
  %7349 = load float, float* %7289, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7350 = load float, float* %7288, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7351 = load float, float* %7287, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7352 = load float, float* %7292, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7353 = load float, float* %7291, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7354 = load float, float* %7290, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7355

; <label>:7355                                    ; preds = %7348, %7282
  %7356 = phi float [ -1.000000e+00, %7282 ], [ %7354, %7348 ]
  %7357 = phi float [ -1.000000e+00, %7282 ], [ %7353, %7348 ]
  %7358 = phi float [ -1.000000e+00, %7282 ], [ %7352, %7348 ]
  %7359 = phi float [ -1.000000e+00, %7282 ], [ %7351, %7348 ]
  %7360 = phi float [ -1.000000e+00, %7282 ], [ %7350, %7348 ]
  %7361 = phi float [ -1.000000e+00, %7282 ], [ %7349, %7348 ]
  %7362 = phi i32 [ 0, %7282 ], [ %7345, %7348 ]
  %7363 = call float @dx.op.binary.f32(i32 36, float %7360, float %7361)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7359, float %7363)  ; FMin(a,b)
  %7365 = call float @dx.op.binary.f32(i32 35, float %7359, float %7360)  ; FMax(a,b)
  %7366 = call float @dx.op.binary.f32(i32 36, float %7365, float %7361)  ; FMin(a,b)
  %7367 = call float @dx.op.binary.f32(i32 36, float %7359, float %7360)  ; FMin(a,b)
  %7368 = call float @dx.op.binary.f32(i32 35, float %7367, float %7366)  ; FMax(a,b)
  %7369 = call float @dx.op.binary.f32(i32 35, float %7360, float %7361)  ; FMax(a,b)
  %7370 = call float @dx.op.binary.f32(i32 35, float %7359, float %7369)  ; FMax(a,b)
  store float %7364, float* %7287, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7368, float* %7288, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7370, float* %7289, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7371 = call float @dx.op.binary.f32(i32 36, float %7357, float %7358)  ; FMin(a,b)
  %7372 = call float @dx.op.binary.f32(i32 36, float %7356, float %7371)  ; FMin(a,b)
  %7373 = call float @dx.op.binary.f32(i32 35, float %7356, float %7357)  ; FMax(a,b)
  %7374 = call float @dx.op.binary.f32(i32 36, float %7373, float %7358)  ; FMin(a,b)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7356, float %7357)  ; FMin(a,b)
  %7376 = call float @dx.op.binary.f32(i32 35, float %7375, float %7374)  ; FMax(a,b)
  %7377 = call float @dx.op.binary.f32(i32 35, float %7357, float %7358)  ; FMax(a,b)
  %7378 = call float @dx.op.binary.f32(i32 35, float %7356, float %7377)  ; FMax(a,b)
  store float %7372, float* %7290, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7376, float* %7291, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7378, float* %7292, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7379 = sub nsw i32 3, %7362
  %7380 = icmp sgt i32 %7379, 2
  br i1 %7380, label %7381, label %7419

; <label>:7381                                    ; preds = %7355
  %7382 = icmp eq i32 %7150, 0
  %7383 = fsub fast float %7200, %7284
  %7384 = select i1 %7382, float %7383, float %7284
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 0
  %7391 = extractvalue %dx.types.CBufRet.f32 %7389, 1
  %7392 = extractvalue %dx.types.CBufRet.f32 %7389, 2
  %7393 = extractvalue %dx.types.CBufRet.f32 %7389, 3
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7396 = call float @dx.op.binary.f32(i32 36, float %7285, float %7395)  ; FMin(a,b)
  %7397 = fmul fast float %7393, %7384
  %7398 = call float @dx.op.unary.f32(i32 7, float %7397)  ; Saturate(value)
  %7399 = fsub fast float %7390, %7386
  %7400 = fsub fast float %7391, %7387
  %7401 = fsub fast float %7392, %7388
  %7402 = fmul fast float %7398, %7399
  %7403 = fmul fast float %7398, %7400
  %7404 = fmul fast float %7398, %7401
  %7405 = fadd fast float %7402, %7386
  %7406 = fadd fast float %7403, %7387
  %7407 = fadd fast float %7404, %7388
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7411 = fadd fast float %7410, %7409
  %7412 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7415 = fadd fast float %7414, %7413
  %7416 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7417 = fmul fast float %7412, %7396
  %7418 = fmul fast float %7417, %7416
  br label %7501

; <label>:7419                                    ; preds = %7355
  %7420 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7379
  %7421 = load float, float* %7420, align 4, !tbaa !120, !noalias !122
  %7422 = fcmp fast olt float %7421, %7286
  %7423 = icmp sgt i32 %7362, 0
  %7424 = and i1 %7423, %7422
  br i1 %7424, label %7425, label %7462

; <label>:7425                                    ; preds = %7419
  br label %7426

; <label>:7426                                    ; preds = %7455, %7425
  %7427 = phi float [ %7456, %7455 ], [ %7284, %7425 ]
  %7428 = phi float [ %7457, %7455 ], [ %7285, %7425 ]
  %7429 = phi float [ %7437, %7455 ], [ %7421, %7425 ]
  %7430 = phi i32 [ %7434, %7455 ], [ %7379, %7425 ]
  %7431 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7430
  %7432 = load float, float* %7431, align 4, !tbaa !120, !noalias !122
  %7433 = icmp slt i32 %7430, 2
  %7434 = add nsw i32 %7430, 1
  %7435 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7434
  %7436 = load float, float* %7435, align 4, !tbaa !120, !noalias !122
  %7437 = select i1 %7433, float %7436, float %7200
  %7438 = call float @dx.op.binary.f32(i32 36, float %7437, float %7432)  ; FMin(a,b)
  %7439 = call float @dx.op.binary.f32(i32 36, float %7286, float %7438)  ; FMin(a,b)
  %7440 = icmp eq i32 %7150, 0
  %7441 = fadd fast float %7439, %7429
  %7442 = fmul fast float %7441, %7131
  %7443 = fadd fast float %7442, %7144
  br i1 %7440, label %7449, label %7444

; <label>:7444                                    ; preds = %7426
  %7445 = fsub fast float %7439, %7429
  %7446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7445)  ; FMax(a,b)
  %7447 = fmul fast float %7446, %7443
  %7448 = fadd fast float %7447, %7428
  br label %7455

; <label>:7449                                    ; preds = %7426
  %7450 = fsub fast float %7429, %7439
  %7451 = call float @dx.op.unary.f32(i32 6, float %7450)  ; FAbs(value)
  %7452 = fadd fast float %7451, %7427
  %7453 = fmul fast float %7451, %7443
  %7454 = fsub fast float %7428, %7453
  br label %7455

; <label>:7455                                    ; preds = %7449, %7444
  %7456 = phi float [ %7446, %7444 ], [ %7452, %7449 ]
  %7457 = phi float [ %7448, %7444 ], [ %7454, %7449 ]
  %7458 = fcmp fast olt float %7437, %7286
  %7459 = icmp slt i32 %7434, 3
  %7460 = and i1 %7459, %7458
  br i1 %7460, label %7426, label %7461

; <label>:7461                                    ; preds = %7455
  br label %7462

; <label>:7462                                    ; preds = %7461, %7419
  %7463 = phi float [ %7284, %7419 ], [ %7456, %7461 ]
  %7464 = phi float [ %7285, %7419 ], [ %7457, %7461 ]
  %7465 = fsub fast float %7200, %7463
  %7466 = select i1 %7202, float %7463, float %7465
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7478 = call float @dx.op.binary.f32(i32 36, float %7464, float %7477)  ; FMin(a,b)
  %7479 = fmul fast float %7475, %7466
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = fsub fast float %7472, %7468
  %7482 = fsub fast float %7473, %7469
  %7483 = fsub fast float %7474, %7470
  %7484 = fmul fast float %7480, %7481
  %7485 = fmul fast float %7480, %7482
  %7486 = fmul fast float %7480, %7483
  %7487 = fadd fast float %7484, %7468
  %7488 = fadd fast float %7485, %7469
  %7489 = fadd fast float %7486, %7470
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.CBufRet.f32 %7490, 1
  %7493 = fadd fast float %7492, %7491
  %7494 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7496 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7497 = fadd fast float %7496, %7495
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fmul fast float %7494, %7478
  %7500 = fmul fast float %7499, %7498
  br label %7501

; <label>:7501                                    ; preds = %7462, %7381, %7216, %7198, %7196
  %7502 = phi float [ %7225, %7216 ], [ %7384, %7381 ], [ %7466, %7462 ], [ 0.000000e+00, %7196 ], [ 0.000000e+00, %7198 ]
  %7503 = phi float [ %7259, %7216 ], [ %7418, %7381 ], [ %7500, %7462 ], [ 0.000000e+00, %7196 ], [ 0.000000e+00, %7198 ]
  %7504 = phi float [ %7246, %7216 ], [ %7405, %7381 ], [ %7487, %7462 ], [ 0.000000e+00, %7196 ], [ 0.000000e+00, %7198 ]
  %7505 = phi float [ %7247, %7216 ], [ %7406, %7381 ], [ %7488, %7462 ], [ 0.000000e+00, %7196 ], [ 0.000000e+00, %7198 ]
  %7506 = phi float [ %7248, %7216 ], [ %7407, %7381 ], [ %7489, %7462 ], [ 0.000000e+00, %7196 ], [ 0.000000e+00, %7198 ]
  %7507 = fmul fast float %7139, %7503
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7510 = fsub fast float %7146, %7509
  %7511 = fcmp fast olt float %7507, -2.000000e+01
  %7512 = call float @dx.op.unary.f32(i32 21, float %7507)  ; Exp(value)
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 2
  %7515 = extractvalue %dx.types.CBufRet.f32 %7513, 3
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7518 = fmul fast float %7515, %7510
  %7519 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7520 = fsub fast float 1.000000e+00, %7519
  %7521 = fmul fast float %7131, 5.000000e-01
  %7522 = fadd fast float %7521, 5.000000e-01
  %7523 = call float @dx.op.unary.f32(i32 7, float %7522)  ; Saturate(value)
  %7524 = fsub fast float 1.000000e+00, %7523
  %7525 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7520)  ; FMax(a,b)
  %7526 = fdiv fast float %7524, %7525
  %7527 = fsub fast float %7510, %7088
  %7528 = call float @dx.op.unary.f32(i32 6, float %7527)  ; FAbs(value)
  %7529 = fmul fast float %7528, %7514
  %7530 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7531 = fsub fast float 1.000000e+00, %7529
  %7532 = fmul fast float %7531, %7530
  %7533 = fadd fast float %7532, %7529
  %7534 = fmul fast float %7517, %7510
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fsub fast float 1.000000e+00, %7533
  %7537 = fmul fast float %7536, %7535
  %7538 = fadd fast float %7537, %7533
  %7539 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  %7540 = fadd fast float %7512, -1.000000e+00
  %7541 = select i1 %7511, float -1.000000e+00, float %7540
  %7542 = fmul fast float %7539, %7541
  %7543 = fadd fast float %7542, 1.000000e+00
  %7544 = fsub fast float -0.000000e+00, %7542
  %7545 = fmul fast float %7504, %7544
  %7546 = fmul fast float %7505, %7544
  %7547 = fmul fast float %7506, %7544
  br label %7548

; <label>:7548                                    ; preds = %7501, %7097
  %7549 = phi float [ %7502, %7501 ], [ 0.000000e+00, %7097 ]
  %7550 = phi float [ %7543, %7501 ], [ 1.000000e+00, %7097 ]
  %7551 = phi float [ %7545, %7501 ], [ 0.000000e+00, %7097 ]
  %7552 = phi float [ %7546, %7501 ], [ 0.000000e+00, %7097 ]
  %7553 = phi float [ %7547, %7501 ], [ 0.000000e+00, %7097 ]
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 1
  %7556 = fsub fast float 1.000000e+00, %7550
  %7557 = fmul fast float %7556, %7132
  %7558 = fmul fast float %7557, %7555
  %7559 = fsub fast float %7132, %7558
  br i1 %7125, label %7560, label %7589, !dx.controlflow.hints !158

; <label>:7560                                    ; preds = %7548
  %7561 = fmul fast float %7133, %7122
  %7562 = fadd fast float %7561, %7123
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = fmul fast float %7104, %7559
  %7565 = fsub fast float -0.000000e+00, %7564
  %7566 = fmul fast float %7105, %7559
  %7567 = fsub fast float -0.000000e+00, %7566
  %7568 = call float @dx.op.unary.f32(i32 21, float %7565)  ; Exp(value)
  %7569 = call float @dx.op.unary.f32(i32 21, float %7567)  ; Exp(value)
  %7570 = call float @dx.op.binary.f32(i32 35, float %7112, float %7568)  ; FMax(a,b)
  %7571 = call float @dx.op.binary.f32(i32 35, float %7112, float %7569)  ; FMax(a,b)
  %7572 = fsub fast float %7571, %7570
  %7573 = fmul fast float %7572, %7563
  %7574 = fadd fast float %7573, %7570
  %7575 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7576 = fsub fast float %7109, %7114
  %7577 = fsub fast float %7110, %7115
  %7578 = fsub fast float %7111, %7116
  %7579 = fmul fast float %7563, %7576
  %7580 = fmul fast float %7563, %7577
  %7581 = fmul fast float %7563, %7578
  %7582 = fadd fast float %7579, %7114
  %7583 = fadd fast float %7580, %7115
  %7584 = fadd fast float %7581, %7116
  %7585 = fsub fast float 1.000000e+00, %7575
  %7586 = fmul fast float %7585, %7582
  %7587 = fmul fast float %7585, %7583
  %7588 = fmul fast float %7585, %7584
  br label %7648

; <label>:7589                                    ; preds = %7548
  %7590 = fmul fast float %7559, %7121
  %7591 = call float @dx.op.unary.f32(i32 7, float %7590)  ; Saturate(value)
  %7592 = fsub fast float 2.000000e+00, %7591
  %7593 = fmul fast float %7591, 9.921875e-01
  %7594 = fmul fast float %7593, %7592
  %7595 = fadd fast float %7594, 3.906250e-03
  %7596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7595, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = fsub fast float %7591, %7597
  %7599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7598)  ; FMax(a,b)
  %7600 = fmul fast float %7107, %7088
  %7601 = call float @dx.op.unary.f32(i32 6, float %7600)  ; FAbs(value)
  %7602 = fcmp fast ogt float %7601, 0x3EB0C6F7A0000000
  br i1 %7602, label %7603, label %7609, !dx.controlflow.hints !159

; <label>:7603                                    ; preds = %7589
  %7604 = fmul fast float %7600, 0xBFF7154760000000
  %7605 = call float @dx.op.unary.f32(i32 21, float %7604)  ; Exp(value)
  %7606 = fsub fast float 1.000000e+00, %7605
  %7607 = fdiv fast float %7606, %7600
  %7608 = fmul fast float %7607, %7117
  br label %7609

; <label>:7609                                    ; preds = %7603, %7589
  %7610 = phi float [ %7608, %7603 ], [ %7117, %7589 ]
  %7611 = fadd fast float %7610, %7119
  %7612 = fmul fast float %7611, %7599
  %7613 = fmul fast float %7104, %7612
  %7614 = fsub fast float -0.000000e+00, %7613
  %7615 = fmul fast float %7105, %7612
  %7616 = fsub fast float -0.000000e+00, %7615
  %7617 = fmul fast float %7106, %7612
  %7618 = fsub fast float -0.000000e+00, %7617
  %7619 = call float @dx.op.unary.f32(i32 21, float %7614)  ; Exp(value)
  %7620 = call float @dx.op.unary.f32(i32 21, float %7616)  ; Exp(value)
  %7621 = call float @dx.op.unary.f32(i32 21, float %7618)  ; Exp(value)
  %7622 = fmul fast float %7133, %7133
  %7623 = fadd fast float %7622, 1.000000e+00
  %7624 = fmul fast float %7623, 0x3FAE8EC8A0000000
  %7625 = fmul fast float %7624, %7114
  %7626 = fmul fast float %7624, %7115
  %7627 = fmul fast float %7624, %7116
  %7628 = fmul fast float %7133, %7112
  %7629 = fsub fast float 1.000000e+00, %7628
  %7630 = fmul fast float %7112, %7112
  %7631 = fsub fast float 1.000000e+00, %7630
  %7632 = fmul fast float %7631, 0x3FB45F3060000000
  %7633 = fmul fast float %7629, %7629
  %7634 = fdiv fast float 1.000000e+00, %7633
  %7635 = fmul fast float %7632, %7634
  %7636 = fmul fast float %7635, %7109
  %7637 = fmul fast float %7635, %7110
  %7638 = fmul fast float %7635, %7111
  %7639 = fadd fast float %7636, %7625
  %7640 = fadd fast float %7637, %7626
  %7641 = fadd fast float %7638, %7627
  %7642 = fsub fast float 1.000000e+00, %7619
  %7643 = fsub fast float 1.000000e+00, %7620
  %7644 = fsub fast float 1.000000e+00, %7621
  %7645 = fmul fast float %7639, %7642
  %7646 = fmul fast float %7640, %7643
  %7647 = fmul fast float %7641, %7644
  br label %7648

; <label>:7648                                    ; preds = %7609, %7560
  %7649 = phi float [ %7586, %7560 ], [ %7645, %7609 ]
  %7650 = phi float [ %7587, %7560 ], [ %7646, %7609 ]
  %7651 = phi float [ %7588, %7560 ], [ %7647, %7609 ]
  %7652 = phi float [ %7575, %7560 ], [ %7619, %7609 ]
  %7653 = phi float [ %7575, %7560 ], [ %7620, %7609 ]
  %7654 = phi float [ %7575, %7560 ], [ %7621, %7609 ]
  br i1 %7141, label %7655, label %7853, !dx.controlflow.hints !160

; <label>:7655                                    ; preds = %7648
  %7656 = extractvalue %dx.types.CBufRet.f32 %7554, 0
  %7657 = fmul fast float %7656, %7556
  %7658 = fsub fast float %7551, %7649
  %7659 = fsub fast float %7552, %7650
  %7660 = fsub fast float %7553, %7651
  %7661 = fmul fast float %7657, %7658
  %7662 = fmul fast float %7657, %7659
  %7663 = fmul fast float %7657, %7660
  %7664 = fadd fast float %7661, %7649
  %7665 = fadd fast float %7662, %7650
  %7666 = fadd fast float %7663, %7651
  %7667 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7652)  ; FMax(a,b)
  %7668 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7653)  ; FMax(a,b)
  %7669 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7654)  ; FMax(a,b)
  %7670 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7550)  ; FMax(a,b)
  %7671 = call float @dx.op.binary.f32(i32 35, float %7549, float %7559)  ; FMax(a,b)
  %7672 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7671)  ; FMax(a,b)
  %7673 = fdiv fast float %7549, %7672
  %7674 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7675 = fdiv fast float %7559, %7672
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fcmp fast une float %7670, 1.000000e+00
  br i1 %7677, label %7678, label %7691, !dx.controlflow.hints !161

; <label>:7678                                    ; preds = %7655
  %7679 = call float @dx.op.unary.f32(i32 23, float %7670)  ; Log(value)
  %7680 = fmul fast float %7679, 0x3FE62E4300000000
  %7681 = fmul fast float %7551, %7680
  %7682 = fsub fast float -0.000000e+00, %7681
  %7683 = fmul fast float %7552, %7680
  %7684 = fsub fast float -0.000000e+00, %7683
  %7685 = fmul fast float %7553, %7680
  %7686 = fsub fast float -0.000000e+00, %7685
  %7687 = fsub fast float 1.000000e+00, %7670
  %7688 = fdiv fast float %7682, %7687
  %7689 = fdiv fast float %7684, %7687
  %7690 = fdiv fast float %7686, %7687
  br label %7691

; <label>:7691                                    ; preds = %7678, %7655
  %7692 = phi float [ %7688, %7678 ], [ %7551, %7655 ]
  %7693 = phi float [ %7689, %7678 ], [ %7552, %7655 ]
  %7694 = phi float [ %7690, %7678 ], [ %7553, %7655 ]
  %7695 = phi float [ %7680, %7678 ], [ 0.000000e+00, %7655 ]
  %7696 = fcmp fast une float %7667, 1.000000e+00
  br i1 %7696, label %7697, label %7704, !dx.controlflow.hints !162

; <label>:7697                                    ; preds = %7691
  %7698 = call float @dx.op.unary.f32(i32 23, float %7667)  ; Log(value)
  %7699 = fmul fast float %7698, 0x3FE62E4300000000
  %7700 = fmul fast float %7664, %7699
  %7701 = fsub fast float -0.000000e+00, %7700
  %7702 = fsub fast float 1.000000e+00, %7667
  %7703 = fdiv fast float %7701, %7702
  br label %7704

; <label>:7704                                    ; preds = %7697, %7691
  %7705 = phi float [ %7703, %7697 ], [ %7664, %7691 ]
  %7706 = phi float [ %7699, %7697 ], [ 0.000000e+00, %7691 ]
  %7707 = fcmp fast une float %7668, 1.000000e+00
  br i1 %7707, label %7708, label %7715, !dx.controlflow.hints !162

; <label>:7708                                    ; preds = %7704
  %7709 = call float @dx.op.unary.f32(i32 23, float %7668)  ; Log(value)
  %7710 = fmul fast float %7709, 0x3FE62E4300000000
  %7711 = fmul fast float %7665, %7710
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = fsub fast float 1.000000e+00, %7668
  %7714 = fdiv fast float %7712, %7713
  br label %7715

; <label>:7715                                    ; preds = %7708, %7704
  %7716 = phi float [ %7714, %7708 ], [ %7665, %7704 ]
  %7717 = phi float [ %7710, %7708 ], [ 0.000000e+00, %7704 ]
  %7718 = fcmp fast une float %7669, 1.000000e+00
  br i1 %7718, label %7719, label %7726, !dx.controlflow.hints !162

; <label>:7719                                    ; preds = %7715
  %7720 = call float @dx.op.unary.f32(i32 23, float %7669)  ; Log(value)
  %7721 = fmul fast float %7720, 0x3FE62E4300000000
  %7722 = fmul fast float %7666, %7721
  %7723 = fsub fast float -0.000000e+00, %7722
  %7724 = fsub fast float 1.000000e+00, %7669
  %7725 = fdiv fast float %7723, %7724
  br label %7726

; <label>:7726                                    ; preds = %7719, %7715
  %7727 = phi float [ %7725, %7719 ], [ %7666, %7715 ]
  %7728 = phi float [ %7721, %7719 ], [ 0.000000e+00, %7715 ]
  %7729 = fmul fast float %7692, %7676
  %7730 = fmul fast float %7693, %7676
  %7731 = fmul fast float %7694, %7676
  %7732 = fmul fast float %7695, %7676
  %7733 = fmul fast float %7705, %7674
  %7734 = fmul fast float %7716, %7674
  %7735 = fmul fast float %7727, %7674
  %7736 = fmul fast float %7706, %7674
  %7737 = fmul fast float %7717, %7674
  %7738 = fmul fast float %7728, %7674
  %7739 = fadd fast float %7733, %7729
  %7740 = fadd fast float %7734, %7730
  %7741 = fadd fast float %7735, %7731
  %7742 = fadd fast float %7736, %7732
  %7743 = fadd fast float %7737, %7732
  %7744 = fadd fast float %7738, %7732
  %7745 = fcmp fast une float %7742, 0.000000e+00
  br i1 %7745, label %7746, label %7753, !dx.controlflow.hints !163

; <label>:7746                                    ; preds = %7726
  %7747 = fmul fast float %7742, 0x3FF7154760000000
  %7748 = call float @dx.op.unary.f32(i32 21, float %7747)  ; Exp(value)
  %7749 = fsub fast float 1.000000e+00, %7748
  %7750 = fmul fast float %7739, %7749
  %7751 = fsub fast float -0.000000e+00, %7750
  %7752 = fdiv fast float %7751, %7742
  br label %7753

; <label>:7753                                    ; preds = %7746, %7726
  %7754 = phi float [ %7748, %7746 ], [ 1.000000e+00, %7726 ]
  %7755 = phi float [ %7752, %7746 ], [ %7739, %7726 ]
  %7756 = fcmp fast une float %7743, 0.000000e+00
  br i1 %7756, label %7757, label %7764, !dx.controlflow.hints !163

; <label>:7757                                    ; preds = %7753
  %7758 = fmul fast float %7743, 0x3FF7154760000000
  %7759 = call float @dx.op.unary.f32(i32 21, float %7758)  ; Exp(value)
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7740, %7760
  %7762 = fsub fast float -0.000000e+00, %7761
  %7763 = fdiv fast float %7762, %7743
  br label %7764

; <label>:7764                                    ; preds = %7757, %7753
  %7765 = phi float [ %7759, %7757 ], [ 1.000000e+00, %7753 ]
  %7766 = phi float [ %7763, %7757 ], [ %7740, %7753 ]
  %7767 = fcmp fast une float %7744, 0.000000e+00
  br i1 %7767, label %7768, label %7775, !dx.controlflow.hints !163

; <label>:7768                                    ; preds = %7764
  %7769 = fmul fast float %7744, 0x3FF7154760000000
  %7770 = call float @dx.op.unary.f32(i32 21, float %7769)  ; Exp(value)
  %7771 = fsub fast float 1.000000e+00, %7770
  %7772 = fmul fast float %7741, %7771
  %7773 = fsub fast float -0.000000e+00, %7772
  %7774 = fdiv fast float %7773, %7744
  br label %7775

; <label>:7775                                    ; preds = %7768, %7764
  %7776 = phi float [ %7770, %7768 ], [ 1.000000e+00, %7764 ]
  %7777 = phi float [ %7774, %7768 ], [ %7741, %7764 ]
  %7778 = fcmp fast ogt float %7674, %7676
  br i1 %7778, label %7779, label %7799

; <label>:7779                                    ; preds = %7775
  %7780 = fsub fast float 1.000000e+00, %7676
  %7781 = fmul fast float %7692, %7780
  %7782 = fmul fast float %7693, %7780
  %7783 = fmul fast float %7694, %7780
  %7784 = fmul fast float %7695, %7780
  %7785 = fcmp fast une float %7784, 0.000000e+00
  br i1 %7785, label %7786, label %7837, !dx.controlflow.hints !164

; <label>:7786                                    ; preds = %7779
  %7787 = fmul fast float %7784, 0x3FF7154760000000
  %7788 = call float @dx.op.unary.f32(i32 21, float %7787)  ; Exp(value)
  %7789 = fsub fast float 1.000000e+00, %7788
  %7790 = fmul fast float %7781, %7789
  %7791 = fsub fast float -0.000000e+00, %7790
  %7792 = fmul fast float %7782, %7789
  %7793 = fsub fast float -0.000000e+00, %7792
  %7794 = fmul fast float %7783, %7789
  %7795 = fsub fast float -0.000000e+00, %7794
  %7796 = fdiv fast float %7791, %7784
  %7797 = fdiv fast float %7793, %7784
  %7798 = fdiv fast float %7795, %7784
  br label %7837

; <label>:7799                                    ; preds = %7775
  %7800 = fsub fast float 1.000000e+00, %7674
  %7801 = fmul fast float %7705, %7800
  %7802 = fmul fast float %7716, %7800
  %7803 = fmul fast float %7727, %7800
  %7804 = fmul fast float %7706, %7800
  %7805 = fmul fast float %7717, %7800
  %7806 = fmul fast float %7728, %7800
  %7807 = fcmp fast une float %7804, 0.000000e+00
  br i1 %7807, label %7808, label %7815, !dx.controlflow.hints !163

; <label>:7808                                    ; preds = %7799
  %7809 = fmul fast float %7804, 0x3FF7154760000000
  %7810 = call float @dx.op.unary.f32(i32 21, float %7809)  ; Exp(value)
  %7811 = fsub fast float 1.000000e+00, %7810
  %7812 = fmul fast float %7801, %7811
  %7813 = fsub fast float -0.000000e+00, %7812
  %7814 = fdiv fast float %7813, %7804
  br label %7815

; <label>:7815                                    ; preds = %7808, %7799
  %7816 = phi float [ %7814, %7808 ], [ %7801, %7799 ]
  %7817 = phi float [ %7810, %7808 ], [ 1.000000e+00, %7799 ]
  %7818 = fcmp fast une float %7805, 0.000000e+00
  br i1 %7818, label %7819, label %7826, !dx.controlflow.hints !163

; <label>:7819                                    ; preds = %7815
  %7820 = fmul fast float %7805, 0x3FF7154760000000
  %7821 = call float @dx.op.unary.f32(i32 21, float %7820)  ; Exp(value)
  %7822 = fsub fast float 1.000000e+00, %7821
  %7823 = fmul fast float %7802, %7822
  %7824 = fsub fast float -0.000000e+00, %7823
  %7825 = fdiv fast float %7824, %7805
  br label %7826

; <label>:7826                                    ; preds = %7819, %7815
  %7827 = phi float [ %7825, %7819 ], [ %7802, %7815 ]
  %7828 = phi float [ %7821, %7819 ], [ 1.000000e+00, %7815 ]
  %7829 = fcmp fast une float %7806, 0.000000e+00
  br i1 %7829, label %7830, label %7837, !dx.controlflow.hints !163

; <label>:7830                                    ; preds = %7826
  %7831 = fmul fast float %7806, 0x3FF7154760000000
  %7832 = call float @dx.op.unary.f32(i32 21, float %7831)  ; Exp(value)
  %7833 = fsub fast float 1.000000e+00, %7832
  %7834 = fmul fast float %7803, %7833
  %7835 = fsub fast float -0.000000e+00, %7834
  %7836 = fdiv fast float %7835, %7806
  br label %7837

; <label>:7837                                    ; preds = %7830, %7826, %7786, %7779
  %7838 = phi float [ %7836, %7830 ], [ %7798, %7786 ], [ %7783, %7779 ], [ %7803, %7826 ]
  %7839 = phi float [ %7827, %7830 ], [ %7797, %7786 ], [ %7782, %7779 ], [ %7827, %7826 ]
  %7840 = phi float [ %7816, %7830 ], [ %7796, %7786 ], [ %7781, %7779 ], [ %7816, %7826 ]
  %7841 = phi float [ %7832, %7830 ], [ %7788, %7786 ], [ 1.000000e+00, %7779 ], [ 1.000000e+00, %7826 ]
  %7842 = phi float [ %7828, %7830 ], [ %7788, %7786 ], [ 1.000000e+00, %7779 ], [ %7828, %7826 ]
  %7843 = phi float [ %7817, %7830 ], [ %7788, %7786 ], [ 1.000000e+00, %7779 ], [ %7817, %7826 ]
  %7844 = fmul fast float %7843, %7755
  %7845 = fmul fast float %7842, %7766
  %7846 = fmul fast float %7841, %7777
  %7847 = fadd fast float %7844, %7840
  %7848 = fadd fast float %7845, %7839
  %7849 = fadd fast float %7846, %7838
  %7850 = fmul fast float %7843, %7754
  %7851 = fmul fast float %7842, %7765
  %7852 = fmul fast float %7841, %7776
  br label %7853

; <label>:7853                                    ; preds = %7837, %7648
  %7854 = phi float [ %7852, %7837 ], [ %7654, %7648 ]
  %7855 = phi float [ %7851, %7837 ], [ %7653, %7648 ]
  %7856 = phi float [ %7850, %7837 ], [ %7652, %7648 ]
  %7857 = phi float [ %7849, %7837 ], [ %7651, %7648 ]
  %7858 = phi float [ %7848, %7837 ], [ %7650, %7648 ]
  %7859 = phi float [ %7847, %7837 ], [ %7649, %7648 ]
  %7860 = fmul fast float %7859, %6805
  %7861 = fmul fast float %7858, %6805
  %7862 = fmul fast float %7857, %6805
  %7863 = fmul fast float %7856, %7096
  %7864 = call float @dx.op.dot3.f32(i32 55, float %7856, float %7855, float %7854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7865 = call float @dx.op.dot3.f32(i32 55, float %7860, float %7861, float %7862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7866 = select i1 %220, float %7864, float %7856
  %7867 = select i1 %220, float %7864, float %7855
  %7868 = select i1 %220, float 1.000000e+00, float %7854
  %7869 = select i1 %220, float %7865, float %7860
  %7870 = select i1 %220, float 0.000000e+00, float %7861
  %7871 = select i1 %220, float 0.000000e+00, float %7862
  %7872 = fmul fast float %7866, %7090
  %7873 = fmul fast float %7867, %7091
  %7874 = fmul fast float %7868, %7092
  %7875 = fadd fast float %7872, %7869
  %7876 = fadd fast float %7873, %7870
  %7877 = fadd fast float %7871, %7874
  %7878 = fmul fast float %7866, %7093
  %7879 = fmul fast float %7867, %7094
  %7880 = fmul fast float %7868, %7095
  %7881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.i32 %7881, 0
  %7883 = icmp eq i32 %7882, 0
  br i1 %7883, label %8251, label %7884, !dx.controlflow.hints !165

; <label>:7884                                    ; preds = %7853
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 2
  %7887 = extractvalue %dx.types.CBufRet.f32 %7885, 3
  %7888 = fmul fast float %7886, %95
  %7889 = fmul fast float %7887, %96
  %7890 = fmul fast float %7888, 2.000000e+00
  %7891 = fmul fast float %7889, 2.000000e+00
  %7892 = fsub fast float 1.000000e+00, %7890
  %7893 = fsub fast float 1.000000e+00, %7891
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 0
  %7896 = extractvalue %dx.types.CBufRet.f32 %7894, 1
  %7897 = extractvalue %dx.types.CBufRet.f32 %7894, 2
  %7898 = fmul fast float %7892, %7895
  %7899 = fmul fast float %7892, %7896
  %7900 = fmul fast float %7892, %7897
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7905 = fmul fast float %7893, %7902
  %7906 = fmul fast float %7893, %7903
  %7907 = fmul fast float %7893, %7904
  %7908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.CBufRet.f32 %7908, 1
  %7911 = extractvalue %dx.types.CBufRet.f32 %7908, 2
  %7912 = fadd fast float %7905, %7909
  %7913 = fadd fast float %7912, %7898
  %7914 = fadd fast float %7906, %7910
  %7915 = fadd fast float %7914, %7899
  %7916 = fadd fast float %7907, %7911
  %7917 = fadd fast float %7916, %7900
  %7918 = fmul fast float %7913, %7089
  %7919 = fmul fast float %7915, %7089
  %7920 = fmul fast float %7917, %7089
  %7921 = fmul fast float %7918, %7918
  %7922 = fmul fast float %7919, %7919
  %7923 = fadd fast float %7921, %7922
  %7924 = fmul fast float %7920, %7920
  %7925 = fadd fast float %7923, %7924
  %7926 = call float @dx.op.unary.f32(i32 24, float %7925)  ; Sqrt(value)
  %7927 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %7928 = fsub fast float %7926, %7927
  %7929 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %7930 = fmul fast float %7928, %7929
  %7931 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7932 = fadd fast float %7931, -5.000000e-01
  %7933 = fmul fast float %7932, 2.000000e+00
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7936 = call float @dx.op.binary.f32(i32 36, float %7935, float %7933)  ; FMin(a,b)
  %7937 = fsub fast float -0.000000e+00, %7935
  %7938 = fcmp fast ogt float %7936, %7937
  br i1 %7938, label %7939, label %8251, !dx.controlflow.hints !166

; <label>:7939                                    ; preds = %7884
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 3
  %7942 = fcmp fast ogt float %7941, 0.000000e+00
  br i1 %7942, label %7943, label %8018, !dx.controlflow.hints !167

; <label>:7943                                    ; preds = %7939
  %7944 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7945 = extractvalue %dx.types.Dimensions %7944, 0
  %7946 = sitofp i32 %7945 to float
  %7947 = extractvalue %dx.types.Dimensions %7944, 1
  %7948 = sitofp i32 %7947 to float
  %7949 = fmul fast float %7888, %7946
  %7950 = fmul fast float %7889, %7948
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 1
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fptoui float %7953 to i32
  %7955 = fptoui float %7949 to i32
  %7956 = fptoui float %7950 to i32
  %7957 = and i32 %7954, 31
  %7958 = lshr i32 %7955, %7957
  %7959 = lshr i32 %7956, %7957
  %7960 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7954, i32 %7958, i32 %7959, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7961 = extractvalue %dx.types.ResRet.f32 %7960, 0
  %7962 = fcmp fast olt float %7961, -1.000000e+00
  %7963 = fcmp fast ogt float %7961, -1.000000e+00
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7966 = select i1 %7963, float %7965, float 1.000000e+00
  %7967 = fadd fast float %7961, 1.000000e+00
  %7968 = fmul fast float %7966, %7967
  %7969 = call float @dx.op.unary.f32(i32 6, float %7968)  ; FAbs(value)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7971 = fcmp fast oge float %7969, %7970
  %7972 = select i1 %7971, float 0x4197782600000000, float %7969
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %7977 = select i1 %7962, float %7974, float %7895
  %7978 = select i1 %7962, float %7975, float %7896
  %7979 = select i1 %7962, float %7976, float %7897
  %7980 = fmul fast float %7977, %7892
  %7981 = fmul fast float %7978, %7892
  %7982 = fmul fast float %7979, %7892
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.CBufRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.CBufRet.f32 %7983, 2
  %7987 = select i1 %7962, float %7984, float %7902
  %7988 = select i1 %7962, float %7985, float %7903
  %7989 = select i1 %7962, float %7986, float %7904
  %7990 = fmul fast float %7987, %7893
  %7991 = fmul fast float %7988, %7893
  %7992 = fmul fast float %7989, %7893
  %7993 = fadd fast float %7990, %7980
  %7994 = fadd fast float %7991, %7981
  %7995 = fadd fast float %7992, %7982
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7998 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %7999 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %8000 = select i1 %7962, float %7997, float %7909
  %8001 = select i1 %7962, float %7998, float %7910
  %8002 = select i1 %7962, float %7999, float %7911
  %8003 = fadd fast float %7993, %8000
  %8004 = fadd fast float %7994, %8001
  %8005 = fadd fast float %7995, %8002
  %8006 = fmul fast float %8003, %7972
  %8007 = fmul fast float %8004, %7972
  %8008 = fmul fast float %8005, %7972
  %8009 = fmul fast float %8006, %8006
  %8010 = fmul fast float %8007, %8007
  %8011 = fadd fast float %8009, %8010
  %8012 = fmul fast float %8008, %8008
  %8013 = fadd fast float %8011, %8012
  %8014 = call float @dx.op.unary.f32(i32 24, float %8013)  ; Sqrt(value)
  %8015 = fsub fast float %8014, %7927
  %8016 = fmul fast float %8015, %7929
  %8017 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  br label %8018

; <label>:8018                                    ; preds = %7943, %7939
  %8019 = phi float [ %8017, %7943 ], [ 1.000000e+00, %7939 ]
  %8020 = fmul fast float %7936, 5.000000e-01
  %8021 = fadd fast float %8020, 5.000000e-01
  %8022 = call float @dx.op.unary.f32(i32 22, float %8021)  ; Frc(value)
  %8023 = call float @dx.op.unary.f32(i32 27, float %8022)  ; Round_ni(value)
  %8024 = call float @dx.op.unary.f32(i32 22, float %8022)  ; Frc(value)
  %8025 = fmul fast float %8024, 2.000000e+00
  %8026 = fadd fast float %8025, -1.000000e+00
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7888, float %7889, float %8023, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.ResRet.f32 %8027, 3
  %8032 = fadd fast float %8028, -5.000000e-01
  %8033 = fadd fast float %8030, -5.000000e-01
  %8034 = fmul fast float %8032, 0xBFD5555560000000
  %8035 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8033, float %8034)  ; FMad(a,b,c)
  %8036 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8029, float 0.000000e+00)  ; FMad(a,b,c)
  %8037 = fadd fast float %8036, %8031
  %8038 = fmul fast float %8032, -7.500000e-01
  %8039 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8033, float %8038)  ; FMad(a,b,c)
  %8040 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8029, float 0.000000e+00)  ; FMad(a,b,c)
  %8041 = fadd fast float %8040, %8031
  %8042 = call float @dx.op.binary.f32(i32 35, float %8035, float -1.000000e+00)  ; FMax(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float %8037, float -1.000000e+00)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8039, float -1.000000e+00)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 35, float %8041, float -1.000000e+00)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8042, float 1.000000e+00)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 36, float %8043, float 1.000000e+00)  ; FMin(a,b)
  %8048 = call float @dx.op.binary.f32(i32 36, float %8044, float 1.000000e+00)  ; FMin(a,b)
  %8049 = call float @dx.op.binary.f32(i32 36, float %8045, float 1.000000e+00)  ; FMin(a,b)
  %8050 = fcmp fast olt float %8046, 0x3FEFFF8020000000
  br i1 %8050, label %8051, label %8166, !dx.controlflow.hints !168

; <label>:8051                                    ; preds = %8018
  %8052 = extractvalue %dx.types.CBufRet.f32 %7934, 3
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.CBufRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.CBufRet.f32 %8053, 2
  %8057 = extractvalue %dx.types.CBufRet.f32 %8053, 3
  %8058 = fsub fast float %8054, %8046
  %8059 = fsub fast float %8055, %8047
  %8060 = fsub fast float %8056, %8048
  %8061 = fsub fast float %8057, %8049
  %8062 = fmul fast float %8058, %8052
  %8063 = fmul fast float %8059, %8052
  %8064 = fmul fast float %8060, %8052
  %8065 = fmul fast float %8061, %8052
  %8066 = fadd fast float %8062, %8046
  %8067 = fadd fast float %8063, %8047
  %8068 = fsub fast float -0.000000e+00, %8067
  %8069 = fadd fast float %8064, %8048
  %8070 = fadd fast float %8065, %8049
  %8071 = fmul fast float %8066, %8066
  %8072 = fsub fast float %8067, %8071
  %8073 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8072)  ; FMax(a,b)
  %8074 = fdiv fast float 1.000000e+00, %8073
  %8075 = fmul fast float %8067, %8066
  %8076 = fsub fast float %8069, %8075
  %8077 = fsub fast float %8026, %8066
  %8078 = fmul fast float %8026, %8026
  %8079 = fsub fast float %8078, %8067
  %8080 = fmul fast float %8077, %8074
  %8081 = fmul fast float %8080, %8076
  %8082 = fsub fast float %8079, %8081
  %8083 = fmul fast float %8067, %8067
  %8084 = fsub fast float %8070, %8083
  %8085 = fmul fast float %8076, %8076
  %8086 = fmul fast float %8085, %8074
  %8087 = fsub fast float %8084, %8086
  %8088 = fdiv fast float %8082, %8087
  %8089 = fmul fast float %8076, %8088
  %8090 = fsub fast float %8077, %8089
  %8091 = fmul fast float %8090, %8074
  %8092 = fmul fast float %8091, %8066
  %8093 = fsub fast float 1.000000e+00, %8092
  %8094 = fmul fast float %8067, %8088
  %8095 = fsub fast float %8093, %8094
  %8096 = fmul fast float %8091, %8091
  %8097 = fmul fast float %8088, 4.000000e+00
  %8098 = fmul fast float %8097, %8095
  %8099 = fsub fast float %8096, %8098
  %8100 = call float @dx.op.unary.f32(i32 24, float %8099)  ; Sqrt(value)
  %8101 = fcmp fast oge float %8091, 0.000000e+00
  %8102 = fsub fast float -0.000000e+00, %8100
  %8103 = select i1 %8101, float %8102, float %8100
  %8104 = fsub fast float %8103, %8091
  %8105 = fdiv fast float %8104, %8088
  %8106 = fdiv fast float %8095, %8104
  %8107 = fmul fast float %8105, 5.000000e-01
  %8108 = fmul fast float %8106, 2.000000e+00
  %8109 = select i1 %8101, float %8107, float %8108
  %8110 = select i1 %8101, float %8108, float %8107
  %8111 = call float @dx.op.binary.f32(i32 35, float %8109, float %8110)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 36, float %8109, float %8110)  ; FMin(a,b)
  %8113 = fcmp fast ogt float %8026, %8112
  br i1 %8113, label %8114, label %8124

; <label>:8114                                    ; preds = %8051
  %8115 = fsub fast float %8026, %8112
  %8116 = fsub fast float %8111, %8112
  %8117 = fmul fast float %8115, %8116
  %8118 = fmul fast float %8111, %8026
  %8119 = fadd fast float %8111, %8026
  %8120 = fmul fast float %8119, %8066
  %8121 = fadd fast float %8118, %8067
  %8122 = fsub fast float %8121, %8120
  %8123 = fdiv fast float %8122, %8117
  br label %8124

; <label>:8124                                    ; preds = %8114, %8051
  %8125 = phi float [ %8123, %8114 ], [ 0.000000e+00, %8051 ]
  %8126 = fcmp fast ogt float %8026, %8111
  %8127 = fsub fast float %8026, %8111
  br i1 %8126, label %8128, label %8138

; <label>:8128                                    ; preds = %8124
  %8129 = fsub fast float %8111, %8112
  %8130 = fmul fast float %8129, %8127
  %8131 = fmul fast float %8112, %8026
  %8132 = fadd fast float %8112, %8026
  %8133 = fmul fast float %8132, %8066
  %8134 = fsub fast float %8068, %8131
  %8135 = fadd fast float %8134, %8133
  %8136 = fdiv fast float %8135, %8130
  %8137 = fadd fast float %8136, %8125
  br label %8138

; <label>:8138                                    ; preds = %8128, %8124
  %8139 = phi float [ %8137, %8128 ], [ %8125, %8124 ]
  %8140 = fsub fast float %8026, %8112
  %8141 = fmul fast float %8140, %8127
  %8142 = fmul fast float %8112, %8111
  %8143 = fadd fast float %8112, %8111
  %8144 = fmul fast float %8143, %8066
  %8145 = fadd fast float %8142, %8067
  %8146 = fsub fast float %8145, %8144
  %8147 = fdiv fast float %8146, %8141
  %8148 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8149 = fcmp fast oeq float %6817, 0.000000e+00
  %8150 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %8151 = fcmp fast oeq float %8150, 0.000000e+00
  %8152 = or i1 %8149, %8151
  %8153 = fmul fast float %8150, 2.000000e+00
  %8154 = fadd fast float %7935, %7936
  %8155 = fdiv fast float %8154, %8153
  %8156 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8157 = fmul fast float %8156, 2.000000e+00
  %8158 = fsub fast float 3.000000e+00, %8157
  %8159 = fmul fast float %8156, %8156
  %8160 = fmul fast float %8159, %8158
  %8161 = select i1 %8152, float 1.000000e+00, float %8160
  %8162 = fmul fast float %8147, %6817
  %8163 = fadd fast float %8148, %8162
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = fmul fast float %8161, %8164
  br label %8166

; <label>:8166                                    ; preds = %8138, %8018
  %8167 = phi float [ %8165, %8138 ], [ 0.000000e+00, %8018 ]
  %8168 = fsub fast float 1.000000e+00, %8167
  %8169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7888, float %7889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8170 = extractvalue %dx.types.ResRet.f32 %8169, 0
  %8171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.i32 %8171, 2
  %8173 = icmp eq i32 %8172, 0
  br i1 %8173, label %8179, label %8174

; <label>:8174                                    ; preds = %8166
  %8175 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8176 = fadd fast float %8170, -1.000000e+00
  %8177 = fmul fast float %8175, %8176
  %8178 = fadd fast float %8177, 1.000000e+00
  br label %8179

; <label>:8179                                    ; preds = %8174, %8166
  %8180 = phi float [ %8178, %8174 ], [ %8168, %8166 ]
  br i1 %7942, label %8181, label %8199

; <label>:8181                                    ; preds = %8179
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8184 = fsub fast float %8019, %8183
  %8185 = call float @dx.op.unary.f32(i32 7, float %8184)  ; Saturate(value)
  %8186 = fsub fast float %8019, %7941
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fsub fast float %8185, %8187
  %8189 = fsub fast float %8021, %8187
  %8190 = fdiv fast float %8189, %8188
  %8191 = call float @dx.op.unary.f32(i32 7, float %8190)  ; Saturate(value)
  %8192 = fmul fast float %8191, 2.000000e+00
  %8193 = fsub fast float 3.000000e+00, %8192
  %8194 = fsub fast float %8170, %8180
  %8195 = fmul fast float %8191, %8191
  %8196 = fmul fast float %8195, %8194
  %8197 = fmul fast float %8196, %8193
  %8198 = fadd fast float %8197, %8180
  br label %8199

; <label>:8199                                    ; preds = %8181, %8179
  %8200 = phi float [ %8198, %8181 ], [ %8180, %8179 ]
  %8201 = call float @dx.op.binary.f32(i32 35, float %8170, float %8200)  ; FMax(a,b)
  %8202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.i32 %8202, 2
  %8204 = and i32 %8203, 1
  %8205 = icmp eq i32 %8204, 0
  %8206 = fcmp fast une float %8201, 1.000000e+00
  %8207 = and i1 %8206, %8205
  br i1 %8207, label %8208, label %8227

; <label>:8208                                    ; preds = %8199
  %8209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7888, float %7889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8210 = extractvalue %dx.types.ResRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.ResRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.ResRet.f32 %8209, 2
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8215 = fmul fast float %8214, %8210
  %8216 = fmul fast float %8214, %8211
  %8217 = fmul fast float %8214, %8212
  %8218 = fcmp fast ogt float %8170, 0x3FEFFF2E40000000
  %8219 = fsub fast float 1.000000e+00, %8201
  %8220 = fsub fast float 1.000000e+00, %8170
  %8221 = fdiv fast float %8219, %8220
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = select i1 %8218, float 0.000000e+00, float %8222
  %8224 = fmul fast float %8215, %8223
  %8225 = fmul fast float %8216, %8223
  %8226 = fmul fast float %8217, %8223
  br label %8227

; <label>:8227                                    ; preds = %8208, %8199
  %8228 = phi float [ 0.000000e+00, %8199 ], [ %8224, %8208 ]
  %8229 = phi float [ 0.000000e+00, %8199 ], [ %8225, %8208 ]
  %8230 = phi float [ 0.000000e+00, %8199 ], [ %8226, %8208 ]
  %8231 = fmul fast float %8228, %6805
  %8232 = fmul fast float %8229, %6805
  %8233 = fmul fast float %8230, %6805
  %8234 = fmul fast float %8201, %7863
  %8235 = call float @dx.op.dot3.f32(i32 55, float %8201, float %8201, float %8201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8236 = call float @dx.op.dot3.f32(i32 55, float %8231, float %8232, float %8233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8237 = select i1 %220, float %8235, float %8201
  %8238 = select i1 %220, float 1.000000e+00, float %8201
  %8239 = select i1 %220, float %8236, float %8231
  %8240 = select i1 %220, float 0.000000e+00, float %8232
  %8241 = select i1 %220, float 0.000000e+00, float %8233
  %8242 = fmul fast float %8237, %7875
  %8243 = fmul fast float %8237, %7876
  %8244 = fmul fast float %8238, %7877
  %8245 = fadd fast float %8242, %8239
  %8246 = fadd fast float %8243, %8240
  %8247 = fadd fast float %8241, %8244
  %8248 = fmul fast float %8237, %7878
  %8249 = fmul fast float %8237, %7879
  %8250 = fmul fast float %8238, %7880
  br label %8251

; <label>:8251                                    ; preds = %8227, %7884, %7853, %7085
  %8252 = phi float [ %7090, %7085 ], [ %7875, %7853 ], [ %8245, %8227 ], [ %7875, %7884 ]
  %8253 = phi float [ %7091, %7085 ], [ %7876, %7853 ], [ %8246, %8227 ], [ %7876, %7884 ]
  %8254 = phi float [ %7092, %7085 ], [ %7877, %7853 ], [ %8247, %8227 ], [ %7877, %7884 ]
  %8255 = phi float [ %7093, %7085 ], [ %7878, %7853 ], [ %8248, %8227 ], [ %7878, %7884 ]
  %8256 = phi float [ %7094, %7085 ], [ %7879, %7853 ], [ %8249, %8227 ], [ %7879, %7884 ]
  %8257 = phi float [ %7095, %7085 ], [ %7880, %7853 ], [ %8250, %8227 ], [ %7880, %7884 ]
  %8258 = phi float [ %7096, %7085 ], [ %7863, %7853 ], [ %8234, %8227 ], [ %7863, %7884 ]
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 2
  %8261 = extractvalue %dx.types.CBufRet.f32 %8259, 3
  %8262 = fmul fast float %8260, %95
  %8263 = fmul fast float %8261, %96
  %8264 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8265 = call float @dx.op.unary.f32(i32 7, float %8263)  ; Saturate(value)
  %8266 = select i1 %6827, i32 2, i32 0
  %8267 = or i32 %8266, 1
  %8268 = uitofp i32 %8267 to float
  %8269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8264, float %8265, float %8268, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8270 = extractvalue %dx.types.ResRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.ResRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.ResRet.f32 %8269, 2
  %8273 = extractvalue %dx.types.ResRet.f32 %8269, 3
  %8274 = add nuw nsw i32 %8266, 2
  %8275 = uitofp i32 %8274 to float
  %8276 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8264, float %8265, float %8275, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8277 = extractvalue %dx.types.ResRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.ResRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.ResRet.f32 %8276, 2
  %8280 = extractvalue %dx.types.ResRet.f32 %8276, 3
  %8281 = call float @dx.op.binary.f32(i32 35, float %8271, float %8272)  ; FMax(a,b)
  %8282 = call float @dx.op.binary.f32(i32 35, float %8270, float %8281)  ; FMax(a,b)
  %8283 = call float @dx.op.binary.f32(i32 35, float %8282, float %8273)  ; FMax(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8278, float %8279)  ; FMin(a,b)
  %8285 = call float @dx.op.binary.f32(i32 36, float %8277, float %8284)  ; FMin(a,b)
  %8286 = call float @dx.op.binary.f32(i32 36, float %8285, float %8280)  ; FMin(a,b)
  %8287 = fmul fast float %8283, 2.550000e+02
  %8288 = fadd fast float %8287, 0x3F70101020000000
  %8289 = fptoui float %8288 to i32
  %8290 = fmul fast float %8286, 2.550000e+02
  %8291 = fadd fast float %8290, 0x3F70101020000000
  %8292 = fptoui float %8291 to i32
  %8293 = icmp ult i32 %8289, %8292
  br i1 %8293, label %8294, label %8463

; <label>:8294                                    ; preds = %8251
  %8295 = fcmp fast ogt float %85, 9.843750e-01
  %8296 = fadd fast float %7089, -4.000000e+00
  %8297 = select i1 %8295, float -4.000000e+00, float %8296
  %8298 = call float @dx.op.binary.f32(i32 35, float %8297, float 0.000000e+00)  ; FMax(a,b)
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = fadd fast float %8300, %8298
  %8302 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8303 = fmul fast float %8301, %8302
  %8304 = call float @dx.op.unary.f32(i32 23, float %8303)  ; Log(value)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8299, 3
  %8306 = fmul fast float %8305, %8304
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %8309 = fmul fast float %8306, %8308
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = uitofp i32 %8289 to float
  %8312 = uitofp i32 %8292 to float
  %8313 = fadd fast float %8311, 5.000000e-01
  %8314 = fadd fast float %8312, 5.000000e-01
  %8315 = fmul fast float %8308, %8313
  %8316 = fmul fast float %8308, %8314
  %8317 = fadd fast float %8315, 0x3F0FFB4800000000
  %8318 = fadd fast float %8316, 0xBF0FFB4800000000
  %8319 = call float @dx.op.binary.f32(i32 35, float %8310, float %8317)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8319, float %8318)  ; FMin(a,b)
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8321, 0
  %8325 = select i1 %6827, float %8324, float 0.000000e+00
  %8326 = fmul fast float %8322, %8320
  %8327 = fadd fast float %8325, %8326
  %8328 = fadd fast float %8325, %8323
  %8329 = fsub fast float %8322, %8323
  %8330 = fadd fast float %8329, %8325
  %8331 = call float @dx.op.binary.f32(i32 35, float %8327, float %8328)  ; FMax(a,b)
  %8332 = call float @dx.op.binary.f32(i32 36, float %8331, float %8330)  ; FMin(a,b)
  %8333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8264, float %8265, float %8332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.i32 %8337, 0
  %8339 = extractvalue %dx.types.CBufRet.i32 %8337, 1
  %8340 = uitofp i32 %8338 to float
  %8341 = uitofp i32 %8339 to float
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.CBufRet.f32 %8342, 1
  %8345 = fmul fast float %8340, %8264
  %8346 = fmul fast float %8341, %8265
  %8347 = fadd fast float %8345, -5.000000e-01
  %8348 = fadd fast float %8346, -5.000000e-01
  %8349 = call float @dx.op.unary.f32(i32 22, float %8347)  ; Frc(value)
  %8350 = call float @dx.op.unary.f32(i32 22, float %8348)  ; Frc(value)
  %8351 = fmul fast float %8349, %8349
  %8352 = fmul fast float %8351, %8349
  %8353 = fsub fast float 3.000000e+00, %8349
  %8354 = fmul fast float %8351, %8353
  %8355 = fmul fast float %8349, 3.000000e+00
  %8356 = fmul fast float %8352, 3.000000e+00
  %8357 = fmul fast float %8351, 6.000000e+00
  %8358 = fsub fast float %8356, %8357
  %8359 = fadd fast float %8358, 4.000000e+00
  %8360 = fmul fast float %8359, 0x3FC5555560000000
  %8361 = fmul fast float %8352, -3.000000e+00
  %8362 = fadd fast float %8351, %8349
  %8363 = fmul fast float %8362, 3.000000e+00
  %8364 = fadd fast float %8361, 1.000000e+00
  %8365 = fadd fast float %8364, %8363
  %8366 = fmul fast float %8352, 0x3FC5555560000000
  %8367 = fmul fast float %8350, %8350
  %8368 = fmul fast float %8367, %8350
  %8369 = fsub fast float 3.000000e+00, %8350
  %8370 = fmul fast float %8367, %8369
  %8371 = fmul fast float %8350, 3.000000e+00
  %8372 = fmul fast float %8368, 3.000000e+00
  %8373 = fmul fast float %8367, 6.000000e+00
  %8374 = fsub fast float %8372, %8373
  %8375 = fadd fast float %8374, 4.000000e+00
  %8376 = fmul fast float %8375, 0x3FC5555560000000
  %8377 = fmul fast float %8368, -3.000000e+00
  %8378 = fadd fast float %8367, %8350
  %8379 = fmul fast float %8378, 3.000000e+00
  %8380 = fadd fast float %8377, 1.000000e+00
  %8381 = fadd fast float %8380, %8379
  %8382 = fmul fast float %8368, 0x3FC5555560000000
  %8383 = fadd fast float %8349, 1.000000e+00
  %8384 = fsub fast float 1.000000e+00, %8355
  %8385 = fadd fast float %8384, %8354
  %8386 = fadd fast float %8385, %8359
  %8387 = fmul fast float %8386, 0x3FC5555560000000
  %8388 = fdiv fast float %8360, %8387
  %8389 = fsub fast float %8383, %8388
  %8390 = fsub fast float 1.000000e+00, %8349
  %8391 = fadd fast float %8365, %8352
  %8392 = fmul fast float %8391, 0x3FC5555560000000
  %8393 = fdiv fast float %8366, %8392
  %8394 = fadd fast float %8390, %8393
  %8395 = fadd fast float %8350, 1.000000e+00
  %8396 = fsub fast float 1.000000e+00, %8371
  %8397 = fadd fast float %8396, %8370
  %8398 = fadd fast float %8397, %8375
  %8399 = fmul fast float %8398, 0x3FC5555560000000
  %8400 = fdiv fast float %8376, %8399
  %8401 = fsub fast float %8395, %8400
  %8402 = fsub fast float 1.000000e+00, %8350
  %8403 = fadd fast float %8381, %8368
  %8404 = fmul fast float %8403, 0x3FC5555560000000
  %8405 = fdiv fast float %8382, %8404
  %8406 = fadd fast float %8405, %8402
  %8407 = fmul fast float %8389, %8343
  %8408 = fsub fast float %8264, %8407
  %8409 = fmul fast float %8394, %8343
  %8410 = fadd fast float %8409, %8264
  %8411 = fmul fast float %8406, %8344
  %8412 = fadd fast float %8411, %8265
  %8413 = fmul fast float %8401, %8344
  %8414 = fsub fast float %8265, %8413
  %8415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8408, float %8414, float %8332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8410, float %8414, float %8332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8408, float %8412, float %8332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8424 = extractvalue %dx.types.ResRet.f32 %8423, 0
  %8425 = extractvalue %dx.types.ResRet.f32 %8423, 1
  %8426 = extractvalue %dx.types.ResRet.f32 %8423, 2
  %8427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8410, float %8412, float %8332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8428 = extractvalue %dx.types.ResRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.ResRet.f32 %8427, 1
  %8430 = extractvalue %dx.types.ResRet.f32 %8427, 2
  %8431 = fsub fast float %8424, %8416
  %8432 = fsub fast float %8425, %8417
  %8433 = fsub fast float %8426, %8418
  %8434 = fmul fast float %8431, %8404
  %8435 = fmul fast float %8432, %8404
  %8436 = fmul fast float %8433, %8404
  %8437 = fadd fast float %8434, %8416
  %8438 = fadd fast float %8435, %8417
  %8439 = fadd fast float %8436, %8418
  %8440 = fsub fast float %8428, %8420
  %8441 = fsub fast float %8429, %8421
  %8442 = fsub fast float %8430, %8422
  %8443 = fmul fast float %8440, %8404
  %8444 = fmul fast float %8441, %8404
  %8445 = fmul fast float %8442, %8404
  %8446 = fsub fast float %8420, %8437
  %8447 = fadd fast float %8446, %8443
  %8448 = fsub fast float %8421, %8438
  %8449 = fadd fast float %8448, %8444
  %8450 = fsub fast float %8422, %8439
  %8451 = fadd fast float %8450, %8445
  %8452 = fmul fast float %8447, %8392
  %8453 = fmul fast float %8449, %8392
  %8454 = fmul fast float %8451, %8392
  %8455 = fadd fast float %8452, %8437
  %8456 = fadd fast float %8453, %8438
  %8457 = fadd fast float %8454, %8439
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8460 = fmul fast float %8455, %8459
  %8461 = fmul fast float %8456, %8459
  %8462 = fmul fast float %8457, %8459
  br label %8463

; <label>:8463                                    ; preds = %8294, %8251
  %8464 = phi float [ %8334, %8294 ], [ 1.000000e+00, %8251 ]
  %8465 = phi float [ %8335, %8294 ], [ 1.000000e+00, %8251 ]
  %8466 = phi float [ %8336, %8294 ], [ 1.000000e+00, %8251 ]
  %8467 = phi float [ %8460, %8294 ], [ 0.000000e+00, %8251 ]
  %8468 = phi float [ %8461, %8294 ], [ 0.000000e+00, %8251 ]
  %8469 = phi float [ %8462, %8294 ], [ 0.000000e+00, %8251 ]
  %8470 = fmul fast float %8467, %6805
  %8471 = fmul fast float %8468, %6805
  %8472 = fmul fast float %8469, %6805
  %8473 = fmul fast float %8464, %8258
  %8474 = call float @dx.op.dot3.f32(i32 55, float %8464, float %8465, float %8466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8475 = call float @dx.op.dot3.f32(i32 55, float %8470, float %8471, float %8472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8476 = select i1 %220, float %8474, float %8464
  %8477 = select i1 %220, float %8474, float %8465
  %8478 = select i1 %220, float 1.000000e+00, float %8466
  %8479 = select i1 %220, float %8475, float %8470
  %8480 = select i1 %220, float 0.000000e+00, float %8471
  %8481 = select i1 %220, float 0.000000e+00, float %8472
  %8482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.i32 %8482, 3
  %8484 = and i32 %8483, 3
  %8485 = icmp ne i32 %8484, 0
  %8486 = and i32 %8483, 4
  %8487 = icmp ne i32 %8486, 0
  %8488 = and i1 %8485, %8487
  %8489 = and i1 %220, %8488
  br i1 %8489, label %8490, label %8496

; <label>:8490                                    ; preds = %8463
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8493 = fadd fast float %8473, -1.000000e+00
  %8494 = fmul fast float %8492, %8493
  %8495 = fadd fast float %8494, 1.000000e+00
  br label %8496

; <label>:8496                                    ; preds = %8490, %8463
  %8497 = phi float [ %8495, %8490 ], [ %8473, %8463 ]
  %8498 = fadd fast float %8255, %8252
  %8499 = fmul fast float %8476, %8498
  %8500 = fadd fast float %8499, %8479
  %8501 = fadd fast float %8256, %8253
  %8502 = fmul fast float %8477, %8501
  %8503 = fadd fast float %8502, %8480
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  br i1 %220, label %8506, label %8529

; <label>:8506                                    ; preds = %8496
  %8507 = fadd fast float %8500, %8503
  %8508 = fmul fast float %8505, %8507
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 3
  %8511 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %8512 = fsub fast float %6814, %6808
  %8513 = fadd fast float %8512, %6815
  %8514 = fsub fast float %8513, %8511
  %8515 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %8516 = fmul fast float %8514, %8515
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = fsub fast float %8517, %8510
  %8519 = fmul fast float %8518, %8497
  %8520 = fadd fast float %8519, %8510
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 0
  %8523 = fsub fast float %8520, %8522
  %8524 = fmul fast float %8523, 1.000000e+01
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fmul fast float %8525, %6804
  %8527 = fadd fast float %8526, %6805
  %8528 = fmul fast float %8527, %8520
  br label %8553

; <label>:8529                                    ; preds = %8496
  %8530 = fadd fast float %8257, %8254
  %8531 = fmul fast float %8478, %8530
  %8532 = fadd fast float %8531, %8481
  %8533 = fmul fast float %8505, %8500
  %8534 = fmul fast float %8505, %8503
  %8535 = fmul fast float %8505, %8532
  %8536 = call float @dx.op.binary.f32(i32 35, float %8534, float %8535)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float %8533, float %8536)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 35, float %8537, float %6805)  ; FMax(a,b)
  %8539 = fcmp fast ugt float %8538, 0x3F10000000000000
  br i1 %8539, label %8541, label %8540

; <label>:8540                                    ; preds = %8529
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8541

; <label>:8541                                    ; preds = %8540, %8529
  %8542 = add i32 %54, 356
  %8543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8542, i32 undef)  ; BufferLoad(srv,index,wot)
  %8544 = extractvalue %dx.types.ResRet.i32 %8543, 0
  %8545 = and i32 %8544, 32
  %8546 = icmp eq i32 %8545, 0
  br i1 %8546, label %8553, label %8547

; <label>:8547                                    ; preds = %8541
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8550 = fmul fast float %8549, 0x3FE99999A0000000
  %8551 = fadd fast float %8549, %8533
  %8552 = fadd fast float %8550, %8535
  br label %8553

; <label>:8553                                    ; preds = %8547, %8541, %8506
  %8554 = phi float [ %8508, %8506 ], [ %8551, %8547 ], [ %8533, %8541 ]
  %8555 = phi float [ %8528, %8506 ], [ %8534, %8547 ], [ %8534, %8541 ]
  %8556 = phi float [ %8527, %8506 ], [ %8552, %8547 ], [ %8535, %8541 ]
  %8557 = phi float [ %8527, %8506 ], [ %6805, %8547 ], [ %6805, %8541 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8558 = call float @dx.op.binary.f32(i32 36, float %8554, float 3.225500e+04)  ; FMin(a,b)
  %8559 = call float @dx.op.binary.f32(i32 36, float %8555, float 3.225500e+04)  ; FMin(a,b)
  %8560 = call float @dx.op.binary.f32(i32 36, float %8556, float 3.225500e+04)  ; FMin(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8557, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8558)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8559)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8560)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

