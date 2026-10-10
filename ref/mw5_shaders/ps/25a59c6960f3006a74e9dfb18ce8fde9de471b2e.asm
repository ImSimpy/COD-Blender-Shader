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
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
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
; shader hash: 15b2cc83e8c30e24d2b93b6829e68877
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
;   [208 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture     f32          2d      T9     t37,space2     1
;                                   texture     f32          2d     T10             t0     1
;                                   texture     f32          2d     T11     t58,space2     1
;                                   texture     f32          2d     T12     t59,space2     1
;                                   texture     f32          2d     T13     t60,space2     1
;                                   texture    byte         r/o     T14     t45,space1     1
;                                   texture    byte         r/o     T15     t46,space1     1
;                                   texture    byte         r/o     T16     t47,space1     1
;                                   texture    byte         r/o     T17     t48,space1     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     u32          2d     T20     t56,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = alloca [4 x i32], align 4
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = shl i32 %53, 5
  %192 = add i32 %191, 4194304
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = fmul fast float %109, 5.000000e-01
  %199 = fmul fast float %110, 5.000000e-01
  %200 = fptosi float %198 to i32
  %201 = fptosi float %199 to i32
  %202 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %200, i32 %201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = lshr i32 %203, 18
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F4C00EBA0000000
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fadd fast float %207, -1.000000e+00
  %209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %210 = extractvalue %dx.types.Dimensions %209, 0
  %211 = sitofp i32 %210 to float
  %212 = extractvalue %dx.types.Dimensions %209, 1
  %213 = sitofp i32 %212 to float
  %214 = fcmp fast oge float %198, %211
  %215 = fcmp fast oge float %199, %213
  %216 = or i1 %214, %215
  %217 = select i1 %216, float 0x4197782600000000, float %208
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %221 = fmul fast float %219, %109
  %222 = fmul fast float %220, %110
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 114688
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %226, float %221, float 0.000000e+00
  %228 = select i1 %226, float %222, float 0.000000e+00
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %47, float %227, float %228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fmul fast float %230, 2.550000e+02
  %232 = fptoui float %231 to i32
  %233 = select i1 %226, i32 %232, i32 0
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 3
  %236 = and i32 %235, 3
  %237 = icmp ne i32 %236, 0
  %238 = and i32 %235, 4
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %250

; <label>:241                                     ; preds = %0
  %242 = fmul fast float %136, %110
  %243 = fmul fast float %135, %109
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %46, float %243, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fsub fast float 1.000000e+00, %245
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = fcmp fast olt float %246, %248
  br label %253

; <label>:250                                     ; preds = %0
  %251 = icmp eq i32 %238, 0
  %252 = and i1 %237, %251
  br label %253

; <label>:253                                     ; preds = %250, %241
  %254 = phi i1 [ %249, %241 ], [ %252, %250 ]
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = fmul fast float %256, 0x3FE3C6EF40000000
  %258 = frem fast float %109, 2.560000e+02
  %259 = frem fast float %110, 2.560000e+02
  %260 = fptoui float %258 to i32
  %261 = fptoui float %259 to i32
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %260, i32 %261, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = fadd fast float %263, %257
  %265 = call float @dx.op.unary.f32(i32 22, float %264)  ; Frc(value)
  %266 = add i32 %52, 156
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %278 = add i32 %52, 216
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %292 = add i32 %52, 36
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %52, 288
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = fmul fast float %303, 0x3F50624DE0000000
  %307 = fmul fast float %305, 0x3F50624DE0000000
  %308 = mul i32 %54, 100
  %309 = add i32 %308, 28
  %310 = add i32 %308, 40
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %52, 172
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %325 = add i32 %52, 232
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %339 = add i32 %52, 52
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %52, 304
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = shl i32 %354, 4
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %354, 7
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %354, 22
  %362 = shl nuw nsw i32 %361, 5
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = and i32 %312, 1
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %365, float %357, float %318
  %367 = select i1 %365, float %360, float %321
  %368 = select i1 %365, float %363, float %324
  %369 = add i32 %308, 44
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = fmul fast float %371, %366
  %373 = fmul fast float %371, %367
  %374 = fmul fast float %371, %368
  %375 = add i32 %308, 48
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 22
  %385 = shl nuw nsw i32 %384, 5
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %312, 8
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %380, float %330
  %390 = select i1 %388, float %383, float %334
  %391 = select i1 %388, float %386, float %338
  %392 = add i32 %308, 52
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = and i32 %312, 2
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %396, float %343
  %402 = select i1 %400, float %398, float %345
  %403 = add i32 %308, 56
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %405, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = and i32 %312, 4
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %407, float %350
  %413 = fmul float %412, 0x3F50624DE0000000
  %414 = select i1 %411, float %409, float %352
  %415 = fmul float %414, 0x3F50624DE0000000
  %416 = add i32 %308, 60
  %417 = add i32 %308, 32
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %52, 188
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = shl i32 %422, 4
  %424 = and i32 %423, 32752
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %422, 7
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %422, 22
  %430 = shl nuw nsw i32 %429, 5
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %52, 248
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %434, 8
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = lshr i32 %434, 16
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 0x3F70101020000000
  %446 = add i32 %52, 68
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %52, 320
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = shl i32 %461, 4
  %463 = and i32 %462, 32752
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %461, 7
  %466 = and i32 %465, 32752
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %461, 22
  %469 = shl nuw nsw i32 %468, 5
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = and i32 %419, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %464, float %425
  %474 = select i1 %472, float %467, float %428
  %475 = select i1 %472, float %470, float %431
  %476 = add i32 %308, 64
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = fmul fast float %478, %473
  %480 = fmul fast float %478, %474
  %481 = fmul fast float %478, %475
  %482 = add i32 %308, 68
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = shl i32 %484, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %484, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %484, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = and i32 %419, 8
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %487, float %437
  %497 = select i1 %495, float %490, float %441
  %498 = select i1 %495, float %493, float %445
  %499 = add i32 %308, 72
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 65535
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %501, 16
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = and i32 %419, 2
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %503, float %450
  %509 = select i1 %507, float %505, float %452
  %510 = add i32 %308, 76
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 65535
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = lshr i32 %512, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = and i32 %419, 4
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %514, float %457
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = select i1 %518, float %516, float %459
  %522 = fmul float %521, 0x3F50624DE0000000
  %523 = add i32 %308, 80
  %524 = add i32 %308, 36
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %52, 204
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = shl i32 %529, 4
  %531 = and i32 %530, 32752
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = lshr i32 %529, 7
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %529, 22
  %537 = shl nuw nsw i32 %536, 5
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %52, 264
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %543, 0x3F70101020000000
  %545 = lshr i32 %541, 8
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %547, 0x3F70101020000000
  %549 = lshr i32 %541, 16
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = add i32 %52, 84
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %52, 336
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = shl i32 %568, 4
  %570 = and i32 %569, 32752
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %568, 7
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %568, 22
  %576 = shl nuw nsw i32 %575, 5
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = and i32 %526, 1
  %579 = icmp ne i32 %578, 0
  %580 = select i1 %579, float %571, float %532
  %581 = select i1 %579, float %574, float %535
  %582 = select i1 %579, float %577, float %538
  %583 = add i32 %308, 84
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = fmul fast float %585, %580
  %587 = fmul fast float %585, %581
  %588 = fmul fast float %585, %582
  %589 = add i32 %308, 88
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = shl i32 %591, 4
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %591, 7
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %591, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %526, 8
  %602 = icmp ne i32 %601, 0
  %603 = select i1 %602, float %594, float %544
  %604 = select i1 %602, float %597, float %548
  %605 = select i1 %602, float %600, float %552
  %606 = add i32 %308, 92
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = and i32 %526, 2
  %614 = icmp ne i32 %613, 0
  %615 = select i1 %614, float %610, float %557
  %616 = select i1 %614, float %612, float %559
  %617 = add i32 %308, 96
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 65535
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %619, 16
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = and i32 %526, 4
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, float %621, float %564
  %627 = fmul float %626, 0x3F50624DE0000000
  %628 = select i1 %625, float %623, float %566
  %629 = fmul float %628, 0x3F50624DE0000000
  %630 = add i32 %52, 348
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 32
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %632, 64
  %636 = icmp eq i32 %635, 0
  %637 = and i32 %632, 128
  %638 = icmp eq i32 %637, 0
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 2
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %658, label %643

; <label>:643                                     ; preds = %253
  %644 = add i32 %52, 540
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %106, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = fmul fast float %653, %93
  %655 = fmul fast float %650, %94
  %656 = fmul fast float %651, %95
  %657 = fmul fast float %652, %96
  br label %658

; <label>:658                                     ; preds = %643, %253
  %659 = phi float [ %96, %253 ], [ %657, %643 ]
  %660 = phi float [ %95, %253 ], [ %656, %643 ]
  %661 = phi float [ %94, %253 ], [ %655, %643 ]
  %662 = phi float [ %93, %253 ], [ %654, %643 ]
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = and i32 %664, 2
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %686, label %667

; <label>:667                                     ; preds = %658
  %668 = add i32 %52, 44
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 1
  %672 = icmp ne i32 %671, 0
  %673 = select i1 %672, float %661, float 1.000000e+00
  %674 = add i32 %52, 60
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 1
  %678 = icmp ne i32 %677, 0
  %679 = select i1 %678, float %660, float 1.000000e+00
  %680 = add i32 %52, 76
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 1
  %684 = icmp ne i32 %683, 0
  %685 = select i1 %684, float %659, float 1.000000e+00
  br label %686

; <label>:686                                     ; preds = %667, %658
  %687 = phi float [ %659, %658 ], [ %685, %667 ]
  %688 = phi float [ %660, %658 ], [ %679, %667 ]
  %689 = phi float [ %661, %658 ], [ %673, %667 ]
  %690 = lshr i32 %664, 20
  %691 = and i32 %690, 3
  %692 = add nuw nsw i32 %691, 1
  %693 = add i32 %52, 24
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %52, 28
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = or i32 %698, %695
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %1343, label %701

; <label>:701                                     ; preds = %686
  %702 = and i32 %695, 262144
  %703 = icmp ne i32 %702, 0
  %704 = select i1 %703, float %59, float 1.000000e+00
  %705 = select i1 %703, float %60, float 0.000000e+00
  %706 = select i1 %703, float %61, float 0.000000e+00
  %707 = select i1 %703, float %62, float 1.000000e+00
  %708 = select i1 %703, float %63, float %91
  %709 = select i1 %703, float %64, float %92
  %710 = add i32 %52, 284
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = lshr i32 %712, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = fmul fast float %714, 0x3F50624DE0000000
  %716 = add i32 %52, 88
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  %721 = lshr i32 %718, 24
  %722 = add i32 %52, 292
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = lshr i32 %724, 16
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = add i32 %52, 32
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 22
  %733 = shl nuw nsw i32 %732, 5
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = shl i32 %731, 4
  %736 = and i32 %735, 32752
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %731, 7
  %739 = and i32 %738, 32752
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %743 = fmul fast float %742, 1.000000e+03
  %744 = fmul fast float %306, %743
  %745 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %746 = fadd fast float %745, %296
  %747 = fmul fast float %307, %743
  %748 = call float @dx.op.unary.f32(i32 22, float %747)  ; Frc(value)
  %749 = fadd fast float %748, %298
  %750 = fmul fast float %715, %743
  %751 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %752 = fmul fast float %751, 0x401921FB60000000
  %753 = fadd fast float %752, %734
  %754 = call float @dx.op.unary.f32(i32 13, float %753)  ; Sin(value)
  %755 = call float @dx.op.unary.f32(i32 12, float %753)  ; Cos(value)
  %756 = fsub fast float -0.000000e+00, %754
  %757 = fadd fast float %708, -5.000000e-01
  %758 = fadd fast float %709, -5.000000e-01
  %759 = fmul fast float %726, %757
  %760 = fmul fast float %728, %758
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %737, %761
  %764 = fmul fast float %740, %762
  %765 = fmul fast float %755, %763
  %766 = call float @dx.op.tertiary.f32(i32 46, float %756, float %764, float %765)  ; FMad(a,b,c)
  %767 = fmul fast float %754, %763
  %768 = call float @dx.op.tertiary.f32(i32 46, float %755, float %764, float %767)  ; FMad(a,b,c)
  %769 = fadd fast float %746, %766
  %770 = fadd fast float %749, %768
  %771 = icmp ugt i32 %720, 1
  %772 = icmp ugt i32 %718, 33554431
  %773 = or i1 %772, %771
  br i1 %773, label %774, label %799

; <label>:774                                     ; preds = %701
  %775 = add i32 %52, 228
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fmul fast float %742, %779
  %781 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %782 = mul nuw nsw i32 %720, %721
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %781, %783
  %785 = call float @dx.op.unary.f32(i32 27, float %784)  ; Round_ni(value)
  %786 = fptoui float %785 to i32
  %787 = urem i32 %786, %720
  %788 = udiv i32 %786, %721
  %789 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %790 = call float @dx.op.unary.f32(i32 22, float %770)  ; Frc(value)
  %791 = uitofp i32 %787 to float
  %792 = uitofp i32 %788 to float
  %793 = fadd fast float %789, %791
  %794 = fadd fast float %790, %792
  %795 = uitofp i32 %720 to float
  %796 = uitofp i32 %721 to float
  %797 = fdiv fast float %793, %795
  %798 = fdiv fast float %794, %796
  br label %799

; <label>:799                                     ; preds = %774, %701
  %800 = phi float [ %797, %774 ], [ %769, %701 ]
  %801 = phi float [ %798, %774 ], [ %770, %701 ]
  %802 = and i32 %695, 256
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %850, label %804

; <label>:804                                     ; preds = %799
  %805 = add i32 %52, 472
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = add i32 %807, 0
  %809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %809, %dx.types.Handle %106, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = add i32 %52, 100
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = shl i32 %814, 4
  %816 = and i32 %815, 32752
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %814, 7
  %819 = and i32 %818, 32752
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float 1.000000e+00, %662
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %823 = bitcast float %662 to i32
  %824 = sitofp i32 %823 to float
  %825 = fadd fast float %824, 0xC1CFBF8940000000
  %826 = fmul fast float %820, %825
  %827 = fadd fast float %826, 0x41CFBF8940000000
  %828 = fptosi float %827 to i32
  %829 = bitcast i32 %828 to float
  %830 = bitcast float %822 to i32
  %831 = sitofp i32 %830 to float
  %832 = fadd fast float %831, 0xC1CFBF8940000000
  %833 = fmul fast float %832, %820
  %834 = fadd fast float %833, 0x41CFBF8940000000
  %835 = fptosi float %834 to i32
  %836 = bitcast i32 %835 to float
  %837 = fmul fast float %829, %817
  %838 = fmul fast float %836, %817
  %839 = fsub fast float %822, %837
  %840 = fadd fast float %838, %822
  %841 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %842 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %843 = fsub fast float %811, %841
  %844 = fsub fast float %842, %841
  %845 = bitcast float %844 to i32
  %846 = sub nsw i32 2129859010, %845
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %847, %843
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  br label %850

; <label>:850                                     ; preds = %804, %799
  %851 = phi float [ %849, %804 ], [ %662, %799 ]
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 128
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %872, label %856

; <label>:856                                     ; preds = %850
  %857 = add i32 %52, 456
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %106, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 524288
  %867 = icmp ne i32 %866, 0
  %868 = fcmp fast ogt float %863, 0x3FE0101020000000
  %869 = select i1 %868, float 1.000000e+00, float 0.000000e+00
  %870 = select i1 %867, float %869, float %863
  %871 = fmul fast float %870, %851
  br label %872

; <label>:872                                     ; preds = %856, %850
  %873 = phi float [ %871, %856 ], [ %851, %850 ]
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 16
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1076, label %878

; <label>:878                                     ; preds = %872
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %52, 408
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = add i32 %883, 0
  %885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %884, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %886 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %885, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = extractvalue %dx.types.ResRet.f32 %886, 3
  %891 = and i32 %880, 255
  %892 = uitofp i32 %891 to float
  %893 = lshr i32 %880, 8
  %894 = and i32 %893, 255
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %890, %892
  %897 = fadd fast float %896, %895
  %898 = fmul fast float %897, 0x3F70101000000000
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 512
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %911, label %903

; <label>:903                                     ; preds = %878
  %904 = add i32 %52, 492
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %106, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  br label %911

; <label>:911                                     ; preds = %903, %878
  %912 = phi float [ %910, %903 ], [ 1.000000e+00, %878 ]
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 33554432
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %1023, label %917

; <label>:917                                     ; preds = %911
  %918 = add i32 %52, 224
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = and i32 %920, 65535
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %920, 16
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = add i32 %52, 228
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 24
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F70101020000000
  %935 = and i32 %931, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F70101020000000
  %938 = lshr i32 %931, 8
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = lshr i32 %931, 16
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = add i32 %52, 220
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 24
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = and i32 %948, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %948, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %948, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = bitcast float %887 to i32
  %964 = ashr i32 %963, 1
  %965 = sub nsw i32 1597463174, %964
  %966 = bitcast i32 %965 to float
  %967 = fmul fast float %887, 5.000000e-01
  %968 = fmul fast float %966, %966
  %969 = fmul fast float %968, %967
  %970 = fsub fast float 1.500000e+00, %969
  %971 = fmul fast float %966, %887
  %972 = fmul fast float %971, %970
  %973 = bitcast float %888 to i32
  %974 = ashr i32 %973, 1
  %975 = sub nsw i32 1597463174, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %888, 5.000000e-01
  %978 = fmul fast float %976, %976
  %979 = fmul fast float %978, %977
  %980 = fsub fast float 1.500000e+00, %979
  %981 = fmul fast float %976, %888
  %982 = fmul fast float %981, %980
  %983 = bitcast float %889 to i32
  %984 = ashr i32 %983, 1
  %985 = sub nsw i32 1597463174, %984
  %986 = bitcast i32 %985 to float
  %987 = fmul fast float %889, 5.000000e-01
  %988 = fmul fast float %986, %986
  %989 = fmul fast float %988, %987
  %990 = fsub fast float 1.500000e+00, %989
  %991 = fmul fast float %986, %889
  %992 = fmul fast float %991, %990
  %993 = fsub fast float %972, %954
  %994 = fsub fast float %982, %958
  %995 = fsub fast float %992, %962
  %996 = fmul fast float %993, %922
  %997 = fmul fast float %994, %924
  %998 = fmul fast float %995, %929
  %999 = fadd fast float %996, %937
  %1000 = fadd fast float %997, %941
  %1001 = fadd fast float %998, %945
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1004 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1005 = fmul fast float %1002, %1002
  %1006 = fmul fast float %1003, %1003
  %1007 = fmul fast float %1004, %1004
  %1008 = fsub fast float %1005, %887
  %1009 = fsub fast float %1006, %888
  %1010 = fsub fast float %1007, %889
  %1011 = fmul fast float %1008, %912
  %1012 = fmul fast float %1009, %912
  %1013 = fmul fast float %1010, %912
  %1014 = fadd fast float %1011, %887
  %1015 = fadd fast float %1012, %888
  %1016 = fadd fast float %1013, %889
  %1017 = fadd fast float %934, %898
  %1018 = fsub fast float %1017, %951
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fsub fast float %1019, %898
  %1021 = fmul fast float %1020, %912
  %1022 = fadd fast float %1021, %898
  br label %1076

; <label>:1023                                    ; preds = %911
  %1024 = and i32 %914, 134217728
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1060, label %1026

; <label>:1026                                    ; preds = %1023
  %1027 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %1028 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1029 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1030 = fadd fast float %1027, -5.000000e-01
  %1031 = fadd fast float %1028, -5.000000e-01
  %1032 = fadd fast float %1029, -5.000000e-01
  %1033 = fmul fast float %1030, %912
  %1034 = fmul fast float %1031, %912
  %1035 = fmul fast float %1032, %912
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %1040 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %1041 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %1042 = fmul fast float %1036, 2.000000e+00
  %1043 = fsub fast float 1.000000e+00, %1042
  %1044 = fmul fast float %1043, %1039
  %1045 = fadd fast float %1044, %1042
  %1046 = fmul fast float %1045, %1039
  %1047 = fmul fast float %1037, 2.000000e+00
  %1048 = fsub fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1040
  %1050 = fadd fast float %1049, %1047
  %1051 = fmul fast float %1050, %1040
  %1052 = fmul fast float %1038, 2.000000e+00
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1053, %1041
  %1055 = fadd fast float %1054, %1052
  %1056 = fmul fast float %1055, %1041
  %1057 = fmul fast float %1046, %1046
  %1058 = fmul fast float %1051, %1051
  %1059 = fmul fast float %1056, %1056
  br label %1076

; <label>:1060                                    ; preds = %1023
  %1061 = fmul fast float %283, %283
  %1062 = fmul fast float %287, %287
  %1063 = fmul fast float %291, %291
  %1064 = fadd fast float %1061, -1.000000e+00
  %1065 = fadd fast float %1062, -1.000000e+00
  %1066 = fadd fast float %1063, -1.000000e+00
  %1067 = fmul fast float %912, %1064
  %1068 = fmul fast float %912, %1065
  %1069 = fmul fast float %912, %1066
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fadd fast float %1068, 1.000000e+00
  %1072 = fadd fast float %1069, 1.000000e+00
  %1073 = fmul fast float %1070, %887
  %1074 = fmul fast float %1071, %888
  %1075 = fmul fast float %1072, %889
  br label %1076

; <label>:1076                                    ; preds = %1060, %1026, %917, %872
  %1077 = phi float [ %1022, %917 ], [ %898, %1026 ], [ %898, %1060 ], [ 0x3FA23C0BE0000000, %872 ]
  %1078 = phi float [ %1014, %917 ], [ %1057, %1026 ], [ %1073, %1060 ], [ 1.000000e+00, %872 ]
  %1079 = phi float [ %1015, %917 ], [ %1058, %1026 ], [ %1074, %1060 ], [ 1.000000e+00, %872 ]
  %1080 = phi float [ %1016, %917 ], [ %1059, %1026 ], [ %1075, %1060 ], [ 1.000000e+00, %872 ]
  %1081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.i32 %1081, 1
  %1083 = and i32 %1082, 1
  %1084 = icmp ne i32 %1083, 0
  %1085 = add i32 %52, 356
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 32
  %1089 = icmp ne i32 %1088, 0
  %1090 = and i1 %1084, %1089
  %1091 = select i1 %1090, float 1.000000e+00, float %1078
  %1092 = select i1 %1090, float 0x3FD3333340000000, float %1079
  %1093 = select i1 %1090, float 0x3FD3333340000000, float %1080
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 32
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1170, label %1098

; <label>:1098                                    ; preds = %1076
  %1099 = add i32 %52, 92
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %52, 424
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = and i32 %1101, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = lshr i32 %1101, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = lshr i32 %1101, 16
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101000000000
  %1121 = fmul fast float %1108, %1113
  %1122 = fadd fast float %1121, %1116
  %1123 = fmul fast float %1122, 0x3F70101000000000
  %1124 = fadd fast float %1109, -5.000000e-01
  %1125 = fadd fast float %1111, -5.000000e-01
  %1126 = fmul fast float %1124, %1120
  %1127 = fmul fast float %1125, %1120
  %1128 = fadd fast float %1126, 5.000000e-01
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = fmul fast float %1128, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fmul fast float %1129, 2.000000e+00
  %1133 = fadd fast float %1132, -1.000000e+00
  %1134 = fadd fast float %1131, %1133
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = fsub fast float %1131, %1133
  %1137 = fmul fast float %1136, 5.000000e-01
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float 1.000000e+00, %1138
  %1140 = call float @dx.op.unary.f32(i32 6, float %1137)  ; FAbs(value)
  %1141 = fsub fast float %1139, %1140
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1135, float %1137, float %1141, float %1135, float %1137, float %1141)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call float @dx.op.unary.f32(i32 25, float %1142)  ; Rsqrt(value)
  %1144 = fmul fast float %1135, %1143
  %1145 = fmul fast float %1137, %1143
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 67108864
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1166, label %1150

; <label>:1150                                    ; preds = %1098
  %1151 = add i32 %52, 280
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 65535
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = lshr i32 %1153, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fsub fast float %1123, %1161
  %1163 = fmul fast float %1162, %1155
  %1164 = fadd fast float %1163, %1159
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  br label %1166

; <label>:1166                                    ; preds = %1150, %1098
  %1167 = phi float [ %1165, %1150 ], [ %1123, %1098 ]
  %1168 = call float @dx.op.dot2.f32(i32 54, float %1144, float %1145, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1144, float %1145, float %706, float %707)  ; Dot2(ax,ay,bx,by)
  br label %1170

; <label>:1170                                    ; preds = %1166, %1076
  %1171 = phi float [ %1167, %1166 ], [ 0x3FD6666660000000, %1076 ]
  %1172 = phi float [ %1168, %1166 ], [ 0.000000e+00, %1076 ]
  %1173 = phi float [ %1169, %1166 ], [ 0.000000e+00, %1076 ]
  %1174 = phi float [ %1110, %1166 ], [ 1.000000e+00, %1076 ]
  %1175 = add i32 %52, 160
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 22
  %1179 = shl nuw nsw i32 %1178, 5
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 64
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1218, label %1185

; <label>:1185                                    ; preds = %1170
  %1186 = add i32 %52, 440
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %1188, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 131072
  %1194 = icmp eq i32 %1193, 0
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1190, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = fmul fast float %1196, %271
  %1200 = fmul fast float %1197, %274
  %1201 = fmul fast float %1198, %277
  br i1 %1194, label %1208, label %1202

; <label>:1202                                    ; preds = %1185
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = fmul fast float %1204, %1199
  %1206 = fmul fast float %1204, %1200
  %1207 = fmul fast float %1204, %1201
  br label %1208

; <label>:1208                                    ; preds = %1202, %1185
  %1209 = phi float [ %1205, %1202 ], [ %1199, %1185 ]
  %1210 = phi float [ %1206, %1202 ], [ %1200, %1185 ]
  %1211 = phi float [ %1207, %1202 ], [ %1201, %1185 ]
  %1212 = fmul fast float %1209, %1180
  %1213 = select i1 %254, float %1212, float %1209
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1213, float %1210, float %1211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = select i1 %254, float 0.000000e+00, float %1209
  %1216 = select i1 %254, float %1214, float %1210
  %1217 = select i1 %254, float 0.000000e+00, float %1211
  br label %1218

; <label>:1218                                    ; preds = %1208, %1170
  %1219 = phi float [ %1215, %1208 ], [ 0.000000e+00, %1170 ]
  %1220 = phi float [ %1216, %1208 ], [ 0.000000e+00, %1170 ]
  %1221 = phi float [ %1217, %1208 ], [ 0.000000e+00, %1170 ]
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 1024
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1256, label %1226

; <label>:1226                                    ; preds = %1218
  %1227 = add i32 %52, 152
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1229, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1229, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = fmul fast float %1232, %1232
  %1242 = fmul fast float %1236, %1236
  %1243 = fmul fast float %1240, %1240
  %1244 = add i32 %52, 508
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %106, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = fmul fast float %1241, %1250
  %1254 = fmul fast float %1242, %1251
  %1255 = fmul fast float %1243, %1252
  br label %1256

; <label>:1256                                    ; preds = %1226, %1218
  %1257 = phi float [ %1253, %1226 ], [ 0.000000e+00, %1218 ]
  %1258 = phi float [ %1254, %1226 ], [ 0.000000e+00, %1218 ]
  %1259 = phi float [ %1255, %1226 ], [ 0.000000e+00, %1218 ]
  %1260 = fcmp fast ogt float %1257, 0.000000e+00
  %1261 = fcmp fast ogt float %1258, 0.000000e+00
  %1262 = fcmp fast ogt float %1259, 0.000000e+00
  %1263 = call float @dx.op.unary.f32(i32 23, float %1257)  ; Log(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %1258)  ; Log(value)
  %1265 = call float @dx.op.unary.f32(i32 23, float %1259)  ; Log(value)
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 7
  %1269 = and i32 %1268, 32752
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = fmul fast float %1263, 0xBFE62E4300000000
  %1272 = fmul fast float %1271, %1270
  %1273 = fmul fast float %1264, 0xBFE62E4300000000
  %1274 = fmul fast float %1273, %1270
  %1275 = fmul fast float %1265, 0xBFE62E4300000000
  %1276 = fmul fast float %1275, %1270
  %1277 = select i1 %1260, float %1272, float 1.270000e+02
  %1278 = select i1 %1261, float %1274, float 1.270000e+02
  %1279 = select i1 %1262, float %1276, float 1.270000e+02
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 14336
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1343, label %1284

; <label>:1284                                    ; preds = %1256
  %1285 = add i32 %52, 524
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = add i32 %1287, 0
  %1289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1289, %dx.types.Handle %106, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 3
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 1048576
  %1297 = icmp ne i32 %1296, 0
  %1298 = select i1 %1297, float 1.000000e+00, float %1292
  %1299 = and i32 %1295, 8192
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1315, label %1301

; <label>:1301                                    ; preds = %1284
  %1302 = select i1 %1297, float %1292, float %1291
  %1303 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1304 = select i1 %1297, float %1303, float %1291
  %1305 = add i32 %52, 96
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = lshr i32 %1307, 16
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F80101020000000
  %1312 = fmul fast float %1311, %1304
  %1313 = fmul fast float %1311, %1291
  %1314 = fmul fast float %1311, %1302
  br label %1315

; <label>:1315                                    ; preds = %1301, %1284
  %1316 = phi float [ %1312, %1301 ], [ 0.000000e+00, %1284 ]
  %1317 = phi float [ %1313, %1301 ], [ 0.000000e+00, %1284 ]
  %1318 = phi float [ %1314, %1301 ], [ 0.000000e+00, %1284 ]
  %1319 = and i32 %1295, 2048
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1329, label %1321

; <label>:1321                                    ; preds = %1315
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = shl i32 %1323, 4
  %1325 = and i32 %1324, 32752
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = fmul fast float %1326, %1293
  %1328 = call float @dx.op.binary.f32(i32 35, float %1327, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1329

; <label>:1329                                    ; preds = %1321, %1315
  %1330 = phi float [ %1328, %1321 ], [ 0x3F70101020000000, %1315 ]
  %1331 = and i32 %1295, 4096
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1343, label %1333

; <label>:1333                                    ; preds = %1329
  %1334 = add i32 %52, 164
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 65535
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = lshr i32 %1336, 16
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = fmul fast float %1338, %1298
  %1342 = fadd fast float %1341, %1340
  br label %1343

; <label>:1343                                    ; preds = %1333, %1329, %1256, %686
  %1344 = phi float [ 0.000000e+00, %686 ], [ %1172, %1329 ], [ %1172, %1256 ], [ %1172, %1333 ]
  %1345 = phi float [ 0.000000e+00, %686 ], [ %1173, %1329 ], [ %1173, %1256 ], [ %1173, %1333 ]
  %1346 = phi float [ 0.000000e+00, %686 ], [ %1091, %1329 ], [ %1091, %1256 ], [ %1091, %1333 ]
  %1347 = phi float [ 0.000000e+00, %686 ], [ %1092, %1329 ], [ %1092, %1256 ], [ %1092, %1333 ]
  %1348 = phi float [ 0.000000e+00, %686 ], [ %1093, %1329 ], [ %1093, %1256 ], [ %1093, %1333 ]
  %1349 = phi float [ 0.000000e+00, %686 ], [ %1219, %1329 ], [ %1219, %1256 ], [ %1219, %1333 ]
  %1350 = phi float [ 0.000000e+00, %686 ], [ %1220, %1329 ], [ %1220, %1256 ], [ %1220, %1333 ]
  %1351 = phi float [ 0.000000e+00, %686 ], [ %1221, %1329 ], [ %1221, %1256 ], [ %1221, %1333 ]
  %1352 = phi float [ 0.000000e+00, %686 ], [ %1316, %1329 ], [ 0.000000e+00, %1256 ], [ %1316, %1333 ]
  %1353 = phi float [ 0.000000e+00, %686 ], [ %1317, %1329 ], [ 0.000000e+00, %1256 ], [ %1317, %1333 ]
  %1354 = phi float [ 0.000000e+00, %686 ], [ %1318, %1329 ], [ 0.000000e+00, %1256 ], [ %1318, %1333 ]
  %1355 = phi float [ 0.000000e+00, %686 ], [ %1277, %1329 ], [ %1277, %1256 ], [ %1277, %1333 ]
  %1356 = phi float [ 0.000000e+00, %686 ], [ %1278, %1329 ], [ %1278, %1256 ], [ %1278, %1333 ]
  %1357 = phi float [ 0.000000e+00, %686 ], [ %1279, %1329 ], [ %1279, %1256 ], [ %1279, %1333 ]
  %1358 = phi float [ 0.000000e+00, %686 ], [ %1077, %1329 ], [ %1077, %1256 ], [ %1077, %1333 ]
  %1359 = phi float [ 0.000000e+00, %686 ], [ %873, %1329 ], [ %873, %1256 ], [ %873, %1333 ]
  %1360 = phi float [ 0.000000e+00, %686 ], [ %1171, %1329 ], [ %1171, %1256 ], [ %1171, %1333 ]
  %1361 = phi float [ 0.000000e+00, %686 ], [ %1174, %1329 ], [ %1174, %1256 ], [ %1174, %1333 ]
  %1362 = phi float [ 0.000000e+00, %686 ], [ %1330, %1329 ], [ 0x3F70101020000000, %1256 ], [ %1330, %1333 ]
  %1363 = phi float [ 0.000000e+00, %686 ], [ 0.000000e+00, %1329 ], [ 0.000000e+00, %1256 ], [ %1342, %1333 ]
  br i1 %634, label %2295, label %1364

; <label>:1364                                    ; preds = %1343
  %1365 = icmp ult i32 %692, 2
  %1366 = add i32 %52, 40
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %52, 44
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = or i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %2295, label %1374

; <label>:1374                                    ; preds = %1364
  %1375 = and i32 %1368, 262144
  %1376 = icmp ne i32 %1375, 0
  %1377 = select i1 %1376, float %59, float 1.000000e+00
  %1378 = select i1 %1376, float %60, float 0.000000e+00
  %1379 = select i1 %1376, float %61, float 0.000000e+00
  %1380 = select i1 %1376, float %62, float 1.000000e+00
  %1381 = select i1 %1376, float %63, float %91
  %1382 = select i1 %1376, float %64, float %92
  %1383 = add i32 %52, 300
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = lshr i32 %1385, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = fmul fast float %1387, 0x3F50624DE0000000
  %1389 = add i32 %52, 104
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = lshr i32 %1391, 16
  %1393 = and i32 %1392, 255
  %1394 = lshr i32 %1391, 24
  %1395 = add i32 %52, 308
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 65535
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = lshr i32 %1397, 16
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = add i32 %52, 48
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 22
  %1406 = shl nuw nsw i32 %1405, 5
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = shl i32 %1404, 4
  %1409 = and i32 %1408, 32752
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = lshr i32 %1404, 7
  %1412 = and i32 %1411, 32752
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1416 = fmul fast float %1415, 1.000000e+03
  %1417 = fmul fast float %1416, %413
  %1418 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1419 = fadd fast float %1418, %401
  %1420 = fmul fast float %1416, %415
  %1421 = call float @dx.op.unary.f32(i32 22, float %1420)  ; Frc(value)
  %1422 = fadd fast float %1421, %402
  %1423 = fmul fast float %1388, %1416
  %1424 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1425 = fmul fast float %1424, 0x401921FB60000000
  %1426 = fadd fast float %1425, %1407
  %1427 = call float @dx.op.unary.f32(i32 13, float %1426)  ; Sin(value)
  %1428 = call float @dx.op.unary.f32(i32 12, float %1426)  ; Cos(value)
  %1429 = fsub fast float -0.000000e+00, %1427
  %1430 = fadd fast float %1381, -5.000000e-01
  %1431 = fadd fast float %1382, -5.000000e-01
  %1432 = fmul fast float %1399, %1430
  %1433 = fmul fast float %1401, %1431
  %1434 = fadd fast float %1432, 5.000000e-01
  %1435 = fadd fast float %1433, 5.000000e-01
  %1436 = fmul fast float %1410, %1434
  %1437 = fmul fast float %1413, %1435
  %1438 = fmul fast float %1428, %1436
  %1439 = call float @dx.op.tertiary.f32(i32 46, float %1429, float %1437, float %1438)  ; FMad(a,b,c)
  %1440 = fmul fast float %1427, %1436
  %1441 = call float @dx.op.tertiary.f32(i32 46, float %1428, float %1437, float %1440)  ; FMad(a,b,c)
  %1442 = fadd fast float %1419, %1439
  %1443 = fadd fast float %1422, %1441
  %1444 = icmp ugt i32 %1393, 1
  %1445 = icmp ugt i32 %1391, 33554431
  %1446 = or i1 %1445, %1444
  br i1 %1446, label %1447, label %1472

; <label>:1447                                    ; preds = %1374
  %1448 = add i32 %52, 244
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = lshr i32 %1450, 16
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = fmul fast float %1415, %1452
  %1454 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1455 = mul nuw nsw i32 %1393, %1394
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1454, %1456
  %1458 = call float @dx.op.unary.f32(i32 27, float %1457)  ; Round_ni(value)
  %1459 = fptoui float %1458 to i32
  %1460 = urem i32 %1459, %1393
  %1461 = udiv i32 %1459, %1394
  %1462 = call float @dx.op.unary.f32(i32 22, float %1442)  ; Frc(value)
  %1463 = call float @dx.op.unary.f32(i32 22, float %1443)  ; Frc(value)
  %1464 = uitofp i32 %1460 to float
  %1465 = uitofp i32 %1461 to float
  %1466 = fadd fast float %1462, %1464
  %1467 = fadd fast float %1463, %1465
  %1468 = uitofp i32 %1393 to float
  %1469 = uitofp i32 %1394 to float
  %1470 = fdiv fast float %1466, %1468
  %1471 = fdiv fast float %1467, %1469
  br label %1472

; <label>:1472                                    ; preds = %1447, %1374
  %1473 = phi float [ %1470, %1447 ], [ %1442, %1374 ]
  %1474 = phi float [ %1471, %1447 ], [ %1443, %1374 ]
  %1475 = and i32 %1368, 256
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1523, label %1477

; <label>:1477                                    ; preds = %1472
  %1478 = add i32 %52, 476
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %106, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = add i32 %52, 116
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = shl i32 %1487, 4
  %1489 = and i32 %1488, 32752
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1487, 7
  %1492 = and i32 %1491, 32752
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float 1.000000e+00, %689
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1496 = bitcast float %689 to i32
  %1497 = sitofp i32 %1496 to float
  %1498 = fadd fast float %1497, 0xC1CFBF8940000000
  %1499 = fmul fast float %1493, %1498
  %1500 = fadd fast float %1499, 0x41CFBF8940000000
  %1501 = fptosi float %1500 to i32
  %1502 = bitcast i32 %1501 to float
  %1503 = bitcast float %1495 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fadd fast float %1504, 0xC1CFBF8940000000
  %1506 = fmul fast float %1505, %1493
  %1507 = fadd fast float %1506, 0x41CFBF8940000000
  %1508 = fptosi float %1507 to i32
  %1509 = bitcast i32 %1508 to float
  %1510 = fmul fast float %1502, %1490
  %1511 = fmul fast float %1509, %1490
  %1512 = fsub fast float %1495, %1510
  %1513 = fadd fast float %1511, %1495
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = fsub fast float %1484, %1514
  %1517 = fsub fast float %1515, %1514
  %1518 = bitcast float %1517 to i32
  %1519 = sub nsw i32 2129859010, %1518
  %1520 = bitcast i32 %1519 to float
  %1521 = fmul fast float %1520, %1516
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  br label %1523

; <label>:1523                                    ; preds = %1477, %1472
  %1524 = phi float [ %1522, %1477 ], [ %689, %1472 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 128
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1545, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %52, 460
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %106, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 524288
  %1540 = icmp ne i32 %1539, 0
  %1541 = fcmp fast ogt float %1536, 0x3FE0101020000000
  %1542 = select i1 %1541, float 1.000000e+00, float 0.000000e+00
  %1543 = select i1 %1540, float %1542, float %1536
  %1544 = fmul fast float %1543, %1524
  br label %1545

; <label>:1545                                    ; preds = %1529, %1523
  %1546 = phi float [ %1544, %1529 ], [ %1524, %1523 ]
  %1547 = fcmp fast ult float %1546, 0x3F70101020000000
  br i1 %1547, label %2295, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 16
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1751, label %1553

; <label>:1553                                    ; preds = %1548
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %52, 412
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %105, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = and i32 %1555, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1555, 8
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1565, %1567
  %1572 = fadd fast float %1571, %1570
  %1573 = fmul fast float %1572, 0x3F70101000000000
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 512
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1586, label %1578

; <label>:1578                                    ; preds = %1553
  %1579 = add i32 %52, 496
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %1581, 0
  %1583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1583, %dx.types.Handle %106, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  br label %1586

; <label>:1586                                    ; preds = %1578, %1553
  %1587 = phi float [ %1585, %1578 ], [ 1.000000e+00, %1553 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 33554432
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1698, label %1592

; <label>:1592                                    ; preds = %1586
  %1593 = add i32 %52, 240
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1595, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = add i32 %52, 244
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 24
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = and i32 %1606, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = lshr i32 %1606, 8
  %1614 = and i32 %1613, 255
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = lshr i32 %1606, 16
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F70101020000000
  %1621 = add i32 %52, 236
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = lshr i32 %1623, 24
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = and i32 %1623, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1623, 8
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1623, 16
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = bitcast float %1562 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1562, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1562
  %1647 = fmul fast float %1646, %1645
  %1648 = bitcast float %1563 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1563, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1563
  %1657 = fmul fast float %1656, %1655
  %1658 = bitcast float %1564 to i32
  %1659 = ashr i32 %1658, 1
  %1660 = sub nsw i32 1597463174, %1659
  %1661 = bitcast i32 %1660 to float
  %1662 = fmul fast float %1564, 5.000000e-01
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float 1.500000e+00, %1664
  %1666 = fmul fast float %1661, %1564
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float %1647, %1629
  %1669 = fsub fast float %1657, %1633
  %1670 = fsub fast float %1667, %1637
  %1671 = fmul fast float %1668, %1597
  %1672 = fmul fast float %1669, %1599
  %1673 = fmul fast float %1670, %1604
  %1674 = fadd fast float %1671, %1612
  %1675 = fadd fast float %1672, %1616
  %1676 = fadd fast float %1673, %1620
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fmul fast float %1683, %1587
  %1687 = fmul fast float %1684, %1587
  %1688 = fmul fast float %1685, %1587
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1609, %1573
  %1693 = fsub fast float %1692, %1626
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fsub fast float %1694, %1573
  %1696 = fmul fast float %1695, %1587
  %1697 = fadd fast float %1696, %1573
  br label %1751

; <label>:1698                                    ; preds = %1586
  %1699 = and i32 %1589, 134217728
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1735, label %1701

; <label>:1701                                    ; preds = %1698
  %1702 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fmul fast float %1705, %1587
  %1709 = fmul fast float %1706, %1587
  %1710 = fmul fast float %1707, %1587
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = fmul fast float %1711, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1714
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1714
  %1722 = fmul fast float %1712, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1715
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1715
  %1727 = fmul fast float %1713, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1716
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1716
  %1732 = fmul fast float %1721, %1721
  %1733 = fmul fast float %1726, %1726
  %1734 = fmul fast float %1731, %1731
  br label %1751

; <label>:1735                                    ; preds = %1698
  %1736 = fmul fast float %389, %389
  %1737 = fmul fast float %390, %390
  %1738 = fmul fast float %391, %391
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fmul fast float %1587, %1739
  %1743 = fmul fast float %1587, %1740
  %1744 = fmul fast float %1587, %1741
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  br label %1751

; <label>:1751                                    ; preds = %1735, %1701, %1592, %1548
  %1752 = phi float [ %1697, %1592 ], [ %1573, %1701 ], [ %1573, %1735 ], [ 0x3FA23C0BE0000000, %1548 ]
  %1753 = phi float [ %1689, %1592 ], [ %1732, %1701 ], [ %1748, %1735 ], [ 1.000000e+00, %1548 ]
  %1754 = phi float [ %1690, %1592 ], [ %1733, %1701 ], [ %1749, %1735 ], [ 1.000000e+00, %1548 ]
  %1755 = phi float [ %1691, %1592 ], [ %1734, %1701 ], [ %1750, %1735 ], [ 1.000000e+00, %1548 ]
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1758 = and i32 %1757, 1
  %1759 = icmp ne i32 %1758, 0
  %1760 = add i32 %52, 356
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp ne i32 %1763, 0
  %1765 = and i1 %1759, %1764
  %1766 = select i1 %1765, float 1.000000e+00, float %1753
  %1767 = select i1 %1765, float 0x3FD3333340000000, float %1754
  %1768 = select i1 %1765, float 0x3FD3333340000000, float %1755
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 32
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1845, label %1773

; <label>:1773                                    ; preds = %1751
  %1774 = add i32 %52, 108
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %52, 428
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %1779, 0
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1781, %dx.types.Handle %105, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = and i32 %1776, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1776, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1776, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101000000000
  %1796 = fmul fast float %1783, %1788
  %1797 = fadd fast float %1796, %1791
  %1798 = fmul fast float %1797, 0x3F70101000000000
  %1799 = fadd fast float %1784, -5.000000e-01
  %1800 = fadd fast float %1786, -5.000000e-01
  %1801 = fmul fast float %1799, %1795
  %1802 = fmul fast float %1800, %1795
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fmul fast float %1803, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fadd fast float %1807, -1.000000e+00
  %1809 = fadd fast float %1806, %1808
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = fsub fast float %1806, %1808
  %1812 = fmul fast float %1811, 5.000000e-01
  %1813 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1816 = fsub fast float %1814, %1815
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1812, float %1816, float %1810, float %1812, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 25, float %1817)  ; Rsqrt(value)
  %1819 = fmul fast float %1810, %1818
  %1820 = fmul fast float %1812, %1818
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 67108864
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1841, label %1825

; <label>:1825                                    ; preds = %1773
  %1826 = add i32 %52, 296
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fsub fast float %1798, %1836
  %1838 = fmul fast float %1837, %1830
  %1839 = fadd fast float %1838, %1834
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  br label %1841

; <label>:1841                                    ; preds = %1825, %1773
  %1842 = phi float [ %1840, %1825 ], [ %1798, %1773 ]
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1377, float %1378)  ; Dot2(ax,ay,bx,by)
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1379, float %1380)  ; Dot2(ax,ay,bx,by)
  br label %1845

; <label>:1845                                    ; preds = %1841, %1751
  %1846 = phi float [ %1842, %1841 ], [ 0x3FD6666660000000, %1751 ]
  %1847 = phi float [ %1843, %1841 ], [ 0.000000e+00, %1751 ]
  %1848 = phi float [ %1844, %1841 ], [ 0.000000e+00, %1751 ]
  %1849 = phi float [ %1785, %1841 ], [ 1.000000e+00, %1751 ]
  %1850 = add i32 %52, 176
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = lshr i32 %1852, 22
  %1854 = shl nuw nsw i32 %1853, 5
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 64
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1893, label %1860

; <label>:1860                                    ; preds = %1845
  %1861 = add i32 %52, 444
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1863, 0
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 131072
  %1869 = icmp eq i32 %1868, 0
  %1870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1865, %dx.types.Handle %105, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = fmul fast float %372, %1871
  %1875 = fmul fast float %373, %1872
  %1876 = fmul fast float %374, %1873
  br i1 %1869, label %1883, label %1877

; <label>:1877                                    ; preds = %1860
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fmul fast float %1879, %1874
  %1881 = fmul fast float %1879, %1875
  %1882 = fmul fast float %1879, %1876
  br label %1883

; <label>:1883                                    ; preds = %1877, %1860
  %1884 = phi float [ %1880, %1877 ], [ %1874, %1860 ]
  %1885 = phi float [ %1881, %1877 ], [ %1875, %1860 ]
  %1886 = phi float [ %1882, %1877 ], [ %1876, %1860 ]
  %1887 = fmul fast float %1884, %1855
  %1888 = select i1 %254, float %1887, float %1884
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = select i1 %254, float 0.000000e+00, float %1884
  %1891 = select i1 %254, float %1889, float %1885
  %1892 = select i1 %254, float 0.000000e+00, float %1886
  br label %1893

; <label>:1893                                    ; preds = %1883, %1845
  %1894 = phi float [ %1890, %1883 ], [ 0.000000e+00, %1845 ]
  %1895 = phi float [ %1891, %1883 ], [ 0.000000e+00, %1845 ]
  %1896 = phi float [ %1892, %1883 ], [ 0.000000e+00, %1845 ]
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 1024
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1931, label %1901

; <label>:1901                                    ; preds = %1893
  %1902 = add i32 %52, 168
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1904, 8
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = lshr i32 %1904, 16
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = fmul fast float %1907, %1907
  %1917 = fmul fast float %1911, %1911
  %1918 = fmul fast float %1915, %1915
  %1919 = add i32 %52, 512
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %106, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  br label %1931

; <label>:1931                                    ; preds = %1901, %1893
  %1932 = phi float [ %1928, %1901 ], [ 0.000000e+00, %1893 ]
  %1933 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1893 ]
  %1934 = phi float [ %1930, %1901 ], [ 0.000000e+00, %1893 ]
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fmul fast float %1938, 0xBFE62E4300000000
  %1947 = fmul fast float %1946, %1945
  %1948 = fmul fast float %1939, 0xBFE62E4300000000
  %1949 = fmul fast float %1948, %1945
  %1950 = fmul fast float %1940, 0xBFE62E4300000000
  %1951 = fmul fast float %1950, %1945
  %1952 = select i1 %1935, float %1947, float 1.270000e+02
  %1953 = select i1 %1936, float %1949, float 1.270000e+02
  %1954 = select i1 %1937, float %1951, float 1.270000e+02
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 14336
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2018, label %1959

; <label>:1959                                    ; preds = %1931
  %1960 = add i32 %52, 528
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %106, float %1473, float %1474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 3
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 1048576
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float 1.000000e+00, float %1967
  %1974 = and i32 %1970, 8192
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1990, label %1976

; <label>:1976                                    ; preds = %1959
  %1977 = select i1 %1972, float %1967, float %1966
  %1978 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1979 = select i1 %1972, float %1978, float %1966
  %1980 = add i32 %52, 112
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = lshr i32 %1982, 16
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F80101020000000
  %1987 = fmul fast float %1986, %1979
  %1988 = fmul fast float %1986, %1966
  %1989 = fmul fast float %1986, %1977
  br label %1990

; <label>:1990                                    ; preds = %1976, %1959
  %1991 = phi float [ %1987, %1976 ], [ 0.000000e+00, %1959 ]
  %1992 = phi float [ %1988, %1976 ], [ 0.000000e+00, %1959 ]
  %1993 = phi float [ %1989, %1976 ], [ 0.000000e+00, %1959 ]
  %1994 = and i32 %1970, 2048
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2004, label %1996

; <label>:1996                                    ; preds = %1990
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fmul fast float %2001, %1968
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1996, %1990
  %2005 = phi float [ %2003, %1996 ], [ 0x3F70101020000000, %1990 ]
  %2006 = and i32 %1970, 4096
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2018, label %2008

; <label>:2008                                    ; preds = %2004
  %2009 = add i32 %52, 180
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 65535
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = lshr i32 %2011, 16
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = fmul fast float %2013, %1973
  %2017 = fadd fast float %2016, %2015
  br label %2018

; <label>:2018                                    ; preds = %2008, %2004, %1931
  %2019 = phi float [ %1991, %2008 ], [ %1991, %2004 ], [ 0.000000e+00, %1931 ]
  %2020 = phi float [ %1992, %2008 ], [ %1992, %2004 ], [ 0.000000e+00, %1931 ]
  %2021 = phi float [ %1993, %2008 ], [ %1993, %2004 ], [ 0.000000e+00, %1931 ]
  %2022 = phi float [ %2005, %2008 ], [ %2005, %2004 ], [ 0x3F70101020000000, %1931 ]
  %2023 = phi float [ %2017, %2008 ], [ 0.000000e+00, %2004 ], [ 0.000000e+00, %1931 ]
  br i1 %1365, label %2024, label %2059

; <label>:2024                                    ; preds = %2018
  %2025 = fmul fast float %2022, 2.000000e+00
  %2026 = fcmp fast olt float %1952, 1.270000e+02
  %2027 = fcmp fast olt float %1953, 1.270000e+02
  %2028 = fcmp fast olt float %1954, 1.270000e+02
  %2029 = fmul fast float %1952, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2025
  %2031 = fmul fast float %1953, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2025
  %2033 = fmul fast float %1954, 0xBFF7154760000000
  %2034 = fmul fast float %2033, %2025
  %2035 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2037 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2039 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = fadd fast float %2038, -1.000000e+00
  %2042 = select i1 %2026, float %2041, float -1.000000e+00
  %2043 = fadd fast float %2039, -1.000000e+00
  %2044 = select i1 %2027, float %2043, float -1.000000e+00
  %2045 = fadd fast float %2040, -1.000000e+00
  %2046 = select i1 %2028, float %2045, float -1.000000e+00
  %2047 = fmul fast float %2042, %1546
  %2048 = fmul fast float %2044, %1546
  %2049 = fmul fast float %2046, %1546
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fadd fast float %2048, 1.000000e+00
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fmul fast float %2050, %1346
  %2054 = fmul fast float %2051, %1347
  %2055 = fmul fast float %2052, %1348
  %2056 = fmul fast float %2050, %1349
  %2057 = fmul fast float %2051, %1350
  %2058 = fmul fast float %2052, %1351
  br label %2059

; <label>:2059                                    ; preds = %2024, %2018
  %2060 = phi float [ %2053, %2024 ], [ %1346, %2018 ]
  %2061 = phi float [ %2054, %2024 ], [ %1347, %2018 ]
  %2062 = phi float [ %2055, %2024 ], [ %1348, %2018 ]
  %2063 = phi float [ %2056, %2024 ], [ %1349, %2018 ]
  %2064 = phi float [ %2057, %2024 ], [ %1350, %2018 ]
  %2065 = phi float [ %2058, %2024 ], [ %1351, %2018 ]
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 3
  %2069 = icmp eq i32 %2068, 3
  br i1 %2069, label %2145, label %2070

; <label>:2070                                    ; preds = %2059
  %2071 = and i32 %2067, 16
  %2072 = icmp ne i32 %2071, 0
  %2073 = select i1 %2072, float %1546, float 0.000000e+00
  %2074 = icmp eq i32 %2068, 0
  br i1 %2074, label %2075, label %2100

; <label>:2075                                    ; preds = %2070
  %2076 = and i32 %2067, 64
  %2077 = icmp ne i32 %2076, 0
  %2078 = select i1 %2077, float %1546, float 0.000000e+00
  %2079 = fsub fast float %1766, %2060
  %2080 = fsub fast float %1767, %2061
  %2081 = fsub fast float %1768, %2062
  %2082 = fmul fast float %2073, %2079
  %2083 = fmul fast float %2073, %2080
  %2084 = fmul fast float %2073, %2081
  %2085 = fadd fast float %2082, %2060
  %2086 = fadd fast float %2083, %2061
  %2087 = fadd fast float %2084, %2062
  %2088 = fsub fast float %1752, %1358
  %2089 = fmul fast float %2073, %2088
  %2090 = fadd fast float %2089, %1358
  %2091 = fsub fast float %1894, %2063
  %2092 = fsub fast float %1895, %2064
  %2093 = fsub fast float %1896, %2065
  %2094 = fmul fast float %2078, %2091
  %2095 = fmul fast float %2078, %2092
  %2096 = fmul fast float %2078, %2093
  %2097 = fadd fast float %2094, %2063
  %2098 = fadd fast float %2095, %2064
  %2099 = fadd fast float %2096, %2065
  br label %2145

; <label>:2100                                    ; preds = %2070
  %2101 = icmp eq i32 %2068, 1
  br i1 %2101, label %2102, label %2115

; <label>:2102                                    ; preds = %2100
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fmul fast float %2073, %2103
  %2107 = fmul fast float %2073, %2104
  %2108 = fmul fast float %2073, %2105
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fmul fast float %2109, %2060
  %2113 = fmul fast float %2110, %2061
  %2114 = fmul fast float %2111, %2062
  br label %2145

; <label>:2115                                    ; preds = %2100
  %2116 = icmp eq i32 %2068, 2
  br i1 %2116, label %2117, label %2145

; <label>:2117                                    ; preds = %2115
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fmul fast float %2121, %2073
  %2125 = fmul fast float %2122, %2073
  %2126 = fmul fast float %2123, %2073
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fmul fast float %2127, 2.000000e+00
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %2131, %2060
  %2133 = fadd fast float %2132, %2130
  %2134 = fmul fast float %2133, %2060
  %2135 = fmul fast float %2128, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2061
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2061
  %2140 = fmul fast float %2129, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2062
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2062
  br label %2145

; <label>:2145                                    ; preds = %2117, %2115, %2102, %2075, %2059
  %2146 = phi float [ %2060, %2059 ], [ %2134, %2117 ], [ %2060, %2115 ], [ %2112, %2102 ], [ %2085, %2075 ]
  %2147 = phi float [ %2061, %2059 ], [ %2139, %2117 ], [ %2061, %2115 ], [ %2113, %2102 ], [ %2086, %2075 ]
  %2148 = phi float [ %2062, %2059 ], [ %2144, %2117 ], [ %2062, %2115 ], [ %2114, %2102 ], [ %2087, %2075 ]
  %2149 = phi float [ %2063, %2059 ], [ %2063, %2117 ], [ %2063, %2115 ], [ %2063, %2102 ], [ %2097, %2075 ]
  %2150 = phi float [ %2064, %2059 ], [ %2064, %2117 ], [ %2064, %2115 ], [ %2064, %2102 ], [ %2098, %2075 ]
  %2151 = phi float [ %2065, %2059 ], [ %2065, %2117 ], [ %2065, %2115 ], [ %2065, %2102 ], [ %2099, %2075 ]
  %2152 = phi float [ %1358, %2059 ], [ %1358, %2117 ], [ %1358, %2115 ], [ %1358, %2102 ], [ %2090, %2075 ]
  %2153 = and i32 %2067, 12
  %2154 = icmp eq i32 %2153, 12
  br i1 %2154, label %2295, label %2155

; <label>:2155                                    ; preds = %2145
  %2156 = and i32 %2067, 2097184
  %2157 = icmp eq i32 %2156, 2097184
  %2158 = select i1 %2157, float %1546, float 0.000000e+00
  %2159 = and i32 %2067, 4194336
  %2160 = icmp eq i32 %2159, 4194336
  %2161 = select i1 %2160, float %1546, float 0.000000e+00
  %2162 = and i32 %2067, 8388640
  %2163 = icmp eq i32 %2162, 8388640
  %2164 = select i1 %2163, float %1546, float 0.000000e+00
  %2165 = and i32 %2067, 1024
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2166, float %1546, float 0.000000e+00
  %2168 = and i32 %2067, 2048
  %2169 = icmp ne i32 %2168, 0
  %2170 = select i1 %2169, float %1546, float 0.000000e+00
  %2171 = and i32 %2067, 4096
  %2172 = icmp ne i32 %2171, 0
  %2173 = select i1 %2172, float %1546, float 0.000000e+00
  %2174 = and i32 %2067, 8192
  %2175 = icmp ne i32 %2174, 0
  %2176 = select i1 %2175, float %1546, float 0.000000e+00
  %2177 = icmp eq i32 %2153, 0
  br i1 %2177, label %2178, label %2215

; <label>:2178                                    ; preds = %2155
  %2179 = fsub fast float %1847, %1344
  %2180 = fsub fast float %1848, %1345
  %2181 = fmul fast float %2158, %2179
  %2182 = fmul fast float %2158, %2180
  %2183 = fadd fast float %2181, %1344
  %2184 = fadd fast float %2182, %1345
  %2185 = fsub fast float %1849, %1361
  %2186 = fmul fast float %2161, %2185
  %2187 = fadd fast float %2186, %1361
  %2188 = fsub fast float %1846, %1360
  %2189 = fmul fast float %2164, %2188
  %2190 = fadd fast float %2189, %1360
  %2191 = fsub fast float %1952, %1355
  %2192 = fsub fast float %1953, %1356
  %2193 = fsub fast float %1954, %1357
  %2194 = fmul fast float %2167, %2191
  %2195 = fmul fast float %2167, %2192
  %2196 = fmul fast float %2167, %2193
  %2197 = fadd fast float %2194, %1355
  %2198 = fadd fast float %2195, %1356
  %2199 = fadd fast float %2196, %1357
  %2200 = fsub fast float %2022, %1362
  %2201 = fmul fast float %2170, %2200
  %2202 = fadd fast float %2201, %1362
  %2203 = fsub fast float %2023, %1363
  %2204 = fmul fast float %2173, %2203
  %2205 = fadd fast float %2204, %1363
  %2206 = fsub fast float %2019, %1352
  %2207 = fsub fast float %2020, %1353
  %2208 = fsub fast float %2021, %1354
  %2209 = fmul fast float %2176, %2206
  %2210 = fmul fast float %2176, %2207
  %2211 = fmul fast float %2176, %2208
  %2212 = fadd fast float %2209, %1352
  %2213 = fadd fast float %2210, %1353
  %2214 = fadd fast float %2211, %1354
  br label %2295

; <label>:2215                                    ; preds = %2155
  %2216 = icmp eq i32 %2153, 4
  br i1 %2216, label %2217, label %2265

; <label>:2217                                    ; preds = %2215
  %2218 = fmul fast float %2158, %1847
  %2219 = fmul fast float %2158, %1848
  %2220 = fadd fast float %2218, %1344
  %2221 = fadd fast float %2219, %1345
  %2222 = call float @dx.op.binary.f32(i32 36, float %1361, float %1849)  ; FMin(a,b)
  %2223 = fsub fast float %2222, %1361
  %2224 = fmul fast float %2223, %2161
  %2225 = fadd fast float %2224, %1361
  %2226 = fadd fast float %1846, %1360
  %2227 = fmul fast float %2226, 0x3FF337FAE0000000
  %2228 = fmul fast float %1360, %1360
  %2229 = fmul fast float %1846, %1846
  %2230 = fadd fast float %2229, %2228
  %2231 = fmul fast float %2230, 0x3FE5152B00000000
  %2232 = fmul fast float %1360, 0xBFCC1F85E0000000
  %2233 = fmul fast float %2232, %1846
  %2234 = fadd fast float %2233, 0xBFE1363700000000
  %2235 = fadd fast float %2234, %2227
  %2236 = fsub fast float %2235, %2231
  %2237 = fmul fast float %2226, 0x3FBA6F0D00000000
  %2238 = fmul fast float %2230, 0x3FD0432880000000
  %2239 = fmul fast float %1360, 0xBFEF110800000000
  %2240 = fmul fast float %2239, %1846
  %2241 = fadd fast float %2240, 1.000000e+00
  %2242 = fsub fast float %2241, %2237
  %2243 = fadd fast float %2242, %2238
  %2244 = fdiv fast float %2236, %2243
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float %2245, %1360
  %2247 = fmul fast float %2246, %2164
  %2248 = fadd fast float %2247, %1360
  %2249 = fmul fast float %2167, %1952
  %2250 = fmul fast float %2167, %1953
  %2251 = fmul fast float %2167, %1954
  %2252 = fadd fast float %2249, %1355
  %2253 = fadd fast float %2250, %1356
  %2254 = fadd fast float %2251, %1357
  %2255 = fmul fast float %2170, %2022
  %2256 = fadd fast float %2255, %1362
  %2257 = fmul fast float %2173, %2023
  %2258 = fadd fast float %2257, %1363
  %2259 = fmul fast float %2176, %2019
  %2260 = fmul fast float %2176, %2020
  %2261 = fmul fast float %2176, %2021
  %2262 = fadd fast float %2259, %1352
  %2263 = fadd fast float %2260, %1353
  %2264 = fadd fast float %2261, %1354
  br label %2295

; <label>:2265                                    ; preds = %2215
  %2266 = icmp eq i32 %2153, 8
  br i1 %2266, label %2267, label %2295

; <label>:2267                                    ; preds = %2265
  %2268 = fmul fast float %2158, %1847
  %2269 = fmul fast float %2158, %1848
  %2270 = fadd fast float %2268, %1344
  %2271 = fadd fast float %2269, %1345
  %2272 = call float @dx.op.binary.f32(i32 36, float %1361, float %1849)  ; FMin(a,b)
  %2273 = fsub fast float %2272, %1361
  %2274 = fmul fast float %2273, %2161
  %2275 = fadd fast float %2274, %1361
  %2276 = fsub fast float %1846, %1360
  %2277 = fmul fast float %2164, %2276
  %2278 = fadd fast float %2277, %1360
  %2279 = fmul fast float %2167, %1952
  %2280 = fmul fast float %2167, %1953
  %2281 = fmul fast float %2167, %1954
  %2282 = fadd fast float %2279, %1355
  %2283 = fadd fast float %2280, %1356
  %2284 = fadd fast float %2281, %1357
  %2285 = fmul fast float %2170, %2022
  %2286 = fadd fast float %2285, %1362
  %2287 = fmul fast float %2173, %2023
  %2288 = fadd fast float %2287, %1363
  %2289 = fmul fast float %2176, %2019
  %2290 = fmul fast float %2176, %2020
  %2291 = fmul fast float %2176, %2021
  %2292 = fadd fast float %2289, %1352
  %2293 = fadd fast float %2290, %1353
  %2294 = fadd fast float %2291, %1354
  br label %2295

; <label>:2295                                    ; preds = %2267, %2265, %2217, %2178, %2145, %1545, %1364, %1343
  %2296 = phi float [ %1344, %2145 ], [ %1344, %1545 ], [ %1344, %1343 ], [ %2270, %2267 ], [ %1344, %2265 ], [ %2220, %2217 ], [ %2183, %2178 ], [ %1344, %1364 ]
  %2297 = phi float [ %1345, %2145 ], [ %1345, %1545 ], [ %1345, %1343 ], [ %2271, %2267 ], [ %1345, %2265 ], [ %2221, %2217 ], [ %2184, %2178 ], [ %1345, %1364 ]
  %2298 = phi float [ %2146, %2145 ], [ %1346, %1545 ], [ %1346, %1343 ], [ %2146, %2267 ], [ %2146, %2265 ], [ %2146, %2217 ], [ %2146, %2178 ], [ %1346, %1364 ]
  %2299 = phi float [ %2147, %2145 ], [ %1347, %1545 ], [ %1347, %1343 ], [ %2147, %2267 ], [ %2147, %2265 ], [ %2147, %2217 ], [ %2147, %2178 ], [ %1347, %1364 ]
  %2300 = phi float [ %2148, %2145 ], [ %1348, %1545 ], [ %1348, %1343 ], [ %2148, %2267 ], [ %2148, %2265 ], [ %2148, %2217 ], [ %2148, %2178 ], [ %1348, %1364 ]
  %2301 = phi float [ %2149, %2145 ], [ %1349, %1545 ], [ %1349, %1343 ], [ %2149, %2267 ], [ %2149, %2265 ], [ %2149, %2217 ], [ %2149, %2178 ], [ %1349, %1364 ]
  %2302 = phi float [ %2150, %2145 ], [ %1350, %1545 ], [ %1350, %1343 ], [ %2150, %2267 ], [ %2150, %2265 ], [ %2150, %2217 ], [ %2150, %2178 ], [ %1350, %1364 ]
  %2303 = phi float [ %2151, %2145 ], [ %1351, %1545 ], [ %1351, %1343 ], [ %2151, %2267 ], [ %2151, %2265 ], [ %2151, %2217 ], [ %2151, %2178 ], [ %1351, %1364 ]
  %2304 = phi float [ %1352, %2145 ], [ %1352, %1545 ], [ %1352, %1343 ], [ %2292, %2267 ], [ %1352, %2265 ], [ %2262, %2217 ], [ %2212, %2178 ], [ %1352, %1364 ]
  %2305 = phi float [ %1353, %2145 ], [ %1353, %1545 ], [ %1353, %1343 ], [ %2293, %2267 ], [ %1353, %2265 ], [ %2263, %2217 ], [ %2213, %2178 ], [ %1353, %1364 ]
  %2306 = phi float [ %1354, %2145 ], [ %1354, %1545 ], [ %1354, %1343 ], [ %2294, %2267 ], [ %1354, %2265 ], [ %2264, %2217 ], [ %2214, %2178 ], [ %1354, %1364 ]
  %2307 = phi float [ %1355, %2145 ], [ %1355, %1545 ], [ %1355, %1343 ], [ %2282, %2267 ], [ %1355, %2265 ], [ %2252, %2217 ], [ %2197, %2178 ], [ %1355, %1364 ]
  %2308 = phi float [ %1356, %2145 ], [ %1356, %1545 ], [ %1356, %1343 ], [ %2283, %2267 ], [ %1356, %2265 ], [ %2253, %2217 ], [ %2198, %2178 ], [ %1356, %1364 ]
  %2309 = phi float [ %1357, %2145 ], [ %1357, %1545 ], [ %1357, %1343 ], [ %2284, %2267 ], [ %1357, %2265 ], [ %2254, %2217 ], [ %2199, %2178 ], [ %1357, %1364 ]
  %2310 = phi float [ %2152, %2145 ], [ %1358, %1545 ], [ %1358, %1343 ], [ %2152, %2267 ], [ %2152, %2265 ], [ %2152, %2217 ], [ %2152, %2178 ], [ %1358, %1364 ]
  %2311 = phi float [ %1360, %2145 ], [ %1360, %1545 ], [ %1360, %1343 ], [ %2278, %2267 ], [ %1360, %2265 ], [ %2248, %2217 ], [ %2190, %2178 ], [ %1360, %1364 ]
  %2312 = phi float [ %1361, %2145 ], [ %1361, %1545 ], [ %1361, %1343 ], [ %2275, %2267 ], [ %1361, %2265 ], [ %2225, %2217 ], [ %2187, %2178 ], [ %1361, %1364 ]
  %2313 = phi float [ %1362, %2145 ], [ %1362, %1545 ], [ %1362, %1343 ], [ %2286, %2267 ], [ %1362, %2265 ], [ %2256, %2217 ], [ %2202, %2178 ], [ %1362, %1364 ]
  %2314 = phi float [ %1363, %2145 ], [ %1363, %1545 ], [ %1363, %1343 ], [ %2288, %2267 ], [ %1363, %2265 ], [ %2258, %2217 ], [ %2205, %2178 ], [ %1363, %1364 ]
  br i1 %636, label %3246, label %2315

; <label>:2315                                    ; preds = %2295
  %2316 = icmp ult i32 %692, 3
  %2317 = add i32 %52, 56
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %52, 60
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = or i32 %2322, %2319
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %3246, label %2325

; <label>:2325                                    ; preds = %2315
  %2326 = and i32 %2319, 262144
  %2327 = icmp ne i32 %2326, 0
  %2328 = select i1 %2327, float %59, float 1.000000e+00
  %2329 = select i1 %2327, float %60, float 0.000000e+00
  %2330 = select i1 %2327, float %61, float 0.000000e+00
  %2331 = select i1 %2327, float %62, float 1.000000e+00
  %2332 = select i1 %2327, float %63, float %91
  %2333 = select i1 %2327, float %64, float %92
  %2334 = add i32 %52, 316
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = lshr i32 %2336, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fmul fast float %2338, 0x3F50624DE0000000
  %2340 = add i32 %52, 120
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 16
  %2344 = and i32 %2343, 255
  %2345 = lshr i32 %2342, 24
  %2346 = add i32 %52, 324
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 65535
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = lshr i32 %2348, 16
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = add i32 %52, 64
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 22
  %2357 = shl nuw nsw i32 %2356, 5
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = shl i32 %2355, 4
  %2360 = and i32 %2359, 32752
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = lshr i32 %2355, 7
  %2363 = and i32 %2362, 32752
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2367 = fmul fast float %2366, 1.000000e+03
  %2368 = fmul fast float %2367, %520
  %2369 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2370 = fadd fast float %2369, %508
  %2371 = fmul fast float %2367, %522
  %2372 = call float @dx.op.unary.f32(i32 22, float %2371)  ; Frc(value)
  %2373 = fadd fast float %2372, %509
  %2374 = fmul fast float %2339, %2367
  %2375 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2376 = fmul fast float %2375, 0x401921FB60000000
  %2377 = fadd fast float %2376, %2358
  %2378 = call float @dx.op.unary.f32(i32 13, float %2377)  ; Sin(value)
  %2379 = call float @dx.op.unary.f32(i32 12, float %2377)  ; Cos(value)
  %2380 = fsub fast float -0.000000e+00, %2378
  %2381 = fadd fast float %2332, -5.000000e-01
  %2382 = fadd fast float %2333, -5.000000e-01
  %2383 = fmul fast float %2350, %2381
  %2384 = fmul fast float %2352, %2382
  %2385 = fadd fast float %2383, 5.000000e-01
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fmul fast float %2361, %2385
  %2388 = fmul fast float %2364, %2386
  %2389 = fmul fast float %2379, %2387
  %2390 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2388, float %2389)  ; FMad(a,b,c)
  %2391 = fmul fast float %2378, %2387
  %2392 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2388, float %2391)  ; FMad(a,b,c)
  %2393 = fadd fast float %2370, %2390
  %2394 = fadd fast float %2373, %2392
  %2395 = icmp ugt i32 %2344, 1
  %2396 = icmp ugt i32 %2342, 33554431
  %2397 = or i1 %2396, %2395
  br i1 %2397, label %2398, label %2423

; <label>:2398                                    ; preds = %2325
  %2399 = add i32 %52, 260
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = lshr i32 %2401, 16
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = fmul fast float %2366, %2403
  %2405 = call float @dx.op.unary.f32(i32 22, float %2404)  ; Frc(value)
  %2406 = mul nuw nsw i32 %2344, %2345
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2405, %2407
  %2409 = call float @dx.op.unary.f32(i32 27, float %2408)  ; Round_ni(value)
  %2410 = fptoui float %2409 to i32
  %2411 = urem i32 %2410, %2344
  %2412 = udiv i32 %2410, %2345
  %2413 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2414 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2415 = uitofp i32 %2411 to float
  %2416 = uitofp i32 %2412 to float
  %2417 = fadd fast float %2413, %2415
  %2418 = fadd fast float %2414, %2416
  %2419 = uitofp i32 %2344 to float
  %2420 = uitofp i32 %2345 to float
  %2421 = fdiv fast float %2417, %2419
  %2422 = fdiv fast float %2418, %2420
  br label %2423

; <label>:2423                                    ; preds = %2398, %2325
  %2424 = phi float [ %2421, %2398 ], [ %2393, %2325 ]
  %2425 = phi float [ %2422, %2398 ], [ %2394, %2325 ]
  %2426 = and i32 %2319, 256
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2474, label %2428

; <label>:2428                                    ; preds = %2423
  %2429 = add i32 %52, 480
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = add i32 %52, 132
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = shl i32 %2438, 4
  %2440 = and i32 %2439, 32752
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = lshr i32 %2438, 7
  %2443 = and i32 %2442, 32752
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = fsub fast float 1.000000e+00, %688
  %2446 = call float @dx.op.binary.f32(i32 35, float %2445, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2447 = bitcast float %688 to i32
  %2448 = sitofp i32 %2447 to float
  %2449 = fadd fast float %2448, 0xC1CFBF8940000000
  %2450 = fmul fast float %2444, %2449
  %2451 = fadd fast float %2450, 0x41CFBF8940000000
  %2452 = fptosi float %2451 to i32
  %2453 = bitcast i32 %2452 to float
  %2454 = bitcast float %2446 to i32
  %2455 = sitofp i32 %2454 to float
  %2456 = fadd fast float %2455, 0xC1CFBF8940000000
  %2457 = fmul fast float %2456, %2444
  %2458 = fadd fast float %2457, 0x41CFBF8940000000
  %2459 = fptosi float %2458 to i32
  %2460 = bitcast i32 %2459 to float
  %2461 = fmul fast float %2453, %2441
  %2462 = fmul fast float %2460, %2441
  %2463 = fsub fast float %2446, %2461
  %2464 = fadd fast float %2462, %2446
  %2465 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2467 = fsub fast float %2435, %2465
  %2468 = fsub fast float %2466, %2465
  %2469 = bitcast float %2468 to i32
  %2470 = sub nsw i32 2129859010, %2469
  %2471 = bitcast i32 %2470 to float
  %2472 = fmul fast float %2471, %2467
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  br label %2474

; <label>:2474                                    ; preds = %2428, %2423
  %2475 = phi float [ %2473, %2428 ], [ %688, %2423 ]
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 128
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2496, label %2480

; <label>:2480                                    ; preds = %2474
  %2481 = add i32 %52, 464
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2485, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 524288
  %2491 = icmp ne i32 %2490, 0
  %2492 = fcmp fast ogt float %2487, 0x3FE0101020000000
  %2493 = select i1 %2492, float 1.000000e+00, float 0.000000e+00
  %2494 = select i1 %2491, float %2493, float %2487
  %2495 = fmul fast float %2494, %2475
  br label %2496

; <label>:2496                                    ; preds = %2480, %2474
  %2497 = phi float [ %2495, %2480 ], [ %2475, %2474 ]
  %2498 = fcmp fast ult float %2497, 0x3F70101020000000
  br i1 %2498, label %3246, label %2499

; <label>:2499                                    ; preds = %2496
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 16
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2702, label %2504

; <label>:2504                                    ; preds = %2499
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %52, 416
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = add i32 %2509, 0
  %2511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2511, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2513 = extractvalue %dx.types.ResRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2512, 2
  %2516 = extractvalue %dx.types.ResRet.f32 %2512, 3
  %2517 = and i32 %2506, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = lshr i32 %2506, 8
  %2520 = and i32 %2519, 255
  %2521 = uitofp i32 %2520 to float
  %2522 = fmul fast float %2516, %2518
  %2523 = fadd fast float %2522, %2521
  %2524 = fmul fast float %2523, 0x3F70101000000000
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 512
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2537, label %2529

; <label>:2529                                    ; preds = %2504
  %2530 = add i32 %52, 500
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = add i32 %2532, 0
  %2534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2534, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  br label %2537

; <label>:2537                                    ; preds = %2529, %2504
  %2538 = phi float [ %2536, %2529 ], [ 1.000000e+00, %2504 ]
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 33554432
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2649, label %2543

; <label>:2543                                    ; preds = %2537
  %2544 = add i32 %52, 256
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 65535
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2546, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = add i32 %52, 260
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 65535
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = lshr i32 %2557, 24
  %2559 = uitofp i32 %2558 to float
  %2560 = fmul fast float %2559, 0x3F70101020000000
  %2561 = and i32 %2557, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = fmul fast float %2562, 0x3F70101020000000
  %2564 = lshr i32 %2557, 8
  %2565 = and i32 %2564, 255
  %2566 = uitofp i32 %2565 to float
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = lshr i32 %2557, 16
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = fmul fast float %2570, 0x3F70101020000000
  %2572 = add i32 %52, 252
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = lshr i32 %2574, 24
  %2576 = uitofp i32 %2575 to float
  %2577 = fmul fast float %2576, 0x3F70101020000000
  %2578 = and i32 %2574, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = fmul fast float %2579, 0x3F70101020000000
  %2581 = lshr i32 %2574, 8
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101020000000
  %2585 = lshr i32 %2574, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = bitcast float %2513 to i32
  %2590 = ashr i32 %2589, 1
  %2591 = sub nsw i32 1597463174, %2590
  %2592 = bitcast i32 %2591 to float
  %2593 = fmul fast float %2513, 5.000000e-01
  %2594 = fmul fast float %2592, %2592
  %2595 = fmul fast float %2594, %2593
  %2596 = fsub fast float 1.500000e+00, %2595
  %2597 = fmul fast float %2592, %2513
  %2598 = fmul fast float %2597, %2596
  %2599 = bitcast float %2514 to i32
  %2600 = ashr i32 %2599, 1
  %2601 = sub nsw i32 1597463174, %2600
  %2602 = bitcast i32 %2601 to float
  %2603 = fmul fast float %2514, 5.000000e-01
  %2604 = fmul fast float %2602, %2602
  %2605 = fmul fast float %2604, %2603
  %2606 = fsub fast float 1.500000e+00, %2605
  %2607 = fmul fast float %2602, %2514
  %2608 = fmul fast float %2607, %2606
  %2609 = bitcast float %2515 to i32
  %2610 = ashr i32 %2609, 1
  %2611 = sub nsw i32 1597463174, %2610
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2515, 5.000000e-01
  %2614 = fmul fast float %2612, %2612
  %2615 = fmul fast float %2614, %2613
  %2616 = fsub fast float 1.500000e+00, %2615
  %2617 = fmul fast float %2612, %2515
  %2618 = fmul fast float %2617, %2616
  %2619 = fsub fast float %2598, %2580
  %2620 = fsub fast float %2608, %2584
  %2621 = fsub fast float %2618, %2588
  %2622 = fmul fast float %2619, %2548
  %2623 = fmul fast float %2620, %2550
  %2624 = fmul fast float %2621, %2555
  %2625 = fadd fast float %2622, %2563
  %2626 = fadd fast float %2623, %2567
  %2627 = fadd fast float %2624, %2571
  %2628 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2629 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2630 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2631 = fmul fast float %2628, %2628
  %2632 = fmul fast float %2629, %2629
  %2633 = fmul fast float %2630, %2630
  %2634 = fsub fast float %2631, %2513
  %2635 = fsub fast float %2632, %2514
  %2636 = fsub fast float %2633, %2515
  %2637 = fmul fast float %2634, %2538
  %2638 = fmul fast float %2635, %2538
  %2639 = fmul fast float %2636, %2538
  %2640 = fadd fast float %2637, %2513
  %2641 = fadd fast float %2638, %2514
  %2642 = fadd fast float %2639, %2515
  %2643 = fadd fast float %2560, %2524
  %2644 = fsub fast float %2643, %2577
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = fsub fast float %2645, %2524
  %2647 = fmul fast float %2646, %2538
  %2648 = fadd fast float %2647, %2524
  br label %2702

; <label>:2649                                    ; preds = %2537
  %2650 = and i32 %2540, 134217728
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2686, label %2652

; <label>:2652                                    ; preds = %2649
  %2653 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2654 = call float @dx.op.unary.f32(i32 24, float %497)  ; Sqrt(value)
  %2655 = call float @dx.op.unary.f32(i32 24, float %498)  ; Sqrt(value)
  %2656 = fadd fast float %2653, -5.000000e-01
  %2657 = fadd fast float %2654, -5.000000e-01
  %2658 = fadd fast float %2655, -5.000000e-01
  %2659 = fmul fast float %2656, %2538
  %2660 = fmul fast float %2657, %2538
  %2661 = fmul fast float %2658, %2538
  %2662 = fadd fast float %2659, 5.000000e-01
  %2663 = fadd fast float %2660, 5.000000e-01
  %2664 = fadd fast float %2661, 5.000000e-01
  %2665 = call float @dx.op.unary.f32(i32 24, float %2513)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2667 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2668 = fmul fast float %2662, 2.000000e+00
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2669, %2665
  %2671 = fadd fast float %2670, %2668
  %2672 = fmul fast float %2671, %2665
  %2673 = fmul fast float %2663, 2.000000e+00
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2674, %2666
  %2676 = fadd fast float %2675, %2673
  %2677 = fmul fast float %2676, %2666
  %2678 = fmul fast float %2664, 2.000000e+00
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2679, %2667
  %2681 = fadd fast float %2680, %2678
  %2682 = fmul fast float %2681, %2667
  %2683 = fmul fast float %2672, %2672
  %2684 = fmul fast float %2677, %2677
  %2685 = fmul fast float %2682, %2682
  br label %2702

; <label>:2686                                    ; preds = %2649
  %2687 = fmul fast float %496, %496
  %2688 = fmul fast float %497, %497
  %2689 = fmul fast float %498, %498
  %2690 = fadd fast float %2687, -1.000000e+00
  %2691 = fadd fast float %2688, -1.000000e+00
  %2692 = fadd fast float %2689, -1.000000e+00
  %2693 = fmul fast float %2538, %2690
  %2694 = fmul fast float %2538, %2691
  %2695 = fmul fast float %2538, %2692
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fadd fast float %2695, 1.000000e+00
  %2699 = fmul fast float %2696, %2513
  %2700 = fmul fast float %2697, %2514
  %2701 = fmul fast float %2698, %2515
  br label %2702

; <label>:2702                                    ; preds = %2686, %2652, %2543, %2499
  %2703 = phi float [ %2648, %2543 ], [ %2524, %2652 ], [ %2524, %2686 ], [ 0x3FA23C0BE0000000, %2499 ]
  %2704 = phi float [ %2640, %2543 ], [ %2683, %2652 ], [ %2699, %2686 ], [ 1.000000e+00, %2499 ]
  %2705 = phi float [ %2641, %2543 ], [ %2684, %2652 ], [ %2700, %2686 ], [ 1.000000e+00, %2499 ]
  %2706 = phi float [ %2642, %2543 ], [ %2685, %2652 ], [ %2701, %2686 ], [ 1.000000e+00, %2499 ]
  %2707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.i32 %2707, 1
  %2709 = and i32 %2708, 1
  %2710 = icmp ne i32 %2709, 0
  %2711 = add i32 %52, 356
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 32
  %2715 = icmp ne i32 %2714, 0
  %2716 = and i1 %2710, %2715
  %2717 = select i1 %2716, float 1.000000e+00, float %2704
  %2718 = select i1 %2716, float 0x3FD3333340000000, float %2705
  %2719 = select i1 %2716, float 0x3FD3333340000000, float %2706
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 32
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2796, label %2724

; <label>:2724                                    ; preds = %2702
  %2725 = add i32 %52, 124
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %52, 432
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %2730, 0
  %2732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2732, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = extractvalue %dx.types.ResRet.f32 %2733, 3
  %2738 = and i32 %2727, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = lshr i32 %2727, 8
  %2741 = and i32 %2740, 255
  %2742 = uitofp i32 %2741 to float
  %2743 = lshr i32 %2727, 16
  %2744 = and i32 %2743, 255
  %2745 = uitofp i32 %2744 to float
  %2746 = fmul fast float %2745, 0x3F70101000000000
  %2747 = fmul fast float %2734, %2739
  %2748 = fadd fast float %2747, %2742
  %2749 = fmul fast float %2748, 0x3F70101000000000
  %2750 = fadd fast float %2735, -5.000000e-01
  %2751 = fadd fast float %2737, -5.000000e-01
  %2752 = fmul fast float %2750, %2746
  %2753 = fmul fast float %2751, %2746
  %2754 = fadd fast float %2752, 5.000000e-01
  %2755 = fadd fast float %2753, 5.000000e-01
  %2756 = fmul fast float %2754, 2.000000e+00
  %2757 = fadd fast float %2756, -1.000000e+00
  %2758 = fmul fast float %2755, 2.000000e+00
  %2759 = fadd fast float %2758, -1.000000e+00
  %2760 = fadd fast float %2757, %2759
  %2761 = fmul fast float %2760, 5.000000e-01
  %2762 = fsub fast float %2757, %2759
  %2763 = fmul fast float %2762, 5.000000e-01
  %2764 = call float @dx.op.unary.f32(i32 6, float %2761)  ; FAbs(value)
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = call float @dx.op.unary.f32(i32 6, float %2763)  ; FAbs(value)
  %2767 = fsub fast float %2765, %2766
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2763, float %2767, float %2761, float %2763, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = call float @dx.op.unary.f32(i32 25, float %2768)  ; Rsqrt(value)
  %2770 = fmul fast float %2761, %2769
  %2771 = fmul fast float %2763, %2769
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 67108864
  %2775 = icmp eq i32 %2774, 0
  br i1 %2775, label %2792, label %2776

; <label>:2776                                    ; preds = %2724
  %2777 = add i32 %52, 312
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 65535
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = lshr i32 %2779, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = fsub fast float %2749, %2787
  %2789 = fmul fast float %2788, %2781
  %2790 = fadd fast float %2789, %2785
  %2791 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  br label %2792

; <label>:2792                                    ; preds = %2776, %2724
  %2793 = phi float [ %2791, %2776 ], [ %2749, %2724 ]
  %2794 = call float @dx.op.dot2.f32(i32 54, float %2770, float %2771, float %2328, float %2329)  ; Dot2(ax,ay,bx,by)
  %2795 = call float @dx.op.dot2.f32(i32 54, float %2770, float %2771, float %2330, float %2331)  ; Dot2(ax,ay,bx,by)
  br label %2796

; <label>:2796                                    ; preds = %2792, %2702
  %2797 = phi float [ %2793, %2792 ], [ 0x3FD6666660000000, %2702 ]
  %2798 = phi float [ %2794, %2792 ], [ 0.000000e+00, %2702 ]
  %2799 = phi float [ %2795, %2792 ], [ 0.000000e+00, %2702 ]
  %2800 = phi float [ %2736, %2792 ], [ 1.000000e+00, %2702 ]
  %2801 = add i32 %52, 192
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 22
  %2805 = shl nuw nsw i32 %2804, 5
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 64
  %2810 = icmp eq i32 %2809, 0
  br i1 %2810, label %2844, label %2811

; <label>:2811                                    ; preds = %2796
  %2812 = add i32 %52, 448
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = add i32 %2814, 0
  %2816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 131072
  %2820 = icmp eq i32 %2819, 0
  %2821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2816, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2822 = extractvalue %dx.types.ResRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.ResRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.ResRet.f32 %2821, 2
  %2825 = fmul fast float %479, %2822
  %2826 = fmul fast float %480, %2823
  %2827 = fmul fast float %481, %2824
  br i1 %2820, label %2834, label %2828

; <label>:2828                                    ; preds = %2811
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = fmul fast float %2830, %2825
  %2832 = fmul fast float %2830, %2826
  %2833 = fmul fast float %2830, %2827
  br label %2834

; <label>:2834                                    ; preds = %2828, %2811
  %2835 = phi float [ %2831, %2828 ], [ %2825, %2811 ]
  %2836 = phi float [ %2832, %2828 ], [ %2826, %2811 ]
  %2837 = phi float [ %2833, %2828 ], [ %2827, %2811 ]
  %2838 = fmul fast float %2835, %2806
  %2839 = select i1 %254, float %2838, float %2835
  %2840 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2836, float %2837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2841 = select i1 %254, float 0.000000e+00, float %2835
  %2842 = select i1 %254, float %2840, float %2836
  %2843 = select i1 %254, float 0.000000e+00, float %2837
  br label %2844

; <label>:2844                                    ; preds = %2834, %2796
  %2845 = phi float [ %2841, %2834 ], [ 0.000000e+00, %2796 ]
  %2846 = phi float [ %2842, %2834 ], [ 0.000000e+00, %2796 ]
  %2847 = phi float [ %2843, %2834 ], [ 0.000000e+00, %2796 ]
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = and i32 %2849, 1024
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %2882, label %2852

; <label>:2852                                    ; preds = %2844
  %2853 = add i32 %52, 184
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101020000000
  %2859 = lshr i32 %2855, 8
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fmul fast float %2861, 0x3F70101020000000
  %2863 = lshr i32 %2855, 16
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F70101020000000
  %2867 = fmul fast float %2858, %2858
  %2868 = fmul fast float %2862, %2862
  %2869 = fmul fast float %2866, %2866
  %2870 = add i32 %52, 516
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2874, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = fmul fast float %2867, %2876
  %2880 = fmul fast float %2868, %2877
  %2881 = fmul fast float %2869, %2878
  br label %2882

; <label>:2882                                    ; preds = %2852, %2844
  %2883 = phi float [ %2879, %2852 ], [ 0.000000e+00, %2844 ]
  %2884 = phi float [ %2880, %2852 ], [ 0.000000e+00, %2844 ]
  %2885 = phi float [ %2881, %2852 ], [ 0.000000e+00, %2844 ]
  %2886 = fcmp fast ogt float %2883, 0.000000e+00
  %2887 = fcmp fast ogt float %2884, 0.000000e+00
  %2888 = fcmp fast ogt float %2885, 0.000000e+00
  %2889 = call float @dx.op.unary.f32(i32 23, float %2883)  ; Log(value)
  %2890 = call float @dx.op.unary.f32(i32 23, float %2884)  ; Log(value)
  %2891 = call float @dx.op.unary.f32(i32 23, float %2885)  ; Log(value)
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = lshr i32 %2893, 7
  %2895 = and i32 %2894, 32752
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = fmul fast float %2889, 0xBFE62E4300000000
  %2898 = fmul fast float %2897, %2896
  %2899 = fmul fast float %2890, 0xBFE62E4300000000
  %2900 = fmul fast float %2899, %2896
  %2901 = fmul fast float %2891, 0xBFE62E4300000000
  %2902 = fmul fast float %2901, %2896
  %2903 = select i1 %2886, float %2898, float 1.270000e+02
  %2904 = select i1 %2887, float %2900, float 1.270000e+02
  %2905 = select i1 %2888, float %2902, float 1.270000e+02
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 14336
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %2969, label %2910

; <label>:2910                                    ; preds = %2882
  %2911 = add i32 %52, 532
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = add i32 %2913, 0
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2915, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 3
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 1048576
  %2923 = icmp ne i32 %2922, 0
  %2924 = select i1 %2923, float 1.000000e+00, float %2918
  %2925 = and i32 %2921, 8192
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2941, label %2927

; <label>:2927                                    ; preds = %2910
  %2928 = select i1 %2923, float %2918, float %2917
  %2929 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2930 = select i1 %2923, float %2929, float %2917
  %2931 = add i32 %52, 128
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = lshr i32 %2933, 16
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2936, 0x3F80101020000000
  %2938 = fmul fast float %2937, %2930
  %2939 = fmul fast float %2937, %2917
  %2940 = fmul fast float %2937, %2928
  br label %2941

; <label>:2941                                    ; preds = %2927, %2910
  %2942 = phi float [ %2938, %2927 ], [ 0.000000e+00, %2910 ]
  %2943 = phi float [ %2939, %2927 ], [ 0.000000e+00, %2910 ]
  %2944 = phi float [ %2940, %2927 ], [ 0.000000e+00, %2910 ]
  %2945 = and i32 %2921, 2048
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2955, label %2947

; <label>:2947                                    ; preds = %2941
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = shl i32 %2949, 4
  %2951 = and i32 %2950, 32752
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = fmul fast float %2952, %2919
  %2954 = call float @dx.op.binary.f32(i32 35, float %2953, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2955

; <label>:2955                                    ; preds = %2947, %2941
  %2956 = phi float [ %2954, %2947 ], [ 0x3F70101020000000, %2941 ]
  %2957 = and i32 %2921, 4096
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2969, label %2959

; <label>:2959                                    ; preds = %2955
  %2960 = add i32 %52, 196
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 65535
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = lshr i32 %2962, 16
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = fmul fast float %2964, %2924
  %2968 = fadd fast float %2967, %2966
  br label %2969

; <label>:2969                                    ; preds = %2959, %2955, %2882
  %2970 = phi float [ %2942, %2959 ], [ %2942, %2955 ], [ 0.000000e+00, %2882 ]
  %2971 = phi float [ %2943, %2959 ], [ %2943, %2955 ], [ 0.000000e+00, %2882 ]
  %2972 = phi float [ %2944, %2959 ], [ %2944, %2955 ], [ 0.000000e+00, %2882 ]
  %2973 = phi float [ %2956, %2959 ], [ %2956, %2955 ], [ 0x3F70101020000000, %2882 ]
  %2974 = phi float [ %2968, %2959 ], [ 0.000000e+00, %2955 ], [ 0.000000e+00, %2882 ]
  br i1 %2316, label %2975, label %3010

; <label>:2975                                    ; preds = %2969
  %2976 = fmul fast float %2973, 2.000000e+00
  %2977 = fcmp fast olt float %2903, 1.270000e+02
  %2978 = fcmp fast olt float %2904, 1.270000e+02
  %2979 = fcmp fast olt float %2905, 1.270000e+02
  %2980 = fmul fast float %2903, 0xBFF7154760000000
  %2981 = fmul fast float %2980, %2976
  %2982 = fmul fast float %2904, 0xBFF7154760000000
  %2983 = fmul fast float %2982, %2976
  %2984 = fmul fast float %2905, 0xBFF7154760000000
  %2985 = fmul fast float %2984, %2976
  %2986 = call float @dx.op.unary.f32(i32 21, float %2981)  ; Exp(value)
  %2987 = call float @dx.op.unary.f32(i32 21, float %2983)  ; Exp(value)
  %2988 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  %2989 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2990 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2991 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2992 = fadd fast float %2989, -1.000000e+00
  %2993 = select i1 %2977, float %2992, float -1.000000e+00
  %2994 = fadd fast float %2990, -1.000000e+00
  %2995 = select i1 %2978, float %2994, float -1.000000e+00
  %2996 = fadd fast float %2991, -1.000000e+00
  %2997 = select i1 %2979, float %2996, float -1.000000e+00
  %2998 = fmul fast float %2993, %2497
  %2999 = fmul fast float %2995, %2497
  %3000 = fmul fast float %2997, %2497
  %3001 = fadd fast float %2998, 1.000000e+00
  %3002 = fadd fast float %2999, 1.000000e+00
  %3003 = fadd fast float %3000, 1.000000e+00
  %3004 = fmul fast float %3001, %2298
  %3005 = fmul fast float %3002, %2299
  %3006 = fmul fast float %3003, %2300
  %3007 = fmul fast float %3001, %2301
  %3008 = fmul fast float %3002, %2302
  %3009 = fmul fast float %3003, %2303
  br label %3010

; <label>:3010                                    ; preds = %2975, %2969
  %3011 = phi float [ %3004, %2975 ], [ %2298, %2969 ]
  %3012 = phi float [ %3005, %2975 ], [ %2299, %2969 ]
  %3013 = phi float [ %3006, %2975 ], [ %2300, %2969 ]
  %3014 = phi float [ %3007, %2975 ], [ %2301, %2969 ]
  %3015 = phi float [ %3008, %2975 ], [ %2302, %2969 ]
  %3016 = phi float [ %3009, %2975 ], [ %2303, %2969 ]
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 3
  %3020 = icmp eq i32 %3019, 3
  br i1 %3020, label %3096, label %3021

; <label>:3021                                    ; preds = %3010
  %3022 = and i32 %3018, 16
  %3023 = icmp ne i32 %3022, 0
  %3024 = select i1 %3023, float %2497, float 0.000000e+00
  %3025 = icmp eq i32 %3019, 0
  br i1 %3025, label %3026, label %3051

; <label>:3026                                    ; preds = %3021
  %3027 = and i32 %3018, 64
  %3028 = icmp ne i32 %3027, 0
  %3029 = select i1 %3028, float %2497, float 0.000000e+00
  %3030 = fsub fast float %2717, %3011
  %3031 = fsub fast float %2718, %3012
  %3032 = fsub fast float %2719, %3013
  %3033 = fmul fast float %3024, %3030
  %3034 = fmul fast float %3024, %3031
  %3035 = fmul fast float %3024, %3032
  %3036 = fadd fast float %3033, %3011
  %3037 = fadd fast float %3034, %3012
  %3038 = fadd fast float %3035, %3013
  %3039 = fsub fast float %2703, %2310
  %3040 = fmul fast float %3024, %3039
  %3041 = fadd fast float %3040, %2310
  %3042 = fsub fast float %2845, %3014
  %3043 = fsub fast float %2846, %3015
  %3044 = fsub fast float %2847, %3016
  %3045 = fmul fast float %3029, %3042
  %3046 = fmul fast float %3029, %3043
  %3047 = fmul fast float %3029, %3044
  %3048 = fadd fast float %3045, %3014
  %3049 = fadd fast float %3046, %3015
  %3050 = fadd fast float %3047, %3016
  br label %3096

; <label>:3051                                    ; preds = %3021
  %3052 = icmp eq i32 %3019, 1
  br i1 %3052, label %3053, label %3066

; <label>:3053                                    ; preds = %3051
  %3054 = fadd fast float %2717, -1.000000e+00
  %3055 = fadd fast float %2718, -1.000000e+00
  %3056 = fadd fast float %2719, -1.000000e+00
  %3057 = fmul fast float %3024, %3054
  %3058 = fmul fast float %3024, %3055
  %3059 = fmul fast float %3024, %3056
  %3060 = fadd fast float %3057, 1.000000e+00
  %3061 = fadd fast float %3058, 1.000000e+00
  %3062 = fadd fast float %3059, 1.000000e+00
  %3063 = fmul fast float %3060, %3011
  %3064 = fmul fast float %3061, %3012
  %3065 = fmul fast float %3062, %3013
  br label %3096

; <label>:3066                                    ; preds = %3051
  %3067 = icmp eq i32 %3019, 2
  br i1 %3067, label %3068, label %3096

; <label>:3068                                    ; preds = %3066
  %3069 = call float @dx.op.unary.f32(i32 24, float %2717)  ; Sqrt(value)
  %3070 = call float @dx.op.unary.f32(i32 24, float %2718)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %2719)  ; Sqrt(value)
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fmul fast float %3072, %3024
  %3076 = fmul fast float %3073, %3024
  %3077 = fmul fast float %3074, %3024
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fmul fast float %3078, 2.000000e+00
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fmul fast float %3082, %3011
  %3084 = fadd fast float %3083, %3081
  %3085 = fmul fast float %3084, %3011
  %3086 = fmul fast float %3079, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3012
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3012
  %3091 = fmul fast float %3080, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3013
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3013
  br label %3096

; <label>:3096                                    ; preds = %3068, %3066, %3053, %3026, %3010
  %3097 = phi float [ %3011, %3010 ], [ %3085, %3068 ], [ %3011, %3066 ], [ %3063, %3053 ], [ %3036, %3026 ]
  %3098 = phi float [ %3012, %3010 ], [ %3090, %3068 ], [ %3012, %3066 ], [ %3064, %3053 ], [ %3037, %3026 ]
  %3099 = phi float [ %3013, %3010 ], [ %3095, %3068 ], [ %3013, %3066 ], [ %3065, %3053 ], [ %3038, %3026 ]
  %3100 = phi float [ %3014, %3010 ], [ %3014, %3068 ], [ %3014, %3066 ], [ %3014, %3053 ], [ %3048, %3026 ]
  %3101 = phi float [ %3015, %3010 ], [ %3015, %3068 ], [ %3015, %3066 ], [ %3015, %3053 ], [ %3049, %3026 ]
  %3102 = phi float [ %3016, %3010 ], [ %3016, %3068 ], [ %3016, %3066 ], [ %3016, %3053 ], [ %3050, %3026 ]
  %3103 = phi float [ %2310, %3010 ], [ %2310, %3068 ], [ %2310, %3066 ], [ %2310, %3053 ], [ %3041, %3026 ]
  %3104 = and i32 %3018, 12
  %3105 = icmp eq i32 %3104, 12
  br i1 %3105, label %3246, label %3106

; <label>:3106                                    ; preds = %3096
  %3107 = and i32 %3018, 2097184
  %3108 = icmp eq i32 %3107, 2097184
  %3109 = select i1 %3108, float %2497, float 0.000000e+00
  %3110 = and i32 %3018, 4194336
  %3111 = icmp eq i32 %3110, 4194336
  %3112 = select i1 %3111, float %2497, float 0.000000e+00
  %3113 = and i32 %3018, 8388640
  %3114 = icmp eq i32 %3113, 8388640
  %3115 = select i1 %3114, float %2497, float 0.000000e+00
  %3116 = and i32 %3018, 1024
  %3117 = icmp ne i32 %3116, 0
  %3118 = select i1 %3117, float %2497, float 0.000000e+00
  %3119 = and i32 %3018, 2048
  %3120 = icmp ne i32 %3119, 0
  %3121 = select i1 %3120, float %2497, float 0.000000e+00
  %3122 = and i32 %3018, 4096
  %3123 = icmp ne i32 %3122, 0
  %3124 = select i1 %3123, float %2497, float 0.000000e+00
  %3125 = and i32 %3018, 8192
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2497, float 0.000000e+00
  %3128 = icmp eq i32 %3104, 0
  br i1 %3128, label %3129, label %3166

; <label>:3129                                    ; preds = %3106
  %3130 = fsub fast float %2798, %2296
  %3131 = fsub fast float %2799, %2297
  %3132 = fmul fast float %3109, %3130
  %3133 = fmul fast float %3109, %3131
  %3134 = fadd fast float %3132, %2296
  %3135 = fadd fast float %3133, %2297
  %3136 = fsub fast float %2800, %2312
  %3137 = fmul fast float %3112, %3136
  %3138 = fadd fast float %3137, %2312
  %3139 = fsub fast float %2797, %2311
  %3140 = fmul fast float %3115, %3139
  %3141 = fadd fast float %3140, %2311
  %3142 = fsub fast float %2903, %2307
  %3143 = fsub fast float %2904, %2308
  %3144 = fsub fast float %2905, %2309
  %3145 = fmul fast float %3118, %3142
  %3146 = fmul fast float %3118, %3143
  %3147 = fmul fast float %3118, %3144
  %3148 = fadd fast float %3145, %2307
  %3149 = fadd fast float %3146, %2308
  %3150 = fadd fast float %3147, %2309
  %3151 = fsub fast float %2973, %2313
  %3152 = fmul fast float %3121, %3151
  %3153 = fadd fast float %3152, %2313
  %3154 = fsub fast float %2974, %2314
  %3155 = fmul fast float %3124, %3154
  %3156 = fadd fast float %3155, %2314
  %3157 = fsub fast float %2970, %2304
  %3158 = fsub fast float %2971, %2305
  %3159 = fsub fast float %2972, %2306
  %3160 = fmul fast float %3127, %3157
  %3161 = fmul fast float %3127, %3158
  %3162 = fmul fast float %3127, %3159
  %3163 = fadd fast float %3160, %2304
  %3164 = fadd fast float %3161, %2305
  %3165 = fadd fast float %3162, %2306
  br label %3246

; <label>:3166                                    ; preds = %3106
  %3167 = icmp eq i32 %3104, 4
  br i1 %3167, label %3168, label %3216

; <label>:3168                                    ; preds = %3166
  %3169 = fmul fast float %3109, %2798
  %3170 = fmul fast float %3109, %2799
  %3171 = fadd fast float %3169, %2296
  %3172 = fadd fast float %3170, %2297
  %3173 = call float @dx.op.binary.f32(i32 36, float %2312, float %2800)  ; FMin(a,b)
  %3174 = fsub fast float %3173, %2312
  %3175 = fmul fast float %3174, %3112
  %3176 = fadd fast float %3175, %2312
  %3177 = fadd fast float %2797, %2311
  %3178 = fmul fast float %3177, 0x3FF337FAE0000000
  %3179 = fmul fast float %2311, %2311
  %3180 = fmul fast float %2797, %2797
  %3181 = fadd fast float %3180, %3179
  %3182 = fmul fast float %3181, 0x3FE5152B00000000
  %3183 = fmul fast float %2311, 0xBFCC1F85E0000000
  %3184 = fmul fast float %3183, %2797
  %3185 = fadd fast float %3184, 0xBFE1363700000000
  %3186 = fadd fast float %3185, %3178
  %3187 = fsub fast float %3186, %3182
  %3188 = fmul fast float %3177, 0x3FBA6F0D00000000
  %3189 = fmul fast float %3181, 0x3FD0432880000000
  %3190 = fmul fast float %2311, 0xBFEF110800000000
  %3191 = fmul fast float %3190, %2797
  %3192 = fadd fast float %3191, 1.000000e+00
  %3193 = fsub fast float %3192, %3188
  %3194 = fadd fast float %3193, %3189
  %3195 = fdiv fast float %3187, %3194
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  %3197 = fsub fast float %3196, %2311
  %3198 = fmul fast float %3197, %3115
  %3199 = fadd fast float %3198, %2311
  %3200 = fmul fast float %3118, %2903
  %3201 = fmul fast float %3118, %2904
  %3202 = fmul fast float %3118, %2905
  %3203 = fadd fast float %3200, %2307
  %3204 = fadd fast float %3201, %2308
  %3205 = fadd fast float %3202, %2309
  %3206 = fmul fast float %3121, %2973
  %3207 = fadd fast float %3206, %2313
  %3208 = fmul fast float %3124, %2974
  %3209 = fadd fast float %3208, %2314
  %3210 = fmul fast float %3127, %2970
  %3211 = fmul fast float %3127, %2971
  %3212 = fmul fast float %3127, %2972
  %3213 = fadd fast float %3210, %2304
  %3214 = fadd fast float %3211, %2305
  %3215 = fadd fast float %3212, %2306
  br label %3246

; <label>:3216                                    ; preds = %3166
  %3217 = icmp eq i32 %3104, 8
  br i1 %3217, label %3218, label %3246

; <label>:3218                                    ; preds = %3216
  %3219 = fmul fast float %3109, %2798
  %3220 = fmul fast float %3109, %2799
  %3221 = fadd fast float %3219, %2296
  %3222 = fadd fast float %3220, %2297
  %3223 = call float @dx.op.binary.f32(i32 36, float %2312, float %2800)  ; FMin(a,b)
  %3224 = fsub fast float %3223, %2312
  %3225 = fmul fast float %3224, %3112
  %3226 = fadd fast float %3225, %2312
  %3227 = fsub fast float %2797, %2311
  %3228 = fmul fast float %3115, %3227
  %3229 = fadd fast float %3228, %2311
  %3230 = fmul fast float %3118, %2903
  %3231 = fmul fast float %3118, %2904
  %3232 = fmul fast float %3118, %2905
  %3233 = fadd fast float %3230, %2307
  %3234 = fadd fast float %3231, %2308
  %3235 = fadd fast float %3232, %2309
  %3236 = fmul fast float %3121, %2973
  %3237 = fadd fast float %3236, %2313
  %3238 = fmul fast float %3124, %2974
  %3239 = fadd fast float %3238, %2314
  %3240 = fmul fast float %3127, %2970
  %3241 = fmul fast float %3127, %2971
  %3242 = fmul fast float %3127, %2972
  %3243 = fadd fast float %3240, %2304
  %3244 = fadd fast float %3241, %2305
  %3245 = fadd fast float %3242, %2306
  br label %3246

; <label>:3246                                    ; preds = %3218, %3216, %3168, %3129, %3096, %2496, %2315, %2295
  %3247 = phi float [ %2296, %3096 ], [ %2296, %2496 ], [ %2296, %2295 ], [ %3221, %3218 ], [ %2296, %3216 ], [ %3171, %3168 ], [ %3134, %3129 ], [ %2296, %2315 ]
  %3248 = phi float [ %2297, %3096 ], [ %2297, %2496 ], [ %2297, %2295 ], [ %3222, %3218 ], [ %2297, %3216 ], [ %3172, %3168 ], [ %3135, %3129 ], [ %2297, %2315 ]
  %3249 = phi float [ %3097, %3096 ], [ %2298, %2496 ], [ %2298, %2295 ], [ %3097, %3218 ], [ %3097, %3216 ], [ %3097, %3168 ], [ %3097, %3129 ], [ %2298, %2315 ]
  %3250 = phi float [ %3098, %3096 ], [ %2299, %2496 ], [ %2299, %2295 ], [ %3098, %3218 ], [ %3098, %3216 ], [ %3098, %3168 ], [ %3098, %3129 ], [ %2299, %2315 ]
  %3251 = phi float [ %3099, %3096 ], [ %2300, %2496 ], [ %2300, %2295 ], [ %3099, %3218 ], [ %3099, %3216 ], [ %3099, %3168 ], [ %3099, %3129 ], [ %2300, %2315 ]
  %3252 = phi float [ %3100, %3096 ], [ %2301, %2496 ], [ %2301, %2295 ], [ %3100, %3218 ], [ %3100, %3216 ], [ %3100, %3168 ], [ %3100, %3129 ], [ %2301, %2315 ]
  %3253 = phi float [ %3101, %3096 ], [ %2302, %2496 ], [ %2302, %2295 ], [ %3101, %3218 ], [ %3101, %3216 ], [ %3101, %3168 ], [ %3101, %3129 ], [ %2302, %2315 ]
  %3254 = phi float [ %3102, %3096 ], [ %2303, %2496 ], [ %2303, %2295 ], [ %3102, %3218 ], [ %3102, %3216 ], [ %3102, %3168 ], [ %3102, %3129 ], [ %2303, %2315 ]
  %3255 = phi float [ %2304, %3096 ], [ %2304, %2496 ], [ %2304, %2295 ], [ %3243, %3218 ], [ %2304, %3216 ], [ %3213, %3168 ], [ %3163, %3129 ], [ %2304, %2315 ]
  %3256 = phi float [ %2305, %3096 ], [ %2305, %2496 ], [ %2305, %2295 ], [ %3244, %3218 ], [ %2305, %3216 ], [ %3214, %3168 ], [ %3164, %3129 ], [ %2305, %2315 ]
  %3257 = phi float [ %2306, %3096 ], [ %2306, %2496 ], [ %2306, %2295 ], [ %3245, %3218 ], [ %2306, %3216 ], [ %3215, %3168 ], [ %3165, %3129 ], [ %2306, %2315 ]
  %3258 = phi float [ %2307, %3096 ], [ %2307, %2496 ], [ %2307, %2295 ], [ %3233, %3218 ], [ %2307, %3216 ], [ %3203, %3168 ], [ %3148, %3129 ], [ %2307, %2315 ]
  %3259 = phi float [ %2308, %3096 ], [ %2308, %2496 ], [ %2308, %2295 ], [ %3234, %3218 ], [ %2308, %3216 ], [ %3204, %3168 ], [ %3149, %3129 ], [ %2308, %2315 ]
  %3260 = phi float [ %2309, %3096 ], [ %2309, %2496 ], [ %2309, %2295 ], [ %3235, %3218 ], [ %2309, %3216 ], [ %3205, %3168 ], [ %3150, %3129 ], [ %2309, %2315 ]
  %3261 = phi float [ %3103, %3096 ], [ %2310, %2496 ], [ %2310, %2295 ], [ %3103, %3218 ], [ %3103, %3216 ], [ %3103, %3168 ], [ %3103, %3129 ], [ %2310, %2315 ]
  %3262 = phi float [ %2311, %3096 ], [ %2311, %2496 ], [ %2311, %2295 ], [ %3229, %3218 ], [ %2311, %3216 ], [ %3199, %3168 ], [ %3141, %3129 ], [ %2311, %2315 ]
  %3263 = phi float [ %2312, %3096 ], [ %2312, %2496 ], [ %2312, %2295 ], [ %3226, %3218 ], [ %2312, %3216 ], [ %3176, %3168 ], [ %3138, %3129 ], [ %2312, %2315 ]
  %3264 = phi float [ %2313, %3096 ], [ %2313, %2496 ], [ %2313, %2295 ], [ %3237, %3218 ], [ %2313, %3216 ], [ %3207, %3168 ], [ %3153, %3129 ], [ %2313, %2315 ]
  %3265 = phi float [ %2314, %3096 ], [ %2314, %2496 ], [ %2314, %2295 ], [ %3239, %3218 ], [ %2314, %3216 ], [ %3209, %3168 ], [ %3156, %3129 ], [ %2314, %2315 ]
  br i1 %638, label %4197, label %3266

; <label>:3266                                    ; preds = %3246
  %3267 = icmp ult i32 %692, 4
  %3268 = add i32 %52, 72
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = add i32 %52, 76
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = or i32 %3273, %3270
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %4197, label %3276

; <label>:3276                                    ; preds = %3266
  %3277 = and i32 %3270, 262144
  %3278 = icmp ne i32 %3277, 0
  %3279 = select i1 %3278, float %59, float 1.000000e+00
  %3280 = select i1 %3278, float %60, float 0.000000e+00
  %3281 = select i1 %3278, float %61, float 0.000000e+00
  %3282 = select i1 %3278, float %62, float 1.000000e+00
  %3283 = select i1 %3278, float %63, float %91
  %3284 = select i1 %3278, float %64, float %92
  %3285 = add i32 %52, 332
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = lshr i32 %3287, 16
  %3289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3288)  ; LegacyF16ToF32(value)
  %3290 = fmul fast float %3289, 0x3F50624DE0000000
  %3291 = add i32 %52, 136
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = lshr i32 %3293, 16
  %3295 = and i32 %3294, 255
  %3296 = lshr i32 %3293, 24
  %3297 = add i32 %52, 340
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 65535
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = lshr i32 %3299, 16
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = add i32 %52, 80
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = lshr i32 %3306, 22
  %3308 = shl nuw nsw i32 %3307, 5
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = shl i32 %3306, 4
  %3311 = and i32 %3310, 32752
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = lshr i32 %3306, 7
  %3314 = and i32 %3313, 32752
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 3
  %3318 = fmul fast float %3317, 1.000000e+03
  %3319 = fmul fast float %3318, %627
  %3320 = call float @dx.op.unary.f32(i32 22, float %3319)  ; Frc(value)
  %3321 = fadd fast float %3320, %615
  %3322 = fmul fast float %3318, %629
  %3323 = call float @dx.op.unary.f32(i32 22, float %3322)  ; Frc(value)
  %3324 = fadd fast float %3323, %616
  %3325 = fmul fast float %3290, %3318
  %3326 = call float @dx.op.unary.f32(i32 22, float %3325)  ; Frc(value)
  %3327 = fmul fast float %3326, 0x401921FB60000000
  %3328 = fadd fast float %3327, %3309
  %3329 = call float @dx.op.unary.f32(i32 13, float %3328)  ; Sin(value)
  %3330 = call float @dx.op.unary.f32(i32 12, float %3328)  ; Cos(value)
  %3331 = fsub fast float -0.000000e+00, %3329
  %3332 = fadd fast float %3283, -5.000000e-01
  %3333 = fadd fast float %3284, -5.000000e-01
  %3334 = fmul fast float %3301, %3332
  %3335 = fmul fast float %3303, %3333
  %3336 = fadd fast float %3334, 5.000000e-01
  %3337 = fadd fast float %3335, 5.000000e-01
  %3338 = fmul fast float %3312, %3336
  %3339 = fmul fast float %3315, %3337
  %3340 = fmul fast float %3330, %3338
  %3341 = call float @dx.op.tertiary.f32(i32 46, float %3331, float %3339, float %3340)  ; FMad(a,b,c)
  %3342 = fmul fast float %3329, %3338
  %3343 = call float @dx.op.tertiary.f32(i32 46, float %3330, float %3339, float %3342)  ; FMad(a,b,c)
  %3344 = fadd fast float %3321, %3341
  %3345 = fadd fast float %3324, %3343
  %3346 = icmp ugt i32 %3295, 1
  %3347 = icmp ugt i32 %3293, 33554431
  %3348 = or i1 %3347, %3346
  br i1 %3348, label %3349, label %3374

; <label>:3349                                    ; preds = %3276
  %3350 = add i32 %52, 276
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = lshr i32 %3352, 16
  %3354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3353)  ; LegacyF16ToF32(value)
  %3355 = fmul fast float %3317, %3354
  %3356 = call float @dx.op.unary.f32(i32 22, float %3355)  ; Frc(value)
  %3357 = mul nuw nsw i32 %3295, %3296
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3356, %3358
  %3360 = call float @dx.op.unary.f32(i32 27, float %3359)  ; Round_ni(value)
  %3361 = fptoui float %3360 to i32
  %3362 = urem i32 %3361, %3295
  %3363 = udiv i32 %3361, %3296
  %3364 = call float @dx.op.unary.f32(i32 22, float %3344)  ; Frc(value)
  %3365 = call float @dx.op.unary.f32(i32 22, float %3345)  ; Frc(value)
  %3366 = uitofp i32 %3362 to float
  %3367 = uitofp i32 %3363 to float
  %3368 = fadd fast float %3364, %3366
  %3369 = fadd fast float %3365, %3367
  %3370 = uitofp i32 %3295 to float
  %3371 = uitofp i32 %3296 to float
  %3372 = fdiv fast float %3368, %3370
  %3373 = fdiv fast float %3369, %3371
  br label %3374

; <label>:3374                                    ; preds = %3349, %3276
  %3375 = phi float [ %3372, %3349 ], [ %3344, %3276 ]
  %3376 = phi float [ %3373, %3349 ], [ %3345, %3276 ]
  %3377 = and i32 %3270, 256
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3425, label %3379

; <label>:3379                                    ; preds = %3374
  %3380 = add i32 %52, 484
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %3382, 0
  %3384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3384, %dx.types.Handle %106, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = add i32 %52, 148
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = shl i32 %3389, 4
  %3391 = and i32 %3390, 32752
  %3392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3391)  ; LegacyF16ToF32(value)
  %3393 = lshr i32 %3389, 7
  %3394 = and i32 %3393, 32752
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = fsub fast float 1.000000e+00, %687
  %3397 = call float @dx.op.binary.f32(i32 35, float %3396, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3398 = bitcast float %687 to i32
  %3399 = sitofp i32 %3398 to float
  %3400 = fadd fast float %3399, 0xC1CFBF8940000000
  %3401 = fmul fast float %3395, %3400
  %3402 = fadd fast float %3401, 0x41CFBF8940000000
  %3403 = fptosi float %3402 to i32
  %3404 = bitcast i32 %3403 to float
  %3405 = bitcast float %3397 to i32
  %3406 = sitofp i32 %3405 to float
  %3407 = fadd fast float %3406, 0xC1CFBF8940000000
  %3408 = fmul fast float %3407, %3395
  %3409 = fadd fast float %3408, 0x41CFBF8940000000
  %3410 = fptosi float %3409 to i32
  %3411 = bitcast i32 %3410 to float
  %3412 = fmul fast float %3404, %3392
  %3413 = fmul fast float %3411, %3392
  %3414 = fsub fast float %3397, %3412
  %3415 = fadd fast float %3413, %3397
  %3416 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3417 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3418 = fsub fast float %3386, %3416
  %3419 = fsub fast float %3417, %3416
  %3420 = bitcast float %3419 to i32
  %3421 = sub nsw i32 2129859010, %3420
  %3422 = bitcast i32 %3421 to float
  %3423 = fmul fast float %3422, %3418
  %3424 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  br label %3425

; <label>:3425                                    ; preds = %3379, %3374
  %3426 = phi float [ %3424, %3379 ], [ %687, %3374 ]
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 128
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3447, label %3431

; <label>:3431                                    ; preds = %3425
  %3432 = add i32 %52, 468
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = add i32 %3434, 0
  %3436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3436, %dx.types.Handle %106, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = and i32 %3440, 524288
  %3442 = icmp ne i32 %3441, 0
  %3443 = fcmp fast ogt float %3438, 0x3FE0101020000000
  %3444 = select i1 %3443, float 1.000000e+00, float 0.000000e+00
  %3445 = select i1 %3442, float %3444, float %3438
  %3446 = fmul fast float %3445, %3426
  br label %3447

; <label>:3447                                    ; preds = %3431, %3425
  %3448 = phi float [ %3446, %3431 ], [ %3426, %3425 ]
  %3449 = fcmp fast ult float %3448, 0x3F70101020000000
  br i1 %3449, label %4197, label %3450

; <label>:3450                                    ; preds = %3447
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 16
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %3653, label %3455

; <label>:3455                                    ; preds = %3450
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = add i32 %52, 420
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %3460, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3462, %dx.types.Handle %105, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = extractvalue %dx.types.ResRet.f32 %3463, 3
  %3468 = and i32 %3457, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = lshr i32 %3457, 8
  %3471 = and i32 %3470, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3467, %3469
  %3474 = fadd fast float %3473, %3472
  %3475 = fmul fast float %3474, 0x3F70101000000000
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = and i32 %3477, 512
  %3479 = icmp eq i32 %3478, 0
  br i1 %3479, label %3488, label %3480

; <label>:3480                                    ; preds = %3455
  %3481 = add i32 %52, 504
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = add i32 %3483, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3485, %dx.types.Handle %106, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  br label %3488

; <label>:3488                                    ; preds = %3480, %3455
  %3489 = phi float [ %3487, %3480 ], [ 1.000000e+00, %3455 ]
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 33554432
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3600, label %3494

; <label>:3494                                    ; preds = %3488
  %3495 = add i32 %52, 272
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, 65535
  %3499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3498)  ; LegacyF16ToF32(value)
  %3500 = lshr i32 %3497, 16
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = add i32 %52, 276
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 65535
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = lshr i32 %3508, 24
  %3510 = uitofp i32 %3509 to float
  %3511 = fmul fast float %3510, 0x3F70101020000000
  %3512 = and i32 %3508, 255
  %3513 = uitofp i32 %3512 to float
  %3514 = fmul fast float %3513, 0x3F70101020000000
  %3515 = lshr i32 %3508, 8
  %3516 = and i32 %3515, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = fmul fast float %3517, 0x3F70101020000000
  %3519 = lshr i32 %3508, 16
  %3520 = and i32 %3519, 255
  %3521 = uitofp i32 %3520 to float
  %3522 = fmul fast float %3521, 0x3F70101020000000
  %3523 = add i32 %52, 268
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = lshr i32 %3525, 24
  %3527 = uitofp i32 %3526 to float
  %3528 = fmul fast float %3527, 0x3F70101020000000
  %3529 = and i32 %3525, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = fmul fast float %3530, 0x3F70101020000000
  %3532 = lshr i32 %3525, 8
  %3533 = and i32 %3532, 255
  %3534 = uitofp i32 %3533 to float
  %3535 = fmul fast float %3534, 0x3F70101020000000
  %3536 = lshr i32 %3525, 16
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = fmul fast float %3538, 0x3F70101020000000
  %3540 = bitcast float %3464 to i32
  %3541 = ashr i32 %3540, 1
  %3542 = sub nsw i32 1597463174, %3541
  %3543 = bitcast i32 %3542 to float
  %3544 = fmul fast float %3464, 5.000000e-01
  %3545 = fmul fast float %3543, %3543
  %3546 = fmul fast float %3545, %3544
  %3547 = fsub fast float 1.500000e+00, %3546
  %3548 = fmul fast float %3543, %3464
  %3549 = fmul fast float %3548, %3547
  %3550 = bitcast float %3465 to i32
  %3551 = ashr i32 %3550, 1
  %3552 = sub nsw i32 1597463174, %3551
  %3553 = bitcast i32 %3552 to float
  %3554 = fmul fast float %3465, 5.000000e-01
  %3555 = fmul fast float %3553, %3553
  %3556 = fmul fast float %3555, %3554
  %3557 = fsub fast float 1.500000e+00, %3556
  %3558 = fmul fast float %3553, %3465
  %3559 = fmul fast float %3558, %3557
  %3560 = bitcast float %3466 to i32
  %3561 = ashr i32 %3560, 1
  %3562 = sub nsw i32 1597463174, %3561
  %3563 = bitcast i32 %3562 to float
  %3564 = fmul fast float %3466, 5.000000e-01
  %3565 = fmul fast float %3563, %3563
  %3566 = fmul fast float %3565, %3564
  %3567 = fsub fast float 1.500000e+00, %3566
  %3568 = fmul fast float %3563, %3466
  %3569 = fmul fast float %3568, %3567
  %3570 = fsub fast float %3549, %3531
  %3571 = fsub fast float %3559, %3535
  %3572 = fsub fast float %3569, %3539
  %3573 = fmul fast float %3570, %3499
  %3574 = fmul fast float %3571, %3501
  %3575 = fmul fast float %3572, %3506
  %3576 = fadd fast float %3573, %3514
  %3577 = fadd fast float %3574, %3518
  %3578 = fadd fast float %3575, %3522
  %3579 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3580 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3582 = fmul fast float %3579, %3579
  %3583 = fmul fast float %3580, %3580
  %3584 = fmul fast float %3581, %3581
  %3585 = fsub fast float %3582, %3464
  %3586 = fsub fast float %3583, %3465
  %3587 = fsub fast float %3584, %3466
  %3588 = fmul fast float %3585, %3489
  %3589 = fmul fast float %3586, %3489
  %3590 = fmul fast float %3587, %3489
  %3591 = fadd fast float %3588, %3464
  %3592 = fadd fast float %3589, %3465
  %3593 = fadd fast float %3590, %3466
  %3594 = fadd fast float %3511, %3475
  %3595 = fsub fast float %3594, %3528
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fsub fast float %3596, %3475
  %3598 = fmul fast float %3597, %3489
  %3599 = fadd fast float %3598, %3475
  br label %3653

; <label>:3600                                    ; preds = %3488
  %3601 = and i32 %3491, 134217728
  %3602 = icmp eq i32 %3601, 0
  br i1 %3602, label %3637, label %3603

; <label>:3603                                    ; preds = %3600
  %3604 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3605 = call float @dx.op.unary.f32(i32 24, float %604)  ; Sqrt(value)
  %3606 = call float @dx.op.unary.f32(i32 24, float %605)  ; Sqrt(value)
  %3607 = fadd fast float %3604, -5.000000e-01
  %3608 = fadd fast float %3605, -5.000000e-01
  %3609 = fadd fast float %3606, -5.000000e-01
  %3610 = fmul fast float %3607, %3489
  %3611 = fmul fast float %3608, %3489
  %3612 = fmul fast float %3609, %3489
  %3613 = fadd fast float %3610, 5.000000e-01
  %3614 = fadd fast float %3611, 5.000000e-01
  %3615 = fadd fast float %3612, 5.000000e-01
  %3616 = call float @dx.op.unary.f32(i32 24, float %3464)  ; Sqrt(value)
  %3617 = call float @dx.op.unary.f32(i32 24, float %3465)  ; Sqrt(value)
  %3618 = call float @dx.op.unary.f32(i32 24, float %3466)  ; Sqrt(value)
  %3619 = fmul fast float %3613, 2.000000e+00
  %3620 = fsub fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3616
  %3622 = fadd fast float %3621, %3619
  %3623 = fmul fast float %3622, %3616
  %3624 = fmul fast float %3614, 2.000000e+00
  %3625 = fsub fast float 1.000000e+00, %3624
  %3626 = fmul fast float %3625, %3617
  %3627 = fadd fast float %3626, %3624
  %3628 = fmul fast float %3627, %3617
  %3629 = fmul fast float %3615, 2.000000e+00
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3630, %3618
  %3632 = fadd fast float %3631, %3629
  %3633 = fmul fast float %3632, %3618
  %3634 = fmul fast float %3623, %3623
  %3635 = fmul fast float %3628, %3628
  %3636 = fmul fast float %3633, %3633
  br label %3653

; <label>:3637                                    ; preds = %3600
  %3638 = fmul fast float %603, %603
  %3639 = fmul fast float %604, %604
  %3640 = fmul fast float %605, %605
  %3641 = fadd fast float %3638, -1.000000e+00
  %3642 = fadd fast float %3639, -1.000000e+00
  %3643 = fadd fast float %3640, -1.000000e+00
  %3644 = fmul fast float %3489, %3641
  %3645 = fmul fast float %3489, %3642
  %3646 = fmul fast float %3489, %3643
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fadd fast float %3645, 1.000000e+00
  %3649 = fadd fast float %3646, 1.000000e+00
  %3650 = fmul fast float %3647, %3464
  %3651 = fmul fast float %3648, %3465
  %3652 = fmul fast float %3649, %3466
  br label %3653

; <label>:3653                                    ; preds = %3637, %3603, %3494, %3450
  %3654 = phi float [ %3599, %3494 ], [ %3475, %3603 ], [ %3475, %3637 ], [ 0x3FA23C0BE0000000, %3450 ]
  %3655 = phi float [ %3591, %3494 ], [ %3634, %3603 ], [ %3650, %3637 ], [ 1.000000e+00, %3450 ]
  %3656 = phi float [ %3592, %3494 ], [ %3635, %3603 ], [ %3651, %3637 ], [ 1.000000e+00, %3450 ]
  %3657 = phi float [ %3593, %3494 ], [ %3636, %3603 ], [ %3652, %3637 ], [ 1.000000e+00, %3450 ]
  %3658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.i32 %3658, 1
  %3660 = and i32 %3659, 1
  %3661 = icmp ne i32 %3660, 0
  %3662 = add i32 %52, 356
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 32
  %3666 = icmp ne i32 %3665, 0
  %3667 = and i1 %3661, %3666
  %3668 = select i1 %3667, float 1.000000e+00, float %3655
  %3669 = select i1 %3667, float 0x3FD3333340000000, float %3656
  %3670 = select i1 %3667, float 0x3FD3333340000000, float %3657
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 32
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3747, label %3675

; <label>:3675                                    ; preds = %3653
  %3676 = add i32 %52, 140
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %52, 436
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = add i32 %3681, 0
  %3683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3683, %dx.types.Handle %105, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3689 = and i32 %3678, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = lshr i32 %3678, 8
  %3692 = and i32 %3691, 255
  %3693 = uitofp i32 %3692 to float
  %3694 = lshr i32 %3678, 16
  %3695 = and i32 %3694, 255
  %3696 = uitofp i32 %3695 to float
  %3697 = fmul fast float %3696, 0x3F70101000000000
  %3698 = fmul fast float %3685, %3690
  %3699 = fadd fast float %3698, %3693
  %3700 = fmul fast float %3699, 0x3F70101000000000
  %3701 = fadd fast float %3686, -5.000000e-01
  %3702 = fadd fast float %3688, -5.000000e-01
  %3703 = fmul fast float %3701, %3697
  %3704 = fmul fast float %3702, %3697
  %3705 = fadd fast float %3703, 5.000000e-01
  %3706 = fadd fast float %3704, 5.000000e-01
  %3707 = fmul fast float %3705, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fmul fast float %3706, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = fadd fast float %3708, %3710
  %3712 = fmul fast float %3711, 5.000000e-01
  %3713 = fsub fast float %3708, %3710
  %3714 = fmul fast float %3713, 5.000000e-01
  %3715 = call float @dx.op.unary.f32(i32 6, float %3712)  ; FAbs(value)
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3718 = fsub fast float %3716, %3717
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3714, float %3718, float %3712, float %3714, float %3718)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = call float @dx.op.unary.f32(i32 25, float %3719)  ; Rsqrt(value)
  %3721 = fmul fast float %3712, %3720
  %3722 = fmul fast float %3714, %3720
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = and i32 %3724, 67108864
  %3726 = icmp eq i32 %3725, 0
  br i1 %3726, label %3743, label %3727

; <label>:3727                                    ; preds = %3675
  %3728 = add i32 %52, 328
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 65535
  %3732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3731)  ; LegacyF16ToF32(value)
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = and i32 %3734, 65535
  %3736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3735)  ; LegacyF16ToF32(value)
  %3737 = lshr i32 %3730, 16
  %3738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3737)  ; LegacyF16ToF32(value)
  %3739 = fsub fast float %3700, %3738
  %3740 = fmul fast float %3739, %3732
  %3741 = fadd fast float %3740, %3736
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  br label %3743

; <label>:3743                                    ; preds = %3727, %3675
  %3744 = phi float [ %3742, %3727 ], [ %3700, %3675 ]
  %3745 = call float @dx.op.dot2.f32(i32 54, float %3721, float %3722, float %3279, float %3280)  ; Dot2(ax,ay,bx,by)
  %3746 = call float @dx.op.dot2.f32(i32 54, float %3721, float %3722, float %3281, float %3282)  ; Dot2(ax,ay,bx,by)
  br label %3747

; <label>:3747                                    ; preds = %3743, %3653
  %3748 = phi float [ %3744, %3743 ], [ 0x3FD6666660000000, %3653 ]
  %3749 = phi float [ %3745, %3743 ], [ 0.000000e+00, %3653 ]
  %3750 = phi float [ %3746, %3743 ], [ 0.000000e+00, %3653 ]
  %3751 = phi float [ %3687, %3743 ], [ 1.000000e+00, %3653 ]
  %3752 = add i32 %52, 208
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = lshr i32 %3754, 22
  %3756 = shl nuw nsw i32 %3755, 5
  %3757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3756)  ; LegacyF16ToF32(value)
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = and i32 %3759, 64
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3795, label %3762

; <label>:3762                                    ; preds = %3747
  %3763 = add i32 %52, 452
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = add i32 %3765, 0
  %3767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = and i32 %3769, 131072
  %3771 = icmp eq i32 %3770, 0
  %3772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3767, %dx.types.Handle %105, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.f32 %3772, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3772, 2
  %3776 = fmul fast float %586, %3773
  %3777 = fmul fast float %587, %3774
  %3778 = fmul fast float %588, %3775
  br i1 %3771, label %3785, label %3779

; <label>:3779                                    ; preds = %3762
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = fmul fast float %3781, %3776
  %3783 = fmul fast float %3781, %3777
  %3784 = fmul fast float %3781, %3778
  br label %3785

; <label>:3785                                    ; preds = %3779, %3762
  %3786 = phi float [ %3782, %3779 ], [ %3776, %3762 ]
  %3787 = phi float [ %3783, %3779 ], [ %3777, %3762 ]
  %3788 = phi float [ %3784, %3779 ], [ %3778, %3762 ]
  %3789 = fmul fast float %3786, %3757
  %3790 = select i1 %254, float %3789, float %3786
  %3791 = call float @dx.op.dot3.f32(i32 55, float %3790, float %3787, float %3788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = select i1 %254, float 0.000000e+00, float %3786
  %3793 = select i1 %254, float %3791, float %3787
  %3794 = select i1 %254, float 0.000000e+00, float %3788
  br label %3795

; <label>:3795                                    ; preds = %3785, %3747
  %3796 = phi float [ %3792, %3785 ], [ 0.000000e+00, %3747 ]
  %3797 = phi float [ %3793, %3785 ], [ 0.000000e+00, %3747 ]
  %3798 = phi float [ %3794, %3785 ], [ 0.000000e+00, %3747 ]
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = and i32 %3800, 1024
  %3802 = icmp eq i32 %3801, 0
  br i1 %3802, label %3833, label %3803

; <label>:3803                                    ; preds = %3795
  %3804 = add i32 %52, 200
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = fmul fast float %3808, 0x3F70101020000000
  %3810 = lshr i32 %3806, 8
  %3811 = and i32 %3810, 255
  %3812 = uitofp i32 %3811 to float
  %3813 = fmul fast float %3812, 0x3F70101020000000
  %3814 = lshr i32 %3806, 16
  %3815 = and i32 %3814, 255
  %3816 = uitofp i32 %3815 to float
  %3817 = fmul fast float %3816, 0x3F70101020000000
  %3818 = fmul fast float %3809, %3809
  %3819 = fmul fast float %3813, %3813
  %3820 = fmul fast float %3817, %3817
  %3821 = add i32 %52, 520
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = add i32 %3823, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3825, %dx.types.Handle %106, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = fmul fast float %3818, %3827
  %3831 = fmul fast float %3819, %3828
  %3832 = fmul fast float %3820, %3829
  br label %3833

; <label>:3833                                    ; preds = %3803, %3795
  %3834 = phi float [ %3830, %3803 ], [ 0.000000e+00, %3795 ]
  %3835 = phi float [ %3831, %3803 ], [ 0.000000e+00, %3795 ]
  %3836 = phi float [ %3832, %3803 ], [ 0.000000e+00, %3795 ]
  %3837 = fcmp fast ogt float %3834, 0.000000e+00
  %3838 = fcmp fast ogt float %3835, 0.000000e+00
  %3839 = fcmp fast ogt float %3836, 0.000000e+00
  %3840 = call float @dx.op.unary.f32(i32 23, float %3834)  ; Log(value)
  %3841 = call float @dx.op.unary.f32(i32 23, float %3835)  ; Log(value)
  %3842 = call float @dx.op.unary.f32(i32 23, float %3836)  ; Log(value)
  %3843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.i32 %3843, 0
  %3845 = lshr i32 %3844, 7
  %3846 = and i32 %3845, 32752
  %3847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3846)  ; LegacyF16ToF32(value)
  %3848 = fmul fast float %3840, 0xBFE62E4300000000
  %3849 = fmul fast float %3848, %3847
  %3850 = fmul fast float %3841, 0xBFE62E4300000000
  %3851 = fmul fast float %3850, %3847
  %3852 = fmul fast float %3842, 0xBFE62E4300000000
  %3853 = fmul fast float %3852, %3847
  %3854 = select i1 %3837, float %3849, float 1.270000e+02
  %3855 = select i1 %3838, float %3851, float 1.270000e+02
  %3856 = select i1 %3839, float %3853, float 1.270000e+02
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = and i32 %3858, 14336
  %3860 = icmp eq i32 %3859, 0
  br i1 %3860, label %3920, label %3861

; <label>:3861                                    ; preds = %3833
  %3862 = add i32 %52, 536
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = add i32 %3864, 0
  %3866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3866, %dx.types.Handle %106, float %3375, float %3376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = and i32 %3872, 1048576
  %3874 = icmp ne i32 %3873, 0
  %3875 = select i1 %3874, float 1.000000e+00, float %3869
  %3876 = and i32 %3872, 8192
  %3877 = icmp eq i32 %3876, 0
  br i1 %3877, label %3892, label %3878

; <label>:3878                                    ; preds = %3861
  %3879 = select i1 %3874, float %3869, float %3868
  %3880 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3881 = select i1 %3874, float %3880, float %3868
  %3882 = add i32 %52, 144
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3882, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = lshr i32 %3884, 16
  %3886 = and i32 %3885, 255
  %3887 = uitofp i32 %3886 to float
  %3888 = fmul fast float %3887, 0x3F80101020000000
  %3889 = fmul fast float %3888, %3881
  %3890 = fmul fast float %3888, %3868
  %3891 = fmul fast float %3888, %3879
  br label %3892

; <label>:3892                                    ; preds = %3878, %3861
  %3893 = phi float [ %3889, %3878 ], [ 0.000000e+00, %3861 ]
  %3894 = phi float [ %3890, %3878 ], [ 0.000000e+00, %3861 ]
  %3895 = phi float [ %3891, %3878 ], [ 0.000000e+00, %3861 ]
  %3896 = and i32 %3872, 2048
  %3897 = icmp eq i32 %3896, 0
  br i1 %3897, label %3906, label %3898

; <label>:3898                                    ; preds = %3892
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = shl i32 %3900, 4
  %3902 = and i32 %3901, 32752
  %3903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3902)  ; LegacyF16ToF32(value)
  %3904 = fmul fast float %3903, %3870
  %3905 = call float @dx.op.binary.f32(i32 35, float %3904, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3906

; <label>:3906                                    ; preds = %3898, %3892
  %3907 = phi float [ %3905, %3898 ], [ 0x3F70101020000000, %3892 ]
  %3908 = and i32 %3872, 4096
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %3920, label %3910

; <label>:3910                                    ; preds = %3906
  %3911 = add i32 %52, 212
  %3912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.i32 %3912, 0
  %3914 = and i32 %3913, 65535
  %3915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3914)  ; LegacyF16ToF32(value)
  %3916 = lshr i32 %3913, 16
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = fmul fast float %3915, %3875
  %3919 = fadd fast float %3918, %3917
  br label %3920

; <label>:3920                                    ; preds = %3910, %3906, %3833
  %3921 = phi float [ %3893, %3910 ], [ %3893, %3906 ], [ 0.000000e+00, %3833 ]
  %3922 = phi float [ %3894, %3910 ], [ %3894, %3906 ], [ 0.000000e+00, %3833 ]
  %3923 = phi float [ %3895, %3910 ], [ %3895, %3906 ], [ 0.000000e+00, %3833 ]
  %3924 = phi float [ %3907, %3910 ], [ %3907, %3906 ], [ 0x3F70101020000000, %3833 ]
  %3925 = phi float [ %3919, %3910 ], [ 0.000000e+00, %3906 ], [ 0.000000e+00, %3833 ]
  br i1 %3267, label %3926, label %3961

; <label>:3926                                    ; preds = %3920
  %3927 = fmul fast float %3924, 2.000000e+00
  %3928 = fcmp fast olt float %3854, 1.270000e+02
  %3929 = fcmp fast olt float %3855, 1.270000e+02
  %3930 = fcmp fast olt float %3856, 1.270000e+02
  %3931 = fmul fast float %3854, 0xBFF7154760000000
  %3932 = fmul fast float %3931, %3927
  %3933 = fmul fast float %3855, 0xBFF7154760000000
  %3934 = fmul fast float %3933, %3927
  %3935 = fmul fast float %3856, 0xBFF7154760000000
  %3936 = fmul fast float %3935, %3927
  %3937 = call float @dx.op.unary.f32(i32 21, float %3932)  ; Exp(value)
  %3938 = call float @dx.op.unary.f32(i32 21, float %3934)  ; Exp(value)
  %3939 = call float @dx.op.unary.f32(i32 21, float %3936)  ; Exp(value)
  %3940 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3941 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3942 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3943 = fadd fast float %3940, -1.000000e+00
  %3944 = select i1 %3928, float %3943, float -1.000000e+00
  %3945 = fadd fast float %3941, -1.000000e+00
  %3946 = select i1 %3929, float %3945, float -1.000000e+00
  %3947 = fadd fast float %3942, -1.000000e+00
  %3948 = select i1 %3930, float %3947, float -1.000000e+00
  %3949 = fmul fast float %3944, %3448
  %3950 = fmul fast float %3946, %3448
  %3951 = fmul fast float %3948, %3448
  %3952 = fadd fast float %3949, 1.000000e+00
  %3953 = fadd fast float %3950, 1.000000e+00
  %3954 = fadd fast float %3951, 1.000000e+00
  %3955 = fmul fast float %3952, %3249
  %3956 = fmul fast float %3953, %3250
  %3957 = fmul fast float %3954, %3251
  %3958 = fmul fast float %3952, %3252
  %3959 = fmul fast float %3953, %3253
  %3960 = fmul fast float %3954, %3254
  br label %3961

; <label>:3961                                    ; preds = %3926, %3920
  %3962 = phi float [ %3955, %3926 ], [ %3249, %3920 ]
  %3963 = phi float [ %3956, %3926 ], [ %3250, %3920 ]
  %3964 = phi float [ %3957, %3926 ], [ %3251, %3920 ]
  %3965 = phi float [ %3958, %3926 ], [ %3252, %3920 ]
  %3966 = phi float [ %3959, %3926 ], [ %3253, %3920 ]
  %3967 = phi float [ %3960, %3926 ], [ %3254, %3920 ]
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = and i32 %3969, 3
  %3971 = icmp eq i32 %3970, 3
  br i1 %3971, label %4047, label %3972

; <label>:3972                                    ; preds = %3961
  %3973 = and i32 %3969, 16
  %3974 = icmp ne i32 %3973, 0
  %3975 = select i1 %3974, float %3448, float 0.000000e+00
  %3976 = icmp eq i32 %3970, 0
  br i1 %3976, label %3977, label %4002

; <label>:3977                                    ; preds = %3972
  %3978 = and i32 %3969, 64
  %3979 = icmp ne i32 %3978, 0
  %3980 = select i1 %3979, float %3448, float 0.000000e+00
  %3981 = fsub fast float %3668, %3962
  %3982 = fsub fast float %3669, %3963
  %3983 = fsub fast float %3670, %3964
  %3984 = fmul fast float %3975, %3981
  %3985 = fmul fast float %3975, %3982
  %3986 = fmul fast float %3975, %3983
  %3987 = fadd fast float %3984, %3962
  %3988 = fadd fast float %3985, %3963
  %3989 = fadd fast float %3986, %3964
  %3990 = fsub fast float %3654, %3261
  %3991 = fmul fast float %3975, %3990
  %3992 = fadd fast float %3991, %3261
  %3993 = fsub fast float %3796, %3965
  %3994 = fsub fast float %3797, %3966
  %3995 = fsub fast float %3798, %3967
  %3996 = fmul fast float %3980, %3993
  %3997 = fmul fast float %3980, %3994
  %3998 = fmul fast float %3980, %3995
  %3999 = fadd fast float %3996, %3965
  %4000 = fadd fast float %3997, %3966
  %4001 = fadd fast float %3998, %3967
  br label %4047

; <label>:4002                                    ; preds = %3972
  %4003 = icmp eq i32 %3970, 1
  br i1 %4003, label %4004, label %4017

; <label>:4004                                    ; preds = %4002
  %4005 = fadd fast float %3668, -1.000000e+00
  %4006 = fadd fast float %3669, -1.000000e+00
  %4007 = fadd fast float %3670, -1.000000e+00
  %4008 = fmul fast float %3975, %4005
  %4009 = fmul fast float %3975, %4006
  %4010 = fmul fast float %3975, %4007
  %4011 = fadd fast float %4008, 1.000000e+00
  %4012 = fadd fast float %4009, 1.000000e+00
  %4013 = fadd fast float %4010, 1.000000e+00
  %4014 = fmul fast float %4011, %3962
  %4015 = fmul fast float %4012, %3963
  %4016 = fmul fast float %4013, %3964
  br label %4047

; <label>:4017                                    ; preds = %4002
  %4018 = icmp eq i32 %3970, 2
  br i1 %4018, label %4019, label %4047

; <label>:4019                                    ; preds = %4017
  %4020 = call float @dx.op.unary.f32(i32 24, float %3668)  ; Sqrt(value)
  %4021 = call float @dx.op.unary.f32(i32 24, float %3669)  ; Sqrt(value)
  %4022 = call float @dx.op.unary.f32(i32 24, float %3670)  ; Sqrt(value)
  %4023 = fadd fast float %4020, -5.000000e-01
  %4024 = fadd fast float %4021, -5.000000e-01
  %4025 = fadd fast float %4022, -5.000000e-01
  %4026 = fmul fast float %4023, %3975
  %4027 = fmul fast float %4024, %3975
  %4028 = fmul fast float %4025, %3975
  %4029 = fadd fast float %4026, 5.000000e-01
  %4030 = fadd fast float %4027, 5.000000e-01
  %4031 = fadd fast float %4028, 5.000000e-01
  %4032 = fmul fast float %4029, 2.000000e+00
  %4033 = fsub fast float 1.000000e+00, %4032
  %4034 = fmul fast float %4033, %3962
  %4035 = fadd fast float %4034, %4032
  %4036 = fmul fast float %4035, %3962
  %4037 = fmul fast float %4030, 2.000000e+00
  %4038 = fsub fast float 1.000000e+00, %4037
  %4039 = fmul fast float %4038, %3963
  %4040 = fadd fast float %4039, %4037
  %4041 = fmul fast float %4040, %3963
  %4042 = fmul fast float %4031, 2.000000e+00
  %4043 = fsub fast float 1.000000e+00, %4042
  %4044 = fmul fast float %4043, %3964
  %4045 = fadd fast float %4044, %4042
  %4046 = fmul fast float %4045, %3964
  br label %4047

; <label>:4047                                    ; preds = %4019, %4017, %4004, %3977, %3961
  %4048 = phi float [ %3962, %3961 ], [ %4036, %4019 ], [ %3962, %4017 ], [ %4014, %4004 ], [ %3987, %3977 ]
  %4049 = phi float [ %3963, %3961 ], [ %4041, %4019 ], [ %3963, %4017 ], [ %4015, %4004 ], [ %3988, %3977 ]
  %4050 = phi float [ %3964, %3961 ], [ %4046, %4019 ], [ %3964, %4017 ], [ %4016, %4004 ], [ %3989, %3977 ]
  %4051 = phi float [ %3965, %3961 ], [ %3965, %4019 ], [ %3965, %4017 ], [ %3965, %4004 ], [ %3999, %3977 ]
  %4052 = phi float [ %3966, %3961 ], [ %3966, %4019 ], [ %3966, %4017 ], [ %3966, %4004 ], [ %4000, %3977 ]
  %4053 = phi float [ %3967, %3961 ], [ %3967, %4019 ], [ %3967, %4017 ], [ %3967, %4004 ], [ %4001, %3977 ]
  %4054 = phi float [ %3261, %3961 ], [ %3261, %4019 ], [ %3261, %4017 ], [ %3261, %4004 ], [ %3992, %3977 ]
  %4055 = and i32 %3969, 12
  %4056 = icmp eq i32 %4055, 12
  br i1 %4056, label %4197, label %4057

; <label>:4057                                    ; preds = %4047
  %4058 = and i32 %3969, 2097184
  %4059 = icmp eq i32 %4058, 2097184
  %4060 = select i1 %4059, float %3448, float 0.000000e+00
  %4061 = and i32 %3969, 4194336
  %4062 = icmp eq i32 %4061, 4194336
  %4063 = select i1 %4062, float %3448, float 0.000000e+00
  %4064 = and i32 %3969, 8388640
  %4065 = icmp eq i32 %4064, 8388640
  %4066 = select i1 %4065, float %3448, float 0.000000e+00
  %4067 = and i32 %3969, 1024
  %4068 = icmp ne i32 %4067, 0
  %4069 = select i1 %4068, float %3448, float 0.000000e+00
  %4070 = and i32 %3969, 2048
  %4071 = icmp ne i32 %4070, 0
  %4072 = select i1 %4071, float %3448, float 0.000000e+00
  %4073 = and i32 %3969, 4096
  %4074 = icmp ne i32 %4073, 0
  %4075 = select i1 %4074, float %3448, float 0.000000e+00
  %4076 = and i32 %3969, 8192
  %4077 = icmp ne i32 %4076, 0
  %4078 = select i1 %4077, float %3448, float 0.000000e+00
  %4079 = icmp eq i32 %4055, 0
  br i1 %4079, label %4080, label %4117

; <label>:4080                                    ; preds = %4057
  %4081 = fsub fast float %3749, %3247
  %4082 = fsub fast float %3750, %3248
  %4083 = fmul fast float %4060, %4081
  %4084 = fmul fast float %4060, %4082
  %4085 = fadd fast float %4083, %3247
  %4086 = fadd fast float %4084, %3248
  %4087 = fsub fast float %3751, %3263
  %4088 = fmul fast float %4063, %4087
  %4089 = fadd fast float %4088, %3263
  %4090 = fsub fast float %3748, %3262
  %4091 = fmul fast float %4066, %4090
  %4092 = fadd fast float %4091, %3262
  %4093 = fsub fast float %3854, %3258
  %4094 = fsub fast float %3855, %3259
  %4095 = fsub fast float %3856, %3260
  %4096 = fmul fast float %4069, %4093
  %4097 = fmul fast float %4069, %4094
  %4098 = fmul fast float %4069, %4095
  %4099 = fadd fast float %4096, %3258
  %4100 = fadd fast float %4097, %3259
  %4101 = fadd fast float %4098, %3260
  %4102 = fsub fast float %3924, %3264
  %4103 = fmul fast float %4072, %4102
  %4104 = fadd fast float %4103, %3264
  %4105 = fsub fast float %3925, %3265
  %4106 = fmul fast float %4075, %4105
  %4107 = fadd fast float %4106, %3265
  %4108 = fsub fast float %3921, %3255
  %4109 = fsub fast float %3922, %3256
  %4110 = fsub fast float %3923, %3257
  %4111 = fmul fast float %4078, %4108
  %4112 = fmul fast float %4078, %4109
  %4113 = fmul fast float %4078, %4110
  %4114 = fadd fast float %4111, %3255
  %4115 = fadd fast float %4112, %3256
  %4116 = fadd fast float %4113, %3257
  br label %4197

; <label>:4117                                    ; preds = %4057
  %4118 = icmp eq i32 %4055, 4
  br i1 %4118, label %4119, label %4167

; <label>:4119                                    ; preds = %4117
  %4120 = fmul fast float %4060, %3749
  %4121 = fmul fast float %4060, %3750
  %4122 = fadd fast float %4120, %3247
  %4123 = fadd fast float %4121, %3248
  %4124 = call float @dx.op.binary.f32(i32 36, float %3263, float %3751)  ; FMin(a,b)
  %4125 = fsub fast float %4124, %3263
  %4126 = fmul fast float %4125, %4063
  %4127 = fadd fast float %4126, %3263
  %4128 = fadd fast float %3748, %3262
  %4129 = fmul fast float %4128, 0x3FF337FAE0000000
  %4130 = fmul fast float %3262, %3262
  %4131 = fmul fast float %3748, %3748
  %4132 = fadd fast float %4131, %4130
  %4133 = fmul fast float %4132, 0x3FE5152B00000000
  %4134 = fmul fast float %3262, 0xBFCC1F85E0000000
  %4135 = fmul fast float %4134, %3748
  %4136 = fadd fast float %4135, 0xBFE1363700000000
  %4137 = fadd fast float %4136, %4129
  %4138 = fsub fast float %4137, %4133
  %4139 = fmul fast float %4128, 0x3FBA6F0D00000000
  %4140 = fmul fast float %4132, 0x3FD0432880000000
  %4141 = fmul fast float %3262, 0xBFEF110800000000
  %4142 = fmul fast float %4141, %3748
  %4143 = fadd fast float %4142, 1.000000e+00
  %4144 = fsub fast float %4143, %4139
  %4145 = fadd fast float %4144, %4140
  %4146 = fdiv fast float %4138, %4145
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = fsub fast float %4147, %3262
  %4149 = fmul fast float %4148, %4066
  %4150 = fadd fast float %4149, %3262
  %4151 = fmul fast float %4069, %3854
  %4152 = fmul fast float %4069, %3855
  %4153 = fmul fast float %4069, %3856
  %4154 = fadd fast float %4151, %3258
  %4155 = fadd fast float %4152, %3259
  %4156 = fadd fast float %4153, %3260
  %4157 = fmul fast float %4072, %3924
  %4158 = fadd fast float %4157, %3264
  %4159 = fmul fast float %4075, %3925
  %4160 = fadd fast float %4159, %3265
  %4161 = fmul fast float %4078, %3921
  %4162 = fmul fast float %4078, %3922
  %4163 = fmul fast float %4078, %3923
  %4164 = fadd fast float %4161, %3255
  %4165 = fadd fast float %4162, %3256
  %4166 = fadd fast float %4163, %3257
  br label %4197

; <label>:4167                                    ; preds = %4117
  %4168 = icmp eq i32 %4055, 8
  br i1 %4168, label %4169, label %4197

; <label>:4169                                    ; preds = %4167
  %4170 = fmul fast float %4060, %3749
  %4171 = fmul fast float %4060, %3750
  %4172 = fadd fast float %4170, %3247
  %4173 = fadd fast float %4171, %3248
  %4174 = call float @dx.op.binary.f32(i32 36, float %3263, float %3751)  ; FMin(a,b)
  %4175 = fsub fast float %4174, %3263
  %4176 = fmul fast float %4175, %4063
  %4177 = fadd fast float %4176, %3263
  %4178 = fsub fast float %3748, %3262
  %4179 = fmul fast float %4066, %4178
  %4180 = fadd fast float %4179, %3262
  %4181 = fmul fast float %4069, %3854
  %4182 = fmul fast float %4069, %3855
  %4183 = fmul fast float %4069, %3856
  %4184 = fadd fast float %4181, %3258
  %4185 = fadd fast float %4182, %3259
  %4186 = fadd fast float %4183, %3260
  %4187 = fmul fast float %4072, %3924
  %4188 = fadd fast float %4187, %3264
  %4189 = fmul fast float %4075, %3925
  %4190 = fadd fast float %4189, %3265
  %4191 = fmul fast float %4078, %3921
  %4192 = fmul fast float %4078, %3922
  %4193 = fmul fast float %4078, %3923
  %4194 = fadd fast float %4191, %3255
  %4195 = fadd fast float %4192, %3256
  %4196 = fadd fast float %4193, %3257
  br label %4197

; <label>:4197                                    ; preds = %4169, %4167, %4119, %4080, %4047, %3447, %3266, %3246
  %4198 = phi float [ %3247, %4047 ], [ %3247, %3447 ], [ %3247, %3246 ], [ %3247, %3266 ], [ %4085, %4080 ], [ %4122, %4119 ], [ %3247, %4167 ], [ %4172, %4169 ]
  %4199 = phi float [ %3248, %4047 ], [ %3248, %3447 ], [ %3248, %3246 ], [ %3248, %3266 ], [ %4086, %4080 ], [ %4123, %4119 ], [ %3248, %4167 ], [ %4173, %4169 ]
  %4200 = phi float [ %4048, %4047 ], [ %3249, %3447 ], [ %3249, %3246 ], [ %3249, %3266 ], [ %4048, %4080 ], [ %4048, %4119 ], [ %4048, %4167 ], [ %4048, %4169 ]
  %4201 = phi float [ %4049, %4047 ], [ %3250, %3447 ], [ %3250, %3246 ], [ %3250, %3266 ], [ %4049, %4080 ], [ %4049, %4119 ], [ %4049, %4167 ], [ %4049, %4169 ]
  %4202 = phi float [ %4050, %4047 ], [ %3251, %3447 ], [ %3251, %3246 ], [ %3251, %3266 ], [ %4050, %4080 ], [ %4050, %4119 ], [ %4050, %4167 ], [ %4050, %4169 ]
  %4203 = phi float [ %4051, %4047 ], [ %3252, %3447 ], [ %3252, %3246 ], [ %3252, %3266 ], [ %4051, %4080 ], [ %4051, %4119 ], [ %4051, %4167 ], [ %4051, %4169 ]
  %4204 = phi float [ %4052, %4047 ], [ %3253, %3447 ], [ %3253, %3246 ], [ %3253, %3266 ], [ %4052, %4080 ], [ %4052, %4119 ], [ %4052, %4167 ], [ %4052, %4169 ]
  %4205 = phi float [ %4053, %4047 ], [ %3254, %3447 ], [ %3254, %3246 ], [ %3254, %3266 ], [ %4053, %4080 ], [ %4053, %4119 ], [ %4053, %4167 ], [ %4053, %4169 ]
  %4206 = phi float [ %3255, %4047 ], [ %3255, %3447 ], [ %3255, %3246 ], [ %3255, %3266 ], [ %4114, %4080 ], [ %4164, %4119 ], [ %3255, %4167 ], [ %4194, %4169 ]
  %4207 = phi float [ %3256, %4047 ], [ %3256, %3447 ], [ %3256, %3246 ], [ %3256, %3266 ], [ %4115, %4080 ], [ %4165, %4119 ], [ %3256, %4167 ], [ %4195, %4169 ]
  %4208 = phi float [ %3257, %4047 ], [ %3257, %3447 ], [ %3257, %3246 ], [ %3257, %3266 ], [ %4116, %4080 ], [ %4166, %4119 ], [ %3257, %4167 ], [ %4196, %4169 ]
  %4209 = phi float [ %3258, %4047 ], [ %3258, %3447 ], [ %3258, %3246 ], [ %3258, %3266 ], [ %4099, %4080 ], [ %4154, %4119 ], [ %3258, %4167 ], [ %4184, %4169 ]
  %4210 = phi float [ %3259, %4047 ], [ %3259, %3447 ], [ %3259, %3246 ], [ %3259, %3266 ], [ %4100, %4080 ], [ %4155, %4119 ], [ %3259, %4167 ], [ %4185, %4169 ]
  %4211 = phi float [ %3260, %4047 ], [ %3260, %3447 ], [ %3260, %3246 ], [ %3260, %3266 ], [ %4101, %4080 ], [ %4156, %4119 ], [ %3260, %4167 ], [ %4186, %4169 ]
  %4212 = phi float [ %4054, %4047 ], [ %3261, %3447 ], [ %3261, %3246 ], [ %3261, %3266 ], [ %4054, %4080 ], [ %4054, %4119 ], [ %4054, %4167 ], [ %4054, %4169 ]
  %4213 = phi float [ %3262, %4047 ], [ %3262, %3447 ], [ %3262, %3246 ], [ %3262, %3266 ], [ %4092, %4080 ], [ %4150, %4119 ], [ %3262, %4167 ], [ %4180, %4169 ]
  %4214 = phi float [ %3263, %4047 ], [ %3263, %3447 ], [ %3263, %3246 ], [ %3263, %3266 ], [ %4089, %4080 ], [ %4127, %4119 ], [ %3263, %4167 ], [ %4177, %4169 ]
  %4215 = phi float [ %3264, %4047 ], [ %3264, %3447 ], [ %3264, %3246 ], [ %3264, %3266 ], [ %4104, %4080 ], [ %4158, %4119 ], [ %3264, %4167 ], [ %4188, %4169 ]
  %4216 = phi float [ %3265, %4047 ], [ %3265, %3447 ], [ %3265, %3246 ], [ %3265, %3266 ], [ %4107, %4080 ], [ %4160, %4119 ], [ %3265, %4167 ], [ %4190, %4169 ]
  %4217 = and i32 %194, 65535
  %4218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4217)  ; LegacyF16ToF32(value)
  %4219 = lshr i32 %194, 16
  %4220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4219)  ; LegacyF16ToF32(value)
  %4221 = and i32 %195, 65535
  %4222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4221)  ; LegacyF16ToF32(value)
  %4223 = fmul fast float %4218, %4200
  %4224 = fmul fast float %4220, %4201
  %4225 = fmul fast float %4222, %4202
  %4226 = shl i32 %196, 4
  %4227 = and i32 %4226, 32752
  %4228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4227)  ; LegacyF16ToF32(value)
  %4229 = lshr i32 %196, 7
  %4230 = and i32 %4229, 32752
  %4231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4230)  ; LegacyF16ToF32(value)
  %4232 = lshr i32 %196, 22
  %4233 = shl nuw nsw i32 %4232, 5
  %4234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4233)  ; LegacyF16ToF32(value)
  %4235 = and i32 %197, 65535
  %4236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4235)  ; LegacyF16ToF32(value)
  %4237 = fmul fast float %4228, %4203
  %4238 = fmul fast float %4237, %4236
  %4239 = fmul fast float %4231, %4204
  %4240 = fmul fast float %4239, %4236
  %4241 = fmul fast float %4234, %4205
  %4242 = fmul fast float %4241, %4236
  %4243 = call float @dx.op.dot2.f32(i32 54, float %4198, float %4199, float %4198, float %4199)  ; Dot2(ax,ay,bx,by)
  %4244 = fmul fast float %4243, 0x3FE3333340000000
  %4245 = fsub fast float 1.000000e+00, %4244
  %4246 = call float @dx.op.dot3.f32(i32 55, float %4198, float %4199, float %4245, float %4198, float %4199, float %4245)  ; Dot3(ax,ay,az,bx,by,bz)
  %4247 = call float @dx.op.unary.f32(i32 25, float %4246)  ; Rsqrt(value)
  %4248 = fmul fast float %4247, %4198
  %4249 = fmul fast float %4247, %4199
  %4250 = fmul fast float %4245, %4247
  %4251 = fmul fast float %4250, %116
  %4252 = fmul fast float %4250, %117
  %4253 = fmul fast float %4250, %118
  %4254 = fmul fast float %4248, %84
  %4255 = fmul fast float %4248, %85
  %4256 = fmul fast float %4248, %86
  %4257 = fadd fast float %4251, %4254
  %4258 = fadd fast float %4252, %4255
  %4259 = fadd fast float %4253, %4256
  %4260 = fmul fast float %128, %4249
  %4261 = fmul fast float %129, %4249
  %4262 = fmul fast float %130, %4249
  %4263 = fadd fast float %4257, %4260
  %4264 = fadd fast float %4258, %4261
  %4265 = fadd fast float %4259, %4262
  %4266 = call float @dx.op.dot3.f32(i32 55, float %4263, float %4264, float %4265, float %4263, float %4264, float %4265)  ; Dot3(ax,ay,az,bx,by,bz)
  %4267 = call float @dx.op.unary.f32(i32 25, float %4266)  ; Rsqrt(value)
  %4268 = fmul fast float %4263, %4267
  %4269 = fmul fast float %4264, %4267
  %4270 = fmul fast float %4265, %4267
  %4271 = fadd fast float %4212, 0xBFB99999A0000000
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = fmul fast float %4272, 0x3FF1C71C80000000
  %4274 = call float @dx.op.binary.f32(i32 36, float %4212, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4275 = fsub fast float 1.000000e+00, %4273
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4276, %4223
  %4278 = fmul fast float %4276, %4224
  %4279 = fmul fast float %4276, %4225
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = fmul fast float %4273, %4223
  %4284 = fmul fast float %4273, %4224
  %4285 = fmul fast float %4273, %4225
  %4286 = fadd fast float %4283, %4274
  %4287 = fadd fast float %4284, %4274
  %4288 = fadd fast float %4285, %4274
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = and i32 %4294, 1
  %4296 = icmp eq i32 %4295, 0
  br i1 %4296, label %4311, label %4297

; <label>:4297                                    ; preds = %4197
  %4298 = call float @dx.op.binary.f32(i32 35, float %4281, float %4282)  ; FMax(a,b)
  %4299 = call float @dx.op.binary.f32(i32 35, float %4280, float %4298)  ; FMax(a,b)
  %4300 = fcmp fast ogt float %4299, 0.000000e+00
  %4301 = bitcast float %4299 to i32
  %4302 = sub nsw i32 2129859010, %4301
  %4303 = bitcast i32 %4302 to float
  %4304 = select i1 %4300, float %4303, float 0.000000e+00
  %4305 = fmul fast float %4280, %4206
  %4306 = fmul fast float %4281, %4207
  %4307 = fmul fast float %4282, %4208
  %4308 = fmul fast float %4305, %4304
  %4309 = fmul fast float %4306, %4304
  %4310 = fmul fast float %4307, %4304
  br label %4311

; <label>:4311                                    ; preds = %4297, %4197
  %4312 = phi float [ %4308, %4297 ], [ %4206, %4197 ]
  %4313 = phi float [ %4309, %4297 ], [ %4207, %4197 ]
  %4314 = phi float [ %4310, %4297 ], [ %4208, %4197 ]
  %4315 = call float @dx.op.binary.f32(i32 36, float %4209, float 1.270000e+02)  ; FMin(a,b)
  %4316 = call float @dx.op.binary.f32(i32 36, float %4210, float 1.270000e+02)  ; FMin(a,b)
  %4317 = call float @dx.op.binary.f32(i32 36, float %4211, float 1.270000e+02)  ; FMin(a,b)
  %4318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.i32 %4318, 3
  %4320 = and i32 %4319, 8
  %4321 = icmp ne i32 %4320, 0
  %4322 = call float @dx.op.binary.f32(i32 35, float %4280, float %4223)  ; FMax(a,b)
  %4323 = call float @dx.op.binary.f32(i32 35, float %4281, float %4223)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float %4282, float %4223)  ; FMax(a,b)
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4280, float %4281, float %4282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = select i1 %254, float %4223, float %4280
  %4327 = select i1 %254, float %4325, float %4281
  %4328 = select i1 %254, float 1.000000e+00, float %4282
  %4329 = select i1 %4321, float %4322, float %4326
  %4330 = select i1 %4321, float %4323, float %4327
  %4331 = select i1 %4321, float %4324, float %4328
  %4332 = call float @dx.op.dot3.f32(i32 55, float %4312, float %4313, float %4314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4333 = select i1 %254, float %4332, float %4312
  %4334 = select i1 %254, float %4332, float %4313
  %4335 = select i1 %254, float %4332, float %4314
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4338 = extractvalue %dx.types.CBufRet.f32 %4336, 1
  %4339 = extractvalue %dx.types.CBufRet.f32 %4336, 2
  %4340 = fadd fast float %4337, %188
  %4341 = fadd fast float %4338, %189
  %4342 = fadd fast float %4339, %190
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = extractvalue %dx.types.CBufRet.f32 %4343, 1
  %4346 = fsub fast float %4340, %4344
  %4347 = fsub fast float %4341, %4345
  %4348 = fmul fast float %4346, %4346
  %4349 = fmul fast float %4347, %4347
  %4350 = fadd fast float %4348, %4349
  %4351 = call float @dx.op.unary.f32(i32 24, float %4350)  ; Sqrt(value)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4353 = fcmp fast olt float %4351, %4352
  br i1 %4353, label %4354, label %4421

; <label>:4354                                    ; preds = %4311
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4363 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4364 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4365 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4366 = extractvalue %dx.types.CBufRet.f32 %4359, 3
  %4367 = fadd fast float %4364, %4340
  %4368 = fadd fast float %4365, %4341
  %4369 = fadd fast float %4366, %4342
  %4370 = fmul fast float %4367, %4356
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4358, float %4370)  ; FMad(a,b,c)
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4360, float %4371)  ; FMad(a,b,c)
  %4373 = fmul fast float %4367, %4361
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4362, float %4373)  ; FMad(a,b,c)
  %4375 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4363, float %4374)  ; FMad(a,b,c)
  %4376 = fsub fast float %4372, %4364
  %4377 = fsub fast float %4375, %4365
  %4378 = fsub fast float %4376, %4344
  %4379 = fadd fast float %4378, %4352
  %4380 = fsub fast float %4377, %4345
  %4381 = fadd fast float %4380, %4352
  %4382 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4383 = fmul fast float %4379, %4382
  %4384 = fmul fast float %4381, %4382
  %4385 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4387 = fsub fast float 1.000000e+00, %4385
  %4388 = fsub fast float 1.000000e+00, %4386
  %4389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %4387, float %4388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = fcmp fast ugt float %4390, 0.000000e+00
  br i1 %4391, label %4392, label %4695

; <label>:4392                                    ; preds = %4354
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4395 = fmul fast float %4394, %4390
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4397 = fadd fast float %4396, %4395
  %4398 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4399 = fadd fast float %4397, %4366
  %4400 = fmul fast float %4372, %4360
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4375, float %4363, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4398, float %4401)  ; FMad(a,b,c)
  %4403 = fsub fast float %4402, %4366
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 2
  %4406 = fsub fast float %4403, %4405
  %4407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %46, float %4387, float %4388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %46, float %4387, float %4388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = fadd fast float %4412, %4408
  %4416 = fmul fast float %4415, 0x3F847AE140000000
  %4417 = fadd fast float %4413, %4409
  %4418 = fmul fast float %4417, 0x3F847AE140000000
  %4419 = fadd fast float %4414, %4410
  %4420 = fmul fast float %4419, 0x3F847AE140000000
  br label %4695

; <label>:4421                                    ; preds = %4311
  %4422 = and i32 %233, 1
  %4423 = icmp eq i32 %4422, 0
  br i1 %4423, label %4695, label %4424

; <label>:4424                                    ; preds = %4421
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.CBufRet.f32 %4425, 1
  %4432 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4433 = extractvalue %dx.types.CBufRet.f32 %4429, 1
  %4434 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4435 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4436 = extractvalue %dx.types.CBufRet.f32 %4429, 3
  %4437 = fadd fast float %4434, %4340
  %4438 = fadd fast float %4435, %4341
  %4439 = fadd fast float %4436, %4342
  %4440 = fmul fast float %4437, %4426
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4438, float %4428, float %4440)  ; FMad(a,b,c)
  %4442 = call float @dx.op.tertiary.f32(i32 46, float %4439, float %4430, float %4441)  ; FMad(a,b,c)
  %4443 = fmul fast float %4437, %4431
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4438, float %4432, float %4443)  ; FMad(a,b,c)
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4439, float %4433, float %4444)  ; FMad(a,b,c)
  %4446 = fsub fast float %4442, %4434
  %4447 = fsub fast float %4445, %4435
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4452 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 3
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.i32 %4455, 1
  %4458 = udiv i32 %4457, %4456
  %4459 = fsub fast float %4446, %4449
  %4460 = fsub fast float %4447, %4450
  %4461 = call float @dx.op.binary.f32(i32 35, float %4459, float 0.000000e+00)  ; FMax(a,b)
  %4462 = call float @dx.op.binary.f32(i32 35, float %4460, float 0.000000e+00)  ; FMax(a,b)
  %4463 = call float @dx.op.binary.f32(i32 36, float %4461, float %4451)  ; FMin(a,b)
  %4464 = call float @dx.op.binary.f32(i32 36, float %4462, float %4452)  ; FMin(a,b)
  %4465 = add i32 %4456, -1
  %4466 = add i32 %4458, -1
  %4467 = fmul fast float %4463, %4454
  %4468 = fmul fast float %4464, %4454
  %4469 = fptoui float %4467 to i32
  %4470 = fptoui float %4468 to i32
  %4471 = call i32 @dx.op.binary.i32(i32 40, i32 %4469, i32 %4465)  ; UMin(a,b)
  %4472 = call i32 @dx.op.binary.i32(i32 40, i32 %4470, i32 %4466)  ; UMin(a,b)
  %4473 = mul i32 %4472, %4456
  %4474 = add i32 %4473, %4471
  %4475 = shl i32 %4474, 2
  %4476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4475, i32 undef)  ; BufferLoad(srv,index,wot)
  %4477 = extractvalue %dx.types.ResRet.i32 %4476, 0
  %4478 = icmp eq i32 %4477, -1
  br i1 %4478, label %4695, label %4479

; <label>:4479                                    ; preds = %4424
  %4480 = mul i32 %4477, 148
  %4481 = add i32 %4480, 4
  %4482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4481, i32 undef)  ; BufferLoad(srv,index,wot)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 0
  %4484 = add i32 %4480, 8
  %4485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = add i32 %4480, 36
  %4488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4487, i32 undef)  ; BufferLoad(srv,index,wot)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = add i32 %4480, 60
  %4491 = add i32 %4480, 92
  %4492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.i32 %4492, 0
  %4494 = add i32 %4480, 116
  %4495 = fsub fast float %4446, %4483
  %4496 = fsub fast float %4447, %4486
  %4497 = fmul fast float %4454, %4495
  %4498 = fmul fast float %4454, %4496
  %4499 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4504 = call float @dx.op.unary.f32(i32 83, float %4499)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 83, float %4501)  ; DerivCoarseX(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %4499)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %4501)  ; DerivCoarseY(value)
  %4508 = fmul fast float %4504, %4503
  %4509 = fmul fast float %4505, %4503
  %4510 = fmul fast float %4506, %4503
  %4511 = fmul fast float %4507, %4503
  %4512 = call float @dx.op.dot2.f32(i32 54, float %4510, float %4511, float %4510, float %4511)  ; Dot2(ax,ay,bx,by)
  %4513 = call float @dx.op.dot2.f32(i32 54, float %4508, float %4509, float %4508, float %4509)  ; Dot2(ax,ay,bx,by)
  %4514 = call float @dx.op.binary.f32(i32 35, float %4513, float %4512)  ; FMax(a,b)
  %4515 = call float @dx.op.unary.f32(i32 23, float %4514)  ; Log(value)
  %4516 = fmul fast float %4515, 5.000000e-01
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4519 = fadd fast float %4518, %4516
  %4520 = call float @dx.op.binary.f32(i32 35, float %4519, float 0.000000e+00)  ; FMax(a,b)
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 3
  %4523 = fadd fast float %4522, %4520
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4526 = fadd fast float %4523, %4525
  %4527 = add i32 %4493, 0
  %4528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4527, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4529 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4528, i32 0)  ; GetDimensions(handle,mipLevel)
  %4530 = extractvalue %dx.types.Dimensions %4529, 0
  %4531 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4530)  ; FirstbitLo(value)
  %4532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.i32 %4532, 1
  %4534 = sub nsw i32 %4533, %4531
  %4535 = sitofp i32 %4534 to float
  %4536 = fsub fast float %4526, %4535
  %4537 = call float @dx.op.binary.f32(i32 35, float %4536, float 0.000000e+00)  ; FMax(a,b)
  %4538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4528, %dx.types.Handle %44, float %4499, float %4501, float %4489, float undef, i32 0, i32 0, i32 undef, float %4537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = fcmp ule float %4539, 0x3FE0101020000000
  %4541 = extractvalue %dx.types.CBufRet.i32 %4532, 0
  %4542 = and i32 %4541, 128
  %4543 = icmp ne i32 %4542, 0
  %4544 = and i1 %4540, %4543
  br i1 %4544, label %4695, label %4545

; <label>:4545                                    ; preds = %4479
  %4546 = add i32 %4480, 20
  %4547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = add i32 %4480, 24
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4552 = add i32 %4480, 40
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = add i32 %4480, 96
  %4556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4557 = extractvalue %dx.types.ResRet.i32 %4556, 0
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 2
  %4560 = fmul fast float %4559, %4499
  %4561 = fmul fast float %4559, %4501
  %4562 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4563 = fadd fast float %4560, %4562
  %4564 = fadd fast float %4561, %4562
  %4565 = add i32 %4557, 0
  %4566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4565, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4567 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4566, i32 0)  ; GetDimensions(handle,mipLevel)
  %4568 = extractvalue %dx.types.Dimensions %4567, 0
  %4569 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4568)  ; FirstbitLo(value)
  %4570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.i32 %4570, 1
  %4572 = sub nsw i32 %4571, %4569
  %4573 = sitofp i32 %4572 to float
  %4574 = fsub fast float %4523, %4573
  %4575 = call float @dx.op.binary.f32(i32 35, float %4574, float 0.000000e+00)  ; FMax(a,b)
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4566, %dx.types.Handle %44, float %4563, float %4564, float %4554, float undef, i32 0, i32 0, i32 undef, float %4575)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = fmul fast float %4577, %4548
  %4579 = fadd fast float %4578, %4551
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.CBufRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 3
  %4588 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4589 = fadd fast float %4585, %4446
  %4590 = fadd fast float %4587, %4447
  %4591 = fadd fast float %4579, %4588
  %4592 = fmul fast float %4589, %4581
  %4593 = call float @dx.op.tertiary.f32(i32 46, float %4590, float %4582, float %4592)  ; FMad(a,b,c)
  %4594 = call float @dx.op.tertiary.f32(i32 46, float %4591, float %4583, float %4593)  ; FMad(a,b,c)
  %4595 = fsub fast float %4594, %4588
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4598 = fsub fast float %4595, %4597
  %4599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.i32 %4599, 0
  %4601 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4600)  ; UMin(a,b)
  %4602 = mul i32 %4601, 36
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = add i32 %4602, 4
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = fmul fast float %4607, %4499
  %4609 = fmul fast float %4607, %4501
  %4610 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4611 = fadd fast float %4608, %4610
  %4612 = fadd fast float %4609, %4610
  %4613 = icmp eq i32 %4604, 0
  br i1 %4613, label %4682, label %4614

; <label>:4614                                    ; preds = %4545
  br label %4615

; <label>:4615                                    ; preds = %4672, %4614
  %4616 = phi float [ %4673, %4672 ], [ 0.000000e+00, %4614 ]
  %4617 = phi float [ %4674, %4672 ], [ 0.000000e+00, %4614 ]
  %4618 = phi float [ %4675, %4672 ], [ 0.000000e+00, %4614 ]
  %4619 = phi float [ %4676, %4672 ], [ 0.000000e+00, %4614 ]
  %4620 = phi float [ %4677, %4672 ], [ 0.000000e+00, %4614 ]
  %4621 = phi float [ %4678, %4672 ], [ 0.000000e+00, %4614 ]
  %4622 = phi i32 [ %4679, %4672 ], [ 0, %4614 ]
  %4623 = shl i32 %4622, 2
  %4624 = add i32 %4490, %4623
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = add i32 %4494, %4623
  %4628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.i32 %4628, 0
  %4630 = add i32 %4629, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4630, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4631, i32 0)  ; GetDimensions(handle,mipLevel)
  %4633 = extractvalue %dx.types.Dimensions %4632, 0
  %4634 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4633)  ; FirstbitLo(value)
  %4635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.i32 %4635, 1
  %4637 = sub nsw i32 %4636, %4634
  %4638 = sitofp i32 %4637 to float
  %4639 = fsub fast float %4523, %4638
  %4640 = call float @dx.op.binary.f32(i32 35, float %4639, float 0.000000e+00)  ; FMax(a,b)
  %4641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4631, %dx.types.Handle %44, float %4611, float %4612, float %4626, float undef, i32 0, i32 0, i32 undef, float %4640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = fcmp fast ogt float %4642, 0.000000e+00
  br i1 %4643, label %4644, label %4672

; <label>:4644                                    ; preds = %4615
  %4645 = add i32 %4605, %4623
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = and i32 %4647, 32767
  %4649 = mul nuw nsw i32 %4648, 928
  %4650 = add nuw nsw i32 %4649, 48
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = add nuw nsw i32 %4649, 60
  %4656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4655, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = fmul fast float %4652, %4642
  %4661 = fmul fast float %4653, %4642
  %4662 = fmul fast float %4654, %4642
  %4663 = fadd fast float %4660, %4616
  %4664 = fadd fast float %4661, %4617
  %4665 = fadd fast float %4662, %4618
  %4666 = fmul fast float %4657, %4642
  %4667 = fmul fast float %4658, %4642
  %4668 = fmul fast float %4659, %4642
  %4669 = fadd fast float %4666, %4619
  %4670 = fadd fast float %4667, %4620
  %4671 = fadd fast float %4668, %4621
  br label %4672

; <label>:4672                                    ; preds = %4644, %4615
  %4673 = phi float [ %4663, %4644 ], [ %4616, %4615 ]
  %4674 = phi float [ %4664, %4644 ], [ %4617, %4615 ]
  %4675 = phi float [ %4665, %4644 ], [ %4618, %4615 ]
  %4676 = phi float [ %4669, %4644 ], [ %4619, %4615 ]
  %4677 = phi float [ %4670, %4644 ], [ %4620, %4615 ]
  %4678 = phi float [ %4671, %4644 ], [ %4621, %4615 ]
  %4679 = add nuw i32 %4622, 1
  %4680 = icmp eq i32 %4679, %4604
  br i1 %4680, label %4681, label %4615

; <label>:4681                                    ; preds = %4672
  br label %4682

; <label>:4682                                    ; preds = %4681, %4545
  %4683 = phi float [ 0.000000e+00, %4545 ], [ %4673, %4681 ]
  %4684 = phi float [ 0.000000e+00, %4545 ], [ %4674, %4681 ]
  %4685 = phi float [ 0.000000e+00, %4545 ], [ %4675, %4681 ]
  %4686 = phi float [ 0.000000e+00, %4545 ], [ %4676, %4681 ]
  %4687 = phi float [ 0.000000e+00, %4545 ], [ %4677, %4681 ]
  %4688 = phi float [ 0.000000e+00, %4545 ], [ %4678, %4681 ]
  %4689 = fadd fast float %4686, %4683
  %4690 = fmul fast float %4689, 0x3F847AE140000000
  %4691 = fadd fast float %4687, %4684
  %4692 = fmul fast float %4691, 0x3F847AE140000000
  %4693 = fadd fast float %4688, %4685
  %4694 = fmul fast float %4693, 0x3F847AE140000000
  br label %4695

; <label>:4695                                    ; preds = %4682, %4479, %4424, %4421, %4392, %4354
  %4696 = phi float [ %4406, %4392 ], [ -1.310720e+05, %4354 ], [ %4598, %4682 ], [ -1.310720e+05, %4424 ], [ -1.310720e+05, %4479 ], [ -1.310720e+05, %4421 ]
  %4697 = phi float [ %4416, %4392 ], [ 0.000000e+00, %4354 ], [ %4690, %4682 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4479 ], [ 0.000000e+00, %4421 ]
  %4698 = phi float [ %4418, %4392 ], [ 0.000000e+00, %4354 ], [ %4692, %4682 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4479 ], [ 0.000000e+00, %4421 ]
  %4699 = phi float [ %4420, %4392 ], [ 0.000000e+00, %4354 ], [ %4694, %4682 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4479 ], [ 0.000000e+00, %4421 ]
  %4700 = phi i1 [ true, %4392 ], [ false, %4354 ], [ true, %4682 ], [ false, %4424 ], [ false, %4479 ], [ false, %4421 ]
  %4701 = and i32 %233, 3
  %4702 = icmp eq i32 %4701, 1
  %4703 = select i1 %4702, float 1.000000e+00, float 0.000000e+00
  %4704 = fsub fast float %4696, %190
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = select i1 %4700, float %4705, float 1.000000e+00
  %4707 = fmul fast float %4706, %4703
  %4708 = icmp eq i32 %4701, 3
  %4709 = select i1 %4708, float 1.000000e+00, float %4707
  %4710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4709)  ; FMax(a,b)
  %4711 = fcmp fast olt float %4709, 1.000000e+00
  %4712 = fcmp uge float %69, 0.000000e+00
  %4713 = and i1 %4712, %4711
  br i1 %4713, label %4714, label %4724

; <label>:4714                                    ; preds = %4695
  %4715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = extractvalue %dx.types.ResRet.f32 %4715, 1
  %4718 = extractvalue %dx.types.ResRet.f32 %4715, 2
  %4719 = fadd fast float %4716, %4710
  %4720 = fcmp ule float %68, 0.000000e+00
  %4721 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = select i1 %4720, float %4721, float 1.000000e+00
  %4723 = fmul fast float %4722, %4718
  br label %4724

; <label>:4724                                    ; preds = %4714, %4695
  %4725 = phi float [ %4719, %4714 ], [ %4710, %4695 ]
  %4726 = phi float [ %4717, %4714 ], [ 0.000000e+00, %4695 ]
  %4727 = phi float [ %4723, %4714 ], [ 0.000000e+00, %4695 ]
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = fcmp fast une float %4729, 0.000000e+00
  %4732 = fcmp fast une float %4730, 0.000000e+00
  %4733 = or i1 %4731, %4732
  br i1 %4733, label %4734, label %5309

; <label>:4734                                    ; preds = %4724
  br i1 %4731, label %4735, label %5008

; <label>:4735                                    ; preds = %4734
  %4736 = call float @dx.op.unary.f32(i32 23, float %4214)  ; Log(value)
  %4737 = fmul fast float %4736, 4.000000e+00
  %4738 = call float @dx.op.unary.f32(i32 21, float %4737)  ; Exp(value)
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = fmul fast float %4740, %55
  %4742 = fmul fast float %4740, %56
  %4743 = fmul fast float %4740, %57
  %4744 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4745 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4746 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4747 = call float @dx.op.unary.f32(i32 23, float %4744)  ; Log(value)
  %4748 = call float @dx.op.unary.f32(i32 23, float %4745)  ; Log(value)
  %4749 = call float @dx.op.unary.f32(i32 23, float %4746)  ; Log(value)
  %4750 = fmul fast float %4747, 4.000000e+00
  %4751 = fmul fast float %4748, 4.000000e+00
  %4752 = fmul fast float %4749, 4.000000e+00
  %4753 = call float @dx.op.unary.f32(i32 21, float %4750)  ; Exp(value)
  %4754 = call float @dx.op.unary.f32(i32 21, float %4751)  ; Exp(value)
  %4755 = call float @dx.op.unary.f32(i32 21, float %4752)  ; Exp(value)
  %4756 = fadd fast float %4754, %4753
  %4757 = fadd fast float %4756, %4755
  %4758 = fdiv fast float 1.000000e+00, %4757
  %4759 = fmul fast float %4758, %4753
  %4760 = fcmp fast ogt float %65, 0.000000e+00
  %4761 = fcmp fast ogt float %66, 0.000000e+00
  %4762 = fcmp fast ogt float %67, 0.000000e+00
  %4763 = fcmp fast olt float %65, 0.000000e+00
  %4764 = fcmp fast olt float %66, 0.000000e+00
  %4765 = fcmp fast olt float %67, 0.000000e+00
  %4766 = zext i1 %4760 to i32
  %4767 = zext i1 %4761 to i32
  %4768 = zext i1 %4762 to i32
  %4769 = zext i1 %4763 to i32
  %4770 = zext i1 %4764 to i32
  %4771 = zext i1 %4765 to i32
  %4772 = sub nsw i32 %4766, %4769
  %4773 = sub nsw i32 %4767, %4770
  %4774 = sub nsw i32 %4768, %4771
  %4775 = call float @dx.op.unary.f32(i32 83, float %4741)  ; DerivCoarseX(value)
  %4776 = call float @dx.op.unary.f32(i32 83, float %4742)  ; DerivCoarseX(value)
  %4777 = call float @dx.op.unary.f32(i32 83, float %4743)  ; DerivCoarseX(value)
  %4778 = call float @dx.op.unary.f32(i32 84, float %4741)  ; DerivCoarseY(value)
  %4779 = call float @dx.op.unary.f32(i32 84, float %4742)  ; DerivCoarseY(value)
  %4780 = call float @dx.op.unary.f32(i32 84, float %4743)  ; DerivCoarseY(value)
  %4781 = fcmp fast ole float %265, %4759
  %4782 = fmul fast float %4758, %4756
  %4783 = fcmp fast ole float %265, %4782
  %4784 = select i1 %4783, float %4743, float %4741
  %4785 = select i1 %4783, float %4741, float %4742
  %4786 = select i1 %4781, float %4742, float %4784
  %4787 = select i1 %4781, float %4743, float %4785
  %4788 = select i1 %4783, float %4777, float %4775
  %4789 = select i1 %4783, float %4775, float %4776
  %4790 = select i1 %4781, float %4776, float %4788
  %4791 = select i1 %4781, float %4777, float %4789
  %4792 = select i1 %4783, float %4780, float %4778
  %4793 = select i1 %4783, float %4778, float %4779
  %4794 = select i1 %4781, float %4779, float %4792
  %4795 = select i1 %4781, float %4780, float %4793
  %4796 = call float @dx.op.unary.f32(i32 27, float %4786)  ; Round_ni(value)
  %4797 = call float @dx.op.unary.f32(i32 27, float %4787)  ; Round_ni(value)
  %4798 = fptosi float %4796 to i32
  %4799 = fptosi float %4797 to i32
  %4800 = xor i32 %4799, %4798
  %4801 = sitofp i32 %4800 to float
  %4802 = fptosi float %4801 to i32
  %4803 = sitofp i32 %4802 to float
  %4804 = fmul fast float %4803, 0x3FE3C6EF40000000
  %4805 = frem fast float %4796, 2.560000e+02
  %4806 = frem fast float %4797, 2.560000e+02
  %4807 = fptoui float %4805 to i32
  %4808 = fptoui float %4806 to i32
  %4809 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4807, i32 %4808, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4813 = fadd fast float %4810, %4804
  %4814 = fadd fast float %4811, %4804
  %4815 = fadd fast float %4812, %4804
  %4816 = call float @dx.op.unary.f32(i32 22, float %4813)  ; Frc(value)
  %4817 = call float @dx.op.unary.f32(i32 22, float %4814)  ; Frc(value)
  %4818 = call float @dx.op.unary.f32(i32 22, float %4815)  ; Frc(value)
  %4819 = fmul fast float %4818, 0x401921FB60000000
  %4820 = call float @dx.op.unary.f32(i32 13, float %4819)  ; Sin(value)
  %4821 = call float @dx.op.unary.f32(i32 12, float %4819)  ; Cos(value)
  %4822 = fsub fast float -0.000000e+00, %4821
  %4823 = fmul fast float %4821, %4786
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4787, float %4823)  ; FMad(a,b,c)
  %4825 = fmul fast float %4820, %4786
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4787, float %4825)  ; FMad(a,b,c)
  %4827 = fadd fast float %4824, %4816
  %4828 = fadd fast float %4826, %4817
  %4829 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4830 = bitcast float %4829 to i32
  %4831 = icmp eq i32 %4830, 0
  br i1 %4831, label %4870, label %4832

; <label>:4832                                    ; preds = %4735
  %4833 = add i32 %4830, 0
  %4834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4834, %dx.types.Handle %106, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4840 = fsub fast float 1.000000e+00, %4729
  %4841 = call float @dx.op.binary.f32(i32 35, float %4840, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4842 = bitcast float %4729 to i32
  %4843 = sitofp i32 %4842 to float
  %4844 = fadd fast float %4843, 0xC1CFBF8940000000
  %4845 = fmul fast float %4839, %4844
  %4846 = fadd fast float %4845, 0x41CFBF8940000000
  %4847 = fptosi float %4846 to i32
  %4848 = bitcast i32 %4847 to float
  %4849 = bitcast float %4841 to i32
  %4850 = sitofp i32 %4849 to float
  %4851 = fadd fast float %4850, 0xC1CFBF8940000000
  %4852 = fmul fast float %4851, %4839
  %4853 = fadd fast float %4852, 0x41CFBF8940000000
  %4854 = fptosi float %4853 to i32
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4848, %4838
  %4857 = fmul fast float %4855, %4838
  %4858 = fsub fast float %4841, %4856
  %4859 = fadd fast float %4857, %4841
  %4860 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4861 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4862 = fsub fast float %4836, %4860
  %4863 = fsub fast float %4861, %4860
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, %4862
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fcmp fast olt float %4868, 0x3F70101020000000
  br i1 %4869, label %5008, label %4870

; <label>:4870                                    ; preds = %4832, %4735
  %4871 = phi float [ %4868, %4832 ], [ %4729, %4735 ]
  %4872 = fmul fast float %4871, %4738
  %4873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.i32 %4873, 1
  %4875 = extractvalue %dx.types.CBufRet.i32 %4873, 0
  %4876 = add i32 %4875, 0
  %4877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4877, %dx.types.Handle %105, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = and i32 %4874, 255
  %4884 = uitofp i32 %4883 to float
  %4885 = lshr i32 %4874, 8
  %4886 = and i32 %4885, 255
  %4887 = uitofp i32 %4886 to float
  %4888 = fmul fast float %4882, %4884
  %4889 = fadd fast float %4888, %4887
  %4890 = fmul fast float %4889, 0x3F70101000000000
  %4891 = fadd fast float %4890, 0xBFB99999A0000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, 0x3FF1C71C80000000
  %4894 = call float @dx.op.binary.f32(i32 36, float %4890, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4895 = fsub fast float 1.000000e+00, %4893
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, %4879
  %4898 = fmul fast float %4896, %4880
  %4899 = fmul fast float %4896, %4881
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = fmul fast float %4893, %4879
  %4904 = fmul fast float %4893, %4880
  %4905 = fmul fast float %4893, %4881
  %4906 = fadd fast float %4903, %4894
  %4907 = fadd fast float %4904, %4894
  %4908 = fadd fast float %4905, %4894
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.i32 %4912, 3
  %4914 = extractvalue %dx.types.CBufRet.i32 %4912, 2
  %4915 = add i32 %4914, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %105, float %4827, float %4828, float undef, float undef, i32 0, i32 0, i32 undef, float %4790, float %4791, float undef, float %4794, float %4795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = extractvalue %dx.types.ResRet.f32 %4917, 3
  %4922 = and i32 %4913, 255
  %4923 = uitofp i32 %4922 to float
  %4924 = lshr i32 %4913, 8
  %4925 = and i32 %4924, 255
  %4926 = uitofp i32 %4925 to float
  %4927 = lshr i32 %4913, 16
  %4928 = and i32 %4927, 255
  %4929 = uitofp i32 %4928 to float
  %4930 = fmul fast float %4929, 0x3F70101000000000
  %4931 = fmul fast float %4918, %4923
  %4932 = fadd fast float %4931, %4926
  %4933 = fmul fast float %4932, 0x3F70101000000000
  %4934 = fadd fast float %4919, -5.000000e-01
  %4935 = fadd fast float %4921, -5.000000e-01
  %4936 = fmul fast float %4934, %4930
  %4937 = fmul fast float %4935, %4930
  %4938 = fadd fast float %4936, 5.000000e-01
  %4939 = fadd fast float %4937, 5.000000e-01
  %4940 = fmul fast float %4938, 2.000000e+00
  %4941 = fadd fast float %4940, -1.000000e+00
  %4942 = fmul fast float %4939, 2.000000e+00
  %4943 = fadd fast float %4942, -1.000000e+00
  %4944 = fadd fast float %4941, %4943
  %4945 = fmul fast float %4944, 5.000000e-01
  %4946 = fsub fast float %4941, %4943
  %4947 = fmul fast float %4946, 5.000000e-01
  %4948 = call float @dx.op.unary.f32(i32 6, float %4945)  ; FAbs(value)
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = call float @dx.op.unary.f32(i32 6, float %4947)  ; FAbs(value)
  %4951 = fsub fast float %4949, %4950
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4947, float %4951, float %4945, float %4947, float %4951)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.unary.f32(i32 25, float %4952)  ; Rsqrt(value)
  %4954 = fmul fast float %4945, %4953
  %4955 = fmul fast float %4947, %4953
  %4956 = select i1 %4783, i32 %4773, i32 %4774
  %4957 = select i1 %4781, i32 %4772, i32 %4956
  %4958 = sitofp i32 %4957 to float
  %4959 = fmul fast float %4951, %4958
  %4960 = fmul fast float %4959, %4953
  %4961 = select i1 %4783, float %4960, float %4955
  %4962 = select i1 %4783, float %4955, float %4960
  %4963 = select i1 %4781, float %4960, float %4954
  %4964 = select i1 %4781, float %4955, float %4961
  %4965 = select i1 %4781, float %4954, float %4962
  %4966 = fsub fast float %4900, %4329
  %4967 = fsub fast float %4901, %4330
  %4968 = fsub fast float %4902, %4331
  %4969 = fmul fast float %4966, %4872
  %4970 = fmul fast float %4967, %4872
  %4971 = fmul fast float %4968, %4872
  %4972 = fadd fast float %4969, %4329
  %4973 = fadd fast float %4970, %4330
  %4974 = fadd fast float %4971, %4331
  %4975 = fsub fast float %4909, %4289
  %4976 = fsub fast float %4910, %4290
  %4977 = fsub fast float %4911, %4291
  %4978 = fmul fast float %4975, %4872
  %4979 = fmul fast float %4976, %4872
  %4980 = fmul fast float %4977, %4872
  %4981 = fadd fast float %4978, %4289
  %4982 = fadd fast float %4979, %4290
  %4983 = fadd fast float %4980, %4291
  %4984 = fadd fast float %4963, %4268
  %4985 = fadd fast float %4964, %4269
  %4986 = fadd fast float %4965, %4270
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %4986, float %4984, float %4985, float %4986)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 25, float %4987)  ; Rsqrt(value)
  %4989 = fmul fast float %4984, %4988
  %4990 = fmul fast float %4985, %4988
  %4991 = fmul fast float %4986, %4988
  %4992 = fsub fast float %4989, %4268
  %4993 = fsub fast float %4990, %4269
  %4994 = fsub fast float %4991, %4270
  %4995 = fmul fast float %4992, %4872
  %4996 = fmul fast float %4993, %4872
  %4997 = fmul fast float %4994, %4872
  %4998 = fadd fast float %4995, %4268
  %4999 = fadd fast float %4996, %4269
  %5000 = fadd fast float %4997, %4270
  %5001 = call float @dx.op.binary.f32(i32 36, float %4214, float %4920)  ; FMin(a,b)
  %5002 = fsub fast float %5001, %4214
  %5003 = fmul fast float %5002, %4872
  %5004 = fadd fast float %5003, %4214
  %5005 = fsub fast float %4933, %4292
  %5006 = fmul fast float %5005, %4872
  %5007 = fadd fast float %5006, %4292
  br label %5008

; <label>:5008                                    ; preds = %4870, %4832, %4734
  %5009 = phi float [ %4972, %4870 ], [ %4329, %4832 ], [ %4329, %4734 ]
  %5010 = phi float [ %4973, %4870 ], [ %4330, %4832 ], [ %4330, %4734 ]
  %5011 = phi float [ %4974, %4870 ], [ %4331, %4832 ], [ %4331, %4734 ]
  %5012 = phi float [ %4981, %4870 ], [ %4289, %4832 ], [ %4289, %4734 ]
  %5013 = phi float [ %4982, %4870 ], [ %4290, %4832 ], [ %4290, %4734 ]
  %5014 = phi float [ %4983, %4870 ], [ %4291, %4832 ], [ %4291, %4734 ]
  %5015 = phi float [ %4998, %4870 ], [ %4268, %4832 ], [ %4268, %4734 ]
  %5016 = phi float [ %4999, %4870 ], [ %4269, %4832 ], [ %4269, %4734 ]
  %5017 = phi float [ %5000, %4870 ], [ %4270, %4832 ], [ %4270, %4734 ]
  %5018 = phi float [ %5007, %4870 ], [ %4292, %4832 ], [ %4292, %4734 ]
  %5019 = phi float [ %5004, %4870 ], [ %4214, %4832 ], [ %4214, %4734 ]
  br i1 %4732, label %5020, label %5309

; <label>:5020                                    ; preds = %5008
  %5021 = call float @dx.op.unary.f32(i32 23, float %5019)  ; Log(value)
  %5022 = fmul fast float %5021, 4.000000e+00
  %5023 = call float @dx.op.unary.f32(i32 21, float %5022)  ; Exp(value)
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = fmul fast float %5025, %55
  %5027 = fmul fast float %5025, %56
  %5028 = fmul fast float %5025, %57
  %5029 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5030 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5031 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5032 = call float @dx.op.unary.f32(i32 23, float %5029)  ; Log(value)
  %5033 = call float @dx.op.unary.f32(i32 23, float %5030)  ; Log(value)
  %5034 = call float @dx.op.unary.f32(i32 23, float %5031)  ; Log(value)
  %5035 = fmul fast float %5032, 4.000000e+00
  %5036 = fmul fast float %5033, 4.000000e+00
  %5037 = fmul fast float %5034, 4.000000e+00
  %5038 = call float @dx.op.unary.f32(i32 21, float %5035)  ; Exp(value)
  %5039 = call float @dx.op.unary.f32(i32 21, float %5036)  ; Exp(value)
  %5040 = call float @dx.op.unary.f32(i32 21, float %5037)  ; Exp(value)
  %5041 = fadd fast float %5039, %5038
  %5042 = fadd fast float %5041, %5040
  %5043 = fdiv fast float 1.000000e+00, %5042
  %5044 = fmul fast float %5043, %5038
  %5045 = fcmp fast ogt float %65, 0.000000e+00
  %5046 = fcmp fast ogt float %66, 0.000000e+00
  %5047 = fcmp fast ogt float %67, 0.000000e+00
  %5048 = fcmp fast olt float %65, 0.000000e+00
  %5049 = fcmp fast olt float %66, 0.000000e+00
  %5050 = fcmp fast olt float %67, 0.000000e+00
  %5051 = zext i1 %5045 to i32
  %5052 = zext i1 %5046 to i32
  %5053 = zext i1 %5047 to i32
  %5054 = zext i1 %5048 to i32
  %5055 = zext i1 %5049 to i32
  %5056 = zext i1 %5050 to i32
  %5057 = sub nsw i32 %5051, %5054
  %5058 = sub nsw i32 %5052, %5055
  %5059 = sub nsw i32 %5053, %5056
  %5060 = call float @dx.op.unary.f32(i32 83, float %5026)  ; DerivCoarseX(value)
  %5061 = call float @dx.op.unary.f32(i32 83, float %5027)  ; DerivCoarseX(value)
  %5062 = call float @dx.op.unary.f32(i32 83, float %5028)  ; DerivCoarseX(value)
  %5063 = call float @dx.op.unary.f32(i32 84, float %5026)  ; DerivCoarseY(value)
  %5064 = call float @dx.op.unary.f32(i32 84, float %5027)  ; DerivCoarseY(value)
  %5065 = call float @dx.op.unary.f32(i32 84, float %5028)  ; DerivCoarseY(value)
  %5066 = fcmp fast ole float %265, %5044
  %5067 = fmul fast float %5043, %5041
  %5068 = fcmp fast ole float %265, %5067
  %5069 = select i1 %5068, float %5028, float %5026
  %5070 = select i1 %5068, float %5026, float %5027
  %5071 = select i1 %5066, float %5027, float %5069
  %5072 = select i1 %5066, float %5028, float %5070
  %5073 = select i1 %5068, float %5062, float %5060
  %5074 = select i1 %5068, float %5060, float %5061
  %5075 = select i1 %5066, float %5061, float %5073
  %5076 = select i1 %5066, float %5062, float %5074
  %5077 = select i1 %5068, float %5065, float %5063
  %5078 = select i1 %5068, float %5063, float %5064
  %5079 = select i1 %5066, float %5064, float %5077
  %5080 = select i1 %5066, float %5065, float %5078
  %5081 = call float @dx.op.unary.f32(i32 27, float %5071)  ; Round_ni(value)
  %5082 = call float @dx.op.unary.f32(i32 27, float %5072)  ; Round_ni(value)
  %5083 = fptosi float %5081 to i32
  %5084 = fptosi float %5082 to i32
  %5085 = xor i32 %5084, %5083
  %5086 = sitofp i32 %5085 to float
  %5087 = fptosi float %5086 to i32
  %5088 = sitofp i32 %5087 to float
  %5089 = fmul fast float %5088, 0x3FE3C6EF40000000
  %5090 = frem fast float %5081, 2.560000e+02
  %5091 = frem fast float %5082, 2.560000e+02
  %5092 = fptoui float %5090 to i32
  %5093 = fptoui float %5091 to i32
  %5094 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5092, i32 %5093, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.f32 %5094, 2
  %5098 = fadd fast float %5095, %5089
  %5099 = fadd fast float %5096, %5089
  %5100 = fadd fast float %5097, %5089
  %5101 = call float @dx.op.unary.f32(i32 22, float %5098)  ; Frc(value)
  %5102 = call float @dx.op.unary.f32(i32 22, float %5099)  ; Frc(value)
  %5103 = call float @dx.op.unary.f32(i32 22, float %5100)  ; Frc(value)
  %5104 = fmul fast float %5103, 0x401921FB60000000
  %5105 = call float @dx.op.unary.f32(i32 13, float %5104)  ; Sin(value)
  %5106 = call float @dx.op.unary.f32(i32 12, float %5104)  ; Cos(value)
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %5106, %5071
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5072, float %5108)  ; FMad(a,b,c)
  %5110 = fmul fast float %5105, %5071
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5072, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5109, %5101
  %5113 = fadd fast float %5111, %5102
  %5114 = extractvalue %dx.types.CBufRet.f32 %5024, 3
  %5115 = bitcast float %5114 to i32
  %5116 = icmp eq i32 %5115, 0
  br i1 %5116, label %5155, label %5117

; <label>:5117                                    ; preds = %5020
  %5118 = add i32 %5115, 0
  %5119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5119, %dx.types.Handle %106, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5125 = fsub fast float 1.000000e+00, %4730
  %5126 = call float @dx.op.binary.f32(i32 35, float %5125, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5127 = bitcast float %4730 to i32
  %5128 = sitofp i32 %5127 to float
  %5129 = fadd fast float %5128, 0xC1CFBF8940000000
  %5130 = fmul fast float %5124, %5129
  %5131 = fadd fast float %5130, 0x41CFBF8940000000
  %5132 = fptosi float %5131 to i32
  %5133 = bitcast i32 %5132 to float
  %5134 = bitcast float %5126 to i32
  %5135 = sitofp i32 %5134 to float
  %5136 = fadd fast float %5135, 0xC1CFBF8940000000
  %5137 = fmul fast float %5136, %5124
  %5138 = fadd fast float %5137, 0x41CFBF8940000000
  %5139 = fptosi float %5138 to i32
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5133, %5123
  %5142 = fmul fast float %5140, %5123
  %5143 = fsub fast float %5126, %5141
  %5144 = fadd fast float %5142, %5126
  %5145 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5147 = fsub fast float %5121, %5145
  %5148 = fsub fast float %5146, %5145
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5151, %5147
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fcmp fast olt float %5153, 0x3F70101020000000
  br i1 %5154, label %5309, label %5155

; <label>:5155                                    ; preds = %5117, %5020
  %5156 = phi float [ %5153, %5117 ], [ %4730, %5020 ]
  %5157 = fmul fast float %5156, %5023
  %5158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.i32 %5158, 1
  %5160 = extractvalue %dx.types.CBufRet.i32 %5158, 0
  %5161 = add i32 %5160, 0
  %5162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5162, %dx.types.Handle %105, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.ResRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.ResRet.f32 %5163, 2
  %5167 = extractvalue %dx.types.ResRet.f32 %5163, 3
  %5168 = and i32 %5159, 255
  %5169 = uitofp i32 %5168 to float
  %5170 = lshr i32 %5159, 8
  %5171 = and i32 %5170, 255
  %5172 = uitofp i32 %5171 to float
  %5173 = fmul fast float %5167, %5169
  %5174 = fadd fast float %5173, %5172
  %5175 = fmul fast float %5174, 0x3F70101000000000
  %5176 = fadd fast float %5175, 0xBFB99999A0000000
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, 0x3FF1C71C80000000
  %5179 = call float @dx.op.binary.f32(i32 36, float %5175, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5180 = fsub fast float 1.000000e+00, %5178
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5164
  %5183 = fmul fast float %5181, %5165
  %5184 = fmul fast float %5181, %5166
  %5185 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5186 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = fmul fast float %5178, %5164
  %5189 = fmul fast float %5178, %5165
  %5190 = fmul fast float %5178, %5166
  %5191 = fadd fast float %5188, %5179
  %5192 = fadd fast float %5189, %5179
  %5193 = fadd fast float %5190, %5179
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.i32 %5197, 3
  %5199 = extractvalue %dx.types.CBufRet.i32 %5197, 2
  %5200 = add i32 %5199, 0
  %5201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5201, %dx.types.Handle %105, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5206 = extractvalue %dx.types.ResRet.f32 %5202, 3
  %5207 = and i32 %5198, 255
  %5208 = uitofp i32 %5207 to float
  %5209 = lshr i32 %5198, 8
  %5210 = and i32 %5209, 255
  %5211 = uitofp i32 %5210 to float
  %5212 = lshr i32 %5198, 16
  %5213 = and i32 %5212, 255
  %5214 = uitofp i32 %5213 to float
  %5215 = fmul fast float %5214, 0x3F70101000000000
  %5216 = fmul fast float %5203, %5208
  %5217 = fadd fast float %5216, %5211
  %5218 = fmul fast float %5217, 0x3F70101000000000
  %5219 = fadd fast float %5204, -5.000000e-01
  %5220 = fadd fast float %5206, -5.000000e-01
  %5221 = fmul fast float %5219, %5215
  %5222 = fmul fast float %5220, %5215
  %5223 = fadd fast float %5221, 5.000000e-01
  %5224 = fadd fast float %5222, 5.000000e-01
  %5225 = fmul fast float %5223, 2.000000e+00
  %5226 = fadd fast float %5225, -1.000000e+00
  %5227 = fmul fast float %5224, 2.000000e+00
  %5228 = fadd fast float %5227, -1.000000e+00
  %5229 = fadd fast float %5226, %5228
  %5230 = fmul fast float %5229, 5.000000e-01
  %5231 = fsub fast float %5226, %5228
  %5232 = fmul fast float %5231, 5.000000e-01
  %5233 = call float @dx.op.unary.f32(i32 6, float %5230)  ; FAbs(value)
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5236 = fsub fast float %5234, %5235
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5232, float %5236, float %5230, float %5232, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 25, float %5237)  ; Rsqrt(value)
  %5239 = fmul fast float %5230, %5238
  %5240 = fmul fast float %5232, %5238
  %5241 = select i1 %5068, i32 %5058, i32 %5059
  %5242 = select i1 %5066, i32 %5057, i32 %5241
  %5243 = sitofp i32 %5242 to float
  %5244 = fmul fast float %5236, %5243
  %5245 = fmul fast float %5244, %5238
  %5246 = select i1 %5068, float %5245, float %5240
  %5247 = select i1 %5068, float %5240, float %5245
  %5248 = select i1 %5066, float %5245, float %5239
  %5249 = select i1 %5066, float %5240, float %5246
  %5250 = select i1 %5066, float %5239, float %5247
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = fptoui float %5252 to i32
  %5254 = add i32 %5253, 0
  %5255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5256 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5255, %dx.types.Handle %105, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = fsub fast float %5185, %5009
  %5259 = fsub fast float %5186, %5010
  %5260 = fsub fast float %5187, %5011
  %5261 = fmul fast float %5258, %5157
  %5262 = fmul fast float %5259, %5157
  %5263 = fmul fast float %5260, %5157
  %5264 = fadd fast float %5261, %5009
  %5265 = fadd fast float %5262, %5010
  %5266 = fadd fast float %5263, %5011
  %5267 = fsub fast float %5194, %5012
  %5268 = fsub fast float %5195, %5013
  %5269 = fsub fast float %5196, %5014
  %5270 = fmul fast float %5267, %5157
  %5271 = fmul fast float %5268, %5157
  %5272 = fmul fast float %5269, %5157
  %5273 = fadd fast float %5270, %5012
  %5274 = fadd fast float %5271, %5013
  %5275 = fadd fast float %5272, %5014
  %5276 = fadd fast float %5248, %5015
  %5277 = fadd fast float %5249, %5016
  %5278 = fadd fast float %5250, %5017
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float %5276, float %5277, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.unary.f32(i32 25, float %5279)  ; Rsqrt(value)
  %5281 = fmul fast float %5280, %5276
  %5282 = fmul fast float %5280, %5277
  %5283 = fmul fast float %5280, %5278
  %5284 = fsub fast float %5281, %5015
  %5285 = fsub fast float %5282, %5016
  %5286 = fsub fast float %5283, %5017
  %5287 = fmul fast float %5284, %5157
  %5288 = fmul fast float %5285, %5157
  %5289 = fmul fast float %5286, %5157
  %5290 = fadd fast float %5287, %5015
  %5291 = fadd fast float %5288, %5016
  %5292 = fadd fast float %5289, %5017
  %5293 = call float @dx.op.binary.f32(i32 36, float %5019, float %5205)  ; FMin(a,b)
  %5294 = fsub fast float %5293, %5019
  %5295 = fmul fast float %5294, %5157
  %5296 = fadd fast float %5295, %5019
  %5297 = fsub fast float %5218, %5018
  %5298 = fmul fast float %5297, %5157
  %5299 = fadd fast float %5298, %5018
  %5300 = fsub fast float %5257, %4333
  %5301 = fsub fast float %5257, %4334
  %5302 = fsub fast float %5257, %4335
  %5303 = fmul fast float %5300, %5157
  %5304 = fmul fast float %5301, %5157
  %5305 = fmul fast float %5302, %5157
  %5306 = fadd fast float %5303, %4333
  %5307 = fadd fast float %5304, %4334
  %5308 = fadd fast float %5305, %4335
  br label %5309

; <label>:5309                                    ; preds = %5155, %5117, %5008, %4724
  %5310 = phi float [ %5264, %5155 ], [ %5009, %5117 ], [ %5009, %5008 ], [ %4329, %4724 ]
  %5311 = phi float [ %5265, %5155 ], [ %5010, %5117 ], [ %5010, %5008 ], [ %4330, %4724 ]
  %5312 = phi float [ %5266, %5155 ], [ %5011, %5117 ], [ %5011, %5008 ], [ %4331, %4724 ]
  %5313 = phi float [ %5273, %5155 ], [ %5012, %5117 ], [ %5012, %5008 ], [ %4289, %4724 ]
  %5314 = phi float [ %5274, %5155 ], [ %5013, %5117 ], [ %5013, %5008 ], [ %4290, %4724 ]
  %5315 = phi float [ %5275, %5155 ], [ %5014, %5117 ], [ %5014, %5008 ], [ %4291, %4724 ]
  %5316 = phi float [ %5290, %5155 ], [ %5015, %5117 ], [ %5015, %5008 ], [ %4268, %4724 ]
  %5317 = phi float [ %5291, %5155 ], [ %5016, %5117 ], [ %5016, %5008 ], [ %4269, %4724 ]
  %5318 = phi float [ %5292, %5155 ], [ %5017, %5117 ], [ %5017, %5008 ], [ %4270, %4724 ]
  %5319 = phi float [ %5306, %5155 ], [ %4333, %5117 ], [ %4333, %5008 ], [ %4333, %4724 ]
  %5320 = phi float [ %5307, %5155 ], [ %4334, %5117 ], [ %4334, %5008 ], [ %4334, %4724 ]
  %5321 = phi float [ %5308, %5155 ], [ %4335, %5117 ], [ %4335, %5008 ], [ %4335, %4724 ]
  %5322 = phi float [ %5299, %5155 ], [ %5018, %5117 ], [ %5018, %5008 ], [ %4292, %4724 ]
  %5323 = phi float [ %5296, %5155 ], [ %5019, %5117 ], [ %5019, %5008 ], [ %4214, %4724 ]
  %5324 = fcmp fast une float %4728, 0.000000e+00
  br i1 %5324, label %5325, label %5494

; <label>:5325                                    ; preds = %5309
  %5326 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %188, %5327
  %5329 = fsub fast float -0.000000e+00, %5328
  %5330 = fmul fast float %189, %5327
  %5331 = fsub fast float -0.000000e+00, %5330
  %5332 = fmul fast float %190, %5327
  %5333 = fsub fast float -0.000000e+00, %5332
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5331, float %5333, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = fmul fast float %4728, 2.500000e+00
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = fmul fast float %4728, 0x4013FFFFE0000000
  %5338 = fadd fast float %5337, 0xBFFFFFFFE0000000
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fmul fast float %4728, 0x4004000020000000
  %5341 = fadd fast float %5340, 0xBFF8000040000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %4271, 1.000000e+01
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, 2.000000e+00
  %5346 = fsub fast float 3.000000e+00, %5345
  %5347 = fmul fast float %5344, %5344
  %5348 = fmul fast float %5347, %5346
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = fsub fast float 0x3FE3333340000000, %5322
  %5351 = fmul fast float %5350, 0x400AAAAAA0000000
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fmul fast float %5349, %5352
  %5354 = fmul fast float %5310, 0x3FEA2B8620000000
  %5355 = fmul fast float %5311, 0x3FEA2B8620000000
  %5356 = fmul fast float %5312, 0x3FEA2B8620000000
  %5357 = fadd fast float %5354, 0x3FC81DFBA0000000
  %5358 = fmul fast float %5357, %5310
  %5359 = fadd fast float %5358, 0x3F910E6020000000
  %5360 = fadd fast float %5355, 0x3FC81DFBA0000000
  %5361 = fmul fast float %5360, %5311
  %5362 = fadd fast float %5361, 0x3F910E6020000000
  %5363 = fadd fast float %5356, 0x3FC81DFBA0000000
  %5364 = fmul fast float %5363, %5312
  %5365 = fadd fast float %5364, 0x3F910E6020000000
  %5366 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = fsub fast float %5366, %5310
  %5370 = fsub fast float %5367, %5311
  %5371 = fsub fast float %5368, %5312
  %5372 = fmul fast float %5369, %5336
  %5373 = fmul fast float %5372, %5353
  %5374 = fmul fast float %5370, %5336
  %5375 = fmul fast float %5374, %5353
  %5376 = fmul fast float %5371, %5336
  %5377 = fmul fast float %5376, %5353
  %5378 = fadd fast float %5373, %5310
  %5379 = fadd fast float %5375, %5311
  %5380 = fadd fast float %5377, %5312
  %5381 = fmul fast float %5323, %5323
  %5382 = fmul fast float %5381, %5381
  %5383 = fadd fast float %5339, 1.000000e+00
  %5384 = fsub fast float %5383, %5353
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float 1.000000e+00, %5382
  %5389 = call float @dx.op.binary.f32(i32 36, float %5385, float %5388)  ; FMin(a,b)
  %5390 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5391 = call float @dx.op.binary.f32(i32 35, float %5389, float %5390)  ; FMax(a,b)
  %5392 = fadd fast float %5387, 0xBFE4CCCCC0000000
  %5393 = fmul fast float %5392, 0x4006DB6DA0000000
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fmul fast float %5394, 2.000000e+00
  %5396 = fsub fast float 3.000000e+00, %5395
  %5397 = bitcast float %5313 to i32
  %5398 = ashr i32 %5397, 1
  %5399 = add nsw i32 %5398, 532487669
  %5400 = bitcast i32 %5399 to float
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = bitcast float %5401 to i32
  %5403 = sub nsw i32 2129859010, %5402
  %5404 = bitcast i32 %5403 to float
  %5405 = fmul fast float %5404, 2.000000e+00
  %5406 = bitcast float %5314 to i32
  %5407 = ashr i32 %5406, 1
  %5408 = add nsw i32 %5407, 532487669
  %5409 = bitcast i32 %5408 to float
  %5410 = fsub fast float 1.000000e+00, %5409
  %5411 = bitcast float %5410 to i32
  %5412 = sub nsw i32 2129859010, %5411
  %5413 = bitcast i32 %5412 to float
  %5414 = fmul fast float %5413, 2.000000e+00
  %5415 = bitcast float %5315 to i32
  %5416 = ashr i32 %5415, 1
  %5417 = add nsw i32 %5416, 532487669
  %5418 = bitcast i32 %5417 to float
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = bitcast float %5419 to i32
  %5421 = sub nsw i32 2129859010, %5420
  %5422 = bitcast i32 %5421 to float
  %5423 = fmul fast float %5422, 2.000000e+00
  %5424 = fsub fast float 0x4002A9FBE0000000, %5405
  %5425 = fadd fast float %5405, 0x3FD54FDF00000000
  %5426 = bitcast float %5425 to i32
  %5427 = sub nsw i32 2129859010, %5426
  %5428 = bitcast i32 %5427 to float
  %5429 = fmul fast float %5428, %5424
  %5430 = fmul fast float %5429, %5429
  %5431 = fsub fast float 0x4002A9FBE0000000, %5414
  %5432 = fadd fast float %5414, 0x3FD54FDF00000000
  %5433 = bitcast float %5432 to i32
  %5434 = sub nsw i32 2129859010, %5433
  %5435 = bitcast i32 %5434 to float
  %5436 = fmul fast float %5435, %5431
  %5437 = fmul fast float %5436, %5436
  %5438 = fsub fast float 0x4002A9FBE0000000, %5423
  %5439 = fadd fast float %5423, 0x3FD54FDF00000000
  %5440 = bitcast float %5439 to i32
  %5441 = sub nsw i32 2129859010, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5442, %5438
  %5444 = fmul fast float %5443, %5443
  %5445 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5430)  ; FMax(a,b)
  %5446 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5437)  ; FMax(a,b)
  %5447 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5444)  ; FMax(a,b)
  %5448 = fsub fast float 1.000000e+00, %5334
  %5449 = fadd fast float %5448, %5349
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fsub fast float 1.000000e+00, %4709
  %5452 = fmul fast float %5391, %5451
  %5453 = fmul fast float %5394, %5394
  %5454 = fmul fast float %5453, %5452
  %5455 = fmul fast float %5454, %5396
  %5456 = fmul fast float %5451, 0xBFE99999A0000000
  %5457 = fmul fast float %5456, %5336
  %5458 = fmul fast float %5457, %5353
  %5459 = fadd fast float %5458, 1.000000e+00
  %5460 = fadd fast float %5322, -1.000000e+00
  %5461 = fmul fast float %5459, %5460
  %5462 = fadd fast float %5461, 1.000000e+00
  %5463 = fsub fast float %5445, %5313
  %5464 = fsub fast float %5446, %5314
  %5465 = fsub fast float %5447, %5315
  %5466 = fmul fast float %5455, %5463
  %5467 = fmul fast float %5455, %5464
  %5468 = fmul fast float %5455, %5465
  %5469 = fadd fast float %5466, %5313
  %5470 = fadd fast float %5467, %5314
  %5471 = fadd fast float %5468, %5315
  %5472 = fsub fast float %116, %5316
  %5473 = fsub fast float %117, %5317
  %5474 = fsub fast float %118, %5318
  %5475 = fmul fast float %5455, %5472
  %5476 = fmul fast float %5455, %5473
  %5477 = fmul fast float %5455, %5474
  %5478 = fadd fast float %5475, %5316
  %5479 = fadd fast float %5476, %5317
  %5480 = fadd fast float %5477, %5318
  %5481 = fmul fast float %5455, %5450
  %5482 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5483 = fsub fast float 1.000000e+00, %5482
  %5484 = fmul fast float %5481, %5483
  %5485 = fadd fast float %5484, %5482
  %5486 = fsub fast float 1.000000e+00, %5323
  %5487 = fmul fast float %5455, %5486
  %5488 = fadd fast float %5487, %5323
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.unary.f32(i32 25, float %5489)  ; Rsqrt(value)
  %5491 = fmul fast float %5478, %5490
  %5492 = fmul fast float %5479, %5490
  %5493 = fmul fast float %5480, %5490
  br label %5494

; <label>:5494                                    ; preds = %5325, %5309
  %5495 = phi float [ %5378, %5325 ], [ %5310, %5309 ]
  %5496 = phi float [ %5379, %5325 ], [ %5311, %5309 ]
  %5497 = phi float [ %5380, %5325 ], [ %5312, %5309 ]
  %5498 = phi float [ %5469, %5325 ], [ %5313, %5309 ]
  %5499 = phi float [ %5470, %5325 ], [ %5314, %5309 ]
  %5500 = phi float [ %5471, %5325 ], [ %5315, %5309 ]
  %5501 = phi float [ %5491, %5325 ], [ %5316, %5309 ]
  %5502 = phi float [ %5492, %5325 ], [ %5317, %5309 ]
  %5503 = phi float [ %5493, %5325 ], [ %5318, %5309 ]
  %5504 = phi float [ %5485, %5325 ], [ %5322, %5309 ]
  %5505 = phi float [ %5488, %5325 ], [ %5323, %5309 ]
  %5506 = icmp eq i32 %54, 0
  br i1 %5506, label %5537, label %5507

; <label>:5507                                    ; preds = %5494
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5511 = fmul fast float %5509, %109
  %5512 = fmul fast float %5510, %110
  %5513 = fmul fast float %5511, 1.024000e+03
  %5514 = fmul fast float %5512, 1.024000e+03
  %5515 = fadd fast float %5513, -5.120000e+02
  %5516 = fadd fast float %5514, -5.120000e+02
  %5517 = fmul fast float %5511, 0x4081BEDF00000000
  %5518 = fadd fast float %5517, 0xC071BEDF00000000
  %5519 = call float @dx.op.unary.f32(i32 22, float %5518)  ; Frc(value)
  %5520 = fmul fast float %5515, %5519
  %5521 = fadd fast float %5520, %5516
  %5522 = fmul fast float %5512, 0x4073BEBE20000000
  %5523 = fadd fast float %5522, 0xC063BEBE20000000
  %5524 = call float @dx.op.unary.f32(i32 22, float %5523)  ; Frc(value)
  %5525 = fmul fast float %5516, %5524
  %5526 = fadd fast float %5525, %5515
  %5527 = fmul fast float %5521, %5526
  %5528 = call float @dx.op.unary.f32(i32 22, float %5527)  ; Frc(value)
  %5529 = add i32 %308, 12
  %5530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.i32 %5530, 0
  %5532 = and i32 %5531, 255
  %5533 = uitofp i32 %5532 to float
  %5534 = fmul fast float %5533, 0x3F70101020000000
  %5535 = fcmp fast olt float %5528, %5534
  br i1 %5535, label %5536, label %5537

; <label>:5536                                    ; preds = %5507
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5537

; <label>:5537                                    ; preds = %5536, %5507, %5494
  %5538 = fsub fast float -0.000000e+00, %190
  %5539 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5540, %188
  %5542 = fmul fast float %5540, %189
  %5543 = fmul fast float %5540, %190
  %5544 = fsub fast float -0.000000e+00, %5541
  %5545 = fsub fast float -0.000000e+00, %5542
  %5546 = fsub fast float -0.000000e+00, %5543
  %5547 = select i1 %254, float 0.000000e+00, float %5500
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fmul fast float %5550, 2.000000e+00
  %5552 = fmul fast float %5551, %5501
  %5553 = fmul fast float %5551, %5502
  %5554 = fmul fast float %5551, %5503
  %5555 = fsub fast float %5541, %5552
  %5556 = fsub fast float %5542, %5553
  %5557 = fsub fast float %5543, %5554
  %5558 = call float @dx.op.binary.f32(i32 36, float %5505, float 1.000000e+00)  ; FMin(a,b)
  %5559 = fsub fast float 1.000000e+00, %5505
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = call float @dx.op.dot3.f32(i32 55, float %80, float %76, float %72, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = fmul fast float %5563, 0x3FD20DD760000000
  %5565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5566 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = fcmp fast oeq float %5566, 0.000000e+00
  %5568 = fcmp fast oeq float %5565, 0.000000e+00
  %5569 = or i1 %5568, %5567
  br i1 %5569, label %5599, label %5570

; <label>:5570                                    ; preds = %5537
  %5571 = fsub fast float -0.000000e+00, %83
  %5572 = fsub fast float -0.000000e+00, %81
  %5573 = call float @dx.op.unary.f32(i32 24, float %5566)  ; Sqrt(value)
  %5574 = fdiv fast float %5573, %5565
  %5575 = fcmp fast ogt float %5574, 0x3FFB6F8900000000
  %5576 = select i1 %5575, float 0x3FFB6F8900000000, float %5574
  %5577 = fmul fast float %5576, 0x3FE8A23460000000
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = call float @dx.op.binary.f32(i32 35, float %5576, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5580 = fmul fast float %5578, %5565
  %5581 = fmul fast float %5579, 0x3FF279A740000000
  %5582 = fadd fast float %5581, -1.000000e+00
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %82, float %5571, float %5572, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 25, float %5583)  ; Rsqrt(value)
  %5585 = fmul fast float %5584, %5571
  %5586 = fmul fast float %5584, %5572
  %5587 = fmul fast float %5584, %82
  %5588 = fmul fast float %5582, %5582
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = fmul fast float %5579, 0x40005F8BE0000000
  %5591 = fsub fast float 0x400C5BF8A0000000, %5590
  %5592 = fdiv fast float %5580, %5591
  %5593 = fmul fast float %5592, 0x3FEE31C3C0000000
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5579, 0x3FDACB7480000000
  %5596 = fadd fast float %5595, 0xBFD7347680000000
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5597, %5589
  br label %5599

; <label>:5599                                    ; preds = %5570, %5537
  %5600 = phi float [ %5585, %5570 ], [ 0.000000e+00, %5537 ]
  %5601 = phi float [ %5586, %5570 ], [ 0.000000e+00, %5537 ]
  %5602 = phi float [ %5587, %5570 ], [ 0.000000e+00, %5537 ]
  %5603 = phi float [ %5594, %5570 ], [ 0.000000e+00, %5537 ]
  %5604 = phi float [ %5598, %5570 ], [ 0.000000e+00, %5537 ]
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, 0x3FDF454380000000
  %5607 = fmul fast float %5605, %5605
  %5608 = fmul fast float %5607, 0x3FEE471020000000
  %5609 = fadd fast float %5608, 0xBFD42F6020000000
  %5610 = fmul fast float %5565, 0x3FD20DD760000000
  %5611 = fmul fast float %5609, %5604
  %5612 = fadd fast float %5611, %5610
  %5613 = fmul fast float %5606, %5603
  %5614 = fadd fast float %5612, %5613
  %5615 = fsub fast float %5612, %5613
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5555, float %5556, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fmul fast float %5616, 0x3FDF454380000000
  %5618 = fmul fast float %5616, %5616
  %5619 = fmul fast float %5618, 0x3FEE471020000000
  %5620 = fadd fast float %5619, 0xBFD42F6020000000
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5603, float %5604, float 0x3FD20DD760000000, float %5617, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5623 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fcmp fast oeq float %5623, 0.000000e+00
  %5625 = fcmp fast oeq float %5622, 0.000000e+00
  %5626 = or i1 %5625, %5624
  br i1 %5626, label %5656, label %5627

; <label>:5627                                    ; preds = %5599
  %5628 = fsub fast float -0.000000e+00, %79
  %5629 = fsub fast float -0.000000e+00, %77
  %5630 = call float @dx.op.unary.f32(i32 24, float %5623)  ; Sqrt(value)
  %5631 = fdiv fast float %5630, %5622
  %5632 = fcmp fast ogt float %5631, 0x3FFB6F8900000000
  %5633 = select i1 %5632, float 0x3FFB6F8900000000, float %5631
  %5634 = fmul fast float %5633, 0x3FE8A23460000000
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5633, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5637 = fmul fast float %5635, %5622
  %5638 = fmul fast float %5636, 0x3FF279A740000000
  %5639 = fadd fast float %5638, -1.000000e+00
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5628, float %5629, float %78, float %5628, float %5629, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 25, float %5640)  ; Rsqrt(value)
  %5642 = fmul fast float %5641, %5628
  %5643 = fmul fast float %5641, %5629
  %5644 = fmul fast float %5641, %78
  %5645 = fmul fast float %5639, %5639
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = fmul fast float %5636, 0x40005F8BE0000000
  %5648 = fsub fast float 0x400C5BF8A0000000, %5647
  %5649 = fdiv fast float %5637, %5648
  %5650 = fmul fast float %5649, 0x3FEE31C3C0000000
  %5651 = fmul fast float %5650, %5646
  %5652 = fmul fast float %5636, 0x3FDACB7480000000
  %5653 = fadd fast float %5652, 0xBFD7347680000000
  %5654 = fmul fast float %5653, %5649
  %5655 = fmul fast float %5654, %5646
  br label %5656

; <label>:5656                                    ; preds = %5627, %5599
  %5657 = phi float [ %5642, %5627 ], [ 0.000000e+00, %5599 ]
  %5658 = phi float [ %5643, %5627 ], [ 0.000000e+00, %5599 ]
  %5659 = phi float [ %5644, %5627 ], [ 0.000000e+00, %5599 ]
  %5660 = phi float [ %5651, %5627 ], [ 0.000000e+00, %5599 ]
  %5661 = phi float [ %5655, %5627 ], [ 0.000000e+00, %5599 ]
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = fmul fast float %5662, 0x3FDF454380000000
  %5664 = fmul fast float %5662, %5662
  %5665 = fmul fast float %5664, 0x3FEE471020000000
  %5666 = fadd fast float %5665, 0xBFD42F6020000000
  %5667 = fmul fast float %5622, 0x3FD20DD760000000
  %5668 = fmul fast float %5666, %5661
  %5669 = fadd fast float %5668, %5667
  %5670 = fmul fast float %5663, %5660
  %5671 = fadd fast float %5669, %5670
  %5672 = fsub fast float %5669, %5670
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %5555, float %5556, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fmul fast float %5673, 0x3FDF454380000000
  %5675 = fmul fast float %5673, %5673
  %5676 = fmul fast float %5675, 0x3FEE471020000000
  %5677 = fadd fast float %5676, 0xBFD42F6020000000
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5622, float %5660, float %5661, float 0x3FD20DD760000000, float %5674, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5680 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = fcmp fast oeq float %5680, 0.000000e+00
  %5682 = fcmp fast oeq float %5679, 0.000000e+00
  %5683 = or i1 %5682, %5681
  br i1 %5683, label %5713, label %5684

; <label>:5684                                    ; preds = %5656
  %5685 = fsub fast float -0.000000e+00, %75
  %5686 = fsub fast float -0.000000e+00, %73
  %5687 = call float @dx.op.unary.f32(i32 24, float %5680)  ; Sqrt(value)
  %5688 = fdiv fast float %5687, %5679
  %5689 = fcmp fast ogt float %5688, 0x3FFB6F8900000000
  %5690 = select i1 %5689, float 0x3FFB6F8900000000, float %5688
  %5691 = fmul fast float %5690, 0x3FE8A23460000000
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = call float @dx.op.binary.f32(i32 35, float %5690, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5694 = fmul fast float %5692, %5679
  %5695 = fmul fast float %5693, 0x3FF279A740000000
  %5696 = fadd fast float %5695, -1.000000e+00
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5685, float %5686, float %74, float %5685, float %5686, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 25, float %5697)  ; Rsqrt(value)
  %5699 = fmul fast float %5698, %5685
  %5700 = fmul fast float %5698, %5686
  %5701 = fmul fast float %5698, %74
  %5702 = fmul fast float %5696, %5696
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = fmul fast float %5693, 0x40005F8BE0000000
  %5705 = fsub fast float 0x400C5BF8A0000000, %5704
  %5706 = fdiv fast float %5694, %5705
  %5707 = fmul fast float %5706, 0x3FEE31C3C0000000
  %5708 = fmul fast float %5707, %5703
  %5709 = fmul fast float %5693, 0x3FDACB7480000000
  %5710 = fadd fast float %5709, 0xBFD7347680000000
  %5711 = fmul fast float %5710, %5706
  %5712 = fmul fast float %5711, %5703
  br label %5713

; <label>:5713                                    ; preds = %5684, %5656
  %5714 = phi float [ %5699, %5684 ], [ 0.000000e+00, %5656 ]
  %5715 = phi float [ %5700, %5684 ], [ 0.000000e+00, %5656 ]
  %5716 = phi float [ %5701, %5684 ], [ 0.000000e+00, %5656 ]
  %5717 = phi float [ %5708, %5684 ], [ 0.000000e+00, %5656 ]
  %5718 = phi float [ %5712, %5684 ], [ 0.000000e+00, %5656 ]
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = fmul fast float %5719, 0x3FDF454380000000
  %5721 = fmul fast float %5719, %5719
  %5722 = fmul fast float %5721, 0x3FEE471020000000
  %5723 = fadd fast float %5722, 0xBFD42F6020000000
  %5724 = fmul fast float %5679, 0x3FD20DD760000000
  %5725 = fmul fast float %5723, %5718
  %5726 = fadd fast float %5725, %5724
  %5727 = fmul fast float %5720, %5717
  %5728 = fadd fast float %5726, %5727
  %5729 = fsub fast float %5726, %5727
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5555, float %5556, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fmul fast float %5730, 0x3FDF454380000000
  %5732 = fmul fast float %5730, %5730
  %5733 = fmul fast float %5732, 0x3FEE471020000000
  %5734 = fadd fast float %5733, 0xBFD42F6020000000
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5717, float %5718, float 0x3FD20DD760000000, float %5731, float %5734)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = call float @dx.op.binary.f32(i32 35, float %5614, float 0.000000e+00)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5671, float 0.000000e+00)  ; FMax(a,b)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5728, float 0.000000e+00)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5615, float 0.000000e+00)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5672, float 0.000000e+00)  ; FMax(a,b)
  %5741 = call float @dx.op.binary.f32(i32 35, float %5729, float 0.000000e+00)  ; FMax(a,b)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5621, float 0.000000e+00)  ; FMax(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5678, float 0.000000e+00)  ; FMax(a,b)
  %5744 = call float @dx.op.binary.f32(i32 35, float %5735, float 0.000000e+00)  ; FMax(a,b)
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = call float @dx.op.binary.f32(i32 36, float %5495, float %5746)  ; FMin(a,b)
  %5748 = fsub fast float 1.000000e+00, %5558
  %5749 = fmul fast float %5747, %5748
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = bitcast float %5750 to i32
  %5752 = sub nsw i32 2129859010, %5751
  %5753 = bitcast i32 %5752 to float
  %5754 = call float @dx.op.binary.f32(i32 36, float %5496, float %5746)  ; FMin(a,b)
  %5755 = fmul fast float %5754, %5748
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = bitcast float %5756 to i32
  %5758 = sub nsw i32 2129859010, %5757
  %5759 = bitcast i32 %5758 to float
  %5760 = call float @dx.op.binary.f32(i32 36, float %5497, float %5746)  ; FMin(a,b)
  %5761 = fmul fast float %5760, %5748
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = bitcast float %5762 to i32
  %5764 = sub nsw i32 2129859010, %5763
  %5765 = bitcast i32 %5764 to float
  %5766 = fmul fast float %5736, %5558
  %5767 = fmul fast float %5766, %5753
  %5768 = fmul fast float %5737, %5558
  %5769 = fmul fast float %5768, %5759
  %5770 = fmul fast float %5738, %5558
  %5771 = fmul fast float %5770, %5765
  %5772 = call float @dx.op.binary.f32(i32 36, float %5498, float %5746)  ; FMin(a,b)
  %5773 = fmul fast float %5772, %5748
  %5774 = fsub fast float 1.000000e+00, %5773
  %5775 = bitcast float %5774 to i32
  %5776 = sub nsw i32 2129859010, %5775
  %5777 = bitcast i32 %5776 to float
  %5778 = call float @dx.op.binary.f32(i32 36, float %5499, float %5746)  ; FMin(a,b)
  %5779 = fmul fast float %5778, %5748
  %5780 = fsub fast float 1.000000e+00, %5779
  %5781 = bitcast float %5780 to i32
  %5782 = sub nsw i32 2129859010, %5781
  %5783 = bitcast i32 %5782 to float
  %5784 = call float @dx.op.binary.f32(i32 36, float %5547, float %5746)  ; FMin(a,b)
  %5785 = fmul fast float %5784, %5748
  %5786 = fsub fast float 1.000000e+00, %5785
  %5787 = bitcast float %5786 to i32
  %5788 = sub nsw i32 2129859010, %5787
  %5789 = bitcast i32 %5788 to float
  %5790 = fmul fast float %5742, %5558
  %5791 = fmul fast float %5790, %5777
  %5792 = fmul fast float %5743, %5558
  %5793 = fmul fast float %5792, %5783
  %5794 = fmul fast float %5744, %5558
  %5795 = fmul fast float %5794, %5789
  %5796 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5769, float %5771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = select i1 %254, float 0.000000e+00, float %5767
  %5798 = select i1 %254, float %5796, float %5769
  %5799 = select i1 %254, float 0.000000e+00, float %5771
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = select i1 %254, float 0.000000e+00, float %5739
  %5802 = select i1 %254, float %5800, float %5740
  %5803 = select i1 %254, float 0.000000e+00, float %5741
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5793, float %5795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = select i1 %254, float 0.000000e+00, float %5791
  %5806 = select i1 %254, float %5804, float %5793
  %5807 = select i1 %254, float 0.000000e+00, float %5795
  %5808 = fmul fast float %5563, 0x4071A18460000000
  %5809 = fadd fast float %5808, 0x3F0FFB4800000000
  %5810 = call float @dx.op.unary.f32(i32 23, float %5809)  ; Log(value)
  %5811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5812 = extractvalue %dx.types.ResRet.i32 %5811, 0
  %5813 = and i32 %5812, 8388608
  %5814 = icmp eq i32 %5813, 0
  br i1 %5814, label %5815, label %5855

; <label>:5815                                    ; preds = %5713
  %5816 = fadd fast float %5810, 0x4006B851E0000000
  %5817 = add i32 %308, 12
  %5818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5817, i32 undef)  ; BufferLoad(srv,index,wot)
  %5819 = extractvalue %dx.types.ResRet.i32 %5818, 0
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5822 = lshr i32 %5819, 16
  %5823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5822)  ; LegacyF16ToF32(value)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5827 = fsub fast float %100, %5826
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = fmul fast float %5827, %5828
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = fsub fast float %5824, %5816
  %5832 = fcmp fast ogt float %5831, 0.000000e+00
  %5833 = fcmp fast olt float %5831, 0.000000e+00
  %5834 = zext i1 %5832 to i32
  %5835 = zext i1 %5833 to i32
  %5836 = sub nsw i32 %5834, %5835
  %5837 = sitofp i32 %5836 to float
  %5838 = call float @dx.op.unary.f32(i32 6, float %5831)  ; FAbs(value)
  %5839 = fsub fast float -0.000000e+00, %5823
  %5840 = fsub fast float %5839, %5821
  %5841 = fadd fast float %5840, %5838
  %5842 = call float @dx.op.binary.f32(i32 35, float %5841, float 0.000000e+00)  ; FMax(a,b)
  %5843 = fmul fast float %5837, %5842
  %5844 = fadd fast float %5810, %5843
  %5845 = call float @dx.op.unary.f32(i32 21, float %5844)  ; Exp(value)
  %5846 = fmul fast float %5845, 0x3F50624DE0000000
  %5847 = fcmp fast oeq float %5564, 0.000000e+00
  %5848 = fdiv fast float 0x400C5BF880000000, %5563
  %5849 = fmul fast float %5846, %5848
  %5850 = select i1 %5847, float 1.000000e+00, float %5849
  %5851 = call float @dx.op.binary.f32(i32 35, float %5850, float 1.000000e+00)  ; FMax(a,b)
  %5852 = fadd fast float %5851, -1.000000e+00
  %5853 = fmul fast float %5852, %5830
  %5854 = fadd fast float %5853, 1.000000e+00
  br label %5855

; <label>:5855                                    ; preds = %5815, %5713
  %5856 = phi float [ %5854, %5815 ], [ 1.000000e+00, %5713 ]
  %5857 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5858 = fmul fast float %5857, %5797
  %5859 = fmul fast float %5857, %5798
  %5860 = fmul fast float %5857, %5799
  %5861 = fmul fast float %4215, %4215
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = fmul fast float %5549, 9.843750e-01
  %5864 = fmul fast float %5504, 9.843750e-01
  %5865 = fadd fast float %5863, 7.812500e-03
  %5866 = fadd fast float %5864, 7.812500e-03
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %5865, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.ResRet.f32 %5867, 1
  %5870 = extractvalue %dx.types.ResRet.f32 %5867, 2
  %5871 = extractvalue %dx.types.ResRet.f32 %5867, 3
  %5872 = fsub fast float 1.000000e+00, %5862
  %5873 = fsub fast float %5870, %5868
  %5874 = fsub fast float %5871, %5869
  %5875 = fmul fast float %5873, %5872
  %5876 = fmul fast float %5874, %5872
  %5877 = fadd fast float %5875, %5868
  %5878 = fadd fast float %5876, %5869
  %5879 = fmul fast float %5877, %5498
  %5880 = fmul fast float %5877, %5499
  %5881 = fmul fast float %5877, %5547
  %5882 = fadd fast float %5879, %5878
  %5883 = fadd fast float %5880, %5878
  %5884 = fadd fast float %5881, %5878
  %5885 = fcmp fast ogt float %4216, 0.000000e+00
  br i1 %5885, label %5886, label %5912

; <label>:5886                                    ; preds = %5855
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %5549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fadd fast float %5889, -5.000000e-01
  %5893 = fadd fast float %5890, -5.000000e-01
  %5894 = fsub fast float 1.000000e+00, %5498
  %5895 = fsub fast float 1.000000e+00, %5499
  %5896 = fsub fast float 1.000000e+00, %5547
  %5897 = fmul fast float %5498, 4.000000e+00
  %5898 = fmul fast float %5897, %5894
  %5899 = fmul fast float %5898, %5891
  %5900 = fmul fast float %5499, 4.000000e+00
  %5901 = fmul fast float %5900, %5895
  %5902 = fmul fast float %5901, %5892
  %5903 = fmul fast float %5547, 4.000000e+00
  %5904 = fmul fast float %5903, %5896
  %5905 = fmul fast float %5904, %5893
  %5906 = fadd fast float %5899, %5882
  %5907 = fadd fast float %5902, %5883
  %5908 = fadd fast float %5905, %5884
  %5909 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5910 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5911 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  br label %5912

; <label>:5912                                    ; preds = %5886, %5855
  %5913 = phi float [ %5909, %5886 ], [ %5882, %5855 ]
  %5914 = phi float [ %5910, %5886 ], [ %5883, %5855 ]
  %5915 = phi float [ %5911, %5886 ], [ %5884, %5855 ]
  %5916 = call float @dx.op.binary.f32(i32 35, float %5914, float %5915)  ; FMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5913, float %5916)  ; FMax(a,b)
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = fmul fast float %188, %188
  %5920 = fmul fast float %189, %189
  %5921 = fadd fast float %5920, %5919
  %5922 = fmul fast float %190, %190
  %5923 = fadd fast float %5921, %5922
  %5924 = call float @dx.op.unary.f32(i32 24, float %5923)  ; Sqrt(value)
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5927 = fsub fast float %5924, %5926
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = fmul fast float %5927, %5928
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5933 = and i32 %5812, 4194304
  %5934 = icmp ne i32 %5933, 0
  %5935 = icmp ne i32 %5813, 0
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5946 = select i1 %5934, float %5937, float %5942
  %5947 = select i1 %5934, float %5938, float %5943
  %5948 = select i1 %5934, float %5939, float %5944
  %5949 = select i1 %5934, float %5940, float %5945
  %5950 = select i1 %5935, float 0.000000e+00, float %5949
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.CBufRet.f32 %5951, 1
  %5954 = select i1 %5934, float %5952, float %5953
  %5955 = select i1 %5935, float 0.000000e+00, float %5954
  %5956 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %5958 = select i1 %5934, float %5956, float %5957
  %5959 = select i1 %5935, float 0.000000e+00, float %5958
  %5960 = fmul fast float %5930, %58
  %5961 = fmul fast float %5960, %5932
  %5962 = fmul fast float %5961, %5959
  %5963 = fadd fast float %5962, 1.000000e+00
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %5497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = fcmp fast ogt float %5964, 0x3E7FF19E20000000
  %5966 = fdiv fast float 1.000000e+00, %5964
  %5967 = select i1 %5965, float %5966, float 0.000000e+00
  %5968 = fmul fast float %5967, %5495
  %5969 = fmul fast float %5967, %5496
  %5970 = fmul fast float %5967, %5497
  %5971 = fadd fast float %5968, -1.000000e+00
  %5972 = fadd fast float %5969, -1.000000e+00
  %5973 = fadd fast float %5970, -1.000000e+00
  %5974 = fmul fast float %5971, 5.000000e-01
  %5975 = fmul fast float %5972, 5.000000e-01
  %5976 = fmul fast float %5973, 5.000000e-01
  %5977 = fadd fast float %5974, 1.000000e+00
  %5978 = fadd fast float %5975, 1.000000e+00
  %5979 = fadd fast float %5976, 1.000000e+00
  %5980 = fsub fast float %5946, %5977
  %5981 = fsub fast float %5947, %5978
  %5982 = fsub fast float %5948, %5979
  %5983 = fmul fast float %5980, %5950
  %5984 = fmul fast float %5981, %5950
  %5985 = fmul fast float %5982, %5950
  %5986 = fadd fast float %5983, %5977
  %5987 = fadd fast float %5984, %5978
  %5988 = fadd fast float %5985, %5979
  %5989 = call float @dx.op.binary.f32(i32 35, float %5549, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5990 = fdiv fast float %4215, %5989
  %5991 = fcmp fast olt float %4315, 1.270000e+02
  %5992 = fcmp fast olt float %4316, 1.270000e+02
  %5993 = fcmp fast olt float %4317, 1.270000e+02
  %5994 = fmul fast float %4315, 0xBFF7154760000000
  %5995 = fmul fast float %5994, %5990
  %5996 = fmul fast float %4316, 0xBFF7154760000000
  %5997 = fmul fast float %5996, %5990
  %5998 = fmul fast float %4317, 0xBFF7154760000000
  %5999 = fmul fast float %5998, %5990
  %6000 = call float @dx.op.unary.f32(i32 21, float %5995)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5997)  ; Exp(value)
  %6002 = call float @dx.op.unary.f32(i32 21, float %5999)  ; Exp(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = select i1 %5991, float %6003, float 0.000000e+00
  %6007 = select i1 %5992, float %6004, float 0.000000e+00
  %6008 = select i1 %5993, float %6005, float 0.000000e+00
  %6009 = fmul fast float %6006, %5918
  %6010 = fmul fast float %6007, %5918
  %6011 = fmul fast float %6008, %5918
  %6012 = fadd fast float %6009, -1.000000e+00
  %6013 = fadd fast float %6010, -1.000000e+00
  %6014 = fadd fast float %6011, -1.000000e+00
  %6015 = fmul fast float %6012, %1359
  %6016 = fmul fast float %6013, %1359
  %6017 = fmul fast float %6014, %1359
  %6018 = fmul fast float %5913, %5805
  %6019 = fmul fast float %5914, %5806
  %6020 = fmul fast float %5915, %5807
  %6021 = fsub fast float 1.000000e+00, %5549
  %6022 = bitcast float %6021 to i32
  %6023 = sitofp i32 %6022 to float
  %6024 = fmul fast float %6023, 5.000000e+00
  %6025 = fadd fast float %6024, 0xC1EFBF8940000000
  %6026 = fptosi float %6025 to i32
  %6027 = bitcast i32 %6026 to float
  %6028 = fmul fast float %6027, %58
  %6029 = fmul fast float %6028, %5930
  %6030 = fmul fast float %6029, %5931
  %6031 = fmul fast float %6030, %5955
  %6032 = fmul fast float %5918, %5858
  %6033 = fmul fast float %6032, %6031
  %6034 = fmul fast float %6033, %5986
  %6035 = fmul fast float %5918, %5859
  %6036 = fmul fast float %6035, %6031
  %6037 = fmul fast float %6036, %5987
  %6038 = fmul fast float %5918, %5860
  %6039 = fmul fast float %6038, %6031
  %6040 = fmul fast float %6039, %5988
  %6041 = fadd fast float %6018, %4238
  %6042 = fadd fast float %6041, %6034
  %6043 = fmul fast float %6042, %1359
  %6044 = fadd fast float %6019, %4240
  %6045 = fadd fast float %6044, %6037
  %6046 = fmul fast float %6045, %1359
  %6047 = fadd fast float %6020, %4242
  %6048 = fadd fast float %6047, %6040
  %6049 = fmul fast float %6048, %1359
  %6050 = fmul fast float %5499, 0x4012D0A400000000
  %6051 = fadd fast float %6017, 1.000000e+00
  %6052 = fadd fast float %6016, 1.000000e+00
  %6053 = fadd fast float %6015, 1.000000e+00
  %6054 = fmul fast float %6038, %5963
  %6055 = fmul fast float %6035, %5963
  %6056 = fmul fast float %6032, %5963
  %6057 = fsub fast float 1.000000e+00, %5504
  %6058 = fmul fast float %6057, %1359
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = fadd fast float %6050, 0x3FDB6377A0000000
  %6063 = fmul fast float %6061, %6062
  %6064 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = fadd fast float %6063, %6064
  %6066 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6066, float 0x3F847AE140000000)  ; FMax(a,b)
  %6068 = fmul fast float %6067, %6067
  %6069 = fmul fast float %6068, %6068
  %6070 = fmul fast float %6069, 0xC00A935000000000
  %6071 = call float @dx.op.unary.f32(i32 21, float %6070)  ; Exp(value)
  %6072 = fsub fast float 1.000000e+00, %6071
  %6073 = fmul fast float %6053, %5801
  %6074 = fmul fast float %6073, %6072
  %6075 = fmul fast float %6052, %5802
  %6076 = fmul fast float %6075, %6072
  %6077 = fmul fast float %6051, %5803
  %6078 = fmul fast float %6077, %6072
  %6079 = fadd fast float %6074, %6056
  %6080 = fmul fast float %6079, %1359
  %6081 = fadd fast float %6076, %6055
  %6082 = fmul fast float %6081, %1359
  %6083 = fadd fast float %6078, %6054
  %6084 = fmul fast float %6083, %1359
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6087 = fcmp fast oeq float %6086, 0.000000e+00
  br i1 %6087, label %7290, label %6088

; <label>:6088                                    ; preds = %5912
  %6089 = extractvalue %dx.types.CBufRet.f32 %6085, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6085, 1
  %6091 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.CBufRet.f32 %6096, 1
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = select i1 %254, float %6097, float %6093
  %6101 = select i1 %254, float %6099, float %6094
  %6102 = select i1 %254, float %6098, float %6095
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6105 = fmul fast float %6104, %116
  %6106 = fmul fast float %6104, %117
  %6107 = fmul fast float %6104, %118
  %6108 = fadd fast float %6105, %188
  %6109 = fadd fast float %6106, %189
  %6110 = fadd fast float %6107, %190
  %6111 = fcmp fast olt float %6086, 0.000000e+00
  br i1 %6111, label %6751, label %6112

; <label>:6112                                    ; preds = %6088
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6127 = extractvalue %dx.types.CBufRet.f32 %6123, 3
  %6128 = fmul fast float %6114, %6108
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6115, float %6128)  ; FMad(a,b,c)
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6116, float %6129)  ; FMad(a,b,c)
  %6131 = fadd fast float %6130, %6117
  %6132 = fmul fast float %6119, %6108
  %6133 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6120, float %6132)  ; FMad(a,b,c)
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6121, float %6133)  ; FMad(a,b,c)
  %6135 = fadd fast float %6134, %6122
  %6136 = fmul fast float %6124, %6108
  %6137 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6125, float %6136)  ; FMad(a,b,c)
  %6138 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6126, float %6137)  ; FMad(a,b,c)
  %6139 = fadd fast float %6138, %6127
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = fcmp fast une float %6141, 0.000000e+00
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6147 = fmul fast float %6146, %6131
  %6148 = fmul fast float %6146, %6135
  %6149 = fadd fast float %6147, %6144
  %6150 = fadd fast float %6148, %6145
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6155 = fmul fast float %6154, %6131
  %6156 = fmul fast float %6154, %6135
  %6157 = fadd fast float %6155, %6152
  %6158 = fadd fast float %6156, %6153
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6161 = fsub fast float %6160, %6139
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6163 = fmul fast float %6161, %6162
  %6164 = fsub fast float 1.000000e+00, %6163
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  br i1 %6142, label %6226, label %6166

; <label>:6166                                    ; preds = %6112
  %6167 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6170 = fadd fast float %6169, %6167
  %6171 = fcmp fast ogt float %6170, 0.000000e+00
  br i1 %6171, label %6172, label %6196

; <label>:6172                                    ; preds = %6166
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = fsub fast float %6157, %6174
  %6177 = fsub fast float %6158, %6175
  %6178 = fcmp fast olt float %6176, 0.000000e+00
  %6179 = fcmp fast olt float %6177, 0.000000e+00
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6184 = extractvalue %dx.types.CBufRet.f32 %6180, 3
  %6185 = select i1 %6178, float %6181, float %6183
  %6186 = select i1 %6179, float %6182, float %6184
  %6187 = fmul fast float %6185, %6176
  %6188 = fmul fast float %6186, %6177
  %6189 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6190 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6192 = call float @dx.op.binary.f32(i32 35, float %6189, float %6190)  ; FMax(a,b)
  %6193 = fsub fast float %6191, %6192
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fmul fast float %6194, %6165
  br label %6196

; <label>:6196                                    ; preds = %6172, %6166
  %6197 = phi float [ %6195, %6172 ], [ 0.000000e+00, %6166 ]
  %6198 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6199 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6200 = fadd fast float %6199, %6198
  %6201 = fcmp fast ogt float %6200, 0.000000e+00
  br i1 %6201, label %6202, label %6226

; <label>:6202                                    ; preds = %6196
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = fsub fast float %6149, %6204
  %6207 = fsub fast float %6150, %6205
  %6208 = fcmp fast olt float %6206, 0.000000e+00
  %6209 = fcmp fast olt float %6207, 0.000000e+00
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = select i1 %6208, float %6211, float %6213
  %6216 = select i1 %6209, float %6212, float %6214
  %6217 = fmul fast float %6215, %6206
  %6218 = fmul fast float %6216, %6207
  %6219 = call float @dx.op.unary.f32(i32 6, float %6217)  ; FAbs(value)
  %6220 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6222 = call float @dx.op.binary.f32(i32 35, float %6219, float %6220)  ; FMax(a,b)
  %6223 = fsub fast float %6221, %6222
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fmul fast float %6224, %6165
  br label %6226

; <label>:6226                                    ; preds = %6202, %6196, %6112
  %6227 = phi float [ 0.000000e+00, %6112 ], [ %6225, %6202 ], [ 0.000000e+00, %6196 ]
  %6228 = phi float [ 0.000000e+00, %6112 ], [ %6197, %6202 ], [ %6197, %6196 ]
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = fsub fast float %6131, %6233
  %6236 = fsub fast float %6135, %6234
  %6237 = fcmp fast olt float %6235, 0.000000e+00
  %6238 = fcmp fast olt float %6236, 0.000000e+00
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6244 = select i1 %6237, float %6240, float %6242
  %6245 = select i1 %6238, float %6241, float %6243
  %6246 = fmul fast float %6244, %6235
  %6247 = fmul fast float %6245, %6236
  %6248 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6249 = call float @dx.op.unary.f32(i32 6, float %6247)  ; FAbs(value)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6251 = call float @dx.op.binary.f32(i32 35, float %6248, float %6249)  ; FMax(a,b)
  %6252 = fsub fast float %6250, %6251
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = call float @dx.op.binary.f32(i32 36, float %6253, float %6231)  ; FMin(a,b)
  %6255 = fmul fast float %6254, %6165
  %6256 = fsub fast float %6227, %6255
  %6257 = fsub fast float %6228, %6227
  %6258 = fsub fast float %6257, %6255
  %6259 = call float @dx.op.binary.f32(i32 35, float %6255, float %6227)  ; FMax(a,b)
  %6260 = call float @dx.op.binary.f32(i32 35, float %6259, float %6228)  ; FMax(a,b)
  %6261 = fcmp fast olt float %6260, 1.000000e+00
  br i1 %6261, label %6262, label %6660, !dx.controlflow.hints !95

; <label>:6262                                    ; preds = %6226
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = fcmp fast une float %6264, 0.000000e+00
  br i1 %6265, label %6266, label %6660, !dx.controlflow.hints !96

; <label>:6266                                    ; preds = %6262
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.CBufRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.CBufRet.f32 %6277, 2
  %6281 = extractvalue %dx.types.CBufRet.f32 %6277, 3
  %6282 = fmul fast float %6268, %6108
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6269, float %6282)  ; FMad(a,b,c)
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6270, float %6283)  ; FMad(a,b,c)
  %6285 = fadd fast float %6284, %6271
  %6286 = fmul fast float %6273, %6108
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6274, float %6286)  ; FMad(a,b,c)
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6275, float %6287)  ; FMad(a,b,c)
  %6289 = fadd fast float %6288, %6276
  %6290 = fmul fast float %6278, %6108
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6279, float %6290)  ; FMad(a,b,c)
  %6292 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6280, float %6291)  ; FMad(a,b,c)
  %6293 = fadd fast float %6292, %6281
  %6294 = fcmp fast oge float %6285, 1.000000e+00
  %6295 = fcmp fast oge float %6289, 1.000000e+00
  %6296 = or i1 %6294, %6295
  %6297 = fcmp fast olt float %6285, 0.000000e+00
  %6298 = fcmp fast olt float %6289, 0.000000e+00
  %6299 = or i1 %6297, %6298
  %6300 = or i1 %6296, %6299
  br i1 %6300, label %6660, label %6301, !dx.controlflow.hints !97

; <label>:6301                                    ; preds = %6266
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.i32 %6306, 2
  %6308 = uitofp i32 %6307 to float
  %6309 = extractvalue %dx.types.CBufRet.i32 %6306, 3
  %6310 = uitofp i32 %6309 to float
  %6311 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6312 = fmul fast float %6311, 2.000000e+00
  %6313 = fsub fast float %6285, %6303
  %6314 = fsub fast float %6289, %6304
  %6315 = fmul fast float %6312, %6313
  %6316 = fmul fast float %6312, %6314
  %6317 = fdiv fast float 1.000000e+00, %6091
  %6318 = fmul fast float %6316, %6317
  %6319 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6320 = fmul fast float %6305, %6110
  %6321 = fmul fast float %6320, %6312
  %6322 = call float @dx.op.unary.f32(i32 6, float %6321)  ; FAbs(value)
  %6323 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6324 = call float @dx.op.binary.f32(i32 35, float %6323, float %6322)  ; FMax(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6324, float %6319)  ; FMax(a,b)
  %6326 = fmul fast float %6325, 2.000000e+00
  %6327 = call float @dx.op.unary.f32(i32 23, float %6326)  ; Log(value)
  %6328 = call float @dx.op.binary.f32(i32 35, float %6327, float %6308)  ; FMax(a,b)
  %6329 = call float @dx.op.unary.f32(i32 22, float %6328)  ; Frc(value)
  %6330 = fadd fast float %6329, 0xBFEA666660000000
  %6331 = fmul fast float %6330, 8.000000e+00
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6333 = call float @dx.op.unary.f32(i32 27, float %6328)  ; Round_ni(value)
  %6334 = fadd fast float %6333, %6332
  %6335 = call float @dx.op.binary.f32(i32 36, float %6334, float %6310)  ; FMin(a,b)
  %6336 = call float @dx.op.unary.f32(i32 27, float %6335)  ; Round_ni(value)
  %6337 = fsub fast float -0.000000e+00, %6336
  %6338 = call float @dx.op.unary.f32(i32 21, float %6337)  ; Exp(value)
  %6339 = fmul fast float %6338, %6312
  %6340 = fmul fast float %6339, %6285
  %6341 = fmul fast float %6339, %6289
  %6342 = fmul fast float %6340, 2.500000e-01
  %6343 = fmul fast float %6341, 2.500000e-01
  %6344 = fadd fast float %6342, 5.000000e-01
  %6345 = fadd fast float %6343, 5.000000e-01
  %6346 = fsub fast float %6310, %6308
  %6347 = fptoui float %6346 to i32
  %6348 = add i32 %6347, 320
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %6348)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6352 = fcmp fast une float %6335, %6310
  %6353 = fsub fast float %6285, %6350
  %6354 = fsub fast float %6289, %6351
  %6355 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6356 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6357 = fmul fast float %6355, %6339
  %6358 = fmul fast float %6356, %6339
  %6359 = fcmp fast olt float %6357, 1.000000e+00
  %6360 = fcmp fast olt float %6358, 1.000000e+00
  %6361 = and i1 %6359, %6360
  %6362 = or i1 %6352, %6361
  br i1 %6362, label %6363, label %6660, !dx.controlflow.hints !98

; <label>:6363                                    ; preds = %6301
  %6364 = fmul fast float %6341, 5.000000e-01
  %6365 = fmul fast float %6340, 5.000000e-01
  %6366 = fadd fast float %6364, 5.000000e-01
  %6367 = fadd fast float %6365, 5.000000e-01
  %6368 = sitofp i32 %6307 to float
  %6369 = fsub fast float %6335, %6368
  %6370 = call float @dx.op.unary.f32(i32 27, float %6369)  ; Round_ni(value)
  %6371 = call float @dx.op.unary.f32(i32 22, float %6335)  ; Frc(value)
  %6372 = call float @dx.op.unary.f32(i32 22, float %6367)  ; Frc(value)
  %6373 = call float @dx.op.unary.f32(i32 22, float %6366)  ; Frc(value)
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %6372, float %6373, float %6370, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.ResRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.ResRet.f32 %6374, 2
  %6378 = extractvalue %dx.types.ResRet.f32 %6374, 3
  %6379 = fcmp fast ogt float %6371, 0.000000e+00
  br i1 %6379, label %6380, label %6401, !dx.controlflow.hints !99

; <label>:6380                                    ; preds = %6363
  %6381 = fadd fast float %6370, 1.000000e+00
  %6382 = call float @dx.op.unary.f32(i32 22, float %6344)  ; Frc(value)
  %6383 = call float @dx.op.unary.f32(i32 22, float %6345)  ; Frc(value)
  %6384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %6382, float %6383, float %6381, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.ResRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.ResRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.ResRet.f32 %6384, 3
  %6389 = fsub fast float %6385, %6375
  %6390 = fsub fast float %6386, %6376
  %6391 = fsub fast float %6387, %6377
  %6392 = fsub fast float %6388, %6378
  %6393 = fmul fast float %6389, %6371
  %6394 = fmul fast float %6390, %6371
  %6395 = fmul fast float %6391, %6371
  %6396 = fmul fast float %6392, %6371
  %6397 = fadd fast float %6393, %6375
  %6398 = fadd fast float %6394, %6376
  %6399 = fadd fast float %6395, %6377
  %6400 = fadd fast float %6396, %6378
  br label %6401

; <label>:6401                                    ; preds = %6380, %6363
  %6402 = phi float [ %6397, %6380 ], [ %6375, %6363 ]
  %6403 = phi float [ %6398, %6380 ], [ %6376, %6363 ]
  %6404 = phi float [ %6399, %6380 ], [ %6377, %6363 ]
  %6405 = phi float [ %6400, %6380 ], [ %6378, %6363 ]
  %6406 = fadd fast float %6402, -5.000000e-01
  %6407 = fadd fast float %6404, -5.000000e-01
  %6408 = fmul fast float %6406, 0xBFD5555560000000
  %6409 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6407, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6403, float 0.000000e+00)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6405
  %6412 = fmul fast float %6406, -7.500000e-01
  %6413 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6407, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6403, float 0.000000e+00)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6405
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 0
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.CBufRet.f32 %6418, 2
  %6422 = extractvalue %dx.types.CBufRet.f32 %6418, 3
  %6423 = fsub fast float %6419, %6409
  %6424 = fsub fast float %6420, %6411
  %6425 = fsub fast float %6421, %6413
  %6426 = fsub fast float %6422, %6415
  %6427 = fmul fast float %6423, %6417
  %6428 = fmul fast float %6424, %6417
  %6429 = fmul fast float %6425, %6417
  %6430 = fmul fast float %6426, %6417
  %6431 = fadd fast float %6427, %6409
  %6432 = fadd fast float %6428, %6411
  %6433 = fadd fast float %6429, %6413
  %6434 = fadd fast float %6430, %6415
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 0
  %6437 = and i32 %6436, 536870911
  %6438 = uitofp i32 %6437 to float
  %6439 = fmul fast float %6438, %6285
  %6440 = fmul fast float %6438, %6289
  %6441 = fptoui float %6439 to i32
  %6442 = fptoui float %6440 to i32
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = and i32 %6444, 31
  %6446 = lshr i32 %6441, %6445
  %6447 = lshr i32 %6442, %6445
  %6448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6449 = extractvalue %dx.types.ResRet.i32 %6448, 0
  %6450 = and i32 %6449, 31
  %6451 = shl i32 1, %6450
  %6452 = call i32 @dx.op.binary.i32(i32 40, i32 %6451, i32 4)  ; UMin(a,b)
  %6453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6454 = extractvalue %dx.types.ResRet.i32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.i32 %6453, 1
  %6456 = icmp eq i32 %6452, 0
  br i1 %6456, label %6498, label %6457

; <label>:6457                                    ; preds = %6401
  br label %6458

; <label>:6458                                    ; preds = %6486, %6457
  %6459 = phi i32 [ %6489, %6486 ], [ 0, %6457 ]
  %6460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.i32 %6460, 0
  %6462 = lshr i32 %6461, 16
  %6463 = and i32 %6462, 31
  %6464 = shl i32 %6447, %6463
  %6465 = add i32 %6464, %6446
  %6466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.i32 %6466, 0
  %6468 = and i32 %6467, 31
  %6469 = shl i32 %6465, %6468
  %6470 = add i32 %6469, %6459
  %6471 = shl i32 %6470, 2
  %6472 = add i32 %6471, 32
  %6473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6472, i32 undef)  ; BufferLoad(srv,index,wot)
  %6474 = extractvalue %dx.types.ResRet.i32 %6473, 0
  %6475 = icmp slt i32 %6474, 0
  %6476 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6459
  %6477 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6459
  %6478 = bitcast float* %6476 to i32*
  %6479 = bitcast float* %6477 to i32*
  br i1 %6475, label %6480, label %6486

; <label>:6480                                    ; preds = %6458
  %6481 = and i32 %6474, 1073741823
  %6482 = add nuw nsw i32 %6481, 20
  %6483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6482, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.i32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.i32 %6483, 1
  br label %6486

; <label>:6486                                    ; preds = %6480, %6458
  %6487 = phi i32 [ %6484, %6480 ], [ %6454, %6458 ]
  %6488 = phi i32 [ %6485, %6480 ], [ %6455, %6458 ]
  store i32 %6487, i32* %6478, align 4
  store i32 %6488, i32* %6479, align 4
  %6489 = add nuw i32 %6459, 1
  %6490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.i32 %6490, 2
  %6492 = icmp eq i32 %6491, 0
  %6493 = icmp ugt i32 %6474, -1073741825
  %6494 = and i1 %6493, %6492
  %6495 = icmp ult i32 %6489, %6452
  %6496 = and i1 %6494, %6495
  br i1 %6496, label %6458, label %6497

; <label>:6497                                    ; preds = %6486
  br label %6498

; <label>:6498                                    ; preds = %6497, %6401
  %6499 = phi i32 [ 0, %6401 ], [ %6489, %6497 ]
  %6500 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6501 = fptoui float %6500 to i32
  %6502 = icmp eq i32 %6501, 0
  br i1 %6502, label %6554, label %6503

; <label>:6503                                    ; preds = %6498
  br label %6504

; <label>:6504                                    ; preds = %6549, %6503
  %6505 = phi i32 [ %6550, %6549 ], [ %6499, %6503 ]
  %6506 = phi i32 [ %6551, %6549 ], [ 0, %6503 ]
  %6507 = lshr i32 %6506, 2
  %6508 = and i32 %6506, 3
  %6509 = add nuw nsw i32 %6507, 83
  %6510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %6509)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.i32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.i32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.i32 %6510, 2
  %6514 = extractvalue %dx.types.CBufRet.i32 %6510, 3
  %6515 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 0
  store i32 %6511, i32* %6515, align 4
  %6516 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 1
  store i32 %6512, i32* %6516, align 4
  %6517 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 2
  store i32 %6513, i32* %6517, align 4
  %6518 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 3
  store i32 %6514, i32* %6518, align 4
  %6519 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 %6508
  %6520 = load i32, i32* %6519, align 4, !tbaa !100, !noalias !104
  %6521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.i32 %6521, 0
  %6523 = lshr i32 %6522, 16
  %6524 = and i32 %6523, 31
  %6525 = shl i32 %6447, %6524
  %6526 = add i32 %6525, %6446
  %6527 = shl i32 %6526, 2
  %6528 = add i32 %6527, %6520
  %6529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6528, i32 undef)  ; BufferLoad(srv,index,wot)
  %6530 = extractvalue %dx.types.ResRet.i32 %6529, 0
  %6531 = icmp eq i32 %6530, 0
  br i1 %6531, label %6549, label %6532

; <label>:6532                                    ; preds = %6504
  %6533 = icmp slt i32 %6530, 0
  %6534 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6505
  %6535 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6505
  %6536 = bitcast float* %6534 to i32*
  %6537 = bitcast float* %6535 to i32*
  br i1 %6533, label %6538, label %6545

; <label>:6538                                    ; preds = %6532
  %6539 = and i32 %6530, 1073741823
  %6540 = add i32 %6520, 20
  %6541 = add i32 %6540, %6539
  %6542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.i32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.i32 %6542, 1
  br label %6545

; <label>:6545                                    ; preds = %6538, %6532
  %6546 = phi i32 [ %6543, %6538 ], [ %6454, %6532 ]
  %6547 = phi i32 [ %6544, %6538 ], [ %6455, %6532 ]
  store i32 %6546, i32* %6536, align 4
  store i32 %6547, i32* %6537, align 4
  %6548 = add i32 %6505, 1
  br label %6549

; <label>:6549                                    ; preds = %6545, %6504
  %6550 = phi i32 [ %6505, %6504 ], [ %6548, %6545 ]
  %6551 = add nuw i32 %6506, 1
  %6552 = icmp eq i32 %6551, %6501
  br i1 %6552, label %6553, label %6504

; <label>:6553                                    ; preds = %6549
  br label %6554

; <label>:6554                                    ; preds = %6553, %6498
  %6555 = phi i32 [ %6499, %6498 ], [ %6550, %6553 ]
  %6556 = icmp eq i32 %6555, 1
  %6557 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  %6558 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  br i1 %6556, label %6559, label %6562

; <label>:6559                                    ; preds = %6554
  %6560 = load float, float* %6557, align 4
  %6561 = load float, float* %6558, align 4
  br label %6589

; <label>:6562                                    ; preds = %6554
  %6563 = load float, float* %6557, align 4
  %6564 = load float, float* %6558, align 4
  %6565 = fdiv fast float 1.000000e+00, %6564
  %6566 = fsub fast float %6563, %6565
  %6567 = icmp ugt i32 %6555, 1
  br i1 %6567, label %6568, label %6584

; <label>:6568                                    ; preds = %6562
  br label %6569

; <label>:6569                                    ; preds = %6569, %6568
  %6570 = phi float [ %6579, %6569 ], [ %6566, %6568 ]
  %6571 = phi float [ %6580, %6569 ], [ %6563, %6568 ]
  %6572 = phi i32 [ %6581, %6569 ], [ 1, %6568 ]
  %6573 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6572
  %6574 = load float, float* %6573, align 4
  %6575 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6572
  %6576 = load float, float* %6575, align 4
  %6577 = fdiv fast float 1.000000e+00, %6576
  %6578 = fsub fast float %6574, %6577
  %6579 = call float @dx.op.binary.f32(i32 36, float %6570, float %6578)  ; FMin(a,b)
  %6580 = call float @dx.op.binary.f32(i32 35, float %6571, float %6574)  ; FMax(a,b)
  %6581 = add nuw i32 %6572, 1
  %6582 = icmp eq i32 %6581, %6555
  br i1 %6582, label %6583, label %6569

; <label>:6583                                    ; preds = %6569
  br label %6584

; <label>:6584                                    ; preds = %6583, %6562
  %6585 = phi float [ %6566, %6562 ], [ %6579, %6583 ]
  %6586 = phi float [ %6563, %6562 ], [ %6580, %6583 ]
  %6587 = fsub fast float %6586, %6585
  %6588 = fdiv fast float 1.000000e+00, %6587
  br label %6589

; <label>:6589                                    ; preds = %6584, %6559
  %6590 = phi float [ %6560, %6559 ], [ %6586, %6584 ]
  %6591 = phi float [ %6561, %6559 ], [ %6588, %6584 ]
  %6592 = fadd fast float %6293, %6590
  %6593 = fmul fast float %6592, %6591
  %6594 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  %6595 = fmul fast float %6594, 2.000000e+00
  %6596 = fsub fast float 1.000000e+00, %6595
  %6597 = fmul fast float %6431, %6431
  %6598 = fsub fast float %6432, %6597
  %6599 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6598)  ; FMax(a,b)
  %6600 = fdiv fast float 1.000000e+00, %6599
  %6601 = fmul fast float %6432, %6431
  %6602 = fsub fast float %6433, %6601
  %6603 = fsub fast float %6596, %6431
  %6604 = fmul fast float %6596, %6596
  %6605 = fsub fast float %6604, %6432
  %6606 = fmul fast float %6600, %6602
  %6607 = fmul fast float %6606, %6603
  %6608 = fsub fast float %6605, %6607
  %6609 = fmul fast float %6432, %6432
  %6610 = fsub fast float %6434, %6609
  %6611 = fmul fast float %6602, %6602
  %6612 = fmul fast float %6611, %6600
  %6613 = fsub fast float %6610, %6612
  %6614 = fdiv fast float %6608, %6613
  %6615 = fmul fast float %6614, %6602
  %6616 = fsub fast float %6603, %6615
  %6617 = fmul fast float %6616, %6600
  %6618 = fmul fast float %6617, %6431
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = fmul fast float %6614, %6432
  %6621 = fsub fast float %6619, %6620
  %6622 = fmul fast float %6617, %6617
  %6623 = fmul fast float %6614, 4.000000e+00
  %6624 = fmul fast float %6623, %6621
  %6625 = fsub fast float %6622, %6624
  %6626 = call float @dx.op.unary.f32(i32 24, float %6625)  ; Sqrt(value)
  %6627 = fcmp fast oge float %6617, 0.000000e+00
  %6628 = fsub fast float -0.000000e+00, %6626
  %6629 = select i1 %6627, float %6628, float %6626
  %6630 = fsub fast float %6629, %6617
  %6631 = fdiv fast float %6630, %6614
  %6632 = fdiv fast float %6621, %6630
  %6633 = fmul fast float %6631, 5.000000e-01
  %6634 = fmul fast float %6632, 2.000000e+00
  %6635 = select i1 %6627, float %6633, float %6634
  %6636 = select i1 %6627, float %6634, float %6633
  %6637 = call float @dx.op.binary.f32(i32 35, float %6635, float %6636)  ; FMax(a,b)
  %6638 = call float @dx.op.binary.f32(i32 36, float %6635, float %6636)  ; FMin(a,b)
  %6639 = fcmp fast ogt float %6596, %6637
  %6640 = fsub fast float %6596, %6638
  %6641 = fsub fast float %6596, %6637
  %6642 = fsub fast float %6637, %6638
  %6643 = select i1 %6639, float %6641, float %6642
  %6644 = fmul float %6640, %6643
  %6645 = select i1 %6639, float %6638, float %6596
  %6646 = fcmp fast ogt float %6596, %6638
  %6647 = fmul fast float %6645, %6637
  %6648 = fadd fast float %6645, %6637
  %6649 = fmul fast float %6648, %6431
  %6650 = fadd fast float %6647, %6432
  %6651 = fsub fast float %6650, %6649
  %6652 = fdiv fast float %6651, %6644
  %6653 = select i1 %6646, float %6652, float 0.000000e+00
  %6654 = fsub fast float 1.000000e+00, %6653
  %6655 = select i1 %6639, float %6654, float %6653
  %6656 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6658 = fmul fast float %6657, %6656
  %6659 = fsub fast float 1.000000e+00, %6658
  br label %6660

; <label>:6660                                    ; preds = %6589, %6301, %6266, %6262, %6226
  %6661 = phi float [ 1.000000e+00, %6226 ], [ %6659, %6589 ], [ 1.000000e+00, %6266 ], [ 1.000000e+00, %6301 ], [ 1.000000e+00, %6262 ]
  %6662 = fcmp fast ogt float %6258, 0.000000e+00
  br i1 %6662, label %6663, label %6671, !dx.controlflow.hints !113

; <label>:6663                                    ; preds = %6660
  %6664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6665 = extractvalue %dx.types.CBufRet.f32 %6664, 2
  %6666 = fadd fast float %6665, %6139
  %6667 = call float @dx.op.binary.f32(i32 35, float %6666, float 0.000000e+00)  ; FMax(a,b)
  %6668 = fadd fast float %6667, 0x3F10000000000000
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %6157, float %6158, float undef, float undef, i32 0, i32 0, i32 undef, float %6668)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  br label %6671

; <label>:6671                                    ; preds = %6663, %6660
  %6672 = phi float [ %6670, %6663 ], [ 1.000000e+00, %6660 ]
  %6673 = fcmp fast ogt float %6256, 0.000000e+00
  br i1 %6673, label %6674, label %6682, !dx.controlflow.hints !114

; <label>:6674                                    ; preds = %6671
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 1
  %6677 = fadd fast float %6676, %6139
  %6678 = call float @dx.op.binary.f32(i32 35, float %6677, float 0.000000e+00)  ; FMax(a,b)
  %6679 = fadd fast float %6678, 0x3F10000000000000
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %6149, float %6150, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  br label %6682

; <label>:6682                                    ; preds = %6674, %6671
  %6683 = phi float [ %6681, %6674 ], [ 1.000000e+00, %6671 ]
  %6684 = fcmp fast ogt float %6255, 0.000000e+00
  br i1 %6684, label %6685, label %6697, !dx.controlflow.hints !115

; <label>:6685                                    ; preds = %6682
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = fadd fast float %6687, %6139
  %6689 = call float @dx.op.binary.f32(i32 35, float %6688, float 0.000000e+00)  ; FMax(a,b)
  %6690 = fadd fast float %6689, 0x3F10000000000000
  br i1 %6142, label %6691, label %6694, !dx.controlflow.hints !116

; <label>:6691                                    ; preds = %6685
  %6692 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %6131, float %6135, float undef, float undef, i32 0, i32 0, i32 undef, float %6690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 0
  br label %6697

; <label>:6694                                    ; preds = %6685
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %6131, float %6135, float undef, float undef, i32 0, i32 0, i32 undef, float %6690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  br label %6697

; <label>:6697                                    ; preds = %6694, %6691, %6682
  %6698 = phi float [ %6693, %6691 ], [ %6696, %6694 ], [ 1.000000e+00, %6682 ]
  %6699 = fsub fast float %6672, %6661
  %6700 = fmul fast float %6699, %6228
  %6701 = fadd fast float %6700, %6661
  %6702 = fsub fast float %6683, %6701
  %6703 = fmul fast float %6702, %6227
  %6704 = fadd fast float %6703, %6701
  %6705 = fsub fast float %6698, %6704
  %6706 = fmul fast float %6705, %6255
  %6707 = fadd fast float %6706, %6704
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6710 = fcmp fast ogt float %6709, 0.000000e+00
  br i1 %6710, label %6711, label %6751, !dx.controlflow.hints !117

; <label>:6711                                    ; preds = %6697
  %6712 = fcmp fast ugt float %6709, 0.000000e+00
  br i1 %6712, label %6713, label %6748

; <label>:6713                                    ; preds = %6711
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.CBufRet.f32 %6719, 1
  %6722 = extractvalue %dx.types.CBufRet.f32 %6719, 2
  %6723 = extractvalue %dx.types.CBufRet.f32 %6719, 3
  %6724 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6725 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6730 = fadd fast float %6727, %6108
  %6731 = fadd fast float %6728, %6109
  %6732 = fadd fast float %6729, %6110
  %6733 = fmul fast float %6730, %6715
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %6716, float %6731, float %6733)  ; FMad(a,b,c)
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6717, float %6732, float %6734)  ; FMad(a,b,c)
  %6736 = fadd fast float %6735, %6718
  %6737 = fmul fast float %6730, %6720
  %6738 = call float @dx.op.tertiary.f32(i32 46, float %6721, float %6731, float %6737)  ; FMad(a,b,c)
  %6739 = call float @dx.op.tertiary.f32(i32 46, float %6722, float %6732, float %6738)  ; FMad(a,b,c)
  %6740 = fadd fast float %6739, %6723
  %6741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %6736, float %6740, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6742 = extractvalue %dx.types.ResRet.f32 %6741, 0
  %6743 = fmul fast float %6742, %6725
  %6744 = fadd fast float %6743, %6724
  %6745 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6746 = fmul fast float %6745, %6709
  %6747 = fsub fast float 1.000000e+00, %6746
  br label %6748

; <label>:6748                                    ; preds = %6713, %6711
  %6749 = phi float [ %6747, %6713 ], [ 1.000000e+00, %6711 ]
  %6750 = fmul fast float %6749, %6707
  br label %6751

; <label>:6751                                    ; preds = %6748, %6697, %6088
  %6752 = phi float [ 1.000000e+00, %6088 ], [ %6750, %6748 ], [ %6707, %6697 ]
  %6753 = call float @dx.op.binary.f32(i32 36, float %6752, float %6752)  ; FMin(a,b)
  %6754 = call float @dx.op.binary.f32(i32 36, float %6752, float %6753)  ; FMin(a,b)
  %6755 = fcmp fast ogt float %6754, 0.000000e+00
  br i1 %6755, label %6756, label %6916, !dx.controlflow.hints !118

; <label>:6756                                    ; preds = %6751
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6757, 1
  %6760 = extractvalue %dx.types.CBufRet.f32 %6757, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6757, 3
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %6766 = extractvalue %dx.types.CBufRet.f32 %6762, 3
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6771 = extractvalue %dx.types.CBufRet.f32 %6767, 3
  %6772 = fmul fast float %6758, %6108
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6759, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6760, float %6773)  ; FMad(a,b,c)
  %6775 = fadd fast float %6774, %6761
  %6776 = fmul fast float %6763, %6108
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6764, float %6776)  ; FMad(a,b,c)
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6765, float %6777)  ; FMad(a,b,c)
  %6779 = fadd fast float %6778, %6766
  %6780 = fmul fast float %6768, %6108
  %6781 = call float @dx.op.tertiary.f32(i32 46, float %6109, float %6769, float %6780)  ; FMad(a,b,c)
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %6110, float %6770, float %6781)  ; FMad(a,b,c)
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6787 = fmul fast float %6786, %6775
  %6788 = fmul fast float %6786, %6779
  %6789 = fadd fast float %6787, %6784
  %6790 = fadd fast float %6788, %6785
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6794 = fsub fast float %6789, %6792
  %6795 = fsub fast float %6790, %6793
  %6796 = fcmp fast olt float %6794, 0.000000e+00
  %6797 = fcmp fast olt float %6795, 0.000000e+00
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = select i1 %6796, float %6799, float %6801
  %6804 = select i1 %6797, float %6800, float %6802
  %6805 = fmul fast float %6803, %6794
  %6806 = fmul fast float %6804, %6795
  %6807 = call float @dx.op.unary.f32(i32 6, float %6805)  ; FAbs(value)
  %6808 = call float @dx.op.unary.f32(i32 6, float %6806)  ; FAbs(value)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6810 = call float @dx.op.binary.f32(i32 35, float %6807, float %6808)  ; FMax(a,b)
  %6811 = fsub fast float %6809, %6810
  %6812 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6813 = fcmp fast ogt float %6812, 0.000000e+00
  br i1 %6813, label %6814, label %6855, !dx.controlflow.hints !119

; <label>:6814                                    ; preds = %6756
  %6815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %6789, float %6790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 1
  %6817 = fcmp fast ogt float %6816, 0.000000e+00
  br i1 %6817, label %6818, label %6850

; <label>:6818                                    ; preds = %6814
  %6819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %6789, float %6790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.ResRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.ResRet.f32 %6819, 2
  %6823 = extractvalue %dx.types.ResRet.f32 %6819, 3
  %6824 = fsub fast float 1.000000e+00, %6771
  %6825 = fsub fast float %6824, %6782
  %6826 = fmul fast float %6825, 0x400921FB60000000
  %6827 = fadd fast float %6826, 0x3FF921FB60000000
  %6828 = call float @dx.op.unary.f32(i32 13, float %6827)  ; Sin(value)
  %6829 = fadd fast float %6828, -1.000000e+00
  %6830 = fmul fast float %6829, 0x3FD45F3060000000
  %6831 = fmul fast float %6825, 0x401921FB60000000
  %6832 = fadd fast float %6831, 0x400921FB60000000
  %6833 = call float @dx.op.unary.f32(i32 13, float %6832)  ; Sin(value)
  %6834 = fadd fast float %6833, 0x3E7777A5C0000000
  %6835 = fmul fast float %6834, 0x3FC45F3060000000
  %6836 = fmul fast float %6825, 0x4022D97C80000000
  %6837 = fadd fast float %6836, 0x4012D97C80000000
  %6838 = call float @dx.op.unary.f32(i32 13, float %6837)  ; Sin(value)
  %6839 = fadd fast float %6838, 1.000000e+00
  %6840 = fmul fast float %6839, 0x3FBB2995E0000000
  %6841 = fmul fast float %6825, 0x402921FB60000000
  %6842 = fadd fast float %6841, 0x401921FB60000000
  %6843 = call float @dx.op.unary.f32(i32 13, float %6842)  ; Sin(value)
  %6844 = fadd fast float %6843, 0xBE8777A5C0000000
  %6845 = fmul fast float %6844, 0x3FB45F3060000000
  %6846 = call float @dx.op.dot4.f32(i32 56, float %6820, float %6821, float %6822, float %6823, float %6830, float %6835, float %6840, float %6845)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6847 = fmul fast float %6846, 0xBFF7154760000000
  %6848 = call float @dx.op.unary.f32(i32 21, float %6847)  ; Exp(value)
  %6849 = call float @dx.op.unary.f32(i32 7, float %6848)  ; Saturate(value)
  br label %6850

; <label>:6850                                    ; preds = %6818, %6814
  %6851 = phi float [ %6849, %6818 ], [ 1.000000e+00, %6814 ]
  %6852 = fadd fast float %6851, -1.000000e+00
  %6853 = fmul fast float %6852, %6812
  %6854 = fadd fast float %6853, 1.000000e+00
  br label %6855

; <label>:6855                                    ; preds = %6850, %6756
  %6856 = phi float [ %6854, %6850 ], [ 1.000000e+00, %6756 ]
  %6857 = fmul fast float %6856, %6752
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6862 = fadd fast float %6859, %188
  %6863 = fadd fast float %6860, %189
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6866 = fsub fast float -0.000000e+00, %6862
  %6867 = fsub fast float -0.000000e+00, %6863
  %6868 = fsub fast float %5538, %6861
  %6869 = fadd fast float %6868, %6865
  %6870 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6866, float %6867, float %6869)  ; Dot3(ax,ay,az,bx,by,bz)
  %6871 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6089, float %6090, float %6091)  ; Dot3(ax,ay,az,bx,by,bz)
  %6872 = fdiv fast float 1.000000e+00, %6871
  %6873 = fmul fast float %6872, %6870
  %6874 = fmul fast float %6089, %6873
  %6875 = fmul fast float %6090, %6873
  %6876 = fadd fast float %6874, %6862
  %6877 = fadd fast float %6875, %6863
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6881 = fsub fast float %6876, %6879
  %6882 = fsub fast float %6877, %6880
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6885 = extractvalue %dx.types.CBufRet.f32 %6883, 3
  %6886 = fmul fast float %6881, %6884
  %6887 = fmul fast float %6882, %6885
  %6888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.i32 %6888, 3
  %6890 = icmp eq i32 %6889, 0
  br i1 %6890, label %6896, label %6891

; <label>:6891                                    ; preds = %6855
  %6892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %6886, float %6887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6893 = extractvalue %dx.types.ResRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.ResRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.ResRet.f32 %6892, 2
  br label %6901

; <label>:6896                                    ; preds = %6855
  %6897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %6886, float %6887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6898 = extractvalue %dx.types.ResRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.ResRet.f32 %6897, 2
  br label %6901

; <label>:6901                                    ; preds = %6896, %6891
  %6902 = phi float [ %6893, %6891 ], [ %6898, %6896 ]
  %6903 = phi float [ %6894, %6891 ], [ %6899, %6896 ]
  %6904 = phi float [ %6895, %6891 ], [ %6900, %6896 ]
  %6905 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6906 = fmul fast float %6905, %6902
  %6907 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6908 = fsub fast float %6873, %6907
  %6909 = fsub fast float %6908, %6906
  %6910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6909)  ; FMax(a,b)
  %6911 = fmul fast float %6910, %6903
  %6912 = call float @dx.op.binary.f32(i32 36, float %6904, float %6911)  ; FMin(a,b)
  %6913 = fmul fast float %6912, 0xBFF7154760000000
  %6914 = call float @dx.op.unary.f32(i32 21, float %6913)  ; Exp(value)
  %6915 = fmul fast float %6857, %6914
  br label %6916

; <label>:6916                                    ; preds = %6901, %6751
  %6917 = phi float [ %6915, %6901 ], [ %6752, %6751 ]
  %6918 = call float @dx.op.binary.f32(i32 36, float %6917, float %6917)  ; FMin(a,b)
  %6919 = call float @dx.op.binary.f32(i32 36, float %6917, float %6918)  ; FMin(a,b)
  %6920 = fcmp fast ogt float %6919, 0.000000e+00
  br i1 %6920, label %6921, label %7290, !dx.controlflow.hints !120

; <label>:6921                                    ; preds = %6916
  %6922 = fmul fast float %6917, %6100
  %6923 = fmul fast float %6917, %6101
  %6924 = fmul fast float %6917, %6102
  %6925 = fsub fast float %190, %4696
  %6926 = fcmp fast ogt float %6925, 0.000000e+00
  %6927 = fmul fast float %6089, 5.120000e+02
  %6928 = fmul fast float %6090, 5.120000e+02
  %6929 = fmul fast float %6091, 5.120000e+02
  %6930 = fadd fast float %6929, %190
  %6931 = fsub fast float %4696, %6930
  %6932 = fmul fast float %6931, 2.000000e+00
  %6933 = fadd fast float %6932, %6930
  %6934 = select i1 %6926, float %6933, float %6930
  %6935 = fsub fast float %6934, %190
  %6936 = call float @dx.op.dot3.f32(i32 55, float %6927, float %6928, float %6935, float %6927, float %6928, float %6935)  ; Dot3(ax,ay,az,bx,by,bz)
  %6937 = call float @dx.op.unary.f32(i32 25, float %6936)  ; Rsqrt(value)
  %6938 = fmul fast float %6937, %6927
  %6939 = fmul fast float %6937, %6928
  %6940 = fmul fast float %6937, %6935
  %6941 = fsub fast float %4696, %190
  %6942 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6943 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6938, float %6939, float %6940)  ; Dot3(ax,ay,az,bx,by,bz)
  %6944 = fdiv fast float 1.000000e+00, %6943
  %6945 = fmul fast float %6944, %6942
  %6946 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6925, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = fcmp fast ogt float %6946, 0.000000e+00
  %6948 = fcmp fast olt float %6946, 0.000000e+00
  %6949 = zext i1 %6947 to i32
  %6950 = zext i1 %6948 to i32
  %6951 = sub nsw i32 %6949, %6950
  %6952 = sitofp i32 %6951 to float
  %6953 = fsub fast float %6934, %4696
  %6954 = call float @dx.op.dot3.f32(i32 55, float %6927, float %6928, float %6953, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6955 = fcmp fast ogt float %6954, 0.000000e+00
  %6956 = fcmp fast olt float %6954, 0.000000e+00
  %6957 = zext i1 %6955 to i32
  %6958 = zext i1 %6956 to i32
  %6959 = sub nsw i32 %6957, %6958
  %6960 = sitofp i32 %6959 to float
  %6961 = fcmp fast une float %6952, %6960
  br i1 %6961, label %6962, label %6972

; <label>:6962                                    ; preds = %6921
  %6963 = fmul fast float %6945, %6940
  %6964 = fmul fast float %6945, %6939
  %6965 = fmul fast float %6945, %6938
  %6966 = fmul fast float %6965, %6965
  %6967 = fmul fast float %6964, %6964
  %6968 = fadd fast float %6966, %6967
  %6969 = fmul fast float %6963, %6963
  %6970 = fadd fast float %6968, %6969
  %6971 = call float @dx.op.unary.f32(i32 24, float %6970)  ; Sqrt(value)
  br label %6982

; <label>:6972                                    ; preds = %6921
  %6973 = icmp slt i32 %6951, 0
  br i1 %6973, label %6974, label %6982

; <label>:6974                                    ; preds = %6972
  %6975 = fsub fast float %190, %6934
  %6976 = fmul fast float %6927, %6927
  %6977 = fmul fast float %6928, %6928
  %6978 = fadd fast float %6976, %6977
  %6979 = fmul fast float %6975, %6975
  %6980 = fadd fast float %6978, %6979
  %6981 = call float @dx.op.unary.f32(i32 24, float %6980)  ; Sqrt(value)
  br label %6982

; <label>:6982                                    ; preds = %6974, %6972, %6962
  %6983 = phi float [ %6971, %6962 ], [ %6981, %6974 ], [ 0.000000e+00, %6972 ]
  %6984 = fsub fast float -0.000000e+00, %6983
  %6985 = select i1 %6926, float -0.000000e+00, float %6984
  %6986 = fmul fast float %4697, 0x3FF7154760000000
  %6987 = fmul fast float %6986, %6985
  %6988 = fmul fast float %4698, 0x3FF7154760000000
  %6989 = fmul fast float %6988, %6985
  %6990 = fmul fast float %4699, 0x3FF7154760000000
  %6991 = fmul fast float %6990, %6985
  %6992 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6993 = call float @dx.op.unary.f32(i32 21, float %6989)  ; Exp(value)
  %6994 = call float @dx.op.unary.f32(i32 21, float %6991)  ; Exp(value)
  %6995 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6996 = call float @dx.op.unary.f32(i32 7, float %6993)  ; Saturate(value)
  %6997 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6998 = fmul fast float %6922, %6995
  %6999 = fmul fast float %6923, %6996
  %7000 = fmul fast float %6924, %6997
  %7001 = fsub fast float %6089, %5541
  %7002 = fsub fast float %6090, %5542
  %7003 = fsub fast float %6091, %5543
  %7004 = call float @dx.op.dot3.f32(i32 55, float %7001, float %7002, float %7003, float %7001, float %7002, float %7003)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = call float @dx.op.unary.f32(i32 25, float %7004)  ; Rsqrt(value)
  %7006 = fmul fast float %7005, %7001
  %7007 = fmul fast float %7005, %7002
  %7008 = fmul fast float %7005, %7003
  %7009 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %7010 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %7006, float %7007, float %7008)  ; Dot3(ax,ay,az,bx,by,bz)
  %7011 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7012 = fmul fast float %7011, %7011
  %7013 = fmul fast float %7012, %5562
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7015 = fmul fast float %7014, %7011
  %7016 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %7006, float %7007, float %7008)  ; Dot3(ax,ay,az,bx,by,bz)
  %7017 = fmul fast float %7016, %7016
  %7018 = call float @dx.op.unary.f32(i32 6, float %7009)  ; FAbs(value)
  %7019 = call float @dx.op.binary.f32(i32 35, float %6057, float 0x3F847AE140000000)  ; FMax(a,b)
  %7020 = fmul fast float %7019, %7019
  %7021 = fmul fast float %7020, %7020
  %7022 = fsub fast float 1.000000e+00, %7021
  %7023 = fmul fast float %5549, %5549
  %7024 = fmul fast float %7023, %7022
  %7025 = fadd fast float %7024, %7021
  %7026 = bitcast float %7025 to i32
  %7027 = ashr i32 %7026, 1
  %7028 = add nsw i32 %7027, 532487669
  %7029 = bitcast i32 %7028 to float
  %7030 = fadd fast float %7029, %5549
  %7031 = fmul fast float %7021, %7017
  %7032 = fsub fast float 1.000000e+00, %7017
  %7033 = fadd fast float %7032, %7031
  %7034 = fmul fast float %7018, %7018
  %7035 = fmul fast float %7034, %7022
  %7036 = fadd fast float %7035, %7021
  %7037 = bitcast float %7036 to i32
  %7038 = ashr i32 %7037, 1
  %7039 = add nsw i32 %7038, 532487669
  %7040 = bitcast i32 %7039 to float
  %7041 = fadd fast float %7040, %7018
  %7042 = fmul fast float %7033, %7033
  %7043 = fmul fast float %7042, %7030
  %7044 = fmul fast float %7043, %7041
  %7045 = fdiv fast float 0x3FF0A00000000000, %7044
  %7046 = fmul fast float %7045, %7021
  %7047 = fmul fast float %5862, 0x3FF9999980000000
  %7048 = fsub fast float 5.000000e+00, %7047
  %7049 = call float @dx.op.unary.f32(i32 6, float %7010)  ; FAbs(value)
  %7050 = fsub fast float 1.000000e+00, %7049
  %7051 = fmul fast float %5862, 0x41D9660740000000
  %7052 = fadd fast float %7051, 0xC1EFBF8940000000
  %7053 = bitcast float %7050 to i32
  %7054 = sitofp i32 %7053 to float
  %7055 = fmul fast float %7054, %7048
  %7056 = fadd fast float %7052, %7055
  %7057 = fptosi float %7056 to i32
  %7058 = bitcast i32 %7057 to float
  %7059 = fsub fast float 1.000000e+00, %5498
  %7060 = fsub fast float 1.000000e+00, %5499
  %7061 = fsub fast float 1.000000e+00, %5547
  %7062 = fmul fast float %7058, %7059
  %7063 = fmul fast float %7058, %7060
  %7064 = fmul fast float %7058, %7061
  %7065 = fadd fast float %7062, %5498
  %7066 = fadd fast float %7063, %5499
  %7067 = fadd fast float %7064, %5547
  br i1 %5885, label %7068, label %7091

; <label>:7068                                    ; preds = %6982
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = fadd fast float %7070, -5.000000e-01
  %7074 = fadd fast float %7071, -5.000000e-01
  %7075 = fadd fast float %7072, -5.000000e-01
  %7076 = fmul fast float %5498, 4.000000e+00
  %7077 = fmul fast float %7076, %7059
  %7078 = fmul fast float %7077, %7073
  %7079 = fmul fast float %5499, 4.000000e+00
  %7080 = fmul fast float %7079, %7060
  %7081 = fmul fast float %7080, %7074
  %7082 = fmul fast float %5547, 4.000000e+00
  %7083 = fmul fast float %7082, %7061
  %7084 = fmul fast float %7083, %7075
  %7085 = fadd fast float %7078, %7065
  %7086 = fadd fast float %7081, %7066
  %7087 = fadd fast float %7084, %7067
  %7088 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7089 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7090 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  br label %7091

; <label>:7091                                    ; preds = %7068, %6982
  %7092 = phi float [ %7088, %7068 ], [ %7065, %6982 ]
  %7093 = phi float [ %7089, %7068 ], [ %7066, %6982 ]
  %7094 = phi float [ %7090, %7068 ], [ %7067, %6982 ]
  %7095 = fmul fast float %7009, 9.843750e-01
  %7096 = fadd fast float %7095, 7.812500e-03
  %7097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %7096, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.ResRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.ResRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.ResRet.f32 %7097, 3
  %7102 = fsub fast float %7100, %7098
  %7103 = fsub fast float %7101, %7099
  %7104 = fmul fast float %7102, %5872
  %7105 = fmul fast float %7103, %5872
  %7106 = fadd fast float %7104, %7098
  %7107 = fadd fast float %7105, %7099
  %7108 = fmul fast float %7106, %5498
  %7109 = fmul fast float %7106, %5499
  %7110 = fmul fast float %7106, %5547
  %7111 = fadd fast float %7108, %7107
  %7112 = fadd fast float %7109, %7107
  %7113 = fadd fast float %7110, %7107
  br i1 %5885, label %7114, label %7137

; <label>:7114                                    ; preds = %7091
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7119 = fadd fast float %7116, -5.000000e-01
  %7120 = fadd fast float %7117, -5.000000e-01
  %7121 = fadd fast float %7118, -5.000000e-01
  %7122 = fmul fast float %5498, 4.000000e+00
  %7123 = fmul fast float %7122, %7059
  %7124 = fmul fast float %7123, %7119
  %7125 = fmul fast float %5499, 4.000000e+00
  %7126 = fmul fast float %7125, %7060
  %7127 = fmul fast float %7126, %7120
  %7128 = fmul fast float %5547, 4.000000e+00
  %7129 = fmul fast float %7128, %7061
  %7130 = fmul fast float %7129, %7121
  %7131 = fadd fast float %7124, %7111
  %7132 = fadd fast float %7127, %7112
  %7133 = fadd fast float %7130, %7113
  %7134 = call float @dx.op.unary.f32(i32 7, float %7131)  ; Saturate(value)
  %7135 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7136 = call float @dx.op.unary.f32(i32 7, float %7133)  ; Saturate(value)
  br label %7137

; <label>:7137                                    ; preds = %7114, %7091
  %7138 = phi float [ %7134, %7114 ], [ %7111, %7091 ]
  %7139 = phi float [ %7135, %7114 ], [ %7112, %7091 ]
  %7140 = phi float [ %7136, %7114 ], [ %7113, %7091 ]
  %7141 = call float @dx.op.binary.f32(i32 35, float %7139, float %7140)  ; FMax(a,b)
  %7142 = call float @dx.op.binary.f32(i32 35, float %7138, float %7141)  ; FMax(a,b)
  %7143 = fsub fast float 1.000000e+00, %7142
  %7144 = call float @dx.op.binary.f32(i32 35, float %7018, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7145 = fdiv fast float %4215, %7144
  %7146 = fmul fast float %5994, %7145
  %7147 = fmul fast float %5996, %7145
  %7148 = fmul fast float %5998, %7145
  %7149 = call float @dx.op.unary.f32(i32 21, float %7146)  ; Exp(value)
  %7150 = call float @dx.op.unary.f32(i32 21, float %7147)  ; Exp(value)
  %7151 = call float @dx.op.unary.f32(i32 21, float %7148)  ; Exp(value)
  %7152 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  %7153 = call float @dx.op.unary.f32(i32 7, float %7150)  ; Saturate(value)
  %7154 = call float @dx.op.unary.f32(i32 7, float %7151)  ; Saturate(value)
  %7155 = select i1 %5991, float %7152, float 0.000000e+00
  %7156 = select i1 %5992, float %7153, float 0.000000e+00
  %7157 = select i1 %5993, float %7154, float 0.000000e+00
  %7158 = fsub fast float -0.000000e+00, %5501
  %7159 = fsub fast float -0.000000e+00, %5502
  %7160 = fsub fast float -0.000000e+00, %5503
  %7161 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float %7158, float %7159, float %7160)  ; Dot3(ax,ay,az,bx,by,bz)
  %7162 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7163 = fmul fast float %7162, 9.843750e-01
  %7164 = fadd fast float %7163, 7.812500e-03
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %7164, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.ResRet.f32 %7165, 1
  %7168 = extractvalue %dx.types.ResRet.f32 %7165, 2
  %7169 = extractvalue %dx.types.ResRet.f32 %7165, 3
  %7170 = fsub fast float %7168, %7166
  %7171 = fsub fast float %7169, %7167
  %7172 = fmul fast float %7170, %5872
  %7173 = fmul fast float %7171, %5872
  %7174 = fadd fast float %7172, %7166
  %7175 = fadd fast float %7173, %7167
  %7176 = fmul fast float %7174, %5498
  %7177 = fmul fast float %7174, %5499
  %7178 = fmul fast float %7174, %5547
  %7179 = fadd fast float %7176, %7175
  %7180 = fadd fast float %7177, %7175
  %7181 = fadd fast float %7178, %7175
  br i1 %5885, label %7182, label %7205

; <label>:7182                                    ; preds = %7137
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.ResRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.ResRet.f32 %7183, 2
  %7187 = fadd fast float %7184, -5.000000e-01
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fadd fast float %7186, -5.000000e-01
  %7190 = fmul fast float %5498, 4.000000e+00
  %7191 = fmul fast float %7190, %7059
  %7192 = fmul fast float %7191, %7187
  %7193 = fmul fast float %5499, 4.000000e+00
  %7194 = fmul fast float %7193, %7060
  %7195 = fmul fast float %7194, %7188
  %7196 = fmul fast float %5547, 4.000000e+00
  %7197 = fmul fast float %7196, %7061
  %7198 = fmul fast float %7197, %7189
  %7199 = fadd fast float %7192, %7179
  %7200 = fadd fast float %7195, %7180
  %7201 = fadd fast float %7198, %7181
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  br label %7205

; <label>:7205                                    ; preds = %7182, %7137
  %7206 = phi float [ %7202, %7182 ], [ %7179, %7137 ]
  %7207 = phi float [ %7203, %7182 ], [ %7180, %7137 ]
  %7208 = phi float [ %7204, %7182 ], [ %7181, %7137 ]
  %7209 = call float @dx.op.binary.f32(i32 35, float %7207, float %7208)  ; FMax(a,b)
  %7210 = call float @dx.op.binary.f32(i32 35, float %7206, float %7209)  ; FMax(a,b)
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %6057, %6062
  %7213 = fadd fast float %6064, %7212
  %7214 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7215 = fsub fast float %6089, %5555
  %7216 = fsub fast float %6090, %5556
  %7217 = fsub fast float %6091, %5557
  %7218 = call float @dx.op.dot3.f32(i32 55, float %7215, float %7216, float %7217, float %7215, float %7216, float %7217)  ; Dot3(ax,ay,az,bx,by,bz)
  %7219 = call float @dx.op.unary.f32(i32 25, float %7218)  ; Rsqrt(value)
  %7220 = fmul fast float %7219, %7215
  %7221 = fmul fast float %7219, %7216
  %7222 = fmul fast float %7219, %7217
  %7223 = call float @dx.op.dot3.f32(i32 55, float %7158, float %7159, float %7160, float %7220, float %7221, float %7222)  ; Dot3(ax,ay,az,bx,by,bz)
  %7224 = fmul fast float %7223, %7223
  %7225 = call float @dx.op.unary.f32(i32 6, float %7162)  ; FAbs(value)
  %7226 = call float @dx.op.binary.f32(i32 35, float %7214, float 0x3F847AE140000000)  ; FMax(a,b)
  %7227 = fmul fast float %7226, %7226
  %7228 = fmul fast float %7227, %7227
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = fmul fast float %7023, %7229
  %7231 = fadd fast float %7230, %7228
  %7232 = bitcast float %7231 to i32
  %7233 = ashr i32 %7232, 1
  %7234 = add nsw i32 %7233, 532487669
  %7235 = bitcast i32 %7234 to float
  %7236 = fadd fast float %7235, %5549
  %7237 = fmul fast float %7228, %7224
  %7238 = fsub fast float 1.000000e+00, %7224
  %7239 = fadd fast float %7238, %7237
  %7240 = fmul fast float %7225, %7225
  %7241 = fmul fast float %7240, %7229
  %7242 = fadd fast float %7241, %7228
  %7243 = bitcast float %7242 to i32
  %7244 = ashr i32 %7243, 1
  %7245 = add nsw i32 %7244, 532487669
  %7246 = bitcast i32 %7245 to float
  %7247 = fadd fast float %7246, %7225
  %7248 = fmul fast float %7239, %7239
  %7249 = fmul fast float %7248, %7236
  %7250 = fmul fast float %7249, %7247
  %7251 = fdiv fast float 0x3FF0A00000000000, %7250
  %7252 = fmul fast float %7251, %7228
  %7253 = fmul fast float %7162, %7155
  %7254 = fmul fast float %7162, %7156
  %7255 = fmul fast float %7162, %7157
  %7256 = fmul fast float %7253, %7211
  %7257 = fmul fast float %7256, %7252
  %7258 = fmul fast float %7254, %7211
  %7259 = fmul fast float %7258, %7252
  %7260 = fmul fast float %7255, %7211
  %7261 = fmul fast float %7260, %7252
  %7262 = fmul fast float %7046, %7015
  %7263 = fmul fast float %7262, %7092
  %7264 = fmul fast float %7262, %7093
  %7265 = fmul fast float %7262, %7094
  %7266 = fmul fast float %7015, %6998
  %7267 = fmul fast float %7266, %7143
  %7268 = fmul fast float %7015, %6999
  %7269 = fmul fast float %7268, %7143
  %7270 = fmul fast float %7015, %7000
  %7271 = fmul fast float %7270, %7143
  %7272 = fadd fast float %7257, %7263
  %7273 = fadd fast float %7259, %7264
  %7274 = fadd fast float %7261, %7265
  %7275 = fmul fast float %7272, %6998
  %7276 = fmul fast float %7273, %6999
  %7277 = fmul fast float %7274, %7000
  %7278 = fadd fast float %7267, %6079
  %7279 = fmul fast float %7278, %1359
  %7280 = fadd fast float %7269, %6081
  %7281 = fmul fast float %7280, %1359
  %7282 = fadd fast float %7271, %6083
  %7283 = fmul fast float %7282, %1359
  %7284 = fadd fast float %7275, %6042
  %7285 = fmul fast float %7284, %1359
  %7286 = fadd fast float %7276, %6045
  %7287 = fmul fast float %7286, %1359
  %7288 = fadd fast float %7277, %6048
  %7289 = fmul fast float %7288, %1359
  br label %7290

; <label>:7290                                    ; preds = %7205, %6916, %5912
  %7291 = phi float [ %6043, %5912 ], [ %6043, %6916 ], [ %7285, %7205 ]
  %7292 = phi float [ %6046, %5912 ], [ %6046, %6916 ], [ %7287, %7205 ]
  %7293 = phi float [ %6049, %5912 ], [ %6049, %6916 ], [ %7289, %7205 ]
  %7294 = phi float [ %6080, %5912 ], [ %6080, %6916 ], [ %7279, %7205 ]
  %7295 = phi float [ %6082, %5912 ], [ %6082, %6916 ], [ %7281, %7205 ]
  %7296 = phi float [ %6084, %5912 ], [ %6084, %6916 ], [ %7283, %7205 ]
  %7297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.i32 %7297, 0
  %7299 = icmp eq i32 %7298, 0
  br i1 %7299, label %8057, label %7300

; <label>:7300                                    ; preds = %7290
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7303 = extractvalue %dx.types.CBufRet.f32 %7301, 3
  %7304 = fmul fast float %7302, %109
  %7305 = fmul fast float %7303, %110
  %7306 = fptoui float %7304 to i32
  %7307 = fptoui float %7305 to i32
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7311 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7312 = fadd fast float %100, -4.000000e+00
  %7313 = call float @dx.op.binary.f32(i32 35, float %7312, float 0.000000e+00)  ; FMax(a,b)
  %7314 = fadd fast float %7313, %7309
  %7315 = fmul fast float %7314, %7310
  %7316 = call float @dx.op.unary.f32(i32 23, float %7315)  ; Log(value)
  %7317 = fmul fast float %7316, %7311
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7320 = fmul fast float %7317, %7319
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  %7322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.i32 %7322, 1
  %7324 = add i32 %7323, -1
  %7325 = uitofp i32 %7323 to float
  %7326 = fmul fast float %7325, %7321
  %7327 = fptoui float %7326 to i32
  %7328 = call i32 @dx.op.binary.i32(i32 40, i32 %7327, i32 %7324)  ; UMin(a,b)
  %7329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.i32 %7329, 2
  %7331 = extractvalue %dx.types.CBufRet.i32 %7329, 3
  %7332 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7307, i32 %7330, i32 %7306)  ; UMad(a,b,c)
  %7333 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7328, i32 %7331, i32 %7332)  ; UMad(a,b,c)
  %7334 = add nsw i32 %7298, -1
  %7335 = call i32 @dx.op.binary.i32(i32 37, i32 %7334, i32 0)  ; IMax(a,b)
  %7336 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %7337 = fptoui float %7336 to i32
  %7338 = lshr i32 %7337, 5
  %7339 = call i32 @dx.op.binary.i32(i32 40, i32 %7338, i32 8191)  ; UMin(a,b)
  %7340 = shl i32 %7339, 2
  %7341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7340, i32 undef)  ; BufferLoad(srv,index,wot)
  %7342 = extractvalue %dx.types.ResRet.i32 %7341, 0
  %7343 = lshr i32 %7342, 16
  %7344 = and i32 %7342, 65535
  %7345 = lshr i32 %7342, 21
  %7346 = lshr i32 %7344, 5
  %7347 = call i32 @dx.op.binary.i32(i32 40, i32 %7346, i32 %7335)  ; UMin(a,b)
  %7348 = icmp ugt i32 %7345, %7347
  br i1 %7348, label %8057, label %7349

; <label>:7349                                    ; preds = %7300
  br label %7350

; <label>:7350                                    ; preds = %8047, %7349
  %7351 = phi i32 [ %8054, %8047 ], [ %7345, %7349 ]
  %7352 = phi float [ %8048, %8047 ], [ %7291, %7349 ]
  %7353 = phi float [ %8049, %8047 ], [ %7292, %7349 ]
  %7354 = phi float [ %8050, %8047 ], [ %7293, %7349 ]
  %7355 = phi float [ %8051, %8047 ], [ %7294, %7349 ]
  %7356 = phi float [ %8052, %8047 ], [ %7295, %7349 ]
  %7357 = phi float [ %8053, %8047 ], [ %7296, %7349 ]
  %7358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.i32 %7358, 0
  %7360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7333, i32 %7359, i32 %7351)  ; UMad(a,b,c)
  %7361 = shl i32 %7360, 2
  %7362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.i32 %7362, 0
  %7364 = shl i32 %7351, 5
  %7365 = sub nsw i32 %7343, %7364
  %7366 = call i32 @dx.op.binary.i32(i32 37, i32 %7365, i32 0)  ; IMax(a,b)
  %7367 = call i32 @dx.op.binary.i32(i32 38, i32 %7366, i32 31)  ; IMin(a,b)
  %7368 = sub nsw i32 1, %7343
  %7369 = add nsw i32 %7368, %7344
  %7370 = call i32 @dx.op.binary.i32(i32 37, i32 %7369, i32 0)  ; IMax(a,b)
  %7371 = call i32 @dx.op.binary.i32(i32 38, i32 %7370, i32 32)  ; IMin(a,b)
  %7372 = and i32 %7371, 31
  %7373 = shl i32 -1, %7372
  %7374 = xor i32 %7373, -1
  %7375 = and i32 %7367, 31
  %7376 = shl i32 %7374, %7375
  %7377 = icmp eq i32 %7371, 32
  %7378 = select i1 %7377, i32 -1, i32 %7376
  %7379 = and i32 %7378, %7363
  %7380 = icmp eq i32 %7379, 0
  br i1 %7380, label %8047, label %7381

; <label>:7381                                    ; preds = %7350
  br label %7382

; <label>:7382                                    ; preds = %7517, %7381
  %7383 = phi i32 [ %7394, %7517 ], [ %7379, %7381 ]
  %7384 = phi float [ %7518, %7517 ], [ %7352, %7381 ]
  %7385 = phi float [ %7519, %7517 ], [ %7353, %7381 ]
  %7386 = phi float [ %7520, %7517 ], [ %7354, %7381 ]
  %7387 = phi float [ %7521, %7517 ], [ %7355, %7381 ]
  %7388 = phi float [ %7522, %7517 ], [ %7356, %7381 ]
  %7389 = phi float [ %7523, %7517 ], [ %7357, %7381 ]
  %7390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7383)  ; FirstbitLo(value)
  %7391 = add i32 %7390, %7364
  %7392 = and i32 %7390, 31
  %7393 = shl i32 1, %7392
  %7394 = xor i32 %7393, %7383
  %7395 = mul i32 %7391, 112
  %7396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7395, i32 undef)  ; BufferLoad(srv,index,wot)
  %7397 = extractvalue %dx.types.ResRet.f32 %7396, 0
  %7398 = extractvalue %dx.types.ResRet.f32 %7396, 1
  %7399 = extractvalue %dx.types.ResRet.f32 %7396, 2
  %7400 = or i32 %7395, 12
  %7401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7400, i32 undef)  ; BufferLoad(srv,index,wot)
  %7402 = extractvalue %dx.types.ResRet.f32 %7401, 0
  %7403 = add i32 %7395, 16
  %7404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7403, i32 undef)  ; BufferLoad(srv,index,wot)
  %7405 = extractvalue %dx.types.ResRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.ResRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.ResRet.f32 %7404, 2
  %7408 = add i32 %7395, 28
  %7409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7408, i32 undef)  ; BufferLoad(srv,index,wot)
  %7410 = extractvalue %dx.types.ResRet.i32 %7409, 0
  %7411 = add i32 %7395, 44
  %7412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7411, i32 undef)  ; BufferLoad(srv,index,wot)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = add i32 %7395, 48
  %7415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7414, i32 undef)  ; BufferLoad(srv,index,wot)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = extractvalue %dx.types.ResRet.f32 %7415, 3
  %7420 = add i32 %7395, 64
  %7421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7420, i32 undef)  ; BufferLoad(srv,index,wot)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7426 = add i32 %7395, 80
  %7427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7430 = add i32 %7395, 92
  %7431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7430, i32 undef)  ; BufferLoad(srv,index,wot)
  %7432 = extractvalue %dx.types.ResRet.i32 %7431, 0
  %7433 = call float @dx.op.dot3.f32(i32 55, float %7397, float %7398, float %7399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7434 = select i1 %254, float %7428, float %7397
  %7435 = select i1 %254, float %7433, float %7398
  %7436 = select i1 %254, float %7429, float %7399
  %7437 = and i32 %7432, 65535
  %7438 = uitofp i32 %7437 to float
  %7439 = lshr i32 %7432, 16
  %7440 = uitofp i32 %7439 to float
  %7441 = and i32 %7410, 65535
  %7442 = and i32 %7410, 50331648
  %7443 = icmp slt i32 %7410, 0
  %7444 = icmp eq i32 %7442, 33554432
  %7445 = fsub fast float %7416, %188
  %7446 = fsub fast float %7417, %189
  %7447 = fsub fast float %7418, %190
  %7448 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7447, float %7445, float %7446, float %7447)  ; Dot3(ax,ay,az,bx,by,bz)
  %7449 = call float @dx.op.unary.f32(i32 24, float %7448)  ; Sqrt(value)
  %7450 = fdiv fast float 1.000000e+00, %7449
  %7451 = fmul fast float %7450, %7445
  %7452 = fmul fast float %7450, %7446
  %7453 = fmul fast float %7450, %7447
  %7454 = fadd fast float %7449, %7402
  %7455 = fdiv fast float 1.000000e+00, %7454
  %7456 = fmul float %7413, %7455
  %7457 = fmul float %7456, %7456
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  br i1 %7444, label %7459, label %7480

; <label>:7459                                    ; preds = %7382
  %7460 = fmul fast float %7424, %7405
  %7461 = fmul fast float %7424, %7406
  %7462 = fmul fast float %7424, %7407
  %7463 = fadd fast float %7445, %7460
  %7464 = fadd fast float %7446, %7461
  %7465 = fadd fast float %7447, %7462
  %7466 = call float @dx.op.dot3.f32(i32 55, float %7463, float %7464, float %7465, float %7463, float %7464, float %7465)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = call float @dx.op.unary.f32(i32 25, float %7466)  ; Rsqrt(value)
  %7468 = fmul fast float %7467, %7463
  %7469 = fmul fast float %7467, %7464
  %7470 = fmul fast float %7467, %7465
  %7471 = fsub fast float %188, %7416
  %7472 = fsub fast float %189, %7417
  %7473 = fsub fast float %190, %7418
  %7474 = fsub fast float -0.000000e+00, %7471
  %7475 = fsub fast float -0.000000e+00, %7472
  %7476 = fsub fast float -0.000000e+00, %7473
  %7477 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7475, float %7476, float %7405, float %7406, float %7407)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = fcmp fast ogt float %7477, 0.000000e+00
  %7479 = uitofp i1 %7478 to float
  br label %7480

; <label>:7480                                    ; preds = %7459, %7382
  %7481 = phi float [ %7479, %7459 ], [ 1.000000e+00, %7382 ]
  %7482 = phi float [ %7468, %7459 ], [ %7451, %7382 ]
  %7483 = phi float [ %7469, %7459 ], [ %7452, %7382 ]
  %7484 = phi float [ %7470, %7459 ], [ %7453, %7382 ]
  %7485 = call float @dx.op.dot3.f32(i32 55, float %7405, float %7406, float %7407, float %7482, float %7483, float %7484)  ; Dot3(ax,ay,az,bx,by,bz)
  %7486 = fmul fast float %7485, %7485
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = fsub fast float 1.000000e+00, %7487
  %7489 = fmul fast float %7488, 5.000000e-01
  %7490 = fcmp fast ogt float %7485, 0.000000e+00
  %7491 = fsub fast float 1.000000e+00, %7489
  %7492 = select i1 %7490, float %7489, float %7491
  %7493 = fmul fast float %7492, %7440
  %7494 = fadd fast float %7493, %7438
  %7495 = fmul fast float %7494, 0x3EF0001000000000
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %46, float %7495, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = fmul fast float %7485, %7422
  %7499 = fadd fast float %7498, %7423
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7501 = select i1 %7444, float 1.000000e+00, float %7500
  %7502 = select i1 %7444, float %7500, float 1.000000e+00
  %7503 = fmul fast float %7449, %7419
  %7504 = fsub fast float 1.000000e+00, %7503
  %7505 = fmul fast float %7504, %7425
  %7506 = call float @dx.op.unary.f32(i32 7, float %7505)  ; Saturate(value)
  %7507 = fmul fast float %7506, %7502
  %7508 = fmul fast float %7507, 2.000000e+00
  %7509 = fsub fast float 3.000000e+00, %7508
  %7510 = fmul fast float %7497, %7481
  %7511 = fmul fast float %7507, %7507
  %7512 = fmul fast float %7511, %7510
  %7513 = fmul fast float %7512, %7509
  %7514 = call float @dx.op.binary.f32(i32 36, float %7513, float %7513)  ; FMin(a,b)
  %7515 = call float @dx.op.binary.f32(i32 36, float %7513, float %7514)  ; FMin(a,b)
  %7516 = fcmp fast ogt float %7515, 0.000000e+00
  br i1 %7516, label %7525, label %7517, !dx.controlflow.hints !121

; <label>:7517                                    ; preds = %8017, %7625, %7480
  %7518 = phi float [ %7384, %7625 ], [ %7384, %7480 ], [ %8043, %8017 ]
  %7519 = phi float [ %7385, %7625 ], [ %7385, %7480 ], [ %8044, %8017 ]
  %7520 = phi float [ %7386, %7625 ], [ %7386, %7480 ], [ %8045, %8017 ]
  %7521 = phi float [ %7387, %7625 ], [ %7387, %7480 ], [ %8037, %8017 ]
  %7522 = phi float [ %7388, %7625 ], [ %7388, %7480 ], [ %8038, %8017 ]
  %7523 = phi float [ %7389, %7625 ], [ %7389, %7480 ], [ %8039, %8017 ]
  %7524 = icmp eq i32 %7383, %7393
  br i1 %7524, label %8046, label %7382

; <label>:7525                                    ; preds = %7480
  %7526 = icmp eq i32 %7441, 255
  br i1 %7526, label %7625, label %7527, !dx.controlflow.hints !122

; <label>:7527                                    ; preds = %7525
  %7528 = mul nuw nsw i32 %7441, 176
  %7529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7528, i32 undef)  ; BufferLoad(srv,index,wot)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.ResRet.f32 %7529, 1
  %7532 = extractvalue %dx.types.ResRet.f32 %7529, 2
  %7533 = extractvalue %dx.types.ResRet.f32 %7529, 3
  %7534 = add nuw nsw i32 %7528, 16
  %7535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7534, i32 undef)  ; BufferLoad(srv,index,wot)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7538 = add nuw nsw i32 %7528, 32
  %7539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7538, i32 undef)  ; BufferLoad(srv,index,wot)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.ResRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.ResRet.f32 %7539, 2
  %7543 = add nuw nsw i32 %7528, 48
  %7544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7543, i32 undef)  ; BufferLoad(srv,index,wot)
  %7545 = extractvalue %dx.types.ResRet.f32 %7544, 0
  %7546 = extractvalue %dx.types.ResRet.f32 %7544, 1
  %7547 = extractvalue %dx.types.ResRet.f32 %7544, 2
  %7548 = extractvalue %dx.types.ResRet.f32 %7544, 3
  %7549 = add nuw nsw i32 %7528, 64
  %7550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7549, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = extractvalue %dx.types.ResRet.f32 %7550, 3
  %7555 = add nuw nsw i32 %7528, 80
  %7556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7555, i32 undef)  ; BufferLoad(srv,index,wot)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.ResRet.f32 %7556, 1
  %7559 = extractvalue %dx.types.ResRet.f32 %7556, 2
  %7560 = extractvalue %dx.types.ResRet.f32 %7556, 3
  %7561 = add nuw nsw i32 %7528, 96
  %7562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7561, i32 undef)  ; BufferLoad(srv,index,wot)
  %7563 = extractvalue %dx.types.ResRet.f32 %7562, 0
  %7564 = extractvalue %dx.types.ResRet.f32 %7562, 1
  %7565 = extractvalue %dx.types.ResRet.f32 %7562, 2
  %7566 = extractvalue %dx.types.ResRet.f32 %7562, 3
  %7567 = bitcast float %7537 to i32
  %7568 = fmul fast float %7542, %116
  %7569 = fmul fast float %7542, %117
  %7570 = fmul fast float %7542, %118
  %7571 = fadd fast float %7568, %188
  %7572 = fadd fast float %7569, %189
  %7573 = fadd fast float %7570, %190
  %7574 = fmul fast float %7571, %7545
  %7575 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7551, float %7574)  ; FMad(a,b,c)
  %7576 = call float @dx.op.tertiary.f32(i32 46, float %7573, float %7557, float %7575)  ; FMad(a,b,c)
  %7577 = fadd fast float %7576, %7563
  %7578 = fmul fast float %7571, %7546
  %7579 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7552, float %7578)  ; FMad(a,b,c)
  %7580 = call float @dx.op.tertiary.f32(i32 46, float %7573, float %7558, float %7579)  ; FMad(a,b,c)
  %7581 = fadd fast float %7580, %7564
  %7582 = fmul fast float %7571, %7547
  %7583 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7553, float %7582)  ; FMad(a,b,c)
  %7584 = call float @dx.op.tertiary.f32(i32 46, float %7573, float %7559, float %7583)  ; FMad(a,b,c)
  %7585 = fadd fast float %7584, %7565
  %7586 = fmul fast float %7571, %7548
  %7587 = call float @dx.op.tertiary.f32(i32 46, float %7572, float %7554, float %7586)  ; FMad(a,b,c)
  %7588 = call float @dx.op.tertiary.f32(i32 46, float %7573, float %7560, float %7587)  ; FMad(a,b,c)
  %7589 = fadd fast float %7588, %7566
  %7590 = fdiv fast float %7577, %7589
  %7591 = fdiv fast float %7581, %7589
  %7592 = fdiv fast float %7585, %7589
  %7593 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7592)  ; FMax(a,b)
  %7594 = fmul fast float %265, 0x401921FB60000000
  %7595 = call float @dx.op.unary.f32(i32 13, float %7594)  ; Sin(value)
  %7596 = call float @dx.op.unary.f32(i32 12, float %7594)  ; Cos(value)
  %7597 = fsub fast float -0.000000e+00, %7595
  %7598 = fmul fast float %7532, 5.000000e-01
  %7599 = call float @dx.op.dot2.f32(i32 54, float %265, float %265, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7600 = call float @dx.op.unary.f32(i32 22, float %7599)  ; Frc(value)
  %7601 = fmul fast float %7600, 0x404A7DD040000000
  %7602 = call float @dx.op.unary.f32(i32 22, float %7601)  ; Frc(value)
  %7603 = fmul fast float %7602, %7541
  %7604 = fadd fast float %7603, %7598
  %7605 = call float @dx.op.tertiary.f32(i32 46, float %7604, float %7597, float 0.000000e+00)  ; FMad(a,b,c)
  %7606 = call float @dx.op.tertiary.f32(i32 46, float %7604, float %7596, float 0.000000e+00)  ; FMad(a,b,c)
  %7607 = fadd fast float %7605, %7590
  %7608 = fadd fast float %7606, %7591
  %7609 = fmul fast float %7607, %7536
  %7610 = fmul fast float %7608, %7536
  %7611 = call float @dx.op.binary.f32(i32 35, float %7609, float %7532)  ; FMax(a,b)
  %7612 = call float @dx.op.binary.f32(i32 35, float %7610, float %7532)  ; FMax(a,b)
  %7613 = call float @dx.op.binary.f32(i32 36, float %7611, float %7533)  ; FMin(a,b)
  %7614 = call float @dx.op.binary.f32(i32 36, float %7612, float %7533)  ; FMin(a,b)
  %7615 = fadd fast float %7613, %7530
  %7616 = fadd fast float %7614, %7531
  %7617 = uitofp i32 %7567 to float
  %7618 = fadd fast float %7593, %7540
  %7619 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %48, float %7615, float %7616, float %7617, float undef, i32 0, i32 0, i32 undef, float %7618)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7620 = extractvalue %dx.types.ResRet.f32 %7619, 0
  %7621 = fadd fast float %7620, -1.000000e+00
  %7622 = fmul fast float %7621, %7501
  %7623 = fadd fast float %7622, 1.000000e+00
  %7624 = fmul fast float %7623, %7513
  br label %7625

; <label>:7625                                    ; preds = %7527, %7525
  %7626 = phi float [ %7624, %7527 ], [ %7513, %7525 ]
  %7627 = call float @dx.op.binary.f32(i32 36, float %7626, float %7626)  ; FMin(a,b)
  %7628 = call float @dx.op.binary.f32(i32 36, float %7626, float %7627)  ; FMin(a,b)
  %7629 = fcmp fast ogt float %7628, 0.000000e+00
  br i1 %7629, label %7630, label %7517, !dx.controlflow.hints !123

; <label>:7630                                    ; preds = %7625
  %7631 = fmul fast float %7626, %7434
  %7632 = fmul fast float %7626, %7435
  %7633 = fmul fast float %7626, %7436
  %7634 = fsub fast float %7418, %4696
  %7635 = fcmp fast ogt float %7634, 0.000000e+00
  %7636 = fsub fast float %190, %4696
  %7637 = fcmp fast ogt float %7636, 0.000000e+00
  %7638 = xor i1 %7637, %7635
  %7639 = fsub fast float %4696, %7418
  %7640 = fmul fast float %7639, 2.000000e+00
  %7641 = fadd fast float %7640, %7418
  %7642 = select i1 %7638, float %7418, float %7641
  %7643 = fsub fast float %7642, %190
  %7644 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7643, float %7445, float %7446, float %7643)  ; Dot3(ax,ay,az,bx,by,bz)
  %7645 = call float @dx.op.unary.f32(i32 25, float %7644)  ; Rsqrt(value)
  %7646 = fmul fast float %7645, %7445
  %7647 = fmul fast float %7645, %7446
  %7648 = fmul fast float %7645, %7643
  %7649 = fsub fast float %4696, %190
  %7650 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7649)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7646, float %7647, float %7648)  ; Dot3(ax,ay,az,bx,by,bz)
  %7652 = fdiv fast float 1.000000e+00, %7651
  %7653 = fmul fast float %7652, %7650
  %7654 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7636, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = fcmp fast ogt float %7654, 0.000000e+00
  %7656 = fcmp fast olt float %7654, 0.000000e+00
  %7657 = zext i1 %7655 to i32
  %7658 = zext i1 %7656 to i32
  %7659 = sub nsw i32 %7657, %7658
  %7660 = sitofp i32 %7659 to float
  %7661 = fsub fast float %7642, %4696
  %7662 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7661, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = fcmp fast ogt float %7662, 0.000000e+00
  %7664 = fcmp fast olt float %7662, 0.000000e+00
  %7665 = zext i1 %7663 to i32
  %7666 = zext i1 %7664 to i32
  %7667 = sub nsw i32 %7665, %7666
  %7668 = sitofp i32 %7667 to float
  %7669 = fcmp fast une float %7660, %7668
  br i1 %7669, label %7670, label %7680

; <label>:7670                                    ; preds = %7630
  %7671 = fmul fast float %7653, %7648
  %7672 = fmul fast float %7653, %7647
  %7673 = fmul fast float %7653, %7646
  %7674 = fmul fast float %7673, %7673
  %7675 = fmul fast float %7672, %7672
  %7676 = fadd fast float %7674, %7675
  %7677 = fmul fast float %7671, %7671
  %7678 = fadd fast float %7676, %7677
  %7679 = call float @dx.op.unary.f32(i32 24, float %7678)  ; Sqrt(value)
  br label %7692

; <label>:7680                                    ; preds = %7630
  %7681 = icmp slt i32 %7659, 0
  br i1 %7681, label %7682, label %7692

; <label>:7682                                    ; preds = %7680
  %7683 = fsub fast float %188, %7416
  %7684 = fsub fast float %189, %7417
  %7685 = fsub fast float %190, %7642
  %7686 = fmul fast float %7683, %7683
  %7687 = fmul fast float %7684, %7684
  %7688 = fadd fast float %7686, %7687
  %7689 = fmul fast float %7685, %7685
  %7690 = fadd fast float %7688, %7689
  %7691 = call float @dx.op.unary.f32(i32 24, float %7690)  ; Sqrt(value)
  br label %7692

; <label>:7692                                    ; preds = %7682, %7680, %7670
  %7693 = phi float [ %7679, %7670 ], [ %7691, %7682 ], [ 0.000000e+00, %7680 ]
  %7694 = and i1 %7637, %7635
  %7695 = fsub fast float -0.000000e+00, %7693
  %7696 = select i1 %7694, float -0.000000e+00, float %7695
  %7697 = fmul fast float %4697, 0x3FF7154760000000
  %7698 = fmul fast float %7697, %7696
  %7699 = fmul fast float %4698, 0x3FF7154760000000
  %7700 = fmul fast float %7699, %7696
  %7701 = fmul fast float %4699, 0x3FF7154760000000
  %7702 = fmul fast float %7701, %7696
  %7703 = call float @dx.op.unary.f32(i32 21, float %7698)  ; Exp(value)
  %7704 = call float @dx.op.unary.f32(i32 21, float %7700)  ; Exp(value)
  %7705 = call float @dx.op.unary.f32(i32 21, float %7702)  ; Exp(value)
  %7706 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7707 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7708 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7709 = fmul fast float %7631, %7706
  %7710 = fmul fast float %7632, %7707
  %7711 = fmul fast float %7633, %7708
  %7712 = fsub fast float %7451, %5541
  %7713 = fsub fast float %7452, %5542
  %7714 = fsub fast float %7453, %5543
  %7715 = call float @dx.op.dot3.f32(i32 55, float %7712, float %7713, float %7714, float %7712, float %7713, float %7714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7716 = call float @dx.op.unary.f32(i32 25, float %7715)  ; Rsqrt(value)
  %7717 = fmul fast float %7716, %7712
  %7718 = fmul fast float %7716, %7713
  %7719 = fmul fast float %7716, %7714
  %7720 = call float @dx.op.dot3.f32(i32 55, float %7451, float %7452, float %7453, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %7721 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %7717, float %7718, float %7719)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7723 = fmul fast float %7722, %7458
  %7724 = fmul fast float %7722, %7722
  %7725 = fmul fast float %7724, %5562
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = fmul fast float %7723, %7726
  %7728 = bitcast float %7448 to i32
  %7729 = ashr i32 %7728, 1
  %7730 = sub nsw i32 1597463007, %7729
  %7731 = bitcast i32 %7730 to float
  %7732 = fmul fast float %7731, %7445
  %7733 = fmul fast float %7731, %7446
  %7734 = fmul fast float %7731, %7447
  %7735 = fsub fast float %7732, %5541
  %7736 = fsub fast float %7733, %5542
  %7737 = fsub fast float %7734, %5543
  %7738 = call float @dx.op.dot3.f32(i32 55, float %7735, float %7736, float %7737, float %7735, float %7736, float %7737)  ; Dot3(ax,ay,az,bx,by,bz)
  %7739 = call float @dx.op.unary.f32(i32 25, float %7738)  ; Rsqrt(value)
  %7740 = fmul fast float %7735, %7739
  %7741 = fmul fast float %7736, %7739
  %7742 = fmul fast float %7737, %7739
  %7743 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %7740, float %7741, float %7742)  ; Dot3(ax,ay,az,bx,by,bz)
  %7744 = fmul fast float %7743, %7743
  %7745 = call float @dx.op.unary.f32(i32 6, float %7720)  ; FAbs(value)
  %7746 = call float @dx.op.binary.f32(i32 35, float %6057, float 0x3F847AE140000000)  ; FMax(a,b)
  %7747 = fmul fast float %7746, %7746
  %7748 = fmul fast float %7747, %7747
  %7749 = fsub fast float 1.000000e+00, %7748
  %7750 = fmul fast float %5549, %5549
  %7751 = fmul fast float %7750, %7749
  %7752 = fadd fast float %7751, %7748
  %7753 = bitcast float %7752 to i32
  %7754 = ashr i32 %7753, 1
  %7755 = add nsw i32 %7754, 532487669
  %7756 = bitcast i32 %7755 to float
  %7757 = fadd fast float %7756, %5549
  %7758 = fmul fast float %7748, %7744
  %7759 = fsub fast float 1.000000e+00, %7744
  %7760 = fadd fast float %7759, %7758
  %7761 = fmul fast float %7745, %7745
  %7762 = fmul fast float %7761, %7749
  %7763 = fadd fast float %7762, %7748
  %7764 = bitcast float %7763 to i32
  %7765 = ashr i32 %7764, 1
  %7766 = add nsw i32 %7765, 532487669
  %7767 = bitcast i32 %7766 to float
  %7768 = fadd fast float %7767, %7745
  %7769 = fmul fast float %7760, %7760
  %7770 = fmul fast float %7769, %7757
  %7771 = fmul fast float %7770, %7768
  %7772 = fdiv fast float 1.000000e+00, %7771
  %7773 = bitcast float %7748 to i32
  %7774 = sitofp i32 %7773 to float
  %7775 = fmul fast float %7774, 0x3FE7F73180000000
  %7776 = fadd fast float %7775, 0x41AFE27C40000000
  %7777 = fptosi float %7776 to i32
  %7778 = bitcast i32 %7777 to float
  %7779 = fmul fast float %7413, 0x3FD80E9D60000000
  %7780 = fmul fast float %7779, %7731
  %7781 = fadd fast float %7778, %7780
  %7782 = bitcast float %7781 to i32
  %7783 = sub nsw i32 2129859010, %7782
  %7784 = bitcast i32 %7783 to float
  %7785 = fmul fast float %7748, %7772
  %7786 = fmul fast float %7785, %7778
  %7787 = fmul fast float %7786, %7784
  %7788 = fmul fast float %5862, 0x3FF9999980000000
  %7789 = fsub fast float 5.000000e+00, %7788
  %7790 = call float @dx.op.unary.f32(i32 6, float %7721)  ; FAbs(value)
  %7791 = fsub fast float 1.000000e+00, %7790
  %7792 = fmul fast float %5862, 0x41D9660740000000
  %7793 = fadd fast float %7792, 0xC1EFBF8940000000
  %7794 = bitcast float %7791 to i32
  %7795 = sitofp i32 %7794 to float
  %7796 = fmul fast float %7795, %7789
  %7797 = fadd fast float %7793, %7796
  %7798 = fptosi float %7797 to i32
  %7799 = bitcast i32 %7798 to float
  %7800 = fsub fast float 1.000000e+00, %5498
  %7801 = fsub fast float 1.000000e+00, %5499
  %7802 = fsub fast float 1.000000e+00, %5547
  %7803 = fmul fast float %7799, %7800
  %7804 = fmul fast float %7799, %7801
  %7805 = fmul fast float %7799, %7802
  %7806 = fadd fast float %7803, %5498
  %7807 = fadd fast float %7804, %5499
  %7808 = fadd fast float %7805, %5547
  br i1 %5885, label %7809, label %7832

; <label>:7809                                    ; preds = %7692
  %7810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7811 = extractvalue %dx.types.ResRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.ResRet.f32 %7810, 1
  %7813 = extractvalue %dx.types.ResRet.f32 %7810, 2
  %7814 = fadd fast float %7811, -5.000000e-01
  %7815 = fadd fast float %7812, -5.000000e-01
  %7816 = fadd fast float %7813, -5.000000e-01
  %7817 = fmul fast float %5498, 4.000000e+00
  %7818 = fmul fast float %7817, %7800
  %7819 = fmul fast float %7818, %7814
  %7820 = fmul fast float %5499, 4.000000e+00
  %7821 = fmul fast float %7820, %7801
  %7822 = fmul fast float %7821, %7815
  %7823 = fmul fast float %5547, 4.000000e+00
  %7824 = fmul fast float %7823, %7802
  %7825 = fmul fast float %7824, %7816
  %7826 = fadd fast float %7819, %7806
  %7827 = fadd fast float %7822, %7807
  %7828 = fadd fast float %7825, %7808
  %7829 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7830 = call float @dx.op.unary.f32(i32 7, float %7827)  ; Saturate(value)
  %7831 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  br label %7832

; <label>:7832                                    ; preds = %7809, %7692
  %7833 = phi float [ %7829, %7809 ], [ %7806, %7692 ]
  %7834 = phi float [ %7830, %7809 ], [ %7807, %7692 ]
  %7835 = phi float [ %7831, %7809 ], [ %7808, %7692 ]
  %7836 = fmul fast float %7720, 9.843750e-01
  %7837 = fadd fast float %7836, 7.812500e-03
  %7838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %7837, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7839 = extractvalue %dx.types.ResRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.ResRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.ResRet.f32 %7838, 2
  %7842 = extractvalue %dx.types.ResRet.f32 %7838, 3
  %7843 = fsub fast float %7841, %7839
  %7844 = fsub fast float %7842, %7840
  %7845 = fmul fast float %7843, %5872
  %7846 = fmul fast float %7844, %5872
  %7847 = fadd fast float %7845, %7839
  %7848 = fadd fast float %7846, %7840
  %7849 = fmul fast float %7847, %5498
  %7850 = fmul fast float %7847, %5499
  %7851 = fmul fast float %7847, %5547
  %7852 = fadd fast float %7849, %7848
  %7853 = fadd fast float %7850, %7848
  %7854 = fadd fast float %7851, %7848
  br i1 %5885, label %7855, label %7878

; <label>:7855                                    ; preds = %7832
  %7856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7720, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = extractvalue %dx.types.ResRet.f32 %7856, 1
  %7859 = extractvalue %dx.types.ResRet.f32 %7856, 2
  %7860 = fadd fast float %7857, -5.000000e-01
  %7861 = fadd fast float %7858, -5.000000e-01
  %7862 = fadd fast float %7859, -5.000000e-01
  %7863 = fmul fast float %5498, 4.000000e+00
  %7864 = fmul fast float %7863, %7800
  %7865 = fmul fast float %7864, %7860
  %7866 = fmul fast float %5499, 4.000000e+00
  %7867 = fmul fast float %7866, %7801
  %7868 = fmul fast float %7867, %7861
  %7869 = fmul fast float %5547, 4.000000e+00
  %7870 = fmul fast float %7869, %7802
  %7871 = fmul fast float %7870, %7862
  %7872 = fadd fast float %7865, %7852
  %7873 = fadd fast float %7868, %7853
  %7874 = fadd fast float %7871, %7854
  %7875 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7876 = call float @dx.op.unary.f32(i32 7, float %7873)  ; Saturate(value)
  %7877 = call float @dx.op.unary.f32(i32 7, float %7874)  ; Saturate(value)
  br label %7878

; <label>:7878                                    ; preds = %7855, %7832
  %7879 = phi float [ %7875, %7855 ], [ %7852, %7832 ]
  %7880 = phi float [ %7876, %7855 ], [ %7853, %7832 ]
  %7881 = phi float [ %7877, %7855 ], [ %7854, %7832 ]
  %7882 = call float @dx.op.binary.f32(i32 35, float %7880, float %7881)  ; FMax(a,b)
  %7883 = call float @dx.op.binary.f32(i32 35, float %7879, float %7882)  ; FMax(a,b)
  %7884 = fsub fast float 1.000000e+00, %7883
  %7885 = call float @dx.op.binary.f32(i32 35, float %7745, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7886 = fdiv fast float %4215, %7885
  %7887 = fmul fast float %5994, %7886
  %7888 = fmul fast float %5996, %7886
  %7889 = fmul fast float %5998, %7886
  %7890 = call float @dx.op.unary.f32(i32 21, float %7887)  ; Exp(value)
  %7891 = call float @dx.op.unary.f32(i32 21, float %7888)  ; Exp(value)
  %7892 = call float @dx.op.unary.f32(i32 21, float %7889)  ; Exp(value)
  %7893 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7894 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7895 = call float @dx.op.unary.f32(i32 7, float %7892)  ; Saturate(value)
  %7896 = select i1 %5991, float %7893, float 0.000000e+00
  %7897 = select i1 %5992, float %7894, float 0.000000e+00
  %7898 = select i1 %5993, float %7895, float 0.000000e+00
  %7899 = fsub fast float -0.000000e+00, %5501
  %7900 = fsub fast float -0.000000e+00, %5502
  %7901 = fsub fast float -0.000000e+00, %5503
  %7902 = call float @dx.op.dot3.f32(i32 55, float %7451, float %7452, float %7453, float %7899, float %7900, float %7901)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = fmul fast float %7903, %7458
  %7905 = fmul fast float %7903, 9.843750e-01
  %7906 = fadd fast float %7905, 7.812500e-03
  %7907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %7906, float %5866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7908 = extractvalue %dx.types.ResRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.ResRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.ResRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.ResRet.f32 %7907, 3
  %7912 = fsub fast float %7910, %7908
  %7913 = fsub fast float %7911, %7909
  %7914 = fmul fast float %7912, %5872
  %7915 = fmul fast float %7913, %5872
  %7916 = fadd fast float %7914, %7908
  %7917 = fadd fast float %7915, %7909
  %7918 = fmul fast float %7916, %5498
  %7919 = fmul fast float %7916, %5499
  %7920 = fmul fast float %7916, %5547
  %7921 = fadd fast float %7918, %7917
  %7922 = fadd fast float %7919, %7917
  %7923 = fadd fast float %7920, %7917
  br i1 %5885, label %7924, label %7947

; <label>:7924                                    ; preds = %7878
  %7925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %46, float %4216, float %7903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  %7929 = fadd fast float %7926, -5.000000e-01
  %7930 = fadd fast float %7927, -5.000000e-01
  %7931 = fadd fast float %7928, -5.000000e-01
  %7932 = fmul fast float %5498, 4.000000e+00
  %7933 = fmul fast float %7932, %7800
  %7934 = fmul fast float %7933, %7929
  %7935 = fmul fast float %5499, 4.000000e+00
  %7936 = fmul fast float %7935, %7801
  %7937 = fmul fast float %7936, %7930
  %7938 = fmul fast float %5547, 4.000000e+00
  %7939 = fmul fast float %7938, %7802
  %7940 = fmul fast float %7939, %7931
  %7941 = fadd fast float %7934, %7921
  %7942 = fadd fast float %7937, %7922
  %7943 = fadd fast float %7940, %7923
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7946 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  br label %7947

; <label>:7947                                    ; preds = %7924, %7878
  %7948 = phi float [ %7944, %7924 ], [ %7921, %7878 ]
  %7949 = phi float [ %7945, %7924 ], [ %7922, %7878 ]
  %7950 = phi float [ %7946, %7924 ], [ %7923, %7878 ]
  %7951 = call float @dx.op.binary.f32(i32 35, float %7949, float %7950)  ; FMax(a,b)
  %7952 = call float @dx.op.binary.f32(i32 35, float %7948, float %7951)  ; FMax(a,b)
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = fmul fast float %6057, %6062
  %7955 = fadd fast float %6064, %7954
  %7956 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7957 = fsub fast float %7732, %5555
  %7958 = fsub fast float %7733, %5556
  %7959 = fsub fast float %7734, %5557
  %7960 = call float @dx.op.dot3.f32(i32 55, float %7957, float %7958, float %7959, float %7957, float %7958, float %7959)  ; Dot3(ax,ay,az,bx,by,bz)
  %7961 = call float @dx.op.unary.f32(i32 25, float %7960)  ; Rsqrt(value)
  %7962 = fmul fast float %7957, %7961
  %7963 = fmul fast float %7958, %7961
  %7964 = fmul fast float %7959, %7961
  %7965 = call float @dx.op.dot3.f32(i32 55, float %7899, float %7900, float %7901, float %7962, float %7963, float %7964)  ; Dot3(ax,ay,az,bx,by,bz)
  %7966 = fmul fast float %7965, %7965
  %7967 = call float @dx.op.unary.f32(i32 6, float %7903)  ; FAbs(value)
  %7968 = call float @dx.op.binary.f32(i32 35, float %7956, float 0x3F847AE140000000)  ; FMax(a,b)
  %7969 = fmul fast float %7968, %7968
  %7970 = fmul fast float %7969, %7969
  %7971 = fsub fast float 1.000000e+00, %7970
  %7972 = fmul fast float %7750, %7971
  %7973 = fadd fast float %7972, %7970
  %7974 = bitcast float %7973 to i32
  %7975 = ashr i32 %7974, 1
  %7976 = add nsw i32 %7975, 532487669
  %7977 = bitcast i32 %7976 to float
  %7978 = fadd fast float %7977, %5549
  %7979 = fmul fast float %7970, %7966
  %7980 = fsub fast float 1.000000e+00, %7966
  %7981 = fadd fast float %7980, %7979
  %7982 = fmul fast float %7967, %7967
  %7983 = fmul fast float %7982, %7971
  %7984 = fadd fast float %7983, %7970
  %7985 = bitcast float %7984 to i32
  %7986 = ashr i32 %7985, 1
  %7987 = add nsw i32 %7986, 532487669
  %7988 = bitcast i32 %7987 to float
  %7989 = fadd fast float %7988, %7967
  %7990 = fmul fast float %7981, %7981
  %7991 = fmul fast float %7990, %7978
  %7992 = fmul fast float %7991, %7989
  %7993 = fdiv fast float 1.000000e+00, %7992
  %7994 = bitcast float %7970 to i32
  %7995 = sitofp i32 %7994 to float
  %7996 = fmul fast float %7995, 0x3FE7F73180000000
  %7997 = fadd fast float %7996, 0x41AFE27C40000000
  %7998 = fptosi float %7997 to i32
  %7999 = bitcast i32 %7998 to float
  %8000 = fadd fast float %7999, %7780
  %8001 = bitcast float %8000 to i32
  %8002 = sub nsw i32 2129859010, %8001
  %8003 = bitcast i32 %8002 to float
  %8004 = fmul fast float %7970, %7993
  %8005 = fmul fast float %8004, %7999
  %8006 = fmul fast float %8005, %8003
  br i1 %7443, label %8007, label %8017

; <label>:8007                                    ; preds = %7947
  %8008 = fmul fast float %7904, %7896
  %8009 = fmul fast float %7904, %7897
  %8010 = fmul fast float %7904, %7898
  %8011 = fmul fast float %8008, %7953
  %8012 = fmul fast float %8011, %8006
  %8013 = fmul fast float %8009, %7953
  %8014 = fmul fast float %8013, %8006
  %8015 = fmul fast float %8010, %7953
  %8016 = fmul fast float %8015, %8006
  br label %8017

; <label>:8017                                    ; preds = %8007, %7947
  %8018 = phi float [ %8012, %8007 ], [ 0.000000e+00, %7947 ]
  %8019 = phi float [ %8014, %8007 ], [ 0.000000e+00, %7947 ]
  %8020 = phi float [ %8016, %8007 ], [ 0.000000e+00, %7947 ]
  %8021 = fmul fast float %7787, %7727
  %8022 = fmul fast float %8021, %7833
  %8023 = fmul fast float %8021, %7834
  %8024 = fmul fast float %8021, %7835
  %8025 = fadd fast float %8018, %8022
  %8026 = fadd fast float %8019, %8023
  %8027 = fadd fast float %8020, %8024
  %8028 = fmul fast float %7709, %1359
  %8029 = fmul fast float %8028, %7727
  %8030 = fmul fast float %8029, %7884
  %8031 = fmul fast float %7710, %1359
  %8032 = fmul fast float %8031, %7727
  %8033 = fmul fast float %8032, %7884
  %8034 = fmul fast float %7711, %1359
  %8035 = fmul fast float %8034, %7727
  %8036 = fmul fast float %8035, %7884
  %8037 = fadd fast float %8030, %7387
  %8038 = fadd fast float %8033, %7388
  %8039 = fadd fast float %8036, %7389
  %8040 = fmul fast float %8028, %8025
  %8041 = fmul fast float %8031, %8026
  %8042 = fmul fast float %8034, %8027
  %8043 = fadd fast float %8040, %7384
  %8044 = fadd fast float %8041, %7385
  %8045 = fadd fast float %8042, %7386
  br label %7517

; <label>:8046                                    ; preds = %7517
  br label %8047

; <label>:8047                                    ; preds = %8046, %7350
  %8048 = phi float [ %7352, %7350 ], [ %7518, %8046 ]
  %8049 = phi float [ %7353, %7350 ], [ %7519, %8046 ]
  %8050 = phi float [ %7354, %7350 ], [ %7520, %8046 ]
  %8051 = phi float [ %7355, %7350 ], [ %7521, %8046 ]
  %8052 = phi float [ %7356, %7350 ], [ %7522, %8046 ]
  %8053 = phi float [ %7357, %7350 ], [ %7523, %8046 ]
  %8054 = add i32 %7351, 1
  %8055 = icmp ugt i32 %8054, %7347
  br i1 %8055, label %8056, label %7350

; <label>:8056                                    ; preds = %8047
  br label %8057

; <label>:8057                                    ; preds = %8056, %7300, %7290
  %8058 = phi float [ %7291, %7290 ], [ %7291, %7300 ], [ %8048, %8056 ]
  %8059 = phi float [ %7292, %7290 ], [ %7292, %7300 ], [ %8049, %8056 ]
  %8060 = phi float [ %7293, %7290 ], [ %7293, %7300 ], [ %8050, %8056 ]
  %8061 = phi float [ %7294, %7290 ], [ %7294, %7300 ], [ %8051, %8056 ]
  %8062 = phi float [ %7295, %7290 ], [ %7295, %7300 ], [ %8052, %8056 ]
  %8063 = phi float [ %7296, %7290 ], [ %7296, %7300 ], [ %8053, %8056 ]
  %8064 = fmul fast float %1359, %6015
  %8065 = fmul fast float %1359, %6016
  %8066 = fmul fast float %1359, %6017
  %8067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8068 = extractvalue %dx.types.CBufRet.f32 %8067, 3
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8071 = fmul fast float %8061, %5495
  %8072 = fmul fast float %8062, %5496
  %8073 = fmul fast float %8063, %5497
  %8074 = fmul fast float %8064, %8070
  %8075 = fsub fast float -0.000000e+00, %8074
  %8076 = fmul fast float %8065, %8070
  %8077 = fsub fast float -0.000000e+00, %8076
  %8078 = fmul fast float %8066, %8070
  %8079 = fsub fast float -0.000000e+00, %8078
  %8080 = fmul fast float %8071, %8070
  %8081 = fmul fast float %8072, %8070
  %8082 = fmul fast float %8073, %8070
  %8083 = fmul fast float %8070, %8058
  %8084 = fmul fast float %8070, %8059
  %8085 = fmul fast float %8070, %8060
  %8086 = fcmp fast ogt float %100, %217
  %8087 = and i1 %8086, %4702
  %8088 = or i1 %4708, %8087
  %8089 = icmp eq i32 %4701, 2
  %8090 = fcmp fast ole float %100, %217
  %8091 = and i1 %8090, %8089
  %8092 = or i1 %8091, %8088
  br i1 %8087, label %8093, label %8350

; <label>:8093                                    ; preds = %8057
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8097 = fmul fast float %8095, %109
  %8098 = fmul fast float %8096, %110
  %8099 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8100 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8101 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %8099, float %8100, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = extractvalue %dx.types.ResRet.f32 %8101, 3
  %8106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %8099, float %8100, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.ResRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.ResRet.f32 %8106, 2
  %8110 = extractvalue %dx.types.ResRet.f32 %8106, 3
  %8111 = call float @dx.op.binary.f32(i32 35, float %8103, float %8104)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 35, float %8102, float %8111)  ; FMax(a,b)
  %8113 = call float @dx.op.binary.f32(i32 35, float %8112, float %8105)  ; FMax(a,b)
  %8114 = call float @dx.op.binary.f32(i32 36, float %8108, float %8109)  ; FMin(a,b)
  %8115 = call float @dx.op.binary.f32(i32 36, float %8107, float %8114)  ; FMin(a,b)
  %8116 = call float @dx.op.binary.f32(i32 36, float %8115, float %8110)  ; FMin(a,b)
  %8117 = fmul fast float %8113, 2.550000e+02
  %8118 = fadd fast float %8117, 0x3F70101020000000
  %8119 = fptoui float %8118 to i32
  %8120 = fmul fast float %8116, 2.550000e+02
  %8121 = fadd fast float %8120, 0x3F70101020000000
  %8122 = fptoui float %8121 to i32
  %8123 = icmp ult i32 %8119, %8122
  br i1 %8123, label %8124, label %8292

; <label>:8124                                    ; preds = %8093
  %8125 = fcmp fast ogt float %99, 9.843750e-01
  %8126 = fadd fast float %100, -4.000000e+00
  %8127 = select i1 %8125, float -4.000000e+00, float %8126
  %8128 = call float @dx.op.binary.f32(i32 35, float %8127, float 0.000000e+00)  ; FMax(a,b)
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = fadd fast float %8130, %8128
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8133 = fmul fast float %8131, %8132
  %8134 = call float @dx.op.unary.f32(i32 23, float %8133)  ; Log(value)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8129, 3
  %8136 = fmul fast float %8135, %8134
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8139 = fmul fast float %8136, %8138
  %8140 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8141 = uitofp i32 %8119 to float
  %8142 = uitofp i32 %8122 to float
  %8143 = fadd fast float %8141, 5.000000e-01
  %8144 = fadd fast float %8142, 5.000000e-01
  %8145 = fmul fast float %8138, %8143
  %8146 = fmul fast float %8138, %8144
  %8147 = fadd fast float %8145, 0x3F0FFB4800000000
  %8148 = fadd fast float %8146, 0xBF0FFB4800000000
  %8149 = call float @dx.op.binary.f32(i32 35, float %8140, float %8147)  ; FMax(a,b)
  %8150 = call float @dx.op.binary.f32(i32 36, float %8149, float %8148)  ; FMin(a,b)
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 1
  %8153 = extractvalue %dx.types.CBufRet.f32 %8151, 2
  %8154 = extractvalue %dx.types.CBufRet.f32 %8151, 0
  %8155 = fmul fast float %8152, %8150
  %8156 = fadd fast float %8154, %8155
  %8157 = fadd fast float %8154, %8153
  %8158 = fsub fast float %8152, %8153
  %8159 = fadd fast float %8158, %8154
  %8160 = call float @dx.op.binary.f32(i32 35, float %8156, float %8157)  ; FMax(a,b)
  %8161 = call float @dx.op.binary.f32(i32 36, float %8160, float %8159)  ; FMin(a,b)
  %8162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %8099, float %8100, float %8161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8163 = extractvalue %dx.types.ResRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.ResRet.f32 %8162, 1
  %8165 = extractvalue %dx.types.ResRet.f32 %8162, 2
  %8166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.i32 %8166, 0
  %8168 = extractvalue %dx.types.CBufRet.i32 %8166, 1
  %8169 = uitofp i32 %8167 to float
  %8170 = uitofp i32 %8168 to float
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 0
  %8173 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %8174 = fmul fast float %8169, %8099
  %8175 = fmul fast float %8170, %8100
  %8176 = fadd fast float %8174, -5.000000e-01
  %8177 = fadd fast float %8175, -5.000000e-01
  %8178 = call float @dx.op.unary.f32(i32 22, float %8176)  ; Frc(value)
  %8179 = call float @dx.op.unary.f32(i32 22, float %8177)  ; Frc(value)
  %8180 = fmul fast float %8178, %8178
  %8181 = fmul fast float %8180, %8178
  %8182 = fsub fast float 3.000000e+00, %8178
  %8183 = fmul fast float %8180, %8182
  %8184 = fmul fast float %8178, 3.000000e+00
  %8185 = fmul fast float %8181, 3.000000e+00
  %8186 = fmul fast float %8180, 6.000000e+00
  %8187 = fsub fast float %8185, %8186
  %8188 = fadd fast float %8187, 4.000000e+00
  %8189 = fmul fast float %8188, 0x3FC5555560000000
  %8190 = fmul fast float %8181, -3.000000e+00
  %8191 = fadd fast float %8180, %8178
  %8192 = fmul fast float %8191, 3.000000e+00
  %8193 = fadd fast float %8190, 1.000000e+00
  %8194 = fadd fast float %8193, %8192
  %8195 = fmul fast float %8181, 0x3FC5555560000000
  %8196 = fmul fast float %8179, %8179
  %8197 = fmul fast float %8196, %8179
  %8198 = fsub fast float 3.000000e+00, %8179
  %8199 = fmul fast float %8196, %8198
  %8200 = fmul fast float %8179, 3.000000e+00
  %8201 = fmul fast float %8197, 3.000000e+00
  %8202 = fmul fast float %8196, 6.000000e+00
  %8203 = fsub fast float %8201, %8202
  %8204 = fadd fast float %8203, 4.000000e+00
  %8205 = fmul fast float %8204, 0x3FC5555560000000
  %8206 = fmul fast float %8197, -3.000000e+00
  %8207 = fadd fast float %8196, %8179
  %8208 = fmul fast float %8207, 3.000000e+00
  %8209 = fadd fast float %8206, 1.000000e+00
  %8210 = fadd fast float %8209, %8208
  %8211 = fmul fast float %8197, 0x3FC5555560000000
  %8212 = fadd fast float %8178, 1.000000e+00
  %8213 = fsub fast float 1.000000e+00, %8184
  %8214 = fadd fast float %8213, %8183
  %8215 = fadd fast float %8214, %8188
  %8216 = fmul fast float %8215, 0x3FC5555560000000
  %8217 = fdiv fast float %8189, %8216
  %8218 = fsub fast float %8212, %8217
  %8219 = fsub fast float 1.000000e+00, %8178
  %8220 = fadd fast float %8194, %8181
  %8221 = fmul fast float %8220, 0x3FC5555560000000
  %8222 = fdiv fast float %8195, %8221
  %8223 = fadd fast float %8219, %8222
  %8224 = fadd fast float %8179, 1.000000e+00
  %8225 = fsub fast float 1.000000e+00, %8200
  %8226 = fadd fast float %8225, %8199
  %8227 = fadd fast float %8226, %8204
  %8228 = fmul fast float %8227, 0x3FC5555560000000
  %8229 = fdiv fast float %8205, %8228
  %8230 = fsub fast float %8224, %8229
  %8231 = fsub fast float 1.000000e+00, %8179
  %8232 = fadd fast float %8210, %8197
  %8233 = fmul fast float %8232, 0x3FC5555560000000
  %8234 = fdiv fast float %8211, %8233
  %8235 = fadd fast float %8234, %8231
  %8236 = fmul fast float %8218, %8172
  %8237 = fsub fast float %8099, %8236
  %8238 = fmul fast float %8223, %8172
  %8239 = fadd fast float %8238, %8099
  %8240 = fmul fast float %8235, %8173
  %8241 = fadd fast float %8240, %8100
  %8242 = fmul fast float %8230, %8173
  %8243 = fsub fast float %8100, %8242
  %8244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %8237, float %8243, float %8161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8245 = extractvalue %dx.types.ResRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.ResRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.ResRet.f32 %8244, 2
  %8248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %8239, float %8243, float %8161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8249 = extractvalue %dx.types.ResRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.ResRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.ResRet.f32 %8248, 2
  %8252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %8237, float %8241, float %8161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8253 = extractvalue %dx.types.ResRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.ResRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.ResRet.f32 %8252, 2
  %8256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %8239, float %8241, float %8161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8257 = extractvalue %dx.types.ResRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.ResRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.ResRet.f32 %8256, 2
  %8260 = fsub fast float %8253, %8245
  %8261 = fsub fast float %8254, %8246
  %8262 = fsub fast float %8255, %8247
  %8263 = fmul fast float %8260, %8233
  %8264 = fmul fast float %8261, %8233
  %8265 = fmul fast float %8262, %8233
  %8266 = fadd fast float %8263, %8245
  %8267 = fadd fast float %8264, %8246
  %8268 = fadd fast float %8265, %8247
  %8269 = fsub fast float %8257, %8249
  %8270 = fsub fast float %8258, %8250
  %8271 = fsub fast float %8259, %8251
  %8272 = fmul fast float %8269, %8233
  %8273 = fmul fast float %8270, %8233
  %8274 = fmul fast float %8271, %8233
  %8275 = fsub fast float %8249, %8266
  %8276 = fadd fast float %8275, %8272
  %8277 = fsub fast float %8250, %8267
  %8278 = fadd fast float %8277, %8273
  %8279 = fsub fast float %8251, %8268
  %8280 = fadd fast float %8279, %8274
  %8281 = fmul fast float %8276, %8221
  %8282 = fmul fast float %8278, %8221
  %8283 = fmul fast float %8280, %8221
  %8284 = fadd fast float %8281, %8266
  %8285 = fadd fast float %8282, %8267
  %8286 = fadd fast float %8283, %8268
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8289 = fmul fast float %8284, %8288
  %8290 = fmul fast float %8285, %8288
  %8291 = fmul fast float %8286, %8288
  br label %8292

; <label>:8292                                    ; preds = %8124, %8093
  %8293 = phi float [ %8163, %8124 ], [ 1.000000e+00, %8093 ]
  %8294 = phi float [ %8164, %8124 ], [ 1.000000e+00, %8093 ]
  %8295 = phi float [ %8165, %8124 ], [ 1.000000e+00, %8093 ]
  %8296 = phi float [ %8289, %8124 ], [ 0.000000e+00, %8093 ]
  %8297 = phi float [ %8290, %8124 ], [ 0.000000e+00, %8093 ]
  %8298 = phi float [ %8291, %8124 ], [ 0.000000e+00, %8093 ]
  %8299 = fmul fast float %8296, %8075
  %8300 = fmul fast float %8297, %8077
  %8301 = fmul fast float %8298, %8079
  %8302 = call float @dx.op.dot3.f32(i32 55, float %8293, float %8294, float %8295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8303 = call float @dx.op.dot3.f32(i32 55, float %8299, float %8300, float %8301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8304 = select i1 %254, float %8302, float %8293
  %8305 = select i1 %254, float %8302, float %8294
  %8306 = select i1 %254, float 1.000000e+00, float %8295
  %8307 = select i1 %254, float %8303, float %8299
  %8308 = select i1 %254, float 0.000000e+00, float %8300
  %8309 = select i1 %254, float 0.000000e+00, float %8301
  %8310 = fmul fast float %8304, %8080
  %8311 = fmul fast float %8305, %8081
  %8312 = fmul fast float %8306, %8082
  %8313 = fadd fast float %8310, %8307
  %8314 = fadd fast float %8311, %8308
  %8315 = fadd fast float %8309, %8312
  %8316 = fmul fast float %8304, %8083
  %8317 = fmul fast float %8305, %8084
  %8318 = fmul fast float %8306, %8085
  %8319 = fmul fast float %137, %8095
  %8320 = fmul fast float %139, %8096
  %8321 = fsub fast float 1.000000e+00, %8319
  %8322 = fsub fast float 1.000000e+00, %8320
  %8323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8324 = extractvalue %dx.types.CBufRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.CBufRet.f32 %8323, 1
  %8326 = extractvalue %dx.types.CBufRet.f32 %8323, 2
  %8327 = fmul fast float %8321, %8324
  %8328 = fmul fast float %8321, %8325
  %8329 = fmul fast float %8321, %8326
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = fmul fast float %8322, %8331
  %8335 = fmul fast float %8322, %8332
  %8336 = fmul fast float %8322, %8333
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.CBufRet.f32 %8337, 2
  %8341 = fadd fast float %8334, %8338
  %8342 = fadd fast float %8341, %8327
  %8343 = fadd fast float %8335, %8339
  %8344 = fadd fast float %8343, %8328
  %8345 = fadd fast float %8336, %8340
  %8346 = fadd fast float %8345, %8329
  %8347 = fmul fast float %8342, %217
  %8348 = fmul fast float %8344, %217
  %8349 = fmul fast float %8346, %217
  br label %8350

; <label>:8350                                    ; preds = %8292, %8057
  %8351 = phi float [ %8347, %8292 ], [ %188, %8057 ]
  %8352 = phi float [ %8348, %8292 ], [ %189, %8057 ]
  %8353 = phi float [ %8349, %8292 ], [ %190, %8057 ]
  %8354 = phi float [ %217, %8292 ], [ %100, %8057 ]
  %8355 = phi float [ %8313, %8292 ], [ %8080, %8057 ]
  %8356 = phi float [ %8314, %8292 ], [ %8081, %8057 ]
  %8357 = phi float [ %8315, %8292 ], [ %8082, %8057 ]
  %8358 = phi float [ %8316, %8292 ], [ %8083, %8057 ]
  %8359 = phi float [ %8317, %8292 ], [ %8084, %8057 ]
  %8360 = phi float [ %8318, %8292 ], [ %8085, %8057 ]
  br i1 %8092, label %9509, label %8361

; <label>:8361                                    ; preds = %8350
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 0
  %8374 = extractvalue %dx.types.CBufRet.f32 %8372, 1
  %8375 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8372, 3
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.CBufRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.CBufRet.f32 %8377, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8377, 3
  %8382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.f32 %8382, 3
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 3
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8388 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8389 = fcmp fast olt float %8388, -5.000000e-01
  %8390 = call float @dx.op.dot3.f32(i32 55, float %8351, float %8352, float %8353, float %8351, float %8352, float %8353)  ; Dot3(ax,ay,az,bx,by,bz)
  %8391 = call float @dx.op.unary.f32(i32 25, float %8390)  ; Rsqrt(value)
  %8392 = fmul fast float %8391, %8390
  %8393 = fmul fast float %8391, %8351
  %8394 = fmul fast float %8391, %8352
  %8395 = fmul fast float %8391, %8353
  %8396 = fadd fast float %8392, %8366
  %8397 = call float @dx.op.dot3.f32(i32 55, float %8393, float %8394, float %8395, float %8363, float %8364, float %8365)  ; Dot3(ax,ay,az,bx,by,bz)
  %8398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.i32 %8398, 1
  %8400 = and i32 %8399, 1
  %8401 = icmp ne i32 %8400, 0
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8404 = fcmp fast ogt float %8403, 0.000000e+00
  %8405 = and i1 %8401, %8404
  br i1 %8405, label %8406, label %8808, !dx.controlflow.hints !124

; <label>:8406                                    ; preds = %8361
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 3
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8413 = fsub fast float %8410, %8412
  %8414 = and i32 %8399, 2
  %8415 = extractvalue %dx.types.CBufRet.i32 %8398, 0
  %8416 = call i32 @dx.op.binary.i32(i32 40, i32 %8415, i32 3)  ; UMin(a,b)
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 0
  %8419 = extractvalue %dx.types.CBufRet.f32 %8417, 1
  %8420 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8421 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8422 = fsub fast float %8418, %8420
  %8423 = fsub fast float %8419, %8421
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 0
  %8426 = fcmp fast ogt float %8425, 0.000000e+00
  %8427 = fsub fast float -0.000000e+00, %8422
  %8428 = fsub fast float -0.000000e+00, %8423
  %8429 = call float @dx.op.dot2.f32(i32 54, float %8393, float %8394, float %8393, float %8394)  ; Dot2(ax,ay,bx,by)
  %8430 = call float @dx.op.dot2.f32(i32 54, float %8393, float %8394, float %8427, float %8428)  ; Dot2(ax,ay,bx,by)
  %8431 = fmul fast float %8430, 2.000000e+00
  %8432 = call float @dx.op.dot2.f32(i32 54, float %8427, float %8428, float %8427, float %8428)  ; Dot2(ax,ay,bx,by)
  %8433 = fmul fast float %8425, %8425
  %8434 = fsub fast float %8432, %8433
  %8435 = fmul fast float %8431, %8431
  %8436 = fmul fast float %8429, 4.000000e+00
  %8437 = fmul fast float %8436, %8434
  %8438 = fsub fast float %8435, %8437
  %8439 = fcmp fast ogt float %8438, 0.000000e+00
  br i1 %8439, label %8440, label %8455

; <label>:8440                                    ; preds = %8406
  %8441 = fcmp fast ogt float %8431, 0.000000e+00
  %8442 = call float @dx.op.unary.f32(i32 24, float %8438)  ; Sqrt(value)
  %8443 = fsub fast float -0.000000e+00, %8442
  %8444 = select i1 %8441, float %8442, float %8443
  %8445 = fadd fast float %8444, %8431
  %8446 = fmul float %8445, -5.000000e-01
  %8447 = fdiv fast float %8446, %8429
  %8448 = call float @dx.op.binary.f32(i32 35, float %8447, float 0.000000e+00)  ; FMax(a,b)
  %8449 = call float @dx.op.binary.f32(i32 36, float %8392, float %8448)  ; FMin(a,b)
  %8450 = fdiv fast float %8434, %8446
  %8451 = call float @dx.op.binary.f32(i32 35, float %8450, float 0.000000e+00)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 36, float %8392, float %8451)  ; FMin(a,b)
  %8453 = call float @dx.op.binary.f32(i32 36, float %8449, float %8452)  ; FMin(a,b)
  %8454 = call float @dx.op.binary.f32(i32 35, float %8449, float %8452)  ; FMax(a,b)
  br label %8455

; <label>:8455                                    ; preds = %8440, %8406
  %8456 = phi float [ %8454, %8440 ], [ -1.000000e+00, %8406 ]
  %8457 = phi float [ %8453, %8440 ], [ -1.000000e+00, %8406 ]
  %8458 = phi i1 [ true, %8440 ], [ false, %8406 ]
  %8459 = and i1 %8426, %8458
  br i1 %8459, label %8460, label %8462

; <label>:8460                                    ; preds = %8455
  %8461 = fcmp fast oeq float %8457, %8456
  br i1 %8461, label %8761, label %8463

; <label>:8462                                    ; preds = %8455
  br i1 %8426, label %8761, label %8463

; <label>:8463                                    ; preds = %8462, %8460
  %8464 = phi float [ %8392, %8462 ], [ %8456, %8460 ]
  %8465 = phi float [ 0.000000e+00, %8462 ], [ %8457, %8460 ]
  %8466 = icmp ne i32 %8414, 0
  %8467 = fmul fast float %8464, %8395
  %8468 = fadd fast float %8467, %8408
  %8469 = fmul fast float %8468, %8464
  %8470 = select i1 %8466, float 0.000000e+00, float %8469
  %8471 = fcmp fast oeq float %8395, 0.000000e+00
  %8472 = fdiv fast float %8413, %8395
  %8473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8472)  ; FMax(a,b)
  %8474 = select i1 %8471, float %8464, float %8473
  %8475 = call float @dx.op.binary.f32(i32 36, float %8464, float %8474)  ; FMin(a,b)
  %8476 = fcmp fast ogt float %8395, 0.000000e+00
  %8477 = fcmp fast olt float %8413, 0.000000e+00
  br i1 %8476, label %8478, label %8535

; <label>:8478                                    ; preds = %8463
  %8479 = icmp eq i32 %8414, 0
  br i1 %8477, label %8480, label %8524

; <label>:8480                                    ; preds = %8478
  %8481 = select i1 %8479, float %8464, float 0.000000e+00
  %8482 = fsub fast float -0.000000e+00, %8481
  %8483 = call float @dx.op.unary.f32(i32 6, float %8482)  ; FAbs(value)
  %8484 = fmul fast float %8481, %8395
  %8485 = fadd fast float %8484, %8408
  %8486 = fmul fast float %8483, %8485
  %8487 = fsub fast float %8470, %8486
  %8488 = fsub fast float %8464, %8483
  %8489 = select i1 %8479, float %8488, float 0.000000e+00
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.CBufRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = extractvalue %dx.types.CBufRet.f32 %8494, 3
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 3
  %8501 = call float @dx.op.binary.f32(i32 36, float %8487, float %8500)  ; FMin(a,b)
  %8502 = fmul fast float %8498, %8489
  %8503 = call float @dx.op.unary.f32(i32 7, float %8502)  ; Saturate(value)
  %8504 = fsub fast float %8495, %8491
  %8505 = fsub fast float %8496, %8492
  %8506 = fsub fast float %8497, %8493
  %8507 = fmul fast float %8503, %8504
  %8508 = fmul fast float %8503, %8505
  %8509 = fmul fast float %8503, %8506
  %8510 = fadd fast float %8507, %8491
  %8511 = fadd fast float %8508, %8492
  %8512 = fadd fast float %8509, %8493
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 0
  %8515 = extractvalue %dx.types.CBufRet.f32 %8513, 1
  %8516 = fadd fast float %8515, %8514
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8513, 2
  %8519 = extractvalue %dx.types.CBufRet.f32 %8513, 3
  %8520 = fadd fast float %8519, %8518
  %8521 = call float @dx.op.unary.f32(i32 7, float %8520)  ; Saturate(value)
  %8522 = fmul fast float %8517, %8501
  %8523 = fmul fast float %8522, %8521
  br label %8761

; <label>:8524                                    ; preds = %8478
  br i1 %8479, label %8525, label %8546

; <label>:8525                                    ; preds = %8524
  %8526 = call float @dx.op.binary.f32(i32 36, float %8475, float %8465)  ; FMin(a,b)
  %8527 = fsub fast float %8475, %8526
  %8528 = fsub fast float %8527, %8464
  %8529 = call float @dx.op.unary.f32(i32 6, float %8528)  ; FAbs(value)
  %8530 = fadd fast float %8527, %8464
  %8531 = fmul fast float %8530, %8395
  %8532 = fadd fast float %8531, %8408
  %8533 = fmul fast float %8532, %8529
  %8534 = fsub fast float %8470, %8533
  br label %8546

; <label>:8535                                    ; preds = %8463
  br i1 %8477, label %8536, label %8546

; <label>:8536                                    ; preds = %8535
  %8537 = call float @dx.op.binary.f32(i32 35, float %8465, float %8475)  ; FMax(a,b)
  %8538 = icmp eq i32 %8414, 0
  %8539 = select i1 %8538, float %8475, float 0.000000e+00
  %8540 = fsub fast float -0.000000e+00, %8539
  %8541 = call float @dx.op.unary.f32(i32 6, float %8540)  ; FAbs(value)
  %8542 = fmul fast float %8539, %8395
  %8543 = fadd fast float %8542, %8408
  %8544 = fmul fast float %8541, %8543
  %8545 = fsub fast float %8470, %8544
  br label %8546

; <label>:8546                                    ; preds = %8536, %8535, %8525, %8524
  %8547 = phi float [ %8465, %8524 ], [ %8465, %8525 ], [ %8537, %8536 ], [ %8465, %8535 ]
  %8548 = phi float [ 0.000000e+00, %8524 ], [ %8529, %8525 ], [ %8541, %8536 ], [ 0.000000e+00, %8535 ]
  %8549 = phi float [ %8470, %8524 ], [ %8534, %8525 ], [ %8545, %8536 ], [ %8470, %8535 ]
  %8550 = phi float [ %8475, %8524 ], [ %8475, %8525 ], [ %8464, %8536 ], [ %8464, %8535 ]
  %8551 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8551, align 4, !tbaa !125, !noalias !127
  %8552 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8552, align 4, !tbaa !125, !noalias !127
  %8553 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8553, align 4, !tbaa !125, !noalias !127
  %8554 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8554, align 4, !tbaa !125, !noalias !127
  %8555 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8555, align 4, !tbaa !125, !noalias !127
  %8556 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8556, align 4, !tbaa !125, !noalias !127
  %8557 = icmp sgt i32 %8416, 0
  br i1 %8557, label %8558, label %8619

; <label>:8558                                    ; preds = %8546
  br label %8559

; <label>:8559                                    ; preds = %8608, %8558
  %8560 = phi i32 [ %8609, %8608 ], [ 0, %8558 ]
  %8561 = phi i32 [ %8610, %8608 ], [ 0, %8558 ]
  %8562 = add nuw i32 %8561, 171
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %8562)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.CBufRet.f32 %8563, 1
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8569 = fsub fast float %8564, %8567
  %8570 = fsub fast float %8565, %8568
  %8571 = extractvalue %dx.types.CBufRet.f32 %8563, 2
  %8572 = fsub fast float -0.000000e+00, %8569
  %8573 = fsub fast float -0.000000e+00, %8570
  %8574 = call float @dx.op.dot2.f32(i32 54, float %8393, float %8394, float %8572, float %8573)  ; Dot2(ax,ay,bx,by)
  %8575 = fmul fast float %8574, 2.000000e+00
  %8576 = call float @dx.op.dot2.f32(i32 54, float %8572, float %8573, float %8572, float %8573)  ; Dot2(ax,ay,bx,by)
  %8577 = fmul fast float %8571, %8571
  %8578 = fsub fast float %8576, %8577
  %8579 = fmul fast float %8575, %8575
  %8580 = fmul fast float %8436, %8578
  %8581 = fsub fast float %8579, %8580
  %8582 = fcmp fast ogt float %8581, 0.000000e+00
  br i1 %8582, label %8583, label %8598

; <label>:8583                                    ; preds = %8559
  %8584 = fcmp fast ogt float %8575, 0.000000e+00
  %8585 = call float @dx.op.unary.f32(i32 24, float %8581)  ; Sqrt(value)
  %8586 = fsub fast float -0.000000e+00, %8585
  %8587 = select i1 %8584, float %8585, float %8586
  %8588 = fadd fast float %8587, %8575
  %8589 = fmul float %8588, -5.000000e-01
  %8590 = fdiv fast float %8589, %8429
  %8591 = call float @dx.op.binary.f32(i32 35, float %8590, float 0.000000e+00)  ; FMax(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8464, float %8591)  ; FMin(a,b)
  %8593 = fdiv fast float %8578, %8589
  %8594 = call float @dx.op.binary.f32(i32 35, float %8593, float 0.000000e+00)  ; FMax(a,b)
  %8595 = call float @dx.op.binary.f32(i32 36, float %8464, float %8594)  ; FMin(a,b)
  %8596 = call float @dx.op.binary.f32(i32 36, float %8592, float %8595)  ; FMin(a,b)
  %8597 = call float @dx.op.binary.f32(i32 35, float %8592, float %8595)  ; FMax(a,b)
  br label %8598

; <label>:8598                                    ; preds = %8583, %8559
  %8599 = phi float [ %8597, %8583 ], [ -1.000000e+00, %8559 ]
  %8600 = phi float [ %8596, %8583 ], [ -1.000000e+00, %8559 ]
  %8601 = phi i1 [ true, %8583 ], [ false, %8559 ]
  br i1 %8601, label %8602, label %8608

; <label>:8602                                    ; preds = %8598
  %8603 = call float @dx.op.binary.f32(i32 35, float %8547, float %8600)  ; FMax(a,b)
  %8604 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8561
  store float %8603, float* %8604, align 4, !tbaa !125, !noalias !127
  %8605 = call float @dx.op.binary.f32(i32 35, float %8547, float %8599)  ; FMax(a,b)
  %8606 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8561
  store float %8605, float* %8606, align 4, !tbaa !125, !noalias !127
  %8607 = add nsw i32 %8560, 1
  br label %8608

; <label>:8608                                    ; preds = %8602, %8598
  %8609 = phi i32 [ %8607, %8602 ], [ %8560, %8598 ]
  %8610 = add nuw nsw i32 %8561, 1
  %8611 = icmp eq i32 %8610, %8416
  br i1 %8611, label %8612, label %8559

; <label>:8612                                    ; preds = %8608
  %8613 = load float, float* %8553, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8614 = load float, float* %8552, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %8615 = load float, float* %8551, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %8616 = load float, float* %8556, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8617 = load float, float* %8555, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %8618 = load float, float* %8554, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %8619

; <label>:8619                                    ; preds = %8612, %8546
  %8620 = phi float [ -1.000000e+00, %8546 ], [ %8618, %8612 ]
  %8621 = phi float [ -1.000000e+00, %8546 ], [ %8617, %8612 ]
  %8622 = phi float [ -1.000000e+00, %8546 ], [ %8616, %8612 ]
  %8623 = phi float [ -1.000000e+00, %8546 ], [ %8615, %8612 ]
  %8624 = phi float [ -1.000000e+00, %8546 ], [ %8614, %8612 ]
  %8625 = phi float [ -1.000000e+00, %8546 ], [ %8613, %8612 ]
  %8626 = phi i32 [ 0, %8546 ], [ %8609, %8612 ]
  %8627 = call float @dx.op.binary.f32(i32 36, float %8623, float %8624)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8627, float %8625)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 35, float %8623, float %8624)  ; FMax(a,b)
  %8630 = call float @dx.op.binary.f32(i32 36, float %8629, float %8625)  ; FMin(a,b)
  %8631 = call float @dx.op.binary.f32(i32 35, float %8627, float %8630)  ; FMax(a,b)
  %8632 = call float @dx.op.binary.f32(i32 35, float %8629, float %8625)  ; FMax(a,b)
  store float %8628, float* %8551, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %8631, float* %8552, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %8632, float* %8553, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8633 = call float @dx.op.binary.f32(i32 36, float %8620, float %8621)  ; FMin(a,b)
  %8634 = call float @dx.op.binary.f32(i32 36, float %8633, float %8622)  ; FMin(a,b)
  %8635 = call float @dx.op.binary.f32(i32 35, float %8620, float %8621)  ; FMax(a,b)
  %8636 = call float @dx.op.binary.f32(i32 36, float %8635, float %8622)  ; FMin(a,b)
  %8637 = call float @dx.op.binary.f32(i32 35, float %8633, float %8636)  ; FMax(a,b)
  %8638 = call float @dx.op.binary.f32(i32 35, float %8635, float %8622)  ; FMax(a,b)
  store float %8634, float* %8554, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %8637, float* %8555, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %8638, float* %8556, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8639 = sub nsw i32 3, %8626
  %8640 = icmp sgt i32 %8639, 2
  br i1 %8640, label %8641, label %8679

; <label>:8641                                    ; preds = %8619
  %8642 = icmp eq i32 %8414, 0
  %8643 = fsub fast float %8464, %8548
  %8644 = select i1 %8642, float %8643, float %8548
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 0
  %8651 = extractvalue %dx.types.CBufRet.f32 %8649, 1
  %8652 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8653 = extractvalue %dx.types.CBufRet.f32 %8649, 3
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 3
  %8656 = call float @dx.op.binary.f32(i32 36, float %8549, float %8655)  ; FMin(a,b)
  %8657 = fmul fast float %8653, %8644
  %8658 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8659 = fsub fast float %8650, %8646
  %8660 = fsub fast float %8651, %8647
  %8661 = fsub fast float %8652, %8648
  %8662 = fmul fast float %8658, %8659
  %8663 = fmul fast float %8658, %8660
  %8664 = fmul fast float %8658, %8661
  %8665 = fadd fast float %8662, %8646
  %8666 = fadd fast float %8663, %8647
  %8667 = fadd fast float %8664, %8648
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = fadd fast float %8670, %8669
  %8672 = call float @dx.op.unary.f32(i32 7, float %8671)  ; Saturate(value)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8674 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8675 = fadd fast float %8674, %8673
  %8676 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8677 = fmul fast float %8672, %8656
  %8678 = fmul fast float %8677, %8676
  br label %8761

; <label>:8679                                    ; preds = %8619
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8639
  %8681 = load float, float* %8680, align 4, !tbaa !125, !noalias !127
  %8682 = fcmp fast olt float %8681, %8550
  %8683 = icmp sgt i32 %8626, 0
  %8684 = and i1 %8683, %8682
  br i1 %8684, label %8685, label %8722

; <label>:8685                                    ; preds = %8679
  br label %8686

; <label>:8686                                    ; preds = %8715, %8685
  %8687 = phi float [ %8716, %8715 ], [ %8548, %8685 ]
  %8688 = phi float [ %8717, %8715 ], [ %8549, %8685 ]
  %8689 = phi float [ %8697, %8715 ], [ %8681, %8685 ]
  %8690 = phi i32 [ %8694, %8715 ], [ %8639, %8685 ]
  %8691 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8690
  %8692 = load float, float* %8691, align 4, !tbaa !125, !noalias !127
  %8693 = icmp slt i32 %8690, 2
  %8694 = add nsw i32 %8690, 1
  %8695 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8694
  %8696 = load float, float* %8695, align 4, !tbaa !125, !noalias !127
  %8697 = select i1 %8693, float %8696, float %8464
  %8698 = call float @dx.op.binary.f32(i32 36, float %8697, float %8692)  ; FMin(a,b)
  %8699 = call float @dx.op.binary.f32(i32 36, float %8550, float %8698)  ; FMin(a,b)
  %8700 = icmp eq i32 %8414, 0
  %8701 = fadd fast float %8699, %8689
  %8702 = fmul fast float %8701, %8395
  %8703 = fadd fast float %8702, %8408
  br i1 %8700, label %8709, label %8704

; <label>:8704                                    ; preds = %8686
  %8705 = fsub fast float %8699, %8689
  %8706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8705)  ; FMax(a,b)
  %8707 = fmul fast float %8706, %8703
  %8708 = fadd fast float %8707, %8688
  br label %8715

; <label>:8709                                    ; preds = %8686
  %8710 = fsub fast float %8689, %8699
  %8711 = call float @dx.op.unary.f32(i32 6, float %8710)  ; FAbs(value)
  %8712 = fadd fast float %8711, %8687
  %8713 = fmul fast float %8711, %8703
  %8714 = fsub fast float %8688, %8713
  br label %8715

; <label>:8715                                    ; preds = %8709, %8704
  %8716 = phi float [ %8706, %8704 ], [ %8712, %8709 ]
  %8717 = phi float [ %8708, %8704 ], [ %8714, %8709 ]
  %8718 = fcmp fast olt float %8697, %8550
  %8719 = icmp slt i32 %8694, 3
  %8720 = and i1 %8719, %8718
  br i1 %8720, label %8686, label %8721

; <label>:8721                                    ; preds = %8715
  br label %8722

; <label>:8722                                    ; preds = %8721, %8679
  %8723 = phi float [ %8548, %8679 ], [ %8716, %8721 ]
  %8724 = phi float [ %8549, %8679 ], [ %8717, %8721 ]
  %8725 = fsub fast float %8464, %8723
  %8726 = select i1 %8466, float %8723, float %8725
  %8727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.f32 %8727, 0
  %8729 = extractvalue %dx.types.CBufRet.f32 %8727, 1
  %8730 = extractvalue %dx.types.CBufRet.f32 %8727, 2
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.CBufRet.f32 %8731, 1
  %8734 = extractvalue %dx.types.CBufRet.f32 %8731, 2
  %8735 = extractvalue %dx.types.CBufRet.f32 %8731, 3
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 3
  %8738 = call float @dx.op.binary.f32(i32 36, float %8724, float %8737)  ; FMin(a,b)
  %8739 = fmul fast float %8735, %8726
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = fsub fast float %8732, %8728
  %8742 = fsub fast float %8733, %8729
  %8743 = fsub fast float %8734, %8730
  %8744 = fmul fast float %8740, %8741
  %8745 = fmul fast float %8740, %8742
  %8746 = fmul fast float %8740, %8743
  %8747 = fadd fast float %8744, %8728
  %8748 = fadd fast float %8745, %8729
  %8749 = fadd fast float %8746, %8730
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.CBufRet.f32 %8750, 1
  %8753 = fadd fast float %8752, %8751
  %8754 = call float @dx.op.unary.f32(i32 7, float %8753)  ; Saturate(value)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8756 = extractvalue %dx.types.CBufRet.f32 %8750, 3
  %8757 = fadd fast float %8756, %8755
  %8758 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8759 = fmul fast float %8754, %8738
  %8760 = fmul fast float %8759, %8758
  br label %8761

; <label>:8761                                    ; preds = %8722, %8641, %8480, %8462, %8460
  %8762 = phi float [ %8489, %8480 ], [ %8644, %8641 ], [ %8726, %8722 ], [ 0.000000e+00, %8460 ], [ 0.000000e+00, %8462 ]
  %8763 = phi float [ %8523, %8480 ], [ %8678, %8641 ], [ %8760, %8722 ], [ 0.000000e+00, %8460 ], [ 0.000000e+00, %8462 ]
  %8764 = phi float [ %8510, %8480 ], [ %8665, %8641 ], [ %8747, %8722 ], [ 0.000000e+00, %8460 ], [ 0.000000e+00, %8462 ]
  %8765 = phi float [ %8511, %8480 ], [ %8666, %8641 ], [ %8748, %8722 ], [ 0.000000e+00, %8460 ], [ 0.000000e+00, %8462 ]
  %8766 = phi float [ %8512, %8480 ], [ %8667, %8641 ], [ %8749, %8722 ], [ 0.000000e+00, %8460 ], [ 0.000000e+00, %8462 ]
  %8767 = fmul fast float %8403, %8763
  %8768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8769 = extractvalue %dx.types.CBufRet.f32 %8768, 2
  %8770 = fsub fast float %8410, %8769
  %8771 = fcmp fast olt float %8767, -2.000000e+01
  %8772 = call float @dx.op.unary.f32(i32 21, float %8767)  ; Exp(value)
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 2
  %8775 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8778 = fmul fast float %8775, %8770
  %8779 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8780 = fsub fast float 1.000000e+00, %8779
  %8781 = fmul fast float %8395, 5.000000e-01
  %8782 = fadd fast float %8781, 5.000000e-01
  %8783 = call float @dx.op.unary.f32(i32 7, float %8782)  ; Saturate(value)
  %8784 = fsub fast float 1.000000e+00, %8783
  %8785 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8780)  ; FMax(a,b)
  %8786 = fdiv fast float %8784, %8785
  %8787 = fsub fast float %8770, %8353
  %8788 = call float @dx.op.unary.f32(i32 6, float %8787)  ; FAbs(value)
  %8789 = fmul fast float %8788, %8774
  %8790 = call float @dx.op.unary.f32(i32 7, float %8786)  ; Saturate(value)
  %8791 = fsub fast float 1.000000e+00, %8789
  %8792 = fmul fast float %8791, %8790
  %8793 = fadd fast float %8792, %8789
  %8794 = fmul fast float %8777, %8770
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = fsub fast float 1.000000e+00, %8793
  %8797 = fmul fast float %8796, %8795
  %8798 = fadd fast float %8797, %8793
  %8799 = call float @dx.op.unary.f32(i32 7, float %8798)  ; Saturate(value)
  %8800 = fadd fast float %8772, -1.000000e+00
  %8801 = select i1 %8771, float -1.000000e+00, float %8800
  %8802 = fmul fast float %8799, %8801
  %8803 = fadd fast float %8802, 1.000000e+00
  %8804 = fsub fast float -0.000000e+00, %8802
  %8805 = fmul fast float %8764, %8804
  %8806 = fmul fast float %8765, %8804
  %8807 = fmul fast float %8766, %8804
  br label %8808

; <label>:8808                                    ; preds = %8761, %8361
  %8809 = phi float [ %8762, %8761 ], [ 0.000000e+00, %8361 ]
  %8810 = phi float [ %8803, %8761 ], [ 1.000000e+00, %8361 ]
  %8811 = phi float [ %8805, %8761 ], [ 0.000000e+00, %8361 ]
  %8812 = phi float [ %8806, %8761 ], [ 0.000000e+00, %8361 ]
  %8813 = phi float [ %8807, %8761 ], [ 0.000000e+00, %8361 ]
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 1
  %8816 = fsub fast float 1.000000e+00, %8810
  %8817 = fmul fast float %8816, %8396
  %8818 = fmul fast float %8817, %8815
  %8819 = fsub fast float %8396, %8818
  br i1 %8389, label %8820, label %8849, !dx.controlflow.hints !163

; <label>:8820                                    ; preds = %8808
  %8821 = fmul fast float %8397, %8386
  %8822 = fadd fast float %8821, %8387
  %8823 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8824 = fmul fast float %8368, %8819
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fmul fast float %8369, %8819
  %8827 = fsub fast float -0.000000e+00, %8826
  %8828 = call float @dx.op.unary.f32(i32 21, float %8825)  ; Exp(value)
  %8829 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8830 = call float @dx.op.binary.f32(i32 35, float %8376, float %8828)  ; FMax(a,b)
  %8831 = call float @dx.op.binary.f32(i32 35, float %8376, float %8829)  ; FMax(a,b)
  %8832 = fsub fast float %8831, %8830
  %8833 = fmul fast float %8832, %8823
  %8834 = fadd fast float %8833, %8830
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fsub fast float %8373, %8378
  %8837 = fsub fast float %8374, %8379
  %8838 = fsub fast float %8375, %8380
  %8839 = fmul fast float %8823, %8836
  %8840 = fmul fast float %8823, %8837
  %8841 = fmul fast float %8823, %8838
  %8842 = fadd fast float %8839, %8378
  %8843 = fadd fast float %8840, %8379
  %8844 = fadd fast float %8841, %8380
  %8845 = fsub fast float 1.000000e+00, %8835
  %8846 = fmul fast float %8845, %8842
  %8847 = fmul fast float %8845, %8843
  %8848 = fmul fast float %8845, %8844
  br label %8908

; <label>:8849                                    ; preds = %8808
  %8850 = fmul fast float %8819, %8385
  %8851 = call float @dx.op.unary.f32(i32 7, float %8850)  ; Saturate(value)
  %8852 = fsub fast float 2.000000e+00, %8851
  %8853 = fmul fast float %8851, 9.921875e-01
  %8854 = fmul fast float %8853, %8852
  %8855 = fadd fast float %8854, 3.906250e-03
  %8856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %46, float %8855, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8857 = extractvalue %dx.types.ResRet.f32 %8856, 0
  %8858 = fsub fast float %8851, %8857
  %8859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8858)  ; FMax(a,b)
  %8860 = fmul fast float %8371, %8353
  %8861 = call float @dx.op.unary.f32(i32 6, float %8860)  ; FAbs(value)
  %8862 = fcmp fast ogt float %8861, 0x3EB0C6F7A0000000
  br i1 %8862, label %8863, label %8869, !dx.controlflow.hints !164

; <label>:8863                                    ; preds = %8849
  %8864 = fmul fast float %8860, 0xBFF7154760000000
  %8865 = call float @dx.op.unary.f32(i32 21, float %8864)  ; Exp(value)
  %8866 = fsub fast float 1.000000e+00, %8865
  %8867 = fdiv fast float %8866, %8860
  %8868 = fmul fast float %8867, %8381
  br label %8869

; <label>:8869                                    ; preds = %8863, %8849
  %8870 = phi float [ %8868, %8863 ], [ %8381, %8849 ]
  %8871 = fadd fast float %8870, %8383
  %8872 = fmul fast float %8871, %8859
  %8873 = fmul fast float %8368, %8872
  %8874 = fsub fast float -0.000000e+00, %8873
  %8875 = fmul fast float %8369, %8872
  %8876 = fsub fast float -0.000000e+00, %8875
  %8877 = fmul fast float %8370, %8872
  %8878 = fsub fast float -0.000000e+00, %8877
  %8879 = call float @dx.op.unary.f32(i32 21, float %8874)  ; Exp(value)
  %8880 = call float @dx.op.unary.f32(i32 21, float %8876)  ; Exp(value)
  %8881 = call float @dx.op.unary.f32(i32 21, float %8878)  ; Exp(value)
  %8882 = fmul fast float %8397, %8397
  %8883 = fadd fast float %8882, 1.000000e+00
  %8884 = fmul fast float %8883, 0x3FAE8EC8A0000000
  %8885 = fmul fast float %8884, %8378
  %8886 = fmul fast float %8884, %8379
  %8887 = fmul fast float %8884, %8380
  %8888 = fmul fast float %8397, %8376
  %8889 = fsub fast float 1.000000e+00, %8888
  %8890 = fmul fast float %8376, %8376
  %8891 = fsub fast float 1.000000e+00, %8890
  %8892 = fmul fast float %8891, 0x3FB45F3060000000
  %8893 = fmul fast float %8889, %8889
  %8894 = fdiv fast float 1.000000e+00, %8893
  %8895 = fmul fast float %8892, %8894
  %8896 = fmul fast float %8895, %8373
  %8897 = fmul fast float %8895, %8374
  %8898 = fmul fast float %8895, %8375
  %8899 = fadd fast float %8896, %8885
  %8900 = fadd fast float %8897, %8886
  %8901 = fadd fast float %8898, %8887
  %8902 = fsub fast float 1.000000e+00, %8879
  %8903 = fsub fast float 1.000000e+00, %8880
  %8904 = fsub fast float 1.000000e+00, %8881
  %8905 = fmul fast float %8899, %8902
  %8906 = fmul fast float %8900, %8903
  %8907 = fmul fast float %8901, %8904
  br label %8908

; <label>:8908                                    ; preds = %8869, %8820
  %8909 = phi float [ %8846, %8820 ], [ %8905, %8869 ]
  %8910 = phi float [ %8847, %8820 ], [ %8906, %8869 ]
  %8911 = phi float [ %8848, %8820 ], [ %8907, %8869 ]
  %8912 = phi float [ %8835, %8820 ], [ %8879, %8869 ]
  %8913 = phi float [ %8835, %8820 ], [ %8880, %8869 ]
  %8914 = phi float [ %8835, %8820 ], [ %8881, %8869 ]
  br i1 %8405, label %8915, label %9113, !dx.controlflow.hints !165

; <label>:8915                                    ; preds = %8908
  %8916 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8917 = fmul fast float %8916, %8816
  %8918 = fsub fast float %8811, %8909
  %8919 = fsub fast float %8812, %8910
  %8920 = fsub fast float %8813, %8911
  %8921 = fmul fast float %8917, %8918
  %8922 = fmul fast float %8917, %8919
  %8923 = fmul fast float %8917, %8920
  %8924 = fadd fast float %8921, %8909
  %8925 = fadd fast float %8922, %8910
  %8926 = fadd fast float %8923, %8911
  %8927 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8912)  ; FMax(a,b)
  %8928 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8913)  ; FMax(a,b)
  %8929 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8914)  ; FMax(a,b)
  %8930 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8810)  ; FMax(a,b)
  %8931 = call float @dx.op.binary.f32(i32 35, float %8809, float %8819)  ; FMax(a,b)
  %8932 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8931)  ; FMax(a,b)
  %8933 = fdiv fast float %8809, %8932
  %8934 = call float @dx.op.unary.f32(i32 7, float %8933)  ; Saturate(value)
  %8935 = fdiv fast float %8819, %8932
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = fcmp fast une float %8930, 1.000000e+00
  br i1 %8937, label %8938, label %8951, !dx.controlflow.hints !166

; <label>:8938                                    ; preds = %8915
  %8939 = call float @dx.op.unary.f32(i32 23, float %8930)  ; Log(value)
  %8940 = fmul fast float %8939, 0x3FE62E4300000000
  %8941 = fmul fast float %8811, %8940
  %8942 = fsub fast float -0.000000e+00, %8941
  %8943 = fmul fast float %8812, %8940
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fmul fast float %8813, %8940
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fsub fast float 1.000000e+00, %8930
  %8948 = fdiv fast float %8942, %8947
  %8949 = fdiv fast float %8944, %8947
  %8950 = fdiv fast float %8946, %8947
  br label %8951

; <label>:8951                                    ; preds = %8938, %8915
  %8952 = phi float [ %8948, %8938 ], [ %8811, %8915 ]
  %8953 = phi float [ %8949, %8938 ], [ %8812, %8915 ]
  %8954 = phi float [ %8950, %8938 ], [ %8813, %8915 ]
  %8955 = phi float [ %8940, %8938 ], [ 0.000000e+00, %8915 ]
  %8956 = fcmp fast une float %8927, 1.000000e+00
  br i1 %8956, label %8957, label %8964, !dx.controlflow.hints !167

; <label>:8957                                    ; preds = %8951
  %8958 = call float @dx.op.unary.f32(i32 23, float %8927)  ; Log(value)
  %8959 = fmul fast float %8958, 0x3FE62E4300000000
  %8960 = fmul fast float %8924, %8959
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = fsub fast float 1.000000e+00, %8927
  %8963 = fdiv fast float %8961, %8962
  br label %8964

; <label>:8964                                    ; preds = %8957, %8951
  %8965 = phi float [ %8963, %8957 ], [ %8924, %8951 ]
  %8966 = phi float [ %8959, %8957 ], [ 0.000000e+00, %8951 ]
  %8967 = fcmp fast une float %8928, 1.000000e+00
  br i1 %8967, label %8968, label %8975, !dx.controlflow.hints !167

; <label>:8968                                    ; preds = %8964
  %8969 = call float @dx.op.unary.f32(i32 23, float %8928)  ; Log(value)
  %8970 = fmul fast float %8969, 0x3FE62E4300000000
  %8971 = fmul fast float %8925, %8970
  %8972 = fsub fast float -0.000000e+00, %8971
  %8973 = fsub fast float 1.000000e+00, %8928
  %8974 = fdiv fast float %8972, %8973
  br label %8975

; <label>:8975                                    ; preds = %8968, %8964
  %8976 = phi float [ %8974, %8968 ], [ %8925, %8964 ]
  %8977 = phi float [ %8970, %8968 ], [ 0.000000e+00, %8964 ]
  %8978 = fcmp fast une float %8929, 1.000000e+00
  br i1 %8978, label %8979, label %8986, !dx.controlflow.hints !167

; <label>:8979                                    ; preds = %8975
  %8980 = call float @dx.op.unary.f32(i32 23, float %8929)  ; Log(value)
  %8981 = fmul fast float %8980, 0x3FE62E4300000000
  %8982 = fmul fast float %8926, %8981
  %8983 = fsub fast float -0.000000e+00, %8982
  %8984 = fsub fast float 1.000000e+00, %8929
  %8985 = fdiv fast float %8983, %8984
  br label %8986

; <label>:8986                                    ; preds = %8979, %8975
  %8987 = phi float [ %8985, %8979 ], [ %8926, %8975 ]
  %8988 = phi float [ %8981, %8979 ], [ 0.000000e+00, %8975 ]
  %8989 = fmul fast float %8952, %8936
  %8990 = fmul fast float %8953, %8936
  %8991 = fmul fast float %8954, %8936
  %8992 = fmul fast float %8955, %8936
  %8993 = fmul fast float %8965, %8934
  %8994 = fmul fast float %8976, %8934
  %8995 = fmul fast float %8987, %8934
  %8996 = fmul fast float %8966, %8934
  %8997 = fmul fast float %8977, %8934
  %8998 = fmul fast float %8988, %8934
  %8999 = fadd fast float %8993, %8989
  %9000 = fadd fast float %8994, %8990
  %9001 = fadd fast float %8995, %8991
  %9002 = fadd fast float %8996, %8992
  %9003 = fadd fast float %8997, %8992
  %9004 = fadd fast float %8998, %8992
  %9005 = fcmp fast une float %9002, 0.000000e+00
  br i1 %9005, label %9006, label %9013, !dx.controlflow.hints !168

; <label>:9006                                    ; preds = %8986
  %9007 = fmul fast float %9002, 0x3FF7154760000000
  %9008 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9009 = fsub fast float 1.000000e+00, %9008
  %9010 = fmul fast float %8999, %9009
  %9011 = fsub fast float -0.000000e+00, %9010
  %9012 = fdiv fast float %9011, %9002
  br label %9013

; <label>:9013                                    ; preds = %9006, %8986
  %9014 = phi float [ %9008, %9006 ], [ 1.000000e+00, %8986 ]
  %9015 = phi float [ %9012, %9006 ], [ %8999, %8986 ]
  %9016 = fcmp fast une float %9003, 0.000000e+00
  br i1 %9016, label %9017, label %9024, !dx.controlflow.hints !168

; <label>:9017                                    ; preds = %9013
  %9018 = fmul fast float %9003, 0x3FF7154760000000
  %9019 = call float @dx.op.unary.f32(i32 21, float %9018)  ; Exp(value)
  %9020 = fsub fast float 1.000000e+00, %9019
  %9021 = fmul fast float %9000, %9020
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fdiv fast float %9022, %9003
  br label %9024

; <label>:9024                                    ; preds = %9017, %9013
  %9025 = phi float [ %9019, %9017 ], [ 1.000000e+00, %9013 ]
  %9026 = phi float [ %9023, %9017 ], [ %9000, %9013 ]
  %9027 = fcmp fast une float %9004, 0.000000e+00
  br i1 %9027, label %9028, label %9035, !dx.controlflow.hints !168

; <label>:9028                                    ; preds = %9024
  %9029 = fmul fast float %9004, 0x3FF7154760000000
  %9030 = call float @dx.op.unary.f32(i32 21, float %9029)  ; Exp(value)
  %9031 = fsub fast float 1.000000e+00, %9030
  %9032 = fmul fast float %9001, %9031
  %9033 = fsub fast float -0.000000e+00, %9032
  %9034 = fdiv fast float %9033, %9004
  br label %9035

; <label>:9035                                    ; preds = %9028, %9024
  %9036 = phi float [ %9030, %9028 ], [ 1.000000e+00, %9024 ]
  %9037 = phi float [ %9034, %9028 ], [ %9001, %9024 ]
  %9038 = fcmp fast ogt float %8934, %8936
  br i1 %9038, label %9039, label %9059

; <label>:9039                                    ; preds = %9035
  %9040 = fsub fast float 1.000000e+00, %8936
  %9041 = fmul fast float %8952, %9040
  %9042 = fmul fast float %8953, %9040
  %9043 = fmul fast float %8954, %9040
  %9044 = fmul fast float %8955, %9040
  %9045 = fcmp fast une float %9044, 0.000000e+00
  br i1 %9045, label %9046, label %9097, !dx.controlflow.hints !169

; <label>:9046                                    ; preds = %9039
  %9047 = fmul fast float %9044, 0x3FF7154760000000
  %9048 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9049 = fsub fast float 1.000000e+00, %9048
  %9050 = fmul fast float %9041, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fmul fast float %9042, %9049
  %9053 = fsub fast float -0.000000e+00, %9052
  %9054 = fmul fast float %9043, %9049
  %9055 = fsub fast float -0.000000e+00, %9054
  %9056 = fdiv fast float %9051, %9044
  %9057 = fdiv fast float %9053, %9044
  %9058 = fdiv fast float %9055, %9044
  br label %9097

; <label>:9059                                    ; preds = %9035
  %9060 = fsub fast float 1.000000e+00, %8934
  %9061 = fmul fast float %8965, %9060
  %9062 = fmul fast float %8976, %9060
  %9063 = fmul fast float %8987, %9060
  %9064 = fmul fast float %8966, %9060
  %9065 = fmul fast float %8977, %9060
  %9066 = fmul fast float %8988, %9060
  %9067 = fcmp fast une float %9064, 0.000000e+00
  br i1 %9067, label %9068, label %9075, !dx.controlflow.hints !168

; <label>:9068                                    ; preds = %9059
  %9069 = fmul fast float %9064, 0x3FF7154760000000
  %9070 = call float @dx.op.unary.f32(i32 21, float %9069)  ; Exp(value)
  %9071 = fsub fast float 1.000000e+00, %9070
  %9072 = fmul fast float %9061, %9071
  %9073 = fsub fast float -0.000000e+00, %9072
  %9074 = fdiv fast float %9073, %9064
  br label %9075

; <label>:9075                                    ; preds = %9068, %9059
  %9076 = phi float [ %9074, %9068 ], [ %9061, %9059 ]
  %9077 = phi float [ %9070, %9068 ], [ 1.000000e+00, %9059 ]
  %9078 = fcmp fast une float %9065, 0.000000e+00
  br i1 %9078, label %9079, label %9086, !dx.controlflow.hints !168

; <label>:9079                                    ; preds = %9075
  %9080 = fmul fast float %9065, 0x3FF7154760000000
  %9081 = call float @dx.op.unary.f32(i32 21, float %9080)  ; Exp(value)
  %9082 = fsub fast float 1.000000e+00, %9081
  %9083 = fmul fast float %9062, %9082
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fdiv fast float %9084, %9065
  br label %9086

; <label>:9086                                    ; preds = %9079, %9075
  %9087 = phi float [ %9085, %9079 ], [ %9062, %9075 ]
  %9088 = phi float [ %9081, %9079 ], [ 1.000000e+00, %9075 ]
  %9089 = fcmp fast une float %9066, 0.000000e+00
  br i1 %9089, label %9090, label %9097, !dx.controlflow.hints !168

; <label>:9090                                    ; preds = %9086
  %9091 = fmul fast float %9066, 0x3FF7154760000000
  %9092 = call float @dx.op.unary.f32(i32 21, float %9091)  ; Exp(value)
  %9093 = fsub fast float 1.000000e+00, %9092
  %9094 = fmul fast float %9063, %9093
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fdiv fast float %9095, %9066
  br label %9097

; <label>:9097                                    ; preds = %9090, %9086, %9046, %9039
  %9098 = phi float [ %9096, %9090 ], [ %9058, %9046 ], [ %9043, %9039 ], [ %9063, %9086 ]
  %9099 = phi float [ %9087, %9090 ], [ %9057, %9046 ], [ %9042, %9039 ], [ %9087, %9086 ]
  %9100 = phi float [ %9076, %9090 ], [ %9056, %9046 ], [ %9041, %9039 ], [ %9076, %9086 ]
  %9101 = phi float [ %9092, %9090 ], [ %9048, %9046 ], [ 1.000000e+00, %9039 ], [ 1.000000e+00, %9086 ]
  %9102 = phi float [ %9088, %9090 ], [ %9048, %9046 ], [ 1.000000e+00, %9039 ], [ %9088, %9086 ]
  %9103 = phi float [ %9077, %9090 ], [ %9048, %9046 ], [ 1.000000e+00, %9039 ], [ %9077, %9086 ]
  %9104 = fmul fast float %9103, %9015
  %9105 = fmul fast float %9102, %9026
  %9106 = fmul fast float %9101, %9037
  %9107 = fadd fast float %9104, %9100
  %9108 = fadd fast float %9105, %9099
  %9109 = fadd fast float %9106, %9098
  %9110 = fmul fast float %9103, %9014
  %9111 = fmul fast float %9102, %9025
  %9112 = fmul fast float %9101, %9036
  br label %9113

; <label>:9113                                    ; preds = %9097, %8908
  %9114 = phi float [ %9112, %9097 ], [ %8914, %8908 ]
  %9115 = phi float [ %9111, %9097 ], [ %8913, %8908 ]
  %9116 = phi float [ %9110, %9097 ], [ %8912, %8908 ]
  %9117 = phi float [ %9109, %9097 ], [ %8911, %8908 ]
  %9118 = phi float [ %9108, %9097 ], [ %8910, %8908 ]
  %9119 = phi float [ %9107, %9097 ], [ %8909, %8908 ]
  %9120 = fmul fast float %9119, %8075
  %9121 = fmul fast float %9118, %8077
  %9122 = fmul fast float %9117, %8079
  %9123 = call float @dx.op.dot3.f32(i32 55, float %9116, float %9115, float %9114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9124 = call float @dx.op.dot3.f32(i32 55, float %9120, float %9121, float %9122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9125 = select i1 %254, float %9123, float %9116
  %9126 = select i1 %254, float %9123, float %9115
  %9127 = select i1 %254, float 1.000000e+00, float %9114
  %9128 = select i1 %254, float %9124, float %9120
  %9129 = select i1 %254, float 0.000000e+00, float %9121
  %9130 = select i1 %254, float 0.000000e+00, float %9122
  %9131 = fmul fast float %9125, %8355
  %9132 = fmul fast float %9126, %8356
  %9133 = fmul fast float %9127, %8357
  %9134 = fadd fast float %9131, %9128
  %9135 = fadd fast float %9132, %9129
  %9136 = fadd fast float %9130, %9133
  %9137 = fmul fast float %9125, %8358
  %9138 = fmul fast float %9126, %8359
  %9139 = fmul fast float %9127, %8360
  %9140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.i32 %9140, 0
  %9142 = icmp eq i32 %9141, 0
  br i1 %9142, label %9509, label %9143, !dx.controlflow.hints !170

; <label>:9143                                    ; preds = %9113
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 3
  %9147 = fmul fast float %9145, %109
  %9148 = fmul fast float %9146, %110
  %9149 = fmul fast float %9147, 2.000000e+00
  %9150 = fmul fast float %9148, 2.000000e+00
  %9151 = fsub fast float 1.000000e+00, %9149
  %9152 = fsub fast float 1.000000e+00, %9150
  %9153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9153, 0
  %9155 = extractvalue %dx.types.CBufRet.f32 %9153, 1
  %9156 = extractvalue %dx.types.CBufRet.f32 %9153, 2
  %9157 = fmul fast float %9151, %9154
  %9158 = fmul fast float %9151, %9155
  %9159 = fmul fast float %9151, %9156
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 0
  %9162 = extractvalue %dx.types.CBufRet.f32 %9160, 1
  %9163 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9164 = fmul fast float %9152, %9161
  %9165 = fmul fast float %9152, %9162
  %9166 = fmul fast float %9152, %9163
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9169 = extractvalue %dx.types.CBufRet.f32 %9167, 1
  %9170 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9171 = fadd fast float %9164, %9168
  %9172 = fadd fast float %9171, %9157
  %9173 = fadd fast float %9165, %9169
  %9174 = fadd fast float %9173, %9158
  %9175 = fadd fast float %9166, %9170
  %9176 = fadd fast float %9175, %9159
  %9177 = fmul fast float %9172, %8354
  %9178 = fmul fast float %9174, %8354
  %9179 = fmul fast float %9176, %8354
  %9180 = fmul fast float %9177, %9177
  %9181 = fmul fast float %9178, %9178
  %9182 = fadd fast float %9180, %9181
  %9183 = fmul fast float %9179, %9179
  %9184 = fadd fast float %9182, %9183
  %9185 = call float @dx.op.unary.f32(i32 24, float %9184)  ; Sqrt(value)
  %9186 = extractvalue %dx.types.CBufRet.f32 %8067, 0
  %9187 = fsub fast float %9185, %9186
  %9188 = extractvalue %dx.types.CBufRet.f32 %8067, 2
  %9189 = fmul fast float %9187, %9188
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  %9191 = fadd fast float %9190, -5.000000e-01
  %9192 = fmul fast float %9191, 2.000000e+00
  %9193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9193, 2
  %9195 = call float @dx.op.binary.f32(i32 36, float %9194, float %9192)  ; FMin(a,b)
  %9196 = fsub fast float -0.000000e+00, %9194
  %9197 = fcmp fast ogt float %9195, %9196
  br i1 %9197, label %9198, label %9509, !dx.controlflow.hints !171

; <label>:9198                                    ; preds = %9143
  %9199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9200 = extractvalue %dx.types.CBufRet.f32 %9199, 3
  %9201 = fcmp fast ogt float %9200, 0.000000e+00
  br i1 %9201, label %9202, label %9277, !dx.controlflow.hints !172

; <label>:9202                                    ; preds = %9198
  %9203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9204 = extractvalue %dx.types.Dimensions %9203, 0
  %9205 = sitofp i32 %9204 to float
  %9206 = extractvalue %dx.types.Dimensions %9203, 1
  %9207 = sitofp i32 %9206 to float
  %9208 = fmul fast float %9147, %9205
  %9209 = fmul fast float %9148, %9207
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9212 = fsub fast float -0.000000e+00, %9211
  %9213 = fptoui float %9212 to i32
  %9214 = fptoui float %9208 to i32
  %9215 = fptoui float %9209 to i32
  %9216 = and i32 %9213, 31
  %9217 = lshr i32 %9214, %9216
  %9218 = lshr i32 %9215, %9216
  %9219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9213, i32 %9217, i32 %9218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9220 = extractvalue %dx.types.ResRet.f32 %9219, 0
  %9221 = fcmp fast olt float %9220, -1.000000e+00
  %9222 = fcmp fast ogt float %9220, -1.000000e+00
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 1
  %9225 = select i1 %9222, float %9224, float 1.000000e+00
  %9226 = fadd fast float %9220, 1.000000e+00
  %9227 = fmul fast float %9225, %9226
  %9228 = call float @dx.op.unary.f32(i32 6, float %9227)  ; FAbs(value)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9230 = fcmp fast oge float %9228, %9229
  %9231 = select i1 %9230, float 0x4197782600000000, float %9228
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9236 = select i1 %9221, float %9233, float %9154
  %9237 = select i1 %9221, float %9234, float %9155
  %9238 = select i1 %9221, float %9235, float %9156
  %9239 = fmul fast float %9236, %9151
  %9240 = fmul fast float %9237, %9151
  %9241 = fmul fast float %9238, %9151
  %9242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9243 = extractvalue %dx.types.CBufRet.f32 %9242, 0
  %9244 = extractvalue %dx.types.CBufRet.f32 %9242, 1
  %9245 = extractvalue %dx.types.CBufRet.f32 %9242, 2
  %9246 = select i1 %9221, float %9243, float %9161
  %9247 = select i1 %9221, float %9244, float %9162
  %9248 = select i1 %9221, float %9245, float %9163
  %9249 = fmul fast float %9246, %9152
  %9250 = fmul fast float %9247, %9152
  %9251 = fmul fast float %9248, %9152
  %9252 = fadd fast float %9249, %9239
  %9253 = fadd fast float %9250, %9240
  %9254 = fadd fast float %9251, %9241
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 0
  %9257 = extractvalue %dx.types.CBufRet.f32 %9255, 1
  %9258 = extractvalue %dx.types.CBufRet.f32 %9255, 2
  %9259 = select i1 %9221, float %9256, float %9168
  %9260 = select i1 %9221, float %9257, float %9169
  %9261 = select i1 %9221, float %9258, float %9170
  %9262 = fadd fast float %9252, %9259
  %9263 = fadd fast float %9253, %9260
  %9264 = fadd fast float %9254, %9261
  %9265 = fmul fast float %9262, %9231
  %9266 = fmul fast float %9263, %9231
  %9267 = fmul fast float %9264, %9231
  %9268 = fmul fast float %9265, %9265
  %9269 = fmul fast float %9266, %9266
  %9270 = fadd fast float %9268, %9269
  %9271 = fmul fast float %9267, %9267
  %9272 = fadd fast float %9270, %9271
  %9273 = call float @dx.op.unary.f32(i32 24, float %9272)  ; Sqrt(value)
  %9274 = fsub fast float %9273, %9186
  %9275 = fmul fast float %9274, %9188
  %9276 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  br label %9277

; <label>:9277                                    ; preds = %9202, %9198
  %9278 = phi float [ %9276, %9202 ], [ 1.000000e+00, %9198 ]
  %9279 = fmul fast float %9195, 5.000000e-01
  %9280 = fadd fast float %9279, 5.000000e-01
  %9281 = call float @dx.op.unary.f32(i32 22, float %9280)  ; Frc(value)
  %9282 = call float @dx.op.unary.f32(i32 27, float %9281)  ; Round_ni(value)
  %9283 = call float @dx.op.unary.f32(i32 22, float %9281)  ; Frc(value)
  %9284 = fmul fast float %9283, 2.000000e+00
  %9285 = fadd fast float %9284, -1.000000e+00
  %9286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9147, float %9148, float %9282, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9287 = extractvalue %dx.types.ResRet.f32 %9286, 0
  %9288 = extractvalue %dx.types.ResRet.f32 %9286, 1
  %9289 = extractvalue %dx.types.ResRet.f32 %9286, 2
  %9290 = extractvalue %dx.types.ResRet.f32 %9286, 3
  %9291 = fadd fast float %9287, -5.000000e-01
  %9292 = fadd fast float %9289, -5.000000e-01
  %9293 = fmul fast float %9291, 0xBFD5555560000000
  %9294 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9292, float %9293)  ; FMad(a,b,c)
  %9295 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9288, float 0.000000e+00)  ; FMad(a,b,c)
  %9296 = fadd fast float %9295, %9290
  %9297 = fmul fast float %9291, -7.500000e-01
  %9298 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9292, float %9297)  ; FMad(a,b,c)
  %9299 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9288, float 0.000000e+00)  ; FMad(a,b,c)
  %9300 = fadd fast float %9299, %9290
  %9301 = call float @dx.op.binary.f32(i32 35, float %9294, float -1.000000e+00)  ; FMax(a,b)
  %9302 = call float @dx.op.binary.f32(i32 35, float %9296, float -1.000000e+00)  ; FMax(a,b)
  %9303 = call float @dx.op.binary.f32(i32 35, float %9298, float -1.000000e+00)  ; FMax(a,b)
  %9304 = call float @dx.op.binary.f32(i32 35, float %9300, float -1.000000e+00)  ; FMax(a,b)
  %9305 = call float @dx.op.binary.f32(i32 36, float %9301, float 1.000000e+00)  ; FMin(a,b)
  %9306 = call float @dx.op.binary.f32(i32 36, float %9302, float 1.000000e+00)  ; FMin(a,b)
  %9307 = call float @dx.op.binary.f32(i32 36, float %9303, float 1.000000e+00)  ; FMin(a,b)
  %9308 = call float @dx.op.binary.f32(i32 36, float %9304, float 1.000000e+00)  ; FMin(a,b)
  %9309 = fcmp fast olt float %9305, 0x3FEFFF8020000000
  br i1 %9309, label %9310, label %9425, !dx.controlflow.hints !173

; <label>:9310                                    ; preds = %9277
  %9311 = extractvalue %dx.types.CBufRet.f32 %9193, 3
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 0
  %9314 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %9315 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %9316 = extractvalue %dx.types.CBufRet.f32 %9312, 3
  %9317 = fsub fast float %9313, %9305
  %9318 = fsub fast float %9314, %9306
  %9319 = fsub fast float %9315, %9307
  %9320 = fsub fast float %9316, %9308
  %9321 = fmul fast float %9317, %9311
  %9322 = fmul fast float %9318, %9311
  %9323 = fmul fast float %9319, %9311
  %9324 = fmul fast float %9320, %9311
  %9325 = fadd fast float %9321, %9305
  %9326 = fadd fast float %9322, %9306
  %9327 = fsub fast float -0.000000e+00, %9326
  %9328 = fadd fast float %9323, %9307
  %9329 = fadd fast float %9324, %9308
  %9330 = fmul fast float %9325, %9325
  %9331 = fsub fast float %9326, %9330
  %9332 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9331)  ; FMax(a,b)
  %9333 = fdiv fast float 1.000000e+00, %9332
  %9334 = fmul fast float %9326, %9325
  %9335 = fsub fast float %9328, %9334
  %9336 = fsub fast float %9285, %9325
  %9337 = fmul fast float %9285, %9285
  %9338 = fsub fast float %9337, %9326
  %9339 = fmul fast float %9336, %9333
  %9340 = fmul fast float %9339, %9335
  %9341 = fsub fast float %9338, %9340
  %9342 = fmul fast float %9326, %9326
  %9343 = fsub fast float %9329, %9342
  %9344 = fmul fast float %9335, %9335
  %9345 = fmul fast float %9344, %9333
  %9346 = fsub fast float %9343, %9345
  %9347 = fdiv fast float %9341, %9346
  %9348 = fmul fast float %9335, %9347
  %9349 = fsub fast float %9336, %9348
  %9350 = fmul fast float %9349, %9333
  %9351 = fmul fast float %9350, %9325
  %9352 = fsub fast float 1.000000e+00, %9351
  %9353 = fmul fast float %9326, %9347
  %9354 = fsub fast float %9352, %9353
  %9355 = fmul fast float %9350, %9350
  %9356 = fmul fast float %9347, 4.000000e+00
  %9357 = fmul fast float %9356, %9354
  %9358 = fsub fast float %9355, %9357
  %9359 = call float @dx.op.unary.f32(i32 24, float %9358)  ; Sqrt(value)
  %9360 = fcmp fast oge float %9350, 0.000000e+00
  %9361 = fsub fast float -0.000000e+00, %9359
  %9362 = select i1 %9360, float %9361, float %9359
  %9363 = fsub fast float %9362, %9350
  %9364 = fdiv fast float %9363, %9347
  %9365 = fdiv fast float %9354, %9363
  %9366 = fmul fast float %9364, 5.000000e-01
  %9367 = fmul fast float %9365, 2.000000e+00
  %9368 = select i1 %9360, float %9366, float %9367
  %9369 = select i1 %9360, float %9367, float %9366
  %9370 = call float @dx.op.binary.f32(i32 35, float %9368, float %9369)  ; FMax(a,b)
  %9371 = call float @dx.op.binary.f32(i32 36, float %9368, float %9369)  ; FMin(a,b)
  %9372 = fcmp fast ogt float %9285, %9371
  br i1 %9372, label %9373, label %9383

; <label>:9373                                    ; preds = %9310
  %9374 = fsub fast float %9285, %9371
  %9375 = fsub fast float %9370, %9371
  %9376 = fmul fast float %9374, %9375
  %9377 = fmul fast float %9370, %9285
  %9378 = fadd fast float %9370, %9285
  %9379 = fmul fast float %9378, %9325
  %9380 = fadd fast float %9377, %9326
  %9381 = fsub fast float %9380, %9379
  %9382 = fdiv fast float %9381, %9376
  br label %9383

; <label>:9383                                    ; preds = %9373, %9310
  %9384 = phi float [ %9382, %9373 ], [ 0.000000e+00, %9310 ]
  %9385 = fcmp fast ogt float %9285, %9370
  %9386 = fsub fast float %9285, %9370
  br i1 %9385, label %9387, label %9397

; <label>:9387                                    ; preds = %9383
  %9388 = fsub fast float %9370, %9371
  %9389 = fmul fast float %9388, %9386
  %9390 = fmul fast float %9371, %9285
  %9391 = fadd fast float %9371, %9285
  %9392 = fmul fast float %9391, %9325
  %9393 = fsub fast float %9327, %9390
  %9394 = fadd fast float %9393, %9392
  %9395 = fdiv fast float %9394, %9389
  %9396 = fadd fast float %9395, %9384
  br label %9397

; <label>:9397                                    ; preds = %9387, %9383
  %9398 = phi float [ %9396, %9387 ], [ %9384, %9383 ]
  %9399 = fsub fast float %9285, %9371
  %9400 = fmul fast float %9399, %9386
  %9401 = fmul fast float %9371, %9370
  %9402 = fadd fast float %9371, %9370
  %9403 = fmul fast float %9402, %9325
  %9404 = fadd fast float %9401, %9326
  %9405 = fsub fast float %9404, %9403
  %9406 = fdiv fast float %9405, %9400
  %9407 = call float @dx.op.unary.f32(i32 7, float %9398)  ; Saturate(value)
  %9408 = fcmp fast oeq float %8068, 0.000000e+00
  %9409 = extractvalue %dx.types.CBufRet.f32 %9193, 0
  %9410 = fcmp fast oeq float %9409, 0.000000e+00
  %9411 = or i1 %9408, %9410
  %9412 = fmul fast float %9409, 2.000000e+00
  %9413 = fadd fast float %9194, %9195
  %9414 = fdiv fast float %9413, %9412
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fmul fast float %9415, 2.000000e+00
  %9417 = fsub fast float 3.000000e+00, %9416
  %9418 = fmul fast float %9415, %9415
  %9419 = fmul fast float %9418, %9417
  %9420 = select i1 %9411, float 1.000000e+00, float %9419
  %9421 = fmul fast float %9406, %8068
  %9422 = fadd fast float %9407, %9421
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = fmul fast float %9420, %9423
  br label %9425

; <label>:9425                                    ; preds = %9397, %9277
  %9426 = phi float [ %9424, %9397 ], [ 0.000000e+00, %9277 ]
  %9427 = fsub fast float 1.000000e+00, %9426
  %9428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %46, float %9147, float %9148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9429 = extractvalue %dx.types.ResRet.f32 %9428, 0
  %9430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.i32 %9430, 2
  %9432 = icmp eq i32 %9431, 0
  br i1 %9432, label %9438, label %9433

; <label>:9433                                    ; preds = %9425
  %9434 = call float @dx.op.unary.f32(i32 7, float %9426)  ; Saturate(value)
  %9435 = fadd fast float %9429, -1.000000e+00
  %9436 = fmul fast float %9434, %9435
  %9437 = fadd fast float %9436, 1.000000e+00
  br label %9438

; <label>:9438                                    ; preds = %9433, %9425
  %9439 = phi float [ %9437, %9433 ], [ %9427, %9425 ]
  br i1 %9201, label %9440, label %9458

; <label>:9440                                    ; preds = %9438
  %9441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9442 = extractvalue %dx.types.CBufRet.f32 %9441, 1
  %9443 = fsub fast float %9278, %9442
  %9444 = call float @dx.op.unary.f32(i32 7, float %9443)  ; Saturate(value)
  %9445 = fsub fast float %9278, %9200
  %9446 = call float @dx.op.unary.f32(i32 7, float %9445)  ; Saturate(value)
  %9447 = fsub fast float %9444, %9446
  %9448 = fsub fast float %9280, %9446
  %9449 = fdiv fast float %9448, %9447
  %9450 = call float @dx.op.unary.f32(i32 7, float %9449)  ; Saturate(value)
  %9451 = fmul fast float %9450, 2.000000e+00
  %9452 = fsub fast float 3.000000e+00, %9451
  %9453 = fsub fast float %9429, %9439
  %9454 = fmul fast float %9450, %9450
  %9455 = fmul fast float %9454, %9453
  %9456 = fmul fast float %9455, %9452
  %9457 = fadd fast float %9456, %9439
  br label %9458

; <label>:9458                                    ; preds = %9440, %9438
  %9459 = phi float [ %9457, %9440 ], [ %9439, %9438 ]
  %9460 = call float @dx.op.binary.f32(i32 35, float %9429, float %9459)  ; FMax(a,b)
  %9461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9462 = extractvalue %dx.types.CBufRet.i32 %9461, 2
  %9463 = and i32 %9462, 1
  %9464 = icmp eq i32 %9463, 0
  %9465 = fcmp fast une float %9460, 1.000000e+00
  %9466 = and i1 %9465, %9464
  br i1 %9466, label %9467, label %9486

; <label>:9467                                    ; preds = %9458
  %9468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %46, float %9147, float %9148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9469 = extractvalue %dx.types.ResRet.f32 %9468, 0
  %9470 = extractvalue %dx.types.ResRet.f32 %9468, 1
  %9471 = extractvalue %dx.types.ResRet.f32 %9468, 2
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 1
  %9474 = fmul fast float %9473, %9469
  %9475 = fmul fast float %9473, %9470
  %9476 = fmul fast float %9473, %9471
  %9477 = fcmp fast ogt float %9429, 0x3FEFFF2E40000000
  %9478 = fsub fast float 1.000000e+00, %9460
  %9479 = fsub fast float 1.000000e+00, %9429
  %9480 = fdiv fast float %9478, %9479
  %9481 = call float @dx.op.unary.f32(i32 7, float %9480)  ; Saturate(value)
  %9482 = select i1 %9477, float 0.000000e+00, float %9481
  %9483 = fmul fast float %9474, %9482
  %9484 = fmul fast float %9475, %9482
  %9485 = fmul fast float %9476, %9482
  br label %9486

; <label>:9486                                    ; preds = %9467, %9458
  %9487 = phi float [ 0.000000e+00, %9458 ], [ %9483, %9467 ]
  %9488 = phi float [ 0.000000e+00, %9458 ], [ %9484, %9467 ]
  %9489 = phi float [ 0.000000e+00, %9458 ], [ %9485, %9467 ]
  %9490 = fmul fast float %9487, %8075
  %9491 = fmul fast float %9488, %8077
  %9492 = fmul fast float %9489, %8079
  %9493 = call float @dx.op.dot3.f32(i32 55, float %9460, float %9460, float %9460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9494 = call float @dx.op.dot3.f32(i32 55, float %9490, float %9491, float %9492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9495 = select i1 %254, float %9493, float %9460
  %9496 = select i1 %254, float 1.000000e+00, float %9460
  %9497 = select i1 %254, float %9494, float %9490
  %9498 = select i1 %254, float 0.000000e+00, float %9491
  %9499 = select i1 %254, float 0.000000e+00, float %9492
  %9500 = fmul fast float %9495, %9134
  %9501 = fmul fast float %9495, %9135
  %9502 = fmul fast float %9496, %9136
  %9503 = fadd fast float %9500, %9497
  %9504 = fadd fast float %9501, %9498
  %9505 = fadd fast float %9499, %9502
  %9506 = fmul fast float %9495, %9137
  %9507 = fmul fast float %9495, %9138
  %9508 = fmul fast float %9496, %9139
  br label %9509

; <label>:9509                                    ; preds = %9486, %9143, %9113, %8350
  %9510 = phi float [ %8355, %8350 ], [ %9134, %9113 ], [ %9503, %9486 ], [ %9134, %9143 ]
  %9511 = phi float [ %8356, %8350 ], [ %9135, %9113 ], [ %9504, %9486 ], [ %9135, %9143 ]
  %9512 = phi float [ %8357, %8350 ], [ %9136, %9113 ], [ %9505, %9486 ], [ %9136, %9143 ]
  %9513 = phi float [ %8358, %8350 ], [ %9137, %9113 ], [ %9506, %9486 ], [ %9137, %9143 ]
  %9514 = phi float [ %8359, %8350 ], [ %9138, %9113 ], [ %9507, %9486 ], [ %9138, %9143 ]
  %9515 = phi float [ %8360, %8350 ], [ %9139, %9113 ], [ %9508, %9486 ], [ %9139, %9143 ]
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 2
  %9518 = extractvalue %dx.types.CBufRet.f32 %9516, 3
  %9519 = fmul fast float %9517, %109
  %9520 = fmul fast float %9518, %110
  %9521 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9522 = call float @dx.op.unary.f32(i32 7, float %9520)  ; Saturate(value)
  %9523 = select i1 %8092, i32 2, i32 0
  %9524 = or i32 %9523, 1
  %9525 = uitofp i32 %9524 to float
  %9526 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %9521, float %9522, float %9525, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9527 = extractvalue %dx.types.ResRet.f32 %9526, 0
  %9528 = extractvalue %dx.types.ResRet.f32 %9526, 1
  %9529 = extractvalue %dx.types.ResRet.f32 %9526, 2
  %9530 = extractvalue %dx.types.ResRet.f32 %9526, 3
  %9531 = add nuw nsw i32 %9523, 2
  %9532 = uitofp i32 %9531 to float
  %9533 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %9521, float %9522, float %9532, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9534 = extractvalue %dx.types.ResRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.ResRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.ResRet.f32 %9533, 2
  %9537 = extractvalue %dx.types.ResRet.f32 %9533, 3
  %9538 = call float @dx.op.binary.f32(i32 35, float %9528, float %9529)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 35, float %9527, float %9538)  ; FMax(a,b)
  %9540 = call float @dx.op.binary.f32(i32 35, float %9539, float %9530)  ; FMax(a,b)
  %9541 = call float @dx.op.binary.f32(i32 36, float %9535, float %9536)  ; FMin(a,b)
  %9542 = call float @dx.op.binary.f32(i32 36, float %9534, float %9541)  ; FMin(a,b)
  %9543 = call float @dx.op.binary.f32(i32 36, float %9542, float %9537)  ; FMin(a,b)
  %9544 = fmul fast float %9540, 2.550000e+02
  %9545 = fadd fast float %9544, 0x3F70101020000000
  %9546 = fptoui float %9545 to i32
  %9547 = fmul fast float %9543, 2.550000e+02
  %9548 = fadd fast float %9547, 0x3F70101020000000
  %9549 = fptoui float %9548 to i32
  %9550 = icmp ult i32 %9546, %9549
  br i1 %9550, label %9551, label %9720

; <label>:9551                                    ; preds = %9509
  %9552 = fcmp fast ogt float %99, 9.843750e-01
  %9553 = fadd fast float %8354, -4.000000e+00
  %9554 = select i1 %9552, float -4.000000e+00, float %9553
  %9555 = call float @dx.op.binary.f32(i32 35, float %9554, float 0.000000e+00)  ; FMax(a,b)
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = fadd fast float %9557, %9555
  %9559 = extractvalue %dx.types.CBufRet.f32 %9556, 2
  %9560 = fmul fast float %9558, %9559
  %9561 = call float @dx.op.unary.f32(i32 23, float %9560)  ; Log(value)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9556, 3
  %9563 = fmul fast float %9562, %9561
  %9564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.f32 %9564, 2
  %9566 = fmul fast float %9563, %9565
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9568 = uitofp i32 %9546 to float
  %9569 = uitofp i32 %9549 to float
  %9570 = fadd fast float %9568, 5.000000e-01
  %9571 = fadd fast float %9569, 5.000000e-01
  %9572 = fmul fast float %9565, %9570
  %9573 = fmul fast float %9565, %9571
  %9574 = fadd fast float %9572, 0x3F0FFB4800000000
  %9575 = fadd fast float %9573, 0xBF0FFB4800000000
  %9576 = call float @dx.op.binary.f32(i32 35, float %9567, float %9574)  ; FMax(a,b)
  %9577 = call float @dx.op.binary.f32(i32 36, float %9576, float %9575)  ; FMin(a,b)
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 2
  %9581 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9582 = select i1 %8092, float %9581, float 0.000000e+00
  %9583 = fmul fast float %9579, %9577
  %9584 = fadd fast float %9582, %9583
  %9585 = fadd fast float %9582, %9580
  %9586 = fsub fast float %9579, %9580
  %9587 = fadd fast float %9586, %9582
  %9588 = call float @dx.op.binary.f32(i32 35, float %9584, float %9585)  ; FMax(a,b)
  %9589 = call float @dx.op.binary.f32(i32 36, float %9588, float %9587)  ; FMin(a,b)
  %9590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %9521, float %9522, float %9589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9591 = extractvalue %dx.types.ResRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.ResRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.ResRet.f32 %9590, 2
  %9594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9595 = extractvalue %dx.types.CBufRet.i32 %9594, 0
  %9596 = extractvalue %dx.types.CBufRet.i32 %9594, 1
  %9597 = uitofp i32 %9595 to float
  %9598 = uitofp i32 %9596 to float
  %9599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.f32 %9599, 0
  %9601 = extractvalue %dx.types.CBufRet.f32 %9599, 1
  %9602 = fmul fast float %9597, %9521
  %9603 = fmul fast float %9598, %9522
  %9604 = fadd fast float %9602, -5.000000e-01
  %9605 = fadd fast float %9603, -5.000000e-01
  %9606 = call float @dx.op.unary.f32(i32 22, float %9604)  ; Frc(value)
  %9607 = call float @dx.op.unary.f32(i32 22, float %9605)  ; Frc(value)
  %9608 = fmul fast float %9606, %9606
  %9609 = fmul fast float %9608, %9606
  %9610 = fsub fast float 3.000000e+00, %9606
  %9611 = fmul fast float %9608, %9610
  %9612 = fmul fast float %9606, 3.000000e+00
  %9613 = fmul fast float %9609, 3.000000e+00
  %9614 = fmul fast float %9608, 6.000000e+00
  %9615 = fsub fast float %9613, %9614
  %9616 = fadd fast float %9615, 4.000000e+00
  %9617 = fmul fast float %9616, 0x3FC5555560000000
  %9618 = fmul fast float %9609, -3.000000e+00
  %9619 = fadd fast float %9608, %9606
  %9620 = fmul fast float %9619, 3.000000e+00
  %9621 = fadd fast float %9618, 1.000000e+00
  %9622 = fadd fast float %9621, %9620
  %9623 = fmul fast float %9609, 0x3FC5555560000000
  %9624 = fmul fast float %9607, %9607
  %9625 = fmul fast float %9624, %9607
  %9626 = fsub fast float 3.000000e+00, %9607
  %9627 = fmul fast float %9624, %9626
  %9628 = fmul fast float %9607, 3.000000e+00
  %9629 = fmul fast float %9625, 3.000000e+00
  %9630 = fmul fast float %9624, 6.000000e+00
  %9631 = fsub fast float %9629, %9630
  %9632 = fadd fast float %9631, 4.000000e+00
  %9633 = fmul fast float %9632, 0x3FC5555560000000
  %9634 = fmul fast float %9625, -3.000000e+00
  %9635 = fadd fast float %9624, %9607
  %9636 = fmul fast float %9635, 3.000000e+00
  %9637 = fadd fast float %9634, 1.000000e+00
  %9638 = fadd fast float %9637, %9636
  %9639 = fmul fast float %9625, 0x3FC5555560000000
  %9640 = fadd fast float %9606, 1.000000e+00
  %9641 = fsub fast float 1.000000e+00, %9612
  %9642 = fadd fast float %9641, %9611
  %9643 = fadd fast float %9642, %9616
  %9644 = fmul fast float %9643, 0x3FC5555560000000
  %9645 = fdiv fast float %9617, %9644
  %9646 = fsub fast float %9640, %9645
  %9647 = fsub fast float 1.000000e+00, %9606
  %9648 = fadd fast float %9622, %9609
  %9649 = fmul fast float %9648, 0x3FC5555560000000
  %9650 = fdiv fast float %9623, %9649
  %9651 = fadd fast float %9647, %9650
  %9652 = fadd fast float %9607, 1.000000e+00
  %9653 = fsub fast float 1.000000e+00, %9628
  %9654 = fadd fast float %9653, %9627
  %9655 = fadd fast float %9654, %9632
  %9656 = fmul fast float %9655, 0x3FC5555560000000
  %9657 = fdiv fast float %9633, %9656
  %9658 = fsub fast float %9652, %9657
  %9659 = fsub fast float 1.000000e+00, %9607
  %9660 = fadd fast float %9638, %9625
  %9661 = fmul fast float %9660, 0x3FC5555560000000
  %9662 = fdiv fast float %9639, %9661
  %9663 = fadd fast float %9662, %9659
  %9664 = fmul fast float %9646, %9600
  %9665 = fsub fast float %9521, %9664
  %9666 = fmul fast float %9651, %9600
  %9667 = fadd fast float %9666, %9521
  %9668 = fmul fast float %9663, %9601
  %9669 = fadd fast float %9668, %9522
  %9670 = fmul fast float %9658, %9601
  %9671 = fsub fast float %9522, %9670
  %9672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %9665, float %9671, float %9589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9673 = extractvalue %dx.types.ResRet.f32 %9672, 0
  %9674 = extractvalue %dx.types.ResRet.f32 %9672, 1
  %9675 = extractvalue %dx.types.ResRet.f32 %9672, 2
  %9676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %9667, float %9671, float %9589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9677 = extractvalue %dx.types.ResRet.f32 %9676, 0
  %9678 = extractvalue %dx.types.ResRet.f32 %9676, 1
  %9679 = extractvalue %dx.types.ResRet.f32 %9676, 2
  %9680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %9665, float %9669, float %9589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9681 = extractvalue %dx.types.ResRet.f32 %9680, 0
  %9682 = extractvalue %dx.types.ResRet.f32 %9680, 1
  %9683 = extractvalue %dx.types.ResRet.f32 %9680, 2
  %9684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %9667, float %9669, float %9589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9685 = extractvalue %dx.types.ResRet.f32 %9684, 0
  %9686 = extractvalue %dx.types.ResRet.f32 %9684, 1
  %9687 = extractvalue %dx.types.ResRet.f32 %9684, 2
  %9688 = fsub fast float %9681, %9673
  %9689 = fsub fast float %9682, %9674
  %9690 = fsub fast float %9683, %9675
  %9691 = fmul fast float %9688, %9661
  %9692 = fmul fast float %9689, %9661
  %9693 = fmul fast float %9690, %9661
  %9694 = fadd fast float %9691, %9673
  %9695 = fadd fast float %9692, %9674
  %9696 = fadd fast float %9693, %9675
  %9697 = fsub fast float %9685, %9677
  %9698 = fsub fast float %9686, %9678
  %9699 = fsub fast float %9687, %9679
  %9700 = fmul fast float %9697, %9661
  %9701 = fmul fast float %9698, %9661
  %9702 = fmul fast float %9699, %9661
  %9703 = fsub fast float %9677, %9694
  %9704 = fadd fast float %9703, %9700
  %9705 = fsub fast float %9678, %9695
  %9706 = fadd fast float %9705, %9701
  %9707 = fsub fast float %9679, %9696
  %9708 = fadd fast float %9707, %9702
  %9709 = fmul fast float %9704, %9649
  %9710 = fmul fast float %9706, %9649
  %9711 = fmul fast float %9708, %9649
  %9712 = fadd fast float %9709, %9694
  %9713 = fadd fast float %9710, %9695
  %9714 = fadd fast float %9711, %9696
  %9715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9715, 1
  %9717 = fmul fast float %9712, %9716
  %9718 = fmul fast float %9713, %9716
  %9719 = fmul fast float %9714, %9716
  br label %9720

; <label>:9720                                    ; preds = %9551, %9509
  %9721 = phi float [ %9591, %9551 ], [ 1.000000e+00, %9509 ]
  %9722 = phi float [ %9592, %9551 ], [ 1.000000e+00, %9509 ]
  %9723 = phi float [ %9593, %9551 ], [ 1.000000e+00, %9509 ]
  %9724 = phi float [ %9717, %9551 ], [ 0.000000e+00, %9509 ]
  %9725 = phi float [ %9718, %9551 ], [ 0.000000e+00, %9509 ]
  %9726 = phi float [ %9719, %9551 ], [ 0.000000e+00, %9509 ]
  %9727 = fmul fast float %9724, %8075
  %9728 = fmul fast float %9725, %8077
  %9729 = fmul fast float %9726, %8079
  %9730 = call float @dx.op.dot3.f32(i32 55, float %9721, float %9722, float %9723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9731 = call float @dx.op.dot3.f32(i32 55, float %9727, float %9728, float %9729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9732 = select i1 %254, float %9730, float %9721
  %9733 = select i1 %254, float %9730, float %9722
  %9734 = select i1 %254, float %9731, float %9727
  %9735 = select i1 %254, float 0.000000e+00, float %9728
  %9736 = fadd fast float %9513, %9510
  %9737 = fmul fast float %9732, %9736
  %9738 = fadd fast float %9737, %9734
  %9739 = fadd fast float %9514, %9511
  %9740 = fmul fast float %9733, %9739
  %9741 = fadd fast float %9740, %9735
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.f32 %9742, 0
  br i1 %254, label %9744, label %9747

; <label>:9744                                    ; preds = %9720
  %9745 = fadd fast float %9738, %9741
  %9746 = fmul fast float %9743, %9745
  br label %9773

; <label>:9747                                    ; preds = %9720
  %9748 = fadd fast float %9515, %9512
  %9749 = fmul fast float %9723, %9748
  %9750 = fadd fast float %9749, %9729
  %9751 = fmul fast float %9743, %9738
  %9752 = fmul fast float %9743, %9741
  %9753 = fmul fast float %9743, %9750
  %9754 = call float @dx.op.binary.f32(i32 35, float %9751, float %9752)  ; FMax(a,b)
  %9755 = call float @dx.op.binary.f32(i32 35, float %9754, float %9753)  ; FMax(a,b)
  %9756 = call float @dx.op.binary.f32(i32 35, float %8075, float %8077)  ; FMax(a,b)
  %9757 = call float @dx.op.binary.f32(i32 35, float %9756, float %8079)  ; FMax(a,b)
  %9758 = call float @dx.op.binary.f32(i32 35, float %9755, float %9757)  ; FMax(a,b)
  %9759 = fcmp fast ugt float %9758, 0x3F10000000000000
  br i1 %9759, label %9761, label %9760

; <label>:9760                                    ; preds = %9747
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9761

; <label>:9761                                    ; preds = %9760, %9747
  %9762 = add i32 %52, 356
  %9763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %9762, i32 undef)  ; BufferLoad(srv,index,wot)
  %9764 = extractvalue %dx.types.ResRet.i32 %9763, 0
  %9765 = and i32 %9764, 32
  %9766 = icmp eq i32 %9765, 0
  br i1 %9766, label %9773, label %9767

; <label>:9767                                    ; preds = %9761
  %9768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9768, 0
  %9770 = fmul fast float %9769, 0x3FE99999A0000000
  %9771 = fadd fast float %9769, %9751
  %9772 = fadd fast float %9770, %9753
  br label %9773

; <label>:9773                                    ; preds = %9767, %9761, %9744
  %9774 = phi float [ 0.000000e+00, %9744 ], [ %8077, %9767 ], [ %8077, %9761 ]
  %9775 = phi float [ 0.000000e+00, %9744 ], [ %8079, %9767 ], [ %8079, %9761 ]
  %9776 = phi float [ %9746, %9744 ], [ %9771, %9767 ], [ %9751, %9761 ]
  %9777 = phi float [ 0.000000e+00, %9744 ], [ %9752, %9767 ], [ %9752, %9761 ]
  %9778 = phi float [ 0.000000e+00, %9744 ], [ %9772, %9767 ], [ %9753, %9761 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9779 = call float @dx.op.binary.f32(i32 36, float %9776, float 3.225500e+04)  ; FMin(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9777, float 3.225500e+04)  ; FMin(a,b)
  %9781 = call float @dx.op.binary.f32(i32 36, float %9778, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9779)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9780)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9781)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9782 = call float @dx.op.binary.f32(i32 36, float %8075, float 3.225500e+04)  ; FMin(a,b)
  %9783 = call float @dx.op.binary.f32(i32 36, float %9774, float 3.225500e+04)  ; FMin(a,b)
  %9784 = call float @dx.op.binary.f32(i32 36, float %9775, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !54, !57}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
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
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
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
!56 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!57 = !{!58, !59, !60, !61, !62, !63, !64}
!58 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!59 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!65 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !94}
!67 = !{!68, !90, null}
!68 = !{!69, !72, !73, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 4, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!78 = !{i32 5, !"SH_RED", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!79 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!80 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 7, i8 0, !71}
!81 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 8, i8 0, !76}
!82 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 9, i8 0, !71}
!83 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 10, i8 0, !74}
!84 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 11, i8 0, !71}
!85 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 12, i8 0, !71}
!86 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !70, i8 1, i32 1, i8 2, i32 13, i8 0, !74}
!87 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !70, i8 1, i32 1, i8 4, i32 14, i8 0, !88}
!88 = !{i32 3, i32 1}
!89 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!90 = !{!91, !92}
!91 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!92 = !{i32 1, !"SV_Target", i8 9, i8 16, !93, i8 0, i32 1, i8 4, i32 1, i8 0, !71}
!93 = !{i32 1}
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
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !102, i64 0}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

