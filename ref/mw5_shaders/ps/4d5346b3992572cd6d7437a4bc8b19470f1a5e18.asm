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
; shader hash: fd6afa4e78214cd51c79532678f327d6
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
  %416 = add i32 %56, 504
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
  %791 = add i32 %56, 456
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
  %1131 = add i32 %56, 472
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
  %1172 = add i32 %56, 488
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
  %1236 = phi float [ 0.000000e+00, %458 ], [ %1106, %1215 ]
  %1237 = phi float [ 0.000000e+00, %458 ], [ %1107, %1215 ]
  %1238 = phi float [ 0.000000e+00, %458 ], [ %1108, %1215 ]
  %1239 = phi float [ 0.000000e+00, %458 ], [ %978, %1215 ]
  %1240 = phi float [ 0.000000e+00, %458 ], [ %979, %1215 ]
  %1241 = phi float [ 0.000000e+00, %458 ], [ %980, %1215 ]
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
  %1584 = add i32 %56, 460
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
  %1924 = add i32 %56, 476
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
  %1965 = add i32 %56, 492
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
  %2055 = fmul fast float %2052, %1239
  %2056 = fmul fast float %2053, %1240
  %2057 = fmul fast float %2054, %1241
  %2058 = fmul fast float %2052, %1236
  %2059 = fmul fast float %2053, %1237
  %2060 = fmul fast float %2054, %1238
  br label %2061

; <label>:2061                                    ; preds = %2026, %2008
  %2062 = phi float [ %2058, %2026 ], [ %1236, %2008 ]
  %2063 = phi float [ %2059, %2026 ], [ %1237, %2008 ]
  %2064 = phi float [ %2060, %2026 ], [ %1238, %2008 ]
  %2065 = phi float [ %2055, %2026 ], [ %1239, %2008 ]
  %2066 = phi float [ %2056, %2026 ], [ %1240, %2008 ]
  %2067 = phi float [ %2057, %2026 ], [ %1241, %2008 ]
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
  %2081 = fsub fast float %1771, %2065
  %2082 = fsub fast float %1772, %2066
  %2083 = fsub fast float %1773, %2067
  %2084 = fmul fast float %2075, %2081
  %2085 = fmul fast float %2075, %2082
  %2086 = fmul fast float %2075, %2083
  %2087 = fadd fast float %2084, %2065
  %2088 = fadd fast float %2085, %2066
  %2089 = fadd fast float %2086, %2067
  %2090 = fsub fast float %1757, %1248
  %2091 = fmul fast float %2075, %2090
  %2092 = fadd fast float %2091, %1248
  %2093 = fsub fast float %1899, %2062
  %2094 = fsub fast float %1900, %2063
  %2095 = fsub fast float %1901, %2064
  %2096 = fmul fast float %2080, %2093
  %2097 = fmul fast float %2080, %2094
  %2098 = fmul fast float %2080, %2095
  %2099 = fadd fast float %2096, %2062
  %2100 = fadd fast float %2097, %2063
  %2101 = fadd fast float %2098, %2064
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
  %2117 = fmul fast float %2114, %2065
  %2118 = fmul fast float %2115, %2066
  %2119 = fmul fast float %2116, %2067
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
  %2137 = fmul fast float %2136, %2065
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2065
  %2140 = fmul fast float %2133, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2066
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2066
  %2145 = fmul fast float %2134, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2067
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2067
  br label %2150

; <label>:2150                                    ; preds = %2122, %2120, %2107, %2077, %2061
  %2151 = phi float [ %2062, %2061 ], [ %2062, %2122 ], [ %2062, %2120 ], [ %2062, %2107 ], [ %2099, %2077 ]
  %2152 = phi float [ %2063, %2061 ], [ %2063, %2122 ], [ %2063, %2120 ], [ %2063, %2107 ], [ %2100, %2077 ]
  %2153 = phi float [ %2064, %2061 ], [ %2064, %2122 ], [ %2064, %2120 ], [ %2064, %2107 ], [ %2101, %2077 ]
  %2154 = phi float [ %2065, %2061 ], [ %2139, %2122 ], [ %2065, %2120 ], [ %2117, %2107 ], [ %2087, %2077 ]
  %2155 = phi float [ %2066, %2061 ], [ %2144, %2122 ], [ %2066, %2120 ], [ %2118, %2107 ], [ %2088, %2077 ]
  %2156 = phi float [ %2067, %2061 ], [ %2149, %2122 ], [ %2067, %2120 ], [ %2119, %2107 ], [ %2089, %2077 ]
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
  %2641 = add i32 %56, 464
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
  %2981 = add i32 %56, 480
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
  %3022 = add i32 %56, 496
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
  %3112 = fmul fast float %3109, %2297
  %3113 = fmul fast float %3110, %2298
  %3114 = fmul fast float %3111, %2299
  %3115 = fmul fast float %3109, %2294
  %3116 = fmul fast float %3110, %2295
  %3117 = fmul fast float %3111, %2296
  br label %3118

; <label>:3118                                    ; preds = %3083, %3065
  %3119 = phi float [ %3115, %3083 ], [ %2294, %3065 ]
  %3120 = phi float [ %3116, %3083 ], [ %2295, %3065 ]
  %3121 = phi float [ %3117, %3083 ], [ %2296, %3065 ]
  %3122 = phi float [ %3112, %3083 ], [ %2297, %3065 ]
  %3123 = phi float [ %3113, %3083 ], [ %2298, %3065 ]
  %3124 = phi float [ %3114, %3083 ], [ %2299, %3065 ]
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
  %3138 = fsub fast float %2828, %3122
  %3139 = fsub fast float %2829, %3123
  %3140 = fsub fast float %2830, %3124
  %3141 = fmul fast float %3132, %3138
  %3142 = fmul fast float %3132, %3139
  %3143 = fmul fast float %3132, %3140
  %3144 = fadd fast float %3141, %3122
  %3145 = fadd fast float %3142, %3123
  %3146 = fadd fast float %3143, %3124
  %3147 = fsub fast float %2814, %2306
  %3148 = fmul fast float %3132, %3147
  %3149 = fadd fast float %3148, %2306
  %3150 = fsub fast float %2956, %3119
  %3151 = fsub fast float %2957, %3120
  %3152 = fsub fast float %2958, %3121
  %3153 = fmul fast float %3137, %3150
  %3154 = fmul fast float %3137, %3151
  %3155 = fmul fast float %3137, %3152
  %3156 = fadd fast float %3153, %3119
  %3157 = fadd fast float %3154, %3120
  %3158 = fadd fast float %3155, %3121
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
  %3174 = fmul fast float %3171, %3122
  %3175 = fmul fast float %3172, %3123
  %3176 = fmul fast float %3173, %3124
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
  %3194 = fmul fast float %3193, %3122
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3122
  %3197 = fmul fast float %3190, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3123
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3123
  %3202 = fmul fast float %3191, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3124
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3124
  br label %3207

; <label>:3207                                    ; preds = %3179, %3177, %3164, %3134, %3118
  %3208 = phi float [ %3119, %3118 ], [ %3119, %3179 ], [ %3119, %3177 ], [ %3119, %3164 ], [ %3156, %3134 ]
  %3209 = phi float [ %3120, %3118 ], [ %3120, %3179 ], [ %3120, %3177 ], [ %3120, %3164 ], [ %3157, %3134 ]
  %3210 = phi float [ %3121, %3118 ], [ %3121, %3179 ], [ %3121, %3177 ], [ %3121, %3164 ], [ %3158, %3134 ]
  %3211 = phi float [ %3122, %3118 ], [ %3196, %3179 ], [ %3122, %3177 ], [ %3174, %3164 ], [ %3144, %3134 ]
  %3212 = phi float [ %3123, %3118 ], [ %3201, %3179 ], [ %3123, %3177 ], [ %3175, %3164 ], [ %3145, %3134 ]
  %3213 = phi float [ %3124, %3118 ], [ %3206, %3179 ], [ %3124, %3177 ], [ %3176, %3164 ], [ %3146, %3134 ]
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
  %3698 = add i32 %56, 468
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
  %4038 = add i32 %56, 484
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
  %4079 = add i32 %56, 500
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
  %4169 = fmul fast float %4166, %3354
  %4170 = fmul fast float %4167, %3355
  %4171 = fmul fast float %4168, %3356
  %4172 = fmul fast float %4166, %3351
  %4173 = fmul fast float %4167, %3352
  %4174 = fmul fast float %4168, %3353
  br label %4175

; <label>:4175                                    ; preds = %4140, %4122
  %4176 = phi float [ %4172, %4140 ], [ %3351, %4122 ]
  %4177 = phi float [ %4173, %4140 ], [ %3352, %4122 ]
  %4178 = phi float [ %4174, %4140 ], [ %3353, %4122 ]
  %4179 = phi float [ %4169, %4140 ], [ %3354, %4122 ]
  %4180 = phi float [ %4170, %4140 ], [ %3355, %4122 ]
  %4181 = phi float [ %4171, %4140 ], [ %3356, %4122 ]
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
  %4195 = fsub fast float %3885, %4179
  %4196 = fsub fast float %3886, %4180
  %4197 = fsub fast float %3887, %4181
  %4198 = fmul fast float %4189, %4195
  %4199 = fmul fast float %4189, %4196
  %4200 = fmul fast float %4189, %4197
  %4201 = fadd fast float %4198, %4179
  %4202 = fadd fast float %4199, %4180
  %4203 = fadd fast float %4200, %4181
  %4204 = fsub fast float %3871, %3363
  %4205 = fmul fast float %4189, %4204
  %4206 = fadd fast float %4205, %3363
  %4207 = fsub fast float %4013, %4176
  %4208 = fsub fast float %4014, %4177
  %4209 = fsub fast float %4015, %4178
  %4210 = fmul fast float %4194, %4207
  %4211 = fmul fast float %4194, %4208
  %4212 = fmul fast float %4194, %4209
  %4213 = fadd fast float %4210, %4176
  %4214 = fadd fast float %4211, %4177
  %4215 = fadd fast float %4212, %4178
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
  %4231 = fmul fast float %4228, %4179
  %4232 = fmul fast float %4229, %4180
  %4233 = fmul fast float %4230, %4181
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
  %4251 = fmul fast float %4250, %4179
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4179
  %4254 = fmul fast float %4247, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4180
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4180
  %4259 = fmul fast float %4248, 2.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %4260, %4181
  %4262 = fadd fast float %4261, %4259
  %4263 = fmul fast float %4262, %4181
  br label %4264

; <label>:4264                                    ; preds = %4236, %4234, %4221, %4191, %4175
  %4265 = phi float [ %4176, %4175 ], [ %4176, %4236 ], [ %4176, %4234 ], [ %4176, %4221 ], [ %4213, %4191 ]
  %4266 = phi float [ %4177, %4175 ], [ %4177, %4236 ], [ %4177, %4234 ], [ %4177, %4221 ], [ %4214, %4191 ]
  %4267 = phi float [ %4178, %4175 ], [ %4178, %4236 ], [ %4178, %4234 ], [ %4178, %4221 ], [ %4215, %4191 ]
  %4268 = phi float [ %4179, %4175 ], [ %4253, %4236 ], [ %4179, %4234 ], [ %4231, %4221 ], [ %4201, %4191 ]
  %4269 = phi float [ %4180, %4175 ], [ %4258, %4236 ], [ %4180, %4234 ], [ %4232, %4221 ], [ %4202, %4191 ]
  %4270 = phi float [ %4181, %4175 ], [ %4263, %4236 ], [ %4181, %4234 ], [ %4233, %4221 ], [ %4203, %4191 ]
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
  %4428 = bitcast i32 %4427 to float
  %4429 = fcmp fast oge float %4428, 0.000000e+00
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = select i1 %4429, float %4428, float %4431
  %4433 = call float @dx.op.dot2.f32(i32 54, float %4406, float %4407, float %4406, float %4407)  ; Dot2(ax,ay,bx,by)
  %4434 = fmul fast float %4433, 0x3FE3333340000000
  %4435 = fsub fast float 1.000000e+00, %4434
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4406, float %4407, float %4435, float %4406, float %4407, float %4435)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 25, float %4436)  ; Rsqrt(value)
  %4438 = fmul fast float %4437, %4406
  %4439 = fmul fast float %4437, %4407
  %4440 = fmul fast float %4435, %4437
  %4441 = fmul fast float %4440, %109
  %4442 = fmul fast float %4440, %110
  %4443 = fmul fast float %4440, %111
  %4444 = fmul fast float %4438, %77
  %4445 = fmul fast float %4438, %78
  %4446 = fmul fast float %4438, %79
  %4447 = fadd fast float %4441, %4444
  %4448 = fadd fast float %4442, %4445
  %4449 = fadd fast float %4443, %4446
  %4450 = fmul fast float %121, %4439
  %4451 = fmul fast float %122, %4439
  %4452 = fmul fast float %123, %4439
  %4453 = fadd fast float %4447, %4450
  %4454 = fadd fast float %4448, %4451
  %4455 = fadd fast float %4449, %4452
  %4456 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float %4453, float %4454, float %4455)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = call float @dx.op.unary.f32(i32 25, float %4456)  ; Rsqrt(value)
  %4458 = fmul fast float %4453, %4457
  %4459 = fmul fast float %4454, %4457
  %4460 = fmul fast float %4455, %4457
  %4461 = and i32 %58, 1
  %4462 = icmp eq i32 %4461, 0
  br i1 %4462, label %4463, label %5055

; <label>:4463                                    ; preds = %4405
  %4464 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4468 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4469 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4470 = fadd fast float %4464, %157
  %4471 = fadd fast float %4465, %158
  %4472 = fadd fast float %4466, %159
  %4473 = fadd fast float %4467, %157
  %4474 = fadd fast float %4468, %158
  %4475 = fadd fast float %4469, %159
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4483 = fmul fast float %4477, %102
  %4484 = fmul fast float %4483, %4481
  %4485 = fmul fast float %4478, %103
  %4486 = fmul fast float %4485, %4482
  %4487 = fptoui float %4484 to i32
  %4488 = fptoui float %4486 to i32
  %4489 = fadd fast float %4477, -1.000000e+00
  %4490 = fadd fast float %4478, -1.000000e+00
  %4491 = fptoui float %4489 to i32
  %4492 = fptoui float %4490 to i32
  %4493 = call i32 @dx.op.binary.i32(i32 40, i32 %4487, i32 %4491)  ; UMin(a,b)
  %4494 = call i32 @dx.op.binary.i32(i32 40, i32 %4488, i32 %4492)  ; UMin(a,b)
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4497 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4498 = fmul fast float %4496, %93
  %4499 = fsub fast float %4498, %4497
  %4500 = fadd fast float %4479, -1.000000e+00
  %4501 = call float @dx.op.binary.f32(i32 36, float %4499, float %4500)  ; FMin(a,b)
  %4502 = fptoui float %4501 to i32
  %4503 = fptoui float %4477 to i32
  %4504 = fptoui float %4478 to i32
  %4505 = mul i32 %4502, %4504
  %4506 = add i32 %4505, %4494
  %4507 = mul i32 %4506, %4503
  %4508 = add i32 %4507, %4493
  %4509 = shl i32 %4508, 2
  %4510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.i32 %4510, 0
  %4512 = and i32 %4511, 1023
  %4513 = lshr i32 %4511, 10
  %4514 = icmp eq i32 %4512, 0
  br i1 %4514, label %5018, label %4515

; <label>:4515                                    ; preds = %4463
  %4516 = and i32 %4511, 1023
  br label %4517

; <label>:4517                                    ; preds = %4649, %4515
  %4518 = phi i32 [ %4599, %4649 ], [ 0, %4515 ]
  %4519 = phi float [ %4650, %4649 ], [ 0.000000e+00, %4515 ]
  %4520 = phi float [ %4651, %4649 ], [ %4432, %4515 ]
  %4521 = phi float [ %4652, %4649 ], [ %4424, %4515 ]
  %4522 = phi float [ %4653, %4649 ], [ %4414, %4515 ]
  %4523 = phi float [ %4654, %4649 ], [ %4415, %4515 ]
  %4524 = phi float [ %4655, %4649 ], [ %4416, %4515 ]
  %4525 = phi float [ %4656, %4649 ], [ 0.000000e+00, %4515 ]
  %4526 = phi float [ %4657, %4649 ], [ 0.000000e+00, %4515 ]
  %4527 = phi float [ %4658, %4649 ], [ %4417, %4515 ]
  %4528 = phi float [ %4659, %4649 ], [ %4418, %4515 ]
  %4529 = phi float [ %4660, %4649 ], [ %4419, %4515 ]
  %4530 = phi float [ %4661, %4649 ], [ %4408, %4515 ]
  %4531 = phi float [ %4662, %4649 ], [ %4409, %4515 ]
  %4532 = phi float [ %4663, %4649 ], [ %4410, %4515 ]
  %4533 = phi float [ %4664, %4649 ], [ %4458, %4515 ]
  %4534 = phi float [ %4665, %4649 ], [ %4459, %4515 ]
  %4535 = phi float [ %4666, %4649 ], [ %4460, %4515 ]
  %4536 = phi float [ %4667, %4649 ], [ %4422, %4515 ]
  %4537 = phi float [ %4668, %4649 ], [ %4421, %4515 ]
  %4538 = phi float [ %4669, %4649 ], [ 0.000000e+00, %4515 ]
  %4539 = phi float [ %4670, %4649 ], [ %4420, %4515 ]
  %4540 = phi float [ %4671, %4649 ], [ %4411, %4515 ]
  %4541 = phi float [ %4672, %4649 ], [ %4412, %4515 ]
  %4542 = phi float [ %4673, %4649 ], [ %4413, %4515 ]
  %4543 = add nuw nsw i32 %4518, %4513
  %4544 = shl i32 %4543, 2
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = shl i32 %4546, 8
  %4548 = or i32 %4547, 48
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = or i32 %4547, 64
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = extractvalue %dx.types.ResRet.i32 %4555, 1
  %4558 = or i32 %4547, 80
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4562 = or i32 %4547, 96
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4547, 112
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4571 = or i32 %4547, 128
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4547, 144
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4547, 160
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4589 = or i32 %4547, 192
  %4590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.i32 %4590, 0
  %4592 = or i32 %4547, 208
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = or i32 %4547, 248
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = add nuw nsw i32 %4518, 1
  %4600 = bitcast float %4553 to i32
  %4601 = and i32 %4600, 512
  %4602 = icmp eq i32 %4601, 0
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4609 = or i32 %4547, 16
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4616 = or i32 %4547, 32
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4618, float %4619, float %4620, float %4621, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4608)  ; Round_ni(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 27, float %4615)  ; Round_ni(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %4625)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 6, float %4622)  ; FAbs(value)
  %4628 = call float @dx.op.unary.f32(i32 27, float %4627)  ; Round_ni(value)
  %4629 = fadd fast float %4626, %4624
  %4630 = fadd fast float %4629, %4628
  %4631 = fcmp fast oeq float %4630, 0.000000e+00
  %4632 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %4470, float %4471, float %4472, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4633 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %4470, float %4471, float %4472, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4634 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %4473, float %4474, float %4475, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %4473, float %4474, float %4475, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = fsub fast float %4632, %4608
  %4637 = fsub fast float %4634, %4608
  %4638 = fsub fast float %4633, %4615
  %4639 = fsub fast float %4635, %4615
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = fadd fast float %4642, %4640
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4646 = fcmp fast ogt float %4644, %4645
  %4647 = and i1 %4631, %4646
  %4648 = and i1 %4602, %4647
  br i1 %4648, label %4675, label %4649

; <label>:4649                                    ; preds = %5004, %4756, %4675, %4517
  %4650 = phi float [ %4519, %4675 ], [ %4759, %4756 ], [ %4759, %5004 ], [ %4519, %4517 ]
  %4651 = phi float [ %4520, %4675 ], [ %4520, %4756 ], [ %4980, %5004 ], [ %4520, %4517 ]
  %4652 = phi float [ %4521, %4675 ], [ %4521, %4756 ], [ %4978, %5004 ], [ %4521, %4517 ]
  %4653 = phi float [ %4522, %4675 ], [ %4522, %4756 ], [ %4956, %5004 ], [ %4522, %4517 ]
  %4654 = phi float [ %4523, %4675 ], [ %4523, %4756 ], [ %4957, %5004 ], [ %4523, %4517 ]
  %4655 = phi float [ %4524, %4675 ], [ %4524, %4756 ], [ %4958, %5004 ], [ %4524, %4517 ]
  %4656 = phi float [ %4525, %4675 ], [ %4525, %4756 ], [ %4883, %5004 ], [ %4525, %4517 ]
  %4657 = phi float [ %4526, %4675 ], [ %4526, %4756 ], [ %4881, %5004 ], [ %4526, %4517 ]
  %4658 = phi float [ %4527, %4675 ], [ %4527, %4756 ], [ %4926, %5004 ], [ %4527, %4517 ]
  %4659 = phi float [ %4528, %4675 ], [ %4528, %4756 ], [ %4927, %5004 ], [ %4528, %4517 ]
  %4660 = phi float [ %4529, %4675 ], [ %4529, %4756 ], [ %4928, %5004 ], [ %4529, %4517 ]
  %4661 = phi float [ %4530, %4675 ], [ %4530, %4756 ], [ %5014, %5004 ], [ %4530, %4517 ]
  %4662 = phi float [ %4531, %4675 ], [ %4531, %4756 ], [ %5015, %5004 ], [ %4531, %4517 ]
  %4663 = phi float [ %4532, %4675 ], [ %4532, %4756 ], [ %5016, %5004 ], [ %4532, %4517 ]
  %4664 = phi float [ %4533, %4675 ], [ %4533, %4756 ], [ %4862, %5004 ], [ %4533, %4517 ]
  %4665 = phi float [ %4534, %4675 ], [ %4534, %4756 ], [ %4863, %5004 ], [ %4534, %4517 ]
  %4666 = phi float [ %4535, %4675 ], [ %4535, %4756 ], [ %4864, %5004 ], [ %4535, %4517 ]
  %4667 = phi float [ %4536, %4675 ], [ %4536, %4756 ], [ %4936, %5004 ], [ %4536, %4517 ]
  %4668 = phi float [ %4537, %4675 ], [ %4537, %4756 ], [ %4933, %5004 ], [ %4537, %4517 ]
  %4669 = phi float [ %4538, %4675 ], [ %4538, %4756 ], [ %4930, %5004 ], [ %4538, %4517 ]
  %4670 = phi float [ %4539, %4675 ], [ %4539, %4756 ], [ %4879, %5004 ], [ %4539, %4517 ]
  %4671 = phi float [ %4540, %4675 ], [ %4540, %4756 ], [ %4874, %5004 ], [ %4540, %4517 ]
  %4672 = phi float [ %4541, %4675 ], [ %4541, %4756 ], [ %4875, %5004 ], [ %4541, %4517 ]
  %4673 = phi float [ %4542, %4675 ], [ %4542, %4756 ], [ %4876, %5004 ], [ %4542, %4517 ]
  %4674 = icmp eq i32 %4599, %4516
  br i1 %4674, label %5017, label %4517

; <label>:4675                                    ; preds = %4517
  %4676 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4677 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4681 = extractvalue %dx.types.ResRet.i32 %4555, 3
  %4682 = extractvalue %dx.types.ResRet.i32 %4555, 2
  %4683 = add i32 %4681, 0
  %4684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4686 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4684, %dx.types.Handle %4685, float %4608, float %4615, float undef, float undef, i32 0, i32 0, i32 undef, float %4636, float %4638, float undef, float %4637, float %4639, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = fmul fast float %4687, %4680
  %4689 = fadd fast float %4688, %4679
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = fmul fast float %4608, %4564
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4615, float %4691)  ; FMad(a,b,c)
  %4693 = fadd fast float %4692, %4678
  %4694 = fmul fast float %4608, %4566
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4615, float %4694)  ; FMad(a,b,c)
  %4696 = fadd fast float %4695, %4677
  %4697 = fmul fast float %4636, %4564
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4638, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4636, %4566
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4638, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4637, %4564
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4639, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4637, %4566
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4639, float %4703)  ; FMad(a,b,c)
  %4705 = add i32 %4682, 0
  %4706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4705, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4706, %dx.types.Handle %4685, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = and i32 %4600, 1024
  %4710 = icmp ne i32 %4709, 0
  %4711 = fcmp fast ogt float %4708, 0x3FE0101020000000
  %4712 = uitofp i1 %4711 to float
  %4713 = select i1 %4710, float %4712, float %4708
  %4714 = and i32 %4600, 8192
  %4715 = icmp ne i32 %4714, 0
  %4716 = select i1 %4715, float %4676, float 1.000000e+00
  %4717 = fmul fast float %4608, 2.000000e+00
  %4718 = fadd fast float %4717, -1.000000e+00
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = fmul fast float %4719, %4597
  %4721 = fsub fast float %4720, %4597
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4615, 2.000000e+00
  %4724 = fadd fast float %4723, -1.000000e+00
  %4725 = call float @dx.op.unary.f32(i32 6, float %4724)  ; FAbs(value)
  %4726 = fmul fast float %4725, %4598
  %4727 = fsub fast float %4726, %4598
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4627, %4560
  %4730 = fsub fast float %4729, %4560
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4690, %4716
  %4733 = fmul fast float %4732, %4687
  %4734 = fmul fast float %4733, %4722
  %4735 = fmul fast float %4734, %4713
  %4736 = fmul fast float %4735, %4728
  %4737 = fmul fast float %4736, %4731
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4741 = fsub fast float %4644, %4740
  %4742 = fmul fast float %4741, %4739
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4737, %4561
  %4745 = fadd fast float %4737, %4561
  %4746 = fmul fast float %4745, %4570
  %4747 = fsub fast float %4746, %4570
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = and i32 %4600, 128
  %4750 = icmp ne i32 %4749, 0
  %4751 = select i1 %4750, float %4748, float %4744
  %4752 = fmul fast float %4751, %4743
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = fcmp fast ugt float %4752, %4754
  br i1 %4755, label %4756, label %4649

; <label>:4756                                    ; preds = %4675
  %4757 = select i1 %4715, float %4752, float 0.000000e+00
  %4758 = fadd fast float %4757, %4519
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  br i1 %4715, label %4649, label %4760

; <label>:4760                                    ; preds = %4756
  %4761 = and i32 %4600, 4
  %4762 = and i32 %4600, 8
  %4763 = add i32 %4556, 0
  %4764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4763, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4766 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4764, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.ResRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.ResRet.f32 %4766, 2
  %4770 = extractvalue %dx.types.ResRet.f32 %4766, 3
  %4771 = bitcast float %4582 to i32
  %4772 = and i32 %4771, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = lshr i32 %4771, 8
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4770, %4773
  %4778 = fadd fast float %4777, %4776
  %4779 = fmul fast float %4778, 0x3F70101000000000
  %4780 = add i32 %4557, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4781, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.ResRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.ResRet.f32 %4782, 2
  %4786 = extractvalue %dx.types.ResRet.f32 %4782, 3
  %4787 = bitcast float %4576 to i32
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = lshr i32 %4787, 8
  %4791 = and i32 %4790, 255
  %4792 = uitofp i32 %4791 to float
  %4793 = lshr i32 %4787, 16
  %4794 = and i32 %4793, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = fmul fast float %4795, 0x3F70101000000000
  %4797 = fmul fast float %4783, %4789
  %4798 = fadd fast float %4797, %4792
  %4799 = fmul fast float %4798, 0x3F70101000000000
  %4800 = fadd fast float %4784, -5.000000e-01
  %4801 = fadd fast float %4786, -5.000000e-01
  %4802 = fmul fast float %4800, %4796
  %4803 = fmul fast float %4801, %4796
  %4804 = fadd fast float %4802, 5.000000e-01
  %4805 = fadd fast float %4803, 5.000000e-01
  %4806 = fmul fast float %4767, %4585
  %4807 = fmul fast float %4768, %4586
  %4808 = fmul fast float %4769, %4587
  %4809 = fmul fast float %4804, 2.000000e+00
  %4810 = fadd fast float %4809, -1.000000e+00
  %4811 = fmul fast float %4805, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fadd fast float %4810, %4812
  %4814 = fmul fast float %4813, 5.000000e-01
  %4815 = fsub fast float %4810, %4812
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float %4818, %4819
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4816, float %4820, float %4814, float %4816, float %4820)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4814, %4822
  %4824 = fmul fast float %4816, %4822
  %4825 = fmul fast float %4822, %4820
  %4826 = fmul fast float %4825, %4550
  %4827 = fmul fast float %4825, %4551
  %4828 = fmul fast float %4825, %4552
  %4829 = fmul fast float %4823, %4573
  %4830 = fmul fast float %4823, %4574
  %4831 = fmul fast float %4823, %4575
  %4832 = fadd fast float %4829, %4826
  %4833 = fadd fast float %4830, %4827
  %4834 = fadd fast float %4831, %4828
  %4835 = fmul fast float %4824, %4579
  %4836 = fmul fast float %4824, %4580
  %4837 = fmul fast float %4824, %4581
  %4838 = fadd fast float %4832, %4835
  %4839 = fadd fast float %4833, %4836
  %4840 = fadd fast float %4834, %4837
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float %4838, float %4839, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.unary.f32(i32 25, float %4841)  ; Rsqrt(value)
  %4843 = fmul fast float %4838, %4842
  %4844 = fmul fast float %4839, %4842
  %4845 = fmul fast float %4840, %4842
  %4846 = icmp ne i32 %4762, 0
  %4847 = select i1 %4846, float 1.000000e+00, float 0.000000e+00
  %4848 = fmul fast float %4752, %4847
  %4849 = and i32 %4600, 1
  %4850 = icmp eq i32 %4849, 0
  br i1 %4850, label %4851, label %4855

; <label>:4851                                    ; preds = %4760
  %4852 = fsub fast float %4843, %4533
  %4853 = fsub fast float %4844, %4534
  %4854 = fsub fast float %4845, %4535
  br label %4855

; <label>:4855                                    ; preds = %4851, %4760
  %4856 = phi float [ %4852, %4851 ], [ %4843, %4760 ]
  %4857 = phi float [ %4853, %4851 ], [ %4844, %4760 ]
  %4858 = phi float [ %4854, %4851 ], [ %4845, %4760 ]
  %4859 = fmul float %4858, %4848
  %4860 = fmul float %4857, %4848
  %4861 = fmul float %4856, %4848
  %4862 = fadd fast float %4861, %4533
  %4863 = fadd fast float %4860, %4534
  %4864 = fadd fast float %4859, %4535
  %4865 = icmp ne i32 %4761, 0
  %4866 = select i1 %4865, float 1.000000e+00, float 0.000000e+00
  %4867 = fmul fast float %4752, %4866
  %4868 = fsub fast float %4806, %4540
  %4869 = fsub fast float %4807, %4541
  %4870 = fsub fast float %4808, %4542
  %4871 = fmul fast float %4868, %4867
  %4872 = fmul fast float %4869, %4867
  %4873 = fmul fast float %4870, %4867
  %4874 = fadd fast float %4871, %4540
  %4875 = fadd fast float %4872, %4541
  %4876 = fadd fast float %4873, %4542
  %4877 = fsub fast float %4779, %4539
  %4878 = fmul fast float %4877, %4867
  %4879 = fadd fast float %4878, %4539
  %4880 = fmul fast float %4867, %4526
  %4881 = fsub fast float %4526, %4880
  %4882 = fmul fast float %4867, %4525
  %4883 = fsub fast float %4525, %4882
  %4884 = bitcast float %4594 to i32
  %4885 = lshr i32 %4884, 16
  %4886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4885)  ; LegacyF16ToF32(value)
  %4887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.i32 %4887, 0
  %4889 = and i32 %4888, 1
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4891, label %4916

; <label>:4891                                    ; preds = %4855
  %4892 = fadd fast float %4779, 0xBFB99999A0000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4893, 0x3FF1C71C80000000
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, %4806
  %4898 = fmul fast float %4896, %4807
  %4899 = fmul fast float %4896, %4808
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4901, float %4902)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 35, float %4900, float %4903)  ; FMax(a,b)
  %4905 = fcmp fast ogt float %4904, 0.000000e+00
  %4906 = bitcast float %4904 to i32
  %4907 = sub nsw i32 2129859010, %4906
  %4908 = bitcast i32 %4907 to float
  %4909 = select i1 %4905, float %4908, float 0.000000e+00
  %4910 = fmul fast float %4900, %4886
  %4911 = fmul fast float %4901, %4886
  %4912 = fmul fast float %4902, %4886
  %4913 = fmul fast float %4910, %4909
  %4914 = fmul fast float %4911, %4909
  %4915 = fmul fast float %4912, %4909
  br label %4916

; <label>:4916                                    ; preds = %4891, %4855
  %4917 = phi float [ %4886, %4855 ], [ %4913, %4891 ]
  %4918 = phi float [ %4886, %4855 ], [ %4914, %4891 ]
  %4919 = phi float [ %4886, %4855 ], [ %4915, %4891 ]
  %4920 = fsub fast float %4917, %4527
  %4921 = fsub fast float %4918, %4528
  %4922 = fsub fast float %4919, %4529
  %4923 = fmul fast float %4920, %4867
  %4924 = fmul fast float %4921, %4867
  %4925 = fmul fast float %4922, %4867
  %4926 = fadd fast float %4923, %4527
  %4927 = fadd fast float %4924, %4528
  %4928 = fadd fast float %4925, %4529
  %4929 = fadd fast float %4752, %4538
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fsub fast float %4799, %4537
  %4932 = fmul fast float %4931, %4848
  %4933 = fadd fast float %4932, %4537
  %4934 = fsub fast float %4785, %4536
  %4935 = fmul fast float %4934, %4848
  %4936 = fadd fast float %4935, %4536
  br i1 %4850, label %4945, label %4937

; <label>:4937                                    ; preds = %4916
  %4938 = and i32 %4600, 32768
  %4939 = icmp eq i32 %4938, 0
  br i1 %4939, label %4955, label %4940

; <label>:4940                                    ; preds = %4937
  %4941 = fmul fast float %4848, 1.270000e+02
  %4942 = fadd fast float %4941, %4522
  %4943 = fadd fast float %4941, %4523
  %4944 = fadd fast float %4941, %4524
  br label %4955

; <label>:4945                                    ; preds = %4916
  %4946 = fsub fast float 1.270000e+02, %4522
  %4947 = fsub fast float 1.270000e+02, %4523
  %4948 = fsub fast float 1.270000e+02, %4524
  %4949 = fmul fast float %4848, %4946
  %4950 = fmul fast float %4848, %4947
  %4951 = fmul fast float %4848, %4948
  %4952 = fadd fast float %4949, %4522
  %4953 = fadd fast float %4950, %4523
  %4954 = fadd fast float %4951, %4524
  br label %4955

; <label>:4955                                    ; preds = %4945, %4940, %4937
  %4956 = phi float [ %4942, %4940 ], [ %4522, %4937 ], [ %4952, %4945 ]
  %4957 = phi float [ %4943, %4940 ], [ %4523, %4937 ], [ %4953, %4945 ]
  %4958 = phi float [ %4944, %4940 ], [ %4524, %4937 ], [ %4954, %4945 ]
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4807, float %4808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4963 = fmul fast float %4962, %4959
  %4964 = fadd fast float %4963, %4961
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = bitcast float %4588 to i32
  %4967 = and i32 %4966, 65535
  %4968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4967)  ; LegacyF16ToF32(value)
  %4969 = lshr i32 %4966, 16
  %4970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4969)  ; LegacyF16ToF32(value)
  %4971 = fcmp fast oge float %4968, 0.000000e+00
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = select i1 %4971, float %4968, float %4973
  %4975 = fadd fast float %4974, %4970
  %4976 = fsub fast float %4965, %4521
  %4977 = fmul fast float %4976, %4752
  %4978 = fadd fast float %4977, %4521
  %4979 = fmul fast float %4975, %4752
  %4980 = call float @dx.op.binary.f32(i32 35, float %4520, float %4979)  ; FMax(a,b)
  %4981 = and i32 %4600, 16
  %4982 = icmp eq i32 %4981, 0
  br i1 %4982, label %5004, label %4983

; <label>:4983                                    ; preds = %4955
  %4984 = add i32 %4591, 0
  %4985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4986 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4985, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.ResRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.ResRet.f32 %4986, 2
  %4990 = and i32 %4884, 65535
  %4991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4990)  ; LegacyF16ToF32(value)
  %4992 = fmul fast float %4987, %4585
  %4993 = fmul fast float %4988, %4586
  %4994 = fmul fast float %4989, %4587
  %4995 = and i32 %4600, 16384
  %4996 = icmp ne i32 %4995, 0
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = select i1 %4996, float %4998, float 1.000000e+00
  %5000 = fmul fast float %4999, %4991
  %5001 = fmul fast float %4992, %5000
  %5002 = fmul fast float %4993, %5000
  %5003 = fmul fast float %4994, %5000
  br label %5004

; <label>:5004                                    ; preds = %4983, %4955
  %5005 = phi float [ %5001, %4983 ], [ 0.000000e+00, %4955 ]
  %5006 = phi float [ %5002, %4983 ], [ 0.000000e+00, %4955 ]
  %5007 = phi float [ %5003, %4983 ], [ 0.000000e+00, %4955 ]
  %5008 = fsub fast float %5005, %4530
  %5009 = fsub fast float %5006, %4531
  %5010 = fsub fast float %5007, %4532
  %5011 = fmul fast float %5008, %4752
  %5012 = fmul fast float %5009, %4752
  %5013 = fmul fast float %5010, %4752
  %5014 = fadd fast float %5011, %4530
  %5015 = fadd fast float %5012, %4531
  %5016 = fadd fast float %5013, %4532
  br label %4649

; <label>:5017                                    ; preds = %4649
  br label %5018

