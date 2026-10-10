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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 800af37e207bda6e6ceacdc27aefd8ba
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
; SV_Target                1                              
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %446 = add i32 %54, 536
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
  br i1 %502, label %1236, label %503

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
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 1024
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1173, label %1143

; <label>:1143                                    ; preds = %1135
  %1144 = add i32 %54, 152
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = lshr i32 %1146, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1146, 16
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = fmul fast float %1149, %1149
  %1159 = fmul fast float %1153, %1153
  %1160 = fmul fast float %1157, %1157
  %1161 = add i32 %54, 504
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %1163, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1165, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = fmul fast float %1158, %1167
  %1171 = fmul fast float %1159, %1168
  %1172 = fmul fast float %1160, %1169
  br label %1173

; <label>:1173                                    ; preds = %1143, %1135
  %1174 = phi float [ %1170, %1143 ], [ 0.000000e+00, %1135 ]
  %1175 = phi float [ %1171, %1143 ], [ 0.000000e+00, %1135 ]
  %1176 = phi float [ %1172, %1143 ], [ 0.000000e+00, %1135 ]
  %1177 = fcmp fast ogt float %1174, 0.000000e+00
  %1178 = fcmp fast ogt float %1175, 0.000000e+00
  %1179 = fcmp fast ogt float %1176, 0.000000e+00
  %1180 = call float @dx.op.unary.f32(i32 23, float %1174)  ; Log(value)
  %1181 = call float @dx.op.unary.f32(i32 23, float %1175)  ; Log(value)
  %1182 = call float @dx.op.unary.f32(i32 23, float %1176)  ; Log(value)
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 7
  %1186 = and i32 %1185, 32752
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = fmul fast float %1180, 0xBFE62E4300000000
  %1189 = fmul fast float %1188, %1187
  %1190 = fmul fast float %1181, 0xBFE62E4300000000
  %1191 = fmul fast float %1190, %1187
  %1192 = fmul fast float %1182, 0xBFE62E4300000000
  %1193 = fmul fast float %1192, %1187
  %1194 = select i1 %1177, float %1189, float 1.270000e+02
  %1195 = select i1 %1178, float %1191, float 1.270000e+02
  %1196 = select i1 %1179, float %1193, float 1.270000e+02
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 10240
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1221, label %1201

; <label>:1201                                    ; preds = %1173
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 2048
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1221, label %1206

; <label>:1206                                    ; preds = %1201
  %1207 = add i32 %54, 520
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = add i32 %1209, 0
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1211, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 3
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = shl i32 %1215, 4
  %1217 = and i32 %1216, 32752
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = fmul fast float %1218, %1213
  %1220 = call float @dx.op.binary.f32(i32 35, float %1219, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1221

; <label>:1221                                    ; preds = %1206, %1201, %1173
  %1222 = phi float [ %1220, %1206 ], [ 0x3F70101020000000, %1201 ], [ 0x3F70101020000000, %1173 ]
  %1223 = add i32 %54, 96
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = lshr i32 %1225, 8
  %1229 = and i32 %1228, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = fmul fast float %1230, %1231
  %1233 = fadd fast float %1232, %1227
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  br label %1236

; <label>:1236                                    ; preds = %1221, %488
  %1237 = phi float [ 0.000000e+00, %488 ], [ %1089, %1221 ]
  %1238 = phi float [ 0.000000e+00, %488 ], [ %1090, %1221 ]
  %1239 = phi float [ 0.000000e+00, %488 ], [ %1008, %1221 ]
  %1240 = phi float [ 0.000000e+00, %488 ], [ %1009, %1221 ]
  %1241 = phi float [ 0.000000e+00, %488 ], [ %1010, %1221 ]
  %1242 = phi float [ 0.000000e+00, %488 ], [ %1136, %1221 ]
  %1243 = phi float [ 0.000000e+00, %488 ], [ %1137, %1221 ]
  %1244 = phi float [ 0.000000e+00, %488 ], [ %1138, %1221 ]
  %1245 = phi float [ 0.000000e+00, %488 ], [ %1194, %1221 ]
  %1246 = phi float [ 0.000000e+00, %488 ], [ %1195, %1221 ]
  %1247 = phi float [ 0.000000e+00, %488 ], [ %1196, %1221 ]
  %1248 = phi float [ 0.000000e+00, %488 ], [ %994, %1221 ]
  %1249 = phi float [ 0.000000e+00, %488 ], [ %790, %1221 ]
  %1250 = phi float [ 0.000000e+00, %488 ], [ %1088, %1221 ]
  %1251 = phi float [ 0.000000e+00, %488 ], [ %1091, %1221 ]
  %1252 = phi float [ 0.000000e+00, %488 ], [ %1222, %1221 ]
  %1253 = phi float [ 0.000000e+00, %488 ], [ %1235, %1221 ]
  br i1 %436, label %2240, label %1254

; <label>:1254                                    ; preds = %1236
  %1255 = icmp ult i32 %494, 2
  %1256 = add i32 %54, 40
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = add i32 %54, 44
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = or i32 %1261, %1258
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %2240, label %1264

; <label>:1264                                    ; preds = %1254
  %1265 = and i32 %1258, 262144
  %1266 = icmp ne i32 %1265, 0
  %1267 = select i1 %1266, float %57, float 1.000000e+00
  %1268 = select i1 %1266, float %58, float 0.000000e+00
  %1269 = select i1 %1266, float %59, float 0.000000e+00
  %1270 = select i1 %1266, float %60, float 1.000000e+00
  %1271 = select i1 %1266, float %61, float %77
  %1272 = select i1 %1266, float %62, float %78
  %1273 = add i32 %54, 300
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1277, 0x3F50624DE0000000
  %1279 = add i32 %54, 104
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 16
  %1283 = and i32 %1282, 255
  %1284 = lshr i32 %1281, 24
  %1285 = add i32 %54, 308
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = lshr i32 %1287, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = add i32 %54, 48
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 22
  %1296 = shl nuw nsw i32 %1295, 5
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = shl i32 %1294, 4
  %1299 = and i32 %1298, 32752
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1294, 7
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = fmul fast float %1305, 1.000000e+03
  %1307 = fmul fast float %346, %1306
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = fadd fast float %1308, %336
  %1310 = fmul fast float %347, %1306
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = fadd fast float %1311, %338
  %1313 = fmul fast float %1278, %1306
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fmul fast float %1314, 0x401921FB60000000
  %1316 = fadd fast float %1315, %1297
  %1317 = call float @dx.op.unary.f32(i32 13, float %1316)  ; Sin(value)
  %1318 = call float @dx.op.unary.f32(i32 12, float %1316)  ; Cos(value)
  %1319 = fsub fast float -0.000000e+00, %1317
  %1320 = fadd fast float %1271, -5.000000e-01
  %1321 = fadd fast float %1272, -5.000000e-01
  %1322 = fmul fast float %1289, %1320
  %1323 = fmul fast float %1291, %1321
  %1324 = fadd fast float %1322, 5.000000e-01
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fmul fast float %1300, %1324
  %1327 = fmul fast float %1303, %1325
  %1328 = fmul fast float %1318, %1326
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1327, float %1328)  ; FMad(a,b,c)
  %1330 = fmul fast float %1317, %1326
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1327, float %1330)  ; FMad(a,b,c)
  %1332 = fadd fast float %1309, %1329
  %1333 = fadd fast float %1312, %1331
  %1334 = icmp ugt i32 %1283, 1
  %1335 = icmp ugt i32 %1281, 33554431
  %1336 = or i1 %1335, %1334
  br i1 %1336, label %1337, label %1362

; <label>:1337                                    ; preds = %1264
  %1338 = add i32 %54, 244
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = lshr i32 %1340, 16
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = fmul fast float %1305, %1342
  %1344 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1345 = mul nuw nsw i32 %1283, %1284
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1344, %1346
  %1348 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1349 = fptoui float %1348 to i32
  %1350 = urem i32 %1349, %1283
  %1351 = udiv i32 %1349, %1284
  %1352 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1353 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1354 = uitofp i32 %1350 to float
  %1355 = uitofp i32 %1351 to float
  %1356 = fadd fast float %1352, %1354
  %1357 = fadd fast float %1353, %1355
  %1358 = uitofp i32 %1283 to float
  %1359 = uitofp i32 %1284 to float
  %1360 = fdiv fast float %1356, %1358
  %1361 = fdiv fast float %1357, %1359
  br label %1362

; <label>:1362                                    ; preds = %1337, %1264
  %1363 = phi float [ %1360, %1337 ], [ %1332, %1264 ]
  %1364 = phi float [ %1361, %1337 ], [ %1333, %1264 ]
  %1365 = and i32 %1258, 16777216
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1476, label %1367

; <label>:1367                                    ; preds = %1362
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1372 = fadd fast float %1369, %158
  %1373 = fadd fast float %1370, %159
  %1374 = fadd fast float %1371, %160
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = icmp eq i32 %55, 65535
  br i1 %1378, label %1473, label %1379

; <label>:1379                                    ; preds = %1367
  %1380 = lshr i32 %55, 1
  %1381 = shl i32 %1380, 2
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %55, 1
  %1385 = icmp ne i32 %1384, 0
  %1386 = lshr i32 %1383, 16
  %1387 = and i32 %1383, 65535
  %1388 = select i1 %1385, i32 %1386, i32 %1387
  %1389 = icmp eq i32 %1388, 65535
  br i1 %1389, label %1469, label %1390

; <label>:1390                                    ; preds = %1379
  %1391 = mul nuw nsw i32 %1388, 40
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1391, 12
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1391, 24
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = add nuw nsw i32 %1391, 36
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = fsub fast float %1372, %1393
  %1410 = fsub fast float %1373, %1394
  %1411 = fsub fast float %1374, %1395
  %1412 = fmul fast float %1408, %1409
  %1413 = fmul fast float %1408, %1410
  %1414 = fmul fast float %1408, %1411
  %1415 = call float @dx.op.unary.f32(i32 27, float %1412)  ; Round_ni(value)
  %1416 = call float @dx.op.unary.f32(i32 27, float %1413)  ; Round_ni(value)
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = fadd fast float %1415, 5.000000e-01
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fmul fast float %1418, %1398
  %1422 = fmul fast float %1419, %1399
  %1423 = fmul fast float %1420, %1400
  %1424 = shl i32 %55, 2
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1430 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1428, %dx.types.Handle %49, float %1429, float %1430, float %1431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = fmul fast float %1433, 1.023000e+03
  %1437 = fmul fast float %1434, 1.023000e+03
  %1438 = fmul fast float %1435, 1.023000e+03
  %1439 = fadd fast float %1436, 5.000000e-01
  %1440 = fadd fast float %1437, 5.000000e-01
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = fsub fast float %1412, %1415
  %1446 = fsub fast float %1413, %1416
  %1447 = fsub fast float %1414, %1417
  %1448 = fmul fast float %1445, 7.500000e-01
  %1449 = fmul fast float %1446, 7.500000e-01
  %1450 = fmul fast float %1447, 7.500000e-01
  %1451 = fadd fast float %1415, 1.250000e-01
  %1452 = fadd fast float %1451, %1448
  %1453 = fadd fast float %1452, %1442
  %1454 = fadd fast float %1416, 1.250000e-01
  %1455 = fadd fast float %1454, %1449
  %1456 = fadd fast float %1455, %1443
  %1457 = fadd fast float %1417, 1.250000e-01
  %1458 = fadd fast float %1457, %1450
  %1459 = fadd fast float %1458, %1444
  %1460 = fmul fast float %1453, %1403
  %1461 = fmul fast float %1456, %1404
  %1462 = fmul fast float %1459, %1405
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1466, %dx.types.Handle %47, float %1460, float %1461, float %1462, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  br label %1469

; <label>:1469                                    ; preds = %1390, %1379
  %1470 = phi float [ %1468, %1390 ], [ -1.000000e+00, %1379 ]
  %1471 = fadd fast float %1470, %1377
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  br label %1473

; <label>:1473                                    ; preds = %1469, %1367
  %1474 = phi float [ %1472, %1469 ], [ %1377, %1367 ]
  %1475 = fmul fast float %1474, %491
  br label %1476

; <label>:1476                                    ; preds = %1473, %1362
  %1477 = phi float [ %1475, %1473 ], [ %491, %1362 ]
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 256
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1528, label %1482

; <label>:1482                                    ; preds = %1476
  %1483 = add i32 %54, 476
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %1485, 0
  %1487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1487, %dx.types.Handle %92, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = add i32 %54, 116
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = shl i32 %1492, 4
  %1494 = and i32 %1493, 32752
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %1492, 7
  %1497 = and i32 %1496, 32752
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = fsub fast float 1.000000e+00, %1477
  %1500 = call float @dx.op.binary.f32(i32 35, float %1499, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1501 = bitcast float %1477 to i32
  %1502 = sitofp i32 %1501 to float
  %1503 = fadd fast float %1502, 0xC1CFBF8940000000
  %1504 = fmul fast float %1498, %1503
  %1505 = fadd fast float %1504, 0x41CFBF8940000000
  %1506 = fptosi float %1505 to i32
  %1507 = bitcast i32 %1506 to float
  %1508 = bitcast float %1500 to i32
  %1509 = sitofp i32 %1508 to float
  %1510 = fadd fast float %1509, 0xC1CFBF8940000000
  %1511 = fmul fast float %1510, %1498
  %1512 = fadd fast float %1511, 0x41CFBF8940000000
  %1513 = fptosi float %1512 to i32
  %1514 = bitcast i32 %1513 to float
  %1515 = fmul fast float %1507, %1495
  %1516 = fmul fast float %1514, %1495
  %1517 = fsub fast float %1500, %1515
  %1518 = fadd fast float %1516, %1500
  %1519 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = fsub fast float %1489, %1519
  %1522 = fsub fast float %1520, %1519
  %1523 = bitcast float %1522 to i32
  %1524 = sub nsw i32 2129859010, %1523
  %1525 = bitcast i32 %1524 to float
  %1526 = fmul fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1482, %1476
  %1529 = phi float [ %1527, %1482 ], [ %1477, %1476 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 128
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

; <label>:1534                                    ; preds = %1528
  %1535 = add i32 %54, 460
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1539, %dx.types.Handle %92, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 524288
  %1545 = icmp ne i32 %1544, 0
  %1546 = fcmp fast ogt float %1541, 0x3FE0101020000000
  %1547 = select i1 %1546, float 1.000000e+00, float 0.000000e+00
  %1548 = select i1 %1545, float %1547, float %1541
  %1549 = fmul fast float %1548, %1529
  br label %1550

; <label>:1550                                    ; preds = %1534, %1528
  %1551 = phi float [ %1549, %1534 ], [ %1529, %1528 ]
  %1552 = fcmp fast ult float %1551, 0x3F70101020000000
  br i1 %1552, label %2240, label %1553

; <label>:1553                                    ; preds = %1550
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 16
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1756, label %1558

; <label>:1558                                    ; preds = %1553
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %54, 412
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %91, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = and i32 %1560, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = lshr i32 %1560, 8
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1570, %1572
  %1577 = fadd fast float %1576, %1575
  %1578 = fmul fast float %1577, 0x3F70101000000000
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 512
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1591, label %1583

; <label>:1583                                    ; preds = %1558
  %1584 = add i32 %54, 492
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %92, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  br label %1591

; <label>:1591                                    ; preds = %1583, %1558
  %1592 = phi float [ %1590, %1583 ], [ 1.000000e+00, %1558 ]
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 33554432
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1703, label %1597

; <label>:1597                                    ; preds = %1591
  %1598 = add i32 %54, 240
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 65535
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = lshr i32 %1600, 16
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = add i32 %54, 244
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 65535
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 24
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = and i32 %1611, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1611, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1611, 16
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = add i32 %54, 236
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = lshr i32 %1628, 24
  %1630 = uitofp i32 %1629 to float
  %1631 = fmul fast float %1630, 0x3F70101020000000
  %1632 = and i32 %1628, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = lshr i32 %1628, 8
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = lshr i32 %1628, 16
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = bitcast float %1567 to i32
  %1644 = ashr i32 %1643, 1
  %1645 = sub nsw i32 1597463174, %1644
  %1646 = bitcast i32 %1645 to float
  %1647 = fmul fast float %1567, 5.000000e-01
  %1648 = fmul fast float %1646, %1646
  %1649 = fmul fast float %1648, %1647
  %1650 = fsub fast float 1.500000e+00, %1649
  %1651 = fmul fast float %1646, %1567
  %1652 = fmul fast float %1651, %1650
  %1653 = bitcast float %1568 to i32
  %1654 = ashr i32 %1653, 1
  %1655 = sub nsw i32 1597463174, %1654
  %1656 = bitcast i32 %1655 to float
  %1657 = fmul fast float %1568, 5.000000e-01
  %1658 = fmul fast float %1656, %1656
  %1659 = fmul fast float %1658, %1657
  %1660 = fsub fast float 1.500000e+00, %1659
  %1661 = fmul fast float %1656, %1568
  %1662 = fmul fast float %1661, %1660
  %1663 = bitcast float %1569 to i32
  %1664 = ashr i32 %1663, 1
  %1665 = sub nsw i32 1597463174, %1664
  %1666 = bitcast i32 %1665 to float
  %1667 = fmul fast float %1569, 5.000000e-01
  %1668 = fmul fast float %1666, %1666
  %1669 = fmul fast float %1668, %1667
  %1670 = fsub fast float 1.500000e+00, %1669
  %1671 = fmul fast float %1666, %1569
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float %1652, %1634
  %1674 = fsub fast float %1662, %1638
  %1675 = fsub fast float %1672, %1642
  %1676 = fmul fast float %1673, %1602
  %1677 = fmul fast float %1674, %1604
  %1678 = fmul fast float %1675, %1609
  %1679 = fadd fast float %1676, %1617
  %1680 = fadd fast float %1677, %1621
  %1681 = fadd fast float %1678, %1625
  %1682 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = fmul fast float %1682, %1682
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fsub fast float %1685, %1567
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fmul fast float %1688, %1592
  %1692 = fmul fast float %1689, %1592
  %1693 = fmul fast float %1690, %1592
  %1694 = fadd fast float %1691, %1567
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1614, %1578
  %1698 = fsub fast float %1697, %1631
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float %1699, %1578
  %1701 = fmul fast float %1700, %1592
  %1702 = fadd fast float %1701, %1578
  br label %1756

; <label>:1703                                    ; preds = %1591
  %1704 = and i32 %1594, 134217728
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1740, label %1706

; <label>:1706                                    ; preds = %1703
  %1707 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fmul fast float %1710, %1592
  %1714 = fmul fast float %1711, %1592
  %1715 = fmul fast float %1712, %1592
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = fmul fast float %1716, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1719
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1719
  %1727 = fmul fast float %1717, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1720
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1720
  %1732 = fmul fast float %1718, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1721
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1721
  %1737 = fmul fast float %1726, %1726
  %1738 = fmul fast float %1731, %1731
  %1739 = fmul fast float %1736, %1736
  br label %1756

; <label>:1740                                    ; preds = %1703
  %1741 = fmul fast float %323, %323
  %1742 = fmul fast float %327, %327
  %1743 = fmul fast float %331, %331
  %1744 = fadd fast float %1741, -1.000000e+00
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fmul fast float %1592, %1744
  %1748 = fmul fast float %1592, %1745
  %1749 = fmul fast float %1592, %1746
  %1750 = fadd fast float %1747, 1.000000e+00
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fmul fast float %1750, %1567
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  br label %1756

; <label>:1756                                    ; preds = %1740, %1706, %1597, %1553
  %1757 = phi float [ %1702, %1597 ], [ %1578, %1706 ], [ %1578, %1740 ], [ 0x3FA23C0BE0000000, %1553 ]
  %1758 = phi float [ %1694, %1597 ], [ %1737, %1706 ], [ %1753, %1740 ], [ 1.000000e+00, %1553 ]
  %1759 = phi float [ %1695, %1597 ], [ %1738, %1706 ], [ %1754, %1740 ], [ 1.000000e+00, %1553 ]
  %1760 = phi float [ %1696, %1597 ], [ %1739, %1706 ], [ %1755, %1740 ], [ 1.000000e+00, %1553 ]
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 1
  %1763 = and i32 %1762, 1
  %1764 = icmp ne i32 %1763, 0
  %1765 = add i32 %54, 356
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 32
  %1769 = icmp ne i32 %1768, 0
  %1770 = and i1 %1764, %1769
  %1771 = select i1 %1770, float 1.000000e+00, float %1758
  %1772 = select i1 %1770, float 0x3FD3333340000000, float %1759
  %1773 = select i1 %1770, float 0x3FD3333340000000, float %1760
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 32
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1850, label %1778

; <label>:1778                                    ; preds = %1756
  %1779 = add i32 %54, 108
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %54, 428
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %1784, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1786, %dx.types.Handle %91, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1792 = and i32 %1781, 255
  %1793 = uitofp i32 %1792 to float
  %1794 = lshr i32 %1781, 8
  %1795 = and i32 %1794, 255
  %1796 = uitofp i32 %1795 to float
  %1797 = lshr i32 %1781, 16
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = fmul fast float %1799, 0x3F70101000000000
  %1801 = fmul fast float %1788, %1793
  %1802 = fadd fast float %1801, %1796
  %1803 = fmul fast float %1802, 0x3F70101000000000
  %1804 = fadd fast float %1789, -5.000000e-01
  %1805 = fadd fast float %1791, -5.000000e-01
  %1806 = fmul fast float %1804, %1800
  %1807 = fmul fast float %1805, %1800
  %1808 = fadd fast float %1806, 5.000000e-01
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fmul fast float %1808, 2.000000e+00
  %1811 = fadd fast float %1810, -1.000000e+00
  %1812 = fmul fast float %1809, 2.000000e+00
  %1813 = fadd fast float %1812, -1.000000e+00
  %1814 = fadd fast float %1811, %1813
  %1815 = fmul fast float %1814, 5.000000e-01
  %1816 = fsub fast float %1811, %1813
  %1817 = fmul fast float %1816, 5.000000e-01
  %1818 = call float @dx.op.unary.f32(i32 6, float %1815)  ; FAbs(value)
  %1819 = fsub fast float 1.000000e+00, %1818
  %1820 = call float @dx.op.unary.f32(i32 6, float %1817)  ; FAbs(value)
  %1821 = fsub fast float %1819, %1820
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1815, float %1817, float %1821, float %1815, float %1817, float %1821)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = call float @dx.op.unary.f32(i32 25, float %1822)  ; Rsqrt(value)
  %1824 = fmul fast float %1815, %1823
  %1825 = fmul fast float %1817, %1823
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 67108864
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1846, label %1830

; <label>:1830                                    ; preds = %1778
  %1831 = add i32 %54, 296
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 65535
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = lshr i32 %1833, 16
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = fsub fast float %1803, %1841
  %1843 = fmul fast float %1842, %1835
  %1844 = fadd fast float %1843, %1839
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  br label %1846

; <label>:1846                                    ; preds = %1830, %1778
  %1847 = phi float [ %1845, %1830 ], [ %1803, %1778 ]
  %1848 = call float @dx.op.dot2.f32(i32 54, float %1824, float %1825, float %1267, float %1268)  ; Dot2(ax,ay,bx,by)
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1824, float %1825, float %1269, float %1270)  ; Dot2(ax,ay,bx,by)
  br label %1850

; <label>:1850                                    ; preds = %1846, %1756
  %1851 = phi float [ %1847, %1846 ], [ 0x3FD6666660000000, %1756 ]
  %1852 = phi float [ %1848, %1846 ], [ 0.000000e+00, %1756 ]
  %1853 = phi float [ %1849, %1846 ], [ 0.000000e+00, %1756 ]
  %1854 = phi float [ %1790, %1846 ], [ 1.000000e+00, %1756 ]
  %1855 = add i32 %54, 176
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 22
  %1859 = shl nuw nsw i32 %1858, 5
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 64
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1898, label %1865

; <label>:1865                                    ; preds = %1850
  %1866 = add i32 %54, 444
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 131072
  %1874 = icmp eq i32 %1873, 0
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %91, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = fmul fast float %1876, %311
  %1880 = fmul fast float %1877, %314
  %1881 = fmul fast float %1878, %317
  br i1 %1874, label %1888, label %1882

; <label>:1882                                    ; preds = %1865
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = fmul fast float %1884, %1879
  %1886 = fmul fast float %1884, %1880
  %1887 = fmul fast float %1884, %1881
  br label %1888

; <label>:1888                                    ; preds = %1882, %1865
  %1889 = phi float [ %1885, %1882 ], [ %1879, %1865 ]
  %1890 = phi float [ %1886, %1882 ], [ %1880, %1865 ]
  %1891 = phi float [ %1887, %1882 ], [ %1881, %1865 ]
  %1892 = fmul fast float %1889, %1860
  %1893 = select i1 %252, float %1892, float %1889
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1890, float %1891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = select i1 %252, float 0.000000e+00, float %1889
  %1896 = select i1 %252, float %1894, float %1890
  %1897 = select i1 %252, float 0.000000e+00, float %1891
  br label %1898

; <label>:1898                                    ; preds = %1888, %1850
  %1899 = phi float [ %1895, %1888 ], [ 0.000000e+00, %1850 ]
  %1900 = phi float [ %1896, %1888 ], [ 0.000000e+00, %1850 ]
  %1901 = phi float [ %1897, %1888 ], [ 0.000000e+00, %1850 ]
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 1024
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1936, label %1906

; <label>:1906                                    ; preds = %1898
  %1907 = add i32 %54, 168
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1909, 8
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = lshr i32 %1909, 16
  %1918 = and i32 %1917, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = fmul fast float %1912, %1912
  %1922 = fmul fast float %1916, %1916
  %1923 = fmul fast float %1920, %1920
  %1924 = add i32 %54, 508
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = add i32 %1926, 0
  %1928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1928, %dx.types.Handle %92, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = fmul fast float %1921, %1930
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  br label %1936

; <label>:1936                                    ; preds = %1906, %1898
  %1937 = phi float [ %1933, %1906 ], [ 0.000000e+00, %1898 ]
  %1938 = phi float [ %1934, %1906 ], [ 0.000000e+00, %1898 ]
  %1939 = phi float [ %1935, %1906 ], [ 0.000000e+00, %1898 ]
  %1940 = fcmp fast ogt float %1937, 0.000000e+00
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = call float @dx.op.unary.f32(i32 23, float %1937)  ; Log(value)
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = lshr i32 %1947, 7
  %1949 = and i32 %1948, 32752
  %1950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1949)  ; LegacyF16ToF32(value)
  %1951 = fmul fast float %1943, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1950
  %1953 = fmul fast float %1944, 0xBFE62E4300000000
  %1954 = fmul fast float %1953, %1950
  %1955 = fmul fast float %1945, 0xBFE62E4300000000
  %1956 = fmul fast float %1955, %1950
  %1957 = select i1 %1940, float %1952, float 1.270000e+02
  %1958 = select i1 %1941, float %1954, float 1.270000e+02
  %1959 = select i1 %1942, float %1956, float 1.270000e+02
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 10240
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %1984, label %1964

; <label>:1964                                    ; preds = %1936
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 2048
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %1984, label %1969

; <label>:1969                                    ; preds = %1964
  %1970 = add i32 %54, 524
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1974, %dx.types.Handle %92, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 3
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = shl i32 %1978, 4
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = fmul fast float %1981, %1976
  %1983 = call float @dx.op.binary.f32(i32 35, float %1982, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1984

; <label>:1984                                    ; preds = %1969, %1964, %1936
  %1985 = phi float [ %1983, %1969 ], [ 0x3F70101020000000, %1964 ], [ 0x3F70101020000000, %1936 ]
  %1986 = add i32 %54, 112
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = lshr i32 %1988, 8
  %1992 = and i32 %1991, 255
  %1993 = uitofp i32 %1992 to float
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = fmul fast float %1993, %1994
  %1996 = fadd fast float %1995, %1990
  %1997 = fmul fast float %1996, 0x3F70101020000000
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  br i1 %1255, label %1999, label %2034

; <label>:1999                                    ; preds = %1984
  %2000 = fmul fast float %1985, 2.000000e+00
  %2001 = fcmp fast olt float %1957, 1.270000e+02
  %2002 = fcmp fast olt float %1958, 1.270000e+02
  %2003 = fcmp fast olt float %1959, 1.270000e+02
  %2004 = fmul fast float %1957, 0xBFF7154760000000
  %2005 = fmul fast float %2004, %2000
  %2006 = fmul fast float %1958, 0xBFF7154760000000
  %2007 = fmul fast float %2006, %2000
  %2008 = fmul fast float %1959, 0xBFF7154760000000
  %2009 = fmul fast float %2008, %2000
  %2010 = call float @dx.op.unary.f32(i32 21, float %2005)  ; Exp(value)
  %2011 = call float @dx.op.unary.f32(i32 21, float %2007)  ; Exp(value)
  %2012 = call float @dx.op.unary.f32(i32 21, float %2009)  ; Exp(value)
  %2013 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2014 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2015 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2016 = fadd fast float %2013, -1.000000e+00
  %2017 = select i1 %2001, float %2016, float -1.000000e+00
  %2018 = fadd fast float %2014, -1.000000e+00
  %2019 = select i1 %2002, float %2018, float -1.000000e+00
  %2020 = fadd fast float %2015, -1.000000e+00
  %2021 = select i1 %2003, float %2020, float -1.000000e+00
  %2022 = fmul fast float %2017, %1551
  %2023 = fmul fast float %2019, %1551
  %2024 = fmul fast float %2021, %1551
  %2025 = fadd fast float %2022, 1.000000e+00
  %2026 = fadd fast float %2023, 1.000000e+00
  %2027 = fadd fast float %2024, 1.000000e+00
  %2028 = fmul fast float %2025, %1239
  %2029 = fmul fast float %2026, %1240
  %2030 = fmul fast float %2027, %1241
  %2031 = fmul fast float %2025, %1242
  %2032 = fmul fast float %2026, %1243
  %2033 = fmul fast float %2027, %1244
  br label %2034

; <label>:2034                                    ; preds = %1999, %1984
  %2035 = phi float [ %2028, %1999 ], [ %1239, %1984 ]
  %2036 = phi float [ %2029, %1999 ], [ %1240, %1984 ]
  %2037 = phi float [ %2030, %1999 ], [ %1241, %1984 ]
  %2038 = phi float [ %2031, %1999 ], [ %1242, %1984 ]
  %2039 = phi float [ %2032, %1999 ], [ %1243, %1984 ]
  %2040 = phi float [ %2033, %1999 ], [ %1244, %1984 ]
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 3
  %2044 = icmp eq i32 %2043, 3
  br i1 %2044, label %2123, label %2045

; <label>:2045                                    ; preds = %2034
  %2046 = and i32 %2042, 16
  %2047 = icmp ne i32 %2046, 0
  %2048 = select i1 %2047, float %1551, float 0.000000e+00
  %2049 = icmp eq i32 %2043, 0
  br i1 %2049, label %2050, label %2078

; <label>:2050                                    ; preds = %2045
  %2051 = and i32 %2042, 64
  %2052 = icmp ne i32 %2051, 0
  %2053 = select i1 %2052, float %1551, float 0.000000e+00
  %2054 = fsub fast float %1771, %2035
  %2055 = fsub fast float %1772, %2036
  %2056 = fsub fast float %1773, %2037
  %2057 = fmul fast float %2048, %2054
  %2058 = fmul fast float %2048, %2055
  %2059 = fmul fast float %2048, %2056
  %2060 = fadd fast float %2057, %2035
  %2061 = fadd fast float %2058, %2036
  %2062 = fadd fast float %2059, %2037
  %2063 = fsub fast float %1757, %1248
  %2064 = fmul fast float %2048, %2063
  %2065 = fadd fast float %2064, %1248
  %2066 = fsub fast float %1899, %2038
  %2067 = fsub fast float %1900, %2039
  %2068 = fsub fast float %1901, %2040
  %2069 = fmul fast float %2053, %2066
  %2070 = fmul fast float %2053, %2067
  %2071 = fmul fast float %2053, %2068
  %2072 = fadd fast float %2069, %2038
  %2073 = fadd fast float %2070, %2039
  %2074 = fadd fast float %2071, %2040
  %2075 = fsub fast float %1998, %1253
  %2076 = fmul fast float %2048, %2075
  %2077 = fadd fast float %2076, %1253
  br label %2123

; <label>:2078                                    ; preds = %2045
  %2079 = icmp eq i32 %2043, 1
  br i1 %2079, label %2080, label %2093

; <label>:2080                                    ; preds = %2078
  %2081 = fadd fast float %1771, -1.000000e+00
  %2082 = fadd fast float %1772, -1.000000e+00
  %2083 = fadd fast float %1773, -1.000000e+00
  %2084 = fmul fast float %2048, %2081
  %2085 = fmul fast float %2048, %2082
  %2086 = fmul fast float %2048, %2083
  %2087 = fadd fast float %2084, 1.000000e+00
  %2088 = fadd fast float %2085, 1.000000e+00
  %2089 = fadd fast float %2086, 1.000000e+00
  %2090 = fmul fast float %2087, %2035
  %2091 = fmul fast float %2088, %2036
  %2092 = fmul fast float %2089, %2037
  br label %2123

; <label>:2093                                    ; preds = %2078
  %2094 = icmp eq i32 %2043, 2
  br i1 %2094, label %2095, label %2123

; <label>:2095                                    ; preds = %2093
  %2096 = call float @dx.op.unary.f32(i32 24, float %1771)  ; Sqrt(value)
  %2097 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2098 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2099 = fadd fast float %2096, -5.000000e-01
  %2100 = fadd fast float %2097, -5.000000e-01
  %2101 = fadd fast float %2098, -5.000000e-01
  %2102 = fmul fast float %2099, %2048
  %2103 = fmul fast float %2100, %2048
  %2104 = fmul fast float %2101, %2048
  %2105 = fadd fast float %2102, 5.000000e-01
  %2106 = fadd fast float %2103, 5.000000e-01
  %2107 = fadd fast float %2104, 5.000000e-01
  %2108 = fmul fast float %2105, 2.000000e+00
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = fmul fast float %2109, %2035
  %2111 = fadd fast float %2110, %2108
  %2112 = fmul fast float %2111, %2035
  %2113 = fmul fast float %2106, 2.000000e+00
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = fmul fast float %2114, %2036
  %2116 = fadd fast float %2115, %2113
  %2117 = fmul fast float %2116, %2036
  %2118 = fmul fast float %2107, 2.000000e+00
  %2119 = fsub fast float 1.000000e+00, %2118
  %2120 = fmul fast float %2119, %2037
  %2121 = fadd fast float %2120, %2118
  %2122 = fmul fast float %2121, %2037
  br label %2123

; <label>:2123                                    ; preds = %2095, %2093, %2080, %2050, %2034
  %2124 = phi float [ %2035, %2034 ], [ %2112, %2095 ], [ %2035, %2093 ], [ %2090, %2080 ], [ %2060, %2050 ]
  %2125 = phi float [ %2036, %2034 ], [ %2117, %2095 ], [ %2036, %2093 ], [ %2091, %2080 ], [ %2061, %2050 ]
  %2126 = phi float [ %2037, %2034 ], [ %2122, %2095 ], [ %2037, %2093 ], [ %2092, %2080 ], [ %2062, %2050 ]
  %2127 = phi float [ %2038, %2034 ], [ %2038, %2095 ], [ %2038, %2093 ], [ %2038, %2080 ], [ %2072, %2050 ]
  %2128 = phi float [ %2039, %2034 ], [ %2039, %2095 ], [ %2039, %2093 ], [ %2039, %2080 ], [ %2073, %2050 ]
  %2129 = phi float [ %2040, %2034 ], [ %2040, %2095 ], [ %2040, %2093 ], [ %2040, %2080 ], [ %2074, %2050 ]
  %2130 = phi float [ %1248, %2034 ], [ %1248, %2095 ], [ %1248, %2093 ], [ %1248, %2080 ], [ %2065, %2050 ]
  %2131 = phi float [ %1253, %2034 ], [ %1253, %2095 ], [ %1253, %2093 ], [ %1253, %2080 ], [ %2077, %2050 ]
  %2132 = and i32 %2042, 12
  %2133 = icmp eq i32 %2132, 12
  br i1 %2133, label %2240, label %2134

; <label>:2134                                    ; preds = %2123
  %2135 = and i32 %2042, 2097184
  %2136 = icmp eq i32 %2135, 2097184
  %2137 = select i1 %2136, float %1551, float 0.000000e+00
  %2138 = and i32 %2042, 4194336
  %2139 = icmp eq i32 %2138, 4194336
  %2140 = select i1 %2139, float %1551, float 0.000000e+00
  %2141 = and i32 %2042, 8388640
  %2142 = icmp eq i32 %2141, 8388640
  %2143 = select i1 %2142, float %1551, float 0.000000e+00
  %2144 = and i32 %2042, 1024
  %2145 = icmp ne i32 %2144, 0
  %2146 = select i1 %2145, float %1551, float 0.000000e+00
  %2147 = and i32 %2042, 2048
  %2148 = icmp ne i32 %2147, 0
  %2149 = select i1 %2148, float %1551, float 0.000000e+00
  %2150 = icmp eq i32 %2132, 0
  br i1 %2150, label %2151, label %2176

; <label>:2151                                    ; preds = %2134
  %2152 = fsub fast float %1852, %1237
  %2153 = fsub fast float %1853, %1238
  %2154 = fmul fast float %2137, %2152
  %2155 = fmul fast float %2137, %2153
  %2156 = fadd fast float %2154, %1237
  %2157 = fadd fast float %2155, %1238
  %2158 = fsub fast float %1854, %1251
  %2159 = fmul fast float %2140, %2158
  %2160 = fadd fast float %2159, %1251
  %2161 = fsub fast float %1851, %1250
  %2162 = fmul fast float %2143, %2161
  %2163 = fadd fast float %2162, %1250
  %2164 = fsub fast float %1957, %1245
  %2165 = fsub fast float %1958, %1246
  %2166 = fsub fast float %1959, %1247
  %2167 = fmul fast float %2146, %2164
  %2168 = fmul fast float %2146, %2165
  %2169 = fmul fast float %2146, %2166
  %2170 = fadd fast float %2167, %1245
  %2171 = fadd fast float %2168, %1246
  %2172 = fadd fast float %2169, %1247
  %2173 = fsub fast float %1985, %1252
  %2174 = fmul fast float %2149, %2173
  %2175 = fadd fast float %2174, %1252
  br label %2240

; <label>:2176                                    ; preds = %2134
  %2177 = icmp eq i32 %2132, 4
  br i1 %2177, label %2178, label %2218

; <label>:2178                                    ; preds = %2176
  %2179 = fmul fast float %2137, %1852
  %2180 = fmul fast float %2137, %1853
  %2181 = fadd fast float %2179, %1237
  %2182 = fadd fast float %2180, %1238
  %2183 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2184 = fsub fast float %2183, %1251
  %2185 = fmul fast float %2184, %2140
  %2186 = fadd fast float %2185, %1251
  %2187 = fadd fast float %1851, %1250
  %2188 = fmul fast float %2187, 0x3FF337FAE0000000
  %2189 = fmul fast float %1250, %1250
  %2190 = fmul fast float %1851, %1851
  %2191 = fadd fast float %2190, %2189
  %2192 = fmul fast float %2191, 0x3FE5152B00000000
  %2193 = fmul fast float %1250, 0xBFCC1F85E0000000
  %2194 = fmul fast float %2193, %1851
  %2195 = fadd fast float %2194, 0xBFE1363700000000
  %2196 = fadd fast float %2195, %2188
  %2197 = fsub fast float %2196, %2192
  %2198 = fmul fast float %2187, 0x3FBA6F0D00000000
  %2199 = fmul fast float %2191, 0x3FD0432880000000
  %2200 = fmul fast float %1250, 0xBFEF110800000000
  %2201 = fmul fast float %2200, %1851
  %2202 = fadd fast float %2201, 1.000000e+00
  %2203 = fsub fast float %2202, %2198
  %2204 = fadd fast float %2203, %2199
  %2205 = fdiv fast float %2197, %2204
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fsub fast float %2206, %1250
  %2208 = fmul fast float %2207, %2143
  %2209 = fadd fast float %2208, %1250
  %2210 = fmul fast float %2146, %1957
  %2211 = fmul fast float %2146, %1958
  %2212 = fmul fast float %2146, %1959
  %2213 = fadd fast float %2210, %1245
  %2214 = fadd fast float %2211, %1246
  %2215 = fadd fast float %2212, %1247
  %2216 = fmul fast float %2149, %1985
  %2217 = fadd fast float %2216, %1252
  br label %2240

; <label>:2218                                    ; preds = %2176
  %2219 = icmp eq i32 %2132, 8
  br i1 %2219, label %2220, label %2240

; <label>:2220                                    ; preds = %2218
  %2221 = fmul fast float %2137, %1852
  %2222 = fmul fast float %2137, %1853
  %2223 = fadd fast float %2221, %1237
  %2224 = fadd fast float %2222, %1238
  %2225 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2226 = fsub fast float %2225, %1251
  %2227 = fmul fast float %2226, %2140
  %2228 = fadd fast float %2227, %1251
  %2229 = fsub fast float %1851, %1250
  %2230 = fmul fast float %2143, %2229
  %2231 = fadd fast float %2230, %1250
  %2232 = fmul fast float %2146, %1957
  %2233 = fmul fast float %2146, %1958
  %2234 = fmul fast float %2146, %1959
  %2235 = fadd fast float %2232, %1245
  %2236 = fadd fast float %2233, %1246
  %2237 = fadd fast float %2234, %1247
  %2238 = fmul fast float %2149, %1985
  %2239 = fadd fast float %2238, %1252
  br label %2240

; <label>:2240                                    ; preds = %2220, %2218, %2178, %2151, %2123, %1550, %1254, %1236
  %2241 = phi float [ %1237, %2123 ], [ %1237, %1550 ], [ %1237, %1236 ], [ %2223, %2220 ], [ %1237, %2218 ], [ %2181, %2178 ], [ %2156, %2151 ], [ %1237, %1254 ]
  %2242 = phi float [ %1238, %2123 ], [ %1238, %1550 ], [ %1238, %1236 ], [ %2224, %2220 ], [ %1238, %2218 ], [ %2182, %2178 ], [ %2157, %2151 ], [ %1238, %1254 ]
  %2243 = phi float [ %2124, %2123 ], [ %1239, %1550 ], [ %1239, %1236 ], [ %2124, %2220 ], [ %2124, %2218 ], [ %2124, %2178 ], [ %2124, %2151 ], [ %1239, %1254 ]
  %2244 = phi float [ %2125, %2123 ], [ %1240, %1550 ], [ %1240, %1236 ], [ %2125, %2220 ], [ %2125, %2218 ], [ %2125, %2178 ], [ %2125, %2151 ], [ %1240, %1254 ]
  %2245 = phi float [ %2126, %2123 ], [ %1241, %1550 ], [ %1241, %1236 ], [ %2126, %2220 ], [ %2126, %2218 ], [ %2126, %2178 ], [ %2126, %2151 ], [ %1241, %1254 ]
  %2246 = phi float [ %2127, %2123 ], [ %1242, %1550 ], [ %1242, %1236 ], [ %2127, %2220 ], [ %2127, %2218 ], [ %2127, %2178 ], [ %2127, %2151 ], [ %1242, %1254 ]
  %2247 = phi float [ %2128, %2123 ], [ %1243, %1550 ], [ %1243, %1236 ], [ %2128, %2220 ], [ %2128, %2218 ], [ %2128, %2178 ], [ %2128, %2151 ], [ %1243, %1254 ]
  %2248 = phi float [ %2129, %2123 ], [ %1244, %1550 ], [ %1244, %1236 ], [ %2129, %2220 ], [ %2129, %2218 ], [ %2129, %2178 ], [ %2129, %2151 ], [ %1244, %1254 ]
  %2249 = phi float [ %1245, %2123 ], [ %1245, %1550 ], [ %1245, %1236 ], [ %2235, %2220 ], [ %1245, %2218 ], [ %2213, %2178 ], [ %2170, %2151 ], [ %1245, %1254 ]
  %2250 = phi float [ %1246, %2123 ], [ %1246, %1550 ], [ %1246, %1236 ], [ %2236, %2220 ], [ %1246, %2218 ], [ %2214, %2178 ], [ %2171, %2151 ], [ %1246, %1254 ]
  %2251 = phi float [ %1247, %2123 ], [ %1247, %1550 ], [ %1247, %1236 ], [ %2237, %2220 ], [ %1247, %2218 ], [ %2215, %2178 ], [ %2172, %2151 ], [ %1247, %1254 ]
  %2252 = phi float [ %2130, %2123 ], [ %1248, %1550 ], [ %1248, %1236 ], [ %2130, %2220 ], [ %2130, %2218 ], [ %2130, %2178 ], [ %2130, %2151 ], [ %1248, %1254 ]
  %2253 = phi float [ %1250, %2123 ], [ %1250, %1550 ], [ %1250, %1236 ], [ %2231, %2220 ], [ %1250, %2218 ], [ %2209, %2178 ], [ %2163, %2151 ], [ %1250, %1254 ]
  %2254 = phi float [ %1251, %2123 ], [ %1251, %1550 ], [ %1251, %1236 ], [ %2228, %2220 ], [ %1251, %2218 ], [ %2186, %2178 ], [ %2160, %2151 ], [ %1251, %1254 ]
  %2255 = phi float [ %1252, %2123 ], [ %1252, %1550 ], [ %1252, %1236 ], [ %2239, %2220 ], [ %1252, %2218 ], [ %2217, %2178 ], [ %2175, %2151 ], [ %1252, %1254 ]
  %2256 = phi float [ %2131, %2123 ], [ %1253, %1550 ], [ %1253, %1236 ], [ %2131, %2220 ], [ %2131, %2218 ], [ %2131, %2178 ], [ %2131, %2151 ], [ %1253, %1254 ]
  br i1 %438, label %3243, label %2257

; <label>:2257                                    ; preds = %2240
  %2258 = icmp ult i32 %494, 3
  %2259 = add i32 %54, 56
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %54, 60
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = or i32 %2264, %2261
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %3243, label %2267

; <label>:2267                                    ; preds = %2257
  %2268 = and i32 %2261, 262144
  %2269 = icmp ne i32 %2268, 0
  %2270 = select i1 %2269, float %57, float 1.000000e+00
  %2271 = select i1 %2269, float %58, float 0.000000e+00
  %2272 = select i1 %2269, float %59, float 0.000000e+00
  %2273 = select i1 %2269, float %60, float 1.000000e+00
  %2274 = select i1 %2269, float %61, float %77
  %2275 = select i1 %2269, float %62, float %78
  %2276 = add i32 %54, 316
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = lshr i32 %2278, 16
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = fmul fast float %2280, 0x3F50624DE0000000
  %2282 = add i32 %54, 120
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 16
  %2286 = and i32 %2285, 255
  %2287 = lshr i32 %2284, 24
  %2288 = add i32 %54, 324
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 65535
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = lshr i32 %2290, 16
  %2294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2293)  ; LegacyF16ToF32(value)
  %2295 = add i32 %54, 64
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = lshr i32 %2297, 22
  %2299 = shl nuw nsw i32 %2298, 5
  %2300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2299)  ; LegacyF16ToF32(value)
  %2301 = shl i32 %2297, 4
  %2302 = and i32 %2301, 32752
  %2303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2302)  ; LegacyF16ToF32(value)
  %2304 = lshr i32 %2297, 7
  %2305 = and i32 %2304, 32752
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 3
  %2309 = fmul fast float %2308, 1.000000e+03
  %2310 = fmul fast float %388, %2309
  %2311 = call float @dx.op.unary.f32(i32 22, float %2310)  ; Frc(value)
  %2312 = fadd fast float %2311, %378
  %2313 = fmul fast float %389, %2309
  %2314 = call float @dx.op.unary.f32(i32 22, float %2313)  ; Frc(value)
  %2315 = fadd fast float %2314, %380
  %2316 = fmul fast float %2281, %2309
  %2317 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2318 = fmul fast float %2317, 0x401921FB60000000
  %2319 = fadd fast float %2318, %2300
  %2320 = call float @dx.op.unary.f32(i32 13, float %2319)  ; Sin(value)
  %2321 = call float @dx.op.unary.f32(i32 12, float %2319)  ; Cos(value)
  %2322 = fsub fast float -0.000000e+00, %2320
  %2323 = fadd fast float %2274, -5.000000e-01
  %2324 = fadd fast float %2275, -5.000000e-01
  %2325 = fmul fast float %2292, %2323
  %2326 = fmul fast float %2294, %2324
  %2327 = fadd fast float %2325, 5.000000e-01
  %2328 = fadd fast float %2326, 5.000000e-01
  %2329 = fmul fast float %2303, %2327
  %2330 = fmul fast float %2306, %2328
  %2331 = fmul fast float %2321, %2329
  %2332 = call float @dx.op.tertiary.f32(i32 46, float %2322, float %2330, float %2331)  ; FMad(a,b,c)
  %2333 = fmul fast float %2320, %2329
  %2334 = call float @dx.op.tertiary.f32(i32 46, float %2321, float %2330, float %2333)  ; FMad(a,b,c)
  %2335 = fadd fast float %2312, %2332
  %2336 = fadd fast float %2315, %2334
  %2337 = icmp ugt i32 %2286, 1
  %2338 = icmp ugt i32 %2284, 33554431
  %2339 = or i1 %2338, %2337
  br i1 %2339, label %2340, label %2365

; <label>:2340                                    ; preds = %2267
  %2341 = add i32 %54, 260
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = lshr i32 %2343, 16
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = fmul fast float %2308, %2345
  %2347 = call float @dx.op.unary.f32(i32 22, float %2346)  ; Frc(value)
  %2348 = mul nuw nsw i32 %2286, %2287
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2347, %2349
  %2351 = call float @dx.op.unary.f32(i32 27, float %2350)  ; Round_ni(value)
  %2352 = fptoui float %2351 to i32
  %2353 = urem i32 %2352, %2286
  %2354 = udiv i32 %2352, %2287
  %2355 = call float @dx.op.unary.f32(i32 22, float %2335)  ; Frc(value)
  %2356 = call float @dx.op.unary.f32(i32 22, float %2336)  ; Frc(value)
  %2357 = uitofp i32 %2353 to float
  %2358 = uitofp i32 %2354 to float
  %2359 = fadd fast float %2355, %2357
  %2360 = fadd fast float %2356, %2358
  %2361 = uitofp i32 %2286 to float
  %2362 = uitofp i32 %2287 to float
  %2363 = fdiv fast float %2359, %2361
  %2364 = fdiv fast float %2360, %2362
  br label %2365

; <label>:2365                                    ; preds = %2340, %2267
  %2366 = phi float [ %2363, %2340 ], [ %2335, %2267 ]
  %2367 = phi float [ %2364, %2340 ], [ %2336, %2267 ]
  %2368 = and i32 %2261, 16777216
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2479, label %2370

; <label>:2370                                    ; preds = %2365
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2375 = fadd fast float %2372, %158
  %2376 = fadd fast float %2373, %159
  %2377 = fadd fast float %2374, %160
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 0
  %2380 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  %2381 = icmp eq i32 %55, 65535
  br i1 %2381, label %2476, label %2382

; <label>:2382                                    ; preds = %2370
  %2383 = lshr i32 %55, 1
  %2384 = shl i32 %2383, 2
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %55, 1
  %2388 = icmp ne i32 %2387, 0
  %2389 = lshr i32 %2386, 16
  %2390 = and i32 %2386, 65535
  %2391 = select i1 %2388, i32 %2389, i32 %2390
  %2392 = icmp eq i32 %2391, 65535
  br i1 %2392, label %2472, label %2393

; <label>:2393                                    ; preds = %2382
  %2394 = mul nuw nsw i32 %2391, 40
  %2395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = add nuw nsw i32 %2394, 12
  %2400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.ResRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.ResRet.f32 %2400, 2
  %2404 = add nuw nsw i32 %2394, 24
  %2405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.ResRet.f32 %2405, 1
  %2408 = extractvalue %dx.types.ResRet.f32 %2405, 2
  %2409 = add nuw nsw i32 %2394, 36
  %2410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.f32 %2410, 0
  %2412 = fsub fast float %2375, %2396
  %2413 = fsub fast float %2376, %2397
  %2414 = fsub fast float %2377, %2398
  %2415 = fmul fast float %2411, %2412
  %2416 = fmul fast float %2411, %2413
  %2417 = fmul fast float %2411, %2414
  %2418 = call float @dx.op.unary.f32(i32 27, float %2415)  ; Round_ni(value)
  %2419 = call float @dx.op.unary.f32(i32 27, float %2416)  ; Round_ni(value)
  %2420 = call float @dx.op.unary.f32(i32 27, float %2417)  ; Round_ni(value)
  %2421 = fadd fast float %2418, 5.000000e-01
  %2422 = fadd fast float %2419, 5.000000e-01
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fmul fast float %2421, %2401
  %2425 = fmul fast float %2422, %2402
  %2426 = fmul fast float %2423, %2403
  %2427 = shl i32 %55, 2
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = add i32 %2429, 0
  %2431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2432 = call float @dx.op.unary.f32(i32 22, float %2424)  ; Frc(value)
  %2433 = call float @dx.op.unary.f32(i32 22, float %2425)  ; Frc(value)
  %2434 = call float @dx.op.unary.f32(i32 22, float %2426)  ; Frc(value)
  %2435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2431, %dx.types.Handle %49, float %2432, float %2433, float %2434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = fmul fast float %2436, 1.023000e+03
  %2440 = fmul fast float %2437, 1.023000e+03
  %2441 = fmul fast float %2438, 1.023000e+03
  %2442 = fadd fast float %2439, 5.000000e-01
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fadd fast float %2441, 5.000000e-01
  %2445 = call float @dx.op.unary.f32(i32 27, float %2442)  ; Round_ni(value)
  %2446 = call float @dx.op.unary.f32(i32 27, float %2443)  ; Round_ni(value)
  %2447 = call float @dx.op.unary.f32(i32 27, float %2444)  ; Round_ni(value)
  %2448 = fsub fast float %2415, %2418
  %2449 = fsub fast float %2416, %2419
  %2450 = fsub fast float %2417, %2420
  %2451 = fmul fast float %2448, 7.500000e-01
  %2452 = fmul fast float %2449, 7.500000e-01
  %2453 = fmul fast float %2450, 7.500000e-01
  %2454 = fadd fast float %2418, 1.250000e-01
  %2455 = fadd fast float %2454, %2451
  %2456 = fadd fast float %2455, %2445
  %2457 = fadd fast float %2419, 1.250000e-01
  %2458 = fadd fast float %2457, %2452
  %2459 = fadd fast float %2458, %2446
  %2460 = fadd fast float %2420, 1.250000e-01
  %2461 = fadd fast float %2460, %2453
  %2462 = fadd fast float %2461, %2447
  %2463 = fmul fast float %2456, %2406
  %2464 = fmul fast float %2459, %2407
  %2465 = fmul fast float %2462, %2408
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = add i32 %2467, 0
  %2469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2469, %dx.types.Handle %47, float %2463, float %2464, float %2465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  br label %2472

; <label>:2472                                    ; preds = %2393, %2382
  %2473 = phi float [ %2471, %2393 ], [ -1.000000e+00, %2382 ]
  %2474 = fadd fast float %2473, %2380
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  br label %2476

; <label>:2476                                    ; preds = %2472, %2370
  %2477 = phi float [ %2475, %2472 ], [ %2380, %2370 ]
  %2478 = fmul fast float %2477, %490
  br label %2479

; <label>:2479                                    ; preds = %2476, %2365
  %2480 = phi float [ %2478, %2476 ], [ %490, %2365 ]
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 256
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2531, label %2485

; <label>:2485                                    ; preds = %2479
  %2486 = add i32 %54, 480
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2490, %dx.types.Handle %92, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = add i32 %54, 132
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = shl i32 %2495, 4
  %2497 = and i32 %2496, 32752
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = lshr i32 %2495, 7
  %2500 = and i32 %2499, 32752
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = fsub fast float 1.000000e+00, %2480
  %2503 = call float @dx.op.binary.f32(i32 35, float %2502, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2504 = bitcast float %2480 to i32
  %2505 = sitofp i32 %2504 to float
  %2506 = fadd fast float %2505, 0xC1CFBF8940000000
  %2507 = fmul fast float %2501, %2506
  %2508 = fadd fast float %2507, 0x41CFBF8940000000
  %2509 = fptosi float %2508 to i32
  %2510 = bitcast i32 %2509 to float
  %2511 = bitcast float %2503 to i32
  %2512 = sitofp i32 %2511 to float
  %2513 = fadd fast float %2512, 0xC1CFBF8940000000
  %2514 = fmul fast float %2513, %2501
  %2515 = fadd fast float %2514, 0x41CFBF8940000000
  %2516 = fptosi float %2515 to i32
  %2517 = bitcast i32 %2516 to float
  %2518 = fmul fast float %2510, %2498
  %2519 = fmul fast float %2517, %2498
  %2520 = fsub fast float %2503, %2518
  %2521 = fadd fast float %2519, %2503
  %2522 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2523 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2524 = fsub fast float %2492, %2522
  %2525 = fsub fast float %2523, %2522
  %2526 = bitcast float %2525 to i32
  %2527 = sub nsw i32 2129859010, %2526
  %2528 = bitcast i32 %2527 to float
  %2529 = fmul fast float %2528, %2524
  %2530 = call float @dx.op.unary.f32(i32 7, float %2529)  ; Saturate(value)
  br label %2531

; <label>:2531                                    ; preds = %2485, %2479
  %2532 = phi float [ %2530, %2485 ], [ %2480, %2479 ]
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 128
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2553, label %2537

; <label>:2537                                    ; preds = %2531
  %2538 = add i32 %54, 464
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %2540, 0
  %2542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2542, %dx.types.Handle %92, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 524288
  %2548 = icmp ne i32 %2547, 0
  %2549 = fcmp fast ogt float %2544, 0x3FE0101020000000
  %2550 = select i1 %2549, float 1.000000e+00, float 0.000000e+00
  %2551 = select i1 %2548, float %2550, float %2544
  %2552 = fmul fast float %2551, %2532
  br label %2553

; <label>:2553                                    ; preds = %2537, %2531
  %2554 = phi float [ %2552, %2537 ], [ %2532, %2531 ]
  %2555 = fcmp fast ult float %2554, 0x3F70101020000000
  br i1 %2555, label %3243, label %2556

; <label>:2556                                    ; preds = %2553
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 16
  %2560 = icmp eq i32 %2559, 0
  br i1 %2560, label %2759, label %2561

; <label>:2561                                    ; preds = %2556
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %54, 416
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2568, %dx.types.Handle %91, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.ResRet.f32 %2569, 3
  %2574 = and i32 %2563, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2563, 8
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = fmul fast float %2573, %2575
  %2580 = fadd fast float %2579, %2578
  %2581 = fmul fast float %2580, 0x3F70101000000000
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 512
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2594, label %2586

; <label>:2586                                    ; preds = %2561
  %2587 = add i32 %54, 496
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %92, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  br label %2594

; <label>:2594                                    ; preds = %2586, %2561
  %2595 = phi float [ %2593, %2586 ], [ 1.000000e+00, %2561 ]
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = and i32 %2597, 33554432
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2706, label %2600

; <label>:2600                                    ; preds = %2594
  %2601 = add i32 %54, 256
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 65535
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = lshr i32 %2603, 16
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = add i32 %54, 260
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 65535
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 24
  %2616 = uitofp i32 %2615 to float
  %2617 = fmul fast float %2616, 0x3F70101020000000
  %2618 = and i32 %2614, 255
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2619, 0x3F70101020000000
  %2621 = lshr i32 %2614, 8
  %2622 = and i32 %2621, 255
  %2623 = uitofp i32 %2622 to float
  %2624 = fmul fast float %2623, 0x3F70101020000000
  %2625 = lshr i32 %2614, 16
  %2626 = and i32 %2625, 255
  %2627 = uitofp i32 %2626 to float
  %2628 = fmul fast float %2627, 0x3F70101020000000
  %2629 = add i32 %54, 252
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = lshr i32 %2631, 24
  %2633 = uitofp i32 %2632 to float
  %2634 = fmul fast float %2633, 0x3F70101020000000
  %2635 = and i32 %2631, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = fmul fast float %2636, 0x3F70101020000000
  %2638 = lshr i32 %2631, 8
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = fmul fast float %2640, 0x3F70101020000000
  %2642 = lshr i32 %2631, 16
  %2643 = and i32 %2642, 255
  %2644 = uitofp i32 %2643 to float
  %2645 = fmul fast float %2644, 0x3F70101020000000
  %2646 = bitcast float %2570 to i32
  %2647 = ashr i32 %2646, 1
  %2648 = sub nsw i32 1597463174, %2647
  %2649 = bitcast i32 %2648 to float
  %2650 = fmul fast float %2570, 5.000000e-01
  %2651 = fmul fast float %2649, %2649
  %2652 = fmul fast float %2651, %2650
  %2653 = fsub fast float 1.500000e+00, %2652
  %2654 = fmul fast float %2649, %2570
  %2655 = fmul fast float %2654, %2653
  %2656 = bitcast float %2571 to i32
  %2657 = ashr i32 %2656, 1
  %2658 = sub nsw i32 1597463174, %2657
  %2659 = bitcast i32 %2658 to float
  %2660 = fmul fast float %2571, 5.000000e-01
  %2661 = fmul fast float %2659, %2659
  %2662 = fmul fast float %2661, %2660
  %2663 = fsub fast float 1.500000e+00, %2662
  %2664 = fmul fast float %2659, %2571
  %2665 = fmul fast float %2664, %2663
  %2666 = bitcast float %2572 to i32
  %2667 = ashr i32 %2666, 1
  %2668 = sub nsw i32 1597463174, %2667
  %2669 = bitcast i32 %2668 to float
  %2670 = fmul fast float %2572, 5.000000e-01
  %2671 = fmul fast float %2669, %2669
  %2672 = fmul fast float %2671, %2670
  %2673 = fsub fast float 1.500000e+00, %2672
  %2674 = fmul fast float %2669, %2572
  %2675 = fmul fast float %2674, %2673
  %2676 = fsub fast float %2655, %2637
  %2677 = fsub fast float %2665, %2641
  %2678 = fsub fast float %2675, %2645
  %2679 = fmul fast float %2676, %2605
  %2680 = fmul fast float %2677, %2607
  %2681 = fmul fast float %2678, %2612
  %2682 = fadd fast float %2679, %2620
  %2683 = fadd fast float %2680, %2624
  %2684 = fadd fast float %2681, %2628
  %2685 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2686 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2687 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2688 = fmul fast float %2685, %2685
  %2689 = fmul fast float %2686, %2686
  %2690 = fmul fast float %2687, %2687
  %2691 = fsub fast float %2688, %2570
  %2692 = fsub fast float %2689, %2571
  %2693 = fsub fast float %2690, %2572
  %2694 = fmul fast float %2691, %2595
  %2695 = fmul fast float %2692, %2595
  %2696 = fmul fast float %2693, %2595
  %2697 = fadd fast float %2694, %2570
  %2698 = fadd fast float %2695, %2571
  %2699 = fadd fast float %2696, %2572
  %2700 = fadd fast float %2617, %2581
  %2701 = fsub fast float %2700, %2634
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2703 = fsub fast float %2702, %2581
  %2704 = fmul fast float %2703, %2595
  %2705 = fadd fast float %2704, %2581
  br label %2759

; <label>:2706                                    ; preds = %2594
  %2707 = and i32 %2597, 134217728
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2743, label %2709

; <label>:2709                                    ; preds = %2706
  %2710 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2711 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2712 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2713 = fadd fast float %2710, -5.000000e-01
  %2714 = fadd fast float %2711, -5.000000e-01
  %2715 = fadd fast float %2712, -5.000000e-01
  %2716 = fmul fast float %2713, %2595
  %2717 = fmul fast float %2714, %2595
  %2718 = fmul fast float %2715, %2595
  %2719 = fadd fast float %2716, 5.000000e-01
  %2720 = fadd fast float %2717, 5.000000e-01
  %2721 = fadd fast float %2718, 5.000000e-01
  %2722 = call float @dx.op.unary.f32(i32 24, float %2570)  ; Sqrt(value)
  %2723 = call float @dx.op.unary.f32(i32 24, float %2571)  ; Sqrt(value)
  %2724 = call float @dx.op.unary.f32(i32 24, float %2572)  ; Sqrt(value)
  %2725 = fmul fast float %2719, 2.000000e+00
  %2726 = fsub fast float 1.000000e+00, %2725
  %2727 = fmul fast float %2726, %2722
  %2728 = fadd fast float %2727, %2725
  %2729 = fmul fast float %2728, %2722
  %2730 = fmul fast float %2720, 2.000000e+00
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fmul fast float %2731, %2723
  %2733 = fadd fast float %2732, %2730
  %2734 = fmul fast float %2733, %2723
  %2735 = fmul fast float %2721, 2.000000e+00
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = fmul fast float %2736, %2724
  %2738 = fadd fast float %2737, %2735
  %2739 = fmul fast float %2738, %2724
  %2740 = fmul fast float %2729, %2729
  %2741 = fmul fast float %2734, %2734
  %2742 = fmul fast float %2739, %2739
  br label %2759

; <label>:2743                                    ; preds = %2706
  %2744 = fmul fast float %365, %365
  %2745 = fmul fast float %369, %369
  %2746 = fmul fast float %373, %373
  %2747 = fadd fast float %2744, -1.000000e+00
  %2748 = fadd fast float %2745, -1.000000e+00
  %2749 = fadd fast float %2746, -1.000000e+00
  %2750 = fmul fast float %2595, %2747
  %2751 = fmul fast float %2595, %2748
  %2752 = fmul fast float %2595, %2749
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fadd fast float %2751, 1.000000e+00
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fmul fast float %2753, %2570
  %2757 = fmul fast float %2754, %2571
  %2758 = fmul fast float %2755, %2572
  br label %2759

; <label>:2759                                    ; preds = %2743, %2709, %2600, %2556
  %2760 = phi float [ %2705, %2600 ], [ %2581, %2709 ], [ %2581, %2743 ], [ 0x3FA23C0BE0000000, %2556 ]
  %2761 = phi float [ %2697, %2600 ], [ %2740, %2709 ], [ %2756, %2743 ], [ 1.000000e+00, %2556 ]
  %2762 = phi float [ %2698, %2600 ], [ %2741, %2709 ], [ %2757, %2743 ], [ 1.000000e+00, %2556 ]
  %2763 = phi float [ %2699, %2600 ], [ %2742, %2709 ], [ %2758, %2743 ], [ 1.000000e+00, %2556 ]
  %2764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.i32 %2764, 1
  %2766 = and i32 %2765, 1
  %2767 = icmp ne i32 %2766, 0
  %2768 = add i32 %54, 356
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 32
  %2772 = icmp ne i32 %2771, 0
  %2773 = and i1 %2767, %2772
  %2774 = select i1 %2773, float 1.000000e+00, float %2761
  %2775 = select i1 %2773, float 0x3FD3333340000000, float %2762
  %2776 = select i1 %2773, float 0x3FD3333340000000, float %2763
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 32
  %2780 = icmp eq i32 %2779, 0
  br i1 %2780, label %2853, label %2781

; <label>:2781                                    ; preds = %2759
  %2782 = add i32 %54, 124
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %54, 432
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = add i32 %2787, 0
  %2789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2789, %dx.types.Handle %91, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = extractvalue %dx.types.ResRet.f32 %2790, 3
  %2795 = and i32 %2784, 255
  %2796 = uitofp i32 %2795 to float
  %2797 = lshr i32 %2784, 8
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = lshr i32 %2784, 16
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F70101000000000
  %2804 = fmul fast float %2791, %2796
  %2805 = fadd fast float %2804, %2799
  %2806 = fmul fast float %2805, 0x3F70101000000000
  %2807 = fadd fast float %2792, -5.000000e-01
  %2808 = fadd fast float %2794, -5.000000e-01
  %2809 = fmul fast float %2807, %2803
  %2810 = fmul fast float %2808, %2803
  %2811 = fadd fast float %2809, 5.000000e-01
  %2812 = fadd fast float %2810, 5.000000e-01
  %2813 = fmul fast float %2811, 2.000000e+00
  %2814 = fadd fast float %2813, -1.000000e+00
  %2815 = fmul fast float %2812, 2.000000e+00
  %2816 = fadd fast float %2815, -1.000000e+00
  %2817 = fadd fast float %2814, %2816
  %2818 = fmul fast float %2817, 5.000000e-01
  %2819 = fsub fast float %2814, %2816
  %2820 = fmul fast float %2819, 5.000000e-01
  %2821 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = call float @dx.op.unary.f32(i32 6, float %2820)  ; FAbs(value)
  %2824 = fsub fast float %2822, %2823
  %2825 = call float @dx.op.dot3.f32(i32 55, float %2818, float %2820, float %2824, float %2818, float %2820, float %2824)  ; Dot3(ax,ay,az,bx,by,bz)
  %2826 = call float @dx.op.unary.f32(i32 25, float %2825)  ; Rsqrt(value)
  %2827 = fmul fast float %2818, %2826
  %2828 = fmul fast float %2820, %2826
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 67108864
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2849, label %2833

; <label>:2833                                    ; preds = %2781
  %2834 = add i32 %54, 312
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 65535
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = and i32 %2840, 65535
  %2842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2841)  ; LegacyF16ToF32(value)
  %2843 = lshr i32 %2836, 16
  %2844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2843)  ; LegacyF16ToF32(value)
  %2845 = fsub fast float %2806, %2844
  %2846 = fmul fast float %2845, %2838
  %2847 = fadd fast float %2846, %2842
  %2848 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  br label %2849

; <label>:2849                                    ; preds = %2833, %2781
  %2850 = phi float [ %2848, %2833 ], [ %2806, %2781 ]
  %2851 = call float @dx.op.dot2.f32(i32 54, float %2827, float %2828, float %2270, float %2271)  ; Dot2(ax,ay,bx,by)
  %2852 = call float @dx.op.dot2.f32(i32 54, float %2827, float %2828, float %2272, float %2273)  ; Dot2(ax,ay,bx,by)
  br label %2853

; <label>:2853                                    ; preds = %2849, %2759
  %2854 = phi float [ %2850, %2849 ], [ 0x3FD6666660000000, %2759 ]
  %2855 = phi float [ %2851, %2849 ], [ 0.000000e+00, %2759 ]
  %2856 = phi float [ %2852, %2849 ], [ 0.000000e+00, %2759 ]
  %2857 = phi float [ %2793, %2849 ], [ 1.000000e+00, %2759 ]
  %2858 = add i32 %54, 192
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = lshr i32 %2860, 22
  %2862 = shl nuw nsw i32 %2861, 5
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 64
  %2867 = icmp eq i32 %2866, 0
  br i1 %2867, label %2901, label %2868

; <label>:2868                                    ; preds = %2853
  %2869 = add i32 %54, 448
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = add i32 %2871, 0
  %2873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 131072
  %2877 = icmp eq i32 %2876, 0
  %2878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2873, %dx.types.Handle %91, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = fmul fast float %2879, %353
  %2883 = fmul fast float %2880, %356
  %2884 = fmul fast float %2881, %359
  br i1 %2877, label %2891, label %2885

; <label>:2885                                    ; preds = %2868
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = fmul fast float %2887, %2882
  %2889 = fmul fast float %2887, %2883
  %2890 = fmul fast float %2887, %2884
  br label %2891

; <label>:2891                                    ; preds = %2885, %2868
  %2892 = phi float [ %2888, %2885 ], [ %2882, %2868 ]
  %2893 = phi float [ %2889, %2885 ], [ %2883, %2868 ]
  %2894 = phi float [ %2890, %2885 ], [ %2884, %2868 ]
  %2895 = fmul fast float %2892, %2863
  %2896 = select i1 %252, float %2895, float %2892
  %2897 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2893, float %2894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2898 = select i1 %252, float 0.000000e+00, float %2892
  %2899 = select i1 %252, float %2897, float %2893
  %2900 = select i1 %252, float 0.000000e+00, float %2894
  br label %2901

; <label>:2901                                    ; preds = %2891, %2853
  %2902 = phi float [ %2898, %2891 ], [ 0.000000e+00, %2853 ]
  %2903 = phi float [ %2899, %2891 ], [ 0.000000e+00, %2853 ]
  %2904 = phi float [ %2900, %2891 ], [ 0.000000e+00, %2853 ]
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 1024
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2939, label %2909

; <label>:2909                                    ; preds = %2901
  %2910 = add i32 %54, 184
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = fmul fast float %2914, 0x3F70101020000000
  %2916 = lshr i32 %2912, 8
  %2917 = and i32 %2916, 255
  %2918 = uitofp i32 %2917 to float
  %2919 = fmul fast float %2918, 0x3F70101020000000
  %2920 = lshr i32 %2912, 16
  %2921 = and i32 %2920, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3F70101020000000
  %2924 = fmul fast float %2915, %2915
  %2925 = fmul fast float %2919, %2919
  %2926 = fmul fast float %2923, %2923
  %2927 = add i32 %54, 512
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %2929, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2931, %dx.types.Handle %92, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = fmul fast float %2924, %2933
  %2937 = fmul fast float %2925, %2934
  %2938 = fmul fast float %2926, %2935
  br label %2939

; <label>:2939                                    ; preds = %2909, %2901
  %2940 = phi float [ %2936, %2909 ], [ 0.000000e+00, %2901 ]
  %2941 = phi float [ %2937, %2909 ], [ 0.000000e+00, %2901 ]
  %2942 = phi float [ %2938, %2909 ], [ 0.000000e+00, %2901 ]
  %2943 = fcmp fast ogt float %2940, 0.000000e+00
  %2944 = fcmp fast ogt float %2941, 0.000000e+00
  %2945 = fcmp fast ogt float %2942, 0.000000e+00
  %2946 = call float @dx.op.unary.f32(i32 23, float %2940)  ; Log(value)
  %2947 = call float @dx.op.unary.f32(i32 23, float %2941)  ; Log(value)
  %2948 = call float @dx.op.unary.f32(i32 23, float %2942)  ; Log(value)
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 7
  %2952 = and i32 %2951, 32752
  %2953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2952)  ; LegacyF16ToF32(value)
  %2954 = fmul fast float %2946, 0xBFE62E4300000000
  %2955 = fmul fast float %2954, %2953
  %2956 = fmul fast float %2947, 0xBFE62E4300000000
  %2957 = fmul fast float %2956, %2953
  %2958 = fmul fast float %2948, 0xBFE62E4300000000
  %2959 = fmul fast float %2958, %2953
  %2960 = select i1 %2943, float %2955, float 1.270000e+02
  %2961 = select i1 %2944, float %2957, float 1.270000e+02
  %2962 = select i1 %2945, float %2959, float 1.270000e+02
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 10240
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %2987, label %2967

; <label>:2967                                    ; preds = %2939
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 2048
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %2987, label %2972

; <label>:2972                                    ; preds = %2967
  %2973 = add i32 %54, 528
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = add i32 %2975, 0
  %2977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2977, %dx.types.Handle %92, float %2366, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 3
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = shl i32 %2981, 4
  %2983 = and i32 %2982, 32752
  %2984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2983)  ; LegacyF16ToF32(value)
  %2985 = fmul fast float %2984, %2979
  %2986 = call float @dx.op.binary.f32(i32 35, float %2985, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2987

; <label>:2987                                    ; preds = %2972, %2967, %2939
  %2988 = phi float [ %2986, %2972 ], [ 0x3F70101020000000, %2967 ], [ 0x3F70101020000000, %2939 ]
  %2989 = add i32 %54, 128
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = lshr i32 %2991, 8
  %2995 = and i32 %2994, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2774, float %2775, float %2776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = fmul fast float %2996, %2997
  %2999 = fadd fast float %2998, %2993
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  br i1 %2258, label %3002, label %3037

; <label>:3002                                    ; preds = %2987
  %3003 = fmul fast float %2988, 2.000000e+00
  %3004 = fcmp fast olt float %2960, 1.270000e+02
  %3005 = fcmp fast olt float %2961, 1.270000e+02
  %3006 = fcmp fast olt float %2962, 1.270000e+02
  %3007 = fmul fast float %2960, 0xBFF7154760000000
  %3008 = fmul fast float %3007, %3003
  %3009 = fmul fast float %2961, 0xBFF7154760000000
  %3010 = fmul fast float %3009, %3003
  %3011 = fmul fast float %2962, 0xBFF7154760000000
  %3012 = fmul fast float %3011, %3003
  %3013 = call float @dx.op.unary.f32(i32 21, float %3008)  ; Exp(value)
  %3014 = call float @dx.op.unary.f32(i32 21, float %3010)  ; Exp(value)
  %3015 = call float @dx.op.unary.f32(i32 21, float %3012)  ; Exp(value)
  %3016 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3017 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = fadd fast float %3016, -1.000000e+00
  %3020 = select i1 %3004, float %3019, float -1.000000e+00
  %3021 = fadd fast float %3017, -1.000000e+00
  %3022 = select i1 %3005, float %3021, float -1.000000e+00
  %3023 = fadd fast float %3018, -1.000000e+00
  %3024 = select i1 %3006, float %3023, float -1.000000e+00
  %3025 = fmul fast float %3020, %2554
  %3026 = fmul fast float %3022, %2554
  %3027 = fmul fast float %3024, %2554
  %3028 = fadd fast float %3025, 1.000000e+00
  %3029 = fadd fast float %3026, 1.000000e+00
  %3030 = fadd fast float %3027, 1.000000e+00
  %3031 = fmul fast float %3028, %2243
  %3032 = fmul fast float %3029, %2244
  %3033 = fmul fast float %3030, %2245
  %3034 = fmul fast float %3028, %2246
  %3035 = fmul fast float %3029, %2247
  %3036 = fmul fast float %3030, %2248
  br label %3037

; <label>:3037                                    ; preds = %3002, %2987
  %3038 = phi float [ %3031, %3002 ], [ %2243, %2987 ]
  %3039 = phi float [ %3032, %3002 ], [ %2244, %2987 ]
  %3040 = phi float [ %3033, %3002 ], [ %2245, %2987 ]
  %3041 = phi float [ %3034, %3002 ], [ %2246, %2987 ]
  %3042 = phi float [ %3035, %3002 ], [ %2247, %2987 ]
  %3043 = phi float [ %3036, %3002 ], [ %2248, %2987 ]
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 3
  %3047 = icmp eq i32 %3046, 3
  br i1 %3047, label %3126, label %3048

; <label>:3048                                    ; preds = %3037
  %3049 = and i32 %3045, 16
  %3050 = icmp ne i32 %3049, 0
  %3051 = select i1 %3050, float %2554, float 0.000000e+00
  %3052 = icmp eq i32 %3046, 0
  br i1 %3052, label %3053, label %3081

; <label>:3053                                    ; preds = %3048
  %3054 = and i32 %3045, 64
  %3055 = icmp ne i32 %3054, 0
  %3056 = select i1 %3055, float %2554, float 0.000000e+00
  %3057 = fsub fast float %2774, %3038
  %3058 = fsub fast float %2775, %3039
  %3059 = fsub fast float %2776, %3040
  %3060 = fmul fast float %3051, %3057
  %3061 = fmul fast float %3051, %3058
  %3062 = fmul fast float %3051, %3059
  %3063 = fadd fast float %3060, %3038
  %3064 = fadd fast float %3061, %3039
  %3065 = fadd fast float %3062, %3040
  %3066 = fsub fast float %2760, %2252
  %3067 = fmul fast float %3051, %3066
  %3068 = fadd fast float %3067, %2252
  %3069 = fsub fast float %2902, %3041
  %3070 = fsub fast float %2903, %3042
  %3071 = fsub fast float %2904, %3043
  %3072 = fmul fast float %3056, %3069
  %3073 = fmul fast float %3056, %3070
  %3074 = fmul fast float %3056, %3071
  %3075 = fadd fast float %3072, %3041
  %3076 = fadd fast float %3073, %3042
  %3077 = fadd fast float %3074, %3043
  %3078 = fsub fast float %3001, %2256
  %3079 = fmul fast float %3051, %3078
  %3080 = fadd fast float %3079, %2256
  br label %3126

; <label>:3081                                    ; preds = %3048
  %3082 = icmp eq i32 %3046, 1
  br i1 %3082, label %3083, label %3096

; <label>:3083                                    ; preds = %3081
  %3084 = fadd fast float %2774, -1.000000e+00
  %3085 = fadd fast float %2775, -1.000000e+00
  %3086 = fadd fast float %2776, -1.000000e+00
  %3087 = fmul fast float %3051, %3084
  %3088 = fmul fast float %3051, %3085
  %3089 = fmul fast float %3051, %3086
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fadd fast float %3088, 1.000000e+00
  %3092 = fadd fast float %3089, 1.000000e+00
  %3093 = fmul fast float %3090, %3038
  %3094 = fmul fast float %3091, %3039
  %3095 = fmul fast float %3092, %3040
  br label %3126

; <label>:3096                                    ; preds = %3081
  %3097 = icmp eq i32 %3046, 2
  br i1 %3097, label %3098, label %3126

; <label>:3098                                    ; preds = %3096
  %3099 = call float @dx.op.unary.f32(i32 24, float %2774)  ; Sqrt(value)
  %3100 = call float @dx.op.unary.f32(i32 24, float %2775)  ; Sqrt(value)
  %3101 = call float @dx.op.unary.f32(i32 24, float %2776)  ; Sqrt(value)
  %3102 = fadd fast float %3099, -5.000000e-01
  %3103 = fadd fast float %3100, -5.000000e-01
  %3104 = fadd fast float %3101, -5.000000e-01
  %3105 = fmul fast float %3102, %3051
  %3106 = fmul fast float %3103, %3051
  %3107 = fmul fast float %3104, %3051
  %3108 = fadd fast float %3105, 5.000000e-01
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = fmul fast float %3108, 2.000000e+00
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3112, %3038
  %3114 = fadd fast float %3113, %3111
  %3115 = fmul fast float %3114, %3038
  %3116 = fmul fast float %3109, 2.000000e+00
  %3117 = fsub fast float 1.000000e+00, %3116
  %3118 = fmul fast float %3117, %3039
  %3119 = fadd fast float %3118, %3116
  %3120 = fmul fast float %3119, %3039
  %3121 = fmul fast float %3110, 2.000000e+00
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3122, %3040
  %3124 = fadd fast float %3123, %3121
  %3125 = fmul fast float %3124, %3040
  br label %3126

; <label>:3126                                    ; preds = %3098, %3096, %3083, %3053, %3037
  %3127 = phi float [ %3038, %3037 ], [ %3115, %3098 ], [ %3038, %3096 ], [ %3093, %3083 ], [ %3063, %3053 ]
  %3128 = phi float [ %3039, %3037 ], [ %3120, %3098 ], [ %3039, %3096 ], [ %3094, %3083 ], [ %3064, %3053 ]
  %3129 = phi float [ %3040, %3037 ], [ %3125, %3098 ], [ %3040, %3096 ], [ %3095, %3083 ], [ %3065, %3053 ]
  %3130 = phi float [ %3041, %3037 ], [ %3041, %3098 ], [ %3041, %3096 ], [ %3041, %3083 ], [ %3075, %3053 ]
  %3131 = phi float [ %3042, %3037 ], [ %3042, %3098 ], [ %3042, %3096 ], [ %3042, %3083 ], [ %3076, %3053 ]
  %3132 = phi float [ %3043, %3037 ], [ %3043, %3098 ], [ %3043, %3096 ], [ %3043, %3083 ], [ %3077, %3053 ]
  %3133 = phi float [ %2252, %3037 ], [ %2252, %3098 ], [ %2252, %3096 ], [ %2252, %3083 ], [ %3068, %3053 ]
  %3134 = phi float [ %2256, %3037 ], [ %2256, %3098 ], [ %2256, %3096 ], [ %2256, %3083 ], [ %3080, %3053 ]
  %3135 = and i32 %3045, 12
  %3136 = icmp eq i32 %3135, 12
  br i1 %3136, label %3243, label %3137

; <label>:3137                                    ; preds = %3126
  %3138 = and i32 %3045, 2097184
  %3139 = icmp eq i32 %3138, 2097184
  %3140 = select i1 %3139, float %2554, float 0.000000e+00
  %3141 = and i32 %3045, 4194336
  %3142 = icmp eq i32 %3141, 4194336
  %3143 = select i1 %3142, float %2554, float 0.000000e+00
  %3144 = and i32 %3045, 8388640
  %3145 = icmp eq i32 %3144, 8388640
  %3146 = select i1 %3145, float %2554, float 0.000000e+00
  %3147 = and i32 %3045, 1024
  %3148 = icmp ne i32 %3147, 0
  %3149 = select i1 %3148, float %2554, float 0.000000e+00
  %3150 = and i32 %3045, 2048
  %3151 = icmp ne i32 %3150, 0
  %3152 = select i1 %3151, float %2554, float 0.000000e+00
  %3153 = icmp eq i32 %3135, 0
  br i1 %3153, label %3154, label %3179

; <label>:3154                                    ; preds = %3137
  %3155 = fsub fast float %2855, %2241
  %3156 = fsub fast float %2856, %2242
  %3157 = fmul fast float %3140, %3155
  %3158 = fmul fast float %3140, %3156
  %3159 = fadd fast float %3157, %2241
  %3160 = fadd fast float %3158, %2242
  %3161 = fsub fast float %2857, %2254
  %3162 = fmul fast float %3143, %3161
  %3163 = fadd fast float %3162, %2254
  %3164 = fsub fast float %2854, %2253
  %3165 = fmul fast float %3146, %3164
  %3166 = fadd fast float %3165, %2253
  %3167 = fsub fast float %2960, %2249
  %3168 = fsub fast float %2961, %2250
  %3169 = fsub fast float %2962, %2251
  %3170 = fmul fast float %3149, %3167
  %3171 = fmul fast float %3149, %3168
  %3172 = fmul fast float %3149, %3169
  %3173 = fadd fast float %3170, %2249
  %3174 = fadd fast float %3171, %2250
  %3175 = fadd fast float %3172, %2251
  %3176 = fsub fast float %2988, %2255
  %3177 = fmul fast float %3152, %3176
  %3178 = fadd fast float %3177, %2255
  br label %3243

; <label>:3179                                    ; preds = %3137
  %3180 = icmp eq i32 %3135, 4
  br i1 %3180, label %3181, label %3221

; <label>:3181                                    ; preds = %3179
  %3182 = fmul fast float %3140, %2855
  %3183 = fmul fast float %3140, %2856
  %3184 = fadd fast float %3182, %2241
  %3185 = fadd fast float %3183, %2242
  %3186 = call float @dx.op.binary.f32(i32 36, float %2254, float %2857)  ; FMin(a,b)
  %3187 = fsub fast float %3186, %2254
  %3188 = fmul fast float %3187, %3143
  %3189 = fadd fast float %3188, %2254
  %3190 = fadd fast float %2854, %2253
  %3191 = fmul fast float %3190, 0x3FF337FAE0000000
  %3192 = fmul fast float %2253, %2253
  %3193 = fmul fast float %2854, %2854
  %3194 = fadd fast float %3193, %3192
  %3195 = fmul fast float %3194, 0x3FE5152B00000000
  %3196 = fmul fast float %2253, 0xBFCC1F85E0000000
  %3197 = fmul fast float %3196, %2854
  %3198 = fadd fast float %3197, 0xBFE1363700000000
  %3199 = fadd fast float %3198, %3191
  %3200 = fsub fast float %3199, %3195
  %3201 = fmul fast float %3190, 0x3FBA6F0D00000000
  %3202 = fmul fast float %3194, 0x3FD0432880000000
  %3203 = fmul fast float %2253, 0xBFEF110800000000
  %3204 = fmul fast float %3203, %2854
  %3205 = fadd fast float %3204, 1.000000e+00
  %3206 = fsub fast float %3205, %3201
  %3207 = fadd fast float %3206, %3202
  %3208 = fdiv fast float %3200, %3207
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3210 = fsub fast float %3209, %2253
  %3211 = fmul fast float %3210, %3146
  %3212 = fadd fast float %3211, %2253
  %3213 = fmul fast float %3149, %2960
  %3214 = fmul fast float %3149, %2961
  %3215 = fmul fast float %3149, %2962
  %3216 = fadd fast float %3213, %2249
  %3217 = fadd fast float %3214, %2250
  %3218 = fadd fast float %3215, %2251
  %3219 = fmul fast float %3152, %2988
  %3220 = fadd fast float %3219, %2255
  br label %3243

; <label>:3221                                    ; preds = %3179
  %3222 = icmp eq i32 %3135, 8
  br i1 %3222, label %3223, label %3243

; <label>:3223                                    ; preds = %3221
  %3224 = fmul fast float %3140, %2855
  %3225 = fmul fast float %3140, %2856
  %3226 = fadd fast float %3224, %2241
  %3227 = fadd fast float %3225, %2242
  %3228 = call float @dx.op.binary.f32(i32 36, float %2254, float %2857)  ; FMin(a,b)
  %3229 = fsub fast float %3228, %2254
  %3230 = fmul fast float %3229, %3143
  %3231 = fadd fast float %3230, %2254
  %3232 = fsub fast float %2854, %2253
  %3233 = fmul fast float %3146, %3232
  %3234 = fadd fast float %3233, %2253
  %3235 = fmul fast float %3149, %2960
  %3236 = fmul fast float %3149, %2961
  %3237 = fmul fast float %3149, %2962
  %3238 = fadd fast float %3235, %2249
  %3239 = fadd fast float %3236, %2250
  %3240 = fadd fast float %3237, %2251
  %3241 = fmul fast float %3152, %2988
  %3242 = fadd fast float %3241, %2255
  br label %3243

; <label>:3243                                    ; preds = %3223, %3221, %3181, %3154, %3126, %2553, %2257, %2240
  %3244 = phi float [ %2241, %3126 ], [ %2241, %2553 ], [ %2241, %2240 ], [ %3226, %3223 ], [ %2241, %3221 ], [ %3184, %3181 ], [ %3159, %3154 ], [ %2241, %2257 ]
  %3245 = phi float [ %2242, %3126 ], [ %2242, %2553 ], [ %2242, %2240 ], [ %3227, %3223 ], [ %2242, %3221 ], [ %3185, %3181 ], [ %3160, %3154 ], [ %2242, %2257 ]
  %3246 = phi float [ %3127, %3126 ], [ %2243, %2553 ], [ %2243, %2240 ], [ %3127, %3223 ], [ %3127, %3221 ], [ %3127, %3181 ], [ %3127, %3154 ], [ %2243, %2257 ]
  %3247 = phi float [ %3128, %3126 ], [ %2244, %2553 ], [ %2244, %2240 ], [ %3128, %3223 ], [ %3128, %3221 ], [ %3128, %3181 ], [ %3128, %3154 ], [ %2244, %2257 ]
  %3248 = phi float [ %3129, %3126 ], [ %2245, %2553 ], [ %2245, %2240 ], [ %3129, %3223 ], [ %3129, %3221 ], [ %3129, %3181 ], [ %3129, %3154 ], [ %2245, %2257 ]
  %3249 = phi float [ %3130, %3126 ], [ %2246, %2553 ], [ %2246, %2240 ], [ %3130, %3223 ], [ %3130, %3221 ], [ %3130, %3181 ], [ %3130, %3154 ], [ %2246, %2257 ]
  %3250 = phi float [ %3131, %3126 ], [ %2247, %2553 ], [ %2247, %2240 ], [ %3131, %3223 ], [ %3131, %3221 ], [ %3131, %3181 ], [ %3131, %3154 ], [ %2247, %2257 ]
  %3251 = phi float [ %3132, %3126 ], [ %2248, %2553 ], [ %2248, %2240 ], [ %3132, %3223 ], [ %3132, %3221 ], [ %3132, %3181 ], [ %3132, %3154 ], [ %2248, %2257 ]
  %3252 = phi float [ %2249, %3126 ], [ %2249, %2553 ], [ %2249, %2240 ], [ %3238, %3223 ], [ %2249, %3221 ], [ %3216, %3181 ], [ %3173, %3154 ], [ %2249, %2257 ]
  %3253 = phi float [ %2250, %3126 ], [ %2250, %2553 ], [ %2250, %2240 ], [ %3239, %3223 ], [ %2250, %3221 ], [ %3217, %3181 ], [ %3174, %3154 ], [ %2250, %2257 ]
  %3254 = phi float [ %2251, %3126 ], [ %2251, %2553 ], [ %2251, %2240 ], [ %3240, %3223 ], [ %2251, %3221 ], [ %3218, %3181 ], [ %3175, %3154 ], [ %2251, %2257 ]
  %3255 = phi float [ %3133, %3126 ], [ %2252, %2553 ], [ %2252, %2240 ], [ %3133, %3223 ], [ %3133, %3221 ], [ %3133, %3181 ], [ %3133, %3154 ], [ %2252, %2257 ]
  %3256 = phi float [ %2253, %3126 ], [ %2253, %2553 ], [ %2253, %2240 ], [ %3234, %3223 ], [ %2253, %3221 ], [ %3212, %3181 ], [ %3166, %3154 ], [ %2253, %2257 ]
  %3257 = phi float [ %2254, %3126 ], [ %2254, %2553 ], [ %2254, %2240 ], [ %3231, %3223 ], [ %2254, %3221 ], [ %3189, %3181 ], [ %3163, %3154 ], [ %2254, %2257 ]
  %3258 = phi float [ %2255, %3126 ], [ %2255, %2553 ], [ %2255, %2240 ], [ %3242, %3223 ], [ %2255, %3221 ], [ %3220, %3181 ], [ %3178, %3154 ], [ %2255, %2257 ]
  %3259 = phi float [ %3134, %3126 ], [ %2256, %2553 ], [ %2256, %2240 ], [ %3134, %3223 ], [ %3134, %3221 ], [ %3134, %3181 ], [ %3134, %3154 ], [ %2256, %2257 ]
  br i1 %440, label %4246, label %3260

; <label>:3260                                    ; preds = %3243
  %3261 = icmp ult i32 %494, 4
  %3262 = add i32 %54, 72
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %54, 76
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = or i32 %3267, %3264
  %3269 = icmp eq i32 %3268, 0
  br i1 %3269, label %4246, label %3270

; <label>:3270                                    ; preds = %3260
  %3271 = and i32 %3264, 262144
  %3272 = icmp ne i32 %3271, 0
  %3273 = select i1 %3272, float %57, float 1.000000e+00
  %3274 = select i1 %3272, float %58, float 0.000000e+00
  %3275 = select i1 %3272, float %59, float 0.000000e+00
  %3276 = select i1 %3272, float %60, float 1.000000e+00
  %3277 = select i1 %3272, float %61, float %77
  %3278 = select i1 %3272, float %62, float %78
  %3279 = add i32 %54, 332
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = lshr i32 %3281, 16
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = fmul fast float %3283, 0x3F50624DE0000000
  %3285 = add i32 %54, 136
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = lshr i32 %3287, 16
  %3289 = and i32 %3288, 255
  %3290 = lshr i32 %3287, 24
  %3291 = add i32 %54, 340
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 65535
  %3295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3294)  ; LegacyF16ToF32(value)
  %3296 = lshr i32 %3293, 16
  %3297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3296)  ; LegacyF16ToF32(value)
  %3298 = add i32 %54, 80
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = lshr i32 %3300, 22
  %3302 = shl nuw nsw i32 %3301, 5
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = shl i32 %3300, 4
  %3305 = and i32 %3304, 32752
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = lshr i32 %3300, 7
  %3308 = and i32 %3307, 32752
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 3
  %3312 = fmul fast float %3311, 1.000000e+03
  %3313 = fmul fast float %430, %3312
  %3314 = call float @dx.op.unary.f32(i32 22, float %3313)  ; Frc(value)
  %3315 = fadd fast float %3314, %420
  %3316 = fmul fast float %431, %3312
  %3317 = call float @dx.op.unary.f32(i32 22, float %3316)  ; Frc(value)
  %3318 = fadd fast float %3317, %422
  %3319 = fmul fast float %3284, %3312
  %3320 = call float @dx.op.unary.f32(i32 22, float %3319)  ; Frc(value)
  %3321 = fmul fast float %3320, 0x401921FB60000000
  %3322 = fadd fast float %3321, %3303
  %3323 = call float @dx.op.unary.f32(i32 13, float %3322)  ; Sin(value)
  %3324 = call float @dx.op.unary.f32(i32 12, float %3322)  ; Cos(value)
  %3325 = fsub fast float -0.000000e+00, %3323
  %3326 = fadd fast float %3277, -5.000000e-01
  %3327 = fadd fast float %3278, -5.000000e-01
  %3328 = fmul fast float %3295, %3326
  %3329 = fmul fast float %3297, %3327
  %3330 = fadd fast float %3328, 5.000000e-01
  %3331 = fadd fast float %3329, 5.000000e-01
  %3332 = fmul fast float %3306, %3330
  %3333 = fmul fast float %3309, %3331
  %3334 = fmul fast float %3324, %3332
  %3335 = call float @dx.op.tertiary.f32(i32 46, float %3325, float %3333, float %3334)  ; FMad(a,b,c)
  %3336 = fmul fast float %3323, %3332
  %3337 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3333, float %3336)  ; FMad(a,b,c)
  %3338 = fadd fast float %3315, %3335
  %3339 = fadd fast float %3318, %3337
  %3340 = icmp ugt i32 %3289, 1
  %3341 = icmp ugt i32 %3287, 33554431
  %3342 = or i1 %3341, %3340
  br i1 %3342, label %3343, label %3368

; <label>:3343                                    ; preds = %3270
  %3344 = add i32 %54, 276
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = lshr i32 %3346, 16
  %3348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3347)  ; LegacyF16ToF32(value)
  %3349 = fmul fast float %3311, %3348
  %3350 = call float @dx.op.unary.f32(i32 22, float %3349)  ; Frc(value)
  %3351 = mul nuw nsw i32 %3289, %3290
  %3352 = uitofp i32 %3351 to float
  %3353 = fmul fast float %3350, %3352
  %3354 = call float @dx.op.unary.f32(i32 27, float %3353)  ; Round_ni(value)
  %3355 = fptoui float %3354 to i32
  %3356 = urem i32 %3355, %3289
  %3357 = udiv i32 %3355, %3290
  %3358 = call float @dx.op.unary.f32(i32 22, float %3338)  ; Frc(value)
  %3359 = call float @dx.op.unary.f32(i32 22, float %3339)  ; Frc(value)
  %3360 = uitofp i32 %3356 to float
  %3361 = uitofp i32 %3357 to float
  %3362 = fadd fast float %3358, %3360
  %3363 = fadd fast float %3359, %3361
  %3364 = uitofp i32 %3289 to float
  %3365 = uitofp i32 %3290 to float
  %3366 = fdiv fast float %3362, %3364
  %3367 = fdiv fast float %3363, %3365
  br label %3368

; <label>:3368                                    ; preds = %3343, %3270
  %3369 = phi float [ %3366, %3343 ], [ %3338, %3270 ]
  %3370 = phi float [ %3367, %3343 ], [ %3339, %3270 ]
  %3371 = and i32 %3264, 16777216
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3482, label %3373

; <label>:3373                                    ; preds = %3368
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.CBufRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.CBufRet.f32 %3374, 2
  %3378 = fadd fast float %3375, %158
  %3379 = fadd fast float %3376, %159
  %3380 = fadd fast float %3377, %160
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 0
  %3383 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3384 = icmp eq i32 %55, 65535
  br i1 %3384, label %3479, label %3385

; <label>:3385                                    ; preds = %3373
  %3386 = lshr i32 %55, 1
  %3387 = shl i32 %3386, 2
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = and i32 %55, 1
  %3391 = icmp ne i32 %3390, 0
  %3392 = lshr i32 %3389, 16
  %3393 = and i32 %3389, 65535
  %3394 = select i1 %3391, i32 %3392, i32 %3393
  %3395 = icmp eq i32 %3394, 65535
  br i1 %3395, label %3475, label %3396

; <label>:3396                                    ; preds = %3385
  %3397 = mul nuw nsw i32 %3394, 40
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = add nuw nsw i32 %3397, 12
  %3403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.ResRet.f32 %3403, 2
  %3407 = add nuw nsw i32 %3397, 24
  %3408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 0
  %3410 = extractvalue %dx.types.ResRet.f32 %3408, 1
  %3411 = extractvalue %dx.types.ResRet.f32 %3408, 2
  %3412 = add nuw nsw i32 %3397, 36
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = fsub fast float %3378, %3399
  %3416 = fsub fast float %3379, %3400
  %3417 = fsub fast float %3380, %3401
  %3418 = fmul fast float %3414, %3415
  %3419 = fmul fast float %3414, %3416
  %3420 = fmul fast float %3414, %3417
  %3421 = call float @dx.op.unary.f32(i32 27, float %3418)  ; Round_ni(value)
  %3422 = call float @dx.op.unary.f32(i32 27, float %3419)  ; Round_ni(value)
  %3423 = call float @dx.op.unary.f32(i32 27, float %3420)  ; Round_ni(value)
  %3424 = fadd fast float %3421, 5.000000e-01
  %3425 = fadd fast float %3422, 5.000000e-01
  %3426 = fadd fast float %3423, 5.000000e-01
  %3427 = fmul fast float %3424, %3404
  %3428 = fmul fast float %3425, %3405
  %3429 = fmul fast float %3426, %3406
  %3430 = shl i32 %55, 2
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = add i32 %3432, 0
  %3434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3435 = call float @dx.op.unary.f32(i32 22, float %3427)  ; Frc(value)
  %3436 = call float @dx.op.unary.f32(i32 22, float %3428)  ; Frc(value)
  %3437 = call float @dx.op.unary.f32(i32 22, float %3429)  ; Frc(value)
  %3438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3434, %dx.types.Handle %49, float %3435, float %3436, float %3437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = fmul fast float %3439, 1.023000e+03
  %3443 = fmul fast float %3440, 1.023000e+03
  %3444 = fmul fast float %3441, 1.023000e+03
  %3445 = fadd fast float %3442, 5.000000e-01
  %3446 = fadd fast float %3443, 5.000000e-01
  %3447 = fadd fast float %3444, 5.000000e-01
  %3448 = call float @dx.op.unary.f32(i32 27, float %3445)  ; Round_ni(value)
  %3449 = call float @dx.op.unary.f32(i32 27, float %3446)  ; Round_ni(value)
  %3450 = call float @dx.op.unary.f32(i32 27, float %3447)  ; Round_ni(value)
  %3451 = fsub fast float %3418, %3421
  %3452 = fsub fast float %3419, %3422
  %3453 = fsub fast float %3420, %3423
  %3454 = fmul fast float %3451, 7.500000e-01
  %3455 = fmul fast float %3452, 7.500000e-01
  %3456 = fmul fast float %3453, 7.500000e-01
  %3457 = fadd fast float %3421, 1.250000e-01
  %3458 = fadd fast float %3457, %3454
  %3459 = fadd fast float %3458, %3448
  %3460 = fadd fast float %3422, 1.250000e-01
  %3461 = fadd fast float %3460, %3455
  %3462 = fadd fast float %3461, %3449
  %3463 = fadd fast float %3423, 1.250000e-01
  %3464 = fadd fast float %3463, %3456
  %3465 = fadd fast float %3464, %3450
  %3466 = fmul fast float %3459, %3409
  %3467 = fmul fast float %3462, %3410
  %3468 = fmul fast float %3465, %3411
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3472, %dx.types.Handle %47, float %3466, float %3467, float %3468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  br label %3475

; <label>:3475                                    ; preds = %3396, %3385
  %3476 = phi float [ %3474, %3396 ], [ -1.000000e+00, %3385 ]
  %3477 = fadd fast float %3476, %3383
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  br label %3479

; <label>:3479                                    ; preds = %3475, %3373
  %3480 = phi float [ %3478, %3475 ], [ %3383, %3373 ]
  %3481 = fmul fast float %3480, %489
  br label %3482

; <label>:3482                                    ; preds = %3479, %3368
  %3483 = phi float [ %3481, %3479 ], [ %489, %3368 ]
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = and i32 %3485, 256
  %3487 = icmp eq i32 %3486, 0
  br i1 %3487, label %3534, label %3488

; <label>:3488                                    ; preds = %3482
  %3489 = add i32 %54, 484
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = add i32 %3491, 0
  %3493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3493, %dx.types.Handle %92, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = add i32 %54, 148
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = shl i32 %3498, 4
  %3500 = and i32 %3499, 32752
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = lshr i32 %3498, 7
  %3503 = and i32 %3502, 32752
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = fsub fast float 1.000000e+00, %3483
  %3506 = call float @dx.op.binary.f32(i32 35, float %3505, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3507 = bitcast float %3483 to i32
  %3508 = sitofp i32 %3507 to float
  %3509 = fadd fast float %3508, 0xC1CFBF8940000000
  %3510 = fmul fast float %3504, %3509
  %3511 = fadd fast float %3510, 0x41CFBF8940000000
  %3512 = fptosi float %3511 to i32
  %3513 = bitcast i32 %3512 to float
  %3514 = bitcast float %3506 to i32
  %3515 = sitofp i32 %3514 to float
  %3516 = fadd fast float %3515, 0xC1CFBF8940000000
  %3517 = fmul fast float %3516, %3504
  %3518 = fadd fast float %3517, 0x41CFBF8940000000
  %3519 = fptosi float %3518 to i32
  %3520 = bitcast i32 %3519 to float
  %3521 = fmul fast float %3513, %3501
  %3522 = fmul fast float %3520, %3501
  %3523 = fsub fast float %3506, %3521
  %3524 = fadd fast float %3522, %3506
  %3525 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3526 = call float @dx.op.unary.f32(i32 7, float %3524)  ; Saturate(value)
  %3527 = fsub fast float %3495, %3525
  %3528 = fsub fast float %3526, %3525
  %3529 = bitcast float %3528 to i32
  %3530 = sub nsw i32 2129859010, %3529
  %3531 = bitcast i32 %3530 to float
  %3532 = fmul fast float %3531, %3527
  %3533 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  br label %3534

; <label>:3534                                    ; preds = %3488, %3482
  %3535 = phi float [ %3533, %3488 ], [ %3483, %3482 ]
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = and i32 %3537, 128
  %3539 = icmp eq i32 %3538, 0
  br i1 %3539, label %3556, label %3540

; <label>:3540                                    ; preds = %3534
  %3541 = add i32 %54, 468
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = add i32 %3543, 0
  %3545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3545, %dx.types.Handle %92, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 524288
  %3551 = icmp ne i32 %3550, 0
  %3552 = fcmp fast ogt float %3547, 0x3FE0101020000000
  %3553 = select i1 %3552, float 1.000000e+00, float 0.000000e+00
  %3554 = select i1 %3551, float %3553, float %3547
  %3555 = fmul fast float %3554, %3535
  br label %3556

; <label>:3556                                    ; preds = %3540, %3534
  %3557 = phi float [ %3555, %3540 ], [ %3535, %3534 ]
  %3558 = fcmp fast ult float %3557, 0x3F70101020000000
  br i1 %3558, label %4246, label %3559

; <label>:3559                                    ; preds = %3556
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 16
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3762, label %3564

; <label>:3564                                    ; preds = %3559
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = add i32 %54, 420
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3571, %dx.types.Handle %91, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = extractvalue %dx.types.ResRet.f32 %3572, 3
  %3577 = and i32 %3566, 255
  %3578 = uitofp i32 %3577 to float
  %3579 = lshr i32 %3566, 8
  %3580 = and i32 %3579, 255
  %3581 = uitofp i32 %3580 to float
  %3582 = fmul fast float %3576, %3578
  %3583 = fadd fast float %3582, %3581
  %3584 = fmul fast float %3583, 0x3F70101000000000
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 512
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3597, label %3589

; <label>:3589                                    ; preds = %3564
  %3590 = add i32 %54, 500
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = add i32 %3592, 0
  %3594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3594, %dx.types.Handle %92, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  br label %3597

; <label>:3597                                    ; preds = %3589, %3564
  %3598 = phi float [ %3596, %3589 ], [ 1.000000e+00, %3564 ]
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 33554432
  %3602 = icmp eq i32 %3601, 0
  br i1 %3602, label %3709, label %3603

; <label>:3603                                    ; preds = %3597
  %3604 = add i32 %54, 272
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, 65535
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = lshr i32 %3606, 16
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = add i32 %54, 276
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = and i32 %3613, 65535
  %3615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3614)  ; LegacyF16ToF32(value)
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = lshr i32 %3617, 24
  %3619 = uitofp i32 %3618 to float
  %3620 = fmul fast float %3619, 0x3F70101020000000
  %3621 = and i32 %3617, 255
  %3622 = uitofp i32 %3621 to float
  %3623 = fmul fast float %3622, 0x3F70101020000000
  %3624 = lshr i32 %3617, 8
  %3625 = and i32 %3624, 255
  %3626 = uitofp i32 %3625 to float
  %3627 = fmul fast float %3626, 0x3F70101020000000
  %3628 = lshr i32 %3617, 16
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = fmul fast float %3630, 0x3F70101020000000
  %3632 = add i32 %54, 268
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = lshr i32 %3634, 24
  %3636 = uitofp i32 %3635 to float
  %3637 = fmul fast float %3636, 0x3F70101020000000
  %3638 = and i32 %3634, 255
  %3639 = uitofp i32 %3638 to float
  %3640 = fmul fast float %3639, 0x3F70101020000000
  %3641 = lshr i32 %3634, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = fmul fast float %3643, 0x3F70101020000000
  %3645 = lshr i32 %3634, 16
  %3646 = and i32 %3645, 255
  %3647 = uitofp i32 %3646 to float
  %3648 = fmul fast float %3647, 0x3F70101020000000
  %3649 = bitcast float %3573 to i32
  %3650 = ashr i32 %3649, 1
  %3651 = sub nsw i32 1597463174, %3650
  %3652 = bitcast i32 %3651 to float
  %3653 = fmul fast float %3573, 5.000000e-01
  %3654 = fmul fast float %3652, %3652
  %3655 = fmul fast float %3654, %3653
  %3656 = fsub fast float 1.500000e+00, %3655
  %3657 = fmul fast float %3652, %3573
  %3658 = fmul fast float %3657, %3656
  %3659 = bitcast float %3574 to i32
  %3660 = ashr i32 %3659, 1
  %3661 = sub nsw i32 1597463174, %3660
  %3662 = bitcast i32 %3661 to float
  %3663 = fmul fast float %3574, 5.000000e-01
  %3664 = fmul fast float %3662, %3662
  %3665 = fmul fast float %3664, %3663
  %3666 = fsub fast float 1.500000e+00, %3665
  %3667 = fmul fast float %3662, %3574
  %3668 = fmul fast float %3667, %3666
  %3669 = bitcast float %3575 to i32
  %3670 = ashr i32 %3669, 1
  %3671 = sub nsw i32 1597463174, %3670
  %3672 = bitcast i32 %3671 to float
  %3673 = fmul fast float %3575, 5.000000e-01
  %3674 = fmul fast float %3672, %3672
  %3675 = fmul fast float %3674, %3673
  %3676 = fsub fast float 1.500000e+00, %3675
  %3677 = fmul fast float %3672, %3575
  %3678 = fmul fast float %3677, %3676
  %3679 = fsub fast float %3658, %3640
  %3680 = fsub fast float %3668, %3644
  %3681 = fsub fast float %3678, %3648
  %3682 = fmul fast float %3679, %3608
  %3683 = fmul fast float %3680, %3610
  %3684 = fmul fast float %3681, %3615
  %3685 = fadd fast float %3682, %3623
  %3686 = fadd fast float %3683, %3627
  %3687 = fadd fast float %3684, %3631
  %3688 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3689 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3690 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3691 = fmul fast float %3688, %3688
  %3692 = fmul fast float %3689, %3689
  %3693 = fmul fast float %3690, %3690
  %3694 = fsub fast float %3691, %3573
  %3695 = fsub fast float %3692, %3574
  %3696 = fsub fast float %3693, %3575
  %3697 = fmul fast float %3694, %3598
  %3698 = fmul fast float %3695, %3598
  %3699 = fmul fast float %3696, %3598
  %3700 = fadd fast float %3697, %3573
  %3701 = fadd fast float %3698, %3574
  %3702 = fadd fast float %3699, %3575
  %3703 = fadd fast float %3620, %3584
  %3704 = fsub fast float %3703, %3637
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fsub fast float %3705, %3584
  %3707 = fmul fast float %3706, %3598
  %3708 = fadd fast float %3707, %3584
  br label %3762

; <label>:3709                                    ; preds = %3597
  %3710 = and i32 %3600, 134217728
  %3711 = icmp eq i32 %3710, 0
  br i1 %3711, label %3746, label %3712

; <label>:3712                                    ; preds = %3709
  %3713 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3714 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3715 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3716 = fadd fast float %3713, -5.000000e-01
  %3717 = fadd fast float %3714, -5.000000e-01
  %3718 = fadd fast float %3715, -5.000000e-01
  %3719 = fmul fast float %3716, %3598
  %3720 = fmul fast float %3717, %3598
  %3721 = fmul fast float %3718, %3598
  %3722 = fadd fast float %3719, 5.000000e-01
  %3723 = fadd fast float %3720, 5.000000e-01
  %3724 = fadd fast float %3721, 5.000000e-01
  %3725 = call float @dx.op.unary.f32(i32 24, float %3573)  ; Sqrt(value)
  %3726 = call float @dx.op.unary.f32(i32 24, float %3574)  ; Sqrt(value)
  %3727 = call float @dx.op.unary.f32(i32 24, float %3575)  ; Sqrt(value)
  %3728 = fmul fast float %3722, 2.000000e+00
  %3729 = fsub fast float 1.000000e+00, %3728
  %3730 = fmul fast float %3729, %3725
  %3731 = fadd fast float %3730, %3728
  %3732 = fmul fast float %3731, %3725
  %3733 = fmul fast float %3723, 2.000000e+00
  %3734 = fsub fast float 1.000000e+00, %3733
  %3735 = fmul fast float %3734, %3726
  %3736 = fadd fast float %3735, %3733
  %3737 = fmul fast float %3736, %3726
  %3738 = fmul fast float %3724, 2.000000e+00
  %3739 = fsub fast float 1.000000e+00, %3738
  %3740 = fmul fast float %3739, %3727
  %3741 = fadd fast float %3740, %3738
  %3742 = fmul fast float %3741, %3727
  %3743 = fmul fast float %3732, %3732
  %3744 = fmul fast float %3737, %3737
  %3745 = fmul fast float %3742, %3742
  br label %3762

; <label>:3746                                    ; preds = %3709
  %3747 = fmul fast float %407, %407
  %3748 = fmul fast float %411, %411
  %3749 = fmul fast float %415, %415
  %3750 = fadd fast float %3747, -1.000000e+00
  %3751 = fadd fast float %3748, -1.000000e+00
  %3752 = fadd fast float %3749, -1.000000e+00
  %3753 = fmul fast float %3598, %3750
  %3754 = fmul fast float %3598, %3751
  %3755 = fmul fast float %3598, %3752
  %3756 = fadd fast float %3753, 1.000000e+00
  %3757 = fadd fast float %3754, 1.000000e+00
  %3758 = fadd fast float %3755, 1.000000e+00
  %3759 = fmul fast float %3756, %3573
  %3760 = fmul fast float %3757, %3574
  %3761 = fmul fast float %3758, %3575
  br label %3762

; <label>:3762                                    ; preds = %3746, %3712, %3603, %3559
  %3763 = phi float [ %3708, %3603 ], [ %3584, %3712 ], [ %3584, %3746 ], [ 0x3FA23C0BE0000000, %3559 ]
  %3764 = phi float [ %3700, %3603 ], [ %3743, %3712 ], [ %3759, %3746 ], [ 1.000000e+00, %3559 ]
  %3765 = phi float [ %3701, %3603 ], [ %3744, %3712 ], [ %3760, %3746 ], [ 1.000000e+00, %3559 ]
  %3766 = phi float [ %3702, %3603 ], [ %3745, %3712 ], [ %3761, %3746 ], [ 1.000000e+00, %3559 ]
  %3767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.i32 %3767, 1
  %3769 = and i32 %3768, 1
  %3770 = icmp ne i32 %3769, 0
  %3771 = add i32 %54, 356
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = and i32 %3773, 32
  %3775 = icmp ne i32 %3774, 0
  %3776 = and i1 %3770, %3775
  %3777 = select i1 %3776, float 1.000000e+00, float %3764
  %3778 = select i1 %3776, float 0x3FD3333340000000, float %3765
  %3779 = select i1 %3776, float 0x3FD3333340000000, float %3766
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = and i32 %3781, 32
  %3783 = icmp eq i32 %3782, 0
  br i1 %3783, label %3856, label %3784

; <label>:3784                                    ; preds = %3762
  %3785 = add i32 %54, 140
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = add i32 %54, 436
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = add i32 %3790, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3792, %dx.types.Handle %91, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = and i32 %3787, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = lshr i32 %3787, 8
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = lshr i32 %3787, 16
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = fmul fast float %3805, 0x3F70101000000000
  %3807 = fmul fast float %3794, %3799
  %3808 = fadd fast float %3807, %3802
  %3809 = fmul fast float %3808, 0x3F70101000000000
  %3810 = fadd fast float %3795, -5.000000e-01
  %3811 = fadd fast float %3797, -5.000000e-01
  %3812 = fmul fast float %3810, %3806
  %3813 = fmul fast float %3811, %3806
  %3814 = fadd fast float %3812, 5.000000e-01
  %3815 = fadd fast float %3813, 5.000000e-01
  %3816 = fmul fast float %3814, 2.000000e+00
  %3817 = fadd fast float %3816, -1.000000e+00
  %3818 = fmul fast float %3815, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fadd fast float %3817, %3819
  %3821 = fmul fast float %3820, 5.000000e-01
  %3822 = fsub fast float %3817, %3819
  %3823 = fmul fast float %3822, 5.000000e-01
  %3824 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3827 = fsub fast float %3825, %3826
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3823, float %3827, float %3821, float %3823, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3821, %3829
  %3831 = fmul fast float %3823, %3829
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = and i32 %3833, 67108864
  %3835 = icmp eq i32 %3834, 0
  br i1 %3835, label %3852, label %3836

; <label>:3836                                    ; preds = %3784
  %3837 = add i32 %54, 328
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = and i32 %3839, 65535
  %3841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3840)  ; LegacyF16ToF32(value)
  %3842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.i32 %3842, 0
  %3844 = and i32 %3843, 65535
  %3845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3844)  ; LegacyF16ToF32(value)
  %3846 = lshr i32 %3839, 16
  %3847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3846)  ; LegacyF16ToF32(value)
  %3848 = fsub fast float %3809, %3847
  %3849 = fmul fast float %3848, %3841
  %3850 = fadd fast float %3849, %3845
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  br label %3852

; <label>:3852                                    ; preds = %3836, %3784
  %3853 = phi float [ %3851, %3836 ], [ %3809, %3784 ]
  %3854 = call float @dx.op.dot2.f32(i32 54, float %3830, float %3831, float %3273, float %3274)  ; Dot2(ax,ay,bx,by)
  %3855 = call float @dx.op.dot2.f32(i32 54, float %3830, float %3831, float %3275, float %3276)  ; Dot2(ax,ay,bx,by)
  br label %3856

; <label>:3856                                    ; preds = %3852, %3762
  %3857 = phi float [ %3853, %3852 ], [ 0x3FD6666660000000, %3762 ]
  %3858 = phi float [ %3854, %3852 ], [ 0.000000e+00, %3762 ]
  %3859 = phi float [ %3855, %3852 ], [ 0.000000e+00, %3762 ]
  %3860 = phi float [ %3796, %3852 ], [ 1.000000e+00, %3762 ]
  %3861 = add i32 %54, 208
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = lshr i32 %3863, 22
  %3865 = shl nuw nsw i32 %3864, 5
  %3866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3865)  ; LegacyF16ToF32(value)
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = and i32 %3868, 64
  %3870 = icmp eq i32 %3869, 0
  br i1 %3870, label %3904, label %3871

; <label>:3871                                    ; preds = %3856
  %3872 = add i32 %54, 452
  %3873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.i32 %3873, 0
  %3875 = add i32 %3874, 0
  %3876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.i32 %3877, 0
  %3879 = and i32 %3878, 131072
  %3880 = icmp eq i32 %3879, 0
  %3881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3876, %dx.types.Handle %91, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.ResRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.ResRet.f32 %3881, 2
  %3885 = fmul fast float %3882, %395
  %3886 = fmul fast float %3883, %398
  %3887 = fmul fast float %3884, %401
  br i1 %3880, label %3894, label %3888

; <label>:3888                                    ; preds = %3871
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = fmul fast float %3890, %3885
  %3892 = fmul fast float %3890, %3886
  %3893 = fmul fast float %3890, %3887
  br label %3894

; <label>:3894                                    ; preds = %3888, %3871
  %3895 = phi float [ %3891, %3888 ], [ %3885, %3871 ]
  %3896 = phi float [ %3892, %3888 ], [ %3886, %3871 ]
  %3897 = phi float [ %3893, %3888 ], [ %3887, %3871 ]
  %3898 = fmul fast float %3895, %3866
  %3899 = select i1 %252, float %3898, float %3895
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3896, float %3897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = select i1 %252, float 0.000000e+00, float %3895
  %3902 = select i1 %252, float %3900, float %3896
  %3903 = select i1 %252, float 0.000000e+00, float %3897
  br label %3904

; <label>:3904                                    ; preds = %3894, %3856
  %3905 = phi float [ %3901, %3894 ], [ 0.000000e+00, %3856 ]
  %3906 = phi float [ %3902, %3894 ], [ 0.000000e+00, %3856 ]
  %3907 = phi float [ %3903, %3894 ], [ 0.000000e+00, %3856 ]
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, 1024
  %3911 = icmp eq i32 %3910, 0
  br i1 %3911, label %3942, label %3912

; <label>:3912                                    ; preds = %3904
  %3913 = add i32 %54, 200
  %3914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.i32 %3914, 0
  %3916 = and i32 %3915, 255
  %3917 = uitofp i32 %3916 to float
  %3918 = fmul fast float %3917, 0x3F70101020000000
  %3919 = lshr i32 %3915, 8
  %3920 = and i32 %3919, 255
  %3921 = uitofp i32 %3920 to float
  %3922 = fmul fast float %3921, 0x3F70101020000000
  %3923 = lshr i32 %3915, 16
  %3924 = and i32 %3923, 255
  %3925 = uitofp i32 %3924 to float
  %3926 = fmul fast float %3925, 0x3F70101020000000
  %3927 = fmul fast float %3918, %3918
  %3928 = fmul fast float %3922, %3922
  %3929 = fmul fast float %3926, %3926
  %3930 = add i32 %54, 516
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = add i32 %3932, 0
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3934, %dx.types.Handle %92, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = fmul fast float %3927, %3936
  %3940 = fmul fast float %3928, %3937
  %3941 = fmul fast float %3929, %3938
  br label %3942

; <label>:3942                                    ; preds = %3912, %3904
  %3943 = phi float [ %3939, %3912 ], [ 0.000000e+00, %3904 ]
  %3944 = phi float [ %3940, %3912 ], [ 0.000000e+00, %3904 ]
  %3945 = phi float [ %3941, %3912 ], [ 0.000000e+00, %3904 ]
  %3946 = fcmp fast ogt float %3943, 0.000000e+00
  %3947 = fcmp fast ogt float %3944, 0.000000e+00
  %3948 = fcmp fast ogt float %3945, 0.000000e+00
  %3949 = call float @dx.op.unary.f32(i32 23, float %3943)  ; Log(value)
  %3950 = call float @dx.op.unary.f32(i32 23, float %3944)  ; Log(value)
  %3951 = call float @dx.op.unary.f32(i32 23, float %3945)  ; Log(value)
  %3952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.i32 %3952, 0
  %3954 = lshr i32 %3953, 7
  %3955 = and i32 %3954, 32752
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = fmul fast float %3949, 0xBFE62E4300000000
  %3958 = fmul fast float %3957, %3956
  %3959 = fmul fast float %3950, 0xBFE62E4300000000
  %3960 = fmul fast float %3959, %3956
  %3961 = fmul fast float %3951, 0xBFE62E4300000000
  %3962 = fmul fast float %3961, %3956
  %3963 = select i1 %3946, float %3958, float 1.270000e+02
  %3964 = select i1 %3947, float %3960, float 1.270000e+02
  %3965 = select i1 %3948, float %3962, float 1.270000e+02
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = and i32 %3967, 10240
  %3969 = icmp eq i32 %3968, 0
  br i1 %3969, label %3990, label %3970

; <label>:3970                                    ; preds = %3942
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = and i32 %3972, 2048
  %3974 = icmp eq i32 %3973, 0
  br i1 %3974, label %3990, label %3975

; <label>:3975                                    ; preds = %3970
  %3976 = add i32 %54, 532
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = add i32 %3978, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3980, %dx.types.Handle %92, float %3369, float %3370, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = shl i32 %3984, 4
  %3986 = and i32 %3985, 32752
  %3987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3986)  ; LegacyF16ToF32(value)
  %3988 = fmul fast float %3987, %3982
  %3989 = call float @dx.op.binary.f32(i32 35, float %3988, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3990

; <label>:3990                                    ; preds = %3975, %3970, %3942
  %3991 = phi float [ %3989, %3975 ], [ 0x3F70101020000000, %3970 ], [ 0x3F70101020000000, %3942 ]
  %3992 = add i32 %54, 144
  %3993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.i32 %3993, 0
  %3995 = and i32 %3994, 255
  %3996 = uitofp i32 %3995 to float
  %3997 = lshr i32 %3994, 8
  %3998 = and i32 %3997, 255
  %3999 = uitofp i32 %3998 to float
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3777, float %3778, float %3779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = fmul fast float %3999, %4000
  %4002 = fadd fast float %4001, %3996
  %4003 = fmul fast float %4002, 0x3F70101020000000
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  br i1 %3261, label %4005, label %4040

; <label>:4005                                    ; preds = %3990
  %4006 = fmul fast float %3991, 2.000000e+00
  %4007 = fcmp fast olt float %3963, 1.270000e+02
  %4008 = fcmp fast olt float %3964, 1.270000e+02
  %4009 = fcmp fast olt float %3965, 1.270000e+02
  %4010 = fmul fast float %3963, 0xBFF7154760000000
  %4011 = fmul fast float %4010, %4006
  %4012 = fmul fast float %3964, 0xBFF7154760000000
  %4013 = fmul fast float %4012, %4006
  %4014 = fmul fast float %3965, 0xBFF7154760000000
  %4015 = fmul fast float %4014, %4006
  %4016 = call float @dx.op.unary.f32(i32 21, float %4011)  ; Exp(value)
  %4017 = call float @dx.op.unary.f32(i32 21, float %4013)  ; Exp(value)
  %4018 = call float @dx.op.unary.f32(i32 21, float %4015)  ; Exp(value)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4020 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4021 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4022 = fadd fast float %4019, -1.000000e+00
  %4023 = select i1 %4007, float %4022, float -1.000000e+00
  %4024 = fadd fast float %4020, -1.000000e+00
  %4025 = select i1 %4008, float %4024, float -1.000000e+00
  %4026 = fadd fast float %4021, -1.000000e+00
  %4027 = select i1 %4009, float %4026, float -1.000000e+00
  %4028 = fmul fast float %4023, %3557
  %4029 = fmul fast float %4025, %3557
  %4030 = fmul fast float %4027, %3557
  %4031 = fadd fast float %4028, 1.000000e+00
  %4032 = fadd fast float %4029, 1.000000e+00
  %4033 = fadd fast float %4030, 1.000000e+00
  %4034 = fmul fast float %4031, %3246
  %4035 = fmul fast float %4032, %3247
  %4036 = fmul fast float %4033, %3248
  %4037 = fmul fast float %4031, %3249
  %4038 = fmul fast float %4032, %3250
  %4039 = fmul fast float %4033, %3251
  br label %4040

; <label>:4040                                    ; preds = %4005, %3990
  %4041 = phi float [ %4034, %4005 ], [ %3246, %3990 ]
  %4042 = phi float [ %4035, %4005 ], [ %3247, %3990 ]
  %4043 = phi float [ %4036, %4005 ], [ %3248, %3990 ]
  %4044 = phi float [ %4037, %4005 ], [ %3249, %3990 ]
  %4045 = phi float [ %4038, %4005 ], [ %3250, %3990 ]
  %4046 = phi float [ %4039, %4005 ], [ %3251, %3990 ]
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = and i32 %4048, 3
  %4050 = icmp eq i32 %4049, 3
  br i1 %4050, label %4129, label %4051

; <label>:4051                                    ; preds = %4040
  %4052 = and i32 %4048, 16
  %4053 = icmp ne i32 %4052, 0
  %4054 = select i1 %4053, float %3557, float 0.000000e+00
  %4055 = icmp eq i32 %4049, 0
  br i1 %4055, label %4056, label %4084

; <label>:4056                                    ; preds = %4051
  %4057 = and i32 %4048, 64
  %4058 = icmp ne i32 %4057, 0
  %4059 = select i1 %4058, float %3557, float 0.000000e+00
  %4060 = fsub fast float %3777, %4041
  %4061 = fsub fast float %3778, %4042
  %4062 = fsub fast float %3779, %4043
  %4063 = fmul fast float %4054, %4060
  %4064 = fmul fast float %4054, %4061
  %4065 = fmul fast float %4054, %4062
  %4066 = fadd fast float %4063, %4041
  %4067 = fadd fast float %4064, %4042
  %4068 = fadd fast float %4065, %4043
  %4069 = fsub fast float %3763, %3255
  %4070 = fmul fast float %4054, %4069
  %4071 = fadd fast float %4070, %3255
  %4072 = fsub fast float %3905, %4044
  %4073 = fsub fast float %3906, %4045
  %4074 = fsub fast float %3907, %4046
  %4075 = fmul fast float %4059, %4072
  %4076 = fmul fast float %4059, %4073
  %4077 = fmul fast float %4059, %4074
  %4078 = fadd fast float %4075, %4044
  %4079 = fadd fast float %4076, %4045
  %4080 = fadd fast float %4077, %4046
  %4081 = fsub fast float %4004, %3259
  %4082 = fmul fast float %4054, %4081
  %4083 = fadd fast float %4082, %3259
  br label %4129

; <label>:4084                                    ; preds = %4051
  %4085 = icmp eq i32 %4049, 1
  br i1 %4085, label %4086, label %4099

; <label>:4086                                    ; preds = %4084
  %4087 = fadd fast float %3777, -1.000000e+00
  %4088 = fadd fast float %3778, -1.000000e+00
  %4089 = fadd fast float %3779, -1.000000e+00
  %4090 = fmul fast float %4054, %4087
  %4091 = fmul fast float %4054, %4088
  %4092 = fmul fast float %4054, %4089
  %4093 = fadd fast float %4090, 1.000000e+00
  %4094 = fadd fast float %4091, 1.000000e+00
  %4095 = fadd fast float %4092, 1.000000e+00
  %4096 = fmul fast float %4093, %4041
  %4097 = fmul fast float %4094, %4042
  %4098 = fmul fast float %4095, %4043
  br label %4129

; <label>:4099                                    ; preds = %4084
  %4100 = icmp eq i32 %4049, 2
  br i1 %4100, label %4101, label %4129

; <label>:4101                                    ; preds = %4099
  %4102 = call float @dx.op.unary.f32(i32 24, float %3777)  ; Sqrt(value)
  %4103 = call float @dx.op.unary.f32(i32 24, float %3778)  ; Sqrt(value)
  %4104 = call float @dx.op.unary.f32(i32 24, float %3779)  ; Sqrt(value)
  %4105 = fadd fast float %4102, -5.000000e-01
  %4106 = fadd fast float %4103, -5.000000e-01
  %4107 = fadd fast float %4104, -5.000000e-01
  %4108 = fmul fast float %4105, %4054
  %4109 = fmul fast float %4106, %4054
  %4110 = fmul fast float %4107, %4054
  %4111 = fadd fast float %4108, 5.000000e-01
  %4112 = fadd fast float %4109, 5.000000e-01
  %4113 = fadd fast float %4110, 5.000000e-01
  %4114 = fmul fast float %4111, 2.000000e+00
  %4115 = fsub fast float 1.000000e+00, %4114
  %4116 = fmul fast float %4115, %4041
  %4117 = fadd fast float %4116, %4114
  %4118 = fmul fast float %4117, %4041
  %4119 = fmul fast float %4112, 2.000000e+00
  %4120 = fsub fast float 1.000000e+00, %4119
  %4121 = fmul fast float %4120, %4042
  %4122 = fadd fast float %4121, %4119
  %4123 = fmul fast float %4122, %4042
  %4124 = fmul fast float %4113, 2.000000e+00
  %4125 = fsub fast float 1.000000e+00, %4124
  %4126 = fmul fast float %4125, %4043
  %4127 = fadd fast float %4126, %4124
  %4128 = fmul fast float %4127, %4043
  br label %4129

; <label>:4129                                    ; preds = %4101, %4099, %4086, %4056, %4040
  %4130 = phi float [ %4041, %4040 ], [ %4118, %4101 ], [ %4041, %4099 ], [ %4096, %4086 ], [ %4066, %4056 ]
  %4131 = phi float [ %4042, %4040 ], [ %4123, %4101 ], [ %4042, %4099 ], [ %4097, %4086 ], [ %4067, %4056 ]
  %4132 = phi float [ %4043, %4040 ], [ %4128, %4101 ], [ %4043, %4099 ], [ %4098, %4086 ], [ %4068, %4056 ]
  %4133 = phi float [ %4044, %4040 ], [ %4044, %4101 ], [ %4044, %4099 ], [ %4044, %4086 ], [ %4078, %4056 ]
  %4134 = phi float [ %4045, %4040 ], [ %4045, %4101 ], [ %4045, %4099 ], [ %4045, %4086 ], [ %4079, %4056 ]
  %4135 = phi float [ %4046, %4040 ], [ %4046, %4101 ], [ %4046, %4099 ], [ %4046, %4086 ], [ %4080, %4056 ]
  %4136 = phi float [ %3255, %4040 ], [ %3255, %4101 ], [ %3255, %4099 ], [ %3255, %4086 ], [ %4071, %4056 ]
  %4137 = phi float [ %3259, %4040 ], [ %3259, %4101 ], [ %3259, %4099 ], [ %3259, %4086 ], [ %4083, %4056 ]
  %4138 = and i32 %4048, 12
  %4139 = icmp eq i32 %4138, 12
  br i1 %4139, label %4246, label %4140

; <label>:4140                                    ; preds = %4129
  %4141 = and i32 %4048, 2097184
  %4142 = icmp eq i32 %4141, 2097184
  %4143 = select i1 %4142, float %3557, float 0.000000e+00
  %4144 = and i32 %4048, 4194336
  %4145 = icmp eq i32 %4144, 4194336
  %4146 = select i1 %4145, float %3557, float 0.000000e+00
  %4147 = and i32 %4048, 8388640
  %4148 = icmp eq i32 %4147, 8388640
  %4149 = select i1 %4148, float %3557, float 0.000000e+00
  %4150 = and i32 %4048, 1024
  %4151 = icmp ne i32 %4150, 0
  %4152 = select i1 %4151, float %3557, float 0.000000e+00
  %4153 = and i32 %4048, 2048
  %4154 = icmp ne i32 %4153, 0
  %4155 = select i1 %4154, float %3557, float 0.000000e+00
  %4156 = icmp eq i32 %4138, 0
  br i1 %4156, label %4157, label %4182

; <label>:4157                                    ; preds = %4140
  %4158 = fsub fast float %3858, %3244
  %4159 = fsub fast float %3859, %3245
  %4160 = fmul fast float %4143, %4158
  %4161 = fmul fast float %4143, %4159
  %4162 = fadd fast float %4160, %3244
  %4163 = fadd fast float %4161, %3245
  %4164 = fsub fast float %3860, %3257
  %4165 = fmul fast float %4146, %4164
  %4166 = fadd fast float %4165, %3257
  %4167 = fsub fast float %3857, %3256
  %4168 = fmul fast float %4149, %4167
  %4169 = fadd fast float %4168, %3256
  %4170 = fsub fast float %3963, %3252
  %4171 = fsub fast float %3964, %3253
  %4172 = fsub fast float %3965, %3254
  %4173 = fmul fast float %4152, %4170
  %4174 = fmul fast float %4152, %4171
  %4175 = fmul fast float %4152, %4172
  %4176 = fadd fast float %4173, %3252
  %4177 = fadd fast float %4174, %3253
  %4178 = fadd fast float %4175, %3254
  %4179 = fsub fast float %3991, %3258
  %4180 = fmul fast float %4155, %4179
  %4181 = fadd fast float %4180, %3258
  br label %4246

; <label>:4182                                    ; preds = %4140
  %4183 = icmp eq i32 %4138, 4
  br i1 %4183, label %4184, label %4224

; <label>:4184                                    ; preds = %4182
  %4185 = fmul fast float %4143, %3858
  %4186 = fmul fast float %4143, %3859
  %4187 = fadd fast float %4185, %3244
  %4188 = fadd fast float %4186, %3245
  %4189 = call float @dx.op.binary.f32(i32 36, float %3257, float %3860)  ; FMin(a,b)
  %4190 = fsub fast float %4189, %3257
  %4191 = fmul fast float %4190, %4146
  %4192 = fadd fast float %4191, %3257
  %4193 = fadd fast float %3857, %3256
  %4194 = fmul fast float %4193, 0x3FF337FAE0000000
  %4195 = fmul fast float %3256, %3256
  %4196 = fmul fast float %3857, %3857
  %4197 = fadd fast float %4196, %4195
  %4198 = fmul fast float %4197, 0x3FE5152B00000000
  %4199 = fmul fast float %3256, 0xBFCC1F85E0000000
  %4200 = fmul fast float %4199, %3857
  %4201 = fadd fast float %4200, 0xBFE1363700000000
  %4202 = fadd fast float %4201, %4194
  %4203 = fsub fast float %4202, %4198
  %4204 = fmul fast float %4193, 0x3FBA6F0D00000000
  %4205 = fmul fast float %4197, 0x3FD0432880000000
  %4206 = fmul fast float %3256, 0xBFEF110800000000
  %4207 = fmul fast float %4206, %3857
  %4208 = fadd fast float %4207, 1.000000e+00
  %4209 = fsub fast float %4208, %4204
  %4210 = fadd fast float %4209, %4205
  %4211 = fdiv fast float %4203, %4210
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = fsub fast float %4212, %3256
  %4214 = fmul fast float %4213, %4149
  %4215 = fadd fast float %4214, %3256
  %4216 = fmul fast float %4152, %3963
  %4217 = fmul fast float %4152, %3964
  %4218 = fmul fast float %4152, %3965
  %4219 = fadd fast float %4216, %3252
  %4220 = fadd fast float %4217, %3253
  %4221 = fadd fast float %4218, %3254
  %4222 = fmul fast float %4155, %3991
  %4223 = fadd fast float %4222, %3258
  br label %4246

; <label>:4224                                    ; preds = %4182
  %4225 = icmp eq i32 %4138, 8
  br i1 %4225, label %4226, label %4246

; <label>:4226                                    ; preds = %4224
  %4227 = fmul fast float %4143, %3858
  %4228 = fmul fast float %4143, %3859
  %4229 = fadd fast float %4227, %3244
  %4230 = fadd fast float %4228, %3245
  %4231 = call float @dx.op.binary.f32(i32 36, float %3257, float %3860)  ; FMin(a,b)
  %4232 = fsub fast float %4231, %3257
  %4233 = fmul fast float %4232, %4146
  %4234 = fadd fast float %4233, %3257
  %4235 = fsub fast float %3857, %3256
  %4236 = fmul fast float %4149, %4235
  %4237 = fadd fast float %4236, %3256
  %4238 = fmul fast float %4152, %3963
  %4239 = fmul fast float %4152, %3964
  %4240 = fmul fast float %4152, %3965
  %4241 = fadd fast float %4238, %3252
  %4242 = fadd fast float %4239, %3253
  %4243 = fadd fast float %4240, %3254
  %4244 = fmul fast float %4155, %3991
  %4245 = fadd fast float %4244, %3258
  br label %4246

; <label>:4246                                    ; preds = %4226, %4224, %4184, %4157, %4129, %3556, %3260, %3243
  %4247 = phi float [ %3244, %4129 ], [ %3244, %3556 ], [ %3244, %3243 ], [ %3244, %3260 ], [ %4162, %4157 ], [ %4187, %4184 ], [ %3244, %4224 ], [ %4229, %4226 ]
  %4248 = phi float [ %3245, %4129 ], [ %3245, %3556 ], [ %3245, %3243 ], [ %3245, %3260 ], [ %4163, %4157 ], [ %4188, %4184 ], [ %3245, %4224 ], [ %4230, %4226 ]
  %4249 = phi float [ %4130, %4129 ], [ %3246, %3556 ], [ %3246, %3243 ], [ %3246, %3260 ], [ %4130, %4157 ], [ %4130, %4184 ], [ %4130, %4224 ], [ %4130, %4226 ]
  %4250 = phi float [ %4131, %4129 ], [ %3247, %3556 ], [ %3247, %3243 ], [ %3247, %3260 ], [ %4131, %4157 ], [ %4131, %4184 ], [ %4131, %4224 ], [ %4131, %4226 ]
  %4251 = phi float [ %4132, %4129 ], [ %3248, %3556 ], [ %3248, %3243 ], [ %3248, %3260 ], [ %4132, %4157 ], [ %4132, %4184 ], [ %4132, %4224 ], [ %4132, %4226 ]
  %4252 = phi float [ %4133, %4129 ], [ %3249, %3556 ], [ %3249, %3243 ], [ %3249, %3260 ], [ %4133, %4157 ], [ %4133, %4184 ], [ %4133, %4224 ], [ %4133, %4226 ]
  %4253 = phi float [ %4134, %4129 ], [ %3250, %3556 ], [ %3250, %3243 ], [ %3250, %3260 ], [ %4134, %4157 ], [ %4134, %4184 ], [ %4134, %4224 ], [ %4134, %4226 ]
  %4254 = phi float [ %4135, %4129 ], [ %3251, %3556 ], [ %3251, %3243 ], [ %3251, %3260 ], [ %4135, %4157 ], [ %4135, %4184 ], [ %4135, %4224 ], [ %4135, %4226 ]
  %4255 = phi float [ %3252, %4129 ], [ %3252, %3556 ], [ %3252, %3243 ], [ %3252, %3260 ], [ %4176, %4157 ], [ %4219, %4184 ], [ %3252, %4224 ], [ %4241, %4226 ]
  %4256 = phi float [ %3253, %4129 ], [ %3253, %3556 ], [ %3253, %3243 ], [ %3253, %3260 ], [ %4177, %4157 ], [ %4220, %4184 ], [ %3253, %4224 ], [ %4242, %4226 ]
  %4257 = phi float [ %3254, %4129 ], [ %3254, %3556 ], [ %3254, %3243 ], [ %3254, %3260 ], [ %4178, %4157 ], [ %4221, %4184 ], [ %3254, %4224 ], [ %4243, %4226 ]
  %4258 = phi float [ %4136, %4129 ], [ %3255, %3556 ], [ %3255, %3243 ], [ %3255, %3260 ], [ %4136, %4157 ], [ %4136, %4184 ], [ %4136, %4224 ], [ %4136, %4226 ]
  %4259 = phi float [ %3256, %4129 ], [ %3256, %3556 ], [ %3256, %3243 ], [ %3256, %3260 ], [ %4169, %4157 ], [ %4215, %4184 ], [ %3256, %4224 ], [ %4237, %4226 ]
  %4260 = phi float [ %3257, %4129 ], [ %3257, %3556 ], [ %3257, %3243 ], [ %3257, %3260 ], [ %4166, %4157 ], [ %4192, %4184 ], [ %3257, %4224 ], [ %4234, %4226 ]
  %4261 = phi float [ %3258, %4129 ], [ %3258, %3556 ], [ %3258, %3243 ], [ %3258, %3260 ], [ %4181, %4157 ], [ %4223, %4184 ], [ %3258, %4224 ], [ %4245, %4226 ]
  %4262 = phi float [ %4137, %4129 ], [ %3259, %3556 ], [ %3259, %3243 ], [ %3259, %3260 ], [ %4137, %4157 ], [ %4137, %4184 ], [ %4137, %4224 ], [ %4137, %4226 ]
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 0
  %4265 = call float @dx.op.dot2.f32(i32 54, float %4247, float %4248, float %4247, float %4248)  ; Dot2(ax,ay,bx,by)
  %4266 = fmul fast float %4265, 0x3FE3333340000000
  %4267 = fsub fast float 1.000000e+00, %4266
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4267, float %4247, float %4248, float %4267)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = call float @dx.op.unary.f32(i32 25, float %4268)  ; Rsqrt(value)
  %4270 = fmul fast float %4269, %4247
  %4271 = fmul fast float %4269, %4248
  %4272 = fmul fast float %4267, %4269
  %4273 = fmul fast float %4272, %102
  %4274 = fmul fast float %4272, %103
  %4275 = fmul fast float %4272, %104
  %4276 = fmul fast float %4270, %70
  %4277 = fmul fast float %4270, %71
  %4278 = fmul fast float %4270, %72
  %4279 = fadd fast float %4273, %4276
  %4280 = fadd fast float %4274, %4277
  %4281 = fadd fast float %4275, %4278
  %4282 = fmul fast float %114, %4271
  %4283 = fmul fast float %115, %4271
  %4284 = fmul fast float %116, %4271
  %4285 = fadd fast float %4279, %4282
  %4286 = fadd fast float %4280, %4283
  %4287 = fadd fast float %4281, %4284
  %4288 = call float @dx.op.dot3.f32(i32 55, float %4285, float %4286, float %4287, float %4285, float %4286, float %4287)  ; Dot3(ax,ay,az,bx,by,bz)
  %4289 = call float @dx.op.unary.f32(i32 25, float %4288)  ; Rsqrt(value)
  %4290 = fmul fast float %4285, %4289
  %4291 = fmul fast float %4286, %4289
  %4292 = fmul fast float %4287, %4289
  %4293 = and i32 %56, 1
  %4294 = icmp eq i32 %4293, 0
  br i1 %4294, label %4295, label %4834

; <label>:4295                                    ; preds = %4246
  %4296 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4297 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4298 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %4299 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4300 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4301 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %4302 = fadd fast float %4296, %158
  %4303 = fadd fast float %4297, %159
  %4304 = fadd fast float %4298, %160
  %4305 = fadd fast float %4299, %158
  %4306 = fadd fast float %4300, %159
  %4307 = fadd fast float %4301, %160
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4315 = fmul fast float %4309, %95
  %4316 = fmul fast float %4315, %4313
  %4317 = fmul fast float %4310, %96
  %4318 = fmul fast float %4317, %4314
  %4319 = fptoui float %4316 to i32
  %4320 = fptoui float %4318 to i32
  %4321 = fadd fast float %4309, -1.000000e+00
  %4322 = fadd fast float %4310, -1.000000e+00
  %4323 = fptoui float %4321 to i32
  %4324 = fptoui float %4322 to i32
  %4325 = call i32 @dx.op.binary.i32(i32 40, i32 %4319, i32 %4323)  ; UMin(a,b)
  %4326 = call i32 @dx.op.binary.i32(i32 40, i32 %4320, i32 %4324)  ; UMin(a,b)
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4329 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4330 = fmul fast float %4328, %86
  %4331 = fsub fast float %4330, %4329
  %4332 = fadd fast float %4311, -1.000000e+00
  %4333 = call float @dx.op.binary.f32(i32 36, float %4331, float %4332)  ; FMin(a,b)
  %4334 = fptoui float %4333 to i32
  %4335 = fptoui float %4309 to i32
  %4336 = fptoui float %4310 to i32
  %4337 = mul i32 %4334, %4336
  %4338 = add i32 %4337, %4326
  %4339 = mul i32 %4338, %4335
  %4340 = add i32 %4339, %4325
  %4341 = shl i32 %4340, 2
  %4342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.i32 %4342, 0
  %4344 = and i32 %4343, 1023
  %4345 = lshr i32 %4343, 10
  %4346 = icmp eq i32 %4344, 0
  br i1 %4346, label %4800, label %4347

; <label>:4347                                    ; preds = %4295
  %4348 = and i32 %4343, 1023
  br label %4349

; <label>:4349                                    ; preds = %4478, %4347
  %4350 = phi i32 [ %4428, %4478 ], [ 0, %4347 ]
  %4351 = phi float [ %4479, %4478 ], [ 0.000000e+00, %4347 ]
  %4352 = phi float [ %4480, %4478 ], [ %4264, %4347 ]
  %4353 = phi float [ %4481, %4478 ], [ %4262, %4347 ]
  %4354 = phi float [ %4482, %4478 ], [ %4255, %4347 ]
  %4355 = phi float [ %4483, %4478 ], [ %4256, %4347 ]
  %4356 = phi float [ %4484, %4478 ], [ %4257, %4347 ]
  %4357 = phi float [ %4485, %4478 ], [ 0.000000e+00, %4347 ]
  %4358 = phi float [ %4486, %4478 ], [ 0.000000e+00, %4347 ]
  %4359 = phi float [ %4487, %4478 ], [ %4252, %4347 ]
  %4360 = phi float [ %4488, %4478 ], [ %4253, %4347 ]
  %4361 = phi float [ %4489, %4478 ], [ %4254, %4347 ]
  %4362 = phi float [ %4490, %4478 ], [ %4290, %4347 ]
  %4363 = phi float [ %4491, %4478 ], [ %4291, %4347 ]
  %4364 = phi float [ %4492, %4478 ], [ %4292, %4347 ]
  %4365 = phi float [ %4493, %4478 ], [ %4260, %4347 ]
  %4366 = phi float [ %4494, %4478 ], [ %4259, %4347 ]
  %4367 = phi float [ %4495, %4478 ], [ 0.000000e+00, %4347 ]
  %4368 = phi float [ %4496, %4478 ], [ %4258, %4347 ]
  %4369 = phi float [ %4497, %4478 ], [ %4249, %4347 ]
  %4370 = phi float [ %4498, %4478 ], [ %4250, %4347 ]
  %4371 = phi float [ %4499, %4478 ], [ %4251, %4347 ]
  %4372 = add nuw nsw i32 %4350, %4345
  %4373 = shl i32 %4372, 2
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = shl i32 %4375, 8
  %4377 = or i32 %4376, 48
  %4378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4382 = extractvalue %dx.types.ResRet.f32 %4378, 3
  %4383 = or i32 %4376, 64
  %4384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.i32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.i32 %4384, 1
  %4387 = or i32 %4376, 80
  %4388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4391 = or i32 %4376, 96
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = extractvalue %dx.types.ResRet.f32 %4392, 3
  %4397 = or i32 %4376, 112
  %4398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 2
  %4400 = or i32 %4376, 128
  %4401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4400, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.ResRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.ResRet.f32 %4401, 2
  %4405 = extractvalue %dx.types.ResRet.f32 %4401, 3
  %4406 = or i32 %4376, 144
  %4407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.ResRet.f32 %4407, 3
  %4412 = or i32 %4376, 160
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = or i32 %4376, 192
  %4419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4420 = extractvalue %dx.types.ResRet.i32 %4419, 0
  %4421 = or i32 %4376, 208
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = or i32 %4376, 248
  %4425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = add nuw nsw i32 %4350, 1
  %4429 = bitcast float %4382 to i32
  %4430 = and i32 %4429, 512
  %4431 = icmp eq i32 %4430, 0
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.ResRet.f32 %4432, 3
  %4437 = call float @dx.op.dot4.f32(i32 56, float %4433, float %4434, float %4435, float %4436, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4438 = or i32 %4376, 16
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.ResRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.ResRet.f32 %4439, 2
  %4443 = extractvalue %dx.types.ResRet.f32 %4439, 3
  %4444 = call float @dx.op.dot4.f32(i32 56, float %4440, float %4441, float %4442, float %4443, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4445 = or i32 %4376, 32
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = extractvalue %dx.types.ResRet.f32 %4446, 3
  %4451 = call float @dx.op.dot4.f32(i32 56, float %4447, float %4448, float %4449, float %4450, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4452 = call float @dx.op.unary.f32(i32 27, float %4437)  ; Round_ni(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %4452)  ; FAbs(value)
  %4454 = call float @dx.op.unary.f32(i32 27, float %4444)  ; Round_ni(value)
  %4455 = call float @dx.op.unary.f32(i32 6, float %4454)  ; FAbs(value)
  %4456 = call float @dx.op.unary.f32(i32 6, float %4451)  ; FAbs(value)
  %4457 = call float @dx.op.unary.f32(i32 27, float %4456)  ; Round_ni(value)
  %4458 = fadd fast float %4455, %4453
  %4459 = fadd fast float %4458, %4457
  %4460 = fcmp fast oeq float %4459, 0.000000e+00
  %4461 = call float @dx.op.dot4.f32(i32 56, float %4433, float %4434, float %4435, float %4436, float %4302, float %4303, float %4304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4462 = call float @dx.op.dot4.f32(i32 56, float %4440, float %4441, float %4442, float %4443, float %4302, float %4303, float %4304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4463 = call float @dx.op.dot4.f32(i32 56, float %4433, float %4434, float %4435, float %4436, float %4305, float %4306, float %4307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4464 = call float @dx.op.dot4.f32(i32 56, float %4440, float %4441, float %4442, float %4443, float %4305, float %4306, float %4307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4465 = fsub fast float %4461, %4437
  %4466 = fsub fast float %4463, %4437
  %4467 = fsub fast float %4462, %4444
  %4468 = fsub fast float %4464, %4444
  %4469 = call float @dx.op.dot3.f32(i32 55, float %4379, float %4380, float %4381, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = fadd fast float %4471, %4469
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4475 = fcmp fast ogt float %4473, %4474
  %4476 = and i1 %4460, %4475
  %4477 = and i1 %4431, %4476
  br i1 %4477, label %4501, label %4478

; <label>:4478                                    ; preds = %4786, %4582, %4501, %4349
  %4479 = phi float [ %4351, %4501 ], [ %4585, %4582 ], [ %4585, %4786 ], [ %4351, %4349 ]
  %4480 = phi float [ %4352, %4501 ], [ %4352, %4582 ], [ %4762, %4786 ], [ %4352, %4349 ]
  %4481 = phi float [ %4353, %4501 ], [ %4353, %4582 ], [ %4760, %4786 ], [ %4353, %4349 ]
  %4482 = phi float [ %4354, %4501 ], [ %4354, %4582 ], [ %4738, %4786 ], [ %4354, %4349 ]
  %4483 = phi float [ %4355, %4501 ], [ %4355, %4582 ], [ %4739, %4786 ], [ %4355, %4349 ]
  %4484 = phi float [ %4356, %4501 ], [ %4356, %4582 ], [ %4740, %4786 ], [ %4356, %4349 ]
  %4485 = phi float [ %4357, %4501 ], [ %4357, %4582 ], [ %4709, %4786 ], [ %4357, %4349 ]
  %4486 = phi float [ %4358, %4501 ], [ %4358, %4582 ], [ %4707, %4786 ], [ %4358, %4349 ]
  %4487 = phi float [ %4359, %4501 ], [ %4359, %4582 ], [ %4796, %4786 ], [ %4359, %4349 ]
  %4488 = phi float [ %4360, %4501 ], [ %4360, %4582 ], [ %4797, %4786 ], [ %4360, %4349 ]
  %4489 = phi float [ %4361, %4501 ], [ %4361, %4582 ], [ %4798, %4786 ], [ %4361, %4349 ]
  %4490 = phi float [ %4362, %4501 ], [ %4362, %4582 ], [ %4688, %4786 ], [ %4362, %4349 ]
  %4491 = phi float [ %4363, %4501 ], [ %4363, %4582 ], [ %4689, %4786 ], [ %4363, %4349 ]
  %4492 = phi float [ %4364, %4501 ], [ %4364, %4582 ], [ %4690, %4786 ], [ %4364, %4349 ]
  %4493 = phi float [ %4365, %4501 ], [ %4365, %4582 ], [ %4718, %4786 ], [ %4365, %4349 ]
  %4494 = phi float [ %4366, %4501 ], [ %4366, %4582 ], [ %4715, %4786 ], [ %4366, %4349 ]
  %4495 = phi float [ %4367, %4501 ], [ %4367, %4582 ], [ %4712, %4786 ], [ %4367, %4349 ]
  %4496 = phi float [ %4368, %4501 ], [ %4368, %4582 ], [ %4705, %4786 ], [ %4368, %4349 ]
  %4497 = phi float [ %4369, %4501 ], [ %4369, %4582 ], [ %4700, %4786 ], [ %4369, %4349 ]
  %4498 = phi float [ %4370, %4501 ], [ %4370, %4582 ], [ %4701, %4786 ], [ %4370, %4349 ]
  %4499 = phi float [ %4371, %4501 ], [ %4371, %4582 ], [ %4702, %4786 ], [ %4371, %4349 ]
  %4500 = icmp eq i32 %4428, %4348
  br i1 %4500, label %4799, label %4349

; <label>:4501                                    ; preds = %4349
  %4502 = extractvalue %dx.types.ResRet.f32 %4398, 3
  %4503 = extractvalue %dx.types.ResRet.f32 %4398, 1
  %4504 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4507 = extractvalue %dx.types.ResRet.i32 %4384, 3
  %4508 = extractvalue %dx.types.ResRet.i32 %4384, 2
  %4509 = add i32 %4507, 0
  %4510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4509, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4510, %dx.types.Handle %4511, float %4437, float %4444, float undef, float undef, i32 0, i32 0, i32 undef, float %4465, float %4467, float undef, float %4466, float %4468, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = fmul fast float %4513, %4506
  %4515 = fadd fast float %4514, %4505
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fmul fast float %4437, %4393
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4444, float %4517)  ; FMad(a,b,c)
  %4519 = fadd fast float %4518, %4504
  %4520 = fmul fast float %4437, %4395
  %4521 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4444, float %4520)  ; FMad(a,b,c)
  %4522 = fadd fast float %4521, %4503
  %4523 = fmul fast float %4465, %4393
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4467, float %4523)  ; FMad(a,b,c)
  %4525 = fmul fast float %4465, %4395
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4467, float %4525)  ; FMad(a,b,c)
  %4527 = fmul fast float %4466, %4393
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4468, float %4527)  ; FMad(a,b,c)
  %4529 = fmul fast float %4466, %4395
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4396, float %4468, float %4529)  ; FMad(a,b,c)
  %4531 = add i32 %4508, 0
  %4532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4531, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4533 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4532, %dx.types.Handle %4511, float %4519, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4526, float undef, float %4528, float %4530, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = and i32 %4429, 1024
  %4536 = icmp ne i32 %4535, 0
  %4537 = fcmp fast ogt float %4534, 0x3FE0101020000000
  %4538 = uitofp i1 %4537 to float
  %4539 = select i1 %4536, float %4538, float %4534
  %4540 = and i32 %4429, 8192
  %4541 = icmp ne i32 %4540, 0
  %4542 = select i1 %4541, float %4502, float 1.000000e+00
  %4543 = fmul fast float %4437, 2.000000e+00
  %4544 = fadd fast float %4543, -1.000000e+00
  %4545 = call float @dx.op.unary.f32(i32 6, float %4544)  ; FAbs(value)
  %4546 = fmul fast float %4545, %4426
  %4547 = fsub fast float %4546, %4426
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fmul fast float %4444, 2.000000e+00
  %4550 = fadd fast float %4549, -1.000000e+00
  %4551 = call float @dx.op.unary.f32(i32 6, float %4550)  ; FAbs(value)
  %4552 = fmul fast float %4551, %4427
  %4553 = fsub fast float %4552, %4427
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fmul fast float %4456, %4389
  %4556 = fsub fast float %4555, %4389
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fmul fast float %4516, %4542
  %4559 = fmul fast float %4558, %4513
  %4560 = fmul fast float %4559, %4548
  %4561 = fmul fast float %4560, %4539
  %4562 = fmul fast float %4561, %4554
  %4563 = fmul fast float %4562, %4557
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 1
  %4566 = extractvalue %dx.types.CBufRet.f32 %4564, 0
  %4567 = fsub fast float %4473, %4566
  %4568 = fmul fast float %4567, %4565
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = fmul fast float %4563, %4390
  %4571 = fadd fast float %4563, %4390
  %4572 = fmul fast float %4571, %4399
  %4573 = fsub fast float %4572, %4399
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = and i32 %4429, 128
  %4576 = icmp ne i32 %4575, 0
  %4577 = select i1 %4576, float %4574, float %4570
  %4578 = fmul fast float %4577, %4569
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = fcmp fast ugt float %4578, %4580
  br i1 %4581, label %4582, label %4478

; <label>:4582                                    ; preds = %4501
  %4583 = select i1 %4541, float %4578, float 0.000000e+00
  %4584 = fadd fast float %4583, %4351
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  br i1 %4541, label %4478, label %4586

; <label>:4586                                    ; preds = %4582
  %4587 = and i32 %4429, 4
  %4588 = and i32 %4429, 8
  %4589 = add i32 %4385, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4592 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %4591, float %4519, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4526, float undef, float %4528, float %4530, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.ResRet.f32 %4592, 2
  %4596 = extractvalue %dx.types.ResRet.f32 %4592, 3
  %4597 = bitcast float %4411 to i32
  %4598 = and i32 %4597, 255
  %4599 = uitofp i32 %4598 to float
  %4600 = lshr i32 %4597, 8
  %4601 = and i32 %4600, 255
  %4602 = uitofp i32 %4601 to float
  %4603 = fmul fast float %4596, %4599
  %4604 = fadd fast float %4603, %4602
  %4605 = fmul fast float %4604, 0x3F70101000000000
  %4606 = add i32 %4386, 0
  %4607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4606, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4608 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4607, %dx.types.Handle %4591, float %4519, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4526, float undef, float %4528, float %4530, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = bitcast float %4405 to i32
  %4614 = and i32 %4613, 255
  %4615 = uitofp i32 %4614 to float
  %4616 = lshr i32 %4613, 8
  %4617 = and i32 %4616, 255
  %4618 = uitofp i32 %4617 to float
  %4619 = lshr i32 %4613, 16
  %4620 = and i32 %4619, 255
  %4621 = uitofp i32 %4620 to float
  %4622 = fmul fast float %4621, 0x3F70101000000000
  %4623 = fmul fast float %4609, %4615
  %4624 = fadd fast float %4623, %4618
  %4625 = fmul fast float %4624, 0x3F70101000000000
  %4626 = fadd fast float %4610, -5.000000e-01
  %4627 = fadd fast float %4612, -5.000000e-01
  %4628 = fmul fast float %4626, %4622
  %4629 = fmul fast float %4627, %4622
  %4630 = fadd fast float %4628, 5.000000e-01
  %4631 = fadd fast float %4629, 5.000000e-01
  %4632 = fmul fast float %4593, %4414
  %4633 = fmul fast float %4594, %4415
  %4634 = fmul fast float %4595, %4416
  %4635 = fmul fast float %4630, 2.000000e+00
  %4636 = fadd fast float %4635, -1.000000e+00
  %4637 = fmul fast float %4631, 2.000000e+00
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fadd fast float %4636, %4638
  %4640 = fmul fast float %4639, 5.000000e-01
  %4641 = fsub fast float %4636, %4638
  %4642 = fmul fast float %4641, 5.000000e-01
  %4643 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4644 = fsub fast float 1.000000e+00, %4643
  %4645 = call float @dx.op.unary.f32(i32 6, float %4642)  ; FAbs(value)
  %4646 = fsub fast float %4644, %4645
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4640, float %4642, float %4646, float %4640, float %4642, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 25, float %4647)  ; Rsqrt(value)
  %4649 = fmul fast float %4640, %4648
  %4650 = fmul fast float %4642, %4648
  %4651 = fmul fast float %4648, %4646
  %4652 = fmul fast float %4651, %4379
  %4653 = fmul fast float %4651, %4380
  %4654 = fmul fast float %4651, %4381
  %4655 = fmul fast float %4649, %4402
  %4656 = fmul fast float %4649, %4403
  %4657 = fmul fast float %4649, %4404
  %4658 = fadd fast float %4655, %4652
  %4659 = fadd fast float %4656, %4653
  %4660 = fadd fast float %4657, %4654
  %4661 = fmul fast float %4650, %4408
  %4662 = fmul fast float %4650, %4409
  %4663 = fmul fast float %4650, %4410
  %4664 = fadd fast float %4658, %4661
  %4665 = fadd fast float %4659, %4662
  %4666 = fadd fast float %4660, %4663
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4664, float %4665, float %4666)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4664, %4668
  %4670 = fmul fast float %4665, %4668
  %4671 = fmul fast float %4666, %4668
  %4672 = icmp ne i32 %4588, 0
  %4673 = select i1 %4672, float 1.000000e+00, float 0.000000e+00
  %4674 = fmul fast float %4578, %4673
  %4675 = and i32 %4429, 1
  %4676 = icmp eq i32 %4675, 0
  br i1 %4676, label %4677, label %4681

; <label>:4677                                    ; preds = %4586
  %4678 = fsub fast float %4669, %4362
  %4679 = fsub fast float %4670, %4363
  %4680 = fsub fast float %4671, %4364
  br label %4681

; <label>:4681                                    ; preds = %4677, %4586
  %4682 = phi float [ %4678, %4677 ], [ %4669, %4586 ]
  %4683 = phi float [ %4679, %4677 ], [ %4670, %4586 ]
  %4684 = phi float [ %4680, %4677 ], [ %4671, %4586 ]
  %4685 = fmul float %4684, %4674
  %4686 = fmul float %4683, %4674
  %4687 = fmul float %4682, %4674
  %4688 = fadd fast float %4687, %4362
  %4689 = fadd fast float %4686, %4363
  %4690 = fadd fast float %4685, %4364
  %4691 = icmp ne i32 %4587, 0
  %4692 = select i1 %4691, float 1.000000e+00, float 0.000000e+00
  %4693 = fmul fast float %4578, %4692
  %4694 = fsub fast float %4632, %4369
  %4695 = fsub fast float %4633, %4370
  %4696 = fsub fast float %4634, %4371
  %4697 = fmul fast float %4694, %4693
  %4698 = fmul fast float %4695, %4693
  %4699 = fmul fast float %4696, %4693
  %4700 = fadd fast float %4697, %4369
  %4701 = fadd fast float %4698, %4370
  %4702 = fadd fast float %4699, %4371
  %4703 = fsub fast float %4605, %4368
  %4704 = fmul fast float %4703, %4693
  %4705 = fadd fast float %4704, %4368
  %4706 = fmul fast float %4693, %4358
  %4707 = fsub fast float %4358, %4706
  %4708 = fmul fast float %4693, %4357
  %4709 = fsub fast float %4357, %4708
  %4710 = bitcast float %4423 to i32
  %4711 = fadd fast float %4578, %4367
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fsub fast float %4625, %4366
  %4714 = fmul fast float %4713, %4674
  %4715 = fadd fast float %4714, %4366
  %4716 = fsub fast float %4611, %4365
  %4717 = fmul fast float %4716, %4674
  %4718 = fadd fast float %4717, %4365
  br i1 %4676, label %4727, label %4719

; <label>:4719                                    ; preds = %4681
  %4720 = and i32 %4429, 32768
  %4721 = icmp eq i32 %4720, 0
  br i1 %4721, label %4737, label %4722

; <label>:4722                                    ; preds = %4719
  %4723 = fmul fast float %4674, 1.270000e+02
  %4724 = fadd fast float %4723, %4354
  %4725 = fadd fast float %4723, %4355
  %4726 = fadd fast float %4723, %4356
  br label %4737

; <label>:4727                                    ; preds = %4681
  %4728 = fsub fast float 1.270000e+02, %4354
  %4729 = fsub fast float 1.270000e+02, %4355
  %4730 = fsub fast float 1.270000e+02, %4356
  %4731 = fmul fast float %4674, %4728
  %4732 = fmul fast float %4674, %4729
  %4733 = fmul fast float %4674, %4730
  %4734 = fadd fast float %4731, %4354
  %4735 = fadd fast float %4732, %4355
  %4736 = fadd fast float %4733, %4356
  br label %4737

; <label>:4737                                    ; preds = %4727, %4722, %4719
  %4738 = phi float [ %4724, %4722 ], [ %4354, %4719 ], [ %4734, %4727 ]
  %4739 = phi float [ %4725, %4722 ], [ %4355, %4719 ], [ %4735, %4727 ]
  %4740 = phi float [ %4726, %4722 ], [ %4356, %4719 ], [ %4736, %4727 ]
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4745 = fmul fast float %4744, %4741
  %4746 = fadd fast float %4745, %4743
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = bitcast float %4417 to i32
  %4749 = and i32 %4748, 65535
  %4750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4749)  ; LegacyF16ToF32(value)
  %4751 = lshr i32 %4748, 16
  %4752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4751)  ; LegacyF16ToF32(value)
  %4753 = fcmp fast oge float %4750, 0.000000e+00
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 0
  %4756 = select i1 %4753, float %4750, float %4755
  %4757 = fadd fast float %4756, %4752
  %4758 = fsub fast float %4747, %4353
  %4759 = fmul fast float %4758, %4578
  %4760 = fadd fast float %4759, %4353
  %4761 = fmul fast float %4757, %4578
  %4762 = call float @dx.op.binary.f32(i32 35, float %4352, float %4761)  ; FMax(a,b)
  %4763 = and i32 %4429, 16
  %4764 = icmp eq i32 %4763, 0
  br i1 %4764, label %4786, label %4765

; <label>:4765                                    ; preds = %4737
  %4766 = add i32 %4420, 0
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4767, %dx.types.Handle %4591, float %4519, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4526, float undef, float %4528, float %4530, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = and i32 %4710, 65535
  %4773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4772)  ; LegacyF16ToF32(value)
  %4774 = fmul fast float %4769, %4414
  %4775 = fmul fast float %4770, %4415
  %4776 = fmul fast float %4771, %4416
  %4777 = and i32 %4429, 16384
  %4778 = icmp ne i32 %4777, 0
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = select i1 %4778, float %4780, float 1.000000e+00
  %4782 = fmul fast float %4781, %4773
  %4783 = fmul fast float %4774, %4782
  %4784 = fmul fast float %4775, %4782
  %4785 = fmul fast float %4776, %4782
  br label %4786

; <label>:4786                                    ; preds = %4765, %4737
  %4787 = phi float [ %4783, %4765 ], [ 0.000000e+00, %4737 ]
  %4788 = phi float [ %4784, %4765 ], [ 0.000000e+00, %4737 ]
  %4789 = phi float [ %4785, %4765 ], [ 0.000000e+00, %4737 ]
  %4790 = fsub fast float %4787, %4359
  %4791 = fsub fast float %4788, %4360
  %4792 = fsub fast float %4789, %4361
  %4793 = fmul fast float %4790, %4578
  %4794 = fmul fast float %4791, %4578
  %4795 = fmul fast float %4792, %4578
  %4796 = fadd fast float %4793, %4359
  %4797 = fadd fast float %4794, %4360
  %4798 = fadd fast float %4795, %4361
  br label %4478

; <label>:4799                                    ; preds = %4478
  br label %4800

; <label>:4800                                    ; preds = %4799, %4295
  %4801 = phi float [ 0.000000e+00, %4295 ], [ %4479, %4799 ]
  %4802 = phi float [ %4264, %4295 ], [ %4480, %4799 ]
  %4803 = phi float [ %4262, %4295 ], [ %4481, %4799 ]
  %4804 = phi float [ %4255, %4295 ], [ %4482, %4799 ]
  %4805 = phi float [ %4256, %4295 ], [ %4483, %4799 ]
  %4806 = phi float [ %4257, %4295 ], [ %4484, %4799 ]
  %4807 = phi float [ 0.000000e+00, %4295 ], [ %4485, %4799 ]
  %4808 = phi float [ 0.000000e+00, %4295 ], [ %4486, %4799 ]
  %4809 = phi float [ %4252, %4295 ], [ %4487, %4799 ]
  %4810 = phi float [ %4253, %4295 ], [ %4488, %4799 ]
  %4811 = phi float [ %4254, %4295 ], [ %4489, %4799 ]
  %4812 = phi float [ %4290, %4295 ], [ %4490, %4799 ]
  %4813 = phi float [ %4291, %4295 ], [ %4491, %4799 ]
  %4814 = phi float [ %4292, %4295 ], [ %4492, %4799 ]
  %4815 = phi float [ %4260, %4295 ], [ %4493, %4799 ]
  %4816 = phi float [ %4259, %4295 ], [ %4494, %4799 ]
  %4817 = phi float [ 0.000000e+00, %4295 ], [ %4495, %4799 ]
  %4818 = phi float [ %4258, %4295 ], [ %4496, %4799 ]
  %4819 = phi float [ %4249, %4295 ], [ %4497, %4799 ]
  %4820 = phi float [ %4250, %4295 ], [ %4498, %4799 ]
  %4821 = phi float [ %4251, %4295 ], [ %4499, %4799 ]
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %4814, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  %4824 = fmul fast float %4823, %4812
  %4825 = fmul fast float %4823, %4813
  %4826 = fmul fast float %4823, %4814
  %4827 = fadd fast float %4817, %1249
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4824, float %4825, float %4826)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = call float @dx.op.unary.f32(i32 25, float %4829)  ; Rsqrt(value)
  %4831 = fmul fast float %4830, %4824
  %4832 = fmul fast float %4830, %4825
  %4833 = fmul fast float %4830, %4826
  br label %4834

; <label>:4834                                    ; preds = %4800, %4246
  %4835 = phi float [ %4831, %4800 ], [ %4290, %4246 ]
  %4836 = phi float [ %4832, %4800 ], [ %4291, %4246 ]
  %4837 = phi float [ %4833, %4800 ], [ %4292, %4246 ]
  %4838 = phi float [ %4819, %4800 ], [ %4249, %4246 ]
  %4839 = phi float [ %4820, %4800 ], [ %4250, %4246 ]
  %4840 = phi float [ %4821, %4800 ], [ %4251, %4246 ]
  %4841 = phi float [ %4809, %4800 ], [ %4252, %4246 ]
  %4842 = phi float [ %4810, %4800 ], [ %4253, %4246 ]
  %4843 = phi float [ %4811, %4800 ], [ %4254, %4246 ]
  %4844 = phi float [ %4804, %4800 ], [ %4255, %4246 ]
  %4845 = phi float [ %4805, %4800 ], [ %4256, %4246 ]
  %4846 = phi float [ %4806, %4800 ], [ %4257, %4246 ]
  %4847 = phi float [ %4818, %4800 ], [ %4258, %4246 ]
  %4848 = phi float [ %4828, %4800 ], [ %1249, %4246 ]
  %4849 = phi float [ %4816, %4800 ], [ %4259, %4246 ]
  %4850 = phi float [ %4815, %4800 ], [ %4260, %4246 ]
  %4851 = phi float [ %4808, %4800 ], [ 0.000000e+00, %4246 ]
  %4852 = phi float [ %4807, %4800 ], [ 0.000000e+00, %4246 ]
  %4853 = phi float [ %4801, %4800 ], [ 0.000000e+00, %4246 ]
  %4854 = phi float [ %4802, %4800 ], [ %4264, %4246 ]
  %4855 = phi float [ %4803, %4800 ], [ %4262, %4246 ]
  %4856 = add i32 %54, 392
  %4857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4856, i32 undef)  ; BufferLoad(srv,index,wot)
  %4858 = extractvalue %dx.types.ResRet.i32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.i32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.i32 %4857, 2
  %4861 = extractvalue %dx.types.ResRet.i32 %4857, 3
  %4862 = bitcast i32 %4858 to float
  %4863 = bitcast i32 %4859 to float
  %4864 = bitcast i32 %4860 to float
  %4865 = bitcast i32 %4861 to float
  %4866 = fsub fast float %4838, %4862
  %4867 = fsub fast float %4839, %4863
  %4868 = fsub fast float %4840, %4864
  %4869 = fmul fast float %4866, %192
  %4870 = fmul fast float %4867, %192
  %4871 = fmul fast float %4868, %192
  %4872 = fadd fast float %4869, %4862
  %4873 = fadd fast float %4870, %4863
  %4874 = fadd fast float %4871, %4864
  %4875 = fsub fast float %4848, %4865
  %4876 = fmul fast float %4875, %192
  %4877 = fadd fast float %4876, %4865
  %4878 = fadd fast float %4847, 0xBFB99999A0000000
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4879, 0x3FF1C71C80000000
  %4881 = call float @dx.op.binary.f32(i32 36, float %4847, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4882 = fsub fast float 1.000000e+00, %4880
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4872, %4883
  %4885 = fmul fast float %4873, %4883
  %4886 = fmul fast float %4874, %4883
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = fmul fast float %4872, %4880
  %4891 = fmul fast float %4873, %4880
  %4892 = fmul fast float %4874, %4880
  %4893 = fadd fast float %4890, %4881
  %4894 = fadd fast float %4891, %4881
  %4895 = fadd fast float %4892, %4881
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4900 = call float @dx.op.binary.f32(i32 36, float %4844, float 1.270000e+02)  ; FMin(a,b)
  %4901 = call float @dx.op.binary.f32(i32 36, float %4845, float 1.270000e+02)  ; FMin(a,b)
  %4902 = call float @dx.op.binary.f32(i32 36, float %4846, float 1.270000e+02)  ; FMin(a,b)
  %4903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.i32 %4903, 3
  %4905 = and i32 %4904, 8
  %4906 = icmp ne i32 %4905, 0
  %4907 = call float @dx.op.binary.f32(i32 35, float %4887, float %4872)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4888, float %4872)  ; FMax(a,b)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4889, float %4872)  ; FMax(a,b)
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4888, float %4889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = select i1 %252, float %4872, float %4887
  %4912 = select i1 %252, float %4910, float %4888
  %4913 = select i1 %252, float 1.000000e+00, float %4889
  %4914 = select i1 %4906, float %4907, float %4911
  %4915 = select i1 %4906, float %4908, float %4912
  %4916 = select i1 %4906, float %4909, float %4913
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.CBufRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.CBufRet.f32 %4917, 2
  %4921 = fadd fast float %4918, %158
  %4922 = fadd fast float %4919, %159
  %4923 = fadd fast float %4920, %160
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = fsub fast float %4921, %4925
  %4928 = fsub fast float %4922, %4926
  %4929 = fmul fast float %4927, %4927
  %4930 = fmul fast float %4928, %4928
  %4931 = fadd fast float %4929, %4930
  %4932 = call float @dx.op.unary.f32(i32 24, float %4931)  ; Sqrt(value)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4934 = fcmp fast olt float %4932, %4933
  br i1 %4934, label %4935, label %5002

; <label>:4935                                    ; preds = %4834
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4938, 1
  %4944 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4936, 3
  %4946 = extractvalue %dx.types.CBufRet.f32 %4938, 3
  %4947 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4948 = fadd fast float %4945, %4921
  %4949 = fadd fast float %4946, %4922
  %4950 = fadd fast float %4947, %4923
  %4951 = fmul fast float %4948, %4937
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4949, float %4939, float %4951)  ; FMad(a,b,c)
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4941, float %4952)  ; FMad(a,b,c)
  %4954 = fmul fast float %4948, %4942
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4949, float %4943, float %4954)  ; FMad(a,b,c)
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4950, float %4944, float %4955)  ; FMad(a,b,c)
  %4957 = fsub fast float %4953, %4945
  %4958 = fsub fast float %4956, %4946
  %4959 = fsub fast float %4957, %4925
  %4960 = fadd fast float %4959, %4933
  %4961 = fsub fast float %4958, %4926
  %4962 = fadd fast float %4961, %4933
  %4963 = extractvalue %dx.types.CBufRet.f32 %4924, 3
  %4964 = fmul fast float %4960, %4963
  %4965 = fmul fast float %4962, %4963
  %4966 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4967 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4968 = fsub fast float 1.000000e+00, %4966
  %4969 = fsub fast float 1.000000e+00, %4967
  %4970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4968, float %4969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4971 = extractvalue %dx.types.ResRet.f32 %4970, 0
  %4972 = fcmp fast ugt float %4971, 0.000000e+00
  br i1 %4972, label %4973, label %5276

; <label>:4973                                    ; preds = %4935
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4976 = fmul fast float %4975, %4971
  %4977 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4978 = fadd fast float %4977, %4976
  %4979 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4980 = fadd fast float %4978, %4947
  %4981 = fmul fast float %4953, %4941
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4956, float %4944, float %4981)  ; FMad(a,b,c)
  %4983 = call float @dx.op.tertiary.f32(i32 46, float %4980, float %4979, float %4982)  ; FMad(a,b,c)
  %4984 = fsub fast float %4983, %4947
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 2
  %4987 = fsub fast float %4984, %4986
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4968, float %4969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4968, float %4969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4996 = fadd fast float %4993, %4989
  %4997 = fmul fast float %4996, 0x3F847AE140000000
  %4998 = fadd fast float %4994, %4990
  %4999 = fmul fast float %4998, 0x3F847AE140000000
  %5000 = fadd fast float %4995, %4991
  %5001 = fmul fast float %5000, 0x3F847AE140000000
  br label %5276

; <label>:5002                                    ; preds = %4834
  %5003 = and i32 %228, 1
  %5004 = icmp eq i32 %5003, 0
  br i1 %5004, label %5276, label %5005

; <label>:5005                                    ; preds = %5002
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5016 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5017 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5018 = fadd fast float %5015, %4921
  %5019 = fadd fast float %5016, %4922
  %5020 = fadd fast float %5017, %4923
  %5021 = fmul fast float %5018, %5007
  %5022 = call float @dx.op.tertiary.f32(i32 46, float %5019, float %5009, float %5021)  ; FMad(a,b,c)
  %5023 = call float @dx.op.tertiary.f32(i32 46, float %5020, float %5011, float %5022)  ; FMad(a,b,c)
  %5024 = fmul fast float %5018, %5012
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5019, float %5013, float %5024)  ; FMad(a,b,c)
  %5026 = call float @dx.op.tertiary.f32(i32 46, float %5020, float %5014, float %5025)  ; FMad(a,b,c)
  %5027 = fsub fast float %5023, %5015
  %5028 = fsub fast float %5026, %5016
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 3
  %5036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.i32 %5036, 0
  %5038 = extractvalue %dx.types.CBufRet.i32 %5036, 1
  %5039 = udiv i32 %5038, %5037
  %5040 = fsub fast float %5027, %5030
  %5041 = fsub fast float %5028, %5031
  %5042 = call float @dx.op.binary.f32(i32 35, float %5040, float 0.000000e+00)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float %5041, float 0.000000e+00)  ; FMax(a,b)
  %5044 = call float @dx.op.binary.f32(i32 36, float %5042, float %5032)  ; FMin(a,b)
  %5045 = call float @dx.op.binary.f32(i32 36, float %5043, float %5033)  ; FMin(a,b)
  %5046 = add i32 %5037, -1
  %5047 = add i32 %5039, -1
  %5048 = fmul fast float %5044, %5035
  %5049 = fmul fast float %5045, %5035
  %5050 = fptoui float %5048 to i32
  %5051 = fptoui float %5049 to i32
  %5052 = call i32 @dx.op.binary.i32(i32 40, i32 %5050, i32 %5046)  ; UMin(a,b)
  %5053 = call i32 @dx.op.binary.i32(i32 40, i32 %5051, i32 %5047)  ; UMin(a,b)
  %5054 = mul i32 %5053, %5037
  %5055 = add i32 %5054, %5052
  %5056 = shl i32 %5055, 2
  %5057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.i32 %5057, 0
  %5059 = icmp eq i32 %5058, -1
  br i1 %5059, label %5276, label %5060

; <label>:5060                                    ; preds = %5005
  %5061 = mul i32 %5058, 148
  %5062 = add i32 %5061, 4
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = add i32 %5061, 8
  %5066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = add i32 %5061, 36
  %5069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = add i32 %5061, 60
  %5072 = add i32 %5061, 92
  %5073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5072, i32 undef)  ; BufferLoad(srv,index,wot)
  %5074 = extractvalue %dx.types.ResRet.i32 %5073, 0
  %5075 = add i32 %5061, 116
  %5076 = fsub fast float %5027, %5064
  %5077 = fsub fast float %5028, %5067
  %5078 = fmul fast float %5035, %5076
  %5079 = fmul fast float %5035, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5085 = call float @dx.op.unary.f32(i32 83, float %5080)  ; DerivCoarseX(value)
  %5086 = call float @dx.op.unary.f32(i32 83, float %5082)  ; DerivCoarseX(value)
  %5087 = call float @dx.op.unary.f32(i32 84, float %5080)  ; DerivCoarseY(value)
  %5088 = call float @dx.op.unary.f32(i32 84, float %5082)  ; DerivCoarseY(value)
  %5089 = fmul fast float %5085, %5084
  %5090 = fmul fast float %5086, %5084
  %5091 = fmul fast float %5087, %5084
  %5092 = fmul fast float %5088, %5084
  %5093 = call float @dx.op.dot2.f32(i32 54, float %5091, float %5092, float %5091, float %5092)  ; Dot2(ax,ay,bx,by)
  %5094 = call float @dx.op.dot2.f32(i32 54, float %5089, float %5090, float %5089, float %5090)  ; Dot2(ax,ay,bx,by)
  %5095 = call float @dx.op.binary.f32(i32 35, float %5094, float %5093)  ; FMax(a,b)
  %5096 = call float @dx.op.unary.f32(i32 23, float %5095)  ; Log(value)
  %5097 = fmul fast float %5096, 5.000000e-01
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5100 = fadd fast float %5099, %5097
  %5101 = call float @dx.op.binary.f32(i32 35, float %5100, float 0.000000e+00)  ; FMax(a,b)
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 3
  %5104 = fadd fast float %5103, %5101
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 3
  %5107 = fadd fast float %5104, %5106
  %5108 = add i32 %5074, 0
  %5109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5110 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5109, i32 0)  ; GetDimensions(handle,mipLevel)
  %5111 = extractvalue %dx.types.Dimensions %5110, 0
  %5112 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5111)  ; FirstbitLo(value)
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 1
  %5115 = sub nsw i32 %5114, %5112
  %5116 = sitofp i32 %5115 to float
  %5117 = fsub fast float %5107, %5116
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0.000000e+00)  ; FMax(a,b)
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5109, %dx.types.Handle %46, float %5080, float %5082, float %5070, float undef, i32 0, i32 0, i32 undef, float %5118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = fcmp ule float %5120, 0x3FE0101020000000
  %5122 = extractvalue %dx.types.CBufRet.i32 %5113, 0
  %5123 = and i32 %5122, 128
  %5124 = icmp ne i32 %5123, 0
  %5125 = and i1 %5121, %5124
  br i1 %5125, label %5276, label %5126

; <label>:5126                                    ; preds = %5060
  %5127 = add i32 %5061, 20
  %5128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = add i32 %5061, 24
  %5131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5130, i32 undef)  ; BufferLoad(srv,index,wot)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = add i32 %5061, 40
  %5134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.f32 %5134, 0
  %5136 = add i32 %5061, 96
  %5137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.i32 %5137, 0
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5141 = fmul fast float %5140, %5080
  %5142 = fmul fast float %5140, %5082
  %5143 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5144 = fadd fast float %5141, %5143
  %5145 = fadd fast float %5142, %5143
  %5146 = add i32 %5138, 0
  %5147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5146, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5148 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5147, i32 0)  ; GetDimensions(handle,mipLevel)
  %5149 = extractvalue %dx.types.Dimensions %5148, 0
  %5150 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5149)  ; FirstbitLo(value)
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 1
  %5153 = sub nsw i32 %5152, %5150
  %5154 = sitofp i32 %5153 to float
  %5155 = fsub fast float %5104, %5154
  %5156 = call float @dx.op.binary.f32(i32 35, float %5155, float 0.000000e+00)  ; FMax(a,b)
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5147, %dx.types.Handle %46, float %5144, float %5145, float %5135, float undef, i32 0, i32 0, i32 undef, float %5156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = fmul fast float %5158, %5129
  %5160 = fadd fast float %5159, %5132
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5170 = fadd fast float %5166, %5027
  %5171 = fadd fast float %5168, %5028
  %5172 = fadd fast float %5160, %5169
  %5173 = fmul fast float %5170, %5162
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5163, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5164, float %5174)  ; FMad(a,b,c)
  %5176 = fsub fast float %5175, %5169
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 2
  %5179 = fsub fast float %5176, %5178
  %5180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.i32 %5180, 0
  %5182 = call i32 @dx.op.binary.i32(i32 40, i32 %5058, i32 %5181)  ; UMin(a,b)
  %5183 = mul i32 %5182, 36
  %5184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5183, i32 undef)  ; BufferLoad(srv,index,wot)
  %5185 = extractvalue %dx.types.ResRet.i32 %5184, 0
  %5186 = add i32 %5183, 4
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = fmul fast float %5188, %5080
  %5190 = fmul fast float %5188, %5082
  %5191 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5192 = fadd fast float %5189, %5191
  %5193 = fadd fast float %5190, %5191
  %5194 = icmp eq i32 %5185, 0
  br i1 %5194, label %5263, label %5195

; <label>:5195                                    ; preds = %5126
  br label %5196

; <label>:5196                                    ; preds = %5253, %5195
  %5197 = phi float [ %5254, %5253 ], [ 0.000000e+00, %5195 ]
  %5198 = phi float [ %5255, %5253 ], [ 0.000000e+00, %5195 ]
  %5199 = phi float [ %5256, %5253 ], [ 0.000000e+00, %5195 ]
  %5200 = phi float [ %5257, %5253 ], [ 0.000000e+00, %5195 ]
  %5201 = phi float [ %5258, %5253 ], [ 0.000000e+00, %5195 ]
  %5202 = phi float [ %5259, %5253 ], [ 0.000000e+00, %5195 ]
  %5203 = phi i32 [ %5260, %5253 ], [ 0, %5195 ]
  %5204 = shl i32 %5203, 2
  %5205 = add i32 %5071, %5204
  %5206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5205, i32 undef)  ; BufferLoad(srv,index,wot)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = add i32 %5075, %5204
  %5209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.i32 %5209, 0
  %5211 = add i32 %5210, 0
  %5212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5211, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5213 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5212, i32 0)  ; GetDimensions(handle,mipLevel)
  %5214 = extractvalue %dx.types.Dimensions %5213, 0
  %5215 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5214)  ; FirstbitLo(value)
  %5216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.i32 %5216, 1
  %5218 = sub nsw i32 %5217, %5215
  %5219 = sitofp i32 %5218 to float
  %5220 = fsub fast float %5104, %5219
  %5221 = call float @dx.op.binary.f32(i32 35, float %5220, float 0.000000e+00)  ; FMax(a,b)
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5212, %dx.types.Handle %46, float %5192, float %5193, float %5207, float undef, i32 0, i32 0, i32 undef, float %5221)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = fcmp fast ogt float %5223, 0.000000e+00
  br i1 %5224, label %5225, label %5253

; <label>:5225                                    ; preds = %5196
  %5226 = add i32 %5186, %5204
  %5227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5226, i32 undef)  ; BufferLoad(srv,index,wot)
  %5228 = extractvalue %dx.types.ResRet.i32 %5227, 0
  %5229 = and i32 %5228, 32767
  %5230 = mul nuw nsw i32 %5229, 928
  %5231 = add nuw nsw i32 %5230, 48
  %5232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = add nuw nsw i32 %5230, 60
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = fmul fast float %5233, %5223
  %5242 = fmul fast float %5234, %5223
  %5243 = fmul fast float %5235, %5223
  %5244 = fadd fast float %5241, %5197
  %5245 = fadd fast float %5242, %5198
  %5246 = fadd fast float %5243, %5199
  %5247 = fmul fast float %5238, %5223
  %5248 = fmul fast float %5239, %5223
  %5249 = fmul fast float %5240, %5223
  %5250 = fadd fast float %5247, %5200
  %5251 = fadd fast float %5248, %5201
  %5252 = fadd fast float %5249, %5202
  br label %5253

; <label>:5253                                    ; preds = %5225, %5196
  %5254 = phi float [ %5244, %5225 ], [ %5197, %5196 ]
  %5255 = phi float [ %5245, %5225 ], [ %5198, %5196 ]
  %5256 = phi float [ %5246, %5225 ], [ %5199, %5196 ]
  %5257 = phi float [ %5250, %5225 ], [ %5200, %5196 ]
  %5258 = phi float [ %5251, %5225 ], [ %5201, %5196 ]
  %5259 = phi float [ %5252, %5225 ], [ %5202, %5196 ]
  %5260 = add nuw i32 %5203, 1
  %5261 = icmp eq i32 %5260, %5185
  br i1 %5261, label %5262, label %5196

; <label>:5262                                    ; preds = %5253
  br label %5263

; <label>:5263                                    ; preds = %5262, %5126
  %5264 = phi float [ 0.000000e+00, %5126 ], [ %5254, %5262 ]
  %5265 = phi float [ 0.000000e+00, %5126 ], [ %5255, %5262 ]
  %5266 = phi float [ 0.000000e+00, %5126 ], [ %5256, %5262 ]
  %5267 = phi float [ 0.000000e+00, %5126 ], [ %5257, %5262 ]
  %5268 = phi float [ 0.000000e+00, %5126 ], [ %5258, %5262 ]
  %5269 = phi float [ 0.000000e+00, %5126 ], [ %5259, %5262 ]
  %5270 = fadd fast float %5267, %5264
  %5271 = fmul fast float %5270, 0x3F847AE140000000
  %5272 = fadd fast float %5268, %5265
  %5273 = fmul fast float %5272, 0x3F847AE140000000
  %5274 = fadd fast float %5269, %5266
  %5275 = fmul fast float %5274, 0x3F847AE140000000
  br label %5276

; <label>:5276                                    ; preds = %5263, %5060, %5005, %5002, %4973, %4935
  %5277 = phi float [ %4987, %4973 ], [ -1.310720e+05, %4935 ], [ %5179, %5263 ], [ -1.310720e+05, %5005 ], [ -1.310720e+05, %5060 ], [ -1.310720e+05, %5002 ]
  %5278 = phi float [ %4997, %4973 ], [ 0.000000e+00, %4935 ], [ %5271, %5263 ], [ 0.000000e+00, %5005 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5002 ]
  %5279 = phi float [ %4999, %4973 ], [ 0.000000e+00, %4935 ], [ %5273, %5263 ], [ 0.000000e+00, %5005 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5002 ]
  %5280 = phi float [ %5001, %4973 ], [ 0.000000e+00, %4935 ], [ %5275, %5263 ], [ 0.000000e+00, %5005 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5002 ]
  %5281 = phi i1 [ true, %4973 ], [ false, %4935 ], [ true, %5263 ], [ false, %5005 ], [ false, %5060 ], [ false, %5002 ]
  %5282 = and i32 %228, 3
  %5283 = icmp eq i32 %5282, 1
  %5284 = select i1 %5283, float 1.000000e+00, float 0.000000e+00
  %5285 = fsub fast float %5277, %160
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = select i1 %5281, float %5286, float 1.000000e+00
  %5288 = fmul fast float %5287, %5284
  %5289 = icmp eq i32 %5282, 3
  %5290 = select i1 %5289, float 1.000000e+00, float %5288
  %5291 = call float @dx.op.binary.f32(i32 35, float %4853, float %5290)  ; FMax(a,b)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fcmp fast une float %5292, 0.000000e+00
  %5294 = fsub fast float -0.000000e+00, %178
  %5295 = fsub fast float -0.000000e+00, %179
  %5296 = fsub fast float -0.000000e+00, %180
  br i1 %5293, label %5297, label %5459

; <label>:5297                                    ; preds = %5276
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = fmul fast float %5292, 2.500000e+00
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5292, 0x4013FFFFE0000000
  %5302 = fadd fast float %5301, 0xBFFFFFFFE0000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %5292, 0x4004000020000000
  %5305 = fadd fast float %5304, 0xBFF8000040000000
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5308 = fmul fast float %4878, 1.000000e+01
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5309, 2.000000e+00
  %5311 = fsub fast float 3.000000e+00, %5310
  %5312 = fmul fast float %5309, %5309
  %5313 = fmul fast float %5312, %5311
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fsub fast float 0x3FE3333340000000, %4899
  %5316 = fmul fast float %5315, 0x400AAAAAA0000000
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5314, %5317
  %5319 = fmul fast float %4914, 0x3FEA2B8620000000
  %5320 = fmul fast float %4915, 0x3FEA2B8620000000
  %5321 = fmul fast float %4916, 0x3FEA2B8620000000
  %5322 = fadd fast float %5319, 0x3FC81DFBA0000000
  %5323 = fmul fast float %5322, %4914
  %5324 = fadd fast float %5323, 0x3F910E6020000000
  %5325 = fadd fast float %5320, 0x3FC81DFBA0000000
  %5326 = fmul fast float %5325, %4915
  %5327 = fadd fast float %5326, 0x3F910E6020000000
  %5328 = fadd fast float %5321, 0x3FC81DFBA0000000
  %5329 = fmul fast float %5328, %4916
  %5330 = fadd fast float %5329, 0x3F910E6020000000
  %5331 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = fsub fast float %5331, %4914
  %5335 = fsub fast float %5332, %4915
  %5336 = fsub fast float %5333, %4916
  %5337 = fmul fast float %5334, %5307
  %5338 = fmul fast float %5337, %5318
  %5339 = fmul fast float %5335, %5307
  %5340 = fmul fast float %5339, %5318
  %5341 = fmul fast float %5336, %5307
  %5342 = fmul fast float %5341, %5318
  %5343 = fadd fast float %5338, %4914
  %5344 = fadd fast float %5340, %4915
  %5345 = fadd fast float %5342, %4916
  %5346 = fmul fast float %4850, %4850
  %5347 = fmul fast float %5346, %5346
  %5348 = fadd fast float %5303, 1.000000e+00
  %5349 = fsub fast float %5348, %5318
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5347
  %5354 = call float @dx.op.binary.f32(i32 36, float %5350, float %5353)  ; FMin(a,b)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5356 = call float @dx.op.binary.f32(i32 35, float %5354, float %5355)  ; FMax(a,b)
  %5357 = fadd fast float %5352, 0xBFE4CCCCC0000000
  %5358 = fmul fast float %5357, 0x4006DB6DA0000000
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, 2.000000e+00
  %5361 = fsub fast float 3.000000e+00, %5360
  %5362 = bitcast float %4896 to i32
  %5363 = ashr i32 %5362, 1
  %5364 = add nsw i32 %5363, 532487669
  %5365 = bitcast i32 %5364 to float
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = bitcast float %5366 to i32
  %5368 = sub nsw i32 2129859010, %5367
  %5369 = bitcast i32 %5368 to float
  %5370 = fmul fast float %5369, 2.000000e+00
  %5371 = bitcast float %4897 to i32
  %5372 = ashr i32 %5371, 1
  %5373 = add nsw i32 %5372, 532487669
  %5374 = bitcast i32 %5373 to float
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5378, 2.000000e+00
  %5380 = bitcast float %4898 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = add nsw i32 %5381, 532487669
  %5383 = bitcast i32 %5382 to float
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, 2.000000e+00
  %5389 = fsub fast float 0x4002A9FBE0000000, %5370
  %5390 = fadd fast float %5370, 0x3FD54FDF00000000
  %5391 = bitcast float %5390 to i32
  %5392 = sub nsw i32 2129859010, %5391
  %5393 = bitcast i32 %5392 to float
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %5394, %5394
  %5396 = fsub fast float 0x4002A9FBE0000000, %5379
  %5397 = fadd fast float %5379, 0x3FD54FDF00000000
  %5398 = bitcast float %5397 to i32
  %5399 = sub nsw i32 2129859010, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5401, %5401
  %5403 = fsub fast float 0x4002A9FBE0000000, %5388
  %5404 = fadd fast float %5388, 0x3FD54FDF00000000
  %5405 = bitcast float %5404 to i32
  %5406 = sub nsw i32 2129859010, %5405
  %5407 = bitcast i32 %5406 to float
  %5408 = fmul fast float %5407, %5403
  %5409 = fmul fast float %5408, %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5395)  ; FMax(a,b)
  %5411 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5402)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5409)  ; FMax(a,b)
  %5413 = fsub fast float 1.000000e+00, %5298
  %5414 = fadd fast float %5413, %5314
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = fsub fast float 1.000000e+00, %5290
  %5417 = fmul fast float %5356, %5416
  %5418 = fmul fast float %5359, %5359
  %5419 = fmul fast float %5418, %5417
  %5420 = fmul fast float %5419, %5361
  %5421 = fmul fast float %5416, 0xBFE99999A0000000
  %5422 = fmul fast float %5421, %5307
  %5423 = fmul fast float %5422, %5318
  %5424 = fadd fast float %5423, 1.000000e+00
  %5425 = fadd fast float %4899, -1.000000e+00
  %5426 = fmul fast float %5424, %5425
  %5427 = fadd fast float %5426, 1.000000e+00
  %5428 = fsub fast float %5410, %4896
  %5429 = fsub fast float %5411, %4897
  %5430 = fsub fast float %5412, %4898
  %5431 = fmul fast float %5420, %5428
  %5432 = fmul fast float %5420, %5429
  %5433 = fmul fast float %5420, %5430
  %5434 = fadd fast float %5431, %4896
  %5435 = fadd fast float %5432, %4897
  %5436 = fadd fast float %5433, %4898
  %5437 = fsub fast float %102, %4835
  %5438 = fsub fast float %103, %4836
  %5439 = fsub fast float %104, %4837
  %5440 = fmul fast float %5420, %5437
  %5441 = fmul fast float %5420, %5438
  %5442 = fmul fast float %5420, %5439
  %5443 = fadd fast float %5440, %4835
  %5444 = fadd fast float %5441, %4836
  %5445 = fadd fast float %5442, %4837
  %5446 = fmul fast float %5420, %5415
  %5447 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = fmul fast float %5446, %5448
  %5450 = fadd fast float %5449, %5447
  %5451 = fsub fast float 1.000000e+00, %4850
  %5452 = fmul fast float %5420, %5451
  %5453 = fadd fast float %5452, %4850
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.unary.f32(i32 25, float %5454)  ; Rsqrt(value)
  %5456 = fmul fast float %5443, %5455
  %5457 = fmul fast float %5444, %5455
  %5458 = fmul fast float %5445, %5455
  br label %5459

; <label>:5459                                    ; preds = %5297, %5276
  %5460 = phi float [ %5434, %5297 ], [ %4896, %5276 ]
  %5461 = phi float [ %5435, %5297 ], [ %4897, %5276 ]
  %5462 = phi float [ %5436, %5297 ], [ %4898, %5276 ]
  %5463 = phi float [ %5456, %5297 ], [ %4835, %5276 ]
  %5464 = phi float [ %5457, %5297 ], [ %4836, %5276 ]
  %5465 = phi float [ %5458, %5297 ], [ %4837, %5276 ]
  %5466 = phi float [ %5343, %5297 ], [ %4914, %5276 ]
  %5467 = phi float [ %5344, %5297 ], [ %4915, %5276 ]
  %5468 = phi float [ %5345, %5297 ], [ %4916, %5276 ]
  %5469 = phi float [ %5450, %5297 ], [ %4899, %5276 ]
  %5470 = phi float [ %5453, %5297 ], [ %4850, %5276 ]
  %5471 = fsub fast float -0.000000e+00, %160
  %5472 = select i1 %252, float 0.000000e+00, float %5462
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fmul fast float %5475, 2.000000e+00
  %5477 = fmul fast float %5476, %5463
  %5478 = fmul fast float %5476, %5464
  %5479 = fmul fast float %5476, %5465
  %5480 = fsub fast float %178, %5477
  %5481 = fsub fast float %179, %5478
  %5482 = fsub fast float %180, %5479
  %5483 = call float @dx.op.binary.f32(i32 36, float %5470, float 1.000000e+00)  ; FMin(a,b)
  %5484 = fsub fast float 1.000000e+00, %5470
  %5485 = bitcast float %5484 to i32
  %5486 = sub nsw i32 2129859010, %5485
  %5487 = bitcast i32 %5486 to float
  %5488 = fsub fast float 1.000000e+00, %66
  %5489 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5489, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5491 = fdiv fast float %5488, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, 5.000000e-01
  %5495 = fadd fast float %5494, 5.000000e-01
  %5496 = fmul fast float %5495, %66
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fmul fast float %5498, %5491
  %5500 = fadd fast float %5496, %5499
  %5501 = fsub fast float 5.000000e-01, %5494
  %5502 = fmul fast float %5501, %5466
  %5503 = fmul fast float %5501, %5467
  %5504 = fmul fast float %5501, %5468
  %5505 = fadd fast float %5500, %5502
  %5506 = fadd fast float %5500, %5503
  %5507 = fadd fast float %5500, %5504
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = fmul fast float %5509, 5.000000e-01
  %5511 = fadd fast float %5510, 5.000000e-01
  %5512 = fmul fast float %5511, %66
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fmul fast float %5514, %5491
  %5516 = fadd fast float %5512, %5515
  %5517 = fsub fast float 5.000000e-01, %5510
  %5518 = fmul fast float %5517, %5466
  %5519 = fmul fast float %5517, %5467
  %5520 = fmul fast float %5517, %5468
  %5521 = fadd fast float %5516, %5518
  %5522 = fadd fast float %5516, %5519
  %5523 = fadd fast float %5516, %5520
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = call float @dx.op.binary.f32(i32 36, float %5466, float %5525)  ; FMin(a,b)
  %5527 = fsub fast float 1.000000e+00, %5483
  %5528 = fmul fast float %5526, %5527
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = bitcast float %5529 to i32
  %5531 = sub nsw i32 2129859010, %5530
  %5532 = bitcast i32 %5531 to float
  %5533 = call float @dx.op.binary.f32(i32 36, float %5467, float %5525)  ; FMin(a,b)
  %5534 = fmul fast float %5533, %5527
  %5535 = fsub fast float 1.000000e+00, %5534
  %5536 = bitcast float %5535 to i32
  %5537 = sub nsw i32 2129859010, %5536
  %5538 = bitcast i32 %5537 to float
  %5539 = call float @dx.op.binary.f32(i32 36, float %5468, float %5525)  ; FMin(a,b)
  %5540 = fmul fast float %5539, %5527
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = bitcast float %5541 to i32
  %5543 = sub nsw i32 2129859010, %5542
  %5544 = bitcast i32 %5543 to float
  %5545 = fmul fast float %5483, %67
  %5546 = fmul fast float %5545, %5505
  %5547 = fmul fast float %5546, %5532
  %5548 = fmul fast float %5483, %68
  %5549 = fmul fast float %5548, %5506
  %5550 = fmul fast float %5549, %5538
  %5551 = fmul fast float %5483, %69
  %5552 = fmul fast float %5551, %5507
  %5553 = fmul fast float %5552, %5544
  %5554 = call float @dx.op.binary.f32(i32 36, float %5460, float %5525)  ; FMin(a,b)
  %5555 = fmul fast float %5554, %5527
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = bitcast float %5556 to i32
  %5558 = sub nsw i32 2129859010, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = call float @dx.op.binary.f32(i32 36, float %5461, float %5525)  ; FMin(a,b)
  %5561 = fmul fast float %5560, %5527
  %5562 = fsub fast float 1.000000e+00, %5561
  %5563 = bitcast float %5562 to i32
  %5564 = sub nsw i32 2129859010, %5563
  %5565 = bitcast i32 %5564 to float
  %5566 = call float @dx.op.binary.f32(i32 36, float %5472, float %5525)  ; FMin(a,b)
  %5567 = fmul fast float %5566, %5527
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = bitcast float %5568 to i32
  %5570 = sub nsw i32 2129859010, %5569
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5545, %5521
  %5573 = fmul fast float %5572, %5559
  %5574 = fmul fast float %5548, %5522
  %5575 = fmul fast float %5574, %5565
  %5576 = fmul fast float %5551, %5523
  %5577 = fmul fast float %5576, %5571
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5550, float %5553, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = select i1 %252, float 0.000000e+00, float %5547
  %5580 = select i1 %252, float %5578, float %5550
  %5581 = select i1 %252, float 0.000000e+00, float %5553
  %5582 = call float @dx.op.dot3.f32(i32 55, float %5573, float %5575, float %5577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = select i1 %252, float 0.000000e+00, float %5573
  %5584 = select i1 %252, float %5582, float %5575
  %5585 = select i1 %252, float 0.000000e+00, float %5577
  %5586 = fmul fast float %4261, %4261
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fmul fast float %5474, 9.843750e-01
  %5589 = fmul fast float %5469, 9.843750e-01
  %5590 = fadd fast float %5588, 7.812500e-03
  %5591 = fadd fast float %5589, 7.812500e-03
  %5592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5590, float %5591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.f32 %5592, 2
  %5596 = extractvalue %dx.types.ResRet.f32 %5592, 3
  %5597 = fsub fast float 1.000000e+00, %5587
  %5598 = fsub fast float %5595, %5593
  %5599 = fsub fast float %5596, %5594
  %5600 = fmul fast float %5598, %5597
  %5601 = fmul fast float %5599, %5597
  %5602 = fadd fast float %5600, %5593
  %5603 = fadd fast float %5601, %5594
  %5604 = fmul fast float %5602, %5460
  %5605 = fmul fast float %5602, %5461
  %5606 = fmul fast float %5602, %5472
  %5607 = fadd fast float %5604, %5603
  %5608 = fadd fast float %5605, %5603
  %5609 = fadd fast float %5606, %5603
  %5610 = fcmp fast ogt float %4851, 0.000000e+00
  br i1 %5610, label %5611, label %5637

; <label>:5611                                    ; preds = %5459
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4851, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = fadd fast float %5613, -5.000000e-01
  %5617 = fadd fast float %5614, -5.000000e-01
  %5618 = fadd fast float %5615, -5.000000e-01
  %5619 = fsub fast float 1.000000e+00, %5460
  %5620 = fsub fast float 1.000000e+00, %5461
  %5621 = fsub fast float 1.000000e+00, %5472
  %5622 = fmul fast float %5460, 4.000000e+00
  %5623 = fmul fast float %5622, %5619
  %5624 = fmul fast float %5623, %5616
  %5625 = fmul fast float %5461, 4.000000e+00
  %5626 = fmul fast float %5625, %5620
  %5627 = fmul fast float %5626, %5617
  %5628 = fmul fast float %5472, 4.000000e+00
  %5629 = fmul fast float %5628, %5621
  %5630 = fmul fast float %5629, %5618
  %5631 = fadd fast float %5624, %5607
  %5632 = fadd fast float %5627, %5608
  %5633 = fadd fast float %5630, %5609
  %5634 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  br label %5637

; <label>:5637                                    ; preds = %5611, %5459
  %5638 = phi float [ %5634, %5611 ], [ %5607, %5459 ]
  %5639 = phi float [ %5635, %5611 ], [ %5608, %5459 ]
  %5640 = phi float [ %5636, %5611 ], [ %5609, %5459 ]
  %5641 = call float @dx.op.binary.f32(i32 35, float %5639, float %5640)  ; FMax(a,b)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5638, float %5641)  ; FMax(a,b)
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = fmul fast float %5643, %5579
  %5645 = fmul fast float %5643, %5580
  %5646 = fmul fast float %5643, %5581
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fcmp fast ogt float %5647, 0x3E7FF19E20000000
  %5649 = fdiv fast float 1.000000e+00, %5647
  %5650 = select i1 %5648, float %5649, float 0.000000e+00
  %5651 = fmul fast float %5650, %5466
  %5652 = fmul fast float %5650, %5467
  %5653 = fmul fast float %5650, %5468
  %5654 = fadd fast float %5651, -1.000000e+00
  %5655 = fadd fast float %5652, -1.000000e+00
  %5656 = fadd fast float %5653, -1.000000e+00
  %5657 = fmul fast float %5654, 5.000000e-01
  %5658 = fmul fast float %5655, 5.000000e-01
  %5659 = fmul fast float %5656, 5.000000e-01
  %5660 = fadd fast float %5657, 1.000000e+00
  %5661 = fadd fast float %5658, 1.000000e+00
  %5662 = fadd fast float %5659, 1.000000e+00
  %5663 = call float @dx.op.binary.f32(i32 35, float %5474, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5664 = fdiv fast float %4261, %5663
  %5665 = fcmp fast olt float %4900, 1.270000e+02
  %5666 = fcmp fast olt float %4901, 1.270000e+02
  %5667 = fcmp fast olt float %4902, 1.270000e+02
  %5668 = fmul fast float %4900, 0xBFF7154760000000
  %5669 = fmul fast float %5668, %5664
  %5670 = fmul fast float %4901, 0xBFF7154760000000
  %5671 = fmul fast float %5670, %5664
  %5672 = fmul fast float %4902, 0xBFF7154760000000
  %5673 = fmul fast float %5672, %5664
  %5674 = call float @dx.op.unary.f32(i32 21, float %5669)  ; Exp(value)
  %5675 = call float @dx.op.unary.f32(i32 21, float %5671)  ; Exp(value)
  %5676 = call float @dx.op.unary.f32(i32 21, float %5673)  ; Exp(value)
  %5677 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5678 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5679 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5680 = select i1 %5665, float %5677, float 0.000000e+00
  %5681 = select i1 %5666, float %5678, float 0.000000e+00
  %5682 = select i1 %5667, float %5679, float 0.000000e+00
  %5683 = fmul fast float %5680, %5643
  %5684 = fmul fast float %5681, %5643
  %5685 = fmul fast float %5682, %5643
  %5686 = fadd fast float %5683, -1.000000e+00
  %5687 = fadd fast float %5684, -1.000000e+00
  %5688 = fadd fast float %5685, -1.000000e+00
  %5689 = fmul fast float %5638, %5583
  %5690 = fmul fast float %5639, %5584
  %5691 = fmul fast float %5640, %5585
  %5692 = fsub fast float 1.000000e+00, %5474
  %5693 = bitcast float %5692 to i32
  %5694 = sitofp i32 %5693 to float
  %5695 = fmul fast float %5694, 5.000000e+00
  %5696 = fadd fast float %5695, 0xC1EFBF8940000000
  %5697 = fptosi float %5696 to i32
  %5698 = bitcast i32 %5697 to float
  %5699 = fmul fast float %5698, %4852
  %5700 = fmul fast float %5579, %5699
  %5701 = fmul fast float %5700, %5643
  %5702 = fmul fast float %5701, %5660
  %5703 = fmul fast float %5580, %5699
  %5704 = fmul fast float %5703, %5643
  %5705 = fmul fast float %5704, %5661
  %5706 = fmul fast float %5581, %5699
  %5707 = fmul fast float %5706, %5643
  %5708 = fmul fast float %5707, %5662
  %5709 = fmul fast float %5644, %4877
  %5710 = fmul fast float %5645, %4877
  %5711 = fmul fast float %5646, %4877
  %5712 = fadd fast float %5689, %4841
  %5713 = fadd fast float %5712, %5702
  %5714 = fmul fast float %5713, %4877
  %5715 = fadd fast float %5690, %4842
  %5716 = fadd fast float %5715, %5705
  %5717 = fmul fast float %5716, %4877
  %5718 = fadd fast float %5691, %4843
  %5719 = fadd fast float %5718, %5708
  %5720 = fmul fast float %5719, %4877
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 3
  %5723 = fcmp fast oeq float %5722, 0.000000e+00
  br i1 %5723, label %6805, label %5724

; <label>:5724                                    ; preds = %5637
  %5725 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5726 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5727 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = select i1 %252, float %5733, float %5729
  %5737 = select i1 %252, float %5735, float %5730
  %5738 = select i1 %252, float %5734, float %5731
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5741 = fmul fast float %5740, %102
  %5742 = fmul fast float %5740, %103
  %5743 = fmul fast float %5740, %104
  %5744 = fadd fast float %5741, %158
  %5745 = fadd fast float %5742, %159
  %5746 = fadd fast float %5743, %160
  %5747 = fcmp fast olt float %5722, 0.000000e+00
  br i1 %5747, label %6372, label %5748

; <label>:5748                                    ; preds = %5724
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5758 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5764 = fmul fast float %5750, %5744
  %5765 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5751, float %5764)  ; FMad(a,b,c)
  %5766 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5752, float %5765)  ; FMad(a,b,c)
  %5767 = fadd fast float %5766, %5753
  %5768 = fmul fast float %5755, %5744
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5756, float %5768)  ; FMad(a,b,c)
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5757, float %5769)  ; FMad(a,b,c)
  %5771 = fadd fast float %5770, %5758
  %5772 = fmul fast float %5760, %5744
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5761, float %5772)  ; FMad(a,b,c)
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5762, float %5773)  ; FMad(a,b,c)
  %5775 = fadd fast float %5774, %5763
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.CBufRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5780 = fmul fast float %5779, %5767
  %5781 = fmul fast float %5779, %5771
  %5782 = fadd fast float %5780, %5777
  %5783 = fadd fast float %5781, %5778
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5788 = fmul fast float %5787, %5767
  %5789 = fmul fast float %5787, %5771
  %5790 = fadd fast float %5788, %5785
  %5791 = fadd fast float %5789, %5786
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5794 = fsub fast float %5793, %5775
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = fmul fast float %5794, %5795
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5802 = fadd fast float %5801, %5799
  %5803 = fcmp fast ogt float %5802, 0.000000e+00
  br i1 %5803, label %5804, label %5828

; <label>:5804                                    ; preds = %5748
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 1
  %5808 = fsub fast float %5790, %5806
  %5809 = fsub fast float %5791, %5807
  %5810 = fcmp fast olt float %5808, 0.000000e+00
  %5811 = fcmp fast olt float %5809, 0.000000e+00
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5817 = select i1 %5810, float %5813, float %5815
  %5818 = select i1 %5811, float %5814, float %5816
  %5819 = fmul fast float %5817, %5808
  %5820 = fmul fast float %5818, %5809
  %5821 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5822 = call float @dx.op.unary.f32(i32 6, float %5820)  ; FAbs(value)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5824 = call float @dx.op.binary.f32(i32 35, float %5821, float %5822)  ; FMax(a,b)
  %5825 = fsub fast float %5823, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fmul fast float %5826, %5798
  br label %5828

; <label>:5828                                    ; preds = %5804, %5748
  %5829 = phi float [ %5827, %5804 ], [ 0.000000e+00, %5748 ]
  %5830 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %5831 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5832 = fadd fast float %5831, %5830
  %5833 = fcmp fast ogt float %5832, 0.000000e+00
  %5834 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  br i1 %5833, label %5835, label %5858

; <label>:5835                                    ; preds = %5828
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = fsub fast float %5782, %5837
  %5840 = fsub fast float %5783, %5838
  %5841 = fcmp fast olt float %5839, 0.000000e+00
  %5842 = fcmp fast olt float %5840, 0.000000e+00
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.CBufRet.f32 %5843, 3
  %5848 = select i1 %5841, float %5844, float %5846
  %5849 = select i1 %5842, float %5845, float %5847
  %5850 = fmul fast float %5848, %5839
  %5851 = fmul fast float %5849, %5840
  %5852 = call float @dx.op.unary.f32(i32 6, float %5850)  ; FAbs(value)
  %5853 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5852, float %5853)  ; FMax(a,b)
  %5855 = fsub fast float %5834, %5854
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fmul fast float %5856, %5798
  br label %5858

; <label>:5858                                    ; preds = %5835, %5828
  %5859 = phi float [ %5857, %5835 ], [ 0.000000e+00, %5828 ]
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = fsub fast float %5767, %5864
  %5867 = fsub fast float %5771, %5865
  %5868 = fcmp fast olt float %5866, 0.000000e+00
  %5869 = fcmp fast olt float %5867, 0.000000e+00
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5874 = extractvalue %dx.types.CBufRet.f32 %5870, 3
  %5875 = select i1 %5868, float %5871, float %5873
  %5876 = select i1 %5869, float %5872, float %5874
  %5877 = fmul fast float %5875, %5866
  %5878 = fmul fast float %5876, %5867
  %5879 = call float @dx.op.unary.f32(i32 6, float %5877)  ; FAbs(value)
  %5880 = call float @dx.op.unary.f32(i32 6, float %5878)  ; FAbs(value)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5879, float %5880)  ; FMax(a,b)
  %5882 = fsub fast float %5834, %5881
  %5883 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5884 = call float @dx.op.binary.f32(i32 36, float %5883, float %5862)  ; FMin(a,b)
  %5885 = fmul fast float %5884, %5798
  %5886 = fsub fast float %5859, %5885
  %5887 = fsub fast float %5829, %5859
  %5888 = fsub fast float %5887, %5885
  %5889 = call float @dx.op.binary.f32(i32 35, float %5859, float %5829)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5885, float %5889)  ; FMax(a,b)
  %5891 = fcmp fast olt float %5890, 1.000000e+00
  br i1 %5891, label %5892, label %6290, !dx.controlflow.hints !93

; <label>:5892                                    ; preds = %5858
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = fcmp fast une float %5894, 0.000000e+00
  br i1 %5895, label %5896, label %6290, !dx.controlflow.hints !94

; <label>:5896                                    ; preds = %5892
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.CBufRet.f32 %5897, 2
  %5901 = extractvalue %dx.types.CBufRet.f32 %5897, 3
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = fmul fast float %5898, %5744
  %5913 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5899, float %5912)  ; FMad(a,b,c)
  %5914 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5900, float %5913)  ; FMad(a,b,c)
  %5915 = fadd fast float %5914, %5901
  %5916 = fmul fast float %5903, %5744
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5904, float %5916)  ; FMad(a,b,c)
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5905, float %5917)  ; FMad(a,b,c)
  %5919 = fadd fast float %5918, %5906
  %5920 = fmul fast float %5908, %5744
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5909, float %5920)  ; FMad(a,b,c)
  %5922 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %5910, float %5921)  ; FMad(a,b,c)
  %5923 = fadd fast float %5922, %5911
  %5924 = fcmp fast oge float %5915, 1.000000e+00
  %5925 = fcmp fast oge float %5919, 1.000000e+00
  %5926 = or i1 %5924, %5925
  %5927 = fcmp fast olt float %5915, 0.000000e+00
  %5928 = fcmp fast olt float %5919, 0.000000e+00
  %5929 = or i1 %5927, %5928
  %5930 = or i1 %5926, %5929
  br i1 %5930, label %6290, label %5931, !dx.controlflow.hints !95

; <label>:5931                                    ; preds = %5896
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.i32 %5936, 2
  %5938 = uitofp i32 %5937 to float
  %5939 = extractvalue %dx.types.CBufRet.i32 %5936, 3
  %5940 = uitofp i32 %5939 to float
  %5941 = extractvalue %dx.types.CBufRet.f32 %5932, 3
  %5942 = fmul fast float %5941, 2.000000e+00
  %5943 = fsub fast float %5915, %5933
  %5944 = fsub fast float %5919, %5934
  %5945 = fmul fast float %5942, %5943
  %5946 = fmul fast float %5942, %5944
  %5947 = fdiv fast float 1.000000e+00, %5727
  %5948 = fmul fast float %5946, %5947
  %5949 = call float @dx.op.unary.f32(i32 6, float %5948)  ; FAbs(value)
  %5950 = fmul fast float %5935, %5746
  %5951 = fmul fast float %5950, %5942
  %5952 = call float @dx.op.unary.f32(i32 6, float %5951)  ; FAbs(value)
  %5953 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5952, float %5949)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5953, float %5954)  ; FMax(a,b)
  %5956 = fmul fast float %5955, 2.000000e+00
  %5957 = call float @dx.op.unary.f32(i32 23, float %5956)  ; Log(value)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5957, float %5938)  ; FMax(a,b)
  %5959 = call float @dx.op.unary.f32(i32 22, float %5958)  ; Frc(value)
  %5960 = fadd fast float %5959, 0xBFEA666660000000
  %5961 = fmul fast float %5960, 8.000000e+00
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call float @dx.op.unary.f32(i32 27, float %5958)  ; Round_ni(value)
  %5964 = fadd fast float %5963, %5962
  %5965 = call float @dx.op.binary.f32(i32 36, float %5964, float %5940)  ; FMin(a,b)
  %5966 = call float @dx.op.unary.f32(i32 27, float %5965)  ; Round_ni(value)
  %5967 = fsub fast float -0.000000e+00, %5966
  %5968 = call float @dx.op.unary.f32(i32 21, float %5967)  ; Exp(value)
  %5969 = fmul fast float %5968, %5942
  %5970 = fmul fast float %5969, %5915
  %5971 = fmul fast float %5969, %5919
  %5972 = fmul fast float %5970, 2.500000e-01
  %5973 = fmul fast float %5971, 2.500000e-01
  %5974 = fadd fast float %5972, 5.000000e-01
  %5975 = fadd fast float %5973, 5.000000e-01
  %5976 = fsub fast float %5940, %5938
  %5977 = fptoui float %5976 to i32
  %5978 = add i32 %5977, 320
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5978)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = fcmp fast une float %5965, %5940
  %5983 = fsub fast float %5915, %5980
  %5984 = fsub fast float %5919, %5981
  %5985 = call float @dx.op.unary.f32(i32 6, float %5983)  ; FAbs(value)
  %5986 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %5987 = fmul fast float %5985, %5969
  %5988 = fmul fast float %5986, %5969
  %5989 = fcmp fast olt float %5987, 1.000000e+00
  %5990 = fcmp fast olt float %5988, 1.000000e+00
  %5991 = and i1 %5989, %5990
  %5992 = or i1 %5982, %5991
  br i1 %5992, label %5993, label %6290, !dx.controlflow.hints !96

; <label>:5993                                    ; preds = %5931
  %5994 = fmul fast float %5971, 5.000000e-01
  %5995 = fmul fast float %5970, 5.000000e-01
  %5996 = fadd fast float %5994, 5.000000e-01
  %5997 = fadd fast float %5995, 5.000000e-01
  %5998 = sitofp i32 %5937 to float
  %5999 = fsub fast float %5965, %5998
  %6000 = call float @dx.op.unary.f32(i32 27, float %5999)  ; Round_ni(value)
  %6001 = call float @dx.op.unary.f32(i32 22, float %5965)  ; Frc(value)
  %6002 = call float @dx.op.unary.f32(i32 22, float %5997)  ; Frc(value)
  %6003 = call float @dx.op.unary.f32(i32 22, float %5996)  ; Frc(value)
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6002, float %6003, float %6000, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.ResRet.f32 %6004, 3
  %6009 = fcmp fast ogt float %6001, 0.000000e+00
  br i1 %6009, label %6010, label %6031, !dx.controlflow.hints !97

; <label>:6010                                    ; preds = %5993
  %6011 = fadd fast float %6000, 1.000000e+00
  %6012 = call float @dx.op.unary.f32(i32 22, float %5974)  ; Frc(value)
  %6013 = call float @dx.op.unary.f32(i32 22, float %5975)  ; Frc(value)
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6012, float %6013, float %6011, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.ResRet.f32 %6014, 3
  %6019 = fsub fast float %6015, %6005
  %6020 = fsub fast float %6016, %6006
  %6021 = fsub fast float %6017, %6007
  %6022 = fsub fast float %6018, %6008
  %6023 = fmul fast float %6019, %6001
  %6024 = fmul fast float %6020, %6001
  %6025 = fmul fast float %6021, %6001
  %6026 = fmul fast float %6022, %6001
  %6027 = fadd fast float %6023, %6005
  %6028 = fadd fast float %6024, %6006
  %6029 = fadd fast float %6025, %6007
  %6030 = fadd fast float %6026, %6008
  br label %6031

; <label>:6031                                    ; preds = %6010, %5993
  %6032 = phi float [ %6027, %6010 ], [ %6005, %5993 ]
  %6033 = phi float [ %6028, %6010 ], [ %6006, %5993 ]
  %6034 = phi float [ %6029, %6010 ], [ %6007, %5993 ]
  %6035 = phi float [ %6030, %6010 ], [ %6008, %5993 ]
  %6036 = fadd fast float %6032, -5.000000e-01
  %6037 = fadd fast float %6034, -5.000000e-01
  %6038 = fmul fast float %6036, 0xBFD5555560000000
  %6039 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6037, float %6038)  ; FMad(a,b,c)
  %6040 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6033, float 0.000000e+00)  ; FMad(a,b,c)
  %6041 = fadd fast float %6040, %6035
  %6042 = fmul fast float %6036, -7.500000e-01
  %6043 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6037, float %6042)  ; FMad(a,b,c)
  %6044 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6033, float 0.000000e+00)  ; FMad(a,b,c)
  %6045 = fadd fast float %6044, %6035
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6053 = fsub fast float %6049, %6039
  %6054 = fsub fast float %6050, %6041
  %6055 = fsub fast float %6051, %6043
  %6056 = fsub fast float %6052, %6045
  %6057 = fmul fast float %6053, %6047
  %6058 = fmul fast float %6054, %6047
  %6059 = fmul fast float %6055, %6047
  %6060 = fmul fast float %6056, %6047
  %6061 = fadd fast float %6057, %6039
  %6062 = fadd fast float %6058, %6041
  %6063 = fadd fast float %6059, %6043
  %6064 = fadd fast float %6060, %6045
  %6065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6066 = extractvalue %dx.types.ResRet.i32 %6065, 0
  %6067 = and i32 %6066, 536870911
  %6068 = uitofp i32 %6067 to float
  %6069 = fmul fast float %6068, %5915
  %6070 = fmul fast float %6068, %5919
  %6071 = fptoui float %6069 to i32
  %6072 = fptoui float %6070 to i32
  %6073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.i32 %6073, 0
  %6075 = and i32 %6074, 31
  %6076 = lshr i32 %6071, %6075
  %6077 = lshr i32 %6072, %6075
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = and i32 %6079, 31
  %6081 = shl i32 1, %6080
  %6082 = call i32 @dx.op.binary.i32(i32 40, i32 %6081, i32 4)  ; UMin(a,b)
  %6083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.i32 %6083, 1
  %6086 = icmp eq i32 %6082, 0
  br i1 %6086, label %6128, label %6087

; <label>:6087                                    ; preds = %6031
  br label %6088

; <label>:6088                                    ; preds = %6116, %6087
  %6089 = phi i32 [ %6119, %6116 ], [ 0, %6087 ]
  %6090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6091 = extractvalue %dx.types.ResRet.i32 %6090, 0
  %6092 = lshr i32 %6091, 16
  %6093 = and i32 %6092, 31
  %6094 = shl i32 %6077, %6093
  %6095 = add i32 %6094, %6076
  %6096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6097 = extractvalue %dx.types.ResRet.i32 %6096, 0
  %6098 = and i32 %6097, 31
  %6099 = shl i32 %6095, %6098
  %6100 = add i32 %6099, %6089
  %6101 = shl i32 %6100, 2
  %6102 = add i32 %6101, 32
  %6103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.i32 %6103, 0
  %6105 = icmp slt i32 %6104, 0
  %6106 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6089
  %6107 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6089
  %6108 = bitcast float* %6106 to i32*
  %6109 = bitcast float* %6107 to i32*
  br i1 %6105, label %6110, label %6116

; <label>:6110                                    ; preds = %6088
  %6111 = and i32 %6104, 1073741823
  %6112 = add nuw nsw i32 %6111, 20
  %6113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.i32 %6113, 0
  %6115 = extractvalue %dx.types.ResRet.i32 %6113, 1
  br label %6116

; <label>:6116                                    ; preds = %6110, %6088
  %6117 = phi i32 [ %6114, %6110 ], [ %6084, %6088 ]
  %6118 = phi i32 [ %6115, %6110 ], [ %6085, %6088 ]
  store i32 %6117, i32* %6108, align 4
  store i32 %6118, i32* %6109, align 4
  %6119 = add nuw i32 %6089, 1
  %6120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.i32 %6120, 2
  %6122 = icmp eq i32 %6121, 0
  %6123 = icmp ugt i32 %6104, -1073741825
  %6124 = and i1 %6123, %6122
  %6125 = icmp ult i32 %6119, %6082
  %6126 = and i1 %6124, %6125
  br i1 %6126, label %6088, label %6127

; <label>:6127                                    ; preds = %6116
  br label %6128

; <label>:6128                                    ; preds = %6127, %6031
  %6129 = phi i32 [ 0, %6031 ], [ %6119, %6127 ]
  %6130 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %6131 = fptoui float %6130 to i32
  %6132 = icmp eq i32 %6131, 0
  br i1 %6132, label %6184, label %6133

; <label>:6133                                    ; preds = %6128
  br label %6134

; <label>:6134                                    ; preds = %6179, %6133
  %6135 = phi i32 [ %6180, %6179 ], [ %6129, %6133 ]
  %6136 = phi i32 [ %6181, %6179 ], [ 0, %6133 ]
  %6137 = lshr i32 %6136, 2
  %6138 = and i32 %6136, 3
  %6139 = add nuw nsw i32 %6137, 83
  %6140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6139)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.i32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.i32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.i32 %6140, 2
  %6144 = extractvalue %dx.types.CBufRet.i32 %6140, 3
  %6145 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6141, i32* %6145, align 4
  %6146 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6142, i32* %6146, align 4
  %6147 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6143, i32* %6147, align 4
  %6148 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6144, i32* %6148, align 4
  %6149 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6138
  %6150 = load i32, i32* %6149, align 4, !tbaa !98, !noalias !102
  %6151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = lshr i32 %6152, 16
  %6154 = and i32 %6153, 31
  %6155 = shl i32 %6077, %6154
  %6156 = add i32 %6155, %6076
  %6157 = shl i32 %6156, 2
  %6158 = add i32 %6157, %6150
  %6159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.i32 %6159, 0
  %6161 = icmp eq i32 %6160, 0
  br i1 %6161, label %6179, label %6162

; <label>:6162                                    ; preds = %6134
  %6163 = icmp slt i32 %6160, 0
  %6164 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6135
  %6165 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6135
  %6166 = bitcast float* %6164 to i32*
  %6167 = bitcast float* %6165 to i32*
  br i1 %6163, label %6168, label %6175

; <label>:6168                                    ; preds = %6162
  %6169 = and i32 %6160, 1073741823
  %6170 = add i32 %6150, 20
  %6171 = add i32 %6170, %6169
  %6172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.i32 %6172, 0
  %6174 = extractvalue %dx.types.ResRet.i32 %6172, 1
  br label %6175

; <label>:6175                                    ; preds = %6168, %6162
  %6176 = phi i32 [ %6173, %6168 ], [ %6084, %6162 ]
  %6177 = phi i32 [ %6174, %6168 ], [ %6085, %6162 ]
  store i32 %6176, i32* %6166, align 4
  store i32 %6177, i32* %6167, align 4
  %6178 = add i32 %6135, 1
  br label %6179

; <label>:6179                                    ; preds = %6175, %6134
  %6180 = phi i32 [ %6135, %6134 ], [ %6178, %6175 ]
  %6181 = add nuw i32 %6136, 1
  %6182 = icmp eq i32 %6181, %6131
  br i1 %6182, label %6183, label %6134

; <label>:6183                                    ; preds = %6179
  br label %6184

; <label>:6184                                    ; preds = %6183, %6128
  %6185 = phi i32 [ %6129, %6128 ], [ %6180, %6183 ]
  %6186 = icmp eq i32 %6185, 1
  %6187 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %6188 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %6186, label %6189, label %6192

; <label>:6189                                    ; preds = %6184
  %6190 = load float, float* %6187, align 4
  %6191 = load float, float* %6188, align 4
  br label %6219

; <label>:6192                                    ; preds = %6184
  %6193 = load float, float* %6187, align 4
  %6194 = load float, float* %6188, align 4
  %6195 = fdiv fast float 1.000000e+00, %6194
  %6196 = fsub fast float %6193, %6195
  %6197 = icmp ugt i32 %6185, 1
  br i1 %6197, label %6198, label %6214

; <label>:6198                                    ; preds = %6192
  br label %6199

; <label>:6199                                    ; preds = %6199, %6198
  %6200 = phi float [ %6209, %6199 ], [ %6196, %6198 ]
  %6201 = phi float [ %6210, %6199 ], [ %6193, %6198 ]
  %6202 = phi i32 [ %6211, %6199 ], [ 1, %6198 ]
  %6203 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6202
  %6204 = load float, float* %6203, align 4
  %6205 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6202
  %6206 = load float, float* %6205, align 4
  %6207 = fdiv fast float 1.000000e+00, %6206
  %6208 = fsub fast float %6204, %6207
  %6209 = call float @dx.op.binary.f32(i32 36, float %6200, float %6208)  ; FMin(a,b)
  %6210 = call float @dx.op.binary.f32(i32 35, float %6201, float %6204)  ; FMax(a,b)
  %6211 = add nuw i32 %6202, 1
  %6212 = icmp eq i32 %6211, %6185
  br i1 %6212, label %6213, label %6199

; <label>:6213                                    ; preds = %6199
  br label %6214

; <label>:6214                                    ; preds = %6213, %6192
  %6215 = phi float [ %6196, %6192 ], [ %6209, %6213 ]
  %6216 = phi float [ %6193, %6192 ], [ %6210, %6213 ]
  %6217 = fsub fast float %6216, %6215
  %6218 = fdiv fast float 1.000000e+00, %6217
  br label %6219

; <label>:6219                                    ; preds = %6214, %6189
  %6220 = phi float [ %6190, %6189 ], [ %6216, %6214 ]
  %6221 = phi float [ %6191, %6189 ], [ %6218, %6214 ]
  %6222 = fadd fast float %5923, %6220
  %6223 = fmul fast float %6222, %6221
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fmul fast float %6224, 2.000000e+00
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = fmul fast float %6061, %6061
  %6228 = fsub fast float %6062, %6227
  %6229 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6228)  ; FMax(a,b)
  %6230 = fdiv fast float 1.000000e+00, %6229
  %6231 = fmul fast float %6062, %6061
  %6232 = fsub fast float %6063, %6231
  %6233 = fsub fast float %6226, %6061
  %6234 = fmul fast float %6226, %6226
  %6235 = fsub fast float %6234, %6062
  %6236 = fmul fast float %6230, %6232
  %6237 = fmul fast float %6236, %6233
  %6238 = fsub fast float %6235, %6237
  %6239 = fmul fast float %6062, %6062
  %6240 = fsub fast float %6064, %6239
  %6241 = fmul fast float %6232, %6232
  %6242 = fmul fast float %6241, %6230
  %6243 = fsub fast float %6240, %6242
  %6244 = fdiv fast float %6238, %6243
  %6245 = fmul fast float %6244, %6232
  %6246 = fsub fast float %6233, %6245
  %6247 = fmul fast float %6246, %6230
  %6248 = fmul fast float %6247, %6061
  %6249 = fsub fast float 1.000000e+00, %6248
  %6250 = fmul fast float %6244, %6062
  %6251 = fsub fast float %6249, %6250
  %6252 = fmul fast float %6247, %6247
  %6253 = fmul fast float %6244, 4.000000e+00
  %6254 = fmul fast float %6253, %6251
  %6255 = fsub fast float %6252, %6254
  %6256 = call float @dx.op.unary.f32(i32 24, float %6255)  ; Sqrt(value)
  %6257 = fcmp fast oge float %6247, 0.000000e+00
  %6258 = fsub fast float -0.000000e+00, %6256
  %6259 = select i1 %6257, float %6258, float %6256
  %6260 = fsub fast float %6259, %6247
  %6261 = fdiv fast float %6260, %6244
  %6262 = fdiv fast float %6251, %6260
  %6263 = fmul fast float %6261, 5.000000e-01
  %6264 = fmul fast float %6262, 2.000000e+00
  %6265 = select i1 %6257, float %6263, float %6264
  %6266 = select i1 %6257, float %6264, float %6263
  %6267 = call float @dx.op.binary.f32(i32 35, float %6265, float %6266)  ; FMax(a,b)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6265, float %6266)  ; FMin(a,b)
  %6269 = fcmp fast ogt float %6226, %6267
  %6270 = fsub fast float %6226, %6268
  %6271 = fsub fast float %6226, %6267
  %6272 = fsub fast float %6267, %6268
  %6273 = select i1 %6269, float %6271, float %6272
  %6274 = fmul float %6270, %6273
  %6275 = select i1 %6269, float %6268, float %6226
  %6276 = fcmp fast ogt float %6226, %6268
  %6277 = fmul fast float %6275, %6267
  %6278 = fadd fast float %6275, %6267
  %6279 = fmul fast float %6278, %6061
  %6280 = fadd fast float %6277, %6062
  %6281 = fsub fast float %6280, %6279
  %6282 = fdiv fast float %6281, %6274
  %6283 = select i1 %6276, float %6282, float 0.000000e+00
  %6284 = fsub fast float 1.000000e+00, %6283
  %6285 = select i1 %6269, float %6284, float %6283
  %6286 = call float @dx.op.unary.f32(i32 7, float %6285)  ; Saturate(value)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6288 = fmul fast float %6287, %6286
  %6289 = fsub fast float 1.000000e+00, %6288
  br label %6290

; <label>:6290                                    ; preds = %6219, %5931, %5896, %5892, %5858
  %6291 = phi float [ 1.000000e+00, %5858 ], [ %6289, %6219 ], [ 1.000000e+00, %5896 ], [ 1.000000e+00, %5931 ], [ 1.000000e+00, %5892 ]
  %6292 = fcmp fast ogt float %5888, 0.000000e+00
  br i1 %6292, label %6293, label %6299, !dx.controlflow.hints !111

; <label>:6293                                    ; preds = %6290
  %6294 = fadd fast float %5801, %5775
  %6295 = call float @dx.op.binary.f32(i32 35, float %6294, float 0.000000e+00)  ; FMax(a,b)
  %6296 = fadd fast float %6295, 0x3F10000000000000
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5790, float %5791, float undef, float undef, i32 0, i32 0, i32 undef, float %6296)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  br label %6299

; <label>:6299                                    ; preds = %6293, %6290
  %6300 = phi float [ %6298, %6293 ], [ 1.000000e+00, %6290 ]
  %6301 = fcmp fast ogt float %5886, 0.000000e+00
  br i1 %6301, label %6302, label %6308, !dx.controlflow.hints !112

; <label>:6302                                    ; preds = %6299
  %6303 = fadd fast float %5831, %5775
  %6304 = call float @dx.op.binary.f32(i32 35, float %6303, float 0.000000e+00)  ; FMax(a,b)
  %6305 = fadd fast float %6304, 0x3F10000000000000
  %6306 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5782, float %5783, float undef, float undef, i32 0, i32 0, i32 undef, float %6305)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 0
  br label %6308

; <label>:6308                                    ; preds = %6302, %6299
  %6309 = phi float [ %6307, %6302 ], [ 1.000000e+00, %6299 ]
  %6310 = fcmp fast ogt float %5885, 0.000000e+00
  br i1 %6310, label %6311, label %6318, !dx.controlflow.hints !113

; <label>:6311                                    ; preds = %6308
  %6312 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %6313 = fadd fast float %6312, %5775
  %6314 = call float @dx.op.binary.f32(i32 35, float %6313, float 0.000000e+00)  ; FMax(a,b)
  %6315 = fadd fast float %6314, 0x3F10000000000000
  %6316 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5767, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float %6315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6317 = extractvalue %dx.types.ResRet.f32 %6316, 0
  br label %6318

; <label>:6318                                    ; preds = %6311, %6308
  %6319 = phi float [ %6317, %6311 ], [ 1.000000e+00, %6308 ]
  %6320 = fsub fast float %6300, %6291
  %6321 = fmul fast float %6320, %5829
  %6322 = fadd fast float %6321, %6291
  %6323 = fsub fast float %6309, %6322
  %6324 = fmul fast float %6323, %5859
  %6325 = fadd fast float %6324, %6322
  %6326 = fsub fast float %6319, %6325
  %6327 = fmul fast float %6326, %5885
  %6328 = fadd fast float %6327, %6325
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6331 = fcmp fast ogt float %6330, 0.000000e+00
  br i1 %6331, label %6332, label %6372, !dx.controlflow.hints !114

; <label>:6332                                    ; preds = %6318
  %6333 = fcmp fast ugt float %6330, 0.000000e+00
  br i1 %6333, label %6334, label %6369

; <label>:6334                                    ; preds = %6332
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6339 = extractvalue %dx.types.CBufRet.f32 %6335, 3
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6344 = extractvalue %dx.types.CBufRet.f32 %6340, 3
  %6345 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6351 = fadd fast float %6348, %5744
  %6352 = fadd fast float %6349, %5745
  %6353 = fadd fast float %6350, %5746
  %6354 = fmul fast float %6351, %6336
  %6355 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6352, float %6354)  ; FMad(a,b,c)
  %6356 = call float @dx.op.tertiary.f32(i32 46, float %6338, float %6353, float %6355)  ; FMad(a,b,c)
  %6357 = fadd fast float %6356, %6339
  %6358 = fmul fast float %6351, %6341
  %6359 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6352, float %6358)  ; FMad(a,b,c)
  %6360 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6353, float %6359)  ; FMad(a,b,c)
  %6361 = fadd fast float %6360, %6344
  %6362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6357, float %6361, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 0
  %6364 = fmul fast float %6363, %6346
  %6365 = fadd fast float %6364, %6345
  %6366 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6367 = fmul fast float %6366, %6330
  %6368 = fsub fast float 1.000000e+00, %6367
  br label %6369

; <label>:6369                                    ; preds = %6334, %6332
  %6370 = phi float [ %6368, %6334 ], [ 1.000000e+00, %6332 ]
  %6371 = fmul fast float %6370, %6328
  br label %6372

; <label>:6372                                    ; preds = %6369, %6318, %5724
  %6373 = phi float [ 1.000000e+00, %5724 ], [ %6371, %6369 ], [ %6328, %6318 ]
  %6374 = call float @dx.op.binary.f32(i32 36, float %6373, float %6373)  ; FMin(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6373, float %6374)  ; FMin(a,b)
  %6376 = fcmp fast ogt float %6375, 0.000000e+00
  br i1 %6376, label %6377, label %6537, !dx.controlflow.hints !115

; <label>:6377                                    ; preds = %6372
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6388, 3
  %6393 = fmul fast float %6379, %5744
  %6394 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %6380, float %6393)  ; FMad(a,b,c)
  %6395 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %6381, float %6394)  ; FMad(a,b,c)
  %6396 = fadd fast float %6395, %6382
  %6397 = fmul fast float %6384, %5744
  %6398 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %6385, float %6397)  ; FMad(a,b,c)
  %6399 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %6386, float %6398)  ; FMad(a,b,c)
  %6400 = fadd fast float %6399, %6387
  %6401 = fmul fast float %6389, %5744
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %6390, float %6401)  ; FMad(a,b,c)
  %6403 = call float @dx.op.tertiary.f32(i32 46, float %5746, float %6391, float %6402)  ; FMad(a,b,c)
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = extractvalue %dx.types.CBufRet.f32 %6404, 3
  %6408 = fmul fast float %6407, %6396
  %6409 = fmul fast float %6407, %6400
  %6410 = fadd fast float %6408, %6405
  %6411 = fadd fast float %6409, %6406
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6415 = fsub fast float %6410, %6413
  %6416 = fsub fast float %6411, %6414
  %6417 = fcmp fast olt float %6415, 0.000000e+00
  %6418 = fcmp fast olt float %6416, 0.000000e+00
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6424 = select i1 %6417, float %6420, float %6422
  %6425 = select i1 %6418, float %6421, float %6423
  %6426 = fmul fast float %6424, %6415
  %6427 = fmul fast float %6425, %6416
  %6428 = call float @dx.op.unary.f32(i32 6, float %6426)  ; FAbs(value)
  %6429 = call float @dx.op.unary.f32(i32 6, float %6427)  ; FAbs(value)
  %6430 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %6431 = call float @dx.op.binary.f32(i32 35, float %6428, float %6429)  ; FMax(a,b)
  %6432 = fsub fast float %6430, %6431
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  br i1 %6434, label %6435, label %6476, !dx.controlflow.hints !116

; <label>:6435                                    ; preds = %6377
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6410, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6438 = fcmp fast ogt float %6437, 0.000000e+00
  br i1 %6438, label %6439, label %6471

; <label>:6439                                    ; preds = %6435
  %6440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6410, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.ResRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.ResRet.f32 %6440, 2
  %6444 = extractvalue %dx.types.ResRet.f32 %6440, 3
  %6445 = fsub fast float 1.000000e+00, %6392
  %6446 = fsub fast float %6445, %6403
  %6447 = fmul fast float %6446, 0x400921FB60000000
  %6448 = fadd fast float %6447, 0x3FF921FB60000000
  %6449 = call float @dx.op.unary.f32(i32 13, float %6448)  ; Sin(value)
  %6450 = fadd fast float %6449, -1.000000e+00
  %6451 = fmul fast float %6450, 0x3FD45F3060000000
  %6452 = fmul fast float %6446, 0x401921FB60000000
  %6453 = fadd fast float %6452, 0x400921FB60000000
  %6454 = call float @dx.op.unary.f32(i32 13, float %6453)  ; Sin(value)
  %6455 = fadd fast float %6454, 0x3E7777A5C0000000
  %6456 = fmul fast float %6455, 0x3FC45F3060000000
  %6457 = fmul fast float %6446, 0x4022D97C80000000
  %6458 = fadd fast float %6457, 0x4012D97C80000000
  %6459 = call float @dx.op.unary.f32(i32 13, float %6458)  ; Sin(value)
  %6460 = fadd fast float %6459, 1.000000e+00
  %6461 = fmul fast float %6460, 0x3FBB2995E0000000
  %6462 = fmul fast float %6446, 0x402921FB60000000
  %6463 = fadd fast float %6462, 0x401921FB60000000
  %6464 = call float @dx.op.unary.f32(i32 13, float %6463)  ; Sin(value)
  %6465 = fadd fast float %6464, 0xBE8777A5C0000000
  %6466 = fmul fast float %6465, 0x3FB45F3060000000
  %6467 = call float @dx.op.dot4.f32(i32 56, float %6441, float %6442, float %6443, float %6444, float %6451, float %6456, float %6461, float %6466)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6468 = fmul fast float %6467, 0xBFF7154760000000
  %6469 = call float @dx.op.unary.f32(i32 21, float %6468)  ; Exp(value)
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  br label %6471

; <label>:6471                                    ; preds = %6439, %6435
  %6472 = phi float [ %6470, %6439 ], [ 1.000000e+00, %6435 ]
  %6473 = fadd fast float %6472, -1.000000e+00
  %6474 = fmul fast float %6473, %6433
  %6475 = fadd fast float %6474, 1.000000e+00
  br label %6476

; <label>:6476                                    ; preds = %6471, %6377
  %6477 = phi float [ %6475, %6471 ], [ 1.000000e+00, %6377 ]
  %6478 = fmul fast float %6477, %6373
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = fadd fast float %6480, %158
  %6484 = fadd fast float %6481, %159
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6487 = fsub fast float -0.000000e+00, %6483
  %6488 = fsub fast float -0.000000e+00, %6484
  %6489 = fsub fast float %5471, %6482
  %6490 = fadd fast float %6489, %6486
  %6491 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6487, float %6488, float %6490)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5725, float %5726, float %5727)  ; Dot3(ax,ay,az,bx,by,bz)
  %6493 = fdiv fast float 1.000000e+00, %6492
  %6494 = fmul fast float %6493, %6491
  %6495 = fmul fast float %5725, %6494
  %6496 = fmul fast float %5726, %6494
  %6497 = fadd fast float %6495, %6483
  %6498 = fadd fast float %6496, %6484
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = fsub fast float %6497, %6500
  %6503 = fsub fast float %6498, %6501
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 2
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 3
  %6507 = fmul fast float %6502, %6505
  %6508 = fmul fast float %6503, %6506
  %6509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.i32 %6509, 3
  %6511 = icmp eq i32 %6510, 0
  br i1 %6511, label %6517, label %6512

; <label>:6512                                    ; preds = %6476
  %6513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6507, float %6508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6514 = extractvalue %dx.types.ResRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.ResRet.f32 %6513, 1
  %6516 = extractvalue %dx.types.ResRet.f32 %6513, 2
  br label %6522

; <label>:6517                                    ; preds = %6476
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6507, float %6508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.ResRet.f32 %6518, 2
  br label %6522

; <label>:6522                                    ; preds = %6517, %6512
  %6523 = phi float [ %6514, %6512 ], [ %6519, %6517 ]
  %6524 = phi float [ %6515, %6512 ], [ %6520, %6517 ]
  %6525 = phi float [ %6516, %6512 ], [ %6521, %6517 ]
  %6526 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6527 = fmul fast float %6526, %6523
  %6528 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6529 = fsub fast float %6494, %6528
  %6530 = fsub fast float %6529, %6527
  %6531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6530)  ; FMax(a,b)
  %6532 = fmul fast float %6531, %6524
  %6533 = call float @dx.op.binary.f32(i32 36, float %6525, float %6532)  ; FMin(a,b)
  %6534 = fmul fast float %6533, 0xBFF7154760000000
  %6535 = call float @dx.op.unary.f32(i32 21, float %6534)  ; Exp(value)
  %6536 = fmul fast float %6478, %6535
  br label %6537

; <label>:6537                                    ; preds = %6522, %6372
  %6538 = phi float [ %6536, %6522 ], [ %6373, %6372 ]
  %6539 = call float @dx.op.binary.f32(i32 36, float %6538, float %6538)  ; FMin(a,b)
  %6540 = call float @dx.op.binary.f32(i32 36, float %6538, float %6539)  ; FMin(a,b)
  %6541 = fcmp fast ogt float %6540, 0.000000e+00
  br i1 %6541, label %6542, label %6805, !dx.controlflow.hints !117

; <label>:6542                                    ; preds = %6537
  %6543 = fmul fast float %6538, %5736
  %6544 = fmul fast float %6538, %5737
  %6545 = fmul fast float %6538, %5738
  %6546 = fsub fast float %160, %5277
  %6547 = fcmp fast ogt float %6546, 0.000000e+00
  %6548 = fmul fast float %5725, 5.120000e+02
  %6549 = fmul fast float %5726, 5.120000e+02
  %6550 = fmul fast float %5727, 5.120000e+02
  %6551 = fadd fast float %6550, %160
  %6552 = fsub fast float %5277, %6551
  %6553 = fmul fast float %6552, 2.000000e+00
  %6554 = fadd fast float %6553, %6551
  %6555 = select i1 %6547, float %6554, float %6551
  %6556 = fsub fast float %6555, %160
  %6557 = call float @dx.op.dot3.f32(i32 55, float %6548, float %6549, float %6556, float %6548, float %6549, float %6556)  ; Dot3(ax,ay,az,bx,by,bz)
  %6558 = call float @dx.op.unary.f32(i32 25, float %6557)  ; Rsqrt(value)
  %6559 = fmul fast float %6558, %6548
  %6560 = fmul fast float %6558, %6549
  %6561 = fmul fast float %6558, %6556
  %6562 = fsub fast float %5277, %160
  %6563 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6562)  ; Dot3(ax,ay,az,bx,by,bz)
  %6564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6559, float %6560, float %6561)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = fdiv fast float 1.000000e+00, %6564
  %6566 = fmul fast float %6565, %6563
  %6567 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6546, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = fcmp fast ogt float %6567, 0.000000e+00
  %6569 = fcmp fast olt float %6567, 0.000000e+00
  %6570 = zext i1 %6568 to i32
  %6571 = zext i1 %6569 to i32
  %6572 = sub nsw i32 %6570, %6571
  %6573 = sitofp i32 %6572 to float
  %6574 = fsub fast float %6555, %5277
  %6575 = call float @dx.op.dot3.f32(i32 55, float %6548, float %6549, float %6574, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6576 = fcmp fast ogt float %6575, 0.000000e+00
  %6577 = fcmp fast olt float %6575, 0.000000e+00
  %6578 = zext i1 %6576 to i32
  %6579 = zext i1 %6577 to i32
  %6580 = sub nsw i32 %6578, %6579
  %6581 = sitofp i32 %6580 to float
  %6582 = fcmp fast une float %6573, %6581
  br i1 %6582, label %6583, label %6593

; <label>:6583                                    ; preds = %6542
  %6584 = fmul fast float %6566, %6561
  %6585 = fmul fast float %6566, %6560
  %6586 = fmul fast float %6566, %6559
  %6587 = fmul fast float %6586, %6586
  %6588 = fmul fast float %6585, %6585
  %6589 = fadd fast float %6587, %6588
  %6590 = fmul fast float %6584, %6584
  %6591 = fadd fast float %6589, %6590
  %6592 = call float @dx.op.unary.f32(i32 24, float %6591)  ; Sqrt(value)
  br label %6603

; <label>:6593                                    ; preds = %6542
  %6594 = icmp slt i32 %6572, 0
  br i1 %6594, label %6595, label %6603

; <label>:6595                                    ; preds = %6593
  %6596 = fsub fast float %160, %6555
  %6597 = fmul fast float %6548, %6548
  %6598 = fmul fast float %6549, %6549
  %6599 = fadd fast float %6597, %6598
  %6600 = fmul fast float %6596, %6596
  %6601 = fadd fast float %6599, %6600
  %6602 = call float @dx.op.unary.f32(i32 24, float %6601)  ; Sqrt(value)
  br label %6603

; <label>:6603                                    ; preds = %6595, %6593, %6583
  %6604 = phi float [ %6592, %6583 ], [ %6602, %6595 ], [ 0.000000e+00, %6593 ]
  %6605 = fsub fast float -0.000000e+00, %6604
  %6606 = select i1 %6547, float -0.000000e+00, float %6605
  %6607 = fmul fast float %5278, 0x3FF7154760000000
  %6608 = fmul fast float %6607, %6606
  %6609 = fmul fast float %5279, 0x3FF7154760000000
  %6610 = fmul fast float %6609, %6606
  %6611 = fmul fast float %5280, 0x3FF7154760000000
  %6612 = fmul fast float %6611, %6606
  %6613 = call float @dx.op.unary.f32(i32 21, float %6608)  ; Exp(value)
  %6614 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6615 = call float @dx.op.unary.f32(i32 21, float %6612)  ; Exp(value)
  %6616 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6617 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6619 = fmul fast float %6543, %6616
  %6620 = fmul fast float %6544, %6617
  %6621 = fmul fast float %6545, %6618
  %6622 = fsub fast float %5725, %178
  %6623 = fsub fast float %5726, %179
  %6624 = fsub fast float %5727, %180
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6624, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.unary.f32(i32 25, float %6625)  ; Rsqrt(value)
  %6627 = fmul fast float %6626, %6622
  %6628 = fmul fast float %6626, %6623
  %6629 = fmul fast float %6626, %6624
  %6630 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %6627, float %6628, float %6629)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  %6633 = fmul fast float %6632, %6632
  %6634 = fmul fast float %6633, %5487
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  %6636 = fmul fast float %6635, %6632
  %6637 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %6627, float %6628, float %6629)  ; Dot3(ax,ay,az,bx,by,bz)
  %6638 = fmul fast float %6637, %6637
  %6639 = call float @dx.op.unary.f32(i32 6, float %6630)  ; FAbs(value)
  %6640 = fsub fast float 1.000000e+00, %5469
  %6641 = call float @dx.op.binary.f32(i32 35, float %6640, float 0x3F847AE140000000)  ; FMax(a,b)
  %6642 = fmul fast float %6641, %6641
  %6643 = fmul fast float %6642, %6642
  %6644 = fsub fast float 1.000000e+00, %6643
  %6645 = fmul fast float %5474, %5474
  %6646 = fmul fast float %6645, %6644
  %6647 = fadd fast float %6646, %6643
  %6648 = bitcast float %6647 to i32
  %6649 = ashr i32 %6648, 1
  %6650 = add nsw i32 %6649, 532487669
  %6651 = bitcast i32 %6650 to float
  %6652 = fadd fast float %6651, %5474
  %6653 = fmul fast float %6643, %6638
  %6654 = fsub fast float 1.000000e+00, %6638
  %6655 = fadd fast float %6654, %6653
  %6656 = fmul fast float %6639, %6639
  %6657 = fmul fast float %6656, %6644
  %6658 = fadd fast float %6657, %6643
  %6659 = bitcast float %6658 to i32
  %6660 = ashr i32 %6659, 1
  %6661 = add nsw i32 %6660, 532487669
  %6662 = bitcast i32 %6661 to float
  %6663 = fadd fast float %6662, %6639
  %6664 = fmul fast float %6655, %6655
  %6665 = fmul fast float %6664, %6652
  %6666 = fmul fast float %6665, %6663
  %6667 = fdiv fast float 0x3FF0A00000000000, %6666
  %6668 = fmul fast float %6667, %6643
  %6669 = fmul fast float %5587, 0x3FF9999980000000
  %6670 = fsub fast float 5.000000e+00, %6669
  %6671 = call float @dx.op.unary.f32(i32 6, float %6631)  ; FAbs(value)
  %6672 = fsub fast float 1.000000e+00, %6671
  %6673 = fmul fast float %5587, 0x41D9660740000000
  %6674 = fadd fast float %6673, 0xC1EFBF8940000000
  %6675 = bitcast float %6672 to i32
  %6676 = sitofp i32 %6675 to float
  %6677 = fmul fast float %6676, %6670
  %6678 = fadd fast float %6674, %6677
  %6679 = fptosi float %6678 to i32
  %6680 = bitcast i32 %6679 to float
  %6681 = fsub fast float 1.000000e+00, %5460
  %6682 = fsub fast float 1.000000e+00, %5461
  %6683 = fsub fast float 1.000000e+00, %5472
  %6684 = fmul fast float %6680, %6681
  %6685 = fmul fast float %6680, %6682
  %6686 = fmul fast float %6680, %6683
  %6687 = fadd fast float %6684, %5460
  %6688 = fadd fast float %6685, %5461
  %6689 = fadd fast float %6686, %5472
  br i1 %5610, label %6690, label %6713

; <label>:6690                                    ; preds = %6603
  %6691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4851, float %6671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6692 = extractvalue %dx.types.ResRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.ResRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.ResRet.f32 %6691, 2
  %6695 = fadd fast float %6692, -5.000000e-01
  %6696 = fadd fast float %6693, -5.000000e-01
  %6697 = fadd fast float %6694, -5.000000e-01
  %6698 = fmul fast float %5460, 4.000000e+00
  %6699 = fmul fast float %6698, %6681
  %6700 = fmul fast float %6699, %6695
  %6701 = fmul fast float %5461, 4.000000e+00
  %6702 = fmul fast float %6701, %6682
  %6703 = fmul fast float %6702, %6696
  %6704 = fmul fast float %5472, 4.000000e+00
  %6705 = fmul fast float %6704, %6683
  %6706 = fmul fast float %6705, %6697
  %6707 = fadd fast float %6700, %6687
  %6708 = fadd fast float %6703, %6688
  %6709 = fadd fast float %6706, %6689
  %6710 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6712 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  br label %6713

; <label>:6713                                    ; preds = %6690, %6603
  %6714 = phi float [ %6710, %6690 ], [ %6687, %6603 ]
  %6715 = phi float [ %6711, %6690 ], [ %6688, %6603 ]
  %6716 = phi float [ %6712, %6690 ], [ %6689, %6603 ]
  %6717 = fmul fast float %6630, 9.843750e-01
  %6718 = fadd fast float %6717, 7.812500e-03
  %6719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6718, float %5591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6720 = extractvalue %dx.types.ResRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.ResRet.f32 %6719, 1
  %6722 = extractvalue %dx.types.ResRet.f32 %6719, 2
  %6723 = extractvalue %dx.types.ResRet.f32 %6719, 3
  %6724 = fsub fast float %6722, %6720
  %6725 = fsub fast float %6723, %6721
  %6726 = fmul fast float %6724, %5597
  %6727 = fmul fast float %6725, %5597
  %6728 = fadd fast float %6726, %6720
  %6729 = fadd fast float %6727, %6721
  %6730 = fmul fast float %6728, %5460
  %6731 = fmul fast float %6728, %5461
  %6732 = fmul fast float %6728, %5472
  %6733 = fadd fast float %6730, %6729
  %6734 = fadd fast float %6731, %6729
  %6735 = fadd fast float %6732, %6729
  br i1 %5610, label %6736, label %6759

; <label>:6736                                    ; preds = %6713
  %6737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4851, float %6630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.ResRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.ResRet.f32 %6737, 2
  %6741 = fadd fast float %6738, -5.000000e-01
  %6742 = fadd fast float %6739, -5.000000e-01
  %6743 = fadd fast float %6740, -5.000000e-01
  %6744 = fmul fast float %5460, 4.000000e+00
  %6745 = fmul fast float %6744, %6681
  %6746 = fmul fast float %6745, %6741
  %6747 = fmul fast float %5461, 4.000000e+00
  %6748 = fmul fast float %6747, %6682
  %6749 = fmul fast float %6748, %6742
  %6750 = fmul fast float %5472, 4.000000e+00
  %6751 = fmul fast float %6750, %6683
  %6752 = fmul fast float %6751, %6743
  %6753 = fadd fast float %6746, %6733
  %6754 = fadd fast float %6749, %6734
  %6755 = fadd fast float %6752, %6735
  %6756 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6757 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6758 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  br label %6759

; <label>:6759                                    ; preds = %6736, %6713
  %6760 = phi float [ %6756, %6736 ], [ %6733, %6713 ]
  %6761 = phi float [ %6757, %6736 ], [ %6734, %6713 ]
  %6762 = phi float [ %6758, %6736 ], [ %6735, %6713 ]
  %6763 = call float @dx.op.binary.f32(i32 35, float %6761, float %6762)  ; FMax(a,b)
  %6764 = call float @dx.op.binary.f32(i32 35, float %6760, float %6763)  ; FMax(a,b)
  %6765 = fsub fast float 1.000000e+00, %6764
  %6766 = fmul fast float %6714, %6668
  %6767 = fmul fast float %6715, %6668
  %6768 = fmul fast float %6716, %6668
  %6769 = fsub fast float 1.000000e+00, %6631
  %6770 = bitcast float %6769 to i32
  %6771 = sitofp i32 %6770 to float
  %6772 = fmul fast float %6771, 5.000000e+00
  %6773 = fadd fast float %6772, 0xC1EFBF8940000000
  %6774 = fptosi float %6773 to i32
  %6775 = bitcast i32 %6774 to float
  %6776 = fmul fast float %6775, %4852
  %6777 = fmul fast float %6765, %6776
  %6778 = fmul fast float %6777, %5660
  %6779 = fmul fast float %6777, %5661
  %6780 = fmul fast float %6777, %5662
  %6781 = fadd fast float %6778, %6766
  %6782 = fadd fast float %6779, %6767
  %6783 = fadd fast float %6780, %6768
  %6784 = fmul fast float %6636, %6619
  %6785 = fmul fast float %6784, %6765
  %6786 = fmul fast float %6636, %6620
  %6787 = fmul fast float %6786, %6765
  %6788 = fmul fast float %6636, %6621
  %6789 = fmul fast float %6788, %6765
  %6790 = fmul fast float %6784, %6781
  %6791 = fmul fast float %6786, %6782
  %6792 = fmul fast float %6788, %6783
  %6793 = fadd fast float %6785, %5644
  %6794 = fmul fast float %6793, %4877
  %6795 = fadd fast float %6787, %5645
  %6796 = fmul fast float %6795, %4877
  %6797 = fadd fast float %6789, %5646
  %6798 = fmul fast float %6797, %4877
  %6799 = fadd fast float %6790, %5713
  %6800 = fmul fast float %6799, %4877
  %6801 = fadd fast float %6791, %5716
  %6802 = fmul fast float %6801, %4877
  %6803 = fadd fast float %6792, %5719
  %6804 = fmul fast float %6803, %4877
  br label %6805

; <label>:6805                                    ; preds = %6759, %6537, %5637
  %6806 = phi float [ %5714, %5637 ], [ %5714, %6537 ], [ %6800, %6759 ]
  %6807 = phi float [ %5717, %5637 ], [ %5717, %6537 ], [ %6802, %6759 ]
  %6808 = phi float [ %5720, %5637 ], [ %5720, %6537 ], [ %6804, %6759 ]
  %6809 = phi float [ %5709, %5637 ], [ %5709, %6537 ], [ %6794, %6759 ]
  %6810 = phi float [ %5710, %5637 ], [ %5710, %6537 ], [ %6796, %6759 ]
  %6811 = phi float [ %5711, %5637 ], [ %5711, %6537 ], [ %6798, %6759 ]
  %6812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.i32 %6812, 0
  %6814 = icmp eq i32 %6813, 0
  br i1 %6814, label %7447, label %6815

; <label>:6815                                    ; preds = %6805
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6819 = fmul fast float %6817, %95
  %6820 = fmul fast float %6818, %96
  %6821 = fptoui float %6819 to i32
  %6822 = fptoui float %6820 to i32
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.CBufRet.f32 %6823, 2
  %6826 = extractvalue %dx.types.CBufRet.f32 %6823, 3
  %6827 = fadd fast float %86, -4.000000e+00
  %6828 = call float @dx.op.binary.f32(i32 35, float %6827, float 0.000000e+00)  ; FMax(a,b)
  %6829 = fadd fast float %6828, %6824
  %6830 = fmul fast float %6829, %6825
  %6831 = call float @dx.op.unary.f32(i32 23, float %6830)  ; Log(value)
  %6832 = fmul fast float %6831, %6826
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6835 = fmul fast float %6832, %6834
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.i32 %6837, 1
  %6839 = add i32 %6838, -1
  %6840 = uitofp i32 %6838 to float
  %6841 = fmul fast float %6840, %6836
  %6842 = fptoui float %6841 to i32
  %6843 = call i32 @dx.op.binary.i32(i32 40, i32 %6842, i32 %6839)  ; UMin(a,b)
  %6844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.i32 %6844, 2
  %6846 = extractvalue %dx.types.CBufRet.i32 %6844, 3
  %6847 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6822, i32 %6845, i32 %6821)  ; UMad(a,b,c)
  %6848 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6843, i32 %6846, i32 %6847)  ; UMad(a,b,c)
  %6849 = add nsw i32 %6813, -1
  %6850 = call i32 @dx.op.binary.i32(i32 37, i32 %6849, i32 0)  ; IMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6852 = fptoui float %6851 to i32
  %6853 = lshr i32 %6852, 5
  %6854 = call i32 @dx.op.binary.i32(i32 40, i32 %6853, i32 8191)  ; UMin(a,b)
  %6855 = shl i32 %6854, 2
  %6856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6855, i32 undef)  ; BufferLoad(srv,index,wot)
  %6857 = extractvalue %dx.types.ResRet.i32 %6856, 0
  %6858 = lshr i32 %6857, 16
  %6859 = and i32 %6857, 65535
  %6860 = lshr i32 %6857, 21
  %6861 = lshr i32 %6859, 5
  %6862 = call i32 @dx.op.binary.i32(i32 40, i32 %6861, i32 %6850)  ; UMin(a,b)
  %6863 = icmp ugt i32 %6860, %6862
  br i1 %6863, label %7447, label %6864

; <label>:6864                                    ; preds = %6815
  br label %6865

; <label>:6865                                    ; preds = %7437, %6864
  %6866 = phi i32 [ %7444, %7437 ], [ %6860, %6864 ]
  %6867 = phi float [ %7438, %7437 ], [ %6806, %6864 ]
  %6868 = phi float [ %7439, %7437 ], [ %6807, %6864 ]
  %6869 = phi float [ %7440, %7437 ], [ %6808, %6864 ]
  %6870 = phi float [ %7441, %7437 ], [ %6809, %6864 ]
  %6871 = phi float [ %7442, %7437 ], [ %6810, %6864 ]
  %6872 = phi float [ %7443, %7437 ], [ %6811, %6864 ]
  %6873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.i32 %6873, 0
  %6875 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6848, i32 %6874, i32 %6866)  ; UMad(a,b,c)
  %6876 = shl i32 %6875, 2
  %6877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6876, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.i32 %6877, 0
  %6879 = shl i32 %6866, 5
  %6880 = sub nsw i32 %6858, %6879
  %6881 = call i32 @dx.op.binary.i32(i32 37, i32 %6880, i32 0)  ; IMax(a,b)
  %6882 = call i32 @dx.op.binary.i32(i32 38, i32 %6881, i32 31)  ; IMin(a,b)
  %6883 = sub nsw i32 1, %6858
  %6884 = add nsw i32 %6883, %6859
  %6885 = call i32 @dx.op.binary.i32(i32 37, i32 %6884, i32 0)  ; IMax(a,b)
  %6886 = call i32 @dx.op.binary.i32(i32 38, i32 %6885, i32 32)  ; IMin(a,b)
  %6887 = and i32 %6886, 31
  %6888 = shl i32 -1, %6887
  %6889 = xor i32 %6888, -1
  %6890 = and i32 %6882, 31
  %6891 = shl i32 %6889, %6890
  %6892 = icmp eq i32 %6886, 32
  %6893 = select i1 %6892, i32 -1, i32 %6891
  %6894 = and i32 %6893, %6878
  %6895 = icmp eq i32 %6894, 0
  br i1 %6895, label %7437, label %6896

; <label>:6896                                    ; preds = %6865
  br label %6897

; <label>:6897                                    ; preds = %7031, %6896
  %6898 = phi i32 [ %6909, %7031 ], [ %6894, %6896 ]
  %6899 = phi float [ %7032, %7031 ], [ %6867, %6896 ]
  %6900 = phi float [ %7033, %7031 ], [ %6868, %6896 ]
  %6901 = phi float [ %7034, %7031 ], [ %6869, %6896 ]
  %6902 = phi float [ %7035, %7031 ], [ %6870, %6896 ]
  %6903 = phi float [ %7036, %7031 ], [ %6871, %6896 ]
  %6904 = phi float [ %7037, %7031 ], [ %6872, %6896 ]
  %6905 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6898)  ; FirstbitLo(value)
  %6906 = add i32 %6905, %6879
  %6907 = and i32 %6905, 31
  %6908 = shl i32 1, %6907
  %6909 = xor i32 %6908, %6898
  %6910 = mul i32 %6906, 112
  %6911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6910, i32 undef)  ; BufferLoad(srv,index,wot)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6915 = or i32 %6910, 12
  %6916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6915, i32 undef)  ; BufferLoad(srv,index,wot)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = add i32 %6910, 16
  %6919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6918, i32 undef)  ; BufferLoad(srv,index,wot)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.ResRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.ResRet.f32 %6919, 2
  %6923 = add i32 %6910, 28
  %6924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6923, i32 undef)  ; BufferLoad(srv,index,wot)
  %6925 = extractvalue %dx.types.ResRet.i32 %6924, 0
  %6926 = add i32 %6910, 44
  %6927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6926, i32 undef)  ; BufferLoad(srv,index,wot)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = add i32 %6910, 48
  %6930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6929, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.ResRet.f32 %6930, 2
  %6934 = extractvalue %dx.types.ResRet.f32 %6930, 3
  %6935 = add i32 %6910, 64
  %6936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6935, i32 undef)  ; BufferLoad(srv,index,wot)
  %6937 = extractvalue %dx.types.ResRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.ResRet.f32 %6936, 1
  %6939 = extractvalue %dx.types.ResRet.f32 %6936, 2
  %6940 = extractvalue %dx.types.ResRet.f32 %6936, 3
  %6941 = add i32 %6910, 80
  %6942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6941, i32 undef)  ; BufferLoad(srv,index,wot)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 1
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 2
  %6945 = add i32 %6910, 92
  %6946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6945, i32 undef)  ; BufferLoad(srv,index,wot)
  %6947 = extractvalue %dx.types.ResRet.i32 %6946, 0
  %6948 = call float @dx.op.dot3.f32(i32 55, float %6912, float %6913, float %6914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6949 = select i1 %252, float %6943, float %6912
  %6950 = select i1 %252, float %6948, float %6913
  %6951 = select i1 %252, float %6944, float %6914
  %6952 = and i32 %6947, 65535
  %6953 = uitofp i32 %6952 to float
  %6954 = lshr i32 %6947, 16
  %6955 = uitofp i32 %6954 to float
  %6956 = and i32 %6925, 65535
  %6957 = and i32 %6925, 50331648
  %6958 = icmp eq i32 %6957, 33554432
  %6959 = fsub fast float %6931, %158
  %6960 = fsub fast float %6932, %159
  %6961 = fsub fast float %6933, %160
  %6962 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %6961, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = call float @dx.op.unary.f32(i32 24, float %6962)  ; Sqrt(value)
  %6964 = fdiv fast float 1.000000e+00, %6963
  %6965 = fmul fast float %6964, %6959
  %6966 = fmul fast float %6964, %6960
  %6967 = fmul fast float %6964, %6961
  %6968 = fadd fast float %6963, %6917
  %6969 = fdiv fast float 1.000000e+00, %6968
  %6970 = fmul float %6928, %6969
  %6971 = fmul float %6970, %6970
  %6972 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  br i1 %6958, label %6973, label %6994

; <label>:6973                                    ; preds = %6897
  %6974 = fmul fast float %6939, %6920
  %6975 = fmul fast float %6939, %6921
  %6976 = fmul fast float %6939, %6922
  %6977 = fadd fast float %6959, %6974
  %6978 = fadd fast float %6960, %6975
  %6979 = fadd fast float %6961, %6976
  %6980 = call float @dx.op.dot3.f32(i32 55, float %6977, float %6978, float %6979, float %6977, float %6978, float %6979)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = call float @dx.op.unary.f32(i32 25, float %6980)  ; Rsqrt(value)
  %6982 = fmul fast float %6981, %6977
  %6983 = fmul fast float %6981, %6978
  %6984 = fmul fast float %6981, %6979
  %6985 = fsub fast float %158, %6931
  %6986 = fsub fast float %159, %6932
  %6987 = fsub fast float %160, %6933
  %6988 = fsub fast float -0.000000e+00, %6985
  %6989 = fsub fast float -0.000000e+00, %6986
  %6990 = fsub fast float -0.000000e+00, %6987
  %6991 = call float @dx.op.dot3.f32(i32 55, float %6988, float %6989, float %6990, float %6920, float %6921, float %6922)  ; Dot3(ax,ay,az,bx,by,bz)
  %6992 = fcmp fast ogt float %6991, 0.000000e+00
  %6993 = uitofp i1 %6992 to float
  br label %6994

; <label>:6994                                    ; preds = %6973, %6897
  %6995 = phi float [ %6993, %6973 ], [ 1.000000e+00, %6897 ]
  %6996 = phi float [ %6982, %6973 ], [ %6965, %6897 ]
  %6997 = phi float [ %6983, %6973 ], [ %6966, %6897 ]
  %6998 = phi float [ %6984, %6973 ], [ %6967, %6897 ]
  %6999 = call float @dx.op.dot3.f32(i32 55, float %6920, float %6921, float %6922, float %6996, float %6997, float %6998)  ; Dot3(ax,ay,az,bx,by,bz)
  %7000 = fmul fast float %6999, %6999
  %7001 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7002 = fsub fast float 1.000000e+00, %7001
  %7003 = fmul fast float %7002, 5.000000e-01
  %7004 = fcmp fast ogt float %6999, 0.000000e+00
  %7005 = fsub fast float 1.000000e+00, %7003
  %7006 = select i1 %7004, float %7003, float %7005
  %7007 = fmul fast float %7006, %6955
  %7008 = fadd fast float %7007, %6953
  %7009 = fmul fast float %7008, 0x3EF0001000000000
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7009, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = fmul fast float %6999, %6937
  %7013 = fadd fast float %7012, %6938
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7015 = select i1 %6958, float 1.000000e+00, float %7014
  %7016 = select i1 %6958, float %7014, float 1.000000e+00
  %7017 = fmul fast float %6963, %6934
  %7018 = fsub fast float 1.000000e+00, %7017
  %7019 = fmul fast float %7018, %6940
  %7020 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7021 = fmul fast float %7020, %7016
  %7022 = fmul fast float %7021, 2.000000e+00
  %7023 = fsub fast float 3.000000e+00, %7022
  %7024 = fmul fast float %7011, %6995
  %7025 = fmul fast float %7021, %7021
  %7026 = fmul fast float %7025, %7024
  %7027 = fmul fast float %7026, %7023
  %7028 = call float @dx.op.binary.f32(i32 36, float %7027, float %7027)  ; FMin(a,b)
  %7029 = call float @dx.op.binary.f32(i32 36, float %7027, float %7028)  ; FMin(a,b)
  %7030 = fcmp fast ogt float %7029, 0.000000e+00
  br i1 %7030, label %7039, label %7031, !dx.controlflow.hints !118

; <label>:7031                                    ; preds = %7393, %7139, %6994
  %7032 = phi float [ %6899, %7139 ], [ %6899, %6994 ], [ %7433, %7393 ]
  %7033 = phi float [ %6900, %7139 ], [ %6900, %6994 ], [ %7434, %7393 ]
  %7034 = phi float [ %6901, %7139 ], [ %6901, %6994 ], [ %7435, %7393 ]
  %7035 = phi float [ %6902, %7139 ], [ %6902, %6994 ], [ %7427, %7393 ]
  %7036 = phi float [ %6903, %7139 ], [ %6903, %6994 ], [ %7428, %7393 ]
  %7037 = phi float [ %6904, %7139 ], [ %6904, %6994 ], [ %7429, %7393 ]
  %7038 = icmp eq i32 %6898, %6908
  br i1 %7038, label %7436, label %6897

; <label>:7039                                    ; preds = %6994
  %7040 = icmp eq i32 %6956, 255
  br i1 %7040, label %7139, label %7041, !dx.controlflow.hints !119

; <label>:7041                                    ; preds = %7039
  %7042 = mul nuw nsw i32 %6956, 176
  %7043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7042, i32 undef)  ; BufferLoad(srv,index,wot)
  %7044 = extractvalue %dx.types.ResRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.ResRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.ResRet.f32 %7043, 2
  %7047 = extractvalue %dx.types.ResRet.f32 %7043, 3
  %7048 = add nuw nsw i32 %7042, 16
  %7049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7048, i32 undef)  ; BufferLoad(srv,index,wot)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = add nuw nsw i32 %7042, 32
  %7053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7052, i32 undef)  ; BufferLoad(srv,index,wot)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.ResRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.ResRet.f32 %7053, 2
  %7057 = add nuw nsw i32 %7042, 48
  %7058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7057, i32 undef)  ; BufferLoad(srv,index,wot)
  %7059 = extractvalue %dx.types.ResRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.ResRet.f32 %7058, 1
  %7061 = extractvalue %dx.types.ResRet.f32 %7058, 2
  %7062 = extractvalue %dx.types.ResRet.f32 %7058, 3
  %7063 = add nuw nsw i32 %7042, 64
  %7064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7063, i32 undef)  ; BufferLoad(srv,index,wot)
  %7065 = extractvalue %dx.types.ResRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.ResRet.f32 %7064, 1
  %7067 = extractvalue %dx.types.ResRet.f32 %7064, 2
  %7068 = extractvalue %dx.types.ResRet.f32 %7064, 3
  %7069 = add nuw nsw i32 %7042, 80
  %7070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7069, i32 undef)  ; BufferLoad(srv,index,wot)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = extractvalue %dx.types.ResRet.f32 %7070, 3
  %7075 = add nuw nsw i32 %7042, 96
  %7076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7075, i32 undef)  ; BufferLoad(srv,index,wot)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = extractvalue %dx.types.ResRet.f32 %7076, 3
  %7081 = bitcast float %7051 to i32
  %7082 = fmul fast float %7056, %102
  %7083 = fmul fast float %7056, %103
  %7084 = fmul fast float %7056, %104
  %7085 = fadd fast float %7082, %158
  %7086 = fadd fast float %7083, %159
  %7087 = fadd fast float %7084, %160
  %7088 = fmul fast float %7085, %7059
  %7089 = call float @dx.op.tertiary.f32(i32 46, float %7086, float %7065, float %7088)  ; FMad(a,b,c)
  %7090 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7071, float %7089)  ; FMad(a,b,c)
  %7091 = fadd fast float %7090, %7077
  %7092 = fmul fast float %7085, %7060
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %7086, float %7066, float %7092)  ; FMad(a,b,c)
  %7094 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7072, float %7093)  ; FMad(a,b,c)
  %7095 = fadd fast float %7094, %7078
  %7096 = fmul fast float %7085, %7061
  %7097 = call float @dx.op.tertiary.f32(i32 46, float %7086, float %7067, float %7096)  ; FMad(a,b,c)
  %7098 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7073, float %7097)  ; FMad(a,b,c)
  %7099 = fadd fast float %7098, %7079
  %7100 = fmul fast float %7085, %7062
  %7101 = call float @dx.op.tertiary.f32(i32 46, float %7086, float %7068, float %7100)  ; FMad(a,b,c)
  %7102 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7074, float %7101)  ; FMad(a,b,c)
  %7103 = fadd fast float %7102, %7080
  %7104 = fdiv fast float %7091, %7103
  %7105 = fdiv fast float %7095, %7103
  %7106 = fdiv fast float %7099, %7103
  %7107 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7106)  ; FMax(a,b)
  %7108 = fmul fast float %263, 0x401921FB60000000
  %7109 = call float @dx.op.unary.f32(i32 13, float %7108)  ; Sin(value)
  %7110 = call float @dx.op.unary.f32(i32 12, float %7108)  ; Cos(value)
  %7111 = fsub fast float -0.000000e+00, %7109
  %7112 = fmul fast float %7046, 5.000000e-01
  %7113 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7114 = call float @dx.op.unary.f32(i32 22, float %7113)  ; Frc(value)
  %7115 = fmul fast float %7114, 0x404A7DD040000000
  %7116 = call float @dx.op.unary.f32(i32 22, float %7115)  ; Frc(value)
  %7117 = fmul fast float %7116, %7055
  %7118 = fadd fast float %7117, %7112
  %7119 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7111, float 0.000000e+00)  ; FMad(a,b,c)
  %7120 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7110, float 0.000000e+00)  ; FMad(a,b,c)
  %7121 = fadd fast float %7119, %7104
  %7122 = fadd fast float %7120, %7105
  %7123 = fmul fast float %7121, %7050
  %7124 = fmul fast float %7122, %7050
  %7125 = call float @dx.op.binary.f32(i32 35, float %7123, float %7046)  ; FMax(a,b)
  %7126 = call float @dx.op.binary.f32(i32 35, float %7124, float %7046)  ; FMax(a,b)
  %7127 = call float @dx.op.binary.f32(i32 36, float %7125, float %7047)  ; FMin(a,b)
  %7128 = call float @dx.op.binary.f32(i32 36, float %7126, float %7047)  ; FMin(a,b)
  %7129 = fadd fast float %7127, %7044
  %7130 = fadd fast float %7128, %7045
  %7131 = uitofp i32 %7081 to float
  %7132 = fadd fast float %7107, %7054
  %7133 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7129, float %7130, float %7131, float undef, i32 0, i32 0, i32 undef, float %7132)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7134 = extractvalue %dx.types.ResRet.f32 %7133, 0
  %7135 = fadd fast float %7134, -1.000000e+00
  %7136 = fmul fast float %7135, %7015
  %7137 = fadd fast float %7136, 1.000000e+00
  %7138 = fmul fast float %7137, %7027
  br label %7139

; <label>:7139                                    ; preds = %7041, %7039
  %7140 = phi float [ %7138, %7041 ], [ %7027, %7039 ]
  %7141 = call float @dx.op.binary.f32(i32 36, float %7140, float %7140)  ; FMin(a,b)
  %7142 = call float @dx.op.binary.f32(i32 36, float %7140, float %7141)  ; FMin(a,b)
  %7143 = fcmp fast ogt float %7142, 0.000000e+00
  br i1 %7143, label %7144, label %7031, !dx.controlflow.hints !120

; <label>:7144                                    ; preds = %7139
  %7145 = fmul fast float %7140, %6949
  %7146 = fmul fast float %7140, %6950
  %7147 = fmul fast float %7140, %6951
  %7148 = fsub fast float %6933, %5277
  %7149 = fcmp fast ogt float %7148, 0.000000e+00
  %7150 = fsub fast float %160, %5277
  %7151 = fcmp fast ogt float %7150, 0.000000e+00
  %7152 = xor i1 %7151, %7149
  %7153 = fsub fast float %5277, %6933
  %7154 = fmul fast float %7153, 2.000000e+00
  %7155 = fadd fast float %7154, %6933
  %7156 = select i1 %7152, float %6933, float %7155
  %7157 = fsub fast float %7156, %160
  %7158 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %7157, float %6959, float %6960, float %7157)  ; Dot3(ax,ay,az,bx,by,bz)
  %7159 = call float @dx.op.unary.f32(i32 25, float %7158)  ; Rsqrt(value)
  %7160 = fmul fast float %7159, %6959
  %7161 = fmul fast float %7159, %6960
  %7162 = fmul fast float %7159, %7157
  %7163 = fsub fast float %5277, %160
  %7164 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7163)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7160, float %7161, float %7162)  ; Dot3(ax,ay,az,bx,by,bz)
  %7166 = fdiv fast float 1.000000e+00, %7165
  %7167 = fmul fast float %7166, %7164
  %7168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7150, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7169 = fcmp fast ogt float %7168, 0.000000e+00
  %7170 = fcmp fast olt float %7168, 0.000000e+00
  %7171 = zext i1 %7169 to i32
  %7172 = zext i1 %7170 to i32
  %7173 = sub nsw i32 %7171, %7172
  %7174 = sitofp i32 %7173 to float
  %7175 = fsub fast float %7156, %5277
  %7176 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %7175, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = fcmp fast ogt float %7176, 0.000000e+00
  %7178 = fcmp fast olt float %7176, 0.000000e+00
  %7179 = zext i1 %7177 to i32
  %7180 = zext i1 %7178 to i32
  %7181 = sub nsw i32 %7179, %7180
  %7182 = sitofp i32 %7181 to float
  %7183 = fcmp fast une float %7174, %7182
  br i1 %7183, label %7184, label %7194

; <label>:7184                                    ; preds = %7144
  %7185 = fmul fast float %7167, %7162
  %7186 = fmul fast float %7167, %7161
  %7187 = fmul fast float %7167, %7160
  %7188 = fmul fast float %7187, %7187
  %7189 = fmul fast float %7186, %7186
  %7190 = fadd fast float %7188, %7189
  %7191 = fmul fast float %7185, %7185
  %7192 = fadd fast float %7190, %7191
  %7193 = call float @dx.op.unary.f32(i32 24, float %7192)  ; Sqrt(value)
  br label %7206

; <label>:7194                                    ; preds = %7144
  %7195 = icmp slt i32 %7173, 0
  br i1 %7195, label %7196, label %7206

; <label>:7196                                    ; preds = %7194
  %7197 = fsub fast float %158, %6931
  %7198 = fsub fast float %159, %6932
  %7199 = fsub fast float %160, %7156
  %7200 = fmul fast float %7197, %7197
  %7201 = fmul fast float %7198, %7198
  %7202 = fadd fast float %7200, %7201
  %7203 = fmul fast float %7199, %7199
  %7204 = fadd fast float %7202, %7203
  %7205 = call float @dx.op.unary.f32(i32 24, float %7204)  ; Sqrt(value)
  br label %7206

; <label>:7206                                    ; preds = %7196, %7194, %7184
  %7207 = phi float [ %7193, %7184 ], [ %7205, %7196 ], [ 0.000000e+00, %7194 ]
  %7208 = and i1 %7151, %7149
  %7209 = fsub fast float -0.000000e+00, %7207
  %7210 = select i1 %7208, float -0.000000e+00, float %7209
  %7211 = fmul fast float %5278, 0x3FF7154760000000
  %7212 = fmul fast float %7211, %7210
  %7213 = fmul fast float %5279, 0x3FF7154760000000
  %7214 = fmul fast float %7213, %7210
  %7215 = fmul fast float %5280, 0x3FF7154760000000
  %7216 = fmul fast float %7215, %7210
  %7217 = call float @dx.op.unary.f32(i32 21, float %7212)  ; Exp(value)
  %7218 = call float @dx.op.unary.f32(i32 21, float %7214)  ; Exp(value)
  %7219 = call float @dx.op.unary.f32(i32 21, float %7216)  ; Exp(value)
  %7220 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7223 = fmul fast float %7145, %7220
  %7224 = fmul fast float %7146, %7221
  %7225 = fmul fast float %7147, %7222
  %7226 = fsub fast float %6965, %178
  %7227 = fsub fast float %6966, %179
  %7228 = fsub fast float %6967, %180
  %7229 = call float @dx.op.dot3.f32(i32 55, float %7226, float %7227, float %7228, float %7226, float %7227, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7230 = call float @dx.op.unary.f32(i32 25, float %7229)  ; Rsqrt(value)
  %7231 = fmul fast float %7230, %7226
  %7232 = fmul fast float %7230, %7227
  %7233 = fmul fast float %7230, %7228
  %7234 = call float @dx.op.dot3.f32(i32 55, float %6965, float %6966, float %6967, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %7235 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %7231, float %7232, float %7233)  ; Dot3(ax,ay,az,bx,by,bz)
  %7236 = call float @dx.op.unary.f32(i32 7, float %7234)  ; Saturate(value)
  %7237 = fmul fast float %7236, %6972
  %7238 = fmul fast float %7236, %7236
  %7239 = fmul fast float %7238, %5487
  %7240 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  %7241 = fmul fast float %7237, %7240
  %7242 = bitcast float %6962 to i32
  %7243 = ashr i32 %7242, 1
  %7244 = sub nsw i32 1597463007, %7243
  %7245 = bitcast i32 %7244 to float
  %7246 = fmul fast float %7245, %6959
  %7247 = fmul fast float %7245, %6960
  %7248 = fmul fast float %7245, %6961
  %7249 = fsub fast float %7246, %178
  %7250 = fsub fast float %7247, %179
  %7251 = fsub fast float %7248, %180
  %7252 = call float @dx.op.dot3.f32(i32 55, float %7249, float %7250, float %7251, float %7249, float %7250, float %7251)  ; Dot3(ax,ay,az,bx,by,bz)
  %7253 = call float @dx.op.unary.f32(i32 25, float %7252)  ; Rsqrt(value)
  %7254 = fmul fast float %7249, %7253
  %7255 = fmul fast float %7250, %7253
  %7256 = fmul fast float %7251, %7253
  %7257 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %7254, float %7255, float %7256)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = fmul fast float %7257, %7257
  %7259 = call float @dx.op.unary.f32(i32 6, float %7234)  ; FAbs(value)
  %7260 = fsub fast float 1.000000e+00, %5469
  %7261 = call float @dx.op.binary.f32(i32 35, float %7260, float 0x3F847AE140000000)  ; FMax(a,b)
  %7262 = fmul fast float %7261, %7261
  %7263 = fmul fast float %7262, %7262
  %7264 = fsub fast float 1.000000e+00, %7263
  %7265 = fmul fast float %5474, %5474
  %7266 = fmul fast float %7265, %7264
  %7267 = fadd fast float %7266, %7263
  %7268 = bitcast float %7267 to i32
  %7269 = ashr i32 %7268, 1
  %7270 = add nsw i32 %7269, 532487669
  %7271 = bitcast i32 %7270 to float
  %7272 = fadd fast float %7271, %5474
  %7273 = fmul fast float %7263, %7258
  %7274 = fsub fast float 1.000000e+00, %7258
  %7275 = fadd fast float %7274, %7273
  %7276 = fmul fast float %7259, %7259
  %7277 = fmul fast float %7276, %7264
  %7278 = fadd fast float %7277, %7263
  %7279 = bitcast float %7278 to i32
  %7280 = ashr i32 %7279, 1
  %7281 = add nsw i32 %7280, 532487669
  %7282 = bitcast i32 %7281 to float
  %7283 = fadd fast float %7282, %7259
  %7284 = fmul fast float %7275, %7275
  %7285 = fmul fast float %7284, %7272
  %7286 = fmul fast float %7285, %7283
  %7287 = fdiv fast float 1.000000e+00, %7286
  %7288 = bitcast float %7263 to i32
  %7289 = sitofp i32 %7288 to float
  %7290 = fmul fast float %7289, 0x3FE7F73180000000
  %7291 = fadd fast float %7290, 0x41AFE27C40000000
  %7292 = fptosi float %7291 to i32
  %7293 = bitcast i32 %7292 to float
  %7294 = fmul fast float %6928, 0x3FD80E9D60000000
  %7295 = fmul fast float %7294, %7245
  %7296 = fadd fast float %7293, %7295
  %7297 = bitcast float %7296 to i32
  %7298 = sub nsw i32 2129859010, %7297
  %7299 = bitcast i32 %7298 to float
  %7300 = fmul fast float %7263, %7287
  %7301 = fmul fast float %7300, %7293
  %7302 = fmul fast float %7301, %7299
  %7303 = fmul fast float %5587, 0x3FF9999980000000
  %7304 = fsub fast float 5.000000e+00, %7303
  %7305 = call float @dx.op.unary.f32(i32 6, float %7235)  ; FAbs(value)
  %7306 = fsub fast float 1.000000e+00, %7305
  %7307 = fmul fast float %5587, 0x41D9660740000000
  %7308 = fadd fast float %7307, 0xC1EFBF8940000000
  %7309 = bitcast float %7306 to i32
  %7310 = sitofp i32 %7309 to float
  %7311 = fmul fast float %7310, %7304
  %7312 = fadd fast float %7308, %7311
  %7313 = fptosi float %7312 to i32
  %7314 = bitcast i32 %7313 to float
  %7315 = fsub fast float 1.000000e+00, %5460
  %7316 = fsub fast float 1.000000e+00, %5461
  %7317 = fsub fast float 1.000000e+00, %5472
  %7318 = fmul fast float %7314, %7315
  %7319 = fmul fast float %7314, %7316
  %7320 = fmul fast float %7314, %7317
  %7321 = fadd fast float %7318, %5460
  %7322 = fadd fast float %7319, %5461
  %7323 = fadd fast float %7320, %5472
  br i1 %5610, label %7324, label %7347

; <label>:7324                                    ; preds = %7206
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4851, float %7305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = fadd fast float %7326, -5.000000e-01
  %7330 = fadd fast float %7327, -5.000000e-01
  %7331 = fadd fast float %7328, -5.000000e-01
  %7332 = fmul fast float %5460, 4.000000e+00
  %7333 = fmul fast float %7332, %7315
  %7334 = fmul fast float %7333, %7329
  %7335 = fmul fast float %5461, 4.000000e+00
  %7336 = fmul fast float %7335, %7316
  %7337 = fmul fast float %7336, %7330
  %7338 = fmul fast float %5472, 4.000000e+00
  %7339 = fmul fast float %7338, %7317
  %7340 = fmul fast float %7339, %7331
  %7341 = fadd fast float %7334, %7321
  %7342 = fadd fast float %7337, %7322
  %7343 = fadd fast float %7340, %7323
  %7344 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7345 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7346 = call float @dx.op.unary.f32(i32 7, float %7343)  ; Saturate(value)
  br label %7347

; <label>:7347                                    ; preds = %7324, %7206
  %7348 = phi float [ %7344, %7324 ], [ %7321, %7206 ]
  %7349 = phi float [ %7345, %7324 ], [ %7322, %7206 ]
  %7350 = phi float [ %7346, %7324 ], [ %7323, %7206 ]
  %7351 = fmul fast float %7234, 9.843750e-01
  %7352 = fadd fast float %7351, 7.812500e-03
  %7353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7352, float %5591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7354 = extractvalue %dx.types.ResRet.f32 %7353, 0
  %7355 = extractvalue %dx.types.ResRet.f32 %7353, 1
  %7356 = extractvalue %dx.types.ResRet.f32 %7353, 2
  %7357 = extractvalue %dx.types.ResRet.f32 %7353, 3
  %7358 = fsub fast float %7356, %7354
  %7359 = fsub fast float %7357, %7355
  %7360 = fmul fast float %7358, %5597
  %7361 = fmul fast float %7359, %5597
  %7362 = fadd fast float %7360, %7354
  %7363 = fadd fast float %7361, %7355
  %7364 = fmul fast float %7362, %5460
  %7365 = fmul fast float %7362, %5461
  %7366 = fmul fast float %7362, %5472
  %7367 = fadd fast float %7364, %7363
  %7368 = fadd fast float %7365, %7363
  %7369 = fadd fast float %7366, %7363
  br i1 %5610, label %7370, label %7393

; <label>:7370                                    ; preds = %7347
  %7371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4851, float %7234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = fadd fast float %7372, -5.000000e-01
  %7376 = fadd fast float %7373, -5.000000e-01
  %7377 = fadd fast float %7374, -5.000000e-01
  %7378 = fmul fast float %5460, 4.000000e+00
  %7379 = fmul fast float %7378, %7315
  %7380 = fmul fast float %7379, %7375
  %7381 = fmul fast float %5461, 4.000000e+00
  %7382 = fmul fast float %7381, %7316
  %7383 = fmul fast float %7382, %7376
  %7384 = fmul fast float %5472, 4.000000e+00
  %7385 = fmul fast float %7384, %7317
  %7386 = fmul fast float %7385, %7377
  %7387 = fadd fast float %7380, %7367
  %7388 = fadd fast float %7383, %7368
  %7389 = fadd fast float %7386, %7369
  %7390 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7391 = call float @dx.op.unary.f32(i32 7, float %7388)  ; Saturate(value)
  %7392 = call float @dx.op.unary.f32(i32 7, float %7389)  ; Saturate(value)
  br label %7393

; <label>:7393                                    ; preds = %7370, %7347
  %7394 = phi float [ %7390, %7370 ], [ %7367, %7347 ]
  %7395 = phi float [ %7391, %7370 ], [ %7368, %7347 ]
  %7396 = phi float [ %7392, %7370 ], [ %7369, %7347 ]
  %7397 = call float @dx.op.binary.f32(i32 35, float %7395, float %7396)  ; FMax(a,b)
  %7398 = call float @dx.op.binary.f32(i32 35, float %7394, float %7397)  ; FMax(a,b)
  %7399 = fsub fast float 1.000000e+00, %7398
  %7400 = fmul fast float %7348, %7302
  %7401 = fmul fast float %7349, %7302
  %7402 = fmul fast float %7350, %7302
  %7403 = fsub fast float 1.000000e+00, %7235
  %7404 = bitcast float %7403 to i32
  %7405 = sitofp i32 %7404 to float
  %7406 = fmul fast float %7405, 5.000000e+00
  %7407 = fadd fast float %7406, 0xC1EFBF8940000000
  %7408 = fptosi float %7407 to i32
  %7409 = bitcast i32 %7408 to float
  %7410 = fmul fast float %7409, %4852
  %7411 = fmul fast float %7399, %7410
  %7412 = fmul fast float %7411, %5660
  %7413 = fmul fast float %7411, %5661
  %7414 = fmul fast float %7411, %5662
  %7415 = fadd fast float %7412, %7400
  %7416 = fadd fast float %7413, %7401
  %7417 = fadd fast float %7414, %7402
  %7418 = fmul fast float %7223, %4877
  %7419 = fmul fast float %7418, %7241
  %7420 = fmul fast float %7419, %7399
  %7421 = fmul fast float %7224, %4877
  %7422 = fmul fast float %7421, %7241
  %7423 = fmul fast float %7422, %7399
  %7424 = fmul fast float %7225, %4877
  %7425 = fmul fast float %7424, %7241
  %7426 = fmul fast float %7425, %7399
  %7427 = fadd fast float %7420, %6902
  %7428 = fadd fast float %7423, %6903
  %7429 = fadd fast float %7426, %6904
  %7430 = fmul fast float %7419, %7415
  %7431 = fmul fast float %7422, %7416
  %7432 = fmul fast float %7425, %7417
  %7433 = fadd fast float %7430, %6899
  %7434 = fadd fast float %7431, %6900
  %7435 = fadd fast float %7432, %6901
  br label %7031

; <label>:7436                                    ; preds = %7031
  br label %7437

; <label>:7437                                    ; preds = %7436, %6865
  %7438 = phi float [ %6867, %6865 ], [ %7032, %7436 ]
  %7439 = phi float [ %6868, %6865 ], [ %7033, %7436 ]
  %7440 = phi float [ %6869, %6865 ], [ %7034, %7436 ]
  %7441 = phi float [ %6870, %6865 ], [ %7035, %7436 ]
  %7442 = phi float [ %6871, %6865 ], [ %7036, %7436 ]
  %7443 = phi float [ %6872, %6865 ], [ %7037, %7436 ]
  %7444 = add i32 %6866, 1
  %7445 = icmp ugt i32 %7444, %6862
  br i1 %7445, label %7446, label %6865

; <label>:7446                                    ; preds = %7437
  br label %7447

; <label>:7447                                    ; preds = %7446, %6815, %6805
  %7448 = phi float [ %6806, %6805 ], [ %6806, %6815 ], [ %7438, %7446 ]
  %7449 = phi float [ %6807, %6805 ], [ %6807, %6815 ], [ %7439, %7446 ]
  %7450 = phi float [ %6808, %6805 ], [ %6808, %6815 ], [ %7440, %7446 ]
  %7451 = phi float [ %6809, %6805 ], [ %6809, %6815 ], [ %7441, %7446 ]
  %7452 = phi float [ %6810, %6805 ], [ %6810, %6815 ], [ %7442, %7446 ]
  %7453 = phi float [ %6811, %6805 ], [ %6811, %6815 ], [ %7443, %7446 ]
  %7454 = fmul fast float %4877, %4877
  %7455 = fmul fast float %7454, %5686
  %7456 = fsub fast float -0.000000e+00, %7455
  %7457 = fmul fast float %7454, %5687
  %7458 = fsub fast float -0.000000e+00, %7457
  %7459 = fmul fast float %7454, %5688
  %7460 = fsub fast float -0.000000e+00, %7459
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = fmul fast float %7462, %5692
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 3
  %7466 = fsub fast float 1.000000e+00, %4855
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = fadd fast float %7453, %4854
  %7469 = fmul fast float %7468, %4855
  %7470 = fmul fast float %7467, %7465
  %7471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4856, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.i32 %7471, 3
  %7473 = bitcast i32 %7472 to float
  %7474 = fsub fast float %7456, %7473
  %7475 = fsub fast float %7458, %7473
  %7476 = fsub fast float %7460, %7473
  %7477 = fmul fast float %7474, %192
  %7478 = fmul fast float %7475, %192
  %7479 = fmul fast float %7476, %192
  %7480 = fadd fast float %7477, %7473
  %7481 = fadd fast float %7478, %7473
  %7482 = fadd fast float %7479, %7473
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 3
  %7485 = fmul fast float %7451, %5466
  %7486 = fmul fast float %7452, %5467
  %7487 = fmul fast float %7453, %5468
  %7488 = fcmp fast ogt float %86, %212
  %7489 = and i1 %7488, %5283
  %7490 = or i1 %5289, %7489
  %7491 = icmp eq i32 %5282, 2
  %7492 = fcmp fast ole float %86, %212
  %7493 = and i1 %7492, %7491
  %7494 = or i1 %7493, %7490
  br i1 %7489, label %7495, label %7752

; <label>:7495                                    ; preds = %7447
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7499 = fmul fast float %7497, %95
  %7500 = fmul fast float %7498, %96
  %7501 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7502 = call float @dx.op.unary.f32(i32 7, float %7500)  ; Saturate(value)
  %7503 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7501, float %7502, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.ResRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.ResRet.f32 %7503, 2
  %7507 = extractvalue %dx.types.ResRet.f32 %7503, 3
  %7508 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7501, float %7502, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.ResRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.ResRet.f32 %7508, 2
  %7512 = extractvalue %dx.types.ResRet.f32 %7508, 3
  %7513 = call float @dx.op.binary.f32(i32 35, float %7505, float %7506)  ; FMax(a,b)
  %7514 = call float @dx.op.binary.f32(i32 35, float %7504, float %7513)  ; FMax(a,b)
  %7515 = call float @dx.op.binary.f32(i32 35, float %7514, float %7507)  ; FMax(a,b)
  %7516 = call float @dx.op.binary.f32(i32 36, float %7510, float %7511)  ; FMin(a,b)
  %7517 = call float @dx.op.binary.f32(i32 36, float %7509, float %7516)  ; FMin(a,b)
  %7518 = call float @dx.op.binary.f32(i32 36, float %7517, float %7512)  ; FMin(a,b)
  %7519 = fmul fast float %7515, 2.550000e+02
  %7520 = fadd fast float %7519, 0x3F70101020000000
  %7521 = fptoui float %7520 to i32
  %7522 = fmul fast float %7518, 2.550000e+02
  %7523 = fadd fast float %7522, 0x3F70101020000000
  %7524 = fptoui float %7523 to i32
  %7525 = icmp ult i32 %7521, %7524
  br i1 %7525, label %7526, label %7694

; <label>:7526                                    ; preds = %7495
  %7527 = fcmp fast ogt float %85, 9.843750e-01
  %7528 = fadd fast float %86, -4.000000e+00
  %7529 = select i1 %7527, float -4.000000e+00, float %7528
  %7530 = call float @dx.op.binary.f32(i32 35, float %7529, float 0.000000e+00)  ; FMax(a,b)
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 0
  %7533 = fadd fast float %7532, %7530
  %7534 = extractvalue %dx.types.CBufRet.f32 %7531, 2
  %7535 = fmul fast float %7533, %7534
  %7536 = call float @dx.op.unary.f32(i32 23, float %7535)  ; Log(value)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7531, 3
  %7538 = fmul fast float %7537, %7536
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = fmul fast float %7538, %7540
  %7542 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7543 = uitofp i32 %7521 to float
  %7544 = uitofp i32 %7524 to float
  %7545 = fadd fast float %7543, 5.000000e-01
  %7546 = fadd fast float %7544, 5.000000e-01
  %7547 = fmul fast float %7540, %7545
  %7548 = fmul fast float %7540, %7546
  %7549 = fadd fast float %7547, 0x3F0FFB4800000000
  %7550 = fadd fast float %7548, 0xBF0FFB4800000000
  %7551 = call float @dx.op.binary.f32(i32 35, float %7542, float %7549)  ; FMax(a,b)
  %7552 = call float @dx.op.binary.f32(i32 36, float %7551, float %7550)  ; FMin(a,b)
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7555 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7556 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7557 = fmul fast float %7554, %7552
  %7558 = fadd fast float %7556, %7557
  %7559 = fadd fast float %7556, %7555
  %7560 = fsub fast float %7554, %7555
  %7561 = fadd fast float %7560, %7556
  %7562 = call float @dx.op.binary.f32(i32 35, float %7558, float %7559)  ; FMax(a,b)
  %7563 = call float @dx.op.binary.f32(i32 36, float %7562, float %7561)  ; FMin(a,b)
  %7564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7501, float %7502, float %7563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = extractvalue %dx.types.ResRet.f32 %7564, 1
  %7567 = extractvalue %dx.types.ResRet.f32 %7564, 2
  %7568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7569 = extractvalue %dx.types.CBufRet.i32 %7568, 0
  %7570 = extractvalue %dx.types.CBufRet.i32 %7568, 1
  %7571 = uitofp i32 %7569 to float
  %7572 = uitofp i32 %7570 to float
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.CBufRet.f32 %7573, 1
  %7576 = fmul fast float %7571, %7501
  %7577 = fmul fast float %7572, %7502
  %7578 = fadd fast float %7576, -5.000000e-01
  %7579 = fadd fast float %7577, -5.000000e-01
  %7580 = call float @dx.op.unary.f32(i32 22, float %7578)  ; Frc(value)
  %7581 = call float @dx.op.unary.f32(i32 22, float %7579)  ; Frc(value)
  %7582 = fmul fast float %7580, %7580
  %7583 = fmul fast float %7582, %7580
  %7584 = fsub fast float 3.000000e+00, %7580
  %7585 = fmul fast float %7582, %7584
  %7586 = fmul fast float %7580, 3.000000e+00
  %7587 = fmul fast float %7583, 3.000000e+00
  %7588 = fmul fast float %7582, 6.000000e+00
  %7589 = fsub fast float %7587, %7588
  %7590 = fadd fast float %7589, 4.000000e+00
  %7591 = fmul fast float %7590, 0x3FC5555560000000
  %7592 = fmul fast float %7583, -3.000000e+00
  %7593 = fadd fast float %7582, %7580
  %7594 = fmul fast float %7593, 3.000000e+00
  %7595 = fadd fast float %7592, 1.000000e+00
  %7596 = fadd fast float %7595, %7594
  %7597 = fmul fast float %7583, 0x3FC5555560000000
  %7598 = fmul fast float %7581, %7581
  %7599 = fmul fast float %7598, %7581
  %7600 = fsub fast float 3.000000e+00, %7581
  %7601 = fmul fast float %7598, %7600
  %7602 = fmul fast float %7581, 3.000000e+00
  %7603 = fmul fast float %7599, 3.000000e+00
  %7604 = fmul fast float %7598, 6.000000e+00
  %7605 = fsub fast float %7603, %7604
  %7606 = fadd fast float %7605, 4.000000e+00
  %7607 = fmul fast float %7606, 0x3FC5555560000000
  %7608 = fmul fast float %7599, -3.000000e+00
  %7609 = fadd fast float %7598, %7581
  %7610 = fmul fast float %7609, 3.000000e+00
  %7611 = fadd fast float %7608, 1.000000e+00
  %7612 = fadd fast float %7611, %7610
  %7613 = fmul fast float %7599, 0x3FC5555560000000
  %7614 = fadd fast float %7580, 1.000000e+00
  %7615 = fsub fast float 1.000000e+00, %7586
  %7616 = fadd fast float %7615, %7585
  %7617 = fadd fast float %7616, %7590
  %7618 = fmul fast float %7617, 0x3FC5555560000000
  %7619 = fdiv fast float %7591, %7618
  %7620 = fsub fast float %7614, %7619
  %7621 = fsub fast float 1.000000e+00, %7580
  %7622 = fadd fast float %7596, %7583
  %7623 = fmul fast float %7622, 0x3FC5555560000000
  %7624 = fdiv fast float %7597, %7623
  %7625 = fadd fast float %7621, %7624
  %7626 = fadd fast float %7581, 1.000000e+00
  %7627 = fsub fast float 1.000000e+00, %7602
  %7628 = fadd fast float %7627, %7601
  %7629 = fadd fast float %7628, %7606
  %7630 = fmul fast float %7629, 0x3FC5555560000000
  %7631 = fdiv fast float %7607, %7630
  %7632 = fsub fast float %7626, %7631
  %7633 = fsub fast float 1.000000e+00, %7581
  %7634 = fadd fast float %7612, %7599
  %7635 = fmul fast float %7634, 0x3FC5555560000000
  %7636 = fdiv fast float %7613, %7635
  %7637 = fadd fast float %7636, %7633
  %7638 = fmul fast float %7620, %7574
  %7639 = fsub fast float %7501, %7638
  %7640 = fmul fast float %7625, %7574
  %7641 = fadd fast float %7640, %7501
  %7642 = fmul fast float %7637, %7575
  %7643 = fadd fast float %7642, %7502
  %7644 = fmul fast float %7632, %7575
  %7645 = fsub fast float %7502, %7644
  %7646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7639, float %7645, float %7563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7641, float %7645, float %7563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7639, float %7643, float %7563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.ResRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.ResRet.f32 %7654, 2
  %7658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7641, float %7643, float %7563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = fsub fast float %7655, %7647
  %7663 = fsub fast float %7656, %7648
  %7664 = fsub fast float %7657, %7649
  %7665 = fmul fast float %7662, %7635
  %7666 = fmul fast float %7663, %7635
  %7667 = fmul fast float %7664, %7635
  %7668 = fadd fast float %7665, %7647
  %7669 = fadd fast float %7666, %7648
  %7670 = fadd fast float %7667, %7649
  %7671 = fsub fast float %7659, %7651
  %7672 = fsub fast float %7660, %7652
  %7673 = fsub fast float %7661, %7653
  %7674 = fmul fast float %7671, %7635
  %7675 = fmul fast float %7672, %7635
  %7676 = fmul fast float %7673, %7635
  %7677 = fsub fast float %7651, %7668
  %7678 = fadd fast float %7677, %7674
  %7679 = fsub fast float %7652, %7669
  %7680 = fadd fast float %7679, %7675
  %7681 = fsub fast float %7653, %7670
  %7682 = fadd fast float %7681, %7676
  %7683 = fmul fast float %7678, %7623
  %7684 = fmul fast float %7680, %7623
  %7685 = fmul fast float %7682, %7623
  %7686 = fadd fast float %7683, %7668
  %7687 = fadd fast float %7684, %7669
  %7688 = fadd fast float %7685, %7670
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7691 = fmul fast float %7686, %7690
  %7692 = fmul fast float %7687, %7690
  %7693 = fmul fast float %7688, %7690
  br label %7694

; <label>:7694                                    ; preds = %7526, %7495
  %7695 = phi float [ %7565, %7526 ], [ 1.000000e+00, %7495 ]
  %7696 = phi float [ %7566, %7526 ], [ 1.000000e+00, %7495 ]
  %7697 = phi float [ %7567, %7526 ], [ 1.000000e+00, %7495 ]
  %7698 = phi float [ %7691, %7526 ], [ 0.000000e+00, %7495 ]
  %7699 = phi float [ %7692, %7526 ], [ 0.000000e+00, %7495 ]
  %7700 = phi float [ %7693, %7526 ], [ 0.000000e+00, %7495 ]
  %7701 = fmul fast float %7698, %7480
  %7702 = fmul fast float %7699, %7481
  %7703 = fmul fast float %7700, %7482
  %7704 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %7697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7705 = call float @dx.op.dot3.f32(i32 55, float %7701, float %7702, float %7703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7706 = select i1 %252, float %7704, float %7695
  %7707 = select i1 %252, float %7704, float %7696
  %7708 = select i1 %252, float 1.000000e+00, float %7697
  %7709 = select i1 %252, float %7705, float %7701
  %7710 = select i1 %252, float 0.000000e+00, float %7702
  %7711 = select i1 %252, float 0.000000e+00, float %7703
  %7712 = fmul fast float %7706, %7485
  %7713 = fmul fast float %7707, %7486
  %7714 = fmul fast float %7708, %7487
  %7715 = fadd fast float %7712, %7709
  %7716 = fadd fast float %7713, %7710
  %7717 = fadd fast float %7711, %7714
  %7718 = fmul fast float %7706, %7448
  %7719 = fmul fast float %7707, %7449
  %7720 = fmul fast float %7708, %7450
  %7721 = fmul fast float %128, %7497
  %7722 = fmul fast float %130, %7498
  %7723 = fsub fast float 1.000000e+00, %7721
  %7724 = fsub fast float 1.000000e+00, %7722
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7729 = fmul fast float %7723, %7726
  %7730 = fmul fast float %7723, %7727
  %7731 = fmul fast float %7723, %7728
  %7732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.CBufRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.CBufRet.f32 %7732, 2
  %7736 = fmul fast float %7724, %7733
  %7737 = fmul fast float %7724, %7734
  %7738 = fmul fast float %7724, %7735
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7743 = fadd fast float %7736, %7740
  %7744 = fadd fast float %7743, %7729
  %7745 = fadd fast float %7737, %7741
  %7746 = fadd fast float %7745, %7730
  %7747 = fadd fast float %7738, %7742
  %7748 = fadd fast float %7747, %7731
  %7749 = fmul fast float %7744, %212
  %7750 = fmul fast float %7746, %212
  %7751 = fmul fast float %7748, %212
  br label %7752

; <label>:7752                                    ; preds = %7694, %7447
  %7753 = phi float [ %7749, %7694 ], [ %158, %7447 ]
  %7754 = phi float [ %7750, %7694 ], [ %159, %7447 ]
  %7755 = phi float [ %7751, %7694 ], [ %160, %7447 ]
  %7756 = phi float [ %212, %7694 ], [ %86, %7447 ]
  %7757 = phi float [ %7715, %7694 ], [ %7485, %7447 ]
  %7758 = phi float [ %7716, %7694 ], [ %7486, %7447 ]
  %7759 = phi float [ %7717, %7694 ], [ %7487, %7447 ]
  %7760 = phi float [ %7718, %7694 ], [ %7448, %7447 ]
  %7761 = phi float [ %7719, %7694 ], [ %7449, %7447 ]
  %7762 = phi float [ %7720, %7694 ], [ %7450, %7447 ]
  %7763 = phi float [ %7695, %7694 ], [ 1.000000e+00, %7447 ]
  br i1 %7494, label %8918, label %7764

; <label>:7764                                    ; preds = %7752
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7769 = extractvalue %dx.types.CBufRet.f32 %7765, 3
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.CBufRet.f32 %7770, 3
  %7775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.CBufRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.CBufRet.f32 %7775, 2
  %7779 = extractvalue %dx.types.CBufRet.f32 %7775, 3
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7784 = extractvalue %dx.types.CBufRet.f32 %7780, 3
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 3
  %7789 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7790 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7791 = extractvalue %dx.types.CBufRet.f32 %7787, 2
  %7792 = fcmp fast olt float %7791, -5.000000e-01
  %7793 = call float @dx.op.dot3.f32(i32 55, float %7753, float %7754, float %7755, float %7753, float %7754, float %7755)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = call float @dx.op.unary.f32(i32 25, float %7793)  ; Rsqrt(value)
  %7795 = fmul fast float %7794, %7793
  %7796 = fmul fast float %7794, %7753
  %7797 = fmul fast float %7794, %7754
  %7798 = fmul fast float %7794, %7755
  %7799 = fadd fast float %7795, %7769
  %7800 = call float @dx.op.dot3.f32(i32 55, float %7796, float %7797, float %7798, float %7766, float %7767, float %7768)  ; Dot3(ax,ay,az,bx,by,bz)
  %7801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.i32 %7801, 1
  %7803 = and i32 %7802, 1
  %7804 = icmp ne i32 %7803, 0
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 2
  %7807 = fcmp fast ogt float %7806, 0.000000e+00
  %7808 = and i1 %7804, %7807
  br i1 %7808, label %7809, label %8215, !dx.controlflow.hints !121

; <label>:7809                                    ; preds = %7764
  %7810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.f32 %7810, 3
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 2
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7816 = fsub fast float %7813, %7815
  %7817 = and i32 %7802, 2
  %7818 = extractvalue %dx.types.CBufRet.i32 %7801, 0
  %7819 = call i32 @dx.op.binary.i32(i32 40, i32 %7818, i32 3)  ; UMin(a,b)
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 1
  %7823 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7824 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7825 = fsub fast float %7821, %7823
  %7826 = fsub fast float %7822, %7824
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = fcmp fast ogt float %7828, 0.000000e+00
  %7830 = fsub fast float -0.000000e+00, %7825
  %7831 = fsub fast float -0.000000e+00, %7826
  %7832 = call float @dx.op.dot2.f32(i32 54, float %7796, float %7797, float %7796, float %7797)  ; Dot2(ax,ay,bx,by)
  %7833 = call float @dx.op.dot2.f32(i32 54, float %7796, float %7797, float %7830, float %7831)  ; Dot2(ax,ay,bx,by)
  %7834 = fmul fast float %7833, 2.000000e+00
  %7835 = call float @dx.op.dot2.f32(i32 54, float %7830, float %7831, float %7830, float %7831)  ; Dot2(ax,ay,bx,by)
  %7836 = fmul fast float %7828, %7828
  %7837 = fsub fast float %7835, %7836
  %7838 = fmul fast float %7834, %7834
  %7839 = fmul fast float %7832, 4.000000e+00
  %7840 = fmul fast float %7839, %7837
  %7841 = fsub fast float %7838, %7840
  %7842 = fcmp fast ogt float %7841, 0.000000e+00
  br i1 %7842, label %7843, label %7858

; <label>:7843                                    ; preds = %7809
  %7844 = fcmp fast ogt float %7834, 0.000000e+00
  %7845 = call float @dx.op.unary.f32(i32 24, float %7841)  ; Sqrt(value)
  %7846 = fsub fast float -0.000000e+00, %7845
  %7847 = select i1 %7844, float %7845, float %7846
  %7848 = fadd fast float %7847, %7834
  %7849 = fmul float %7848, -5.000000e-01
  %7850 = fdiv fast float %7849, %7832
  %7851 = call float @dx.op.binary.f32(i32 35, float %7850, float 0.000000e+00)  ; FMax(a,b)
  %7852 = call float @dx.op.binary.f32(i32 36, float %7795, float %7851)  ; FMin(a,b)
  %7853 = fdiv fast float %7837, %7849
  %7854 = call float @dx.op.binary.f32(i32 35, float %7853, float 0.000000e+00)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 36, float %7795, float %7854)  ; FMin(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7852, float %7855)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %7852, float %7855)  ; FMax(a,b)
  br label %7858

; <label>:7858                                    ; preds = %7843, %7809
  %7859 = phi float [ %7857, %7843 ], [ -1.000000e+00, %7809 ]
  %7860 = phi float [ %7856, %7843 ], [ -1.000000e+00, %7809 ]
  %7861 = phi i1 [ true, %7843 ], [ false, %7809 ]
  %7862 = and i1 %7829, %7861
  br i1 %7862, label %7863, label %7865

; <label>:7863                                    ; preds = %7858
  %7864 = fcmp fast oeq float %7860, %7859
  br i1 %7864, label %8168, label %7866

; <label>:7865                                    ; preds = %7858
  br i1 %7829, label %8168, label %7866

; <label>:7866                                    ; preds = %7865, %7863
  %7867 = phi float [ %7795, %7865 ], [ %7859, %7863 ]
  %7868 = phi float [ 0.000000e+00, %7865 ], [ %7860, %7863 ]
  %7869 = icmp ne i32 %7817, 0
  %7870 = fmul fast float %7867, %7798
  %7871 = fadd fast float %7870, %7811
  %7872 = fmul fast float %7871, %7867
  %7873 = select i1 %7869, float 0.000000e+00, float %7872
  %7874 = fcmp fast oeq float %7798, 0.000000e+00
  %7875 = fdiv fast float %7816, %7798
  %7876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7875)  ; FMax(a,b)
  %7877 = select i1 %7874, float %7867, float %7876
  %7878 = call float @dx.op.binary.f32(i32 36, float %7867, float %7877)  ; FMin(a,b)
  %7879 = fcmp fast ogt float %7798, 0.000000e+00
  %7880 = fcmp fast olt float %7816, 0.000000e+00
  br i1 %7879, label %7881, label %7938

; <label>:7881                                    ; preds = %7866
  %7882 = icmp eq i32 %7817, 0
  br i1 %7880, label %7883, label %7927

; <label>:7883                                    ; preds = %7881
  %7884 = select i1 %7882, float %7867, float 0.000000e+00
  %7885 = fsub fast float -0.000000e+00, %7884
  %7886 = call float @dx.op.unary.f32(i32 6, float %7885)  ; FAbs(value)
  %7887 = fmul fast float %7884, %7798
  %7888 = fadd fast float %7887, %7811
  %7889 = fmul fast float %7886, %7888
  %7890 = fsub fast float %7873, %7889
  %7891 = fsub fast float %7867, %7886
  %7892 = select i1 %7882, float %7891, float 0.000000e+00
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7901 = extractvalue %dx.types.CBufRet.f32 %7897, 3
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 3
  %7904 = call float @dx.op.binary.f32(i32 36, float %7890, float %7903)  ; FMin(a,b)
  %7905 = fmul fast float %7901, %7892
  %7906 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7907 = fsub fast float %7898, %7894
  %7908 = fsub fast float %7899, %7895
  %7909 = fsub fast float %7900, %7896
  %7910 = fmul fast float %7906, %7907
  %7911 = fmul fast float %7906, %7908
  %7912 = fmul fast float %7906, %7909
  %7913 = fadd fast float %7910, %7894
  %7914 = fadd fast float %7911, %7895
  %7915 = fadd fast float %7912, %7896
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = fadd fast float %7918, %7917
  %7920 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7922 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7923 = fadd fast float %7922, %7921
  %7924 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7925 = fmul fast float %7920, %7904
  %7926 = fmul fast float %7925, %7924
  br label %8168

; <label>:7927                                    ; preds = %7881
  br i1 %7882, label %7928, label %7949

; <label>:7928                                    ; preds = %7927
  %7929 = call float @dx.op.binary.f32(i32 36, float %7878, float %7868)  ; FMin(a,b)
  %7930 = fsub fast float %7878, %7929
  %7931 = fsub fast float %7930, %7867
  %7932 = call float @dx.op.unary.f32(i32 6, float %7931)  ; FAbs(value)
  %7933 = fadd fast float %7930, %7867
  %7934 = fmul fast float %7933, %7798
  %7935 = fadd fast float %7934, %7811
  %7936 = fmul fast float %7935, %7932
  %7937 = fsub fast float %7873, %7936
  br label %7949

; <label>:7938                                    ; preds = %7866
  br i1 %7880, label %7939, label %7949

; <label>:7939                                    ; preds = %7938
  %7940 = call float @dx.op.binary.f32(i32 35, float %7868, float %7878)  ; FMax(a,b)
  %7941 = icmp eq i32 %7817, 0
  %7942 = select i1 %7941, float %7878, float 0.000000e+00
  %7943 = fsub fast float -0.000000e+00, %7942
  %7944 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %7945 = fmul fast float %7942, %7798
  %7946 = fadd fast float %7945, %7811
  %7947 = fmul fast float %7944, %7946
  %7948 = fsub fast float %7873, %7947
  br label %7949

; <label>:7949                                    ; preds = %7939, %7938, %7928, %7927
  %7950 = phi float [ %7868, %7927 ], [ %7868, %7928 ], [ %7940, %7939 ], [ %7868, %7938 ]
  %7951 = phi float [ 0.000000e+00, %7927 ], [ %7932, %7928 ], [ %7944, %7939 ], [ 0.000000e+00, %7938 ]
  %7952 = phi float [ %7873, %7927 ], [ %7937, %7928 ], [ %7948, %7939 ], [ %7873, %7938 ]
  %7953 = phi float [ %7878, %7927 ], [ %7878, %7928 ], [ %7867, %7939 ], [ %7867, %7938 ]
  %7954 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7954, align 4, !tbaa !122, !noalias !124
  %7955 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7955, align 4, !tbaa !122, !noalias !124
  %7956 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7956, align 4, !tbaa !122, !noalias !124
  %7957 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7957, align 4, !tbaa !122, !noalias !124
  %7958 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7958, align 4, !tbaa !122, !noalias !124
  %7959 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7959, align 4, !tbaa !122, !noalias !124
  %7960 = icmp sgt i32 %7819, 0
  br i1 %7960, label %7961, label %8022

; <label>:7961                                    ; preds = %7949
  br label %7962

; <label>:7962                                    ; preds = %8011, %7961
  %7963 = phi i32 [ %8012, %8011 ], [ 0, %7961 ]
  %7964 = phi i32 [ %8013, %8011 ], [ 0, %7961 ]
  %7965 = add nuw i32 %7964, 171
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7965)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 0
  %7968 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = fsub fast float %7967, %7970
  %7973 = fsub fast float %7968, %7971
  %7974 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %7975 = fsub fast float -0.000000e+00, %7972
  %7976 = fsub fast float -0.000000e+00, %7973
  %7977 = call float @dx.op.dot2.f32(i32 54, float %7796, float %7797, float %7975, float %7976)  ; Dot2(ax,ay,bx,by)
  %7978 = fmul fast float %7977, 2.000000e+00
  %7979 = call float @dx.op.dot2.f32(i32 54, float %7975, float %7976, float %7975, float %7976)  ; Dot2(ax,ay,bx,by)
  %7980 = fmul fast float %7974, %7974
  %7981 = fsub fast float %7979, %7980
  %7982 = fmul fast float %7978, %7978
  %7983 = fmul fast float %7839, %7981
  %7984 = fsub fast float %7982, %7983
  %7985 = fcmp fast ogt float %7984, 0.000000e+00
  br i1 %7985, label %7986, label %8001

; <label>:7986                                    ; preds = %7962
  %7987 = fcmp fast ogt float %7978, 0.000000e+00
  %7988 = call float @dx.op.unary.f32(i32 24, float %7984)  ; Sqrt(value)
  %7989 = fsub fast float -0.000000e+00, %7988
  %7990 = select i1 %7987, float %7988, float %7989
  %7991 = fadd fast float %7990, %7978
  %7992 = fmul float %7991, -5.000000e-01
  %7993 = fdiv fast float %7992, %7832
  %7994 = call float @dx.op.binary.f32(i32 35, float %7993, float 0.000000e+00)  ; FMax(a,b)
  %7995 = call float @dx.op.binary.f32(i32 36, float %7867, float %7994)  ; FMin(a,b)
  %7996 = fdiv fast float %7981, %7992
  %7997 = call float @dx.op.binary.f32(i32 35, float %7996, float 0.000000e+00)  ; FMax(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7867, float %7997)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7995, float %7998)  ; FMin(a,b)
  %8000 = call float @dx.op.binary.f32(i32 35, float %7995, float %7998)  ; FMax(a,b)
  br label %8001

; <label>:8001                                    ; preds = %7986, %7962
  %8002 = phi float [ %8000, %7986 ], [ -1.000000e+00, %7962 ]
  %8003 = phi float [ %7999, %7986 ], [ -1.000000e+00, %7962 ]
  %8004 = phi i1 [ true, %7986 ], [ false, %7962 ]
  br i1 %8004, label %8005, label %8011

; <label>:8005                                    ; preds = %8001
  %8006 = call float @dx.op.binary.f32(i32 35, float %7950, float %8003)  ; FMax(a,b)
  %8007 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7964
  store float %8006, float* %8007, align 4, !tbaa !122, !noalias !124
  %8008 = call float @dx.op.binary.f32(i32 35, float %7950, float %8002)  ; FMax(a,b)
  %8009 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7964
  store float %8008, float* %8009, align 4, !tbaa !122, !noalias !124
  %8010 = add nsw i32 %7963, 1
  br label %8011

; <label>:8011                                    ; preds = %8005, %8001
  %8012 = phi i32 [ %8010, %8005 ], [ %7963, %8001 ]
  %8013 = add nuw nsw i32 %7964, 1
  %8014 = icmp eq i32 %8013, %7819
  br i1 %8014, label %8015, label %7962

; <label>:8015                                    ; preds = %8011
  %8016 = load float, float* %7956, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %8017 = load float, float* %7955, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  %8018 = load float, float* %7954, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  %8019 = load float, float* %7959, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %8020 = load float, float* %7958, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  %8021 = load float, float* %7957, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  br label %8022

; <label>:8022                                    ; preds = %8015, %7949
  %8023 = phi float [ -1.000000e+00, %7949 ], [ %8021, %8015 ]
  %8024 = phi float [ -1.000000e+00, %7949 ], [ %8020, %8015 ]
  %8025 = phi float [ -1.000000e+00, %7949 ], [ %8019, %8015 ]
  %8026 = phi float [ -1.000000e+00, %7949 ], [ %8018, %8015 ]
  %8027 = phi float [ -1.000000e+00, %7949 ], [ %8017, %8015 ]
  %8028 = phi float [ -1.000000e+00, %7949 ], [ %8016, %8015 ]
  %8029 = phi i32 [ 0, %7949 ], [ %8012, %8015 ]
  %8030 = call float @dx.op.binary.f32(i32 36, float %8027, float %8028)  ; FMin(a,b)
  %8031 = call float @dx.op.binary.f32(i32 36, float %8026, float %8030)  ; FMin(a,b)
  %8032 = call float @dx.op.binary.f32(i32 35, float %8026, float %8027)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 36, float %8032, float %8028)  ; FMin(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %8026, float %8027)  ; FMin(a,b)
  %8035 = call float @dx.op.binary.f32(i32 35, float %8034, float %8033)  ; FMax(a,b)
  %8036 = call float @dx.op.binary.f32(i32 35, float %8027, float %8028)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 35, float %8026, float %8036)  ; FMax(a,b)
  store float %8031, float* %7954, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  store float %8035, float* %7955, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  store float %8037, float* %7956, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %8038 = call float @dx.op.binary.f32(i32 36, float %8024, float %8025)  ; FMin(a,b)
  %8039 = call float @dx.op.binary.f32(i32 36, float %8023, float %8038)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 35, float %8023, float %8024)  ; FMax(a,b)
  %8041 = call float @dx.op.binary.f32(i32 36, float %8040, float %8025)  ; FMin(a,b)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8023, float %8024)  ; FMin(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float %8042, float %8041)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8024, float %8025)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 35, float %8023, float %8044)  ; FMax(a,b)
  store float %8039, float* %7957, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %8043, float* %7958, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  store float %8045, float* %7959, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %8046 = sub nsw i32 3, %8029
  %8047 = icmp sgt i32 %8046, 2
  br i1 %8047, label %8048, label %8086

; <label>:8048                                    ; preds = %8022
  %8049 = icmp eq i32 %7817, 0
  %8050 = fsub fast float %7867, %7951
  %8051 = select i1 %8049, float %8050, float %7951
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 0
  %8054 = extractvalue %dx.types.CBufRet.f32 %8052, 1
  %8055 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %8060 = extractvalue %dx.types.CBufRet.f32 %8056, 3
  %8061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.f32 %8061, 3
  %8063 = call float @dx.op.binary.f32(i32 36, float %7952, float %8062)  ; FMin(a,b)
  %8064 = fmul fast float %8060, %8051
  %8065 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8066 = fsub fast float %8057, %8053
  %8067 = fsub fast float %8058, %8054
  %8068 = fsub fast float %8059, %8055
  %8069 = fmul fast float %8065, %8066
  %8070 = fmul fast float %8065, %8067
  %8071 = fmul fast float %8065, %8068
  %8072 = fadd fast float %8069, %8053
  %8073 = fadd fast float %8070, %8054
  %8074 = fadd fast float %8071, %8055
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8078 = fadd fast float %8077, %8076
  %8079 = call float @dx.op.unary.f32(i32 7, float %8078)  ; Saturate(value)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8081 = extractvalue %dx.types.CBufRet.f32 %8075, 3
  %8082 = fadd fast float %8081, %8080
  %8083 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8084 = fmul fast float %8079, %8063
  %8085 = fmul fast float %8084, %8083
  br label %8168

; <label>:8086                                    ; preds = %8022
  %8087 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %8046
  %8088 = load float, float* %8087, align 4, !tbaa !122, !noalias !124
  %8089 = fcmp fast olt float %8088, %7953
  %8090 = icmp sgt i32 %8029, 0
  %8091 = and i1 %8090, %8089
  br i1 %8091, label %8092, label %8129

; <label>:8092                                    ; preds = %8086
  br label %8093

; <label>:8093                                    ; preds = %8122, %8092
  %8094 = phi float [ %8123, %8122 ], [ %7951, %8092 ]
  %8095 = phi float [ %8124, %8122 ], [ %7952, %8092 ]
  %8096 = phi float [ %8104, %8122 ], [ %8088, %8092 ]
  %8097 = phi i32 [ %8101, %8122 ], [ %8046, %8092 ]
  %8098 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8097
  %8099 = load float, float* %8098, align 4, !tbaa !122, !noalias !124
  %8100 = icmp slt i32 %8097, 2
  %8101 = add nsw i32 %8097, 1
  %8102 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %8101
  %8103 = load float, float* %8102, align 4, !tbaa !122, !noalias !124
  %8104 = select i1 %8100, float %8103, float %7867
  %8105 = call float @dx.op.binary.f32(i32 36, float %8104, float %8099)  ; FMin(a,b)
  %8106 = call float @dx.op.binary.f32(i32 36, float %7953, float %8105)  ; FMin(a,b)
  %8107 = icmp eq i32 %7817, 0
  %8108 = fadd fast float %8106, %8096
  %8109 = fmul fast float %8108, %7798
  %8110 = fadd fast float %8109, %7811
  br i1 %8107, label %8116, label %8111

; <label>:8111                                    ; preds = %8093
  %8112 = fsub fast float %8106, %8096
  %8113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8112)  ; FMax(a,b)
  %8114 = fmul fast float %8113, %8110
  %8115 = fadd fast float %8114, %8095
  br label %8122

; <label>:8116                                    ; preds = %8093
  %8117 = fsub fast float %8096, %8106
  %8118 = call float @dx.op.unary.f32(i32 6, float %8117)  ; FAbs(value)
  %8119 = fadd fast float %8118, %8094
  %8120 = fmul fast float %8118, %8110
  %8121 = fsub fast float %8095, %8120
  br label %8122

; <label>:8122                                    ; preds = %8116, %8111
  %8123 = phi float [ %8113, %8111 ], [ %8119, %8116 ]
  %8124 = phi float [ %8115, %8111 ], [ %8121, %8116 ]
  %8125 = fcmp fast olt float %8104, %7953
  %8126 = icmp slt i32 %8101, 3
  %8127 = and i1 %8126, %8125
  br i1 %8127, label %8093, label %8128

; <label>:8128                                    ; preds = %8122
  br label %8129

; <label>:8129                                    ; preds = %8128, %8086
  %8130 = phi float [ %7951, %8086 ], [ %8123, %8128 ]
  %8131 = phi float [ %7952, %8086 ], [ %8124, %8128 ]
  %8132 = fsub fast float %7867, %8130
  %8133 = select i1 %7869, float %8130, float %8132
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 0
  %8136 = extractvalue %dx.types.CBufRet.f32 %8134, 1
  %8137 = extractvalue %dx.types.CBufRet.f32 %8134, 2
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = extractvalue %dx.types.CBufRet.f32 %8138, 3
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 3
  %8145 = call float @dx.op.binary.f32(i32 36, float %8131, float %8144)  ; FMin(a,b)
  %8146 = fmul fast float %8142, %8133
  %8147 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8148 = fsub fast float %8139, %8135
  %8149 = fsub fast float %8140, %8136
  %8150 = fsub fast float %8141, %8137
  %8151 = fmul fast float %8147, %8148
  %8152 = fmul fast float %8147, %8149
  %8153 = fmul fast float %8147, %8150
  %8154 = fadd fast float %8151, %8135
  %8155 = fadd fast float %8152, %8136
  %8156 = fadd fast float %8153, %8137
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 0
  %8159 = extractvalue %dx.types.CBufRet.f32 %8157, 1
  %8160 = fadd fast float %8159, %8158
  %8161 = call float @dx.op.unary.f32(i32 7, float %8160)  ; Saturate(value)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8163 = extractvalue %dx.types.CBufRet.f32 %8157, 3
  %8164 = fadd fast float %8163, %8162
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = fmul fast float %8161, %8145
  %8167 = fmul fast float %8166, %8165
  br label %8168

; <label>:8168                                    ; preds = %8129, %8048, %7883, %7865, %7863
  %8169 = phi float [ %7892, %7883 ], [ %8051, %8048 ], [ %8133, %8129 ], [ 0.000000e+00, %7863 ], [ 0.000000e+00, %7865 ]
  %8170 = phi float [ %7926, %7883 ], [ %8085, %8048 ], [ %8167, %8129 ], [ 0.000000e+00, %7863 ], [ 0.000000e+00, %7865 ]
  %8171 = phi float [ %7913, %7883 ], [ %8072, %8048 ], [ %8154, %8129 ], [ 0.000000e+00, %7863 ], [ 0.000000e+00, %7865 ]
  %8172 = phi float [ %7914, %7883 ], [ %8073, %8048 ], [ %8155, %8129 ], [ 0.000000e+00, %7863 ], [ 0.000000e+00, %7865 ]
  %8173 = phi float [ %7915, %7883 ], [ %8074, %8048 ], [ %8156, %8129 ], [ 0.000000e+00, %7863 ], [ 0.000000e+00, %7865 ]
  %8174 = fmul fast float %7806, %8170
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 2
  %8177 = fsub fast float %7813, %8176
  %8178 = fcmp fast olt float %8174, -2.000000e+01
  %8179 = call float @dx.op.unary.f32(i32 21, float %8174)  ; Exp(value)
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 3
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 2
  %8185 = fmul fast float %8182, %8177
  %8186 = call float @dx.op.unary.f32(i32 7, float %8185)  ; Saturate(value)
  %8187 = fsub fast float 1.000000e+00, %8186
  %8188 = fmul fast float %7798, 5.000000e-01
  %8189 = fadd fast float %8188, 5.000000e-01
  %8190 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8191 = fsub fast float 1.000000e+00, %8190
  %8192 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8187)  ; FMax(a,b)
  %8193 = fdiv fast float %8191, %8192
  %8194 = fsub fast float %8177, %7755
  %8195 = call float @dx.op.unary.f32(i32 6, float %8194)  ; FAbs(value)
  %8196 = fmul fast float %8195, %8181
  %8197 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8198 = fsub fast float 1.000000e+00, %8196
  %8199 = fmul fast float %8198, %8197
  %8200 = fadd fast float %8199, %8196
  %8201 = fmul fast float %8184, %8177
  %8202 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8203 = fsub fast float 1.000000e+00, %8200
  %8204 = fmul fast float %8203, %8202
  %8205 = fadd fast float %8204, %8200
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = fadd fast float %8179, -1.000000e+00
  %8208 = select i1 %8178, float -1.000000e+00, float %8207
  %8209 = fmul fast float %8206, %8208
  %8210 = fadd fast float %8209, 1.000000e+00
  %8211 = fsub fast float -0.000000e+00, %8209
  %8212 = fmul fast float %8171, %8211
  %8213 = fmul fast float %8172, %8211
  %8214 = fmul fast float %8173, %8211
  br label %8215

; <label>:8215                                    ; preds = %8168, %7764
  %8216 = phi float [ %8169, %8168 ], [ 0.000000e+00, %7764 ]
  %8217 = phi float [ %8210, %8168 ], [ 1.000000e+00, %7764 ]
  %8218 = phi float [ %8212, %8168 ], [ 0.000000e+00, %7764 ]
  %8219 = phi float [ %8213, %8168 ], [ 0.000000e+00, %7764 ]
  %8220 = phi float [ %8214, %8168 ], [ 0.000000e+00, %7764 ]
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8223 = fsub fast float 1.000000e+00, %8217
  %8224 = fmul fast float %8223, %7799
  %8225 = fmul fast float %8224, %8222
  %8226 = fsub fast float %7799, %8225
  br i1 %7792, label %8227, label %8256, !dx.controlflow.hints !160

; <label>:8227                                    ; preds = %8215
  %8228 = fmul fast float %7800, %7789
  %8229 = fadd fast float %8228, %7790
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = fmul fast float %7771, %8226
  %8232 = fsub fast float -0.000000e+00, %8231
  %8233 = fmul fast float %7772, %8226
  %8234 = fsub fast float -0.000000e+00, %8233
  %8235 = call float @dx.op.unary.f32(i32 21, float %8232)  ; Exp(value)
  %8236 = call float @dx.op.unary.f32(i32 21, float %8234)  ; Exp(value)
  %8237 = call float @dx.op.binary.f32(i32 35, float %7779, float %8235)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 35, float %7779, float %8236)  ; FMax(a,b)
  %8239 = fsub fast float %8238, %8237
  %8240 = fmul fast float %8239, %8230
  %8241 = fadd fast float %8240, %8237
  %8242 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8243 = fsub fast float %7776, %7781
  %8244 = fsub fast float %7777, %7782
  %8245 = fsub fast float %7778, %7783
  %8246 = fmul fast float %8230, %8243
  %8247 = fmul fast float %8230, %8244
  %8248 = fmul fast float %8230, %8245
  %8249 = fadd fast float %8246, %7781
  %8250 = fadd fast float %8247, %7782
  %8251 = fadd fast float %8248, %7783
  %8252 = fsub fast float 1.000000e+00, %8242
  %8253 = fmul fast float %8252, %8249
  %8254 = fmul fast float %8252, %8250
  %8255 = fmul fast float %8252, %8251
  br label %8315

; <label>:8256                                    ; preds = %8215
  %8257 = fmul fast float %8226, %7788
  %8258 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8259 = fsub fast float 2.000000e+00, %8258
  %8260 = fmul fast float %8258, 9.921875e-01
  %8261 = fmul fast float %8260, %8259
  %8262 = fadd fast float %8261, 3.906250e-03
  %8263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8262, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8264 = extractvalue %dx.types.ResRet.f32 %8263, 0
  %8265 = fsub fast float %8258, %8264
  %8266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8265)  ; FMax(a,b)
  %8267 = fmul fast float %7774, %7755
  %8268 = call float @dx.op.unary.f32(i32 6, float %8267)  ; FAbs(value)
  %8269 = fcmp fast ogt float %8268, 0x3EB0C6F7A0000000
  br i1 %8269, label %8270, label %8276, !dx.controlflow.hints !161

; <label>:8270                                    ; preds = %8256
  %8271 = fmul fast float %8267, 0xBFF7154760000000
  %8272 = call float @dx.op.unary.f32(i32 21, float %8271)  ; Exp(value)
  %8273 = fsub fast float 1.000000e+00, %8272
  %8274 = fdiv fast float %8273, %8267
  %8275 = fmul fast float %8274, %7784
  br label %8276

; <label>:8276                                    ; preds = %8270, %8256
  %8277 = phi float [ %8275, %8270 ], [ %7784, %8256 ]
  %8278 = fadd fast float %8277, %7786
  %8279 = fmul fast float %8278, %8266
  %8280 = fmul fast float %7771, %8279
  %8281 = fsub fast float -0.000000e+00, %8280
  %8282 = fmul fast float %7772, %8279
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = fmul fast float %7773, %8279
  %8285 = fsub fast float -0.000000e+00, %8284
  %8286 = call float @dx.op.unary.f32(i32 21, float %8281)  ; Exp(value)
  %8287 = call float @dx.op.unary.f32(i32 21, float %8283)  ; Exp(value)
  %8288 = call float @dx.op.unary.f32(i32 21, float %8285)  ; Exp(value)
  %8289 = fmul fast float %7800, %7800
  %8290 = fadd fast float %8289, 1.000000e+00
  %8291 = fmul fast float %8290, 0x3FAE8EC8A0000000
  %8292 = fmul fast float %8291, %7781
  %8293 = fmul fast float %8291, %7782
  %8294 = fmul fast float %8291, %7783
  %8295 = fmul fast float %7800, %7779
  %8296 = fsub fast float 1.000000e+00, %8295
  %8297 = fmul fast float %7779, %7779
  %8298 = fsub fast float 1.000000e+00, %8297
  %8299 = fmul fast float %8298, 0x3FB45F3060000000
  %8300 = fmul fast float %8296, %8296
  %8301 = fdiv fast float 1.000000e+00, %8300
  %8302 = fmul fast float %8299, %8301
  %8303 = fmul fast float %8302, %7776
  %8304 = fmul fast float %8302, %7777
  %8305 = fmul fast float %8302, %7778
  %8306 = fadd fast float %8303, %8292
  %8307 = fadd fast float %8304, %8293
  %8308 = fadd fast float %8305, %8294
  %8309 = fsub fast float 1.000000e+00, %8286
  %8310 = fsub fast float 1.000000e+00, %8287
  %8311 = fsub fast float 1.000000e+00, %8288
  %8312 = fmul fast float %8306, %8309
  %8313 = fmul fast float %8307, %8310
  %8314 = fmul fast float %8308, %8311
  br label %8315

; <label>:8315                                    ; preds = %8276, %8227
  %8316 = phi float [ %8253, %8227 ], [ %8312, %8276 ]
  %8317 = phi float [ %8254, %8227 ], [ %8313, %8276 ]
  %8318 = phi float [ %8255, %8227 ], [ %8314, %8276 ]
  %8319 = phi float [ %8242, %8227 ], [ %8286, %8276 ]
  %8320 = phi float [ %8242, %8227 ], [ %8287, %8276 ]
  %8321 = phi float [ %8242, %8227 ], [ %8288, %8276 ]
  br i1 %7808, label %8322, label %8520, !dx.controlflow.hints !162

; <label>:8322                                    ; preds = %8315
  %8323 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8324 = fmul fast float %8323, %8223
  %8325 = fsub fast float %8218, %8316
  %8326 = fsub fast float %8219, %8317
  %8327 = fsub fast float %8220, %8318
  %8328 = fmul fast float %8324, %8325
  %8329 = fmul fast float %8324, %8326
  %8330 = fmul fast float %8324, %8327
  %8331 = fadd fast float %8328, %8316
  %8332 = fadd fast float %8329, %8317
  %8333 = fadd fast float %8330, %8318
  %8334 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8319)  ; FMax(a,b)
  %8335 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8320)  ; FMax(a,b)
  %8336 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8321)  ; FMax(a,b)
  %8337 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8217)  ; FMax(a,b)
  %8338 = call float @dx.op.binary.f32(i32 35, float %8216, float %8226)  ; FMax(a,b)
  %8339 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8338)  ; FMax(a,b)
  %8340 = fdiv fast float %8216, %8339
  %8341 = call float @dx.op.unary.f32(i32 7, float %8340)  ; Saturate(value)
  %8342 = fdiv fast float %8226, %8339
  %8343 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8344 = fcmp fast une float %8337, 1.000000e+00
  br i1 %8344, label %8345, label %8358, !dx.controlflow.hints !163

; <label>:8345                                    ; preds = %8322
  %8346 = call float @dx.op.unary.f32(i32 23, float %8337)  ; Log(value)
  %8347 = fmul fast float %8346, 0x3FE62E4300000000
  %8348 = fmul fast float %8218, %8347
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = fmul fast float %8219, %8347
  %8351 = fsub fast float -0.000000e+00, %8350
  %8352 = fmul fast float %8220, %8347
  %8353 = fsub fast float -0.000000e+00, %8352
  %8354 = fsub fast float 1.000000e+00, %8337
  %8355 = fdiv fast float %8349, %8354
  %8356 = fdiv fast float %8351, %8354
  %8357 = fdiv fast float %8353, %8354
  br label %8358

; <label>:8358                                    ; preds = %8345, %8322
  %8359 = phi float [ %8355, %8345 ], [ %8218, %8322 ]
  %8360 = phi float [ %8356, %8345 ], [ %8219, %8322 ]
  %8361 = phi float [ %8357, %8345 ], [ %8220, %8322 ]
  %8362 = phi float [ %8347, %8345 ], [ 0.000000e+00, %8322 ]
  %8363 = fcmp fast une float %8334, 1.000000e+00
  br i1 %8363, label %8364, label %8371, !dx.controlflow.hints !164

; <label>:8364                                    ; preds = %8358
  %8365 = call float @dx.op.unary.f32(i32 23, float %8334)  ; Log(value)
  %8366 = fmul fast float %8365, 0x3FE62E4300000000
  %8367 = fmul fast float %8331, %8366
  %8368 = fsub fast float -0.000000e+00, %8367
  %8369 = fsub fast float 1.000000e+00, %8334
  %8370 = fdiv fast float %8368, %8369
  br label %8371

; <label>:8371                                    ; preds = %8364, %8358
  %8372 = phi float [ %8370, %8364 ], [ %8331, %8358 ]
  %8373 = phi float [ %8366, %8364 ], [ 0.000000e+00, %8358 ]
  %8374 = fcmp fast une float %8335, 1.000000e+00
  br i1 %8374, label %8375, label %8382, !dx.controlflow.hints !164

; <label>:8375                                    ; preds = %8371
  %8376 = call float @dx.op.unary.f32(i32 23, float %8335)  ; Log(value)
  %8377 = fmul fast float %8376, 0x3FE62E4300000000
  %8378 = fmul fast float %8332, %8377
  %8379 = fsub fast float -0.000000e+00, %8378
  %8380 = fsub fast float 1.000000e+00, %8335
  %8381 = fdiv fast float %8379, %8380
  br label %8382

; <label>:8382                                    ; preds = %8375, %8371
  %8383 = phi float [ %8381, %8375 ], [ %8332, %8371 ]
  %8384 = phi float [ %8377, %8375 ], [ 0.000000e+00, %8371 ]
  %8385 = fcmp fast une float %8336, 1.000000e+00
  br i1 %8385, label %8386, label %8393, !dx.controlflow.hints !164

; <label>:8386                                    ; preds = %8382
  %8387 = call float @dx.op.unary.f32(i32 23, float %8336)  ; Log(value)
  %8388 = fmul fast float %8387, 0x3FE62E4300000000
  %8389 = fmul fast float %8333, %8388
  %8390 = fsub fast float -0.000000e+00, %8389
  %8391 = fsub fast float 1.000000e+00, %8336
  %8392 = fdiv fast float %8390, %8391
  br label %8393

; <label>:8393                                    ; preds = %8386, %8382
  %8394 = phi float [ %8392, %8386 ], [ %8333, %8382 ]
  %8395 = phi float [ %8388, %8386 ], [ 0.000000e+00, %8382 ]
  %8396 = fmul fast float %8359, %8343
  %8397 = fmul fast float %8360, %8343
  %8398 = fmul fast float %8361, %8343
  %8399 = fmul fast float %8362, %8343
  %8400 = fmul fast float %8372, %8341
  %8401 = fmul fast float %8383, %8341
  %8402 = fmul fast float %8394, %8341
  %8403 = fmul fast float %8373, %8341
  %8404 = fmul fast float %8384, %8341
  %8405 = fmul fast float %8395, %8341
  %8406 = fadd fast float %8400, %8396
  %8407 = fadd fast float %8401, %8397
  %8408 = fadd fast float %8402, %8398
  %8409 = fadd fast float %8403, %8399
  %8410 = fadd fast float %8404, %8399
  %8411 = fadd fast float %8405, %8399
  %8412 = fcmp fast une float %8409, 0.000000e+00
  br i1 %8412, label %8413, label %8420, !dx.controlflow.hints !165

; <label>:8413                                    ; preds = %8393
  %8414 = fmul fast float %8409, 0x3FF7154760000000
  %8415 = call float @dx.op.unary.f32(i32 21, float %8414)  ; Exp(value)
  %8416 = fsub fast float 1.000000e+00, %8415
  %8417 = fmul fast float %8406, %8416
  %8418 = fsub fast float -0.000000e+00, %8417
  %8419 = fdiv fast float %8418, %8409
  br label %8420

; <label>:8420                                    ; preds = %8413, %8393
  %8421 = phi float [ %8415, %8413 ], [ 1.000000e+00, %8393 ]
  %8422 = phi float [ %8419, %8413 ], [ %8406, %8393 ]
  %8423 = fcmp fast une float %8410, 0.000000e+00
  br i1 %8423, label %8424, label %8431, !dx.controlflow.hints !165

; <label>:8424                                    ; preds = %8420
  %8425 = fmul fast float %8410, 0x3FF7154760000000
  %8426 = call float @dx.op.unary.f32(i32 21, float %8425)  ; Exp(value)
  %8427 = fsub fast float 1.000000e+00, %8426
  %8428 = fmul fast float %8407, %8427
  %8429 = fsub fast float -0.000000e+00, %8428
  %8430 = fdiv fast float %8429, %8410
  br label %8431

; <label>:8431                                    ; preds = %8424, %8420
  %8432 = phi float [ %8426, %8424 ], [ 1.000000e+00, %8420 ]
  %8433 = phi float [ %8430, %8424 ], [ %8407, %8420 ]
  %8434 = fcmp fast une float %8411, 0.000000e+00
  br i1 %8434, label %8435, label %8442, !dx.controlflow.hints !165

; <label>:8435                                    ; preds = %8431
  %8436 = fmul fast float %8411, 0x3FF7154760000000
  %8437 = call float @dx.op.unary.f32(i32 21, float %8436)  ; Exp(value)
  %8438 = fsub fast float 1.000000e+00, %8437
  %8439 = fmul fast float %8408, %8438
  %8440 = fsub fast float -0.000000e+00, %8439
  %8441 = fdiv fast float %8440, %8411
  br label %8442

; <label>:8442                                    ; preds = %8435, %8431
  %8443 = phi float [ %8437, %8435 ], [ 1.000000e+00, %8431 ]
  %8444 = phi float [ %8441, %8435 ], [ %8408, %8431 ]
  %8445 = fcmp fast ogt float %8341, %8343
  br i1 %8445, label %8446, label %8466

; <label>:8446                                    ; preds = %8442
  %8447 = fsub fast float 1.000000e+00, %8343
  %8448 = fmul fast float %8359, %8447
  %8449 = fmul fast float %8360, %8447
  %8450 = fmul fast float %8361, %8447
  %8451 = fmul fast float %8362, %8447
  %8452 = fcmp fast une float %8451, 0.000000e+00
  br i1 %8452, label %8453, label %8504, !dx.controlflow.hints !166

; <label>:8453                                    ; preds = %8446
  %8454 = fmul fast float %8451, 0x3FF7154760000000
  %8455 = call float @dx.op.unary.f32(i32 21, float %8454)  ; Exp(value)
  %8456 = fsub fast float 1.000000e+00, %8455
  %8457 = fmul fast float %8448, %8456
  %8458 = fsub fast float -0.000000e+00, %8457
  %8459 = fmul fast float %8449, %8456
  %8460 = fsub fast float -0.000000e+00, %8459
  %8461 = fmul fast float %8450, %8456
  %8462 = fsub fast float -0.000000e+00, %8461
  %8463 = fdiv fast float %8458, %8451
  %8464 = fdiv fast float %8460, %8451
  %8465 = fdiv fast float %8462, %8451
  br label %8504

; <label>:8466                                    ; preds = %8442
  %8467 = fsub fast float 1.000000e+00, %8341
  %8468 = fmul fast float %8372, %8467
  %8469 = fmul fast float %8383, %8467
  %8470 = fmul fast float %8394, %8467
  %8471 = fmul fast float %8373, %8467
  %8472 = fmul fast float %8384, %8467
  %8473 = fmul fast float %8395, %8467
  %8474 = fcmp fast une float %8471, 0.000000e+00
  br i1 %8474, label %8475, label %8482, !dx.controlflow.hints !165

; <label>:8475                                    ; preds = %8466
  %8476 = fmul fast float %8471, 0x3FF7154760000000
  %8477 = call float @dx.op.unary.f32(i32 21, float %8476)  ; Exp(value)
  %8478 = fsub fast float 1.000000e+00, %8477
  %8479 = fmul fast float %8468, %8478
  %8480 = fsub fast float -0.000000e+00, %8479
  %8481 = fdiv fast float %8480, %8471
  br label %8482

; <label>:8482                                    ; preds = %8475, %8466
  %8483 = phi float [ %8481, %8475 ], [ %8468, %8466 ]
  %8484 = phi float [ %8477, %8475 ], [ 1.000000e+00, %8466 ]
  %8485 = fcmp fast une float %8472, 0.000000e+00
  br i1 %8485, label %8486, label %8493, !dx.controlflow.hints !165

; <label>:8486                                    ; preds = %8482
  %8487 = fmul fast float %8472, 0x3FF7154760000000
  %8488 = call float @dx.op.unary.f32(i32 21, float %8487)  ; Exp(value)
  %8489 = fsub fast float 1.000000e+00, %8488
  %8490 = fmul fast float %8469, %8489
  %8491 = fsub fast float -0.000000e+00, %8490
  %8492 = fdiv fast float %8491, %8472
  br label %8493

; <label>:8493                                    ; preds = %8486, %8482
  %8494 = phi float [ %8492, %8486 ], [ %8469, %8482 ]
  %8495 = phi float [ %8488, %8486 ], [ 1.000000e+00, %8482 ]
  %8496 = fcmp fast une float %8473, 0.000000e+00
  br i1 %8496, label %8497, label %8504, !dx.controlflow.hints !165

; <label>:8497                                    ; preds = %8493
  %8498 = fmul fast float %8473, 0x3FF7154760000000
  %8499 = call float @dx.op.unary.f32(i32 21, float %8498)  ; Exp(value)
  %8500 = fsub fast float 1.000000e+00, %8499
  %8501 = fmul fast float %8470, %8500
  %8502 = fsub fast float -0.000000e+00, %8501
  %8503 = fdiv fast float %8502, %8473
  br label %8504

; <label>:8504                                    ; preds = %8497, %8493, %8453, %8446
  %8505 = phi float [ %8503, %8497 ], [ %8465, %8453 ], [ %8450, %8446 ], [ %8470, %8493 ]
  %8506 = phi float [ %8494, %8497 ], [ %8464, %8453 ], [ %8449, %8446 ], [ %8494, %8493 ]
  %8507 = phi float [ %8483, %8497 ], [ %8463, %8453 ], [ %8448, %8446 ], [ %8483, %8493 ]
  %8508 = phi float [ %8499, %8497 ], [ %8455, %8453 ], [ 1.000000e+00, %8446 ], [ 1.000000e+00, %8493 ]
  %8509 = phi float [ %8495, %8497 ], [ %8455, %8453 ], [ 1.000000e+00, %8446 ], [ %8495, %8493 ]
  %8510 = phi float [ %8484, %8497 ], [ %8455, %8453 ], [ 1.000000e+00, %8446 ], [ %8484, %8493 ]
  %8511 = fmul fast float %8510, %8422
  %8512 = fmul fast float %8509, %8433
  %8513 = fmul fast float %8508, %8444
  %8514 = fadd fast float %8511, %8507
  %8515 = fadd fast float %8512, %8506
  %8516 = fadd fast float %8513, %8505
  %8517 = fmul fast float %8510, %8421
  %8518 = fmul fast float %8509, %8432
  %8519 = fmul fast float %8508, %8443
  br label %8520

; <label>:8520                                    ; preds = %8504, %8315
  %8521 = phi float [ %8519, %8504 ], [ %8321, %8315 ]
  %8522 = phi float [ %8518, %8504 ], [ %8320, %8315 ]
  %8523 = phi float [ %8517, %8504 ], [ %8319, %8315 ]
  %8524 = phi float [ %8516, %8504 ], [ %8318, %8315 ]
  %8525 = phi float [ %8515, %8504 ], [ %8317, %8315 ]
  %8526 = phi float [ %8514, %8504 ], [ %8316, %8315 ]
  %8527 = fmul fast float %8526, %7480
  %8528 = fmul fast float %8525, %7481
  %8529 = fmul fast float %8524, %7482
  %8530 = fmul fast float %8523, %7763
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8522, float %8521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8533 = select i1 %252, float %8531, float %8523
  %8534 = select i1 %252, float %8531, float %8522
  %8535 = select i1 %252, float 1.000000e+00, float %8521
  %8536 = select i1 %252, float %8532, float %8527
  %8537 = select i1 %252, float 0.000000e+00, float %8528
  %8538 = select i1 %252, float 0.000000e+00, float %8529
  %8539 = fmul fast float %8533, %7757
  %8540 = fmul fast float %8534, %7758
  %8541 = fmul fast float %8535, %7759
  %8542 = fadd fast float %8539, %8536
  %8543 = fadd fast float %8540, %8537
  %8544 = fadd fast float %8538, %8541
  %8545 = fmul fast float %8533, %7760
  %8546 = fmul fast float %8534, %7761
  %8547 = fmul fast float %8535, %7762
  %8548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.i32 %8548, 0
  %8550 = icmp eq i32 %8549, 0
  br i1 %8550, label %8918, label %8551, !dx.controlflow.hints !167

; <label>:8551                                    ; preds = %8520
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 3
  %8555 = fmul fast float %8553, %95
  %8556 = fmul fast float %8554, %96
  %8557 = fmul fast float %8555, 2.000000e+00
  %8558 = fmul fast float %8556, 2.000000e+00
  %8559 = fsub fast float 1.000000e+00, %8557
  %8560 = fsub fast float 1.000000e+00, %8558
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8563 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8564 = extractvalue %dx.types.CBufRet.f32 %8561, 2
  %8565 = fmul fast float %8559, %8562
  %8566 = fmul fast float %8559, %8563
  %8567 = fmul fast float %8559, %8564
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %8572 = fmul fast float %8560, %8569
  %8573 = fmul fast float %8560, %8570
  %8574 = fmul fast float %8560, %8571
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = fadd fast float %8572, %8576
  %8580 = fadd fast float %8579, %8565
  %8581 = fadd fast float %8573, %8577
  %8582 = fadd fast float %8581, %8566
  %8583 = fadd fast float %8574, %8578
  %8584 = fadd fast float %8583, %8567
  %8585 = fmul fast float %8580, %7756
  %8586 = fmul fast float %8582, %7756
  %8587 = fmul fast float %8584, %7756
  %8588 = fmul fast float %8585, %8585
  %8589 = fmul fast float %8586, %8586
  %8590 = fadd fast float %8588, %8589
  %8591 = fmul fast float %8587, %8587
  %8592 = fadd fast float %8590, %8591
  %8593 = call float @dx.op.unary.f32(i32 24, float %8592)  ; Sqrt(value)
  %8594 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %8595 = fsub fast float %8593, %8594
  %8596 = extractvalue %dx.types.CBufRet.f32 %7483, 2
  %8597 = fmul fast float %8595, %8596
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = fadd fast float %8598, -5.000000e-01
  %8600 = fmul fast float %8599, 2.000000e+00
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8603 = call float @dx.op.binary.f32(i32 36, float %8602, float %8600)  ; FMin(a,b)
  %8604 = fsub fast float -0.000000e+00, %8602
  %8605 = fcmp fast ogt float %8603, %8604
  br i1 %8605, label %8606, label %8918, !dx.controlflow.hints !168

; <label>:8606                                    ; preds = %8551
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 3
  %8609 = fcmp fast ogt float %8608, 0.000000e+00
  br i1 %8609, label %8610, label %8685, !dx.controlflow.hints !169

; <label>:8610                                    ; preds = %8606
  %8611 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8612 = extractvalue %dx.types.Dimensions %8611, 0
  %8613 = sitofp i32 %8612 to float
  %8614 = extractvalue %dx.types.Dimensions %8611, 1
  %8615 = sitofp i32 %8614 to float
  %8616 = fmul fast float %8555, %8613
  %8617 = fmul fast float %8556, %8615
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 1
  %8620 = fsub fast float -0.000000e+00, %8619
  %8621 = fptoui float %8620 to i32
  %8622 = fptoui float %8616 to i32
  %8623 = fptoui float %8617 to i32
  %8624 = and i32 %8621, 31
  %8625 = lshr i32 %8622, %8624
  %8626 = lshr i32 %8623, %8624
  %8627 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8621, i32 %8625, i32 %8626, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8628 = extractvalue %dx.types.ResRet.f32 %8627, 0
  %8629 = fcmp fast olt float %8628, -1.000000e+00
  %8630 = fcmp fast ogt float %8628, -1.000000e+00
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 1
  %8633 = select i1 %8630, float %8632, float 1.000000e+00
  %8634 = fadd fast float %8628, 1.000000e+00
  %8635 = fmul fast float %8633, %8634
  %8636 = call float @dx.op.unary.f32(i32 6, float %8635)  ; FAbs(value)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8631, 3
  %8638 = fcmp fast oge float %8636, %8637
  %8639 = select i1 %8638, float 0x4197782600000000, float %8636
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8644 = select i1 %8629, float %8641, float %8562
  %8645 = select i1 %8629, float %8642, float %8563
  %8646 = select i1 %8629, float %8643, float %8564
  %8647 = fmul fast float %8644, %8559
  %8648 = fmul fast float %8645, %8559
  %8649 = fmul fast float %8646, %8559
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8654 = select i1 %8629, float %8651, float %8569
  %8655 = select i1 %8629, float %8652, float %8570
  %8656 = select i1 %8629, float %8653, float %8571
  %8657 = fmul fast float %8654, %8560
  %8658 = fmul fast float %8655, %8560
  %8659 = fmul fast float %8656, %8560
  %8660 = fadd fast float %8657, %8647
  %8661 = fadd fast float %8658, %8648
  %8662 = fadd fast float %8659, %8649
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8663, 2
  %8667 = select i1 %8629, float %8664, float %8576
  %8668 = select i1 %8629, float %8665, float %8577
  %8669 = select i1 %8629, float %8666, float %8578
  %8670 = fadd fast float %8660, %8667
  %8671 = fadd fast float %8661, %8668
  %8672 = fadd fast float %8662, %8669
  %8673 = fmul fast float %8670, %8639
  %8674 = fmul fast float %8671, %8639
  %8675 = fmul fast float %8672, %8639
  %8676 = fmul fast float %8673, %8673
  %8677 = fmul fast float %8674, %8674
  %8678 = fadd fast float %8676, %8677
  %8679 = fmul fast float %8675, %8675
  %8680 = fadd fast float %8678, %8679
  %8681 = call float @dx.op.unary.f32(i32 24, float %8680)  ; Sqrt(value)
  %8682 = fsub fast float %8681, %8594
  %8683 = fmul fast float %8682, %8596
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  br label %8685

; <label>:8685                                    ; preds = %8610, %8606
  %8686 = phi float [ %8684, %8610 ], [ 1.000000e+00, %8606 ]
  %8687 = fmul fast float %8603, 5.000000e-01
  %8688 = fadd fast float %8687, 5.000000e-01
  %8689 = call float @dx.op.unary.f32(i32 22, float %8688)  ; Frc(value)
  %8690 = call float @dx.op.unary.f32(i32 27, float %8689)  ; Round_ni(value)
  %8691 = call float @dx.op.unary.f32(i32 22, float %8689)  ; Frc(value)
  %8692 = fmul fast float %8691, 2.000000e+00
  %8693 = fadd fast float %8692, -1.000000e+00
  %8694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8555, float %8556, float %8690, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8695 = extractvalue %dx.types.ResRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.ResRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.ResRet.f32 %8694, 2
  %8698 = extractvalue %dx.types.ResRet.f32 %8694, 3
  %8699 = fadd fast float %8695, -5.000000e-01
  %8700 = fadd fast float %8697, -5.000000e-01
  %8701 = fmul fast float %8699, 0xBFD5555560000000
  %8702 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8700, float %8701)  ; FMad(a,b,c)
  %8703 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8696, float 0.000000e+00)  ; FMad(a,b,c)
  %8704 = fadd fast float %8703, %8698
  %8705 = fmul fast float %8699, -7.500000e-01
  %8706 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8700, float %8705)  ; FMad(a,b,c)
  %8707 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8696, float 0.000000e+00)  ; FMad(a,b,c)
  %8708 = fadd fast float %8707, %8698
  %8709 = call float @dx.op.binary.f32(i32 35, float %8702, float -1.000000e+00)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8704, float -1.000000e+00)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 35, float %8706, float -1.000000e+00)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8708, float -1.000000e+00)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8709, float 1.000000e+00)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8710, float 1.000000e+00)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8711, float 1.000000e+00)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8712, float 1.000000e+00)  ; FMin(a,b)
  %8717 = fcmp fast olt float %8713, 0x3FEFFF8020000000
  br i1 %8717, label %8718, label %8833, !dx.controlflow.hints !170

; <label>:8718                                    ; preds = %8685
  %8719 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.CBufRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.CBufRet.f32 %8720, 2
  %8724 = extractvalue %dx.types.CBufRet.f32 %8720, 3
  %8725 = fsub fast float %8721, %8713
  %8726 = fsub fast float %8722, %8714
  %8727 = fsub fast float %8723, %8715
  %8728 = fsub fast float %8724, %8716
  %8729 = fmul fast float %8725, %8719
  %8730 = fmul fast float %8726, %8719
  %8731 = fmul fast float %8727, %8719
  %8732 = fmul fast float %8728, %8719
  %8733 = fadd fast float %8729, %8713
  %8734 = fadd fast float %8730, %8714
  %8735 = fsub fast float -0.000000e+00, %8734
  %8736 = fadd fast float %8731, %8715
  %8737 = fadd fast float %8732, %8716
  %8738 = fmul fast float %8733, %8733
  %8739 = fsub fast float %8734, %8738
  %8740 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8739)  ; FMax(a,b)
  %8741 = fdiv fast float 1.000000e+00, %8740
  %8742 = fmul fast float %8734, %8733
  %8743 = fsub fast float %8736, %8742
  %8744 = fsub fast float %8693, %8733
  %8745 = fmul fast float %8693, %8693
  %8746 = fsub fast float %8745, %8734
  %8747 = fmul fast float %8744, %8741
  %8748 = fmul fast float %8747, %8743
  %8749 = fsub fast float %8746, %8748
  %8750 = fmul fast float %8734, %8734
  %8751 = fsub fast float %8737, %8750
  %8752 = fmul fast float %8743, %8743
  %8753 = fmul fast float %8752, %8741
  %8754 = fsub fast float %8751, %8753
  %8755 = fdiv fast float %8749, %8754
  %8756 = fmul fast float %8743, %8755
  %8757 = fsub fast float %8744, %8756
  %8758 = fmul fast float %8757, %8741
  %8759 = fmul fast float %8758, %8733
  %8760 = fsub fast float 1.000000e+00, %8759
  %8761 = fmul fast float %8734, %8755
  %8762 = fsub fast float %8760, %8761
  %8763 = fmul fast float %8758, %8758
  %8764 = fmul fast float %8755, 4.000000e+00
  %8765 = fmul fast float %8764, %8762
  %8766 = fsub fast float %8763, %8765
  %8767 = call float @dx.op.unary.f32(i32 24, float %8766)  ; Sqrt(value)
  %8768 = fcmp fast oge float %8758, 0.000000e+00
  %8769 = fsub fast float -0.000000e+00, %8767
  %8770 = select i1 %8768, float %8769, float %8767
  %8771 = fsub fast float %8770, %8758
  %8772 = fdiv fast float %8771, %8755
  %8773 = fdiv fast float %8762, %8771
  %8774 = fmul fast float %8772, 5.000000e-01
  %8775 = fmul fast float %8773, 2.000000e+00
  %8776 = select i1 %8768, float %8774, float %8775
  %8777 = select i1 %8768, float %8775, float %8774
  %8778 = call float @dx.op.binary.f32(i32 35, float %8776, float %8777)  ; FMax(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8776, float %8777)  ; FMin(a,b)
  %8780 = fcmp fast ogt float %8693, %8779
  br i1 %8780, label %8781, label %8791

; <label>:8781                                    ; preds = %8718
  %8782 = fsub fast float %8693, %8779
  %8783 = fsub fast float %8778, %8779
  %8784 = fmul fast float %8782, %8783
  %8785 = fmul fast float %8778, %8693
  %8786 = fadd fast float %8778, %8693
  %8787 = fmul fast float %8786, %8733
  %8788 = fadd fast float %8785, %8734
  %8789 = fsub fast float %8788, %8787
  %8790 = fdiv fast float %8789, %8784
  br label %8791

; <label>:8791                                    ; preds = %8781, %8718
  %8792 = phi float [ %8790, %8781 ], [ 0.000000e+00, %8718 ]
  %8793 = fcmp fast ogt float %8693, %8778
  %8794 = fsub fast float %8693, %8778
  br i1 %8793, label %8795, label %8805

; <label>:8795                                    ; preds = %8791
  %8796 = fsub fast float %8778, %8779
  %8797 = fmul fast float %8796, %8794
  %8798 = fmul fast float %8779, %8693
  %8799 = fadd fast float %8779, %8693
  %8800 = fmul fast float %8799, %8733
  %8801 = fsub fast float %8735, %8798
  %8802 = fadd fast float %8801, %8800
  %8803 = fdiv fast float %8802, %8797
  %8804 = fadd fast float %8803, %8792
  br label %8805

; <label>:8805                                    ; preds = %8795, %8791
  %8806 = phi float [ %8804, %8795 ], [ %8792, %8791 ]
  %8807 = fsub fast float %8693, %8779
  %8808 = fmul fast float %8807, %8794
  %8809 = fmul fast float %8779, %8778
  %8810 = fadd fast float %8779, %8778
  %8811 = fmul fast float %8810, %8733
  %8812 = fadd fast float %8809, %8734
  %8813 = fsub fast float %8812, %8811
  %8814 = fdiv fast float %8813, %8808
  %8815 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8816 = fcmp fast oeq float %7484, 0.000000e+00
  %8817 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8818 = fcmp fast oeq float %8817, 0.000000e+00
  %8819 = or i1 %8816, %8818
  %8820 = fmul fast float %8817, 2.000000e+00
  %8821 = fadd fast float %8602, %8603
  %8822 = fdiv fast float %8821, %8820
  %8823 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8824 = fmul fast float %8823, 2.000000e+00
  %8825 = fsub fast float 3.000000e+00, %8824
  %8826 = fmul fast float %8823, %8823
  %8827 = fmul fast float %8826, %8825
  %8828 = select i1 %8819, float 1.000000e+00, float %8827
  %8829 = fmul fast float %8814, %7484
  %8830 = fadd fast float %8815, %8829
  %8831 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8832 = fmul fast float %8828, %8831
  br label %8833

; <label>:8833                                    ; preds = %8805, %8685
  %8834 = phi float [ %8832, %8805 ], [ 0.000000e+00, %8685 ]
  %8835 = fsub fast float 1.000000e+00, %8834
  %8836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8555, float %8556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8837 = extractvalue %dx.types.ResRet.f32 %8836, 0
  %8838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8839 = extractvalue %dx.types.CBufRet.i32 %8838, 2
  %8840 = icmp eq i32 %8839, 0
  br i1 %8840, label %8846, label %8841

; <label>:8841                                    ; preds = %8833
  %8842 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8843 = fadd fast float %8837, -1.000000e+00
  %8844 = fmul fast float %8842, %8843
  %8845 = fadd fast float %8844, 1.000000e+00
  br label %8846

; <label>:8846                                    ; preds = %8841, %8833
  %8847 = phi float [ %8845, %8841 ], [ %8835, %8833 ]
  br i1 %8609, label %8848, label %8866

; <label>:8848                                    ; preds = %8846
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8851 = fsub fast float %8686, %8850
  %8852 = call float @dx.op.unary.f32(i32 7, float %8851)  ; Saturate(value)
  %8853 = fsub fast float %8686, %8608
  %8854 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8855 = fsub fast float %8852, %8854
  %8856 = fsub fast float %8688, %8854
  %8857 = fdiv fast float %8856, %8855
  %8858 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8859 = fmul fast float %8858, 2.000000e+00
  %8860 = fsub fast float 3.000000e+00, %8859
  %8861 = fsub fast float %8837, %8847
  %8862 = fmul fast float %8858, %8858
  %8863 = fmul fast float %8862, %8861
  %8864 = fmul fast float %8863, %8860
  %8865 = fadd fast float %8864, %8847
  br label %8866

; <label>:8866                                    ; preds = %8848, %8846
  %8867 = phi float [ %8865, %8848 ], [ %8847, %8846 ]
  %8868 = call float @dx.op.binary.f32(i32 35, float %8837, float %8867)  ; FMax(a,b)
  %8869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.i32 %8869, 2
  %8871 = and i32 %8870, 1
  %8872 = icmp eq i32 %8871, 0
  %8873 = fcmp fast une float %8868, 1.000000e+00
  %8874 = and i1 %8873, %8872
  br i1 %8874, label %8875, label %8894

; <label>:8875                                    ; preds = %8866
  %8876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8555, float %8556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8877 = extractvalue %dx.types.ResRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.ResRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.ResRet.f32 %8876, 2
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 1
  %8882 = fmul fast float %8881, %8877
  %8883 = fmul fast float %8881, %8878
  %8884 = fmul fast float %8881, %8879
  %8885 = fcmp fast ogt float %8837, 0x3FEFFF2E40000000
  %8886 = fsub fast float 1.000000e+00, %8868
  %8887 = fsub fast float 1.000000e+00, %8837
  %8888 = fdiv fast float %8886, %8887
  %8889 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8890 = select i1 %8885, float 0.000000e+00, float %8889
  %8891 = fmul fast float %8882, %8890
  %8892 = fmul fast float %8883, %8890
  %8893 = fmul fast float %8884, %8890
  br label %8894

; <label>:8894                                    ; preds = %8875, %8866
  %8895 = phi float [ 0.000000e+00, %8866 ], [ %8891, %8875 ]
  %8896 = phi float [ 0.000000e+00, %8866 ], [ %8892, %8875 ]
  %8897 = phi float [ 0.000000e+00, %8866 ], [ %8893, %8875 ]
  %8898 = fmul fast float %8895, %7480
  %8899 = fmul fast float %8896, %7481
  %8900 = fmul fast float %8897, %7482
  %8901 = fmul fast float %8868, %8530
  %8902 = call float @dx.op.dot3.f32(i32 55, float %8868, float %8868, float %8868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8903 = call float @dx.op.dot3.f32(i32 55, float %8898, float %8899, float %8900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8904 = select i1 %252, float %8902, float %8868
  %8905 = select i1 %252, float 1.000000e+00, float %8868
  %8906 = select i1 %252, float %8903, float %8898
  %8907 = select i1 %252, float 0.000000e+00, float %8899
  %8908 = select i1 %252, float 0.000000e+00, float %8900
  %8909 = fmul fast float %8904, %8542
  %8910 = fmul fast float %8904, %8543
  %8911 = fmul fast float %8905, %8544
  %8912 = fadd fast float %8909, %8906
  %8913 = fadd fast float %8910, %8907
  %8914 = fadd fast float %8908, %8911
  %8915 = fmul fast float %8904, %8545
  %8916 = fmul fast float %8904, %8546
  %8917 = fmul fast float %8905, %8547
  br label %8918

; <label>:8918                                    ; preds = %8894, %8551, %8520, %7752
  %8919 = phi float [ %7757, %7752 ], [ %8542, %8520 ], [ %8912, %8894 ], [ %8542, %8551 ]
  %8920 = phi float [ %7758, %7752 ], [ %8543, %8520 ], [ %8913, %8894 ], [ %8543, %8551 ]
  %8921 = phi float [ %7759, %7752 ], [ %8544, %8520 ], [ %8914, %8894 ], [ %8544, %8551 ]
  %8922 = phi float [ %7760, %7752 ], [ %8545, %8520 ], [ %8915, %8894 ], [ %8545, %8551 ]
  %8923 = phi float [ %7761, %7752 ], [ %8546, %8520 ], [ %8916, %8894 ], [ %8546, %8551 ]
  %8924 = phi float [ %7762, %7752 ], [ %8547, %8520 ], [ %8917, %8894 ], [ %8547, %8551 ]
  %8925 = phi float [ %7763, %7752 ], [ %8530, %8520 ], [ %8901, %8894 ], [ %8530, %8551 ]
  %8926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8927 = extractvalue %dx.types.CBufRet.f32 %8926, 2
  %8928 = extractvalue %dx.types.CBufRet.f32 %8926, 3
  %8929 = fmul fast float %8927, %95
  %8930 = fmul fast float %8928, %96
  %8931 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8932 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8933 = select i1 %7494, i32 2, i32 0
  %8934 = or i32 %8933, 1
  %8935 = uitofp i32 %8934 to float
  %8936 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8931, float %8932, float %8935, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8937 = extractvalue %dx.types.ResRet.f32 %8936, 0
  %8938 = extractvalue %dx.types.ResRet.f32 %8936, 1
  %8939 = extractvalue %dx.types.ResRet.f32 %8936, 2
  %8940 = extractvalue %dx.types.ResRet.f32 %8936, 3
  %8941 = add nuw nsw i32 %8933, 2
  %8942 = uitofp i32 %8941 to float
  %8943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8931, float %8932, float %8942, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8944 = extractvalue %dx.types.ResRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.ResRet.f32 %8943, 1
  %8946 = extractvalue %dx.types.ResRet.f32 %8943, 2
  %8947 = extractvalue %dx.types.ResRet.f32 %8943, 3
  %8948 = call float @dx.op.binary.f32(i32 35, float %8938, float %8939)  ; FMax(a,b)
  %8949 = call float @dx.op.binary.f32(i32 35, float %8937, float %8948)  ; FMax(a,b)
  %8950 = call float @dx.op.binary.f32(i32 35, float %8949, float %8940)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8945, float %8946)  ; FMin(a,b)
  %8952 = call float @dx.op.binary.f32(i32 36, float %8944, float %8951)  ; FMin(a,b)
  %8953 = call float @dx.op.binary.f32(i32 36, float %8952, float %8947)  ; FMin(a,b)
  %8954 = fmul fast float %8950, 2.550000e+02
  %8955 = fadd fast float %8954, 0x3F70101020000000
  %8956 = fptoui float %8955 to i32
  %8957 = fmul fast float %8953, 2.550000e+02
  %8958 = fadd fast float %8957, 0x3F70101020000000
  %8959 = fptoui float %8958 to i32
  %8960 = icmp ult i32 %8956, %8959
  br i1 %8960, label %8961, label %9130

; <label>:8961                                    ; preds = %8918
  %8962 = fcmp fast ogt float %85, 9.843750e-01
  %8963 = fadd fast float %7756, -4.000000e+00
  %8964 = select i1 %8962, float -4.000000e+00, float %8963
  %8965 = call float @dx.op.binary.f32(i32 35, float %8964, float 0.000000e+00)  ; FMax(a,b)
  %8966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8967 = extractvalue %dx.types.CBufRet.f32 %8966, 0
  %8968 = fadd fast float %8967, %8965
  %8969 = extractvalue %dx.types.CBufRet.f32 %8966, 2
  %8970 = fmul fast float %8968, %8969
  %8971 = call float @dx.op.unary.f32(i32 23, float %8970)  ; Log(value)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8966, 3
  %8973 = fmul fast float %8972, %8971
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8976 = fmul fast float %8973, %8975
  %8977 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8978 = uitofp i32 %8956 to float
  %8979 = uitofp i32 %8959 to float
  %8980 = fadd fast float %8978, 5.000000e-01
  %8981 = fadd fast float %8979, 5.000000e-01
  %8982 = fmul fast float %8975, %8980
  %8983 = fmul fast float %8975, %8981
  %8984 = fadd fast float %8982, 0x3F0FFB4800000000
  %8985 = fadd fast float %8983, 0xBF0FFB4800000000
  %8986 = call float @dx.op.binary.f32(i32 35, float %8977, float %8984)  ; FMax(a,b)
  %8987 = call float @dx.op.binary.f32(i32 36, float %8986, float %8985)  ; FMin(a,b)
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8991 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8992 = select i1 %7494, float %8991, float 0.000000e+00
  %8993 = fmul fast float %8989, %8987
  %8994 = fadd fast float %8992, %8993
  %8995 = fadd fast float %8992, %8990
  %8996 = fsub fast float %8989, %8990
  %8997 = fadd fast float %8996, %8992
  %8998 = call float @dx.op.binary.f32(i32 35, float %8994, float %8995)  ; FMax(a,b)
  %8999 = call float @dx.op.binary.f32(i32 36, float %8998, float %8997)  ; FMin(a,b)
  %9000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8931, float %8932, float %8999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9001 = extractvalue %dx.types.ResRet.f32 %9000, 0
  %9002 = extractvalue %dx.types.ResRet.f32 %9000, 1
  %9003 = extractvalue %dx.types.ResRet.f32 %9000, 2
  %9004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.i32 %9004, 0
  %9006 = extractvalue %dx.types.CBufRet.i32 %9004, 1
  %9007 = uitofp i32 %9005 to float
  %9008 = uitofp i32 %9006 to float
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.CBufRet.f32 %9009, 1
  %9012 = fmul fast float %9007, %8931
  %9013 = fmul fast float %9008, %8932
  %9014 = fadd fast float %9012, -5.000000e-01
  %9015 = fadd fast float %9013, -5.000000e-01
  %9016 = call float @dx.op.unary.f32(i32 22, float %9014)  ; Frc(value)
  %9017 = call float @dx.op.unary.f32(i32 22, float %9015)  ; Frc(value)
  %9018 = fmul fast float %9016, %9016
  %9019 = fmul fast float %9018, %9016
  %9020 = fsub fast float 3.000000e+00, %9016
  %9021 = fmul fast float %9018, %9020
  %9022 = fmul fast float %9016, 3.000000e+00
  %9023 = fmul fast float %9019, 3.000000e+00
  %9024 = fmul fast float %9018, 6.000000e+00
  %9025 = fsub fast float %9023, %9024
  %9026 = fadd fast float %9025, 4.000000e+00
  %9027 = fmul fast float %9026, 0x3FC5555560000000
  %9028 = fmul fast float %9019, -3.000000e+00
  %9029 = fadd fast float %9018, %9016
  %9030 = fmul fast float %9029, 3.000000e+00
  %9031 = fadd fast float %9028, 1.000000e+00
  %9032 = fadd fast float %9031, %9030
  %9033 = fmul fast float %9019, 0x3FC5555560000000
  %9034 = fmul fast float %9017, %9017
  %9035 = fmul fast float %9034, %9017
  %9036 = fsub fast float 3.000000e+00, %9017
  %9037 = fmul fast float %9034, %9036
  %9038 = fmul fast float %9017, 3.000000e+00
  %9039 = fmul fast float %9035, 3.000000e+00
  %9040 = fmul fast float %9034, 6.000000e+00
  %9041 = fsub fast float %9039, %9040
  %9042 = fadd fast float %9041, 4.000000e+00
  %9043 = fmul fast float %9042, 0x3FC5555560000000
  %9044 = fmul fast float %9035, -3.000000e+00
  %9045 = fadd fast float %9034, %9017
  %9046 = fmul fast float %9045, 3.000000e+00
  %9047 = fadd fast float %9044, 1.000000e+00
  %9048 = fadd fast float %9047, %9046
  %9049 = fmul fast float %9035, 0x3FC5555560000000
  %9050 = fadd fast float %9016, 1.000000e+00
  %9051 = fsub fast float 1.000000e+00, %9022
  %9052 = fadd fast float %9051, %9021
  %9053 = fadd fast float %9052, %9026
  %9054 = fmul fast float %9053, 0x3FC5555560000000
  %9055 = fdiv fast float %9027, %9054
  %9056 = fsub fast float %9050, %9055
  %9057 = fsub fast float 1.000000e+00, %9016
  %9058 = fadd fast float %9032, %9019
  %9059 = fmul fast float %9058, 0x3FC5555560000000
  %9060 = fdiv fast float %9033, %9059
  %9061 = fadd fast float %9057, %9060
  %9062 = fadd fast float %9017, 1.000000e+00
  %9063 = fsub fast float 1.000000e+00, %9038
  %9064 = fadd fast float %9063, %9037
  %9065 = fadd fast float %9064, %9042
  %9066 = fmul fast float %9065, 0x3FC5555560000000
  %9067 = fdiv fast float %9043, %9066
  %9068 = fsub fast float %9062, %9067
  %9069 = fsub fast float 1.000000e+00, %9017
  %9070 = fadd fast float %9048, %9035
  %9071 = fmul fast float %9070, 0x3FC5555560000000
  %9072 = fdiv fast float %9049, %9071
  %9073 = fadd fast float %9072, %9069
  %9074 = fmul fast float %9056, %9010
  %9075 = fsub fast float %8931, %9074
  %9076 = fmul fast float %9061, %9010
  %9077 = fadd fast float %9076, %8931
  %9078 = fmul fast float %9073, %9011
  %9079 = fadd fast float %9078, %8932
  %9080 = fmul fast float %9068, %9011
  %9081 = fsub fast float %8932, %9080
  %9082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9075, float %9081, float %8999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9083 = extractvalue %dx.types.ResRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.ResRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.ResRet.f32 %9082, 2
  %9086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9077, float %9081, float %8999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9087 = extractvalue %dx.types.ResRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.ResRet.f32 %9086, 1
  %9089 = extractvalue %dx.types.ResRet.f32 %9086, 2
  %9090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9075, float %9079, float %8999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9091 = extractvalue %dx.types.ResRet.f32 %9090, 0
  %9092 = extractvalue %dx.types.ResRet.f32 %9090, 1
  %9093 = extractvalue %dx.types.ResRet.f32 %9090, 2
  %9094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9077, float %9079, float %8999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9095 = extractvalue %dx.types.ResRet.f32 %9094, 0
  %9096 = extractvalue %dx.types.ResRet.f32 %9094, 1
  %9097 = extractvalue %dx.types.ResRet.f32 %9094, 2
  %9098 = fsub fast float %9091, %9083
  %9099 = fsub fast float %9092, %9084
  %9100 = fsub fast float %9093, %9085
  %9101 = fmul fast float %9098, %9071
  %9102 = fmul fast float %9099, %9071
  %9103 = fmul fast float %9100, %9071
  %9104 = fadd fast float %9101, %9083
  %9105 = fadd fast float %9102, %9084
  %9106 = fadd fast float %9103, %9085
  %9107 = fsub fast float %9095, %9087
  %9108 = fsub fast float %9096, %9088
  %9109 = fsub fast float %9097, %9089
  %9110 = fmul fast float %9107, %9071
  %9111 = fmul fast float %9108, %9071
  %9112 = fmul fast float %9109, %9071
  %9113 = fsub fast float %9087, %9104
  %9114 = fadd fast float %9113, %9110
  %9115 = fsub fast float %9088, %9105
  %9116 = fadd fast float %9115, %9111
  %9117 = fsub fast float %9089, %9106
  %9118 = fadd fast float %9117, %9112
  %9119 = fmul fast float %9114, %9059
  %9120 = fmul fast float %9116, %9059
  %9121 = fmul fast float %9118, %9059
  %9122 = fadd fast float %9119, %9104
  %9123 = fadd fast float %9120, %9105
  %9124 = fadd fast float %9121, %9106
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9127 = fmul fast float %9122, %9126
  %9128 = fmul fast float %9123, %9126
  %9129 = fmul fast float %9124, %9126
  br label %9130

; <label>:9130                                    ; preds = %8961, %8918
  %9131 = phi float [ %9001, %8961 ], [ 1.000000e+00, %8918 ]
  %9132 = phi float [ %9002, %8961 ], [ 1.000000e+00, %8918 ]
  %9133 = phi float [ %9003, %8961 ], [ 1.000000e+00, %8918 ]
  %9134 = phi float [ %9127, %8961 ], [ 0.000000e+00, %8918 ]
  %9135 = phi float [ %9128, %8961 ], [ 0.000000e+00, %8918 ]
  %9136 = phi float [ %9129, %8961 ], [ 0.000000e+00, %8918 ]
  %9137 = fmul fast float %9134, %7480
  %9138 = fmul fast float %9135, %7481
  %9139 = fmul fast float %9136, %7482
  %9140 = fmul fast float %9131, %8925
  %9141 = call float @dx.op.dot3.f32(i32 55, float %9131, float %9132, float %9133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9142 = call float @dx.op.dot3.f32(i32 55, float %9137, float %9138, float %9139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9143 = select i1 %252, float %9141, float %9131
  %9144 = select i1 %252, float %9141, float %9132
  %9145 = select i1 %252, float 1.000000e+00, float %9133
  %9146 = select i1 %252, float %9142, float %9137
  %9147 = select i1 %252, float 0.000000e+00, float %9138
  %9148 = select i1 %252, float 0.000000e+00, float %9139
  %9149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.i32 %9149, 3
  %9151 = and i32 %9150, 3
  %9152 = icmp ne i32 %9151, 0
  %9153 = and i32 %9150, 4
  %9154 = icmp ne i32 %9153, 0
  %9155 = and i1 %9152, %9154
  %9156 = and i1 %252, %9155
  br i1 %9156, label %9157, label %9163

; <label>:9157                                    ; preds = %9130
  %9158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9159 = extractvalue %dx.types.CBufRet.f32 %9158, 1
  %9160 = fadd fast float %9140, -1.000000e+00
  %9161 = fmul fast float %9159, %9160
  %9162 = fadd fast float %9161, 1.000000e+00
  br label %9163

; <label>:9163                                    ; preds = %9157, %9130
  %9164 = phi float [ %9162, %9157 ], [ %9140, %9130 ]
  %9165 = fadd fast float %8922, %8919
  %9166 = fmul fast float %9143, %9165
  %9167 = fadd fast float %9166, %9146
  %9168 = fadd fast float %8923, %8920
  %9169 = fmul fast float %9144, %9168
  %9170 = fadd fast float %9169, %9147
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 0
  br i1 %252, label %9173, label %9188

; <label>:9173                                    ; preds = %9163
  %9174 = fadd fast float %9167, %9170
  %9175 = fmul fast float %9172, %9174
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 3
  %9178 = extractvalue %dx.types.CBufRet.f32 %7464, 1
  %9179 = fsub fast float %7469, %7463
  %9180 = fadd fast float %9179, %7470
  %9181 = fsub fast float %9180, %9178
  %9182 = extractvalue %dx.types.CBufRet.f32 %7464, 2
  %9183 = fmul fast float %9181, %9182
  %9184 = call float @dx.op.unary.f32(i32 7, float %9183)  ; Saturate(value)
  %9185 = fsub fast float %9184, %9177
  %9186 = fmul fast float %9185, %9164
  %9187 = fadd fast float %9186, %9177
  br label %9214

; <label>:9188                                    ; preds = %9163
  %9189 = fadd fast float %8924, %8921
  %9190 = fmul fast float %9145, %9189
  %9191 = fadd fast float %9190, %9148
  %9192 = fmul fast float %9172, %9167
  %9193 = fmul fast float %9172, %9170
  %9194 = fmul fast float %9172, %9191
  %9195 = call float @dx.op.binary.f32(i32 35, float %9193, float %9194)  ; FMax(a,b)
  %9196 = call float @dx.op.binary.f32(i32 35, float %9192, float %9195)  ; FMax(a,b)
  %9197 = call float @dx.op.binary.f32(i32 35, float %7481, float %7482)  ; FMax(a,b)
  %9198 = call float @dx.op.binary.f32(i32 35, float %7480, float %9197)  ; FMax(a,b)
  %9199 = call float @dx.op.binary.f32(i32 35, float %9196, float %9198)  ; FMax(a,b)
  %9200 = fcmp fast ugt float %9199, 0x3F10000000000000
  br i1 %9200, label %9202, label %9201

; <label>:9201                                    ; preds = %9188
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9202

; <label>:9202                                    ; preds = %9201, %9188
  %9203 = add i32 %54, 356
  %9204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9203, i32 undef)  ; BufferLoad(srv,index,wot)
  %9205 = extractvalue %dx.types.ResRet.i32 %9204, 0
  %9206 = and i32 %9205, 32
  %9207 = icmp eq i32 %9206, 0
  br i1 %9207, label %9214, label %9208

; <label>:9208                                    ; preds = %9202
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 0
  %9211 = fmul fast float %9210, 0x3FE99999A0000000
  %9212 = fadd fast float %9210, %9192
  %9213 = fadd fast float %9211, %9194
  br label %9214

; <label>:9214                                    ; preds = %9208, %9202, %9173
  %9215 = phi float [ 1.000000e+00, %9173 ], [ %7481, %9208 ], [ %7481, %9202 ]
  %9216 = phi float [ 1.000000e+00, %9173 ], [ %7482, %9208 ], [ %7482, %9202 ]
  %9217 = phi float [ %9175, %9173 ], [ %9212, %9208 ], [ %9192, %9202 ]
  %9218 = phi float [ %9187, %9173 ], [ %9193, %9208 ], [ %9193, %9202 ]
  %9219 = phi float [ 1.000000e+00, %9173 ], [ %9213, %9208 ], [ %9194, %9202 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9220 = call float @dx.op.binary.f32(i32 36, float %9217, float 3.225500e+04)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9218, float 3.225500e+04)  ; FMin(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9219, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9221)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9222)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9223 = call float @dx.op.binary.f32(i32 36, float %7480, float 3.225500e+04)  ; FMin(a,b)
  %9224 = call float @dx.op.binary.f32(i32 36, float %9215, float 3.225500e+04)  ; FMin(a,b)
  %9225 = call float @dx.op.binary.f32(i32 36, float %9216, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9223)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9224)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9225)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !92}
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
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!91 = !{i32 1}
!92 = !{i32 0, i64 16}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !100, i64 0}
!124 = !{!125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!125 = distinct !{!125, !126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!126 = distinct !{!126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!127 = distinct !{!127, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!128 = distinct !{!128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!129 = distinct !{!129, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!139 = distinct !{!139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!148 = !{!144}
!149 = !{!145, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!158 = !{!154}
!159 = !{!155, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}

