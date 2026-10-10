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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: c6a7a31b152c565fe1a493b009ee19e5
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     u32          2d     T25     t56,space2     1
;                                   texture     f32          2d     T26     t34,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %90
  %103 = fmul fast float %101, %91
  %104 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %81
  %110 = fmul fast float %108, %82
  %111 = fmul fast float %108, %83
  %112 = fmul fast float %82, %79
  %113 = fmul fast float %83, %78
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %83, %77
  %116 = fmul fast float %81, %79
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %81, %78
  %119 = fmul fast float %82, %77
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %114, %80
  %122 = fmul fast float %117, %80
  %123 = fmul fast float %120, %80
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %102, 2.000000e+00
  %128 = fmul fast float %127, %125
  %129 = fmul fast float %103, 2.000000e+00
  %130 = fmul fast float %129, %126
  %131 = fsub fast float 1.000000e+00, %128
  %132 = fsub fast float 1.000000e+00, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %131, %134
  %138 = fmul fast float %131, %135
  %139 = fmul fast float %131, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fmul fast float %132, %141
  %145 = fmul fast float %132, %142
  %146 = fmul fast float %132, %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %151, %137
  %153 = fadd fast float %145, %149
  %154 = fadd fast float %153, %138
  %155 = fadd fast float %146, %150
  %156 = fadd fast float %155, %139
  %157 = fmul fast float %152, %93
  %158 = fmul fast float %154, %93
  %159 = fmul fast float %156, %93
  %160 = add i32 %56, 360
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = extractvalue %dx.types.ResRet.i32 %161, 2
  %165 = extractvalue %dx.types.ResRet.i32 %161, 3
  %166 = bitcast i32 %162 to float
  %167 = bitcast i32 %163 to float
  %168 = bitcast i32 %164 to float
  %169 = bitcast i32 %165 to float
  %170 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call float @dx.op.unary.f32(i32 25, float %170)  ; Rsqrt(value)
  %172 = fmul fast float %171, %109
  %173 = fmul fast float %171, %110
  %174 = fmul fast float %171, %111
  %175 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %176, %157
  %178 = fmul fast float %176, %158
  %179 = fmul fast float %176, %159
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %172, float %173, float %174)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fmul fast float %180, %180
  %182 = fmul fast float %181, %168
  %183 = fadd fast float %182, %169
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = fmul fast float %186, %175
  %188 = fsub fast float %166, %187
  %189 = fmul fast float %188, %167
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fmul fast float %190, %184
  %192 = fmul fast float %102, 5.000000e-01
  %193 = fmul fast float %103, 5.000000e-01
  %194 = fptosi float %192 to i32
  %195 = fptosi float %193 to i32
  %196 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %194, i32 %195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = lshr i32 %197, 18
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F4C00EBA0000000
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fadd fast float %201, -1.000000e+00
  %203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %204 = extractvalue %dx.types.Dimensions %203, 0
  %205 = sitofp i32 %204 to float
  %206 = extractvalue %dx.types.Dimensions %203, 1
  %207 = sitofp i32 %206 to float
  %208 = fcmp fast oge float %192, %205
  %209 = fcmp fast oge float %193, %207
  %210 = or i1 %208, %209
  %211 = select i1 %210, float 0x4197782600000000, float %202
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %215 = fmul fast float %213, %102
  %216 = fmul fast float %214, %103
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 114688
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %220, float %215, float 0.000000e+00
  %222 = select i1 %220, float %216, float 0.000000e+00
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %51, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fmul fast float %224, 2.550000e+02
  %226 = fptoui float %225 to i32
  %227 = select i1 %220, i32 %226, i32 0
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 3
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  %233 = and i32 %230, 4
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %232, %234
  br i1 %235, label %236, label %247

; <label>:236                                     ; preds = %0
  %237 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %238 = fmul fast float %237, %103
  %239 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %240 = fmul fast float %239, %102
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %240, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fsub fast float 1.000000e+00, %242
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = fcmp fast olt float %243, %245
  br label %250

; <label>:247                                     ; preds = %0
  %248 = icmp eq i32 %233, 0
  %249 = and i1 %232, %248
  br label %250

; <label>:250                                     ; preds = %247, %236
  %251 = phi i1 [ %246, %236 ], [ %249, %247 ]
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fmul fast float %253, 0x3FE3C6EF40000000
  %255 = frem fast float %102, 2.560000e+02
  %256 = frem fast float %103, 2.560000e+02
  %257 = fptoui float %255 to i32
  %258 = fptoui float %256 to i32
  %259 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = fadd fast float %260, %254
  %263 = fadd fast float %261, %254
  %264 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %265 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %266 = add i32 %56, 156
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = shl i32 %268, 4
  %270 = and i32 %269, 32752
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %268, 7
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %268, 22
  %276 = shl nuw nsw i32 %275, 5
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %56, 216
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %280, 8
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %280, 16
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = add i32 %56, 36
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %56, 288
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = fmul fast float %303, 0x3F50624DE0000000
  %307 = fmul fast float %305, 0x3F50624DE0000000
  %308 = add i32 %56, 172
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %56, 232
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %322, 8
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %322, 16
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = add i32 %56, 52
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %56, 304
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = fmul fast float %345, 0x3F50624DE0000000
  %349 = fmul fast float %347, 0x3F50624DE0000000
  %350 = add i32 %56, 188
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = shl i32 %352, 4
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %352, 7
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %352, 22
  %360 = shl nuw nsw i32 %359, 5
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %56, 248
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %364, 8
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %364, 16
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = add i32 %56, 68
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %56, 320
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = fmul fast float %387, 0x3F50624DE0000000
  %391 = fmul fast float %389, 0x3F50624DE0000000
  %392 = add i32 %56, 204
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %56, 264
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %406, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %406, 16
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = add i32 %56, 84
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %56, 336
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = fmul fast float %429, 0x3F50624DE0000000
  %433 = fmul fast float %431, 0x3F50624DE0000000
  %434 = add i32 %56, 348
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 32
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %436, 64
  %440 = icmp eq i32 %439, 0
  %441 = and i32 %436, 128
  %442 = icmp eq i32 %441, 0
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 2
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %462, label %447

; <label>:447                                     ; preds = %250
  %448 = add i32 %56, 556
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %450, 0
  %452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %452, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = fmul fast float %457, %86
  %459 = fmul fast float %454, %87
  %460 = fmul fast float %455, %88
  %461 = fmul fast float %456, %89
  br label %462

; <label>:462                                     ; preds = %447, %250
  %463 = phi float [ %89, %250 ], [ %461, %447 ]
  %464 = phi float [ %88, %250 ], [ %460, %447 ]
  %465 = phi float [ %87, %250 ], [ %459, %447 ]
  %466 = phi float [ %86, %250 ], [ %458, %447 ]
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %490, label %471

; <label>:471                                     ; preds = %462
  %472 = add i32 %56, 44
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 1
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %465, float 1.000000e+00
  %478 = add i32 %56, 60
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %464, float 1.000000e+00
  %484 = add i32 %56, 76
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %463, float 1.000000e+00
  br label %490

; <label>:490                                     ; preds = %471, %462
  %491 = phi float [ %463, %462 ], [ %489, %471 ]
  %492 = phi float [ %464, %462 ], [ %483, %471 ]
  %493 = phi float [ %465, %462 ], [ %477, %471 ]
  %494 = lshr i32 %468, 20
  %495 = and i32 %494, 3
  %496 = add nuw nsw i32 %495, 1
  %497 = add i32 %56, 24
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %56, 28
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = or i32 %502, %499
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %1265, label %505

; <label>:505                                     ; preds = %490
  %506 = and i32 %499, 262144
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %59, float 1.000000e+00
  %509 = select i1 %507, float %60, float 0.000000e+00
  %510 = select i1 %507, float %61, float 0.000000e+00
  %511 = select i1 %507, float %62, float 1.000000e+00
  %512 = select i1 %507, float %63, float %84
  %513 = select i1 %507, float %64, float %85
  %514 = add i32 %56, 284
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = lshr i32 %516, 16
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = fmul fast float %518, 0x3F50624DE0000000
  %520 = add i32 %56, 88
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = and i32 %523, 255
  %525 = lshr i32 %522, 24
  %526 = add i32 %56, 292
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %528, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = add i32 %56, 32
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 22
  %537 = shl nuw nsw i32 %536, 5
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = shl i32 %535, 4
  %540 = and i32 %539, 32752
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %535, 7
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = fmul fast float %546, 1.000000e+03
  %548 = fmul fast float %306, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = fadd fast float %549, %296
  %551 = fmul fast float %307, %547
  %552 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %553 = fadd fast float %552, %298
  %554 = fmul fast float %519, %547
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fmul fast float %555, 0x401921FB60000000
  %557 = fadd fast float %556, %538
  %558 = call float @dx.op.unary.f32(i32 13, float %557)  ; Sin(value)
  %559 = call float @dx.op.unary.f32(i32 12, float %557)  ; Cos(value)
  %560 = fsub fast float -0.000000e+00, %558
  %561 = fadd fast float %512, -5.000000e-01
  %562 = fadd fast float %513, -5.000000e-01
  %563 = fmul fast float %530, %561
  %564 = fmul fast float %532, %562
  %565 = fadd fast float %563, 5.000000e-01
  %566 = fadd fast float %564, 5.000000e-01
  %567 = fmul fast float %541, %565
  %568 = fmul fast float %544, %566
  %569 = fmul fast float %559, %567
  %570 = call float @dx.op.tertiary.f32(i32 46, float %560, float %568, float %569)  ; FMad(a,b,c)
  %571 = fmul fast float %558, %567
  %572 = call float @dx.op.tertiary.f32(i32 46, float %559, float %568, float %571)  ; FMad(a,b,c)
  %573 = fadd fast float %550, %570
  %574 = fadd fast float %553, %572
  %575 = icmp ugt i32 %524, 1
  %576 = icmp ugt i32 %522, 33554431
  %577 = or i1 %576, %575
  br i1 %577, label %578, label %603

; <label>:578                                     ; preds = %505
  %579 = add i32 %56, 228
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = fmul fast float %546, %583
  %585 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %586 = mul nuw nsw i32 %524, %525
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %585, %587
  %589 = call float @dx.op.unary.f32(i32 27, float %588)  ; Round_ni(value)
  %590 = fptoui float %589 to i32
  %591 = urem i32 %590, %524
  %592 = udiv i32 %590, %525
  %593 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %594 = call float @dx.op.unary.f32(i32 22, float %574)  ; Frc(value)
  %595 = uitofp i32 %591 to float
  %596 = uitofp i32 %592 to float
  %597 = fadd fast float %593, %595
  %598 = fadd fast float %594, %596
  %599 = uitofp i32 %524 to float
  %600 = uitofp i32 %525 to float
  %601 = fdiv fast float %597, %599
  %602 = fdiv fast float %598, %600
  br label %603

; <label>:603                                     ; preds = %578, %505
  %604 = phi float [ %601, %578 ], [ %573, %505 ]
  %605 = phi float [ %602, %578 ], [ %574, %505 ]
  %606 = and i32 %499, 16777216
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %717, label %608

; <label>:608                                     ; preds = %603
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = fadd fast float %610, %157
  %614 = fadd fast float %611, %158
  %615 = fadd fast float %612, %159
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = icmp eq i32 %57, 65535
  br i1 %619, label %714, label %620

; <label>:620                                     ; preds = %608
  %621 = lshr i32 %57, 1
  %622 = shl i32 %621, 2
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %57, 1
  %626 = icmp ne i32 %625, 0
  %627 = lshr i32 %624, 16
  %628 = and i32 %624, 65535
  %629 = select i1 %626, i32 %627, i32 %628
  %630 = icmp eq i32 %629, 65535
  br i1 %630, label %710, label %631

; <label>:631                                     ; preds = %620
  %632 = mul nuw nsw i32 %629, 40
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = add nuw nsw i32 %632, 12
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add nuw nsw i32 %632, 24
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = add nuw nsw i32 %632, 36
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = fsub fast float %613, %634
  %651 = fsub fast float %614, %635
  %652 = fsub fast float %615, %636
  %653 = fmul fast float %649, %650
  %654 = fmul fast float %649, %651
  %655 = fmul fast float %649, %652
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = fmul fast float %659, %639
  %663 = fmul fast float %660, %640
  %664 = fmul fast float %661, %641
  %665 = shl i32 %57, 2
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %671 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %672 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %669, %dx.types.Handle %51, float %670, float %671, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = fmul fast float %674, 1.023000e+03
  %678 = fmul fast float %675, 1.023000e+03
  %679 = fmul fast float %676, 1.023000e+03
  %680 = fadd fast float %677, 5.000000e-01
  %681 = fadd fast float %678, 5.000000e-01
  %682 = fadd fast float %679, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 27, float %680)  ; Round_ni(value)
  %684 = call float @dx.op.unary.f32(i32 27, float %681)  ; Round_ni(value)
  %685 = call float @dx.op.unary.f32(i32 27, float %682)  ; Round_ni(value)
  %686 = fsub fast float %653, %656
  %687 = fsub fast float %654, %657
  %688 = fsub fast float %655, %658
  %689 = fmul fast float %686, 7.500000e-01
  %690 = fmul fast float %687, 7.500000e-01
  %691 = fmul fast float %688, 7.500000e-01
  %692 = fadd fast float %656, 1.250000e-01
  %693 = fadd fast float %692, %689
  %694 = fadd fast float %693, %683
  %695 = fadd fast float %657, 1.250000e-01
  %696 = fadd fast float %695, %690
  %697 = fadd fast float %696, %684
  %698 = fadd fast float %658, 1.250000e-01
  %699 = fadd fast float %698, %691
  %700 = fadd fast float %699, %685
  %701 = fmul fast float %694, %644
  %702 = fmul fast float %697, %645
  %703 = fmul fast float %700, %646
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %707, %dx.types.Handle %49, float %701, float %702, float %703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  br label %710

; <label>:710                                     ; preds = %631, %620
  %711 = phi float [ %709, %631 ], [ -1.000000e+00, %620 ]
  %712 = fadd fast float %711, %618
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  br label %714

; <label>:714                                     ; preds = %710, %608
  %715 = phi float [ %713, %710 ], [ %618, %608 ]
  %716 = fmul fast float %715, %466
  br label %717

; <label>:717                                     ; preds = %714, %603
  %718 = phi float [ %716, %714 ], [ %466, %603 ]
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 256
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %769, label %723

; <label>:723                                     ; preds = %717
  %724 = add i32 %56, 488
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %726, 0
  %728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %728, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = add i32 %56, 100
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = shl i32 %733, 4
  %735 = and i32 %734, 32752
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %733, 7
  %738 = and i32 %737, 32752
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = fsub fast float 1.000000e+00, %718
  %741 = call float @dx.op.binary.f32(i32 35, float %740, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %742 = bitcast float %718 to i32
  %743 = sitofp i32 %742 to float
  %744 = fadd fast float %743, 0xC1CFBF8940000000
  %745 = fmul fast float %739, %744
  %746 = fadd fast float %745, 0x41CFBF8940000000
  %747 = fptosi float %746 to i32
  %748 = bitcast i32 %747 to float
  %749 = bitcast float %741 to i32
  %750 = sitofp i32 %749 to float
  %751 = fadd fast float %750, 0xC1CFBF8940000000
  %752 = fmul fast float %751, %739
  %753 = fadd fast float %752, 0x41CFBF8940000000
  %754 = fptosi float %753 to i32
  %755 = bitcast i32 %754 to float
  %756 = fmul fast float %748, %736
  %757 = fmul fast float %755, %736
  %758 = fsub fast float %741, %756
  %759 = fadd fast float %757, %741
  %760 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %761 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %762 = fsub fast float %730, %760
  %763 = fsub fast float %761, %760
  %764 = bitcast float %763 to i32
  %765 = sub nsw i32 2129859010, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %766, %762
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  br label %769

; <label>:769                                     ; preds = %723, %717
  %770 = phi float [ %768, %723 ], [ %718, %717 ]
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 128
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %791, label %775

; <label>:775                                     ; preds = %769
  %776 = add i32 %56, 472
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %778, 0
  %780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %780, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 524288
  %786 = icmp ne i32 %785, 0
  %787 = fcmp fast ogt float %782, 0x3FE0101020000000
  %788 = select i1 %787, float 1.000000e+00, float 0.000000e+00
  %789 = select i1 %786, float %788, float %782
  %790 = fmul fast float %789, %770
  br label %791

; <label>:791                                     ; preds = %775, %769
  %792 = phi float [ %790, %775 ], [ %770, %769 ]
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 16
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %995, label %797

; <label>:797                                     ; preds = %791
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = add i32 %56, 424
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = and i32 %799, 255
  %811 = uitofp i32 %810 to float
  %812 = lshr i32 %799, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %809, %811
  %816 = fadd fast float %815, %814
  %817 = fmul fast float %816, 0x3F70101000000000
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 512
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %830, label %822

; <label>:822                                     ; preds = %797
  %823 = add i32 %56, 508
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %825, 0
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  br label %830

; <label>:830                                     ; preds = %822, %797
  %831 = phi float [ %829, %822 ], [ 1.000000e+00, %797 ]
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 33554432
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %942, label %836

; <label>:836                                     ; preds = %830
  %837 = add i32 %56, 224
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = lshr i32 %839, 16
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = add i32 %56, 228
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 24
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F70101020000000
  %854 = and i32 %850, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = lshr i32 %850, 8
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = lshr i32 %850, 16
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = add i32 %56, 220
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = lshr i32 %867, 24
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = and i32 %867, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101020000000
  %874 = lshr i32 %867, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = lshr i32 %867, 16
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = bitcast float %806 to i32
  %883 = ashr i32 %882, 1
  %884 = sub nsw i32 1597463174, %883
  %885 = bitcast i32 %884 to float
  %886 = fmul fast float %806, 5.000000e-01
  %887 = fmul fast float %885, %885
  %888 = fmul fast float %887, %886
  %889 = fsub fast float 1.500000e+00, %888
  %890 = fmul fast float %885, %806
  %891 = fmul fast float %890, %889
  %892 = bitcast float %807 to i32
  %893 = ashr i32 %892, 1
  %894 = sub nsw i32 1597463174, %893
  %895 = bitcast i32 %894 to float
  %896 = fmul fast float %807, 5.000000e-01
  %897 = fmul fast float %895, %895
  %898 = fmul fast float %897, %896
  %899 = fsub fast float 1.500000e+00, %898
  %900 = fmul fast float %895, %807
  %901 = fmul fast float %900, %899
  %902 = bitcast float %808 to i32
  %903 = ashr i32 %902, 1
  %904 = sub nsw i32 1597463174, %903
  %905 = bitcast i32 %904 to float
  %906 = fmul fast float %808, 5.000000e-01
  %907 = fmul fast float %905, %905
  %908 = fmul fast float %907, %906
  %909 = fsub fast float 1.500000e+00, %908
  %910 = fmul fast float %905, %808
  %911 = fmul fast float %910, %909
  %912 = fsub fast float %891, %873
  %913 = fsub fast float %901, %877
  %914 = fsub fast float %911, %881
  %915 = fmul fast float %912, %841
  %916 = fmul fast float %913, %843
  %917 = fmul fast float %914, %848
  %918 = fadd fast float %915, %856
  %919 = fadd fast float %916, %860
  %920 = fadd fast float %917, %864
  %921 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %922 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %923 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %924 = fmul fast float %921, %921
  %925 = fmul fast float %922, %922
  %926 = fmul fast float %923, %923
  %927 = fsub fast float %924, %806
  %928 = fsub fast float %925, %807
  %929 = fsub fast float %926, %808
  %930 = fmul fast float %927, %831
  %931 = fmul fast float %928, %831
  %932 = fmul fast float %929, %831
  %933 = fadd fast float %930, %806
  %934 = fadd fast float %931, %807
  %935 = fadd fast float %932, %808
  %936 = fadd fast float %853, %817
  %937 = fsub fast float %936, %870
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fsub fast float %938, %817
  %940 = fmul fast float %939, %831
  %941 = fadd fast float %940, %817
  br label %995

; <label>:942                                     ; preds = %830
  %943 = and i32 %833, 134217728
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %979, label %945

; <label>:945                                     ; preds = %942
  %946 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %947 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %948 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %949 = fadd fast float %946, -5.000000e-01
  %950 = fadd fast float %947, -5.000000e-01
  %951 = fadd fast float %948, -5.000000e-01
  %952 = fmul fast float %949, %831
  %953 = fmul fast float %950, %831
  %954 = fmul fast float %951, %831
  %955 = fadd fast float %952, 5.000000e-01
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %954, 5.000000e-01
  %958 = call float @dx.op.unary.f32(i32 24, float %806)  ; Sqrt(value)
  %959 = call float @dx.op.unary.f32(i32 24, float %807)  ; Sqrt(value)
  %960 = call float @dx.op.unary.f32(i32 24, float %808)  ; Sqrt(value)
  %961 = fmul fast float %955, 2.000000e+00
  %962 = fsub fast float 1.000000e+00, %961
  %963 = fmul fast float %962, %958
  %964 = fadd fast float %963, %961
  %965 = fmul fast float %964, %958
  %966 = fmul fast float %956, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %959
  %969 = fadd fast float %968, %966
  %970 = fmul fast float %969, %959
  %971 = fmul fast float %957, 2.000000e+00
  %972 = fsub fast float 1.000000e+00, %971
  %973 = fmul fast float %972, %960
  %974 = fadd fast float %973, %971
  %975 = fmul fast float %974, %960
  %976 = fmul fast float %965, %965
  %977 = fmul fast float %970, %970
  %978 = fmul fast float %975, %975
  br label %995

; <label>:979                                     ; preds = %942
  %980 = fmul fast float %283, %283
  %981 = fmul fast float %287, %287
  %982 = fmul fast float %291, %291
  %983 = fadd fast float %980, -1.000000e+00
  %984 = fadd fast float %981, -1.000000e+00
  %985 = fadd fast float %982, -1.000000e+00
  %986 = fmul fast float %831, %983
  %987 = fmul fast float %831, %984
  %988 = fmul fast float %831, %985
  %989 = fadd fast float %986, 1.000000e+00
  %990 = fadd fast float %987, 1.000000e+00
  %991 = fadd fast float %988, 1.000000e+00
  %992 = fmul fast float %989, %806
  %993 = fmul fast float %990, %807
  %994 = fmul fast float %991, %808
  br label %995

; <label>:995                                     ; preds = %979, %945, %836, %791
  %996 = phi float [ %941, %836 ], [ %817, %945 ], [ %817, %979 ], [ 0x3FA23C0BE0000000, %791 ]
  %997 = phi float [ %933, %836 ], [ %976, %945 ], [ %992, %979 ], [ 1.000000e+00, %791 ]
  %998 = phi float [ %934, %836 ], [ %977, %945 ], [ %993, %979 ], [ 1.000000e+00, %791 ]
  %999 = phi float [ %935, %836 ], [ %978, %945 ], [ %994, %979 ], [ 1.000000e+00, %791 ]
  %1000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.i32 %1000, 1
  %1002 = and i32 %1001, 1
  %1003 = icmp ne i32 %1002, 0
  %1004 = add i32 %56, 356
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 32
  %1008 = icmp ne i32 %1007, 0
  %1009 = and i1 %1003, %1008
  %1010 = select i1 %1009, float 1.000000e+00, float %997
  %1011 = select i1 %1009, float 0x3FD3333340000000, float %998
  %1012 = select i1 %1009, float 0x3FD3333340000000, float %999
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 32
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1089, label %1017

; <label>:1017                                    ; preds = %995
  %1018 = add i32 %56, 92
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = add i32 %56, 440
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = add i32 %1023, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1025, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  %1030 = extractvalue %dx.types.ResRet.f32 %1026, 3
  %1031 = and i32 %1020, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = lshr i32 %1020, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = lshr i32 %1020, 16
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F70101000000000
  %1040 = fmul fast float %1027, %1032
  %1041 = fadd fast float %1040, %1035
  %1042 = fmul fast float %1041, 0x3F70101000000000
  %1043 = fadd fast float %1028, -5.000000e-01
  %1044 = fadd fast float %1030, -5.000000e-01
  %1045 = fmul fast float %1043, %1039
  %1046 = fmul fast float %1044, %1039
  %1047 = fadd fast float %1045, 5.000000e-01
  %1048 = fadd fast float %1046, 5.000000e-01
  %1049 = fmul fast float %1047, 2.000000e+00
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = fmul fast float %1048, 2.000000e+00
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = fadd fast float %1050, %1052
  %1054 = fmul fast float %1053, 5.000000e-01
  %1055 = fsub fast float %1050, %1052
  %1056 = fmul fast float %1055, 5.000000e-01
  %1057 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = call float @dx.op.unary.f32(i32 6, float %1056)  ; FAbs(value)
  %1060 = fsub fast float %1058, %1059
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1056, float %1060, float %1054, float %1056, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 25, float %1061)  ; Rsqrt(value)
  %1063 = fmul fast float %1054, %1062
  %1064 = fmul fast float %1056, %1062
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 67108864
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1085, label %1069

; <label>:1069                                    ; preds = %1017
  %1070 = add i32 %56, 280
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 65535
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 65535
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1072, 16
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fsub fast float %1042, %1080
  %1082 = fmul fast float %1081, %1074
  %1083 = fadd fast float %1082, %1078
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  br label %1085

; <label>:1085                                    ; preds = %1069, %1017
  %1086 = phi float [ %1084, %1069 ], [ %1042, %1017 ]
  %1087 = call float @dx.op.dot2.f32(i32 54, float %1063, float %1064, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  %1088 = call float @dx.op.dot2.f32(i32 54, float %1063, float %1064, float %510, float %511)  ; Dot2(ax,ay,bx,by)
  br label %1089

; <label>:1089                                    ; preds = %1085, %995
  %1090 = phi float [ %1086, %1085 ], [ 0x3FD6666660000000, %995 ]
  %1091 = phi float [ %1087, %1085 ], [ 0.000000e+00, %995 ]
  %1092 = phi float [ %1088, %1085 ], [ 0.000000e+00, %995 ]
  %1093 = phi float [ %1029, %1085 ], [ 1.000000e+00, %995 ]
  %1094 = add i32 %56, 160
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = lshr i32 %1096, 22
  %1098 = shl nuw nsw i32 %1097, 5
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 64
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1137, label %1104

; <label>:1104                                    ; preds = %1089
  %1105 = add i32 %56, 456
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 131072
  %1113 = icmp eq i32 %1112, 0
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, %271
  %1119 = fmul fast float %1116, %274
  %1120 = fmul fast float %1117, %277
  br i1 %1113, label %1127, label %1121

; <label>:1121                                    ; preds = %1104
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %1118
  %1125 = fmul fast float %1123, %1119
  %1126 = fmul fast float %1123, %1120
  br label %1127

; <label>:1127                                    ; preds = %1121, %1104
  %1128 = phi float [ %1124, %1121 ], [ %1118, %1104 ]
  %1129 = phi float [ %1125, %1121 ], [ %1119, %1104 ]
  %1130 = phi float [ %1126, %1121 ], [ %1120, %1104 ]
  %1131 = fmul fast float %1128, %1099
  %1132 = select i1 %251, float %1131, float %1128
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1132, float %1129, float %1130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = select i1 %251, float 0.000000e+00, float %1128
  %1135 = select i1 %251, float %1133, float %1129
  %1136 = select i1 %251, float 0.000000e+00, float %1130
  br label %1137

; <label>:1137                                    ; preds = %1127, %1089
  %1138 = phi float [ %1134, %1127 ], [ 0.000000e+00, %1089 ]
  %1139 = phi float [ %1135, %1127 ], [ 0.000000e+00, %1089 ]
  %1140 = phi float [ %1136, %1127 ], [ 0.000000e+00, %1089 ]
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 1024
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1175, label %1145

; <label>:1145                                    ; preds = %1137
  %1146 = add i32 %56, 152
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F70101020000000
  %1152 = lshr i32 %1148, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1148, 16
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = fmul fast float %1151, %1151
  %1161 = fmul fast float %1155, %1155
  %1162 = fmul fast float %1159, %1159
  %1163 = add i32 %56, 524
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = fmul fast float %1160, %1169
  %1173 = fmul fast float %1161, %1170
  %1174 = fmul fast float %1162, %1171
  br label %1175

; <label>:1175                                    ; preds = %1145, %1137
  %1176 = phi float [ %1172, %1145 ], [ 0.000000e+00, %1137 ]
  %1177 = phi float [ %1173, %1145 ], [ 0.000000e+00, %1137 ]
  %1178 = phi float [ %1174, %1145 ], [ 0.000000e+00, %1137 ]
  %1179 = fcmp fast ogt float %1176, 0.000000e+00
  %1180 = fcmp fast ogt float %1177, 0.000000e+00
  %1181 = fcmp fast ogt float %1178, 0.000000e+00
  %1182 = call float @dx.op.unary.f32(i32 23, float %1176)  ; Log(value)
  %1183 = call float @dx.op.unary.f32(i32 23, float %1177)  ; Log(value)
  %1184 = call float @dx.op.unary.f32(i32 23, float %1178)  ; Log(value)
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 7
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1182, 0xBFE62E4300000000
  %1191 = fmul fast float %1190, %1189
  %1192 = fmul fast float %1183, 0xBFE62E4300000000
  %1193 = fmul fast float %1192, %1189
  %1194 = fmul fast float %1184, 0xBFE62E4300000000
  %1195 = fmul fast float %1194, %1189
  %1196 = select i1 %1179, float %1191, float 1.270000e+02
  %1197 = select i1 %1180, float %1193, float 1.270000e+02
  %1198 = select i1 %1181, float %1195, float 1.270000e+02
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 10240
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1247, label %1203

; <label>:1203                                    ; preds = %1175
  %1204 = add i32 %56, 540
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 1048576
  %1215 = icmp ne i32 %1214, 0
  %1216 = and i32 %1213, 8192
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1233, label %1218

; <label>:1218                                    ; preds = %1203
  %1219 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1220 = select i1 %1215, float %1219, float %1210
  %1221 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1222 = select i1 %1215, float %1221, float %1210
  %1223 = add i32 %56, 96
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = lshr i32 %1225, 16
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F80101020000000
  %1230 = fmul fast float %1229, %1222
  %1231 = fmul fast float %1229, %1210
  %1232 = fmul fast float %1229, %1220
  br label %1233

; <label>:1233                                    ; preds = %1218, %1203
  %1234 = phi float [ %1230, %1218 ], [ 0.000000e+00, %1203 ]
  %1235 = phi float [ %1231, %1218 ], [ 0.000000e+00, %1203 ]
  %1236 = phi float [ %1232, %1218 ], [ 0.000000e+00, %1203 ]
  %1237 = and i32 %1213, 2048
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1247, label %1239

; <label>:1239                                    ; preds = %1233
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = shl i32 %1241, 4
  %1243 = and i32 %1242, 32752
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = fmul fast float %1244, %1211
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1247

; <label>:1247                                    ; preds = %1239, %1233, %1175
  %1248 = phi float [ %1234, %1239 ], [ %1234, %1233 ], [ 0.000000e+00, %1175 ]
  %1249 = phi float [ %1235, %1239 ], [ %1235, %1233 ], [ 0.000000e+00, %1175 ]
  %1250 = phi float [ %1236, %1239 ], [ %1236, %1233 ], [ 0.000000e+00, %1175 ]
  %1251 = phi float [ %1246, %1239 ], [ 0x3F70101020000000, %1233 ], [ 0x3F70101020000000, %1175 ]
  %1252 = add i32 %56, 96
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = lshr i32 %1254, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1011, float %1012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1261 = fmul fast float %1259, %1260
  %1262 = fadd fast float %1261, %1256
  %1263 = fmul fast float %1262, 0x3F70101020000000
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  br label %1265

; <label>:1265                                    ; preds = %1247, %490
  %1266 = phi float [ 0.000000e+00, %490 ], [ %1091, %1247 ]
  %1267 = phi float [ 0.000000e+00, %490 ], [ %1092, %1247 ]
  %1268 = phi float [ 0.000000e+00, %490 ], [ %1010, %1247 ]
  %1269 = phi float [ 0.000000e+00, %490 ], [ %1011, %1247 ]
  %1270 = phi float [ 0.000000e+00, %490 ], [ %1012, %1247 ]
  %1271 = phi float [ 0.000000e+00, %490 ], [ %1138, %1247 ]
  %1272 = phi float [ 0.000000e+00, %490 ], [ %1139, %1247 ]
  %1273 = phi float [ 0.000000e+00, %490 ], [ %1140, %1247 ]
  %1274 = phi float [ 0.000000e+00, %490 ], [ %1248, %1247 ]
  %1275 = phi float [ 0.000000e+00, %490 ], [ %1249, %1247 ]
  %1276 = phi float [ 0.000000e+00, %490 ], [ %1250, %1247 ]
  %1277 = phi float [ 0.000000e+00, %490 ], [ %1196, %1247 ]
  %1278 = phi float [ 0.000000e+00, %490 ], [ %1197, %1247 ]
  %1279 = phi float [ 0.000000e+00, %490 ], [ %1198, %1247 ]
  %1280 = phi float [ 0.000000e+00, %490 ], [ %996, %1247 ]
  %1281 = phi float [ 0.000000e+00, %490 ], [ %792, %1247 ]
  %1282 = phi float [ 0.000000e+00, %490 ], [ %1090, %1247 ]
  %1283 = phi float [ 0.000000e+00, %490 ], [ %1093, %1247 ]
  %1284 = phi float [ 0.000000e+00, %490 ], [ %1251, %1247 ]
  %1285 = phi float [ 0.000000e+00, %490 ], [ %1264, %1247 ]
  br i1 %438, label %2323, label %1286

; <label>:1286                                    ; preds = %1265
  %1287 = icmp ult i32 %496, 2
  %1288 = add i32 %56, 40
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %56, 44
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = or i32 %1293, %1290
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %2323, label %1296

; <label>:1296                                    ; preds = %1286
  %1297 = and i32 %1290, 262144
  %1298 = icmp ne i32 %1297, 0
  %1299 = select i1 %1298, float %59, float 1.000000e+00
  %1300 = select i1 %1298, float %60, float 0.000000e+00
  %1301 = select i1 %1298, float %61, float 0.000000e+00
  %1302 = select i1 %1298, float %62, float 1.000000e+00
  %1303 = select i1 %1298, float %63, float %84
  %1304 = select i1 %1298, float %64, float %85
  %1305 = add i32 %56, 300
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = lshr i32 %1307, 16
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = fmul fast float %1309, 0x3F50624DE0000000
  %1311 = add i32 %56, 104
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %1313, 16
  %1315 = and i32 %1314, 255
  %1316 = lshr i32 %1313, 24
  %1317 = add i32 %56, 308
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 65535
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = lshr i32 %1319, 16
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = add i32 %56, 48
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = lshr i32 %1326, 22
  %1328 = shl nuw nsw i32 %1327, 5
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = shl i32 %1326, 4
  %1331 = and i32 %1330, 32752
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = lshr i32 %1326, 7
  %1334 = and i32 %1333, 32752
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = fmul fast float %1337, 1.000000e+03
  %1339 = fmul fast float %348, %1338
  %1340 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1341 = fadd fast float %1340, %338
  %1342 = fmul fast float %349, %1338
  %1343 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1344 = fadd fast float %1343, %340
  %1345 = fmul fast float %1310, %1338
  %1346 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1347 = fmul fast float %1346, 0x401921FB60000000
  %1348 = fadd fast float %1347, %1329
  %1349 = call float @dx.op.unary.f32(i32 13, float %1348)  ; Sin(value)
  %1350 = call float @dx.op.unary.f32(i32 12, float %1348)  ; Cos(value)
  %1351 = fsub fast float -0.000000e+00, %1349
  %1352 = fadd fast float %1303, -5.000000e-01
  %1353 = fadd fast float %1304, -5.000000e-01
  %1354 = fmul fast float %1321, %1352
  %1355 = fmul fast float %1323, %1353
  %1356 = fadd fast float %1354, 5.000000e-01
  %1357 = fadd fast float %1355, 5.000000e-01
  %1358 = fmul fast float %1332, %1356
  %1359 = fmul fast float %1335, %1357
  %1360 = fmul fast float %1350, %1358
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1351, float %1359, float %1360)  ; FMad(a,b,c)
  %1362 = fmul fast float %1349, %1358
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1350, float %1359, float %1362)  ; FMad(a,b,c)
  %1364 = fadd fast float %1341, %1361
  %1365 = fadd fast float %1344, %1363
  %1366 = icmp ugt i32 %1315, 1
  %1367 = icmp ugt i32 %1313, 33554431
  %1368 = or i1 %1367, %1366
  br i1 %1368, label %1369, label %1394

; <label>:1369                                    ; preds = %1296
  %1370 = add i32 %56, 244
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = lshr i32 %1372, 16
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = fmul fast float %1337, %1374
  %1376 = call float @dx.op.unary.f32(i32 22, float %1375)  ; Frc(value)
  %1377 = mul nuw nsw i32 %1315, %1316
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1376, %1378
  %1380 = call float @dx.op.unary.f32(i32 27, float %1379)  ; Round_ni(value)
  %1381 = fptoui float %1380 to i32
  %1382 = urem i32 %1381, %1315
  %1383 = udiv i32 %1381, %1316
  %1384 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1385 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1386 = uitofp i32 %1382 to float
  %1387 = uitofp i32 %1383 to float
  %1388 = fadd fast float %1384, %1386
  %1389 = fadd fast float %1385, %1387
  %1390 = uitofp i32 %1315 to float
  %1391 = uitofp i32 %1316 to float
  %1392 = fdiv fast float %1388, %1390
  %1393 = fdiv fast float %1389, %1391
  br label %1394

; <label>:1394                                    ; preds = %1369, %1296
  %1395 = phi float [ %1392, %1369 ], [ %1364, %1296 ]
  %1396 = phi float [ %1393, %1369 ], [ %1365, %1296 ]
  %1397 = and i32 %1290, 16777216
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1508, label %1399

; <label>:1399                                    ; preds = %1394
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1404 = fadd fast float %1401, %157
  %1405 = fadd fast float %1402, %158
  %1406 = fadd fast float %1403, %159
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = icmp eq i32 %57, 65535
  br i1 %1410, label %1505, label %1411

; <label>:1411                                    ; preds = %1399
  %1412 = lshr i32 %57, 1
  %1413 = shl i32 %1412, 2
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %57, 1
  %1417 = icmp ne i32 %1416, 0
  %1418 = lshr i32 %1415, 16
  %1419 = and i32 %1415, 65535
  %1420 = select i1 %1417, i32 %1418, i32 %1419
  %1421 = icmp eq i32 %1420, 65535
  br i1 %1421, label %1501, label %1422

; <label>:1422                                    ; preds = %1411
  %1423 = mul nuw nsw i32 %1420, 40
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = add nuw nsw i32 %1423, 12
  %1429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = add nuw nsw i32 %1423, 24
  %1434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = add nuw nsw i32 %1423, 36
  %1439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = fsub fast float %1404, %1425
  %1442 = fsub fast float %1405, %1426
  %1443 = fsub fast float %1406, %1427
  %1444 = fmul fast float %1440, %1441
  %1445 = fmul fast float %1440, %1442
  %1446 = fmul fast float %1440, %1443
  %1447 = call float @dx.op.unary.f32(i32 27, float %1444)  ; Round_ni(value)
  %1448 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1449 = call float @dx.op.unary.f32(i32 27, float %1446)  ; Round_ni(value)
  %1450 = fadd fast float %1447, 5.000000e-01
  %1451 = fadd fast float %1448, 5.000000e-01
  %1452 = fadd fast float %1449, 5.000000e-01
  %1453 = fmul fast float %1450, %1430
  %1454 = fmul fast float %1451, %1431
  %1455 = fmul fast float %1452, %1432
  %1456 = shl i32 %57, 2
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1462 = call float @dx.op.unary.f32(i32 22, float %1454)  ; Frc(value)
  %1463 = call float @dx.op.unary.f32(i32 22, float %1455)  ; Frc(value)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1460, %dx.types.Handle %51, float %1461, float %1462, float %1463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = fmul fast float %1465, 1.023000e+03
  %1469 = fmul fast float %1466, 1.023000e+03
  %1470 = fmul fast float %1467, 1.023000e+03
  %1471 = fadd fast float %1468, 5.000000e-01
  %1472 = fadd fast float %1469, 5.000000e-01
  %1473 = fadd fast float %1470, 5.000000e-01
  %1474 = call float @dx.op.unary.f32(i32 27, float %1471)  ; Round_ni(value)
  %1475 = call float @dx.op.unary.f32(i32 27, float %1472)  ; Round_ni(value)
  %1476 = call float @dx.op.unary.f32(i32 27, float %1473)  ; Round_ni(value)
  %1477 = fsub fast float %1444, %1447
  %1478 = fsub fast float %1445, %1448
  %1479 = fsub fast float %1446, %1449
  %1480 = fmul fast float %1477, 7.500000e-01
  %1481 = fmul fast float %1478, 7.500000e-01
  %1482 = fmul fast float %1479, 7.500000e-01
  %1483 = fadd fast float %1447, 1.250000e-01
  %1484 = fadd fast float %1483, %1480
  %1485 = fadd fast float %1484, %1474
  %1486 = fadd fast float %1448, 1.250000e-01
  %1487 = fadd fast float %1486, %1481
  %1488 = fadd fast float %1487, %1475
  %1489 = fadd fast float %1449, 1.250000e-01
  %1490 = fadd fast float %1489, %1482
  %1491 = fadd fast float %1490, %1476
  %1492 = fmul fast float %1485, %1435
  %1493 = fmul fast float %1488, %1436
  %1494 = fmul fast float %1491, %1437
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1498, %dx.types.Handle %49, float %1492, float %1493, float %1494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  br label %1501

; <label>:1501                                    ; preds = %1422, %1411
  %1502 = phi float [ %1500, %1422 ], [ -1.000000e+00, %1411 ]
  %1503 = fadd fast float %1502, %1409
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  br label %1505

; <label>:1505                                    ; preds = %1501, %1399
  %1506 = phi float [ %1504, %1501 ], [ %1409, %1399 ]
  %1507 = fmul fast float %1506, %493
  br label %1508

; <label>:1508                                    ; preds = %1505, %1394
  %1509 = phi float [ %1507, %1505 ], [ %493, %1394 ]
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 256
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1560, label %1514

; <label>:1514                                    ; preds = %1508
  %1515 = add i32 %56, 492
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = add i32 %1517, 0
  %1519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1519, %dx.types.Handle %99, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = add i32 %56, 116
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = shl i32 %1524, 4
  %1526 = and i32 %1525, 32752
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = lshr i32 %1524, 7
  %1529 = and i32 %1528, 32752
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = fsub fast float 1.000000e+00, %1509
  %1532 = call float @dx.op.binary.f32(i32 35, float %1531, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1533 = bitcast float %1509 to i32
  %1534 = sitofp i32 %1533 to float
  %1535 = fadd fast float %1534, 0xC1CFBF8940000000
  %1536 = fmul fast float %1530, %1535
  %1537 = fadd fast float %1536, 0x41CFBF8940000000
  %1538 = fptosi float %1537 to i32
  %1539 = bitcast i32 %1538 to float
  %1540 = bitcast float %1532 to i32
  %1541 = sitofp i32 %1540 to float
  %1542 = fadd fast float %1541, 0xC1CFBF8940000000
  %1543 = fmul fast float %1542, %1530
  %1544 = fadd fast float %1543, 0x41CFBF8940000000
  %1545 = fptosi float %1544 to i32
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1539, %1527
  %1548 = fmul fast float %1546, %1527
  %1549 = fsub fast float %1532, %1547
  %1550 = fadd fast float %1548, %1532
  %1551 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1552 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1553 = fsub fast float %1521, %1551
  %1554 = fsub fast float %1552, %1551
  %1555 = bitcast float %1554 to i32
  %1556 = sub nsw i32 2129859010, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1557, %1553
  %1559 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  br label %1560

; <label>:1560                                    ; preds = %1514, %1508
  %1561 = phi float [ %1559, %1514 ], [ %1509, %1508 ]
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 128
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1582, label %1566

; <label>:1566                                    ; preds = %1560
  %1567 = add i32 %56, 476
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %1569, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1571, %dx.types.Handle %99, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 524288
  %1577 = icmp ne i32 %1576, 0
  %1578 = fcmp fast ogt float %1573, 0x3FE0101020000000
  %1579 = select i1 %1578, float 1.000000e+00, float 0.000000e+00
  %1580 = select i1 %1577, float %1579, float %1573
  %1581 = fmul fast float %1580, %1561
  br label %1582

; <label>:1582                                    ; preds = %1566, %1560
  %1583 = phi float [ %1581, %1566 ], [ %1561, %1560 ]
  %1584 = fcmp fast ult float %1583, 0x3F70101020000000
  br i1 %1584, label %2323, label %1585

; <label>:1585                                    ; preds = %1582
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 16
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1788, label %1590

; <label>:1590                                    ; preds = %1585
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = add i32 %56, 428
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %98, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1602 = extractvalue %dx.types.ResRet.f32 %1598, 3
  %1603 = and i32 %1592, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = lshr i32 %1592, 8
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1602, %1604
  %1609 = fadd fast float %1608, %1607
  %1610 = fmul fast float %1609, 0x3F70101000000000
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 512
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1623, label %1615

; <label>:1615                                    ; preds = %1590
  %1616 = add i32 %56, 512
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = add i32 %1618, 0
  %1620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1620, %dx.types.Handle %99, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  br label %1623

; <label>:1623                                    ; preds = %1615, %1590
  %1624 = phi float [ %1622, %1615 ], [ 1.000000e+00, %1590 ]
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 33554432
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1735, label %1629

; <label>:1629                                    ; preds = %1623
  %1630 = add i32 %56, 240
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 65535
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = lshr i32 %1632, 16
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = add i32 %56, 244
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 65535
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = lshr i32 %1643, 24
  %1645 = uitofp i32 %1644 to float
  %1646 = fmul fast float %1645, 0x3F70101020000000
  %1647 = and i32 %1643, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = fmul fast float %1648, 0x3F70101020000000
  %1650 = lshr i32 %1643, 8
  %1651 = and i32 %1650, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = lshr i32 %1643, 16
  %1655 = and i32 %1654, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = fmul fast float %1656, 0x3F70101020000000
  %1658 = add i32 %56, 236
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = lshr i32 %1660, 24
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1662, 0x3F70101020000000
  %1664 = and i32 %1660, 255
  %1665 = uitofp i32 %1664 to float
  %1666 = fmul fast float %1665, 0x3F70101020000000
  %1667 = lshr i32 %1660, 8
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = lshr i32 %1660, 16
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F70101020000000
  %1675 = bitcast float %1599 to i32
  %1676 = ashr i32 %1675, 1
  %1677 = sub nsw i32 1597463174, %1676
  %1678 = bitcast i32 %1677 to float
  %1679 = fmul fast float %1599, 5.000000e-01
  %1680 = fmul fast float %1678, %1678
  %1681 = fmul fast float %1680, %1679
  %1682 = fsub fast float 1.500000e+00, %1681
  %1683 = fmul fast float %1678, %1599
  %1684 = fmul fast float %1683, %1682
  %1685 = bitcast float %1600 to i32
  %1686 = ashr i32 %1685, 1
  %1687 = sub nsw i32 1597463174, %1686
  %1688 = bitcast i32 %1687 to float
  %1689 = fmul fast float %1600, 5.000000e-01
  %1690 = fmul fast float %1688, %1688
  %1691 = fmul fast float %1690, %1689
  %1692 = fsub fast float 1.500000e+00, %1691
  %1693 = fmul fast float %1688, %1600
  %1694 = fmul fast float %1693, %1692
  %1695 = bitcast float %1601 to i32
  %1696 = ashr i32 %1695, 1
  %1697 = sub nsw i32 1597463174, %1696
  %1698 = bitcast i32 %1697 to float
  %1699 = fmul fast float %1601, 5.000000e-01
  %1700 = fmul fast float %1698, %1698
  %1701 = fmul fast float %1700, %1699
  %1702 = fsub fast float 1.500000e+00, %1701
  %1703 = fmul fast float %1698, %1601
  %1704 = fmul fast float %1703, %1702
  %1705 = fsub fast float %1684, %1666
  %1706 = fsub fast float %1694, %1670
  %1707 = fsub fast float %1704, %1674
  %1708 = fmul fast float %1705, %1634
  %1709 = fmul fast float %1706, %1636
  %1710 = fmul fast float %1707, %1641
  %1711 = fadd fast float %1708, %1649
  %1712 = fadd fast float %1709, %1653
  %1713 = fadd fast float %1710, %1657
  %1714 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1715 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1717 = fmul fast float %1714, %1714
  %1718 = fmul fast float %1715, %1715
  %1719 = fmul fast float %1716, %1716
  %1720 = fsub fast float %1717, %1599
  %1721 = fsub fast float %1718, %1600
  %1722 = fsub fast float %1719, %1601
  %1723 = fmul fast float %1720, %1624
  %1724 = fmul fast float %1721, %1624
  %1725 = fmul fast float %1722, %1624
  %1726 = fadd fast float %1723, %1599
  %1727 = fadd fast float %1724, %1600
  %1728 = fadd fast float %1725, %1601
  %1729 = fadd fast float %1646, %1610
  %1730 = fsub fast float %1729, %1663
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fsub fast float %1731, %1610
  %1733 = fmul fast float %1732, %1624
  %1734 = fadd fast float %1733, %1610
  br label %1788

; <label>:1735                                    ; preds = %1623
  %1736 = and i32 %1626, 134217728
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1772, label %1738

; <label>:1738                                    ; preds = %1735
  %1739 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1740 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1741 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1742 = fadd fast float %1739, -5.000000e-01
  %1743 = fadd fast float %1740, -5.000000e-01
  %1744 = fadd fast float %1741, -5.000000e-01
  %1745 = fmul fast float %1742, %1624
  %1746 = fmul fast float %1743, %1624
  %1747 = fmul fast float %1744, %1624
  %1748 = fadd fast float %1745, 5.000000e-01
  %1749 = fadd fast float %1746, 5.000000e-01
  %1750 = fadd fast float %1747, 5.000000e-01
  %1751 = call float @dx.op.unary.f32(i32 24, float %1599)  ; Sqrt(value)
  %1752 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %1753 = call float @dx.op.unary.f32(i32 24, float %1601)  ; Sqrt(value)
  %1754 = fmul fast float %1748, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1751
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1751
  %1759 = fmul fast float %1749, 2.000000e+00
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = fmul fast float %1760, %1752
  %1762 = fadd fast float %1761, %1759
  %1763 = fmul fast float %1762, %1752
  %1764 = fmul fast float %1750, 2.000000e+00
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1765, %1753
  %1767 = fadd fast float %1766, %1764
  %1768 = fmul fast float %1767, %1753
  %1769 = fmul fast float %1758, %1758
  %1770 = fmul fast float %1763, %1763
  %1771 = fmul fast float %1768, %1768
  br label %1788

; <label>:1772                                    ; preds = %1735
  %1773 = fmul fast float %325, %325
  %1774 = fmul fast float %329, %329
  %1775 = fmul fast float %333, %333
  %1776 = fadd fast float %1773, -1.000000e+00
  %1777 = fadd fast float %1774, -1.000000e+00
  %1778 = fadd fast float %1775, -1.000000e+00
  %1779 = fmul fast float %1624, %1776
  %1780 = fmul fast float %1624, %1777
  %1781 = fmul fast float %1624, %1778
  %1782 = fadd fast float %1779, 1.000000e+00
  %1783 = fadd fast float %1780, 1.000000e+00
  %1784 = fadd fast float %1781, 1.000000e+00
  %1785 = fmul fast float %1782, %1599
  %1786 = fmul fast float %1783, %1600
  %1787 = fmul fast float %1784, %1601
  br label %1788

; <label>:1788                                    ; preds = %1772, %1738, %1629, %1585
  %1789 = phi float [ %1734, %1629 ], [ %1610, %1738 ], [ %1610, %1772 ], [ 0x3FA23C0BE0000000, %1585 ]
  %1790 = phi float [ %1726, %1629 ], [ %1769, %1738 ], [ %1785, %1772 ], [ 1.000000e+00, %1585 ]
  %1791 = phi float [ %1727, %1629 ], [ %1770, %1738 ], [ %1786, %1772 ], [ 1.000000e+00, %1585 ]
  %1792 = phi float [ %1728, %1629 ], [ %1771, %1738 ], [ %1787, %1772 ], [ 1.000000e+00, %1585 ]
  %1793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.i32 %1793, 1
  %1795 = and i32 %1794, 1
  %1796 = icmp ne i32 %1795, 0
  %1797 = add i32 %56, 356
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 32
  %1801 = icmp ne i32 %1800, 0
  %1802 = and i1 %1796, %1801
  %1803 = select i1 %1802, float 1.000000e+00, float %1790
  %1804 = select i1 %1802, float 0x3FD3333340000000, float %1791
  %1805 = select i1 %1802, float 0x3FD3333340000000, float %1792
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 32
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1882, label %1810

; <label>:1810                                    ; preds = %1788
  %1811 = add i32 %56, 108
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = add i32 %56, 444
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = add i32 %1816, 0
  %1818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1818, %dx.types.Handle %98, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.ResRet.f32 %1819, 2
  %1823 = extractvalue %dx.types.ResRet.f32 %1819, 3
  %1824 = and i32 %1813, 255
  %1825 = uitofp i32 %1824 to float
  %1826 = lshr i32 %1813, 8
  %1827 = and i32 %1826, 255
  %1828 = uitofp i32 %1827 to float
  %1829 = lshr i32 %1813, 16
  %1830 = and i32 %1829, 255
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1831, 0x3F70101000000000
  %1833 = fmul fast float %1820, %1825
  %1834 = fadd fast float %1833, %1828
  %1835 = fmul fast float %1834, 0x3F70101000000000
  %1836 = fadd fast float %1821, -5.000000e-01
  %1837 = fadd fast float %1823, -5.000000e-01
  %1838 = fmul fast float %1836, %1832
  %1839 = fmul fast float %1837, %1832
  %1840 = fadd fast float %1838, 5.000000e-01
  %1841 = fadd fast float %1839, 5.000000e-01
  %1842 = fmul fast float %1840, 2.000000e+00
  %1843 = fadd fast float %1842, -1.000000e+00
  %1844 = fmul fast float %1841, 2.000000e+00
  %1845 = fadd fast float %1844, -1.000000e+00
  %1846 = fadd fast float %1843, %1845
  %1847 = fmul fast float %1846, 5.000000e-01
  %1848 = fsub fast float %1843, %1845
  %1849 = fmul fast float %1848, 5.000000e-01
  %1850 = call float @dx.op.unary.f32(i32 6, float %1847)  ; FAbs(value)
  %1851 = fsub fast float 1.000000e+00, %1850
  %1852 = call float @dx.op.unary.f32(i32 6, float %1849)  ; FAbs(value)
  %1853 = fsub fast float %1851, %1852
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1847, float %1849, float %1853, float %1847, float %1849, float %1853)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = call float @dx.op.unary.f32(i32 25, float %1854)  ; Rsqrt(value)
  %1856 = fmul fast float %1847, %1855
  %1857 = fmul fast float %1849, %1855
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = and i32 %1859, 67108864
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1878, label %1862

; <label>:1862                                    ; preds = %1810
  %1863 = add i32 %56, 296
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 65535
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 65535
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = lshr i32 %1865, 16
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = fsub fast float %1835, %1873
  %1875 = fmul fast float %1874, %1867
  %1876 = fadd fast float %1875, %1871
  %1877 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  br label %1878

; <label>:1878                                    ; preds = %1862, %1810
  %1879 = phi float [ %1877, %1862 ], [ %1835, %1810 ]
  %1880 = call float @dx.op.dot2.f32(i32 54, float %1856, float %1857, float %1299, float %1300)  ; Dot2(ax,ay,bx,by)
  %1881 = call float @dx.op.dot2.f32(i32 54, float %1856, float %1857, float %1301, float %1302)  ; Dot2(ax,ay,bx,by)
  br label %1882

; <label>:1882                                    ; preds = %1878, %1788
  %1883 = phi float [ %1879, %1878 ], [ 0x3FD6666660000000, %1788 ]
  %1884 = phi float [ %1880, %1878 ], [ 0.000000e+00, %1788 ]
  %1885 = phi float [ %1881, %1878 ], [ 0.000000e+00, %1788 ]
  %1886 = phi float [ %1822, %1878 ], [ 1.000000e+00, %1788 ]
  %1887 = add i32 %56, 176
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = lshr i32 %1889, 22
  %1891 = shl nuw nsw i32 %1890, 5
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = and i32 %1894, 64
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1930, label %1897

; <label>:1897                                    ; preds = %1882
  %1898 = add i32 %56, 460
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = add i32 %1900, 0
  %1902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 131072
  %1906 = icmp eq i32 %1905, 0
  %1907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1902, %dx.types.Handle %98, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.ResRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.ResRet.f32 %1907, 2
  %1911 = fmul fast float %1908, %313
  %1912 = fmul fast float %1909, %316
  %1913 = fmul fast float %1910, %319
  br i1 %1906, label %1920, label %1914

; <label>:1914                                    ; preds = %1897
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1917 = fmul fast float %1916, %1911
  %1918 = fmul fast float %1916, %1912
  %1919 = fmul fast float %1916, %1913
  br label %1920

; <label>:1920                                    ; preds = %1914, %1897
  %1921 = phi float [ %1917, %1914 ], [ %1911, %1897 ]
  %1922 = phi float [ %1918, %1914 ], [ %1912, %1897 ]
  %1923 = phi float [ %1919, %1914 ], [ %1913, %1897 ]
  %1924 = fmul fast float %1921, %1892
  %1925 = select i1 %251, float %1924, float %1921
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1925, float %1922, float %1923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = select i1 %251, float 0.000000e+00, float %1921
  %1928 = select i1 %251, float %1926, float %1922
  %1929 = select i1 %251, float 0.000000e+00, float %1923
  br label %1930

; <label>:1930                                    ; preds = %1920, %1882
  %1931 = phi float [ %1927, %1920 ], [ 0.000000e+00, %1882 ]
  %1932 = phi float [ %1928, %1920 ], [ 0.000000e+00, %1882 ]
  %1933 = phi float [ %1929, %1920 ], [ 0.000000e+00, %1882 ]
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = and i32 %1935, 1024
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1968, label %1938

; <label>:1938                                    ; preds = %1930
  %1939 = add i32 %56, 168
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = and i32 %1941, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = lshr i32 %1941, 8
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3F70101020000000
  %1949 = lshr i32 %1941, 16
  %1950 = and i32 %1949, 255
  %1951 = uitofp i32 %1950 to float
  %1952 = fmul fast float %1951, 0x3F70101020000000
  %1953 = fmul fast float %1944, %1944
  %1954 = fmul fast float %1948, %1948
  %1955 = fmul fast float %1952, %1952
  %1956 = add i32 %56, 528
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1960, %dx.types.Handle %99, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1965 = fmul fast float %1953, %1962
  %1966 = fmul fast float %1954, %1963
  %1967 = fmul fast float %1955, %1964
  br label %1968

; <label>:1968                                    ; preds = %1938, %1930
  %1969 = phi float [ %1965, %1938 ], [ 0.000000e+00, %1930 ]
  %1970 = phi float [ %1966, %1938 ], [ 0.000000e+00, %1930 ]
  %1971 = phi float [ %1967, %1938 ], [ 0.000000e+00, %1930 ]
  %1972 = fcmp fast ogt float %1969, 0.000000e+00
  %1973 = fcmp fast ogt float %1970, 0.000000e+00
  %1974 = fcmp fast ogt float %1971, 0.000000e+00
  %1975 = call float @dx.op.unary.f32(i32 23, float %1969)  ; Log(value)
  %1976 = call float @dx.op.unary.f32(i32 23, float %1970)  ; Log(value)
  %1977 = call float @dx.op.unary.f32(i32 23, float %1971)  ; Log(value)
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = lshr i32 %1979, 7
  %1981 = and i32 %1980, 32752
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = fmul fast float %1975, 0xBFE62E4300000000
  %1984 = fmul fast float %1983, %1982
  %1985 = fmul fast float %1976, 0xBFE62E4300000000
  %1986 = fmul fast float %1985, %1982
  %1987 = fmul fast float %1977, 0xBFE62E4300000000
  %1988 = fmul fast float %1987, %1982
  %1989 = select i1 %1972, float %1984, float 1.270000e+02
  %1990 = select i1 %1973, float %1986, float 1.270000e+02
  %1991 = select i1 %1974, float %1988, float 1.270000e+02
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = and i32 %1993, 10240
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2040, label %1996

; <label>:1996                                    ; preds = %1968
  %1997 = add i32 %56, 544
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %1999, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2001, %dx.types.Handle %99, float %1395, float %1396, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 3
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 1048576
  %2008 = icmp ne i32 %2007, 0
  %2009 = and i32 %2006, 8192
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2026, label %2011

; <label>:2011                                    ; preds = %1996
  %2012 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2013 = select i1 %2008, float %2012, float %2003
  %2014 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2015 = select i1 %2008, float %2014, float %2003
  %2016 = add i32 %56, 112
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 16
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2021, 0x3F80101020000000
  %2023 = fmul fast float %2022, %2015
  %2024 = fmul fast float %2022, %2003
  %2025 = fmul fast float %2022, %2013
  br label %2026

; <label>:2026                                    ; preds = %2011, %1996
  %2027 = phi float [ %2023, %2011 ], [ 0.000000e+00, %1996 ]
  %2028 = phi float [ %2024, %2011 ], [ 0.000000e+00, %1996 ]
  %2029 = phi float [ %2025, %2011 ], [ 0.000000e+00, %1996 ]
  %2030 = and i32 %2006, 2048
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2040, label %2032

; <label>:2032                                    ; preds = %2026
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = shl i32 %2034, 4
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = fmul fast float %2037, %2004
  %2039 = call float @dx.op.binary.f32(i32 35, float %2038, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2040

; <label>:2040                                    ; preds = %2032, %2026, %1968
  %2041 = phi float [ %2027, %2032 ], [ %2027, %2026 ], [ 0.000000e+00, %1968 ]
  %2042 = phi float [ %2028, %2032 ], [ %2028, %2026 ], [ 0.000000e+00, %1968 ]
  %2043 = phi float [ %2029, %2032 ], [ %2029, %2026 ], [ 0.000000e+00, %1968 ]
  %2044 = phi float [ %2039, %2032 ], [ 0x3F70101020000000, %2026 ], [ 0x3F70101020000000, %1968 ]
  %2045 = add i32 %56, 112
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 255
  %2049 = uitofp i32 %2048 to float
  %2050 = lshr i32 %2047, 8
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1804, float %1805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2054 = fmul fast float %2052, %2053
  %2055 = fadd fast float %2054, %2049
  %2056 = fmul fast float %2055, 0x3F70101020000000
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  br i1 %1287, label %2058, label %2093

; <label>:2058                                    ; preds = %2040
  %2059 = fmul fast float %2044, 2.000000e+00
  %2060 = fcmp fast olt float %1989, 1.270000e+02
  %2061 = fcmp fast olt float %1990, 1.270000e+02
  %2062 = fcmp fast olt float %1991, 1.270000e+02
  %2063 = fmul fast float %1989, 0xBFF7154760000000
  %2064 = fmul fast float %2063, %2059
  %2065 = fmul fast float %1990, 0xBFF7154760000000
  %2066 = fmul fast float %2065, %2059
  %2067 = fmul fast float %1991, 0xBFF7154760000000
  %2068 = fmul fast float %2067, %2059
  %2069 = call float @dx.op.unary.f32(i32 21, float %2064)  ; Exp(value)
  %2070 = call float @dx.op.unary.f32(i32 21, float %2066)  ; Exp(value)
  %2071 = call float @dx.op.unary.f32(i32 21, float %2068)  ; Exp(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2073 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2075 = fadd fast float %2072, -1.000000e+00
  %2076 = select i1 %2060, float %2075, float -1.000000e+00
  %2077 = fadd fast float %2073, -1.000000e+00
  %2078 = select i1 %2061, float %2077, float -1.000000e+00
  %2079 = fadd fast float %2074, -1.000000e+00
  %2080 = select i1 %2062, float %2079, float -1.000000e+00
  %2081 = fmul fast float %2076, %1583
  %2082 = fmul fast float %2078, %1583
  %2083 = fmul fast float %2080, %1583
  %2084 = fadd fast float %2081, 1.000000e+00
  %2085 = fadd fast float %2082, 1.000000e+00
  %2086 = fadd fast float %2083, 1.000000e+00
  %2087 = fmul fast float %2084, %1268
  %2088 = fmul fast float %2085, %1269
  %2089 = fmul fast float %2086, %1270
  %2090 = fmul fast float %2084, %1271
  %2091 = fmul fast float %2085, %1272
  %2092 = fmul fast float %2086, %1273
  br label %2093

; <label>:2093                                    ; preds = %2058, %2040
  %2094 = phi float [ %2087, %2058 ], [ %1268, %2040 ]
  %2095 = phi float [ %2088, %2058 ], [ %1269, %2040 ]
  %2096 = phi float [ %2089, %2058 ], [ %1270, %2040 ]
  %2097 = phi float [ %2090, %2058 ], [ %1271, %2040 ]
  %2098 = phi float [ %2091, %2058 ], [ %1272, %2040 ]
  %2099 = phi float [ %2092, %2058 ], [ %1273, %2040 ]
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = and i32 %2101, 3
  %2103 = icmp eq i32 %2102, 3
  br i1 %2103, label %2182, label %2104

; <label>:2104                                    ; preds = %2093
  %2105 = and i32 %2101, 16
  %2106 = icmp ne i32 %2105, 0
  %2107 = select i1 %2106, float %1583, float 0.000000e+00
  %2108 = icmp eq i32 %2102, 0
  br i1 %2108, label %2109, label %2137

; <label>:2109                                    ; preds = %2104
  %2110 = and i32 %2101, 64
  %2111 = icmp ne i32 %2110, 0
  %2112 = select i1 %2111, float %1583, float 0.000000e+00
  %2113 = fsub fast float %1803, %2094
  %2114 = fsub fast float %1804, %2095
  %2115 = fsub fast float %1805, %2096
  %2116 = fmul fast float %2107, %2113
  %2117 = fmul fast float %2107, %2114
  %2118 = fmul fast float %2107, %2115
  %2119 = fadd fast float %2116, %2094
  %2120 = fadd fast float %2117, %2095
  %2121 = fadd fast float %2118, %2096
  %2122 = fsub fast float %1789, %1280
  %2123 = fmul fast float %2107, %2122
  %2124 = fadd fast float %2123, %1280
  %2125 = fsub fast float %1931, %2097
  %2126 = fsub fast float %1932, %2098
  %2127 = fsub fast float %1933, %2099
  %2128 = fmul fast float %2112, %2125
  %2129 = fmul fast float %2112, %2126
  %2130 = fmul fast float %2112, %2127
  %2131 = fadd fast float %2128, %2097
  %2132 = fadd fast float %2129, %2098
  %2133 = fadd fast float %2130, %2099
  %2134 = fsub fast float %2057, %1285
  %2135 = fmul fast float %2107, %2134
  %2136 = fadd fast float %2135, %1285
  br label %2182

; <label>:2137                                    ; preds = %2104
  %2138 = icmp eq i32 %2102, 1
  br i1 %2138, label %2139, label %2152

; <label>:2139                                    ; preds = %2137
  %2140 = fadd fast float %1803, -1.000000e+00
  %2141 = fadd fast float %1804, -1.000000e+00
  %2142 = fadd fast float %1805, -1.000000e+00
  %2143 = fmul fast float %2107, %2140
  %2144 = fmul fast float %2107, %2141
  %2145 = fmul fast float %2107, %2142
  %2146 = fadd fast float %2143, 1.000000e+00
  %2147 = fadd fast float %2144, 1.000000e+00
  %2148 = fadd fast float %2145, 1.000000e+00
  %2149 = fmul fast float %2146, %2094
  %2150 = fmul fast float %2147, %2095
  %2151 = fmul fast float %2148, %2096
  br label %2182

; <label>:2152                                    ; preds = %2137
  %2153 = icmp eq i32 %2102, 2
  br i1 %2153, label %2154, label %2182

; <label>:2154                                    ; preds = %2152
  %2155 = call float @dx.op.unary.f32(i32 24, float %1803)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %1804)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %1805)  ; Sqrt(value)
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fadd fast float %2157, -5.000000e-01
  %2161 = fmul fast float %2158, %2107
  %2162 = fmul fast float %2159, %2107
  %2163 = fmul fast float %2160, %2107
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fadd fast float %2163, 5.000000e-01
  %2167 = fmul fast float %2164, 2.000000e+00
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = fmul fast float %2168, %2094
  %2170 = fadd fast float %2169, %2167
  %2171 = fmul fast float %2170, %2094
  %2172 = fmul fast float %2165, 2.000000e+00
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fmul fast float %2173, %2095
  %2175 = fadd fast float %2174, %2172
  %2176 = fmul fast float %2175, %2095
  %2177 = fmul fast float %2166, 2.000000e+00
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = fmul fast float %2178, %2096
  %2180 = fadd fast float %2179, %2177
  %2181 = fmul fast float %2180, %2096
  br label %2182

; <label>:2182                                    ; preds = %2154, %2152, %2139, %2109, %2093
  %2183 = phi float [ %2094, %2093 ], [ %2171, %2154 ], [ %2094, %2152 ], [ %2149, %2139 ], [ %2119, %2109 ]
  %2184 = phi float [ %2095, %2093 ], [ %2176, %2154 ], [ %2095, %2152 ], [ %2150, %2139 ], [ %2120, %2109 ]
  %2185 = phi float [ %2096, %2093 ], [ %2181, %2154 ], [ %2096, %2152 ], [ %2151, %2139 ], [ %2121, %2109 ]
  %2186 = phi float [ %2097, %2093 ], [ %2097, %2154 ], [ %2097, %2152 ], [ %2097, %2139 ], [ %2131, %2109 ]
  %2187 = phi float [ %2098, %2093 ], [ %2098, %2154 ], [ %2098, %2152 ], [ %2098, %2139 ], [ %2132, %2109 ]
  %2188 = phi float [ %2099, %2093 ], [ %2099, %2154 ], [ %2099, %2152 ], [ %2099, %2139 ], [ %2133, %2109 ]
  %2189 = phi float [ %1280, %2093 ], [ %1280, %2154 ], [ %1280, %2152 ], [ %1280, %2139 ], [ %2124, %2109 ]
  %2190 = phi float [ %1285, %2093 ], [ %1285, %2154 ], [ %1285, %2152 ], [ %1285, %2139 ], [ %2136, %2109 ]
  %2191 = and i32 %2101, 12
  %2192 = icmp eq i32 %2191, 12
  br i1 %2192, label %2323, label %2193

; <label>:2193                                    ; preds = %2182
  %2194 = and i32 %2101, 2097184
  %2195 = icmp eq i32 %2194, 2097184
  %2196 = select i1 %2195, float %1583, float 0.000000e+00
  %2197 = and i32 %2101, 4194336
  %2198 = icmp eq i32 %2197, 4194336
  %2199 = select i1 %2198, float %1583, float 0.000000e+00
  %2200 = and i32 %2101, 8388640
  %2201 = icmp eq i32 %2200, 8388640
  %2202 = select i1 %2201, float %1583, float 0.000000e+00
  %2203 = and i32 %2101, 1024
  %2204 = icmp ne i32 %2203, 0
  %2205 = select i1 %2204, float %1583, float 0.000000e+00
  %2206 = and i32 %2101, 2048
  %2207 = icmp ne i32 %2206, 0
  %2208 = select i1 %2207, float %1583, float 0.000000e+00
  %2209 = and i32 %2101, 8192
  %2210 = icmp ne i32 %2209, 0
  %2211 = select i1 %2210, float %1583, float 0.000000e+00
  %2212 = icmp eq i32 %2191, 0
  br i1 %2212, label %2213, label %2247

; <label>:2213                                    ; preds = %2193
  %2214 = fsub fast float %1884, %1266
  %2215 = fsub fast float %1885, %1267
  %2216 = fmul fast float %2196, %2214
  %2217 = fmul fast float %2196, %2215
  %2218 = fadd fast float %2216, %1266
  %2219 = fadd fast float %2217, %1267
  %2220 = fsub fast float %1886, %1283
  %2221 = fmul fast float %2199, %2220
  %2222 = fadd fast float %2221, %1283
  %2223 = fsub fast float %1883, %1282
  %2224 = fmul fast float %2202, %2223
  %2225 = fadd fast float %2224, %1282
  %2226 = fsub fast float %1989, %1277
  %2227 = fsub fast float %1990, %1278
  %2228 = fsub fast float %1991, %1279
  %2229 = fmul fast float %2205, %2226
  %2230 = fmul fast float %2205, %2227
  %2231 = fmul fast float %2205, %2228
  %2232 = fadd fast float %2229, %1277
  %2233 = fadd fast float %2230, %1278
  %2234 = fadd fast float %2231, %1279
  %2235 = fsub fast float %2044, %1284
  %2236 = fmul fast float %2208, %2235
  %2237 = fadd fast float %2236, %1284
  %2238 = fsub fast float %2041, %1274
  %2239 = fsub fast float %2042, %1275
  %2240 = fsub fast float %2043, %1276
  %2241 = fmul fast float %2211, %2238
  %2242 = fmul fast float %2211, %2239
  %2243 = fmul fast float %2211, %2240
  %2244 = fadd fast float %2241, %1274
  %2245 = fadd fast float %2242, %1275
  %2246 = fadd fast float %2243, %1276
  br label %2323

; <label>:2247                                    ; preds = %2193
  %2248 = icmp eq i32 %2191, 4
  br i1 %2248, label %2249, label %2295

; <label>:2249                                    ; preds = %2247
  %2250 = fmul fast float %2196, %1884
  %2251 = fmul fast float %2196, %1885
  %2252 = fadd fast float %2250, %1266
  %2253 = fadd fast float %2251, %1267
  %2254 = call float @dx.op.binary.f32(i32 36, float %1283, float %1886)  ; FMin(a,b)
  %2255 = fsub fast float %2254, %1283
  %2256 = fmul fast float %2255, %2199
  %2257 = fadd fast float %2256, %1283
  %2258 = fadd fast float %1883, %1282
  %2259 = fmul fast float %2258, 0x3FF337FAE0000000
  %2260 = fmul fast float %1282, %1282
  %2261 = fmul fast float %1883, %1883
  %2262 = fadd fast float %2261, %2260
  %2263 = fmul fast float %2262, 0x3FE5152B00000000
  %2264 = fmul fast float %1282, 0xBFCC1F85E0000000
  %2265 = fmul fast float %2264, %1883
  %2266 = fadd fast float %2265, 0xBFE1363700000000
  %2267 = fadd fast float %2266, %2259
  %2268 = fsub fast float %2267, %2263
  %2269 = fmul fast float %2258, 0x3FBA6F0D00000000
  %2270 = fmul fast float %2262, 0x3FD0432880000000
  %2271 = fmul fast float %1282, 0xBFEF110800000000
  %2272 = fmul fast float %2271, %1883
  %2273 = fadd fast float %2272, 1.000000e+00
  %2274 = fsub fast float %2273, %2269
  %2275 = fadd fast float %2274, %2270
  %2276 = fdiv fast float %2268, %2275
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2277, %1282
  %2279 = fmul fast float %2278, %2202
  %2280 = fadd fast float %2279, %1282
  %2281 = fmul fast float %2205, %1989
  %2282 = fmul fast float %2205, %1990
  %2283 = fmul fast float %2205, %1991
  %2284 = fadd fast float %2281, %1277
  %2285 = fadd fast float %2282, %1278
  %2286 = fadd fast float %2283, %1279
  %2287 = fmul fast float %2208, %2044
  %2288 = fadd fast float %2287, %1284
  %2289 = fmul fast float %2211, %2041
  %2290 = fmul fast float %2211, %2042
  %2291 = fmul fast float %2211, %2043
  %2292 = fadd fast float %2289, %1274
  %2293 = fadd fast float %2290, %1275
  %2294 = fadd fast float %2291, %1276
  br label %2323

; <label>:2295                                    ; preds = %2247
  %2296 = icmp eq i32 %2191, 8
  br i1 %2296, label %2297, label %2323

; <label>:2297                                    ; preds = %2295
  %2298 = fmul fast float %2196, %1884
  %2299 = fmul fast float %2196, %1885
  %2300 = fadd fast float %2298, %1266
  %2301 = fadd fast float %2299, %1267
  %2302 = call float @dx.op.binary.f32(i32 36, float %1283, float %1886)  ; FMin(a,b)
  %2303 = fsub fast float %2302, %1283
  %2304 = fmul fast float %2303, %2199
  %2305 = fadd fast float %2304, %1283
  %2306 = fsub fast float %1883, %1282
  %2307 = fmul fast float %2202, %2306
  %2308 = fadd fast float %2307, %1282
  %2309 = fmul fast float %2205, %1989
  %2310 = fmul fast float %2205, %1990
  %2311 = fmul fast float %2205, %1991
  %2312 = fadd fast float %2309, %1277
  %2313 = fadd fast float %2310, %1278
  %2314 = fadd fast float %2311, %1279
  %2315 = fmul fast float %2208, %2044
  %2316 = fadd fast float %2315, %1284
  %2317 = fmul fast float %2211, %2041
  %2318 = fmul fast float %2211, %2042
  %2319 = fmul fast float %2211, %2043
  %2320 = fadd fast float %2317, %1274
  %2321 = fadd fast float %2318, %1275
  %2322 = fadd fast float %2319, %1276
  br label %2323

; <label>:2323                                    ; preds = %2297, %2295, %2249, %2213, %2182, %1582, %1286, %1265
  %2324 = phi float [ %1266, %2182 ], [ %1266, %1582 ], [ %1266, %1265 ], [ %2300, %2297 ], [ %1266, %2295 ], [ %2252, %2249 ], [ %2218, %2213 ], [ %1266, %1286 ]
  %2325 = phi float [ %1267, %2182 ], [ %1267, %1582 ], [ %1267, %1265 ], [ %2301, %2297 ], [ %1267, %2295 ], [ %2253, %2249 ], [ %2219, %2213 ], [ %1267, %1286 ]
  %2326 = phi float [ %2183, %2182 ], [ %1268, %1582 ], [ %1268, %1265 ], [ %2183, %2297 ], [ %2183, %2295 ], [ %2183, %2249 ], [ %2183, %2213 ], [ %1268, %1286 ]
  %2327 = phi float [ %2184, %2182 ], [ %1269, %1582 ], [ %1269, %1265 ], [ %2184, %2297 ], [ %2184, %2295 ], [ %2184, %2249 ], [ %2184, %2213 ], [ %1269, %1286 ]
  %2328 = phi float [ %2185, %2182 ], [ %1270, %1582 ], [ %1270, %1265 ], [ %2185, %2297 ], [ %2185, %2295 ], [ %2185, %2249 ], [ %2185, %2213 ], [ %1270, %1286 ]
  %2329 = phi float [ %2186, %2182 ], [ %1271, %1582 ], [ %1271, %1265 ], [ %2186, %2297 ], [ %2186, %2295 ], [ %2186, %2249 ], [ %2186, %2213 ], [ %1271, %1286 ]
  %2330 = phi float [ %2187, %2182 ], [ %1272, %1582 ], [ %1272, %1265 ], [ %2187, %2297 ], [ %2187, %2295 ], [ %2187, %2249 ], [ %2187, %2213 ], [ %1272, %1286 ]
  %2331 = phi float [ %2188, %2182 ], [ %1273, %1582 ], [ %1273, %1265 ], [ %2188, %2297 ], [ %2188, %2295 ], [ %2188, %2249 ], [ %2188, %2213 ], [ %1273, %1286 ]
  %2332 = phi float [ %1274, %2182 ], [ %1274, %1582 ], [ %1274, %1265 ], [ %2320, %2297 ], [ %1274, %2295 ], [ %2292, %2249 ], [ %2244, %2213 ], [ %1274, %1286 ]
  %2333 = phi float [ %1275, %2182 ], [ %1275, %1582 ], [ %1275, %1265 ], [ %2321, %2297 ], [ %1275, %2295 ], [ %2293, %2249 ], [ %2245, %2213 ], [ %1275, %1286 ]
  %2334 = phi float [ %1276, %2182 ], [ %1276, %1582 ], [ %1276, %1265 ], [ %2322, %2297 ], [ %1276, %2295 ], [ %2294, %2249 ], [ %2246, %2213 ], [ %1276, %1286 ]
  %2335 = phi float [ %1277, %2182 ], [ %1277, %1582 ], [ %1277, %1265 ], [ %2312, %2297 ], [ %1277, %2295 ], [ %2284, %2249 ], [ %2232, %2213 ], [ %1277, %1286 ]
  %2336 = phi float [ %1278, %2182 ], [ %1278, %1582 ], [ %1278, %1265 ], [ %2313, %2297 ], [ %1278, %2295 ], [ %2285, %2249 ], [ %2233, %2213 ], [ %1278, %1286 ]
  %2337 = phi float [ %1279, %2182 ], [ %1279, %1582 ], [ %1279, %1265 ], [ %2314, %2297 ], [ %1279, %2295 ], [ %2286, %2249 ], [ %2234, %2213 ], [ %1279, %1286 ]
  %2338 = phi float [ %2189, %2182 ], [ %1280, %1582 ], [ %1280, %1265 ], [ %2189, %2297 ], [ %2189, %2295 ], [ %2189, %2249 ], [ %2189, %2213 ], [ %1280, %1286 ]
  %2339 = phi float [ %1282, %2182 ], [ %1282, %1582 ], [ %1282, %1265 ], [ %2308, %2297 ], [ %1282, %2295 ], [ %2280, %2249 ], [ %2225, %2213 ], [ %1282, %1286 ]
  %2340 = phi float [ %1283, %2182 ], [ %1283, %1582 ], [ %1283, %1265 ], [ %2305, %2297 ], [ %1283, %2295 ], [ %2257, %2249 ], [ %2222, %2213 ], [ %1283, %1286 ]
  %2341 = phi float [ %1284, %2182 ], [ %1284, %1582 ], [ %1284, %1265 ], [ %2316, %2297 ], [ %1284, %2295 ], [ %2288, %2249 ], [ %2237, %2213 ], [ %1284, %1286 ]
  %2342 = phi float [ %2190, %2182 ], [ %1285, %1582 ], [ %1285, %1265 ], [ %2190, %2297 ], [ %2190, %2295 ], [ %2190, %2249 ], [ %2190, %2213 ], [ %1285, %1286 ]
  br i1 %440, label %3380, label %2343

; <label>:2343                                    ; preds = %2323
  %2344 = icmp ult i32 %496, 3
  %2345 = add i32 %56, 56
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = add i32 %56, 60
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = or i32 %2350, %2347
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %3380, label %2353

; <label>:2353                                    ; preds = %2343
  %2354 = and i32 %2347, 262144
  %2355 = icmp ne i32 %2354, 0
  %2356 = select i1 %2355, float %59, float 1.000000e+00
  %2357 = select i1 %2355, float %60, float 0.000000e+00
  %2358 = select i1 %2355, float %61, float 0.000000e+00
  %2359 = select i1 %2355, float %62, float 1.000000e+00
  %2360 = select i1 %2355, float %63, float %84
  %2361 = select i1 %2355, float %64, float %85
  %2362 = add i32 %56, 316
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = lshr i32 %2364, 16
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = fmul fast float %2366, 0x3F50624DE0000000
  %2368 = add i32 %56, 120
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 16
  %2372 = and i32 %2371, 255
  %2373 = lshr i32 %2370, 24
  %2374 = add i32 %56, 324
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 65535
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = lshr i32 %2376, 16
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = add i32 %56, 64
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = lshr i32 %2383, 22
  %2385 = shl nuw nsw i32 %2384, 5
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = shl i32 %2383, 4
  %2388 = and i32 %2387, 32752
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2383, 7
  %2391 = and i32 %2390, 32752
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 3
  %2395 = fmul fast float %2394, 1.000000e+03
  %2396 = fmul fast float %390, %2395
  %2397 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2398 = fadd fast float %2397, %380
  %2399 = fmul fast float %391, %2395
  %2400 = call float @dx.op.unary.f32(i32 22, float %2399)  ; Frc(value)
  %2401 = fadd fast float %2400, %382
  %2402 = fmul fast float %2367, %2395
  %2403 = call float @dx.op.unary.f32(i32 22, float %2402)  ; Frc(value)
  %2404 = fmul fast float %2403, 0x401921FB60000000
  %2405 = fadd fast float %2404, %2386
  %2406 = call float @dx.op.unary.f32(i32 13, float %2405)  ; Sin(value)
  %2407 = call float @dx.op.unary.f32(i32 12, float %2405)  ; Cos(value)
  %2408 = fsub fast float -0.000000e+00, %2406
  %2409 = fadd fast float %2360, -5.000000e-01
  %2410 = fadd fast float %2361, -5.000000e-01
  %2411 = fmul fast float %2378, %2409
  %2412 = fmul fast float %2380, %2410
  %2413 = fadd fast float %2411, 5.000000e-01
  %2414 = fadd fast float %2412, 5.000000e-01
  %2415 = fmul fast float %2389, %2413
  %2416 = fmul fast float %2392, %2414
  %2417 = fmul fast float %2407, %2415
  %2418 = call float @dx.op.tertiary.f32(i32 46, float %2408, float %2416, float %2417)  ; FMad(a,b,c)
  %2419 = fmul fast float %2406, %2415
  %2420 = call float @dx.op.tertiary.f32(i32 46, float %2407, float %2416, float %2419)  ; FMad(a,b,c)
  %2421 = fadd fast float %2398, %2418
  %2422 = fadd fast float %2401, %2420
  %2423 = icmp ugt i32 %2372, 1
  %2424 = icmp ugt i32 %2370, 33554431
  %2425 = or i1 %2424, %2423
  br i1 %2425, label %2426, label %2451

; <label>:2426                                    ; preds = %2353
  %2427 = add i32 %56, 260
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = lshr i32 %2429, 16
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = fmul fast float %2394, %2431
  %2433 = call float @dx.op.unary.f32(i32 22, float %2432)  ; Frc(value)
  %2434 = mul nuw nsw i32 %2372, %2373
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2433, %2435
  %2437 = call float @dx.op.unary.f32(i32 27, float %2436)  ; Round_ni(value)
  %2438 = fptoui float %2437 to i32
  %2439 = urem i32 %2438, %2372
  %2440 = udiv i32 %2438, %2373
  %2441 = call float @dx.op.unary.f32(i32 22, float %2421)  ; Frc(value)
  %2442 = call float @dx.op.unary.f32(i32 22, float %2422)  ; Frc(value)
  %2443 = uitofp i32 %2439 to float
  %2444 = uitofp i32 %2440 to float
  %2445 = fadd fast float %2441, %2443
  %2446 = fadd fast float %2442, %2444
  %2447 = uitofp i32 %2372 to float
  %2448 = uitofp i32 %2373 to float
  %2449 = fdiv fast float %2445, %2447
  %2450 = fdiv fast float %2446, %2448
  br label %2451

; <label>:2451                                    ; preds = %2426, %2353
  %2452 = phi float [ %2449, %2426 ], [ %2421, %2353 ]
  %2453 = phi float [ %2450, %2426 ], [ %2422, %2353 ]
  %2454 = and i32 %2347, 16777216
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2565, label %2456

; <label>:2456                                    ; preds = %2451
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.CBufRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.CBufRet.f32 %2457, 2
  %2461 = fadd fast float %2458, %157
  %2462 = fadd fast float %2459, %158
  %2463 = fadd fast float %2460, %159
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = icmp eq i32 %57, 65535
  br i1 %2467, label %2562, label %2468

; <label>:2468                                    ; preds = %2456
  %2469 = lshr i32 %57, 1
  %2470 = shl i32 %2469, 2
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %57, 1
  %2474 = icmp ne i32 %2473, 0
  %2475 = lshr i32 %2472, 16
  %2476 = and i32 %2472, 65535
  %2477 = select i1 %2474, i32 %2475, i32 %2476
  %2478 = icmp eq i32 %2477, 65535
  br i1 %2478, label %2558, label %2479

; <label>:2479                                    ; preds = %2468
  %2480 = mul nuw nsw i32 %2477, 40
  %2481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2485 = add nuw nsw i32 %2480, 12
  %2486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = add nuw nsw i32 %2480, 24
  %2491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = add nuw nsw i32 %2480, 36
  %2496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = fsub fast float %2461, %2482
  %2499 = fsub fast float %2462, %2483
  %2500 = fsub fast float %2463, %2484
  %2501 = fmul fast float %2497, %2498
  %2502 = fmul fast float %2497, %2499
  %2503 = fmul fast float %2497, %2500
  %2504 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2505 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2506 = call float @dx.op.unary.f32(i32 27, float %2503)  ; Round_ni(value)
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = fadd fast float %2505, 5.000000e-01
  %2509 = fadd fast float %2506, 5.000000e-01
  %2510 = fmul fast float %2507, %2487
  %2511 = fmul fast float %2508, %2488
  %2512 = fmul fast float %2509, %2489
  %2513 = shl i32 %57, 2
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %2515, 0
  %2517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2518 = call float @dx.op.unary.f32(i32 22, float %2510)  ; Frc(value)
  %2519 = call float @dx.op.unary.f32(i32 22, float %2511)  ; Frc(value)
  %2520 = call float @dx.op.unary.f32(i32 22, float %2512)  ; Frc(value)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2517, %dx.types.Handle %51, float %2518, float %2519, float %2520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = fmul fast float %2522, 1.023000e+03
  %2526 = fmul fast float %2523, 1.023000e+03
  %2527 = fmul fast float %2524, 1.023000e+03
  %2528 = fadd fast float %2525, 5.000000e-01
  %2529 = fadd fast float %2526, 5.000000e-01
  %2530 = fadd fast float %2527, 5.000000e-01
  %2531 = call float @dx.op.unary.f32(i32 27, float %2528)  ; Round_ni(value)
  %2532 = call float @dx.op.unary.f32(i32 27, float %2529)  ; Round_ni(value)
  %2533 = call float @dx.op.unary.f32(i32 27, float %2530)  ; Round_ni(value)
  %2534 = fsub fast float %2501, %2504
  %2535 = fsub fast float %2502, %2505
  %2536 = fsub fast float %2503, %2506
  %2537 = fmul fast float %2534, 7.500000e-01
  %2538 = fmul fast float %2535, 7.500000e-01
  %2539 = fmul fast float %2536, 7.500000e-01
  %2540 = fadd fast float %2504, 1.250000e-01
  %2541 = fadd fast float %2540, %2537
  %2542 = fadd fast float %2541, %2531
  %2543 = fadd fast float %2505, 1.250000e-01
  %2544 = fadd fast float %2543, %2538
  %2545 = fadd fast float %2544, %2532
  %2546 = fadd fast float %2506, 1.250000e-01
  %2547 = fadd fast float %2546, %2539
  %2548 = fadd fast float %2547, %2533
  %2549 = fmul fast float %2542, %2492
  %2550 = fmul fast float %2545, %2493
  %2551 = fmul fast float %2548, %2494
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = add i32 %2553, 0
  %2555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2555, %dx.types.Handle %49, float %2549, float %2550, float %2551, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  br label %2558

; <label>:2558                                    ; preds = %2479, %2468
  %2559 = phi float [ %2557, %2479 ], [ -1.000000e+00, %2468 ]
  %2560 = fadd fast float %2559, %2466
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  br label %2562

; <label>:2562                                    ; preds = %2558, %2456
  %2563 = phi float [ %2561, %2558 ], [ %2466, %2456 ]
  %2564 = fmul fast float %2563, %492
  br label %2565

; <label>:2565                                    ; preds = %2562, %2451
  %2566 = phi float [ %2564, %2562 ], [ %492, %2451 ]
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 256
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2617, label %2571

; <label>:2571                                    ; preds = %2565
  %2572 = add i32 %56, 496
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = add i32 %2574, 0
  %2576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2576, %dx.types.Handle %99, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2578 = extractvalue %dx.types.ResRet.f32 %2577, 0
  %2579 = add i32 %56, 132
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = shl i32 %2581, 4
  %2583 = and i32 %2582, 32752
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = lshr i32 %2581, 7
  %2586 = and i32 %2585, 32752
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = fsub fast float 1.000000e+00, %2566
  %2589 = call float @dx.op.binary.f32(i32 35, float %2588, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2590 = bitcast float %2566 to i32
  %2591 = sitofp i32 %2590 to float
  %2592 = fadd fast float %2591, 0xC1CFBF8940000000
  %2593 = fmul fast float %2587, %2592
  %2594 = fadd fast float %2593, 0x41CFBF8940000000
  %2595 = fptosi float %2594 to i32
  %2596 = bitcast i32 %2595 to float
  %2597 = bitcast float %2589 to i32
  %2598 = sitofp i32 %2597 to float
  %2599 = fadd fast float %2598, 0xC1CFBF8940000000
  %2600 = fmul fast float %2599, %2587
  %2601 = fadd fast float %2600, 0x41CFBF8940000000
  %2602 = fptosi float %2601 to i32
  %2603 = bitcast i32 %2602 to float
  %2604 = fmul fast float %2596, %2584
  %2605 = fmul fast float %2603, %2584
  %2606 = fsub fast float %2589, %2604
  %2607 = fadd fast float %2605, %2589
  %2608 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2609 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2610 = fsub fast float %2578, %2608
  %2611 = fsub fast float %2609, %2608
  %2612 = bitcast float %2611 to i32
  %2613 = sub nsw i32 2129859010, %2612
  %2614 = bitcast i32 %2613 to float
  %2615 = fmul fast float %2614, %2610
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  br label %2617

; <label>:2617                                    ; preds = %2571, %2565
  %2618 = phi float [ %2616, %2571 ], [ %2566, %2565 ]
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = and i32 %2620, 128
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2639, label %2623

; <label>:2623                                    ; preds = %2617
  %2624 = add i32 %56, 480
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %2626, 0
  %2628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2628, %dx.types.Handle %99, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 524288
  %2634 = icmp ne i32 %2633, 0
  %2635 = fcmp fast ogt float %2630, 0x3FE0101020000000
  %2636 = select i1 %2635, float 1.000000e+00, float 0.000000e+00
  %2637 = select i1 %2634, float %2636, float %2630
  %2638 = fmul fast float %2637, %2618
  br label %2639

; <label>:2639                                    ; preds = %2623, %2617
  %2640 = phi float [ %2638, %2623 ], [ %2618, %2617 ]
  %2641 = fcmp fast ult float %2640, 0x3F70101020000000
  br i1 %2641, label %3380, label %2642

; <label>:2642                                    ; preds = %2639
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 16
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2845, label %2647

; <label>:2647                                    ; preds = %2642
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = add i32 %56, 432
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %2652, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2654, %dx.types.Handle %98, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.ResRet.f32 %2655, 2
  %2659 = extractvalue %dx.types.ResRet.f32 %2655, 3
  %2660 = and i32 %2649, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = lshr i32 %2649, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2659, %2661
  %2666 = fadd fast float %2665, %2664
  %2667 = fmul fast float %2666, 0x3F70101000000000
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 512
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2680, label %2672

; <label>:2672                                    ; preds = %2647
  %2673 = add i32 %56, 516
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %2675, 0
  %2677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2677, %dx.types.Handle %99, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  br label %2680

; <label>:2680                                    ; preds = %2672, %2647
  %2681 = phi float [ %2679, %2672 ], [ 1.000000e+00, %2647 ]
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 33554432
  %2685 = icmp eq i32 %2684, 0
  br i1 %2685, label %2792, label %2686

; <label>:2686                                    ; preds = %2680
  %2687 = add i32 %56, 256
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 65535
  %2691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2690)  ; LegacyF16ToF32(value)
  %2692 = lshr i32 %2689, 16
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = add i32 %56, 260
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2694, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = and i32 %2696, 65535
  %2698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2697)  ; LegacyF16ToF32(value)
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = lshr i32 %2700, 24
  %2702 = uitofp i32 %2701 to float
  %2703 = fmul fast float %2702, 0x3F70101020000000
  %2704 = and i32 %2700, 255
  %2705 = uitofp i32 %2704 to float
  %2706 = fmul fast float %2705, 0x3F70101020000000
  %2707 = lshr i32 %2700, 8
  %2708 = and i32 %2707, 255
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2709, 0x3F70101020000000
  %2711 = lshr i32 %2700, 16
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F70101020000000
  %2715 = add i32 %56, 252
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = lshr i32 %2717, 24
  %2719 = uitofp i32 %2718 to float
  %2720 = fmul fast float %2719, 0x3F70101020000000
  %2721 = and i32 %2717, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = lshr i32 %2717, 8
  %2725 = and i32 %2724, 255
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2726, 0x3F70101020000000
  %2728 = lshr i32 %2717, 16
  %2729 = and i32 %2728, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = fmul fast float %2730, 0x3F70101020000000
  %2732 = bitcast float %2656 to i32
  %2733 = ashr i32 %2732, 1
  %2734 = sub nsw i32 1597463174, %2733
  %2735 = bitcast i32 %2734 to float
  %2736 = fmul fast float %2656, 5.000000e-01
  %2737 = fmul fast float %2735, %2735
  %2738 = fmul fast float %2737, %2736
  %2739 = fsub fast float 1.500000e+00, %2738
  %2740 = fmul fast float %2735, %2656
  %2741 = fmul fast float %2740, %2739
  %2742 = bitcast float %2657 to i32
  %2743 = ashr i32 %2742, 1
  %2744 = sub nsw i32 1597463174, %2743
  %2745 = bitcast i32 %2744 to float
  %2746 = fmul fast float %2657, 5.000000e-01
  %2747 = fmul fast float %2745, %2745
  %2748 = fmul fast float %2747, %2746
  %2749 = fsub fast float 1.500000e+00, %2748
  %2750 = fmul fast float %2745, %2657
  %2751 = fmul fast float %2750, %2749
  %2752 = bitcast float %2658 to i32
  %2753 = ashr i32 %2752, 1
  %2754 = sub nsw i32 1597463174, %2753
  %2755 = bitcast i32 %2754 to float
  %2756 = fmul fast float %2658, 5.000000e-01
  %2757 = fmul fast float %2755, %2755
  %2758 = fmul fast float %2757, %2756
  %2759 = fsub fast float 1.500000e+00, %2758
  %2760 = fmul fast float %2755, %2658
  %2761 = fmul fast float %2760, %2759
  %2762 = fsub fast float %2741, %2723
  %2763 = fsub fast float %2751, %2727
  %2764 = fsub fast float %2761, %2731
  %2765 = fmul fast float %2762, %2691
  %2766 = fmul fast float %2763, %2693
  %2767 = fmul fast float %2764, %2698
  %2768 = fadd fast float %2765, %2706
  %2769 = fadd fast float %2766, %2710
  %2770 = fadd fast float %2767, %2714
  %2771 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2772 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2773 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2774 = fmul fast float %2771, %2771
  %2775 = fmul fast float %2772, %2772
  %2776 = fmul fast float %2773, %2773
  %2777 = fsub fast float %2774, %2656
  %2778 = fsub fast float %2775, %2657
  %2779 = fsub fast float %2776, %2658
  %2780 = fmul fast float %2777, %2681
  %2781 = fmul fast float %2778, %2681
  %2782 = fmul fast float %2779, %2681
  %2783 = fadd fast float %2780, %2656
  %2784 = fadd fast float %2781, %2657
  %2785 = fadd fast float %2782, %2658
  %2786 = fadd fast float %2703, %2667
  %2787 = fsub fast float %2786, %2720
  %2788 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2789 = fsub fast float %2788, %2667
  %2790 = fmul fast float %2789, %2681
  %2791 = fadd fast float %2790, %2667
  br label %2845

; <label>:2792                                    ; preds = %2680
  %2793 = and i32 %2683, 134217728
  %2794 = icmp eq i32 %2793, 0
  br i1 %2794, label %2829, label %2795

; <label>:2795                                    ; preds = %2792
  %2796 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2797 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2798 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2799 = fadd fast float %2796, -5.000000e-01
  %2800 = fadd fast float %2797, -5.000000e-01
  %2801 = fadd fast float %2798, -5.000000e-01
  %2802 = fmul fast float %2799, %2681
  %2803 = fmul fast float %2800, %2681
  %2804 = fmul fast float %2801, %2681
  %2805 = fadd fast float %2802, 5.000000e-01
  %2806 = fadd fast float %2803, 5.000000e-01
  %2807 = fadd fast float %2804, 5.000000e-01
  %2808 = call float @dx.op.unary.f32(i32 24, float %2656)  ; Sqrt(value)
  %2809 = call float @dx.op.unary.f32(i32 24, float %2657)  ; Sqrt(value)
  %2810 = call float @dx.op.unary.f32(i32 24, float %2658)  ; Sqrt(value)
  %2811 = fmul fast float %2805, 2.000000e+00
  %2812 = fsub fast float 1.000000e+00, %2811
  %2813 = fmul fast float %2812, %2808
  %2814 = fadd fast float %2813, %2811
  %2815 = fmul fast float %2814, %2808
  %2816 = fmul fast float %2806, 2.000000e+00
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2817, %2809
  %2819 = fadd fast float %2818, %2816
  %2820 = fmul fast float %2819, %2809
  %2821 = fmul fast float %2807, 2.000000e+00
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = fmul fast float %2822, %2810
  %2824 = fadd fast float %2823, %2821
  %2825 = fmul fast float %2824, %2810
  %2826 = fmul fast float %2815, %2815
  %2827 = fmul fast float %2820, %2820
  %2828 = fmul fast float %2825, %2825
  br label %2845

; <label>:2829                                    ; preds = %2792
  %2830 = fmul fast float %367, %367
  %2831 = fmul fast float %371, %371
  %2832 = fmul fast float %375, %375
  %2833 = fadd fast float %2830, -1.000000e+00
  %2834 = fadd fast float %2831, -1.000000e+00
  %2835 = fadd fast float %2832, -1.000000e+00
  %2836 = fmul fast float %2681, %2833
  %2837 = fmul fast float %2681, %2834
  %2838 = fmul fast float %2681, %2835
  %2839 = fadd fast float %2836, 1.000000e+00
  %2840 = fadd fast float %2837, 1.000000e+00
  %2841 = fadd fast float %2838, 1.000000e+00
  %2842 = fmul fast float %2839, %2656
  %2843 = fmul fast float %2840, %2657
  %2844 = fmul fast float %2841, %2658
  br label %2845

; <label>:2845                                    ; preds = %2829, %2795, %2686, %2642
  %2846 = phi float [ %2791, %2686 ], [ %2667, %2795 ], [ %2667, %2829 ], [ 0x3FA23C0BE0000000, %2642 ]
  %2847 = phi float [ %2783, %2686 ], [ %2826, %2795 ], [ %2842, %2829 ], [ 1.000000e+00, %2642 ]
  %2848 = phi float [ %2784, %2686 ], [ %2827, %2795 ], [ %2843, %2829 ], [ 1.000000e+00, %2642 ]
  %2849 = phi float [ %2785, %2686 ], [ %2828, %2795 ], [ %2844, %2829 ], [ 1.000000e+00, %2642 ]
  %2850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.i32 %2850, 1
  %2852 = and i32 %2851, 1
  %2853 = icmp ne i32 %2852, 0
  %2854 = add i32 %56, 356
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, 32
  %2858 = icmp ne i32 %2857, 0
  %2859 = and i1 %2853, %2858
  %2860 = select i1 %2859, float 1.000000e+00, float %2847
  %2861 = select i1 %2859, float 0x3FD3333340000000, float %2848
  %2862 = select i1 %2859, float 0x3FD3333340000000, float %2849
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 32
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2939, label %2867

; <label>:2867                                    ; preds = %2845
  %2868 = add i32 %56, 124
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = add i32 %56, 448
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = add i32 %2873, 0
  %2875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2875, %dx.types.Handle %98, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  %2880 = extractvalue %dx.types.ResRet.f32 %2876, 3
  %2881 = and i32 %2870, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = lshr i32 %2870, 8
  %2884 = and i32 %2883, 255
  %2885 = uitofp i32 %2884 to float
  %2886 = lshr i32 %2870, 16
  %2887 = and i32 %2886, 255
  %2888 = uitofp i32 %2887 to float
  %2889 = fmul fast float %2888, 0x3F70101000000000
  %2890 = fmul fast float %2877, %2882
  %2891 = fadd fast float %2890, %2885
  %2892 = fmul fast float %2891, 0x3F70101000000000
  %2893 = fadd fast float %2878, -5.000000e-01
  %2894 = fadd fast float %2880, -5.000000e-01
  %2895 = fmul fast float %2893, %2889
  %2896 = fmul fast float %2894, %2889
  %2897 = fadd fast float %2895, 5.000000e-01
  %2898 = fadd fast float %2896, 5.000000e-01
  %2899 = fmul fast float %2897, 2.000000e+00
  %2900 = fadd fast float %2899, -1.000000e+00
  %2901 = fmul fast float %2898, 2.000000e+00
  %2902 = fadd fast float %2901, -1.000000e+00
  %2903 = fadd fast float %2900, %2902
  %2904 = fmul fast float %2903, 5.000000e-01
  %2905 = fsub fast float %2900, %2902
  %2906 = fmul fast float %2905, 5.000000e-01
  %2907 = call float @dx.op.unary.f32(i32 6, float %2904)  ; FAbs(value)
  %2908 = fsub fast float 1.000000e+00, %2907
  %2909 = call float @dx.op.unary.f32(i32 6, float %2906)  ; FAbs(value)
  %2910 = fsub fast float %2908, %2909
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2904, float %2906, float %2910, float %2904, float %2906, float %2910)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = call float @dx.op.unary.f32(i32 25, float %2911)  ; Rsqrt(value)
  %2913 = fmul fast float %2904, %2912
  %2914 = fmul fast float %2906, %2912
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 67108864
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2935, label %2919

; <label>:2919                                    ; preds = %2867
  %2920 = add i32 %56, 312
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 65535
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 65535
  %2928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2927)  ; LegacyF16ToF32(value)
  %2929 = lshr i32 %2922, 16
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = fsub fast float %2892, %2930
  %2932 = fmul fast float %2931, %2924
  %2933 = fadd fast float %2932, %2928
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  br label %2935

; <label>:2935                                    ; preds = %2919, %2867
  %2936 = phi float [ %2934, %2919 ], [ %2892, %2867 ]
  %2937 = call float @dx.op.dot2.f32(i32 54, float %2913, float %2914, float %2356, float %2357)  ; Dot2(ax,ay,bx,by)
  %2938 = call float @dx.op.dot2.f32(i32 54, float %2913, float %2914, float %2358, float %2359)  ; Dot2(ax,ay,bx,by)
  br label %2939

; <label>:2939                                    ; preds = %2935, %2845
  %2940 = phi float [ %2936, %2935 ], [ 0x3FD6666660000000, %2845 ]
  %2941 = phi float [ %2937, %2935 ], [ 0.000000e+00, %2845 ]
  %2942 = phi float [ %2938, %2935 ], [ 0.000000e+00, %2845 ]
  %2943 = phi float [ %2879, %2935 ], [ 1.000000e+00, %2845 ]
  %2944 = add i32 %56, 192
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = lshr i32 %2946, 22
  %2948 = shl nuw nsw i32 %2947, 5
  %2949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2948)  ; LegacyF16ToF32(value)
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 64
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %2987, label %2954

; <label>:2954                                    ; preds = %2939
  %2955 = add i32 %56, 464
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 131072
  %2963 = icmp eq i32 %2962, 0
  %2964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %98, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = fmul fast float %2965, %355
  %2969 = fmul fast float %2966, %358
  %2970 = fmul fast float %2967, %361
  br i1 %2963, label %2977, label %2971

; <label>:2971                                    ; preds = %2954
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = fmul fast float %2973, %2968
  %2975 = fmul fast float %2973, %2969
  %2976 = fmul fast float %2973, %2970
  br label %2977

; <label>:2977                                    ; preds = %2971, %2954
  %2978 = phi float [ %2974, %2971 ], [ %2968, %2954 ]
  %2979 = phi float [ %2975, %2971 ], [ %2969, %2954 ]
  %2980 = phi float [ %2976, %2971 ], [ %2970, %2954 ]
  %2981 = fmul fast float %2978, %2949
  %2982 = select i1 %251, float %2981, float %2978
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2979, float %2980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = select i1 %251, float 0.000000e+00, float %2978
  %2985 = select i1 %251, float %2983, float %2979
  %2986 = select i1 %251, float 0.000000e+00, float %2980
  br label %2987

; <label>:2987                                    ; preds = %2977, %2939
  %2988 = phi float [ %2984, %2977 ], [ 0.000000e+00, %2939 ]
  %2989 = phi float [ %2985, %2977 ], [ 0.000000e+00, %2939 ]
  %2990 = phi float [ %2986, %2977 ], [ 0.000000e+00, %2939 ]
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = and i32 %2992, 1024
  %2994 = icmp eq i32 %2993, 0
  br i1 %2994, label %3025, label %2995

; <label>:2995                                    ; preds = %2987
  %2996 = add i32 %56, 184
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2998, 8
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %2998, 16
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = fmul fast float %3001, %3001
  %3011 = fmul fast float %3005, %3005
  %3012 = fmul fast float %3009, %3009
  %3013 = add i32 %56, 532
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = add i32 %3015, 0
  %3017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3017, %dx.types.Handle %99, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.ResRet.f32 %3018, 1
  %3021 = extractvalue %dx.types.ResRet.f32 %3018, 2
  %3022 = fmul fast float %3010, %3019
  %3023 = fmul fast float %3011, %3020
  %3024 = fmul fast float %3012, %3021
  br label %3025

; <label>:3025                                    ; preds = %2995, %2987
  %3026 = phi float [ %3022, %2995 ], [ 0.000000e+00, %2987 ]
  %3027 = phi float [ %3023, %2995 ], [ 0.000000e+00, %2987 ]
  %3028 = phi float [ %3024, %2995 ], [ 0.000000e+00, %2987 ]
  %3029 = fcmp fast ogt float %3026, 0.000000e+00
  %3030 = fcmp fast ogt float %3027, 0.000000e+00
  %3031 = fcmp fast ogt float %3028, 0.000000e+00
  %3032 = call float @dx.op.unary.f32(i32 23, float %3026)  ; Log(value)
  %3033 = call float @dx.op.unary.f32(i32 23, float %3027)  ; Log(value)
  %3034 = call float @dx.op.unary.f32(i32 23, float %3028)  ; Log(value)
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = lshr i32 %3036, 7
  %3038 = and i32 %3037, 32752
  %3039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3038)  ; LegacyF16ToF32(value)
  %3040 = fmul fast float %3032, 0xBFE62E4300000000
  %3041 = fmul fast float %3040, %3039
  %3042 = fmul fast float %3033, 0xBFE62E4300000000
  %3043 = fmul fast float %3042, %3039
  %3044 = fmul fast float %3034, 0xBFE62E4300000000
  %3045 = fmul fast float %3044, %3039
  %3046 = select i1 %3029, float %3041, float 1.270000e+02
  %3047 = select i1 %3030, float %3043, float 1.270000e+02
  %3048 = select i1 %3031, float %3045, float 1.270000e+02
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 10240
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3097, label %3053

; <label>:3053                                    ; preds = %3025
  %3054 = add i32 %56, 548
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3058, %dx.types.Handle %99, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 3
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 1048576
  %3065 = icmp ne i32 %3064, 0
  %3066 = and i32 %3063, 8192
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3083, label %3068

; <label>:3068                                    ; preds = %3053
  %3069 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3070 = select i1 %3065, float %3069, float %3060
  %3071 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3072 = select i1 %3065, float %3071, float %3060
  %3073 = add i32 %56, 128
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = lshr i32 %3075, 16
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F80101020000000
  %3080 = fmul fast float %3079, %3072
  %3081 = fmul fast float %3079, %3060
  %3082 = fmul fast float %3079, %3070
  br label %3083

; <label>:3083                                    ; preds = %3068, %3053
  %3084 = phi float [ %3080, %3068 ], [ 0.000000e+00, %3053 ]
  %3085 = phi float [ %3081, %3068 ], [ 0.000000e+00, %3053 ]
  %3086 = phi float [ %3082, %3068 ], [ 0.000000e+00, %3053 ]
  %3087 = and i32 %3063, 2048
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %3097, label %3089

; <label>:3089                                    ; preds = %3083
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = shl i32 %3091, 4
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = fmul fast float %3094, %3061
  %3096 = call float @dx.op.binary.f32(i32 35, float %3095, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3097

; <label>:3097                                    ; preds = %3089, %3083, %3025
  %3098 = phi float [ %3084, %3089 ], [ %3084, %3083 ], [ 0.000000e+00, %3025 ]
  %3099 = phi float [ %3085, %3089 ], [ %3085, %3083 ], [ 0.000000e+00, %3025 ]
  %3100 = phi float [ %3086, %3089 ], [ %3086, %3083 ], [ 0.000000e+00, %3025 ]
  %3101 = phi float [ %3096, %3089 ], [ 0x3F70101020000000, %3083 ], [ 0x3F70101020000000, %3025 ]
  %3102 = add i32 %56, 128
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = lshr i32 %3104, 8
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3111 = fmul fast float %3109, %3110
  %3112 = fadd fast float %3111, %3106
  %3113 = fmul fast float %3112, 0x3F70101020000000
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  br i1 %2344, label %3115, label %3150

; <label>:3115                                    ; preds = %3097
  %3116 = fmul fast float %3101, 2.000000e+00
  %3117 = fcmp fast olt float %3046, 1.270000e+02
  %3118 = fcmp fast olt float %3047, 1.270000e+02
  %3119 = fcmp fast olt float %3048, 1.270000e+02
  %3120 = fmul fast float %3046, 0xBFF7154760000000
  %3121 = fmul fast float %3120, %3116
  %3122 = fmul fast float %3047, 0xBFF7154760000000
  %3123 = fmul fast float %3122, %3116
  %3124 = fmul fast float %3048, 0xBFF7154760000000
  %3125 = fmul fast float %3124, %3116
  %3126 = call float @dx.op.unary.f32(i32 21, float %3121)  ; Exp(value)
  %3127 = call float @dx.op.unary.f32(i32 21, float %3123)  ; Exp(value)
  %3128 = call float @dx.op.unary.f32(i32 21, float %3125)  ; Exp(value)
  %3129 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3130 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3131 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3132 = fadd fast float %3129, -1.000000e+00
  %3133 = select i1 %3117, float %3132, float -1.000000e+00
  %3134 = fadd fast float %3130, -1.000000e+00
  %3135 = select i1 %3118, float %3134, float -1.000000e+00
  %3136 = fadd fast float %3131, -1.000000e+00
  %3137 = select i1 %3119, float %3136, float -1.000000e+00
  %3138 = fmul fast float %3133, %2640
  %3139 = fmul fast float %3135, %2640
  %3140 = fmul fast float %3137, %2640
  %3141 = fadd fast float %3138, 1.000000e+00
  %3142 = fadd fast float %3139, 1.000000e+00
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fmul fast float %3141, %2326
  %3145 = fmul fast float %3142, %2327
  %3146 = fmul fast float %3143, %2328
  %3147 = fmul fast float %3141, %2329
  %3148 = fmul fast float %3142, %2330
  %3149 = fmul fast float %3143, %2331
  br label %3150

; <label>:3150                                    ; preds = %3115, %3097
  %3151 = phi float [ %3144, %3115 ], [ %2326, %3097 ]
  %3152 = phi float [ %3145, %3115 ], [ %2327, %3097 ]
  %3153 = phi float [ %3146, %3115 ], [ %2328, %3097 ]
  %3154 = phi float [ %3147, %3115 ], [ %2329, %3097 ]
  %3155 = phi float [ %3148, %3115 ], [ %2330, %3097 ]
  %3156 = phi float [ %3149, %3115 ], [ %2331, %3097 ]
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 3
  %3160 = icmp eq i32 %3159, 3
  br i1 %3160, label %3239, label %3161

; <label>:3161                                    ; preds = %3150
  %3162 = and i32 %3158, 16
  %3163 = icmp ne i32 %3162, 0
  %3164 = select i1 %3163, float %2640, float 0.000000e+00
  %3165 = icmp eq i32 %3159, 0
  br i1 %3165, label %3166, label %3194

; <label>:3166                                    ; preds = %3161
  %3167 = and i32 %3158, 64
  %3168 = icmp ne i32 %3167, 0
  %3169 = select i1 %3168, float %2640, float 0.000000e+00
  %3170 = fsub fast float %2860, %3151
  %3171 = fsub fast float %2861, %3152
  %3172 = fsub fast float %2862, %3153
  %3173 = fmul fast float %3164, %3170
  %3174 = fmul fast float %3164, %3171
  %3175 = fmul fast float %3164, %3172
  %3176 = fadd fast float %3173, %3151
  %3177 = fadd fast float %3174, %3152
  %3178 = fadd fast float %3175, %3153
  %3179 = fsub fast float %2846, %2338
  %3180 = fmul fast float %3164, %3179
  %3181 = fadd fast float %3180, %2338
  %3182 = fsub fast float %2988, %3154
  %3183 = fsub fast float %2989, %3155
  %3184 = fsub fast float %2990, %3156
  %3185 = fmul fast float %3169, %3182
  %3186 = fmul fast float %3169, %3183
  %3187 = fmul fast float %3169, %3184
  %3188 = fadd fast float %3185, %3154
  %3189 = fadd fast float %3186, %3155
  %3190 = fadd fast float %3187, %3156
  %3191 = fsub fast float %3114, %2342
  %3192 = fmul fast float %3164, %3191
  %3193 = fadd fast float %3192, %2342
  br label %3239

; <label>:3194                                    ; preds = %3161
  %3195 = icmp eq i32 %3159, 1
  br i1 %3195, label %3196, label %3209

; <label>:3196                                    ; preds = %3194
  %3197 = fadd fast float %2860, -1.000000e+00
  %3198 = fadd fast float %2861, -1.000000e+00
  %3199 = fadd fast float %2862, -1.000000e+00
  %3200 = fmul fast float %3164, %3197
  %3201 = fmul fast float %3164, %3198
  %3202 = fmul fast float %3164, %3199
  %3203 = fadd fast float %3200, 1.000000e+00
  %3204 = fadd fast float %3201, 1.000000e+00
  %3205 = fadd fast float %3202, 1.000000e+00
  %3206 = fmul fast float %3203, %3151
  %3207 = fmul fast float %3204, %3152
  %3208 = fmul fast float %3205, %3153
  br label %3239

; <label>:3209                                    ; preds = %3194
  %3210 = icmp eq i32 %3159, 2
  br i1 %3210, label %3211, label %3239

; <label>:3211                                    ; preds = %3209
  %3212 = call float @dx.op.unary.f32(i32 24, float %2860)  ; Sqrt(value)
  %3213 = call float @dx.op.unary.f32(i32 24, float %2861)  ; Sqrt(value)
  %3214 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %3215 = fadd fast float %3212, -5.000000e-01
  %3216 = fadd fast float %3213, -5.000000e-01
  %3217 = fadd fast float %3214, -5.000000e-01
  %3218 = fmul fast float %3215, %3164
  %3219 = fmul fast float %3216, %3164
  %3220 = fmul fast float %3217, %3164
  %3221 = fadd fast float %3218, 5.000000e-01
  %3222 = fadd fast float %3219, 5.000000e-01
  %3223 = fadd fast float %3220, 5.000000e-01
  %3224 = fmul fast float %3221, 2.000000e+00
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fmul fast float %3225, %3151
  %3227 = fadd fast float %3226, %3224
  %3228 = fmul fast float %3227, %3151
  %3229 = fmul fast float %3222, 2.000000e+00
  %3230 = fsub fast float 1.000000e+00, %3229
  %3231 = fmul fast float %3230, %3152
  %3232 = fadd fast float %3231, %3229
  %3233 = fmul fast float %3232, %3152
  %3234 = fmul fast float %3223, 2.000000e+00
  %3235 = fsub fast float 1.000000e+00, %3234
  %3236 = fmul fast float %3235, %3153
  %3237 = fadd fast float %3236, %3234
  %3238 = fmul fast float %3237, %3153
  br label %3239

; <label>:3239                                    ; preds = %3211, %3209, %3196, %3166, %3150
  %3240 = phi float [ %3151, %3150 ], [ %3228, %3211 ], [ %3151, %3209 ], [ %3206, %3196 ], [ %3176, %3166 ]
  %3241 = phi float [ %3152, %3150 ], [ %3233, %3211 ], [ %3152, %3209 ], [ %3207, %3196 ], [ %3177, %3166 ]
  %3242 = phi float [ %3153, %3150 ], [ %3238, %3211 ], [ %3153, %3209 ], [ %3208, %3196 ], [ %3178, %3166 ]
  %3243 = phi float [ %3154, %3150 ], [ %3154, %3211 ], [ %3154, %3209 ], [ %3154, %3196 ], [ %3188, %3166 ]
  %3244 = phi float [ %3155, %3150 ], [ %3155, %3211 ], [ %3155, %3209 ], [ %3155, %3196 ], [ %3189, %3166 ]
  %3245 = phi float [ %3156, %3150 ], [ %3156, %3211 ], [ %3156, %3209 ], [ %3156, %3196 ], [ %3190, %3166 ]
  %3246 = phi float [ %2338, %3150 ], [ %2338, %3211 ], [ %2338, %3209 ], [ %2338, %3196 ], [ %3181, %3166 ]
  %3247 = phi float [ %2342, %3150 ], [ %2342, %3211 ], [ %2342, %3209 ], [ %2342, %3196 ], [ %3193, %3166 ]
  %3248 = and i32 %3158, 12
  %3249 = icmp eq i32 %3248, 12
  br i1 %3249, label %3380, label %3250

; <label>:3250                                    ; preds = %3239
  %3251 = and i32 %3158, 2097184
  %3252 = icmp eq i32 %3251, 2097184
  %3253 = select i1 %3252, float %2640, float 0.000000e+00
  %3254 = and i32 %3158, 4194336
  %3255 = icmp eq i32 %3254, 4194336
  %3256 = select i1 %3255, float %2640, float 0.000000e+00
  %3257 = and i32 %3158, 8388640
  %3258 = icmp eq i32 %3257, 8388640
  %3259 = select i1 %3258, float %2640, float 0.000000e+00
  %3260 = and i32 %3158, 1024
  %3261 = icmp ne i32 %3260, 0
  %3262 = select i1 %3261, float %2640, float 0.000000e+00
  %3263 = and i32 %3158, 2048
  %3264 = icmp ne i32 %3263, 0
  %3265 = select i1 %3264, float %2640, float 0.000000e+00
  %3266 = and i32 %3158, 8192
  %3267 = icmp ne i32 %3266, 0
  %3268 = select i1 %3267, float %2640, float 0.000000e+00
  %3269 = icmp eq i32 %3248, 0
  br i1 %3269, label %3270, label %3304

; <label>:3270                                    ; preds = %3250
  %3271 = fsub fast float %2941, %2324
  %3272 = fsub fast float %2942, %2325
  %3273 = fmul fast float %3253, %3271
  %3274 = fmul fast float %3253, %3272
  %3275 = fadd fast float %3273, %2324
  %3276 = fadd fast float %3274, %2325
  %3277 = fsub fast float %2943, %2340
  %3278 = fmul fast float %3256, %3277
  %3279 = fadd fast float %3278, %2340
  %3280 = fsub fast float %2940, %2339
  %3281 = fmul fast float %3259, %3280
  %3282 = fadd fast float %3281, %2339
  %3283 = fsub fast float %3046, %2335
  %3284 = fsub fast float %3047, %2336
  %3285 = fsub fast float %3048, %2337
  %3286 = fmul fast float %3262, %3283
  %3287 = fmul fast float %3262, %3284
  %3288 = fmul fast float %3262, %3285
  %3289 = fadd fast float %3286, %2335
  %3290 = fadd fast float %3287, %2336
  %3291 = fadd fast float %3288, %2337
  %3292 = fsub fast float %3101, %2341
  %3293 = fmul fast float %3265, %3292
  %3294 = fadd fast float %3293, %2341
  %3295 = fsub fast float %3098, %2332
  %3296 = fsub fast float %3099, %2333
  %3297 = fsub fast float %3100, %2334
  %3298 = fmul fast float %3268, %3295
  %3299 = fmul fast float %3268, %3296
  %3300 = fmul fast float %3268, %3297
  %3301 = fadd fast float %3298, %2332
  %3302 = fadd fast float %3299, %2333
  %3303 = fadd fast float %3300, %2334
  br label %3380

; <label>:3304                                    ; preds = %3250
  %3305 = icmp eq i32 %3248, 4
  br i1 %3305, label %3306, label %3352

; <label>:3306                                    ; preds = %3304
  %3307 = fmul fast float %3253, %2941
  %3308 = fmul fast float %3253, %2942
  %3309 = fadd fast float %3307, %2324
  %3310 = fadd fast float %3308, %2325
  %3311 = call float @dx.op.binary.f32(i32 36, float %2340, float %2943)  ; FMin(a,b)
  %3312 = fsub fast float %3311, %2340
  %3313 = fmul fast float %3312, %3256
  %3314 = fadd fast float %3313, %2340
  %3315 = fadd fast float %2940, %2339
  %3316 = fmul fast float %3315, 0x3FF337FAE0000000
  %3317 = fmul fast float %2339, %2339
  %3318 = fmul fast float %2940, %2940
  %3319 = fadd fast float %3318, %3317
  %3320 = fmul fast float %3319, 0x3FE5152B00000000
  %3321 = fmul fast float %2339, 0xBFCC1F85E0000000
  %3322 = fmul fast float %3321, %2940
  %3323 = fadd fast float %3322, 0xBFE1363700000000
  %3324 = fadd fast float %3323, %3316
  %3325 = fsub fast float %3324, %3320
  %3326 = fmul fast float %3315, 0x3FBA6F0D00000000
  %3327 = fmul fast float %3319, 0x3FD0432880000000
  %3328 = fmul fast float %2339, 0xBFEF110800000000
  %3329 = fmul fast float %3328, %2940
  %3330 = fadd fast float %3329, 1.000000e+00
  %3331 = fsub fast float %3330, %3326
  %3332 = fadd fast float %3331, %3327
  %3333 = fdiv fast float %3325, %3332
  %3334 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3335 = fsub fast float %3334, %2339
  %3336 = fmul fast float %3335, %3259
  %3337 = fadd fast float %3336, %2339
  %3338 = fmul fast float %3262, %3046
  %3339 = fmul fast float %3262, %3047
  %3340 = fmul fast float %3262, %3048
  %3341 = fadd fast float %3338, %2335
  %3342 = fadd fast float %3339, %2336
  %3343 = fadd fast float %3340, %2337
  %3344 = fmul fast float %3265, %3101
  %3345 = fadd fast float %3344, %2341
  %3346 = fmul fast float %3268, %3098
  %3347 = fmul fast float %3268, %3099
  %3348 = fmul fast float %3268, %3100
  %3349 = fadd fast float %3346, %2332
  %3350 = fadd fast float %3347, %2333
  %3351 = fadd fast float %3348, %2334
  br label %3380

; <label>:3352                                    ; preds = %3304
  %3353 = icmp eq i32 %3248, 8
  br i1 %3353, label %3354, label %3380

; <label>:3354                                    ; preds = %3352
  %3355 = fmul fast float %3253, %2941
  %3356 = fmul fast float %3253, %2942
  %3357 = fadd fast float %3355, %2324
  %3358 = fadd fast float %3356, %2325
  %3359 = call float @dx.op.binary.f32(i32 36, float %2340, float %2943)  ; FMin(a,b)
  %3360 = fsub fast float %3359, %2340
  %3361 = fmul fast float %3360, %3256
  %3362 = fadd fast float %3361, %2340
  %3363 = fsub fast float %2940, %2339
  %3364 = fmul fast float %3259, %3363
  %3365 = fadd fast float %3364, %2339
  %3366 = fmul fast float %3262, %3046
  %3367 = fmul fast float %3262, %3047
  %3368 = fmul fast float %3262, %3048
  %3369 = fadd fast float %3366, %2335
  %3370 = fadd fast float %3367, %2336
  %3371 = fadd fast float %3368, %2337
  %3372 = fmul fast float %3265, %3101
  %3373 = fadd fast float %3372, %2341
  %3374 = fmul fast float %3268, %3098
  %3375 = fmul fast float %3268, %3099
  %3376 = fmul fast float %3268, %3100
  %3377 = fadd fast float %3374, %2332
  %3378 = fadd fast float %3375, %2333
  %3379 = fadd fast float %3376, %2334
  br label %3380

; <label>:3380                                    ; preds = %3354, %3352, %3306, %3270, %3239, %2639, %2343, %2323
  %3381 = phi float [ %2324, %3239 ], [ %2324, %2639 ], [ %2324, %2323 ], [ %3357, %3354 ], [ %2324, %3352 ], [ %3309, %3306 ], [ %3275, %3270 ], [ %2324, %2343 ]
  %3382 = phi float [ %2325, %3239 ], [ %2325, %2639 ], [ %2325, %2323 ], [ %3358, %3354 ], [ %2325, %3352 ], [ %3310, %3306 ], [ %3276, %3270 ], [ %2325, %2343 ]
  %3383 = phi float [ %3240, %3239 ], [ %2326, %2639 ], [ %2326, %2323 ], [ %3240, %3354 ], [ %3240, %3352 ], [ %3240, %3306 ], [ %3240, %3270 ], [ %2326, %2343 ]
  %3384 = phi float [ %3241, %3239 ], [ %2327, %2639 ], [ %2327, %2323 ], [ %3241, %3354 ], [ %3241, %3352 ], [ %3241, %3306 ], [ %3241, %3270 ], [ %2327, %2343 ]
  %3385 = phi float [ %3242, %3239 ], [ %2328, %2639 ], [ %2328, %2323 ], [ %3242, %3354 ], [ %3242, %3352 ], [ %3242, %3306 ], [ %3242, %3270 ], [ %2328, %2343 ]
  %3386 = phi float [ %3243, %3239 ], [ %2329, %2639 ], [ %2329, %2323 ], [ %3243, %3354 ], [ %3243, %3352 ], [ %3243, %3306 ], [ %3243, %3270 ], [ %2329, %2343 ]
  %3387 = phi float [ %3244, %3239 ], [ %2330, %2639 ], [ %2330, %2323 ], [ %3244, %3354 ], [ %3244, %3352 ], [ %3244, %3306 ], [ %3244, %3270 ], [ %2330, %2343 ]
  %3388 = phi float [ %3245, %3239 ], [ %2331, %2639 ], [ %2331, %2323 ], [ %3245, %3354 ], [ %3245, %3352 ], [ %3245, %3306 ], [ %3245, %3270 ], [ %2331, %2343 ]
  %3389 = phi float [ %2332, %3239 ], [ %2332, %2639 ], [ %2332, %2323 ], [ %3377, %3354 ], [ %2332, %3352 ], [ %3349, %3306 ], [ %3301, %3270 ], [ %2332, %2343 ]
  %3390 = phi float [ %2333, %3239 ], [ %2333, %2639 ], [ %2333, %2323 ], [ %3378, %3354 ], [ %2333, %3352 ], [ %3350, %3306 ], [ %3302, %3270 ], [ %2333, %2343 ]
  %3391 = phi float [ %2334, %3239 ], [ %2334, %2639 ], [ %2334, %2323 ], [ %3379, %3354 ], [ %2334, %3352 ], [ %3351, %3306 ], [ %3303, %3270 ], [ %2334, %2343 ]
  %3392 = phi float [ %2335, %3239 ], [ %2335, %2639 ], [ %2335, %2323 ], [ %3369, %3354 ], [ %2335, %3352 ], [ %3341, %3306 ], [ %3289, %3270 ], [ %2335, %2343 ]
  %3393 = phi float [ %2336, %3239 ], [ %2336, %2639 ], [ %2336, %2323 ], [ %3370, %3354 ], [ %2336, %3352 ], [ %3342, %3306 ], [ %3290, %3270 ], [ %2336, %2343 ]
  %3394 = phi float [ %2337, %3239 ], [ %2337, %2639 ], [ %2337, %2323 ], [ %3371, %3354 ], [ %2337, %3352 ], [ %3343, %3306 ], [ %3291, %3270 ], [ %2337, %2343 ]
  %3395 = phi float [ %3246, %3239 ], [ %2338, %2639 ], [ %2338, %2323 ], [ %3246, %3354 ], [ %3246, %3352 ], [ %3246, %3306 ], [ %3246, %3270 ], [ %2338, %2343 ]
  %3396 = phi float [ %2339, %3239 ], [ %2339, %2639 ], [ %2339, %2323 ], [ %3365, %3354 ], [ %2339, %3352 ], [ %3337, %3306 ], [ %3282, %3270 ], [ %2339, %2343 ]
  %3397 = phi float [ %2340, %3239 ], [ %2340, %2639 ], [ %2340, %2323 ], [ %3362, %3354 ], [ %2340, %3352 ], [ %3314, %3306 ], [ %3279, %3270 ], [ %2340, %2343 ]
  %3398 = phi float [ %2341, %3239 ], [ %2341, %2639 ], [ %2341, %2323 ], [ %3373, %3354 ], [ %2341, %3352 ], [ %3345, %3306 ], [ %3294, %3270 ], [ %2341, %2343 ]
  %3399 = phi float [ %3247, %3239 ], [ %2342, %2639 ], [ %2342, %2323 ], [ %3247, %3354 ], [ %3247, %3352 ], [ %3247, %3306 ], [ %3247, %3270 ], [ %2342, %2343 ]
  br i1 %442, label %4437, label %3400

; <label>:3400                                    ; preds = %3380
  %3401 = icmp ult i32 %496, 4
  %3402 = add i32 %56, 72
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = add i32 %56, 76
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = or i32 %3407, %3404
  %3409 = icmp eq i32 %3408, 0
  br i1 %3409, label %4437, label %3410

; <label>:3410                                    ; preds = %3400
  %3411 = and i32 %3404, 262144
  %3412 = icmp ne i32 %3411, 0
  %3413 = select i1 %3412, float %59, float 1.000000e+00
  %3414 = select i1 %3412, float %60, float 0.000000e+00
  %3415 = select i1 %3412, float %61, float 0.000000e+00
  %3416 = select i1 %3412, float %62, float 1.000000e+00
  %3417 = select i1 %3412, float %63, float %84
  %3418 = select i1 %3412, float %64, float %85
  %3419 = add i32 %56, 332
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = lshr i32 %3421, 16
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = fmul fast float %3423, 0x3F50624DE0000000
  %3425 = add i32 %56, 136
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = lshr i32 %3427, 16
  %3429 = and i32 %3428, 255
  %3430 = lshr i32 %3427, 24
  %3431 = add i32 %56, 340
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 65535
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = lshr i32 %3433, 16
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = add i32 %56, 80
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = lshr i32 %3440, 22
  %3442 = shl nuw nsw i32 %3441, 5
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = shl i32 %3440, 4
  %3445 = and i32 %3444, 32752
  %3446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3445)  ; LegacyF16ToF32(value)
  %3447 = lshr i32 %3440, 7
  %3448 = and i32 %3447, 32752
  %3449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3448)  ; LegacyF16ToF32(value)
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 3
  %3452 = fmul fast float %3451, 1.000000e+03
  %3453 = fmul fast float %432, %3452
  %3454 = call float @dx.op.unary.f32(i32 22, float %3453)  ; Frc(value)
  %3455 = fadd fast float %3454, %422
  %3456 = fmul fast float %433, %3452
  %3457 = call float @dx.op.unary.f32(i32 22, float %3456)  ; Frc(value)
  %3458 = fadd fast float %3457, %424
  %3459 = fmul fast float %3424, %3452
  %3460 = call float @dx.op.unary.f32(i32 22, float %3459)  ; Frc(value)
  %3461 = fmul fast float %3460, 0x401921FB60000000
  %3462 = fadd fast float %3461, %3443
  %3463 = call float @dx.op.unary.f32(i32 13, float %3462)  ; Sin(value)
  %3464 = call float @dx.op.unary.f32(i32 12, float %3462)  ; Cos(value)
  %3465 = fsub fast float -0.000000e+00, %3463
  %3466 = fadd fast float %3417, -5.000000e-01
  %3467 = fadd fast float %3418, -5.000000e-01
  %3468 = fmul fast float %3435, %3466
  %3469 = fmul fast float %3437, %3467
  %3470 = fadd fast float %3468, 5.000000e-01
  %3471 = fadd fast float %3469, 5.000000e-01
  %3472 = fmul fast float %3446, %3470
  %3473 = fmul fast float %3449, %3471
  %3474 = fmul fast float %3464, %3472
  %3475 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3473, float %3474)  ; FMad(a,b,c)
  %3476 = fmul fast float %3463, %3472
  %3477 = call float @dx.op.tertiary.f32(i32 46, float %3464, float %3473, float %3476)  ; FMad(a,b,c)
  %3478 = fadd fast float %3455, %3475
  %3479 = fadd fast float %3458, %3477
  %3480 = icmp ugt i32 %3429, 1
  %3481 = icmp ugt i32 %3427, 33554431
  %3482 = or i1 %3481, %3480
  br i1 %3482, label %3483, label %3508

; <label>:3483                                    ; preds = %3410
  %3484 = add i32 %56, 276
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = lshr i32 %3486, 16
  %3488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3487)  ; LegacyF16ToF32(value)
  %3489 = fmul fast float %3451, %3488
  %3490 = call float @dx.op.unary.f32(i32 22, float %3489)  ; Frc(value)
  %3491 = mul nuw nsw i32 %3429, %3430
  %3492 = uitofp i32 %3491 to float
  %3493 = fmul fast float %3490, %3492
  %3494 = call float @dx.op.unary.f32(i32 27, float %3493)  ; Round_ni(value)
  %3495 = fptoui float %3494 to i32
  %3496 = urem i32 %3495, %3429
  %3497 = udiv i32 %3495, %3430
  %3498 = call float @dx.op.unary.f32(i32 22, float %3478)  ; Frc(value)
  %3499 = call float @dx.op.unary.f32(i32 22, float %3479)  ; Frc(value)
  %3500 = uitofp i32 %3496 to float
  %3501 = uitofp i32 %3497 to float
  %3502 = fadd fast float %3498, %3500
  %3503 = fadd fast float %3499, %3501
  %3504 = uitofp i32 %3429 to float
  %3505 = uitofp i32 %3430 to float
  %3506 = fdiv fast float %3502, %3504
  %3507 = fdiv fast float %3503, %3505
  br label %3508

; <label>:3508                                    ; preds = %3483, %3410
  %3509 = phi float [ %3506, %3483 ], [ %3478, %3410 ]
  %3510 = phi float [ %3507, %3483 ], [ %3479, %3410 ]
  %3511 = and i32 %3404, 16777216
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3622, label %3513

; <label>:3513                                    ; preds = %3508
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3518 = fadd fast float %3515, %157
  %3519 = fadd fast float %3516, %158
  %3520 = fadd fast float %3517, %159
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = icmp eq i32 %57, 65535
  br i1 %3524, label %3619, label %3525

; <label>:3525                                    ; preds = %3513
  %3526 = lshr i32 %57, 1
  %3527 = shl i32 %3526, 2
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %57, 1
  %3531 = icmp ne i32 %3530, 0
  %3532 = lshr i32 %3529, 16
  %3533 = and i32 %3529, 65535
  %3534 = select i1 %3531, i32 %3532, i32 %3533
  %3535 = icmp eq i32 %3534, 65535
  br i1 %3535, label %3615, label %3536

; <label>:3536                                    ; preds = %3525
  %3537 = mul nuw nsw i32 %3534, 40
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = add nuw nsw i32 %3537, 12
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = add nuw nsw i32 %3537, 24
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = add nuw nsw i32 %3537, 36
  %3553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = fsub fast float %3518, %3539
  %3556 = fsub fast float %3519, %3540
  %3557 = fsub fast float %3520, %3541
  %3558 = fmul fast float %3554, %3555
  %3559 = fmul fast float %3554, %3556
  %3560 = fmul fast float %3554, %3557
  %3561 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3562 = call float @dx.op.unary.f32(i32 27, float %3559)  ; Round_ni(value)
  %3563 = call float @dx.op.unary.f32(i32 27, float %3560)  ; Round_ni(value)
  %3564 = fadd fast float %3561, 5.000000e-01
  %3565 = fadd fast float %3562, 5.000000e-01
  %3566 = fadd fast float %3563, 5.000000e-01
  %3567 = fmul fast float %3564, %3544
  %3568 = fmul fast float %3565, %3545
  %3569 = fmul fast float %3566, %3546
  %3570 = shl i32 %57, 2
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = add i32 %3572, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call float @dx.op.unary.f32(i32 22, float %3567)  ; Frc(value)
  %3576 = call float @dx.op.unary.f32(i32 22, float %3568)  ; Frc(value)
  %3577 = call float @dx.op.unary.f32(i32 22, float %3569)  ; Frc(value)
  %3578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3574, %dx.types.Handle %51, float %3575, float %3576, float %3577, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = fmul fast float %3579, 1.023000e+03
  %3583 = fmul fast float %3580, 1.023000e+03
  %3584 = fmul fast float %3581, 1.023000e+03
  %3585 = fadd fast float %3582, 5.000000e-01
  %3586 = fadd fast float %3583, 5.000000e-01
  %3587 = fadd fast float %3584, 5.000000e-01
  %3588 = call float @dx.op.unary.f32(i32 27, float %3585)  ; Round_ni(value)
  %3589 = call float @dx.op.unary.f32(i32 27, float %3586)  ; Round_ni(value)
  %3590 = call float @dx.op.unary.f32(i32 27, float %3587)  ; Round_ni(value)
  %3591 = fsub fast float %3558, %3561
  %3592 = fsub fast float %3559, %3562
  %3593 = fsub fast float %3560, %3563
  %3594 = fmul fast float %3591, 7.500000e-01
  %3595 = fmul fast float %3592, 7.500000e-01
  %3596 = fmul fast float %3593, 7.500000e-01
  %3597 = fadd fast float %3561, 1.250000e-01
  %3598 = fadd fast float %3597, %3594
  %3599 = fadd fast float %3598, %3588
  %3600 = fadd fast float %3562, 1.250000e-01
  %3601 = fadd fast float %3600, %3595
  %3602 = fadd fast float %3601, %3589
  %3603 = fadd fast float %3563, 1.250000e-01
  %3604 = fadd fast float %3603, %3596
  %3605 = fadd fast float %3604, %3590
  %3606 = fmul fast float %3599, %3549
  %3607 = fmul fast float %3602, %3550
  %3608 = fmul fast float %3605, %3551
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = add i32 %3610, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3612, %dx.types.Handle %49, float %3606, float %3607, float %3608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  br label %3615

; <label>:3615                                    ; preds = %3536, %3525
  %3616 = phi float [ %3614, %3536 ], [ -1.000000e+00, %3525 ]
  %3617 = fadd fast float %3616, %3523
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  br label %3619

; <label>:3619                                    ; preds = %3615, %3513
  %3620 = phi float [ %3618, %3615 ], [ %3523, %3513 ]
  %3621 = fmul fast float %3620, %491
  br label %3622

; <label>:3622                                    ; preds = %3619, %3508
  %3623 = phi float [ %3621, %3619 ], [ %491, %3508 ]
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = and i32 %3625, 256
  %3627 = icmp eq i32 %3626, 0
  br i1 %3627, label %3674, label %3628

; <label>:3628                                    ; preds = %3622
  %3629 = add i32 %56, 500
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = add i32 %3631, 0
  %3633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3633, %dx.types.Handle %99, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = add i32 %56, 148
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = shl i32 %3638, 4
  %3640 = and i32 %3639, 32752
  %3641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3640)  ; LegacyF16ToF32(value)
  %3642 = lshr i32 %3638, 7
  %3643 = and i32 %3642, 32752
  %3644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3643)  ; LegacyF16ToF32(value)
  %3645 = fsub fast float 1.000000e+00, %3623
  %3646 = call float @dx.op.binary.f32(i32 35, float %3645, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3647 = bitcast float %3623 to i32
  %3648 = sitofp i32 %3647 to float
  %3649 = fadd fast float %3648, 0xC1CFBF8940000000
  %3650 = fmul fast float %3644, %3649
  %3651 = fadd fast float %3650, 0x41CFBF8940000000
  %3652 = fptosi float %3651 to i32
  %3653 = bitcast i32 %3652 to float
  %3654 = bitcast float %3646 to i32
  %3655 = sitofp i32 %3654 to float
  %3656 = fadd fast float %3655, 0xC1CFBF8940000000
  %3657 = fmul fast float %3656, %3644
  %3658 = fadd fast float %3657, 0x41CFBF8940000000
  %3659 = fptosi float %3658 to i32
  %3660 = bitcast i32 %3659 to float
  %3661 = fmul fast float %3653, %3641
  %3662 = fmul fast float %3660, %3641
  %3663 = fsub fast float %3646, %3661
  %3664 = fadd fast float %3662, %3646
  %3665 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3667 = fsub fast float %3635, %3665
  %3668 = fsub fast float %3666, %3665
  %3669 = bitcast float %3668 to i32
  %3670 = sub nsw i32 2129859010, %3669
  %3671 = bitcast i32 %3670 to float
  %3672 = fmul fast float %3671, %3667
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  br label %3674

; <label>:3674                                    ; preds = %3628, %3622
  %3675 = phi float [ %3673, %3628 ], [ %3623, %3622 ]
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = and i32 %3677, 128
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3696, label %3680

; <label>:3680                                    ; preds = %3674
  %3681 = add i32 %56, 484
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = add i32 %3683, 0
  %3685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3685, %dx.types.Handle %99, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3687 = extractvalue %dx.types.ResRet.f32 %3686, 0
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 524288
  %3691 = icmp ne i32 %3690, 0
  %3692 = fcmp fast ogt float %3687, 0x3FE0101020000000
  %3693 = select i1 %3692, float 1.000000e+00, float 0.000000e+00
  %3694 = select i1 %3691, float %3693, float %3687
  %3695 = fmul fast float %3694, %3675
  br label %3696

; <label>:3696                                    ; preds = %3680, %3674
  %3697 = phi float [ %3695, %3680 ], [ %3675, %3674 ]
  %3698 = fcmp fast ult float %3697, 0x3F70101020000000
  br i1 %3698, label %4437, label %3699

; <label>:3699                                    ; preds = %3696
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = and i32 %3701, 16
  %3703 = icmp eq i32 %3702, 0
  br i1 %3703, label %3902, label %3704

; <label>:3704                                    ; preds = %3699
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = add i32 %56, 436
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = add i32 %3709, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3711, %dx.types.Handle %98, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3717 = and i32 %3706, 255
  %3718 = uitofp i32 %3717 to float
  %3719 = lshr i32 %3706, 8
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3716, %3718
  %3723 = fadd fast float %3722, %3721
  %3724 = fmul fast float %3723, 0x3F70101000000000
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = and i32 %3726, 512
  %3728 = icmp eq i32 %3727, 0
  br i1 %3728, label %3737, label %3729

; <label>:3729                                    ; preds = %3704
  %3730 = add i32 %56, 520
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = add i32 %3732, 0
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3734, %dx.types.Handle %99, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  br label %3737

; <label>:3737                                    ; preds = %3729, %3704
  %3738 = phi float [ %3736, %3729 ], [ 1.000000e+00, %3704 ]
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = and i32 %3740, 33554432
  %3742 = icmp eq i32 %3741, 0
  br i1 %3742, label %3849, label %3743

; <label>:3743                                    ; preds = %3737
  %3744 = add i32 %56, 272
  %3745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.i32 %3745, 0
  %3747 = and i32 %3746, 65535
  %3748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3747)  ; LegacyF16ToF32(value)
  %3749 = lshr i32 %3746, 16
  %3750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3749)  ; LegacyF16ToF32(value)
  %3751 = add i32 %56, 276
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = and i32 %3753, 65535
  %3755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3754)  ; LegacyF16ToF32(value)
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = lshr i32 %3757, 24
  %3759 = uitofp i32 %3758 to float
  %3760 = fmul fast float %3759, 0x3F70101020000000
  %3761 = and i32 %3757, 255
  %3762 = uitofp i32 %3761 to float
  %3763 = fmul fast float %3762, 0x3F70101020000000
  %3764 = lshr i32 %3757, 8
  %3765 = and i32 %3764, 255
  %3766 = uitofp i32 %3765 to float
  %3767 = fmul fast float %3766, 0x3F70101020000000
  %3768 = lshr i32 %3757, 16
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F70101020000000
  %3772 = add i32 %56, 268
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = lshr i32 %3774, 24
  %3776 = uitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 0x3F70101020000000
  %3778 = and i32 %3774, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = fmul fast float %3779, 0x3F70101020000000
  %3781 = lshr i32 %3774, 8
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = fmul fast float %3783, 0x3F70101020000000
  %3785 = lshr i32 %3774, 16
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = fmul fast float %3787, 0x3F70101020000000
  %3789 = bitcast float %3713 to i32
  %3790 = ashr i32 %3789, 1
  %3791 = sub nsw i32 1597463174, %3790
  %3792 = bitcast i32 %3791 to float
  %3793 = fmul fast float %3713, 5.000000e-01
  %3794 = fmul fast float %3792, %3792
  %3795 = fmul fast float %3794, %3793
  %3796 = fsub fast float 1.500000e+00, %3795
  %3797 = fmul fast float %3792, %3713
  %3798 = fmul fast float %3797, %3796
  %3799 = bitcast float %3714 to i32
  %3800 = ashr i32 %3799, 1
  %3801 = sub nsw i32 1597463174, %3800
  %3802 = bitcast i32 %3801 to float
  %3803 = fmul fast float %3714, 5.000000e-01
  %3804 = fmul fast float %3802, %3802
  %3805 = fmul fast float %3804, %3803
  %3806 = fsub fast float 1.500000e+00, %3805
  %3807 = fmul fast float %3802, %3714
  %3808 = fmul fast float %3807, %3806
  %3809 = bitcast float %3715 to i32
  %3810 = ashr i32 %3809, 1
  %3811 = sub nsw i32 1597463174, %3810
  %3812 = bitcast i32 %3811 to float
  %3813 = fmul fast float %3715, 5.000000e-01
  %3814 = fmul fast float %3812, %3812
  %3815 = fmul fast float %3814, %3813
  %3816 = fsub fast float 1.500000e+00, %3815
  %3817 = fmul fast float %3812, %3715
  %3818 = fmul fast float %3817, %3816
  %3819 = fsub fast float %3798, %3780
  %3820 = fsub fast float %3808, %3784
  %3821 = fsub fast float %3818, %3788
  %3822 = fmul fast float %3819, %3748
  %3823 = fmul fast float %3820, %3750
  %3824 = fmul fast float %3821, %3755
  %3825 = fadd fast float %3822, %3763
  %3826 = fadd fast float %3823, %3767
  %3827 = fadd fast float %3824, %3771
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = fmul fast float %3828, %3828
  %3832 = fmul fast float %3829, %3829
  %3833 = fmul fast float %3830, %3830
  %3834 = fsub fast float %3831, %3713
  %3835 = fsub fast float %3832, %3714
  %3836 = fsub fast float %3833, %3715
  %3837 = fmul fast float %3834, %3738
  %3838 = fmul fast float %3835, %3738
  %3839 = fmul fast float %3836, %3738
  %3840 = fadd fast float %3837, %3713
  %3841 = fadd fast float %3838, %3714
  %3842 = fadd fast float %3839, %3715
  %3843 = fadd fast float %3760, %3724
  %3844 = fsub fast float %3843, %3777
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = fsub fast float %3845, %3724
  %3847 = fmul fast float %3846, %3738
  %3848 = fadd fast float %3847, %3724
  br label %3902

; <label>:3849                                    ; preds = %3737
  %3850 = and i32 %3740, 134217728
  %3851 = icmp eq i32 %3850, 0
  br i1 %3851, label %3886, label %3852

; <label>:3852                                    ; preds = %3849
  %3853 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %3854 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3855 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3856 = fadd fast float %3853, -5.000000e-01
  %3857 = fadd fast float %3854, -5.000000e-01
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fmul fast float %3856, %3738
  %3860 = fmul fast float %3857, %3738
  %3861 = fmul fast float %3858, %3738
  %3862 = fadd fast float %3859, 5.000000e-01
  %3863 = fadd fast float %3860, 5.000000e-01
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = call float @dx.op.unary.f32(i32 24, float %3713)  ; Sqrt(value)
  %3866 = call float @dx.op.unary.f32(i32 24, float %3714)  ; Sqrt(value)
  %3867 = call float @dx.op.unary.f32(i32 24, float %3715)  ; Sqrt(value)
  %3868 = fmul fast float %3862, 2.000000e+00
  %3869 = fsub fast float 1.000000e+00, %3868
  %3870 = fmul fast float %3869, %3865
  %3871 = fadd fast float %3870, %3868
  %3872 = fmul fast float %3871, %3865
  %3873 = fmul fast float %3863, 2.000000e+00
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3874, %3866
  %3876 = fadd fast float %3875, %3873
  %3877 = fmul fast float %3876, %3866
  %3878 = fmul fast float %3864, 2.000000e+00
  %3879 = fsub fast float 1.000000e+00, %3878
  %3880 = fmul fast float %3879, %3867
  %3881 = fadd fast float %3880, %3878
  %3882 = fmul fast float %3881, %3867
  %3883 = fmul fast float %3872, %3872
  %3884 = fmul fast float %3877, %3877
  %3885 = fmul fast float %3882, %3882
  br label %3902

; <label>:3886                                    ; preds = %3849
  %3887 = fmul fast float %409, %409
  %3888 = fmul fast float %413, %413
  %3889 = fmul fast float %417, %417
  %3890 = fadd fast float %3887, -1.000000e+00
  %3891 = fadd fast float %3888, -1.000000e+00
  %3892 = fadd fast float %3889, -1.000000e+00
  %3893 = fmul fast float %3738, %3890
  %3894 = fmul fast float %3738, %3891
  %3895 = fmul fast float %3738, %3892
  %3896 = fadd fast float %3893, 1.000000e+00
  %3897 = fadd fast float %3894, 1.000000e+00
  %3898 = fadd fast float %3895, 1.000000e+00
  %3899 = fmul fast float %3896, %3713
  %3900 = fmul fast float %3897, %3714
  %3901 = fmul fast float %3898, %3715
  br label %3902

; <label>:3902                                    ; preds = %3886, %3852, %3743, %3699
  %3903 = phi float [ %3848, %3743 ], [ %3724, %3852 ], [ %3724, %3886 ], [ 0x3FA23C0BE0000000, %3699 ]
  %3904 = phi float [ %3840, %3743 ], [ %3883, %3852 ], [ %3899, %3886 ], [ 1.000000e+00, %3699 ]
  %3905 = phi float [ %3841, %3743 ], [ %3884, %3852 ], [ %3900, %3886 ], [ 1.000000e+00, %3699 ]
  %3906 = phi float [ %3842, %3743 ], [ %3885, %3852 ], [ %3901, %3886 ], [ 1.000000e+00, %3699 ]
  %3907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.i32 %3907, 1
  %3909 = and i32 %3908, 1
  %3910 = icmp ne i32 %3909, 0
  %3911 = add i32 %56, 356
  %3912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.i32 %3912, 0
  %3914 = and i32 %3913, 32
  %3915 = icmp ne i32 %3914, 0
  %3916 = and i1 %3910, %3915
  %3917 = select i1 %3916, float 1.000000e+00, float %3904
  %3918 = select i1 %3916, float 0x3FD3333340000000, float %3905
  %3919 = select i1 %3916, float 0x3FD3333340000000, float %3906
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = and i32 %3921, 32
  %3923 = icmp eq i32 %3922, 0
  br i1 %3923, label %3996, label %3924

; <label>:3924                                    ; preds = %3902
  %3925 = add i32 %56, 140
  %3926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.i32 %3926, 0
  %3928 = add i32 %56, 452
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = add i32 %3930, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3932, %dx.types.Handle %98, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = and i32 %3927, 255
  %3939 = uitofp i32 %3938 to float
  %3940 = lshr i32 %3927, 8
  %3941 = and i32 %3940, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = lshr i32 %3927, 16
  %3944 = and i32 %3943, 255
  %3945 = uitofp i32 %3944 to float
  %3946 = fmul fast float %3945, 0x3F70101000000000
  %3947 = fmul fast float %3934, %3939
  %3948 = fadd fast float %3947, %3942
  %3949 = fmul fast float %3948, 0x3F70101000000000
  %3950 = fadd fast float %3935, -5.000000e-01
  %3951 = fadd fast float %3937, -5.000000e-01
  %3952 = fmul fast float %3950, %3946
  %3953 = fmul fast float %3951, %3946
  %3954 = fadd fast float %3952, 5.000000e-01
  %3955 = fadd fast float %3953, 5.000000e-01
  %3956 = fmul fast float %3954, 2.000000e+00
  %3957 = fadd fast float %3956, -1.000000e+00
  %3958 = fmul fast float %3955, 2.000000e+00
  %3959 = fadd fast float %3958, -1.000000e+00
  %3960 = fadd fast float %3957, %3959
  %3961 = fmul fast float %3960, 5.000000e-01
  %3962 = fsub fast float %3957, %3959
  %3963 = fmul fast float %3962, 5.000000e-01
  %3964 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3965 = fsub fast float 1.000000e+00, %3964
  %3966 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3967 = fsub fast float %3965, %3966
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3963, float %3967, float %3961, float %3963, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = call float @dx.op.unary.f32(i32 25, float %3968)  ; Rsqrt(value)
  %3970 = fmul fast float %3961, %3969
  %3971 = fmul fast float %3963, %3969
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = and i32 %3973, 67108864
  %3975 = icmp eq i32 %3974, 0
  br i1 %3975, label %3992, label %3976

; <label>:3976                                    ; preds = %3924
  %3977 = add i32 %56, 328
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = and i32 %3979, 65535
  %3981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3980)  ; LegacyF16ToF32(value)
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = and i32 %3983, 65535
  %3985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3984)  ; LegacyF16ToF32(value)
  %3986 = lshr i32 %3979, 16
  %3987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3986)  ; LegacyF16ToF32(value)
  %3988 = fsub fast float %3949, %3987
  %3989 = fmul fast float %3988, %3981
  %3990 = fadd fast float %3989, %3985
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  br label %3992

; <label>:3992                                    ; preds = %3976, %3924
  %3993 = phi float [ %3991, %3976 ], [ %3949, %3924 ]
  %3994 = call float @dx.op.dot2.f32(i32 54, float %3970, float %3971, float %3413, float %3414)  ; Dot2(ax,ay,bx,by)
  %3995 = call float @dx.op.dot2.f32(i32 54, float %3970, float %3971, float %3415, float %3416)  ; Dot2(ax,ay,bx,by)
  br label %3996

; <label>:3996                                    ; preds = %3992, %3902
  %3997 = phi float [ %3993, %3992 ], [ 0x3FD6666660000000, %3902 ]
  %3998 = phi float [ %3994, %3992 ], [ 0.000000e+00, %3902 ]
  %3999 = phi float [ %3995, %3992 ], [ 0.000000e+00, %3902 ]
  %4000 = phi float [ %3936, %3992 ], [ 1.000000e+00, %3902 ]
  %4001 = add i32 %56, 208
  %4002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.i32 %4002, 0
  %4004 = lshr i32 %4003, 22
  %4005 = shl nuw nsw i32 %4004, 5
  %4006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4005)  ; LegacyF16ToF32(value)
  %4007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.i32 %4007, 0
  %4009 = and i32 %4008, 64
  %4010 = icmp eq i32 %4009, 0
  br i1 %4010, label %4044, label %4011

; <label>:4011                                    ; preds = %3996
  %4012 = add i32 %56, 468
  %4013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.i32 %4013, 0
  %4015 = add i32 %4014, 0
  %4016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 131072
  %4020 = icmp eq i32 %4019, 0
  %4021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4016, %dx.types.Handle %98, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = fmul fast float %4022, %397
  %4026 = fmul fast float %4023, %400
  %4027 = fmul fast float %4024, %403
  br i1 %4020, label %4034, label %4028

; <label>:4028                                    ; preds = %4011
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = fmul fast float %4030, %4025
  %4032 = fmul fast float %4030, %4026
  %4033 = fmul fast float %4030, %4027
  br label %4034

; <label>:4034                                    ; preds = %4028, %4011
  %4035 = phi float [ %4031, %4028 ], [ %4025, %4011 ]
  %4036 = phi float [ %4032, %4028 ], [ %4026, %4011 ]
  %4037 = phi float [ %4033, %4028 ], [ %4027, %4011 ]
  %4038 = fmul fast float %4035, %4006
  %4039 = select i1 %251, float %4038, float %4035
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4036, float %4037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = select i1 %251, float 0.000000e+00, float %4035
  %4042 = select i1 %251, float %4040, float %4036
  %4043 = select i1 %251, float 0.000000e+00, float %4037
  br label %4044

; <label>:4044                                    ; preds = %4034, %3996
  %4045 = phi float [ %4041, %4034 ], [ 0.000000e+00, %3996 ]
  %4046 = phi float [ %4042, %4034 ], [ 0.000000e+00, %3996 ]
  %4047 = phi float [ %4043, %4034 ], [ 0.000000e+00, %3996 ]
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = and i32 %4049, 1024
  %4051 = icmp eq i32 %4050, 0
  br i1 %4051, label %4082, label %4052

; <label>:4052                                    ; preds = %4044
  %4053 = add i32 %56, 200
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = and i32 %4055, 255
  %4057 = uitofp i32 %4056 to float
  %4058 = fmul fast float %4057, 0x3F70101020000000
  %4059 = lshr i32 %4055, 8
  %4060 = and i32 %4059, 255
  %4061 = uitofp i32 %4060 to float
  %4062 = fmul fast float %4061, 0x3F70101020000000
  %4063 = lshr i32 %4055, 16
  %4064 = and i32 %4063, 255
  %4065 = uitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3F70101020000000
  %4067 = fmul fast float %4058, %4058
  %4068 = fmul fast float %4062, %4062
  %4069 = fmul fast float %4066, %4066
  %4070 = add i32 %56, 536
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = add i32 %4072, 0
  %4074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4074, %dx.types.Handle %99, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4076 = extractvalue %dx.types.ResRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.ResRet.f32 %4075, 1
  %4078 = extractvalue %dx.types.ResRet.f32 %4075, 2
  %4079 = fmul fast float %4067, %4076
  %4080 = fmul fast float %4068, %4077
  %4081 = fmul fast float %4069, %4078
  br label %4082

; <label>:4082                                    ; preds = %4052, %4044
  %4083 = phi float [ %4079, %4052 ], [ 0.000000e+00, %4044 ]
  %4084 = phi float [ %4080, %4052 ], [ 0.000000e+00, %4044 ]
  %4085 = phi float [ %4081, %4052 ], [ 0.000000e+00, %4044 ]
  %4086 = fcmp fast ogt float %4083, 0.000000e+00
  %4087 = fcmp fast ogt float %4084, 0.000000e+00
  %4088 = fcmp fast ogt float %4085, 0.000000e+00
  %4089 = call float @dx.op.unary.f32(i32 23, float %4083)  ; Log(value)
  %4090 = call float @dx.op.unary.f32(i32 23, float %4084)  ; Log(value)
  %4091 = call float @dx.op.unary.f32(i32 23, float %4085)  ; Log(value)
  %4092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.i32 %4092, 0
  %4094 = lshr i32 %4093, 7
  %4095 = and i32 %4094, 32752
  %4096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4095)  ; LegacyF16ToF32(value)
  %4097 = fmul fast float %4089, 0xBFE62E4300000000
  %4098 = fmul fast float %4097, %4096
  %4099 = fmul fast float %4090, 0xBFE62E4300000000
  %4100 = fmul fast float %4099, %4096
  %4101 = fmul fast float %4091, 0xBFE62E4300000000
  %4102 = fmul fast float %4101, %4096
  %4103 = select i1 %4086, float %4098, float 1.270000e+02
  %4104 = select i1 %4087, float %4100, float 1.270000e+02
  %4105 = select i1 %4088, float %4102, float 1.270000e+02
  %4106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.i32 %4106, 0
  %4108 = and i32 %4107, 10240
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4154, label %4110

; <label>:4110                                    ; preds = %4082
  %4111 = add i32 %56, 552
  %4112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.i32 %4112, 0
  %4114 = add i32 %4113, 0
  %4115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4115, %dx.types.Handle %99, float %3509, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = and i32 %4120, 1048576
  %4122 = icmp ne i32 %4121, 0
  %4123 = and i32 %4120, 8192
  %4124 = icmp eq i32 %4123, 0
  br i1 %4124, label %4140, label %4125

; <label>:4125                                    ; preds = %4110
  %4126 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4127 = select i1 %4122, float %4126, float %4117
  %4128 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4129 = select i1 %4122, float %4128, float %4117
  %4130 = add i32 %56, 144
  %4131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.i32 %4131, 0
  %4133 = lshr i32 %4132, 16
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4135, 0x3F80101020000000
  %4137 = fmul fast float %4136, %4129
  %4138 = fmul fast float %4136, %4117
  %4139 = fmul fast float %4136, %4127
  br label %4140

; <label>:4140                                    ; preds = %4125, %4110
  %4141 = phi float [ %4137, %4125 ], [ 0.000000e+00, %4110 ]
  %4142 = phi float [ %4138, %4125 ], [ 0.000000e+00, %4110 ]
  %4143 = phi float [ %4139, %4125 ], [ 0.000000e+00, %4110 ]
  %4144 = and i32 %4120, 2048
  %4145 = icmp eq i32 %4144, 0
  br i1 %4145, label %4154, label %4146

; <label>:4146                                    ; preds = %4140
  %4147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.i32 %4147, 0
  %4149 = shl i32 %4148, 4
  %4150 = and i32 %4149, 32752
  %4151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4150)  ; LegacyF16ToF32(value)
  %4152 = fmul fast float %4151, %4118
  %4153 = call float @dx.op.binary.f32(i32 35, float %4152, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4154

; <label>:4154                                    ; preds = %4146, %4140, %4082
  %4155 = phi float [ %4141, %4146 ], [ %4141, %4140 ], [ 0.000000e+00, %4082 ]
  %4156 = phi float [ %4142, %4146 ], [ %4142, %4140 ], [ 0.000000e+00, %4082 ]
  %4157 = phi float [ %4143, %4146 ], [ %4143, %4140 ], [ 0.000000e+00, %4082 ]
  %4158 = phi float [ %4153, %4146 ], [ 0x3F70101020000000, %4140 ], [ 0x3F70101020000000, %4082 ]
  %4159 = add i32 %56, 144
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = and i32 %4161, 255
  %4163 = uitofp i32 %4162 to float
  %4164 = lshr i32 %4161, 8
  %4165 = and i32 %4164, 255
  %4166 = uitofp i32 %4165 to float
  %4167 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4168 = fmul fast float %4166, %4167
  %4169 = fadd fast float %4168, %4163
  %4170 = fmul fast float %4169, 0x3F70101020000000
  %4171 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  br i1 %3401, label %4172, label %4207

; <label>:4172                                    ; preds = %4154
  %4173 = fmul fast float %4158, 2.000000e+00
  %4174 = fcmp fast olt float %4103, 1.270000e+02
  %4175 = fcmp fast olt float %4104, 1.270000e+02
  %4176 = fcmp fast olt float %4105, 1.270000e+02
  %4177 = fmul fast float %4103, 0xBFF7154760000000
  %4178 = fmul fast float %4177, %4173
  %4179 = fmul fast float %4104, 0xBFF7154760000000
  %4180 = fmul fast float %4179, %4173
  %4181 = fmul fast float %4105, 0xBFF7154760000000
  %4182 = fmul fast float %4181, %4173
  %4183 = call float @dx.op.unary.f32(i32 21, float %4178)  ; Exp(value)
  %4184 = call float @dx.op.unary.f32(i32 21, float %4180)  ; Exp(value)
  %4185 = call float @dx.op.unary.f32(i32 21, float %4182)  ; Exp(value)
  %4186 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4187 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4188 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4189 = fadd fast float %4186, -1.000000e+00
  %4190 = select i1 %4174, float %4189, float -1.000000e+00
  %4191 = fadd fast float %4187, -1.000000e+00
  %4192 = select i1 %4175, float %4191, float -1.000000e+00
  %4193 = fadd fast float %4188, -1.000000e+00
  %4194 = select i1 %4176, float %4193, float -1.000000e+00
  %4195 = fmul fast float %4190, %3697
  %4196 = fmul fast float %4192, %3697
  %4197 = fmul fast float %4194, %3697
  %4198 = fadd fast float %4195, 1.000000e+00
  %4199 = fadd fast float %4196, 1.000000e+00
  %4200 = fadd fast float %4197, 1.000000e+00
  %4201 = fmul fast float %4198, %3383
  %4202 = fmul fast float %4199, %3384
  %4203 = fmul fast float %4200, %3385
  %4204 = fmul fast float %4198, %3386
  %4205 = fmul fast float %4199, %3387
  %4206 = fmul fast float %4200, %3388
  br label %4207

; <label>:4207                                    ; preds = %4172, %4154
  %4208 = phi float [ %4201, %4172 ], [ %3383, %4154 ]
  %4209 = phi float [ %4202, %4172 ], [ %3384, %4154 ]
  %4210 = phi float [ %4203, %4172 ], [ %3385, %4154 ]
  %4211 = phi float [ %4204, %4172 ], [ %3386, %4154 ]
  %4212 = phi float [ %4205, %4172 ], [ %3387, %4154 ]
  %4213 = phi float [ %4206, %4172 ], [ %3388, %4154 ]
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = and i32 %4215, 3
  %4217 = icmp eq i32 %4216, 3
  br i1 %4217, label %4296, label %4218

; <label>:4218                                    ; preds = %4207
  %4219 = and i32 %4215, 16
  %4220 = icmp ne i32 %4219, 0
  %4221 = select i1 %4220, float %3697, float 0.000000e+00
  %4222 = icmp eq i32 %4216, 0
  br i1 %4222, label %4223, label %4251

; <label>:4223                                    ; preds = %4218
  %4224 = and i32 %4215, 64
  %4225 = icmp ne i32 %4224, 0
  %4226 = select i1 %4225, float %3697, float 0.000000e+00
  %4227 = fsub fast float %3917, %4208
  %4228 = fsub fast float %3918, %4209
  %4229 = fsub fast float %3919, %4210
  %4230 = fmul fast float %4221, %4227
  %4231 = fmul fast float %4221, %4228
  %4232 = fmul fast float %4221, %4229
  %4233 = fadd fast float %4230, %4208
  %4234 = fadd fast float %4231, %4209
  %4235 = fadd fast float %4232, %4210
  %4236 = fsub fast float %3903, %3395
  %4237 = fmul fast float %4221, %4236
  %4238 = fadd fast float %4237, %3395
  %4239 = fsub fast float %4045, %4211
  %4240 = fsub fast float %4046, %4212
  %4241 = fsub fast float %4047, %4213
  %4242 = fmul fast float %4226, %4239
  %4243 = fmul fast float %4226, %4240
  %4244 = fmul fast float %4226, %4241
  %4245 = fadd fast float %4242, %4211
  %4246 = fadd fast float %4243, %4212
  %4247 = fadd fast float %4244, %4213
  %4248 = fsub fast float %4171, %3399
  %4249 = fmul fast float %4221, %4248
  %4250 = fadd fast float %4249, %3399
  br label %4296

; <label>:4251                                    ; preds = %4218
  %4252 = icmp eq i32 %4216, 1
  br i1 %4252, label %4253, label %4266

; <label>:4253                                    ; preds = %4251
  %4254 = fadd fast float %3917, -1.000000e+00
  %4255 = fadd fast float %3918, -1.000000e+00
  %4256 = fadd fast float %3919, -1.000000e+00
  %4257 = fmul fast float %4221, %4254
  %4258 = fmul fast float %4221, %4255
  %4259 = fmul fast float %4221, %4256
  %4260 = fadd fast float %4257, 1.000000e+00
  %4261 = fadd fast float %4258, 1.000000e+00
  %4262 = fadd fast float %4259, 1.000000e+00
  %4263 = fmul fast float %4260, %4208
  %4264 = fmul fast float %4261, %4209
  %4265 = fmul fast float %4262, %4210
  br label %4296

; <label>:4266                                    ; preds = %4251
  %4267 = icmp eq i32 %4216, 2
  br i1 %4267, label %4268, label %4296

; <label>:4268                                    ; preds = %4266
  %4269 = call float @dx.op.unary.f32(i32 24, float %3917)  ; Sqrt(value)
  %4270 = call float @dx.op.unary.f32(i32 24, float %3918)  ; Sqrt(value)
  %4271 = call float @dx.op.unary.f32(i32 24, float %3919)  ; Sqrt(value)
  %4272 = fadd fast float %4269, -5.000000e-01
  %4273 = fadd fast float %4270, -5.000000e-01
  %4274 = fadd fast float %4271, -5.000000e-01
  %4275 = fmul fast float %4272, %4221
  %4276 = fmul fast float %4273, %4221
  %4277 = fmul fast float %4274, %4221
  %4278 = fadd fast float %4275, 5.000000e-01
  %4279 = fadd fast float %4276, 5.000000e-01
  %4280 = fadd fast float %4277, 5.000000e-01
  %4281 = fmul fast float %4278, 2.000000e+00
  %4282 = fsub fast float 1.000000e+00, %4281
  %4283 = fmul fast float %4282, %4208
  %4284 = fadd fast float %4283, %4281
  %4285 = fmul fast float %4284, %4208
  %4286 = fmul fast float %4279, 2.000000e+00
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = fmul fast float %4287, %4209
  %4289 = fadd fast float %4288, %4286
  %4290 = fmul fast float %4289, %4209
  %4291 = fmul fast float %4280, 2.000000e+00
  %4292 = fsub fast float 1.000000e+00, %4291
  %4293 = fmul fast float %4292, %4210
  %4294 = fadd fast float %4293, %4291
  %4295 = fmul fast float %4294, %4210
  br label %4296

; <label>:4296                                    ; preds = %4268, %4266, %4253, %4223, %4207
  %4297 = phi float [ %4208, %4207 ], [ %4285, %4268 ], [ %4208, %4266 ], [ %4263, %4253 ], [ %4233, %4223 ]
  %4298 = phi float [ %4209, %4207 ], [ %4290, %4268 ], [ %4209, %4266 ], [ %4264, %4253 ], [ %4234, %4223 ]
  %4299 = phi float [ %4210, %4207 ], [ %4295, %4268 ], [ %4210, %4266 ], [ %4265, %4253 ], [ %4235, %4223 ]
  %4300 = phi float [ %4211, %4207 ], [ %4211, %4268 ], [ %4211, %4266 ], [ %4211, %4253 ], [ %4245, %4223 ]
  %4301 = phi float [ %4212, %4207 ], [ %4212, %4268 ], [ %4212, %4266 ], [ %4212, %4253 ], [ %4246, %4223 ]
  %4302 = phi float [ %4213, %4207 ], [ %4213, %4268 ], [ %4213, %4266 ], [ %4213, %4253 ], [ %4247, %4223 ]
  %4303 = phi float [ %3395, %4207 ], [ %3395, %4268 ], [ %3395, %4266 ], [ %3395, %4253 ], [ %4238, %4223 ]
  %4304 = phi float [ %3399, %4207 ], [ %3399, %4268 ], [ %3399, %4266 ], [ %3399, %4253 ], [ %4250, %4223 ]
  %4305 = and i32 %4215, 12
  %4306 = icmp eq i32 %4305, 12
  br i1 %4306, label %4437, label %4307

; <label>:4307                                    ; preds = %4296
  %4308 = and i32 %4215, 2097184
  %4309 = icmp eq i32 %4308, 2097184
  %4310 = select i1 %4309, float %3697, float 0.000000e+00
  %4311 = and i32 %4215, 4194336
  %4312 = icmp eq i32 %4311, 4194336
  %4313 = select i1 %4312, float %3697, float 0.000000e+00
  %4314 = and i32 %4215, 8388640
  %4315 = icmp eq i32 %4314, 8388640
  %4316 = select i1 %4315, float %3697, float 0.000000e+00
  %4317 = and i32 %4215, 1024
  %4318 = icmp ne i32 %4317, 0
  %4319 = select i1 %4318, float %3697, float 0.000000e+00
  %4320 = and i32 %4215, 2048
  %4321 = icmp ne i32 %4320, 0
  %4322 = select i1 %4321, float %3697, float 0.000000e+00
  %4323 = and i32 %4215, 8192
  %4324 = icmp ne i32 %4323, 0
  %4325 = select i1 %4324, float %3697, float 0.000000e+00
  %4326 = icmp eq i32 %4305, 0
  br i1 %4326, label %4327, label %4361

; <label>:4327                                    ; preds = %4307
  %4328 = fsub fast float %3998, %3381
  %4329 = fsub fast float %3999, %3382
  %4330 = fmul fast float %4310, %4328
  %4331 = fmul fast float %4310, %4329
  %4332 = fadd fast float %4330, %3381
  %4333 = fadd fast float %4331, %3382
  %4334 = fsub fast float %4000, %3397
  %4335 = fmul fast float %4313, %4334
  %4336 = fadd fast float %4335, %3397
  %4337 = fsub fast float %3997, %3396
  %4338 = fmul fast float %4316, %4337
  %4339 = fadd fast float %4338, %3396
  %4340 = fsub fast float %4103, %3392
  %4341 = fsub fast float %4104, %3393
  %4342 = fsub fast float %4105, %3394
  %4343 = fmul fast float %4319, %4340
  %4344 = fmul fast float %4319, %4341
  %4345 = fmul fast float %4319, %4342
  %4346 = fadd fast float %4343, %3392
  %4347 = fadd fast float %4344, %3393
  %4348 = fadd fast float %4345, %3394
  %4349 = fsub fast float %4158, %3398
  %4350 = fmul fast float %4322, %4349
  %4351 = fadd fast float %4350, %3398
  %4352 = fsub fast float %4155, %3389
  %4353 = fsub fast float %4156, %3390
  %4354 = fsub fast float %4157, %3391
  %4355 = fmul fast float %4325, %4352
  %4356 = fmul fast float %4325, %4353
  %4357 = fmul fast float %4325, %4354
  %4358 = fadd fast float %4355, %3389
  %4359 = fadd fast float %4356, %3390
  %4360 = fadd fast float %4357, %3391
  br label %4437

; <label>:4361                                    ; preds = %4307
  %4362 = icmp eq i32 %4305, 4
  br i1 %4362, label %4363, label %4409

; <label>:4363                                    ; preds = %4361
  %4364 = fmul fast float %4310, %3998
  %4365 = fmul fast float %4310, %3999
  %4366 = fadd fast float %4364, %3381
  %4367 = fadd fast float %4365, %3382
  %4368 = call float @dx.op.binary.f32(i32 36, float %3397, float %4000)  ; FMin(a,b)
  %4369 = fsub fast float %4368, %3397
  %4370 = fmul fast float %4369, %4313
  %4371 = fadd fast float %4370, %3397
  %4372 = fadd fast float %3997, %3396
  %4373 = fmul fast float %4372, 0x3FF337FAE0000000
  %4374 = fmul fast float %3396, %3396
  %4375 = fmul fast float %3997, %3997
  %4376 = fadd fast float %4375, %4374
  %4377 = fmul fast float %4376, 0x3FE5152B00000000
  %4378 = fmul fast float %3396, 0xBFCC1F85E0000000
  %4379 = fmul fast float %4378, %3997
  %4380 = fadd fast float %4379, 0xBFE1363700000000
  %4381 = fadd fast float %4380, %4373
  %4382 = fsub fast float %4381, %4377
  %4383 = fmul fast float %4372, 0x3FBA6F0D00000000
  %4384 = fmul fast float %4376, 0x3FD0432880000000
  %4385 = fmul fast float %3396, 0xBFEF110800000000
  %4386 = fmul fast float %4385, %3997
  %4387 = fadd fast float %4386, 1.000000e+00
  %4388 = fsub fast float %4387, %4383
  %4389 = fadd fast float %4388, %4384
  %4390 = fdiv fast float %4382, %4389
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fsub fast float %4391, %3396
  %4393 = fmul fast float %4392, %4316
  %4394 = fadd fast float %4393, %3396
  %4395 = fmul fast float %4319, %4103
  %4396 = fmul fast float %4319, %4104
  %4397 = fmul fast float %4319, %4105
  %4398 = fadd fast float %4395, %3392
  %4399 = fadd fast float %4396, %3393
  %4400 = fadd fast float %4397, %3394
  %4401 = fmul fast float %4322, %4158
  %4402 = fadd fast float %4401, %3398
  %4403 = fmul fast float %4325, %4155
  %4404 = fmul fast float %4325, %4156
  %4405 = fmul fast float %4325, %4157
  %4406 = fadd fast float %4403, %3389
  %4407 = fadd fast float %4404, %3390
  %4408 = fadd fast float %4405, %3391
  br label %4437

; <label>:4409                                    ; preds = %4361
  %4410 = icmp eq i32 %4305, 8
  br i1 %4410, label %4411, label %4437

; <label>:4411                                    ; preds = %4409
  %4412 = fmul fast float %4310, %3998
  %4413 = fmul fast float %4310, %3999
  %4414 = fadd fast float %4412, %3381
  %4415 = fadd fast float %4413, %3382
  %4416 = call float @dx.op.binary.f32(i32 36, float %3397, float %4000)  ; FMin(a,b)
  %4417 = fsub fast float %4416, %3397
  %4418 = fmul fast float %4417, %4313
  %4419 = fadd fast float %4418, %3397
  %4420 = fsub fast float %3997, %3396
  %4421 = fmul fast float %4316, %4420
  %4422 = fadd fast float %4421, %3396
  %4423 = fmul fast float %4319, %4103
  %4424 = fmul fast float %4319, %4104
  %4425 = fmul fast float %4319, %4105
  %4426 = fadd fast float %4423, %3392
  %4427 = fadd fast float %4424, %3393
  %4428 = fadd fast float %4425, %3394
  %4429 = fmul fast float %4322, %4158
  %4430 = fadd fast float %4429, %3398
  %4431 = fmul fast float %4325, %4155
  %4432 = fmul fast float %4325, %4156
  %4433 = fmul fast float %4325, %4157
  %4434 = fadd fast float %4431, %3389
  %4435 = fadd fast float %4432, %3390
  %4436 = fadd fast float %4433, %3391
  br label %4437

; <label>:4437                                    ; preds = %4411, %4409, %4363, %4327, %4296, %3696, %3400, %3380
  %4438 = phi float [ %3381, %4296 ], [ %3381, %3696 ], [ %3381, %3380 ], [ %3381, %3400 ], [ %4332, %4327 ], [ %4366, %4363 ], [ %3381, %4409 ], [ %4414, %4411 ]
  %4439 = phi float [ %3382, %4296 ], [ %3382, %3696 ], [ %3382, %3380 ], [ %3382, %3400 ], [ %4333, %4327 ], [ %4367, %4363 ], [ %3382, %4409 ], [ %4415, %4411 ]
  %4440 = phi float [ %4297, %4296 ], [ %3383, %3696 ], [ %3383, %3380 ], [ %3383, %3400 ], [ %4297, %4327 ], [ %4297, %4363 ], [ %4297, %4409 ], [ %4297, %4411 ]
  %4441 = phi float [ %4298, %4296 ], [ %3384, %3696 ], [ %3384, %3380 ], [ %3384, %3400 ], [ %4298, %4327 ], [ %4298, %4363 ], [ %4298, %4409 ], [ %4298, %4411 ]
  %4442 = phi float [ %4299, %4296 ], [ %3385, %3696 ], [ %3385, %3380 ], [ %3385, %3400 ], [ %4299, %4327 ], [ %4299, %4363 ], [ %4299, %4409 ], [ %4299, %4411 ]
  %4443 = phi float [ %4300, %4296 ], [ %3386, %3696 ], [ %3386, %3380 ], [ %3386, %3400 ], [ %4300, %4327 ], [ %4300, %4363 ], [ %4300, %4409 ], [ %4300, %4411 ]
  %4444 = phi float [ %4301, %4296 ], [ %3387, %3696 ], [ %3387, %3380 ], [ %3387, %3400 ], [ %4301, %4327 ], [ %4301, %4363 ], [ %4301, %4409 ], [ %4301, %4411 ]
  %4445 = phi float [ %4302, %4296 ], [ %3388, %3696 ], [ %3388, %3380 ], [ %3388, %3400 ], [ %4302, %4327 ], [ %4302, %4363 ], [ %4302, %4409 ], [ %4302, %4411 ]
  %4446 = phi float [ %3389, %4296 ], [ %3389, %3696 ], [ %3389, %3380 ], [ %3389, %3400 ], [ %4358, %4327 ], [ %4406, %4363 ], [ %3389, %4409 ], [ %4434, %4411 ]
  %4447 = phi float [ %3390, %4296 ], [ %3390, %3696 ], [ %3390, %3380 ], [ %3390, %3400 ], [ %4359, %4327 ], [ %4407, %4363 ], [ %3390, %4409 ], [ %4435, %4411 ]
  %4448 = phi float [ %3391, %4296 ], [ %3391, %3696 ], [ %3391, %3380 ], [ %3391, %3400 ], [ %4360, %4327 ], [ %4408, %4363 ], [ %3391, %4409 ], [ %4436, %4411 ]
  %4449 = phi float [ %3392, %4296 ], [ %3392, %3696 ], [ %3392, %3380 ], [ %3392, %3400 ], [ %4346, %4327 ], [ %4398, %4363 ], [ %3392, %4409 ], [ %4426, %4411 ]
  %4450 = phi float [ %3393, %4296 ], [ %3393, %3696 ], [ %3393, %3380 ], [ %3393, %3400 ], [ %4347, %4327 ], [ %4399, %4363 ], [ %3393, %4409 ], [ %4427, %4411 ]
  %4451 = phi float [ %3394, %4296 ], [ %3394, %3696 ], [ %3394, %3380 ], [ %3394, %3400 ], [ %4348, %4327 ], [ %4400, %4363 ], [ %3394, %4409 ], [ %4428, %4411 ]
  %4452 = phi float [ %4303, %4296 ], [ %3395, %3696 ], [ %3395, %3380 ], [ %3395, %3400 ], [ %4303, %4327 ], [ %4303, %4363 ], [ %4303, %4409 ], [ %4303, %4411 ]
  %4453 = phi float [ %3396, %4296 ], [ %3396, %3696 ], [ %3396, %3380 ], [ %3396, %3400 ], [ %4339, %4327 ], [ %4394, %4363 ], [ %3396, %4409 ], [ %4422, %4411 ]
  %4454 = phi float [ %3397, %4296 ], [ %3397, %3696 ], [ %3397, %3380 ], [ %3397, %3400 ], [ %4336, %4327 ], [ %4371, %4363 ], [ %3397, %4409 ], [ %4419, %4411 ]
  %4455 = phi float [ %3398, %4296 ], [ %3398, %3696 ], [ %3398, %3380 ], [ %3398, %3400 ], [ %4351, %4327 ], [ %4402, %4363 ], [ %3398, %4409 ], [ %4430, %4411 ]
  %4456 = phi float [ %4304, %4296 ], [ %3399, %3696 ], [ %3399, %3380 ], [ %3399, %3400 ], [ %4304, %4327 ], [ %4304, %4363 ], [ %4304, %4409 ], [ %4304, %4411 ]
  %4457 = add i32 %56, 408
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.i32 %4458, 1
  %4461 = bitcast i32 %4459 to float
  %4462 = bitcast i32 %4460 to float
  %4463 = fcmp fast oge float %4461, 0.000000e+00
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = select i1 %4463, float %4461, float %4465
  %4467 = add i32 %56, 504
  %4468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4469 = extractvalue %dx.types.ResRet.i32 %4468, 0
  %4470 = add i32 %4469, 0
  %4471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4471, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  %4474 = fmul fast float %4473, %4462
  %4475 = fadd fast float %4474, %4466
  %4476 = call float @dx.op.dot2.f32(i32 54, float %4438, float %4439, float %4438, float %4439)  ; Dot2(ax,ay,bx,by)
  %4477 = fmul fast float %4476, 0x3FE3333340000000
  %4478 = fsub fast float 1.000000e+00, %4477
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4478, float %4438, float %4439, float %4478)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 25, float %4479)  ; Rsqrt(value)
  %4481 = fmul fast float %4480, %4438
  %4482 = fmul fast float %4480, %4439
  %4483 = fmul fast float %4478, %4480
  %4484 = fmul fast float %4483, %109
  %4485 = fmul fast float %4483, %110
  %4486 = fmul fast float %4483, %111
  %4487 = fmul fast float %4481, %77
  %4488 = fmul fast float %4481, %78
  %4489 = fmul fast float %4481, %79
  %4490 = fadd fast float %4484, %4487
  %4491 = fadd fast float %4485, %4488
  %4492 = fadd fast float %4486, %4489
  %4493 = fmul fast float %121, %4482
  %4494 = fmul fast float %122, %4482
  %4495 = fmul fast float %123, %4482
  %4496 = fadd fast float %4490, %4493
  %4497 = fadd fast float %4491, %4494
  %4498 = fadd fast float %4492, %4495
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4498, float %4496, float %4497, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4496, %4500
  %4502 = fmul fast float %4497, %4500
  %4503 = fmul fast float %4498, %4500
  %4504 = and i32 %58, 1
  %4505 = icmp eq i32 %4504, 0
  br i1 %4505, label %4506, label %5098

; <label>:4506                                    ; preds = %4437
  %4507 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4508 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4509 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4510 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4511 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4512 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4513 = fadd fast float %4507, %157
  %4514 = fadd fast float %4508, %158
  %4515 = fadd fast float %4509, %159
  %4516 = fadd fast float %4510, %157
  %4517 = fadd fast float %4511, %158
  %4518 = fadd fast float %4512, %159
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4526 = fmul fast float %4520, %102
  %4527 = fmul fast float %4526, %4524
  %4528 = fmul fast float %4521, %103
  %4529 = fmul fast float %4528, %4525
  %4530 = fptoui float %4527 to i32
  %4531 = fptoui float %4529 to i32
  %4532 = fadd fast float %4520, -1.000000e+00
  %4533 = fadd fast float %4521, -1.000000e+00
  %4534 = fptoui float %4532 to i32
  %4535 = fptoui float %4533 to i32
  %4536 = call i32 @dx.op.binary.i32(i32 40, i32 %4530, i32 %4534)  ; UMin(a,b)
  %4537 = call i32 @dx.op.binary.i32(i32 40, i32 %4531, i32 %4535)  ; UMin(a,b)
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4541 = fmul fast float %4539, %93
  %4542 = fsub fast float %4541, %4540
  %4543 = fadd fast float %4522, -1.000000e+00
  %4544 = call float @dx.op.binary.f32(i32 36, float %4542, float %4543)  ; FMin(a,b)
  %4545 = fptoui float %4544 to i32
  %4546 = fptoui float %4520 to i32
  %4547 = fptoui float %4521 to i32
  %4548 = mul i32 %4545, %4547
  %4549 = add i32 %4548, %4537
  %4550 = mul i32 %4549, %4546
  %4551 = add i32 %4550, %4536
  %4552 = shl i32 %4551, 2
  %4553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.i32 %4553, 0
  %4555 = and i32 %4554, 1023
  %4556 = lshr i32 %4554, 10
  %4557 = icmp eq i32 %4555, 0
  br i1 %4557, label %5061, label %4558

; <label>:4558                                    ; preds = %4506
  %4559 = and i32 %4554, 1023
  br label %4560

; <label>:4560                                    ; preds = %4692, %4558
  %4561 = phi i32 [ %4642, %4692 ], [ 0, %4558 ]
  %4562 = phi float [ %4693, %4692 ], [ 0.000000e+00, %4558 ]
  %4563 = phi float [ %4694, %4692 ], [ %4475, %4558 ]
  %4564 = phi float [ %4695, %4692 ], [ %4456, %4558 ]
  %4565 = phi float [ %4696, %4692 ], [ %4449, %4558 ]
  %4566 = phi float [ %4697, %4692 ], [ %4450, %4558 ]
  %4567 = phi float [ %4698, %4692 ], [ %4451, %4558 ]
  %4568 = phi float [ %4699, %4692 ], [ 0.000000e+00, %4558 ]
  %4569 = phi float [ %4700, %4692 ], [ 0.000000e+00, %4558 ]
  %4570 = phi float [ %4701, %4692 ], [ %4446, %4558 ]
  %4571 = phi float [ %4702, %4692 ], [ %4447, %4558 ]
  %4572 = phi float [ %4703, %4692 ], [ %4448, %4558 ]
  %4573 = phi float [ %4704, %4692 ], [ %4443, %4558 ]
  %4574 = phi float [ %4705, %4692 ], [ %4444, %4558 ]
  %4575 = phi float [ %4706, %4692 ], [ %4445, %4558 ]
  %4576 = phi float [ %4707, %4692 ], [ %4501, %4558 ]
  %4577 = phi float [ %4708, %4692 ], [ %4502, %4558 ]
  %4578 = phi float [ %4709, %4692 ], [ %4503, %4558 ]
  %4579 = phi float [ %4710, %4692 ], [ %4454, %4558 ]
  %4580 = phi float [ %4711, %4692 ], [ %4453, %4558 ]
  %4581 = phi float [ %4712, %4692 ], [ 0.000000e+00, %4558 ]
  %4582 = phi float [ %4713, %4692 ], [ %4452, %4558 ]
  %4583 = phi float [ %4714, %4692 ], [ %4440, %4558 ]
  %4584 = phi float [ %4715, %4692 ], [ %4441, %4558 ]
  %4585 = phi float [ %4716, %4692 ], [ %4442, %4558 ]
  %4586 = add nuw nsw i32 %4561, %4556
  %4587 = shl i32 %4586, 2
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = shl i32 %4589, 8
  %4591 = or i32 %4590, 48
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.ResRet.f32 %4592, 2
  %4596 = extractvalue %dx.types.ResRet.f32 %4592, 3
  %4597 = or i32 %4590, 64
  %4598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.i32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.i32 %4598, 1
  %4601 = or i32 %4590, 80
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4605 = or i32 %4590, 96
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = or i32 %4590, 112
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4614 = or i32 %4590, 128
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = or i32 %4590, 144
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = extractvalue %dx.types.ResRet.f32 %4621, 3
  %4626 = or i32 %4590, 160
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = extractvalue %dx.types.ResRet.f32 %4627, 3
  %4632 = or i32 %4590, 192
  %4633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.i32 %4633, 0
  %4635 = or i32 %4590, 208
  %4636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = or i32 %4590, 248
  %4639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4638, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = add nuw nsw i32 %4561, 1
  %4643 = bitcast float %4596 to i32
  %4644 = and i32 %4643, 512
  %4645 = icmp eq i32 %4644, 0
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.ResRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.ResRet.f32 %4646, 2
  %4650 = extractvalue %dx.types.ResRet.f32 %4646, 3
  %4651 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4652 = or i32 %4590, 16
  %4653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4652, i32 undef)  ; BufferLoad(srv,index,wot)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = call float @dx.op.dot4.f32(i32 56, float %4654, float %4655, float %4656, float %4657, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4659 = or i32 %4590, 32
  %4660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.ResRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4660, 2
  %4664 = extractvalue %dx.types.ResRet.f32 %4660, 3
  %4665 = call float @dx.op.dot4.f32(i32 56, float %4661, float %4662, float %4663, float %4664, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4666 = call float @dx.op.unary.f32(i32 27, float %4651)  ; Round_ni(value)
  %4667 = call float @dx.op.unary.f32(i32 6, float %4666)  ; FAbs(value)
  %4668 = call float @dx.op.unary.f32(i32 27, float %4658)  ; Round_ni(value)
  %4669 = call float @dx.op.unary.f32(i32 6, float %4668)  ; FAbs(value)
  %4670 = call float @dx.op.unary.f32(i32 6, float %4665)  ; FAbs(value)
  %4671 = call float @dx.op.unary.f32(i32 27, float %4670)  ; Round_ni(value)
  %4672 = fadd fast float %4669, %4667
  %4673 = fadd fast float %4672, %4671
  %4674 = fcmp fast oeq float %4673, 0.000000e+00
  %4675 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %4513, float %4514, float %4515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4676 = call float @dx.op.dot4.f32(i32 56, float %4654, float %4655, float %4656, float %4657, float %4513, float %4514, float %4515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4677 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %4516, float %4517, float %4518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4678 = call float @dx.op.dot4.f32(i32 56, float %4654, float %4655, float %4656, float %4657, float %4516, float %4517, float %4518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4679 = fsub fast float %4675, %4651
  %4680 = fsub fast float %4677, %4651
  %4681 = fsub fast float %4676, %4658
  %4682 = fsub fast float %4678, %4658
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4593, float %4594, float %4595, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4686 = fadd fast float %4685, %4683
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4689 = fcmp fast ogt float %4687, %4688
  %4690 = and i1 %4674, %4689
  %4691 = and i1 %4645, %4690
  br i1 %4691, label %4718, label %4692

; <label>:4692                                    ; preds = %5047, %4799, %4718, %4560
  %4693 = phi float [ %4562, %4718 ], [ %4802, %4799 ], [ %4802, %5047 ], [ %4562, %4560 ]
  %4694 = phi float [ %4563, %4718 ], [ %4563, %4799 ], [ %5023, %5047 ], [ %4563, %4560 ]
  %4695 = phi float [ %4564, %4718 ], [ %4564, %4799 ], [ %5021, %5047 ], [ %4564, %4560 ]
  %4696 = phi float [ %4565, %4718 ], [ %4565, %4799 ], [ %4999, %5047 ], [ %4565, %4560 ]
  %4697 = phi float [ %4566, %4718 ], [ %4566, %4799 ], [ %5000, %5047 ], [ %4566, %4560 ]
  %4698 = phi float [ %4567, %4718 ], [ %4567, %4799 ], [ %5001, %5047 ], [ %4567, %4560 ]
  %4699 = phi float [ %4568, %4718 ], [ %4568, %4799 ], [ %4926, %5047 ], [ %4568, %4560 ]
  %4700 = phi float [ %4569, %4718 ], [ %4569, %4799 ], [ %4924, %5047 ], [ %4569, %4560 ]
  %4701 = phi float [ %4570, %4718 ], [ %4570, %4799 ], [ %4969, %5047 ], [ %4570, %4560 ]
  %4702 = phi float [ %4571, %4718 ], [ %4571, %4799 ], [ %4970, %5047 ], [ %4571, %4560 ]
  %4703 = phi float [ %4572, %4718 ], [ %4572, %4799 ], [ %4971, %5047 ], [ %4572, %4560 ]
  %4704 = phi float [ %4573, %4718 ], [ %4573, %4799 ], [ %5057, %5047 ], [ %4573, %4560 ]
  %4705 = phi float [ %4574, %4718 ], [ %4574, %4799 ], [ %5058, %5047 ], [ %4574, %4560 ]
  %4706 = phi float [ %4575, %4718 ], [ %4575, %4799 ], [ %5059, %5047 ], [ %4575, %4560 ]
  %4707 = phi float [ %4576, %4718 ], [ %4576, %4799 ], [ %4905, %5047 ], [ %4576, %4560 ]
  %4708 = phi float [ %4577, %4718 ], [ %4577, %4799 ], [ %4906, %5047 ], [ %4577, %4560 ]
  %4709 = phi float [ %4578, %4718 ], [ %4578, %4799 ], [ %4907, %5047 ], [ %4578, %4560 ]
  %4710 = phi float [ %4579, %4718 ], [ %4579, %4799 ], [ %4979, %5047 ], [ %4579, %4560 ]
  %4711 = phi float [ %4580, %4718 ], [ %4580, %4799 ], [ %4976, %5047 ], [ %4580, %4560 ]
  %4712 = phi float [ %4581, %4718 ], [ %4581, %4799 ], [ %4973, %5047 ], [ %4581, %4560 ]
  %4713 = phi float [ %4582, %4718 ], [ %4582, %4799 ], [ %4922, %5047 ], [ %4582, %4560 ]
  %4714 = phi float [ %4583, %4718 ], [ %4583, %4799 ], [ %4917, %5047 ], [ %4583, %4560 ]
  %4715 = phi float [ %4584, %4718 ], [ %4584, %4799 ], [ %4918, %5047 ], [ %4584, %4560 ]
  %4716 = phi float [ %4585, %4718 ], [ %4585, %4799 ], [ %4919, %5047 ], [ %4585, %4560 ]
  %4717 = icmp eq i32 %4642, %4559
  br i1 %4717, label %5060, label %4560

; <label>:4718                                    ; preds = %4560
  %4719 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4720 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4721 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4722 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4723 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4724 = extractvalue %dx.types.ResRet.i32 %4598, 3
  %4725 = extractvalue %dx.types.ResRet.i32 %4598, 2
  %4726 = add i32 %4724, 0
  %4727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4727, %dx.types.Handle %4728, float %4651, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float %4679, float %4681, float undef, float %4680, float %4682, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = fmul fast float %4730, %4723
  %4732 = fadd fast float %4731, %4722
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4651, %4607
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4658, float %4734)  ; FMad(a,b,c)
  %4736 = fadd fast float %4735, %4721
  %4737 = fmul fast float %4651, %4609
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4658, float %4737)  ; FMad(a,b,c)
  %4739 = fadd fast float %4738, %4720
  %4740 = fmul fast float %4679, %4607
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4681, float %4740)  ; FMad(a,b,c)
  %4742 = fmul fast float %4679, %4609
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4681, float %4742)  ; FMad(a,b,c)
  %4744 = fmul fast float %4680, %4607
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4682, float %4744)  ; FMad(a,b,c)
  %4746 = fmul fast float %4680, %4609
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4682, float %4746)  ; FMad(a,b,c)
  %4748 = add i32 %4725, 0
  %4749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4750 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4749, %dx.types.Handle %4728, float %4736, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4741, float %4743, float undef, float %4745, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4751 = extractvalue %dx.types.ResRet.f32 %4750, 0
  %4752 = and i32 %4643, 1024
  %4753 = icmp ne i32 %4752, 0
  %4754 = fcmp fast ogt float %4751, 0x3FE0101020000000
  %4755 = uitofp i1 %4754 to float
  %4756 = select i1 %4753, float %4755, float %4751
  %4757 = and i32 %4643, 8192
  %4758 = icmp ne i32 %4757, 0
  %4759 = select i1 %4758, float %4719, float 1.000000e+00
  %4760 = fmul fast float %4651, 2.000000e+00
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = call float @dx.op.unary.f32(i32 6, float %4761)  ; FAbs(value)
  %4763 = fmul fast float %4762, %4640
  %4764 = fsub fast float %4763, %4640
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4658, 2.000000e+00
  %4767 = fadd fast float %4766, -1.000000e+00
  %4768 = call float @dx.op.unary.f32(i32 6, float %4767)  ; FAbs(value)
  %4769 = fmul fast float %4768, %4641
  %4770 = fsub fast float %4769, %4641
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4670, %4603
  %4773 = fsub fast float %4772, %4603
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fmul fast float %4733, %4759
  %4776 = fmul fast float %4775, %4730
  %4777 = fmul fast float %4776, %4765
  %4778 = fmul fast float %4777, %4756
  %4779 = fmul fast float %4778, %4771
  %4780 = fmul fast float %4779, %4774
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4783 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4784 = fsub fast float %4687, %4783
  %4785 = fmul fast float %4784, %4782
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4780, %4604
  %4788 = fadd fast float %4780, %4604
  %4789 = fmul fast float %4788, %4613
  %4790 = fsub fast float %4789, %4613
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = and i32 %4643, 128
  %4793 = icmp ne i32 %4792, 0
  %4794 = select i1 %4793, float %4791, float %4787
  %4795 = fmul fast float %4794, %4786
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = fcmp fast ugt float %4795, %4797
  br i1 %4798, label %4799, label %4692

; <label>:4799                                    ; preds = %4718
  %4800 = select i1 %4758, float %4795, float 0.000000e+00
  %4801 = fadd fast float %4800, %4562
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  br i1 %4758, label %4692, label %4803

; <label>:4803                                    ; preds = %4799
  %4804 = and i32 %4643, 4
  %4805 = and i32 %4643, 8
  %4806 = add i32 %4599, 0
  %4807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4807, %dx.types.Handle %4808, float %4736, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4741, float %4743, float undef, float %4745, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4813 = extractvalue %dx.types.ResRet.f32 %4809, 3
  %4814 = bitcast float %4625 to i32
  %4815 = and i32 %4814, 255
  %4816 = uitofp i32 %4815 to float
  %4817 = lshr i32 %4814, 8
  %4818 = and i32 %4817, 255
  %4819 = uitofp i32 %4818 to float
  %4820 = fmul fast float %4813, %4816
  %4821 = fadd fast float %4820, %4819
  %4822 = fmul fast float %4821, 0x3F70101000000000
  %4823 = add i32 %4600, 0
  %4824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4823, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4824, %dx.types.Handle %4808, float %4736, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4741, float %4743, float undef, float %4745, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.ResRet.f32 %4825, 3
  %4830 = bitcast float %4619 to i32
  %4831 = and i32 %4830, 255
  %4832 = uitofp i32 %4831 to float
  %4833 = lshr i32 %4830, 8
  %4834 = and i32 %4833, 255
  %4835 = uitofp i32 %4834 to float
  %4836 = lshr i32 %4830, 16
  %4837 = and i32 %4836, 255
  %4838 = uitofp i32 %4837 to float
  %4839 = fmul fast float %4838, 0x3F70101000000000
  %4840 = fmul fast float %4826, %4832
  %4841 = fadd fast float %4840, %4835
  %4842 = fmul fast float %4841, 0x3F70101000000000
  %4843 = fadd fast float %4827, -5.000000e-01
  %4844 = fadd fast float %4829, -5.000000e-01
  %4845 = fmul fast float %4843, %4839
  %4846 = fmul fast float %4844, %4839
  %4847 = fadd fast float %4845, 5.000000e-01
  %4848 = fadd fast float %4846, 5.000000e-01
  %4849 = fmul fast float %4810, %4628
  %4850 = fmul fast float %4811, %4629
  %4851 = fmul fast float %4812, %4630
  %4852 = fmul fast float %4847, 2.000000e+00
  %4853 = fadd fast float %4852, -1.000000e+00
  %4854 = fmul fast float %4848, 2.000000e+00
  %4855 = fadd fast float %4854, -1.000000e+00
  %4856 = fadd fast float %4853, %4855
  %4857 = fmul fast float %4856, 5.000000e-01
  %4858 = fsub fast float %4853, %4855
  %4859 = fmul fast float %4858, 5.000000e-01
  %4860 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = call float @dx.op.unary.f32(i32 6, float %4859)  ; FAbs(value)
  %4863 = fsub fast float %4861, %4862
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4859, float %4863, float %4857, float %4859, float %4863)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = call float @dx.op.unary.f32(i32 25, float %4864)  ; Rsqrt(value)
  %4866 = fmul fast float %4857, %4865
  %4867 = fmul fast float %4859, %4865
  %4868 = fmul fast float %4865, %4863
  %4869 = fmul fast float %4868, %4593
  %4870 = fmul fast float %4868, %4594
  %4871 = fmul fast float %4868, %4595
  %4872 = fmul fast float %4866, %4616
  %4873 = fmul fast float %4866, %4617
  %4874 = fmul fast float %4866, %4618
  %4875 = fadd fast float %4872, %4869
  %4876 = fadd fast float %4873, %4870
  %4877 = fadd fast float %4874, %4871
  %4878 = fmul fast float %4867, %4622
  %4879 = fmul fast float %4867, %4623
  %4880 = fmul fast float %4867, %4624
  %4881 = fadd fast float %4875, %4878
  %4882 = fadd fast float %4876, %4879
  %4883 = fadd fast float %4877, %4880
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %4881, float %4882, float %4883)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.unary.f32(i32 25, float %4884)  ; Rsqrt(value)
  %4886 = fmul fast float %4881, %4885
  %4887 = fmul fast float %4882, %4885
  %4888 = fmul fast float %4883, %4885
  %4889 = icmp ne i32 %4805, 0
  %4890 = select i1 %4889, float 1.000000e+00, float 0.000000e+00
  %4891 = fmul fast float %4795, %4890
  %4892 = and i32 %4643, 1
  %4893 = icmp eq i32 %4892, 0
  br i1 %4893, label %4894, label %4898

; <label>:4894                                    ; preds = %4803
  %4895 = fsub fast float %4886, %4576
  %4896 = fsub fast float %4887, %4577
  %4897 = fsub fast float %4888, %4578
  br label %4898

; <label>:4898                                    ; preds = %4894, %4803
  %4899 = phi float [ %4895, %4894 ], [ %4886, %4803 ]
  %4900 = phi float [ %4896, %4894 ], [ %4887, %4803 ]
  %4901 = phi float [ %4897, %4894 ], [ %4888, %4803 ]
  %4902 = fmul float %4901, %4891
  %4903 = fmul float %4900, %4891
  %4904 = fmul float %4899, %4891
  %4905 = fadd fast float %4904, %4576
  %4906 = fadd fast float %4903, %4577
  %4907 = fadd fast float %4902, %4578
  %4908 = icmp ne i32 %4804, 0
  %4909 = select i1 %4908, float 1.000000e+00, float 0.000000e+00
  %4910 = fmul fast float %4795, %4909
  %4911 = fsub fast float %4849, %4583
  %4912 = fsub fast float %4850, %4584
  %4913 = fsub fast float %4851, %4585
  %4914 = fmul fast float %4911, %4910
  %4915 = fmul fast float %4912, %4910
  %4916 = fmul fast float %4913, %4910
  %4917 = fadd fast float %4914, %4583
  %4918 = fadd fast float %4915, %4584
  %4919 = fadd fast float %4916, %4585
  %4920 = fsub fast float %4822, %4582
  %4921 = fmul fast float %4920, %4910
  %4922 = fadd fast float %4921, %4582
  %4923 = fmul fast float %4910, %4569
  %4924 = fsub fast float %4569, %4923
  %4925 = fmul fast float %4910, %4568
  %4926 = fsub fast float %4568, %4925
  %4927 = bitcast float %4637 to i32
  %4928 = lshr i32 %4927, 16
  %4929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4928)  ; LegacyF16ToF32(value)
  %4930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4931 = extractvalue %dx.types.ResRet.i32 %4930, 0
  %4932 = and i32 %4931, 1
  %4933 = icmp eq i32 %4932, 0
  br i1 %4933, label %4934, label %4959

; <label>:4934                                    ; preds = %4898
  %4935 = fadd fast float %4822, 0xBFB99999A0000000
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fmul fast float %4936, 0x3FF1C71C80000000
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, %4849
  %4941 = fmul fast float %4939, %4850
  %4942 = fmul fast float %4939, %4851
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4946 = call float @dx.op.binary.f32(i32 35, float %4944, float %4945)  ; FMax(a,b)
  %4947 = call float @dx.op.binary.f32(i32 35, float %4943, float %4946)  ; FMax(a,b)
  %4948 = fcmp fast ogt float %4947, 0.000000e+00
  %4949 = bitcast float %4947 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = select i1 %4948, float %4951, float 0.000000e+00
  %4953 = fmul fast float %4943, %4929
  %4954 = fmul fast float %4944, %4929
  %4955 = fmul fast float %4945, %4929
  %4956 = fmul fast float %4953, %4952
  %4957 = fmul fast float %4954, %4952
  %4958 = fmul fast float %4955, %4952
  br label %4959

; <label>:4959                                    ; preds = %4934, %4898
  %4960 = phi float [ %4929, %4898 ], [ %4956, %4934 ]
  %4961 = phi float [ %4929, %4898 ], [ %4957, %4934 ]
  %4962 = phi float [ %4929, %4898 ], [ %4958, %4934 ]
  %4963 = fsub fast float %4960, %4570
  %4964 = fsub fast float %4961, %4571
  %4965 = fsub fast float %4962, %4572
  %4966 = fmul fast float %4963, %4910
  %4967 = fmul fast float %4964, %4910
  %4968 = fmul fast float %4965, %4910
  %4969 = fadd fast float %4966, %4570
  %4970 = fadd fast float %4967, %4571
  %4971 = fadd fast float %4968, %4572
  %4972 = fadd fast float %4795, %4581
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fsub fast float %4842, %4580
  %4975 = fmul fast float %4974, %4891
  %4976 = fadd fast float %4975, %4580
  %4977 = fsub fast float %4828, %4579
  %4978 = fmul fast float %4977, %4891
  %4979 = fadd fast float %4978, %4579
  br i1 %4893, label %4988, label %4980

; <label>:4980                                    ; preds = %4959
  %4981 = and i32 %4643, 32768
  %4982 = icmp eq i32 %4981, 0
  br i1 %4982, label %4998, label %4983

; <label>:4983                                    ; preds = %4980
  %4984 = fmul fast float %4891, 1.270000e+02
  %4985 = fadd fast float %4984, %4565
  %4986 = fadd fast float %4984, %4566
  %4987 = fadd fast float %4984, %4567
  br label %4998

; <label>:4988                                    ; preds = %4959
  %4989 = fsub fast float 1.270000e+02, %4565
  %4990 = fsub fast float 1.270000e+02, %4566
  %4991 = fsub fast float 1.270000e+02, %4567
  %4992 = fmul fast float %4891, %4989
  %4993 = fmul fast float %4891, %4990
  %4994 = fmul fast float %4891, %4991
  %4995 = fadd fast float %4992, %4565
  %4996 = fadd fast float %4993, %4566
  %4997 = fadd fast float %4994, %4567
  br label %4998

; <label>:4998                                    ; preds = %4988, %4983, %4980
  %4999 = phi float [ %4985, %4983 ], [ %4565, %4980 ], [ %4995, %4988 ]
  %5000 = phi float [ %4986, %4983 ], [ %4566, %4980 ], [ %4996, %4988 ]
  %5001 = phi float [ %4987, %4983 ], [ %4567, %4980 ], [ %4997, %4988 ]
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.CBufRet.f32 %5003, 1
  %5006 = fmul fast float %5005, %5002
  %5007 = fadd fast float %5006, %5004
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = bitcast float %4631 to i32
  %5010 = and i32 %5009, 65535
  %5011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5010)  ; LegacyF16ToF32(value)
  %5012 = lshr i32 %5009, 16
  %5013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5012)  ; LegacyF16ToF32(value)
  %5014 = fcmp fast oge float %5011, 0.000000e+00
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = select i1 %5014, float %5011, float %5016
  %5018 = fadd fast float %5017, %5013
  %5019 = fsub fast float %5008, %4564
  %5020 = fmul fast float %5019, %4795
  %5021 = fadd fast float %5020, %4564
  %5022 = fmul fast float %5018, %4795
  %5023 = call float @dx.op.binary.f32(i32 35, float %4563, float %5022)  ; FMax(a,b)
  %5024 = and i32 %4643, 16
  %5025 = icmp eq i32 %5024, 0
  br i1 %5025, label %5047, label %5026

; <label>:5026                                    ; preds = %4998
  %5027 = add i32 %4634, 0
  %5028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5028, %dx.types.Handle %4808, float %4736, float %4739, float undef, float undef, i32 0, i32 0, i32 undef, float %4741, float %4743, float undef, float %4745, float %4747, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = and i32 %4927, 65535
  %5034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5033)  ; LegacyF16ToF32(value)
  %5035 = fmul fast float %5030, %4628
  %5036 = fmul fast float %5031, %4629
  %5037 = fmul fast float %5032, %4630
  %5038 = and i32 %4643, 16384
  %5039 = icmp ne i32 %5038, 0
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = select i1 %5039, float %5041, float 1.000000e+00
  %5043 = fmul fast float %5042, %5034
  %5044 = fmul fast float %5035, %5043
  %5045 = fmul fast float %5036, %5043
  %5046 = fmul fast float %5037, %5043
  br label %5047

; <label>:5047                                    ; preds = %5026, %4998
  %5048 = phi float [ %5044, %5026 ], [ 0.000000e+00, %4998 ]
  %5049 = phi float [ %5045, %5026 ], [ 0.000000e+00, %4998 ]
  %5050 = phi float [ %5046, %5026 ], [ 0.000000e+00, %4998 ]
  %5051 = fsub fast float %5048, %4573
  %5052 = fsub fast float %5049, %4574
  %5053 = fsub fast float %5050, %4575
  %5054 = fmul fast float %5051, %4795
  %5055 = fmul fast float %5052, %4795
  %5056 = fmul fast float %5053, %4795
  %5057 = fadd fast float %5054, %4573
  %5058 = fadd fast float %5055, %4574
  %5059 = fadd fast float %5056, %4575
  br label %4692

; <label>:5060                                    ; preds = %4692
  br label %5061

; <label>:5061                                    ; preds = %5060, %4506
  %5062 = phi float [ 0.000000e+00, %4506 ], [ %4693, %5060 ]
  %5063 = phi float [ %4475, %4506 ], [ %4694, %5060 ]
  %5064 = phi float [ %4456, %4506 ], [ %4695, %5060 ]
  %5065 = phi float [ %4449, %4506 ], [ %4696, %5060 ]
  %5066 = phi float [ %4450, %4506 ], [ %4697, %5060 ]
  %5067 = phi float [ %4451, %4506 ], [ %4698, %5060 ]
  %5068 = phi float [ 0.000000e+00, %4506 ], [ %4699, %5060 ]
  %5069 = phi float [ 0.000000e+00, %4506 ], [ %4700, %5060 ]
  %5070 = phi float [ %4446, %4506 ], [ %4701, %5060 ]
  %5071 = phi float [ %4447, %4506 ], [ %4702, %5060 ]
  %5072 = phi float [ %4448, %4506 ], [ %4703, %5060 ]
  %5073 = phi float [ %4443, %4506 ], [ %4704, %5060 ]
  %5074 = phi float [ %4444, %4506 ], [ %4705, %5060 ]
  %5075 = phi float [ %4445, %4506 ], [ %4706, %5060 ]
  %5076 = phi float [ %4501, %4506 ], [ %4707, %5060 ]
  %5077 = phi float [ %4502, %4506 ], [ %4708, %5060 ]
  %5078 = phi float [ %4503, %4506 ], [ %4709, %5060 ]
  %5079 = phi float [ %4454, %4506 ], [ %4710, %5060 ]
  %5080 = phi float [ %4453, %4506 ], [ %4711, %5060 ]
  %5081 = phi float [ 0.000000e+00, %4506 ], [ %4712, %5060 ]
  %5082 = phi float [ %4452, %4506 ], [ %4713, %5060 ]
  %5083 = phi float [ %4440, %4506 ], [ %4714, %5060 ]
  %5084 = phi float [ %4441, %4506 ], [ %4715, %5060 ]
  %5085 = phi float [ %4442, %4506 ], [ %4716, %5060 ]
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 25, float %5086)  ; Rsqrt(value)
  %5088 = fmul fast float %5087, %5076
  %5089 = fmul fast float %5087, %5077
  %5090 = fmul fast float %5087, %5078
  %5091 = fadd fast float %5081, %1281
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5089, float %5090, float %5088, float %5089, float %5090)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = call float @dx.op.unary.f32(i32 25, float %5093)  ; Rsqrt(value)
  %5095 = fmul fast float %5094, %5088
  %5096 = fmul fast float %5094, %5089
  %5097 = fmul fast float %5094, %5090
  br label %5098

; <label>:5098                                    ; preds = %5061, %4437
  %5099 = phi float [ %5095, %5061 ], [ %4501, %4437 ]
  %5100 = phi float [ %5096, %5061 ], [ %4502, %4437 ]
  %5101 = phi float [ %5097, %5061 ], [ %4503, %4437 ]
  %5102 = phi float [ %5083, %5061 ], [ %4440, %4437 ]
  %5103 = phi float [ %5084, %5061 ], [ %4441, %4437 ]
  %5104 = phi float [ %5085, %5061 ], [ %4442, %4437 ]
  %5105 = phi float [ %5073, %5061 ], [ %4443, %4437 ]
  %5106 = phi float [ %5074, %5061 ], [ %4444, %4437 ]
  %5107 = phi float [ %5075, %5061 ], [ %4445, %4437 ]
  %5108 = phi float [ %5070, %5061 ], [ %4446, %4437 ]
  %5109 = phi float [ %5071, %5061 ], [ %4447, %4437 ]
  %5110 = phi float [ %5072, %5061 ], [ %4448, %4437 ]
  %5111 = phi float [ %5065, %5061 ], [ %4449, %4437 ]
  %5112 = phi float [ %5066, %5061 ], [ %4450, %4437 ]
  %5113 = phi float [ %5067, %5061 ], [ %4451, %4437 ]
  %5114 = phi float [ %5082, %5061 ], [ %4452, %4437 ]
  %5115 = phi float [ %5092, %5061 ], [ %1281, %4437 ]
  %5116 = phi float [ %5080, %5061 ], [ %4453, %4437 ]
  %5117 = phi float [ %5079, %5061 ], [ %4454, %4437 ]
  %5118 = phi float [ %5069, %5061 ], [ 0.000000e+00, %4437 ]
  %5119 = phi float [ %5068, %5061 ], [ 0.000000e+00, %4437 ]
  %5120 = phi float [ %5062, %5061 ], [ 0.000000e+00, %4437 ]
  %5121 = phi float [ %5063, %5061 ], [ %4475, %4437 ]
  %5122 = phi float [ %5064, %5061 ], [ %4456, %4437 ]
  %5123 = add i32 %56, 392
  %5124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.i32 %5124, 0
  %5126 = extractvalue %dx.types.ResRet.i32 %5124, 1
  %5127 = extractvalue %dx.types.ResRet.i32 %5124, 2
  %5128 = extractvalue %dx.types.ResRet.i32 %5124, 3
  %5129 = bitcast i32 %5125 to float
  %5130 = bitcast i32 %5126 to float
  %5131 = bitcast i32 %5127 to float
  %5132 = bitcast i32 %5128 to float
  %5133 = fsub fast float %5102, %5129
  %5134 = fsub fast float %5103, %5130
  %5135 = fsub fast float %5104, %5131
  %5136 = fmul fast float %5133, %191
  %5137 = fmul fast float %5134, %191
  %5138 = fmul fast float %5135, %191
  %5139 = fadd fast float %5136, %5129
  %5140 = fadd fast float %5137, %5130
  %5141 = fadd fast float %5138, %5131
  %5142 = fsub fast float %5115, %5132
  %5143 = fmul fast float %5142, %191
  %5144 = fadd fast float %5143, %5132
  %5145 = fadd fast float %5114, 0xBFB99999A0000000
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5146, 0x3FF1C71C80000000
  %5148 = call float @dx.op.binary.f32(i32 36, float %5114, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5149 = fsub fast float 1.000000e+00, %5147
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = fmul fast float %5139, %5150
  %5152 = fmul fast float %5140, %5150
  %5153 = fmul fast float %5141, %5150
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = fmul fast float %5139, %5147
  %5158 = fmul fast float %5140, %5147
  %5159 = fmul fast float %5141, %5147
  %5160 = fadd fast float %5157, %5148
  %5161 = fadd fast float %5158, %5148
  %5162 = fadd fast float %5159, %5148
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5168 = extractvalue %dx.types.ResRet.i32 %5167, 0
  %5169 = and i32 %5168, 1
  %5170 = icmp eq i32 %5169, 0
  br i1 %5170, label %5185, label %5171

; <label>:5171                                    ; preds = %5098
  %5172 = call float @dx.op.binary.f32(i32 35, float %5155, float %5156)  ; FMax(a,b)
  %5173 = call float @dx.op.binary.f32(i32 35, float %5154, float %5172)  ; FMax(a,b)
  %5174 = fcmp fast ogt float %5173, 0.000000e+00
  %5175 = bitcast float %5173 to i32
  %5176 = sub nsw i32 2129859010, %5175
  %5177 = bitcast i32 %5176 to float
  %5178 = select i1 %5174, float %5177, float 0.000000e+00
  %5179 = fmul fast float %5154, %5108
  %5180 = fmul fast float %5155, %5109
  %5181 = fmul fast float %5156, %5110
  %5182 = fmul fast float %5179, %5178
  %5183 = fmul fast float %5180, %5178
  %5184 = fmul fast float %5181, %5178
  br label %5185

; <label>:5185                                    ; preds = %5171, %5098
  %5186 = phi float [ %5182, %5171 ], [ %5108, %5098 ]
  %5187 = phi float [ %5183, %5171 ], [ %5109, %5098 ]
  %5188 = phi float [ %5184, %5171 ], [ %5110, %5098 ]
  %5189 = call float @dx.op.binary.f32(i32 36, float %5111, float 1.270000e+02)  ; FMin(a,b)
  %5190 = call float @dx.op.binary.f32(i32 36, float %5112, float 1.270000e+02)  ; FMin(a,b)
  %5191 = call float @dx.op.binary.f32(i32 36, float %5113, float 1.270000e+02)  ; FMin(a,b)
  %5192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.i32 %5192, 3
  %5194 = and i32 %5193, 8
  %5195 = icmp ne i32 %5194, 0
  %5196 = call float @dx.op.binary.f32(i32 35, float %5154, float %5139)  ; FMax(a,b)
  %5197 = call float @dx.op.binary.f32(i32 35, float %5155, float %5139)  ; FMax(a,b)
  %5198 = call float @dx.op.binary.f32(i32 35, float %5156, float %5139)  ; FMax(a,b)
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = select i1 %251, float %5139, float %5154
  %5201 = select i1 %251, float %5199, float %5155
  %5202 = select i1 %251, float 1.000000e+00, float %5156
  %5203 = select i1 %5195, float %5196, float %5200
  %5204 = select i1 %5195, float %5197, float %5201
  %5205 = select i1 %5195, float %5198, float %5202
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5186, float %5187, float %5188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = select i1 %251, float %5206, float %5186
  %5208 = select i1 %251, float %5206, float %5187
  %5209 = select i1 %251, float %5206, float %5188
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5214 = fadd fast float %5211, %157
  %5215 = fadd fast float %5212, %158
  %5216 = fadd fast float %5213, %159
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5220 = fsub fast float %5214, %5218
  %5221 = fsub fast float %5215, %5219
  %5222 = fmul fast float %5220, %5220
  %5223 = fmul fast float %5221, %5221
  %5224 = fadd fast float %5222, %5223
  %5225 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5227 = fcmp fast olt float %5225, %5226
  br i1 %5227, label %5228, label %5295

; <label>:5228                                    ; preds = %5185
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5240 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5241 = fadd fast float %5238, %5214
  %5242 = fadd fast float %5239, %5215
  %5243 = fadd fast float %5240, %5216
  %5244 = fmul fast float %5241, %5230
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5232, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5234, float %5245)  ; FMad(a,b,c)
  %5247 = fmul fast float %5241, %5235
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5237, float %5248)  ; FMad(a,b,c)
  %5250 = fsub fast float %5246, %5238
  %5251 = fsub fast float %5249, %5239
  %5252 = fsub fast float %5250, %5218
  %5253 = fadd fast float %5252, %5226
  %5254 = fsub fast float %5251, %5219
  %5255 = fadd fast float %5254, %5226
  %5256 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5257 = fmul fast float %5253, %5256
  %5258 = fmul fast float %5255, %5256
  %5259 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5260 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5259
  %5262 = fsub fast float 1.000000e+00, %5260
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5261, float %5262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = fcmp fast ugt float %5264, 0.000000e+00
  br i1 %5265, label %5266, label %5569

; <label>:5266                                    ; preds = %5228
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5269 = fmul fast float %5268, %5264
  %5270 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5271 = fadd fast float %5270, %5269
  %5272 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5273 = fadd fast float %5271, %5240
  %5274 = fmul fast float %5246, %5234
  %5275 = call float @dx.op.tertiary.f32(i32 46, float %5249, float %5237, float %5274)  ; FMad(a,b,c)
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5272, float %5275)  ; FMad(a,b,c)
  %5277 = fsub fast float %5276, %5240
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5280 = fsub fast float %5277, %5279
  %5281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5261, float %5262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5261, float %5262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = fadd fast float %5286, %5282
  %5290 = fmul fast float %5289, 0x3F847AE140000000
  %5291 = fadd fast float %5287, %5283
  %5292 = fmul fast float %5291, 0x3F847AE140000000
  %5293 = fadd fast float %5288, %5284
  %5294 = fmul fast float %5293, 0x3F847AE140000000
  br label %5569

; <label>:5295                                    ; preds = %5185
  %5296 = and i32 %227, 1
  %5297 = icmp eq i32 %5296, 0
  br i1 %5297, label %5569, label %5298

; <label>:5298                                    ; preds = %5295
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5307 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5309 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5310 = extractvalue %dx.types.CBufRet.f32 %5303, 3
  %5311 = fadd fast float %5308, %5214
  %5312 = fadd fast float %5309, %5215
  %5313 = fadd fast float %5310, %5216
  %5314 = fmul fast float %5311, %5300
  %5315 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5302, float %5314)  ; FMad(a,b,c)
  %5316 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5304, float %5315)  ; FMad(a,b,c)
  %5317 = fmul fast float %5311, %5305
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5312, float %5306, float %5317)  ; FMad(a,b,c)
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5307, float %5318)  ; FMad(a,b,c)
  %5320 = fsub fast float %5316, %5308
  %5321 = fsub fast float %5319, %5309
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5326 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.i32 %5329, 1
  %5332 = udiv i32 %5331, %5330
  %5333 = fsub fast float %5320, %5323
  %5334 = fsub fast float %5321, %5324
  %5335 = call float @dx.op.binary.f32(i32 35, float %5333, float 0.000000e+00)  ; FMax(a,b)
  %5336 = call float @dx.op.binary.f32(i32 35, float %5334, float 0.000000e+00)  ; FMax(a,b)
  %5337 = call float @dx.op.binary.f32(i32 36, float %5335, float %5325)  ; FMin(a,b)
  %5338 = call float @dx.op.binary.f32(i32 36, float %5336, float %5326)  ; FMin(a,b)
  %5339 = add i32 %5330, -1
  %5340 = add i32 %5332, -1
  %5341 = fmul fast float %5337, %5328
  %5342 = fmul fast float %5338, %5328
  %5343 = fptoui float %5341 to i32
  %5344 = fptoui float %5342 to i32
  %5345 = call i32 @dx.op.binary.i32(i32 40, i32 %5343, i32 %5339)  ; UMin(a,b)
  %5346 = call i32 @dx.op.binary.i32(i32 40, i32 %5344, i32 %5340)  ; UMin(a,b)
  %5347 = mul i32 %5346, %5330
  %5348 = add i32 %5347, %5345
  %5349 = shl i32 %5348, 2
  %5350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.i32 %5350, 0
  %5352 = icmp eq i32 %5351, -1
  br i1 %5352, label %5569, label %5353

; <label>:5353                                    ; preds = %5298
  %5354 = mul i32 %5351, 148
  %5355 = add i32 %5354, 4
  %5356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = add i32 %5354, 8
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = add i32 %5354, 36
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = add i32 %5354, 60
  %5365 = add i32 %5354, 92
  %5366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.i32 %5366, 0
  %5368 = add i32 %5354, 116
  %5369 = fsub fast float %5320, %5357
  %5370 = fsub fast float %5321, %5360
  %5371 = fmul fast float %5328, %5369
  %5372 = fmul fast float %5328, %5370
  %5373 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5378 = call float @dx.op.unary.f32(i32 83, float %5373)  ; DerivCoarseX(value)
  %5379 = call float @dx.op.unary.f32(i32 83, float %5375)  ; DerivCoarseX(value)
  %5380 = call float @dx.op.unary.f32(i32 84, float %5373)  ; DerivCoarseY(value)
  %5381 = call float @dx.op.unary.f32(i32 84, float %5375)  ; DerivCoarseY(value)
  %5382 = fmul fast float %5378, %5377
  %5383 = fmul fast float %5379, %5377
  %5384 = fmul fast float %5380, %5377
  %5385 = fmul fast float %5381, %5377
  %5386 = call float @dx.op.dot2.f32(i32 54, float %5384, float %5385, float %5384, float %5385)  ; Dot2(ax,ay,bx,by)
  %5387 = call float @dx.op.dot2.f32(i32 54, float %5382, float %5383, float %5382, float %5383)  ; Dot2(ax,ay,bx,by)
  %5388 = call float @dx.op.binary.f32(i32 35, float %5387, float %5386)  ; FMax(a,b)
  %5389 = call float @dx.op.unary.f32(i32 23, float %5388)  ; Log(value)
  %5390 = fmul fast float %5389, 5.000000e-01
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5393 = fadd fast float %5392, %5390
  %5394 = call float @dx.op.binary.f32(i32 35, float %5393, float 0.000000e+00)  ; FMax(a,b)
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5397 = fadd fast float %5396, %5394
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 3
  %5400 = fadd fast float %5397, %5399
  %5401 = add i32 %5367, 0
  %5402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5401, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5402, i32 0)  ; GetDimensions(handle,mipLevel)
  %5404 = extractvalue %dx.types.Dimensions %5403, 0
  %5405 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5404)  ; FirstbitLo(value)
  %5406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.i32 %5406, 1
  %5408 = sub nsw i32 %5407, %5405
  %5409 = sitofp i32 %5408 to float
  %5410 = fsub fast float %5400, %5409
  %5411 = call float @dx.op.binary.f32(i32 35, float %5410, float 0.000000e+00)  ; FMax(a,b)
  %5412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5402, %dx.types.Handle %48, float %5373, float %5375, float %5363, float undef, i32 0, i32 0, i32 undef, float %5411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5413 = extractvalue %dx.types.ResRet.f32 %5412, 0
  %5414 = fcmp ule float %5413, 0x3FE0101020000000
  %5415 = extractvalue %dx.types.CBufRet.i32 %5406, 0
  %5416 = and i32 %5415, 128
  %5417 = icmp ne i32 %5416, 0
  %5418 = and i1 %5414, %5417
  br i1 %5418, label %5569, label %5419

; <label>:5419                                    ; preds = %5353
  %5420 = add i32 %5354, 20
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = add i32 %5354, 24
  %5424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = add i32 %5354, 40
  %5427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5426, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = add i32 %5354, 96
  %5430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.i32 %5430, 0
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5434 = fmul fast float %5433, %5373
  %5435 = fmul fast float %5433, %5375
  %5436 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5437 = fadd fast float %5434, %5436
  %5438 = fadd fast float %5435, %5436
  %5439 = add i32 %5431, 0
  %5440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5439, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5441 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5440, i32 0)  ; GetDimensions(handle,mipLevel)
  %5442 = extractvalue %dx.types.Dimensions %5441, 0
  %5443 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5442)  ; FirstbitLo(value)
  %5444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.i32 %5444, 1
  %5446 = sub nsw i32 %5445, %5443
  %5447 = sitofp i32 %5446 to float
  %5448 = fsub fast float %5397, %5447
  %5449 = call float @dx.op.binary.f32(i32 35, float %5448, float 0.000000e+00)  ; FMax(a,b)
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5440, %dx.types.Handle %48, float %5437, float %5438, float %5428, float undef, i32 0, i32 0, i32 undef, float %5449)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = fmul fast float %5451, %5422
  %5453 = fadd fast float %5452, %5425
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 3
  %5462 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5463 = fadd fast float %5459, %5320
  %5464 = fadd fast float %5461, %5321
  %5465 = fadd fast float %5453, %5462
  %5466 = fmul fast float %5463, %5455
  %5467 = call float @dx.op.tertiary.f32(i32 46, float %5464, float %5456, float %5466)  ; FMad(a,b,c)
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %5465, float %5457, float %5467)  ; FMad(a,b,c)
  %5469 = fsub fast float %5468, %5462
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 2
  %5472 = fsub fast float %5469, %5471
  %5473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.i32 %5473, 0
  %5475 = call i32 @dx.op.binary.i32(i32 40, i32 %5351, i32 %5474)  ; UMin(a,b)
  %5476 = mul i32 %5475, 36
  %5477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5476, i32 undef)  ; BufferLoad(srv,index,wot)
  %5478 = extractvalue %dx.types.ResRet.i32 %5477, 0
  %5479 = add i32 %5476, 4
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = fmul fast float %5481, %5373
  %5483 = fmul fast float %5481, %5375
  %5484 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5485 = fadd fast float %5482, %5484
  %5486 = fadd fast float %5483, %5484
  %5487 = icmp eq i32 %5478, 0
  br i1 %5487, label %5556, label %5488

; <label>:5488                                    ; preds = %5419
  br label %5489

; <label>:5489                                    ; preds = %5546, %5488
  %5490 = phi float [ %5547, %5546 ], [ 0.000000e+00, %5488 ]
  %5491 = phi float [ %5548, %5546 ], [ 0.000000e+00, %5488 ]
  %5492 = phi float [ %5549, %5546 ], [ 0.000000e+00, %5488 ]
  %5493 = phi float [ %5550, %5546 ], [ 0.000000e+00, %5488 ]
  %5494 = phi float [ %5551, %5546 ], [ 0.000000e+00, %5488 ]
  %5495 = phi float [ %5552, %5546 ], [ 0.000000e+00, %5488 ]
  %5496 = phi i32 [ %5553, %5546 ], [ 0, %5488 ]
  %5497 = shl i32 %5496, 2
  %5498 = add i32 %5364, %5497
  %5499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = add i32 %5368, %5497
  %5502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5501, i32 undef)  ; BufferLoad(srv,index,wot)
  %5503 = extractvalue %dx.types.ResRet.i32 %5502, 0
  %5504 = add i32 %5503, 0
  %5505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5504, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5506 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5505, i32 0)  ; GetDimensions(handle,mipLevel)
  %5507 = extractvalue %dx.types.Dimensions %5506, 0
  %5508 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5507)  ; FirstbitLo(value)
  %5509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.i32 %5509, 1
  %5511 = sub nsw i32 %5510, %5508
  %5512 = sitofp i32 %5511 to float
  %5513 = fsub fast float %5397, %5512
  %5514 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5505, %dx.types.Handle %48, float %5485, float %5486, float %5500, float undef, i32 0, i32 0, i32 undef, float %5514)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 0
  %5517 = fcmp fast ogt float %5516, 0.000000e+00
  br i1 %5517, label %5518, label %5546

; <label>:5518                                    ; preds = %5489
  %5519 = add i32 %5479, %5497
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = and i32 %5521, 32767
  %5523 = mul nuw nsw i32 %5522, 928
  %5524 = add nuw nsw i32 %5523, 48
  %5525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = add nuw nsw i32 %5523, 60
  %5530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = fmul fast float %5526, %5516
  %5535 = fmul fast float %5527, %5516
  %5536 = fmul fast float %5528, %5516
  %5537 = fadd fast float %5534, %5490
  %5538 = fadd fast float %5535, %5491
  %5539 = fadd fast float %5536, %5492
  %5540 = fmul fast float %5531, %5516
  %5541 = fmul fast float %5532, %5516
  %5542 = fmul fast float %5533, %5516
  %5543 = fadd fast float %5540, %5493
  %5544 = fadd fast float %5541, %5494
  %5545 = fadd fast float %5542, %5495
  br label %5546

; <label>:5546                                    ; preds = %5518, %5489
  %5547 = phi float [ %5537, %5518 ], [ %5490, %5489 ]
  %5548 = phi float [ %5538, %5518 ], [ %5491, %5489 ]
  %5549 = phi float [ %5539, %5518 ], [ %5492, %5489 ]
  %5550 = phi float [ %5543, %5518 ], [ %5493, %5489 ]
  %5551 = phi float [ %5544, %5518 ], [ %5494, %5489 ]
  %5552 = phi float [ %5545, %5518 ], [ %5495, %5489 ]
  %5553 = add nuw i32 %5496, 1
  %5554 = icmp eq i32 %5553, %5478
  br i1 %5554, label %5555, label %5489

; <label>:5555                                    ; preds = %5546
  br label %5556

; <label>:5556                                    ; preds = %5555, %5419
  %5557 = phi float [ 0.000000e+00, %5419 ], [ %5547, %5555 ]
  %5558 = phi float [ 0.000000e+00, %5419 ], [ %5548, %5555 ]
  %5559 = phi float [ 0.000000e+00, %5419 ], [ %5549, %5555 ]
  %5560 = phi float [ 0.000000e+00, %5419 ], [ %5550, %5555 ]
  %5561 = phi float [ 0.000000e+00, %5419 ], [ %5551, %5555 ]
  %5562 = phi float [ 0.000000e+00, %5419 ], [ %5552, %5555 ]
  %5563 = fadd fast float %5560, %5557
  %5564 = fmul fast float %5563, 0x3F847AE140000000
  %5565 = fadd fast float %5561, %5558
  %5566 = fmul fast float %5565, 0x3F847AE140000000
  %5567 = fadd fast float %5562, %5559
  %5568 = fmul fast float %5567, 0x3F847AE140000000
  br label %5569

; <label>:5569                                    ; preds = %5556, %5353, %5298, %5295, %5266, %5228
  %5570 = phi float [ %5280, %5266 ], [ -1.310720e+05, %5228 ], [ %5472, %5556 ], [ -1.310720e+05, %5298 ], [ -1.310720e+05, %5353 ], [ -1.310720e+05, %5295 ]
  %5571 = phi float [ %5290, %5266 ], [ 0.000000e+00, %5228 ], [ %5564, %5556 ], [ 0.000000e+00, %5298 ], [ 0.000000e+00, %5353 ], [ 0.000000e+00, %5295 ]
  %5572 = phi float [ %5292, %5266 ], [ 0.000000e+00, %5228 ], [ %5566, %5556 ], [ 0.000000e+00, %5298 ], [ 0.000000e+00, %5353 ], [ 0.000000e+00, %5295 ]
  %5573 = phi float [ %5294, %5266 ], [ 0.000000e+00, %5228 ], [ %5568, %5556 ], [ 0.000000e+00, %5298 ], [ 0.000000e+00, %5353 ], [ 0.000000e+00, %5295 ]
  %5574 = phi i1 [ true, %5266 ], [ false, %5228 ], [ true, %5556 ], [ false, %5298 ], [ false, %5353 ], [ false, %5295 ]
  %5575 = and i32 %227, 3
  %5576 = icmp eq i32 %5575, 1
  %5577 = select i1 %5576, float 1.000000e+00, float 0.000000e+00
  %5578 = fsub fast float %5570, %159
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = select i1 %5574, float %5579, float 1.000000e+00
  %5581 = fmul fast float %5580, %5577
  %5582 = icmp eq i32 %5575, 3
  %5583 = select i1 %5582, float 1.000000e+00, float %5581
  %5584 = call float @dx.op.binary.f32(i32 35, float %5120, float %5583)  ; FMax(a,b)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fcmp fast une float %5585, 0.000000e+00
  %5587 = fsub fast float -0.000000e+00, %177
  %5588 = fsub fast float -0.000000e+00, %178
  %5589 = fsub fast float -0.000000e+00, %179
  br i1 %5586, label %5590, label %5752

; <label>:5590                                    ; preds = %5569
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fmul fast float %5585, 2.500000e+00
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5585, 0x4013FFFFE0000000
  %5595 = fadd fast float %5594, 0xBFFFFFFFE0000000
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fmul fast float %5585, 0x4004000020000000
  %5598 = fadd fast float %5597, 0xBFF8000040000000
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5601 = fmul fast float %5145, 1.000000e+01
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = fmul fast float %5602, 2.000000e+00
  %5604 = fsub fast float 3.000000e+00, %5603
  %5605 = fmul fast float %5602, %5602
  %5606 = fmul fast float %5605, %5604
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = fsub fast float 0x3FE3333340000000, %5166
  %5609 = fmul fast float %5608, 0x400AAAAAA0000000
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5607, %5610
  %5612 = fmul fast float %5203, 0x3FEA2B8620000000
  %5613 = fmul fast float %5204, 0x3FEA2B8620000000
  %5614 = fmul fast float %5205, 0x3FEA2B8620000000
  %5615 = fadd fast float %5612, 0x3FC81DFBA0000000
  %5616 = fmul fast float %5615, %5203
  %5617 = fadd fast float %5616, 0x3F910E6020000000
  %5618 = fadd fast float %5613, 0x3FC81DFBA0000000
  %5619 = fmul fast float %5618, %5204
  %5620 = fadd fast float %5619, 0x3F910E6020000000
  %5621 = fadd fast float %5614, 0x3FC81DFBA0000000
  %5622 = fmul fast float %5621, %5205
  %5623 = fadd fast float %5622, 0x3F910E6020000000
  %5624 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5627 = fsub fast float %5624, %5203
  %5628 = fsub fast float %5625, %5204
  %5629 = fsub fast float %5626, %5205
  %5630 = fmul fast float %5627, %5600
  %5631 = fmul fast float %5630, %5611
  %5632 = fmul fast float %5628, %5600
  %5633 = fmul fast float %5632, %5611
  %5634 = fmul fast float %5629, %5600
  %5635 = fmul fast float %5634, %5611
  %5636 = fadd fast float %5631, %5203
  %5637 = fadd fast float %5633, %5204
  %5638 = fadd fast float %5635, %5205
  %5639 = fmul fast float %5117, %5117
  %5640 = fmul fast float %5639, %5639
  %5641 = fadd fast float %5596, 1.000000e+00
  %5642 = fsub fast float %5641, %5611
  %5643 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5644 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fsub fast float 1.000000e+00, %5640
  %5647 = call float @dx.op.binary.f32(i32 36, float %5643, float %5646)  ; FMin(a,b)
  %5648 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5647, float %5648)  ; FMax(a,b)
  %5650 = fadd fast float %5645, 0xBFE4CCCCC0000000
  %5651 = fmul fast float %5650, 0x4006DB6DA0000000
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fmul fast float %5652, 2.000000e+00
  %5654 = fsub fast float 3.000000e+00, %5653
  %5655 = bitcast float %5163 to i32
  %5656 = ashr i32 %5655, 1
  %5657 = add nsw i32 %5656, 532487669
  %5658 = bitcast i32 %5657 to float
  %5659 = fsub fast float 1.000000e+00, %5658
  %5660 = bitcast float %5659 to i32
  %5661 = sub nsw i32 2129859010, %5660
  %5662 = bitcast i32 %5661 to float
  %5663 = fmul fast float %5662, 2.000000e+00
  %5664 = bitcast float %5164 to i32
  %5665 = ashr i32 %5664, 1
  %5666 = add nsw i32 %5665, 532487669
  %5667 = bitcast i32 %5666 to float
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5671, 2.000000e+00
  %5673 = bitcast float %5165 to i32
  %5674 = ashr i32 %5673, 1
  %5675 = add nsw i32 %5674, 532487669
  %5676 = bitcast i32 %5675 to float
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5680, 2.000000e+00
  %5682 = fsub fast float 0x4002A9FBE0000000, %5663
  %5683 = fadd fast float %5663, 0x3FD54FDF00000000
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = fmul fast float %5686, %5682
  %5688 = fmul fast float %5687, %5687
  %5689 = fsub fast float 0x4002A9FBE0000000, %5672
  %5690 = fadd fast float %5672, 0x3FD54FDF00000000
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5693, %5689
  %5695 = fmul fast float %5694, %5694
  %5696 = fsub fast float 0x4002A9FBE0000000, %5681
  %5697 = fadd fast float %5681, 0x3FD54FDF00000000
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %5701, %5701
  %5703 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5688)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5695)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5702)  ; FMax(a,b)
  %5706 = fsub fast float 1.000000e+00, %5591
  %5707 = fadd fast float %5706, %5607
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = fsub fast float 1.000000e+00, %5583
  %5710 = fmul fast float %5649, %5709
  %5711 = fmul fast float %5652, %5652
  %5712 = fmul fast float %5711, %5710
  %5713 = fmul fast float %5712, %5654
  %5714 = fmul fast float %5709, 0xBFE99999A0000000
  %5715 = fmul fast float %5714, %5600
  %5716 = fmul fast float %5715, %5611
  %5717 = fadd fast float %5716, 1.000000e+00
  %5718 = fadd fast float %5166, -1.000000e+00
  %5719 = fmul fast float %5717, %5718
  %5720 = fadd fast float %5719, 1.000000e+00
  %5721 = fsub fast float %5703, %5163
  %5722 = fsub fast float %5704, %5164
  %5723 = fsub fast float %5705, %5165
  %5724 = fmul fast float %5713, %5721
  %5725 = fmul fast float %5713, %5722
  %5726 = fmul fast float %5713, %5723
  %5727 = fadd fast float %5724, %5163
  %5728 = fadd fast float %5725, %5164
  %5729 = fadd fast float %5726, %5165
  %5730 = fsub fast float %109, %5099
  %5731 = fsub fast float %110, %5100
  %5732 = fsub fast float %111, %5101
  %5733 = fmul fast float %5713, %5730
  %5734 = fmul fast float %5713, %5731
  %5735 = fmul fast float %5713, %5732
  %5736 = fadd fast float %5733, %5099
  %5737 = fadd fast float %5734, %5100
  %5738 = fadd fast float %5735, %5101
  %5739 = fmul fast float %5713, %5708
  %5740 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5739, %5741
  %5743 = fadd fast float %5742, %5740
  %5744 = fsub fast float 1.000000e+00, %5117
  %5745 = fmul fast float %5713, %5744
  %5746 = fadd fast float %5745, %5117
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5736, float %5737, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 25, float %5747)  ; Rsqrt(value)
  %5749 = fmul fast float %5736, %5748
  %5750 = fmul fast float %5737, %5748
  %5751 = fmul fast float %5738, %5748
  br label %5752

; <label>:5752                                    ; preds = %5590, %5569
  %5753 = phi float [ %5727, %5590 ], [ %5163, %5569 ]
  %5754 = phi float [ %5728, %5590 ], [ %5164, %5569 ]
  %5755 = phi float [ %5729, %5590 ], [ %5165, %5569 ]
  %5756 = phi float [ %5749, %5590 ], [ %5099, %5569 ]
  %5757 = phi float [ %5750, %5590 ], [ %5100, %5569 ]
  %5758 = phi float [ %5751, %5590 ], [ %5101, %5569 ]
  %5759 = phi float [ %5636, %5590 ], [ %5203, %5569 ]
  %5760 = phi float [ %5637, %5590 ], [ %5204, %5569 ]
  %5761 = phi float [ %5638, %5590 ], [ %5205, %5569 ]
  %5762 = phi float [ %5743, %5590 ], [ %5166, %5569 ]
  %5763 = phi float [ %5746, %5590 ], [ %5117, %5569 ]
  %5764 = fsub fast float -0.000000e+00, %159
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5768 = fmul fast float %127, %5766
  %5769 = fmul fast float %129, %5767
  %5770 = fsub fast float 1.000000e+00, %5768
  %5771 = fsub fast float 1.000000e+00, %5769
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5775 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %5776 = fmul fast float %5770, %5773
  %5777 = fmul fast float %5770, %5774
  %5778 = fmul fast float %5770, %5775
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = fmul fast float %5771, %5780
  %5784 = fmul fast float %5771, %5781
  %5785 = fmul fast float %5771, %5782
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = fadd fast float %5783, %5787
  %5791 = fadd fast float %5790, %5776
  %5792 = fadd fast float %5784, %5788
  %5793 = fadd fast float %5792, %5777
  %5794 = fadd fast float %5785, %5789
  %5795 = fadd fast float %5794, %5778
  %5796 = fmul fast float %5791, %93
  %5797 = fmul fast float %5793, %93
  %5798 = fmul fast float %5795, %93
  %5799 = select i1 %251, float 0.000000e+00, float %5755
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, 2.000000e+00
  %5804 = fmul fast float %5803, %5756
  %5805 = fmul fast float %5803, %5757
  %5806 = fmul fast float %5803, %5758
  %5807 = fsub fast float %177, %5804
  %5808 = fsub fast float %178, %5805
  %5809 = fsub fast float %179, %5806
  %5810 = call float @dx.op.binary.f32(i32 36, float %5763, float 1.000000e+00)  ; FMin(a,b)
  %5811 = fsub fast float 1.000000e+00, %5763
  %5812 = bitcast float %5811 to i32
  %5813 = sub nsw i32 2129859010, %5812
  %5814 = bitcast i32 %5813 to float
  %5815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5816 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = fcmp fast oeq float %5816, 0.000000e+00
  %5818 = fcmp fast oeq float %5815, 0.000000e+00
  %5819 = or i1 %5818, %5817
  br i1 %5819, label %5849, label %5820

; <label>:5820                                    ; preds = %5752
  %5821 = fsub fast float -0.000000e+00, %76
  %5822 = fsub fast float -0.000000e+00, %74
  %5823 = call float @dx.op.unary.f32(i32 24, float %5816)  ; Sqrt(value)
  %5824 = fdiv fast float %5823, %5815
  %5825 = fcmp fast ogt float %5824, 0x3FFB6F8900000000
  %5826 = select i1 %5825, float 0x3FFB6F8900000000, float %5824
  %5827 = fmul fast float %5826, 0x3FE8A23460000000
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = call float @dx.op.binary.f32(i32 35, float %5826, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5830 = fmul fast float %5828, %5815
  %5831 = fmul fast float %5829, 0x3FF279A740000000
  %5832 = fadd fast float %5831, -1.000000e+00
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %75, float %5821, float %5822, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.unary.f32(i32 25, float %5833)  ; Rsqrt(value)
  %5835 = fmul fast float %5834, %5821
  %5836 = fmul fast float %5834, %5822
  %5837 = fmul fast float %5834, %75
  %5838 = fmul fast float %5832, %5832
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5829, 0x40005F8BE0000000
  %5841 = fsub fast float 0x400C5BF8A0000000, %5840
  %5842 = fdiv fast float %5830, %5841
  %5843 = fmul fast float %5842, 0x3FEE31C3C0000000
  %5844 = fmul fast float %5843, %5839
  %5845 = fmul fast float %5829, 0x3FDACB7480000000
  %5846 = fadd fast float %5845, 0xBFD7347680000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fmul fast float %5847, %5839
  br label %5849

; <label>:5849                                    ; preds = %5820, %5752
  %5850 = phi float [ %5835, %5820 ], [ 0.000000e+00, %5752 ]
  %5851 = phi float [ %5836, %5820 ], [ 0.000000e+00, %5752 ]
  %5852 = phi float [ %5837, %5820 ], [ 0.000000e+00, %5752 ]
  %5853 = phi float [ %5844, %5820 ], [ 0.000000e+00, %5752 ]
  %5854 = phi float [ %5848, %5820 ], [ 0.000000e+00, %5752 ]
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fmul fast float %5855, %5855
  %5857 = fmul fast float %5856, 0x3FEE471020000000
  %5858 = fadd fast float %5857, 0xBFD42F6020000000
  %5859 = fmul fast float %5815, 0x3FD20DD760000000
  %5860 = fmul fast float %5858, %5854
  %5861 = fmul fast float %5853, 0x3FDF454380000000
  %5862 = fmul fast float %5861, %5855
  %5863 = fadd fast float %5862, %5859
  %5864 = fadd fast float %5863, %5860
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = fmul fast float %5865, 0x3FDF454380000000
  %5867 = fmul fast float %5865, %5865
  %5868 = fmul fast float %5867, 0x3FEE471020000000
  %5869 = fadd fast float %5868, 0xBFD42F6020000000
  %5870 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5853, float %5854, float 0x3FD20DD760000000, float %5866, float %5869)  ; Dot3(ax,ay,az,bx,by,bz)
  %5871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5872 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = fcmp fast oeq float %5872, 0.000000e+00
  %5874 = fcmp fast oeq float %5871, 0.000000e+00
  %5875 = or i1 %5874, %5873
  br i1 %5875, label %5905, label %5876

; <label>:5876                                    ; preds = %5849
  %5877 = fsub fast float -0.000000e+00, %72
  %5878 = fsub fast float -0.000000e+00, %70
  %5879 = call float @dx.op.unary.f32(i32 24, float %5872)  ; Sqrt(value)
  %5880 = fdiv fast float %5879, %5871
  %5881 = fcmp fast ogt float %5880, 0x3FFB6F8900000000
  %5882 = select i1 %5881, float 0x3FFB6F8900000000, float %5880
  %5883 = fmul fast float %5882, 0x3FE8A23460000000
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = call float @dx.op.binary.f32(i32 35, float %5882, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5886 = fmul fast float %5884, %5871
  %5887 = fmul fast float %5885, 0x3FF279A740000000
  %5888 = fadd fast float %5887, -1.000000e+00
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %71, float %5877, float %5878, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = call float @dx.op.unary.f32(i32 25, float %5889)  ; Rsqrt(value)
  %5891 = fmul fast float %5890, %5877
  %5892 = fmul fast float %5890, %5878
  %5893 = fmul fast float %5890, %71
  %5894 = fmul fast float %5888, %5888
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = fmul fast float %5885, 0x40005F8BE0000000
  %5897 = fsub fast float 0x400C5BF8A0000000, %5896
  %5898 = fdiv fast float %5886, %5897
  %5899 = fmul fast float %5898, 0x3FEE31C3C0000000
  %5900 = fmul fast float %5899, %5895
  %5901 = fmul fast float %5885, 0x3FDACB7480000000
  %5902 = fadd fast float %5901, 0xBFD7347680000000
  %5903 = fmul fast float %5902, %5898
  %5904 = fmul fast float %5903, %5895
  br label %5905

; <label>:5905                                    ; preds = %5876, %5849
  %5906 = phi float [ %5891, %5876 ], [ 0.000000e+00, %5849 ]
  %5907 = phi float [ %5892, %5876 ], [ 0.000000e+00, %5849 ]
  %5908 = phi float [ %5893, %5876 ], [ 0.000000e+00, %5849 ]
  %5909 = phi float [ %5900, %5876 ], [ 0.000000e+00, %5849 ]
  %5910 = phi float [ %5904, %5876 ], [ 0.000000e+00, %5849 ]
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5907, float %5908, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = fmul fast float %5911, %5911
  %5913 = fmul fast float %5912, 0x3FEE471020000000
  %5914 = fadd fast float %5913, 0xBFD42F6020000000
  %5915 = fmul fast float %5871, 0x3FD20DD760000000
  %5916 = fmul fast float %5914, %5910
  %5917 = fmul fast float %5909, 0x3FDF454380000000
  %5918 = fmul fast float %5917, %5911
  %5919 = fadd fast float %5918, %5915
  %5920 = fadd fast float %5919, %5916
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5907, float %5908, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = fmul fast float %5921, 0x3FDF454380000000
  %5923 = fmul fast float %5921, %5921
  %5924 = fmul fast float %5923, 0x3FEE471020000000
  %5925 = fadd fast float %5924, 0xBFD42F6020000000
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5909, float %5910, float 0x3FD20DD760000000, float %5922, float %5925)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5928 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = fcmp fast oeq float %5928, 0.000000e+00
  %5930 = fcmp fast oeq float %5927, 0.000000e+00
  %5931 = or i1 %5930, %5929
  br i1 %5931, label %5961, label %5932

; <label>:5932                                    ; preds = %5905
  %5933 = fsub fast float -0.000000e+00, %68
  %5934 = fsub fast float -0.000000e+00, %66
  %5935 = call float @dx.op.unary.f32(i32 24, float %5928)  ; Sqrt(value)
  %5936 = fdiv fast float %5935, %5927
  %5937 = fcmp fast ogt float %5936, 0x3FFB6F8900000000
  %5938 = select i1 %5937, float 0x3FFB6F8900000000, float %5936
  %5939 = fmul fast float %5938, 0x3FE8A23460000000
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5938, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5942 = fmul fast float %5940, %5927
  %5943 = fmul fast float %5941, 0x3FF279A740000000
  %5944 = fadd fast float %5943, -1.000000e+00
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5934, float %67, float %5933, float %5934, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = call float @dx.op.unary.f32(i32 25, float %5945)  ; Rsqrt(value)
  %5947 = fmul fast float %5946, %5933
  %5948 = fmul fast float %5946, %5934
  %5949 = fmul fast float %5946, %67
  %5950 = fmul fast float %5944, %5944
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = fmul fast float %5941, 0x40005F8BE0000000
  %5953 = fsub fast float 0x400C5BF8A0000000, %5952
  %5954 = fdiv fast float %5942, %5953
  %5955 = fmul fast float %5954, 0x3FEE31C3C0000000
  %5956 = fmul fast float %5955, %5951
  %5957 = fmul fast float %5941, 0x3FDACB7480000000
  %5958 = fadd fast float %5957, 0xBFD7347680000000
  %5959 = fmul fast float %5958, %5954
  %5960 = fmul fast float %5959, %5951
  br label %5961

; <label>:5961                                    ; preds = %5932, %5905
  %5962 = phi float [ %5947, %5932 ], [ 0.000000e+00, %5905 ]
  %5963 = phi float [ %5948, %5932 ], [ 0.000000e+00, %5905 ]
  %5964 = phi float [ %5949, %5932 ], [ 0.000000e+00, %5905 ]
  %5965 = phi float [ %5956, %5932 ], [ 0.000000e+00, %5905 ]
  %5966 = phi float [ %5960, %5932 ], [ 0.000000e+00, %5905 ]
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5962, float %5963, float %5964, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = fmul fast float %5967, %5967
  %5969 = fmul fast float %5968, 0x3FEE471020000000
  %5970 = fadd fast float %5969, 0xBFD42F6020000000
  %5971 = fmul fast float %5927, 0x3FD20DD760000000
  %5972 = fmul fast float %5970, %5966
  %5973 = fmul fast float %5965, 0x3FDF454380000000
  %5974 = fmul fast float %5973, %5967
  %5975 = fadd fast float %5974, %5971
  %5976 = fadd fast float %5975, %5972
  %5977 = call float @dx.op.dot3.f32(i32 55, float %5962, float %5963, float %5964, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5978 = fmul fast float %5977, 0x3FDF454380000000
  %5979 = fmul fast float %5977, %5977
  %5980 = fmul fast float %5979, 0x3FEE471020000000
  %5981 = fadd fast float %5980, 0xBFD42F6020000000
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5927, float %5965, float %5966, float 0x3FD20DD760000000, float %5978, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5984 = call float @dx.op.binary.f32(i32 35, float %5920, float 0.000000e+00)  ; FMax(a,b)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5976, float 0.000000e+00)  ; FMax(a,b)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5987 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5982, float 0.000000e+00)  ; FMax(a,b)
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = call float @dx.op.binary.f32(i32 36, float %5759, float %5990)  ; FMin(a,b)
  %5992 = fsub fast float 1.000000e+00, %5810
  %5993 = fmul fast float %5991, %5992
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = bitcast float %5994 to i32
  %5996 = sub nsw i32 2129859010, %5995
  %5997 = bitcast i32 %5996 to float
  %5998 = call float @dx.op.binary.f32(i32 36, float %5760, float %5990)  ; FMin(a,b)
  %5999 = fmul fast float %5998, %5992
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = bitcast float %6000 to i32
  %6002 = sub nsw i32 2129859010, %6001
  %6003 = bitcast i32 %6002 to float
  %6004 = call float @dx.op.binary.f32(i32 36, float %5761, float %5990)  ; FMin(a,b)
  %6005 = fmul fast float %6004, %5992
  %6006 = fsub fast float 1.000000e+00, %6005
  %6007 = bitcast float %6006 to i32
  %6008 = sub nsw i32 2129859010, %6007
  %6009 = bitcast i32 %6008 to float
  %6010 = fmul fast float %5983, %5810
  %6011 = fmul fast float %6010, %5997
  %6012 = fmul fast float %5984, %5810
  %6013 = fmul fast float %6012, %6003
  %6014 = fmul fast float %5985, %5810
  %6015 = fmul fast float %6014, %6009
  %6016 = call float @dx.op.binary.f32(i32 36, float %5753, float %5990)  ; FMin(a,b)
  %6017 = fmul fast float %6016, %5992
  %6018 = fsub fast float 1.000000e+00, %6017
  %6019 = bitcast float %6018 to i32
  %6020 = sub nsw i32 2129859010, %6019
  %6021 = bitcast i32 %6020 to float
  %6022 = call float @dx.op.binary.f32(i32 36, float %5754, float %5990)  ; FMin(a,b)
  %6023 = fmul fast float %6022, %5992
  %6024 = fsub fast float 1.000000e+00, %6023
  %6025 = bitcast float %6024 to i32
  %6026 = sub nsw i32 2129859010, %6025
  %6027 = bitcast i32 %6026 to float
  %6028 = call float @dx.op.binary.f32(i32 36, float %5799, float %5990)  ; FMin(a,b)
  %6029 = fmul fast float %6028, %5992
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = bitcast float %6030 to i32
  %6032 = sub nsw i32 2129859010, %6031
  %6033 = bitcast i32 %6032 to float
  %6034 = fmul fast float %5986, %5810
  %6035 = fmul fast float %6034, %6021
  %6036 = fmul fast float %5987, %5810
  %6037 = fmul fast float %6036, %6027
  %6038 = fmul fast float %5988, %5810
  %6039 = fmul fast float %6038, %6033
  %6040 = call float @dx.op.dot3.f32(i32 55, float %6011, float %6013, float %6015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = select i1 %251, float 0.000000e+00, float %6011
  %6042 = select i1 %251, float %6040, float %6013
  %6043 = select i1 %251, float 0.000000e+00, float %6015
  %6044 = call float @dx.op.dot3.f32(i32 55, float %6035, float %6037, float %6039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = select i1 %251, float 0.000000e+00, float %6035
  %6046 = select i1 %251, float %6044, float %6037
  %6047 = select i1 %251, float 0.000000e+00, float %6039
  %6048 = fmul fast float %4455, %4455
  %6049 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6050 = fmul fast float %5801, 9.843750e-01
  %6051 = fmul fast float %5762, 9.843750e-01
  %6052 = fadd fast float %6050, 7.812500e-03
  %6053 = fadd fast float %6051, 7.812500e-03
  %6054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %6052, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6055 = extractvalue %dx.types.ResRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.ResRet.f32 %6054, 1
  %6057 = extractvalue %dx.types.ResRet.f32 %6054, 2
  %6058 = extractvalue %dx.types.ResRet.f32 %6054, 3
  %6059 = fsub fast float 1.000000e+00, %6049
  %6060 = fsub fast float %6057, %6055
  %6061 = fsub fast float %6058, %6056
  %6062 = fmul fast float %6060, %6059
  %6063 = fmul fast float %6061, %6059
  %6064 = fadd fast float %6062, %6055
  %6065 = fadd fast float %6063, %6056
  %6066 = fmul fast float %6064, %5753
  %6067 = fmul fast float %6064, %5754
  %6068 = fmul fast float %6064, %5799
  %6069 = fadd fast float %6066, %6065
  %6070 = fadd fast float %6067, %6065
  %6071 = fadd fast float %6068, %6065
  %6072 = fcmp fast ogt float %5118, 0.000000e+00
  br i1 %6072, label %6073, label %6099

; <label>:6073                                    ; preds = %5961
  %6074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %5801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6075 = extractvalue %dx.types.ResRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.ResRet.f32 %6074, 1
  %6077 = extractvalue %dx.types.ResRet.f32 %6074, 2
  %6078 = fadd fast float %6075, -5.000000e-01
  %6079 = fadd fast float %6076, -5.000000e-01
  %6080 = fadd fast float %6077, -5.000000e-01
  %6081 = fsub fast float 1.000000e+00, %5753
  %6082 = fsub fast float 1.000000e+00, %5754
  %6083 = fsub fast float 1.000000e+00, %5799
  %6084 = fmul fast float %5753, 4.000000e+00
  %6085 = fmul fast float %6084, %6081
  %6086 = fmul fast float %6085, %6078
  %6087 = fmul fast float %5754, 4.000000e+00
  %6088 = fmul fast float %6087, %6082
  %6089 = fmul fast float %6088, %6079
  %6090 = fmul fast float %5799, 4.000000e+00
  %6091 = fmul fast float %6090, %6083
  %6092 = fmul fast float %6091, %6080
  %6093 = fadd fast float %6086, %6069
  %6094 = fadd fast float %6089, %6070
  %6095 = fadd fast float %6092, %6071
  %6096 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  br label %6099

; <label>:6099                                    ; preds = %6073, %5961
  %6100 = phi float [ %6096, %6073 ], [ %6069, %5961 ]
  %6101 = phi float [ %6097, %6073 ], [ %6070, %5961 ]
  %6102 = phi float [ %6098, %6073 ], [ %6071, %5961 ]
  %6103 = call float @dx.op.binary.f32(i32 35, float %6101, float %6102)  ; FMax(a,b)
  %6104 = call float @dx.op.binary.f32(i32 35, float %6100, float %6103)  ; FMax(a,b)
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6105, %6041
  %6107 = fmul fast float %6105, %6042
  %6108 = fmul fast float %6105, %6043
  %6109 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = fcmp fast ogt float %6109, 0x3E7FF19E20000000
  %6111 = fdiv fast float 1.000000e+00, %6109
  %6112 = select i1 %6110, float %6111, float 0.000000e+00
  %6113 = fmul fast float %6112, %5759
  %6114 = fmul fast float %6112, %5760
  %6115 = fmul fast float %6112, %5761
  %6116 = fadd fast float %6113, -1.000000e+00
  %6117 = fadd fast float %6114, -1.000000e+00
  %6118 = fadd fast float %6115, -1.000000e+00
  %6119 = fmul fast float %6116, 5.000000e-01
  %6120 = fmul fast float %6117, 5.000000e-01
  %6121 = fmul fast float %6118, 5.000000e-01
  %6122 = fadd fast float %6119, 1.000000e+00
  %6123 = fadd fast float %6120, 1.000000e+00
  %6124 = fadd fast float %6121, 1.000000e+00
  %6125 = call float @dx.op.binary.f32(i32 35, float %5801, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6126 = fdiv fast float %4455, %6125
  %6127 = fcmp fast olt float %5189, 1.270000e+02
  %6128 = fcmp fast olt float %5190, 1.270000e+02
  %6129 = fcmp fast olt float %5191, 1.270000e+02
  %6130 = fmul fast float %5189, 0xBFF7154760000000
  %6131 = fmul fast float %6130, %6126
  %6132 = fmul fast float %5190, 0xBFF7154760000000
  %6133 = fmul fast float %6132, %6126
  %6134 = fmul fast float %5191, 0xBFF7154760000000
  %6135 = fmul fast float %6134, %6126
  %6136 = call float @dx.op.unary.f32(i32 21, float %6131)  ; Exp(value)
  %6137 = call float @dx.op.unary.f32(i32 21, float %6133)  ; Exp(value)
  %6138 = call float @dx.op.unary.f32(i32 21, float %6135)  ; Exp(value)
  %6139 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6140 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6142 = select i1 %6127, float %6139, float 0.000000e+00
  %6143 = select i1 %6128, float %6140, float 0.000000e+00
  %6144 = select i1 %6129, float %6141, float 0.000000e+00
  %6145 = fmul fast float %6142, %6105
  %6146 = fmul fast float %6143, %6105
  %6147 = fmul fast float %6144, %6105
  %6148 = fadd fast float %6145, -1.000000e+00
  %6149 = fadd fast float %6146, -1.000000e+00
  %6150 = fadd fast float %6147, -1.000000e+00
  %6151 = fmul fast float %6148, %5144
  %6152 = fmul fast float %6149, %5144
  %6153 = fmul fast float %6150, %5144
  %6154 = fadd fast float %6151, 1.000000e+00
  %6155 = fadd fast float %6152, 1.000000e+00
  %6156 = fadd fast float %6153, 1.000000e+00
  %6157 = fmul fast float %5754, 0x401CF23780000000
  %6158 = fadd fast float %6157, 0x3FF32641C0000000
  %6159 = fdiv fast float 1.000000e+00, %6158
  %6160 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = fmul fast float %6159, %6159
  %6162 = fmul fast float %6160, %6160
  %6163 = fsub fast float 1.000000e+00, %6162
  %6164 = fmul fast float %6161, %6163
  %6165 = fsub fast float 1.000000e+00, %6164
  %6166 = fcmp fast oge float %6165, 0.000000e+00
  %6167 = fmul fast float %6159, %5587
  %6168 = fmul fast float %6159, %5588
  %6169 = fmul fast float %6159, %5589
  %6170 = call float @dx.op.unary.f32(i32 24, float %6165)  ; Sqrt(value)
  %6171 = fmul fast float %6160, %6159
  %6172 = fadd fast float %6171, %6170
  %6173 = fmul fast float %6172, %5756
  %6174 = fmul fast float %6172, %5757
  %6175 = fmul fast float %6172, %5758
  %6176 = fsub fast float %6167, %6173
  %6177 = fsub fast float %6168, %6174
  %6178 = fsub fast float %6169, %6175
  %6179 = select i1 %6166, float %6176, float 0.000000e+00
  %6180 = select i1 %6166, float %6177, float 0.000000e+00
  %6181 = select i1 %6166, float %6178, float 0.000000e+00
  %6182 = fmul fast float %6179, %4455
  %6183 = fmul fast float %6180, %4455
  %6184 = fmul fast float %6181, %4455
  %6185 = fadd fast float %6182, %5796
  %6186 = fadd fast float %6183, %5797
  %6187 = fadd fast float %6184, %5798
  %6188 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = fsub fast float 1.000000e+00, %5762
  %6190 = fmul fast float %6189, %5144
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = fmul fast float %5754, 0x4012D0A400000000
  %6195 = fadd fast float %6194, 0x3FDB6377A0000000
  %6196 = fmul fast float %6193, %6195
  %6197 = fadd fast float %6196, %6188
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fmul fast float %6100, %6045
  %6200 = fmul fast float %6101, %6046
  %6201 = fmul fast float %6102, %6047
  %6202 = fsub fast float 1.000000e+00, %5801
  %6203 = bitcast float %6202 to i32
  %6204 = sitofp i32 %6203 to float
  %6205 = fmul fast float %6204, 5.000000e+00
  %6206 = fadd fast float %6205, 0xC1EFBF8940000000
  %6207 = fptosi float %6206 to i32
  %6208 = bitcast i32 %6207 to float
  %6209 = fmul fast float %6208, %5119
  %6210 = fmul fast float %6041, %6209
  %6211 = fmul fast float %6210, %6105
  %6212 = fmul fast float %6211, %6122
  %6213 = fmul fast float %6042, %6209
  %6214 = fmul fast float %6213, %6105
  %6215 = fmul fast float %6214, %6123
  %6216 = fmul fast float %6043, %6209
  %6217 = fmul fast float %6216, %6105
  %6218 = fmul fast float %6217, %6124
  %6219 = fmul fast float %6106, %5144
  %6220 = fmul fast float %6107, %5144
  %6221 = fmul fast float %6108, %5144
  %6222 = fsub fast float 1.000000e+00, %6198
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6238 = fmul fast float %6185, %6224
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6225, float %6238)  ; FMad(a,b,c)
  %6240 = call float @dx.op.tertiary.f32(i32 46, float %6187, float %6226, float %6239)  ; FMad(a,b,c)
  %6241 = fadd fast float %6240, %6227
  %6242 = fmul fast float %6185, %6229
  %6243 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6230, float %6242)  ; FMad(a,b,c)
  %6244 = call float @dx.op.tertiary.f32(i32 46, float %6187, float %6231, float %6243)  ; FMad(a,b,c)
  %6245 = fadd fast float %6244, %6232
  %6246 = fmul fast float %6185, %6234
  %6247 = call float @dx.op.tertiary.f32(i32 46, float %6186, float %6235, float %6246)  ; FMad(a,b,c)
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6187, float %6236, float %6247)  ; FMad(a,b,c)
  %6249 = fadd fast float %6248, %6237
  %6250 = fdiv fast float %6241, %6249
  %6251 = fdiv fast float %6245, %6249
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6255 = fmul fast float %6253, %6250
  %6256 = fmul fast float %6254, %6251
  %6257 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6258 = extractvalue %dx.types.CBufRet.f32 %6252, 3
  %6259 = fadd fast float %6255, %6257
  %6260 = fadd fast float %6256, %6258
  %6261 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6262 = call float @dx.op.unary.f32(i32 7, float %6260)  ; Saturate(value)
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = fmul fast float %6264, %6261
  %6267 = fmul fast float %6265, %6262
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6271 = fsub fast float %6269, %6270
  %6272 = fmul fast float %6271, %6222
  %6273 = fadd fast float %6272, %6270
  %6274 = fmul fast float %264, 2.000000e+00
  %6275 = fmul fast float %265, 2.000000e+00
  %6276 = fadd fast float %6274, -1.000000e+00
  %6277 = fadd fast float %6275, -1.000000e+00
  %6278 = fmul fast float %6273, %6276
  %6279 = fmul fast float %6273, %6277
  %6280 = fadd fast float %6278, %6266
  %6281 = fadd fast float %6279, %6267
  %6282 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6283 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6284 = fmul fast float %6280, %6282
  %6285 = fmul fast float %6281, %6283
  %6286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6284, float %6285, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6287 = extractvalue %dx.types.ResRet.f32 %6286, 0
  %6288 = fcmp fast ogt float %6287, -1.000000e+00
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6291 = select i1 %6288, float %6290, float 1.000000e+00
  %6292 = fadd fast float %6287, 1.000000e+00
  %6293 = fmul fast float %6291, %6292
  %6294 = call float @dx.op.unary.f32(i32 6, float %6293)  ; FAbs(value)
  %6295 = fsub fast float %6294, %6249
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6298 = fmul fast float %6297, %6294
  %6299 = fdiv fast float 1.600000e+02, %6298
  %6300 = fmul fast float %6198, %6198
  %6301 = fmul fast float %6300, 0xBFB5B17960000000
  %6302 = fmul fast float %6301, %6295
  %6303 = fmul fast float %6302, %6299
  %6304 = call float @dx.op.unary.f32(i32 21, float %6303)  ; Exp(value)
  %6305 = fmul fast float %6304, 0x3FF04B2960000000
  %6306 = fsub fast float 0x3FF04B2960000000, %6305
  %6307 = call float @dx.op.unary.f32(i32 7, float %6306)  ; Saturate(value)
  %6308 = fmul fast float %6307, 4.000000e+00
  %6309 = fadd fast float %264, -5.000000e-01
  %6310 = fadd fast float %265, -5.000000e-01
  %6311 = fmul fast float %6307, 0x3FBEB851E0000000
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fmul fast float %6312, %6309
  %6314 = fmul fast float %6312, %6310
  %6315 = fadd fast float %6313, %6259
  %6316 = fadd fast float %6314, %6260
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 0
  %6319 = icmp eq i32 %6318, 0
  br i1 %6319, label %6325, label %6320, !dx.controlflow.hints !96

; <label>:6320                                    ; preds = %6099
  %6321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6315, float %6316, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.ResRet.f32 %6321, 2
  br label %6330

; <label>:6325                                    ; preds = %6099
  %6326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6315, float %6316, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.ResRet.f32 %6326, 2
  br label %6330

; <label>:6330                                    ; preds = %6325, %6320
  %6331 = phi float [ %6322, %6320 ], [ %6327, %6325 ]
  %6332 = phi float [ %6323, %6320 ], [ %6328, %6325 ]
  %6333 = phi float [ %6324, %6320 ], [ %6329, %6325 ]
  %6334 = select i1 %251, float 0.000000e+00, float %6332
  %6335 = select i1 %251, float 0.000000e+00, float %6333
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6338 = fmul fast float %6331, %6154
  %6339 = fmul fast float %6338, %6337
  %6340 = fmul fast float %6334, %6155
  %6341 = fmul fast float %6340, %6337
  %6342 = fmul fast float %6335, %6156
  %6343 = fmul fast float %6342, %6337
  %6344 = fadd fast float %6199, %5105
  %6345 = fadd fast float %6344, %6212
  %6346 = fadd fast float %6345, %6339
  %6347 = fmul fast float %6346, %5144
  %6348 = fadd fast float %6200, %5106
  %6349 = fadd fast float %6348, %6215
  %6350 = fadd fast float %6349, %6341
  %6351 = fmul fast float %6350, %5144
  %6352 = fadd fast float %6201, %5107
  %6353 = fadd fast float %6352, %6218
  %6354 = fadd fast float %6353, %6343
  %6355 = fmul fast float %6354, %5144
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6358 = fcmp fast oeq float %6357, 0.000000e+00
  br i1 %6358, label %7563, label %6359

; <label>:6359                                    ; preds = %6330
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6361 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6362 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = select i1 %251, float %6368, float %6364
  %6372 = select i1 %251, float %6370, float %6365
  %6373 = select i1 %251, float %6369, float %6366
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6376 = fmul fast float %6375, %109
  %6377 = fmul fast float %6375, %110
  %6378 = fmul fast float %6375, %111
  %6379 = fadd fast float %6376, %157
  %6380 = fadd fast float %6377, %158
  %6381 = fadd fast float %6378, %159
  %6382 = fcmp fast olt float %6357, 0.000000e+00
  br i1 %6382, label %7007, label %6383

; <label>:6383                                    ; preds = %6359
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = fmul fast float %6385, %6379
  %6400 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6386, float %6399)  ; FMad(a,b,c)
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6387, float %6400)  ; FMad(a,b,c)
  %6402 = fadd fast float %6401, %6388
  %6403 = fmul fast float %6390, %6379
  %6404 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6391, float %6403)  ; FMad(a,b,c)
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6392, float %6404)  ; FMad(a,b,c)
  %6406 = fadd fast float %6405, %6393
  %6407 = fmul fast float %6395, %6379
  %6408 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6396, float %6407)  ; FMad(a,b,c)
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6397, float %6408)  ; FMad(a,b,c)
  %6410 = fadd fast float %6409, %6398
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6415 = fmul fast float %6414, %6402
  %6416 = fmul fast float %6414, %6406
  %6417 = fadd fast float %6415, %6412
  %6418 = fadd fast float %6416, %6413
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6423 = fmul fast float %6422, %6402
  %6424 = fmul fast float %6422, %6406
  %6425 = fadd fast float %6423, %6420
  %6426 = fadd fast float %6424, %6421
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6429 = fsub fast float %6428, %6410
  %6430 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6431 = fmul fast float %6429, %6430
  %6432 = fsub fast float 1.000000e+00, %6431
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6437 = fadd fast float %6436, %6434
  %6438 = fcmp fast ogt float %6437, 0.000000e+00
  br i1 %6438, label %6439, label %6463

; <label>:6439                                    ; preds = %6383
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = fsub fast float %6425, %6441
  %6444 = fsub fast float %6426, %6442
  %6445 = fcmp fast olt float %6443, 0.000000e+00
  %6446 = fcmp fast olt float %6444, 0.000000e+00
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6447, 3
  %6452 = select i1 %6445, float %6448, float %6450
  %6453 = select i1 %6446, float %6449, float %6451
  %6454 = fmul fast float %6452, %6443
  %6455 = fmul fast float %6453, %6444
  %6456 = call float @dx.op.unary.f32(i32 6, float %6454)  ; FAbs(value)
  %6457 = call float @dx.op.unary.f32(i32 6, float %6455)  ; FAbs(value)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6459 = call float @dx.op.binary.f32(i32 35, float %6456, float %6457)  ; FMax(a,b)
  %6460 = fsub fast float %6458, %6459
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = fmul fast float %6461, %6433
  br label %6463

; <label>:6463                                    ; preds = %6439, %6383
  %6464 = phi float [ %6462, %6439 ], [ 0.000000e+00, %6383 ]
  %6465 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6466 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6467 = fadd fast float %6466, %6465
  %6468 = fcmp fast ogt float %6467, 0.000000e+00
  %6469 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  br i1 %6468, label %6470, label %6493

; <label>:6470                                    ; preds = %6463
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = fsub fast float %6417, %6472
  %6475 = fsub fast float %6418, %6473
  %6476 = fcmp fast olt float %6474, 0.000000e+00
  %6477 = fcmp fast olt float %6475, 0.000000e+00
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6483 = select i1 %6476, float %6479, float %6481
  %6484 = select i1 %6477, float %6480, float %6482
  %6485 = fmul fast float %6483, %6474
  %6486 = fmul fast float %6484, %6475
  %6487 = call float @dx.op.unary.f32(i32 6, float %6485)  ; FAbs(value)
  %6488 = call float @dx.op.unary.f32(i32 6, float %6486)  ; FAbs(value)
  %6489 = call float @dx.op.binary.f32(i32 35, float %6487, float %6488)  ; FMax(a,b)
  %6490 = fsub fast float %6469, %6489
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = fmul fast float %6491, %6433
  br label %6493

; <label>:6493                                    ; preds = %6470, %6463
  %6494 = phi float [ %6492, %6470 ], [ 0.000000e+00, %6463 ]
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6501 = fsub fast float %6402, %6499
  %6502 = fsub fast float %6406, %6500
  %6503 = fcmp fast olt float %6501, 0.000000e+00
  %6504 = fcmp fast olt float %6502, 0.000000e+00
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6509 = extractvalue %dx.types.CBufRet.f32 %6505, 3
  %6510 = select i1 %6503, float %6506, float %6508
  %6511 = select i1 %6504, float %6507, float %6509
  %6512 = fmul fast float %6510, %6501
  %6513 = fmul fast float %6511, %6502
  %6514 = call float @dx.op.unary.f32(i32 6, float %6512)  ; FAbs(value)
  %6515 = call float @dx.op.unary.f32(i32 6, float %6513)  ; FAbs(value)
  %6516 = call float @dx.op.binary.f32(i32 35, float %6514, float %6515)  ; FMax(a,b)
  %6517 = fsub fast float %6469, %6516
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6518, float %6497)  ; FMin(a,b)
  %6520 = fmul fast float %6519, %6433
  %6521 = fsub fast float %6494, %6520
  %6522 = fsub fast float %6464, %6494
  %6523 = fsub fast float %6522, %6520
  %6524 = call float @dx.op.binary.f32(i32 35, float %6494, float %6464)  ; FMax(a,b)
  %6525 = call float @dx.op.binary.f32(i32 35, float %6520, float %6524)  ; FMax(a,b)
  %6526 = fcmp fast olt float %6525, 1.000000e+00
  br i1 %6526, label %6527, label %6925, !dx.controlflow.hints !97

; <label>:6527                                    ; preds = %6493
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = fcmp fast une float %6529, 0.000000e+00
  br i1 %6530, label %6531, label %6925, !dx.controlflow.hints !98

; <label>:6531                                    ; preds = %6527
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.CBufRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.CBufRet.f32 %6532, 3
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6541 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6546 = extractvalue %dx.types.CBufRet.f32 %6542, 3
  %6547 = fmul fast float %6533, %6379
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6534, float %6547)  ; FMad(a,b,c)
  %6549 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6535, float %6548)  ; FMad(a,b,c)
  %6550 = fadd fast float %6549, %6536
  %6551 = fmul fast float %6538, %6379
  %6552 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6539, float %6551)  ; FMad(a,b,c)
  %6553 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6540, float %6552)  ; FMad(a,b,c)
  %6554 = fadd fast float %6553, %6541
  %6555 = fmul fast float %6543, %6379
  %6556 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6544, float %6555)  ; FMad(a,b,c)
  %6557 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6545, float %6556)  ; FMad(a,b,c)
  %6558 = fadd fast float %6557, %6546
  %6559 = fcmp fast oge float %6550, 1.000000e+00
  %6560 = fcmp fast oge float %6554, 1.000000e+00
  %6561 = or i1 %6559, %6560
  %6562 = fcmp fast olt float %6550, 0.000000e+00
  %6563 = fcmp fast olt float %6554, 0.000000e+00
  %6564 = or i1 %6562, %6563
  %6565 = or i1 %6561, %6564
  br i1 %6565, label %6925, label %6566, !dx.controlflow.hints !99

; <label>:6566                                    ; preds = %6531
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.i32 %6571, 2
  %6573 = uitofp i32 %6572 to float
  %6574 = extractvalue %dx.types.CBufRet.i32 %6571, 3
  %6575 = uitofp i32 %6574 to float
  %6576 = extractvalue %dx.types.CBufRet.f32 %6567, 3
  %6577 = fmul fast float %6576, 2.000000e+00
  %6578 = fsub fast float %6550, %6568
  %6579 = fsub fast float %6554, %6569
  %6580 = fmul fast float %6577, %6578
  %6581 = fmul fast float %6577, %6579
  %6582 = fdiv fast float 1.000000e+00, %6362
  %6583 = fmul fast float %6581, %6582
  %6584 = call float @dx.op.unary.f32(i32 6, float %6583)  ; FAbs(value)
  %6585 = fmul fast float %6570, %6381
  %6586 = fmul fast float %6585, %6577
  %6587 = call float @dx.op.unary.f32(i32 6, float %6586)  ; FAbs(value)
  %6588 = call float @dx.op.unary.f32(i32 6, float %6580)  ; FAbs(value)
  %6589 = call float @dx.op.binary.f32(i32 35, float %6587, float %6584)  ; FMax(a,b)
  %6590 = call float @dx.op.binary.f32(i32 35, float %6588, float %6589)  ; FMax(a,b)
  %6591 = fmul fast float %6590, 2.000000e+00
  %6592 = call float @dx.op.unary.f32(i32 23, float %6591)  ; Log(value)
  %6593 = call float @dx.op.binary.f32(i32 35, float %6592, float %6573)  ; FMax(a,b)
  %6594 = call float @dx.op.unary.f32(i32 22, float %6593)  ; Frc(value)
  %6595 = fadd fast float %6594, 0xBFEA666660000000
  %6596 = fmul fast float %6595, 8.000000e+00
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6598 = call float @dx.op.unary.f32(i32 27, float %6593)  ; Round_ni(value)
  %6599 = fadd fast float %6598, %6597
  %6600 = call float @dx.op.binary.f32(i32 36, float %6599, float %6575)  ; FMin(a,b)
  %6601 = call float @dx.op.unary.f32(i32 27, float %6600)  ; Round_ni(value)
  %6602 = fsub fast float -0.000000e+00, %6601
  %6603 = call float @dx.op.unary.f32(i32 21, float %6602)  ; Exp(value)
  %6604 = fmul fast float %6603, %6577
  %6605 = fmul fast float %6604, %6550
  %6606 = fmul fast float %6604, %6554
  %6607 = fmul fast float %6605, 2.500000e-01
  %6608 = fmul fast float %6606, 2.500000e-01
  %6609 = fadd fast float %6607, 5.000000e-01
  %6610 = fadd fast float %6608, 5.000000e-01
  %6611 = fsub fast float %6575, %6573
  %6612 = fptoui float %6611 to i32
  %6613 = add i32 %6612, 320
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6613)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.CBufRet.f32 %6614, 1
  %6617 = fcmp fast une float %6600, %6575
  %6618 = fsub fast float %6550, %6615
  %6619 = fsub fast float %6554, %6616
  %6620 = call float @dx.op.unary.f32(i32 6, float %6618)  ; FAbs(value)
  %6621 = call float @dx.op.unary.f32(i32 6, float %6619)  ; FAbs(value)
  %6622 = fmul fast float %6620, %6604
  %6623 = fmul fast float %6621, %6604
  %6624 = fcmp fast olt float %6622, 1.000000e+00
  %6625 = fcmp fast olt float %6623, 1.000000e+00
  %6626 = and i1 %6624, %6625
  %6627 = or i1 %6617, %6626
  br i1 %6627, label %6628, label %6925, !dx.controlflow.hints !100

; <label>:6628                                    ; preds = %6566
  %6629 = fmul fast float %6606, 5.000000e-01
  %6630 = fmul fast float %6605, 5.000000e-01
  %6631 = fadd fast float %6629, 5.000000e-01
  %6632 = fadd fast float %6630, 5.000000e-01
  %6633 = sitofp i32 %6572 to float
  %6634 = fsub fast float %6600, %6633
  %6635 = call float @dx.op.unary.f32(i32 27, float %6634)  ; Round_ni(value)
  %6636 = call float @dx.op.unary.f32(i32 22, float %6600)  ; Frc(value)
  %6637 = call float @dx.op.unary.f32(i32 22, float %6632)  ; Frc(value)
  %6638 = call float @dx.op.unary.f32(i32 22, float %6631)  ; Frc(value)
  %6639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6637, float %6638, float %6635, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.ResRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.ResRet.f32 %6639, 2
  %6643 = extractvalue %dx.types.ResRet.f32 %6639, 3
  %6644 = fcmp fast ogt float %6636, 0.000000e+00
  br i1 %6644, label %6645, label %6666, !dx.controlflow.hints !101

; <label>:6645                                    ; preds = %6628
  %6646 = fadd fast float %6635, 1.000000e+00
  %6647 = call float @dx.op.unary.f32(i32 22, float %6609)  ; Frc(value)
  %6648 = call float @dx.op.unary.f32(i32 22, float %6610)  ; Frc(value)
  %6649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6647, float %6648, float %6646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  %6653 = extractvalue %dx.types.ResRet.f32 %6649, 3
  %6654 = fsub fast float %6650, %6640
  %6655 = fsub fast float %6651, %6641
  %6656 = fsub fast float %6652, %6642
  %6657 = fsub fast float %6653, %6643
  %6658 = fmul fast float %6654, %6636
  %6659 = fmul fast float %6655, %6636
  %6660 = fmul fast float %6656, %6636
  %6661 = fmul fast float %6657, %6636
  %6662 = fadd fast float %6658, %6640
  %6663 = fadd fast float %6659, %6641
  %6664 = fadd fast float %6660, %6642
  %6665 = fadd fast float %6661, %6643
  br label %6666

; <label>:6666                                    ; preds = %6645, %6628
  %6667 = phi float [ %6662, %6645 ], [ %6640, %6628 ]
  %6668 = phi float [ %6663, %6645 ], [ %6641, %6628 ]
  %6669 = phi float [ %6664, %6645 ], [ %6642, %6628 ]
  %6670 = phi float [ %6665, %6645 ], [ %6643, %6628 ]
  %6671 = fadd fast float %6667, -5.000000e-01
  %6672 = fadd fast float %6669, -5.000000e-01
  %6673 = fmul fast float %6671, 0xBFD5555560000000
  %6674 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6672, float %6673)  ; FMad(a,b,c)
  %6675 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6668, float 0.000000e+00)  ; FMad(a,b,c)
  %6676 = fadd fast float %6675, %6670
  %6677 = fmul fast float %6671, -7.500000e-01
  %6678 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6672, float %6677)  ; FMad(a,b,c)
  %6679 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6668, float 0.000000e+00)  ; FMad(a,b,c)
  %6680 = fadd fast float %6679, %6670
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6683, 2
  %6687 = extractvalue %dx.types.CBufRet.f32 %6683, 3
  %6688 = fsub fast float %6684, %6674
  %6689 = fsub fast float %6685, %6676
  %6690 = fsub fast float %6686, %6678
  %6691 = fsub fast float %6687, %6680
  %6692 = fmul fast float %6688, %6682
  %6693 = fmul fast float %6689, %6682
  %6694 = fmul fast float %6690, %6682
  %6695 = fmul fast float %6691, %6682
  %6696 = fadd fast float %6692, %6674
  %6697 = fadd fast float %6693, %6676
  %6698 = fadd fast float %6694, %6678
  %6699 = fadd fast float %6695, %6680
  %6700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6701 = extractvalue %dx.types.ResRet.i32 %6700, 0
  %6702 = and i32 %6701, 536870911
  %6703 = uitofp i32 %6702 to float
  %6704 = fmul fast float %6703, %6550
  %6705 = fmul fast float %6703, %6554
  %6706 = fptoui float %6704 to i32
  %6707 = fptoui float %6705 to i32
  %6708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6709 = extractvalue %dx.types.ResRet.i32 %6708, 0
  %6710 = and i32 %6709, 31
  %6711 = lshr i32 %6706, %6710
  %6712 = lshr i32 %6707, %6710
  %6713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6714 = extractvalue %dx.types.ResRet.i32 %6713, 0
  %6715 = and i32 %6714, 31
  %6716 = shl i32 1, %6715
  %6717 = call i32 @dx.op.binary.i32(i32 40, i32 %6716, i32 4)  ; UMin(a,b)
  %6718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6719 = extractvalue %dx.types.ResRet.i32 %6718, 0
  %6720 = extractvalue %dx.types.ResRet.i32 %6718, 1
  %6721 = icmp eq i32 %6717, 0
  br i1 %6721, label %6763, label %6722

; <label>:6722                                    ; preds = %6666
  br label %6723

; <label>:6723                                    ; preds = %6751, %6722
  %6724 = phi i32 [ %6754, %6751 ], [ 0, %6722 ]
  %6725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6726 = extractvalue %dx.types.ResRet.i32 %6725, 0
  %6727 = lshr i32 %6726, 16
  %6728 = and i32 %6727, 31
  %6729 = shl i32 %6712, %6728
  %6730 = add i32 %6729, %6711
  %6731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6732 = extractvalue %dx.types.ResRet.i32 %6731, 0
  %6733 = and i32 %6732, 31
  %6734 = shl i32 %6730, %6733
  %6735 = add i32 %6734, %6724
  %6736 = shl i32 %6735, 2
  %6737 = add i32 %6736, 32
  %6738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6737, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.i32 %6738, 0
  %6740 = icmp slt i32 %6739, 0
  %6741 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6724
  %6742 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6724
  %6743 = bitcast float* %6741 to i32*
  %6744 = bitcast float* %6742 to i32*
  br i1 %6740, label %6745, label %6751

; <label>:6745                                    ; preds = %6723
  %6746 = and i32 %6739, 1073741823
  %6747 = add nuw nsw i32 %6746, 20
  %6748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6747, i32 undef)  ; BufferLoad(srv,index,wot)
  %6749 = extractvalue %dx.types.ResRet.i32 %6748, 0
  %6750 = extractvalue %dx.types.ResRet.i32 %6748, 1
  br label %6751

; <label>:6751                                    ; preds = %6745, %6723
  %6752 = phi i32 [ %6749, %6745 ], [ %6719, %6723 ]
  %6753 = phi i32 [ %6750, %6745 ], [ %6720, %6723 ]
  store i32 %6752, i32* %6743, align 4
  store i32 %6753, i32* %6744, align 4
  %6754 = add nuw i32 %6724, 1
  %6755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6756 = extractvalue %dx.types.CBufRet.i32 %6755, 2
  %6757 = icmp eq i32 %6756, 0
  %6758 = icmp ugt i32 %6739, -1073741825
  %6759 = and i1 %6758, %6757
  %6760 = icmp ult i32 %6754, %6717
  %6761 = and i1 %6759, %6760
  br i1 %6761, label %6723, label %6762

; <label>:6762                                    ; preds = %6751
  br label %6763

; <label>:6763                                    ; preds = %6762, %6666
  %6764 = phi i32 [ 0, %6666 ], [ %6754, %6762 ]
  %6765 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6766 = fptoui float %6765 to i32
  %6767 = icmp eq i32 %6766, 0
  br i1 %6767, label %6819, label %6768

; <label>:6768                                    ; preds = %6763
  br label %6769

; <label>:6769                                    ; preds = %6814, %6768
  %6770 = phi i32 [ %6815, %6814 ], [ %6764, %6768 ]
  %6771 = phi i32 [ %6816, %6814 ], [ 0, %6768 ]
  %6772 = lshr i32 %6771, 2
  %6773 = and i32 %6771, 3
  %6774 = add nuw nsw i32 %6772, 83
  %6775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6774)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.i32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.i32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.i32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.i32 %6775, 3
  %6780 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6776, i32* %6780, align 4
  %6781 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6777, i32* %6781, align 4
  %6782 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6778, i32* %6782, align 4
  %6783 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6779, i32* %6783, align 4
  %6784 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6773
  %6785 = load i32, i32* %6784, align 4, !tbaa !102, !noalias !106
  %6786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.i32 %6786, 0
  %6788 = lshr i32 %6787, 16
  %6789 = and i32 %6788, 31
  %6790 = shl i32 %6712, %6789
  %6791 = add i32 %6790, %6711
  %6792 = shl i32 %6791, 2
  %6793 = add i32 %6792, %6785
  %6794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6793, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.i32 %6794, 0
  %6796 = icmp eq i32 %6795, 0
  br i1 %6796, label %6814, label %6797

; <label>:6797                                    ; preds = %6769
  %6798 = icmp slt i32 %6795, 0
  %6799 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6770
  %6800 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6770
  %6801 = bitcast float* %6799 to i32*
  %6802 = bitcast float* %6800 to i32*
  br i1 %6798, label %6803, label %6810

; <label>:6803                                    ; preds = %6797
  %6804 = and i32 %6795, 1073741823
  %6805 = add i32 %6785, 20
  %6806 = add i32 %6805, %6804
  %6807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6806, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.i32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.i32 %6807, 1
  br label %6810

; <label>:6810                                    ; preds = %6803, %6797
  %6811 = phi i32 [ %6808, %6803 ], [ %6719, %6797 ]
  %6812 = phi i32 [ %6809, %6803 ], [ %6720, %6797 ]
  store i32 %6811, i32* %6801, align 4
  store i32 %6812, i32* %6802, align 4
  %6813 = add i32 %6770, 1
  br label %6814

; <label>:6814                                    ; preds = %6810, %6769
  %6815 = phi i32 [ %6770, %6769 ], [ %6813, %6810 ]
  %6816 = add nuw i32 %6771, 1
  %6817 = icmp eq i32 %6816, %6766
  br i1 %6817, label %6818, label %6769

; <label>:6818                                    ; preds = %6814
  br label %6819

; <label>:6819                                    ; preds = %6818, %6763
  %6820 = phi i32 [ %6764, %6763 ], [ %6815, %6818 ]
  %6821 = icmp eq i32 %6820, 1
  %6822 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6823 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6821, label %6824, label %6827

; <label>:6824                                    ; preds = %6819
  %6825 = load float, float* %6822, align 4
  %6826 = load float, float* %6823, align 4
  br label %6854

; <label>:6827                                    ; preds = %6819
  %6828 = load float, float* %6822, align 4
  %6829 = load float, float* %6823, align 4
  %6830 = fdiv fast float 1.000000e+00, %6829
  %6831 = fsub fast float %6828, %6830
  %6832 = icmp ugt i32 %6820, 1
  br i1 %6832, label %6833, label %6849

; <label>:6833                                    ; preds = %6827
  br label %6834

; <label>:6834                                    ; preds = %6834, %6833
  %6835 = phi float [ %6844, %6834 ], [ %6831, %6833 ]
  %6836 = phi float [ %6845, %6834 ], [ %6828, %6833 ]
  %6837 = phi i32 [ %6846, %6834 ], [ 1, %6833 ]
  %6838 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6837
  %6839 = load float, float* %6838, align 4
  %6840 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6837
  %6841 = load float, float* %6840, align 4
  %6842 = fdiv fast float 1.000000e+00, %6841
  %6843 = fsub fast float %6839, %6842
  %6844 = call float @dx.op.binary.f32(i32 36, float %6835, float %6843)  ; FMin(a,b)
  %6845 = call float @dx.op.binary.f32(i32 35, float %6836, float %6839)  ; FMax(a,b)
  %6846 = add nuw i32 %6837, 1
  %6847 = icmp eq i32 %6846, %6820
  br i1 %6847, label %6848, label %6834

; <label>:6848                                    ; preds = %6834
  br label %6849

; <label>:6849                                    ; preds = %6848, %6827
  %6850 = phi float [ %6831, %6827 ], [ %6844, %6848 ]
  %6851 = phi float [ %6828, %6827 ], [ %6845, %6848 ]
  %6852 = fsub fast float %6851, %6850
  %6853 = fdiv fast float 1.000000e+00, %6852
  br label %6854

; <label>:6854                                    ; preds = %6849, %6824
  %6855 = phi float [ %6825, %6824 ], [ %6851, %6849 ]
  %6856 = phi float [ %6826, %6824 ], [ %6853, %6849 ]
  %6857 = fadd fast float %6558, %6855
  %6858 = fmul fast float %6857, %6856
  %6859 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6860 = fmul fast float %6859, 2.000000e+00
  %6861 = fsub fast float 1.000000e+00, %6860
  %6862 = fmul fast float %6696, %6696
  %6863 = fsub fast float %6697, %6862
  %6864 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6863)  ; FMax(a,b)
  %6865 = fdiv fast float 1.000000e+00, %6864
  %6866 = fmul fast float %6697, %6696
  %6867 = fsub fast float %6698, %6866
  %6868 = fsub fast float %6861, %6696
  %6869 = fmul fast float %6861, %6861
  %6870 = fsub fast float %6869, %6697
  %6871 = fmul fast float %6865, %6867
  %6872 = fmul fast float %6871, %6868
  %6873 = fsub fast float %6870, %6872
  %6874 = fmul fast float %6697, %6697
  %6875 = fsub fast float %6699, %6874
  %6876 = fmul fast float %6867, %6867
  %6877 = fmul fast float %6876, %6865
  %6878 = fsub fast float %6875, %6877
  %6879 = fdiv fast float %6873, %6878
  %6880 = fmul fast float %6879, %6867
  %6881 = fsub fast float %6868, %6880
  %6882 = fmul fast float %6881, %6865
  %6883 = fmul fast float %6882, %6696
  %6884 = fsub fast float 1.000000e+00, %6883
  %6885 = fmul fast float %6879, %6697
  %6886 = fsub fast float %6884, %6885
  %6887 = fmul fast float %6882, %6882
  %6888 = fmul fast float %6879, 4.000000e+00
  %6889 = fmul fast float %6888, %6886
  %6890 = fsub fast float %6887, %6889
  %6891 = call float @dx.op.unary.f32(i32 24, float %6890)  ; Sqrt(value)
  %6892 = fcmp fast oge float %6882, 0.000000e+00
  %6893 = fsub fast float -0.000000e+00, %6891
  %6894 = select i1 %6892, float %6893, float %6891
  %6895 = fsub fast float %6894, %6882
  %6896 = fdiv fast float %6895, %6879
  %6897 = fdiv fast float %6886, %6895
  %6898 = fmul fast float %6896, 5.000000e-01
  %6899 = fmul fast float %6897, 2.000000e+00
  %6900 = select i1 %6892, float %6898, float %6899
  %6901 = select i1 %6892, float %6899, float %6898
  %6902 = call float @dx.op.binary.f32(i32 35, float %6900, float %6901)  ; FMax(a,b)
  %6903 = call float @dx.op.binary.f32(i32 36, float %6900, float %6901)  ; FMin(a,b)
  %6904 = fcmp fast ogt float %6861, %6902
  %6905 = fsub fast float %6861, %6903
  %6906 = fsub fast float %6861, %6902
  %6907 = fsub fast float %6902, %6903
  %6908 = select i1 %6904, float %6906, float %6907
  %6909 = fmul float %6905, %6908
  %6910 = select i1 %6904, float %6903, float %6861
  %6911 = fcmp fast ogt float %6861, %6903
  %6912 = fmul fast float %6910, %6902
  %6913 = fadd fast float %6910, %6902
  %6914 = fmul fast float %6913, %6696
  %6915 = fadd fast float %6912, %6697
  %6916 = fsub fast float %6915, %6914
  %6917 = fdiv fast float %6916, %6909
  %6918 = select i1 %6911, float %6917, float 0.000000e+00
  %6919 = fsub fast float 1.000000e+00, %6918
  %6920 = select i1 %6904, float %6919, float %6918
  %6921 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6681, 3
  %6923 = fmul fast float %6922, %6921
  %6924 = fsub fast float 1.000000e+00, %6923
  br label %6925

; <label>:6925                                    ; preds = %6854, %6566, %6531, %6527, %6493
  %6926 = phi float [ 1.000000e+00, %6493 ], [ %6924, %6854 ], [ 1.000000e+00, %6531 ], [ 1.000000e+00, %6566 ], [ 1.000000e+00, %6527 ]
  %6927 = fcmp fast ogt float %6523, 0.000000e+00
  br i1 %6927, label %6928, label %6934, !dx.controlflow.hints !115

; <label>:6928                                    ; preds = %6925
  %6929 = fadd fast float %6436, %6410
  %6930 = call float @dx.op.binary.f32(i32 35, float %6929, float 0.000000e+00)  ; FMax(a,b)
  %6931 = fadd fast float %6930, 0x3F10000000000000
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6425, float %6426, float undef, float undef, i32 0, i32 0, i32 undef, float %6931)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  br label %6934

; <label>:6934                                    ; preds = %6928, %6925
  %6935 = phi float [ %6933, %6928 ], [ 1.000000e+00, %6925 ]
  %6936 = fcmp fast ogt float %6521, 0.000000e+00
  br i1 %6936, label %6937, label %6943, !dx.controlflow.hints !116

; <label>:6937                                    ; preds = %6934
  %6938 = fadd fast float %6466, %6410
  %6939 = call float @dx.op.binary.f32(i32 35, float %6938, float 0.000000e+00)  ; FMax(a,b)
  %6940 = fadd fast float %6939, 0x3F10000000000000
  %6941 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6417, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float %6940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6942 = extractvalue %dx.types.ResRet.f32 %6941, 0
  br label %6943

; <label>:6943                                    ; preds = %6937, %6934
  %6944 = phi float [ %6942, %6937 ], [ 1.000000e+00, %6934 ]
  %6945 = fcmp fast ogt float %6520, 0.000000e+00
  br i1 %6945, label %6946, label %6953, !dx.controlflow.hints !117

; <label>:6946                                    ; preds = %6943
  %6947 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6948 = fadd fast float %6947, %6410
  %6949 = call float @dx.op.binary.f32(i32 35, float %6948, float 0.000000e+00)  ; FMax(a,b)
  %6950 = fadd fast float %6949, 0x3F10000000000000
  %6951 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6402, float %6406, float undef, float undef, i32 0, i32 0, i32 undef, float %6950)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6952 = extractvalue %dx.types.ResRet.f32 %6951, 0
  br label %6953

; <label>:6953                                    ; preds = %6946, %6943
  %6954 = phi float [ %6952, %6946 ], [ 1.000000e+00, %6943 ]
  %6955 = fsub fast float %6935, %6926
  %6956 = fmul fast float %6955, %6464
  %6957 = fadd fast float %6956, %6926
  %6958 = fsub fast float %6944, %6957
  %6959 = fmul fast float %6958, %6494
  %6960 = fadd fast float %6959, %6957
  %6961 = fsub fast float %6954, %6960
  %6962 = fmul fast float %6961, %6520
  %6963 = fadd fast float %6962, %6960
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 2
  %6966 = fcmp fast ogt float %6965, 0.000000e+00
  br i1 %6966, label %6967, label %7007, !dx.controlflow.hints !118

; <label>:6967                                    ; preds = %6953
  %6968 = fcmp fast ugt float %6965, 0.000000e+00
  br i1 %6968, label %6969, label %7004

; <label>:6969                                    ; preds = %6967
  %6970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6970, 0
  %6972 = extractvalue %dx.types.CBufRet.f32 %6970, 1
  %6973 = extractvalue %dx.types.CBufRet.f32 %6970, 2
  %6974 = extractvalue %dx.types.CBufRet.f32 %6970, 3
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6980 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.CBufRet.f32 %6982, 2
  %6986 = fadd fast float %6983, %6379
  %6987 = fadd fast float %6984, %6380
  %6988 = fadd fast float %6985, %6381
  %6989 = fmul fast float %6986, %6971
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6972, float %6987, float %6989)  ; FMad(a,b,c)
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6973, float %6988, float %6990)  ; FMad(a,b,c)
  %6992 = fadd fast float %6991, %6974
  %6993 = fmul fast float %6986, %6976
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6977, float %6987, float %6993)  ; FMad(a,b,c)
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6978, float %6988, float %6994)  ; FMad(a,b,c)
  %6996 = fadd fast float %6995, %6979
  %6997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6992, float %6996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6998 = extractvalue %dx.types.ResRet.f32 %6997, 0
  %6999 = fmul fast float %6998, %6981
  %7000 = fadd fast float %6999, %6980
  %7001 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7002 = fmul fast float %7001, %6965
  %7003 = fsub fast float 1.000000e+00, %7002
  br label %7004

; <label>:7004                                    ; preds = %6969, %6967
  %7005 = phi float [ %7003, %6969 ], [ 1.000000e+00, %6967 ]
  %7006 = fmul fast float %7005, %6963
  br label %7007

; <label>:7007                                    ; preds = %7004, %6953, %6359
  %7008 = phi float [ 1.000000e+00, %6359 ], [ %7006, %7004 ], [ %6963, %6953 ]
  %7009 = call float @dx.op.binary.f32(i32 36, float %7008, float %7008)  ; FMin(a,b)
  %7010 = call float @dx.op.binary.f32(i32 36, float %7008, float %7009)  ; FMin(a,b)
  %7011 = fcmp fast ogt float %7010, 0.000000e+00
  br i1 %7011, label %7012, label %7172, !dx.controlflow.hints !119

; <label>:7012                                    ; preds = %7007
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7016 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7017 = extractvalue %dx.types.CBufRet.f32 %7013, 3
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.CBufRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7018, 3
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7028 = fmul fast float %7014, %6379
  %7029 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %7015, float %7028)  ; FMad(a,b,c)
  %7030 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %7016, float %7029)  ; FMad(a,b,c)
  %7031 = fadd fast float %7030, %7017
  %7032 = fmul fast float %7019, %6379
  %7033 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %7020, float %7032)  ; FMad(a,b,c)
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %7021, float %7033)  ; FMad(a,b,c)
  %7035 = fadd fast float %7034, %7022
  %7036 = fmul fast float %7024, %6379
  %7037 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %7025, float %7036)  ; FMad(a,b,c)
  %7038 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %7026, float %7037)  ; FMad(a,b,c)
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.CBufRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.CBufRet.f32 %7039, 3
  %7043 = fmul fast float %7042, %7031
  %7044 = fmul fast float %7042, %7035
  %7045 = fadd fast float %7043, %7040
  %7046 = fadd fast float %7044, %7041
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7050 = fsub fast float %7045, %7048
  %7051 = fsub fast float %7046, %7049
  %7052 = fcmp fast olt float %7050, 0.000000e+00
  %7053 = fcmp fast olt float %7051, 0.000000e+00
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.CBufRet.f32 %7054, 3
  %7059 = select i1 %7052, float %7055, float %7057
  %7060 = select i1 %7053, float %7056, float %7058
  %7061 = fmul fast float %7059, %7050
  %7062 = fmul fast float %7060, %7051
  %7063 = call float @dx.op.unary.f32(i32 6, float %7061)  ; FAbs(value)
  %7064 = call float @dx.op.unary.f32(i32 6, float %7062)  ; FAbs(value)
  %7065 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %7066 = call float @dx.op.binary.f32(i32 35, float %7063, float %7064)  ; FMax(a,b)
  %7067 = fsub fast float %7065, %7066
  %7068 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7069 = fcmp fast ogt float %7068, 0.000000e+00
  br i1 %7069, label %7070, label %7111, !dx.controlflow.hints !120

; <label>:7070                                    ; preds = %7012
  %7071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %7045, float %7046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7073 = fcmp fast ogt float %7072, 0.000000e+00
  br i1 %7073, label %7074, label %7106

; <label>:7074                                    ; preds = %7070
  %7075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %7045, float %7046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7076 = extractvalue %dx.types.ResRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.ResRet.f32 %7075, 1
  %7078 = extractvalue %dx.types.ResRet.f32 %7075, 2
  %7079 = extractvalue %dx.types.ResRet.f32 %7075, 3
  %7080 = fsub fast float 1.000000e+00, %7027
  %7081 = fsub fast float %7080, %7038
  %7082 = fmul fast float %7081, 0x400921FB60000000
  %7083 = fadd fast float %7082, 0x3FF921FB60000000
  %7084 = call float @dx.op.unary.f32(i32 13, float %7083)  ; Sin(value)
  %7085 = fadd fast float %7084, -1.000000e+00
  %7086 = fmul fast float %7085, 0x3FD45F3060000000
  %7087 = fmul fast float %7081, 0x401921FB60000000
  %7088 = fadd fast float %7087, 0x400921FB60000000
  %7089 = call float @dx.op.unary.f32(i32 13, float %7088)  ; Sin(value)
  %7090 = fadd fast float %7089, 0x3E7777A5C0000000
  %7091 = fmul fast float %7090, 0x3FC45F3060000000
  %7092 = fmul fast float %7081, 0x4022D97C80000000
  %7093 = fadd fast float %7092, 0x4012D97C80000000
  %7094 = call float @dx.op.unary.f32(i32 13, float %7093)  ; Sin(value)
  %7095 = fadd fast float %7094, 1.000000e+00
  %7096 = fmul fast float %7095, 0x3FBB2995E0000000
  %7097 = fmul fast float %7081, 0x402921FB60000000
  %7098 = fadd fast float %7097, 0x401921FB60000000
  %7099 = call float @dx.op.unary.f32(i32 13, float %7098)  ; Sin(value)
  %7100 = fadd fast float %7099, 0xBE8777A5C0000000
  %7101 = fmul fast float %7100, 0x3FB45F3060000000
  %7102 = call float @dx.op.dot4.f32(i32 56, float %7076, float %7077, float %7078, float %7079, float %7086, float %7091, float %7096, float %7101)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7103 = fmul fast float %7102, 0xBFF7154760000000
  %7104 = call float @dx.op.unary.f32(i32 21, float %7103)  ; Exp(value)
  %7105 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  br label %7106

; <label>:7106                                    ; preds = %7074, %7070
  %7107 = phi float [ %7105, %7074 ], [ 1.000000e+00, %7070 ]
  %7108 = fadd fast float %7107, -1.000000e+00
  %7109 = fmul fast float %7108, %7068
  %7110 = fadd fast float %7109, 1.000000e+00
  br label %7111

; <label>:7111                                    ; preds = %7106, %7012
  %7112 = phi float [ %7110, %7106 ], [ 1.000000e+00, %7012 ]
  %7113 = fmul fast float %7112, %7008
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 0
  %7116 = extractvalue %dx.types.CBufRet.f32 %7114, 1
  %7117 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %7118 = fadd fast float %7115, %157
  %7119 = fadd fast float %7116, %158
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7122 = fsub fast float -0.000000e+00, %7118
  %7123 = fsub fast float -0.000000e+00, %7119
  %7124 = fsub fast float %5764, %7117
  %7125 = fadd fast float %7124, %7121
  %7126 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7122, float %7123, float %7125)  ; Dot3(ax,ay,az,bx,by,bz)
  %7127 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6360, float %6361, float %6362)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = fdiv fast float 1.000000e+00, %7127
  %7129 = fmul fast float %7128, %7126
  %7130 = fmul fast float %6360, %7129
  %7131 = fmul fast float %6361, %7129
  %7132 = fadd fast float %7130, %7118
  %7133 = fadd fast float %7131, %7119
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.CBufRet.f32 %7134, 1
  %7137 = fsub fast float %7132, %7135
  %7138 = fsub fast float %7133, %7136
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7142 = fmul fast float %7137, %7140
  %7143 = fmul fast float %7138, %7141
  %7144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.i32 %7144, 3
  %7146 = icmp eq i32 %7145, 0
  br i1 %7146, label %7152, label %7147

; <label>:7147                                    ; preds = %7111
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7142, float %7143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  br label %7157

; <label>:7152                                    ; preds = %7111
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7142, float %7143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  br label %7157

; <label>:7157                                    ; preds = %7152, %7147
  %7158 = phi float [ %7149, %7147 ], [ %7154, %7152 ]
  %7159 = phi float [ %7150, %7147 ], [ %7155, %7152 ]
  %7160 = phi float [ %7151, %7147 ], [ %7156, %7152 ]
  %7161 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7162 = fmul fast float %7161, %7158
  %7163 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7164 = fsub fast float %7129, %7163
  %7165 = fsub fast float %7164, %7162
  %7166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7165)  ; FMax(a,b)
  %7167 = fmul fast float %7166, %7159
  %7168 = call float @dx.op.binary.f32(i32 36, float %7160, float %7167)  ; FMin(a,b)
  %7169 = fmul fast float %7168, 0xBFF7154760000000
  %7170 = call float @dx.op.unary.f32(i32 21, float %7169)  ; Exp(value)
  %7171 = fmul fast float %7113, %7170
  br label %7172

; <label>:7172                                    ; preds = %7157, %7007
  %7173 = phi float [ %7171, %7157 ], [ %7008, %7007 ]
  %7174 = call float @dx.op.binary.f32(i32 36, float %7173, float %7173)  ; FMin(a,b)
  %7175 = call float @dx.op.binary.f32(i32 36, float %7173, float %7174)  ; FMin(a,b)
  %7176 = fcmp fast ogt float %7175, 0.000000e+00
  br i1 %7176, label %7177, label %7563, !dx.controlflow.hints !121

; <label>:7177                                    ; preds = %7172
  %7178 = fmul fast float %7173, %6371
  %7179 = fmul fast float %7173, %6372
  %7180 = fmul fast float %7173, %6373
  %7181 = fsub fast float %159, %5570
  %7182 = fcmp fast ogt float %7181, 0.000000e+00
  %7183 = fmul fast float %6360, 5.120000e+02
  %7184 = fmul fast float %6361, 5.120000e+02
  %7185 = fmul fast float %6362, 5.120000e+02
  %7186 = fadd fast float %7185, %159
  %7187 = fsub fast float %5570, %7186
  %7188 = fmul fast float %7187, 2.000000e+00
  %7189 = fadd fast float %7188, %7186
  %7190 = select i1 %7182, float %7189, float %7186
  %7191 = fsub fast float %7190, %159
  %7192 = call float @dx.op.dot3.f32(i32 55, float %7183, float %7184, float %7191, float %7183, float %7184, float %7191)  ; Dot3(ax,ay,az,bx,by,bz)
  %7193 = call float @dx.op.unary.f32(i32 25, float %7192)  ; Rsqrt(value)
  %7194 = fmul fast float %7193, %7183
  %7195 = fmul fast float %7193, %7184
  %7196 = fmul fast float %7193, %7191
  %7197 = fsub fast float %5570, %159
  %7198 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7197)  ; Dot3(ax,ay,az,bx,by,bz)
  %7199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7194, float %7195, float %7196)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = fdiv fast float 1.000000e+00, %7199
  %7201 = fmul fast float %7200, %7198
  %7202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = fcmp fast ogt float %7202, 0.000000e+00
  %7204 = fcmp fast olt float %7202, 0.000000e+00
  %7205 = zext i1 %7203 to i32
  %7206 = zext i1 %7204 to i32
  %7207 = sub nsw i32 %7205, %7206
  %7208 = sitofp i32 %7207 to float
  %7209 = fsub fast float %7190, %5570
  %7210 = call float @dx.op.dot3.f32(i32 55, float %7183, float %7184, float %7209, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = fcmp fast ogt float %7210, 0.000000e+00
  %7212 = fcmp fast olt float %7210, 0.000000e+00
  %7213 = zext i1 %7211 to i32
  %7214 = zext i1 %7212 to i32
  %7215 = sub nsw i32 %7213, %7214
  %7216 = sitofp i32 %7215 to float
  %7217 = fcmp fast une float %7208, %7216
  br i1 %7217, label %7218, label %7228

; <label>:7218                                    ; preds = %7177
  %7219 = fmul fast float %7201, %7196
  %7220 = fmul fast float %7201, %7195
  %7221 = fmul fast float %7201, %7194
  %7222 = fmul fast float %7221, %7221
  %7223 = fmul fast float %7220, %7220
  %7224 = fadd fast float %7222, %7223
  %7225 = fmul fast float %7219, %7219
  %7226 = fadd fast float %7224, %7225
  %7227 = call float @dx.op.unary.f32(i32 24, float %7226)  ; Sqrt(value)
  br label %7238

; <label>:7228                                    ; preds = %7177
  %7229 = icmp slt i32 %7207, 0
  br i1 %7229, label %7230, label %7238

; <label>:7230                                    ; preds = %7228
  %7231 = fsub fast float %159, %7190
  %7232 = fmul fast float %7183, %7183
  %7233 = fmul fast float %7184, %7184
  %7234 = fadd fast float %7232, %7233
  %7235 = fmul fast float %7231, %7231
  %7236 = fadd fast float %7234, %7235
  %7237 = call float @dx.op.unary.f32(i32 24, float %7236)  ; Sqrt(value)
  br label %7238

; <label>:7238                                    ; preds = %7230, %7228, %7218
  %7239 = phi float [ %7227, %7218 ], [ %7237, %7230 ], [ 0.000000e+00, %7228 ]
  %7240 = fsub fast float -0.000000e+00, %7239
  %7241 = select i1 %7182, float -0.000000e+00, float %7240
  %7242 = fmul fast float %5571, 0x3FF7154760000000
  %7243 = fmul fast float %7242, %7241
  %7244 = fmul fast float %5572, 0x3FF7154760000000
  %7245 = fmul fast float %7244, %7241
  %7246 = fmul fast float %5573, 0x3FF7154760000000
  %7247 = fmul fast float %7246, %7241
  %7248 = call float @dx.op.unary.f32(i32 21, float %7243)  ; Exp(value)
  %7249 = call float @dx.op.unary.f32(i32 21, float %7245)  ; Exp(value)
  %7250 = call float @dx.op.unary.f32(i32 21, float %7247)  ; Exp(value)
  %7251 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7252 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7254 = fmul fast float %7178, %7251
  %7255 = fmul fast float %7179, %7252
  %7256 = fmul fast float %7180, %7253
  %7257 = fsub fast float %6360, %177
  %7258 = fsub fast float %6361, %178
  %7259 = fsub fast float %6362, %179
  %7260 = call float @dx.op.dot3.f32(i32 55, float %7257, float %7258, float %7259, float %7257, float %7258, float %7259)  ; Dot3(ax,ay,az,bx,by,bz)
  %7261 = call float @dx.op.unary.f32(i32 25, float %7260)  ; Rsqrt(value)
  %7262 = fmul fast float %7261, %7257
  %7263 = fmul fast float %7261, %7258
  %7264 = fmul fast float %7261, %7259
  %7265 = call float @dx.op.dot3.f32(i32 55, float %6360, float %6361, float %6362, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %7266 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %7262, float %7263, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7267 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7268 = fmul fast float %7267, %7267
  %7269 = fmul fast float %7268, %5814
  %7270 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7271 = fmul fast float %7270, %7267
  %7272 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %7262, float %7263, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7273 = fmul fast float %7272, %7272
  %7274 = call float @dx.op.unary.f32(i32 6, float %7265)  ; FAbs(value)
  %7275 = call float @dx.op.binary.f32(i32 35, float %6189, float 0x3F847AE140000000)  ; FMax(a,b)
  %7276 = fmul fast float %7275, %7275
  %7277 = fmul fast float %7276, %7276
  %7278 = fsub fast float 1.000000e+00, %7277
  %7279 = fmul fast float %5801, %5801
  %7280 = fmul fast float %7279, %7278
  %7281 = fadd fast float %7280, %7277
  %7282 = bitcast float %7281 to i32
  %7283 = ashr i32 %7282, 1
  %7284 = add nsw i32 %7283, 532487669
  %7285 = bitcast i32 %7284 to float
  %7286 = fadd fast float %7285, %5801
  %7287 = fmul fast float %7277, %7273
  %7288 = fsub fast float 1.000000e+00, %7273
  %7289 = fadd fast float %7288, %7287
  %7290 = fmul fast float %7274, %7274
  %7291 = fmul fast float %7290, %7278
  %7292 = fadd fast float %7291, %7277
  %7293 = bitcast float %7292 to i32
  %7294 = ashr i32 %7293, 1
  %7295 = add nsw i32 %7294, 532487669
  %7296 = bitcast i32 %7295 to float
  %7297 = fadd fast float %7296, %7274
  %7298 = fmul fast float %7289, %7289
  %7299 = fmul fast float %7298, %7286
  %7300 = fmul fast float %7299, %7297
  %7301 = fdiv fast float 0x3FF0A00000000000, %7300
  %7302 = fmul fast float %7301, %7277
  %7303 = fmul fast float %6049, 0x3FF9999980000000
  %7304 = fsub fast float 5.000000e+00, %7303
  %7305 = call float @dx.op.unary.f32(i32 6, float %7266)  ; FAbs(value)
  %7306 = fsub fast float 1.000000e+00, %7305
  %7307 = fmul fast float %6049, 0x41D9660740000000
  %7308 = fadd fast float %7307, 0xC1EFBF8940000000
  %7309 = bitcast float %7306 to i32
  %7310 = sitofp i32 %7309 to float
  %7311 = fmul fast float %7310, %7304
  %7312 = fadd fast float %7308, %7311
  %7313 = fptosi float %7312 to i32
  %7314 = bitcast i32 %7313 to float
  %7315 = fsub fast float 1.000000e+00, %5753
  %7316 = fsub fast float 1.000000e+00, %5754
  %7317 = fsub fast float 1.000000e+00, %5799
  %7318 = fmul fast float %7314, %7315
  %7319 = fmul fast float %7314, %7316
  %7320 = fmul fast float %7314, %7317
  %7321 = fadd fast float %7318, %5753
  %7322 = fadd fast float %7319, %5754
  %7323 = fadd fast float %7320, %5799
  br i1 %6072, label %7324, label %7347

; <label>:7324                                    ; preds = %7238
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %7305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = fadd fast float %7326, -5.000000e-01
  %7330 = fadd fast float %7327, -5.000000e-01
  %7331 = fadd fast float %7328, -5.000000e-01
  %7332 = fmul fast float %5753, 4.000000e+00
  %7333 = fmul fast float %7332, %7315
  %7334 = fmul fast float %7333, %7329
  %7335 = fmul fast float %5754, 4.000000e+00
  %7336 = fmul fast float %7335, %7316
  %7337 = fmul fast float %7336, %7330
  %7338 = fmul fast float %5799, 4.000000e+00
  %7339 = fmul fast float %7338, %7317
  %7340 = fmul fast float %7339, %7331
  %7341 = fadd fast float %7334, %7321
  %7342 = fadd fast float %7337, %7322
  %7343 = fadd fast float %7340, %7323
  %7344 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7345 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7346 = call float @dx.op.unary.f32(i32 7, float %7343)  ; Saturate(value)
  br label %7347

; <label>:7347                                    ; preds = %7324, %7238
  %7348 = phi float [ %7344, %7324 ], [ %7321, %7238 ]
  %7349 = phi float [ %7345, %7324 ], [ %7322, %7238 ]
  %7350 = phi float [ %7346, %7324 ], [ %7323, %7238 ]
  %7351 = fmul fast float %7265, 9.843750e-01
  %7352 = fadd fast float %7351, 7.812500e-03
  %7353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7352, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7354 = extractvalue %dx.types.ResRet.f32 %7353, 0
  %7355 = extractvalue %dx.types.ResRet.f32 %7353, 1
  %7356 = extractvalue %dx.types.ResRet.f32 %7353, 2
  %7357 = extractvalue %dx.types.ResRet.f32 %7353, 3
  %7358 = fsub fast float %7356, %7354
  %7359 = fsub fast float %7357, %7355
  %7360 = fmul fast float %7358, %6059
  %7361 = fmul fast float %7359, %6059
  %7362 = fadd fast float %7360, %7354
  %7363 = fadd fast float %7361, %7355
  %7364 = fmul fast float %7362, %5753
  %7365 = fmul fast float %7362, %5754
  %7366 = fmul fast float %7362, %5799
  %7367 = fadd fast float %7364, %7363
  %7368 = fadd fast float %7365, %7363
  %7369 = fadd fast float %7366, %7363
  br i1 %6072, label %7370, label %7393

; <label>:7370                                    ; preds = %7347
  %7371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %7265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = fadd fast float %7372, -5.000000e-01
  %7376 = fadd fast float %7373, -5.000000e-01
  %7377 = fadd fast float %7374, -5.000000e-01
  %7378 = fmul fast float %5753, 4.000000e+00
  %7379 = fmul fast float %7378, %7315
  %7380 = fmul fast float %7379, %7375
  %7381 = fmul fast float %5754, 4.000000e+00
  %7382 = fmul fast float %7381, %7316
  %7383 = fmul fast float %7382, %7376
  %7384 = fmul fast float %5799, 4.000000e+00
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
  %7400 = call float @dx.op.binary.f32(i32 35, float %7274, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7401 = fdiv fast float %4455, %7400
  %7402 = fmul fast float %6130, %7401
  %7403 = fmul fast float %6132, %7401
  %7404 = fmul fast float %6134, %7401
  %7405 = call float @dx.op.unary.f32(i32 21, float %7402)  ; Exp(value)
  %7406 = call float @dx.op.unary.f32(i32 21, float %7403)  ; Exp(value)
  %7407 = call float @dx.op.unary.f32(i32 21, float %7404)  ; Exp(value)
  %7408 = call float @dx.op.unary.f32(i32 7, float %7405)  ; Saturate(value)
  %7409 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  %7410 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7411 = select i1 %6127, float %7408, float 0.000000e+00
  %7412 = select i1 %6128, float %7409, float 0.000000e+00
  %7413 = select i1 %6129, float %7410, float 0.000000e+00
  %7414 = fsub fast float -0.000000e+00, %5756
  %7415 = fsub fast float -0.000000e+00, %5757
  %7416 = fsub fast float -0.000000e+00, %5758
  %7417 = call float @dx.op.dot3.f32(i32 55, float %6360, float %6361, float %6362, float %7414, float %7415, float %7416)  ; Dot3(ax,ay,az,bx,by,bz)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7419 = fmul fast float %7418, 9.843750e-01
  %7420 = fadd fast float %7419, 7.812500e-03
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7420, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7426 = fsub fast float %7424, %7422
  %7427 = fsub fast float %7425, %7423
  %7428 = fmul fast float %7426, %6059
  %7429 = fmul fast float %7427, %6059
  %7430 = fadd fast float %7428, %7422
  %7431 = fadd fast float %7429, %7423
  %7432 = fmul fast float %7430, %5753
  %7433 = fmul fast float %7430, %5754
  %7434 = fmul fast float %7430, %5799
  %7435 = fadd fast float %7432, %7431
  %7436 = fadd fast float %7433, %7431
  %7437 = fadd fast float %7434, %7431
  br i1 %6072, label %7438, label %7461

; <label>:7438                                    ; preds = %7393
  %7439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %7418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = fadd fast float %7440, -5.000000e-01
  %7444 = fadd fast float %7441, -5.000000e-01
  %7445 = fadd fast float %7442, -5.000000e-01
  %7446 = fmul fast float %5753, 4.000000e+00
  %7447 = fmul fast float %7446, %7315
  %7448 = fmul fast float %7447, %7443
  %7449 = fmul fast float %5754, 4.000000e+00
  %7450 = fmul fast float %7449, %7316
  %7451 = fmul fast float %7450, %7444
  %7452 = fmul fast float %5799, 4.000000e+00
  %7453 = fmul fast float %7452, %7317
  %7454 = fmul fast float %7453, %7445
  %7455 = fadd fast float %7448, %7435
  %7456 = fadd fast float %7451, %7436
  %7457 = fadd fast float %7454, %7437
  %7458 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7459 = call float @dx.op.unary.f32(i32 7, float %7456)  ; Saturate(value)
  %7460 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  br label %7461

; <label>:7461                                    ; preds = %7438, %7393
  %7462 = phi float [ %7458, %7438 ], [ %7435, %7393 ]
  %7463 = phi float [ %7459, %7438 ], [ %7436, %7393 ]
  %7464 = phi float [ %7460, %7438 ], [ %7437, %7393 ]
  %7465 = call float @dx.op.binary.f32(i32 35, float %7463, float %7464)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 35, float %7462, float %7465)  ; FMax(a,b)
  %7467 = fsub fast float 1.000000e+00, %7466
  %7468 = fmul fast float %6189, %6195
  %7469 = fadd fast float %6188, %7468
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = fsub fast float %6360, %5807
  %7472 = fsub fast float %6361, %5808
  %7473 = fsub fast float %6362, %5809
  %7474 = call float @dx.op.dot3.f32(i32 55, float %7471, float %7472, float %7473, float %7471, float %7472, float %7473)  ; Dot3(ax,ay,az,bx,by,bz)
  %7475 = call float @dx.op.unary.f32(i32 25, float %7474)  ; Rsqrt(value)
  %7476 = fmul fast float %7475, %7471
  %7477 = fmul fast float %7475, %7472
  %7478 = fmul fast float %7475, %7473
  %7479 = call float @dx.op.dot3.f32(i32 55, float %7414, float %7415, float %7416, float %7476, float %7477, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7480 = fmul fast float %7479, %7479
  %7481 = call float @dx.op.unary.f32(i32 6, float %7418)  ; FAbs(value)
  %7482 = call float @dx.op.binary.f32(i32 35, float %7470, float 0x3F847AE140000000)  ; FMax(a,b)
  %7483 = fmul fast float %7482, %7482
  %7484 = fmul fast float %7483, %7483
  %7485 = fsub fast float 1.000000e+00, %7484
  %7486 = fmul fast float %7279, %7485
  %7487 = fadd fast float %7486, %7484
  %7488 = bitcast float %7487 to i32
  %7489 = ashr i32 %7488, 1
  %7490 = add nsw i32 %7489, 532487669
  %7491 = bitcast i32 %7490 to float
  %7492 = fadd fast float %7491, %5801
  %7493 = fmul fast float %7484, %7480
  %7494 = fsub fast float 1.000000e+00, %7480
  %7495 = fadd fast float %7494, %7493
  %7496 = fmul fast float %7481, %7481
  %7497 = fmul fast float %7496, %7485
  %7498 = fadd fast float %7497, %7484
  %7499 = bitcast float %7498 to i32
  %7500 = ashr i32 %7499, 1
  %7501 = add nsw i32 %7500, 532487669
  %7502 = bitcast i32 %7501 to float
  %7503 = fadd fast float %7502, %7481
  %7504 = fmul fast float %7495, %7495
  %7505 = fmul fast float %7504, %7492
  %7506 = fmul fast float %7505, %7503
  %7507 = fdiv fast float 0x3FF0A00000000000, %7506
  %7508 = fmul fast float %7507, %7484
  %7509 = fmul fast float %7418, %7411
  %7510 = fmul fast float %7418, %7412
  %7511 = fmul fast float %7418, %7413
  %7512 = fmul fast float %7509, %7467
  %7513 = fmul fast float %7512, %7508
  %7514 = fmul fast float %7510, %7467
  %7515 = fmul fast float %7514, %7508
  %7516 = fmul fast float %7511, %7467
  %7517 = fmul fast float %7516, %7508
  %7518 = fmul fast float %7348, %7302
  %7519 = fmul fast float %7349, %7302
  %7520 = fmul fast float %7350, %7302
  %7521 = fsub fast float 1.000000e+00, %7266
  %7522 = bitcast float %7521 to i32
  %7523 = sitofp i32 %7522 to float
  %7524 = fmul fast float %7523, 5.000000e+00
  %7525 = fadd fast float %7524, 0xC1EFBF8940000000
  %7526 = fptosi float %7525 to i32
  %7527 = bitcast i32 %7526 to float
  %7528 = fmul fast float %7527, %5119
  %7529 = fmul fast float %7399, %7528
  %7530 = fmul fast float %7529, %6122
  %7531 = fmul fast float %7529, %6123
  %7532 = fmul fast float %7529, %6124
  %7533 = fadd fast float %7530, %7518
  %7534 = fadd fast float %7531, %7519
  %7535 = fadd fast float %7532, %7520
  %7536 = fmul fast float %7533, %7271
  %7537 = fmul fast float %7534, %7271
  %7538 = fmul fast float %7535, %7271
  %7539 = fmul fast float %7271, %7254
  %7540 = fmul fast float %7539, %7399
  %7541 = fmul fast float %7271, %7255
  %7542 = fmul fast float %7541, %7399
  %7543 = fmul fast float %7271, %7256
  %7544 = fmul fast float %7543, %7399
  %7545 = fadd fast float %7536, %7513
  %7546 = fadd fast float %7537, %7515
  %7547 = fadd fast float %7538, %7517
  %7548 = fmul fast float %7545, %7254
  %7549 = fmul fast float %7546, %7255
  %7550 = fmul fast float %7547, %7256
  %7551 = fadd fast float %7540, %6106
  %7552 = fmul fast float %7551, %5144
  %7553 = fadd fast float %7542, %6107
  %7554 = fmul fast float %7553, %5144
  %7555 = fadd fast float %7544, %6108
  %7556 = fmul fast float %7555, %5144
  %7557 = fadd fast float %7548, %6346
  %7558 = fmul fast float %7557, %5144
  %7559 = fadd fast float %7549, %6350
  %7560 = fmul fast float %7559, %5144
  %7561 = fadd fast float %7550, %6354
  %7562 = fmul fast float %7561, %5144
  br label %7563

; <label>:7563                                    ; preds = %7461, %7172, %6330
  %7564 = phi float [ %6347, %6330 ], [ %6347, %7172 ], [ %7558, %7461 ]
  %7565 = phi float [ %6351, %6330 ], [ %6351, %7172 ], [ %7560, %7461 ]
  %7566 = phi float [ %6355, %6330 ], [ %6355, %7172 ], [ %7562, %7461 ]
  %7567 = phi float [ %6219, %6330 ], [ %6219, %7172 ], [ %7552, %7461 ]
  %7568 = phi float [ %6220, %6330 ], [ %6220, %7172 ], [ %7554, %7461 ]
  %7569 = phi float [ %6221, %6330 ], [ %6221, %7172 ], [ %7556, %7461 ]
  %7570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.i32 %7570, 0
  %7572 = icmp eq i32 %7571, 0
  br i1 %7572, label %8347, label %7573

; <label>:7573                                    ; preds = %7563
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 2
  %7576 = extractvalue %dx.types.CBufRet.f32 %7574, 3
  %7577 = fmul fast float %7575, %102
  %7578 = fmul fast float %7576, %103
  %7579 = fptoui float %7577 to i32
  %7580 = fptoui float %7578 to i32
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.CBufRet.f32 %7581, 2
  %7584 = extractvalue %dx.types.CBufRet.f32 %7581, 3
  %7585 = fadd fast float %93, -4.000000e+00
  %7586 = call float @dx.op.binary.f32(i32 35, float %7585, float 0.000000e+00)  ; FMax(a,b)
  %7587 = fadd fast float %7586, %7582
  %7588 = fmul fast float %7587, %7583
  %7589 = call float @dx.op.unary.f32(i32 23, float %7588)  ; Log(value)
  %7590 = fmul fast float %7589, %7584
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 2
  %7593 = fmul fast float %7590, %7592
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.i32 %7595, 1
  %7597 = add i32 %7596, -1
  %7598 = uitofp i32 %7596 to float
  %7599 = fmul fast float %7598, %7594
  %7600 = fptoui float %7599 to i32
  %7601 = call i32 @dx.op.binary.i32(i32 40, i32 %7600, i32 %7597)  ; UMin(a,b)
  %7602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.i32 %7602, 2
  %7604 = extractvalue %dx.types.CBufRet.i32 %7602, 3
  %7605 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7580, i32 %7603, i32 %7579)  ; UMad(a,b,c)
  %7606 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7601, i32 %7604, i32 %7605)  ; UMad(a,b,c)
  %7607 = add nsw i32 %7571, -1
  %7608 = call i32 @dx.op.binary.i32(i32 37, i32 %7607, i32 0)  ; IMax(a,b)
  %7609 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7610 = fptoui float %7609 to i32
  %7611 = lshr i32 %7610, 5
  %7612 = call i32 @dx.op.binary.i32(i32 40, i32 %7611, i32 8191)  ; UMin(a,b)
  %7613 = shl i32 %7612, 2
  %7614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7613, i32 undef)  ; BufferLoad(srv,index,wot)
  %7615 = extractvalue %dx.types.ResRet.i32 %7614, 0
  %7616 = lshr i32 %7615, 16
  %7617 = and i32 %7615, 65535
  %7618 = lshr i32 %7615, 21
  %7619 = lshr i32 %7617, 5
  %7620 = call i32 @dx.op.binary.i32(i32 40, i32 %7619, i32 %7608)  ; UMin(a,b)
  %7621 = icmp ugt i32 %7618, %7620
  br i1 %7621, label %8347, label %7622

; <label>:7622                                    ; preds = %7573
  br label %7623

; <label>:7623                                    ; preds = %8337, %7622
  %7624 = phi i32 [ %8344, %8337 ], [ %7618, %7622 ]
  %7625 = phi float [ %8338, %8337 ], [ %7564, %7622 ]
  %7626 = phi float [ %8339, %8337 ], [ %7565, %7622 ]
  %7627 = phi float [ %8340, %8337 ], [ %7566, %7622 ]
  %7628 = phi float [ %8341, %8337 ], [ %7567, %7622 ]
  %7629 = phi float [ %8342, %8337 ], [ %7568, %7622 ]
  %7630 = phi float [ %8343, %8337 ], [ %7569, %7622 ]
  %7631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.i32 %7631, 0
  %7633 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7606, i32 %7632, i32 %7624)  ; UMad(a,b,c)
  %7634 = shl i32 %7633, 2
  %7635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7634, i32 undef)  ; BufferLoad(srv,index,wot)
  %7636 = extractvalue %dx.types.ResRet.i32 %7635, 0
  %7637 = shl i32 %7624, 5
  %7638 = sub nsw i32 %7616, %7637
  %7639 = call i32 @dx.op.binary.i32(i32 37, i32 %7638, i32 0)  ; IMax(a,b)
  %7640 = call i32 @dx.op.binary.i32(i32 38, i32 %7639, i32 31)  ; IMin(a,b)
  %7641 = sub nsw i32 1, %7616
  %7642 = add nsw i32 %7641, %7617
  %7643 = call i32 @dx.op.binary.i32(i32 37, i32 %7642, i32 0)  ; IMax(a,b)
  %7644 = call i32 @dx.op.binary.i32(i32 38, i32 %7643, i32 32)  ; IMin(a,b)
  %7645 = and i32 %7644, 31
  %7646 = shl i32 -1, %7645
  %7647 = xor i32 %7646, -1
  %7648 = and i32 %7640, 31
  %7649 = shl i32 %7647, %7648
  %7650 = icmp eq i32 %7644, 32
  %7651 = select i1 %7650, i32 -1, i32 %7649
  %7652 = and i32 %7651, %7636
  %7653 = icmp eq i32 %7652, 0
  br i1 %7653, label %8337, label %7654

; <label>:7654                                    ; preds = %7623
  br label %7655

; <label>:7655                                    ; preds = %7790, %7654
  %7656 = phi i32 [ %7667, %7790 ], [ %7652, %7654 ]
  %7657 = phi float [ %7791, %7790 ], [ %7625, %7654 ]
  %7658 = phi float [ %7792, %7790 ], [ %7626, %7654 ]
  %7659 = phi float [ %7793, %7790 ], [ %7627, %7654 ]
  %7660 = phi float [ %7794, %7790 ], [ %7628, %7654 ]
  %7661 = phi float [ %7795, %7790 ], [ %7629, %7654 ]
  %7662 = phi float [ %7796, %7790 ], [ %7630, %7654 ]
  %7663 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7656)  ; FirstbitLo(value)
  %7664 = add i32 %7663, %7637
  %7665 = and i32 %7663, 31
  %7666 = shl i32 1, %7665
  %7667 = xor i32 %7666, %7656
  %7668 = mul i32 %7664, 112
  %7669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = or i32 %7668, 12
  %7674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7673, i32 undef)  ; BufferLoad(srv,index,wot)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = add i32 %7668, 16
  %7677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7676, i32 undef)  ; BufferLoad(srv,index,wot)
  %7678 = extractvalue %dx.types.ResRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.ResRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.ResRet.f32 %7677, 2
  %7681 = add i32 %7668, 28
  %7682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7681, i32 undef)  ; BufferLoad(srv,index,wot)
  %7683 = extractvalue %dx.types.ResRet.i32 %7682, 0
  %7684 = add i32 %7668, 44
  %7685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7684, i32 undef)  ; BufferLoad(srv,index,wot)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = add i32 %7668, 48
  %7688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7687, i32 undef)  ; BufferLoad(srv,index,wot)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.ResRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.ResRet.f32 %7688, 2
  %7692 = extractvalue %dx.types.ResRet.f32 %7688, 3
  %7693 = add i32 %7668, 64
  %7694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7693, i32 undef)  ; BufferLoad(srv,index,wot)
  %7695 = extractvalue %dx.types.ResRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.ResRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.ResRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.ResRet.f32 %7694, 3
  %7699 = add i32 %7668, 80
  %7700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7699, i32 undef)  ; BufferLoad(srv,index,wot)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 1
  %7702 = extractvalue %dx.types.ResRet.f32 %7700, 2
  %7703 = add i32 %7668, 92
  %7704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7703, i32 undef)  ; BufferLoad(srv,index,wot)
  %7705 = extractvalue %dx.types.ResRet.i32 %7704, 0
  %7706 = call float @dx.op.dot3.f32(i32 55, float %7670, float %7671, float %7672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = select i1 %251, float %7701, float %7670
  %7708 = select i1 %251, float %7706, float %7671
  %7709 = select i1 %251, float %7702, float %7672
  %7710 = and i32 %7705, 65535
  %7711 = uitofp i32 %7710 to float
  %7712 = lshr i32 %7705, 16
  %7713 = uitofp i32 %7712 to float
  %7714 = and i32 %7683, 65535
  %7715 = and i32 %7683, 50331648
  %7716 = icmp slt i32 %7683, 0
  %7717 = icmp eq i32 %7715, 33554432
  %7718 = fsub fast float %7689, %157
  %7719 = fsub fast float %7690, %158
  %7720 = fsub fast float %7691, %159
  %7721 = call float @dx.op.dot3.f32(i32 55, float %7718, float %7719, float %7720, float %7718, float %7719, float %7720)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = call float @dx.op.unary.f32(i32 24, float %7721)  ; Sqrt(value)
  %7723 = fdiv fast float 1.000000e+00, %7722
  %7724 = fmul fast float %7723, %7718
  %7725 = fmul fast float %7723, %7719
  %7726 = fmul fast float %7723, %7720
  %7727 = fadd fast float %7722, %7675
  %7728 = fdiv fast float 1.000000e+00, %7727
  %7729 = fmul float %7686, %7728
  %7730 = fmul float %7729, %7729
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  br i1 %7717, label %7732, label %7753

; <label>:7732                                    ; preds = %7655
  %7733 = fmul fast float %7697, %7678
  %7734 = fmul fast float %7697, %7679
  %7735 = fmul fast float %7697, %7680
  %7736 = fadd fast float %7718, %7733
  %7737 = fadd fast float %7719, %7734
  %7738 = fadd fast float %7720, %7735
  %7739 = call float @dx.op.dot3.f32(i32 55, float %7736, float %7737, float %7738, float %7736, float %7737, float %7738)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = call float @dx.op.unary.f32(i32 25, float %7739)  ; Rsqrt(value)
  %7741 = fmul fast float %7740, %7736
  %7742 = fmul fast float %7740, %7737
  %7743 = fmul fast float %7740, %7738
  %7744 = fsub fast float %157, %7689
  %7745 = fsub fast float %158, %7690
  %7746 = fsub fast float %159, %7691
  %7747 = fsub fast float -0.000000e+00, %7744
  %7748 = fsub fast float -0.000000e+00, %7745
  %7749 = fsub fast float -0.000000e+00, %7746
  %7750 = call float @dx.op.dot3.f32(i32 55, float %7747, float %7748, float %7749, float %7678, float %7679, float %7680)  ; Dot3(ax,ay,az,bx,by,bz)
  %7751 = fcmp fast ogt float %7750, 0.000000e+00
  %7752 = uitofp i1 %7751 to float
  br label %7753

; <label>:7753                                    ; preds = %7732, %7655
  %7754 = phi float [ %7752, %7732 ], [ 1.000000e+00, %7655 ]
  %7755 = phi float [ %7741, %7732 ], [ %7724, %7655 ]
  %7756 = phi float [ %7742, %7732 ], [ %7725, %7655 ]
  %7757 = phi float [ %7743, %7732 ], [ %7726, %7655 ]
  %7758 = call float @dx.op.dot3.f32(i32 55, float %7678, float %7679, float %7680, float %7755, float %7756, float %7757)  ; Dot3(ax,ay,az,bx,by,bz)
  %7759 = fmul fast float %7758, %7758
  %7760 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7761 = fsub fast float 1.000000e+00, %7760
  %7762 = fmul fast float %7761, 5.000000e-01
  %7763 = fcmp fast ogt float %7758, 0.000000e+00
  %7764 = fsub fast float 1.000000e+00, %7762
  %7765 = select i1 %7763, float %7762, float %7764
  %7766 = fmul fast float %7765, %7713
  %7767 = fadd fast float %7766, %7711
  %7768 = fmul fast float %7767, 0x3EF0001000000000
  %7769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7768, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = fmul fast float %7758, %7695
  %7772 = fadd fast float %7771, %7696
  %7773 = call float @dx.op.unary.f32(i32 7, float %7772)  ; Saturate(value)
  %7774 = select i1 %7717, float 1.000000e+00, float %7773
  %7775 = select i1 %7717, float %7773, float 1.000000e+00
  %7776 = fmul fast float %7722, %7692
  %7777 = fsub fast float 1.000000e+00, %7776
  %7778 = fmul fast float %7777, %7698
  %7779 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7780 = fmul fast float %7779, %7775
  %7781 = fmul fast float %7780, 2.000000e+00
  %7782 = fsub fast float 3.000000e+00, %7781
  %7783 = fmul fast float %7770, %7754
  %7784 = fmul fast float %7780, %7780
  %7785 = fmul fast float %7784, %7783
  %7786 = fmul fast float %7785, %7782
  %7787 = call float @dx.op.binary.f32(i32 36, float %7786, float %7786)  ; FMin(a,b)
  %7788 = call float @dx.op.binary.f32(i32 36, float %7786, float %7787)  ; FMin(a,b)
  %7789 = fcmp fast ogt float %7788, 0.000000e+00
  br i1 %7789, label %7798, label %7790, !dx.controlflow.hints !122

; <label>:7790                                    ; preds = %8290, %7898, %7753
  %7791 = phi float [ %7657, %7898 ], [ %7657, %7753 ], [ %8333, %8290 ]
  %7792 = phi float [ %7658, %7898 ], [ %7658, %7753 ], [ %8334, %8290 ]
  %7793 = phi float [ %7659, %7898 ], [ %7659, %7753 ], [ %8335, %8290 ]
  %7794 = phi float [ %7660, %7898 ], [ %7660, %7753 ], [ %8327, %8290 ]
  %7795 = phi float [ %7661, %7898 ], [ %7661, %7753 ], [ %8328, %8290 ]
  %7796 = phi float [ %7662, %7898 ], [ %7662, %7753 ], [ %8329, %8290 ]
  %7797 = icmp eq i32 %7656, %7666
  br i1 %7797, label %8336, label %7655

; <label>:7798                                    ; preds = %7753
  %7799 = icmp eq i32 %7714, 255
  br i1 %7799, label %7898, label %7800, !dx.controlflow.hints !123

; <label>:7800                                    ; preds = %7798
  %7801 = mul nuw nsw i32 %7714, 176
  %7802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7801, i32 undef)  ; BufferLoad(srv,index,wot)
  %7803 = extractvalue %dx.types.ResRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.ResRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.ResRet.f32 %7802, 2
  %7806 = extractvalue %dx.types.ResRet.f32 %7802, 3
  %7807 = add nuw nsw i32 %7801, 16
  %7808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7807, i32 undef)  ; BufferLoad(srv,index,wot)
  %7809 = extractvalue %dx.types.ResRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.ResRet.f32 %7808, 1
  %7811 = add nuw nsw i32 %7801, 32
  %7812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7811, i32 undef)  ; BufferLoad(srv,index,wot)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = add nuw nsw i32 %7801, 48
  %7817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7816, i32 undef)  ; BufferLoad(srv,index,wot)
  %7818 = extractvalue %dx.types.ResRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.ResRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.ResRet.f32 %7817, 2
  %7821 = extractvalue %dx.types.ResRet.f32 %7817, 3
  %7822 = add nuw nsw i32 %7801, 64
  %7823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7822, i32 undef)  ; BufferLoad(srv,index,wot)
  %7824 = extractvalue %dx.types.ResRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.ResRet.f32 %7823, 1
  %7826 = extractvalue %dx.types.ResRet.f32 %7823, 2
  %7827 = extractvalue %dx.types.ResRet.f32 %7823, 3
  %7828 = add nuw nsw i32 %7801, 80
  %7829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7828, i32 undef)  ; BufferLoad(srv,index,wot)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = extractvalue %dx.types.ResRet.f32 %7829, 1
  %7832 = extractvalue %dx.types.ResRet.f32 %7829, 2
  %7833 = extractvalue %dx.types.ResRet.f32 %7829, 3
  %7834 = add nuw nsw i32 %7801, 96
  %7835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7834, i32 undef)  ; BufferLoad(srv,index,wot)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = extractvalue %dx.types.ResRet.f32 %7835, 3
  %7840 = bitcast float %7810 to i32
  %7841 = fmul fast float %7815, %109
  %7842 = fmul fast float %7815, %110
  %7843 = fmul fast float %7815, %111
  %7844 = fadd fast float %7841, %157
  %7845 = fadd fast float %7842, %158
  %7846 = fadd fast float %7843, %159
  %7847 = fmul fast float %7844, %7818
  %7848 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7824, float %7847)  ; FMad(a,b,c)
  %7849 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7830, float %7848)  ; FMad(a,b,c)
  %7850 = fadd fast float %7849, %7836
  %7851 = fmul fast float %7844, %7819
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7825, float %7851)  ; FMad(a,b,c)
  %7853 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7831, float %7852)  ; FMad(a,b,c)
  %7854 = fadd fast float %7853, %7837
  %7855 = fmul fast float %7844, %7820
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7826, float %7855)  ; FMad(a,b,c)
  %7857 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7832, float %7856)  ; FMad(a,b,c)
  %7858 = fadd fast float %7857, %7838
  %7859 = fmul fast float %7844, %7821
  %7860 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7827, float %7859)  ; FMad(a,b,c)
  %7861 = call float @dx.op.tertiary.f32(i32 46, float %7846, float %7833, float %7860)  ; FMad(a,b,c)
  %7862 = fadd fast float %7861, %7839
  %7863 = fdiv fast float %7850, %7862
  %7864 = fdiv fast float %7854, %7862
  %7865 = fdiv fast float %7858, %7862
  %7866 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7865)  ; FMax(a,b)
  %7867 = fmul fast float %264, 0x401921FB60000000
  %7868 = call float @dx.op.unary.f32(i32 13, float %7867)  ; Sin(value)
  %7869 = call float @dx.op.unary.f32(i32 12, float %7867)  ; Cos(value)
  %7870 = fsub fast float -0.000000e+00, %7868
  %7871 = fmul fast float %7805, 5.000000e-01
  %7872 = call float @dx.op.dot2.f32(i32 54, float %264, float %264, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7873 = call float @dx.op.unary.f32(i32 22, float %7872)  ; Frc(value)
  %7874 = fmul fast float %7873, 0x404A7DD040000000
  %7875 = call float @dx.op.unary.f32(i32 22, float %7874)  ; Frc(value)
  %7876 = fmul fast float %7875, %7814
  %7877 = fadd fast float %7876, %7871
  %7878 = call float @dx.op.tertiary.f32(i32 46, float %7877, float %7870, float 0.000000e+00)  ; FMad(a,b,c)
  %7879 = call float @dx.op.tertiary.f32(i32 46, float %7877, float %7869, float 0.000000e+00)  ; FMad(a,b,c)
  %7880 = fadd fast float %7878, %7863
  %7881 = fadd fast float %7879, %7864
  %7882 = fmul fast float %7880, %7809
  %7883 = fmul fast float %7881, %7809
  %7884 = call float @dx.op.binary.f32(i32 35, float %7882, float %7805)  ; FMax(a,b)
  %7885 = call float @dx.op.binary.f32(i32 35, float %7883, float %7805)  ; FMax(a,b)
  %7886 = call float @dx.op.binary.f32(i32 36, float %7884, float %7806)  ; FMin(a,b)
  %7887 = call float @dx.op.binary.f32(i32 36, float %7885, float %7806)  ; FMin(a,b)
  %7888 = fadd fast float %7886, %7803
  %7889 = fadd fast float %7887, %7804
  %7890 = uitofp i32 %7840 to float
  %7891 = fadd fast float %7866, %7813
  %7892 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7888, float %7889, float %7890, float undef, i32 0, i32 0, i32 undef, float %7891)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7893 = extractvalue %dx.types.ResRet.f32 %7892, 0
  %7894 = fadd fast float %7893, -1.000000e+00
  %7895 = fmul fast float %7894, %7774
  %7896 = fadd fast float %7895, 1.000000e+00
  %7897 = fmul fast float %7896, %7786
  br label %7898

; <label>:7898                                    ; preds = %7800, %7798
  %7899 = phi float [ %7897, %7800 ], [ %7786, %7798 ]
  %7900 = call float @dx.op.binary.f32(i32 36, float %7899, float %7899)  ; FMin(a,b)
  %7901 = call float @dx.op.binary.f32(i32 36, float %7899, float %7900)  ; FMin(a,b)
  %7902 = fcmp fast ogt float %7901, 0.000000e+00
  br i1 %7902, label %7903, label %7790, !dx.controlflow.hints !124

; <label>:7903                                    ; preds = %7898
  %7904 = fmul fast float %7899, %7707
  %7905 = fmul fast float %7899, %7708
  %7906 = fmul fast float %7899, %7709
  %7907 = fsub fast float %7691, %5570
  %7908 = fcmp fast ogt float %7907, 0.000000e+00
  %7909 = fsub fast float %159, %5570
  %7910 = fcmp fast ogt float %7909, 0.000000e+00
  %7911 = xor i1 %7910, %7908
  %7912 = fsub fast float %5570, %7691
  %7913 = fmul fast float %7912, 2.000000e+00
  %7914 = fadd fast float %7913, %7691
  %7915 = select i1 %7911, float %7691, float %7914
  %7916 = fsub fast float %7915, %159
  %7917 = call float @dx.op.dot3.f32(i32 55, float %7718, float %7719, float %7916, float %7718, float %7719, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = call float @dx.op.unary.f32(i32 25, float %7917)  ; Rsqrt(value)
  %7919 = fmul fast float %7918, %7718
  %7920 = fmul fast float %7918, %7719
  %7921 = fmul fast float %7918, %7916
  %7922 = fsub fast float %5570, %159
  %7923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7924 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7919, float %7920, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7925 = fdiv fast float 1.000000e+00, %7924
  %7926 = fmul fast float %7925, %7923
  %7927 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7909, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = fcmp fast ogt float %7927, 0.000000e+00
  %7929 = fcmp fast olt float %7927, 0.000000e+00
  %7930 = zext i1 %7928 to i32
  %7931 = zext i1 %7929 to i32
  %7932 = sub nsw i32 %7930, %7931
  %7933 = sitofp i32 %7932 to float
  %7934 = fsub fast float %7915, %5570
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7718, float %7719, float %7934, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = fcmp fast ogt float %7935, 0.000000e+00
  %7937 = fcmp fast olt float %7935, 0.000000e+00
  %7938 = zext i1 %7936 to i32
  %7939 = zext i1 %7937 to i32
  %7940 = sub nsw i32 %7938, %7939
  %7941 = sitofp i32 %7940 to float
  %7942 = fcmp fast une float %7933, %7941
  br i1 %7942, label %7943, label %7953

; <label>:7943                                    ; preds = %7903
  %7944 = fmul fast float %7926, %7921
  %7945 = fmul fast float %7926, %7920
  %7946 = fmul fast float %7926, %7919
  %7947 = fmul fast float %7946, %7946
  %7948 = fmul fast float %7945, %7945
  %7949 = fadd fast float %7947, %7948
  %7950 = fmul fast float %7944, %7944
  %7951 = fadd fast float %7949, %7950
  %7952 = call float @dx.op.unary.f32(i32 24, float %7951)  ; Sqrt(value)
  br label %7965

; <label>:7953                                    ; preds = %7903
  %7954 = icmp slt i32 %7932, 0
  br i1 %7954, label %7955, label %7965

; <label>:7955                                    ; preds = %7953
  %7956 = fsub fast float %157, %7689
  %7957 = fsub fast float %158, %7690
  %7958 = fsub fast float %159, %7915
  %7959 = fmul fast float %7956, %7956
  %7960 = fmul fast float %7957, %7957
  %7961 = fadd fast float %7959, %7960
  %7962 = fmul fast float %7958, %7958
  %7963 = fadd fast float %7961, %7962
  %7964 = call float @dx.op.unary.f32(i32 24, float %7963)  ; Sqrt(value)
  br label %7965

; <label>:7965                                    ; preds = %7955, %7953, %7943
  %7966 = phi float [ %7952, %7943 ], [ %7964, %7955 ], [ 0.000000e+00, %7953 ]
  %7967 = and i1 %7910, %7908
  %7968 = fsub fast float -0.000000e+00, %7966
  %7969 = select i1 %7967, float -0.000000e+00, float %7968
  %7970 = fmul fast float %5571, 0x3FF7154760000000
  %7971 = fmul fast float %7970, %7969
  %7972 = fmul fast float %5572, 0x3FF7154760000000
  %7973 = fmul fast float %7972, %7969
  %7974 = fmul fast float %5573, 0x3FF7154760000000
  %7975 = fmul fast float %7974, %7969
  %7976 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7977 = call float @dx.op.unary.f32(i32 21, float %7973)  ; Exp(value)
  %7978 = call float @dx.op.unary.f32(i32 21, float %7975)  ; Exp(value)
  %7979 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = fmul fast float %7904, %7979
  %7983 = fmul fast float %7905, %7980
  %7984 = fmul fast float %7906, %7981
  %7985 = fsub fast float %7724, %177
  %7986 = fsub fast float %7725, %178
  %7987 = fsub fast float %7726, %179
  %7988 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7987, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7989 = call float @dx.op.unary.f32(i32 25, float %7988)  ; Rsqrt(value)
  %7990 = fmul fast float %7989, %7985
  %7991 = fmul fast float %7989, %7986
  %7992 = fmul fast float %7989, %7987
  %7993 = call float @dx.op.dot3.f32(i32 55, float %7724, float %7725, float %7726, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7996 = fmul fast float %7995, %7731
  %7997 = fmul fast float %7995, %7995
  %7998 = fmul fast float %7997, %5814
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fmul fast float %7996, %7999
  %8001 = bitcast float %7721 to i32
  %8002 = ashr i32 %8001, 1
  %8003 = sub nsw i32 1597463007, %8002
  %8004 = bitcast i32 %8003 to float
  %8005 = fmul fast float %8004, %7718
  %8006 = fmul fast float %8004, %7719
  %8007 = fmul fast float %8004, %7720
  %8008 = fsub fast float %8005, %177
  %8009 = fsub fast float %8006, %178
  %8010 = fsub fast float %8007, %179
  %8011 = call float @dx.op.dot3.f32(i32 55, float %8008, float %8009, float %8010, float %8008, float %8009, float %8010)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = call float @dx.op.unary.f32(i32 25, float %8011)  ; Rsqrt(value)
  %8013 = fmul fast float %8008, %8012
  %8014 = fmul fast float %8009, %8012
  %8015 = fmul fast float %8010, %8012
  %8016 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = fmul fast float %8016, %8016
  %8018 = call float @dx.op.unary.f32(i32 6, float %7993)  ; FAbs(value)
  %8019 = call float @dx.op.binary.f32(i32 35, float %6189, float 0x3F847AE140000000)  ; FMax(a,b)
  %8020 = fmul fast float %8019, %8019
  %8021 = fmul fast float %8020, %8020
  %8022 = fsub fast float 1.000000e+00, %8021
  %8023 = fmul fast float %5801, %5801
  %8024 = fmul fast float %8023, %8022
  %8025 = fadd fast float %8024, %8021
  %8026 = bitcast float %8025 to i32
  %8027 = ashr i32 %8026, 1
  %8028 = add nsw i32 %8027, 532487669
  %8029 = bitcast i32 %8028 to float
  %8030 = fadd fast float %8029, %5801
  %8031 = fmul fast float %8021, %8017
  %8032 = fsub fast float 1.000000e+00, %8017
  %8033 = fadd fast float %8032, %8031
  %8034 = fmul fast float %8018, %8018
  %8035 = fmul fast float %8034, %8022
  %8036 = fadd fast float %8035, %8021
  %8037 = bitcast float %8036 to i32
  %8038 = ashr i32 %8037, 1
  %8039 = add nsw i32 %8038, 532487669
  %8040 = bitcast i32 %8039 to float
  %8041 = fadd fast float %8040, %8018
  %8042 = fmul fast float %8033, %8033
  %8043 = fmul fast float %8042, %8030
  %8044 = fmul fast float %8043, %8041
  %8045 = fdiv fast float 1.000000e+00, %8044
  %8046 = bitcast float %8021 to i32
  %8047 = sitofp i32 %8046 to float
  %8048 = fmul fast float %8047, 0x3FE7F73180000000
  %8049 = fadd fast float %8048, 0x41AFE27C40000000
  %8050 = fptosi float %8049 to i32
  %8051 = bitcast i32 %8050 to float
  %8052 = fmul fast float %7686, 0x3FD80E9D60000000
  %8053 = fmul fast float %8052, %8004
  %8054 = fadd fast float %8051, %8053
  %8055 = bitcast float %8054 to i32
  %8056 = sub nsw i32 2129859010, %8055
  %8057 = bitcast i32 %8056 to float
  %8058 = fmul fast float %8021, %8045
  %8059 = fmul fast float %8058, %8051
  %8060 = fmul fast float %8059, %8057
  %8061 = fmul fast float %6049, 0x3FF9999980000000
  %8062 = fsub fast float 5.000000e+00, %8061
  %8063 = call float @dx.op.unary.f32(i32 6, float %7994)  ; FAbs(value)
  %8064 = fsub fast float 1.000000e+00, %8063
  %8065 = fmul fast float %6049, 0x41D9660740000000
  %8066 = fadd fast float %8065, 0xC1EFBF8940000000
  %8067 = bitcast float %8064 to i32
  %8068 = sitofp i32 %8067 to float
  %8069 = fmul fast float %8068, %8062
  %8070 = fadd fast float %8066, %8069
  %8071 = fptosi float %8070 to i32
  %8072 = bitcast i32 %8071 to float
  %8073 = fsub fast float 1.000000e+00, %5753
  %8074 = fsub fast float 1.000000e+00, %5754
  %8075 = fsub fast float 1.000000e+00, %5799
  %8076 = fmul fast float %8072, %8073
  %8077 = fmul fast float %8072, %8074
  %8078 = fmul fast float %8072, %8075
  %8079 = fadd fast float %8076, %5753
  %8080 = fadd fast float %8077, %5754
  %8081 = fadd fast float %8078, %5799
  br i1 %6072, label %8082, label %8105

; <label>:8082                                    ; preds = %7965
  %8083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %8063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8084 = extractvalue %dx.types.ResRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.ResRet.f32 %8083, 1
  %8086 = extractvalue %dx.types.ResRet.f32 %8083, 2
  %8087 = fadd fast float %8084, -5.000000e-01
  %8088 = fadd fast float %8085, -5.000000e-01
  %8089 = fadd fast float %8086, -5.000000e-01
  %8090 = fmul fast float %5753, 4.000000e+00
  %8091 = fmul fast float %8090, %8073
  %8092 = fmul fast float %8091, %8087
  %8093 = fmul fast float %5754, 4.000000e+00
  %8094 = fmul fast float %8093, %8074
  %8095 = fmul fast float %8094, %8088
  %8096 = fmul fast float %5799, 4.000000e+00
  %8097 = fmul fast float %8096, %8075
  %8098 = fmul fast float %8097, %8089
  %8099 = fadd fast float %8092, %8079
  %8100 = fadd fast float %8095, %8080
  %8101 = fadd fast float %8098, %8081
  %8102 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  %8103 = call float @dx.op.unary.f32(i32 7, float %8100)  ; Saturate(value)
  %8104 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  br label %8105

; <label>:8105                                    ; preds = %8082, %7965
  %8106 = phi float [ %8102, %8082 ], [ %8079, %7965 ]
  %8107 = phi float [ %8103, %8082 ], [ %8080, %7965 ]
  %8108 = phi float [ %8104, %8082 ], [ %8081, %7965 ]
  %8109 = fmul fast float %7993, 9.843750e-01
  %8110 = fadd fast float %8109, 7.812500e-03
  %8111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8110, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8112 = extractvalue %dx.types.ResRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.ResRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.ResRet.f32 %8111, 2
  %8115 = extractvalue %dx.types.ResRet.f32 %8111, 3
  %8116 = fsub fast float %8114, %8112
  %8117 = fsub fast float %8115, %8113
  %8118 = fmul fast float %8116, %6059
  %8119 = fmul fast float %8117, %6059
  %8120 = fadd fast float %8118, %8112
  %8121 = fadd fast float %8119, %8113
  %8122 = fmul fast float %8120, %5753
  %8123 = fmul fast float %8120, %5754
  %8124 = fmul fast float %8120, %5799
  %8125 = fadd fast float %8122, %8121
  %8126 = fadd fast float %8123, %8121
  %8127 = fadd fast float %8124, %8121
  br i1 %6072, label %8128, label %8151

; <label>:8128                                    ; preds = %8105
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = fadd fast float %8130, -5.000000e-01
  %8134 = fadd fast float %8131, -5.000000e-01
  %8135 = fadd fast float %8132, -5.000000e-01
  %8136 = fmul fast float %5753, 4.000000e+00
  %8137 = fmul fast float %8136, %8073
  %8138 = fmul fast float %8137, %8133
  %8139 = fmul fast float %5754, 4.000000e+00
  %8140 = fmul fast float %8139, %8074
  %8141 = fmul fast float %8140, %8134
  %8142 = fmul fast float %5799, 4.000000e+00
  %8143 = fmul fast float %8142, %8075
  %8144 = fmul fast float %8143, %8135
  %8145 = fadd fast float %8138, %8125
  %8146 = fadd fast float %8141, %8126
  %8147 = fadd fast float %8144, %8127
  %8148 = call float @dx.op.unary.f32(i32 7, float %8145)  ; Saturate(value)
  %8149 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8150 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  br label %8151

; <label>:8151                                    ; preds = %8128, %8105
  %8152 = phi float [ %8148, %8128 ], [ %8125, %8105 ]
  %8153 = phi float [ %8149, %8128 ], [ %8126, %8105 ]
  %8154 = phi float [ %8150, %8128 ], [ %8127, %8105 ]
  %8155 = call float @dx.op.binary.f32(i32 35, float %8153, float %8154)  ; FMax(a,b)
  %8156 = call float @dx.op.binary.f32(i32 35, float %8152, float %8155)  ; FMax(a,b)
  %8157 = fsub fast float 1.000000e+00, %8156
  %8158 = call float @dx.op.binary.f32(i32 35, float %8018, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8159 = fdiv fast float %4455, %8158
  %8160 = fmul fast float %6130, %8159
  %8161 = fmul fast float %6132, %8159
  %8162 = fmul fast float %6134, %8159
  %8163 = call float @dx.op.unary.f32(i32 21, float %8160)  ; Exp(value)
  %8164 = call float @dx.op.unary.f32(i32 21, float %8161)  ; Exp(value)
  %8165 = call float @dx.op.unary.f32(i32 21, float %8162)  ; Exp(value)
  %8166 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8167 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8168 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8169 = select i1 %6127, float %8166, float 0.000000e+00
  %8170 = select i1 %6128, float %8167, float 0.000000e+00
  %8171 = select i1 %6129, float %8168, float 0.000000e+00
  %8172 = fsub fast float -0.000000e+00, %5756
  %8173 = fsub fast float -0.000000e+00, %5757
  %8174 = fsub fast float -0.000000e+00, %5758
  %8175 = call float @dx.op.dot3.f32(i32 55, float %7724, float %7725, float %7726, float %8172, float %8173, float %8174)  ; Dot3(ax,ay,az,bx,by,bz)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8177 = fmul fast float %8176, %7731
  %8178 = fmul fast float %8176, 9.843750e-01
  %8179 = fadd fast float %8178, 7.812500e-03
  %8180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8179, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = extractvalue %dx.types.ResRet.f32 %8180, 3
  %8185 = fsub fast float %8183, %8181
  %8186 = fsub fast float %8184, %8182
  %8187 = fmul fast float %8185, %6059
  %8188 = fmul fast float %8186, %6059
  %8189 = fadd fast float %8187, %8181
  %8190 = fadd fast float %8188, %8182
  %8191 = fmul fast float %8189, %5753
  %8192 = fmul fast float %8189, %5754
  %8193 = fmul fast float %8189, %5799
  %8194 = fadd fast float %8191, %8190
  %8195 = fadd fast float %8192, %8190
  %8196 = fadd fast float %8193, %8190
  br i1 %6072, label %8197, label %8220

; <label>:8197                                    ; preds = %8151
  %8198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5118, float %8176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8199 = extractvalue %dx.types.ResRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.ResRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.ResRet.f32 %8198, 2
  %8202 = fadd fast float %8199, -5.000000e-01
  %8203 = fadd fast float %8200, -5.000000e-01
  %8204 = fadd fast float %8201, -5.000000e-01
  %8205 = fmul fast float %5753, 4.000000e+00
  %8206 = fmul fast float %8205, %8073
  %8207 = fmul fast float %8206, %8202
  %8208 = fmul fast float %5754, 4.000000e+00
  %8209 = fmul fast float %8208, %8074
  %8210 = fmul fast float %8209, %8203
  %8211 = fmul fast float %5799, 4.000000e+00
  %8212 = fmul fast float %8211, %8075
  %8213 = fmul fast float %8212, %8204
  %8214 = fadd fast float %8207, %8194
  %8215 = fadd fast float %8210, %8195
  %8216 = fadd fast float %8213, %8196
  %8217 = call float @dx.op.unary.f32(i32 7, float %8214)  ; Saturate(value)
  %8218 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8219 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  br label %8220

; <label>:8220                                    ; preds = %8197, %8151
  %8221 = phi float [ %8217, %8197 ], [ %8194, %8151 ]
  %8222 = phi float [ %8218, %8197 ], [ %8195, %8151 ]
  %8223 = phi float [ %8219, %8197 ], [ %8196, %8151 ]
  %8224 = call float @dx.op.binary.f32(i32 35, float %8222, float %8223)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 35, float %8221, float %8224)  ; FMax(a,b)
  %8226 = fsub fast float 1.000000e+00, %8225
  %8227 = fmul fast float %6189, %6195
  %8228 = fadd fast float %6188, %8227
  %8229 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8230 = fsub fast float %8005, %5807
  %8231 = fsub fast float %8006, %5808
  %8232 = fsub fast float %8007, %5809
  %8233 = call float @dx.op.dot3.f32(i32 55, float %8230, float %8231, float %8232, float %8230, float %8231, float %8232)  ; Dot3(ax,ay,az,bx,by,bz)
  %8234 = call float @dx.op.unary.f32(i32 25, float %8233)  ; Rsqrt(value)
  %8235 = fmul fast float %8230, %8234
  %8236 = fmul fast float %8231, %8234
  %8237 = fmul fast float %8232, %8234
  %8238 = call float @dx.op.dot3.f32(i32 55, float %8172, float %8173, float %8174, float %8235, float %8236, float %8237)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = fmul fast float %8238, %8238
  %8240 = call float @dx.op.unary.f32(i32 6, float %8176)  ; FAbs(value)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8229, float 0x3F847AE140000000)  ; FMax(a,b)
  %8242 = fmul fast float %8241, %8241
  %8243 = fmul fast float %8242, %8242
  %8244 = fsub fast float 1.000000e+00, %8243
  %8245 = fmul fast float %8023, %8244
  %8246 = fadd fast float %8245, %8243
  %8247 = bitcast float %8246 to i32
  %8248 = ashr i32 %8247, 1
  %8249 = add nsw i32 %8248, 532487669
  %8250 = bitcast i32 %8249 to float
  %8251 = fadd fast float %8250, %5801
  %8252 = fmul fast float %8243, %8239
  %8253 = fsub fast float 1.000000e+00, %8239
  %8254 = fadd fast float %8253, %8252
  %8255 = fmul fast float %8240, %8240
  %8256 = fmul fast float %8255, %8244
  %8257 = fadd fast float %8256, %8243
  %8258 = bitcast float %8257 to i32
  %8259 = ashr i32 %8258, 1
  %8260 = add nsw i32 %8259, 532487669
  %8261 = bitcast i32 %8260 to float
  %8262 = fadd fast float %8261, %8240
  %8263 = fmul fast float %8254, %8254
  %8264 = fmul fast float %8263, %8251
  %8265 = fmul fast float %8264, %8262
  %8266 = fdiv fast float 1.000000e+00, %8265
  %8267 = bitcast float %8243 to i32
  %8268 = sitofp i32 %8267 to float
  %8269 = fmul fast float %8268, 0x3FE7F73180000000
  %8270 = fadd fast float %8269, 0x41AFE27C40000000
  %8271 = fptosi float %8270 to i32
  %8272 = bitcast i32 %8271 to float
  %8273 = fadd fast float %8272, %8053
  %8274 = bitcast float %8273 to i32
  %8275 = sub nsw i32 2129859010, %8274
  %8276 = bitcast i32 %8275 to float
  %8277 = fmul fast float %8243, %8266
  %8278 = fmul fast float %8277, %8272
  %8279 = fmul fast float %8278, %8276
  br i1 %7716, label %8280, label %8290

; <label>:8280                                    ; preds = %8220
  %8281 = fmul fast float %8177, %8169
  %8282 = fmul fast float %8177, %8170
  %8283 = fmul fast float %8177, %8171
  %8284 = fmul fast float %8281, %8226
  %8285 = fmul fast float %8284, %8279
  %8286 = fmul fast float %8282, %8226
  %8287 = fmul fast float %8286, %8279
  %8288 = fmul fast float %8283, %8226
  %8289 = fmul fast float %8288, %8279
  br label %8290

; <label>:8290                                    ; preds = %8280, %8220
  %8291 = phi float [ %8285, %8280 ], [ 0.000000e+00, %8220 ]
  %8292 = phi float [ %8287, %8280 ], [ 0.000000e+00, %8220 ]
  %8293 = phi float [ %8289, %8280 ], [ 0.000000e+00, %8220 ]
  %8294 = fmul fast float %8106, %8060
  %8295 = fmul fast float %8107, %8060
  %8296 = fmul fast float %8108, %8060
  %8297 = fsub fast float 1.000000e+00, %7994
  %8298 = bitcast float %8297 to i32
  %8299 = sitofp i32 %8298 to float
  %8300 = fmul fast float %8299, 5.000000e+00
  %8301 = fadd fast float %8300, 0xC1EFBF8940000000
  %8302 = fptosi float %8301 to i32
  %8303 = bitcast i32 %8302 to float
  %8304 = fmul fast float %8303, %5119
  %8305 = fmul fast float %8157, %8304
  %8306 = fmul fast float %8305, %6122
  %8307 = fmul fast float %8305, %6123
  %8308 = fmul fast float %8305, %6124
  %8309 = fadd fast float %8306, %8294
  %8310 = fadd fast float %8307, %8295
  %8311 = fadd fast float %8308, %8296
  %8312 = fmul fast float %8309, %8000
  %8313 = fmul fast float %8310, %8000
  %8314 = fmul fast float %8311, %8000
  %8315 = fadd fast float %8312, %8291
  %8316 = fadd fast float %8313, %8292
  %8317 = fadd fast float %8314, %8293
  %8318 = fmul fast float %7982, %5144
  %8319 = fmul fast float %8318, %8000
  %8320 = fmul fast float %8319, %8157
  %8321 = fmul fast float %7983, %5144
  %8322 = fmul fast float %8321, %8000
  %8323 = fmul fast float %8322, %8157
  %8324 = fmul fast float %7984, %5144
  %8325 = fmul fast float %8324, %8000
  %8326 = fmul fast float %8325, %8157
  %8327 = fadd fast float %8320, %7660
  %8328 = fadd fast float %8323, %7661
  %8329 = fadd fast float %8326, %7662
  %8330 = fmul fast float %8318, %8315
  %8331 = fmul fast float %8321, %8316
  %8332 = fmul fast float %8324, %8317
  %8333 = fadd fast float %8330, %7657
  %8334 = fadd fast float %8331, %7658
  %8335 = fadd fast float %8332, %7659
  br label %7790

; <label>:8336                                    ; preds = %7790
  br label %8337

; <label>:8337                                    ; preds = %8336, %7623
  %8338 = phi float [ %7625, %7623 ], [ %7791, %8336 ]
  %8339 = phi float [ %7626, %7623 ], [ %7792, %8336 ]
  %8340 = phi float [ %7627, %7623 ], [ %7793, %8336 ]
  %8341 = phi float [ %7628, %7623 ], [ %7794, %8336 ]
  %8342 = phi float [ %7629, %7623 ], [ %7795, %8336 ]
  %8343 = phi float [ %7630, %7623 ], [ %7796, %8336 ]
  %8344 = add i32 %7624, 1
  %8345 = icmp ugt i32 %8344, %7620
  br i1 %8345, label %8346, label %7623

; <label>:8346                                    ; preds = %8337
  br label %8347

; <label>:8347                                    ; preds = %8346, %7573, %7563
  %8348 = phi float [ %7564, %7563 ], [ %7564, %7573 ], [ %8338, %8346 ]
  %8349 = phi float [ %7565, %7563 ], [ %7565, %7573 ], [ %8339, %8346 ]
  %8350 = phi float [ %7566, %7563 ], [ %7566, %7573 ], [ %8340, %8346 ]
  %8351 = phi float [ %7567, %7563 ], [ %7567, %7573 ], [ %8341, %8346 ]
  %8352 = phi float [ %7568, %7563 ], [ %7568, %7573 ], [ %8342, %8346 ]
  %8353 = phi float [ %7569, %7563 ], [ %7569, %7573 ], [ %8343, %8346 ]
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8356 = fmul fast float %8355, %6202
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8359 = fsub fast float 1.000000e+00, %5122
  %8360 = call float @dx.op.unary.f32(i32 7, float %8359)  ; Saturate(value)
  %8361 = fadd fast float %8353, %5121
  %8362 = fmul fast float %8361, %5122
  %8363 = fmul fast float %8360, %8358
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 3
  %8366 = fmul fast float %8351, %5759
  %8367 = fmul fast float %8352, %5760
  %8368 = fmul fast float %8353, %5761
  %8369 = fcmp fast ogt float %93, %211
  %8370 = and i1 %8369, %5576
  %8371 = or i1 %5582, %8370
  %8372 = icmp eq i32 %5575, 2
  %8373 = fcmp fast ole float %93, %211
  %8374 = and i1 %8373, %8372
  %8375 = or i1 %8374, %8371
  br i1 %8370, label %8376, label %8625

; <label>:8376                                    ; preds = %8347
  %8377 = fmul fast float %6282, %102
  %8378 = fmul fast float %6283, %103
  %8379 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8380 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8381 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8379, float %8380, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = extractvalue %dx.types.ResRet.f32 %8381, 3
  %8386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8379, float %8380, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8387 = extractvalue %dx.types.ResRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.ResRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.ResRet.f32 %8386, 2
  %8390 = extractvalue %dx.types.ResRet.f32 %8386, 3
  %8391 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 35, float %8382, float %8391)  ; FMax(a,b)
  %8393 = call float @dx.op.binary.f32(i32 35, float %8392, float %8385)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8388, float %8389)  ; FMin(a,b)
  %8395 = call float @dx.op.binary.f32(i32 36, float %8387, float %8394)  ; FMin(a,b)
  %8396 = call float @dx.op.binary.f32(i32 36, float %8395, float %8390)  ; FMin(a,b)
  %8397 = fmul fast float %8393, 2.550000e+02
  %8398 = fadd fast float %8397, 0x3F70101020000000
  %8399 = fptoui float %8398 to i32
  %8400 = fmul fast float %8396, 2.550000e+02
  %8401 = fadd fast float %8400, 0x3F70101020000000
  %8402 = fptoui float %8401 to i32
  %8403 = icmp ult i32 %8399, %8402
  br i1 %8403, label %8404, label %8570

; <label>:8404                                    ; preds = %8376
  %8405 = fcmp fast ogt float %92, 9.843750e-01
  %8406 = fadd fast float %93, -4.000000e+00
  %8407 = select i1 %8405, float -4.000000e+00, float %8406
  %8408 = call float @dx.op.binary.f32(i32 35, float %8407, float 0.000000e+00)  ; FMax(a,b)
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = fadd fast float %8410, %8408
  %8412 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8413 = fmul fast float %8411, %8412
  %8414 = call float @dx.op.unary.f32(i32 23, float %8413)  ; Log(value)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8409, 3
  %8416 = fmul fast float %8415, %8414
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 2
  %8419 = fmul fast float %8416, %8418
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = uitofp i32 %8399 to float
  %8422 = uitofp i32 %8402 to float
  %8423 = fadd fast float %8421, 5.000000e-01
  %8424 = fadd fast float %8422, 5.000000e-01
  %8425 = fmul fast float %8418, %8423
  %8426 = fmul fast float %8418, %8424
  %8427 = fadd fast float %8425, 0x3F0FFB4800000000
  %8428 = fadd fast float %8426, 0xBF0FFB4800000000
  %8429 = call float @dx.op.binary.f32(i32 35, float %8420, float %8427)  ; FMax(a,b)
  %8430 = call float @dx.op.binary.f32(i32 36, float %8429, float %8428)  ; FMin(a,b)
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 1
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8434 = extractvalue %dx.types.CBufRet.f32 %8431, 0
  %8435 = fmul fast float %8432, %8430
  %8436 = fadd fast float %8434, %8435
  %8437 = fadd fast float %8434, %8433
  %8438 = fsub fast float %8432, %8433
  %8439 = fadd fast float %8438, %8434
  %8440 = call float @dx.op.binary.f32(i32 35, float %8436, float %8437)  ; FMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8440, float %8439)  ; FMin(a,b)
  %8442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8379, float %8380, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8443 = extractvalue %dx.types.ResRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.ResRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.ResRet.f32 %8442, 2
  %8446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.i32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.i32 %8446, 1
  %8449 = uitofp i32 %8447 to float
  %8450 = uitofp i32 %8448 to float
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = fmul fast float %8449, %8379
  %8455 = fmul fast float %8450, %8380
  %8456 = fadd fast float %8454, -5.000000e-01
  %8457 = fadd fast float %8455, -5.000000e-01
  %8458 = call float @dx.op.unary.f32(i32 22, float %8456)  ; Frc(value)
  %8459 = call float @dx.op.unary.f32(i32 22, float %8457)  ; Frc(value)
  %8460 = fmul fast float %8458, %8458
  %8461 = fmul fast float %8460, %8458
  %8462 = fsub fast float 3.000000e+00, %8458
  %8463 = fmul fast float %8460, %8462
  %8464 = fmul fast float %8458, 3.000000e+00
  %8465 = fmul fast float %8461, 3.000000e+00
  %8466 = fmul fast float %8460, 6.000000e+00
  %8467 = fsub fast float %8465, %8466
  %8468 = fadd fast float %8467, 4.000000e+00
  %8469 = fmul fast float %8468, 0x3FC5555560000000
  %8470 = fmul fast float %8461, -3.000000e+00
  %8471 = fadd fast float %8460, %8458
  %8472 = fmul fast float %8471, 3.000000e+00
  %8473 = fadd fast float %8470, 1.000000e+00
  %8474 = fadd fast float %8473, %8472
  %8475 = fmul fast float %8461, 0x3FC5555560000000
  %8476 = fmul fast float %8459, %8459
  %8477 = fmul fast float %8476, %8459
  %8478 = fsub fast float 3.000000e+00, %8459
  %8479 = fmul fast float %8476, %8478
  %8480 = fmul fast float %8459, 3.000000e+00
  %8481 = fmul fast float %8477, 3.000000e+00
  %8482 = fmul fast float %8476, 6.000000e+00
  %8483 = fsub fast float %8481, %8482
  %8484 = fadd fast float %8483, 4.000000e+00
  %8485 = fmul fast float %8484, 0x3FC5555560000000
  %8486 = fmul fast float %8477, -3.000000e+00
  %8487 = fadd fast float %8476, %8459
  %8488 = fmul fast float %8487, 3.000000e+00
  %8489 = fadd fast float %8486, 1.000000e+00
  %8490 = fadd fast float %8489, %8488
  %8491 = fmul fast float %8477, 0x3FC5555560000000
  %8492 = fadd fast float %8458, 1.000000e+00
  %8493 = fsub fast float 1.000000e+00, %8464
  %8494 = fadd fast float %8493, %8463
  %8495 = fadd fast float %8494, %8468
  %8496 = fmul fast float %8495, 0x3FC5555560000000
  %8497 = fdiv fast float %8469, %8496
  %8498 = fsub fast float %8492, %8497
  %8499 = fsub fast float 1.000000e+00, %8458
  %8500 = fadd fast float %8474, %8461
  %8501 = fmul fast float %8500, 0x3FC5555560000000
  %8502 = fdiv fast float %8475, %8501
  %8503 = fadd fast float %8499, %8502
  %8504 = fadd fast float %8459, 1.000000e+00
  %8505 = fsub fast float 1.000000e+00, %8480
  %8506 = fadd fast float %8505, %8479
  %8507 = fadd fast float %8506, %8484
  %8508 = fmul fast float %8507, 0x3FC5555560000000
  %8509 = fdiv fast float %8485, %8508
  %8510 = fsub fast float %8504, %8509
  %8511 = fsub fast float 1.000000e+00, %8459
  %8512 = fadd fast float %8490, %8477
  %8513 = fmul fast float %8512, 0x3FC5555560000000
  %8514 = fdiv fast float %8491, %8513
  %8515 = fadd fast float %8514, %8511
  %8516 = fmul fast float %8498, %8452
  %8517 = fsub fast float %8379, %8516
  %8518 = fmul fast float %8503, %8452
  %8519 = fadd fast float %8518, %8379
  %8520 = fmul fast float %8515, %8453
  %8521 = fadd fast float %8520, %8380
  %8522 = fmul fast float %8510, %8453
  %8523 = fsub fast float %8380, %8522
  %8524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8517, float %8523, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8525 = extractvalue %dx.types.ResRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.ResRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.ResRet.f32 %8524, 2
  %8528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8519, float %8523, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8529 = extractvalue %dx.types.ResRet.f32 %8528, 0
  %8530 = extractvalue %dx.types.ResRet.f32 %8528, 1
  %8531 = extractvalue %dx.types.ResRet.f32 %8528, 2
  %8532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8517, float %8521, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8533 = extractvalue %dx.types.ResRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.ResRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.ResRet.f32 %8532, 2
  %8536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8519, float %8521, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = fsub fast float %8533, %8525
  %8541 = fsub fast float %8534, %8526
  %8542 = fsub fast float %8535, %8527
  %8543 = fmul fast float %8540, %8513
  %8544 = fmul fast float %8541, %8513
  %8545 = fmul fast float %8542, %8513
  %8546 = fadd fast float %8543, %8525
  %8547 = fadd fast float %8544, %8526
  %8548 = fadd fast float %8545, %8527
  %8549 = fsub fast float %8537, %8529
  %8550 = fsub fast float %8538, %8530
  %8551 = fsub fast float %8539, %8531
  %8552 = fmul fast float %8549, %8513
  %8553 = fmul fast float %8550, %8513
  %8554 = fmul fast float %8551, %8513
  %8555 = fsub fast float %8529, %8546
  %8556 = fadd fast float %8555, %8552
  %8557 = fsub fast float %8530, %8547
  %8558 = fadd fast float %8557, %8553
  %8559 = fsub fast float %8531, %8548
  %8560 = fadd fast float %8559, %8554
  %8561 = fmul fast float %8556, %8501
  %8562 = fmul fast float %8558, %8501
  %8563 = fmul fast float %8560, %8501
  %8564 = fadd fast float %8561, %8546
  %8565 = fadd fast float %8562, %8547
  %8566 = fadd fast float %8563, %8548
  %8567 = fmul fast float %8564, %6337
  %8568 = fmul fast float %8565, %6337
  %8569 = fmul fast float %8566, %6337
  br label %8570

; <label>:8570                                    ; preds = %8404, %8376
  %8571 = phi float [ %8443, %8404 ], [ 1.000000e+00, %8376 ]
  %8572 = phi float [ %8444, %8404 ], [ 1.000000e+00, %8376 ]
  %8573 = phi float [ %8445, %8404 ], [ 1.000000e+00, %8376 ]
  %8574 = phi float [ %8567, %8404 ], [ 0.000000e+00, %8376 ]
  %8575 = phi float [ %8568, %8404 ], [ 0.000000e+00, %8376 ]
  %8576 = phi float [ %8569, %8404 ], [ 0.000000e+00, %8376 ]
  %8577 = call float @dx.op.dot3.f32(i32 55, float %8571, float %8572, float %8573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8578 = call float @dx.op.dot3.f32(i32 55, float %8574, float %8575, float %8576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8579 = select i1 %251, float %8577, float %8571
  %8580 = select i1 %251, float %8577, float %8572
  %8581 = select i1 %251, float 1.000000e+00, float %8573
  %8582 = select i1 %251, float %8578, float %8574
  %8583 = select i1 %251, float 0.000000e+00, float %8575
  %8584 = select i1 %251, float 0.000000e+00, float %8576
  %8585 = fmul fast float %8579, %8366
  %8586 = fmul fast float %8580, %8367
  %8587 = fmul fast float %8581, %8368
  %8588 = fadd fast float %8585, %8582
  %8589 = fadd fast float %8586, %8583
  %8590 = fadd fast float %8584, %8587
  %8591 = fmul fast float %8579, %8348
  %8592 = fmul fast float %8580, %8349
  %8593 = fmul fast float %8581, %8350
  %8594 = fmul fast float %127, %6282
  %8595 = fmul fast float %129, %6283
  %8596 = fsub fast float 1.000000e+00, %8594
  %8597 = fsub fast float 1.000000e+00, %8595
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %8602 = fmul fast float %8596, %8599
  %8603 = fmul fast float %8596, %8600
  %8604 = fmul fast float %8596, %8601
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.CBufRet.f32 %8605, 1
  %8608 = extractvalue %dx.types.CBufRet.f32 %8605, 2
  %8609 = fmul fast float %8597, %8606
  %8610 = fmul fast float %8597, %8607
  %8611 = fmul fast float %8597, %8608
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8616 = fadd fast float %8609, %8613
  %8617 = fadd fast float %8616, %8602
  %8618 = fadd fast float %8610, %8614
  %8619 = fadd fast float %8618, %8603
  %8620 = fadd fast float %8611, %8615
  %8621 = fadd fast float %8620, %8604
  %8622 = fmul fast float %8617, %211
  %8623 = fmul fast float %8619, %211
  %8624 = fmul fast float %8621, %211
  br label %8625

; <label>:8625                                    ; preds = %8570, %8347
  %8626 = phi float [ %8622, %8570 ], [ %157, %8347 ]
  %8627 = phi float [ %8623, %8570 ], [ %158, %8347 ]
  %8628 = phi float [ %8624, %8570 ], [ %159, %8347 ]
  %8629 = phi float [ %211, %8570 ], [ %93, %8347 ]
  %8630 = phi float [ %8588, %8570 ], [ %8366, %8347 ]
  %8631 = phi float [ %8589, %8570 ], [ %8367, %8347 ]
  %8632 = phi float [ %8590, %8570 ], [ %8368, %8347 ]
  %8633 = phi float [ %8591, %8570 ], [ %8348, %8347 ]
  %8634 = phi float [ %8592, %8570 ], [ %8349, %8347 ]
  %8635 = phi float [ %8593, %8570 ], [ %8350, %8347 ]
  %8636 = phi float [ %8571, %8570 ], [ 1.000000e+00, %8347 ]
  br i1 %8375, label %9778, label %8637

; <label>:8637                                    ; preds = %8625
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8642 = extractvalue %dx.types.CBufRet.f32 %8638, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8647 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8653, 3
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 3
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 3
  %8662 = extractvalue %dx.types.CBufRet.f32 %8660, 0
  %8663 = extractvalue %dx.types.CBufRet.f32 %8660, 1
  %8664 = extractvalue %dx.types.CBufRet.f32 %8660, 2
  %8665 = fcmp fast olt float %8664, -5.000000e-01
  %8666 = call float @dx.op.dot3.f32(i32 55, float %8626, float %8627, float %8628, float %8626, float %8627, float %8628)  ; Dot3(ax,ay,az,bx,by,bz)
  %8667 = call float @dx.op.unary.f32(i32 25, float %8666)  ; Rsqrt(value)
  %8668 = fmul fast float %8667, %8666
  %8669 = fmul fast float %8667, %8626
  %8670 = fmul fast float %8667, %8627
  %8671 = fmul fast float %8667, %8628
  %8672 = fadd fast float %8668, %8642
  %8673 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float %8639, float %8640, float %8641)  ; Dot3(ax,ay,az,bx,by,bz)
  %8674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.i32 %8674, 1
  %8676 = and i32 %8675, 1
  %8677 = icmp ne i32 %8676, 0
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8680 = fcmp fast ogt float %8679, 0.000000e+00
  %8681 = and i1 %8677, %8680
  br i1 %8681, label %8682, label %9088, !dx.controlflow.hints !125

; <label>:8682                                    ; preds = %8637
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 3
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 2
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8689 = fsub fast float %8686, %8688
  %8690 = and i32 %8675, 2
  %8691 = extractvalue %dx.types.CBufRet.i32 %8674, 0
  %8692 = call i32 @dx.op.binary.i32(i32 40, i32 %8691, i32 3)  ; UMin(a,b)
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.CBufRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8697 = extractvalue %dx.types.CBufRet.f32 %8687, 1
  %8698 = fsub fast float %8694, %8696
  %8699 = fsub fast float %8695, %8697
  %8700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8701 = extractvalue %dx.types.CBufRet.f32 %8700, 0
  %8702 = fcmp fast ogt float %8701, 0.000000e+00
  %8703 = fsub fast float -0.000000e+00, %8698
  %8704 = fsub fast float -0.000000e+00, %8699
  %8705 = call float @dx.op.dot2.f32(i32 54, float %8669, float %8670, float %8669, float %8670)  ; Dot2(ax,ay,bx,by)
  %8706 = call float @dx.op.dot2.f32(i32 54, float %8669, float %8670, float %8703, float %8704)  ; Dot2(ax,ay,bx,by)
  %8707 = fmul fast float %8706, 2.000000e+00
  %8708 = call float @dx.op.dot2.f32(i32 54, float %8703, float %8704, float %8703, float %8704)  ; Dot2(ax,ay,bx,by)
  %8709 = fmul fast float %8701, %8701
  %8710 = fsub fast float %8708, %8709
  %8711 = fmul fast float %8707, %8707
  %8712 = fmul fast float %8705, 4.000000e+00
  %8713 = fmul fast float %8712, %8710
  %8714 = fsub fast float %8711, %8713
  %8715 = fcmp fast ogt float %8714, 0.000000e+00
  br i1 %8715, label %8716, label %8731

; <label>:8716                                    ; preds = %8682
  %8717 = fcmp fast ogt float %8707, 0.000000e+00
  %8718 = call float @dx.op.unary.f32(i32 24, float %8714)  ; Sqrt(value)
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = select i1 %8717, float %8718, float %8719
  %8721 = fadd fast float %8720, %8707
  %8722 = fmul float %8721, -5.000000e-01
  %8723 = fdiv fast float %8722, %8705
  %8724 = call float @dx.op.binary.f32(i32 35, float %8723, float 0.000000e+00)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8668, float %8724)  ; FMin(a,b)
  %8726 = fdiv fast float %8710, %8722
  %8727 = call float @dx.op.binary.f32(i32 35, float %8726, float 0.000000e+00)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8668, float %8727)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8725, float %8728)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8725, float %8728)  ; FMax(a,b)
  br label %8731

; <label>:8731                                    ; preds = %8716, %8682
  %8732 = phi float [ %8730, %8716 ], [ -1.000000e+00, %8682 ]
  %8733 = phi float [ %8729, %8716 ], [ -1.000000e+00, %8682 ]
  %8734 = phi i1 [ true, %8716 ], [ false, %8682 ]
  %8735 = and i1 %8702, %8734
  br i1 %8735, label %8736, label %8738

; <label>:8736                                    ; preds = %8731
  %8737 = fcmp fast oeq float %8733, %8732
  br i1 %8737, label %9041, label %8739

; <label>:8738                                    ; preds = %8731
  br i1 %8702, label %9041, label %8739

; <label>:8739                                    ; preds = %8738, %8736
  %8740 = phi float [ %8668, %8738 ], [ %8732, %8736 ]
  %8741 = phi float [ 0.000000e+00, %8738 ], [ %8733, %8736 ]
  %8742 = icmp ne i32 %8690, 0
  %8743 = fmul fast float %8740, %8671
  %8744 = fadd fast float %8743, %8684
  %8745 = fmul fast float %8744, %8740
  %8746 = select i1 %8742, float 0.000000e+00, float %8745
  %8747 = fcmp fast oeq float %8671, 0.000000e+00
  %8748 = fdiv fast float %8689, %8671
  %8749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8748)  ; FMax(a,b)
  %8750 = select i1 %8747, float %8740, float %8749
  %8751 = call float @dx.op.binary.f32(i32 36, float %8740, float %8750)  ; FMin(a,b)
  %8752 = fcmp fast ogt float %8671, 0.000000e+00
  %8753 = fcmp fast olt float %8689, 0.000000e+00
  br i1 %8752, label %8754, label %8811

; <label>:8754                                    ; preds = %8739
  %8755 = icmp eq i32 %8690, 0
  br i1 %8753, label %8756, label %8800

; <label>:8756                                    ; preds = %8754
  %8757 = select i1 %8755, float %8740, float 0.000000e+00
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = call float @dx.op.unary.f32(i32 6, float %8758)  ; FAbs(value)
  %8760 = fmul fast float %8757, %8671
  %8761 = fadd fast float %8760, %8684
  %8762 = fmul fast float %8759, %8761
  %8763 = fsub fast float %8746, %8762
  %8764 = fsub fast float %8740, %8759
  %8765 = select i1 %8755, float %8764, float 0.000000e+00
  %8766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8767 = extractvalue %dx.types.CBufRet.f32 %8766, 0
  %8768 = extractvalue %dx.types.CBufRet.f32 %8766, 1
  %8769 = extractvalue %dx.types.CBufRet.f32 %8766, 2
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8774 = extractvalue %dx.types.CBufRet.f32 %8770, 3
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 3
  %8777 = call float @dx.op.binary.f32(i32 36, float %8763, float %8776)  ; FMin(a,b)
  %8778 = fmul fast float %8774, %8765
  %8779 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8780 = fsub fast float %8771, %8767
  %8781 = fsub fast float %8772, %8768
  %8782 = fsub fast float %8773, %8769
  %8783 = fmul fast float %8779, %8780
  %8784 = fmul fast float %8779, %8781
  %8785 = fmul fast float %8779, %8782
  %8786 = fadd fast float %8783, %8767
  %8787 = fadd fast float %8784, %8768
  %8788 = fadd fast float %8785, %8769
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.CBufRet.f32 %8789, 1
  %8792 = fadd fast float %8791, %8790
  %8793 = call float @dx.op.unary.f32(i32 7, float %8792)  ; Saturate(value)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8789, 2
  %8795 = extractvalue %dx.types.CBufRet.f32 %8789, 3
  %8796 = fadd fast float %8795, %8794
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = fmul fast float %8793, %8777
  %8799 = fmul fast float %8798, %8797
  br label %9041

; <label>:8800                                    ; preds = %8754
  br i1 %8755, label %8801, label %8822

; <label>:8801                                    ; preds = %8800
  %8802 = call float @dx.op.binary.f32(i32 36, float %8751, float %8741)  ; FMin(a,b)
  %8803 = fsub fast float %8751, %8802
  %8804 = fsub fast float %8803, %8740
  %8805 = call float @dx.op.unary.f32(i32 6, float %8804)  ; FAbs(value)
  %8806 = fadd fast float %8803, %8740
  %8807 = fmul fast float %8806, %8671
  %8808 = fadd fast float %8807, %8684
  %8809 = fmul fast float %8808, %8805
  %8810 = fsub fast float %8746, %8809
  br label %8822

; <label>:8811                                    ; preds = %8739
  br i1 %8753, label %8812, label %8822

; <label>:8812                                    ; preds = %8811
  %8813 = call float @dx.op.binary.f32(i32 35, float %8741, float %8751)  ; FMax(a,b)
  %8814 = icmp eq i32 %8690, 0
  %8815 = select i1 %8814, float %8751, float 0.000000e+00
  %8816 = fsub fast float -0.000000e+00, %8815
  %8817 = call float @dx.op.unary.f32(i32 6, float %8816)  ; FAbs(value)
  %8818 = fmul fast float %8815, %8671
  %8819 = fadd fast float %8818, %8684
  %8820 = fmul fast float %8817, %8819
  %8821 = fsub fast float %8746, %8820
  br label %8822

; <label>:8822                                    ; preds = %8812, %8811, %8801, %8800
  %8823 = phi float [ %8741, %8800 ], [ %8741, %8801 ], [ %8813, %8812 ], [ %8741, %8811 ]
  %8824 = phi float [ 0.000000e+00, %8800 ], [ %8805, %8801 ], [ %8817, %8812 ], [ 0.000000e+00, %8811 ]
  %8825 = phi float [ %8746, %8800 ], [ %8810, %8801 ], [ %8821, %8812 ], [ %8746, %8811 ]
  %8826 = phi float [ %8751, %8800 ], [ %8751, %8801 ], [ %8740, %8812 ], [ %8740, %8811 ]
  %8827 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8827, align 4, !tbaa !126, !noalias !128
  %8828 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8828, align 4, !tbaa !126, !noalias !128
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8829, align 4, !tbaa !126, !noalias !128
  %8830 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8830, align 4, !tbaa !126, !noalias !128
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8831, align 4, !tbaa !126, !noalias !128
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8832, align 4, !tbaa !126, !noalias !128
  %8833 = icmp sgt i32 %8692, 0
  br i1 %8833, label %8834, label %8895

; <label>:8834                                    ; preds = %8822
  br label %8835

; <label>:8835                                    ; preds = %8884, %8834
  %8836 = phi i32 [ %8885, %8884 ], [ 0, %8834 ]
  %8837 = phi i32 [ %8886, %8884 ], [ 0, %8834 ]
  %8838 = add nuw i32 %8837, 171
  %8839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8838)  ; CBufferLoadLegacy(handle,regIndex)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8839, 0
  %8841 = extractvalue %dx.types.CBufRet.f32 %8839, 1
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = fsub fast float %8840, %8843
  %8846 = fsub fast float %8841, %8844
  %8847 = extractvalue %dx.types.CBufRet.f32 %8839, 2
  %8848 = fsub fast float -0.000000e+00, %8845
  %8849 = fsub fast float -0.000000e+00, %8846
  %8850 = call float @dx.op.dot2.f32(i32 54, float %8669, float %8670, float %8848, float %8849)  ; Dot2(ax,ay,bx,by)
  %8851 = fmul fast float %8850, 2.000000e+00
  %8852 = call float @dx.op.dot2.f32(i32 54, float %8848, float %8849, float %8848, float %8849)  ; Dot2(ax,ay,bx,by)
  %8853 = fmul fast float %8847, %8847
  %8854 = fsub fast float %8852, %8853
  %8855 = fmul fast float %8851, %8851
  %8856 = fmul fast float %8712, %8854
  %8857 = fsub fast float %8855, %8856
  %8858 = fcmp fast ogt float %8857, 0.000000e+00
  br i1 %8858, label %8859, label %8874

; <label>:8859                                    ; preds = %8835
  %8860 = fcmp fast ogt float %8851, 0.000000e+00
  %8861 = call float @dx.op.unary.f32(i32 24, float %8857)  ; Sqrt(value)
  %8862 = fsub fast float -0.000000e+00, %8861
  %8863 = select i1 %8860, float %8861, float %8862
  %8864 = fadd fast float %8863, %8851
  %8865 = fmul float %8864, -5.000000e-01
  %8866 = fdiv fast float %8865, %8705
  %8867 = call float @dx.op.binary.f32(i32 35, float %8866, float 0.000000e+00)  ; FMax(a,b)
  %8868 = call float @dx.op.binary.f32(i32 36, float %8740, float %8867)  ; FMin(a,b)
  %8869 = fdiv fast float %8854, %8865
  %8870 = call float @dx.op.binary.f32(i32 35, float %8869, float 0.000000e+00)  ; FMax(a,b)
  %8871 = call float @dx.op.binary.f32(i32 36, float %8740, float %8870)  ; FMin(a,b)
  %8872 = call float @dx.op.binary.f32(i32 36, float %8868, float %8871)  ; FMin(a,b)
  %8873 = call float @dx.op.binary.f32(i32 35, float %8868, float %8871)  ; FMax(a,b)
  br label %8874

; <label>:8874                                    ; preds = %8859, %8835
  %8875 = phi float [ %8873, %8859 ], [ -1.000000e+00, %8835 ]
  %8876 = phi float [ %8872, %8859 ], [ -1.000000e+00, %8835 ]
  %8877 = phi i1 [ true, %8859 ], [ false, %8835 ]
  br i1 %8877, label %8878, label %8884

; <label>:8878                                    ; preds = %8874
  %8879 = call float @dx.op.binary.f32(i32 35, float %8823, float %8876)  ; FMax(a,b)
  %8880 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8837
  store float %8879, float* %8880, align 4, !tbaa !126, !noalias !128
  %8881 = call float @dx.op.binary.f32(i32 35, float %8823, float %8875)  ; FMax(a,b)
  %8882 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8837
  store float %8881, float* %8882, align 4, !tbaa !126, !noalias !128
  %8883 = add nsw i32 %8836, 1
  br label %8884

; <label>:8884                                    ; preds = %8878, %8874
  %8885 = phi i32 [ %8883, %8878 ], [ %8836, %8874 ]
  %8886 = add nuw nsw i32 %8837, 1
  %8887 = icmp eq i32 %8886, %8692
  br i1 %8887, label %8888, label %8835

; <label>:8888                                    ; preds = %8884
  %8889 = load float, float* %8829, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8890 = load float, float* %8828, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8891 = load float, float* %8827, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8892 = load float, float* %8832, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8893 = load float, float* %8831, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8894 = load float, float* %8830, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8895

; <label>:8895                                    ; preds = %8888, %8822
  %8896 = phi float [ -1.000000e+00, %8822 ], [ %8894, %8888 ]
  %8897 = phi float [ -1.000000e+00, %8822 ], [ %8893, %8888 ]
  %8898 = phi float [ -1.000000e+00, %8822 ], [ %8892, %8888 ]
  %8899 = phi float [ -1.000000e+00, %8822 ], [ %8891, %8888 ]
  %8900 = phi float [ -1.000000e+00, %8822 ], [ %8890, %8888 ]
  %8901 = phi float [ -1.000000e+00, %8822 ], [ %8889, %8888 ]
  %8902 = phi i32 [ 0, %8822 ], [ %8885, %8888 ]
  %8903 = call float @dx.op.binary.f32(i32 36, float %8900, float %8901)  ; FMin(a,b)
  %8904 = call float @dx.op.binary.f32(i32 36, float %8899, float %8903)  ; FMin(a,b)
  %8905 = call float @dx.op.binary.f32(i32 35, float %8899, float %8900)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 36, float %8905, float %8901)  ; FMin(a,b)
  %8907 = call float @dx.op.binary.f32(i32 36, float %8899, float %8900)  ; FMin(a,b)
  %8908 = call float @dx.op.binary.f32(i32 35, float %8907, float %8906)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8900, float %8901)  ; FMax(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8899, float %8909)  ; FMax(a,b)
  store float %8904, float* %8827, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8908, float* %8828, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8910, float* %8829, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8911 = call float @dx.op.binary.f32(i32 36, float %8897, float %8898)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8896, float %8911)  ; FMin(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8896, float %8897)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 36, float %8913, float %8898)  ; FMin(a,b)
  %8915 = call float @dx.op.binary.f32(i32 36, float %8896, float %8897)  ; FMin(a,b)
  %8916 = call float @dx.op.binary.f32(i32 35, float %8915, float %8914)  ; FMax(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float %8897, float %8898)  ; FMax(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8896, float %8917)  ; FMax(a,b)
  store float %8912, float* %8830, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8916, float* %8831, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8918, float* %8832, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8919 = sub nsw i32 3, %8902
  %8920 = icmp sgt i32 %8919, 2
  br i1 %8920, label %8921, label %8959

; <label>:8921                                    ; preds = %8895
  %8922 = icmp eq i32 %8690, 0
  %8923 = fsub fast float %8740, %8824
  %8924 = select i1 %8922, float %8923, float %8824
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8927 = extractvalue %dx.types.CBufRet.f32 %8925, 1
  %8928 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %8931 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8932 = extractvalue %dx.types.CBufRet.f32 %8929, 2
  %8933 = extractvalue %dx.types.CBufRet.f32 %8929, 3
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 3
  %8936 = call float @dx.op.binary.f32(i32 36, float %8825, float %8935)  ; FMin(a,b)
  %8937 = fmul fast float %8933, %8924
  %8938 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8939 = fsub fast float %8930, %8926
  %8940 = fsub fast float %8931, %8927
  %8941 = fsub fast float %8932, %8928
  %8942 = fmul fast float %8938, %8939
  %8943 = fmul fast float %8938, %8940
  %8944 = fmul fast float %8938, %8941
  %8945 = fadd fast float %8942, %8926
  %8946 = fadd fast float %8943, %8927
  %8947 = fadd fast float %8944, %8928
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.CBufRet.f32 %8948, 1
  %8951 = fadd fast float %8950, %8949
  %8952 = call float @dx.op.unary.f32(i32 7, float %8951)  ; Saturate(value)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8948, 2
  %8954 = extractvalue %dx.types.CBufRet.f32 %8948, 3
  %8955 = fadd fast float %8954, %8953
  %8956 = call float @dx.op.unary.f32(i32 7, float %8955)  ; Saturate(value)
  %8957 = fmul fast float %8952, %8936
  %8958 = fmul fast float %8957, %8956
  br label %9041

; <label>:8959                                    ; preds = %8895
  %8960 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8919
  %8961 = load float, float* %8960, align 4, !tbaa !126, !noalias !128
  %8962 = fcmp fast olt float %8961, %8826
  %8963 = icmp sgt i32 %8902, 0
  %8964 = and i1 %8963, %8962
  br i1 %8964, label %8965, label %9002

; <label>:8965                                    ; preds = %8959
  br label %8966

; <label>:8966                                    ; preds = %8995, %8965
  %8967 = phi float [ %8996, %8995 ], [ %8824, %8965 ]
  %8968 = phi float [ %8997, %8995 ], [ %8825, %8965 ]
  %8969 = phi float [ %8977, %8995 ], [ %8961, %8965 ]
  %8970 = phi i32 [ %8974, %8995 ], [ %8919, %8965 ]
  %8971 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8970
  %8972 = load float, float* %8971, align 4, !tbaa !126, !noalias !128
  %8973 = icmp slt i32 %8970, 2
  %8974 = add nsw i32 %8970, 1
  %8975 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8974
  %8976 = load float, float* %8975, align 4, !tbaa !126, !noalias !128
  %8977 = select i1 %8973, float %8976, float %8740
  %8978 = call float @dx.op.binary.f32(i32 36, float %8977, float %8972)  ; FMin(a,b)
  %8979 = call float @dx.op.binary.f32(i32 36, float %8826, float %8978)  ; FMin(a,b)
  %8980 = icmp eq i32 %8690, 0
  %8981 = fadd fast float %8979, %8969
  %8982 = fmul fast float %8981, %8671
  %8983 = fadd fast float %8982, %8684
  br i1 %8980, label %8989, label %8984

; <label>:8984                                    ; preds = %8966
  %8985 = fsub fast float %8979, %8969
  %8986 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8985)  ; FMax(a,b)
  %8987 = fmul fast float %8986, %8983
  %8988 = fadd fast float %8987, %8968
  br label %8995

; <label>:8989                                    ; preds = %8966
  %8990 = fsub fast float %8969, %8979
  %8991 = call float @dx.op.unary.f32(i32 6, float %8990)  ; FAbs(value)
  %8992 = fadd fast float %8991, %8967
  %8993 = fmul fast float %8991, %8983
  %8994 = fsub fast float %8968, %8993
  br label %8995

; <label>:8995                                    ; preds = %8989, %8984
  %8996 = phi float [ %8986, %8984 ], [ %8992, %8989 ]
  %8997 = phi float [ %8988, %8984 ], [ %8994, %8989 ]
  %8998 = fcmp fast olt float %8977, %8826
  %8999 = icmp slt i32 %8974, 3
  %9000 = and i1 %8999, %8998
  br i1 %9000, label %8966, label %9001

; <label>:9001                                    ; preds = %8995
  br label %9002

; <label>:9002                                    ; preds = %9001, %8959
  %9003 = phi float [ %8824, %8959 ], [ %8996, %9001 ]
  %9004 = phi float [ %8825, %8959 ], [ %8997, %9001 ]
  %9005 = fsub fast float %8740, %9003
  %9006 = select i1 %8742, float %9003, float %9005
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 0
  %9009 = extractvalue %dx.types.CBufRet.f32 %9007, 1
  %9010 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 0
  %9013 = extractvalue %dx.types.CBufRet.f32 %9011, 1
  %9014 = extractvalue %dx.types.CBufRet.f32 %9011, 2
  %9015 = extractvalue %dx.types.CBufRet.f32 %9011, 3
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9018 = call float @dx.op.binary.f32(i32 36, float %9004, float %9017)  ; FMin(a,b)
  %9019 = fmul fast float %9015, %9006
  %9020 = call float @dx.op.unary.f32(i32 7, float %9019)  ; Saturate(value)
  %9021 = fsub fast float %9012, %9008
  %9022 = fsub fast float %9013, %9009
  %9023 = fsub fast float %9014, %9010
  %9024 = fmul fast float %9020, %9021
  %9025 = fmul fast float %9020, %9022
  %9026 = fmul fast float %9020, %9023
  %9027 = fadd fast float %9024, %9008
  %9028 = fadd fast float %9025, %9009
  %9029 = fadd fast float %9026, %9010
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 0
  %9032 = extractvalue %dx.types.CBufRet.f32 %9030, 1
  %9033 = fadd fast float %9032, %9031
  %9034 = call float @dx.op.unary.f32(i32 7, float %9033)  ; Saturate(value)
  %9035 = extractvalue %dx.types.CBufRet.f32 %9030, 2
  %9036 = extractvalue %dx.types.CBufRet.f32 %9030, 3
  %9037 = fadd fast float %9036, %9035
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = fmul fast float %9034, %9018
  %9040 = fmul fast float %9039, %9038
  br label %9041

; <label>:9041                                    ; preds = %9002, %8921, %8756, %8738, %8736
  %9042 = phi float [ %8765, %8756 ], [ %8924, %8921 ], [ %9006, %9002 ], [ 0.000000e+00, %8736 ], [ 0.000000e+00, %8738 ]
  %9043 = phi float [ %8799, %8756 ], [ %8958, %8921 ], [ %9040, %9002 ], [ 0.000000e+00, %8736 ], [ 0.000000e+00, %8738 ]
  %9044 = phi float [ %8786, %8756 ], [ %8945, %8921 ], [ %9027, %9002 ], [ 0.000000e+00, %8736 ], [ 0.000000e+00, %8738 ]
  %9045 = phi float [ %8787, %8756 ], [ %8946, %8921 ], [ %9028, %9002 ], [ 0.000000e+00, %8736 ], [ 0.000000e+00, %8738 ]
  %9046 = phi float [ %8788, %8756 ], [ %8947, %8921 ], [ %9029, %9002 ], [ 0.000000e+00, %8736 ], [ 0.000000e+00, %8738 ]
  %9047 = fmul fast float %8679, %9043
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 2
  %9050 = fsub fast float %8686, %9049
  %9051 = fcmp fast olt float %9047, -2.000000e+01
  %9052 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 3
  %9056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9057 = extractvalue %dx.types.CBufRet.f32 %9056, 2
  %9058 = fmul fast float %9055, %9050
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = fsub fast float 1.000000e+00, %9059
  %9061 = fmul fast float %8671, 5.000000e-01
  %9062 = fadd fast float %9061, 5.000000e-01
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fsub fast float 1.000000e+00, %9063
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9060)  ; FMax(a,b)
  %9066 = fdiv fast float %9064, %9065
  %9067 = fsub fast float %9050, %8628
  %9068 = call float @dx.op.unary.f32(i32 6, float %9067)  ; FAbs(value)
  %9069 = fmul fast float %9068, %9054
  %9070 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9071 = fsub fast float 1.000000e+00, %9069
  %9072 = fmul fast float %9071, %9070
  %9073 = fadd fast float %9072, %9069
  %9074 = fmul fast float %9057, %9050
  %9075 = call float @dx.op.unary.f32(i32 7, float %9074)  ; Saturate(value)
  %9076 = fsub fast float 1.000000e+00, %9073
  %9077 = fmul fast float %9076, %9075
  %9078 = fadd fast float %9077, %9073
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = fadd fast float %9052, -1.000000e+00
  %9081 = select i1 %9051, float -1.000000e+00, float %9080
  %9082 = fmul fast float %9079, %9081
  %9083 = fadd fast float %9082, 1.000000e+00
  %9084 = fsub fast float -0.000000e+00, %9082
  %9085 = fmul fast float %9044, %9084
  %9086 = fmul fast float %9045, %9084
  %9087 = fmul fast float %9046, %9084
  br label %9088

; <label>:9088                                    ; preds = %9041, %8637
  %9089 = phi float [ %9042, %9041 ], [ 0.000000e+00, %8637 ]
  %9090 = phi float [ %9083, %9041 ], [ 1.000000e+00, %8637 ]
  %9091 = phi float [ %9085, %9041 ], [ 0.000000e+00, %8637 ]
  %9092 = phi float [ %9086, %9041 ], [ 0.000000e+00, %8637 ]
  %9093 = phi float [ %9087, %9041 ], [ 0.000000e+00, %8637 ]
  %9094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9095 = extractvalue %dx.types.CBufRet.f32 %9094, 1
  %9096 = fsub fast float 1.000000e+00, %9090
  %9097 = fmul fast float %9096, %8672
  %9098 = fmul fast float %9097, %9095
  %9099 = fsub fast float %8672, %9098
  br i1 %8665, label %9100, label %9129, !dx.controlflow.hints !164

; <label>:9100                                    ; preds = %9088
  %9101 = fmul fast float %8673, %8662
  %9102 = fadd fast float %9101, %8663
  %9103 = call float @dx.op.unary.f32(i32 7, float %9102)  ; Saturate(value)
  %9104 = fmul fast float %8644, %9099
  %9105 = fsub fast float -0.000000e+00, %9104
  %9106 = fmul fast float %8645, %9099
  %9107 = fsub fast float -0.000000e+00, %9106
  %9108 = call float @dx.op.unary.f32(i32 21, float %9105)  ; Exp(value)
  %9109 = call float @dx.op.unary.f32(i32 21, float %9107)  ; Exp(value)
  %9110 = call float @dx.op.binary.f32(i32 35, float %8652, float %9108)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %8652, float %9109)  ; FMax(a,b)
  %9112 = fsub fast float %9111, %9110
  %9113 = fmul fast float %9112, %9103
  %9114 = fadd fast float %9113, %9110
  %9115 = call float @dx.op.unary.f32(i32 7, float %9114)  ; Saturate(value)
  %9116 = fsub fast float %8649, %8654
  %9117 = fsub fast float %8650, %8655
  %9118 = fsub fast float %8651, %8656
  %9119 = fmul fast float %9103, %9116
  %9120 = fmul fast float %9103, %9117
  %9121 = fmul fast float %9103, %9118
  %9122 = fadd fast float %9119, %8654
  %9123 = fadd fast float %9120, %8655
  %9124 = fadd fast float %9121, %8656
  %9125 = fsub fast float 1.000000e+00, %9115
  %9126 = fmul fast float %9125, %9122
  %9127 = fmul fast float %9125, %9123
  %9128 = fmul fast float %9125, %9124
  br label %9188

; <label>:9129                                    ; preds = %9088
  %9130 = fmul fast float %9099, %8661
  %9131 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  %9132 = fsub fast float 2.000000e+00, %9131
  %9133 = fmul fast float %9131, 9.921875e-01
  %9134 = fmul fast float %9133, %9132
  %9135 = fadd fast float %9134, 3.906250e-03
  %9136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9135, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9137 = extractvalue %dx.types.ResRet.f32 %9136, 0
  %9138 = fsub fast float %9131, %9137
  %9139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9138)  ; FMax(a,b)
  %9140 = fmul fast float %8647, %8628
  %9141 = call float @dx.op.unary.f32(i32 6, float %9140)  ; FAbs(value)
  %9142 = fcmp fast ogt float %9141, 0x3EB0C6F7A0000000
  br i1 %9142, label %9143, label %9149, !dx.controlflow.hints !165

; <label>:9143                                    ; preds = %9129
  %9144 = fmul fast float %9140, 0xBFF7154760000000
  %9145 = call float @dx.op.unary.f32(i32 21, float %9144)  ; Exp(value)
  %9146 = fsub fast float 1.000000e+00, %9145
  %9147 = fdiv fast float %9146, %9140
  %9148 = fmul fast float %9147, %8657
  br label %9149

; <label>:9149                                    ; preds = %9143, %9129
  %9150 = phi float [ %9148, %9143 ], [ %8657, %9129 ]
  %9151 = fadd fast float %9150, %8659
  %9152 = fmul fast float %9151, %9139
  %9153 = fmul fast float %8644, %9152
  %9154 = fsub fast float -0.000000e+00, %9153
  %9155 = fmul fast float %8645, %9152
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = fmul fast float %8646, %9152
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9160 = call float @dx.op.unary.f32(i32 21, float %9156)  ; Exp(value)
  %9161 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9162 = fmul fast float %8673, %8673
  %9163 = fadd fast float %9162, 1.000000e+00
  %9164 = fmul fast float %9163, 0x3FAE8EC8A0000000
  %9165 = fmul fast float %9164, %8654
  %9166 = fmul fast float %9164, %8655
  %9167 = fmul fast float %9164, %8656
  %9168 = fmul fast float %8673, %8652
  %9169 = fsub fast float 1.000000e+00, %9168
  %9170 = fmul fast float %8652, %8652
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %9171, 0x3FB45F3060000000
  %9173 = fmul fast float %9169, %9169
  %9174 = fdiv fast float 1.000000e+00, %9173
  %9175 = fmul fast float %9172, %9174
  %9176 = fmul fast float %9175, %8649
  %9177 = fmul fast float %9175, %8650
  %9178 = fmul fast float %9175, %8651
  %9179 = fadd fast float %9176, %9165
  %9180 = fadd fast float %9177, %9166
  %9181 = fadd fast float %9178, %9167
  %9182 = fsub fast float 1.000000e+00, %9159
  %9183 = fsub fast float 1.000000e+00, %9160
  %9184 = fsub fast float 1.000000e+00, %9161
  %9185 = fmul fast float %9179, %9182
  %9186 = fmul fast float %9180, %9183
  %9187 = fmul fast float %9181, %9184
  br label %9188

; <label>:9188                                    ; preds = %9149, %9100
  %9189 = phi float [ %9126, %9100 ], [ %9185, %9149 ]
  %9190 = phi float [ %9127, %9100 ], [ %9186, %9149 ]
  %9191 = phi float [ %9128, %9100 ], [ %9187, %9149 ]
  %9192 = phi float [ %9115, %9100 ], [ %9159, %9149 ]
  %9193 = phi float [ %9115, %9100 ], [ %9160, %9149 ]
  %9194 = phi float [ %9115, %9100 ], [ %9161, %9149 ]
  br i1 %8681, label %9195, label %9393, !dx.controlflow.hints !166

; <label>:9195                                    ; preds = %9188
  %9196 = extractvalue %dx.types.CBufRet.f32 %9094, 0
  %9197 = fmul fast float %9196, %9096
  %9198 = fsub fast float %9091, %9189
  %9199 = fsub fast float %9092, %9190
  %9200 = fsub fast float %9093, %9191
  %9201 = fmul fast float %9197, %9198
  %9202 = fmul fast float %9197, %9199
  %9203 = fmul fast float %9197, %9200
  %9204 = fadd fast float %9201, %9189
  %9205 = fadd fast float %9202, %9190
  %9206 = fadd fast float %9203, %9191
  %9207 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9192)  ; FMax(a,b)
  %9208 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9193)  ; FMax(a,b)
  %9209 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9194)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9090)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 35, float %9089, float %9099)  ; FMax(a,b)
  %9212 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9211)  ; FMax(a,b)
  %9213 = fdiv fast float %9089, %9212
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fdiv fast float %9099, %9212
  %9216 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9217 = fcmp fast une float %9210, 1.000000e+00
  br i1 %9217, label %9218, label %9231, !dx.controlflow.hints !167

; <label>:9218                                    ; preds = %9195
  %9219 = call float @dx.op.unary.f32(i32 23, float %9210)  ; Log(value)
  %9220 = fmul fast float %9219, 0x3FE62E4300000000
  %9221 = fmul fast float %9091, %9220
  %9222 = fsub fast float -0.000000e+00, %9221
  %9223 = fmul fast float %9092, %9220
  %9224 = fsub fast float -0.000000e+00, %9223
  %9225 = fmul fast float %9093, %9220
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = fsub fast float 1.000000e+00, %9210
  %9228 = fdiv fast float %9222, %9227
  %9229 = fdiv fast float %9224, %9227
  %9230 = fdiv fast float %9226, %9227
  br label %9231

; <label>:9231                                    ; preds = %9218, %9195
  %9232 = phi float [ %9228, %9218 ], [ %9091, %9195 ]
  %9233 = phi float [ %9229, %9218 ], [ %9092, %9195 ]
  %9234 = phi float [ %9230, %9218 ], [ %9093, %9195 ]
  %9235 = phi float [ %9220, %9218 ], [ 0.000000e+00, %9195 ]
  %9236 = fcmp fast une float %9207, 1.000000e+00
  br i1 %9236, label %9237, label %9244, !dx.controlflow.hints !168

; <label>:9237                                    ; preds = %9231
  %9238 = call float @dx.op.unary.f32(i32 23, float %9207)  ; Log(value)
  %9239 = fmul fast float %9238, 0x3FE62E4300000000
  %9240 = fmul fast float %9204, %9239
  %9241 = fsub fast float -0.000000e+00, %9240
  %9242 = fsub fast float 1.000000e+00, %9207
  %9243 = fdiv fast float %9241, %9242
  br label %9244

; <label>:9244                                    ; preds = %9237, %9231
  %9245 = phi float [ %9243, %9237 ], [ %9204, %9231 ]
  %9246 = phi float [ %9239, %9237 ], [ 0.000000e+00, %9231 ]
  %9247 = fcmp fast une float %9208, 1.000000e+00
  br i1 %9247, label %9248, label %9255, !dx.controlflow.hints !168

; <label>:9248                                    ; preds = %9244
  %9249 = call float @dx.op.unary.f32(i32 23, float %9208)  ; Log(value)
  %9250 = fmul fast float %9249, 0x3FE62E4300000000
  %9251 = fmul fast float %9205, %9250
  %9252 = fsub fast float -0.000000e+00, %9251
  %9253 = fsub fast float 1.000000e+00, %9208
  %9254 = fdiv fast float %9252, %9253
  br label %9255

; <label>:9255                                    ; preds = %9248, %9244
  %9256 = phi float [ %9254, %9248 ], [ %9205, %9244 ]
  %9257 = phi float [ %9250, %9248 ], [ 0.000000e+00, %9244 ]
  %9258 = fcmp fast une float %9209, 1.000000e+00
  br i1 %9258, label %9259, label %9266, !dx.controlflow.hints !168

; <label>:9259                                    ; preds = %9255
  %9260 = call float @dx.op.unary.f32(i32 23, float %9209)  ; Log(value)
  %9261 = fmul fast float %9260, 0x3FE62E4300000000
  %9262 = fmul fast float %9206, %9261
  %9263 = fsub fast float -0.000000e+00, %9262
  %9264 = fsub fast float 1.000000e+00, %9209
  %9265 = fdiv fast float %9263, %9264
  br label %9266

; <label>:9266                                    ; preds = %9259, %9255
  %9267 = phi float [ %9265, %9259 ], [ %9206, %9255 ]
  %9268 = phi float [ %9261, %9259 ], [ 0.000000e+00, %9255 ]
  %9269 = fmul fast float %9232, %9216
  %9270 = fmul fast float %9233, %9216
  %9271 = fmul fast float %9234, %9216
  %9272 = fmul fast float %9235, %9216
  %9273 = fmul fast float %9245, %9214
  %9274 = fmul fast float %9256, %9214
  %9275 = fmul fast float %9267, %9214
  %9276 = fmul fast float %9246, %9214
  %9277 = fmul fast float %9257, %9214
  %9278 = fmul fast float %9268, %9214
  %9279 = fadd fast float %9273, %9269
  %9280 = fadd fast float %9274, %9270
  %9281 = fadd fast float %9275, %9271
  %9282 = fadd fast float %9276, %9272
  %9283 = fadd fast float %9277, %9272
  %9284 = fadd fast float %9278, %9272
  %9285 = fcmp fast une float %9282, 0.000000e+00
  br i1 %9285, label %9286, label %9293, !dx.controlflow.hints !169

; <label>:9286                                    ; preds = %9266
  %9287 = fmul fast float %9282, 0x3FF7154760000000
  %9288 = call float @dx.op.unary.f32(i32 21, float %9287)  ; Exp(value)
  %9289 = fsub fast float 1.000000e+00, %9288
  %9290 = fmul fast float %9279, %9289
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = fdiv fast float %9291, %9282
  br label %9293

; <label>:9293                                    ; preds = %9286, %9266
  %9294 = phi float [ %9288, %9286 ], [ 1.000000e+00, %9266 ]
  %9295 = phi float [ %9292, %9286 ], [ %9279, %9266 ]
  %9296 = fcmp fast une float %9283, 0.000000e+00
  br i1 %9296, label %9297, label %9304, !dx.controlflow.hints !169

; <label>:9297                                    ; preds = %9293
  %9298 = fmul fast float %9283, 0x3FF7154760000000
  %9299 = call float @dx.op.unary.f32(i32 21, float %9298)  ; Exp(value)
  %9300 = fsub fast float 1.000000e+00, %9299
  %9301 = fmul fast float %9280, %9300
  %9302 = fsub fast float -0.000000e+00, %9301
  %9303 = fdiv fast float %9302, %9283
  br label %9304

; <label>:9304                                    ; preds = %9297, %9293
  %9305 = phi float [ %9299, %9297 ], [ 1.000000e+00, %9293 ]
  %9306 = phi float [ %9303, %9297 ], [ %9280, %9293 ]
  %9307 = fcmp fast une float %9284, 0.000000e+00
  br i1 %9307, label %9308, label %9315, !dx.controlflow.hints !169

; <label>:9308                                    ; preds = %9304
  %9309 = fmul fast float %9284, 0x3FF7154760000000
  %9310 = call float @dx.op.unary.f32(i32 21, float %9309)  ; Exp(value)
  %9311 = fsub fast float 1.000000e+00, %9310
  %9312 = fmul fast float %9281, %9311
  %9313 = fsub fast float -0.000000e+00, %9312
  %9314 = fdiv fast float %9313, %9284
  br label %9315

; <label>:9315                                    ; preds = %9308, %9304
  %9316 = phi float [ %9310, %9308 ], [ 1.000000e+00, %9304 ]
  %9317 = phi float [ %9314, %9308 ], [ %9281, %9304 ]
  %9318 = fcmp fast ogt float %9214, %9216
  br i1 %9318, label %9319, label %9339

; <label>:9319                                    ; preds = %9315
  %9320 = fsub fast float 1.000000e+00, %9216
  %9321 = fmul fast float %9232, %9320
  %9322 = fmul fast float %9233, %9320
  %9323 = fmul fast float %9234, %9320
  %9324 = fmul fast float %9235, %9320
  %9325 = fcmp fast une float %9324, 0.000000e+00
  br i1 %9325, label %9326, label %9377, !dx.controlflow.hints !170

; <label>:9326                                    ; preds = %9319
  %9327 = fmul fast float %9324, 0x3FF7154760000000
  %9328 = call float @dx.op.unary.f32(i32 21, float %9327)  ; Exp(value)
  %9329 = fsub fast float 1.000000e+00, %9328
  %9330 = fmul fast float %9321, %9329
  %9331 = fsub fast float -0.000000e+00, %9330
  %9332 = fmul fast float %9322, %9329
  %9333 = fsub fast float -0.000000e+00, %9332
  %9334 = fmul fast float %9323, %9329
  %9335 = fsub fast float -0.000000e+00, %9334
  %9336 = fdiv fast float %9331, %9324
  %9337 = fdiv fast float %9333, %9324
  %9338 = fdiv fast float %9335, %9324
  br label %9377

; <label>:9339                                    ; preds = %9315
  %9340 = fsub fast float 1.000000e+00, %9214
  %9341 = fmul fast float %9245, %9340
  %9342 = fmul fast float %9256, %9340
  %9343 = fmul fast float %9267, %9340
  %9344 = fmul fast float %9246, %9340
  %9345 = fmul fast float %9257, %9340
  %9346 = fmul fast float %9268, %9340
  %9347 = fcmp fast une float %9344, 0.000000e+00
  br i1 %9347, label %9348, label %9355, !dx.controlflow.hints !169

; <label>:9348                                    ; preds = %9339
  %9349 = fmul fast float %9344, 0x3FF7154760000000
  %9350 = call float @dx.op.unary.f32(i32 21, float %9349)  ; Exp(value)
  %9351 = fsub fast float 1.000000e+00, %9350
  %9352 = fmul fast float %9341, %9351
  %9353 = fsub fast float -0.000000e+00, %9352
  %9354 = fdiv fast float %9353, %9344
  br label %9355

; <label>:9355                                    ; preds = %9348, %9339
  %9356 = phi float [ %9354, %9348 ], [ %9341, %9339 ]
  %9357 = phi float [ %9350, %9348 ], [ 1.000000e+00, %9339 ]
  %9358 = fcmp fast une float %9345, 0.000000e+00
  br i1 %9358, label %9359, label %9366, !dx.controlflow.hints !169

; <label>:9359                                    ; preds = %9355
  %9360 = fmul fast float %9345, 0x3FF7154760000000
  %9361 = call float @dx.op.unary.f32(i32 21, float %9360)  ; Exp(value)
  %9362 = fsub fast float 1.000000e+00, %9361
  %9363 = fmul fast float %9342, %9362
  %9364 = fsub fast float -0.000000e+00, %9363
  %9365 = fdiv fast float %9364, %9345
  br label %9366

; <label>:9366                                    ; preds = %9359, %9355
  %9367 = phi float [ %9365, %9359 ], [ %9342, %9355 ]
  %9368 = phi float [ %9361, %9359 ], [ 1.000000e+00, %9355 ]
  %9369 = fcmp fast une float %9346, 0.000000e+00
  br i1 %9369, label %9370, label %9377, !dx.controlflow.hints !169

; <label>:9370                                    ; preds = %9366
  %9371 = fmul fast float %9346, 0x3FF7154760000000
  %9372 = call float @dx.op.unary.f32(i32 21, float %9371)  ; Exp(value)
  %9373 = fsub fast float 1.000000e+00, %9372
  %9374 = fmul fast float %9343, %9373
  %9375 = fsub fast float -0.000000e+00, %9374
  %9376 = fdiv fast float %9375, %9346
  br label %9377

; <label>:9377                                    ; preds = %9370, %9366, %9326, %9319
  %9378 = phi float [ %9376, %9370 ], [ %9338, %9326 ], [ %9323, %9319 ], [ %9343, %9366 ]
  %9379 = phi float [ %9367, %9370 ], [ %9337, %9326 ], [ %9322, %9319 ], [ %9367, %9366 ]
  %9380 = phi float [ %9356, %9370 ], [ %9336, %9326 ], [ %9321, %9319 ], [ %9356, %9366 ]
  %9381 = phi float [ %9372, %9370 ], [ %9328, %9326 ], [ 1.000000e+00, %9319 ], [ 1.000000e+00, %9366 ]
  %9382 = phi float [ %9368, %9370 ], [ %9328, %9326 ], [ 1.000000e+00, %9319 ], [ %9368, %9366 ]
  %9383 = phi float [ %9357, %9370 ], [ %9328, %9326 ], [ 1.000000e+00, %9319 ], [ %9357, %9366 ]
  %9384 = fmul fast float %9383, %9295
  %9385 = fmul fast float %9382, %9306
  %9386 = fmul fast float %9381, %9317
  %9387 = fadd fast float %9384, %9380
  %9388 = fadd fast float %9385, %9379
  %9389 = fadd fast float %9386, %9378
  %9390 = fmul fast float %9383, %9294
  %9391 = fmul fast float %9382, %9305
  %9392 = fmul fast float %9381, %9316
  br label %9393

; <label>:9393                                    ; preds = %9377, %9188
  %9394 = phi float [ %9392, %9377 ], [ %9194, %9188 ]
  %9395 = phi float [ %9391, %9377 ], [ %9193, %9188 ]
  %9396 = phi float [ %9390, %9377 ], [ %9192, %9188 ]
  %9397 = phi float [ %9389, %9377 ], [ %9191, %9188 ]
  %9398 = phi float [ %9388, %9377 ], [ %9190, %9188 ]
  %9399 = phi float [ %9387, %9377 ], [ %9189, %9188 ]
  %9400 = fmul fast float %9396, %8636
  %9401 = call float @dx.op.dot3.f32(i32 55, float %9396, float %9395, float %9394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9402 = call float @dx.op.dot3.f32(i32 55, float %9399, float %9398, float %9397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9403 = select i1 %251, float %9401, float %9396
  %9404 = select i1 %251, float %9401, float %9395
  %9405 = select i1 %251, float 1.000000e+00, float %9394
  %9406 = select i1 %251, float %9402, float %9399
  %9407 = select i1 %251, float 0.000000e+00, float %9398
  %9408 = select i1 %251, float 0.000000e+00, float %9397
  %9409 = fmul fast float %9403, %8630
  %9410 = fmul fast float %9404, %8631
  %9411 = fmul fast float %9405, %8632
  %9412 = fadd fast float %9409, %9406
  %9413 = fadd fast float %9410, %9407
  %9414 = fadd fast float %9408, %9411
  %9415 = fmul fast float %9403, %8633
  %9416 = fmul fast float %9404, %8634
  %9417 = fmul fast float %9405, %8635
  %9418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9419 = extractvalue %dx.types.CBufRet.i32 %9418, 0
  %9420 = icmp eq i32 %9419, 0
  br i1 %9420, label %9778, label %9421, !dx.controlflow.hints !171

; <label>:9421                                    ; preds = %9393
  %9422 = fmul fast float %6282, %102
  %9423 = fmul fast float %6283, %103
  %9424 = fmul fast float %9422, 2.000000e+00
  %9425 = fmul fast float %9423, 2.000000e+00
  %9426 = fsub fast float 1.000000e+00, %9424
  %9427 = fsub fast float 1.000000e+00, %9425
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 0
  %9430 = extractvalue %dx.types.CBufRet.f32 %9428, 1
  %9431 = extractvalue %dx.types.CBufRet.f32 %9428, 2
  %9432 = fmul fast float %9426, %9429
  %9433 = fmul fast float %9426, %9430
  %9434 = fmul fast float %9426, %9431
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9439 = fmul fast float %9427, %9436
  %9440 = fmul fast float %9427, %9437
  %9441 = fmul fast float %9427, %9438
  %9442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9443 = extractvalue %dx.types.CBufRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.CBufRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.CBufRet.f32 %9442, 2
  %9446 = fadd fast float %9439, %9443
  %9447 = fadd fast float %9446, %9432
  %9448 = fadd fast float %9440, %9444
  %9449 = fadd fast float %9448, %9433
  %9450 = fadd fast float %9441, %9445
  %9451 = fadd fast float %9450, %9434
  %9452 = fmul fast float %9447, %8629
  %9453 = fmul fast float %9449, %8629
  %9454 = fmul fast float %9451, %8629
  %9455 = fmul fast float %9452, %9452
  %9456 = fmul fast float %9453, %9453
  %9457 = fadd fast float %9455, %9456
  %9458 = fmul fast float %9454, %9454
  %9459 = fadd fast float %9457, %9458
  %9460 = call float @dx.op.unary.f32(i32 24, float %9459)  ; Sqrt(value)
  %9461 = extractvalue %dx.types.CBufRet.f32 %8364, 0
  %9462 = fsub fast float %9460, %9461
  %9463 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %9464 = fmul fast float %9462, %9463
  %9465 = call float @dx.op.unary.f32(i32 7, float %9464)  ; Saturate(value)
  %9466 = fadd fast float %9465, -5.000000e-01
  %9467 = fmul fast float %9466, 2.000000e+00
  %9468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9469 = extractvalue %dx.types.CBufRet.f32 %9468, 2
  %9470 = call float @dx.op.binary.f32(i32 36, float %9469, float %9467)  ; FMin(a,b)
  %9471 = fsub fast float -0.000000e+00, %9469
  %9472 = fcmp fast ogt float %9470, %9471
  br i1 %9472, label %9473, label %9778, !dx.controlflow.hints !172

; <label>:9473                                    ; preds = %9421
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 3
  %9476 = fcmp fast ogt float %9475, 0.000000e+00
  br i1 %9476, label %9477, label %9550, !dx.controlflow.hints !173

; <label>:9477                                    ; preds = %9473
  %9478 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9479 = extractvalue %dx.types.Dimensions %9478, 0
  %9480 = sitofp i32 %9479 to float
  %9481 = extractvalue %dx.types.Dimensions %9478, 1
  %9482 = sitofp i32 %9481 to float
  %9483 = fmul fast float %9422, %9480
  %9484 = fmul fast float %9423, %9482
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 1
  %9487 = fsub fast float -0.000000e+00, %9486
  %9488 = fptoui float %9487 to i32
  %9489 = fptoui float %9483 to i32
  %9490 = fptoui float %9484 to i32
  %9491 = and i32 %9488, 31
  %9492 = lshr i32 %9489, %9491
  %9493 = lshr i32 %9490, %9491
  %9494 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9488, i32 %9492, i32 %9493, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9495 = extractvalue %dx.types.ResRet.f32 %9494, 0
  %9496 = fcmp fast olt float %9495, -1.000000e+00
  %9497 = fcmp fast ogt float %9495, -1.000000e+00
  %9498 = select i1 %9497, float %6290, float 1.000000e+00
  %9499 = fadd fast float %9495, 1.000000e+00
  %9500 = fmul fast float %9498, %9499
  %9501 = call float @dx.op.unary.f32(i32 6, float %9500)  ; FAbs(value)
  %9502 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %9503 = fcmp fast oge float %9501, %9502
  %9504 = select i1 %9503, float 0x4197782600000000, float %9501
  %9505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9506 = extractvalue %dx.types.CBufRet.f32 %9505, 0
  %9507 = extractvalue %dx.types.CBufRet.f32 %9505, 1
  %9508 = extractvalue %dx.types.CBufRet.f32 %9505, 2
  %9509 = select i1 %9496, float %9506, float %9429
  %9510 = select i1 %9496, float %9507, float %9430
  %9511 = select i1 %9496, float %9508, float %9431
  %9512 = fmul fast float %9509, %9426
  %9513 = fmul fast float %9510, %9426
  %9514 = fmul fast float %9511, %9426
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9519 = select i1 %9496, float %9516, float %9436
  %9520 = select i1 %9496, float %9517, float %9437
  %9521 = select i1 %9496, float %9518, float %9438
  %9522 = fmul fast float %9519, %9427
  %9523 = fmul fast float %9520, %9427
  %9524 = fmul fast float %9521, %9427
  %9525 = fadd fast float %9522, %9512
  %9526 = fadd fast float %9523, %9513
  %9527 = fadd fast float %9524, %9514
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9532 = select i1 %9496, float %9529, float %9443
  %9533 = select i1 %9496, float %9530, float %9444
  %9534 = select i1 %9496, float %9531, float %9445
  %9535 = fadd fast float %9525, %9532
  %9536 = fadd fast float %9526, %9533
  %9537 = fadd fast float %9527, %9534
  %9538 = fmul fast float %9535, %9504
  %9539 = fmul fast float %9536, %9504
  %9540 = fmul fast float %9537, %9504
  %9541 = fmul fast float %9538, %9538
  %9542 = fmul fast float %9539, %9539
  %9543 = fadd fast float %9541, %9542
  %9544 = fmul fast float %9540, %9540
  %9545 = fadd fast float %9543, %9544
  %9546 = call float @dx.op.unary.f32(i32 24, float %9545)  ; Sqrt(value)
  %9547 = fsub fast float %9546, %9461
  %9548 = fmul fast float %9547, %9463
  %9549 = call float @dx.op.unary.f32(i32 7, float %9548)  ; Saturate(value)
  br label %9550

; <label>:9550                                    ; preds = %9477, %9473
  %9551 = phi float [ %9549, %9477 ], [ 1.000000e+00, %9473 ]
  %9552 = fmul fast float %9470, 5.000000e-01
  %9553 = fadd fast float %9552, 5.000000e-01
  %9554 = call float @dx.op.unary.f32(i32 22, float %9553)  ; Frc(value)
  %9555 = call float @dx.op.unary.f32(i32 27, float %9554)  ; Round_ni(value)
  %9556 = call float @dx.op.unary.f32(i32 22, float %9554)  ; Frc(value)
  %9557 = fmul fast float %9556, 2.000000e+00
  %9558 = fadd fast float %9557, -1.000000e+00
  %9559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9422, float %9423, float %9555, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9560 = extractvalue %dx.types.ResRet.f32 %9559, 0
  %9561 = extractvalue %dx.types.ResRet.f32 %9559, 1
  %9562 = extractvalue %dx.types.ResRet.f32 %9559, 2
  %9563 = extractvalue %dx.types.ResRet.f32 %9559, 3
  %9564 = fadd fast float %9560, -5.000000e-01
  %9565 = fadd fast float %9562, -5.000000e-01
  %9566 = fmul fast float %9564, 0xBFD5555560000000
  %9567 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9565, float %9566)  ; FMad(a,b,c)
  %9568 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9561, float 0.000000e+00)  ; FMad(a,b,c)
  %9569 = fadd fast float %9568, %9563
  %9570 = fmul fast float %9564, -7.500000e-01
  %9571 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9565, float %9570)  ; FMad(a,b,c)
  %9572 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9561, float 0.000000e+00)  ; FMad(a,b,c)
  %9573 = fadd fast float %9572, %9563
  %9574 = call float @dx.op.binary.f32(i32 35, float %9567, float -1.000000e+00)  ; FMax(a,b)
  %9575 = call float @dx.op.binary.f32(i32 35, float %9569, float -1.000000e+00)  ; FMax(a,b)
  %9576 = call float @dx.op.binary.f32(i32 35, float %9571, float -1.000000e+00)  ; FMax(a,b)
  %9577 = call float @dx.op.binary.f32(i32 35, float %9573, float -1.000000e+00)  ; FMax(a,b)
  %9578 = call float @dx.op.binary.f32(i32 36, float %9574, float 1.000000e+00)  ; FMin(a,b)
  %9579 = call float @dx.op.binary.f32(i32 36, float %9575, float 1.000000e+00)  ; FMin(a,b)
  %9580 = call float @dx.op.binary.f32(i32 36, float %9576, float 1.000000e+00)  ; FMin(a,b)
  %9581 = call float @dx.op.binary.f32(i32 36, float %9577, float 1.000000e+00)  ; FMin(a,b)
  %9582 = fcmp fast olt float %9578, 0x3FEFFF8020000000
  br i1 %9582, label %9583, label %9698, !dx.controlflow.hints !174

; <label>:9583                                    ; preds = %9550
  %9584 = extractvalue %dx.types.CBufRet.f32 %9468, 3
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9588 = extractvalue %dx.types.CBufRet.f32 %9585, 2
  %9589 = extractvalue %dx.types.CBufRet.f32 %9585, 3
  %9590 = fsub fast float %9586, %9578
  %9591 = fsub fast float %9587, %9579
  %9592 = fsub fast float %9588, %9580
  %9593 = fsub fast float %9589, %9581
  %9594 = fmul fast float %9590, %9584
  %9595 = fmul fast float %9591, %9584
  %9596 = fmul fast float %9592, %9584
  %9597 = fmul fast float %9593, %9584
  %9598 = fadd fast float %9594, %9578
  %9599 = fadd fast float %9595, %9579
  %9600 = fsub fast float -0.000000e+00, %9599
  %9601 = fadd fast float %9596, %9580
  %9602 = fadd fast float %9597, %9581
  %9603 = fmul fast float %9598, %9598
  %9604 = fsub fast float %9599, %9603
  %9605 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9604)  ; FMax(a,b)
  %9606 = fdiv fast float 1.000000e+00, %9605
  %9607 = fmul fast float %9599, %9598
  %9608 = fsub fast float %9601, %9607
  %9609 = fsub fast float %9558, %9598
  %9610 = fmul fast float %9558, %9558
  %9611 = fsub fast float %9610, %9599
  %9612 = fmul fast float %9609, %9606
  %9613 = fmul fast float %9612, %9608
  %9614 = fsub fast float %9611, %9613
  %9615 = fmul fast float %9599, %9599
  %9616 = fsub fast float %9602, %9615
  %9617 = fmul fast float %9608, %9608
  %9618 = fmul fast float %9617, %9606
  %9619 = fsub fast float %9616, %9618
  %9620 = fdiv fast float %9614, %9619
  %9621 = fmul fast float %9608, %9620
  %9622 = fsub fast float %9609, %9621
  %9623 = fmul fast float %9622, %9606
  %9624 = fmul fast float %9623, %9598
  %9625 = fsub fast float 1.000000e+00, %9624
  %9626 = fmul fast float %9599, %9620
  %9627 = fsub fast float %9625, %9626
  %9628 = fmul fast float %9623, %9623
  %9629 = fmul fast float %9620, 4.000000e+00
  %9630 = fmul fast float %9629, %9627
  %9631 = fsub fast float %9628, %9630
  %9632 = call float @dx.op.unary.f32(i32 24, float %9631)  ; Sqrt(value)
  %9633 = fcmp fast oge float %9623, 0.000000e+00
  %9634 = fsub fast float -0.000000e+00, %9632
  %9635 = select i1 %9633, float %9634, float %9632
  %9636 = fsub fast float %9635, %9623
  %9637 = fdiv fast float %9636, %9620
  %9638 = fdiv fast float %9627, %9636
  %9639 = fmul fast float %9637, 5.000000e-01
  %9640 = fmul fast float %9638, 2.000000e+00
  %9641 = select i1 %9633, float %9639, float %9640
  %9642 = select i1 %9633, float %9640, float %9639
  %9643 = call float @dx.op.binary.f32(i32 35, float %9641, float %9642)  ; FMax(a,b)
  %9644 = call float @dx.op.binary.f32(i32 36, float %9641, float %9642)  ; FMin(a,b)
  %9645 = fcmp fast ogt float %9558, %9644
  br i1 %9645, label %9646, label %9656

; <label>:9646                                    ; preds = %9583
  %9647 = fsub fast float %9558, %9644
  %9648 = fsub fast float %9643, %9644
  %9649 = fmul fast float %9647, %9648
  %9650 = fmul fast float %9643, %9558
  %9651 = fadd fast float %9643, %9558
  %9652 = fmul fast float %9651, %9598
  %9653 = fadd fast float %9650, %9599
  %9654 = fsub fast float %9653, %9652
  %9655 = fdiv fast float %9654, %9649
  br label %9656

; <label>:9656                                    ; preds = %9646, %9583
  %9657 = phi float [ %9655, %9646 ], [ 0.000000e+00, %9583 ]
  %9658 = fcmp fast ogt float %9558, %9643
  %9659 = fsub fast float %9558, %9643
  br i1 %9658, label %9660, label %9670

; <label>:9660                                    ; preds = %9656
  %9661 = fsub fast float %9643, %9644
  %9662 = fmul fast float %9661, %9659
  %9663 = fmul fast float %9644, %9558
  %9664 = fadd fast float %9644, %9558
  %9665 = fmul fast float %9664, %9598
  %9666 = fsub fast float %9600, %9663
  %9667 = fadd fast float %9666, %9665
  %9668 = fdiv fast float %9667, %9662
  %9669 = fadd fast float %9668, %9657
  br label %9670

; <label>:9670                                    ; preds = %9660, %9656
  %9671 = phi float [ %9669, %9660 ], [ %9657, %9656 ]
  %9672 = fsub fast float %9558, %9644
  %9673 = fmul fast float %9672, %9659
  %9674 = fmul fast float %9644, %9643
  %9675 = fadd fast float %9644, %9643
  %9676 = fmul fast float %9675, %9598
  %9677 = fadd fast float %9674, %9599
  %9678 = fsub fast float %9677, %9676
  %9679 = fdiv fast float %9678, %9673
  %9680 = call float @dx.op.unary.f32(i32 7, float %9671)  ; Saturate(value)
  %9681 = fcmp fast oeq float %8365, 0.000000e+00
  %9682 = extractvalue %dx.types.CBufRet.f32 %9468, 0
  %9683 = fcmp fast oeq float %9682, 0.000000e+00
  %9684 = or i1 %9681, %9683
  %9685 = fmul fast float %9682, 2.000000e+00
  %9686 = fadd fast float %9469, %9470
  %9687 = fdiv fast float %9686, %9685
  %9688 = call float @dx.op.unary.f32(i32 7, float %9687)  ; Saturate(value)
  %9689 = fmul fast float %9688, 2.000000e+00
  %9690 = fsub fast float 3.000000e+00, %9689
  %9691 = fmul fast float %9688, %9688
  %9692 = fmul fast float %9691, %9690
  %9693 = select i1 %9684, float 1.000000e+00, float %9692
  %9694 = fmul fast float %9679, %8365
  %9695 = fadd fast float %9680, %9694
  %9696 = call float @dx.op.unary.f32(i32 7, float %9695)  ; Saturate(value)
  %9697 = fmul fast float %9693, %9696
  br label %9698

; <label>:9698                                    ; preds = %9670, %9550
  %9699 = phi float [ %9697, %9670 ], [ 0.000000e+00, %9550 ]
  %9700 = fsub fast float 1.000000e+00, %9699
  %9701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9422, float %9423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9702 = extractvalue %dx.types.ResRet.f32 %9701, 0
  %9703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9704 = extractvalue %dx.types.CBufRet.i32 %9703, 2
  %9705 = icmp eq i32 %9704, 0
  br i1 %9705, label %9711, label %9706

; <label>:9706                                    ; preds = %9698
  %9707 = call float @dx.op.unary.f32(i32 7, float %9699)  ; Saturate(value)
  %9708 = fadd fast float %9702, -1.000000e+00
  %9709 = fmul fast float %9707, %9708
  %9710 = fadd fast float %9709, 1.000000e+00
  br label %9711

; <label>:9711                                    ; preds = %9706, %9698
  %9712 = phi float [ %9710, %9706 ], [ %9700, %9698 ]
  br i1 %9476, label %9713, label %9731

; <label>:9713                                    ; preds = %9711
  %9714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9715 = extractvalue %dx.types.CBufRet.f32 %9714, 1
  %9716 = fsub fast float %9551, %9715
  %9717 = call float @dx.op.unary.f32(i32 7, float %9716)  ; Saturate(value)
  %9718 = fsub fast float %9551, %9475
  %9719 = call float @dx.op.unary.f32(i32 7, float %9718)  ; Saturate(value)
  %9720 = fsub fast float %9717, %9719
  %9721 = fsub fast float %9553, %9719
  %9722 = fdiv fast float %9721, %9720
  %9723 = call float @dx.op.unary.f32(i32 7, float %9722)  ; Saturate(value)
  %9724 = fmul fast float %9723, 2.000000e+00
  %9725 = fsub fast float 3.000000e+00, %9724
  %9726 = fsub fast float %9702, %9712
  %9727 = fmul fast float %9723, %9723
  %9728 = fmul fast float %9727, %9726
  %9729 = fmul fast float %9728, %9725
  %9730 = fadd fast float %9729, %9712
  br label %9731

; <label>:9731                                    ; preds = %9713, %9711
  %9732 = phi float [ %9730, %9713 ], [ %9712, %9711 ]
  %9733 = call float @dx.op.binary.f32(i32 35, float %9702, float %9732)  ; FMax(a,b)
  %9734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.i32 %9734, 2
  %9736 = and i32 %9735, 1
  %9737 = icmp eq i32 %9736, 0
  %9738 = fcmp fast une float %9733, 1.000000e+00
  %9739 = and i1 %9738, %9737
  br i1 %9739, label %9740, label %9757

; <label>:9740                                    ; preds = %9731
  %9741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9422, float %9423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9742 = extractvalue %dx.types.ResRet.f32 %9741, 0
  %9743 = extractvalue %dx.types.ResRet.f32 %9741, 1
  %9744 = extractvalue %dx.types.ResRet.f32 %9741, 2
  %9745 = fmul fast float %6337, %9742
  %9746 = fmul fast float %6337, %9743
  %9747 = fmul fast float %6337, %9744
  %9748 = fcmp fast ogt float %9702, 0x3FEFFF2E40000000
  %9749 = fsub fast float 1.000000e+00, %9733
  %9750 = fsub fast float 1.000000e+00, %9702
  %9751 = fdiv fast float %9749, %9750
  %9752 = call float @dx.op.unary.f32(i32 7, float %9751)  ; Saturate(value)
  %9753 = select i1 %9748, float 0.000000e+00, float %9752
  %9754 = fmul fast float %9745, %9753
  %9755 = fmul fast float %9746, %9753
  %9756 = fmul fast float %9747, %9753
  br label %9757

; <label>:9757                                    ; preds = %9740, %9731
  %9758 = phi float [ 0.000000e+00, %9731 ], [ %9754, %9740 ]
  %9759 = phi float [ 0.000000e+00, %9731 ], [ %9755, %9740 ]
  %9760 = phi float [ 0.000000e+00, %9731 ], [ %9756, %9740 ]
  %9761 = fmul fast float %9733, %9400
  %9762 = call float @dx.op.dot3.f32(i32 55, float %9733, float %9733, float %9733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9763 = call float @dx.op.dot3.f32(i32 55, float %9758, float %9759, float %9760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9764 = select i1 %251, float %9762, float %9733
  %9765 = select i1 %251, float 1.000000e+00, float %9733
  %9766 = select i1 %251, float %9763, float %9758
  %9767 = select i1 %251, float 0.000000e+00, float %9759
  %9768 = select i1 %251, float 0.000000e+00, float %9760
  %9769 = fmul fast float %9764, %9412
  %9770 = fmul fast float %9764, %9413
  %9771 = fmul fast float %9765, %9414
  %9772 = fadd fast float %9769, %9766
  %9773 = fadd fast float %9770, %9767
  %9774 = fadd fast float %9768, %9771
  %9775 = fmul fast float %9764, %9415
  %9776 = fmul fast float %9764, %9416
  %9777 = fmul fast float %9765, %9417
  br label %9778

; <label>:9778                                    ; preds = %9757, %9421, %9393, %8625
  %9779 = phi float [ %8630, %8625 ], [ %9412, %9393 ], [ %9772, %9757 ], [ %9412, %9421 ]
  %9780 = phi float [ %8631, %8625 ], [ %9413, %9393 ], [ %9773, %9757 ], [ %9413, %9421 ]
  %9781 = phi float [ %8632, %8625 ], [ %9414, %9393 ], [ %9774, %9757 ], [ %9414, %9421 ]
  %9782 = phi float [ %8633, %8625 ], [ %9415, %9393 ], [ %9775, %9757 ], [ %9415, %9421 ]
  %9783 = phi float [ %8634, %8625 ], [ %9416, %9393 ], [ %9776, %9757 ], [ %9416, %9421 ]
  %9784 = phi float [ %8635, %8625 ], [ %9417, %9393 ], [ %9777, %9757 ], [ %9417, %9421 ]
  %9785 = phi float [ %8636, %8625 ], [ %9400, %9393 ], [ %9761, %9757 ], [ %9400, %9421 ]
  %9786 = fmul fast float %6282, %102
  %9787 = fmul fast float %6283, %103
  %9788 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9789 = call float @dx.op.unary.f32(i32 7, float %9787)  ; Saturate(value)
  %9790 = select i1 %8375, i32 2, i32 0
  %9791 = or i32 %9790, 1
  %9792 = uitofp i32 %9791 to float
  %9793 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9788, float %9789, float %9792, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9794 = extractvalue %dx.types.ResRet.f32 %9793, 0
  %9795 = extractvalue %dx.types.ResRet.f32 %9793, 1
  %9796 = extractvalue %dx.types.ResRet.f32 %9793, 2
  %9797 = extractvalue %dx.types.ResRet.f32 %9793, 3
  %9798 = add nuw nsw i32 %9790, 2
  %9799 = uitofp i32 %9798 to float
  %9800 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9788, float %9789, float %9799, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9801 = extractvalue %dx.types.ResRet.f32 %9800, 0
  %9802 = extractvalue %dx.types.ResRet.f32 %9800, 1
  %9803 = extractvalue %dx.types.ResRet.f32 %9800, 2
  %9804 = extractvalue %dx.types.ResRet.f32 %9800, 3
  %9805 = call float @dx.op.binary.f32(i32 35, float %9795, float %9796)  ; FMax(a,b)
  %9806 = call float @dx.op.binary.f32(i32 35, float %9794, float %9805)  ; FMax(a,b)
  %9807 = call float @dx.op.binary.f32(i32 35, float %9806, float %9797)  ; FMax(a,b)
  %9808 = call float @dx.op.binary.f32(i32 36, float %9802, float %9803)  ; FMin(a,b)
  %9809 = call float @dx.op.binary.f32(i32 36, float %9801, float %9808)  ; FMin(a,b)
  %9810 = call float @dx.op.binary.f32(i32 36, float %9809, float %9804)  ; FMin(a,b)
  %9811 = fmul fast float %9807, 2.550000e+02
  %9812 = fadd fast float %9811, 0x3F70101020000000
  %9813 = fptoui float %9812 to i32
  %9814 = fmul fast float %9810, 2.550000e+02
  %9815 = fadd fast float %9814, 0x3F70101020000000
  %9816 = fptoui float %9815 to i32
  %9817 = icmp ult i32 %9813, %9816
  br i1 %9817, label %9818, label %9985

; <label>:9818                                    ; preds = %9778
  %9819 = fcmp fast ogt float %92, 9.843750e-01
  %9820 = fadd fast float %8629, -4.000000e+00
  %9821 = select i1 %9819, float -4.000000e+00, float %9820
  %9822 = call float @dx.op.binary.f32(i32 35, float %9821, float 0.000000e+00)  ; FMax(a,b)
  %9823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9824 = extractvalue %dx.types.CBufRet.f32 %9823, 0
  %9825 = fadd fast float %9824, %9822
  %9826 = extractvalue %dx.types.CBufRet.f32 %9823, 2
  %9827 = fmul fast float %9825, %9826
  %9828 = call float @dx.op.unary.f32(i32 23, float %9827)  ; Log(value)
  %9829 = extractvalue %dx.types.CBufRet.f32 %9823, 3
  %9830 = fmul fast float %9829, %9828
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 2
  %9833 = fmul fast float %9830, %9832
  %9834 = call float @dx.op.unary.f32(i32 7, float %9833)  ; Saturate(value)
  %9835 = uitofp i32 %9813 to float
  %9836 = uitofp i32 %9816 to float
  %9837 = fadd fast float %9835, 5.000000e-01
  %9838 = fadd fast float %9836, 5.000000e-01
  %9839 = fmul fast float %9832, %9837
  %9840 = fmul fast float %9832, %9838
  %9841 = fadd fast float %9839, 0x3F0FFB4800000000
  %9842 = fadd fast float %9840, 0xBF0FFB4800000000
  %9843 = call float @dx.op.binary.f32(i32 35, float %9834, float %9841)  ; FMax(a,b)
  %9844 = call float @dx.op.binary.f32(i32 36, float %9843, float %9842)  ; FMin(a,b)
  %9845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9846 = extractvalue %dx.types.CBufRet.f32 %9845, 1
  %9847 = extractvalue %dx.types.CBufRet.f32 %9845, 2
  %9848 = extractvalue %dx.types.CBufRet.f32 %9845, 0
  %9849 = select i1 %8375, float %9848, float 0.000000e+00
  %9850 = fmul fast float %9846, %9844
  %9851 = fadd fast float %9849, %9850
  %9852 = fadd fast float %9849, %9847
  %9853 = fsub fast float %9846, %9847
  %9854 = fadd fast float %9853, %9849
  %9855 = call float @dx.op.binary.f32(i32 35, float %9851, float %9852)  ; FMax(a,b)
  %9856 = call float @dx.op.binary.f32(i32 36, float %9855, float %9854)  ; FMin(a,b)
  %9857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9788, float %9789, float %9856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9858 = extractvalue %dx.types.ResRet.f32 %9857, 0
  %9859 = extractvalue %dx.types.ResRet.f32 %9857, 1
  %9860 = extractvalue %dx.types.ResRet.f32 %9857, 2
  %9861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9862 = extractvalue %dx.types.CBufRet.i32 %9861, 0
  %9863 = extractvalue %dx.types.CBufRet.i32 %9861, 1
  %9864 = uitofp i32 %9862 to float
  %9865 = uitofp i32 %9863 to float
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 0
  %9868 = extractvalue %dx.types.CBufRet.f32 %9866, 1
  %9869 = fmul fast float %9864, %9788
  %9870 = fmul fast float %9865, %9789
  %9871 = fadd fast float %9869, -5.000000e-01
  %9872 = fadd fast float %9870, -5.000000e-01
  %9873 = call float @dx.op.unary.f32(i32 22, float %9871)  ; Frc(value)
  %9874 = call float @dx.op.unary.f32(i32 22, float %9872)  ; Frc(value)
  %9875 = fmul fast float %9873, %9873
  %9876 = fmul fast float %9875, %9873
  %9877 = fsub fast float 3.000000e+00, %9873
  %9878 = fmul fast float %9875, %9877
  %9879 = fmul fast float %9873, 3.000000e+00
  %9880 = fmul fast float %9876, 3.000000e+00
  %9881 = fmul fast float %9875, 6.000000e+00
  %9882 = fsub fast float %9880, %9881
  %9883 = fadd fast float %9882, 4.000000e+00
  %9884 = fmul fast float %9883, 0x3FC5555560000000
  %9885 = fmul fast float %9876, -3.000000e+00
  %9886 = fadd fast float %9875, %9873
  %9887 = fmul fast float %9886, 3.000000e+00
  %9888 = fadd fast float %9885, 1.000000e+00
  %9889 = fadd fast float %9888, %9887
  %9890 = fmul fast float %9876, 0x3FC5555560000000
  %9891 = fmul fast float %9874, %9874
  %9892 = fmul fast float %9891, %9874
  %9893 = fsub fast float 3.000000e+00, %9874
  %9894 = fmul fast float %9891, %9893
  %9895 = fmul fast float %9874, 3.000000e+00
  %9896 = fmul fast float %9892, 3.000000e+00
  %9897 = fmul fast float %9891, 6.000000e+00
  %9898 = fsub fast float %9896, %9897
  %9899 = fadd fast float %9898, 4.000000e+00
  %9900 = fmul fast float %9899, 0x3FC5555560000000
  %9901 = fmul fast float %9892, -3.000000e+00
  %9902 = fadd fast float %9891, %9874
  %9903 = fmul fast float %9902, 3.000000e+00
  %9904 = fadd fast float %9901, 1.000000e+00
  %9905 = fadd fast float %9904, %9903
  %9906 = fmul fast float %9892, 0x3FC5555560000000
  %9907 = fadd fast float %9873, 1.000000e+00
  %9908 = fsub fast float 1.000000e+00, %9879
  %9909 = fadd fast float %9908, %9878
  %9910 = fadd fast float %9909, %9883
  %9911 = fmul fast float %9910, 0x3FC5555560000000
  %9912 = fdiv fast float %9884, %9911
  %9913 = fsub fast float %9907, %9912
  %9914 = fsub fast float 1.000000e+00, %9873
  %9915 = fadd fast float %9889, %9876
  %9916 = fmul fast float %9915, 0x3FC5555560000000
  %9917 = fdiv fast float %9890, %9916
  %9918 = fadd fast float %9914, %9917
  %9919 = fadd fast float %9874, 1.000000e+00
  %9920 = fsub fast float 1.000000e+00, %9895
  %9921 = fadd fast float %9920, %9894
  %9922 = fadd fast float %9921, %9899
  %9923 = fmul fast float %9922, 0x3FC5555560000000
  %9924 = fdiv fast float %9900, %9923
  %9925 = fsub fast float %9919, %9924
  %9926 = fsub fast float 1.000000e+00, %9874
  %9927 = fadd fast float %9905, %9892
  %9928 = fmul fast float %9927, 0x3FC5555560000000
  %9929 = fdiv fast float %9906, %9928
  %9930 = fadd fast float %9929, %9926
  %9931 = fmul fast float %9913, %9867
  %9932 = fsub fast float %9788, %9931
  %9933 = fmul fast float %9918, %9867
  %9934 = fadd fast float %9933, %9788
  %9935 = fmul fast float %9930, %9868
  %9936 = fadd fast float %9935, %9789
  %9937 = fmul fast float %9925, %9868
  %9938 = fsub fast float %9789, %9937
  %9939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9932, float %9938, float %9856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9940 = extractvalue %dx.types.ResRet.f32 %9939, 0
  %9941 = extractvalue %dx.types.ResRet.f32 %9939, 1
  %9942 = extractvalue %dx.types.ResRet.f32 %9939, 2
  %9943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9934, float %9938, float %9856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9944 = extractvalue %dx.types.ResRet.f32 %9943, 0
  %9945 = extractvalue %dx.types.ResRet.f32 %9943, 1
  %9946 = extractvalue %dx.types.ResRet.f32 %9943, 2
  %9947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9932, float %9936, float %9856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9948 = extractvalue %dx.types.ResRet.f32 %9947, 0
  %9949 = extractvalue %dx.types.ResRet.f32 %9947, 1
  %9950 = extractvalue %dx.types.ResRet.f32 %9947, 2
  %9951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9934, float %9936, float %9856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9952 = extractvalue %dx.types.ResRet.f32 %9951, 0
  %9953 = extractvalue %dx.types.ResRet.f32 %9951, 1
  %9954 = extractvalue %dx.types.ResRet.f32 %9951, 2
  %9955 = fsub fast float %9948, %9940
  %9956 = fsub fast float %9949, %9941
  %9957 = fsub fast float %9950, %9942
  %9958 = fmul fast float %9955, %9928
  %9959 = fmul fast float %9956, %9928
  %9960 = fmul fast float %9957, %9928
  %9961 = fadd fast float %9958, %9940
  %9962 = fadd fast float %9959, %9941
  %9963 = fadd fast float %9960, %9942
  %9964 = fsub fast float %9952, %9944
  %9965 = fsub fast float %9953, %9945
  %9966 = fsub fast float %9954, %9946
  %9967 = fmul fast float %9964, %9928
  %9968 = fmul fast float %9965, %9928
  %9969 = fmul fast float %9966, %9928
  %9970 = fsub fast float %9944, %9961
  %9971 = fadd fast float %9970, %9967
  %9972 = fsub fast float %9945, %9962
  %9973 = fadd fast float %9972, %9968
  %9974 = fsub fast float %9946, %9963
  %9975 = fadd fast float %9974, %9969
  %9976 = fmul fast float %9971, %9916
  %9977 = fmul fast float %9973, %9916
  %9978 = fmul fast float %9975, %9916
  %9979 = fadd fast float %9976, %9961
  %9980 = fadd fast float %9977, %9962
  %9981 = fadd fast float %9978, %9963
  %9982 = fmul fast float %9979, %6337
  %9983 = fmul fast float %9980, %6337
  %9984 = fmul fast float %9981, %6337
  br label %9985

; <label>:9985                                    ; preds = %9818, %9778
  %9986 = phi float [ %9858, %9818 ], [ 1.000000e+00, %9778 ]
  %9987 = phi float [ %9859, %9818 ], [ 1.000000e+00, %9778 ]
  %9988 = phi float [ %9860, %9818 ], [ 1.000000e+00, %9778 ]
  %9989 = phi float [ %9982, %9818 ], [ 0.000000e+00, %9778 ]
  %9990 = phi float [ %9983, %9818 ], [ 0.000000e+00, %9778 ]
  %9991 = phi float [ %9984, %9818 ], [ 0.000000e+00, %9778 ]
  %9992 = fmul fast float %9986, %9785
  %9993 = call float @dx.op.dot3.f32(i32 55, float %9986, float %9987, float %9988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9994 = call float @dx.op.dot3.f32(i32 55, float %9989, float %9990, float %9991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9995 = select i1 %251, float %9993, float %9986
  %9996 = select i1 %251, float %9993, float %9987
  %9997 = select i1 %251, float 1.000000e+00, float %9988
  %9998 = select i1 %251, float %9994, float %9989
  %9999 = select i1 %251, float 0.000000e+00, float %9990
  %10000 = select i1 %251, float 0.000000e+00, float %9991
  %10001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10002 = extractvalue %dx.types.CBufRet.i32 %10001, 3
  %10003 = and i32 %10002, 3
  %10004 = icmp ne i32 %10003, 0
  %10005 = and i32 %10002, 4
  %10006 = icmp ne i32 %10005, 0
  %10007 = and i1 %10004, %10006
  %10008 = and i1 %251, %10007
  br i1 %10008, label %10009, label %10015

; <label>:10009                                   ; preds = %9985
  %10010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10011 = extractvalue %dx.types.CBufRet.f32 %10010, 1
  %10012 = fadd fast float %9992, -1.000000e+00
  %10013 = fmul fast float %10011, %10012
  %10014 = fadd fast float %10013, 1.000000e+00
  br label %10015

; <label>:10015                                   ; preds = %10009, %9985
  %10016 = phi float [ %10014, %10009 ], [ %9992, %9985 ]
  %10017 = fadd fast float %9782, %9779
  %10018 = fmul fast float %9995, %10017
  %10019 = fadd fast float %10018, %9998
  %10020 = fadd fast float %9783, %9780
  %10021 = fmul fast float %9996, %10020
  %10022 = fadd fast float %10021, %9999
  %10023 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  br i1 %251, label %10024, label %10039

; <label>:10024                                   ; preds = %10015
  %10025 = fadd fast float %10019, %10022
  %10026 = fmul fast float %10023, %10025
  %10027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10028 = extractvalue %dx.types.CBufRet.f32 %10027, 3
  %10029 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %10030 = fsub fast float %8362, %8356
  %10031 = fadd fast float %10030, %8363
  %10032 = fsub fast float %10031, %10029
  %10033 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %10034 = fmul fast float %10032, %10033
  %10035 = call float @dx.op.unary.f32(i32 7, float %10034)  ; Saturate(value)
  %10036 = fsub fast float %10035, %10028
  %10037 = fmul fast float %10036, %10016
  %10038 = fadd fast float %10037, %10028
  br label %10063

; <label>:10039                                   ; preds = %10015
  %10040 = fadd fast float %9784, %9781
  %10041 = fmul fast float %9997, %10040
  %10042 = fadd fast float %10041, %10000
  %10043 = fmul fast float %10023, %10019
  %10044 = fmul fast float %10023, %10022
  %10045 = fmul fast float %10023, %10042
  %10046 = call float @dx.op.binary.f32(i32 35, float %10044, float %10045)  ; FMax(a,b)
  %10047 = call float @dx.op.binary.f32(i32 35, float %10043, float %10046)  ; FMax(a,b)
  %10048 = call float @dx.op.binary.f32(i32 35, float %10047, float 1.000000e+00)  ; FMax(a,b)
  %10049 = fcmp fast ugt float %10048, 0x3F10000000000000
  br i1 %10049, label %10051, label %10050

; <label>:10050                                   ; preds = %10039
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10051

; <label>:10051                                   ; preds = %10050, %10039
  %10052 = add i32 %56, 356
  %10053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %10052, i32 undef)  ; BufferLoad(srv,index,wot)
  %10054 = extractvalue %dx.types.ResRet.i32 %10053, 0
  %10055 = and i32 %10054, 32
  %10056 = icmp eq i32 %10055, 0
  br i1 %10056, label %10063, label %10057

; <label>:10057                                   ; preds = %10051
  %10058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10059 = extractvalue %dx.types.CBufRet.f32 %10058, 0
  %10060 = fmul fast float %10059, 0x3FE99999A0000000
  %10061 = fadd fast float %10059, %10043
  %10062 = fadd fast float %10060, %10045
  br label %10063

; <label>:10063                                   ; preds = %10057, %10051, %10024
  %10064 = phi float [ %10026, %10024 ], [ %10061, %10057 ], [ %10043, %10051 ]
  %10065 = phi float [ %10038, %10024 ], [ %10044, %10057 ], [ %10044, %10051 ]
  %10066 = phi float [ 1.000000e+00, %10024 ], [ %10062, %10057 ], [ %10045, %10051 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10067 = call float @dx.op.binary.f32(i32 36, float %10064, float 3.225500e+04)  ; FMin(a,b)
  %10068 = call float @dx.op.binary.f32(i32 36, float %10065, float 3.225500e+04)  ; FMin(a,b)
  %10069 = call float @dx.op.binary.f32(i32 36, float %10066, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10067)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10068)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10069)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
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
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !33}
!33 = !{i32 0, i32 5}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!70 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !95}
!72 = !{!73, !91, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !90}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !76}
!86 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 8, i8 0, !79}
!87 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 9, i8 0, !76}
!88 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 10, i8 0, !89}
!89 = !{i32 3, i32 13}
!90 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92, !93}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!93 = !{i32 1, !"SV_Target", i8 9, i8 16, !94, i8 0, i32 1, i8 4, i32 1, i8 0, !76}
!94 = !{i32 1}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !104, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