; <label>:5018                                    ; preds = %5017, %4463
  %5019 = phi float [ 0.000000e+00, %4463 ], [ %4650, %5017 ]
  %5020 = phi float [ %4432, %4463 ], [ %4651, %5017 ]
  %5021 = phi float [ %4424, %4463 ], [ %4652, %5017 ]
  %5022 = phi float [ %4414, %4463 ], [ %4653, %5017 ]
  %5023 = phi float [ %4415, %4463 ], [ %4654, %5017 ]
  %5024 = phi float [ %4416, %4463 ], [ %4655, %5017 ]
  %5025 = phi float [ 0.000000e+00, %4463 ], [ %4656, %5017 ]
  %5026 = phi float [ 0.000000e+00, %4463 ], [ %4657, %5017 ]
  %5027 = phi float [ %4417, %4463 ], [ %4658, %5017 ]
  %5028 = phi float [ %4418, %4463 ], [ %4659, %5017 ]
  %5029 = phi float [ %4419, %4463 ], [ %4660, %5017 ]
  %5030 = phi float [ %4408, %4463 ], [ %4661, %5017 ]
  %5031 = phi float [ %4409, %4463 ], [ %4662, %5017 ]
  %5032 = phi float [ %4410, %4463 ], [ %4663, %5017 ]
  %5033 = phi float [ %4458, %4463 ], [ %4664, %5017 ]
  %5034 = phi float [ %4459, %4463 ], [ %4665, %5017 ]
  %5035 = phi float [ %4460, %4463 ], [ %4666, %5017 ]
  %5036 = phi float [ %4422, %4463 ], [ %4667, %5017 ]
  %5037 = phi float [ %4421, %4463 ], [ %4668, %5017 ]
  %5038 = phi float [ 0.000000e+00, %4463 ], [ %4669, %5017 ]
  %5039 = phi float [ %4420, %4463 ], [ %4670, %5017 ]
  %5040 = phi float [ %4411, %4463 ], [ %4671, %5017 ]
  %5041 = phi float [ %4412, %4463 ], [ %4672, %5017 ]
  %5042 = phi float [ %4413, %4463 ], [ %4673, %5017 ]
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %5035, float %5033, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5044, %5033
  %5046 = fmul fast float %5044, %5034
  %5047 = fmul fast float %5044, %5035
  %5048 = fadd fast float %5038, %1249
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float %5045, float %5046, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5051, %5045
  %5053 = fmul fast float %5051, %5046
  %5054 = fmul fast float %5051, %5047
  br label %5055

; <label>:5055                                    ; preds = %5018, %4405
  %5056 = phi float [ %5052, %5018 ], [ %4458, %4405 ]
  %5057 = phi float [ %5053, %5018 ], [ %4459, %4405 ]
  %5058 = phi float [ %5054, %5018 ], [ %4460, %4405 ]
  %5059 = phi float [ %5040, %5018 ], [ %4411, %4405 ]
  %5060 = phi float [ %5041, %5018 ], [ %4412, %4405 ]
  %5061 = phi float [ %5042, %5018 ], [ %4413, %4405 ]
  %5062 = phi float [ %5030, %5018 ], [ %4408, %4405 ]
  %5063 = phi float [ %5031, %5018 ], [ %4409, %4405 ]
  %5064 = phi float [ %5032, %5018 ], [ %4410, %4405 ]
  %5065 = phi float [ %5027, %5018 ], [ %4417, %4405 ]
  %5066 = phi float [ %5028, %5018 ], [ %4418, %4405 ]
  %5067 = phi float [ %5029, %5018 ], [ %4419, %4405 ]
  %5068 = phi float [ %5022, %5018 ], [ %4414, %4405 ]
  %5069 = phi float [ %5023, %5018 ], [ %4415, %4405 ]
  %5070 = phi float [ %5024, %5018 ], [ %4416, %4405 ]
  %5071 = phi float [ %5039, %5018 ], [ %4420, %4405 ]
  %5072 = phi float [ %5049, %5018 ], [ %1249, %4405 ]
  %5073 = phi float [ %5037, %5018 ], [ %4421, %4405 ]
  %5074 = phi float [ %5036, %5018 ], [ %4422, %4405 ]
  %5075 = phi float [ %5026, %5018 ], [ 0.000000e+00, %4405 ]
  %5076 = phi float [ %5025, %5018 ], [ 0.000000e+00, %4405 ]
  %5077 = phi float [ %5019, %5018 ], [ 0.000000e+00, %4405 ]
  %5078 = phi float [ %5020, %5018 ], [ %4432, %4405 ]
  %5079 = phi float [ %5021, %5018 ], [ %4424, %4405 ]
  %5080 = fadd fast float %5071, 0xBFB99999A0000000
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fmul fast float %5081, 0x3FF1C71C80000000
  %5083 = call float @dx.op.binary.f32(i32 36, float %5071, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5084 = fsub fast float 1.000000e+00, %5082
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, %5059
  %5087 = fmul fast float %5085, %5060
  %5088 = fmul fast float %5085, %5061
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = fmul fast float %5082, %5059
  %5093 = fmul fast float %5082, %5060
  %5094 = fmul fast float %5082, %5061
  %5095 = fadd fast float %5092, %5083
  %5096 = fadd fast float %5093, %5083
  %5097 = fadd fast float %5094, %5083
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.i32 %5102, 0
  %5104 = and i32 %5103, 1
  %5105 = icmp eq i32 %5104, 0
  br i1 %5105, label %5120, label %5106

; <label>:5106                                    ; preds = %5055
  %5107 = call float @dx.op.binary.f32(i32 35, float %5090, float %5091)  ; FMax(a,b)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5089, float %5107)  ; FMax(a,b)
  %5109 = fcmp fast ogt float %5108, 0.000000e+00
  %5110 = bitcast float %5108 to i32
  %5111 = sub nsw i32 2129859010, %5110
  %5112 = bitcast i32 %5111 to float
  %5113 = select i1 %5109, float %5112, float 0.000000e+00
  %5114 = fmul fast float %5089, %5065
  %5115 = fmul fast float %5090, %5066
  %5116 = fmul fast float %5091, %5067
  %5117 = fmul fast float %5114, %5113
  %5118 = fmul fast float %5115, %5113
  %5119 = fmul fast float %5116, %5113
  br label %5120

; <label>:5120                                    ; preds = %5106, %5055
  %5121 = phi float [ %5117, %5106 ], [ %5065, %5055 ]
  %5122 = phi float [ %5118, %5106 ], [ %5066, %5055 ]
  %5123 = phi float [ %5119, %5106 ], [ %5067, %5055 ]
  %5124 = call float @dx.op.binary.f32(i32 36, float %5068, float 1.270000e+02)  ; FMin(a,b)
  %5125 = call float @dx.op.binary.f32(i32 36, float %5069, float 1.270000e+02)  ; FMin(a,b)
  %5126 = call float @dx.op.binary.f32(i32 36, float %5070, float 1.270000e+02)  ; FMin(a,b)
  %5127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.i32 %5127, 3
  %5129 = and i32 %5128, 8
  %5130 = icmp ne i32 %5129, 0
  %5131 = call float @dx.op.binary.f32(i32 35, float %5089, float %5059)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5090, float %5059)  ; FMax(a,b)
  %5133 = call float @dx.op.binary.f32(i32 35, float %5091, float %5059)  ; FMax(a,b)
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = select i1 %219, float %5059, float %5089
  %5136 = select i1 %219, float %5134, float %5090
  %5137 = select i1 %219, float 1.000000e+00, float %5091
  %5138 = select i1 %5130, float %5131, float %5135
  %5139 = select i1 %5130, float %5132, float %5136
  %5140 = select i1 %5130, float %5133, float %5137
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = select i1 %219, float %5141, float %5121
  %5143 = select i1 %219, float %5141, float %5122
  %5144 = select i1 %219, float %5141, float %5123
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5149 = fadd fast float %5146, %157
  %5150 = fadd fast float %5147, %158
  %5151 = fadd fast float %5148, %159
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5155 = fsub fast float %5149, %5153
  %5156 = fsub fast float %5150, %5154
  %5157 = fmul fast float %5155, %5155
  %5158 = fmul fast float %5156, %5156
  %5159 = fadd fast float %5157, %5158
  %5160 = call float @dx.op.unary.f32(i32 24, float %5159)  ; Sqrt(value)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5162 = fcmp fast olt float %5160, %5161
  br i1 %5162, label %5163, label %5230

; <label>:5163                                    ; preds = %5120
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5174 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5175 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5176 = fadd fast float %5173, %5149
  %5177 = fadd fast float %5174, %5150
  %5178 = fadd fast float %5175, %5151
  %5179 = fmul fast float %5176, %5165
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5167, float %5179)  ; FMad(a,b,c)
  %5181 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5169, float %5180)  ; FMad(a,b,c)
  %5182 = fmul fast float %5176, %5170
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5171, float %5182)  ; FMad(a,b,c)
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5172, float %5183)  ; FMad(a,b,c)
  %5185 = fsub fast float %5181, %5173
  %5186 = fsub fast float %5184, %5174
  %5187 = fsub fast float %5185, %5153
  %5188 = fadd fast float %5187, %5161
  %5189 = fsub fast float %5186, %5154
  %5190 = fadd fast float %5189, %5161
  %5191 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5192 = fmul fast float %5188, %5191
  %5193 = fmul fast float %5190, %5191
  %5194 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5196 = fsub fast float 1.000000e+00, %5194
  %5197 = fsub fast float 1.000000e+00, %5195
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5196, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = fcmp fast ugt float %5199, 0.000000e+00
  br i1 %5200, label %5201, label %5504

; <label>:5201                                    ; preds = %5163
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5204 = fmul fast float %5203, %5199
  %5205 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5206 = fadd fast float %5205, %5204
  %5207 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5208 = fadd fast float %5206, %5175
  %5209 = fmul fast float %5181, %5169
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5172, float %5209)  ; FMad(a,b,c)
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5208, float %5207, float %5210)  ; FMad(a,b,c)
  %5212 = fsub fast float %5211, %5175
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 2
  %5215 = fsub fast float %5212, %5214
  %5216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5196, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5216, 2
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5196, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = fadd fast float %5221, %5217
  %5225 = fmul fast float %5224, 0x3F847AE140000000
  %5226 = fadd fast float %5222, %5218
  %5227 = fmul fast float %5226, 0x3F847AE140000000
  %5228 = fadd fast float %5223, %5219
  %5229 = fmul fast float %5228, 0x3F847AE140000000
  br label %5504

; <label>:5230                                    ; preds = %5120
  %5231 = and i32 %195, 1
  %5232 = icmp eq i32 %5231, 0
  br i1 %5232, label %5504, label %5233

; <label>:5233                                    ; preds = %5230
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 0
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5236, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5243 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5244 = extractvalue %dx.types.CBufRet.f32 %5236, 3
  %5245 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5246 = fadd fast float %5243, %5149
  %5247 = fadd fast float %5244, %5150
  %5248 = fadd fast float %5245, %5151
  %5249 = fmul fast float %5246, %5235
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5237, float %5249)  ; FMad(a,b,c)
  %5251 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5239, float %5250)  ; FMad(a,b,c)
  %5252 = fmul fast float %5246, %5240
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5241, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5242, float %5253)  ; FMad(a,b,c)
  %5255 = fsub fast float %5251, %5243
  %5256 = fsub fast float %5254, %5244
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.i32 %5264, 0
  %5266 = extractvalue %dx.types.CBufRet.i32 %5264, 1
  %5267 = udiv i32 %5266, %5265
  %5268 = fsub fast float %5255, %5258
  %5269 = fsub fast float %5256, %5259
  %5270 = call float @dx.op.binary.f32(i32 35, float %5268, float 0.000000e+00)  ; FMax(a,b)
  %5271 = call float @dx.op.binary.f32(i32 35, float %5269, float 0.000000e+00)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 36, float %5270, float %5260)  ; FMin(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5271, float %5261)  ; FMin(a,b)
  %5274 = add i32 %5265, -1
  %5275 = add i32 %5267, -1
  %5276 = fmul fast float %5272, %5263
  %5277 = fmul fast float %5273, %5263
  %5278 = fptoui float %5276 to i32
  %5279 = fptoui float %5277 to i32
  %5280 = call i32 @dx.op.binary.i32(i32 40, i32 %5278, i32 %5274)  ; UMin(a,b)
  %5281 = call i32 @dx.op.binary.i32(i32 40, i32 %5279, i32 %5275)  ; UMin(a,b)
  %5282 = mul i32 %5281, %5265
  %5283 = add i32 %5282, %5280
  %5284 = shl i32 %5283, 2
  %5285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.i32 %5285, 0
  %5287 = icmp eq i32 %5286, -1
  br i1 %5287, label %5504, label %5288

; <label>:5288                                    ; preds = %5233
  %5289 = mul i32 %5286, 148
  %5290 = add i32 %5289, 4
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = add i32 %5289, 8
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = add i32 %5289, 36
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = add i32 %5289, 60
  %5300 = add i32 %5289, 92
  %5301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.i32 %5301, 0
  %5303 = add i32 %5289, 116
  %5304 = fsub fast float %5255, %5292
  %5305 = fsub fast float %5256, %5295
  %5306 = fmul fast float %5263, %5304
  %5307 = fmul fast float %5263, %5305
  %5308 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5313 = call float @dx.op.unary.f32(i32 83, float %5308)  ; DerivCoarseX(value)
  %5314 = call float @dx.op.unary.f32(i32 83, float %5310)  ; DerivCoarseX(value)
  %5315 = call float @dx.op.unary.f32(i32 84, float %5308)  ; DerivCoarseY(value)
  %5316 = call float @dx.op.unary.f32(i32 84, float %5310)  ; DerivCoarseY(value)
  %5317 = fmul fast float %5313, %5312
  %5318 = fmul fast float %5314, %5312
  %5319 = fmul fast float %5315, %5312
  %5320 = fmul fast float %5316, %5312
  %5321 = call float @dx.op.dot2.f32(i32 54, float %5319, float %5320, float %5319, float %5320)  ; Dot2(ax,ay,bx,by)
  %5322 = call float @dx.op.dot2.f32(i32 54, float %5317, float %5318, float %5317, float %5318)  ; Dot2(ax,ay,bx,by)
  %5323 = call float @dx.op.binary.f32(i32 35, float %5322, float %5321)  ; FMax(a,b)
  %5324 = call float @dx.op.unary.f32(i32 23, float %5323)  ; Log(value)
  %5325 = fmul fast float %5324, 5.000000e-01
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5328 = fadd fast float %5327, %5325
  %5329 = call float @dx.op.binary.f32(i32 35, float %5328, float 0.000000e+00)  ; FMax(a,b)
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 3
  %5332 = fadd fast float %5331, %5329
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5335 = fadd fast float %5332, %5334
  %5336 = add i32 %5302, 0
  %5337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5337, i32 0)  ; GetDimensions(handle,mipLevel)
  %5339 = extractvalue %dx.types.Dimensions %5338, 0
  %5340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5339)  ; FirstbitLo(value)
  %5341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.i32 %5341, 1
  %5343 = sub nsw i32 %5342, %5340
  %5344 = sitofp i32 %5343 to float
  %5345 = fsub fast float %5335, %5344
  %5346 = call float @dx.op.binary.f32(i32 35, float %5345, float 0.000000e+00)  ; FMax(a,b)
  %5347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5337, %dx.types.Handle %48, float %5308, float %5310, float %5298, float undef, i32 0, i32 0, i32 undef, float %5346)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = fcmp ule float %5348, 0x3FE0101020000000
  %5350 = extractvalue %dx.types.CBufRet.i32 %5341, 0
  %5351 = and i32 %5350, 128
  %5352 = icmp ne i32 %5351, 0
  %5353 = and i1 %5349, %5352
  br i1 %5353, label %5504, label %5354

; <label>:5354                                    ; preds = %5288
  %5355 = add i32 %5289, 20
  %5356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = add i32 %5289, 24
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = add i32 %5289, 40
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = add i32 %5289, 96
  %5365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.i32 %5365, 0
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5369 = fmul fast float %5368, %5308
  %5370 = fmul fast float %5368, %5310
  %5371 = extractvalue %dx.types.CBufRet.f32 %5367, 3
  %5372 = fadd fast float %5369, %5371
  %5373 = fadd fast float %5370, %5371
  %5374 = add i32 %5366, 0
  %5375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5374, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5376 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5375, i32 0)  ; GetDimensions(handle,mipLevel)
  %5377 = extractvalue %dx.types.Dimensions %5376, 0
  %5378 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5377)  ; FirstbitLo(value)
  %5379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.i32 %5379, 1
  %5381 = sub nsw i32 %5380, %5378
  %5382 = sitofp i32 %5381 to float
  %5383 = fsub fast float %5332, %5382
  %5384 = call float @dx.op.binary.f32(i32 35, float %5383, float 0.000000e+00)  ; FMax(a,b)
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5375, %dx.types.Handle %48, float %5372, float %5373, float %5363, float undef, i32 0, i32 0, i32 undef, float %5384)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = fmul fast float %5386, %5357
  %5388 = fadd fast float %5387, %5360
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5397 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5398 = fadd fast float %5394, %5255
  %5399 = fadd fast float %5396, %5256
  %5400 = fadd fast float %5388, %5397
  %5401 = fmul fast float %5398, %5390
  %5402 = call float @dx.op.tertiary.f32(i32 46, float %5399, float %5391, float %5401)  ; FMad(a,b,c)
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5400, float %5392, float %5402)  ; FMad(a,b,c)
  %5404 = fsub fast float %5403, %5397
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5407 = fsub fast float %5404, %5406
  %5408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.i32 %5408, 0
  %5410 = call i32 @dx.op.binary.i32(i32 40, i32 %5286, i32 %5409)  ; UMin(a,b)
  %5411 = mul i32 %5410, 36
  %5412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5411, i32 undef)  ; BufferLoad(srv,index,wot)
  %5413 = extractvalue %dx.types.ResRet.i32 %5412, 0
  %5414 = add i32 %5411, 4
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5417 = fmul fast float %5416, %5308
  %5418 = fmul fast float %5416, %5310
  %5419 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5420 = fadd fast float %5417, %5419
  %5421 = fadd fast float %5418, %5419
  %5422 = icmp eq i32 %5413, 0
  br i1 %5422, label %5491, label %5423

; <label>:5423                                    ; preds = %5354
  br label %5424

; <label>:5424                                    ; preds = %5481, %5423
  %5425 = phi float [ %5482, %5481 ], [ 0.000000e+00, %5423 ]
  %5426 = phi float [ %5483, %5481 ], [ 0.000000e+00, %5423 ]
  %5427 = phi float [ %5484, %5481 ], [ 0.000000e+00, %5423 ]
  %5428 = phi float [ %5485, %5481 ], [ 0.000000e+00, %5423 ]
  %5429 = phi float [ %5486, %5481 ], [ 0.000000e+00, %5423 ]
  %5430 = phi float [ %5487, %5481 ], [ 0.000000e+00, %5423 ]
  %5431 = phi i32 [ %5488, %5481 ], [ 0, %5423 ]
  %5432 = shl i32 %5431, 2
  %5433 = add i32 %5299, %5432
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = add i32 %5303, %5432
  %5437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.i32 %5437, 0
  %5439 = add i32 %5438, 0
  %5440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5439, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5441 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5440, i32 0)  ; GetDimensions(handle,mipLevel)
  %5442 = extractvalue %dx.types.Dimensions %5441, 0
  %5443 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5442)  ; FirstbitLo(value)
  %5444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.i32 %5444, 1
  %5446 = sub nsw i32 %5445, %5443
  %5447 = sitofp i32 %5446 to float
  %5448 = fsub fast float %5332, %5447
  %5449 = call float @dx.op.binary.f32(i32 35, float %5448, float 0.000000e+00)  ; FMax(a,b)
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5440, %dx.types.Handle %48, float %5420, float %5421, float %5435, float undef, i32 0, i32 0, i32 undef, float %5449)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = fcmp fast ogt float %5451, 0.000000e+00
  br i1 %5452, label %5453, label %5481

; <label>:5453                                    ; preds = %5424
  %5454 = add i32 %5414, %5432
  %5455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.i32 %5455, 0
  %5457 = and i32 %5456, 32767
  %5458 = mul nuw nsw i32 %5457, 928
  %5459 = add nuw nsw i32 %5458, 48
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = add nuw nsw i32 %5458, 60
  %5465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.ResRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5465, 2
  %5469 = fmul fast float %5461, %5451
  %5470 = fmul fast float %5462, %5451
  %5471 = fmul fast float %5463, %5451
  %5472 = fadd fast float %5469, %5425
  %5473 = fadd fast float %5470, %5426
  %5474 = fadd fast float %5471, %5427
  %5475 = fmul fast float %5466, %5451
  %5476 = fmul fast float %5467, %5451
  %5477 = fmul fast float %5468, %5451
  %5478 = fadd fast float %5475, %5428
  %5479 = fadd fast float %5476, %5429
  %5480 = fadd fast float %5477, %5430
  br label %5481

; <label>:5481                                    ; preds = %5453, %5424
  %5482 = phi float [ %5472, %5453 ], [ %5425, %5424 ]
  %5483 = phi float [ %5473, %5453 ], [ %5426, %5424 ]
  %5484 = phi float [ %5474, %5453 ], [ %5427, %5424 ]
  %5485 = phi float [ %5478, %5453 ], [ %5428, %5424 ]
  %5486 = phi float [ %5479, %5453 ], [ %5429, %5424 ]
  %5487 = phi float [ %5480, %5453 ], [ %5430, %5424 ]
  %5488 = add nuw i32 %5431, 1
  %5489 = icmp eq i32 %5488, %5413
  br i1 %5489, label %5490, label %5424

; <label>:5490                                    ; preds = %5481
  br label %5491

; <label>:5491                                    ; preds = %5490, %5354
  %5492 = phi float [ 0.000000e+00, %5354 ], [ %5482, %5490 ]
  %5493 = phi float [ 0.000000e+00, %5354 ], [ %5483, %5490 ]
  %5494 = phi float [ 0.000000e+00, %5354 ], [ %5484, %5490 ]
  %5495 = phi float [ 0.000000e+00, %5354 ], [ %5485, %5490 ]
  %5496 = phi float [ 0.000000e+00, %5354 ], [ %5486, %5490 ]
  %5497 = phi float [ 0.000000e+00, %5354 ], [ %5487, %5490 ]
  %5498 = fadd fast float %5495, %5492
  %5499 = fmul fast float %5498, 0x3F847AE140000000
  %5500 = fadd fast float %5496, %5493
  %5501 = fmul fast float %5500, 0x3F847AE140000000
  %5502 = fadd fast float %5497, %5494
  %5503 = fmul fast float %5502, 0x3F847AE140000000
  br label %5504

; <label>:5504                                    ; preds = %5491, %5288, %5233, %5230, %5201, %5163
  %5505 = phi float [ %5215, %5201 ], [ -1.310720e+05, %5163 ], [ %5407, %5491 ], [ -1.310720e+05, %5233 ], [ -1.310720e+05, %5288 ], [ -1.310720e+05, %5230 ]
  %5506 = phi float [ %5225, %5201 ], [ 0.000000e+00, %5163 ], [ %5499, %5491 ], [ 0.000000e+00, %5233 ], [ 0.000000e+00, %5288 ], [ 0.000000e+00, %5230 ]
  %5507 = phi float [ %5227, %5201 ], [ 0.000000e+00, %5163 ], [ %5501, %5491 ], [ 0.000000e+00, %5233 ], [ 0.000000e+00, %5288 ], [ 0.000000e+00, %5230 ]
  %5508 = phi float [ %5229, %5201 ], [ 0.000000e+00, %5163 ], [ %5503, %5491 ], [ 0.000000e+00, %5233 ], [ 0.000000e+00, %5288 ], [ 0.000000e+00, %5230 ]
  %5509 = phi i1 [ true, %5201 ], [ false, %5163 ], [ true, %5491 ], [ false, %5233 ], [ false, %5288 ], [ false, %5230 ]
  %5510 = and i32 %195, 3
  %5511 = icmp eq i32 %5510, 1
  %5512 = select i1 %5511, float 1.000000e+00, float 0.000000e+00
  %5513 = fsub fast float %5505, %159
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = select i1 %5509, float %5514, float 1.000000e+00
  %5516 = fmul fast float %5515, %5512
  %5517 = icmp eq i32 %5510, 3
  %5518 = select i1 %5517, float 1.000000e+00, float %5516
  %5519 = call float @dx.op.binary.f32(i32 35, float %5077, float %5518)  ; FMax(a,b)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fcmp fast une float %5520, 0.000000e+00
  %5522 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = call float @dx.op.unary.f32(i32 25, float %5522)  ; Rsqrt(value)
  br i1 %5521, label %5531, label %5524

; <label>:5524                                    ; preds = %5504
  %5525 = fmul fast float %5523, %157
  %5526 = fmul fast float %5523, %158
  %5527 = fmul fast float %5523, %159
  %5528 = fsub fast float -0.000000e+00, %5525
  %5529 = fsub fast float -0.000000e+00, %5526
  %5530 = fsub fast float -0.000000e+00, %5527
  br label %5699

; <label>:5531                                    ; preds = %5504
  %5532 = fmul fast float %157, %5523
  %5533 = fsub fast float -0.000000e+00, %5532
  %5534 = fmul fast float %158, %5523
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fmul fast float %159, %5523
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5535, float %5537, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fmul fast float %5520, 2.500000e+00
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = fmul fast float %5520, 0x4013FFFFE0000000
  %5542 = fadd fast float %5541, 0xBFFFFFFFE0000000
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5520, 0x4004000020000000
  %5545 = fadd fast float %5544, 0xBFF8000040000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5548 = fmul fast float %5080, 1.000000e+01
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5549, 2.000000e+00
  %5551 = fsub fast float 3.000000e+00, %5550
  %5552 = fmul fast float %5549, %5549
  %5553 = fmul fast float %5552, %5551
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = fsub fast float 0x3FE3333340000000, %5101
  %5556 = fmul fast float %5555, 0x400AAAAAA0000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fmul fast float %5554, %5557
  %5559 = fmul fast float %5138, 0x3FEA2B8620000000
  %5560 = fmul fast float %5139, 0x3FEA2B8620000000
  %5561 = fmul fast float %5140, 0x3FEA2B8620000000
  %5562 = fadd fast float %5559, 0x3FC81DFBA0000000
  %5563 = fmul fast float %5562, %5138
  %5564 = fadd fast float %5563, 0x3F910E6020000000
  %5565 = fadd fast float %5560, 0x3FC81DFBA0000000
  %5566 = fmul fast float %5565, %5139
  %5567 = fadd fast float %5566, 0x3F910E6020000000
  %5568 = fadd fast float %5561, 0x3FC81DFBA0000000
  %5569 = fmul fast float %5568, %5140
  %5570 = fadd fast float %5569, 0x3F910E6020000000
  %5571 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5572 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5574 = fsub fast float %5571, %5138
  %5575 = fsub fast float %5572, %5139
  %5576 = fsub fast float %5573, %5140
  %5577 = fmul fast float %5574, %5547
  %5578 = fmul fast float %5577, %5558
  %5579 = fmul fast float %5575, %5547
  %5580 = fmul fast float %5579, %5558
  %5581 = fmul fast float %5576, %5547
  %5582 = fmul fast float %5581, %5558
  %5583 = fadd fast float %5578, %5138
  %5584 = fadd fast float %5580, %5139
  %5585 = fadd fast float %5582, %5140
  %5586 = fmul fast float %5074, %5074
  %5587 = fmul fast float %5586, %5586
  %5588 = fadd fast float %5543, 1.000000e+00
  %5589 = fsub fast float %5588, %5558
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5593 = fsub fast float 1.000000e+00, %5587
  %5594 = call float @dx.op.binary.f32(i32 36, float %5590, float %5593)  ; FMin(a,b)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5596 = call float @dx.op.binary.f32(i32 35, float %5594, float %5595)  ; FMax(a,b)
  %5597 = fadd fast float %5592, 0xBFE4CCCCC0000000
  %5598 = fmul fast float %5597, 0x4006DB6DA0000000
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fmul fast float %5599, 2.000000e+00
  %5601 = fsub fast float 3.000000e+00, %5600
  %5602 = bitcast float %5098 to i32
  %5603 = ashr i32 %5602, 1
  %5604 = add nsw i32 %5603, 532487669
  %5605 = bitcast i32 %5604 to float
  %5606 = fsub fast float 1.000000e+00, %5605
  %5607 = bitcast float %5606 to i32
  %5608 = sub nsw i32 2129859010, %5607
  %5609 = bitcast i32 %5608 to float
  %5610 = fmul fast float %5609, 2.000000e+00
  %5611 = bitcast float %5099 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5618, 2.000000e+00
  %5620 = bitcast float %5100 to i32
  %5621 = ashr i32 %5620, 1
  %5622 = add nsw i32 %5621, 532487669
  %5623 = bitcast i32 %5622 to float
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = bitcast float %5624 to i32
  %5626 = sub nsw i32 2129859010, %5625
  %5627 = bitcast i32 %5626 to float
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = fsub fast float 0x4002A9FBE0000000, %5610
  %5630 = fadd fast float %5610, 0x3FD54FDF00000000
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = fmul fast float %5633, %5629
  %5635 = fmul fast float %5634, %5634
  %5636 = fsub fast float 0x4002A9FBE0000000, %5619
  %5637 = fadd fast float %5619, 0x3FD54FDF00000000
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = bitcast i32 %5639 to float
  %5641 = fmul fast float %5640, %5636
  %5642 = fmul fast float %5641, %5641
  %5643 = fsub fast float 0x4002A9FBE0000000, %5628
  %5644 = fadd fast float %5628, 0x3FD54FDF00000000
  %5645 = bitcast float %5644 to i32
  %5646 = sub nsw i32 2129859010, %5645
  %5647 = bitcast i32 %5646 to float
  %5648 = fmul fast float %5647, %5643
  %5649 = fmul fast float %5648, %5648
  %5650 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5635)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5642)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5649)  ; FMax(a,b)
  %5653 = fsub fast float 1.000000e+00, %5538
  %5654 = fadd fast float %5653, %5554
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fsub fast float 1.000000e+00, %5518
  %5657 = fmul fast float %5596, %5656
  %5658 = fmul fast float %5599, %5599
  %5659 = fmul fast float %5658, %5657
  %5660 = fmul fast float %5659, %5601
  %5661 = fmul fast float %5656, 0xBFE99999A0000000
  %5662 = fmul fast float %5661, %5547
  %5663 = fmul fast float %5662, %5558
  %5664 = fadd fast float %5663, 1.000000e+00
  %5665 = fadd fast float %5101, -1.000000e+00
  %5666 = fmul fast float %5664, %5665
  %5667 = fadd fast float %5666, 1.000000e+00
  %5668 = fsub fast float %5650, %5098
  %5669 = fsub fast float %5651, %5099
  %5670 = fsub fast float %5652, %5100
  %5671 = fmul fast float %5660, %5668
  %5672 = fmul fast float %5660, %5669
  %5673 = fmul fast float %5660, %5670
  %5674 = fadd fast float %5671, %5098
  %5675 = fadd fast float %5672, %5099
  %5676 = fadd fast float %5673, %5100
  %5677 = fsub fast float %109, %5056
  %5678 = fsub fast float %110, %5057
  %5679 = fsub fast float %111, %5058
  %5680 = fmul fast float %5660, %5677
  %5681 = fmul fast float %5660, %5678
  %5682 = fmul fast float %5660, %5679
  %5683 = fadd fast float %5680, %5056
  %5684 = fadd fast float %5681, %5057
  %5685 = fadd fast float %5682, %5058
  %5686 = fmul fast float %5660, %5655
  %5687 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = fmul fast float %5686, %5688
  %5690 = fadd fast float %5689, %5687
  %5691 = fsub fast float 1.000000e+00, %5074
  %5692 = fmul fast float %5660, %5691
  %5693 = fadd fast float %5692, %5074
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5683, float %5684, float %5685, float %5683, float %5684, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = call float @dx.op.unary.f32(i32 25, float %5694)  ; Rsqrt(value)
  %5696 = fmul fast float %5683, %5695
  %5697 = fmul fast float %5684, %5695
  %5698 = fmul fast float %5685, %5695
  br label %5699

; <label>:5699                                    ; preds = %5531, %5524
  %5700 = phi float [ %5530, %5524 ], [ %5537, %5531 ]
  %5701 = phi float [ %5529, %5524 ], [ %5535, %5531 ]
  %5702 = phi float [ %5528, %5524 ], [ %5533, %5531 ]
  %5703 = phi float [ %5527, %5524 ], [ %5536, %5531 ]
  %5704 = phi float [ %5526, %5524 ], [ %5534, %5531 ]
  %5705 = phi float [ %5525, %5524 ], [ %5532, %5531 ]
  %5706 = phi float [ %5138, %5524 ], [ %5583, %5531 ]
  %5707 = phi float [ %5139, %5524 ], [ %5584, %5531 ]
  %5708 = phi float [ %5140, %5524 ], [ %5585, %5531 ]
  %5709 = phi float [ %5056, %5524 ], [ %5696, %5531 ]
  %5710 = phi float [ %5057, %5524 ], [ %5697, %5531 ]
  %5711 = phi float [ %5058, %5524 ], [ %5698, %5531 ]
  %5712 = phi float [ %5098, %5524 ], [ %5674, %5531 ]
  %5713 = phi float [ %5099, %5524 ], [ %5675, %5531 ]
  %5714 = phi float [ %5100, %5524 ], [ %5676, %5531 ]
  %5715 = phi float [ %5101, %5524 ], [ %5690, %5531 ]
  %5716 = phi float [ %5074, %5524 ], [ %5693, %5531 ]
  %5717 = fsub fast float -0.000000e+00, %159
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5721 = fmul fast float %127, %5719
  %5722 = fmul fast float %129, %5720
  %5723 = fsub fast float 1.000000e+00, %5721
  %5724 = fsub fast float 1.000000e+00, %5722
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5728 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5729 = fmul fast float %5723, %5726
  %5730 = fmul fast float %5723, %5727
  %5731 = fmul fast float %5723, %5728
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = fmul fast float %5724, %5733
  %5737 = fmul fast float %5724, %5734
  %5738 = fmul fast float %5724, %5735
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = fadd fast float %5736, %5740
  %5744 = fadd fast float %5743, %5729
  %5745 = fadd fast float %5737, %5741
  %5746 = fadd fast float %5745, %5730
  %5747 = fadd fast float %5738, %5742
  %5748 = fadd fast float %5747, %5731
  %5749 = fmul fast float %5744, %93
  %5750 = fmul fast float %5746, %93
  %5751 = fmul fast float %5748, %93
  %5752 = select i1 %219, float 0.000000e+00, float %5714
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %5702, float %5701, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5704, float %5703, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = fmul fast float %5755, 2.000000e+00
  %5757 = fmul fast float %5756, %5709
  %5758 = fmul fast float %5756, %5710
  %5759 = fmul fast float %5756, %5711
  %5760 = fsub fast float %5705, %5757
  %5761 = fsub fast float %5704, %5758
  %5762 = fsub fast float %5703, %5759
  %5763 = call float @dx.op.binary.f32(i32 36, float %5716, float 1.000000e+00)  ; FMin(a,b)
  %5764 = fsub fast float 1.000000e+00, %5716
  %5765 = bitcast float %5764 to i32
  %5766 = sub nsw i32 2129859010, %5765
  %5767 = bitcast i32 %5766 to float
  %5768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5769 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fcmp fast oeq float %5769, 0.000000e+00
  %5771 = fcmp fast oeq float %5768, 0.000000e+00
  %5772 = or i1 %5771, %5770
  br i1 %5772, label %5802, label %5773

; <label>:5773                                    ; preds = %5699
  %5774 = fsub fast float -0.000000e+00, %76
  %5775 = fsub fast float -0.000000e+00, %74
  %5776 = call float @dx.op.unary.f32(i32 24, float %5769)  ; Sqrt(value)
  %5777 = fdiv fast float %5776, %5768
  %5778 = fcmp fast ogt float %5777, 0x3FFB6F8900000000
  %5779 = select i1 %5778, float 0x3FFB6F8900000000, float %5777
  %5780 = fmul fast float %5779, 0x3FE8A23460000000
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5779, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5783 = fmul fast float %5781, %5768
  %5784 = fmul fast float %5782, 0x3FF279A740000000
  %5785 = fadd fast float %5784, -1.000000e+00
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5774, float %5775, float %75, float %5774, float %5775, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = call float @dx.op.unary.f32(i32 25, float %5786)  ; Rsqrt(value)
  %5788 = fmul fast float %5787, %5774
  %5789 = fmul fast float %5787, %5775
  %5790 = fmul fast float %5787, %75
  %5791 = fmul fast float %5785, %5785
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fmul fast float %5782, 0x40005F8BE0000000
  %5794 = fsub fast float 0x400C5BF8A0000000, %5793
  %5795 = fdiv fast float %5783, %5794
  %5796 = fmul fast float %5795, 0x3FEE31C3C0000000
  %5797 = fmul fast float %5796, %5792
  %5798 = fmul fast float %5782, 0x3FDACB7480000000
  %5799 = fadd fast float %5798, 0xBFD7347680000000
  %5800 = fmul fast float %5799, %5795
  %5801 = fmul fast float %5800, %5792
  br label %5802

; <label>:5802                                    ; preds = %5773, %5699
  %5803 = phi float [ %5788, %5773 ], [ 0.000000e+00, %5699 ]
  %5804 = phi float [ %5789, %5773 ], [ 0.000000e+00, %5699 ]
  %5805 = phi float [ %5790, %5773 ], [ 0.000000e+00, %5699 ]
  %5806 = phi float [ %5797, %5773 ], [ 0.000000e+00, %5699 ]
  %5807 = phi float [ %5801, %5773 ], [ 0.000000e+00, %5699 ]
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = fmul fast float %5808, %5808
  %5810 = fmul fast float %5809, 0x3FEE471020000000
  %5811 = fadd fast float %5810, 0xBFD42F6020000000
  %5812 = fmul fast float %5768, 0x3FD20DD760000000
  %5813 = fmul fast float %5811, %5807
  %5814 = fmul fast float %5806, 0x3FDF454380000000
  %5815 = fmul fast float %5814, %5808
  %5816 = fadd fast float %5815, %5812
  %5817 = fadd fast float %5816, %5813
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fmul fast float %5818, 0x3FDF454380000000
  %5820 = fmul fast float %5818, %5818
  %5821 = fmul fast float %5820, 0x3FEE471020000000
  %5822 = fadd fast float %5821, 0xBFD42F6020000000
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5806, float %5807, float 0x3FD20DD760000000, float %5819, float %5822)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5825 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fcmp fast oeq float %5825, 0.000000e+00
  %5827 = fcmp fast oeq float %5824, 0.000000e+00
  %5828 = or i1 %5827, %5826
  br i1 %5828, label %5858, label %5829

