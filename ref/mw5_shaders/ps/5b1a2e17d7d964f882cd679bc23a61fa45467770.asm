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
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; ENTITY_IDS               0   xy         13     NONE    uint   xy  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: 84dfc74f9d51dc133b427fcbb338c8f3
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; ENTITY_IDS               0        nointerpolation       
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
;   [224 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture     f32          2d      T9     t37,space2     1
;                                   texture     f32          2d     T10             t0     1
;                                   texture     f32          2d     T11             t1     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t59,space2     1
;                                   texture     f32          2d     T14     t60,space2     1
;                                   texture    byte         r/o     T15     t45,space1     1
;                                   texture    byte         r/o     T16     t46,space1     1
;                                   texture    byte         r/o     T17     t47,space1     1
;                                   texture    byte         r/o     T18     t48,space1     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     u32          2d     T21     t56,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32     2darray     T25      t8,space2     1
;                                   texture     f32          2d     T26      t1,space2     1
;                                   texture     f32          2d     T27      t2,space2     1
;                                   texture     f32          2d     T28      t3,space2     1
;                                   texture     f32          2d     T29      t4,space2     1
;                                   textureunorm_f32     2darray     T30     t80,space2     1
;                                   texture    byte         r/o     T31     t67,space1     1
;                                   texture     f32          2d     T32      t7,space2     1
;                                   texture     f32          2d     T33      t6,space2     1
;                                   texture     f32          2d     T34      t5,space2     1
;                                   texture     f32          2d     T35     t38,space2     1
;                                   texture    byte         r/o     T36     t12,space1     1
;                                   texture    byte         r/o     T37     t13,space1     1
;                                   texture     f32          1d     T38     t30,space2     1
;                                   texture     f32          3d     T39     t44,space2     1
;                                   texture     f32          3d     T40     t45,space2     1
;                                   texture     f32     2darray     T41     t47,space2     1
;                                   textureunorm_f32     2darray     T42     t85,space2     1
;                                   texture     f32          2d     T43     t83,space2     1
;                                   texture     f32          2d     T44     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 40, 41, 56 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 40, 41, 56 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = alloca [4 x i32], align 4
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = alloca [12 x float], align 4
  %102 = alloca [12 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fmul fast float %108, %97
  %110 = fmul fast float %108, %98
  %111 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %115, %88
  %117 = fmul fast float %115, %89
  %118 = fmul fast float %115, %90
  %119 = fmul fast float %89, %86
  %120 = fmul fast float %90, %85
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %90, %84
  %123 = fmul fast float %88, %86
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %88, %85
  %126 = fmul fast float %89, %84
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %87
  %129 = fmul fast float %124, %87
  %130 = fmul fast float %127, %87
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %133, float %158, float %162
  %166 = select i1 %133, float %159, float %163
  %167 = select i1 %133, float %160, float %164
  %168 = fmul fast float %165, %142
  %169 = fmul fast float %166, %142
  %170 = fmul fast float %167, %142
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %133, float %175, float %179
  %183 = select i1 %133, float %176, float %180
  %184 = select i1 %133, float %177, float %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fmul fast float %185, %100
  %189 = fmul fast float %186, %100
  %190 = fmul fast float %187, %100
  %191 = shl i32 %54, 5
  %192 = add i32 %191, 4194304
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = add i32 %191, 4194320
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = bitcast i32 %200 to float
  %203 = bitcast i32 %201 to float
  %204 = fmul fast float %109, 5.000000e-01
  %205 = fmul fast float %110, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %109
  %228 = fmul fast float %226, %110
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %48, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = select i1 %232, i32 %238, i32 0
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %256

; <label>:247                                     ; preds = %0
  %248 = fmul fast float %136, %110
  %249 = fmul fast float %135, %109
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %47, float %249, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %244, 0
  %258 = and i1 %243, %257
  br label %259

; <label>:259                                     ; preds = %256, %247
  %260 = phi i1 [ %255, %247 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %109, 2.560000e+02
  %265 = frem fast float %110, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = fadd fast float %269, %263
  %272 = fadd fast float %270, %263
  %273 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %274 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %275 = add i32 %53, 156
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 4
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %277, 7
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %277, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %53, 216
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %289, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %289, 16
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = add i32 %53, 36
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %53, 288
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %312, 0x3F50624DE0000000
  %316 = fmul fast float %314, 0x3F50624DE0000000
  %317 = mul i32 %55, 100
  %318 = add i32 %317, 28
  %319 = add i32 %317, 40
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %53, 172
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %53, 232
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %53, 52
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %53, 304
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = and i32 %321, 1
  %374 = icmp ne i32 %373, 0
  %375 = select i1 %374, float %366, float %327
  %376 = select i1 %374, float %369, float %330
  %377 = select i1 %374, float %372, float %333
  %378 = add i32 %317, 44
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = fmul fast float %380, %375
  %382 = fmul fast float %380, %376
  %383 = fmul fast float %380, %377
  %384 = add i32 %317, 48
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = shl i32 %386, 4
  %388 = and i32 %387, 32752
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %386, 7
  %391 = and i32 %390, 32752
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %386, 22
  %394 = shl nuw nsw i32 %393, 5
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = and i32 %321, 8
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %397, float %389, float %339
  %399 = select i1 %397, float %392, float %343
  %400 = select i1 %397, float %395, float %347
  %401 = add i32 %317, 52
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %321, 2
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %405, float %352
  %411 = select i1 %409, float %407, float %354
  %412 = add i32 %317, 56
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 65535
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %414, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = and i32 %321, 4
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %416, float %359
  %422 = fmul float %421, 0x3F50624DE0000000
  %423 = select i1 %420, float %418, float %361
  %424 = fmul float %423, 0x3F50624DE0000000
  %425 = add i32 %317, 60
  %426 = add i32 %317, 32
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %53, 188
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = shl i32 %431, 4
  %433 = and i32 %432, 32752
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %431, 7
  %436 = and i32 %435, 32752
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %431, 22
  %439 = shl nuw nsw i32 %438, 5
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = add i32 %53, 248
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 255
  %445 = uitofp i32 %444 to float
  %446 = fmul fast float %445, 0x3F70101020000000
  %447 = lshr i32 %443, 8
  %448 = and i32 %447, 255
  %449 = uitofp i32 %448 to float
  %450 = fmul fast float %449, 0x3F70101020000000
  %451 = lshr i32 %443, 16
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = add i32 %53, 68
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = add i32 %53, 320
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %464, 16
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = shl i32 %470, 4
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %470, 7
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %470, 22
  %478 = shl nuw nsw i32 %477, 5
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = and i32 %428, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %473, float %434
  %483 = select i1 %481, float %476, float %437
  %484 = select i1 %481, float %479, float %440
  %485 = add i32 %317, 64
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = fmul fast float %487, %482
  %489 = fmul fast float %487, %483
  %490 = fmul fast float %487, %484
  %491 = add i32 %317, 68
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = shl i32 %493, 4
  %495 = and i32 %494, 32752
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %493, 7
  %498 = and i32 %497, 32752
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %493, 22
  %501 = shl nuw nsw i32 %500, 5
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = and i32 %428, 8
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, float %496, float %446
  %506 = select i1 %504, float %499, float %450
  %507 = select i1 %504, float %502, float %454
  %508 = add i32 %317, 72
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %428, 2
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %512, float %459
  %518 = select i1 %516, float %514, float %461
  %519 = add i32 %317, 76
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = and i32 %428, 4
  %527 = icmp ne i32 %526, 0
  %528 = select i1 %527, float %523, float %466
  %529 = fmul float %528, 0x3F50624DE0000000
  %530 = select i1 %527, float %525, float %468
  %531 = fmul float %530, 0x3F50624DE0000000
  %532 = add i32 %317, 80
  %533 = add i32 %317, 36
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = add i32 %53, 204
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = shl i32 %538, 4
  %540 = and i32 %539, 32752
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %538, 7
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %538, 22
  %546 = shl nuw nsw i32 %545, 5
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %53, 264
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = lshr i32 %550, 8
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = lshr i32 %550, 16
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = add i32 %53, 84
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %564, 16
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = add i32 %53, 336
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = shl i32 %577, 4
  %579 = and i32 %578, 32752
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %577, 7
  %582 = and i32 %581, 32752
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %577, 22
  %585 = shl nuw nsw i32 %584, 5
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = and i32 %535, 1
  %588 = icmp ne i32 %587, 0
  %589 = select i1 %588, float %580, float %541
  %590 = select i1 %588, float %583, float %544
  %591 = select i1 %588, float %586, float %547
  %592 = add i32 %317, 84
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = fmul fast float %594, %589
  %596 = fmul fast float %594, %590
  %597 = fmul fast float %594, %591
  %598 = add i32 %317, 88
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = shl i32 %600, 4
  %602 = and i32 %601, 32752
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %600, 7
  %605 = and i32 %604, 32752
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %600, 22
  %608 = shl nuw nsw i32 %607, 5
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = and i32 %535, 8
  %611 = icmp ne i32 %610, 0
  %612 = select i1 %611, float %603, float %553
  %613 = select i1 %611, float %606, float %557
  %614 = select i1 %611, float %609, float %561
  %615 = add i32 %317, 92
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %617, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %535, 2
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %619, float %566
  %625 = select i1 %623, float %621, float %568
  %626 = add i32 %317, 96
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %628, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %535, 4
  %634 = icmp ne i32 %633, 0
  %635 = select i1 %634, float %630, float %573
  %636 = fmul float %635, 0x3F50624DE0000000
  %637 = select i1 %634, float %632, float %575
  %638 = fmul float %637, 0x3F50624DE0000000
  %639 = add i32 %53, 348
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 32
  %643 = icmp eq i32 %642, 0
  %644 = and i32 %641, 64
  %645 = icmp eq i32 %644, 0
  %646 = and i32 %641, 128
  %647 = icmp eq i32 %646, 0
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 2
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %667, label %652

; <label>:652                                     ; preds = %259
  %653 = add i32 %53, 524
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = add i32 %655, 0
  %657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %657, %dx.types.Handle %106, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = fmul fast float %662, %93
  %664 = fmul fast float %659, %94
  %665 = fmul fast float %660, %95
  %666 = fmul fast float %661, %96
  br label %667

; <label>:667                                     ; preds = %652, %259
  %668 = phi float [ %96, %259 ], [ %666, %652 ]
  %669 = phi float [ %95, %259 ], [ %665, %652 ]
  %670 = phi float [ %94, %259 ], [ %664, %652 ]
  %671 = phi float [ %93, %259 ], [ %663, %652 ]
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 2
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %695, label %676

; <label>:676                                     ; preds = %667
  %677 = add i32 %53, 44
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 1
  %681 = icmp ne i32 %680, 0
  %682 = select i1 %681, float %670, float 1.000000e+00
  %683 = add i32 %53, 60
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 1
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %687, float %669, float 1.000000e+00
  %689 = add i32 %53, 76
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %668, float 1.000000e+00
  br label %695

; <label>:695                                     ; preds = %676, %667
  %696 = phi float [ %668, %667 ], [ %694, %676 ]
  %697 = phi float [ %669, %667 ], [ %688, %676 ]
  %698 = phi float [ %670, %667 ], [ %682, %676 ]
  %699 = lshr i32 %673, 20
  %700 = and i32 %699, 3
  %701 = add nuw nsw i32 %700, 1
  %702 = add i32 %53, 24
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %53, 28
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = or i32 %707, %704
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %1297, label %710

; <label>:710                                     ; preds = %695
  %711 = and i32 %704, 262144
  %712 = icmp ne i32 %711, 0
  %713 = select i1 %712, float %59, float 1.000000e+00
  %714 = select i1 %712, float %60, float 0.000000e+00
  %715 = select i1 %712, float %61, float 0.000000e+00
  %716 = select i1 %712, float %62, float 1.000000e+00
  %717 = select i1 %712, float %63, float %91
  %718 = select i1 %712, float %64, float %92
  %719 = add i32 %53, 284
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = lshr i32 %721, 16
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = fmul fast float %723, 0x3F50624DE0000000
  %725 = add i32 %53, 88
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 16
  %729 = and i32 %728, 255
  %730 = lshr i32 %727, 24
  %731 = add i32 %53, 292
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 65535
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %733, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = add i32 %53, 32
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = lshr i32 %740, 22
  %742 = shl nuw nsw i32 %741, 5
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = shl i32 %740, 4
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = lshr i32 %740, 7
  %748 = and i32 %747, 32752
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %752 = fmul fast float %751, 1.000000e+03
  %753 = fmul fast float %315, %752
  %754 = call float @dx.op.unary.f32(i32 22, float %753)  ; Frc(value)
  %755 = fadd fast float %754, %305
  %756 = fmul fast float %316, %752
  %757 = call float @dx.op.unary.f32(i32 22, float %756)  ; Frc(value)
  %758 = fadd fast float %757, %307
  %759 = fmul fast float %724, %752
  %760 = call float @dx.op.unary.f32(i32 22, float %759)  ; Frc(value)
  %761 = fmul fast float %760, 0x401921FB60000000
  %762 = fadd fast float %761, %743
  %763 = call float @dx.op.unary.f32(i32 13, float %762)  ; Sin(value)
  %764 = call float @dx.op.unary.f32(i32 12, float %762)  ; Cos(value)
  %765 = fsub fast float -0.000000e+00, %763
  %766 = fadd fast float %717, -5.000000e-01
  %767 = fadd fast float %718, -5.000000e-01
  %768 = fmul fast float %735, %766
  %769 = fmul fast float %737, %767
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fmul fast float %746, %770
  %773 = fmul fast float %749, %771
  %774 = fmul fast float %764, %772
  %775 = call float @dx.op.tertiary.f32(i32 46, float %765, float %773, float %774)  ; FMad(a,b,c)
  %776 = fmul fast float %763, %772
  %777 = call float @dx.op.tertiary.f32(i32 46, float %764, float %773, float %776)  ; FMad(a,b,c)
  %778 = fadd fast float %755, %775
  %779 = fadd fast float %758, %777
  %780 = icmp ugt i32 %729, 1
  %781 = icmp ugt i32 %727, 33554431
  %782 = or i1 %781, %780
  br i1 %782, label %783, label %808

; <label>:783                                     ; preds = %710
  %784 = add i32 %53, 228
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = lshr i32 %786, 16
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = fmul fast float %751, %788
  %790 = call float @dx.op.unary.f32(i32 22, float %789)  ; Frc(value)
  %791 = mul nuw nsw i32 %729, %730
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %790, %792
  %794 = call float @dx.op.unary.f32(i32 27, float %793)  ; Round_ni(value)
  %795 = fptoui float %794 to i32
  %796 = urem i32 %795, %729
  %797 = udiv i32 %795, %730
  %798 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %799 = call float @dx.op.unary.f32(i32 22, float %779)  ; Frc(value)
  %800 = uitofp i32 %796 to float
  %801 = uitofp i32 %797 to float
  %802 = fadd fast float %798, %800
  %803 = fadd fast float %799, %801
  %804 = uitofp i32 %729 to float
  %805 = uitofp i32 %730 to float
  %806 = fdiv fast float %802, %804
  %807 = fdiv fast float %803, %805
  br label %808

; <label>:808                                     ; preds = %783, %710
  %809 = phi float [ %806, %783 ], [ %778, %710 ]
  %810 = phi float [ %807, %783 ], [ %779, %710 ]
  %811 = and i32 %704, 256
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %859, label %813

; <label>:813                                     ; preds = %808
  %814 = add i32 %53, 472
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = add i32 %816, 0
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %106, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = add i32 %53, 100
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = shl i32 %823, 4
  %825 = and i32 %824, 32752
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %823, 7
  %828 = and i32 %827, 32752
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fsub fast float 1.000000e+00, %671
  %831 = call float @dx.op.binary.f32(i32 35, float %830, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %832 = bitcast float %671 to i32
  %833 = sitofp i32 %832 to float
  %834 = fadd fast float %833, 0xC1CFBF8940000000
  %835 = fmul fast float %829, %834
  %836 = fadd fast float %835, 0x41CFBF8940000000
  %837 = fptosi float %836 to i32
  %838 = bitcast i32 %837 to float
  %839 = bitcast float %831 to i32
  %840 = sitofp i32 %839 to float
  %841 = fadd fast float %840, 0xC1CFBF8940000000
  %842 = fmul fast float %841, %829
  %843 = fadd fast float %842, 0x41CFBF8940000000
  %844 = fptosi float %843 to i32
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %838, %826
  %847 = fmul fast float %845, %826
  %848 = fsub fast float %831, %846
  %849 = fadd fast float %847, %831
  %850 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %851 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %852 = fsub fast float %820, %850
  %853 = fsub fast float %851, %850
  %854 = bitcast float %853 to i32
  %855 = sub nsw i32 2129859010, %854
  %856 = bitcast i32 %855 to float
  %857 = fmul fast float %856, %852
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  br label %859

; <label>:859                                     ; preds = %813, %808
  %860 = phi float [ %858, %813 ], [ %671, %808 ]
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = and i32 %862, 128
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %881, label %865

; <label>:865                                     ; preds = %859
  %866 = add i32 %53, 456
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = add i32 %868, 0
  %870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %870, %dx.types.Handle %106, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 524288
  %876 = icmp ne i32 %875, 0
  %877 = fcmp fast ogt float %872, 0x3FE0101020000000
  %878 = select i1 %877, float 1.000000e+00, float 0.000000e+00
  %879 = select i1 %876, float %878, float %872
  %880 = fmul fast float %879, %860
  br label %881

; <label>:881                                     ; preds = %865, %859
  %882 = phi float [ %880, %865 ], [ %860, %859 ]
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 16
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %1085, label %887

; <label>:887                                     ; preds = %881
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %53, 408
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = add i32 %892, 0
  %894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %893, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %895 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %894, %dx.types.Handle %105, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = extractvalue %dx.types.ResRet.f32 %895, 3
  %900 = and i32 %889, 255
  %901 = uitofp i32 %900 to float
  %902 = lshr i32 %889, 8
  %903 = and i32 %902, 255
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %899, %901
  %906 = fadd fast float %905, %904
  %907 = fmul fast float %906, 0x3F70101000000000
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 512
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %920, label %912

; <label>:912                                     ; preds = %887
  %913 = add i32 %53, 492
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %915, 0
  %917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %917, %dx.types.Handle %106, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  br label %920

; <label>:920                                     ; preds = %912, %887
  %921 = phi float [ %919, %912 ], [ 1.000000e+00, %887 ]
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 33554432
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %1032, label %926

; <label>:926                                     ; preds = %920
  %927 = add i32 %53, 224
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 65535
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = lshr i32 %929, 16
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = add i32 %53, 228
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 65535
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 24
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = and i32 %940, 255
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = lshr i32 %940, 8
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = lshr i32 %940, 16
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = add i32 %53, 220
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 24
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = and i32 %957, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = lshr i32 %957, 8
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = lshr i32 %957, 16
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = bitcast float %896 to i32
  %973 = ashr i32 %972, 1
  %974 = sub nsw i32 1597463174, %973
  %975 = bitcast i32 %974 to float
  %976 = fmul fast float %896, 5.000000e-01
  %977 = fmul fast float %975, %975
  %978 = fmul fast float %977, %976
  %979 = fsub fast float 1.500000e+00, %978
  %980 = fmul fast float %975, %896
  %981 = fmul fast float %980, %979
  %982 = bitcast float %897 to i32
  %983 = ashr i32 %982, 1
  %984 = sub nsw i32 1597463174, %983
  %985 = bitcast i32 %984 to float
  %986 = fmul fast float %897, 5.000000e-01
  %987 = fmul fast float %985, %985
  %988 = fmul fast float %987, %986
  %989 = fsub fast float 1.500000e+00, %988
  %990 = fmul fast float %985, %897
  %991 = fmul fast float %990, %989
  %992 = bitcast float %898 to i32
  %993 = ashr i32 %992, 1
  %994 = sub nsw i32 1597463174, %993
  %995 = bitcast i32 %994 to float
  %996 = fmul fast float %898, 5.000000e-01
  %997 = fmul fast float %995, %995
  %998 = fmul fast float %997, %996
  %999 = fsub fast float 1.500000e+00, %998
  %1000 = fmul fast float %995, %898
  %1001 = fmul fast float %1000, %999
  %1002 = fsub fast float %981, %963
  %1003 = fsub fast float %991, %967
  %1004 = fsub fast float %1001, %971
  %1005 = fmul fast float %1002, %931
  %1006 = fmul fast float %1003, %933
  %1007 = fmul fast float %1004, %938
  %1008 = fadd fast float %1005, %946
  %1009 = fadd fast float %1006, %950
  %1010 = fadd fast float %1007, %954
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1013 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1014 = fmul fast float %1011, %1011
  %1015 = fmul fast float %1012, %1012
  %1016 = fmul fast float %1013, %1013
  %1017 = fsub fast float %1014, %896
  %1018 = fsub fast float %1015, %897
  %1019 = fsub fast float %1016, %898
  %1020 = fmul fast float %1017, %921
  %1021 = fmul fast float %1018, %921
  %1022 = fmul fast float %1019, %921
  %1023 = fadd fast float %1020, %896
  %1024 = fadd fast float %1021, %897
  %1025 = fadd fast float %1022, %898
  %1026 = fadd fast float %943, %907
  %1027 = fsub fast float %1026, %960
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = fsub fast float %1028, %907
  %1030 = fmul fast float %1029, %921
  %1031 = fadd fast float %1030, %907
  br label %1085

; <label>:1032                                    ; preds = %920
  %1033 = and i32 %923, 134217728
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1069, label %1035

; <label>:1035                                    ; preds = %1032
  %1036 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1037 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1039 = fadd fast float %1036, -5.000000e-01
  %1040 = fadd fast float %1037, -5.000000e-01
  %1041 = fadd fast float %1038, -5.000000e-01
  %1042 = fmul fast float %1039, %921
  %1043 = fmul fast float %1040, %921
  %1044 = fmul fast float %1041, %921
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %1049 = call float @dx.op.unary.f32(i32 24, float %897)  ; Sqrt(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %898)  ; Sqrt(value)
  %1051 = fmul fast float %1045, 2.000000e+00
  %1052 = fsub fast float 1.000000e+00, %1051
  %1053 = fmul fast float %1052, %1048
  %1054 = fadd fast float %1053, %1051
  %1055 = fmul fast float %1054, %1048
  %1056 = fmul fast float %1046, 2.000000e+00
  %1057 = fsub fast float 1.000000e+00, %1056
  %1058 = fmul fast float %1057, %1049
  %1059 = fadd fast float %1058, %1056
  %1060 = fmul fast float %1059, %1049
  %1061 = fmul fast float %1047, 2.000000e+00
  %1062 = fsub fast float 1.000000e+00, %1061
  %1063 = fmul fast float %1062, %1050
  %1064 = fadd fast float %1063, %1061
  %1065 = fmul fast float %1064, %1050
  %1066 = fmul fast float %1055, %1055
  %1067 = fmul fast float %1060, %1060
  %1068 = fmul fast float %1065, %1065
  br label %1085

; <label>:1069                                    ; preds = %1032
  %1070 = fmul fast float %292, %292
  %1071 = fmul fast float %296, %296
  %1072 = fmul fast float %300, %300
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fadd fast float %1071, -1.000000e+00
  %1075 = fadd fast float %1072, -1.000000e+00
  %1076 = fmul fast float %921, %1073
  %1077 = fmul fast float %921, %1074
  %1078 = fmul fast float %921, %1075
  %1079 = fadd fast float %1076, 1.000000e+00
  %1080 = fadd fast float %1077, 1.000000e+00
  %1081 = fadd fast float %1078, 1.000000e+00
  %1082 = fmul fast float %1079, %896
  %1083 = fmul fast float %1080, %897
  %1084 = fmul fast float %1081, %898
  br label %1085

; <label>:1085                                    ; preds = %1069, %1035, %926, %881
  %1086 = phi float [ %1031, %926 ], [ %907, %1035 ], [ %907, %1069 ], [ 0x3FA23C0BE0000000, %881 ]
  %1087 = phi float [ %1023, %926 ], [ %1066, %1035 ], [ %1082, %1069 ], [ 1.000000e+00, %881 ]
  %1088 = phi float [ %1024, %926 ], [ %1067, %1035 ], [ %1083, %1069 ], [ 1.000000e+00, %881 ]
  %1089 = phi float [ %1025, %926 ], [ %1068, %1035 ], [ %1084, %1069 ], [ 1.000000e+00, %881 ]
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 1
  %1092 = and i32 %1091, 1
  %1093 = icmp ne i32 %1092, 0
  %1094 = add i32 %53, 356
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 32
  %1098 = icmp ne i32 %1097, 0
  %1099 = and i1 %1093, %1098
  %1100 = select i1 %1099, float 1.000000e+00, float %1087
  %1101 = select i1 %1099, float 0x3FD3333340000000, float %1088
  %1102 = select i1 %1099, float 0x3FD3333340000000, float %1089
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 32
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1179, label %1107

; <label>:1107                                    ; preds = %1085
  %1108 = add i32 %53, 92
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %53, 424
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1115, %dx.types.Handle %105, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1116, 3
  %1121 = and i32 %1110, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1110, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1110, 16
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101000000000
  %1130 = fmul fast float %1117, %1122
  %1131 = fadd fast float %1130, %1125
  %1132 = fmul fast float %1131, 0x3F70101000000000
  %1133 = fadd fast float %1118, -5.000000e-01
  %1134 = fadd fast float %1120, -5.000000e-01
  %1135 = fmul fast float %1133, %1129
  %1136 = fmul fast float %1134, %1129
  %1137 = fadd fast float %1135, 5.000000e-01
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fmul fast float %1137, 2.000000e+00
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = fmul fast float %1138, 2.000000e+00
  %1142 = fadd fast float %1141, -1.000000e+00
  %1143 = fadd fast float %1140, %1142
  %1144 = fmul fast float %1143, 5.000000e-01
  %1145 = fsub fast float %1140, %1142
  %1146 = fmul fast float %1145, 5.000000e-01
  %1147 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1148 = fsub fast float 1.000000e+00, %1147
  %1149 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1150 = fsub fast float %1148, %1149
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1144, float %1146, float %1150, float %1144, float %1146, float %1150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = call float @dx.op.unary.f32(i32 25, float %1151)  ; Rsqrt(value)
  %1153 = fmul fast float %1144, %1152
  %1154 = fmul fast float %1146, %1152
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 67108864
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1175, label %1159

; <label>:1159                                    ; preds = %1107
  %1160 = add i32 %53, 280
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 65535
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = lshr i32 %1162, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fsub fast float %1132, %1170
  %1172 = fmul fast float %1171, %1164
  %1173 = fadd fast float %1172, %1168
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  br label %1175

; <label>:1175                                    ; preds = %1159, %1107
  %1176 = phi float [ %1174, %1159 ], [ %1132, %1107 ]
  %1177 = call float @dx.op.dot2.f32(i32 54, float %1153, float %1154, float %713, float %714)  ; Dot2(ax,ay,bx,by)
  %1178 = call float @dx.op.dot2.f32(i32 54, float %1153, float %1154, float %715, float %716)  ; Dot2(ax,ay,bx,by)
  br label %1179

; <label>:1179                                    ; preds = %1175, %1085
  %1180 = phi float [ %1176, %1175 ], [ 0x3FD6666660000000, %1085 ]
  %1181 = phi float [ %1177, %1175 ], [ 0.000000e+00, %1085 ]
  %1182 = phi float [ %1178, %1175 ], [ 0.000000e+00, %1085 ]
  %1183 = phi float [ %1119, %1175 ], [ 1.000000e+00, %1085 ]
  %1184 = add i32 %53, 160
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 22
  %1188 = shl nuw nsw i32 %1187, 5
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 64
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1227, label %1194

; <label>:1194                                    ; preds = %1179
  %1195 = add i32 %53, 440
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 131072
  %1203 = icmp eq i32 %1202, 0
  %1204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %105, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = fmul fast float %1205, %280
  %1209 = fmul fast float %1206, %283
  %1210 = fmul fast float %1207, %286
  br i1 %1203, label %1217, label %1211

; <label>:1211                                    ; preds = %1194
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = fmul fast float %1213, %1208
  %1215 = fmul fast float %1213, %1209
  %1216 = fmul fast float %1213, %1210
  br label %1217

; <label>:1217                                    ; preds = %1211, %1194
  %1218 = phi float [ %1214, %1211 ], [ %1208, %1194 ]
  %1219 = phi float [ %1215, %1211 ], [ %1209, %1194 ]
  %1220 = phi float [ %1216, %1211 ], [ %1210, %1194 ]
  %1221 = fmul fast float %1218, %1189
  %1222 = select i1 %260, float %1221, float %1218
  %1223 = call float @dx.op.dot3.f32(i32 55, float %1222, float %1219, float %1220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = select i1 %260, float 0.000000e+00, float %1218
  %1225 = select i1 %260, float %1223, float %1219
  %1226 = select i1 %260, float 0.000000e+00, float %1220
  br label %1227

; <label>:1227                                    ; preds = %1217, %1179
  %1228 = phi float [ %1224, %1217 ], [ 0.000000e+00, %1179 ]
  %1229 = phi float [ %1225, %1217 ], [ 0.000000e+00, %1179 ]
  %1230 = phi float [ %1226, %1217 ], [ 0.000000e+00, %1179 ]
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 10240
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1279, label %1235

; <label>:1235                                    ; preds = %1227
  %1236 = add i32 %53, 508
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %1238, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1240, %dx.types.Handle %106, float %809, float %810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 1048576
  %1247 = icmp ne i32 %1246, 0
  %1248 = and i32 %1245, 8192
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1265, label %1250

; <label>:1250                                    ; preds = %1235
  %1251 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1252 = select i1 %1247, float %1251, float %1242
  %1253 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1254 = select i1 %1247, float %1253, float %1242
  %1255 = add i32 %53, 96
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = lshr i32 %1257, 16
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F80101020000000
  %1262 = fmul fast float %1261, %1254
  %1263 = fmul fast float %1261, %1242
  %1264 = fmul fast float %1261, %1252
  br label %1265

; <label>:1265                                    ; preds = %1250, %1235
  %1266 = phi float [ %1262, %1250 ], [ 0.000000e+00, %1235 ]
  %1267 = phi float [ %1263, %1250 ], [ 0.000000e+00, %1235 ]
  %1268 = phi float [ %1264, %1250 ], [ 0.000000e+00, %1235 ]
  %1269 = and i32 %1245, 2048
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1279, label %1271

; <label>:1271                                    ; preds = %1265
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = shl i32 %1273, 4
  %1275 = and i32 %1274, 32752
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fmul fast float %1276, %1243
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1279

; <label>:1279                                    ; preds = %1271, %1265, %1227
  %1280 = phi float [ %1266, %1271 ], [ %1266, %1265 ], [ 0.000000e+00, %1227 ]
  %1281 = phi float [ %1267, %1271 ], [ %1267, %1265 ], [ 0.000000e+00, %1227 ]
  %1282 = phi float [ %1268, %1271 ], [ %1268, %1265 ], [ 0.000000e+00, %1227 ]
  %1283 = phi float [ %1278, %1271 ], [ 0x3F70101020000000, %1265 ], [ 0x3F70101020000000, %1227 ]
  %1284 = add i32 %53, 96
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = lshr i32 %1286, 8
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1101, float %1102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1293 = fmul fast float %1291, %1292
  %1294 = fadd fast float %1293, %1288
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  br label %1297

; <label>:1297                                    ; preds = %1279, %695
  %1298 = phi float [ 0.000000e+00, %695 ], [ %1181, %1279 ]
  %1299 = phi float [ 0.000000e+00, %695 ], [ %1182, %1279 ]
  %1300 = phi float [ 0.000000e+00, %695 ], [ %1100, %1279 ]
  %1301 = phi float [ 0.000000e+00, %695 ], [ %1101, %1279 ]
  %1302 = phi float [ 0.000000e+00, %695 ], [ %1102, %1279 ]
  %1303 = phi float [ 0.000000e+00, %695 ], [ %1228, %1279 ]
  %1304 = phi float [ 0.000000e+00, %695 ], [ %1229, %1279 ]
  %1305 = phi float [ 0.000000e+00, %695 ], [ %1230, %1279 ]
  %1306 = phi float [ 0.000000e+00, %695 ], [ %1280, %1279 ]
  %1307 = phi float [ 0.000000e+00, %695 ], [ %1281, %1279 ]
  %1308 = phi float [ 0.000000e+00, %695 ], [ %1282, %1279 ]
  %1309 = phi float [ 0.000000e+00, %695 ], [ %1086, %1279 ]
  %1310 = phi float [ 0.000000e+00, %695 ], [ %882, %1279 ]
  %1311 = phi float [ 0.000000e+00, %695 ], [ %1180, %1279 ]
  %1312 = phi float [ 0.000000e+00, %695 ], [ %1183, %1279 ]
  %1313 = phi float [ 0.000000e+00, %695 ], [ %1283, %1279 ]
  %1314 = phi float [ 0.000000e+00, %695 ], [ %1296, %1279 ]
  br i1 %643, label %2128, label %1315

; <label>:1315                                    ; preds = %1297
  %1316 = icmp ult i32 %701, 2
  %1317 = add i32 %53, 40
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %53, 44
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = or i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %2128, label %1325

; <label>:1325                                    ; preds = %1315
  %1326 = and i32 %1319, 262144
  %1327 = icmp ne i32 %1326, 0
  %1328 = select i1 %1327, float %59, float 1.000000e+00
  %1329 = select i1 %1327, float %60, float 0.000000e+00
  %1330 = select i1 %1327, float %61, float 0.000000e+00
  %1331 = select i1 %1327, float %62, float 1.000000e+00
  %1332 = select i1 %1327, float %63, float %91
  %1333 = select i1 %1327, float %64, float %92
  %1334 = add i32 %53, 300
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fmul fast float %1338, 0x3F50624DE0000000
  %1340 = add i32 %53, 104
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 16
  %1344 = and i32 %1343, 255
  %1345 = lshr i32 %1342, 24
  %1346 = add i32 %53, 308
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 65535
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = lshr i32 %1348, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = add i32 %53, 48
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 22
  %1357 = shl nuw nsw i32 %1356, 5
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = shl i32 %1355, 4
  %1360 = and i32 %1359, 32752
  %1361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1360)  ; LegacyF16ToF32(value)
  %1362 = lshr i32 %1355, 7
  %1363 = and i32 %1362, 32752
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 3
  %1367 = fmul fast float %1366, 1.000000e+03
  %1368 = fmul fast float %1367, %422
  %1369 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1370 = fadd fast float %1369, %410
  %1371 = fmul fast float %1367, %424
  %1372 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1373 = fadd fast float %1372, %411
  %1374 = fmul fast float %1339, %1367
  %1375 = call float @dx.op.unary.f32(i32 22, float %1374)  ; Frc(value)
  %1376 = fmul fast float %1375, 0x401921FB60000000
  %1377 = fadd fast float %1376, %1358
  %1378 = call float @dx.op.unary.f32(i32 13, float %1377)  ; Sin(value)
  %1379 = call float @dx.op.unary.f32(i32 12, float %1377)  ; Cos(value)
  %1380 = fsub fast float -0.000000e+00, %1378
  %1381 = fadd fast float %1332, -5.000000e-01
  %1382 = fadd fast float %1333, -5.000000e-01
  %1383 = fmul fast float %1350, %1381
  %1384 = fmul fast float %1352, %1382
  %1385 = fadd fast float %1383, 5.000000e-01
  %1386 = fadd fast float %1384, 5.000000e-01
  %1387 = fmul fast float %1361, %1385
  %1388 = fmul fast float %1364, %1386
  %1389 = fmul fast float %1379, %1387
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1380, float %1388, float %1389)  ; FMad(a,b,c)
  %1391 = fmul fast float %1378, %1387
  %1392 = call float @dx.op.tertiary.f32(i32 46, float %1379, float %1388, float %1391)  ; FMad(a,b,c)
  %1393 = fadd fast float %1370, %1390
  %1394 = fadd fast float %1373, %1392
  %1395 = icmp ugt i32 %1344, 1
  %1396 = icmp ugt i32 %1342, 33554431
  %1397 = or i1 %1396, %1395
  br i1 %1397, label %1398, label %1423

; <label>:1398                                    ; preds = %1325
  %1399 = add i32 %53, 244
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = lshr i32 %1401, 16
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = fmul fast float %1366, %1403
  %1405 = call float @dx.op.unary.f32(i32 22, float %1404)  ; Frc(value)
  %1406 = mul nuw nsw i32 %1344, %1345
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1405, %1407
  %1409 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1410 = fptoui float %1409 to i32
  %1411 = urem i32 %1410, %1344
  %1412 = udiv i32 %1410, %1345
  %1413 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1414 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1415 = uitofp i32 %1411 to float
  %1416 = uitofp i32 %1412 to float
  %1417 = fadd fast float %1413, %1415
  %1418 = fadd fast float %1414, %1416
  %1419 = uitofp i32 %1344 to float
  %1420 = uitofp i32 %1345 to float
  %1421 = fdiv fast float %1417, %1419
  %1422 = fdiv fast float %1418, %1420
  br label %1423

; <label>:1423                                    ; preds = %1398, %1325
  %1424 = phi float [ %1421, %1398 ], [ %1393, %1325 ]
  %1425 = phi float [ %1422, %1398 ], [ %1394, %1325 ]
  %1426 = and i32 %1319, 256
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1474, label %1428

; <label>:1428                                    ; preds = %1423
  %1429 = add i32 %53, 476
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %1431, 0
  %1433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1433, %dx.types.Handle %106, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = add i32 %53, 116
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = shl i32 %1438, 4
  %1440 = and i32 %1439, 32752
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = lshr i32 %1438, 7
  %1443 = and i32 %1442, 32752
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = fsub fast float 1.000000e+00, %698
  %1446 = call float @dx.op.binary.f32(i32 35, float %1445, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1447 = bitcast float %698 to i32
  %1448 = sitofp i32 %1447 to float
  %1449 = fadd fast float %1448, 0xC1CFBF8940000000
  %1450 = fmul fast float %1444, %1449
  %1451 = fadd fast float %1450, 0x41CFBF8940000000
  %1452 = fptosi float %1451 to i32
  %1453 = bitcast i32 %1452 to float
  %1454 = bitcast float %1446 to i32
  %1455 = sitofp i32 %1454 to float
  %1456 = fadd fast float %1455, 0xC1CFBF8940000000
  %1457 = fmul fast float %1456, %1444
  %1458 = fadd fast float %1457, 0x41CFBF8940000000
  %1459 = fptosi float %1458 to i32
  %1460 = bitcast i32 %1459 to float
  %1461 = fmul fast float %1453, %1441
  %1462 = fmul fast float %1460, %1441
  %1463 = fsub fast float %1446, %1461
  %1464 = fadd fast float %1462, %1446
  %1465 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1466 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1467 = fsub fast float %1435, %1465
  %1468 = fsub fast float %1466, %1465
  %1469 = bitcast float %1468 to i32
  %1470 = sub nsw i32 2129859010, %1469
  %1471 = bitcast i32 %1470 to float
  %1472 = fmul fast float %1471, %1467
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1428, %1423
  %1475 = phi float [ %1473, %1428 ], [ %698, %1423 ]
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 128
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1496, label %1480

; <label>:1480                                    ; preds = %1474
  %1481 = add i32 %53, 460
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %106, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 524288
  %1491 = icmp ne i32 %1490, 0
  %1492 = fcmp fast ogt float %1487, 0x3FE0101020000000
  %1493 = select i1 %1492, float 1.000000e+00, float 0.000000e+00
  %1494 = select i1 %1491, float %1493, float %1487
  %1495 = fmul fast float %1494, %1475
  br label %1496

; <label>:1496                                    ; preds = %1480, %1474
  %1497 = phi float [ %1495, %1480 ], [ %1475, %1474 ]
  %1498 = fcmp fast ult float %1497, 0x3F70101020000000
  br i1 %1498, label %2128, label %1499

; <label>:1499                                    ; preds = %1496
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 16
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1702, label %1504

; <label>:1504                                    ; preds = %1499
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = add i32 %53, 412
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = add i32 %1509, 0
  %1511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1511, %dx.types.Handle %105, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = extractvalue %dx.types.ResRet.f32 %1512, 3
  %1517 = and i32 %1506, 255
  %1518 = uitofp i32 %1517 to float
  %1519 = lshr i32 %1506, 8
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1516, %1518
  %1523 = fadd fast float %1522, %1521
  %1524 = fmul fast float %1523, 0x3F70101000000000
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 512
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1537, label %1529

; <label>:1529                                    ; preds = %1504
  %1530 = add i32 %53, 496
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %106, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  br label %1537

; <label>:1537                                    ; preds = %1529, %1504
  %1538 = phi float [ %1536, %1529 ], [ 1.000000e+00, %1504 ]
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 33554432
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1649, label %1543

; <label>:1543                                    ; preds = %1537
  %1544 = add i32 %53, 240
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 65535
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = lshr i32 %1546, 16
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = add i32 %53, 244
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 65535
  %1555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1554)  ; LegacyF16ToF32(value)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = lshr i32 %1557, 24
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = and i32 %1557, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = lshr i32 %1557, 8
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = lshr i32 %1557, 16
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1570, 0x3F70101020000000
  %1572 = add i32 %53, 236
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = lshr i32 %1574, 24
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = and i32 %1574, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = lshr i32 %1574, 8
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = lshr i32 %1574, 16
  %1586 = and i32 %1585, 255
  %1587 = uitofp i32 %1586 to float
  %1588 = fmul fast float %1587, 0x3F70101020000000
  %1589 = bitcast float %1513 to i32
  %1590 = ashr i32 %1589, 1
  %1591 = sub nsw i32 1597463174, %1590
  %1592 = bitcast i32 %1591 to float
  %1593 = fmul fast float %1513, 5.000000e-01
  %1594 = fmul fast float %1592, %1592
  %1595 = fmul fast float %1594, %1593
  %1596 = fsub fast float 1.500000e+00, %1595
  %1597 = fmul fast float %1592, %1513
  %1598 = fmul fast float %1597, %1596
  %1599 = bitcast float %1514 to i32
  %1600 = ashr i32 %1599, 1
  %1601 = sub nsw i32 1597463174, %1600
  %1602 = bitcast i32 %1601 to float
  %1603 = fmul fast float %1514, 5.000000e-01
  %1604 = fmul fast float %1602, %1602
  %1605 = fmul fast float %1604, %1603
  %1606 = fsub fast float 1.500000e+00, %1605
  %1607 = fmul fast float %1602, %1514
  %1608 = fmul fast float %1607, %1606
  %1609 = bitcast float %1515 to i32
  %1610 = ashr i32 %1609, 1
  %1611 = sub nsw i32 1597463174, %1610
  %1612 = bitcast i32 %1611 to float
  %1613 = fmul fast float %1515, 5.000000e-01
  %1614 = fmul fast float %1612, %1612
  %1615 = fmul fast float %1614, %1613
  %1616 = fsub fast float 1.500000e+00, %1615
  %1617 = fmul fast float %1612, %1515
  %1618 = fmul fast float %1617, %1616
  %1619 = fsub fast float %1598, %1580
  %1620 = fsub fast float %1608, %1584
  %1621 = fsub fast float %1618, %1588
  %1622 = fmul fast float %1619, %1548
  %1623 = fmul fast float %1620, %1550
  %1624 = fmul fast float %1621, %1555
  %1625 = fadd fast float %1622, %1563
  %1626 = fadd fast float %1623, %1567
  %1627 = fadd fast float %1624, %1571
  %1628 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1630 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1631 = fmul fast float %1628, %1628
  %1632 = fmul fast float %1629, %1629
  %1633 = fmul fast float %1630, %1630
  %1634 = fsub fast float %1631, %1513
  %1635 = fsub fast float %1632, %1514
  %1636 = fsub fast float %1633, %1515
  %1637 = fmul fast float %1634, %1538
  %1638 = fmul fast float %1635, %1538
  %1639 = fmul fast float %1636, %1538
  %1640 = fadd fast float %1637, %1513
  %1641 = fadd fast float %1638, %1514
  %1642 = fadd fast float %1639, %1515
  %1643 = fadd fast float %1560, %1524
  %1644 = fsub fast float %1643, %1577
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fsub fast float %1645, %1524
  %1647 = fmul fast float %1646, %1538
  %1648 = fadd fast float %1647, %1524
  br label %1702

; <label>:1649                                    ; preds = %1537
  %1650 = and i32 %1540, 134217728
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1686, label %1652

; <label>:1652                                    ; preds = %1649
  %1653 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %1654 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %1655 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %1656 = fadd fast float %1653, -5.000000e-01
  %1657 = fadd fast float %1654, -5.000000e-01
  %1658 = fadd fast float %1655, -5.000000e-01
  %1659 = fmul fast float %1656, %1538
  %1660 = fmul fast float %1657, %1538
  %1661 = fmul fast float %1658, %1538
  %1662 = fadd fast float %1659, 5.000000e-01
  %1663 = fadd fast float %1660, 5.000000e-01
  %1664 = fadd fast float %1661, 5.000000e-01
  %1665 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1666 = call float @dx.op.unary.f32(i32 24, float %1514)  ; Sqrt(value)
  %1667 = call float @dx.op.unary.f32(i32 24, float %1515)  ; Sqrt(value)
  %1668 = fmul fast float %1662, 2.000000e+00
  %1669 = fsub fast float 1.000000e+00, %1668
  %1670 = fmul fast float %1669, %1665
  %1671 = fadd fast float %1670, %1668
  %1672 = fmul fast float %1671, %1665
  %1673 = fmul fast float %1663, 2.000000e+00
  %1674 = fsub fast float 1.000000e+00, %1673
  %1675 = fmul fast float %1674, %1666
  %1676 = fadd fast float %1675, %1673
  %1677 = fmul fast float %1676, %1666
  %1678 = fmul fast float %1664, 2.000000e+00
  %1679 = fsub fast float 1.000000e+00, %1678
  %1680 = fmul fast float %1679, %1667
  %1681 = fadd fast float %1680, %1678
  %1682 = fmul fast float %1681, %1667
  %1683 = fmul fast float %1672, %1672
  %1684 = fmul fast float %1677, %1677
  %1685 = fmul fast float %1682, %1682
  br label %1702

; <label>:1686                                    ; preds = %1649
  %1687 = fmul fast float %398, %398
  %1688 = fmul fast float %399, %399
  %1689 = fmul fast float %400, %400
  %1690 = fadd fast float %1687, -1.000000e+00
  %1691 = fadd fast float %1688, -1.000000e+00
  %1692 = fadd fast float %1689, -1.000000e+00
  %1693 = fmul fast float %1538, %1690
  %1694 = fmul fast float %1538, %1691
  %1695 = fmul fast float %1538, %1692
  %1696 = fadd fast float %1693, 1.000000e+00
  %1697 = fadd fast float %1694, 1.000000e+00
  %1698 = fadd fast float %1695, 1.000000e+00
  %1699 = fmul fast float %1696, %1513
  %1700 = fmul fast float %1697, %1514
  %1701 = fmul fast float %1698, %1515
  br label %1702

; <label>:1702                                    ; preds = %1686, %1652, %1543, %1499
  %1703 = phi float [ %1648, %1543 ], [ %1524, %1652 ], [ %1524, %1686 ], [ 0x3FA23C0BE0000000, %1499 ]
  %1704 = phi float [ %1640, %1543 ], [ %1683, %1652 ], [ %1699, %1686 ], [ 1.000000e+00, %1499 ]
  %1705 = phi float [ %1641, %1543 ], [ %1684, %1652 ], [ %1700, %1686 ], [ 1.000000e+00, %1499 ]
  %1706 = phi float [ %1642, %1543 ], [ %1685, %1652 ], [ %1701, %1686 ], [ 1.000000e+00, %1499 ]
  %1707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.i32 %1707, 1
  %1709 = and i32 %1708, 1
  %1710 = icmp ne i32 %1709, 0
  %1711 = add i32 %53, 356
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 32
  %1715 = icmp ne i32 %1714, 0
  %1716 = and i1 %1710, %1715
  %1717 = select i1 %1716, float 1.000000e+00, float %1704
  %1718 = select i1 %1716, float 0x3FD3333340000000, float %1705
  %1719 = select i1 %1716, float 0x3FD3333340000000, float %1706
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 32
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1796, label %1724

; <label>:1724                                    ; preds = %1702
  %1725 = add i32 %53, 108
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = add i32 %53, 428
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %1730, 0
  %1732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1732, %dx.types.Handle %105, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.ResRet.f32 %1733, 1
  %1736 = extractvalue %dx.types.ResRet.f32 %1733, 2
  %1737 = extractvalue %dx.types.ResRet.f32 %1733, 3
  %1738 = and i32 %1727, 255
  %1739 = uitofp i32 %1738 to float
  %1740 = lshr i32 %1727, 8
  %1741 = and i32 %1740, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = lshr i32 %1727, 16
  %1744 = and i32 %1743, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = fmul fast float %1745, 0x3F70101000000000
  %1747 = fmul fast float %1734, %1739
  %1748 = fadd fast float %1747, %1742
  %1749 = fmul fast float %1748, 0x3F70101000000000
  %1750 = fadd fast float %1735, -5.000000e-01
  %1751 = fadd fast float %1737, -5.000000e-01
  %1752 = fmul fast float %1750, %1746
  %1753 = fmul fast float %1751, %1746
  %1754 = fadd fast float %1752, 5.000000e-01
  %1755 = fadd fast float %1753, 5.000000e-01
  %1756 = fmul fast float %1754, 2.000000e+00
  %1757 = fadd fast float %1756, -1.000000e+00
  %1758 = fmul fast float %1755, 2.000000e+00
  %1759 = fadd fast float %1758, -1.000000e+00
  %1760 = fadd fast float %1757, %1759
  %1761 = fmul fast float %1760, 5.000000e-01
  %1762 = fsub fast float %1757, %1759
  %1763 = fmul fast float %1762, 5.000000e-01
  %1764 = call float @dx.op.unary.f32(i32 6, float %1761)  ; FAbs(value)
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = call float @dx.op.unary.f32(i32 6, float %1763)  ; FAbs(value)
  %1767 = fsub fast float %1765, %1766
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1761, float %1763, float %1767, float %1761, float %1763, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = call float @dx.op.unary.f32(i32 25, float %1768)  ; Rsqrt(value)
  %1770 = fmul fast float %1761, %1769
  %1771 = fmul fast float %1763, %1769
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 67108864
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1792, label %1776

; <label>:1776                                    ; preds = %1724
  %1777 = add i32 %53, 296
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 65535
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 65535
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = lshr i32 %1779, 16
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = fsub fast float %1749, %1787
  %1789 = fmul fast float %1788, %1781
  %1790 = fadd fast float %1789, %1785
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  br label %1792

; <label>:1792                                    ; preds = %1776, %1724
  %1793 = phi float [ %1791, %1776 ], [ %1749, %1724 ]
  %1794 = call float @dx.op.dot2.f32(i32 54, float %1770, float %1771, float %1328, float %1329)  ; Dot2(ax,ay,bx,by)
  %1795 = call float @dx.op.dot2.f32(i32 54, float %1770, float %1771, float %1330, float %1331)  ; Dot2(ax,ay,bx,by)
  br label %1796

; <label>:1796                                    ; preds = %1792, %1702
  %1797 = phi float [ %1793, %1792 ], [ 0x3FD6666660000000, %1702 ]
  %1798 = phi float [ %1794, %1792 ], [ 0.000000e+00, %1702 ]
  %1799 = phi float [ %1795, %1792 ], [ 0.000000e+00, %1702 ]
  %1800 = phi float [ %1736, %1792 ], [ 1.000000e+00, %1702 ]
  %1801 = add i32 %53, 176
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = lshr i32 %1803, 22
  %1805 = shl nuw nsw i32 %1804, 5
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 64
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1844, label %1811

; <label>:1811                                    ; preds = %1796
  %1812 = add i32 %53, 444
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = add i32 %1814, 0
  %1816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 131072
  %1820 = icmp eq i32 %1819, 0
  %1821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1816, %dx.types.Handle %105, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.ResRet.f32 %1821, 1
  %1824 = extractvalue %dx.types.ResRet.f32 %1821, 2
  %1825 = fmul fast float %381, %1822
  %1826 = fmul fast float %382, %1823
  %1827 = fmul fast float %383, %1824
  br i1 %1820, label %1834, label %1828

; <label>:1828                                    ; preds = %1811
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 0
  %1831 = fmul fast float %1830, %1825
  %1832 = fmul fast float %1830, %1826
  %1833 = fmul fast float %1830, %1827
  br label %1834

; <label>:1834                                    ; preds = %1828, %1811
  %1835 = phi float [ %1831, %1828 ], [ %1825, %1811 ]
  %1836 = phi float [ %1832, %1828 ], [ %1826, %1811 ]
  %1837 = phi float [ %1833, %1828 ], [ %1827, %1811 ]
  %1838 = fmul fast float %1835, %1806
  %1839 = select i1 %260, float %1838, float %1835
  %1840 = call float @dx.op.dot3.f32(i32 55, float %1839, float %1836, float %1837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1841 = select i1 %260, float 0.000000e+00, float %1835
  %1842 = select i1 %260, float %1840, float %1836
  %1843 = select i1 %260, float 0.000000e+00, float %1837
  br label %1844

; <label>:1844                                    ; preds = %1834, %1796
  %1845 = phi float [ %1841, %1834 ], [ 0.000000e+00, %1796 ]
  %1846 = phi float [ %1842, %1834 ], [ 0.000000e+00, %1796 ]
  %1847 = phi float [ %1843, %1834 ], [ 0.000000e+00, %1796 ]
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 10240
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1896, label %1852

; <label>:1852                                    ; preds = %1844
  %1853 = add i32 %53, 512
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = add i32 %1855, 0
  %1857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1857, %dx.types.Handle %106, float %1424, float %1425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 3
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 1048576
  %1864 = icmp ne i32 %1863, 0
  %1865 = and i32 %1862, 8192
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %1882, label %1867

; <label>:1867                                    ; preds = %1852
  %1868 = extractvalue %dx.types.ResRet.f32 %1858, 2
  %1869 = select i1 %1864, float %1868, float %1859
  %1870 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1871 = select i1 %1864, float %1870, float %1859
  %1872 = add i32 %53, 112
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 16
  %1876 = and i32 %1875, 255
  %1877 = uitofp i32 %1876 to float
  %1878 = fmul fast float %1877, 0x3F80101020000000
  %1879 = fmul fast float %1878, %1871
  %1880 = fmul fast float %1878, %1859
  %1881 = fmul fast float %1878, %1869
  br label %1882

; <label>:1882                                    ; preds = %1867, %1852
  %1883 = phi float [ %1879, %1867 ], [ 0.000000e+00, %1852 ]
  %1884 = phi float [ %1880, %1867 ], [ 0.000000e+00, %1852 ]
  %1885 = phi float [ %1881, %1867 ], [ 0.000000e+00, %1852 ]
  %1886 = and i32 %1862, 2048
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1896, label %1888

; <label>:1888                                    ; preds = %1882
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = shl i32 %1890, 4
  %1892 = and i32 %1891, 32752
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = fmul fast float %1893, %1860
  %1895 = call float @dx.op.binary.f32(i32 35, float %1894, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1896

; <label>:1896                                    ; preds = %1888, %1882, %1844
  %1897 = phi float [ %1883, %1888 ], [ %1883, %1882 ], [ 0.000000e+00, %1844 ]
  %1898 = phi float [ %1884, %1888 ], [ %1884, %1882 ], [ 0.000000e+00, %1844 ]
  %1899 = phi float [ %1885, %1888 ], [ %1885, %1882 ], [ 0.000000e+00, %1844 ]
  %1900 = phi float [ %1895, %1888 ], [ 0x3F70101020000000, %1882 ], [ 0x3F70101020000000, %1844 ]
  %1901 = add i32 %53, 112
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 255
  %1905 = uitofp i32 %1904 to float
  %1906 = lshr i32 %1903, 8
  %1907 = and i32 %1906, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = fmul fast float %1908, %1909
  %1911 = fadd fast float %1910, %1905
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  br i1 %1316, label %1914, label %1922

; <label>:1914                                    ; preds = %1896
  %1915 = fsub fast float 1.000000e+00, %1497
  %1916 = fmul fast float %1915, %1300
  %1917 = fmul fast float %1915, %1301
  %1918 = fmul fast float %1915, %1302
  %1919 = fmul fast float %1915, %1303
  %1920 = fmul fast float %1915, %1304
  %1921 = fmul fast float %1915, %1305
  br label %1922

; <label>:1922                                    ; preds = %1914, %1896
  %1923 = phi float [ %1916, %1914 ], [ %1300, %1896 ]
  %1924 = phi float [ %1917, %1914 ], [ %1301, %1896 ]
  %1925 = phi float [ %1918, %1914 ], [ %1302, %1896 ]
  %1926 = phi float [ %1919, %1914 ], [ %1303, %1896 ]
  %1927 = phi float [ %1920, %1914 ], [ %1304, %1896 ]
  %1928 = phi float [ %1921, %1914 ], [ %1305, %1896 ]
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = and i32 %1930, 3
  %1932 = icmp eq i32 %1931, 3
  br i1 %1932, label %2011, label %1933

; <label>:1933                                    ; preds = %1922
  %1934 = and i32 %1930, 16
  %1935 = icmp ne i32 %1934, 0
  %1936 = select i1 %1935, float %1497, float 0.000000e+00
  %1937 = icmp eq i32 %1931, 0
  br i1 %1937, label %1938, label %1966

; <label>:1938                                    ; preds = %1933
  %1939 = and i32 %1930, 64
  %1940 = icmp ne i32 %1939, 0
  %1941 = select i1 %1940, float %1497, float 0.000000e+00
  %1942 = fsub fast float %1717, %1923
  %1943 = fsub fast float %1718, %1924
  %1944 = fsub fast float %1719, %1925
  %1945 = fmul fast float %1936, %1942
  %1946 = fmul fast float %1936, %1943
  %1947 = fmul fast float %1936, %1944
  %1948 = fadd fast float %1945, %1923
  %1949 = fadd fast float %1946, %1924
  %1950 = fadd fast float %1947, %1925
  %1951 = fsub fast float %1703, %1309
  %1952 = fmul fast float %1936, %1951
  %1953 = fadd fast float %1952, %1309
  %1954 = fsub fast float %1845, %1926
  %1955 = fsub fast float %1846, %1927
  %1956 = fsub fast float %1847, %1928
  %1957 = fmul fast float %1941, %1954
  %1958 = fmul fast float %1941, %1955
  %1959 = fmul fast float %1941, %1956
  %1960 = fadd fast float %1957, %1926
  %1961 = fadd fast float %1958, %1927
  %1962 = fadd fast float %1959, %1928
  %1963 = fsub fast float %1913, %1314
  %1964 = fmul fast float %1936, %1963
  %1965 = fadd fast float %1964, %1314
  br label %2011

; <label>:1966                                    ; preds = %1933
  %1967 = icmp eq i32 %1931, 1
  br i1 %1967, label %1968, label %1981

; <label>:1968                                    ; preds = %1966
  %1969 = fadd fast float %1717, -1.000000e+00
  %1970 = fadd fast float %1718, -1.000000e+00
  %1971 = fadd fast float %1719, -1.000000e+00
  %1972 = fmul fast float %1936, %1969
  %1973 = fmul fast float %1936, %1970
  %1974 = fmul fast float %1936, %1971
  %1975 = fadd fast float %1972, 1.000000e+00
  %1976 = fadd fast float %1973, 1.000000e+00
  %1977 = fadd fast float %1974, 1.000000e+00
  %1978 = fmul fast float %1975, %1923
  %1979 = fmul fast float %1976, %1924
  %1980 = fmul fast float %1977, %1925
  br label %2011

; <label>:1981                                    ; preds = %1966
  %1982 = icmp eq i32 %1931, 2
  br i1 %1982, label %1983, label %2011

; <label>:1983                                    ; preds = %1981
  %1984 = call float @dx.op.unary.f32(i32 24, float %1717)  ; Sqrt(value)
  %1985 = call float @dx.op.unary.f32(i32 24, float %1718)  ; Sqrt(value)
  %1986 = call float @dx.op.unary.f32(i32 24, float %1719)  ; Sqrt(value)
  %1987 = fadd fast float %1984, -5.000000e-01
  %1988 = fadd fast float %1985, -5.000000e-01
  %1989 = fadd fast float %1986, -5.000000e-01
  %1990 = fmul fast float %1987, %1936
  %1991 = fmul fast float %1988, %1936
  %1992 = fmul fast float %1989, %1936
  %1993 = fadd fast float %1990, 5.000000e-01
  %1994 = fadd fast float %1991, 5.000000e-01
  %1995 = fadd fast float %1992, 5.000000e-01
  %1996 = fmul fast float %1993, 2.000000e+00
  %1997 = fsub fast float 1.000000e+00, %1996
  %1998 = fmul fast float %1997, %1923
  %1999 = fadd fast float %1998, %1996
  %2000 = fmul fast float %1999, %1923
  %2001 = fmul fast float %1994, 2.000000e+00
  %2002 = fsub fast float 1.000000e+00, %2001
  %2003 = fmul fast float %2002, %1924
  %2004 = fadd fast float %2003, %2001
  %2005 = fmul fast float %2004, %1924
  %2006 = fmul fast float %1995, 2.000000e+00
  %2007 = fsub fast float 1.000000e+00, %2006
  %2008 = fmul fast float %2007, %1925
  %2009 = fadd fast float %2008, %2006
  %2010 = fmul fast float %2009, %1925
  br label %2011

; <label>:2011                                    ; preds = %1983, %1981, %1968, %1938, %1922
  %2012 = phi float [ %1923, %1922 ], [ %2000, %1983 ], [ %1923, %1981 ], [ %1978, %1968 ], [ %1948, %1938 ]
  %2013 = phi float [ %1924, %1922 ], [ %2005, %1983 ], [ %1924, %1981 ], [ %1979, %1968 ], [ %1949, %1938 ]
  %2014 = phi float [ %1925, %1922 ], [ %2010, %1983 ], [ %1925, %1981 ], [ %1980, %1968 ], [ %1950, %1938 ]
  %2015 = phi float [ %1926, %1922 ], [ %1926, %1983 ], [ %1926, %1981 ], [ %1926, %1968 ], [ %1960, %1938 ]
  %2016 = phi float [ %1927, %1922 ], [ %1927, %1983 ], [ %1927, %1981 ], [ %1927, %1968 ], [ %1961, %1938 ]
  %2017 = phi float [ %1928, %1922 ], [ %1928, %1983 ], [ %1928, %1981 ], [ %1928, %1968 ], [ %1962, %1938 ]
  %2018 = phi float [ %1309, %1922 ], [ %1309, %1983 ], [ %1309, %1981 ], [ %1309, %1968 ], [ %1953, %1938 ]
  %2019 = phi float [ %1314, %1922 ], [ %1314, %1983 ], [ %1314, %1981 ], [ %1314, %1968 ], [ %1965, %1938 ]
  %2020 = and i32 %1930, 12
  %2021 = icmp eq i32 %2020, 12
  br i1 %2021, label %2128, label %2022

; <label>:2022                                    ; preds = %2011
  %2023 = and i32 %1930, 2097184
  %2024 = icmp eq i32 %2023, 2097184
  %2025 = select i1 %2024, float %1497, float 0.000000e+00
  %2026 = and i32 %1930, 4194336
  %2027 = icmp eq i32 %2026, 4194336
  %2028 = select i1 %2027, float %1497, float 0.000000e+00
  %2029 = and i32 %1930, 8388640
  %2030 = icmp eq i32 %2029, 8388640
  %2031 = select i1 %2030, float %1497, float 0.000000e+00
  %2032 = and i32 %1930, 2048
  %2033 = icmp ne i32 %2032, 0
  %2034 = select i1 %2033, float %1497, float 0.000000e+00
  %2035 = and i32 %1930, 8192
  %2036 = icmp ne i32 %2035, 0
  %2037 = select i1 %2036, float %1497, float 0.000000e+00
  %2038 = icmp eq i32 %2020, 0
  br i1 %2038, label %2039, label %2064

; <label>:2039                                    ; preds = %2022
  %2040 = fsub fast float %1798, %1298
  %2041 = fsub fast float %1799, %1299
  %2042 = fmul fast float %2025, %2040
  %2043 = fmul fast float %2025, %2041
  %2044 = fadd fast float %2042, %1298
  %2045 = fadd fast float %2043, %1299
  %2046 = fsub fast float %1800, %1312
  %2047 = fmul fast float %2028, %2046
  %2048 = fadd fast float %2047, %1312
  %2049 = fsub fast float %1797, %1311
  %2050 = fmul fast float %2031, %2049
  %2051 = fadd fast float %2050, %1311
  %2052 = fsub fast float %1900, %1313
  %2053 = fmul fast float %2034, %2052
  %2054 = fadd fast float %2053, %1313
  %2055 = fsub fast float %1897, %1306
  %2056 = fsub fast float %1898, %1307
  %2057 = fsub fast float %1899, %1308
  %2058 = fmul fast float %2037, %2055
  %2059 = fmul fast float %2037, %2056
  %2060 = fmul fast float %2037, %2057
  %2061 = fadd fast float %2058, %1306
  %2062 = fadd fast float %2059, %1307
  %2063 = fadd fast float %2060, %1308
  br label %2128

; <label>:2064                                    ; preds = %2022
  %2065 = icmp eq i32 %2020, 4
  br i1 %2065, label %2066, label %2106

; <label>:2066                                    ; preds = %2064
  %2067 = fmul fast float %2025, %1798
  %2068 = fmul fast float %2025, %1799
  %2069 = fadd fast float %2067, %1298
  %2070 = fadd fast float %2068, %1299
  %2071 = call float @dx.op.binary.f32(i32 36, float %1312, float %1800)  ; FMin(a,b)
  %2072 = fsub fast float %2071, %1312
  %2073 = fmul fast float %2072, %2028
  %2074 = fadd fast float %2073, %1312
  %2075 = fadd fast float %1797, %1311
  %2076 = fmul fast float %2075, 0x3FF337FAE0000000
  %2077 = fmul fast float %1311, %1311
  %2078 = fmul fast float %1797, %1797
  %2079 = fadd fast float %2078, %2077
  %2080 = fmul fast float %2079, 0x3FE5152B00000000
  %2081 = fmul fast float %1311, 0xBFCC1F85E0000000
  %2082 = fmul fast float %2081, %1797
  %2083 = fadd fast float %2082, 0xBFE1363700000000
  %2084 = fadd fast float %2083, %2076
  %2085 = fsub fast float %2084, %2080
  %2086 = fmul fast float %2075, 0x3FBA6F0D00000000
  %2087 = fmul fast float %2079, 0x3FD0432880000000
  %2088 = fmul fast float %1311, 0xBFEF110800000000
  %2089 = fmul fast float %2088, %1797
  %2090 = fadd fast float %2089, 1.000000e+00
  %2091 = fsub fast float %2090, %2086
  %2092 = fadd fast float %2091, %2087
  %2093 = fdiv fast float %2085, %2092
  %2094 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2095 = fsub fast float %2094, %1311
  %2096 = fmul fast float %2095, %2031
  %2097 = fadd fast float %2096, %1311
  %2098 = fmul fast float %2034, %1900
  %2099 = fadd fast float %2098, %1313
  %2100 = fmul fast float %2037, %1897
  %2101 = fmul fast float %2037, %1898
  %2102 = fmul fast float %2037, %1899
  %2103 = fadd fast float %2100, %1306
  %2104 = fadd fast float %2101, %1307
  %2105 = fadd fast float %2102, %1308
  br label %2128

; <label>:2106                                    ; preds = %2064
  %2107 = icmp eq i32 %2020, 8
  br i1 %2107, label %2108, label %2128

; <label>:2108                                    ; preds = %2106
  %2109 = fmul fast float %2025, %1798
  %2110 = fmul fast float %2025, %1799
  %2111 = fadd fast float %2109, %1298
  %2112 = fadd fast float %2110, %1299
  %2113 = call float @dx.op.binary.f32(i32 36, float %1312, float %1800)  ; FMin(a,b)
  %2114 = fsub fast float %2113, %1312
  %2115 = fmul fast float %2114, %2028
  %2116 = fadd fast float %2115, %1312
  %2117 = fsub fast float %1797, %1311
  %2118 = fmul fast float %2031, %2117
  %2119 = fadd fast float %2118, %1311
  %2120 = fmul fast float %2034, %1900
  %2121 = fadd fast float %2120, %1313
  %2122 = fmul fast float %2037, %1897
  %2123 = fmul fast float %2037, %1898
  %2124 = fmul fast float %2037, %1899
  %2125 = fadd fast float %2122, %1306
  %2126 = fadd fast float %2123, %1307
  %2127 = fadd fast float %2124, %1308
  br label %2128

; <label>:2128                                    ; preds = %2108, %2106, %2066, %2039, %2011, %1496, %1315, %1297
  %2129 = phi float [ %1298, %2011 ], [ %1298, %1496 ], [ %1298, %1297 ], [ %2111, %2108 ], [ %1298, %2106 ], [ %2069, %2066 ], [ %2044, %2039 ], [ %1298, %1315 ]
  %2130 = phi float [ %1299, %2011 ], [ %1299, %1496 ], [ %1299, %1297 ], [ %2112, %2108 ], [ %1299, %2106 ], [ %2070, %2066 ], [ %2045, %2039 ], [ %1299, %1315 ]
  %2131 = phi float [ %2012, %2011 ], [ %1300, %1496 ], [ %1300, %1297 ], [ %2012, %2108 ], [ %2012, %2106 ], [ %2012, %2066 ], [ %2012, %2039 ], [ %1300, %1315 ]
  %2132 = phi float [ %2013, %2011 ], [ %1301, %1496 ], [ %1301, %1297 ], [ %2013, %2108 ], [ %2013, %2106 ], [ %2013, %2066 ], [ %2013, %2039 ], [ %1301, %1315 ]
  %2133 = phi float [ %2014, %2011 ], [ %1302, %1496 ], [ %1302, %1297 ], [ %2014, %2108 ], [ %2014, %2106 ], [ %2014, %2066 ], [ %2014, %2039 ], [ %1302, %1315 ]
  %2134 = phi float [ %2015, %2011 ], [ %1303, %1496 ], [ %1303, %1297 ], [ %2015, %2108 ], [ %2015, %2106 ], [ %2015, %2066 ], [ %2015, %2039 ], [ %1303, %1315 ]
  %2135 = phi float [ %2016, %2011 ], [ %1304, %1496 ], [ %1304, %1297 ], [ %2016, %2108 ], [ %2016, %2106 ], [ %2016, %2066 ], [ %2016, %2039 ], [ %1304, %1315 ]
  %2136 = phi float [ %2017, %2011 ], [ %1305, %1496 ], [ %1305, %1297 ], [ %2017, %2108 ], [ %2017, %2106 ], [ %2017, %2066 ], [ %2017, %2039 ], [ %1305, %1315 ]
  %2137 = phi float [ %1306, %2011 ], [ %1306, %1496 ], [ %1306, %1297 ], [ %2125, %2108 ], [ %1306, %2106 ], [ %2103, %2066 ], [ %2061, %2039 ], [ %1306, %1315 ]
  %2138 = phi float [ %1307, %2011 ], [ %1307, %1496 ], [ %1307, %1297 ], [ %2126, %2108 ], [ %1307, %2106 ], [ %2104, %2066 ], [ %2062, %2039 ], [ %1307, %1315 ]
  %2139 = phi float [ %1308, %2011 ], [ %1308, %1496 ], [ %1308, %1297 ], [ %2127, %2108 ], [ %1308, %2106 ], [ %2105, %2066 ], [ %2063, %2039 ], [ %1308, %1315 ]
  %2140 = phi float [ %2018, %2011 ], [ %1309, %1496 ], [ %1309, %1297 ], [ %2018, %2108 ], [ %2018, %2106 ], [ %2018, %2066 ], [ %2018, %2039 ], [ %1309, %1315 ]
  %2141 = phi float [ %1311, %2011 ], [ %1311, %1496 ], [ %1311, %1297 ], [ %2119, %2108 ], [ %1311, %2106 ], [ %2097, %2066 ], [ %2051, %2039 ], [ %1311, %1315 ]
  %2142 = phi float [ %1312, %2011 ], [ %1312, %1496 ], [ %1312, %1297 ], [ %2116, %2108 ], [ %1312, %2106 ], [ %2074, %2066 ], [ %2048, %2039 ], [ %1312, %1315 ]
  %2143 = phi float [ %1313, %2011 ], [ %1313, %1496 ], [ %1313, %1297 ], [ %2121, %2108 ], [ %1313, %2106 ], [ %2099, %2066 ], [ %2054, %2039 ], [ %1313, %1315 ]
  %2144 = phi float [ %2019, %2011 ], [ %1314, %1496 ], [ %1314, %1297 ], [ %2019, %2108 ], [ %2019, %2106 ], [ %2019, %2066 ], [ %2019, %2039 ], [ %1314, %1315 ]
  br i1 %645, label %2958, label %2145

; <label>:2145                                    ; preds = %2128
  %2146 = icmp ult i32 %701, 3
  %2147 = add i32 %53, 56
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = add i32 %53, 60
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = or i32 %2152, %2149
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2958, label %2155

; <label>:2155                                    ; preds = %2145
  %2156 = and i32 %2149, 262144
  %2157 = icmp ne i32 %2156, 0
  %2158 = select i1 %2157, float %59, float 1.000000e+00
  %2159 = select i1 %2157, float %60, float 0.000000e+00
  %2160 = select i1 %2157, float %61, float 0.000000e+00
  %2161 = select i1 %2157, float %62, float 1.000000e+00
  %2162 = select i1 %2157, float %63, float %91
  %2163 = select i1 %2157, float %64, float %92
  %2164 = add i32 %53, 316
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = lshr i32 %2166, 16
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = fmul fast float %2168, 0x3F50624DE0000000
  %2170 = add i32 %53, 120
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = and i32 %2173, 255
  %2175 = lshr i32 %2172, 24
  %2176 = add i32 %53, 324
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 65535
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2178, 16
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = add i32 %53, 64
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 22
  %2187 = shl nuw nsw i32 %2186, 5
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = shl i32 %2185, 4
  %2190 = and i32 %2189, 32752
  %2191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2190)  ; LegacyF16ToF32(value)
  %2192 = lshr i32 %2185, 7
  %2193 = and i32 %2192, 32752
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2197 = fmul fast float %2196, 1.000000e+03
  %2198 = fmul fast float %2197, %529
  %2199 = call float @dx.op.unary.f32(i32 22, float %2198)  ; Frc(value)
  %2200 = fadd fast float %2199, %517
  %2201 = fmul fast float %2197, %531
  %2202 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2203 = fadd fast float %2202, %518
  %2204 = fmul fast float %2169, %2197
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fmul fast float %2205, 0x401921FB60000000
  %2207 = fadd fast float %2206, %2188
  %2208 = call float @dx.op.unary.f32(i32 13, float %2207)  ; Sin(value)
  %2209 = call float @dx.op.unary.f32(i32 12, float %2207)  ; Cos(value)
  %2210 = fsub fast float -0.000000e+00, %2208
  %2211 = fadd fast float %2162, -5.000000e-01
  %2212 = fadd fast float %2163, -5.000000e-01
  %2213 = fmul fast float %2180, %2211
  %2214 = fmul fast float %2182, %2212
  %2215 = fadd fast float %2213, 5.000000e-01
  %2216 = fadd fast float %2214, 5.000000e-01
  %2217 = fmul fast float %2191, %2215
  %2218 = fmul fast float %2194, %2216
  %2219 = fmul fast float %2209, %2217
  %2220 = call float @dx.op.tertiary.f32(i32 46, float %2210, float %2218, float %2219)  ; FMad(a,b,c)
  %2221 = fmul fast float %2208, %2217
  %2222 = call float @dx.op.tertiary.f32(i32 46, float %2209, float %2218, float %2221)  ; FMad(a,b,c)
  %2223 = fadd fast float %2200, %2220
  %2224 = fadd fast float %2203, %2222
  %2225 = icmp ugt i32 %2174, 1
  %2226 = icmp ugt i32 %2172, 33554431
  %2227 = or i1 %2226, %2225
  br i1 %2227, label %2228, label %2253

; <label>:2228                                    ; preds = %2155
  %2229 = add i32 %53, 260
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = lshr i32 %2231, 16
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = fmul fast float %2196, %2233
  %2235 = call float @dx.op.unary.f32(i32 22, float %2234)  ; Frc(value)
  %2236 = mul nuw nsw i32 %2174, %2175
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2235, %2237
  %2239 = call float @dx.op.unary.f32(i32 27, float %2238)  ; Round_ni(value)
  %2240 = fptoui float %2239 to i32
  %2241 = urem i32 %2240, %2174
  %2242 = udiv i32 %2240, %2175
  %2243 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2244 = call float @dx.op.unary.f32(i32 22, float %2224)  ; Frc(value)
  %2245 = uitofp i32 %2241 to float
  %2246 = uitofp i32 %2242 to float
  %2247 = fadd fast float %2243, %2245
  %2248 = fadd fast float %2244, %2246
  %2249 = uitofp i32 %2174 to float
  %2250 = uitofp i32 %2175 to float
  %2251 = fdiv fast float %2247, %2249
  %2252 = fdiv fast float %2248, %2250
  br label %2253

; <label>:2253                                    ; preds = %2228, %2155
  %2254 = phi float [ %2251, %2228 ], [ %2223, %2155 ]
  %2255 = phi float [ %2252, %2228 ], [ %2224, %2155 ]
  %2256 = and i32 %2149, 256
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2304, label %2258

; <label>:2258                                    ; preds = %2253
  %2259 = add i32 %53, 480
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %2261, 0
  %2263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2263, %dx.types.Handle %106, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = add i32 %53, 132
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = shl i32 %2268, 4
  %2270 = and i32 %2269, 32752
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2268, 7
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = fsub fast float 1.000000e+00, %697
  %2276 = call float @dx.op.binary.f32(i32 35, float %2275, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2277 = bitcast float %697 to i32
  %2278 = sitofp i32 %2277 to float
  %2279 = fadd fast float %2278, 0xC1CFBF8940000000
  %2280 = fmul fast float %2274, %2279
  %2281 = fadd fast float %2280, 0x41CFBF8940000000
  %2282 = fptosi float %2281 to i32
  %2283 = bitcast i32 %2282 to float
  %2284 = bitcast float %2276 to i32
  %2285 = sitofp i32 %2284 to float
  %2286 = fadd fast float %2285, 0xC1CFBF8940000000
  %2287 = fmul fast float %2286, %2274
  %2288 = fadd fast float %2287, 0x41CFBF8940000000
  %2289 = fptosi float %2288 to i32
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2283, %2271
  %2292 = fmul fast float %2290, %2271
  %2293 = fsub fast float %2276, %2291
  %2294 = fadd fast float %2292, %2276
  %2295 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2296 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2297 = fsub fast float %2265, %2295
  %2298 = fsub fast float %2296, %2295
  %2299 = bitcast float %2298 to i32
  %2300 = sub nsw i32 2129859010, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2301, %2297
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  br label %2304

; <label>:2304                                    ; preds = %2258, %2253
  %2305 = phi float [ %2303, %2258 ], [ %697, %2253 ]
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 128
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2326, label %2310

; <label>:2310                                    ; preds = %2304
  %2311 = add i32 %53, 464
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = add i32 %2313, 0
  %2315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2315, %dx.types.Handle %106, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 524288
  %2321 = icmp ne i32 %2320, 0
  %2322 = fcmp fast ogt float %2317, 0x3FE0101020000000
  %2323 = select i1 %2322, float 1.000000e+00, float 0.000000e+00
  %2324 = select i1 %2321, float %2323, float %2317
  %2325 = fmul fast float %2324, %2305
  br label %2326

; <label>:2326                                    ; preds = %2310, %2304
  %2327 = phi float [ %2325, %2310 ], [ %2305, %2304 ]
  %2328 = fcmp fast ult float %2327, 0x3F70101020000000
  br i1 %2328, label %2958, label %2329

; <label>:2329                                    ; preds = %2326
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 16
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2532, label %2334

; <label>:2334                                    ; preds = %2329
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = add i32 %53, 416
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %2339, 0
  %2341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2341, %dx.types.Handle %105, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = extractvalue %dx.types.ResRet.f32 %2342, 3
  %2347 = and i32 %2336, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2336, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2346, %2348
  %2353 = fadd fast float %2352, %2351
  %2354 = fmul fast float %2353, 0x3F70101000000000
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 512
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2367, label %2359

; <label>:2359                                    ; preds = %2334
  %2360 = add i32 %53, 500
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %106, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  br label %2367

; <label>:2367                                    ; preds = %2359, %2334
  %2368 = phi float [ %2366, %2359 ], [ 1.000000e+00, %2334 ]
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 33554432
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2479, label %2373

; <label>:2373                                    ; preds = %2367
  %2374 = add i32 %53, 256
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 65535
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = lshr i32 %2376, 16
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = add i32 %53, 260
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 65535
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = lshr i32 %2387, 24
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = and i32 %2387, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = lshr i32 %2387, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = lshr i32 %2387, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = add i32 %53, 252
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = lshr i32 %2404, 24
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = and i32 %2404, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = lshr i32 %2404, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = lshr i32 %2404, 16
  %2416 = and i32 %2415, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = bitcast float %2343 to i32
  %2420 = ashr i32 %2419, 1
  %2421 = sub nsw i32 1597463174, %2420
  %2422 = bitcast i32 %2421 to float
  %2423 = fmul fast float %2343, 5.000000e-01
  %2424 = fmul fast float %2422, %2422
  %2425 = fmul fast float %2424, %2423
  %2426 = fsub fast float 1.500000e+00, %2425
  %2427 = fmul fast float %2422, %2343
  %2428 = fmul fast float %2427, %2426
  %2429 = bitcast float %2344 to i32
  %2430 = ashr i32 %2429, 1
  %2431 = sub nsw i32 1597463174, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = fmul fast float %2344, 5.000000e-01
  %2434 = fmul fast float %2432, %2432
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float 1.500000e+00, %2435
  %2437 = fmul fast float %2432, %2344
  %2438 = fmul fast float %2437, %2436
  %2439 = bitcast float %2345 to i32
  %2440 = ashr i32 %2439, 1
  %2441 = sub nsw i32 1597463174, %2440
  %2442 = bitcast i32 %2441 to float
  %2443 = fmul fast float %2345, 5.000000e-01
  %2444 = fmul fast float %2442, %2442
  %2445 = fmul fast float %2444, %2443
  %2446 = fsub fast float 1.500000e+00, %2445
  %2447 = fmul fast float %2442, %2345
  %2448 = fmul fast float %2447, %2446
  %2449 = fsub fast float %2428, %2410
  %2450 = fsub fast float %2438, %2414
  %2451 = fsub fast float %2448, %2418
  %2452 = fmul fast float %2449, %2378
  %2453 = fmul fast float %2450, %2380
  %2454 = fmul fast float %2451, %2385
  %2455 = fadd fast float %2452, %2393
  %2456 = fadd fast float %2453, %2397
  %2457 = fadd fast float %2454, %2401
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2460 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2461 = fmul fast float %2458, %2458
  %2462 = fmul fast float %2459, %2459
  %2463 = fmul fast float %2460, %2460
  %2464 = fsub fast float %2461, %2343
  %2465 = fsub fast float %2462, %2344
  %2466 = fsub fast float %2463, %2345
  %2467 = fmul fast float %2464, %2368
  %2468 = fmul fast float %2465, %2368
  %2469 = fmul fast float %2466, %2368
  %2470 = fadd fast float %2467, %2343
  %2471 = fadd fast float %2468, %2344
  %2472 = fadd fast float %2469, %2345
  %2473 = fadd fast float %2390, %2354
  %2474 = fsub fast float %2473, %2407
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = fsub fast float %2475, %2354
  %2477 = fmul fast float %2476, %2368
  %2478 = fadd fast float %2477, %2354
  br label %2532

; <label>:2479                                    ; preds = %2367
  %2480 = and i32 %2370, 134217728
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2516, label %2482

; <label>:2482                                    ; preds = %2479
  %2483 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %2485 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fadd fast float %2485, -5.000000e-01
  %2489 = fmul fast float %2486, %2368
  %2490 = fmul fast float %2487, %2368
  %2491 = fmul fast float %2488, %2368
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2344)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %2345)  ; Sqrt(value)
  %2498 = fmul fast float %2492, 2.000000e+00
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2499, %2495
  %2501 = fadd fast float %2500, %2498
  %2502 = fmul fast float %2501, %2495
  %2503 = fmul fast float %2493, 2.000000e+00
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2496
  %2506 = fadd fast float %2505, %2503
  %2507 = fmul fast float %2506, %2496
  %2508 = fmul fast float %2494, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2497
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2497
  %2513 = fmul fast float %2502, %2502
  %2514 = fmul fast float %2507, %2507
  %2515 = fmul fast float %2512, %2512
  br label %2532

; <label>:2516                                    ; preds = %2479
  %2517 = fmul fast float %505, %505
  %2518 = fmul fast float %506, %506
  %2519 = fmul fast float %507, %507
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fadd fast float %2519, -1.000000e+00
  %2523 = fmul fast float %2368, %2520
  %2524 = fmul fast float %2368, %2521
  %2525 = fmul fast float %2368, %2522
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fmul fast float %2526, %2343
  %2530 = fmul fast float %2527, %2344
  %2531 = fmul fast float %2528, %2345
  br label %2532

; <label>:2532                                    ; preds = %2516, %2482, %2373, %2329
  %2533 = phi float [ %2478, %2373 ], [ %2354, %2482 ], [ %2354, %2516 ], [ 0x3FA23C0BE0000000, %2329 ]
  %2534 = phi float [ %2470, %2373 ], [ %2513, %2482 ], [ %2529, %2516 ], [ 1.000000e+00, %2329 ]
  %2535 = phi float [ %2471, %2373 ], [ %2514, %2482 ], [ %2530, %2516 ], [ 1.000000e+00, %2329 ]
  %2536 = phi float [ %2472, %2373 ], [ %2515, %2482 ], [ %2531, %2516 ], [ 1.000000e+00, %2329 ]
  %2537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.i32 %2537, 1
  %2539 = and i32 %2538, 1
  %2540 = icmp ne i32 %2539, 0
  %2541 = add i32 %53, 356
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 32
  %2545 = icmp ne i32 %2544, 0
  %2546 = and i1 %2540, %2545
  %2547 = select i1 %2546, float 1.000000e+00, float %2534
  %2548 = select i1 %2546, float 0x3FD3333340000000, float %2535
  %2549 = select i1 %2546, float 0x3FD3333340000000, float %2536
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 32
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2626, label %2554

; <label>:2554                                    ; preds = %2532
  %2555 = add i32 %53, 124
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = add i32 %53, 432
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = add i32 %2560, 0
  %2562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2562, %dx.types.Handle %105, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.ResRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.ResRet.f32 %2563, 2
  %2567 = extractvalue %dx.types.ResRet.f32 %2563, 3
  %2568 = and i32 %2557, 255
  %2569 = uitofp i32 %2568 to float
  %2570 = lshr i32 %2557, 8
  %2571 = and i32 %2570, 255
  %2572 = uitofp i32 %2571 to float
  %2573 = lshr i32 %2557, 16
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = fmul fast float %2575, 0x3F70101000000000
  %2577 = fmul fast float %2564, %2569
  %2578 = fadd fast float %2577, %2572
  %2579 = fmul fast float %2578, 0x3F70101000000000
  %2580 = fadd fast float %2565, -5.000000e-01
  %2581 = fadd fast float %2567, -5.000000e-01
  %2582 = fmul fast float %2580, %2576
  %2583 = fmul fast float %2581, %2576
  %2584 = fadd fast float %2582, 5.000000e-01
  %2585 = fadd fast float %2583, 5.000000e-01
  %2586 = fmul fast float %2584, 2.000000e+00
  %2587 = fadd fast float %2586, -1.000000e+00
  %2588 = fmul fast float %2585, 2.000000e+00
  %2589 = fadd fast float %2588, -1.000000e+00
  %2590 = fadd fast float %2587, %2589
  %2591 = fmul fast float %2590, 5.000000e-01
  %2592 = fsub fast float %2587, %2589
  %2593 = fmul fast float %2592, 5.000000e-01
  %2594 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = call float @dx.op.unary.f32(i32 6, float %2593)  ; FAbs(value)
  %2597 = fsub fast float %2595, %2596
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2593, float %2597, float %2591, float %2593, float %2597)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = call float @dx.op.unary.f32(i32 25, float %2598)  ; Rsqrt(value)
  %2600 = fmul fast float %2591, %2599
  %2601 = fmul fast float %2593, %2599
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 67108864
  %2605 = icmp eq i32 %2604, 0
  br i1 %2605, label %2622, label %2606

; <label>:2606                                    ; preds = %2554
  %2607 = add i32 %53, 312
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 65535
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 65535
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = lshr i32 %2609, 16
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = fsub fast float %2579, %2617
  %2619 = fmul fast float %2618, %2611
  %2620 = fadd fast float %2619, %2615
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  br label %2622

; <label>:2622                                    ; preds = %2606, %2554
  %2623 = phi float [ %2621, %2606 ], [ %2579, %2554 ]
  %2624 = call float @dx.op.dot2.f32(i32 54, float %2600, float %2601, float %2158, float %2159)  ; Dot2(ax,ay,bx,by)
  %2625 = call float @dx.op.dot2.f32(i32 54, float %2600, float %2601, float %2160, float %2161)  ; Dot2(ax,ay,bx,by)
  br label %2626

; <label>:2626                                    ; preds = %2622, %2532
  %2627 = phi float [ %2623, %2622 ], [ 0x3FD6666660000000, %2532 ]
  %2628 = phi float [ %2624, %2622 ], [ 0.000000e+00, %2532 ]
  %2629 = phi float [ %2625, %2622 ], [ 0.000000e+00, %2532 ]
  %2630 = phi float [ %2566, %2622 ], [ 1.000000e+00, %2532 ]
  %2631 = add i32 %53, 192
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 22
  %2635 = shl nuw nsw i32 %2634, 5
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 64
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2674, label %2641

; <label>:2641                                    ; preds = %2626
  %2642 = add i32 %53, 448
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %2644, 0
  %2646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 131072
  %2650 = icmp eq i32 %2649, 0
  %2651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2646, %dx.types.Handle %105, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.ResRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.ResRet.f32 %2651, 2
  %2655 = fmul fast float %488, %2652
  %2656 = fmul fast float %489, %2653
  %2657 = fmul fast float %490, %2654
  br i1 %2650, label %2664, label %2658

; <label>:2658                                    ; preds = %2641
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = fmul fast float %2660, %2655
  %2662 = fmul fast float %2660, %2656
  %2663 = fmul fast float %2660, %2657
  br label %2664

; <label>:2664                                    ; preds = %2658, %2641
  %2665 = phi float [ %2661, %2658 ], [ %2655, %2641 ]
  %2666 = phi float [ %2662, %2658 ], [ %2656, %2641 ]
  %2667 = phi float [ %2663, %2658 ], [ %2657, %2641 ]
  %2668 = fmul fast float %2665, %2636
  %2669 = select i1 %260, float %2668, float %2665
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2666, float %2667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = select i1 %260, float 0.000000e+00, float %2665
  %2672 = select i1 %260, float %2670, float %2666
  %2673 = select i1 %260, float 0.000000e+00, float %2667
  br label %2674

; <label>:2674                                    ; preds = %2664, %2626
  %2675 = phi float [ %2671, %2664 ], [ 0.000000e+00, %2626 ]
  %2676 = phi float [ %2672, %2664 ], [ 0.000000e+00, %2626 ]
  %2677 = phi float [ %2673, %2664 ], [ 0.000000e+00, %2626 ]
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 10240
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2726, label %2682

; <label>:2682                                    ; preds = %2674
  %2683 = add i32 %53, 516
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %106, float %2254, float %2255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 3
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 1048576
  %2694 = icmp ne i32 %2693, 0
  %2695 = and i32 %2692, 8192
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2712, label %2697

; <label>:2697                                    ; preds = %2682
  %2698 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2699 = select i1 %2694, float %2698, float %2689
  %2700 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2701 = select i1 %2694, float %2700, float %2689
  %2702 = add i32 %53, 128
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = lshr i32 %2704, 16
  %2706 = and i32 %2705, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2707, 0x3F80101020000000
  %2709 = fmul fast float %2708, %2701
  %2710 = fmul fast float %2708, %2689
  %2711 = fmul fast float %2708, %2699
  br label %2712

; <label>:2712                                    ; preds = %2697, %2682
  %2713 = phi float [ %2709, %2697 ], [ 0.000000e+00, %2682 ]
  %2714 = phi float [ %2710, %2697 ], [ 0.000000e+00, %2682 ]
  %2715 = phi float [ %2711, %2697 ], [ 0.000000e+00, %2682 ]
  %2716 = and i32 %2692, 2048
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2726, label %2718

; <label>:2718                                    ; preds = %2712
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = shl i32 %2720, 4
  %2722 = and i32 %2721, 32752
  %2723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2722)  ; LegacyF16ToF32(value)
  %2724 = fmul fast float %2723, %2690
  %2725 = call float @dx.op.binary.f32(i32 35, float %2724, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2726

; <label>:2726                                    ; preds = %2718, %2712, %2674
  %2727 = phi float [ %2713, %2718 ], [ %2713, %2712 ], [ 0.000000e+00, %2674 ]
  %2728 = phi float [ %2714, %2718 ], [ %2714, %2712 ], [ 0.000000e+00, %2674 ]
  %2729 = phi float [ %2715, %2718 ], [ %2715, %2712 ], [ 0.000000e+00, %2674 ]
  %2730 = phi float [ %2725, %2718 ], [ 0x3F70101020000000, %2712 ], [ 0x3F70101020000000, %2674 ]
  %2731 = add i32 %53, 128
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = lshr i32 %2733, 8
  %2737 = and i32 %2736, 255
  %2738 = uitofp i32 %2737 to float
  %2739 = call float @dx.op.dot3.f32(i32 55, float %2547, float %2548, float %2549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2740 = fmul fast float %2738, %2739
  %2741 = fadd fast float %2740, %2735
  %2742 = fmul fast float %2741, 0x3F70101020000000
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  br i1 %2146, label %2744, label %2752

; <label>:2744                                    ; preds = %2726
  %2745 = fsub fast float 1.000000e+00, %2327
  %2746 = fmul fast float %2745, %2131
  %2747 = fmul fast float %2745, %2132
  %2748 = fmul fast float %2745, %2133
  %2749 = fmul fast float %2745, %2134
  %2750 = fmul fast float %2745, %2135
  %2751 = fmul fast float %2745, %2136
  br label %2752

; <label>:2752                                    ; preds = %2744, %2726
  %2753 = phi float [ %2746, %2744 ], [ %2131, %2726 ]
  %2754 = phi float [ %2747, %2744 ], [ %2132, %2726 ]
  %2755 = phi float [ %2748, %2744 ], [ %2133, %2726 ]
  %2756 = phi float [ %2749, %2744 ], [ %2134, %2726 ]
  %2757 = phi float [ %2750, %2744 ], [ %2135, %2726 ]
  %2758 = phi float [ %2751, %2744 ], [ %2136, %2726 ]
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 3
  %2762 = icmp eq i32 %2761, 3
  br i1 %2762, label %2841, label %2763

; <label>:2763                                    ; preds = %2752
  %2764 = and i32 %2760, 16
  %2765 = icmp ne i32 %2764, 0
  %2766 = select i1 %2765, float %2327, float 0.000000e+00
  %2767 = icmp eq i32 %2761, 0
  br i1 %2767, label %2768, label %2796

; <label>:2768                                    ; preds = %2763
  %2769 = and i32 %2760, 64
  %2770 = icmp ne i32 %2769, 0
  %2771 = select i1 %2770, float %2327, float 0.000000e+00
  %2772 = fsub fast float %2547, %2753
  %2773 = fsub fast float %2548, %2754
  %2774 = fsub fast float %2549, %2755
  %2775 = fmul fast float %2766, %2772
  %2776 = fmul fast float %2766, %2773
  %2777 = fmul fast float %2766, %2774
  %2778 = fadd fast float %2775, %2753
  %2779 = fadd fast float %2776, %2754
  %2780 = fadd fast float %2777, %2755
  %2781 = fsub fast float %2533, %2140
  %2782 = fmul fast float %2766, %2781
  %2783 = fadd fast float %2782, %2140
  %2784 = fsub fast float %2675, %2756
  %2785 = fsub fast float %2676, %2757
  %2786 = fsub fast float %2677, %2758
  %2787 = fmul fast float %2771, %2784
  %2788 = fmul fast float %2771, %2785
  %2789 = fmul fast float %2771, %2786
  %2790 = fadd fast float %2787, %2756
  %2791 = fadd fast float %2788, %2757
  %2792 = fadd fast float %2789, %2758
  %2793 = fsub fast float %2743, %2144
  %2794 = fmul fast float %2766, %2793
  %2795 = fadd fast float %2794, %2144
  br label %2841

; <label>:2796                                    ; preds = %2763
  %2797 = icmp eq i32 %2761, 1
  br i1 %2797, label %2798, label %2811

; <label>:2798                                    ; preds = %2796
  %2799 = fadd fast float %2547, -1.000000e+00
  %2800 = fadd fast float %2548, -1.000000e+00
  %2801 = fadd fast float %2549, -1.000000e+00
  %2802 = fmul fast float %2766, %2799
  %2803 = fmul fast float %2766, %2800
  %2804 = fmul fast float %2766, %2801
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fadd fast float %2803, 1.000000e+00
  %2807 = fadd fast float %2804, 1.000000e+00
  %2808 = fmul fast float %2805, %2753
  %2809 = fmul fast float %2806, %2754
  %2810 = fmul fast float %2807, %2755
  br label %2841

; <label>:2811                                    ; preds = %2796
  %2812 = icmp eq i32 %2761, 2
  br i1 %2812, label %2813, label %2841

; <label>:2813                                    ; preds = %2811
  %2814 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2815 = call float @dx.op.unary.f32(i32 24, float %2548)  ; Sqrt(value)
  %2816 = call float @dx.op.unary.f32(i32 24, float %2549)  ; Sqrt(value)
  %2817 = fadd fast float %2814, -5.000000e-01
  %2818 = fadd fast float %2815, -5.000000e-01
  %2819 = fadd fast float %2816, -5.000000e-01
  %2820 = fmul fast float %2817, %2766
  %2821 = fmul fast float %2818, %2766
  %2822 = fmul fast float %2819, %2766
  %2823 = fadd fast float %2820, 5.000000e-01
  %2824 = fadd fast float %2821, 5.000000e-01
  %2825 = fadd fast float %2822, 5.000000e-01
  %2826 = fmul fast float %2823, 2.000000e+00
  %2827 = fsub fast float 1.000000e+00, %2826
  %2828 = fmul fast float %2827, %2753
  %2829 = fadd fast float %2828, %2826
  %2830 = fmul fast float %2829, %2753
  %2831 = fmul fast float %2824, 2.000000e+00
  %2832 = fsub fast float 1.000000e+00, %2831
  %2833 = fmul fast float %2832, %2754
  %2834 = fadd fast float %2833, %2831
  %2835 = fmul fast float %2834, %2754
  %2836 = fmul fast float %2825, 2.000000e+00
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = fmul fast float %2837, %2755
  %2839 = fadd fast float %2838, %2836
  %2840 = fmul fast float %2839, %2755
  br label %2841

; <label>:2841                                    ; preds = %2813, %2811, %2798, %2768, %2752
  %2842 = phi float [ %2753, %2752 ], [ %2830, %2813 ], [ %2753, %2811 ], [ %2808, %2798 ], [ %2778, %2768 ]
  %2843 = phi float [ %2754, %2752 ], [ %2835, %2813 ], [ %2754, %2811 ], [ %2809, %2798 ], [ %2779, %2768 ]
  %2844 = phi float [ %2755, %2752 ], [ %2840, %2813 ], [ %2755, %2811 ], [ %2810, %2798 ], [ %2780, %2768 ]
  %2845 = phi float [ %2756, %2752 ], [ %2756, %2813 ], [ %2756, %2811 ], [ %2756, %2798 ], [ %2790, %2768 ]
  %2846 = phi float [ %2757, %2752 ], [ %2757, %2813 ], [ %2757, %2811 ], [ %2757, %2798 ], [ %2791, %2768 ]
  %2847 = phi float [ %2758, %2752 ], [ %2758, %2813 ], [ %2758, %2811 ], [ %2758, %2798 ], [ %2792, %2768 ]
  %2848 = phi float [ %2140, %2752 ], [ %2140, %2813 ], [ %2140, %2811 ], [ %2140, %2798 ], [ %2783, %2768 ]
  %2849 = phi float [ %2144, %2752 ], [ %2144, %2813 ], [ %2144, %2811 ], [ %2144, %2798 ], [ %2795, %2768 ]
  %2850 = and i32 %2760, 12
  %2851 = icmp eq i32 %2850, 12
  br i1 %2851, label %2958, label %2852

; <label>:2852                                    ; preds = %2841
  %2853 = and i32 %2760, 2097184
  %2854 = icmp eq i32 %2853, 2097184
  %2855 = select i1 %2854, float %2327, float 0.000000e+00
  %2856 = and i32 %2760, 4194336
  %2857 = icmp eq i32 %2856, 4194336
  %2858 = select i1 %2857, float %2327, float 0.000000e+00
  %2859 = and i32 %2760, 8388640
  %2860 = icmp eq i32 %2859, 8388640
  %2861 = select i1 %2860, float %2327, float 0.000000e+00
  %2862 = and i32 %2760, 2048
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2327, float 0.000000e+00
  %2865 = and i32 %2760, 8192
  %2866 = icmp ne i32 %2865, 0
  %2867 = select i1 %2866, float %2327, float 0.000000e+00
  %2868 = icmp eq i32 %2850, 0
  br i1 %2868, label %2869, label %2894

; <label>:2869                                    ; preds = %2852
  %2870 = fsub fast float %2628, %2129
  %2871 = fsub fast float %2629, %2130
  %2872 = fmul fast float %2855, %2870
  %2873 = fmul fast float %2855, %2871
  %2874 = fadd fast float %2872, %2129
  %2875 = fadd fast float %2873, %2130
  %2876 = fsub fast float %2630, %2142
  %2877 = fmul fast float %2858, %2876
  %2878 = fadd fast float %2877, %2142
  %2879 = fsub fast float %2627, %2141
  %2880 = fmul fast float %2861, %2879
  %2881 = fadd fast float %2880, %2141
  %2882 = fsub fast float %2730, %2143
  %2883 = fmul fast float %2864, %2882
  %2884 = fadd fast float %2883, %2143
  %2885 = fsub fast float %2727, %2137
  %2886 = fsub fast float %2728, %2138
  %2887 = fsub fast float %2729, %2139
  %2888 = fmul fast float %2867, %2885
  %2889 = fmul fast float %2867, %2886
  %2890 = fmul fast float %2867, %2887
  %2891 = fadd fast float %2888, %2137
  %2892 = fadd fast float %2889, %2138
  %2893 = fadd fast float %2890, %2139
  br label %2958

; <label>:2894                                    ; preds = %2852
  %2895 = icmp eq i32 %2850, 4
  br i1 %2895, label %2896, label %2936

; <label>:2896                                    ; preds = %2894
  %2897 = fmul fast float %2855, %2628
  %2898 = fmul fast float %2855, %2629
  %2899 = fadd fast float %2897, %2129
  %2900 = fadd fast float %2898, %2130
  %2901 = call float @dx.op.binary.f32(i32 36, float %2142, float %2630)  ; FMin(a,b)
  %2902 = fsub fast float %2901, %2142
  %2903 = fmul fast float %2902, %2858
  %2904 = fadd fast float %2903, %2142
  %2905 = fadd fast float %2627, %2141
  %2906 = fmul fast float %2905, 0x3FF337FAE0000000
  %2907 = fmul fast float %2141, %2141
  %2908 = fmul fast float %2627, %2627
  %2909 = fadd fast float %2908, %2907
  %2910 = fmul fast float %2909, 0x3FE5152B00000000
  %2911 = fmul fast float %2141, 0xBFCC1F85E0000000
  %2912 = fmul fast float %2911, %2627
  %2913 = fadd fast float %2912, 0xBFE1363700000000
  %2914 = fadd fast float %2913, %2906
  %2915 = fsub fast float %2914, %2910
  %2916 = fmul fast float %2905, 0x3FBA6F0D00000000
  %2917 = fmul fast float %2909, 0x3FD0432880000000
  %2918 = fmul fast float %2141, 0xBFEF110800000000
  %2919 = fmul fast float %2918, %2627
  %2920 = fadd fast float %2919, 1.000000e+00
  %2921 = fsub fast float %2920, %2916
  %2922 = fadd fast float %2921, %2917
  %2923 = fdiv fast float %2915, %2922
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = fsub fast float %2924, %2141
  %2926 = fmul fast float %2925, %2861
  %2927 = fadd fast float %2926, %2141
  %2928 = fmul fast float %2864, %2730
  %2929 = fadd fast float %2928, %2143
  %2930 = fmul fast float %2867, %2727
  %2931 = fmul fast float %2867, %2728
  %2932 = fmul fast float %2867, %2729
  %2933 = fadd fast float %2930, %2137
  %2934 = fadd fast float %2931, %2138
  %2935 = fadd fast float %2932, %2139
  br label %2958

; <label>:2936                                    ; preds = %2894
  %2937 = icmp eq i32 %2850, 8
  br i1 %2937, label %2938, label %2958

; <label>:2938                                    ; preds = %2936
  %2939 = fmul fast float %2855, %2628
  %2940 = fmul fast float %2855, %2629
  %2941 = fadd fast float %2939, %2129
  %2942 = fadd fast float %2940, %2130
  %2943 = call float @dx.op.binary.f32(i32 36, float %2142, float %2630)  ; FMin(a,b)
  %2944 = fsub fast float %2943, %2142
  %2945 = fmul fast float %2944, %2858
  %2946 = fadd fast float %2945, %2142
  %2947 = fsub fast float %2627, %2141
  %2948 = fmul fast float %2861, %2947
  %2949 = fadd fast float %2948, %2141
  %2950 = fmul fast float %2864, %2730
  %2951 = fadd fast float %2950, %2143
  %2952 = fmul fast float %2867, %2727
  %2953 = fmul fast float %2867, %2728
  %2954 = fmul fast float %2867, %2729
  %2955 = fadd fast float %2952, %2137
  %2956 = fadd fast float %2953, %2138
  %2957 = fadd fast float %2954, %2139
  br label %2958

; <label>:2958                                    ; preds = %2938, %2936, %2896, %2869, %2841, %2326, %2145, %2128
  %2959 = phi float [ %2129, %2841 ], [ %2129, %2326 ], [ %2129, %2128 ], [ %2941, %2938 ], [ %2129, %2936 ], [ %2899, %2896 ], [ %2874, %2869 ], [ %2129, %2145 ]
  %2960 = phi float [ %2130, %2841 ], [ %2130, %2326 ], [ %2130, %2128 ], [ %2942, %2938 ], [ %2130, %2936 ], [ %2900, %2896 ], [ %2875, %2869 ], [ %2130, %2145 ]
  %2961 = phi float [ %2842, %2841 ], [ %2131, %2326 ], [ %2131, %2128 ], [ %2842, %2938 ], [ %2842, %2936 ], [ %2842, %2896 ], [ %2842, %2869 ], [ %2131, %2145 ]
  %2962 = phi float [ %2843, %2841 ], [ %2132, %2326 ], [ %2132, %2128 ], [ %2843, %2938 ], [ %2843, %2936 ], [ %2843, %2896 ], [ %2843, %2869 ], [ %2132, %2145 ]
  %2963 = phi float [ %2844, %2841 ], [ %2133, %2326 ], [ %2133, %2128 ], [ %2844, %2938 ], [ %2844, %2936 ], [ %2844, %2896 ], [ %2844, %2869 ], [ %2133, %2145 ]
  %2964 = phi float [ %2845, %2841 ], [ %2134, %2326 ], [ %2134, %2128 ], [ %2845, %2938 ], [ %2845, %2936 ], [ %2845, %2896 ], [ %2845, %2869 ], [ %2134, %2145 ]
  %2965 = phi float [ %2846, %2841 ], [ %2135, %2326 ], [ %2135, %2128 ], [ %2846, %2938 ], [ %2846, %2936 ], [ %2846, %2896 ], [ %2846, %2869 ], [ %2135, %2145 ]
  %2966 = phi float [ %2847, %2841 ], [ %2136, %2326 ], [ %2136, %2128 ], [ %2847, %2938 ], [ %2847, %2936 ], [ %2847, %2896 ], [ %2847, %2869 ], [ %2136, %2145 ]
  %2967 = phi float [ %2137, %2841 ], [ %2137, %2326 ], [ %2137, %2128 ], [ %2955, %2938 ], [ %2137, %2936 ], [ %2933, %2896 ], [ %2891, %2869 ], [ %2137, %2145 ]
  %2968 = phi float [ %2138, %2841 ], [ %2138, %2326 ], [ %2138, %2128 ], [ %2956, %2938 ], [ %2138, %2936 ], [ %2934, %2896 ], [ %2892, %2869 ], [ %2138, %2145 ]
  %2969 = phi float [ %2139, %2841 ], [ %2139, %2326 ], [ %2139, %2128 ], [ %2957, %2938 ], [ %2139, %2936 ], [ %2935, %2896 ], [ %2893, %2869 ], [ %2139, %2145 ]
  %2970 = phi float [ %2848, %2841 ], [ %2140, %2326 ], [ %2140, %2128 ], [ %2848, %2938 ], [ %2848, %2936 ], [ %2848, %2896 ], [ %2848, %2869 ], [ %2140, %2145 ]
  %2971 = phi float [ %2141, %2841 ], [ %2141, %2326 ], [ %2141, %2128 ], [ %2949, %2938 ], [ %2141, %2936 ], [ %2927, %2896 ], [ %2881, %2869 ], [ %2141, %2145 ]
  %2972 = phi float [ %2142, %2841 ], [ %2142, %2326 ], [ %2142, %2128 ], [ %2946, %2938 ], [ %2142, %2936 ], [ %2904, %2896 ], [ %2878, %2869 ], [ %2142, %2145 ]
  %2973 = phi float [ %2143, %2841 ], [ %2143, %2326 ], [ %2143, %2128 ], [ %2951, %2938 ], [ %2143, %2936 ], [ %2929, %2896 ], [ %2884, %2869 ], [ %2143, %2145 ]
  %2974 = phi float [ %2849, %2841 ], [ %2144, %2326 ], [ %2144, %2128 ], [ %2849, %2938 ], [ %2849, %2936 ], [ %2849, %2896 ], [ %2849, %2869 ], [ %2144, %2145 ]
  br i1 %647, label %3788, label %2975

; <label>:2975                                    ; preds = %2958
  %2976 = icmp ult i32 %701, 4
  %2977 = add i32 %53, 72
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %53, 76
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = or i32 %2982, %2979
  %2984 = icmp eq i32 %2983, 0
  br i1 %2984, label %3788, label %2985

; <label>:2985                                    ; preds = %2975
  %2986 = and i32 %2979, 262144
  %2987 = icmp ne i32 %2986, 0
  %2988 = select i1 %2987, float %59, float 1.000000e+00
  %2989 = select i1 %2987, float %60, float 0.000000e+00
  %2990 = select i1 %2987, float %61, float 0.000000e+00
  %2991 = select i1 %2987, float %62, float 1.000000e+00
  %2992 = select i1 %2987, float %63, float %91
  %2993 = select i1 %2987, float %64, float %92
  %2994 = add i32 %53, 332
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 16
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = fmul fast float %2998, 0x3F50624DE0000000
  %3000 = add i32 %53, 136
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 16
  %3004 = and i32 %3003, 255
  %3005 = lshr i32 %3002, 24
  %3006 = add i32 %53, 340
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 65535
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = lshr i32 %3008, 16
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = add i32 %53, 80
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 22
  %3017 = shl nuw nsw i32 %3016, 5
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = shl i32 %3015, 4
  %3020 = and i32 %3019, 32752
  %3021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3020)  ; LegacyF16ToF32(value)
  %3022 = lshr i32 %3015, 7
  %3023 = and i32 %3022, 32752
  %3024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3023)  ; LegacyF16ToF32(value)
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 3
  %3027 = fmul fast float %3026, 1.000000e+03
  %3028 = fmul fast float %3027, %636
  %3029 = call float @dx.op.unary.f32(i32 22, float %3028)  ; Frc(value)
  %3030 = fadd fast float %3029, %624
  %3031 = fmul fast float %3027, %638
  %3032 = call float @dx.op.unary.f32(i32 22, float %3031)  ; Frc(value)
  %3033 = fadd fast float %3032, %625
  %3034 = fmul fast float %2999, %3027
  %3035 = call float @dx.op.unary.f32(i32 22, float %3034)  ; Frc(value)
  %3036 = fmul fast float %3035, 0x401921FB60000000
  %3037 = fadd fast float %3036, %3018
  %3038 = call float @dx.op.unary.f32(i32 13, float %3037)  ; Sin(value)
  %3039 = call float @dx.op.unary.f32(i32 12, float %3037)  ; Cos(value)
  %3040 = fsub fast float -0.000000e+00, %3038
  %3041 = fadd fast float %2992, -5.000000e-01
  %3042 = fadd fast float %2993, -5.000000e-01
  %3043 = fmul fast float %3010, %3041
  %3044 = fmul fast float %3012, %3042
  %3045 = fadd fast float %3043, 5.000000e-01
  %3046 = fadd fast float %3044, 5.000000e-01
  %3047 = fmul fast float %3021, %3045
  %3048 = fmul fast float %3024, %3046
  %3049 = fmul fast float %3039, %3047
  %3050 = call float @dx.op.tertiary.f32(i32 46, float %3040, float %3048, float %3049)  ; FMad(a,b,c)
  %3051 = fmul fast float %3038, %3047
  %3052 = call float @dx.op.tertiary.f32(i32 46, float %3039, float %3048, float %3051)  ; FMad(a,b,c)
  %3053 = fadd fast float %3030, %3050
  %3054 = fadd fast float %3033, %3052
  %3055 = icmp ugt i32 %3004, 1
  %3056 = icmp ugt i32 %3002, 33554431
  %3057 = or i1 %3056, %3055
  br i1 %3057, label %3058, label %3083

; <label>:3058                                    ; preds = %2985
  %3059 = add i32 %53, 276
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = lshr i32 %3061, 16
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = fmul fast float %3026, %3063
  %3065 = call float @dx.op.unary.f32(i32 22, float %3064)  ; Frc(value)
  %3066 = mul nuw nsw i32 %3004, %3005
  %3067 = uitofp i32 %3066 to float
  %3068 = fmul fast float %3065, %3067
  %3069 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3070 = fptoui float %3069 to i32
  %3071 = urem i32 %3070, %3004
  %3072 = udiv i32 %3070, %3005
  %3073 = call float @dx.op.unary.f32(i32 22, float %3053)  ; Frc(value)
  %3074 = call float @dx.op.unary.f32(i32 22, float %3054)  ; Frc(value)
  %3075 = uitofp i32 %3071 to float
  %3076 = uitofp i32 %3072 to float
  %3077 = fadd fast float %3073, %3075
  %3078 = fadd fast float %3074, %3076
  %3079 = uitofp i32 %3004 to float
  %3080 = uitofp i32 %3005 to float
  %3081 = fdiv fast float %3077, %3079
  %3082 = fdiv fast float %3078, %3080
  br label %3083

; <label>:3083                                    ; preds = %3058, %2985
  %3084 = phi float [ %3081, %3058 ], [ %3053, %2985 ]
  %3085 = phi float [ %3082, %3058 ], [ %3054, %2985 ]
  %3086 = and i32 %2979, 256
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3134, label %3088

; <label>:3088                                    ; preds = %3083
  %3089 = add i32 %53, 484
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %3091, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3093, %dx.types.Handle %106, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = add i32 %53, 148
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = shl i32 %3098, 4
  %3100 = and i32 %3099, 32752
  %3101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3100)  ; LegacyF16ToF32(value)
  %3102 = lshr i32 %3098, 7
  %3103 = and i32 %3102, 32752
  %3104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3103)  ; LegacyF16ToF32(value)
  %3105 = fsub fast float 1.000000e+00, %696
  %3106 = call float @dx.op.binary.f32(i32 35, float %3105, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3107 = bitcast float %696 to i32
  %3108 = sitofp i32 %3107 to float
  %3109 = fadd fast float %3108, 0xC1CFBF8940000000
  %3110 = fmul fast float %3104, %3109
  %3111 = fadd fast float %3110, 0x41CFBF8940000000
  %3112 = fptosi float %3111 to i32
  %3113 = bitcast i32 %3112 to float
  %3114 = bitcast float %3106 to i32
  %3115 = sitofp i32 %3114 to float
  %3116 = fadd fast float %3115, 0xC1CFBF8940000000
  %3117 = fmul fast float %3116, %3104
  %3118 = fadd fast float %3117, 0x41CFBF8940000000
  %3119 = fptosi float %3118 to i32
  %3120 = bitcast i32 %3119 to float
  %3121 = fmul fast float %3113, %3101
  %3122 = fmul fast float %3120, %3101
  %3123 = fsub fast float %3106, %3121
  %3124 = fadd fast float %3122, %3106
  %3125 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3126 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3127 = fsub fast float %3095, %3125
  %3128 = fsub fast float %3126, %3125
  %3129 = bitcast float %3128 to i32
  %3130 = sub nsw i32 2129859010, %3129
  %3131 = bitcast i32 %3130 to float
  %3132 = fmul fast float %3131, %3127
  %3133 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  br label %3134

; <label>:3134                                    ; preds = %3088, %3083
  %3135 = phi float [ %3133, %3088 ], [ %696, %3083 ]
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 128
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3156, label %3140

; <label>:3140                                    ; preds = %3134
  %3141 = add i32 %53, 468
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %3143, 0
  %3145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3145, %dx.types.Handle %106, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 524288
  %3151 = icmp ne i32 %3150, 0
  %3152 = fcmp fast ogt float %3147, 0x3FE0101020000000
  %3153 = select i1 %3152, float 1.000000e+00, float 0.000000e+00
  %3154 = select i1 %3151, float %3153, float %3147
  %3155 = fmul fast float %3154, %3135
  br label %3156

; <label>:3156                                    ; preds = %3140, %3134
  %3157 = phi float [ %3155, %3140 ], [ %3135, %3134 ]
  %3158 = fcmp fast ult float %3157, 0x3F70101020000000
  br i1 %3158, label %3788, label %3159

; <label>:3159                                    ; preds = %3156
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 16
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %3362, label %3164

; <label>:3164                                    ; preds = %3159
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %53, 420
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = add i32 %3169, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3171, %dx.types.Handle %105, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 0
  %3174 = extractvalue %dx.types.ResRet.f32 %3172, 1
  %3175 = extractvalue %dx.types.ResRet.f32 %3172, 2
  %3176 = extractvalue %dx.types.ResRet.f32 %3172, 3
  %3177 = and i32 %3166, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = lshr i32 %3166, 8
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3176, %3178
  %3183 = fadd fast float %3182, %3181
  %3184 = fmul fast float %3183, 0x3F70101000000000
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 512
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3197, label %3189

; <label>:3189                                    ; preds = %3164
  %3190 = add i32 %53, 504
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %3192, 0
  %3194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3194, %dx.types.Handle %106, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  br label %3197

; <label>:3197                                    ; preds = %3189, %3164
  %3198 = phi float [ %3196, %3189 ], [ 1.000000e+00, %3164 ]
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 33554432
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3309, label %3203

; <label>:3203                                    ; preds = %3197
  %3204 = add i32 %53, 272
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = lshr i32 %3206, 16
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = add i32 %53, 276
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 65535
  %3215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3214)  ; LegacyF16ToF32(value)
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = lshr i32 %3217, 24
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = and i32 %3217, 255
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3222, 0x3F70101020000000
  %3224 = lshr i32 %3217, 8
  %3225 = and i32 %3224, 255
  %3226 = uitofp i32 %3225 to float
  %3227 = fmul fast float %3226, 0x3F70101020000000
  %3228 = lshr i32 %3217, 16
  %3229 = and i32 %3228, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F70101020000000
  %3232 = add i32 %53, 268
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = lshr i32 %3234, 24
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = and i32 %3234, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = fmul fast float %3239, 0x3F70101020000000
  %3241 = lshr i32 %3234, 8
  %3242 = and i32 %3241, 255
  %3243 = uitofp i32 %3242 to float
  %3244 = fmul fast float %3243, 0x3F70101020000000
  %3245 = lshr i32 %3234, 16
  %3246 = and i32 %3245, 255
  %3247 = uitofp i32 %3246 to float
  %3248 = fmul fast float %3247, 0x3F70101020000000
  %3249 = bitcast float %3173 to i32
  %3250 = ashr i32 %3249, 1
  %3251 = sub nsw i32 1597463174, %3250
  %3252 = bitcast i32 %3251 to float
  %3253 = fmul fast float %3173, 5.000000e-01
  %3254 = fmul fast float %3252, %3252
  %3255 = fmul fast float %3254, %3253
  %3256 = fsub fast float 1.500000e+00, %3255
  %3257 = fmul fast float %3252, %3173
  %3258 = fmul fast float %3257, %3256
  %3259 = bitcast float %3174 to i32
  %3260 = ashr i32 %3259, 1
  %3261 = sub nsw i32 1597463174, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul fast float %3174, 5.000000e-01
  %3264 = fmul fast float %3262, %3262
  %3265 = fmul fast float %3264, %3263
  %3266 = fsub fast float 1.500000e+00, %3265
  %3267 = fmul fast float %3262, %3174
  %3268 = fmul fast float %3267, %3266
  %3269 = bitcast float %3175 to i32
  %3270 = ashr i32 %3269, 1
  %3271 = sub nsw i32 1597463174, %3270
  %3272 = bitcast i32 %3271 to float
  %3273 = fmul fast float %3175, 5.000000e-01
  %3274 = fmul fast float %3272, %3272
  %3275 = fmul fast float %3274, %3273
  %3276 = fsub fast float 1.500000e+00, %3275
  %3277 = fmul fast float %3272, %3175
  %3278 = fmul fast float %3277, %3276
  %3279 = fsub fast float %3258, %3240
  %3280 = fsub fast float %3268, %3244
  %3281 = fsub fast float %3278, %3248
  %3282 = fmul fast float %3279, %3208
  %3283 = fmul fast float %3280, %3210
  %3284 = fmul fast float %3281, %3215
  %3285 = fadd fast float %3282, %3223
  %3286 = fadd fast float %3283, %3227
  %3287 = fadd fast float %3284, %3231
  %3288 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3289 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = fmul fast float %3288, %3288
  %3292 = fmul fast float %3289, %3289
  %3293 = fmul fast float %3290, %3290
  %3294 = fsub fast float %3291, %3173
  %3295 = fsub fast float %3292, %3174
  %3296 = fsub fast float %3293, %3175
  %3297 = fmul fast float %3294, %3198
  %3298 = fmul fast float %3295, %3198
  %3299 = fmul fast float %3296, %3198
  %3300 = fadd fast float %3297, %3173
  %3301 = fadd fast float %3298, %3174
  %3302 = fadd fast float %3299, %3175
  %3303 = fadd fast float %3220, %3184
  %3304 = fsub fast float %3303, %3237
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  %3306 = fsub fast float %3305, %3184
  %3307 = fmul fast float %3306, %3198
  %3308 = fadd fast float %3307, %3184
  br label %3362

; <label>:3309                                    ; preds = %3197
  %3310 = and i32 %3200, 134217728
  %3311 = icmp eq i32 %3310, 0
  br i1 %3311, label %3346, label %3312

; <label>:3312                                    ; preds = %3309
  %3313 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %3314 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %3315 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %3316 = fadd fast float %3313, -5.000000e-01
  %3317 = fadd fast float %3314, -5.000000e-01
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fmul fast float %3316, %3198
  %3320 = fmul fast float %3317, %3198
  %3321 = fmul fast float %3318, %3198
  %3322 = fadd fast float %3319, 5.000000e-01
  %3323 = fadd fast float %3320, 5.000000e-01
  %3324 = fadd fast float %3321, 5.000000e-01
  %3325 = call float @dx.op.unary.f32(i32 24, float %3173)  ; Sqrt(value)
  %3326 = call float @dx.op.unary.f32(i32 24, float %3174)  ; Sqrt(value)
  %3327 = call float @dx.op.unary.f32(i32 24, float %3175)  ; Sqrt(value)
  %3328 = fmul fast float %3322, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3325
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3325
  %3333 = fmul fast float %3323, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3326
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3326
  %3338 = fmul fast float %3324, 2.000000e+00
  %3339 = fsub fast float 1.000000e+00, %3338
  %3340 = fmul fast float %3339, %3327
  %3341 = fadd fast float %3340, %3338
  %3342 = fmul fast float %3341, %3327
  %3343 = fmul fast float %3332, %3332
  %3344 = fmul fast float %3337, %3337
  %3345 = fmul fast float %3342, %3342
  br label %3362

; <label>:3346                                    ; preds = %3309
  %3347 = fmul fast float %612, %612
  %3348 = fmul fast float %613, %613
  %3349 = fmul fast float %614, %614
  %3350 = fadd fast float %3347, -1.000000e+00
  %3351 = fadd fast float %3348, -1.000000e+00
  %3352 = fadd fast float %3349, -1.000000e+00
  %3353 = fmul fast float %3198, %3350
  %3354 = fmul fast float %3198, %3351
  %3355 = fmul fast float %3198, %3352
  %3356 = fadd fast float %3353, 1.000000e+00
  %3357 = fadd fast float %3354, 1.000000e+00
  %3358 = fadd fast float %3355, 1.000000e+00
  %3359 = fmul fast float %3356, %3173
  %3360 = fmul fast float %3357, %3174
  %3361 = fmul fast float %3358, %3175
  br label %3362

; <label>:3362                                    ; preds = %3346, %3312, %3203, %3159
  %3363 = phi float [ %3308, %3203 ], [ %3184, %3312 ], [ %3184, %3346 ], [ 0x3FA23C0BE0000000, %3159 ]
  %3364 = phi float [ %3300, %3203 ], [ %3343, %3312 ], [ %3359, %3346 ], [ 1.000000e+00, %3159 ]
  %3365 = phi float [ %3301, %3203 ], [ %3344, %3312 ], [ %3360, %3346 ], [ 1.000000e+00, %3159 ]
  %3366 = phi float [ %3302, %3203 ], [ %3345, %3312 ], [ %3361, %3346 ], [ 1.000000e+00, %3159 ]
  %3367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.i32 %3367, 1
  %3369 = and i32 %3368, 1
  %3370 = icmp ne i32 %3369, 0
  %3371 = add i32 %53, 356
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 32
  %3375 = icmp ne i32 %3374, 0
  %3376 = and i1 %3370, %3375
  %3377 = select i1 %3376, float 1.000000e+00, float %3364
  %3378 = select i1 %3376, float 0x3FD3333340000000, float %3365
  %3379 = select i1 %3376, float 0x3FD3333340000000, float %3366
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 32
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3456, label %3384

; <label>:3384                                    ; preds = %3362
  %3385 = add i32 %53, 140
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = add i32 %53, 436
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = add i32 %3390, 0
  %3392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3392, %dx.types.Handle %105, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = extractvalue %dx.types.ResRet.f32 %3393, 3
  %3398 = and i32 %3387, 255
  %3399 = uitofp i32 %3398 to float
  %3400 = lshr i32 %3387, 8
  %3401 = and i32 %3400, 255
  %3402 = uitofp i32 %3401 to float
  %3403 = lshr i32 %3387, 16
  %3404 = and i32 %3403, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = fmul fast float %3405, 0x3F70101000000000
  %3407 = fmul fast float %3394, %3399
  %3408 = fadd fast float %3407, %3402
  %3409 = fmul fast float %3408, 0x3F70101000000000
  %3410 = fadd fast float %3395, -5.000000e-01
  %3411 = fadd fast float %3397, -5.000000e-01
  %3412 = fmul fast float %3410, %3406
  %3413 = fmul fast float %3411, %3406
  %3414 = fadd fast float %3412, 5.000000e-01
  %3415 = fadd fast float %3413, 5.000000e-01
  %3416 = fmul fast float %3414, 2.000000e+00
  %3417 = fadd fast float %3416, -1.000000e+00
  %3418 = fmul fast float %3415, 2.000000e+00
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = fadd fast float %3417, %3419
  %3421 = fmul fast float %3420, 5.000000e-01
  %3422 = fsub fast float %3417, %3419
  %3423 = fmul fast float %3422, 5.000000e-01
  %3424 = call float @dx.op.unary.f32(i32 6, float %3421)  ; FAbs(value)
  %3425 = fsub fast float 1.000000e+00, %3424
  %3426 = call float @dx.op.unary.f32(i32 6, float %3423)  ; FAbs(value)
  %3427 = fsub fast float %3425, %3426
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3423, float %3427, float %3421, float %3423, float %3427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = call float @dx.op.unary.f32(i32 25, float %3428)  ; Rsqrt(value)
  %3430 = fmul fast float %3421, %3429
  %3431 = fmul fast float %3423, %3429
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 67108864
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3452, label %3436

; <label>:3436                                    ; preds = %3384
  %3437 = add i32 %53, 328
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 65535
  %3445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3444)  ; LegacyF16ToF32(value)
  %3446 = lshr i32 %3439, 16
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = fsub fast float %3409, %3447
  %3449 = fmul fast float %3448, %3441
  %3450 = fadd fast float %3449, %3445
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  br label %3452

; <label>:3452                                    ; preds = %3436, %3384
  %3453 = phi float [ %3451, %3436 ], [ %3409, %3384 ]
  %3454 = call float @dx.op.dot2.f32(i32 54, float %3430, float %3431, float %2988, float %2989)  ; Dot2(ax,ay,bx,by)
  %3455 = call float @dx.op.dot2.f32(i32 54, float %3430, float %3431, float %2990, float %2991)  ; Dot2(ax,ay,bx,by)
  br label %3456

; <label>:3456                                    ; preds = %3452, %3362
  %3457 = phi float [ %3453, %3452 ], [ 0x3FD6666660000000, %3362 ]
  %3458 = phi float [ %3454, %3452 ], [ 0.000000e+00, %3362 ]
  %3459 = phi float [ %3455, %3452 ], [ 0.000000e+00, %3362 ]
  %3460 = phi float [ %3396, %3452 ], [ 1.000000e+00, %3362 ]
  %3461 = add i32 %53, 208
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = lshr i32 %3463, 22
  %3465 = shl nuw nsw i32 %3464, 5
  %3466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3465)  ; LegacyF16ToF32(value)
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 64
  %3470 = icmp eq i32 %3469, 0
  br i1 %3470, label %3504, label %3471

; <label>:3471                                    ; preds = %3456
  %3472 = add i32 %53, 452
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = add i32 %3474, 0
  %3476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = and i32 %3478, 131072
  %3480 = icmp eq i32 %3479, 0
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3476, %dx.types.Handle %105, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = fmul fast float %595, %3482
  %3486 = fmul fast float %596, %3483
  %3487 = fmul fast float %597, %3484
  br i1 %3480, label %3494, label %3488

; <label>:3488                                    ; preds = %3471
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = fmul fast float %3490, %3485
  %3492 = fmul fast float %3490, %3486
  %3493 = fmul fast float %3490, %3487
  br label %3494

; <label>:3494                                    ; preds = %3488, %3471
  %3495 = phi float [ %3491, %3488 ], [ %3485, %3471 ]
  %3496 = phi float [ %3492, %3488 ], [ %3486, %3471 ]
  %3497 = phi float [ %3493, %3488 ], [ %3487, %3471 ]
  %3498 = fmul fast float %3495, %3466
  %3499 = select i1 %260, float %3498, float %3495
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3496, float %3497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = select i1 %260, float 0.000000e+00, float %3495
  %3502 = select i1 %260, float %3500, float %3496
  %3503 = select i1 %260, float 0.000000e+00, float %3497
  br label %3504

; <label>:3504                                    ; preds = %3494, %3456
  %3505 = phi float [ %3501, %3494 ], [ 0.000000e+00, %3456 ]
  %3506 = phi float [ %3502, %3494 ], [ 0.000000e+00, %3456 ]
  %3507 = phi float [ %3503, %3494 ], [ 0.000000e+00, %3456 ]
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 10240
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3556, label %3512

; <label>:3512                                    ; preds = %3504
  %3513 = add i32 %53, 520
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = add i32 %3515, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3517, %dx.types.Handle %106, float %3084, float %3085, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 1048576
  %3524 = icmp ne i32 %3523, 0
  %3525 = and i32 %3522, 8192
  %3526 = icmp eq i32 %3525, 0
  br i1 %3526, label %3542, label %3527

; <label>:3527                                    ; preds = %3512
  %3528 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3529 = select i1 %3524, float %3528, float %3519
  %3530 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3531 = select i1 %3524, float %3530, float %3519
  %3532 = add i32 %53, 144
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = lshr i32 %3534, 16
  %3536 = and i32 %3535, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = fmul fast float %3537, 0x3F80101020000000
  %3539 = fmul fast float %3538, %3531
  %3540 = fmul fast float %3538, %3519
  %3541 = fmul fast float %3538, %3529
  br label %3542

; <label>:3542                                    ; preds = %3527, %3512
  %3543 = phi float [ %3539, %3527 ], [ 0.000000e+00, %3512 ]
  %3544 = phi float [ %3540, %3527 ], [ 0.000000e+00, %3512 ]
  %3545 = phi float [ %3541, %3527 ], [ 0.000000e+00, %3512 ]
  %3546 = and i32 %3522, 2048
  %3547 = icmp eq i32 %3546, 0
  br i1 %3547, label %3556, label %3548

; <label>:3548                                    ; preds = %3542
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = shl i32 %3550, 4
  %3552 = and i32 %3551, 32752
  %3553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3552)  ; LegacyF16ToF32(value)
  %3554 = fmul fast float %3553, %3520
  %3555 = call float @dx.op.binary.f32(i32 35, float %3554, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3556

; <label>:3556                                    ; preds = %3548, %3542, %3504
  %3557 = phi float [ %3543, %3548 ], [ %3543, %3542 ], [ 0.000000e+00, %3504 ]
  %3558 = phi float [ %3544, %3548 ], [ %3544, %3542 ], [ 0.000000e+00, %3504 ]
  %3559 = phi float [ %3545, %3548 ], [ %3545, %3542 ], [ 0.000000e+00, %3504 ]
  %3560 = phi float [ %3555, %3548 ], [ 0x3F70101020000000, %3542 ], [ 0x3F70101020000000, %3504 ]
  %3561 = add i32 %53, 144
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 255
  %3565 = uitofp i32 %3564 to float
  %3566 = lshr i32 %3563, 8
  %3567 = and i32 %3566, 255
  %3568 = uitofp i32 %3567 to float
  %3569 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = fmul fast float %3568, %3569
  %3571 = fadd fast float %3570, %3565
  %3572 = fmul fast float %3571, 0x3F70101020000000
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  br i1 %2976, label %3574, label %3582

; <label>:3574                                    ; preds = %3556
  %3575 = fsub fast float 1.000000e+00, %3157
  %3576 = fmul fast float %3575, %2961
  %3577 = fmul fast float %3575, %2962
  %3578 = fmul fast float %3575, %2963
  %3579 = fmul fast float %3575, %2964
  %3580 = fmul fast float %3575, %2965
  %3581 = fmul fast float %3575, %2966
  br label %3582

; <label>:3582                                    ; preds = %3574, %3556
  %3583 = phi float [ %3576, %3574 ], [ %2961, %3556 ]
  %3584 = phi float [ %3577, %3574 ], [ %2962, %3556 ]
  %3585 = phi float [ %3578, %3574 ], [ %2963, %3556 ]
  %3586 = phi float [ %3579, %3574 ], [ %2964, %3556 ]
  %3587 = phi float [ %3580, %3574 ], [ %2965, %3556 ]
  %3588 = phi float [ %3581, %3574 ], [ %2966, %3556 ]
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 3
  %3592 = icmp eq i32 %3591, 3
  br i1 %3592, label %3671, label %3593

; <label>:3593                                    ; preds = %3582
  %3594 = and i32 %3590, 16
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3157, float 0.000000e+00
  %3597 = icmp eq i32 %3591, 0
  br i1 %3597, label %3598, label %3626

; <label>:3598                                    ; preds = %3593
  %3599 = and i32 %3590, 64
  %3600 = icmp ne i32 %3599, 0
  %3601 = select i1 %3600, float %3157, float 0.000000e+00
  %3602 = fsub fast float %3377, %3583
  %3603 = fsub fast float %3378, %3584
  %3604 = fsub fast float %3379, %3585
  %3605 = fmul fast float %3596, %3602
  %3606 = fmul fast float %3596, %3603
  %3607 = fmul fast float %3596, %3604
  %3608 = fadd fast float %3605, %3583
  %3609 = fadd fast float %3606, %3584
  %3610 = fadd fast float %3607, %3585
  %3611 = fsub fast float %3363, %2970
  %3612 = fmul fast float %3596, %3611
  %3613 = fadd fast float %3612, %2970
  %3614 = fsub fast float %3505, %3586
  %3615 = fsub fast float %3506, %3587
  %3616 = fsub fast float %3507, %3588
  %3617 = fmul fast float %3601, %3614
  %3618 = fmul fast float %3601, %3615
  %3619 = fmul fast float %3601, %3616
  %3620 = fadd fast float %3617, %3586
  %3621 = fadd fast float %3618, %3587
  %3622 = fadd fast float %3619, %3588
  %3623 = fsub fast float %3573, %2974
  %3624 = fmul fast float %3596, %3623
  %3625 = fadd fast float %3624, %2974
  br label %3671

; <label>:3626                                    ; preds = %3593
  %3627 = icmp eq i32 %3591, 1
  br i1 %3627, label %3628, label %3641

; <label>:3628                                    ; preds = %3626
  %3629 = fadd fast float %3377, -1.000000e+00
  %3630 = fadd fast float %3378, -1.000000e+00
  %3631 = fadd fast float %3379, -1.000000e+00
  %3632 = fmul fast float %3596, %3629
  %3633 = fmul fast float %3596, %3630
  %3634 = fmul fast float %3596, %3631
  %3635 = fadd fast float %3632, 1.000000e+00
  %3636 = fadd fast float %3633, 1.000000e+00
  %3637 = fadd fast float %3634, 1.000000e+00
  %3638 = fmul fast float %3635, %3583
  %3639 = fmul fast float %3636, %3584
  %3640 = fmul fast float %3637, %3585
  br label %3671

; <label>:3641                                    ; preds = %3626
  %3642 = icmp eq i32 %3591, 2
  br i1 %3642, label %3643, label %3671

; <label>:3643                                    ; preds = %3641
  %3644 = call float @dx.op.unary.f32(i32 24, float %3377)  ; Sqrt(value)
  %3645 = call float @dx.op.unary.f32(i32 24, float %3378)  ; Sqrt(value)
  %3646 = call float @dx.op.unary.f32(i32 24, float %3379)  ; Sqrt(value)
  %3647 = fadd fast float %3644, -5.000000e-01
  %3648 = fadd fast float %3645, -5.000000e-01
  %3649 = fadd fast float %3646, -5.000000e-01
  %3650 = fmul fast float %3647, %3596
  %3651 = fmul fast float %3648, %3596
  %3652 = fmul fast float %3649, %3596
  %3653 = fadd fast float %3650, 5.000000e-01
  %3654 = fadd fast float %3651, 5.000000e-01
  %3655 = fadd fast float %3652, 5.000000e-01
  %3656 = fmul fast float %3653, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3583
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3583
  %3661 = fmul fast float %3654, 2.000000e+00
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3662, %3584
  %3664 = fadd fast float %3663, %3661
  %3665 = fmul fast float %3664, %3584
  %3666 = fmul fast float %3655, 2.000000e+00
  %3667 = fsub fast float 1.000000e+00, %3666
  %3668 = fmul fast float %3667, %3585
  %3669 = fadd fast float %3668, %3666
  %3670 = fmul fast float %3669, %3585
  br label %3671

; <label>:3671                                    ; preds = %3643, %3641, %3628, %3598, %3582
  %3672 = phi float [ %3583, %3582 ], [ %3660, %3643 ], [ %3583, %3641 ], [ %3638, %3628 ], [ %3608, %3598 ]
  %3673 = phi float [ %3584, %3582 ], [ %3665, %3643 ], [ %3584, %3641 ], [ %3639, %3628 ], [ %3609, %3598 ]
  %3674 = phi float [ %3585, %3582 ], [ %3670, %3643 ], [ %3585, %3641 ], [ %3640, %3628 ], [ %3610, %3598 ]
  %3675 = phi float [ %3586, %3582 ], [ %3586, %3643 ], [ %3586, %3641 ], [ %3586, %3628 ], [ %3620, %3598 ]
  %3676 = phi float [ %3587, %3582 ], [ %3587, %3643 ], [ %3587, %3641 ], [ %3587, %3628 ], [ %3621, %3598 ]
  %3677 = phi float [ %3588, %3582 ], [ %3588, %3643 ], [ %3588, %3641 ], [ %3588, %3628 ], [ %3622, %3598 ]
  %3678 = phi float [ %2970, %3582 ], [ %2970, %3643 ], [ %2970, %3641 ], [ %2970, %3628 ], [ %3613, %3598 ]
  %3679 = phi float [ %2974, %3582 ], [ %2974, %3643 ], [ %2974, %3641 ], [ %2974, %3628 ], [ %3625, %3598 ]
  %3680 = and i32 %3590, 12
  %3681 = icmp eq i32 %3680, 12
  br i1 %3681, label %3788, label %3682

; <label>:3682                                    ; preds = %3671
  %3683 = and i32 %3590, 2097184
  %3684 = icmp eq i32 %3683, 2097184
  %3685 = select i1 %3684, float %3157, float 0.000000e+00
  %3686 = and i32 %3590, 4194336
  %3687 = icmp eq i32 %3686, 4194336
  %3688 = select i1 %3687, float %3157, float 0.000000e+00
  %3689 = and i32 %3590, 8388640
  %3690 = icmp eq i32 %3689, 8388640
  %3691 = select i1 %3690, float %3157, float 0.000000e+00
  %3692 = and i32 %3590, 2048
  %3693 = icmp ne i32 %3692, 0
  %3694 = select i1 %3693, float %3157, float 0.000000e+00
  %3695 = and i32 %3590, 8192
  %3696 = icmp ne i32 %3695, 0
  %3697 = select i1 %3696, float %3157, float 0.000000e+00
  %3698 = icmp eq i32 %3680, 0
  br i1 %3698, label %3699, label %3724

; <label>:3699                                    ; preds = %3682
  %3700 = fsub fast float %3458, %2959
  %3701 = fsub fast float %3459, %2960
  %3702 = fmul fast float %3685, %3700
  %3703 = fmul fast float %3685, %3701
  %3704 = fadd fast float %3702, %2959
  %3705 = fadd fast float %3703, %2960
  %3706 = fsub fast float %3460, %2972
  %3707 = fmul fast float %3688, %3706
  %3708 = fadd fast float %3707, %2972
  %3709 = fsub fast float %3457, %2971
  %3710 = fmul fast float %3691, %3709
  %3711 = fadd fast float %3710, %2971
  %3712 = fsub fast float %3560, %2973
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2973
  %3715 = fsub fast float %3557, %2967
  %3716 = fsub fast float %3558, %2968
  %3717 = fsub fast float %3559, %2969
  %3718 = fmul fast float %3697, %3715
  %3719 = fmul fast float %3697, %3716
  %3720 = fmul fast float %3697, %3717
  %3721 = fadd fast float %3718, %2967
  %3722 = fadd fast float %3719, %2968
  %3723 = fadd fast float %3720, %2969
  br label %3788

; <label>:3724                                    ; preds = %3682
  %3725 = icmp eq i32 %3680, 4
  br i1 %3725, label %3726, label %3766

; <label>:3726                                    ; preds = %3724
  %3727 = fmul fast float %3685, %3458
  %3728 = fmul fast float %3685, %3459
  %3729 = fadd fast float %3727, %2959
  %3730 = fadd fast float %3728, %2960
  %3731 = call float @dx.op.binary.f32(i32 36, float %2972, float %3460)  ; FMin(a,b)
  %3732 = fsub fast float %3731, %2972
  %3733 = fmul fast float %3732, %3688
  %3734 = fadd fast float %3733, %2972
  %3735 = fadd fast float %3457, %2971
  %3736 = fmul fast float %3735, 0x3FF337FAE0000000
  %3737 = fmul fast float %2971, %2971
  %3738 = fmul fast float %3457, %3457
  %3739 = fadd fast float %3738, %3737
  %3740 = fmul fast float %3739, 0x3FE5152B00000000
  %3741 = fmul fast float %2971, 0xBFCC1F85E0000000
  %3742 = fmul fast float %3741, %3457
  %3743 = fadd fast float %3742, 0xBFE1363700000000
  %3744 = fadd fast float %3743, %3736
  %3745 = fsub fast float %3744, %3740
  %3746 = fmul fast float %3735, 0x3FBA6F0D00000000
  %3747 = fmul fast float %3739, 0x3FD0432880000000
  %3748 = fmul fast float %2971, 0xBFEF110800000000
  %3749 = fmul fast float %3748, %3457
  %3750 = fadd fast float %3749, 1.000000e+00
  %3751 = fsub fast float %3750, %3746
  %3752 = fadd fast float %3751, %3747
  %3753 = fdiv fast float %3745, %3752
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = fsub fast float %3754, %2971
  %3756 = fmul fast float %3755, %3691
  %3757 = fadd fast float %3756, %2971
  %3758 = fmul fast float %3694, %3560
  %3759 = fadd fast float %3758, %2973
  %3760 = fmul fast float %3697, %3557
  %3761 = fmul fast float %3697, %3558
  %3762 = fmul fast float %3697, %3559
  %3763 = fadd fast float %3760, %2967
  %3764 = fadd fast float %3761, %2968
  %3765 = fadd fast float %3762, %2969
  br label %3788

; <label>:3766                                    ; preds = %3724
  %3767 = icmp eq i32 %3680, 8
  br i1 %3767, label %3768, label %3788

; <label>:3768                                    ; preds = %3766
  %3769 = fmul fast float %3685, %3458
  %3770 = fmul fast float %3685, %3459
  %3771 = fadd fast float %3769, %2959
  %3772 = fadd fast float %3770, %2960
  %3773 = call float @dx.op.binary.f32(i32 36, float %2972, float %3460)  ; FMin(a,b)
  %3774 = fsub fast float %3773, %2972
  %3775 = fmul fast float %3774, %3688
  %3776 = fadd fast float %3775, %2972
  %3777 = fsub fast float %3457, %2971
  %3778 = fmul fast float %3691, %3777
  %3779 = fadd fast float %3778, %2971
  %3780 = fmul fast float %3694, %3560
  %3781 = fadd fast float %3780, %2973
  %3782 = fmul fast float %3697, %3557
  %3783 = fmul fast float %3697, %3558
  %3784 = fmul fast float %3697, %3559
  %3785 = fadd fast float %3782, %2967
  %3786 = fadd fast float %3783, %2968
  %3787 = fadd fast float %3784, %2969
  br label %3788

; <label>:3788                                    ; preds = %3768, %3766, %3726, %3699, %3671, %3156, %2975, %2958
  %3789 = phi float [ %2959, %3671 ], [ %2959, %3156 ], [ %2959, %2958 ], [ %2959, %2975 ], [ %3704, %3699 ], [ %3729, %3726 ], [ %2959, %3766 ], [ %3771, %3768 ]
  %3790 = phi float [ %2960, %3671 ], [ %2960, %3156 ], [ %2960, %2958 ], [ %2960, %2975 ], [ %3705, %3699 ], [ %3730, %3726 ], [ %2960, %3766 ], [ %3772, %3768 ]
  %3791 = phi float [ %3672, %3671 ], [ %2961, %3156 ], [ %2961, %2958 ], [ %2961, %2975 ], [ %3672, %3699 ], [ %3672, %3726 ], [ %3672, %3766 ], [ %3672, %3768 ]
  %3792 = phi float [ %3673, %3671 ], [ %2962, %3156 ], [ %2962, %2958 ], [ %2962, %2975 ], [ %3673, %3699 ], [ %3673, %3726 ], [ %3673, %3766 ], [ %3673, %3768 ]
  %3793 = phi float [ %3674, %3671 ], [ %2963, %3156 ], [ %2963, %2958 ], [ %2963, %2975 ], [ %3674, %3699 ], [ %3674, %3726 ], [ %3674, %3766 ], [ %3674, %3768 ]
  %3794 = phi float [ %3675, %3671 ], [ %2964, %3156 ], [ %2964, %2958 ], [ %2964, %2975 ], [ %3675, %3699 ], [ %3675, %3726 ], [ %3675, %3766 ], [ %3675, %3768 ]
  %3795 = phi float [ %3676, %3671 ], [ %2965, %3156 ], [ %2965, %2958 ], [ %2965, %2975 ], [ %3676, %3699 ], [ %3676, %3726 ], [ %3676, %3766 ], [ %3676, %3768 ]
  %3796 = phi float [ %3677, %3671 ], [ %2966, %3156 ], [ %2966, %2958 ], [ %2966, %2975 ], [ %3677, %3699 ], [ %3677, %3726 ], [ %3677, %3766 ], [ %3677, %3768 ]
  %3797 = phi float [ %2967, %3671 ], [ %2967, %3156 ], [ %2967, %2958 ], [ %2967, %2975 ], [ %3721, %3699 ], [ %3763, %3726 ], [ %2967, %3766 ], [ %3785, %3768 ]
  %3798 = phi float [ %2968, %3671 ], [ %2968, %3156 ], [ %2968, %2958 ], [ %2968, %2975 ], [ %3722, %3699 ], [ %3764, %3726 ], [ %2968, %3766 ], [ %3786, %3768 ]
  %3799 = phi float [ %2969, %3671 ], [ %2969, %3156 ], [ %2969, %2958 ], [ %2969, %2975 ], [ %3723, %3699 ], [ %3765, %3726 ], [ %2969, %3766 ], [ %3787, %3768 ]
  %3800 = phi float [ %3678, %3671 ], [ %2970, %3156 ], [ %2970, %2958 ], [ %2970, %2975 ], [ %3678, %3699 ], [ %3678, %3726 ], [ %3678, %3766 ], [ %3678, %3768 ]
  %3801 = phi float [ %2971, %3671 ], [ %2971, %3156 ], [ %2971, %2958 ], [ %2971, %2975 ], [ %3711, %3699 ], [ %3757, %3726 ], [ %2971, %3766 ], [ %3779, %3768 ]
  %3802 = phi float [ %2972, %3671 ], [ %2972, %3156 ], [ %2972, %2958 ], [ %2972, %2975 ], [ %3708, %3699 ], [ %3734, %3726 ], [ %2972, %3766 ], [ %3776, %3768 ]
  %3803 = phi float [ %2973, %3671 ], [ %2973, %3156 ], [ %2973, %2958 ], [ %2973, %2975 ], [ %3714, %3699 ], [ %3759, %3726 ], [ %2973, %3766 ], [ %3781, %3768 ]
  %3804 = phi float [ %3679, %3671 ], [ %2974, %3156 ], [ %2974, %2958 ], [ %2974, %2975 ], [ %3679, %3699 ], [ %3679, %3726 ], [ %3679, %3766 ], [ %3679, %3768 ]
  %3805 = add i32 %53, 392
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = extractvalue %dx.types.ResRet.i32 %3806, 1
  %3809 = bitcast i32 %3807 to float
  %3810 = bitcast i32 %3808 to float
  %3811 = fcmp fast oge float %3809, 0.000000e+00
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = select i1 %3811, float %3809, float %3813
  %3815 = fadd fast float %3814, %202
  %3816 = fmul fast float %3810, %203
  %3817 = add i32 %53, 488
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = add i32 %3819, 0
  %3821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3821, %dx.types.Handle %106, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = fmul fast float %3816, %3823
  %3825 = fadd fast float %3815, %3824
  %3826 = and i32 %194, 65535
  %3827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3826)  ; LegacyF16ToF32(value)
  %3828 = lshr i32 %194, 16
  %3829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3828)  ; LegacyF16ToF32(value)
  %3830 = and i32 %195, 65535
  %3831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3830)  ; LegacyF16ToF32(value)
  %3832 = fmul fast float %3827, %3791
  %3833 = fmul fast float %3829, %3792
  %3834 = fmul fast float %3831, %3793
  %3835 = shl i32 %196, 4
  %3836 = and i32 %3835, 32752
  %3837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3836)  ; LegacyF16ToF32(value)
  %3838 = lshr i32 %196, 7
  %3839 = and i32 %3838, 32752
  %3840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3839)  ; LegacyF16ToF32(value)
  %3841 = lshr i32 %196, 22
  %3842 = shl nuw nsw i32 %3841, 5
  %3843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3842)  ; LegacyF16ToF32(value)
  %3844 = and i32 %197, 65535
  %3845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3844)  ; LegacyF16ToF32(value)
  %3846 = fmul fast float %3837, %3794
  %3847 = fmul fast float %3846, %3845
  %3848 = fmul fast float %3840, %3795
  %3849 = fmul fast float %3848, %3845
  %3850 = fmul fast float %3843, %3796
  %3851 = fmul fast float %3850, %3845
  %3852 = call float @dx.op.dot2.f32(i32 54, float %3789, float %3790, float %3789, float %3790)  ; Dot2(ax,ay,bx,by)
  %3853 = fmul fast float %3852, 0x3FE3333340000000
  %3854 = fsub fast float 1.000000e+00, %3853
  %3855 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3854, float %3789, float %3790, float %3854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3856 = call float @dx.op.unary.f32(i32 25, float %3855)  ; Rsqrt(value)
  %3857 = fmul fast float %3856, %3789
  %3858 = fmul fast float %3856, %3790
  %3859 = fmul fast float %3854, %3856
  %3860 = fmul fast float %3859, %116
  %3861 = fmul fast float %3859, %117
  %3862 = fmul fast float %3859, %118
  %3863 = fmul fast float %3857, %84
  %3864 = fmul fast float %3857, %85
  %3865 = fmul fast float %3857, %86
  %3866 = fadd fast float %3860, %3863
  %3867 = fadd fast float %3861, %3864
  %3868 = fadd fast float %3862, %3865
  %3869 = fmul fast float %3858, %128
  %3870 = fmul fast float %3858, %129
  %3871 = fmul fast float %3858, %130
  %3872 = fadd fast float %3866, %3869
  %3873 = fadd fast float %3867, %3870
  %3874 = fadd fast float %3868, %3871
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3872, float %3873, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.unary.f32(i32 25, float %3875)  ; Rsqrt(value)
  %3877 = fmul fast float %3872, %3876
  %3878 = fmul fast float %3873, %3876
  %3879 = fmul fast float %3874, %3876
  %3880 = fadd fast float %3800, 0xBFB99999A0000000
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fmul fast float %3881, 0x3FF1C71C80000000
  %3883 = call float @dx.op.binary.f32(i32 36, float %3800, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3884 = fsub fast float 1.000000e+00, %3882
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3885, %3832
  %3887 = fmul fast float %3885, %3833
  %3888 = fmul fast float %3885, %3834
  %3889 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3890 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = fmul fast float %3882, %3832
  %3893 = fmul fast float %3882, %3833
  %3894 = fmul fast float %3882, %3834
  %3895 = fadd fast float %3892, %3883
  %3896 = fadd fast float %3893, %3883
  %3897 = fadd fast float %3894, %3883
  %3898 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3899 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3900 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3901 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.i32 %3902, 0
  %3904 = and i32 %3903, 1
  %3905 = icmp eq i32 %3904, 0
  br i1 %3905, label %3920, label %3906

; <label>:3906                                    ; preds = %3788
  %3907 = call float @dx.op.binary.f32(i32 35, float %3890, float %3891)  ; FMax(a,b)
  %3908 = call float @dx.op.binary.f32(i32 35, float %3889, float %3907)  ; FMax(a,b)
  %3909 = fcmp fast ogt float %3908, 0.000000e+00
  %3910 = bitcast float %3908 to i32
  %3911 = sub nsw i32 2129859010, %3910
  %3912 = bitcast i32 %3911 to float
  %3913 = select i1 %3909, float %3912, float 0.000000e+00
  %3914 = fmul fast float %3889, %3797
  %3915 = fmul fast float %3890, %3798
  %3916 = fmul fast float %3891, %3799
  %3917 = fmul fast float %3914, %3913
  %3918 = fmul fast float %3915, %3913
  %3919 = fmul fast float %3916, %3913
  br label %3920

; <label>:3920                                    ; preds = %3906, %3788
  %3921 = phi float [ %3917, %3906 ], [ %3797, %3788 ]
  %3922 = phi float [ %3918, %3906 ], [ %3798, %3788 ]
  %3923 = phi float [ %3919, %3906 ], [ %3799, %3788 ]
  %3924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.i32 %3924, 3
  %3926 = and i32 %3925, 8
  %3927 = icmp ne i32 %3926, 0
  %3928 = call float @dx.op.binary.f32(i32 35, float %3889, float %3832)  ; FMax(a,b)
  %3929 = call float @dx.op.binary.f32(i32 35, float %3890, float %3832)  ; FMax(a,b)
  %3930 = call float @dx.op.binary.f32(i32 35, float %3891, float %3832)  ; FMax(a,b)
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = select i1 %260, float %3832, float %3889
  %3933 = select i1 %260, float %3931, float %3890
  %3934 = select i1 %260, float 1.000000e+00, float %3891
  %3935 = select i1 %3927, float %3928, float %3932
  %3936 = select i1 %3927, float %3929, float %3933
  %3937 = select i1 %3927, float %3930, float %3934
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = select i1 %260, float %3938, float %3921
  %3940 = select i1 %260, float %3938, float %3922
  %3941 = select i1 %260, float %3938, float %3923
  %3942 = add i32 %53, 528
  %3943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.i32 %3943, 0
  %3945 = add i32 %3944, 0
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3946, %dx.types.Handle %106, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = fmul fast float %3948, 2.000000e+00
  %3953 = fadd fast float %3952, -1.000000e+00
  %3954 = fmul fast float %3949, 2.000000e+00
  %3955 = fadd fast float %3954, -1.000000e+00
  %3956 = fmul fast float %3953, %84
  %3957 = fmul fast float %3953, %85
  %3958 = fmul fast float %3953, %86
  %3959 = fmul fast float %3955, %128
  %3960 = fmul fast float %3955, %129
  %3961 = fmul fast float %3955, %130
  %3962 = fadd fast float %3956, %3959
  %3963 = fadd fast float %3957, %3960
  %3964 = fadd fast float %3958, %3961
  %3965 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3963, float %3964, float %3962, float %3963, float %3964)  ; Dot3(ax,ay,az,bx,by,bz)
  %3966 = call float @dx.op.unary.f32(i32 25, float %3965)  ; Rsqrt(value)
  %3967 = fmul fast float %3962, %3966
  %3968 = fmul fast float %3963, %3966
  %3969 = fmul fast float %3964, %3966
  %3970 = add i32 %53, 360
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = bitcast i32 %3972 to float
  %3974 = fmul fast float %3973, %3950
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = extractvalue %dx.types.ResRet.i32 %3971, 3
  %3977 = bitcast i32 %3976 to float
  %3978 = extractvalue %dx.types.ResRet.i32 %3971, 1
  %3979 = bitcast i32 %3978 to float
  %3980 = fmul fast float %3979, %3951
  %3981 = fadd fast float %3980, %3977
  %3982 = fmul fast float %3981, %3877
  %3983 = fmul fast float %3981, %3878
  %3984 = fmul fast float %3981, %3879
  %3985 = fadd fast float %3982, %3967
  %3986 = fadd fast float %3983, %3968
  %3987 = fadd fast float %3984, %3969
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float %3985, float %3986, float %3987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.unary.f32(i32 25, float %3988)  ; Rsqrt(value)
  %3990 = fmul fast float %3985, %3989
  %3991 = fmul fast float %3986, %3989
  %3992 = fmul fast float %3987, %3989
  %3993 = fmul fast float %3980, %3877
  %3994 = fmul fast float %3980, %3878
  %3995 = fmul fast float %3980, %3879
  %3996 = fadd fast float %3993, %3967
  %3997 = fadd fast float %3994, %3968
  %3998 = fadd fast float %3995, %3969
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %3996, float %3997, float %3998)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = call float @dx.op.unary.f32(i32 25, float %3999)  ; Rsqrt(value)
  %4001 = fmul fast float %3996, %4000
  %4002 = fmul fast float %3997, %4000
  %4003 = fmul fast float %3998, %4000
  %4004 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %4005 = extractvalue %dx.types.ResRet.i32 %3971, 2
  %4006 = bitcast i32 %4005 to float
  %4007 = fmul fast float %4006, %3901
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = add i32 %53, 376
  %4010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.i32 %4010, 3
  %4012 = bitcast i32 %4011 to float
  %4013 = fmul fast float %4012, %3935
  %4014 = fmul fast float %4012, %3936
  %4015 = fmul fast float %4012, %3937
  %4016 = extractvalue %dx.types.ResRet.i32 %4010, 0
  %4017 = extractvalue %dx.types.ResRet.i32 %4010, 1
  %4018 = extractvalue %dx.types.ResRet.i32 %4010, 2
  %4019 = bitcast i32 %4016 to float
  %4020 = bitcast i32 %4017 to float
  %4021 = bitcast i32 %4018 to float
  %4022 = fadd fast float %4019, %4013
  %4023 = fadd fast float %4020, %4014
  %4024 = fadd fast float %4021, %4015
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4029 = fadd fast float %4026, %188
  %4030 = fadd fast float %4027, %189
  %4031 = fadd fast float %4028, %190
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4035 = fsub fast float %4029, %4033
  %4036 = fsub fast float %4030, %4034
  %4037 = fmul fast float %4035, %4035
  %4038 = fmul fast float %4036, %4036
  %4039 = fadd fast float %4037, %4038
  %4040 = call float @dx.op.unary.f32(i32 24, float %4039)  ; Sqrt(value)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4042 = fcmp fast olt float %4040, %4041
  br i1 %4042, label %4043, label %4110

; <label>:4043                                    ; preds = %3920
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4053 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4054 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4055 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4056 = fadd fast float %4053, %4029
  %4057 = fadd fast float %4054, %4030
  %4058 = fadd fast float %4055, %4031
  %4059 = fmul fast float %4056, %4045
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4047, float %4059)  ; FMad(a,b,c)
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %4058, float %4049, float %4060)  ; FMad(a,b,c)
  %4062 = fmul fast float %4056, %4050
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4051, float %4062)  ; FMad(a,b,c)
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4058, float %4052, float %4063)  ; FMad(a,b,c)
  %4065 = fsub fast float %4061, %4053
  %4066 = fsub fast float %4064, %4054
  %4067 = fsub fast float %4065, %4033
  %4068 = fadd fast float %4067, %4041
  %4069 = fsub fast float %4066, %4034
  %4070 = fadd fast float %4069, %4041
  %4071 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4072 = fmul fast float %4068, %4071
  %4073 = fmul fast float %4070, %4071
  %4074 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4075 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4076 = fsub fast float 1.000000e+00, %4074
  %4077 = fsub fast float 1.000000e+00, %4075
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %47, float %4076, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = fcmp fast ugt float %4079, 0.000000e+00
  br i1 %4080, label %4081, label %4384

; <label>:4081                                    ; preds = %4043
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4084 = fmul fast float %4083, %4079
  %4085 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4086 = fadd fast float %4085, %4084
  %4087 = extractvalue %dx.types.CBufRet.f32 %4048, 2
  %4088 = fadd fast float %4086, %4055
  %4089 = fmul fast float %4061, %4049
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4052, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4087, float %4090)  ; FMad(a,b,c)
  %4092 = fsub fast float %4091, %4055
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 2
  %4095 = fsub fast float %4092, %4094
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %47, float %4076, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %47, float %4076, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = fadd fast float %4101, %4097
  %4105 = fmul fast float %4104, 0x3F847AE140000000
  %4106 = fadd fast float %4102, %4098
  %4107 = fmul fast float %4106, 0x3F847AE140000000
  %4108 = fadd fast float %4103, %4099
  %4109 = fmul fast float %4108, 0x3F847AE140000000
  br label %4384

; <label>:4110                                    ; preds = %3920
  %4111 = and i32 %239, 1
  %4112 = icmp eq i32 %4111, 0
  br i1 %4112, label %4384, label %4113

; <label>:4113                                    ; preds = %4110
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4121 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4122 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4123 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4124 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4125 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4126 = fadd fast float %4123, %4029
  %4127 = fadd fast float %4124, %4030
  %4128 = fadd fast float %4125, %4031
  %4129 = fmul fast float %4126, %4115
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %4127, float %4117, float %4129)  ; FMad(a,b,c)
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4128, float %4119, float %4130)  ; FMad(a,b,c)
  %4132 = fmul fast float %4126, %4120
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4127, float %4121, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4128, float %4122, float %4133)  ; FMad(a,b,c)
  %4135 = fsub fast float %4131, %4123
  %4136 = fsub fast float %4134, %4124
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.CBufRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.CBufRet.f32 %4137, 2
  %4141 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.i32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.i32 %4144, 1
  %4147 = udiv i32 %4146, %4145
  %4148 = fsub fast float %4135, %4138
  %4149 = fsub fast float %4136, %4139
  %4150 = call float @dx.op.binary.f32(i32 35, float %4148, float 0.000000e+00)  ; FMax(a,b)
  %4151 = call float @dx.op.binary.f32(i32 35, float %4149, float 0.000000e+00)  ; FMax(a,b)
  %4152 = call float @dx.op.binary.f32(i32 36, float %4150, float %4140)  ; FMin(a,b)
  %4153 = call float @dx.op.binary.f32(i32 36, float %4151, float %4141)  ; FMin(a,b)
  %4154 = add i32 %4145, -1
  %4155 = add i32 %4147, -1
  %4156 = fmul fast float %4152, %4143
  %4157 = fmul fast float %4153, %4143
  %4158 = fptoui float %4156 to i32
  %4159 = fptoui float %4157 to i32
  %4160 = call i32 @dx.op.binary.i32(i32 40, i32 %4158, i32 %4154)  ; UMin(a,b)
  %4161 = call i32 @dx.op.binary.i32(i32 40, i32 %4159, i32 %4155)  ; UMin(a,b)
  %4162 = mul i32 %4161, %4145
  %4163 = add i32 %4162, %4160
  %4164 = shl i32 %4163, 2
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = icmp eq i32 %4166, -1
  br i1 %4167, label %4384, label %4168

; <label>:4168                                    ; preds = %4113
  %4169 = mul i32 %4166, 148
  %4170 = add i32 %4169, 4
  %4171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = add i32 %4169, 8
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = add i32 %4169, 36
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = add i32 %4169, 60
  %4180 = add i32 %4169, 92
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = add i32 %4169, 116
  %4184 = fsub fast float %4135, %4172
  %4185 = fsub fast float %4136, %4175
  %4186 = fmul fast float %4143, %4184
  %4187 = fmul fast float %4143, %4185
  %4188 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4190 = fsub fast float 1.000000e+00, %4189
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4193 = call float @dx.op.unary.f32(i32 83, float %4188)  ; DerivCoarseX(value)
  %4194 = call float @dx.op.unary.f32(i32 83, float %4190)  ; DerivCoarseX(value)
  %4195 = call float @dx.op.unary.f32(i32 84, float %4188)  ; DerivCoarseY(value)
  %4196 = call float @dx.op.unary.f32(i32 84, float %4190)  ; DerivCoarseY(value)
  %4197 = fmul fast float %4193, %4192
  %4198 = fmul fast float %4194, %4192
  %4199 = fmul fast float %4195, %4192
  %4200 = fmul fast float %4196, %4192
  %4201 = call float @dx.op.dot2.f32(i32 54, float %4199, float %4200, float %4199, float %4200)  ; Dot2(ax,ay,bx,by)
  %4202 = call float @dx.op.dot2.f32(i32 54, float %4197, float %4198, float %4197, float %4198)  ; Dot2(ax,ay,bx,by)
  %4203 = call float @dx.op.binary.f32(i32 35, float %4202, float %4201)  ; FMax(a,b)
  %4204 = call float @dx.op.unary.f32(i32 23, float %4203)  ; Log(value)
  %4205 = fmul fast float %4204, 5.000000e-01
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4208 = fadd fast float %4207, %4205
  %4209 = call float @dx.op.binary.f32(i32 35, float %4208, float 0.000000e+00)  ; FMax(a,b)
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4212 = fadd fast float %4211, %4209
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4215 = fadd fast float %4212, %4214
  %4216 = add i32 %4182, 0
  %4217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4217, i32 0)  ; GetDimensions(handle,mipLevel)
  %4219 = extractvalue %dx.types.Dimensions %4218, 0
  %4220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4219)  ; FirstbitLo(value)
  %4221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.i32 %4221, 1
  %4223 = sub nsw i32 %4222, %4220
  %4224 = sitofp i32 %4223 to float
  %4225 = fsub fast float %4215, %4224
  %4226 = call float @dx.op.binary.f32(i32 35, float %4225, float 0.000000e+00)  ; FMax(a,b)
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4217, %dx.types.Handle %45, float %4188, float %4190, float %4178, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = fcmp ule float %4228, 0x3FE0101020000000
  %4230 = extractvalue %dx.types.CBufRet.i32 %4221, 0
  %4231 = and i32 %4230, 128
  %4232 = icmp ne i32 %4231, 0
  %4233 = and i1 %4229, %4232
  br i1 %4233, label %4384, label %4234

; <label>:4234                                    ; preds = %4168
  %4235 = add i32 %4169, 20
  %4236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = add i32 %4169, 24
  %4239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = add i32 %4169, 40
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = add i32 %4169, 96
  %4245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.i32 %4245, 0
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 2
  %4249 = fmul fast float %4248, %4188
  %4250 = fmul fast float %4248, %4190
  %4251 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4252 = fadd fast float %4249, %4251
  %4253 = fadd fast float %4250, %4251
  %4254 = add i32 %4246, 0
  %4255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4254, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4256 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4255, i32 0)  ; GetDimensions(handle,mipLevel)
  %4257 = extractvalue %dx.types.Dimensions %4256, 0
  %4258 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4257)  ; FirstbitLo(value)
  %4259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.i32 %4259, 1
  %4261 = sub nsw i32 %4260, %4258
  %4262 = sitofp i32 %4261 to float
  %4263 = fsub fast float %4212, %4262
  %4264 = call float @dx.op.binary.f32(i32 35, float %4263, float 0.000000e+00)  ; FMax(a,b)
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4255, %dx.types.Handle %45, float %4252, float %4253, float %4243, float undef, i32 0, i32 0, i32 undef, float %4264)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = fmul fast float %4266, %4237
  %4268 = fadd fast float %4267, %4240
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4277 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4278 = fadd fast float %4274, %4135
  %4279 = fadd fast float %4276, %4136
  %4280 = fadd fast float %4268, %4277
  %4281 = fmul fast float %4278, %4270
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4271, float %4281)  ; FMad(a,b,c)
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4272, float %4282)  ; FMad(a,b,c)
  %4284 = fsub fast float %4283, %4277
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4287 = fsub fast float %4284, %4286
  %4288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.i32 %4288, 0
  %4290 = call i32 @dx.op.binary.i32(i32 40, i32 %4166, i32 %4289)  ; UMin(a,b)
  %4291 = mul i32 %4290, 36
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = add i32 %4291, 4
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = fmul fast float %4296, %4188
  %4298 = fmul fast float %4296, %4190
  %4299 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4300 = fadd fast float %4297, %4299
  %4301 = fadd fast float %4298, %4299
  %4302 = icmp eq i32 %4293, 0
  br i1 %4302, label %4371, label %4303

; <label>:4303                                    ; preds = %4234
  br label %4304

; <label>:4304                                    ; preds = %4361, %4303
  %4305 = phi float [ %4362, %4361 ], [ 0.000000e+00, %4303 ]
  %4306 = phi float [ %4363, %4361 ], [ 0.000000e+00, %4303 ]
  %4307 = phi float [ %4364, %4361 ], [ 0.000000e+00, %4303 ]
  %4308 = phi float [ %4365, %4361 ], [ 0.000000e+00, %4303 ]
  %4309 = phi float [ %4366, %4361 ], [ 0.000000e+00, %4303 ]
  %4310 = phi float [ %4367, %4361 ], [ 0.000000e+00, %4303 ]
  %4311 = phi i32 [ %4368, %4361 ], [ 0, %4303 ]
  %4312 = shl i32 %4311, 2
  %4313 = add i32 %4179, %4312
  %4314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = add i32 %4183, %4312
  %4317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4316, i32 undef)  ; BufferLoad(srv,index,wot)
  %4318 = extractvalue %dx.types.ResRet.i32 %4317, 0
  %4319 = add i32 %4318, 0
  %4320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4320, i32 0)  ; GetDimensions(handle,mipLevel)
  %4322 = extractvalue %dx.types.Dimensions %4321, 0
  %4323 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4322)  ; FirstbitLo(value)
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 1
  %4326 = sub nsw i32 %4325, %4323
  %4327 = sitofp i32 %4326 to float
  %4328 = fsub fast float %4212, %4327
  %4329 = call float @dx.op.binary.f32(i32 35, float %4328, float 0.000000e+00)  ; FMax(a,b)
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4320, %dx.types.Handle %45, float %4300, float %4301, float %4315, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = fcmp fast ogt float %4331, 0.000000e+00
  br i1 %4332, label %4333, label %4361

; <label>:4333                                    ; preds = %4304
  %4334 = add i32 %4294, %4312
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = and i32 %4336, 32767
  %4338 = mul nuw nsw i32 %4337, 928
  %4339 = add nuw nsw i32 %4338, 48
  %4340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.ResRet.f32 %4340, 1
  %4343 = extractvalue %dx.types.ResRet.f32 %4340, 2
  %4344 = add nuw nsw i32 %4338, 60
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = fmul fast float %4341, %4331
  %4350 = fmul fast float %4342, %4331
  %4351 = fmul fast float %4343, %4331
  %4352 = fadd fast float %4349, %4305
  %4353 = fadd fast float %4350, %4306
  %4354 = fadd fast float %4351, %4307
  %4355 = fmul fast float %4346, %4331
  %4356 = fmul fast float %4347, %4331
  %4357 = fmul fast float %4348, %4331
  %4358 = fadd fast float %4355, %4308
  %4359 = fadd fast float %4356, %4309
  %4360 = fadd fast float %4357, %4310
  br label %4361

; <label>:4361                                    ; preds = %4333, %4304
  %4362 = phi float [ %4352, %4333 ], [ %4305, %4304 ]
  %4363 = phi float [ %4353, %4333 ], [ %4306, %4304 ]
  %4364 = phi float [ %4354, %4333 ], [ %4307, %4304 ]
  %4365 = phi float [ %4358, %4333 ], [ %4308, %4304 ]
  %4366 = phi float [ %4359, %4333 ], [ %4309, %4304 ]
  %4367 = phi float [ %4360, %4333 ], [ %4310, %4304 ]
  %4368 = add nuw i32 %4311, 1
  %4369 = icmp eq i32 %4368, %4293
  br i1 %4369, label %4370, label %4304

; <label>:4370                                    ; preds = %4361
  br label %4371

; <label>:4371                                    ; preds = %4370, %4234
  %4372 = phi float [ 0.000000e+00, %4234 ], [ %4362, %4370 ]
  %4373 = phi float [ 0.000000e+00, %4234 ], [ %4363, %4370 ]
  %4374 = phi float [ 0.000000e+00, %4234 ], [ %4364, %4370 ]
  %4375 = phi float [ 0.000000e+00, %4234 ], [ %4365, %4370 ]
  %4376 = phi float [ 0.000000e+00, %4234 ], [ %4366, %4370 ]
  %4377 = phi float [ 0.000000e+00, %4234 ], [ %4367, %4370 ]
  %4378 = fadd fast float %4375, %4372
  %4379 = fmul fast float %4378, 0x3F847AE140000000
  %4380 = fadd fast float %4376, %4373
  %4381 = fmul fast float %4380, 0x3F847AE140000000
  %4382 = fadd fast float %4377, %4374
  %4383 = fmul fast float %4382, 0x3F847AE140000000
  br label %4384

; <label>:4384                                    ; preds = %4371, %4168, %4113, %4110, %4081, %4043
  %4385 = phi float [ %4095, %4081 ], [ -1.310720e+05, %4043 ], [ %4287, %4371 ], [ -1.310720e+05, %4113 ], [ -1.310720e+05, %4168 ], [ -1.310720e+05, %4110 ]
  %4386 = phi float [ %4105, %4081 ], [ 0.000000e+00, %4043 ], [ %4379, %4371 ], [ 0.000000e+00, %4113 ], [ 0.000000e+00, %4168 ], [ 0.000000e+00, %4110 ]
  %4387 = phi float [ %4107, %4081 ], [ 0.000000e+00, %4043 ], [ %4381, %4371 ], [ 0.000000e+00, %4113 ], [ 0.000000e+00, %4168 ], [ 0.000000e+00, %4110 ]
  %4388 = phi float [ %4109, %4081 ], [ 0.000000e+00, %4043 ], [ %4383, %4371 ], [ 0.000000e+00, %4113 ], [ 0.000000e+00, %4168 ], [ 0.000000e+00, %4110 ]
  %4389 = phi i1 [ true, %4081 ], [ false, %4043 ], [ true, %4371 ], [ false, %4113 ], [ false, %4168 ], [ false, %4110 ]
  %4390 = and i32 %239, 3
  %4391 = icmp eq i32 %4390, 1
  %4392 = select i1 %4391, float 1.000000e+00, float 0.000000e+00
  %4393 = fsub fast float %4385, %190
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = select i1 %4389, float %4394, float 1.000000e+00
  %4396 = fmul fast float %4395, %4392
  %4397 = icmp eq i32 %4390, 3
  %4398 = select i1 %4397, float 1.000000e+00, float %4396
  %4399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4398)  ; FMax(a,b)
  %4400 = fcmp fast olt float %4398, 1.000000e+00
  %4401 = fcmp uge float %69, 0.000000e+00
  %4402 = and i1 %4401, %4400
  br i1 %4402, label %4403, label %4413

; <label>:4403                                    ; preds = %4384
  %4404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4405 = extractvalue %dx.types.ResRet.f32 %4404, 0
  %4406 = extractvalue %dx.types.ResRet.f32 %4404, 1
  %4407 = extractvalue %dx.types.ResRet.f32 %4404, 2
  %4408 = fadd fast float %4405, %4399
  %4409 = fcmp ule float %68, 0.000000e+00
  %4410 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = select i1 %4409, float %4410, float 1.000000e+00
  %4412 = fmul fast float %4411, %4407
  br label %4413

; <label>:4413                                    ; preds = %4403, %4384
  %4414 = phi float [ %4408, %4403 ], [ %4399, %4384 ]
  %4415 = phi float [ %4406, %4403 ], [ 0.000000e+00, %4384 ]
  %4416 = phi float [ %4412, %4403 ], [ 0.000000e+00, %4384 ]
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = fcmp fast une float %4418, 0.000000e+00
  %4421 = fcmp fast une float %4419, 0.000000e+00
  %4422 = or i1 %4420, %4421
  br i1 %4422, label %4423, label %4998

; <label>:4423                                    ; preds = %4413
  br i1 %4420, label %4424, label %4697

; <label>:4424                                    ; preds = %4423
  %4425 = call float @dx.op.unary.f32(i32 23, float %3802)  ; Log(value)
  %4426 = fmul fast float %4425, 4.000000e+00
  %4427 = call float @dx.op.unary.f32(i32 21, float %4426)  ; Exp(value)
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = fmul fast float %4429, %56
  %4431 = fmul fast float %4429, %57
  %4432 = fmul fast float %4429, %58
  %4433 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4434 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4435 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4436 = call float @dx.op.unary.f32(i32 23, float %4433)  ; Log(value)
  %4437 = call float @dx.op.unary.f32(i32 23, float %4434)  ; Log(value)
  %4438 = call float @dx.op.unary.f32(i32 23, float %4435)  ; Log(value)
  %4439 = fmul fast float %4436, 4.000000e+00
  %4440 = fmul fast float %4437, 4.000000e+00
  %4441 = fmul fast float %4438, 4.000000e+00
  %4442 = call float @dx.op.unary.f32(i32 21, float %4439)  ; Exp(value)
  %4443 = call float @dx.op.unary.f32(i32 21, float %4440)  ; Exp(value)
  %4444 = call float @dx.op.unary.f32(i32 21, float %4441)  ; Exp(value)
  %4445 = fadd fast float %4443, %4442
  %4446 = fadd fast float %4445, %4444
  %4447 = fdiv fast float 1.000000e+00, %4446
  %4448 = fmul fast float %4447, %4442
  %4449 = fcmp fast ogt float %65, 0.000000e+00
  %4450 = fcmp fast ogt float %66, 0.000000e+00
  %4451 = fcmp fast ogt float %67, 0.000000e+00
  %4452 = fcmp fast olt float %65, 0.000000e+00
  %4453 = fcmp fast olt float %66, 0.000000e+00
  %4454 = fcmp fast olt float %67, 0.000000e+00
  %4455 = zext i1 %4449 to i32
  %4456 = zext i1 %4450 to i32
  %4457 = zext i1 %4451 to i32
  %4458 = zext i1 %4452 to i32
  %4459 = zext i1 %4453 to i32
  %4460 = zext i1 %4454 to i32
  %4461 = sub nsw i32 %4455, %4458
  %4462 = sub nsw i32 %4456, %4459
  %4463 = sub nsw i32 %4457, %4460
  %4464 = call float @dx.op.unary.f32(i32 83, float %4430)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %4431)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 83, float %4432)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %4430)  ; DerivCoarseY(value)
  %4468 = call float @dx.op.unary.f32(i32 84, float %4431)  ; DerivCoarseY(value)
  %4469 = call float @dx.op.unary.f32(i32 84, float %4432)  ; DerivCoarseY(value)
  %4470 = fcmp fast ole float %273, %4448
  %4471 = fmul fast float %4447, %4445
  %4472 = fcmp fast ole float %273, %4471
  %4473 = select i1 %4472, float %4432, float %4430
  %4474 = select i1 %4472, float %4430, float %4431
  %4475 = select i1 %4470, float %4431, float %4473
  %4476 = select i1 %4470, float %4432, float %4474
  %4477 = select i1 %4472, float %4466, float %4464
  %4478 = select i1 %4472, float %4464, float %4465
  %4479 = select i1 %4470, float %4465, float %4477
  %4480 = select i1 %4470, float %4466, float %4478
  %4481 = select i1 %4472, float %4469, float %4467
  %4482 = select i1 %4472, float %4467, float %4468
  %4483 = select i1 %4470, float %4468, float %4481
  %4484 = select i1 %4470, float %4469, float %4482
  %4485 = call float @dx.op.unary.f32(i32 27, float %4475)  ; Round_ni(value)
  %4486 = call float @dx.op.unary.f32(i32 27, float %4476)  ; Round_ni(value)
  %4487 = fptosi float %4485 to i32
  %4488 = fptosi float %4486 to i32
  %4489 = xor i32 %4488, %4487
  %4490 = sitofp i32 %4489 to float
  %4491 = fptosi float %4490 to i32
  %4492 = sitofp i32 %4491 to float
  %4493 = fmul fast float %4492, 0x3FE3C6EF40000000
  %4494 = frem fast float %4485, 2.560000e+02
  %4495 = frem fast float %4486, 2.560000e+02
  %4496 = fptoui float %4494 to i32
  %4497 = fptoui float %4495 to i32
  %4498 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4496, i32 %4497, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.ResRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.ResRet.f32 %4498, 2
  %4502 = fadd fast float %4499, %4493
  %4503 = fadd fast float %4500, %4493
  %4504 = fadd fast float %4501, %4493
  %4505 = call float @dx.op.unary.f32(i32 22, float %4502)  ; Frc(value)
  %4506 = call float @dx.op.unary.f32(i32 22, float %4503)  ; Frc(value)
  %4507 = call float @dx.op.unary.f32(i32 22, float %4504)  ; Frc(value)
  %4508 = fmul fast float %4507, 0x401921FB60000000
  %4509 = call float @dx.op.unary.f32(i32 13, float %4508)  ; Sin(value)
  %4510 = call float @dx.op.unary.f32(i32 12, float %4508)  ; Cos(value)
  %4511 = fsub fast float -0.000000e+00, %4510
  %4512 = fmul fast float %4510, %4475
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4509, float %4476, float %4512)  ; FMad(a,b,c)
  %4514 = fmul fast float %4509, %4475
  %4515 = call float @dx.op.tertiary.f32(i32 46, float %4511, float %4476, float %4514)  ; FMad(a,b,c)
  %4516 = fadd fast float %4513, %4505
  %4517 = fadd fast float %4515, %4506
  %4518 = extractvalue %dx.types.CBufRet.f32 %4428, 3
  %4519 = bitcast float %4518 to i32
  %4520 = icmp eq i32 %4519, 0
  br i1 %4520, label %4559, label %4521

; <label>:4521                                    ; preds = %4424
  %4522 = add i32 %4519, 0
  %4523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4523, %dx.types.Handle %106, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float %4479, float %4480, float undef, float %4483, float %4484, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4529 = fsub fast float 1.000000e+00, %4418
  %4530 = call float @dx.op.binary.f32(i32 35, float %4529, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4531 = bitcast float %4418 to i32
  %4532 = sitofp i32 %4531 to float
  %4533 = fadd fast float %4532, 0xC1CFBF8940000000
  %4534 = fmul fast float %4528, %4533
  %4535 = fadd fast float %4534, 0x41CFBF8940000000
  %4536 = fptosi float %4535 to i32
  %4537 = bitcast i32 %4536 to float
  %4538 = bitcast float %4530 to i32
  %4539 = sitofp i32 %4538 to float
  %4540 = fadd fast float %4539, 0xC1CFBF8940000000
  %4541 = fmul fast float %4540, %4528
  %4542 = fadd fast float %4541, 0x41CFBF8940000000
  %4543 = fptosi float %4542 to i32
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4537, %4527
  %4546 = fmul fast float %4544, %4527
  %4547 = fsub fast float %4530, %4545
  %4548 = fadd fast float %4546, %4530
  %4549 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4550 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4551 = fsub fast float %4525, %4549
  %4552 = fsub fast float %4550, %4549
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4555, %4551
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fcmp fast olt float %4557, 0x3F70101020000000
  br i1 %4558, label %4697, label %4559

; <label>:4559                                    ; preds = %4521, %4424
  %4560 = phi float [ %4557, %4521 ], [ %4418, %4424 ]
  %4561 = fmul fast float %4560, %4427
  %4562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.i32 %4562, 1
  %4564 = extractvalue %dx.types.CBufRet.i32 %4562, 0
  %4565 = add i32 %4564, 0
  %4566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4567 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4566, %dx.types.Handle %105, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float %4479, float %4480, float undef, float %4483, float %4484, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = and i32 %4563, 255
  %4573 = uitofp i32 %4572 to float
  %4574 = lshr i32 %4563, 8
  %4575 = and i32 %4574, 255
  %4576 = uitofp i32 %4575 to float
  %4577 = fmul fast float %4571, %4573
  %4578 = fadd fast float %4577, %4576
  %4579 = fmul fast float %4578, 0x3F70101000000000
  %4580 = fadd fast float %4579, 0xBFB99999A0000000
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fmul fast float %4581, 0x3FF1C71C80000000
  %4583 = call float @dx.op.binary.f32(i32 36, float %4579, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4584 = fsub fast float 1.000000e+00, %4582
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4585, %4568
  %4587 = fmul fast float %4585, %4569
  %4588 = fmul fast float %4585, %4570
  %4589 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4591 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4592 = fmul fast float %4582, %4568
  %4593 = fmul fast float %4582, %4569
  %4594 = fmul fast float %4582, %4570
  %4595 = fadd fast float %4592, %4583
  %4596 = fadd fast float %4593, %4583
  %4597 = fadd fast float %4594, %4583
  %4598 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.i32 %4601, 3
  %4603 = extractvalue %dx.types.CBufRet.i32 %4601, 2
  %4604 = add i32 %4603, 0
  %4605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4605, %dx.types.Handle %105, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float %4479, float %4480, float undef, float %4483, float %4484, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = and i32 %4602, 255
  %4612 = uitofp i32 %4611 to float
  %4613 = lshr i32 %4602, 8
  %4614 = and i32 %4613, 255
  %4615 = uitofp i32 %4614 to float
  %4616 = lshr i32 %4602, 16
  %4617 = and i32 %4616, 255
  %4618 = uitofp i32 %4617 to float
  %4619 = fmul fast float %4618, 0x3F70101000000000
  %4620 = fmul fast float %4607, %4612
  %4621 = fadd fast float %4620, %4615
  %4622 = fmul fast float %4621, 0x3F70101000000000
  %4623 = fadd fast float %4608, -5.000000e-01
  %4624 = fadd fast float %4610, -5.000000e-01
  %4625 = fmul fast float %4623, %4619
  %4626 = fmul fast float %4624, %4619
  %4627 = fadd fast float %4625, 5.000000e-01
  %4628 = fadd fast float %4626, 5.000000e-01
  %4629 = fmul fast float %4627, 2.000000e+00
  %4630 = fadd fast float %4629, -1.000000e+00
  %4631 = fmul fast float %4628, 2.000000e+00
  %4632 = fadd fast float %4631, -1.000000e+00
  %4633 = fadd fast float %4630, %4632
  %4634 = fmul fast float %4633, 5.000000e-01
  %4635 = fsub fast float %4630, %4632
  %4636 = fmul fast float %4635, 5.000000e-01
  %4637 = call float @dx.op.unary.f32(i32 6, float %4634)  ; FAbs(value)
  %4638 = fsub fast float 1.000000e+00, %4637
  %4639 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4640 = fsub fast float %4638, %4639
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4636, float %4640, float %4634, float %4636, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 25, float %4641)  ; Rsqrt(value)
  %4643 = fmul fast float %4634, %4642
  %4644 = fmul fast float %4636, %4642
  %4645 = select i1 %4472, i32 %4462, i32 %4463
  %4646 = select i1 %4470, i32 %4461, i32 %4645
  %4647 = sitofp i32 %4646 to float
  %4648 = fmul fast float %4640, %4647
  %4649 = fmul fast float %4648, %4642
  %4650 = select i1 %4472, float %4649, float %4644
  %4651 = select i1 %4472, float %4644, float %4649
  %4652 = select i1 %4470, float %4649, float %4643
  %4653 = select i1 %4470, float %4644, float %4650
  %4654 = select i1 %4470, float %4643, float %4651
  %4655 = fsub fast float %4589, %3935
  %4656 = fsub fast float %4590, %3936
  %4657 = fsub fast float %4591, %3937
  %4658 = fmul fast float %4655, %4561
  %4659 = fmul fast float %4656, %4561
  %4660 = fmul fast float %4657, %4561
  %4661 = fadd fast float %4658, %3935
  %4662 = fadd fast float %4659, %3936
  %4663 = fadd fast float %4660, %3937
  %4664 = fsub fast float %4598, %3898
  %4665 = fsub fast float %4599, %3899
  %4666 = fsub fast float %4600, %3900
  %4667 = fmul fast float %4664, %4561
  %4668 = fmul fast float %4665, %4561
  %4669 = fmul fast float %4666, %4561
  %4670 = fadd fast float %4667, %3898
  %4671 = fadd fast float %4668, %3899
  %4672 = fadd fast float %4669, %3900
  %4673 = fadd fast float %4652, %3877
  %4674 = fadd fast float %4653, %3878
  %4675 = fadd fast float %4654, %3879
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4674, float %4675, float %4673, float %4674, float %4675)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 25, float %4676)  ; Rsqrt(value)
  %4678 = fmul fast float %4673, %4677
  %4679 = fmul fast float %4674, %4677
  %4680 = fmul fast float %4675, %4677
  %4681 = fsub fast float %4678, %3877
  %4682 = fsub fast float %4679, %3878
  %4683 = fsub fast float %4680, %3879
  %4684 = fmul fast float %4681, %4561
  %4685 = fmul fast float %4682, %4561
  %4686 = fmul fast float %4683, %4561
  %4687 = fadd fast float %4684, %3877
  %4688 = fadd fast float %4685, %3878
  %4689 = fadd fast float %4686, %3879
  %4690 = call float @dx.op.binary.f32(i32 36, float %3802, float %4609)  ; FMin(a,b)
  %4691 = fsub fast float %4690, %3802
  %4692 = fmul fast float %4691, %4561
  %4693 = fadd fast float %4692, %3802
  %4694 = fsub fast float %4622, %4008
  %4695 = fmul fast float %4694, %4561
  %4696 = fadd fast float %4695, %4008
  br label %4697

; <label>:4697                                    ; preds = %4559, %4521, %4423
  %4698 = phi float [ %4670, %4559 ], [ %3898, %4521 ], [ %3898, %4423 ]
  %4699 = phi float [ %4671, %4559 ], [ %3899, %4521 ], [ %3899, %4423 ]
  %4700 = phi float [ %4672, %4559 ], [ %3900, %4521 ], [ %3900, %4423 ]
  %4701 = phi float [ %4687, %4559 ], [ %3877, %4521 ], [ %3877, %4423 ]
  %4702 = phi float [ %4688, %4559 ], [ %3878, %4521 ], [ %3878, %4423 ]
  %4703 = phi float [ %4689, %4559 ], [ %3879, %4521 ], [ %3879, %4423 ]
  %4704 = phi float [ %4661, %4559 ], [ %3935, %4521 ], [ %3935, %4423 ]
  %4705 = phi float [ %4662, %4559 ], [ %3936, %4521 ], [ %3936, %4423 ]
  %4706 = phi float [ %4663, %4559 ], [ %3937, %4521 ], [ %3937, %4423 ]
  %4707 = phi float [ %4696, %4559 ], [ %4008, %4521 ], [ %4008, %4423 ]
  %4708 = phi float [ %4693, %4559 ], [ %3802, %4521 ], [ %3802, %4423 ]
  br i1 %4421, label %4709, label %4998

; <label>:4709                                    ; preds = %4697
  %4710 = call float @dx.op.unary.f32(i32 23, float %4708)  ; Log(value)
  %4711 = fmul fast float %4710, 4.000000e+00
  %4712 = call float @dx.op.unary.f32(i32 21, float %4711)  ; Exp(value)
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4715 = fmul fast float %4714, %56
  %4716 = fmul fast float %4714, %57
  %4717 = fmul fast float %4714, %58
  %4718 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4719 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4720 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4721 = call float @dx.op.unary.f32(i32 23, float %4718)  ; Log(value)
  %4722 = call float @dx.op.unary.f32(i32 23, float %4719)  ; Log(value)
  %4723 = call float @dx.op.unary.f32(i32 23, float %4720)  ; Log(value)
  %4724 = fmul fast float %4721, 4.000000e+00
  %4725 = fmul fast float %4722, 4.000000e+00
  %4726 = fmul fast float %4723, 4.000000e+00
  %4727 = call float @dx.op.unary.f32(i32 21, float %4724)  ; Exp(value)
  %4728 = call float @dx.op.unary.f32(i32 21, float %4725)  ; Exp(value)
  %4729 = call float @dx.op.unary.f32(i32 21, float %4726)  ; Exp(value)
  %4730 = fadd fast float %4728, %4727
  %4731 = fadd fast float %4730, %4729
  %4732 = fdiv fast float 1.000000e+00, %4731
  %4733 = fmul fast float %4732, %4727
  %4734 = fcmp fast ogt float %65, 0.000000e+00
  %4735 = fcmp fast ogt float %66, 0.000000e+00
  %4736 = fcmp fast ogt float %67, 0.000000e+00
  %4737 = fcmp fast olt float %65, 0.000000e+00
  %4738 = fcmp fast olt float %66, 0.000000e+00
  %4739 = fcmp fast olt float %67, 0.000000e+00
  %4740 = zext i1 %4734 to i32
  %4741 = zext i1 %4735 to i32
  %4742 = zext i1 %4736 to i32
  %4743 = zext i1 %4737 to i32
  %4744 = zext i1 %4738 to i32
  %4745 = zext i1 %4739 to i32
  %4746 = sub nsw i32 %4740, %4743
  %4747 = sub nsw i32 %4741, %4744
  %4748 = sub nsw i32 %4742, %4745
  %4749 = call float @dx.op.unary.f32(i32 83, float %4715)  ; DerivCoarseX(value)
  %4750 = call float @dx.op.unary.f32(i32 83, float %4716)  ; DerivCoarseX(value)
  %4751 = call float @dx.op.unary.f32(i32 83, float %4717)  ; DerivCoarseX(value)
  %4752 = call float @dx.op.unary.f32(i32 84, float %4715)  ; DerivCoarseY(value)
  %4753 = call float @dx.op.unary.f32(i32 84, float %4716)  ; DerivCoarseY(value)
  %4754 = call float @dx.op.unary.f32(i32 84, float %4717)  ; DerivCoarseY(value)
  %4755 = fcmp fast ole float %273, %4733
  %4756 = fmul fast float %4732, %4730
  %4757 = fcmp fast ole float %273, %4756
  %4758 = select i1 %4757, float %4717, float %4715
  %4759 = select i1 %4757, float %4715, float %4716
  %4760 = select i1 %4755, float %4716, float %4758
  %4761 = select i1 %4755, float %4717, float %4759
  %4762 = select i1 %4757, float %4751, float %4749
  %4763 = select i1 %4757, float %4749, float %4750
  %4764 = select i1 %4755, float %4750, float %4762
  %4765 = select i1 %4755, float %4751, float %4763
  %4766 = select i1 %4757, float %4754, float %4752
  %4767 = select i1 %4757, float %4752, float %4753
  %4768 = select i1 %4755, float %4753, float %4766
  %4769 = select i1 %4755, float %4754, float %4767
  %4770 = call float @dx.op.unary.f32(i32 27, float %4760)  ; Round_ni(value)
  %4771 = call float @dx.op.unary.f32(i32 27, float %4761)  ; Round_ni(value)
  %4772 = fptosi float %4770 to i32
  %4773 = fptosi float %4771 to i32
  %4774 = xor i32 %4773, %4772
  %4775 = sitofp i32 %4774 to float
  %4776 = fptosi float %4775 to i32
  %4777 = sitofp i32 %4776 to float
  %4778 = fmul fast float %4777, 0x3FE3C6EF40000000
  %4779 = frem fast float %4770, 2.560000e+02
  %4780 = frem fast float %4771, 2.560000e+02
  %4781 = fptoui float %4779 to i32
  %4782 = fptoui float %4780 to i32
  %4783 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4781, i32 %4782, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.ResRet.f32 %4783, 1
  %4786 = extractvalue %dx.types.ResRet.f32 %4783, 2
  %4787 = fadd fast float %4784, %4778
  %4788 = fadd fast float %4785, %4778
  %4789 = fadd fast float %4786, %4778
  %4790 = call float @dx.op.unary.f32(i32 22, float %4787)  ; Frc(value)
  %4791 = call float @dx.op.unary.f32(i32 22, float %4788)  ; Frc(value)
  %4792 = call float @dx.op.unary.f32(i32 22, float %4789)  ; Frc(value)
  %4793 = fmul fast float %4792, 0x401921FB60000000
  %4794 = call float @dx.op.unary.f32(i32 13, float %4793)  ; Sin(value)
  %4795 = call float @dx.op.unary.f32(i32 12, float %4793)  ; Cos(value)
  %4796 = fsub fast float -0.000000e+00, %4795
  %4797 = fmul fast float %4795, %4760
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4794, float %4761, float %4797)  ; FMad(a,b,c)
  %4799 = fmul fast float %4794, %4760
  %4800 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4761, float %4799)  ; FMad(a,b,c)
  %4801 = fadd fast float %4798, %4790
  %4802 = fadd fast float %4800, %4791
  %4803 = extractvalue %dx.types.CBufRet.f32 %4713, 3
  %4804 = bitcast float %4803 to i32
  %4805 = icmp eq i32 %4804, 0
  br i1 %4805, label %4844, label %4806

; <label>:4806                                    ; preds = %4709
  %4807 = add i32 %4804, 0
  %4808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4808, %dx.types.Handle %106, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float %4764, float %4765, float undef, float %4768, float %4769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 2
  %4814 = fsub fast float 1.000000e+00, %4419
  %4815 = call float @dx.op.binary.f32(i32 35, float %4814, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4816 = bitcast float %4419 to i32
  %4817 = sitofp i32 %4816 to float
  %4818 = fadd fast float %4817, 0xC1CFBF8940000000
  %4819 = fmul fast float %4813, %4818
  %4820 = fadd fast float %4819, 0x41CFBF8940000000
  %4821 = fptosi float %4820 to i32
  %4822 = bitcast i32 %4821 to float
  %4823 = bitcast float %4815 to i32
  %4824 = sitofp i32 %4823 to float
  %4825 = fadd fast float %4824, 0xC1CFBF8940000000
  %4826 = fmul fast float %4825, %4813
  %4827 = fadd fast float %4826, 0x41CFBF8940000000
  %4828 = fptosi float %4827 to i32
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4822, %4812
  %4831 = fmul fast float %4829, %4812
  %4832 = fsub fast float %4815, %4830
  %4833 = fadd fast float %4831, %4815
  %4834 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4836 = fsub fast float %4810, %4834
  %4837 = fsub fast float %4835, %4834
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, %4836
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fcmp fast olt float %4842, 0x3F70101020000000
  br i1 %4843, label %4998, label %4844

; <label>:4844                                    ; preds = %4806, %4709
  %4845 = phi float [ %4842, %4806 ], [ %4419, %4709 ]
  %4846 = fmul fast float %4845, %4712
  %4847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.i32 %4847, 1
  %4849 = extractvalue %dx.types.CBufRet.i32 %4847, 0
  %4850 = add i32 %4849, 0
  %4851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4851, %dx.types.Handle %105, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float %4764, float %4765, float undef, float %4768, float %4769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.ResRet.f32 %4852, 3
  %4857 = and i32 %4848, 255
  %4858 = uitofp i32 %4857 to float
  %4859 = lshr i32 %4848, 8
  %4860 = and i32 %4859, 255
  %4861 = uitofp i32 %4860 to float
  %4862 = fmul fast float %4856, %4858
  %4863 = fadd fast float %4862, %4861
  %4864 = fmul fast float %4863, 0x3F70101000000000
  %4865 = fadd fast float %4864, 0xBFB99999A0000000
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fmul fast float %4866, 0x3FF1C71C80000000
  %4868 = call float @dx.op.binary.f32(i32 36, float %4864, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4869 = fsub fast float 1.000000e+00, %4867
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4870, %4853
  %4872 = fmul fast float %4870, %4854
  %4873 = fmul fast float %4870, %4855
  %4874 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4875 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = fmul fast float %4867, %4853
  %4878 = fmul fast float %4867, %4854
  %4879 = fmul fast float %4867, %4855
  %4880 = fadd fast float %4877, %4868
  %4881 = fadd fast float %4878, %4868
  %4882 = fadd fast float %4879, %4868
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4884 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.i32 %4886, 3
  %4888 = extractvalue %dx.types.CBufRet.i32 %4886, 2
  %4889 = add i32 %4888, 0
  %4890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4890, %dx.types.Handle %105, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float %4764, float %4765, float undef, float %4768, float %4769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.ResRet.f32 %4891, 3
  %4896 = and i32 %4887, 255
  %4897 = uitofp i32 %4896 to float
  %4898 = lshr i32 %4887, 8
  %4899 = and i32 %4898, 255
  %4900 = uitofp i32 %4899 to float
  %4901 = lshr i32 %4887, 16
  %4902 = and i32 %4901, 255
  %4903 = uitofp i32 %4902 to float
  %4904 = fmul fast float %4903, 0x3F70101000000000
  %4905 = fmul fast float %4892, %4897
  %4906 = fadd fast float %4905, %4900
  %4907 = fmul fast float %4906, 0x3F70101000000000
  %4908 = fadd fast float %4893, -5.000000e-01
  %4909 = fadd fast float %4895, -5.000000e-01
  %4910 = fmul fast float %4908, %4904
  %4911 = fmul fast float %4909, %4904
  %4912 = fadd fast float %4910, 5.000000e-01
  %4913 = fadd fast float %4911, 5.000000e-01
  %4914 = fmul fast float %4912, 2.000000e+00
  %4915 = fadd fast float %4914, -1.000000e+00
  %4916 = fmul fast float %4913, 2.000000e+00
  %4917 = fadd fast float %4916, -1.000000e+00
  %4918 = fadd fast float %4915, %4917
  %4919 = fmul fast float %4918, 5.000000e-01
  %4920 = fsub fast float %4915, %4917
  %4921 = fmul fast float %4920, 5.000000e-01
  %4922 = call float @dx.op.unary.f32(i32 6, float %4919)  ; FAbs(value)
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4925 = fsub fast float %4923, %4924
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4921, float %4925, float %4919, float %4921, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4919, %4927
  %4929 = fmul fast float %4921, %4927
  %4930 = select i1 %4757, i32 %4747, i32 %4748
  %4931 = select i1 %4755, i32 %4746, i32 %4930
  %4932 = sitofp i32 %4931 to float
  %4933 = fmul fast float %4925, %4932
  %4934 = fmul fast float %4933, %4927
  %4935 = select i1 %4757, float %4934, float %4929
  %4936 = select i1 %4757, float %4929, float %4934
  %4937 = select i1 %4755, float %4934, float %4928
  %4938 = select i1 %4755, float %4929, float %4935
  %4939 = select i1 %4755, float %4928, float %4936
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = fptoui float %4941 to i32
  %4943 = add i32 %4942, 0
  %4944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4944, %dx.types.Handle %105, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float %4764, float %4765, float undef, float %4768, float %4769, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = fsub fast float %4874, %4704
  %4948 = fsub fast float %4875, %4705
  %4949 = fsub fast float %4876, %4706
  %4950 = fmul fast float %4947, %4846
  %4951 = fmul fast float %4948, %4846
  %4952 = fmul fast float %4949, %4846
  %4953 = fadd fast float %4950, %4704
  %4954 = fadd fast float %4951, %4705
  %4955 = fadd fast float %4952, %4706
  %4956 = fsub fast float %4883, %4698
  %4957 = fsub fast float %4884, %4699
  %4958 = fsub fast float %4885, %4700
  %4959 = fmul fast float %4956, %4846
  %4960 = fmul fast float %4957, %4846
  %4961 = fmul fast float %4958, %4846
  %4962 = fadd fast float %4959, %4698
  %4963 = fadd fast float %4960, %4699
  %4964 = fadd fast float %4961, %4700
  %4965 = fadd fast float %4937, %4701
  %4966 = fadd fast float %4938, %4702
  %4967 = fadd fast float %4939, %4703
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4965, float %4966, float %4967, float %4965, float %4966, float %4967)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 25, float %4968)  ; Rsqrt(value)
  %4970 = fmul fast float %4969, %4965
  %4971 = fmul fast float %4969, %4966
  %4972 = fmul fast float %4969, %4967
  %4973 = fsub fast float %4970, %4701
  %4974 = fsub fast float %4971, %4702
  %4975 = fsub fast float %4972, %4703
  %4976 = fmul fast float %4973, %4846
  %4977 = fmul fast float %4974, %4846
  %4978 = fmul fast float %4975, %4846
  %4979 = fadd fast float %4976, %4701
  %4980 = fadd fast float %4977, %4702
  %4981 = fadd fast float %4978, %4703
  %4982 = call float @dx.op.binary.f32(i32 36, float %4708, float %4894)  ; FMin(a,b)
  %4983 = fsub fast float %4982, %4708
  %4984 = fmul fast float %4983, %4846
  %4985 = fadd fast float %4984, %4708
  %4986 = fsub fast float %4907, %4707
  %4987 = fmul fast float %4986, %4846
  %4988 = fadd fast float %4987, %4707
  %4989 = fsub fast float %4946, %3939
  %4990 = fsub fast float %4946, %3940
  %4991 = fsub fast float %4946, %3941
  %4992 = fmul fast float %4989, %4846
  %4993 = fmul fast float %4990, %4846
  %4994 = fmul fast float %4991, %4846
  %4995 = fadd fast float %4992, %3939
  %4996 = fadd fast float %4993, %3940
  %4997 = fadd fast float %4994, %3941
  br label %4998

; <label>:4998                                    ; preds = %4844, %4806, %4697, %4413
  %4999 = phi float [ %4962, %4844 ], [ %4698, %4806 ], [ %4698, %4697 ], [ %3898, %4413 ]
  %5000 = phi float [ %4963, %4844 ], [ %4699, %4806 ], [ %4699, %4697 ], [ %3899, %4413 ]
  %5001 = phi float [ %4964, %4844 ], [ %4700, %4806 ], [ %4700, %4697 ], [ %3900, %4413 ]
  %5002 = phi float [ %4979, %4844 ], [ %4701, %4806 ], [ %4701, %4697 ], [ %3877, %4413 ]
  %5003 = phi float [ %4980, %4844 ], [ %4702, %4806 ], [ %4702, %4697 ], [ %3878, %4413 ]
  %5004 = phi float [ %4981, %4844 ], [ %4703, %4806 ], [ %4703, %4697 ], [ %3879, %4413 ]
  %5005 = phi float [ %4995, %4844 ], [ %3939, %4806 ], [ %3939, %4697 ], [ %3939, %4413 ]
  %5006 = phi float [ %4996, %4844 ], [ %3940, %4806 ], [ %3940, %4697 ], [ %3940, %4413 ]
  %5007 = phi float [ %4997, %4844 ], [ %3941, %4806 ], [ %3941, %4697 ], [ %3941, %4413 ]
  %5008 = phi float [ %4953, %4844 ], [ %4704, %4806 ], [ %4704, %4697 ], [ %3935, %4413 ]
  %5009 = phi float [ %4954, %4844 ], [ %4705, %4806 ], [ %4705, %4697 ], [ %3936, %4413 ]
  %5010 = phi float [ %4955, %4844 ], [ %4706, %4806 ], [ %4706, %4697 ], [ %3937, %4413 ]
  %5011 = phi float [ %4988, %4844 ], [ %4707, %4806 ], [ %4707, %4697 ], [ %4008, %4413 ]
  %5012 = phi float [ %4985, %4844 ], [ %4708, %4806 ], [ %4708, %4697 ], [ %3802, %4413 ]
  %5013 = fcmp fast une float %4417, 0.000000e+00
  br i1 %5013, label %5014, label %5183

; <label>:5014                                    ; preds = %4998
  %5015 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.unary.f32(i32 25, float %5015)  ; Rsqrt(value)
  %5017 = fmul fast float %188, %5016
  %5018 = fsub fast float -0.000000e+00, %5017
  %5019 = fmul fast float %189, %5016
  %5020 = fsub fast float -0.000000e+00, %5019
  %5021 = fmul fast float %190, %5016
  %5022 = fsub fast float -0.000000e+00, %5021
  %5023 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5020, float %5022, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = fmul fast float %4417, 2.500000e+00
  %5025 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5026 = fmul fast float %4417, 0x4013FFFFE0000000
  %5027 = fadd fast float %5026, 0xBFFFFFFFE0000000
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = fmul fast float %4417, 0x4004000020000000
  %5030 = fadd fast float %5029, 0xBFF8000040000000
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fmul fast float %3880, 1.000000e+01
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fmul fast float %5033, 2.000000e+00
  %5035 = fsub fast float 3.000000e+00, %5034
  %5036 = fmul fast float %5033, %5033
  %5037 = fmul fast float %5036, %5035
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = fsub fast float 0x3FE3333340000000, %5011
  %5040 = fmul fast float %5039, 0x400AAAAAA0000000
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5038, %5041
  %5043 = fmul fast float %5008, 0x3FEA2B8620000000
  %5044 = fmul fast float %5009, 0x3FEA2B8620000000
  %5045 = fmul fast float %5010, 0x3FEA2B8620000000
  %5046 = fadd fast float %5043, 0x3FC81DFBA0000000
  %5047 = fmul fast float %5046, %5008
  %5048 = fadd fast float %5047, 0x3F910E6020000000
  %5049 = fadd fast float %5044, 0x3FC81DFBA0000000
  %5050 = fmul fast float %5049, %5009
  %5051 = fadd fast float %5050, 0x3F910E6020000000
  %5052 = fadd fast float %5045, 0x3FC81DFBA0000000
  %5053 = fmul fast float %5052, %5010
  %5054 = fadd fast float %5053, 0x3F910E6020000000
  %5055 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5056 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5058 = fsub fast float %5055, %5008
  %5059 = fsub fast float %5056, %5009
  %5060 = fsub fast float %5057, %5010
  %5061 = fmul fast float %5058, %5025
  %5062 = fmul fast float %5061, %5042
  %5063 = fmul fast float %5059, %5025
  %5064 = fmul fast float %5063, %5042
  %5065 = fmul fast float %5060, %5025
  %5066 = fmul fast float %5065, %5042
  %5067 = fadd fast float %5062, %5008
  %5068 = fadd fast float %5064, %5009
  %5069 = fadd fast float %5066, %5010
  %5070 = fmul fast float %5012, %5012
  %5071 = fmul fast float %5070, %5070
  %5072 = fadd fast float %5028, 1.000000e+00
  %5073 = fsub fast float %5072, %5042
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fsub fast float 1.000000e+00, %5071
  %5078 = call float @dx.op.binary.f32(i32 36, float %5074, float %5077)  ; FMin(a,b)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5080 = call float @dx.op.binary.f32(i32 35, float %5078, float %5079)  ; FMax(a,b)
  %5081 = fadd fast float %5076, 0xBFE4CCCCC0000000
  %5082 = fmul fast float %5081, 0x4006DB6DA0000000
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, 2.000000e+00
  %5085 = fsub fast float 3.000000e+00, %5084
  %5086 = bitcast float %4999 to i32
  %5087 = ashr i32 %5086, 1
  %5088 = add nsw i32 %5087, 532487669
  %5089 = bitcast i32 %5088 to float
  %5090 = fsub fast float 1.000000e+00, %5089
  %5091 = bitcast float %5090 to i32
  %5092 = sub nsw i32 2129859010, %5091
  %5093 = bitcast i32 %5092 to float
  %5094 = fmul fast float %5093, 2.000000e+00
  %5095 = bitcast float %5000 to i32
  %5096 = ashr i32 %5095, 1
  %5097 = add nsw i32 %5096, 532487669
  %5098 = bitcast i32 %5097 to float
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = bitcast float %5099 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5102, 2.000000e+00
  %5104 = bitcast float %5001 to i32
  %5105 = ashr i32 %5104, 1
  %5106 = add nsw i32 %5105, 532487669
  %5107 = bitcast i32 %5106 to float
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = bitcast float %5108 to i32
  %5110 = sub nsw i32 2129859010, %5109
  %5111 = bitcast i32 %5110 to float
  %5112 = fmul fast float %5111, 2.000000e+00
  %5113 = fsub fast float 0x4002A9FBE0000000, %5094
  %5114 = fadd fast float %5094, 0x3FD54FDF00000000
  %5115 = bitcast float %5114 to i32
  %5116 = sub nsw i32 2129859010, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = fmul fast float %5117, %5113
  %5119 = fmul fast float %5118, %5118
  %5120 = fsub fast float 0x4002A9FBE0000000, %5103
  %5121 = fadd fast float %5103, 0x3FD54FDF00000000
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = fmul fast float %5124, %5120
  %5126 = fmul fast float %5125, %5125
  %5127 = fsub fast float 0x4002A9FBE0000000, %5112
  %5128 = fadd fast float %5112, 0x3FD54FDF00000000
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %5132, %5132
  %5134 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5119)  ; FMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5126)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5133)  ; FMax(a,b)
  %5137 = fsub fast float 1.000000e+00, %5023
  %5138 = fadd fast float %5137, %5038
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fsub fast float 1.000000e+00, %4398
  %5141 = fmul fast float %5080, %5140
  %5142 = fmul fast float %5083, %5083
  %5143 = fmul fast float %5142, %5141
  %5144 = fmul fast float %5143, %5085
  %5145 = fmul fast float %5140, 0xBFE99999A0000000
  %5146 = fmul fast float %5145, %5025
  %5147 = fmul fast float %5146, %5042
  %5148 = fadd fast float %5147, 1.000000e+00
  %5149 = fadd fast float %5011, -1.000000e+00
  %5150 = fmul fast float %5148, %5149
  %5151 = fadd fast float %5150, 1.000000e+00
  %5152 = fsub fast float %5134, %4999
  %5153 = fsub fast float %5135, %5000
  %5154 = fsub fast float %5136, %5001
  %5155 = fmul fast float %5144, %5152
  %5156 = fmul fast float %5144, %5153
  %5157 = fmul fast float %5144, %5154
  %5158 = fadd fast float %5155, %4999
  %5159 = fadd fast float %5156, %5000
  %5160 = fadd fast float %5157, %5001
  %5161 = fsub fast float %116, %5002
  %5162 = fsub fast float %117, %5003
  %5163 = fsub fast float %118, %5004
  %5164 = fmul fast float %5144, %5161
  %5165 = fmul fast float %5144, %5162
  %5166 = fmul fast float %5144, %5163
  %5167 = fadd fast float %5164, %5002
  %5168 = fadd fast float %5165, %5003
  %5169 = fadd fast float %5166, %5004
  %5170 = fmul fast float %5144, %5139
  %5171 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = fmul fast float %5170, %5172
  %5174 = fadd fast float %5173, %5171
  %5175 = fsub fast float 1.000000e+00, %5012
  %5176 = fmul fast float %5144, %5175
  %5177 = fadd fast float %5176, %5012
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5167, float %5168, float %5169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.unary.f32(i32 25, float %5178)  ; Rsqrt(value)
  %5180 = fmul fast float %5167, %5179
  %5181 = fmul fast float %5168, %5179
  %5182 = fmul fast float %5169, %5179
  br label %5183

; <label>:5183                                    ; preds = %5014, %4998
  %5184 = phi float [ %5158, %5014 ], [ %4999, %4998 ]
  %5185 = phi float [ %5159, %5014 ], [ %5000, %4998 ]
  %5186 = phi float [ %5160, %5014 ], [ %5001, %4998 ]
  %5187 = phi float [ %5180, %5014 ], [ %5002, %4998 ]
  %5188 = phi float [ %5181, %5014 ], [ %5003, %4998 ]
  %5189 = phi float [ %5182, %5014 ], [ %5004, %4998 ]
  %5190 = phi float [ %5067, %5014 ], [ %5008, %4998 ]
  %5191 = phi float [ %5068, %5014 ], [ %5009, %4998 ]
  %5192 = phi float [ %5069, %5014 ], [ %5010, %4998 ]
  %5193 = phi float [ %5174, %5014 ], [ %5011, %4998 ]
  %5194 = phi float [ %5177, %5014 ], [ %5012, %4998 ]
  %5195 = fsub fast float -0.000000e+00, %5189
  %5196 = fsub fast float -0.000000e+00, %5188
  %5197 = fsub fast float -0.000000e+00, %5187
  %5198 = icmp eq i32 %55, 0
  br i1 %5198, label %5229, label %5199

; <label>:5199                                    ; preds = %5183
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = extractvalue %dx.types.CBufRet.f32 %5200, 3
  %5203 = fmul fast float %5201, %109
  %5204 = fmul fast float %5202, %110
  %5205 = fmul fast float %5203, 1.024000e+03
  %5206 = fmul fast float %5204, 1.024000e+03
  %5207 = fadd fast float %5205, -5.120000e+02
  %5208 = fadd fast float %5206, -5.120000e+02
  %5209 = fmul fast float %5203, 0x4081BEDF00000000
  %5210 = fadd fast float %5209, 0xC071BEDF00000000
  %5211 = call float @dx.op.unary.f32(i32 22, float %5210)  ; Frc(value)
  %5212 = fmul fast float %5207, %5211
  %5213 = fadd fast float %5212, %5208
  %5214 = fmul fast float %5204, 0x4073BEBE20000000
  %5215 = fadd fast float %5214, 0xC063BEBE20000000
  %5216 = call float @dx.op.unary.f32(i32 22, float %5215)  ; Frc(value)
  %5217 = fmul fast float %5208, %5216
  %5218 = fadd fast float %5217, %5207
  %5219 = fmul fast float %5213, %5218
  %5220 = call float @dx.op.unary.f32(i32 22, float %5219)  ; Frc(value)
  %5221 = add i32 %317, 12
  %5222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.i32 %5222, 0
  %5224 = and i32 %5223, 255
  %5225 = uitofp i32 %5224 to float
  %5226 = fmul fast float %5225, 0x3F70101020000000
  %5227 = fcmp fast olt float %5220, %5226
  br i1 %5227, label %5228, label %5229

; <label>:5228                                    ; preds = %5199
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5229

; <label>:5229                                    ; preds = %5228, %5199, %5183
  %5230 = fsub fast float -0.000000e+00, %190
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5234 = fmul fast float %137, %5232
  %5235 = fmul fast float %139, %5233
  %5236 = fsub fast float 1.000000e+00, %5234
  %5237 = fsub fast float 1.000000e+00, %5235
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5242 = fmul fast float %5236, %5239
  %5243 = fmul fast float %5236, %5240
  %5244 = fmul fast float %5236, %5241
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5249 = fmul fast float %5237, %5246
  %5250 = fmul fast float %5237, %5247
  %5251 = fmul fast float %5237, %5248
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = fadd fast float %5249, %5253
  %5257 = fadd fast float %5256, %5242
  %5258 = fadd fast float %5250, %5254
  %5259 = fadd fast float %5258, %5243
  %5260 = fadd fast float %5251, %5255
  %5261 = fadd fast float %5260, %5244
  %5262 = fmul fast float %5257, %100
  %5263 = fmul fast float %5259, %100
  %5264 = fmul fast float %5261, %100
  %5265 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  %5267 = fmul fast float %5266, %188
  %5268 = fmul fast float %5266, %189
  %5269 = fmul fast float %5266, %190
  %5270 = fsub fast float -0.000000e+00, %5267
  %5271 = fsub fast float -0.000000e+00, %5268
  %5272 = fsub fast float -0.000000e+00, %5269
  %5273 = select i1 %260, float 0.000000e+00, float %5186
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5270, float %5271, float %5272)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5268, %3992
  %5277 = fmul fast float %5269, %3991
  %5278 = fsub fast float %5276, %5277
  %5279 = fmul fast float %5269, %3990
  %5280 = fmul fast float %5267, %3992
  %5281 = fsub fast float %5279, %5280
  %5282 = fmul fast float %5267, %3991
  %5283 = fmul fast float %5268, %3990
  %5284 = fsub fast float %5282, %5283
  %5285 = fmul fast float %5281, %3992
  %5286 = fmul fast float %5284, %3991
  %5287 = fmul fast float %5284, %3990
  %5288 = fmul fast float %5278, %3992
  %5289 = fmul fast float %5278, %3991
  %5290 = fmul fast float %5281, %3990
  %5291 = fsub fast float %5197, %5286
  %5292 = fadd fast float %5291, %5285
  %5293 = fsub fast float %5196, %5288
  %5294 = fadd fast float %5293, %5287
  %5295 = fsub fast float %5195, %5290
  %5296 = fadd fast float %5295, %5289
  %5297 = fmul fast float %5292, %3975
  %5298 = fmul fast float %5294, %3975
  %5299 = fmul fast float %5296, %3975
  %5300 = fadd fast float %5297, %5187
  %5301 = fadd fast float %5298, %5188
  %5302 = fadd fast float %5299, %5189
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5300, float %5301, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 25, float %5303)  ; Rsqrt(value)
  %5305 = fmul fast float %5300, %5304
  %5306 = fmul fast float %5301, %5304
  %5307 = fmul fast float %5302, %5304
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float %5305, float %5306, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = fmul fast float %5305, %5309
  %5311 = fmul fast float %5306, %5309
  %5312 = fmul fast float %5307, %5309
  %5313 = fsub fast float %5267, %5310
  %5314 = fsub fast float %5268, %5311
  %5315 = fsub fast float %5269, %5312
  %5316 = call float @dx.op.binary.f32(i32 36, float %5194, float 1.000000e+00)  ; FMin(a,b)
  %5317 = fsub fast float 1.000000e+00, %5194
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5322 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = fcmp fast oeq float %5322, 0.000000e+00
  %5324 = fcmp fast oeq float %5321, 0.000000e+00
  %5325 = or i1 %5324, %5323
  br i1 %5325, label %5355, label %5326

; <label>:5326                                    ; preds = %5229
  %5327 = fsub fast float -0.000000e+00, %83
  %5328 = fsub fast float -0.000000e+00, %81
  %5329 = call float @dx.op.unary.f32(i32 24, float %5322)  ; Sqrt(value)
  %5330 = fdiv fast float %5329, %5321
  %5331 = fcmp fast ogt float %5330, 0x3FFB6F8900000000
  %5332 = select i1 %5331, float 0x3FFB6F8900000000, float %5330
  %5333 = fmul fast float %5332, 0x3FE8A23460000000
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = call float @dx.op.binary.f32(i32 35, float %5332, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5336 = fmul fast float %5334, %5321
  %5337 = fmul fast float %5335, 0x3FF279A740000000
  %5338 = fadd fast float %5337, -1.000000e+00
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %82, float %5327, float %5328, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.unary.f32(i32 25, float %5339)  ; Rsqrt(value)
  %5341 = fmul fast float %5340, %5327
  %5342 = fmul fast float %5340, %5328
  %5343 = fmul fast float %5340, %82
  %5344 = fmul fast float %5338, %5338
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5335, 0x40005F8BE0000000
  %5347 = fsub fast float 0x400C5BF8A0000000, %5346
  %5348 = fdiv fast float %5336, %5347
  %5349 = fmul fast float %5348, 0x3FEE31C3C0000000
  %5350 = fmul fast float %5349, %5345
  %5351 = fmul fast float %5335, 0x3FDACB7480000000
  %5352 = fadd fast float %5351, 0xBFD7347680000000
  %5353 = fmul fast float %5352, %5348
  %5354 = fmul fast float %5353, %5345
  br label %5355

; <label>:5355                                    ; preds = %5326, %5229
  %5356 = phi float [ %5341, %5326 ], [ 0.000000e+00, %5229 ]
  %5357 = phi float [ %5342, %5326 ], [ 0.000000e+00, %5229 ]
  %5358 = phi float [ %5343, %5326 ], [ 0.000000e+00, %5229 ]
  %5359 = phi float [ %5350, %5326 ], [ 0.000000e+00, %5229 ]
  %5360 = phi float [ %5354, %5326 ], [ 0.000000e+00, %5229 ]
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fmul fast float %5361, %5361
  %5363 = fmul fast float %5362, 0x3FEE471020000000
  %5364 = fadd fast float %5363, 0xBFD42F6020000000
  %5365 = fmul fast float %5321, 0x3FD20DD760000000
  %5366 = fmul fast float %5364, %5360
  %5367 = fmul fast float %5359, 0x3FDF454380000000
  %5368 = fmul fast float %5367, %5361
  %5369 = fadd fast float %5368, %5365
  %5370 = fadd fast float %5369, %5366
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fmul fast float %5371, 0x3FDF454380000000
  %5373 = fmul fast float %5371, %5371
  %5374 = fmul fast float %5373, 0x3FEE471020000000
  %5375 = fadd fast float %5374, 0xBFD42F6020000000
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5359, float %5360, float 0x3FD20DD760000000, float %5372, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5378 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fcmp fast oeq float %5378, 0.000000e+00
  %5380 = fcmp fast oeq float %5377, 0.000000e+00
  %5381 = or i1 %5380, %5379
  br i1 %5381, label %5411, label %5382

; <label>:5382                                    ; preds = %5355
  %5383 = fsub fast float -0.000000e+00, %79
  %5384 = fsub fast float -0.000000e+00, %77
  %5385 = call float @dx.op.unary.f32(i32 24, float %5378)  ; Sqrt(value)
  %5386 = fdiv fast float %5385, %5377
  %5387 = fcmp fast ogt float %5386, 0x3FFB6F8900000000
  %5388 = select i1 %5387, float 0x3FFB6F8900000000, float %5386
  %5389 = fmul fast float %5388, 0x3FE8A23460000000
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = call float @dx.op.binary.f32(i32 35, float %5388, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5392 = fmul fast float %5390, %5377
  %5393 = fmul fast float %5391, 0x3FF279A740000000
  %5394 = fadd fast float %5393, -1.000000e+00
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5384, float %78, float %5383, float %5384, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.unary.f32(i32 25, float %5395)  ; Rsqrt(value)
  %5397 = fmul fast float %5396, %5383
  %5398 = fmul fast float %5396, %5384
  %5399 = fmul fast float %5396, %78
  %5400 = fmul fast float %5394, %5394
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = fmul fast float %5391, 0x40005F8BE0000000
  %5403 = fsub fast float 0x400C5BF8A0000000, %5402
  %5404 = fdiv fast float %5392, %5403
  %5405 = fmul fast float %5404, 0x3FEE31C3C0000000
  %5406 = fmul fast float %5405, %5401
  %5407 = fmul fast float %5391, 0x3FDACB7480000000
  %5408 = fadd fast float %5407, 0xBFD7347680000000
  %5409 = fmul fast float %5408, %5404
  %5410 = fmul fast float %5409, %5401
  br label %5411

; <label>:5411                                    ; preds = %5382, %5355
  %5412 = phi float [ %5397, %5382 ], [ 0.000000e+00, %5355 ]
  %5413 = phi float [ %5398, %5382 ], [ 0.000000e+00, %5355 ]
  %5414 = phi float [ %5399, %5382 ], [ 0.000000e+00, %5355 ]
  %5415 = phi float [ %5406, %5382 ], [ 0.000000e+00, %5355 ]
  %5416 = phi float [ %5410, %5382 ], [ 0.000000e+00, %5355 ]
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = fmul fast float %5417, %5417
  %5419 = fmul fast float %5418, 0x3FEE471020000000
  %5420 = fadd fast float %5419, 0xBFD42F6020000000
  %5421 = fmul fast float %5377, 0x3FD20DD760000000
  %5422 = fmul fast float %5420, %5416
  %5423 = fmul fast float %5415, 0x3FDF454380000000
  %5424 = fmul fast float %5423, %5417
  %5425 = fadd fast float %5424, %5421
  %5426 = fadd fast float %5425, %5422
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = fmul fast float %5427, 0x3FDF454380000000
  %5429 = fmul fast float %5427, %5427
  %5430 = fmul fast float %5429, 0x3FEE471020000000
  %5431 = fadd fast float %5430, 0xBFD42F6020000000
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5415, float %5416, float 0x3FD20DD760000000, float %5428, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5434 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = fcmp fast oeq float %5434, 0.000000e+00
  %5436 = fcmp fast oeq float %5433, 0.000000e+00
  %5437 = or i1 %5436, %5435
  br i1 %5437, label %5467, label %5438

; <label>:5438                                    ; preds = %5411
  %5439 = fsub fast float -0.000000e+00, %75
  %5440 = fsub fast float -0.000000e+00, %73
  %5441 = call float @dx.op.unary.f32(i32 24, float %5434)  ; Sqrt(value)
  %5442 = fdiv fast float %5441, %5433
  %5443 = fcmp fast ogt float %5442, 0x3FFB6F8900000000
  %5444 = select i1 %5443, float 0x3FFB6F8900000000, float %5442
  %5445 = fmul fast float %5444, 0x3FE8A23460000000
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = call float @dx.op.binary.f32(i32 35, float %5444, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5448 = fmul fast float %5446, %5433
  %5449 = fmul fast float %5447, 0x3FF279A740000000
  %5450 = fadd fast float %5449, -1.000000e+00
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %74, float %5439, float %5440, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.unary.f32(i32 25, float %5451)  ; Rsqrt(value)
  %5453 = fmul fast float %5452, %5439
  %5454 = fmul fast float %5452, %5440
  %5455 = fmul fast float %5452, %74
  %5456 = fmul fast float %5450, %5450
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = fmul fast float %5447, 0x40005F8BE0000000
  %5459 = fsub fast float 0x400C5BF8A0000000, %5458
  %5460 = fdiv fast float %5448, %5459
  %5461 = fmul fast float %5460, 0x3FEE31C3C0000000
  %5462 = fmul fast float %5461, %5457
  %5463 = fmul fast float %5447, 0x3FDACB7480000000
  %5464 = fadd fast float %5463, 0xBFD7347680000000
  %5465 = fmul fast float %5464, %5460
  %5466 = fmul fast float %5465, %5457
  br label %5467

; <label>:5467                                    ; preds = %5438, %5411
  %5468 = phi float [ %5453, %5438 ], [ 0.000000e+00, %5411 ]
  %5469 = phi float [ %5454, %5438 ], [ 0.000000e+00, %5411 ]
  %5470 = phi float [ %5455, %5438 ], [ 0.000000e+00, %5411 ]
  %5471 = phi float [ %5462, %5438 ], [ 0.000000e+00, %5411 ]
  %5472 = phi float [ %5466, %5438 ], [ 0.000000e+00, %5411 ]
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fmul fast float %5473, %5473
  %5475 = fmul fast float %5474, 0x3FEE471020000000
  %5476 = fadd fast float %5475, 0xBFD42F6020000000
  %5477 = fmul fast float %5433, 0x3FD20DD760000000
  %5478 = fmul fast float %5476, %5472
  %5479 = fmul fast float %5471, 0x3FDF454380000000
  %5480 = fmul fast float %5479, %5473
  %5481 = fadd fast float %5480, %5477
  %5482 = fadd fast float %5481, %5478
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, 0x3FDF454380000000
  %5485 = fmul fast float %5483, %5483
  %5486 = fmul fast float %5485, 0x3FEE471020000000
  %5487 = fadd fast float %5486, 0xBFD42F6020000000
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5471, float %5472, float 0x3FD20DD760000000, float %5484, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5370, float 0.000000e+00)  ; FMax(a,b)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5426, float 0.000000e+00)  ; FMax(a,b)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5482, float 0.000000e+00)  ; FMax(a,b)
  %5492 = call float @dx.op.binary.f32(i32 35, float %5376, float 0.000000e+00)  ; FMax(a,b)
  %5493 = call float @dx.op.binary.f32(i32 35, float %5432, float 0.000000e+00)  ; FMax(a,b)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5488, float 0.000000e+00)  ; FMax(a,b)
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = call float @dx.op.binary.f32(i32 36, float %5190, float %5496)  ; FMin(a,b)
  %5498 = fsub fast float 1.000000e+00, %5316
  %5499 = fmul fast float %5497, %5498
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = bitcast float %5500 to i32
  %5502 = sub nsw i32 2129859010, %5501
  %5503 = bitcast i32 %5502 to float
  %5504 = call float @dx.op.binary.f32(i32 36, float %5191, float %5496)  ; FMin(a,b)
  %5505 = fmul fast float %5504, %5498
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = bitcast float %5506 to i32
  %5508 = sub nsw i32 2129859010, %5507
  %5509 = bitcast i32 %5508 to float
  %5510 = call float @dx.op.binary.f32(i32 36, float %5192, float %5496)  ; FMin(a,b)
  %5511 = fmul fast float %5510, %5498
  %5512 = fsub fast float 1.000000e+00, %5511
  %5513 = bitcast float %5512 to i32
  %5514 = sub nsw i32 2129859010, %5513
  %5515 = bitcast i32 %5514 to float
  %5516 = fmul fast float %5489, %5316
  %5517 = fmul fast float %5516, %5503
  %5518 = fmul fast float %5490, %5316
  %5519 = fmul fast float %5518, %5509
  %5520 = fmul fast float %5491, %5316
  %5521 = fmul fast float %5520, %5515
  %5522 = call float @dx.op.binary.f32(i32 36, float %5184, float %5496)  ; FMin(a,b)
  %5523 = fmul fast float %5522, %5498
  %5524 = fsub fast float 1.000000e+00, %5523
  %5525 = bitcast float %5524 to i32
  %5526 = sub nsw i32 2129859010, %5525
  %5527 = bitcast i32 %5526 to float
  %5528 = call float @dx.op.binary.f32(i32 36, float %5185, float %5496)  ; FMin(a,b)
  %5529 = fmul fast float %5528, %5498
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = call float @dx.op.binary.f32(i32 36, float %5273, float %5496)  ; FMin(a,b)
  %5535 = fmul fast float %5534, %5498
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5492, %5316
  %5541 = fmul fast float %5540, %5527
  %5542 = fmul fast float %5493, %5316
  %5543 = fmul fast float %5542, %5533
  %5544 = fmul fast float %5494, %5316
  %5545 = fmul fast float %5544, %5539
  %5546 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5519, float %5521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = select i1 %260, float 0.000000e+00, float %5517
  %5548 = select i1 %260, float %5546, float %5519
  %5549 = select i1 %260, float 0.000000e+00, float %5521
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5543, float %5545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = select i1 %260, float 0.000000e+00, float %5541
  %5552 = select i1 %260, float %5550, float %5543
  %5553 = select i1 %260, float 0.000000e+00, float %5545
  %5554 = fmul fast float %5275, 9.843750e-01
  %5555 = fmul fast float %5193, 9.843750e-01
  %5556 = fadd fast float %5554, 7.812500e-03
  %5557 = fadd fast float %5555, 7.812500e-03
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %47, float %5556, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 3
  %5561 = fmul fast float %5559, %5184
  %5562 = fmul fast float %5559, %5185
  %5563 = fmul fast float %5559, %5273
  %5564 = fadd fast float %5561, %5560
  %5565 = fadd fast float %5562, %5560
  %5566 = fadd fast float %5563, %5560
  %5567 = call float @dx.op.binary.f32(i32 35, float %5565, float %5566)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5564, float %5567)  ; FMax(a,b)
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5569, %5547
  %5571 = fmul fast float %5569, %5548
  %5572 = fmul fast float %5569, %5549
  %5573 = fmul fast float %5569, %4022
  %5574 = fmul fast float %5569, %4023
  %5575 = fmul fast float %5569, %4024
  %5576 = fadd fast float %5573, -1.000000e+00
  %5577 = fadd fast float %5574, -1.000000e+00
  %5578 = fadd fast float %5575, -1.000000e+00
  %5579 = fmul fast float %5576, %1310
  %5580 = fmul fast float %5577, %1310
  %5581 = fmul fast float %5578, %1310
  %5582 = fadd fast float %5579, 1.000000e+00
  %5583 = fadd fast float %5580, 1.000000e+00
  %5584 = fadd fast float %5581, 1.000000e+00
  %5585 = fmul fast float %5185, 0x401CF23780000000
  %5586 = fadd fast float %5585, 0x3FF32641C0000000
  %5587 = fdiv fast float 1.000000e+00, %5586
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5271, float %5272, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = fmul fast float %5587, %5587
  %5590 = fmul fast float %5588, %5588
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = fmul fast float %5589, %5591
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = fcmp fast oge float %5593, 0.000000e+00
  %5595 = fmul fast float %5587, %5270
  %5596 = fmul fast float %5587, %5271
  %5597 = fmul fast float %5587, %5272
  %5598 = call float @dx.op.unary.f32(i32 24, float %5593)  ; Sqrt(value)
  %5599 = fmul fast float %5588, %5587
  %5600 = fadd fast float %5599, %5598
  %5601 = fmul fast float %5600, %5187
  %5602 = fmul fast float %5600, %5188
  %5603 = fmul fast float %5600, %5189
  %5604 = fsub fast float %5595, %5601
  %5605 = fsub fast float %5596, %5602
  %5606 = fsub fast float %5597, %5603
  %5607 = select i1 %5594, float %5604, float 0.000000e+00
  %5608 = select i1 %5594, float %5605, float 0.000000e+00
  %5609 = select i1 %5594, float %5606, float 0.000000e+00
  %5610 = fmul fast float %5607, %3803
  %5611 = fmul fast float %5608, %3803
  %5612 = fmul fast float %5609, %3803
  %5613 = fadd fast float %5610, %5262
  %5614 = fadd fast float %5611, %5263
  %5615 = fadd fast float %5612, %5264
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5006, float %5007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fsub fast float 1.000000e+00, %5193
  %5618 = fmul fast float %5617, %1310
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fmul fast float %5185, 0x4012D0A400000000
  %5623 = fadd fast float %5622, 0x3FDB6377A0000000
  %5624 = fmul fast float %5621, %5623
  %5625 = fadd fast float %5624, %5616
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5564, %5551
  %5628 = fmul fast float %5565, %5552
  %5629 = fmul fast float %5566, %5553
  %5630 = fmul fast float %5570, %1310
  %5631 = fmul fast float %5571, %1310
  %5632 = fmul fast float %5572, %1310
  %5633 = fadd fast float %5627, %3847
  %5634 = fadd fast float %5628, %3849
  %5635 = fadd fast float %5629, %3851
  %5636 = fsub fast float 1.000000e+00, %5626
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5640 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5641 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5646 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5651 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5652 = fmul fast float %5613, %5638
  %5653 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5639, float %5652)  ; FMad(a,b,c)
  %5654 = call float @dx.op.tertiary.f32(i32 46, float %5615, float %5640, float %5653)  ; FMad(a,b,c)
  %5655 = fadd fast float %5654, %5641
  %5656 = fmul fast float %5613, %5643
  %5657 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5644, float %5656)  ; FMad(a,b,c)
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5615, float %5645, float %5657)  ; FMad(a,b,c)
  %5659 = fadd fast float %5658, %5646
  %5660 = fmul fast float %5613, %5648
  %5661 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5649, float %5660)  ; FMad(a,b,c)
  %5662 = call float @dx.op.tertiary.f32(i32 46, float %5615, float %5650, float %5661)  ; FMad(a,b,c)
  %5663 = fadd fast float %5662, %5651
  %5664 = fdiv fast float %5655, %5663
  %5665 = fdiv fast float %5659, %5663
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 1
  %5669 = fmul fast float %5667, %5664
  %5670 = fmul fast float %5668, %5665
  %5671 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5673 = fadd fast float %5669, %5671
  %5674 = fadd fast float %5670, %5672
  %5675 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = fmul fast float %5678, %5675
  %5681 = fmul fast float %5679, %5676
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5685 = fsub fast float %5683, %5684
  %5686 = fmul fast float %5685, %5636
  %5687 = fadd fast float %5686, %5684
  %5688 = fmul fast float %273, 2.000000e+00
  %5689 = fmul fast float %274, 2.000000e+00
  %5690 = fadd fast float %5688, -1.000000e+00
  %5691 = fadd fast float %5689, -1.000000e+00
  %5692 = fmul fast float %5687, %5690
  %5693 = fmul fast float %5687, %5691
  %5694 = fadd fast float %5692, %5680
  %5695 = fadd fast float %5693, %5681
  %5696 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5697 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5698 = fmul fast float %5694, %5696
  %5699 = fmul fast float %5695, %5697
  %5700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %5698, float %5699, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  %5702 = fcmp fast ogt float %5701, -1.000000e+00
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5705 = select i1 %5702, float %5704, float 1.000000e+00
  %5706 = fadd fast float %5701, 1.000000e+00
  %5707 = fmul fast float %5705, %5706
  %5708 = call float @dx.op.unary.f32(i32 6, float %5707)  ; FAbs(value)
  %5709 = fsub fast float %5708, %5663
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5712 = fmul fast float %5711, %5708
  %5713 = fdiv fast float 1.600000e+02, %5712
  %5714 = fmul fast float %5626, %5626
  %5715 = fmul fast float %5714, 0xBFB5B17960000000
  %5716 = fmul fast float %5715, %5709
  %5717 = fmul fast float %5716, %5713
  %5718 = call float @dx.op.unary.f32(i32 21, float %5717)  ; Exp(value)
  %5719 = fmul fast float %5718, 0x3FF04B2960000000
  %5720 = fsub fast float 0x3FF04B2960000000, %5719
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = fmul fast float %5721, 4.000000e+00
  %5723 = fadd fast float %273, -5.000000e-01
  %5724 = fadd fast float %274, -5.000000e-01
  %5725 = fmul fast float %5721, 0x3FBEB851E0000000
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, %5723
  %5728 = fmul fast float %5726, %5724
  %5729 = fadd fast float %5727, %5673
  %5730 = fadd fast float %5728, %5674
  %5731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.i32 %5731, 0
  %5733 = icmp eq i32 %5732, 0
  br i1 %5733, label %5739, label %5734, !dx.controlflow.hints !96

; <label>:5734                                    ; preds = %5467
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %43, float %5729, float %5730, float undef, float undef, i32 0, i32 0, i32 undef, float %5722)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  br label %5744

; <label>:5739                                    ; preds = %5467
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %5729, float %5730, float undef, float undef, i32 0, i32 0, i32 undef, float %5722)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  br label %5744

; <label>:5744                                    ; preds = %5739, %5734
  %5745 = phi float [ %5736, %5734 ], [ %5741, %5739 ]
  %5746 = phi float [ %5737, %5734 ], [ %5742, %5739 ]
  %5747 = phi float [ %5738, %5734 ], [ %5743, %5739 ]
  %5748 = select i1 %260, float 0.000000e+00, float %5746
  %5749 = select i1 %260, float 0.000000e+00, float %5747
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5752 = fmul fast float %5745, %5582
  %5753 = fmul fast float %5752, %5751
  %5754 = fmul fast float %5748, %5583
  %5755 = fmul fast float %5754, %5751
  %5756 = fmul fast float %5749, %5584
  %5757 = fmul fast float %5756, %5751
  %5758 = fadd fast float %5633, %5753
  %5759 = fmul fast float %5758, %1310
  %5760 = fadd fast float %5634, %5755
  %5761 = fmul fast float %5760, %1310
  %5762 = fadd fast float %5635, %5757
  %5763 = fmul fast float %5762, %1310
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 3
  %5766 = fcmp fast oeq float %5765, 0.000000e+00
  br i1 %5766, label %6854, label %5767

; <label>:5767                                    ; preds = %5744
  %5768 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5770 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %5774 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = select i1 %260, float %5776, float %5772
  %5780 = select i1 %260, float %5778, float %5773
  %5781 = select i1 %260, float %5777, float %5774
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5784 = fmul fast float %5783, %116
  %5785 = fmul fast float %5783, %117
  %5786 = fmul fast float %5783, %118
  %5787 = fadd fast float %5784, %188
  %5788 = fadd fast float %5785, %189
  %5789 = fadd fast float %5786, %190
  %5790 = fcmp fast olt float %5765, 0.000000e+00
  br i1 %5790, label %6430, label %5791

; <label>:5791                                    ; preds = %5767
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = extractvalue %dx.types.CBufRet.f32 %5797, 3
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5802, 3
  %5807 = fmul fast float %5793, %5787
  %5808 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5794, float %5807)  ; FMad(a,b,c)
  %5809 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5795, float %5808)  ; FMad(a,b,c)
  %5810 = fadd fast float %5809, %5796
  %5811 = fmul fast float %5798, %5787
  %5812 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5799, float %5811)  ; FMad(a,b,c)
  %5813 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5800, float %5812)  ; FMad(a,b,c)
  %5814 = fadd fast float %5813, %5801
  %5815 = fmul fast float %5803, %5787
  %5816 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5804, float %5815)  ; FMad(a,b,c)
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5805, float %5816)  ; FMad(a,b,c)
  %5818 = fadd fast float %5817, %5806
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  %5821 = fcmp fast une float %5820, 0.000000e+00
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5826 = fmul fast float %5825, %5810
  %5827 = fmul fast float %5825, %5814
  %5828 = fadd fast float %5826, %5823
  %5829 = fadd fast float %5827, %5824
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5834 = fmul fast float %5833, %5810
  %5835 = fmul fast float %5833, %5814
  %5836 = fadd fast float %5834, %5831
  %5837 = fadd fast float %5835, %5832
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5840 = fsub fast float %5839, %5818
  %5841 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5842 = fmul fast float %5840, %5841
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  br i1 %5821, label %5905, label %5845

; <label>:5845                                    ; preds = %5791
  %5846 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5849 = fadd fast float %5848, %5846
  %5850 = fcmp fast ogt float %5849, 0.000000e+00
  br i1 %5850, label %5851, label %5875

; <label>:5851                                    ; preds = %5845
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = fsub fast float %5836, %5853
  %5856 = fsub fast float %5837, %5854
  %5857 = fcmp fast olt float %5855, 0.000000e+00
  %5858 = fcmp fast olt float %5856, 0.000000e+00
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5864 = select i1 %5857, float %5860, float %5862
  %5865 = select i1 %5858, float %5861, float %5863
  %5866 = fmul fast float %5864, %5855
  %5867 = fmul fast float %5865, %5856
  %5868 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %5869 = call float @dx.op.unary.f32(i32 6, float %5867)  ; FAbs(value)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5871 = call float @dx.op.binary.f32(i32 35, float %5868, float %5869)  ; FMax(a,b)
  %5872 = fsub fast float %5870, %5871
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = fmul fast float %5873, %5844
  br label %5875

; <label>:5875                                    ; preds = %5851, %5845
  %5876 = phi float [ %5874, %5851 ], [ 0.000000e+00, %5845 ]
  %5877 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5879 = fadd fast float %5878, %5877
  %5880 = fcmp fast ogt float %5879, 0.000000e+00
  br i1 %5880, label %5881, label %5905

; <label>:5881                                    ; preds = %5875
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = fsub fast float %5828, %5883
  %5886 = fsub fast float %5829, %5884
  %5887 = fcmp fast olt float %5885, 0.000000e+00
  %5888 = fcmp fast olt float %5886, 0.000000e+00
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5893 = extractvalue %dx.types.CBufRet.f32 %5889, 3
  %5894 = select i1 %5887, float %5890, float %5892
  %5895 = select i1 %5888, float %5891, float %5893
  %5896 = fmul fast float %5894, %5885
  %5897 = fmul fast float %5895, %5886
  %5898 = call float @dx.op.unary.f32(i32 6, float %5896)  ; FAbs(value)
  %5899 = call float @dx.op.unary.f32(i32 6, float %5897)  ; FAbs(value)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5901 = call float @dx.op.binary.f32(i32 35, float %5898, float %5899)  ; FMax(a,b)
  %5902 = fsub fast float %5900, %5901
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fmul fast float %5903, %5844
  br label %5905

; <label>:5905                                    ; preds = %5881, %5875, %5791
  %5906 = phi float [ 0.000000e+00, %5791 ], [ %5904, %5881 ], [ 0.000000e+00, %5875 ]
  %5907 = phi float [ 0.000000e+00, %5791 ], [ %5876, %5881 ], [ %5876, %5875 ]
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = fsub fast float %5810, %5912
  %5915 = fsub fast float %5814, %5913
  %5916 = fcmp fast olt float %5914, 0.000000e+00
  %5917 = fcmp fast olt float %5915, 0.000000e+00
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5923 = select i1 %5916, float %5919, float %5921
  %5924 = select i1 %5917, float %5920, float %5922
  %5925 = fmul fast float %5923, %5914
  %5926 = fmul fast float %5924, %5915
  %5927 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5928 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5930 = call float @dx.op.binary.f32(i32 35, float %5927, float %5928)  ; FMax(a,b)
  %5931 = fsub fast float %5929, %5930
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = call float @dx.op.binary.f32(i32 36, float %5932, float %5910)  ; FMin(a,b)
  %5934 = fmul fast float %5933, %5844
  %5935 = fsub fast float %5906, %5934
  %5936 = fsub fast float %5907, %5906
  %5937 = fsub fast float %5936, %5934
  %5938 = call float @dx.op.binary.f32(i32 35, float %5934, float %5906)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 35, float %5938, float %5907)  ; FMax(a,b)
  %5940 = fcmp fast olt float %5939, 1.000000e+00
  br i1 %5940, label %5941, label %6339, !dx.controlflow.hints !97

; <label>:5941                                    ; preds = %5905
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = fcmp fast une float %5943, 0.000000e+00
  br i1 %5944, label %5945, label %6339, !dx.controlflow.hints !98

; <label>:5945                                    ; preds = %5941
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.CBufRet.f32 %5946, 2
  %5950 = extractvalue %dx.types.CBufRet.f32 %5946, 3
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.CBufRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5955 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5961 = fmul fast float %5947, %5787
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5948, float %5961)  ; FMad(a,b,c)
  %5963 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5949, float %5962)  ; FMad(a,b,c)
  %5964 = fadd fast float %5963, %5950
  %5965 = fmul fast float %5952, %5787
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5953, float %5965)  ; FMad(a,b,c)
  %5967 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5954, float %5966)  ; FMad(a,b,c)
  %5968 = fadd fast float %5967, %5955
  %5969 = fmul fast float %5957, %5787
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5958, float %5969)  ; FMad(a,b,c)
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5959, float %5970)  ; FMad(a,b,c)
  %5972 = fadd fast float %5971, %5960
  %5973 = fcmp fast oge float %5964, 1.000000e+00
  %5974 = fcmp fast oge float %5968, 1.000000e+00
  %5975 = or i1 %5973, %5974
  %5976 = fcmp fast olt float %5964, 0.000000e+00
  %5977 = fcmp fast olt float %5968, 0.000000e+00
  %5978 = or i1 %5976, %5977
  %5979 = or i1 %5975, %5978
  br i1 %5979, label %6339, label %5980, !dx.controlflow.hints !99

; <label>:5980                                    ; preds = %5945
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.CBufRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.CBufRet.f32 %5981, 2
  %5985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.i32 %5985, 2
  %5987 = uitofp i32 %5986 to float
  %5988 = extractvalue %dx.types.CBufRet.i32 %5985, 3
  %5989 = uitofp i32 %5988 to float
  %5990 = extractvalue %dx.types.CBufRet.f32 %5981, 3
  %5991 = fmul fast float %5990, 2.000000e+00
  %5992 = fsub fast float %5964, %5982
  %5993 = fsub fast float %5968, %5983
  %5994 = fmul fast float %5991, %5992
  %5995 = fmul fast float %5991, %5993
  %5996 = fdiv fast float 1.000000e+00, %5770
  %5997 = fmul fast float %5995, %5996
  %5998 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %5999 = fmul fast float %5984, %5789
  %6000 = fmul fast float %5999, %5991
  %6001 = call float @dx.op.unary.f32(i32 6, float %6000)  ; FAbs(value)
  %6002 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %6003 = call float @dx.op.binary.f32(i32 35, float %6002, float %6001)  ; FMax(a,b)
  %6004 = call float @dx.op.binary.f32(i32 35, float %6003, float %5998)  ; FMax(a,b)
  %6005 = fmul fast float %6004, 2.000000e+00
  %6006 = call float @dx.op.unary.f32(i32 23, float %6005)  ; Log(value)
  %6007 = call float @dx.op.binary.f32(i32 35, float %6006, float %5987)  ; FMax(a,b)
  %6008 = call float @dx.op.unary.f32(i32 22, float %6007)  ; Frc(value)
  %6009 = fadd fast float %6008, 0xBFEA666660000000
  %6010 = fmul fast float %6009, 8.000000e+00
  %6011 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6012 = call float @dx.op.unary.f32(i32 27, float %6007)  ; Round_ni(value)
  %6013 = fadd fast float %6012, %6011
  %6014 = call float @dx.op.binary.f32(i32 36, float %6013, float %5989)  ; FMin(a,b)
  %6015 = call float @dx.op.unary.f32(i32 27, float %6014)  ; Round_ni(value)
  %6016 = fsub fast float -0.000000e+00, %6015
  %6017 = call float @dx.op.unary.f32(i32 21, float %6016)  ; Exp(value)
  %6018 = fmul fast float %6017, %5991
  %6019 = fmul fast float %6018, %5964
  %6020 = fmul fast float %6018, %5968
  %6021 = fmul fast float %6019, 2.500000e-01
  %6022 = fmul fast float %6020, 2.500000e-01
  %6023 = fadd fast float %6021, 5.000000e-01
  %6024 = fadd fast float %6022, 5.000000e-01
  %6025 = fsub fast float %5989, %5987
  %6026 = fptoui float %6025 to i32
  %6027 = add i32 %6026, 320
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 %6027)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.CBufRet.f32 %6028, 1
  %6031 = fcmp fast une float %6014, %5989
  %6032 = fsub fast float %5964, %6029
  %6033 = fsub fast float %5968, %6030
  %6034 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6035 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6036 = fmul fast float %6034, %6018
  %6037 = fmul fast float %6035, %6018
  %6038 = fcmp fast olt float %6036, 1.000000e+00
  %6039 = fcmp fast olt float %6037, 1.000000e+00
  %6040 = and i1 %6038, %6039
  %6041 = or i1 %6031, %6040
  br i1 %6041, label %6042, label %6339, !dx.controlflow.hints !100

; <label>:6042                                    ; preds = %5980
  %6043 = fmul fast float %6020, 5.000000e-01
  %6044 = fmul fast float %6019, 5.000000e-01
  %6045 = fadd fast float %6043, 5.000000e-01
  %6046 = fadd fast float %6044, 5.000000e-01
  %6047 = sitofp i32 %5986 to float
  %6048 = fsub fast float %6014, %6047
  %6049 = call float @dx.op.unary.f32(i32 27, float %6048)  ; Round_ni(value)
  %6050 = call float @dx.op.unary.f32(i32 22, float %6014)  ; Frc(value)
  %6051 = call float @dx.op.unary.f32(i32 22, float %6046)  ; Frc(value)
  %6052 = call float @dx.op.unary.f32(i32 22, float %6045)  ; Frc(value)
  %6053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %46, float %6051, float %6052, float %6049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6054 = extractvalue %dx.types.ResRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.ResRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.ResRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.ResRet.f32 %6053, 3
  %6058 = fcmp fast ogt float %6050, 0.000000e+00
  br i1 %6058, label %6059, label %6080, !dx.controlflow.hints !101

; <label>:6059                                    ; preds = %6042
  %6060 = fadd fast float %6049, 1.000000e+00
  %6061 = call float @dx.op.unary.f32(i32 22, float %6023)  ; Frc(value)
  %6062 = call float @dx.op.unary.f32(i32 22, float %6024)  ; Frc(value)
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %46, float %6061, float %6062, float %6060, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.ResRet.f32 %6063, 3
  %6068 = fsub fast float %6064, %6054
  %6069 = fsub fast float %6065, %6055
  %6070 = fsub fast float %6066, %6056
  %6071 = fsub fast float %6067, %6057
  %6072 = fmul fast float %6068, %6050
  %6073 = fmul fast float %6069, %6050
  %6074 = fmul fast float %6070, %6050
  %6075 = fmul fast float %6071, %6050
  %6076 = fadd fast float %6072, %6054
  %6077 = fadd fast float %6073, %6055
  %6078 = fadd fast float %6074, %6056
  %6079 = fadd fast float %6075, %6057
  br label %6080

; <label>:6080                                    ; preds = %6059, %6042
  %6081 = phi float [ %6076, %6059 ], [ %6054, %6042 ]
  %6082 = phi float [ %6077, %6059 ], [ %6055, %6042 ]
  %6083 = phi float [ %6078, %6059 ], [ %6056, %6042 ]
  %6084 = phi float [ %6079, %6059 ], [ %6057, %6042 ]
  %6085 = fadd fast float %6081, -5.000000e-01
  %6086 = fadd fast float %6083, -5.000000e-01
  %6087 = fmul fast float %6085, 0xBFD5555560000000
  %6088 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6086, float %6087)  ; FMad(a,b,c)
  %6089 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6082, float 0.000000e+00)  ; FMad(a,b,c)
  %6090 = fadd fast float %6089, %6084
  %6091 = fmul fast float %6085, -7.500000e-01
  %6092 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6086, float %6091)  ; FMad(a,b,c)
  %6093 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6082, float 0.000000e+00)  ; FMad(a,b,c)
  %6094 = fadd fast float %6093, %6084
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6102 = fsub fast float %6098, %6088
  %6103 = fsub fast float %6099, %6090
  %6104 = fsub fast float %6100, %6092
  %6105 = fsub fast float %6101, %6094
  %6106 = fmul fast float %6102, %6096
  %6107 = fmul fast float %6103, %6096
  %6108 = fmul fast float %6104, %6096
  %6109 = fmul fast float %6105, %6096
  %6110 = fadd fast float %6106, %6088
  %6111 = fadd fast float %6107, %6090
  %6112 = fadd fast float %6108, %6092
  %6113 = fadd fast float %6109, %6094
  %6114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.i32 %6114, 0
  %6116 = and i32 %6115, 536870911
  %6117 = uitofp i32 %6116 to float
  %6118 = fmul fast float %6117, %5964
  %6119 = fmul fast float %6117, %5968
  %6120 = fptoui float %6118 to i32
  %6121 = fptoui float %6119 to i32
  %6122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.i32 %6122, 0
  %6124 = and i32 %6123, 31
  %6125 = lshr i32 %6120, %6124
  %6126 = lshr i32 %6121, %6124
  %6127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6128 = extractvalue %dx.types.ResRet.i32 %6127, 0
  %6129 = and i32 %6128, 31
  %6130 = shl i32 1, %6129
  %6131 = call i32 @dx.op.binary.i32(i32 40, i32 %6130, i32 4)  ; UMin(a,b)
  %6132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.i32 %6132, 0
  %6134 = extractvalue %dx.types.ResRet.i32 %6132, 1
  %6135 = icmp eq i32 %6131, 0
  br i1 %6135, label %6177, label %6136

; <label>:6136                                    ; preds = %6080
  br label %6137

; <label>:6137                                    ; preds = %6165, %6136
  %6138 = phi i32 [ %6168, %6165 ], [ 0, %6136 ]
  %6139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6140 = extractvalue %dx.types.ResRet.i32 %6139, 0
  %6141 = lshr i32 %6140, 16
  %6142 = and i32 %6141, 31
  %6143 = shl i32 %6126, %6142
  %6144 = add i32 %6143, %6125
  %6145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.i32 %6145, 0
  %6147 = and i32 %6146, 31
  %6148 = shl i32 %6144, %6147
  %6149 = add i32 %6148, %6138
  %6150 = shl i32 %6149, 2
  %6151 = add i32 %6150, 32
  %6152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6151, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.i32 %6152, 0
  %6154 = icmp slt i32 %6153, 0
  %6155 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6138
  %6156 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6138
  %6157 = bitcast float* %6155 to i32*
  %6158 = bitcast float* %6156 to i32*
  br i1 %6154, label %6159, label %6165

; <label>:6159                                    ; preds = %6137
  %6160 = and i32 %6153, 1073741823
  %6161 = add nuw nsw i32 %6160, 20
  %6162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.i32 %6162, 0
  %6164 = extractvalue %dx.types.ResRet.i32 %6162, 1
  br label %6165

; <label>:6165                                    ; preds = %6159, %6137
  %6166 = phi i32 [ %6163, %6159 ], [ %6133, %6137 ]
  %6167 = phi i32 [ %6164, %6159 ], [ %6134, %6137 ]
  store i32 %6166, i32* %6157, align 4
  store i32 %6167, i32* %6158, align 4
  %6168 = add nuw i32 %6138, 1
  %6169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.i32 %6169, 2
  %6171 = icmp eq i32 %6170, 0
  %6172 = icmp ugt i32 %6153, -1073741825
  %6173 = and i1 %6172, %6171
  %6174 = icmp ult i32 %6168, %6131
  %6175 = and i1 %6173, %6174
  br i1 %6175, label %6137, label %6176

; <label>:6176                                    ; preds = %6165
  br label %6177

; <label>:6177                                    ; preds = %6176, %6080
  %6178 = phi i32 [ 0, %6080 ], [ %6168, %6176 ]
  %6179 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %6180 = fptoui float %6179 to i32
  %6181 = icmp eq i32 %6180, 0
  br i1 %6181, label %6233, label %6182

; <label>:6182                                    ; preds = %6177
  br label %6183

; <label>:6183                                    ; preds = %6228, %6182
  %6184 = phi i32 [ %6229, %6228 ], [ %6178, %6182 ]
  %6185 = phi i32 [ %6230, %6228 ], [ 0, %6182 ]
  %6186 = lshr i32 %6185, 2
  %6187 = and i32 %6185, 3
  %6188 = add nuw nsw i32 %6186, 83
  %6189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 %6188)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.i32 %6189, 0
  %6191 = extractvalue %dx.types.CBufRet.i32 %6189, 1
  %6192 = extractvalue %dx.types.CBufRet.i32 %6189, 2
  %6193 = extractvalue %dx.types.CBufRet.i32 %6189, 3
  %6194 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %6190, i32* %6194, align 4
  %6195 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %6191, i32* %6195, align 4
  %6196 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %6192, i32* %6196, align 4
  %6197 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %6193, i32* %6197, align 4
  %6198 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %6187
  %6199 = load i32, i32* %6198, align 4, !tbaa !102, !noalias !106
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = lshr i32 %6201, 16
  %6203 = and i32 %6202, 31
  %6204 = shl i32 %6126, %6203
  %6205 = add i32 %6204, %6125
  %6206 = shl i32 %6205, 2
  %6207 = add i32 %6206, %6199
  %6208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6207, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.i32 %6208, 0
  %6210 = icmp eq i32 %6209, 0
  br i1 %6210, label %6228, label %6211

; <label>:6211                                    ; preds = %6183
  %6212 = icmp slt i32 %6209, 0
  %6213 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6184
  %6214 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6184
  %6215 = bitcast float* %6213 to i32*
  %6216 = bitcast float* %6214 to i32*
  br i1 %6212, label %6217, label %6224

; <label>:6217                                    ; preds = %6211
  %6218 = and i32 %6209, 1073741823
  %6219 = add i32 %6199, 20
  %6220 = add i32 %6219, %6218
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6220, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.i32 %6221, 1
  br label %6224

; <label>:6224                                    ; preds = %6217, %6211
  %6225 = phi i32 [ %6222, %6217 ], [ %6133, %6211 ]
  %6226 = phi i32 [ %6223, %6217 ], [ %6134, %6211 ]
  store i32 %6225, i32* %6215, align 4
  store i32 %6226, i32* %6216, align 4
  %6227 = add i32 %6184, 1
  br label %6228

; <label>:6228                                    ; preds = %6224, %6183
  %6229 = phi i32 [ %6184, %6183 ], [ %6227, %6224 ]
  %6230 = add nuw i32 %6185, 1
  %6231 = icmp eq i32 %6230, %6180
  br i1 %6231, label %6232, label %6183

; <label>:6232                                    ; preds = %6228
  br label %6233

; <label>:6233                                    ; preds = %6232, %6177
  %6234 = phi i32 [ %6178, %6177 ], [ %6229, %6232 ]
  %6235 = icmp eq i32 %6234, 1
  %6236 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  %6237 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  br i1 %6235, label %6238, label %6241

; <label>:6238                                    ; preds = %6233
  %6239 = load float, float* %6236, align 4
  %6240 = load float, float* %6237, align 4
  br label %6268

; <label>:6241                                    ; preds = %6233
  %6242 = load float, float* %6236, align 4
  %6243 = load float, float* %6237, align 4
  %6244 = fdiv fast float 1.000000e+00, %6243
  %6245 = fsub fast float %6242, %6244
  %6246 = icmp ugt i32 %6234, 1
  br i1 %6246, label %6247, label %6263

; <label>:6247                                    ; preds = %6241
  br label %6248

; <label>:6248                                    ; preds = %6248, %6247
  %6249 = phi float [ %6258, %6248 ], [ %6245, %6247 ]
  %6250 = phi float [ %6259, %6248 ], [ %6242, %6247 ]
  %6251 = phi i32 [ %6260, %6248 ], [ 1, %6247 ]
  %6252 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6251
  %6253 = load float, float* %6252, align 4
  %6254 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6251
  %6255 = load float, float* %6254, align 4
  %6256 = fdiv fast float 1.000000e+00, %6255
  %6257 = fsub fast float %6253, %6256
  %6258 = call float @dx.op.binary.f32(i32 36, float %6249, float %6257)  ; FMin(a,b)
  %6259 = call float @dx.op.binary.f32(i32 35, float %6250, float %6253)  ; FMax(a,b)
  %6260 = add nuw i32 %6251, 1
  %6261 = icmp eq i32 %6260, %6234
  br i1 %6261, label %6262, label %6248

; <label>:6262                                    ; preds = %6248
  br label %6263

; <label>:6263                                    ; preds = %6262, %6241
  %6264 = phi float [ %6245, %6241 ], [ %6258, %6262 ]
  %6265 = phi float [ %6242, %6241 ], [ %6259, %6262 ]
  %6266 = fsub fast float %6265, %6264
  %6267 = fdiv fast float 1.000000e+00, %6266
  br label %6268

; <label>:6268                                    ; preds = %6263, %6238
  %6269 = phi float [ %6239, %6238 ], [ %6265, %6263 ]
  %6270 = phi float [ %6240, %6238 ], [ %6267, %6263 ]
  %6271 = fadd fast float %5972, %6269
  %6272 = fmul fast float %6271, %6270
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, 2.000000e+00
  %6275 = fsub fast float 1.000000e+00, %6274
  %6276 = fmul fast float %6110, %6110
  %6277 = fsub fast float %6111, %6276
  %6278 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6277)  ; FMax(a,b)
  %6279 = fdiv fast float 1.000000e+00, %6278
  %6280 = fmul fast float %6111, %6110
  %6281 = fsub fast float %6112, %6280
  %6282 = fsub fast float %6275, %6110
  %6283 = fmul fast float %6275, %6275
  %6284 = fsub fast float %6283, %6111
  %6285 = fmul fast float %6279, %6281
  %6286 = fmul fast float %6285, %6282
  %6287 = fsub fast float %6284, %6286
  %6288 = fmul fast float %6111, %6111
  %6289 = fsub fast float %6113, %6288
  %6290 = fmul fast float %6281, %6281
  %6291 = fmul fast float %6290, %6279
  %6292 = fsub fast float %6289, %6291
  %6293 = fdiv fast float %6287, %6292
  %6294 = fmul fast float %6293, %6281
  %6295 = fsub fast float %6282, %6294
  %6296 = fmul fast float %6295, %6279
  %6297 = fmul fast float %6296, %6110
  %6298 = fsub fast float 1.000000e+00, %6297
  %6299 = fmul fast float %6293, %6111
  %6300 = fsub fast float %6298, %6299
  %6301 = fmul fast float %6296, %6296
  %6302 = fmul fast float %6293, 4.000000e+00
  %6303 = fmul fast float %6302, %6300
  %6304 = fsub fast float %6301, %6303
  %6305 = call float @dx.op.unary.f32(i32 24, float %6304)  ; Sqrt(value)
  %6306 = fcmp fast oge float %6296, 0.000000e+00
  %6307 = fsub fast float -0.000000e+00, %6305
  %6308 = select i1 %6306, float %6307, float %6305
  %6309 = fsub fast float %6308, %6296
  %6310 = fdiv fast float %6309, %6293
  %6311 = fdiv fast float %6300, %6309
  %6312 = fmul fast float %6310, 5.000000e-01
  %6313 = fmul fast float %6311, 2.000000e+00
  %6314 = select i1 %6306, float %6312, float %6313
  %6315 = select i1 %6306, float %6313, float %6312
  %6316 = call float @dx.op.binary.f32(i32 35, float %6314, float %6315)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 36, float %6314, float %6315)  ; FMin(a,b)
  %6318 = fcmp fast ogt float %6275, %6316
  %6319 = fsub fast float %6275, %6317
  %6320 = fsub fast float %6275, %6316
  %6321 = fsub fast float %6316, %6317
  %6322 = select i1 %6318, float %6320, float %6321
  %6323 = fmul float %6319, %6322
  %6324 = select i1 %6318, float %6317, float %6275
  %6325 = fcmp fast ogt float %6275, %6317
  %6326 = fmul fast float %6324, %6316
  %6327 = fadd fast float %6324, %6316
  %6328 = fmul fast float %6327, %6110
  %6329 = fadd fast float %6326, %6111
  %6330 = fsub fast float %6329, %6328
  %6331 = fdiv fast float %6330, %6323
  %6332 = select i1 %6325, float %6331, float 0.000000e+00
  %6333 = fsub fast float 1.000000e+00, %6332
  %6334 = select i1 %6318, float %6333, float %6332
  %6335 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6337 = fmul fast float %6336, %6335
  %6338 = fsub fast float 1.000000e+00, %6337
  br label %6339

; <label>:6339                                    ; preds = %6268, %5980, %5945, %5941, %5905
  %6340 = phi float [ 1.000000e+00, %5905 ], [ %6338, %6268 ], [ 1.000000e+00, %5945 ], [ 1.000000e+00, %5980 ], [ 1.000000e+00, %5941 ]
  %6341 = fcmp fast ogt float %5937, 0.000000e+00
  br i1 %6341, label %6342, label %6350, !dx.controlflow.hints !115

; <label>:6342                                    ; preds = %6339
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6345 = fadd fast float %6344, %5818
  %6346 = call float @dx.op.binary.f32(i32 35, float %6345, float 0.000000e+00)  ; FMax(a,b)
  %6347 = fadd fast float %6346, 0x3F10000000000000
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %49, float %5836, float %5837, float undef, float undef, i32 0, i32 0, i32 undef, float %6347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  br label %6350

; <label>:6350                                    ; preds = %6342, %6339
  %6351 = phi float [ %6349, %6342 ], [ 1.000000e+00, %6339 ]
  %6352 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %6352, label %6353, label %6361, !dx.controlflow.hints !116

; <label>:6353                                    ; preds = %6350
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6356 = fadd fast float %6355, %5818
  %6357 = call float @dx.op.binary.f32(i32 35, float %6356, float 0.000000e+00)  ; FMax(a,b)
  %6358 = fadd fast float %6357, 0x3F10000000000000
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %49, float %5828, float %5829, float undef, float undef, i32 0, i32 0, i32 undef, float %6358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  br label %6361

; <label>:6361                                    ; preds = %6353, %6350
  %6362 = phi float [ %6360, %6353 ], [ 1.000000e+00, %6350 ]
  %6363 = fcmp fast ogt float %5934, 0.000000e+00
  br i1 %6363, label %6364, label %6376, !dx.controlflow.hints !117

; <label>:6364                                    ; preds = %6361
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = fadd fast float %6366, %5818
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float 0.000000e+00)  ; FMax(a,b)
  %6369 = fadd fast float %6368, 0x3F10000000000000
  br i1 %5821, label %6370, label %6373, !dx.controlflow.hints !118

; <label>:6370                                    ; preds = %6364
  %6371 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %49, float %5810, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float %6369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 0
  br label %6376

; <label>:6373                                    ; preds = %6364
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %49, float %5810, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float %6369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  br label %6376

; <label>:6376                                    ; preds = %6373, %6370, %6361
  %6377 = phi float [ %6372, %6370 ], [ %6375, %6373 ], [ 1.000000e+00, %6361 ]
  %6378 = fsub fast float %6351, %6340
  %6379 = fmul fast float %6378, %5907
  %6380 = fadd fast float %6379, %6340
  %6381 = fsub fast float %6362, %6380
  %6382 = fmul fast float %6381, %5906
  %6383 = fadd fast float %6382, %6380
  %6384 = fsub fast float %6377, %6383
  %6385 = fmul fast float %6384, %5934
  %6386 = fadd fast float %6385, %6383
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6389 = fcmp fast ogt float %6388, 0.000000e+00
  br i1 %6389, label %6390, label %6430, !dx.controlflow.hints !119

; <label>:6390                                    ; preds = %6376
  %6391 = fcmp fast ugt float %6388, 0.000000e+00
  br i1 %6391, label %6392, label %6427

; <label>:6392                                    ; preds = %6390
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6403 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6409 = fadd fast float %6406, %5787
  %6410 = fadd fast float %6407, %5788
  %6411 = fadd fast float %6408, %5789
  %6412 = fmul fast float %6409, %6394
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6410, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6411, float %6413)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6397
  %6416 = fmul fast float %6409, %6399
  %6417 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6410, float %6416)  ; FMad(a,b,c)
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6411, float %6417)  ; FMad(a,b,c)
  %6419 = fadd fast float %6418, %6402
  %6420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %44, float %6415, float %6419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = fmul fast float %6421, %6404
  %6423 = fadd fast float %6422, %6403
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = fmul fast float %6424, %6388
  %6426 = fsub fast float 1.000000e+00, %6425
  br label %6427

; <label>:6427                                    ; preds = %6392, %6390
  %6428 = phi float [ %6426, %6392 ], [ 1.000000e+00, %6390 ]
  %6429 = fmul fast float %6428, %6386
  br label %6430

; <label>:6430                                    ; preds = %6427, %6376, %5767
  %6431 = phi float [ 1.000000e+00, %5767 ], [ %6429, %6427 ], [ %6386, %6376 ]
  %6432 = call float @dx.op.binary.f32(i32 36, float %6431, float %6431)  ; FMin(a,b)
  %6433 = call float @dx.op.binary.f32(i32 36, float %6431, float %6432)  ; FMin(a,b)
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  br i1 %6434, label %6435, label %6595, !dx.controlflow.hints !120

; <label>:6435                                    ; preds = %6430
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6440 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6445 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6451 = fmul fast float %6437, %5787
  %6452 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %6438, float %6451)  ; FMad(a,b,c)
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %6439, float %6452)  ; FMad(a,b,c)
  %6454 = fadd fast float %6453, %6440
  %6455 = fmul fast float %6442, %5787
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %6443, float %6455)  ; FMad(a,b,c)
  %6457 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %6444, float %6456)  ; FMad(a,b,c)
  %6458 = fadd fast float %6457, %6445
  %6459 = fmul fast float %6447, %5787
  %6460 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %6448, float %6459)  ; FMad(a,b,c)
  %6461 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %6449, float %6460)  ; FMad(a,b,c)
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6462, 3
  %6466 = fmul fast float %6465, %6454
  %6467 = fmul fast float %6465, %6458
  %6468 = fadd fast float %6466, %6463
  %6469 = fadd fast float %6467, %6464
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = fsub fast float %6468, %6471
  %6474 = fsub fast float %6469, %6472
  %6475 = fcmp fast olt float %6473, 0.000000e+00
  %6476 = fcmp fast olt float %6474, 0.000000e+00
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6481 = extractvalue %dx.types.CBufRet.f32 %6477, 3
  %6482 = select i1 %6475, float %6478, float %6480
  %6483 = select i1 %6476, float %6479, float %6481
  %6484 = fmul fast float %6482, %6473
  %6485 = fmul fast float %6483, %6474
  %6486 = call float @dx.op.unary.f32(i32 6, float %6484)  ; FAbs(value)
  %6487 = call float @dx.op.unary.f32(i32 6, float %6485)  ; FAbs(value)
  %6488 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %6489 = call float @dx.op.binary.f32(i32 35, float %6486, float %6487)  ; FMax(a,b)
  %6490 = fsub fast float %6488, %6489
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  br i1 %6492, label %6493, label %6534, !dx.controlflow.hints !121

; <label>:6493                                    ; preds = %6435
  %6494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %47, float %6468, float %6469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6495 = extractvalue %dx.types.ResRet.f32 %6494, 1
  %6496 = fcmp fast ogt float %6495, 0.000000e+00
  br i1 %6496, label %6497, label %6529

; <label>:6497                                    ; preds = %6493
  %6498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %47, float %6468, float %6469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.ResRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.ResRet.f32 %6498, 2
  %6502 = extractvalue %dx.types.ResRet.f32 %6498, 3
  %6503 = fsub fast float 1.000000e+00, %6450
  %6504 = fsub fast float %6503, %6461
  %6505 = fmul fast float %6504, 0x400921FB60000000
  %6506 = fadd fast float %6505, 0x3FF921FB60000000
  %6507 = call float @dx.op.unary.f32(i32 13, float %6506)  ; Sin(value)
  %6508 = fadd fast float %6507, -1.000000e+00
  %6509 = fmul fast float %6508, 0x3FD45F3060000000
  %6510 = fmul fast float %6504, 0x401921FB60000000
  %6511 = fadd fast float %6510, 0x400921FB60000000
  %6512 = call float @dx.op.unary.f32(i32 13, float %6511)  ; Sin(value)
  %6513 = fadd fast float %6512, 0x3E7777A5C0000000
  %6514 = fmul fast float %6513, 0x3FC45F3060000000
  %6515 = fmul fast float %6504, 0x4022D97C80000000
  %6516 = fadd fast float %6515, 0x4012D97C80000000
  %6517 = call float @dx.op.unary.f32(i32 13, float %6516)  ; Sin(value)
  %6518 = fadd fast float %6517, 1.000000e+00
  %6519 = fmul fast float %6518, 0x3FBB2995E0000000
  %6520 = fmul fast float %6504, 0x402921FB60000000
  %6521 = fadd fast float %6520, 0x401921FB60000000
  %6522 = call float @dx.op.unary.f32(i32 13, float %6521)  ; Sin(value)
  %6523 = fadd fast float %6522, 0xBE8777A5C0000000
  %6524 = fmul fast float %6523, 0x3FB45F3060000000
  %6525 = call float @dx.op.dot4.f32(i32 56, float %6499, float %6500, float %6501, float %6502, float %6509, float %6514, float %6519, float %6524)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6526 = fmul fast float %6525, 0xBFF7154760000000
  %6527 = call float @dx.op.unary.f32(i32 21, float %6526)  ; Exp(value)
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  br label %6529

; <label>:6529                                    ; preds = %6497, %6493
  %6530 = phi float [ %6528, %6497 ], [ 1.000000e+00, %6493 ]
  %6531 = fadd fast float %6530, -1.000000e+00
  %6532 = fmul fast float %6531, %6491
  %6533 = fadd fast float %6532, 1.000000e+00
  br label %6534

; <label>:6534                                    ; preds = %6529, %6435
  %6535 = phi float [ %6533, %6529 ], [ 1.000000e+00, %6435 ]
  %6536 = fmul fast float %6535, %6431
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6541 = fadd fast float %6538, %188
  %6542 = fadd fast float %6539, %189
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6545 = fsub fast float -0.000000e+00, %6541
  %6546 = fsub fast float -0.000000e+00, %6542
  %6547 = fsub fast float %5230, %6540
  %6548 = fadd fast float %6547, %6544
  %6549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6545, float %6546, float %6548)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %6551 = fdiv fast float 1.000000e+00, %6550
  %6552 = fmul fast float %6551, %6549
  %6553 = fmul fast float %5768, %6552
  %6554 = fmul fast float %5769, %6552
  %6555 = fadd fast float %6553, %6541
  %6556 = fadd fast float %6554, %6542
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = fsub fast float %6555, %6558
  %6561 = fsub fast float %6556, %6559
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6565 = fmul fast float %6560, %6563
  %6566 = fmul fast float %6561, %6564
  %6567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.i32 %6567, 3
  %6569 = icmp eq i32 %6568, 0
  br i1 %6569, label %6575, label %6570

; <label>:6570                                    ; preds = %6534
  %6571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %6565, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6572 = extractvalue %dx.types.ResRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.ResRet.f32 %6571, 1
  %6574 = extractvalue %dx.types.ResRet.f32 %6571, 2
  br label %6580

; <label>:6575                                    ; preds = %6534
  %6576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6565, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6577 = extractvalue %dx.types.ResRet.f32 %6576, 0
  %6578 = extractvalue %dx.types.ResRet.f32 %6576, 1
  %6579 = extractvalue %dx.types.ResRet.f32 %6576, 2
  br label %6580

; <label>:6580                                    ; preds = %6575, %6570
  %6581 = phi float [ %6572, %6570 ], [ %6577, %6575 ]
  %6582 = phi float [ %6573, %6570 ], [ %6578, %6575 ]
  %6583 = phi float [ %6574, %6570 ], [ %6579, %6575 ]
  %6584 = extractvalue %dx.types.CBufRet.f32 %6543, 2
  %6585 = fmul fast float %6584, %6581
  %6586 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6587 = fsub fast float %6552, %6586
  %6588 = fsub fast float %6587, %6585
  %6589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6588)  ; FMax(a,b)
  %6590 = fmul fast float %6589, %6582
  %6591 = call float @dx.op.binary.f32(i32 36, float %6583, float %6590)  ; FMin(a,b)
  %6592 = fmul fast float %6591, 0xBFF7154760000000
  %6593 = call float @dx.op.unary.f32(i32 21, float %6592)  ; Exp(value)
  %6594 = fmul fast float %6536, %6593
  br label %6595

; <label>:6595                                    ; preds = %6580, %6430
  %6596 = phi float [ %6594, %6580 ], [ %6431, %6430 ]
  %6597 = call float @dx.op.binary.f32(i32 36, float %6596, float %6596)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6596, float %6597)  ; FMin(a,b)
  %6599 = fcmp fast ogt float %6598, 0.000000e+00
  br i1 %6599, label %6600, label %6854, !dx.controlflow.hints !122

; <label>:6600                                    ; preds = %6595
  %6601 = fmul fast float %6596, %5779
  %6602 = fmul fast float %6596, %5780
  %6603 = fmul fast float %6596, %5781
  %6604 = fsub fast float %190, %4385
  %6605 = fcmp fast ogt float %6604, 0.000000e+00
  %6606 = fmul fast float %5768, 5.120000e+02
  %6607 = fmul fast float %5769, 5.120000e+02
  %6608 = fmul fast float %5770, 5.120000e+02
  %6609 = fadd fast float %6608, %190
  %6610 = fsub fast float %4385, %6609
  %6611 = fmul fast float %6610, 2.000000e+00
  %6612 = fadd fast float %6611, %6609
  %6613 = select i1 %6605, float %6612, float %6609
  %6614 = fsub fast float %6613, %190
  %6615 = call float @dx.op.dot3.f32(i32 55, float %6606, float %6607, float %6614, float %6606, float %6607, float %6614)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = call float @dx.op.unary.f32(i32 25, float %6615)  ; Rsqrt(value)
  %6617 = fmul fast float %6616, %6606
  %6618 = fmul fast float %6616, %6607
  %6619 = fmul fast float %6616, %6614
  %6620 = fsub fast float %4385, %190
  %6621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6620)  ; Dot3(ax,ay,az,bx,by,bz)
  %6622 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6617, float %6618, float %6619)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = fdiv fast float 1.000000e+00, %6622
  %6624 = fmul fast float %6623, %6621
  %6625 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6604, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = fcmp fast ogt float %6625, 0.000000e+00
  %6627 = fcmp fast olt float %6625, 0.000000e+00
  %6628 = zext i1 %6626 to i32
  %6629 = zext i1 %6627 to i32
  %6630 = sub nsw i32 %6628, %6629
  %6631 = sitofp i32 %6630 to float
  %6632 = fsub fast float %6613, %4385
  %6633 = call float @dx.op.dot3.f32(i32 55, float %6606, float %6607, float %6632, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6634 = fcmp fast ogt float %6633, 0.000000e+00
  %6635 = fcmp fast olt float %6633, 0.000000e+00
  %6636 = zext i1 %6634 to i32
  %6637 = zext i1 %6635 to i32
  %6638 = sub nsw i32 %6636, %6637
  %6639 = sitofp i32 %6638 to float
  %6640 = fcmp fast une float %6631, %6639
  br i1 %6640, label %6641, label %6651

; <label>:6641                                    ; preds = %6600
  %6642 = fmul fast float %6624, %6619
  %6643 = fmul fast float %6624, %6618
  %6644 = fmul fast float %6624, %6617
  %6645 = fmul fast float %6644, %6644
  %6646 = fmul fast float %6643, %6643
  %6647 = fadd fast float %6645, %6646
  %6648 = fmul fast float %6642, %6642
  %6649 = fadd fast float %6647, %6648
  %6650 = call float @dx.op.unary.f32(i32 24, float %6649)  ; Sqrt(value)
  br label %6661

; <label>:6651                                    ; preds = %6600
  %6652 = icmp slt i32 %6630, 0
  br i1 %6652, label %6653, label %6661

; <label>:6653                                    ; preds = %6651
  %6654 = fsub fast float %190, %6613
  %6655 = fmul fast float %6606, %6606
  %6656 = fmul fast float %6607, %6607
  %6657 = fadd fast float %6655, %6656
  %6658 = fmul fast float %6654, %6654
  %6659 = fadd fast float %6657, %6658
  %6660 = call float @dx.op.unary.f32(i32 24, float %6659)  ; Sqrt(value)
  br label %6661

; <label>:6661                                    ; preds = %6653, %6651, %6641
  %6662 = phi float [ %6650, %6641 ], [ %6660, %6653 ], [ 0.000000e+00, %6651 ]
  %6663 = fsub fast float -0.000000e+00, %6662
  %6664 = select i1 %6605, float -0.000000e+00, float %6663
  %6665 = fmul fast float %4386, 0x3FF7154760000000
  %6666 = fmul fast float %6665, %6664
  %6667 = fmul fast float %4387, 0x3FF7154760000000
  %6668 = fmul fast float %6667, %6664
  %6669 = fmul fast float %4388, 0x3FF7154760000000
  %6670 = fmul fast float %6669, %6664
  %6671 = call float @dx.op.unary.f32(i32 21, float %6666)  ; Exp(value)
  %6672 = call float @dx.op.unary.f32(i32 21, float %6668)  ; Exp(value)
  %6673 = call float @dx.op.unary.f32(i32 21, float %6670)  ; Exp(value)
  %6674 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6675 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6676 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6677 = fmul fast float %6601, %6674
  %6678 = fmul fast float %6602, %6675
  %6679 = fmul fast float %6603, %6676
  %6680 = fsub fast float %5768, %5267
  %6681 = fsub fast float %5769, %5268
  %6682 = fsub fast float %5770, %5269
  %6683 = call float @dx.op.dot3.f32(i32 55, float %6680, float %6681, float %6682, float %6680, float %6681, float %6682)  ; Dot3(ax,ay,az,bx,by,bz)
  %6684 = call float @dx.op.unary.f32(i32 25, float %6683)  ; Rsqrt(value)
  %6685 = fmul fast float %6684, %6680
  %6686 = fmul fast float %6684, %6681
  %6687 = fmul fast float %6684, %6682
  %6688 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5271, float %5272, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6690 = call float @dx.op.unary.f32(i32 7, float %6688)  ; Saturate(value)
  %6691 = fmul fast float %6690, %6690
  %6692 = fmul fast float %6691, %5320
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = fmul fast float %6693, %6690
  %6695 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6696 = fmul fast float %6695, %6695
  %6697 = call float @dx.op.unary.f32(i32 6, float %6688)  ; FAbs(value)
  %6698 = call float @dx.op.binary.f32(i32 35, float %5617, float 0x3F847AE140000000)  ; FMax(a,b)
  %6699 = fmul fast float %6698, %6698
  %6700 = fmul fast float %6699, %6699
  %6701 = fsub fast float 1.000000e+00, %6700
  %6702 = fmul fast float %5275, %5275
  %6703 = fmul fast float %6702, %6701
  %6704 = fadd fast float %6703, %6700
  %6705 = bitcast float %6704 to i32
  %6706 = ashr i32 %6705, 1
  %6707 = add nsw i32 %6706, 532487669
  %6708 = bitcast i32 %6707 to float
  %6709 = fadd fast float %6708, %5275
  %6710 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = fsub fast float 1.000000e+00, %3975
  %6712 = call float @dx.op.binary.f32(i32 35, float %6711, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6713 = fmul fast float %6712, %6712
  %6714 = fmul fast float %6713, %6700
  %6715 = fmul fast float %6710, %6710
  %6716 = fsub fast float 1.000000e+00, %6696
  %6717 = fsub fast float %6716, %6715
  %6718 = fdiv fast float %6715, %6714
  %6719 = fadd fast float %6718, %6696
  %6720 = fdiv fast float %6717, %6700
  %6721 = fadd fast float %6719, %6720
  %6722 = fmul fast float %6697, %6697
  %6723 = fmul fast float %6722, %6701
  %6724 = fadd fast float %6723, %6700
  %6725 = bitcast float %6724 to i32
  %6726 = ashr i32 %6725, 1
  %6727 = add nsw i32 %6726, 532487669
  %6728 = bitcast i32 %6727 to float
  %6729 = fadd fast float %6728, %6697
  %6730 = fmul fast float %6700, %6712
  %6731 = fmul fast float %6721, %6721
  %6732 = fmul fast float %6731, %6730
  %6733 = fmul fast float %6732, %6709
  %6734 = fmul fast float %6733, %6729
  %6735 = fdiv fast float 0x3FF0A00000000000, %6734
  %6736 = fsub fast float 1.000000e+00, %4004
  %6737 = call float @dx.op.binary.f32(i32 35, float %6736, float 0x3F847AE140000000)  ; FMax(a,b)
  %6738 = fmul fast float %6737, %6737
  %6739 = fmul fast float %6738, %6738
  %6740 = fsub fast float 1.000000e+00, %6739
  %6741 = fmul fast float %6702, %6740
  %6742 = fadd fast float %6741, %6739
  %6743 = bitcast float %6742 to i32
  %6744 = ashr i32 %6743, 1
  %6745 = add nsw i32 %6744, 532487669
  %6746 = bitcast i32 %6745 to float
  %6747 = fadd fast float %6746, %5275
  %6748 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = fmul fast float %6713, %6739
  %6750 = fmul fast float %6748, %6748
  %6751 = fsub fast float %6716, %6750
  %6752 = fdiv fast float %6750, %6749
  %6753 = fadd fast float %6752, %6696
  %6754 = fdiv fast float %6751, %6739
  %6755 = fadd fast float %6753, %6754
  %6756 = fmul fast float %6722, %6740
  %6757 = fadd fast float %6756, %6739
  %6758 = bitcast float %6757 to i32
  %6759 = ashr i32 %6758, 1
  %6760 = add nsw i32 %6759, 532487669
  %6761 = bitcast i32 %6760 to float
  %6762 = fadd fast float %6761, %6697
  %6763 = fmul fast float %6739, %6712
  %6764 = fmul fast float %6755, %6755
  %6765 = fmul fast float %6764, %6763
  %6766 = fmul fast float %6765, %6747
  %6767 = fmul fast float %6766, %6762
  %6768 = fdiv fast float 0x3FF0A00000000000, %6767
  %6769 = fmul fast float %6735, %4022
  %6770 = fmul fast float %6735, %4023
  %6771 = fmul fast float %6735, %4024
  %6772 = fadd fast float %6768, %6769
  %6773 = fadd fast float %6768, %6770
  %6774 = fadd fast float %6768, %6771
  %6775 = call float @dx.op.unary.f32(i32 6, float %6689)  ; FAbs(value)
  %6776 = fsub fast float 1.000000e+00, %6775
  %6777 = bitcast float %6776 to i32
  %6778 = sitofp i32 %6777 to float
  %6779 = fmul fast float %6778, 5.000000e+00
  %6780 = fadd fast float %6779, 0xC1EFBF8940000000
  %6781 = fptosi float %6780 to i32
  %6782 = bitcast i32 %6781 to float
  %6783 = fsub fast float 1.000000e+00, %5184
  %6784 = fsub fast float 1.000000e+00, %5185
  %6785 = fsub fast float 1.000000e+00, %5273
  %6786 = fmul fast float %6782, %6783
  %6787 = fmul fast float %6782, %6784
  %6788 = fmul fast float %6782, %6785
  %6789 = fadd fast float %6786, %5184
  %6790 = fadd fast float %6787, %5185
  %6791 = fadd fast float %6788, %5273
  %6792 = fmul fast float %6688, 9.843750e-01
  %6793 = fadd fast float %6792, 7.812500e-03
  %6794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %47, float %6793, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6795 = extractvalue %dx.types.ResRet.f32 %6794, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6794, 3
  %6797 = fmul fast float %6795, %5184
  %6798 = fmul fast float %6795, %5185
  %6799 = fmul fast float %6795, %5273
  %6800 = fadd fast float %6797, %6796
  %6801 = fadd fast float %6798, %6796
  %6802 = fadd fast float %6799, %6796
  %6803 = call float @dx.op.binary.f32(i32 35, float %6801, float %6802)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 35, float %6800, float %6803)  ; FMax(a,b)
  %6805 = fsub fast float 1.000000e+00, %6804
  %6806 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5197, float %5196, float %5195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6807 = call float @dx.op.unary.f32(i32 7, float %6806)  ; Saturate(value)
  %6808 = fmul fast float %6807, 9.843750e-01
  %6809 = fadd fast float %6808, 7.812500e-03
  %6810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %47, float %6809, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 2
  %6812 = extractvalue %dx.types.ResRet.f32 %6810, 3
  %6813 = fmul fast float %6811, %5184
  %6814 = fmul fast float %6811, %5185
  %6815 = fmul fast float %6811, %5273
  %6816 = fadd fast float %6813, %6812
  %6817 = fadd fast float %6814, %6812
  %6818 = fadd fast float %6815, %6812
  %6819 = call float @dx.op.binary.f32(i32 35, float %6817, float %6818)  ; FMax(a,b)
  %6820 = call float @dx.op.binary.f32(i32 35, float %6816, float %6819)  ; FMax(a,b)
  %6821 = fsub fast float 1.000000e+00, %6820
  %6822 = fmul fast float %6821, %6807
  %6823 = fmul fast float %6822, %4022
  %6824 = fmul fast float %6822, %4023
  %6825 = fmul fast float %6822, %4024
  %6826 = fmul fast float %6805, %6694
  %6827 = fadd fast float %6823, %6826
  %6828 = fadd fast float %6824, %6826
  %6829 = fadd fast float %6825, %6826
  %6830 = fmul fast float %6827, %6677
  %6831 = fmul fast float %6828, %6678
  %6832 = fmul fast float %6829, %6679
  %6833 = fmul fast float %6694, %6677
  %6834 = fmul fast float %6833, %6772
  %6835 = fmul fast float %6834, %6789
  %6836 = fmul fast float %6694, %6678
  %6837 = fmul fast float %6836, %6773
  %6838 = fmul fast float %6837, %6790
  %6839 = fmul fast float %6694, %6679
  %6840 = fmul fast float %6839, %6774
  %6841 = fmul fast float %6840, %6791
  %6842 = fadd fast float %6830, %5570
  %6843 = fmul fast float %6842, %1310
  %6844 = fadd fast float %6831, %5571
  %6845 = fmul fast float %6844, %1310
  %6846 = fadd fast float %6832, %5572
  %6847 = fmul fast float %6846, %1310
  %6848 = fadd fast float %6835, %5758
  %6849 = fmul fast float %6848, %1310
  %6850 = fadd fast float %6838, %5760
  %6851 = fmul fast float %6850, %1310
  %6852 = fadd fast float %6841, %5762
  %6853 = fmul fast float %6852, %1310
  br label %6854

; <label>:6854                                    ; preds = %6661, %6595, %5744
  %6855 = phi float [ %5759, %5744 ], [ %5759, %6595 ], [ %6849, %6661 ]
  %6856 = phi float [ %5761, %5744 ], [ %5761, %6595 ], [ %6851, %6661 ]
  %6857 = phi float [ %5763, %5744 ], [ %5763, %6595 ], [ %6853, %6661 ]
  %6858 = phi float [ %5630, %5744 ], [ %5630, %6595 ], [ %6843, %6661 ]
  %6859 = phi float [ %5631, %5744 ], [ %5631, %6595 ], [ %6845, %6661 ]
  %6860 = phi float [ %5632, %5744 ], [ %5632, %6595 ], [ %6847, %6661 ]
  %6861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.i32 %6861, 0
  %6863 = icmp eq i32 %6862, 0
  br i1 %6863, label %7500, label %6864

; <label>:6864                                    ; preds = %6854
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6865, 3
  %6868 = fmul fast float %6866, %109
  %6869 = fmul fast float %6867, %110
  %6870 = fptoui float %6868 to i32
  %6871 = fptoui float %6869 to i32
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6875 = extractvalue %dx.types.CBufRet.f32 %6872, 3
  %6876 = fadd fast float %100, -4.000000e+00
  %6877 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6878 = fadd fast float %6877, %6873
  %6879 = fmul fast float %6878, %6874
  %6880 = call float @dx.op.unary.f32(i32 23, float %6879)  ; Log(value)
  %6881 = fmul fast float %6880, %6875
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6884 = fmul fast float %6881, %6883
  %6885 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.i32 %6886, 1
  %6888 = add i32 %6887, -1
  %6889 = uitofp i32 %6887 to float
  %6890 = fmul fast float %6889, %6885
  %6891 = fptoui float %6890 to i32
  %6892 = call i32 @dx.op.binary.i32(i32 40, i32 %6891, i32 %6888)  ; UMin(a,b)
  %6893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.i32 %6893, 2
  %6895 = extractvalue %dx.types.CBufRet.i32 %6893, 3
  %6896 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6871, i32 %6894, i32 %6870)  ; UMad(a,b,c)
  %6897 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6892, i32 %6895, i32 %6896)  ; UMad(a,b,c)
  %6898 = add nsw i32 %6862, -1
  %6899 = call i32 @dx.op.binary.i32(i32 37, i32 %6898, i32 0)  ; IMax(a,b)
  %6900 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %6901 = fptoui float %6900 to i32
  %6902 = lshr i32 %6901, 5
  %6903 = call i32 @dx.op.binary.i32(i32 40, i32 %6902, i32 8191)  ; UMin(a,b)
  %6904 = shl i32 %6903, 2
  %6905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6904, i32 undef)  ; BufferLoad(srv,index,wot)
  %6906 = extractvalue %dx.types.ResRet.i32 %6905, 0
  %6907 = lshr i32 %6906, 16
  %6908 = and i32 %6906, 65535
  %6909 = lshr i32 %6906, 21
  %6910 = lshr i32 %6908, 5
  %6911 = call i32 @dx.op.binary.i32(i32 40, i32 %6910, i32 %6899)  ; UMin(a,b)
  %6912 = icmp ugt i32 %6909, %6911
  br i1 %6912, label %7500, label %6913

; <label>:6913                                    ; preds = %6864
  br label %6914

; <label>:6914                                    ; preds = %7490, %6913
  %6915 = phi i32 [ %7497, %7490 ], [ %6909, %6913 ]
  %6916 = phi float [ %7491, %7490 ], [ %6855, %6913 ]
  %6917 = phi float [ %7492, %7490 ], [ %6856, %6913 ]
  %6918 = phi float [ %7493, %7490 ], [ %6857, %6913 ]
  %6919 = phi float [ %7494, %7490 ], [ %6858, %6913 ]
  %6920 = phi float [ %7495, %7490 ], [ %6859, %6913 ]
  %6921 = phi float [ %7496, %7490 ], [ %6860, %6913 ]
  %6922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.i32 %6922, 0
  %6924 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6897, i32 %6923, i32 %6915)  ; UMad(a,b,c)
  %6925 = shl i32 %6924, 2
  %6926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6925, i32 undef)  ; BufferLoad(srv,index,wot)
  %6927 = extractvalue %dx.types.ResRet.i32 %6926, 0
  %6928 = shl i32 %6915, 5
  %6929 = sub nsw i32 %6907, %6928
  %6930 = call i32 @dx.op.binary.i32(i32 37, i32 %6929, i32 0)  ; IMax(a,b)
  %6931 = call i32 @dx.op.binary.i32(i32 38, i32 %6930, i32 31)  ; IMin(a,b)
  %6932 = sub nsw i32 1, %6907
  %6933 = add nsw i32 %6932, %6908
  %6934 = call i32 @dx.op.binary.i32(i32 37, i32 %6933, i32 0)  ; IMax(a,b)
  %6935 = call i32 @dx.op.binary.i32(i32 38, i32 %6934, i32 32)  ; IMin(a,b)
  %6936 = and i32 %6935, 31
  %6937 = shl i32 -1, %6936
  %6938 = xor i32 %6937, -1
  %6939 = and i32 %6931, 31
  %6940 = shl i32 %6938, %6939
  %6941 = icmp eq i32 %6935, 32
  %6942 = select i1 %6941, i32 -1, i32 %6940
  %6943 = and i32 %6942, %6927
  %6944 = icmp eq i32 %6943, 0
  br i1 %6944, label %7490, label %6945

; <label>:6945                                    ; preds = %6914
  br label %6946

; <label>:6946                                    ; preds = %7080, %6945
  %6947 = phi i32 [ %6958, %7080 ], [ %6943, %6945 ]
  %6948 = phi float [ %7081, %7080 ], [ %6916, %6945 ]
  %6949 = phi float [ %7082, %7080 ], [ %6917, %6945 ]
  %6950 = phi float [ %7083, %7080 ], [ %6918, %6945 ]
  %6951 = phi float [ %7084, %7080 ], [ %6919, %6945 ]
  %6952 = phi float [ %7085, %7080 ], [ %6920, %6945 ]
  %6953 = phi float [ %7086, %7080 ], [ %6921, %6945 ]
  %6954 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6947)  ; FirstbitLo(value)
  %6955 = add i32 %6954, %6928
  %6956 = and i32 %6954, 31
  %6957 = shl i32 1, %6956
  %6958 = xor i32 %6957, %6947
  %6959 = mul i32 %6955, 112
  %6960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6959, i32 undef)  ; BufferLoad(srv,index,wot)
  %6961 = extractvalue %dx.types.ResRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.ResRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.ResRet.f32 %6960, 2
  %6964 = or i32 %6959, 12
  %6965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6964, i32 undef)  ; BufferLoad(srv,index,wot)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = add i32 %6959, 16
  %6968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6967, i32 undef)  ; BufferLoad(srv,index,wot)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.ResRet.f32 %6968, 1
  %6971 = extractvalue %dx.types.ResRet.f32 %6968, 2
  %6972 = add i32 %6959, 28
  %6973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6972, i32 undef)  ; BufferLoad(srv,index,wot)
  %6974 = extractvalue %dx.types.ResRet.i32 %6973, 0
  %6975 = add i32 %6959, 44
  %6976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6975, i32 undef)  ; BufferLoad(srv,index,wot)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = add i32 %6959, 48
  %6979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6978, i32 undef)  ; BufferLoad(srv,index,wot)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = extractvalue %dx.types.ResRet.f32 %6979, 3
  %6984 = add i32 %6959, 64
  %6985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6984, i32 undef)  ; BufferLoad(srv,index,wot)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.ResRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.ResRet.f32 %6985, 2
  %6989 = extractvalue %dx.types.ResRet.f32 %6985, 3
  %6990 = add i32 %6959, 80
  %6991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6990, i32 undef)  ; BufferLoad(srv,index,wot)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6994 = add i32 %6959, 92
  %6995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6994, i32 undef)  ; BufferLoad(srv,index,wot)
  %6996 = extractvalue %dx.types.ResRet.i32 %6995, 0
  %6997 = call float @dx.op.dot3.f32(i32 55, float %6961, float %6962, float %6963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6998 = select i1 %260, float %6992, float %6961
  %6999 = select i1 %260, float %6997, float %6962
  %7000 = select i1 %260, float %6993, float %6963
  %7001 = and i32 %6996, 65535
  %7002 = uitofp i32 %7001 to float
  %7003 = lshr i32 %6996, 16
  %7004 = uitofp i32 %7003 to float
  %7005 = and i32 %6974, 65535
  %7006 = and i32 %6974, 50331648
  %7007 = icmp eq i32 %7006, 33554432
  %7008 = fsub fast float %6980, %188
  %7009 = fsub fast float %6981, %189
  %7010 = fsub fast float %6982, %190
  %7011 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7009, float %7010, float %7008, float %7009, float %7010)  ; Dot3(ax,ay,az,bx,by,bz)
  %7012 = call float @dx.op.unary.f32(i32 24, float %7011)  ; Sqrt(value)
  %7013 = fdiv fast float 1.000000e+00, %7012
  %7014 = fmul fast float %7013, %7008
  %7015 = fmul fast float %7013, %7009
  %7016 = fmul fast float %7013, %7010
  %7017 = fadd fast float %7012, %6966
  %7018 = fdiv fast float 1.000000e+00, %7017
  %7019 = fmul float %6977, %7018
  %7020 = fmul float %7019, %7019
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  br i1 %7007, label %7022, label %7043

; <label>:7022                                    ; preds = %6946
  %7023 = fmul fast float %6988, %6969
  %7024 = fmul fast float %6988, %6970
  %7025 = fmul fast float %6988, %6971
  %7026 = fadd fast float %7008, %7023
  %7027 = fadd fast float %7009, %7024
  %7028 = fadd fast float %7010, %7025
  %7029 = call float @dx.op.dot3.f32(i32 55, float %7026, float %7027, float %7028, float %7026, float %7027, float %7028)  ; Dot3(ax,ay,az,bx,by,bz)
  %7030 = call float @dx.op.unary.f32(i32 25, float %7029)  ; Rsqrt(value)
  %7031 = fmul fast float %7030, %7026
  %7032 = fmul fast float %7030, %7027
  %7033 = fmul fast float %7030, %7028
  %7034 = fsub fast float %188, %6980
  %7035 = fsub fast float %189, %6981
  %7036 = fsub fast float %190, %6982
  %7037 = fsub fast float -0.000000e+00, %7034
  %7038 = fsub fast float -0.000000e+00, %7035
  %7039 = fsub fast float -0.000000e+00, %7036
  %7040 = call float @dx.op.dot3.f32(i32 55, float %7037, float %7038, float %7039, float %6969, float %6970, float %6971)  ; Dot3(ax,ay,az,bx,by,bz)
  %7041 = fcmp fast ogt float %7040, 0.000000e+00
  %7042 = uitofp i1 %7041 to float
  br label %7043

; <label>:7043                                    ; preds = %7022, %6946
  %7044 = phi float [ %7042, %7022 ], [ 1.000000e+00, %6946 ]
  %7045 = phi float [ %7031, %7022 ], [ %7014, %6946 ]
  %7046 = phi float [ %7032, %7022 ], [ %7015, %6946 ]
  %7047 = phi float [ %7033, %7022 ], [ %7016, %6946 ]
  %7048 = call float @dx.op.dot3.f32(i32 55, float %6969, float %6970, float %6971, float %7045, float %7046, float %7047)  ; Dot3(ax,ay,az,bx,by,bz)
  %7049 = fmul fast float %7048, %7048
  %7050 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7051 = fsub fast float 1.000000e+00, %7050
  %7052 = fmul fast float %7051, 5.000000e-01
  %7053 = fcmp fast ogt float %7048, 0.000000e+00
  %7054 = fsub fast float 1.000000e+00, %7052
  %7055 = select i1 %7053, float %7052, float %7054
  %7056 = fmul fast float %7055, %7004
  %7057 = fadd fast float %7056, %7002
  %7058 = fmul fast float %7057, 0x3EF0001000000000
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %47, float %7058, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = fmul fast float %7048, %6986
  %7062 = fadd fast float %7061, %6987
  %7063 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7064 = select i1 %7007, float 1.000000e+00, float %7063
  %7065 = select i1 %7007, float %7063, float 1.000000e+00
  %7066 = fmul fast float %7012, %6983
  %7067 = fsub fast float 1.000000e+00, %7066
  %7068 = fmul fast float %7067, %6989
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7070 = fmul fast float %7069, %7065
  %7071 = fmul fast float %7070, 2.000000e+00
  %7072 = fsub fast float 3.000000e+00, %7071
  %7073 = fmul fast float %7060, %7044
  %7074 = fmul fast float %7070, %7070
  %7075 = fmul fast float %7074, %7073
  %7076 = fmul fast float %7075, %7072
  %7077 = call float @dx.op.binary.f32(i32 36, float %7076, float %7076)  ; FMin(a,b)
  %7078 = call float @dx.op.binary.f32(i32 36, float %7076, float %7077)  ; FMin(a,b)
  %7079 = fcmp fast ogt float %7078, 0.000000e+00
  br i1 %7079, label %7088, label %7080, !dx.controlflow.hints !123

; <label>:7080                                    ; preds = %7255, %7188, %7043
  %7081 = phi float [ %6948, %7188 ], [ %6948, %7043 ], [ %7486, %7255 ]
  %7082 = phi float [ %6949, %7188 ], [ %6949, %7043 ], [ %7487, %7255 ]
  %7083 = phi float [ %6950, %7188 ], [ %6950, %7043 ], [ %7488, %7255 ]
  %7084 = phi float [ %6951, %7188 ], [ %6951, %7043 ], [ %7474, %7255 ]
  %7085 = phi float [ %6952, %7188 ], [ %6952, %7043 ], [ %7475, %7255 ]
  %7086 = phi float [ %6953, %7188 ], [ %6953, %7043 ], [ %7476, %7255 ]
  %7087 = icmp eq i32 %6947, %6957
  br i1 %7087, label %7489, label %6946

; <label>:7088                                    ; preds = %7043
  %7089 = icmp eq i32 %7005, 255
  br i1 %7089, label %7188, label %7090, !dx.controlflow.hints !124

; <label>:7090                                    ; preds = %7088
  %7091 = mul nuw nsw i32 %7005, 176
  %7092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7091, i32 undef)  ; BufferLoad(srv,index,wot)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.ResRet.f32 %7092, 3
  %7097 = add nuw nsw i32 %7091, 16
  %7098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7099 = extractvalue %dx.types.ResRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.ResRet.f32 %7098, 1
  %7101 = add nuw nsw i32 %7091, 32
  %7102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7101, i32 undef)  ; BufferLoad(srv,index,wot)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.ResRet.f32 %7102, 2
  %7106 = add nuw nsw i32 %7091, 48
  %7107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7106, i32 undef)  ; BufferLoad(srv,index,wot)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.ResRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.ResRet.f32 %7107, 2
  %7111 = extractvalue %dx.types.ResRet.f32 %7107, 3
  %7112 = add nuw nsw i32 %7091, 64
  %7113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7112, i32 undef)  ; BufferLoad(srv,index,wot)
  %7114 = extractvalue %dx.types.ResRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.ResRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.ResRet.f32 %7113, 2
  %7117 = extractvalue %dx.types.ResRet.f32 %7113, 3
  %7118 = add nuw nsw i32 %7091, 80
  %7119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7118, i32 undef)  ; BufferLoad(srv,index,wot)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.ResRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.ResRet.f32 %7119, 2
  %7123 = extractvalue %dx.types.ResRet.f32 %7119, 3
  %7124 = add nuw nsw i32 %7091, 96
  %7125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7124, i32 undef)  ; BufferLoad(srv,index,wot)
  %7126 = extractvalue %dx.types.ResRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.ResRet.f32 %7125, 1
  %7128 = extractvalue %dx.types.ResRet.f32 %7125, 2
  %7129 = extractvalue %dx.types.ResRet.f32 %7125, 3
  %7130 = bitcast float %7100 to i32
  %7131 = fmul fast float %7105, %116
  %7132 = fmul fast float %7105, %117
  %7133 = fmul fast float %7105, %118
  %7134 = fadd fast float %7131, %188
  %7135 = fadd fast float %7132, %189
  %7136 = fadd fast float %7133, %190
  %7137 = fmul fast float %7134, %7108
  %7138 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7114, float %7137)  ; FMad(a,b,c)
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %7136, float %7120, float %7138)  ; FMad(a,b,c)
  %7140 = fadd fast float %7139, %7126
  %7141 = fmul fast float %7134, %7109
  %7142 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7115, float %7141)  ; FMad(a,b,c)
  %7143 = call float @dx.op.tertiary.f32(i32 46, float %7136, float %7121, float %7142)  ; FMad(a,b,c)
  %7144 = fadd fast float %7143, %7127
  %7145 = fmul fast float %7134, %7110
  %7146 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7116, float %7145)  ; FMad(a,b,c)
  %7147 = call float @dx.op.tertiary.f32(i32 46, float %7136, float %7122, float %7146)  ; FMad(a,b,c)
  %7148 = fadd fast float %7147, %7128
  %7149 = fmul fast float %7134, %7111
  %7150 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7117, float %7149)  ; FMad(a,b,c)
  %7151 = call float @dx.op.tertiary.f32(i32 46, float %7136, float %7123, float %7150)  ; FMad(a,b,c)
  %7152 = fadd fast float %7151, %7129
  %7153 = fdiv fast float %7140, %7152
  %7154 = fdiv fast float %7144, %7152
  %7155 = fdiv fast float %7148, %7152
  %7156 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7155)  ; FMax(a,b)
  %7157 = fmul fast float %273, 0x401921FB60000000
  %7158 = call float @dx.op.unary.f32(i32 13, float %7157)  ; Sin(value)
  %7159 = call float @dx.op.unary.f32(i32 12, float %7157)  ; Cos(value)
  %7160 = fsub fast float -0.000000e+00, %7158
  %7161 = fmul fast float %7095, 5.000000e-01
  %7162 = call float @dx.op.dot2.f32(i32 54, float %273, float %273, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7163 = call float @dx.op.unary.f32(i32 22, float %7162)  ; Frc(value)
  %7164 = fmul fast float %7163, 0x404A7DD040000000
  %7165 = call float @dx.op.unary.f32(i32 22, float %7164)  ; Frc(value)
  %7166 = fmul fast float %7165, %7104
  %7167 = fadd fast float %7166, %7161
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %7167, float %7160, float 0.000000e+00)  ; FMad(a,b,c)
  %7169 = call float @dx.op.tertiary.f32(i32 46, float %7167, float %7159, float 0.000000e+00)  ; FMad(a,b,c)
  %7170 = fadd fast float %7168, %7153
  %7171 = fadd fast float %7169, %7154
  %7172 = fmul fast float %7170, %7099
  %7173 = fmul fast float %7171, %7099
  %7174 = call float @dx.op.binary.f32(i32 35, float %7172, float %7095)  ; FMax(a,b)
  %7175 = call float @dx.op.binary.f32(i32 35, float %7173, float %7095)  ; FMax(a,b)
  %7176 = call float @dx.op.binary.f32(i32 36, float %7174, float %7096)  ; FMin(a,b)
  %7177 = call float @dx.op.binary.f32(i32 36, float %7175, float %7096)  ; FMin(a,b)
  %7178 = fadd fast float %7176, %7093
  %7179 = fadd fast float %7177, %7094
  %7180 = uitofp i32 %7130 to float
  %7181 = fadd fast float %7156, %7103
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %49, float %7178, float %7179, float %7180, float undef, i32 0, i32 0, i32 undef, float %7181)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = fadd fast float %7183, -1.000000e+00
  %7185 = fmul fast float %7184, %7064
  %7186 = fadd fast float %7185, 1.000000e+00
  %7187 = fmul fast float %7186, %7076
  br label %7188

; <label>:7188                                    ; preds = %7090, %7088
  %7189 = phi float [ %7187, %7090 ], [ %7076, %7088 ]
  %7190 = call float @dx.op.binary.f32(i32 36, float %7189, float %7189)  ; FMin(a,b)
  %7191 = call float @dx.op.binary.f32(i32 36, float %7189, float %7190)  ; FMin(a,b)
  %7192 = fcmp fast ogt float %7191, 0.000000e+00
  br i1 %7192, label %7193, label %7080, !dx.controlflow.hints !125

; <label>:7193                                    ; preds = %7188
  %7194 = fmul fast float %7189, %6998
  %7195 = fmul fast float %7189, %6999
  %7196 = fmul fast float %7189, %7000
  %7197 = fsub fast float %6982, %4385
  %7198 = fcmp fast ogt float %7197, 0.000000e+00
  %7199 = fsub fast float %190, %4385
  %7200 = fcmp fast ogt float %7199, 0.000000e+00
  %7201 = xor i1 %7200, %7198
  %7202 = fsub fast float %4385, %6982
  %7203 = fmul fast float %7202, 2.000000e+00
  %7204 = fadd fast float %7203, %6982
  %7205 = select i1 %7201, float %6982, float %7204
  %7206 = fsub fast float %7205, %190
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7009, float %7206, float %7008, float %7009, float %7206)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = call float @dx.op.unary.f32(i32 25, float %7207)  ; Rsqrt(value)
  %7209 = fmul fast float %7208, %7008
  %7210 = fmul fast float %7208, %7009
  %7211 = fmul fast float %7208, %7206
  %7212 = fsub fast float %4385, %190
  %7213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7212)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7215 = fdiv fast float 1.000000e+00, %7214
  %7216 = fmul fast float %7215, %7213
  %7217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7199, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7218 = fcmp fast ogt float %7217, 0.000000e+00
  %7219 = fcmp fast olt float %7217, 0.000000e+00
  %7220 = zext i1 %7218 to i32
  %7221 = zext i1 %7219 to i32
  %7222 = sub nsw i32 %7220, %7221
  %7223 = sitofp i32 %7222 to float
  %7224 = fsub fast float %7205, %4385
  %7225 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7009, float %7224, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7226 = fcmp fast ogt float %7225, 0.000000e+00
  %7227 = fcmp fast olt float %7225, 0.000000e+00
  %7228 = zext i1 %7226 to i32
  %7229 = zext i1 %7227 to i32
  %7230 = sub nsw i32 %7228, %7229
  %7231 = sitofp i32 %7230 to float
  %7232 = fcmp fast une float %7223, %7231
  br i1 %7232, label %7233, label %7243

; <label>:7233                                    ; preds = %7193
  %7234 = fmul fast float %7216, %7211
  %7235 = fmul fast float %7216, %7210
  %7236 = fmul fast float %7216, %7209
  %7237 = fmul fast float %7236, %7236
  %7238 = fmul fast float %7235, %7235
  %7239 = fadd fast float %7237, %7238
  %7240 = fmul fast float %7234, %7234
  %7241 = fadd fast float %7239, %7240
  %7242 = call float @dx.op.unary.f32(i32 24, float %7241)  ; Sqrt(value)
  br label %7255

; <label>:7243                                    ; preds = %7193
  %7244 = icmp slt i32 %7222, 0
  br i1 %7244, label %7245, label %7255

; <label>:7245                                    ; preds = %7243
  %7246 = fsub fast float %188, %6980
  %7247 = fsub fast float %189, %6981
  %7248 = fsub fast float %190, %7205
  %7249 = fmul fast float %7246, %7246
  %7250 = fmul fast float %7247, %7247
  %7251 = fadd fast float %7249, %7250
  %7252 = fmul fast float %7248, %7248
  %7253 = fadd fast float %7251, %7252
  %7254 = call float @dx.op.unary.f32(i32 24, float %7253)  ; Sqrt(value)
  br label %7255

; <label>:7255                                    ; preds = %7245, %7243, %7233
  %7256 = phi float [ %7242, %7233 ], [ %7254, %7245 ], [ 0.000000e+00, %7243 ]
  %7257 = and i1 %7200, %7198
  %7258 = fsub fast float -0.000000e+00, %7256
  %7259 = select i1 %7257, float -0.000000e+00, float %7258
  %7260 = fmul fast float %4386, 0x3FF7154760000000
  %7261 = fmul fast float %7260, %7259
  %7262 = fmul fast float %4387, 0x3FF7154760000000
  %7263 = fmul fast float %7262, %7259
  %7264 = fmul fast float %4388, 0x3FF7154760000000
  %7265 = fmul fast float %7264, %7259
  %7266 = call float @dx.op.unary.f32(i32 21, float %7261)  ; Exp(value)
  %7267 = call float @dx.op.unary.f32(i32 21, float %7263)  ; Exp(value)
  %7268 = call float @dx.op.unary.f32(i32 21, float %7265)  ; Exp(value)
  %7269 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7270 = call float @dx.op.unary.f32(i32 7, float %7267)  ; Saturate(value)
  %7271 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7272 = fmul fast float %7194, %7269
  %7273 = fmul fast float %7195, %7270
  %7274 = fmul fast float %7196, %7271
  %7275 = fsub fast float %7014, %5267
  %7276 = fsub fast float %7015, %5268
  %7277 = fsub fast float %7016, %5269
  %7278 = call float @dx.op.dot3.f32(i32 55, float %7275, float %7276, float %7277, float %7275, float %7276, float %7277)  ; Dot3(ax,ay,az,bx,by,bz)
  %7279 = call float @dx.op.unary.f32(i32 25, float %7278)  ; Rsqrt(value)
  %7280 = fmul fast float %7279, %7275
  %7281 = fmul fast float %7279, %7276
  %7282 = fmul fast float %7279, %7277
  %7283 = call float @dx.op.dot3.f32(i32 55, float %7014, float %7015, float %7016, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5271, float %5272, float %7280, float %7281, float %7282)  ; Dot3(ax,ay,az,bx,by,bz)
  %7285 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7286 = fmul fast float %7285, %7021
  %7287 = fmul fast float %7285, %7285
  %7288 = fmul fast float %7287, %5320
  %7289 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7290 = fmul fast float %7286, %7289
  %7291 = bitcast float %7011 to i32
  %7292 = ashr i32 %7291, 1
  %7293 = sub nsw i32 1597463007, %7292
  %7294 = bitcast i32 %7293 to float
  %7295 = fmul fast float %7294, %7008
  %7296 = fmul fast float %7294, %7009
  %7297 = fmul fast float %7294, %7010
  %7298 = fmul fast float %7294, %6977
  %7299 = fsub fast float %7295, %5267
  %7300 = fsub fast float %7296, %5268
  %7301 = fsub fast float %7297, %5269
  %7302 = call float @dx.op.dot3.f32(i32 55, float %7299, float %7300, float %7301, float %7299, float %7300, float %7301)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = call float @dx.op.unary.f32(i32 25, float %7302)  ; Rsqrt(value)
  %7304 = fmul fast float %7299, %7303
  %7305 = fmul fast float %7300, %7303
  %7306 = fmul fast float %7301, %7303
  %7307 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %7304, float %7305, float %7306)  ; Dot3(ax,ay,az,bx,by,bz)
  %7308 = fmul fast float %7307, %7307
  %7309 = call float @dx.op.unary.f32(i32 6, float %7283)  ; FAbs(value)
  %7310 = call float @dx.op.binary.f32(i32 35, float %5617, float 0x3F847AE140000000)  ; FMax(a,b)
  %7311 = fmul fast float %7310, %7310
  %7312 = fmul fast float %7311, %7311
  %7313 = fsub fast float 1.000000e+00, %7312
  %7314 = fmul fast float %5275, %5275
  %7315 = fmul fast float %7314, %7313
  %7316 = fadd fast float %7315, %7312
  %7317 = bitcast float %7316 to i32
  %7318 = ashr i32 %7317, 1
  %7319 = add nsw i32 %7318, 532487669
  %7320 = bitcast i32 %7319 to float
  %7321 = fadd fast float %7320, %5275
  %7322 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %7304, float %7305, float %7306)  ; Dot3(ax,ay,az,bx,by,bz)
  %7323 = fsub fast float 1.000000e+00, %3975
  %7324 = call float @dx.op.binary.f32(i32 35, float %7323, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7325 = fmul fast float %7324, %7324
  %7326 = fmul fast float %7325, %7312
  %7327 = fmul fast float %7322, %7322
  %7328 = fsub fast float 1.000000e+00, %7308
  %7329 = fsub fast float %7328, %7327
  %7330 = fdiv fast float %7327, %7326
  %7331 = fadd fast float %7330, %7308
  %7332 = fdiv fast float %7329, %7312
  %7333 = fadd fast float %7331, %7332
  %7334 = fmul fast float %7309, %7309
  %7335 = fmul fast float %7334, %7313
  %7336 = fadd fast float %7335, %7312
  %7337 = bitcast float %7336 to i32
  %7338 = ashr i32 %7337, 1
  %7339 = add nsw i32 %7338, 532487669
  %7340 = bitcast i32 %7339 to float
  %7341 = fadd fast float %7340, %7309
  %7342 = fmul fast float %7312, %7324
  %7343 = fmul fast float %7333, %7333
  %7344 = fmul fast float %7343, %7342
  %7345 = fmul fast float %7344, %7321
  %7346 = fmul fast float %7345, %7341
  %7347 = fdiv fast float 1.000000e+00, %7346
  %7348 = bitcast float %7312 to i32
  %7349 = sitofp i32 %7348 to float
  %7350 = fmul fast float %7349, 0x3FE7F73180000000
  %7351 = fadd fast float %7350, 0x41AFE27C40000000
  %7352 = fptosi float %7351 to i32
  %7353 = bitcast i32 %7352 to float
  %7354 = fmul fast float %7298, 0x3FD80E9D60000000
  %7355 = fadd fast float %7353, %7354
  %7356 = bitcast float %7355 to i32
  %7357 = sub nsw i32 2129859010, %7356
  %7358 = bitcast i32 %7357 to float
  %7359 = fmul fast float %7353, %7347
  %7360 = fmul fast float %7359, %7358
  %7361 = fsub fast float 1.000000e+00, %4004
  %7362 = call float @dx.op.binary.f32(i32 35, float %7361, float 0x3F847AE140000000)  ; FMax(a,b)
  %7363 = fmul fast float %7362, %7362
  %7364 = fmul fast float %7363, %7363
  %7365 = fsub fast float 1.000000e+00, %7364
  %7366 = fmul fast float %7314, %7365
  %7367 = fadd fast float %7366, %7364
  %7368 = bitcast float %7367 to i32
  %7369 = ashr i32 %7368, 1
  %7370 = add nsw i32 %7369, 532487669
  %7371 = bitcast i32 %7370 to float
  %7372 = fadd fast float %7371, %5275
  %7373 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float %7304, float %7305, float %7306)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = fmul fast float %7325, %7364
  %7375 = fmul fast float %7373, %7373
  %7376 = fsub fast float %7328, %7375
  %7377 = fdiv fast float %7375, %7374
  %7378 = fadd fast float %7377, %7308
  %7379 = fdiv fast float %7376, %7364
  %7380 = fadd fast float %7378, %7379
  %7381 = fmul fast float %7334, %7365
  %7382 = fadd fast float %7381, %7364
  %7383 = bitcast float %7382 to i32
  %7384 = ashr i32 %7383, 1
  %7385 = add nsw i32 %7384, 532487669
  %7386 = bitcast i32 %7385 to float
  %7387 = fadd fast float %7386, %7309
  %7388 = fmul fast float %7364, %7324
  %7389 = fmul fast float %7380, %7380
  %7390 = fmul fast float %7389, %7388
  %7391 = fmul fast float %7390, %7372
  %7392 = fmul fast float %7391, %7387
  %7393 = fdiv fast float 1.000000e+00, %7392
  %7394 = bitcast float %7364 to i32
  %7395 = sitofp i32 %7394 to float
  %7396 = fmul fast float %7395, 0x3FE7F73180000000
  %7397 = fadd fast float %7396, 0x41AFE27C40000000
  %7398 = fptosi float %7397 to i32
  %7399 = bitcast i32 %7398 to float
  %7400 = fadd fast float %7399, %7354
  %7401 = bitcast float %7400 to i32
  %7402 = sub nsw i32 2129859010, %7401
  %7403 = bitcast i32 %7402 to float
  %7404 = fmul fast float %7399, %7393
  %7405 = fmul fast float %7404, %7403
  %7406 = fmul fast float %7360, %4022
  %7407 = fmul fast float %7360, %4023
  %7408 = fmul fast float %7360, %4024
  %7409 = fadd fast float %7405, %7406
  %7410 = fadd fast float %7405, %7407
  %7411 = fadd fast float %7405, %7408
  %7412 = call float @dx.op.unary.f32(i32 6, float %7284)  ; FAbs(value)
  %7413 = fsub fast float 1.000000e+00, %7412
  %7414 = bitcast float %7413 to i32
  %7415 = sitofp i32 %7414 to float
  %7416 = fmul fast float %7415, 5.000000e+00
  %7417 = fadd fast float %7416, 0xC1EFBF8940000000
  %7418 = fptosi float %7417 to i32
  %7419 = bitcast i32 %7418 to float
  %7420 = fsub fast float 1.000000e+00, %5184
  %7421 = fsub fast float 1.000000e+00, %5185
  %7422 = fsub fast float 1.000000e+00, %5273
  %7423 = fmul fast float %7419, %7420
  %7424 = fmul fast float %7419, %7421
  %7425 = fmul fast float %7419, %7422
  %7426 = fadd fast float %7423, %5184
  %7427 = fadd fast float %7424, %5185
  %7428 = fadd fast float %7425, %5273
  %7429 = fmul fast float %7283, 9.843750e-01
  %7430 = fadd fast float %7429, 7.812500e-03
  %7431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %47, float %7430, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7432 = extractvalue %dx.types.ResRet.f32 %7431, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7431, 3
  %7434 = fmul fast float %7432, %5184
  %7435 = fmul fast float %7432, %5185
  %7436 = fmul fast float %7432, %5273
  %7437 = fadd fast float %7434, %7433
  %7438 = fadd fast float %7435, %7433
  %7439 = fadd fast float %7436, %7433
  %7440 = call float @dx.op.binary.f32(i32 35, float %7438, float %7439)  ; FMax(a,b)
  %7441 = call float @dx.op.binary.f32(i32 35, float %7437, float %7440)  ; FMax(a,b)
  %7442 = fsub fast float 1.000000e+00, %7441
  %7443 = call float @dx.op.dot3.f32(i32 55, float %7014, float %7015, float %7016, float %5197, float %5196, float %5195)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  %7445 = fmul fast float %7444, %7021
  %7446 = fmul fast float %7444, 9.843750e-01
  %7447 = fadd fast float %7446, 7.812500e-03
  %7448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %47, float %7447, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7449 = extractvalue %dx.types.ResRet.f32 %7448, 2
  %7450 = extractvalue %dx.types.ResRet.f32 %7448, 3
  %7451 = fmul fast float %7449, %5184
  %7452 = fmul fast float %7449, %5185
  %7453 = fmul fast float %7449, %5273
  %7454 = fadd fast float %7451, %7450
  %7455 = fadd fast float %7452, %7450
  %7456 = fadd fast float %7453, %7450
  %7457 = call float @dx.op.binary.f32(i32 35, float %7455, float %7456)  ; FMax(a,b)
  %7458 = call float @dx.op.binary.f32(i32 35, float %7454, float %7457)  ; FMax(a,b)
  %7459 = fsub fast float 1.000000e+00, %7458
  %7460 = fmul fast float %7445, %7459
  %7461 = fmul fast float %7460, %4022
  %7462 = fmul fast float %7460, %4023
  %7463 = fmul fast float %7460, %4024
  %7464 = fmul fast float %7442, %7290
  %7465 = fadd fast float %7461, %7464
  %7466 = fadd fast float %7462, %7464
  %7467 = fadd fast float %7463, %7464
  %7468 = fmul fast float %7272, %1310
  %7469 = fmul fast float %7468, %7465
  %7470 = fmul fast float %7273, %1310
  %7471 = fmul fast float %7470, %7466
  %7472 = fmul fast float %7274, %1310
  %7473 = fmul fast float %7472, %7467
  %7474 = fadd fast float %7469, %6951
  %7475 = fadd fast float %7471, %6952
  %7476 = fadd fast float %7473, %6953
  %7477 = fmul fast float %7468, %7290
  %7478 = fmul fast float %7477, %7426
  %7479 = fmul fast float %7478, %7409
  %7480 = fmul fast float %7470, %7290
  %7481 = fmul fast float %7480, %7427
  %7482 = fmul fast float %7481, %7410
  %7483 = fmul fast float %7472, %7290
  %7484 = fmul fast float %7483, %7428
  %7485 = fmul fast float %7484, %7411
  %7486 = fadd fast float %7479, %6948
  %7487 = fadd fast float %7482, %6949
  %7488 = fadd fast float %7485, %6950
  br label %7080

; <label>:7489                                    ; preds = %7080
  br label %7490

; <label>:7490                                    ; preds = %7489, %6914
  %7491 = phi float [ %6916, %6914 ], [ %7081, %7489 ]
  %7492 = phi float [ %6917, %6914 ], [ %7082, %7489 ]
  %7493 = phi float [ %6918, %6914 ], [ %7083, %7489 ]
  %7494 = phi float [ %6919, %6914 ], [ %7084, %7489 ]
  %7495 = phi float [ %6920, %6914 ], [ %7085, %7489 ]
  %7496 = phi float [ %6921, %6914 ], [ %7086, %7489 ]
  %7497 = add i32 %6915, 1
  %7498 = icmp ugt i32 %7497, %6911
  br i1 %7498, label %7499, label %6914

; <label>:7499                                    ; preds = %7490
  br label %7500

; <label>:7500                                    ; preds = %7499, %6864, %6854
  %7501 = phi float [ %6855, %6854 ], [ %6855, %6864 ], [ %7491, %7499 ]
  %7502 = phi float [ %6856, %6854 ], [ %6856, %6864 ], [ %7492, %7499 ]
  %7503 = phi float [ %6857, %6854 ], [ %6857, %6864 ], [ %7493, %7499 ]
  %7504 = phi float [ %6858, %6854 ], [ %6858, %6864 ], [ %7494, %7499 ]
  %7505 = phi float [ %6859, %6854 ], [ %6859, %6864 ], [ %7495, %7499 ]
  %7506 = phi float [ %6860, %6854 ], [ %6860, %6864 ], [ %7496, %7499 ]
  %7507 = fsub fast float 1.000000e+00, %5275
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7510 = fmul fast float %7509, %7507
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 3
  %7513 = fsub fast float 1.000000e+00, %3804
  %7514 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  %7515 = fadd fast float %3825, %7506
  %7516 = fmul fast float %7515, %3804
  %7517 = fmul fast float %7514, %7512
  %7518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7519 = extractvalue %dx.types.CBufRet.f32 %7518, 3
  %7520 = fmul fast float %7504, %5190
  %7521 = fmul fast float %7505, %5191
  %7522 = fmul fast float %7506, %5192
  %7523 = fcmp fast ogt float %100, %223
  %7524 = and i1 %7523, %4391
  %7525 = or i1 %4397, %7524
  %7526 = icmp eq i32 %4390, 2
  %7527 = fcmp fast ole float %100, %223
  %7528 = and i1 %7527, %7526
  %7529 = or i1 %7528, %7525
  br i1 %7524, label %7530, label %7779

; <label>:7530                                    ; preds = %7500
  %7531 = fmul fast float %5696, %109
  %7532 = fmul fast float %5697, %110
  %7533 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7534 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7535 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %47, float %7533, float %7534, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.ResRet.f32 %7535, 2
  %7539 = extractvalue %dx.types.ResRet.f32 %7535, 3
  %7540 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %47, float %7533, float %7534, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = call float @dx.op.binary.f32(i32 35, float %7537, float %7538)  ; FMax(a,b)
  %7546 = call float @dx.op.binary.f32(i32 35, float %7536, float %7545)  ; FMax(a,b)
  %7547 = call float @dx.op.binary.f32(i32 35, float %7546, float %7539)  ; FMax(a,b)
  %7548 = call float @dx.op.binary.f32(i32 36, float %7542, float %7543)  ; FMin(a,b)
  %7549 = call float @dx.op.binary.f32(i32 36, float %7541, float %7548)  ; FMin(a,b)
  %7550 = call float @dx.op.binary.f32(i32 36, float %7549, float %7544)  ; FMin(a,b)
  %7551 = fmul fast float %7547, 2.550000e+02
  %7552 = fadd fast float %7551, 0x3F70101020000000
  %7553 = fptoui float %7552 to i32
  %7554 = fmul fast float %7550, 2.550000e+02
  %7555 = fadd fast float %7554, 0x3F70101020000000
  %7556 = fptoui float %7555 to i32
  %7557 = icmp ult i32 %7553, %7556
  br i1 %7557, label %7558, label %7724

; <label>:7558                                    ; preds = %7530
  %7559 = fcmp fast ogt float %99, 9.843750e-01
  %7560 = fadd fast float %100, -4.000000e+00
  %7561 = select i1 %7559, float -4.000000e+00, float %7560
  %7562 = call float @dx.op.binary.f32(i32 35, float %7561, float 0.000000e+00)  ; FMax(a,b)
  %7563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.f32 %7563, 0
  %7565 = fadd fast float %7564, %7562
  %7566 = extractvalue %dx.types.CBufRet.f32 %7563, 2
  %7567 = fmul fast float %7565, %7566
  %7568 = call float @dx.op.unary.f32(i32 23, float %7567)  ; Log(value)
  %7569 = extractvalue %dx.types.CBufRet.f32 %7563, 3
  %7570 = fmul fast float %7569, %7568
  %7571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7571, 2
  %7573 = fmul fast float %7570, %7572
  %7574 = call float @dx.op.unary.f32(i32 7, float %7573)  ; Saturate(value)
  %7575 = uitofp i32 %7553 to float
  %7576 = uitofp i32 %7556 to float
  %7577 = fadd fast float %7575, 5.000000e-01
  %7578 = fadd fast float %7576, 5.000000e-01
  %7579 = fmul fast float %7572, %7577
  %7580 = fmul fast float %7572, %7578
  %7581 = fadd fast float %7579, 0x3F0FFB4800000000
  %7582 = fadd fast float %7580, 0xBF0FFB4800000000
  %7583 = call float @dx.op.binary.f32(i32 35, float %7574, float %7581)  ; FMax(a,b)
  %7584 = call float @dx.op.binary.f32(i32 36, float %7583, float %7582)  ; FMin(a,b)
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7587 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7588 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7589 = fmul fast float %7586, %7584
  %7590 = fadd fast float %7588, %7589
  %7591 = fadd fast float %7588, %7587
  %7592 = fsub fast float %7586, %7587
  %7593 = fadd fast float %7592, %7588
  %7594 = call float @dx.op.binary.f32(i32 35, float %7590, float %7591)  ; FMax(a,b)
  %7595 = call float @dx.op.binary.f32(i32 36, float %7594, float %7593)  ; FMin(a,b)
  %7596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %7533, float %7534, float %7595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.ResRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.ResRet.f32 %7596, 2
  %7600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.i32 %7600, 0
  %7602 = extractvalue %dx.types.CBufRet.i32 %7600, 1
  %7603 = uitofp i32 %7601 to float
  %7604 = uitofp i32 %7602 to float
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7608 = fmul fast float %7603, %7533
  %7609 = fmul fast float %7604, %7534
  %7610 = fadd fast float %7608, -5.000000e-01
  %7611 = fadd fast float %7609, -5.000000e-01
  %7612 = call float @dx.op.unary.f32(i32 22, float %7610)  ; Frc(value)
  %7613 = call float @dx.op.unary.f32(i32 22, float %7611)  ; Frc(value)
  %7614 = fmul fast float %7612, %7612
  %7615 = fmul fast float %7614, %7612
  %7616 = fsub fast float 3.000000e+00, %7612
  %7617 = fmul fast float %7614, %7616
  %7618 = fmul fast float %7612, 3.000000e+00
  %7619 = fmul fast float %7615, 3.000000e+00
  %7620 = fmul fast float %7614, 6.000000e+00
  %7621 = fsub fast float %7619, %7620
  %7622 = fadd fast float %7621, 4.000000e+00
  %7623 = fmul fast float %7622, 0x3FC5555560000000
  %7624 = fmul fast float %7615, -3.000000e+00
  %7625 = fadd fast float %7614, %7612
  %7626 = fmul fast float %7625, 3.000000e+00
  %7627 = fadd fast float %7624, 1.000000e+00
  %7628 = fadd fast float %7627, %7626
  %7629 = fmul fast float %7615, 0x3FC5555560000000
  %7630 = fmul fast float %7613, %7613
  %7631 = fmul fast float %7630, %7613
  %7632 = fsub fast float 3.000000e+00, %7613
  %7633 = fmul fast float %7630, %7632
  %7634 = fmul fast float %7613, 3.000000e+00
  %7635 = fmul fast float %7631, 3.000000e+00
  %7636 = fmul fast float %7630, 6.000000e+00
  %7637 = fsub fast float %7635, %7636
  %7638 = fadd fast float %7637, 4.000000e+00
  %7639 = fmul fast float %7638, 0x3FC5555560000000
  %7640 = fmul fast float %7631, -3.000000e+00
  %7641 = fadd fast float %7630, %7613
  %7642 = fmul fast float %7641, 3.000000e+00
  %7643 = fadd fast float %7640, 1.000000e+00
  %7644 = fadd fast float %7643, %7642
  %7645 = fmul fast float %7631, 0x3FC5555560000000
  %7646 = fadd fast float %7612, 1.000000e+00
  %7647 = fsub fast float 1.000000e+00, %7618
  %7648 = fadd fast float %7647, %7617
  %7649 = fadd fast float %7648, %7622
  %7650 = fmul fast float %7649, 0x3FC5555560000000
  %7651 = fdiv fast float %7623, %7650
  %7652 = fsub fast float %7646, %7651
  %7653 = fsub fast float 1.000000e+00, %7612
  %7654 = fadd fast float %7628, %7615
  %7655 = fmul fast float %7654, 0x3FC5555560000000
  %7656 = fdiv fast float %7629, %7655
  %7657 = fadd fast float %7653, %7656
  %7658 = fadd fast float %7613, 1.000000e+00
  %7659 = fsub fast float 1.000000e+00, %7634
  %7660 = fadd fast float %7659, %7633
  %7661 = fadd fast float %7660, %7638
  %7662 = fmul fast float %7661, 0x3FC5555560000000
  %7663 = fdiv fast float %7639, %7662
  %7664 = fsub fast float %7658, %7663
  %7665 = fsub fast float 1.000000e+00, %7613
  %7666 = fadd fast float %7644, %7631
  %7667 = fmul fast float %7666, 0x3FC5555560000000
  %7668 = fdiv fast float %7645, %7667
  %7669 = fadd fast float %7668, %7665
  %7670 = fmul fast float %7652, %7606
  %7671 = fsub fast float %7533, %7670
  %7672 = fmul fast float %7657, %7606
  %7673 = fadd fast float %7672, %7533
  %7674 = fmul fast float %7669, %7607
  %7675 = fadd fast float %7674, %7534
  %7676 = fmul fast float %7664, %7607
  %7677 = fsub fast float %7534, %7676
  %7678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %7671, float %7677, float %7595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.ResRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.ResRet.f32 %7678, 2
  %7682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %7673, float %7677, float %7595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7683 = extractvalue %dx.types.ResRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.ResRet.f32 %7682, 1
  %7685 = extractvalue %dx.types.ResRet.f32 %7682, 2
  %7686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %7671, float %7675, float %7595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.ResRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.ResRet.f32 %7686, 2
  %7690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %7673, float %7675, float %7595, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7694 = fsub fast float %7687, %7679
  %7695 = fsub fast float %7688, %7680
  %7696 = fsub fast float %7689, %7681
  %7697 = fmul fast float %7694, %7667
  %7698 = fmul fast float %7695, %7667
  %7699 = fmul fast float %7696, %7667
  %7700 = fadd fast float %7697, %7679
  %7701 = fadd fast float %7698, %7680
  %7702 = fadd fast float %7699, %7681
  %7703 = fsub fast float %7691, %7683
  %7704 = fsub fast float %7692, %7684
  %7705 = fsub fast float %7693, %7685
  %7706 = fmul fast float %7703, %7667
  %7707 = fmul fast float %7704, %7667
  %7708 = fmul fast float %7705, %7667
  %7709 = fsub fast float %7683, %7700
  %7710 = fadd fast float %7709, %7706
  %7711 = fsub fast float %7684, %7701
  %7712 = fadd fast float %7711, %7707
  %7713 = fsub fast float %7685, %7702
  %7714 = fadd fast float %7713, %7708
  %7715 = fmul fast float %7710, %7655
  %7716 = fmul fast float %7712, %7655
  %7717 = fmul fast float %7714, %7655
  %7718 = fadd fast float %7715, %7700
  %7719 = fadd fast float %7716, %7701
  %7720 = fadd fast float %7717, %7702
  %7721 = fmul fast float %7718, %5751
  %7722 = fmul fast float %7719, %5751
  %7723 = fmul fast float %7720, %5751
  br label %7724

; <label>:7724                                    ; preds = %7558, %7530
  %7725 = phi float [ %7597, %7558 ], [ 1.000000e+00, %7530 ]
  %7726 = phi float [ %7598, %7558 ], [ 1.000000e+00, %7530 ]
  %7727 = phi float [ %7599, %7558 ], [ 1.000000e+00, %7530 ]
  %7728 = phi float [ %7721, %7558 ], [ 0.000000e+00, %7530 ]
  %7729 = phi float [ %7722, %7558 ], [ 0.000000e+00, %7530 ]
  %7730 = phi float [ %7723, %7558 ], [ 0.000000e+00, %7530 ]
  %7731 = call float @dx.op.dot3.f32(i32 55, float %7725, float %7726, float %7727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = call float @dx.op.dot3.f32(i32 55, float %7728, float %7729, float %7730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7733 = select i1 %260, float %7731, float %7725
  %7734 = select i1 %260, float %7731, float %7726
  %7735 = select i1 %260, float 1.000000e+00, float %7727
  %7736 = select i1 %260, float %7732, float %7728
  %7737 = select i1 %260, float 0.000000e+00, float %7729
  %7738 = select i1 %260, float 0.000000e+00, float %7730
  %7739 = fmul fast float %7733, %7520
  %7740 = fmul fast float %7734, %7521
  %7741 = fmul fast float %7735, %7522
  %7742 = fadd fast float %7739, %7736
  %7743 = fadd fast float %7740, %7737
  %7744 = fadd fast float %7738, %7741
  %7745 = fmul fast float %7733, %7501
  %7746 = fmul fast float %7734, %7502
  %7747 = fmul fast float %7735, %7503
  %7748 = fmul fast float %137, %5696
  %7749 = fmul fast float %139, %5697
  %7750 = fsub fast float 1.000000e+00, %7748
  %7751 = fsub fast float 1.000000e+00, %7749
  %7752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7752, 0
  %7754 = extractvalue %dx.types.CBufRet.f32 %7752, 1
  %7755 = extractvalue %dx.types.CBufRet.f32 %7752, 2
  %7756 = fmul fast float %7750, %7753
  %7757 = fmul fast float %7750, %7754
  %7758 = fmul fast float %7750, %7755
  %7759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7760 = extractvalue %dx.types.CBufRet.f32 %7759, 0
  %7761 = extractvalue %dx.types.CBufRet.f32 %7759, 1
  %7762 = extractvalue %dx.types.CBufRet.f32 %7759, 2
  %7763 = fmul fast float %7751, %7760
  %7764 = fmul fast float %7751, %7761
  %7765 = fmul fast float %7751, %7762
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7769 = extractvalue %dx.types.CBufRet.f32 %7766, 2
  %7770 = fadd fast float %7763, %7767
  %7771 = fadd fast float %7770, %7756
  %7772 = fadd fast float %7764, %7768
  %7773 = fadd fast float %7772, %7757
  %7774 = fadd fast float %7765, %7769
  %7775 = fadd fast float %7774, %7758
  %7776 = fmul fast float %7771, %223
  %7777 = fmul fast float %7773, %223
  %7778 = fmul fast float %7775, %223
  br label %7779

; <label>:7779                                    ; preds = %7724, %7500
  %7780 = phi float [ %7776, %7724 ], [ %188, %7500 ]
  %7781 = phi float [ %7777, %7724 ], [ %189, %7500 ]
  %7782 = phi float [ %7778, %7724 ], [ %190, %7500 ]
  %7783 = phi float [ %223, %7724 ], [ %100, %7500 ]
  %7784 = phi float [ %7742, %7724 ], [ %7520, %7500 ]
  %7785 = phi float [ %7743, %7724 ], [ %7521, %7500 ]
  %7786 = phi float [ %7744, %7724 ], [ %7522, %7500 ]
  %7787 = phi float [ %7745, %7724 ], [ %7501, %7500 ]
  %7788 = phi float [ %7746, %7724 ], [ %7502, %7500 ]
  %7789 = phi float [ %7747, %7724 ], [ %7503, %7500 ]
  %7790 = phi float [ %7725, %7724 ], [ 1.000000e+00, %7500 ]
  br i1 %7529, label %8928, label %7791

; <label>:7791                                    ; preds = %7779
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.CBufRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.CBufRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7803 = extractvalue %dx.types.CBufRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.CBufRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.CBufRet.f32 %7802, 2
  %7806 = extractvalue %dx.types.CBufRet.f32 %7802, 3
  %7807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7808 = extractvalue %dx.types.CBufRet.f32 %7807, 0
  %7809 = extractvalue %dx.types.CBufRet.f32 %7807, 1
  %7810 = extractvalue %dx.types.CBufRet.f32 %7807, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7807, 3
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 3
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 3
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7818 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7819 = fcmp fast olt float %7818, -5.000000e-01
  %7820 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %7782, float %7780, float %7781, float %7782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7821 = call float @dx.op.unary.f32(i32 25, float %7820)  ; Rsqrt(value)
  %7822 = fmul fast float %7821, %7820
  %7823 = fmul fast float %7821, %7780
  %7824 = fmul fast float %7821, %7781
  %7825 = fmul fast float %7821, %7782
  %7826 = fadd fast float %7822, %7796
  %7827 = call float @dx.op.dot3.f32(i32 55, float %7823, float %7824, float %7825, float %7793, float %7794, float %7795)  ; Dot3(ax,ay,az,bx,by,bz)
  %7828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.i32 %7828, 1
  %7830 = and i32 %7829, 1
  %7831 = icmp ne i32 %7830, 0
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7834 = fcmp fast ogt float %7833, 0.000000e+00
  %7835 = and i1 %7831, %7834
  br i1 %7835, label %7836, label %8238, !dx.controlflow.hints !126

; <label>:7836                                    ; preds = %7791
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7843 = fsub fast float %7840, %7842
  %7844 = and i32 %7829, 2
  %7845 = extractvalue %dx.types.CBufRet.i32 %7828, 0
  %7846 = call i32 @dx.op.binary.i32(i32 40, i32 %7845, i32 3)  ; UMin(a,b)
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.CBufRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7851 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7852 = fsub fast float %7848, %7850
  %7853 = fsub fast float %7849, %7851
  %7854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7854, 0
  %7856 = fcmp fast ogt float %7855, 0.000000e+00
  %7857 = fsub fast float -0.000000e+00, %7852
  %7858 = fsub fast float -0.000000e+00, %7853
  %7859 = call float @dx.op.dot2.f32(i32 54, float %7823, float %7824, float %7823, float %7824)  ; Dot2(ax,ay,bx,by)
  %7860 = call float @dx.op.dot2.f32(i32 54, float %7823, float %7824, float %7857, float %7858)  ; Dot2(ax,ay,bx,by)
  %7861 = fmul fast float %7860, 2.000000e+00
  %7862 = call float @dx.op.dot2.f32(i32 54, float %7857, float %7858, float %7857, float %7858)  ; Dot2(ax,ay,bx,by)
  %7863 = fmul fast float %7855, %7855
  %7864 = fsub fast float %7862, %7863
  %7865 = fmul fast float %7861, %7861
  %7866 = fmul fast float %7859, 4.000000e+00
  %7867 = fmul fast float %7866, %7864
  %7868 = fsub fast float %7865, %7867
  %7869 = fcmp fast ogt float %7868, 0.000000e+00
  br i1 %7869, label %7870, label %7885

; <label>:7870                                    ; preds = %7836
  %7871 = fcmp fast ogt float %7861, 0.000000e+00
  %7872 = call float @dx.op.unary.f32(i32 24, float %7868)  ; Sqrt(value)
  %7873 = fsub fast float -0.000000e+00, %7872
  %7874 = select i1 %7871, float %7872, float %7873
  %7875 = fadd fast float %7874, %7861
  %7876 = fmul float %7875, -5.000000e-01
  %7877 = fdiv fast float %7876, %7859
  %7878 = call float @dx.op.binary.f32(i32 35, float %7877, float 0.000000e+00)  ; FMax(a,b)
  %7879 = call float @dx.op.binary.f32(i32 36, float %7822, float %7878)  ; FMin(a,b)
  %7880 = fdiv fast float %7864, %7876
  %7881 = call float @dx.op.binary.f32(i32 35, float %7880, float 0.000000e+00)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 36, float %7822, float %7881)  ; FMin(a,b)
  %7883 = call float @dx.op.binary.f32(i32 36, float %7879, float %7882)  ; FMin(a,b)
  %7884 = call float @dx.op.binary.f32(i32 35, float %7879, float %7882)  ; FMax(a,b)
  br label %7885

; <label>:7885                                    ; preds = %7870, %7836
  %7886 = phi float [ %7884, %7870 ], [ -1.000000e+00, %7836 ]
  %7887 = phi float [ %7883, %7870 ], [ -1.000000e+00, %7836 ]
  %7888 = phi i1 [ true, %7870 ], [ false, %7836 ]
  %7889 = and i1 %7856, %7888
  br i1 %7889, label %7890, label %7892

; <label>:7890                                    ; preds = %7885
  %7891 = fcmp fast oeq float %7887, %7886
  br i1 %7891, label %8191, label %7893

; <label>:7892                                    ; preds = %7885
  br i1 %7856, label %8191, label %7893

; <label>:7893                                    ; preds = %7892, %7890
  %7894 = phi float [ %7822, %7892 ], [ %7886, %7890 ]
  %7895 = phi float [ 0.000000e+00, %7892 ], [ %7887, %7890 ]
  %7896 = icmp ne i32 %7844, 0
  %7897 = fmul fast float %7894, %7825
  %7898 = fadd fast float %7897, %7838
  %7899 = fmul fast float %7898, %7894
  %7900 = select i1 %7896, float 0.000000e+00, float %7899
  %7901 = fcmp fast oeq float %7825, 0.000000e+00
  %7902 = fdiv fast float %7843, %7825
  %7903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7902)  ; FMax(a,b)
  %7904 = select i1 %7901, float %7894, float %7903
  %7905 = call float @dx.op.binary.f32(i32 36, float %7894, float %7904)  ; FMin(a,b)
  %7906 = fcmp fast ogt float %7825, 0.000000e+00
  %7907 = fcmp fast olt float %7843, 0.000000e+00
  br i1 %7906, label %7908, label %7965

; <label>:7908                                    ; preds = %7893
  %7909 = icmp eq i32 %7844, 0
  br i1 %7907, label %7910, label %7954

; <label>:7910                                    ; preds = %7908
  %7911 = select i1 %7909, float %7894, float 0.000000e+00
  %7912 = fsub fast float -0.000000e+00, %7911
  %7913 = call float @dx.op.unary.f32(i32 6, float %7912)  ; FAbs(value)
  %7914 = fmul fast float %7911, %7825
  %7915 = fadd fast float %7914, %7838
  %7916 = fmul fast float %7913, %7915
  %7917 = fsub fast float %7900, %7916
  %7918 = fsub fast float %7894, %7913
  %7919 = select i1 %7909, float %7918, float 0.000000e+00
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.CBufRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7928 = extractvalue %dx.types.CBufRet.f32 %7924, 3
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = call float @dx.op.binary.f32(i32 36, float %7917, float %7930)  ; FMin(a,b)
  %7932 = fmul fast float %7928, %7919
  %7933 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7934 = fsub fast float %7925, %7921
  %7935 = fsub fast float %7926, %7922
  %7936 = fsub fast float %7927, %7923
  %7937 = fmul fast float %7933, %7934
  %7938 = fmul fast float %7933, %7935
  %7939 = fmul fast float %7933, %7936
  %7940 = fadd fast float %7937, %7921
  %7941 = fadd fast float %7938, %7922
  %7942 = fadd fast float %7939, %7923
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7946 = fadd fast float %7945, %7944
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %7949 = extractvalue %dx.types.CBufRet.f32 %7943, 3
  %7950 = fadd fast float %7949, %7948
  %7951 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7952 = fmul fast float %7947, %7931
  %7953 = fmul fast float %7952, %7951
  br label %8191

; <label>:7954                                    ; preds = %7908
  br i1 %7909, label %7955, label %7976

; <label>:7955                                    ; preds = %7954
  %7956 = call float @dx.op.binary.f32(i32 36, float %7905, float %7895)  ; FMin(a,b)
  %7957 = fsub fast float %7905, %7956
  %7958 = fsub fast float %7957, %7894
  %7959 = call float @dx.op.unary.f32(i32 6, float %7958)  ; FAbs(value)
  %7960 = fadd fast float %7957, %7894
  %7961 = fmul fast float %7960, %7825
  %7962 = fadd fast float %7961, %7838
  %7963 = fmul fast float %7962, %7959
  %7964 = fsub fast float %7900, %7963
  br label %7976

; <label>:7965                                    ; preds = %7893
  br i1 %7907, label %7966, label %7976

; <label>:7966                                    ; preds = %7965
  %7967 = call float @dx.op.binary.f32(i32 35, float %7895, float %7905)  ; FMax(a,b)
  %7968 = icmp eq i32 %7844, 0
  %7969 = select i1 %7968, float %7905, float 0.000000e+00
  %7970 = fsub fast float -0.000000e+00, %7969
  %7971 = call float @dx.op.unary.f32(i32 6, float %7970)  ; FAbs(value)
  %7972 = fmul fast float %7969, %7825
  %7973 = fadd fast float %7972, %7838
  %7974 = fmul fast float %7971, %7973
  %7975 = fsub fast float %7900, %7974
  br label %7976

; <label>:7976                                    ; preds = %7966, %7965, %7955, %7954
  %7977 = phi float [ %7895, %7954 ], [ %7895, %7955 ], [ %7967, %7966 ], [ %7895, %7965 ]
  %7978 = phi float [ 0.000000e+00, %7954 ], [ %7959, %7955 ], [ %7971, %7966 ], [ 0.000000e+00, %7965 ]
  %7979 = phi float [ %7900, %7954 ], [ %7964, %7955 ], [ %7975, %7966 ], [ %7900, %7965 ]
  %7980 = phi float [ %7905, %7954 ], [ %7905, %7955 ], [ %7894, %7966 ], [ %7894, %7965 ]
  %7981 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %7981, align 4, !tbaa !127, !noalias !129
  %7982 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %7982, align 4, !tbaa !127, !noalias !129
  %7983 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %7983, align 4, !tbaa !127, !noalias !129
  %7984 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7984, align 4, !tbaa !127, !noalias !129
  %7985 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7985, align 4, !tbaa !127, !noalias !129
  %7986 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7986, align 4, !tbaa !127, !noalias !129
  %7987 = icmp sgt i32 %7846, 0
  br i1 %7987, label %7988, label %8049

; <label>:7988                                    ; preds = %7976
  br label %7989

; <label>:7989                                    ; preds = %8038, %7988
  %7990 = phi i32 [ %8039, %8038 ], [ 0, %7988 ]
  %7991 = phi i32 [ %8040, %8038 ], [ 0, %7988 ]
  %7992 = add nuw i32 %7991, 171
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 %7992)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.CBufRet.f32 %7993, 1
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7998 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %7999 = fsub fast float %7994, %7997
  %8000 = fsub fast float %7995, %7998
  %8001 = extractvalue %dx.types.CBufRet.f32 %7993, 2
  %8002 = fsub fast float -0.000000e+00, %7999
  %8003 = fsub fast float -0.000000e+00, %8000
  %8004 = call float @dx.op.dot2.f32(i32 54, float %7823, float %7824, float %8002, float %8003)  ; Dot2(ax,ay,bx,by)
  %8005 = fmul fast float %8004, 2.000000e+00
  %8006 = call float @dx.op.dot2.f32(i32 54, float %8002, float %8003, float %8002, float %8003)  ; Dot2(ax,ay,bx,by)
  %8007 = fmul fast float %8001, %8001
  %8008 = fsub fast float %8006, %8007
  %8009 = fmul fast float %8005, %8005
  %8010 = fmul fast float %7866, %8008
  %8011 = fsub fast float %8009, %8010
  %8012 = fcmp fast ogt float %8011, 0.000000e+00
  br i1 %8012, label %8013, label %8028

; <label>:8013                                    ; preds = %7989
  %8014 = fcmp fast ogt float %8005, 0.000000e+00
  %8015 = call float @dx.op.unary.f32(i32 24, float %8011)  ; Sqrt(value)
  %8016 = fsub fast float -0.000000e+00, %8015
  %8017 = select i1 %8014, float %8015, float %8016
  %8018 = fadd fast float %8017, %8005
  %8019 = fmul float %8018, -5.000000e-01
  %8020 = fdiv fast float %8019, %7859
  %8021 = call float @dx.op.binary.f32(i32 35, float %8020, float 0.000000e+00)  ; FMax(a,b)
  %8022 = call float @dx.op.binary.f32(i32 36, float %7894, float %8021)  ; FMin(a,b)
  %8023 = fdiv fast float %8008, %8019
  %8024 = call float @dx.op.binary.f32(i32 35, float %8023, float 0.000000e+00)  ; FMax(a,b)
  %8025 = call float @dx.op.binary.f32(i32 36, float %7894, float %8024)  ; FMin(a,b)
  %8026 = call float @dx.op.binary.f32(i32 36, float %8022, float %8025)  ; FMin(a,b)
  %8027 = call float @dx.op.binary.f32(i32 35, float %8022, float %8025)  ; FMax(a,b)
  br label %8028

; <label>:8028                                    ; preds = %8013, %7989
  %8029 = phi float [ %8027, %8013 ], [ -1.000000e+00, %7989 ]
  %8030 = phi float [ %8026, %8013 ], [ -1.000000e+00, %7989 ]
  %8031 = phi i1 [ true, %8013 ], [ false, %7989 ]
  br i1 %8031, label %8032, label %8038

; <label>:8032                                    ; preds = %8028
  %8033 = call float @dx.op.binary.f32(i32 35, float %7977, float %8030)  ; FMax(a,b)
  %8034 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7991
  store float %8033, float* %8034, align 4, !tbaa !127, !noalias !129
  %8035 = call float @dx.op.binary.f32(i32 35, float %7977, float %8029)  ; FMax(a,b)
  %8036 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7991
  store float %8035, float* %8036, align 4, !tbaa !127, !noalias !129
  %8037 = add nsw i32 %7990, 1
  br label %8038

; <label>:8038                                    ; preds = %8032, %8028
  %8039 = phi i32 [ %8037, %8032 ], [ %7990, %8028 ]
  %8040 = add nuw nsw i32 %7991, 1
  %8041 = icmp eq i32 %8040, %7846
  br i1 %8041, label %8042, label %7989

; <label>:8042                                    ; preds = %8038
  %8043 = load float, float* %7983, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %8044 = load float, float* %7982, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  %8045 = load float, float* %7981, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  %8046 = load float, float* %7986, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %8047 = load float, float* %7985, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  %8048 = load float, float* %7984, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  br label %8049

; <label>:8049                                    ; preds = %8042, %7976
  %8050 = phi float [ -1.000000e+00, %7976 ], [ %8048, %8042 ]
  %8051 = phi float [ -1.000000e+00, %7976 ], [ %8047, %8042 ]
  %8052 = phi float [ -1.000000e+00, %7976 ], [ %8046, %8042 ]
  %8053 = phi float [ -1.000000e+00, %7976 ], [ %8045, %8042 ]
  %8054 = phi float [ -1.000000e+00, %7976 ], [ %8044, %8042 ]
  %8055 = phi float [ -1.000000e+00, %7976 ], [ %8043, %8042 ]
  %8056 = phi i32 [ 0, %7976 ], [ %8039, %8042 ]
  %8057 = call float @dx.op.binary.f32(i32 36, float %8053, float %8054)  ; FMin(a,b)
  %8058 = call float @dx.op.binary.f32(i32 36, float %8057, float %8055)  ; FMin(a,b)
  %8059 = call float @dx.op.binary.f32(i32 35, float %8053, float %8054)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 36, float %8059, float %8055)  ; FMin(a,b)
  %8061 = call float @dx.op.binary.f32(i32 35, float %8057, float %8060)  ; FMax(a,b)
  %8062 = call float @dx.op.binary.f32(i32 35, float %8059, float %8055)  ; FMax(a,b)
  store float %8058, float* %7981, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  store float %8061, float* %7982, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  store float %8062, float* %7983, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %8063 = call float @dx.op.binary.f32(i32 36, float %8050, float %8051)  ; FMin(a,b)
  %8064 = call float @dx.op.binary.f32(i32 36, float %8063, float %8052)  ; FMin(a,b)
  %8065 = call float @dx.op.binary.f32(i32 35, float %8050, float %8051)  ; FMax(a,b)
  %8066 = call float @dx.op.binary.f32(i32 36, float %8065, float %8052)  ; FMin(a,b)
  %8067 = call float @dx.op.binary.f32(i32 35, float %8063, float %8066)  ; FMax(a,b)
  %8068 = call float @dx.op.binary.f32(i32 35, float %8065, float %8052)  ; FMax(a,b)
  store float %8064, float* %7984, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  store float %8067, float* %7985, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  store float %8068, float* %7986, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %8069 = sub nsw i32 3, %8056
  %8070 = icmp sgt i32 %8069, 2
  br i1 %8070, label %8071, label %8109

; <label>:8071                                    ; preds = %8049
  %8072 = icmp eq i32 %7844, 0
  %8073 = fsub fast float %7894, %7978
  %8074 = select i1 %8072, float %8073, float %7978
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8083 = extractvalue %dx.types.CBufRet.f32 %8079, 3
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 3
  %8086 = call float @dx.op.binary.f32(i32 36, float %7979, float %8085)  ; FMin(a,b)
  %8087 = fmul fast float %8083, %8074
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fsub fast float %8080, %8076
  %8090 = fsub fast float %8081, %8077
  %8091 = fsub fast float %8082, %8078
  %8092 = fmul fast float %8088, %8089
  %8093 = fmul fast float %8088, %8090
  %8094 = fmul fast float %8088, %8091
  %8095 = fadd fast float %8092, %8076
  %8096 = fadd fast float %8093, %8077
  %8097 = fadd fast float %8094, %8078
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = fadd fast float %8100, %8099
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8104 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8105 = fadd fast float %8104, %8103
  %8106 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8107 = fmul fast float %8102, %8086
  %8108 = fmul fast float %8107, %8106
  br label %8191

; <label>:8109                                    ; preds = %8049
  %8110 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8069
  %8111 = load float, float* %8110, align 4, !tbaa !127, !noalias !129
  %8112 = fcmp fast olt float %8111, %7980
  %8113 = icmp sgt i32 %8056, 0
  %8114 = and i1 %8113, %8112
  br i1 %8114, label %8115, label %8152

; <label>:8115                                    ; preds = %8109
  br label %8116

; <label>:8116                                    ; preds = %8145, %8115
  %8117 = phi float [ %8146, %8145 ], [ %7978, %8115 ]
  %8118 = phi float [ %8147, %8145 ], [ %7979, %8115 ]
  %8119 = phi float [ %8127, %8145 ], [ %8111, %8115 ]
  %8120 = phi i32 [ %8124, %8145 ], [ %8069, %8115 ]
  %8121 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8120
  %8122 = load float, float* %8121, align 4, !tbaa !127, !noalias !129
  %8123 = icmp slt i32 %8120, 2
  %8124 = add nsw i32 %8120, 1
  %8125 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8124
  %8126 = load float, float* %8125, align 4, !tbaa !127, !noalias !129
  %8127 = select i1 %8123, float %8126, float %7894
  %8128 = call float @dx.op.binary.f32(i32 36, float %8127, float %8122)  ; FMin(a,b)
  %8129 = call float @dx.op.binary.f32(i32 36, float %7980, float %8128)  ; FMin(a,b)
  %8130 = icmp eq i32 %7844, 0
  %8131 = fadd fast float %8129, %8119
  %8132 = fmul fast float %8131, %7825
  %8133 = fadd fast float %8132, %7838
  br i1 %8130, label %8139, label %8134

; <label>:8134                                    ; preds = %8116
  %8135 = fsub fast float %8129, %8119
  %8136 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8135)  ; FMax(a,b)
  %8137 = fmul fast float %8136, %8133
  %8138 = fadd fast float %8137, %8118
  br label %8145

; <label>:8139                                    ; preds = %8116
  %8140 = fsub fast float %8119, %8129
  %8141 = call float @dx.op.unary.f32(i32 6, float %8140)  ; FAbs(value)
  %8142 = fadd fast float %8141, %8117
  %8143 = fmul fast float %8141, %8133
  %8144 = fsub fast float %8118, %8143
  br label %8145

; <label>:8145                                    ; preds = %8139, %8134
  %8146 = phi float [ %8136, %8134 ], [ %8142, %8139 ]
  %8147 = phi float [ %8138, %8134 ], [ %8144, %8139 ]
  %8148 = fcmp fast olt float %8127, %7980
  %8149 = icmp slt i32 %8124, 3
  %8150 = and i1 %8149, %8148
  br i1 %8150, label %8116, label %8151

; <label>:8151                                    ; preds = %8145
  br label %8152

; <label>:8152                                    ; preds = %8151, %8109
  %8153 = phi float [ %7978, %8109 ], [ %8146, %8151 ]
  %8154 = phi float [ %7979, %8109 ], [ %8147, %8151 ]
  %8155 = fsub fast float %7894, %8153
  %8156 = select i1 %7896, float %8153, float %8155
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 0
  %8159 = extractvalue %dx.types.CBufRet.f32 %8157, 1
  %8160 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8165 = extractvalue %dx.types.CBufRet.f32 %8161, 3
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 3
  %8168 = call float @dx.op.binary.f32(i32 36, float %8154, float %8167)  ; FMin(a,b)
  %8169 = fmul fast float %8165, %8156
  %8170 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8171 = fsub fast float %8162, %8158
  %8172 = fsub fast float %8163, %8159
  %8173 = fsub fast float %8164, %8160
  %8174 = fmul fast float %8170, %8171
  %8175 = fmul fast float %8170, %8172
  %8176 = fmul fast float %8170, %8173
  %8177 = fadd fast float %8174, %8158
  %8178 = fadd fast float %8175, %8159
  %8179 = fadd fast float %8176, %8160
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = fadd fast float %8182, %8181
  %8184 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8186 = extractvalue %dx.types.CBufRet.f32 %8180, 3
  %8187 = fadd fast float %8186, %8185
  %8188 = call float @dx.op.unary.f32(i32 7, float %8187)  ; Saturate(value)
  %8189 = fmul fast float %8184, %8168
  %8190 = fmul fast float %8189, %8188
  br label %8191

; <label>:8191                                    ; preds = %8152, %8071, %7910, %7892, %7890
  %8192 = phi float [ %7919, %7910 ], [ %8074, %8071 ], [ %8156, %8152 ], [ 0.000000e+00, %7890 ], [ 0.000000e+00, %7892 ]
  %8193 = phi float [ %7953, %7910 ], [ %8108, %8071 ], [ %8190, %8152 ], [ 0.000000e+00, %7890 ], [ 0.000000e+00, %7892 ]
  %8194 = phi float [ %7940, %7910 ], [ %8095, %8071 ], [ %8177, %8152 ], [ 0.000000e+00, %7890 ], [ 0.000000e+00, %7892 ]
  %8195 = phi float [ %7941, %7910 ], [ %8096, %8071 ], [ %8178, %8152 ], [ 0.000000e+00, %7890 ], [ 0.000000e+00, %7892 ]
  %8196 = phi float [ %7942, %7910 ], [ %8097, %8071 ], [ %8179, %8152 ], [ 0.000000e+00, %7890 ], [ 0.000000e+00, %7892 ]
  %8197 = fmul fast float %7833, %8193
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8200 = fsub fast float %7840, %8199
  %8201 = fcmp fast olt float %8197, -2.000000e+01
  %8202 = call float @dx.op.unary.f32(i32 21, float %8197)  ; Exp(value)
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8205 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8208 = fmul fast float %8205, %8200
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = fsub fast float 1.000000e+00, %8209
  %8211 = fmul fast float %7825, 5.000000e-01
  %8212 = fadd fast float %8211, 5.000000e-01
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = fsub fast float 1.000000e+00, %8213
  %8215 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8210)  ; FMax(a,b)
  %8216 = fdiv fast float %8214, %8215
  %8217 = fsub fast float %8200, %7782
  %8218 = call float @dx.op.unary.f32(i32 6, float %8217)  ; FAbs(value)
  %8219 = fmul fast float %8218, %8204
  %8220 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8221 = fsub fast float 1.000000e+00, %8219
  %8222 = fmul fast float %8221, %8220
  %8223 = fadd fast float %8222, %8219
  %8224 = fmul fast float %8207, %8200
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fsub fast float 1.000000e+00, %8223
  %8227 = fmul fast float %8226, %8225
  %8228 = fadd fast float %8227, %8223
  %8229 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8230 = fadd fast float %8202, -1.000000e+00
  %8231 = select i1 %8201, float -1.000000e+00, float %8230
  %8232 = fmul fast float %8229, %8231
  %8233 = fadd fast float %8232, 1.000000e+00
  %8234 = fsub fast float -0.000000e+00, %8232
  %8235 = fmul fast float %8194, %8234
  %8236 = fmul fast float %8195, %8234
  %8237 = fmul fast float %8196, %8234
  br label %8238

; <label>:8238                                    ; preds = %8191, %7791
  %8239 = phi float [ %8192, %8191 ], [ 0.000000e+00, %7791 ]
  %8240 = phi float [ %8233, %8191 ], [ 1.000000e+00, %7791 ]
  %8241 = phi float [ %8235, %8191 ], [ 0.000000e+00, %7791 ]
  %8242 = phi float [ %8236, %8191 ], [ 0.000000e+00, %7791 ]
  %8243 = phi float [ %8237, %8191 ], [ 0.000000e+00, %7791 ]
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8246 = fsub fast float 1.000000e+00, %8240
  %8247 = fmul fast float %8246, %7826
  %8248 = fmul fast float %8247, %8245
  %8249 = fsub fast float %7826, %8248
  br i1 %7819, label %8250, label %8279, !dx.controlflow.hints !165

; <label>:8250                                    ; preds = %8238
  %8251 = fmul fast float %7827, %7816
  %8252 = fadd fast float %8251, %7817
  %8253 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8254 = fmul fast float %7798, %8249
  %8255 = fsub fast float -0.000000e+00, %8254
  %8256 = fmul fast float %7799, %8249
  %8257 = fsub fast float -0.000000e+00, %8256
  %8258 = call float @dx.op.unary.f32(i32 21, float %8255)  ; Exp(value)
  %8259 = call float @dx.op.unary.f32(i32 21, float %8257)  ; Exp(value)
  %8260 = call float @dx.op.binary.f32(i32 35, float %7806, float %8258)  ; FMax(a,b)
  %8261 = call float @dx.op.binary.f32(i32 35, float %7806, float %8259)  ; FMax(a,b)
  %8262 = fsub fast float %8261, %8260
  %8263 = fmul fast float %8262, %8253
  %8264 = fadd fast float %8263, %8260
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = fsub fast float %7803, %7808
  %8267 = fsub fast float %7804, %7809
  %8268 = fsub fast float %7805, %7810
  %8269 = fmul fast float %8253, %8266
  %8270 = fmul fast float %8253, %8267
  %8271 = fmul fast float %8253, %8268
  %8272 = fadd fast float %8269, %7808
  %8273 = fadd fast float %8270, %7809
  %8274 = fadd fast float %8271, %7810
  %8275 = fsub fast float 1.000000e+00, %8265
  %8276 = fmul fast float %8275, %8272
  %8277 = fmul fast float %8275, %8273
  %8278 = fmul fast float %8275, %8274
  br label %8338

; <label>:8279                                    ; preds = %8238
  %8280 = fmul fast float %8249, %7815
  %8281 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8282 = fsub fast float 2.000000e+00, %8281
  %8283 = fmul fast float %8281, 9.921875e-01
  %8284 = fmul fast float %8283, %8282
  %8285 = fadd fast float %8284, 3.906250e-03
  %8286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %47, float %8285, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8287 = extractvalue %dx.types.ResRet.f32 %8286, 0
  %8288 = fsub fast float %8281, %8287
  %8289 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8288)  ; FMax(a,b)
  %8290 = fmul fast float %7801, %7782
  %8291 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8292 = fcmp fast ogt float %8291, 0x3EB0C6F7A0000000
  br i1 %8292, label %8293, label %8299, !dx.controlflow.hints !166

; <label>:8293                                    ; preds = %8279
  %8294 = fmul fast float %8290, 0xBFF7154760000000
  %8295 = call float @dx.op.unary.f32(i32 21, float %8294)  ; Exp(value)
  %8296 = fsub fast float 1.000000e+00, %8295
  %8297 = fdiv fast float %8296, %8290
  %8298 = fmul fast float %8297, %7811
  br label %8299

; <label>:8299                                    ; preds = %8293, %8279
  %8300 = phi float [ %8298, %8293 ], [ %7811, %8279 ]
  %8301 = fadd fast float %8300, %7813
  %8302 = fmul fast float %8301, %8289
  %8303 = fmul fast float %7798, %8302
  %8304 = fsub fast float -0.000000e+00, %8303
  %8305 = fmul fast float %7799, %8302
  %8306 = fsub fast float -0.000000e+00, %8305
  %8307 = fmul fast float %7800, %8302
  %8308 = fsub fast float -0.000000e+00, %8307
  %8309 = call float @dx.op.unary.f32(i32 21, float %8304)  ; Exp(value)
  %8310 = call float @dx.op.unary.f32(i32 21, float %8306)  ; Exp(value)
  %8311 = call float @dx.op.unary.f32(i32 21, float %8308)  ; Exp(value)
  %8312 = fmul fast float %7827, %7827
  %8313 = fadd fast float %8312, 1.000000e+00
  %8314 = fmul fast float %8313, 0x3FAE8EC8A0000000
  %8315 = fmul fast float %8314, %7808
  %8316 = fmul fast float %8314, %7809
  %8317 = fmul fast float %8314, %7810
  %8318 = fmul fast float %7827, %7806
  %8319 = fsub fast float 1.000000e+00, %8318
  %8320 = fmul fast float %7806, %7806
  %8321 = fsub fast float 1.000000e+00, %8320
  %8322 = fmul fast float %8321, 0x3FB45F3060000000
  %8323 = fmul fast float %8319, %8319
  %8324 = fdiv fast float 1.000000e+00, %8323
  %8325 = fmul fast float %8322, %8324
  %8326 = fmul fast float %8325, %7803
  %8327 = fmul fast float %8325, %7804
  %8328 = fmul fast float %8325, %7805
  %8329 = fadd fast float %8326, %8315
  %8330 = fadd fast float %8327, %8316
  %8331 = fadd fast float %8328, %8317
  %8332 = fsub fast float 1.000000e+00, %8309
  %8333 = fsub fast float 1.000000e+00, %8310
  %8334 = fsub fast float 1.000000e+00, %8311
  %8335 = fmul fast float %8329, %8332
  %8336 = fmul fast float %8330, %8333
  %8337 = fmul fast float %8331, %8334
  br label %8338

; <label>:8338                                    ; preds = %8299, %8250
  %8339 = phi float [ %8276, %8250 ], [ %8335, %8299 ]
  %8340 = phi float [ %8277, %8250 ], [ %8336, %8299 ]
  %8341 = phi float [ %8278, %8250 ], [ %8337, %8299 ]
  %8342 = phi float [ %8265, %8250 ], [ %8309, %8299 ]
  %8343 = phi float [ %8265, %8250 ], [ %8310, %8299 ]
  %8344 = phi float [ %8265, %8250 ], [ %8311, %8299 ]
  br i1 %7835, label %8345, label %8543, !dx.controlflow.hints !167

; <label>:8345                                    ; preds = %8338
  %8346 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8347 = fmul fast float %8346, %8246
  %8348 = fsub fast float %8241, %8339
  %8349 = fsub fast float %8242, %8340
  %8350 = fsub fast float %8243, %8341
  %8351 = fmul fast float %8347, %8348
  %8352 = fmul fast float %8347, %8349
  %8353 = fmul fast float %8347, %8350
  %8354 = fadd fast float %8351, %8339
  %8355 = fadd fast float %8352, %8340
  %8356 = fadd fast float %8353, %8341
  %8357 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8342)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8343)  ; FMax(a,b)
  %8359 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8344)  ; FMax(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8240)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 35, float %8239, float %8249)  ; FMax(a,b)
  %8362 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8361)  ; FMax(a,b)
  %8363 = fdiv fast float %8239, %8362
  %8364 = call float @dx.op.unary.f32(i32 7, float %8363)  ; Saturate(value)
  %8365 = fdiv fast float %8249, %8362
  %8366 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8367 = fcmp fast une float %8360, 1.000000e+00
  br i1 %8367, label %8368, label %8381, !dx.controlflow.hints !168

; <label>:8368                                    ; preds = %8345
  %8369 = call float @dx.op.unary.f32(i32 23, float %8360)  ; Log(value)
  %8370 = fmul fast float %8369, 0x3FE62E4300000000
  %8371 = fmul fast float %8241, %8370
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = fmul fast float %8242, %8370
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fmul fast float %8243, %8370
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = fsub fast float 1.000000e+00, %8360
  %8378 = fdiv fast float %8372, %8377
  %8379 = fdiv fast float %8374, %8377
  %8380 = fdiv fast float %8376, %8377
  br label %8381

; <label>:8381                                    ; preds = %8368, %8345
  %8382 = phi float [ %8378, %8368 ], [ %8241, %8345 ]
  %8383 = phi float [ %8379, %8368 ], [ %8242, %8345 ]
  %8384 = phi float [ %8380, %8368 ], [ %8243, %8345 ]
  %8385 = phi float [ %8370, %8368 ], [ 0.000000e+00, %8345 ]
  %8386 = fcmp fast une float %8357, 1.000000e+00
  br i1 %8386, label %8387, label %8394, !dx.controlflow.hints !169

; <label>:8387                                    ; preds = %8381
  %8388 = call float @dx.op.unary.f32(i32 23, float %8357)  ; Log(value)
  %8389 = fmul fast float %8388, 0x3FE62E4300000000
  %8390 = fmul fast float %8354, %8389
  %8391 = fsub fast float -0.000000e+00, %8390
  %8392 = fsub fast float 1.000000e+00, %8357
  %8393 = fdiv fast float %8391, %8392
  br label %8394

; <label>:8394                                    ; preds = %8387, %8381
  %8395 = phi float [ %8393, %8387 ], [ %8354, %8381 ]
  %8396 = phi float [ %8389, %8387 ], [ 0.000000e+00, %8381 ]
  %8397 = fcmp fast une float %8358, 1.000000e+00
  br i1 %8397, label %8398, label %8405, !dx.controlflow.hints !169

; <label>:8398                                    ; preds = %8394
  %8399 = call float @dx.op.unary.f32(i32 23, float %8358)  ; Log(value)
  %8400 = fmul fast float %8399, 0x3FE62E4300000000
  %8401 = fmul fast float %8355, %8400
  %8402 = fsub fast float -0.000000e+00, %8401
  %8403 = fsub fast float 1.000000e+00, %8358
  %8404 = fdiv fast float %8402, %8403
  br label %8405

; <label>:8405                                    ; preds = %8398, %8394
  %8406 = phi float [ %8404, %8398 ], [ %8355, %8394 ]
  %8407 = phi float [ %8400, %8398 ], [ 0.000000e+00, %8394 ]
  %8408 = fcmp fast une float %8359, 1.000000e+00
  br i1 %8408, label %8409, label %8416, !dx.controlflow.hints !169

; <label>:8409                                    ; preds = %8405
  %8410 = call float @dx.op.unary.f32(i32 23, float %8359)  ; Log(value)
  %8411 = fmul fast float %8410, 0x3FE62E4300000000
  %8412 = fmul fast float %8356, %8411
  %8413 = fsub fast float -0.000000e+00, %8412
  %8414 = fsub fast float 1.000000e+00, %8359
  %8415 = fdiv fast float %8413, %8414
  br label %8416

; <label>:8416                                    ; preds = %8409, %8405
  %8417 = phi float [ %8415, %8409 ], [ %8356, %8405 ]
  %8418 = phi float [ %8411, %8409 ], [ 0.000000e+00, %8405 ]
  %8419 = fmul fast float %8382, %8366
  %8420 = fmul fast float %8383, %8366
  %8421 = fmul fast float %8384, %8366
  %8422 = fmul fast float %8385, %8366
  %8423 = fmul fast float %8395, %8364
  %8424 = fmul fast float %8406, %8364
  %8425 = fmul fast float %8417, %8364
  %8426 = fmul fast float %8396, %8364
  %8427 = fmul fast float %8407, %8364
  %8428 = fmul fast float %8418, %8364
  %8429 = fadd fast float %8423, %8419
  %8430 = fadd fast float %8424, %8420
  %8431 = fadd fast float %8425, %8421
  %8432 = fadd fast float %8426, %8422
  %8433 = fadd fast float %8427, %8422
  %8434 = fadd fast float %8428, %8422
  %8435 = fcmp fast une float %8432, 0.000000e+00
  br i1 %8435, label %8436, label %8443, !dx.controlflow.hints !170

; <label>:8436                                    ; preds = %8416
  %8437 = fmul fast float %8432, 0x3FF7154760000000
  %8438 = call float @dx.op.unary.f32(i32 21, float %8437)  ; Exp(value)
  %8439 = fsub fast float 1.000000e+00, %8438
  %8440 = fmul fast float %8429, %8439
  %8441 = fsub fast float -0.000000e+00, %8440
  %8442 = fdiv fast float %8441, %8432
  br label %8443

; <label>:8443                                    ; preds = %8436, %8416
  %8444 = phi float [ %8438, %8436 ], [ 1.000000e+00, %8416 ]
  %8445 = phi float [ %8442, %8436 ], [ %8429, %8416 ]
  %8446 = fcmp fast une float %8433, 0.000000e+00
  br i1 %8446, label %8447, label %8454, !dx.controlflow.hints !170

; <label>:8447                                    ; preds = %8443
  %8448 = fmul fast float %8433, 0x3FF7154760000000
  %8449 = call float @dx.op.unary.f32(i32 21, float %8448)  ; Exp(value)
  %8450 = fsub fast float 1.000000e+00, %8449
  %8451 = fmul fast float %8430, %8450
  %8452 = fsub fast float -0.000000e+00, %8451
  %8453 = fdiv fast float %8452, %8433
  br label %8454

; <label>:8454                                    ; preds = %8447, %8443
  %8455 = phi float [ %8449, %8447 ], [ 1.000000e+00, %8443 ]
  %8456 = phi float [ %8453, %8447 ], [ %8430, %8443 ]
  %8457 = fcmp fast une float %8434, 0.000000e+00
  br i1 %8457, label %8458, label %8465, !dx.controlflow.hints !170

; <label>:8458                                    ; preds = %8454
  %8459 = fmul fast float %8434, 0x3FF7154760000000
  %8460 = call float @dx.op.unary.f32(i32 21, float %8459)  ; Exp(value)
  %8461 = fsub fast float 1.000000e+00, %8460
  %8462 = fmul fast float %8431, %8461
  %8463 = fsub fast float -0.000000e+00, %8462
  %8464 = fdiv fast float %8463, %8434
  br label %8465

; <label>:8465                                    ; preds = %8458, %8454
  %8466 = phi float [ %8460, %8458 ], [ 1.000000e+00, %8454 ]
  %8467 = phi float [ %8464, %8458 ], [ %8431, %8454 ]
  %8468 = fcmp fast ogt float %8364, %8366
  br i1 %8468, label %8469, label %8489

; <label>:8469                                    ; preds = %8465
  %8470 = fsub fast float 1.000000e+00, %8366
  %8471 = fmul fast float %8382, %8470
  %8472 = fmul fast float %8383, %8470
  %8473 = fmul fast float %8384, %8470
  %8474 = fmul fast float %8385, %8470
  %8475 = fcmp fast une float %8474, 0.000000e+00
  br i1 %8475, label %8476, label %8527, !dx.controlflow.hints !171

; <label>:8476                                    ; preds = %8469
  %8477 = fmul fast float %8474, 0x3FF7154760000000
  %8478 = call float @dx.op.unary.f32(i32 21, float %8477)  ; Exp(value)
  %8479 = fsub fast float 1.000000e+00, %8478
  %8480 = fmul fast float %8471, %8479
  %8481 = fsub fast float -0.000000e+00, %8480
  %8482 = fmul fast float %8472, %8479
  %8483 = fsub fast float -0.000000e+00, %8482
  %8484 = fmul fast float %8473, %8479
  %8485 = fsub fast float -0.000000e+00, %8484
  %8486 = fdiv fast float %8481, %8474
  %8487 = fdiv fast float %8483, %8474
  %8488 = fdiv fast float %8485, %8474
  br label %8527

; <label>:8489                                    ; preds = %8465
  %8490 = fsub fast float 1.000000e+00, %8364
  %8491 = fmul fast float %8395, %8490
  %8492 = fmul fast float %8406, %8490
  %8493 = fmul fast float %8417, %8490
  %8494 = fmul fast float %8396, %8490
  %8495 = fmul fast float %8407, %8490
  %8496 = fmul fast float %8418, %8490
  %8497 = fcmp fast une float %8494, 0.000000e+00
  br i1 %8497, label %8498, label %8505, !dx.controlflow.hints !170

; <label>:8498                                    ; preds = %8489
  %8499 = fmul fast float %8494, 0x3FF7154760000000
  %8500 = call float @dx.op.unary.f32(i32 21, float %8499)  ; Exp(value)
  %8501 = fsub fast float 1.000000e+00, %8500
  %8502 = fmul fast float %8491, %8501
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = fdiv fast float %8503, %8494
  br label %8505

; <label>:8505                                    ; preds = %8498, %8489
  %8506 = phi float [ %8504, %8498 ], [ %8491, %8489 ]
  %8507 = phi float [ %8500, %8498 ], [ 1.000000e+00, %8489 ]
  %8508 = fcmp fast une float %8495, 0.000000e+00
  br i1 %8508, label %8509, label %8516, !dx.controlflow.hints !170

; <label>:8509                                    ; preds = %8505
  %8510 = fmul fast float %8495, 0x3FF7154760000000
  %8511 = call float @dx.op.unary.f32(i32 21, float %8510)  ; Exp(value)
  %8512 = fsub fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8492, %8512
  %8514 = fsub fast float -0.000000e+00, %8513
  %8515 = fdiv fast float %8514, %8495
  br label %8516

; <label>:8516                                    ; preds = %8509, %8505
  %8517 = phi float [ %8515, %8509 ], [ %8492, %8505 ]
  %8518 = phi float [ %8511, %8509 ], [ 1.000000e+00, %8505 ]
  %8519 = fcmp fast une float %8496, 0.000000e+00
  br i1 %8519, label %8520, label %8527, !dx.controlflow.hints !170

; <label>:8520                                    ; preds = %8516
  %8521 = fmul fast float %8496, 0x3FF7154760000000
  %8522 = call float @dx.op.unary.f32(i32 21, float %8521)  ; Exp(value)
  %8523 = fsub fast float 1.000000e+00, %8522
  %8524 = fmul fast float %8493, %8523
  %8525 = fsub fast float -0.000000e+00, %8524
  %8526 = fdiv fast float %8525, %8496
  br label %8527

; <label>:8527                                    ; preds = %8520, %8516, %8476, %8469
  %8528 = phi float [ %8526, %8520 ], [ %8488, %8476 ], [ %8473, %8469 ], [ %8493, %8516 ]
  %8529 = phi float [ %8517, %8520 ], [ %8487, %8476 ], [ %8472, %8469 ], [ %8517, %8516 ]
  %8530 = phi float [ %8506, %8520 ], [ %8486, %8476 ], [ %8471, %8469 ], [ %8506, %8516 ]
  %8531 = phi float [ %8522, %8520 ], [ %8478, %8476 ], [ 1.000000e+00, %8469 ], [ 1.000000e+00, %8516 ]
  %8532 = phi float [ %8518, %8520 ], [ %8478, %8476 ], [ 1.000000e+00, %8469 ], [ %8518, %8516 ]
  %8533 = phi float [ %8507, %8520 ], [ %8478, %8476 ], [ 1.000000e+00, %8469 ], [ %8507, %8516 ]
  %8534 = fmul fast float %8533, %8445
  %8535 = fmul fast float %8532, %8456
  %8536 = fmul fast float %8531, %8467
  %8537 = fadd fast float %8534, %8530
  %8538 = fadd fast float %8535, %8529
  %8539 = fadd fast float %8536, %8528
  %8540 = fmul fast float %8533, %8444
  %8541 = fmul fast float %8532, %8455
  %8542 = fmul fast float %8531, %8466
  br label %8543

; <label>:8543                                    ; preds = %8527, %8338
  %8544 = phi float [ %8542, %8527 ], [ %8344, %8338 ]
  %8545 = phi float [ %8541, %8527 ], [ %8343, %8338 ]
  %8546 = phi float [ %8540, %8527 ], [ %8342, %8338 ]
  %8547 = phi float [ %8539, %8527 ], [ %8341, %8338 ]
  %8548 = phi float [ %8538, %8527 ], [ %8340, %8338 ]
  %8549 = phi float [ %8537, %8527 ], [ %8339, %8338 ]
  %8550 = fmul fast float %8546, %7790
  %8551 = call float @dx.op.dot3.f32(i32 55, float %8546, float %8545, float %8544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8552 = call float @dx.op.dot3.f32(i32 55, float %8549, float %8548, float %8547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8553 = select i1 %260, float %8551, float %8546
  %8554 = select i1 %260, float %8551, float %8545
  %8555 = select i1 %260, float 1.000000e+00, float %8544
  %8556 = select i1 %260, float %8552, float %8549
  %8557 = select i1 %260, float 0.000000e+00, float %8548
  %8558 = select i1 %260, float 0.000000e+00, float %8547
  %8559 = fmul fast float %8553, %7784
  %8560 = fmul fast float %8554, %7785
  %8561 = fmul fast float %8555, %7786
  %8562 = fadd fast float %8559, %8556
  %8563 = fadd fast float %8560, %8557
  %8564 = fadd fast float %8558, %8561
  %8565 = fmul fast float %8553, %7787
  %8566 = fmul fast float %8554, %7788
  %8567 = fmul fast float %8555, %7789
  %8568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.i32 %8568, 0
  %8570 = icmp eq i32 %8569, 0
  br i1 %8570, label %8928, label %8571, !dx.controlflow.hints !172

; <label>:8571                                    ; preds = %8543
  %8572 = fmul fast float %5696, %109
  %8573 = fmul fast float %5697, %110
  %8574 = fmul fast float %8572, 2.000000e+00
  %8575 = fmul fast float %8573, 2.000000e+00
  %8576 = fsub fast float 1.000000e+00, %8574
  %8577 = fsub fast float 1.000000e+00, %8575
  %8578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8579 = extractvalue %dx.types.CBufRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.CBufRet.f32 %8578, 1
  %8581 = extractvalue %dx.types.CBufRet.f32 %8578, 2
  %8582 = fmul fast float %8576, %8579
  %8583 = fmul fast float %8576, %8580
  %8584 = fmul fast float %8576, %8581
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = fmul fast float %8577, %8586
  %8590 = fmul fast float %8577, %8587
  %8591 = fmul fast float %8577, %8588
  %8592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.CBufRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8592, 2
  %8596 = fadd fast float %8589, %8593
  %8597 = fadd fast float %8596, %8582
  %8598 = fadd fast float %8590, %8594
  %8599 = fadd fast float %8598, %8583
  %8600 = fadd fast float %8591, %8595
  %8601 = fadd fast float %8600, %8584
  %8602 = fmul fast float %8597, %7783
  %8603 = fmul fast float %8599, %7783
  %8604 = fmul fast float %8601, %7783
  %8605 = fmul fast float %8602, %8602
  %8606 = fmul fast float %8603, %8603
  %8607 = fadd fast float %8605, %8606
  %8608 = fmul fast float %8604, %8604
  %8609 = fadd fast float %8607, %8608
  %8610 = call float @dx.op.unary.f32(i32 24, float %8609)  ; Sqrt(value)
  %8611 = extractvalue %dx.types.CBufRet.f32 %7518, 0
  %8612 = fsub fast float %8610, %8611
  %8613 = extractvalue %dx.types.CBufRet.f32 %7518, 2
  %8614 = fmul fast float %8612, %8613
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = fadd fast float %8615, -5.000000e-01
  %8617 = fmul fast float %8616, 2.000000e+00
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 2
  %8620 = call float @dx.op.binary.f32(i32 36, float %8619, float %8617)  ; FMin(a,b)
  %8621 = fsub fast float -0.000000e+00, %8619
  %8622 = fcmp fast ogt float %8620, %8621
  br i1 %8622, label %8623, label %8928, !dx.controlflow.hints !173

; <label>:8623                                    ; preds = %8571
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 3
  %8626 = fcmp fast ogt float %8625, 0.000000e+00
  br i1 %8626, label %8627, label %8700, !dx.controlflow.hints !174

; <label>:8627                                    ; preds = %8623
  %8628 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8629 = extractvalue %dx.types.Dimensions %8628, 0
  %8630 = sitofp i32 %8629 to float
  %8631 = extractvalue %dx.types.Dimensions %8628, 1
  %8632 = sitofp i32 %8631 to float
  %8633 = fmul fast float %8572, %8630
  %8634 = fmul fast float %8573, %8632
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 1
  %8637 = fsub fast float -0.000000e+00, %8636
  %8638 = fptoui float %8637 to i32
  %8639 = fptoui float %8633 to i32
  %8640 = fptoui float %8634 to i32
  %8641 = and i32 %8638, 31
  %8642 = lshr i32 %8639, %8641
  %8643 = lshr i32 %8640, %8641
  %8644 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8638, i32 %8642, i32 %8643, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8645 = extractvalue %dx.types.ResRet.f32 %8644, 0
  %8646 = fcmp fast olt float %8645, -1.000000e+00
  %8647 = fcmp fast ogt float %8645, -1.000000e+00
  %8648 = select i1 %8647, float %5704, float 1.000000e+00
  %8649 = fadd fast float %8645, 1.000000e+00
  %8650 = fmul fast float %8648, %8649
  %8651 = call float @dx.op.unary.f32(i32 6, float %8650)  ; FAbs(value)
  %8652 = extractvalue %dx.types.CBufRet.f32 %5703, 3
  %8653 = fcmp fast oge float %8651, %8652
  %8654 = select i1 %8653, float 0x4197782600000000, float %8651
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 0
  %8657 = extractvalue %dx.types.CBufRet.f32 %8655, 1
  %8658 = extractvalue %dx.types.CBufRet.f32 %8655, 2
  %8659 = select i1 %8646, float %8656, float %8579
  %8660 = select i1 %8646, float %8657, float %8580
  %8661 = select i1 %8646, float %8658, float %8581
  %8662 = fmul fast float %8659, %8576
  %8663 = fmul fast float %8660, %8576
  %8664 = fmul fast float %8661, %8576
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8668 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8669 = select i1 %8646, float %8666, float %8586
  %8670 = select i1 %8646, float %8667, float %8587
  %8671 = select i1 %8646, float %8668, float %8588
  %8672 = fmul fast float %8669, %8577
  %8673 = fmul fast float %8670, %8577
  %8674 = fmul fast float %8671, %8577
  %8675 = fadd fast float %8672, %8662
  %8676 = fadd fast float %8673, %8663
  %8677 = fadd fast float %8674, %8664
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8682 = select i1 %8646, float %8679, float %8593
  %8683 = select i1 %8646, float %8680, float %8594
  %8684 = select i1 %8646, float %8681, float %8595
  %8685 = fadd fast float %8675, %8682
  %8686 = fadd fast float %8676, %8683
  %8687 = fadd fast float %8677, %8684
  %8688 = fmul fast float %8685, %8654
  %8689 = fmul fast float %8686, %8654
  %8690 = fmul fast float %8687, %8654
  %8691 = fmul fast float %8688, %8688
  %8692 = fmul fast float %8689, %8689
  %8693 = fadd fast float %8691, %8692
  %8694 = fmul fast float %8690, %8690
  %8695 = fadd fast float %8693, %8694
  %8696 = call float @dx.op.unary.f32(i32 24, float %8695)  ; Sqrt(value)
  %8697 = fsub fast float %8696, %8611
  %8698 = fmul fast float %8697, %8613
  %8699 = call float @dx.op.unary.f32(i32 7, float %8698)  ; Saturate(value)
  br label %8700

; <label>:8700                                    ; preds = %8627, %8623
  %8701 = phi float [ %8699, %8627 ], [ 1.000000e+00, %8623 ]
  %8702 = fmul fast float %8620, 5.000000e-01
  %8703 = fadd fast float %8702, 5.000000e-01
  %8704 = call float @dx.op.unary.f32(i32 22, float %8703)  ; Frc(value)
  %8705 = call float @dx.op.unary.f32(i32 27, float %8704)  ; Round_ni(value)
  %8706 = call float @dx.op.unary.f32(i32 22, float %8704)  ; Frc(value)
  %8707 = fmul fast float %8706, 2.000000e+00
  %8708 = fadd fast float %8707, -1.000000e+00
  %8709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %47, float %8572, float %8573, float %8705, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8710 = extractvalue %dx.types.ResRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.ResRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.ResRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.ResRet.f32 %8709, 3
  %8714 = fadd fast float %8710, -5.000000e-01
  %8715 = fadd fast float %8712, -5.000000e-01
  %8716 = fmul fast float %8714, 0xBFD5555560000000
  %8717 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8715, float %8716)  ; FMad(a,b,c)
  %8718 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8711, float 0.000000e+00)  ; FMad(a,b,c)
  %8719 = fadd fast float %8718, %8713
  %8720 = fmul fast float %8714, -7.500000e-01
  %8721 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8715, float %8720)  ; FMad(a,b,c)
  %8722 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8711, float 0.000000e+00)  ; FMad(a,b,c)
  %8723 = fadd fast float %8722, %8713
  %8724 = call float @dx.op.binary.f32(i32 35, float %8717, float -1.000000e+00)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 35, float %8719, float -1.000000e+00)  ; FMax(a,b)
  %8726 = call float @dx.op.binary.f32(i32 35, float %8721, float -1.000000e+00)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8723, float -1.000000e+00)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8724, float 1.000000e+00)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8725, float 1.000000e+00)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8726, float 1.000000e+00)  ; FMin(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8727, float 1.000000e+00)  ; FMin(a,b)
  %8732 = fcmp fast olt float %8728, 0x3FEFFF8020000000
  br i1 %8732, label %8733, label %8848, !dx.controlflow.hints !175

; <label>:8733                                    ; preds = %8700
  %8734 = extractvalue %dx.types.CBufRet.f32 %8618, 3
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.CBufRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8739 = extractvalue %dx.types.CBufRet.f32 %8735, 3
  %8740 = fsub fast float %8736, %8728
  %8741 = fsub fast float %8737, %8729
  %8742 = fsub fast float %8738, %8730
  %8743 = fsub fast float %8739, %8731
  %8744 = fmul fast float %8740, %8734
  %8745 = fmul fast float %8741, %8734
  %8746 = fmul fast float %8742, %8734
  %8747 = fmul fast float %8743, %8734
  %8748 = fadd fast float %8744, %8728
  %8749 = fadd fast float %8745, %8729
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = fadd fast float %8746, %8730
  %8752 = fadd fast float %8747, %8731
  %8753 = fmul fast float %8748, %8748
  %8754 = fsub fast float %8749, %8753
  %8755 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8754)  ; FMax(a,b)
  %8756 = fdiv fast float 1.000000e+00, %8755
  %8757 = fmul fast float %8749, %8748
  %8758 = fsub fast float %8751, %8757
  %8759 = fsub fast float %8708, %8748
  %8760 = fmul fast float %8708, %8708
  %8761 = fsub fast float %8760, %8749
  %8762 = fmul fast float %8759, %8756
  %8763 = fmul fast float %8762, %8758
  %8764 = fsub fast float %8761, %8763
  %8765 = fmul fast float %8749, %8749
  %8766 = fsub fast float %8752, %8765
  %8767 = fmul fast float %8758, %8758
  %8768 = fmul fast float %8767, %8756
  %8769 = fsub fast float %8766, %8768
  %8770 = fdiv fast float %8764, %8769
  %8771 = fmul fast float %8758, %8770
  %8772 = fsub fast float %8759, %8771
  %8773 = fmul fast float %8772, %8756
  %8774 = fmul fast float %8773, %8748
  %8775 = fsub fast float 1.000000e+00, %8774
  %8776 = fmul fast float %8749, %8770
  %8777 = fsub fast float %8775, %8776
  %8778 = fmul fast float %8773, %8773
  %8779 = fmul fast float %8770, 4.000000e+00
  %8780 = fmul fast float %8779, %8777
  %8781 = fsub fast float %8778, %8780
  %8782 = call float @dx.op.unary.f32(i32 24, float %8781)  ; Sqrt(value)
  %8783 = fcmp fast oge float %8773, 0.000000e+00
  %8784 = fsub fast float -0.000000e+00, %8782
  %8785 = select i1 %8783, float %8784, float %8782
  %8786 = fsub fast float %8785, %8773
  %8787 = fdiv fast float %8786, %8770
  %8788 = fdiv fast float %8777, %8786
  %8789 = fmul fast float %8787, 5.000000e-01
  %8790 = fmul fast float %8788, 2.000000e+00
  %8791 = select i1 %8783, float %8789, float %8790
  %8792 = select i1 %8783, float %8790, float %8789
  %8793 = call float @dx.op.binary.f32(i32 35, float %8791, float %8792)  ; FMax(a,b)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8791, float %8792)  ; FMin(a,b)
  %8795 = fcmp fast ogt float %8708, %8794
  br i1 %8795, label %8796, label %8806

; <label>:8796                                    ; preds = %8733
  %8797 = fsub fast float %8708, %8794
  %8798 = fsub fast float %8793, %8794
  %8799 = fmul fast float %8797, %8798
  %8800 = fmul fast float %8793, %8708
  %8801 = fadd fast float %8793, %8708
  %8802 = fmul fast float %8801, %8748
  %8803 = fadd fast float %8800, %8749
  %8804 = fsub fast float %8803, %8802
  %8805 = fdiv fast float %8804, %8799
  br label %8806

; <label>:8806                                    ; preds = %8796, %8733
  %8807 = phi float [ %8805, %8796 ], [ 0.000000e+00, %8733 ]
  %8808 = fcmp fast ogt float %8708, %8793
  %8809 = fsub fast float %8708, %8793
  br i1 %8808, label %8810, label %8820

; <label>:8810                                    ; preds = %8806
  %8811 = fsub fast float %8793, %8794
  %8812 = fmul fast float %8811, %8809
  %8813 = fmul fast float %8794, %8708
  %8814 = fadd fast float %8794, %8708
  %8815 = fmul fast float %8814, %8748
  %8816 = fsub fast float %8750, %8813
  %8817 = fadd fast float %8816, %8815
  %8818 = fdiv fast float %8817, %8812
  %8819 = fadd fast float %8818, %8807
  br label %8820

; <label>:8820                                    ; preds = %8810, %8806
  %8821 = phi float [ %8819, %8810 ], [ %8807, %8806 ]
  %8822 = fsub fast float %8708, %8794
  %8823 = fmul fast float %8822, %8809
  %8824 = fmul fast float %8794, %8793
  %8825 = fadd fast float %8794, %8793
  %8826 = fmul fast float %8825, %8748
  %8827 = fadd fast float %8824, %8749
  %8828 = fsub fast float %8827, %8826
  %8829 = fdiv fast float %8828, %8823
  %8830 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8831 = fcmp fast oeq float %7519, 0.000000e+00
  %8832 = extractvalue %dx.types.CBufRet.f32 %8618, 0
  %8833 = fcmp fast oeq float %8832, 0.000000e+00
  %8834 = or i1 %8831, %8833
  %8835 = fmul fast float %8832, 2.000000e+00
  %8836 = fadd fast float %8619, %8620
  %8837 = fdiv fast float %8836, %8835
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fmul fast float %8838, 2.000000e+00
  %8840 = fsub fast float 3.000000e+00, %8839
  %8841 = fmul fast float %8838, %8838
  %8842 = fmul fast float %8841, %8840
  %8843 = select i1 %8834, float 1.000000e+00, float %8842
  %8844 = fmul fast float %8829, %7519
  %8845 = fadd fast float %8830, %8844
  %8846 = call float @dx.op.unary.f32(i32 7, float %8845)  ; Saturate(value)
  %8847 = fmul fast float %8843, %8846
  br label %8848

; <label>:8848                                    ; preds = %8820, %8700
  %8849 = phi float [ %8847, %8820 ], [ 0.000000e+00, %8700 ]
  %8850 = fsub fast float 1.000000e+00, %8849
  %8851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %47, float %8572, float %8573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8852 = extractvalue %dx.types.ResRet.f32 %8851, 0
  %8853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.i32 %8853, 2
  %8855 = icmp eq i32 %8854, 0
  br i1 %8855, label %8861, label %8856

; <label>:8856                                    ; preds = %8848
  %8857 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8858 = fadd fast float %8852, -1.000000e+00
  %8859 = fmul fast float %8857, %8858
  %8860 = fadd fast float %8859, 1.000000e+00
  br label %8861

; <label>:8861                                    ; preds = %8856, %8848
  %8862 = phi float [ %8860, %8856 ], [ %8850, %8848 ]
  br i1 %8626, label %8863, label %8881

; <label>:8863                                    ; preds = %8861
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 1
  %8866 = fsub fast float %8701, %8865
  %8867 = call float @dx.op.unary.f32(i32 7, float %8866)  ; Saturate(value)
  %8868 = fsub fast float %8701, %8625
  %8869 = call float @dx.op.unary.f32(i32 7, float %8868)  ; Saturate(value)
  %8870 = fsub fast float %8867, %8869
  %8871 = fsub fast float %8703, %8869
  %8872 = fdiv fast float %8871, %8870
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fmul fast float %8873, 2.000000e+00
  %8875 = fsub fast float 3.000000e+00, %8874
  %8876 = fsub fast float %8852, %8862
  %8877 = fmul fast float %8873, %8873
  %8878 = fmul fast float %8877, %8876
  %8879 = fmul fast float %8878, %8875
  %8880 = fadd fast float %8879, %8862
  br label %8881

; <label>:8881                                    ; preds = %8863, %8861
  %8882 = phi float [ %8880, %8863 ], [ %8862, %8861 ]
  %8883 = call float @dx.op.binary.f32(i32 35, float %8852, float %8882)  ; FMax(a,b)
  %8884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.i32 %8884, 2
  %8886 = and i32 %8885, 1
  %8887 = icmp eq i32 %8886, 0
  %8888 = fcmp fast une float %8883, 1.000000e+00
  %8889 = and i1 %8888, %8887
  br i1 %8889, label %8890, label %8907

; <label>:8890                                    ; preds = %8881
  %8891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %47, float %8572, float %8573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8892 = extractvalue %dx.types.ResRet.f32 %8891, 0
  %8893 = extractvalue %dx.types.ResRet.f32 %8891, 1
  %8894 = extractvalue %dx.types.ResRet.f32 %8891, 2
  %8895 = fmul fast float %5751, %8892
  %8896 = fmul fast float %5751, %8893
  %8897 = fmul fast float %5751, %8894
  %8898 = fcmp fast ogt float %8852, 0x3FEFFF2E40000000
  %8899 = fsub fast float 1.000000e+00, %8883
  %8900 = fsub fast float 1.000000e+00, %8852
  %8901 = fdiv fast float %8899, %8900
  %8902 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8903 = select i1 %8898, float 0.000000e+00, float %8902
  %8904 = fmul fast float %8895, %8903
  %8905 = fmul fast float %8896, %8903
  %8906 = fmul fast float %8897, %8903
  br label %8907

; <label>:8907                                    ; preds = %8890, %8881
  %8908 = phi float [ 0.000000e+00, %8881 ], [ %8904, %8890 ]
  %8909 = phi float [ 0.000000e+00, %8881 ], [ %8905, %8890 ]
  %8910 = phi float [ 0.000000e+00, %8881 ], [ %8906, %8890 ]
  %8911 = fmul fast float %8883, %8550
  %8912 = call float @dx.op.dot3.f32(i32 55, float %8883, float %8883, float %8883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8913 = call float @dx.op.dot3.f32(i32 55, float %8908, float %8909, float %8910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8914 = select i1 %260, float %8912, float %8883
  %8915 = select i1 %260, float 1.000000e+00, float %8883
  %8916 = select i1 %260, float %8913, float %8908
  %8917 = select i1 %260, float 0.000000e+00, float %8909
  %8918 = select i1 %260, float 0.000000e+00, float %8910
  %8919 = fmul fast float %8914, %8562
  %8920 = fmul fast float %8914, %8563
  %8921 = fmul fast float %8915, %8564
  %8922 = fadd fast float %8919, %8916
  %8923 = fadd fast float %8920, %8917
  %8924 = fadd fast float %8918, %8921
  %8925 = fmul fast float %8914, %8565
  %8926 = fmul fast float %8914, %8566
  %8927 = fmul fast float %8915, %8567
  br label %8928

; <label>:8928                                    ; preds = %8907, %8571, %8543, %7779
  %8929 = phi float [ %7784, %7779 ], [ %8562, %8543 ], [ %8922, %8907 ], [ %8562, %8571 ]
  %8930 = phi float [ %7785, %7779 ], [ %8563, %8543 ], [ %8923, %8907 ], [ %8563, %8571 ]
  %8931 = phi float [ %7786, %7779 ], [ %8564, %8543 ], [ %8924, %8907 ], [ %8564, %8571 ]
  %8932 = phi float [ %7787, %7779 ], [ %8565, %8543 ], [ %8925, %8907 ], [ %8565, %8571 ]
  %8933 = phi float [ %7788, %7779 ], [ %8566, %8543 ], [ %8926, %8907 ], [ %8566, %8571 ]
  %8934 = phi float [ %7789, %7779 ], [ %8567, %8543 ], [ %8927, %8907 ], [ %8567, %8571 ]
  %8935 = phi float [ %7790, %7779 ], [ %8550, %8543 ], [ %8911, %8907 ], [ %8550, %8571 ]
  %8936 = fmul fast float %5696, %109
  %8937 = fmul fast float %5697, %110
  %8938 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8939 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8940 = select i1 %7529, i32 2, i32 0
  %8941 = or i32 %8940, 1
  %8942 = uitofp i32 %8941 to float
  %8943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %47, float %8938, float %8939, float %8942, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8944 = extractvalue %dx.types.ResRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.ResRet.f32 %8943, 1
  %8946 = extractvalue %dx.types.ResRet.f32 %8943, 2
  %8947 = extractvalue %dx.types.ResRet.f32 %8943, 3
  %8948 = add nuw nsw i32 %8940, 2
  %8949 = uitofp i32 %8948 to float
  %8950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %47, float %8938, float %8939, float %8949, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8951 = extractvalue %dx.types.ResRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.ResRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.ResRet.f32 %8950, 2
  %8954 = extractvalue %dx.types.ResRet.f32 %8950, 3
  %8955 = call float @dx.op.binary.f32(i32 35, float %8945, float %8946)  ; FMax(a,b)
  %8956 = call float @dx.op.binary.f32(i32 35, float %8944, float %8955)  ; FMax(a,b)
  %8957 = call float @dx.op.binary.f32(i32 35, float %8956, float %8947)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 36, float %8952, float %8953)  ; FMin(a,b)
  %8959 = call float @dx.op.binary.f32(i32 36, float %8951, float %8958)  ; FMin(a,b)
  %8960 = call float @dx.op.binary.f32(i32 36, float %8959, float %8954)  ; FMin(a,b)
  %8961 = fmul fast float %8957, 2.550000e+02
  %8962 = fadd fast float %8961, 0x3F70101020000000
  %8963 = fptoui float %8962 to i32
  %8964 = fmul fast float %8960, 2.550000e+02
  %8965 = fadd fast float %8964, 0x3F70101020000000
  %8966 = fptoui float %8965 to i32
  %8967 = icmp ult i32 %8963, %8966
  br i1 %8967, label %8968, label %9135

; <label>:8968                                    ; preds = %8928
  %8969 = fcmp fast ogt float %99, 9.843750e-01
  %8970 = fadd fast float %7783, -4.000000e+00
  %8971 = select i1 %8969, float -4.000000e+00, float %8970
  %8972 = call float @dx.op.binary.f32(i32 35, float %8971, float 0.000000e+00)  ; FMax(a,b)
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 0
  %8975 = fadd fast float %8974, %8972
  %8976 = extractvalue %dx.types.CBufRet.f32 %8973, 2
  %8977 = fmul fast float %8975, %8976
  %8978 = call float @dx.op.unary.f32(i32 23, float %8977)  ; Log(value)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8973, 3
  %8980 = fmul fast float %8979, %8978
  %8981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8981, 2
  %8983 = fmul fast float %8980, %8982
  %8984 = call float @dx.op.unary.f32(i32 7, float %8983)  ; Saturate(value)
  %8985 = uitofp i32 %8963 to float
  %8986 = uitofp i32 %8966 to float
  %8987 = fadd fast float %8985, 5.000000e-01
  %8988 = fadd fast float %8986, 5.000000e-01
  %8989 = fmul fast float %8982, %8987
  %8990 = fmul fast float %8982, %8988
  %8991 = fadd fast float %8989, 0x3F0FFB4800000000
  %8992 = fadd fast float %8990, 0xBF0FFB4800000000
  %8993 = call float @dx.op.binary.f32(i32 35, float %8984, float %8991)  ; FMax(a,b)
  %8994 = call float @dx.op.binary.f32(i32 36, float %8993, float %8992)  ; FMin(a,b)
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 1
  %8997 = extractvalue %dx.types.CBufRet.f32 %8995, 2
  %8998 = extractvalue %dx.types.CBufRet.f32 %8995, 0
  %8999 = select i1 %7529, float %8998, float 0.000000e+00
  %9000 = fmul fast float %8996, %8994
  %9001 = fadd fast float %8999, %9000
  %9002 = fadd fast float %8999, %8997
  %9003 = fsub fast float %8996, %8997
  %9004 = fadd fast float %9003, %8999
  %9005 = call float @dx.op.binary.f32(i32 35, float %9001, float %9002)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 36, float %9005, float %9004)  ; FMin(a,b)
  %9007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %8938, float %8939, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9008 = extractvalue %dx.types.ResRet.f32 %9007, 0
  %9009 = extractvalue %dx.types.ResRet.f32 %9007, 1
  %9010 = extractvalue %dx.types.ResRet.f32 %9007, 2
  %9011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.i32 %9011, 0
  %9013 = extractvalue %dx.types.CBufRet.i32 %9011, 1
  %9014 = uitofp i32 %9012 to float
  %9015 = uitofp i32 %9013 to float
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 1
  %9019 = fmul fast float %9014, %8938
  %9020 = fmul fast float %9015, %8939
  %9021 = fadd fast float %9019, -5.000000e-01
  %9022 = fadd fast float %9020, -5.000000e-01
  %9023 = call float @dx.op.unary.f32(i32 22, float %9021)  ; Frc(value)
  %9024 = call float @dx.op.unary.f32(i32 22, float %9022)  ; Frc(value)
  %9025 = fmul fast float %9023, %9023
  %9026 = fmul fast float %9025, %9023
  %9027 = fsub fast float 3.000000e+00, %9023
  %9028 = fmul fast float %9025, %9027
  %9029 = fmul fast float %9023, 3.000000e+00
  %9030 = fmul fast float %9026, 3.000000e+00
  %9031 = fmul fast float %9025, 6.000000e+00
  %9032 = fsub fast float %9030, %9031
  %9033 = fadd fast float %9032, 4.000000e+00
  %9034 = fmul fast float %9033, 0x3FC5555560000000
  %9035 = fmul fast float %9026, -3.000000e+00
  %9036 = fadd fast float %9025, %9023
  %9037 = fmul fast float %9036, 3.000000e+00
  %9038 = fadd fast float %9035, 1.000000e+00
  %9039 = fadd fast float %9038, %9037
  %9040 = fmul fast float %9026, 0x3FC5555560000000
  %9041 = fmul fast float %9024, %9024
  %9042 = fmul fast float %9041, %9024
  %9043 = fsub fast float 3.000000e+00, %9024
  %9044 = fmul fast float %9041, %9043
  %9045 = fmul fast float %9024, 3.000000e+00
  %9046 = fmul fast float %9042, 3.000000e+00
  %9047 = fmul fast float %9041, 6.000000e+00
  %9048 = fsub fast float %9046, %9047
  %9049 = fadd fast float %9048, 4.000000e+00
  %9050 = fmul fast float %9049, 0x3FC5555560000000
  %9051 = fmul fast float %9042, -3.000000e+00
  %9052 = fadd fast float %9041, %9024
  %9053 = fmul fast float %9052, 3.000000e+00
  %9054 = fadd fast float %9051, 1.000000e+00
  %9055 = fadd fast float %9054, %9053
  %9056 = fmul fast float %9042, 0x3FC5555560000000
  %9057 = fadd fast float %9023, 1.000000e+00
  %9058 = fsub fast float 1.000000e+00, %9029
  %9059 = fadd fast float %9058, %9028
  %9060 = fadd fast float %9059, %9033
  %9061 = fmul fast float %9060, 0x3FC5555560000000
  %9062 = fdiv fast float %9034, %9061
  %9063 = fsub fast float %9057, %9062
  %9064 = fsub fast float 1.000000e+00, %9023
  %9065 = fadd fast float %9039, %9026
  %9066 = fmul fast float %9065, 0x3FC5555560000000
  %9067 = fdiv fast float %9040, %9066
  %9068 = fadd fast float %9064, %9067
  %9069 = fadd fast float %9024, 1.000000e+00
  %9070 = fsub fast float 1.000000e+00, %9045
  %9071 = fadd fast float %9070, %9044
  %9072 = fadd fast float %9071, %9049
  %9073 = fmul fast float %9072, 0x3FC5555560000000
  %9074 = fdiv fast float %9050, %9073
  %9075 = fsub fast float %9069, %9074
  %9076 = fsub fast float 1.000000e+00, %9024
  %9077 = fadd fast float %9055, %9042
  %9078 = fmul fast float %9077, 0x3FC5555560000000
  %9079 = fdiv fast float %9056, %9078
  %9080 = fadd fast float %9079, %9076
  %9081 = fmul fast float %9063, %9017
  %9082 = fsub fast float %8938, %9081
  %9083 = fmul fast float %9068, %9017
  %9084 = fadd fast float %9083, %8938
  %9085 = fmul fast float %9080, %9018
  %9086 = fadd fast float %9085, %8939
  %9087 = fmul fast float %9075, %9018
  %9088 = fsub fast float %8939, %9087
  %9089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %9082, float %9088, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9090 = extractvalue %dx.types.ResRet.f32 %9089, 0
  %9091 = extractvalue %dx.types.ResRet.f32 %9089, 1
  %9092 = extractvalue %dx.types.ResRet.f32 %9089, 2
  %9093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %9084, float %9088, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9094 = extractvalue %dx.types.ResRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.ResRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.ResRet.f32 %9093, 2
  %9097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %9082, float %9086, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9098 = extractvalue %dx.types.ResRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.ResRet.f32 %9097, 1
  %9100 = extractvalue %dx.types.ResRet.f32 %9097, 2
  %9101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %9084, float %9086, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9102 = extractvalue %dx.types.ResRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.ResRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.ResRet.f32 %9101, 2
  %9105 = fsub fast float %9098, %9090
  %9106 = fsub fast float %9099, %9091
  %9107 = fsub fast float %9100, %9092
  %9108 = fmul fast float %9105, %9078
  %9109 = fmul fast float %9106, %9078
  %9110 = fmul fast float %9107, %9078
  %9111 = fadd fast float %9108, %9090
  %9112 = fadd fast float %9109, %9091
  %9113 = fadd fast float %9110, %9092
  %9114 = fsub fast float %9102, %9094
  %9115 = fsub fast float %9103, %9095
  %9116 = fsub fast float %9104, %9096
  %9117 = fmul fast float %9114, %9078
  %9118 = fmul fast float %9115, %9078
  %9119 = fmul fast float %9116, %9078
  %9120 = fsub fast float %9094, %9111
  %9121 = fadd fast float %9120, %9117
  %9122 = fsub fast float %9095, %9112
  %9123 = fadd fast float %9122, %9118
  %9124 = fsub fast float %9096, %9113
  %9125 = fadd fast float %9124, %9119
  %9126 = fmul fast float %9121, %9066
  %9127 = fmul fast float %9123, %9066
  %9128 = fmul fast float %9125, %9066
  %9129 = fadd fast float %9126, %9111
  %9130 = fadd fast float %9127, %9112
  %9131 = fadd fast float %9128, %9113
  %9132 = fmul fast float %9129, %5751
  %9133 = fmul fast float %9130, %5751
  %9134 = fmul fast float %9131, %5751
  br label %9135

; <label>:9135                                    ; preds = %8968, %8928
  %9136 = phi float [ %9008, %8968 ], [ 1.000000e+00, %8928 ]
  %9137 = phi float [ %9009, %8968 ], [ 1.000000e+00, %8928 ]
  %9138 = phi float [ %9010, %8968 ], [ 1.000000e+00, %8928 ]
  %9139 = phi float [ %9132, %8968 ], [ 0.000000e+00, %8928 ]
  %9140 = phi float [ %9133, %8968 ], [ 0.000000e+00, %8928 ]
  %9141 = phi float [ %9134, %8968 ], [ 0.000000e+00, %8928 ]
  %9142 = fmul fast float %9136, %8935
  %9143 = call float @dx.op.dot3.f32(i32 55, float %9136, float %9137, float %9138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9144 = call float @dx.op.dot3.f32(i32 55, float %9139, float %9140, float %9141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9145 = select i1 %260, float %9143, float %9136
  %9146 = select i1 %260, float %9143, float %9137
  %9147 = select i1 %260, float 1.000000e+00, float %9138
  %9148 = select i1 %260, float %9144, float %9139
  %9149 = select i1 %260, float 0.000000e+00, float %9140
  %9150 = select i1 %260, float 0.000000e+00, float %9141
  %9151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %51, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.i32 %9151, 3
  %9153 = and i32 %9152, 3
  %9154 = icmp ne i32 %9153, 0
  %9155 = and i32 %9152, 4
  %9156 = icmp ne i32 %9155, 0
  %9157 = and i1 %9154, %9156
  %9158 = and i1 %260, %9157
  br i1 %9158, label %9159, label %9165

; <label>:9159                                    ; preds = %9135
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 1
  %9162 = fadd fast float %9142, -1.000000e+00
  %9163 = fmul fast float %9161, %9162
  %9164 = fadd fast float %9163, 1.000000e+00
  br label %9165

; <label>:9165                                    ; preds = %9159, %9135
  %9166 = phi float [ %9164, %9159 ], [ %9142, %9135 ]
  %9167 = fadd fast float %8932, %8929
  %9168 = fmul fast float %9145, %9167
  %9169 = fadd fast float %9168, %9148
  %9170 = fadd fast float %8933, %8930
  %9171 = fmul fast float %9146, %9170
  %9172 = fadd fast float %9171, %9149
  %9173 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  br i1 %260, label %9174, label %9190

; <label>:9174                                    ; preds = %9165
  %9175 = fadd fast float %9169, %9172
  %9176 = fmul fast float %9173, %9175
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 3
  %9179 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %9180 = fsub fast float %7516, %7510
  %9181 = fadd fast float %9180, %7517
  %9182 = fsub fast float %9181, %9179
  %9183 = extractvalue %dx.types.CBufRet.f32 %7511, 2
  %9184 = fmul fast float %9182, %9183
  %9185 = call float @dx.op.unary.f32(i32 7, float %9184)  ; Saturate(value)
  %9186 = fsub fast float %9185, %9178
  %9187 = fmul fast float %9186, %9166
  %9188 = fadd fast float %9187, %9178
  %9189 = fmul fast float %9188, %1310
  br label %9214

; <label>:9190                                    ; preds = %9165
  %9191 = fadd fast float %8934, %8931
  %9192 = fmul fast float %9147, %9191
  %9193 = fadd fast float %9192, %9150
  %9194 = fmul fast float %9173, %9169
  %9195 = fmul fast float %9173, %9172
  %9196 = fmul fast float %9173, %9193
  %9197 = call float @dx.op.binary.f32(i32 35, float %9194, float %9195)  ; FMax(a,b)
  %9198 = call float @dx.op.binary.f32(i32 35, float %9197, float %9196)  ; FMax(a,b)
  %9199 = call float @dx.op.binary.f32(i32 35, float %9198, float 1.000000e+00)  ; FMax(a,b)
  %9200 = fcmp fast ugt float %9199, 0x3F10000000000000
  br i1 %9200, label %9202, label %9201

; <label>:9201                                    ; preds = %9190
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9202

; <label>:9202                                    ; preds = %9201, %9190
  %9203 = add i32 %53, 356
  %9204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %9203, i32 undef)  ; BufferLoad(srv,index,wot)
  %9205 = extractvalue %dx.types.ResRet.i32 %9204, 0
  %9206 = and i32 %9205, 32
  %9207 = icmp eq i32 %9206, 0
  br i1 %9207, label %9214, label %9208

; <label>:9208                                    ; preds = %9202
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 0
  %9211 = fmul fast float %9210, 0x3FE99999A0000000
  %9212 = fadd fast float %9210, %9194
  %9213 = fadd fast float %9211, %9196
  br label %9214

; <label>:9214                                    ; preds = %9208, %9202, %9174
  %9215 = phi float [ %1310, %9174 ], [ 1.000000e+00, %9208 ], [ 1.000000e+00, %9202 ]
  %9216 = phi float [ %9176, %9174 ], [ %9212, %9208 ], [ %9194, %9202 ]
  %9217 = phi float [ %9189, %9174 ], [ %9195, %9208 ], [ %9195, %9202 ]
  %9218 = phi float [ %1310, %9174 ], [ %9213, %9208 ], [ %9196, %9202 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9216, float 3.225500e+04)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 36, float %9217, float 3.225500e+04)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9218, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9219)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9221)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9215, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9222)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9222)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!66}
!dx.entryPoints = !{!67}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !54, !57}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !39}
!39 = !{i32 0, i32 14}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!41 = !{i32 32, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!51 = !{i32 42, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !39}
!52 = !{i32 43, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!54 = !{!55, !56}
!55 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!56 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65}
!58 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!59 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!65 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!66 = !{[62 x i32] [i32 60, i32 8, i32 103, i32 103, i32 7, i32 7, i32 103, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 103, i32 0, i32 0, i32 0]}
!67 = !{void ()* @ps_main, !"ps_main", !68, !4, !95}
!68 = !{!69, !91, null}
!69 = !{!70, !73, !74, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90}
!70 = !{i32 0, !"SV_Position", i8 9, i8 3, !71, i8 4, i32 1, i8 4, i32 0, i8 0, !72}
!71 = !{i32 0}
!72 = !{i32 3, i32 15}
!73 = !{i32 1, !"COLOR", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 1, i8 0, !72}
!74 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 2, i8 0, !75}
!75 = !{i32 3, i32 3}
!76 = !{i32 3, !"NORMAL", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 3, i8 0, !77}
!77 = !{i32 3, i32 7}
!78 = !{i32 4, !"TANGENT", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 4, i8 0, !72}
!79 = !{i32 5, !"SH_RED", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 5, i8 0, !72}
!80 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 6, i8 0, !72}
!81 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 7, i8 0, !72}
!82 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 8, i8 0, !77}
!83 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 9, i8 0, !72}
!84 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !71, i8 2, i32 1, i8 2, i32 10, i8 0, !75}
!85 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 11, i8 0, !72}
!86 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 12, i8 0, !77}
!87 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !71, i8 1, i32 1, i8 2, i32 13, i8 0, !75}
!88 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !71, i8 1, i32 1, i8 4, i32 14, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !71, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92, !93}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !71, i8 0, i32 1, i8 4, i32 0, i8 0, !72}
!93 = !{i32 1, !"SV_Target", i8 9, i8 16, !94, i8 0, i32 1, i8 4, i32 1, i8 0, !72}
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
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"float", !104, i64 0}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

