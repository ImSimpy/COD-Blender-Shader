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
; shader hash: 7317e70107959241f87b95116af5ec1c
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fmul fast float %99, %88
  %101 = fmul fast float %99, %89
  %102 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %79
  %108 = fmul fast float %106, %80
  %109 = fmul fast float %106, %81
  %110 = fmul fast float %80, %77
  %111 = fmul fast float %81, %76
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %81, %75
  %114 = fmul fast float %79, %77
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %79, %76
  %117 = fmul fast float %80, %75
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %112, %78
  %120 = fmul fast float %115, %78
  %121 = fmul fast float %118, %78
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %100, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %101, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %129, %132
  %136 = fmul fast float %129, %133
  %137 = fmul fast float %129, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %130, %139
  %143 = fmul fast float %130, %140
  %144 = fmul fast float %130, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %149, %135
  %151 = fadd fast float %143, %147
  %152 = fadd fast float %151, %136
  %153 = fadd fast float %144, %148
  %154 = fadd fast float %153, %137
  %155 = fmul fast float %150, %91
  %156 = fmul fast float %152, %91
  %157 = fmul fast float %154, %91
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fmul fast float %101, 5.000000e-01
  %160 = fptosi float %158 to i32
  %161 = fptosi float %159 to i32
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %160, i32 %161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = lshr i32 %163, 18
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %165, 0x3F4C00EBA0000000
  %167 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %168 = fadd fast float %167, -1.000000e+00
  %169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %170 = extractvalue %dx.types.Dimensions %169, 0
  %171 = sitofp i32 %170 to float
  %172 = extractvalue %dx.types.Dimensions %169, 1
  %173 = sitofp i32 %172 to float
  %174 = fcmp fast oge float %158, %171
  %175 = fcmp fast oge float %159, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %181 = fmul fast float %179, %100
  %182 = fmul fast float %180, %101
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 114688
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float %181, float 0.000000e+00
  %188 = select i1 %186, float %182, float 0.000000e+00
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fmul fast float %190, 2.550000e+02
  %192 = fptoui float %191 to i32
  %193 = select i1 %186, i32 %192, i32 0
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %213

; <label>:202                                     ; preds = %0
  %203 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %204 = fmul fast float %203, %101
  %205 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %206 = fmul fast float %205, %100
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %206, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %199, 0
  %215 = and i1 %198, %214
  br label %216

; <label>:216                                     ; preds = %213, %202
  %217 = phi i1 [ %212, %202 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %100, 2.560000e+02
  %222 = frem fast float %101, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %54, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %54, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %54, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %54, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %54, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %54, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %54, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %54, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %54, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %54, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %54, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %54, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %54, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %54, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %54, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %54, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %54, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %54, 472
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = fmul fast float %420, %84
  %422 = fmul fast float %417, %85
  %423 = fmul fast float %418, %86
  %424 = fmul fast float %419, %87
  br label %425

; <label>:425                                     ; preds = %410, %216
  %426 = phi float [ %87, %216 ], [ %424, %410 ]
  %427 = phi float [ %86, %216 ], [ %423, %410 ]
  %428 = phi float [ %85, %216 ], [ %422, %410 ]
  %429 = phi float [ %84, %216 ], [ %421, %410 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

; <label>:434                                     ; preds = %425
  %435 = add i32 %54, 44
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %428, float 1.000000e+00
  %441 = add i32 %54, 60
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %427, float 1.000000e+00
  %447 = add i32 %54, 76
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %426, float 1.000000e+00
  br label %453

; <label>:453                                     ; preds = %434, %425
  %454 = phi float [ %426, %425 ], [ %452, %434 ]
  %455 = phi float [ %427, %425 ], [ %446, %434 ]
  %456 = phi float [ %428, %425 ], [ %440, %434 ]
  %457 = lshr i32 %431, 20
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 1
  %460 = add i32 %54, 24
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %54, 28
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %465, %462
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %1170, label %468

; <label>:468                                     ; preds = %453
  %469 = and i32 %462, 262144
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %57, float 1.000000e+00
  %472 = select i1 %470, float %58, float 0.000000e+00
  %473 = select i1 %470, float %59, float 0.000000e+00
  %474 = select i1 %470, float %60, float 1.000000e+00
  %475 = select i1 %470, float %61, float %82
  %476 = select i1 %470, float %62, float %83
  %477 = add i32 %54, 284
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = fmul fast float %481, 0x3F50624DE0000000
  %483 = add i32 %54, 88
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = lshr i32 %485, 24
  %489 = add i32 %54, 292
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %54, 32
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = shl i32 %498, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = fmul fast float %509, 1.000000e+03
  %511 = fmul fast float %269, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %259
  %514 = fmul fast float %270, %510
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %261
  %517 = fmul fast float %482, %510
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, 0x401921FB60000000
  %520 = fadd fast float %519, %501
  %521 = call float @dx.op.unary.f32(i32 13, float %520)  ; Sin(value)
  %522 = call float @dx.op.unary.f32(i32 12, float %520)  ; Cos(value)
  %523 = fsub fast float -0.000000e+00, %521
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fmul fast float %493, %524
  %527 = fmul fast float %495, %525
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %504, %528
  %531 = fmul fast float %507, %529
  %532 = fmul fast float %522, %530
  %533 = call float @dx.op.tertiary.f32(i32 46, float %523, float %531, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %521, %530
  %535 = call float @dx.op.tertiary.f32(i32 46, float %522, float %531, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %513, %533
  %537 = fadd fast float %516, %535
  %538 = icmp ugt i32 %487, 1
  %539 = icmp ugt i32 %485, 33554431
  %540 = or i1 %539, %538
  br i1 %540, label %541, label %566

; <label>:541                                     ; preds = %468
  %542 = add i32 %54, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %509, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = mul nuw nsw i32 %487, %488
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %548, %550
  %552 = call float @dx.op.unary.f32(i32 27, float %551)  ; Round_ni(value)
  %553 = fptoui float %552 to i32
  %554 = urem i32 %553, %487
  %555 = udiv i32 %553, %488
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = fadd fast float %556, %558
  %561 = fadd fast float %557, %559
  %562 = uitofp i32 %487 to float
  %563 = uitofp i32 %488 to float
  %564 = fdiv fast float %560, %562
  %565 = fdiv fast float %561, %563
  br label %566

; <label>:566                                     ; preds = %541, %468
  %567 = phi float [ %564, %541 ], [ %536, %468 ]
  %568 = phi float [ %565, %541 ], [ %537, %468 ]
  %569 = and i32 %462, 16777216
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %680, label %571

; <label>:571                                     ; preds = %566
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fadd fast float %573, %155
  %577 = fadd fast float %574, %156
  %578 = fadd fast float %575, %157
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = icmp eq i32 %55, 65535
  br i1 %582, label %677, label %583

; <label>:583                                     ; preds = %571
  %584 = lshr i32 %55, 1
  %585 = shl i32 %584, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %55, 1
  %589 = icmp ne i32 %588, 0
  %590 = lshr i32 %587, 16
  %591 = and i32 %587, 65535
  %592 = select i1 %589, i32 %590, i32 %591
  %593 = icmp eq i32 %592, 65535
  br i1 %593, label %673, label %594

; <label>:594                                     ; preds = %583
  %595 = mul nuw nsw i32 %592, 40
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = add nuw nsw i32 %595, 12
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %595, 24
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %595, 36
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fmul fast float %612, %613
  %617 = fmul fast float %612, %614
  %618 = fmul fast float %612, %615
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = shl i32 %55, 2
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %632, %dx.types.Handle %49, float %633, float %634, float %635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fadd fast float %619, 1.250000e-01
  %656 = fadd fast float %655, %652
  %657 = fadd fast float %656, %646
  %658 = fadd fast float %620, 1.250000e-01
  %659 = fadd fast float %658, %653
  %660 = fadd fast float %659, %647
  %661 = fadd fast float %621, 1.250000e-01
  %662 = fadd fast float %661, %654
  %663 = fadd fast float %662, %648
  %664 = fmul fast float %657, %607
  %665 = fmul fast float %660, %608
  %666 = fmul fast float %663, %609
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %670, %dx.types.Handle %47, float %664, float %665, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  br label %673

; <label>:673                                     ; preds = %594, %583
  %674 = phi float [ %672, %594 ], [ -1.000000e+00, %583 ]
  %675 = fadd fast float %674, %581
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %673, %571
  %678 = phi float [ %676, %673 ], [ %581, %571 ]
  %679 = fmul fast float %678, %429
  br label %680

; <label>:680                                     ; preds = %677, %566
  %681 = phi float [ %679, %677 ], [ %429, %566 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 256
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %732, label %686

; <label>:686                                     ; preds = %680
  %687 = add i32 %54, 424
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = add i32 %54, 100
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = shl i32 %696, 4
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = lshr i32 %696, 7
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fsub fast float 1.000000e+00, %681
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %705 = bitcast float %681 to i32
  %706 = sitofp i32 %705 to float
  %707 = fadd fast float %706, 0xC1CFBF8940000000
  %708 = fmul fast float %702, %707
  %709 = fadd fast float %708, 0x41CFBF8940000000
  %710 = fptosi float %709 to i32
  %711 = bitcast i32 %710 to float
  %712 = bitcast float %704 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %711, %699
  %720 = fmul fast float %718, %699
  %721 = fsub fast float %704, %719
  %722 = fadd fast float %720, %704
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = fsub fast float %693, %723
  %726 = fsub fast float %724, %723
  %727 = bitcast float %726 to i32
  %728 = sub nsw i32 2129859010, %727
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %729, %725
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  br label %732

; <label>:732                                     ; preds = %686, %680
  %733 = phi float [ %731, %686 ], [ %681, %680 ]
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 128
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %754, label %738

; <label>:738                                     ; preds = %732
  %739 = add i32 %54, 408
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 524288
  %749 = icmp ne i32 %748, 0
  %750 = fcmp fast ogt float %745, 0x3FE0101020000000
  %751 = select i1 %750, float 1.000000e+00, float 0.000000e+00
  %752 = select i1 %749, float %751, float %745
  %753 = fmul fast float %752, %733
  br label %754

; <label>:754                                     ; preds = %738, %732
  %755 = phi float [ %753, %738 ], [ %733, %732 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 16
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %958, label %760

; <label>:760                                     ; preds = %754
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %54, 360
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %772, %774
  %779 = fadd fast float %778, %777
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 512
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %793, label %785

; <label>:785                                     ; preds = %760
  %786 = add i32 %54, 440
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = add i32 %788, 0
  %790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %790, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  br label %793

; <label>:793                                     ; preds = %785, %760
  %794 = phi float [ %792, %785 ], [ 1.000000e+00, %760 ]
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 33554432
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %905, label %799

; <label>:799                                     ; preds = %793
  %800 = add i32 %54, 224
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %802, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = add i32 %54, 228
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 24
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = and i32 %813, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %813, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = lshr i32 %813, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = add i32 %54, 220
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 24
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = and i32 %830, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %830, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = lshr i32 %830, 16
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = bitcast float %769 to i32
  %846 = ashr i32 %845, 1
  %847 = sub nsw i32 1597463174, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %769, 5.000000e-01
  %850 = fmul fast float %848, %848
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.500000e+00, %851
  %853 = fmul fast float %848, %769
  %854 = fmul fast float %853, %852
  %855 = bitcast float %770 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %770, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %770
  %864 = fmul fast float %863, %862
  %865 = bitcast float %771 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463174, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %771, 5.000000e-01
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %870, %869
  %872 = fsub fast float 1.500000e+00, %871
  %873 = fmul fast float %868, %771
  %874 = fmul fast float %873, %872
  %875 = fsub fast float %854, %836
  %876 = fsub fast float %864, %840
  %877 = fsub fast float %874, %844
  %878 = fmul fast float %875, %804
  %879 = fmul fast float %876, %806
  %880 = fmul fast float %877, %811
  %881 = fadd fast float %878, %819
  %882 = fadd fast float %879, %823
  %883 = fadd fast float %880, %827
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fmul fast float %890, %794
  %894 = fmul fast float %891, %794
  %895 = fmul fast float %892, %794
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %816, %780
  %900 = fsub fast float %899, %833
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float %901, %780
  %903 = fmul fast float %902, %794
  %904 = fadd fast float %903, %780
  br label %958

; <label>:905                                     ; preds = %793
  %906 = and i32 %796, 134217728
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %942, label %908

; <label>:908                                     ; preds = %905
  %909 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fmul fast float %912, %794
  %916 = fmul fast float %913, %794
  %917 = fmul fast float %914, %794
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = fmul fast float %918, 2.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %925, %921
  %927 = fadd fast float %926, %924
  %928 = fmul fast float %927, %921
  %929 = fmul fast float %919, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %922
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %922
  %934 = fmul fast float %920, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %923
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %923
  %939 = fmul fast float %928, %928
  %940 = fmul fast float %933, %933
  %941 = fmul fast float %938, %938
  br label %958

; <label>:942                                     ; preds = %905
  %943 = fmul fast float %246, %246
  %944 = fmul fast float %250, %250
  %945 = fmul fast float %254, %254
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fmul fast float %794, %946
  %950 = fmul fast float %794, %947
  %951 = fmul fast float %794, %948
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  br label %958

; <label>:958                                     ; preds = %942, %908, %799, %754
  %959 = phi float [ %904, %799 ], [ %780, %908 ], [ %780, %942 ], [ 0x3FA23C0BE0000000, %754 ]
  %960 = phi float [ %896, %799 ], [ %939, %908 ], [ %955, %942 ], [ 1.000000e+00, %754 ]
  %961 = phi float [ %897, %799 ], [ %940, %908 ], [ %956, %942 ], [ 1.000000e+00, %754 ]
  %962 = phi float [ %898, %799 ], [ %941, %908 ], [ %957, %942 ], [ 1.000000e+00, %754 ]
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 1
  %965 = and i32 %964, 1
  %966 = icmp ne i32 %965, 0
  %967 = add i32 %54, 356
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp ne i32 %970, 0
  %972 = and i1 %966, %971
  %973 = select i1 %972, float 1.000000e+00, float %960
  %974 = select i1 %972, float 0x3FD3333340000000, float %961
  %975 = select i1 %972, float 0x3FD3333340000000, float %962
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1052, label %980

; <label>:980                                     ; preds = %958
  %981 = add i32 %54, 92
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %54, 376
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = and i32 %983, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %983, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %983, 16
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fmul fast float %990, %995
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fadd fast float %991, -5.000000e-01
  %1007 = fadd fast float %993, -5.000000e-01
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1007, %1002
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fmul fast float %1011, 2.000000e+00
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fadd fast float %1013, %1015
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fsub fast float %1013, %1015
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float 1.000000e+00, %1020
  %1022 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1023 = fsub fast float %1021, %1022
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1019, float %1023, float %1017, float %1019, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1017, %1025
  %1027 = fmul fast float %1019, %1025
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 67108864
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1048, label %1032

; <label>:1032                                    ; preds = %980
  %1033 = add i32 %54, 280
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 65535
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 65535
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = lshr i32 %1035, 16
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fsub fast float %1005, %1043
  %1045 = fmul fast float %1044, %1037
  %1046 = fadd fast float %1045, %1041
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  br label %1048

; <label>:1048                                    ; preds = %1032, %980
  %1049 = phi float [ %1047, %1032 ], [ %1005, %980 ]
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  br label %1052

; <label>:1052                                    ; preds = %1048, %958
  %1053 = phi float [ %1049, %1048 ], [ 0x3FD6666660000000, %958 ]
  %1054 = phi float [ %1050, %1048 ], [ 0.000000e+00, %958 ]
  %1055 = phi float [ %1051, %1048 ], [ 0.000000e+00, %958 ]
  %1056 = phi float [ %992, %1048 ], [ 1.000000e+00, %958 ]
  %1057 = add i32 %54, 160
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 22
  %1061 = shl nuw nsw i32 %1060, 5
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 64
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1100, label %1067

; <label>:1067                                    ; preds = %1052
  %1068 = add i32 %54, 392
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 131072
  %1076 = icmp eq i32 %1075, 0
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = fmul fast float %1078, %234
  %1082 = fmul fast float %1079, %237
  %1083 = fmul fast float %1080, %240
  br i1 %1076, label %1090, label %1084

; <label>:1084                                    ; preds = %1067
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = fmul fast float %1086, %1081
  %1088 = fmul fast float %1086, %1082
  %1089 = fmul fast float %1086, %1083
  br label %1090

; <label>:1090                                    ; preds = %1084, %1067
  %1091 = phi float [ %1087, %1084 ], [ %1081, %1067 ]
  %1092 = phi float [ %1088, %1084 ], [ %1082, %1067 ]
  %1093 = phi float [ %1089, %1084 ], [ %1083, %1067 ]
  %1094 = fmul fast float %1091, %1062
  %1095 = select i1 %217, float %1094, float %1091
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = select i1 %217, float 0.000000e+00, float %1091
  %1098 = select i1 %217, float %1096, float %1092
  %1099 = select i1 %217, float 0.000000e+00, float %1093
  br label %1100

; <label>:1100                                    ; preds = %1090, %1052
  %1101 = phi float [ %1097, %1090 ], [ 0.000000e+00, %1052 ]
  %1102 = phi float [ %1098, %1090 ], [ 0.000000e+00, %1052 ]
  %1103 = phi float [ %1099, %1090 ], [ 0.000000e+00, %1052 ]
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 10240
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1152, label %1108

; <label>:1108                                    ; preds = %1100
  %1109 = add i32 %54, 456
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1113, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 1048576
  %1120 = icmp ne i32 %1119, 0
  %1121 = and i32 %1118, 8192
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1138, label %1123

; <label>:1123                                    ; preds = %1108
  %1124 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1125 = select i1 %1120, float %1124, float %1115
  %1126 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1127 = select i1 %1120, float %1126, float %1115
  %1128 = add i32 %54, 96
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = lshr i32 %1130, 16
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = fmul fast float %1133, 0x3F80101020000000
  %1135 = fmul fast float %1134, %1127
  %1136 = fmul fast float %1134, %1115
  %1137 = fmul fast float %1134, %1125
  br label %1138

; <label>:1138                                    ; preds = %1123, %1108
  %1139 = phi float [ %1135, %1123 ], [ 0.000000e+00, %1108 ]
  %1140 = phi float [ %1136, %1123 ], [ 0.000000e+00, %1108 ]
  %1141 = phi float [ %1137, %1123 ], [ 0.000000e+00, %1108 ]
  %1142 = and i32 %1118, 2048
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1152, label %1144

; <label>:1144                                    ; preds = %1138
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = shl i32 %1146, 4
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = fmul fast float %1149, %1116
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1152

; <label>:1152                                    ; preds = %1144, %1138, %1100
  %1153 = phi float [ %1139, %1144 ], [ %1139, %1138 ], [ 0.000000e+00, %1100 ]
  %1154 = phi float [ %1140, %1144 ], [ %1140, %1138 ], [ 0.000000e+00, %1100 ]
  %1155 = phi float [ %1141, %1144 ], [ %1141, %1138 ], [ 0.000000e+00, %1100 ]
  %1156 = phi float [ %1151, %1144 ], [ 0x3F70101020000000, %1138 ], [ 0x3F70101020000000, %1100 ]
  %1157 = add i32 %54, 96
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = lshr i32 %1159, 8
  %1163 = and i32 %1162, 255
  %1164 = uitofp i32 %1163 to float
  %1165 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = fmul fast float %1164, %1165
  %1167 = fadd fast float %1166, %1161
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  br label %1170

; <label>:1170                                    ; preds = %1152, %453
  %1171 = phi float [ 0.000000e+00, %453 ], [ %1054, %1152 ]
  %1172 = phi float [ 0.000000e+00, %453 ], [ %1055, %1152 ]
  %1173 = phi float [ 0.000000e+00, %453 ], [ %1101, %1152 ]
  %1174 = phi float [ 0.000000e+00, %453 ], [ %1102, %1152 ]
  %1175 = phi float [ 0.000000e+00, %453 ], [ %1103, %1152 ]
  %1176 = phi float [ 0.000000e+00, %453 ], [ %1153, %1152 ]
  %1177 = phi float [ 0.000000e+00, %453 ], [ %1154, %1152 ]
  %1178 = phi float [ 0.000000e+00, %453 ], [ %1155, %1152 ]
  %1179 = phi float [ 0.000000e+00, %453 ], [ %973, %1152 ]
  %1180 = phi float [ 0.000000e+00, %453 ], [ %974, %1152 ]
  %1181 = phi float [ 0.000000e+00, %453 ], [ %975, %1152 ]
  %1182 = phi float [ 0.000000e+00, %453 ], [ %959, %1152 ]
  %1183 = phi float [ 0.000000e+00, %453 ], [ %755, %1152 ]
  %1184 = phi float [ 0.000000e+00, %453 ], [ %1053, %1152 ]
  %1185 = phi float [ 0.000000e+00, %453 ], [ %1056, %1152 ]
  %1186 = phi float [ 0.000000e+00, %453 ], [ %1156, %1152 ]
  %1187 = phi float [ 0.000000e+00, %453 ], [ %1169, %1152 ]
  br i1 %401, label %2116, label %1188

; <label>:1188                                    ; preds = %1170
  %1189 = icmp ult i32 %459, 2
  %1190 = add i32 %54, 40
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %54, 44
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = or i32 %1195, %1192
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %2116, label %1198

; <label>:1198                                    ; preds = %1188
  %1199 = and i32 %1192, 262144
  %1200 = icmp ne i32 %1199, 0
  %1201 = select i1 %1200, float %57, float 1.000000e+00
  %1202 = select i1 %1200, float %58, float 0.000000e+00
  %1203 = select i1 %1200, float %59, float 0.000000e+00
  %1204 = select i1 %1200, float %60, float 1.000000e+00
  %1205 = select i1 %1200, float %61, float %82
  %1206 = select i1 %1200, float %62, float %83
  %1207 = add i32 %54, 300
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = lshr i32 %1209, 16
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = fmul fast float %1211, 0x3F50624DE0000000
  %1213 = add i32 %54, 104
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 16
  %1217 = and i32 %1216, 255
  %1218 = lshr i32 %1215, 24
  %1219 = add i32 %54, 308
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 65535
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = lshr i32 %1221, 16
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = add i32 %54, 48
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 22
  %1230 = shl nuw nsw i32 %1229, 5
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = shl i32 %1228, 4
  %1233 = and i32 %1232, 32752
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = lshr i32 %1228, 7
  %1236 = and i32 %1235, 32752
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 3
  %1240 = fmul fast float %1239, 1.000000e+03
  %1241 = fmul fast float %311, %1240
  %1242 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1243 = fadd fast float %1242, %301
  %1244 = fmul fast float %312, %1240
  %1245 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1246 = fadd fast float %1245, %303
  %1247 = fmul fast float %1212, %1240
  %1248 = call float @dx.op.unary.f32(i32 22, float %1247)  ; Frc(value)
  %1249 = fmul fast float %1248, 0x401921FB60000000
  %1250 = fadd fast float %1249, %1231
  %1251 = call float @dx.op.unary.f32(i32 13, float %1250)  ; Sin(value)
  %1252 = call float @dx.op.unary.f32(i32 12, float %1250)  ; Cos(value)
  %1253 = fsub fast float -0.000000e+00, %1251
  %1254 = fadd fast float %1205, -5.000000e-01
  %1255 = fadd fast float %1206, -5.000000e-01
  %1256 = fmul fast float %1223, %1254
  %1257 = fmul fast float %1225, %1255
  %1258 = fadd fast float %1256, 5.000000e-01
  %1259 = fadd fast float %1257, 5.000000e-01
  %1260 = fmul fast float %1234, %1258
  %1261 = fmul fast float %1237, %1259
  %1262 = fmul fast float %1252, %1260
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1261, float %1262)  ; FMad(a,b,c)
  %1264 = fmul fast float %1251, %1260
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1261, float %1264)  ; FMad(a,b,c)
  %1266 = fadd fast float %1243, %1263
  %1267 = fadd fast float %1246, %1265
  %1268 = icmp ugt i32 %1217, 1
  %1269 = icmp ugt i32 %1215, 33554431
  %1270 = or i1 %1269, %1268
  br i1 %1270, label %1271, label %1296

; <label>:1271                                    ; preds = %1198
  %1272 = add i32 %54, 244
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 16
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fmul fast float %1239, %1276
  %1278 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1279 = mul nuw nsw i32 %1217, %1218
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1278, %1280
  %1282 = call float @dx.op.unary.f32(i32 27, float %1281)  ; Round_ni(value)
  %1283 = fptoui float %1282 to i32
  %1284 = urem i32 %1283, %1217
  %1285 = udiv i32 %1283, %1218
  %1286 = call float @dx.op.unary.f32(i32 22, float %1266)  ; Frc(value)
  %1287 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1288 = uitofp i32 %1284 to float
  %1289 = uitofp i32 %1285 to float
  %1290 = fadd fast float %1286, %1288
  %1291 = fadd fast float %1287, %1289
  %1292 = uitofp i32 %1217 to float
  %1293 = uitofp i32 %1218 to float
  %1294 = fdiv fast float %1290, %1292
  %1295 = fdiv fast float %1291, %1293
  br label %1296

; <label>:1296                                    ; preds = %1271, %1198
  %1297 = phi float [ %1294, %1271 ], [ %1266, %1198 ]
  %1298 = phi float [ %1295, %1271 ], [ %1267, %1198 ]
  %1299 = and i32 %1192, 16777216
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1410, label %1301

; <label>:1301                                    ; preds = %1296
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1306 = fadd fast float %1303, %155
  %1307 = fadd fast float %1304, %156
  %1308 = fadd fast float %1305, %157
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = icmp eq i32 %55, 65535
  br i1 %1312, label %1407, label %1313

; <label>:1313                                    ; preds = %1301
  %1314 = lshr i32 %55, 1
  %1315 = shl i32 %1314, 2
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = and i32 %55, 1
  %1319 = icmp ne i32 %1318, 0
  %1320 = lshr i32 %1317, 16
  %1321 = and i32 %1317, 65535
  %1322 = select i1 %1319, i32 %1320, i32 %1321
  %1323 = icmp eq i32 %1322, 65535
  br i1 %1323, label %1403, label %1324

; <label>:1324                                    ; preds = %1313
  %1325 = mul nuw nsw i32 %1322, 40
  %1326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.ResRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1326, 2
  %1330 = add nuw nsw i32 %1325, 12
  %1331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = add nuw nsw i32 %1325, 24
  %1336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = add nuw nsw i32 %1325, 36
  %1341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = fsub fast float %1306, %1327
  %1344 = fsub fast float %1307, %1328
  %1345 = fsub fast float %1308, %1329
  %1346 = fmul fast float %1342, %1343
  %1347 = fmul fast float %1342, %1344
  %1348 = fmul fast float %1342, %1345
  %1349 = call float @dx.op.unary.f32(i32 27, float %1346)  ; Round_ni(value)
  %1350 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1351 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1352 = fadd fast float %1349, 5.000000e-01
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = fadd fast float %1351, 5.000000e-01
  %1355 = fmul fast float %1352, %1332
  %1356 = fmul fast float %1353, %1333
  %1357 = fmul fast float %1354, %1334
  %1358 = shl i32 %55, 2
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = add i32 %1360, 0
  %1362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1363 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1364 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1365 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1362, %dx.types.Handle %49, float %1363, float %1364, float %1365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = fmul fast float %1367, 1.023000e+03
  %1371 = fmul fast float %1368, 1.023000e+03
  %1372 = fmul fast float %1369, 1.023000e+03
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = call float @dx.op.unary.f32(i32 27, float %1373)  ; Round_ni(value)
  %1377 = call float @dx.op.unary.f32(i32 27, float %1374)  ; Round_ni(value)
  %1378 = call float @dx.op.unary.f32(i32 27, float %1375)  ; Round_ni(value)
  %1379 = fsub fast float %1346, %1349
  %1380 = fsub fast float %1347, %1350
  %1381 = fsub fast float %1348, %1351
  %1382 = fmul fast float %1379, 7.500000e-01
  %1383 = fmul fast float %1380, 7.500000e-01
  %1384 = fmul fast float %1381, 7.500000e-01
  %1385 = fadd fast float %1349, 1.250000e-01
  %1386 = fadd fast float %1385, %1382
  %1387 = fadd fast float %1386, %1376
  %1388 = fadd fast float %1350, 1.250000e-01
  %1389 = fadd fast float %1388, %1383
  %1390 = fadd fast float %1389, %1377
  %1391 = fadd fast float %1351, 1.250000e-01
  %1392 = fadd fast float %1391, %1384
  %1393 = fadd fast float %1392, %1378
  %1394 = fmul fast float %1387, %1337
  %1395 = fmul fast float %1390, %1338
  %1396 = fmul fast float %1393, %1339
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = add i32 %1398, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1400, %dx.types.Handle %47, float %1394, float %1395, float %1396, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  br label %1403

; <label>:1403                                    ; preds = %1324, %1313
  %1404 = phi float [ %1402, %1324 ], [ -1.000000e+00, %1313 ]
  %1405 = fadd fast float %1404, %1311
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  br label %1407

; <label>:1407                                    ; preds = %1403, %1301
  %1408 = phi float [ %1406, %1403 ], [ %1311, %1301 ]
  %1409 = fmul fast float %1408, %456
  br label %1410

; <label>:1410                                    ; preds = %1407, %1296
  %1411 = phi float [ %1409, %1407 ], [ %456, %1296 ]
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 256
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1462, label %1416

; <label>:1416                                    ; preds = %1410
  %1417 = add i32 %54, 428
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = add i32 %1419, 0
  %1421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1421, %dx.types.Handle %97, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = add i32 %54, 116
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = shl i32 %1426, 4
  %1428 = and i32 %1427, 32752
  %1429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1428)  ; LegacyF16ToF32(value)
  %1430 = lshr i32 %1426, 7
  %1431 = and i32 %1430, 32752
  %1432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1431)  ; LegacyF16ToF32(value)
  %1433 = fsub fast float 1.000000e+00, %1411
  %1434 = call float @dx.op.binary.f32(i32 35, float %1433, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1435 = bitcast float %1411 to i32
  %1436 = sitofp i32 %1435 to float
  %1437 = fadd fast float %1436, 0xC1CFBF8940000000
  %1438 = fmul fast float %1432, %1437
  %1439 = fadd fast float %1438, 0x41CFBF8940000000
  %1440 = fptosi float %1439 to i32
  %1441 = bitcast i32 %1440 to float
  %1442 = bitcast float %1434 to i32
  %1443 = sitofp i32 %1442 to float
  %1444 = fadd fast float %1443, 0xC1CFBF8940000000
  %1445 = fmul fast float %1444, %1432
  %1446 = fadd fast float %1445, 0x41CFBF8940000000
  %1447 = fptosi float %1446 to i32
  %1448 = bitcast i32 %1447 to float
  %1449 = fmul fast float %1441, %1429
  %1450 = fmul fast float %1448, %1429
  %1451 = fsub fast float %1434, %1449
  %1452 = fadd fast float %1450, %1434
  %1453 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1455 = fsub fast float %1423, %1453
  %1456 = fsub fast float %1454, %1453
  %1457 = bitcast float %1456 to i32
  %1458 = sub nsw i32 2129859010, %1457
  %1459 = bitcast i32 %1458 to float
  %1460 = fmul fast float %1459, %1455
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br label %1462

; <label>:1462                                    ; preds = %1416, %1410
  %1463 = phi float [ %1461, %1416 ], [ %1411, %1410 ]
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 128
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1484, label %1468

; <label>:1468                                    ; preds = %1462
  %1469 = add i32 %54, 412
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %1471, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1473, %dx.types.Handle %97, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 524288
  %1479 = icmp ne i32 %1478, 0
  %1480 = fcmp fast ogt float %1475, 0x3FE0101020000000
  %1481 = select i1 %1480, float 1.000000e+00, float 0.000000e+00
  %1482 = select i1 %1479, float %1481, float %1475
  %1483 = fmul fast float %1482, %1463
  br label %1484

; <label>:1484                                    ; preds = %1468, %1462
  %1485 = phi float [ %1483, %1468 ], [ %1463, %1462 ]
  %1486 = fcmp fast ult float %1485, 0x3F70101020000000
  br i1 %1486, label %2116, label %1487

; <label>:1487                                    ; preds = %1484
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 16
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1690, label %1492

; <label>:1492                                    ; preds = %1487
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = add i32 %54, 364
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = add i32 %1497, 0
  %1499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1499, %dx.types.Handle %96, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  %1504 = extractvalue %dx.types.ResRet.f32 %1500, 3
  %1505 = and i32 %1494, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = lshr i32 %1494, 8
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1504, %1506
  %1511 = fadd fast float %1510, %1509
  %1512 = fmul fast float %1511, 0x3F70101000000000
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 512
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1525, label %1517

; <label>:1517                                    ; preds = %1492
  %1518 = add i32 %54, 444
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %97, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  br label %1525

; <label>:1525                                    ; preds = %1517, %1492
  %1526 = phi float [ %1524, %1517 ], [ 1.000000e+00, %1492 ]
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 33554432
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1637, label %1531

; <label>:1531                                    ; preds = %1525
  %1532 = add i32 %54, 240
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 65535
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = lshr i32 %1534, 16
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = add i32 %54, 244
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = lshr i32 %1545, 24
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F70101020000000
  %1549 = and i32 %1545, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = lshr i32 %1545, 8
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = lshr i32 %1545, 16
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = add i32 %54, 236
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = lshr i32 %1562, 24
  %1564 = uitofp i32 %1563 to float
  %1565 = fmul fast float %1564, 0x3F70101020000000
  %1566 = and i32 %1562, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = lshr i32 %1562, 8
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = lshr i32 %1562, 16
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = bitcast float %1501 to i32
  %1578 = ashr i32 %1577, 1
  %1579 = sub nsw i32 1597463174, %1578
  %1580 = bitcast i32 %1579 to float
  %1581 = fmul fast float %1501, 5.000000e-01
  %1582 = fmul fast float %1580, %1580
  %1583 = fmul fast float %1582, %1581
  %1584 = fsub fast float 1.500000e+00, %1583
  %1585 = fmul fast float %1580, %1501
  %1586 = fmul fast float %1585, %1584
  %1587 = bitcast float %1502 to i32
  %1588 = ashr i32 %1587, 1
  %1589 = sub nsw i32 1597463174, %1588
  %1590 = bitcast i32 %1589 to float
  %1591 = fmul fast float %1502, 5.000000e-01
  %1592 = fmul fast float %1590, %1590
  %1593 = fmul fast float %1592, %1591
  %1594 = fsub fast float 1.500000e+00, %1593
  %1595 = fmul fast float %1590, %1502
  %1596 = fmul fast float %1595, %1594
  %1597 = bitcast float %1503 to i32
  %1598 = ashr i32 %1597, 1
  %1599 = sub nsw i32 1597463174, %1598
  %1600 = bitcast i32 %1599 to float
  %1601 = fmul fast float %1503, 5.000000e-01
  %1602 = fmul fast float %1600, %1600
  %1603 = fmul fast float %1602, %1601
  %1604 = fsub fast float 1.500000e+00, %1603
  %1605 = fmul fast float %1600, %1503
  %1606 = fmul fast float %1605, %1604
  %1607 = fsub fast float %1586, %1568
  %1608 = fsub fast float %1596, %1572
  %1609 = fsub fast float %1606, %1576
  %1610 = fmul fast float %1607, %1536
  %1611 = fmul fast float %1608, %1538
  %1612 = fmul fast float %1609, %1543
  %1613 = fadd fast float %1610, %1551
  %1614 = fadd fast float %1611, %1555
  %1615 = fadd fast float %1612, %1559
  %1616 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = fmul fast float %1616, %1616
  %1620 = fmul fast float %1617, %1617
  %1621 = fmul fast float %1618, %1618
  %1622 = fsub fast float %1619, %1501
  %1623 = fsub fast float %1620, %1502
  %1624 = fsub fast float %1621, %1503
  %1625 = fmul fast float %1622, %1526
  %1626 = fmul fast float %1623, %1526
  %1627 = fmul fast float %1624, %1526
  %1628 = fadd fast float %1625, %1501
  %1629 = fadd fast float %1626, %1502
  %1630 = fadd fast float %1627, %1503
  %1631 = fadd fast float %1548, %1512
  %1632 = fsub fast float %1631, %1565
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fsub fast float %1633, %1512
  %1635 = fmul fast float %1634, %1526
  %1636 = fadd fast float %1635, %1512
  br label %1690

; <label>:1637                                    ; preds = %1525
  %1638 = and i32 %1528, 134217728
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1674, label %1640

; <label>:1640                                    ; preds = %1637
  %1641 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1643 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fadd fast float %1643, -5.000000e-01
  %1647 = fmul fast float %1644, %1526
  %1648 = fmul fast float %1645, %1526
  %1649 = fmul fast float %1646, %1526
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fadd fast float %1649, 5.000000e-01
  %1653 = call float @dx.op.unary.f32(i32 24, float %1501)  ; Sqrt(value)
  %1654 = call float @dx.op.unary.f32(i32 24, float %1502)  ; Sqrt(value)
  %1655 = call float @dx.op.unary.f32(i32 24, float %1503)  ; Sqrt(value)
  %1656 = fmul fast float %1650, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1653
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1653
  %1661 = fmul fast float %1651, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1654
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1654
  %1666 = fmul fast float %1652, 2.000000e+00
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = fmul fast float %1667, %1655
  %1669 = fadd fast float %1668, %1666
  %1670 = fmul fast float %1669, %1655
  %1671 = fmul fast float %1660, %1660
  %1672 = fmul fast float %1665, %1665
  %1673 = fmul fast float %1670, %1670
  br label %1690

; <label>:1674                                    ; preds = %1637
  %1675 = fmul fast float %288, %288
  %1676 = fmul fast float %292, %292
  %1677 = fmul fast float %296, %296
  %1678 = fadd fast float %1675, -1.000000e+00
  %1679 = fadd fast float %1676, -1.000000e+00
  %1680 = fadd fast float %1677, -1.000000e+00
  %1681 = fmul fast float %1526, %1678
  %1682 = fmul fast float %1526, %1679
  %1683 = fmul fast float %1526, %1680
  %1684 = fadd fast float %1681, 1.000000e+00
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fmul fast float %1684, %1501
  %1688 = fmul fast float %1685, %1502
  %1689 = fmul fast float %1686, %1503
  br label %1690

; <label>:1690                                    ; preds = %1674, %1640, %1531, %1487
  %1691 = phi float [ %1636, %1531 ], [ %1512, %1640 ], [ %1512, %1674 ], [ 0x3FA23C0BE0000000, %1487 ]
  %1692 = phi float [ %1628, %1531 ], [ %1671, %1640 ], [ %1687, %1674 ], [ 1.000000e+00, %1487 ]
  %1693 = phi float [ %1629, %1531 ], [ %1672, %1640 ], [ %1688, %1674 ], [ 1.000000e+00, %1487 ]
  %1694 = phi float [ %1630, %1531 ], [ %1673, %1640 ], [ %1689, %1674 ], [ 1.000000e+00, %1487 ]
  %1695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.i32 %1695, 1
  %1697 = and i32 %1696, 1
  %1698 = icmp ne i32 %1697, 0
  %1699 = add i32 %54, 356
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 32
  %1703 = icmp ne i32 %1702, 0
  %1704 = and i1 %1698, %1703
  %1705 = select i1 %1704, float 1.000000e+00, float %1692
  %1706 = select i1 %1704, float 0x3FD3333340000000, float %1693
  %1707 = select i1 %1704, float 0x3FD3333340000000, float %1694
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 32
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1784, label %1712

; <label>:1712                                    ; preds = %1690
  %1713 = add i32 %54, 108
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %54, 380
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = add i32 %1718, 0
  %1720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1720, %dx.types.Handle %96, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = extractvalue %dx.types.ResRet.f32 %1721, 3
  %1726 = and i32 %1715, 255
  %1727 = uitofp i32 %1726 to float
  %1728 = lshr i32 %1715, 8
  %1729 = and i32 %1728, 255
  %1730 = uitofp i32 %1729 to float
  %1731 = lshr i32 %1715, 16
  %1732 = and i32 %1731, 255
  %1733 = uitofp i32 %1732 to float
  %1734 = fmul fast float %1733, 0x3F70101000000000
  %1735 = fmul fast float %1722, %1727
  %1736 = fadd fast float %1735, %1730
  %1737 = fmul fast float %1736, 0x3F70101000000000
  %1738 = fadd fast float %1723, -5.000000e-01
  %1739 = fadd fast float %1725, -5.000000e-01
  %1740 = fmul fast float %1738, %1734
  %1741 = fmul fast float %1739, %1734
  %1742 = fadd fast float %1740, 5.000000e-01
  %1743 = fadd fast float %1741, 5.000000e-01
  %1744 = fmul fast float %1742, 2.000000e+00
  %1745 = fadd fast float %1744, -1.000000e+00
  %1746 = fmul fast float %1743, 2.000000e+00
  %1747 = fadd fast float %1746, -1.000000e+00
  %1748 = fadd fast float %1745, %1747
  %1749 = fmul fast float %1748, 5.000000e-01
  %1750 = fsub fast float %1745, %1747
  %1751 = fmul fast float %1750, 5.000000e-01
  %1752 = call float @dx.op.unary.f32(i32 6, float %1749)  ; FAbs(value)
  %1753 = fsub fast float 1.000000e+00, %1752
  %1754 = call float @dx.op.unary.f32(i32 6, float %1751)  ; FAbs(value)
  %1755 = fsub fast float %1753, %1754
  %1756 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1751, float %1755, float %1749, float %1751, float %1755)  ; Dot3(ax,ay,az,bx,by,bz)
  %1757 = call float @dx.op.unary.f32(i32 25, float %1756)  ; Rsqrt(value)
  %1758 = fmul fast float %1749, %1757
  %1759 = fmul fast float %1751, %1757
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 67108864
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1780, label %1764

; <label>:1764                                    ; preds = %1712
  %1765 = add i32 %54, 296
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 65535
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 65535
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = lshr i32 %1767, 16
  %1775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1774)  ; LegacyF16ToF32(value)
  %1776 = fsub fast float %1737, %1775
  %1777 = fmul fast float %1776, %1769
  %1778 = fadd fast float %1777, %1773
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  br label %1780

; <label>:1780                                    ; preds = %1764, %1712
  %1781 = phi float [ %1779, %1764 ], [ %1737, %1712 ]
  %1782 = call float @dx.op.dot2.f32(i32 54, float %1758, float %1759, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  %1783 = call float @dx.op.dot2.f32(i32 54, float %1758, float %1759, float %1203, float %1204)  ; Dot2(ax,ay,bx,by)
  br label %1784

; <label>:1784                                    ; preds = %1780, %1690
  %1785 = phi float [ %1781, %1780 ], [ 0x3FD6666660000000, %1690 ]
  %1786 = phi float [ %1782, %1780 ], [ 0.000000e+00, %1690 ]
  %1787 = phi float [ %1783, %1780 ], [ 0.000000e+00, %1690 ]
  %1788 = phi float [ %1724, %1780 ], [ 1.000000e+00, %1690 ]
  %1789 = add i32 %54, 176
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 22
  %1793 = shl nuw nsw i32 %1792, 5
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %1796, 64
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1832, label %1799

; <label>:1799                                    ; preds = %1784
  %1800 = add i32 %54, 396
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = add i32 %1802, 0
  %1804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = and i32 %1806, 131072
  %1808 = icmp eq i32 %1807, 0
  %1809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1804, %dx.types.Handle %96, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1809, 2
  %1813 = fmul fast float %1810, %276
  %1814 = fmul fast float %1811, %279
  %1815 = fmul fast float %1812, %282
  br i1 %1808, label %1822, label %1816

; <label>:1816                                    ; preds = %1799
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = fmul fast float %1818, %1813
  %1820 = fmul fast float %1818, %1814
  %1821 = fmul fast float %1818, %1815
  br label %1822

; <label>:1822                                    ; preds = %1816, %1799
  %1823 = phi float [ %1819, %1816 ], [ %1813, %1799 ]
  %1824 = phi float [ %1820, %1816 ], [ %1814, %1799 ]
  %1825 = phi float [ %1821, %1816 ], [ %1815, %1799 ]
  %1826 = fmul fast float %1823, %1794
  %1827 = select i1 %217, float %1826, float %1823
  %1828 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1824, float %1825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1829 = select i1 %217, float 0.000000e+00, float %1823
  %1830 = select i1 %217, float %1828, float %1824
  %1831 = select i1 %217, float 0.000000e+00, float %1825
  br label %1832

; <label>:1832                                    ; preds = %1822, %1784
  %1833 = phi float [ %1829, %1822 ], [ 0.000000e+00, %1784 ]
  %1834 = phi float [ %1830, %1822 ], [ 0.000000e+00, %1784 ]
  %1835 = phi float [ %1831, %1822 ], [ 0.000000e+00, %1784 ]
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 10240
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1884, label %1840

; <label>:1840                                    ; preds = %1832
  %1841 = add i32 %54, 460
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = add i32 %1843, 0
  %1845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1845, %dx.types.Handle %97, float %1297, float %1298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 3
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 1048576
  %1852 = icmp ne i32 %1851, 0
  %1853 = and i32 %1850, 8192
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1870, label %1855

; <label>:1855                                    ; preds = %1840
  %1856 = extractvalue %dx.types.ResRet.f32 %1846, 2
  %1857 = select i1 %1852, float %1856, float %1847
  %1858 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1859 = select i1 %1852, float %1858, float %1847
  %1860 = add i32 %54, 112
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = lshr i32 %1862, 16
  %1864 = and i32 %1863, 255
  %1865 = uitofp i32 %1864 to float
  %1866 = fmul fast float %1865, 0x3F80101020000000
  %1867 = fmul fast float %1866, %1859
  %1868 = fmul fast float %1866, %1847
  %1869 = fmul fast float %1866, %1857
  br label %1870

; <label>:1870                                    ; preds = %1855, %1840
  %1871 = phi float [ %1867, %1855 ], [ 0.000000e+00, %1840 ]
  %1872 = phi float [ %1868, %1855 ], [ 0.000000e+00, %1840 ]
  %1873 = phi float [ %1869, %1855 ], [ 0.000000e+00, %1840 ]
  %1874 = and i32 %1850, 2048
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1884, label %1876

; <label>:1876                                    ; preds = %1870
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = shl i32 %1878, 4
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = fmul fast float %1881, %1848
  %1883 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1884

; <label>:1884                                    ; preds = %1876, %1870, %1832
  %1885 = phi float [ %1871, %1876 ], [ %1871, %1870 ], [ 0.000000e+00, %1832 ]
  %1886 = phi float [ %1872, %1876 ], [ %1872, %1870 ], [ 0.000000e+00, %1832 ]
  %1887 = phi float [ %1873, %1876 ], [ %1873, %1870 ], [ 0.000000e+00, %1832 ]
  %1888 = phi float [ %1883, %1876 ], [ 0x3F70101020000000, %1870 ], [ 0x3F70101020000000, %1832 ]
  %1889 = add i32 %54, 112
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = and i32 %1891, 255
  %1893 = uitofp i32 %1892 to float
  %1894 = lshr i32 %1891, 8
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1706, float %1707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = fmul fast float %1896, %1897
  %1899 = fadd fast float %1898, %1893
  %1900 = fmul fast float %1899, 0x3F70101020000000
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  br i1 %1189, label %1902, label %1910

; <label>:1902                                    ; preds = %1884
  %1903 = fsub fast float 1.000000e+00, %1485
  %1904 = fmul fast float %1903, %1179
  %1905 = fmul fast float %1903, %1180
  %1906 = fmul fast float %1903, %1181
  %1907 = fmul fast float %1903, %1173
  %1908 = fmul fast float %1903, %1174
  %1909 = fmul fast float %1903, %1175
  br label %1910

; <label>:1910                                    ; preds = %1902, %1884
  %1911 = phi float [ %1907, %1902 ], [ %1173, %1884 ]
  %1912 = phi float [ %1908, %1902 ], [ %1174, %1884 ]
  %1913 = phi float [ %1909, %1902 ], [ %1175, %1884 ]
  %1914 = phi float [ %1904, %1902 ], [ %1179, %1884 ]
  %1915 = phi float [ %1905, %1902 ], [ %1180, %1884 ]
  %1916 = phi float [ %1906, %1902 ], [ %1181, %1884 ]
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 3
  %1920 = icmp eq i32 %1919, 3
  br i1 %1920, label %1999, label %1921

; <label>:1921                                    ; preds = %1910
  %1922 = and i32 %1918, 16
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %1923, float %1485, float 0.000000e+00
  %1925 = icmp eq i32 %1919, 0
  br i1 %1925, label %1926, label %1954

; <label>:1926                                    ; preds = %1921
  %1927 = and i32 %1918, 64
  %1928 = icmp ne i32 %1927, 0
  %1929 = select i1 %1928, float %1485, float 0.000000e+00
  %1930 = fsub fast float %1705, %1914
  %1931 = fsub fast float %1706, %1915
  %1932 = fsub fast float %1707, %1916
  %1933 = fmul fast float %1924, %1930
  %1934 = fmul fast float %1924, %1931
  %1935 = fmul fast float %1924, %1932
  %1936 = fadd fast float %1933, %1914
  %1937 = fadd fast float %1934, %1915
  %1938 = fadd fast float %1935, %1916
  %1939 = fsub fast float %1691, %1182
  %1940 = fmul fast float %1924, %1939
  %1941 = fadd fast float %1940, %1182
  %1942 = fsub fast float %1833, %1911
  %1943 = fsub fast float %1834, %1912
  %1944 = fsub fast float %1835, %1913
  %1945 = fmul fast float %1929, %1942
  %1946 = fmul fast float %1929, %1943
  %1947 = fmul fast float %1929, %1944
  %1948 = fadd fast float %1945, %1911
  %1949 = fadd fast float %1946, %1912
  %1950 = fadd fast float %1947, %1913
  %1951 = fsub fast float %1901, %1187
  %1952 = fmul fast float %1924, %1951
  %1953 = fadd fast float %1952, %1187
  br label %1999

; <label>:1954                                    ; preds = %1921
  %1955 = icmp eq i32 %1919, 1
  br i1 %1955, label %1956, label %1969

; <label>:1956                                    ; preds = %1954
  %1957 = fadd fast float %1705, -1.000000e+00
  %1958 = fadd fast float %1706, -1.000000e+00
  %1959 = fadd fast float %1707, -1.000000e+00
  %1960 = fmul fast float %1924, %1957
  %1961 = fmul fast float %1924, %1958
  %1962 = fmul fast float %1924, %1959
  %1963 = fadd fast float %1960, 1.000000e+00
  %1964 = fadd fast float %1961, 1.000000e+00
  %1965 = fadd fast float %1962, 1.000000e+00
  %1966 = fmul fast float %1963, %1914
  %1967 = fmul fast float %1964, %1915
  %1968 = fmul fast float %1965, %1916
  br label %1999

; <label>:1969                                    ; preds = %1954
  %1970 = icmp eq i32 %1919, 2
  br i1 %1970, label %1971, label %1999

; <label>:1971                                    ; preds = %1969
  %1972 = call float @dx.op.unary.f32(i32 24, float %1705)  ; Sqrt(value)
  %1973 = call float @dx.op.unary.f32(i32 24, float %1706)  ; Sqrt(value)
  %1974 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1975 = fadd fast float %1972, -5.000000e-01
  %1976 = fadd fast float %1973, -5.000000e-01
  %1977 = fadd fast float %1974, -5.000000e-01
  %1978 = fmul fast float %1975, %1924
  %1979 = fmul fast float %1976, %1924
  %1980 = fmul fast float %1977, %1924
  %1981 = fadd fast float %1978, 5.000000e-01
  %1982 = fadd fast float %1979, 5.000000e-01
  %1983 = fadd fast float %1980, 5.000000e-01
  %1984 = fmul fast float %1981, 2.000000e+00
  %1985 = fsub fast float 1.000000e+00, %1984
  %1986 = fmul fast float %1985, %1914
  %1987 = fadd fast float %1986, %1984
  %1988 = fmul fast float %1987, %1914
  %1989 = fmul fast float %1982, 2.000000e+00
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = fmul fast float %1990, %1915
  %1992 = fadd fast float %1991, %1989
  %1993 = fmul fast float %1992, %1915
  %1994 = fmul fast float %1983, 2.000000e+00
  %1995 = fsub fast float 1.000000e+00, %1994
  %1996 = fmul fast float %1995, %1916
  %1997 = fadd fast float %1996, %1994
  %1998 = fmul fast float %1997, %1916
  br label %1999

; <label>:1999                                    ; preds = %1971, %1969, %1956, %1926, %1910
  %2000 = phi float [ %1911, %1910 ], [ %1911, %1971 ], [ %1911, %1969 ], [ %1911, %1956 ], [ %1948, %1926 ]
  %2001 = phi float [ %1912, %1910 ], [ %1912, %1971 ], [ %1912, %1969 ], [ %1912, %1956 ], [ %1949, %1926 ]
  %2002 = phi float [ %1913, %1910 ], [ %1913, %1971 ], [ %1913, %1969 ], [ %1913, %1956 ], [ %1950, %1926 ]
  %2003 = phi float [ %1914, %1910 ], [ %1988, %1971 ], [ %1914, %1969 ], [ %1966, %1956 ], [ %1936, %1926 ]
  %2004 = phi float [ %1915, %1910 ], [ %1993, %1971 ], [ %1915, %1969 ], [ %1967, %1956 ], [ %1937, %1926 ]
  %2005 = phi float [ %1916, %1910 ], [ %1998, %1971 ], [ %1916, %1969 ], [ %1968, %1956 ], [ %1938, %1926 ]
  %2006 = phi float [ %1182, %1910 ], [ %1182, %1971 ], [ %1182, %1969 ], [ %1182, %1956 ], [ %1941, %1926 ]
  %2007 = phi float [ %1187, %1910 ], [ %1187, %1971 ], [ %1187, %1969 ], [ %1187, %1956 ], [ %1953, %1926 ]
  %2008 = and i32 %1918, 12
  %2009 = icmp eq i32 %2008, 12
  br i1 %2009, label %2116, label %2010

; <label>:2010                                    ; preds = %1999
  %2011 = and i32 %1918, 2097184
  %2012 = icmp eq i32 %2011, 2097184
  %2013 = select i1 %2012, float %1485, float 0.000000e+00
  %2014 = and i32 %1918, 4194336
  %2015 = icmp eq i32 %2014, 4194336
  %2016 = select i1 %2015, float %1485, float 0.000000e+00
  %2017 = and i32 %1918, 8388640
  %2018 = icmp eq i32 %2017, 8388640
  %2019 = select i1 %2018, float %1485, float 0.000000e+00
  %2020 = and i32 %1918, 2048
  %2021 = icmp ne i32 %2020, 0
  %2022 = select i1 %2021, float %1485, float 0.000000e+00
  %2023 = and i32 %1918, 8192
  %2024 = icmp ne i32 %2023, 0
  %2025 = select i1 %2024, float %1485, float 0.000000e+00
  %2026 = icmp eq i32 %2008, 0
  br i1 %2026, label %2027, label %2052

; <label>:2027                                    ; preds = %2010
  %2028 = fsub fast float %1786, %1171
  %2029 = fsub fast float %1787, %1172
  %2030 = fmul fast float %2013, %2028
  %2031 = fmul fast float %2013, %2029
  %2032 = fadd fast float %2030, %1171
  %2033 = fadd fast float %2031, %1172
  %2034 = fsub fast float %1788, %1185
  %2035 = fmul fast float %2016, %2034
  %2036 = fadd fast float %2035, %1185
  %2037 = fsub fast float %1785, %1184
  %2038 = fmul fast float %2019, %2037
  %2039 = fadd fast float %2038, %1184
  %2040 = fsub fast float %1888, %1186
  %2041 = fmul fast float %2022, %2040
  %2042 = fadd fast float %2041, %1186
  %2043 = fsub fast float %1885, %1176
  %2044 = fsub fast float %1886, %1177
  %2045 = fsub fast float %1887, %1178
  %2046 = fmul fast float %2025, %2043
  %2047 = fmul fast float %2025, %2044
  %2048 = fmul fast float %2025, %2045
  %2049 = fadd fast float %2046, %1176
  %2050 = fadd fast float %2047, %1177
  %2051 = fadd fast float %2048, %1178
  br label %2116

; <label>:2052                                    ; preds = %2010
  %2053 = icmp eq i32 %2008, 4
  br i1 %2053, label %2054, label %2094

; <label>:2054                                    ; preds = %2052
  %2055 = fmul fast float %2013, %1786
  %2056 = fmul fast float %2013, %1787
  %2057 = fadd fast float %2055, %1171
  %2058 = fadd fast float %2056, %1172
  %2059 = call float @dx.op.binary.f32(i32 36, float %1185, float %1788)  ; FMin(a,b)
  %2060 = fsub fast float %2059, %1185
  %2061 = fmul fast float %2060, %2016
  %2062 = fadd fast float %2061, %1185
  %2063 = fadd fast float %1785, %1184
  %2064 = fmul fast float %2063, 0x3FF337FAE0000000
  %2065 = fmul fast float %1184, %1184
  %2066 = fmul fast float %1785, %1785
  %2067 = fadd fast float %2066, %2065
  %2068 = fmul fast float %2067, 0x3FE5152B00000000
  %2069 = fmul fast float %1184, 0xBFCC1F85E0000000
  %2070 = fmul fast float %2069, %1785
  %2071 = fadd fast float %2070, 0xBFE1363700000000
  %2072 = fadd fast float %2071, %2064
  %2073 = fsub fast float %2072, %2068
  %2074 = fmul fast float %2063, 0x3FBA6F0D00000000
  %2075 = fmul fast float %2067, 0x3FD0432880000000
  %2076 = fmul fast float %1184, 0xBFEF110800000000
  %2077 = fmul fast float %2076, %1785
  %2078 = fadd fast float %2077, 1.000000e+00
  %2079 = fsub fast float %2078, %2074
  %2080 = fadd fast float %2079, %2075
  %2081 = fdiv fast float %2073, %2080
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fsub fast float %2082, %1184
  %2084 = fmul fast float %2083, %2019
  %2085 = fadd fast float %2084, %1184
  %2086 = fmul fast float %2022, %1888
  %2087 = fadd fast float %2086, %1186
  %2088 = fmul fast float %2025, %1885
  %2089 = fmul fast float %2025, %1886
  %2090 = fmul fast float %2025, %1887
  %2091 = fadd fast float %2088, %1176
  %2092 = fadd fast float %2089, %1177
  %2093 = fadd fast float %2090, %1178
  br label %2116

; <label>:2094                                    ; preds = %2052
  %2095 = icmp eq i32 %2008, 8
  br i1 %2095, label %2096, label %2116

; <label>:2096                                    ; preds = %2094
  %2097 = fmul fast float %2013, %1786
  %2098 = fmul fast float %2013, %1787
  %2099 = fadd fast float %2097, %1171
  %2100 = fadd fast float %2098, %1172
  %2101 = call float @dx.op.binary.f32(i32 36, float %1185, float %1788)  ; FMin(a,b)
  %2102 = fsub fast float %2101, %1185
  %2103 = fmul fast float %2102, %2016
  %2104 = fadd fast float %2103, %1185
  %2105 = fsub fast float %1785, %1184
  %2106 = fmul fast float %2019, %2105
  %2107 = fadd fast float %2106, %1184
  %2108 = fmul fast float %2022, %1888
  %2109 = fadd fast float %2108, %1186
  %2110 = fmul fast float %2025, %1885
  %2111 = fmul fast float %2025, %1886
  %2112 = fmul fast float %2025, %1887
  %2113 = fadd fast float %2110, %1176
  %2114 = fadd fast float %2111, %1177
  %2115 = fadd fast float %2112, %1178
  br label %2116

; <label>:2116                                    ; preds = %2096, %2094, %2054, %2027, %1999, %1484, %1188, %1170
  %2117 = phi float [ %1171, %1999 ], [ %1171, %1484 ], [ %1171, %1170 ], [ %2099, %2096 ], [ %1171, %2094 ], [ %2057, %2054 ], [ %2032, %2027 ], [ %1171, %1188 ]
  %2118 = phi float [ %1172, %1999 ], [ %1172, %1484 ], [ %1172, %1170 ], [ %2100, %2096 ], [ %1172, %2094 ], [ %2058, %2054 ], [ %2033, %2027 ], [ %1172, %1188 ]
  %2119 = phi float [ %2000, %1999 ], [ %1173, %1484 ], [ %1173, %1170 ], [ %2000, %2096 ], [ %2000, %2094 ], [ %2000, %2054 ], [ %2000, %2027 ], [ %1173, %1188 ]
  %2120 = phi float [ %2001, %1999 ], [ %1174, %1484 ], [ %1174, %1170 ], [ %2001, %2096 ], [ %2001, %2094 ], [ %2001, %2054 ], [ %2001, %2027 ], [ %1174, %1188 ]
  %2121 = phi float [ %2002, %1999 ], [ %1175, %1484 ], [ %1175, %1170 ], [ %2002, %2096 ], [ %2002, %2094 ], [ %2002, %2054 ], [ %2002, %2027 ], [ %1175, %1188 ]
  %2122 = phi float [ %1176, %1999 ], [ %1176, %1484 ], [ %1176, %1170 ], [ %2113, %2096 ], [ %1176, %2094 ], [ %2091, %2054 ], [ %2049, %2027 ], [ %1176, %1188 ]
  %2123 = phi float [ %1177, %1999 ], [ %1177, %1484 ], [ %1177, %1170 ], [ %2114, %2096 ], [ %1177, %2094 ], [ %2092, %2054 ], [ %2050, %2027 ], [ %1177, %1188 ]
  %2124 = phi float [ %1178, %1999 ], [ %1178, %1484 ], [ %1178, %1170 ], [ %2115, %2096 ], [ %1178, %2094 ], [ %2093, %2054 ], [ %2051, %2027 ], [ %1178, %1188 ]
  %2125 = phi float [ %2003, %1999 ], [ %1179, %1484 ], [ %1179, %1170 ], [ %2003, %2096 ], [ %2003, %2094 ], [ %2003, %2054 ], [ %2003, %2027 ], [ %1179, %1188 ]
  %2126 = phi float [ %2004, %1999 ], [ %1180, %1484 ], [ %1180, %1170 ], [ %2004, %2096 ], [ %2004, %2094 ], [ %2004, %2054 ], [ %2004, %2027 ], [ %1180, %1188 ]
  %2127 = phi float [ %2005, %1999 ], [ %1181, %1484 ], [ %1181, %1170 ], [ %2005, %2096 ], [ %2005, %2094 ], [ %2005, %2054 ], [ %2005, %2027 ], [ %1181, %1188 ]
  %2128 = phi float [ %2006, %1999 ], [ %1182, %1484 ], [ %1182, %1170 ], [ %2006, %2096 ], [ %2006, %2094 ], [ %2006, %2054 ], [ %2006, %2027 ], [ %1182, %1188 ]
  %2129 = phi float [ %1184, %1999 ], [ %1184, %1484 ], [ %1184, %1170 ], [ %2107, %2096 ], [ %1184, %2094 ], [ %2085, %2054 ], [ %2039, %2027 ], [ %1184, %1188 ]
  %2130 = phi float [ %1185, %1999 ], [ %1185, %1484 ], [ %1185, %1170 ], [ %2104, %2096 ], [ %1185, %2094 ], [ %2062, %2054 ], [ %2036, %2027 ], [ %1185, %1188 ]
  %2131 = phi float [ %1186, %1999 ], [ %1186, %1484 ], [ %1186, %1170 ], [ %2109, %2096 ], [ %1186, %2094 ], [ %2087, %2054 ], [ %2042, %2027 ], [ %1186, %1188 ]
  %2132 = phi float [ %2007, %1999 ], [ %1187, %1484 ], [ %1187, %1170 ], [ %2007, %2096 ], [ %2007, %2094 ], [ %2007, %2054 ], [ %2007, %2027 ], [ %1187, %1188 ]
  br i1 %403, label %3061, label %2133

; <label>:2133                                    ; preds = %2116
  %2134 = icmp ult i32 %459, 3
  %2135 = add i32 %54, 56
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %54, 60
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = or i32 %2140, %2137
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %3061, label %2143

; <label>:2143                                    ; preds = %2133
  %2144 = and i32 %2137, 262144
  %2145 = icmp ne i32 %2144, 0
  %2146 = select i1 %2145, float %57, float 1.000000e+00
  %2147 = select i1 %2145, float %58, float 0.000000e+00
  %2148 = select i1 %2145, float %59, float 0.000000e+00
  %2149 = select i1 %2145, float %60, float 1.000000e+00
  %2150 = select i1 %2145, float %61, float %82
  %2151 = select i1 %2145, float %62, float %83
  %2152 = add i32 %54, 316
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = lshr i32 %2154, 16
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = fmul fast float %2156, 0x3F50624DE0000000
  %2158 = add i32 %54, 120
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = lshr i32 %2160, 16
  %2162 = and i32 %2161, 255
  %2163 = lshr i32 %2160, 24
  %2164 = add i32 %54, 324
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 65535
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = lshr i32 %2166, 16
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = add i32 %54, 64
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = lshr i32 %2173, 22
  %2175 = shl nuw nsw i32 %2174, 5
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = shl i32 %2173, 4
  %2178 = and i32 %2177, 32752
  %2179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2178)  ; LegacyF16ToF32(value)
  %2180 = lshr i32 %2173, 7
  %2181 = and i32 %2180, 32752
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 3
  %2185 = fmul fast float %2184, 1.000000e+03
  %2186 = fmul fast float %353, %2185
  %2187 = call float @dx.op.unary.f32(i32 22, float %2186)  ; Frc(value)
  %2188 = fadd fast float %2187, %343
  %2189 = fmul fast float %354, %2185
  %2190 = call float @dx.op.unary.f32(i32 22, float %2189)  ; Frc(value)
  %2191 = fadd fast float %2190, %345
  %2192 = fmul fast float %2157, %2185
  %2193 = call float @dx.op.unary.f32(i32 22, float %2192)  ; Frc(value)
  %2194 = fmul fast float %2193, 0x401921FB60000000
  %2195 = fadd fast float %2194, %2176
  %2196 = call float @dx.op.unary.f32(i32 13, float %2195)  ; Sin(value)
  %2197 = call float @dx.op.unary.f32(i32 12, float %2195)  ; Cos(value)
  %2198 = fsub fast float -0.000000e+00, %2196
  %2199 = fadd fast float %2150, -5.000000e-01
  %2200 = fadd fast float %2151, -5.000000e-01
  %2201 = fmul fast float %2168, %2199
  %2202 = fmul fast float %2170, %2200
  %2203 = fadd fast float %2201, 5.000000e-01
  %2204 = fadd fast float %2202, 5.000000e-01
  %2205 = fmul fast float %2179, %2203
  %2206 = fmul fast float %2182, %2204
  %2207 = fmul fast float %2197, %2205
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2198, float %2206, float %2207)  ; FMad(a,b,c)
  %2209 = fmul fast float %2196, %2205
  %2210 = call float @dx.op.tertiary.f32(i32 46, float %2197, float %2206, float %2209)  ; FMad(a,b,c)
  %2211 = fadd fast float %2188, %2208
  %2212 = fadd fast float %2191, %2210
  %2213 = icmp ugt i32 %2162, 1
  %2214 = icmp ugt i32 %2160, 33554431
  %2215 = or i1 %2214, %2213
  br i1 %2215, label %2216, label %2241

; <label>:2216                                    ; preds = %2143
  %2217 = add i32 %54, 260
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = fmul fast float %2184, %2221
  %2223 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2224 = mul nuw nsw i32 %2162, %2163
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2223, %2225
  %2227 = call float @dx.op.unary.f32(i32 27, float %2226)  ; Round_ni(value)
  %2228 = fptoui float %2227 to i32
  %2229 = urem i32 %2228, %2162
  %2230 = udiv i32 %2228, %2163
  %2231 = call float @dx.op.unary.f32(i32 22, float %2211)  ; Frc(value)
  %2232 = call float @dx.op.unary.f32(i32 22, float %2212)  ; Frc(value)
  %2233 = uitofp i32 %2229 to float
  %2234 = uitofp i32 %2230 to float
  %2235 = fadd fast float %2231, %2233
  %2236 = fadd fast float %2232, %2234
  %2237 = uitofp i32 %2162 to float
  %2238 = uitofp i32 %2163 to float
  %2239 = fdiv fast float %2235, %2237
  %2240 = fdiv fast float %2236, %2238
  br label %2241

; <label>:2241                                    ; preds = %2216, %2143
  %2242 = phi float [ %2239, %2216 ], [ %2211, %2143 ]
  %2243 = phi float [ %2240, %2216 ], [ %2212, %2143 ]
  %2244 = and i32 %2137, 16777216
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2355, label %2246

; <label>:2246                                    ; preds = %2241
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2251 = fadd fast float %2248, %155
  %2252 = fadd fast float %2249, %156
  %2253 = fadd fast float %2250, %157
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = icmp eq i32 %55, 65535
  br i1 %2257, label %2352, label %2258

; <label>:2258                                    ; preds = %2246
  %2259 = lshr i32 %55, 1
  %2260 = shl i32 %2259, 2
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %55, 1
  %2264 = icmp ne i32 %2263, 0
  %2265 = lshr i32 %2262, 16
  %2266 = and i32 %2262, 65535
  %2267 = select i1 %2264, i32 %2265, i32 %2266
  %2268 = icmp eq i32 %2267, 65535
  br i1 %2268, label %2348, label %2269

; <label>:2269                                    ; preds = %2258
  %2270 = mul nuw nsw i32 %2267, 40
  %2271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.ResRet.f32 %2271, 2
  %2275 = add nuw nsw i32 %2270, 12
  %2276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.ResRet.f32 %2276, 1
  %2279 = extractvalue %dx.types.ResRet.f32 %2276, 2
  %2280 = add nuw nsw i32 %2270, 24
  %2281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = add nuw nsw i32 %2270, 36
  %2286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = fsub fast float %2251, %2272
  %2289 = fsub fast float %2252, %2273
  %2290 = fsub fast float %2253, %2274
  %2291 = fmul fast float %2287, %2288
  %2292 = fmul fast float %2287, %2289
  %2293 = fmul fast float %2287, %2290
  %2294 = call float @dx.op.unary.f32(i32 27, float %2291)  ; Round_ni(value)
  %2295 = call float @dx.op.unary.f32(i32 27, float %2292)  ; Round_ni(value)
  %2296 = call float @dx.op.unary.f32(i32 27, float %2293)  ; Round_ni(value)
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = fmul fast float %2297, %2277
  %2301 = fmul fast float %2298, %2278
  %2302 = fmul fast float %2299, %2279
  %2303 = shl i32 %55, 2
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2309 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2310 = call float @dx.op.unary.f32(i32 22, float %2302)  ; Frc(value)
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2307, %dx.types.Handle %49, float %2308, float %2309, float %2310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = fmul fast float %2312, 1.023000e+03
  %2316 = fmul fast float %2313, 1.023000e+03
  %2317 = fmul fast float %2314, 1.023000e+03
  %2318 = fadd fast float %2315, 5.000000e-01
  %2319 = fadd fast float %2316, 5.000000e-01
  %2320 = fadd fast float %2317, 5.000000e-01
  %2321 = call float @dx.op.unary.f32(i32 27, float %2318)  ; Round_ni(value)
  %2322 = call float @dx.op.unary.f32(i32 27, float %2319)  ; Round_ni(value)
  %2323 = call float @dx.op.unary.f32(i32 27, float %2320)  ; Round_ni(value)
  %2324 = fsub fast float %2291, %2294
  %2325 = fsub fast float %2292, %2295
  %2326 = fsub fast float %2293, %2296
  %2327 = fmul fast float %2324, 7.500000e-01
  %2328 = fmul fast float %2325, 7.500000e-01
  %2329 = fmul fast float %2326, 7.500000e-01
  %2330 = fadd fast float %2294, 1.250000e-01
  %2331 = fadd fast float %2330, %2327
  %2332 = fadd fast float %2331, %2321
  %2333 = fadd fast float %2295, 1.250000e-01
  %2334 = fadd fast float %2333, %2328
  %2335 = fadd fast float %2334, %2322
  %2336 = fadd fast float %2296, 1.250000e-01
  %2337 = fadd fast float %2336, %2329
  %2338 = fadd fast float %2337, %2323
  %2339 = fmul fast float %2332, %2282
  %2340 = fmul fast float %2335, %2283
  %2341 = fmul fast float %2338, %2284
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2345, %dx.types.Handle %47, float %2339, float %2340, float %2341, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  br label %2348

; <label>:2348                                    ; preds = %2269, %2258
  %2349 = phi float [ %2347, %2269 ], [ -1.000000e+00, %2258 ]
  %2350 = fadd fast float %2349, %2256
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br label %2352

; <label>:2352                                    ; preds = %2348, %2246
  %2353 = phi float [ %2351, %2348 ], [ %2256, %2246 ]
  %2354 = fmul fast float %2353, %455
  br label %2355

; <label>:2355                                    ; preds = %2352, %2241
  %2356 = phi float [ %2354, %2352 ], [ %455, %2241 ]
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 256
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2407, label %2361

; <label>:2361                                    ; preds = %2355
  %2362 = add i32 %54, 432
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %2364, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2366, %dx.types.Handle %97, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = add i32 %54, 132
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = shl i32 %2371, 4
  %2373 = and i32 %2372, 32752
  %2374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2373)  ; LegacyF16ToF32(value)
  %2375 = lshr i32 %2371, 7
  %2376 = and i32 %2375, 32752
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = fsub fast float 1.000000e+00, %2356
  %2379 = call float @dx.op.binary.f32(i32 35, float %2378, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2380 = bitcast float %2356 to i32
  %2381 = sitofp i32 %2380 to float
  %2382 = fadd fast float %2381, 0xC1CFBF8940000000
  %2383 = fmul fast float %2377, %2382
  %2384 = fadd fast float %2383, 0x41CFBF8940000000
  %2385 = fptosi float %2384 to i32
  %2386 = bitcast i32 %2385 to float
  %2387 = bitcast float %2379 to i32
  %2388 = sitofp i32 %2387 to float
  %2389 = fadd fast float %2388, 0xC1CFBF8940000000
  %2390 = fmul fast float %2389, %2377
  %2391 = fadd fast float %2390, 0x41CFBF8940000000
  %2392 = fptosi float %2391 to i32
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2386, %2374
  %2395 = fmul fast float %2393, %2374
  %2396 = fsub fast float %2379, %2394
  %2397 = fadd fast float %2395, %2379
  %2398 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2399 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2400 = fsub fast float %2368, %2398
  %2401 = fsub fast float %2399, %2398
  %2402 = bitcast float %2401 to i32
  %2403 = sub nsw i32 2129859010, %2402
  %2404 = bitcast i32 %2403 to float
  %2405 = fmul fast float %2404, %2400
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  br label %2407

; <label>:2407                                    ; preds = %2361, %2355
  %2408 = phi float [ %2406, %2361 ], [ %2356, %2355 ]
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 128
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %2429, label %2413

; <label>:2413                                    ; preds = %2407
  %2414 = add i32 %54, 416
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %2416, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2418, %dx.types.Handle %97, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 524288
  %2424 = icmp ne i32 %2423, 0
  %2425 = fcmp fast ogt float %2420, 0x3FE0101020000000
  %2426 = select i1 %2425, float 1.000000e+00, float 0.000000e+00
  %2427 = select i1 %2424, float %2426, float %2420
  %2428 = fmul fast float %2427, %2408
  br label %2429

; <label>:2429                                    ; preds = %2413, %2407
  %2430 = phi float [ %2428, %2413 ], [ %2408, %2407 ]
  %2431 = fcmp fast ult float %2430, 0x3F70101020000000
  br i1 %2431, label %3061, label %2432

; <label>:2432                                    ; preds = %2429
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 16
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2635, label %2437

; <label>:2437                                    ; preds = %2432
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = add i32 %54, 368
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2442, 0
  %2444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2444, %dx.types.Handle %96, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = extractvalue %dx.types.ResRet.f32 %2445, 3
  %2450 = and i32 %2439, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = lshr i32 %2439, 8
  %2453 = and i32 %2452, 255
  %2454 = uitofp i32 %2453 to float
  %2455 = fmul fast float %2449, %2451
  %2456 = fadd fast float %2455, %2454
  %2457 = fmul fast float %2456, 0x3F70101000000000
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 512
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2470, label %2462

; <label>:2462                                    ; preds = %2437
  %2463 = add i32 %54, 448
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = add i32 %2465, 0
  %2467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2467, %dx.types.Handle %97, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  br label %2470

; <label>:2470                                    ; preds = %2462, %2437
  %2471 = phi float [ %2469, %2462 ], [ 1.000000e+00, %2437 ]
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 33554432
  %2475 = icmp eq i32 %2474, 0
  br i1 %2475, label %2582, label %2476

; <label>:2476                                    ; preds = %2470
  %2477 = add i32 %54, 256
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 65535
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = lshr i32 %2479, 16
  %2483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2482)  ; LegacyF16ToF32(value)
  %2484 = add i32 %54, 260
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 65535
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = lshr i32 %2490, 24
  %2492 = uitofp i32 %2491 to float
  %2493 = fmul fast float %2492, 0x3F70101020000000
  %2494 = and i32 %2490, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = lshr i32 %2490, 8
  %2498 = and i32 %2497, 255
  %2499 = uitofp i32 %2498 to float
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = lshr i32 %2490, 16
  %2502 = and i32 %2501, 255
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2503, 0x3F70101020000000
  %2505 = add i32 %54, 252
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = lshr i32 %2507, 24
  %2509 = uitofp i32 %2508 to float
  %2510 = fmul fast float %2509, 0x3F70101020000000
  %2511 = and i32 %2507, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = lshr i32 %2507, 8
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = fmul fast float %2516, 0x3F70101020000000
  %2518 = lshr i32 %2507, 16
  %2519 = and i32 %2518, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F70101020000000
  %2522 = bitcast float %2446 to i32
  %2523 = ashr i32 %2522, 1
  %2524 = sub nsw i32 1597463174, %2523
  %2525 = bitcast i32 %2524 to float
  %2526 = fmul fast float %2446, 5.000000e-01
  %2527 = fmul fast float %2525, %2525
  %2528 = fmul fast float %2527, %2526
  %2529 = fsub fast float 1.500000e+00, %2528
  %2530 = fmul fast float %2525, %2446
  %2531 = fmul fast float %2530, %2529
  %2532 = bitcast float %2447 to i32
  %2533 = ashr i32 %2532, 1
  %2534 = sub nsw i32 1597463174, %2533
  %2535 = bitcast i32 %2534 to float
  %2536 = fmul fast float %2447, 5.000000e-01
  %2537 = fmul fast float %2535, %2535
  %2538 = fmul fast float %2537, %2536
  %2539 = fsub fast float 1.500000e+00, %2538
  %2540 = fmul fast float %2535, %2447
  %2541 = fmul fast float %2540, %2539
  %2542 = bitcast float %2448 to i32
  %2543 = ashr i32 %2542, 1
  %2544 = sub nsw i32 1597463174, %2543
  %2545 = bitcast i32 %2544 to float
  %2546 = fmul fast float %2448, 5.000000e-01
  %2547 = fmul fast float %2545, %2545
  %2548 = fmul fast float %2547, %2546
  %2549 = fsub fast float 1.500000e+00, %2548
  %2550 = fmul fast float %2545, %2448
  %2551 = fmul fast float %2550, %2549
  %2552 = fsub fast float %2531, %2513
  %2553 = fsub fast float %2541, %2517
  %2554 = fsub fast float %2551, %2521
  %2555 = fmul fast float %2552, %2481
  %2556 = fmul fast float %2553, %2483
  %2557 = fmul fast float %2554, %2488
  %2558 = fadd fast float %2555, %2496
  %2559 = fadd fast float %2556, %2500
  %2560 = fadd fast float %2557, %2504
  %2561 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2562 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2563 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2564 = fmul fast float %2561, %2561
  %2565 = fmul fast float %2562, %2562
  %2566 = fmul fast float %2563, %2563
  %2567 = fsub fast float %2564, %2446
  %2568 = fsub fast float %2565, %2447
  %2569 = fsub fast float %2566, %2448
  %2570 = fmul fast float %2567, %2471
  %2571 = fmul fast float %2568, %2471
  %2572 = fmul fast float %2569, %2471
  %2573 = fadd fast float %2570, %2446
  %2574 = fadd fast float %2571, %2447
  %2575 = fadd fast float %2572, %2448
  %2576 = fadd fast float %2493, %2457
  %2577 = fsub fast float %2576, %2510
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fsub fast float %2578, %2457
  %2580 = fmul fast float %2579, %2471
  %2581 = fadd fast float %2580, %2457
  br label %2635

; <label>:2582                                    ; preds = %2470
  %2583 = and i32 %2473, 134217728
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %2619, label %2585

; <label>:2585                                    ; preds = %2582
  %2586 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2587 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2588 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2589 = fadd fast float %2586, -5.000000e-01
  %2590 = fadd fast float %2587, -5.000000e-01
  %2591 = fadd fast float %2588, -5.000000e-01
  %2592 = fmul fast float %2589, %2471
  %2593 = fmul fast float %2590, %2471
  %2594 = fmul fast float %2591, %2471
  %2595 = fadd fast float %2592, 5.000000e-01
  %2596 = fadd fast float %2593, 5.000000e-01
  %2597 = fadd fast float %2594, 5.000000e-01
  %2598 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2599 = call float @dx.op.unary.f32(i32 24, float %2447)  ; Sqrt(value)
  %2600 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2601 = fmul fast float %2595, 2.000000e+00
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2602, %2598
  %2604 = fadd fast float %2603, %2601
  %2605 = fmul fast float %2604, %2598
  %2606 = fmul fast float %2596, 2.000000e+00
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2607, %2599
  %2609 = fadd fast float %2608, %2606
  %2610 = fmul fast float %2609, %2599
  %2611 = fmul fast float %2597, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = fmul fast float %2612, %2600
  %2614 = fadd fast float %2613, %2611
  %2615 = fmul fast float %2614, %2600
  %2616 = fmul fast float %2605, %2605
  %2617 = fmul fast float %2610, %2610
  %2618 = fmul fast float %2615, %2615
  br label %2635

; <label>:2619                                    ; preds = %2582
  %2620 = fmul fast float %330, %330
  %2621 = fmul fast float %334, %334
  %2622 = fmul fast float %338, %338
  %2623 = fadd fast float %2620, -1.000000e+00
  %2624 = fadd fast float %2621, -1.000000e+00
  %2625 = fadd fast float %2622, -1.000000e+00
  %2626 = fmul fast float %2471, %2623
  %2627 = fmul fast float %2471, %2624
  %2628 = fmul fast float %2471, %2625
  %2629 = fadd fast float %2626, 1.000000e+00
  %2630 = fadd fast float %2627, 1.000000e+00
  %2631 = fadd fast float %2628, 1.000000e+00
  %2632 = fmul fast float %2629, %2446
  %2633 = fmul fast float %2630, %2447
  %2634 = fmul fast float %2631, %2448
  br label %2635

; <label>:2635                                    ; preds = %2619, %2585, %2476, %2432
  %2636 = phi float [ %2581, %2476 ], [ %2457, %2585 ], [ %2457, %2619 ], [ 0x3FA23C0BE0000000, %2432 ]
  %2637 = phi float [ %2573, %2476 ], [ %2616, %2585 ], [ %2632, %2619 ], [ 1.000000e+00, %2432 ]
  %2638 = phi float [ %2574, %2476 ], [ %2617, %2585 ], [ %2633, %2619 ], [ 1.000000e+00, %2432 ]
  %2639 = phi float [ %2575, %2476 ], [ %2618, %2585 ], [ %2634, %2619 ], [ 1.000000e+00, %2432 ]
  %2640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.i32 %2640, 1
  %2642 = and i32 %2641, 1
  %2643 = icmp ne i32 %2642, 0
  %2644 = add i32 %54, 356
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 32
  %2648 = icmp ne i32 %2647, 0
  %2649 = and i1 %2643, %2648
  %2650 = select i1 %2649, float 1.000000e+00, float %2637
  %2651 = select i1 %2649, float 0x3FD3333340000000, float %2638
  %2652 = select i1 %2649, float 0x3FD3333340000000, float %2639
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 32
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2729, label %2657

; <label>:2657                                    ; preds = %2635
  %2658 = add i32 %54, 124
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = add i32 %54, 384
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = add i32 %2663, 0
  %2665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2665, %dx.types.Handle %96, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.ResRet.f32 %2666, 3
  %2671 = and i32 %2660, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = lshr i32 %2660, 8
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = lshr i32 %2660, 16
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101000000000
  %2680 = fmul fast float %2667, %2672
  %2681 = fadd fast float %2680, %2675
  %2682 = fmul fast float %2681, 0x3F70101000000000
  %2683 = fadd fast float %2668, -5.000000e-01
  %2684 = fadd fast float %2670, -5.000000e-01
  %2685 = fmul fast float %2683, %2679
  %2686 = fmul fast float %2684, %2679
  %2687 = fadd fast float %2685, 5.000000e-01
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fmul fast float %2687, 2.000000e+00
  %2690 = fadd fast float %2689, -1.000000e+00
  %2691 = fmul fast float %2688, 2.000000e+00
  %2692 = fadd fast float %2691, -1.000000e+00
  %2693 = fadd fast float %2690, %2692
  %2694 = fmul fast float %2693, 5.000000e-01
  %2695 = fsub fast float %2690, %2692
  %2696 = fmul fast float %2695, 5.000000e-01
  %2697 = call float @dx.op.unary.f32(i32 6, float %2694)  ; FAbs(value)
  %2698 = fsub fast float 1.000000e+00, %2697
  %2699 = call float @dx.op.unary.f32(i32 6, float %2696)  ; FAbs(value)
  %2700 = fsub fast float %2698, %2699
  %2701 = call float @dx.op.dot3.f32(i32 55, float %2694, float %2696, float %2700, float %2694, float %2696, float %2700)  ; Dot3(ax,ay,az,bx,by,bz)
  %2702 = call float @dx.op.unary.f32(i32 25, float %2701)  ; Rsqrt(value)
  %2703 = fmul fast float %2694, %2702
  %2704 = fmul fast float %2696, %2702
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 67108864
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2725, label %2709

; <label>:2709                                    ; preds = %2657
  %2710 = add i32 %54, 312
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 65535
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 65535
  %2718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2717)  ; LegacyF16ToF32(value)
  %2719 = lshr i32 %2712, 16
  %2720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2719)  ; LegacyF16ToF32(value)
  %2721 = fsub fast float %2682, %2720
  %2722 = fmul fast float %2721, %2714
  %2723 = fadd fast float %2722, %2718
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  br label %2725

; <label>:2725                                    ; preds = %2709, %2657
  %2726 = phi float [ %2724, %2709 ], [ %2682, %2657 ]
  %2727 = call float @dx.op.dot2.f32(i32 54, float %2703, float %2704, float %2146, float %2147)  ; Dot2(ax,ay,bx,by)
  %2728 = call float @dx.op.dot2.f32(i32 54, float %2703, float %2704, float %2148, float %2149)  ; Dot2(ax,ay,bx,by)
  br label %2729

; <label>:2729                                    ; preds = %2725, %2635
  %2730 = phi float [ %2726, %2725 ], [ 0x3FD6666660000000, %2635 ]
  %2731 = phi float [ %2727, %2725 ], [ 0.000000e+00, %2635 ]
  %2732 = phi float [ %2728, %2725 ], [ 0.000000e+00, %2635 ]
  %2733 = phi float [ %2669, %2725 ], [ 1.000000e+00, %2635 ]
  %2734 = add i32 %54, 192
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = lshr i32 %2736, 22
  %2738 = shl nuw nsw i32 %2737, 5
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 64
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2777, label %2744

; <label>:2744                                    ; preds = %2729
  %2745 = add i32 %54, 400
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = add i32 %2747, 0
  %2749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %2751, 131072
  %2753 = icmp eq i32 %2752, 0
  %2754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2749, %dx.types.Handle %96, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2758 = fmul fast float %2755, %318
  %2759 = fmul fast float %2756, %321
  %2760 = fmul fast float %2757, %324
  br i1 %2753, label %2767, label %2761

; <label>:2761                                    ; preds = %2744
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = fmul fast float %2763, %2758
  %2765 = fmul fast float %2763, %2759
  %2766 = fmul fast float %2763, %2760
  br label %2767

; <label>:2767                                    ; preds = %2761, %2744
  %2768 = phi float [ %2764, %2761 ], [ %2758, %2744 ]
  %2769 = phi float [ %2765, %2761 ], [ %2759, %2744 ]
  %2770 = phi float [ %2766, %2761 ], [ %2760, %2744 ]
  %2771 = fmul fast float %2768, %2739
  %2772 = select i1 %217, float %2771, float %2768
  %2773 = call float @dx.op.dot3.f32(i32 55, float %2772, float %2769, float %2770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2774 = select i1 %217, float 0.000000e+00, float %2768
  %2775 = select i1 %217, float %2773, float %2769
  %2776 = select i1 %217, float 0.000000e+00, float %2770
  br label %2777

; <label>:2777                                    ; preds = %2767, %2729
  %2778 = phi float [ %2774, %2767 ], [ 0.000000e+00, %2729 ]
  %2779 = phi float [ %2775, %2767 ], [ 0.000000e+00, %2729 ]
  %2780 = phi float [ %2776, %2767 ], [ 0.000000e+00, %2729 ]
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = and i32 %2782, 10240
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2829, label %2785

; <label>:2785                                    ; preds = %2777
  %2786 = add i32 %54, 464
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2790, %dx.types.Handle %97, float %2242, float %2243, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 3
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = and i32 %2795, 1048576
  %2797 = icmp ne i32 %2796, 0
  %2798 = and i32 %2795, 8192
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2815, label %2800

; <label>:2800                                    ; preds = %2785
  %2801 = extractvalue %dx.types.ResRet.f32 %2791, 2
  %2802 = select i1 %2797, float %2801, float %2792
  %2803 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2804 = select i1 %2797, float %2803, float %2792
  %2805 = add i32 %54, 128
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = lshr i32 %2807, 16
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F80101020000000
  %2812 = fmul fast float %2811, %2804
  %2813 = fmul fast float %2811, %2792
  %2814 = fmul fast float %2811, %2802
  br label %2815

; <label>:2815                                    ; preds = %2800, %2785
  %2816 = phi float [ %2812, %2800 ], [ 0.000000e+00, %2785 ]
  %2817 = phi float [ %2813, %2800 ], [ 0.000000e+00, %2785 ]
  %2818 = phi float [ %2814, %2800 ], [ 0.000000e+00, %2785 ]
  %2819 = and i32 %2795, 2048
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2829, label %2821

; <label>:2821                                    ; preds = %2815
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = shl i32 %2823, 4
  %2825 = and i32 %2824, 32752
  %2826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2825)  ; LegacyF16ToF32(value)
  %2827 = fmul fast float %2826, %2793
  %2828 = call float @dx.op.binary.f32(i32 35, float %2827, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2829

; <label>:2829                                    ; preds = %2821, %2815, %2777
  %2830 = phi float [ %2816, %2821 ], [ %2816, %2815 ], [ 0.000000e+00, %2777 ]
  %2831 = phi float [ %2817, %2821 ], [ %2817, %2815 ], [ 0.000000e+00, %2777 ]
  %2832 = phi float [ %2818, %2821 ], [ %2818, %2815 ], [ 0.000000e+00, %2777 ]
  %2833 = phi float [ %2828, %2821 ], [ 0x3F70101020000000, %2815 ], [ 0x3F70101020000000, %2777 ]
  %2834 = add i32 %54, 128
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 255
  %2838 = uitofp i32 %2837 to float
  %2839 = lshr i32 %2836, 8
  %2840 = and i32 %2839, 255
  %2841 = uitofp i32 %2840 to float
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2650, float %2651, float %2652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = fmul fast float %2841, %2842
  %2844 = fadd fast float %2843, %2838
  %2845 = fmul fast float %2844, 0x3F70101020000000
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  br i1 %2134, label %2847, label %2855

; <label>:2847                                    ; preds = %2829
  %2848 = fsub fast float 1.000000e+00, %2430
  %2849 = fmul fast float %2848, %2125
  %2850 = fmul fast float %2848, %2126
  %2851 = fmul fast float %2848, %2127
  %2852 = fmul fast float %2848, %2119
  %2853 = fmul fast float %2848, %2120
  %2854 = fmul fast float %2848, %2121
  br label %2855

; <label>:2855                                    ; preds = %2847, %2829
  %2856 = phi float [ %2852, %2847 ], [ %2119, %2829 ]
  %2857 = phi float [ %2853, %2847 ], [ %2120, %2829 ]
  %2858 = phi float [ %2854, %2847 ], [ %2121, %2829 ]
  %2859 = phi float [ %2849, %2847 ], [ %2125, %2829 ]
  %2860 = phi float [ %2850, %2847 ], [ %2126, %2829 ]
  %2861 = phi float [ %2851, %2847 ], [ %2127, %2829 ]
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = and i32 %2863, 3
  %2865 = icmp eq i32 %2864, 3
  br i1 %2865, label %2944, label %2866

; <label>:2866                                    ; preds = %2855
  %2867 = and i32 %2863, 16
  %2868 = icmp ne i32 %2867, 0
  %2869 = select i1 %2868, float %2430, float 0.000000e+00
  %2870 = icmp eq i32 %2864, 0
  br i1 %2870, label %2871, label %2899

; <label>:2871                                    ; preds = %2866
  %2872 = and i32 %2863, 64
  %2873 = icmp ne i32 %2872, 0
  %2874 = select i1 %2873, float %2430, float 0.000000e+00
  %2875 = fsub fast float %2650, %2859
  %2876 = fsub fast float %2651, %2860
  %2877 = fsub fast float %2652, %2861
  %2878 = fmul fast float %2869, %2875
  %2879 = fmul fast float %2869, %2876
  %2880 = fmul fast float %2869, %2877
  %2881 = fadd fast float %2878, %2859
  %2882 = fadd fast float %2879, %2860
  %2883 = fadd fast float %2880, %2861
  %2884 = fsub fast float %2636, %2128
  %2885 = fmul fast float %2869, %2884
  %2886 = fadd fast float %2885, %2128
  %2887 = fsub fast float %2778, %2856
  %2888 = fsub fast float %2779, %2857
  %2889 = fsub fast float %2780, %2858
  %2890 = fmul fast float %2874, %2887
  %2891 = fmul fast float %2874, %2888
  %2892 = fmul fast float %2874, %2889
  %2893 = fadd fast float %2890, %2856
  %2894 = fadd fast float %2891, %2857
  %2895 = fadd fast float %2892, %2858
  %2896 = fsub fast float %2846, %2132
  %2897 = fmul fast float %2869, %2896
  %2898 = fadd fast float %2897, %2132
  br label %2944

; <label>:2899                                    ; preds = %2866
  %2900 = icmp eq i32 %2864, 1
  br i1 %2900, label %2901, label %2914

; <label>:2901                                    ; preds = %2899
  %2902 = fadd fast float %2650, -1.000000e+00
  %2903 = fadd fast float %2651, -1.000000e+00
  %2904 = fadd fast float %2652, -1.000000e+00
  %2905 = fmul fast float %2869, %2902
  %2906 = fmul fast float %2869, %2903
  %2907 = fmul fast float %2869, %2904
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fadd fast float %2906, 1.000000e+00
  %2910 = fadd fast float %2907, 1.000000e+00
  %2911 = fmul fast float %2908, %2859
  %2912 = fmul fast float %2909, %2860
  %2913 = fmul fast float %2910, %2861
  br label %2944

; <label>:2914                                    ; preds = %2899
  %2915 = icmp eq i32 %2864, 2
  br i1 %2915, label %2916, label %2944

; <label>:2916                                    ; preds = %2914
  %2917 = call float @dx.op.unary.f32(i32 24, float %2650)  ; Sqrt(value)
  %2918 = call float @dx.op.unary.f32(i32 24, float %2651)  ; Sqrt(value)
  %2919 = call float @dx.op.unary.f32(i32 24, float %2652)  ; Sqrt(value)
  %2920 = fadd fast float %2917, -5.000000e-01
  %2921 = fadd fast float %2918, -5.000000e-01
  %2922 = fadd fast float %2919, -5.000000e-01
  %2923 = fmul fast float %2920, %2869
  %2924 = fmul fast float %2921, %2869
  %2925 = fmul fast float %2922, %2869
  %2926 = fadd fast float %2923, 5.000000e-01
  %2927 = fadd fast float %2924, 5.000000e-01
  %2928 = fadd fast float %2925, 5.000000e-01
  %2929 = fmul fast float %2926, 2.000000e+00
  %2930 = fsub fast float 1.000000e+00, %2929
  %2931 = fmul fast float %2930, %2859
  %2932 = fadd fast float %2931, %2929
  %2933 = fmul fast float %2932, %2859
  %2934 = fmul fast float %2927, 2.000000e+00
  %2935 = fsub fast float 1.000000e+00, %2934
  %2936 = fmul fast float %2935, %2860
  %2937 = fadd fast float %2936, %2934
  %2938 = fmul fast float %2937, %2860
  %2939 = fmul fast float %2928, 2.000000e+00
  %2940 = fsub fast float 1.000000e+00, %2939
  %2941 = fmul fast float %2940, %2861
  %2942 = fadd fast float %2941, %2939
  %2943 = fmul fast float %2942, %2861
  br label %2944

; <label>:2944                                    ; preds = %2916, %2914, %2901, %2871, %2855
  %2945 = phi float [ %2856, %2855 ], [ %2856, %2916 ], [ %2856, %2914 ], [ %2856, %2901 ], [ %2893, %2871 ]
  %2946 = phi float [ %2857, %2855 ], [ %2857, %2916 ], [ %2857, %2914 ], [ %2857, %2901 ], [ %2894, %2871 ]
  %2947 = phi float [ %2858, %2855 ], [ %2858, %2916 ], [ %2858, %2914 ], [ %2858, %2901 ], [ %2895, %2871 ]
  %2948 = phi float [ %2859, %2855 ], [ %2933, %2916 ], [ %2859, %2914 ], [ %2911, %2901 ], [ %2881, %2871 ]
  %2949 = phi float [ %2860, %2855 ], [ %2938, %2916 ], [ %2860, %2914 ], [ %2912, %2901 ], [ %2882, %2871 ]
  %2950 = phi float [ %2861, %2855 ], [ %2943, %2916 ], [ %2861, %2914 ], [ %2913, %2901 ], [ %2883, %2871 ]
  %2951 = phi float [ %2128, %2855 ], [ %2128, %2916 ], [ %2128, %2914 ], [ %2128, %2901 ], [ %2886, %2871 ]
  %2952 = phi float [ %2132, %2855 ], [ %2132, %2916 ], [ %2132, %2914 ], [ %2132, %2901 ], [ %2898, %2871 ]
  %2953 = and i32 %2863, 12
  %2954 = icmp eq i32 %2953, 12
  br i1 %2954, label %3061, label %2955

; <label>:2955                                    ; preds = %2944
  %2956 = and i32 %2863, 2097184
  %2957 = icmp eq i32 %2956, 2097184
  %2958 = select i1 %2957, float %2430, float 0.000000e+00
  %2959 = and i32 %2863, 4194336
  %2960 = icmp eq i32 %2959, 4194336
  %2961 = select i1 %2960, float %2430, float 0.000000e+00
  %2962 = and i32 %2863, 8388640
  %2963 = icmp eq i32 %2962, 8388640
  %2964 = select i1 %2963, float %2430, float 0.000000e+00
  %2965 = and i32 %2863, 2048
  %2966 = icmp ne i32 %2965, 0
  %2967 = select i1 %2966, float %2430, float 0.000000e+00
  %2968 = and i32 %2863, 8192
  %2969 = icmp ne i32 %2968, 0
  %2970 = select i1 %2969, float %2430, float 0.000000e+00
  %2971 = icmp eq i32 %2953, 0
  br i1 %2971, label %2972, label %2997

; <label>:2972                                    ; preds = %2955
  %2973 = fsub fast float %2731, %2117
  %2974 = fsub fast float %2732, %2118
  %2975 = fmul fast float %2958, %2973
  %2976 = fmul fast float %2958, %2974
  %2977 = fadd fast float %2975, %2117
  %2978 = fadd fast float %2976, %2118
  %2979 = fsub fast float %2733, %2130
  %2980 = fmul fast float %2961, %2979
  %2981 = fadd fast float %2980, %2130
  %2982 = fsub fast float %2730, %2129
  %2983 = fmul fast float %2964, %2982
  %2984 = fadd fast float %2983, %2129
  %2985 = fsub fast float %2833, %2131
  %2986 = fmul fast float %2967, %2985
  %2987 = fadd fast float %2986, %2131
  %2988 = fsub fast float %2830, %2122
  %2989 = fsub fast float %2831, %2123
  %2990 = fsub fast float %2832, %2124
  %2991 = fmul fast float %2970, %2988
  %2992 = fmul fast float %2970, %2989
  %2993 = fmul fast float %2970, %2990
  %2994 = fadd fast float %2991, %2122
  %2995 = fadd fast float %2992, %2123
  %2996 = fadd fast float %2993, %2124
  br label %3061

; <label>:2997                                    ; preds = %2955
  %2998 = icmp eq i32 %2953, 4
  br i1 %2998, label %2999, label %3039

; <label>:2999                                    ; preds = %2997
  %3000 = fmul fast float %2958, %2731
  %3001 = fmul fast float %2958, %2732
  %3002 = fadd fast float %3000, %2117
  %3003 = fadd fast float %3001, %2118
  %3004 = call float @dx.op.binary.f32(i32 36, float %2130, float %2733)  ; FMin(a,b)
  %3005 = fsub fast float %3004, %2130
  %3006 = fmul fast float %3005, %2961
  %3007 = fadd fast float %3006, %2130
  %3008 = fadd fast float %2730, %2129
  %3009 = fmul fast float %3008, 0x3FF337FAE0000000
  %3010 = fmul fast float %2129, %2129
  %3011 = fmul fast float %2730, %2730
  %3012 = fadd fast float %3011, %3010
  %3013 = fmul fast float %3012, 0x3FE5152B00000000
  %3014 = fmul fast float %2129, 0xBFCC1F85E0000000
  %3015 = fmul fast float %3014, %2730
  %3016 = fadd fast float %3015, 0xBFE1363700000000
  %3017 = fadd fast float %3016, %3009
  %3018 = fsub fast float %3017, %3013
  %3019 = fmul fast float %3008, 0x3FBA6F0D00000000
  %3020 = fmul fast float %3012, 0x3FD0432880000000
  %3021 = fmul fast float %2129, 0xBFEF110800000000
  %3022 = fmul fast float %3021, %2730
  %3023 = fadd fast float %3022, 1.000000e+00
  %3024 = fsub fast float %3023, %3019
  %3025 = fadd fast float %3024, %3020
  %3026 = fdiv fast float %3018, %3025
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3028 = fsub fast float %3027, %2129
  %3029 = fmul fast float %3028, %2964
  %3030 = fadd fast float %3029, %2129
  %3031 = fmul fast float %2967, %2833
  %3032 = fadd fast float %3031, %2131
  %3033 = fmul fast float %2970, %2830
  %3034 = fmul fast float %2970, %2831
  %3035 = fmul fast float %2970, %2832
  %3036 = fadd fast float %3033, %2122
  %3037 = fadd fast float %3034, %2123
  %3038 = fadd fast float %3035, %2124
  br label %3061

; <label>:3039                                    ; preds = %2997
  %3040 = icmp eq i32 %2953, 8
  br i1 %3040, label %3041, label %3061

; <label>:3041                                    ; preds = %3039
  %3042 = fmul fast float %2958, %2731
  %3043 = fmul fast float %2958, %2732
  %3044 = fadd fast float %3042, %2117
  %3045 = fadd fast float %3043, %2118
  %3046 = call float @dx.op.binary.f32(i32 36, float %2130, float %2733)  ; FMin(a,b)
  %3047 = fsub fast float %3046, %2130
  %3048 = fmul fast float %3047, %2961
  %3049 = fadd fast float %3048, %2130
  %3050 = fsub fast float %2730, %2129
  %3051 = fmul fast float %2964, %3050
  %3052 = fadd fast float %3051, %2129
  %3053 = fmul fast float %2967, %2833
  %3054 = fadd fast float %3053, %2131
  %3055 = fmul fast float %2970, %2830
  %3056 = fmul fast float %2970, %2831
  %3057 = fmul fast float %2970, %2832
  %3058 = fadd fast float %3055, %2122
  %3059 = fadd fast float %3056, %2123
  %3060 = fadd fast float %3057, %2124
  br label %3061

; <label>:3061                                    ; preds = %3041, %3039, %2999, %2972, %2944, %2429, %2133, %2116
  %3062 = phi float [ %2117, %2944 ], [ %2117, %2429 ], [ %2117, %2116 ], [ %3044, %3041 ], [ %2117, %3039 ], [ %3002, %2999 ], [ %2977, %2972 ], [ %2117, %2133 ]
  %3063 = phi float [ %2118, %2944 ], [ %2118, %2429 ], [ %2118, %2116 ], [ %3045, %3041 ], [ %2118, %3039 ], [ %3003, %2999 ], [ %2978, %2972 ], [ %2118, %2133 ]
  %3064 = phi float [ %2945, %2944 ], [ %2119, %2429 ], [ %2119, %2116 ], [ %2945, %3041 ], [ %2945, %3039 ], [ %2945, %2999 ], [ %2945, %2972 ], [ %2119, %2133 ]
  %3065 = phi float [ %2946, %2944 ], [ %2120, %2429 ], [ %2120, %2116 ], [ %2946, %3041 ], [ %2946, %3039 ], [ %2946, %2999 ], [ %2946, %2972 ], [ %2120, %2133 ]
  %3066 = phi float [ %2947, %2944 ], [ %2121, %2429 ], [ %2121, %2116 ], [ %2947, %3041 ], [ %2947, %3039 ], [ %2947, %2999 ], [ %2947, %2972 ], [ %2121, %2133 ]
  %3067 = phi float [ %2122, %2944 ], [ %2122, %2429 ], [ %2122, %2116 ], [ %3058, %3041 ], [ %2122, %3039 ], [ %3036, %2999 ], [ %2994, %2972 ], [ %2122, %2133 ]
  %3068 = phi float [ %2123, %2944 ], [ %2123, %2429 ], [ %2123, %2116 ], [ %3059, %3041 ], [ %2123, %3039 ], [ %3037, %2999 ], [ %2995, %2972 ], [ %2123, %2133 ]
  %3069 = phi float [ %2124, %2944 ], [ %2124, %2429 ], [ %2124, %2116 ], [ %3060, %3041 ], [ %2124, %3039 ], [ %3038, %2999 ], [ %2996, %2972 ], [ %2124, %2133 ]
  %3070 = phi float [ %2948, %2944 ], [ %2125, %2429 ], [ %2125, %2116 ], [ %2948, %3041 ], [ %2948, %3039 ], [ %2948, %2999 ], [ %2948, %2972 ], [ %2125, %2133 ]
  %3071 = phi float [ %2949, %2944 ], [ %2126, %2429 ], [ %2126, %2116 ], [ %2949, %3041 ], [ %2949, %3039 ], [ %2949, %2999 ], [ %2949, %2972 ], [ %2126, %2133 ]
  %3072 = phi float [ %2950, %2944 ], [ %2127, %2429 ], [ %2127, %2116 ], [ %2950, %3041 ], [ %2950, %3039 ], [ %2950, %2999 ], [ %2950, %2972 ], [ %2127, %2133 ]
  %3073 = phi float [ %2951, %2944 ], [ %2128, %2429 ], [ %2128, %2116 ], [ %2951, %3041 ], [ %2951, %3039 ], [ %2951, %2999 ], [ %2951, %2972 ], [ %2128, %2133 ]
  %3074 = phi float [ %2129, %2944 ], [ %2129, %2429 ], [ %2129, %2116 ], [ %3052, %3041 ], [ %2129, %3039 ], [ %3030, %2999 ], [ %2984, %2972 ], [ %2129, %2133 ]
  %3075 = phi float [ %2130, %2944 ], [ %2130, %2429 ], [ %2130, %2116 ], [ %3049, %3041 ], [ %2130, %3039 ], [ %3007, %2999 ], [ %2981, %2972 ], [ %2130, %2133 ]
  %3076 = phi float [ %2131, %2944 ], [ %2131, %2429 ], [ %2131, %2116 ], [ %3054, %3041 ], [ %2131, %3039 ], [ %3032, %2999 ], [ %2987, %2972 ], [ %2131, %2133 ]
  %3077 = phi float [ %2952, %2944 ], [ %2132, %2429 ], [ %2132, %2116 ], [ %2952, %3041 ], [ %2952, %3039 ], [ %2952, %2999 ], [ %2952, %2972 ], [ %2132, %2133 ]
  br i1 %405, label %4006, label %3078

; <label>:3078                                    ; preds = %3061
  %3079 = icmp ult i32 %459, 4
  %3080 = add i32 %54, 72
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = add i32 %54, 76
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = or i32 %3085, %3082
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %4006, label %3088

; <label>:3088                                    ; preds = %3078
  %3089 = and i32 %3082, 262144
  %3090 = icmp ne i32 %3089, 0
  %3091 = select i1 %3090, float %57, float 1.000000e+00
  %3092 = select i1 %3090, float %58, float 0.000000e+00
  %3093 = select i1 %3090, float %59, float 0.000000e+00
  %3094 = select i1 %3090, float %60, float 1.000000e+00
  %3095 = select i1 %3090, float %61, float %82
  %3096 = select i1 %3090, float %62, float %83
  %3097 = add i32 %54, 332
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = lshr i32 %3099, 16
  %3101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3100)  ; LegacyF16ToF32(value)
  %3102 = fmul fast float %3101, 0x3F50624DE0000000
  %3103 = add i32 %54, 136
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = lshr i32 %3105, 16
  %3107 = and i32 %3106, 255
  %3108 = lshr i32 %3105, 24
  %3109 = add i32 %54, 340
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 65535
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = lshr i32 %3111, 16
  %3115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3114)  ; LegacyF16ToF32(value)
  %3116 = add i32 %54, 80
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = lshr i32 %3118, 22
  %3120 = shl nuw nsw i32 %3119, 5
  %3121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3120)  ; LegacyF16ToF32(value)
  %3122 = shl i32 %3118, 4
  %3123 = and i32 %3122, 32752
  %3124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3123)  ; LegacyF16ToF32(value)
  %3125 = lshr i32 %3118, 7
  %3126 = and i32 %3125, 32752
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3128, 3
  %3130 = fmul fast float %3129, 1.000000e+03
  %3131 = fmul fast float %395, %3130
  %3132 = call float @dx.op.unary.f32(i32 22, float %3131)  ; Frc(value)
  %3133 = fadd fast float %3132, %385
  %3134 = fmul fast float %396, %3130
  %3135 = call float @dx.op.unary.f32(i32 22, float %3134)  ; Frc(value)
  %3136 = fadd fast float %3135, %387
  %3137 = fmul fast float %3102, %3130
  %3138 = call float @dx.op.unary.f32(i32 22, float %3137)  ; Frc(value)
  %3139 = fmul fast float %3138, 0x401921FB60000000
  %3140 = fadd fast float %3139, %3121
  %3141 = call float @dx.op.unary.f32(i32 13, float %3140)  ; Sin(value)
  %3142 = call float @dx.op.unary.f32(i32 12, float %3140)  ; Cos(value)
  %3143 = fsub fast float -0.000000e+00, %3141
  %3144 = fadd fast float %3095, -5.000000e-01
  %3145 = fadd fast float %3096, -5.000000e-01
  %3146 = fmul fast float %3113, %3144
  %3147 = fmul fast float %3115, %3145
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = fadd fast float %3147, 5.000000e-01
  %3150 = fmul fast float %3124, %3148
  %3151 = fmul fast float %3127, %3149
  %3152 = fmul fast float %3142, %3150
  %3153 = call float @dx.op.tertiary.f32(i32 46, float %3143, float %3151, float %3152)  ; FMad(a,b,c)
  %3154 = fmul fast float %3141, %3150
  %3155 = call float @dx.op.tertiary.f32(i32 46, float %3142, float %3151, float %3154)  ; FMad(a,b,c)
  %3156 = fadd fast float %3133, %3153
  %3157 = fadd fast float %3136, %3155
  %3158 = icmp ugt i32 %3107, 1
  %3159 = icmp ugt i32 %3105, 33554431
  %3160 = or i1 %3159, %3158
  br i1 %3160, label %3161, label %3186

; <label>:3161                                    ; preds = %3088
  %3162 = add i32 %54, 276
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = lshr i32 %3164, 16
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = fmul fast float %3129, %3166
  %3168 = call float @dx.op.unary.f32(i32 22, float %3167)  ; Frc(value)
  %3169 = mul nuw nsw i32 %3107, %3108
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3168, %3170
  %3172 = call float @dx.op.unary.f32(i32 27, float %3171)  ; Round_ni(value)
  %3173 = fptoui float %3172 to i32
  %3174 = urem i32 %3173, %3107
  %3175 = udiv i32 %3173, %3108
  %3176 = call float @dx.op.unary.f32(i32 22, float %3156)  ; Frc(value)
  %3177 = call float @dx.op.unary.f32(i32 22, float %3157)  ; Frc(value)
  %3178 = uitofp i32 %3174 to float
  %3179 = uitofp i32 %3175 to float
  %3180 = fadd fast float %3176, %3178
  %3181 = fadd fast float %3177, %3179
  %3182 = uitofp i32 %3107 to float
  %3183 = uitofp i32 %3108 to float
  %3184 = fdiv fast float %3180, %3182
  %3185 = fdiv fast float %3181, %3183
  br label %3186

; <label>:3186                                    ; preds = %3161, %3088
  %3187 = phi float [ %3184, %3161 ], [ %3156, %3088 ]
  %3188 = phi float [ %3185, %3161 ], [ %3157, %3088 ]
  %3189 = and i32 %3082, 16777216
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3300, label %3191

; <label>:3191                                    ; preds = %3186
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3195 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3196 = fadd fast float %3193, %155
  %3197 = fadd fast float %3194, %156
  %3198 = fadd fast float %3195, %157
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3202 = icmp eq i32 %55, 65535
  br i1 %3202, label %3297, label %3203

; <label>:3203                                    ; preds = %3191
  %3204 = lshr i32 %55, 1
  %3205 = shl i32 %3204, 2
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %55, 1
  %3209 = icmp ne i32 %3208, 0
  %3210 = lshr i32 %3207, 16
  %3211 = and i32 %3207, 65535
  %3212 = select i1 %3209, i32 %3210, i32 %3211
  %3213 = icmp eq i32 %3212, 65535
  br i1 %3213, label %3293, label %3214

; <label>:3214                                    ; preds = %3203
  %3215 = mul nuw nsw i32 %3212, 40
  %3216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.ResRet.f32 %3216, 1
  %3219 = extractvalue %dx.types.ResRet.f32 %3216, 2
  %3220 = add nuw nsw i32 %3215, 12
  %3221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  %3223 = extractvalue %dx.types.ResRet.f32 %3221, 1
  %3224 = extractvalue %dx.types.ResRet.f32 %3221, 2
  %3225 = add nuw nsw i32 %3215, 24
  %3226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = add nuw nsw i32 %3215, 36
  %3231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = fsub fast float %3196, %3217
  %3234 = fsub fast float %3197, %3218
  %3235 = fsub fast float %3198, %3219
  %3236 = fmul fast float %3232, %3233
  %3237 = fmul fast float %3232, %3234
  %3238 = fmul fast float %3232, %3235
  %3239 = call float @dx.op.unary.f32(i32 27, float %3236)  ; Round_ni(value)
  %3240 = call float @dx.op.unary.f32(i32 27, float %3237)  ; Round_ni(value)
  %3241 = call float @dx.op.unary.f32(i32 27, float %3238)  ; Round_ni(value)
  %3242 = fadd fast float %3239, 5.000000e-01
  %3243 = fadd fast float %3240, 5.000000e-01
  %3244 = fadd fast float %3241, 5.000000e-01
  %3245 = fmul fast float %3242, %3222
  %3246 = fmul fast float %3243, %3223
  %3247 = fmul fast float %3244, %3224
  %3248 = shl i32 %55, 2
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = add i32 %3250, 0
  %3252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3253 = call float @dx.op.unary.f32(i32 22, float %3245)  ; Frc(value)
  %3254 = call float @dx.op.unary.f32(i32 22, float %3246)  ; Frc(value)
  %3255 = call float @dx.op.unary.f32(i32 22, float %3247)  ; Frc(value)
  %3256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3252, %dx.types.Handle %49, float %3253, float %3254, float %3255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = fmul fast float %3257, 1.023000e+03
  %3261 = fmul fast float %3258, 1.023000e+03
  %3262 = fmul fast float %3259, 1.023000e+03
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = call float @dx.op.unary.f32(i32 27, float %3263)  ; Round_ni(value)
  %3267 = call float @dx.op.unary.f32(i32 27, float %3264)  ; Round_ni(value)
  %3268 = call float @dx.op.unary.f32(i32 27, float %3265)  ; Round_ni(value)
  %3269 = fsub fast float %3236, %3239
  %3270 = fsub fast float %3237, %3240
  %3271 = fsub fast float %3238, %3241
  %3272 = fmul fast float %3269, 7.500000e-01
  %3273 = fmul fast float %3270, 7.500000e-01
  %3274 = fmul fast float %3271, 7.500000e-01
  %3275 = fadd fast float %3239, 1.250000e-01
  %3276 = fadd fast float %3275, %3272
  %3277 = fadd fast float %3276, %3266
  %3278 = fadd fast float %3240, 1.250000e-01
  %3279 = fadd fast float %3278, %3273
  %3280 = fadd fast float %3279, %3267
  %3281 = fadd fast float %3241, 1.250000e-01
  %3282 = fadd fast float %3281, %3274
  %3283 = fadd fast float %3282, %3268
  %3284 = fmul fast float %3277, %3227
  %3285 = fmul fast float %3280, %3228
  %3286 = fmul fast float %3283, %3229
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = add i32 %3288, 0
  %3290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3290, %dx.types.Handle %47, float %3284, float %3285, float %3286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  br label %3293

; <label>:3293                                    ; preds = %3214, %3203
  %3294 = phi float [ %3292, %3214 ], [ -1.000000e+00, %3203 ]
  %3295 = fadd fast float %3294, %3201
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  br label %3297

; <label>:3297                                    ; preds = %3293, %3191
  %3298 = phi float [ %3296, %3293 ], [ %3201, %3191 ]
  %3299 = fmul fast float %3298, %454
  br label %3300

; <label>:3300                                    ; preds = %3297, %3186
  %3301 = phi float [ %3299, %3297 ], [ %454, %3186 ]
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 256
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3352, label %3306

; <label>:3306                                    ; preds = %3300
  %3307 = add i32 %54, 436
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %97, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = add i32 %54, 148
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = shl i32 %3316, 4
  %3318 = and i32 %3317, 32752
  %3319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3318)  ; LegacyF16ToF32(value)
  %3320 = lshr i32 %3316, 7
  %3321 = and i32 %3320, 32752
  %3322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3321)  ; LegacyF16ToF32(value)
  %3323 = fsub fast float 1.000000e+00, %3301
  %3324 = call float @dx.op.binary.f32(i32 35, float %3323, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3325 = bitcast float %3301 to i32
  %3326 = sitofp i32 %3325 to float
  %3327 = fadd fast float %3326, 0xC1CFBF8940000000
  %3328 = fmul fast float %3322, %3327
  %3329 = fadd fast float %3328, 0x41CFBF8940000000
  %3330 = fptosi float %3329 to i32
  %3331 = bitcast i32 %3330 to float
  %3332 = bitcast float %3324 to i32
  %3333 = sitofp i32 %3332 to float
  %3334 = fadd fast float %3333, 0xC1CFBF8940000000
  %3335 = fmul fast float %3334, %3322
  %3336 = fadd fast float %3335, 0x41CFBF8940000000
  %3337 = fptosi float %3336 to i32
  %3338 = bitcast i32 %3337 to float
  %3339 = fmul fast float %3331, %3319
  %3340 = fmul fast float %3338, %3319
  %3341 = fsub fast float %3324, %3339
  %3342 = fadd fast float %3340, %3324
  %3343 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3344 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3345 = fsub fast float %3313, %3343
  %3346 = fsub fast float %3344, %3343
  %3347 = bitcast float %3346 to i32
  %3348 = sub nsw i32 2129859010, %3347
  %3349 = bitcast i32 %3348 to float
  %3350 = fmul fast float %3349, %3345
  %3351 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  br label %3352

; <label>:3352                                    ; preds = %3306, %3300
  %3353 = phi float [ %3351, %3306 ], [ %3301, %3300 ]
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 128
  %3357 = icmp eq i32 %3356, 0
  br i1 %3357, label %3374, label %3358

; <label>:3358                                    ; preds = %3352
  %3359 = add i32 %54, 420
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = add i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3363, %dx.types.Handle %97, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 524288
  %3369 = icmp ne i32 %3368, 0
  %3370 = fcmp fast ogt float %3365, 0x3FE0101020000000
  %3371 = select i1 %3370, float 1.000000e+00, float 0.000000e+00
  %3372 = select i1 %3369, float %3371, float %3365
  %3373 = fmul fast float %3372, %3353
  br label %3374

; <label>:3374                                    ; preds = %3358, %3352
  %3375 = phi float [ %3373, %3358 ], [ %3353, %3352 ]
  %3376 = fcmp fast ult float %3375, 0x3F70101020000000
  br i1 %3376, label %4006, label %3377

; <label>:3377                                    ; preds = %3374
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 16
  %3381 = icmp eq i32 %3380, 0
  br i1 %3381, label %3580, label %3382

; <label>:3382                                    ; preds = %3377
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = add i32 %54, 372
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = add i32 %3387, 0
  %3389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3389, %dx.types.Handle %96, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3395 = and i32 %3384, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = lshr i32 %3384, 8
  %3398 = and i32 %3397, 255
  %3399 = uitofp i32 %3398 to float
  %3400 = fmul fast float %3394, %3396
  %3401 = fadd fast float %3400, %3399
  %3402 = fmul fast float %3401, 0x3F70101000000000
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 512
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3415, label %3407

; <label>:3407                                    ; preds = %3382
  %3408 = add i32 %54, 452
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = add i32 %3410, 0
  %3412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3412, %dx.types.Handle %97, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  br label %3415

; <label>:3415                                    ; preds = %3407, %3382
  %3416 = phi float [ %3414, %3407 ], [ 1.000000e+00, %3382 ]
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 33554432
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3527, label %3421

; <label>:3421                                    ; preds = %3415
  %3422 = add i32 %54, 272
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 65535
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = lshr i32 %3424, 16
  %3428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3427)  ; LegacyF16ToF32(value)
  %3429 = add i32 %54, 276
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 65535
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = lshr i32 %3435, 24
  %3437 = uitofp i32 %3436 to float
  %3438 = fmul fast float %3437, 0x3F70101020000000
  %3439 = and i32 %3435, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = fmul fast float %3440, 0x3F70101020000000
  %3442 = lshr i32 %3435, 8
  %3443 = and i32 %3442, 255
  %3444 = uitofp i32 %3443 to float
  %3445 = fmul fast float %3444, 0x3F70101020000000
  %3446 = lshr i32 %3435, 16
  %3447 = and i32 %3446, 255
  %3448 = uitofp i32 %3447 to float
  %3449 = fmul fast float %3448, 0x3F70101020000000
  %3450 = add i32 %54, 268
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = lshr i32 %3452, 24
  %3454 = uitofp i32 %3453 to float
  %3455 = fmul fast float %3454, 0x3F70101020000000
  %3456 = and i32 %3452, 255
  %3457 = uitofp i32 %3456 to float
  %3458 = fmul fast float %3457, 0x3F70101020000000
  %3459 = lshr i32 %3452, 8
  %3460 = and i32 %3459, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3461, 0x3F70101020000000
  %3463 = lshr i32 %3452, 16
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = bitcast float %3391 to i32
  %3468 = ashr i32 %3467, 1
  %3469 = sub nsw i32 1597463174, %3468
  %3470 = bitcast i32 %3469 to float
  %3471 = fmul fast float %3391, 5.000000e-01
  %3472 = fmul fast float %3470, %3470
  %3473 = fmul fast float %3472, %3471
  %3474 = fsub fast float 1.500000e+00, %3473
  %3475 = fmul fast float %3470, %3391
  %3476 = fmul fast float %3475, %3474
  %3477 = bitcast float %3392 to i32
  %3478 = ashr i32 %3477, 1
  %3479 = sub nsw i32 1597463174, %3478
  %3480 = bitcast i32 %3479 to float
  %3481 = fmul fast float %3392, 5.000000e-01
  %3482 = fmul fast float %3480, %3480
  %3483 = fmul fast float %3482, %3481
  %3484 = fsub fast float 1.500000e+00, %3483
  %3485 = fmul fast float %3480, %3392
  %3486 = fmul fast float %3485, %3484
  %3487 = bitcast float %3393 to i32
  %3488 = ashr i32 %3487, 1
  %3489 = sub nsw i32 1597463174, %3488
  %3490 = bitcast i32 %3489 to float
  %3491 = fmul fast float %3393, 5.000000e-01
  %3492 = fmul fast float %3490, %3490
  %3493 = fmul fast float %3492, %3491
  %3494 = fsub fast float 1.500000e+00, %3493
  %3495 = fmul fast float %3490, %3393
  %3496 = fmul fast float %3495, %3494
  %3497 = fsub fast float %3476, %3458
  %3498 = fsub fast float %3486, %3462
  %3499 = fsub fast float %3496, %3466
  %3500 = fmul fast float %3497, %3426
  %3501 = fmul fast float %3498, %3428
  %3502 = fmul fast float %3499, %3433
  %3503 = fadd fast float %3500, %3441
  %3504 = fadd fast float %3501, %3445
  %3505 = fadd fast float %3502, %3449
  %3506 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3509 = fmul fast float %3506, %3506
  %3510 = fmul fast float %3507, %3507
  %3511 = fmul fast float %3508, %3508
  %3512 = fsub fast float %3509, %3391
  %3513 = fsub fast float %3510, %3392
  %3514 = fsub fast float %3511, %3393
  %3515 = fmul fast float %3512, %3416
  %3516 = fmul fast float %3513, %3416
  %3517 = fmul fast float %3514, %3416
  %3518 = fadd fast float %3515, %3391
  %3519 = fadd fast float %3516, %3392
  %3520 = fadd fast float %3517, %3393
  %3521 = fadd fast float %3438, %3402
  %3522 = fsub fast float %3521, %3455
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = fsub fast float %3523, %3402
  %3525 = fmul fast float %3524, %3416
  %3526 = fadd fast float %3525, %3402
  br label %3580

; <label>:3527                                    ; preds = %3415
  %3528 = and i32 %3418, 134217728
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3564, label %3530

; <label>:3530                                    ; preds = %3527
  %3531 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3532 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3533 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3534 = fadd fast float %3531, -5.000000e-01
  %3535 = fadd fast float %3532, -5.000000e-01
  %3536 = fadd fast float %3533, -5.000000e-01
  %3537 = fmul fast float %3534, %3416
  %3538 = fmul fast float %3535, %3416
  %3539 = fmul fast float %3536, %3416
  %3540 = fadd fast float %3537, 5.000000e-01
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = call float @dx.op.unary.f32(i32 24, float %3391)  ; Sqrt(value)
  %3544 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3545 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3546 = fmul fast float %3540, 2.000000e+00
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = fmul fast float %3547, %3543
  %3549 = fadd fast float %3548, %3546
  %3550 = fmul fast float %3549, %3543
  %3551 = fmul fast float %3541, 2.000000e+00
  %3552 = fsub fast float 1.000000e+00, %3551
  %3553 = fmul fast float %3552, %3544
  %3554 = fadd fast float %3553, %3551
  %3555 = fmul fast float %3554, %3544
  %3556 = fmul fast float %3542, 2.000000e+00
  %3557 = fsub fast float 1.000000e+00, %3556
  %3558 = fmul fast float %3557, %3545
  %3559 = fadd fast float %3558, %3556
  %3560 = fmul fast float %3559, %3545
  %3561 = fmul fast float %3550, %3550
  %3562 = fmul fast float %3555, %3555
  %3563 = fmul fast float %3560, %3560
  br label %3580

; <label>:3564                                    ; preds = %3527
  %3565 = fmul fast float %372, %372
  %3566 = fmul fast float %376, %376
  %3567 = fmul fast float %380, %380
  %3568 = fadd fast float %3565, -1.000000e+00
  %3569 = fadd fast float %3566, -1.000000e+00
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = fmul fast float %3416, %3568
  %3572 = fmul fast float %3416, %3569
  %3573 = fmul fast float %3416, %3570
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fmul fast float %3574, %3391
  %3578 = fmul fast float %3575, %3392
  %3579 = fmul fast float %3576, %3393
  br label %3580

; <label>:3580                                    ; preds = %3564, %3530, %3421, %3377
  %3581 = phi float [ %3526, %3421 ], [ %3402, %3530 ], [ %3402, %3564 ], [ 0x3FA23C0BE0000000, %3377 ]
  %3582 = phi float [ %3518, %3421 ], [ %3561, %3530 ], [ %3577, %3564 ], [ 1.000000e+00, %3377 ]
  %3583 = phi float [ %3519, %3421 ], [ %3562, %3530 ], [ %3578, %3564 ], [ 1.000000e+00, %3377 ]
  %3584 = phi float [ %3520, %3421 ], [ %3563, %3530 ], [ %3579, %3564 ], [ 1.000000e+00, %3377 ]
  %3585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.i32 %3585, 1
  %3587 = and i32 %3586, 1
  %3588 = icmp ne i32 %3587, 0
  %3589 = add i32 %54, 356
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = and i32 %3591, 32
  %3593 = icmp ne i32 %3592, 0
  %3594 = and i1 %3588, %3593
  %3595 = select i1 %3594, float 1.000000e+00, float %3582
  %3596 = select i1 %3594, float 0x3FD3333340000000, float %3583
  %3597 = select i1 %3594, float 0x3FD3333340000000, float %3584
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = and i32 %3599, 32
  %3601 = icmp eq i32 %3600, 0
  br i1 %3601, label %3674, label %3602

; <label>:3602                                    ; preds = %3580
  %3603 = add i32 %54, 140
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = add i32 %54, 388
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = add i32 %3608, 0
  %3610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3610, %dx.types.Handle %96, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = and i32 %3605, 255
  %3617 = uitofp i32 %3616 to float
  %3618 = lshr i32 %3605, 8
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = lshr i32 %3605, 16
  %3622 = and i32 %3621, 255
  %3623 = uitofp i32 %3622 to float
  %3624 = fmul fast float %3623, 0x3F70101000000000
  %3625 = fmul fast float %3612, %3617
  %3626 = fadd fast float %3625, %3620
  %3627 = fmul fast float %3626, 0x3F70101000000000
  %3628 = fadd fast float %3613, -5.000000e-01
  %3629 = fadd fast float %3615, -5.000000e-01
  %3630 = fmul fast float %3628, %3624
  %3631 = fmul fast float %3629, %3624
  %3632 = fadd fast float %3630, 5.000000e-01
  %3633 = fadd fast float %3631, 5.000000e-01
  %3634 = fmul fast float %3632, 2.000000e+00
  %3635 = fadd fast float %3634, -1.000000e+00
  %3636 = fmul fast float %3633, 2.000000e+00
  %3637 = fadd fast float %3636, -1.000000e+00
  %3638 = fadd fast float %3635, %3637
  %3639 = fmul fast float %3638, 5.000000e-01
  %3640 = fsub fast float %3635, %3637
  %3641 = fmul fast float %3640, 5.000000e-01
  %3642 = call float @dx.op.unary.f32(i32 6, float %3639)  ; FAbs(value)
  %3643 = fsub fast float 1.000000e+00, %3642
  %3644 = call float @dx.op.unary.f32(i32 6, float %3641)  ; FAbs(value)
  %3645 = fsub fast float %3643, %3644
  %3646 = call float @dx.op.dot3.f32(i32 55, float %3639, float %3641, float %3645, float %3639, float %3641, float %3645)  ; Dot3(ax,ay,az,bx,by,bz)
  %3647 = call float @dx.op.unary.f32(i32 25, float %3646)  ; Rsqrt(value)
  %3648 = fmul fast float %3639, %3647
  %3649 = fmul fast float %3641, %3647
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, 67108864
  %3653 = icmp eq i32 %3652, 0
  br i1 %3653, label %3670, label %3654

; <label>:3654                                    ; preds = %3602
  %3655 = add i32 %54, 328
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 65535
  %3659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3658)  ; LegacyF16ToF32(value)
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = and i32 %3661, 65535
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = lshr i32 %3657, 16
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = fsub fast float %3627, %3665
  %3667 = fmul fast float %3666, %3659
  %3668 = fadd fast float %3667, %3663
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  br label %3670

; <label>:3670                                    ; preds = %3654, %3602
  %3671 = phi float [ %3669, %3654 ], [ %3627, %3602 ]
  %3672 = call float @dx.op.dot2.f32(i32 54, float %3648, float %3649, float %3091, float %3092)  ; Dot2(ax,ay,bx,by)
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3648, float %3649, float %3093, float %3094)  ; Dot2(ax,ay,bx,by)
  br label %3674

; <label>:3674                                    ; preds = %3670, %3580
  %3675 = phi float [ %3671, %3670 ], [ 0x3FD6666660000000, %3580 ]
  %3676 = phi float [ %3672, %3670 ], [ 0.000000e+00, %3580 ]
  %3677 = phi float [ %3673, %3670 ], [ 0.000000e+00, %3580 ]
  %3678 = phi float [ %3614, %3670 ], [ 1.000000e+00, %3580 ]
  %3679 = add i32 %54, 208
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = lshr i32 %3681, 22
  %3683 = shl nuw nsw i32 %3682, 5
  %3684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3683)  ; LegacyF16ToF32(value)
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, 64
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3722, label %3689

; <label>:3689                                    ; preds = %3674
  %3690 = add i32 %54, 404
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = add i32 %3692, 0
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 131072
  %3698 = icmp eq i32 %3697, 0
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3694, %dx.types.Handle %96, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = fmul fast float %3700, %360
  %3704 = fmul fast float %3701, %363
  %3705 = fmul fast float %3702, %366
  br i1 %3698, label %3712, label %3706

; <label>:3706                                    ; preds = %3689
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = fmul fast float %3708, %3703
  %3710 = fmul fast float %3708, %3704
  %3711 = fmul fast float %3708, %3705
  br label %3712

; <label>:3712                                    ; preds = %3706, %3689
  %3713 = phi float [ %3709, %3706 ], [ %3703, %3689 ]
  %3714 = phi float [ %3710, %3706 ], [ %3704, %3689 ]
  %3715 = phi float [ %3711, %3706 ], [ %3705, %3689 ]
  %3716 = fmul fast float %3713, %3684
  %3717 = select i1 %217, float %3716, float %3713
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3717, float %3714, float %3715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = select i1 %217, float 0.000000e+00, float %3713
  %3720 = select i1 %217, float %3718, float %3714
  %3721 = select i1 %217, float 0.000000e+00, float %3715
  br label %3722

; <label>:3722                                    ; preds = %3712, %3674
  %3723 = phi float [ %3719, %3712 ], [ 0.000000e+00, %3674 ]
  %3724 = phi float [ %3720, %3712 ], [ 0.000000e+00, %3674 ]
  %3725 = phi float [ %3721, %3712 ], [ 0.000000e+00, %3674 ]
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = and i32 %3727, 10240
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3774, label %3730

; <label>:3730                                    ; preds = %3722
  %3731 = add i32 %54, 468
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = add i32 %3733, 0
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3735, %dx.types.Handle %97, float %3187, float %3188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = and i32 %3740, 1048576
  %3742 = icmp ne i32 %3741, 0
  %3743 = and i32 %3740, 8192
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3760, label %3745

; <label>:3745                                    ; preds = %3730
  %3746 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3747 = select i1 %3742, float %3746, float %3737
  %3748 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3749 = select i1 %3742, float %3748, float %3737
  %3750 = add i32 %54, 144
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = lshr i32 %3752, 16
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F80101020000000
  %3757 = fmul fast float %3756, %3749
  %3758 = fmul fast float %3756, %3737
  %3759 = fmul fast float %3756, %3747
  br label %3760

; <label>:3760                                    ; preds = %3745, %3730
  %3761 = phi float [ %3757, %3745 ], [ 0.000000e+00, %3730 ]
  %3762 = phi float [ %3758, %3745 ], [ 0.000000e+00, %3730 ]
  %3763 = phi float [ %3759, %3745 ], [ 0.000000e+00, %3730 ]
  %3764 = and i32 %3740, 2048
  %3765 = icmp eq i32 %3764, 0
  br i1 %3765, label %3774, label %3766

; <label>:3766                                    ; preds = %3760
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = shl i32 %3768, 4
  %3770 = and i32 %3769, 32752
  %3771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3770)  ; LegacyF16ToF32(value)
  %3772 = fmul fast float %3771, %3738
  %3773 = call float @dx.op.binary.f32(i32 35, float %3772, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3774

; <label>:3774                                    ; preds = %3766, %3760, %3722
  %3775 = phi float [ %3761, %3766 ], [ %3761, %3760 ], [ 0.000000e+00, %3722 ]
  %3776 = phi float [ %3762, %3766 ], [ %3762, %3760 ], [ 0.000000e+00, %3722 ]
  %3777 = phi float [ %3763, %3766 ], [ %3763, %3760 ], [ 0.000000e+00, %3722 ]
  %3778 = phi float [ %3773, %3766 ], [ 0x3F70101020000000, %3760 ], [ 0x3F70101020000000, %3722 ]
  %3779 = add i32 %54, 144
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = lshr i32 %3781, 8
  %3785 = and i32 %3784, 255
  %3786 = uitofp i32 %3785 to float
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3595, float %3596, float %3597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = fmul fast float %3786, %3787
  %3789 = fadd fast float %3788, %3783
  %3790 = fmul fast float %3789, 0x3F70101020000000
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  br i1 %3079, label %3792, label %3800

; <label>:3792                                    ; preds = %3774
  %3793 = fsub fast float 1.000000e+00, %3375
  %3794 = fmul fast float %3793, %3070
  %3795 = fmul fast float %3793, %3071
  %3796 = fmul fast float %3793, %3072
  %3797 = fmul fast float %3793, %3064
  %3798 = fmul fast float %3793, %3065
  %3799 = fmul fast float %3793, %3066
  br label %3800

; <label>:3800                                    ; preds = %3792, %3774
  %3801 = phi float [ %3797, %3792 ], [ %3064, %3774 ]
  %3802 = phi float [ %3798, %3792 ], [ %3065, %3774 ]
  %3803 = phi float [ %3799, %3792 ], [ %3066, %3774 ]
  %3804 = phi float [ %3794, %3792 ], [ %3070, %3774 ]
  %3805 = phi float [ %3795, %3792 ], [ %3071, %3774 ]
  %3806 = phi float [ %3796, %3792 ], [ %3072, %3774 ]
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = and i32 %3808, 3
  %3810 = icmp eq i32 %3809, 3
  br i1 %3810, label %3889, label %3811

; <label>:3811                                    ; preds = %3800
  %3812 = and i32 %3808, 16
  %3813 = icmp ne i32 %3812, 0
  %3814 = select i1 %3813, float %3375, float 0.000000e+00
  %3815 = icmp eq i32 %3809, 0
  br i1 %3815, label %3816, label %3844

; <label>:3816                                    ; preds = %3811
  %3817 = and i32 %3808, 64
  %3818 = icmp ne i32 %3817, 0
  %3819 = select i1 %3818, float %3375, float 0.000000e+00
  %3820 = fsub fast float %3595, %3804
  %3821 = fsub fast float %3596, %3805
  %3822 = fsub fast float %3597, %3806
  %3823 = fmul fast float %3814, %3820
  %3824 = fmul fast float %3814, %3821
  %3825 = fmul fast float %3814, %3822
  %3826 = fadd fast float %3823, %3804
  %3827 = fadd fast float %3824, %3805
  %3828 = fadd fast float %3825, %3806
  %3829 = fsub fast float %3581, %3073
  %3830 = fmul fast float %3814, %3829
  %3831 = fadd fast float %3830, %3073
  %3832 = fsub fast float %3723, %3801
  %3833 = fsub fast float %3724, %3802
  %3834 = fsub fast float %3725, %3803
  %3835 = fmul fast float %3819, %3832
  %3836 = fmul fast float %3819, %3833
  %3837 = fmul fast float %3819, %3834
  %3838 = fadd fast float %3835, %3801
  %3839 = fadd fast float %3836, %3802
  %3840 = fadd fast float %3837, %3803
  %3841 = fsub fast float %3791, %3077
  %3842 = fmul fast float %3814, %3841
  %3843 = fadd fast float %3842, %3077
  br label %3889

; <label>:3844                                    ; preds = %3811
  %3845 = icmp eq i32 %3809, 1
  br i1 %3845, label %3846, label %3859

; <label>:3846                                    ; preds = %3844
  %3847 = fadd fast float %3595, -1.000000e+00
  %3848 = fadd fast float %3596, -1.000000e+00
  %3849 = fadd fast float %3597, -1.000000e+00
  %3850 = fmul fast float %3814, %3847
  %3851 = fmul fast float %3814, %3848
  %3852 = fmul fast float %3814, %3849
  %3853 = fadd fast float %3850, 1.000000e+00
  %3854 = fadd fast float %3851, 1.000000e+00
  %3855 = fadd fast float %3852, 1.000000e+00
  %3856 = fmul fast float %3853, %3804
  %3857 = fmul fast float %3854, %3805
  %3858 = fmul fast float %3855, %3806
  br label %3889

; <label>:3859                                    ; preds = %3844
  %3860 = icmp eq i32 %3809, 2
  br i1 %3860, label %3861, label %3889

; <label>:3861                                    ; preds = %3859
  %3862 = call float @dx.op.unary.f32(i32 24, float %3595)  ; Sqrt(value)
  %3863 = call float @dx.op.unary.f32(i32 24, float %3596)  ; Sqrt(value)
  %3864 = call float @dx.op.unary.f32(i32 24, float %3597)  ; Sqrt(value)
  %3865 = fadd fast float %3862, -5.000000e-01
  %3866 = fadd fast float %3863, -5.000000e-01
  %3867 = fadd fast float %3864, -5.000000e-01
  %3868 = fmul fast float %3865, %3814
  %3869 = fmul fast float %3866, %3814
  %3870 = fmul fast float %3867, %3814
  %3871 = fadd fast float %3868, 5.000000e-01
  %3872 = fadd fast float %3869, 5.000000e-01
  %3873 = fadd fast float %3870, 5.000000e-01
  %3874 = fmul fast float %3871, 2.000000e+00
  %3875 = fsub fast float 1.000000e+00, %3874
  %3876 = fmul fast float %3875, %3804
  %3877 = fadd fast float %3876, %3874
  %3878 = fmul fast float %3877, %3804
  %3879 = fmul fast float %3872, 2.000000e+00
  %3880 = fsub fast float 1.000000e+00, %3879
  %3881 = fmul fast float %3880, %3805
  %3882 = fadd fast float %3881, %3879
  %3883 = fmul fast float %3882, %3805
  %3884 = fmul fast float %3873, 2.000000e+00
  %3885 = fsub fast float 1.000000e+00, %3884
  %3886 = fmul fast float %3885, %3806
  %3887 = fadd fast float %3886, %3884
  %3888 = fmul fast float %3887, %3806
  br label %3889

; <label>:3889                                    ; preds = %3861, %3859, %3846, %3816, %3800
  %3890 = phi float [ %3801, %3800 ], [ %3801, %3861 ], [ %3801, %3859 ], [ %3801, %3846 ], [ %3838, %3816 ]
  %3891 = phi float [ %3802, %3800 ], [ %3802, %3861 ], [ %3802, %3859 ], [ %3802, %3846 ], [ %3839, %3816 ]
  %3892 = phi float [ %3803, %3800 ], [ %3803, %3861 ], [ %3803, %3859 ], [ %3803, %3846 ], [ %3840, %3816 ]
  %3893 = phi float [ %3804, %3800 ], [ %3878, %3861 ], [ %3804, %3859 ], [ %3856, %3846 ], [ %3826, %3816 ]
  %3894 = phi float [ %3805, %3800 ], [ %3883, %3861 ], [ %3805, %3859 ], [ %3857, %3846 ], [ %3827, %3816 ]
  %3895 = phi float [ %3806, %3800 ], [ %3888, %3861 ], [ %3806, %3859 ], [ %3858, %3846 ], [ %3828, %3816 ]
  %3896 = phi float [ %3073, %3800 ], [ %3073, %3861 ], [ %3073, %3859 ], [ %3073, %3846 ], [ %3831, %3816 ]
  %3897 = phi float [ %3077, %3800 ], [ %3077, %3861 ], [ %3077, %3859 ], [ %3077, %3846 ], [ %3843, %3816 ]
  %3898 = and i32 %3808, 12
  %3899 = icmp eq i32 %3898, 12
  br i1 %3899, label %4006, label %3900

; <label>:3900                                    ; preds = %3889
  %3901 = and i32 %3808, 2097184
  %3902 = icmp eq i32 %3901, 2097184
  %3903 = select i1 %3902, float %3375, float 0.000000e+00
  %3904 = and i32 %3808, 4194336
  %3905 = icmp eq i32 %3904, 4194336
  %3906 = select i1 %3905, float %3375, float 0.000000e+00
  %3907 = and i32 %3808, 8388640
  %3908 = icmp eq i32 %3907, 8388640
  %3909 = select i1 %3908, float %3375, float 0.000000e+00
  %3910 = and i32 %3808, 2048
  %3911 = icmp ne i32 %3910, 0
  %3912 = select i1 %3911, float %3375, float 0.000000e+00
  %3913 = and i32 %3808, 8192
  %3914 = icmp ne i32 %3913, 0
  %3915 = select i1 %3914, float %3375, float 0.000000e+00
  %3916 = icmp eq i32 %3898, 0
  br i1 %3916, label %3917, label %3942

; <label>:3917                                    ; preds = %3900
  %3918 = fsub fast float %3676, %3062
  %3919 = fsub fast float %3677, %3063
  %3920 = fmul fast float %3903, %3918
  %3921 = fmul fast float %3903, %3919
  %3922 = fadd fast float %3920, %3062
  %3923 = fadd fast float %3921, %3063
  %3924 = fsub fast float %3678, %3075
  %3925 = fmul fast float %3906, %3924
  %3926 = fadd fast float %3925, %3075
  %3927 = fsub fast float %3675, %3074
  %3928 = fmul fast float %3909, %3927
  %3929 = fadd fast float %3928, %3074
  %3930 = fsub fast float %3778, %3076
  %3931 = fmul fast float %3912, %3930
  %3932 = fadd fast float %3931, %3076
  %3933 = fsub fast float %3775, %3067
  %3934 = fsub fast float %3776, %3068
  %3935 = fsub fast float %3777, %3069
  %3936 = fmul fast float %3915, %3933
  %3937 = fmul fast float %3915, %3934
  %3938 = fmul fast float %3915, %3935
  %3939 = fadd fast float %3936, %3067
  %3940 = fadd fast float %3937, %3068
  %3941 = fadd fast float %3938, %3069
  br label %4006

; <label>:3942                                    ; preds = %3900
  %3943 = icmp eq i32 %3898, 4
  br i1 %3943, label %3944, label %3984

; <label>:3944                                    ; preds = %3942
  %3945 = fmul fast float %3903, %3676
  %3946 = fmul fast float %3903, %3677
  %3947 = fadd fast float %3945, %3062
  %3948 = fadd fast float %3946, %3063
  %3949 = call float @dx.op.binary.f32(i32 36, float %3075, float %3678)  ; FMin(a,b)
  %3950 = fsub fast float %3949, %3075
  %3951 = fmul fast float %3950, %3906
  %3952 = fadd fast float %3951, %3075
  %3953 = fadd fast float %3675, %3074
  %3954 = fmul fast float %3953, 0x3FF337FAE0000000
  %3955 = fmul fast float %3074, %3074
  %3956 = fmul fast float %3675, %3675
  %3957 = fadd fast float %3956, %3955
  %3958 = fmul fast float %3957, 0x3FE5152B00000000
  %3959 = fmul fast float %3074, 0xBFCC1F85E0000000
  %3960 = fmul fast float %3959, %3675
  %3961 = fadd fast float %3960, 0xBFE1363700000000
  %3962 = fadd fast float %3961, %3954
  %3963 = fsub fast float %3962, %3958
  %3964 = fmul fast float %3953, 0x3FBA6F0D00000000
  %3965 = fmul fast float %3957, 0x3FD0432880000000
  %3966 = fmul fast float %3074, 0xBFEF110800000000
  %3967 = fmul fast float %3966, %3675
  %3968 = fadd fast float %3967, 1.000000e+00
  %3969 = fsub fast float %3968, %3964
  %3970 = fadd fast float %3969, %3965
  %3971 = fdiv fast float %3963, %3970
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fsub fast float %3972, %3074
  %3974 = fmul fast float %3973, %3909
  %3975 = fadd fast float %3974, %3074
  %3976 = fmul fast float %3912, %3778
  %3977 = fadd fast float %3976, %3076
  %3978 = fmul fast float %3915, %3775
  %3979 = fmul fast float %3915, %3776
  %3980 = fmul fast float %3915, %3777
  %3981 = fadd fast float %3978, %3067
  %3982 = fadd fast float %3979, %3068
  %3983 = fadd fast float %3980, %3069
  br label %4006

; <label>:3984                                    ; preds = %3942
  %3985 = icmp eq i32 %3898, 8
  br i1 %3985, label %3986, label %4006

; <label>:3986                                    ; preds = %3984
  %3987 = fmul fast float %3903, %3676
  %3988 = fmul fast float %3903, %3677
  %3989 = fadd fast float %3987, %3062
  %3990 = fadd fast float %3988, %3063
  %3991 = call float @dx.op.binary.f32(i32 36, float %3075, float %3678)  ; FMin(a,b)
  %3992 = fsub fast float %3991, %3075
  %3993 = fmul fast float %3992, %3906
  %3994 = fadd fast float %3993, %3075
  %3995 = fsub fast float %3675, %3074
  %3996 = fmul fast float %3909, %3995
  %3997 = fadd fast float %3996, %3074
  %3998 = fmul fast float %3912, %3778
  %3999 = fadd fast float %3998, %3076
  %4000 = fmul fast float %3915, %3775
  %4001 = fmul fast float %3915, %3776
  %4002 = fmul fast float %3915, %3777
  %4003 = fadd fast float %4000, %3067
  %4004 = fadd fast float %4001, %3068
  %4005 = fadd fast float %4002, %3069
  br label %4006

; <label>:4006                                    ; preds = %3986, %3984, %3944, %3917, %3889, %3374, %3078, %3061
  %4007 = phi float [ %3062, %3889 ], [ %3062, %3374 ], [ %3062, %3061 ], [ %3062, %3078 ], [ %3922, %3917 ], [ %3947, %3944 ], [ %3062, %3984 ], [ %3989, %3986 ]
  %4008 = phi float [ %3063, %3889 ], [ %3063, %3374 ], [ %3063, %3061 ], [ %3063, %3078 ], [ %3923, %3917 ], [ %3948, %3944 ], [ %3063, %3984 ], [ %3990, %3986 ]
  %4009 = phi float [ %3890, %3889 ], [ %3064, %3374 ], [ %3064, %3061 ], [ %3064, %3078 ], [ %3890, %3917 ], [ %3890, %3944 ], [ %3890, %3984 ], [ %3890, %3986 ]
  %4010 = phi float [ %3891, %3889 ], [ %3065, %3374 ], [ %3065, %3061 ], [ %3065, %3078 ], [ %3891, %3917 ], [ %3891, %3944 ], [ %3891, %3984 ], [ %3891, %3986 ]
  %4011 = phi float [ %3892, %3889 ], [ %3066, %3374 ], [ %3066, %3061 ], [ %3066, %3078 ], [ %3892, %3917 ], [ %3892, %3944 ], [ %3892, %3984 ], [ %3892, %3986 ]
  %4012 = phi float [ %3067, %3889 ], [ %3067, %3374 ], [ %3067, %3061 ], [ %3067, %3078 ], [ %3939, %3917 ], [ %3981, %3944 ], [ %3067, %3984 ], [ %4003, %3986 ]
  %4013 = phi float [ %3068, %3889 ], [ %3068, %3374 ], [ %3068, %3061 ], [ %3068, %3078 ], [ %3940, %3917 ], [ %3982, %3944 ], [ %3068, %3984 ], [ %4004, %3986 ]
  %4014 = phi float [ %3069, %3889 ], [ %3069, %3374 ], [ %3069, %3061 ], [ %3069, %3078 ], [ %3941, %3917 ], [ %3983, %3944 ], [ %3069, %3984 ], [ %4005, %3986 ]
  %4015 = phi float [ %3893, %3889 ], [ %3070, %3374 ], [ %3070, %3061 ], [ %3070, %3078 ], [ %3893, %3917 ], [ %3893, %3944 ], [ %3893, %3984 ], [ %3893, %3986 ]
  %4016 = phi float [ %3894, %3889 ], [ %3071, %3374 ], [ %3071, %3061 ], [ %3071, %3078 ], [ %3894, %3917 ], [ %3894, %3944 ], [ %3894, %3984 ], [ %3894, %3986 ]
  %4017 = phi float [ %3895, %3889 ], [ %3072, %3374 ], [ %3072, %3061 ], [ %3072, %3078 ], [ %3895, %3917 ], [ %3895, %3944 ], [ %3895, %3984 ], [ %3895, %3986 ]
  %4018 = phi float [ %3896, %3889 ], [ %3073, %3374 ], [ %3073, %3061 ], [ %3073, %3078 ], [ %3896, %3917 ], [ %3896, %3944 ], [ %3896, %3984 ], [ %3896, %3986 ]
  %4019 = phi float [ %3074, %3889 ], [ %3074, %3374 ], [ %3074, %3061 ], [ %3074, %3078 ], [ %3929, %3917 ], [ %3975, %3944 ], [ %3074, %3984 ], [ %3997, %3986 ]
  %4020 = phi float [ %3075, %3889 ], [ %3075, %3374 ], [ %3075, %3061 ], [ %3075, %3078 ], [ %3926, %3917 ], [ %3952, %3944 ], [ %3075, %3984 ], [ %3994, %3986 ]
  %4021 = phi float [ %3076, %3889 ], [ %3076, %3374 ], [ %3076, %3061 ], [ %3076, %3078 ], [ %3932, %3917 ], [ %3977, %3944 ], [ %3076, %3984 ], [ %3999, %3986 ]
  %4022 = phi float [ %3897, %3889 ], [ %3077, %3374 ], [ %3077, %3061 ], [ %3077, %3078 ], [ %3897, %3917 ], [ %3897, %3944 ], [ %3897, %3984 ], [ %3897, %3986 ]
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call float @dx.op.dot2.f32(i32 54, float %4007, float %4008, float %4007, float %4008)  ; Dot2(ax,ay,bx,by)
  %4026 = fmul fast float %4025, 0x3FE3333340000000
  %4027 = fsub fast float 1.000000e+00, %4026
  %4028 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4027, float %4007, float %4008, float %4027)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = call float @dx.op.unary.f32(i32 25, float %4028)  ; Rsqrt(value)
  %4030 = fmul fast float %4029, %4007
  %4031 = fmul fast float %4029, %4008
  %4032 = fmul fast float %4027, %4029
  %4033 = fmul fast float %4032, %107
  %4034 = fmul fast float %4032, %108
  %4035 = fmul fast float %4032, %109
  %4036 = fmul fast float %4030, %75
  %4037 = fmul fast float %4030, %76
  %4038 = fmul fast float %4030, %77
  %4039 = fadd fast float %4033, %4036
  %4040 = fadd fast float %4034, %4037
  %4041 = fadd fast float %4035, %4038
  %4042 = fmul fast float %119, %4031
  %4043 = fmul fast float %120, %4031
  %4044 = fmul fast float %121, %4031
  %4045 = fadd fast float %4039, %4042
  %4046 = fadd fast float %4040, %4043
  %4047 = fadd fast float %4041, %4044
  %4048 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4046, float %4047, float %4045, float %4046, float %4047)  ; Dot3(ax,ay,az,bx,by,bz)
  %4049 = call float @dx.op.unary.f32(i32 25, float %4048)  ; Rsqrt(value)
  %4050 = fmul fast float %4045, %4049
  %4051 = fmul fast float %4046, %4049
  %4052 = fmul fast float %4047, %4049
  %4053 = and i32 %56, 1
  %4054 = icmp eq i32 %4053, 0
  br i1 %4054, label %4055, label %4616

; <label>:4055                                    ; preds = %4006
  %4056 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4057 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4058 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4059 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4060 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4061 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4062 = fadd fast float %4056, %155
  %4063 = fadd fast float %4057, %156
  %4064 = fadd fast float %4058, %157
  %4065 = fadd fast float %4059, %155
  %4066 = fadd fast float %4060, %156
  %4067 = fadd fast float %4061, %157
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4075 = fmul fast float %4069, %100
  %4076 = fmul fast float %4075, %4073
  %4077 = fmul fast float %4070, %101
  %4078 = fmul fast float %4077, %4074
  %4079 = fptoui float %4076 to i32
  %4080 = fptoui float %4078 to i32
  %4081 = fadd fast float %4069, -1.000000e+00
  %4082 = fadd fast float %4070, -1.000000e+00
  %4083 = fptoui float %4081 to i32
  %4084 = fptoui float %4082 to i32
  %4085 = call i32 @dx.op.binary.i32(i32 40, i32 %4079, i32 %4083)  ; UMin(a,b)
  %4086 = call i32 @dx.op.binary.i32(i32 40, i32 %4080, i32 %4084)  ; UMin(a,b)
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4090 = fmul fast float %4088, %91
  %4091 = fsub fast float %4090, %4089
  %4092 = fadd fast float %4071, -1.000000e+00
  %4093 = call float @dx.op.binary.f32(i32 36, float %4091, float %4092)  ; FMin(a,b)
  %4094 = fptoui float %4093 to i32
  %4095 = fptoui float %4069 to i32
  %4096 = fptoui float %4070 to i32
  %4097 = mul i32 %4094, %4096
  %4098 = add i32 %4097, %4086
  %4099 = mul i32 %4098, %4095
  %4100 = add i32 %4099, %4085
  %4101 = shl i32 %4100, 2
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = and i32 %4103, 1023
  %4105 = lshr i32 %4103, 10
  %4106 = icmp eq i32 %4104, 0
  br i1 %4106, label %4582, label %4107

; <label>:4107                                    ; preds = %4055
  %4108 = and i32 %4103, 1023
  br label %4109

; <label>:4109                                    ; preds = %4238, %4107
  %4110 = phi i32 [ %4188, %4238 ], [ 0, %4107 ]
  %4111 = phi float [ %4239, %4238 ], [ 0.000000e+00, %4107 ]
  %4112 = phi float [ %4240, %4238 ], [ %4024, %4107 ]
  %4113 = phi float [ %4241, %4238 ], [ %4022, %4107 ]
  %4114 = phi float [ %4242, %4238 ], [ 0.000000e+00, %4107 ]
  %4115 = phi float [ %4243, %4238 ], [ 0.000000e+00, %4107 ]
  %4116 = phi float [ %4244, %4238 ], [ %4012, %4107 ]
  %4117 = phi float [ %4245, %4238 ], [ %4013, %4107 ]
  %4118 = phi float [ %4246, %4238 ], [ %4014, %4107 ]
  %4119 = phi float [ %4247, %4238 ], [ %4009, %4107 ]
  %4120 = phi float [ %4248, %4238 ], [ %4010, %4107 ]
  %4121 = phi float [ %4249, %4238 ], [ %4011, %4107 ]
  %4122 = phi float [ %4250, %4238 ], [ %4050, %4107 ]
  %4123 = phi float [ %4251, %4238 ], [ %4051, %4107 ]
  %4124 = phi float [ %4252, %4238 ], [ %4052, %4107 ]
  %4125 = phi float [ %4253, %4238 ], [ %4020, %4107 ]
  %4126 = phi float [ %4254, %4238 ], [ %4019, %4107 ]
  %4127 = phi float [ %4255, %4238 ], [ 0.000000e+00, %4107 ]
  %4128 = phi float [ %4256, %4238 ], [ %4018, %4107 ]
  %4129 = phi float [ %4257, %4238 ], [ %4015, %4107 ]
  %4130 = phi float [ %4258, %4238 ], [ %4016, %4107 ]
  %4131 = phi float [ %4259, %4238 ], [ %4017, %4107 ]
  %4132 = add nuw nsw i32 %4110, %4105
  %4133 = shl i32 %4132, 2
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = shl i32 %4135, 8
  %4137 = or i32 %4136, 48
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.ResRet.f32 %4138, 3
  %4143 = or i32 %4136, 64
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.i32 %4144, 1
  %4147 = or i32 %4136, 80
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4151 = or i32 %4136, 96
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = or i32 %4136, 112
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4160 = or i32 %4136, 128
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4161, 3
  %4166 = or i32 %4136, 144
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = or i32 %4136, 160
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = or i32 %4136, 192
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = or i32 %4136, 208
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = or i32 %4136, 248
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = add nuw nsw i32 %4110, 1
  %4189 = bitcast float %4142 to i32
  %4190 = and i32 %4189, 512
  %4191 = icmp eq i32 %4190, 0
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4192, 3
  %4197 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4198 = or i32 %4136, 16
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = call float @dx.op.dot4.f32(i32 56, float %4200, float %4201, float %4202, float %4203, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4205 = or i32 %4136, 32
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = call float @dx.op.dot4.f32(i32 56, float %4207, float %4208, float %4209, float %4210, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4212 = call float @dx.op.unary.f32(i32 27, float %4197)  ; Round_ni(value)
  %4213 = call float @dx.op.unary.f32(i32 6, float %4212)  ; FAbs(value)
  %4214 = call float @dx.op.unary.f32(i32 27, float %4204)  ; Round_ni(value)
  %4215 = call float @dx.op.unary.f32(i32 6, float %4214)  ; FAbs(value)
  %4216 = call float @dx.op.unary.f32(i32 6, float %4211)  ; FAbs(value)
  %4217 = call float @dx.op.unary.f32(i32 27, float %4216)  ; Round_ni(value)
  %4218 = fadd fast float %4215, %4213
  %4219 = fadd fast float %4218, %4217
  %4220 = fcmp fast oeq float %4219, 0.000000e+00
  %4221 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %4062, float %4063, float %4064, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4222 = call float @dx.op.dot4.f32(i32 56, float %4200, float %4201, float %4202, float %4203, float %4062, float %4063, float %4064, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4223 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %4065, float %4066, float %4067, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4224 = call float @dx.op.dot4.f32(i32 56, float %4200, float %4201, float %4202, float %4203, float %4065, float %4066, float %4067, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4225 = fsub fast float %4221, %4197
  %4226 = fsub fast float %4223, %4197
  %4227 = fsub fast float %4222, %4204
  %4228 = fsub fast float %4224, %4204
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4141, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 2
  %4232 = fadd fast float %4231, %4229
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4230, 0
  %4235 = fcmp fast ogt float %4233, %4234
  %4236 = and i1 %4220, %4235
  %4237 = and i1 %4191, %4236
  br i1 %4237, label %4261, label %4238

; <label>:4238                                    ; preds = %4568, %4342, %4261, %4109
  %4239 = phi float [ %4111, %4261 ], [ %4345, %4342 ], [ %4345, %4568 ], [ %4111, %4109 ]
  %4240 = phi float [ %4112, %4261 ], [ %4112, %4342 ], [ %4544, %4568 ], [ %4112, %4109 ]
  %4241 = phi float [ %4113, %4261 ], [ %4113, %4342 ], [ %4542, %4568 ], [ %4113, %4109 ]
  %4242 = phi float [ %4114, %4261 ], [ %4114, %4342 ], [ %4469, %4568 ], [ %4114, %4109 ]
  %4243 = phi float [ %4115, %4261 ], [ %4115, %4342 ], [ %4467, %4568 ], [ %4115, %4109 ]
  %4244 = phi float [ %4116, %4261 ], [ %4116, %4342 ], [ %4512, %4568 ], [ %4116, %4109 ]
  %4245 = phi float [ %4117, %4261 ], [ %4117, %4342 ], [ %4513, %4568 ], [ %4117, %4109 ]
  %4246 = phi float [ %4118, %4261 ], [ %4118, %4342 ], [ %4514, %4568 ], [ %4118, %4109 ]
  %4247 = phi float [ %4119, %4261 ], [ %4119, %4342 ], [ %4578, %4568 ], [ %4119, %4109 ]
  %4248 = phi float [ %4120, %4261 ], [ %4120, %4342 ], [ %4579, %4568 ], [ %4120, %4109 ]
  %4249 = phi float [ %4121, %4261 ], [ %4121, %4342 ], [ %4580, %4568 ], [ %4121, %4109 ]
  %4250 = phi float [ %4122, %4261 ], [ %4122, %4342 ], [ %4448, %4568 ], [ %4122, %4109 ]
  %4251 = phi float [ %4123, %4261 ], [ %4123, %4342 ], [ %4449, %4568 ], [ %4123, %4109 ]
  %4252 = phi float [ %4124, %4261 ], [ %4124, %4342 ], [ %4450, %4568 ], [ %4124, %4109 ]
  %4253 = phi float [ %4125, %4261 ], [ %4125, %4342 ], [ %4522, %4568 ], [ %4125, %4109 ]
  %4254 = phi float [ %4126, %4261 ], [ %4126, %4342 ], [ %4519, %4568 ], [ %4126, %4109 ]
  %4255 = phi float [ %4127, %4261 ], [ %4127, %4342 ], [ %4516, %4568 ], [ %4127, %4109 ]
  %4256 = phi float [ %4128, %4261 ], [ %4128, %4342 ], [ %4465, %4568 ], [ %4128, %4109 ]
  %4257 = phi float [ %4129, %4261 ], [ %4129, %4342 ], [ %4460, %4568 ], [ %4129, %4109 ]
  %4258 = phi float [ %4130, %4261 ], [ %4130, %4342 ], [ %4461, %4568 ], [ %4130, %4109 ]
  %4259 = phi float [ %4131, %4261 ], [ %4131, %4342 ], [ %4462, %4568 ], [ %4131, %4109 ]
  %4260 = icmp eq i32 %4188, %4108
  br i1 %4260, label %4581, label %4109

; <label>:4261                                    ; preds = %4109
  %4262 = extractvalue %dx.types.ResRet.f32 %4158, 3
  %4263 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4264 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4267 = extractvalue %dx.types.ResRet.i32 %4144, 3
  %4268 = extractvalue %dx.types.ResRet.i32 %4144, 2
  %4269 = add i32 %4267, 0
  %4270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4269, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4270, %dx.types.Handle %4271, float %4197, float %4204, float undef, float undef, i32 0, i32 0, i32 undef, float %4225, float %4227, float undef, float %4226, float %4228, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = fmul fast float %4273, %4266
  %4275 = fadd fast float %4274, %4265
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4197, %4153
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4204, float %4277)  ; FMad(a,b,c)
  %4279 = fadd fast float %4278, %4264
  %4280 = fmul fast float %4197, %4155
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4204, float %4280)  ; FMad(a,b,c)
  %4282 = fadd fast float %4281, %4263
  %4283 = fmul fast float %4225, %4153
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4227, float %4283)  ; FMad(a,b,c)
  %4285 = fmul fast float %4225, %4155
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4227, float %4285)  ; FMad(a,b,c)
  %4287 = fmul fast float %4226, %4153
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4228, float %4287)  ; FMad(a,b,c)
  %4289 = fmul fast float %4226, %4155
  %4290 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4228, float %4289)  ; FMad(a,b,c)
  %4291 = add i32 %4268, 0
  %4292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4292, %dx.types.Handle %4271, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = and i32 %4189, 1024
  %4296 = icmp ne i32 %4295, 0
  %4297 = fcmp fast ogt float %4294, 0x3FE0101020000000
  %4298 = uitofp i1 %4297 to float
  %4299 = select i1 %4296, float %4298, float %4294
  %4300 = and i32 %4189, 8192
  %4301 = icmp ne i32 %4300, 0
  %4302 = select i1 %4301, float %4262, float 1.000000e+00
  %4303 = fmul fast float %4197, 2.000000e+00
  %4304 = fadd fast float %4303, -1.000000e+00
  %4305 = call float @dx.op.unary.f32(i32 6, float %4304)  ; FAbs(value)
  %4306 = fmul fast float %4305, %4186
  %4307 = fsub fast float %4306, %4186
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4204, 2.000000e+00
  %4310 = fadd fast float %4309, -1.000000e+00
  %4311 = call float @dx.op.unary.f32(i32 6, float %4310)  ; FAbs(value)
  %4312 = fmul fast float %4311, %4187
  %4313 = fsub fast float %4312, %4187
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4216, %4149
  %4316 = fsub fast float %4315, %4149
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4276, %4302
  %4319 = fmul fast float %4318, %4273
  %4320 = fmul fast float %4319, %4308
  %4321 = fmul fast float %4320, %4299
  %4322 = fmul fast float %4321, %4314
  %4323 = fmul fast float %4322, %4317
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4327 = fsub fast float %4233, %4326
  %4328 = fmul fast float %4327, %4325
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4323, %4150
  %4331 = fadd fast float %4323, %4150
  %4332 = fmul fast float %4331, %4159
  %4333 = fsub fast float %4332, %4159
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = and i32 %4189, 128
  %4336 = icmp ne i32 %4335, 0
  %4337 = select i1 %4336, float %4334, float %4330
  %4338 = fmul fast float %4337, %4329
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = fcmp fast ugt float %4338, %4340
  br i1 %4341, label %4342, label %4238

; <label>:4342                                    ; preds = %4261
  %4343 = select i1 %4301, float %4338, float 0.000000e+00
  %4344 = fadd fast float %4343, %4111
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  br i1 %4301, label %4238, label %4346

; <label>:4346                                    ; preds = %4342
  %4347 = and i32 %4189, 4
  %4348 = and i32 %4189, 8
  %4349 = add i32 %4145, 0
  %4350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4350, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = extractvalue %dx.types.ResRet.f32 %4352, 3
  %4357 = bitcast float %4171 to i32
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = lshr i32 %4357, 8
  %4361 = and i32 %4360, 255
  %4362 = uitofp i32 %4361 to float
  %4363 = fmul fast float %4356, %4359
  %4364 = fadd fast float %4363, %4362
  %4365 = fmul fast float %4364, 0x3F70101000000000
  %4366 = add i32 %4146, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = extractvalue %dx.types.ResRet.f32 %4368, 3
  %4373 = bitcast float %4165 to i32
  %4374 = and i32 %4373, 255
  %4375 = uitofp i32 %4374 to float
  %4376 = lshr i32 %4373, 8
  %4377 = and i32 %4376, 255
  %4378 = uitofp i32 %4377 to float
  %4379 = lshr i32 %4373, 16
  %4380 = and i32 %4379, 255
  %4381 = uitofp i32 %4380 to float
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = fmul fast float %4369, %4375
  %4384 = fadd fast float %4383, %4378
  %4385 = fmul fast float %4384, 0x3F70101000000000
  %4386 = fadd fast float %4370, -5.000000e-01
  %4387 = fadd fast float %4372, -5.000000e-01
  %4388 = fmul fast float %4386, %4382
  %4389 = fmul fast float %4387, %4382
  %4390 = fadd fast float %4388, 5.000000e-01
  %4391 = fadd fast float %4389, 5.000000e-01
  %4392 = fmul fast float %4353, %4174
  %4393 = fmul fast float %4354, %4175
  %4394 = fmul fast float %4355, %4176
  %4395 = fmul fast float %4390, 2.000000e+00
  %4396 = fadd fast float %4395, -1.000000e+00
  %4397 = fmul fast float %4391, 2.000000e+00
  %4398 = fadd fast float %4397, -1.000000e+00
  %4399 = fadd fast float %4396, %4398
  %4400 = fmul fast float %4399, 5.000000e-01
  %4401 = fsub fast float %4396, %4398
  %4402 = fmul fast float %4401, 5.000000e-01
  %4403 = call float @dx.op.unary.f32(i32 6, float %4400)  ; FAbs(value)
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = call float @dx.op.unary.f32(i32 6, float %4402)  ; FAbs(value)
  %4406 = fsub fast float %4404, %4405
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4402, float %4406, float %4400, float %4402, float %4406)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  %4409 = fmul fast float %4400, %4408
  %4410 = fmul fast float %4402, %4408
  %4411 = fmul fast float %4408, %4406
  %4412 = fmul fast float %4411, %4139
  %4413 = fmul fast float %4411, %4140
  %4414 = fmul fast float %4411, %4141
  %4415 = fmul fast float %4409, %4162
  %4416 = fmul fast float %4409, %4163
  %4417 = fmul fast float %4409, %4164
  %4418 = fadd fast float %4415, %4412
  %4419 = fadd fast float %4416, %4413
  %4420 = fadd fast float %4417, %4414
  %4421 = fmul fast float %4410, %4168
  %4422 = fmul fast float %4410, %4169
  %4423 = fmul fast float %4410, %4170
  %4424 = fadd fast float %4418, %4421
  %4425 = fadd fast float %4419, %4422
  %4426 = fadd fast float %4420, %4423
  %4427 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float %4424, float %4425, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = call float @dx.op.unary.f32(i32 25, float %4427)  ; Rsqrt(value)
  %4429 = fmul fast float %4424, %4428
  %4430 = fmul fast float %4425, %4428
  %4431 = fmul fast float %4426, %4428
  %4432 = icmp ne i32 %4348, 0
  %4433 = select i1 %4432, float 1.000000e+00, float 0.000000e+00
  %4434 = fmul fast float %4338, %4433
  %4435 = and i32 %4189, 1
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4437, label %4441

; <label>:4437                                    ; preds = %4346
  %4438 = fsub fast float %4429, %4122
  %4439 = fsub fast float %4430, %4123
  %4440 = fsub fast float %4431, %4124
  br label %4441

; <label>:4441                                    ; preds = %4437, %4346
  %4442 = phi float [ %4438, %4437 ], [ %4429, %4346 ]
  %4443 = phi float [ %4439, %4437 ], [ %4430, %4346 ]
  %4444 = phi float [ %4440, %4437 ], [ %4431, %4346 ]
  %4445 = fmul float %4444, %4434
  %4446 = fmul float %4443, %4434
  %4447 = fmul float %4442, %4434
  %4448 = fadd fast float %4447, %4122
  %4449 = fadd fast float %4446, %4123
  %4450 = fadd fast float %4445, %4124
  %4451 = icmp ne i32 %4347, 0
  %4452 = select i1 %4451, float 1.000000e+00, float 0.000000e+00
  %4453 = fmul fast float %4338, %4452
  %4454 = fsub fast float %4392, %4129
  %4455 = fsub fast float %4393, %4130
  %4456 = fsub fast float %4394, %4131
  %4457 = fmul fast float %4454, %4453
  %4458 = fmul fast float %4455, %4453
  %4459 = fmul fast float %4456, %4453
  %4460 = fadd fast float %4457, %4129
  %4461 = fadd fast float %4458, %4130
  %4462 = fadd fast float %4459, %4131
  %4463 = fsub fast float %4365, %4128
  %4464 = fmul fast float %4463, %4453
  %4465 = fadd fast float %4464, %4128
  %4466 = fmul fast float %4453, %4115
  %4467 = fsub fast float %4115, %4466
  %4468 = fmul fast float %4453, %4114
  %4469 = fsub fast float %4114, %4468
  %4470 = bitcast float %4183 to i32
  %4471 = lshr i32 %4470, 16
  %4472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4471)  ; LegacyF16ToF32(value)
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = and i32 %4474, 1
  %4476 = icmp eq i32 %4475, 0
  br i1 %4476, label %4477, label %4502

; <label>:4477                                    ; preds = %4441
  %4478 = fadd fast float %4365, 0xBFB99999A0000000
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %4479, 0x3FF1C71C80000000
  %4481 = fsub fast float 1.000000e+00, %4480
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, %4392
  %4484 = fmul fast float %4482, %4393
  %4485 = fmul fast float %4482, %4394
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.binary.f32(i32 35, float %4487, float %4488)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4486, float %4489)  ; FMax(a,b)
  %4491 = fcmp fast ogt float %4490, 0.000000e+00
  %4492 = bitcast float %4490 to i32
  %4493 = sub nsw i32 2129859010, %4492
  %4494 = bitcast i32 %4493 to float
  %4495 = select i1 %4491, float %4494, float 0.000000e+00
  %4496 = fmul fast float %4486, %4472
  %4497 = fmul fast float %4487, %4472
  %4498 = fmul fast float %4488, %4472
  %4499 = fmul fast float %4496, %4495
  %4500 = fmul fast float %4497, %4495
  %4501 = fmul fast float %4498, %4495
  br label %4502

; <label>:4502                                    ; preds = %4477, %4441
  %4503 = phi float [ %4472, %4441 ], [ %4499, %4477 ]
  %4504 = phi float [ %4472, %4441 ], [ %4500, %4477 ]
  %4505 = phi float [ %4472, %4441 ], [ %4501, %4477 ]
  %4506 = fsub fast float %4503, %4116
  %4507 = fsub fast float %4504, %4117
  %4508 = fsub fast float %4505, %4118
  %4509 = fmul fast float %4506, %4453
  %4510 = fmul fast float %4507, %4453
  %4511 = fmul fast float %4508, %4453
  %4512 = fadd fast float %4509, %4116
  %4513 = fadd fast float %4510, %4117
  %4514 = fadd fast float %4511, %4118
  %4515 = fadd fast float %4338, %4127
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fsub fast float %4385, %4126
  %4518 = fmul fast float %4517, %4434
  %4519 = fadd fast float %4518, %4126
  %4520 = fsub fast float %4371, %4125
  %4521 = fmul fast float %4520, %4434
  %4522 = fadd fast float %4521, %4125
  %4523 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4527 = fmul fast float %4526, %4523
  %4528 = fadd fast float %4527, %4525
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = bitcast float %4177 to i32
  %4531 = and i32 %4530, 65535
  %4532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4531)  ; LegacyF16ToF32(value)
  %4533 = lshr i32 %4530, 16
  %4534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4533)  ; LegacyF16ToF32(value)
  %4535 = fcmp fast oge float %4532, 0.000000e+00
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = select i1 %4535, float %4532, float %4537
  %4539 = fadd fast float %4538, %4534
  %4540 = fsub fast float %4529, %4113
  %4541 = fmul fast float %4540, %4338
  %4542 = fadd fast float %4541, %4113
  %4543 = fmul fast float %4539, %4338
  %4544 = call float @dx.op.binary.f32(i32 35, float %4112, float %4543)  ; FMax(a,b)
  %4545 = and i32 %4189, 16
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %4568, label %4547

; <label>:4547                                    ; preds = %4502
  %4548 = add i32 %4180, 0
  %4549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4550 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4549, %dx.types.Handle %4351, float %4279, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4284, float %4286, float undef, float %4288, float %4290, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4553 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4554 = and i32 %4470, 65535
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = fmul fast float %4551, %4174
  %4557 = fmul fast float %4552, %4175
  %4558 = fmul fast float %4553, %4176
  %4559 = and i32 %4189, 16384
  %4560 = icmp ne i32 %4559, 0
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = select i1 %4560, float %4562, float 1.000000e+00
  %4564 = fmul fast float %4563, %4555
  %4565 = fmul fast float %4556, %4564
  %4566 = fmul fast float %4557, %4564
  %4567 = fmul fast float %4558, %4564
  br label %4568

; <label>:4568                                    ; preds = %4547, %4502
  %4569 = phi float [ %4565, %4547 ], [ 0.000000e+00, %4502 ]
  %4570 = phi float [ %4566, %4547 ], [ 0.000000e+00, %4502 ]
  %4571 = phi float [ %4567, %4547 ], [ 0.000000e+00, %4502 ]
  %4572 = fsub fast float %4569, %4119
  %4573 = fsub fast float %4570, %4120
  %4574 = fsub fast float %4571, %4121
  %4575 = fmul fast float %4572, %4338
  %4576 = fmul fast float %4573, %4338
  %4577 = fmul fast float %4574, %4338
  %4578 = fadd fast float %4575, %4119
  %4579 = fadd fast float %4576, %4120
  %4580 = fadd fast float %4577, %4121
  br label %4238

; <label>:4581                                    ; preds = %4238
  br label %4582

; <label>:4582                                    ; preds = %4581, %4055
  %4583 = phi float [ 0.000000e+00, %4055 ], [ %4239, %4581 ]
  %4584 = phi float [ %4024, %4055 ], [ %4240, %4581 ]
  %4585 = phi float [ %4022, %4055 ], [ %4241, %4581 ]
  %4586 = phi float [ 0.000000e+00, %4055 ], [ %4242, %4581 ]
  %4587 = phi float [ 0.000000e+00, %4055 ], [ %4243, %4581 ]
  %4588 = phi float [ %4012, %4055 ], [ %4244, %4581 ]
  %4589 = phi float [ %4013, %4055 ], [ %4245, %4581 ]
  %4590 = phi float [ %4014, %4055 ], [ %4246, %4581 ]
  %4591 = phi float [ %4009, %4055 ], [ %4247, %4581 ]
  %4592 = phi float [ %4010, %4055 ], [ %4248, %4581 ]
  %4593 = phi float [ %4011, %4055 ], [ %4249, %4581 ]
  %4594 = phi float [ %4050, %4055 ], [ %4250, %4581 ]
  %4595 = phi float [ %4051, %4055 ], [ %4251, %4581 ]
  %4596 = phi float [ %4052, %4055 ], [ %4252, %4581 ]
  %4597 = phi float [ %4020, %4055 ], [ %4253, %4581 ]
  %4598 = phi float [ %4019, %4055 ], [ %4254, %4581 ]
  %4599 = phi float [ 0.000000e+00, %4055 ], [ %4255, %4581 ]
  %4600 = phi float [ %4018, %4055 ], [ %4256, %4581 ]
  %4601 = phi float [ %4015, %4055 ], [ %4257, %4581 ]
  %4602 = phi float [ %4016, %4055 ], [ %4258, %4581 ]
  %4603 = phi float [ %4017, %4055 ], [ %4259, %4581 ]
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float %4594, float %4595, float %4596)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 25, float %4604)  ; Rsqrt(value)
  %4606 = fmul fast float %4605, %4594
  %4607 = fmul fast float %4605, %4595
  %4608 = fmul fast float %4605, %4596
  %4609 = fadd fast float %4599, %1183
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = call float @dx.op.unary.f32(i32 25, float %4611)  ; Rsqrt(value)
  %4613 = fmul fast float %4612, %4606
  %4614 = fmul fast float %4612, %4607
  %4615 = fmul fast float %4612, %4608
  br label %4616

; <label>:4616                                    ; preds = %4582, %4006
  %4617 = phi float [ %4613, %4582 ], [ %4050, %4006 ]
  %4618 = phi float [ %4614, %4582 ], [ %4051, %4006 ]
  %4619 = phi float [ %4615, %4582 ], [ %4052, %4006 ]
  %4620 = phi float [ %4591, %4582 ], [ %4009, %4006 ]
  %4621 = phi float [ %4592, %4582 ], [ %4010, %4006 ]
  %4622 = phi float [ %4593, %4582 ], [ %4011, %4006 ]
  %4623 = phi float [ %4601, %4582 ], [ %4015, %4006 ]
  %4624 = phi float [ %4602, %4582 ], [ %4016, %4006 ]
  %4625 = phi float [ %4603, %4582 ], [ %4017, %4006 ]
  %4626 = phi float [ %4588, %4582 ], [ %4012, %4006 ]
  %4627 = phi float [ %4589, %4582 ], [ %4013, %4006 ]
  %4628 = phi float [ %4590, %4582 ], [ %4014, %4006 ]
  %4629 = phi float [ %4600, %4582 ], [ %4018, %4006 ]
  %4630 = phi float [ %4610, %4582 ], [ %1183, %4006 ]
  %4631 = phi float [ %4598, %4582 ], [ %4019, %4006 ]
  %4632 = phi float [ %4597, %4582 ], [ %4020, %4006 ]
  %4633 = phi float [ %4587, %4582 ], [ 0.000000e+00, %4006 ]
  %4634 = phi float [ %4586, %4582 ], [ 0.000000e+00, %4006 ]
  %4635 = phi float [ %4583, %4582 ], [ 0.000000e+00, %4006 ]
  %4636 = phi float [ %4584, %4582 ], [ %4024, %4006 ]
  %4637 = phi float [ %4585, %4582 ], [ %4022, %4006 ]
  %4638 = fadd fast float %4629, 0xBFB99999A0000000
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, 0x3FF1C71C80000000
  %4641 = call float @dx.op.binary.f32(i32 36, float %4629, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4642 = fsub fast float 1.000000e+00, %4640
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fmul fast float %4643, %4623
  %4645 = fmul fast float %4643, %4624
  %4646 = fmul fast float %4643, %4625
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = fmul fast float %4640, %4623
  %4651 = fmul fast float %4640, %4624
  %4652 = fmul fast float %4640, %4625
  %4653 = fadd fast float %4650, %4641
  %4654 = fadd fast float %4651, %4641
  %4655 = fadd fast float %4652, %4641
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.i32 %4660, 0
  %4662 = and i32 %4661, 1
  %4663 = icmp eq i32 %4662, 0
  br i1 %4663, label %4678, label %4664

; <label>:4664                                    ; preds = %4616
  %4665 = call float @dx.op.binary.f32(i32 35, float %4648, float %4649)  ; FMax(a,b)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4647, float %4665)  ; FMax(a,b)
  %4667 = fcmp fast ogt float %4666, 0.000000e+00
  %4668 = bitcast float %4666 to i32
  %4669 = sub nsw i32 2129859010, %4668
  %4670 = bitcast i32 %4669 to float
  %4671 = select i1 %4667, float %4670, float 0.000000e+00
  %4672 = fmul fast float %4647, %4626
  %4673 = fmul fast float %4648, %4627
  %4674 = fmul fast float %4649, %4628
  %4675 = fmul fast float %4672, %4671
  %4676 = fmul fast float %4673, %4671
  %4677 = fmul fast float %4674, %4671
  br label %4678

; <label>:4678                                    ; preds = %4664, %4616
  %4679 = phi float [ %4675, %4664 ], [ %4626, %4616 ]
  %4680 = phi float [ %4676, %4664 ], [ %4627, %4616 ]
  %4681 = phi float [ %4677, %4664 ], [ %4628, %4616 ]
  %4682 = fadd fast float %4647, 0xBFD51EB860000000
  %4683 = fadd fast float %4648, 0xBFD51EB860000000
  %4684 = fadd fast float %4649, 0xBFD51EB860000000
  %4685 = fmul fast float %4682, %4682
  %4686 = fmul fast float %4683, %4683
  %4687 = fmul fast float %4684, %4684
  %4688 = fmul fast float %4685, %4685
  %4689 = fmul fast float %4688, 1.000000e+02
  %4690 = fmul fast float %4686, %4686
  %4691 = fmul fast float %4690, 1.000000e+02
  %4692 = fmul fast float %4687, %4687
  %4693 = fmul fast float %4692, 1.000000e+02
  %4694 = fadd fast float %4689, 3.500000e+00
  %4695 = fadd fast float %4691, 3.500000e+00
  %4696 = fadd fast float %4693, 3.500000e+00
  %4697 = call float @dx.op.binary.f32(i32 35, float %4679, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4680, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4681, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4700 = fdiv fast float %4694, %4697
  %4701 = fdiv fast float %4695, %4698
  %4702 = fdiv fast float %4696, %4699
  %4703 = fmul fast float %4021, 0xBFF7154760000000
  %4704 = fmul fast float %4703, %4700
  %4705 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4706 = fmul fast float %4705, 2.500000e-01
  %4707 = fmul fast float %4021, 0xBFDEC709E0000000
  %4708 = fmul fast float %4707, %4700
  %4709 = call float @dx.op.unary.f32(i32 21, float %4708)  ; Exp(value)
  %4710 = fmul fast float %4709, 7.500000e-01
  %4711 = fmul fast float %4703, %4701
  %4712 = call float @dx.op.unary.f32(i32 21, float %4711)  ; Exp(value)
  %4713 = fmul fast float %4712, 2.500000e-01
  %4714 = fmul fast float %4707, %4701
  %4715 = call float @dx.op.unary.f32(i32 21, float %4714)  ; Exp(value)
  %4716 = fmul fast float %4715, 7.500000e-01
  %4717 = fmul fast float %4703, %4702
  %4718 = call float @dx.op.unary.f32(i32 21, float %4717)  ; Exp(value)
  %4719 = fmul fast float %4718, 2.500000e-01
  %4720 = fmul fast float %4707, %4702
  %4721 = call float @dx.op.unary.f32(i32 21, float %4720)  ; Exp(value)
  %4722 = fmul fast float %4721, 7.500000e-01
  %4723 = fadd fast float %4706, %4710
  %4724 = fadd fast float %4713, %4716
  %4725 = fadd fast float %4719, %4722
  %4726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.i32 %4726, 3
  %4728 = and i32 %4727, 8
  %4729 = icmp ne i32 %4728, 0
  %4730 = call float @dx.op.binary.f32(i32 35, float %4647, float %4623)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4648, float %4623)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4649, float %4623)  ; FMax(a,b)
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = select i1 %217, float %4623, float %4647
  %4735 = select i1 %217, float %4733, float %4648
  %4736 = select i1 %217, float 1.000000e+00, float %4649
  %4737 = select i1 %4729, float %4730, float %4734
  %4738 = select i1 %4729, float %4731, float %4735
  %4739 = select i1 %4729, float %4732, float %4736
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4743 = extractvalue %dx.types.CBufRet.f32 %4740, 2
  %4744 = fadd fast float %4741, %155
  %4745 = fadd fast float %4742, %156
  %4746 = fadd fast float %4743, %157
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4750 = fsub fast float %4744, %4748
  %4751 = fsub fast float %4745, %4749
  %4752 = fmul fast float %4750, %4750
  %4753 = fmul fast float %4751, %4751
  %4754 = fadd fast float %4752, %4753
  %4755 = call float @dx.op.unary.f32(i32 24, float %4754)  ; Sqrt(value)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4757 = fcmp fast olt float %4755, %4756
  br i1 %4757, label %4758, label %4825

; <label>:4758                                    ; preds = %4678
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4766 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4767 = extractvalue %dx.types.CBufRet.f32 %4763, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4769 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4770 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4771 = fadd fast float %4768, %4744
  %4772 = fadd fast float %4769, %4745
  %4773 = fadd fast float %4770, %4746
  %4774 = fmul fast float %4771, %4760
  %4775 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4762, float %4774)  ; FMad(a,b,c)
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4764, float %4775)  ; FMad(a,b,c)
  %4777 = fmul fast float %4771, %4765
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4766, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4767, float %4778)  ; FMad(a,b,c)
  %4780 = fsub fast float %4776, %4768
  %4781 = fsub fast float %4779, %4769
  %4782 = fsub fast float %4780, %4748
  %4783 = fadd fast float %4782, %4756
  %4784 = fsub fast float %4781, %4749
  %4785 = fadd fast float %4784, %4756
  %4786 = extractvalue %dx.types.CBufRet.f32 %4747, 3
  %4787 = fmul fast float %4783, %4786
  %4788 = fmul fast float %4785, %4786
  %4789 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4791 = fsub fast float 1.000000e+00, %4789
  %4792 = fsub fast float 1.000000e+00, %4790
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4791, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = fcmp fast ugt float %4794, 0.000000e+00
  br i1 %4795, label %4796, label %5099

; <label>:4796                                    ; preds = %4758
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4799 = fmul fast float %4798, %4794
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4801 = fadd fast float %4800, %4799
  %4802 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4803 = fadd fast float %4801, %4770
  %4804 = fmul fast float %4776, %4764
  %4805 = call float @dx.op.tertiary.f32(i32 46, float %4779, float %4767, float %4804)  ; FMad(a,b,c)
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4803, float %4802, float %4805)  ; FMad(a,b,c)
  %4807 = fsub fast float %4806, %4770
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4810 = fsub fast float %4807, %4809
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4791, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.ResRet.f32 %4811, 1
  %4814 = extractvalue %dx.types.ResRet.f32 %4811, 2
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4791, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = fadd fast float %4816, %4812
  %4820 = fmul fast float %4819, 0x3F847AE140000000
  %4821 = fadd fast float %4817, %4813
  %4822 = fmul fast float %4821, 0x3F847AE140000000
  %4823 = fadd fast float %4818, %4814
  %4824 = fmul fast float %4823, 0x3F847AE140000000
  br label %5099

; <label>:4825                                    ; preds = %4678
  %4826 = and i32 %193, 1
  %4827 = icmp eq i32 %4826, 0
  br i1 %4827, label %5099, label %4828

; <label>:4828                                    ; preds = %4825
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 0
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.CBufRet.f32 %4829, 1
  %4836 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4837 = extractvalue %dx.types.CBufRet.f32 %4833, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4829, 3
  %4839 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4840 = extractvalue %dx.types.CBufRet.f32 %4833, 3
  %4841 = fadd fast float %4838, %4744
  %4842 = fadd fast float %4839, %4745
  %4843 = fadd fast float %4840, %4746
  %4844 = fmul fast float %4841, %4830
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4842, float %4832, float %4844)  ; FMad(a,b,c)
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4834, float %4845)  ; FMad(a,b,c)
  %4847 = fmul fast float %4841, %4835
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4842, float %4836, float %4847)  ; FMad(a,b,c)
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4837, float %4848)  ; FMad(a,b,c)
  %4850 = fsub fast float %4846, %4838
  %4851 = fsub fast float %4849, %4839
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.i32 %4859, 0
  %4861 = extractvalue %dx.types.CBufRet.i32 %4859, 1
  %4862 = udiv i32 %4861, %4860
  %4863 = fsub fast float %4850, %4853
  %4864 = fsub fast float %4851, %4854
  %4865 = call float @dx.op.binary.f32(i32 35, float %4863, float 0.000000e+00)  ; FMax(a,b)
  %4866 = call float @dx.op.binary.f32(i32 35, float %4864, float 0.000000e+00)  ; FMax(a,b)
  %4867 = call float @dx.op.binary.f32(i32 36, float %4865, float %4855)  ; FMin(a,b)
  %4868 = call float @dx.op.binary.f32(i32 36, float %4866, float %4856)  ; FMin(a,b)
  %4869 = add i32 %4860, -1
  %4870 = add i32 %4862, -1
  %4871 = fmul fast float %4867, %4858
  %4872 = fmul fast float %4868, %4858
  %4873 = fptoui float %4871 to i32
  %4874 = fptoui float %4872 to i32
  %4875 = call i32 @dx.op.binary.i32(i32 40, i32 %4873, i32 %4869)  ; UMin(a,b)
  %4876 = call i32 @dx.op.binary.i32(i32 40, i32 %4874, i32 %4870)  ; UMin(a,b)
  %4877 = mul i32 %4876, %4860
  %4878 = add i32 %4877, %4875
  %4879 = shl i32 %4878, 2
  %4880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4879, i32 undef)  ; BufferLoad(srv,index,wot)
  %4881 = extractvalue %dx.types.ResRet.i32 %4880, 0
  %4882 = icmp eq i32 %4881, -1
  br i1 %4882, label %5099, label %4883

; <label>:4883                                    ; preds = %4828
  %4884 = mul i32 %4881, 148
  %4885 = add i32 %4884, 4
  %4886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4885, i32 undef)  ; BufferLoad(srv,index,wot)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = add i32 %4884, 8
  %4889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4888, i32 undef)  ; BufferLoad(srv,index,wot)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = add i32 %4884, 36
  %4892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4891, i32 undef)  ; BufferLoad(srv,index,wot)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = add i32 %4884, 60
  %4895 = add i32 %4884, 92
  %4896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.i32 %4896, 0
  %4898 = add i32 %4884, 116
  %4899 = fsub fast float %4850, %4887
  %4900 = fsub fast float %4851, %4890
  %4901 = fmul fast float %4858, %4899
  %4902 = fmul fast float %4858, %4900
  %4903 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4905 = fsub fast float 1.000000e+00, %4904
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 2
  %4908 = call float @dx.op.unary.f32(i32 83, float %4903)  ; DerivCoarseX(value)
  %4909 = call float @dx.op.unary.f32(i32 83, float %4905)  ; DerivCoarseX(value)
  %4910 = call float @dx.op.unary.f32(i32 84, float %4903)  ; DerivCoarseY(value)
  %4911 = call float @dx.op.unary.f32(i32 84, float %4905)  ; DerivCoarseY(value)
  %4912 = fmul fast float %4908, %4907
  %4913 = fmul fast float %4909, %4907
  %4914 = fmul fast float %4910, %4907
  %4915 = fmul fast float %4911, %4907
  %4916 = call float @dx.op.dot2.f32(i32 54, float %4914, float %4915, float %4914, float %4915)  ; Dot2(ax,ay,bx,by)
  %4917 = call float @dx.op.dot2.f32(i32 54, float %4912, float %4913, float %4912, float %4913)  ; Dot2(ax,ay,bx,by)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float %4916)  ; FMax(a,b)
  %4919 = call float @dx.op.unary.f32(i32 23, float %4918)  ; Log(value)
  %4920 = fmul fast float %4919, 5.000000e-01
  %4921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4922 = extractvalue %dx.types.CBufRet.f32 %4921, 1
  %4923 = fadd fast float %4922, %4920
  %4924 = call float @dx.op.binary.f32(i32 35, float %4923, float 0.000000e+00)  ; FMax(a,b)
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %4927 = fadd fast float %4926, %4924
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 3
  %4930 = fadd fast float %4927, %4929
  %4931 = add i32 %4897, 0
  %4932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4933 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4932, i32 0)  ; GetDimensions(handle,mipLevel)
  %4934 = extractvalue %dx.types.Dimensions %4933, 0
  %4935 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4934)  ; FirstbitLo(value)
  %4936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.i32 %4936, 1
  %4938 = sub nsw i32 %4937, %4935
  %4939 = sitofp i32 %4938 to float
  %4940 = fsub fast float %4930, %4939
  %4941 = call float @dx.op.binary.f32(i32 35, float %4940, float 0.000000e+00)  ; FMax(a,b)
  %4942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4932, %dx.types.Handle %46, float %4903, float %4905, float %4893, float undef, i32 0, i32 0, i32 undef, float %4941)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 0
  %4944 = fcmp ule float %4943, 0x3FE0101020000000
  %4945 = extractvalue %dx.types.CBufRet.i32 %4936, 0
  %4946 = and i32 %4945, 128
  %4947 = icmp ne i32 %4946, 0
  %4948 = and i1 %4944, %4947
  br i1 %4948, label %5099, label %4949

; <label>:4949                                    ; preds = %4883
  %4950 = add i32 %4884, 20
  %4951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4950, i32 undef)  ; BufferLoad(srv,index,wot)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = add i32 %4884, 24
  %4954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4953, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = add i32 %4884, 40
  %4957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4956, i32 undef)  ; BufferLoad(srv,index,wot)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = add i32 %4884, 96
  %4960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4959, i32 undef)  ; BufferLoad(srv,index,wot)
  %4961 = extractvalue %dx.types.ResRet.i32 %4960, 0
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4964 = fmul fast float %4963, %4903
  %4965 = fmul fast float %4963, %4905
  %4966 = extractvalue %dx.types.CBufRet.f32 %4962, 3
  %4967 = fadd fast float %4964, %4966
  %4968 = fadd fast float %4965, %4966
  %4969 = add i32 %4961, 0
  %4970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4971 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4970, i32 0)  ; GetDimensions(handle,mipLevel)
  %4972 = extractvalue %dx.types.Dimensions %4971, 0
  %4973 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4972)  ; FirstbitLo(value)
  %4974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.i32 %4974, 1
  %4976 = sub nsw i32 %4975, %4973
  %4977 = sitofp i32 %4976 to float
  %4978 = fsub fast float %4927, %4977
  %4979 = call float @dx.op.binary.f32(i32 35, float %4978, float 0.000000e+00)  ; FMax(a,b)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4970, %dx.types.Handle %46, float %4967, float %4968, float %4958, float undef, i32 0, i32 0, i32 undef, float %4979)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = fmul fast float %4981, %4952
  %4983 = fadd fast float %4982, %4955
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4992 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4993 = fadd fast float %4989, %4850
  %4994 = fadd fast float %4991, %4851
  %4995 = fadd fast float %4983, %4992
  %4996 = fmul fast float %4993, %4985
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4986, float %4996)  ; FMad(a,b,c)
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4995, float %4987, float %4997)  ; FMad(a,b,c)
  %4999 = fsub fast float %4998, %4992
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5002 = fsub fast float %4999, %5001
  %5003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.i32 %5003, 0
  %5005 = call i32 @dx.op.binary.i32(i32 40, i32 %4881, i32 %5004)  ; UMin(a,b)
  %5006 = mul i32 %5005, 36
  %5007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5006, i32 undef)  ; BufferLoad(srv,index,wot)
  %5008 = extractvalue %dx.types.ResRet.i32 %5007, 0
  %5009 = add i32 %5006, 4
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = fmul fast float %5011, %4903
  %5013 = fmul fast float %5011, %4905
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5015 = fadd fast float %5012, %5014
  %5016 = fadd fast float %5013, %5014
  %5017 = icmp eq i32 %5008, 0
  br i1 %5017, label %5086, label %5018

; <label>:5018                                    ; preds = %4949
  br label %5019

; <label>:5019                                    ; preds = %5076, %5018
  %5020 = phi float [ %5077, %5076 ], [ 0.000000e+00, %5018 ]
  %5021 = phi float [ %5078, %5076 ], [ 0.000000e+00, %5018 ]
  %5022 = phi float [ %5079, %5076 ], [ 0.000000e+00, %5018 ]
  %5023 = phi float [ %5080, %5076 ], [ 0.000000e+00, %5018 ]
  %5024 = phi float [ %5081, %5076 ], [ 0.000000e+00, %5018 ]
  %5025 = phi float [ %5082, %5076 ], [ 0.000000e+00, %5018 ]
  %5026 = phi i32 [ %5083, %5076 ], [ 0, %5018 ]
  %5027 = shl i32 %5026, 2
  %5028 = add i32 %4894, %5027
  %5029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5028, i32 undef)  ; BufferLoad(srv,index,wot)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = add i32 %4898, %5027
  %5032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5031, i32 undef)  ; BufferLoad(srv,index,wot)
  %5033 = extractvalue %dx.types.ResRet.i32 %5032, 0
  %5034 = add i32 %5033, 0
  %5035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5034, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5036 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5035, i32 0)  ; GetDimensions(handle,mipLevel)
  %5037 = extractvalue %dx.types.Dimensions %5036, 0
  %5038 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5037)  ; FirstbitLo(value)
  %5039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.i32 %5039, 1
  %5041 = sub nsw i32 %5040, %5038
  %5042 = sitofp i32 %5041 to float
  %5043 = fsub fast float %4927, %5042
  %5044 = call float @dx.op.binary.f32(i32 35, float %5043, float 0.000000e+00)  ; FMax(a,b)
  %5045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5035, %dx.types.Handle %46, float %5015, float %5016, float %5030, float undef, i32 0, i32 0, i32 undef, float %5044)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  br i1 %5047, label %5048, label %5076

; <label>:5048                                    ; preds = %5019
  %5049 = add i32 %5009, %5027
  %5050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5049, i32 undef)  ; BufferLoad(srv,index,wot)
  %5051 = extractvalue %dx.types.ResRet.i32 %5050, 0
  %5052 = and i32 %5051, 32767
  %5053 = mul nuw nsw i32 %5052, 928
  %5054 = add nuw nsw i32 %5053, 48
  %5055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = add nuw nsw i32 %5053, 60
  %5060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5059, i32 undef)  ; BufferLoad(srv,index,wot)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = fmul fast float %5056, %5046
  %5065 = fmul fast float %5057, %5046
  %5066 = fmul fast float %5058, %5046
  %5067 = fadd fast float %5064, %5020
  %5068 = fadd fast float %5065, %5021
  %5069 = fadd fast float %5066, %5022
  %5070 = fmul fast float %5061, %5046
  %5071 = fmul fast float %5062, %5046
  %5072 = fmul fast float %5063, %5046
  %5073 = fadd fast float %5070, %5023
  %5074 = fadd fast float %5071, %5024
  %5075 = fadd fast float %5072, %5025
  br label %5076

; <label>:5076                                    ; preds = %5048, %5019
  %5077 = phi float [ %5067, %5048 ], [ %5020, %5019 ]
  %5078 = phi float [ %5068, %5048 ], [ %5021, %5019 ]
  %5079 = phi float [ %5069, %5048 ], [ %5022, %5019 ]
  %5080 = phi float [ %5073, %5048 ], [ %5023, %5019 ]
  %5081 = phi float [ %5074, %5048 ], [ %5024, %5019 ]
  %5082 = phi float [ %5075, %5048 ], [ %5025, %5019 ]
  %5083 = add nuw i32 %5026, 1
  %5084 = icmp eq i32 %5083, %5008
  br i1 %5084, label %5085, label %5019

; <label>:5085                                    ; preds = %5076
  br label %5086

; <label>:5086                                    ; preds = %5085, %4949
  %5087 = phi float [ 0.000000e+00, %4949 ], [ %5077, %5085 ]
  %5088 = phi float [ 0.000000e+00, %4949 ], [ %5078, %5085 ]
  %5089 = phi float [ 0.000000e+00, %4949 ], [ %5079, %5085 ]
  %5090 = phi float [ 0.000000e+00, %4949 ], [ %5080, %5085 ]
  %5091 = phi float [ 0.000000e+00, %4949 ], [ %5081, %5085 ]
  %5092 = phi float [ 0.000000e+00, %4949 ], [ %5082, %5085 ]
  %5093 = fadd fast float %5090, %5087
  %5094 = fmul fast float %5093, 0x3F847AE140000000
  %5095 = fadd fast float %5091, %5088
  %5096 = fmul fast float %5095, 0x3F847AE140000000
  %5097 = fadd fast float %5092, %5089
  %5098 = fmul fast float %5097, 0x3F847AE140000000
  br label %5099

; <label>:5099                                    ; preds = %5086, %4883, %4828, %4825, %4796, %4758
  %5100 = phi float [ %4810, %4796 ], [ -1.310720e+05, %4758 ], [ %5002, %5086 ], [ -1.310720e+05, %4828 ], [ -1.310720e+05, %4883 ], [ -1.310720e+05, %4825 ]
  %5101 = phi float [ %4820, %4796 ], [ 0.000000e+00, %4758 ], [ %5094, %5086 ], [ 0.000000e+00, %4828 ], [ 0.000000e+00, %4883 ], [ 0.000000e+00, %4825 ]
  %5102 = phi float [ %4822, %4796 ], [ 0.000000e+00, %4758 ], [ %5096, %5086 ], [ 0.000000e+00, %4828 ], [ 0.000000e+00, %4883 ], [ 0.000000e+00, %4825 ]
  %5103 = phi float [ %4824, %4796 ], [ 0.000000e+00, %4758 ], [ %5098, %5086 ], [ 0.000000e+00, %4828 ], [ 0.000000e+00, %4883 ], [ 0.000000e+00, %4825 ]
  %5104 = phi i1 [ true, %4796 ], [ false, %4758 ], [ true, %5086 ], [ false, %4828 ], [ false, %4883 ], [ false, %4825 ]
  %5105 = and i32 %193, 3
  %5106 = icmp eq i32 %5105, 1
  %5107 = select i1 %5106, float 1.000000e+00, float 0.000000e+00
  %5108 = fsub fast float %5100, %157
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = select i1 %5104, float %5109, float 1.000000e+00
  %5111 = fmul fast float %5110, %5107
  %5112 = icmp eq i32 %5105, 3
  %5113 = select i1 %5112, float 1.000000e+00, float %5111
  %5114 = call float @dx.op.binary.f32(i32 35, float %4635, float %5113)  ; FMax(a,b)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fcmp fast une float %5115, 0.000000e+00
  %5117 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.unary.f32(i32 25, float %5117)  ; Rsqrt(value)
  br i1 %5116, label %5126, label %5119

; <label>:5119                                    ; preds = %5099
  %5120 = fmul fast float %5118, %155
  %5121 = fmul fast float %5118, %156
  %5122 = fmul fast float %5118, %157
  %5123 = fsub fast float -0.000000e+00, %5120
  %5124 = fsub fast float -0.000000e+00, %5121
  %5125 = fsub fast float -0.000000e+00, %5122
  br label %5294

; <label>:5126                                    ; preds = %5099
  %5127 = fmul fast float %155, %5118
  %5128 = fsub fast float -0.000000e+00, %5127
  %5129 = fmul fast float %156, %5118
  %5130 = fsub fast float -0.000000e+00, %5129
  %5131 = fmul fast float %157, %5118
  %5132 = fsub fast float -0.000000e+00, %5131
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5130, float %5132, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fmul fast float %5115, 2.500000e+00
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5115, 0x4013FFFFE0000000
  %5137 = fadd fast float %5136, 0xBFFFFFFFE0000000
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5115, 0x4004000020000000
  %5140 = fadd fast float %5139, 0xBFF8000040000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5143 = fmul fast float %4638, 1.000000e+01
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fmul fast float %5144, 2.000000e+00
  %5146 = fsub fast float 3.000000e+00, %5145
  %5147 = fmul fast float %5144, %5144
  %5148 = fmul fast float %5147, %5146
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = fsub fast float 0x3FE3333340000000, %4659
  %5151 = fmul fast float %5150, 0x400AAAAAA0000000
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = fmul fast float %5149, %5152
  %5154 = fmul fast float %4737, 0x3FEA2B8620000000
  %5155 = fmul fast float %4738, 0x3FEA2B8620000000
  %5156 = fmul fast float %4739, 0x3FEA2B8620000000
  %5157 = fadd fast float %5154, 0x3FC81DFBA0000000
  %5158 = fmul fast float %5157, %4737
  %5159 = fadd fast float %5158, 0x3F910E6020000000
  %5160 = fadd fast float %5155, 0x3FC81DFBA0000000
  %5161 = fmul fast float %5160, %4738
  %5162 = fadd fast float %5161, 0x3F910E6020000000
  %5163 = fadd fast float %5156, 0x3FC81DFBA0000000
  %5164 = fmul fast float %5163, %4739
  %5165 = fadd fast float %5164, 0x3F910E6020000000
  %5166 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5169 = fsub fast float %5166, %4737
  %5170 = fsub fast float %5167, %4738
  %5171 = fsub fast float %5168, %4739
  %5172 = fmul fast float %5169, %5142
  %5173 = fmul fast float %5172, %5153
  %5174 = fmul fast float %5170, %5142
  %5175 = fmul fast float %5174, %5153
  %5176 = fmul fast float %5171, %5142
  %5177 = fmul fast float %5176, %5153
  %5178 = fadd fast float %5173, %4737
  %5179 = fadd fast float %5175, %4738
  %5180 = fadd fast float %5177, %4739
  %5181 = fmul fast float %4632, %4632
  %5182 = fmul fast float %5181, %5181
  %5183 = fadd fast float %5138, 1.000000e+00
  %5184 = fsub fast float %5183, %5153
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5188 = fsub fast float 1.000000e+00, %5182
  %5189 = call float @dx.op.binary.f32(i32 36, float %5185, float %5188)  ; FMin(a,b)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5189, float %5190)  ; FMax(a,b)
  %5192 = fadd fast float %5187, 0xBFE4CCCCC0000000
  %5193 = fmul fast float %5192, 0x4006DB6DA0000000
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5194, 2.000000e+00
  %5196 = fsub fast float 3.000000e+00, %5195
  %5197 = bitcast float %4656 to i32
  %5198 = ashr i32 %5197, 1
  %5199 = add nsw i32 %5198, 532487669
  %5200 = bitcast i32 %5199 to float
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = bitcast float %5201 to i32
  %5203 = sub nsw i32 2129859010, %5202
  %5204 = bitcast i32 %5203 to float
  %5205 = fmul fast float %5204, 2.000000e+00
  %5206 = bitcast float %4657 to i32
  %5207 = ashr i32 %5206, 1
  %5208 = add nsw i32 %5207, 532487669
  %5209 = bitcast i32 %5208 to float
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, 2.000000e+00
  %5215 = bitcast float %4658 to i32
  %5216 = ashr i32 %5215, 1
  %5217 = add nsw i32 %5216, 532487669
  %5218 = bitcast i32 %5217 to float
  %5219 = fsub fast float 1.000000e+00, %5218
  %5220 = bitcast float %5219 to i32
  %5221 = sub nsw i32 2129859010, %5220
  %5222 = bitcast i32 %5221 to float
  %5223 = fmul fast float %5222, 2.000000e+00
  %5224 = fsub fast float 0x4002A9FBE0000000, %5205
  %5225 = fadd fast float %5205, 0x3FD54FDF00000000
  %5226 = bitcast float %5225 to i32
  %5227 = sub nsw i32 2129859010, %5226
  %5228 = bitcast i32 %5227 to float
  %5229 = fmul fast float %5228, %5224
  %5230 = fmul fast float %5229, %5229
  %5231 = fsub fast float 0x4002A9FBE0000000, %5214
  %5232 = fadd fast float %5214, 0x3FD54FDF00000000
  %5233 = bitcast float %5232 to i32
  %5234 = sub nsw i32 2129859010, %5233
  %5235 = bitcast i32 %5234 to float
  %5236 = fmul fast float %5235, %5231
  %5237 = fmul fast float %5236, %5236
  %5238 = fsub fast float 0x4002A9FBE0000000, %5223
  %5239 = fadd fast float %5223, 0x3FD54FDF00000000
  %5240 = bitcast float %5239 to i32
  %5241 = sub nsw i32 2129859010, %5240
  %5242 = bitcast i32 %5241 to float
  %5243 = fmul fast float %5242, %5238
  %5244 = fmul fast float %5243, %5243
  %5245 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5230)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5237)  ; FMax(a,b)
  %5247 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5244)  ; FMax(a,b)
  %5248 = fsub fast float 1.000000e+00, %5133
  %5249 = fadd fast float %5248, %5149
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = fsub fast float 1.000000e+00, %5113
  %5252 = fmul fast float %5191, %5251
  %5253 = fmul fast float %5194, %5194
  %5254 = fmul fast float %5253, %5252
  %5255 = fmul fast float %5254, %5196
  %5256 = fmul fast float %5251, 0xBFE99999A0000000
  %5257 = fmul fast float %5256, %5142
  %5258 = fmul fast float %5257, %5153
  %5259 = fadd fast float %5258, 1.000000e+00
  %5260 = fadd fast float %4659, -1.000000e+00
  %5261 = fmul fast float %5259, %5260
  %5262 = fadd fast float %5261, 1.000000e+00
  %5263 = fsub fast float %5245, %4656
  %5264 = fsub fast float %5246, %4657
  %5265 = fsub fast float %5247, %4658
  %5266 = fmul fast float %5255, %5263
  %5267 = fmul fast float %5255, %5264
  %5268 = fmul fast float %5255, %5265
  %5269 = fadd fast float %5266, %4656
  %5270 = fadd fast float %5267, %4657
  %5271 = fadd fast float %5268, %4658
  %5272 = fsub fast float %107, %4617
  %5273 = fsub fast float %108, %4618
  %5274 = fsub fast float %109, %4619
  %5275 = fmul fast float %5255, %5272
  %5276 = fmul fast float %5255, %5273
  %5277 = fmul fast float %5255, %5274
  %5278 = fadd fast float %5275, %4617
  %5279 = fadd fast float %5276, %4618
  %5280 = fadd fast float %5277, %4619
  %5281 = fmul fast float %5255, %5250
  %5282 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5282
  %5284 = fmul fast float %5281, %5283
  %5285 = fadd fast float %5284, %5282
  %5286 = fsub fast float 1.000000e+00, %4632
  %5287 = fmul fast float %5255, %5286
  %5288 = fadd fast float %5287, %4632
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = call float @dx.op.unary.f32(i32 25, float %5289)  ; Rsqrt(value)
  %5291 = fmul fast float %5278, %5290
  %5292 = fmul fast float %5279, %5290
  %5293 = fmul fast float %5280, %5290
  br label %5294

; <label>:5294                                    ; preds = %5126, %5119
  %5295 = phi float [ %5125, %5119 ], [ %5132, %5126 ]
  %5296 = phi float [ %5124, %5119 ], [ %5130, %5126 ]
  %5297 = phi float [ %5123, %5119 ], [ %5128, %5126 ]
  %5298 = phi float [ %5122, %5119 ], [ %5131, %5126 ]
  %5299 = phi float [ %5121, %5119 ], [ %5129, %5126 ]
  %5300 = phi float [ %5120, %5119 ], [ %5127, %5126 ]
  %5301 = phi float [ %4737, %5119 ], [ %5178, %5126 ]
  %5302 = phi float [ %4738, %5119 ], [ %5179, %5126 ]
  %5303 = phi float [ %4739, %5119 ], [ %5180, %5126 ]
  %5304 = phi float [ %4656, %5119 ], [ %5269, %5126 ]
  %5305 = phi float [ %4657, %5119 ], [ %5270, %5126 ]
  %5306 = phi float [ %4658, %5119 ], [ %5271, %5126 ]
  %5307 = phi float [ %4617, %5119 ], [ %5291, %5126 ]
  %5308 = phi float [ %4618, %5119 ], [ %5292, %5126 ]
  %5309 = phi float [ %4619, %5119 ], [ %5293, %5126 ]
  %5310 = phi float [ %4659, %5119 ], [ %5285, %5126 ]
  %5311 = phi float [ %4632, %5119 ], [ %5288, %5126 ]
  %5312 = fsub fast float -0.000000e+00, %157
  %5313 = select i1 %217, float 0.000000e+00, float %5306
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5308, float %5309, float %5297, float %5296, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5299, float %5298, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = fmul fast float %5316, 2.000000e+00
  %5318 = fmul fast float %5317, %5307
  %5319 = fmul fast float %5317, %5308
  %5320 = fmul fast float %5317, %5309
  %5321 = fsub fast float %5300, %5318
  %5322 = fsub fast float %5299, %5319
  %5323 = fsub fast float %5298, %5320
  %5324 = call float @dx.op.binary.f32(i32 36, float %5311, float 1.000000e+00)  ; FMin(a,b)
  %5325 = fsub fast float 1.000000e+00, %5311
  %5326 = bitcast float %5325 to i32
  %5327 = sub nsw i32 2129859010, %5326
  %5328 = bitcast i32 %5327 to float
  %5329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5330 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = fcmp fast oeq float %5330, 0.000000e+00
  %5332 = fcmp fast oeq float %5329, 0.000000e+00
  %5333 = or i1 %5332, %5331
  br i1 %5333, label %5363, label %5334

; <label>:5334                                    ; preds = %5294
  %5335 = fsub fast float -0.000000e+00, %74
  %5336 = fsub fast float -0.000000e+00, %72
  %5337 = call float @dx.op.unary.f32(i32 24, float %5330)  ; Sqrt(value)
  %5338 = fdiv fast float %5337, %5329
  %5339 = fcmp fast ogt float %5338, 0x3FFB6F8900000000
  %5340 = select i1 %5339, float 0x3FFB6F8900000000, float %5338
  %5341 = fmul fast float %5340, 0x3FE8A23460000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call float @dx.op.binary.f32(i32 35, float %5340, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5344 = fmul fast float %5342, %5329
  %5345 = fmul fast float %5343, 0x3FF279A740000000
  %5346 = fadd fast float %5345, -1.000000e+00
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5336, float %73, float %5335, float %5336, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.unary.f32(i32 25, float %5347)  ; Rsqrt(value)
  %5349 = fmul fast float %5348, %5335
  %5350 = fmul fast float %5348, %5336
  %5351 = fmul fast float %5348, %73
  %5352 = fmul fast float %5346, %5346
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = fmul fast float %5343, 0x40005F8BE0000000
  %5355 = fsub fast float 0x400C5BF8A0000000, %5354
  %5356 = fdiv fast float %5344, %5355
  %5357 = fmul fast float %5356, 0x3FEE31C3C0000000
  %5358 = fmul fast float %5357, %5353
  %5359 = fmul fast float %5343, 0x3FDACB7480000000
  %5360 = fadd fast float %5359, 0xBFD7347680000000
  %5361 = fmul fast float %5360, %5356
  %5362 = fmul fast float %5361, %5353
  br label %5363

; <label>:5363                                    ; preds = %5334, %5294
  %5364 = phi float [ %5349, %5334 ], [ 0.000000e+00, %5294 ]
  %5365 = phi float [ %5350, %5334 ], [ 0.000000e+00, %5294 ]
  %5366 = phi float [ %5351, %5334 ], [ 0.000000e+00, %5294 ]
  %5367 = phi float [ %5358, %5334 ], [ 0.000000e+00, %5294 ]
  %5368 = phi float [ %5362, %5334 ], [ 0.000000e+00, %5294 ]
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fmul fast float %5369, 0x3FDF454380000000
  %5371 = fmul fast float %5369, %5369
  %5372 = fmul fast float %5371, 0x3FEE471020000000
  %5373 = fadd fast float %5372, 0xBFD42F6020000000
  %5374 = fmul fast float %5329, 0x3FD20DD760000000
  %5375 = fmul fast float %5373, %5368
  %5376 = fadd fast float %5375, %5374
  %5377 = fmul fast float %5370, %5367
  %5378 = fadd fast float %5376, %5377
  %5379 = fsub fast float %5376, %5377
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fmul fast float %5380, 0x3FDF454380000000
  %5382 = fmul fast float %5380, %5380
  %5383 = fmul fast float %5382, 0x3FEE471020000000
  %5384 = fadd fast float %5383, 0xBFD42F6020000000
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5367, float %5368, float 0x3FD20DD760000000, float %5381, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5387 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fcmp fast oeq float %5387, 0.000000e+00
  %5389 = fcmp fast oeq float %5386, 0.000000e+00
  %5390 = or i1 %5389, %5388
  br i1 %5390, label %5420, label %5391

; <label>:5391                                    ; preds = %5363
  %5392 = fsub fast float -0.000000e+00, %70
  %5393 = fsub fast float -0.000000e+00, %68
  %5394 = call float @dx.op.unary.f32(i32 24, float %5387)  ; Sqrt(value)
  %5395 = fdiv fast float %5394, %5386
  %5396 = fcmp fast ogt float %5395, 0x3FFB6F8900000000
  %5397 = select i1 %5396, float 0x3FFB6F8900000000, float %5395
  %5398 = fmul fast float %5397, 0x3FE8A23460000000
  %5399 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  %5400 = call float @dx.op.binary.f32(i32 35, float %5397, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5401 = fmul fast float %5399, %5386
  %5402 = fmul fast float %5400, 0x3FF279A740000000
  %5403 = fadd fast float %5402, -1.000000e+00
  %5404 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %69, float %5392, float %5393, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = call float @dx.op.unary.f32(i32 25, float %5404)  ; Rsqrt(value)
  %5406 = fmul fast float %5405, %5392
  %5407 = fmul fast float %5405, %5393
  %5408 = fmul fast float %5405, %69
  %5409 = fmul fast float %5403, %5403
  %5410 = fsub fast float 1.000000e+00, %5409
  %5411 = fmul fast float %5400, 0x40005F8BE0000000
  %5412 = fsub fast float 0x400C5BF8A0000000, %5411
  %5413 = fdiv fast float %5401, %5412
  %5414 = fmul fast float %5413, 0x3FEE31C3C0000000
  %5415 = fmul fast float %5414, %5410
  %5416 = fmul fast float %5400, 0x3FDACB7480000000
  %5417 = fadd fast float %5416, 0xBFD7347680000000
  %5418 = fmul fast float %5417, %5413
  %5419 = fmul fast float %5418, %5410
  br label %5420

; <label>:5420                                    ; preds = %5391, %5363
  %5421 = phi float [ %5406, %5391 ], [ 0.000000e+00, %5363 ]
  %5422 = phi float [ %5407, %5391 ], [ 0.000000e+00, %5363 ]
  %5423 = phi float [ %5408, %5391 ], [ 0.000000e+00, %5363 ]
  %5424 = phi float [ %5415, %5391 ], [ 0.000000e+00, %5363 ]
  %5425 = phi float [ %5419, %5391 ], [ 0.000000e+00, %5363 ]
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = fmul fast float %5426, 0x3FDF454380000000
  %5428 = fmul fast float %5426, %5426
  %5429 = fmul fast float %5428, 0x3FEE471020000000
  %5430 = fadd fast float %5429, 0xBFD42F6020000000
  %5431 = fmul fast float %5386, 0x3FD20DD760000000
  %5432 = fmul fast float %5430, %5425
  %5433 = fadd fast float %5432, %5431
  %5434 = fmul fast float %5427, %5424
  %5435 = fadd fast float %5433, %5434
  %5436 = fsub fast float %5433, %5434
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = fmul fast float %5437, 0x3FDF454380000000
  %5439 = fmul fast float %5437, %5437
  %5440 = fmul fast float %5439, 0x3FEE471020000000
  %5441 = fadd fast float %5440, 0xBFD42F6020000000
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5386, float %5424, float %5425, float 0x3FD20DD760000000, float %5438, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5444 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fcmp fast oeq float %5444, 0.000000e+00
  %5446 = fcmp fast oeq float %5443, 0.000000e+00
  %5447 = or i1 %5446, %5445
  br i1 %5447, label %5477, label %5448

; <label>:5448                                    ; preds = %5420
  %5449 = fsub fast float -0.000000e+00, %66
  %5450 = fsub fast float -0.000000e+00, %64
  %5451 = call float @dx.op.unary.f32(i32 24, float %5444)  ; Sqrt(value)
  %5452 = fdiv fast float %5451, %5443
  %5453 = fcmp fast ogt float %5452, 0x3FFB6F8900000000
  %5454 = select i1 %5453, float 0x3FFB6F8900000000, float %5452
  %5455 = fmul fast float %5454, 0x3FE8A23460000000
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = call float @dx.op.binary.f32(i32 35, float %5454, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5458 = fmul fast float %5456, %5443
  %5459 = fmul fast float %5457, 0x3FF279A740000000
  %5460 = fadd fast float %5459, -1.000000e+00
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %65, float %5449, float %5450, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 25, float %5461)  ; Rsqrt(value)
  %5463 = fmul fast float %5462, %5449
  %5464 = fmul fast float %5462, %5450
  %5465 = fmul fast float %5462, %65
  %5466 = fmul fast float %5460, %5460
  %5467 = fsub fast float 1.000000e+00, %5466
  %5468 = fmul fast float %5457, 0x40005F8BE0000000
  %5469 = fsub fast float 0x400C5BF8A0000000, %5468
  %5470 = fdiv fast float %5458, %5469
  %5471 = fmul fast float %5470, 0x3FEE31C3C0000000
  %5472 = fmul fast float %5471, %5467
  %5473 = fmul fast float %5457, 0x3FDACB7480000000
  %5474 = fadd fast float %5473, 0xBFD7347680000000
  %5475 = fmul fast float %5474, %5470
  %5476 = fmul fast float %5475, %5467
  br label %5477

; <label>:5477                                    ; preds = %5448, %5420
  %5478 = phi float [ %5463, %5448 ], [ 0.000000e+00, %5420 ]
  %5479 = phi float [ %5464, %5448 ], [ 0.000000e+00, %5420 ]
  %5480 = phi float [ %5465, %5448 ], [ 0.000000e+00, %5420 ]
  %5481 = phi float [ %5472, %5448 ], [ 0.000000e+00, %5420 ]
  %5482 = phi float [ %5476, %5448 ], [ 0.000000e+00, %5420 ]
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, 0x3FDF454380000000
  %5485 = fmul fast float %5483, %5483
  %5486 = fmul fast float %5485, 0x3FEE471020000000
  %5487 = fadd fast float %5486, 0xBFD42F6020000000
  %5488 = fmul fast float %5443, 0x3FD20DD760000000
  %5489 = fmul fast float %5487, %5482
  %5490 = fadd fast float %5489, %5488
  %5491 = fmul fast float %5484, %5481
  %5492 = fadd fast float %5490, %5491
  %5493 = fsub fast float %5490, %5491
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fmul fast float %5494, 0x3FDF454380000000
  %5496 = fmul fast float %5494, %5494
  %5497 = fmul fast float %5496, 0x3FEE471020000000
  %5498 = fadd fast float %5497, 0xBFD42F6020000000
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5481, float %5482, float 0x3FD20DD760000000, float %5495, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = call float @dx.op.binary.f32(i32 35, float %5378, float 0.000000e+00)  ; FMax(a,b)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5435, float 0.000000e+00)  ; FMax(a,b)
  %5502 = call float @dx.op.binary.f32(i32 35, float %5492, float 0.000000e+00)  ; FMax(a,b)
  %5503 = call float @dx.op.binary.f32(i32 35, float %5379, float 0.000000e+00)  ; FMax(a,b)
  %5504 = call float @dx.op.binary.f32(i32 35, float %5436, float 0.000000e+00)  ; FMax(a,b)
  %5505 = call float @dx.op.binary.f32(i32 35, float %5493, float 0.000000e+00)  ; FMax(a,b)
  %5506 = call float @dx.op.binary.f32(i32 35, float %5385, float 0.000000e+00)  ; FMax(a,b)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5442, float 0.000000e+00)  ; FMax(a,b)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5499, float 0.000000e+00)  ; FMax(a,b)
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = call float @dx.op.binary.f32(i32 36, float %5301, float %5510)  ; FMin(a,b)
  %5512 = fsub fast float 1.000000e+00, %5324
  %5513 = fmul fast float %5511, %5512
  %5514 = fsub fast float 1.000000e+00, %5513
  %5515 = bitcast float %5514 to i32
  %5516 = sub nsw i32 2129859010, %5515
  %5517 = bitcast i32 %5516 to float
  %5518 = call float @dx.op.binary.f32(i32 36, float %5302, float %5510)  ; FMin(a,b)
  %5519 = fmul fast float %5518, %5512
  %5520 = fsub fast float 1.000000e+00, %5519
  %5521 = bitcast float %5520 to i32
  %5522 = sub nsw i32 2129859010, %5521
  %5523 = bitcast i32 %5522 to float
  %5524 = call float @dx.op.binary.f32(i32 36, float %5303, float %5510)  ; FMin(a,b)
  %5525 = fmul fast float %5524, %5512
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = bitcast float %5526 to i32
  %5528 = sub nsw i32 2129859010, %5527
  %5529 = bitcast i32 %5528 to float
  %5530 = fmul fast float %5500, %5324
  %5531 = fmul fast float %5530, %5517
  %5532 = fmul fast float %5501, %5324
  %5533 = fmul fast float %5532, %5523
  %5534 = fmul fast float %5502, %5324
  %5535 = fmul fast float %5534, %5529
  %5536 = call float @dx.op.binary.f32(i32 36, float %5304, float %5510)  ; FMin(a,b)
  %5537 = fmul fast float %5536, %5512
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = bitcast float %5538 to i32
  %5540 = sub nsw i32 2129859010, %5539
  %5541 = bitcast i32 %5540 to float
  %5542 = call float @dx.op.binary.f32(i32 36, float %5305, float %5510)  ; FMin(a,b)
  %5543 = fmul fast float %5542, %5512
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = bitcast float %5544 to i32
  %5546 = sub nsw i32 2129859010, %5545
  %5547 = bitcast i32 %5546 to float
  %5548 = call float @dx.op.binary.f32(i32 36, float %5313, float %5510)  ; FMin(a,b)
  %5549 = fmul fast float %5548, %5512
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = bitcast float %5550 to i32
  %5552 = sub nsw i32 2129859010, %5551
  %5553 = bitcast i32 %5552 to float
  %5554 = fmul fast float %5506, %5324
  %5555 = fmul fast float %5554, %5541
  %5556 = fmul fast float %5507, %5324
  %5557 = fmul fast float %5556, %5547
  %5558 = fmul fast float %5508, %5324
  %5559 = fmul fast float %5558, %5553
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5533, float %5535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = select i1 %217, float 0.000000e+00, float %5531
  %5562 = select i1 %217, float %5560, float %5533
  %5563 = select i1 %217, float 0.000000e+00, float %5535
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %5505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = select i1 %217, float 0.000000e+00, float %5503
  %5566 = select i1 %217, float %5564, float %5504
  %5567 = select i1 %217, float 0.000000e+00, float %5505
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5557, float %5559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = select i1 %217, float 0.000000e+00, float %5555
  %5570 = select i1 %217, float %5568, float %5557
  %5571 = select i1 %217, float 0.000000e+00, float %5559
  %5572 = fmul fast float %5315, 9.843750e-01
  %5573 = fmul fast float %5310, 9.843750e-01
  %5574 = fadd fast float %5572, 7.812500e-03
  %5575 = fadd fast float %5573, 7.812500e-03
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5574, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 3
  %5579 = fmul fast float %5577, %5304
  %5580 = fmul fast float %5577, %5305
  %5581 = fmul fast float %5577, %5313
  %5582 = fadd fast float %5579, %5578
  %5583 = fadd fast float %5580, %5578
  %5584 = fadd fast float %5581, %5578
  %5585 = fcmp fast ogt float %4633, 0.000000e+00
  br i1 %5585, label %5586, label %5612

; <label>:5586                                    ; preds = %5477
  %5587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %5315, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.ResRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.ResRet.f32 %5587, 2
  %5591 = fadd fast float %5588, -5.000000e-01
  %5592 = fadd fast float %5589, -5.000000e-01
  %5593 = fadd fast float %5590, -5.000000e-01
  %5594 = fsub fast float 1.000000e+00, %5304
  %5595 = fsub fast float 1.000000e+00, %5305
  %5596 = fsub fast float 1.000000e+00, %5313
  %5597 = fmul fast float %5304, 4.000000e+00
  %5598 = fmul fast float %5597, %5594
  %5599 = fmul fast float %5598, %5591
  %5600 = fmul fast float %5305, 4.000000e+00
  %5601 = fmul fast float %5600, %5595
  %5602 = fmul fast float %5601, %5592
  %5603 = fmul fast float %5313, 4.000000e+00
  %5604 = fmul fast float %5603, %5596
  %5605 = fmul fast float %5604, %5593
  %5606 = fadd fast float %5599, %5582
  %5607 = fadd fast float %5602, %5583
  %5608 = fadd fast float %5605, %5584
  %5609 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  br label %5612

; <label>:5612                                    ; preds = %5586, %5477
  %5613 = phi float [ %5609, %5586 ], [ %5582, %5477 ]
  %5614 = phi float [ %5610, %5586 ], [ %5583, %5477 ]
  %5615 = phi float [ %5611, %5586 ], [ %5584, %5477 ]
  %5616 = call float @dx.op.binary.f32(i32 35, float %5614, float %5615)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5613, float %5616)  ; FMax(a,b)
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5302, float %5303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5620 = fcmp fast ogt float %5619, 0x3E7FF19E20000000
  %5621 = fdiv fast float 1.000000e+00, %5619
  %5622 = select i1 %5620, float %5621, float 0.000000e+00
  %5623 = fmul fast float %5622, %5301
  %5624 = fmul fast float %5622, %5302
  %5625 = fmul fast float %5622, %5303
  %5626 = fadd fast float %5623, -1.000000e+00
  %5627 = fadd fast float %5624, -1.000000e+00
  %5628 = fadd fast float %5625, -1.000000e+00
  %5629 = fmul fast float %5626, 5.000000e-01
  %5630 = fmul fast float %5627, 5.000000e-01
  %5631 = fmul fast float %5628, 5.000000e-01
  %5632 = fadd fast float %5629, 1.000000e+00
  %5633 = fadd fast float %5630, 1.000000e+00
  %5634 = fadd fast float %5631, 1.000000e+00
  %5635 = fmul fast float %5618, %4723
  %5636 = fmul fast float %5618, %4724
  %5637 = fmul fast float %5618, %4725
  %5638 = fadd fast float %5635, -1.000000e+00
  %5639 = fadd fast float %5636, -1.000000e+00
  %5640 = fadd fast float %5637, -1.000000e+00
  %5641 = fmul fast float %5638, %4630
  %5642 = fmul fast float %5639, %4630
  %5643 = fmul fast float %5640, %4630
  %5644 = fmul fast float %5613, %5569
  %5645 = fmul fast float %5614, %5570
  %5646 = fmul fast float %5615, %5571
  %5647 = fsub fast float 1.000000e+00, %5315
  %5648 = bitcast float %5647 to i32
  %5649 = sitofp i32 %5648 to float
  %5650 = fmul fast float %5649, 5.000000e+00
  %5651 = fadd fast float %5650, 0xC1EFBF8940000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5653, %4634
  %5655 = fmul fast float %5561, %5654
  %5656 = fmul fast float %5655, %5618
  %5657 = fmul fast float %5656, %5632
  %5658 = fmul fast float %5562, %5654
  %5659 = fmul fast float %5658, %5618
  %5660 = fmul fast float %5659, %5633
  %5661 = fmul fast float %5563, %5654
  %5662 = fmul fast float %5661, %5618
  %5663 = fmul fast float %5662, %5634
  %5664 = fadd fast float %5644, %4620
  %5665 = fadd fast float %5664, %5657
  %5666 = fmul fast float %5665, %4630
  %5667 = fadd fast float %5645, %4621
  %5668 = fadd fast float %5667, %5660
  %5669 = fmul fast float %5668, %4630
  %5670 = fadd fast float %5646, %4622
  %5671 = fadd fast float %5670, %5663
  %5672 = fmul fast float %5671, %4630
  %5673 = fadd fast float %5643, 1.000000e+00
  %5674 = fadd fast float %5642, 1.000000e+00
  %5675 = fadd fast float %5641, 1.000000e+00
  %5676 = fmul fast float %5618, %5563
  %5677 = fmul fast float %5618, %5562
  %5678 = fmul fast float %5618, %5561
  %5679 = fmul fast float %5675, %5565
  %5680 = fmul fast float %5674, %5566
  %5681 = fmul fast float %5673, %5567
  %5682 = fadd fast float %5679, %5678
  %5683 = fmul fast float %5682, %4630
  %5684 = fadd fast float %5680, %5677
  %5685 = fmul fast float %5684, %4630
  %5686 = fadd fast float %5681, %5676
  %5687 = fmul fast float %5686, %4630
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5690 = fcmp fast oeq float %5689, 0.000000e+00
  br i1 %5690, label %6814, label %5691

; <label>:5691                                    ; preds = %5612
  %5692 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5693 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5694 = extractvalue %dx.types.CBufRet.f32 %5688, 2
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %5698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = select i1 %217, float %5700, float %5696
  %5704 = select i1 %217, float %5702, float %5697
  %5705 = select i1 %217, float %5701, float %5698
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 2
  %5708 = fmul fast float %5707, %107
  %5709 = fmul fast float %5707, %108
  %5710 = fmul fast float %5707, %109
  %5711 = fadd fast float %5708, %155
  %5712 = fadd fast float %5709, %156
  %5713 = fadd fast float %5710, %157
  %5714 = fcmp fast olt float %5689, 0.000000e+00
  br i1 %5714, label %6339, label %5715

; <label>:5715                                    ; preds = %5691
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5716, 2
  %5720 = extractvalue %dx.types.CBufRet.f32 %5716, 3
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5725 = extractvalue %dx.types.CBufRet.f32 %5721, 3
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5730 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5731 = fmul fast float %5717, %5711
  %5732 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5718, float %5731)  ; FMad(a,b,c)
  %5733 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5719, float %5732)  ; FMad(a,b,c)
  %5734 = fadd fast float %5733, %5720
  %5735 = fmul fast float %5722, %5711
  %5736 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5723, float %5735)  ; FMad(a,b,c)
  %5737 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5724, float %5736)  ; FMad(a,b,c)
  %5738 = fadd fast float %5737, %5725
  %5739 = fmul fast float %5727, %5711
  %5740 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5728, float %5739)  ; FMad(a,b,c)
  %5741 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5729, float %5740)  ; FMad(a,b,c)
  %5742 = fadd fast float %5741, %5730
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5747 = fmul fast float %5746, %5734
  %5748 = fmul fast float %5746, %5738
  %5749 = fadd fast float %5747, %5744
  %5750 = fadd fast float %5748, %5745
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5755 = fmul fast float %5754, %5734
  %5756 = fmul fast float %5754, %5738
  %5757 = fadd fast float %5755, %5752
  %5758 = fadd fast float %5756, %5753
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5761 = fsub fast float %5760, %5742
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = fmul fast float %5761, %5762
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5769 = fadd fast float %5768, %5766
  %5770 = fcmp fast ogt float %5769, 0.000000e+00
  br i1 %5770, label %5771, label %5795

; <label>:5771                                    ; preds = %5715
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5775 = fsub fast float %5757, %5773
  %5776 = fsub fast float %5758, %5774
  %5777 = fcmp fast olt float %5775, 0.000000e+00
  %5778 = fcmp fast olt float %5776, 0.000000e+00
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5790 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5791 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5792 = fsub fast float %5790, %5791
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fmul fast float %5793, %5765
  br label %5795

; <label>:5795                                    ; preds = %5771, %5715
  %5796 = phi float [ %5794, %5771 ], [ 0.000000e+00, %5715 ]
  %5797 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5799 = fadd fast float %5798, %5797
  %5800 = fcmp fast ogt float %5799, 0.000000e+00
  %5801 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  br i1 %5800, label %5802, label %5825

; <label>:5802                                    ; preds = %5795
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = fsub fast float %5749, %5804
  %5807 = fsub fast float %5750, %5805
  %5808 = fcmp fast olt float %5806, 0.000000e+00
  %5809 = fcmp fast olt float %5807, 0.000000e+00
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5814 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5815 = select i1 %5808, float %5811, float %5813
  %5816 = select i1 %5809, float %5812, float %5814
  %5817 = fmul fast float %5815, %5806
  %5818 = fmul fast float %5816, %5807
  %5819 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %5820 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5821 = call float @dx.op.binary.f32(i32 35, float %5819, float %5820)  ; FMax(a,b)
  %5822 = fsub fast float %5801, %5821
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = fmul fast float %5823, %5765
  br label %5825

; <label>:5825                                    ; preds = %5802, %5795
  %5826 = phi float [ %5824, %5802 ], [ 0.000000e+00, %5795 ]
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = fsub fast float %5734, %5831
  %5834 = fsub fast float %5738, %5832
  %5835 = fcmp fast olt float %5833, 0.000000e+00
  %5836 = fcmp fast olt float %5834, 0.000000e+00
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.CBufRet.f32 %5837, 3
  %5842 = select i1 %5835, float %5838, float %5840
  %5843 = select i1 %5836, float %5839, float %5841
  %5844 = fmul fast float %5842, %5833
  %5845 = fmul fast float %5843, %5834
  %5846 = call float @dx.op.unary.f32(i32 6, float %5844)  ; FAbs(value)
  %5847 = call float @dx.op.unary.f32(i32 6, float %5845)  ; FAbs(value)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5846, float %5847)  ; FMax(a,b)
  %5849 = fsub fast float %5801, %5848
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = call float @dx.op.binary.f32(i32 36, float %5850, float %5829)  ; FMin(a,b)
  %5852 = fmul fast float %5851, %5765
  %5853 = fsub fast float %5826, %5852
  %5854 = fsub fast float %5796, %5826
  %5855 = fsub fast float %5854, %5852
  %5856 = call float @dx.op.binary.f32(i32 35, float %5826, float %5796)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5852, float %5856)  ; FMax(a,b)
  %5858 = fcmp fast olt float %5857, 1.000000e+00
  br i1 %5858, label %5859, label %6257, !dx.controlflow.hints !92

; <label>:5859                                    ; preds = %5825
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = fcmp fast une float %5861, 0.000000e+00
  br i1 %5862, label %5863, label %6257, !dx.controlflow.hints !93

; <label>:5863                                    ; preds = %5859
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5867 = extractvalue %dx.types.CBufRet.f32 %5864, 2
  %5868 = extractvalue %dx.types.CBufRet.f32 %5864, 3
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = extractvalue %dx.types.CBufRet.f32 %5869, 2
  %5873 = extractvalue %dx.types.CBufRet.f32 %5869, 3
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5879 = fmul fast float %5865, %5711
  %5880 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5866, float %5879)  ; FMad(a,b,c)
  %5881 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5867, float %5880)  ; FMad(a,b,c)
  %5882 = fadd fast float %5881, %5868
  %5883 = fmul fast float %5870, %5711
  %5884 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5871, float %5883)  ; FMad(a,b,c)
  %5885 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5872, float %5884)  ; FMad(a,b,c)
  %5886 = fadd fast float %5885, %5873
  %5887 = fmul fast float %5875, %5711
  %5888 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %5876, float %5887)  ; FMad(a,b,c)
  %5889 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5877, float %5888)  ; FMad(a,b,c)
  %5890 = fadd fast float %5889, %5878
  %5891 = fcmp fast oge float %5882, 1.000000e+00
  %5892 = fcmp fast oge float %5886, 1.000000e+00
  %5893 = or i1 %5891, %5892
  %5894 = fcmp fast olt float %5882, 0.000000e+00
  %5895 = fcmp fast olt float %5886, 0.000000e+00
  %5896 = or i1 %5894, %5895
  %5897 = or i1 %5893, %5896
  br i1 %5897, label %6257, label %5898, !dx.controlflow.hints !94

; <label>:5898                                    ; preds = %5863
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5899, 2
  %5903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.i32 %5903, 2
  %5905 = uitofp i32 %5904 to float
  %5906 = extractvalue %dx.types.CBufRet.i32 %5903, 3
  %5907 = uitofp i32 %5906 to float
  %5908 = extractvalue %dx.types.CBufRet.f32 %5899, 3
  %5909 = fmul fast float %5908, 2.000000e+00
  %5910 = fsub fast float %5882, %5900
  %5911 = fsub fast float %5886, %5901
  %5912 = fmul fast float %5909, %5910
  %5913 = fmul fast float %5909, %5911
  %5914 = fdiv fast float 1.000000e+00, %5694
  %5915 = fmul fast float %5913, %5914
  %5916 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5917 = fmul fast float %5902, %5713
  %5918 = fmul fast float %5917, %5909
  %5919 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5920 = call float @dx.op.unary.f32(i32 6, float %5912)  ; FAbs(value)
  %5921 = call float @dx.op.binary.f32(i32 35, float %5919, float %5916)  ; FMax(a,b)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5923 = fmul fast float %5922, 2.000000e+00
  %5924 = call float @dx.op.unary.f32(i32 23, float %5923)  ; Log(value)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5924, float %5905)  ; FMax(a,b)
  %5926 = call float @dx.op.unary.f32(i32 22, float %5925)  ; Frc(value)
  %5927 = fadd fast float %5926, 0xBFEA666660000000
  %5928 = fmul fast float %5927, 8.000000e+00
  %5929 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5930 = call float @dx.op.unary.f32(i32 27, float %5925)  ; Round_ni(value)
  %5931 = fadd fast float %5930, %5929
  %5932 = call float @dx.op.binary.f32(i32 36, float %5931, float %5907)  ; FMin(a,b)
  %5933 = call float @dx.op.unary.f32(i32 27, float %5932)  ; Round_ni(value)
  %5934 = fsub fast float -0.000000e+00, %5933
  %5935 = call float @dx.op.unary.f32(i32 21, float %5934)  ; Exp(value)
  %5936 = fmul fast float %5935, %5909
  %5937 = fmul fast float %5936, %5882
  %5938 = fmul fast float %5936, %5886
  %5939 = fmul fast float %5937, 2.500000e-01
  %5940 = fmul fast float %5938, 2.500000e-01
  %5941 = fadd fast float %5939, 5.000000e-01
  %5942 = fadd fast float %5940, 5.000000e-01
  %5943 = fsub fast float %5907, %5905
  %5944 = fptoui float %5943 to i32
  %5945 = add i32 %5944, 320
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5945)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5949 = fcmp fast une float %5932, %5907
  %5950 = fsub fast float %5882, %5947
  %5951 = fsub fast float %5886, %5948
  %5952 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5953 = call float @dx.op.unary.f32(i32 6, float %5951)  ; FAbs(value)
  %5954 = fmul fast float %5952, %5936
  %5955 = fmul fast float %5953, %5936
  %5956 = fcmp fast olt float %5954, 1.000000e+00
  %5957 = fcmp fast olt float %5955, 1.000000e+00
  %5958 = and i1 %5956, %5957
  %5959 = or i1 %5949, %5958
  br i1 %5959, label %5960, label %6257, !dx.controlflow.hints !95

; <label>:5960                                    ; preds = %5898
  %5961 = fmul fast float %5938, 5.000000e-01
  %5962 = fmul fast float %5937, 5.000000e-01
  %5963 = fadd fast float %5961, 5.000000e-01
  %5964 = fadd fast float %5962, 5.000000e-01
  %5965 = sitofp i32 %5904 to float
  %5966 = fsub fast float %5932, %5965
  %5967 = call float @dx.op.unary.f32(i32 27, float %5966)  ; Round_ni(value)
  %5968 = call float @dx.op.unary.f32(i32 22, float %5932)  ; Frc(value)
  %5969 = call float @dx.op.unary.f32(i32 22, float %5964)  ; Frc(value)
  %5970 = call float @dx.op.unary.f32(i32 22, float %5963)  ; Frc(value)
  %5971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5969, float %5970, float %5967, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.ResRet.f32 %5971, 3
  %5976 = fcmp fast ogt float %5968, 0.000000e+00
  br i1 %5976, label %5977, label %5998, !dx.controlflow.hints !96

; <label>:5977                                    ; preds = %5960
  %5978 = fadd fast float %5967, 1.000000e+00
  %5979 = call float @dx.op.unary.f32(i32 22, float %5941)  ; Frc(value)
  %5980 = call float @dx.op.unary.f32(i32 22, float %5942)  ; Frc(value)
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5979, float %5980, float %5978, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = extractvalue %dx.types.ResRet.f32 %5981, 3
  %5986 = fsub fast float %5982, %5972
  %5987 = fsub fast float %5983, %5973
  %5988 = fsub fast float %5984, %5974
  %5989 = fsub fast float %5985, %5975
  %5990 = fmul fast float %5986, %5968
  %5991 = fmul fast float %5987, %5968
  %5992 = fmul fast float %5988, %5968
  %5993 = fmul fast float %5989, %5968
  %5994 = fadd fast float %5990, %5972
  %5995 = fadd fast float %5991, %5973
  %5996 = fadd fast float %5992, %5974
  %5997 = fadd fast float %5993, %5975
  br label %5998

; <label>:5998                                    ; preds = %5977, %5960
  %5999 = phi float [ %5994, %5977 ], [ %5972, %5960 ]
  %6000 = phi float [ %5995, %5977 ], [ %5973, %5960 ]
  %6001 = phi float [ %5996, %5977 ], [ %5974, %5960 ]
  %6002 = phi float [ %5997, %5977 ], [ %5975, %5960 ]
  %6003 = fadd fast float %5999, -5.000000e-01
  %6004 = fadd fast float %6001, -5.000000e-01
  %6005 = fmul fast float %6003, 0xBFD5555560000000
  %6006 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6004, float %6005)  ; FMad(a,b,c)
  %6007 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6000, float 0.000000e+00)  ; FMad(a,b,c)
  %6008 = fadd fast float %6007, %6002
  %6009 = fmul fast float %6003, -7.500000e-01
  %6010 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6004, float %6009)  ; FMad(a,b,c)
  %6011 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6000, float 0.000000e+00)  ; FMad(a,b,c)
  %6012 = fadd fast float %6011, %6002
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6020 = fsub fast float %6016, %6006
  %6021 = fsub fast float %6017, %6008
  %6022 = fsub fast float %6018, %6010
  %6023 = fsub fast float %6019, %6012
  %6024 = fmul fast float %6020, %6014
  %6025 = fmul fast float %6021, %6014
  %6026 = fmul fast float %6022, %6014
  %6027 = fmul fast float %6023, %6014
  %6028 = fadd fast float %6024, %6006
  %6029 = fadd fast float %6025, %6008
  %6030 = fadd fast float %6026, %6010
  %6031 = fadd fast float %6027, %6012
  %6032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6033 = extractvalue %dx.types.ResRet.i32 %6032, 0
  %6034 = and i32 %6033, 536870911
  %6035 = uitofp i32 %6034 to float
  %6036 = fmul fast float %6035, %5882
  %6037 = fmul fast float %6035, %5886
  %6038 = fptoui float %6036 to i32
  %6039 = fptoui float %6037 to i32
  %6040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6041 = extractvalue %dx.types.ResRet.i32 %6040, 0
  %6042 = and i32 %6041, 31
  %6043 = lshr i32 %6038, %6042
  %6044 = lshr i32 %6039, %6042
  %6045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.i32 %6045, 0
  %6047 = and i32 %6046, 31
  %6048 = shl i32 1, %6047
  %6049 = call i32 @dx.op.binary.i32(i32 40, i32 %6048, i32 4)  ; UMin(a,b)
  %6050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6051 = extractvalue %dx.types.ResRet.i32 %6050, 0
  %6052 = extractvalue %dx.types.ResRet.i32 %6050, 1
  %6053 = icmp eq i32 %6049, 0
  br i1 %6053, label %6095, label %6054

; <label>:6054                                    ; preds = %5998
  br label %6055

; <label>:6055                                    ; preds = %6083, %6054
  %6056 = phi i32 [ %6086, %6083 ], [ 0, %6054 ]
  %6057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.i32 %6057, 0
  %6059 = lshr i32 %6058, 16
  %6060 = and i32 %6059, 31
  %6061 = shl i32 %6044, %6060
  %6062 = add i32 %6061, %6043
  %6063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6064 = extractvalue %dx.types.ResRet.i32 %6063, 0
  %6065 = and i32 %6064, 31
  %6066 = shl i32 %6062, %6065
  %6067 = add i32 %6066, %6056
  %6068 = shl i32 %6067, 2
  %6069 = add i32 %6068, 32
  %6070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6069, i32 undef)  ; BufferLoad(srv,index,wot)
  %6071 = extractvalue %dx.types.ResRet.i32 %6070, 0
  %6072 = icmp slt i32 %6071, 0
  %6073 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6056
  %6074 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6056
  %6075 = bitcast float* %6073 to i32*
  %6076 = bitcast float* %6074 to i32*
  br i1 %6072, label %6077, label %6083

; <label>:6077                                    ; preds = %6055
  %6078 = and i32 %6071, 1073741823
  %6079 = add nuw nsw i32 %6078, 20
  %6080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6079, i32 undef)  ; BufferLoad(srv,index,wot)
  %6081 = extractvalue %dx.types.ResRet.i32 %6080, 0
  %6082 = extractvalue %dx.types.ResRet.i32 %6080, 1
  br label %6083

; <label>:6083                                    ; preds = %6077, %6055
  %6084 = phi i32 [ %6081, %6077 ], [ %6051, %6055 ]
  %6085 = phi i32 [ %6082, %6077 ], [ %6052, %6055 ]
  store i32 %6084, i32* %6075, align 4
  store i32 %6085, i32* %6076, align 4
  %6086 = add nuw i32 %6056, 1
  %6087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.i32 %6087, 2
  %6089 = icmp eq i32 %6088, 0
  %6090 = icmp ugt i32 %6071, -1073741825
  %6091 = and i1 %6090, %6089
  %6092 = icmp ult i32 %6086, %6049
  %6093 = and i1 %6091, %6092
  br i1 %6093, label %6055, label %6094

; <label>:6094                                    ; preds = %6083
  br label %6095

; <label>:6095                                    ; preds = %6094, %5998
  %6096 = phi i32 [ 0, %5998 ], [ %6086, %6094 ]
  %6097 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %6098 = fptoui float %6097 to i32
  %6099 = icmp eq i32 %6098, 0
  br i1 %6099, label %6151, label %6100

; <label>:6100                                    ; preds = %6095
  br label %6101

; <label>:6101                                    ; preds = %6146, %6100
  %6102 = phi i32 [ %6147, %6146 ], [ %6096, %6100 ]
  %6103 = phi i32 [ %6148, %6146 ], [ 0, %6100 ]
  %6104 = lshr i32 %6103, 2
  %6105 = and i32 %6103, 3
  %6106 = add nuw nsw i32 %6104, 83
  %6107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6106)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.i32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.i32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.i32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.i32 %6107, 3
  %6112 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6108, i32* %6112, align 4
  %6113 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6109, i32* %6113, align 4
  %6114 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6110, i32* %6114, align 4
  %6115 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6111, i32* %6115, align 4
  %6116 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6105
  %6117 = load i32, i32* %6116, align 4, !tbaa !97, !noalias !101
  %6118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6119 = extractvalue %dx.types.ResRet.i32 %6118, 0
  %6120 = lshr i32 %6119, 16
  %6121 = and i32 %6120, 31
  %6122 = shl i32 %6044, %6121
  %6123 = add i32 %6122, %6043
  %6124 = shl i32 %6123, 2
  %6125 = add i32 %6124, %6117
  %6126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.i32 %6126, 0
  %6128 = icmp eq i32 %6127, 0
  br i1 %6128, label %6146, label %6129

; <label>:6129                                    ; preds = %6101
  %6130 = icmp slt i32 %6127, 0
  %6131 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6102
  %6132 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6102
  %6133 = bitcast float* %6131 to i32*
  %6134 = bitcast float* %6132 to i32*
  br i1 %6130, label %6135, label %6142

; <label>:6135                                    ; preds = %6129
  %6136 = and i32 %6127, 1073741823
  %6137 = add i32 %6117, 20
  %6138 = add i32 %6137, %6136
  %6139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6138, i32 undef)  ; BufferLoad(srv,index,wot)
  %6140 = extractvalue %dx.types.ResRet.i32 %6139, 0
  %6141 = extractvalue %dx.types.ResRet.i32 %6139, 1
  br label %6142

; <label>:6142                                    ; preds = %6135, %6129
  %6143 = phi i32 [ %6140, %6135 ], [ %6051, %6129 ]
  %6144 = phi i32 [ %6141, %6135 ], [ %6052, %6129 ]
  store i32 %6143, i32* %6133, align 4
  store i32 %6144, i32* %6134, align 4
  %6145 = add i32 %6102, 1
  br label %6146

; <label>:6146                                    ; preds = %6142, %6101
  %6147 = phi i32 [ %6102, %6101 ], [ %6145, %6142 ]
  %6148 = add nuw i32 %6103, 1
  %6149 = icmp eq i32 %6148, %6098
  br i1 %6149, label %6150, label %6101

; <label>:6150                                    ; preds = %6146
  br label %6151

; <label>:6151                                    ; preds = %6150, %6095
  %6152 = phi i32 [ %6096, %6095 ], [ %6147, %6150 ]
  %6153 = icmp eq i32 %6152, 1
  %6154 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6155 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6153, label %6156, label %6159

; <label>:6156                                    ; preds = %6151
  %6157 = load float, float* %6154, align 4
  %6158 = load float, float* %6155, align 4
  br label %6186

; <label>:6159                                    ; preds = %6151
  %6160 = load float, float* %6154, align 4
  %6161 = load float, float* %6155, align 4
  %6162 = fdiv fast float 1.000000e+00, %6161
  %6163 = fsub fast float %6160, %6162
  %6164 = icmp ugt i32 %6152, 1
  br i1 %6164, label %6165, label %6181

; <label>:6165                                    ; preds = %6159
  br label %6166

; <label>:6166                                    ; preds = %6166, %6165
  %6167 = phi float [ %6176, %6166 ], [ %6163, %6165 ]
  %6168 = phi float [ %6177, %6166 ], [ %6160, %6165 ]
  %6169 = phi i32 [ %6178, %6166 ], [ 1, %6165 ]
  %6170 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6169
  %6171 = load float, float* %6170, align 4
  %6172 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6169
  %6173 = load float, float* %6172, align 4
  %6174 = fdiv fast float 1.000000e+00, %6173
  %6175 = fsub fast float %6171, %6174
  %6176 = call float @dx.op.binary.f32(i32 36, float %6167, float %6175)  ; FMin(a,b)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6168, float %6171)  ; FMax(a,b)
  %6178 = add nuw i32 %6169, 1
  %6179 = icmp eq i32 %6178, %6152
  br i1 %6179, label %6180, label %6166

; <label>:6180                                    ; preds = %6166
  br label %6181

; <label>:6181                                    ; preds = %6180, %6159
  %6182 = phi float [ %6163, %6159 ], [ %6176, %6180 ]
  %6183 = phi float [ %6160, %6159 ], [ %6177, %6180 ]
  %6184 = fsub fast float %6183, %6182
  %6185 = fdiv fast float 1.000000e+00, %6184
  br label %6186

; <label>:6186                                    ; preds = %6181, %6156
  %6187 = phi float [ %6157, %6156 ], [ %6183, %6181 ]
  %6188 = phi float [ %6158, %6156 ], [ %6185, %6181 ]
  %6189 = fadd fast float %5890, %6187
  %6190 = fmul fast float %6189, %6188
  %6191 = call float @dx.op.unary.f32(i32 7, float %6190)  ; Saturate(value)
  %6192 = fmul fast float %6191, 2.000000e+00
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = fmul fast float %6028, %6028
  %6195 = fsub fast float %6029, %6194
  %6196 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6195)  ; FMax(a,b)
  %6197 = fdiv fast float 1.000000e+00, %6196
  %6198 = fmul fast float %6029, %6028
  %6199 = fsub fast float %6030, %6198
  %6200 = fsub fast float %6193, %6028
  %6201 = fmul fast float %6193, %6193
  %6202 = fsub fast float %6201, %6029
  %6203 = fmul fast float %6197, %6199
  %6204 = fmul fast float %6203, %6200
  %6205 = fsub fast float %6202, %6204
  %6206 = fmul fast float %6029, %6029
  %6207 = fsub fast float %6031, %6206
  %6208 = fmul fast float %6199, %6199
  %6209 = fmul fast float %6208, %6197
  %6210 = fsub fast float %6207, %6209
  %6211 = fdiv fast float %6205, %6210
  %6212 = fmul fast float %6211, %6199
  %6213 = fsub fast float %6200, %6212
  %6214 = fmul fast float %6213, %6197
  %6215 = fmul fast float %6214, %6028
  %6216 = fsub fast float 1.000000e+00, %6215
  %6217 = fmul fast float %6211, %6029
  %6218 = fsub fast float %6216, %6217
  %6219 = fmul fast float %6214, %6214
  %6220 = fmul fast float %6211, 4.000000e+00
  %6221 = fmul fast float %6220, %6218
  %6222 = fsub fast float %6219, %6221
  %6223 = call float @dx.op.unary.f32(i32 24, float %6222)  ; Sqrt(value)
  %6224 = fcmp fast oge float %6214, 0.000000e+00
  %6225 = fsub fast float -0.000000e+00, %6223
  %6226 = select i1 %6224, float %6225, float %6223
  %6227 = fsub fast float %6226, %6214
  %6228 = fdiv fast float %6227, %6211
  %6229 = fdiv fast float %6218, %6227
  %6230 = fmul fast float %6228, 5.000000e-01
  %6231 = fmul fast float %6229, 2.000000e+00
  %6232 = select i1 %6224, float %6230, float %6231
  %6233 = select i1 %6224, float %6231, float %6230
  %6234 = call float @dx.op.binary.f32(i32 35, float %6232, float %6233)  ; FMax(a,b)
  %6235 = call float @dx.op.binary.f32(i32 36, float %6232, float %6233)  ; FMin(a,b)
  %6236 = fcmp fast ogt float %6193, %6234
  %6237 = fsub fast float %6193, %6235
  %6238 = fsub fast float %6193, %6234
  %6239 = fsub fast float %6234, %6235
  %6240 = select i1 %6236, float %6238, float %6239
  %6241 = fmul float %6237, %6240
  %6242 = select i1 %6236, float %6235, float %6193
  %6243 = fcmp fast ogt float %6193, %6235
  %6244 = fmul fast float %6242, %6234
  %6245 = fadd fast float %6242, %6234
  %6246 = fmul fast float %6245, %6028
  %6247 = fadd fast float %6244, %6029
  %6248 = fsub fast float %6247, %6246
  %6249 = fdiv fast float %6248, %6241
  %6250 = select i1 %6243, float %6249, float 0.000000e+00
  %6251 = fsub fast float 1.000000e+00, %6250
  %6252 = select i1 %6236, float %6251, float %6250
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6013, 3
  %6255 = fmul fast float %6254, %6253
  %6256 = fsub fast float 1.000000e+00, %6255
  br label %6257

; <label>:6257                                    ; preds = %6186, %5898, %5863, %5859, %5825
  %6258 = phi float [ 1.000000e+00, %5825 ], [ %6256, %6186 ], [ 1.000000e+00, %5863 ], [ 1.000000e+00, %5898 ], [ 1.000000e+00, %5859 ]
  %6259 = fcmp fast ogt float %5855, 0.000000e+00
  br i1 %6259, label %6260, label %6266, !dx.controlflow.hints !110

; <label>:6260                                    ; preds = %6257
  %6261 = fadd fast float %5768, %5742
  %6262 = call float @dx.op.binary.f32(i32 35, float %6261, float 0.000000e+00)  ; FMax(a,b)
  %6263 = fadd fast float %6262, 0x3F10000000000000
  %6264 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5757, float %5758, float undef, float undef, i32 0, i32 0, i32 undef, float %6263)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  br label %6266

; <label>:6266                                    ; preds = %6260, %6257
  %6267 = phi float [ %6265, %6260 ], [ 1.000000e+00, %6257 ]
  %6268 = fcmp fast ogt float %5853, 0.000000e+00
  br i1 %6268, label %6269, label %6275, !dx.controlflow.hints !111

; <label>:6269                                    ; preds = %6266
  %6270 = fadd fast float %5798, %5742
  %6271 = call float @dx.op.binary.f32(i32 35, float %6270, float 0.000000e+00)  ; FMax(a,b)
  %6272 = fadd fast float %6271, 0x3F10000000000000
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5749, float %5750, float undef, float undef, i32 0, i32 0, i32 undef, float %6272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  br label %6275

; <label>:6275                                    ; preds = %6269, %6266
  %6276 = phi float [ %6274, %6269 ], [ 1.000000e+00, %6266 ]
  %6277 = fcmp fast ogt float %5852, 0.000000e+00
  br i1 %6277, label %6278, label %6285, !dx.controlflow.hints !112

; <label>:6278                                    ; preds = %6275
  %6279 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %6280 = fadd fast float %6279, %5742
  %6281 = call float @dx.op.binary.f32(i32 35, float %6280, float 0.000000e+00)  ; FMax(a,b)
  %6282 = fadd fast float %6281, 0x3F10000000000000
  %6283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5734, float %5738, float undef, float undef, i32 0, i32 0, i32 undef, float %6282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 0
  br label %6285

; <label>:6285                                    ; preds = %6278, %6275
  %6286 = phi float [ %6284, %6278 ], [ 1.000000e+00, %6275 ]
  %6287 = fsub fast float %6267, %6258
  %6288 = fmul fast float %6287, %5796
  %6289 = fadd fast float %6288, %6258
  %6290 = fsub fast float %6276, %6289
  %6291 = fmul fast float %6290, %5826
  %6292 = fadd fast float %6291, %6289
  %6293 = fsub fast float %6286, %6292
  %6294 = fmul fast float %6293, %5852
  %6295 = fadd fast float %6294, %6292
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6298 = fcmp fast ogt float %6297, 0.000000e+00
  br i1 %6298, label %6299, label %6339, !dx.controlflow.hints !113

; <label>:6299                                    ; preds = %6285
  %6300 = fcmp fast ugt float %6297, 0.000000e+00
  br i1 %6300, label %6301, label %6336

; <label>:6301                                    ; preds = %6299
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6318 = fadd fast float %6315, %5711
  %6319 = fadd fast float %6316, %5712
  %6320 = fadd fast float %6317, %5713
  %6321 = fmul fast float %6318, %6303
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6304, float %6319, float %6321)  ; FMad(a,b,c)
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %6305, float %6320, float %6322)  ; FMad(a,b,c)
  %6324 = fadd fast float %6323, %6306
  %6325 = fmul fast float %6318, %6308
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6309, float %6319, float %6325)  ; FMad(a,b,c)
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6310, float %6320, float %6326)  ; FMad(a,b,c)
  %6328 = fadd fast float %6327, %6311
  %6329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6324, float %6328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6330 = extractvalue %dx.types.ResRet.f32 %6329, 0
  %6331 = fmul fast float %6330, %6313
  %6332 = fadd fast float %6331, %6312
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fmul fast float %6333, %6297
  %6335 = fsub fast float 1.000000e+00, %6334
  br label %6336

; <label>:6336                                    ; preds = %6301, %6299
  %6337 = phi float [ %6335, %6301 ], [ 1.000000e+00, %6299 ]
  %6338 = fmul fast float %6337, %6295
  br label %6339

; <label>:6339                                    ; preds = %6336, %6285, %5691
  %6340 = phi float [ 1.000000e+00, %5691 ], [ %6338, %6336 ], [ %6295, %6285 ]
  %6341 = call float @dx.op.binary.f32(i32 36, float %6340, float %6340)  ; FMin(a,b)
  %6342 = call float @dx.op.binary.f32(i32 36, float %6340, float %6341)  ; FMin(a,b)
  %6343 = fcmp fast ogt float %6342, 0.000000e+00
  br i1 %6343, label %6344, label %6504, !dx.controlflow.hints !114

; <label>:6344                                    ; preds = %6339
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6345, 3
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = fmul fast float %6346, %5711
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %6347, float %6360)  ; FMad(a,b,c)
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = fadd fast float %6362, %6349
  %6364 = fmul fast float %6351, %5711
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %6352, float %6364)  ; FMad(a,b,c)
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %6353, float %6365)  ; FMad(a,b,c)
  %6367 = fadd fast float %6366, %6354
  %6368 = fmul fast float %6356, %5711
  %6369 = call float @dx.op.tertiary.f32(i32 46, float %5712, float %6357, float %6368)  ; FMad(a,b,c)
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %6358, float %6369)  ; FMad(a,b,c)
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = extractvalue %dx.types.CBufRet.f32 %6371, 3
  %6375 = fmul fast float %6374, %6363
  %6376 = fmul fast float %6374, %6367
  %6377 = fadd fast float %6375, %6372
  %6378 = fadd fast float %6376, %6373
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.CBufRet.f32 %6379, 1
  %6382 = fsub fast float %6377, %6380
  %6383 = fsub fast float %6378, %6381
  %6384 = fcmp fast olt float %6382, 0.000000e+00
  %6385 = fcmp fast olt float %6383, 0.000000e+00
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = select i1 %6384, float %6387, float %6389
  %6392 = select i1 %6385, float %6388, float %6390
  %6393 = fmul fast float %6391, %6382
  %6394 = fmul fast float %6392, %6383
  %6395 = call float @dx.op.unary.f32(i32 6, float %6393)  ; FAbs(value)
  %6396 = call float @dx.op.unary.f32(i32 6, float %6394)  ; FAbs(value)
  %6397 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %6398 = call float @dx.op.binary.f32(i32 35, float %6395, float %6396)  ; FMax(a,b)
  %6399 = fsub fast float %6397, %6398
  %6400 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6401 = fcmp fast ogt float %6400, 0.000000e+00
  br i1 %6401, label %6402, label %6443, !dx.controlflow.hints !115

; <label>:6402                                    ; preds = %6344
  %6403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6377, float %6378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6405 = fcmp fast ogt float %6404, 0.000000e+00
  br i1 %6405, label %6406, label %6438

; <label>:6406                                    ; preds = %6402
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6377, float %6378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = fsub fast float 1.000000e+00, %6359
  %6413 = fsub fast float %6412, %6370
  %6414 = fmul fast float %6413, 0x400921FB60000000
  %6415 = fadd fast float %6414, 0x3FF921FB60000000
  %6416 = call float @dx.op.unary.f32(i32 13, float %6415)  ; Sin(value)
  %6417 = fadd fast float %6416, -1.000000e+00
  %6418 = fmul fast float %6417, 0x3FD45F3060000000
  %6419 = fmul fast float %6413, 0x401921FB60000000
  %6420 = fadd fast float %6419, 0x400921FB60000000
  %6421 = call float @dx.op.unary.f32(i32 13, float %6420)  ; Sin(value)
  %6422 = fadd fast float %6421, 0x3E7777A5C0000000
  %6423 = fmul fast float %6422, 0x3FC45F3060000000
  %6424 = fmul fast float %6413, 0x4022D97C80000000
  %6425 = fadd fast float %6424, 0x4012D97C80000000
  %6426 = call float @dx.op.unary.f32(i32 13, float %6425)  ; Sin(value)
  %6427 = fadd fast float %6426, 1.000000e+00
  %6428 = fmul fast float %6427, 0x3FBB2995E0000000
  %6429 = fmul fast float %6413, 0x402921FB60000000
  %6430 = fadd fast float %6429, 0x401921FB60000000
  %6431 = call float @dx.op.unary.f32(i32 13, float %6430)  ; Sin(value)
  %6432 = fadd fast float %6431, 0xBE8777A5C0000000
  %6433 = fmul fast float %6432, 0x3FB45F3060000000
  %6434 = call float @dx.op.dot4.f32(i32 56, float %6408, float %6409, float %6410, float %6411, float %6418, float %6423, float %6428, float %6433)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6435 = fmul fast float %6434, 0xBFF7154760000000
  %6436 = call float @dx.op.unary.f32(i32 21, float %6435)  ; Exp(value)
  %6437 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  br label %6438

; <label>:6438                                    ; preds = %6406, %6402
  %6439 = phi float [ %6437, %6406 ], [ 1.000000e+00, %6402 ]
  %6440 = fadd fast float %6439, -1.000000e+00
  %6441 = fmul fast float %6440, %6400
  %6442 = fadd fast float %6441, 1.000000e+00
  br label %6443

; <label>:6443                                    ; preds = %6438, %6344
  %6444 = phi float [ %6442, %6438 ], [ 1.000000e+00, %6344 ]
  %6445 = fmul fast float %6444, %6340
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = fadd fast float %6447, %155
  %6451 = fadd fast float %6448, %156
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6454 = fsub fast float -0.000000e+00, %6450
  %6455 = fsub fast float -0.000000e+00, %6451
  %6456 = fsub fast float %5312, %6449
  %6457 = fadd fast float %6456, %6453
  %6458 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6454, float %6455, float %6457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5692, float %5693, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = fdiv fast float 1.000000e+00, %6459
  %6461 = fmul fast float %6460, %6458
  %6462 = fmul fast float %5692, %6461
  %6463 = fmul fast float %5693, %6461
  %6464 = fadd fast float %6462, %6450
  %6465 = fadd fast float %6463, %6451
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = fsub fast float %6464, %6467
  %6470 = fsub fast float %6465, %6468
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 3
  %6474 = fmul fast float %6469, %6472
  %6475 = fmul fast float %6470, %6473
  %6476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.i32 %6476, 3
  %6478 = icmp eq i32 %6477, 0
  br i1 %6478, label %6484, label %6479

; <label>:6479                                    ; preds = %6443
  %6480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6474, float %6475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.ResRet.f32 %6480, 2
  br label %6489

; <label>:6484                                    ; preds = %6443
  %6485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6474, float %6475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6485, 2
  br label %6489

; <label>:6489                                    ; preds = %6484, %6479
  %6490 = phi float [ %6481, %6479 ], [ %6486, %6484 ]
  %6491 = phi float [ %6482, %6479 ], [ %6487, %6484 ]
  %6492 = phi float [ %6483, %6479 ], [ %6488, %6484 ]
  %6493 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6494 = fmul fast float %6493, %6490
  %6495 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6496 = fsub fast float %6461, %6495
  %6497 = fsub fast float %6496, %6494
  %6498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6497)  ; FMax(a,b)
  %6499 = fmul fast float %6498, %6491
  %6500 = call float @dx.op.binary.f32(i32 36, float %6492, float %6499)  ; FMin(a,b)
  %6501 = fmul fast float %6500, 0xBFF7154760000000
  %6502 = call float @dx.op.unary.f32(i32 21, float %6501)  ; Exp(value)
  %6503 = fmul fast float %6445, %6502
  br label %6504

; <label>:6504                                    ; preds = %6489, %6339
  %6505 = phi float [ %6503, %6489 ], [ %6340, %6339 ]
  %6506 = call float @dx.op.binary.f32(i32 36, float %6505, float %6505)  ; FMin(a,b)
  %6507 = call float @dx.op.binary.f32(i32 36, float %6505, float %6506)  ; FMin(a,b)
  %6508 = fcmp fast ogt float %6507, 0.000000e+00
  br i1 %6508, label %6509, label %6814, !dx.controlflow.hints !116

; <label>:6509                                    ; preds = %6504
  %6510 = fmul fast float %6505, %5703
  %6511 = fmul fast float %6505, %5704
  %6512 = fmul fast float %6505, %5705
  %6513 = fsub fast float %157, %5100
  %6514 = fcmp fast ogt float %6513, 0.000000e+00
  %6515 = fmul fast float %5692, 5.120000e+02
  %6516 = fmul fast float %5693, 5.120000e+02
  %6517 = fmul fast float %5694, 5.120000e+02
  %6518 = fadd fast float %6517, %157
  %6519 = fsub fast float %5100, %6518
  %6520 = fmul fast float %6519, 2.000000e+00
  %6521 = fadd fast float %6520, %6518
  %6522 = select i1 %6514, float %6521, float %6518
  %6523 = fsub fast float %6522, %157
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6523, float %6515, float %6516, float %6523)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = call float @dx.op.unary.f32(i32 25, float %6524)  ; Rsqrt(value)
  %6526 = fmul fast float %6525, %6515
  %6527 = fmul fast float %6525, %6516
  %6528 = fmul fast float %6525, %6523
  %6529 = fsub fast float %5100, %157
  %6530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6529)  ; Dot3(ax,ay,az,bx,by,bz)
  %6531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6526, float %6527, float %6528)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = fdiv fast float 1.000000e+00, %6531
  %6533 = fmul fast float %6532, %6530
  %6534 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6513, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6535 = fcmp fast ogt float %6534, 0.000000e+00
  %6536 = fcmp fast olt float %6534, 0.000000e+00
  %6537 = zext i1 %6535 to i32
  %6538 = zext i1 %6536 to i32
  %6539 = sub nsw i32 %6537, %6538
  %6540 = sitofp i32 %6539 to float
  %6541 = fsub fast float %6522, %5100
  %6542 = call float @dx.op.dot3.f32(i32 55, float %6515, float %6516, float %6541, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6543 = fcmp fast ogt float %6542, 0.000000e+00
  %6544 = fcmp fast olt float %6542, 0.000000e+00
  %6545 = zext i1 %6543 to i32
  %6546 = zext i1 %6544 to i32
  %6547 = sub nsw i32 %6545, %6546
  %6548 = sitofp i32 %6547 to float
  %6549 = fcmp fast une float %6540, %6548
  br i1 %6549, label %6550, label %6560

; <label>:6550                                    ; preds = %6509
  %6551 = fmul fast float %6533, %6528
  %6552 = fmul fast float %6533, %6527
  %6553 = fmul fast float %6533, %6526
  %6554 = fmul fast float %6553, %6553
  %6555 = fmul fast float %6552, %6552
  %6556 = fadd fast float %6554, %6555
  %6557 = fmul fast float %6551, %6551
  %6558 = fadd fast float %6556, %6557
  %6559 = call float @dx.op.unary.f32(i32 24, float %6558)  ; Sqrt(value)
  br label %6570

; <label>:6560                                    ; preds = %6509
  %6561 = icmp slt i32 %6539, 0
  br i1 %6561, label %6562, label %6570

; <label>:6562                                    ; preds = %6560
  %6563 = fsub fast float %157, %6522
  %6564 = fmul fast float %6515, %6515
  %6565 = fmul fast float %6516, %6516
  %6566 = fadd fast float %6564, %6565
  %6567 = fmul fast float %6563, %6563
  %6568 = fadd fast float %6566, %6567
  %6569 = call float @dx.op.unary.f32(i32 24, float %6568)  ; Sqrt(value)
  br label %6570

; <label>:6570                                    ; preds = %6562, %6560, %6550
  %6571 = phi float [ %6559, %6550 ], [ %6569, %6562 ], [ 0.000000e+00, %6560 ]
  %6572 = fsub fast float -0.000000e+00, %6571
  %6573 = select i1 %6514, float -0.000000e+00, float %6572
  %6574 = fmul fast float %5101, 0x3FF7154760000000
  %6575 = fmul fast float %6574, %6573
  %6576 = fmul fast float %5102, 0x3FF7154760000000
  %6577 = fmul fast float %6576, %6573
  %6578 = fmul fast float %5103, 0x3FF7154760000000
  %6579 = fmul fast float %6578, %6573
  %6580 = call float @dx.op.unary.f32(i32 21, float %6575)  ; Exp(value)
  %6581 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6582 = call float @dx.op.unary.f32(i32 21, float %6579)  ; Exp(value)
  %6583 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6584 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6585 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6586 = fmul fast float %6510, %6583
  %6587 = fmul fast float %6511, %6584
  %6588 = fmul fast float %6512, %6585
  %6589 = fsub fast float %5692, %5300
  %6590 = fsub fast float %5693, %5299
  %6591 = fsub fast float %5694, %5298
  %6592 = call float @dx.op.dot3.f32(i32 55, float %6589, float %6590, float %6591, float %6589, float %6590, float %6591)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = call float @dx.op.unary.f32(i32 25, float %6592)  ; Rsqrt(value)
  %6594 = fmul fast float %6593, %6589
  %6595 = fmul fast float %6593, %6590
  %6596 = fmul fast float %6593, %6591
  %6597 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %6598 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5296, float %5295, float %6594, float %6595, float %6596)  ; Dot3(ax,ay,az,bx,by,bz)
  %6599 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  %6600 = fmul fast float %6599, %6599
  %6601 = fmul fast float %6600, %5328
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = fmul fast float %6602, %6599
  %6604 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5308, float %5309, float %6594, float %6595, float %6596)  ; Dot3(ax,ay,az,bx,by,bz)
  %6605 = fmul fast float %6604, %6604
  %6606 = call float @dx.op.unary.f32(i32 6, float %6597)  ; FAbs(value)
  %6607 = fsub fast float 1.000000e+00, %5310
  %6608 = call float @dx.op.binary.f32(i32 35, float %6607, float 0x3F847AE140000000)  ; FMax(a,b)
  %6609 = fmul fast float %6608, %6608
  %6610 = fmul fast float %6609, %6609
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %5315, %5315
  %6613 = fmul fast float %6612, %6611
  %6614 = fadd fast float %6613, %6610
  %6615 = bitcast float %6614 to i32
  %6616 = ashr i32 %6615, 1
  %6617 = add nsw i32 %6616, 532487669
  %6618 = bitcast i32 %6617 to float
  %6619 = fadd fast float %6618, %5315
  %6620 = fmul fast float %6610, %6605
  %6621 = fsub fast float 1.000000e+00, %6605
  %6622 = fadd fast float %6621, %6620
  %6623 = fmul fast float %6606, %6606
  %6624 = fmul fast float %6623, %6611
  %6625 = fadd fast float %6624, %6610
  %6626 = bitcast float %6625 to i32
  %6627 = ashr i32 %6626, 1
  %6628 = add nsw i32 %6627, 532487669
  %6629 = bitcast i32 %6628 to float
  %6630 = fadd fast float %6629, %6606
  %6631 = fmul fast float %6622, %6622
  %6632 = fmul fast float %6631, %6619
  %6633 = fmul fast float %6632, %6630
  %6634 = fdiv fast float 0x3FF0A00000000000, %6633
  %6635 = fmul fast float %6634, %6610
  %6636 = call float @dx.op.unary.f32(i32 6, float %6598)  ; FAbs(value)
  %6637 = fsub fast float 1.000000e+00, %6636
  %6638 = bitcast float %6637 to i32
  %6639 = sitofp i32 %6638 to float
  %6640 = fmul fast float %6639, 5.000000e+00
  %6641 = fadd fast float %6640, 0xC1EFBF8940000000
  %6642 = fptosi float %6641 to i32
  %6643 = bitcast i32 %6642 to float
  %6644 = fsub fast float 1.000000e+00, %5304
  %6645 = fsub fast float 1.000000e+00, %5305
  %6646 = fsub fast float 1.000000e+00, %5313
  %6647 = fmul fast float %6643, %6644
  %6648 = fmul fast float %6643, %6645
  %6649 = fmul fast float %6643, %6646
  %6650 = fadd fast float %6647, %5304
  %6651 = fadd fast float %6648, %5305
  %6652 = fadd fast float %6649, %5313
  br i1 %5585, label %6653, label %6676

; <label>:6653                                    ; preds = %6570
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %6636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = fadd fast float %6655, -5.000000e-01
  %6659 = fadd fast float %6656, -5.000000e-01
  %6660 = fadd fast float %6657, -5.000000e-01
  %6661 = fmul fast float %5304, 4.000000e+00
  %6662 = fmul fast float %6661, %6644
  %6663 = fmul fast float %6662, %6658
  %6664 = fmul fast float %5305, 4.000000e+00
  %6665 = fmul fast float %6664, %6645
  %6666 = fmul fast float %6665, %6659
  %6667 = fmul fast float %5313, 4.000000e+00
  %6668 = fmul fast float %6667, %6646
  %6669 = fmul fast float %6668, %6660
  %6670 = fadd fast float %6663, %6650
  %6671 = fadd fast float %6666, %6651
  %6672 = fadd fast float %6669, %6652
  %6673 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6674 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6675 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  br label %6676

; <label>:6676                                    ; preds = %6653, %6570
  %6677 = phi float [ %6673, %6653 ], [ %6650, %6570 ]
  %6678 = phi float [ %6674, %6653 ], [ %6651, %6570 ]
  %6679 = phi float [ %6675, %6653 ], [ %6652, %6570 ]
  %6680 = fmul fast float %6597, 9.843750e-01
  %6681 = fadd fast float %6680, 7.812500e-03
  %6682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6681, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 2
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 3
  %6685 = fmul fast float %6683, %5304
  %6686 = fmul fast float %6683, %5305
  %6687 = fmul fast float %6683, %5313
  %6688 = fadd fast float %6685, %6684
  %6689 = fadd fast float %6686, %6684
  %6690 = fadd fast float %6687, %6684
  br i1 %5585, label %6691, label %6714

; <label>:6691                                    ; preds = %6676
  %6692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %6597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 0
  %6694 = extractvalue %dx.types.ResRet.f32 %6692, 1
  %6695 = extractvalue %dx.types.ResRet.f32 %6692, 2
  %6696 = fadd fast float %6693, -5.000000e-01
  %6697 = fadd fast float %6694, -5.000000e-01
  %6698 = fadd fast float %6695, -5.000000e-01
  %6699 = fmul fast float %5304, 4.000000e+00
  %6700 = fmul fast float %6699, %6644
  %6701 = fmul fast float %6700, %6696
  %6702 = fmul fast float %5305, 4.000000e+00
  %6703 = fmul fast float %6702, %6645
  %6704 = fmul fast float %6703, %6697
  %6705 = fmul fast float %5313, 4.000000e+00
  %6706 = fmul fast float %6705, %6646
  %6707 = fmul fast float %6706, %6698
  %6708 = fadd fast float %6701, %6688
  %6709 = fadd fast float %6704, %6689
  %6710 = fadd fast float %6707, %6690
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6712 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6713 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  br label %6714

; <label>:6714                                    ; preds = %6691, %6676
  %6715 = phi float [ %6711, %6691 ], [ %6688, %6676 ]
  %6716 = phi float [ %6712, %6691 ], [ %6689, %6676 ]
  %6717 = phi float [ %6713, %6691 ], [ %6690, %6676 ]
  %6718 = call float @dx.op.binary.f32(i32 35, float %6716, float %6717)  ; FMax(a,b)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6715, float %6718)  ; FMax(a,b)
  %6720 = fsub fast float 1.000000e+00, %6719
  %6721 = fsub fast float -0.000000e+00, %5307
  %6722 = fsub fast float -0.000000e+00, %5308
  %6723 = fsub fast float -0.000000e+00, %5309
  %6724 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %6721, float %6722, float %6723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  %6726 = fmul fast float %6725, 9.843750e-01
  %6727 = fadd fast float %6726, 7.812500e-03
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6727, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 2
  %6730 = extractvalue %dx.types.ResRet.f32 %6728, 3
  %6731 = fmul fast float %6729, %5304
  %6732 = fmul fast float %6729, %5305
  %6733 = fmul fast float %6729, %5313
  %6734 = fadd fast float %6731, %6730
  %6735 = fadd fast float %6732, %6730
  %6736 = fadd fast float %6733, %6730
  br i1 %5585, label %6737, label %6760

; <label>:6737                                    ; preds = %6714
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %6725, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = fadd fast float %6739, -5.000000e-01
  %6743 = fadd fast float %6740, -5.000000e-01
  %6744 = fadd fast float %6741, -5.000000e-01
  %6745 = fmul fast float %5304, 4.000000e+00
  %6746 = fmul fast float %6745, %6644
  %6747 = fmul fast float %6746, %6742
  %6748 = fmul fast float %5305, 4.000000e+00
  %6749 = fmul fast float %6748, %6645
  %6750 = fmul fast float %6749, %6743
  %6751 = fmul fast float %5313, 4.000000e+00
  %6752 = fmul fast float %6751, %6646
  %6753 = fmul fast float %6752, %6744
  %6754 = fadd fast float %6747, %6734
  %6755 = fadd fast float %6750, %6735
  %6756 = fadd fast float %6753, %6736
  %6757 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6758 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6759 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  br label %6760

; <label>:6760                                    ; preds = %6737, %6714
  %6761 = phi float [ %6757, %6737 ], [ %6734, %6714 ]
  %6762 = phi float [ %6758, %6737 ], [ %6735, %6714 ]
  %6763 = phi float [ %6759, %6737 ], [ %6736, %6714 ]
  %6764 = call float @dx.op.binary.f32(i32 35, float %6762, float %6763)  ; FMax(a,b)
  %6765 = call float @dx.op.binary.f32(i32 35, float %6761, float %6764)  ; FMax(a,b)
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6766, %6725
  %6768 = fmul fast float %6767, %4723
  %6769 = fmul fast float %6767, %4724
  %6770 = fmul fast float %6767, %4725
  %6771 = fmul fast float %6677, %6635
  %6772 = fmul fast float %6678, %6635
  %6773 = fmul fast float %6679, %6635
  %6774 = fsub fast float 1.000000e+00, %6598
  %6775 = bitcast float %6774 to i32
  %6776 = sitofp i32 %6775 to float
  %6777 = fmul fast float %6776, 5.000000e+00
  %6778 = fadd fast float %6777, 0xC1EFBF8940000000
  %6779 = fptosi float %6778 to i32
  %6780 = bitcast i32 %6779 to float
  %6781 = fmul fast float %6780, %4634
  %6782 = fmul fast float %6720, %6781
  %6783 = fmul fast float %6782, %5632
  %6784 = fmul fast float %6782, %5633
  %6785 = fmul fast float %6782, %5634
  %6786 = fmul fast float %6720, %6603
  %6787 = fadd fast float %6783, %6771
  %6788 = fadd fast float %6784, %6772
  %6789 = fadd fast float %6785, %6773
  %6790 = fadd fast float %6768, %6786
  %6791 = fadd fast float %6769, %6786
  %6792 = fadd fast float %6770, %6786
  %6793 = fmul fast float %6790, %6586
  %6794 = fmul fast float %6791, %6587
  %6795 = fmul fast float %6792, %6588
  %6796 = fmul fast float %6603, %6586
  %6797 = fmul fast float %6796, %6787
  %6798 = fmul fast float %6603, %6587
  %6799 = fmul fast float %6798, %6788
  %6800 = fmul fast float %6603, %6588
  %6801 = fmul fast float %6800, %6789
  %6802 = fadd fast float %6793, %5682
  %6803 = fmul fast float %6802, %4630
  %6804 = fadd fast float %6794, %5684
  %6805 = fmul fast float %6804, %4630
  %6806 = fadd fast float %6795, %5686
  %6807 = fmul fast float %6806, %4630
  %6808 = fadd fast float %6797, %5665
  %6809 = fmul fast float %6808, %4630
  %6810 = fadd fast float %6799, %5668
  %6811 = fmul fast float %6810, %4630
  %6812 = fadd fast float %6801, %5671
  %6813 = fmul fast float %6812, %4630
  br label %6814

; <label>:6814                                    ; preds = %6760, %6504, %5612
  %6815 = phi float [ %5666, %5612 ], [ %5666, %6504 ], [ %6809, %6760 ]
  %6816 = phi float [ %5669, %5612 ], [ %5669, %6504 ], [ %6811, %6760 ]
  %6817 = phi float [ %5672, %5612 ], [ %5672, %6504 ], [ %6813, %6760 ]
  %6818 = phi float [ %5683, %5612 ], [ %5683, %6504 ], [ %6803, %6760 ]
  %6819 = phi float [ %5685, %5612 ], [ %5685, %6504 ], [ %6805, %6760 ]
  %6820 = phi float [ %5687, %5612 ], [ %5687, %6504 ], [ %6807, %6760 ]
  %6821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.i32 %6821, 0
  %6823 = icmp eq i32 %6822, 0
  br i1 %6823, label %7499, label %6824

; <label>:6824                                    ; preds = %6814
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 2
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 3
  %6828 = fmul fast float %6826, %100
  %6829 = fmul fast float %6827, %101
  %6830 = fptoui float %6828 to i32
  %6831 = fptoui float %6829 to i32
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6832, 3
  %6836 = fadd fast float %91, -4.000000e+00
  %6837 = call float @dx.op.binary.f32(i32 35, float %6836, float 0.000000e+00)  ; FMax(a,b)
  %6838 = fadd fast float %6837, %6833
  %6839 = fmul fast float %6838, %6834
  %6840 = call float @dx.op.unary.f32(i32 23, float %6839)  ; Log(value)
  %6841 = fmul fast float %6840, %6835
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6844 = fmul fast float %6841, %6843
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.i32 %6846, 1
  %6848 = add i32 %6847, -1
  %6849 = uitofp i32 %6847 to float
  %6850 = fmul fast float %6849, %6845
  %6851 = fptoui float %6850 to i32
  %6852 = call i32 @dx.op.binary.i32(i32 40, i32 %6851, i32 %6848)  ; UMin(a,b)
  %6853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.i32 %6853, 2
  %6855 = extractvalue %dx.types.CBufRet.i32 %6853, 3
  %6856 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6831, i32 %6854, i32 %6830)  ; UMad(a,b,c)
  %6857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6852, i32 %6855, i32 %6856)  ; UMad(a,b,c)
  %6858 = add nsw i32 %6822, -1
  %6859 = call i32 @dx.op.binary.i32(i32 37, i32 %6858, i32 0)  ; IMax(a,b)
  %6860 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %6861 = fptoui float %6860 to i32
  %6862 = lshr i32 %6861, 5
  %6863 = call i32 @dx.op.binary.i32(i32 40, i32 %6862, i32 8191)  ; UMin(a,b)
  %6864 = shl i32 %6863, 2
  %6865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6864, i32 undef)  ; BufferLoad(srv,index,wot)
  %6866 = extractvalue %dx.types.ResRet.i32 %6865, 0
  %6867 = lshr i32 %6866, 16
  %6868 = and i32 %6866, 65535
  %6869 = lshr i32 %6866, 21
  %6870 = lshr i32 %6868, 5
  %6871 = call i32 @dx.op.binary.i32(i32 40, i32 %6870, i32 %6859)  ; UMin(a,b)
  %6872 = icmp ugt i32 %6869, %6871
  br i1 %6872, label %7499, label %6873

; <label>:6873                                    ; preds = %6824
  br label %6874

; <label>:6874                                    ; preds = %7489, %6873
  %6875 = phi i32 [ %7496, %7489 ], [ %6869, %6873 ]
  %6876 = phi float [ %7490, %7489 ], [ %6815, %6873 ]
  %6877 = phi float [ %7491, %7489 ], [ %6816, %6873 ]
  %6878 = phi float [ %7492, %7489 ], [ %6817, %6873 ]
  %6879 = phi float [ %7493, %7489 ], [ %6818, %6873 ]
  %6880 = phi float [ %7494, %7489 ], [ %6819, %6873 ]
  %6881 = phi float [ %7495, %7489 ], [ %6820, %6873 ]
  %6882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.i32 %6882, 0
  %6884 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6857, i32 %6883, i32 %6875)  ; UMad(a,b,c)
  %6885 = shl i32 %6884, 2
  %6886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6885, i32 undef)  ; BufferLoad(srv,index,wot)
  %6887 = extractvalue %dx.types.ResRet.i32 %6886, 0
  %6888 = shl i32 %6875, 5
  %6889 = sub nsw i32 %6867, %6888
  %6890 = call i32 @dx.op.binary.i32(i32 37, i32 %6889, i32 0)  ; IMax(a,b)
  %6891 = call i32 @dx.op.binary.i32(i32 38, i32 %6890, i32 31)  ; IMin(a,b)
  %6892 = sub nsw i32 1, %6867
  %6893 = add nsw i32 %6892, %6868
  %6894 = call i32 @dx.op.binary.i32(i32 37, i32 %6893, i32 0)  ; IMax(a,b)
  %6895 = call i32 @dx.op.binary.i32(i32 38, i32 %6894, i32 32)  ; IMin(a,b)
  %6896 = and i32 %6895, 31
  %6897 = shl i32 -1, %6896
  %6898 = xor i32 %6897, -1
  %6899 = and i32 %6891, 31
  %6900 = shl i32 %6898, %6899
  %6901 = icmp eq i32 %6895, 32
  %6902 = select i1 %6901, i32 -1, i32 %6900
  %6903 = and i32 %6902, %6887
  %6904 = icmp eq i32 %6903, 0
  br i1 %6904, label %7489, label %6905

; <label>:6905                                    ; preds = %6874
  br label %6906

; <label>:6906                                    ; preds = %7040, %6905
  %6907 = phi i32 [ %6918, %7040 ], [ %6903, %6905 ]
  %6908 = phi float [ %7041, %7040 ], [ %6876, %6905 ]
  %6909 = phi float [ %7042, %7040 ], [ %6877, %6905 ]
  %6910 = phi float [ %7043, %7040 ], [ %6878, %6905 ]
  %6911 = phi float [ %7044, %7040 ], [ %6879, %6905 ]
  %6912 = phi float [ %7045, %7040 ], [ %6880, %6905 ]
  %6913 = phi float [ %7046, %7040 ], [ %6881, %6905 ]
  %6914 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6907)  ; FirstbitLo(value)
  %6915 = add i32 %6914, %6888
  %6916 = and i32 %6914, 31
  %6917 = shl i32 1, %6916
  %6918 = xor i32 %6917, %6907
  %6919 = mul i32 %6915, 112
  %6920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6919, i32 undef)  ; BufferLoad(srv,index,wot)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.ResRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.ResRet.f32 %6920, 2
  %6924 = or i32 %6919, 12
  %6925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = add i32 %6919, 16
  %6928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6927, i32 undef)  ; BufferLoad(srv,index,wot)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.ResRet.f32 %6928, 2
  %6932 = add i32 %6919, 28
  %6933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6932, i32 undef)  ; BufferLoad(srv,index,wot)
  %6934 = extractvalue %dx.types.ResRet.i32 %6933, 0
  %6935 = add i32 %6919, 44
  %6936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6935, i32 undef)  ; BufferLoad(srv,index,wot)
  %6937 = extractvalue %dx.types.ResRet.f32 %6936, 0
  %6938 = add i32 %6919, 48
  %6939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6938, i32 undef)  ; BufferLoad(srv,index,wot)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.ResRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.ResRet.f32 %6939, 2
  %6943 = extractvalue %dx.types.ResRet.f32 %6939, 3
  %6944 = add i32 %6919, 64
  %6945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6944, i32 undef)  ; BufferLoad(srv,index,wot)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = add i32 %6919, 80
  %6951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6950, i32 undef)  ; BufferLoad(srv,index,wot)
  %6952 = extractvalue %dx.types.ResRet.f32 %6951, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6951, 2
  %6954 = add i32 %6919, 92
  %6955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6956 = extractvalue %dx.types.ResRet.i32 %6955, 0
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6921, float %6922, float %6923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = select i1 %217, float %6952, float %6921
  %6959 = select i1 %217, float %6957, float %6922
  %6960 = select i1 %217, float %6953, float %6923
  %6961 = and i32 %6956, 65535
  %6962 = uitofp i32 %6961 to float
  %6963 = lshr i32 %6956, 16
  %6964 = uitofp i32 %6963 to float
  %6965 = and i32 %6934, 65535
  %6966 = and i32 %6934, 50331648
  %6967 = icmp eq i32 %6966, 33554432
  %6968 = fsub fast float %6940, %155
  %6969 = fsub fast float %6941, %156
  %6970 = fsub fast float %6942, %157
  %6971 = call float @dx.op.dot3.f32(i32 55, float %6968, float %6969, float %6970, float %6968, float %6969, float %6970)  ; Dot3(ax,ay,az,bx,by,bz)
  %6972 = call float @dx.op.unary.f32(i32 24, float %6971)  ; Sqrt(value)
  %6973 = fdiv fast float 1.000000e+00, %6972
  %6974 = fmul fast float %6973, %6968
  %6975 = fmul fast float %6973, %6969
  %6976 = fmul fast float %6973, %6970
  %6977 = fadd fast float %6972, %6926
  %6978 = fdiv fast float 1.000000e+00, %6977
  %6979 = fmul float %6937, %6978
  %6980 = fmul float %6979, %6979
  %6981 = call float @dx.op.unary.f32(i32 7, float %6980)  ; Saturate(value)
  br i1 %6967, label %6982, label %7003

; <label>:6982                                    ; preds = %6906
  %6983 = fmul fast float %6948, %6929
  %6984 = fmul fast float %6948, %6930
  %6985 = fmul fast float %6948, %6931
  %6986 = fadd fast float %6968, %6983
  %6987 = fadd fast float %6969, %6984
  %6988 = fadd fast float %6970, %6985
  %6989 = call float @dx.op.dot3.f32(i32 55, float %6986, float %6987, float %6988, float %6986, float %6987, float %6988)  ; Dot3(ax,ay,az,bx,by,bz)
  %6990 = call float @dx.op.unary.f32(i32 25, float %6989)  ; Rsqrt(value)
  %6991 = fmul fast float %6990, %6986
  %6992 = fmul fast float %6990, %6987
  %6993 = fmul fast float %6990, %6988
  %6994 = fsub fast float %155, %6940
  %6995 = fsub fast float %156, %6941
  %6996 = fsub fast float %157, %6942
  %6997 = fsub fast float -0.000000e+00, %6994
  %6998 = fsub fast float -0.000000e+00, %6995
  %6999 = fsub fast float -0.000000e+00, %6996
  %7000 = call float @dx.op.dot3.f32(i32 55, float %6997, float %6998, float %6999, float %6929, float %6930, float %6931)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = fcmp fast ogt float %7000, 0.000000e+00
  %7002 = uitofp i1 %7001 to float
  br label %7003

; <label>:7003                                    ; preds = %6982, %6906
  %7004 = phi float [ %7002, %6982 ], [ 1.000000e+00, %6906 ]
  %7005 = phi float [ %6991, %6982 ], [ %6974, %6906 ]
  %7006 = phi float [ %6992, %6982 ], [ %6975, %6906 ]
  %7007 = phi float [ %6993, %6982 ], [ %6976, %6906 ]
  %7008 = call float @dx.op.dot3.f32(i32 55, float %6929, float %6930, float %6931, float %7005, float %7006, float %7007)  ; Dot3(ax,ay,az,bx,by,bz)
  %7009 = fmul fast float %7008, %7008
  %7010 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7011 = fsub fast float 1.000000e+00, %7010
  %7012 = fmul fast float %7011, 5.000000e-01
  %7013 = fcmp fast ogt float %7008, 0.000000e+00
  %7014 = fsub fast float 1.000000e+00, %7012
  %7015 = select i1 %7013, float %7012, float %7014
  %7016 = fmul fast float %7015, %6964
  %7017 = fadd fast float %7016, %6962
  %7018 = fmul fast float %7017, 0x3EF0001000000000
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7018, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = fmul fast float %7008, %6946
  %7022 = fadd fast float %7021, %6947
  %7023 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  %7024 = select i1 %6967, float 1.000000e+00, float %7023
  %7025 = select i1 %6967, float %7023, float 1.000000e+00
  %7026 = fmul fast float %6972, %6943
  %7027 = fsub fast float 1.000000e+00, %7026
  %7028 = fmul fast float %7027, %6949
  %7029 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  %7030 = fmul fast float %7029, %7025
  %7031 = fmul fast float %7030, 2.000000e+00
  %7032 = fsub fast float 3.000000e+00, %7031
  %7033 = fmul fast float %7020, %7004
  %7034 = fmul fast float %7030, %7030
  %7035 = fmul fast float %7034, %7033
  %7036 = fmul fast float %7035, %7032
  %7037 = call float @dx.op.binary.f32(i32 36, float %7036, float %7036)  ; FMin(a,b)
  %7038 = call float @dx.op.binary.f32(i32 36, float %7036, float %7037)  ; FMin(a,b)
  %7039 = fcmp fast ogt float %7038, 0.000000e+00
  br i1 %7039, label %7048, label %7040, !dx.controlflow.hints !117

; <label>:7040                                    ; preds = %7437, %7148, %7003
  %7041 = phi float [ %6908, %7148 ], [ %6908, %7003 ], [ %7485, %7437 ]
  %7042 = phi float [ %6909, %7148 ], [ %6909, %7003 ], [ %7486, %7437 ]
  %7043 = phi float [ %6910, %7148 ], [ %6910, %7003 ], [ %7487, %7437 ]
  %7044 = phi float [ %6911, %7148 ], [ %6911, %7003 ], [ %7476, %7437 ]
  %7045 = phi float [ %6912, %7148 ], [ %6912, %7003 ], [ %7477, %7437 ]
  %7046 = phi float [ %6913, %7148 ], [ %6913, %7003 ], [ %7478, %7437 ]
  %7047 = icmp eq i32 %6907, %6917
  br i1 %7047, label %7488, label %6906

; <label>:7048                                    ; preds = %7003
  %7049 = icmp eq i32 %6965, 255
  br i1 %7049, label %7148, label %7050, !dx.controlflow.hints !118

; <label>:7050                                    ; preds = %7048
  %7051 = mul nuw nsw i32 %6965, 176
  %7052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7051, i32 undef)  ; BufferLoad(srv,index,wot)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.ResRet.f32 %7052, 3
  %7057 = add nuw nsw i32 %7051, 16
  %7058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7057, i32 undef)  ; BufferLoad(srv,index,wot)
  %7059 = extractvalue %dx.types.ResRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.ResRet.f32 %7058, 1
  %7061 = add nuw nsw i32 %7051, 32
  %7062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7061, i32 undef)  ; BufferLoad(srv,index,wot)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.ResRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.ResRet.f32 %7062, 2
  %7066 = add nuw nsw i32 %7051, 48
  %7067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7066, i32 undef)  ; BufferLoad(srv,index,wot)
  %7068 = extractvalue %dx.types.ResRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.ResRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7067, 2
  %7071 = extractvalue %dx.types.ResRet.f32 %7067, 3
  %7072 = add nuw nsw i32 %7051, 64
  %7073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7072, i32 undef)  ; BufferLoad(srv,index,wot)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.ResRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.ResRet.f32 %7073, 2
  %7077 = extractvalue %dx.types.ResRet.f32 %7073, 3
  %7078 = add nuw nsw i32 %7051, 80
  %7079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7078, i32 undef)  ; BufferLoad(srv,index,wot)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = extractvalue %dx.types.ResRet.f32 %7079, 1
  %7082 = extractvalue %dx.types.ResRet.f32 %7079, 2
  %7083 = extractvalue %dx.types.ResRet.f32 %7079, 3
  %7084 = add nuw nsw i32 %7051, 96
  %7085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7084, i32 undef)  ; BufferLoad(srv,index,wot)
  %7086 = extractvalue %dx.types.ResRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.ResRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.ResRet.f32 %7085, 2
  %7089 = extractvalue %dx.types.ResRet.f32 %7085, 3
  %7090 = bitcast float %7060 to i32
  %7091 = fmul fast float %7065, %107
  %7092 = fmul fast float %7065, %108
  %7093 = fmul fast float %7065, %109
  %7094 = fadd fast float %7091, %155
  %7095 = fadd fast float %7092, %156
  %7096 = fadd fast float %7093, %157
  %7097 = fmul fast float %7094, %7068
  %7098 = call float @dx.op.tertiary.f32(i32 46, float %7095, float %7074, float %7097)  ; FMad(a,b,c)
  %7099 = call float @dx.op.tertiary.f32(i32 46, float %7096, float %7080, float %7098)  ; FMad(a,b,c)
  %7100 = fadd fast float %7099, %7086
  %7101 = fmul fast float %7094, %7069
  %7102 = call float @dx.op.tertiary.f32(i32 46, float %7095, float %7075, float %7101)  ; FMad(a,b,c)
  %7103 = call float @dx.op.tertiary.f32(i32 46, float %7096, float %7081, float %7102)  ; FMad(a,b,c)
  %7104 = fadd fast float %7103, %7087
  %7105 = fmul fast float %7094, %7070
  %7106 = call float @dx.op.tertiary.f32(i32 46, float %7095, float %7076, float %7105)  ; FMad(a,b,c)
  %7107 = call float @dx.op.tertiary.f32(i32 46, float %7096, float %7082, float %7106)  ; FMad(a,b,c)
  %7108 = fadd fast float %7107, %7088
  %7109 = fmul fast float %7094, %7071
  %7110 = call float @dx.op.tertiary.f32(i32 46, float %7095, float %7077, float %7109)  ; FMad(a,b,c)
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %7096, float %7083, float %7110)  ; FMad(a,b,c)
  %7112 = fadd fast float %7111, %7089
  %7113 = fdiv fast float %7100, %7112
  %7114 = fdiv fast float %7104, %7112
  %7115 = fdiv fast float %7108, %7112
  %7116 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7115)  ; FMax(a,b)
  %7117 = fmul fast float %228, 0x401921FB60000000
  %7118 = call float @dx.op.unary.f32(i32 13, float %7117)  ; Sin(value)
  %7119 = call float @dx.op.unary.f32(i32 12, float %7117)  ; Cos(value)
  %7120 = fsub fast float -0.000000e+00, %7118
  %7121 = fmul fast float %7055, 5.000000e-01
  %7122 = call float @dx.op.dot2.f32(i32 54, float %228, float %228, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7123 = call float @dx.op.unary.f32(i32 22, float %7122)  ; Frc(value)
  %7124 = fmul fast float %7123, 0x404A7DD040000000
  %7125 = call float @dx.op.unary.f32(i32 22, float %7124)  ; Frc(value)
  %7126 = fmul fast float %7125, %7064
  %7127 = fadd fast float %7126, %7121
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %7127, float %7120, float 0.000000e+00)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %7127, float %7119, float 0.000000e+00)  ; FMad(a,b,c)
  %7130 = fadd fast float %7128, %7113
  %7131 = fadd fast float %7129, %7114
  %7132 = fmul fast float %7130, %7059
  %7133 = fmul fast float %7131, %7059
  %7134 = call float @dx.op.binary.f32(i32 35, float %7132, float %7055)  ; FMax(a,b)
  %7135 = call float @dx.op.binary.f32(i32 35, float %7133, float %7055)  ; FMax(a,b)
  %7136 = call float @dx.op.binary.f32(i32 36, float %7134, float %7056)  ; FMin(a,b)
  %7137 = call float @dx.op.binary.f32(i32 36, float %7135, float %7056)  ; FMin(a,b)
  %7138 = fadd fast float %7136, %7053
  %7139 = fadd fast float %7137, %7054
  %7140 = uitofp i32 %7090 to float
  %7141 = fadd fast float %7116, %7063
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7138, float %7139, float %7140, float undef, i32 0, i32 0, i32 undef, float %7141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = fadd fast float %7143, -1.000000e+00
  %7145 = fmul fast float %7144, %7024
  %7146 = fadd fast float %7145, 1.000000e+00
  %7147 = fmul fast float %7146, %7036
  br label %7148

; <label>:7148                                    ; preds = %7050, %7048
  %7149 = phi float [ %7147, %7050 ], [ %7036, %7048 ]
  %7150 = call float @dx.op.binary.f32(i32 36, float %7149, float %7149)  ; FMin(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7149, float %7150)  ; FMin(a,b)
  %7152 = fcmp fast ogt float %7151, 0.000000e+00
  br i1 %7152, label %7153, label %7040, !dx.controlflow.hints !119

; <label>:7153                                    ; preds = %7148
  %7154 = fmul fast float %7149, %6958
  %7155 = fmul fast float %7149, %6959
  %7156 = fmul fast float %7149, %6960
  %7157 = fsub fast float %6942, %5100
  %7158 = fcmp fast ogt float %7157, 0.000000e+00
  %7159 = fsub fast float %157, %5100
  %7160 = fcmp fast ogt float %7159, 0.000000e+00
  %7161 = xor i1 %7160, %7158
  %7162 = fsub fast float %5100, %6942
  %7163 = fmul fast float %7162, 2.000000e+00
  %7164 = fadd fast float %7163, %6942
  %7165 = select i1 %7161, float %6942, float %7164
  %7166 = fsub fast float %7165, %157
  %7167 = call float @dx.op.dot3.f32(i32 55, float %6968, float %6969, float %7166, float %6968, float %6969, float %7166)  ; Dot3(ax,ay,az,bx,by,bz)
  %7168 = call float @dx.op.unary.f32(i32 25, float %7167)  ; Rsqrt(value)
  %7169 = fmul fast float %7168, %6968
  %7170 = fmul fast float %7168, %6969
  %7171 = fmul fast float %7168, %7166
  %7172 = fsub fast float %5100, %157
  %7173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7172)  ; Dot3(ax,ay,az,bx,by,bz)
  %7174 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7169, float %7170, float %7171)  ; Dot3(ax,ay,az,bx,by,bz)
  %7175 = fdiv fast float 1.000000e+00, %7174
  %7176 = fmul fast float %7175, %7173
  %7177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7159, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7178 = fcmp fast ogt float %7177, 0.000000e+00
  %7179 = fcmp fast olt float %7177, 0.000000e+00
  %7180 = zext i1 %7178 to i32
  %7181 = zext i1 %7179 to i32
  %7182 = sub nsw i32 %7180, %7181
  %7183 = sitofp i32 %7182 to float
  %7184 = fsub fast float %7165, %5100
  %7185 = call float @dx.op.dot3.f32(i32 55, float %6968, float %6969, float %7184, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7186 = fcmp fast ogt float %7185, 0.000000e+00
  %7187 = fcmp fast olt float %7185, 0.000000e+00
  %7188 = zext i1 %7186 to i32
  %7189 = zext i1 %7187 to i32
  %7190 = sub nsw i32 %7188, %7189
  %7191 = sitofp i32 %7190 to float
  %7192 = fcmp fast une float %7183, %7191
  br i1 %7192, label %7193, label %7203

; <label>:7193                                    ; preds = %7153
  %7194 = fmul fast float %7176, %7171
  %7195 = fmul fast float %7176, %7170
  %7196 = fmul fast float %7176, %7169
  %7197 = fmul fast float %7196, %7196
  %7198 = fmul fast float %7195, %7195
  %7199 = fadd fast float %7197, %7198
  %7200 = fmul fast float %7194, %7194
  %7201 = fadd fast float %7199, %7200
  %7202 = call float @dx.op.unary.f32(i32 24, float %7201)  ; Sqrt(value)
  br label %7215

; <label>:7203                                    ; preds = %7153
  %7204 = icmp slt i32 %7182, 0
  br i1 %7204, label %7205, label %7215

; <label>:7205                                    ; preds = %7203
  %7206 = fsub fast float %155, %6940
  %7207 = fsub fast float %156, %6941
  %7208 = fsub fast float %157, %7165
  %7209 = fmul fast float %7206, %7206
  %7210 = fmul fast float %7207, %7207
  %7211 = fadd fast float %7209, %7210
  %7212 = fmul fast float %7208, %7208
  %7213 = fadd fast float %7211, %7212
  %7214 = call float @dx.op.unary.f32(i32 24, float %7213)  ; Sqrt(value)
  br label %7215

; <label>:7215                                    ; preds = %7205, %7203, %7193
  %7216 = phi float [ %7202, %7193 ], [ %7214, %7205 ], [ 0.000000e+00, %7203 ]
  %7217 = and i1 %7160, %7158
  %7218 = fsub fast float -0.000000e+00, %7216
  %7219 = select i1 %7217, float -0.000000e+00, float %7218
  %7220 = fmul fast float %5101, 0x3FF7154760000000
  %7221 = fmul fast float %7220, %7219
  %7222 = fmul fast float %5102, 0x3FF7154760000000
  %7223 = fmul fast float %7222, %7219
  %7224 = fmul fast float %5103, 0x3FF7154760000000
  %7225 = fmul fast float %7224, %7219
  %7226 = call float @dx.op.unary.f32(i32 21, float %7221)  ; Exp(value)
  %7227 = call float @dx.op.unary.f32(i32 21, float %7223)  ; Exp(value)
  %7228 = call float @dx.op.unary.f32(i32 21, float %7225)  ; Exp(value)
  %7229 = call float @dx.op.unary.f32(i32 7, float %7226)  ; Saturate(value)
  %7230 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7231 = call float @dx.op.unary.f32(i32 7, float %7228)  ; Saturate(value)
  %7232 = fmul fast float %7154, %7229
  %7233 = fmul fast float %7155, %7230
  %7234 = fmul fast float %7156, %7231
  %7235 = fsub fast float %6974, %5300
  %7236 = fsub fast float %6975, %5299
  %7237 = fsub fast float %6976, %5298
  %7238 = call float @dx.op.dot3.f32(i32 55, float %7235, float %7236, float %7237, float %7235, float %7236, float %7237)  ; Dot3(ax,ay,az,bx,by,bz)
  %7239 = call float @dx.op.unary.f32(i32 25, float %7238)  ; Rsqrt(value)
  %7240 = fmul fast float %7239, %7235
  %7241 = fmul fast float %7239, %7236
  %7242 = fmul fast float %7239, %7237
  %7243 = call float @dx.op.dot3.f32(i32 55, float %6974, float %6975, float %6976, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7244 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5296, float %5295, float %7240, float %7241, float %7242)  ; Dot3(ax,ay,az,bx,by,bz)
  %7245 = call float @dx.op.unary.f32(i32 7, float %7243)  ; Saturate(value)
  %7246 = fmul fast float %7245, %6981
  %7247 = fmul fast float %7245, %7245
  %7248 = fmul fast float %7247, %5328
  %7249 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7250 = fmul fast float %7246, %7249
  %7251 = bitcast float %6971 to i32
  %7252 = ashr i32 %7251, 1
  %7253 = sub nsw i32 1597463007, %7252
  %7254 = bitcast i32 %7253 to float
  %7255 = fmul fast float %7254, %6968
  %7256 = fmul fast float %7254, %6969
  %7257 = fmul fast float %7254, %6970
  %7258 = fsub fast float %7255, %5300
  %7259 = fsub fast float %7256, %5299
  %7260 = fsub fast float %7257, %5298
  %7261 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7259, float %7260, float %7258, float %7259, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7262 = call float @dx.op.unary.f32(i32 25, float %7261)  ; Rsqrt(value)
  %7263 = fmul fast float %7258, %7262
  %7264 = fmul fast float %7259, %7262
  %7265 = fmul fast float %7260, %7262
  %7266 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5308, float %5309, float %7263, float %7264, float %7265)  ; Dot3(ax,ay,az,bx,by,bz)
  %7267 = fmul fast float %7266, %7266
  %7268 = call float @dx.op.unary.f32(i32 6, float %7243)  ; FAbs(value)
  %7269 = fsub fast float 1.000000e+00, %5310
  %7270 = call float @dx.op.binary.f32(i32 35, float %7269, float 0x3F847AE140000000)  ; FMax(a,b)
  %7271 = fmul fast float %7270, %7270
  %7272 = fmul fast float %7271, %7271
  %7273 = fsub fast float 1.000000e+00, %7272
  %7274 = fmul fast float %5315, %5315
  %7275 = fmul fast float %7274, %7273
  %7276 = fadd fast float %7275, %7272
  %7277 = bitcast float %7276 to i32
  %7278 = ashr i32 %7277, 1
  %7279 = add nsw i32 %7278, 532487669
  %7280 = bitcast i32 %7279 to float
  %7281 = fadd fast float %7280, %5315
  %7282 = fmul fast float %7272, %7267
  %7283 = fsub fast float 1.000000e+00, %7267
  %7284 = fadd fast float %7283, %7282
  %7285 = fmul fast float %7268, %7268
  %7286 = fmul fast float %7285, %7273
  %7287 = fadd fast float %7286, %7272
  %7288 = bitcast float %7287 to i32
  %7289 = ashr i32 %7288, 1
  %7290 = add nsw i32 %7289, 532487669
  %7291 = bitcast i32 %7290 to float
  %7292 = fadd fast float %7291, %7268
  %7293 = fmul fast float %7284, %7284
  %7294 = fmul fast float %7293, %7281
  %7295 = fmul fast float %7294, %7292
  %7296 = fdiv fast float 1.000000e+00, %7295
  %7297 = bitcast float %7272 to i32
  %7298 = sitofp i32 %7297 to float
  %7299 = fmul fast float %7298, 0x3FE7F73180000000
  %7300 = fadd fast float %7299, 0x41AFE27C40000000
  %7301 = fptosi float %7300 to i32
  %7302 = bitcast i32 %7301 to float
  %7303 = fmul fast float %6937, 0x3FD80E9D60000000
  %7304 = fmul fast float %7303, %7254
  %7305 = fadd fast float %7302, %7304
  %7306 = bitcast float %7305 to i32
  %7307 = sub nsw i32 2129859010, %7306
  %7308 = bitcast i32 %7307 to float
  %7309 = fmul fast float %7272, %7296
  %7310 = fmul fast float %7309, %7302
  %7311 = fmul fast float %7310, %7308
  %7312 = call float @dx.op.unary.f32(i32 6, float %7244)  ; FAbs(value)
  %7313 = fsub fast float 1.000000e+00, %7312
  %7314 = bitcast float %7313 to i32
  %7315 = sitofp i32 %7314 to float
  %7316 = fmul fast float %7315, 5.000000e+00
  %7317 = fadd fast float %7316, 0xC1EFBF8940000000
  %7318 = fptosi float %7317 to i32
  %7319 = bitcast i32 %7318 to float
  %7320 = fsub fast float 1.000000e+00, %5304
  %7321 = fsub fast float 1.000000e+00, %5305
  %7322 = fsub fast float 1.000000e+00, %5313
  %7323 = fmul fast float %7319, %7320
  %7324 = fmul fast float %7319, %7321
  %7325 = fmul fast float %7319, %7322
  %7326 = fadd fast float %7323, %5304
  %7327 = fadd fast float %7324, %5305
  %7328 = fadd fast float %7325, %5313
  br i1 %5585, label %7329, label %7352

; <label>:7329                                    ; preds = %7215
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %7312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = fadd fast float %7331, -5.000000e-01
  %7335 = fadd fast float %7332, -5.000000e-01
  %7336 = fadd fast float %7333, -5.000000e-01
  %7337 = fmul fast float %5304, 4.000000e+00
  %7338 = fmul fast float %7337, %7320
  %7339 = fmul fast float %7338, %7334
  %7340 = fmul fast float %5305, 4.000000e+00
  %7341 = fmul fast float %7340, %7321
  %7342 = fmul fast float %7341, %7335
  %7343 = fmul fast float %5313, 4.000000e+00
  %7344 = fmul fast float %7343, %7322
  %7345 = fmul fast float %7344, %7336
  %7346 = fadd fast float %7339, %7326
  %7347 = fadd fast float %7342, %7327
  %7348 = fadd fast float %7345, %7328
  %7349 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7350 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7351 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  br label %7352

; <label>:7352                                    ; preds = %7329, %7215
  %7353 = phi float [ %7349, %7329 ], [ %7326, %7215 ]
  %7354 = phi float [ %7350, %7329 ], [ %7327, %7215 ]
  %7355 = phi float [ %7351, %7329 ], [ %7328, %7215 ]
  %7356 = fmul fast float %7243, 9.843750e-01
  %7357 = fadd fast float %7356, 7.812500e-03
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7357, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 2
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 3
  %7361 = fmul fast float %7359, %5304
  %7362 = fmul fast float %7359, %5305
  %7363 = fmul fast float %7359, %5313
  %7364 = fadd fast float %7361, %7360
  %7365 = fadd fast float %7362, %7360
  %7366 = fadd fast float %7363, %7360
  br i1 %5585, label %7367, label %7390

; <label>:7367                                    ; preds = %7352
  %7368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7369 = extractvalue %dx.types.ResRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.ResRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.ResRet.f32 %7368, 2
  %7372 = fadd fast float %7369, -5.000000e-01
  %7373 = fadd fast float %7370, -5.000000e-01
  %7374 = fadd fast float %7371, -5.000000e-01
  %7375 = fmul fast float %5304, 4.000000e+00
  %7376 = fmul fast float %7375, %7320
  %7377 = fmul fast float %7376, %7372
  %7378 = fmul fast float %5305, 4.000000e+00
  %7379 = fmul fast float %7378, %7321
  %7380 = fmul fast float %7379, %7373
  %7381 = fmul fast float %5313, 4.000000e+00
  %7382 = fmul fast float %7381, %7322
  %7383 = fmul fast float %7382, %7374
  %7384 = fadd fast float %7377, %7364
  %7385 = fadd fast float %7380, %7365
  %7386 = fadd fast float %7383, %7366
  %7387 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7388 = call float @dx.op.unary.f32(i32 7, float %7385)  ; Saturate(value)
  %7389 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  br label %7390

; <label>:7390                                    ; preds = %7367, %7352
  %7391 = phi float [ %7387, %7367 ], [ %7364, %7352 ]
  %7392 = phi float [ %7388, %7367 ], [ %7365, %7352 ]
  %7393 = phi float [ %7389, %7367 ], [ %7366, %7352 ]
  %7394 = call float @dx.op.binary.f32(i32 35, float %7392, float %7393)  ; FMax(a,b)
  %7395 = call float @dx.op.binary.f32(i32 35, float %7391, float %7394)  ; FMax(a,b)
  %7396 = fsub fast float 1.000000e+00, %7395
  %7397 = fsub fast float -0.000000e+00, %5307
  %7398 = fsub fast float -0.000000e+00, %5308
  %7399 = fsub fast float -0.000000e+00, %5309
  %7400 = call float @dx.op.dot3.f32(i32 55, float %6974, float %6975, float %6976, float %7397, float %7398, float %7399)  ; Dot3(ax,ay,az,bx,by,bz)
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = fmul fast float %7401, %6981
  %7403 = fmul fast float %7401, 9.843750e-01
  %7404 = fadd fast float %7403, 7.812500e-03
  %7405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7404, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 2
  %7407 = extractvalue %dx.types.ResRet.f32 %7405, 3
  %7408 = fmul fast float %7406, %5304
  %7409 = fmul fast float %7406, %5305
  %7410 = fmul fast float %7406, %5313
  %7411 = fadd fast float %7408, %7407
  %7412 = fadd fast float %7409, %7407
  %7413 = fadd fast float %7410, %7407
  br i1 %5585, label %7414, label %7437

; <label>:7414                                    ; preds = %7390
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4633, float %7401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = fadd fast float %7416, -5.000000e-01
  %7420 = fadd fast float %7417, -5.000000e-01
  %7421 = fadd fast float %7418, -5.000000e-01
  %7422 = fmul fast float %5304, 4.000000e+00
  %7423 = fmul fast float %7422, %7320
  %7424 = fmul fast float %7423, %7419
  %7425 = fmul fast float %5305, 4.000000e+00
  %7426 = fmul fast float %7425, %7321
  %7427 = fmul fast float %7426, %7420
  %7428 = fmul fast float %5313, 4.000000e+00
  %7429 = fmul fast float %7428, %7322
  %7430 = fmul fast float %7429, %7421
  %7431 = fadd fast float %7424, %7411
  %7432 = fadd fast float %7427, %7412
  %7433 = fadd fast float %7430, %7413
  %7434 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7435 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  br label %7437

; <label>:7437                                    ; preds = %7414, %7390
  %7438 = phi float [ %7434, %7414 ], [ %7411, %7390 ]
  %7439 = phi float [ %7435, %7414 ], [ %7412, %7390 ]
  %7440 = phi float [ %7436, %7414 ], [ %7413, %7390 ]
  %7441 = call float @dx.op.binary.f32(i32 35, float %7439, float %7440)  ; FMax(a,b)
  %7442 = call float @dx.op.binary.f32(i32 35, float %7438, float %7441)  ; FMax(a,b)
  %7443 = fsub fast float 1.000000e+00, %7442
  %7444 = fmul fast float %7402, %7443
  %7445 = fmul fast float %7444, %4723
  %7446 = fmul fast float %7444, %4724
  %7447 = fmul fast float %7444, %4725
  %7448 = fmul fast float %7353, %7311
  %7449 = fmul fast float %7354, %7311
  %7450 = fmul fast float %7355, %7311
  %7451 = fsub fast float 1.000000e+00, %7244
  %7452 = bitcast float %7451 to i32
  %7453 = sitofp i32 %7452 to float
  %7454 = fmul fast float %7453, 5.000000e+00
  %7455 = fadd fast float %7454, 0xC1EFBF8940000000
  %7456 = fptosi float %7455 to i32
  %7457 = bitcast i32 %7456 to float
  %7458 = fmul fast float %7457, %4634
  %7459 = fmul fast float %7396, %7458
  %7460 = fmul fast float %7459, %5632
  %7461 = fmul fast float %7459, %5633
  %7462 = fmul fast float %7459, %5634
  %7463 = fmul fast float %7396, %7250
  %7464 = fadd fast float %7460, %7448
  %7465 = fadd fast float %7461, %7449
  %7466 = fadd fast float %7462, %7450
  %7467 = fadd fast float %7445, %7463
  %7468 = fadd fast float %7446, %7463
  %7469 = fadd fast float %7447, %7463
  %7470 = fmul fast float %7232, %4630
  %7471 = fmul fast float %7470, %7467
  %7472 = fmul fast float %7233, %4630
  %7473 = fmul fast float %7472, %7468
  %7474 = fmul fast float %7234, %4630
  %7475 = fmul fast float %7474, %7469
  %7476 = fadd fast float %7471, %6911
  %7477 = fadd fast float %7473, %6912
  %7478 = fadd fast float %7475, %6913
  %7479 = fmul fast float %7470, %7250
  %7480 = fmul fast float %7479, %7464
  %7481 = fmul fast float %7472, %7250
  %7482 = fmul fast float %7481, %7465
  %7483 = fmul fast float %7474, %7250
  %7484 = fmul fast float %7483, %7466
  %7485 = fadd fast float %7480, %6908
  %7486 = fadd fast float %7482, %6909
  %7487 = fadd fast float %7484, %6910
  br label %7040

; <label>:7488                                    ; preds = %7040
  br label %7489

; <label>:7489                                    ; preds = %7488, %6874
  %7490 = phi float [ %6876, %6874 ], [ %7041, %7488 ]
  %7491 = phi float [ %6877, %6874 ], [ %7042, %7488 ]
  %7492 = phi float [ %6878, %6874 ], [ %7043, %7488 ]
  %7493 = phi float [ %6879, %6874 ], [ %7044, %7488 ]
  %7494 = phi float [ %6880, %6874 ], [ %7045, %7488 ]
  %7495 = phi float [ %6881, %6874 ], [ %7046, %7488 ]
  %7496 = add i32 %6875, 1
  %7497 = icmp ugt i32 %7496, %6871
  br i1 %7497, label %7498, label %6874

; <label>:7498                                    ; preds = %7489
  br label %7499

; <label>:7499                                    ; preds = %7498, %6824, %6814
  %7500 = phi float [ %6815, %6814 ], [ %6815, %6824 ], [ %7490, %7498 ]
  %7501 = phi float [ %6816, %6814 ], [ %6816, %6824 ], [ %7491, %7498 ]
  %7502 = phi float [ %6817, %6814 ], [ %6817, %6824 ], [ %7492, %7498 ]
  %7503 = phi float [ %6818, %6814 ], [ %6818, %6824 ], [ %7493, %7498 ]
  %7504 = phi float [ %6819, %6814 ], [ %6819, %6824 ], [ %7494, %7498 ]
  %7505 = phi float [ %6820, %6814 ], [ %6820, %6824 ], [ %7495, %7498 ]
  %7506 = fmul fast float %5641, %4630
  %7507 = fmul fast float %5642, %4630
  %7508 = fmul fast float %5643, %4630
  %7509 = fadd fast float %7506, 1.000000e+00
  %7510 = fadd fast float %7507, 1.000000e+00
  %7511 = fadd fast float %7508, 1.000000e+00
  %7512 = call float @dx.op.dot3.f32(i32 55, float %7509, float %7510, float %7511, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7516 = fmul fast float %7515, %5647
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7519 = fsub fast float 1.000000e+00, %4637
  %7520 = call float @dx.op.unary.f32(i32 7, float %7519)  ; Saturate(value)
  %7521 = fadd fast float %7505, %4636
  %7522 = fmul fast float %7521, %4637
  %7523 = fmul fast float %7520, %7518
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 3
  %7526 = fmul fast float %7503, %5301
  %7527 = fmul fast float %7504, %5302
  %7528 = fmul fast float %7505, %5303
  %7529 = fcmp fast ogt float %91, %177
  %7530 = and i1 %7529, %5106
  %7531 = or i1 %5112, %7530
  %7532 = icmp eq i32 %5105, 2
  %7533 = fcmp fast ole float %91, %177
  %7534 = and i1 %7533, %7532
  %7535 = or i1 %7534, %7531
  br i1 %7530, label %7536, label %7793

; <label>:7536                                    ; preds = %7499
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 3
  %7540 = fmul fast float %7538, %100
  %7541 = fmul fast float %7539, %101
  %7542 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7543 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7544 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7542, float %7543, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7545 = extractvalue %dx.types.ResRet.f32 %7544, 0
  %7546 = extractvalue %dx.types.ResRet.f32 %7544, 1
  %7547 = extractvalue %dx.types.ResRet.f32 %7544, 2
  %7548 = extractvalue %dx.types.ResRet.f32 %7544, 3
  %7549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7542, float %7543, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7550 = extractvalue %dx.types.ResRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.ResRet.f32 %7549, 1
  %7552 = extractvalue %dx.types.ResRet.f32 %7549, 2
  %7553 = extractvalue %dx.types.ResRet.f32 %7549, 3
  %7554 = call float @dx.op.binary.f32(i32 35, float %7546, float %7547)  ; FMax(a,b)
  %7555 = call float @dx.op.binary.f32(i32 35, float %7545, float %7554)  ; FMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 35, float %7555, float %7548)  ; FMax(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7551, float %7552)  ; FMin(a,b)
  %7558 = call float @dx.op.binary.f32(i32 36, float %7550, float %7557)  ; FMin(a,b)
  %7559 = call float @dx.op.binary.f32(i32 36, float %7558, float %7553)  ; FMin(a,b)
  %7560 = fmul fast float %7556, 2.550000e+02
  %7561 = fadd fast float %7560, 0x3F70101020000000
  %7562 = fptoui float %7561 to i32
  %7563 = fmul fast float %7559, 2.550000e+02
  %7564 = fadd fast float %7563, 0x3F70101020000000
  %7565 = fptoui float %7564 to i32
  %7566 = icmp ult i32 %7562, %7565
  br i1 %7566, label %7567, label %7735

; <label>:7567                                    ; preds = %7536
  %7568 = fcmp fast ogt float %90, 9.843750e-01
  %7569 = fadd fast float %91, -4.000000e+00
  %7570 = select i1 %7568, float -4.000000e+00, float %7569
  %7571 = call float @dx.op.binary.f32(i32 35, float %7570, float 0.000000e+00)  ; FMax(a,b)
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = fadd fast float %7573, %7571
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7576 = fmul fast float %7574, %7575
  %7577 = call float @dx.op.unary.f32(i32 23, float %7576)  ; Log(value)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7579 = fmul fast float %7578, %7577
  %7580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7580, 2
  %7582 = fmul fast float %7579, %7581
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = uitofp i32 %7562 to float
  %7585 = uitofp i32 %7565 to float
  %7586 = fadd fast float %7584, 5.000000e-01
  %7587 = fadd fast float %7585, 5.000000e-01
  %7588 = fmul fast float %7581, %7586
  %7589 = fmul fast float %7581, %7587
  %7590 = fadd fast float %7588, 0x3F0FFB4800000000
  %7591 = fadd fast float %7589, 0xBF0FFB4800000000
  %7592 = call float @dx.op.binary.f32(i32 35, float %7583, float %7590)  ; FMax(a,b)
  %7593 = call float @dx.op.binary.f32(i32 36, float %7592, float %7591)  ; FMin(a,b)
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7596 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7597 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7598 = fmul fast float %7595, %7593
  %7599 = fadd fast float %7597, %7598
  %7600 = fadd fast float %7597, %7596
  %7601 = fsub fast float %7595, %7596
  %7602 = fadd fast float %7601, %7597
  %7603 = call float @dx.op.binary.f32(i32 35, float %7599, float %7600)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7603, float %7602)  ; FMin(a,b)
  %7605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7542, float %7543, float %7604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.ResRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.ResRet.f32 %7605, 2
  %7609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.i32 %7609, 0
  %7611 = extractvalue %dx.types.CBufRet.i32 %7609, 1
  %7612 = uitofp i32 %7610 to float
  %7613 = uitofp i32 %7611 to float
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = fmul fast float %7612, %7542
  %7618 = fmul fast float %7613, %7543
  %7619 = fadd fast float %7617, -5.000000e-01
  %7620 = fadd fast float %7618, -5.000000e-01
  %7621 = call float @dx.op.unary.f32(i32 22, float %7619)  ; Frc(value)
  %7622 = call float @dx.op.unary.f32(i32 22, float %7620)  ; Frc(value)
  %7623 = fmul fast float %7621, %7621
  %7624 = fmul fast float %7623, %7621
  %7625 = fsub fast float 3.000000e+00, %7621
  %7626 = fmul fast float %7623, %7625
  %7627 = fmul fast float %7621, 3.000000e+00
  %7628 = fmul fast float %7624, 3.000000e+00
  %7629 = fmul fast float %7623, 6.000000e+00
  %7630 = fsub fast float %7628, %7629
  %7631 = fadd fast float %7630, 4.000000e+00
  %7632 = fmul fast float %7631, 0x3FC5555560000000
  %7633 = fmul fast float %7624, -3.000000e+00
  %7634 = fadd fast float %7623, %7621
  %7635 = fmul fast float %7634, 3.000000e+00
  %7636 = fadd fast float %7633, 1.000000e+00
  %7637 = fadd fast float %7636, %7635
  %7638 = fmul fast float %7624, 0x3FC5555560000000
  %7639 = fmul fast float %7622, %7622
  %7640 = fmul fast float %7639, %7622
  %7641 = fsub fast float 3.000000e+00, %7622
  %7642 = fmul fast float %7639, %7641
  %7643 = fmul fast float %7622, 3.000000e+00
  %7644 = fmul fast float %7640, 3.000000e+00
  %7645 = fmul fast float %7639, 6.000000e+00
  %7646 = fsub fast float %7644, %7645
  %7647 = fadd fast float %7646, 4.000000e+00
  %7648 = fmul fast float %7647, 0x3FC5555560000000
  %7649 = fmul fast float %7640, -3.000000e+00
  %7650 = fadd fast float %7639, %7622
  %7651 = fmul fast float %7650, 3.000000e+00
  %7652 = fadd fast float %7649, 1.000000e+00
  %7653 = fadd fast float %7652, %7651
  %7654 = fmul fast float %7640, 0x3FC5555560000000
  %7655 = fadd fast float %7621, 1.000000e+00
  %7656 = fsub fast float 1.000000e+00, %7627
  %7657 = fadd fast float %7656, %7626
  %7658 = fadd fast float %7657, %7631
  %7659 = fmul fast float %7658, 0x3FC5555560000000
  %7660 = fdiv fast float %7632, %7659
  %7661 = fsub fast float %7655, %7660
  %7662 = fsub fast float 1.000000e+00, %7621
  %7663 = fadd fast float %7637, %7624
  %7664 = fmul fast float %7663, 0x3FC5555560000000
  %7665 = fdiv fast float %7638, %7664
  %7666 = fadd fast float %7662, %7665
  %7667 = fadd fast float %7622, 1.000000e+00
  %7668 = fsub fast float 1.000000e+00, %7643
  %7669 = fadd fast float %7668, %7642
  %7670 = fadd fast float %7669, %7647
  %7671 = fmul fast float %7670, 0x3FC5555560000000
  %7672 = fdiv fast float %7648, %7671
  %7673 = fsub fast float %7667, %7672
  %7674 = fsub fast float 1.000000e+00, %7622
  %7675 = fadd fast float %7653, %7640
  %7676 = fmul fast float %7675, 0x3FC5555560000000
  %7677 = fdiv fast float %7654, %7676
  %7678 = fadd fast float %7677, %7674
  %7679 = fmul fast float %7661, %7615
  %7680 = fsub fast float %7542, %7679
  %7681 = fmul fast float %7666, %7615
  %7682 = fadd fast float %7681, %7542
  %7683 = fmul fast float %7678, %7616
  %7684 = fadd fast float %7683, %7543
  %7685 = fmul fast float %7673, %7616
  %7686 = fsub fast float %7543, %7685
  %7687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7680, float %7686, float %7604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.ResRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.ResRet.f32 %7687, 2
  %7691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7682, float %7686, float %7604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.ResRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.ResRet.f32 %7691, 2
  %7695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7680, float %7684, float %7604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7696 = extractvalue %dx.types.ResRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.ResRet.f32 %7695, 1
  %7698 = extractvalue %dx.types.ResRet.f32 %7695, 2
  %7699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7682, float %7684, float %7604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.ResRet.f32 %7699, 1
  %7702 = extractvalue %dx.types.ResRet.f32 %7699, 2
  %7703 = fsub fast float %7696, %7688
  %7704 = fsub fast float %7697, %7689
  %7705 = fsub fast float %7698, %7690
  %7706 = fmul fast float %7703, %7676
  %7707 = fmul fast float %7704, %7676
  %7708 = fmul fast float %7705, %7676
  %7709 = fadd fast float %7706, %7688
  %7710 = fadd fast float %7707, %7689
  %7711 = fadd fast float %7708, %7690
  %7712 = fsub fast float %7700, %7692
  %7713 = fsub fast float %7701, %7693
  %7714 = fsub fast float %7702, %7694
  %7715 = fmul fast float %7712, %7676
  %7716 = fmul fast float %7713, %7676
  %7717 = fmul fast float %7714, %7676
  %7718 = fsub fast float %7692, %7709
  %7719 = fadd fast float %7718, %7715
  %7720 = fsub fast float %7693, %7710
  %7721 = fadd fast float %7720, %7716
  %7722 = fsub fast float %7694, %7711
  %7723 = fadd fast float %7722, %7717
  %7724 = fmul fast float %7719, %7664
  %7725 = fmul fast float %7721, %7664
  %7726 = fmul fast float %7723, %7664
  %7727 = fadd fast float %7724, %7709
  %7728 = fadd fast float %7725, %7710
  %7729 = fadd fast float %7726, %7711
  %7730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7730, 1
  %7732 = fmul fast float %7727, %7731
  %7733 = fmul fast float %7728, %7731
  %7734 = fmul fast float %7729, %7731
  br label %7735

; <label>:7735                                    ; preds = %7567, %7536
  %7736 = phi float [ %7606, %7567 ], [ 1.000000e+00, %7536 ]
  %7737 = phi float [ %7607, %7567 ], [ 1.000000e+00, %7536 ]
  %7738 = phi float [ %7608, %7567 ], [ 1.000000e+00, %7536 ]
  %7739 = phi float [ %7732, %7567 ], [ 0.000000e+00, %7536 ]
  %7740 = phi float [ %7733, %7567 ], [ 0.000000e+00, %7536 ]
  %7741 = phi float [ %7734, %7567 ], [ 0.000000e+00, %7536 ]
  %7742 = fmul fast float %7739, %7513
  %7743 = fmul fast float %7740, %7513
  %7744 = fmul fast float %7741, %7513
  %7745 = call float @dx.op.dot3.f32(i32 55, float %7736, float %7737, float %7738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7746 = call float @dx.op.dot3.f32(i32 55, float %7742, float %7743, float %7744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7747 = select i1 %217, float %7745, float %7736
  %7748 = select i1 %217, float %7745, float %7737
  %7749 = select i1 %217, float 1.000000e+00, float %7738
  %7750 = select i1 %217, float %7746, float %7742
  %7751 = select i1 %217, float 0.000000e+00, float %7743
  %7752 = select i1 %217, float 0.000000e+00, float %7744
  %7753 = fmul fast float %7747, %7526
  %7754 = fmul fast float %7748, %7527
  %7755 = fmul fast float %7749, %7528
  %7756 = fadd fast float %7753, %7750
  %7757 = fadd fast float %7754, %7751
  %7758 = fadd fast float %7752, %7755
  %7759 = fmul fast float %7747, %7500
  %7760 = fmul fast float %7748, %7501
  %7761 = fmul fast float %7749, %7502
  %7762 = fmul fast float %125, %7538
  %7763 = fmul fast float %127, %7539
  %7764 = fsub fast float 1.000000e+00, %7762
  %7765 = fsub fast float 1.000000e+00, %7763
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7769 = extractvalue %dx.types.CBufRet.f32 %7766, 2
  %7770 = fmul fast float %7764, %7767
  %7771 = fmul fast float %7764, %7768
  %7772 = fmul fast float %7764, %7769
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7777 = fmul fast float %7765, %7774
  %7778 = fmul fast float %7765, %7775
  %7779 = fmul fast float %7765, %7776
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7784 = fadd fast float %7777, %7781
  %7785 = fadd fast float %7784, %7770
  %7786 = fadd fast float %7778, %7782
  %7787 = fadd fast float %7786, %7771
  %7788 = fadd fast float %7779, %7783
  %7789 = fadd fast float %7788, %7772
  %7790 = fmul fast float %7785, %177
  %7791 = fmul fast float %7787, %177
  %7792 = fmul fast float %7789, %177
  br label %7793

; <label>:7793                                    ; preds = %7735, %7499
  %7794 = phi float [ %7790, %7735 ], [ %155, %7499 ]
  %7795 = phi float [ %7791, %7735 ], [ %156, %7499 ]
  %7796 = phi float [ %7792, %7735 ], [ %157, %7499 ]
  %7797 = phi float [ %177, %7735 ], [ %91, %7499 ]
  %7798 = phi float [ %7756, %7735 ], [ %7526, %7499 ]
  %7799 = phi float [ %7757, %7735 ], [ %7527, %7499 ]
  %7800 = phi float [ %7758, %7735 ], [ %7528, %7499 ]
  %7801 = phi float [ %7759, %7735 ], [ %7500, %7499 ]
  %7802 = phi float [ %7760, %7735 ], [ %7501, %7499 ]
  %7803 = phi float [ %7761, %7735 ], [ %7502, %7499 ]
  %7804 = phi float [ %7736, %7735 ], [ 1.000000e+00, %7499 ]
  br i1 %7535, label %8959, label %7805

; <label>:7805                                    ; preds = %7793
  %7806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7807 = extractvalue %dx.types.CBufRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.CBufRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.CBufRet.f32 %7806, 2
  %7810 = extractvalue %dx.types.CBufRet.f32 %7806, 3
  %7811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7812 = extractvalue %dx.types.CBufRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.CBufRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.CBufRet.f32 %7811, 2
  %7815 = extractvalue %dx.types.CBufRet.f32 %7811, 3
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 0
  %7818 = extractvalue %dx.types.CBufRet.f32 %7816, 1
  %7819 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %7820 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 3
  %7828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.f32 %7828, 3
  %7830 = extractvalue %dx.types.CBufRet.f32 %7828, 0
  %7831 = extractvalue %dx.types.CBufRet.f32 %7828, 1
  %7832 = extractvalue %dx.types.CBufRet.f32 %7828, 2
  %7833 = fcmp fast olt float %7832, -5.000000e-01
  %7834 = call float @dx.op.dot3.f32(i32 55, float %7794, float %7795, float %7796, float %7794, float %7795, float %7796)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = call float @dx.op.unary.f32(i32 25, float %7834)  ; Rsqrt(value)
  %7836 = fmul fast float %7835, %7834
  %7837 = fmul fast float %7835, %7794
  %7838 = fmul fast float %7835, %7795
  %7839 = fmul fast float %7835, %7796
  %7840 = fadd fast float %7836, %7810
  %7841 = call float @dx.op.dot3.f32(i32 55, float %7837, float %7838, float %7839, float %7807, float %7808, float %7809)  ; Dot3(ax,ay,az,bx,by,bz)
  %7842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.i32 %7842, 1
  %7844 = and i32 %7843, 1
  %7845 = icmp ne i32 %7844, 0
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7848 = fcmp fast ogt float %7847, 0.000000e+00
  %7849 = and i1 %7845, %7848
  br i1 %7849, label %7850, label %8256, !dx.controlflow.hints !120

; <label>:7850                                    ; preds = %7805
  %7851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.f32 %7851, 3
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7857 = fsub fast float %7854, %7856
  %7858 = and i32 %7843, 2
  %7859 = extractvalue %dx.types.CBufRet.i32 %7842, 0
  %7860 = call i32 @dx.op.binary.i32(i32 40, i32 %7859, i32 3)  ; UMin(a,b)
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7865 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7866 = fsub fast float %7862, %7864
  %7867 = fsub fast float %7863, %7865
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %7870 = fcmp fast ogt float %7869, 0.000000e+00
  %7871 = fsub fast float -0.000000e+00, %7866
  %7872 = fsub fast float -0.000000e+00, %7867
  %7873 = call float @dx.op.dot2.f32(i32 54, float %7837, float %7838, float %7837, float %7838)  ; Dot2(ax,ay,bx,by)
  %7874 = call float @dx.op.dot2.f32(i32 54, float %7837, float %7838, float %7871, float %7872)  ; Dot2(ax,ay,bx,by)
  %7875 = fmul fast float %7874, 2.000000e+00
  %7876 = call float @dx.op.dot2.f32(i32 54, float %7871, float %7872, float %7871, float %7872)  ; Dot2(ax,ay,bx,by)
  %7877 = fmul fast float %7869, %7869
  %7878 = fsub fast float %7876, %7877
  %7879 = fmul fast float %7875, %7875
  %7880 = fmul fast float %7873, 4.000000e+00
  %7881 = fmul fast float %7880, %7878
  %7882 = fsub fast float %7879, %7881
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  br i1 %7883, label %7884, label %7899

; <label>:7884                                    ; preds = %7850
  %7885 = fcmp fast ogt float %7875, 0.000000e+00
  %7886 = call float @dx.op.unary.f32(i32 24, float %7882)  ; Sqrt(value)
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = select i1 %7885, float %7886, float %7887
  %7889 = fadd fast float %7888, %7875
  %7890 = fmul float %7889, -5.000000e-01
  %7891 = fdiv fast float %7890, %7873
  %7892 = call float @dx.op.binary.f32(i32 35, float %7891, float 0.000000e+00)  ; FMax(a,b)
  %7893 = call float @dx.op.binary.f32(i32 36, float %7836, float %7892)  ; FMin(a,b)
  %7894 = fdiv fast float %7878, %7890
  %7895 = call float @dx.op.binary.f32(i32 35, float %7894, float 0.000000e+00)  ; FMax(a,b)
  %7896 = call float @dx.op.binary.f32(i32 36, float %7836, float %7895)  ; FMin(a,b)
  %7897 = call float @dx.op.binary.f32(i32 36, float %7893, float %7896)  ; FMin(a,b)
  %7898 = call float @dx.op.binary.f32(i32 35, float %7893, float %7896)  ; FMax(a,b)
  br label %7899

; <label>:7899                                    ; preds = %7884, %7850
  %7900 = phi float [ %7898, %7884 ], [ -1.000000e+00, %7850 ]
  %7901 = phi float [ %7897, %7884 ], [ -1.000000e+00, %7850 ]
  %7902 = phi i1 [ true, %7884 ], [ false, %7850 ]
  %7903 = and i1 %7870, %7902
  br i1 %7903, label %7904, label %7906

; <label>:7904                                    ; preds = %7899
  %7905 = fcmp fast oeq float %7901, %7900
  br i1 %7905, label %8209, label %7907

; <label>:7906                                    ; preds = %7899
  br i1 %7870, label %8209, label %7907

; <label>:7907                                    ; preds = %7906, %7904
  %7908 = phi float [ %7836, %7906 ], [ %7900, %7904 ]
  %7909 = phi float [ 0.000000e+00, %7906 ], [ %7901, %7904 ]
  %7910 = icmp ne i32 %7858, 0
  %7911 = fmul fast float %7908, %7839
  %7912 = fadd fast float %7911, %7852
  %7913 = fmul fast float %7912, %7908
  %7914 = select i1 %7910, float 0.000000e+00, float %7913
  %7915 = fcmp fast oeq float %7839, 0.000000e+00
  %7916 = fdiv fast float %7857, %7839
  %7917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7916)  ; FMax(a,b)
  %7918 = select i1 %7915, float %7908, float %7917
  %7919 = call float @dx.op.binary.f32(i32 36, float %7908, float %7918)  ; FMin(a,b)
  %7920 = fcmp fast ogt float %7839, 0.000000e+00
  %7921 = fcmp fast olt float %7857, 0.000000e+00
  br i1 %7920, label %7922, label %7979

; <label>:7922                                    ; preds = %7907
  %7923 = icmp eq i32 %7858, 0
  br i1 %7921, label %7924, label %7968

; <label>:7924                                    ; preds = %7922
  %7925 = select i1 %7923, float %7908, float 0.000000e+00
  %7926 = fsub fast float -0.000000e+00, %7925
  %7927 = call float @dx.op.unary.f32(i32 6, float %7926)  ; FAbs(value)
  %7928 = fmul fast float %7925, %7839
  %7929 = fadd fast float %7928, %7852
  %7930 = fmul fast float %7927, %7929
  %7931 = fsub fast float %7914, %7930
  %7932 = fsub fast float %7908, %7927
  %7933 = select i1 %7923, float %7932, float 0.000000e+00
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.CBufRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7942 = extractvalue %dx.types.CBufRet.f32 %7938, 3
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 3
  %7945 = call float @dx.op.binary.f32(i32 36, float %7931, float %7944)  ; FMin(a,b)
  %7946 = fmul fast float %7942, %7933
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7948 = fsub fast float %7939, %7935
  %7949 = fsub fast float %7940, %7936
  %7950 = fsub fast float %7941, %7937
  %7951 = fmul fast float %7947, %7948
  %7952 = fmul fast float %7947, %7949
  %7953 = fmul fast float %7947, %7950
  %7954 = fadd fast float %7951, %7935
  %7955 = fadd fast float %7952, %7936
  %7956 = fadd fast float %7953, %7937
  %7957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7958 = extractvalue %dx.types.CBufRet.f32 %7957, 0
  %7959 = extractvalue %dx.types.CBufRet.f32 %7957, 1
  %7960 = fadd fast float %7959, %7958
  %7961 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7957, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7957, 3
  %7964 = fadd fast float %7963, %7962
  %7965 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7966 = fmul fast float %7961, %7945
  %7967 = fmul fast float %7966, %7965
  br label %8209

; <label>:7968                                    ; preds = %7922
  br i1 %7923, label %7969, label %7990

; <label>:7969                                    ; preds = %7968
  %7970 = call float @dx.op.binary.f32(i32 36, float %7919, float %7909)  ; FMin(a,b)
  %7971 = fsub fast float %7919, %7970
  %7972 = fsub fast float %7971, %7908
  %7973 = call float @dx.op.unary.f32(i32 6, float %7972)  ; FAbs(value)
  %7974 = fadd fast float %7971, %7908
  %7975 = fmul fast float %7974, %7839
  %7976 = fadd fast float %7975, %7852
  %7977 = fmul fast float %7976, %7973
  %7978 = fsub fast float %7914, %7977
  br label %7990

; <label>:7979                                    ; preds = %7907
  br i1 %7921, label %7980, label %7990

; <label>:7980                                    ; preds = %7979
  %7981 = call float @dx.op.binary.f32(i32 35, float %7909, float %7919)  ; FMax(a,b)
  %7982 = icmp eq i32 %7858, 0
  %7983 = select i1 %7982, float %7919, float 0.000000e+00
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = call float @dx.op.unary.f32(i32 6, float %7984)  ; FAbs(value)
  %7986 = fmul fast float %7983, %7839
  %7987 = fadd fast float %7986, %7852
  %7988 = fmul fast float %7985, %7987
  %7989 = fsub fast float %7914, %7988
  br label %7990

; <label>:7990                                    ; preds = %7980, %7979, %7969, %7968
  %7991 = phi float [ %7909, %7968 ], [ %7909, %7969 ], [ %7981, %7980 ], [ %7909, %7979 ]
  %7992 = phi float [ 0.000000e+00, %7968 ], [ %7973, %7969 ], [ %7985, %7980 ], [ 0.000000e+00, %7979 ]
  %7993 = phi float [ %7914, %7968 ], [ %7978, %7969 ], [ %7989, %7980 ], [ %7914, %7979 ]
  %7994 = phi float [ %7919, %7968 ], [ %7919, %7969 ], [ %7908, %7980 ], [ %7908, %7979 ]
  %7995 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7995, align 4, !tbaa !121, !noalias !123
  %7996 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7996, align 4, !tbaa !121, !noalias !123
  %7997 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7997, align 4, !tbaa !121, !noalias !123
  %7998 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7998, align 4, !tbaa !121, !noalias !123
  %7999 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7999, align 4, !tbaa !121, !noalias !123
  %8000 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8000, align 4, !tbaa !121, !noalias !123
  %8001 = icmp sgt i32 %7860, 0
  br i1 %8001, label %8002, label %8063

; <label>:8002                                    ; preds = %7990
  br label %8003

; <label>:8003                                    ; preds = %8052, %8002
  %8004 = phi i32 [ %8053, %8052 ], [ 0, %8002 ]
  %8005 = phi i32 [ %8054, %8052 ], [ 0, %8002 ]
  %8006 = add nuw i32 %8005, 171
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8006)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.CBufRet.f32 %8007, 1
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.CBufRet.f32 %8010, 1
  %8013 = fsub fast float %8008, %8011
  %8014 = fsub fast float %8009, %8012
  %8015 = extractvalue %dx.types.CBufRet.f32 %8007, 2
  %8016 = fsub fast float -0.000000e+00, %8013
  %8017 = fsub fast float -0.000000e+00, %8014
  %8018 = call float @dx.op.dot2.f32(i32 54, float %7837, float %7838, float %8016, float %8017)  ; Dot2(ax,ay,bx,by)
  %8019 = fmul fast float %8018, 2.000000e+00
  %8020 = call float @dx.op.dot2.f32(i32 54, float %8016, float %8017, float %8016, float %8017)  ; Dot2(ax,ay,bx,by)
  %8021 = fmul fast float %8015, %8015
  %8022 = fsub fast float %8020, %8021
  %8023 = fmul fast float %8019, %8019
  %8024 = fmul fast float %7880, %8022
  %8025 = fsub fast float %8023, %8024
  %8026 = fcmp fast ogt float %8025, 0.000000e+00
  br i1 %8026, label %8027, label %8042

; <label>:8027                                    ; preds = %8003
  %8028 = fcmp fast ogt float %8019, 0.000000e+00
  %8029 = call float @dx.op.unary.f32(i32 24, float %8025)  ; Sqrt(value)
  %8030 = fsub fast float -0.000000e+00, %8029
  %8031 = select i1 %8028, float %8029, float %8030
  %8032 = fadd fast float %8031, %8019
  %8033 = fmul float %8032, -5.000000e-01
  %8034 = fdiv fast float %8033, %7873
  %8035 = call float @dx.op.binary.f32(i32 35, float %8034, float 0.000000e+00)  ; FMax(a,b)
  %8036 = call float @dx.op.binary.f32(i32 36, float %7908, float %8035)  ; FMin(a,b)
  %8037 = fdiv fast float %8022, %8033
  %8038 = call float @dx.op.binary.f32(i32 35, float %8037, float 0.000000e+00)  ; FMax(a,b)
  %8039 = call float @dx.op.binary.f32(i32 36, float %7908, float %8038)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 36, float %8036, float %8039)  ; FMin(a,b)
  %8041 = call float @dx.op.binary.f32(i32 35, float %8036, float %8039)  ; FMax(a,b)
  br label %8042

; <label>:8042                                    ; preds = %8027, %8003
  %8043 = phi float [ %8041, %8027 ], [ -1.000000e+00, %8003 ]
  %8044 = phi float [ %8040, %8027 ], [ -1.000000e+00, %8003 ]
  %8045 = phi i1 [ true, %8027 ], [ false, %8003 ]
  br i1 %8045, label %8046, label %8052

; <label>:8046                                    ; preds = %8042
  %8047 = call float @dx.op.binary.f32(i32 35, float %7991, float %8044)  ; FMax(a,b)
  %8048 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8005
  store float %8047, float* %8048, align 4, !tbaa !121, !noalias !123
  %8049 = call float @dx.op.binary.f32(i32 35, float %7991, float %8043)  ; FMax(a,b)
  %8050 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8005
  store float %8049, float* %8050, align 4, !tbaa !121, !noalias !123
  %8051 = add nsw i32 %8004, 1
  br label %8052

; <label>:8052                                    ; preds = %8046, %8042
  %8053 = phi i32 [ %8051, %8046 ], [ %8004, %8042 ]
  %8054 = add nuw nsw i32 %8005, 1
  %8055 = icmp eq i32 %8054, %7860
  br i1 %8055, label %8056, label %8003

; <label>:8056                                    ; preds = %8052
  %8057 = load float, float* %7997, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8058 = load float, float* %7996, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  %8059 = load float, float* %7995, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  %8060 = load float, float* %8000, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8061 = load float, float* %7999, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  %8062 = load float, float* %7998, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  br label %8063

; <label>:8063                                    ; preds = %8056, %7990
  %8064 = phi float [ -1.000000e+00, %7990 ], [ %8062, %8056 ]
  %8065 = phi float [ -1.000000e+00, %7990 ], [ %8061, %8056 ]
  %8066 = phi float [ -1.000000e+00, %7990 ], [ %8060, %8056 ]
  %8067 = phi float [ -1.000000e+00, %7990 ], [ %8059, %8056 ]
  %8068 = phi float [ -1.000000e+00, %7990 ], [ %8058, %8056 ]
  %8069 = phi float [ -1.000000e+00, %7990 ], [ %8057, %8056 ]
  %8070 = phi i32 [ 0, %7990 ], [ %8053, %8056 ]
  %8071 = call float @dx.op.binary.f32(i32 36, float %8068, float %8069)  ; FMin(a,b)
  %8072 = call float @dx.op.binary.f32(i32 36, float %8067, float %8071)  ; FMin(a,b)
  %8073 = call float @dx.op.binary.f32(i32 35, float %8067, float %8068)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8073, float %8069)  ; FMin(a,b)
  %8075 = call float @dx.op.binary.f32(i32 36, float %8067, float %8068)  ; FMin(a,b)
  %8076 = call float @dx.op.binary.f32(i32 35, float %8075, float %8074)  ; FMax(a,b)
  %8077 = call float @dx.op.binary.f32(i32 35, float %8068, float %8069)  ; FMax(a,b)
  %8078 = call float @dx.op.binary.f32(i32 35, float %8067, float %8077)  ; FMax(a,b)
  store float %8072, float* %7995, align 4, !tbaa !121, !alias.scope !147, !noalias !148
  store float %8076, float* %7996, align 4, !tbaa !121, !alias.scope !145, !noalias !146
  store float %8078, float* %7997, align 4, !tbaa !121, !alias.scope !139, !noalias !142
  %8079 = call float @dx.op.binary.f32(i32 36, float %8065, float %8066)  ; FMin(a,b)
  %8080 = call float @dx.op.binary.f32(i32 36, float %8064, float %8079)  ; FMin(a,b)
  %8081 = call float @dx.op.binary.f32(i32 35, float %8064, float %8065)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8081, float %8066)  ; FMin(a,b)
  %8083 = call float @dx.op.binary.f32(i32 36, float %8064, float %8065)  ; FMin(a,b)
  %8084 = call float @dx.op.binary.f32(i32 35, float %8083, float %8082)  ; FMax(a,b)
  %8085 = call float @dx.op.binary.f32(i32 35, float %8065, float %8066)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8064, float %8085)  ; FMax(a,b)
  store float %8080, float* %7998, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8084, float* %7999, align 4, !tbaa !121, !alias.scope !155, !noalias !156
  store float %8086, float* %8000, align 4, !tbaa !121, !alias.scope !149, !noalias !152
  %8087 = sub nsw i32 3, %8070
  %8088 = icmp sgt i32 %8087, 2
  br i1 %8088, label %8089, label %8127

; <label>:8089                                    ; preds = %8063
  %8090 = icmp eq i32 %7858, 0
  %8091 = fsub fast float %7908, %7992
  %8092 = select i1 %8090, float %8091, float %7992
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.CBufRet.f32 %8093, 2
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8101 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8104 = call float @dx.op.binary.f32(i32 36, float %7993, float %8103)  ; FMin(a,b)
  %8105 = fmul fast float %8101, %8092
  %8106 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8107 = fsub fast float %8098, %8094
  %8108 = fsub fast float %8099, %8095
  %8109 = fsub fast float %8100, %8096
  %8110 = fmul fast float %8106, %8107
  %8111 = fmul fast float %8106, %8108
  %8112 = fmul fast float %8106, %8109
  %8113 = fadd fast float %8110, %8094
  %8114 = fadd fast float %8111, %8095
  %8115 = fadd fast float %8112, %8096
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.CBufRet.f32 %8116, 1
  %8119 = fadd fast float %8118, %8117
  %8120 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8116, 2
  %8122 = extractvalue %dx.types.CBufRet.f32 %8116, 3
  %8123 = fadd fast float %8122, %8121
  %8124 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  %8125 = fmul fast float %8120, %8104
  %8126 = fmul fast float %8125, %8124
  br label %8209

; <label>:8127                                    ; preds = %8063
  %8128 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8087
  %8129 = load float, float* %8128, align 4, !tbaa !121, !noalias !123
  %8130 = fcmp fast olt float %8129, %7994
  %8131 = icmp sgt i32 %8070, 0
  %8132 = and i1 %8131, %8130
  br i1 %8132, label %8133, label %8170

; <label>:8133                                    ; preds = %8127
  br label %8134

; <label>:8134                                    ; preds = %8163, %8133
  %8135 = phi float [ %8164, %8163 ], [ %7992, %8133 ]
  %8136 = phi float [ %8165, %8163 ], [ %7993, %8133 ]
  %8137 = phi float [ %8145, %8163 ], [ %8129, %8133 ]
  %8138 = phi i32 [ %8142, %8163 ], [ %8087, %8133 ]
  %8139 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8138
  %8140 = load float, float* %8139, align 4, !tbaa !121, !noalias !123
  %8141 = icmp slt i32 %8138, 2
  %8142 = add nsw i32 %8138, 1
  %8143 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8142
  %8144 = load float, float* %8143, align 4, !tbaa !121, !noalias !123
  %8145 = select i1 %8141, float %8144, float %7908
  %8146 = call float @dx.op.binary.f32(i32 36, float %8145, float %8140)  ; FMin(a,b)
  %8147 = call float @dx.op.binary.f32(i32 36, float %7994, float %8146)  ; FMin(a,b)
  %8148 = icmp eq i32 %7858, 0
  %8149 = fadd fast float %8147, %8137
  %8150 = fmul fast float %8149, %7839
  %8151 = fadd fast float %8150, %7852
  br i1 %8148, label %8157, label %8152

; <label>:8152                                    ; preds = %8134
  %8153 = fsub fast float %8147, %8137
  %8154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8153)  ; FMax(a,b)
  %8155 = fmul fast float %8154, %8151
  %8156 = fadd fast float %8155, %8136
  br label %8163

; <label>:8157                                    ; preds = %8134
  %8158 = fsub fast float %8137, %8147
  %8159 = call float @dx.op.unary.f32(i32 6, float %8158)  ; FAbs(value)
  %8160 = fadd fast float %8159, %8135
  %8161 = fmul fast float %8159, %8151
  %8162 = fsub fast float %8136, %8161
  br label %8163

; <label>:8163                                    ; preds = %8157, %8152
  %8164 = phi float [ %8154, %8152 ], [ %8160, %8157 ]
  %8165 = phi float [ %8156, %8152 ], [ %8162, %8157 ]
  %8166 = fcmp fast olt float %8145, %7994
  %8167 = icmp slt i32 %8142, 3
  %8168 = and i1 %8167, %8166
  br i1 %8168, label %8134, label %8169

; <label>:8169                                    ; preds = %8163
  br label %8170

; <label>:8170                                    ; preds = %8169, %8127
  %8171 = phi float [ %7992, %8127 ], [ %8164, %8169 ]
  %8172 = phi float [ %7993, %8127 ], [ %8165, %8169 ]
  %8173 = fsub fast float %7908, %8171
  %8174 = select i1 %7910, float %8171, float %8173
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 0
  %8177 = extractvalue %dx.types.CBufRet.f32 %8175, 1
  %8178 = extractvalue %dx.types.CBufRet.f32 %8175, 2
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8183 = extractvalue %dx.types.CBufRet.f32 %8179, 3
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8186 = call float @dx.op.binary.f32(i32 36, float %8172, float %8185)  ; FMin(a,b)
  %8187 = fmul fast float %8183, %8174
  %8188 = call float @dx.op.unary.f32(i32 7, float %8187)  ; Saturate(value)
  %8189 = fsub fast float %8180, %8176
  %8190 = fsub fast float %8181, %8177
  %8191 = fsub fast float %8182, %8178
  %8192 = fmul fast float %8188, %8189
  %8193 = fmul fast float %8188, %8190
  %8194 = fmul fast float %8188, %8191
  %8195 = fadd fast float %8192, %8176
  %8196 = fadd fast float %8193, %8177
  %8197 = fadd fast float %8194, %8178
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = fadd fast float %8200, %8199
  %8202 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8204 = extractvalue %dx.types.CBufRet.f32 %8198, 3
  %8205 = fadd fast float %8204, %8203
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = fmul fast float %8202, %8186
  %8208 = fmul fast float %8207, %8206
  br label %8209

; <label>:8209                                    ; preds = %8170, %8089, %7924, %7906, %7904
  %8210 = phi float [ %7933, %7924 ], [ %8092, %8089 ], [ %8174, %8170 ], [ 0.000000e+00, %7904 ], [ 0.000000e+00, %7906 ]
  %8211 = phi float [ %7967, %7924 ], [ %8126, %8089 ], [ %8208, %8170 ], [ 0.000000e+00, %7904 ], [ 0.000000e+00, %7906 ]
  %8212 = phi float [ %7954, %7924 ], [ %8113, %8089 ], [ %8195, %8170 ], [ 0.000000e+00, %7904 ], [ 0.000000e+00, %7906 ]
  %8213 = phi float [ %7955, %7924 ], [ %8114, %8089 ], [ %8196, %8170 ], [ 0.000000e+00, %7904 ], [ 0.000000e+00, %7906 ]
  %8214 = phi float [ %7956, %7924 ], [ %8115, %8089 ], [ %8197, %8170 ], [ 0.000000e+00, %7904 ], [ 0.000000e+00, %7906 ]
  %8215 = fmul fast float %7847, %8211
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8218 = fsub fast float %7854, %8217
  %8219 = fcmp fast olt float %8215, -2.000000e+01
  %8220 = call float @dx.op.unary.f32(i32 21, float %8215)  ; Exp(value)
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %8226 = fmul fast float %8223, %8218
  %8227 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8228 = fsub fast float 1.000000e+00, %8227
  %8229 = fmul fast float %7839, 5.000000e-01
  %8230 = fadd fast float %8229, 5.000000e-01
  %8231 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8232 = fsub fast float 1.000000e+00, %8231
  %8233 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8228)  ; FMax(a,b)
  %8234 = fdiv fast float %8232, %8233
  %8235 = fsub fast float %8218, %7796
  %8236 = call float @dx.op.unary.f32(i32 6, float %8235)  ; FAbs(value)
  %8237 = fmul fast float %8236, %8222
  %8238 = call float @dx.op.unary.f32(i32 7, float %8234)  ; Saturate(value)
  %8239 = fsub fast float 1.000000e+00, %8237
  %8240 = fmul fast float %8239, %8238
  %8241 = fadd fast float %8240, %8237
  %8242 = fmul fast float %8225, %8218
  %8243 = call float @dx.op.unary.f32(i32 7, float %8242)  ; Saturate(value)
  %8244 = fsub fast float 1.000000e+00, %8241
  %8245 = fmul fast float %8244, %8243
  %8246 = fadd fast float %8245, %8241
  %8247 = call float @dx.op.unary.f32(i32 7, float %8246)  ; Saturate(value)
  %8248 = fadd fast float %8220, -1.000000e+00
  %8249 = select i1 %8219, float -1.000000e+00, float %8248
  %8250 = fmul fast float %8247, %8249
  %8251 = fadd fast float %8250, 1.000000e+00
  %8252 = fsub fast float -0.000000e+00, %8250
  %8253 = fmul fast float %8212, %8252
  %8254 = fmul fast float %8213, %8252
  %8255 = fmul fast float %8214, %8252
  br label %8256

; <label>:8256                                    ; preds = %8209, %7805
  %8257 = phi float [ %8210, %8209 ], [ 0.000000e+00, %7805 ]
  %8258 = phi float [ %8251, %8209 ], [ 1.000000e+00, %7805 ]
  %8259 = phi float [ %8253, %8209 ], [ 0.000000e+00, %7805 ]
  %8260 = phi float [ %8254, %8209 ], [ 0.000000e+00, %7805 ]
  %8261 = phi float [ %8255, %8209 ], [ 0.000000e+00, %7805 ]
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8264 = fsub fast float 1.000000e+00, %8258
  %8265 = fmul fast float %8264, %7840
  %8266 = fmul fast float %8265, %8263
  %8267 = fsub fast float %7840, %8266
  br i1 %7833, label %8268, label %8297, !dx.controlflow.hints !159

; <label>:8268                                    ; preds = %8256
  %8269 = fmul fast float %7841, %7830
  %8270 = fadd fast float %8269, %7831
  %8271 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8272 = fmul fast float %7812, %8267
  %8273 = fsub fast float -0.000000e+00, %8272
  %8274 = fmul fast float %7813, %8267
  %8275 = fsub fast float -0.000000e+00, %8274
  %8276 = call float @dx.op.unary.f32(i32 21, float %8273)  ; Exp(value)
  %8277 = call float @dx.op.unary.f32(i32 21, float %8275)  ; Exp(value)
  %8278 = call float @dx.op.binary.f32(i32 35, float %7820, float %8276)  ; FMax(a,b)
  %8279 = call float @dx.op.binary.f32(i32 35, float %7820, float %8277)  ; FMax(a,b)
  %8280 = fsub fast float %8279, %8278
  %8281 = fmul fast float %8280, %8271
  %8282 = fadd fast float %8281, %8278
  %8283 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8284 = fsub fast float %7817, %7822
  %8285 = fsub fast float %7818, %7823
  %8286 = fsub fast float %7819, %7824
  %8287 = fmul fast float %8271, %8284
  %8288 = fmul fast float %8271, %8285
  %8289 = fmul fast float %8271, %8286
  %8290 = fadd fast float %8287, %7822
  %8291 = fadd fast float %8288, %7823
  %8292 = fadd fast float %8289, %7824
  %8293 = fsub fast float 1.000000e+00, %8283
  %8294 = fmul fast float %8293, %8290
  %8295 = fmul fast float %8293, %8291
  %8296 = fmul fast float %8293, %8292
  br label %8356

; <label>:8297                                    ; preds = %8256
  %8298 = fmul fast float %8267, %7829
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fsub fast float 2.000000e+00, %8299
  %8301 = fmul fast float %8299, 9.921875e-01
  %8302 = fmul fast float %8301, %8300
  %8303 = fadd fast float %8302, 3.906250e-03
  %8304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8303, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8305 = extractvalue %dx.types.ResRet.f32 %8304, 0
  %8306 = fsub fast float %8299, %8305
  %8307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8306)  ; FMax(a,b)
  %8308 = fmul fast float %7815, %7796
  %8309 = call float @dx.op.unary.f32(i32 6, float %8308)  ; FAbs(value)
  %8310 = fcmp fast ogt float %8309, 0x3EB0C6F7A0000000
  br i1 %8310, label %8311, label %8317, !dx.controlflow.hints !160

; <label>:8311                                    ; preds = %8297
  %8312 = fmul fast float %8308, 0xBFF7154760000000
  %8313 = call float @dx.op.unary.f32(i32 21, float %8312)  ; Exp(value)
  %8314 = fsub fast float 1.000000e+00, %8313
  %8315 = fdiv fast float %8314, %8308
  %8316 = fmul fast float %8315, %7825
  br label %8317

; <label>:8317                                    ; preds = %8311, %8297
  %8318 = phi float [ %8316, %8311 ], [ %7825, %8297 ]
  %8319 = fadd fast float %8318, %7827
  %8320 = fmul fast float %8319, %8307
  %8321 = fmul fast float %7812, %8320
  %8322 = fsub fast float -0.000000e+00, %8321
  %8323 = fmul fast float %7813, %8320
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = fmul fast float %7814, %8320
  %8326 = fsub fast float -0.000000e+00, %8325
  %8327 = call float @dx.op.unary.f32(i32 21, float %8322)  ; Exp(value)
  %8328 = call float @dx.op.unary.f32(i32 21, float %8324)  ; Exp(value)
  %8329 = call float @dx.op.unary.f32(i32 21, float %8326)  ; Exp(value)
  %8330 = fmul fast float %7841, %7841
  %8331 = fadd fast float %8330, 1.000000e+00
  %8332 = fmul fast float %8331, 0x3FAE8EC8A0000000
  %8333 = fmul fast float %8332, %7822
  %8334 = fmul fast float %8332, %7823
  %8335 = fmul fast float %8332, %7824
  %8336 = fmul fast float %7841, %7820
  %8337 = fsub fast float 1.000000e+00, %8336
  %8338 = fmul fast float %7820, %7820
  %8339 = fsub fast float 1.000000e+00, %8338
  %8340 = fmul fast float %8339, 0x3FB45F3060000000
  %8341 = fmul fast float %8337, %8337
  %8342 = fdiv fast float 1.000000e+00, %8341
  %8343 = fmul fast float %8340, %8342
  %8344 = fmul fast float %8343, %7817
  %8345 = fmul fast float %8343, %7818
  %8346 = fmul fast float %8343, %7819
  %8347 = fadd fast float %8344, %8333
  %8348 = fadd fast float %8345, %8334
  %8349 = fadd fast float %8346, %8335
  %8350 = fsub fast float 1.000000e+00, %8327
  %8351 = fsub fast float 1.000000e+00, %8328
  %8352 = fsub fast float 1.000000e+00, %8329
  %8353 = fmul fast float %8347, %8350
  %8354 = fmul fast float %8348, %8351
  %8355 = fmul fast float %8349, %8352
  br label %8356

; <label>:8356                                    ; preds = %8317, %8268
  %8357 = phi float [ %8294, %8268 ], [ %8353, %8317 ]
  %8358 = phi float [ %8295, %8268 ], [ %8354, %8317 ]
  %8359 = phi float [ %8296, %8268 ], [ %8355, %8317 ]
  %8360 = phi float [ %8283, %8268 ], [ %8327, %8317 ]
  %8361 = phi float [ %8283, %8268 ], [ %8328, %8317 ]
  %8362 = phi float [ %8283, %8268 ], [ %8329, %8317 ]
  br i1 %7849, label %8363, label %8561, !dx.controlflow.hints !161

; <label>:8363                                    ; preds = %8356
  %8364 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8365 = fmul fast float %8364, %8264
  %8366 = fsub fast float %8259, %8357
  %8367 = fsub fast float %8260, %8358
  %8368 = fsub fast float %8261, %8359
  %8369 = fmul fast float %8365, %8366
  %8370 = fmul fast float %8365, %8367
  %8371 = fmul fast float %8365, %8368
  %8372 = fadd fast float %8369, %8357
  %8373 = fadd fast float %8370, %8358
  %8374 = fadd fast float %8371, %8359
  %8375 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8360)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8361)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8362)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8258)  ; FMax(a,b)
  %8379 = call float @dx.op.binary.f32(i32 35, float %8257, float %8267)  ; FMax(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8379)  ; FMax(a,b)
  %8381 = fdiv fast float %8257, %8380
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = fdiv fast float %8267, %8380
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fcmp fast une float %8378, 1.000000e+00
  br i1 %8385, label %8386, label %8399, !dx.controlflow.hints !162

; <label>:8386                                    ; preds = %8363
  %8387 = call float @dx.op.unary.f32(i32 23, float %8378)  ; Log(value)
  %8388 = fmul fast float %8387, 0x3FE62E4300000000
  %8389 = fmul fast float %8259, %8388
  %8390 = fsub fast float -0.000000e+00, %8389
  %8391 = fmul fast float %8260, %8388
  %8392 = fsub fast float -0.000000e+00, %8391
  %8393 = fmul fast float %8261, %8388
  %8394 = fsub fast float -0.000000e+00, %8393
  %8395 = fsub fast float 1.000000e+00, %8378
  %8396 = fdiv fast float %8390, %8395
  %8397 = fdiv fast float %8392, %8395
  %8398 = fdiv fast float %8394, %8395
  br label %8399

; <label>:8399                                    ; preds = %8386, %8363
  %8400 = phi float [ %8396, %8386 ], [ %8259, %8363 ]
  %8401 = phi float [ %8397, %8386 ], [ %8260, %8363 ]
  %8402 = phi float [ %8398, %8386 ], [ %8261, %8363 ]
  %8403 = phi float [ %8388, %8386 ], [ 0.000000e+00, %8363 ]
  %8404 = fcmp fast une float %8375, 1.000000e+00
  br i1 %8404, label %8405, label %8412, !dx.controlflow.hints !163

; <label>:8405                                    ; preds = %8399
  %8406 = call float @dx.op.unary.f32(i32 23, float %8375)  ; Log(value)
  %8407 = fmul fast float %8406, 0x3FE62E4300000000
  %8408 = fmul fast float %8372, %8407
  %8409 = fsub fast float -0.000000e+00, %8408
  %8410 = fsub fast float 1.000000e+00, %8375
  %8411 = fdiv fast float %8409, %8410
  br label %8412

; <label>:8412                                    ; preds = %8405, %8399
  %8413 = phi float [ %8411, %8405 ], [ %8372, %8399 ]
  %8414 = phi float [ %8407, %8405 ], [ 0.000000e+00, %8399 ]
  %8415 = fcmp fast une float %8376, 1.000000e+00
  br i1 %8415, label %8416, label %8423, !dx.controlflow.hints !163

; <label>:8416                                    ; preds = %8412
  %8417 = call float @dx.op.unary.f32(i32 23, float %8376)  ; Log(value)
  %8418 = fmul fast float %8417, 0x3FE62E4300000000
  %8419 = fmul fast float %8373, %8418
  %8420 = fsub fast float -0.000000e+00, %8419
  %8421 = fsub fast float 1.000000e+00, %8376
  %8422 = fdiv fast float %8420, %8421
  br label %8423

; <label>:8423                                    ; preds = %8416, %8412
  %8424 = phi float [ %8422, %8416 ], [ %8373, %8412 ]
  %8425 = phi float [ %8418, %8416 ], [ 0.000000e+00, %8412 ]
  %8426 = fcmp fast une float %8377, 1.000000e+00
  br i1 %8426, label %8427, label %8434, !dx.controlflow.hints !163

; <label>:8427                                    ; preds = %8423
  %8428 = call float @dx.op.unary.f32(i32 23, float %8377)  ; Log(value)
  %8429 = fmul fast float %8428, 0x3FE62E4300000000
  %8430 = fmul fast float %8374, %8429
  %8431 = fsub fast float -0.000000e+00, %8430
  %8432 = fsub fast float 1.000000e+00, %8377
  %8433 = fdiv fast float %8431, %8432
  br label %8434

; <label>:8434                                    ; preds = %8427, %8423
  %8435 = phi float [ %8433, %8427 ], [ %8374, %8423 ]
  %8436 = phi float [ %8429, %8427 ], [ 0.000000e+00, %8423 ]
  %8437 = fmul fast float %8400, %8384
  %8438 = fmul fast float %8401, %8384
  %8439 = fmul fast float %8402, %8384
  %8440 = fmul fast float %8403, %8384
  %8441 = fmul fast float %8413, %8382
  %8442 = fmul fast float %8424, %8382
  %8443 = fmul fast float %8435, %8382
  %8444 = fmul fast float %8414, %8382
  %8445 = fmul fast float %8425, %8382
  %8446 = fmul fast float %8436, %8382
  %8447 = fadd fast float %8441, %8437
  %8448 = fadd fast float %8442, %8438
  %8449 = fadd fast float %8443, %8439
  %8450 = fadd fast float %8444, %8440
  %8451 = fadd fast float %8445, %8440
  %8452 = fadd fast float %8446, %8440
  %8453 = fcmp fast une float %8450, 0.000000e+00
  br i1 %8453, label %8454, label %8461, !dx.controlflow.hints !164

; <label>:8454                                    ; preds = %8434
  %8455 = fmul fast float %8450, 0x3FF7154760000000
  %8456 = call float @dx.op.unary.f32(i32 21, float %8455)  ; Exp(value)
  %8457 = fsub fast float 1.000000e+00, %8456
  %8458 = fmul fast float %8447, %8457
  %8459 = fsub fast float -0.000000e+00, %8458
  %8460 = fdiv fast float %8459, %8450
  br label %8461

; <label>:8461                                    ; preds = %8454, %8434
  %8462 = phi float [ %8456, %8454 ], [ 1.000000e+00, %8434 ]
  %8463 = phi float [ %8460, %8454 ], [ %8447, %8434 ]
  %8464 = fcmp fast une float %8451, 0.000000e+00
  br i1 %8464, label %8465, label %8472, !dx.controlflow.hints !164

; <label>:8465                                    ; preds = %8461
  %8466 = fmul fast float %8451, 0x3FF7154760000000
  %8467 = call float @dx.op.unary.f32(i32 21, float %8466)  ; Exp(value)
  %8468 = fsub fast float 1.000000e+00, %8467
  %8469 = fmul fast float %8448, %8468
  %8470 = fsub fast float -0.000000e+00, %8469
  %8471 = fdiv fast float %8470, %8451
  br label %8472

; <label>:8472                                    ; preds = %8465, %8461
  %8473 = phi float [ %8467, %8465 ], [ 1.000000e+00, %8461 ]
  %8474 = phi float [ %8471, %8465 ], [ %8448, %8461 ]
  %8475 = fcmp fast une float %8452, 0.000000e+00
  br i1 %8475, label %8476, label %8483, !dx.controlflow.hints !164

; <label>:8476                                    ; preds = %8472
  %8477 = fmul fast float %8452, 0x3FF7154760000000
  %8478 = call float @dx.op.unary.f32(i32 21, float %8477)  ; Exp(value)
  %8479 = fsub fast float 1.000000e+00, %8478
  %8480 = fmul fast float %8449, %8479
  %8481 = fsub fast float -0.000000e+00, %8480
  %8482 = fdiv fast float %8481, %8452
  br label %8483

; <label>:8483                                    ; preds = %8476, %8472
  %8484 = phi float [ %8478, %8476 ], [ 1.000000e+00, %8472 ]
  %8485 = phi float [ %8482, %8476 ], [ %8449, %8472 ]
  %8486 = fcmp fast ogt float %8382, %8384
  br i1 %8486, label %8487, label %8507

; <label>:8487                                    ; preds = %8483
  %8488 = fsub fast float 1.000000e+00, %8384
  %8489 = fmul fast float %8400, %8488
  %8490 = fmul fast float %8401, %8488
  %8491 = fmul fast float %8402, %8488
  %8492 = fmul fast float %8403, %8488
  %8493 = fcmp fast une float %8492, 0.000000e+00
  br i1 %8493, label %8494, label %8545, !dx.controlflow.hints !165

; <label>:8494                                    ; preds = %8487
  %8495 = fmul fast float %8492, 0x3FF7154760000000
  %8496 = call float @dx.op.unary.f32(i32 21, float %8495)  ; Exp(value)
  %8497 = fsub fast float 1.000000e+00, %8496
  %8498 = fmul fast float %8489, %8497
  %8499 = fsub fast float -0.000000e+00, %8498
  %8500 = fmul fast float %8490, %8497
  %8501 = fsub fast float -0.000000e+00, %8500
  %8502 = fmul fast float %8491, %8497
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = fdiv fast float %8499, %8492
  %8505 = fdiv fast float %8501, %8492
  %8506 = fdiv fast float %8503, %8492
  br label %8545

; <label>:8507                                    ; preds = %8483
  %8508 = fsub fast float 1.000000e+00, %8382
  %8509 = fmul fast float %8413, %8508
  %8510 = fmul fast float %8424, %8508
  %8511 = fmul fast float %8435, %8508
  %8512 = fmul fast float %8414, %8508
  %8513 = fmul fast float %8425, %8508
  %8514 = fmul fast float %8436, %8508
  %8515 = fcmp fast une float %8512, 0.000000e+00
  br i1 %8515, label %8516, label %8523, !dx.controlflow.hints !164

; <label>:8516                                    ; preds = %8507
  %8517 = fmul fast float %8512, 0x3FF7154760000000
  %8518 = call float @dx.op.unary.f32(i32 21, float %8517)  ; Exp(value)
  %8519 = fsub fast float 1.000000e+00, %8518
  %8520 = fmul fast float %8509, %8519
  %8521 = fsub fast float -0.000000e+00, %8520
  %8522 = fdiv fast float %8521, %8512
  br label %8523

; <label>:8523                                    ; preds = %8516, %8507
  %8524 = phi float [ %8522, %8516 ], [ %8509, %8507 ]
  %8525 = phi float [ %8518, %8516 ], [ 1.000000e+00, %8507 ]
  %8526 = fcmp fast une float %8513, 0.000000e+00
  br i1 %8526, label %8527, label %8534, !dx.controlflow.hints !164

; <label>:8527                                    ; preds = %8523
  %8528 = fmul fast float %8513, 0x3FF7154760000000
  %8529 = call float @dx.op.unary.f32(i32 21, float %8528)  ; Exp(value)
  %8530 = fsub fast float 1.000000e+00, %8529
  %8531 = fmul fast float %8510, %8530
  %8532 = fsub fast float -0.000000e+00, %8531
  %8533 = fdiv fast float %8532, %8513
  br label %8534

; <label>:8534                                    ; preds = %8527, %8523
  %8535 = phi float [ %8533, %8527 ], [ %8510, %8523 ]
  %8536 = phi float [ %8529, %8527 ], [ 1.000000e+00, %8523 ]
  %8537 = fcmp fast une float %8514, 0.000000e+00
  br i1 %8537, label %8538, label %8545, !dx.controlflow.hints !164

; <label>:8538                                    ; preds = %8534
  %8539 = fmul fast float %8514, 0x3FF7154760000000
  %8540 = call float @dx.op.unary.f32(i32 21, float %8539)  ; Exp(value)
  %8541 = fsub fast float 1.000000e+00, %8540
  %8542 = fmul fast float %8511, %8541
  %8543 = fsub fast float -0.000000e+00, %8542
  %8544 = fdiv fast float %8543, %8514
  br label %8545

; <label>:8545                                    ; preds = %8538, %8534, %8494, %8487
  %8546 = phi float [ %8544, %8538 ], [ %8506, %8494 ], [ %8491, %8487 ], [ %8511, %8534 ]
  %8547 = phi float [ %8535, %8538 ], [ %8505, %8494 ], [ %8490, %8487 ], [ %8535, %8534 ]
  %8548 = phi float [ %8524, %8538 ], [ %8504, %8494 ], [ %8489, %8487 ], [ %8524, %8534 ]
  %8549 = phi float [ %8540, %8538 ], [ %8496, %8494 ], [ 1.000000e+00, %8487 ], [ 1.000000e+00, %8534 ]
  %8550 = phi float [ %8536, %8538 ], [ %8496, %8494 ], [ 1.000000e+00, %8487 ], [ %8536, %8534 ]
  %8551 = phi float [ %8525, %8538 ], [ %8496, %8494 ], [ 1.000000e+00, %8487 ], [ %8525, %8534 ]
  %8552 = fmul fast float %8551, %8463
  %8553 = fmul fast float %8550, %8474
  %8554 = fmul fast float %8549, %8485
  %8555 = fadd fast float %8552, %8548
  %8556 = fadd fast float %8553, %8547
  %8557 = fadd fast float %8554, %8546
  %8558 = fmul fast float %8551, %8462
  %8559 = fmul fast float %8550, %8473
  %8560 = fmul fast float %8549, %8484
  br label %8561

; <label>:8561                                    ; preds = %8545, %8356
  %8562 = phi float [ %8560, %8545 ], [ %8362, %8356 ]
  %8563 = phi float [ %8559, %8545 ], [ %8361, %8356 ]
  %8564 = phi float [ %8558, %8545 ], [ %8360, %8356 ]
  %8565 = phi float [ %8557, %8545 ], [ %8359, %8356 ]
  %8566 = phi float [ %8556, %8545 ], [ %8358, %8356 ]
  %8567 = phi float [ %8555, %8545 ], [ %8357, %8356 ]
  %8568 = fmul fast float %8567, %7513
  %8569 = fmul fast float %8566, %7513
  %8570 = fmul fast float %8565, %7513
  %8571 = fmul fast float %8564, %7804
  %8572 = call float @dx.op.dot3.f32(i32 55, float %8564, float %8563, float %8562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8573 = call float @dx.op.dot3.f32(i32 55, float %8568, float %8569, float %8570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8574 = select i1 %217, float %8572, float %8564
  %8575 = select i1 %217, float %8572, float %8563
  %8576 = select i1 %217, float 1.000000e+00, float %8562
  %8577 = select i1 %217, float %8573, float %8568
  %8578 = select i1 %217, float 0.000000e+00, float %8569
  %8579 = select i1 %217, float 0.000000e+00, float %8570
  %8580 = fmul fast float %8574, %7798
  %8581 = fmul fast float %8575, %7799
  %8582 = fmul fast float %8576, %7800
  %8583 = fadd fast float %8580, %8577
  %8584 = fadd fast float %8581, %8578
  %8585 = fadd fast float %8579, %8582
  %8586 = fmul fast float %8574, %7801
  %8587 = fmul fast float %8575, %7802
  %8588 = fmul fast float %8576, %7803
  %8589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.i32 %8589, 0
  %8591 = icmp eq i32 %8590, 0
  br i1 %8591, label %8959, label %8592, !dx.controlflow.hints !166

; <label>:8592                                    ; preds = %8561
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 2
  %8595 = extractvalue %dx.types.CBufRet.f32 %8593, 3
  %8596 = fmul fast float %8594, %100
  %8597 = fmul fast float %8595, %101
  %8598 = fmul fast float %8596, 2.000000e+00
  %8599 = fmul fast float %8597, 2.000000e+00
  %8600 = fsub fast float 1.000000e+00, %8598
  %8601 = fsub fast float 1.000000e+00, %8599
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = fmul fast float %8600, %8603
  %8607 = fmul fast float %8600, %8604
  %8608 = fmul fast float %8600, %8605
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = fmul fast float %8601, %8610
  %8614 = fmul fast float %8601, %8611
  %8615 = fmul fast float %8601, %8612
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.CBufRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.CBufRet.f32 %8616, 2
  %8620 = fadd fast float %8613, %8617
  %8621 = fadd fast float %8620, %8606
  %8622 = fadd fast float %8614, %8618
  %8623 = fadd fast float %8622, %8607
  %8624 = fadd fast float %8615, %8619
  %8625 = fadd fast float %8624, %8608
  %8626 = fmul fast float %8621, %7797
  %8627 = fmul fast float %8623, %7797
  %8628 = fmul fast float %8625, %7797
  %8629 = fmul fast float %8626, %8626
  %8630 = fmul fast float %8627, %8627
  %8631 = fadd fast float %8629, %8630
  %8632 = fmul fast float %8628, %8628
  %8633 = fadd fast float %8631, %8632
  %8634 = call float @dx.op.unary.f32(i32 24, float %8633)  ; Sqrt(value)
  %8635 = extractvalue %dx.types.CBufRet.f32 %7524, 0
  %8636 = fsub fast float %8634, %8635
  %8637 = extractvalue %dx.types.CBufRet.f32 %7524, 2
  %8638 = fmul fast float %8636, %8637
  %8639 = call float @dx.op.unary.f32(i32 7, float %8638)  ; Saturate(value)
  %8640 = fadd fast float %8639, -5.000000e-01
  %8641 = fmul fast float %8640, 2.000000e+00
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8644 = call float @dx.op.binary.f32(i32 36, float %8643, float %8641)  ; FMin(a,b)
  %8645 = fsub fast float -0.000000e+00, %8643
  %8646 = fcmp fast ogt float %8644, %8645
  br i1 %8646, label %8647, label %8959, !dx.controlflow.hints !167

; <label>:8647                                    ; preds = %8592
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8650 = fcmp fast ogt float %8649, 0.000000e+00
  br i1 %8650, label %8651, label %8726, !dx.controlflow.hints !168

; <label>:8651                                    ; preds = %8647
  %8652 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8653 = extractvalue %dx.types.Dimensions %8652, 0
  %8654 = sitofp i32 %8653 to float
  %8655 = extractvalue %dx.types.Dimensions %8652, 1
  %8656 = sitofp i32 %8655 to float
  %8657 = fmul fast float %8596, %8654
  %8658 = fmul fast float %8597, %8656
  %8659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8660 = extractvalue %dx.types.CBufRet.f32 %8659, 1
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = fptoui float %8661 to i32
  %8663 = fptoui float %8657 to i32
  %8664 = fptoui float %8658 to i32
  %8665 = and i32 %8662, 31
  %8666 = lshr i32 %8663, %8665
  %8667 = lshr i32 %8664, %8665
  %8668 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8662, i32 %8666, i32 %8667, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8669 = extractvalue %dx.types.ResRet.f32 %8668, 0
  %8670 = fcmp fast olt float %8669, -1.000000e+00
  %8671 = fcmp fast ogt float %8669, -1.000000e+00
  %8672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8672, 1
  %8674 = select i1 %8671, float %8673, float 1.000000e+00
  %8675 = fadd fast float %8669, 1.000000e+00
  %8676 = fmul fast float %8674, %8675
  %8677 = call float @dx.op.unary.f32(i32 6, float %8676)  ; FAbs(value)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8672, 3
  %8679 = fcmp fast oge float %8677, %8678
  %8680 = select i1 %8679, float 0x4197782600000000, float %8677
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 1
  %8684 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8685 = select i1 %8670, float %8682, float %8603
  %8686 = select i1 %8670, float %8683, float %8604
  %8687 = select i1 %8670, float %8684, float %8605
  %8688 = fmul fast float %8685, %8600
  %8689 = fmul fast float %8686, %8600
  %8690 = fmul fast float %8687, %8600
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8693 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8694 = extractvalue %dx.types.CBufRet.f32 %8691, 2
  %8695 = select i1 %8670, float %8692, float %8610
  %8696 = select i1 %8670, float %8693, float %8611
  %8697 = select i1 %8670, float %8694, float %8612
  %8698 = fmul fast float %8695, %8601
  %8699 = fmul fast float %8696, %8601
  %8700 = fmul fast float %8697, %8601
  %8701 = fadd fast float %8698, %8688
  %8702 = fadd fast float %8699, %8689
  %8703 = fadd fast float %8700, %8690
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %8708 = select i1 %8670, float %8705, float %8617
  %8709 = select i1 %8670, float %8706, float %8618
  %8710 = select i1 %8670, float %8707, float %8619
  %8711 = fadd fast float %8701, %8708
  %8712 = fadd fast float %8702, %8709
  %8713 = fadd fast float %8703, %8710
  %8714 = fmul fast float %8711, %8680
  %8715 = fmul fast float %8712, %8680
  %8716 = fmul fast float %8713, %8680
  %8717 = fmul fast float %8714, %8714
  %8718 = fmul fast float %8715, %8715
  %8719 = fadd fast float %8717, %8718
  %8720 = fmul fast float %8716, %8716
  %8721 = fadd fast float %8719, %8720
  %8722 = call float @dx.op.unary.f32(i32 24, float %8721)  ; Sqrt(value)
  %8723 = fsub fast float %8722, %8635
  %8724 = fmul fast float %8723, %8637
  %8725 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  br label %8726

; <label>:8726                                    ; preds = %8651, %8647
  %8727 = phi float [ %8725, %8651 ], [ 1.000000e+00, %8647 ]
  %8728 = fmul fast float %8644, 5.000000e-01
  %8729 = fadd fast float %8728, 5.000000e-01
  %8730 = call float @dx.op.unary.f32(i32 22, float %8729)  ; Frc(value)
  %8731 = call float @dx.op.unary.f32(i32 27, float %8730)  ; Round_ni(value)
  %8732 = call float @dx.op.unary.f32(i32 22, float %8730)  ; Frc(value)
  %8733 = fmul fast float %8732, 2.000000e+00
  %8734 = fadd fast float %8733, -1.000000e+00
  %8735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8596, float %8597, float %8731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8736 = extractvalue %dx.types.ResRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.ResRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.ResRet.f32 %8735, 2
  %8739 = extractvalue %dx.types.ResRet.f32 %8735, 3
  %8740 = fadd fast float %8736, -5.000000e-01
  %8741 = fadd fast float %8738, -5.000000e-01
  %8742 = fmul fast float %8740, 0xBFD5555560000000
  %8743 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8741, float %8742)  ; FMad(a,b,c)
  %8744 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8737, float 0.000000e+00)  ; FMad(a,b,c)
  %8745 = fadd fast float %8744, %8739
  %8746 = fmul fast float %8740, -7.500000e-01
  %8747 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8741, float %8746)  ; FMad(a,b,c)
  %8748 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8737, float 0.000000e+00)  ; FMad(a,b,c)
  %8749 = fadd fast float %8748, %8739
  %8750 = call float @dx.op.binary.f32(i32 35, float %8743, float -1.000000e+00)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8745, float -1.000000e+00)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8747, float -1.000000e+00)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8749, float -1.000000e+00)  ; FMax(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8750, float 1.000000e+00)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8751, float 1.000000e+00)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8752, float 1.000000e+00)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8753, float 1.000000e+00)  ; FMin(a,b)
  %8758 = fcmp fast olt float %8754, 0x3FEFFF8020000000
  br i1 %8758, label %8759, label %8874, !dx.controlflow.hints !169

; <label>:8759                                    ; preds = %8726
  %8760 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.CBufRet.f32 %8761, 2
  %8765 = extractvalue %dx.types.CBufRet.f32 %8761, 3
  %8766 = fsub fast float %8762, %8754
  %8767 = fsub fast float %8763, %8755
  %8768 = fsub fast float %8764, %8756
  %8769 = fsub fast float %8765, %8757
  %8770 = fmul fast float %8766, %8760
  %8771 = fmul fast float %8767, %8760
  %8772 = fmul fast float %8768, %8760
  %8773 = fmul fast float %8769, %8760
  %8774 = fadd fast float %8770, %8754
  %8775 = fadd fast float %8771, %8755
  %8776 = fsub fast float -0.000000e+00, %8775
  %8777 = fadd fast float %8772, %8756
  %8778 = fadd fast float %8773, %8757
  %8779 = fmul fast float %8774, %8774
  %8780 = fsub fast float %8775, %8779
  %8781 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8780)  ; FMax(a,b)
  %8782 = fdiv fast float 1.000000e+00, %8781
  %8783 = fmul fast float %8775, %8774
  %8784 = fsub fast float %8777, %8783
  %8785 = fsub fast float %8734, %8774
  %8786 = fmul fast float %8734, %8734
  %8787 = fsub fast float %8786, %8775
  %8788 = fmul fast float %8785, %8782
  %8789 = fmul fast float %8788, %8784
  %8790 = fsub fast float %8787, %8789
  %8791 = fmul fast float %8775, %8775
  %8792 = fsub fast float %8778, %8791
  %8793 = fmul fast float %8784, %8784
  %8794 = fmul fast float %8793, %8782
  %8795 = fsub fast float %8792, %8794
  %8796 = fdiv fast float %8790, %8795
  %8797 = fmul fast float %8784, %8796
  %8798 = fsub fast float %8785, %8797
  %8799 = fmul fast float %8798, %8782
  %8800 = fmul fast float %8799, %8774
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8775, %8796
  %8803 = fsub fast float %8801, %8802
  %8804 = fmul fast float %8799, %8799
  %8805 = fmul fast float %8796, 4.000000e+00
  %8806 = fmul fast float %8805, %8803
  %8807 = fsub fast float %8804, %8806
  %8808 = call float @dx.op.unary.f32(i32 24, float %8807)  ; Sqrt(value)
  %8809 = fcmp fast oge float %8799, 0.000000e+00
  %8810 = fsub fast float -0.000000e+00, %8808
  %8811 = select i1 %8809, float %8810, float %8808
  %8812 = fsub fast float %8811, %8799
  %8813 = fdiv fast float %8812, %8796
  %8814 = fdiv fast float %8803, %8812
  %8815 = fmul fast float %8813, 5.000000e-01
  %8816 = fmul fast float %8814, 2.000000e+00
  %8817 = select i1 %8809, float %8815, float %8816
  %8818 = select i1 %8809, float %8816, float %8815
  %8819 = call float @dx.op.binary.f32(i32 35, float %8817, float %8818)  ; FMax(a,b)
  %8820 = call float @dx.op.binary.f32(i32 36, float %8817, float %8818)  ; FMin(a,b)
  %8821 = fcmp fast ogt float %8734, %8820
  br i1 %8821, label %8822, label %8832

; <label>:8822                                    ; preds = %8759
  %8823 = fsub fast float %8734, %8820
  %8824 = fsub fast float %8819, %8820
  %8825 = fmul fast float %8823, %8824
  %8826 = fmul fast float %8819, %8734
  %8827 = fadd fast float %8819, %8734
  %8828 = fmul fast float %8827, %8774
  %8829 = fadd fast float %8826, %8775
  %8830 = fsub fast float %8829, %8828
  %8831 = fdiv fast float %8830, %8825
  br label %8832

; <label>:8832                                    ; preds = %8822, %8759
  %8833 = phi float [ %8831, %8822 ], [ 0.000000e+00, %8759 ]
  %8834 = fcmp fast ogt float %8734, %8819
  %8835 = fsub fast float %8734, %8819
  br i1 %8834, label %8836, label %8846

; <label>:8836                                    ; preds = %8832
  %8837 = fsub fast float %8819, %8820
  %8838 = fmul fast float %8837, %8835
  %8839 = fmul fast float %8820, %8734
  %8840 = fadd fast float %8820, %8734
  %8841 = fmul fast float %8840, %8774
  %8842 = fsub fast float %8776, %8839
  %8843 = fadd fast float %8842, %8841
  %8844 = fdiv fast float %8843, %8838
  %8845 = fadd fast float %8844, %8833
  br label %8846

; <label>:8846                                    ; preds = %8836, %8832
  %8847 = phi float [ %8845, %8836 ], [ %8833, %8832 ]
  %8848 = fsub fast float %8734, %8820
  %8849 = fmul fast float %8848, %8835
  %8850 = fmul fast float %8820, %8819
  %8851 = fadd fast float %8820, %8819
  %8852 = fmul fast float %8851, %8774
  %8853 = fadd fast float %8850, %8775
  %8854 = fsub fast float %8853, %8852
  %8855 = fdiv fast float %8854, %8849
  %8856 = call float @dx.op.unary.f32(i32 7, float %8847)  ; Saturate(value)
  %8857 = fcmp fast oeq float %7525, 0.000000e+00
  %8858 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8859 = fcmp fast oeq float %8858, 0.000000e+00
  %8860 = or i1 %8857, %8859
  %8861 = fmul fast float %8858, 2.000000e+00
  %8862 = fadd fast float %8643, %8644
  %8863 = fdiv fast float %8862, %8861
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = fmul fast float %8864, 2.000000e+00
  %8866 = fsub fast float 3.000000e+00, %8865
  %8867 = fmul fast float %8864, %8864
  %8868 = fmul fast float %8867, %8866
  %8869 = select i1 %8860, float 1.000000e+00, float %8868
  %8870 = fmul fast float %8855, %7525
  %8871 = fadd fast float %8856, %8870
  %8872 = call float @dx.op.unary.f32(i32 7, float %8871)  ; Saturate(value)
  %8873 = fmul fast float %8869, %8872
  br label %8874

; <label>:8874                                    ; preds = %8846, %8726
  %8875 = phi float [ %8873, %8846 ], [ 0.000000e+00, %8726 ]
  %8876 = fsub fast float 1.000000e+00, %8875
  %8877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8596, float %8597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8878 = extractvalue %dx.types.ResRet.f32 %8877, 0
  %8879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.i32 %8879, 2
  %8881 = icmp eq i32 %8880, 0
  br i1 %8881, label %8887, label %8882

; <label>:8882                                    ; preds = %8874
  %8883 = call float @dx.op.unary.f32(i32 7, float %8875)  ; Saturate(value)
  %8884 = fadd fast float %8878, -1.000000e+00
  %8885 = fmul fast float %8883, %8884
  %8886 = fadd fast float %8885, 1.000000e+00
  br label %8887

; <label>:8887                                    ; preds = %8882, %8874
  %8888 = phi float [ %8886, %8882 ], [ %8876, %8874 ]
  br i1 %8650, label %8889, label %8907

; <label>:8889                                    ; preds = %8887
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8892 = fsub fast float %8727, %8891
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float %8727, %8649
  %8895 = call float @dx.op.unary.f32(i32 7, float %8894)  ; Saturate(value)
  %8896 = fsub fast float %8893, %8895
  %8897 = fsub fast float %8729, %8895
  %8898 = fdiv fast float %8897, %8896
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = fmul fast float %8899, 2.000000e+00
  %8901 = fsub fast float 3.000000e+00, %8900
  %8902 = fsub fast float %8878, %8888
  %8903 = fmul fast float %8899, %8899
  %8904 = fmul fast float %8903, %8902
  %8905 = fmul fast float %8904, %8901
  %8906 = fadd fast float %8905, %8888
  br label %8907

; <label>:8907                                    ; preds = %8889, %8887
  %8908 = phi float [ %8906, %8889 ], [ %8888, %8887 ]
  %8909 = call float @dx.op.binary.f32(i32 35, float %8878, float %8908)  ; FMax(a,b)
  %8910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.i32 %8910, 2
  %8912 = and i32 %8911, 1
  %8913 = icmp eq i32 %8912, 0
  %8914 = fcmp fast une float %8909, 1.000000e+00
  %8915 = and i1 %8914, %8913
  br i1 %8915, label %8916, label %8935

; <label>:8916                                    ; preds = %8907
  %8917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8596, float %8597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8918 = extractvalue %dx.types.ResRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.ResRet.f32 %8917, 1
  %8920 = extractvalue %dx.types.ResRet.f32 %8917, 2
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 1
  %8923 = fmul fast float %8922, %8918
  %8924 = fmul fast float %8922, %8919
  %8925 = fmul fast float %8922, %8920
  %8926 = fcmp fast ogt float %8878, 0x3FEFFF2E40000000
  %8927 = fsub fast float 1.000000e+00, %8909
  %8928 = fsub fast float 1.000000e+00, %8878
  %8929 = fdiv fast float %8927, %8928
  %8930 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8931 = select i1 %8926, float 0.000000e+00, float %8930
  %8932 = fmul fast float %8923, %8931
  %8933 = fmul fast float %8924, %8931
  %8934 = fmul fast float %8925, %8931
  br label %8935

; <label>:8935                                    ; preds = %8916, %8907
  %8936 = phi float [ 0.000000e+00, %8907 ], [ %8932, %8916 ]
  %8937 = phi float [ 0.000000e+00, %8907 ], [ %8933, %8916 ]
  %8938 = phi float [ 0.000000e+00, %8907 ], [ %8934, %8916 ]
  %8939 = fmul fast float %8936, %7513
  %8940 = fmul fast float %8937, %7513
  %8941 = fmul fast float %8938, %7513
  %8942 = fmul fast float %8909, %8571
  %8943 = call float @dx.op.dot3.f32(i32 55, float %8909, float %8909, float %8909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8944 = call float @dx.op.dot3.f32(i32 55, float %8939, float %8940, float %8941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8945 = select i1 %217, float %8943, float %8909
  %8946 = select i1 %217, float 1.000000e+00, float %8909
  %8947 = select i1 %217, float %8944, float %8939
  %8948 = select i1 %217, float 0.000000e+00, float %8940
  %8949 = select i1 %217, float 0.000000e+00, float %8941
  %8950 = fmul fast float %8945, %8583
  %8951 = fmul fast float %8945, %8584
  %8952 = fmul fast float %8946, %8585
  %8953 = fadd fast float %8950, %8947
  %8954 = fadd fast float %8951, %8948
  %8955 = fadd fast float %8949, %8952
  %8956 = fmul fast float %8945, %8586
  %8957 = fmul fast float %8945, %8587
  %8958 = fmul fast float %8946, %8588
  br label %8959

; <label>:8959                                    ; preds = %8935, %8592, %8561, %7793
  %8960 = phi float [ %7798, %7793 ], [ %8583, %8561 ], [ %8953, %8935 ], [ %8583, %8592 ]
  %8961 = phi float [ %7799, %7793 ], [ %8584, %8561 ], [ %8954, %8935 ], [ %8584, %8592 ]
  %8962 = phi float [ %7800, %7793 ], [ %8585, %8561 ], [ %8955, %8935 ], [ %8585, %8592 ]
  %8963 = phi float [ %7801, %7793 ], [ %8586, %8561 ], [ %8956, %8935 ], [ %8586, %8592 ]
  %8964 = phi float [ %7802, %7793 ], [ %8587, %8561 ], [ %8957, %8935 ], [ %8587, %8592 ]
  %8965 = phi float [ %7803, %7793 ], [ %8588, %8561 ], [ %8958, %8935 ], [ %8588, %8592 ]
  %8966 = phi float [ %7804, %7793 ], [ %8571, %8561 ], [ %8942, %8935 ], [ %8571, %8592 ]
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 3
  %8970 = fmul fast float %8968, %100
  %8971 = fmul fast float %8969, %101
  %8972 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8973 = call float @dx.op.unary.f32(i32 7, float %8971)  ; Saturate(value)
  %8974 = select i1 %7535, i32 2, i32 0
  %8975 = or i32 %8974, 1
  %8976 = uitofp i32 %8975 to float
  %8977 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8972, float %8973, float %8976, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8978 = extractvalue %dx.types.ResRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.ResRet.f32 %8977, 1
  %8980 = extractvalue %dx.types.ResRet.f32 %8977, 2
  %8981 = extractvalue %dx.types.ResRet.f32 %8977, 3
  %8982 = add nuw nsw i32 %8974, 2
  %8983 = uitofp i32 %8982 to float
  %8984 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8972, float %8973, float %8983, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8985 = extractvalue %dx.types.ResRet.f32 %8984, 0
  %8986 = extractvalue %dx.types.ResRet.f32 %8984, 1
  %8987 = extractvalue %dx.types.ResRet.f32 %8984, 2
  %8988 = extractvalue %dx.types.ResRet.f32 %8984, 3
  %8989 = call float @dx.op.binary.f32(i32 35, float %8979, float %8980)  ; FMax(a,b)
  %8990 = call float @dx.op.binary.f32(i32 35, float %8978, float %8989)  ; FMax(a,b)
  %8991 = call float @dx.op.binary.f32(i32 35, float %8990, float %8981)  ; FMax(a,b)
  %8992 = call float @dx.op.binary.f32(i32 36, float %8986, float %8987)  ; FMin(a,b)
  %8993 = call float @dx.op.binary.f32(i32 36, float %8985, float %8992)  ; FMin(a,b)
  %8994 = call float @dx.op.binary.f32(i32 36, float %8993, float %8988)  ; FMin(a,b)
  %8995 = fmul fast float %8991, 2.550000e+02
  %8996 = fadd fast float %8995, 0x3F70101020000000
  %8997 = fptoui float %8996 to i32
  %8998 = fmul fast float %8994, 2.550000e+02
  %8999 = fadd fast float %8998, 0x3F70101020000000
  %9000 = fptoui float %8999 to i32
  %9001 = icmp ult i32 %8997, %9000
  br i1 %9001, label %9002, label %9171

; <label>:9002                                    ; preds = %8959
  %9003 = fcmp fast ogt float %90, 9.843750e-01
  %9004 = fadd fast float %7797, -4.000000e+00
  %9005 = select i1 %9003, float -4.000000e+00, float %9004
  %9006 = call float @dx.op.binary.f32(i32 35, float %9005, float 0.000000e+00)  ; FMax(a,b)
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 0
  %9009 = fadd fast float %9008, %9006
  %9010 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9011 = fmul fast float %9009, %9010
  %9012 = call float @dx.op.unary.f32(i32 23, float %9011)  ; Log(value)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9007, 3
  %9014 = fmul fast float %9013, %9012
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9017 = fmul fast float %9014, %9016
  %9018 = call float @dx.op.unary.f32(i32 7, float %9017)  ; Saturate(value)
  %9019 = uitofp i32 %8997 to float
  %9020 = uitofp i32 %9000 to float
  %9021 = fadd fast float %9019, 5.000000e-01
  %9022 = fadd fast float %9020, 5.000000e-01
  %9023 = fmul fast float %9016, %9021
  %9024 = fmul fast float %9016, %9022
  %9025 = fadd fast float %9023, 0x3F0FFB4800000000
  %9026 = fadd fast float %9024, 0xBF0FFB4800000000
  %9027 = call float @dx.op.binary.f32(i32 35, float %9018, float %9025)  ; FMax(a,b)
  %9028 = call float @dx.op.binary.f32(i32 36, float %9027, float %9026)  ; FMin(a,b)
  %9029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9030 = extractvalue %dx.types.CBufRet.f32 %9029, 1
  %9031 = extractvalue %dx.types.CBufRet.f32 %9029, 2
  %9032 = extractvalue %dx.types.CBufRet.f32 %9029, 0
  %9033 = select i1 %7535, float %9032, float 0.000000e+00
  %9034 = fmul fast float %9030, %9028
  %9035 = fadd fast float %9033, %9034
  %9036 = fadd fast float %9033, %9031
  %9037 = fsub fast float %9030, %9031
  %9038 = fadd fast float %9037, %9033
  %9039 = call float @dx.op.binary.f32(i32 35, float %9035, float %9036)  ; FMax(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9039, float %9038)  ; FMin(a,b)
  %9041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8972, float %8973, float %9040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9042 = extractvalue %dx.types.ResRet.f32 %9041, 0
  %9043 = extractvalue %dx.types.ResRet.f32 %9041, 1
  %9044 = extractvalue %dx.types.ResRet.f32 %9041, 2
  %9045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9046 = extractvalue %dx.types.CBufRet.i32 %9045, 0
  %9047 = extractvalue %dx.types.CBufRet.i32 %9045, 1
  %9048 = uitofp i32 %9046 to float
  %9049 = uitofp i32 %9047 to float
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9053 = fmul fast float %9048, %8972
  %9054 = fmul fast float %9049, %8973
  %9055 = fadd fast float %9053, -5.000000e-01
  %9056 = fadd fast float %9054, -5.000000e-01
  %9057 = call float @dx.op.unary.f32(i32 22, float %9055)  ; Frc(value)
  %9058 = call float @dx.op.unary.f32(i32 22, float %9056)  ; Frc(value)
  %9059 = fmul fast float %9057, %9057
  %9060 = fmul fast float %9059, %9057
  %9061 = fsub fast float 3.000000e+00, %9057
  %9062 = fmul fast float %9059, %9061
  %9063 = fmul fast float %9057, 3.000000e+00
  %9064 = fmul fast float %9060, 3.000000e+00
  %9065 = fmul fast float %9059, 6.000000e+00
  %9066 = fsub fast float %9064, %9065
  %9067 = fadd fast float %9066, 4.000000e+00
  %9068 = fmul fast float %9067, 0x3FC5555560000000
  %9069 = fmul fast float %9060, -3.000000e+00
  %9070 = fadd fast float %9059, %9057
  %9071 = fmul fast float %9070, 3.000000e+00
  %9072 = fadd fast float %9069, 1.000000e+00
  %9073 = fadd fast float %9072, %9071
  %9074 = fmul fast float %9060, 0x3FC5555560000000
  %9075 = fmul fast float %9058, %9058
  %9076 = fmul fast float %9075, %9058
  %9077 = fsub fast float 3.000000e+00, %9058
  %9078 = fmul fast float %9075, %9077
  %9079 = fmul fast float %9058, 3.000000e+00
  %9080 = fmul fast float %9076, 3.000000e+00
  %9081 = fmul fast float %9075, 6.000000e+00
  %9082 = fsub fast float %9080, %9081
  %9083 = fadd fast float %9082, 4.000000e+00
  %9084 = fmul fast float %9083, 0x3FC5555560000000
  %9085 = fmul fast float %9076, -3.000000e+00
  %9086 = fadd fast float %9075, %9058
  %9087 = fmul fast float %9086, 3.000000e+00
  %9088 = fadd fast float %9085, 1.000000e+00
  %9089 = fadd fast float %9088, %9087
  %9090 = fmul fast float %9076, 0x3FC5555560000000
  %9091 = fadd fast float %9057, 1.000000e+00
  %9092 = fsub fast float 1.000000e+00, %9063
  %9093 = fadd fast float %9092, %9062
  %9094 = fadd fast float %9093, %9067
  %9095 = fmul fast float %9094, 0x3FC5555560000000
  %9096 = fdiv fast float %9068, %9095
  %9097 = fsub fast float %9091, %9096
  %9098 = fsub fast float 1.000000e+00, %9057
  %9099 = fadd fast float %9073, %9060
  %9100 = fmul fast float %9099, 0x3FC5555560000000
  %9101 = fdiv fast float %9074, %9100
  %9102 = fadd fast float %9098, %9101
  %9103 = fadd fast float %9058, 1.000000e+00
  %9104 = fsub fast float 1.000000e+00, %9079
  %9105 = fadd fast float %9104, %9078
  %9106 = fadd fast float %9105, %9083
  %9107 = fmul fast float %9106, 0x3FC5555560000000
  %9108 = fdiv fast float %9084, %9107
  %9109 = fsub fast float %9103, %9108
  %9110 = fsub fast float 1.000000e+00, %9058
  %9111 = fadd fast float %9089, %9076
  %9112 = fmul fast float %9111, 0x3FC5555560000000
  %9113 = fdiv fast float %9090, %9112
  %9114 = fadd fast float %9113, %9110
  %9115 = fmul fast float %9097, %9051
  %9116 = fsub fast float %8972, %9115
  %9117 = fmul fast float %9102, %9051
  %9118 = fadd fast float %9117, %8972
  %9119 = fmul fast float %9114, %9052
  %9120 = fadd fast float %9119, %8973
  %9121 = fmul fast float %9109, %9052
  %9122 = fsub fast float %8973, %9121
  %9123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9116, float %9122, float %9040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9124 = extractvalue %dx.types.ResRet.f32 %9123, 0
  %9125 = extractvalue %dx.types.ResRet.f32 %9123, 1
  %9126 = extractvalue %dx.types.ResRet.f32 %9123, 2
  %9127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9118, float %9122, float %9040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9128 = extractvalue %dx.types.ResRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.ResRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.ResRet.f32 %9127, 2
  %9131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9116, float %9120, float %9040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9132 = extractvalue %dx.types.ResRet.f32 %9131, 0
  %9133 = extractvalue %dx.types.ResRet.f32 %9131, 1
  %9134 = extractvalue %dx.types.ResRet.f32 %9131, 2
  %9135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9118, float %9120, float %9040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9136 = extractvalue %dx.types.ResRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.ResRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.ResRet.f32 %9135, 2
  %9139 = fsub fast float %9132, %9124
  %9140 = fsub fast float %9133, %9125
  %9141 = fsub fast float %9134, %9126
  %9142 = fmul fast float %9139, %9112
  %9143 = fmul fast float %9140, %9112
  %9144 = fmul fast float %9141, %9112
  %9145 = fadd fast float %9142, %9124
  %9146 = fadd fast float %9143, %9125
  %9147 = fadd fast float %9144, %9126
  %9148 = fsub fast float %9136, %9128
  %9149 = fsub fast float %9137, %9129
  %9150 = fsub fast float %9138, %9130
  %9151 = fmul fast float %9148, %9112
  %9152 = fmul fast float %9149, %9112
  %9153 = fmul fast float %9150, %9112
  %9154 = fsub fast float %9128, %9145
  %9155 = fadd fast float %9154, %9151
  %9156 = fsub fast float %9129, %9146
  %9157 = fadd fast float %9156, %9152
  %9158 = fsub fast float %9130, %9147
  %9159 = fadd fast float %9158, %9153
  %9160 = fmul fast float %9155, %9100
  %9161 = fmul fast float %9157, %9100
  %9162 = fmul fast float %9159, %9100
  %9163 = fadd fast float %9160, %9145
  %9164 = fadd fast float %9161, %9146
  %9165 = fadd fast float %9162, %9147
  %9166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9167 = extractvalue %dx.types.CBufRet.f32 %9166, 1
  %9168 = fmul fast float %9163, %9167
  %9169 = fmul fast float %9164, %9167
  %9170 = fmul fast float %9165, %9167
  br label %9171

; <label>:9171                                    ; preds = %9002, %8959
  %9172 = phi float [ %9042, %9002 ], [ 1.000000e+00, %8959 ]
  %9173 = phi float [ %9043, %9002 ], [ 1.000000e+00, %8959 ]
  %9174 = phi float [ %9044, %9002 ], [ 1.000000e+00, %8959 ]
  %9175 = phi float [ %9168, %9002 ], [ 0.000000e+00, %8959 ]
  %9176 = phi float [ %9169, %9002 ], [ 0.000000e+00, %8959 ]
  %9177 = phi float [ %9170, %9002 ], [ 0.000000e+00, %8959 ]
  %9178 = fmul fast float %9175, %7513
  %9179 = fmul fast float %9176, %7513
  %9180 = fmul fast float %9177, %7513
  %9181 = fmul fast float %9172, %8966
  %9182 = call float @dx.op.dot3.f32(i32 55, float %9172, float %9173, float %9174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9183 = call float @dx.op.dot3.f32(i32 55, float %9178, float %9179, float %9180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9184 = select i1 %217, float %9182, float %9172
  %9185 = select i1 %217, float %9182, float %9173
  %9186 = select i1 %217, float 1.000000e+00, float %9174
  %9187 = select i1 %217, float %9183, float %9178
  %9188 = select i1 %217, float 0.000000e+00, float %9179
  %9189 = select i1 %217, float 0.000000e+00, float %9180
  %9190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.i32 %9190, 3
  %9192 = and i32 %9191, 3
  %9193 = icmp ne i32 %9192, 0
  %9194 = and i32 %9191, 4
  %9195 = icmp ne i32 %9194, 0
  %9196 = and i1 %9193, %9195
  %9197 = and i1 %217, %9196
  br i1 %9197, label %9198, label %9204

; <label>:9198                                    ; preds = %9171
  %9199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9200 = extractvalue %dx.types.CBufRet.f32 %9199, 1
  %9201 = fadd fast float %9181, -1.000000e+00
  %9202 = fmul fast float %9200, %9201
  %9203 = fadd fast float %9202, 1.000000e+00
  br label %9204

; <label>:9204                                    ; preds = %9198, %9171
  %9205 = phi float [ %9203, %9198 ], [ %9181, %9171 ]
  %9206 = fadd fast float %8963, %8960
  %9207 = fmul fast float %9184, %9206
  %9208 = fadd fast float %9207, %9187
  %9209 = fadd fast float %8964, %8961
  %9210 = fmul fast float %9185, %9209
  %9211 = fadd fast float %9210, %9188
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 0
  br i1 %217, label %9214, label %9237

; <label>:9214                                    ; preds = %9204
  %9215 = fadd fast float %9208, %9211
  %9216 = fmul fast float %9213, %9215
  %9217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.f32 %9217, 3
  %9219 = extractvalue %dx.types.CBufRet.f32 %7517, 1
  %9220 = fsub fast float %7522, %7516
  %9221 = fadd fast float %9220, %7523
  %9222 = fsub fast float %9221, %9219
  %9223 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %9224 = fmul fast float %9222, %9223
  %9225 = call float @dx.op.unary.f32(i32 7, float %9224)  ; Saturate(value)
  %9226 = fsub fast float %9225, %9218
  %9227 = fmul fast float %9226, %9205
  %9228 = fadd fast float %9227, %9218
  %9229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9230 = extractvalue %dx.types.CBufRet.f32 %9229, 0
  %9231 = fsub fast float %9228, %9230
  %9232 = fmul fast float %9231, 1.000000e+01
  %9233 = call float @dx.op.unary.f32(i32 7, float %9232)  ; Saturate(value)
  %9234 = fmul fast float %9233, %7512
  %9235 = fadd fast float %9234, %7513
  %9236 = fmul fast float %9235, %9228
  br label %9261

; <label>:9237                                    ; preds = %9204
  %9238 = fadd fast float %8965, %8962
  %9239 = fmul fast float %9186, %9238
  %9240 = fadd fast float %9239, %9189
  %9241 = fmul fast float %9213, %9208
  %9242 = fmul fast float %9213, %9211
  %9243 = fmul fast float %9213, %9240
  %9244 = call float @dx.op.binary.f32(i32 35, float %9242, float %9243)  ; FMax(a,b)
  %9245 = call float @dx.op.binary.f32(i32 35, float %9241, float %9244)  ; FMax(a,b)
  %9246 = call float @dx.op.binary.f32(i32 35, float %9245, float %7513)  ; FMax(a,b)
  %9247 = fcmp fast ugt float %9246, 0x3F10000000000000
  br i1 %9247, label %9249, label %9248

; <label>:9248                                    ; preds = %9237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9249

; <label>:9249                                    ; preds = %9248, %9237
  %9250 = add i32 %54, 356
  %9251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9250, i32 undef)  ; BufferLoad(srv,index,wot)
  %9252 = extractvalue %dx.types.ResRet.i32 %9251, 0
  %9253 = and i32 %9252, 32
  %9254 = icmp eq i32 %9253, 0
  br i1 %9254, label %9261, label %9255

; <label>:9255                                    ; preds = %9249
  %9256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9256, 0
  %9258 = fmul fast float %9257, 0x3FE99999A0000000
  %9259 = fadd fast float %9257, %9241
  %9260 = fadd fast float %9258, %9243
  br label %9261

; <label>:9261                                    ; preds = %9255, %9249, %9214
  %9262 = phi float [ %9216, %9214 ], [ %9259, %9255 ], [ %9241, %9249 ]
  %9263 = phi float [ %9236, %9214 ], [ %9242, %9255 ], [ %9242, %9249 ]
  %9264 = phi float [ %9235, %9214 ], [ %9260, %9255 ], [ %9243, %9249 ]
  %9265 = phi float [ %9235, %9214 ], [ %7513, %9255 ], [ %7513, %9249 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9266 = call float @dx.op.binary.f32(i32 36, float %9262, float 3.225500e+04)  ; FMin(a,b)
  %9267 = call float @dx.op.binary.f32(i32 36, float %9263, float 3.225500e+04)  ; FMin(a,b)
  %9268 = call float @dx.op.binary.f32(i32 36, float %9264, float 3.225500e+04)  ; FMin(a,b)
  %9269 = call float @dx.op.binary.f32(i32 36, float %9265, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9266)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9267)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9268)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !91}
!70 = !{!71, !89, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88}
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
!86 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 13}
!88 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!91 = !{i32 0, i64 16}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !99, i64 0}
!123 = !{!124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!124 = distinct !{!124, !125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!125 = distinct !{!125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!126 = distinct !{!126, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!127 = distinct !{!127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!128 = distinct !{!128, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!138 = distinct !{!138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!147 = !{!143}
!148 = !{!144, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!157 = !{!153}
!158 = !{!154, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}