; <label>:5829                                    ; preds = %5802
  %5830 = fsub fast float -0.000000e+00, %72
  %5831 = fsub fast float -0.000000e+00, %70
  %5832 = call float @dx.op.unary.f32(i32 24, float %5825)  ; Sqrt(value)
  %5833 = fdiv fast float %5832, %5824
  %5834 = fcmp fast ogt float %5833, 0x3FFB6F8900000000
  %5835 = select i1 %5834, float 0x3FFB6F8900000000, float %5833
  %5836 = fmul fast float %5835, 0x3FE8A23460000000
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5839 = fmul fast float %5837, %5824
  %5840 = fmul fast float %5838, 0x3FF279A740000000
  %5841 = fadd fast float %5840, -1.000000e+00
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %71, float %5830, float %5831, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = call float @dx.op.unary.f32(i32 25, float %5842)  ; Rsqrt(value)
  %5844 = fmul fast float %5843, %5830
  %5845 = fmul fast float %5843, %5831
  %5846 = fmul fast float %5843, %71
  %5847 = fmul fast float %5841, %5841
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = fmul fast float %5838, 0x40005F8BE0000000
  %5850 = fsub fast float 0x400C5BF8A0000000, %5849
  %5851 = fdiv fast float %5839, %5850
  %5852 = fmul fast float %5851, 0x3FEE31C3C0000000
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5838, 0x3FDACB7480000000
  %5855 = fadd fast float %5854, 0xBFD7347680000000
  %5856 = fmul fast float %5855, %5851
  %5857 = fmul fast float %5856, %5848
  br label %5858

; <label>:5858                                    ; preds = %5829, %5802
  %5859 = phi float [ %5844, %5829 ], [ 0.000000e+00, %5802 ]
  %5860 = phi float [ %5845, %5829 ], [ 0.000000e+00, %5802 ]
  %5861 = phi float [ %5846, %5829 ], [ 0.000000e+00, %5802 ]
  %5862 = phi float [ %5853, %5829 ], [ 0.000000e+00, %5802 ]
  %5863 = phi float [ %5857, %5829 ], [ 0.000000e+00, %5802 ]
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = fmul fast float %5864, %5864
  %5866 = fmul fast float %5865, 0x3FEE471020000000
  %5867 = fadd fast float %5866, 0xBFD42F6020000000
  %5868 = fmul fast float %5824, 0x3FD20DD760000000
  %5869 = fmul fast float %5867, %5863
  %5870 = fmul fast float %5862, 0x3FDF454380000000
  %5871 = fmul fast float %5870, %5864
  %5872 = fadd fast float %5871, %5868
  %5873 = fadd fast float %5872, %5869
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = fmul fast float %5874, 0x3FDF454380000000
  %5876 = fmul fast float %5874, %5874
  %5877 = fmul fast float %5876, 0x3FEE471020000000
  %5878 = fadd fast float %5877, 0xBFD42F6020000000
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5862, float %5863, float 0x3FD20DD760000000, float %5875, float %5878)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5881 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = fcmp fast oeq float %5881, 0.000000e+00
  %5883 = fcmp fast oeq float %5880, 0.000000e+00
  %5884 = or i1 %5883, %5882
  br i1 %5884, label %5914, label %5885

; <label>:5885                                    ; preds = %5858
  %5886 = fsub fast float -0.000000e+00, %68
  %5887 = fsub fast float -0.000000e+00, %66
  %5888 = call float @dx.op.unary.f32(i32 24, float %5881)  ; Sqrt(value)
  %5889 = fdiv fast float %5888, %5880
  %5890 = fcmp fast ogt float %5889, 0x3FFB6F8900000000
  %5891 = select i1 %5890, float 0x3FFB6F8900000000, float %5889
  %5892 = fmul fast float %5891, 0x3FE8A23460000000
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5891, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5895 = fmul fast float %5893, %5880
  %5896 = fmul fast float %5894, 0x3FF279A740000000
  %5897 = fadd fast float %5896, -1.000000e+00
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %67, float %5886, float %5887, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = call float @dx.op.unary.f32(i32 25, float %5898)  ; Rsqrt(value)
  %5900 = fmul fast float %5899, %5886
  %5901 = fmul fast float %5899, %5887
  %5902 = fmul fast float %5899, %67
  %5903 = fmul fast float %5897, %5897
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = fmul fast float %5894, 0x40005F8BE0000000
  %5906 = fsub fast float 0x400C5BF8A0000000, %5905
  %5907 = fdiv fast float %5895, %5906
  %5908 = fmul fast float %5907, 0x3FEE31C3C0000000
  %5909 = fmul fast float %5908, %5904
  %5910 = fmul fast float %5894, 0x3FDACB7480000000
  %5911 = fadd fast float %5910, 0xBFD7347680000000
  %5912 = fmul fast float %5911, %5907
  %5913 = fmul fast float %5912, %5904
  br label %5914

; <label>:5914                                    ; preds = %5885, %5858
  %5915 = phi float [ %5900, %5885 ], [ 0.000000e+00, %5858 ]
  %5916 = phi float [ %5901, %5885 ], [ 0.000000e+00, %5858 ]
  %5917 = phi float [ %5902, %5885 ], [ 0.000000e+00, %5858 ]
  %5918 = phi float [ %5909, %5885 ], [ 0.000000e+00, %5858 ]
  %5919 = phi float [ %5913, %5885 ], [ 0.000000e+00, %5858 ]
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5916, float %5917, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = fmul fast float %5920, %5920
  %5922 = fmul fast float %5921, 0x3FEE471020000000
  %5923 = fadd fast float %5922, 0xBFD42F6020000000
  %5924 = fmul fast float %5880, 0x3FD20DD760000000
  %5925 = fmul fast float %5923, %5919
  %5926 = fmul fast float %5918, 0x3FDF454380000000
  %5927 = fmul fast float %5926, %5920
  %5928 = fadd fast float %5927, %5924
  %5929 = fadd fast float %5928, %5925
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5916, float %5917, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fmul fast float %5930, 0x3FDF454380000000
  %5932 = fmul fast float %5930, %5930
  %5933 = fmul fast float %5932, 0x3FEE471020000000
  %5934 = fadd fast float %5933, 0xBFD42F6020000000
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5918, float %5919, float 0x3FD20DD760000000, float %5931, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5817, float 0.000000e+00)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5873, float 0.000000e+00)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 35, float %5823, float 0.000000e+00)  ; FMax(a,b)
  %5940 = call float @dx.op.binary.f32(i32 35, float %5879, float 0.000000e+00)  ; FMax(a,b)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5935, float 0.000000e+00)  ; FMax(a,b)
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = call float @dx.op.binary.f32(i32 36, float %5706, float %5943)  ; FMin(a,b)
  %5945 = fsub fast float 1.000000e+00, %5763
  %5946 = fmul fast float %5944, %5945
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = call float @dx.op.binary.f32(i32 36, float %5707, float %5943)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5945
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = call float @dx.op.binary.f32(i32 36, float %5708, float %5943)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5945
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = bitcast float %5959 to i32
  %5961 = sub nsw i32 2129859010, %5960
  %5962 = bitcast i32 %5961 to float
  %5963 = fmul fast float %5936, %5763
  %5964 = fmul fast float %5963, %5950
  %5965 = fmul fast float %5937, %5763
  %5966 = fmul fast float %5965, %5956
  %5967 = fmul fast float %5938, %5763
  %5968 = fmul fast float %5967, %5962
  %5969 = call float @dx.op.binary.f32(i32 36, float %5712, float %5943)  ; FMin(a,b)
  %5970 = fmul fast float %5969, %5945
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = bitcast float %5971 to i32
  %5973 = sub nsw i32 2129859010, %5972
  %5974 = bitcast i32 %5973 to float
  %5975 = call float @dx.op.binary.f32(i32 36, float %5713, float %5943)  ; FMin(a,b)
  %5976 = fmul fast float %5975, %5945
  %5977 = fsub fast float 1.000000e+00, %5976
  %5978 = bitcast float %5977 to i32
  %5979 = sub nsw i32 2129859010, %5978
  %5980 = bitcast i32 %5979 to float
  %5981 = call float @dx.op.binary.f32(i32 36, float %5752, float %5943)  ; FMin(a,b)
  %5982 = fmul fast float %5981, %5945
  %5983 = fsub fast float 1.000000e+00, %5982
  %5984 = bitcast float %5983 to i32
  %5985 = sub nsw i32 2129859010, %5984
  %5986 = bitcast i32 %5985 to float
  %5987 = fmul fast float %5939, %5763
  %5988 = fmul fast float %5987, %5974
  %5989 = fmul fast float %5940, %5763
  %5990 = fmul fast float %5989, %5980
  %5991 = fmul fast float %5941, %5763
  %5992 = fmul fast float %5991, %5986
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5966, float %5968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = select i1 %219, float 0.000000e+00, float %5964
  %5995 = select i1 %219, float %5993, float %5966
  %5996 = select i1 %219, float 0.000000e+00, float %5968
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5990, float %5992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = select i1 %219, float 0.000000e+00, float %5988
  %5999 = select i1 %219, float %5997, float %5990
  %6000 = select i1 %219, float 0.000000e+00, float %5992
  %6001 = fmul fast float %4423, %4423
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fmul fast float %5754, 9.843750e-01
  %6004 = fmul fast float %5715, 9.843750e-01
  %6005 = fadd fast float %6003, 7.812500e-03
  %6006 = fadd fast float %6004, 7.812500e-03
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %6005, float %6006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.ResRet.f32 %6007, 3
  %6012 = fsub fast float 1.000000e+00, %6002
  %6013 = fsub fast float %6010, %6008
  %6014 = fsub fast float %6011, %6009
  %6015 = fmul fast float %6013, %6012
  %6016 = fmul fast float %6014, %6012
  %6017 = fadd fast float %6015, %6008
  %6018 = fadd fast float %6016, %6009
  %6019 = fmul fast float %6017, %5712
  %6020 = fmul fast float %6017, %5713
  %6021 = fmul fast float %6017, %5752
  %6022 = fadd fast float %6019, %6018
  %6023 = fadd fast float %6020, %6018
  %6024 = fadd fast float %6021, %6018
  %6025 = fcmp fast ogt float %5075, 0.000000e+00
  br i1 %6025, label %6026, label %6052

; <label>:6026                                    ; preds = %5914
  %6027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.ResRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.ResRet.f32 %6027, 2
  %6031 = fadd fast float %6028, -5.000000e-01
  %6032 = fadd fast float %6029, -5.000000e-01
  %6033 = fadd fast float %6030, -5.000000e-01
  %6034 = fsub fast float 1.000000e+00, %5712
  %6035 = fsub fast float 1.000000e+00, %5713
  %6036 = fsub fast float 1.000000e+00, %5752
  %6037 = fmul fast float %5712, 4.000000e+00
  %6038 = fmul fast float %6037, %6034
  %6039 = fmul fast float %6038, %6031
  %6040 = fmul fast float %5713, 4.000000e+00
  %6041 = fmul fast float %6040, %6035
  %6042 = fmul fast float %6041, %6032
  %6043 = fmul fast float %5752, 4.000000e+00
  %6044 = fmul fast float %6043, %6036
  %6045 = fmul fast float %6044, %6033
  %6046 = fadd fast float %6039, %6022
  %6047 = fadd fast float %6042, %6023
  %6048 = fadd fast float %6045, %6024
  %6049 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6050 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6051 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  br label %6052

; <label>:6052                                    ; preds = %6026, %5914
  %6053 = phi float [ %6049, %6026 ], [ %6022, %5914 ]
  %6054 = phi float [ %6050, %6026 ], [ %6023, %5914 ]
  %6055 = phi float [ %6051, %6026 ], [ %6024, %5914 ]
  %6056 = call float @dx.op.binary.f32(i32 35, float %6054, float %6055)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 35, float %6053, float %6056)  ; FMax(a,b)
  %6058 = fsub fast float 1.000000e+00, %6057
  %6059 = fmul fast float %6058, %5994
  %6060 = fmul fast float %6058, %5995
  %6061 = fmul fast float %6058, %5996
  %6062 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fcmp fast ogt float %6062, 0x3E7FF19E20000000
  %6064 = fdiv fast float 1.000000e+00, %6062
  %6065 = select i1 %6063, float %6064, float 0.000000e+00
  %6066 = fmul fast float %6065, %5706
  %6067 = fmul fast float %6065, %5707
  %6068 = fmul fast float %6065, %5708
  %6069 = fadd fast float %6066, -1.000000e+00
  %6070 = fadd fast float %6067, -1.000000e+00
  %6071 = fadd fast float %6068, -1.000000e+00
  %6072 = fmul fast float %6069, 5.000000e-01
  %6073 = fmul fast float %6070, 5.000000e-01
  %6074 = fmul fast float %6071, 5.000000e-01
  %6075 = fadd fast float %6072, 1.000000e+00
  %6076 = fadd fast float %6073, 1.000000e+00
  %6077 = fadd fast float %6074, 1.000000e+00
  %6078 = call float @dx.op.binary.f32(i32 35, float %5754, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6079 = fdiv fast float %4423, %6078
  %6080 = fcmp fast olt float %5124, 1.270000e+02
  %6081 = fcmp fast olt float %5125, 1.270000e+02
  %6082 = fcmp fast olt float %5126, 1.270000e+02
  %6083 = fmul fast float %5124, 0xBFF7154760000000
  %6084 = fmul fast float %6083, %6079
  %6085 = fmul fast float %5125, 0xBFF7154760000000
  %6086 = fmul fast float %6085, %6079
  %6087 = fmul fast float %5126, 0xBFF7154760000000
  %6088 = fmul fast float %6087, %6079
  %6089 = call float @dx.op.unary.f32(i32 21, float %6084)  ; Exp(value)
  %6090 = call float @dx.op.unary.f32(i32 21, float %6086)  ; Exp(value)
  %6091 = call float @dx.op.unary.f32(i32 21, float %6088)  ; Exp(value)
  %6092 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6093 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6094 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6095 = select i1 %6080, float %6092, float 0.000000e+00
  %6096 = select i1 %6081, float %6093, float 0.000000e+00
  %6097 = select i1 %6082, float %6094, float 0.000000e+00
  %6098 = fmul fast float %6095, %6058
  %6099 = fmul fast float %6096, %6058
  %6100 = fmul fast float %6097, %6058
  %6101 = fadd fast float %6098, -1.000000e+00
  %6102 = fadd fast float %6099, -1.000000e+00
  %6103 = fadd fast float %6100, -1.000000e+00
  %6104 = fmul fast float %6101, %5072
  %6105 = fmul fast float %6102, %5072
  %6106 = fmul fast float %6103, %5072
  %6107 = fadd fast float %6104, 1.000000e+00
  %6108 = fadd fast float %6105, 1.000000e+00
  %6109 = fadd fast float %6106, 1.000000e+00
  %6110 = fmul fast float %5713, 0x401CF23780000000
  %6111 = fadd fast float %6110, 0x3FF32641C0000000
  %6112 = fdiv fast float 1.000000e+00, %6111
  %6113 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5701, float %5700, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = fmul fast float %6112, %6112
  %6115 = fmul fast float %6113, %6113
  %6116 = fsub fast float 1.000000e+00, %6115
  %6117 = fmul fast float %6114, %6116
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = fcmp fast oge float %6118, 0.000000e+00
  %6120 = fmul fast float %6112, %5702
  %6121 = fmul fast float %6112, %5701
  %6122 = fmul fast float %6112, %5700
  %6123 = call float @dx.op.unary.f32(i32 24, float %6118)  ; Sqrt(value)
  %6124 = fmul fast float %6113, %6112
  %6125 = fadd fast float %6124, %6123
  %6126 = fmul fast float %6125, %5709
  %6127 = fmul fast float %6125, %5710
  %6128 = fmul fast float %6125, %5711
  %6129 = fsub fast float %6120, %6126
  %6130 = fsub fast float %6121, %6127
  %6131 = fsub fast float %6122, %6128
  %6132 = select i1 %6119, float %6129, float 0.000000e+00
  %6133 = select i1 %6119, float %6130, float 0.000000e+00
  %6134 = select i1 %6119, float %6131, float 0.000000e+00
  %6135 = fmul fast float %6132, %4423
  %6136 = fmul fast float %6133, %4423
  %6137 = fmul fast float %6134, %4423
  %6138 = fadd fast float %6135, %5749
  %6139 = fadd fast float %6136, %5750
  %6140 = fadd fast float %6137, %5751
  %6141 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5143, float %5144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = fsub fast float 1.000000e+00, %5715
  %6143 = fmul fast float %6142, %5072
  %6144 = fsub fast float 1.000000e+00, %6143
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = fmul fast float %5713, 0x4012D0A400000000
  %6148 = fadd fast float %6147, 0x3FDB6377A0000000
  %6149 = fmul fast float %6146, %6148
  %6150 = fadd fast float %6149, %6141
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = fmul fast float %6053, %5998
  %6153 = fmul fast float %6054, %5999
  %6154 = fmul fast float %6055, %6000
  %6155 = fsub fast float 1.000000e+00, %5754
  %6156 = bitcast float %6155 to i32
  %6157 = sitofp i32 %6156 to float
  %6158 = fmul fast float %6157, 5.000000e+00
  %6159 = fadd fast float %6158, 0xC1EFBF8940000000
  %6160 = fptosi float %6159 to i32
  %6161 = bitcast i32 %6160 to float
  %6162 = fmul fast float %6161, %5076
  %6163 = fmul fast float %5994, %6162
  %6164 = fmul fast float %6163, %6058
  %6165 = fmul fast float %6164, %6075
  %6166 = fmul fast float %5995, %6162
  %6167 = fmul fast float %6166, %6058
  %6168 = fmul fast float %6167, %6076
  %6169 = fmul fast float %5996, %6162
  %6170 = fmul fast float %6169, %6058
  %6171 = fmul fast float %6170, %6077
  %6172 = fmul fast float %6059, %5072
  %6173 = fmul fast float %6060, %5072
  %6174 = fmul fast float %6061, %5072
  %6175 = fsub fast float 1.000000e+00, %6151
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6190 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6191 = fmul fast float %6138, %6177
  %6192 = call float @dx.op.tertiary.f32(i32 46, float %6139, float %6178, float %6191)  ; FMad(a,b,c)
  %6193 = call float @dx.op.tertiary.f32(i32 46, float %6140, float %6179, float %6192)  ; FMad(a,b,c)
  %6194 = fadd fast float %6193, %6180
  %6195 = fmul fast float %6138, %6182
  %6196 = call float @dx.op.tertiary.f32(i32 46, float %6139, float %6183, float %6195)  ; FMad(a,b,c)
  %6197 = call float @dx.op.tertiary.f32(i32 46, float %6140, float %6184, float %6196)  ; FMad(a,b,c)
  %6198 = fadd fast float %6197, %6185
  %6199 = fmul fast float %6138, %6187
  %6200 = call float @dx.op.tertiary.f32(i32 46, float %6139, float %6188, float %6199)  ; FMad(a,b,c)
  %6201 = call float @dx.op.tertiary.f32(i32 46, float %6140, float %6189, float %6200)  ; FMad(a,b,c)
  %6202 = fadd fast float %6201, %6190
  %6203 = fdiv fast float %6194, %6202
  %6204 = fdiv fast float %6198, %6202
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = fmul fast float %6206, %6203
  %6209 = fmul fast float %6207, %6204
  %6210 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6212 = fadd fast float %6208, %6210
  %6213 = fadd fast float %6209, %6211
  %6214 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6215 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = fmul fast float %6217, %6214
  %6220 = fmul fast float %6218, %6215
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6224 = fsub fast float %6222, %6223
  %6225 = fmul fast float %6224, %6175
  %6226 = fadd fast float %6225, %6223
  %6227 = fmul fast float %232, 2.000000e+00
  %6228 = fmul fast float %233, 2.000000e+00
  %6229 = fadd fast float %6227, -1.000000e+00
  %6230 = fadd fast float %6228, -1.000000e+00
  %6231 = fmul fast float %6226, %6229
  %6232 = fmul fast float %6226, %6230
  %6233 = fadd fast float %6231, %6219
  %6234 = fadd fast float %6232, %6220
  %6235 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6236 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6237 = fmul fast float %6233, %6235
  %6238 = fmul fast float %6234, %6236
  %6239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6237, float %6238, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6240 = extractvalue %dx.types.ResRet.f32 %6239, 0
  %6241 = fcmp fast ogt float %6240, -1.000000e+00
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %6244 = select i1 %6241, float %6243, float 1.000000e+00
  %6245 = fadd fast float %6240, 1.000000e+00
  %6246 = fmul fast float %6244, %6245
  %6247 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6248 = fsub fast float %6247, %6202
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6251 = fmul fast float %6250, %6247
  %6252 = fdiv fast float 1.600000e+02, %6251
  %6253 = fmul fast float %6151, %6151
  %6254 = fmul fast float %6253, 0xBFB5B17960000000
  %6255 = fmul fast float %6254, %6248
  %6256 = fmul fast float %6255, %6252
  %6257 = call float @dx.op.unary.f32(i32 21, float %6256)  ; Exp(value)
  %6258 = fmul fast float %6257, 0x3FF04B2960000000
  %6259 = fsub fast float 0x3FF04B2960000000, %6258
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = fmul fast float %6260, 4.000000e+00
  %6262 = fadd fast float %232, -5.000000e-01
  %6263 = fadd fast float %233, -5.000000e-01
  %6264 = fmul fast float %6260, 0x3FBEB851E0000000
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6266 = fmul fast float %6265, %6262
  %6267 = fmul fast float %6265, %6263
  %6268 = fadd fast float %6266, %6212
  %6269 = fadd fast float %6267, %6213
  %6270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.i32 %6270, 0
  %6272 = icmp eq i32 %6271, 0
  br i1 %6272, label %6278, label %6273, !dx.controlflow.hints !96

; <label>:6273                                    ; preds = %6052
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float %6261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.ResRet.f32 %6274, 2
  br label %6283

; <label>:6278                                    ; preds = %6052
  %6279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float %6261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  br label %6283

; <label>:6283                                    ; preds = %6278, %6273
  %6284 = phi float [ %6275, %6273 ], [ %6280, %6278 ]
  %6285 = phi float [ %6276, %6273 ], [ %6281, %6278 ]
  %6286 = phi float [ %6277, %6273 ], [ %6282, %6278 ]
  %6287 = select i1 %219, float 0.000000e+00, float %6285
  %6288 = select i1 %219, float 0.000000e+00, float %6286
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6291 = fmul fast float %6284, %6107
  %6292 = fmul fast float %6291, %6290
  %6293 = fmul fast float %6287, %6108
  %6294 = fmul fast float %6293, %6290
  %6295 = fmul fast float %6288, %6109
  %6296 = fmul fast float %6295, %6290
  %6297 = fadd fast float %6152, %5062
  %6298 = fadd fast float %6297, %6165
  %6299 = fadd fast float %6298, %6292
  %6300 = fmul fast float %6299, %5072
  %6301 = fadd fast float %6153, %5063
  %6302 = fadd fast float %6301, %6168
  %6303 = fadd fast float %6302, %6294
  %6304 = fmul fast float %6303, %5072
  %6305 = fadd fast float %6154, %5064
  %6306 = fadd fast float %6305, %6171
  %6307 = fadd fast float %6306, %6296
  %6308 = fmul fast float %6307, %5072
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 3
  %6311 = fcmp fast oeq float %6310, 0.000000e+00
  br i1 %6311, label %7516, label %6312

; <label>:6312                                    ; preds = %6283
  %6313 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = call float @dx.op.dot3.f32(i32 55, float %6317, float %6318, float %6319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = select i1 %219, float %6321, float %6317
  %6325 = select i1 %219, float %6323, float %6318
  %6326 = select i1 %219, float %6322, float %6319
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 2
  %6329 = fmul fast float %6328, %109
  %6330 = fmul fast float %6328, %110
  %6331 = fmul fast float %6328, %111
  %6332 = fadd fast float %6329, %157
  %6333 = fadd fast float %6330, %158
  %6334 = fadd fast float %6331, %159
  %6335 = fcmp fast olt float %6310, 0.000000e+00
  br i1 %6335, label %6960, label %6336

; <label>:6336                                    ; preds = %6312
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = extractvalue %dx.types.CBufRet.f32 %6337, 1
  %6340 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6341 = extractvalue %dx.types.CBufRet.f32 %6337, 3
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6346 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6351 = extractvalue %dx.types.CBufRet.f32 %6347, 3
  %6352 = fmul fast float %6338, %6332
  %6353 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6339, float %6352)  ; FMad(a,b,c)
  %6354 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6340, float %6353)  ; FMad(a,b,c)
  %6355 = fadd fast float %6354, %6341
  %6356 = fmul fast float %6343, %6332
  %6357 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6344, float %6356)  ; FMad(a,b,c)
  %6358 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6345, float %6357)  ; FMad(a,b,c)
  %6359 = fadd fast float %6358, %6346
  %6360 = fmul fast float %6348, %6332
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6349, float %6360)  ; FMad(a,b,c)
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6350, float %6361)  ; FMad(a,b,c)
  %6363 = fadd fast float %6362, %6351
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 0
  %6366 = extractvalue %dx.types.CBufRet.f32 %6364, 1
  %6367 = extractvalue %dx.types.CBufRet.f32 %6364, 3
  %6368 = fmul fast float %6367, %6355
  %6369 = fmul fast float %6367, %6359
  %6370 = fadd fast float %6368, %6365
  %6371 = fadd fast float %6369, %6366
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6376 = fmul fast float %6375, %6355
  %6377 = fmul fast float %6375, %6359
  %6378 = fadd fast float %6376, %6373
  %6379 = fadd fast float %6377, %6374
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6382 = fsub fast float %6381, %6363
  %6383 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6384 = fmul fast float %6382, %6383
  %6385 = fsub fast float 1.000000e+00, %6384
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6390 = fadd fast float %6389, %6387
  %6391 = fcmp fast ogt float %6390, 0.000000e+00
  br i1 %6391, label %6392, label %6416

; <label>:6392                                    ; preds = %6336
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = fsub fast float %6378, %6394
  %6397 = fsub fast float %6379, %6395
  %6398 = fcmp fast olt float %6396, 0.000000e+00
  %6399 = fcmp fast olt float %6397, 0.000000e+00
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6404 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6405 = select i1 %6398, float %6401, float %6403
  %6406 = select i1 %6399, float %6402, float %6404
  %6407 = fmul fast float %6405, %6396
  %6408 = fmul fast float %6406, %6397
  %6409 = call float @dx.op.unary.f32(i32 6, float %6407)  ; FAbs(value)
  %6410 = call float @dx.op.unary.f32(i32 6, float %6408)  ; FAbs(value)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %6412 = call float @dx.op.binary.f32(i32 35, float %6409, float %6410)  ; FMax(a,b)
  %6413 = fsub fast float %6411, %6412
  %6414 = call float @dx.op.unary.f32(i32 7, float %6413)  ; Saturate(value)
  %6415 = fmul fast float %6414, %6386
  br label %6416

; <label>:6416                                    ; preds = %6392, %6336
  %6417 = phi float [ %6415, %6392 ], [ 0.000000e+00, %6336 ]
  %6418 = extractvalue %dx.types.CBufRet.f32 %6364, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6420 = fadd fast float %6419, %6418
  %6421 = fcmp fast ogt float %6420, 0.000000e+00
  %6422 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  br i1 %6421, label %6423, label %6446

; <label>:6423                                    ; preds = %6416
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = fsub fast float %6370, %6425
  %6428 = fsub fast float %6371, %6426
  %6429 = fcmp fast olt float %6427, 0.000000e+00
  %6430 = fcmp fast olt float %6428, 0.000000e+00
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = select i1 %6429, float %6432, float %6434
  %6437 = select i1 %6430, float %6433, float %6435
  %6438 = fmul fast float %6436, %6427
  %6439 = fmul fast float %6437, %6428
  %6440 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6441 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6442 = call float @dx.op.binary.f32(i32 35, float %6440, float %6441)  ; FMax(a,b)
  %6443 = fsub fast float %6422, %6442
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = fmul fast float %6444, %6386
  br label %6446

; <label>:6446                                    ; preds = %6423, %6416
  %6447 = phi float [ %6445, %6423 ], [ 0.000000e+00, %6416 ]
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6450 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = fsub fast float %6355, %6452
  %6455 = fsub fast float %6359, %6453
  %6456 = fcmp fast olt float %6454, 0.000000e+00
  %6457 = fcmp fast olt float %6455, 0.000000e+00
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.CBufRet.f32 %6458, 1
  %6461 = extractvalue %dx.types.CBufRet.f32 %6458, 2
  %6462 = extractvalue %dx.types.CBufRet.f32 %6458, 3
  %6463 = select i1 %6456, float %6459, float %6461
  %6464 = select i1 %6457, float %6460, float %6462
  %6465 = fmul fast float %6463, %6454
  %6466 = fmul fast float %6464, %6455
  %6467 = call float @dx.op.unary.f32(i32 6, float %6465)  ; FAbs(value)
  %6468 = call float @dx.op.unary.f32(i32 6, float %6466)  ; FAbs(value)
  %6469 = call float @dx.op.binary.f32(i32 35, float %6467, float %6468)  ; FMax(a,b)
  %6470 = fsub fast float %6422, %6469
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = call float @dx.op.binary.f32(i32 36, float %6471, float %6450)  ; FMin(a,b)
  %6473 = fmul fast float %6472, %6386
  %6474 = fsub fast float %6447, %6473
  %6475 = fsub fast float %6417, %6447
  %6476 = fsub fast float %6475, %6473
  %6477 = call float @dx.op.binary.f32(i32 35, float %6447, float %6417)  ; FMax(a,b)
  %6478 = call float @dx.op.binary.f32(i32 35, float %6473, float %6477)  ; FMax(a,b)
  %6479 = fcmp fast olt float %6478, 1.000000e+00
  br i1 %6479, label %6480, label %6878, !dx.controlflow.hints !97

; <label>:6480                                    ; preds = %6446
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = fcmp fast une float %6482, 0.000000e+00
  br i1 %6483, label %6484, label %6878, !dx.controlflow.hints !98

; <label>:6484                                    ; preds = %6480
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6489 = extractvalue %dx.types.CBufRet.f32 %6485, 3
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6494 = extractvalue %dx.types.CBufRet.f32 %6490, 3
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6500 = fmul fast float %6486, %6332
  %6501 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6487, float %6500)  ; FMad(a,b,c)
  %6502 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6488, float %6501)  ; FMad(a,b,c)
  %6503 = fadd fast float %6502, %6489
  %6504 = fmul fast float %6491, %6332
  %6505 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6492, float %6504)  ; FMad(a,b,c)
  %6506 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6493, float %6505)  ; FMad(a,b,c)
  %6507 = fadd fast float %6506, %6494
  %6508 = fmul fast float %6496, %6332
  %6509 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6497, float %6508)  ; FMad(a,b,c)
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6498, float %6509)  ; FMad(a,b,c)
  %6511 = fadd fast float %6510, %6499
  %6512 = fcmp fast oge float %6503, 1.000000e+00
  %6513 = fcmp fast oge float %6507, 1.000000e+00
  %6514 = or i1 %6512, %6513
  %6515 = fcmp fast olt float %6503, 0.000000e+00
  %6516 = fcmp fast olt float %6507, 0.000000e+00
  %6517 = or i1 %6515, %6516
  %6518 = or i1 %6514, %6517
  br i1 %6518, label %6878, label %6519, !dx.controlflow.hints !99

; <label>:6519                                    ; preds = %6484
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.i32 %6524, 2
  %6526 = uitofp i32 %6525 to float
  %6527 = extractvalue %dx.types.CBufRet.i32 %6524, 3
  %6528 = uitofp i32 %6527 to float
  %6529 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6530 = fmul fast float %6529, 2.000000e+00
  %6531 = fsub fast float %6503, %6521
  %6532 = fsub fast float %6507, %6522
  %6533 = fmul fast float %6530, %6531
  %6534 = fmul fast float %6530, %6532
  %6535 = fdiv fast float 1.000000e+00, %6315
  %6536 = fmul fast float %6534, %6535
  %6537 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6538 = fmul fast float %6523, %6334
  %6539 = fmul fast float %6538, %6530
  %6540 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6541 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6542 = call float @dx.op.binary.f32(i32 35, float %6540, float %6537)  ; FMax(a,b)
  %6543 = call float @dx.op.binary.f32(i32 35, float %6541, float %6542)  ; FMax(a,b)
  %6544 = fmul fast float %6543, 2.000000e+00
  %6545 = call float @dx.op.unary.f32(i32 23, float %6544)  ; Log(value)
  %6546 = call float @dx.op.binary.f32(i32 35, float %6545, float %6526)  ; FMax(a,b)
  %6547 = call float @dx.op.unary.f32(i32 22, float %6546)  ; Frc(value)
  %6548 = fadd fast float %6547, 0xBFEA666660000000
  %6549 = fmul fast float %6548, 8.000000e+00
  %6550 = call float @dx.op.unary.f32(i32 7, float %6549)  ; Saturate(value)
  %6551 = call float @dx.op.unary.f32(i32 27, float %6546)  ; Round_ni(value)
  %6552 = fadd fast float %6551, %6550
  %6553 = call float @dx.op.binary.f32(i32 36, float %6552, float %6528)  ; FMin(a,b)
  %6554 = call float @dx.op.unary.f32(i32 27, float %6553)  ; Round_ni(value)
  %6555 = fsub fast float -0.000000e+00, %6554
  %6556 = call float @dx.op.unary.f32(i32 21, float %6555)  ; Exp(value)
  %6557 = fmul fast float %6556, %6530
  %6558 = fmul fast float %6557, %6503
  %6559 = fmul fast float %6557, %6507
  %6560 = fmul fast float %6558, 2.500000e-01
  %6561 = fmul fast float %6559, 2.500000e-01
  %6562 = fadd fast float %6560, 5.000000e-01
  %6563 = fadd fast float %6561, 5.000000e-01
  %6564 = fsub fast float %6528, %6526
  %6565 = fptoui float %6564 to i32
  %6566 = add i32 %6565, 320
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6566)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = fcmp fast une float %6553, %6528
  %6571 = fsub fast float %6503, %6568
  %6572 = fsub fast float %6507, %6569
  %6573 = call float @dx.op.unary.f32(i32 6, float %6571)  ; FAbs(value)
  %6574 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6575 = fmul fast float %6573, %6557
  %6576 = fmul fast float %6574, %6557
  %6577 = fcmp fast olt float %6575, 1.000000e+00
  %6578 = fcmp fast olt float %6576, 1.000000e+00
  %6579 = and i1 %6577, %6578
  %6580 = or i1 %6570, %6579
  br i1 %6580, label %6581, label %6878, !dx.controlflow.hints !100

; <label>:6581                                    ; preds = %6519
  %6582 = fmul fast float %6559, 5.000000e-01
  %6583 = fmul fast float %6558, 5.000000e-01
  %6584 = fadd fast float %6582, 5.000000e-01
  %6585 = fadd fast float %6583, 5.000000e-01
  %6586 = sitofp i32 %6525 to float
  %6587 = fsub fast float %6553, %6586
  %6588 = call float @dx.op.unary.f32(i32 27, float %6587)  ; Round_ni(value)
  %6589 = call float @dx.op.unary.f32(i32 22, float %6553)  ; Frc(value)
  %6590 = call float @dx.op.unary.f32(i32 22, float %6585)  ; Frc(value)
  %6591 = call float @dx.op.unary.f32(i32 22, float %6584)  ; Frc(value)
  %6592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6590, float %6591, float %6588, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = extractvalue %dx.types.ResRet.f32 %6592, 3
  %6597 = fcmp fast ogt float %6589, 0.000000e+00
  br i1 %6597, label %6598, label %6619, !dx.controlflow.hints !101

; <label>:6598                                    ; preds = %6581
  %6599 = fadd fast float %6588, 1.000000e+00
  %6600 = call float @dx.op.unary.f32(i32 22, float %6562)  ; Frc(value)
  %6601 = call float @dx.op.unary.f32(i32 22, float %6563)  ; Frc(value)
  %6602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6600, float %6601, float %6599, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6607 = fsub fast float %6603, %6593
  %6608 = fsub fast float %6604, %6594
  %6609 = fsub fast float %6605, %6595
  %6610 = fsub fast float %6606, %6596
  %6611 = fmul fast float %6607, %6589
  %6612 = fmul fast float %6608, %6589
  %6613 = fmul fast float %6609, %6589
  %6614 = fmul fast float %6610, %6589
  %6615 = fadd fast float %6611, %6593
  %6616 = fadd fast float %6612, %6594
  %6617 = fadd fast float %6613, %6595
  %6618 = fadd fast float %6614, %6596
  br label %6619

; <label>:6619                                    ; preds = %6598, %6581
  %6620 = phi float [ %6615, %6598 ], [ %6593, %6581 ]
  %6621 = phi float [ %6616, %6598 ], [ %6594, %6581 ]
  %6622 = phi float [ %6617, %6598 ], [ %6595, %6581 ]
  %6623 = phi float [ %6618, %6598 ], [ %6596, %6581 ]
  %6624 = fadd fast float %6620, -5.000000e-01
  %6625 = fadd fast float %6622, -5.000000e-01
  %6626 = fmul fast float %6624, 0xBFD5555560000000
  %6627 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6625, float %6626)  ; FMad(a,b,c)
  %6628 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6621, float 0.000000e+00)  ; FMad(a,b,c)
  %6629 = fadd fast float %6628, %6623
  %6630 = fmul fast float %6624, -7.500000e-01
  %6631 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6625, float %6630)  ; FMad(a,b,c)
  %6632 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6621, float 0.000000e+00)  ; FMad(a,b,c)
  %6633 = fadd fast float %6632, %6623
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6641 = fsub fast float %6637, %6627
  %6642 = fsub fast float %6638, %6629
  %6643 = fsub fast float %6639, %6631
  %6644 = fsub fast float %6640, %6633
  %6645 = fmul fast float %6641, %6635
  %6646 = fmul fast float %6642, %6635
  %6647 = fmul fast float %6643, %6635
  %6648 = fmul fast float %6644, %6635
  %6649 = fadd fast float %6645, %6627
  %6650 = fadd fast float %6646, %6629
  %6651 = fadd fast float %6647, %6631
  %6652 = fadd fast float %6648, %6633
  %6653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6654 = extractvalue %dx.types.ResRet.i32 %6653, 0
  %6655 = and i32 %6654, 536870911
  %6656 = uitofp i32 %6655 to float
  %6657 = fmul fast float %6656, %6503
  %6658 = fmul fast float %6656, %6507
  %6659 = fptoui float %6657 to i32
  %6660 = fptoui float %6658 to i32
  %6661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6662 = extractvalue %dx.types.ResRet.i32 %6661, 0
  %6663 = and i32 %6662, 31
  %6664 = lshr i32 %6659, %6663
  %6665 = lshr i32 %6660, %6663
  %6666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6667 = extractvalue %dx.types.ResRet.i32 %6666, 0
  %6668 = and i32 %6667, 31
  %6669 = shl i32 1, %6668
  %6670 = call i32 @dx.op.binary.i32(i32 40, i32 %6669, i32 4)  ; UMin(a,b)
  %6671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.i32 %6671, 0
  %6673 = extractvalue %dx.types.ResRet.i32 %6671, 1
  %6674 = icmp eq i32 %6670, 0
  br i1 %6674, label %6716, label %6675

