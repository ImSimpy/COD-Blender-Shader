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
; shader hash: a3052118c8494620a1bee5af33905c5c
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
; Number of inputs: 44, outputs: 4
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
  %160 = fmul fast float %102, 5.000000e-01
  %161 = fmul fast float %103, 5.000000e-01
  %162 = fptosi float %160 to i32
  %163 = fptosi float %161 to i32
  %164 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %162, i32 %163, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = lshr i32 %165, 18
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F4C00EBA0000000
  %169 = call float @dx.op.unary.f32(i32 21, float %168)  ; Exp(value)
  %170 = fadd fast float %169, -1.000000e+00
  %171 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %172 = extractvalue %dx.types.Dimensions %171, 0
  %173 = sitofp i32 %172 to float
  %174 = extractvalue %dx.types.Dimensions %171, 1
  %175 = sitofp i32 %174 to float
  %176 = fcmp fast oge float %160, %173
  %177 = fcmp fast oge float %161, %175
  %178 = or i1 %176, %177
  %179 = select i1 %178, float 0x4197782600000000, float %170
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %183 = fmul fast float %181, %102
  %184 = fmul fast float %182, %103
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 114688
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %188, float %183, float 0.000000e+00
  %190 = select i1 %188, float %184, float 0.000000e+00
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %51, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fmul fast float %192, 2.550000e+02
  %194 = fptoui float %193 to i32
  %195 = select i1 %188, i32 %194, i32 0
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %215

; <label>:204                                     ; preds = %0
  %205 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %206 = fmul fast float %205, %103
  %207 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %208 = fmul fast float %207, %102
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %208, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast olt float %211, %213
  br label %218

; <label>:215                                     ; preds = %0
  %216 = icmp eq i32 %201, 0
  %217 = and i1 %200, %216
  br label %218

; <label>:218                                     ; preds = %215, %204
  %219 = phi i1 [ %214, %204 ], [ %217, %215 ]
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %221, 0x3FE3C6EF40000000
  %223 = frem fast float %102, 2.560000e+02
  %224 = frem fast float %103, 2.560000e+02
  %225 = fptoui float %223 to i32
  %226 = fptoui float %224 to i32
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = fadd fast float %228, %222
  %231 = fadd fast float %229, %222
  %232 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %233 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %234 = add i32 %56, 156
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %246 = add i32 %56, 216
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %260 = add i32 %56, 36
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %56, 288
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %271, 0x3F50624DE0000000
  %275 = fmul fast float %273, 0x3F50624DE0000000
  %276 = add i32 %56, 172
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %288 = add i32 %56, 232
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %302 = add i32 %56, 52
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %56, 304
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %56, 188
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %330 = add i32 %56, 248
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %344 = add i32 %56, 68
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %56, 320
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %56, 204
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %372 = add i32 %56, 264
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %386 = add i32 %56, 84
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %56, 336
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %56, 348
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 32
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %404, 64
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %404, 128
  %410 = icmp eq i32 %409, 0
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

; <label>:415                                     ; preds = %218
  %416 = add i32 %56, 508
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = add i32 %418, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %420, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = fmul fast float %425, %86
  %427 = fmul fast float %422, %87
  %428 = fmul fast float %423, %88
  %429 = fmul fast float %424, %89
  br label %430

; <label>:430                                     ; preds = %415, %218
  %431 = phi float [ %89, %218 ], [ %429, %415 ]
  %432 = phi float [ %88, %218 ], [ %428, %415 ]
  %433 = phi float [ %87, %218 ], [ %427, %415 ]
  %434 = phi float [ %86, %218 ], [ %426, %415 ]
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %458, label %439

; <label>:439                                     ; preds = %430
  %440 = add i32 %56, 44
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %433, float 1.000000e+00
  %446 = add i32 %56, 60
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %432, float 1.000000e+00
  %452 = add i32 %56, 76
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %465 = add i32 %56, 24
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %56, 28
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = or i32 %470, %467
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %1233, label %473

; <label>:473                                     ; preds = %458
  %474 = and i32 %467, 262144
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %59, float 1.000000e+00
  %477 = select i1 %475, float %60, float 0.000000e+00
  %478 = select i1 %475, float %61, float 0.000000e+00
  %479 = select i1 %475, float %62, float 1.000000e+00
  %480 = select i1 %475, float %63, float %84
  %481 = select i1 %475, float %64, float %85
  %482 = add i32 %56, 284
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %486, 0x3F50624DE0000000
  %488 = add i32 %56, 88
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = and i32 %491, 255
  %493 = lshr i32 %490, 24
  %494 = add i32 %56, 292
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %56, 32
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %547 = add i32 %56, 228
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = fadd fast float %578, %157
  %582 = fadd fast float %579, %158
  %583 = fadd fast float %580, %159
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = icmp eq i32 %57, 65535
  br i1 %587, label %682, label %588

; <label>:588                                     ; preds = %576
  %589 = lshr i32 %57, 1
  %590 = shl i32 %589, 2
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %57, 1
  %594 = icmp ne i32 %593, 0
  %595 = lshr i32 %592, 16
  %596 = and i32 %592, 65535
  %597 = select i1 %594, i32 %595, i32 %596
  %598 = icmp eq i32 %597, 65535
  br i1 %598, label %678, label %599

; <label>:599                                     ; preds = %588
  %600 = mul nuw nsw i32 %597, 40
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %600, 12
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %600, 24
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %600, 36
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %633 = shl i32 %57, 2
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %637, %dx.types.Handle %51, float %638, float %639, float %640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %675, %dx.types.Handle %49, float %669, float %670, float %671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 256
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %737, label %691

; <label>:691                                     ; preds = %685
  %692 = add i32 %56, 440
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = add i32 %56, 100
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 128
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %759, label %743

; <label>:743                                     ; preds = %737
  %744 = add i32 %56, 424
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %963, label %765

; <label>:765                                     ; preds = %759
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %56, 376
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 512
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %798, label %790

; <label>:790                                     ; preds = %765
  %791 = add i32 %56, 460
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  br label %798

; <label>:798                                     ; preds = %790, %765
  %799 = phi float [ %797, %790 ], [ 1.000000e+00, %765 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 33554432
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %910, label %804

; <label>:804                                     ; preds = %798
  %805 = add i32 %56, 224
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 65535
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = lshr i32 %807, 16
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = add i32 %56, 228
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %833 = add i32 %56, 220
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %970 = and i32 %969, 1
  %971 = icmp ne i32 %970, 0
  %972 = add i32 %56, 356
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 32
  %976 = icmp ne i32 %975, 0
  %977 = and i1 %971, %976
  %978 = select i1 %977, float 1.000000e+00, float %965
  %979 = select i1 %977, float 0x3FD3333340000000, float %966
  %980 = select i1 %977, float 0x3FD3333340000000, float %967
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 32
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1057, label %985

; <label>:985                                     ; preds = %963
  %986 = add i32 %56, 92
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %56, 392
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 67108864
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1053, label %1037

; <label>:1037                                    ; preds = %985
  %1038 = add i32 %56, 280
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1062 = add i32 %56, 160
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 22
  %1066 = shl nuw nsw i32 %1065, 5
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 64
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1105, label %1072

; <label>:1072                                    ; preds = %1057
  %1073 = add i32 %56, 408
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 131072
  %1081 = icmp eq i32 %1080, 0
  %1082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, %239
  %1087 = fmul fast float %1084, %242
  %1088 = fmul fast float %1085, %245
  br i1 %1081, label %1095, label %1089

; <label>:1089                                    ; preds = %1072
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1100 = select i1 %219, float %1099, float %1096
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1097, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %219, float 0.000000e+00, float %1096
  %1103 = select i1 %219, float %1101, float %1097
  %1104 = select i1 %219, float 0.000000e+00, float %1098
  br label %1105

; <label>:1105                                    ; preds = %1095, %1057
  %1106 = phi float [ %1102, %1095 ], [ 0.000000e+00, %1057 ]
  %1107 = phi float [ %1103, %1095 ], [ 0.000000e+00, %1057 ]
  %1108 = phi float [ %1104, %1095 ], [ 0.000000e+00, %1057 ]
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 1024
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1143, label %1113

; <label>:1113                                    ; preds = %1105
  %1114 = add i32 %56, 152
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1116, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1116, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = fmul fast float %1119, %1119
  %1129 = fmul fast float %1123, %1123
  %1130 = fmul fast float %1127, %1127
  %1131 = add i32 %56, 476
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fmul fast float %1128, %1137
  %1141 = fmul fast float %1129, %1138
  %1142 = fmul fast float %1130, %1139
  br label %1143

; <label>:1143                                    ; preds = %1113, %1105
  %1144 = phi float [ %1140, %1113 ], [ 0.000000e+00, %1105 ]
  %1145 = phi float [ %1141, %1113 ], [ 0.000000e+00, %1105 ]
  %1146 = phi float [ %1142, %1113 ], [ 0.000000e+00, %1105 ]
  %1147 = fcmp fast ogt float %1144, 0.000000e+00
  %1148 = fcmp fast ogt float %1145, 0.000000e+00
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1151 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 7
  %1156 = and i32 %1155, 32752
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1150, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1157
  %1160 = fmul fast float %1151, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1157
  %1162 = fmul fast float %1152, 0xBFE62E4300000000
  %1163 = fmul fast float %1162, %1157
  %1164 = select i1 %1147, float %1159, float 1.270000e+02
  %1165 = select i1 %1148, float %1161, float 1.270000e+02
  %1166 = select i1 %1149, float %1163, float 1.270000e+02
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 10240
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1215, label %1171

; <label>:1171                                    ; preds = %1143
  %1172 = add i32 %56, 492
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 3
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 1048576
  %1183 = icmp ne i32 %1182, 0
  %1184 = and i32 %1181, 8192
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1201, label %1186

; <label>:1186                                    ; preds = %1171
  %1187 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1188 = select i1 %1183, float %1187, float %1178
  %1189 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1190 = select i1 %1183, float %1189, float %1178
  %1191 = add i32 %56, 96
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 16
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F80101020000000
  %1198 = fmul fast float %1197, %1190
  %1199 = fmul fast float %1197, %1178
  %1200 = fmul fast float %1197, %1188
  br label %1201

; <label>:1201                                    ; preds = %1186, %1171
  %1202 = phi float [ %1198, %1186 ], [ 0.000000e+00, %1171 ]
  %1203 = phi float [ %1199, %1186 ], [ 0.000000e+00, %1171 ]
  %1204 = phi float [ %1200, %1186 ], [ 0.000000e+00, %1171 ]
  %1205 = and i32 %1181, 2048
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1215, label %1207

; <label>:1207                                    ; preds = %1201
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = shl i32 %1209, 4
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = fmul fast float %1212, %1179
  %1214 = call float @dx.op.binary.f32(i32 35, float %1213, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1215

; <label>:1215                                    ; preds = %1207, %1201, %1143
  %1216 = phi float [ %1202, %1207 ], [ %1202, %1201 ], [ 0.000000e+00, %1143 ]
  %1217 = phi float [ %1203, %1207 ], [ %1203, %1201 ], [ 0.000000e+00, %1143 ]
  %1218 = phi float [ %1204, %1207 ], [ %1204, %1201 ], [ 0.000000e+00, %1143 ]
  %1219 = phi float [ %1214, %1207 ], [ 0x3F70101020000000, %1201 ], [ 0x3F70101020000000, %1143 ]
  %1220 = add i32 %56, 96
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1222, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = call float @dx.op.dot3.f32(i32 55, float %978, float %979, float %980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fmul fast float %1227, %1228
  %1230 = fadd fast float %1229, %1224
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1215, %458
  %1234 = phi float [ 0.000000e+00, %458 ], [ %1059, %1215 ]
  %1235 = phi float [ 0.000000e+00, %458 ], [ %1060, %1215 ]
  %1236 = phi float [ 0.000000e+00, %458 ], [ %978, %1215 ]
  %1237 = phi float [ 0.000000e+00, %458 ], [ %979, %1215 ]
  %1238 = phi float [ 0.000000e+00, %458 ], [ %980, %1215 ]
  %1239 = phi float [ 0.000000e+00, %458 ], [ %1106, %1215 ]
  %1240 = phi float [ 0.000000e+00, %458 ], [ %1107, %1215 ]
  %1241 = phi float [ 0.000000e+00, %458 ], [ %1108, %1215 ]
  %1242 = phi float [ 0.000000e+00, %458 ], [ %1164, %1215 ]
  %1243 = phi float [ 0.000000e+00, %458 ], [ %1165, %1215 ]
  %1244 = phi float [ 0.000000e+00, %458 ], [ %1166, %1215 ]
  %1245 = phi float [ 0.000000e+00, %458 ], [ %1216, %1215 ]
  %1246 = phi float [ 0.000000e+00, %458 ], [ %1217, %1215 ]
  %1247 = phi float [ 0.000000e+00, %458 ], [ %1218, %1215 ]
  %1248 = phi float [ 0.000000e+00, %458 ], [ %964, %1215 ]
  %1249 = phi float [ 0.000000e+00, %458 ], [ %760, %1215 ]
  %1250 = phi float [ 0.000000e+00, %458 ], [ %1058, %1215 ]
  %1251 = phi float [ 0.000000e+00, %458 ], [ %1061, %1215 ]
  %1252 = phi float [ 0.000000e+00, %458 ], [ %1219, %1215 ]
  %1253 = phi float [ 0.000000e+00, %458 ], [ %1232, %1215 ]
  br i1 %406, label %2291, label %1254

; <label>:1254                                    ; preds = %1233
  %1255 = icmp ult i32 %464, 2
  %1256 = add i32 %56, 40
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = add i32 %56, 44
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = or i32 %1261, %1258
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %2291, label %1264

; <label>:1264                                    ; preds = %1254
  %1265 = and i32 %1258, 262144
  %1266 = icmp ne i32 %1265, 0
  %1267 = select i1 %1266, float %59, float 1.000000e+00
  %1268 = select i1 %1266, float %60, float 0.000000e+00
  %1269 = select i1 %1266, float %61, float 0.000000e+00
  %1270 = select i1 %1266, float %62, float 1.000000e+00
  %1271 = select i1 %1266, float %63, float %84
  %1272 = select i1 %1266, float %64, float %85
  %1273 = add i32 %56, 300
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1277, 0x3F50624DE0000000
  %1279 = add i32 %56, 104
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 16
  %1283 = and i32 %1282, 255
  %1284 = lshr i32 %1281, 24
  %1285 = add i32 %56, 308
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = lshr i32 %1287, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = add i32 %56, 48
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = fmul fast float %1305, 1.000000e+03
  %1307 = fmul fast float %316, %1306
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = fadd fast float %1308, %306
  %1310 = fmul fast float %317, %1306
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = fadd fast float %1311, %308
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
  %1338 = add i32 %56, 244
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1372 = fadd fast float %1369, %157
  %1373 = fadd fast float %1370, %158
  %1374 = fadd fast float %1371, %159
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = icmp eq i32 %57, 65535
  br i1 %1378, label %1473, label %1379

; <label>:1379                                    ; preds = %1367
  %1380 = lshr i32 %57, 1
  %1381 = shl i32 %1380, 2
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %57, 1
  %1385 = icmp ne i32 %1384, 0
  %1386 = lshr i32 %1383, 16
  %1387 = and i32 %1383, 65535
  %1388 = select i1 %1385, i32 %1386, i32 %1387
  %1389 = icmp eq i32 %1388, 65535
  br i1 %1389, label %1469, label %1390

; <label>:1390                                    ; preds = %1379
  %1391 = mul nuw nsw i32 %1388, 40
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1391, 12
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1391, 24
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = add nuw nsw i32 %1391, 36
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1424 = shl i32 %57, 2
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1430 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1428, %dx.types.Handle %51, float %1429, float %1430, float %1431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1466, %dx.types.Handle %49, float %1460, float %1461, float %1462, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  br label %1469

; <label>:1469                                    ; preds = %1390, %1379
  %1470 = phi float [ %1468, %1390 ], [ -1.000000e+00, %1379 ]
  %1471 = fadd fast float %1470, %1377
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  br label %1473

; <label>:1473                                    ; preds = %1469, %1367
  %1474 = phi float [ %1472, %1469 ], [ %1377, %1367 ]
  %1475 = fmul fast float %1474, %461
  br label %1476

; <label>:1476                                    ; preds = %1473, %1362
  %1477 = phi float [ %1475, %1473 ], [ %461, %1362 ]
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 256
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1528, label %1482

; <label>:1482                                    ; preds = %1476
  %1483 = add i32 %56, 444
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %1485, 0
  %1487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1487, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = add i32 %56, 116
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 128
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

; <label>:1534                                    ; preds = %1528
  %1535 = add i32 %56, 428
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1539, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1552, label %2291, label %1553

; <label>:1553                                    ; preds = %1550
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 16
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1756, label %1558

; <label>:1558                                    ; preds = %1553
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %56, 380
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 512
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1591, label %1583

; <label>:1583                                    ; preds = %1558
  %1584 = add i32 %56, 464
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  br label %1591

; <label>:1591                                    ; preds = %1583, %1558
  %1592 = phi float [ %1590, %1583 ], [ 1.000000e+00, %1558 ]
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 33554432
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1703, label %1597

; <label>:1597                                    ; preds = %1591
  %1598 = add i32 %56, 240
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 65535
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = lshr i32 %1600, 16
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = add i32 %56, 244
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 65535
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1626 = add i32 %56, 236
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1707 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
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
  %1741 = fmul fast float %293, %293
  %1742 = fmul fast float %297, %297
  %1743 = fmul fast float %301, %301
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
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 1
  %1763 = and i32 %1762, 1
  %1764 = icmp ne i32 %1763, 0
  %1765 = add i32 %56, 356
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 32
  %1769 = icmp ne i32 %1768, 0
  %1770 = and i1 %1764, %1769
  %1771 = select i1 %1770, float 1.000000e+00, float %1758
  %1772 = select i1 %1770, float 0x3FD3333340000000, float %1759
  %1773 = select i1 %1770, float 0x3FD3333340000000, float %1760
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 32
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1850, label %1778

; <label>:1778                                    ; preds = %1756
  %1779 = add i32 %56, 108
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %56, 396
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %1784, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1786, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 67108864
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1846, label %1830

; <label>:1830                                    ; preds = %1778
  %1831 = add i32 %56, 296
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1855 = add i32 %56, 176
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 22
  %1859 = shl nuw nsw i32 %1858, 5
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 64
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1898, label %1865

; <label>:1865                                    ; preds = %1850
  %1866 = add i32 %56, 412
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 131072
  %1874 = icmp eq i32 %1873, 0
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = fmul fast float %1876, %281
  %1880 = fmul fast float %1877, %284
  %1881 = fmul fast float %1878, %287
  br i1 %1874, label %1888, label %1882

; <label>:1882                                    ; preds = %1865
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1893 = select i1 %219, float %1892, float %1889
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1890, float %1891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = select i1 %219, float 0.000000e+00, float %1889
  %1896 = select i1 %219, float %1894, float %1890
  %1897 = select i1 %219, float 0.000000e+00, float %1891
  br label %1898

; <label>:1898                                    ; preds = %1888, %1850
  %1899 = phi float [ %1895, %1888 ], [ 0.000000e+00, %1850 ]
  %1900 = phi float [ %1896, %1888 ], [ 0.000000e+00, %1850 ]
  %1901 = phi float [ %1897, %1888 ], [ 0.000000e+00, %1850 ]
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 1024
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1936, label %1906

; <label>:1906                                    ; preds = %1898
  %1907 = add i32 %56, 168
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1924 = add i32 %56, 480
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = add i32 %1926, 0
  %1928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1928, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 10240
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2008, label %1964

; <label>:1964                                    ; preds = %1936
  %1965 = add i32 %56, 496
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 3
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 1048576
  %1976 = icmp ne i32 %1975, 0
  %1977 = and i32 %1974, 8192
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %1994, label %1979

; <label>:1979                                    ; preds = %1964
  %1980 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1981 = select i1 %1976, float %1980, float %1971
  %1982 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1983 = select i1 %1976, float %1982, float %1971
  %1984 = add i32 %56, 112
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = lshr i32 %1986, 16
  %1988 = and i32 %1987, 255
  %1989 = uitofp i32 %1988 to float
  %1990 = fmul fast float %1989, 0x3F80101020000000
  %1991 = fmul fast float %1990, %1983
  %1992 = fmul fast float %1990, %1971
  %1993 = fmul fast float %1990, %1981
  br label %1994

; <label>:1994                                    ; preds = %1979, %1964
  %1995 = phi float [ %1991, %1979 ], [ 0.000000e+00, %1964 ]
  %1996 = phi float [ %1992, %1979 ], [ 0.000000e+00, %1964 ]
  %1997 = phi float [ %1993, %1979 ], [ 0.000000e+00, %1964 ]
  %1998 = and i32 %1974, 2048
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2008, label %2000

; <label>:2000                                    ; preds = %1994
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = shl i32 %2002, 4
  %2004 = and i32 %2003, 32752
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = fmul fast float %2005, %1972
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2008

; <label>:2008                                    ; preds = %2000, %1994, %1936
  %2009 = phi float [ %1995, %2000 ], [ %1995, %1994 ], [ 0.000000e+00, %1936 ]
  %2010 = phi float [ %1996, %2000 ], [ %1996, %1994 ], [ 0.000000e+00, %1936 ]
  %2011 = phi float [ %1997, %2000 ], [ %1997, %1994 ], [ 0.000000e+00, %1936 ]
  %2012 = phi float [ %2007, %2000 ], [ 0x3F70101020000000, %1994 ], [ 0x3F70101020000000, %1936 ]
  %2013 = add i32 %56, 112
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 255
  %2017 = uitofp i32 %2016 to float
  %2018 = lshr i32 %2015, 8
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = fmul fast float %2020, %2021
  %2023 = fadd fast float %2022, %2017
  %2024 = fmul fast float %2023, 0x3F70101020000000
  %2025 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  br i1 %1255, label %2026, label %2061

; <label>:2026                                    ; preds = %2008
  %2027 = fmul fast float %2012, 2.000000e+00
  %2028 = fcmp fast olt float %1957, 1.270000e+02
  %2029 = fcmp fast olt float %1958, 1.270000e+02
  %2030 = fcmp fast olt float %1959, 1.270000e+02
  %2031 = fmul fast float %1957, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2027
  %2033 = fmul fast float %1958, 0xBFF7154760000000
  %2034 = fmul fast float %2033, %2027
  %2035 = fmul fast float %1959, 0xBFF7154760000000
  %2036 = fmul fast float %2035, %2027
  %2037 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2038 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2039 = call float @dx.op.unary.f32(i32 21, float %2036)  ; Exp(value)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = fadd fast float %2040, -1.000000e+00
  %2044 = select i1 %2028, float %2043, float -1.000000e+00
  %2045 = fadd fast float %2041, -1.000000e+00
  %2046 = select i1 %2029, float %2045, float -1.000000e+00
  %2047 = fadd fast float %2042, -1.000000e+00
  %2048 = select i1 %2030, float %2047, float -1.000000e+00
  %2049 = fmul fast float %2044, %1551
  %2050 = fmul fast float %2046, %1551
  %2051 = fmul fast float %2048, %1551
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fmul fast float %2052, %1236
  %2056 = fmul fast float %2053, %1237
  %2057 = fmul fast float %2054, %1238
  %2058 = fmul fast float %2052, %1239
  %2059 = fmul fast float %2053, %1240
  %2060 = fmul fast float %2054, %1241
  br label %2061

; <label>:2061                                    ; preds = %2026, %2008
  %2062 = phi float [ %2055, %2026 ], [ %1236, %2008 ]
  %2063 = phi float [ %2056, %2026 ], [ %1237, %2008 ]
  %2064 = phi float [ %2057, %2026 ], [ %1238, %2008 ]
  %2065 = phi float [ %2058, %2026 ], [ %1239, %2008 ]
  %2066 = phi float [ %2059, %2026 ], [ %1240, %2008 ]
  %2067 = phi float [ %2060, %2026 ], [ %1241, %2008 ]
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 3
  %2071 = icmp eq i32 %2070, 3
  br i1 %2071, label %2150, label %2072

; <label>:2072                                    ; preds = %2061
  %2073 = and i32 %2069, 16
  %2074 = icmp ne i32 %2073, 0
  %2075 = select i1 %2074, float %1551, float 0.000000e+00
  %2076 = icmp eq i32 %2070, 0
  br i1 %2076, label %2077, label %2105

; <label>:2077                                    ; preds = %2072
  %2078 = and i32 %2069, 64
  %2079 = icmp ne i32 %2078, 0
  %2080 = select i1 %2079, float %1551, float 0.000000e+00
  %2081 = fsub fast float %1771, %2062
  %2082 = fsub fast float %1772, %2063
  %2083 = fsub fast float %1773, %2064
  %2084 = fmul fast float %2075, %2081
  %2085 = fmul fast float %2075, %2082
  %2086 = fmul fast float %2075, %2083
  %2087 = fadd fast float %2084, %2062
  %2088 = fadd fast float %2085, %2063
  %2089 = fadd fast float %2086, %2064
  %2090 = fsub fast float %1757, %1248
  %2091 = fmul fast float %2075, %2090
  %2092 = fadd fast float %2091, %1248
  %2093 = fsub fast float %1899, %2065
  %2094 = fsub fast float %1900, %2066
  %2095 = fsub fast float %1901, %2067
  %2096 = fmul fast float %2080, %2093
  %2097 = fmul fast float %2080, %2094
  %2098 = fmul fast float %2080, %2095
  %2099 = fadd fast float %2096, %2065
  %2100 = fadd fast float %2097, %2066
  %2101 = fadd fast float %2098, %2067
  %2102 = fsub fast float %2025, %1253
  %2103 = fmul fast float %2075, %2102
  %2104 = fadd fast float %2103, %1253
  br label %2150

; <label>:2105                                    ; preds = %2072
  %2106 = icmp eq i32 %2070, 1
  br i1 %2106, label %2107, label %2120

; <label>:2107                                    ; preds = %2105
  %2108 = fadd fast float %1771, -1.000000e+00
  %2109 = fadd fast float %1772, -1.000000e+00
  %2110 = fadd fast float %1773, -1.000000e+00
  %2111 = fmul fast float %2075, %2108
  %2112 = fmul fast float %2075, %2109
  %2113 = fmul fast float %2075, %2110
  %2114 = fadd fast float %2111, 1.000000e+00
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fmul fast float %2114, %2062
  %2118 = fmul fast float %2115, %2063
  %2119 = fmul fast float %2116, %2064
  br label %2150

; <label>:2120                                    ; preds = %2105
  %2121 = icmp eq i32 %2070, 2
  br i1 %2121, label %2122, label %2150

; <label>:2122                                    ; preds = %2120
  %2123 = call float @dx.op.unary.f32(i32 24, float %1771)  ; Sqrt(value)
  %2124 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2125 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2126 = fadd fast float %2123, -5.000000e-01
  %2127 = fadd fast float %2124, -5.000000e-01
  %2128 = fadd fast float %2125, -5.000000e-01
  %2129 = fmul fast float %2126, %2075
  %2130 = fmul fast float %2127, %2075
  %2131 = fmul fast float %2128, %2075
  %2132 = fadd fast float %2129, 5.000000e-01
  %2133 = fadd fast float %2130, 5.000000e-01
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fmul fast float %2132, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2062
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2062
  %2140 = fmul fast float %2133, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2063
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2063
  %2145 = fmul fast float %2134, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2064
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2064
  br label %2150

; <label>:2150                                    ; preds = %2122, %2120, %2107, %2077, %2061
  %2151 = phi float [ %2062, %2061 ], [ %2139, %2122 ], [ %2062, %2120 ], [ %2117, %2107 ], [ %2087, %2077 ]
  %2152 = phi float [ %2063, %2061 ], [ %2144, %2122 ], [ %2063, %2120 ], [ %2118, %2107 ], [ %2088, %2077 ]
  %2153 = phi float [ %2064, %2061 ], [ %2149, %2122 ], [ %2064, %2120 ], [ %2119, %2107 ], [ %2089, %2077 ]
  %2154 = phi float [ %2065, %2061 ], [ %2065, %2122 ], [ %2065, %2120 ], [ %2065, %2107 ], [ %2099, %2077 ]
  %2155 = phi float [ %2066, %2061 ], [ %2066, %2122 ], [ %2066, %2120 ], [ %2066, %2107 ], [ %2100, %2077 ]
  %2156 = phi float [ %2067, %2061 ], [ %2067, %2122 ], [ %2067, %2120 ], [ %2067, %2107 ], [ %2101, %2077 ]
  %2157 = phi float [ %1248, %2061 ], [ %1248, %2122 ], [ %1248, %2120 ], [ %1248, %2107 ], [ %2092, %2077 ]
  %2158 = phi float [ %1253, %2061 ], [ %1253, %2122 ], [ %1253, %2120 ], [ %1253, %2107 ], [ %2104, %2077 ]
  %2159 = and i32 %2069, 12
  %2160 = icmp eq i32 %2159, 12
  br i1 %2160, label %2291, label %2161

; <label>:2161                                    ; preds = %2150
  %2162 = and i32 %2069, 2097184
  %2163 = icmp eq i32 %2162, 2097184
  %2164 = select i1 %2163, float %1551, float 0.000000e+00
  %2165 = and i32 %2069, 4194336
  %2166 = icmp eq i32 %2165, 4194336
  %2167 = select i1 %2166, float %1551, float 0.000000e+00
  %2168 = and i32 %2069, 8388640
  %2169 = icmp eq i32 %2168, 8388640
  %2170 = select i1 %2169, float %1551, float 0.000000e+00
  %2171 = and i32 %2069, 1024
  %2172 = icmp ne i32 %2171, 0
  %2173 = select i1 %2172, float %1551, float 0.000000e+00
  %2174 = and i32 %2069, 2048
  %2175 = icmp ne i32 %2174, 0
  %2176 = select i1 %2175, float %1551, float 0.000000e+00
  %2177 = and i32 %2069, 8192
  %2178 = icmp ne i32 %2177, 0
  %2179 = select i1 %2178, float %1551, float 0.000000e+00
  %2180 = icmp eq i32 %2159, 0
  br i1 %2180, label %2181, label %2215

; <label>:2181                                    ; preds = %2161
  %2182 = fsub fast float %1852, %1234
  %2183 = fsub fast float %1853, %1235
  %2184 = fmul fast float %2164, %2182
  %2185 = fmul fast float %2164, %2183
  %2186 = fadd fast float %2184, %1234
  %2187 = fadd fast float %2185, %1235
  %2188 = fsub fast float %1854, %1251
  %2189 = fmul fast float %2167, %2188
  %2190 = fadd fast float %2189, %1251
  %2191 = fsub fast float %1851, %1250
  %2192 = fmul fast float %2170, %2191
  %2193 = fadd fast float %2192, %1250
  %2194 = fsub fast float %1957, %1242
  %2195 = fsub fast float %1958, %1243
  %2196 = fsub fast float %1959, %1244
  %2197 = fmul fast float %2173, %2194
  %2198 = fmul fast float %2173, %2195
  %2199 = fmul fast float %2173, %2196
  %2200 = fadd fast float %2197, %1242
  %2201 = fadd fast float %2198, %1243
  %2202 = fadd fast float %2199, %1244
  %2203 = fsub fast float %2012, %1252
  %2204 = fmul fast float %2176, %2203
  %2205 = fadd fast float %2204, %1252
  %2206 = fsub fast float %2009, %1245
  %2207 = fsub fast float %2010, %1246
  %2208 = fsub fast float %2011, %1247
  %2209 = fmul fast float %2179, %2206
  %2210 = fmul fast float %2179, %2207
  %2211 = fmul fast float %2179, %2208
  %2212 = fadd fast float %2209, %1245
  %2213 = fadd fast float %2210, %1246
  %2214 = fadd fast float %2211, %1247
  br label %2291

; <label>:2215                                    ; preds = %2161
  %2216 = icmp eq i32 %2159, 4
  br i1 %2216, label %2217, label %2263

; <label>:2217                                    ; preds = %2215
  %2218 = fmul fast float %2164, %1852
  %2219 = fmul fast float %2164, %1853
  %2220 = fadd fast float %2218, %1234
  %2221 = fadd fast float %2219, %1235
  %2222 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2223 = fsub fast float %2222, %1251
  %2224 = fmul fast float %2223, %2167
  %2225 = fadd fast float %2224, %1251
  %2226 = fadd fast float %1851, %1250
  %2227 = fmul fast float %2226, 0x3FF337FAE0000000
  %2228 = fmul fast float %1250, %1250
  %2229 = fmul fast float %1851, %1851
  %2230 = fadd fast float %2229, %2228
  %2231 = fmul fast float %2230, 0x3FE5152B00000000
  %2232 = fmul fast float %1250, 0xBFCC1F85E0000000
  %2233 = fmul fast float %2232, %1851
  %2234 = fadd fast float %2233, 0xBFE1363700000000
  %2235 = fadd fast float %2234, %2227
  %2236 = fsub fast float %2235, %2231
  %2237 = fmul fast float %2226, 0x3FBA6F0D00000000
  %2238 = fmul fast float %2230, 0x3FD0432880000000
  %2239 = fmul fast float %1250, 0xBFEF110800000000
  %2240 = fmul fast float %2239, %1851
  %2241 = fadd fast float %2240, 1.000000e+00
  %2242 = fsub fast float %2241, %2237
  %2243 = fadd fast float %2242, %2238
  %2244 = fdiv fast float %2236, %2243
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float %2245, %1250
  %2247 = fmul fast float %2246, %2170
  %2248 = fadd fast float %2247, %1250
  %2249 = fmul fast float %2173, %1957
  %2250 = fmul fast float %2173, %1958
  %2251 = fmul fast float %2173, %1959
  %2252 = fadd fast float %2249, %1242
  %2253 = fadd fast float %2250, %1243
  %2254 = fadd fast float %2251, %1244
  %2255 = fmul fast float %2176, %2012
  %2256 = fadd fast float %2255, %1252
  %2257 = fmul fast float %2179, %2009
  %2258 = fmul fast float %2179, %2010
  %2259 = fmul fast float %2179, %2011
  %2260 = fadd fast float %2257, %1245
  %2261 = fadd fast float %2258, %1246
  %2262 = fadd fast float %2259, %1247
  br label %2291

; <label>:2263                                    ; preds = %2215
  %2264 = icmp eq i32 %2159, 8
  br i1 %2264, label %2265, label %2291

; <label>:2265                                    ; preds = %2263
  %2266 = fmul fast float %2164, %1852
  %2267 = fmul fast float %2164, %1853
  %2268 = fadd fast float %2266, %1234
  %2269 = fadd fast float %2267, %1235
  %2270 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2271 = fsub fast float %2270, %1251
  %2272 = fmul fast float %2271, %2167
  %2273 = fadd fast float %2272, %1251
  %2274 = fsub fast float %1851, %1250
  %2275 = fmul fast float %2170, %2274
  %2276 = fadd fast float %2275, %1250
  %2277 = fmul fast float %2173, %1957
  %2278 = fmul fast float %2173, %1958
  %2279 = fmul fast float %2173, %1959
  %2280 = fadd fast float %2277, %1242
  %2281 = fadd fast float %2278, %1243
  %2282 = fadd fast float %2279, %1244
  %2283 = fmul fast float %2176, %2012
  %2284 = fadd fast float %2283, %1252
  %2285 = fmul fast float %2179, %2009
  %2286 = fmul fast float %2179, %2010
  %2287 = fmul fast float %2179, %2011
  %2288 = fadd fast float %2285, %1245
  %2289 = fadd fast float %2286, %1246
  %2290 = fadd fast float %2287, %1247
  br label %2291

; <label>:2291                                    ; preds = %2265, %2263, %2217, %2181, %2150, %1550, %1254, %1233
  %2292 = phi float [ %1234, %2150 ], [ %1234, %1550 ], [ %1234, %1233 ], [ %2268, %2265 ], [ %1234, %2263 ], [ %2220, %2217 ], [ %2186, %2181 ], [ %1234, %1254 ]
  %2293 = phi float [ %1235, %2150 ], [ %1235, %1550 ], [ %1235, %1233 ], [ %2269, %2265 ], [ %1235, %2263 ], [ %2221, %2217 ], [ %2187, %2181 ], [ %1235, %1254 ]
  %2294 = phi float [ %2151, %2150 ], [ %1236, %1550 ], [ %1236, %1233 ], [ %2151, %2265 ], [ %2151, %2263 ], [ %2151, %2217 ], [ %2151, %2181 ], [ %1236, %1254 ]
  %2295 = phi float [ %2152, %2150 ], [ %1237, %1550 ], [ %1237, %1233 ], [ %2152, %2265 ], [ %2152, %2263 ], [ %2152, %2217 ], [ %2152, %2181 ], [ %1237, %1254 ]
  %2296 = phi float [ %2153, %2150 ], [ %1238, %1550 ], [ %1238, %1233 ], [ %2153, %2265 ], [ %2153, %2263 ], [ %2153, %2217 ], [ %2153, %2181 ], [ %1238, %1254 ]
  %2297 = phi float [ %2154, %2150 ], [ %1239, %1550 ], [ %1239, %1233 ], [ %2154, %2265 ], [ %2154, %2263 ], [ %2154, %2217 ], [ %2154, %2181 ], [ %1239, %1254 ]
  %2298 = phi float [ %2155, %2150 ], [ %1240, %1550 ], [ %1240, %1233 ], [ %2155, %2265 ], [ %2155, %2263 ], [ %2155, %2217 ], [ %2155, %2181 ], [ %1240, %1254 ]
  %2299 = phi float [ %2156, %2150 ], [ %1241, %1550 ], [ %1241, %1233 ], [ %2156, %2265 ], [ %2156, %2263 ], [ %2156, %2217 ], [ %2156, %2181 ], [ %1241, %1254 ]
  %2300 = phi float [ %1242, %2150 ], [ %1242, %1550 ], [ %1242, %1233 ], [ %2280, %2265 ], [ %1242, %2263 ], [ %2252, %2217 ], [ %2200, %2181 ], [ %1242, %1254 ]
  %2301 = phi float [ %1243, %2150 ], [ %1243, %1550 ], [ %1243, %1233 ], [ %2281, %2265 ], [ %1243, %2263 ], [ %2253, %2217 ], [ %2201, %2181 ], [ %1243, %1254 ]
  %2302 = phi float [ %1244, %2150 ], [ %1244, %1550 ], [ %1244, %1233 ], [ %2282, %2265 ], [ %1244, %2263 ], [ %2254, %2217 ], [ %2202, %2181 ], [ %1244, %1254 ]
  %2303 = phi float [ %1245, %2150 ], [ %1245, %1550 ], [ %1245, %1233 ], [ %2288, %2265 ], [ %1245, %2263 ], [ %2260, %2217 ], [ %2212, %2181 ], [ %1245, %1254 ]
  %2304 = phi float [ %1246, %2150 ], [ %1246, %1550 ], [ %1246, %1233 ], [ %2289, %2265 ], [ %1246, %2263 ], [ %2261, %2217 ], [ %2213, %2181 ], [ %1246, %1254 ]
  %2305 = phi float [ %1247, %2150 ], [ %1247, %1550 ], [ %1247, %1233 ], [ %2290, %2265 ], [ %1247, %2263 ], [ %2262, %2217 ], [ %2214, %2181 ], [ %1247, %1254 ]
  %2306 = phi float [ %2157, %2150 ], [ %1248, %1550 ], [ %1248, %1233 ], [ %2157, %2265 ], [ %2157, %2263 ], [ %2157, %2217 ], [ %2157, %2181 ], [ %1248, %1254 ]
  %2307 = phi float [ %1250, %2150 ], [ %1250, %1550 ], [ %1250, %1233 ], [ %2276, %2265 ], [ %1250, %2263 ], [ %2248, %2217 ], [ %2193, %2181 ], [ %1250, %1254 ]
  %2308 = phi float [ %1251, %2150 ], [ %1251, %1550 ], [ %1251, %1233 ], [ %2273, %2265 ], [ %1251, %2263 ], [ %2225, %2217 ], [ %2190, %2181 ], [ %1251, %1254 ]
  %2309 = phi float [ %1252, %2150 ], [ %1252, %1550 ], [ %1252, %1233 ], [ %2284, %2265 ], [ %1252, %2263 ], [ %2256, %2217 ], [ %2205, %2181 ], [ %1252, %1254 ]
  %2310 = phi float [ %2158, %2150 ], [ %1253, %1550 ], [ %1253, %1233 ], [ %2158, %2265 ], [ %2158, %2263 ], [ %2158, %2217 ], [ %2158, %2181 ], [ %1253, %1254 ]
  br i1 %408, label %3348, label %2311

; <label>:2311                                    ; preds = %2291
  %2312 = icmp ult i32 %464, 3
  %2313 = add i32 %56, 56
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %56, 60
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = or i32 %2318, %2315
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %3348, label %2321

; <label>:2321                                    ; preds = %2311
  %2322 = and i32 %2315, 262144
  %2323 = icmp ne i32 %2322, 0
  %2324 = select i1 %2323, float %59, float 1.000000e+00
  %2325 = select i1 %2323, float %60, float 0.000000e+00
  %2326 = select i1 %2323, float %61, float 0.000000e+00
  %2327 = select i1 %2323, float %62, float 1.000000e+00
  %2328 = select i1 %2323, float %63, float %84
  %2329 = select i1 %2323, float %64, float %85
  %2330 = add i32 %56, 316
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = fmul fast float %2334, 0x3F50624DE0000000
  %2336 = add i32 %56, 120
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 16
  %2340 = and i32 %2339, 255
  %2341 = lshr i32 %2338, 24
  %2342 = add i32 %56, 324
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = lshr i32 %2344, 16
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = add i32 %56, 64
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 22
  %2353 = shl nuw nsw i32 %2352, 5
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = shl i32 %2351, 4
  %2356 = and i32 %2355, 32752
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = lshr i32 %2351, 7
  %2359 = and i32 %2358, 32752
  %2360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2359)  ; LegacyF16ToF32(value)
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2363 = fmul fast float %2362, 1.000000e+03
  %2364 = fmul fast float %358, %2363
  %2365 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2366 = fadd fast float %2365, %348
  %2367 = fmul fast float %359, %2363
  %2368 = call float @dx.op.unary.f32(i32 22, float %2367)  ; Frc(value)
  %2369 = fadd fast float %2368, %350
  %2370 = fmul fast float %2335, %2363
  %2371 = call float @dx.op.unary.f32(i32 22, float %2370)  ; Frc(value)
  %2372 = fmul fast float %2371, 0x401921FB60000000
  %2373 = fadd fast float %2372, %2354
  %2374 = call float @dx.op.unary.f32(i32 13, float %2373)  ; Sin(value)
  %2375 = call float @dx.op.unary.f32(i32 12, float %2373)  ; Cos(value)
  %2376 = fsub fast float -0.000000e+00, %2374
  %2377 = fadd fast float %2328, -5.000000e-01
  %2378 = fadd fast float %2329, -5.000000e-01
  %2379 = fmul fast float %2346, %2377
  %2380 = fmul fast float %2348, %2378
  %2381 = fadd fast float %2379, 5.000000e-01
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fmul fast float %2357, %2381
  %2384 = fmul fast float %2360, %2382
  %2385 = fmul fast float %2375, %2383
  %2386 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2384, float %2385)  ; FMad(a,b,c)
  %2387 = fmul fast float %2374, %2383
  %2388 = call float @dx.op.tertiary.f32(i32 46, float %2375, float %2384, float %2387)  ; FMad(a,b,c)
  %2389 = fadd fast float %2366, %2386
  %2390 = fadd fast float %2369, %2388
  %2391 = icmp ugt i32 %2340, 1
  %2392 = icmp ugt i32 %2338, 33554431
  %2393 = or i1 %2392, %2391
  br i1 %2393, label %2394, label %2419

; <label>:2394                                    ; preds = %2321
  %2395 = add i32 %56, 260
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = lshr i32 %2397, 16
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = fmul fast float %2362, %2399
  %2401 = call float @dx.op.unary.f32(i32 22, float %2400)  ; Frc(value)
  %2402 = mul nuw nsw i32 %2340, %2341
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2401, %2403
  %2405 = call float @dx.op.unary.f32(i32 27, float %2404)  ; Round_ni(value)
  %2406 = fptoui float %2405 to i32
  %2407 = urem i32 %2406, %2340
  %2408 = udiv i32 %2406, %2341
  %2409 = call float @dx.op.unary.f32(i32 22, float %2389)  ; Frc(value)
  %2410 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2411 = uitofp i32 %2407 to float
  %2412 = uitofp i32 %2408 to float
  %2413 = fadd fast float %2409, %2411
  %2414 = fadd fast float %2410, %2412
  %2415 = uitofp i32 %2340 to float
  %2416 = uitofp i32 %2341 to float
  %2417 = fdiv fast float %2413, %2415
  %2418 = fdiv fast float %2414, %2416
  br label %2419

; <label>:2419                                    ; preds = %2394, %2321
  %2420 = phi float [ %2417, %2394 ], [ %2389, %2321 ]
  %2421 = phi float [ %2418, %2394 ], [ %2390, %2321 ]
  %2422 = and i32 %2315, 16777216
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2533, label %2424

; <label>:2424                                    ; preds = %2419
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2429 = fadd fast float %2426, %157
  %2430 = fadd fast float %2427, %158
  %2431 = fadd fast float %2428, %159
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = icmp eq i32 %57, 65535
  br i1 %2435, label %2530, label %2436

; <label>:2436                                    ; preds = %2424
  %2437 = lshr i32 %57, 1
  %2438 = shl i32 %2437, 2
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %57, 1
  %2442 = icmp ne i32 %2441, 0
  %2443 = lshr i32 %2440, 16
  %2444 = and i32 %2440, 65535
  %2445 = select i1 %2442, i32 %2443, i32 %2444
  %2446 = icmp eq i32 %2445, 65535
  br i1 %2446, label %2526, label %2447

; <label>:2447                                    ; preds = %2436
  %2448 = mul nuw nsw i32 %2445, 40
  %2449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = add nuw nsw i32 %2448, 12
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2448, 24
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = add nuw nsw i32 %2448, 36
  %2464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = fsub fast float %2429, %2450
  %2467 = fsub fast float %2430, %2451
  %2468 = fsub fast float %2431, %2452
  %2469 = fmul fast float %2465, %2466
  %2470 = fmul fast float %2465, %2467
  %2471 = fmul fast float %2465, %2468
  %2472 = call float @dx.op.unary.f32(i32 27, float %2469)  ; Round_ni(value)
  %2473 = call float @dx.op.unary.f32(i32 27, float %2470)  ; Round_ni(value)
  %2474 = call float @dx.op.unary.f32(i32 27, float %2471)  ; Round_ni(value)
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fmul fast float %2475, %2455
  %2479 = fmul fast float %2476, %2456
  %2480 = fmul fast float %2477, %2457
  %2481 = shl i32 %57, 2
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2487 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2485, %dx.types.Handle %51, float %2486, float %2487, float %2488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = fmul fast float %2490, 1.023000e+03
  %2494 = fmul fast float %2491, 1.023000e+03
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = call float @dx.op.unary.f32(i32 27, float %2496)  ; Round_ni(value)
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = fsub fast float %2469, %2472
  %2503 = fsub fast float %2470, %2473
  %2504 = fsub fast float %2471, %2474
  %2505 = fmul fast float %2502, 7.500000e-01
  %2506 = fmul fast float %2503, 7.500000e-01
  %2507 = fmul fast float %2504, 7.500000e-01
  %2508 = fadd fast float %2472, 1.250000e-01
  %2509 = fadd fast float %2508, %2505
  %2510 = fadd fast float %2509, %2499
  %2511 = fadd fast float %2473, 1.250000e-01
  %2512 = fadd fast float %2511, %2506
  %2513 = fadd fast float %2512, %2500
  %2514 = fadd fast float %2474, 1.250000e-01
  %2515 = fadd fast float %2514, %2507
  %2516 = fadd fast float %2515, %2501
  %2517 = fmul fast float %2510, %2460
  %2518 = fmul fast float %2513, %2461
  %2519 = fmul fast float %2516, %2462
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2523, %dx.types.Handle %49, float %2517, float %2518, float %2519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  br label %2526

; <label>:2526                                    ; preds = %2447, %2436
  %2527 = phi float [ %2525, %2447 ], [ -1.000000e+00, %2436 ]
  %2528 = fadd fast float %2527, %2434
  %2529 = call float @dx.op.unary.f32(i32 7, float %2528)  ; Saturate(value)
  br label %2530

; <label>:2530                                    ; preds = %2526, %2424
  %2531 = phi float [ %2529, %2526 ], [ %2434, %2424 ]
  %2532 = fmul fast float %2531, %460
  br label %2533

; <label>:2533                                    ; preds = %2530, %2419
  %2534 = phi float [ %2532, %2530 ], [ %460, %2419 ]
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 256
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2585, label %2539

; <label>:2539                                    ; preds = %2533
  %2540 = add i32 %56, 448
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = add i32 %2542, 0
  %2544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2544, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2547 = add i32 %56, 132
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = shl i32 %2549, 4
  %2551 = and i32 %2550, 32752
  %2552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2551)  ; LegacyF16ToF32(value)
  %2553 = lshr i32 %2549, 7
  %2554 = and i32 %2553, 32752
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = fsub fast float 1.000000e+00, %2534
  %2557 = call float @dx.op.binary.f32(i32 35, float %2556, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2558 = bitcast float %2534 to i32
  %2559 = sitofp i32 %2558 to float
  %2560 = fadd fast float %2559, 0xC1CFBF8940000000
  %2561 = fmul fast float %2555, %2560
  %2562 = fadd fast float %2561, 0x41CFBF8940000000
  %2563 = fptosi float %2562 to i32
  %2564 = bitcast i32 %2563 to float
  %2565 = bitcast float %2557 to i32
  %2566 = sitofp i32 %2565 to float
  %2567 = fadd fast float %2566, 0xC1CFBF8940000000
  %2568 = fmul fast float %2567, %2555
  %2569 = fadd fast float %2568, 0x41CFBF8940000000
  %2570 = fptosi float %2569 to i32
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2564, %2552
  %2573 = fmul fast float %2571, %2552
  %2574 = fsub fast float %2557, %2572
  %2575 = fadd fast float %2573, %2557
  %2576 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2577 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2578 = fsub fast float %2546, %2576
  %2579 = fsub fast float %2577, %2576
  %2580 = bitcast float %2579 to i32
  %2581 = sub nsw i32 2129859010, %2580
  %2582 = bitcast i32 %2581 to float
  %2583 = fmul fast float %2582, %2578
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  br label %2585

; <label>:2585                                    ; preds = %2539, %2533
  %2586 = phi float [ %2584, %2539 ], [ %2534, %2533 ]
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 128
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %2607, label %2591

; <label>:2591                                    ; preds = %2585
  %2592 = add i32 %56, 432
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %2594, 0
  %2596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2596, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 524288
  %2602 = icmp ne i32 %2601, 0
  %2603 = fcmp fast ogt float %2598, 0x3FE0101020000000
  %2604 = select i1 %2603, float 1.000000e+00, float 0.000000e+00
  %2605 = select i1 %2602, float %2604, float %2598
  %2606 = fmul fast float %2605, %2586
  br label %2607

; <label>:2607                                    ; preds = %2591, %2585
  %2608 = phi float [ %2606, %2591 ], [ %2586, %2585 ]
  %2609 = fcmp fast ult float %2608, 0x3F70101020000000
  br i1 %2609, label %3348, label %2610

; <label>:2610                                    ; preds = %2607
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 16
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2813, label %2615

; <label>:2615                                    ; preds = %2610
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %56, 384
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = extractvalue %dx.types.ResRet.f32 %2623, 3
  %2628 = and i32 %2617, 255
  %2629 = uitofp i32 %2628 to float
  %2630 = lshr i32 %2617, 8
  %2631 = and i32 %2630, 255
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2627, %2629
  %2634 = fadd fast float %2633, %2632
  %2635 = fmul fast float %2634, 0x3F70101000000000
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 512
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2648, label %2640

; <label>:2640                                    ; preds = %2615
  %2641 = add i32 %56, 468
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  br label %2648

; <label>:2648                                    ; preds = %2640, %2615
  %2649 = phi float [ %2647, %2640 ], [ 1.000000e+00, %2615 ]
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 33554432
  %2653 = icmp eq i32 %2652, 0
  br i1 %2653, label %2760, label %2654

; <label>:2654                                    ; preds = %2648
  %2655 = add i32 %56, 256
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, 65535
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = lshr i32 %2657, 16
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = add i32 %56, 260
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 65535
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = lshr i32 %2668, 24
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = and i32 %2668, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2668, 8
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2668, 16
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = add i32 %56, 252
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 24
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = and i32 %2685, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2685, 8
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = lshr i32 %2685, 16
  %2697 = and i32 %2696, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = fmul fast float %2698, 0x3F70101020000000
  %2700 = bitcast float %2624 to i32
  %2701 = ashr i32 %2700, 1
  %2702 = sub nsw i32 1597463174, %2701
  %2703 = bitcast i32 %2702 to float
  %2704 = fmul fast float %2624, 5.000000e-01
  %2705 = fmul fast float %2703, %2703
  %2706 = fmul fast float %2705, %2704
  %2707 = fsub fast float 1.500000e+00, %2706
  %2708 = fmul fast float %2703, %2624
  %2709 = fmul fast float %2708, %2707
  %2710 = bitcast float %2625 to i32
  %2711 = ashr i32 %2710, 1
  %2712 = sub nsw i32 1597463174, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2625, 5.000000e-01
  %2715 = fmul fast float %2713, %2713
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float 1.500000e+00, %2716
  %2718 = fmul fast float %2713, %2625
  %2719 = fmul fast float %2718, %2717
  %2720 = bitcast float %2626 to i32
  %2721 = ashr i32 %2720, 1
  %2722 = sub nsw i32 1597463174, %2721
  %2723 = bitcast i32 %2722 to float
  %2724 = fmul fast float %2626, 5.000000e-01
  %2725 = fmul fast float %2723, %2723
  %2726 = fmul fast float %2725, %2724
  %2727 = fsub fast float 1.500000e+00, %2726
  %2728 = fmul fast float %2723, %2626
  %2729 = fmul fast float %2728, %2727
  %2730 = fsub fast float %2709, %2691
  %2731 = fsub fast float %2719, %2695
  %2732 = fsub fast float %2729, %2699
  %2733 = fmul fast float %2730, %2659
  %2734 = fmul fast float %2731, %2661
  %2735 = fmul fast float %2732, %2666
  %2736 = fadd fast float %2733, %2674
  %2737 = fadd fast float %2734, %2678
  %2738 = fadd fast float %2735, %2682
  %2739 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2740 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2741 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2742 = fmul fast float %2739, %2739
  %2743 = fmul fast float %2740, %2740
  %2744 = fmul fast float %2741, %2741
  %2745 = fsub fast float %2742, %2624
  %2746 = fsub fast float %2743, %2625
  %2747 = fsub fast float %2744, %2626
  %2748 = fmul fast float %2745, %2649
  %2749 = fmul fast float %2746, %2649
  %2750 = fmul fast float %2747, %2649
  %2751 = fadd fast float %2748, %2624
  %2752 = fadd fast float %2749, %2625
  %2753 = fadd fast float %2750, %2626
  %2754 = fadd fast float %2671, %2635
  %2755 = fsub fast float %2754, %2688
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fsub fast float %2756, %2635
  %2758 = fmul fast float %2757, %2649
  %2759 = fadd fast float %2758, %2635
  br label %2813

; <label>:2760                                    ; preds = %2648
  %2761 = and i32 %2651, 134217728
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %2797, label %2763

; <label>:2763                                    ; preds = %2760
  %2764 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fmul fast float %2767, %2649
  %2771 = fmul fast float %2768, %2649
  %2772 = fmul fast float %2769, %2649
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = call float @dx.op.unary.f32(i32 24, float %2624)  ; Sqrt(value)
  %2777 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2778 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2779 = fmul fast float %2773, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2776
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2776
  %2784 = fmul fast float %2774, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2777
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2777
  %2789 = fmul fast float %2775, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2778
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2778
  %2794 = fmul fast float %2783, %2783
  %2795 = fmul fast float %2788, %2788
  %2796 = fmul fast float %2793, %2793
  br label %2813

; <label>:2797                                    ; preds = %2760
  %2798 = fmul fast float %335, %335
  %2799 = fmul fast float %339, %339
  %2800 = fmul fast float %343, %343
  %2801 = fadd fast float %2798, -1.000000e+00
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fmul fast float %2649, %2801
  %2805 = fmul fast float %2649, %2802
  %2806 = fmul fast float %2649, %2803
  %2807 = fadd fast float %2804, 1.000000e+00
  %2808 = fadd fast float %2805, 1.000000e+00
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fmul fast float %2807, %2624
  %2811 = fmul fast float %2808, %2625
  %2812 = fmul fast float %2809, %2626
  br label %2813

; <label>:2813                                    ; preds = %2797, %2763, %2654, %2610
  %2814 = phi float [ %2759, %2654 ], [ %2635, %2763 ], [ %2635, %2797 ], [ 0x3FA23C0BE0000000, %2610 ]
  %2815 = phi float [ %2751, %2654 ], [ %2794, %2763 ], [ %2810, %2797 ], [ 1.000000e+00, %2610 ]
  %2816 = phi float [ %2752, %2654 ], [ %2795, %2763 ], [ %2811, %2797 ], [ 1.000000e+00, %2610 ]
  %2817 = phi float [ %2753, %2654 ], [ %2796, %2763 ], [ %2812, %2797 ], [ 1.000000e+00, %2610 ]
  %2818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.i32 %2818, 1
  %2820 = and i32 %2819, 1
  %2821 = icmp ne i32 %2820, 0
  %2822 = add i32 %56, 356
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 32
  %2826 = icmp ne i32 %2825, 0
  %2827 = and i1 %2821, %2826
  %2828 = select i1 %2827, float 1.000000e+00, float %2815
  %2829 = select i1 %2827, float 0x3FD3333340000000, float %2816
  %2830 = select i1 %2827, float 0x3FD3333340000000, float %2817
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 32
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2907, label %2835

; <label>:2835                                    ; preds = %2813
  %2836 = add i32 %56, 124
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = add i32 %56, 400
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %2841, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2843, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.f32 %2844, 1
  %2847 = extractvalue %dx.types.ResRet.f32 %2844, 2
  %2848 = extractvalue %dx.types.ResRet.f32 %2844, 3
  %2849 = and i32 %2838, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = lshr i32 %2838, 8
  %2852 = and i32 %2851, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2838, 16
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F70101000000000
  %2858 = fmul fast float %2845, %2850
  %2859 = fadd fast float %2858, %2853
  %2860 = fmul fast float %2859, 0x3F70101000000000
  %2861 = fadd fast float %2846, -5.000000e-01
  %2862 = fadd fast float %2848, -5.000000e-01
  %2863 = fmul fast float %2861, %2857
  %2864 = fmul fast float %2862, %2857
  %2865 = fadd fast float %2863, 5.000000e-01
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = fmul fast float %2865, 2.000000e+00
  %2868 = fadd fast float %2867, -1.000000e+00
  %2869 = fmul fast float %2866, 2.000000e+00
  %2870 = fadd fast float %2869, -1.000000e+00
  %2871 = fadd fast float %2868, %2870
  %2872 = fmul fast float %2871, 5.000000e-01
  %2873 = fsub fast float %2868, %2870
  %2874 = fmul fast float %2873, 5.000000e-01
  %2875 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2876 = fsub fast float 1.000000e+00, %2875
  %2877 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2878 = fsub fast float %2876, %2877
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2874, float %2878, float %2872, float %2874, float %2878)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = call float @dx.op.unary.f32(i32 25, float %2879)  ; Rsqrt(value)
  %2881 = fmul fast float %2872, %2880
  %2882 = fmul fast float %2874, %2880
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 67108864
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2903, label %2887

; <label>:2887                                    ; preds = %2835
  %2888 = add i32 %56, 312
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 65535
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 65535
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = lshr i32 %2890, 16
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = fsub fast float %2860, %2898
  %2900 = fmul fast float %2899, %2892
  %2901 = fadd fast float %2900, %2896
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  br label %2903

; <label>:2903                                    ; preds = %2887, %2835
  %2904 = phi float [ %2902, %2887 ], [ %2860, %2835 ]
  %2905 = call float @dx.op.dot2.f32(i32 54, float %2881, float %2882, float %2324, float %2325)  ; Dot2(ax,ay,bx,by)
  %2906 = call float @dx.op.dot2.f32(i32 54, float %2881, float %2882, float %2326, float %2327)  ; Dot2(ax,ay,bx,by)
  br label %2907

; <label>:2907                                    ; preds = %2903, %2813
  %2908 = phi float [ %2904, %2903 ], [ 0x3FD6666660000000, %2813 ]
  %2909 = phi float [ %2905, %2903 ], [ 0.000000e+00, %2813 ]
  %2910 = phi float [ %2906, %2903 ], [ 0.000000e+00, %2813 ]
  %2911 = phi float [ %2847, %2903 ], [ 1.000000e+00, %2813 ]
  %2912 = add i32 %56, 192
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 22
  %2916 = shl nuw nsw i32 %2915, 5
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 64
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %2955, label %2922

; <label>:2922                                    ; preds = %2907
  %2923 = add i32 %56, 416
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 131072
  %2931 = icmp eq i32 %2930, 0
  %2932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = fmul fast float %2933, %323
  %2937 = fmul fast float %2934, %326
  %2938 = fmul fast float %2935, %329
  br i1 %2931, label %2945, label %2939

; <label>:2939                                    ; preds = %2922
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = fmul fast float %2941, %2936
  %2943 = fmul fast float %2941, %2937
  %2944 = fmul fast float %2941, %2938
  br label %2945

; <label>:2945                                    ; preds = %2939, %2922
  %2946 = phi float [ %2942, %2939 ], [ %2936, %2922 ]
  %2947 = phi float [ %2943, %2939 ], [ %2937, %2922 ]
  %2948 = phi float [ %2944, %2939 ], [ %2938, %2922 ]
  %2949 = fmul fast float %2946, %2917
  %2950 = select i1 %219, float %2949, float %2946
  %2951 = call float @dx.op.dot3.f32(i32 55, float %2950, float %2947, float %2948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2952 = select i1 %219, float 0.000000e+00, float %2946
  %2953 = select i1 %219, float %2951, float %2947
  %2954 = select i1 %219, float 0.000000e+00, float %2948
  br label %2955

; <label>:2955                                    ; preds = %2945, %2907
  %2956 = phi float [ %2952, %2945 ], [ 0.000000e+00, %2907 ]
  %2957 = phi float [ %2953, %2945 ], [ 0.000000e+00, %2907 ]
  %2958 = phi float [ %2954, %2945 ], [ 0.000000e+00, %2907 ]
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 1024
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2993, label %2963

; <label>:2963                                    ; preds = %2955
  %2964 = add i32 %56, 184
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2966, 8
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2966, 16
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = fmul fast float %2969, %2969
  %2979 = fmul fast float %2973, %2973
  %2980 = fmul fast float %2977, %2977
  %2981 = add i32 %56, 484
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2985, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = fmul fast float %2978, %2987
  %2991 = fmul fast float %2979, %2988
  %2992 = fmul fast float %2980, %2989
  br label %2993

; <label>:2993                                    ; preds = %2963, %2955
  %2994 = phi float [ %2990, %2963 ], [ 0.000000e+00, %2955 ]
  %2995 = phi float [ %2991, %2963 ], [ 0.000000e+00, %2955 ]
  %2996 = phi float [ %2992, %2963 ], [ 0.000000e+00, %2955 ]
  %2997 = fcmp fast ogt float %2994, 0.000000e+00
  %2998 = fcmp fast ogt float %2995, 0.000000e+00
  %2999 = fcmp fast ogt float %2996, 0.000000e+00
  %3000 = call float @dx.op.unary.f32(i32 23, float %2994)  ; Log(value)
  %3001 = call float @dx.op.unary.f32(i32 23, float %2995)  ; Log(value)
  %3002 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = lshr i32 %3004, 7
  %3006 = and i32 %3005, 32752
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = fmul fast float %3000, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3007
  %3010 = fmul fast float %3001, 0xBFE62E4300000000
  %3011 = fmul fast float %3010, %3007
  %3012 = fmul fast float %3002, 0xBFE62E4300000000
  %3013 = fmul fast float %3012, %3007
  %3014 = select i1 %2997, float %3009, float 1.270000e+02
  %3015 = select i1 %2998, float %3011, float 1.270000e+02
  %3016 = select i1 %2999, float %3013, float 1.270000e+02
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 10240
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3065, label %3021

; <label>:3021                                    ; preds = %2993
  %3022 = add i32 %56, 500
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 3
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 1048576
  %3033 = icmp ne i32 %3032, 0
  %3034 = and i32 %3031, 8192
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3051, label %3036

; <label>:3036                                    ; preds = %3021
  %3037 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3038 = select i1 %3033, float %3037, float %3028
  %3039 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3040 = select i1 %3033, float %3039, float %3028
  %3041 = add i32 %56, 128
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = lshr i32 %3043, 16
  %3045 = and i32 %3044, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = fmul fast float %3046, 0x3F80101020000000
  %3048 = fmul fast float %3047, %3040
  %3049 = fmul fast float %3047, %3028
  %3050 = fmul fast float %3047, %3038
  br label %3051

; <label>:3051                                    ; preds = %3036, %3021
  %3052 = phi float [ %3048, %3036 ], [ 0.000000e+00, %3021 ]
  %3053 = phi float [ %3049, %3036 ], [ 0.000000e+00, %3021 ]
  %3054 = phi float [ %3050, %3036 ], [ 0.000000e+00, %3021 ]
  %3055 = and i32 %3031, 2048
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3065, label %3057

; <label>:3057                                    ; preds = %3051
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = shl i32 %3059, 4
  %3061 = and i32 %3060, 32752
  %3062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3061)  ; LegacyF16ToF32(value)
  %3063 = fmul fast float %3062, %3029
  %3064 = call float @dx.op.binary.f32(i32 35, float %3063, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3065

; <label>:3065                                    ; preds = %3057, %3051, %2993
  %3066 = phi float [ %3052, %3057 ], [ %3052, %3051 ], [ 0.000000e+00, %2993 ]
  %3067 = phi float [ %3053, %3057 ], [ %3053, %3051 ], [ 0.000000e+00, %2993 ]
  %3068 = phi float [ %3054, %3057 ], [ %3054, %3051 ], [ 0.000000e+00, %2993 ]
  %3069 = phi float [ %3064, %3057 ], [ 0x3F70101020000000, %3051 ], [ 0x3F70101020000000, %2993 ]
  %3070 = add i32 %56, 128
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3072, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fmul fast float %3077, %3078
  %3080 = fadd fast float %3079, %3074
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  br i1 %2312, label %3083, label %3118

; <label>:3083                                    ; preds = %3065
  %3084 = fmul fast float %3069, 2.000000e+00
  %3085 = fcmp fast olt float %3014, 1.270000e+02
  %3086 = fcmp fast olt float %3015, 1.270000e+02
  %3087 = fcmp fast olt float %3016, 1.270000e+02
  %3088 = fmul fast float %3014, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3084
  %3090 = fmul fast float %3015, 0xBFF7154760000000
  %3091 = fmul fast float %3090, %3084
  %3092 = fmul fast float %3016, 0xBFF7154760000000
  %3093 = fmul fast float %3092, %3084
  %3094 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3095 = call float @dx.op.unary.f32(i32 21, float %3091)  ; Exp(value)
  %3096 = call float @dx.op.unary.f32(i32 21, float %3093)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3099 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = select i1 %3085, float %3100, float -1.000000e+00
  %3102 = fadd fast float %3098, -1.000000e+00
  %3103 = select i1 %3086, float %3102, float -1.000000e+00
  %3104 = fadd fast float %3099, -1.000000e+00
  %3105 = select i1 %3087, float %3104, float -1.000000e+00
  %3106 = fmul fast float %3101, %2608
  %3107 = fmul fast float %3103, %2608
  %3108 = fmul fast float %3105, %2608
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fmul fast float %3109, %2294
  %3113 = fmul fast float %3110, %2295
  %3114 = fmul fast float %3111, %2296
  %3115 = fmul fast float %3109, %2297
  %3116 = fmul fast float %3110, %2298
  %3117 = fmul fast float %3111, %2299
  br label %3118

; <label>:3118                                    ; preds = %3083, %3065
  %3119 = phi float [ %3112, %3083 ], [ %2294, %3065 ]
  %3120 = phi float [ %3113, %3083 ], [ %2295, %3065 ]
  %3121 = phi float [ %3114, %3083 ], [ %2296, %3065 ]
  %3122 = phi float [ %3115, %3083 ], [ %2297, %3065 ]
  %3123 = phi float [ %3116, %3083 ], [ %2298, %3065 ]
  %3124 = phi float [ %3117, %3083 ], [ %2299, %3065 ]
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 3
  %3128 = icmp eq i32 %3127, 3
  br i1 %3128, label %3207, label %3129

; <label>:3129                                    ; preds = %3118
  %3130 = and i32 %3126, 16
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2608, float 0.000000e+00
  %3133 = icmp eq i32 %3127, 0
  br i1 %3133, label %3134, label %3162

; <label>:3134                                    ; preds = %3129
  %3135 = and i32 %3126, 64
  %3136 = icmp ne i32 %3135, 0
  %3137 = select i1 %3136, float %2608, float 0.000000e+00
  %3138 = fsub fast float %2828, %3119
  %3139 = fsub fast float %2829, %3120
  %3140 = fsub fast float %2830, %3121
  %3141 = fmul fast float %3132, %3138
  %3142 = fmul fast float %3132, %3139
  %3143 = fmul fast float %3132, %3140
  %3144 = fadd fast float %3141, %3119
  %3145 = fadd fast float %3142, %3120
  %3146 = fadd fast float %3143, %3121
  %3147 = fsub fast float %2814, %2306
  %3148 = fmul fast float %3132, %3147
  %3149 = fadd fast float %3148, %2306
  %3150 = fsub fast float %2956, %3122
  %3151 = fsub fast float %2957, %3123
  %3152 = fsub fast float %2958, %3124
  %3153 = fmul fast float %3137, %3150
  %3154 = fmul fast float %3137, %3151
  %3155 = fmul fast float %3137, %3152
  %3156 = fadd fast float %3153, %3122
  %3157 = fadd fast float %3154, %3123
  %3158 = fadd fast float %3155, %3124
  %3159 = fsub fast float %3082, %2310
  %3160 = fmul fast float %3132, %3159
  %3161 = fadd fast float %3160, %2310
  br label %3207

; <label>:3162                                    ; preds = %3129
  %3163 = icmp eq i32 %3127, 1
  br i1 %3163, label %3164, label %3177

; <label>:3164                                    ; preds = %3162
  %3165 = fadd fast float %2828, -1.000000e+00
  %3166 = fadd fast float %2829, -1.000000e+00
  %3167 = fadd fast float %2830, -1.000000e+00
  %3168 = fmul fast float %3132, %3165
  %3169 = fmul fast float %3132, %3166
  %3170 = fmul fast float %3132, %3167
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fmul fast float %3171, %3119
  %3175 = fmul fast float %3172, %3120
  %3176 = fmul fast float %3173, %3121
  br label %3207

; <label>:3177                                    ; preds = %3162
  %3178 = icmp eq i32 %3127, 2
  br i1 %3178, label %3179, label %3207

; <label>:3179                                    ; preds = %3177
  %3180 = call float @dx.op.unary.f32(i32 24, float %2828)  ; Sqrt(value)
  %3181 = call float @dx.op.unary.f32(i32 24, float %2829)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fmul fast float %3183, %3132
  %3187 = fmul fast float %3184, %3132
  %3188 = fmul fast float %3185, %3132
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fmul fast float %3189, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3119
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3119
  %3197 = fmul fast float %3190, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3120
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3120
  %3202 = fmul fast float %3191, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3121
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3121
  br label %3207

; <label>:3207                                    ; preds = %3179, %3177, %3164, %3134, %3118
  %3208 = phi float [ %3119, %3118 ], [ %3196, %3179 ], [ %3119, %3177 ], [ %3174, %3164 ], [ %3144, %3134 ]
  %3209 = phi float [ %3120, %3118 ], [ %3201, %3179 ], [ %3120, %3177 ], [ %3175, %3164 ], [ %3145, %3134 ]
  %3210 = phi float [ %3121, %3118 ], [ %3206, %3179 ], [ %3121, %3177 ], [ %3176, %3164 ], [ %3146, %3134 ]
  %3211 = phi float [ %3122, %3118 ], [ %3122, %3179 ], [ %3122, %3177 ], [ %3122, %3164 ], [ %3156, %3134 ]
  %3212 = phi float [ %3123, %3118 ], [ %3123, %3179 ], [ %3123, %3177 ], [ %3123, %3164 ], [ %3157, %3134 ]
  %3213 = phi float [ %3124, %3118 ], [ %3124, %3179 ], [ %3124, %3177 ], [ %3124, %3164 ], [ %3158, %3134 ]
  %3214 = phi float [ %2306, %3118 ], [ %2306, %3179 ], [ %2306, %3177 ], [ %2306, %3164 ], [ %3149, %3134 ]
  %3215 = phi float [ %2310, %3118 ], [ %2310, %3179 ], [ %2310, %3177 ], [ %2310, %3164 ], [ %3161, %3134 ]
  %3216 = and i32 %3126, 12
  %3217 = icmp eq i32 %3216, 12
  br i1 %3217, label %3348, label %3218

; <label>:3218                                    ; preds = %3207
  %3219 = and i32 %3126, 2097184
  %3220 = icmp eq i32 %3219, 2097184
  %3221 = select i1 %3220, float %2608, float 0.000000e+00
  %3222 = and i32 %3126, 4194336
  %3223 = icmp eq i32 %3222, 4194336
  %3224 = select i1 %3223, float %2608, float 0.000000e+00
  %3225 = and i32 %3126, 8388640
  %3226 = icmp eq i32 %3225, 8388640
  %3227 = select i1 %3226, float %2608, float 0.000000e+00
  %3228 = and i32 %3126, 1024
  %3229 = icmp ne i32 %3228, 0
  %3230 = select i1 %3229, float %2608, float 0.000000e+00
  %3231 = and i32 %3126, 2048
  %3232 = icmp ne i32 %3231, 0
  %3233 = select i1 %3232, float %2608, float 0.000000e+00
  %3234 = and i32 %3126, 8192
  %3235 = icmp ne i32 %3234, 0
  %3236 = select i1 %3235, float %2608, float 0.000000e+00
  %3237 = icmp eq i32 %3216, 0
  br i1 %3237, label %3238, label %3272

; <label>:3238                                    ; preds = %3218
  %3239 = fsub fast float %2909, %2292
  %3240 = fsub fast float %2910, %2293
  %3241 = fmul fast float %3221, %3239
  %3242 = fmul fast float %3221, %3240
  %3243 = fadd fast float %3241, %2292
  %3244 = fadd fast float %3242, %2293
  %3245 = fsub fast float %2911, %2308
  %3246 = fmul fast float %3224, %3245
  %3247 = fadd fast float %3246, %2308
  %3248 = fsub fast float %2908, %2307
  %3249 = fmul fast float %3227, %3248
  %3250 = fadd fast float %3249, %2307
  %3251 = fsub fast float %3014, %2300
  %3252 = fsub fast float %3015, %2301
  %3253 = fsub fast float %3016, %2302
  %3254 = fmul fast float %3230, %3251
  %3255 = fmul fast float %3230, %3252
  %3256 = fmul fast float %3230, %3253
  %3257 = fadd fast float %3254, %2300
  %3258 = fadd fast float %3255, %2301
  %3259 = fadd fast float %3256, %2302
  %3260 = fsub fast float %3069, %2309
  %3261 = fmul fast float %3233, %3260
  %3262 = fadd fast float %3261, %2309
  %3263 = fsub fast float %3066, %2303
  %3264 = fsub fast float %3067, %2304
  %3265 = fsub fast float %3068, %2305
  %3266 = fmul fast float %3236, %3263
  %3267 = fmul fast float %3236, %3264
  %3268 = fmul fast float %3236, %3265
  %3269 = fadd fast float %3266, %2303
  %3270 = fadd fast float %3267, %2304
  %3271 = fadd fast float %3268, %2305
  br label %3348

; <label>:3272                                    ; preds = %3218
  %3273 = icmp eq i32 %3216, 4
  br i1 %3273, label %3274, label %3320

; <label>:3274                                    ; preds = %3272
  %3275 = fmul fast float %3221, %2909
  %3276 = fmul fast float %3221, %2910
  %3277 = fadd fast float %3275, %2292
  %3278 = fadd fast float %3276, %2293
  %3279 = call float @dx.op.binary.f32(i32 36, float %2308, float %2911)  ; FMin(a,b)
  %3280 = fsub fast float %3279, %2308
  %3281 = fmul fast float %3280, %3224
  %3282 = fadd fast float %3281, %2308
  %3283 = fadd fast float %2908, %2307
  %3284 = fmul fast float %3283, 0x3FF337FAE0000000
  %3285 = fmul fast float %2307, %2307
  %3286 = fmul fast float %2908, %2908
  %3287 = fadd fast float %3286, %3285
  %3288 = fmul fast float %3287, 0x3FE5152B00000000
  %3289 = fmul fast float %2307, 0xBFCC1F85E0000000
  %3290 = fmul fast float %3289, %2908
  %3291 = fadd fast float %3290, 0xBFE1363700000000
  %3292 = fadd fast float %3291, %3284
  %3293 = fsub fast float %3292, %3288
  %3294 = fmul fast float %3283, 0x3FBA6F0D00000000
  %3295 = fmul fast float %3287, 0x3FD0432880000000
  %3296 = fmul fast float %2307, 0xBFEF110800000000
  %3297 = fmul fast float %3296, %2908
  %3298 = fadd fast float %3297, 1.000000e+00
  %3299 = fsub fast float %3298, %3294
  %3300 = fadd fast float %3299, %3295
  %3301 = fdiv fast float %3293, %3300
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fsub fast float %3302, %2307
  %3304 = fmul fast float %3303, %3227
  %3305 = fadd fast float %3304, %2307
  %3306 = fmul fast float %3230, %3014
  %3307 = fmul fast float %3230, %3015
  %3308 = fmul fast float %3230, %3016
  %3309 = fadd fast float %3306, %2300
  %3310 = fadd fast float %3307, %2301
  %3311 = fadd fast float %3308, %2302
  %3312 = fmul fast float %3233, %3069
  %3313 = fadd fast float %3312, %2309
  %3314 = fmul fast float %3236, %3066
  %3315 = fmul fast float %3236, %3067
  %3316 = fmul fast float %3236, %3068
  %3317 = fadd fast float %3314, %2303
  %3318 = fadd fast float %3315, %2304
  %3319 = fadd fast float %3316, %2305
  br label %3348

; <label>:3320                                    ; preds = %3272
  %3321 = icmp eq i32 %3216, 8
  br i1 %3321, label %3322, label %3348

; <label>:3322                                    ; preds = %3320
  %3323 = fmul fast float %3221, %2909
  %3324 = fmul fast float %3221, %2910
  %3325 = fadd fast float %3323, %2292
  %3326 = fadd fast float %3324, %2293
  %3327 = call float @dx.op.binary.f32(i32 36, float %2308, float %2911)  ; FMin(a,b)
  %3328 = fsub fast float %3327, %2308
  %3329 = fmul fast float %3328, %3224
  %3330 = fadd fast float %3329, %2308
  %3331 = fsub fast float %2908, %2307
  %3332 = fmul fast float %3227, %3331
  %3333 = fadd fast float %3332, %2307
  %3334 = fmul fast float %3230, %3014
  %3335 = fmul fast float %3230, %3015
  %3336 = fmul fast float %3230, %3016
  %3337 = fadd fast float %3334, %2300
  %3338 = fadd fast float %3335, %2301
  %3339 = fadd fast float %3336, %2302
  %3340 = fmul fast float %3233, %3069
  %3341 = fadd fast float %3340, %2309
  %3342 = fmul fast float %3236, %3066
  %3343 = fmul fast float %3236, %3067
  %3344 = fmul fast float %3236, %3068
  %3345 = fadd fast float %3342, %2303
  %3346 = fadd fast float %3343, %2304
  %3347 = fadd fast float %3344, %2305
  br label %3348

; <label>:3348                                    ; preds = %3322, %3320, %3274, %3238, %3207, %2607, %2311, %2291
  %3349 = phi float [ %2292, %3207 ], [ %2292, %2607 ], [ %2292, %2291 ], [ %3325, %3322 ], [ %2292, %3320 ], [ %3277, %3274 ], [ %3243, %3238 ], [ %2292, %2311 ]
  %3350 = phi float [ %2293, %3207 ], [ %2293, %2607 ], [ %2293, %2291 ], [ %3326, %3322 ], [ %2293, %3320 ], [ %3278, %3274 ], [ %3244, %3238 ], [ %2293, %2311 ]
  %3351 = phi float [ %3208, %3207 ], [ %2294, %2607 ], [ %2294, %2291 ], [ %3208, %3322 ], [ %3208, %3320 ], [ %3208, %3274 ], [ %3208, %3238 ], [ %2294, %2311 ]
  %3352 = phi float [ %3209, %3207 ], [ %2295, %2607 ], [ %2295, %2291 ], [ %3209, %3322 ], [ %3209, %3320 ], [ %3209, %3274 ], [ %3209, %3238 ], [ %2295, %2311 ]
  %3353 = phi float [ %3210, %3207 ], [ %2296, %2607 ], [ %2296, %2291 ], [ %3210, %3322 ], [ %3210, %3320 ], [ %3210, %3274 ], [ %3210, %3238 ], [ %2296, %2311 ]
  %3354 = phi float [ %3211, %3207 ], [ %2297, %2607 ], [ %2297, %2291 ], [ %3211, %3322 ], [ %3211, %3320 ], [ %3211, %3274 ], [ %3211, %3238 ], [ %2297, %2311 ]
  %3355 = phi float [ %3212, %3207 ], [ %2298, %2607 ], [ %2298, %2291 ], [ %3212, %3322 ], [ %3212, %3320 ], [ %3212, %3274 ], [ %3212, %3238 ], [ %2298, %2311 ]
  %3356 = phi float [ %3213, %3207 ], [ %2299, %2607 ], [ %2299, %2291 ], [ %3213, %3322 ], [ %3213, %3320 ], [ %3213, %3274 ], [ %3213, %3238 ], [ %2299, %2311 ]
  %3357 = phi float [ %2300, %3207 ], [ %2300, %2607 ], [ %2300, %2291 ], [ %3337, %3322 ], [ %2300, %3320 ], [ %3309, %3274 ], [ %3257, %3238 ], [ %2300, %2311 ]
  %3358 = phi float [ %2301, %3207 ], [ %2301, %2607 ], [ %2301, %2291 ], [ %3338, %3322 ], [ %2301, %3320 ], [ %3310, %3274 ], [ %3258, %3238 ], [ %2301, %2311 ]
  %3359 = phi float [ %2302, %3207 ], [ %2302, %2607 ], [ %2302, %2291 ], [ %3339, %3322 ], [ %2302, %3320 ], [ %3311, %3274 ], [ %3259, %3238 ], [ %2302, %2311 ]
  %3360 = phi float [ %2303, %3207 ], [ %2303, %2607 ], [ %2303, %2291 ], [ %3345, %3322 ], [ %2303, %3320 ], [ %3317, %3274 ], [ %3269, %3238 ], [ %2303, %2311 ]
  %3361 = phi float [ %2304, %3207 ], [ %2304, %2607 ], [ %2304, %2291 ], [ %3346, %3322 ], [ %2304, %3320 ], [ %3318, %3274 ], [ %3270, %3238 ], [ %2304, %2311 ]
  %3362 = phi float [ %2305, %3207 ], [ %2305, %2607 ], [ %2305, %2291 ], [ %3347, %3322 ], [ %2305, %3320 ], [ %3319, %3274 ], [ %3271, %3238 ], [ %2305, %2311 ]
  %3363 = phi float [ %3214, %3207 ], [ %2306, %2607 ], [ %2306, %2291 ], [ %3214, %3322 ], [ %3214, %3320 ], [ %3214, %3274 ], [ %3214, %3238 ], [ %2306, %2311 ]
  %3364 = phi float [ %2307, %3207 ], [ %2307, %2607 ], [ %2307, %2291 ], [ %3333, %3322 ], [ %2307, %3320 ], [ %3305, %3274 ], [ %3250, %3238 ], [ %2307, %2311 ]
  %3365 = phi float [ %2308, %3207 ], [ %2308, %2607 ], [ %2308, %2291 ], [ %3330, %3322 ], [ %2308, %3320 ], [ %3282, %3274 ], [ %3247, %3238 ], [ %2308, %2311 ]
  %3366 = phi float [ %2309, %3207 ], [ %2309, %2607 ], [ %2309, %2291 ], [ %3341, %3322 ], [ %2309, %3320 ], [ %3313, %3274 ], [ %3262, %3238 ], [ %2309, %2311 ]
  %3367 = phi float [ %3215, %3207 ], [ %2310, %2607 ], [ %2310, %2291 ], [ %3215, %3322 ], [ %3215, %3320 ], [ %3215, %3274 ], [ %3215, %3238 ], [ %2310, %2311 ]
  br i1 %410, label %4405, label %3368

; <label>:3368                                    ; preds = %3348
  %3369 = icmp ult i32 %464, 4
  %3370 = add i32 %56, 72
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %56, 76
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = or i32 %3375, %3372
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %4405, label %3378

; <label>:3378                                    ; preds = %3368
  %3379 = and i32 %3372, 262144
  %3380 = icmp ne i32 %3379, 0
  %3381 = select i1 %3380, float %59, float 1.000000e+00
  %3382 = select i1 %3380, float %60, float 0.000000e+00
  %3383 = select i1 %3380, float %61, float 0.000000e+00
  %3384 = select i1 %3380, float %62, float 1.000000e+00
  %3385 = select i1 %3380, float %63, float %84
  %3386 = select i1 %3380, float %64, float %85
  %3387 = add i32 %56, 332
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 16
  %3391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3390)  ; LegacyF16ToF32(value)
  %3392 = fmul fast float %3391, 0x3F50624DE0000000
  %3393 = add i32 %56, 136
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 16
  %3397 = and i32 %3396, 255
  %3398 = lshr i32 %3395, 24
  %3399 = add i32 %56, 340
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 65535
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = lshr i32 %3401, 16
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = add i32 %56, 80
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = lshr i32 %3408, 22
  %3410 = shl nuw nsw i32 %3409, 5
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = shl i32 %3408, 4
  %3413 = and i32 %3412, 32752
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = lshr i32 %3408, 7
  %3416 = and i32 %3415, 32752
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3420 = fmul fast float %3419, 1.000000e+03
  %3421 = fmul fast float %400, %3420
  %3422 = call float @dx.op.unary.f32(i32 22, float %3421)  ; Frc(value)
  %3423 = fadd fast float %3422, %390
  %3424 = fmul fast float %401, %3420
  %3425 = call float @dx.op.unary.f32(i32 22, float %3424)  ; Frc(value)
  %3426 = fadd fast float %3425, %392
  %3427 = fmul fast float %3392, %3420
  %3428 = call float @dx.op.unary.f32(i32 22, float %3427)  ; Frc(value)
  %3429 = fmul fast float %3428, 0x401921FB60000000
  %3430 = fadd fast float %3429, %3411
  %3431 = call float @dx.op.unary.f32(i32 13, float %3430)  ; Sin(value)
  %3432 = call float @dx.op.unary.f32(i32 12, float %3430)  ; Cos(value)
  %3433 = fsub fast float -0.000000e+00, %3431
  %3434 = fadd fast float %3385, -5.000000e-01
  %3435 = fadd fast float %3386, -5.000000e-01
  %3436 = fmul fast float %3403, %3434
  %3437 = fmul fast float %3405, %3435
  %3438 = fadd fast float %3436, 5.000000e-01
  %3439 = fadd fast float %3437, 5.000000e-01
  %3440 = fmul fast float %3414, %3438
  %3441 = fmul fast float %3417, %3439
  %3442 = fmul fast float %3432, %3440
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3441, float %3442)  ; FMad(a,b,c)
  %3444 = fmul fast float %3431, %3440
  %3445 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3441, float %3444)  ; FMad(a,b,c)
  %3446 = fadd fast float %3423, %3443
  %3447 = fadd fast float %3426, %3445
  %3448 = icmp ugt i32 %3397, 1
  %3449 = icmp ugt i32 %3395, 33554431
  %3450 = or i1 %3449, %3448
  br i1 %3450, label %3451, label %3476

; <label>:3451                                    ; preds = %3378
  %3452 = add i32 %56, 276
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = lshr i32 %3454, 16
  %3456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3455)  ; LegacyF16ToF32(value)
  %3457 = fmul fast float %3419, %3456
  %3458 = call float @dx.op.unary.f32(i32 22, float %3457)  ; Frc(value)
  %3459 = mul nuw nsw i32 %3397, %3398
  %3460 = uitofp i32 %3459 to float
  %3461 = fmul fast float %3458, %3460
  %3462 = call float @dx.op.unary.f32(i32 27, float %3461)  ; Round_ni(value)
  %3463 = fptoui float %3462 to i32
  %3464 = urem i32 %3463, %3397
  %3465 = udiv i32 %3463, %3398
  %3466 = call float @dx.op.unary.f32(i32 22, float %3446)  ; Frc(value)
  %3467 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3468 = uitofp i32 %3464 to float
  %3469 = uitofp i32 %3465 to float
  %3470 = fadd fast float %3466, %3468
  %3471 = fadd fast float %3467, %3469
  %3472 = uitofp i32 %3397 to float
  %3473 = uitofp i32 %3398 to float
  %3474 = fdiv fast float %3470, %3472
  %3475 = fdiv fast float %3471, %3473
  br label %3476

; <label>:3476                                    ; preds = %3451, %3378
  %3477 = phi float [ %3474, %3451 ], [ %3446, %3378 ]
  %3478 = phi float [ %3475, %3451 ], [ %3447, %3378 ]
  %3479 = and i32 %3372, 16777216
  %3480 = icmp eq i32 %3479, 0
  br i1 %3480, label %3590, label %3481

; <label>:3481                                    ; preds = %3476
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3486 = fadd fast float %3483, %157
  %3487 = fadd fast float %3484, %158
  %3488 = fadd fast float %3485, %159
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = icmp eq i32 %57, 65535
  br i1 %3492, label %3587, label %3493

; <label>:3493                                    ; preds = %3481
  %3494 = lshr i32 %57, 1
  %3495 = shl i32 %3494, 2
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %57, 1
  %3499 = icmp ne i32 %3498, 0
  %3500 = lshr i32 %3497, 16
  %3501 = and i32 %3497, 65535
  %3502 = select i1 %3499, i32 %3500, i32 %3501
  %3503 = icmp eq i32 %3502, 65535
  br i1 %3503, label %3583, label %3504

; <label>:3504                                    ; preds = %3493
  %3505 = mul nuw nsw i32 %3502, 40
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = add nuw nsw i32 %3505, 12
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3505, 24
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = add nuw nsw i32 %3505, 36
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = fsub fast float %3486, %3507
  %3524 = fsub fast float %3487, %3508
  %3525 = fsub fast float %3488, %3509
  %3526 = fmul fast float %3522, %3523
  %3527 = fmul fast float %3522, %3524
  %3528 = fmul fast float %3522, %3525
  %3529 = call float @dx.op.unary.f32(i32 27, float %3526)  ; Round_ni(value)
  %3530 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3532 = fadd fast float %3529, 5.000000e-01
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = fmul fast float %3532, %3512
  %3536 = fmul fast float %3533, %3513
  %3537 = fmul fast float %3534, %3514
  %3538 = shl i32 %57, 2
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = add i32 %3540, 0
  %3542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3543 = call float @dx.op.unary.f32(i32 22, float %3535)  ; Frc(value)
  %3544 = call float @dx.op.unary.f32(i32 22, float %3536)  ; Frc(value)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3542, %dx.types.Handle %51, float %3543, float %3544, float %3545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = fmul fast float %3547, 1.023000e+03
  %3551 = fmul fast float %3548, 1.023000e+03
  %3552 = fmul fast float %3549, 1.023000e+03
  %3553 = fadd fast float %3550, 5.000000e-01
  %3554 = fadd fast float %3551, 5.000000e-01
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = fsub fast float %3526, %3529
  %3560 = fsub fast float %3527, %3530
  %3561 = fsub fast float %3528, %3531
  %3562 = fmul fast float %3559, 7.500000e-01
  %3563 = fmul fast float %3560, 7.500000e-01
  %3564 = fmul fast float %3561, 7.500000e-01
  %3565 = fadd fast float %3529, 1.250000e-01
  %3566 = fadd fast float %3565, %3562
  %3567 = fadd fast float %3566, %3556
  %3568 = fadd fast float %3530, 1.250000e-01
  %3569 = fadd fast float %3568, %3563
  %3570 = fadd fast float %3569, %3557
  %3571 = fadd fast float %3531, 1.250000e-01
  %3572 = fadd fast float %3571, %3564
  %3573 = fadd fast float %3572, %3558
  %3574 = fmul fast float %3567, %3517
  %3575 = fmul fast float %3570, %3518
  %3576 = fmul fast float %3573, %3519
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = add i32 %3578, 0
  %3580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3580, %dx.types.Handle %49, float %3574, float %3575, float %3576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  br label %3583

; <label>:3583                                    ; preds = %3504, %3493
  %3584 = phi float [ %3582, %3504 ], [ -1.000000e+00, %3493 ]
  %3585 = fadd fast float %3584, %3491
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  br label %3587

; <label>:3587                                    ; preds = %3583, %3481
  %3588 = phi float [ %3586, %3583 ], [ %3491, %3481 ]
  %3589 = fmul fast float %3588, %459
  br label %3590

; <label>:3590                                    ; preds = %3587, %3476
  %3591 = phi float [ %3589, %3587 ], [ %459, %3476 ]
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 256
  %3595 = icmp eq i32 %3594, 0
  br i1 %3595, label %3642, label %3596

; <label>:3596                                    ; preds = %3590
  %3597 = add i32 %56, 452
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = add i32 %3599, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3601, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = add i32 %56, 148
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = shl i32 %3606, 4
  %3608 = and i32 %3607, 32752
  %3609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3608)  ; LegacyF16ToF32(value)
  %3610 = lshr i32 %3606, 7
  %3611 = and i32 %3610, 32752
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = fsub fast float 1.000000e+00, %3591
  %3614 = call float @dx.op.binary.f32(i32 35, float %3613, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3615 = bitcast float %3591 to i32
  %3616 = sitofp i32 %3615 to float
  %3617 = fadd fast float %3616, 0xC1CFBF8940000000
  %3618 = fmul fast float %3612, %3617
  %3619 = fadd fast float %3618, 0x41CFBF8940000000
  %3620 = fptosi float %3619 to i32
  %3621 = bitcast i32 %3620 to float
  %3622 = bitcast float %3614 to i32
  %3623 = sitofp i32 %3622 to float
  %3624 = fadd fast float %3623, 0xC1CFBF8940000000
  %3625 = fmul fast float %3624, %3612
  %3626 = fadd fast float %3625, 0x41CFBF8940000000
  %3627 = fptosi float %3626 to i32
  %3628 = bitcast i32 %3627 to float
  %3629 = fmul fast float %3621, %3609
  %3630 = fmul fast float %3628, %3609
  %3631 = fsub fast float %3614, %3629
  %3632 = fadd fast float %3630, %3614
  %3633 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3634 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3635 = fsub fast float %3603, %3633
  %3636 = fsub fast float %3634, %3633
  %3637 = bitcast float %3636 to i32
  %3638 = sub nsw i32 2129859010, %3637
  %3639 = bitcast i32 %3638 to float
  %3640 = fmul fast float %3639, %3635
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  br label %3642

; <label>:3642                                    ; preds = %3596, %3590
  %3643 = phi float [ %3641, %3596 ], [ %3591, %3590 ]
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = and i32 %3645, 128
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3664, label %3648

; <label>:3648                                    ; preds = %3642
  %3649 = add i32 %56, 436
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = add i32 %3651, 0
  %3653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3653, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 524288
  %3659 = icmp ne i32 %3658, 0
  %3660 = fcmp fast ogt float %3655, 0x3FE0101020000000
  %3661 = select i1 %3660, float 1.000000e+00, float 0.000000e+00
  %3662 = select i1 %3659, float %3661, float %3655
  %3663 = fmul fast float %3662, %3643
  br label %3664

; <label>:3664                                    ; preds = %3648, %3642
  %3665 = phi float [ %3663, %3648 ], [ %3643, %3642 ]
  %3666 = fcmp fast ult float %3665, 0x3F70101020000000
  br i1 %3666, label %4405, label %3667

; <label>:3667                                    ; preds = %3664
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = and i32 %3669, 16
  %3671 = icmp eq i32 %3670, 0
  br i1 %3671, label %3870, label %3672

; <label>:3672                                    ; preds = %3667
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = add i32 %56, 388
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = add i32 %3677, 0
  %3679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3679, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = and i32 %3674, 255
  %3686 = uitofp i32 %3685 to float
  %3687 = lshr i32 %3674, 8
  %3688 = and i32 %3687, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = fmul fast float %3684, %3686
  %3691 = fadd fast float %3690, %3689
  %3692 = fmul fast float %3691, 0x3F70101000000000
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 512
  %3696 = icmp eq i32 %3695, 0
  br i1 %3696, label %3705, label %3697

; <label>:3697                                    ; preds = %3672
  %3698 = add i32 %56, 472
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = add i32 %3700, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3702, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  br label %3705

; <label>:3705                                    ; preds = %3697, %3672
  %3706 = phi float [ %3704, %3697 ], [ 1.000000e+00, %3672 ]
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 33554432
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3817, label %3711

; <label>:3711                                    ; preds = %3705
  %3712 = add i32 %56, 272
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = and i32 %3714, 65535
  %3716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3715)  ; LegacyF16ToF32(value)
  %3717 = lshr i32 %3714, 16
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = add i32 %56, 276
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = and i32 %3721, 65535
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = lshr i32 %3725, 24
  %3727 = uitofp i32 %3726 to float
  %3728 = fmul fast float %3727, 0x3F70101020000000
  %3729 = and i32 %3725, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = lshr i32 %3725, 8
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = lshr i32 %3725, 16
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = add i32 %56, 268
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = lshr i32 %3742, 24
  %3744 = uitofp i32 %3743 to float
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = and i32 %3742, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = lshr i32 %3742, 8
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = lshr i32 %3742, 16
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = bitcast float %3681 to i32
  %3758 = ashr i32 %3757, 1
  %3759 = sub nsw i32 1597463174, %3758
  %3760 = bitcast i32 %3759 to float
  %3761 = fmul fast float %3681, 5.000000e-01
  %3762 = fmul fast float %3760, %3760
  %3763 = fmul fast float %3762, %3761
  %3764 = fsub fast float 1.500000e+00, %3763
  %3765 = fmul fast float %3760, %3681
  %3766 = fmul fast float %3765, %3764
  %3767 = bitcast float %3682 to i32
  %3768 = ashr i32 %3767, 1
  %3769 = sub nsw i32 1597463174, %3768
  %3770 = bitcast i32 %3769 to float
  %3771 = fmul fast float %3682, 5.000000e-01
  %3772 = fmul fast float %3770, %3770
  %3773 = fmul fast float %3772, %3771
  %3774 = fsub fast float 1.500000e+00, %3773
  %3775 = fmul fast float %3770, %3682
  %3776 = fmul fast float %3775, %3774
  %3777 = bitcast float %3683 to i32
  %3778 = ashr i32 %3777, 1
  %3779 = sub nsw i32 1597463174, %3778
  %3780 = bitcast i32 %3779 to float
  %3781 = fmul fast float %3683, 5.000000e-01
  %3782 = fmul fast float %3780, %3780
  %3783 = fmul fast float %3782, %3781
  %3784 = fsub fast float 1.500000e+00, %3783
  %3785 = fmul fast float %3780, %3683
  %3786 = fmul fast float %3785, %3784
  %3787 = fsub fast float %3766, %3748
  %3788 = fsub fast float %3776, %3752
  %3789 = fsub fast float %3786, %3756
  %3790 = fmul fast float %3787, %3716
  %3791 = fmul fast float %3788, %3718
  %3792 = fmul fast float %3789, %3723
  %3793 = fadd fast float %3790, %3731
  %3794 = fadd fast float %3791, %3735
  %3795 = fadd fast float %3792, %3739
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = fmul fast float %3796, %3796
  %3800 = fmul fast float %3797, %3797
  %3801 = fmul fast float %3798, %3798
  %3802 = fsub fast float %3799, %3681
  %3803 = fsub fast float %3800, %3682
  %3804 = fsub fast float %3801, %3683
  %3805 = fmul fast float %3802, %3706
  %3806 = fmul fast float %3803, %3706
  %3807 = fmul fast float %3804, %3706
  %3808 = fadd fast float %3805, %3681
  %3809 = fadd fast float %3806, %3682
  %3810 = fadd fast float %3807, %3683
  %3811 = fadd fast float %3728, %3692
  %3812 = fsub fast float %3811, %3745
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fsub fast float %3813, %3692
  %3815 = fmul fast float %3814, %3706
  %3816 = fadd fast float %3815, %3692
  br label %3870

; <label>:3817                                    ; preds = %3705
  %3818 = and i32 %3708, 134217728
  %3819 = icmp eq i32 %3818, 0
  br i1 %3819, label %3854, label %3820

; <label>:3820                                    ; preds = %3817
  %3821 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3822 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3824 = fadd fast float %3821, -5.000000e-01
  %3825 = fadd fast float %3822, -5.000000e-01
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fmul fast float %3824, %3706
  %3828 = fmul fast float %3825, %3706
  %3829 = fmul fast float %3826, %3706
  %3830 = fadd fast float %3827, 5.000000e-01
  %3831 = fadd fast float %3828, 5.000000e-01
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 24, float %3681)  ; Sqrt(value)
  %3834 = call float @dx.op.unary.f32(i32 24, float %3682)  ; Sqrt(value)
  %3835 = call float @dx.op.unary.f32(i32 24, float %3683)  ; Sqrt(value)
  %3836 = fmul fast float %3830, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3833
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3833
  %3841 = fmul fast float %3831, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3834
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3834
  %3846 = fmul fast float %3832, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3835
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3835
  %3851 = fmul fast float %3840, %3840
  %3852 = fmul fast float %3845, %3845
  %3853 = fmul fast float %3850, %3850
  br label %3870

; <label>:3854                                    ; preds = %3817
  %3855 = fmul fast float %377, %377
  %3856 = fmul fast float %381, %381
  %3857 = fmul fast float %385, %385
  %3858 = fadd fast float %3855, -1.000000e+00
  %3859 = fadd fast float %3856, -1.000000e+00
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fmul fast float %3706, %3858
  %3862 = fmul fast float %3706, %3859
  %3863 = fmul fast float %3706, %3860
  %3864 = fadd fast float %3861, 1.000000e+00
  %3865 = fadd fast float %3862, 1.000000e+00
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fmul fast float %3864, %3681
  %3868 = fmul fast float %3865, %3682
  %3869 = fmul fast float %3866, %3683
  br label %3870

; <label>:3870                                    ; preds = %3854, %3820, %3711, %3667
  %3871 = phi float [ %3816, %3711 ], [ %3692, %3820 ], [ %3692, %3854 ], [ 0x3FA23C0BE0000000, %3667 ]
  %3872 = phi float [ %3808, %3711 ], [ %3851, %3820 ], [ %3867, %3854 ], [ 1.000000e+00, %3667 ]
  %3873 = phi float [ %3809, %3711 ], [ %3852, %3820 ], [ %3868, %3854 ], [ 1.000000e+00, %3667 ]
  %3874 = phi float [ %3810, %3711 ], [ %3853, %3820 ], [ %3869, %3854 ], [ 1.000000e+00, %3667 ]
  %3875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.i32 %3875, 1
  %3877 = and i32 %3876, 1
  %3878 = icmp ne i32 %3877, 0
  %3879 = add i32 %56, 356
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = and i32 %3881, 32
  %3883 = icmp ne i32 %3882, 0
  %3884 = and i1 %3878, %3883
  %3885 = select i1 %3884, float 1.000000e+00, float %3872
  %3886 = select i1 %3884, float 0x3FD3333340000000, float %3873
  %3887 = select i1 %3884, float 0x3FD3333340000000, float %3874
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, 32
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3964, label %3892

; <label>:3892                                    ; preds = %3870
  %3893 = add i32 %56, 140
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = add i32 %56, 404
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = add i32 %3898, 0
  %3900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3900, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = and i32 %3895, 255
  %3907 = uitofp i32 %3906 to float
  %3908 = lshr i32 %3895, 8
  %3909 = and i32 %3908, 255
  %3910 = uitofp i32 %3909 to float
  %3911 = lshr i32 %3895, 16
  %3912 = and i32 %3911, 255
  %3913 = uitofp i32 %3912 to float
  %3914 = fmul fast float %3913, 0x3F70101000000000
  %3915 = fmul fast float %3902, %3907
  %3916 = fadd fast float %3915, %3910
  %3917 = fmul fast float %3916, 0x3F70101000000000
  %3918 = fadd fast float %3903, -5.000000e-01
  %3919 = fadd fast float %3905, -5.000000e-01
  %3920 = fmul fast float %3918, %3914
  %3921 = fmul fast float %3919, %3914
  %3922 = fadd fast float %3920, 5.000000e-01
  %3923 = fadd fast float %3921, 5.000000e-01
  %3924 = fmul fast float %3922, 2.000000e+00
  %3925 = fadd fast float %3924, -1.000000e+00
  %3926 = fmul fast float %3923, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = fadd fast float %3925, %3927
  %3929 = fmul fast float %3928, 5.000000e-01
  %3930 = fsub fast float %3925, %3927
  %3931 = fmul fast float %3930, 5.000000e-01
  %3932 = call float @dx.op.unary.f32(i32 6, float %3929)  ; FAbs(value)
  %3933 = fsub fast float 1.000000e+00, %3932
  %3934 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3935 = fsub fast float %3933, %3934
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3929, float %3931, float %3935, float %3929, float %3931, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call float @dx.op.unary.f32(i32 25, float %3936)  ; Rsqrt(value)
  %3938 = fmul fast float %3929, %3937
  %3939 = fmul fast float %3931, %3937
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = and i32 %3941, 67108864
  %3943 = icmp eq i32 %3942, 0
  br i1 %3943, label %3960, label %3944

; <label>:3944                                    ; preds = %3892
  %3945 = add i32 %56, 328
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 65535
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = lshr i32 %3947, 16
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = fsub fast float %3917, %3955
  %3957 = fmul fast float %3956, %3949
  %3958 = fadd fast float %3957, %3953
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  br label %3960

; <label>:3960                                    ; preds = %3944, %3892
  %3961 = phi float [ %3959, %3944 ], [ %3917, %3892 ]
  %3962 = call float @dx.op.dot2.f32(i32 54, float %3938, float %3939, float %3381, float %3382)  ; Dot2(ax,ay,bx,by)
  %3963 = call float @dx.op.dot2.f32(i32 54, float %3938, float %3939, float %3383, float %3384)  ; Dot2(ax,ay,bx,by)
  br label %3964

; <label>:3964                                    ; preds = %3960, %3870
  %3965 = phi float [ %3961, %3960 ], [ 0x3FD6666660000000, %3870 ]
  %3966 = phi float [ %3962, %3960 ], [ 0.000000e+00, %3870 ]
  %3967 = phi float [ %3963, %3960 ], [ 0.000000e+00, %3870 ]
  %3968 = phi float [ %3904, %3960 ], [ 1.000000e+00, %3870 ]
  %3969 = add i32 %56, 208
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = lshr i32 %3971, 22
  %3973 = shl nuw nsw i32 %3972, 5
  %3974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3973)  ; LegacyF16ToF32(value)
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = and i32 %3976, 64
  %3978 = icmp eq i32 %3977, 0
  br i1 %3978, label %4012, label %3979

; <label>:3979                                    ; preds = %3964
  %3980 = add i32 %56, 420
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = add i32 %3982, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, 131072
  %3988 = icmp eq i32 %3987, 0
  %3989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3984, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = fmul fast float %3990, %365
  %3994 = fmul fast float %3991, %368
  %3995 = fmul fast float %3992, %371
  br i1 %3988, label %4002, label %3996

; <label>:3996                                    ; preds = %3979
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = fmul fast float %3998, %3993
  %4000 = fmul fast float %3998, %3994
  %4001 = fmul fast float %3998, %3995
  br label %4002

; <label>:4002                                    ; preds = %3996, %3979
  %4003 = phi float [ %3999, %3996 ], [ %3993, %3979 ]
  %4004 = phi float [ %4000, %3996 ], [ %3994, %3979 ]
  %4005 = phi float [ %4001, %3996 ], [ %3995, %3979 ]
  %4006 = fmul fast float %4003, %3974
  %4007 = select i1 %219, float %4006, float %4003
  %4008 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4004, float %4005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = select i1 %219, float 0.000000e+00, float %4003
  %4010 = select i1 %219, float %4008, float %4004
  %4011 = select i1 %219, float 0.000000e+00, float %4005
  br label %4012

; <label>:4012                                    ; preds = %4002, %3964
  %4013 = phi float [ %4009, %4002 ], [ 0.000000e+00, %3964 ]
  %4014 = phi float [ %4010, %4002 ], [ 0.000000e+00, %3964 ]
  %4015 = phi float [ %4011, %4002 ], [ 0.000000e+00, %3964 ]
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 1024
  %4019 = icmp eq i32 %4018, 0
  br i1 %4019, label %4050, label %4020

; <label>:4020                                    ; preds = %4012
  %4021 = add i32 %56, 200
  %4022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.i32 %4022, 0
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = lshr i32 %4023, 8
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = lshr i32 %4023, 16
  %4032 = and i32 %4031, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = fmul fast float %4033, 0x3F70101020000000
  %4035 = fmul fast float %4026, %4026
  %4036 = fmul fast float %4030, %4030
  %4037 = fmul fast float %4034, %4034
  %4038 = add i32 %56, 488
  %4039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.i32 %4039, 0
  %4041 = add i32 %4040, 0
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4042, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = fmul fast float %4035, %4044
  %4048 = fmul fast float %4036, %4045
  %4049 = fmul fast float %4037, %4046
  br label %4050

; <label>:4050                                    ; preds = %4020, %4012
  %4051 = phi float [ %4047, %4020 ], [ 0.000000e+00, %4012 ]
  %4052 = phi float [ %4048, %4020 ], [ 0.000000e+00, %4012 ]
  %4053 = phi float [ %4049, %4020 ], [ 0.000000e+00, %4012 ]
  %4054 = fcmp fast ogt float %4051, 0.000000e+00
  %4055 = fcmp fast ogt float %4052, 0.000000e+00
  %4056 = fcmp fast ogt float %4053, 0.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 23, float %4051)  ; Log(value)
  %4058 = call float @dx.op.unary.f32(i32 23, float %4052)  ; Log(value)
  %4059 = call float @dx.op.unary.f32(i32 23, float %4053)  ; Log(value)
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = lshr i32 %4061, 7
  %4063 = and i32 %4062, 32752
  %4064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4063)  ; LegacyF16ToF32(value)
  %4065 = fmul fast float %4057, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4064
  %4067 = fmul fast float %4058, 0xBFE62E4300000000
  %4068 = fmul fast float %4067, %4064
  %4069 = fmul fast float %4059, 0xBFE62E4300000000
  %4070 = fmul fast float %4069, %4064
  %4071 = select i1 %4054, float %4066, float 1.270000e+02
  %4072 = select i1 %4055, float %4068, float 1.270000e+02
  %4073 = select i1 %4056, float %4070, float 1.270000e+02
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = and i32 %4075, 10240
  %4077 = icmp eq i32 %4076, 0
  br i1 %4077, label %4122, label %4078

; <label>:4078                                    ; preds = %4050
  %4079 = add i32 %56, 504
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = add i32 %4081, 0
  %4083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4083, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 3
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = and i32 %4088, 1048576
  %4090 = icmp ne i32 %4089, 0
  %4091 = and i32 %4088, 8192
  %4092 = icmp eq i32 %4091, 0
  br i1 %4092, label %4108, label %4093

; <label>:4093                                    ; preds = %4078
  %4094 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4095 = select i1 %4090, float %4094, float %4085
  %4096 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4097 = select i1 %4090, float %4096, float %4085
  %4098 = add i32 %56, 144
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = lshr i32 %4100, 16
  %4102 = and i32 %4101, 255
  %4103 = uitofp i32 %4102 to float
  %4104 = fmul fast float %4103, 0x3F80101020000000
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %4104, %4085
  %4107 = fmul fast float %4104, %4095
  br label %4108

; <label>:4108                                    ; preds = %4093, %4078
  %4109 = phi float [ %4105, %4093 ], [ 0.000000e+00, %4078 ]
  %4110 = phi float [ %4106, %4093 ], [ 0.000000e+00, %4078 ]
  %4111 = phi float [ %4107, %4093 ], [ 0.000000e+00, %4078 ]
  %4112 = and i32 %4088, 2048
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4122, label %4114

; <label>:4114                                    ; preds = %4108
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = shl i32 %4116, 4
  %4118 = and i32 %4117, 32752
  %4119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4118)  ; LegacyF16ToF32(value)
  %4120 = fmul fast float %4119, %4086
  %4121 = call float @dx.op.binary.f32(i32 35, float %4120, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4122

; <label>:4122                                    ; preds = %4114, %4108, %4050
  %4123 = phi float [ %4109, %4114 ], [ %4109, %4108 ], [ 0.000000e+00, %4050 ]
  %4124 = phi float [ %4110, %4114 ], [ %4110, %4108 ], [ 0.000000e+00, %4050 ]
  %4125 = phi float [ %4111, %4114 ], [ %4111, %4108 ], [ 0.000000e+00, %4050 ]
  %4126 = phi float [ %4121, %4114 ], [ 0x3F70101020000000, %4108 ], [ 0x3F70101020000000, %4050 ]
  %4127 = add i32 %56, 144
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = lshr i32 %4129, 8
  %4133 = and i32 %4132, 255
  %4134 = uitofp i32 %4133 to float
  %4135 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3886, float %3887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = fmul fast float %4134, %4135
  %4137 = fadd fast float %4136, %4131
  %4138 = fmul fast float %4137, 0x3F70101020000000
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  br i1 %3369, label %4140, label %4175

; <label>:4140                                    ; preds = %4122
  %4141 = fmul fast float %4126, 2.000000e+00
  %4142 = fcmp fast olt float %4071, 1.270000e+02
  %4143 = fcmp fast olt float %4072, 1.270000e+02
  %4144 = fcmp fast olt float %4073, 1.270000e+02
  %4145 = fmul fast float %4071, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4141
  %4147 = fmul fast float %4072, 0xBFF7154760000000
  %4148 = fmul fast float %4147, %4141
  %4149 = fmul fast float %4073, 0xBFF7154760000000
  %4150 = fmul fast float %4149, %4141
  %4151 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4152 = call float @dx.op.unary.f32(i32 21, float %4148)  ; Exp(value)
  %4153 = call float @dx.op.unary.f32(i32 21, float %4150)  ; Exp(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = fadd fast float %4154, -1.000000e+00
  %4158 = select i1 %4142, float %4157, float -1.000000e+00
  %4159 = fadd fast float %4155, -1.000000e+00
  %4160 = select i1 %4143, float %4159, float -1.000000e+00
  %4161 = fadd fast float %4156, -1.000000e+00
  %4162 = select i1 %4144, float %4161, float -1.000000e+00
  %4163 = fmul fast float %4158, %3665
  %4164 = fmul fast float %4160, %3665
  %4165 = fmul fast float %4162, %3665
  %4166 = fadd fast float %4163, 1.000000e+00
  %4167 = fadd fast float %4164, 1.000000e+00
  %4168 = fadd fast float %4165, 1.000000e+00
  %4169 = fmul fast float %4166, %3351
  %4170 = fmul fast float %4167, %3352
  %4171 = fmul fast float %4168, %3353
  %4172 = fmul fast float %4166, %3354
  %4173 = fmul fast float %4167, %3355
  %4174 = fmul fast float %4168, %3356
  br label %4175

; <label>:4175                                    ; preds = %4140, %4122
  %4176 = phi float [ %4169, %4140 ], [ %3351, %4122 ]
  %4177 = phi float [ %4170, %4140 ], [ %3352, %4122 ]
  %4178 = phi float [ %4171, %4140 ], [ %3353, %4122 ]
  %4179 = phi float [ %4172, %4140 ], [ %3354, %4122 ]
  %4180 = phi float [ %4173, %4140 ], [ %3355, %4122 ]
  %4181 = phi float [ %4174, %4140 ], [ %3356, %4122 ]
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = and i32 %4183, 3
  %4185 = icmp eq i32 %4184, 3
  br i1 %4185, label %4264, label %4186

; <label>:4186                                    ; preds = %4175
  %4187 = and i32 %4183, 16
  %4188 = icmp ne i32 %4187, 0
  %4189 = select i1 %4188, float %3665, float 0.000000e+00
  %4190 = icmp eq i32 %4184, 0
  br i1 %4190, label %4191, label %4219

; <label>:4191                                    ; preds = %4186
  %4192 = and i32 %4183, 64
  %4193 = icmp ne i32 %4192, 0
  %4194 = select i1 %4193, float %3665, float 0.000000e+00
  %4195 = fsub fast float %3885, %4176
  %4196 = fsub fast float %3886, %4177
  %4197 = fsub fast float %3887, %4178
  %4198 = fmul fast float %4189, %4195
  %4199 = fmul fast float %4189, %4196
  %4200 = fmul fast float %4189, %4197
  %4201 = fadd fast float %4198, %4176
  %4202 = fadd fast float %4199, %4177
  %4203 = fadd fast float %4200, %4178
  %4204 = fsub fast float %3871, %3363
  %4205 = fmul fast float %4189, %4204
  %4206 = fadd fast float %4205, %3363
  %4207 = fsub fast float %4013, %4179
  %4208 = fsub fast float %4014, %4180
  %4209 = fsub fast float %4015, %4181
  %4210 = fmul fast float %4194, %4207
  %4211 = fmul fast float %4194, %4208
  %4212 = fmul fast float %4194, %4209
  %4213 = fadd fast float %4210, %4179
  %4214 = fadd fast float %4211, %4180
  %4215 = fadd fast float %4212, %4181
  %4216 = fsub fast float %4139, %3367
  %4217 = fmul fast float %4189, %4216
  %4218 = fadd fast float %4217, %3367
  br label %4264

; <label>:4219                                    ; preds = %4186
  %4220 = icmp eq i32 %4184, 1
  br i1 %4220, label %4221, label %4234

; <label>:4221                                    ; preds = %4219
  %4222 = fadd fast float %3885, -1.000000e+00
  %4223 = fadd fast float %3886, -1.000000e+00
  %4224 = fadd fast float %3887, -1.000000e+00
  %4225 = fmul fast float %4189, %4222
  %4226 = fmul fast float %4189, %4223
  %4227 = fmul fast float %4189, %4224
  %4228 = fadd fast float %4225, 1.000000e+00
  %4229 = fadd fast float %4226, 1.000000e+00
  %4230 = fadd fast float %4227, 1.000000e+00
  %4231 = fmul fast float %4228, %4176
  %4232 = fmul fast float %4229, %4177
  %4233 = fmul fast float %4230, %4178
  br label %4264

; <label>:4234                                    ; preds = %4219
  %4235 = icmp eq i32 %4184, 2
  br i1 %4235, label %4236, label %4264

; <label>:4236                                    ; preds = %4234
  %4237 = call float @dx.op.unary.f32(i32 24, float %3885)  ; Sqrt(value)
  %4238 = call float @dx.op.unary.f32(i32 24, float %3886)  ; Sqrt(value)
  %4239 = call float @dx.op.unary.f32(i32 24, float %3887)  ; Sqrt(value)
  %4240 = fadd fast float %4237, -5.000000e-01
  %4241 = fadd fast float %4238, -5.000000e-01
  %4242 = fadd fast float %4239, -5.000000e-01
  %4243 = fmul fast float %4240, %4189
  %4244 = fmul fast float %4241, %4189
  %4245 = fmul fast float %4242, %4189
  %4246 = fadd fast float %4243, 5.000000e-01
  %4247 = fadd fast float %4244, 5.000000e-01
  %4248 = fadd fast float %4245, 5.000000e-01
  %4249 = fmul fast float %4246, 2.000000e+00
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4176
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4176
  %4254 = fmul fast float %4247, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4177
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4177
  %4259 = fmul fast float %4248, 2.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %4260, %4178
  %4262 = fadd fast float %4261, %4259
  %4263 = fmul fast float %4262, %4178
  br label %4264

; <label>:4264                                    ; preds = %4236, %4234, %4221, %4191, %4175
  %4265 = phi float [ %4176, %4175 ], [ %4253, %4236 ], [ %4176, %4234 ], [ %4231, %4221 ], [ %4201, %4191 ]
  %4266 = phi float [ %4177, %4175 ], [ %4258, %4236 ], [ %4177, %4234 ], [ %4232, %4221 ], [ %4202, %4191 ]
  %4267 = phi float [ %4178, %4175 ], [ %4263, %4236 ], [ %4178, %4234 ], [ %4233, %4221 ], [ %4203, %4191 ]
  %4268 = phi float [ %4179, %4175 ], [ %4179, %4236 ], [ %4179, %4234 ], [ %4179, %4221 ], [ %4213, %4191 ]
  %4269 = phi float [ %4180, %4175 ], [ %4180, %4236 ], [ %4180, %4234 ], [ %4180, %4221 ], [ %4214, %4191 ]
  %4270 = phi float [ %4181, %4175 ], [ %4181, %4236 ], [ %4181, %4234 ], [ %4181, %4221 ], [ %4215, %4191 ]
  %4271 = phi float [ %3363, %4175 ], [ %3363, %4236 ], [ %3363, %4234 ], [ %3363, %4221 ], [ %4206, %4191 ]
  %4272 = phi float [ %3367, %4175 ], [ %3367, %4236 ], [ %3367, %4234 ], [ %3367, %4221 ], [ %4218, %4191 ]
  %4273 = and i32 %4183, 12
  %4274 = icmp eq i32 %4273, 12
  br i1 %4274, label %4405, label %4275

; <label>:4275                                    ; preds = %4264
  %4276 = and i32 %4183, 2097184
  %4277 = icmp eq i32 %4276, 2097184
  %4278 = select i1 %4277, float %3665, float 0.000000e+00
  %4279 = and i32 %4183, 4194336
  %4280 = icmp eq i32 %4279, 4194336
  %4281 = select i1 %4280, float %3665, float 0.000000e+00
  %4282 = and i32 %4183, 8388640
  %4283 = icmp eq i32 %4282, 8388640
  %4284 = select i1 %4283, float %3665, float 0.000000e+00
  %4285 = and i32 %4183, 1024
  %4286 = icmp ne i32 %4285, 0
  %4287 = select i1 %4286, float %3665, float 0.000000e+00
  %4288 = and i32 %4183, 2048
  %4289 = icmp ne i32 %4288, 0
  %4290 = select i1 %4289, float %3665, float 0.000000e+00
  %4291 = and i32 %4183, 8192
  %4292 = icmp ne i32 %4291, 0
  %4293 = select i1 %4292, float %3665, float 0.000000e+00
  %4294 = icmp eq i32 %4273, 0
  br i1 %4294, label %4295, label %4329

; <label>:4295                                    ; preds = %4275
  %4296 = fsub fast float %3966, %3349
  %4297 = fsub fast float %3967, %3350
  %4298 = fmul fast float %4278, %4296
  %4299 = fmul fast float %4278, %4297
  %4300 = fadd fast float %4298, %3349
  %4301 = fadd fast float %4299, %3350
  %4302 = fsub fast float %3968, %3365
  %4303 = fmul fast float %4281, %4302
  %4304 = fadd fast float %4303, %3365
  %4305 = fsub fast float %3965, %3364
  %4306 = fmul fast float %4284, %4305
  %4307 = fadd fast float %4306, %3364
  %4308 = fsub fast float %4071, %3357
  %4309 = fsub fast float %4072, %3358
  %4310 = fsub fast float %4073, %3359
  %4311 = fmul fast float %4287, %4308
  %4312 = fmul fast float %4287, %4309
  %4313 = fmul fast float %4287, %4310
  %4314 = fadd fast float %4311, %3357
  %4315 = fadd fast float %4312, %3358
  %4316 = fadd fast float %4313, %3359
  %4317 = fsub fast float %4126, %3366
  %4318 = fmul fast float %4290, %4317
  %4319 = fadd fast float %4318, %3366
  %4320 = fsub fast float %4123, %3360
  %4321 = fsub fast float %4124, %3361
  %4322 = fsub fast float %4125, %3362
  %4323 = fmul fast float %4293, %4320
  %4324 = fmul fast float %4293, %4321
  %4325 = fmul fast float %4293, %4322
  %4326 = fadd fast float %4323, %3360
  %4327 = fadd fast float %4324, %3361
  %4328 = fadd fast float %4325, %3362
  br label %4405

; <label>:4329                                    ; preds = %4275
  %4330 = icmp eq i32 %4273, 4
  br i1 %4330, label %4331, label %4377

; <label>:4331                                    ; preds = %4329
  %4332 = fmul fast float %4278, %3966
  %4333 = fmul fast float %4278, %3967
  %4334 = fadd fast float %4332, %3349
  %4335 = fadd fast float %4333, %3350
  %4336 = call float @dx.op.binary.f32(i32 36, float %3365, float %3968)  ; FMin(a,b)
  %4337 = fsub fast float %4336, %3365
  %4338 = fmul fast float %4337, %4281
  %4339 = fadd fast float %4338, %3365
  %4340 = fadd fast float %3965, %3364
  %4341 = fmul fast float %4340, 0x3FF337FAE0000000
  %4342 = fmul fast float %3364, %3364
  %4343 = fmul fast float %3965, %3965
  %4344 = fadd fast float %4343, %4342
  %4345 = fmul fast float %4344, 0x3FE5152B00000000
  %4346 = fmul fast float %3364, 0xBFCC1F85E0000000
  %4347 = fmul fast float %4346, %3965
  %4348 = fadd fast float %4347, 0xBFE1363700000000
  %4349 = fadd fast float %4348, %4341
  %4350 = fsub fast float %4349, %4345
  %4351 = fmul fast float %4340, 0x3FBA6F0D00000000
  %4352 = fmul fast float %4344, 0x3FD0432880000000
  %4353 = fmul fast float %3364, 0xBFEF110800000000
  %4354 = fmul fast float %4353, %3965
  %4355 = fadd fast float %4354, 1.000000e+00
  %4356 = fsub fast float %4355, %4351
  %4357 = fadd fast float %4356, %4352
  %4358 = fdiv fast float %4350, %4357
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fsub fast float %4359, %3364
  %4361 = fmul fast float %4360, %4284
  %4362 = fadd fast float %4361, %3364
  %4363 = fmul fast float %4287, %4071
  %4364 = fmul fast float %4287, %4072
  %4365 = fmul fast float %4287, %4073
  %4366 = fadd fast float %4363, %3357
  %4367 = fadd fast float %4364, %3358
  %4368 = fadd fast float %4365, %3359
  %4369 = fmul fast float %4290, %4126
  %4370 = fadd fast float %4369, %3366
  %4371 = fmul fast float %4293, %4123
  %4372 = fmul fast float %4293, %4124
  %4373 = fmul fast float %4293, %4125
  %4374 = fadd fast float %4371, %3360
  %4375 = fadd fast float %4372, %3361
  %4376 = fadd fast float %4373, %3362
  br label %4405

; <label>:4377                                    ; preds = %4329
  %4378 = icmp eq i32 %4273, 8
  br i1 %4378, label %4379, label %4405

; <label>:4379                                    ; preds = %4377
  %4380 = fmul fast float %4278, %3966
  %4381 = fmul fast float %4278, %3967
  %4382 = fadd fast float %4380, %3349
  %4383 = fadd fast float %4381, %3350
  %4384 = call float @dx.op.binary.f32(i32 36, float %3365, float %3968)  ; FMin(a,b)
  %4385 = fsub fast float %4384, %3365
  %4386 = fmul fast float %4385, %4281
  %4387 = fadd fast float %4386, %3365
  %4388 = fsub fast float %3965, %3364
  %4389 = fmul fast float %4284, %4388
  %4390 = fadd fast float %4389, %3364
  %4391 = fmul fast float %4287, %4071
  %4392 = fmul fast float %4287, %4072
  %4393 = fmul fast float %4287, %4073
  %4394 = fadd fast float %4391, %3357
  %4395 = fadd fast float %4392, %3358
  %4396 = fadd fast float %4393, %3359
  %4397 = fmul fast float %4290, %4126
  %4398 = fadd fast float %4397, %3366
  %4399 = fmul fast float %4293, %4123
  %4400 = fmul fast float %4293, %4124
  %4401 = fmul fast float %4293, %4125
  %4402 = fadd fast float %4399, %3360
  %4403 = fadd fast float %4400, %3361
  %4404 = fadd fast float %4401, %3362
  br label %4405

; <label>:4405                                    ; preds = %4379, %4377, %4331, %4295, %4264, %3664, %3368, %3348
  %4406 = phi float [ %3349, %4264 ], [ %3349, %3664 ], [ %3349, %3348 ], [ %3349, %3368 ], [ %4300, %4295 ], [ %4334, %4331 ], [ %3349, %4377 ], [ %4382, %4379 ]
  %4407 = phi float [ %3350, %4264 ], [ %3350, %3664 ], [ %3350, %3348 ], [ %3350, %3368 ], [ %4301, %4295 ], [ %4335, %4331 ], [ %3350, %4377 ], [ %4383, %4379 ]
  %4408 = phi float [ %4265, %4264 ], [ %3351, %3664 ], [ %3351, %3348 ], [ %3351, %3368 ], [ %4265, %4295 ], [ %4265, %4331 ], [ %4265, %4377 ], [ %4265, %4379 ]
  %4409 = phi float [ %4266, %4264 ], [ %3352, %3664 ], [ %3352, %3348 ], [ %3352, %3368 ], [ %4266, %4295 ], [ %4266, %4331 ], [ %4266, %4377 ], [ %4266, %4379 ]
  %4410 = phi float [ %4267, %4264 ], [ %3353, %3664 ], [ %3353, %3348 ], [ %3353, %3368 ], [ %4267, %4295 ], [ %4267, %4331 ], [ %4267, %4377 ], [ %4267, %4379 ]
  %4411 = phi float [ %4268, %4264 ], [ %3354, %3664 ], [ %3354, %3348 ], [ %3354, %3368 ], [ %4268, %4295 ], [ %4268, %4331 ], [ %4268, %4377 ], [ %4268, %4379 ]
  %4412 = phi float [ %4269, %4264 ], [ %3355, %3664 ], [ %3355, %3348 ], [ %3355, %3368 ], [ %4269, %4295 ], [ %4269, %4331 ], [ %4269, %4377 ], [ %4269, %4379 ]
  %4413 = phi float [ %4270, %4264 ], [ %3356, %3664 ], [ %3356, %3348 ], [ %3356, %3368 ], [ %4270, %4295 ], [ %4270, %4331 ], [ %4270, %4377 ], [ %4270, %4379 ]
  %4414 = phi float [ %3357, %4264 ], [ %3357, %3664 ], [ %3357, %3348 ], [ %3357, %3368 ], [ %4314, %4295 ], [ %4366, %4331 ], [ %3357, %4377 ], [ %4394, %4379 ]
  %4415 = phi float [ %3358, %4264 ], [ %3358, %3664 ], [ %3358, %3348 ], [ %3358, %3368 ], [ %4315, %4295 ], [ %4367, %4331 ], [ %3358, %4377 ], [ %4395, %4379 ]
  %4416 = phi float [ %3359, %4264 ], [ %3359, %3664 ], [ %3359, %3348 ], [ %3359, %3368 ], [ %4316, %4295 ], [ %4368, %4331 ], [ %3359, %4377 ], [ %4396, %4379 ]
  %4417 = phi float [ %3360, %4264 ], [ %3360, %3664 ], [ %3360, %3348 ], [ %3360, %3368 ], [ %4326, %4295 ], [ %4374, %4331 ], [ %3360, %4377 ], [ %4402, %4379 ]
  %4418 = phi float [ %3361, %4264 ], [ %3361, %3664 ], [ %3361, %3348 ], [ %3361, %3368 ], [ %4327, %4295 ], [ %4375, %4331 ], [ %3361, %4377 ], [ %4403, %4379 ]
  %4419 = phi float [ %3362, %4264 ], [ %3362, %3664 ], [ %3362, %3348 ], [ %3362, %3368 ], [ %4328, %4295 ], [ %4376, %4331 ], [ %3362, %4377 ], [ %4404, %4379 ]
  %4420 = phi float [ %4271, %4264 ], [ %3363, %3664 ], [ %3363, %3348 ], [ %3363, %3368 ], [ %4271, %4295 ], [ %4271, %4331 ], [ %4271, %4377 ], [ %4271, %4379 ]
  %4421 = phi float [ %3364, %4264 ], [ %3364, %3664 ], [ %3364, %3348 ], [ %3364, %3368 ], [ %4307, %4295 ], [ %4362, %4331 ], [ %3364, %4377 ], [ %4390, %4379 ]
  %4422 = phi float [ %3365, %4264 ], [ %3365, %3664 ], [ %3365, %3348 ], [ %3365, %3368 ], [ %4304, %4295 ], [ %4339, %4331 ], [ %3365, %4377 ], [ %4387, %4379 ]
  %4423 = phi float [ %3366, %4264 ], [ %3366, %3664 ], [ %3366, %3348 ], [ %3366, %3368 ], [ %4319, %4295 ], [ %4370, %4331 ], [ %3366, %4377 ], [ %4398, %4379 ]
  %4424 = phi float [ %4272, %4264 ], [ %3367, %3664 ], [ %3367, %3348 ], [ %3367, %3368 ], [ %4272, %4295 ], [ %4272, %4331 ], [ %4272, %4377 ], [ %4272, %4379 ]
  %4425 = add i32 %56, 360
  %4426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.i32 %4426, 0
  %4428 = extractvalue %dx.types.ResRet.i32 %4426, 1
  %4429 = bitcast i32 %4427 to float
  %4430 = bitcast i32 %4428 to float
  %4431 = fcmp fast oge float %4429, 0.000000e+00
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = select i1 %4431, float %4429, float %4433
  %4435 = add i32 %56, 456
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = add i32 %4437, 0
  %4439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4439, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = fmul fast float %4441, %4430
  %4443 = fadd fast float %4442, %4434
  %4444 = call float @dx.op.dot2.f32(i32 54, float %4406, float %4407, float %4406, float %4407)  ; Dot2(ax,ay,bx,by)
  %4445 = fmul fast float %4444, 0x3FE3333340000000
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4406, float %4407, float %4446, float %4406, float %4407, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 25, float %4447)  ; Rsqrt(value)
  %4449 = fmul fast float %4448, %4406
  %4450 = fmul fast float %4448, %4407
  %4451 = fmul fast float %4446, %4448
  %4452 = fmul fast float %4451, %109
  %4453 = fmul fast float %4451, %110
  %4454 = fmul fast float %4451, %111
  %4455 = fmul fast float %4449, %77
  %4456 = fmul fast float %4449, %78
  %4457 = fmul fast float %4449, %79
  %4458 = fadd fast float %4452, %4455
  %4459 = fadd fast float %4453, %4456
  %4460 = fadd fast float %4454, %4457
  %4461 = fmul fast float %121, %4450
  %4462 = fmul fast float %122, %4450
  %4463 = fmul fast float %123, %4450
  %4464 = fadd fast float %4458, %4461
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float %4464, float %4465, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4464, %4468
  %4470 = fmul fast float %4465, %4468
  %4471 = fmul fast float %4466, %4468
  %4472 = and i32 %58, 1
  %4473 = icmp eq i32 %4472, 0
  br i1 %4473, label %4474, label %5066

; <label>:4474                                    ; preds = %4405
  %4475 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4476 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4477 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4478 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4479 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4480 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4481 = fadd fast float %4475, %157
  %4482 = fadd fast float %4476, %158
  %4483 = fadd fast float %4477, %159
  %4484 = fadd fast float %4478, %157
  %4485 = fadd fast float %4479, %158
  %4486 = fadd fast float %4480, %159
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4494 = fmul fast float %4488, %102
  %4495 = fmul fast float %4494, %4492
  %4496 = fmul fast float %4489, %103
  %4497 = fmul fast float %4496, %4493
  %4498 = fptoui float %4495 to i32
  %4499 = fptoui float %4497 to i32
  %4500 = fadd fast float %4488, -1.000000e+00
  %4501 = fadd fast float %4489, -1.000000e+00
  %4502 = fptoui float %4500 to i32
  %4503 = fptoui float %4501 to i32
  %4504 = call i32 @dx.op.binary.i32(i32 40, i32 %4498, i32 %4502)  ; UMin(a,b)
  %4505 = call i32 @dx.op.binary.i32(i32 40, i32 %4499, i32 %4503)  ; UMin(a,b)
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4509 = fmul fast float %4507, %93
  %4510 = fsub fast float %4509, %4508
  %4511 = fadd fast float %4490, -1.000000e+00
  %4512 = call float @dx.op.binary.f32(i32 36, float %4510, float %4511)  ; FMin(a,b)
  %4513 = fptoui float %4512 to i32
  %4514 = fptoui float %4488 to i32
  %4515 = fptoui float %4489 to i32
  %4516 = mul i32 %4513, %4515
  %4517 = add i32 %4516, %4505
  %4518 = mul i32 %4517, %4514
  %4519 = add i32 %4518, %4504
  %4520 = shl i32 %4519, 2
  %4521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4520, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.i32 %4521, 0
  %4523 = and i32 %4522, 1023
  %4524 = lshr i32 %4522, 10
  %4525 = icmp eq i32 %4523, 0
  br i1 %4525, label %5029, label %4526

; <label>:4526                                    ; preds = %4474
  %4527 = and i32 %4522, 1023
  br label %4528

; <label>:4528                                    ; preds = %4660, %4526
  %4529 = phi i32 [ %4610, %4660 ], [ 0, %4526 ]
  %4530 = phi float [ %4661, %4660 ], [ 0.000000e+00, %4526 ]
  %4531 = phi float [ %4662, %4660 ], [ %4443, %4526 ]
  %4532 = phi float [ %4663, %4660 ], [ %4424, %4526 ]
  %4533 = phi float [ %4664, %4660 ], [ %4414, %4526 ]
  %4534 = phi float [ %4665, %4660 ], [ %4415, %4526 ]
  %4535 = phi float [ %4666, %4660 ], [ %4416, %4526 ]
  %4536 = phi float [ %4667, %4660 ], [ 0.000000e+00, %4526 ]
  %4537 = phi float [ %4668, %4660 ], [ 0.000000e+00, %4526 ]
  %4538 = phi float [ %4669, %4660 ], [ %4417, %4526 ]
  %4539 = phi float [ %4670, %4660 ], [ %4418, %4526 ]
  %4540 = phi float [ %4671, %4660 ], [ %4419, %4526 ]
  %4541 = phi float [ %4672, %4660 ], [ %4411, %4526 ]
  %4542 = phi float [ %4673, %4660 ], [ %4412, %4526 ]
  %4543 = phi float [ %4674, %4660 ], [ %4413, %4526 ]
  %4544 = phi float [ %4675, %4660 ], [ %4469, %4526 ]
  %4545 = phi float [ %4676, %4660 ], [ %4470, %4526 ]
  %4546 = phi float [ %4677, %4660 ], [ %4471, %4526 ]
  %4547 = phi float [ %4678, %4660 ], [ %4422, %4526 ]
  %4548 = phi float [ %4679, %4660 ], [ %4421, %4526 ]
  %4549 = phi float [ %4680, %4660 ], [ 0.000000e+00, %4526 ]
  %4550 = phi float [ %4681, %4660 ], [ %4420, %4526 ]
  %4551 = phi float [ %4682, %4660 ], [ %4408, %4526 ]
  %4552 = phi float [ %4683, %4660 ], [ %4409, %4526 ]
  %4553 = phi float [ %4684, %4660 ], [ %4410, %4526 ]
  %4554 = add nuw nsw i32 %4529, %4524
  %4555 = shl i32 %4554, 2
  %4556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4557 = extractvalue %dx.types.ResRet.i32 %4556, 0
  %4558 = shl i32 %4557, 8
  %4559 = or i32 %4558, 48
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4565 = or i32 %4558, 64
  %4566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.i32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.i32 %4566, 1
  %4569 = or i32 %4558, 80
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4573 = or i32 %4558, 96
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4558, 112
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4582 = or i32 %4558, 128
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = extractvalue %dx.types.ResRet.f32 %4583, 3
  %4588 = or i32 %4558, 144
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4593 = extractvalue %dx.types.ResRet.f32 %4589, 3
  %4594 = or i32 %4558, 160
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4600 = or i32 %4558, 192
  %4601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.i32 %4601, 0
  %4603 = or i32 %4558, 208
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = or i32 %4558, 248
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = add nuw nsw i32 %4529, 1
  %4611 = bitcast float %4564 to i32
  %4612 = and i32 %4611, 512
  %4613 = icmp eq i32 %4612, 0
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = or i32 %4558, 16
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = extractvalue %dx.types.ResRet.f32 %4621, 3
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4622, float %4623, float %4624, float %4625, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = or i32 %4558, 32
  %4628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.ResRet.f32 %4628, 1
  %4631 = extractvalue %dx.types.ResRet.f32 %4628, 2
  %4632 = extractvalue %dx.types.ResRet.f32 %4628, 3
  %4633 = call float @dx.op.dot4.f32(i32 56, float %4629, float %4630, float %4631, float %4632, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4634 = call float @dx.op.unary.f32(i32 27, float %4619)  ; Round_ni(value)
  %4635 = call float @dx.op.unary.f32(i32 6, float %4634)  ; FAbs(value)
  %4636 = call float @dx.op.unary.f32(i32 27, float %4626)  ; Round_ni(value)
  %4637 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4638 = call float @dx.op.unary.f32(i32 6, float %4633)  ; FAbs(value)
  %4639 = call float @dx.op.unary.f32(i32 27, float %4638)  ; Round_ni(value)
  %4640 = fadd fast float %4637, %4635
  %4641 = fadd fast float %4640, %4639
  %4642 = fcmp fast oeq float %4641, 0.000000e+00
  %4643 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4481, float %4482, float %4483, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4644 = call float @dx.op.dot4.f32(i32 56, float %4622, float %4623, float %4624, float %4625, float %4481, float %4482, float %4483, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4645 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4484, float %4485, float %4486, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4646 = call float @dx.op.dot4.f32(i32 56, float %4622, float %4623, float %4624, float %4625, float %4484, float %4485, float %4486, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4647 = fsub fast float %4643, %4619
  %4648 = fsub fast float %4645, %4619
  %4649 = fsub fast float %4644, %4626
  %4650 = fsub fast float %4646, %4626
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = fadd fast float %4653, %4651
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4657 = fcmp fast ogt float %4655, %4656
  %4658 = and i1 %4642, %4657
  %4659 = and i1 %4613, %4658
  br i1 %4659, label %4686, label %4660

; <label>:4660                                    ; preds = %5015, %4767, %4686, %4528
  %4661 = phi float [ %4530, %4686 ], [ %4770, %4767 ], [ %4770, %5015 ], [ %4530, %4528 ]
  %4662 = phi float [ %4531, %4686 ], [ %4531, %4767 ], [ %4991, %5015 ], [ %4531, %4528 ]
  %4663 = phi float [ %4532, %4686 ], [ %4532, %4767 ], [ %4989, %5015 ], [ %4532, %4528 ]
  %4664 = phi float [ %4533, %4686 ], [ %4533, %4767 ], [ %4967, %5015 ], [ %4533, %4528 ]
  %4665 = phi float [ %4534, %4686 ], [ %4534, %4767 ], [ %4968, %5015 ], [ %4534, %4528 ]
  %4666 = phi float [ %4535, %4686 ], [ %4535, %4767 ], [ %4969, %5015 ], [ %4535, %4528 ]
  %4667 = phi float [ %4536, %4686 ], [ %4536, %4767 ], [ %4894, %5015 ], [ %4536, %4528 ]
  %4668 = phi float [ %4537, %4686 ], [ %4537, %4767 ], [ %4892, %5015 ], [ %4537, %4528 ]
  %4669 = phi float [ %4538, %4686 ], [ %4538, %4767 ], [ %4937, %5015 ], [ %4538, %4528 ]
  %4670 = phi float [ %4539, %4686 ], [ %4539, %4767 ], [ %4938, %5015 ], [ %4539, %4528 ]
  %4671 = phi float [ %4540, %4686 ], [ %4540, %4767 ], [ %4939, %5015 ], [ %4540, %4528 ]
  %4672 = phi float [ %4541, %4686 ], [ %4541, %4767 ], [ %5025, %5015 ], [ %4541, %4528 ]
  %4673 = phi float [ %4542, %4686 ], [ %4542, %4767 ], [ %5026, %5015 ], [ %4542, %4528 ]
  %4674 = phi float [ %4543, %4686 ], [ %4543, %4767 ], [ %5027, %5015 ], [ %4543, %4528 ]
  %4675 = phi float [ %4544, %4686 ], [ %4544, %4767 ], [ %4873, %5015 ], [ %4544, %4528 ]
  %4676 = phi float [ %4545, %4686 ], [ %4545, %4767 ], [ %4874, %5015 ], [ %4545, %4528 ]
  %4677 = phi float [ %4546, %4686 ], [ %4546, %4767 ], [ %4875, %5015 ], [ %4546, %4528 ]
  %4678 = phi float [ %4547, %4686 ], [ %4547, %4767 ], [ %4947, %5015 ], [ %4547, %4528 ]
  %4679 = phi float [ %4548, %4686 ], [ %4548, %4767 ], [ %4944, %5015 ], [ %4548, %4528 ]
  %4680 = phi float [ %4549, %4686 ], [ %4549, %4767 ], [ %4941, %5015 ], [ %4549, %4528 ]
  %4681 = phi float [ %4550, %4686 ], [ %4550, %4767 ], [ %4890, %5015 ], [ %4550, %4528 ]
  %4682 = phi float [ %4551, %4686 ], [ %4551, %4767 ], [ %4885, %5015 ], [ %4551, %4528 ]
  %4683 = phi float [ %4552, %4686 ], [ %4552, %4767 ], [ %4886, %5015 ], [ %4552, %4528 ]
  %4684 = phi float [ %4553, %4686 ], [ %4553, %4767 ], [ %4887, %5015 ], [ %4553, %4528 ]
  %4685 = icmp eq i32 %4610, %4527
  br i1 %4685, label %5028, label %4528

; <label>:4686                                    ; preds = %4528
  %4687 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4688 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4692 = extractvalue %dx.types.ResRet.i32 %4566, 3
  %4693 = extractvalue %dx.types.ResRet.i32 %4566, 2
  %4694 = add i32 %4692, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4694, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4695, %dx.types.Handle %4696, float %4619, float %4626, float undef, float undef, i32 0, i32 0, i32 undef, float %4647, float %4649, float undef, float %4648, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = fmul fast float %4698, %4691
  %4700 = fadd fast float %4699, %4690
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4619, %4575
  %4703 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4626, float %4702)  ; FMad(a,b,c)
  %4704 = fadd fast float %4703, %4689
  %4705 = fmul fast float %4619, %4577
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4626, float %4705)  ; FMad(a,b,c)
  %4707 = fadd fast float %4706, %4688
  %4708 = fmul fast float %4647, %4575
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4649, float %4708)  ; FMad(a,b,c)
  %4710 = fmul fast float %4647, %4577
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4649, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4648, %4575
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4650, float %4712)  ; FMad(a,b,c)
  %4714 = fmul fast float %4648, %4577
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4650, float %4714)  ; FMad(a,b,c)
  %4716 = add i32 %4693, 0
  %4717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4716, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4717, %dx.types.Handle %4696, float %4704, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4709, float %4711, float undef, float %4713, float %4715, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = and i32 %4611, 1024
  %4721 = icmp ne i32 %4720, 0
  %4722 = fcmp fast ogt float %4719, 0x3FE0101020000000
  %4723 = uitofp i1 %4722 to float
  %4724 = select i1 %4721, float %4723, float %4719
  %4725 = and i32 %4611, 8192
  %4726 = icmp ne i32 %4725, 0
  %4727 = select i1 %4726, float %4687, float 1.000000e+00
  %4728 = fmul fast float %4619, 2.000000e+00
  %4729 = fadd fast float %4728, -1.000000e+00
  %4730 = call float @dx.op.unary.f32(i32 6, float %4729)  ; FAbs(value)
  %4731 = fmul fast float %4730, %4608
  %4732 = fsub fast float %4731, %4608
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4626, 2.000000e+00
  %4735 = fadd fast float %4734, -1.000000e+00
  %4736 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4737 = fmul fast float %4736, %4609
  %4738 = fsub fast float %4737, %4609
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4638, %4571
  %4741 = fsub fast float %4740, %4571
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4701, %4727
  %4744 = fmul fast float %4743, %4698
  %4745 = fmul fast float %4744, %4733
  %4746 = fmul fast float %4745, %4724
  %4747 = fmul fast float %4746, %4739
  %4748 = fmul fast float %4747, %4742
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4752 = fsub fast float %4655, %4751
  %4753 = fmul fast float %4752, %4750
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4748, %4572
  %4756 = fadd fast float %4748, %4572
  %4757 = fmul fast float %4756, %4581
  %4758 = fsub fast float %4757, %4581
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = and i32 %4611, 128
  %4761 = icmp ne i32 %4760, 0
  %4762 = select i1 %4761, float %4759, float %4755
  %4763 = fmul fast float %4762, %4754
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4766 = fcmp fast ugt float %4763, %4765
  br i1 %4766, label %4767, label %4660

; <label>:4767                                    ; preds = %4686
  %4768 = select i1 %4726, float %4763, float 0.000000e+00
  %4769 = fadd fast float %4768, %4530
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  br i1 %4726, label %4660, label %4771

; <label>:4771                                    ; preds = %4767
  %4772 = and i32 %4611, 4
  %4773 = and i32 %4611, 8
  %4774 = add i32 %4567, 0
  %4775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4775, %dx.types.Handle %4776, float %4704, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4709, float %4711, float undef, float %4713, float %4715, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = extractvalue %dx.types.ResRet.f32 %4777, 3
  %4782 = bitcast float %4593 to i32
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4782, 8
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = fmul fast float %4781, %4784
  %4789 = fadd fast float %4788, %4787
  %4790 = fmul fast float %4789, 0x3F70101000000000
  %4791 = add i32 %4568, 0
  %4792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4791, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4792, %dx.types.Handle %4776, float %4704, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4709, float %4711, float undef, float %4713, float %4715, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.ResRet.f32 %4793, 1
  %4796 = extractvalue %dx.types.ResRet.f32 %4793, 2
  %4797 = extractvalue %dx.types.ResRet.f32 %4793, 3
  %4798 = bitcast float %4587 to i32
  %4799 = and i32 %4798, 255
  %4800 = uitofp i32 %4799 to float
  %4801 = lshr i32 %4798, 8
  %4802 = and i32 %4801, 255
  %4803 = uitofp i32 %4802 to float
  %4804 = lshr i32 %4798, 16
  %4805 = and i32 %4804, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = fmul fast float %4806, 0x3F70101000000000
  %4808 = fmul fast float %4794, %4800
  %4809 = fadd fast float %4808, %4803
  %4810 = fmul fast float %4809, 0x3F70101000000000
  %4811 = fadd fast float %4795, -5.000000e-01
  %4812 = fadd fast float %4797, -5.000000e-01
  %4813 = fmul fast float %4811, %4807
  %4814 = fmul fast float %4812, %4807
  %4815 = fadd fast float %4813, 5.000000e-01
  %4816 = fadd fast float %4814, 5.000000e-01
  %4817 = fmul fast float %4778, %4596
  %4818 = fmul fast float %4779, %4597
  %4819 = fmul fast float %4780, %4598
  %4820 = fmul fast float %4815, 2.000000e+00
  %4821 = fadd fast float %4820, -1.000000e+00
  %4822 = fmul fast float %4816, 2.000000e+00
  %4823 = fadd fast float %4822, -1.000000e+00
  %4824 = fadd fast float %4821, %4823
  %4825 = fmul fast float %4824, 5.000000e-01
  %4826 = fsub fast float %4821, %4823
  %4827 = fmul fast float %4826, 5.000000e-01
  %4828 = call float @dx.op.unary.f32(i32 6, float %4825)  ; FAbs(value)
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4831 = fsub fast float %4829, %4830
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4827, float %4831, float %4825, float %4827, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4825, %4833
  %4835 = fmul fast float %4827, %4833
  %4836 = fmul fast float %4833, %4831
  %4837 = fmul fast float %4836, %4561
  %4838 = fmul fast float %4836, %4562
  %4839 = fmul fast float %4836, %4563
  %4840 = fmul fast float %4834, %4584
  %4841 = fmul fast float %4834, %4585
  %4842 = fmul fast float %4834, %4586
  %4843 = fadd fast float %4840, %4837
  %4844 = fadd fast float %4841, %4838
  %4845 = fadd fast float %4842, %4839
  %4846 = fmul fast float %4835, %4590
  %4847 = fmul fast float %4835, %4591
  %4848 = fmul fast float %4835, %4592
  %4849 = fadd fast float %4843, %4846
  %4850 = fadd fast float %4844, %4847
  %4851 = fadd fast float %4845, %4848
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4849, float %4850, float %4851)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 25, float %4852)  ; Rsqrt(value)
  %4854 = fmul fast float %4849, %4853
  %4855 = fmul fast float %4850, %4853
  %4856 = fmul fast float %4851, %4853
  %4857 = icmp ne i32 %4773, 0
  %4858 = select i1 %4857, float 1.000000e+00, float 0.000000e+00
  %4859 = fmul fast float %4763, %4858
  %4860 = and i32 %4611, 1
  %4861 = icmp eq i32 %4860, 0
  br i1 %4861, label %4862, label %4866

; <label>:4862                                    ; preds = %4771
  %4863 = fsub fast float %4854, %4544
  %4864 = fsub fast float %4855, %4545
  %4865 = fsub fast float %4856, %4546
  br label %4866

; <label>:4866                                    ; preds = %4862, %4771
  %4867 = phi float [ %4863, %4862 ], [ %4854, %4771 ]
  %4868 = phi float [ %4864, %4862 ], [ %4855, %4771 ]
  %4869 = phi float [ %4865, %4862 ], [ %4856, %4771 ]
  %4870 = fmul float %4869, %4859
  %4871 = fmul float %4868, %4859
  %4872 = fmul float %4867, %4859
  %4873 = fadd fast float %4872, %4544
  %4874 = fadd fast float %4871, %4545
  %4875 = fadd fast float %4870, %4546
  %4876 = icmp ne i32 %4772, 0
  %4877 = select i1 %4876, float 1.000000e+00, float 0.000000e+00
  %4878 = fmul fast float %4763, %4877
  %4879 = fsub fast float %4817, %4551
  %4880 = fsub fast float %4818, %4552
  %4881 = fsub fast float %4819, %4553
  %4882 = fmul fast float %4879, %4878
  %4883 = fmul fast float %4880, %4878
  %4884 = fmul fast float %4881, %4878
  %4885 = fadd fast float %4882, %4551
  %4886 = fadd fast float %4883, %4552
  %4887 = fadd fast float %4884, %4553
  %4888 = fsub fast float %4790, %4550
  %4889 = fmul fast float %4888, %4878
  %4890 = fadd fast float %4889, %4550
  %4891 = fmul fast float %4878, %4537
  %4892 = fsub fast float %4537, %4891
  %4893 = fmul fast float %4878, %4536
  %4894 = fsub fast float %4536, %4893
  %4895 = bitcast float %4605 to i32
  %4896 = lshr i32 %4895, 16
  %4897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4896)  ; LegacyF16ToF32(value)
  %4898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.i32 %4898, 0
  %4900 = and i32 %4899, 1
  %4901 = icmp eq i32 %4900, 0
  br i1 %4901, label %4902, label %4927

; <label>:4902                                    ; preds = %4866
  %4903 = fadd fast float %4790, 0xBFB99999A0000000
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4904, 0x3FF1C71C80000000
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4907, %4817
  %4909 = fmul fast float %4907, %4818
  %4910 = fmul fast float %4907, %4819
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.binary.f32(i32 35, float %4912, float %4913)  ; FMax(a,b)
  %4915 = call float @dx.op.binary.f32(i32 35, float %4911, float %4914)  ; FMax(a,b)
  %4916 = fcmp fast ogt float %4915, 0.000000e+00
  %4917 = bitcast float %4915 to i32
  %4918 = sub nsw i32 2129859010, %4917
  %4919 = bitcast i32 %4918 to float
  %4920 = select i1 %4916, float %4919, float 0.000000e+00
  %4921 = fmul fast float %4911, %4897
  %4922 = fmul fast float %4912, %4897
  %4923 = fmul fast float %4913, %4897
  %4924 = fmul fast float %4921, %4920
  %4925 = fmul fast float %4922, %4920
  %4926 = fmul fast float %4923, %4920
  br label %4927

; <label>:4927                                    ; preds = %4902, %4866
  %4928 = phi float [ %4897, %4866 ], [ %4924, %4902 ]
  %4929 = phi float [ %4897, %4866 ], [ %4925, %4902 ]
  %4930 = phi float [ %4897, %4866 ], [ %4926, %4902 ]
  %4931 = fsub fast float %4928, %4538
  %4932 = fsub fast float %4929, %4539
  %4933 = fsub fast float %4930, %4540
  %4934 = fmul fast float %4931, %4878
  %4935 = fmul fast float %4932, %4878
  %4936 = fmul fast float %4933, %4878
  %4937 = fadd fast float %4934, %4538
  %4938 = fadd fast float %4935, %4539
  %4939 = fadd fast float %4936, %4540
  %4940 = fadd fast float %4763, %4549
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fsub fast float %4810, %4548
  %4943 = fmul fast float %4942, %4859
  %4944 = fadd fast float %4943, %4548
  %4945 = fsub fast float %4796, %4547
  %4946 = fmul fast float %4945, %4859
  %4947 = fadd fast float %4946, %4547
  br i1 %4861, label %4956, label %4948

; <label>:4948                                    ; preds = %4927
  %4949 = and i32 %4611, 32768
  %4950 = icmp eq i32 %4949, 0
  br i1 %4950, label %4966, label %4951

; <label>:4951                                    ; preds = %4948
  %4952 = fmul fast float %4859, 1.270000e+02
  %4953 = fadd fast float %4952, %4533
  %4954 = fadd fast float %4952, %4534
  %4955 = fadd fast float %4952, %4535
  br label %4966

; <label>:4956                                    ; preds = %4927
  %4957 = fsub fast float 1.270000e+02, %4533
  %4958 = fsub fast float 1.270000e+02, %4534
  %4959 = fsub fast float 1.270000e+02, %4535
  %4960 = fmul fast float %4859, %4957
  %4961 = fmul fast float %4859, %4958
  %4962 = fmul fast float %4859, %4959
  %4963 = fadd fast float %4960, %4533
  %4964 = fadd fast float %4961, %4534
  %4965 = fadd fast float %4962, %4535
  br label %4966

; <label>:4966                                    ; preds = %4956, %4951, %4948
  %4967 = phi float [ %4953, %4951 ], [ %4533, %4948 ], [ %4963, %4956 ]
  %4968 = phi float [ %4954, %4951 ], [ %4534, %4948 ], [ %4964, %4956 ]
  %4969 = phi float [ %4955, %4951 ], [ %4535, %4948 ], [ %4965, %4956 ]
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = fmul fast float %4973, %4970
  %4975 = fadd fast float %4974, %4972
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = bitcast float %4599 to i32
  %4978 = and i32 %4977, 65535
  %4979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4978)  ; LegacyF16ToF32(value)
  %4980 = lshr i32 %4977, 16
  %4981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4980)  ; LegacyF16ToF32(value)
  %4982 = fcmp fast oge float %4979, 0.000000e+00
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = select i1 %4982, float %4979, float %4984
  %4986 = fadd fast float %4985, %4981
  %4987 = fsub fast float %4976, %4532
  %4988 = fmul fast float %4987, %4763
  %4989 = fadd fast float %4988, %4532
  %4990 = fmul fast float %4986, %4763
  %4991 = call float @dx.op.binary.f32(i32 35, float %4531, float %4990)  ; FMax(a,b)
  %4992 = and i32 %4611, 16
  %4993 = icmp eq i32 %4992, 0
  br i1 %4993, label %5015, label %4994

; <label>:4994                                    ; preds = %4966
  %4995 = add i32 %4602, 0
  %4996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4995, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4996, %dx.types.Handle %4776, float %4704, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4709, float %4711, float undef, float %4713, float %4715, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.ResRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.ResRet.f32 %4997, 2
  %5001 = and i32 %4895, 65535
  %5002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5001)  ; LegacyF16ToF32(value)
  %5003 = fmul fast float %4998, %4596
  %5004 = fmul fast float %4999, %4597
  %5005 = fmul fast float %5000, %4598
  %5006 = and i32 %4611, 16384
  %5007 = icmp ne i32 %5006, 0
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = select i1 %5007, float %5009, float 1.000000e+00
  %5011 = fmul fast float %5010, %5002
  %5012 = fmul fast float %5003, %5011
  %5013 = fmul fast float %5004, %5011
  %5014 = fmul fast float %5005, %5011
  br label %5015

; <label>:5015                                    ; preds = %4994, %4966
  %5016 = phi float [ %5012, %4994 ], [ 0.000000e+00, %4966 ]
  %5017 = phi float [ %5013, %4994 ], [ 0.000000e+00, %4966 ]
  %5018 = phi float [ %5014, %4994 ], [ 0.000000e+00, %4966 ]
  %5019 = fsub fast float %5016, %4541
  %5020 = fsub fast float %5017, %4542
  %5021 = fsub fast float %5018, %4543
  %5022 = fmul fast float %5019, %4763
  %5023 = fmul fast float %5020, %4763
  %5024 = fmul fast float %5021, %4763
  %5025 = fadd fast float %5022, %4541
  %5026 = fadd fast float %5023, %4542
  %5027 = fadd fast float %5024, %4543
  br label %4660

; <label>:5028                                    ; preds = %4660
  br label %5029

; <label>:5029                                    ; preds = %5028, %4474
  %5030 = phi float [ 0.000000e+00, %4474 ], [ %4661, %5028 ]
  %5031 = phi float [ %4443, %4474 ], [ %4662, %5028 ]
  %5032 = phi float [ %4424, %4474 ], [ %4663, %5028 ]
  %5033 = phi float [ %4414, %4474 ], [ %4664, %5028 ]
  %5034 = phi float [ %4415, %4474 ], [ %4665, %5028 ]
  %5035 = phi float [ %4416, %4474 ], [ %4666, %5028 ]
  %5036 = phi float [ 0.000000e+00, %4474 ], [ %4667, %5028 ]
  %5037 = phi float [ 0.000000e+00, %4474 ], [ %4668, %5028 ]
  %5038 = phi float [ %4417, %4474 ], [ %4669, %5028 ]
  %5039 = phi float [ %4418, %4474 ], [ %4670, %5028 ]
  %5040 = phi float [ %4419, %4474 ], [ %4671, %5028 ]
  %5041 = phi float [ %4411, %4474 ], [ %4672, %5028 ]
  %5042 = phi float [ %4412, %4474 ], [ %4673, %5028 ]
  %5043 = phi float [ %4413, %4474 ], [ %4674, %5028 ]
  %5044 = phi float [ %4469, %4474 ], [ %4675, %5028 ]
  %5045 = phi float [ %4470, %4474 ], [ %4676, %5028 ]
  %5046 = phi float [ %4471, %4474 ], [ %4677, %5028 ]
  %5047 = phi float [ %4422, %4474 ], [ %4678, %5028 ]
  %5048 = phi float [ %4421, %4474 ], [ %4679, %5028 ]
  %5049 = phi float [ 0.000000e+00, %4474 ], [ %4680, %5028 ]
  %5050 = phi float [ %4420, %4474 ], [ %4681, %5028 ]
  %5051 = phi float [ %4408, %4474 ], [ %4682, %5028 ]
  %5052 = phi float [ %4409, %4474 ], [ %4683, %5028 ]
  %5053 = phi float [ %4410, %4474 ], [ %4684, %5028 ]
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5055, %5044
  %5057 = fmul fast float %5055, %5045
  %5058 = fmul fast float %5055, %5046
  %5059 = fadd fast float %5049, %1249
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 25, float %5061)  ; Rsqrt(value)
  %5063 = fmul fast float %5062, %5056
  %5064 = fmul fast float %5062, %5057
  %5065 = fmul fast float %5062, %5058
  br label %5066

; <label>:5066                                    ; preds = %5029, %4405
  %5067 = phi float [ %5063, %5029 ], [ %4469, %4405 ]
  %5068 = phi float [ %5064, %5029 ], [ %4470, %4405 ]
  %5069 = phi float [ %5065, %5029 ], [ %4471, %4405 ]
  %5070 = phi float [ %5051, %5029 ], [ %4408, %4405 ]
  %5071 = phi float [ %5052, %5029 ], [ %4409, %4405 ]
  %5072 = phi float [ %5053, %5029 ], [ %4410, %4405 ]
  %5073 = phi float [ %5041, %5029 ], [ %4411, %4405 ]
  %5074 = phi float [ %5042, %5029 ], [ %4412, %4405 ]
  %5075 = phi float [ %5043, %5029 ], [ %4413, %4405 ]
  %5076 = phi float [ %5038, %5029 ], [ %4417, %4405 ]
  %5077 = phi float [ %5039, %5029 ], [ %4418, %4405 ]
  %5078 = phi float [ %5040, %5029 ], [ %4419, %4405 ]
  %5079 = phi float [ %5033, %5029 ], [ %4414, %4405 ]
  %5080 = phi float [ %5034, %5029 ], [ %4415, %4405 ]
  %5081 = phi float [ %5035, %5029 ], [ %4416, %4405 ]
  %5082 = phi float [ %5050, %5029 ], [ %4420, %4405 ]
  %5083 = phi float [ %5060, %5029 ], [ %1249, %4405 ]
  %5084 = phi float [ %5048, %5029 ], [ %4421, %4405 ]
  %5085 = phi float [ %5047, %5029 ], [ %4422, %4405 ]
  %5086 = phi float [ %5037, %5029 ], [ 0.000000e+00, %4405 ]
  %5087 = phi float [ %5036, %5029 ], [ 0.000000e+00, %4405 ]
  %5088 = phi float [ %5030, %5029 ], [ 0.000000e+00, %4405 ]
  %5089 = phi float [ %5031, %5029 ], [ %4443, %4405 ]
  %5090 = phi float [ %5032, %5029 ], [ %4424, %4405 ]
  %5091 = fadd fast float %5082, 0xBFB99999A0000000
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fmul fast float %5092, 0x3FF1C71C80000000
  %5094 = call float @dx.op.binary.f32(i32 36, float %5082, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5095 = fsub fast float 1.000000e+00, %5093
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fmul fast float %5096, %5070
  %5098 = fmul fast float %5096, %5071
  %5099 = fmul fast float %5096, %5072
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = fmul fast float %5093, %5070
  %5104 = fmul fast float %5093, %5071
  %5105 = fmul fast float %5093, %5072
  %5106 = fadd fast float %5103, %5094
  %5107 = fadd fast float %5104, %5094
  %5108 = fadd fast float %5105, %5094
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5114 = extractvalue %dx.types.ResRet.i32 %5113, 0
  %5115 = and i32 %5114, 1
  %5116 = icmp eq i32 %5115, 0
  br i1 %5116, label %5131, label %5117

; <label>:5117                                    ; preds = %5066
  %5118 = call float @dx.op.binary.f32(i32 35, float %5101, float %5102)  ; FMax(a,b)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5100, float %5118)  ; FMax(a,b)
  %5120 = fcmp fast ogt float %5119, 0.000000e+00
  %5121 = bitcast float %5119 to i32
  %5122 = sub nsw i32 2129859010, %5121
  %5123 = bitcast i32 %5122 to float
  %5124 = select i1 %5120, float %5123, float 0.000000e+00
  %5125 = fmul fast float %5100, %5076
  %5126 = fmul fast float %5101, %5077
  %5127 = fmul fast float %5102, %5078
  %5128 = fmul fast float %5125, %5124
  %5129 = fmul fast float %5126, %5124
  %5130 = fmul fast float %5127, %5124
  br label %5131

; <label>:5131                                    ; preds = %5117, %5066
  %5132 = phi float [ %5128, %5117 ], [ %5076, %5066 ]
  %5133 = phi float [ %5129, %5117 ], [ %5077, %5066 ]
  %5134 = phi float [ %5130, %5117 ], [ %5078, %5066 ]
  %5135 = call float @dx.op.binary.f32(i32 36, float %5079, float 1.270000e+02)  ; FMin(a,b)
  %5136 = call float @dx.op.binary.f32(i32 36, float %5080, float 1.270000e+02)  ; FMin(a,b)
  %5137 = call float @dx.op.binary.f32(i32 36, float %5081, float 1.270000e+02)  ; FMin(a,b)
  %5138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.i32 %5138, 3
  %5140 = and i32 %5139, 8
  %5141 = icmp ne i32 %5140, 0
  %5142 = call float @dx.op.binary.f32(i32 35, float %5100, float %5070)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5101, float %5070)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5102, float %5070)  ; FMax(a,b)
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = select i1 %219, float %5070, float %5100
  %5147 = select i1 %219, float %5145, float %5101
  %5148 = select i1 %219, float 1.000000e+00, float %5102
  %5149 = select i1 %5141, float %5142, float %5146
  %5150 = select i1 %5141, float %5143, float %5147
  %5151 = select i1 %5141, float %5144, float %5148
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = select i1 %219, float %5152, float %5132
  %5154 = select i1 %219, float %5152, float %5133
  %5155 = select i1 %219, float %5152, float %5134
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5160 = fadd fast float %5157, %157
  %5161 = fadd fast float %5158, %158
  %5162 = fadd fast float %5159, %159
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5166 = fsub fast float %5160, %5164
  %5167 = fsub fast float %5161, %5165
  %5168 = fmul fast float %5166, %5166
  %5169 = fmul fast float %5167, %5167
  %5170 = fadd fast float %5168, %5169
  %5171 = call float @dx.op.unary.f32(i32 24, float %5170)  ; Sqrt(value)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5173 = fcmp fast olt float %5171, %5172
  br i1 %5173, label %5174, label %5241

; <label>:5174                                    ; preds = %5131
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5183 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5185 = extractvalue %dx.types.CBufRet.f32 %5177, 3
  %5186 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5187 = fadd fast float %5184, %5160
  %5188 = fadd fast float %5185, %5161
  %5189 = fadd fast float %5186, %5162
  %5190 = fmul fast float %5187, %5176
  %5191 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5178, float %5190)  ; FMad(a,b,c)
  %5192 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5180, float %5191)  ; FMad(a,b,c)
  %5193 = fmul fast float %5187, %5181
  %5194 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5182, float %5193)  ; FMad(a,b,c)
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5183, float %5194)  ; FMad(a,b,c)
  %5196 = fsub fast float %5192, %5184
  %5197 = fsub fast float %5195, %5185
  %5198 = fsub fast float %5196, %5164
  %5199 = fadd fast float %5198, %5172
  %5200 = fsub fast float %5197, %5165
  %5201 = fadd fast float %5200, %5172
  %5202 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5203 = fmul fast float %5199, %5202
  %5204 = fmul fast float %5201, %5202
  %5205 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5207 = fsub fast float 1.000000e+00, %5205
  %5208 = fsub fast float 1.000000e+00, %5206
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5207, float %5208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = fcmp fast ugt float %5210, 0.000000e+00
  br i1 %5211, label %5212, label %5515

; <label>:5212                                    ; preds = %5174
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 2
  %5215 = fmul fast float %5214, %5210
  %5216 = extractvalue %dx.types.CBufRet.f32 %5213, 3
  %5217 = fadd fast float %5216, %5215
  %5218 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5219 = fadd fast float %5217, %5186
  %5220 = fmul fast float %5192, %5180
  %5221 = call float @dx.op.tertiary.f32(i32 46, float %5195, float %5183, float %5220)  ; FMad(a,b,c)
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5218, float %5221)  ; FMad(a,b,c)
  %5223 = fsub fast float %5222, %5186
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5226 = fsub fast float %5223, %5225
  %5227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5207, float %5208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.ResRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.ResRet.f32 %5227, 2
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5207, float %5208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = fadd fast float %5232, %5228
  %5236 = fmul fast float %5235, 0x3F847AE140000000
  %5237 = fadd fast float %5233, %5229
  %5238 = fmul fast float %5237, 0x3F847AE140000000
  %5239 = fadd fast float %5234, %5230
  %5240 = fmul fast float %5239, 0x3F847AE140000000
  br label %5515

; <label>:5241                                    ; preds = %5131
  %5242 = and i32 %195, 1
  %5243 = icmp eq i32 %5242, 0
  br i1 %5243, label %5515, label %5244

; <label>:5244                                    ; preds = %5241
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5252 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5255 = extractvalue %dx.types.CBufRet.f32 %5247, 3
  %5256 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5257 = fadd fast float %5254, %5160
  %5258 = fadd fast float %5255, %5161
  %5259 = fadd fast float %5256, %5162
  %5260 = fmul fast float %5257, %5246
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %5258, float %5248, float %5260)  ; FMad(a,b,c)
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5259, float %5250, float %5261)  ; FMad(a,b,c)
  %5263 = fmul fast float %5257, %5251
  %5264 = call float @dx.op.tertiary.f32(i32 46, float %5258, float %5252, float %5263)  ; FMad(a,b,c)
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5259, float %5253, float %5264)  ; FMad(a,b,c)
  %5266 = fsub fast float %5262, %5254
  %5267 = fsub fast float %5265, %5255
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5272 = extractvalue %dx.types.CBufRet.f32 %5268, 3
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 3
  %5275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.i32 %5275, 0
  %5277 = extractvalue %dx.types.CBufRet.i32 %5275, 1
  %5278 = udiv i32 %5277, %5276
  %5279 = fsub fast float %5266, %5269
  %5280 = fsub fast float %5267, %5270
  %5281 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5282 = call float @dx.op.binary.f32(i32 35, float %5280, float 0.000000e+00)  ; FMax(a,b)
  %5283 = call float @dx.op.binary.f32(i32 36, float %5281, float %5271)  ; FMin(a,b)
  %5284 = call float @dx.op.binary.f32(i32 36, float %5282, float %5272)  ; FMin(a,b)
  %5285 = add i32 %5276, -1
  %5286 = add i32 %5278, -1
  %5287 = fmul fast float %5283, %5274
  %5288 = fmul fast float %5284, %5274
  %5289 = fptoui float %5287 to i32
  %5290 = fptoui float %5288 to i32
  %5291 = call i32 @dx.op.binary.i32(i32 40, i32 %5289, i32 %5285)  ; UMin(a,b)
  %5292 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 %5286)  ; UMin(a,b)
  %5293 = mul i32 %5292, %5276
  %5294 = add i32 %5293, %5291
  %5295 = shl i32 %5294, 2
  %5296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5295, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.i32 %5296, 0
  %5298 = icmp eq i32 %5297, -1
  br i1 %5298, label %5515, label %5299

; <label>:5299                                    ; preds = %5244
  %5300 = mul i32 %5297, 148
  %5301 = add i32 %5300, 4
  %5302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5301, i32 undef)  ; BufferLoad(srv,index,wot)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = add i32 %5300, 8
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = add i32 %5300, 36
  %5308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = add i32 %5300, 60
  %5311 = add i32 %5300, 92
  %5312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5311, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.i32 %5312, 0
  %5314 = add i32 %5300, 116
  %5315 = fsub fast float %5266, %5303
  %5316 = fsub fast float %5267, %5306
  %5317 = fmul fast float %5274, %5315
  %5318 = fmul fast float %5274, %5316
  %5319 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5324 = call float @dx.op.unary.f32(i32 83, float %5319)  ; DerivCoarseX(value)
  %5325 = call float @dx.op.unary.f32(i32 83, float %5321)  ; DerivCoarseX(value)
  %5326 = call float @dx.op.unary.f32(i32 84, float %5319)  ; DerivCoarseY(value)
  %5327 = call float @dx.op.unary.f32(i32 84, float %5321)  ; DerivCoarseY(value)
  %5328 = fmul fast float %5324, %5323
  %5329 = fmul fast float %5325, %5323
  %5330 = fmul fast float %5326, %5323
  %5331 = fmul fast float %5327, %5323
  %5332 = call float @dx.op.dot2.f32(i32 54, float %5330, float %5331, float %5330, float %5331)  ; Dot2(ax,ay,bx,by)
  %5333 = call float @dx.op.dot2.f32(i32 54, float %5328, float %5329, float %5328, float %5329)  ; Dot2(ax,ay,bx,by)
  %5334 = call float @dx.op.binary.f32(i32 35, float %5333, float %5332)  ; FMax(a,b)
  %5335 = call float @dx.op.unary.f32(i32 23, float %5334)  ; Log(value)
  %5336 = fmul fast float %5335, 5.000000e-01
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5339 = fadd fast float %5338, %5336
  %5340 = call float @dx.op.binary.f32(i32 35, float %5339, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5343 = fadd fast float %5342, %5340
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 3
  %5346 = fadd fast float %5343, %5345
  %5347 = add i32 %5313, 0
  %5348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5349 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5348, i32 0)  ; GetDimensions(handle,mipLevel)
  %5350 = extractvalue %dx.types.Dimensions %5349, 0
  %5351 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5350)  ; FirstbitLo(value)
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 1
  %5354 = sub nsw i32 %5353, %5351
  %5355 = sitofp i32 %5354 to float
  %5356 = fsub fast float %5346, %5355
  %5357 = call float @dx.op.binary.f32(i32 35, float %5356, float 0.000000e+00)  ; FMax(a,b)
  %5358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5348, %dx.types.Handle %48, float %5319, float %5321, float %5309, float undef, i32 0, i32 0, i32 undef, float %5357)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = fcmp ule float %5359, 0x3FE0101020000000
  %5361 = extractvalue %dx.types.CBufRet.i32 %5352, 0
  %5362 = and i32 %5361, 128
  %5363 = icmp ne i32 %5362, 0
  %5364 = and i1 %5360, %5363
  br i1 %5364, label %5515, label %5365

; <label>:5365                                    ; preds = %5299
  %5366 = add i32 %5300, 20
  %5367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5366, i32 undef)  ; BufferLoad(srv,index,wot)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = add i32 %5300, 24
  %5370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5369, i32 undef)  ; BufferLoad(srv,index,wot)
  %5371 = extractvalue %dx.types.ResRet.f32 %5370, 0
  %5372 = add i32 %5300, 40
  %5373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = add i32 %5300, 96
  %5376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.i32 %5376, 0
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5380 = fmul fast float %5379, %5319
  %5381 = fmul fast float %5379, %5321
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = fadd fast float %5380, %5382
  %5384 = fadd fast float %5381, %5382
  %5385 = add i32 %5377, 0
  %5386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5385, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5387 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5386, i32 0)  ; GetDimensions(handle,mipLevel)
  %5388 = extractvalue %dx.types.Dimensions %5387, 0
  %5389 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5388)  ; FirstbitLo(value)
  %5390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.i32 %5390, 1
  %5392 = sub nsw i32 %5391, %5389
  %5393 = sitofp i32 %5392 to float
  %5394 = fsub fast float %5343, %5393
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float 0.000000e+00)  ; FMax(a,b)
  %5396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5386, %dx.types.Handle %48, float %5383, float %5384, float %5374, float undef, i32 0, i32 0, i32 undef, float %5395)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = fmul fast float %5397, %5368
  %5399 = fadd fast float %5398, %5371
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5408 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5409 = fadd fast float %5405, %5266
  %5410 = fadd fast float %5407, %5267
  %5411 = fadd fast float %5399, %5408
  %5412 = fmul fast float %5409, %5401
  %5413 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5402, float %5412)  ; FMad(a,b,c)
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5403, float %5413)  ; FMad(a,b,c)
  %5415 = fsub fast float %5414, %5408
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5418 = fsub fast float %5415, %5417
  %5419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.i32 %5419, 0
  %5421 = call i32 @dx.op.binary.i32(i32 40, i32 %5297, i32 %5420)  ; UMin(a,b)
  %5422 = mul i32 %5421, 36
  %5423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.i32 %5423, 0
  %5425 = add i32 %5422, 4
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = fmul fast float %5427, %5319
  %5429 = fmul fast float %5427, %5321
  %5430 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5431 = fadd fast float %5428, %5430
  %5432 = fadd fast float %5429, %5430
  %5433 = icmp eq i32 %5424, 0
  br i1 %5433, label %5502, label %5434

; <label>:5434                                    ; preds = %5365
  br label %5435

; <label>:5435                                    ; preds = %5492, %5434
  %5436 = phi float [ %5493, %5492 ], [ 0.000000e+00, %5434 ]
  %5437 = phi float [ %5494, %5492 ], [ 0.000000e+00, %5434 ]
  %5438 = phi float [ %5495, %5492 ], [ 0.000000e+00, %5434 ]
  %5439 = phi float [ %5496, %5492 ], [ 0.000000e+00, %5434 ]
  %5440 = phi float [ %5497, %5492 ], [ 0.000000e+00, %5434 ]
  %5441 = phi float [ %5498, %5492 ], [ 0.000000e+00, %5434 ]
  %5442 = phi i32 [ %5499, %5492 ], [ 0, %5434 ]
  %5443 = shl i32 %5442, 2
  %5444 = add i32 %5310, %5443
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = add i32 %5314, %5443
  %5448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.i32 %5448, 0
  %5450 = add i32 %5449, 0
  %5451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5450, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5452 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5451, i32 0)  ; GetDimensions(handle,mipLevel)
  %5453 = extractvalue %dx.types.Dimensions %5452, 0
  %5454 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5453)  ; FirstbitLo(value)
  %5455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.i32 %5455, 1
  %5457 = sub nsw i32 %5456, %5454
  %5458 = sitofp i32 %5457 to float
  %5459 = fsub fast float %5343, %5458
  %5460 = call float @dx.op.binary.f32(i32 35, float %5459, float 0.000000e+00)  ; FMax(a,b)
  %5461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5451, %dx.types.Handle %48, float %5431, float %5432, float %5446, float undef, i32 0, i32 0, i32 undef, float %5460)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = fcmp fast ogt float %5462, 0.000000e+00
  br i1 %5463, label %5464, label %5492

; <label>:5464                                    ; preds = %5435
  %5465 = add i32 %5425, %5443
  %5466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.i32 %5466, 0
  %5468 = and i32 %5467, 32767
  %5469 = mul nuw nsw i32 %5468, 928
  %5470 = add nuw nsw i32 %5469, 48
  %5471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = add nuw nsw i32 %5469, 60
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = fmul fast float %5472, %5462
  %5481 = fmul fast float %5473, %5462
  %5482 = fmul fast float %5474, %5462
  %5483 = fadd fast float %5480, %5436
  %5484 = fadd fast float %5481, %5437
  %5485 = fadd fast float %5482, %5438
  %5486 = fmul fast float %5477, %5462
  %5487 = fmul fast float %5478, %5462
  %5488 = fmul fast float %5479, %5462
  %5489 = fadd fast float %5486, %5439
  %5490 = fadd fast float %5487, %5440
  %5491 = fadd fast float %5488, %5441
  br label %5492

; <label>:5492                                    ; preds = %5464, %5435
  %5493 = phi float [ %5483, %5464 ], [ %5436, %5435 ]
  %5494 = phi float [ %5484, %5464 ], [ %5437, %5435 ]
  %5495 = phi float [ %5485, %5464 ], [ %5438, %5435 ]
  %5496 = phi float [ %5489, %5464 ], [ %5439, %5435 ]
  %5497 = phi float [ %5490, %5464 ], [ %5440, %5435 ]
  %5498 = phi float [ %5491, %5464 ], [ %5441, %5435 ]
  %5499 = add nuw i32 %5442, 1
  %5500 = icmp eq i32 %5499, %5424
  br i1 %5500, label %5501, label %5435

; <label>:5501                                    ; preds = %5492
  br label %5502

; <label>:5502                                    ; preds = %5501, %5365
  %5503 = phi float [ 0.000000e+00, %5365 ], [ %5493, %5501 ]
  %5504 = phi float [ 0.000000e+00, %5365 ], [ %5494, %5501 ]
  %5505 = phi float [ 0.000000e+00, %5365 ], [ %5495, %5501 ]
  %5506 = phi float [ 0.000000e+00, %5365 ], [ %5496, %5501 ]
  %5507 = phi float [ 0.000000e+00, %5365 ], [ %5497, %5501 ]
  %5508 = phi float [ 0.000000e+00, %5365 ], [ %5498, %5501 ]
  %5509 = fadd fast float %5506, %5503
  %5510 = fmul fast float %5509, 0x3F847AE140000000
  %5511 = fadd fast float %5507, %5504
  %5512 = fmul fast float %5511, 0x3F847AE140000000
  %5513 = fadd fast float %5508, %5505
  %5514 = fmul fast float %5513, 0x3F847AE140000000
  br label %5515

; <label>:5515                                    ; preds = %5502, %5299, %5244, %5241, %5212, %5174
  %5516 = phi float [ %5226, %5212 ], [ -1.310720e+05, %5174 ], [ %5418, %5502 ], [ -1.310720e+05, %5244 ], [ -1.310720e+05, %5299 ], [ -1.310720e+05, %5241 ]
  %5517 = phi float [ %5236, %5212 ], [ 0.000000e+00, %5174 ], [ %5510, %5502 ], [ 0.000000e+00, %5244 ], [ 0.000000e+00, %5299 ], [ 0.000000e+00, %5241 ]
  %5518 = phi float [ %5238, %5212 ], [ 0.000000e+00, %5174 ], [ %5512, %5502 ], [ 0.000000e+00, %5244 ], [ 0.000000e+00, %5299 ], [ 0.000000e+00, %5241 ]
  %5519 = phi float [ %5240, %5212 ], [ 0.000000e+00, %5174 ], [ %5514, %5502 ], [ 0.000000e+00, %5244 ], [ 0.000000e+00, %5299 ], [ 0.000000e+00, %5241 ]
  %5520 = phi i1 [ true, %5212 ], [ false, %5174 ], [ true, %5502 ], [ false, %5244 ], [ false, %5299 ], [ false, %5241 ]
  %5521 = and i32 %195, 3
  %5522 = icmp eq i32 %5521, 1
  %5523 = select i1 %5522, float 1.000000e+00, float 0.000000e+00
  %5524 = fsub fast float %5516, %159
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = select i1 %5520, float %5525, float 1.000000e+00
  %5527 = fmul fast float %5526, %5523
  %5528 = icmp eq i32 %5521, 3
  %5529 = select i1 %5528, float 1.000000e+00, float %5527
  %5530 = call float @dx.op.binary.f32(i32 35, float %5088, float %5529)  ; FMax(a,b)
  %5531 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5532 = fcmp fast une float %5531, 0.000000e+00
  %5533 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.unary.f32(i32 25, float %5533)  ; Rsqrt(value)
  br i1 %5532, label %5542, label %5535

; <label>:5535                                    ; preds = %5515
  %5536 = fmul fast float %5534, %157
  %5537 = fmul fast float %5534, %158
  %5538 = fmul fast float %5534, %159
  %5539 = fsub fast float -0.000000e+00, %5536
  %5540 = fsub fast float -0.000000e+00, %5537
  %5541 = fsub fast float -0.000000e+00, %5538
  br label %5710

; <label>:5542                                    ; preds = %5515
  %5543 = fmul fast float %157, %5534
  %5544 = fsub fast float -0.000000e+00, %5543
  %5545 = fmul fast float %158, %5534
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = fmul fast float %159, %5534
  %5548 = fsub fast float -0.000000e+00, %5547
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5546, float %5548, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fmul fast float %5531, 2.500000e+00
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fmul fast float %5531, 0x4013FFFFE0000000
  %5553 = fadd fast float %5552, 0xBFFFFFFFE0000000
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fmul fast float %5531, 0x4004000020000000
  %5556 = fadd fast float %5555, 0xBFF8000040000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5559 = fmul fast float %5091, 1.000000e+01
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %5560, 2.000000e+00
  %5562 = fsub fast float 3.000000e+00, %5561
  %5563 = fmul fast float %5560, %5560
  %5564 = fmul fast float %5563, %5562
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fsub fast float 0x3FE3333340000000, %5112
  %5567 = fmul fast float %5566, 0x400AAAAAA0000000
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fmul fast float %5565, %5568
  %5570 = fmul fast float %5149, 0x3FEA2B8620000000
  %5571 = fmul fast float %5150, 0x3FEA2B8620000000
  %5572 = fmul fast float %5151, 0x3FEA2B8620000000
  %5573 = fadd fast float %5570, 0x3FC81DFBA0000000
  %5574 = fmul fast float %5573, %5149
  %5575 = fadd fast float %5574, 0x3F910E6020000000
  %5576 = fadd fast float %5571, 0x3FC81DFBA0000000
  %5577 = fmul fast float %5576, %5150
  %5578 = fadd fast float %5577, 0x3F910E6020000000
  %5579 = fadd fast float %5572, 0x3FC81DFBA0000000
  %5580 = fmul fast float %5579, %5151
  %5581 = fadd fast float %5580, 0x3F910E6020000000
  %5582 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5583 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5585 = fsub fast float %5582, %5149
  %5586 = fsub fast float %5583, %5150
  %5587 = fsub fast float %5584, %5151
  %5588 = fmul fast float %5585, %5558
  %5589 = fmul fast float %5588, %5569
  %5590 = fmul fast float %5586, %5558
  %5591 = fmul fast float %5590, %5569
  %5592 = fmul fast float %5587, %5558
  %5593 = fmul fast float %5592, %5569
  %5594 = fadd fast float %5589, %5149
  %5595 = fadd fast float %5591, %5150
  %5596 = fadd fast float %5593, %5151
  %5597 = fmul fast float %5085, %5085
  %5598 = fmul fast float %5597, %5597
  %5599 = fadd fast float %5554, 1.000000e+00
  %5600 = fsub fast float %5599, %5569
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fsub fast float 1.000000e+00, %5598
  %5605 = call float @dx.op.binary.f32(i32 36, float %5601, float %5604)  ; FMin(a,b)
  %5606 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5605, float %5606)  ; FMax(a,b)
  %5608 = fadd fast float %5603, 0xBFE4CCCCC0000000
  %5609 = fmul fast float %5608, 0x4006DB6DA0000000
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, 2.000000e+00
  %5612 = fsub fast float 3.000000e+00, %5611
  %5613 = bitcast float %5109 to i32
  %5614 = ashr i32 %5613, 1
  %5615 = add nsw i32 %5614, 532487669
  %5616 = bitcast i32 %5615 to float
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = bitcast float %5617 to i32
  %5619 = sub nsw i32 2129859010, %5618
  %5620 = bitcast i32 %5619 to float
  %5621 = fmul fast float %5620, 2.000000e+00
  %5622 = bitcast float %5110 to i32
  %5623 = ashr i32 %5622, 1
  %5624 = add nsw i32 %5623, 532487669
  %5625 = bitcast i32 %5624 to float
  %5626 = fsub fast float 1.000000e+00, %5625
  %5627 = bitcast float %5626 to i32
  %5628 = sub nsw i32 2129859010, %5627
  %5629 = bitcast i32 %5628 to float
  %5630 = fmul fast float %5629, 2.000000e+00
  %5631 = bitcast float %5111 to i32
  %5632 = ashr i32 %5631, 1
  %5633 = add nsw i32 %5632, 532487669
  %5634 = bitcast i32 %5633 to float
  %5635 = fsub fast float 1.000000e+00, %5634
  %5636 = bitcast float %5635 to i32
  %5637 = sub nsw i32 2129859010, %5636
  %5638 = bitcast i32 %5637 to float
  %5639 = fmul fast float %5638, 2.000000e+00
  %5640 = fsub fast float 0x4002A9FBE0000000, %5621
  %5641 = fadd fast float %5621, 0x3FD54FDF00000000
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5645, %5645
  %5647 = fsub fast float 0x4002A9FBE0000000, %5630
  %5648 = fadd fast float %5630, 0x3FD54FDF00000000
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = bitcast i32 %5650 to float
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5652, %5652
  %5654 = fsub fast float 0x4002A9FBE0000000, %5639
  %5655 = fadd fast float %5639, 0x3FD54FDF00000000
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5658, %5654
  %5660 = fmul fast float %5659, %5659
  %5661 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5646)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5653)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5660)  ; FMax(a,b)
  %5664 = fsub fast float 1.000000e+00, %5549
  %5665 = fadd fast float %5664, %5565
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fsub fast float 1.000000e+00, %5529
  %5668 = fmul fast float %5607, %5667
  %5669 = fmul fast float %5610, %5610
  %5670 = fmul fast float %5669, %5668
  %5671 = fmul fast float %5670, %5612
  %5672 = fmul fast float %5667, 0xBFE99999A0000000
  %5673 = fmul fast float %5672, %5558
  %5674 = fmul fast float %5673, %5569
  %5675 = fadd fast float %5674, 1.000000e+00
  %5676 = fadd fast float %5112, -1.000000e+00
  %5677 = fmul fast float %5675, %5676
  %5678 = fadd fast float %5677, 1.000000e+00
  %5679 = fsub fast float %5661, %5109
  %5680 = fsub fast float %5662, %5110
  %5681 = fsub fast float %5663, %5111
  %5682 = fmul fast float %5671, %5679
  %5683 = fmul fast float %5671, %5680
  %5684 = fmul fast float %5671, %5681
  %5685 = fadd fast float %5682, %5109
  %5686 = fadd fast float %5683, %5110
  %5687 = fadd fast float %5684, %5111
  %5688 = fsub fast float %109, %5067
  %5689 = fsub fast float %110, %5068
  %5690 = fsub fast float %111, %5069
  %5691 = fmul fast float %5671, %5688
  %5692 = fmul fast float %5671, %5689
  %5693 = fmul fast float %5671, %5690
  %5694 = fadd fast float %5691, %5067
  %5695 = fadd fast float %5692, %5068
  %5696 = fadd fast float %5693, %5069
  %5697 = fmul fast float %5671, %5666
  %5698 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = fmul fast float %5697, %5699
  %5701 = fadd fast float %5700, %5698
  %5702 = fsub fast float 1.000000e+00, %5085
  %5703 = fmul fast float %5671, %5702
  %5704 = fadd fast float %5703, %5085
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = call float @dx.op.unary.f32(i32 25, float %5705)  ; Rsqrt(value)
  %5707 = fmul fast float %5694, %5706
  %5708 = fmul fast float %5695, %5706
  %5709 = fmul fast float %5696, %5706
  br label %5710

; <label>:5710                                    ; preds = %5542, %5535
  %5711 = phi float [ %5541, %5535 ], [ %5548, %5542 ]
  %5712 = phi float [ %5540, %5535 ], [ %5546, %5542 ]
  %5713 = phi float [ %5539, %5535 ], [ %5544, %5542 ]
  %5714 = phi float [ %5538, %5535 ], [ %5547, %5542 ]
  %5715 = phi float [ %5537, %5535 ], [ %5545, %5542 ]
  %5716 = phi float [ %5536, %5535 ], [ %5543, %5542 ]
  %5717 = phi float [ %5149, %5535 ], [ %5594, %5542 ]
  %5718 = phi float [ %5150, %5535 ], [ %5595, %5542 ]
  %5719 = phi float [ %5151, %5535 ], [ %5596, %5542 ]
  %5720 = phi float [ %5109, %5535 ], [ %5685, %5542 ]
  %5721 = phi float [ %5110, %5535 ], [ %5686, %5542 ]
  %5722 = phi float [ %5111, %5535 ], [ %5687, %5542 ]
  %5723 = phi float [ %5067, %5535 ], [ %5707, %5542 ]
  %5724 = phi float [ %5068, %5535 ], [ %5708, %5542 ]
  %5725 = phi float [ %5069, %5535 ], [ %5709, %5542 ]
  %5726 = phi float [ %5112, %5535 ], [ %5701, %5542 ]
  %5727 = phi float [ %5085, %5535 ], [ %5704, %5542 ]
  %5728 = fsub fast float -0.000000e+00, %159
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 2
  %5731 = extractvalue %dx.types.CBufRet.f32 %5729, 3
  %5732 = fmul fast float %127, %5730
  %5733 = fmul fast float %129, %5731
  %5734 = fsub fast float 1.000000e+00, %5732
  %5735 = fsub fast float 1.000000e+00, %5733
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.CBufRet.f32 %5736, 2
  %5740 = fmul fast float %5734, %5737
  %5741 = fmul fast float %5734, %5738
  %5742 = fmul fast float %5734, %5739
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = fmul fast float %5735, %5744
  %5748 = fmul fast float %5735, %5745
  %5749 = fmul fast float %5735, %5746
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = fadd fast float %5747, %5751
  %5755 = fadd fast float %5754, %5740
  %5756 = fadd fast float %5748, %5752
  %5757 = fadd fast float %5756, %5741
  %5758 = fadd fast float %5749, %5753
  %5759 = fadd fast float %5758, %5742
  %5760 = fmul fast float %5755, %93
  %5761 = fmul fast float %5757, %93
  %5762 = fmul fast float %5759, %93
  %5763 = select i1 %219, float 0.000000e+00, float %5722
  %5764 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5713, float %5712, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5715, float %5714, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fmul fast float %5766, 2.000000e+00
  %5768 = fmul fast float %5767, %5723
  %5769 = fmul fast float %5767, %5724
  %5770 = fmul fast float %5767, %5725
  %5771 = fsub fast float %5716, %5768
  %5772 = fsub fast float %5715, %5769
  %5773 = fsub fast float %5714, %5770
  %5774 = call float @dx.op.binary.f32(i32 36, float %5727, float 1.000000e+00)  ; FMin(a,b)
  %5775 = fsub fast float 1.000000e+00, %5727
  %5776 = bitcast float %5775 to i32
  %5777 = sub nsw i32 2129859010, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5780 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fcmp fast oeq float %5780, 0.000000e+00
  %5782 = fcmp fast oeq float %5779, 0.000000e+00
  %5783 = or i1 %5782, %5781
  br i1 %5783, label %5813, label %5784

; <label>:5784                                    ; preds = %5710
  %5785 = fsub fast float -0.000000e+00, %76
  %5786 = fsub fast float -0.000000e+00, %74
  %5787 = call float @dx.op.unary.f32(i32 24, float %5780)  ; Sqrt(value)
  %5788 = fdiv fast float %5787, %5779
  %5789 = fcmp fast ogt float %5788, 0x3FFB6F8900000000
  %5790 = select i1 %5789, float 0x3FFB6F8900000000, float %5788
  %5791 = fmul fast float %5790, 0x3FE8A23460000000
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = call float @dx.op.binary.f32(i32 35, float %5790, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5794 = fmul fast float %5792, %5779
  %5795 = fmul fast float %5793, 0x3FF279A740000000
  %5796 = fadd fast float %5795, -1.000000e+00
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5786, float %75, float %5785, float %5786, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.unary.f32(i32 25, float %5797)  ; Rsqrt(value)
  %5799 = fmul fast float %5798, %5785
  %5800 = fmul fast float %5798, %5786
  %5801 = fmul fast float %5798, %75
  %5802 = fmul fast float %5796, %5796
  %5803 = fsub fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5793, 0x40005F8BE0000000
  %5805 = fsub fast float 0x400C5BF8A0000000, %5804
  %5806 = fdiv fast float %5794, %5805
  %5807 = fmul fast float %5806, 0x3FEE31C3C0000000
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5793, 0x3FDACB7480000000
  %5810 = fadd fast float %5809, 0xBFD7347680000000
  %5811 = fmul fast float %5810, %5806
  %5812 = fmul fast float %5811, %5803
  br label %5813

; <label>:5813                                    ; preds = %5784, %5710
  %5814 = phi float [ %5799, %5784 ], [ 0.000000e+00, %5710 ]
  %5815 = phi float [ %5800, %5784 ], [ 0.000000e+00, %5710 ]
  %5816 = phi float [ %5801, %5784 ], [ 0.000000e+00, %5710 ]
  %5817 = phi float [ %5808, %5784 ], [ 0.000000e+00, %5710 ]
  %5818 = phi float [ %5812, %5784 ], [ 0.000000e+00, %5710 ]
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5816, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fmul fast float %5819, %5819
  %5821 = fmul fast float %5820, 0x3FEE471020000000
  %5822 = fadd fast float %5821, 0xBFD42F6020000000
  %5823 = fmul fast float %5779, 0x3FD20DD760000000
  %5824 = fmul fast float %5822, %5818
  %5825 = fmul fast float %5817, 0x3FDF454380000000
  %5826 = fmul fast float %5825, %5819
  %5827 = fadd fast float %5826, %5823
  %5828 = fadd fast float %5827, %5824
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5816, float %5771, float %5772, float %5773)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = fmul fast float %5829, 0x3FDF454380000000
  %5831 = fmul fast float %5829, %5829
  %5832 = fmul fast float %5831, 0x3FEE471020000000
  %5833 = fadd fast float %5832, 0xBFD42F6020000000
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5817, float %5818, float 0x3FD20DD760000000, float %5830, float %5833)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5836 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fcmp fast oeq float %5836, 0.000000e+00
  %5838 = fcmp fast oeq float %5835, 0.000000e+00
  %5839 = or i1 %5838, %5837
  br i1 %5839, label %5869, label %5840

; <label>:5840                                    ; preds = %5813
  %5841 = fsub fast float -0.000000e+00, %72
  %5842 = fsub fast float -0.000000e+00, %70
  %5843 = call float @dx.op.unary.f32(i32 24, float %5836)  ; Sqrt(value)
  %5844 = fdiv fast float %5843, %5835
  %5845 = fcmp fast ogt float %5844, 0x3FFB6F8900000000
  %5846 = select i1 %5845, float 0x3FFB6F8900000000, float %5844
  %5847 = fmul fast float %5846, 0x3FE8A23460000000
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5846, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5850 = fmul fast float %5848, %5835
  %5851 = fmul fast float %5849, 0x3FF279A740000000
  %5852 = fadd fast float %5851, -1.000000e+00
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %71, float %5841, float %5842, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.unary.f32(i32 25, float %5853)  ; Rsqrt(value)
  %5855 = fmul fast float %5854, %5841
  %5856 = fmul fast float %5854, %5842
  %5857 = fmul fast float %5854, %71
  %5858 = fmul fast float %5852, %5852
  %5859 = fsub fast float 1.000000e+00, %5858
  %5860 = fmul fast float %5849, 0x40005F8BE0000000
  %5861 = fsub fast float 0x400C5BF8A0000000, %5860
  %5862 = fdiv fast float %5850, %5861
  %5863 = fmul fast float %5862, 0x3FEE31C3C0000000
  %5864 = fmul fast float %5863, %5859
  %5865 = fmul fast float %5849, 0x3FDACB7480000000
  %5866 = fadd fast float %5865, 0xBFD7347680000000
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %5867, %5859
  br label %5869

; <label>:5869                                    ; preds = %5840, %5813
  %5870 = phi float [ %5855, %5840 ], [ 0.000000e+00, %5813 ]
  %5871 = phi float [ %5856, %5840 ], [ 0.000000e+00, %5813 ]
  %5872 = phi float [ %5857, %5840 ], [ 0.000000e+00, %5813 ]
  %5873 = phi float [ %5864, %5840 ], [ 0.000000e+00, %5813 ]
  %5874 = phi float [ %5868, %5840 ], [ 0.000000e+00, %5813 ]
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = fmul fast float %5875, %5875
  %5877 = fmul fast float %5876, 0x3FEE471020000000
  %5878 = fadd fast float %5877, 0xBFD42F6020000000
  %5879 = fmul fast float %5835, 0x3FD20DD760000000
  %5880 = fmul fast float %5878, %5874
  %5881 = fmul fast float %5873, 0x3FDF454380000000
  %5882 = fmul fast float %5881, %5875
  %5883 = fadd fast float %5882, %5879
  %5884 = fadd fast float %5883, %5880
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float %5771, float %5772, float %5773)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fmul fast float %5885, 0x3FDF454380000000
  %5887 = fmul fast float %5885, %5885
  %5888 = fmul fast float %5887, 0x3FEE471020000000
  %5889 = fadd fast float %5888, 0xBFD42F6020000000
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5873, float %5874, float 0x3FD20DD760000000, float %5886, float %5889)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5892 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = fcmp fast oeq float %5892, 0.000000e+00
  %5894 = fcmp fast oeq float %5891, 0.000000e+00
  %5895 = or i1 %5894, %5893
  br i1 %5895, label %5925, label %5896

; <label>:5896                                    ; preds = %5869
  %5897 = fsub fast float -0.000000e+00, %68
  %5898 = fsub fast float -0.000000e+00, %66
  %5899 = call float @dx.op.unary.f32(i32 24, float %5892)  ; Sqrt(value)
  %5900 = fdiv fast float %5899, %5891
  %5901 = fcmp fast ogt float %5900, 0x3FFB6F8900000000
  %5902 = select i1 %5901, float 0x3FFB6F8900000000, float %5900
  %5903 = fmul fast float %5902, 0x3FE8A23460000000
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5902, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5906 = fmul fast float %5904, %5891
  %5907 = fmul fast float %5905, 0x3FF279A740000000
  %5908 = fadd fast float %5907, -1.000000e+00
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %67, float %5897, float %5898, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = call float @dx.op.unary.f32(i32 25, float %5909)  ; Rsqrt(value)
  %5911 = fmul fast float %5910, %5897
  %5912 = fmul fast float %5910, %5898
  %5913 = fmul fast float %5910, %67
  %5914 = fmul fast float %5908, %5908
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = fmul fast float %5905, 0x40005F8BE0000000
  %5917 = fsub fast float 0x400C5BF8A0000000, %5916
  %5918 = fdiv fast float %5906, %5917
  %5919 = fmul fast float %5918, 0x3FEE31C3C0000000
  %5920 = fmul fast float %5919, %5915
  %5921 = fmul fast float %5905, 0x3FDACB7480000000
  %5922 = fadd fast float %5921, 0xBFD7347680000000
  %5923 = fmul fast float %5922, %5918
  %5924 = fmul fast float %5923, %5915
  br label %5925

; <label>:5925                                    ; preds = %5896, %5869
  %5926 = phi float [ %5911, %5896 ], [ 0.000000e+00, %5869 ]
  %5927 = phi float [ %5912, %5896 ], [ 0.000000e+00, %5869 ]
  %5928 = phi float [ %5913, %5896 ], [ 0.000000e+00, %5869 ]
  %5929 = phi float [ %5920, %5896 ], [ 0.000000e+00, %5869 ]
  %5930 = phi float [ %5924, %5896 ], [ 0.000000e+00, %5869 ]
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = fmul fast float %5931, %5931
  %5933 = fmul fast float %5932, 0x3FEE471020000000
  %5934 = fadd fast float %5933, 0xBFD42F6020000000
  %5935 = fmul fast float %5891, 0x3FD20DD760000000
  %5936 = fmul fast float %5934, %5930
  %5937 = fmul fast float %5929, 0x3FDF454380000000
  %5938 = fmul fast float %5937, %5931
  %5939 = fadd fast float %5938, %5935
  %5940 = fadd fast float %5939, %5936
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %5771, float %5772, float %5773)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = fmul fast float %5941, 0x3FDF454380000000
  %5943 = fmul fast float %5941, %5941
  %5944 = fmul fast float %5943, 0x3FEE471020000000
  %5945 = fadd fast float %5944, 0xBFD42F6020000000
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5929, float %5930, float 0x3FD20DD760000000, float %5942, float %5945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = call float @dx.op.binary.f32(i32 35, float %5828, float 0.000000e+00)  ; FMax(a,b)
  %5948 = call float @dx.op.binary.f32(i32 35, float %5884, float 0.000000e+00)  ; FMax(a,b)
  %5949 = call float @dx.op.binary.f32(i32 35, float %5940, float 0.000000e+00)  ; FMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5951 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5946, float 0.000000e+00)  ; FMax(a,b)
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = call float @dx.op.binary.f32(i32 36, float %5717, float %5954)  ; FMin(a,b)
  %5956 = fsub fast float 1.000000e+00, %5774
  %5957 = fmul fast float %5955, %5956
  %5958 = fsub fast float 1.000000e+00, %5957
  %5959 = bitcast float %5958 to i32
  %5960 = sub nsw i32 2129859010, %5959
  %5961 = bitcast i32 %5960 to float
  %5962 = call float @dx.op.binary.f32(i32 36, float %5718, float %5954)  ; FMin(a,b)
  %5963 = fmul fast float %5962, %5956
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = bitcast float %5964 to i32
  %5966 = sub nsw i32 2129859010, %5965
  %5967 = bitcast i32 %5966 to float
  %5968 = call float @dx.op.binary.f32(i32 36, float %5719, float %5954)  ; FMin(a,b)
  %5969 = fmul fast float %5968, %5956
  %5970 = fsub fast float 1.000000e+00, %5969
  %5971 = bitcast float %5970 to i32
  %5972 = sub nsw i32 2129859010, %5971
  %5973 = bitcast i32 %5972 to float
  %5974 = fmul fast float %5947, %5774
  %5975 = fmul fast float %5974, %5961
  %5976 = fmul fast float %5948, %5774
  %5977 = fmul fast float %5976, %5967
  %5978 = fmul fast float %5949, %5774
  %5979 = fmul fast float %5978, %5973
  %5980 = call float @dx.op.binary.f32(i32 36, float %5720, float %5954)  ; FMin(a,b)
  %5981 = fmul fast float %5980, %5956
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = bitcast float %5982 to i32
  %5984 = sub nsw i32 2129859010, %5983
  %5985 = bitcast i32 %5984 to float
  %5986 = call float @dx.op.binary.f32(i32 36, float %5721, float %5954)  ; FMin(a,b)
  %5987 = fmul fast float %5986, %5956
  %5988 = fsub fast float 1.000000e+00, %5987
  %5989 = bitcast float %5988 to i32
  %5990 = sub nsw i32 2129859010, %5989
  %5991 = bitcast i32 %5990 to float
  %5992 = call float @dx.op.binary.f32(i32 36, float %5763, float %5954)  ; FMin(a,b)
  %5993 = fmul fast float %5992, %5956
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = bitcast float %5994 to i32
  %5996 = sub nsw i32 2129859010, %5995
  %5997 = bitcast i32 %5996 to float
  %5998 = fmul fast float %5950, %5774
  %5999 = fmul fast float %5998, %5985
  %6000 = fmul fast float %5951, %5774
  %6001 = fmul fast float %6000, %5991
  %6002 = fmul fast float %5952, %5774
  %6003 = fmul fast float %6002, %5997
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5975, float %5977, float %5979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = select i1 %219, float 0.000000e+00, float %5975
  %6006 = select i1 %219, float %6004, float %5977
  %6007 = select i1 %219, float 0.000000e+00, float %5979
  %6008 = call float @dx.op.dot3.f32(i32 55, float %5999, float %6001, float %6003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = select i1 %219, float 0.000000e+00, float %5999
  %6010 = select i1 %219, float %6008, float %6001
  %6011 = select i1 %219, float 0.000000e+00, float %6003
  %6012 = fmul fast float %4423, %4423
  %6013 = call float @dx.op.unary.f32(i32 7, float %6012)  ; Saturate(value)
  %6014 = fmul fast float %5765, 9.843750e-01
  %6015 = fmul fast float %5726, 9.843750e-01
  %6016 = fadd fast float %6014, 7.812500e-03
  %6017 = fadd fast float %6015, 7.812500e-03
  %6018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %6016, float %6017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.ResRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.ResRet.f32 %6018, 2
  %6022 = extractvalue %dx.types.ResRet.f32 %6018, 3
  %6023 = fsub fast float 1.000000e+00, %6013
  %6024 = fsub fast float %6021, %6019
  %6025 = fsub fast float %6022, %6020
  %6026 = fmul fast float %6024, %6023
  %6027 = fmul fast float %6025, %6023
  %6028 = fadd fast float %6026, %6019
  %6029 = fadd fast float %6027, %6020
  %6030 = fmul fast float %6028, %5720
  %6031 = fmul fast float %6028, %5721
  %6032 = fmul fast float %6028, %5763
  %6033 = fadd fast float %6030, %6029
  %6034 = fadd fast float %6031, %6029
  %6035 = fadd fast float %6032, %6029
  %6036 = fcmp fast ogt float %5086, 0.000000e+00
  br i1 %6036, label %6037, label %6063

; <label>:6037                                    ; preds = %5925
  %6038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6039 = extractvalue %dx.types.ResRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.ResRet.f32 %6038, 1
  %6041 = extractvalue %dx.types.ResRet.f32 %6038, 2
  %6042 = fadd fast float %6039, -5.000000e-01
  %6043 = fadd fast float %6040, -5.000000e-01
  %6044 = fadd fast float %6041, -5.000000e-01
  %6045 = fsub fast float 1.000000e+00, %5720
  %6046 = fsub fast float 1.000000e+00, %5721
  %6047 = fsub fast float 1.000000e+00, %5763
  %6048 = fmul fast float %5720, 4.000000e+00
  %6049 = fmul fast float %6048, %6045
  %6050 = fmul fast float %6049, %6042
  %6051 = fmul fast float %5721, 4.000000e+00
  %6052 = fmul fast float %6051, %6046
  %6053 = fmul fast float %6052, %6043
  %6054 = fmul fast float %5763, 4.000000e+00
  %6055 = fmul fast float %6054, %6047
  %6056 = fmul fast float %6055, %6044
  %6057 = fadd fast float %6050, %6033
  %6058 = fadd fast float %6053, %6034
  %6059 = fadd fast float %6056, %6035
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  br label %6063

; <label>:6063                                    ; preds = %6037, %5925
  %6064 = phi float [ %6060, %6037 ], [ %6033, %5925 ]
  %6065 = phi float [ %6061, %6037 ], [ %6034, %5925 ]
  %6066 = phi float [ %6062, %6037 ], [ %6035, %5925 ]
  %6067 = call float @dx.op.binary.f32(i32 35, float %6065, float %6066)  ; FMax(a,b)
  %6068 = call float @dx.op.binary.f32(i32 35, float %6064, float %6067)  ; FMax(a,b)
  %6069 = fsub fast float 1.000000e+00, %6068
  %6070 = fmul fast float %6069, %6005
  %6071 = fmul fast float %6069, %6006
  %6072 = fmul fast float %6069, %6007
  %6073 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = fcmp fast ogt float %6073, 0x3E7FF19E20000000
  %6075 = fdiv fast float 1.000000e+00, %6073
  %6076 = select i1 %6074, float %6075, float 0.000000e+00
  %6077 = fmul fast float %6076, %5717
  %6078 = fmul fast float %6076, %5718
  %6079 = fmul fast float %6076, %5719
  %6080 = fadd fast float %6077, -1.000000e+00
  %6081 = fadd fast float %6078, -1.000000e+00
  %6082 = fadd fast float %6079, -1.000000e+00
  %6083 = fmul fast float %6080, 5.000000e-01
  %6084 = fmul fast float %6081, 5.000000e-01
  %6085 = fmul fast float %6082, 5.000000e-01
  %6086 = fadd fast float %6083, 1.000000e+00
  %6087 = fadd fast float %6084, 1.000000e+00
  %6088 = fadd fast float %6085, 1.000000e+00
  %6089 = call float @dx.op.binary.f32(i32 35, float %5765, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6090 = fdiv fast float %4423, %6089
  %6091 = fcmp fast olt float %5135, 1.270000e+02
  %6092 = fcmp fast olt float %5136, 1.270000e+02
  %6093 = fcmp fast olt float %5137, 1.270000e+02
  %6094 = fmul fast float %5135, 0xBFF7154760000000
  %6095 = fmul fast float %6094, %6090
  %6096 = fmul fast float %5136, 0xBFF7154760000000
  %6097 = fmul fast float %6096, %6090
  %6098 = fmul fast float %5137, 0xBFF7154760000000
  %6099 = fmul fast float %6098, %6090
  %6100 = call float @dx.op.unary.f32(i32 21, float %6095)  ; Exp(value)
  %6101 = call float @dx.op.unary.f32(i32 21, float %6097)  ; Exp(value)
  %6102 = call float @dx.op.unary.f32(i32 21, float %6099)  ; Exp(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6104 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = select i1 %6091, float %6103, float 0.000000e+00
  %6107 = select i1 %6092, float %6104, float 0.000000e+00
  %6108 = select i1 %6093, float %6105, float 0.000000e+00
  %6109 = fmul fast float %6106, %6069
  %6110 = fmul fast float %6107, %6069
  %6111 = fmul fast float %6108, %6069
  %6112 = fadd fast float %6109, -1.000000e+00
  %6113 = fadd fast float %6110, -1.000000e+00
  %6114 = fadd fast float %6111, -1.000000e+00
  %6115 = fmul fast float %6112, %5083
  %6116 = fmul fast float %6113, %5083
  %6117 = fmul fast float %6114, %5083
  %6118 = fadd fast float %6115, 1.000000e+00
  %6119 = fadd fast float %6116, 1.000000e+00
  %6120 = fadd fast float %6117, 1.000000e+00
  %6121 = fmul fast float %5721, 0x401CF23780000000
  %6122 = fadd fast float %6121, 0x3FF32641C0000000
  %6123 = fdiv fast float 1.000000e+00, %6122
  %6124 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5712, float %5711, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %6125 = fmul fast float %6123, %6123
  %6126 = fmul fast float %6124, %6124
  %6127 = fsub fast float 1.000000e+00, %6126
  %6128 = fmul fast float %6125, %6127
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = fcmp fast oge float %6129, 0.000000e+00
  %6131 = fmul fast float %6123, %5713
  %6132 = fmul fast float %6123, %5712
  %6133 = fmul fast float %6123, %5711
  %6134 = call float @dx.op.unary.f32(i32 24, float %6129)  ; Sqrt(value)
  %6135 = fmul fast float %6124, %6123
  %6136 = fadd fast float %6135, %6134
  %6137 = fmul fast float %6136, %5723
  %6138 = fmul fast float %6136, %5724
  %6139 = fmul fast float %6136, %5725
  %6140 = fsub fast float %6131, %6137
  %6141 = fsub fast float %6132, %6138
  %6142 = fsub fast float %6133, %6139
  %6143 = select i1 %6130, float %6140, float 0.000000e+00
  %6144 = select i1 %6130, float %6141, float 0.000000e+00
  %6145 = select i1 %6130, float %6142, float 0.000000e+00
  %6146 = fmul fast float %6143, %4423
  %6147 = fmul fast float %6144, %4423
  %6148 = fmul fast float %6145, %4423
  %6149 = fadd fast float %6146, %5760
  %6150 = fadd fast float %6147, %5761
  %6151 = fadd fast float %6148, %5762
  %6152 = call float @dx.op.dot3.f32(i32 55, float %5153, float %5154, float %5155, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = fsub fast float 1.000000e+00, %5726
  %6154 = fmul fast float %6153, %5083
  %6155 = fsub fast float 1.000000e+00, %6154
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = fsub fast float 1.000000e+00, %6156
  %6158 = fmul fast float %5721, 0x4012D0A400000000
  %6159 = fadd fast float %6158, 0x3FDB6377A0000000
  %6160 = fmul fast float %6157, %6159
  %6161 = fadd fast float %6160, %6152
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fmul fast float %6064, %6009
  %6164 = fmul fast float %6065, %6010
  %6165 = fmul fast float %6066, %6011
  %6166 = fsub fast float 1.000000e+00, %5765
  %6167 = bitcast float %6166 to i32
  %6168 = sitofp i32 %6167 to float
  %6169 = fmul fast float %6168, 5.000000e+00
  %6170 = fadd fast float %6169, 0xC1EFBF8940000000
  %6171 = fptosi float %6170 to i32
  %6172 = bitcast i32 %6171 to float
  %6173 = fmul fast float %6172, %5087
  %6174 = fmul fast float %6005, %6173
  %6175 = fmul fast float %6174, %6069
  %6176 = fmul fast float %6175, %6086
  %6177 = fmul fast float %6006, %6173
  %6178 = fmul fast float %6177, %6069
  %6179 = fmul fast float %6178, %6087
  %6180 = fmul fast float %6007, %6173
  %6181 = fmul fast float %6180, %6069
  %6182 = fmul fast float %6181, %6088
  %6183 = fmul fast float %6070, %5083
  %6184 = fmul fast float %6071, %5083
  %6185 = fmul fast float %6072, %5083
  %6186 = fsub fast float 1.000000e+00, %6162
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6191 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.CBufRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.CBufRet.f32 %6192, 2
  %6196 = extractvalue %dx.types.CBufRet.f32 %6192, 3
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = fmul fast float %6149, %6188
  %6203 = call float @dx.op.tertiary.f32(i32 46, float %6150, float %6189, float %6202)  ; FMad(a,b,c)
  %6204 = call float @dx.op.tertiary.f32(i32 46, float %6151, float %6190, float %6203)  ; FMad(a,b,c)
  %6205 = fadd fast float %6204, %6191
  %6206 = fmul fast float %6149, %6193
  %6207 = call float @dx.op.tertiary.f32(i32 46, float %6150, float %6194, float %6206)  ; FMad(a,b,c)
  %6208 = call float @dx.op.tertiary.f32(i32 46, float %6151, float %6195, float %6207)  ; FMad(a,b,c)
  %6209 = fadd fast float %6208, %6196
  %6210 = fmul fast float %6149, %6198
  %6211 = call float @dx.op.tertiary.f32(i32 46, float %6150, float %6199, float %6210)  ; FMad(a,b,c)
  %6212 = call float @dx.op.tertiary.f32(i32 46, float %6151, float %6200, float %6211)  ; FMad(a,b,c)
  %6213 = fadd fast float %6212, %6201
  %6214 = fdiv fast float %6205, %6213
  %6215 = fdiv fast float %6209, %6213
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = fmul fast float %6217, %6214
  %6220 = fmul fast float %6218, %6215
  %6221 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6222 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6223 = fadd fast float %6219, %6221
  %6224 = fadd fast float %6220, %6222
  %6225 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = fmul fast float %6228, %6225
  %6231 = fmul fast float %6229, %6226
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6235 = fsub fast float %6233, %6234
  %6236 = fmul fast float %6235, %6186
  %6237 = fadd fast float %6236, %6234
  %6238 = fmul fast float %232, 2.000000e+00
  %6239 = fmul fast float %233, 2.000000e+00
  %6240 = fadd fast float %6238, -1.000000e+00
  %6241 = fadd fast float %6239, -1.000000e+00
  %6242 = fmul fast float %6237, %6240
  %6243 = fmul fast float %6237, %6241
  %6244 = fadd fast float %6242, %6230
  %6245 = fadd fast float %6243, %6231
  %6246 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6248 = fmul fast float %6244, %6246
  %6249 = fmul fast float %6245, %6247
  %6250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6248, float %6249, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = fcmp fast ogt float %6251, -1.000000e+00
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6255 = select i1 %6252, float %6254, float 1.000000e+00
  %6256 = fadd fast float %6251, 1.000000e+00
  %6257 = fmul fast float %6255, %6256
  %6258 = call float @dx.op.unary.f32(i32 6, float %6257)  ; FAbs(value)
  %6259 = fsub fast float %6258, %6213
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6262 = fmul fast float %6261, %6258
  %6263 = fdiv fast float 1.600000e+02, %6262
  %6264 = fmul fast float %6162, %6162
  %6265 = fmul fast float %6264, 0xBFB5B17960000000
  %6266 = fmul fast float %6265, %6259
  %6267 = fmul fast float %6266, %6263
  %6268 = call float @dx.op.unary.f32(i32 21, float %6267)  ; Exp(value)
  %6269 = fmul fast float %6268, 0x3FF04B2960000000
  %6270 = fsub fast float 0x3FF04B2960000000, %6269
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6271, 4.000000e+00
  %6273 = fadd fast float %232, -5.000000e-01
  %6274 = fadd fast float %233, -5.000000e-01
  %6275 = fmul fast float %6271, 0x3FBEB851E0000000
  %6276 = call float @dx.op.unary.f32(i32 7, float %6275)  ; Saturate(value)
  %6277 = fmul fast float %6276, %6273
  %6278 = fmul fast float %6276, %6274
  %6279 = fadd fast float %6277, %6223
  %6280 = fadd fast float %6278, %6224
  %6281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.i32 %6281, 0
  %6283 = icmp eq i32 %6282, 0
  br i1 %6283, label %6289, label %6284, !dx.controlflow.hints !94

; <label>:6284                                    ; preds = %6063
  %6285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6279, float %6280, float undef, float undef, i32 0, i32 0, i32 undef, float %6272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  br label %6294

; <label>:6289                                    ; preds = %6063
  %6290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6279, float %6280, float undef, float undef, i32 0, i32 0, i32 undef, float %6272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.ResRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.ResRet.f32 %6290, 2
  br label %6294

; <label>:6294                                    ; preds = %6289, %6284
  %6295 = phi float [ %6286, %6284 ], [ %6291, %6289 ]
  %6296 = phi float [ %6287, %6284 ], [ %6292, %6289 ]
  %6297 = phi float [ %6288, %6284 ], [ %6293, %6289 ]
  %6298 = select i1 %219, float 0.000000e+00, float %6296
  %6299 = select i1 %219, float 0.000000e+00, float %6297
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6302 = fmul fast float %6295, %6118
  %6303 = fmul fast float %6302, %6301
  %6304 = fmul fast float %6298, %6119
  %6305 = fmul fast float %6304, %6301
  %6306 = fmul fast float %6299, %6120
  %6307 = fmul fast float %6306, %6301
  %6308 = fadd fast float %6163, %5073
  %6309 = fadd fast float %6308, %6176
  %6310 = fadd fast float %6309, %6303
  %6311 = fmul fast float %6310, %5083
  %6312 = fadd fast float %6164, %5074
  %6313 = fadd fast float %6312, %6179
  %6314 = fadd fast float %6313, %6305
  %6315 = fmul fast float %6314, %5083
  %6316 = fadd fast float %6165, %5075
  %6317 = fadd fast float %6316, %6182
  %6318 = fadd fast float %6317, %6307
  %6319 = fmul fast float %6318, %5083
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6322 = fcmp fast oeq float %6321, 0.000000e+00
  br i1 %6322, label %7527, label %6323

; <label>:6323                                    ; preds = %6294
  %6324 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.CBufRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.CBufRet.f32 %6327, 2
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6328, float %6329, float %6330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = select i1 %219, float %6332, float %6328
  %6336 = select i1 %219, float %6334, float %6329
  %6337 = select i1 %219, float %6333, float %6330
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 2
  %6340 = fmul fast float %6339, %109
  %6341 = fmul fast float %6339, %110
  %6342 = fmul fast float %6339, %111
  %6343 = fadd fast float %6340, %157
  %6344 = fadd fast float %6341, %158
  %6345 = fadd fast float %6342, %159
  %6346 = fcmp fast olt float %6321, 0.000000e+00
  br i1 %6346, label %6971, label %6347

; <label>:6347                                    ; preds = %6323
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6362 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6363 = fmul fast float %6349, %6343
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6350, float %6363)  ; FMad(a,b,c)
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6351, float %6364)  ; FMad(a,b,c)
  %6366 = fadd fast float %6365, %6352
  %6367 = fmul fast float %6354, %6343
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6355, float %6367)  ; FMad(a,b,c)
  %6369 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6356, float %6368)  ; FMad(a,b,c)
  %6370 = fadd fast float %6369, %6357
  %6371 = fmul fast float %6359, %6343
  %6372 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6360, float %6371)  ; FMad(a,b,c)
  %6373 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6361, float %6372)  ; FMad(a,b,c)
  %6374 = fadd fast float %6373, %6362
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6379 = fmul fast float %6378, %6366
  %6380 = fmul fast float %6378, %6370
  %6381 = fadd fast float %6379, %6376
  %6382 = fadd fast float %6380, %6377
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6387 = fmul fast float %6386, %6366
  %6388 = fmul fast float %6386, %6370
  %6389 = fadd fast float %6387, %6384
  %6390 = fadd fast float %6388, %6385
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6393 = fsub fast float %6392, %6374
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = fmul fast float %6393, %6394
  %6396 = fsub fast float 1.000000e+00, %6395
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6401 = fadd fast float %6400, %6398
  %6402 = fcmp fast ogt float %6401, 0.000000e+00
  br i1 %6402, label %6403, label %6427

; <label>:6403                                    ; preds = %6347
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = fsub fast float %6389, %6405
  %6408 = fsub fast float %6390, %6406
  %6409 = fcmp fast olt float %6407, 0.000000e+00
  %6410 = fcmp fast olt float %6408, 0.000000e+00
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6415 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6416 = select i1 %6409, float %6412, float %6414
  %6417 = select i1 %6410, float %6413, float %6415
  %6418 = fmul fast float %6416, %6407
  %6419 = fmul fast float %6417, %6408
  %6420 = call float @dx.op.unary.f32(i32 6, float %6418)  ; FAbs(value)
  %6421 = call float @dx.op.unary.f32(i32 6, float %6419)  ; FAbs(value)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6423 = call float @dx.op.binary.f32(i32 35, float %6420, float %6421)  ; FMax(a,b)
  %6424 = fsub fast float %6422, %6423
  %6425 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6426 = fmul fast float %6425, %6397
  br label %6427

; <label>:6427                                    ; preds = %6403, %6347
  %6428 = phi float [ %6426, %6403 ], [ 0.000000e+00, %6347 ]
  %6429 = extractvalue %dx.types.CBufRet.f32 %6375, 2
  %6430 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6431 = fadd fast float %6430, %6429
  %6432 = fcmp fast ogt float %6431, 0.000000e+00
  %6433 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  br i1 %6432, label %6434, label %6457

; <label>:6434                                    ; preds = %6427
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6438 = fsub fast float %6381, %6436
  %6439 = fsub fast float %6382, %6437
  %6440 = fcmp fast olt float %6438, 0.000000e+00
  %6441 = fcmp fast olt float %6439, 0.000000e+00
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6447 = select i1 %6440, float %6443, float %6445
  %6448 = select i1 %6441, float %6444, float %6446
  %6449 = fmul fast float %6447, %6438
  %6450 = fmul fast float %6448, %6439
  %6451 = call float @dx.op.unary.f32(i32 6, float %6449)  ; FAbs(value)
  %6452 = call float @dx.op.unary.f32(i32 6, float %6450)  ; FAbs(value)
  %6453 = call float @dx.op.binary.f32(i32 35, float %6451, float %6452)  ; FMax(a,b)
  %6454 = fsub fast float %6433, %6453
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = fmul fast float %6455, %6397
  br label %6457

; <label>:6457                                    ; preds = %6434, %6427
  %6458 = phi float [ %6456, %6434 ], [ 0.000000e+00, %6427 ]
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = fsub fast float %6366, %6463
  %6466 = fsub fast float %6370, %6464
  %6467 = fcmp fast olt float %6465, 0.000000e+00
  %6468 = fcmp fast olt float %6466, 0.000000e+00
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.CBufRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6473 = extractvalue %dx.types.CBufRet.f32 %6469, 3
  %6474 = select i1 %6467, float %6470, float %6472
  %6475 = select i1 %6468, float %6471, float %6473
  %6476 = fmul fast float %6474, %6465
  %6477 = fmul fast float %6475, %6466
  %6478 = call float @dx.op.unary.f32(i32 6, float %6476)  ; FAbs(value)
  %6479 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6480 = call float @dx.op.binary.f32(i32 35, float %6478, float %6479)  ; FMax(a,b)
  %6481 = fsub fast float %6433, %6480
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6483 = call float @dx.op.binary.f32(i32 36, float %6482, float %6461)  ; FMin(a,b)
  %6484 = fmul fast float %6483, %6397
  %6485 = fsub fast float %6458, %6484
  %6486 = fsub fast float %6428, %6458
  %6487 = fsub fast float %6486, %6484
  %6488 = call float @dx.op.binary.f32(i32 35, float %6458, float %6428)  ; FMax(a,b)
  %6489 = call float @dx.op.binary.f32(i32 35, float %6484, float %6488)  ; FMax(a,b)
  %6490 = fcmp fast olt float %6489, 1.000000e+00
  br i1 %6490, label %6491, label %6889, !dx.controlflow.hints !95

; <label>:6491                                    ; preds = %6457
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = fcmp fast une float %6493, 0.000000e+00
  br i1 %6494, label %6495, label %6889, !dx.controlflow.hints !96

; <label>:6495                                    ; preds = %6491
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.CBufRet.f32 %6496, 3
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.CBufRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.CBufRet.f32 %6501, 3
  %6506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.CBufRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.CBufRet.f32 %6506, 2
  %6510 = extractvalue %dx.types.CBufRet.f32 %6506, 3
  %6511 = fmul fast float %6497, %6343
  %6512 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6498, float %6511)  ; FMad(a,b,c)
  %6513 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6499, float %6512)  ; FMad(a,b,c)
  %6514 = fadd fast float %6513, %6500
  %6515 = fmul fast float %6502, %6343
  %6516 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6503, float %6515)  ; FMad(a,b,c)
  %6517 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6504, float %6516)  ; FMad(a,b,c)
  %6518 = fadd fast float %6517, %6505
  %6519 = fmul fast float %6507, %6343
  %6520 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6508, float %6519)  ; FMad(a,b,c)
  %6521 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6509, float %6520)  ; FMad(a,b,c)
  %6522 = fadd fast float %6521, %6510
  %6523 = fcmp fast oge float %6514, 1.000000e+00
  %6524 = fcmp fast oge float %6518, 1.000000e+00
  %6525 = or i1 %6523, %6524
  %6526 = fcmp fast olt float %6514, 0.000000e+00
  %6527 = fcmp fast olt float %6518, 0.000000e+00
  %6528 = or i1 %6526, %6527
  %6529 = or i1 %6525, %6528
  br i1 %6529, label %6889, label %6530, !dx.controlflow.hints !97

; <label>:6530                                    ; preds = %6495
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.i32 %6535, 2
  %6537 = uitofp i32 %6536 to float
  %6538 = extractvalue %dx.types.CBufRet.i32 %6535, 3
  %6539 = uitofp i32 %6538 to float
  %6540 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6541 = fmul fast float %6540, 2.000000e+00
  %6542 = fsub fast float %6514, %6532
  %6543 = fsub fast float %6518, %6533
  %6544 = fmul fast float %6541, %6542
  %6545 = fmul fast float %6541, %6543
  %6546 = fdiv fast float 1.000000e+00, %6326
  %6547 = fmul fast float %6545, %6546
  %6548 = call float @dx.op.unary.f32(i32 6, float %6547)  ; FAbs(value)
  %6549 = fmul fast float %6534, %6345
  %6550 = fmul fast float %6549, %6541
  %6551 = call float @dx.op.unary.f32(i32 6, float %6550)  ; FAbs(value)
  %6552 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6553 = call float @dx.op.binary.f32(i32 35, float %6551, float %6548)  ; FMax(a,b)
  %6554 = call float @dx.op.binary.f32(i32 35, float %6552, float %6553)  ; FMax(a,b)
  %6555 = fmul fast float %6554, 2.000000e+00
  %6556 = call float @dx.op.unary.f32(i32 23, float %6555)  ; Log(value)
  %6557 = call float @dx.op.binary.f32(i32 35, float %6556, float %6537)  ; FMax(a,b)
  %6558 = call float @dx.op.unary.f32(i32 22, float %6557)  ; Frc(value)
  %6559 = fadd fast float %6558, 0xBFEA666660000000
  %6560 = fmul fast float %6559, 8.000000e+00
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = call float @dx.op.unary.f32(i32 27, float %6557)  ; Round_ni(value)
  %6563 = fadd fast float %6562, %6561
  %6564 = call float @dx.op.binary.f32(i32 36, float %6563, float %6539)  ; FMin(a,b)
  %6565 = call float @dx.op.unary.f32(i32 27, float %6564)  ; Round_ni(value)
  %6566 = fsub fast float -0.000000e+00, %6565
  %6567 = call float @dx.op.unary.f32(i32 21, float %6566)  ; Exp(value)
  %6568 = fmul fast float %6567, %6541
  %6569 = fmul fast float %6568, %6514
  %6570 = fmul fast float %6568, %6518
  %6571 = fmul fast float %6569, 2.500000e-01
  %6572 = fmul fast float %6570, 2.500000e-01
  %6573 = fadd fast float %6571, 5.000000e-01
  %6574 = fadd fast float %6572, 5.000000e-01
  %6575 = fsub fast float %6539, %6537
  %6576 = fptoui float %6575 to i32
  %6577 = add i32 %6576, 320
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6577)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.CBufRet.f32 %6578, 1
  %6581 = fcmp fast une float %6564, %6539
  %6582 = fsub fast float %6514, %6579
  %6583 = fsub fast float %6518, %6580
  %6584 = call float @dx.op.unary.f32(i32 6, float %6582)  ; FAbs(value)
  %6585 = call float @dx.op.unary.f32(i32 6, float %6583)  ; FAbs(value)
  %6586 = fmul fast float %6584, %6568
  %6587 = fmul fast float %6585, %6568
  %6588 = fcmp fast olt float %6586, 1.000000e+00
  %6589 = fcmp fast olt float %6587, 1.000000e+00
  %6590 = and i1 %6588, %6589
  %6591 = or i1 %6581, %6590
  br i1 %6591, label %6592, label %6889, !dx.controlflow.hints !98

; <label>:6592                                    ; preds = %6530
  %6593 = fmul fast float %6570, 5.000000e-01
  %6594 = fmul fast float %6569, 5.000000e-01
  %6595 = fadd fast float %6593, 5.000000e-01
  %6596 = fadd fast float %6594, 5.000000e-01
  %6597 = sitofp i32 %6536 to float
  %6598 = fsub fast float %6564, %6597
  %6599 = call float @dx.op.unary.f32(i32 27, float %6598)  ; Round_ni(value)
  %6600 = call float @dx.op.unary.f32(i32 22, float %6564)  ; Frc(value)
  %6601 = call float @dx.op.unary.f32(i32 22, float %6596)  ; Frc(value)
  %6602 = call float @dx.op.unary.f32(i32 22, float %6595)  ; Frc(value)
  %6603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6601, float %6602, float %6599, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6604 = extractvalue %dx.types.ResRet.f32 %6603, 0
  %6605 = extractvalue %dx.types.ResRet.f32 %6603, 1
  %6606 = extractvalue %dx.types.ResRet.f32 %6603, 2
  %6607 = extractvalue %dx.types.ResRet.f32 %6603, 3
  %6608 = fcmp fast ogt float %6600, 0.000000e+00
  br i1 %6608, label %6609, label %6630, !dx.controlflow.hints !99

; <label>:6609                                    ; preds = %6592
  %6610 = fadd fast float %6599, 1.000000e+00
  %6611 = call float @dx.op.unary.f32(i32 22, float %6573)  ; Frc(value)
  %6612 = call float @dx.op.unary.f32(i32 22, float %6574)  ; Frc(value)
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6611, float %6612, float %6610, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.ResRet.f32 %6613, 1
  %6616 = extractvalue %dx.types.ResRet.f32 %6613, 2
  %6617 = extractvalue %dx.types.ResRet.f32 %6613, 3
  %6618 = fsub fast float %6614, %6604
  %6619 = fsub fast float %6615, %6605
  %6620 = fsub fast float %6616, %6606
  %6621 = fsub fast float %6617, %6607
  %6622 = fmul fast float %6618, %6600
  %6623 = fmul fast float %6619, %6600
  %6624 = fmul fast float %6620, %6600
  %6625 = fmul fast float %6621, %6600
  %6626 = fadd fast float %6622, %6604
  %6627 = fadd fast float %6623, %6605
  %6628 = fadd fast float %6624, %6606
  %6629 = fadd fast float %6625, %6607
  br label %6630

; <label>:6630                                    ; preds = %6609, %6592
  %6631 = phi float [ %6626, %6609 ], [ %6604, %6592 ]
  %6632 = phi float [ %6627, %6609 ], [ %6605, %6592 ]
  %6633 = phi float [ %6628, %6609 ], [ %6606, %6592 ]
  %6634 = phi float [ %6629, %6609 ], [ %6607, %6592 ]
  %6635 = fadd fast float %6631, -5.000000e-01
  %6636 = fadd fast float %6633, -5.000000e-01
  %6637 = fmul fast float %6635, 0xBFD5555560000000
  %6638 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6636, float %6637)  ; FMad(a,b,c)
  %6639 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6632, float 0.000000e+00)  ; FMad(a,b,c)
  %6640 = fadd fast float %6639, %6634
  %6641 = fmul fast float %6635, -7.500000e-01
  %6642 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6636, float %6641)  ; FMad(a,b,c)
  %6643 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6632, float 0.000000e+00)  ; FMad(a,b,c)
  %6644 = fadd fast float %6643, %6634
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6652 = fsub fast float %6648, %6638
  %6653 = fsub fast float %6649, %6640
  %6654 = fsub fast float %6650, %6642
  %6655 = fsub fast float %6651, %6644
  %6656 = fmul fast float %6652, %6646
  %6657 = fmul fast float %6653, %6646
  %6658 = fmul fast float %6654, %6646
  %6659 = fmul fast float %6655, %6646
  %6660 = fadd fast float %6656, %6638
  %6661 = fadd fast float %6657, %6640
  %6662 = fadd fast float %6658, %6642
  %6663 = fadd fast float %6659, %6644
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = and i32 %6665, 536870911
  %6667 = uitofp i32 %6666 to float
  %6668 = fmul fast float %6667, %6514
  %6669 = fmul fast float %6667, %6518
  %6670 = fptoui float %6668 to i32
  %6671 = fptoui float %6669 to i32
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = and i32 %6673, 31
  %6675 = lshr i32 %6670, %6674
  %6676 = lshr i32 %6671, %6674
  %6677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6678 = extractvalue %dx.types.ResRet.i32 %6677, 0
  %6679 = and i32 %6678, 31
  %6680 = shl i32 1, %6679
  %6681 = call i32 @dx.op.binary.i32(i32 40, i32 %6680, i32 4)  ; UMin(a,b)
  %6682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6683 = extractvalue %dx.types.ResRet.i32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.i32 %6682, 1
  %6685 = icmp eq i32 %6681, 0
  br i1 %6685, label %6727, label %6686

; <label>:6686                                    ; preds = %6630
  br label %6687

; <label>:6687                                    ; preds = %6715, %6686
  %6688 = phi i32 [ %6718, %6715 ], [ 0, %6686 ]
  %6689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6690 = extractvalue %dx.types.ResRet.i32 %6689, 0
  %6691 = lshr i32 %6690, 16
  %6692 = and i32 %6691, 31
  %6693 = shl i32 %6676, %6692
  %6694 = add i32 %6693, %6675
  %6695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6696 = extractvalue %dx.types.ResRet.i32 %6695, 0
  %6697 = and i32 %6696, 31
  %6698 = shl i32 %6694, %6697
  %6699 = add i32 %6698, %6688
  %6700 = shl i32 %6699, 2
  %6701 = add i32 %6700, 32
  %6702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6701, i32 undef)  ; BufferLoad(srv,index,wot)
  %6703 = extractvalue %dx.types.ResRet.i32 %6702, 0
  %6704 = icmp slt i32 %6703, 0
  %6705 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6688
  %6706 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6688
  %6707 = bitcast float* %6705 to i32*
  %6708 = bitcast float* %6706 to i32*
  br i1 %6704, label %6709, label %6715

; <label>:6709                                    ; preds = %6687
  %6710 = and i32 %6703, 1073741823
  %6711 = add nuw nsw i32 %6710, 20
  %6712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6711, i32 undef)  ; BufferLoad(srv,index,wot)
  %6713 = extractvalue %dx.types.ResRet.i32 %6712, 0
  %6714 = extractvalue %dx.types.ResRet.i32 %6712, 1
  br label %6715

; <label>:6715                                    ; preds = %6709, %6687
  %6716 = phi i32 [ %6713, %6709 ], [ %6683, %6687 ]
  %6717 = phi i32 [ %6714, %6709 ], [ %6684, %6687 ]
  store i32 %6716, i32* %6707, align 4
  store i32 %6717, i32* %6708, align 4
  %6718 = add nuw i32 %6688, 1
  %6719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.i32 %6719, 2
  %6721 = icmp eq i32 %6720, 0
  %6722 = icmp ugt i32 %6703, -1073741825
  %6723 = and i1 %6722, %6721
  %6724 = icmp ult i32 %6718, %6681
  %6725 = and i1 %6723, %6724
  br i1 %6725, label %6687, label %6726

; <label>:6726                                    ; preds = %6715
  br label %6727

; <label>:6727                                    ; preds = %6726, %6630
  %6728 = phi i32 [ 0, %6630 ], [ %6718, %6726 ]
  %6729 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6730 = fptoui float %6729 to i32
  %6731 = icmp eq i32 %6730, 0
  br i1 %6731, label %6783, label %6732

; <label>:6732                                    ; preds = %6727
  br label %6733

; <label>:6733                                    ; preds = %6778, %6732
  %6734 = phi i32 [ %6779, %6778 ], [ %6728, %6732 ]
  %6735 = phi i32 [ %6780, %6778 ], [ 0, %6732 ]
  %6736 = lshr i32 %6735, 2
  %6737 = and i32 %6735, 3
  %6738 = add nuw nsw i32 %6736, 83
  %6739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6738)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.i32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.i32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.i32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.i32 %6739, 3
  %6744 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6740, i32* %6744, align 4
  %6745 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6741, i32* %6745, align 4
  %6746 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6742, i32* %6746, align 4
  %6747 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6743, i32* %6747, align 4
  %6748 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6737
  %6749 = load i32, i32* %6748, align 4, !tbaa !100, !noalias !104
  %6750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.i32 %6750, 0
  %6752 = lshr i32 %6751, 16
  %6753 = and i32 %6752, 31
  %6754 = shl i32 %6676, %6753
  %6755 = add i32 %6754, %6675
  %6756 = shl i32 %6755, 2
  %6757 = add i32 %6756, %6749
  %6758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6757, i32 undef)  ; BufferLoad(srv,index,wot)
  %6759 = extractvalue %dx.types.ResRet.i32 %6758, 0
  %6760 = icmp eq i32 %6759, 0
  br i1 %6760, label %6778, label %6761

; <label>:6761                                    ; preds = %6733
  %6762 = icmp slt i32 %6759, 0
  %6763 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6734
  %6764 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6734
  %6765 = bitcast float* %6763 to i32*
  %6766 = bitcast float* %6764 to i32*
  br i1 %6762, label %6767, label %6774

; <label>:6767                                    ; preds = %6761
  %6768 = and i32 %6759, 1073741823
  %6769 = add i32 %6749, 20
  %6770 = add i32 %6769, %6768
  %6771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6770, i32 undef)  ; BufferLoad(srv,index,wot)
  %6772 = extractvalue %dx.types.ResRet.i32 %6771, 0
  %6773 = extractvalue %dx.types.ResRet.i32 %6771, 1
  br label %6774

; <label>:6774                                    ; preds = %6767, %6761
  %6775 = phi i32 [ %6772, %6767 ], [ %6683, %6761 ]
  %6776 = phi i32 [ %6773, %6767 ], [ %6684, %6761 ]
  store i32 %6775, i32* %6765, align 4
  store i32 %6776, i32* %6766, align 4
  %6777 = add i32 %6734, 1
  br label %6778

; <label>:6778                                    ; preds = %6774, %6733
  %6779 = phi i32 [ %6734, %6733 ], [ %6777, %6774 ]
  %6780 = add nuw i32 %6735, 1
  %6781 = icmp eq i32 %6780, %6730
  br i1 %6781, label %6782, label %6733

; <label>:6782                                    ; preds = %6778
  br label %6783

; <label>:6783                                    ; preds = %6782, %6727
  %6784 = phi i32 [ %6728, %6727 ], [ %6779, %6782 ]
  %6785 = icmp eq i32 %6784, 1
  %6786 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6787 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6785, label %6788, label %6791

; <label>:6788                                    ; preds = %6783
  %6789 = load float, float* %6786, align 4
  %6790 = load float, float* %6787, align 4
  br label %6818

; <label>:6791                                    ; preds = %6783
  %6792 = load float, float* %6786, align 4
  %6793 = load float, float* %6787, align 4
  %6794 = fdiv fast float 1.000000e+00, %6793
  %6795 = fsub fast float %6792, %6794
  %6796 = icmp ugt i32 %6784, 1
  br i1 %6796, label %6797, label %6813

; <label>:6797                                    ; preds = %6791
  br label %6798

; <label>:6798                                    ; preds = %6798, %6797
  %6799 = phi float [ %6808, %6798 ], [ %6795, %6797 ]
  %6800 = phi float [ %6809, %6798 ], [ %6792, %6797 ]
  %6801 = phi i32 [ %6810, %6798 ], [ 1, %6797 ]
  %6802 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6801
  %6803 = load float, float* %6802, align 4
  %6804 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6801
  %6805 = load float, float* %6804, align 4
  %6806 = fdiv fast float 1.000000e+00, %6805
  %6807 = fsub fast float %6803, %6806
  %6808 = call float @dx.op.binary.f32(i32 36, float %6799, float %6807)  ; FMin(a,b)
  %6809 = call float @dx.op.binary.f32(i32 35, float %6800, float %6803)  ; FMax(a,b)
  %6810 = add nuw i32 %6801, 1
  %6811 = icmp eq i32 %6810, %6784
  br i1 %6811, label %6812, label %6798

; <label>:6812                                    ; preds = %6798
  br label %6813

; <label>:6813                                    ; preds = %6812, %6791
  %6814 = phi float [ %6795, %6791 ], [ %6808, %6812 ]
  %6815 = phi float [ %6792, %6791 ], [ %6809, %6812 ]
  %6816 = fsub fast float %6815, %6814
  %6817 = fdiv fast float 1.000000e+00, %6816
  br label %6818

; <label>:6818                                    ; preds = %6813, %6788
  %6819 = phi float [ %6789, %6788 ], [ %6815, %6813 ]
  %6820 = phi float [ %6790, %6788 ], [ %6817, %6813 ]
  %6821 = fadd fast float %6522, %6819
  %6822 = fmul fast float %6821, %6820
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = fmul fast float %6823, 2.000000e+00
  %6825 = fsub fast float 1.000000e+00, %6824
  %6826 = fmul fast float %6660, %6660
  %6827 = fsub fast float %6661, %6826
  %6828 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6827)  ; FMax(a,b)
  %6829 = fdiv fast float 1.000000e+00, %6828
  %6830 = fmul fast float %6661, %6660
  %6831 = fsub fast float %6662, %6830
  %6832 = fsub fast float %6825, %6660
  %6833 = fmul fast float %6825, %6825
  %6834 = fsub fast float %6833, %6661
  %6835 = fmul fast float %6829, %6831
  %6836 = fmul fast float %6835, %6832
  %6837 = fsub fast float %6834, %6836
  %6838 = fmul fast float %6661, %6661
  %6839 = fsub fast float %6663, %6838
  %6840 = fmul fast float %6831, %6831
  %6841 = fmul fast float %6840, %6829
  %6842 = fsub fast float %6839, %6841
  %6843 = fdiv fast float %6837, %6842
  %6844 = fmul fast float %6843, %6831
  %6845 = fsub fast float %6832, %6844
  %6846 = fmul fast float %6845, %6829
  %6847 = fmul fast float %6846, %6660
  %6848 = fsub fast float 1.000000e+00, %6847
  %6849 = fmul fast float %6843, %6661
  %6850 = fsub fast float %6848, %6849
  %6851 = fmul fast float %6846, %6846
  %6852 = fmul fast float %6843, 4.000000e+00
  %6853 = fmul fast float %6852, %6850
  %6854 = fsub fast float %6851, %6853
  %6855 = call float @dx.op.unary.f32(i32 24, float %6854)  ; Sqrt(value)
  %6856 = fcmp fast oge float %6846, 0.000000e+00
  %6857 = fsub fast float -0.000000e+00, %6855
  %6858 = select i1 %6856, float %6857, float %6855
  %6859 = fsub fast float %6858, %6846
  %6860 = fdiv fast float %6859, %6843
  %6861 = fdiv fast float %6850, %6859
  %6862 = fmul fast float %6860, 5.000000e-01
  %6863 = fmul fast float %6861, 2.000000e+00
  %6864 = select i1 %6856, float %6862, float %6863
  %6865 = select i1 %6856, float %6863, float %6862
  %6866 = call float @dx.op.binary.f32(i32 35, float %6864, float %6865)  ; FMax(a,b)
  %6867 = call float @dx.op.binary.f32(i32 36, float %6864, float %6865)  ; FMin(a,b)
  %6868 = fcmp fast ogt float %6825, %6866
  %6869 = fsub fast float %6825, %6867
  %6870 = fsub fast float %6825, %6866
  %6871 = fsub fast float %6866, %6867
  %6872 = select i1 %6868, float %6870, float %6871
  %6873 = fmul float %6869, %6872
  %6874 = select i1 %6868, float %6867, float %6825
  %6875 = fcmp fast ogt float %6825, %6867
  %6876 = fmul fast float %6874, %6866
  %6877 = fadd fast float %6874, %6866
  %6878 = fmul fast float %6877, %6660
  %6879 = fadd fast float %6876, %6661
  %6880 = fsub fast float %6879, %6878
  %6881 = fdiv fast float %6880, %6873
  %6882 = select i1 %6875, float %6881, float 0.000000e+00
  %6883 = fsub fast float 1.000000e+00, %6882
  %6884 = select i1 %6868, float %6883, float %6882
  %6885 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6645, 3
  %6887 = fmul fast float %6886, %6885
  %6888 = fsub fast float 1.000000e+00, %6887
  br label %6889

; <label>:6889                                    ; preds = %6818, %6530, %6495, %6491, %6457
  %6890 = phi float [ 1.000000e+00, %6457 ], [ %6888, %6818 ], [ 1.000000e+00, %6495 ], [ 1.000000e+00, %6530 ], [ 1.000000e+00, %6491 ]
  %6891 = fcmp fast ogt float %6487, 0.000000e+00
  br i1 %6891, label %6892, label %6898, !dx.controlflow.hints !113

; <label>:6892                                    ; preds = %6889
  %6893 = fadd fast float %6400, %6374
  %6894 = call float @dx.op.binary.f32(i32 35, float %6893, float 0.000000e+00)  ; FMax(a,b)
  %6895 = fadd fast float %6894, 0x3F10000000000000
  %6896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6389, float %6390, float undef, float undef, i32 0, i32 0, i32 undef, float %6895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  br label %6898

; <label>:6898                                    ; preds = %6892, %6889
  %6899 = phi float [ %6897, %6892 ], [ 1.000000e+00, %6889 ]
  %6900 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6900, label %6901, label %6907, !dx.controlflow.hints !114

; <label>:6901                                    ; preds = %6898
  %6902 = fadd fast float %6430, %6374
  %6903 = call float @dx.op.binary.f32(i32 35, float %6902, float 0.000000e+00)  ; FMax(a,b)
  %6904 = fadd fast float %6903, 0x3F10000000000000
  %6905 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6381, float %6382, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  br label %6907

; <label>:6907                                    ; preds = %6901, %6898
  %6908 = phi float [ %6906, %6901 ], [ 1.000000e+00, %6898 ]
  %6909 = fcmp fast ogt float %6484, 0.000000e+00
  br i1 %6909, label %6910, label %6917, !dx.controlflow.hints !115

; <label>:6910                                    ; preds = %6907
  %6911 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6912 = fadd fast float %6911, %6374
  %6913 = call float @dx.op.binary.f32(i32 35, float %6912, float 0.000000e+00)  ; FMax(a,b)
  %6914 = fadd fast float %6913, 0x3F10000000000000
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6366, float %6370, float undef, float undef, i32 0, i32 0, i32 undef, float %6914)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  br label %6917

; <label>:6917                                    ; preds = %6910, %6907
  %6918 = phi float [ %6916, %6910 ], [ 1.000000e+00, %6907 ]
  %6919 = fsub fast float %6899, %6890
  %6920 = fmul fast float %6919, %6428
  %6921 = fadd fast float %6920, %6890
  %6922 = fsub fast float %6908, %6921
  %6923 = fmul fast float %6922, %6458
  %6924 = fadd fast float %6923, %6921
  %6925 = fsub fast float %6918, %6924
  %6926 = fmul fast float %6925, %6484
  %6927 = fadd fast float %6926, %6924
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6930 = fcmp fast ogt float %6929, 0.000000e+00
  br i1 %6930, label %6931, label %6971, !dx.controlflow.hints !116

; <label>:6931                                    ; preds = %6917
  %6932 = fcmp fast ugt float %6929, 0.000000e+00
  br i1 %6932, label %6933, label %6968

; <label>:6933                                    ; preds = %6931
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6938 = extractvalue %dx.types.CBufRet.f32 %6934, 3
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.CBufRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.CBufRet.f32 %6939, 2
  %6943 = extractvalue %dx.types.CBufRet.f32 %6939, 3
  %6944 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6945 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6946, 2
  %6950 = fadd fast float %6947, %6343
  %6951 = fadd fast float %6948, %6344
  %6952 = fadd fast float %6949, %6345
  %6953 = fmul fast float %6950, %6935
  %6954 = call float @dx.op.tertiary.f32(i32 46, float %6936, float %6951, float %6953)  ; FMad(a,b,c)
  %6955 = call float @dx.op.tertiary.f32(i32 46, float %6937, float %6952, float %6954)  ; FMad(a,b,c)
  %6956 = fadd fast float %6955, %6938
  %6957 = fmul fast float %6950, %6940
  %6958 = call float @dx.op.tertiary.f32(i32 46, float %6941, float %6951, float %6957)  ; FMad(a,b,c)
  %6959 = call float @dx.op.tertiary.f32(i32 46, float %6942, float %6952, float %6958)  ; FMad(a,b,c)
  %6960 = fadd fast float %6959, %6943
  %6961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6956, float %6960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = fmul fast float %6962, %6945
  %6964 = fadd fast float %6963, %6944
  %6965 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6966 = fmul fast float %6965, %6929
  %6967 = fsub fast float 1.000000e+00, %6966
  br label %6968

; <label>:6968                                    ; preds = %6933, %6931
  %6969 = phi float [ %6967, %6933 ], [ 1.000000e+00, %6931 ]
  %6970 = fmul fast float %6969, %6927
  br label %6971

; <label>:6971                                    ; preds = %6968, %6917, %6323
  %6972 = phi float [ 1.000000e+00, %6323 ], [ %6970, %6968 ], [ %6927, %6917 ]
  %6973 = call float @dx.op.binary.f32(i32 36, float %6972, float %6972)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 36, float %6972, float %6973)  ; FMin(a,b)
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  br i1 %6975, label %6976, label %7136, !dx.controlflow.hints !117

; <label>:6976                                    ; preds = %6971
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.CBufRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.CBufRet.f32 %6977, 2
  %6981 = extractvalue %dx.types.CBufRet.f32 %6977, 3
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.CBufRet.f32 %6982, 2
  %6986 = extractvalue %dx.types.CBufRet.f32 %6982, 3
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %6991 = extractvalue %dx.types.CBufRet.f32 %6987, 3
  %6992 = fmul fast float %6978, %6343
  %6993 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6979, float %6992)  ; FMad(a,b,c)
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6980, float %6993)  ; FMad(a,b,c)
  %6995 = fadd fast float %6994, %6981
  %6996 = fmul fast float %6983, %6343
  %6997 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6984, float %6996)  ; FMad(a,b,c)
  %6998 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6985, float %6997)  ; FMad(a,b,c)
  %6999 = fadd fast float %6998, %6986
  %7000 = fmul fast float %6988, %6343
  %7001 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6989, float %7000)  ; FMad(a,b,c)
  %7002 = call float @dx.op.tertiary.f32(i32 46, float %6345, float %6990, float %7001)  ; FMad(a,b,c)
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7007 = fmul fast float %7006, %6995
  %7008 = fmul fast float %7006, %6999
  %7009 = fadd fast float %7007, %7004
  %7010 = fadd fast float %7008, %7005
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.CBufRet.f32 %7011, 1
  %7014 = fsub fast float %7009, %7012
  %7015 = fsub fast float %7010, %7013
  %7016 = fcmp fast olt float %7014, 0.000000e+00
  %7017 = fcmp fast olt float %7015, 0.000000e+00
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.CBufRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7018, 3
  %7023 = select i1 %7016, float %7019, float %7021
  %7024 = select i1 %7017, float %7020, float %7022
  %7025 = fmul fast float %7023, %7014
  %7026 = fmul fast float %7024, %7015
  %7027 = call float @dx.op.unary.f32(i32 6, float %7025)  ; FAbs(value)
  %7028 = call float @dx.op.unary.f32(i32 6, float %7026)  ; FAbs(value)
  %7029 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %7030 = call float @dx.op.binary.f32(i32 35, float %7027, float %7028)  ; FMax(a,b)
  %7031 = fsub fast float %7029, %7030
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fcmp fast ogt float %7032, 0.000000e+00
  br i1 %7033, label %7034, label %7075, !dx.controlflow.hints !118

; <label>:7034                                    ; preds = %6976
  %7035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %7009, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7036 = extractvalue %dx.types.ResRet.f32 %7035, 1
  %7037 = fcmp fast ogt float %7036, 0.000000e+00
  br i1 %7037, label %7038, label %7070

; <label>:7038                                    ; preds = %7034
  %7039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %7009, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.ResRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.ResRet.f32 %7039, 2
  %7043 = extractvalue %dx.types.ResRet.f32 %7039, 3
  %7044 = fsub fast float 1.000000e+00, %6991
  %7045 = fsub fast float %7044, %7002
  %7046 = fmul fast float %7045, 0x400921FB60000000
  %7047 = fadd fast float %7046, 0x3FF921FB60000000
  %7048 = call float @dx.op.unary.f32(i32 13, float %7047)  ; Sin(value)
  %7049 = fadd fast float %7048, -1.000000e+00
  %7050 = fmul fast float %7049, 0x3FD45F3060000000
  %7051 = fmul fast float %7045, 0x401921FB60000000
  %7052 = fadd fast float %7051, 0x400921FB60000000
  %7053 = call float @dx.op.unary.f32(i32 13, float %7052)  ; Sin(value)
  %7054 = fadd fast float %7053, 0x3E7777A5C0000000
  %7055 = fmul fast float %7054, 0x3FC45F3060000000
  %7056 = fmul fast float %7045, 0x4022D97C80000000
  %7057 = fadd fast float %7056, 0x4012D97C80000000
  %7058 = call float @dx.op.unary.f32(i32 13, float %7057)  ; Sin(value)
  %7059 = fadd fast float %7058, 1.000000e+00
  %7060 = fmul fast float %7059, 0x3FBB2995E0000000
  %7061 = fmul fast float %7045, 0x402921FB60000000
  %7062 = fadd fast float %7061, 0x401921FB60000000
  %7063 = call float @dx.op.unary.f32(i32 13, float %7062)  ; Sin(value)
  %7064 = fadd fast float %7063, 0xBE8777A5C0000000
  %7065 = fmul fast float %7064, 0x3FB45F3060000000
  %7066 = call float @dx.op.dot4.f32(i32 56, float %7040, float %7041, float %7042, float %7043, float %7050, float %7055, float %7060, float %7065)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7067 = fmul fast float %7066, 0xBFF7154760000000
  %7068 = call float @dx.op.unary.f32(i32 21, float %7067)  ; Exp(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  br label %7070

; <label>:7070                                    ; preds = %7038, %7034
  %7071 = phi float [ %7069, %7038 ], [ 1.000000e+00, %7034 ]
  %7072 = fadd fast float %7071, -1.000000e+00
  %7073 = fmul fast float %7072, %7032
  %7074 = fadd fast float %7073, 1.000000e+00
  br label %7075

; <label>:7075                                    ; preds = %7070, %6976
  %7076 = phi float [ %7074, %7070 ], [ 1.000000e+00, %6976 ]
  %7077 = fmul fast float %7076, %6972
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = fadd fast float %7079, %157
  %7083 = fadd fast float %7080, %158
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7086 = fsub fast float -0.000000e+00, %7082
  %7087 = fsub fast float -0.000000e+00, %7083
  %7088 = fsub fast float %5728, %7081
  %7089 = fadd fast float %7088, %7085
  %7090 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7086, float %7087, float %7089)  ; Dot3(ax,ay,az,bx,by,bz)
  %7091 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6324, float %6325, float %6326)  ; Dot3(ax,ay,az,bx,by,bz)
  %7092 = fdiv fast float 1.000000e+00, %7091
  %7093 = fmul fast float %7092, %7090
  %7094 = fmul fast float %6324, %7093
  %7095 = fmul fast float %6325, %7093
  %7096 = fadd fast float %7094, %7082
  %7097 = fadd fast float %7095, %7083
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = fsub fast float %7096, %7099
  %7102 = fsub fast float %7097, %7100
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7106 = fmul fast float %7101, %7104
  %7107 = fmul fast float %7102, %7105
  %7108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.i32 %7108, 3
  %7110 = icmp eq i32 %7109, 0
  br i1 %7110, label %7116, label %7111

; <label>:7111                                    ; preds = %7075
  %7112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7106, float %7107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7113 = extractvalue %dx.types.ResRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.ResRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.ResRet.f32 %7112, 2
  br label %7121

; <label>:7116                                    ; preds = %7075
  %7117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7106, float %7107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7118 = extractvalue %dx.types.ResRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.ResRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.ResRet.f32 %7117, 2
  br label %7121

; <label>:7121                                    ; preds = %7116, %7111
  %7122 = phi float [ %7113, %7111 ], [ %7118, %7116 ]
  %7123 = phi float [ %7114, %7111 ], [ %7119, %7116 ]
  %7124 = phi float [ %7115, %7111 ], [ %7120, %7116 ]
  %7125 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7126 = fmul fast float %7125, %7122
  %7127 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7128 = fsub fast float %7093, %7127
  %7129 = fsub fast float %7128, %7126
  %7130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7129)  ; FMax(a,b)
  %7131 = fmul fast float %7130, %7123
  %7132 = call float @dx.op.binary.f32(i32 36, float %7124, float %7131)  ; FMin(a,b)
  %7133 = fmul fast float %7132, 0xBFF7154760000000
  %7134 = call float @dx.op.unary.f32(i32 21, float %7133)  ; Exp(value)
  %7135 = fmul fast float %7077, %7134
  br label %7136

; <label>:7136                                    ; preds = %7121, %6971
  %7137 = phi float [ %7135, %7121 ], [ %6972, %6971 ]
  %7138 = call float @dx.op.binary.f32(i32 36, float %7137, float %7137)  ; FMin(a,b)
  %7139 = call float @dx.op.binary.f32(i32 36, float %7137, float %7138)  ; FMin(a,b)
  %7140 = fcmp fast ogt float %7139, 0.000000e+00
  br i1 %7140, label %7141, label %7527, !dx.controlflow.hints !119

; <label>:7141                                    ; preds = %7136
  %7142 = fmul fast float %7137, %6335
  %7143 = fmul fast float %7137, %6336
  %7144 = fmul fast float %7137, %6337
  %7145 = fsub fast float %159, %5516
  %7146 = fcmp fast ogt float %7145, 0.000000e+00
  %7147 = fmul fast float %6324, 5.120000e+02
  %7148 = fmul fast float %6325, 5.120000e+02
  %7149 = fmul fast float %6326, 5.120000e+02
  %7150 = fadd fast float %7149, %159
  %7151 = fsub fast float %5516, %7150
  %7152 = fmul fast float %7151, 2.000000e+00
  %7153 = fadd fast float %7152, %7150
  %7154 = select i1 %7146, float %7153, float %7150
  %7155 = fsub fast float %7154, %159
  %7156 = call float @dx.op.dot3.f32(i32 55, float %7147, float %7148, float %7155, float %7147, float %7148, float %7155)  ; Dot3(ax,ay,az,bx,by,bz)
  %7157 = call float @dx.op.unary.f32(i32 25, float %7156)  ; Rsqrt(value)
  %7158 = fmul fast float %7157, %7147
  %7159 = fmul fast float %7157, %7148
  %7160 = fmul fast float %7157, %7155
  %7161 = fsub fast float %5516, %159
  %7162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7161)  ; Dot3(ax,ay,az,bx,by,bz)
  %7163 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7158, float %7159, float %7160)  ; Dot3(ax,ay,az,bx,by,bz)
  %7164 = fdiv fast float 1.000000e+00, %7163
  %7165 = fmul fast float %7164, %7162
  %7166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7145, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7167 = fcmp fast ogt float %7166, 0.000000e+00
  %7168 = fcmp fast olt float %7166, 0.000000e+00
  %7169 = zext i1 %7167 to i32
  %7170 = zext i1 %7168 to i32
  %7171 = sub nsw i32 %7169, %7170
  %7172 = sitofp i32 %7171 to float
  %7173 = fsub fast float %7154, %5516
  %7174 = call float @dx.op.dot3.f32(i32 55, float %7147, float %7148, float %7173, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7175 = fcmp fast ogt float %7174, 0.000000e+00
  %7176 = fcmp fast olt float %7174, 0.000000e+00
  %7177 = zext i1 %7175 to i32
  %7178 = zext i1 %7176 to i32
  %7179 = sub nsw i32 %7177, %7178
  %7180 = sitofp i32 %7179 to float
  %7181 = fcmp fast une float %7172, %7180
  br i1 %7181, label %7182, label %7192

; <label>:7182                                    ; preds = %7141
  %7183 = fmul fast float %7165, %7160
  %7184 = fmul fast float %7165, %7159
  %7185 = fmul fast float %7165, %7158
  %7186 = fmul fast float %7185, %7185
  %7187 = fmul fast float %7184, %7184
  %7188 = fadd fast float %7186, %7187
  %7189 = fmul fast float %7183, %7183
  %7190 = fadd fast float %7188, %7189
  %7191 = call float @dx.op.unary.f32(i32 24, float %7190)  ; Sqrt(value)
  br label %7202

; <label>:7192                                    ; preds = %7141
  %7193 = icmp slt i32 %7171, 0
  br i1 %7193, label %7194, label %7202

; <label>:7194                                    ; preds = %7192
  %7195 = fsub fast float %159, %7154
  %7196 = fmul fast float %7147, %7147
  %7197 = fmul fast float %7148, %7148
  %7198 = fadd fast float %7196, %7197
  %7199 = fmul fast float %7195, %7195
  %7200 = fadd fast float %7198, %7199
  %7201 = call float @dx.op.unary.f32(i32 24, float %7200)  ; Sqrt(value)
  br label %7202

; <label>:7202                                    ; preds = %7194, %7192, %7182
  %7203 = phi float [ %7191, %7182 ], [ %7201, %7194 ], [ 0.000000e+00, %7192 ]
  %7204 = fsub fast float -0.000000e+00, %7203
  %7205 = select i1 %7146, float -0.000000e+00, float %7204
  %7206 = fmul fast float %5517, 0x3FF7154760000000
  %7207 = fmul fast float %7206, %7205
  %7208 = fmul fast float %5518, 0x3FF7154760000000
  %7209 = fmul fast float %7208, %7205
  %7210 = fmul fast float %5519, 0x3FF7154760000000
  %7211 = fmul fast float %7210, %7205
  %7212 = call float @dx.op.unary.f32(i32 21, float %7207)  ; Exp(value)
  %7213 = call float @dx.op.unary.f32(i32 21, float %7209)  ; Exp(value)
  %7214 = call float @dx.op.unary.f32(i32 21, float %7211)  ; Exp(value)
  %7215 = call float @dx.op.unary.f32(i32 7, float %7212)  ; Saturate(value)
  %7216 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7217 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7218 = fmul fast float %7142, %7215
  %7219 = fmul fast float %7143, %7216
  %7220 = fmul fast float %7144, %7217
  %7221 = fsub fast float %6324, %5716
  %7222 = fsub fast float %6325, %5715
  %7223 = fsub fast float %6326, %5714
  %7224 = call float @dx.op.dot3.f32(i32 55, float %7221, float %7222, float %7223, float %7221, float %7222, float %7223)  ; Dot3(ax,ay,az,bx,by,bz)
  %7225 = call float @dx.op.unary.f32(i32 25, float %7224)  ; Rsqrt(value)
  %7226 = fmul fast float %7225, %7221
  %7227 = fmul fast float %7225, %7222
  %7228 = fmul fast float %7225, %7223
  %7229 = call float @dx.op.dot3.f32(i32 55, float %6324, float %6325, float %6326, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %7230 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5712, float %5711, float %7226, float %7227, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7232 = fmul fast float %7231, %7231
  %7233 = fmul fast float %7232, %5778
  %7234 = call float @dx.op.unary.f32(i32 7, float %7233)  ; Saturate(value)
  %7235 = fmul fast float %7234, %7231
  %7236 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %7226, float %7227, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7237 = fmul fast float %7236, %7236
  %7238 = call float @dx.op.unary.f32(i32 6, float %7229)  ; FAbs(value)
  %7239 = call float @dx.op.binary.f32(i32 35, float %6153, float 0x3F847AE140000000)  ; FMax(a,b)
  %7240 = fmul fast float %7239, %7239
  %7241 = fmul fast float %7240, %7240
  %7242 = fsub fast float 1.000000e+00, %7241
  %7243 = fmul fast float %5765, %5765
  %7244 = fmul fast float %7243, %7242
  %7245 = fadd fast float %7244, %7241
  %7246 = bitcast float %7245 to i32
  %7247 = ashr i32 %7246, 1
  %7248 = add nsw i32 %7247, 532487669
  %7249 = bitcast i32 %7248 to float
  %7250 = fadd fast float %7249, %5765
  %7251 = fmul fast float %7241, %7237
  %7252 = fsub fast float 1.000000e+00, %7237
  %7253 = fadd fast float %7252, %7251
  %7254 = fmul fast float %7238, %7238
  %7255 = fmul fast float %7254, %7242
  %7256 = fadd fast float %7255, %7241
  %7257 = bitcast float %7256 to i32
  %7258 = ashr i32 %7257, 1
  %7259 = add nsw i32 %7258, 532487669
  %7260 = bitcast i32 %7259 to float
  %7261 = fadd fast float %7260, %7238
  %7262 = fmul fast float %7253, %7253
  %7263 = fmul fast float %7262, %7250
  %7264 = fmul fast float %7263, %7261
  %7265 = fdiv fast float 0x3FF0A00000000000, %7264
  %7266 = fmul fast float %7265, %7241
  %7267 = fmul fast float %6013, 0x3FF9999980000000
  %7268 = fsub fast float 5.000000e+00, %7267
  %7269 = call float @dx.op.unary.f32(i32 6, float %7230)  ; FAbs(value)
  %7270 = fsub fast float 1.000000e+00, %7269
  %7271 = fmul fast float %6013, 0x41D9660740000000
  %7272 = fadd fast float %7271, 0xC1EFBF8940000000
  %7273 = bitcast float %7270 to i32
  %7274 = sitofp i32 %7273 to float
  %7275 = fmul fast float %7274, %7268
  %7276 = fadd fast float %7272, %7275
  %7277 = fptosi float %7276 to i32
  %7278 = bitcast i32 %7277 to float
  %7279 = fsub fast float 1.000000e+00, %5720
  %7280 = fsub fast float 1.000000e+00, %5721
  %7281 = fsub fast float 1.000000e+00, %5763
  %7282 = fmul fast float %7278, %7279
  %7283 = fmul fast float %7278, %7280
  %7284 = fmul fast float %7278, %7281
  %7285 = fadd fast float %7282, %5720
  %7286 = fadd fast float %7283, %5721
  %7287 = fadd fast float %7284, %5763
  br i1 %6036, label %7288, label %7311

; <label>:7288                                    ; preds = %7202
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %7269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = extractvalue %dx.types.ResRet.f32 %7289, 1
  %7292 = extractvalue %dx.types.ResRet.f32 %7289, 2
  %7293 = fadd fast float %7290, -5.000000e-01
  %7294 = fadd fast float %7291, -5.000000e-01
  %7295 = fadd fast float %7292, -5.000000e-01
  %7296 = fmul fast float %5720, 4.000000e+00
  %7297 = fmul fast float %7296, %7279
  %7298 = fmul fast float %7297, %7293
  %7299 = fmul fast float %5721, 4.000000e+00
  %7300 = fmul fast float %7299, %7280
  %7301 = fmul fast float %7300, %7294
  %7302 = fmul fast float %5763, 4.000000e+00
  %7303 = fmul fast float %7302, %7281
  %7304 = fmul fast float %7303, %7295
  %7305 = fadd fast float %7298, %7285
  %7306 = fadd fast float %7301, %7286
  %7307 = fadd fast float %7304, %7287
  %7308 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7309 = call float @dx.op.unary.f32(i32 7, float %7306)  ; Saturate(value)
  %7310 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  br label %7311

; <label>:7311                                    ; preds = %7288, %7202
  %7312 = phi float [ %7308, %7288 ], [ %7285, %7202 ]
  %7313 = phi float [ %7309, %7288 ], [ %7286, %7202 ]
  %7314 = phi float [ %7310, %7288 ], [ %7287, %7202 ]
  %7315 = fmul fast float %7229, 9.843750e-01
  %7316 = fadd fast float %7315, 7.812500e-03
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7316, float %6017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.ResRet.f32 %7317, 1
  %7320 = extractvalue %dx.types.ResRet.f32 %7317, 2
  %7321 = extractvalue %dx.types.ResRet.f32 %7317, 3
  %7322 = fsub fast float %7320, %7318
  %7323 = fsub fast float %7321, %7319
  %7324 = fmul fast float %7322, %6023
  %7325 = fmul fast float %7323, %6023
  %7326 = fadd fast float %7324, %7318
  %7327 = fadd fast float %7325, %7319
  %7328 = fmul fast float %7326, %5720
  %7329 = fmul fast float %7326, %5721
  %7330 = fmul fast float %7326, %5763
  %7331 = fadd fast float %7328, %7327
  %7332 = fadd fast float %7329, %7327
  %7333 = fadd fast float %7330, %7327
  br i1 %6036, label %7334, label %7357

; <label>:7334                                    ; preds = %7311
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %7229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  %7339 = fadd fast float %7336, -5.000000e-01
  %7340 = fadd fast float %7337, -5.000000e-01
  %7341 = fadd fast float %7338, -5.000000e-01
  %7342 = fmul fast float %5720, 4.000000e+00
  %7343 = fmul fast float %7342, %7279
  %7344 = fmul fast float %7343, %7339
  %7345 = fmul fast float %5721, 4.000000e+00
  %7346 = fmul fast float %7345, %7280
  %7347 = fmul fast float %7346, %7340
  %7348 = fmul fast float %5763, 4.000000e+00
  %7349 = fmul fast float %7348, %7281
  %7350 = fmul fast float %7349, %7341
  %7351 = fadd fast float %7344, %7331
  %7352 = fadd fast float %7347, %7332
  %7353 = fadd fast float %7350, %7333
  %7354 = call float @dx.op.unary.f32(i32 7, float %7351)  ; Saturate(value)
  %7355 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7356 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  br label %7357

; <label>:7357                                    ; preds = %7334, %7311
  %7358 = phi float [ %7354, %7334 ], [ %7331, %7311 ]
  %7359 = phi float [ %7355, %7334 ], [ %7332, %7311 ]
  %7360 = phi float [ %7356, %7334 ], [ %7333, %7311 ]
  %7361 = call float @dx.op.binary.f32(i32 35, float %7359, float %7360)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 35, float %7358, float %7361)  ; FMax(a,b)
  %7363 = fsub fast float 1.000000e+00, %7362
  %7364 = call float @dx.op.binary.f32(i32 35, float %7238, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7365 = fdiv fast float %4423, %7364
  %7366 = fmul fast float %6094, %7365
  %7367 = fmul fast float %6096, %7365
  %7368 = fmul fast float %6098, %7365
  %7369 = call float @dx.op.unary.f32(i32 21, float %7366)  ; Exp(value)
  %7370 = call float @dx.op.unary.f32(i32 21, float %7367)  ; Exp(value)
  %7371 = call float @dx.op.unary.f32(i32 21, float %7368)  ; Exp(value)
  %7372 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7373 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  %7374 = call float @dx.op.unary.f32(i32 7, float %7371)  ; Saturate(value)
  %7375 = select i1 %6091, float %7372, float 0.000000e+00
  %7376 = select i1 %6092, float %7373, float 0.000000e+00
  %7377 = select i1 %6093, float %7374, float 0.000000e+00
  %7378 = fsub fast float -0.000000e+00, %5723
  %7379 = fsub fast float -0.000000e+00, %5724
  %7380 = fsub fast float -0.000000e+00, %5725
  %7381 = call float @dx.op.dot3.f32(i32 55, float %6324, float %6325, float %6326, float %7378, float %7379, float %7380)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fmul fast float %7382, 9.843750e-01
  %7384 = fadd fast float %7383, 7.812500e-03
  %7385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7384, float %6017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.ResRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.ResRet.f32 %7385, 2
  %7389 = extractvalue %dx.types.ResRet.f32 %7385, 3
  %7390 = fsub fast float %7388, %7386
  %7391 = fsub fast float %7389, %7387
  %7392 = fmul fast float %7390, %6023
  %7393 = fmul fast float %7391, %6023
  %7394 = fadd fast float %7392, %7386
  %7395 = fadd fast float %7393, %7387
  %7396 = fmul fast float %7394, %5720
  %7397 = fmul fast float %7394, %5721
  %7398 = fmul fast float %7394, %5763
  %7399 = fadd fast float %7396, %7395
  %7400 = fadd fast float %7397, %7395
  %7401 = fadd fast float %7398, %7395
  br i1 %6036, label %7402, label %7425

; <label>:7402                                    ; preds = %7357
  %7403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %7382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.ResRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.ResRet.f32 %7403, 2
  %7407 = fadd fast float %7404, -5.000000e-01
  %7408 = fadd fast float %7405, -5.000000e-01
  %7409 = fadd fast float %7406, -5.000000e-01
  %7410 = fmul fast float %5720, 4.000000e+00
  %7411 = fmul fast float %7410, %7279
  %7412 = fmul fast float %7411, %7407
  %7413 = fmul fast float %5721, 4.000000e+00
  %7414 = fmul fast float %7413, %7280
  %7415 = fmul fast float %7414, %7408
  %7416 = fmul fast float %5763, 4.000000e+00
  %7417 = fmul fast float %7416, %7281
  %7418 = fmul fast float %7417, %7409
  %7419 = fadd fast float %7412, %7399
  %7420 = fadd fast float %7415, %7400
  %7421 = fadd fast float %7418, %7401
  %7422 = call float @dx.op.unary.f32(i32 7, float %7419)  ; Saturate(value)
  %7423 = call float @dx.op.unary.f32(i32 7, float %7420)  ; Saturate(value)
  %7424 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  br label %7425

; <label>:7425                                    ; preds = %7402, %7357
  %7426 = phi float [ %7422, %7402 ], [ %7399, %7357 ]
  %7427 = phi float [ %7423, %7402 ], [ %7400, %7357 ]
  %7428 = phi float [ %7424, %7402 ], [ %7401, %7357 ]
  %7429 = call float @dx.op.binary.f32(i32 35, float %7427, float %7428)  ; FMax(a,b)
  %7430 = call float @dx.op.binary.f32(i32 35, float %7426, float %7429)  ; FMax(a,b)
  %7431 = fsub fast float 1.000000e+00, %7430
  %7432 = fmul fast float %6153, %6159
  %7433 = fadd fast float %6152, %7432
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7435 = fsub fast float %6324, %5771
  %7436 = fsub fast float %6325, %5772
  %7437 = fsub fast float %6326, %5773
  %7438 = call float @dx.op.dot3.f32(i32 55, float %7435, float %7436, float %7437, float %7435, float %7436, float %7437)  ; Dot3(ax,ay,az,bx,by,bz)
  %7439 = call float @dx.op.unary.f32(i32 25, float %7438)  ; Rsqrt(value)
  %7440 = fmul fast float %7439, %7435
  %7441 = fmul fast float %7439, %7436
  %7442 = fmul fast float %7439, %7437
  %7443 = call float @dx.op.dot3.f32(i32 55, float %7378, float %7379, float %7380, float %7440, float %7441, float %7442)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = fmul fast float %7443, %7443
  %7445 = call float @dx.op.unary.f32(i32 6, float %7382)  ; FAbs(value)
  %7446 = call float @dx.op.binary.f32(i32 35, float %7434, float 0x3F847AE140000000)  ; FMax(a,b)
  %7447 = fmul fast float %7446, %7446
  %7448 = fmul fast float %7447, %7447
  %7449 = fsub fast float 1.000000e+00, %7448
  %7450 = fmul fast float %7243, %7449
  %7451 = fadd fast float %7450, %7448
  %7452 = bitcast float %7451 to i32
  %7453 = ashr i32 %7452, 1
  %7454 = add nsw i32 %7453, 532487669
  %7455 = bitcast i32 %7454 to float
  %7456 = fadd fast float %7455, %5765
  %7457 = fmul fast float %7448, %7444
  %7458 = fsub fast float 1.000000e+00, %7444
  %7459 = fadd fast float %7458, %7457
  %7460 = fmul fast float %7445, %7445
  %7461 = fmul fast float %7460, %7449
  %7462 = fadd fast float %7461, %7448
  %7463 = bitcast float %7462 to i32
  %7464 = ashr i32 %7463, 1
  %7465 = add nsw i32 %7464, 532487669
  %7466 = bitcast i32 %7465 to float
  %7467 = fadd fast float %7466, %7445
  %7468 = fmul fast float %7459, %7459
  %7469 = fmul fast float %7468, %7456
  %7470 = fmul fast float %7469, %7467
  %7471 = fdiv fast float 0x3FF0A00000000000, %7470
  %7472 = fmul fast float %7471, %7448
  %7473 = fmul fast float %7382, %7375
  %7474 = fmul fast float %7382, %7376
  %7475 = fmul fast float %7382, %7377
  %7476 = fmul fast float %7473, %7431
  %7477 = fmul fast float %7476, %7472
  %7478 = fmul fast float %7474, %7431
  %7479 = fmul fast float %7478, %7472
  %7480 = fmul fast float %7475, %7431
  %7481 = fmul fast float %7480, %7472
  %7482 = fmul fast float %7312, %7266
  %7483 = fmul fast float %7313, %7266
  %7484 = fmul fast float %7314, %7266
  %7485 = fsub fast float 1.000000e+00, %7230
  %7486 = bitcast float %7485 to i32
  %7487 = sitofp i32 %7486 to float
  %7488 = fmul fast float %7487, 5.000000e+00
  %7489 = fadd fast float %7488, 0xC1EFBF8940000000
  %7490 = fptosi float %7489 to i32
  %7491 = bitcast i32 %7490 to float
  %7492 = fmul fast float %7491, %5087
  %7493 = fmul fast float %7363, %7492
  %7494 = fmul fast float %7493, %6086
  %7495 = fmul fast float %7493, %6087
  %7496 = fmul fast float %7493, %6088
  %7497 = fadd fast float %7494, %7482
  %7498 = fadd fast float %7495, %7483
  %7499 = fadd fast float %7496, %7484
  %7500 = fmul fast float %7497, %7235
  %7501 = fmul fast float %7498, %7235
  %7502 = fmul fast float %7499, %7235
  %7503 = fmul fast float %7235, %7218
  %7504 = fmul fast float %7503, %7363
  %7505 = fmul fast float %7235, %7219
  %7506 = fmul fast float %7505, %7363
  %7507 = fmul fast float %7235, %7220
  %7508 = fmul fast float %7507, %7363
  %7509 = fadd fast float %7500, %7477
  %7510 = fadd fast float %7501, %7479
  %7511 = fadd fast float %7502, %7481
  %7512 = fmul fast float %7509, %7218
  %7513 = fmul fast float %7510, %7219
  %7514 = fmul fast float %7511, %7220
  %7515 = fadd fast float %7504, %6070
  %7516 = fmul fast float %7515, %5083
  %7517 = fadd fast float %7506, %6071
  %7518 = fmul fast float %7517, %5083
  %7519 = fadd fast float %7508, %6072
  %7520 = fmul fast float %7519, %5083
  %7521 = fadd fast float %7512, %6310
  %7522 = fmul fast float %7521, %5083
  %7523 = fadd fast float %7513, %6314
  %7524 = fmul fast float %7523, %5083
  %7525 = fadd fast float %7514, %6318
  %7526 = fmul fast float %7525, %5083
  br label %7527

; <label>:7527                                    ; preds = %7425, %7136, %6294
  %7528 = phi float [ %6311, %6294 ], [ %6311, %7136 ], [ %7522, %7425 ]
  %7529 = phi float [ %6315, %6294 ], [ %6315, %7136 ], [ %7524, %7425 ]
  %7530 = phi float [ %6319, %6294 ], [ %6319, %7136 ], [ %7526, %7425 ]
  %7531 = phi float [ %6183, %6294 ], [ %6183, %7136 ], [ %7516, %7425 ]
  %7532 = phi float [ %6184, %6294 ], [ %6184, %7136 ], [ %7518, %7425 ]
  %7533 = phi float [ %6185, %6294 ], [ %6185, %7136 ], [ %7520, %7425 ]
  %7534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.i32 %7534, 0
  %7536 = icmp eq i32 %7535, 0
  br i1 %7536, label %8311, label %7537

; <label>:7537                                    ; preds = %7527
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 2
  %7540 = extractvalue %dx.types.CBufRet.f32 %7538, 3
  %7541 = fmul fast float %7539, %102
  %7542 = fmul fast float %7540, %103
  %7543 = fptoui float %7541 to i32
  %7544 = fptoui float %7542 to i32
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.CBufRet.f32 %7545, 2
  %7548 = extractvalue %dx.types.CBufRet.f32 %7545, 3
  %7549 = fadd fast float %93, -4.000000e+00
  %7550 = call float @dx.op.binary.f32(i32 35, float %7549, float 0.000000e+00)  ; FMax(a,b)
  %7551 = fadd fast float %7550, %7546
  %7552 = fmul fast float %7551, %7547
  %7553 = call float @dx.op.unary.f32(i32 23, float %7552)  ; Log(value)
  %7554 = fmul fast float %7553, %7548
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 2
  %7557 = fmul fast float %7554, %7556
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.i32 %7559, 1
  %7561 = add i32 %7560, -1
  %7562 = uitofp i32 %7560 to float
  %7563 = fmul fast float %7562, %7558
  %7564 = fptoui float %7563 to i32
  %7565 = call i32 @dx.op.binary.i32(i32 40, i32 %7564, i32 %7561)  ; UMin(a,b)
  %7566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.i32 %7566, 2
  %7568 = extractvalue %dx.types.CBufRet.i32 %7566, 3
  %7569 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7544, i32 %7567, i32 %7543)  ; UMad(a,b,c)
  %7570 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7565, i32 %7568, i32 %7569)  ; UMad(a,b,c)
  %7571 = add nsw i32 %7535, -1
  %7572 = call i32 @dx.op.binary.i32(i32 37, i32 %7571, i32 0)  ; IMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7574 = fptoui float %7573 to i32
  %7575 = lshr i32 %7574, 5
  %7576 = call i32 @dx.op.binary.i32(i32 40, i32 %7575, i32 8191)  ; UMin(a,b)
  %7577 = shl i32 %7576, 2
  %7578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7577, i32 undef)  ; BufferLoad(srv,index,wot)
  %7579 = extractvalue %dx.types.ResRet.i32 %7578, 0
  %7580 = lshr i32 %7579, 16
  %7581 = and i32 %7579, 65535
  %7582 = lshr i32 %7579, 21
  %7583 = lshr i32 %7581, 5
  %7584 = call i32 @dx.op.binary.i32(i32 40, i32 %7583, i32 %7572)  ; UMin(a,b)
  %7585 = icmp ugt i32 %7582, %7584
  br i1 %7585, label %8311, label %7586

; <label>:7586                                    ; preds = %7537
  br label %7587

; <label>:7587                                    ; preds = %8301, %7586
  %7588 = phi i32 [ %8308, %8301 ], [ %7582, %7586 ]
  %7589 = phi float [ %8302, %8301 ], [ %7528, %7586 ]
  %7590 = phi float [ %8303, %8301 ], [ %7529, %7586 ]
  %7591 = phi float [ %8304, %8301 ], [ %7530, %7586 ]
  %7592 = phi float [ %8305, %8301 ], [ %7531, %7586 ]
  %7593 = phi float [ %8306, %8301 ], [ %7532, %7586 ]
  %7594 = phi float [ %8307, %8301 ], [ %7533, %7586 ]
  %7595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.i32 %7595, 0
  %7597 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7570, i32 %7596, i32 %7588)  ; UMad(a,b,c)
  %7598 = shl i32 %7597, 2
  %7599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7598, i32 undef)  ; BufferLoad(srv,index,wot)
  %7600 = extractvalue %dx.types.ResRet.i32 %7599, 0
  %7601 = shl i32 %7588, 5
  %7602 = sub nsw i32 %7580, %7601
  %7603 = call i32 @dx.op.binary.i32(i32 37, i32 %7602, i32 0)  ; IMax(a,b)
  %7604 = call i32 @dx.op.binary.i32(i32 38, i32 %7603, i32 31)  ; IMin(a,b)
  %7605 = sub nsw i32 1, %7580
  %7606 = add nsw i32 %7605, %7581
  %7607 = call i32 @dx.op.binary.i32(i32 37, i32 %7606, i32 0)  ; IMax(a,b)
  %7608 = call i32 @dx.op.binary.i32(i32 38, i32 %7607, i32 32)  ; IMin(a,b)
  %7609 = and i32 %7608, 31
  %7610 = shl i32 -1, %7609
  %7611 = xor i32 %7610, -1
  %7612 = and i32 %7604, 31
  %7613 = shl i32 %7611, %7612
  %7614 = icmp eq i32 %7608, 32
  %7615 = select i1 %7614, i32 -1, i32 %7613
  %7616 = and i32 %7615, %7600
  %7617 = icmp eq i32 %7616, 0
  br i1 %7617, label %8301, label %7618

; <label>:7618                                    ; preds = %7587
  br label %7619

; <label>:7619                                    ; preds = %7754, %7618
  %7620 = phi i32 [ %7631, %7754 ], [ %7616, %7618 ]
  %7621 = phi float [ %7755, %7754 ], [ %7589, %7618 ]
  %7622 = phi float [ %7756, %7754 ], [ %7590, %7618 ]
  %7623 = phi float [ %7757, %7754 ], [ %7591, %7618 ]
  %7624 = phi float [ %7758, %7754 ], [ %7592, %7618 ]
  %7625 = phi float [ %7759, %7754 ], [ %7593, %7618 ]
  %7626 = phi float [ %7760, %7754 ], [ %7594, %7618 ]
  %7627 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7620)  ; FirstbitLo(value)
  %7628 = add i32 %7627, %7601
  %7629 = and i32 %7627, 31
  %7630 = shl i32 1, %7629
  %7631 = xor i32 %7630, %7620
  %7632 = mul i32 %7628, 112
  %7633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7632, i32 undef)  ; BufferLoad(srv,index,wot)
  %7634 = extractvalue %dx.types.ResRet.f32 %7633, 0
  %7635 = extractvalue %dx.types.ResRet.f32 %7633, 1
  %7636 = extractvalue %dx.types.ResRet.f32 %7633, 2
  %7637 = or i32 %7632, 12
  %7638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7637, i32 undef)  ; BufferLoad(srv,index,wot)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = add i32 %7632, 16
  %7641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7640, i32 undef)  ; BufferLoad(srv,index,wot)
  %7642 = extractvalue %dx.types.ResRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.ResRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.ResRet.f32 %7641, 2
  %7645 = add i32 %7632, 28
  %7646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7645, i32 undef)  ; BufferLoad(srv,index,wot)
  %7647 = extractvalue %dx.types.ResRet.i32 %7646, 0
  %7648 = add i32 %7632, 44
  %7649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7648, i32 undef)  ; BufferLoad(srv,index,wot)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 0
  %7651 = add i32 %7632, 48
  %7652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7651, i32 undef)  ; BufferLoad(srv,index,wot)
  %7653 = extractvalue %dx.types.ResRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.ResRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.ResRet.f32 %7652, 2
  %7656 = extractvalue %dx.types.ResRet.f32 %7652, 3
  %7657 = add i32 %7632, 64
  %7658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7657, i32 undef)  ; BufferLoad(srv,index,wot)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = extractvalue %dx.types.ResRet.f32 %7658, 3
  %7663 = add i32 %7632, 80
  %7664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7663, i32 undef)  ; BufferLoad(srv,index,wot)
  %7665 = extractvalue %dx.types.ResRet.f32 %7664, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7664, 2
  %7667 = add i32 %7632, 92
  %7668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7667, i32 undef)  ; BufferLoad(srv,index,wot)
  %7669 = extractvalue %dx.types.ResRet.i32 %7668, 0
  %7670 = call float @dx.op.dot3.f32(i32 55, float %7634, float %7635, float %7636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7671 = select i1 %219, float %7665, float %7634
  %7672 = select i1 %219, float %7670, float %7635
  %7673 = select i1 %219, float %7666, float %7636
  %7674 = and i32 %7669, 65535
  %7675 = uitofp i32 %7674 to float
  %7676 = lshr i32 %7669, 16
  %7677 = uitofp i32 %7676 to float
  %7678 = and i32 %7647, 65535
  %7679 = and i32 %7647, 50331648
  %7680 = icmp slt i32 %7647, 0
  %7681 = icmp eq i32 %7679, 33554432
  %7682 = fsub fast float %7653, %157
  %7683 = fsub fast float %7654, %158
  %7684 = fsub fast float %7655, %159
  %7685 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7684, float %7682, float %7683, float %7684)  ; Dot3(ax,ay,az,bx,by,bz)
  %7686 = call float @dx.op.unary.f32(i32 24, float %7685)  ; Sqrt(value)
  %7687 = fdiv fast float 1.000000e+00, %7686
  %7688 = fmul fast float %7687, %7682
  %7689 = fmul fast float %7687, %7683
  %7690 = fmul fast float %7687, %7684
  %7691 = fadd fast float %7686, %7639
  %7692 = fdiv fast float 1.000000e+00, %7691
  %7693 = fmul float %7650, %7692
  %7694 = fmul float %7693, %7693
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  br i1 %7681, label %7696, label %7717

; <label>:7696                                    ; preds = %7619
  %7697 = fmul fast float %7661, %7642
  %7698 = fmul fast float %7661, %7643
  %7699 = fmul fast float %7661, %7644
  %7700 = fadd fast float %7682, %7697
  %7701 = fadd fast float %7683, %7698
  %7702 = fadd fast float %7684, %7699
  %7703 = call float @dx.op.dot3.f32(i32 55, float %7700, float %7701, float %7702, float %7700, float %7701, float %7702)  ; Dot3(ax,ay,az,bx,by,bz)
  %7704 = call float @dx.op.unary.f32(i32 25, float %7703)  ; Rsqrt(value)
  %7705 = fmul fast float %7704, %7700
  %7706 = fmul fast float %7704, %7701
  %7707 = fmul fast float %7704, %7702
  %7708 = fsub fast float %157, %7653
  %7709 = fsub fast float %158, %7654
  %7710 = fsub fast float %159, %7655
  %7711 = fsub fast float -0.000000e+00, %7708
  %7712 = fsub fast float -0.000000e+00, %7709
  %7713 = fsub fast float -0.000000e+00, %7710
  %7714 = call float @dx.op.dot3.f32(i32 55, float %7711, float %7712, float %7713, float %7642, float %7643, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7715 = fcmp fast ogt float %7714, 0.000000e+00
  %7716 = uitofp i1 %7715 to float
  br label %7717

; <label>:7717                                    ; preds = %7696, %7619
  %7718 = phi float [ %7716, %7696 ], [ 1.000000e+00, %7619 ]
  %7719 = phi float [ %7705, %7696 ], [ %7688, %7619 ]
  %7720 = phi float [ %7706, %7696 ], [ %7689, %7619 ]
  %7721 = phi float [ %7707, %7696 ], [ %7690, %7619 ]
  %7722 = call float @dx.op.dot3.f32(i32 55, float %7642, float %7643, float %7644, float %7719, float %7720, float %7721)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = fmul fast float %7722, %7722
  %7724 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7725, 5.000000e-01
  %7727 = fcmp fast ogt float %7722, 0.000000e+00
  %7728 = fsub fast float 1.000000e+00, %7726
  %7729 = select i1 %7727, float %7726, float %7728
  %7730 = fmul fast float %7729, %7677
  %7731 = fadd fast float %7730, %7675
  %7732 = fmul fast float %7731, 0x3EF0001000000000
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7732, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = fmul fast float %7722, %7659
  %7736 = fadd fast float %7735, %7660
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = select i1 %7681, float 1.000000e+00, float %7737
  %7739 = select i1 %7681, float %7737, float 1.000000e+00
  %7740 = fmul fast float %7686, %7656
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7741, %7662
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = fmul fast float %7743, %7739
  %7745 = fmul fast float %7744, 2.000000e+00
  %7746 = fsub fast float 3.000000e+00, %7745
  %7747 = fmul fast float %7734, %7718
  %7748 = fmul fast float %7744, %7744
  %7749 = fmul fast float %7748, %7747
  %7750 = fmul fast float %7749, %7746
  %7751 = call float @dx.op.binary.f32(i32 36, float %7750, float %7750)  ; FMin(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7750, float %7751)  ; FMin(a,b)
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  br i1 %7753, label %7762, label %7754, !dx.controlflow.hints !120

; <label>:7754                                    ; preds = %8254, %7862, %7717
  %7755 = phi float [ %7621, %7862 ], [ %7621, %7717 ], [ %8297, %8254 ]
  %7756 = phi float [ %7622, %7862 ], [ %7622, %7717 ], [ %8298, %8254 ]
  %7757 = phi float [ %7623, %7862 ], [ %7623, %7717 ], [ %8299, %8254 ]
  %7758 = phi float [ %7624, %7862 ], [ %7624, %7717 ], [ %8291, %8254 ]
  %7759 = phi float [ %7625, %7862 ], [ %7625, %7717 ], [ %8292, %8254 ]
  %7760 = phi float [ %7626, %7862 ], [ %7626, %7717 ], [ %8293, %8254 ]
  %7761 = icmp eq i32 %7620, %7630
  br i1 %7761, label %8300, label %7619

; <label>:7762                                    ; preds = %7717
  %7763 = icmp eq i32 %7678, 255
  br i1 %7763, label %7862, label %7764, !dx.controlflow.hints !121

; <label>:7764                                    ; preds = %7762
  %7765 = mul nuw nsw i32 %7678, 176
  %7766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7765, i32 undef)  ; BufferLoad(srv,index,wot)
  %7767 = extractvalue %dx.types.ResRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.ResRet.f32 %7766, 1
  %7769 = extractvalue %dx.types.ResRet.f32 %7766, 2
  %7770 = extractvalue %dx.types.ResRet.f32 %7766, 3
  %7771 = add nuw nsw i32 %7765, 16
  %7772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7771, i32 undef)  ; BufferLoad(srv,index,wot)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.ResRet.f32 %7772, 1
  %7775 = add nuw nsw i32 %7765, 32
  %7776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7775, i32 undef)  ; BufferLoad(srv,index,wot)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = add nuw nsw i32 %7765, 48
  %7781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7780, i32 undef)  ; BufferLoad(srv,index,wot)
  %7782 = extractvalue %dx.types.ResRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.ResRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.ResRet.f32 %7781, 2
  %7785 = extractvalue %dx.types.ResRet.f32 %7781, 3
  %7786 = add nuw nsw i32 %7765, 64
  %7787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7786, i32 undef)  ; BufferLoad(srv,index,wot)
  %7788 = extractvalue %dx.types.ResRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.ResRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.ResRet.f32 %7787, 2
  %7791 = extractvalue %dx.types.ResRet.f32 %7787, 3
  %7792 = add nuw nsw i32 %7765, 80
  %7793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7792, i32 undef)  ; BufferLoad(srv,index,wot)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.ResRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.ResRet.f32 %7793, 2
  %7797 = extractvalue %dx.types.ResRet.f32 %7793, 3
  %7798 = add nuw nsw i32 %7765, 96
  %7799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7798, i32 undef)  ; BufferLoad(srv,index,wot)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = extractvalue %dx.types.ResRet.f32 %7799, 3
  %7804 = bitcast float %7774 to i32
  %7805 = fmul fast float %7779, %109
  %7806 = fmul fast float %7779, %110
  %7807 = fmul fast float %7779, %111
  %7808 = fadd fast float %7805, %157
  %7809 = fadd fast float %7806, %158
  %7810 = fadd fast float %7807, %159
  %7811 = fmul fast float %7808, %7782
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7788, float %7811)  ; FMad(a,b,c)
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7794, float %7812)  ; FMad(a,b,c)
  %7814 = fadd fast float %7813, %7800
  %7815 = fmul fast float %7808, %7783
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7789, float %7815)  ; FMad(a,b,c)
  %7817 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7795, float %7816)  ; FMad(a,b,c)
  %7818 = fadd fast float %7817, %7801
  %7819 = fmul fast float %7808, %7784
  %7820 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7790, float %7819)  ; FMad(a,b,c)
  %7821 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7796, float %7820)  ; FMad(a,b,c)
  %7822 = fadd fast float %7821, %7802
  %7823 = fmul fast float %7808, %7785
  %7824 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7791, float %7823)  ; FMad(a,b,c)
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7797, float %7824)  ; FMad(a,b,c)
  %7826 = fadd fast float %7825, %7803
  %7827 = fdiv fast float %7814, %7826
  %7828 = fdiv fast float %7818, %7826
  %7829 = fdiv fast float %7822, %7826
  %7830 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7829)  ; FMax(a,b)
  %7831 = fmul fast float %232, 0x401921FB60000000
  %7832 = call float @dx.op.unary.f32(i32 13, float %7831)  ; Sin(value)
  %7833 = call float @dx.op.unary.f32(i32 12, float %7831)  ; Cos(value)
  %7834 = fsub fast float -0.000000e+00, %7832
  %7835 = fmul fast float %7769, 5.000000e-01
  %7836 = call float @dx.op.dot2.f32(i32 54, float %232, float %232, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7837 = call float @dx.op.unary.f32(i32 22, float %7836)  ; Frc(value)
  %7838 = fmul fast float %7837, 0x404A7DD040000000
  %7839 = call float @dx.op.unary.f32(i32 22, float %7838)  ; Frc(value)
  %7840 = fmul fast float %7839, %7778
  %7841 = fadd fast float %7840, %7835
  %7842 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7834, float 0.000000e+00)  ; FMad(a,b,c)
  %7843 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7833, float 0.000000e+00)  ; FMad(a,b,c)
  %7844 = fadd fast float %7842, %7827
  %7845 = fadd fast float %7843, %7828
  %7846 = fmul fast float %7844, %7773
  %7847 = fmul fast float %7845, %7773
  %7848 = call float @dx.op.binary.f32(i32 35, float %7846, float %7769)  ; FMax(a,b)
  %7849 = call float @dx.op.binary.f32(i32 35, float %7847, float %7769)  ; FMax(a,b)
  %7850 = call float @dx.op.binary.f32(i32 36, float %7848, float %7770)  ; FMin(a,b)
  %7851 = call float @dx.op.binary.f32(i32 36, float %7849, float %7770)  ; FMin(a,b)
  %7852 = fadd fast float %7850, %7767
  %7853 = fadd fast float %7851, %7768
  %7854 = uitofp i32 %7804 to float
  %7855 = fadd fast float %7830, %7777
  %7856 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7852, float %7853, float %7854, float undef, i32 0, i32 0, i32 undef, float %7855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = fadd fast float %7857, -1.000000e+00
  %7859 = fmul fast float %7858, %7738
  %7860 = fadd fast float %7859, 1.000000e+00
  %7861 = fmul fast float %7860, %7750
  br label %7862

; <label>:7862                                    ; preds = %7764, %7762
  %7863 = phi float [ %7861, %7764 ], [ %7750, %7762 ]
  %7864 = call float @dx.op.binary.f32(i32 36, float %7863, float %7863)  ; FMin(a,b)
  %7865 = call float @dx.op.binary.f32(i32 36, float %7863, float %7864)  ; FMin(a,b)
  %7866 = fcmp fast ogt float %7865, 0.000000e+00
  br i1 %7866, label %7867, label %7754, !dx.controlflow.hints !122

; <label>:7867                                    ; preds = %7862
  %7868 = fmul fast float %7863, %7671
  %7869 = fmul fast float %7863, %7672
  %7870 = fmul fast float %7863, %7673
  %7871 = fsub fast float %7655, %5516
  %7872 = fcmp fast ogt float %7871, 0.000000e+00
  %7873 = fsub fast float %159, %5516
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  %7875 = xor i1 %7874, %7872
  %7876 = fsub fast float %5516, %7655
  %7877 = fmul fast float %7876, 2.000000e+00
  %7878 = fadd fast float %7877, %7655
  %7879 = select i1 %7875, float %7655, float %7878
  %7880 = fsub fast float %7879, %159
  %7881 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7880, float %7682, float %7683, float %7880)  ; Dot3(ax,ay,az,bx,by,bz)
  %7882 = call float @dx.op.unary.f32(i32 25, float %7881)  ; Rsqrt(value)
  %7883 = fmul fast float %7882, %7682
  %7884 = fmul fast float %7882, %7683
  %7885 = fmul fast float %7882, %7880
  %7886 = fsub fast float %5516, %159
  %7887 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7886)  ; Dot3(ax,ay,az,bx,by,bz)
  %7888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7883, float %7884, float %7885)  ; Dot3(ax,ay,az,bx,by,bz)
  %7889 = fdiv fast float 1.000000e+00, %7888
  %7890 = fmul fast float %7889, %7887
  %7891 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7873, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7892 = fcmp fast ogt float %7891, 0.000000e+00
  %7893 = fcmp fast olt float %7891, 0.000000e+00
  %7894 = zext i1 %7892 to i32
  %7895 = zext i1 %7893 to i32
  %7896 = sub nsw i32 %7894, %7895
  %7897 = sitofp i32 %7896 to float
  %7898 = fsub fast float %7879, %5516
  %7899 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7898, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = fcmp fast ogt float %7899, 0.000000e+00
  %7901 = fcmp fast olt float %7899, 0.000000e+00
  %7902 = zext i1 %7900 to i32
  %7903 = zext i1 %7901 to i32
  %7904 = sub nsw i32 %7902, %7903
  %7905 = sitofp i32 %7904 to float
  %7906 = fcmp fast une float %7897, %7905
  br i1 %7906, label %7907, label %7917

; <label>:7907                                    ; preds = %7867
  %7908 = fmul fast float %7890, %7885
  %7909 = fmul fast float %7890, %7884
  %7910 = fmul fast float %7890, %7883
  %7911 = fmul fast float %7910, %7910
  %7912 = fmul fast float %7909, %7909
  %7913 = fadd fast float %7911, %7912
  %7914 = fmul fast float %7908, %7908
  %7915 = fadd fast float %7913, %7914
  %7916 = call float @dx.op.unary.f32(i32 24, float %7915)  ; Sqrt(value)
  br label %7929

; <label>:7917                                    ; preds = %7867
  %7918 = icmp slt i32 %7896, 0
  br i1 %7918, label %7919, label %7929

; <label>:7919                                    ; preds = %7917
  %7920 = fsub fast float %157, %7653
  %7921 = fsub fast float %158, %7654
  %7922 = fsub fast float %159, %7879
  %7923 = fmul fast float %7920, %7920
  %7924 = fmul fast float %7921, %7921
  %7925 = fadd fast float %7923, %7924
  %7926 = fmul fast float %7922, %7922
  %7927 = fadd fast float %7925, %7926
  %7928 = call float @dx.op.unary.f32(i32 24, float %7927)  ; Sqrt(value)
  br label %7929

; <label>:7929                                    ; preds = %7919, %7917, %7907
  %7930 = phi float [ %7916, %7907 ], [ %7928, %7919 ], [ 0.000000e+00, %7917 ]
  %7931 = and i1 %7874, %7872
  %7932 = fsub fast float -0.000000e+00, %7930
  %7933 = select i1 %7931, float -0.000000e+00, float %7932
  %7934 = fmul fast float %5517, 0x3FF7154760000000
  %7935 = fmul fast float %7934, %7933
  %7936 = fmul fast float %5518, 0x3FF7154760000000
  %7937 = fmul fast float %7936, %7933
  %7938 = fmul fast float %5519, 0x3FF7154760000000
  %7939 = fmul fast float %7938, %7933
  %7940 = call float @dx.op.unary.f32(i32 21, float %7935)  ; Exp(value)
  %7941 = call float @dx.op.unary.f32(i32 21, float %7937)  ; Exp(value)
  %7942 = call float @dx.op.unary.f32(i32 21, float %7939)  ; Exp(value)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7946 = fmul fast float %7868, %7943
  %7947 = fmul fast float %7869, %7944
  %7948 = fmul fast float %7870, %7945
  %7949 = fsub fast float %7688, %5716
  %7950 = fsub fast float %7689, %5715
  %7951 = fsub fast float %7690, %5714
  %7952 = call float @dx.op.dot3.f32(i32 55, float %7949, float %7950, float %7951, float %7949, float %7950, float %7951)  ; Dot3(ax,ay,az,bx,by,bz)
  %7953 = call float @dx.op.unary.f32(i32 25, float %7952)  ; Rsqrt(value)
  %7954 = fmul fast float %7953, %7949
  %7955 = fmul fast float %7953, %7950
  %7956 = fmul fast float %7953, %7951
  %7957 = call float @dx.op.dot3.f32(i32 55, float %7688, float %7689, float %7690, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %7958 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5712, float %5711, float %7954, float %7955, float %7956)  ; Dot3(ax,ay,az,bx,by,bz)
  %7959 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7960 = fmul fast float %7959, %7695
  %7961 = fmul fast float %7959, %7959
  %7962 = fmul fast float %7961, %5778
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = fmul fast float %7960, %7963
  %7965 = bitcast float %7685 to i32
  %7966 = ashr i32 %7965, 1
  %7967 = sub nsw i32 1597463007, %7966
  %7968 = bitcast i32 %7967 to float
  %7969 = fmul fast float %7968, %7682
  %7970 = fmul fast float %7968, %7683
  %7971 = fmul fast float %7968, %7684
  %7972 = fsub fast float %7969, %5716
  %7973 = fsub fast float %7970, %5715
  %7974 = fsub fast float %7971, %5714
  %7975 = call float @dx.op.dot3.f32(i32 55, float %7972, float %7973, float %7974, float %7972, float %7973, float %7974)  ; Dot3(ax,ay,az,bx,by,bz)
  %7976 = call float @dx.op.unary.f32(i32 25, float %7975)  ; Rsqrt(value)
  %7977 = fmul fast float %7972, %7976
  %7978 = fmul fast float %7973, %7976
  %7979 = fmul fast float %7974, %7976
  %7980 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %7977, float %7978, float %7979)  ; Dot3(ax,ay,az,bx,by,bz)
  %7981 = fmul fast float %7980, %7980
  %7982 = call float @dx.op.unary.f32(i32 6, float %7957)  ; FAbs(value)
  %7983 = call float @dx.op.binary.f32(i32 35, float %6153, float 0x3F847AE140000000)  ; FMax(a,b)
  %7984 = fmul fast float %7983, %7983
  %7985 = fmul fast float %7984, %7984
  %7986 = fsub fast float 1.000000e+00, %7985
  %7987 = fmul fast float %5765, %5765
  %7988 = fmul fast float %7987, %7986
  %7989 = fadd fast float %7988, %7985
  %7990 = bitcast float %7989 to i32
  %7991 = ashr i32 %7990, 1
  %7992 = add nsw i32 %7991, 532487669
  %7993 = bitcast i32 %7992 to float
  %7994 = fadd fast float %7993, %5765
  %7995 = fmul fast float %7985, %7981
  %7996 = fsub fast float 1.000000e+00, %7981
  %7997 = fadd fast float %7996, %7995
  %7998 = fmul fast float %7982, %7982
  %7999 = fmul fast float %7998, %7986
  %8000 = fadd fast float %7999, %7985
  %8001 = bitcast float %8000 to i32
  %8002 = ashr i32 %8001, 1
  %8003 = add nsw i32 %8002, 532487669
  %8004 = bitcast i32 %8003 to float
  %8005 = fadd fast float %8004, %7982
  %8006 = fmul fast float %7997, %7997
  %8007 = fmul fast float %8006, %7994
  %8008 = fmul fast float %8007, %8005
  %8009 = fdiv fast float 1.000000e+00, %8008
  %8010 = bitcast float %7985 to i32
  %8011 = sitofp i32 %8010 to float
  %8012 = fmul fast float %8011, 0x3FE7F73180000000
  %8013 = fadd fast float %8012, 0x41AFE27C40000000
  %8014 = fptosi float %8013 to i32
  %8015 = bitcast i32 %8014 to float
  %8016 = fmul fast float %7650, 0x3FD80E9D60000000
  %8017 = fmul fast float %8016, %7968
  %8018 = fadd fast float %8015, %8017
  %8019 = bitcast float %8018 to i32
  %8020 = sub nsw i32 2129859010, %8019
  %8021 = bitcast i32 %8020 to float
  %8022 = fmul fast float %7985, %8009
  %8023 = fmul fast float %8022, %8015
  %8024 = fmul fast float %8023, %8021
  %8025 = fmul fast float %6013, 0x3FF9999980000000
  %8026 = fsub fast float 5.000000e+00, %8025
  %8027 = call float @dx.op.unary.f32(i32 6, float %7958)  ; FAbs(value)
  %8028 = fsub fast float 1.000000e+00, %8027
  %8029 = fmul fast float %6013, 0x41D9660740000000
  %8030 = fadd fast float %8029, 0xC1EFBF8940000000
  %8031 = bitcast float %8028 to i32
  %8032 = sitofp i32 %8031 to float
  %8033 = fmul fast float %8032, %8026
  %8034 = fadd fast float %8030, %8033
  %8035 = fptosi float %8034 to i32
  %8036 = bitcast i32 %8035 to float
  %8037 = fsub fast float 1.000000e+00, %5720
  %8038 = fsub fast float 1.000000e+00, %5721
  %8039 = fsub fast float 1.000000e+00, %5763
  %8040 = fmul fast float %8036, %8037
  %8041 = fmul fast float %8036, %8038
  %8042 = fmul fast float %8036, %8039
  %8043 = fadd fast float %8040, %5720
  %8044 = fadd fast float %8041, %5721
  %8045 = fadd fast float %8042, %5763
  br i1 %6036, label %8046, label %8069

; <label>:8046                                    ; preds = %7929
  %8047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %8027, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8048 = extractvalue %dx.types.ResRet.f32 %8047, 0
  %8049 = extractvalue %dx.types.ResRet.f32 %8047, 1
  %8050 = extractvalue %dx.types.ResRet.f32 %8047, 2
  %8051 = fadd fast float %8048, -5.000000e-01
  %8052 = fadd fast float %8049, -5.000000e-01
  %8053 = fadd fast float %8050, -5.000000e-01
  %8054 = fmul fast float %5720, 4.000000e+00
  %8055 = fmul fast float %8054, %8037
  %8056 = fmul fast float %8055, %8051
  %8057 = fmul fast float %5721, 4.000000e+00
  %8058 = fmul fast float %8057, %8038
  %8059 = fmul fast float %8058, %8052
  %8060 = fmul fast float %5763, 4.000000e+00
  %8061 = fmul fast float %8060, %8039
  %8062 = fmul fast float %8061, %8053
  %8063 = fadd fast float %8056, %8043
  %8064 = fadd fast float %8059, %8044
  %8065 = fadd fast float %8062, %8045
  %8066 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8067 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8068 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  br label %8069

; <label>:8069                                    ; preds = %8046, %7929
  %8070 = phi float [ %8066, %8046 ], [ %8043, %7929 ]
  %8071 = phi float [ %8067, %8046 ], [ %8044, %7929 ]
  %8072 = phi float [ %8068, %8046 ], [ %8045, %7929 ]
  %8073 = fmul fast float %7957, 9.843750e-01
  %8074 = fadd fast float %8073, 7.812500e-03
  %8075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8074, float %6017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8076 = extractvalue %dx.types.ResRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.ResRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.ResRet.f32 %8075, 2
  %8079 = extractvalue %dx.types.ResRet.f32 %8075, 3
  %8080 = fsub fast float %8078, %8076
  %8081 = fsub fast float %8079, %8077
  %8082 = fmul fast float %8080, %6023
  %8083 = fmul fast float %8081, %6023
  %8084 = fadd fast float %8082, %8076
  %8085 = fadd fast float %8083, %8077
  %8086 = fmul fast float %8084, %5720
  %8087 = fmul fast float %8084, %5721
  %8088 = fmul fast float %8084, %5763
  %8089 = fadd fast float %8086, %8085
  %8090 = fadd fast float %8087, %8085
  %8091 = fadd fast float %8088, %8085
  br i1 %6036, label %8092, label %8115

; <label>:8092                                    ; preds = %8069
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %7957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8097 = fadd fast float %8094, -5.000000e-01
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fmul fast float %5720, 4.000000e+00
  %8101 = fmul fast float %8100, %8037
  %8102 = fmul fast float %8101, %8097
  %8103 = fmul fast float %5721, 4.000000e+00
  %8104 = fmul fast float %8103, %8038
  %8105 = fmul fast float %8104, %8098
  %8106 = fmul fast float %5763, 4.000000e+00
  %8107 = fmul fast float %8106, %8039
  %8108 = fmul fast float %8107, %8099
  %8109 = fadd fast float %8102, %8089
  %8110 = fadd fast float %8105, %8090
  %8111 = fadd fast float %8108, %8091
  %8112 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  br label %8115

; <label>:8115                                    ; preds = %8092, %8069
  %8116 = phi float [ %8112, %8092 ], [ %8089, %8069 ]
  %8117 = phi float [ %8113, %8092 ], [ %8090, %8069 ]
  %8118 = phi float [ %8114, %8092 ], [ %8091, %8069 ]
  %8119 = call float @dx.op.binary.f32(i32 35, float %8117, float %8118)  ; FMax(a,b)
  %8120 = call float @dx.op.binary.f32(i32 35, float %8116, float %8119)  ; FMax(a,b)
  %8121 = fsub fast float 1.000000e+00, %8120
  %8122 = call float @dx.op.binary.f32(i32 35, float %7982, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8123 = fdiv fast float %4423, %8122
  %8124 = fmul fast float %6094, %8123
  %8125 = fmul fast float %6096, %8123
  %8126 = fmul fast float %6098, %8123
  %8127 = call float @dx.op.unary.f32(i32 21, float %8124)  ; Exp(value)
  %8128 = call float @dx.op.unary.f32(i32 21, float %8125)  ; Exp(value)
  %8129 = call float @dx.op.unary.f32(i32 21, float %8126)  ; Exp(value)
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8132 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8133 = select i1 %6091, float %8130, float 0.000000e+00
  %8134 = select i1 %6092, float %8131, float 0.000000e+00
  %8135 = select i1 %6093, float %8132, float 0.000000e+00
  %8136 = fsub fast float -0.000000e+00, %5723
  %8137 = fsub fast float -0.000000e+00, %5724
  %8138 = fsub fast float -0.000000e+00, %5725
  %8139 = call float @dx.op.dot3.f32(i32 55, float %7688, float %7689, float %7690, float %8136, float %8137, float %8138)  ; Dot3(ax,ay,az,bx,by,bz)
  %8140 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8141 = fmul fast float %8140, %7695
  %8142 = fmul fast float %8140, 9.843750e-01
  %8143 = fadd fast float %8142, 7.812500e-03
  %8144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8143, float %6017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8145 = extractvalue %dx.types.ResRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.ResRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.ResRet.f32 %8144, 2
  %8148 = extractvalue %dx.types.ResRet.f32 %8144, 3
  %8149 = fsub fast float %8147, %8145
  %8150 = fsub fast float %8148, %8146
  %8151 = fmul fast float %8149, %6023
  %8152 = fmul fast float %8150, %6023
  %8153 = fadd fast float %8151, %8145
  %8154 = fadd fast float %8152, %8146
  %8155 = fmul fast float %8153, %5720
  %8156 = fmul fast float %8153, %5721
  %8157 = fmul fast float %8153, %5763
  %8158 = fadd fast float %8155, %8154
  %8159 = fadd fast float %8156, %8154
  %8160 = fadd fast float %8157, %8154
  br i1 %6036, label %8161, label %8184

; <label>:8161                                    ; preds = %8115
  %8162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5086, float %8140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8163 = extractvalue %dx.types.ResRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.ResRet.f32 %8162, 1
  %8165 = extractvalue %dx.types.ResRet.f32 %8162, 2
  %8166 = fadd fast float %8163, -5.000000e-01
  %8167 = fadd fast float %8164, -5.000000e-01
  %8168 = fadd fast float %8165, -5.000000e-01
  %8169 = fmul fast float %5720, 4.000000e+00
  %8170 = fmul fast float %8169, %8037
  %8171 = fmul fast float %8170, %8166
  %8172 = fmul fast float %5721, 4.000000e+00
  %8173 = fmul fast float %8172, %8038
  %8174 = fmul fast float %8173, %8167
  %8175 = fmul fast float %5763, 4.000000e+00
  %8176 = fmul fast float %8175, %8039
  %8177 = fmul fast float %8176, %8168
  %8178 = fadd fast float %8171, %8158
  %8179 = fadd fast float %8174, %8159
  %8180 = fadd fast float %8177, %8160
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8182 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8183 = call float @dx.op.unary.f32(i32 7, float %8180)  ; Saturate(value)
  br label %8184

; <label>:8184                                    ; preds = %8161, %8115
  %8185 = phi float [ %8181, %8161 ], [ %8158, %8115 ]
  %8186 = phi float [ %8182, %8161 ], [ %8159, %8115 ]
  %8187 = phi float [ %8183, %8161 ], [ %8160, %8115 ]
  %8188 = call float @dx.op.binary.f32(i32 35, float %8186, float %8187)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8185, float %8188)  ; FMax(a,b)
  %8190 = fsub fast float 1.000000e+00, %8189
  %8191 = fmul fast float %6153, %6159
  %8192 = fadd fast float %6152, %8191
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = fsub fast float %7969, %5771
  %8195 = fsub fast float %7970, %5772
  %8196 = fsub fast float %7971, %5773
  %8197 = call float @dx.op.dot3.f32(i32 55, float %8194, float %8195, float %8196, float %8194, float %8195, float %8196)  ; Dot3(ax,ay,az,bx,by,bz)
  %8198 = call float @dx.op.unary.f32(i32 25, float %8197)  ; Rsqrt(value)
  %8199 = fmul fast float %8194, %8198
  %8200 = fmul fast float %8195, %8198
  %8201 = fmul fast float %8196, %8198
  %8202 = call float @dx.op.dot3.f32(i32 55, float %8136, float %8137, float %8138, float %8199, float %8200, float %8201)  ; Dot3(ax,ay,az,bx,by,bz)
  %8203 = fmul fast float %8202, %8202
  %8204 = call float @dx.op.unary.f32(i32 6, float %8140)  ; FAbs(value)
  %8205 = call float @dx.op.binary.f32(i32 35, float %8193, float 0x3F847AE140000000)  ; FMax(a,b)
  %8206 = fmul fast float %8205, %8205
  %8207 = fmul fast float %8206, %8206
  %8208 = fsub fast float 1.000000e+00, %8207
  %8209 = fmul fast float %7987, %8208
  %8210 = fadd fast float %8209, %8207
  %8211 = bitcast float %8210 to i32
  %8212 = ashr i32 %8211, 1
  %8213 = add nsw i32 %8212, 532487669
  %8214 = bitcast i32 %8213 to float
  %8215 = fadd fast float %8214, %5765
  %8216 = fmul fast float %8207, %8203
  %8217 = fsub fast float 1.000000e+00, %8203
  %8218 = fadd fast float %8217, %8216
  %8219 = fmul fast float %8204, %8204
  %8220 = fmul fast float %8219, %8208
  %8221 = fadd fast float %8220, %8207
  %8222 = bitcast float %8221 to i32
  %8223 = ashr i32 %8222, 1
  %8224 = add nsw i32 %8223, 532487669
  %8225 = bitcast i32 %8224 to float
  %8226 = fadd fast float %8225, %8204
  %8227 = fmul fast float %8218, %8218
  %8228 = fmul fast float %8227, %8215
  %8229 = fmul fast float %8228, %8226
  %8230 = fdiv fast float 1.000000e+00, %8229
  %8231 = bitcast float %8207 to i32
  %8232 = sitofp i32 %8231 to float
  %8233 = fmul fast float %8232, 0x3FE7F73180000000
  %8234 = fadd fast float %8233, 0x41AFE27C40000000
  %8235 = fptosi float %8234 to i32
  %8236 = bitcast i32 %8235 to float
  %8237 = fadd fast float %8236, %8017
  %8238 = bitcast float %8237 to i32
  %8239 = sub nsw i32 2129859010, %8238
  %8240 = bitcast i32 %8239 to float
  %8241 = fmul fast float %8207, %8230
  %8242 = fmul fast float %8241, %8236
  %8243 = fmul fast float %8242, %8240
  br i1 %7680, label %8244, label %8254

; <label>:8244                                    ; preds = %8184
  %8245 = fmul fast float %8141, %8133
  %8246 = fmul fast float %8141, %8134
  %8247 = fmul fast float %8141, %8135
  %8248 = fmul fast float %8245, %8190
  %8249 = fmul fast float %8248, %8243
  %8250 = fmul fast float %8246, %8190
  %8251 = fmul fast float %8250, %8243
  %8252 = fmul fast float %8247, %8190
  %8253 = fmul fast float %8252, %8243
  br label %8254

; <label>:8254                                    ; preds = %8244, %8184
  %8255 = phi float [ %8249, %8244 ], [ 0.000000e+00, %8184 ]
  %8256 = phi float [ %8251, %8244 ], [ 0.000000e+00, %8184 ]
  %8257 = phi float [ %8253, %8244 ], [ 0.000000e+00, %8184 ]
  %8258 = fmul fast float %8070, %8024
  %8259 = fmul fast float %8071, %8024
  %8260 = fmul fast float %8072, %8024
  %8261 = fsub fast float 1.000000e+00, %7958
  %8262 = bitcast float %8261 to i32
  %8263 = sitofp i32 %8262 to float
  %8264 = fmul fast float %8263, 5.000000e+00
  %8265 = fadd fast float %8264, 0xC1EFBF8940000000
  %8266 = fptosi float %8265 to i32
  %8267 = bitcast i32 %8266 to float
  %8268 = fmul fast float %8267, %5087
  %8269 = fmul fast float %8121, %8268
  %8270 = fmul fast float %8269, %6086
  %8271 = fmul fast float %8269, %6087
  %8272 = fmul fast float %8269, %6088
  %8273 = fadd fast float %8270, %8258
  %8274 = fadd fast float %8271, %8259
  %8275 = fadd fast float %8272, %8260
  %8276 = fmul fast float %8273, %7964
  %8277 = fmul fast float %8274, %7964
  %8278 = fmul fast float %8275, %7964
  %8279 = fadd fast float %8276, %8255
  %8280 = fadd fast float %8277, %8256
  %8281 = fadd fast float %8278, %8257
  %8282 = fmul fast float %7946, %5083
  %8283 = fmul fast float %8282, %7964
  %8284 = fmul fast float %8283, %8121
  %8285 = fmul fast float %7947, %5083
  %8286 = fmul fast float %8285, %7964
  %8287 = fmul fast float %8286, %8121
  %8288 = fmul fast float %7948, %5083
  %8289 = fmul fast float %8288, %7964
  %8290 = fmul fast float %8289, %8121
  %8291 = fadd fast float %8284, %7624
  %8292 = fadd fast float %8287, %7625
  %8293 = fadd fast float %8290, %7626
  %8294 = fmul fast float %8282, %8279
  %8295 = fmul fast float %8285, %8280
  %8296 = fmul fast float %8288, %8281
  %8297 = fadd fast float %8294, %7621
  %8298 = fadd fast float %8295, %7622
  %8299 = fadd fast float %8296, %7623
  br label %7754

; <label>:8300                                    ; preds = %7754
  br label %8301

; <label>:8301                                    ; preds = %8300, %7587
  %8302 = phi float [ %7589, %7587 ], [ %7755, %8300 ]
  %8303 = phi float [ %7590, %7587 ], [ %7756, %8300 ]
  %8304 = phi float [ %7591, %7587 ], [ %7757, %8300 ]
  %8305 = phi float [ %7592, %7587 ], [ %7758, %8300 ]
  %8306 = phi float [ %7593, %7587 ], [ %7759, %8300 ]
  %8307 = phi float [ %7594, %7587 ], [ %7760, %8300 ]
  %8308 = add i32 %7588, 1
  %8309 = icmp ugt i32 %8308, %7584
  br i1 %8309, label %8310, label %7587

; <label>:8310                                    ; preds = %8301
  br label %8311

; <label>:8311                                    ; preds = %8310, %7537, %7527
  %8312 = phi float [ %7528, %7527 ], [ %7528, %7537 ], [ %8302, %8310 ]
  %8313 = phi float [ %7529, %7527 ], [ %7529, %7537 ], [ %8303, %8310 ]
  %8314 = phi float [ %7530, %7527 ], [ %7530, %7537 ], [ %8304, %8310 ]
  %8315 = phi float [ %7531, %7527 ], [ %7531, %7537 ], [ %8305, %8310 ]
  %8316 = phi float [ %7532, %7527 ], [ %7532, %7537 ], [ %8306, %8310 ]
  %8317 = phi float [ %7533, %7527 ], [ %7533, %7537 ], [ %8307, %8310 ]
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 0
  %8320 = fmul fast float %8319, %6166
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 3
  %8323 = fsub fast float 1.000000e+00, %5090
  %8324 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8325 = fadd fast float %8317, %5089
  %8326 = fmul fast float %8325, %5090
  %8327 = fmul fast float %8324, %8322
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 3
  %8330 = fmul fast float %8315, %5717
  %8331 = fmul fast float %8316, %5718
  %8332 = fmul fast float %8317, %5719
  %8333 = fcmp fast ogt float %93, %179
  %8334 = and i1 %8333, %5522
  %8335 = or i1 %5528, %8334
  %8336 = icmp eq i32 %5521, 2
  %8337 = fcmp fast ole float %93, %179
  %8338 = and i1 %8337, %8336
  %8339 = or i1 %8338, %8335
  br i1 %8334, label %8340, label %8589

; <label>:8340                                    ; preds = %8311
  %8341 = fmul fast float %6246, %102
  %8342 = fmul fast float %6247, %103
  %8343 = call float @dx.op.unary.f32(i32 7, float %8341)  ; Saturate(value)
  %8344 = call float @dx.op.unary.f32(i32 7, float %8342)  ; Saturate(value)
  %8345 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8343, float %8344, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = extractvalue %dx.types.ResRet.f32 %8345, 3
  %8350 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8343, float %8344, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8351 = extractvalue %dx.types.ResRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.ResRet.f32 %8350, 1
  %8353 = extractvalue %dx.types.ResRet.f32 %8350, 2
  %8354 = extractvalue %dx.types.ResRet.f32 %8350, 3
  %8355 = call float @dx.op.binary.f32(i32 35, float %8347, float %8348)  ; FMax(a,b)
  %8356 = call float @dx.op.binary.f32(i32 35, float %8346, float %8355)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8356, float %8349)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8352, float %8353)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 36, float %8351, float %8358)  ; FMin(a,b)
  %8360 = call float @dx.op.binary.f32(i32 36, float %8359, float %8354)  ; FMin(a,b)
  %8361 = fmul fast float %8357, 2.550000e+02
  %8362 = fadd fast float %8361, 0x3F70101020000000
  %8363 = fptoui float %8362 to i32
  %8364 = fmul fast float %8360, 2.550000e+02
  %8365 = fadd fast float %8364, 0x3F70101020000000
  %8366 = fptoui float %8365 to i32
  %8367 = icmp ult i32 %8363, %8366
  br i1 %8367, label %8368, label %8534

; <label>:8368                                    ; preds = %8340
  %8369 = fcmp fast ogt float %92, 9.843750e-01
  %8370 = fadd fast float %93, -4.000000e+00
  %8371 = select i1 %8369, float -4.000000e+00, float %8370
  %8372 = call float @dx.op.binary.f32(i32 35, float %8371, float 0.000000e+00)  ; FMax(a,b)
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = fadd fast float %8374, %8372
  %8376 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8377 = fmul fast float %8375, %8376
  %8378 = call float @dx.op.unary.f32(i32 23, float %8377)  ; Log(value)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8373, 3
  %8380 = fmul fast float %8379, %8378
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8383 = fmul fast float %8380, %8382
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = uitofp i32 %8363 to float
  %8386 = uitofp i32 %8366 to float
  %8387 = fadd fast float %8385, 5.000000e-01
  %8388 = fadd fast float %8386, 5.000000e-01
  %8389 = fmul fast float %8382, %8387
  %8390 = fmul fast float %8382, %8388
  %8391 = fadd fast float %8389, 0x3F0FFB4800000000
  %8392 = fadd fast float %8390, 0xBF0FFB4800000000
  %8393 = call float @dx.op.binary.f32(i32 35, float %8384, float %8391)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8393, float %8392)  ; FMin(a,b)
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 1
  %8397 = extractvalue %dx.types.CBufRet.f32 %8395, 2
  %8398 = extractvalue %dx.types.CBufRet.f32 %8395, 0
  %8399 = fmul fast float %8396, %8394
  %8400 = fadd fast float %8398, %8399
  %8401 = fadd fast float %8398, %8397
  %8402 = fsub fast float %8396, %8397
  %8403 = fadd fast float %8402, %8398
  %8404 = call float @dx.op.binary.f32(i32 35, float %8400, float %8401)  ; FMax(a,b)
  %8405 = call float @dx.op.binary.f32(i32 36, float %8404, float %8403)  ; FMin(a,b)
  %8406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8343, float %8344, float %8405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8407 = extractvalue %dx.types.ResRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.ResRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.ResRet.f32 %8406, 2
  %8410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.i32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.i32 %8410, 1
  %8413 = uitofp i32 %8411 to float
  %8414 = uitofp i32 %8412 to float
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = fmul fast float %8413, %8343
  %8419 = fmul fast float %8414, %8344
  %8420 = fadd fast float %8418, -5.000000e-01
  %8421 = fadd fast float %8419, -5.000000e-01
  %8422 = call float @dx.op.unary.f32(i32 22, float %8420)  ; Frc(value)
  %8423 = call float @dx.op.unary.f32(i32 22, float %8421)  ; Frc(value)
  %8424 = fmul fast float %8422, %8422
  %8425 = fmul fast float %8424, %8422
  %8426 = fsub fast float 3.000000e+00, %8422
  %8427 = fmul fast float %8424, %8426
  %8428 = fmul fast float %8422, 3.000000e+00
  %8429 = fmul fast float %8425, 3.000000e+00
  %8430 = fmul fast float %8424, 6.000000e+00
  %8431 = fsub fast float %8429, %8430
  %8432 = fadd fast float %8431, 4.000000e+00
  %8433 = fmul fast float %8432, 0x3FC5555560000000
  %8434 = fmul fast float %8425, -3.000000e+00
  %8435 = fadd fast float %8424, %8422
  %8436 = fmul fast float %8435, 3.000000e+00
  %8437 = fadd fast float %8434, 1.000000e+00
  %8438 = fadd fast float %8437, %8436
  %8439 = fmul fast float %8425, 0x3FC5555560000000
  %8440 = fmul fast float %8423, %8423
  %8441 = fmul fast float %8440, %8423
  %8442 = fsub fast float 3.000000e+00, %8423
  %8443 = fmul fast float %8440, %8442
  %8444 = fmul fast float %8423, 3.000000e+00
  %8445 = fmul fast float %8441, 3.000000e+00
  %8446 = fmul fast float %8440, 6.000000e+00
  %8447 = fsub fast float %8445, %8446
  %8448 = fadd fast float %8447, 4.000000e+00
  %8449 = fmul fast float %8448, 0x3FC5555560000000
  %8450 = fmul fast float %8441, -3.000000e+00
  %8451 = fadd fast float %8440, %8423
  %8452 = fmul fast float %8451, 3.000000e+00
  %8453 = fadd fast float %8450, 1.000000e+00
  %8454 = fadd fast float %8453, %8452
  %8455 = fmul fast float %8441, 0x3FC5555560000000
  %8456 = fadd fast float %8422, 1.000000e+00
  %8457 = fsub fast float 1.000000e+00, %8428
  %8458 = fadd fast float %8457, %8427
  %8459 = fadd fast float %8458, %8432
  %8460 = fmul fast float %8459, 0x3FC5555560000000
  %8461 = fdiv fast float %8433, %8460
  %8462 = fsub fast float %8456, %8461
  %8463 = fsub fast float 1.000000e+00, %8422
  %8464 = fadd fast float %8438, %8425
  %8465 = fmul fast float %8464, 0x3FC5555560000000
  %8466 = fdiv fast float %8439, %8465
  %8467 = fadd fast float %8463, %8466
  %8468 = fadd fast float %8423, 1.000000e+00
  %8469 = fsub fast float 1.000000e+00, %8444
  %8470 = fadd fast float %8469, %8443
  %8471 = fadd fast float %8470, %8448
  %8472 = fmul fast float %8471, 0x3FC5555560000000
  %8473 = fdiv fast float %8449, %8472
  %8474 = fsub fast float %8468, %8473
  %8475 = fsub fast float 1.000000e+00, %8423
  %8476 = fadd fast float %8454, %8441
  %8477 = fmul fast float %8476, 0x3FC5555560000000
  %8478 = fdiv fast float %8455, %8477
  %8479 = fadd fast float %8478, %8475
  %8480 = fmul fast float %8462, %8416
  %8481 = fsub fast float %8343, %8480
  %8482 = fmul fast float %8467, %8416
  %8483 = fadd fast float %8482, %8343
  %8484 = fmul fast float %8479, %8417
  %8485 = fadd fast float %8484, %8344
  %8486 = fmul fast float %8474, %8417
  %8487 = fsub fast float %8344, %8486
  %8488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8481, float %8487, float %8405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8489 = extractvalue %dx.types.ResRet.f32 %8488, 0
  %8490 = extractvalue %dx.types.ResRet.f32 %8488, 1
  %8491 = extractvalue %dx.types.ResRet.f32 %8488, 2
  %8492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8483, float %8487, float %8405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8493 = extractvalue %dx.types.ResRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.ResRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.ResRet.f32 %8492, 2
  %8496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8481, float %8485, float %8405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8497 = extractvalue %dx.types.ResRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.ResRet.f32 %8496, 1
  %8499 = extractvalue %dx.types.ResRet.f32 %8496, 2
  %8500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8483, float %8485, float %8405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8501 = extractvalue %dx.types.ResRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.ResRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.ResRet.f32 %8500, 2
  %8504 = fsub fast float %8497, %8489
  %8505 = fsub fast float %8498, %8490
  %8506 = fsub fast float %8499, %8491
  %8507 = fmul fast float %8504, %8477
  %8508 = fmul fast float %8505, %8477
  %8509 = fmul fast float %8506, %8477
  %8510 = fadd fast float %8507, %8489
  %8511 = fadd fast float %8508, %8490
  %8512 = fadd fast float %8509, %8491
  %8513 = fsub fast float %8501, %8493
  %8514 = fsub fast float %8502, %8494
  %8515 = fsub fast float %8503, %8495
  %8516 = fmul fast float %8513, %8477
  %8517 = fmul fast float %8514, %8477
  %8518 = fmul fast float %8515, %8477
  %8519 = fsub fast float %8493, %8510
  %8520 = fadd fast float %8519, %8516
  %8521 = fsub fast float %8494, %8511
  %8522 = fadd fast float %8521, %8517
  %8523 = fsub fast float %8495, %8512
  %8524 = fadd fast float %8523, %8518
  %8525 = fmul fast float %8520, %8465
  %8526 = fmul fast float %8522, %8465
  %8527 = fmul fast float %8524, %8465
  %8528 = fadd fast float %8525, %8510
  %8529 = fadd fast float %8526, %8511
  %8530 = fadd fast float %8527, %8512
  %8531 = fmul fast float %8528, %6301
  %8532 = fmul fast float %8529, %6301
  %8533 = fmul fast float %8530, %6301
  br label %8534

; <label>:8534                                    ; preds = %8368, %8340
  %8535 = phi float [ %8407, %8368 ], [ 1.000000e+00, %8340 ]
  %8536 = phi float [ %8408, %8368 ], [ 1.000000e+00, %8340 ]
  %8537 = phi float [ %8409, %8368 ], [ 1.000000e+00, %8340 ]
  %8538 = phi float [ %8531, %8368 ], [ 0.000000e+00, %8340 ]
  %8539 = phi float [ %8532, %8368 ], [ 0.000000e+00, %8340 ]
  %8540 = phi float [ %8533, %8368 ], [ 0.000000e+00, %8340 ]
  %8541 = call float @dx.op.dot3.f32(i32 55, float %8535, float %8536, float %8537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8542 = call float @dx.op.dot3.f32(i32 55, float %8538, float %8539, float %8540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8543 = select i1 %219, float %8541, float %8535
  %8544 = select i1 %219, float %8541, float %8536
  %8545 = select i1 %219, float 1.000000e+00, float %8537
  %8546 = select i1 %219, float %8542, float %8538
  %8547 = select i1 %219, float 0.000000e+00, float %8539
  %8548 = select i1 %219, float 0.000000e+00, float %8540
  %8549 = fmul fast float %8543, %8330
  %8550 = fmul fast float %8544, %8331
  %8551 = fmul fast float %8545, %8332
  %8552 = fadd fast float %8549, %8546
  %8553 = fadd fast float %8550, %8547
  %8554 = fadd fast float %8548, %8551
  %8555 = fmul fast float %8543, %8312
  %8556 = fmul fast float %8544, %8313
  %8557 = fmul fast float %8545, %8314
  %8558 = fmul fast float %127, %6246
  %8559 = fmul fast float %129, %6247
  %8560 = fsub fast float 1.000000e+00, %8558
  %8561 = fsub fast float 1.000000e+00, %8559
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.CBufRet.f32 %8562, 1
  %8565 = extractvalue %dx.types.CBufRet.f32 %8562, 2
  %8566 = fmul fast float %8560, %8563
  %8567 = fmul fast float %8560, %8564
  %8568 = fmul fast float %8560, %8565
  %8569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8570 = extractvalue %dx.types.CBufRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.CBufRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.CBufRet.f32 %8569, 2
  %8573 = fmul fast float %8561, %8570
  %8574 = fmul fast float %8561, %8571
  %8575 = fmul fast float %8561, %8572
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.CBufRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.CBufRet.f32 %8576, 2
  %8580 = fadd fast float %8573, %8577
  %8581 = fadd fast float %8580, %8566
  %8582 = fadd fast float %8574, %8578
  %8583 = fadd fast float %8582, %8567
  %8584 = fadd fast float %8575, %8579
  %8585 = fadd fast float %8584, %8568
  %8586 = fmul fast float %8581, %179
  %8587 = fmul fast float %8583, %179
  %8588 = fmul fast float %8585, %179
  br label %8589

; <label>:8589                                    ; preds = %8534, %8311
  %8590 = phi float [ %8586, %8534 ], [ %157, %8311 ]
  %8591 = phi float [ %8587, %8534 ], [ %158, %8311 ]
  %8592 = phi float [ %8588, %8534 ], [ %159, %8311 ]
  %8593 = phi float [ %179, %8534 ], [ %93, %8311 ]
  %8594 = phi float [ %8552, %8534 ], [ %8330, %8311 ]
  %8595 = phi float [ %8553, %8534 ], [ %8331, %8311 ]
  %8596 = phi float [ %8554, %8534 ], [ %8332, %8311 ]
  %8597 = phi float [ %8555, %8534 ], [ %8312, %8311 ]
  %8598 = phi float [ %8556, %8534 ], [ %8313, %8311 ]
  %8599 = phi float [ %8557, %8534 ], [ %8314, %8311 ]
  %8600 = phi float [ %8535, %8534 ], [ 1.000000e+00, %8311 ]
  br i1 %8339, label %9742, label %8601

; <label>:8601                                    ; preds = %8589
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = extractvalue %dx.types.CBufRet.f32 %8602, 3
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.CBufRet.f32 %8607, 2
  %8611 = extractvalue %dx.types.CBufRet.f32 %8607, 3
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8616 = extractvalue %dx.types.CBufRet.f32 %8612, 3
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8621 = extractvalue %dx.types.CBufRet.f32 %8617, 3
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 3
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 3
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8627 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8628 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8629 = fcmp fast olt float %8628, -5.000000e-01
  %8630 = call float @dx.op.dot3.f32(i32 55, float %8590, float %8591, float %8592, float %8590, float %8591, float %8592)  ; Dot3(ax,ay,az,bx,by,bz)
  %8631 = call float @dx.op.unary.f32(i32 25, float %8630)  ; Rsqrt(value)
  %8632 = fmul fast float %8631, %8630
  %8633 = fmul fast float %8631, %8590
  %8634 = fmul fast float %8631, %8591
  %8635 = fmul fast float %8631, %8592
  %8636 = fadd fast float %8632, %8606
  %8637 = call float @dx.op.dot3.f32(i32 55, float %8633, float %8634, float %8635, float %8603, float %8604, float %8605)  ; Dot3(ax,ay,az,bx,by,bz)
  %8638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.i32 %8638, 1
  %8640 = and i32 %8639, 1
  %8641 = icmp ne i32 %8640, 0
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8644 = fcmp fast ogt float %8643, 0.000000e+00
  %8645 = and i1 %8641, %8644
  br i1 %8645, label %8646, label %9052, !dx.controlflow.hints !123

; <label>:8646                                    ; preds = %8601
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 2
  %8653 = fsub fast float %8650, %8652
  %8654 = and i32 %8639, 2
  %8655 = extractvalue %dx.types.CBufRet.i32 %8638, 0
  %8656 = call i32 @dx.op.binary.i32(i32 40, i32 %8655, i32 3)  ; UMin(a,b)
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8651, 0
  %8661 = extractvalue %dx.types.CBufRet.f32 %8651, 1
  %8662 = fsub fast float %8658, %8660
  %8663 = fsub fast float %8659, %8661
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8666 = fcmp fast ogt float %8665, 0.000000e+00
  %8667 = fsub fast float -0.000000e+00, %8662
  %8668 = fsub fast float -0.000000e+00, %8663
  %8669 = call float @dx.op.dot2.f32(i32 54, float %8633, float %8634, float %8633, float %8634)  ; Dot2(ax,ay,bx,by)
  %8670 = call float @dx.op.dot2.f32(i32 54, float %8633, float %8634, float %8667, float %8668)  ; Dot2(ax,ay,bx,by)
  %8671 = fmul fast float %8670, 2.000000e+00
  %8672 = call float @dx.op.dot2.f32(i32 54, float %8667, float %8668, float %8667, float %8668)  ; Dot2(ax,ay,bx,by)
  %8673 = fmul fast float %8665, %8665
  %8674 = fsub fast float %8672, %8673
  %8675 = fmul fast float %8671, %8671
  %8676 = fmul fast float %8669, 4.000000e+00
  %8677 = fmul fast float %8676, %8674
  %8678 = fsub fast float %8675, %8677
  %8679 = fcmp fast ogt float %8678, 0.000000e+00
  br i1 %8679, label %8680, label %8695

; <label>:8680                                    ; preds = %8646
  %8681 = fcmp fast ogt float %8671, 0.000000e+00
  %8682 = call float @dx.op.unary.f32(i32 24, float %8678)  ; Sqrt(value)
  %8683 = fsub fast float -0.000000e+00, %8682
  %8684 = select i1 %8681, float %8682, float %8683
  %8685 = fadd fast float %8684, %8671
  %8686 = fmul float %8685, -5.000000e-01
  %8687 = fdiv fast float %8686, %8669
  %8688 = call float @dx.op.binary.f32(i32 35, float %8687, float 0.000000e+00)  ; FMax(a,b)
  %8689 = call float @dx.op.binary.f32(i32 36, float %8632, float %8688)  ; FMin(a,b)
  %8690 = fdiv fast float %8674, %8686
  %8691 = call float @dx.op.binary.f32(i32 35, float %8690, float 0.000000e+00)  ; FMax(a,b)
  %8692 = call float @dx.op.binary.f32(i32 36, float %8632, float %8691)  ; FMin(a,b)
  %8693 = call float @dx.op.binary.f32(i32 36, float %8689, float %8692)  ; FMin(a,b)
  %8694 = call float @dx.op.binary.f32(i32 35, float %8689, float %8692)  ; FMax(a,b)
  br label %8695

; <label>:8695                                    ; preds = %8680, %8646
  %8696 = phi float [ %8694, %8680 ], [ -1.000000e+00, %8646 ]
  %8697 = phi float [ %8693, %8680 ], [ -1.000000e+00, %8646 ]
  %8698 = phi i1 [ true, %8680 ], [ false, %8646 ]
  %8699 = and i1 %8666, %8698
  br i1 %8699, label %8700, label %8702

; <label>:8700                                    ; preds = %8695
  %8701 = fcmp fast oeq float %8697, %8696
  br i1 %8701, label %9005, label %8703

; <label>:8702                                    ; preds = %8695
  br i1 %8666, label %9005, label %8703

; <label>:8703                                    ; preds = %8702, %8700
  %8704 = phi float [ %8632, %8702 ], [ %8696, %8700 ]
  %8705 = phi float [ 0.000000e+00, %8702 ], [ %8697, %8700 ]
  %8706 = icmp ne i32 %8654, 0
  %8707 = fmul fast float %8704, %8635
  %8708 = fadd fast float %8707, %8648
  %8709 = fmul fast float %8708, %8704
  %8710 = select i1 %8706, float 0.000000e+00, float %8709
  %8711 = fcmp fast oeq float %8635, 0.000000e+00
  %8712 = fdiv fast float %8653, %8635
  %8713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8712)  ; FMax(a,b)
  %8714 = select i1 %8711, float %8704, float %8713
  %8715 = call float @dx.op.binary.f32(i32 36, float %8704, float %8714)  ; FMin(a,b)
  %8716 = fcmp fast ogt float %8635, 0.000000e+00
  %8717 = fcmp fast olt float %8653, 0.000000e+00
  br i1 %8716, label %8718, label %8775

; <label>:8718                                    ; preds = %8703
  %8719 = icmp eq i32 %8654, 0
  br i1 %8717, label %8720, label %8764

; <label>:8720                                    ; preds = %8718
  %8721 = select i1 %8719, float %8704, float 0.000000e+00
  %8722 = fsub fast float -0.000000e+00, %8721
  %8723 = call float @dx.op.unary.f32(i32 6, float %8722)  ; FAbs(value)
  %8724 = fmul fast float %8721, %8635
  %8725 = fadd fast float %8724, %8648
  %8726 = fmul fast float %8723, %8725
  %8727 = fsub fast float %8710, %8726
  %8728 = fsub fast float %8704, %8723
  %8729 = select i1 %8719, float %8728, float 0.000000e+00
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.CBufRet.f32 %8730, 1
  %8733 = extractvalue %dx.types.CBufRet.f32 %8730, 2
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 0
  %8736 = extractvalue %dx.types.CBufRet.f32 %8734, 1
  %8737 = extractvalue %dx.types.CBufRet.f32 %8734, 2
  %8738 = extractvalue %dx.types.CBufRet.f32 %8734, 3
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8741 = call float @dx.op.binary.f32(i32 36, float %8727, float %8740)  ; FMin(a,b)
  %8742 = fmul fast float %8738, %8729
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fsub fast float %8735, %8731
  %8745 = fsub fast float %8736, %8732
  %8746 = fsub fast float %8737, %8733
  %8747 = fmul fast float %8743, %8744
  %8748 = fmul fast float %8743, %8745
  %8749 = fmul fast float %8743, %8746
  %8750 = fadd fast float %8747, %8731
  %8751 = fadd fast float %8748, %8732
  %8752 = fadd fast float %8749, %8733
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 1
  %8756 = fadd fast float %8755, %8754
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8759 = extractvalue %dx.types.CBufRet.f32 %8753, 3
  %8760 = fadd fast float %8759, %8758
  %8761 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8762 = fmul fast float %8757, %8741
  %8763 = fmul fast float %8762, %8761
  br label %9005

; <label>:8764                                    ; preds = %8718
  br i1 %8719, label %8765, label %8786

; <label>:8765                                    ; preds = %8764
  %8766 = call float @dx.op.binary.f32(i32 36, float %8715, float %8705)  ; FMin(a,b)
  %8767 = fsub fast float %8715, %8766
  %8768 = fsub fast float %8767, %8704
  %8769 = call float @dx.op.unary.f32(i32 6, float %8768)  ; FAbs(value)
  %8770 = fadd fast float %8767, %8704
  %8771 = fmul fast float %8770, %8635
  %8772 = fadd fast float %8771, %8648
  %8773 = fmul fast float %8772, %8769
  %8774 = fsub fast float %8710, %8773
  br label %8786

; <label>:8775                                    ; preds = %8703
  br i1 %8717, label %8776, label %8786

; <label>:8776                                    ; preds = %8775
  %8777 = call float @dx.op.binary.f32(i32 35, float %8705, float %8715)  ; FMax(a,b)
  %8778 = icmp eq i32 %8654, 0
  %8779 = select i1 %8778, float %8715, float 0.000000e+00
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = call float @dx.op.unary.f32(i32 6, float %8780)  ; FAbs(value)
  %8782 = fmul fast float %8779, %8635
  %8783 = fadd fast float %8782, %8648
  %8784 = fmul fast float %8781, %8783
  %8785 = fsub fast float %8710, %8784
  br label %8786

; <label>:8786                                    ; preds = %8776, %8775, %8765, %8764
  %8787 = phi float [ %8705, %8764 ], [ %8705, %8765 ], [ %8777, %8776 ], [ %8705, %8775 ]
  %8788 = phi float [ 0.000000e+00, %8764 ], [ %8769, %8765 ], [ %8781, %8776 ], [ 0.000000e+00, %8775 ]
  %8789 = phi float [ %8710, %8764 ], [ %8774, %8765 ], [ %8785, %8776 ], [ %8710, %8775 ]
  %8790 = phi float [ %8715, %8764 ], [ %8715, %8765 ], [ %8704, %8776 ], [ %8704, %8775 ]
  %8791 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8791, align 4, !tbaa !124, !noalias !126
  %8792 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8792, align 4, !tbaa !124, !noalias !126
  %8793 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8793, align 4, !tbaa !124, !noalias !126
  %8794 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8794, align 4, !tbaa !124, !noalias !126
  %8795 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8795, align 4, !tbaa !124, !noalias !126
  %8796 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8796, align 4, !tbaa !124, !noalias !126
  %8797 = icmp sgt i32 %8656, 0
  br i1 %8797, label %8798, label %8859

; <label>:8798                                    ; preds = %8786
  br label %8799

; <label>:8799                                    ; preds = %8848, %8798
  %8800 = phi i32 [ %8849, %8848 ], [ 0, %8798 ]
  %8801 = phi i32 [ %8850, %8848 ], [ 0, %8798 ]
  %8802 = add nuw i32 %8801, 171
  %8803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8802)  ; CBufferLoadLegacy(handle,regIndex)
  %8804 = extractvalue %dx.types.CBufRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.CBufRet.f32 %8803, 1
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = fsub fast float %8804, %8807
  %8810 = fsub fast float %8805, %8808
  %8811 = extractvalue %dx.types.CBufRet.f32 %8803, 2
  %8812 = fsub fast float -0.000000e+00, %8809
  %8813 = fsub fast float -0.000000e+00, %8810
  %8814 = call float @dx.op.dot2.f32(i32 54, float %8633, float %8634, float %8812, float %8813)  ; Dot2(ax,ay,bx,by)
  %8815 = fmul fast float %8814, 2.000000e+00
  %8816 = call float @dx.op.dot2.f32(i32 54, float %8812, float %8813, float %8812, float %8813)  ; Dot2(ax,ay,bx,by)
  %8817 = fmul fast float %8811, %8811
  %8818 = fsub fast float %8816, %8817
  %8819 = fmul fast float %8815, %8815
  %8820 = fmul fast float %8676, %8818
  %8821 = fsub fast float %8819, %8820
  %8822 = fcmp fast ogt float %8821, 0.000000e+00
  br i1 %8822, label %8823, label %8838

; <label>:8823                                    ; preds = %8799
  %8824 = fcmp fast ogt float %8815, 0.000000e+00
  %8825 = call float @dx.op.unary.f32(i32 24, float %8821)  ; Sqrt(value)
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = select i1 %8824, float %8825, float %8826
  %8828 = fadd fast float %8827, %8815
  %8829 = fmul float %8828, -5.000000e-01
  %8830 = fdiv fast float %8829, %8669
  %8831 = call float @dx.op.binary.f32(i32 35, float %8830, float 0.000000e+00)  ; FMax(a,b)
  %8832 = call float @dx.op.binary.f32(i32 36, float %8704, float %8831)  ; FMin(a,b)
  %8833 = fdiv fast float %8818, %8829
  %8834 = call float @dx.op.binary.f32(i32 35, float %8833, float 0.000000e+00)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8704, float %8834)  ; FMin(a,b)
  %8836 = call float @dx.op.binary.f32(i32 36, float %8832, float %8835)  ; FMin(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %8832, float %8835)  ; FMax(a,b)
  br label %8838

; <label>:8838                                    ; preds = %8823, %8799
  %8839 = phi float [ %8837, %8823 ], [ -1.000000e+00, %8799 ]
  %8840 = phi float [ %8836, %8823 ], [ -1.000000e+00, %8799 ]
  %8841 = phi i1 [ true, %8823 ], [ false, %8799 ]
  br i1 %8841, label %8842, label %8848

; <label>:8842                                    ; preds = %8838
  %8843 = call float @dx.op.binary.f32(i32 35, float %8787, float %8840)  ; FMax(a,b)
  %8844 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8801
  store float %8843, float* %8844, align 4, !tbaa !124, !noalias !126
  %8845 = call float @dx.op.binary.f32(i32 35, float %8787, float %8839)  ; FMax(a,b)
  %8846 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8801
  store float %8845, float* %8846, align 4, !tbaa !124, !noalias !126
  %8847 = add nsw i32 %8800, 1
  br label %8848

; <label>:8848                                    ; preds = %8842, %8838
  %8849 = phi i32 [ %8847, %8842 ], [ %8800, %8838 ]
  %8850 = add nuw nsw i32 %8801, 1
  %8851 = icmp eq i32 %8850, %8656
  br i1 %8851, label %8852, label %8799

; <label>:8852                                    ; preds = %8848
  %8853 = load float, float* %8793, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8854 = load float, float* %8792, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %8855 = load float, float* %8791, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %8856 = load float, float* %8796, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8857 = load float, float* %8795, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %8858 = load float, float* %8794, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %8859

; <label>:8859                                    ; preds = %8852, %8786
  %8860 = phi float [ -1.000000e+00, %8786 ], [ %8858, %8852 ]
  %8861 = phi float [ -1.000000e+00, %8786 ], [ %8857, %8852 ]
  %8862 = phi float [ -1.000000e+00, %8786 ], [ %8856, %8852 ]
  %8863 = phi float [ -1.000000e+00, %8786 ], [ %8855, %8852 ]
  %8864 = phi float [ -1.000000e+00, %8786 ], [ %8854, %8852 ]
  %8865 = phi float [ -1.000000e+00, %8786 ], [ %8853, %8852 ]
  %8866 = phi i32 [ 0, %8786 ], [ %8849, %8852 ]
  %8867 = call float @dx.op.binary.f32(i32 36, float %8864, float %8865)  ; FMin(a,b)
  %8868 = call float @dx.op.binary.f32(i32 36, float %8863, float %8867)  ; FMin(a,b)
  %8869 = call float @dx.op.binary.f32(i32 35, float %8863, float %8864)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8869, float %8865)  ; FMin(a,b)
  %8871 = call float @dx.op.binary.f32(i32 36, float %8863, float %8864)  ; FMin(a,b)
  %8872 = call float @dx.op.binary.f32(i32 35, float %8871, float %8870)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 35, float %8864, float %8865)  ; FMax(a,b)
  %8874 = call float @dx.op.binary.f32(i32 35, float %8863, float %8873)  ; FMax(a,b)
  store float %8868, float* %8791, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %8872, float* %8792, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %8874, float* %8793, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8875 = call float @dx.op.binary.f32(i32 36, float %8861, float %8862)  ; FMin(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8860, float %8875)  ; FMin(a,b)
  %8877 = call float @dx.op.binary.f32(i32 35, float %8860, float %8861)  ; FMax(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8877, float %8862)  ; FMin(a,b)
  %8879 = call float @dx.op.binary.f32(i32 36, float %8860, float %8861)  ; FMin(a,b)
  %8880 = call float @dx.op.binary.f32(i32 35, float %8879, float %8878)  ; FMax(a,b)
  %8881 = call float @dx.op.binary.f32(i32 35, float %8861, float %8862)  ; FMax(a,b)
  %8882 = call float @dx.op.binary.f32(i32 35, float %8860, float %8881)  ; FMax(a,b)
  store float %8876, float* %8794, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %8880, float* %8795, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %8882, float* %8796, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8883 = sub nsw i32 3, %8866
  %8884 = icmp sgt i32 %8883, 2
  br i1 %8884, label %8885, label %8923

; <label>:8885                                    ; preds = %8859
  %8886 = icmp eq i32 %8654, 0
  %8887 = fsub fast float %8704, %8788
  %8888 = select i1 %8886, float %8887, float %8788
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 0
  %8891 = extractvalue %dx.types.CBufRet.f32 %8889, 1
  %8892 = extractvalue %dx.types.CBufRet.f32 %8889, 2
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 0
  %8895 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %8896 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8897 = extractvalue %dx.types.CBufRet.f32 %8893, 3
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 3
  %8900 = call float @dx.op.binary.f32(i32 36, float %8789, float %8899)  ; FMin(a,b)
  %8901 = fmul fast float %8897, %8888
  %8902 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8903 = fsub fast float %8894, %8890
  %8904 = fsub fast float %8895, %8891
  %8905 = fsub fast float %8896, %8892
  %8906 = fmul fast float %8902, %8903
  %8907 = fmul fast float %8902, %8904
  %8908 = fmul fast float %8902, %8905
  %8909 = fadd fast float %8906, %8890
  %8910 = fadd fast float %8907, %8891
  %8911 = fadd fast float %8908, %8892
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.CBufRet.f32 %8912, 1
  %8915 = fadd fast float %8914, %8913
  %8916 = call float @dx.op.unary.f32(i32 7, float %8915)  ; Saturate(value)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8912, 2
  %8918 = extractvalue %dx.types.CBufRet.f32 %8912, 3
  %8919 = fadd fast float %8918, %8917
  %8920 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8921 = fmul fast float %8916, %8900
  %8922 = fmul fast float %8921, %8920
  br label %9005

; <label>:8923                                    ; preds = %8859
  %8924 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8883
  %8925 = load float, float* %8924, align 4, !tbaa !124, !noalias !126
  %8926 = fcmp fast olt float %8925, %8790
  %8927 = icmp sgt i32 %8866, 0
  %8928 = and i1 %8927, %8926
  br i1 %8928, label %8929, label %8966

; <label>:8929                                    ; preds = %8923
  br label %8930

; <label>:8930                                    ; preds = %8959, %8929
  %8931 = phi float [ %8960, %8959 ], [ %8788, %8929 ]
  %8932 = phi float [ %8961, %8959 ], [ %8789, %8929 ]
  %8933 = phi float [ %8941, %8959 ], [ %8925, %8929 ]
  %8934 = phi i32 [ %8938, %8959 ], [ %8883, %8929 ]
  %8935 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8934
  %8936 = load float, float* %8935, align 4, !tbaa !124, !noalias !126
  %8937 = icmp slt i32 %8934, 2
  %8938 = add nsw i32 %8934, 1
  %8939 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8938
  %8940 = load float, float* %8939, align 4, !tbaa !124, !noalias !126
  %8941 = select i1 %8937, float %8940, float %8704
  %8942 = call float @dx.op.binary.f32(i32 36, float %8941, float %8936)  ; FMin(a,b)
  %8943 = call float @dx.op.binary.f32(i32 36, float %8790, float %8942)  ; FMin(a,b)
  %8944 = icmp eq i32 %8654, 0
  %8945 = fadd fast float %8943, %8933
  %8946 = fmul fast float %8945, %8635
  %8947 = fadd fast float %8946, %8648
  br i1 %8944, label %8953, label %8948

; <label>:8948                                    ; preds = %8930
  %8949 = fsub fast float %8943, %8933
  %8950 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8949)  ; FMax(a,b)
  %8951 = fmul fast float %8950, %8947
  %8952 = fadd fast float %8951, %8932
  br label %8959

; <label>:8953                                    ; preds = %8930
  %8954 = fsub fast float %8933, %8943
  %8955 = call float @dx.op.unary.f32(i32 6, float %8954)  ; FAbs(value)
  %8956 = fadd fast float %8955, %8931
  %8957 = fmul fast float %8955, %8947
  %8958 = fsub fast float %8932, %8957
  br label %8959

; <label>:8959                                    ; preds = %8953, %8948
  %8960 = phi float [ %8950, %8948 ], [ %8956, %8953 ]
  %8961 = phi float [ %8952, %8948 ], [ %8958, %8953 ]
  %8962 = fcmp fast olt float %8941, %8790
  %8963 = icmp slt i32 %8938, 3
  %8964 = and i1 %8963, %8962
  br i1 %8964, label %8930, label %8965

; <label>:8965                                    ; preds = %8959
  br label %8966

; <label>:8966                                    ; preds = %8965, %8923
  %8967 = phi float [ %8788, %8923 ], [ %8960, %8965 ]
  %8968 = phi float [ %8789, %8923 ], [ %8961, %8965 ]
  %8969 = fsub fast float %8704, %8967
  %8970 = select i1 %8706, float %8967, float %8969
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.CBufRet.f32 %8971, 2
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.CBufRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.CBufRet.f32 %8975, 2
  %8979 = extractvalue %dx.types.CBufRet.f32 %8975, 3
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 3
  %8982 = call float @dx.op.binary.f32(i32 36, float %8968, float %8981)  ; FMin(a,b)
  %8983 = fmul fast float %8979, %8970
  %8984 = call float @dx.op.unary.f32(i32 7, float %8983)  ; Saturate(value)
  %8985 = fsub fast float %8976, %8972
  %8986 = fsub fast float %8977, %8973
  %8987 = fsub fast float %8978, %8974
  %8988 = fmul fast float %8984, %8985
  %8989 = fmul fast float %8984, %8986
  %8990 = fmul fast float %8984, %8987
  %8991 = fadd fast float %8988, %8972
  %8992 = fadd fast float %8989, %8973
  %8993 = fadd fast float %8990, %8974
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8997 = fadd fast float %8996, %8995
  %8998 = call float @dx.op.unary.f32(i32 7, float %8997)  ; Saturate(value)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %9000 = extractvalue %dx.types.CBufRet.f32 %8994, 3
  %9001 = fadd fast float %9000, %8999
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fmul fast float %8998, %8982
  %9004 = fmul fast float %9003, %9002
  br label %9005

; <label>:9005                                    ; preds = %8966, %8885, %8720, %8702, %8700
  %9006 = phi float [ %8729, %8720 ], [ %8888, %8885 ], [ %8970, %8966 ], [ 0.000000e+00, %8700 ], [ 0.000000e+00, %8702 ]
  %9007 = phi float [ %8763, %8720 ], [ %8922, %8885 ], [ %9004, %8966 ], [ 0.000000e+00, %8700 ], [ 0.000000e+00, %8702 ]
  %9008 = phi float [ %8750, %8720 ], [ %8909, %8885 ], [ %8991, %8966 ], [ 0.000000e+00, %8700 ], [ 0.000000e+00, %8702 ]
  %9009 = phi float [ %8751, %8720 ], [ %8910, %8885 ], [ %8992, %8966 ], [ 0.000000e+00, %8700 ], [ 0.000000e+00, %8702 ]
  %9010 = phi float [ %8752, %8720 ], [ %8911, %8885 ], [ %8993, %8966 ], [ 0.000000e+00, %8700 ], [ 0.000000e+00, %8702 ]
  %9011 = fmul fast float %8643, %9007
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9014 = fsub fast float %8650, %9013
  %9015 = fcmp fast olt float %9011, -2.000000e+01
  %9016 = call float @dx.op.unary.f32(i32 21, float %9011)  ; Exp(value)
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 2
  %9019 = extractvalue %dx.types.CBufRet.f32 %9017, 3
  %9020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9021 = extractvalue %dx.types.CBufRet.f32 %9020, 2
  %9022 = fmul fast float %9019, %9014
  %9023 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9024 = fsub fast float 1.000000e+00, %9023
  %9025 = fmul fast float %8635, 5.000000e-01
  %9026 = fadd fast float %9025, 5.000000e-01
  %9027 = call float @dx.op.unary.f32(i32 7, float %9026)  ; Saturate(value)
  %9028 = fsub fast float 1.000000e+00, %9027
  %9029 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9024)  ; FMax(a,b)
  %9030 = fdiv fast float %9028, %9029
  %9031 = fsub fast float %9014, %8592
  %9032 = call float @dx.op.unary.f32(i32 6, float %9031)  ; FAbs(value)
  %9033 = fmul fast float %9032, %9018
  %9034 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9035 = fsub fast float 1.000000e+00, %9033
  %9036 = fmul fast float %9035, %9034
  %9037 = fadd fast float %9036, %9033
  %9038 = fmul fast float %9021, %9014
  %9039 = call float @dx.op.unary.f32(i32 7, float %9038)  ; Saturate(value)
  %9040 = fsub fast float 1.000000e+00, %9037
  %9041 = fmul fast float %9040, %9039
  %9042 = fadd fast float %9041, %9037
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fadd fast float %9016, -1.000000e+00
  %9045 = select i1 %9015, float -1.000000e+00, float %9044
  %9046 = fmul fast float %9043, %9045
  %9047 = fadd fast float %9046, 1.000000e+00
  %9048 = fsub fast float -0.000000e+00, %9046
  %9049 = fmul fast float %9008, %9048
  %9050 = fmul fast float %9009, %9048
  %9051 = fmul fast float %9010, %9048
  br label %9052

; <label>:9052                                    ; preds = %9005, %8601
  %9053 = phi float [ %9006, %9005 ], [ 0.000000e+00, %8601 ]
  %9054 = phi float [ %9047, %9005 ], [ 1.000000e+00, %8601 ]
  %9055 = phi float [ %9049, %9005 ], [ 0.000000e+00, %8601 ]
  %9056 = phi float [ %9050, %9005 ], [ 0.000000e+00, %8601 ]
  %9057 = phi float [ %9051, %9005 ], [ 0.000000e+00, %8601 ]
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 1
  %9060 = fsub fast float 1.000000e+00, %9054
  %9061 = fmul fast float %9060, %8636
  %9062 = fmul fast float %9061, %9059
  %9063 = fsub fast float %8636, %9062
  br i1 %8629, label %9064, label %9093, !dx.controlflow.hints !162

; <label>:9064                                    ; preds = %9052
  %9065 = fmul fast float %8637, %8626
  %9066 = fadd fast float %9065, %8627
  %9067 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9068 = fmul fast float %8608, %9063
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = fmul fast float %8609, %9063
  %9071 = fsub fast float -0.000000e+00, %9070
  %9072 = call float @dx.op.unary.f32(i32 21, float %9069)  ; Exp(value)
  %9073 = call float @dx.op.unary.f32(i32 21, float %9071)  ; Exp(value)
  %9074 = call float @dx.op.binary.f32(i32 35, float %8616, float %9072)  ; FMax(a,b)
  %9075 = call float @dx.op.binary.f32(i32 35, float %8616, float %9073)  ; FMax(a,b)
  %9076 = fsub fast float %9075, %9074
  %9077 = fmul fast float %9076, %9067
  %9078 = fadd fast float %9077, %9074
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = fsub fast float %8613, %8618
  %9081 = fsub fast float %8614, %8619
  %9082 = fsub fast float %8615, %8620
  %9083 = fmul fast float %9067, %9080
  %9084 = fmul fast float %9067, %9081
  %9085 = fmul fast float %9067, %9082
  %9086 = fadd fast float %9083, %8618
  %9087 = fadd fast float %9084, %8619
  %9088 = fadd fast float %9085, %8620
  %9089 = fsub fast float 1.000000e+00, %9079
  %9090 = fmul fast float %9089, %9086
  %9091 = fmul fast float %9089, %9087
  %9092 = fmul fast float %9089, %9088
  br label %9152

; <label>:9093                                    ; preds = %9052
  %9094 = fmul fast float %9063, %8625
  %9095 = call float @dx.op.unary.f32(i32 7, float %9094)  ; Saturate(value)
  %9096 = fsub fast float 2.000000e+00, %9095
  %9097 = fmul fast float %9095, 9.921875e-01
  %9098 = fmul fast float %9097, %9096
  %9099 = fadd fast float %9098, 3.906250e-03
  %9100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9099, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9101 = extractvalue %dx.types.ResRet.f32 %9100, 0
  %9102 = fsub fast float %9095, %9101
  %9103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9102)  ; FMax(a,b)
  %9104 = fmul fast float %8611, %8592
  %9105 = call float @dx.op.unary.f32(i32 6, float %9104)  ; FAbs(value)
  %9106 = fcmp fast ogt float %9105, 0x3EB0C6F7A0000000
  br i1 %9106, label %9107, label %9113, !dx.controlflow.hints !163

; <label>:9107                                    ; preds = %9093
  %9108 = fmul fast float %9104, 0xBFF7154760000000
  %9109 = call float @dx.op.unary.f32(i32 21, float %9108)  ; Exp(value)
  %9110 = fsub fast float 1.000000e+00, %9109
  %9111 = fdiv fast float %9110, %9104
  %9112 = fmul fast float %9111, %8621
  br label %9113

; <label>:9113                                    ; preds = %9107, %9093
  %9114 = phi float [ %9112, %9107 ], [ %8621, %9093 ]
  %9115 = fadd fast float %9114, %8623
  %9116 = fmul fast float %9115, %9103
  %9117 = fmul fast float %8608, %9116
  %9118 = fsub fast float -0.000000e+00, %9117
  %9119 = fmul fast float %8609, %9116
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fmul fast float %8610, %9116
  %9122 = fsub fast float -0.000000e+00, %9121
  %9123 = call float @dx.op.unary.f32(i32 21, float %9118)  ; Exp(value)
  %9124 = call float @dx.op.unary.f32(i32 21, float %9120)  ; Exp(value)
  %9125 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9126 = fmul fast float %8637, %8637
  %9127 = fadd fast float %9126, 1.000000e+00
  %9128 = fmul fast float %9127, 0x3FAE8EC8A0000000
  %9129 = fmul fast float %9128, %8618
  %9130 = fmul fast float %9128, %8619
  %9131 = fmul fast float %9128, %8620
  %9132 = fmul fast float %8637, %8616
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %8616, %8616
  %9135 = fsub fast float 1.000000e+00, %9134
  %9136 = fmul fast float %9135, 0x3FB45F3060000000
  %9137 = fmul fast float %9133, %9133
  %9138 = fdiv fast float 1.000000e+00, %9137
  %9139 = fmul fast float %9136, %9138
  %9140 = fmul fast float %9139, %8613
  %9141 = fmul fast float %9139, %8614
  %9142 = fmul fast float %9139, %8615
  %9143 = fadd fast float %9140, %9129
  %9144 = fadd fast float %9141, %9130
  %9145 = fadd fast float %9142, %9131
  %9146 = fsub fast float 1.000000e+00, %9123
  %9147 = fsub fast float 1.000000e+00, %9124
  %9148 = fsub fast float 1.000000e+00, %9125
  %9149 = fmul fast float %9143, %9146
  %9150 = fmul fast float %9144, %9147
  %9151 = fmul fast float %9145, %9148
  br label %9152

; <label>:9152                                    ; preds = %9113, %9064
  %9153 = phi float [ %9090, %9064 ], [ %9149, %9113 ]
  %9154 = phi float [ %9091, %9064 ], [ %9150, %9113 ]
  %9155 = phi float [ %9092, %9064 ], [ %9151, %9113 ]
  %9156 = phi float [ %9079, %9064 ], [ %9123, %9113 ]
  %9157 = phi float [ %9079, %9064 ], [ %9124, %9113 ]
  %9158 = phi float [ %9079, %9064 ], [ %9125, %9113 ]
  br i1 %8645, label %9159, label %9357, !dx.controlflow.hints !164

; <label>:9159                                    ; preds = %9152
  %9160 = extractvalue %dx.types.CBufRet.f32 %9058, 0
  %9161 = fmul fast float %9160, %9060
  %9162 = fsub fast float %9055, %9153
  %9163 = fsub fast float %9056, %9154
  %9164 = fsub fast float %9057, %9155
  %9165 = fmul fast float %9161, %9162
  %9166 = fmul fast float %9161, %9163
  %9167 = fmul fast float %9161, %9164
  %9168 = fadd fast float %9165, %9153
  %9169 = fadd fast float %9166, %9154
  %9170 = fadd fast float %9167, %9155
  %9171 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9156)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9157)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9158)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9054)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9053, float %9063)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9175)  ; FMax(a,b)
  %9177 = fdiv fast float %9053, %9176
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fdiv fast float %9063, %9176
  %9180 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9181 = fcmp fast une float %9174, 1.000000e+00
  br i1 %9181, label %9182, label %9195, !dx.controlflow.hints !165

; <label>:9182                                    ; preds = %9159
  %9183 = call float @dx.op.unary.f32(i32 23, float %9174)  ; Log(value)
  %9184 = fmul fast float %9183, 0x3FE62E4300000000
  %9185 = fmul fast float %9055, %9184
  %9186 = fsub fast float -0.000000e+00, %9185
  %9187 = fmul fast float %9056, %9184
  %9188 = fsub fast float -0.000000e+00, %9187
  %9189 = fmul fast float %9057, %9184
  %9190 = fsub fast float -0.000000e+00, %9189
  %9191 = fsub fast float 1.000000e+00, %9174
  %9192 = fdiv fast float %9186, %9191
  %9193 = fdiv fast float %9188, %9191
  %9194 = fdiv fast float %9190, %9191
  br label %9195

; <label>:9195                                    ; preds = %9182, %9159
  %9196 = phi float [ %9192, %9182 ], [ %9055, %9159 ]
  %9197 = phi float [ %9193, %9182 ], [ %9056, %9159 ]
  %9198 = phi float [ %9194, %9182 ], [ %9057, %9159 ]
  %9199 = phi float [ %9184, %9182 ], [ 0.000000e+00, %9159 ]
  %9200 = fcmp fast une float %9171, 1.000000e+00
  br i1 %9200, label %9201, label %9208, !dx.controlflow.hints !166

; <label>:9201                                    ; preds = %9195
  %9202 = call float @dx.op.unary.f32(i32 23, float %9171)  ; Log(value)
  %9203 = fmul fast float %9202, 0x3FE62E4300000000
  %9204 = fmul fast float %9168, %9203
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = fsub fast float 1.000000e+00, %9171
  %9207 = fdiv fast float %9205, %9206
  br label %9208

; <label>:9208                                    ; preds = %9201, %9195
  %9209 = phi float [ %9207, %9201 ], [ %9168, %9195 ]
  %9210 = phi float [ %9203, %9201 ], [ 0.000000e+00, %9195 ]
  %9211 = fcmp fast une float %9172, 1.000000e+00
  br i1 %9211, label %9212, label %9219, !dx.controlflow.hints !166

; <label>:9212                                    ; preds = %9208
  %9213 = call float @dx.op.unary.f32(i32 23, float %9172)  ; Log(value)
  %9214 = fmul fast float %9213, 0x3FE62E4300000000
  %9215 = fmul fast float %9169, %9214
  %9216 = fsub fast float -0.000000e+00, %9215
  %9217 = fsub fast float 1.000000e+00, %9172
  %9218 = fdiv fast float %9216, %9217
  br label %9219

; <label>:9219                                    ; preds = %9212, %9208
  %9220 = phi float [ %9218, %9212 ], [ %9169, %9208 ]
  %9221 = phi float [ %9214, %9212 ], [ 0.000000e+00, %9208 ]
  %9222 = fcmp fast une float %9173, 1.000000e+00
  br i1 %9222, label %9223, label %9230, !dx.controlflow.hints !166

; <label>:9223                                    ; preds = %9219
  %9224 = call float @dx.op.unary.f32(i32 23, float %9173)  ; Log(value)
  %9225 = fmul fast float %9224, 0x3FE62E4300000000
  %9226 = fmul fast float %9170, %9225
  %9227 = fsub fast float -0.000000e+00, %9226
  %9228 = fsub fast float 1.000000e+00, %9173
  %9229 = fdiv fast float %9227, %9228
  br label %9230

; <label>:9230                                    ; preds = %9223, %9219
  %9231 = phi float [ %9229, %9223 ], [ %9170, %9219 ]
  %9232 = phi float [ %9225, %9223 ], [ 0.000000e+00, %9219 ]
  %9233 = fmul fast float %9196, %9180
  %9234 = fmul fast float %9197, %9180
  %9235 = fmul fast float %9198, %9180
  %9236 = fmul fast float %9199, %9180
  %9237 = fmul fast float %9209, %9178
  %9238 = fmul fast float %9220, %9178
  %9239 = fmul fast float %9231, %9178
  %9240 = fmul fast float %9210, %9178
  %9241 = fmul fast float %9221, %9178
  %9242 = fmul fast float %9232, %9178
  %9243 = fadd fast float %9237, %9233
  %9244 = fadd fast float %9238, %9234
  %9245 = fadd fast float %9239, %9235
  %9246 = fadd fast float %9240, %9236
  %9247 = fadd fast float %9241, %9236
  %9248 = fadd fast float %9242, %9236
  %9249 = fcmp fast une float %9246, 0.000000e+00
  br i1 %9249, label %9250, label %9257, !dx.controlflow.hints !167

; <label>:9250                                    ; preds = %9230
  %9251 = fmul fast float %9246, 0x3FF7154760000000
  %9252 = call float @dx.op.unary.f32(i32 21, float %9251)  ; Exp(value)
  %9253 = fsub fast float 1.000000e+00, %9252
  %9254 = fmul fast float %9243, %9253
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fdiv fast float %9255, %9246
  br label %9257

; <label>:9257                                    ; preds = %9250, %9230
  %9258 = phi float [ %9252, %9250 ], [ 1.000000e+00, %9230 ]
  %9259 = phi float [ %9256, %9250 ], [ %9243, %9230 ]
  %9260 = fcmp fast une float %9247, 0.000000e+00
  br i1 %9260, label %9261, label %9268, !dx.controlflow.hints !167

; <label>:9261                                    ; preds = %9257
  %9262 = fmul fast float %9247, 0x3FF7154760000000
  %9263 = call float @dx.op.unary.f32(i32 21, float %9262)  ; Exp(value)
  %9264 = fsub fast float 1.000000e+00, %9263
  %9265 = fmul fast float %9244, %9264
  %9266 = fsub fast float -0.000000e+00, %9265
  %9267 = fdiv fast float %9266, %9247
  br label %9268

; <label>:9268                                    ; preds = %9261, %9257
  %9269 = phi float [ %9263, %9261 ], [ 1.000000e+00, %9257 ]
  %9270 = phi float [ %9267, %9261 ], [ %9244, %9257 ]
  %9271 = fcmp fast une float %9248, 0.000000e+00
  br i1 %9271, label %9272, label %9279, !dx.controlflow.hints !167

; <label>:9272                                    ; preds = %9268
  %9273 = fmul fast float %9248, 0x3FF7154760000000
  %9274 = call float @dx.op.unary.f32(i32 21, float %9273)  ; Exp(value)
  %9275 = fsub fast float 1.000000e+00, %9274
  %9276 = fmul fast float %9245, %9275
  %9277 = fsub fast float -0.000000e+00, %9276
  %9278 = fdiv fast float %9277, %9248
  br label %9279

; <label>:9279                                    ; preds = %9272, %9268
  %9280 = phi float [ %9274, %9272 ], [ 1.000000e+00, %9268 ]
  %9281 = phi float [ %9278, %9272 ], [ %9245, %9268 ]
  %9282 = fcmp fast ogt float %9178, %9180
  br i1 %9282, label %9283, label %9303

; <label>:9283                                    ; preds = %9279
  %9284 = fsub fast float 1.000000e+00, %9180
  %9285 = fmul fast float %9196, %9284
  %9286 = fmul fast float %9197, %9284
  %9287 = fmul fast float %9198, %9284
  %9288 = fmul fast float %9199, %9284
  %9289 = fcmp fast une float %9288, 0.000000e+00
  br i1 %9289, label %9290, label %9341, !dx.controlflow.hints !168

; <label>:9290                                    ; preds = %9283
  %9291 = fmul fast float %9288, 0x3FF7154760000000
  %9292 = call float @dx.op.unary.f32(i32 21, float %9291)  ; Exp(value)
  %9293 = fsub fast float 1.000000e+00, %9292
  %9294 = fmul fast float %9285, %9293
  %9295 = fsub fast float -0.000000e+00, %9294
  %9296 = fmul fast float %9286, %9293
  %9297 = fsub fast float -0.000000e+00, %9296
  %9298 = fmul fast float %9287, %9293
  %9299 = fsub fast float -0.000000e+00, %9298
  %9300 = fdiv fast float %9295, %9288
  %9301 = fdiv fast float %9297, %9288
  %9302 = fdiv fast float %9299, %9288
  br label %9341

; <label>:9303                                    ; preds = %9279
  %9304 = fsub fast float 1.000000e+00, %9178
  %9305 = fmul fast float %9209, %9304
  %9306 = fmul fast float %9220, %9304
  %9307 = fmul fast float %9231, %9304
  %9308 = fmul fast float %9210, %9304
  %9309 = fmul fast float %9221, %9304
  %9310 = fmul fast float %9232, %9304
  %9311 = fcmp fast une float %9308, 0.000000e+00
  br i1 %9311, label %9312, label %9319, !dx.controlflow.hints !167

; <label>:9312                                    ; preds = %9303
  %9313 = fmul fast float %9308, 0x3FF7154760000000
  %9314 = call float @dx.op.unary.f32(i32 21, float %9313)  ; Exp(value)
  %9315 = fsub fast float 1.000000e+00, %9314
  %9316 = fmul fast float %9305, %9315
  %9317 = fsub fast float -0.000000e+00, %9316
  %9318 = fdiv fast float %9317, %9308
  br label %9319

; <label>:9319                                    ; preds = %9312, %9303
  %9320 = phi float [ %9318, %9312 ], [ %9305, %9303 ]
  %9321 = phi float [ %9314, %9312 ], [ 1.000000e+00, %9303 ]
  %9322 = fcmp fast une float %9309, 0.000000e+00
  br i1 %9322, label %9323, label %9330, !dx.controlflow.hints !167

; <label>:9323                                    ; preds = %9319
  %9324 = fmul fast float %9309, 0x3FF7154760000000
  %9325 = call float @dx.op.unary.f32(i32 21, float %9324)  ; Exp(value)
  %9326 = fsub fast float 1.000000e+00, %9325
  %9327 = fmul fast float %9306, %9326
  %9328 = fsub fast float -0.000000e+00, %9327
  %9329 = fdiv fast float %9328, %9309
  br label %9330

; <label>:9330                                    ; preds = %9323, %9319
  %9331 = phi float [ %9329, %9323 ], [ %9306, %9319 ]
  %9332 = phi float [ %9325, %9323 ], [ 1.000000e+00, %9319 ]
  %9333 = fcmp fast une float %9310, 0.000000e+00
  br i1 %9333, label %9334, label %9341, !dx.controlflow.hints !167

; <label>:9334                                    ; preds = %9330
  %9335 = fmul fast float %9310, 0x3FF7154760000000
  %9336 = call float @dx.op.unary.f32(i32 21, float %9335)  ; Exp(value)
  %9337 = fsub fast float 1.000000e+00, %9336
  %9338 = fmul fast float %9307, %9337
  %9339 = fsub fast float -0.000000e+00, %9338
  %9340 = fdiv fast float %9339, %9310
  br label %9341

; <label>:9341                                    ; preds = %9334, %9330, %9290, %9283
  %9342 = phi float [ %9340, %9334 ], [ %9302, %9290 ], [ %9287, %9283 ], [ %9307, %9330 ]
  %9343 = phi float [ %9331, %9334 ], [ %9301, %9290 ], [ %9286, %9283 ], [ %9331, %9330 ]
  %9344 = phi float [ %9320, %9334 ], [ %9300, %9290 ], [ %9285, %9283 ], [ %9320, %9330 ]
  %9345 = phi float [ %9336, %9334 ], [ %9292, %9290 ], [ 1.000000e+00, %9283 ], [ 1.000000e+00, %9330 ]
  %9346 = phi float [ %9332, %9334 ], [ %9292, %9290 ], [ 1.000000e+00, %9283 ], [ %9332, %9330 ]
  %9347 = phi float [ %9321, %9334 ], [ %9292, %9290 ], [ 1.000000e+00, %9283 ], [ %9321, %9330 ]
  %9348 = fmul fast float %9347, %9259
  %9349 = fmul fast float %9346, %9270
  %9350 = fmul fast float %9345, %9281
  %9351 = fadd fast float %9348, %9344
  %9352 = fadd fast float %9349, %9343
  %9353 = fadd fast float %9350, %9342
  %9354 = fmul fast float %9347, %9258
  %9355 = fmul fast float %9346, %9269
  %9356 = fmul fast float %9345, %9280
  br label %9357

; <label>:9357                                    ; preds = %9341, %9152
  %9358 = phi float [ %9356, %9341 ], [ %9158, %9152 ]
  %9359 = phi float [ %9355, %9341 ], [ %9157, %9152 ]
  %9360 = phi float [ %9354, %9341 ], [ %9156, %9152 ]
  %9361 = phi float [ %9353, %9341 ], [ %9155, %9152 ]
  %9362 = phi float [ %9352, %9341 ], [ %9154, %9152 ]
  %9363 = phi float [ %9351, %9341 ], [ %9153, %9152 ]
  %9364 = fmul fast float %9360, %8600
  %9365 = call float @dx.op.dot3.f32(i32 55, float %9360, float %9359, float %9358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9366 = call float @dx.op.dot3.f32(i32 55, float %9363, float %9362, float %9361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9367 = select i1 %219, float %9365, float %9360
  %9368 = select i1 %219, float %9365, float %9359
  %9369 = select i1 %219, float 1.000000e+00, float %9358
  %9370 = select i1 %219, float %9366, float %9363
  %9371 = select i1 %219, float 0.000000e+00, float %9362
  %9372 = select i1 %219, float 0.000000e+00, float %9361
  %9373 = fmul fast float %9367, %8594
  %9374 = fmul fast float %9368, %8595
  %9375 = fmul fast float %9369, %8596
  %9376 = fadd fast float %9373, %9370
  %9377 = fadd fast float %9374, %9371
  %9378 = fadd fast float %9372, %9375
  %9379 = fmul fast float %9367, %8597
  %9380 = fmul fast float %9368, %8598
  %9381 = fmul fast float %9369, %8599
  %9382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.i32 %9382, 0
  %9384 = icmp eq i32 %9383, 0
  br i1 %9384, label %9742, label %9385, !dx.controlflow.hints !169

; <label>:9385                                    ; preds = %9357
  %9386 = fmul fast float %6246, %102
  %9387 = fmul fast float %6247, %103
  %9388 = fmul fast float %9386, 2.000000e+00
  %9389 = fmul fast float %9387, 2.000000e+00
  %9390 = fsub fast float 1.000000e+00, %9388
  %9391 = fsub fast float 1.000000e+00, %9389
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.CBufRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9396 = fmul fast float %9390, %9393
  %9397 = fmul fast float %9390, %9394
  %9398 = fmul fast float %9390, %9395
  %9399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9399, 0
  %9401 = extractvalue %dx.types.CBufRet.f32 %9399, 1
  %9402 = extractvalue %dx.types.CBufRet.f32 %9399, 2
  %9403 = fmul fast float %9391, %9400
  %9404 = fmul fast float %9391, %9401
  %9405 = fmul fast float %9391, %9402
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 0
  %9408 = extractvalue %dx.types.CBufRet.f32 %9406, 1
  %9409 = extractvalue %dx.types.CBufRet.f32 %9406, 2
  %9410 = fadd fast float %9403, %9407
  %9411 = fadd fast float %9410, %9396
  %9412 = fadd fast float %9404, %9408
  %9413 = fadd fast float %9412, %9397
  %9414 = fadd fast float %9405, %9409
  %9415 = fadd fast float %9414, %9398
  %9416 = fmul fast float %9411, %8593
  %9417 = fmul fast float %9413, %8593
  %9418 = fmul fast float %9415, %8593
  %9419 = fmul fast float %9416, %9416
  %9420 = fmul fast float %9417, %9417
  %9421 = fadd fast float %9419, %9420
  %9422 = fmul fast float %9418, %9418
  %9423 = fadd fast float %9421, %9422
  %9424 = call float @dx.op.unary.f32(i32 24, float %9423)  ; Sqrt(value)
  %9425 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %9426 = fsub fast float %9424, %9425
  %9427 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %9428 = fmul fast float %9426, %9427
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = fadd fast float %9429, -5.000000e-01
  %9431 = fmul fast float %9430, 2.000000e+00
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 2
  %9434 = call float @dx.op.binary.f32(i32 36, float %9433, float %9431)  ; FMin(a,b)
  %9435 = fsub fast float -0.000000e+00, %9433
  %9436 = fcmp fast ogt float %9434, %9435
  br i1 %9436, label %9437, label %9742, !dx.controlflow.hints !170

; <label>:9437                                    ; preds = %9385
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 3
  %9440 = fcmp fast ogt float %9439, 0.000000e+00
  br i1 %9440, label %9441, label %9514, !dx.controlflow.hints !171

; <label>:9441                                    ; preds = %9437
  %9442 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9443 = extractvalue %dx.types.Dimensions %9442, 0
  %9444 = sitofp i32 %9443 to float
  %9445 = extractvalue %dx.types.Dimensions %9442, 1
  %9446 = sitofp i32 %9445 to float
  %9447 = fmul fast float %9386, %9444
  %9448 = fmul fast float %9387, %9446
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 1
  %9451 = fsub fast float -0.000000e+00, %9450
  %9452 = fptoui float %9451 to i32
  %9453 = fptoui float %9447 to i32
  %9454 = fptoui float %9448 to i32
  %9455 = and i32 %9452, 31
  %9456 = lshr i32 %9453, %9455
  %9457 = lshr i32 %9454, %9455
  %9458 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9452, i32 %9456, i32 %9457, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9459 = extractvalue %dx.types.ResRet.f32 %9458, 0
  %9460 = fcmp fast olt float %9459, -1.000000e+00
  %9461 = fcmp fast ogt float %9459, -1.000000e+00
  %9462 = select i1 %9461, float %6254, float 1.000000e+00
  %9463 = fadd fast float %9459, 1.000000e+00
  %9464 = fmul fast float %9462, %9463
  %9465 = call float @dx.op.unary.f32(i32 6, float %9464)  ; FAbs(value)
  %9466 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %9467 = fcmp fast oge float %9465, %9466
  %9468 = select i1 %9467, float 0x4197782600000000, float %9465
  %9469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9470 = extractvalue %dx.types.CBufRet.f32 %9469, 0
  %9471 = extractvalue %dx.types.CBufRet.f32 %9469, 1
  %9472 = extractvalue %dx.types.CBufRet.f32 %9469, 2
  %9473 = select i1 %9460, float %9470, float %9393
  %9474 = select i1 %9460, float %9471, float %9394
  %9475 = select i1 %9460, float %9472, float %9395
  %9476 = fmul fast float %9473, %9390
  %9477 = fmul fast float %9474, %9390
  %9478 = fmul fast float %9475, %9390
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = select i1 %9460, float %9480, float %9400
  %9484 = select i1 %9460, float %9481, float %9401
  %9485 = select i1 %9460, float %9482, float %9402
  %9486 = fmul fast float %9483, %9391
  %9487 = fmul fast float %9484, %9391
  %9488 = fmul fast float %9485, %9391
  %9489 = fadd fast float %9486, %9476
  %9490 = fadd fast float %9487, %9477
  %9491 = fadd fast float %9488, %9478
  %9492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9493 = extractvalue %dx.types.CBufRet.f32 %9492, 0
  %9494 = extractvalue %dx.types.CBufRet.f32 %9492, 1
  %9495 = extractvalue %dx.types.CBufRet.f32 %9492, 2
  %9496 = select i1 %9460, float %9493, float %9407
  %9497 = select i1 %9460, float %9494, float %9408
  %9498 = select i1 %9460, float %9495, float %9409
  %9499 = fadd fast float %9489, %9496
  %9500 = fadd fast float %9490, %9497
  %9501 = fadd fast float %9491, %9498
  %9502 = fmul fast float %9499, %9468
  %9503 = fmul fast float %9500, %9468
  %9504 = fmul fast float %9501, %9468
  %9505 = fmul fast float %9502, %9502
  %9506 = fmul fast float %9503, %9503
  %9507 = fadd fast float %9505, %9506
  %9508 = fmul fast float %9504, %9504
  %9509 = fadd fast float %9507, %9508
  %9510 = call float @dx.op.unary.f32(i32 24, float %9509)  ; Sqrt(value)
  %9511 = fsub fast float %9510, %9425
  %9512 = fmul fast float %9511, %9427
  %9513 = call float @dx.op.unary.f32(i32 7, float %9512)  ; Saturate(value)
  br label %9514

; <label>:9514                                    ; preds = %9441, %9437
  %9515 = phi float [ %9513, %9441 ], [ 1.000000e+00, %9437 ]
  %9516 = fmul fast float %9434, 5.000000e-01
  %9517 = fadd fast float %9516, 5.000000e-01
  %9518 = call float @dx.op.unary.f32(i32 22, float %9517)  ; Frc(value)
  %9519 = call float @dx.op.unary.f32(i32 27, float %9518)  ; Round_ni(value)
  %9520 = call float @dx.op.unary.f32(i32 22, float %9518)  ; Frc(value)
  %9521 = fmul fast float %9520, 2.000000e+00
  %9522 = fadd fast float %9521, -1.000000e+00
  %9523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9386, float %9387, float %9519, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9524 = extractvalue %dx.types.ResRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.ResRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.ResRet.f32 %9523, 2
  %9527 = extractvalue %dx.types.ResRet.f32 %9523, 3
  %9528 = fadd fast float %9524, -5.000000e-01
  %9529 = fadd fast float %9526, -5.000000e-01
  %9530 = fmul fast float %9528, 0xBFD5555560000000
  %9531 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9529, float %9530)  ; FMad(a,b,c)
  %9532 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9525, float 0.000000e+00)  ; FMad(a,b,c)
  %9533 = fadd fast float %9532, %9527
  %9534 = fmul fast float %9528, -7.500000e-01
  %9535 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9529, float %9534)  ; FMad(a,b,c)
  %9536 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9525, float 0.000000e+00)  ; FMad(a,b,c)
  %9537 = fadd fast float %9536, %9527
  %9538 = call float @dx.op.binary.f32(i32 35, float %9531, float -1.000000e+00)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 35, float %9533, float -1.000000e+00)  ; FMax(a,b)
  %9540 = call float @dx.op.binary.f32(i32 35, float %9535, float -1.000000e+00)  ; FMax(a,b)
  %9541 = call float @dx.op.binary.f32(i32 35, float %9537, float -1.000000e+00)  ; FMax(a,b)
  %9542 = call float @dx.op.binary.f32(i32 36, float %9538, float 1.000000e+00)  ; FMin(a,b)
  %9543 = call float @dx.op.binary.f32(i32 36, float %9539, float 1.000000e+00)  ; FMin(a,b)
  %9544 = call float @dx.op.binary.f32(i32 36, float %9540, float 1.000000e+00)  ; FMin(a,b)
  %9545 = call float @dx.op.binary.f32(i32 36, float %9541, float 1.000000e+00)  ; FMin(a,b)
  %9546 = fcmp fast olt float %9542, 0x3FEFFF8020000000
  br i1 %9546, label %9547, label %9662, !dx.controlflow.hints !172

; <label>:9547                                    ; preds = %9514
  %9548 = extractvalue %dx.types.CBufRet.f32 %9432, 3
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 0
  %9551 = extractvalue %dx.types.CBufRet.f32 %9549, 1
  %9552 = extractvalue %dx.types.CBufRet.f32 %9549, 2
  %9553 = extractvalue %dx.types.CBufRet.f32 %9549, 3
  %9554 = fsub fast float %9550, %9542
  %9555 = fsub fast float %9551, %9543
  %9556 = fsub fast float %9552, %9544
  %9557 = fsub fast float %9553, %9545
  %9558 = fmul fast float %9554, %9548
  %9559 = fmul fast float %9555, %9548
  %9560 = fmul fast float %9556, %9548
  %9561 = fmul fast float %9557, %9548
  %9562 = fadd fast float %9558, %9542
  %9563 = fadd fast float %9559, %9543
  %9564 = fsub fast float -0.000000e+00, %9563
  %9565 = fadd fast float %9560, %9544
  %9566 = fadd fast float %9561, %9545
  %9567 = fmul fast float %9562, %9562
  %9568 = fsub fast float %9563, %9567
  %9569 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9568)  ; FMax(a,b)
  %9570 = fdiv fast float 1.000000e+00, %9569
  %9571 = fmul fast float %9563, %9562
  %9572 = fsub fast float %9565, %9571
  %9573 = fsub fast float %9522, %9562
  %9574 = fmul fast float %9522, %9522
  %9575 = fsub fast float %9574, %9563
  %9576 = fmul fast float %9573, %9570
  %9577 = fmul fast float %9576, %9572
  %9578 = fsub fast float %9575, %9577
  %9579 = fmul fast float %9563, %9563
  %9580 = fsub fast float %9566, %9579
  %9581 = fmul fast float %9572, %9572
  %9582 = fmul fast float %9581, %9570
  %9583 = fsub fast float %9580, %9582
  %9584 = fdiv fast float %9578, %9583
  %9585 = fmul fast float %9572, %9584
  %9586 = fsub fast float %9573, %9585
  %9587 = fmul fast float %9586, %9570
  %9588 = fmul fast float %9587, %9562
  %9589 = fsub fast float 1.000000e+00, %9588
  %9590 = fmul fast float %9563, %9584
  %9591 = fsub fast float %9589, %9590
  %9592 = fmul fast float %9587, %9587
  %9593 = fmul fast float %9584, 4.000000e+00
  %9594 = fmul fast float %9593, %9591
  %9595 = fsub fast float %9592, %9594
  %9596 = call float @dx.op.unary.f32(i32 24, float %9595)  ; Sqrt(value)
  %9597 = fcmp fast oge float %9587, 0.000000e+00
  %9598 = fsub fast float -0.000000e+00, %9596
  %9599 = select i1 %9597, float %9598, float %9596
  %9600 = fsub fast float %9599, %9587
  %9601 = fdiv fast float %9600, %9584
  %9602 = fdiv fast float %9591, %9600
  %9603 = fmul fast float %9601, 5.000000e-01
  %9604 = fmul fast float %9602, 2.000000e+00
  %9605 = select i1 %9597, float %9603, float %9604
  %9606 = select i1 %9597, float %9604, float %9603
  %9607 = call float @dx.op.binary.f32(i32 35, float %9605, float %9606)  ; FMax(a,b)
  %9608 = call float @dx.op.binary.f32(i32 36, float %9605, float %9606)  ; FMin(a,b)
  %9609 = fcmp fast ogt float %9522, %9608
  br i1 %9609, label %9610, label %9620

; <label>:9610                                    ; preds = %9547
  %9611 = fsub fast float %9522, %9608
  %9612 = fsub fast float %9607, %9608
  %9613 = fmul fast float %9611, %9612
  %9614 = fmul fast float %9607, %9522
  %9615 = fadd fast float %9607, %9522
  %9616 = fmul fast float %9615, %9562
  %9617 = fadd fast float %9614, %9563
  %9618 = fsub fast float %9617, %9616
  %9619 = fdiv fast float %9618, %9613
  br label %9620

; <label>:9620                                    ; preds = %9610, %9547
  %9621 = phi float [ %9619, %9610 ], [ 0.000000e+00, %9547 ]
  %9622 = fcmp fast ogt float %9522, %9607
  %9623 = fsub fast float %9522, %9607
  br i1 %9622, label %9624, label %9634

; <label>:9624                                    ; preds = %9620
  %9625 = fsub fast float %9607, %9608
  %9626 = fmul fast float %9625, %9623
  %9627 = fmul fast float %9608, %9522
  %9628 = fadd fast float %9608, %9522
  %9629 = fmul fast float %9628, %9562
  %9630 = fsub fast float %9564, %9627
  %9631 = fadd fast float %9630, %9629
  %9632 = fdiv fast float %9631, %9626
  %9633 = fadd fast float %9632, %9621
  br label %9634

; <label>:9634                                    ; preds = %9624, %9620
  %9635 = phi float [ %9633, %9624 ], [ %9621, %9620 ]
  %9636 = fsub fast float %9522, %9608
  %9637 = fmul fast float %9636, %9623
  %9638 = fmul fast float %9608, %9607
  %9639 = fadd fast float %9608, %9607
  %9640 = fmul fast float %9639, %9562
  %9641 = fadd fast float %9638, %9563
  %9642 = fsub fast float %9641, %9640
  %9643 = fdiv fast float %9642, %9637
  %9644 = call float @dx.op.unary.f32(i32 7, float %9635)  ; Saturate(value)
  %9645 = fcmp fast oeq float %8329, 0.000000e+00
  %9646 = extractvalue %dx.types.CBufRet.f32 %9432, 0
  %9647 = fcmp fast oeq float %9646, 0.000000e+00
  %9648 = or i1 %9645, %9647
  %9649 = fmul fast float %9646, 2.000000e+00
  %9650 = fadd fast float %9433, %9434
  %9651 = fdiv fast float %9650, %9649
  %9652 = call float @dx.op.unary.f32(i32 7, float %9651)  ; Saturate(value)
  %9653 = fmul fast float %9652, 2.000000e+00
  %9654 = fsub fast float 3.000000e+00, %9653
  %9655 = fmul fast float %9652, %9652
  %9656 = fmul fast float %9655, %9654
  %9657 = select i1 %9648, float 1.000000e+00, float %9656
  %9658 = fmul fast float %9643, %8329
  %9659 = fadd fast float %9644, %9658
  %9660 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9661 = fmul fast float %9657, %9660
  br label %9662

; <label>:9662                                    ; preds = %9634, %9514
  %9663 = phi float [ %9661, %9634 ], [ 0.000000e+00, %9514 ]
  %9664 = fsub fast float 1.000000e+00, %9663
  %9665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9386, float %9387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9666 = extractvalue %dx.types.ResRet.f32 %9665, 0
  %9667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.i32 %9667, 2
  %9669 = icmp eq i32 %9668, 0
  br i1 %9669, label %9675, label %9670

; <label>:9670                                    ; preds = %9662
  %9671 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9672 = fadd fast float %9666, -1.000000e+00
  %9673 = fmul fast float %9671, %9672
  %9674 = fadd fast float %9673, 1.000000e+00
  br label %9675

; <label>:9675                                    ; preds = %9670, %9662
  %9676 = phi float [ %9674, %9670 ], [ %9664, %9662 ]
  br i1 %9440, label %9677, label %9695

; <label>:9677                                    ; preds = %9675
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 1
  %9680 = fsub fast float %9515, %9679
  %9681 = call float @dx.op.unary.f32(i32 7, float %9680)  ; Saturate(value)
  %9682 = fsub fast float %9515, %9439
  %9683 = call float @dx.op.unary.f32(i32 7, float %9682)  ; Saturate(value)
  %9684 = fsub fast float %9681, %9683
  %9685 = fsub fast float %9517, %9683
  %9686 = fdiv fast float %9685, %9684
  %9687 = call float @dx.op.unary.f32(i32 7, float %9686)  ; Saturate(value)
  %9688 = fmul fast float %9687, 2.000000e+00
  %9689 = fsub fast float 3.000000e+00, %9688
  %9690 = fsub fast float %9666, %9676
  %9691 = fmul fast float %9687, %9687
  %9692 = fmul fast float %9691, %9690
  %9693 = fmul fast float %9692, %9689
  %9694 = fadd fast float %9693, %9676
  br label %9695

; <label>:9695                                    ; preds = %9677, %9675
  %9696 = phi float [ %9694, %9677 ], [ %9676, %9675 ]
  %9697 = call float @dx.op.binary.f32(i32 35, float %9666, float %9696)  ; FMax(a,b)
  %9698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.i32 %9698, 2
  %9700 = and i32 %9699, 1
  %9701 = icmp eq i32 %9700, 0
  %9702 = fcmp fast une float %9697, 1.000000e+00
  %9703 = and i1 %9702, %9701
  br i1 %9703, label %9704, label %9721

; <label>:9704                                    ; preds = %9695
  %9705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9386, float %9387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9706 = extractvalue %dx.types.ResRet.f32 %9705, 0
  %9707 = extractvalue %dx.types.ResRet.f32 %9705, 1
  %9708 = extractvalue %dx.types.ResRet.f32 %9705, 2
  %9709 = fmul fast float %6301, %9706
  %9710 = fmul fast float %6301, %9707
  %9711 = fmul fast float %6301, %9708
  %9712 = fcmp fast ogt float %9666, 0x3FEFFF2E40000000
  %9713 = fsub fast float 1.000000e+00, %9697
  %9714 = fsub fast float 1.000000e+00, %9666
  %9715 = fdiv fast float %9713, %9714
  %9716 = call float @dx.op.unary.f32(i32 7, float %9715)  ; Saturate(value)
  %9717 = select i1 %9712, float 0.000000e+00, float %9716
  %9718 = fmul fast float %9709, %9717
  %9719 = fmul fast float %9710, %9717
  %9720 = fmul fast float %9711, %9717
  br label %9721

; <label>:9721                                    ; preds = %9704, %9695
  %9722 = phi float [ 0.000000e+00, %9695 ], [ %9718, %9704 ]
  %9723 = phi float [ 0.000000e+00, %9695 ], [ %9719, %9704 ]
  %9724 = phi float [ 0.000000e+00, %9695 ], [ %9720, %9704 ]
  %9725 = fmul fast float %9697, %9364
  %9726 = call float @dx.op.dot3.f32(i32 55, float %9697, float %9697, float %9697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9727 = call float @dx.op.dot3.f32(i32 55, float %9722, float %9723, float %9724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9728 = select i1 %219, float %9726, float %9697
  %9729 = select i1 %219, float 1.000000e+00, float %9697
  %9730 = select i1 %219, float %9727, float %9722
  %9731 = select i1 %219, float 0.000000e+00, float %9723
  %9732 = select i1 %219, float 0.000000e+00, float %9724
  %9733 = fmul fast float %9728, %9376
  %9734 = fmul fast float %9728, %9377
  %9735 = fmul fast float %9729, %9378
  %9736 = fadd fast float %9733, %9730
  %9737 = fadd fast float %9734, %9731
  %9738 = fadd fast float %9732, %9735
  %9739 = fmul fast float %9728, %9379
  %9740 = fmul fast float %9728, %9380
  %9741 = fmul fast float %9729, %9381
  br label %9742

; <label>:9742                                    ; preds = %9721, %9385, %9357, %8589
  %9743 = phi float [ %8594, %8589 ], [ %9376, %9357 ], [ %9736, %9721 ], [ %9376, %9385 ]
  %9744 = phi float [ %8595, %8589 ], [ %9377, %9357 ], [ %9737, %9721 ], [ %9377, %9385 ]
  %9745 = phi float [ %8596, %8589 ], [ %9378, %9357 ], [ %9738, %9721 ], [ %9378, %9385 ]
  %9746 = phi float [ %8597, %8589 ], [ %9379, %9357 ], [ %9739, %9721 ], [ %9379, %9385 ]
  %9747 = phi float [ %8598, %8589 ], [ %9380, %9357 ], [ %9740, %9721 ], [ %9380, %9385 ]
  %9748 = phi float [ %8599, %8589 ], [ %9381, %9357 ], [ %9741, %9721 ], [ %9381, %9385 ]
  %9749 = phi float [ %8600, %8589 ], [ %9364, %9357 ], [ %9725, %9721 ], [ %9364, %9385 ]
  %9750 = fmul fast float %6246, %102
  %9751 = fmul fast float %6247, %103
  %9752 = call float @dx.op.unary.f32(i32 7, float %9750)  ; Saturate(value)
  %9753 = call float @dx.op.unary.f32(i32 7, float %9751)  ; Saturate(value)
  %9754 = select i1 %8339, i32 2, i32 0
  %9755 = or i32 %9754, 1
  %9756 = uitofp i32 %9755 to float
  %9757 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9752, float %9753, float %9756, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9758 = extractvalue %dx.types.ResRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.ResRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.ResRet.f32 %9757, 2
  %9761 = extractvalue %dx.types.ResRet.f32 %9757, 3
  %9762 = add nuw nsw i32 %9754, 2
  %9763 = uitofp i32 %9762 to float
  %9764 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9752, float %9753, float %9763, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9765 = extractvalue %dx.types.ResRet.f32 %9764, 0
  %9766 = extractvalue %dx.types.ResRet.f32 %9764, 1
  %9767 = extractvalue %dx.types.ResRet.f32 %9764, 2
  %9768 = extractvalue %dx.types.ResRet.f32 %9764, 3
  %9769 = call float @dx.op.binary.f32(i32 35, float %9759, float %9760)  ; FMax(a,b)
  %9770 = call float @dx.op.binary.f32(i32 35, float %9758, float %9769)  ; FMax(a,b)
  %9771 = call float @dx.op.binary.f32(i32 35, float %9770, float %9761)  ; FMax(a,b)
  %9772 = call float @dx.op.binary.f32(i32 36, float %9766, float %9767)  ; FMin(a,b)
  %9773 = call float @dx.op.binary.f32(i32 36, float %9765, float %9772)  ; FMin(a,b)
  %9774 = call float @dx.op.binary.f32(i32 36, float %9773, float %9768)  ; FMin(a,b)
  %9775 = fmul fast float %9771, 2.550000e+02
  %9776 = fadd fast float %9775, 0x3F70101020000000
  %9777 = fptoui float %9776 to i32
  %9778 = fmul fast float %9774, 2.550000e+02
  %9779 = fadd fast float %9778, 0x3F70101020000000
  %9780 = fptoui float %9779 to i32
  %9781 = icmp ult i32 %9777, %9780
  br i1 %9781, label %9782, label %9949

; <label>:9782                                    ; preds = %9742
  %9783 = fcmp fast ogt float %92, 9.843750e-01
  %9784 = fadd fast float %8593, -4.000000e+00
  %9785 = select i1 %9783, float -4.000000e+00, float %9784
  %9786 = call float @dx.op.binary.f32(i32 35, float %9785, float 0.000000e+00)  ; FMax(a,b)
  %9787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9788 = extractvalue %dx.types.CBufRet.f32 %9787, 0
  %9789 = fadd fast float %9788, %9786
  %9790 = extractvalue %dx.types.CBufRet.f32 %9787, 2
  %9791 = fmul fast float %9789, %9790
  %9792 = call float @dx.op.unary.f32(i32 23, float %9791)  ; Log(value)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9787, 3
  %9794 = fmul fast float %9793, %9792
  %9795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9796 = extractvalue %dx.types.CBufRet.f32 %9795, 2
  %9797 = fmul fast float %9794, %9796
  %9798 = call float @dx.op.unary.f32(i32 7, float %9797)  ; Saturate(value)
  %9799 = uitofp i32 %9777 to float
  %9800 = uitofp i32 %9780 to float
  %9801 = fadd fast float %9799, 5.000000e-01
  %9802 = fadd fast float %9800, 5.000000e-01
  %9803 = fmul fast float %9796, %9801
  %9804 = fmul fast float %9796, %9802
  %9805 = fadd fast float %9803, 0x3F0FFB4800000000
  %9806 = fadd fast float %9804, 0xBF0FFB4800000000
  %9807 = call float @dx.op.binary.f32(i32 35, float %9798, float %9805)  ; FMax(a,b)
  %9808 = call float @dx.op.binary.f32(i32 36, float %9807, float %9806)  ; FMin(a,b)
  %9809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9810 = extractvalue %dx.types.CBufRet.f32 %9809, 1
  %9811 = extractvalue %dx.types.CBufRet.f32 %9809, 2
  %9812 = extractvalue %dx.types.CBufRet.f32 %9809, 0
  %9813 = select i1 %8339, float %9812, float 0.000000e+00
  %9814 = fmul fast float %9810, %9808
  %9815 = fadd fast float %9813, %9814
  %9816 = fadd fast float %9813, %9811
  %9817 = fsub fast float %9810, %9811
  %9818 = fadd fast float %9817, %9813
  %9819 = call float @dx.op.binary.f32(i32 35, float %9815, float %9816)  ; FMax(a,b)
  %9820 = call float @dx.op.binary.f32(i32 36, float %9819, float %9818)  ; FMin(a,b)
  %9821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9752, float %9753, float %9820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9822 = extractvalue %dx.types.ResRet.f32 %9821, 0
  %9823 = extractvalue %dx.types.ResRet.f32 %9821, 1
  %9824 = extractvalue %dx.types.ResRet.f32 %9821, 2
  %9825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9826 = extractvalue %dx.types.CBufRet.i32 %9825, 0
  %9827 = extractvalue %dx.types.CBufRet.i32 %9825, 1
  %9828 = uitofp i32 %9826 to float
  %9829 = uitofp i32 %9827 to float
  %9830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9831 = extractvalue %dx.types.CBufRet.f32 %9830, 0
  %9832 = extractvalue %dx.types.CBufRet.f32 %9830, 1
  %9833 = fmul fast float %9828, %9752
  %9834 = fmul fast float %9829, %9753
  %9835 = fadd fast float %9833, -5.000000e-01
  %9836 = fadd fast float %9834, -5.000000e-01
  %9837 = call float @dx.op.unary.f32(i32 22, float %9835)  ; Frc(value)
  %9838 = call float @dx.op.unary.f32(i32 22, float %9836)  ; Frc(value)
  %9839 = fmul fast float %9837, %9837
  %9840 = fmul fast float %9839, %9837
  %9841 = fsub fast float 3.000000e+00, %9837
  %9842 = fmul fast float %9839, %9841
  %9843 = fmul fast float %9837, 3.000000e+00
  %9844 = fmul fast float %9840, 3.000000e+00
  %9845 = fmul fast float %9839, 6.000000e+00
  %9846 = fsub fast float %9844, %9845
  %9847 = fadd fast float %9846, 4.000000e+00
  %9848 = fmul fast float %9847, 0x3FC5555560000000
  %9849 = fmul fast float %9840, -3.000000e+00
  %9850 = fadd fast float %9839, %9837
  %9851 = fmul fast float %9850, 3.000000e+00
  %9852 = fadd fast float %9849, 1.000000e+00
  %9853 = fadd fast float %9852, %9851
  %9854 = fmul fast float %9840, 0x3FC5555560000000
  %9855 = fmul fast float %9838, %9838
  %9856 = fmul fast float %9855, %9838
  %9857 = fsub fast float 3.000000e+00, %9838
  %9858 = fmul fast float %9855, %9857
  %9859 = fmul fast float %9838, 3.000000e+00
  %9860 = fmul fast float %9856, 3.000000e+00
  %9861 = fmul fast float %9855, 6.000000e+00
  %9862 = fsub fast float %9860, %9861
  %9863 = fadd fast float %9862, 4.000000e+00
  %9864 = fmul fast float %9863, 0x3FC5555560000000
  %9865 = fmul fast float %9856, -3.000000e+00
  %9866 = fadd fast float %9855, %9838
  %9867 = fmul fast float %9866, 3.000000e+00
  %9868 = fadd fast float %9865, 1.000000e+00
  %9869 = fadd fast float %9868, %9867
  %9870 = fmul fast float %9856, 0x3FC5555560000000
  %9871 = fadd fast float %9837, 1.000000e+00
  %9872 = fsub fast float 1.000000e+00, %9843
  %9873 = fadd fast float %9872, %9842
  %9874 = fadd fast float %9873, %9847
  %9875 = fmul fast float %9874, 0x3FC5555560000000
  %9876 = fdiv fast float %9848, %9875
  %9877 = fsub fast float %9871, %9876
  %9878 = fsub fast float 1.000000e+00, %9837
  %9879 = fadd fast float %9853, %9840
  %9880 = fmul fast float %9879, 0x3FC5555560000000
  %9881 = fdiv fast float %9854, %9880
  %9882 = fadd fast float %9878, %9881
  %9883 = fadd fast float %9838, 1.000000e+00
  %9884 = fsub fast float 1.000000e+00, %9859
  %9885 = fadd fast float %9884, %9858
  %9886 = fadd fast float %9885, %9863
  %9887 = fmul fast float %9886, 0x3FC5555560000000
  %9888 = fdiv fast float %9864, %9887
  %9889 = fsub fast float %9883, %9888
  %9890 = fsub fast float 1.000000e+00, %9838
  %9891 = fadd fast float %9869, %9856
  %9892 = fmul fast float %9891, 0x3FC5555560000000
  %9893 = fdiv fast float %9870, %9892
  %9894 = fadd fast float %9893, %9890
  %9895 = fmul fast float %9877, %9831
  %9896 = fsub fast float %9752, %9895
  %9897 = fmul fast float %9882, %9831
  %9898 = fadd fast float %9897, %9752
  %9899 = fmul fast float %9894, %9832
  %9900 = fadd fast float %9899, %9753
  %9901 = fmul fast float %9889, %9832
  %9902 = fsub fast float %9753, %9901
  %9903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9896, float %9902, float %9820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9904 = extractvalue %dx.types.ResRet.f32 %9903, 0
  %9905 = extractvalue %dx.types.ResRet.f32 %9903, 1
  %9906 = extractvalue %dx.types.ResRet.f32 %9903, 2
  %9907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9898, float %9902, float %9820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9908 = extractvalue %dx.types.ResRet.f32 %9907, 0
  %9909 = extractvalue %dx.types.ResRet.f32 %9907, 1
  %9910 = extractvalue %dx.types.ResRet.f32 %9907, 2
  %9911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9896, float %9900, float %9820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9912 = extractvalue %dx.types.ResRet.f32 %9911, 0
  %9913 = extractvalue %dx.types.ResRet.f32 %9911, 1
  %9914 = extractvalue %dx.types.ResRet.f32 %9911, 2
  %9915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9898, float %9900, float %9820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9916 = extractvalue %dx.types.ResRet.f32 %9915, 0
  %9917 = extractvalue %dx.types.ResRet.f32 %9915, 1
  %9918 = extractvalue %dx.types.ResRet.f32 %9915, 2
  %9919 = fsub fast float %9912, %9904
  %9920 = fsub fast float %9913, %9905
  %9921 = fsub fast float %9914, %9906
  %9922 = fmul fast float %9919, %9892
  %9923 = fmul fast float %9920, %9892
  %9924 = fmul fast float %9921, %9892
  %9925 = fadd fast float %9922, %9904
  %9926 = fadd fast float %9923, %9905
  %9927 = fadd fast float %9924, %9906
  %9928 = fsub fast float %9916, %9908
  %9929 = fsub fast float %9917, %9909
  %9930 = fsub fast float %9918, %9910
  %9931 = fmul fast float %9928, %9892
  %9932 = fmul fast float %9929, %9892
  %9933 = fmul fast float %9930, %9892
  %9934 = fsub fast float %9908, %9925
  %9935 = fadd fast float %9934, %9931
  %9936 = fsub fast float %9909, %9926
  %9937 = fadd fast float %9936, %9932
  %9938 = fsub fast float %9910, %9927
  %9939 = fadd fast float %9938, %9933
  %9940 = fmul fast float %9935, %9880
  %9941 = fmul fast float %9937, %9880
  %9942 = fmul fast float %9939, %9880
  %9943 = fadd fast float %9940, %9925
  %9944 = fadd fast float %9941, %9926
  %9945 = fadd fast float %9942, %9927
  %9946 = fmul fast float %9943, %6301
  %9947 = fmul fast float %9944, %6301
  %9948 = fmul fast float %9945, %6301
  br label %9949

; <label>:9949                                    ; preds = %9782, %9742
  %9950 = phi float [ %9822, %9782 ], [ 1.000000e+00, %9742 ]
  %9951 = phi float [ %9823, %9782 ], [ 1.000000e+00, %9742 ]
  %9952 = phi float [ %9824, %9782 ], [ 1.000000e+00, %9742 ]
  %9953 = phi float [ %9946, %9782 ], [ 0.000000e+00, %9742 ]
  %9954 = phi float [ %9947, %9782 ], [ 0.000000e+00, %9742 ]
  %9955 = phi float [ %9948, %9782 ], [ 0.000000e+00, %9742 ]
  %9956 = fmul fast float %9950, %9749
  %9957 = call float @dx.op.dot3.f32(i32 55, float %9950, float %9951, float %9952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9958 = call float @dx.op.dot3.f32(i32 55, float %9953, float %9954, float %9955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9959 = select i1 %219, float %9957, float %9950
  %9960 = select i1 %219, float %9957, float %9951
  %9961 = select i1 %219, float 1.000000e+00, float %9952
  %9962 = select i1 %219, float %9958, float %9953
  %9963 = select i1 %219, float 0.000000e+00, float %9954
  %9964 = select i1 %219, float 0.000000e+00, float %9955
  %9965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9966 = extractvalue %dx.types.CBufRet.i32 %9965, 3
  %9967 = and i32 %9966, 3
  %9968 = icmp ne i32 %9967, 0
  %9969 = and i32 %9966, 4
  %9970 = icmp ne i32 %9969, 0
  %9971 = and i1 %9968, %9970
  %9972 = and i1 %219, %9971
  br i1 %9972, label %9973, label %9979

; <label>:9973                                    ; preds = %9949
  %9974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9975 = extractvalue %dx.types.CBufRet.f32 %9974, 1
  %9976 = fadd fast float %9956, -1.000000e+00
  %9977 = fmul fast float %9975, %9976
  %9978 = fadd fast float %9977, 1.000000e+00
  br label %9979

; <label>:9979                                    ; preds = %9973, %9949
  %9980 = phi float [ %9978, %9973 ], [ %9956, %9949 ]
  %9981 = fadd fast float %9746, %9743
  %9982 = fmul fast float %9959, %9981
  %9983 = fadd fast float %9982, %9962
  %9984 = fadd fast float %9747, %9744
  %9985 = fmul fast float %9960, %9984
  %9986 = fadd fast float %9985, %9963
  %9987 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  br i1 %219, label %9988, label %10003

; <label>:9988                                    ; preds = %9979
  %9989 = fadd fast float %9983, %9986
  %9990 = fmul fast float %9987, %9989
  %9991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.f32 %9991, 3
  %9993 = extractvalue %dx.types.CBufRet.f32 %8321, 1
  %9994 = fsub fast float %8326, %8320
  %9995 = fadd fast float %9994, %8327
  %9996 = fsub fast float %9995, %9993
  %9997 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %9998 = fmul fast float %9996, %9997
  %9999 = call float @dx.op.unary.f32(i32 7, float %9998)  ; Saturate(value)
  %10000 = fsub fast float %9999, %9992
  %10001 = fmul fast float %10000, %9980
  %10002 = fadd fast float %10001, %9992
  br label %10027

; <label>:10003                                   ; preds = %9979
  %10004 = fadd fast float %9748, %9745
  %10005 = fmul fast float %9961, %10004
  %10006 = fadd fast float %10005, %9964
  %10007 = fmul fast float %9987, %9983
  %10008 = fmul fast float %9987, %9986
  %10009 = fmul fast float %9987, %10006
  %10010 = call float @dx.op.binary.f32(i32 35, float %10008, float %10009)  ; FMax(a,b)
  %10011 = call float @dx.op.binary.f32(i32 35, float %10007, float %10010)  ; FMax(a,b)
  %10012 = call float @dx.op.binary.f32(i32 35, float %10011, float 1.000000e+00)  ; FMax(a,b)
  %10013 = fcmp fast ugt float %10012, 0x3F10000000000000
  br i1 %10013, label %10015, label %10014

; <label>:10014                                   ; preds = %10003
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10015

; <label>:10015                                   ; preds = %10014, %10003
  %10016 = add i32 %56, 356
  %10017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %10016, i32 undef)  ; BufferLoad(srv,index,wot)
  %10018 = extractvalue %dx.types.ResRet.i32 %10017, 0
  %10019 = and i32 %10018, 32
  %10020 = icmp eq i32 %10019, 0
  br i1 %10020, label %10027, label %10021

; <label>:10021                                   ; preds = %10015
  %10022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.f32 %10022, 0
  %10024 = fmul fast float %10023, 0x3FE99999A0000000
  %10025 = fadd fast float %10023, %10007
  %10026 = fadd fast float %10024, %10009
  br label %10027

; <label>:10027                                   ; preds = %10021, %10015, %9988
  %10028 = phi float [ %9990, %9988 ], [ %10025, %10021 ], [ %10007, %10015 ]
  %10029 = phi float [ %10002, %9988 ], [ %10008, %10021 ], [ %10008, %10015 ]
  %10030 = phi float [ 1.000000e+00, %9988 ], [ %10026, %10021 ], [ %10009, %10015 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10031 = call float @dx.op.binary.f32(i32 36, float %10028, float 3.225500e+04)  ; FMin(a,b)
  %10032 = call float @dx.op.binary.f32(i32 36, float %10029, float 3.225500e+04)  ; FMin(a,b)
  %10033 = call float @dx.op.binary.f32(i32 36, float %10030, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10031)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10032)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10033)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!70 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !93}
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
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
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