; <label>:6675                                    ; preds = %6619
  br label %6676

; <label>:6676                                    ; preds = %6704, %6675
  %6677 = phi i32 [ %6707, %6704 ], [ 0, %6675 ]
  %6678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6679 = extractvalue %dx.types.ResRet.i32 %6678, 0
  %6680 = lshr i32 %6679, 16
  %6681 = and i32 %6680, 31
  %6682 = shl i32 %6665, %6681
  %6683 = add i32 %6682, %6664
  %6684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.i32 %6684, 0
  %6686 = and i32 %6685, 31
  %6687 = shl i32 %6683, %6686
  %6688 = add i32 %6687, %6677
  %6689 = shl i32 %6688, 2
  %6690 = add i32 %6689, 32
  %6691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6690, i32 undef)  ; BufferLoad(srv,index,wot)
  %6692 = extractvalue %dx.types.ResRet.i32 %6691, 0
  %6693 = icmp slt i32 %6692, 0
  %6694 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6677
  %6695 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6677
  %6696 = bitcast float* %6694 to i32*
  %6697 = bitcast float* %6695 to i32*
  br i1 %6693, label %6698, label %6704

; <label>:6698                                    ; preds = %6676
  %6699 = and i32 %6692, 1073741823
  %6700 = add nuw nsw i32 %6699, 20
  %6701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6700, i32 undef)  ; BufferLoad(srv,index,wot)
  %6702 = extractvalue %dx.types.ResRet.i32 %6701, 0
  %6703 = extractvalue %dx.types.ResRet.i32 %6701, 1
  br label %6704

; <label>:6704                                    ; preds = %6698, %6676
  %6705 = phi i32 [ %6702, %6698 ], [ %6672, %6676 ]
  %6706 = phi i32 [ %6703, %6698 ], [ %6673, %6676 ]
  store i32 %6705, i32* %6696, align 4
  store i32 %6706, i32* %6697, align 4
  %6707 = add nuw i32 %6677, 1
  %6708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.i32 %6708, 2
  %6710 = icmp eq i32 %6709, 0
  %6711 = icmp ugt i32 %6692, -1073741825
  %6712 = and i1 %6711, %6710
  %6713 = icmp ult i32 %6707, %6670
  %6714 = and i1 %6712, %6713
  br i1 %6714, label %6676, label %6715

; <label>:6715                                    ; preds = %6704
  br label %6716

; <label>:6716                                    ; preds = %6715, %6619
  %6717 = phi i32 [ 0, %6619 ], [ %6707, %6715 ]
  %6718 = extractvalue %dx.types.CBufRet.f32 %6481, 2
  %6719 = fptoui float %6718 to i32
  %6720 = icmp eq i32 %6719, 0
  br i1 %6720, label %6772, label %6721

; <label>:6721                                    ; preds = %6716
  br label %6722

; <label>:6722                                    ; preds = %6767, %6721
  %6723 = phi i32 [ %6768, %6767 ], [ %6717, %6721 ]
  %6724 = phi i32 [ %6769, %6767 ], [ 0, %6721 ]
  %6725 = lshr i32 %6724, 2
  %6726 = and i32 %6724, 3
  %6727 = add nuw nsw i32 %6725, 83
  %6728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6727)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.i32 %6728, 0
  %6730 = extractvalue %dx.types.CBufRet.i32 %6728, 1
  %6731 = extractvalue %dx.types.CBufRet.i32 %6728, 2
  %6732 = extractvalue %dx.types.CBufRet.i32 %6728, 3
  %6733 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6729, i32* %6733, align 4
  %6734 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6730, i32* %6734, align 4
  %6735 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6731, i32* %6735, align 4
  %6736 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6732, i32* %6736, align 4
  %6737 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6726
  %6738 = load i32, i32* %6737, align 4, !tbaa !102, !noalias !106
  %6739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.i32 %6739, 0
  %6741 = lshr i32 %6740, 16
  %6742 = and i32 %6741, 31
  %6743 = shl i32 %6665, %6742
  %6744 = add i32 %6743, %6664
  %6745 = shl i32 %6744, 2
  %6746 = add i32 %6745, %6738
  %6747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6746, i32 undef)  ; BufferLoad(srv,index,wot)
  %6748 = extractvalue %dx.types.ResRet.i32 %6747, 0
  %6749 = icmp eq i32 %6748, 0
  br i1 %6749, label %6767, label %6750

; <label>:6750                                    ; preds = %6722
  %6751 = icmp slt i32 %6748, 0
  %6752 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6723
  %6753 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6723
  %6754 = bitcast float* %6752 to i32*
  %6755 = bitcast float* %6753 to i32*
  br i1 %6751, label %6756, label %6763

; <label>:6756                                    ; preds = %6750
  %6757 = and i32 %6748, 1073741823
  %6758 = add i32 %6738, 20
  %6759 = add i32 %6758, %6757
  %6760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6759, i32 undef)  ; BufferLoad(srv,index,wot)
  %6761 = extractvalue %dx.types.ResRet.i32 %6760, 0
  %6762 = extractvalue %dx.types.ResRet.i32 %6760, 1
  br label %6763

; <label>:6763                                    ; preds = %6756, %6750
  %6764 = phi i32 [ %6761, %6756 ], [ %6672, %6750 ]
  %6765 = phi i32 [ %6762, %6756 ], [ %6673, %6750 ]
  store i32 %6764, i32* %6754, align 4
  store i32 %6765, i32* %6755, align 4
  %6766 = add i32 %6723, 1
  br label %6767

; <label>:6767                                    ; preds = %6763, %6722
  %6768 = phi i32 [ %6723, %6722 ], [ %6766, %6763 ]
  %6769 = add nuw i32 %6724, 1
  %6770 = icmp eq i32 %6769, %6719
  br i1 %6770, label %6771, label %6722

; <label>:6771                                    ; preds = %6767
  br label %6772

; <label>:6772                                    ; preds = %6771, %6716
  %6773 = phi i32 [ %6717, %6716 ], [ %6768, %6771 ]
  %6774 = icmp eq i32 %6773, 1
  %6775 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6776 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6774, label %6777, label %6780

; <label>:6777                                    ; preds = %6772
  %6778 = load float, float* %6775, align 4
  %6779 = load float, float* %6776, align 4
  br label %6807

; <label>:6780                                    ; preds = %6772
  %6781 = load float, float* %6775, align 4
  %6782 = load float, float* %6776, align 4
  %6783 = fdiv fast float 1.000000e+00, %6782
  %6784 = fsub fast float %6781, %6783
  %6785 = icmp ugt i32 %6773, 1
  br i1 %6785, label %6786, label %6802

; <label>:6786                                    ; preds = %6780
  br label %6787

; <label>:6787                                    ; preds = %6787, %6786
  %6788 = phi float [ %6797, %6787 ], [ %6784, %6786 ]
  %6789 = phi float [ %6798, %6787 ], [ %6781, %6786 ]
  %6790 = phi i32 [ %6799, %6787 ], [ 1, %6786 ]
  %6791 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6790
  %6792 = load float, float* %6791, align 4
  %6793 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6790
  %6794 = load float, float* %6793, align 4
  %6795 = fdiv fast float 1.000000e+00, %6794
  %6796 = fsub fast float %6792, %6795
  %6797 = call float @dx.op.binary.f32(i32 36, float %6788, float %6796)  ; FMin(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6789, float %6792)  ; FMax(a,b)
  %6799 = add nuw i32 %6790, 1
  %6800 = icmp eq i32 %6799, %6773
  br i1 %6800, label %6801, label %6787

; <label>:6801                                    ; preds = %6787
  br label %6802

; <label>:6802                                    ; preds = %6801, %6780
  %6803 = phi float [ %6784, %6780 ], [ %6797, %6801 ]
  %6804 = phi float [ %6781, %6780 ], [ %6798, %6801 ]
  %6805 = fsub fast float %6804, %6803
  %6806 = fdiv fast float 1.000000e+00, %6805
  br label %6807

; <label>:6807                                    ; preds = %6802, %6777
  %6808 = phi float [ %6778, %6777 ], [ %6804, %6802 ]
  %6809 = phi float [ %6779, %6777 ], [ %6806, %6802 ]
  %6810 = fadd fast float %6511, %6808
  %6811 = fmul fast float %6810, %6809
  %6812 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6813 = fmul fast float %6812, 2.000000e+00
  %6814 = fsub fast float 1.000000e+00, %6813
  %6815 = fmul fast float %6649, %6649
  %6816 = fsub fast float %6650, %6815
  %6817 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6816)  ; FMax(a,b)
  %6818 = fdiv fast float 1.000000e+00, %6817
  %6819 = fmul fast float %6650, %6649
  %6820 = fsub fast float %6651, %6819
  %6821 = fsub fast float %6814, %6649
  %6822 = fmul fast float %6814, %6814
  %6823 = fsub fast float %6822, %6650
  %6824 = fmul fast float %6818, %6820
  %6825 = fmul fast float %6824, %6821
  %6826 = fsub fast float %6823, %6825
  %6827 = fmul fast float %6650, %6650
  %6828 = fsub fast float %6652, %6827
  %6829 = fmul fast float %6820, %6820
  %6830 = fmul fast float %6829, %6818
  %6831 = fsub fast float %6828, %6830
  %6832 = fdiv fast float %6826, %6831
  %6833 = fmul fast float %6832, %6820
  %6834 = fsub fast float %6821, %6833
  %6835 = fmul fast float %6834, %6818
  %6836 = fmul fast float %6835, %6649
  %6837 = fsub fast float 1.000000e+00, %6836
  %6838 = fmul fast float %6832, %6650
  %6839 = fsub fast float %6837, %6838
  %6840 = fmul fast float %6835, %6835
  %6841 = fmul fast float %6832, 4.000000e+00
  %6842 = fmul fast float %6841, %6839
  %6843 = fsub fast float %6840, %6842
  %6844 = call float @dx.op.unary.f32(i32 24, float %6843)  ; Sqrt(value)
  %6845 = fcmp fast oge float %6835, 0.000000e+00
  %6846 = fsub fast float -0.000000e+00, %6844
  %6847 = select i1 %6845, float %6846, float %6844
  %6848 = fsub fast float %6847, %6835
  %6849 = fdiv fast float %6848, %6832
  %6850 = fdiv fast float %6839, %6848
  %6851 = fmul fast float %6849, 5.000000e-01
  %6852 = fmul fast float %6850, 2.000000e+00
  %6853 = select i1 %6845, float %6851, float %6852
  %6854 = select i1 %6845, float %6852, float %6851
  %6855 = call float @dx.op.binary.f32(i32 35, float %6853, float %6854)  ; FMax(a,b)
  %6856 = call float @dx.op.binary.f32(i32 36, float %6853, float %6854)  ; FMin(a,b)
  %6857 = fcmp fast ogt float %6814, %6855
  %6858 = fsub fast float %6814, %6856
  %6859 = fsub fast float %6814, %6855
  %6860 = fsub fast float %6855, %6856
  %6861 = select i1 %6857, float %6859, float %6860
  %6862 = fmul float %6858, %6861
  %6863 = select i1 %6857, float %6856, float %6814
  %6864 = fcmp fast ogt float %6814, %6856
  %6865 = fmul fast float %6863, %6855
  %6866 = fadd fast float %6863, %6855
  %6867 = fmul fast float %6866, %6649
  %6868 = fadd fast float %6865, %6650
  %6869 = fsub fast float %6868, %6867
  %6870 = fdiv fast float %6869, %6862
  %6871 = select i1 %6864, float %6870, float 0.000000e+00
  %6872 = fsub fast float 1.000000e+00, %6871
  %6873 = select i1 %6857, float %6872, float %6871
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6634, 3
  %6876 = fmul fast float %6875, %6874
  %6877 = fsub fast float 1.000000e+00, %6876
  br label %6878

; <label>:6878                                    ; preds = %6807, %6519, %6484, %6480, %6446
  %6879 = phi float [ 1.000000e+00, %6446 ], [ %6877, %6807 ], [ 1.000000e+00, %6484 ], [ 1.000000e+00, %6519 ], [ 1.000000e+00, %6480 ]
  %6880 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %6880, label %6881, label %6887, !dx.controlflow.hints !115

; <label>:6881                                    ; preds = %6878
  %6882 = fadd fast float %6389, %6363
  %6883 = call float @dx.op.binary.f32(i32 35, float %6882, float 0.000000e+00)  ; FMax(a,b)
  %6884 = fadd fast float %6883, 0x3F10000000000000
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6378, float %6379, float undef, float undef, i32 0, i32 0, i32 undef, float %6884)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  br label %6887

; <label>:6887                                    ; preds = %6881, %6878
  %6888 = phi float [ %6886, %6881 ], [ 1.000000e+00, %6878 ]
  %6889 = fcmp fast ogt float %6474, 0.000000e+00
  br i1 %6889, label %6890, label %6896, !dx.controlflow.hints !116

; <label>:6890                                    ; preds = %6887
  %6891 = fadd fast float %6419, %6363
  %6892 = call float @dx.op.binary.f32(i32 35, float %6891, float 0.000000e+00)  ; FMax(a,b)
  %6893 = fadd fast float %6892, 0x3F10000000000000
  %6894 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6370, float %6371, float undef, float undef, i32 0, i32 0, i32 undef, float %6893)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6895 = extractvalue %dx.types.ResRet.f32 %6894, 0
  br label %6896

; <label>:6896                                    ; preds = %6890, %6887
  %6897 = phi float [ %6895, %6890 ], [ 1.000000e+00, %6887 ]
  %6898 = fcmp fast ogt float %6473, 0.000000e+00
  br i1 %6898, label %6899, label %6906, !dx.controlflow.hints !117

; <label>:6899                                    ; preds = %6896
  %6900 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6901 = fadd fast float %6900, %6363
  %6902 = call float @dx.op.binary.f32(i32 35, float %6901, float 0.000000e+00)  ; FMax(a,b)
  %6903 = fadd fast float %6902, 0x3F10000000000000
  %6904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6355, float %6359, float undef, float undef, i32 0, i32 0, i32 undef, float %6903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6905 = extractvalue %dx.types.ResRet.f32 %6904, 0
  br label %6906

; <label>:6906                                    ; preds = %6899, %6896
  %6907 = phi float [ %6905, %6899 ], [ 1.000000e+00, %6896 ]
  %6908 = fsub fast float %6888, %6879
  %6909 = fmul fast float %6908, %6417
  %6910 = fadd fast float %6909, %6879
  %6911 = fsub fast float %6897, %6910
  %6912 = fmul fast float %6911, %6447
  %6913 = fadd fast float %6912, %6910
  %6914 = fsub fast float %6907, %6913
  %6915 = fmul fast float %6914, %6473
  %6916 = fadd fast float %6915, %6913
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6919 = fcmp fast ogt float %6918, 0.000000e+00
  br i1 %6919, label %6920, label %6960, !dx.controlflow.hints !118

; <label>:6920                                    ; preds = %6906
  %6921 = fcmp fast ugt float %6918, 0.000000e+00
  br i1 %6921, label %6922, label %6957

; <label>:6922                                    ; preds = %6920
  %6923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6923, 0
  %6925 = extractvalue %dx.types.CBufRet.f32 %6923, 1
  %6926 = extractvalue %dx.types.CBufRet.f32 %6923, 2
  %6927 = extractvalue %dx.types.CBufRet.f32 %6923, 3
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6939 = fadd fast float %6936, %6332
  %6940 = fadd fast float %6937, %6333
  %6941 = fadd fast float %6938, %6334
  %6942 = fmul fast float %6939, %6924
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6925, float %6940, float %6942)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6926, float %6941, float %6943)  ; FMad(a,b,c)
  %6945 = fadd fast float %6944, %6927
  %6946 = fmul fast float %6939, %6929
  %6947 = call float @dx.op.tertiary.f32(i32 46, float %6930, float %6940, float %6946)  ; FMad(a,b,c)
  %6948 = call float @dx.op.tertiary.f32(i32 46, float %6931, float %6941, float %6947)  ; FMad(a,b,c)
  %6949 = fadd fast float %6948, %6932
  %6950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6945, float %6949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6934
  %6953 = fadd fast float %6952, %6933
  %6954 = call float @dx.op.unary.f32(i32 7, float %6953)  ; Saturate(value)
  %6955 = fmul fast float %6954, %6918
  %6956 = fsub fast float 1.000000e+00, %6955
  br label %6957

; <label>:6957                                    ; preds = %6922, %6920
  %6958 = phi float [ %6956, %6922 ], [ 1.000000e+00, %6920 ]
  %6959 = fmul fast float %6958, %6916
  br label %6960

; <label>:6960                                    ; preds = %6957, %6906, %6312
  %6961 = phi float [ 1.000000e+00, %6312 ], [ %6959, %6957 ], [ %6916, %6906 ]
  %6962 = call float @dx.op.binary.f32(i32 36, float %6961, float %6961)  ; FMin(a,b)
  %6963 = call float @dx.op.binary.f32(i32 36, float %6961, float %6962)  ; FMin(a,b)
  %6964 = fcmp fast ogt float %6963, 0.000000e+00
  br i1 %6964, label %6965, label %7125, !dx.controlflow.hints !119

; <label>:6965                                    ; preds = %6960
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6970 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.CBufRet.f32 %6971, 3
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6976, 2
  %6980 = extractvalue %dx.types.CBufRet.f32 %6976, 3
  %6981 = fmul fast float %6967, %6332
  %6982 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6968, float %6981)  ; FMad(a,b,c)
  %6983 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6969, float %6982)  ; FMad(a,b,c)
  %6984 = fadd fast float %6983, %6970
  %6985 = fmul fast float %6972, %6332
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6973, float %6985)  ; FMad(a,b,c)
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6974, float %6986)  ; FMad(a,b,c)
  %6988 = fadd fast float %6987, %6975
  %6989 = fmul fast float %6977, %6332
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6333, float %6978, float %6989)  ; FMad(a,b,c)
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6334, float %6979, float %6990)  ; FMad(a,b,c)
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6996 = fmul fast float %6995, %6984
  %6997 = fmul fast float %6995, %6988
  %6998 = fadd fast float %6996, %6993
  %6999 = fadd fast float %6997, %6994
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 0
  %7002 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %7003 = fsub fast float %6998, %7001
  %7004 = fsub fast float %6999, %7002
  %7005 = fcmp fast olt float %7003, 0.000000e+00
  %7006 = fcmp fast olt float %7004, 0.000000e+00
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.CBufRet.f32 %7007, 2
  %7011 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7012 = select i1 %7005, float %7008, float %7010
  %7013 = select i1 %7006, float %7009, float %7011
  %7014 = fmul fast float %7012, %7003
  %7015 = fmul fast float %7013, %7004
  %7016 = call float @dx.op.unary.f32(i32 6, float %7014)  ; FAbs(value)
  %7017 = call float @dx.op.unary.f32(i32 6, float %7015)  ; FAbs(value)
  %7018 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %7019 = call float @dx.op.binary.f32(i32 35, float %7016, float %7017)  ; FMax(a,b)
  %7020 = fsub fast float %7018, %7019
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7022 = fcmp fast ogt float %7021, 0.000000e+00
  br i1 %7022, label %7023, label %7064, !dx.controlflow.hints !120

; <label>:7023                                    ; preds = %6965
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6998, float %6999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 1
  %7026 = fcmp fast ogt float %7025, 0.000000e+00
  br i1 %7026, label %7027, label %7059

; <label>:7027                                    ; preds = %7023
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6998, float %6999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.ResRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.ResRet.f32 %7028, 2
  %7032 = extractvalue %dx.types.ResRet.f32 %7028, 3
  %7033 = fsub fast float 1.000000e+00, %6980
  %7034 = fsub fast float %7033, %6991
  %7035 = fmul fast float %7034, 0x400921FB60000000
  %7036 = fadd fast float %7035, 0x3FF921FB60000000
  %7037 = call float @dx.op.unary.f32(i32 13, float %7036)  ; Sin(value)
  %7038 = fadd fast float %7037, -1.000000e+00
  %7039 = fmul fast float %7038, 0x3FD45F3060000000
  %7040 = fmul fast float %7034, 0x401921FB60000000
  %7041 = fadd fast float %7040, 0x400921FB60000000
  %7042 = call float @dx.op.unary.f32(i32 13, float %7041)  ; Sin(value)
  %7043 = fadd fast float %7042, 0x3E7777A5C0000000
  %7044 = fmul fast float %7043, 0x3FC45F3060000000
  %7045 = fmul fast float %7034, 0x4022D97C80000000
  %7046 = fadd fast float %7045, 0x4012D97C80000000
  %7047 = call float @dx.op.unary.f32(i32 13, float %7046)  ; Sin(value)
  %7048 = fadd fast float %7047, 1.000000e+00
  %7049 = fmul fast float %7048, 0x3FBB2995E0000000
  %7050 = fmul fast float %7034, 0x402921FB60000000
  %7051 = fadd fast float %7050, 0x401921FB60000000
  %7052 = call float @dx.op.unary.f32(i32 13, float %7051)  ; Sin(value)
  %7053 = fadd fast float %7052, 0xBE8777A5C0000000
  %7054 = fmul fast float %7053, 0x3FB45F3060000000
  %7055 = call float @dx.op.dot4.f32(i32 56, float %7029, float %7030, float %7031, float %7032, float %7039, float %7044, float %7049, float %7054)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7056 = fmul fast float %7055, 0xBFF7154760000000
  %7057 = call float @dx.op.unary.f32(i32 21, float %7056)  ; Exp(value)
  %7058 = call float @dx.op.unary.f32(i32 7, float %7057)  ; Saturate(value)
  br label %7059

; <label>:7059                                    ; preds = %7027, %7023
  %7060 = phi float [ %7058, %7027 ], [ 1.000000e+00, %7023 ]
  %7061 = fadd fast float %7060, -1.000000e+00
  %7062 = fmul fast float %7061, %7021
  %7063 = fadd fast float %7062, 1.000000e+00
  br label %7064

; <label>:7064                                    ; preds = %7059, %6965
  %7065 = phi float [ %7063, %7059 ], [ 1.000000e+00, %6965 ]
  %7066 = fmul fast float %7065, %6961
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7071 = fadd fast float %7068, %157
  %7072 = fadd fast float %7069, %158
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7075 = fsub fast float -0.000000e+00, %7071
  %7076 = fsub fast float -0.000000e+00, %7072
  %7077 = fsub fast float %5717, %7070
  %7078 = fadd fast float %7077, %7074
  %7079 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7075, float %7076, float %7078)  ; Dot3(ax,ay,az,bx,by,bz)
  %7080 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6313, float %6314, float %6315)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = fdiv fast float 1.000000e+00, %7080
  %7082 = fmul fast float %7081, %7079
  %7083 = fmul fast float %6313, %7082
  %7084 = fmul fast float %6314, %7082
  %7085 = fadd fast float %7083, %7071
  %7086 = fadd fast float %7084, %7072
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = fsub fast float %7085, %7088
  %7091 = fsub fast float %7086, %7089
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 2
  %7094 = extractvalue %dx.types.CBufRet.f32 %7092, 3
  %7095 = fmul fast float %7090, %7093
  %7096 = fmul fast float %7091, %7094
  %7097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.i32 %7097, 3
  %7099 = icmp eq i32 %7098, 0
  br i1 %7099, label %7105, label %7100

; <label>:7100                                    ; preds = %7064
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7095, float %7096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  br label %7110

; <label>:7105                                    ; preds = %7064
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7095, float %7096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.ResRet.f32 %7106, 2
  br label %7110

; <label>:7110                                    ; preds = %7105, %7100
  %7111 = phi float [ %7102, %7100 ], [ %7107, %7105 ]
  %7112 = phi float [ %7103, %7100 ], [ %7108, %7105 ]
  %7113 = phi float [ %7104, %7100 ], [ %7109, %7105 ]
  %7114 = extractvalue %dx.types.CBufRet.f32 %7073, 2
  %7115 = fmul fast float %7114, %7111
  %7116 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7117 = fsub fast float %7082, %7116
  %7118 = fsub fast float %7117, %7115
  %7119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7118)  ; FMax(a,b)
  %7120 = fmul fast float %7119, %7112
  %7121 = call float @dx.op.binary.f32(i32 36, float %7113, float %7120)  ; FMin(a,b)
  %7122 = fmul fast float %7121, 0xBFF7154760000000
  %7123 = call float @dx.op.unary.f32(i32 21, float %7122)  ; Exp(value)
  %7124 = fmul fast float %7066, %7123
  br label %7125

; <label>:7125                                    ; preds = %7110, %6960
  %7126 = phi float [ %7124, %7110 ], [ %6961, %6960 ]
  %7127 = call float @dx.op.binary.f32(i32 36, float %7126, float %7126)  ; FMin(a,b)
  %7128 = call float @dx.op.binary.f32(i32 36, float %7126, float %7127)  ; FMin(a,b)
  %7129 = fcmp fast ogt float %7128, 0.000000e+00
  br i1 %7129, label %7130, label %7516, !dx.controlflow.hints !121

; <label>:7130                                    ; preds = %7125
  %7131 = fmul fast float %7126, %6324
  %7132 = fmul fast float %7126, %6325
  %7133 = fmul fast float %7126, %6326
  %7134 = fsub fast float %159, %5505
  %7135 = fcmp fast ogt float %7134, 0.000000e+00
  %7136 = fmul fast float %6313, 5.120000e+02
  %7137 = fmul fast float %6314, 5.120000e+02
  %7138 = fmul fast float %6315, 5.120000e+02
  %7139 = fadd fast float %7138, %159
  %7140 = fsub fast float %5505, %7139
  %7141 = fmul fast float %7140, 2.000000e+00
  %7142 = fadd fast float %7141, %7139
  %7143 = select i1 %7135, float %7142, float %7139
  %7144 = fsub fast float %7143, %159
  %7145 = call float @dx.op.dot3.f32(i32 55, float %7136, float %7137, float %7144, float %7136, float %7137, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = call float @dx.op.unary.f32(i32 25, float %7145)  ; Rsqrt(value)
  %7147 = fmul fast float %7146, %7136
  %7148 = fmul fast float %7146, %7137
  %7149 = fmul fast float %7146, %7144
  %7150 = fsub fast float %5505, %159
  %7151 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7150)  ; Dot3(ax,ay,az,bx,by,bz)
  %7152 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7147, float %7148, float %7149)  ; Dot3(ax,ay,az,bx,by,bz)
  %7153 = fdiv fast float 1.000000e+00, %7152
  %7154 = fmul fast float %7153, %7151
  %7155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7134, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7156 = fcmp fast ogt float %7155, 0.000000e+00
  %7157 = fcmp fast olt float %7155, 0.000000e+00
  %7158 = zext i1 %7156 to i32
  %7159 = zext i1 %7157 to i32
  %7160 = sub nsw i32 %7158, %7159
  %7161 = sitofp i32 %7160 to float
  %7162 = fsub fast float %7143, %5505
  %7163 = call float @dx.op.dot3.f32(i32 55, float %7136, float %7137, float %7162, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7164 = fcmp fast ogt float %7163, 0.000000e+00
  %7165 = fcmp fast olt float %7163, 0.000000e+00
  %7166 = zext i1 %7164 to i32
  %7167 = zext i1 %7165 to i32
  %7168 = sub nsw i32 %7166, %7167
  %7169 = sitofp i32 %7168 to float
  %7170 = fcmp fast une float %7161, %7169
  br i1 %7170, label %7171, label %7181

; <label>:7171                                    ; preds = %7130
  %7172 = fmul fast float %7154, %7149
  %7173 = fmul fast float %7154, %7148
  %7174 = fmul fast float %7154, %7147
  %7175 = fmul fast float %7174, %7174
  %7176 = fmul fast float %7173, %7173
  %7177 = fadd fast float %7175, %7176
  %7178 = fmul fast float %7172, %7172
  %7179 = fadd fast float %7177, %7178
  %7180 = call float @dx.op.unary.f32(i32 24, float %7179)  ; Sqrt(value)
  br label %7191

; <label>:7181                                    ; preds = %7130
  %7182 = icmp slt i32 %7160, 0
  br i1 %7182, label %7183, label %7191

; <label>:7183                                    ; preds = %7181
  %7184 = fsub fast float %159, %7143
  %7185 = fmul fast float %7136, %7136
  %7186 = fmul fast float %7137, %7137
  %7187 = fadd fast float %7185, %7186
  %7188 = fmul fast float %7184, %7184
  %7189 = fadd fast float %7187, %7188
  %7190 = call float @dx.op.unary.f32(i32 24, float %7189)  ; Sqrt(value)
  br label %7191

; <label>:7191                                    ; preds = %7183, %7181, %7171
  %7192 = phi float [ %7180, %7171 ], [ %7190, %7183 ], [ 0.000000e+00, %7181 ]
  %7193 = fsub fast float -0.000000e+00, %7192
  %7194 = select i1 %7135, float -0.000000e+00, float %7193
  %7195 = fmul fast float %5506, 0x3FF7154760000000
  %7196 = fmul fast float %7195, %7194
  %7197 = fmul fast float %5507, 0x3FF7154760000000
  %7198 = fmul fast float %7197, %7194
  %7199 = fmul fast float %5508, 0x3FF7154760000000
  %7200 = fmul fast float %7199, %7194
  %7201 = call float @dx.op.unary.f32(i32 21, float %7196)  ; Exp(value)
  %7202 = call float @dx.op.unary.f32(i32 21, float %7198)  ; Exp(value)
  %7203 = call float @dx.op.unary.f32(i32 21, float %7200)  ; Exp(value)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7205 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  %7206 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7207 = fmul fast float %7131, %7204
  %7208 = fmul fast float %7132, %7205
  %7209 = fmul fast float %7133, %7206
  %7210 = fsub fast float %6313, %5705
  %7211 = fsub fast float %6314, %5704
  %7212 = fsub fast float %6315, %5703
  %7213 = call float @dx.op.dot3.f32(i32 55, float %7210, float %7211, float %7212, float %7210, float %7211, float %7212)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = call float @dx.op.unary.f32(i32 25, float %7213)  ; Rsqrt(value)
  %7215 = fmul fast float %7214, %7210
  %7216 = fmul fast float %7214, %7211
  %7217 = fmul fast float %7214, %7212
  %7218 = call float @dx.op.dot3.f32(i32 55, float %6313, float %6314, float %6315, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %7219 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5701, float %5700, float %7215, float %7216, float %7217)  ; Dot3(ax,ay,az,bx,by,bz)
  %7220 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7221 = fmul fast float %7220, %7220
  %7222 = fmul fast float %7221, %5767
  %7223 = call float @dx.op.unary.f32(i32 7, float %7222)  ; Saturate(value)
  %7224 = fmul fast float %7223, %7220
  %7225 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %7215, float %7216, float %7217)  ; Dot3(ax,ay,az,bx,by,bz)
  %7226 = fmul fast float %7225, %7225
  %7227 = call float @dx.op.unary.f32(i32 6, float %7218)  ; FAbs(value)
  %7228 = call float @dx.op.binary.f32(i32 35, float %6142, float 0x3F847AE140000000)  ; FMax(a,b)
  %7229 = fmul fast float %7228, %7228
  %7230 = fmul fast float %7229, %7229
  %7231 = fsub fast float 1.000000e+00, %7230
  %7232 = fmul fast float %5754, %5754
  %7233 = fmul fast float %7232, %7231
  %7234 = fadd fast float %7233, %7230
  %7235 = bitcast float %7234 to i32
  %7236 = ashr i32 %7235, 1
  %7237 = add nsw i32 %7236, 532487669
  %7238 = bitcast i32 %7237 to float
  %7239 = fadd fast float %7238, %5754
  %7240 = fmul fast float %7230, %7226
  %7241 = fsub fast float 1.000000e+00, %7226
  %7242 = fadd fast float %7241, %7240
  %7243 = fmul fast float %7227, %7227
  %7244 = fmul fast float %7243, %7231
  %7245 = fadd fast float %7244, %7230
  %7246 = bitcast float %7245 to i32
  %7247 = ashr i32 %7246, 1
  %7248 = add nsw i32 %7247, 532487669
  %7249 = bitcast i32 %7248 to float
  %7250 = fadd fast float %7249, %7227
  %7251 = fmul fast float %7242, %7242
  %7252 = fmul fast float %7251, %7239
  %7253 = fmul fast float %7252, %7250
  %7254 = fdiv fast float 0x3FF0A00000000000, %7253
  %7255 = fmul fast float %7254, %7230
  %7256 = fmul fast float %6002, 0x3FF9999980000000
  %7257 = fsub fast float 5.000000e+00, %7256
  %7258 = call float @dx.op.unary.f32(i32 6, float %7219)  ; FAbs(value)
  %7259 = fsub fast float 1.000000e+00, %7258
  %7260 = fmul fast float %6002, 0x41D9660740000000
  %7261 = fadd fast float %7260, 0xC1EFBF8940000000
  %7262 = bitcast float %7259 to i32
  %7263 = sitofp i32 %7262 to float
  %7264 = fmul fast float %7263, %7257
  %7265 = fadd fast float %7261, %7264
  %7266 = fptosi float %7265 to i32
  %7267 = bitcast i32 %7266 to float
  %7268 = fsub fast float 1.000000e+00, %5712
  %7269 = fsub fast float 1.000000e+00, %5713
  %7270 = fsub fast float 1.000000e+00, %5752
  %7271 = fmul fast float %7267, %7268
  %7272 = fmul fast float %7267, %7269
  %7273 = fmul fast float %7267, %7270
  %7274 = fadd fast float %7271, %5712
  %7275 = fadd fast float %7272, %5713
  %7276 = fadd fast float %7273, %5752
  br i1 %6025, label %7277, label %7300

; <label>:7277                                    ; preds = %7191
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %7258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.ResRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.ResRet.f32 %7278, 2
  %7282 = fadd fast float %7279, -5.000000e-01
  %7283 = fadd fast float %7280, -5.000000e-01
  %7284 = fadd fast float %7281, -5.000000e-01
  %7285 = fmul fast float %5712, 4.000000e+00
  %7286 = fmul fast float %7285, %7268
  %7287 = fmul fast float %7286, %7282
  %7288 = fmul fast float %5713, 4.000000e+00
  %7289 = fmul fast float %7288, %7269
  %7290 = fmul fast float %7289, %7283
  %7291 = fmul fast float %5752, 4.000000e+00
  %7292 = fmul fast float %7291, %7270
  %7293 = fmul fast float %7292, %7284
  %7294 = fadd fast float %7287, %7274
  %7295 = fadd fast float %7290, %7275
  %7296 = fadd fast float %7293, %7276
  %7297 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7298 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7299 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  br label %7300

; <label>:7300                                    ; preds = %7277, %7191
  %7301 = phi float [ %7297, %7277 ], [ %7274, %7191 ]
  %7302 = phi float [ %7298, %7277 ], [ %7275, %7191 ]
  %7303 = phi float [ %7299, %7277 ], [ %7276, %7191 ]
  %7304 = fmul fast float %7218, 9.843750e-01
  %7305 = fadd fast float %7304, 7.812500e-03
  %7306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7305, float %6006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7307 = extractvalue %dx.types.ResRet.f32 %7306, 0
  %7308 = extractvalue %dx.types.ResRet.f32 %7306, 1
  %7309 = extractvalue %dx.types.ResRet.f32 %7306, 2
  %7310 = extractvalue %dx.types.ResRet.f32 %7306, 3
  %7311 = fsub fast float %7309, %7307
  %7312 = fsub fast float %7310, %7308
  %7313 = fmul fast float %7311, %6012
  %7314 = fmul fast float %7312, %6012
  %7315 = fadd fast float %7313, %7307
  %7316 = fadd fast float %7314, %7308
  %7317 = fmul fast float %7315, %5712
  %7318 = fmul fast float %7315, %5713
  %7319 = fmul fast float %7315, %5752
  %7320 = fadd fast float %7317, %7316
  %7321 = fadd fast float %7318, %7316
  %7322 = fadd fast float %7319, %7316
  br i1 %6025, label %7323, label %7346

; <label>:7323                                    ; preds = %7300
  %7324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7325 = extractvalue %dx.types.ResRet.f32 %7324, 0
  %7326 = extractvalue %dx.types.ResRet.f32 %7324, 1
  %7327 = extractvalue %dx.types.ResRet.f32 %7324, 2
  %7328 = fadd fast float %7325, -5.000000e-01
  %7329 = fadd fast float %7326, -5.000000e-01
  %7330 = fadd fast float %7327, -5.000000e-01
  %7331 = fmul fast float %5712, 4.000000e+00
  %7332 = fmul fast float %7331, %7268
  %7333 = fmul fast float %7332, %7328
  %7334 = fmul fast float %5713, 4.000000e+00
  %7335 = fmul fast float %7334, %7269
  %7336 = fmul fast float %7335, %7329
  %7337 = fmul fast float %5752, 4.000000e+00
  %7338 = fmul fast float %7337, %7270
  %7339 = fmul fast float %7338, %7330
  %7340 = fadd fast float %7333, %7320
  %7341 = fadd fast float %7336, %7321
  %7342 = fadd fast float %7339, %7322
  %7343 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7344 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7345 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  br label %7346

; <label>:7346                                    ; preds = %7323, %7300
  %7347 = phi float [ %7343, %7323 ], [ %7320, %7300 ]
  %7348 = phi float [ %7344, %7323 ], [ %7321, %7300 ]
  %7349 = phi float [ %7345, %7323 ], [ %7322, %7300 ]
  %7350 = call float @dx.op.binary.f32(i32 35, float %7348, float %7349)  ; FMax(a,b)
  %7351 = call float @dx.op.binary.f32(i32 35, float %7347, float %7350)  ; FMax(a,b)
  %7352 = fsub fast float 1.000000e+00, %7351
  %7353 = call float @dx.op.binary.f32(i32 35, float %7227, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7354 = fdiv fast float %4423, %7353
  %7355 = fmul fast float %6083, %7354
  %7356 = fmul fast float %6085, %7354
  %7357 = fmul fast float %6087, %7354
  %7358 = call float @dx.op.unary.f32(i32 21, float %7355)  ; Exp(value)
  %7359 = call float @dx.op.unary.f32(i32 21, float %7356)  ; Exp(value)
  %7360 = call float @dx.op.unary.f32(i32 21, float %7357)  ; Exp(value)
  %7361 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7362 = call float @dx.op.unary.f32(i32 7, float %7359)  ; Saturate(value)
  %7363 = call float @dx.op.unary.f32(i32 7, float %7360)  ; Saturate(value)
  %7364 = select i1 %6080, float %7361, float 0.000000e+00
  %7365 = select i1 %6081, float %7362, float 0.000000e+00
  %7366 = select i1 %6082, float %7363, float 0.000000e+00
  %7367 = fsub fast float -0.000000e+00, %5709
  %7368 = fsub fast float -0.000000e+00, %5710
  %7369 = fsub fast float -0.000000e+00, %5711
  %7370 = call float @dx.op.dot3.f32(i32 55, float %6313, float %6314, float %6315, float %7367, float %7368, float %7369)  ; Dot3(ax,ay,az,bx,by,bz)
  %7371 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  %7372 = fmul fast float %7371, 9.843750e-01
  %7373 = fadd fast float %7372, 7.812500e-03
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7373, float %6006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = extractvalue %dx.types.ResRet.f32 %7374, 1
  %7377 = extractvalue %dx.types.ResRet.f32 %7374, 2
  %7378 = extractvalue %dx.types.ResRet.f32 %7374, 3
  %7379 = fsub fast float %7377, %7375
  %7380 = fsub fast float %7378, %7376
  %7381 = fmul fast float %7379, %6012
  %7382 = fmul fast float %7380, %6012
  %7383 = fadd fast float %7381, %7375
  %7384 = fadd fast float %7382, %7376
  %7385 = fmul fast float %7383, %5712
  %7386 = fmul fast float %7383, %5713
  %7387 = fmul fast float %7383, %5752
  %7388 = fadd fast float %7385, %7384
  %7389 = fadd fast float %7386, %7384
  %7390 = fadd fast float %7387, %7384
  br i1 %6025, label %7391, label %7414

; <label>:7391                                    ; preds = %7346
  %7392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %7371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = fadd fast float %7393, -5.000000e-01
  %7397 = fadd fast float %7394, -5.000000e-01
  %7398 = fadd fast float %7395, -5.000000e-01
  %7399 = fmul fast float %5712, 4.000000e+00
  %7400 = fmul fast float %7399, %7268
  %7401 = fmul fast float %7400, %7396
  %7402 = fmul fast float %5713, 4.000000e+00
  %7403 = fmul fast float %7402, %7269
  %7404 = fmul fast float %7403, %7397
  %7405 = fmul fast float %5752, 4.000000e+00
  %7406 = fmul fast float %7405, %7270
  %7407 = fmul fast float %7406, %7398
  %7408 = fadd fast float %7401, %7388
  %7409 = fadd fast float %7404, %7389
  %7410 = fadd fast float %7407, %7390
  %7411 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7412 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7413 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  br label %7414

; <label>:7414                                    ; preds = %7391, %7346
  %7415 = phi float [ %7411, %7391 ], [ %7388, %7346 ]
  %7416 = phi float [ %7412, %7391 ], [ %7389, %7346 ]
  %7417 = phi float [ %7413, %7391 ], [ %7390, %7346 ]
  %7418 = call float @dx.op.binary.f32(i32 35, float %7416, float %7417)  ; FMax(a,b)
  %7419 = call float @dx.op.binary.f32(i32 35, float %7415, float %7418)  ; FMax(a,b)
  %7420 = fsub fast float 1.000000e+00, %7419
  %7421 = fmul fast float %6142, %6148
  %7422 = fadd fast float %6141, %7421
  %7423 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7424 = fsub fast float %6313, %5760
  %7425 = fsub fast float %6314, %5761
  %7426 = fsub fast float %6315, %5762
  %7427 = call float @dx.op.dot3.f32(i32 55, float %7424, float %7425, float %7426, float %7424, float %7425, float %7426)  ; Dot3(ax,ay,az,bx,by,bz)
  %7428 = call float @dx.op.unary.f32(i32 25, float %7427)  ; Rsqrt(value)
  %7429 = fmul fast float %7428, %7424
  %7430 = fmul fast float %7428, %7425
  %7431 = fmul fast float %7428, %7426
  %7432 = call float @dx.op.dot3.f32(i32 55, float %7367, float %7368, float %7369, float %7429, float %7430, float %7431)  ; Dot3(ax,ay,az,bx,by,bz)
  %7433 = fmul fast float %7432, %7432
  %7434 = call float @dx.op.unary.f32(i32 6, float %7371)  ; FAbs(value)
  %7435 = call float @dx.op.binary.f32(i32 35, float %7423, float 0x3F847AE140000000)  ; FMax(a,b)
  %7436 = fmul fast float %7435, %7435
  %7437 = fmul fast float %7436, %7436
  %7438 = fsub fast float 1.000000e+00, %7437
  %7439 = fmul fast float %7232, %7438
  %7440 = fadd fast float %7439, %7437
  %7441 = bitcast float %7440 to i32
  %7442 = ashr i32 %7441, 1
  %7443 = add nsw i32 %7442, 532487669
  %7444 = bitcast i32 %7443 to float
  %7445 = fadd fast float %7444, %5754
  %7446 = fmul fast float %7437, %7433
  %7447 = fsub fast float 1.000000e+00, %7433
  %7448 = fadd fast float %7447, %7446
  %7449 = fmul fast float %7434, %7434
  %7450 = fmul fast float %7449, %7438
  %7451 = fadd fast float %7450, %7437
  %7452 = bitcast float %7451 to i32
  %7453 = ashr i32 %7452, 1
  %7454 = add nsw i32 %7453, 532487669
  %7455 = bitcast i32 %7454 to float
  %7456 = fadd fast float %7455, %7434
  %7457 = fmul fast float %7448, %7448
  %7458 = fmul fast float %7457, %7445
  %7459 = fmul fast float %7458, %7456
  %7460 = fdiv fast float 0x3FF0A00000000000, %7459
  %7461 = fmul fast float %7460, %7437
  %7462 = fmul fast float %7371, %7364
  %7463 = fmul fast float %7371, %7365
  %7464 = fmul fast float %7371, %7366
  %7465 = fmul fast float %7462, %7420
  %7466 = fmul fast float %7465, %7461
  %7467 = fmul fast float %7463, %7420
  %7468 = fmul fast float %7467, %7461
  %7469 = fmul fast float %7464, %7420
  %7470 = fmul fast float %7469, %7461
  %7471 = fmul fast float %7301, %7255
  %7472 = fmul fast float %7302, %7255
  %7473 = fmul fast float %7303, %7255
  %7474 = fsub fast float 1.000000e+00, %7219
  %7475 = bitcast float %7474 to i32
  %7476 = sitofp i32 %7475 to float
  %7477 = fmul fast float %7476, 5.000000e+00
  %7478 = fadd fast float %7477, 0xC1EFBF8940000000
  %7479 = fptosi float %7478 to i32
  %7480 = bitcast i32 %7479 to float
  %7481 = fmul fast float %7480, %5076
  %7482 = fmul fast float %7352, %7481
  %7483 = fmul fast float %7482, %6075
  %7484 = fmul fast float %7482, %6076
  %7485 = fmul fast float %7482, %6077
  %7486 = fadd fast float %7483, %7471
  %7487 = fadd fast float %7484, %7472
  %7488 = fadd fast float %7485, %7473
  %7489 = fmul fast float %7486, %7224
  %7490 = fmul fast float %7487, %7224
  %7491 = fmul fast float %7488, %7224
  %7492 = fmul fast float %7224, %7207
  %7493 = fmul fast float %7492, %7352
  %7494 = fmul fast float %7224, %7208
  %7495 = fmul fast float %7494, %7352
  %7496 = fmul fast float %7224, %7209
  %7497 = fmul fast float %7496, %7352
  %7498 = fadd fast float %7489, %7466
  %7499 = fadd fast float %7490, %7468
  %7500 = fadd fast float %7491, %7470
  %7501 = fmul fast float %7498, %7207
  %7502 = fmul fast float %7499, %7208
  %7503 = fmul fast float %7500, %7209
  %7504 = fadd fast float %7493, %6059
  %7505 = fmul fast float %7504, %5072
  %7506 = fadd fast float %7495, %6060
  %7507 = fmul fast float %7506, %5072
  %7508 = fadd fast float %7497, %6061
  %7509 = fmul fast float %7508, %5072
  %7510 = fadd fast float %7501, %6299
  %7511 = fmul fast float %7510, %5072
  %7512 = fadd fast float %7502, %6303
  %7513 = fmul fast float %7512, %5072
  %7514 = fadd fast float %7503, %6307
  %7515 = fmul fast float %7514, %5072
  br label %7516

; <label>:7516                                    ; preds = %7414, %7125, %6283
  %7517 = phi float [ %6300, %6283 ], [ %6300, %7125 ], [ %7511, %7414 ]
  %7518 = phi float [ %6304, %6283 ], [ %6304, %7125 ], [ %7513, %7414 ]
  %7519 = phi float [ %6308, %6283 ], [ %6308, %7125 ], [ %7515, %7414 ]
  %7520 = phi float [ %6172, %6283 ], [ %6172, %7125 ], [ %7505, %7414 ]
  %7521 = phi float [ %6173, %6283 ], [ %6173, %7125 ], [ %7507, %7414 ]
  %7522 = phi float [ %6174, %6283 ], [ %6174, %7125 ], [ %7509, %7414 ]
  %7523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7524 = extractvalue %dx.types.CBufRet.i32 %7523, 0
  %7525 = icmp eq i32 %7524, 0
  br i1 %7525, label %8300, label %7526

; <label>:7526                                    ; preds = %7516
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7530 = fmul fast float %7528, %102
  %7531 = fmul fast float %7529, %103
  %7532 = fptoui float %7530 to i32
  %7533 = fptoui float %7531 to i32
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7537 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7538 = fadd fast float %93, -4.000000e+00
  %7539 = call float @dx.op.binary.f32(i32 35, float %7538, float 0.000000e+00)  ; FMax(a,b)
  %7540 = fadd fast float %7539, %7535
  %7541 = fmul fast float %7540, %7536
  %7542 = call float @dx.op.unary.f32(i32 23, float %7541)  ; Log(value)
  %7543 = fmul fast float %7542, %7537
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7546 = fmul fast float %7543, %7545
  %7547 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.i32 %7548, 1
  %7550 = add i32 %7549, -1
  %7551 = uitofp i32 %7549 to float
  %7552 = fmul fast float %7551, %7547
  %7553 = fptoui float %7552 to i32
  %7554 = call i32 @dx.op.binary.i32(i32 40, i32 %7553, i32 %7550)  ; UMin(a,b)
  %7555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.i32 %7555, 2
  %7557 = extractvalue %dx.types.CBufRet.i32 %7555, 3
  %7558 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7533, i32 %7556, i32 %7532)  ; UMad(a,b,c)
  %7559 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7554, i32 %7557, i32 %7558)  ; UMad(a,b,c)
  %7560 = add nsw i32 %7524, -1
  %7561 = call i32 @dx.op.binary.i32(i32 37, i32 %7560, i32 0)  ; IMax(a,b)
  %7562 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7563 = fptoui float %7562 to i32
  %7564 = lshr i32 %7563, 5
  %7565 = call i32 @dx.op.binary.i32(i32 40, i32 %7564, i32 8191)  ; UMin(a,b)
  %7566 = shl i32 %7565, 2
  %7567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7566, i32 undef)  ; BufferLoad(srv,index,wot)
  %7568 = extractvalue %dx.types.ResRet.i32 %7567, 0
  %7569 = lshr i32 %7568, 16
  %7570 = and i32 %7568, 65535
  %7571 = lshr i32 %7568, 21
  %7572 = lshr i32 %7570, 5
  %7573 = call i32 @dx.op.binary.i32(i32 40, i32 %7572, i32 %7561)  ; UMin(a,b)
  %7574 = icmp ugt i32 %7571, %7573
  br i1 %7574, label %8300, label %7575

; <label>:7575                                    ; preds = %7526
  br label %7576

; <label>:7576                                    ; preds = %8290, %7575
  %7577 = phi i32 [ %8297, %8290 ], [ %7571, %7575 ]
  %7578 = phi float [ %8291, %8290 ], [ %7517, %7575 ]
  %7579 = phi float [ %8292, %8290 ], [ %7518, %7575 ]
  %7580 = phi float [ %8293, %8290 ], [ %7519, %7575 ]
  %7581 = phi float [ %8294, %8290 ], [ %7520, %7575 ]
  %7582 = phi float [ %8295, %8290 ], [ %7521, %7575 ]
  %7583 = phi float [ %8296, %8290 ], [ %7522, %7575 ]
  %7584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.i32 %7584, 0
  %7586 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7559, i32 %7585, i32 %7577)  ; UMad(a,b,c)
  %7587 = shl i32 %7586, 2
  %7588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7587, i32 undef)  ; BufferLoad(srv,index,wot)
  %7589 = extractvalue %dx.types.ResRet.i32 %7588, 0
  %7590 = shl i32 %7577, 5
  %7591 = sub nsw i32 %7569, %7590
  %7592 = call i32 @dx.op.binary.i32(i32 37, i32 %7591, i32 0)  ; IMax(a,b)
  %7593 = call i32 @dx.op.binary.i32(i32 38, i32 %7592, i32 31)  ; IMin(a,b)
  %7594 = sub nsw i32 1, %7569
  %7595 = add nsw i32 %7594, %7570
  %7596 = call i32 @dx.op.binary.i32(i32 37, i32 %7595, i32 0)  ; IMax(a,b)
  %7597 = call i32 @dx.op.binary.i32(i32 38, i32 %7596, i32 32)  ; IMin(a,b)
  %7598 = and i32 %7597, 31
  %7599 = shl i32 -1, %7598
  %7600 = xor i32 %7599, -1
  %7601 = and i32 %7593, 31
  %7602 = shl i32 %7600, %7601
  %7603 = icmp eq i32 %7597, 32
  %7604 = select i1 %7603, i32 -1, i32 %7602
  %7605 = and i32 %7604, %7589
  %7606 = icmp eq i32 %7605, 0
  br i1 %7606, label %8290, label %7607

; <label>:7607                                    ; preds = %7576
  br label %7608

; <label>:7608                                    ; preds = %7743, %7607
  %7609 = phi i32 [ %7620, %7743 ], [ %7605, %7607 ]
  %7610 = phi float [ %7744, %7743 ], [ %7578, %7607 ]
  %7611 = phi float [ %7745, %7743 ], [ %7579, %7607 ]
  %7612 = phi float [ %7746, %7743 ], [ %7580, %7607 ]
  %7613 = phi float [ %7747, %7743 ], [ %7581, %7607 ]
  %7614 = phi float [ %7748, %7743 ], [ %7582, %7607 ]
  %7615 = phi float [ %7749, %7743 ], [ %7583, %7607 ]
  %7616 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7609)  ; FirstbitLo(value)
  %7617 = add i32 %7616, %7590
  %7618 = and i32 %7616, 31
  %7619 = shl i32 1, %7618
  %7620 = xor i32 %7619, %7609
  %7621 = mul i32 %7617, 112
  %7622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7621, i32 undef)  ; BufferLoad(srv,index,wot)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.ResRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.ResRet.f32 %7622, 2
  %7626 = or i32 %7621, 12
  %7627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7626, i32 undef)  ; BufferLoad(srv,index,wot)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = add i32 %7621, 16
  %7630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7629, i32 undef)  ; BufferLoad(srv,index,wot)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = add i32 %7621, 28
  %7635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7634, i32 undef)  ; BufferLoad(srv,index,wot)
  %7636 = extractvalue %dx.types.ResRet.i32 %7635, 0
  %7637 = add i32 %7621, 44
  %7638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7637, i32 undef)  ; BufferLoad(srv,index,wot)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = add i32 %7621, 48
  %7641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7640, i32 undef)  ; BufferLoad(srv,index,wot)
  %7642 = extractvalue %dx.types.ResRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.ResRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.ResRet.f32 %7641, 2
  %7645 = extractvalue %dx.types.ResRet.f32 %7641, 3
  %7646 = add i32 %7621, 64
  %7647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7646, i32 undef)  ; BufferLoad(srv,index,wot)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.ResRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.ResRet.f32 %7647, 2
  %7651 = extractvalue %dx.types.ResRet.f32 %7647, 3
  %7652 = add i32 %7621, 80
  %7653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 1
  %7655 = extractvalue %dx.types.ResRet.f32 %7653, 2
  %7656 = add i32 %7621, 92
  %7657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7656, i32 undef)  ; BufferLoad(srv,index,wot)
  %7658 = extractvalue %dx.types.ResRet.i32 %7657, 0
  %7659 = call float @dx.op.dot3.f32(i32 55, float %7623, float %7624, float %7625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7660 = select i1 %219, float %7654, float %7623
  %7661 = select i1 %219, float %7659, float %7624
  %7662 = select i1 %219, float %7655, float %7625
  %7663 = and i32 %7658, 65535
  %7664 = uitofp i32 %7663 to float
  %7665 = lshr i32 %7658, 16
  %7666 = uitofp i32 %7665 to float
  %7667 = and i32 %7636, 65535
  %7668 = and i32 %7636, 50331648
  %7669 = icmp slt i32 %7636, 0
  %7670 = icmp eq i32 %7668, 33554432
  %7671 = fsub fast float %7642, %157
  %7672 = fsub fast float %7643, %158
  %7673 = fsub fast float %7644, %159
  %7674 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %7671, float %7672, float %7673)  ; Dot3(ax,ay,az,bx,by,bz)
  %7675 = call float @dx.op.unary.f32(i32 24, float %7674)  ; Sqrt(value)
  %7676 = fdiv fast float 1.000000e+00, %7675
  %7677 = fmul fast float %7676, %7671
  %7678 = fmul fast float %7676, %7672
  %7679 = fmul fast float %7676, %7673
  %7680 = fadd fast float %7675, %7628
  %7681 = fdiv fast float 1.000000e+00, %7680
  %7682 = fmul float %7639, %7681
  %7683 = fmul float %7682, %7682
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  br i1 %7670, label %7685, label %7706

; <label>:7685                                    ; preds = %7608
  %7686 = fmul fast float %7650, %7631
  %7687 = fmul fast float %7650, %7632
  %7688 = fmul fast float %7650, %7633
  %7689 = fadd fast float %7671, %7686
  %7690 = fadd fast float %7672, %7687
  %7691 = fadd fast float %7673, %7688
  %7692 = call float @dx.op.dot3.f32(i32 55, float %7689, float %7690, float %7691, float %7689, float %7690, float %7691)  ; Dot3(ax,ay,az,bx,by,bz)
  %7693 = call float @dx.op.unary.f32(i32 25, float %7692)  ; Rsqrt(value)
  %7694 = fmul fast float %7693, %7689
  %7695 = fmul fast float %7693, %7690
  %7696 = fmul fast float %7693, %7691
  %7697 = fsub fast float %157, %7642
  %7698 = fsub fast float %158, %7643
  %7699 = fsub fast float %159, %7644
  %7700 = fsub fast float -0.000000e+00, %7697
  %7701 = fsub fast float -0.000000e+00, %7698
  %7702 = fsub fast float -0.000000e+00, %7699
  %7703 = call float @dx.op.dot3.f32(i32 55, float %7700, float %7701, float %7702, float %7631, float %7632, float %7633)  ; Dot3(ax,ay,az,bx,by,bz)
  %7704 = fcmp fast ogt float %7703, 0.000000e+00
  %7705 = uitofp i1 %7704 to float
  br label %7706

; <label>:7706                                    ; preds = %7685, %7608
  %7707 = phi float [ %7705, %7685 ], [ 1.000000e+00, %7608 ]
  %7708 = phi float [ %7694, %7685 ], [ %7677, %7608 ]
  %7709 = phi float [ %7695, %7685 ], [ %7678, %7608 ]
  %7710 = phi float [ %7696, %7685 ], [ %7679, %7608 ]
  %7711 = call float @dx.op.dot3.f32(i32 55, float %7631, float %7632, float %7633, float %7708, float %7709, float %7710)  ; Dot3(ax,ay,az,bx,by,bz)
  %7712 = fmul fast float %7711, %7711
  %7713 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7714 = fsub fast float 1.000000e+00, %7713
  %7715 = fmul fast float %7714, 5.000000e-01
  %7716 = fcmp fast ogt float %7711, 0.000000e+00
  %7717 = fsub fast float 1.000000e+00, %7715
  %7718 = select i1 %7716, float %7715, float %7717
  %7719 = fmul fast float %7718, %7666
  %7720 = fadd fast float %7719, %7664
  %7721 = fmul fast float %7720, 0x3EF0001000000000
  %7722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7721, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 0
  %7724 = fmul fast float %7711, %7648
  %7725 = fadd fast float %7724, %7649
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = select i1 %7670, float 1.000000e+00, float %7726
  %7728 = select i1 %7670, float %7726, float 1.000000e+00
  %7729 = fmul fast float %7675, %7645
  %7730 = fsub fast float 1.000000e+00, %7729
  %7731 = fmul fast float %7730, %7651
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fmul fast float %7732, %7728
  %7734 = fmul fast float %7733, 2.000000e+00
  %7735 = fsub fast float 3.000000e+00, %7734
  %7736 = fmul fast float %7723, %7707
  %7737 = fmul fast float %7733, %7733
  %7738 = fmul fast float %7737, %7736
  %7739 = fmul fast float %7738, %7735
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7739)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7739, float %7740)  ; FMin(a,b)
  %7742 = fcmp fast ogt float %7741, 0.000000e+00
  br i1 %7742, label %7751, label %7743, !dx.controlflow.hints !122

; <label>:7743                                    ; preds = %8243, %7851, %7706
  %7744 = phi float [ %7610, %7851 ], [ %7610, %7706 ], [ %8286, %8243 ]
  %7745 = phi float [ %7611, %7851 ], [ %7611, %7706 ], [ %8287, %8243 ]
  %7746 = phi float [ %7612, %7851 ], [ %7612, %7706 ], [ %8288, %8243 ]
  %7747 = phi float [ %7613, %7851 ], [ %7613, %7706 ], [ %8280, %8243 ]
  %7748 = phi float [ %7614, %7851 ], [ %7614, %7706 ], [ %8281, %8243 ]
  %7749 = phi float [ %7615, %7851 ], [ %7615, %7706 ], [ %8282, %8243 ]
  %7750 = icmp eq i32 %7609, %7619
  br i1 %7750, label %8289, label %7608

; <label>:7751                                    ; preds = %7706
  %7752 = icmp eq i32 %7667, 255
  br i1 %7752, label %7851, label %7753, !dx.controlflow.hints !123

; <label>:7753                                    ; preds = %7751
  %7754 = mul nuw nsw i32 %7667, 176
  %7755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7754, i32 undef)  ; BufferLoad(srv,index,wot)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.ResRet.f32 %7755, 1
  %7758 = extractvalue %dx.types.ResRet.f32 %7755, 2
  %7759 = extractvalue %dx.types.ResRet.f32 %7755, 3
  %7760 = add nuw nsw i32 %7754, 16
  %7761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7760, i32 undef)  ; BufferLoad(srv,index,wot)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = add nuw nsw i32 %7754, 32
  %7765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7764, i32 undef)  ; BufferLoad(srv,index,wot)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = add nuw nsw i32 %7754, 48
  %7770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7769, i32 undef)  ; BufferLoad(srv,index,wot)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.ResRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.ResRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.ResRet.f32 %7770, 3
  %7775 = add nuw nsw i32 %7754, 64
  %7776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7775, i32 undef)  ; BufferLoad(srv,index,wot)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.ResRet.f32 %7776, 3
  %7781 = add nuw nsw i32 %7754, 80
  %7782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7781, i32 undef)  ; BufferLoad(srv,index,wot)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.ResRet.f32 %7782, 3
  %7787 = add nuw nsw i32 %7754, 96
  %7788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7787, i32 undef)  ; BufferLoad(srv,index,wot)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = extractvalue %dx.types.ResRet.f32 %7788, 3
  %7793 = bitcast float %7763 to i32
  %7794 = fmul fast float %7768, %109
  %7795 = fmul fast float %7768, %110
  %7796 = fmul fast float %7768, %111
  %7797 = fadd fast float %7794, %157
  %7798 = fadd fast float %7795, %158
  %7799 = fadd fast float %7796, %159
  %7800 = fmul fast float %7797, %7771
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7777, float %7800)  ; FMad(a,b,c)
  %7802 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7783, float %7801)  ; FMad(a,b,c)
  %7803 = fadd fast float %7802, %7789
  %7804 = fmul fast float %7797, %7772
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7778, float %7804)  ; FMad(a,b,c)
  %7806 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7784, float %7805)  ; FMad(a,b,c)
  %7807 = fadd fast float %7806, %7790
  %7808 = fmul fast float %7797, %7773
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7779, float %7808)  ; FMad(a,b,c)
  %7810 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7785, float %7809)  ; FMad(a,b,c)
  %7811 = fadd fast float %7810, %7791
  %7812 = fmul fast float %7797, %7774
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7798, float %7780, float %7812)  ; FMad(a,b,c)
  %7814 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7786, float %7813)  ; FMad(a,b,c)
  %7815 = fadd fast float %7814, %7792
  %7816 = fdiv fast float %7803, %7815
  %7817 = fdiv fast float %7807, %7815
  %7818 = fdiv fast float %7811, %7815
  %7819 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7818)  ; FMax(a,b)
  %7820 = fmul fast float %232, 0x401921FB60000000
  %7821 = call float @dx.op.unary.f32(i32 13, float %7820)  ; Sin(value)
  %7822 = call float @dx.op.unary.f32(i32 12, float %7820)  ; Cos(value)
  %7823 = fsub fast float -0.000000e+00, %7821
  %7824 = fmul fast float %7758, 5.000000e-01
  %7825 = call float @dx.op.dot2.f32(i32 54, float %232, float %232, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7826 = call float @dx.op.unary.f32(i32 22, float %7825)  ; Frc(value)
  %7827 = fmul fast float %7826, 0x404A7DD040000000
  %7828 = call float @dx.op.unary.f32(i32 22, float %7827)  ; Frc(value)
  %7829 = fmul fast float %7828, %7767
  %7830 = fadd fast float %7829, %7824
  %7831 = call float @dx.op.tertiary.f32(i32 46, float %7830, float %7823, float 0.000000e+00)  ; FMad(a,b,c)
  %7832 = call float @dx.op.tertiary.f32(i32 46, float %7830, float %7822, float 0.000000e+00)  ; FMad(a,b,c)
  %7833 = fadd fast float %7831, %7816
  %7834 = fadd fast float %7832, %7817
  %7835 = fmul fast float %7833, %7762
  %7836 = fmul fast float %7834, %7762
  %7837 = call float @dx.op.binary.f32(i32 35, float %7835, float %7758)  ; FMax(a,b)
  %7838 = call float @dx.op.binary.f32(i32 35, float %7836, float %7758)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 36, float %7837, float %7759)  ; FMin(a,b)
  %7840 = call float @dx.op.binary.f32(i32 36, float %7838, float %7759)  ; FMin(a,b)
  %7841 = fadd fast float %7839, %7756
  %7842 = fadd fast float %7840, %7757
  %7843 = uitofp i32 %7793 to float
  %7844 = fadd fast float %7819, %7766
  %7845 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7841, float %7842, float %7843, float undef, i32 0, i32 0, i32 undef, float %7844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = fadd fast float %7846, -1.000000e+00
  %7848 = fmul fast float %7847, %7727
  %7849 = fadd fast float %7848, 1.000000e+00
  %7850 = fmul fast float %7849, %7739
  br label %7851

; <label>:7851                                    ; preds = %7753, %7751
  %7852 = phi float [ %7850, %7753 ], [ %7739, %7751 ]
  %7853 = call float @dx.op.binary.f32(i32 36, float %7852, float %7852)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 36, float %7852, float %7853)  ; FMin(a,b)
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  br i1 %7855, label %7856, label %7743, !dx.controlflow.hints !124

; <label>:7856                                    ; preds = %7851
  %7857 = fmul fast float %7852, %7660
  %7858 = fmul fast float %7852, %7661
  %7859 = fmul fast float %7852, %7662
  %7860 = fsub fast float %7644, %5505
  %7861 = fcmp fast ogt float %7860, 0.000000e+00
  %7862 = fsub fast float %159, %5505
  %7863 = fcmp fast ogt float %7862, 0.000000e+00
  %7864 = xor i1 %7863, %7861
  %7865 = fsub fast float %5505, %7644
  %7866 = fmul fast float %7865, 2.000000e+00
  %7867 = fadd fast float %7866, %7644
  %7868 = select i1 %7864, float %7644, float %7867
  %7869 = fsub fast float %7868, %159
  %7870 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7869, float %7671, float %7672, float %7869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7871 = call float @dx.op.unary.f32(i32 25, float %7870)  ; Rsqrt(value)
  %7872 = fmul fast float %7871, %7671
  %7873 = fmul fast float %7871, %7672
  %7874 = fmul fast float %7871, %7869
  %7875 = fsub fast float %5505, %159
  %7876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7875)  ; Dot3(ax,ay,az,bx,by,bz)
  %7877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7872, float %7873, float %7874)  ; Dot3(ax,ay,az,bx,by,bz)
  %7878 = fdiv fast float 1.000000e+00, %7877
  %7879 = fmul fast float %7878, %7876
  %7880 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7862, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7881 = fcmp fast ogt float %7880, 0.000000e+00
  %7882 = fcmp fast olt float %7880, 0.000000e+00
  %7883 = zext i1 %7881 to i32
  %7884 = zext i1 %7882 to i32
  %7885 = sub nsw i32 %7883, %7884
  %7886 = sitofp i32 %7885 to float
  %7887 = fsub fast float %7868, %5505
  %7888 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7887, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7889 = fcmp fast ogt float %7888, 0.000000e+00
  %7890 = fcmp fast olt float %7888, 0.000000e+00
  %7891 = zext i1 %7889 to i32
  %7892 = zext i1 %7890 to i32
  %7893 = sub nsw i32 %7891, %7892
  %7894 = sitofp i32 %7893 to float
  %7895 = fcmp fast une float %7886, %7894
  br i1 %7895, label %7896, label %7906

; <label>:7896                                    ; preds = %7856
  %7897 = fmul fast float %7879, %7874
  %7898 = fmul fast float %7879, %7873
  %7899 = fmul fast float %7879, %7872
  %7900 = fmul fast float %7899, %7899
  %7901 = fmul fast float %7898, %7898
  %7902 = fadd fast float %7900, %7901
  %7903 = fmul fast float %7897, %7897
  %7904 = fadd fast float %7902, %7903
  %7905 = call float @dx.op.unary.f32(i32 24, float %7904)  ; Sqrt(value)
  br label %7918

; <label>:7906                                    ; preds = %7856
  %7907 = icmp slt i32 %7885, 0
  br i1 %7907, label %7908, label %7918

; <label>:7908                                    ; preds = %7906
  %7909 = fsub fast float %157, %7642
  %7910 = fsub fast float %158, %7643
  %7911 = fsub fast float %159, %7868
  %7912 = fmul fast float %7909, %7909
  %7913 = fmul fast float %7910, %7910
  %7914 = fadd fast float %7912, %7913
  %7915 = fmul fast float %7911, %7911
  %7916 = fadd fast float %7914, %7915
  %7917 = call float @dx.op.unary.f32(i32 24, float %7916)  ; Sqrt(value)
  br label %7918

; <label>:7918                                    ; preds = %7908, %7906, %7896
  %7919 = phi float [ %7905, %7896 ], [ %7917, %7908 ], [ 0.000000e+00, %7906 ]
  %7920 = and i1 %7863, %7861
  %7921 = fsub fast float -0.000000e+00, %7919
  %7922 = select i1 %7920, float -0.000000e+00, float %7921
  %7923 = fmul fast float %5506, 0x3FF7154760000000
  %7924 = fmul fast float %7923, %7922
  %7925 = fmul fast float %5507, 0x3FF7154760000000
  %7926 = fmul fast float %7925, %7922
  %7927 = fmul fast float %5508, 0x3FF7154760000000
  %7928 = fmul fast float %7927, %7922
  %7929 = call float @dx.op.unary.f32(i32 21, float %7924)  ; Exp(value)
  %7930 = call float @dx.op.unary.f32(i32 21, float %7926)  ; Exp(value)
  %7931 = call float @dx.op.unary.f32(i32 21, float %7928)  ; Exp(value)
  %7932 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7933 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7934 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7935 = fmul fast float %7857, %7932
  %7936 = fmul fast float %7858, %7933
  %7937 = fmul fast float %7859, %7934
  %7938 = fsub fast float %7677, %5705
  %7939 = fsub fast float %7678, %5704
  %7940 = fsub fast float %7679, %5703
  %7941 = call float @dx.op.dot3.f32(i32 55, float %7938, float %7939, float %7940, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %7942 = call float @dx.op.unary.f32(i32 25, float %7941)  ; Rsqrt(value)
  %7943 = fmul fast float %7942, %7938
  %7944 = fmul fast float %7942, %7939
  %7945 = fmul fast float %7942, %7940
  %7946 = call float @dx.op.dot3.f32(i32 55, float %7677, float %7678, float %7679, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %7947 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5701, float %5700, float %7943, float %7944, float %7945)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7949 = fmul fast float %7948, %7684
  %7950 = fmul fast float %7948, %7948
  %7951 = fmul fast float %7950, %5767
  %7952 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7953 = fmul fast float %7949, %7952
  %7954 = bitcast float %7674 to i32
  %7955 = ashr i32 %7954, 1
  %7956 = sub nsw i32 1597463007, %7955
  %7957 = bitcast i32 %7956 to float
  %7958 = fmul fast float %7957, %7671
  %7959 = fmul fast float %7957, %7672
  %7960 = fmul fast float %7957, %7673
  %7961 = fsub fast float %7958, %5705
  %7962 = fsub fast float %7959, %5704
  %7963 = fsub fast float %7960, %5703
  %7964 = call float @dx.op.dot3.f32(i32 55, float %7961, float %7962, float %7963, float %7961, float %7962, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = call float @dx.op.unary.f32(i32 25, float %7964)  ; Rsqrt(value)
  %7966 = fmul fast float %7961, %7965
  %7967 = fmul fast float %7962, %7965
  %7968 = fmul fast float %7963, %7965
  %7969 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %7966, float %7967, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7970 = fmul fast float %7969, %7969
  %7971 = call float @dx.op.unary.f32(i32 6, float %7946)  ; FAbs(value)
  %7972 = call float @dx.op.binary.f32(i32 35, float %6142, float 0x3F847AE140000000)  ; FMax(a,b)
  %7973 = fmul fast float %7972, %7972
  %7974 = fmul fast float %7973, %7973
  %7975 = fsub fast float 1.000000e+00, %7974
  %7976 = fmul fast float %5754, %5754
  %7977 = fmul fast float %7976, %7975
  %7978 = fadd fast float %7977, %7974
  %7979 = bitcast float %7978 to i32
  %7980 = ashr i32 %7979, 1
  %7981 = add nsw i32 %7980, 532487669
  %7982 = bitcast i32 %7981 to float
  %7983 = fadd fast float %7982, %5754
  %7984 = fmul fast float %7974, %7970
  %7985 = fsub fast float 1.000000e+00, %7970
  %7986 = fadd fast float %7985, %7984
  %7987 = fmul fast float %7971, %7971
  %7988 = fmul fast float %7987, %7975
  %7989 = fadd fast float %7988, %7974
  %7990 = bitcast float %7989 to i32
  %7991 = ashr i32 %7990, 1
  %7992 = add nsw i32 %7991, 532487669
  %7993 = bitcast i32 %7992 to float
  %7994 = fadd fast float %7993, %7971
  %7995 = fmul fast float %7986, %7986
  %7996 = fmul fast float %7995, %7983
  %7997 = fmul fast float %7996, %7994
  %7998 = fdiv fast float 1.000000e+00, %7997
  %7999 = bitcast float %7974 to i32
  %8000 = sitofp i32 %7999 to float
  %8001 = fmul fast float %8000, 0x3FE7F73180000000
  %8002 = fadd fast float %8001, 0x41AFE27C40000000
  %8003 = fptosi float %8002 to i32
  %8004 = bitcast i32 %8003 to float
  %8005 = fmul fast float %7639, 0x3FD80E9D60000000
  %8006 = fmul fast float %8005, %7957
  %8007 = fadd fast float %8004, %8006
  %8008 = bitcast float %8007 to i32
  %8009 = sub nsw i32 2129859010, %8008
  %8010 = bitcast i32 %8009 to float
  %8011 = fmul fast float %7974, %7998
  %8012 = fmul fast float %8011, %8004
  %8013 = fmul fast float %8012, %8010
  %8014 = fmul fast float %6002, 0x3FF9999980000000
  %8015 = fsub fast float 5.000000e+00, %8014
  %8016 = call float @dx.op.unary.f32(i32 6, float %7947)  ; FAbs(value)
  %8017 = fsub fast float 1.000000e+00, %8016
  %8018 = fmul fast float %6002, 0x41D9660740000000
  %8019 = fadd fast float %8018, 0xC1EFBF8940000000
  %8020 = bitcast float %8017 to i32
  %8021 = sitofp i32 %8020 to float
  %8022 = fmul fast float %8021, %8015
  %8023 = fadd fast float %8019, %8022
  %8024 = fptosi float %8023 to i32
  %8025 = bitcast i32 %8024 to float
  %8026 = fsub fast float 1.000000e+00, %5712
  %8027 = fsub fast float 1.000000e+00, %5713
  %8028 = fsub fast float 1.000000e+00, %5752
  %8029 = fmul fast float %8025, %8026
  %8030 = fmul fast float %8025, %8027
  %8031 = fmul fast float %8025, %8028
  %8032 = fadd fast float %8029, %5712
  %8033 = fadd fast float %8030, %5713
  %8034 = fadd fast float %8031, %5752
  br i1 %6025, label %8035, label %8058

; <label>:8035                                    ; preds = %7918
  %8036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %8016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8037 = extractvalue %dx.types.ResRet.f32 %8036, 0
  %8038 = extractvalue %dx.types.ResRet.f32 %8036, 1
  %8039 = extractvalue %dx.types.ResRet.f32 %8036, 2
  %8040 = fadd fast float %8037, -5.000000e-01
  %8041 = fadd fast float %8038, -5.000000e-01
  %8042 = fadd fast float %8039, -5.000000e-01
  %8043 = fmul fast float %5712, 4.000000e+00
  %8044 = fmul fast float %8043, %8026
  %8045 = fmul fast float %8044, %8040
  %8046 = fmul fast float %5713, 4.000000e+00
  %8047 = fmul fast float %8046, %8027
  %8048 = fmul fast float %8047, %8041
  %8049 = fmul fast float %5752, 4.000000e+00
  %8050 = fmul fast float %8049, %8028
  %8051 = fmul fast float %8050, %8042
  %8052 = fadd fast float %8045, %8032
  %8053 = fadd fast float %8048, %8033
  %8054 = fadd fast float %8051, %8034
  %8055 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8056 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  %8057 = call float @dx.op.unary.f32(i32 7, float %8054)  ; Saturate(value)
  br label %8058

; <label>:8058                                    ; preds = %8035, %7918
  %8059 = phi float [ %8055, %8035 ], [ %8032, %7918 ]
  %8060 = phi float [ %8056, %8035 ], [ %8033, %7918 ]
  %8061 = phi float [ %8057, %8035 ], [ %8034, %7918 ]
  %8062 = fmul fast float %7946, 9.843750e-01
  %8063 = fadd fast float %8062, 7.812500e-03
  %8064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8063, float %6006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.ResRet.f32 %8064, 3
  %8069 = fsub fast float %8067, %8065
  %8070 = fsub fast float %8068, %8066
  %8071 = fmul fast float %8069, %6012
  %8072 = fmul fast float %8070, %6012
  %8073 = fadd fast float %8071, %8065
  %8074 = fadd fast float %8072, %8066
  %8075 = fmul fast float %8073, %5712
  %8076 = fmul fast float %8073, %5713
  %8077 = fmul fast float %8073, %5752
  %8078 = fadd fast float %8075, %8074
  %8079 = fadd fast float %8076, %8074
  %8080 = fadd fast float %8077, %8074
  br i1 %6025, label %8081, label %8104

; <label>:8081                                    ; preds = %8058
  %8082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %7946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8083 = extractvalue %dx.types.ResRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.ResRet.f32 %8082, 1
  %8085 = extractvalue %dx.types.ResRet.f32 %8082, 2
  %8086 = fadd fast float %8083, -5.000000e-01
  %8087 = fadd fast float %8084, -5.000000e-01
  %8088 = fadd fast float %8085, -5.000000e-01
  %8089 = fmul fast float %5712, 4.000000e+00
  %8090 = fmul fast float %8089, %8026
  %8091 = fmul fast float %8090, %8086
  %8092 = fmul fast float %5713, 4.000000e+00
  %8093 = fmul fast float %8092, %8027
  %8094 = fmul fast float %8093, %8087
  %8095 = fmul fast float %5752, 4.000000e+00
  %8096 = fmul fast float %8095, %8028
  %8097 = fmul fast float %8096, %8088
  %8098 = fadd fast float %8091, %8078
  %8099 = fadd fast float %8094, %8079
  %8100 = fadd fast float %8097, %8080
  %8101 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8102 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  %8103 = call float @dx.op.unary.f32(i32 7, float %8100)  ; Saturate(value)
  br label %8104

; <label>:8104                                    ; preds = %8081, %8058
  %8105 = phi float [ %8101, %8081 ], [ %8078, %8058 ]
  %8106 = phi float [ %8102, %8081 ], [ %8079, %8058 ]
  %8107 = phi float [ %8103, %8081 ], [ %8080, %8058 ]
  %8108 = call float @dx.op.binary.f32(i32 35, float %8106, float %8107)  ; FMax(a,b)
  %8109 = call float @dx.op.binary.f32(i32 35, float %8105, float %8108)  ; FMax(a,b)
  %8110 = fsub fast float 1.000000e+00, %8109
  %8111 = call float @dx.op.binary.f32(i32 35, float %7971, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8112 = fdiv fast float %4423, %8111
  %8113 = fmul fast float %6083, %8112
  %8114 = fmul fast float %6085, %8112
  %8115 = fmul fast float %6087, %8112
  %8116 = call float @dx.op.unary.f32(i32 21, float %8113)  ; Exp(value)
  %8117 = call float @dx.op.unary.f32(i32 21, float %8114)  ; Exp(value)
  %8118 = call float @dx.op.unary.f32(i32 21, float %8115)  ; Exp(value)
  %8119 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8120 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8121 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8122 = select i1 %6080, float %8119, float 0.000000e+00
  %8123 = select i1 %6081, float %8120, float 0.000000e+00
  %8124 = select i1 %6082, float %8121, float 0.000000e+00
  %8125 = fsub fast float -0.000000e+00, %5709
  %8126 = fsub fast float -0.000000e+00, %5710
  %8127 = fsub fast float -0.000000e+00, %5711
  %8128 = call float @dx.op.dot3.f32(i32 55, float %7677, float %7678, float %7679, float %8125, float %8126, float %8127)  ; Dot3(ax,ay,az,bx,by,bz)
  %8129 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8130 = fmul fast float %8129, %7684
  %8131 = fmul fast float %8129, 9.843750e-01
  %8132 = fadd fast float %8131, 7.812500e-03
  %8133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8132, float %6006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8134 = extractvalue %dx.types.ResRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.ResRet.f32 %8133, 1
  %8136 = extractvalue %dx.types.ResRet.f32 %8133, 2
  %8137 = extractvalue %dx.types.ResRet.f32 %8133, 3
  %8138 = fsub fast float %8136, %8134
  %8139 = fsub fast float %8137, %8135
  %8140 = fmul fast float %8138, %6012
  %8141 = fmul fast float %8139, %6012
  %8142 = fadd fast float %8140, %8134
  %8143 = fadd fast float %8141, %8135
  %8144 = fmul fast float %8142, %5712
  %8145 = fmul fast float %8142, %5713
  %8146 = fmul fast float %8142, %5752
  %8147 = fadd fast float %8144, %8143
  %8148 = fadd fast float %8145, %8143
  %8149 = fadd fast float %8146, %8143
  br i1 %6025, label %8150, label %8173

; <label>:8150                                    ; preds = %8104
  %8151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5075, float %8129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8152 = extractvalue %dx.types.ResRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.ResRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.ResRet.f32 %8151, 2
  %8155 = fadd fast float %8152, -5.000000e-01
  %8156 = fadd fast float %8153, -5.000000e-01
  %8157 = fadd fast float %8154, -5.000000e-01
  %8158 = fmul fast float %5712, 4.000000e+00
  %8159 = fmul fast float %8158, %8026
  %8160 = fmul fast float %8159, %8155
  %8161 = fmul fast float %5713, 4.000000e+00
  %8162 = fmul fast float %8161, %8027
  %8163 = fmul fast float %8162, %8156
  %8164 = fmul fast float %5752, 4.000000e+00
  %8165 = fmul fast float %8164, %8028
  %8166 = fmul fast float %8165, %8157
  %8167 = fadd fast float %8160, %8147
  %8168 = fadd fast float %8163, %8148
  %8169 = fadd fast float %8166, %8149
  %8170 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8171 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8172 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  br label %8173

; <label>:8173                                    ; preds = %8150, %8104
  %8174 = phi float [ %8170, %8150 ], [ %8147, %8104 ]
  %8175 = phi float [ %8171, %8150 ], [ %8148, %8104 ]
  %8176 = phi float [ %8172, %8150 ], [ %8149, %8104 ]
  %8177 = call float @dx.op.binary.f32(i32 35, float %8175, float %8176)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8174, float %8177)  ; FMax(a,b)
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = fmul fast float %6142, %6148
  %8181 = fadd fast float %6141, %8180
  %8182 = call float @dx.op.unary.f32(i32 7, float %8181)  ; Saturate(value)
  %8183 = fsub fast float %7958, %5760
  %8184 = fsub fast float %7959, %5761
  %8185 = fsub fast float %7960, %5762
  %8186 = call float @dx.op.dot3.f32(i32 55, float %8183, float %8184, float %8185, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = call float @dx.op.unary.f32(i32 25, float %8186)  ; Rsqrt(value)
  %8188 = fmul fast float %8183, %8187
  %8189 = fmul fast float %8184, %8187
  %8190 = fmul fast float %8185, %8187
  %8191 = call float @dx.op.dot3.f32(i32 55, float %8125, float %8126, float %8127, float %8188, float %8189, float %8190)  ; Dot3(ax,ay,az,bx,by,bz)
  %8192 = fmul fast float %8191, %8191
  %8193 = call float @dx.op.unary.f32(i32 6, float %8129)  ; FAbs(value)
  %8194 = call float @dx.op.binary.f32(i32 35, float %8182, float 0x3F847AE140000000)  ; FMax(a,b)
  %8195 = fmul fast float %8194, %8194
  %8196 = fmul fast float %8195, %8195
  %8197 = fsub fast float 1.000000e+00, %8196
  %8198 = fmul fast float %7976, %8197
  %8199 = fadd fast float %8198, %8196
  %8200 = bitcast float %8199 to i32
  %8201 = ashr i32 %8200, 1
  %8202 = add nsw i32 %8201, 532487669
  %8203 = bitcast i32 %8202 to float
  %8204 = fadd fast float %8203, %5754
  %8205 = fmul fast float %8196, %8192
  %8206 = fsub fast float 1.000000e+00, %8192
  %8207 = fadd fast float %8206, %8205
  %8208 = fmul fast float %8193, %8193
  %8209 = fmul fast float %8208, %8197
  %8210 = fadd fast float %8209, %8196
  %8211 = bitcast float %8210 to i32
  %8212 = ashr i32 %8211, 1
  %8213 = add nsw i32 %8212, 532487669
  %8214 = bitcast i32 %8213 to float
  %8215 = fadd fast float %8214, %8193
  %8216 = fmul fast float %8207, %8207
  %8217 = fmul fast float %8216, %8204
  %8218 = fmul fast float %8217, %8215
  %8219 = fdiv fast float 1.000000e+00, %8218
  %8220 = bitcast float %8196 to i32
  %8221 = sitofp i32 %8220 to float
  %8222 = fmul fast float %8221, 0x3FE7F73180000000
  %8223 = fadd fast float %8222, 0x41AFE27C40000000
  %8224 = fptosi float %8223 to i32
  %8225 = bitcast i32 %8224 to float
  %8226 = fadd fast float %8225, %8006
  %8227 = bitcast float %8226 to i32
  %8228 = sub nsw i32 2129859010, %8227
  %8229 = bitcast i32 %8228 to float
  %8230 = fmul fast float %8196, %8219
  %8231 = fmul fast float %8230, %8225
  %8232 = fmul fast float %8231, %8229
  br i1 %7669, label %8233, label %8243

; <label>:8233                                    ; preds = %8173
  %8234 = fmul fast float %8130, %8122
  %8235 = fmul fast float %8130, %8123
  %8236 = fmul fast float %8130, %8124
  %8237 = fmul fast float %8234, %8179
  %8238 = fmul fast float %8237, %8232
  %8239 = fmul fast float %8235, %8179
  %8240 = fmul fast float %8239, %8232
  %8241 = fmul fast float %8236, %8179
  %8242 = fmul fast float %8241, %8232
  br label %8243

; <label>:8243                                    ; preds = %8233, %8173
  %8244 = phi float [ %8238, %8233 ], [ 0.000000e+00, %8173 ]
  %8245 = phi float [ %8240, %8233 ], [ 0.000000e+00, %8173 ]
  %8246 = phi float [ %8242, %8233 ], [ 0.000000e+00, %8173 ]
  %8247 = fmul fast float %8059, %8013
  %8248 = fmul fast float %8060, %8013
  %8249 = fmul fast float %8061, %8013
  %8250 = fsub fast float 1.000000e+00, %7947
  %8251 = bitcast float %8250 to i32
  %8252 = sitofp i32 %8251 to float
  %8253 = fmul fast float %8252, 5.000000e+00
  %8254 = fadd fast float %8253, 0xC1EFBF8940000000
  %8255 = fptosi float %8254 to i32
  %8256 = bitcast i32 %8255 to float
  %8257 = fmul fast float %8256, %5076
  %8258 = fmul fast float %8110, %8257
  %8259 = fmul fast float %8258, %6075
  %8260 = fmul fast float %8258, %6076
  %8261 = fmul fast float %8258, %6077
  %8262 = fadd fast float %8259, %8247
  %8263 = fadd fast float %8260, %8248
  %8264 = fadd fast float %8261, %8249
  %8265 = fmul fast float %8262, %7953
  %8266 = fmul fast float %8263, %7953
  %8267 = fmul fast float %8264, %7953
  %8268 = fadd fast float %8265, %8244
  %8269 = fadd fast float %8266, %8245
  %8270 = fadd fast float %8267, %8246
  %8271 = fmul fast float %7935, %5072
  %8272 = fmul fast float %8271, %7953
  %8273 = fmul fast float %8272, %8110
  %8274 = fmul fast float %7936, %5072
  %8275 = fmul fast float %8274, %7953
  %8276 = fmul fast float %8275, %8110
  %8277 = fmul fast float %7937, %5072
  %8278 = fmul fast float %8277, %7953
  %8279 = fmul fast float %8278, %8110
  %8280 = fadd fast float %8273, %7613
  %8281 = fadd fast float %8276, %7614
  %8282 = fadd fast float %8279, %7615
  %8283 = fmul fast float %8271, %8268
  %8284 = fmul fast float %8274, %8269
  %8285 = fmul fast float %8277, %8270
  %8286 = fadd fast float %8283, %7610
  %8287 = fadd fast float %8284, %7611
  %8288 = fadd fast float %8285, %7612
  br label %7743

; <label>:8289                                    ; preds = %7743
  br label %8290

; <label>:8290                                    ; preds = %8289, %7576
  %8291 = phi float [ %7578, %7576 ], [ %7744, %8289 ]
  %8292 = phi float [ %7579, %7576 ], [ %7745, %8289 ]
  %8293 = phi float [ %7580, %7576 ], [ %7746, %8289 ]
  %8294 = phi float [ %7581, %7576 ], [ %7747, %8289 ]
  %8295 = phi float [ %7582, %7576 ], [ %7748, %8289 ]
  %8296 = phi float [ %7583, %7576 ], [ %7749, %8289 ]
  %8297 = add i32 %7577, 1
  %8298 = icmp ugt i32 %8297, %7573
  br i1 %8298, label %8299, label %7576

; <label>:8299                                    ; preds = %8290
  br label %8300

; <label>:8300                                    ; preds = %8299, %7526, %7516
  %8301 = phi float [ %7517, %7516 ], [ %7517, %7526 ], [ %8291, %8299 ]
  %8302 = phi float [ %7518, %7516 ], [ %7518, %7526 ], [ %8292, %8299 ]
  %8303 = phi float [ %7519, %7516 ], [ %7519, %7526 ], [ %8293, %8299 ]
  %8304 = phi float [ %7520, %7516 ], [ %7520, %7526 ], [ %8294, %8299 ]
  %8305 = phi float [ %7521, %7516 ], [ %7521, %7526 ], [ %8295, %8299 ]
  %8306 = phi float [ %7522, %7516 ], [ %7522, %7526 ], [ %8296, %8299 ]
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 0
  %8309 = fmul fast float %8308, %6155
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 3
  %8312 = fsub fast float 1.000000e+00, %5079
  %8313 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8314 = fadd fast float %8306, %5078
  %8315 = fmul fast float %8314, %5079
  %8316 = fmul fast float %8313, %8311
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 3
  %8319 = fmul fast float %8304, %5706
  %8320 = fmul fast float %8305, %5707
  %8321 = fmul fast float %8306, %5708
  %8322 = fcmp fast ogt float %93, %179
  %8323 = and i1 %8322, %5511
  %8324 = or i1 %5517, %8323
  %8325 = icmp eq i32 %5510, 2
  %8326 = fcmp fast ole float %93, %179
  %8327 = and i1 %8326, %8325
  %8328 = or i1 %8327, %8324
  br i1 %8323, label %8329, label %8578

; <label>:8329                                    ; preds = %8300
  %8330 = fmul fast float %6235, %102
  %8331 = fmul fast float %6236, %103
  %8332 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8333 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8334 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8332, float %8333, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.ResRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.ResRet.f32 %8334, 2
  %8338 = extractvalue %dx.types.ResRet.f32 %8334, 3
  %8339 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8332, float %8333, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.ResRet.f32 %8339, 2
  %8343 = extractvalue %dx.types.ResRet.f32 %8339, 3
  %8344 = call float @dx.op.binary.f32(i32 35, float %8336, float %8337)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 35, float %8335, float %8344)  ; FMax(a,b)
  %8346 = call float @dx.op.binary.f32(i32 35, float %8345, float %8338)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 36, float %8341, float %8342)  ; FMin(a,b)
  %8348 = call float @dx.op.binary.f32(i32 36, float %8340, float %8347)  ; FMin(a,b)
  %8349 = call float @dx.op.binary.f32(i32 36, float %8348, float %8343)  ; FMin(a,b)
  %8350 = fmul fast float %8346, 2.550000e+02
  %8351 = fadd fast float %8350, 0x3F70101020000000
  %8352 = fptoui float %8351 to i32
  %8353 = fmul fast float %8349, 2.550000e+02
  %8354 = fadd fast float %8353, 0x3F70101020000000
  %8355 = fptoui float %8354 to i32
  %8356 = icmp ult i32 %8352, %8355
  br i1 %8356, label %8357, label %8523

; <label>:8357                                    ; preds = %8329
  %8358 = fcmp fast ogt float %92, 9.843750e-01
  %8359 = fadd fast float %93, -4.000000e+00
  %8360 = select i1 %8358, float -4.000000e+00, float %8359
  %8361 = call float @dx.op.binary.f32(i32 35, float %8360, float 0.000000e+00)  ; FMax(a,b)
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = fadd fast float %8363, %8361
  %8365 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8366 = fmul fast float %8364, %8365
  %8367 = call float @dx.op.unary.f32(i32 23, float %8366)  ; Log(value)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8369 = fmul fast float %8368, %8367
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8372 = fmul fast float %8369, %8371
  %8373 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8374 = uitofp i32 %8352 to float
  %8375 = uitofp i32 %8355 to float
  %8376 = fadd fast float %8374, 5.000000e-01
  %8377 = fadd fast float %8375, 5.000000e-01
  %8378 = fmul fast float %8371, %8376
  %8379 = fmul fast float %8371, %8377
  %8380 = fadd fast float %8378, 0x3F0FFB4800000000
  %8381 = fadd fast float %8379, 0xBF0FFB4800000000
  %8382 = call float @dx.op.binary.f32(i32 35, float %8373, float %8380)  ; FMax(a,b)
  %8383 = call float @dx.op.binary.f32(i32 36, float %8382, float %8381)  ; FMin(a,b)
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8388 = fmul fast float %8385, %8383
  %8389 = fadd fast float %8387, %8388
  %8390 = fadd fast float %8387, %8386
  %8391 = fsub fast float %8385, %8386
  %8392 = fadd fast float %8391, %8387
  %8393 = call float @dx.op.binary.f32(i32 35, float %8389, float %8390)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8393, float %8392)  ; FMin(a,b)
  %8395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8332, float %8333, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.i32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.i32 %8399, 1
  %8402 = uitofp i32 %8400 to float
  %8403 = uitofp i32 %8401 to float
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = fmul fast float %8402, %8332
  %8408 = fmul fast float %8403, %8333
  %8409 = fadd fast float %8407, -5.000000e-01
  %8410 = fadd fast float %8408, -5.000000e-01
  %8411 = call float @dx.op.unary.f32(i32 22, float %8409)  ; Frc(value)
  %8412 = call float @dx.op.unary.f32(i32 22, float %8410)  ; Frc(value)
  %8413 = fmul fast float %8411, %8411
  %8414 = fmul fast float %8413, %8411
  %8415 = fsub fast float 3.000000e+00, %8411
  %8416 = fmul fast float %8413, %8415
  %8417 = fmul fast float %8411, 3.000000e+00
  %8418 = fmul fast float %8414, 3.000000e+00
  %8419 = fmul fast float %8413, 6.000000e+00
  %8420 = fsub fast float %8418, %8419
  %8421 = fadd fast float %8420, 4.000000e+00
  %8422 = fmul fast float %8421, 0x3FC5555560000000
  %8423 = fmul fast float %8414, -3.000000e+00
  %8424 = fadd fast float %8413, %8411
  %8425 = fmul fast float %8424, 3.000000e+00
  %8426 = fadd fast float %8423, 1.000000e+00
  %8427 = fadd fast float %8426, %8425
  %8428 = fmul fast float %8414, 0x3FC5555560000000
  %8429 = fmul fast float %8412, %8412
  %8430 = fmul fast float %8429, %8412
  %8431 = fsub fast float 3.000000e+00, %8412
  %8432 = fmul fast float %8429, %8431
  %8433 = fmul fast float %8412, 3.000000e+00
  %8434 = fmul fast float %8430, 3.000000e+00
  %8435 = fmul fast float %8429, 6.000000e+00
  %8436 = fsub fast float %8434, %8435
  %8437 = fadd fast float %8436, 4.000000e+00
  %8438 = fmul fast float %8437, 0x3FC5555560000000
  %8439 = fmul fast float %8430, -3.000000e+00
  %8440 = fadd fast float %8429, %8412
  %8441 = fmul fast float %8440, 3.000000e+00
  %8442 = fadd fast float %8439, 1.000000e+00
  %8443 = fadd fast float %8442, %8441
  %8444 = fmul fast float %8430, 0x3FC5555560000000
  %8445 = fadd fast float %8411, 1.000000e+00
  %8446 = fsub fast float 1.000000e+00, %8417
  %8447 = fadd fast float %8446, %8416
  %8448 = fadd fast float %8447, %8421
  %8449 = fmul fast float %8448, 0x3FC5555560000000
  %8450 = fdiv fast float %8422, %8449
  %8451 = fsub fast float %8445, %8450
  %8452 = fsub fast float 1.000000e+00, %8411
  %8453 = fadd fast float %8427, %8414
  %8454 = fmul fast float %8453, 0x3FC5555560000000
  %8455 = fdiv fast float %8428, %8454
  %8456 = fadd fast float %8452, %8455
  %8457 = fadd fast float %8412, 1.000000e+00
  %8458 = fsub fast float 1.000000e+00, %8433
  %8459 = fadd fast float %8458, %8432
  %8460 = fadd fast float %8459, %8437
  %8461 = fmul fast float %8460, 0x3FC5555560000000
  %8462 = fdiv fast float %8438, %8461
  %8463 = fsub fast float %8457, %8462
  %8464 = fsub fast float 1.000000e+00, %8412
  %8465 = fadd fast float %8443, %8430
  %8466 = fmul fast float %8465, 0x3FC5555560000000
  %8467 = fdiv fast float %8444, %8466
  %8468 = fadd fast float %8467, %8464
  %8469 = fmul fast float %8451, %8405
  %8470 = fsub fast float %8332, %8469
  %8471 = fmul fast float %8456, %8405
  %8472 = fadd fast float %8471, %8332
  %8473 = fmul fast float %8468, %8406
  %8474 = fadd fast float %8473, %8333
  %8475 = fmul fast float %8463, %8406
  %8476 = fsub fast float %8333, %8475
  %8477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8470, float %8476, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8478 = extractvalue %dx.types.ResRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.ResRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.ResRet.f32 %8477, 2
  %8481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8472, float %8476, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8470, float %8474, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8486 = extractvalue %dx.types.ResRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.ResRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.ResRet.f32 %8485, 2
  %8489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8472, float %8474, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = fsub fast float %8486, %8478
  %8494 = fsub fast float %8487, %8479
  %8495 = fsub fast float %8488, %8480
  %8496 = fmul fast float %8493, %8466
  %8497 = fmul fast float %8494, %8466
  %8498 = fmul fast float %8495, %8466
  %8499 = fadd fast float %8496, %8478
  %8500 = fadd fast float %8497, %8479
  %8501 = fadd fast float %8498, %8480
  %8502 = fsub fast float %8490, %8482
  %8503 = fsub fast float %8491, %8483
  %8504 = fsub fast float %8492, %8484
  %8505 = fmul fast float %8502, %8466
  %8506 = fmul fast float %8503, %8466
  %8507 = fmul fast float %8504, %8466
  %8508 = fsub fast float %8482, %8499
  %8509 = fadd fast float %8508, %8505
  %8510 = fsub fast float %8483, %8500
  %8511 = fadd fast float %8510, %8506
  %8512 = fsub fast float %8484, %8501
  %8513 = fadd fast float %8512, %8507
  %8514 = fmul fast float %8509, %8454
  %8515 = fmul fast float %8511, %8454
  %8516 = fmul fast float %8513, %8454
  %8517 = fadd fast float %8514, %8499
  %8518 = fadd fast float %8515, %8500
  %8519 = fadd fast float %8516, %8501
  %8520 = fmul fast float %8517, %6290
  %8521 = fmul fast float %8518, %6290
  %8522 = fmul fast float %8519, %6290
  br label %8523

; <label>:8523                                    ; preds = %8357, %8329
  %8524 = phi float [ %8396, %8357 ], [ 1.000000e+00, %8329 ]
  %8525 = phi float [ %8397, %8357 ], [ 1.000000e+00, %8329 ]
  %8526 = phi float [ %8398, %8357 ], [ 1.000000e+00, %8329 ]
  %8527 = phi float [ %8520, %8357 ], [ 0.000000e+00, %8329 ]
  %8528 = phi float [ %8521, %8357 ], [ 0.000000e+00, %8329 ]
  %8529 = phi float [ %8522, %8357 ], [ 0.000000e+00, %8329 ]
  %8530 = call float @dx.op.dot3.f32(i32 55, float %8524, float %8525, float %8526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = select i1 %219, float %8530, float %8524
  %8533 = select i1 %219, float %8530, float %8525
  %8534 = select i1 %219, float 1.000000e+00, float %8526
  %8535 = select i1 %219, float %8531, float %8527
  %8536 = select i1 %219, float 0.000000e+00, float %8528
  %8537 = select i1 %219, float 0.000000e+00, float %8529
  %8538 = fmul fast float %8532, %8319
  %8539 = fmul fast float %8533, %8320
  %8540 = fmul fast float %8534, %8321
  %8541 = fadd fast float %8538, %8535
  %8542 = fadd fast float %8539, %8536
  %8543 = fadd fast float %8537, %8540
  %8544 = fmul fast float %8532, %8301
  %8545 = fmul fast float %8533, %8302
  %8546 = fmul fast float %8534, %8303
  %8547 = fmul fast float %127, %6235
  %8548 = fmul fast float %129, %6236
  %8549 = fsub fast float 1.000000e+00, %8547
  %8550 = fsub fast float 1.000000e+00, %8548
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8554 = extractvalue %dx.types.CBufRet.f32 %8551, 2
  %8555 = fmul fast float %8549, %8552
  %8556 = fmul fast float %8549, %8553
  %8557 = fmul fast float %8549, %8554
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.CBufRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.CBufRet.f32 %8558, 2
  %8562 = fmul fast float %8550, %8559
  %8563 = fmul fast float %8550, %8560
  %8564 = fmul fast float %8550, %8561
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8568 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8569 = fadd fast float %8562, %8566
  %8570 = fadd fast float %8569, %8555
  %8571 = fadd fast float %8563, %8567
  %8572 = fadd fast float %8571, %8556
  %8573 = fadd fast float %8564, %8568
  %8574 = fadd fast float %8573, %8557
  %8575 = fmul fast float %8570, %179
  %8576 = fmul fast float %8572, %179
  %8577 = fmul fast float %8574, %179
  br label %8578

; <label>:8578                                    ; preds = %8523, %8300
  %8579 = phi float [ %8575, %8523 ], [ %157, %8300 ]
  %8580 = phi float [ %8576, %8523 ], [ %158, %8300 ]
  %8581 = phi float [ %8577, %8523 ], [ %159, %8300 ]
  %8582 = phi float [ %179, %8523 ], [ %93, %8300 ]
  %8583 = phi float [ %8541, %8523 ], [ %8319, %8300 ]
  %8584 = phi float [ %8542, %8523 ], [ %8320, %8300 ]
  %8585 = phi float [ %8543, %8523 ], [ %8321, %8300 ]
  %8586 = phi float [ %8544, %8523 ], [ %8301, %8300 ]
  %8587 = phi float [ %8545, %8523 ], [ %8302, %8300 ]
  %8588 = phi float [ %8546, %8523 ], [ %8303, %8300 ]
  %8589 = phi float [ %8524, %8523 ], [ 1.000000e+00, %8300 ]
  br i1 %8328, label %9731, label %8590

; <label>:8590                                    ; preds = %8578
  %8591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8591, 0
  %8593 = extractvalue %dx.types.CBufRet.f32 %8591, 1
  %8594 = extractvalue %dx.types.CBufRet.f32 %8591, 2
  %8595 = extractvalue %dx.types.CBufRet.f32 %8591, 3
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 0
  %8598 = extractvalue %dx.types.CBufRet.f32 %8596, 1
  %8599 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8600 = extractvalue %dx.types.CBufRet.f32 %8596, 3
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8605 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8606, 3
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8614 = extractvalue %dx.types.CBufRet.f32 %8613, 3
  %8615 = extractvalue %dx.types.CBufRet.f32 %8613, 0
  %8616 = extractvalue %dx.types.CBufRet.f32 %8613, 1
  %8617 = extractvalue %dx.types.CBufRet.f32 %8613, 2
  %8618 = fcmp fast olt float %8617, -5.000000e-01
  %8619 = call float @dx.op.dot3.f32(i32 55, float %8579, float %8580, float %8581, float %8579, float %8580, float %8581)  ; Dot3(ax,ay,az,bx,by,bz)
  %8620 = call float @dx.op.unary.f32(i32 25, float %8619)  ; Rsqrt(value)
  %8621 = fmul fast float %8620, %8619
  %8622 = fmul fast float %8620, %8579
  %8623 = fmul fast float %8620, %8580
  %8624 = fmul fast float %8620, %8581
  %8625 = fadd fast float %8621, %8595
  %8626 = call float @dx.op.dot3.f32(i32 55, float %8622, float %8623, float %8624, float %8592, float %8593, float %8594)  ; Dot3(ax,ay,az,bx,by,bz)
  %8627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.i32 %8627, 1
  %8629 = and i32 %8628, 1
  %8630 = icmp ne i32 %8629, 0
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8633 = fcmp fast ogt float %8632, 0.000000e+00
  %8634 = and i1 %8630, %8633
  br i1 %8634, label %8635, label %9041, !dx.controlflow.hints !125

; <label>:8635                                    ; preds = %8590
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 3
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8642 = fsub fast float %8639, %8641
  %8643 = and i32 %8628, 2
  %8644 = extractvalue %dx.types.CBufRet.i32 %8627, 0
  %8645 = call i32 @dx.op.binary.i32(i32 40, i32 %8644, i32 3)  ; UMin(a,b)
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8649 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8651 = fsub fast float %8647, %8649
  %8652 = fsub fast float %8648, %8650
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = fcmp fast ogt float %8654, 0.000000e+00
  %8656 = fsub fast float -0.000000e+00, %8651
  %8657 = fsub fast float -0.000000e+00, %8652
  %8658 = call float @dx.op.dot2.f32(i32 54, float %8622, float %8623, float %8622, float %8623)  ; Dot2(ax,ay,bx,by)
  %8659 = call float @dx.op.dot2.f32(i32 54, float %8622, float %8623, float %8656, float %8657)  ; Dot2(ax,ay,bx,by)
  %8660 = fmul fast float %8659, 2.000000e+00
  %8661 = call float @dx.op.dot2.f32(i32 54, float %8656, float %8657, float %8656, float %8657)  ; Dot2(ax,ay,bx,by)
  %8662 = fmul fast float %8654, %8654
  %8663 = fsub fast float %8661, %8662
  %8664 = fmul fast float %8660, %8660
  %8665 = fmul fast float %8658, 4.000000e+00
  %8666 = fmul fast float %8665, %8663
  %8667 = fsub fast float %8664, %8666
  %8668 = fcmp fast ogt float %8667, 0.000000e+00
  br i1 %8668, label %8669, label %8684

; <label>:8669                                    ; preds = %8635
  %8670 = fcmp fast ogt float %8660, 0.000000e+00
  %8671 = call float @dx.op.unary.f32(i32 24, float %8667)  ; Sqrt(value)
  %8672 = fsub fast float -0.000000e+00, %8671
  %8673 = select i1 %8670, float %8671, float %8672
  %8674 = fadd fast float %8673, %8660
  %8675 = fmul float %8674, -5.000000e-01
  %8676 = fdiv fast float %8675, %8658
  %8677 = call float @dx.op.binary.f32(i32 35, float %8676, float 0.000000e+00)  ; FMax(a,b)
  %8678 = call float @dx.op.binary.f32(i32 36, float %8621, float %8677)  ; FMin(a,b)
  %8679 = fdiv fast float %8663, %8675
  %8680 = call float @dx.op.binary.f32(i32 35, float %8679, float 0.000000e+00)  ; FMax(a,b)
  %8681 = call float @dx.op.binary.f32(i32 36, float %8621, float %8680)  ; FMin(a,b)
  %8682 = call float @dx.op.binary.f32(i32 36, float %8678, float %8681)  ; FMin(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8678, float %8681)  ; FMax(a,b)
  br label %8684

; <label>:8684                                    ; preds = %8669, %8635
  %8685 = phi float [ %8683, %8669 ], [ -1.000000e+00, %8635 ]
  %8686 = phi float [ %8682, %8669 ], [ -1.000000e+00, %8635 ]
  %8687 = phi i1 [ true, %8669 ], [ false, %8635 ]
  %8688 = and i1 %8655, %8687
  br i1 %8688, label %8689, label %8691

; <label>:8689                                    ; preds = %8684
  %8690 = fcmp fast oeq float %8686, %8685
  br i1 %8690, label %8994, label %8692

; <label>:8691                                    ; preds = %8684
  br i1 %8655, label %8994, label %8692

; <label>:8692                                    ; preds = %8691, %8689
  %8693 = phi float [ %8621, %8691 ], [ %8685, %8689 ]
  %8694 = phi float [ 0.000000e+00, %8691 ], [ %8686, %8689 ]
  %8695 = icmp ne i32 %8643, 0
  %8696 = fmul fast float %8693, %8624
  %8697 = fadd fast float %8696, %8637
  %8698 = fmul fast float %8697, %8693
  %8699 = select i1 %8695, float 0.000000e+00, float %8698
  %8700 = fcmp fast oeq float %8624, 0.000000e+00
  %8701 = fdiv fast float %8642, %8624
  %8702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8701)  ; FMax(a,b)
  %8703 = select i1 %8700, float %8693, float %8702
  %8704 = call float @dx.op.binary.f32(i32 36, float %8693, float %8703)  ; FMin(a,b)
  %8705 = fcmp fast ogt float %8624, 0.000000e+00
  %8706 = fcmp fast olt float %8642, 0.000000e+00
  br i1 %8705, label %8707, label %8764

; <label>:8707                                    ; preds = %8692
  %8708 = icmp eq i32 %8643, 0
  br i1 %8706, label %8709, label %8753

; <label>:8709                                    ; preds = %8707
  %8710 = select i1 %8708, float %8693, float 0.000000e+00
  %8711 = fsub fast float -0.000000e+00, %8710
  %8712 = call float @dx.op.unary.f32(i32 6, float %8711)  ; FAbs(value)
  %8713 = fmul fast float %8710, %8624
  %8714 = fadd fast float %8713, %8637
  %8715 = fmul fast float %8712, %8714
  %8716 = fsub fast float %8699, %8715
  %8717 = fsub fast float %8693, %8712
  %8718 = select i1 %8708, float %8717, float 0.000000e+00
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.CBufRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.CBufRet.f32 %8719, 2
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.CBufRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8727 = extractvalue %dx.types.CBufRet.f32 %8723, 3
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8730 = call float @dx.op.binary.f32(i32 36, float %8716, float %8729)  ; FMin(a,b)
  %8731 = fmul fast float %8727, %8718
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fsub fast float %8724, %8720
  %8734 = fsub fast float %8725, %8721
  %8735 = fsub fast float %8726, %8722
  %8736 = fmul fast float %8732, %8733
  %8737 = fmul fast float %8732, %8734
  %8738 = fmul fast float %8732, %8735
  %8739 = fadd fast float %8736, %8720
  %8740 = fadd fast float %8737, %8721
  %8741 = fadd fast float %8738, %8722
  %8742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.f32 %8742, 0
  %8744 = extractvalue %dx.types.CBufRet.f32 %8742, 1
  %8745 = fadd fast float %8744, %8743
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8742, 2
  %8748 = extractvalue %dx.types.CBufRet.f32 %8742, 3
  %8749 = fadd fast float %8748, %8747
  %8750 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8751 = fmul fast float %8746, %8730
  %8752 = fmul fast float %8751, %8750
  br label %8994

; <label>:8753                                    ; preds = %8707
  br i1 %8708, label %8754, label %8775

; <label>:8754                                    ; preds = %8753
  %8755 = call float @dx.op.binary.f32(i32 36, float %8704, float %8694)  ; FMin(a,b)
  %8756 = fsub fast float %8704, %8755
  %8757 = fsub fast float %8756, %8693
  %8758 = call float @dx.op.unary.f32(i32 6, float %8757)  ; FAbs(value)
  %8759 = fadd fast float %8756, %8693
  %8760 = fmul fast float %8759, %8624
  %8761 = fadd fast float %8760, %8637
  %8762 = fmul fast float %8761, %8758
  %8763 = fsub fast float %8699, %8762
  br label %8775

; <label>:8764                                    ; preds = %8692
  br i1 %8706, label %8765, label %8775

; <label>:8765                                    ; preds = %8764
  %8766 = call float @dx.op.binary.f32(i32 35, float %8694, float %8704)  ; FMax(a,b)
  %8767 = icmp eq i32 %8643, 0
  %8768 = select i1 %8767, float %8704, float 0.000000e+00
  %8769 = fsub fast float -0.000000e+00, %8768
  %8770 = call float @dx.op.unary.f32(i32 6, float %8769)  ; FAbs(value)
  %8771 = fmul fast float %8768, %8624
  %8772 = fadd fast float %8771, %8637
  %8773 = fmul fast float %8770, %8772
  %8774 = fsub fast float %8699, %8773
  br label %8775

; <label>:8775                                    ; preds = %8765, %8764, %8754, %8753
  %8776 = phi float [ %8694, %8753 ], [ %8694, %8754 ], [ %8766, %8765 ], [ %8694, %8764 ]
  %8777 = phi float [ 0.000000e+00, %8753 ], [ %8758, %8754 ], [ %8770, %8765 ], [ 0.000000e+00, %8764 ]
  %8778 = phi float [ %8699, %8753 ], [ %8763, %8754 ], [ %8774, %8765 ], [ %8699, %8764 ]
  %8779 = phi float [ %8704, %8753 ], [ %8704, %8754 ], [ %8693, %8765 ], [ %8693, %8764 ]
  %8780 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8780, align 4, !tbaa !126, !noalias !128
  %8781 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8781, align 4, !tbaa !126, !noalias !128
  %8782 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8782, align 4, !tbaa !126, !noalias !128
  %8783 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8783, align 4, !tbaa !126, !noalias !128
  %8784 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8784, align 4, !tbaa !126, !noalias !128
  %8785 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8785, align 4, !tbaa !126, !noalias !128
  %8786 = icmp sgt i32 %8645, 0
  br i1 %8786, label %8787, label %8848

; <label>:8787                                    ; preds = %8775
  br label %8788

; <label>:8788                                    ; preds = %8837, %8787
  %8789 = phi i32 [ %8838, %8837 ], [ 0, %8787 ]
  %8790 = phi i32 [ %8839, %8837 ], [ 0, %8787 ]
  %8791 = add nuw i32 %8790, 171
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8791)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 0
  %8797 = extractvalue %dx.types.CBufRet.f32 %8795, 1
  %8798 = fsub fast float %8793, %8796
  %8799 = fsub fast float %8794, %8797
  %8800 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8801 = fsub fast float -0.000000e+00, %8798
  %8802 = fsub fast float -0.000000e+00, %8799
  %8803 = call float @dx.op.dot2.f32(i32 54, float %8622, float %8623, float %8801, float %8802)  ; Dot2(ax,ay,bx,by)
  %8804 = fmul fast float %8803, 2.000000e+00
  %8805 = call float @dx.op.dot2.f32(i32 54, float %8801, float %8802, float %8801, float %8802)  ; Dot2(ax,ay,bx,by)
  %8806 = fmul fast float %8800, %8800
  %8807 = fsub fast float %8805, %8806
  %8808 = fmul fast float %8804, %8804
  %8809 = fmul fast float %8665, %8807
  %8810 = fsub fast float %8808, %8809
  %8811 = fcmp fast ogt float %8810, 0.000000e+00
  br i1 %8811, label %8812, label %8827

; <label>:8812                                    ; preds = %8788
  %8813 = fcmp fast ogt float %8804, 0.000000e+00
  %8814 = call float @dx.op.unary.f32(i32 24, float %8810)  ; Sqrt(value)
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = select i1 %8813, float %8814, float %8815
  %8817 = fadd fast float %8816, %8804
  %8818 = fmul float %8817, -5.000000e-01
  %8819 = fdiv fast float %8818, %8658
  %8820 = call float @dx.op.binary.f32(i32 35, float %8819, float 0.000000e+00)  ; FMax(a,b)
  %8821 = call float @dx.op.binary.f32(i32 36, float %8693, float %8820)  ; FMin(a,b)
  %8822 = fdiv fast float %8807, %8818
  %8823 = call float @dx.op.binary.f32(i32 35, float %8822, float 0.000000e+00)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 36, float %8693, float %8823)  ; FMin(a,b)
  %8825 = call float @dx.op.binary.f32(i32 36, float %8821, float %8824)  ; FMin(a,b)
  %8826 = call float @dx.op.binary.f32(i32 35, float %8821, float %8824)  ; FMax(a,b)
  br label %8827

; <label>:8827                                    ; preds = %8812, %8788
  %8828 = phi float [ %8826, %8812 ], [ -1.000000e+00, %8788 ]
  %8829 = phi float [ %8825, %8812 ], [ -1.000000e+00, %8788 ]
  %8830 = phi i1 [ true, %8812 ], [ false, %8788 ]
  br i1 %8830, label %8831, label %8837

; <label>:8831                                    ; preds = %8827
  %8832 = call float @dx.op.binary.f32(i32 35, float %8776, float %8829)  ; FMax(a,b)
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8790
  store float %8832, float* %8833, align 4, !tbaa !126, !noalias !128
  %8834 = call float @dx.op.binary.f32(i32 35, float %8776, float %8828)  ; FMax(a,b)
  %8835 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8790
  store float %8834, float* %8835, align 4, !tbaa !126, !noalias !128
  %8836 = add nsw i32 %8789, 1
  br label %8837

; <label>:8837                                    ; preds = %8831, %8827
  %8838 = phi i32 [ %8836, %8831 ], [ %8789, %8827 ]
  %8839 = add nuw nsw i32 %8790, 1
  %8840 = icmp eq i32 %8839, %8645
  br i1 %8840, label %8841, label %8788

; <label>:8841                                    ; preds = %8837
  %8842 = load float, float* %8782, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8843 = load float, float* %8781, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8844 = load float, float* %8780, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8845 = load float, float* %8785, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8846 = load float, float* %8784, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8847 = load float, float* %8783, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8848

; <label>:8848                                    ; preds = %8841, %8775
  %8849 = phi float [ -1.000000e+00, %8775 ], [ %8847, %8841 ]
  %8850 = phi float [ -1.000000e+00, %8775 ], [ %8846, %8841 ]
  %8851 = phi float [ -1.000000e+00, %8775 ], [ %8845, %8841 ]
  %8852 = phi float [ -1.000000e+00, %8775 ], [ %8844, %8841 ]
  %8853 = phi float [ -1.000000e+00, %8775 ], [ %8843, %8841 ]
  %8854 = phi float [ -1.000000e+00, %8775 ], [ %8842, %8841 ]
  %8855 = phi i32 [ 0, %8775 ], [ %8838, %8841 ]
  %8856 = call float @dx.op.binary.f32(i32 36, float %8853, float %8854)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8852, float %8856)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 35, float %8852, float %8853)  ; FMax(a,b)
  %8859 = call float @dx.op.binary.f32(i32 36, float %8858, float %8854)  ; FMin(a,b)
  %8860 = call float @dx.op.binary.f32(i32 36, float %8852, float %8853)  ; FMin(a,b)
  %8861 = call float @dx.op.binary.f32(i32 35, float %8860, float %8859)  ; FMax(a,b)
  %8862 = call float @dx.op.binary.f32(i32 35, float %8853, float %8854)  ; FMax(a,b)
  %8863 = call float @dx.op.binary.f32(i32 35, float %8852, float %8862)  ; FMax(a,b)
  store float %8857, float* %8780, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8861, float* %8781, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8863, float* %8782, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8864 = call float @dx.op.binary.f32(i32 36, float %8850, float %8851)  ; FMin(a,b)
  %8865 = call float @dx.op.binary.f32(i32 36, float %8849, float %8864)  ; FMin(a,b)
  %8866 = call float @dx.op.binary.f32(i32 35, float %8849, float %8850)  ; FMax(a,b)
  %8867 = call float @dx.op.binary.f32(i32 36, float %8866, float %8851)  ; FMin(a,b)
  %8868 = call float @dx.op.binary.f32(i32 36, float %8849, float %8850)  ; FMin(a,b)
  %8869 = call float @dx.op.binary.f32(i32 35, float %8868, float %8867)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 35, float %8850, float %8851)  ; FMax(a,b)
  %8871 = call float @dx.op.binary.f32(i32 35, float %8849, float %8870)  ; FMax(a,b)
  store float %8865, float* %8783, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8869, float* %8784, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8871, float* %8785, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8872 = sub nsw i32 3, %8855
  %8873 = icmp sgt i32 %8872, 2
  br i1 %8873, label %8874, label %8912

; <label>:8874                                    ; preds = %8848
  %8875 = icmp eq i32 %8643, 0
  %8876 = fsub fast float %8693, %8777
  %8877 = select i1 %8875, float %8876, float %8777
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.CBufRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.CBufRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.CBufRet.f32 %8882, 2
  %8886 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 3
  %8889 = call float @dx.op.binary.f32(i32 36, float %8778, float %8888)  ; FMin(a,b)
  %8890 = fmul fast float %8886, %8877
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = fsub fast float %8883, %8879
  %8893 = fsub fast float %8884, %8880
  %8894 = fsub fast float %8885, %8881
  %8895 = fmul fast float %8891, %8892
  %8896 = fmul fast float %8891, %8893
  %8897 = fmul fast float %8891, %8894
  %8898 = fadd fast float %8895, %8879
  %8899 = fadd fast float %8896, %8880
  %8900 = fadd fast float %8897, %8881
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = extractvalue %dx.types.CBufRet.f32 %8901, 1
  %8904 = fadd fast float %8903, %8902
  %8905 = call float @dx.op.unary.f32(i32 7, float %8904)  ; Saturate(value)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8907 = extractvalue %dx.types.CBufRet.f32 %8901, 3
  %8908 = fadd fast float %8907, %8906
  %8909 = call float @dx.op.unary.f32(i32 7, float %8908)  ; Saturate(value)
  %8910 = fmul fast float %8905, %8889
  %8911 = fmul fast float %8910, %8909
  br label %8994

; <label>:8912                                    ; preds = %8848
  %8913 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8872
  %8914 = load float, float* %8913, align 4, !tbaa !126, !noalias !128
  %8915 = fcmp fast olt float %8914, %8779
  %8916 = icmp sgt i32 %8855, 0
  %8917 = and i1 %8916, %8915
  br i1 %8917, label %8918, label %8955

; <label>:8918                                    ; preds = %8912
  br label %8919

; <label>:8919                                    ; preds = %8948, %8918
  %8920 = phi float [ %8949, %8948 ], [ %8777, %8918 ]
  %8921 = phi float [ %8950, %8948 ], [ %8778, %8918 ]
  %8922 = phi float [ %8930, %8948 ], [ %8914, %8918 ]
  %8923 = phi i32 [ %8927, %8948 ], [ %8872, %8918 ]
  %8924 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8923
  %8925 = load float, float* %8924, align 4, !tbaa !126, !noalias !128
  %8926 = icmp slt i32 %8923, 2
  %8927 = add nsw i32 %8923, 1
  %8928 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8927
  %8929 = load float, float* %8928, align 4, !tbaa !126, !noalias !128
  %8930 = select i1 %8926, float %8929, float %8693
  %8931 = call float @dx.op.binary.f32(i32 36, float %8930, float %8925)  ; FMin(a,b)
  %8932 = call float @dx.op.binary.f32(i32 36, float %8779, float %8931)  ; FMin(a,b)
  %8933 = icmp eq i32 %8643, 0
  %8934 = fadd fast float %8932, %8922
  %8935 = fmul fast float %8934, %8624
  %8936 = fadd fast float %8935, %8637
  br i1 %8933, label %8942, label %8937

; <label>:8937                                    ; preds = %8919
  %8938 = fsub fast float %8932, %8922
  %8939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8938)  ; FMax(a,b)
  %8940 = fmul fast float %8939, %8936
  %8941 = fadd fast float %8940, %8921
  br label %8948

; <label>:8942                                    ; preds = %8919
  %8943 = fsub fast float %8922, %8932
  %8944 = call float @dx.op.unary.f32(i32 6, float %8943)  ; FAbs(value)
  %8945 = fadd fast float %8944, %8920
  %8946 = fmul fast float %8944, %8936
  %8947 = fsub fast float %8921, %8946
  br label %8948

; <label>:8948                                    ; preds = %8942, %8937
  %8949 = phi float [ %8939, %8937 ], [ %8945, %8942 ]
  %8950 = phi float [ %8941, %8937 ], [ %8947, %8942 ]
  %8951 = fcmp fast olt float %8930, %8779
  %8952 = icmp slt i32 %8927, 3
  %8953 = and i1 %8952, %8951
  br i1 %8953, label %8919, label %8954

; <label>:8954                                    ; preds = %8948
  br label %8955

; <label>:8955                                    ; preds = %8954, %8912
  %8956 = phi float [ %8777, %8912 ], [ %8949, %8954 ]
  %8957 = phi float [ %8778, %8912 ], [ %8950, %8954 ]
  %8958 = fsub fast float %8693, %8956
  %8959 = select i1 %8695, float %8956, float %8958
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %8969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.f32 %8969, 3
  %8971 = call float @dx.op.binary.f32(i32 36, float %8957, float %8970)  ; FMin(a,b)
  %8972 = fmul fast float %8968, %8959
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fsub fast float %8965, %8961
  %8975 = fsub fast float %8966, %8962
  %8976 = fsub fast float %8967, %8963
  %8977 = fmul fast float %8973, %8974
  %8978 = fmul fast float %8973, %8975
  %8979 = fmul fast float %8973, %8976
  %8980 = fadd fast float %8977, %8961
  %8981 = fadd fast float %8978, %8962
  %8982 = fadd fast float %8979, %8963
  %8983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8983, 0
  %8985 = extractvalue %dx.types.CBufRet.f32 %8983, 1
  %8986 = fadd fast float %8985, %8984
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8983, 2
  %8989 = extractvalue %dx.types.CBufRet.f32 %8983, 3
  %8990 = fadd fast float %8989, %8988
  %8991 = call float @dx.op.unary.f32(i32 7, float %8990)  ; Saturate(value)
  %8992 = fmul fast float %8987, %8971
  %8993 = fmul fast float %8992, %8991
  br label %8994

; <label>:8994                                    ; preds = %8955, %8874, %8709, %8691, %8689
  %8995 = phi float [ %8718, %8709 ], [ %8877, %8874 ], [ %8959, %8955 ], [ 0.000000e+00, %8689 ], [ 0.000000e+00, %8691 ]
  %8996 = phi float [ %8752, %8709 ], [ %8911, %8874 ], [ %8993, %8955 ], [ 0.000000e+00, %8689 ], [ 0.000000e+00, %8691 ]
  %8997 = phi float [ %8739, %8709 ], [ %8898, %8874 ], [ %8980, %8955 ], [ 0.000000e+00, %8689 ], [ 0.000000e+00, %8691 ]
  %8998 = phi float [ %8740, %8709 ], [ %8899, %8874 ], [ %8981, %8955 ], [ 0.000000e+00, %8689 ], [ 0.000000e+00, %8691 ]
  %8999 = phi float [ %8741, %8709 ], [ %8900, %8874 ], [ %8982, %8955 ], [ 0.000000e+00, %8689 ], [ 0.000000e+00, %8691 ]
  %9000 = fmul fast float %8632, %8996
  %9001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9002 = extractvalue %dx.types.CBufRet.f32 %9001, 2
  %9003 = fsub fast float %8639, %9002
  %9004 = fcmp fast olt float %9000, -2.000000e+01
  %9005 = call float @dx.op.unary.f32(i32 21, float %9000)  ; Exp(value)
  %9006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9007 = extractvalue %dx.types.CBufRet.f32 %9006, 2
  %9008 = extractvalue %dx.types.CBufRet.f32 %9006, 3
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 2
  %9011 = fmul fast float %9008, %9003
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = fsub fast float 1.000000e+00, %9012
  %9014 = fmul fast float %8624, 5.000000e-01
  %9015 = fadd fast float %9014, 5.000000e-01
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = fsub fast float 1.000000e+00, %9016
  %9018 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9013)  ; FMax(a,b)
  %9019 = fdiv fast float %9017, %9018
  %9020 = fsub fast float %9003, %8581
  %9021 = call float @dx.op.unary.f32(i32 6, float %9020)  ; FAbs(value)
  %9022 = fmul fast float %9021, %9007
  %9023 = call float @dx.op.unary.f32(i32 7, float %9019)  ; Saturate(value)
  %9024 = fsub fast float 1.000000e+00, %9022
  %9025 = fmul fast float %9024, %9023
  %9026 = fadd fast float %9025, %9022
  %9027 = fmul fast float %9010, %9003
  %9028 = call float @dx.op.unary.f32(i32 7, float %9027)  ; Saturate(value)
  %9029 = fsub fast float 1.000000e+00, %9026
  %9030 = fmul fast float %9029, %9028
  %9031 = fadd fast float %9030, %9026
  %9032 = call float @dx.op.unary.f32(i32 7, float %9031)  ; Saturate(value)
  %9033 = fadd fast float %9005, -1.000000e+00
  %9034 = select i1 %9004, float -1.000000e+00, float %9033
  %9035 = fmul fast float %9032, %9034
  %9036 = fadd fast float %9035, 1.000000e+00
  %9037 = fsub fast float -0.000000e+00, %9035
  %9038 = fmul fast float %8997, %9037
  %9039 = fmul fast float %8998, %9037
  %9040 = fmul fast float %8999, %9037
  br label %9041

; <label>:9041                                    ; preds = %8994, %8590
  %9042 = phi float [ %8995, %8994 ], [ 0.000000e+00, %8590 ]
  %9043 = phi float [ %9036, %8994 ], [ 1.000000e+00, %8590 ]
  %9044 = phi float [ %9038, %8994 ], [ 0.000000e+00, %8590 ]
  %9045 = phi float [ %9039, %8994 ], [ 0.000000e+00, %8590 ]
  %9046 = phi float [ %9040, %8994 ], [ 0.000000e+00, %8590 ]
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9049 = fsub fast float 1.000000e+00, %9043
  %9050 = fmul fast float %9049, %8625
  %9051 = fmul fast float %9050, %9048
  %9052 = fsub fast float %8625, %9051
  br i1 %8618, label %9053, label %9082, !dx.controlflow.hints !164

; <label>:9053                                    ; preds = %9041
  %9054 = fmul fast float %8626, %8615
  %9055 = fadd fast float %9054, %8616
  %9056 = call float @dx.op.unary.f32(i32 7, float %9055)  ; Saturate(value)
  %9057 = fmul fast float %8597, %9052
  %9058 = fsub fast float -0.000000e+00, %9057
  %9059 = fmul fast float %8598, %9052
  %9060 = fsub fast float -0.000000e+00, %9059
  %9061 = call float @dx.op.unary.f32(i32 21, float %9058)  ; Exp(value)
  %9062 = call float @dx.op.unary.f32(i32 21, float %9060)  ; Exp(value)
  %9063 = call float @dx.op.binary.f32(i32 35, float %8605, float %9061)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 35, float %8605, float %9062)  ; FMax(a,b)
  %9065 = fsub fast float %9064, %9063
  %9066 = fmul fast float %9065, %9056
  %9067 = fadd fast float %9066, %9063
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fsub fast float %8602, %8607
  %9070 = fsub fast float %8603, %8608
  %9071 = fsub fast float %8604, %8609
  %9072 = fmul fast float %9056, %9069
  %9073 = fmul fast float %9056, %9070
  %9074 = fmul fast float %9056, %9071
  %9075 = fadd fast float %9072, %8607
  %9076 = fadd fast float %9073, %8608
  %9077 = fadd fast float %9074, %8609
  %9078 = fsub fast float 1.000000e+00, %9068
  %9079 = fmul fast float %9078, %9075
  %9080 = fmul fast float %9078, %9076
  %9081 = fmul fast float %9078, %9077
  br label %9141

; <label>:9082                                    ; preds = %9041
  %9083 = fmul fast float %9052, %8614
  %9084 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9085 = fsub fast float 2.000000e+00, %9084
  %9086 = fmul fast float %9084, 9.921875e-01
  %9087 = fmul fast float %9086, %9085
  %9088 = fadd fast float %9087, 3.906250e-03
  %9089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9088, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9090 = extractvalue %dx.types.ResRet.f32 %9089, 0
  %9091 = fsub fast float %9084, %9090
  %9092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9091)  ; FMax(a,b)
  %9093 = fmul fast float %8600, %8581
  %9094 = call float @dx.op.unary.f32(i32 6, float %9093)  ; FAbs(value)
  %9095 = fcmp fast ogt float %9094, 0x3EB0C6F7A0000000
  br i1 %9095, label %9096, label %9102, !dx.controlflow.hints !165

; <label>:9096                                    ; preds = %9082
  %9097 = fmul fast float %9093, 0xBFF7154760000000
  %9098 = call float @dx.op.unary.f32(i32 21, float %9097)  ; Exp(value)
  %9099 = fsub fast float 1.000000e+00, %9098
  %9100 = fdiv fast float %9099, %9093
  %9101 = fmul fast float %9100, %8610
  br label %9102

; <label>:9102                                    ; preds = %9096, %9082
  %9103 = phi float [ %9101, %9096 ], [ %8610, %9082 ]
  %9104 = fadd fast float %9103, %8612
  %9105 = fmul fast float %9104, %9092
  %9106 = fmul fast float %8597, %9105
  %9107 = fsub fast float -0.000000e+00, %9106
  %9108 = fmul fast float %8598, %9105
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fmul fast float %8599, %9105
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = call float @dx.op.unary.f32(i32 21, float %9107)  ; Exp(value)
  %9113 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9114 = call float @dx.op.unary.f32(i32 21, float %9111)  ; Exp(value)
  %9115 = fmul fast float %8626, %8626
  %9116 = fadd fast float %9115, 1.000000e+00
  %9117 = fmul fast float %9116, 0x3FAE8EC8A0000000
  %9118 = fmul fast float %9117, %8607
  %9119 = fmul fast float %9117, %8608
  %9120 = fmul fast float %9117, %8609
  %9121 = fmul fast float %8626, %8605
  %9122 = fsub fast float 1.000000e+00, %9121
  %9123 = fmul fast float %8605, %8605
  %9124 = fsub fast float 1.000000e+00, %9123
  %9125 = fmul fast float %9124, 0x3FB45F3060000000
  %9126 = fmul fast float %9122, %9122
  %9127 = fdiv fast float 1.000000e+00, %9126
  %9128 = fmul fast float %9125, %9127
  %9129 = fmul fast float %9128, %8602
  %9130 = fmul fast float %9128, %8603
  %9131 = fmul fast float %9128, %8604
  %9132 = fadd fast float %9129, %9118
  %9133 = fadd fast float %9130, %9119
  %9134 = fadd fast float %9131, %9120
  %9135 = fsub fast float 1.000000e+00, %9112
  %9136 = fsub fast float 1.000000e+00, %9113
  %9137 = fsub fast float 1.000000e+00, %9114
  %9138 = fmul fast float %9132, %9135
  %9139 = fmul fast float %9133, %9136
  %9140 = fmul fast float %9134, %9137
  br label %9141

; <label>:9141                                    ; preds = %9102, %9053
  %9142 = phi float [ %9079, %9053 ], [ %9138, %9102 ]
  %9143 = phi float [ %9080, %9053 ], [ %9139, %9102 ]
  %9144 = phi float [ %9081, %9053 ], [ %9140, %9102 ]
  %9145 = phi float [ %9068, %9053 ], [ %9112, %9102 ]
  %9146 = phi float [ %9068, %9053 ], [ %9113, %9102 ]
  %9147 = phi float [ %9068, %9053 ], [ %9114, %9102 ]
  br i1 %8634, label %9148, label %9346, !dx.controlflow.hints !166

; <label>:9148                                    ; preds = %9141
  %9149 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9150 = fmul fast float %9149, %9049
  %9151 = fsub fast float %9044, %9142
  %9152 = fsub fast float %9045, %9143
  %9153 = fsub fast float %9046, %9144
  %9154 = fmul fast float %9150, %9151
  %9155 = fmul fast float %9150, %9152
  %9156 = fmul fast float %9150, %9153
  %9157 = fadd fast float %9154, %9142
  %9158 = fadd fast float %9155, %9143
  %9159 = fadd fast float %9156, %9144
  %9160 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9145)  ; FMax(a,b)
  %9161 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9146)  ; FMax(a,b)
  %9162 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9147)  ; FMax(a,b)
  %9163 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9043)  ; FMax(a,b)
  %9164 = call float @dx.op.binary.f32(i32 35, float %9042, float %9052)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9164)  ; FMax(a,b)
  %9166 = fdiv fast float %9042, %9165
  %9167 = call float @dx.op.unary.f32(i32 7, float %9166)  ; Saturate(value)
  %9168 = fdiv fast float %9052, %9165
  %9169 = call float @dx.op.unary.f32(i32 7, float %9168)  ; Saturate(value)
  %9170 = fcmp fast une float %9163, 1.000000e+00
  br i1 %9170, label %9171, label %9184, !dx.controlflow.hints !167

; <label>:9171                                    ; preds = %9148
  %9172 = call float @dx.op.unary.f32(i32 23, float %9163)  ; Log(value)
  %9173 = fmul fast float %9172, 0x3FE62E4300000000
  %9174 = fmul fast float %9044, %9173
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fmul fast float %9045, %9173
  %9177 = fsub fast float -0.000000e+00, %9176
  %9178 = fmul fast float %9046, %9173
  %9179 = fsub fast float -0.000000e+00, %9178
  %9180 = fsub fast float 1.000000e+00, %9163
  %9181 = fdiv fast float %9175, %9180
  %9182 = fdiv fast float %9177, %9180
  %9183 = fdiv fast float %9179, %9180
  br label %9184

; <label>:9184                                    ; preds = %9171, %9148
  %9185 = phi float [ %9181, %9171 ], [ %9044, %9148 ]
  %9186 = phi float [ %9182, %9171 ], [ %9045, %9148 ]
  %9187 = phi float [ %9183, %9171 ], [ %9046, %9148 ]
  %9188 = phi float [ %9173, %9171 ], [ 0.000000e+00, %9148 ]
  %9189 = fcmp fast une float %9160, 1.000000e+00
  br i1 %9189, label %9190, label %9197, !dx.controlflow.hints !168

; <label>:9190                                    ; preds = %9184
  %9191 = call float @dx.op.unary.f32(i32 23, float %9160)  ; Log(value)
  %9192 = fmul fast float %9191, 0x3FE62E4300000000
  %9193 = fmul fast float %9157, %9192
  %9194 = fsub fast float -0.000000e+00, %9193
  %9195 = fsub fast float 1.000000e+00, %9160
  %9196 = fdiv fast float %9194, %9195
  br label %9197

; <label>:9197                                    ; preds = %9190, %9184
  %9198 = phi float [ %9196, %9190 ], [ %9157, %9184 ]
  %9199 = phi float [ %9192, %9190 ], [ 0.000000e+00, %9184 ]
  %9200 = fcmp fast une float %9161, 1.000000e+00
  br i1 %9200, label %9201, label %9208, !dx.controlflow.hints !168

; <label>:9201                                    ; preds = %9197
  %9202 = call float @dx.op.unary.f32(i32 23, float %9161)  ; Log(value)
  %9203 = fmul fast float %9202, 0x3FE62E4300000000
  %9204 = fmul fast float %9158, %9203
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = fsub fast float 1.000000e+00, %9161
  %9207 = fdiv fast float %9205, %9206
  br label %9208

; <label>:9208                                    ; preds = %9201, %9197
  %9209 = phi float [ %9207, %9201 ], [ %9158, %9197 ]
  %9210 = phi float [ %9203, %9201 ], [ 0.000000e+00, %9197 ]
  %9211 = fcmp fast une float %9162, 1.000000e+00
  br i1 %9211, label %9212, label %9219, !dx.controlflow.hints !168

; <label>:9212                                    ; preds = %9208
  %9213 = call float @dx.op.unary.f32(i32 23, float %9162)  ; Log(value)
  %9214 = fmul fast float %9213, 0x3FE62E4300000000
  %9215 = fmul fast float %9159, %9214
  %9216 = fsub fast float -0.000000e+00, %9215
  %9217 = fsub fast float 1.000000e+00, %9162
  %9218 = fdiv fast float %9216, %9217
  br label %9219

; <label>:9219                                    ; preds = %9212, %9208
  %9220 = phi float [ %9218, %9212 ], [ %9159, %9208 ]
  %9221 = phi float [ %9214, %9212 ], [ 0.000000e+00, %9208 ]
  %9222 = fmul fast float %9185, %9169
  %9223 = fmul fast float %9186, %9169
  %9224 = fmul fast float %9187, %9169
  %9225 = fmul fast float %9188, %9169
  %9226 = fmul fast float %9198, %9167
  %9227 = fmul fast float %9209, %9167
  %9228 = fmul fast float %9220, %9167
  %9229 = fmul fast float %9199, %9167
  %9230 = fmul fast float %9210, %9167
  %9231 = fmul fast float %9221, %9167
  %9232 = fadd fast float %9226, %9222
  %9233 = fadd fast float %9227, %9223
  %9234 = fadd fast float %9228, %9224
  %9235 = fadd fast float %9229, %9225
  %9236 = fadd fast float %9230, %9225
  %9237 = fadd fast float %9231, %9225
  %9238 = fcmp fast une float %9235, 0.000000e+00
  br i1 %9238, label %9239, label %9246, !dx.controlflow.hints !169

; <label>:9239                                    ; preds = %9219
  %9240 = fmul fast float %9235, 0x3FF7154760000000
  %9241 = call float @dx.op.unary.f32(i32 21, float %9240)  ; Exp(value)
  %9242 = fsub fast float 1.000000e+00, %9241
  %9243 = fmul fast float %9232, %9242
  %9244 = fsub fast float -0.000000e+00, %9243
  %9245 = fdiv fast float %9244, %9235
  br label %9246

; <label>:9246                                    ; preds = %9239, %9219
  %9247 = phi float [ %9241, %9239 ], [ 1.000000e+00, %9219 ]
  %9248 = phi float [ %9245, %9239 ], [ %9232, %9219 ]
  %9249 = fcmp fast une float %9236, 0.000000e+00
  br i1 %9249, label %9250, label %9257, !dx.controlflow.hints !169

; <label>:9250                                    ; preds = %9246
  %9251 = fmul fast float %9236, 0x3FF7154760000000
  %9252 = call float @dx.op.unary.f32(i32 21, float %9251)  ; Exp(value)
  %9253 = fsub fast float 1.000000e+00, %9252
  %9254 = fmul fast float %9233, %9253
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fdiv fast float %9255, %9236
  br label %9257

; <label>:9257                                    ; preds = %9250, %9246
  %9258 = phi float [ %9252, %9250 ], [ 1.000000e+00, %9246 ]
  %9259 = phi float [ %9256, %9250 ], [ %9233, %9246 ]
  %9260 = fcmp fast une float %9237, 0.000000e+00
  br i1 %9260, label %9261, label %9268, !dx.controlflow.hints !169

; <label>:9261                                    ; preds = %9257
  %9262 = fmul fast float %9237, 0x3FF7154760000000
  %9263 = call float @dx.op.unary.f32(i32 21, float %9262)  ; Exp(value)
  %9264 = fsub fast float 1.000000e+00, %9263
  %9265 = fmul fast float %9234, %9264
  %9266 = fsub fast float -0.000000e+00, %9265
  %9267 = fdiv fast float %9266, %9237
  br label %9268

; <label>:9268                                    ; preds = %9261, %9257
  %9269 = phi float [ %9263, %9261 ], [ 1.000000e+00, %9257 ]
  %9270 = phi float [ %9267, %9261 ], [ %9234, %9257 ]
  %9271 = fcmp fast ogt float %9167, %9169
  br i1 %9271, label %9272, label %9292

; <label>:9272                                    ; preds = %9268
  %9273 = fsub fast float 1.000000e+00, %9169
  %9274 = fmul fast float %9185, %9273
  %9275 = fmul fast float %9186, %9273
  %9276 = fmul fast float %9187, %9273
  %9277 = fmul fast float %9188, %9273
  %9278 = fcmp fast une float %9277, 0.000000e+00
  br i1 %9278, label %9279, label %9330, !dx.controlflow.hints !170

; <label>:9279                                    ; preds = %9272
  %9280 = fmul fast float %9277, 0x3FF7154760000000
  %9281 = call float @dx.op.unary.f32(i32 21, float %9280)  ; Exp(value)
  %9282 = fsub fast float 1.000000e+00, %9281
  %9283 = fmul fast float %9274, %9282
  %9284 = fsub fast float -0.000000e+00, %9283
  %9285 = fmul fast float %9275, %9282
  %9286 = fsub fast float -0.000000e+00, %9285
  %9287 = fmul fast float %9276, %9282
  %9288 = fsub fast float -0.000000e+00, %9287
  %9289 = fdiv fast float %9284, %9277
  %9290 = fdiv fast float %9286, %9277
  %9291 = fdiv fast float %9288, %9277
  br label %9330

; <label>:9292                                    ; preds = %9268
  %9293 = fsub fast float 1.000000e+00, %9167
  %9294 = fmul fast float %9198, %9293
  %9295 = fmul fast float %9209, %9293
  %9296 = fmul fast float %9220, %9293
  %9297 = fmul fast float %9199, %9293
  %9298 = fmul fast float %9210, %9293
  %9299 = fmul fast float %9221, %9293
  %9300 = fcmp fast une float %9297, 0.000000e+00
  br i1 %9300, label %9301, label %9308, !dx.controlflow.hints !169

; <label>:9301                                    ; preds = %9292
  %9302 = fmul fast float %9297, 0x3FF7154760000000
  %9303 = call float @dx.op.unary.f32(i32 21, float %9302)  ; Exp(value)
  %9304 = fsub fast float 1.000000e+00, %9303
  %9305 = fmul fast float %9294, %9304
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fdiv fast float %9306, %9297
  br label %9308

; <label>:9308                                    ; preds = %9301, %9292
  %9309 = phi float [ %9307, %9301 ], [ %9294, %9292 ]
  %9310 = phi float [ %9303, %9301 ], [ 1.000000e+00, %9292 ]
  %9311 = fcmp fast une float %9298, 0.000000e+00
  br i1 %9311, label %9312, label %9319, !dx.controlflow.hints !169

; <label>:9312                                    ; preds = %9308
  %9313 = fmul fast float %9298, 0x3FF7154760000000
  %9314 = call float @dx.op.unary.f32(i32 21, float %9313)  ; Exp(value)
  %9315 = fsub fast float 1.000000e+00, %9314
  %9316 = fmul fast float %9295, %9315
  %9317 = fsub fast float -0.000000e+00, %9316
  %9318 = fdiv fast float %9317, %9298
  br label %9319

; <label>:9319                                    ; preds = %9312, %9308
  %9320 = phi float [ %9318, %9312 ], [ %9295, %9308 ]
  %9321 = phi float [ %9314, %9312 ], [ 1.000000e+00, %9308 ]
  %9322 = fcmp fast une float %9299, 0.000000e+00
  br i1 %9322, label %9323, label %9330, !dx.controlflow.hints !169

; <label>:9323                                    ; preds = %9319
  %9324 = fmul fast float %9299, 0x3FF7154760000000
  %9325 = call float @dx.op.unary.f32(i32 21, float %9324)  ; Exp(value)
  %9326 = fsub fast float 1.000000e+00, %9325
  %9327 = fmul fast float %9296, %9326
  %9328 = fsub fast float -0.000000e+00, %9327
  %9329 = fdiv fast float %9328, %9299
  br label %9330

; <label>:9330                                    ; preds = %9323, %9319, %9279, %9272
  %9331 = phi float [ %9329, %9323 ], [ %9291, %9279 ], [ %9276, %9272 ], [ %9296, %9319 ]
  %9332 = phi float [ %9320, %9323 ], [ %9290, %9279 ], [ %9275, %9272 ], [ %9320, %9319 ]
  %9333 = phi float [ %9309, %9323 ], [ %9289, %9279 ], [ %9274, %9272 ], [ %9309, %9319 ]
  %9334 = phi float [ %9325, %9323 ], [ %9281, %9279 ], [ 1.000000e+00, %9272 ], [ 1.000000e+00, %9319 ]
  %9335 = phi float [ %9321, %9323 ], [ %9281, %9279 ], [ 1.000000e+00, %9272 ], [ %9321, %9319 ]
  %9336 = phi float [ %9310, %9323 ], [ %9281, %9279 ], [ 1.000000e+00, %9272 ], [ %9310, %9319 ]
  %9337 = fmul fast float %9336, %9248
  %9338 = fmul fast float %9335, %9259
  %9339 = fmul fast float %9334, %9270
  %9340 = fadd fast float %9337, %9333
  %9341 = fadd fast float %9338, %9332
  %9342 = fadd fast float %9339, %9331
  %9343 = fmul fast float %9336, %9247
  %9344 = fmul fast float %9335, %9258
  %9345 = fmul fast float %9334, %9269
  br label %9346

; <label>:9346                                    ; preds = %9330, %9141
  %9347 = phi float [ %9345, %9330 ], [ %9147, %9141 ]
  %9348 = phi float [ %9344, %9330 ], [ %9146, %9141 ]
  %9349 = phi float [ %9343, %9330 ], [ %9145, %9141 ]
  %9350 = phi float [ %9342, %9330 ], [ %9144, %9141 ]
  %9351 = phi float [ %9341, %9330 ], [ %9143, %9141 ]
  %9352 = phi float [ %9340, %9330 ], [ %9142, %9141 ]
  %9353 = fmul fast float %9349, %8589
  %9354 = call float @dx.op.dot3.f32(i32 55, float %9349, float %9348, float %9347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9355 = call float @dx.op.dot3.f32(i32 55, float %9352, float %9351, float %9350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9356 = select i1 %219, float %9354, float %9349
  %9357 = select i1 %219, float %9354, float %9348
  %9358 = select i1 %219, float 1.000000e+00, float %9347
  %9359 = select i1 %219, float %9355, float %9352
  %9360 = select i1 %219, float 0.000000e+00, float %9351
  %9361 = select i1 %219, float 0.000000e+00, float %9350
  %9362 = fmul fast float %9356, %8583
  %9363 = fmul fast float %9357, %8584
  %9364 = fmul fast float %9358, %8585
  %9365 = fadd fast float %9362, %9359
  %9366 = fadd fast float %9363, %9360
  %9367 = fadd fast float %9361, %9364
  %9368 = fmul fast float %9356, %8586
  %9369 = fmul fast float %9357, %8587
  %9370 = fmul fast float %9358, %8588
  %9371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.i32 %9371, 0
  %9373 = icmp eq i32 %9372, 0
  br i1 %9373, label %9731, label %9374, !dx.controlflow.hints !171

; <label>:9374                                    ; preds = %9346
  %9375 = fmul fast float %6235, %102
  %9376 = fmul fast float %6236, %103
  %9377 = fmul fast float %9375, 2.000000e+00
  %9378 = fmul fast float %9376, 2.000000e+00
  %9379 = fsub fast float 1.000000e+00, %9377
  %9380 = fsub fast float 1.000000e+00, %9378
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 0
  %9383 = extractvalue %dx.types.CBufRet.f32 %9381, 1
  %9384 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9385 = fmul fast float %9379, %9382
  %9386 = fmul fast float %9379, %9383
  %9387 = fmul fast float %9379, %9384
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = fmul fast float %9380, %9389
  %9393 = fmul fast float %9380, %9390
  %9394 = fmul fast float %9380, %9391
  %9395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9396 = extractvalue %dx.types.CBufRet.f32 %9395, 0
  %9397 = extractvalue %dx.types.CBufRet.f32 %9395, 1
  %9398 = extractvalue %dx.types.CBufRet.f32 %9395, 2
  %9399 = fadd fast float %9392, %9396
  %9400 = fadd fast float %9399, %9385
  %9401 = fadd fast float %9393, %9397
  %9402 = fadd fast float %9401, %9386
  %9403 = fadd fast float %9394, %9398
  %9404 = fadd fast float %9403, %9387
  %9405 = fmul fast float %9400, %8582
  %9406 = fmul fast float %9402, %8582
  %9407 = fmul fast float %9404, %8582
  %9408 = fmul fast float %9405, %9405
  %9409 = fmul fast float %9406, %9406
  %9410 = fadd fast float %9408, %9409
  %9411 = fmul fast float %9407, %9407
  %9412 = fadd fast float %9410, %9411
  %9413 = call float @dx.op.unary.f32(i32 24, float %9412)  ; Sqrt(value)
  %9414 = extractvalue %dx.types.CBufRet.f32 %8317, 0
  %9415 = fsub fast float %9413, %9414
  %9416 = extractvalue %dx.types.CBufRet.f32 %8317, 2
  %9417 = fmul fast float %9415, %9416
  %9418 = call float @dx.op.unary.f32(i32 7, float %9417)  ; Saturate(value)
  %9419 = fadd fast float %9418, -5.000000e-01
  %9420 = fmul fast float %9419, 2.000000e+00
  %9421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.f32 %9421, 2
  %9423 = call float @dx.op.binary.f32(i32 36, float %9422, float %9420)  ; FMin(a,b)
  %9424 = fsub fast float -0.000000e+00, %9422
  %9425 = fcmp fast ogt float %9423, %9424
  br i1 %9425, label %9426, label %9731, !dx.controlflow.hints !172

; <label>:9426                                    ; preds = %9374
  %9427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9428 = extractvalue %dx.types.CBufRet.f32 %9427, 3
  %9429 = fcmp fast ogt float %9428, 0.000000e+00
  br i1 %9429, label %9430, label %9503, !dx.controlflow.hints !173

; <label>:9430                                    ; preds = %9426
  %9431 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9432 = extractvalue %dx.types.Dimensions %9431, 0
  %9433 = sitofp i32 %9432 to float
  %9434 = extractvalue %dx.types.Dimensions %9431, 1
  %9435 = sitofp i32 %9434 to float
  %9436 = fmul fast float %9375, %9433
  %9437 = fmul fast float %9376, %9435
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 1
  %9440 = fsub fast float -0.000000e+00, %9439
  %9441 = fptoui float %9440 to i32
  %9442 = fptoui float %9436 to i32
  %9443 = fptoui float %9437 to i32
  %9444 = and i32 %9441, 31
  %9445 = lshr i32 %9442, %9444
  %9446 = lshr i32 %9443, %9444
  %9447 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9441, i32 %9445, i32 %9446, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9448 = extractvalue %dx.types.ResRet.f32 %9447, 0
  %9449 = fcmp fast olt float %9448, -1.000000e+00
  %9450 = fcmp fast ogt float %9448, -1.000000e+00
  %9451 = select i1 %9450, float %6243, float 1.000000e+00
  %9452 = fadd fast float %9448, 1.000000e+00
  %9453 = fmul fast float %9451, %9452
  %9454 = call float @dx.op.unary.f32(i32 6, float %9453)  ; FAbs(value)
  %9455 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %9456 = fcmp fast oge float %9454, %9455
  %9457 = select i1 %9456, float 0x4197782600000000, float %9454
  %9458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9459 = extractvalue %dx.types.CBufRet.f32 %9458, 0
  %9460 = extractvalue %dx.types.CBufRet.f32 %9458, 1
  %9461 = extractvalue %dx.types.CBufRet.f32 %9458, 2
  %9462 = select i1 %9449, float %9459, float %9382
  %9463 = select i1 %9449, float %9460, float %9383
  %9464 = select i1 %9449, float %9461, float %9384
  %9465 = fmul fast float %9462, %9379
  %9466 = fmul fast float %9463, %9379
  %9467 = fmul fast float %9464, %9379
  %9468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9469 = extractvalue %dx.types.CBufRet.f32 %9468, 0
  %9470 = extractvalue %dx.types.CBufRet.f32 %9468, 1
  %9471 = extractvalue %dx.types.CBufRet.f32 %9468, 2
  %9472 = select i1 %9449, float %9469, float %9389
  %9473 = select i1 %9449, float %9470, float %9390
  %9474 = select i1 %9449, float %9471, float %9391
  %9475 = fmul fast float %9472, %9380
  %9476 = fmul fast float %9473, %9380
  %9477 = fmul fast float %9474, %9380
  %9478 = fadd fast float %9475, %9465
  %9479 = fadd fast float %9476, %9466
  %9480 = fadd fast float %9477, %9467
  %9481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9482 = extractvalue %dx.types.CBufRet.f32 %9481, 0
  %9483 = extractvalue %dx.types.CBufRet.f32 %9481, 1
  %9484 = extractvalue %dx.types.CBufRet.f32 %9481, 2
  %9485 = select i1 %9449, float %9482, float %9396
  %9486 = select i1 %9449, float %9483, float %9397
  %9487 = select i1 %9449, float %9484, float %9398
  %9488 = fadd fast float %9478, %9485
  %9489 = fadd fast float %9479, %9486
  %9490 = fadd fast float %9480, %9487
  %9491 = fmul fast float %9488, %9457
  %9492 = fmul fast float %9489, %9457
  %9493 = fmul fast float %9490, %9457
  %9494 = fmul fast float %9491, %9491
  %9495 = fmul fast float %9492, %9492
  %9496 = fadd fast float %9494, %9495
  %9497 = fmul fast float %9493, %9493
  %9498 = fadd fast float %9496, %9497
  %9499 = call float @dx.op.unary.f32(i32 24, float %9498)  ; Sqrt(value)
  %9500 = fsub fast float %9499, %9414
  %9501 = fmul fast float %9500, %9416
  %9502 = call float @dx.op.unary.f32(i32 7, float %9501)  ; Saturate(value)
  br label %9503

; <label>:9503                                    ; preds = %9430, %9426
  %9504 = phi float [ %9502, %9430 ], [ 1.000000e+00, %9426 ]
  %9505 = fmul fast float %9423, 5.000000e-01
  %9506 = fadd fast float %9505, 5.000000e-01
  %9507 = call float @dx.op.unary.f32(i32 22, float %9506)  ; Frc(value)
  %9508 = call float @dx.op.unary.f32(i32 27, float %9507)  ; Round_ni(value)
  %9509 = call float @dx.op.unary.f32(i32 22, float %9507)  ; Frc(value)
  %9510 = fmul fast float %9509, 2.000000e+00
  %9511 = fadd fast float %9510, -1.000000e+00
  %9512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9375, float %9376, float %9508, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9513 = extractvalue %dx.types.ResRet.f32 %9512, 0
  %9514 = extractvalue %dx.types.ResRet.f32 %9512, 1
  %9515 = extractvalue %dx.types.ResRet.f32 %9512, 2
  %9516 = extractvalue %dx.types.ResRet.f32 %9512, 3
  %9517 = fadd fast float %9513, -5.000000e-01
  %9518 = fadd fast float %9515, -5.000000e-01
  %9519 = fmul fast float %9517, 0xBFD5555560000000
  %9520 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9518, float %9519)  ; FMad(a,b,c)
  %9521 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9514, float 0.000000e+00)  ; FMad(a,b,c)
  %9522 = fadd fast float %9521, %9516
  %9523 = fmul fast float %9517, -7.500000e-01
  %9524 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9518, float %9523)  ; FMad(a,b,c)
  %9525 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9514, float 0.000000e+00)  ; FMad(a,b,c)
  %9526 = fadd fast float %9525, %9516
  %9527 = call float @dx.op.binary.f32(i32 35, float %9520, float -1.000000e+00)  ; FMax(a,b)
  %9528 = call float @dx.op.binary.f32(i32 35, float %9522, float -1.000000e+00)  ; FMax(a,b)
  %9529 = call float @dx.op.binary.f32(i32 35, float %9524, float -1.000000e+00)  ; FMax(a,b)
  %9530 = call float @dx.op.binary.f32(i32 35, float %9526, float -1.000000e+00)  ; FMax(a,b)
  %9531 = call float @dx.op.binary.f32(i32 36, float %9527, float 1.000000e+00)  ; FMin(a,b)
  %9532 = call float @dx.op.binary.f32(i32 36, float %9528, float 1.000000e+00)  ; FMin(a,b)
  %9533 = call float @dx.op.binary.f32(i32 36, float %9529, float 1.000000e+00)  ; FMin(a,b)
  %9534 = call float @dx.op.binary.f32(i32 36, float %9530, float 1.000000e+00)  ; FMin(a,b)
  %9535 = fcmp fast olt float %9531, 0x3FEFFF8020000000
  br i1 %9535, label %9536, label %9651, !dx.controlflow.hints !174

; <label>:9536                                    ; preds = %9503
  %9537 = extractvalue %dx.types.CBufRet.f32 %9421, 3
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9541 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9542 = extractvalue %dx.types.CBufRet.f32 %9538, 3
  %9543 = fsub fast float %9539, %9531
  %9544 = fsub fast float %9540, %9532
  %9545 = fsub fast float %9541, %9533
  %9546 = fsub fast float %9542, %9534
  %9547 = fmul fast float %9543, %9537
  %9548 = fmul fast float %9544, %9537
  %9549 = fmul fast float %9545, %9537
  %9550 = fmul fast float %9546, %9537
  %9551 = fadd fast float %9547, %9531
  %9552 = fadd fast float %9548, %9532
  %9553 = fsub fast float -0.000000e+00, %9552
  %9554 = fadd fast float %9549, %9533
  %9555 = fadd fast float %9550, %9534
  %9556 = fmul fast float %9551, %9551
  %9557 = fsub fast float %9552, %9556
  %9558 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9557)  ; FMax(a,b)
  %9559 = fdiv fast float 1.000000e+00, %9558
  %9560 = fmul fast float %9552, %9551
  %9561 = fsub fast float %9554, %9560
  %9562 = fsub fast float %9511, %9551
  %9563 = fmul fast float %9511, %9511
  %9564 = fsub fast float %9563, %9552
  %9565 = fmul fast float %9562, %9559
  %9566 = fmul fast float %9565, %9561
  %9567 = fsub fast float %9564, %9566
  %9568 = fmul fast float %9552, %9552
  %9569 = fsub fast float %9555, %9568
  %9570 = fmul fast float %9561, %9561
  %9571 = fmul fast float %9570, %9559
  %9572 = fsub fast float %9569, %9571
  %9573 = fdiv fast float %9567, %9572
  %9574 = fmul fast float %9561, %9573
  %9575 = fsub fast float %9562, %9574
  %9576 = fmul fast float %9575, %9559
  %9577 = fmul fast float %9576, %9551
  %9578 = fsub fast float 1.000000e+00, %9577
  %9579 = fmul fast float %9552, %9573
  %9580 = fsub fast float %9578, %9579
  %9581 = fmul fast float %9576, %9576
  %9582 = fmul fast float %9573, 4.000000e+00
  %9583 = fmul fast float %9582, %9580
  %9584 = fsub fast float %9581, %9583
  %9585 = call float @dx.op.unary.f32(i32 24, float %9584)  ; Sqrt(value)
  %9586 = fcmp fast oge float %9576, 0.000000e+00
  %9587 = fsub fast float -0.000000e+00, %9585
  %9588 = select i1 %9586, float %9587, float %9585
  %9589 = fsub fast float %9588, %9576
  %9590 = fdiv fast float %9589, %9573
  %9591 = fdiv fast float %9580, %9589
  %9592 = fmul fast float %9590, 5.000000e-01
  %9593 = fmul fast float %9591, 2.000000e+00
  %9594 = select i1 %9586, float %9592, float %9593
  %9595 = select i1 %9586, float %9593, float %9592
  %9596 = call float @dx.op.binary.f32(i32 35, float %9594, float %9595)  ; FMax(a,b)
  %9597 = call float @dx.op.binary.f32(i32 36, float %9594, float %9595)  ; FMin(a,b)
  %9598 = fcmp fast ogt float %9511, %9597
  br i1 %9598, label %9599, label %9609

; <label>:9599                                    ; preds = %9536
  %9600 = fsub fast float %9511, %9597
  %9601 = fsub fast float %9596, %9597
  %9602 = fmul fast float %9600, %9601
  %9603 = fmul fast float %9596, %9511
  %9604 = fadd fast float %9596, %9511
  %9605 = fmul fast float %9604, %9551
  %9606 = fadd fast float %9603, %9552
  %9607 = fsub fast float %9606, %9605
  %9608 = fdiv fast float %9607, %9602
  br label %9609

; <label>:9609                                    ; preds = %9599, %9536
  %9610 = phi float [ %9608, %9599 ], [ 0.000000e+00, %9536 ]
  %9611 = fcmp fast ogt float %9511, %9596
  %9612 = fsub fast float %9511, %9596
  br i1 %9611, label %9613, label %9623

; <label>:9613                                    ; preds = %9609
  %9614 = fsub fast float %9596, %9597
  %9615 = fmul fast float %9614, %9612
  %9616 = fmul fast float %9597, %9511
  %9617 = fadd fast float %9597, %9511
  %9618 = fmul fast float %9617, %9551
  %9619 = fsub fast float %9553, %9616
  %9620 = fadd fast float %9619, %9618
  %9621 = fdiv fast float %9620, %9615
  %9622 = fadd fast float %9621, %9610
  br label %9623

; <label>:9623                                    ; preds = %9613, %9609
  %9624 = phi float [ %9622, %9613 ], [ %9610, %9609 ]
  %9625 = fsub fast float %9511, %9597
  %9626 = fmul fast float %9625, %9612
  %9627 = fmul fast float %9597, %9596
  %9628 = fadd fast float %9597, %9596
  %9629 = fmul fast float %9628, %9551
  %9630 = fadd fast float %9627, %9552
  %9631 = fsub fast float %9630, %9629
  %9632 = fdiv fast float %9631, %9626
  %9633 = call float @dx.op.unary.f32(i32 7, float %9624)  ; Saturate(value)
  %9634 = fcmp fast oeq float %8318, 0.000000e+00
  %9635 = extractvalue %dx.types.CBufRet.f32 %9421, 0
  %9636 = fcmp fast oeq float %9635, 0.000000e+00
  %9637 = or i1 %9634, %9636
  %9638 = fmul fast float %9635, 2.000000e+00
  %9639 = fadd fast float %9422, %9423
  %9640 = fdiv fast float %9639, %9638
  %9641 = call float @dx.op.unary.f32(i32 7, float %9640)  ; Saturate(value)
  %9642 = fmul fast float %9641, 2.000000e+00
  %9643 = fsub fast float 3.000000e+00, %9642
  %9644 = fmul fast float %9641, %9641
  %9645 = fmul fast float %9644, %9643
  %9646 = select i1 %9637, float 1.000000e+00, float %9645
  %9647 = fmul fast float %9632, %8318
  %9648 = fadd fast float %9633, %9647
  %9649 = call float @dx.op.unary.f32(i32 7, float %9648)  ; Saturate(value)
  %9650 = fmul fast float %9646, %9649
  br label %9651

; <label>:9651                                    ; preds = %9623, %9503
  %9652 = phi float [ %9650, %9623 ], [ 0.000000e+00, %9503 ]
  %9653 = fsub fast float 1.000000e+00, %9652
  %9654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9375, float %9376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9655 = extractvalue %dx.types.ResRet.f32 %9654, 0
  %9656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.i32 %9656, 2
  %9658 = icmp eq i32 %9657, 0
  br i1 %9658, label %9664, label %9659

; <label>:9659                                    ; preds = %9651
  %9660 = call float @dx.op.unary.f32(i32 7, float %9652)  ; Saturate(value)
  %9661 = fadd fast float %9655, -1.000000e+00
  %9662 = fmul fast float %9660, %9661
  %9663 = fadd fast float %9662, 1.000000e+00
  br label %9664

; <label>:9664                                    ; preds = %9659, %9651
  %9665 = phi float [ %9663, %9659 ], [ %9653, %9651 ]
  br i1 %9429, label %9666, label %9684

; <label>:9666                                    ; preds = %9664
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 1
  %9669 = fsub fast float %9504, %9668
  %9670 = call float @dx.op.unary.f32(i32 7, float %9669)  ; Saturate(value)
  %9671 = fsub fast float %9504, %9428
  %9672 = call float @dx.op.unary.f32(i32 7, float %9671)  ; Saturate(value)
  %9673 = fsub fast float %9670, %9672
  %9674 = fsub fast float %9506, %9672
  %9675 = fdiv fast float %9674, %9673
  %9676 = call float @dx.op.unary.f32(i32 7, float %9675)  ; Saturate(value)
  %9677 = fmul fast float %9676, 2.000000e+00
  %9678 = fsub fast float 3.000000e+00, %9677
  %9679 = fsub fast float %9655, %9665
  %9680 = fmul fast float %9676, %9676
  %9681 = fmul fast float %9680, %9679
  %9682 = fmul fast float %9681, %9678
  %9683 = fadd fast float %9682, %9665
  br label %9684

; <label>:9684                                    ; preds = %9666, %9664
  %9685 = phi float [ %9683, %9666 ], [ %9665, %9664 ]
  %9686 = call float @dx.op.binary.f32(i32 35, float %9655, float %9685)  ; FMax(a,b)
  %9687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.i32 %9687, 2
  %9689 = and i32 %9688, 1
  %9690 = icmp eq i32 %9689, 0
  %9691 = fcmp fast une float %9686, 1.000000e+00
  %9692 = and i1 %9691, %9690
  br i1 %9692, label %9693, label %9710

; <label>:9693                                    ; preds = %9684
  %9694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9375, float %9376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9695 = extractvalue %dx.types.ResRet.f32 %9694, 0
  %9696 = extractvalue %dx.types.ResRet.f32 %9694, 1
  %9697 = extractvalue %dx.types.ResRet.f32 %9694, 2
  %9698 = fmul fast float %6290, %9695
  %9699 = fmul fast float %6290, %9696
  %9700 = fmul fast float %6290, %9697
  %9701 = fcmp fast ogt float %9655, 0x3FEFFF2E40000000
  %9702 = fsub fast float 1.000000e+00, %9686
  %9703 = fsub fast float 1.000000e+00, %9655
  %9704 = fdiv fast float %9702, %9703
  %9705 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9706 = select i1 %9701, float 0.000000e+00, float %9705
  %9707 = fmul fast float %9698, %9706
  %9708 = fmul fast float %9699, %9706
  %9709 = fmul fast float %9700, %9706
  br label %9710

; <label>:9710                                    ; preds = %9693, %9684
  %9711 = phi float [ 0.000000e+00, %9684 ], [ %9707, %9693 ]
  %9712 = phi float [ 0.000000e+00, %9684 ], [ %9708, %9693 ]
  %9713 = phi float [ 0.000000e+00, %9684 ], [ %9709, %9693 ]
  %9714 = fmul fast float %9686, %9353
  %9715 = call float @dx.op.dot3.f32(i32 55, float %9686, float %9686, float %9686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9716 = call float @dx.op.dot3.f32(i32 55, float %9711, float %9712, float %9713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9717 = select i1 %219, float %9715, float %9686
  %9718 = select i1 %219, float 1.000000e+00, float %9686
  %9719 = select i1 %219, float %9716, float %9711
  %9720 = select i1 %219, float 0.000000e+00, float %9712
  %9721 = select i1 %219, float 0.000000e+00, float %9713
  %9722 = fmul fast float %9717, %9365
  %9723 = fmul fast float %9717, %9366
  %9724 = fmul fast float %9718, %9367
  %9725 = fadd fast float %9722, %9719
  %9726 = fadd fast float %9723, %9720
  %9727 = fadd fast float %9721, %9724
  %9728 = fmul fast float %9717, %9368
  %9729 = fmul fast float %9717, %9369
  %9730 = fmul fast float %9718, %9370
  br label %9731

; <label>:9731                                    ; preds = %9710, %9374, %9346, %8578
  %9732 = phi float [ %8583, %8578 ], [ %9365, %9346 ], [ %9725, %9710 ], [ %9365, %9374 ]
  %9733 = phi float [ %8584, %8578 ], [ %9366, %9346 ], [ %9726, %9710 ], [ %9366, %9374 ]
  %9734 = phi float [ %8585, %8578 ], [ %9367, %9346 ], [ %9727, %9710 ], [ %9367, %9374 ]
  %9735 = phi float [ %8586, %8578 ], [ %9368, %9346 ], [ %9728, %9710 ], [ %9368, %9374 ]
  %9736 = phi float [ %8587, %8578 ], [ %9369, %9346 ], [ %9729, %9710 ], [ %9369, %9374 ]
  %9737 = phi float [ %8588, %8578 ], [ %9370, %9346 ], [ %9730, %9710 ], [ %9370, %9374 ]
  %9738 = phi float [ %8589, %8578 ], [ %9353, %9346 ], [ %9714, %9710 ], [ %9353, %9374 ]
  %9739 = fmul fast float %6235, %102
  %9740 = fmul fast float %6236, %103
  %9741 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9742 = call float @dx.op.unary.f32(i32 7, float %9740)  ; Saturate(value)
  %9743 = select i1 %8328, i32 2, i32 0
  %9744 = or i32 %9743, 1
  %9745 = uitofp i32 %9744 to float
  %9746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9741, float %9742, float %9745, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9747 = extractvalue %dx.types.ResRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.ResRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.ResRet.f32 %9746, 2
  %9750 = extractvalue %dx.types.ResRet.f32 %9746, 3
  %9751 = add nuw nsw i32 %9743, 2
  %9752 = uitofp i32 %9751 to float
  %9753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9741, float %9742, float %9752, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9754 = extractvalue %dx.types.ResRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.ResRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.ResRet.f32 %9753, 2
  %9757 = extractvalue %dx.types.ResRet.f32 %9753, 3
  %9758 = call float @dx.op.binary.f32(i32 35, float %9748, float %9749)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 35, float %9747, float %9758)  ; FMax(a,b)
  %9760 = call float @dx.op.binary.f32(i32 35, float %9759, float %9750)  ; FMax(a,b)
  %9761 = call float @dx.op.binary.f32(i32 36, float %9755, float %9756)  ; FMin(a,b)
  %9762 = call float @dx.op.binary.f32(i32 36, float %9754, float %9761)  ; FMin(a,b)
  %9763 = call float @dx.op.binary.f32(i32 36, float %9762, float %9757)  ; FMin(a,b)
  %9764 = fmul fast float %9760, 2.550000e+02
  %9765 = fadd fast float %9764, 0x3F70101020000000
  %9766 = fptoui float %9765 to i32
  %9767 = fmul fast float %9763, 2.550000e+02
  %9768 = fadd fast float %9767, 0x3F70101020000000
  %9769 = fptoui float %9768 to i32
  %9770 = icmp ult i32 %9766, %9769
  br i1 %9770, label %9771, label %9938

; <label>:9771                                    ; preds = %9731
  %9772 = fcmp fast ogt float %92, 9.843750e-01
  %9773 = fadd fast float %8582, -4.000000e+00
  %9774 = select i1 %9772, float -4.000000e+00, float %9773
  %9775 = call float @dx.op.binary.f32(i32 35, float %9774, float 0.000000e+00)  ; FMax(a,b)
  %9776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.f32 %9776, 0
  %9778 = fadd fast float %9777, %9775
  %9779 = extractvalue %dx.types.CBufRet.f32 %9776, 2
  %9780 = fmul fast float %9778, %9779
  %9781 = call float @dx.op.unary.f32(i32 23, float %9780)  ; Log(value)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9776, 3
  %9783 = fmul fast float %9782, %9781
  %9784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9784, 2
  %9786 = fmul fast float %9783, %9785
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = uitofp i32 %9766 to float
  %9789 = uitofp i32 %9769 to float
  %9790 = fadd fast float %9788, 5.000000e-01
  %9791 = fadd fast float %9789, 5.000000e-01
  %9792 = fmul fast float %9785, %9790
  %9793 = fmul fast float %9785, %9791
  %9794 = fadd fast float %9792, 0x3F0FFB4800000000
  %9795 = fadd fast float %9793, 0xBF0FFB4800000000
  %9796 = call float @dx.op.binary.f32(i32 35, float %9787, float %9794)  ; FMax(a,b)
  %9797 = call float @dx.op.binary.f32(i32 36, float %9796, float %9795)  ; FMin(a,b)
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 1
  %9800 = extractvalue %dx.types.CBufRet.f32 %9798, 2
  %9801 = extractvalue %dx.types.CBufRet.f32 %9798, 0
  %9802 = select i1 %8328, float %9801, float 0.000000e+00
  %9803 = fmul fast float %9799, %9797
  %9804 = fadd fast float %9802, %9803
  %9805 = fadd fast float %9802, %9800
  %9806 = fsub fast float %9799, %9800
  %9807 = fadd fast float %9806, %9802
  %9808 = call float @dx.op.binary.f32(i32 35, float %9804, float %9805)  ; FMax(a,b)
  %9809 = call float @dx.op.binary.f32(i32 36, float %9808, float %9807)  ; FMin(a,b)
  %9810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9741, float %9742, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9811 = extractvalue %dx.types.ResRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.ResRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.ResRet.f32 %9810, 2
  %9814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9815 = extractvalue %dx.types.CBufRet.i32 %9814, 0
  %9816 = extractvalue %dx.types.CBufRet.i32 %9814, 1
  %9817 = uitofp i32 %9815 to float
  %9818 = uitofp i32 %9816 to float
  %9819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.CBufRet.f32 %9819, 1
  %9822 = fmul fast float %9817, %9741
  %9823 = fmul fast float %9818, %9742
  %9824 = fadd fast float %9822, -5.000000e-01
  %9825 = fadd fast float %9823, -5.000000e-01
  %9826 = call float @dx.op.unary.f32(i32 22, float %9824)  ; Frc(value)
  %9827 = call float @dx.op.unary.f32(i32 22, float %9825)  ; Frc(value)
  %9828 = fmul fast float %9826, %9826
  %9829 = fmul fast float %9828, %9826
  %9830 = fsub fast float 3.000000e+00, %9826
  %9831 = fmul fast float %9828, %9830
  %9832 = fmul fast float %9826, 3.000000e+00
  %9833 = fmul fast float %9829, 3.000000e+00
  %9834 = fmul fast float %9828, 6.000000e+00
  %9835 = fsub fast float %9833, %9834
  %9836 = fadd fast float %9835, 4.000000e+00
  %9837 = fmul fast float %9836, 0x3FC5555560000000
  %9838 = fmul fast float %9829, -3.000000e+00
  %9839 = fadd fast float %9828, %9826
  %9840 = fmul fast float %9839, 3.000000e+00
  %9841 = fadd fast float %9838, 1.000000e+00
  %9842 = fadd fast float %9841, %9840
  %9843 = fmul fast float %9829, 0x3FC5555560000000
  %9844 = fmul fast float %9827, %9827
  %9845 = fmul fast float %9844, %9827
  %9846 = fsub fast float 3.000000e+00, %9827
  %9847 = fmul fast float %9844, %9846
  %9848 = fmul fast float %9827, 3.000000e+00
  %9849 = fmul fast float %9845, 3.000000e+00
  %9850 = fmul fast float %9844, 6.000000e+00
  %9851 = fsub fast float %9849, %9850
  %9852 = fadd fast float %9851, 4.000000e+00
  %9853 = fmul fast float %9852, 0x3FC5555560000000
  %9854 = fmul fast float %9845, -3.000000e+00
  %9855 = fadd fast float %9844, %9827
  %9856 = fmul fast float %9855, 3.000000e+00
  %9857 = fadd fast float %9854, 1.000000e+00
  %9858 = fadd fast float %9857, %9856
  %9859 = fmul fast float %9845, 0x3FC5555560000000
  %9860 = fadd fast float %9826, 1.000000e+00
  %9861 = fsub fast float 1.000000e+00, %9832
  %9862 = fadd fast float %9861, %9831
  %9863 = fadd fast float %9862, %9836
  %9864 = fmul fast float %9863, 0x3FC5555560000000
  %9865 = fdiv fast float %9837, %9864
  %9866 = fsub fast float %9860, %9865
  %9867 = fsub fast float 1.000000e+00, %9826
  %9868 = fadd fast float %9842, %9829
  %9869 = fmul fast float %9868, 0x3FC5555560000000
  %9870 = fdiv fast float %9843, %9869
  %9871 = fadd fast float %9867, %9870
  %9872 = fadd fast float %9827, 1.000000e+00
  %9873 = fsub fast float 1.000000e+00, %9848
  %9874 = fadd fast float %9873, %9847
  %9875 = fadd fast float %9874, %9852
  %9876 = fmul fast float %9875, 0x3FC5555560000000
  %9877 = fdiv fast float %9853, %9876
  %9878 = fsub fast float %9872, %9877
  %9879 = fsub fast float 1.000000e+00, %9827
  %9880 = fadd fast float %9858, %9845
  %9881 = fmul fast float %9880, 0x3FC5555560000000
  %9882 = fdiv fast float %9859, %9881
  %9883 = fadd fast float %9882, %9879
  %9884 = fmul fast float %9866, %9820
  %9885 = fsub fast float %9741, %9884
  %9886 = fmul fast float %9871, %9820
  %9887 = fadd fast float %9886, %9741
  %9888 = fmul fast float %9883, %9821
  %9889 = fadd fast float %9888, %9742
  %9890 = fmul fast float %9878, %9821
  %9891 = fsub fast float %9742, %9890
  %9892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9885, float %9891, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9893 = extractvalue %dx.types.ResRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.ResRet.f32 %9892, 1
  %9895 = extractvalue %dx.types.ResRet.f32 %9892, 2
  %9896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9887, float %9891, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9897 = extractvalue %dx.types.ResRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.ResRet.f32 %9896, 1
  %9899 = extractvalue %dx.types.ResRet.f32 %9896, 2
  %9900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9885, float %9889, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9901 = extractvalue %dx.types.ResRet.f32 %9900, 0
  %9902 = extractvalue %dx.types.ResRet.f32 %9900, 1
  %9903 = extractvalue %dx.types.ResRet.f32 %9900, 2
  %9904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9887, float %9889, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9905 = extractvalue %dx.types.ResRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.ResRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.ResRet.f32 %9904, 2
  %9908 = fsub fast float %9901, %9893
  %9909 = fsub fast float %9902, %9894
  %9910 = fsub fast float %9903, %9895
  %9911 = fmul fast float %9908, %9881
  %9912 = fmul fast float %9909, %9881
  %9913 = fmul fast float %9910, %9881
  %9914 = fadd fast float %9911, %9893
  %9915 = fadd fast float %9912, %9894
  %9916 = fadd fast float %9913, %9895
  %9917 = fsub fast float %9905, %9897
  %9918 = fsub fast float %9906, %9898
  %9919 = fsub fast float %9907, %9899
  %9920 = fmul fast float %9917, %9881
  %9921 = fmul fast float %9918, %9881
  %9922 = fmul fast float %9919, %9881
  %9923 = fsub fast float %9897, %9914
  %9924 = fadd fast float %9923, %9920
  %9925 = fsub fast float %9898, %9915
  %9926 = fadd fast float %9925, %9921
  %9927 = fsub fast float %9899, %9916
  %9928 = fadd fast float %9927, %9922
  %9929 = fmul fast float %9924, %9869
  %9930 = fmul fast float %9926, %9869
  %9931 = fmul fast float %9928, %9869
  %9932 = fadd fast float %9929, %9914
  %9933 = fadd fast float %9930, %9915
  %9934 = fadd fast float %9931, %9916
  %9935 = fmul fast float %9932, %6290
  %9936 = fmul fast float %9933, %6290
  %9937 = fmul fast float %9934, %6290
  br label %9938

; <label>:9938                                    ; preds = %9771, %9731
  %9939 = phi float [ %9811, %9771 ], [ 1.000000e+00, %9731 ]
  %9940 = phi float [ %9812, %9771 ], [ 1.000000e+00, %9731 ]
  %9941 = phi float [ %9813, %9771 ], [ 1.000000e+00, %9731 ]
  %9942 = phi float [ %9935, %9771 ], [ 0.000000e+00, %9731 ]
  %9943 = phi float [ %9936, %9771 ], [ 0.000000e+00, %9731 ]
  %9944 = phi float [ %9937, %9771 ], [ 0.000000e+00, %9731 ]
  %9945 = fmul fast float %9939, %9738
  %9946 = call float @dx.op.dot3.f32(i32 55, float %9939, float %9940, float %9941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9947 = call float @dx.op.dot3.f32(i32 55, float %9942, float %9943, float %9944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9948 = select i1 %219, float %9946, float %9939
  %9949 = select i1 %219, float %9946, float %9940
  %9950 = select i1 %219, float 1.000000e+00, float %9941
  %9951 = select i1 %219, float %9947, float %9942
  %9952 = select i1 %219, float 0.000000e+00, float %9943
  %9953 = select i1 %219, float 0.000000e+00, float %9944
  %9954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.i32 %9954, 3
  %9956 = and i32 %9955, 3
  %9957 = icmp ne i32 %9956, 0
  %9958 = and i32 %9955, 4
  %9959 = icmp ne i32 %9958, 0
  %9960 = and i1 %9957, %9959
  %9961 = and i1 %219, %9960
  br i1 %9961, label %9962, label %9968

; <label>:9962                                    ; preds = %9938
  %9963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9964 = extractvalue %dx.types.CBufRet.f32 %9963, 1
  %9965 = fadd fast float %9945, -1.000000e+00
  %9966 = fmul fast float %9964, %9965
  %9967 = fadd fast float %9966, 1.000000e+00
  br label %9968

; <label>:9968                                    ; preds = %9962, %9938
  %9969 = phi float [ %9967, %9962 ], [ %9945, %9938 ]
  %9970 = fadd fast float %9735, %9732
  %9971 = fmul fast float %9948, %9970
  %9972 = fadd fast float %9971, %9951
  %9973 = fadd fast float %9736, %9733
  %9974 = fmul fast float %9949, %9973
  %9975 = fadd fast float %9974, %9952
  %9976 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  br i1 %219, label %9977, label %9992

; <label>:9977                                    ; preds = %9968
  %9978 = fadd fast float %9972, %9975
  %9979 = fmul fast float %9976, %9978
  %9980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9981 = extractvalue %dx.types.CBufRet.f32 %9980, 3
  %9982 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %9983 = fsub fast float %8315, %8309
  %9984 = fadd fast float %9983, %8316
  %9985 = fsub fast float %9984, %9982
  %9986 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %9987 = fmul fast float %9985, %9986
  %9988 = call float @dx.op.unary.f32(i32 7, float %9987)  ; Saturate(value)
  %9989 = fsub fast float %9988, %9981
  %9990 = fmul fast float %9989, %9969
  %9991 = fadd fast float %9990, %9981
  br label %10016

; <label>:9992                                    ; preds = %9968
  %9993 = fadd fast float %9737, %9734
  %9994 = fmul fast float %9950, %9993
  %9995 = fadd fast float %9994, %9953
  %9996 = fmul fast float %9976, %9972
  %9997 = fmul fast float %9976, %9975
  %9998 = fmul fast float %9976, %9995
  %9999 = call float @dx.op.binary.f32(i32 35, float %9997, float %9998)  ; FMax(a,b)
  %10000 = call float @dx.op.binary.f32(i32 35, float %9996, float %9999)  ; FMax(a,b)
  %10001 = call float @dx.op.binary.f32(i32 35, float %10000, float 1.000000e+00)  ; FMax(a,b)
  %10002 = fcmp fast ugt float %10001, 0x3F10000000000000
  br i1 %10002, label %10004, label %10003

; <label>:10003                                   ; preds = %9992
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10004

; <label>:10004                                   ; preds = %10003, %9992
  %10005 = add i32 %56, 356
  %10006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %10005, i32 undef)  ; BufferLoad(srv,index,wot)
  %10007 = extractvalue %dx.types.ResRet.i32 %10006, 0
  %10008 = and i32 %10007, 32
  %10009 = icmp eq i32 %10008, 0
  br i1 %10009, label %10016, label %10010

; <label>:10010                                   ; preds = %10004
  %10011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10012 = extractvalue %dx.types.CBufRet.f32 %10011, 0
  %10013 = fmul fast float %10012, 0x3FE99999A0000000
  %10014 = fadd fast float %10012, %9996
  %10015 = fadd fast float %10013, %9998
  br label %10016

; <label>:10016                                   ; preds = %10010, %10004, %9977
  %10017 = phi float [ %9979, %9977 ], [ %10014, %10010 ], [ %9996, %10004 ]
  %10018 = phi float [ %9991, %9977 ], [ %9997, %10010 ], [ %9997, %10004 ]
  %10019 = phi float [ 1.000000e+00, %9977 ], [ %10015, %10010 ], [ %9998, %10004 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10020 = call float @dx.op.binary.f32(i32 36, float %10017, float 3.225500e+04)  ; FMin(a,b)
  %10021 = call float @dx.op.binary.f32(i32 36, float %10018, float 3.225500e+04)  ; FMin(a,b)
  %10022 = call float @dx.op.binary.f32(i32 36, float %10019, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10020)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10021)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10022)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

